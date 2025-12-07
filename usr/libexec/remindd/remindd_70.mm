void sub_100651FAC(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v6 = a3;
  *&v176.shareRecordIDToRootRecordID[2] = a2;
  v8 = a3[2];
  v9 = a3[3];
  *v176.clientIdentity = &v176.shareRecordIDToRootRecordID[2];
  *&v176.clientIdentity[8] = v5;

  v15 = sub_100759CB4(static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), &v176, a1, v10, v11, v12, v13, v14);
  if (v4)
  {
    return;
  }

  v16 = v15;
  v174 = v8;
  v17 = "mutateRelationshipOrdering";
  if (qword_100936008 != -1)
  {
    goto LABEL_55;
  }

LABEL_3:
  v18 = v17 - 32;
  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_100945730);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  v9, v22, v23, v24, v25, v26, v27, v28;
  v29 = v16 >> 62;
  v175 = v16;
  v171 = v16 >> 62;
  v173 = v6;
  v170 = v5;
  v167 = v18;
  if (os_log_type_enabled(v20, v21))
  {
    v29 = swift_slowAlloc();
    *&v176.clientIdentity[16] = swift_slowAlloc();
    *v29 = 136446978;
    *(v29 + 4) = sub_10000668C(0xD00000000000001ALL, (v18 | 0x8000000000000000), &v176.clientIdentity[16]);
    *(v29 + 12) = 2048;
    if (!(v16 >> 62))
    {
      v37 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_58;
  }

  v16, v51, v52, v53, v54, v55, v56, v57;
  while (1)
  {
    v17 = v29 ? _CocoaArrayWrapper.endIndex.getter() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = &_swiftEmptyArrayStorage;
    if (!v17)
    {
      break;
    }

    *&v176.clientIdentity[16] = &_swiftEmptyArrayStorage;
    v20 = &v176.clientIdentity[16];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v58 = v16 & 0xC000000000000001;
      v174 = (v16 & 0xFFFFFFFFFFFFFF8);
      v5 = &selRef_persistentStoreForIdentifier_;
      while (1)
      {
        v59 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v58)
        {
          v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= v174[2])
          {
            goto LABEL_53;
          }

          v60 = *&v16->clientIdentity[8 * v9 + 16];
        }

        v61 = v60;
        sub_1005E45B0([v60 remObjectID]);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v6 = *(*&v176.clientIdentity[16] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v9;
        v16 = v175;
        if (v59 == v17)
        {
          v9 = *&v176.clientIdentity[16];
          v5 = v170;
          v29 = v171;
          v6 = v173;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_58:
    v37 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v29 + 14) = v37;
    v16, v30, v31, v32, v33, v34, v35, v36;
    *(v29 + 22) = 2082;
    type metadata accessor for REMCDSavedAttachment();
    v38 = [swift_getObjCClassFromMetadata() description];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_10000668C(v39, v41, &v176.clientIdentity[16]);
    v43 = v41;
    v16 = v175;
    v43, v44, v45, v46, v47, v48, v49, v50;
    *(v29 + 24) = v42;
    *(v29 + 32) = 2082;
    *(v29 + 34) = sub_10000668C(v174, v9, &v176.clientIdentity[16]);
    _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v29, 0x2Au);
    swift_arrayDestroy();

    v5 = v170;
    v29 = v171;
    v6 = v173;
  }

LABEL_20:
  v62 = sub_10065E91C(v9, v6);
  v9, v63, v64, v65, v66, v67, v68, v69;
  if (v29)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (!v17)
  {
LABEL_47:
    v62, v70, v71, v72, v73, v74, v75, v76;
    v16, v120, v121, v122, v123, v124, v125, v126;
    return;
  }

  v9 = 0;
  v168 = v16 & 0xFFFFFFFFFFFFFF8;
  v169 = v16 & 0xC000000000000001;
  *&v77 = 136446466;
  v164 = v77;
  v165 = v17;
  v166 = v62;
  while (1)
  {
    if (v169)
    {
      v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v9 >= *(v168 + 16))
      {
        goto LABEL_54;
      }

      v78 = *&v16->clientIdentity[8 * v9 + 16];
      v5 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    v79 = v78;
    v80 = sub_1005E45B0([v79 remObjectID]);

    if (!*(v62 + 16))
    {
      break;
    }

    v88 = sub_100393C74();
    if ((v81 & 1) == 0)
    {
      break;
    }

    v89 = *(*(v62 + 56) + 8 * v88);
    v90 = v6[6];
    v174 = v79;
    v172 = v89;
    if ((v90 & 0xC000000000000001) != 0)
    {
      v91 = v89;
      v92 = v80;

      v93 = __CocoaDictionary.lookup(_:)();
      if (!v93)
      {
        goto LABEL_41;
      }

      *&v176.dataAccessRequestsWriter[2] = v93;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v94 = *&v176.clientIdentity[16];
    }

    else
    {
      v95 = *(v90 + 16);
      v96 = v89;
      if (!v95)
      {
        goto LABEL_42;
      }

      v92 = v80;

      v97 = sub_10002B924(v92);
      if ((v98 & 1) == 0)
      {
LABEL_41:

        v90, v106, v107, v108, v109, v110, v111, v112;
LABEL_42:
        v113 = v80;
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          *&v176.clientIdentity[16] = v118;
          *v116 = v164;
          *(v116 + 4) = sub_10000668C(0xD00000000000001ALL, (v167 | 0x8000000000000000), &v176.clientIdentity[16]);
          *(v116 + 12) = 2114;
          *(v116 + 14) = v113;
          *v117 = v113;
          v119 = v113;
          _os_log_impl(&_mh_execute_header, v114, v115, "[%{public}s] Skipping mutateRelationshipOrdering() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v116, 0x16u);
          sub_1000050A4(v117, &unk_100938E70, &unk_100797230);

          sub_10000607C(v118);
          v16 = v175;
        }

        else
        {
        }

        goto LABEL_27;
      }

      v94 = *(*(v90 + 56) + 8 * v97);
    }

    v90, v99, v100, v101, v102, v103, v104, v105;
    if (!v94)
    {
      goto LABEL_42;
    }

LABEL_27:
    ++v9;
    v17 = v165;
    v62 = v166;
    v6 = v173;
    if (v5 == v165)
    {
      goto LABEL_47;
    }
  }

  v62, v81, v82, v83, v84, v85, v86, v87;
  v16, v127, v128, v129, v130, v131, v132, v133;
  v134 = v80;

  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    *&v176.dataAccessRequestsWriter[2] = swift_slowAlloc();
    *v137 = 136446722;
    *(v137 + 4) = sub_10000668C(0xD00000000000001ALL, (v167 | 0x8000000000000000), &v176.dataAccessRequestsWriter[2]);
    *(v137 + 12) = 2082;
    v138 = *(v170 + 5);
    *&v176.coreSuggestionsHandler[18] = *(v170 + 3);
    *&v176.coreSuggestionsHandler[34] = v138;
    *&v176.publicCloudDatabaseController[8] = *(v170 + 54);
    sub_100009DAC(&v176.coreSuggestionsHandler[18], &v176.clientIdentity[16]);
    v139 = sub_1000063E8();
    v141 = v140;
    sub_1005812D4(&v176.coreSuggestionsHandler[18]);
    v142 = sub_10000668C(v139, v141, &v176.dataAccessRequestsWriter[2]);
    v141, v143, v144, v145, v146, v147, v148, v149;
    *(v137 + 14) = v142;
    *(v137 + 22) = 2080;
    v150 = [v134 description];
    v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v152 = v79;
    v154 = v153;

    v155 = sub_10000668C(v151, v154, &v176.dataAccessRequestsWriter[2]);
    v156 = v154;
    v79 = v152;
    v156, v157, v158, v159, v160, v161, v162, v163;
    *(v137 + 24) = v155;
    _os_log_impl(&_mh_execute_header, v135, v136, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v137, 0x20u);
    swift_arrayDestroy();
  }

  [objc_opt_self() noSuchObjectErrorWithObjectID:v134];
  swift_willThrow();
}

void sub_10065291C(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v6 = a3;
  *&v180.shareRecordIDToRootRecordID[2] = a2;
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  *v180.clientIdentity = &v180.shareRecordIDToRootRecordID[2];
  *&v180.clientIdentity[8] = v5;

  v15 = sub_100759CB4(sub_1006B0238, &v180, a1, v10, v11, v12, v13, v14);
  if (!v4)
  {
    v16 = v15;
    v178 = v8;
    v17 = "mutateRelationshipOrdering";
    if (qword_100936008 != -1)
    {
      goto LABEL_55;
    }

LABEL_3:
    v18 = v17 - 32;
    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_100945730);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    v9, v22, v23, v24, v25, v26, v27, v28;
    v179 = v16;
    v174 = v16 >> 62;
    v176 = v6;
    v177 = v5;
    v170 = v18;
    if (os_log_type_enabled(v20, v21))
    {
      v6 = swift_slowAlloc();
      *&v180.clientIdentity[16] = swift_slowAlloc();
      *v6 = 136446978;
      *(v6 + 4) = sub_10000668C(0xD00000000000001ALL, (v18 | 0x8000000000000000), &v180.clientIdentity[16]);
      *(v6 + 12) = 2048;
      if (!(v16 >> 62))
      {
        v36 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_58;
    }

    v16, v49, v50, v51, v52, v53, v54, v55;
    while (1)
    {
      v56 = v174;
      v17 = v174 ? _CocoaArrayWrapper.endIndex.getter() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = &_swiftEmptyArrayStorage;
      if (!v17)
      {
        break;
      }

      *&v180.clientIdentity[16] = &_swiftEmptyArrayStorage;
      v20 = &v180.clientIdentity[16];
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v17 & 0x8000000000000000) == 0)
      {
        v9 = 0;
        v6 = v16 & 0xC000000000000001;
        v178 = (v16 & 0xFFFFFFFFFFFFFF8);
        v5 = &selRef_persistentStoreForIdentifier_;
        while (1)
        {
          v57 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v6)
          {
            v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= v178[2])
            {
              goto LABEL_53;
            }

            v58 = *&v16->clientIdentity[8 * v9 + 16];
          }

          v59 = v58;
          sub_1005E5350([v58 remObjectID]);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v16 = v179;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v9;
          if (v57 == v17)
          {
            v9 = *&v180.clientIdentity[16];
            v6 = v176;
            v5 = v177;
            v56 = v174;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_58:
      v36 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v6 + 14) = v36;
      v16, v29, v30, v31, v32, v33, v34, v35;
      *(v6 + 22) = 2082;
      type metadata accessor for REMCDManualSortHint();
      v37 = [swift_getObjCClassFromMetadata() description];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v16 = v179;
      v41 = sub_10000668C(v38, v40, &v180.clientIdentity[16]);
      v40, v42, v43, v44, v45, v46, v47, v48;
      *(v6 + 24) = v41;
      *(v6 + 32) = 2082;
      *(v6 + 34) = sub_10000668C(v178, v9, &v180.clientIdentity[16]);
      _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v6, 0x2Au);
      swift_arrayDestroy();

      v6 = v176;
      v5 = v177;
    }

LABEL_20:
    v60 = sub_1006603FC(v9, v6);
    v9, v61, v62, v63, v64, v65, v66, v67;
    if (v56)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    if (v17)
    {
      v9 = 0;
      v173 = v16 & 0xFFFFFFFFFFFFFF8;
      v175 = v16 & 0xC000000000000001;
      v171 = v17;
      v172 = v60;
      while (1)
      {
        if (v175)
        {
          v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v5 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v9 >= *(v173 + 16))
          {
            goto LABEL_54;
          }

          v76 = *&v16->clientIdentity[8 * v9 + 16];
          v5 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        v77 = v76;
        v78 = sub_1005E5350([v77 remObjectID]);

        if (!*(v60 + 16))
        {
          break;
        }

        v86 = sub_100393C74();
        if ((v79 & 1) == 0)
        {
          break;
        }

        v87 = *(*(v60 + 56) + 8 * v86);
        v88 = *(v6 + 48);
        v178 = v87;
        if ((v88 & 0xC000000000000001) != 0)
        {
          v89 = v87;
          v90 = v78;

          v91 = __CocoaDictionary.lookup(_:)();
          if (v91)
          {
            *&v180.dataAccessRequestsWriter[2] = v91;
            sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
            swift_dynamicCast();
            v92 = *&v180.clientIdentity[16];

            v88, v93, v94, v95, v96, v97, v98, v99;
          }

          else
          {

            v88, v112, v113, v114, v115, v116, v117, v118;
            v92 = 0;
          }

          v16 = v179;
        }

        else
        {
          v100 = *(v88 + 16);
          v101 = v87;
          if (v100)
          {
            v102 = v78;

            v103 = sub_10002B924(v102);
            if (v104)
            {
              v92 = *(*(v88 + 56) + 8 * v103);

              v88, v105, v106, v107, v108, v109, v110, v111;
            }

            else
            {

              v88, v121, v122, v123, v124, v125, v126, v127;
              v92 = 0;
            }
          }

          else
          {
            v92 = 0;
          }
        }

        v119 = v177[9];
        v120 = [v77 remObjectID];
        if (*(v119 + 2))
        {
          v75 = v120;
          sub_10002B924(v120);
        }

        else
        {
          v75 = v77;
          v77 = v78;
          v78 = v120;
        }

        v6 = v176;
        v60 = v172;

        ++v9;
        v17 = v171;
        if (v5 == v171)
        {
          goto LABEL_47;
        }
      }

      v60, v79, v80, v81, v82, v83, v84, v85;
      v16, v135, v136, v137, v138, v139, v140, v141;
      v142 = v78;

      v143 = Logger.logObject.getter();
      v144 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        *&v180.dataAccessRequestsWriter[2] = swift_slowAlloc();
        *v145 = 136446722;
        *(v145 + 4) = sub_10000668C(0xD00000000000001ALL, (v170 | 0x8000000000000000), &v180.dataAccessRequestsWriter[2]);
        *(v145 + 12) = 2082;
        v146 = *(v177 + 5);
        *&v180.coreSuggestionsHandler[18] = *(v177 + 3);
        *&v180.coreSuggestionsHandler[34] = v146;
        *&v180.publicCloudDatabaseController[8] = *(v177 + 54);
        sub_100009DAC(&v180.coreSuggestionsHandler[18], &v180.clientIdentity[16]);
        v147 = sub_1000063E8();
        v149 = v148;
        sub_1005812D4(&v180.coreSuggestionsHandler[18]);
        v150 = sub_10000668C(v147, v149, &v180.dataAccessRequestsWriter[2]);
        v149, v151, v152, v153, v154, v155, v156, v157;
        *(v145 + 14) = v150;
        *(v145 + 22) = 2080;
        v158 = [v142 description];
        v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v161 = v160;

        v162 = sub_10000668C(v159, v161, &v180.dataAccessRequestsWriter[2]);
        v161, v163, v164, v165, v166, v167, v168, v169;
        *(v145 + 24) = v162;
        _os_log_impl(&_mh_execute_header, v143, v144, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v145, 0x20u);
        swift_arrayDestroy();
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v142];
      swift_willThrow();
    }

    else
    {
LABEL_47:
      v60, v68, v69, v70, v71, v72, v73, v74;
      v16, v128, v129, v130, v131, v132, v133, v134;
    }
  }
}

void sub_1006531A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, uint64_t), char **a6, void *a7, uint64_t (*a8)(_TtC7remindd19RDXPCStorePerformer *, char **), uint64_t (*a9)(id))
{
  v14 = v9;
  v214 = a2;
  v17 = *(a3 + 16);
  v18 = *(a3 + 24);
  v208 = &v214;
  v209 = v14;

  v19 = a5(a4, v207, a1);
  if (v10)
  {
    return;
  }

  v20 = v19;
  v201 = a3;
  v202 = v18;
  v198 = v14;
  v21 = "mutateRelationshipOrdering";
  if (qword_100936008 != -1)
  {
    goto LABEL_59;
  }

LABEL_3:
  v22 = v21 - 32;
  v23 = type metadata accessor for Logger();
  sub_100006654(v23, qword_100945730);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  v202, v26, v27, v28, v29, v30, v31, v32;
  v196 = v25;
  v33 = os_log_type_enabled(v24, v25);
  v34 = v20 >> 62;
  v203 = v20;
  v204 = a6;
  v35 = a6;
  a6 = v201;
  v199 = v20 >> 62;
  v194 = v22;
  if (v33)
  {
    v36 = v17;
    v37 = v22;
    v21 = swift_slowAlloc();
    v210[0] = swift_slowAlloc();
    *v21 = 136446978;
    *(v21 + 4) = sub_10000668C(0xD00000000000001ALL, (v37 | 0x8000000000000000), v210);
    *(v21 + 12) = 2048;
    if (!v34)
    {
      v45 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_62;
  }

  v20, v59, v60, v61, v62, v63, v64, v65;
  while (1)
  {
    v36 = a8;
    v21 = v34 ? _CocoaArrayWrapper.endIndex.getter() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v66 = &_swiftEmptyArrayStorage;
    if (!v21)
    {
      break;
    }

    v210[0] = &_swiftEmptyArrayStorage;
    v24 = v210;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v21 & 0x8000000000000000) == 0)
    {
      v67 = 0;
      v68 = v20 & 0xC000000000000001;
      v202 = v20 & 0xFFFFFFFFFFFFFF8;
      a6 = &selRef_persistentStoreForIdentifier_;
      while (1)
      {
        v69 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          break;
        }

        if (v68)
        {
          v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v67 >= *(v202 + 16))
          {
            goto LABEL_57;
          }

          v70 = *(v20 + 8 * v67 + 32);
        }

        v71 = v70;
        v17 = sub_1005E3810([v70 remObjectID], v204, a7);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v20 = v203;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v67;
        v72 = v69 == v21;
        v36 = a8;
        if (v72)
        {
          v66 = v210[0];
          v73 = v198;
          v35 = v204;
          a6 = v201;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_62:
    v45 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    v17 = v202;
    *(v21 + 14) = v45;
    v20, v38, v39, v40, v41, v42, v43, v44;
    *(v21 + 22) = 2082;
    sub_1000060C8(0, v35, a7);
    v46 = [swift_getObjCClassFromMetadata() description];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v35 = v204;
    v50 = sub_10000668C(v47, v49, v210);
    v51 = v49;
    v20 = v203;
    v51, v52, v53, v54, v55, v56, v57, v58;
    *(v21 + 24) = v50;
    *(v21 + 32) = 2082;
    *(v21 + 34) = sub_10000668C(v36, v202, v210);
    _os_log_impl(&_mh_execute_header, v24, v196, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v21, 0x2Au);
    swift_arrayDestroy();

    v34 = v199;
    a6 = v201;
  }

  v73 = v198;
LABEL_22:
  v198 = v36(v66, a6);
  v66, v74, v75, v76, v77, v78, v79, v80;
  if (v199)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v81 = a7;
  swift_beginAccess();
  if (!v17)
  {
LABEL_51:
    v198, v82, v83, v84, v85, v86, v87, v88;
    v20, v150, v151, v152, v153, v154, v155, v156;
    return;
  }

  v90 = v73;
  v21 = 0;
  v195 = v20 & 0xFFFFFFFFFFFFFF8;
  v197 = v20 & 0xC000000000000001;
  *&v89 = 136446466;
  v192 = v89;
  v193 = v17;
  while (1)
  {
    if (v197)
    {
      v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v92 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (v21 >= *(v195 + 16))
      {
        goto LABEL_58;
      }

      v91 = *(v20 + 8 * v21 + 32);
      v92 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    v202 = v92;
    v93 = v91;
    v94 = sub_1005E3810([v93 remObjectID], v35, v81);
    a8 = v93;

    if (!*(v198 + 16))
    {
      break;
    }

    v102 = a9(v94);
    if ((v95 & 1) == 0)
    {
      break;
    }

    v103 = *(*(v198 + 56) + 8 * v102);
    v104 = a6[6];
    v200 = v103;
    if ((v104 & 0xC000000000000001) != 0)
    {
      v105 = v103;
      v106 = v94;

      v107 = __CocoaDictionary.lookup(_:)();
      if (!v107)
      {

        v104, v128, v129, v130, v131, v132, v133, v134;
        v20 = v203;
LABEL_45:
        v81 = a7;
LABEL_46:
        v142 = v94;
        v143 = Logger.logObject.getter();
        v144 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v147 = v90;
          v148 = swift_slowAlloc();
          v210[0] = v148;
          *v145 = v192;
          *(v145 + 4) = sub_10000668C(0xD00000000000001ALL, (v194 | 0x8000000000000000), v210);
          *(v145 + 12) = 2114;
          *(v145 + 14) = v142;
          *v146 = v142;
          v149 = v142;
          _os_log_impl(&_mh_execute_header, v143, v144, "[%{public}s] Skipping mutateRelationshipOrdering() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v145, 0x16u);
          sub_1000050A4(v146, &unk_100938E70, &unk_100797230);
          v20 = v203;

          sub_10000607C(v148);
          v90 = v147;

          v81 = a7;
        }

        else
        {
        }

        goto LABEL_29;
      }

      v211 = v107;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v108 = v210[0];

      v104, v109, v110, v111, v112, v113, v114, v115;
      v20 = v203;
      v81 = a7;
      if (!v108)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v116 = *v104->clientIdentity;
      v117 = v103;
      if (!v116)
      {
        goto LABEL_46;
      }

      v118 = v94;

      v119 = sub_10002B924(v118);
      if ((v120 & 1) == 0)
      {

        v104, v135, v136, v137, v138, v139, v140, v141;
        goto LABEL_45;
      }

      v108 = *(*&v104->clientIdentity[40] + 8 * v119);

      v104, v121, v122, v123, v124, v125, v126, v127;
      v81 = a7;
      if (!v108)
      {
        goto LABEL_46;
      }
    }

LABEL_29:
    a6 = v201;
    ++v21;
    v17 = v193;
    v35 = v204;
    if (v202 == v193)
    {
      goto LABEL_51;
    }
  }

  v198, v95, v96, v97, v98, v99, v100, v101;
  v20, v157, v158, v159, v160, v161, v162, v163;
  v164 = v94;

  v165 = Logger.logObject.getter();
  v166 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v165, v166))
  {
    v167 = swift_slowAlloc();
    v211 = swift_slowAlloc();
    *v167 = 136446722;
    *(v167 + 4) = sub_10000668C(0xD00000000000001ALL, (v194 | 0x8000000000000000), &v211);
    *(v167 + 12) = 2082;
    v168 = *(v90 + 40);
    v212 = *(v90 + 24);
    v213[0] = v168;
    *(v213 + 14) = *(v90 + 54);
    sub_100009DAC(&v212, v210);
    v169 = sub_1000063E8();
    v171 = v170;
    sub_1005812D4(&v212);
    v172 = sub_10000668C(v169, v171, &v211);
    v171, v173, v174, v175, v176, v177, v178, v179;
    *(v167 + 14) = v172;
    *(v167 + 22) = 2080;
    v180 = [v164 description];
    v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v183 = v182;

    v184 = sub_10000668C(v181, v183, &v211);
    v183, v185, v186, v187, v188, v189, v190, v191;
    *(v167 + 24) = v184;
    _os_log_impl(&_mh_execute_header, v165, v166, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v167, 0x20u);
    swift_arrayDestroy();
  }

  [objc_opt_self() noSuchObjectErrorWithObjectID:v164];
  swift_willThrow();
}

void sub_100653BCC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, uint64_t), unint64_t *a6, void *a7, unint64_t *a8, uint64_t (*a9)(char *))
{
  v14 = v9;
  v15 = a3;
  v198 = a2;
  v18 = *(a3 + 2);
  v17 = *(a3 + 3);
  v192 = &v198;
  v193 = v14;

  v19 = a5(a4, v191, a1);
  if (!v10)
  {
    v20 = v19;
    v189 = a6;
    v187 = v17;
    v183 = v18;
    v184 = v15;
    v21 = "mutateRelationshipOrdering";
    if (qword_100936008 != -1)
    {
      goto LABEL_56;
    }

LABEL_3:
    v22 = v21 - 4;
    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_100945730);

    v21 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    v187, v25, v26, v27, v28, v29, v30, v31;
    v32 = v20 >> 62;
    v185 = v14;
    v179 = v22;
    v188 = v20;
    v33 = v189;
    if (os_log_type_enabled(v21, v24))
    {
      v15 = swift_slowAlloc();
      v194[0] = swift_slowAlloc();
      *v15 = 136446978;
      *(v15 + 4) = sub_10000668C(0xD00000000000001ALL, (v22 | 0x8000000000000000), v194);
      *(v15 + 6) = 2048;
      v14 = a7;
      v182 = v24;
      if (!v32)
      {
        v41 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_59;
    }

    v20, v55, v56, v57, v58, v59, v60, v61;
    while (1)
    {
      v33 = a8;
      v62 = v184;
      v14 = v32 ? _CocoaArrayWrapper.endIndex.getter() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v63 = &_swiftEmptyArrayStorage;
      if (!v14)
      {
        break;
      }

      v183 = v32;
      v194[0] = &_swiftEmptyArrayStorage;
      v21 = v194;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v14 & 0x8000000000000000) == 0)
      {
        v64 = 0;
        v65 = v20 & 0xC000000000000001;
        v187 = v20 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          v15 = (v64 + 1);
          if (__OFADD__(v64, 1))
          {
            break;
          }

          if (v65)
          {
            v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v64 >= *(v187 + 16))
            {
              goto LABEL_54;
            }

            v66 = *(v20 + 8 * v64 + 32);
          }

          v67 = v66;
          sub_1005E3810([v66 remObjectID], v189, a7);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v20 = v188;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v21 = v194;
          specialized ContiguousArray._endMutation()();
          ++v64;
          if (v15 == v14)
          {
            v63 = v194[0];
            v32 = v183;
            v62 = v184;
            v33 = a8;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_59:
      v41 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v15 + 14) = v41;
      v20, v34, v35, v36, v37, v38, v39, v40;
      *(v15 + 11) = 2082;
      sub_1000060C8(0, v33, v14);
      v42 = [swift_getObjCClassFromMetadata() description];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = v43;
      v20 = v188;
      v47 = sub_10000668C(v46, v45, v194);
      v45, v48, v49, v50, v51, v52, v53, v54;
      *(v15 + 3) = v47;
      *(v15 + 16) = 2082;
      *(v15 + 34) = sub_10000668C(v183, v187, v194);
      _os_log_impl(&_mh_execute_header, v21, v182, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v15, 0x2Au);
      swift_arrayDestroy();
    }

LABEL_20:
    v21 = (v33)(v63, v62);
    v63, v68, v69, v70, v71, v72, v73, v74;
    if (v32)
    {
      v75 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v75 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v76 = v185;
    swift_beginAccess();
    if (v75)
    {
      v14 = 0;
      a8 = (v20 & 0xC000000000000001);
      v182 = a9;
      v183 = v20 & 0xFFFFFFFFFFFFFF8;
      v180 = v75;
      v181 = v21;
      while (1)
      {
        if (a8)
        {
          v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v86 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v14 >= *(v183 + 16))
          {
            goto LABEL_55;
          }

          v85 = *(v20 + 8 * v14 + 32);
          v86 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        v87 = v85;
        v15 = sub_1005E3810([v87 remObjectID], v189, a7);

        if (!v21[2])
        {
          break;
        }

        v95 = a9(v15);
        if ((v88 & 1) == 0)
        {
          break;
        }

        v96 = *(v21[7] + 8 * v95);
        v97 = *(v62 + 6);
        v187 = v96;
        if ((v97 & 0xC000000000000001) != 0)
        {
          v98 = v96;
          v99 = v15;

          v100 = __CocoaDictionary.lookup(_:)();
          if (v100)
          {
            v195 = v100;
            sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
            swift_dynamicCast();
            v101 = v194[0];

            v97, v102, v103, v104, v105, v106, v107, v108;
          }

          else
          {

            v97, v121, v122, v123, v124, v125, v126, v127;
            v101 = 0;
          }

          v76 = v185;
        }

        else
        {
          v109 = *(v97 + 16);
          v110 = v96;
          if (v109)
          {
            v111 = v15;

            v112 = sub_10002B924(v111);
            if (v113)
            {
              v101 = *(*(v97 + 56) + 8 * v112);

              v97, v114, v115, v116, v117, v118, v119, v120;
            }

            else
            {

              v97, v128, v129, v130, v131, v132, v133, v134;
              v101 = 0;
            }

            v62 = v184;
            v76 = v185;
          }

          else
          {
            v101 = 0;
            v62 = v184;
          }
        }

        v135 = *(v76 + 72);
        v136 = [v87 remObjectID];
        if (*(v135 + 16))
        {
          v84 = v136;
          sub_10002B924(v136);
        }

        else
        {
          v84 = v87;
          v87 = v15;
          v15 = v136;
        }

        v21 = v181;

        ++v14;
        v20 = v188;
        if (v86 == v180)
        {
          goto LABEL_48;
        }
      }

      v21, v88, v89, v90, v91, v92, v93, v94;
      v188, v144, v145, v146, v147, v148, v149, v150;
      v151 = v15;

      v152 = Logger.logObject.getter();
      v153 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        *v154 = 136446722;
        *(v154 + 4) = sub_10000668C(0xD00000000000001ALL, (v179 | 0x8000000000000000), &v195);
        *(v154 + 12) = 2082;
        v155 = *(v76 + 40);
        v196 = *(v76 + 24);
        v197[0] = v155;
        *(v197 + 14) = *(v76 + 54);
        sub_100009DAC(&v196, v194);
        v156 = sub_1000063E8();
        v158 = v157;
        sub_1005812D4(&v196);
        v159 = sub_10000668C(v156, v158, &v195);
        v158, v160, v161, v162, v163, v164, v165, v166;
        *(v154 + 14) = v159;
        *(v154 + 22) = 2080;
        v167 = [v151 description];
        v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v170 = v169;

        v171 = sub_10000668C(v168, v170, &v195);
        v170, v172, v173, v174, v175, v176, v177, v178;
        *(v154 + 24) = v171;
        _os_log_impl(&_mh_execute_header, v152, v153, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v154, 0x20u);
        swift_arrayDestroy();
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v151];
      swift_willThrow();
    }

    else
    {
LABEL_48:
      v21, v77, v78, v79, v80, v81, v82, v83;
      v20, v137, v138, v139, v140, v141, v142, v143;
    }
  }
}

void sub_10065449C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, uint64_t), void *a6, uint64_t (*a7)(_TtC7remindd19RDXPCStorePerformer *, uint64_t), unint64_t a8, uint64_t (*a9)(void *))
{
  v14 = v9;
  v186 = a2;
  v17 = *(a3 + 16);
  v18 = *(a3 + 24);
  v180 = &v186;
  v181 = v14;

  v19 = a5(a4, v179, a1);
  if (v10)
  {
    return;
  }

  v20 = v19;
  v171 = v17;
  v175 = a3;
  v21 = "mutateRelationshipOrdering";
  if (qword_100936008 != -1)
  {
    goto LABEL_54;
  }

LABEL_3:
  v22 = v21 - 4;
  v23 = type metadata accessor for Logger();
  sub_100006654(v23, qword_100945730);

  v24 = v18;

  v21 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  v18, v26, v27, v28, v29, v30, v31, v32;
  v169 = v25;
  v33 = os_log_type_enabled(v21, v25);
  v34 = v20 >> 62;
  v167 = v22;
  v178 = v20;
  v18 = v14;
  v172 = v20 >> 62;
  if (v33)
  {
    v20 = swift_slowAlloc();
    v182[0] = swift_slowAlloc();
    *v20 = 136446978;
    *(v20 + 4) = sub_10000668C(0xD00000000000001ALL, (v22 | 0x8000000000000000), v182);
    *(v20 + 12) = 2048;
    v174 = a8;
    if (!v34)
    {
      v42 = v178;
      v43 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_57;
  }

  v20, v55, v56, v57, v58, v59, v60, v61;
  while (1)
  {
    v62 = a7;
    v24 = v34 ? _CocoaArrayWrapper.endIndex.getter() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v63 = &_swiftEmptyArrayStorage;
    if (!v24)
    {
      break;
    }

    v171 = v18;
    v182[0] = &_swiftEmptyArrayStorage;
    v21 = v182;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v24 & 0x8000000000000000) == 0)
    {
      v64 = 0;
      v65 = v20 & 0xC000000000000001;
      a6 = (v20 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v14 = (v64 + 1);
        if (__OFADD__(v64, 1))
        {
          break;
        }

        if (v65)
        {
          v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v64 >= a6[2])
          {
            goto LABEL_52;
          }

          v66 = *(v20 + 8 * v64 + 32);
        }

        v67 = v66;
        v18 = a8;
        (a8)([v66 remObjectID]);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v20 = v178;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 = v182;
        specialized ContiguousArray._endMutation()();
        ++v64;
        if (v14 == v24)
        {
          v63 = v182[0];
          v18 = v171;
          v62 = a7;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_57:
    v42 = v178;
    v43 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v20 + 14) = v43;
    v42, v35, v36, v37, v38, v39, v40, v41;
    *(v20 + 22) = 2082;
    (a6)(0);
    v14 = [swift_getObjCClassFromMetadata() description];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = sub_10000668C(v44, v46, v182);
    v46, v48, v49, v50, v51, v52, v53, v54;
    *(v20 + 24) = v47;
    *(v20 + 32) = 2082;
    *(v20 + 34) = sub_10000668C(v171, v24, v182);
    _os_log_impl(&_mh_execute_header, v21, v169, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v20, 0x2Au);
    swift_arrayDestroy();

    v34 = v172;
    a8 = v174;
    v20 = v42;
  }

LABEL_20:
  v21 = v62(v63, v175);
  v63, v68, v69, v70, v71, v72, v73, v74;
  if (v172)
  {
    v75 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v75 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v76 = v175;
  swift_beginAccess();
  if (!v75)
  {
LABEL_46:
    v20, v77, v78, v79, v80, v81, v82, v83;
    v21, v124, v125, v126, v127, v128, v129, v130;
    return;
  }

  v174 = a8;
  a8 = 0;
  a7 = (v20 & 0xC000000000000001);
  v171 = a9;
  v173 = v20 & 0xFFFFFFFFFFFFFF8;
  v168 = v75;
  v170 = v21;
  while (1)
  {
    if (a7)
    {
      v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v87 = (a8 + 1);
      if (__OFADD__(a8, 1))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (a8 >= *(v173 + 16))
      {
        goto LABEL_53;
      }

      v86 = *(v20 + 8 * a8 + 32);
      v87 = (a8 + 1);
      if (__OFADD__(a8, 1))
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    v88 = v86;
    v89 = v174([v88 remObjectID]);

    if (!v21[2])
    {
      break;
    }

    v97 = a9(v89);
    if ((v90 & 1) == 0)
    {
      break;
    }

    v98 = *(v21[7] + 8 * v97);
    v99 = *(v76 + 48);
    a6 = v98;
    if ((v99 & 0xC000000000000001) != 0)
    {
      v100 = v98;
      v101 = v89;

      v102 = __CocoaDictionary.lookup(_:)();
      if (!v102)
      {
        goto LABEL_39;
      }

      v183 = v102;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v103 = v182[0];
    }

    else
    {
      v104 = *(v99 + 16);
      v105 = v98;
      if (!v104)
      {
        goto LABEL_40;
      }

      v101 = v89;

      v106 = sub_10002B924(v101);
      if ((v107 & 1) == 0)
      {
LABEL_39:

        v99, v115, v116, v117, v118, v119, v120, v121;
LABEL_40:
        v103 = 0;
        goto LABEL_41;
      }

      v103 = *(*(v99 + 56) + 8 * v106);
    }

    v99, v108, v109, v110, v111, v112, v113, v114;
LABEL_41:

    v122 = *(v18 + 72);
    v123 = [v88 remObjectID];
    if (*(v122 + 16))
    {
      v84 = v123;
      sub_10002B924(v123);
      v85 = v84;
    }

    else
    {
      v85 = v89;
      v89 = v88;
      v88 = v123;
    }

    v76 = v175;
    v14 = v168;
    v21 = v170;

    ++a8;
    v20 = v178;
    if (v87 == v168)
    {
      goto LABEL_46;
    }
  }

  v21, v90, v91, v92, v93, v94, v95, v96;
  v178, v131, v132, v133, v134, v135, v136, v137;
  v138 = v89;

  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v139, v140))
  {
    v141 = v18;
    v142 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    *v142 = 136446722;
    *(v142 + 4) = sub_10000668C(0xD00000000000001ALL, (v167 | 0x8000000000000000), &v183);
    *(v142 + 12) = 2082;
    v143 = *(v141 + 40);
    v184 = *(v141 + 24);
    v185[0] = v143;
    *(v185 + 14) = *(v141 + 54);
    sub_100009DAC(&v184, v182);
    v144 = sub_1000063E8();
    v146 = v145;
    sub_1005812D4(&v184);
    v147 = sub_10000668C(v144, v146, &v183);
    v146, v148, v149, v150, v151, v152, v153, v154;
    *(v142 + 14) = v147;
    *(v142 + 22) = 2080;
    v155 = [v138 description];
    v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v158 = v157;

    v159 = sub_10000668C(v156, v158, &v183);
    v158, v160, v161, v162, v163, v164, v165, v166;
    *(v142 + 24) = v159;
    _os_log_impl(&_mh_execute_header, v139, v140, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v142, 0x20u);
    swift_arrayDestroy();
  }

  [objc_opt_self() noSuchObjectErrorWithObjectID:v138];
  swift_willThrow();
}

void sub_100654D60(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = a3;
  v395 = a2;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v389 = &v395;
  v390 = v3;

  v15 = sub_100759CB4(sub_1006AC5C0, v388, a1, v10, v11, v12, v13, v14);
  if (!v4)
  {
    v16 = v15;
    v387 = v9;
    v17 = "mutateRelationshipOrdering";
    if (qword_100936008 != -1)
    {
      goto LABEL_65;
    }

LABEL_3:
    v18 = v17 - 32;
    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_100945730);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    v8, v22, v23, v24, v25, v26, v27, v28;
    v29 = os_log_type_enabled(v20, v21);
    v30 = v16 >> 62;
    v386 = v5;
    v408 = v16;
    v384 = v18;
    v385 = v6;
    v382 = v16 >> 62;
    if (v29)
    {
      v5 = swift_slowAlloc();
      v393 = swift_slowAlloc();
      *v5 = 136446978;
      *(v5 + 4) = sub_10000668C(0xD00000000000001ALL, (v18 | 0x8000000000000000), &v393);
      *(v5 + 12) = 2048;
      if (!v30)
      {
        v38 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_68;
    }

    v16, v52, v53, v54, v55, v56, v57, v58;
    while (1)
    {
      v17 = v30 ? _CocoaArrayWrapper.endIndex.getter() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = &_swiftEmptyArrayStorage;
      if (!v17)
      {
        break;
      }

      v393 = &_swiftEmptyArrayStorage;
      v20 = &v393;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v17 & 0x8000000000000000) == 0)
      {
        v8 = 0;
        v59 = v16 & 0xC000000000000001;
        v387 = (v16 & 0xFFFFFFFFFFFFFF8);
        v6 = &selRef_persistentStoreForIdentifier_;
        while (1)
        {
          v60 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v59)
          {
            v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v8 >= v387[2])
            {
              goto LABEL_63;
            }

            v61 = *&v16->clientIdentity[8 * v8 + 16];
          }

          v62 = v61;
          sub_1005E96B8([v61 remObjectID]);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v5 = *v393->clientIdentity;
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v8;
          v16 = v408;
          if (v60 == v17)
          {
            v8 = v393;
            v5 = v386;
            v6 = v385;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_68:
      v38 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v5 + 14) = v38;
      v16, v31, v32, v33, v34, v35, v36, v37;
      *(v5 + 22) = 2082;
      type metadata accessor for REMCDTemplate();
      v39 = [swift_getObjCClassFromMetadata() description];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = sub_10000668C(v40, v42, &v393);
      v44 = v42;
      v16 = v408;
      v44, v45, v46, v47, v48, v49, v50, v51;
      *(v5 + 24) = v43;
      *(v5 + 32) = 2082;
      *(v5 + 34) = sub_10000668C(v387, v8, &v393);
      _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v5, 0x2Au);
      swift_arrayDestroy();

      v5 = v386;
      v6 = v385;
      v30 = v382;
    }

LABEL_22:
    v70 = sub_10066A5A8(v8, v6);
    v8, v71, v72, v73, v74, v75, v76, v77;
    if (v382)
    {
      v78 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v78 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    if (v78)
    {
      v86 = 0;
      v87 = v16 & 0xC000000000000001;
      v88 = v16 & 0xFFFFFFFFFFFFFF8;
      v89 = &v16->clientIdentity[16];
      v377 = v70;
      v374 = v16 & 0xC000000000000001;
      v375 = v78;
      v372 = &v16->clientIdentity[16];
      v373 = v16 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v87)
        {
          v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v86 >= *(v88 + 16))
          {
            __break(1u);
LABEL_70:
            __break(1u);
            return;
          }

          v90 = *&v89[8 * v86];
        }

        v376 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          goto LABEL_70;
        }

        v383 = v90;
        v91 = sub_1005E96B8([v383 remObjectID]);

        if (!*(v70 + 16) || (v99 = sub_100393C74(), (v92 & 1) == 0))
        {
          v70, v92, v93, v94, v95, v96, v97, v98;
          v16, v297, v298, v299, v300, v301, v302, v303;
          v304 = v91;

          v305 = Logger.logObject.getter();
          v306 = v5;
          v307 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v305, v307))
          {
            v308 = swift_slowAlloc();
            v391 = swift_slowAlloc();
            *v308 = 136446722;
            *(v308 + 4) = sub_10000668C(0xD00000000000001ALL, (v384 | 0x8000000000000000), &v391);
            *(v308 + 12) = 2082;
            v309 = *(v306 + 40);
            v396 = *(v306 + 24);
            v397[0] = v309;
            *(v397 + 14) = *(v306 + 54);
            sub_100009DAC(&v396, &v393);
            v310 = sub_1000063E8();
            v312 = v311;
            sub_1005812D4(&v396);
            v313 = sub_10000668C(v310, v312, &v391);
            v312, v314, v315, v316, v317, v318, v319, v320;
            *(v308 + 14) = v313;
            *(v308 + 22) = 2080;
            v321 = [v304 description];
            v322 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v324 = v323;

            v325 = sub_10000668C(v322, v324, &v391);
            v324, v326, v327, v328, v329, v330, v331, v332;
            *(v308 + 24) = v325;
            _os_log_impl(&_mh_execute_header, v305, v307, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v308, 0x20u);
            swift_arrayDestroy();
          }

          [objc_opt_self() noSuchObjectErrorWithObjectID:v304];
          swift_willThrow();

          return;
        }

        v100 = v6[6];
        v16 = *(*(v70 + 56) + 8 * v99);
        v6 = v91;

        v17 = sub_1003536F0(v6, v100);

        v100, v101, v102, v103, v104, v105, v106, v107;
        v108 = sub_1006AA1E0(v383, *(v5 + 72));
        v8 = v108;
        v379 = *v108->clientIdentity;
        if (v379)
        {
          break;
        }

LABEL_48:
        v8, v109, v110, v111, v112, v113, v114, v115;

        v87 = v374;
        v86 = v376;
        v70 = v377;
        v16 = v408;
        v6 = v385;
        v89 = v372;
        v88 = v373;
        if (v376 == v375)
        {
          goto LABEL_51;
        }
      }

      v116 = 0;
      v380 = v108;
      v381 = v16;
      while (v116 < *(v8 + 16))
      {
        v117 = [(RDXPCStorePerformer *)v16 entity];
        v118 = [v117 relationshipsByName];

        sub_1000060C8(0, &qword_10094BE18, NSRelationshipDescription_ptr);
        v119 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (!*(v119 + 16) || (v127 = sub_100005F4C(0x736E6F6974636573, 0xE800000000000000), (v120 & 1) == 0))
        {
          v408, v120, v121, v122, v123, v124, v125, v126;
          v380, v166, v167, v168, v169, v170, v171, v172;
          v119, v173, v174, v175, v176, v177, v178, v179;
          v377, v180, v181, v182, v183, v184, v185, v186;
          v187 = v6;

          v188 = Logger.logObject.getter();
          v189 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v188, v189))
          {
            v190 = swift_slowAlloc();
            v408 = swift_slowAlloc();
            v391 = v408;
            *v190 = 136446978;
            *(v190 + 4) = sub_10000668C(0xD00000000000001ALL, (v384 | 0x8000000000000000), &v391);
            *(v190 + 12) = 2082;
            v191 = *(v5 + 40);
            v400 = *(v5 + 24);
            v401[0] = v191;
            *(v401 + 14) = *(v5 + 54);
            sub_100009DAC(&v400, &v393);
            v192 = sub_1000063E8();
            v194 = v193;
            sub_1005812D4(&v400);
            v195 = sub_10000668C(v192, v194, &v391);
            v194, v196, v197, v198, v199, v200, v201, v202;
            *(v190 + 14) = v195;
            *(v190 + 22) = 2080;
            v203 = [v187 description];
            v204 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v206 = v205;

            v5 = v386;
            v207 = sub_10000668C(v204, v206, &v391);
            v206, v208, v209, v210, v211, v212, v213, v214;
            *(v190 + 24) = v207;
            *(v190 + 32) = 2080;
            *(v190 + 34) = sub_10000668C(0x736E6F6974636573, 0xE800000000000000, &v391);
            _os_log_impl(&_mh_execute_header, v188, v189, "[%{public}s] Tried to mutate ordering of a non-existing relationship -- bail {author: %{public}s, cdObjectID: %s, orderableRelationhipKey: %s}", v190, 0x2Au);
            swift_arrayDestroy();
          }

          v215 = objc_opt_self();
          v393 = 0;
          v394 = 0xE000000000000000;
          _StringGuts.grow(_:)(120);
          v391 = v393;
          v392 = v394;
          v216._countAndFlagsBits = 0xD000000000000049;
          v216._object = 0x80000001007FE5D0;
          String.append(_:)(v216);
          v217 = *(v5 + 40);
          v398 = *(v5 + 24);
          v399[0] = v217;
          *(v399 + 14) = *(v5 + 54);
          sub_100009DAC(&v398, &v393);
          v218 = sub_1000063E8();
          v220 = v219;
          sub_1005812D4(&v398);
          v221._countAndFlagsBits = v218;
          v221._object = v220;
          String.append(_:)(v221);
          v220, v222, v223, v224, v225, v226, v227, v228;
          v229._countAndFlagsBits = 0x656A624F6463202CLL;
          v229._object = 0xEE00203A44497463;
          String.append(_:)(v229);
          v230 = [v187 description];
          v231 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v233 = v232;

          v234._countAndFlagsBits = v231;
          v234._object = v233;
          String.append(_:)(v234);
          v233, v235, v236, v237, v238, v239, v240, v241;
          v242._object = 0x80000001007FE620;
          v242._countAndFlagsBits = 0xD00000000000001ALL;
          String.append(_:)(v242);
          v243._countAndFlagsBits = 0x736E6F6974636573;
          v243._object = 0xE800000000000000;
          String.append(_:)(v243);
          v244._countAndFlagsBits = 125;
          v244._object = 0xE100000000000000;
          String.append(_:)(v244);
          v245 = v392;
          v246 = String._bridgeToObjectiveC()();
          v245, v247, v248, v249, v250, v251, v252, v253;
          [v215 internalErrorWithDebugDescription:v246];

          swift_willThrow();
          return;
        }

        v128 = *(*(v119 + 56) + 8 * v127);
        v119, v129, v130, v131, v132, v133, v134, v135;
        v387 = v128;
        if (![v128 isOrdered])
        {
          v408, v136, v137, v138, v139, v140, v141, v142;
          v380, v254, v255, v256, v257, v258, v259, v260;
          v377, v261, v262, v263, v264, v265, v266, v267;
          v268 = v6;

          v269 = Logger.logObject.getter();
          v270 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v269, v270))
          {
            v271 = swift_slowAlloc();
            v391 = swift_slowAlloc();
            *v271 = 136446978;
            *(v271 + 4) = sub_10000668C(0xD00000000000001ALL, (v384 | 0x8000000000000000), &v391);
            *(v271 + 12) = 2082;
            v272 = *(v386 + 40);
            v406 = *(v386 + 24);
            v407[0] = v272;
            *(v407 + 14) = *(v386 + 54);
            sub_100009DAC(&v406, &v393);
            v273 = sub_1000063E8();
            v275 = v274;
            sub_1005812D4(&v406);
            v276 = sub_10000668C(v273, v275, &v391);
            v275, v277, v278, v279, v280, v281, v282, v283;
            *(v271 + 14) = v276;
            *(v271 + 22) = 2080;
            v284 = [v268 description];
            v285 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v287 = v286;

            v288 = sub_10000668C(v285, v287, &v391);
            v287, v289, v290, v291, v292, v293, v294, v295;
            *(v271 + 24) = v288;
            *(v271 + 32) = 2080;
            *(v271 + 34) = sub_10000668C(0x736E6F6974636573, 0xE800000000000000, &v391);
            _os_log_impl(&_mh_execute_header, v269, v270, "[%{public}s] Tried to mutate a relationship that is not ordered -- bail {author: %{public}s, cdObjectID: %s, orderableRelationhipKey: %s}", v271, 0x2Au);
            swift_arrayDestroy();

            v296 = v386;
          }

          else
          {

            v296 = v386;
          }

          v333 = objc_opt_self();
          v393 = 0;
          v394 = 0xE000000000000000;
          _StringGuts.grow(_:)(115);
          v391 = v393;
          v392 = v394;
          v334._countAndFlagsBits = 0xD000000000000044;
          v334._object = 0x80000001007FE640;
          String.append(_:)(v334);
          v335 = *(v296 + 40);
          v404 = *(v296 + 24);
          v405[0] = v335;
          *(v405 + 14) = *(v296 + 54);
          sub_100009DAC(&v404, &v393);
          v336 = sub_1000063E8();
          v338 = v337;
          sub_1005812D4(&v404);
          v339._countAndFlagsBits = v336;
          v339._object = v338;
          String.append(_:)(v339);
          v338, v340, v341, v342, v343, v344, v345, v346;
          v347._countAndFlagsBits = 0x656A624F6463202CLL;
          v347._object = 0xEE00203A44497463;
          String.append(_:)(v347);
          v348 = [v268 description];
          v349 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v351 = v350;

          v352._countAndFlagsBits = v349;
          v352._object = v351;
          String.append(_:)(v352);
          v351, v353, v354, v355, v356, v357, v358, v359;
          v360._object = 0x80000001007FE620;
          v360._countAndFlagsBits = 0xD00000000000001ALL;
          String.append(_:)(v360);
          v361._countAndFlagsBits = 0x736E6F6974636573;
          v361._object = 0xE800000000000000;
          String.append(_:)(v361);
          v362._countAndFlagsBits = 125;
          v362._object = 0xE100000000000000;
          String.append(_:)(v362);
          v363 = v392;
          v364 = String._bridgeToObjectiveC()();
          v363, v365, v366, v367, v368, v369, v370, v371;
          [v333 internalErrorWithDebugDescription:v364];

          swift_willThrow();
          return;
        }

        v143 = v6;

        v144 = v5;
        v145 = Logger.logObject.getter();
        v146 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v145, v146))
        {
          v147 = v143;
          v148 = swift_slowAlloc();
          v378 = swift_slowAlloc();
          v391 = swift_slowAlloc();
          *v148 = 136447234;
          *(v148 + 4) = sub_10000668C(0xD00000000000001ALL, (v384 | 0x8000000000000000), &v391);
          *(v148 + 12) = 2082;
          v149 = *(v144 + 40);
          v402 = *(v144 + 24);
          v403[0] = v149;
          *(v403 + 14) = *(v144 + 54);
          sub_100009DAC(&v402, &v393);
          v150 = sub_1000063E8();
          v152 = v151;
          sub_1005812D4(&v402);
          v153 = sub_10000668C(v150, v152, &v391);
          v152, v154, v155, v156, v157, v158, v159, v160;
          *(v148 + 14) = v153;
          *(v148 + 22) = 2114;
          *(v148 + 24) = v147;
          *v378 = v6;
          *(v148 + 32) = 2082;
          v161 = v147;
          *(v148 + 34) = sub_10000668C(0xD00000000000001CLL, 0x80000001007EA010, &v391);
          *(v148 + 42) = 2082;
          *(v148 + 44) = sub_10000668C(0x736E6F6974636573, 0xE800000000000000, &v391);
          _os_log_impl(&_mh_execute_header, v145, v146, "[%{public}s] Updating relationship ordering {author: %{public}s, objectID: %{public}@, changedValueKey: %{public}s, orderableRelationshipKey: %{public}s}", v148, 0x34u);
          sub_1000050A4(v378, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();
        }

        v162 = objc_autoreleasePoolPush();
        v163 = String._bridgeToObjectiveC()();
        v16 = v381;
        v17 = [(RDXPCStorePerformer *)v381 mutableOrderedSetValueForKey:v163];

        if (v17)
        {
          sub_1001DCD64(v381, v383);
        }

        else
        {
          v17 = Logger.logObject.getter();
          v164 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v17, v164))
          {
            v165 = swift_slowAlloc();
            v393 = swift_slowAlloc();
            *v165 = 136446466;
            *(v165 + 4) = sub_10000668C(0xD00000000000001ALL, (v384 | 0x8000000000000000), &v393);
            *(v165 + 12) = 2080;
            *(v165 + 14) = sub_10000668C(0x736E6F6974636573, 0xE800000000000000, &v393);
            _os_log_impl(&_mh_execute_header, v17, v164, "[%{public}s] Not mutating ordering because mutableOrderedSet for relationship is nil {orderableRelationshipKey: %s}", v165, 0x16u);
            swift_arrayDestroy();
            v16 = v381;
          }
        }

        v8 = v380;
        objc_autoreleasePoolPop(v162);
        v5 = v386;
        if (*(v386 + 104))
        {
          v17 = v16;
          [v17 updateChangeCount];
        }

        ++v116;

        if (v379 == v116)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_64;
    }

LABEL_51:
    v16, v79, v80, v81, v82, v83, v84, v85;
    v70, v63, v64, v65, v66, v67, v68, v69;
  }
}

void sub_1006561D8(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v5 = v3;
  v6 = a3;
  v393 = a2;
  v9 = *a3->clientIdentity;
  v8 = *&a3->clientIdentity[8];
  v387 = &v393;
  v388 = v3;

  v15 = sub_100759CB4(sub_1006AC86C, v386, a1, v10, v11, v12, v13, v14);
  if (!v4)
  {
    v16 = v15;
    v385 = v9;
    v17 = "mutateRelationshipOrdering";
    if (qword_100936008 != -1)
    {
      goto LABEL_65;
    }

LABEL_3:
    v18 = v17 - 32;
    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_100945730);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    v8, v22, v23, v24, v25, v26, v27, v28;
    v29 = os_log_type_enabled(v20, v21);
    v30 = v16 >> 62;
    v384 = v5;
    v406 = v16;
    v381 = v16 >> 62;
    v383 = v6;
    v380 = v18;
    if (v29)
    {
      v5 = swift_slowAlloc();
      v391 = swift_slowAlloc();
      *v5 = 136446978;
      *(v5 + 4) = sub_10000668C(0xD00000000000001ALL, (v18 | 0x8000000000000000), &v391);
      *(v5 + 6) = 2048;
      if (!v30)
      {
        v38 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_68;
    }

    v16, v51, v52, v53, v54, v55, v56, v57;
    while (1)
    {
      v17 = v30 ? _CocoaArrayWrapper.endIndex.getter() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = &_swiftEmptyArrayStorage;
      if (!v17)
      {
        break;
      }

      v391 = &_swiftEmptyArrayStorage;
      v20 = &v391;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v17 & 0x8000000000000000) == 0)
      {
        v8 = 0;
        v58 = v16 & 0xC000000000000001;
        v385 = (v16 & 0xFFFFFFFFFFFFFF8);
        v5 = off_1008D41E8;
        while (1)
        {
          v6 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v58)
          {
            v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v8 >= v385[2])
            {
              goto LABEL_63;
            }

            v59 = *&v16->clientIdentity[8 * v8 + 16];
          }

          v60 = v59;
          sub_1005E3810([v59 remObjectID], &unk_10093F770, off_1008D41E8);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v16 = v406;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v8;
          if (v6 == v17)
          {
            v8 = v391;
            v5 = v384;
            v30 = v381;
            v6 = v383;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_68:
      v38 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v5 + 14) = v38;
      v16, v31, v32, v33, v34, v35, v36, v37;
      *(v5 + 11) = 2082;
      sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
      v39 = [swift_getObjCClassFromMetadata() description];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v16 = v406;
      v43 = sub_10000668C(v40, v42, &v391);
      v42, v44, v45, v46, v47, v48, v49, v50;
      v5[3] = v43;
      *(v5 + 16) = 2082;
      *(v5 + 34) = sub_10000668C(v385, v8, &v391);
      _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v5, 0x2Au);
      swift_arrayDestroy();

      v5 = v384;
      v30 = v381;
      v6 = v383;
    }

LABEL_22:
    v376 = sub_10066AE78(v8, v6);
    v8, v68, v69, v70, v71, v72, v73, v74;
    if (v30)
    {
      v75 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v75 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    if (v75)
    {
      v83 = 0;
      v84 = v16 & 0xC000000000000001;
      v85 = v16 & 0xFFFFFFFFFFFFFF8;
      v86 = &v16->clientIdentity[16];
      v372 = v16 & 0xC000000000000001;
      v373 = v75;
      v370 = &v16->clientIdentity[16];
      v371 = v16 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v84)
        {
          v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v83 >= *(v85 + 16))
          {
            __break(1u);
LABEL_70:
            __break(1u);
            return;
          }

          v87 = *&v86[8 * v83];
        }

        v374 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          goto LABEL_70;
        }

        v382 = v87;
        v88 = sub_1005E3810([v382 remObjectID], &unk_10093F770, off_1008D41E8);

        v96 = v376;
        if (!*(v376 + 16) || (v97 = sub_100393C74(), v96 = v376, (v89 & 1) == 0))
        {
          v96, v89, v90, v91, v92, v93, v94, v95;
          v16, v295, v296, v297, v298, v299, v300, v301;
          v302 = v88;

          v303 = Logger.logObject.getter();
          v304 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v303, v304))
          {
            v305 = v5;
            v306 = swift_slowAlloc();
            v389 = swift_slowAlloc();
            *v306 = 136446722;
            *(v306 + 4) = sub_10000668C(0xD00000000000001ALL, (v380 | 0x8000000000000000), &v389);
            *(v306 + 12) = 2082;
            v307 = *(v305 + 5);
            v394 = *(v305 + 3);
            v395[0] = v307;
            *(v395 + 14) = *(v305 + 54);
            sub_100009DAC(&v394, &v391);
            v308 = sub_1000063E8();
            v310 = v309;
            sub_1005812D4(&v394);
            v311 = sub_10000668C(v308, v310, &v389);
            v310, v312, v313, v314, v315, v316, v317, v318;
            *(v306 + 14) = v311;
            *(v306 + 22) = 2080;
            v319 = [v302 description];
            v320 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v322 = v321;

            v323 = sub_10000668C(v320, v322, &v389);
            v322, v324, v325, v326, v327, v328, v329, v330;
            *(v306 + 24) = v323;
            _os_log_impl(&_mh_execute_header, v303, v304, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v306, 0x20u);
            swift_arrayDestroy();
          }

          [objc_opt_self() noSuchObjectErrorWithObjectID:v302];
          swift_willThrow();

          return;
        }

        v98 = *&v6->clientIdentity[32];
        v6 = *(*(v376 + 56) + 8 * v97);
        v99 = v88;

        v17 = sub_1003536F0(v99, v98);

        v98, v100, v101, v102, v103, v104, v105, v106;
        v107 = sub_1006AA2B0(v382, v5[9]);
        v8 = v107;
        v377 = *v107->clientIdentity;
        if (v377)
        {
          break;
        }

LABEL_48:
        v8, v108, v109, v110, v111, v112, v113, v114;

        v84 = v372;
        v83 = v374;
        v16 = v406;
        v6 = v383;
        v86 = v370;
        v85 = v371;
        if (v374 == v373)
        {
          goto LABEL_51;
        }
      }

      v16 = 0;
      v378 = v107;
      v379 = v6;
      while (v16 < *(v8 + 16))
      {
        v115 = [(RDXPCStorePerformer *)v6 entity];
        v116 = [v115 relationshipsByName];

        sub_1000060C8(0, &qword_10094BE18, NSRelationshipDescription_ptr);
        v117 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (!*(v117 + 16) || (v125 = sub_100005F4C(0x736E6F6974636573, 0xE800000000000000), (v118 & 1) == 0))
        {
          v406, v118, v119, v120, v121, v122, v123, v124;
          v378, v164, v165, v166, v167, v168, v169, v170;
          v117, v171, v172, v173, v174, v175, v176, v177;
          v376, v178, v179, v180, v181, v182, v183, v184;
          v185 = v99;

          v186 = Logger.logObject.getter();
          v187 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v186, v187))
          {
            v188 = swift_slowAlloc();
            v406 = swift_slowAlloc();
            v389 = v406;
            *v188 = 136446978;
            *(v188 + 4) = sub_10000668C(0xD00000000000001ALL, (v380 | 0x8000000000000000), &v389);
            *(v188 + 12) = 2082;
            v189 = *(v5 + 5);
            v398 = *(v5 + 3);
            v399[0] = v189;
            *(v399 + 14) = *(v5 + 54);
            sub_100009DAC(&v398, &v391);
            v190 = sub_1000063E8();
            v192 = v191;
            sub_1005812D4(&v398);
            v193 = sub_10000668C(v190, v192, &v389);
            v192, v194, v195, v196, v197, v198, v199, v200;
            *(v188 + 14) = v193;
            *(v188 + 22) = 2080;
            v201 = [v185 description];
            v202 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v204 = v203;

            v5 = v384;
            v205 = sub_10000668C(v202, v204, &v389);
            v204, v206, v207, v208, v209, v210, v211, v212;
            *(v188 + 24) = v205;
            *(v188 + 32) = 2080;
            *(v188 + 34) = sub_10000668C(0x736E6F6974636573, 0xE800000000000000, &v389);
            _os_log_impl(&_mh_execute_header, v186, v187, "[%{public}s] Tried to mutate ordering of a non-existing relationship -- bail {author: %{public}s, cdObjectID: %s, orderableRelationhipKey: %s}", v188, 0x2Au);
            swift_arrayDestroy();
          }

          v213 = objc_opt_self();
          v391 = 0;
          v392 = 0xE000000000000000;
          _StringGuts.grow(_:)(120);
          v389 = v391;
          v390 = v392;
          v214._countAndFlagsBits = 0xD000000000000049;
          v214._object = 0x80000001007FE5D0;
          String.append(_:)(v214);
          v215 = *(v5 + 5);
          v396 = *(v5 + 3);
          v397[0] = v215;
          *(v397 + 14) = *(v5 + 54);
          sub_100009DAC(&v396, &v391);
          v216 = sub_1000063E8();
          v218 = v217;
          sub_1005812D4(&v396);
          v219._countAndFlagsBits = v216;
          v219._object = v218;
          String.append(_:)(v219);
          v218, v220, v221, v222, v223, v224, v225, v226;
          v227._countAndFlagsBits = 0x656A624F6463202CLL;
          v227._object = 0xEE00203A44497463;
          String.append(_:)(v227);
          v228 = [v185 description];
          v229 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v231 = v230;

          v232._countAndFlagsBits = v229;
          v232._object = v231;
          String.append(_:)(v232);
          v231, v233, v234, v235, v236, v237, v238, v239;
          v240._object = 0x80000001007FE620;
          v240._countAndFlagsBits = 0xD00000000000001ALL;
          String.append(_:)(v240);
          v241._countAndFlagsBits = 0x736E6F6974636573;
          v241._object = 0xE800000000000000;
          String.append(_:)(v241);
          v242._countAndFlagsBits = 125;
          v242._object = 0xE100000000000000;
          String.append(_:)(v242);
          v243 = v390;
          v244 = String._bridgeToObjectiveC()();
          v243, v245, v246, v247, v248, v249, v250, v251;
          [v213 internalErrorWithDebugDescription:v244];

          swift_willThrow();
          return;
        }

        v126 = *(*(v117 + 56) + 8 * v125);
        v117, v127, v128, v129, v130, v131, v132, v133;
        v385 = v126;
        if (![v126 isOrdered])
        {
          v406, v134, v135, v136, v137, v138, v139, v140;
          v378, v252, v253, v254, v255, v256, v257, v258;
          v376, v259, v260, v261, v262, v263, v264, v265;
          v266 = v99;

          v267 = Logger.logObject.getter();
          v268 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v267, v268))
          {
            v269 = swift_slowAlloc();
            v389 = swift_slowAlloc();
            *v269 = 136446978;
            *(v269 + 4) = sub_10000668C(0xD00000000000001ALL, (v380 | 0x8000000000000000), &v389);
            *(v269 + 12) = 2082;
            v270 = *(v384 + 5);
            v404 = *(v384 + 3);
            v405[0] = v270;
            *(v405 + 14) = *(v384 + 54);
            sub_100009DAC(&v404, &v391);
            v271 = sub_1000063E8();
            v273 = v272;
            sub_1005812D4(&v404);
            v274 = sub_10000668C(v271, v273, &v389);
            v273, v275, v276, v277, v278, v279, v280, v281;
            *(v269 + 14) = v274;
            *(v269 + 22) = 2080;
            v282 = [v266 description];
            v283 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v285 = v284;

            v286 = sub_10000668C(v283, v285, &v389);
            v285, v287, v288, v289, v290, v291, v292, v293;
            *(v269 + 24) = v286;
            *(v269 + 32) = 2080;
            *(v269 + 34) = sub_10000668C(0x736E6F6974636573, 0xE800000000000000, &v389);
            _os_log_impl(&_mh_execute_header, v267, v268, "[%{public}s] Tried to mutate a relationship that is not ordered -- bail {author: %{public}s, cdObjectID: %s, orderableRelationhipKey: %s}", v269, 0x2Au);
            swift_arrayDestroy();

            v294 = v384;
          }

          else
          {

            v294 = v384;
          }

          v331 = objc_opt_self();
          v391 = 0;
          v392 = 0xE000000000000000;
          _StringGuts.grow(_:)(115);
          v389 = v391;
          v390 = v392;
          v332._countAndFlagsBits = 0xD000000000000044;
          v332._object = 0x80000001007FE640;
          String.append(_:)(v332);
          v333 = *(v294 + 5);
          v402 = *(v294 + 3);
          v403[0] = v333;
          *(v403 + 14) = *(v294 + 54);
          sub_100009DAC(&v402, &v391);
          v334 = sub_1000063E8();
          v336 = v335;
          sub_1005812D4(&v402);
          v337._countAndFlagsBits = v334;
          v337._object = v336;
          String.append(_:)(v337);
          v336, v338, v339, v340, v341, v342, v343, v344;
          v345._countAndFlagsBits = 0x656A624F6463202CLL;
          v345._object = 0xEE00203A44497463;
          String.append(_:)(v345);
          v346 = [v266 description];
          v347 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v349 = v348;

          v350._countAndFlagsBits = v347;
          v350._object = v349;
          String.append(_:)(v350);
          v349, v351, v352, v353, v354, v355, v356, v357;
          v358._object = 0x80000001007FE620;
          v358._countAndFlagsBits = 0xD00000000000001ALL;
          String.append(_:)(v358);
          v359._countAndFlagsBits = 0x736E6F6974636573;
          v359._object = 0xE800000000000000;
          String.append(_:)(v359);
          v360._countAndFlagsBits = 125;
          v360._object = 0xE100000000000000;
          String.append(_:)(v360);
          v361 = v390;
          v362 = String._bridgeToObjectiveC()();
          v361, v363, v364, v365, v366, v367, v368, v369;
          [v331 internalErrorWithDebugDescription:v362];

          swift_willThrow();
          return;
        }

        v141 = v99;

        v142 = v5;
        v143 = Logger.logObject.getter();
        v144 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v143, v144))
        {
          v145 = v141;
          v146 = swift_slowAlloc();
          v375 = swift_slowAlloc();
          v389 = swift_slowAlloc();
          *v146 = 136447234;
          *(v146 + 4) = sub_10000668C(0xD00000000000001ALL, (v380 | 0x8000000000000000), &v389);
          *(v146 + 12) = 2082;
          v147 = *(v142 + 5);
          v400 = *(v142 + 3);
          v401[0] = v147;
          *(v401 + 14) = *(v142 + 54);
          sub_100009DAC(&v400, &v391);
          v148 = sub_1000063E8();
          v150 = v149;
          sub_1005812D4(&v400);
          v151 = sub_10000668C(v148, v150, &v389);
          v150, v152, v153, v154, v155, v156, v157, v158;
          *(v146 + 14) = v151;
          *(v146 + 22) = 2114;
          *(v146 + 24) = v145;
          *v375 = v99;
          *(v146 + 32) = 2082;
          v159 = v145;
          *(v146 + 34) = sub_10000668C(0xD00000000000001CLL, 0x80000001007EA010, &v389);
          *(v146 + 42) = 2082;
          *(v146 + 44) = sub_10000668C(0x736E6F6974636573, 0xE800000000000000, &v389);
          _os_log_impl(&_mh_execute_header, v143, v144, "[%{public}s] Updating relationship ordering {author: %{public}s, objectID: %{public}@, changedValueKey: %{public}s, orderableRelationshipKey: %{public}s}", v146, 0x34u);
          sub_1000050A4(v375, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();
        }

        v160 = objc_autoreleasePoolPush();
        v161 = String._bridgeToObjectiveC()();
        v6 = v379;
        v17 = [(RDXPCStorePerformer *)v379 mutableOrderedSetValueForKey:v161];

        if (v17)
        {
          sub_10023108C(v379, v382);
        }

        else
        {
          v17 = Logger.logObject.getter();
          v162 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v17, v162))
          {
            v163 = swift_slowAlloc();
            v391 = swift_slowAlloc();
            *v163 = 136446466;
            *(v163 + 4) = sub_10000668C(0xD00000000000001ALL, (v380 | 0x8000000000000000), &v391);
            *(v163 + 12) = 2080;
            *(v163 + 14) = sub_10000668C(0x736E6F6974636573, 0xE800000000000000, &v391);
            _os_log_impl(&_mh_execute_header, v17, v162, "[%{public}s] Not mutating ordering because mutableOrderedSet for relationship is nil {orderableRelationshipKey: %s}", v163, 0x16u);
            swift_arrayDestroy();
            v6 = v379;
          }
        }

        v8 = v378;
        objc_autoreleasePoolPop(v160);
        v5 = v384;
        if (v384[13])
        {
          v17 = v6;
          [v17 updateChangeCount];
        }

        v16 = (v16 + 1);

        if (v377 == v16)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_64;
    }

LABEL_51:
    v16, v76, v77, v78, v79, v80, v81, v82;
    v376, v61, v62, v63, v64, v65, v66, v67;
  }
}

void sub_10065767C(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v6 = a3;
  *&v172.shareRecordIDToRootRecordID[2] = a2;
  v8 = a3[2];
  v9 = a3[3];
  *v172.clientIdentity = &v172.shareRecordIDToRootRecordID[2];
  *&v172.clientIdentity[8] = v5;

  v15 = sub_100759CB4(sub_1006B0238, &v172, a1, v10, v11, v12, v13, v14);
  if (v4)
  {
    return;
  }

  v16 = v15;
  v170 = v8;
  v17 = "mutateRelationshipOrdering";
  if (qword_100936008 != -1)
  {
    goto LABEL_54;
  }

LABEL_3:
  v18 = v17 - 32;
  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_100945730);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  v9, v22, v23, v24, v25, v26, v27, v28;
  v29 = v16 >> 62;
  v167 = v16 >> 62;
  v169 = v6;
  v171 = v16;
  v166 = v5;
  v161 = v18;
  if (os_log_type_enabled(v20, v21))
  {
    v29 = swift_slowAlloc();
    *&v172.clientIdentity[16] = swift_slowAlloc();
    *v29 = 136446978;
    *(v29 + 4) = sub_10000668C(0xD00000000000001ALL, (v18 | 0x8000000000000000), &v172.clientIdentity[16]);
    *(v29 + 12) = 2048;
    if (!(v16 >> 62))
    {
      v37 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_57;
  }

  v16, v51, v52, v53, v54, v55, v56, v57;
  while (1)
  {
    v17 = v29 ? _CocoaArrayWrapper.endIndex.getter() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = &_swiftEmptyArrayStorage;
    if (!v17)
    {
      break;
    }

    *&v172.clientIdentity[16] = &_swiftEmptyArrayStorage;
    v20 = &v172.clientIdentity[16];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v58 = v16 & 0xC000000000000001;
      v170 = v16 & 0xFFFFFFFFFFFFFF8;
      v5 = &selRef_persistentStoreForIdentifier_;
      while (1)
      {
        v59 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v58)
        {
          v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v170 + 16))
          {
            goto LABEL_52;
          }

          v60 = *&v16->clientIdentity[8 * v9 + 16];
        }

        v61 = v60;
        sub_1005E2A38([v60 remObjectID]);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v6 = *(*&v172.clientIdentity[16] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v9;
        v16 = v171;
        if (v59 == v17)
        {
          v9 = *&v172.clientIdentity[16];
          v5 = v166;
          v29 = v167;
          v6 = v169;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      swift_once();
      goto LABEL_3;
    }

    __break(1u);
LABEL_57:
    v37 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v29 + 14) = v37;
    v16, v30, v31, v32, v33, v34, v35, v36;
    *(v29 + 22) = 2082;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v38 = [swift_getObjCClassFromMetadata() description];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_10000668C(v39, v41, &v172.clientIdentity[16]);
    v43 = v41;
    v16 = v171;
    v43, v44, v45, v46, v47, v48, v49, v50;
    *(v29 + 24) = v42;
    *(v29 + 32) = 2082;
    *(v29 + 34) = sub_10000668C(v170, v9, &v172.clientIdentity[16]);
    _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v29, 0x2Au);
    swift_arrayDestroy();

    v5 = v166;
    v29 = v167;
    v6 = v169;
  }

LABEL_20:
  v62 = sub_10066C018(v9, v6);
  v9, v63, v64, v65, v66, v67, v68, v69;
  if (v29)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (!v17)
  {
LABEL_46:
    v16, v70, v71, v72, v73, v74, v75, v76;
    v62, v118, v119, v120, v121, v122, v123, v124;
    return;
  }

  v9 = 0;
  v164 = v16 & 0xFFFFFFFFFFFFFF8;
  v165 = v16 & 0xC000000000000001;
  v77 = &selRef_persistentStoreForIdentifier_;
  v162 = v17;
  v163 = v62;
  while (1)
  {
    if (v165)
    {
      v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v81 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v9 >= *(v164 + 16))
      {
        goto LABEL_53;
      }

      v80 = *&v16->clientIdentity[8 * v9 + 16];
      v81 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    v82 = v80;
    v83 = sub_1005E2A38([v82 v77[106]]);

    if (!*(v62 + 16))
    {
      break;
    }

    v91 = sub_100393C74();
    if ((v84 & 1) == 0)
    {
      break;
    }

    v170 = v81;
    v92 = *(*(v62 + 56) + 8 * v91);
    v93 = v6[6];
    v168 = v92;
    if ((v93 & 0xC000000000000001) != 0)
    {
      v94 = v92;
      v95 = v83;

      v96 = __CocoaDictionary.lookup(_:)();
      if (!v96)
      {
        goto LABEL_39;
      }

      *&v172.dataAccessRequestsWriter[2] = v96;
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      swift_dynamicCast();
      v97 = *&v172.clientIdentity[16];
    }

    else
    {
      v98 = *(v93 + 16);
      v99 = v92;
      if (!v98)
      {
        goto LABEL_40;
      }

      v95 = v83;

      v100 = sub_10002B924(v95);
      if ((v101 & 1) == 0)
      {
LABEL_39:

        v93, v109, v110, v111, v112, v113, v114, v115;
LABEL_40:
        v97 = 0;
        goto LABEL_41;
      }

      v97 = *(*(v93 + 56) + 8 * v100);
    }

    v93, v102, v103, v104, v105, v106, v107, v108;
LABEL_41:

    v116 = v5[9];
    v77 = &selRef_persistentStoreForIdentifier_;
    v117 = [v82 remObjectID];
    if (*(v116 + 2))
    {
      v78 = v117;
      sub_10002B924(v117);
      v79 = v78;
    }

    else
    {
      v79 = v83;
      v83 = v82;
      v82 = v117;
    }

    v6 = v169;
    v17 = v162;
    v62 = v163;

    ++v9;
    v16 = v171;
    if (v170 == v162)
    {
      goto LABEL_46;
    }
  }

  v62, v84, v85, v86, v87, v88, v89, v90;
  v171, v125, v126, v127, v128, v129, v130, v131;
  v132 = v83;

  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v133, v134))
  {
    v135 = v5;
    v136 = swift_slowAlloc();
    *&v172.dataAccessRequestsWriter[2] = swift_slowAlloc();
    *v136 = 136446722;
    *(v136 + 4) = sub_10000668C(0xD00000000000001ALL, (v161 | 0x8000000000000000), &v172.dataAccessRequestsWriter[2]);
    *(v136 + 12) = 2082;
    v137 = *(v135 + 5);
    *&v172.coreSuggestionsHandler[18] = *(v135 + 3);
    *&v172.coreSuggestionsHandler[34] = v137;
    *&v172.publicCloudDatabaseController[8] = *(v135 + 54);
    sub_100009DAC(&v172.coreSuggestionsHandler[18], &v172.clientIdentity[16]);
    v138 = sub_1000063E8();
    v140 = v139;
    sub_1005812D4(&v172.coreSuggestionsHandler[18]);
    v141 = sub_10000668C(v138, v140, &v172.dataAccessRequestsWriter[2]);
    v140, v142, v143, v144, v145, v146, v147, v148;
    *(v136 + 14) = v141;
    *(v136 + 22) = 2080;
    v149 = [v132 description];
    v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v152 = v151;

    v153 = sub_10000668C(v150, v152, &v172.dataAccessRequestsWriter[2]);
    v152, v154, v155, v156, v157, v158, v159, v160;
    *(v136 + 24) = v153;
    _os_log_impl(&_mh_execute_header, v133, v134, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v136, 0x20u);
    swift_arrayDestroy();
  }

  [objc_opt_self() noSuchObjectErrorWithObjectID:v132];
  swift_willThrow();
}

void sub_100657EEC(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v6 = a3;
  v517 = a2;
  v9 = a3[2];
  v8 = a3[3];
  v511 = &v517;
  v512 = v3;

  v15 = sub_100759CB4(sub_1006AF554, v510, a1, v10, v11, v12, v13, v14);
  v16 = v4;
  if (!v4)
  {
    v17 = v15;
    v509 = v9;
    v18 = "mutateRelationshipOrdering";
    if (qword_100936008 != -1)
    {
      goto LABEL_98;
    }

LABEL_3:
    v19 = v18 - 32;
    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_100945730);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    v8, v23, v24, v25, v26, v27, v28, v29;
    v30 = os_log_type_enabled(v21, v22);
    v31 = v17 >> 62;
    v506 = v5;
    v530 = v17;
    v502 = v6;
    v499 = v19;
    v507 = v17 >> 62;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v515 = swift_slowAlloc();
      *v31 = 136446978;
      *(v31 + 4) = sub_10000668C(0xD00000000000001ALL, (v19 | 0x8000000000000000), &v515);
      *(v31 + 12) = 2048;
      if (!(v17 >> 62))
      {
        v39 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_101;
    }

    v17, v52, v53, v54, v55, v56, v57, v58;
    while (1)
    {
      v18 = v31 ? _CocoaArrayWrapper.endIndex.getter() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = &_swiftEmptyArrayStorage;
      if (!v18)
      {
        break;
      }

      v515 = &_swiftEmptyArrayStorage;
      v21 = &v515;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v18 & 0x8000000000000000) == 0)
      {
        v8 = 0;
        v6 = (v17 & 0xC000000000000001);
        v509 = v17 & 0xFFFFFFFFFFFFFF8;
        do
        {
          v59 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          if (v6)
          {
            v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v8 >= *(v509 + 16))
            {
              goto LABEL_96;
            }

            v60 = *&v17->clientIdentity[8 * v8 + 16];
          }

          v61 = v60;
          sub_1005E3810([v60 remObjectID], &unk_100938880, off_1008D41A8);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v5 = *v515->clientIdentity;
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v8;
          v17 = v530;
        }

        while (v59 != v18);
        v8 = v515;
        v5 = v506;
        v31 = v507;
        v6 = v502;
        break;
      }

      __break(1u);
LABEL_101:
      v39 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v31 + 14) = v39;
      v17, v32, v33, v34, v35, v36, v37, v38;
      *(v31 + 22) = 2082;
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      v40 = [swift_getObjCClassFromMetadata() description];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v17 = v530;
      v44 = sub_10000668C(v41, v43, &v515);
      v43, v45, v46, v47, v48, v49, v50, v51;
      *(v31 + 24) = v44;
      *(v31 + 32) = 2082;
      *(v31 + 34) = sub_10000668C(v509, v8, &v515);
      _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v31, 0x2Au);
      swift_arrayDestroy();

      v5 = v506;
      v31 = v507;
      v6 = v502;
    }

    v495 = sub_10066C8E8(v8, v6);
    v8, v69, v70, v71, v72, v73, v74, v75;
    if (v31)
    {
      v76 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v76 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    if (v76)
    {
      v84 = 0;
      v85 = v17 & 0xC000000000000001;
      v86 = v17 & 0xFFFFFFFFFFFFFF8;
      v87 = &v17->clientIdentity[16];
      v492 = v17 & 0xC000000000000001;
      v493 = v76;
      v490 = &v17->clientIdentity[16];
      v491 = v17 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v85)
        {
          v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v84 >= *(v86 + 16))
          {
            __break(1u);
LABEL_103:
            __break(1u);
            return;
          }

          v88 = *&v87[8 * v84];
        }

        v494 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_103;
        }

        v89 = v88;
        v501 = sub_1005E3810([v89 remObjectID], &unk_100938880, off_1008D41A8);

        v97 = v495;
        if (!*(v495 + 16) || (v98 = sub_100393C74(), v97 = v495, (v90 & 1) == 0))
        {
          v97, v90, v91, v92, v93, v94, v95, v96;
          v17, v408, v409, v410, v411, v412, v413, v414;
          v415 = v501;

          v416 = Logger.logObject.getter();
          v417 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v416, v417))
          {
            v418 = swift_slowAlloc();
            v513 = swift_slowAlloc();
            *v418 = 136446722;
            *(v418 + 4) = sub_10000668C(0xD00000000000001ALL, (v499 | 0x8000000000000000), &v513);
            *(v418 + 12) = 2082;
            v419 = *(v5 + 40);
            v518 = *(v5 + 24);
            v519[0] = v419;
            *(v519 + 14) = *(v5 + 54);
            sub_100009DAC(&v518, &v515);
            v420 = sub_1000063E8();
            v422 = v421;
            sub_1005812D4(&v518);
            v423 = sub_10000668C(v420, v422, &v513);
            v422, v424, v425, v426, v427, v428, v429, v430;
            *(v418 + 14) = v423;
            *(v418 + 22) = 2080;
            v431 = [v415 description];
            v432 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v434 = v433;

            v435 = sub_10000668C(v432, v434, &v513);
            v434, v436, v437, v438, v439, v440, v441, v442;
            *(v418 + 24) = v435;
            _os_log_impl(&_mh_execute_header, v416, v417, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v418, 0x20u);
            swift_arrayDestroy();
          }

          [objc_opt_self() noSuchObjectErrorWithObjectID:v415];
          swift_willThrow();

          return;
        }

        v500 = v89;
        v6 = *(*(v495 + 56) + 8 * v98);
        v99 = v502[6];
        if ((v99 & 0xC000000000000001) != 0)
        {
          v100 = v6;
          v101 = v501;
          v102 = v501;

          v103 = __CocoaDictionary.lookup(_:)();
          if (!v103)
          {
            goto LABEL_40;
          }

          v513 = v103;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v104 = v515;
        }

        else
        {
          v105 = *(v99 + 16);
          v106 = v6;
          v101 = v501;
          if (!v105)
          {
            goto LABEL_41;
          }

          v102 = v501;

          v107 = sub_10002B924(v102);
          if ((v108 & 1) == 0)
          {
LABEL_40:

            v99, v116, v117, v118, v119, v120, v121, v122;
LABEL_41:
            v104 = 0;
            goto LABEL_42;
          }

          v104 = *(*(v99 + 56) + 8 * v107);
        }

        v99, v109, v110, v111, v112, v113, v114, v115;
LABEL_42:

        v123 = *(v5 + 9);
        v124 = [v500 remObjectID];
        v125 = v124;
        if (*(v123 + 16) && (v126 = sub_10002B924(v124), (v127 & 1) != 0))
        {
          v18 = *(*(v123 + 56) + 8 * v126);
        }

        else
        {

          v18 = 0;
        }

        v8 = v6;
        v128 = sub_1005F4B38(v18, &off_1008DF1C0, sub_1003663AC, &qword_10094F5D8, &unk_1007B50F0);
        v18, v129, v130, v131, v132, v133, v134, v135;
        v496 = *v128->clientIdentity;
        if (v496)
        {
          v17 = 0;
          v497 = v128;
          v498 = v6;
          while (v17 < *v128->clientIdentity)
          {
            v504 = v16;
            v136 = v17->clientIdentity[v128 + 16];
            v137 = v8;
            v138 = [v8 entity];
            v139 = [v138 relationshipsByName];

            sub_1000060C8(0, &qword_10094BE18, NSRelationshipDescription_ptr);
            v140 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v505 = v136;
            if (v136 <= 1)
            {
              v148 = 0x7265646E696D6572;
            }

            else
            {
              v148 = 0x736E6F6974636573;
            }

            if (v136 <= 1)
            {
              v149 = 0xE900000000000073;
            }

            else
            {
              v149 = 0xE800000000000000;
            }

            v509 = v149;
            v508 = v148;
            if (!*(v140 + 16))
            {
              v149, v141, v142, v143, v144, v145, v146, v147;
LABEL_84:
              v140, v159, v160, v161, v162, v163, v164, v165;
              v495, v247, v248, v249, v250, v251, v252, v253;
              v530, v254, v255, v256, v257, v258, v259, v260;
              v497, v261, v262, v263, v264, v265, v266, v267;
              v268 = v101;

              v269 = v5;
              v270 = Logger.logObject.getter();
              v271 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v270, v271))
              {
                v272 = swift_slowAlloc();
                v513 = swift_slowAlloc();
                *v272 = 136446978;
                *(v272 + 4) = sub_10000668C(0xD00000000000001ALL, (v499 | 0x8000000000000000), &v513);
                *(v272 + 12) = 2082;
                v273 = *(v5 + 40);
                v522 = *(v5 + 24);
                v523[0] = v273;
                *(v523 + 14) = *(v5 + 54);
                sub_100009DAC(&v522, &v515);
                v274 = sub_1000063E8();
                v276 = v275;
                sub_1005812D4(&v522);
                v277 = sub_10000668C(v274, v276, &v513);
                v276, v278, v279, v280, v281, v282, v283, v284;
                *(v272 + 14) = v277;
                *(v272 + 22) = 2080;
                v285 = [(RDXPCStorePerformer *)v268 description];
                v286 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v530 = v268;
                v288 = v287;

                v289 = sub_10000668C(v286, v288, &v513);
                v288, v290, v291, v292, v293, v294, v295, v296;
                *(v272 + 24) = v289;
                *(v272 + 32) = 2080;
                v297 = v508;
                v298 = v509;
                v299 = sub_10000668C(v508, v509, &v513);
                v509, v300, v301, v302, v303, v304, v305, v306;
                *(v272 + 34) = v299;
                _os_log_impl(&_mh_execute_header, v270, v271, "[%{public}s] Tried to mutate ordering of a non-existing relationship -- bail {author: %{public}s, cdObjectID: %s, orderableRelationhipKey: %s}", v272, 0x2Au);
                swift_arrayDestroy();
                v137 = v498;

                v307 = v530;
              }

              else
              {

                v307 = v268;
                v298 = v509;
                v297 = v508;
              }

              v515 = 0;
              v516 = 0xE000000000000000;
              _StringGuts.grow(_:)(120);
              v513 = v515;
              v514 = v516;
              v308._countAndFlagsBits = 0xD000000000000049;
              v308._object = 0x80000001007FE5D0;
              String.append(_:)(v308);
              v309 = *(v269 + 40);
              v520 = *(v269 + 24);
              v521[0] = v309;
              *(v521 + 14) = *(v269 + 54);
              sub_100009DAC(&v520, &v515);
              v310 = sub_1000063E8();
              v312 = v311;
              sub_1005812D4(&v520);
              v313._countAndFlagsBits = v310;
              v313._object = v312;
              String.append(_:)(v313);
              v312, v314, v315, v316, v317, v318, v319, v320;
              v321._countAndFlagsBits = 0x656A624F6463202CLL;
              v321._object = 0xEE00203A44497463;
              String.append(_:)(v321);
              v322 = [(RDXPCStorePerformer *)v307 description];
              v323 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v325 = v324;

              v326._countAndFlagsBits = v323;
              v326._object = v325;
              String.append(_:)(v326);
              v325, v327, v328, v329, v330, v331, v332, v333;
              v334._object = 0x80000001007FE620;
              v334._countAndFlagsBits = 0xD00000000000001ALL;
              String.append(_:)(v334);
              v335 = objc_opt_self();
              v336._countAndFlagsBits = v297;
              v336._object = v298;
              String.append(_:)(v336);
              v298, v337, v338, v339, v340, v341, v342, v343;
              v344._countAndFlagsBits = 125;
              v344._object = 0xE100000000000000;
              String.append(_:)(v344);
              v345 = v514;
              v346 = String._bridgeToObjectiveC()();
              v345, v347, v348, v349, v350, v351, v352, v353;
              [v335 internalErrorWithDebugDescription:v346];

              swift_willThrow();
              return;
            }

            v150 = sub_100005F4C(v148, v149);
            v152 = v151;
            v149, v151, v153, v154, v155, v156, v157, v158;
            if ((v152 & 1) == 0)
            {
              goto LABEL_84;
            }

            v166 = *(*(v140 + 56) + 8 * v150);
            v140, v167, v168, v169, v170, v171, v172, v173;
            v503 = v166;
            if (![v166 isOrdered])
            {
              v530, v174, v175, v176, v177, v178, v179, v180;
              v497, v354, v355, v356, v357, v358, v359, v360;
              v495, v361, v362, v363, v364, v365, v366, v367;
              v368 = v101;

              v369 = v5;
              v370 = Logger.logObject.getter();
              v371 = static os_log_type_t.fault.getter();

              v372 = os_log_type_enabled(v370, v371);
              v530 = v368;
              if (v372)
              {
                v373 = swift_slowAlloc();
                v513 = swift_slowAlloc();
                *v373 = 136446978;
                *(v373 + 4) = sub_10000668C(0xD00000000000001ALL, (v499 | 0x8000000000000000), &v513);
                *(v373 + 12) = 2082;
                v374 = *(v5 + 40);
                v528 = *(v5 + 24);
                v529[0] = v374;
                *(v529 + 14) = *(v5 + 54);
                sub_100009DAC(&v528, &v515);
                v375 = sub_1000063E8();
                v377 = v376;
                sub_1005812D4(&v528);
                v378 = sub_10000668C(v375, v377, &v513);
                v377, v379, v380, v381, v382, v383, v384, v385;
                *(v373 + 14) = v378;
                *(v373 + 22) = 2080;
                v386 = [(RDXPCStorePerformer *)v368 description];
                v387 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v389 = v388;

                v390 = sub_10000668C(v387, v389, &v513);
                v389, v391, v392, v393, v394, v395, v396, v397;
                *(v373 + 24) = v390;
                *(v373 + 32) = 2080;
                v398 = v508;
                v399 = v509;
                v400 = sub_10000668C(v508, v509, &v513);
                v509, v401, v402, v403, v404, v405, v406, v407;
                *(v373 + 34) = v400;
                _os_log_impl(&_mh_execute_header, v370, v371, "[%{public}s] Tried to mutate a relationship that is not ordered -- bail {author: %{public}s, cdObjectID: %s, orderableRelationhipKey: %s}", v373, 0x2Au);
                swift_arrayDestroy();
                v137 = v498;
              }

              else
              {

                v399 = v509;
                v398 = v508;
              }

              v515 = 0;
              v516 = 0xE000000000000000;
              _StringGuts.grow(_:)(115);
              v513 = v515;
              v514 = v516;
              v443._countAndFlagsBits = 0xD000000000000044;
              v443._object = 0x80000001007FE640;
              String.append(_:)(v443);
              v444 = *(v369 + 40);
              v526 = *(v369 + 24);
              v527[0] = v444;
              *(v527 + 14) = *(v369 + 54);
              sub_100009DAC(&v526, &v515);
              v445 = sub_1000063E8();
              v447 = v446;
              sub_1005812D4(&v526);
              v448._countAndFlagsBits = v445;
              v448._object = v447;
              String.append(_:)(v448);
              v447, v449, v450, v451, v452, v453, v454, v455;
              v456._countAndFlagsBits = 0x656A624F6463202CLL;
              v456._object = 0xEE00203A44497463;
              String.append(_:)(v456);
              v457 = v530;
              v458 = [(RDXPCStorePerformer *)v530 description];
              v459 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v461 = v460;

              v462._countAndFlagsBits = v459;
              v462._object = v461;
              String.append(_:)(v462);
              v461, v463, v464, v465, v466, v467, v468, v469;
              v470._object = 0x80000001007FE620;
              v470._countAndFlagsBits = 0xD00000000000001ALL;
              String.append(_:)(v470);
              v471 = objc_opt_self();
              v472._countAndFlagsBits = v398;
              v472._object = v399;
              String.append(_:)(v472);
              v399, v473, v474, v475, v476, v477, v478, v479;
              v480._countAndFlagsBits = 125;
              v480._object = 0xE100000000000000;
              String.append(_:)(v480);
              v481 = v514;
              v482 = String._bridgeToObjectiveC()();
              v481, v483, v484, v485, v486, v487, v488, v489;
              [v471 internalErrorWithDebugDescription:v482];

              swift_willThrow();
              return;
            }

            v181 = v101;

            v182 = Logger.logObject.getter();
            v183 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v182, v183))
            {
              v184 = swift_slowAlloc();
              v185 = swift_slowAlloc();
              v513 = swift_slowAlloc();
              *v184 = 136447234;
              *(v184 + 4) = sub_10000668C(0xD00000000000001ALL, (v499 | 0x8000000000000000), &v513);
              *(v184 + 12) = 2082;
              v186 = *(v5 + 40);
              v524 = *(v5 + 24);
              v525[0] = v186;
              *(v525 + 14) = *(v5 + 54);
              sub_100009DAC(&v524, &v515);
              v187 = sub_1000063E8();
              v189 = v188;
              sub_1005812D4(&v524);
              v190 = sub_10000668C(v187, v189, &v513);
              v189, v191, v192, v193, v194, v195, v196, v197;
              *(v184 + 14) = v190;
              *(v184 + 22) = 2114;
              *(v184 + 24) = v181;
              *v185 = v101;
              v198 = 0xD00000000000001FLL;
              *(v184 + 32) = 2082;
              if (v505 != 1)
              {
                v198 = 0xD00000000000001CLL;
              }

              v199 = "sectionIDsToUndelete";
              if (v505 != 1)
              {
                v199 = "remindersICSDisplayOrderChanged";
              }

              if (v505)
              {
                v200 = v198;
              }

              else
              {
                v200 = 0xD00000000000001CLL;
              }

              if (v505)
              {
                v201 = v199;
              }

              else
              {
                v201 = "lastUserAccessDate";
              }

              v202 = v181;
              v203 = sub_10000668C(v200, (v201 | 0x8000000000000000), &v513);
              (v201 | 0x8000000000000000), v204, v205, v206, v207, v208, v209, v210;
              *(v184 + 34) = v203;
              *(v184 + 42) = 2082;
              v211 = v509;
              v212 = sub_10000668C(v508, v509, &v513);
              v509, v213, v214, v215, v216, v217, v218, v219;
              *(v184 + 44) = v212;
              _os_log_impl(&_mh_execute_header, v182, v183, "[%{public}s] Updating relationship ordering {author: %{public}s, objectID: %{public}@, changedValueKey: %{public}s, orderableRelationshipKey: %{public}s}", v184, 0x34u);
              sub_1000050A4(v185, &unk_100938E70, &unk_100797230);

              swift_arrayDestroy();

              v220 = v506;
              v221 = v500;
            }

            else
            {
              v220 = v5;
              v221 = v500;

              v211 = v509;
            }

            v6 = objc_autoreleasePoolPush();
            v222 = String._bridgeToObjectiveC()();
            v211, v223, v224, v225, v226, v227, v228, v229;
            v8 = v498;
            v18 = [v498 mutableOrderedSetValueForKey:v222];

            if (v18)
            {
              v5 = v220;
              sub_100679214(v18, v505 > 1, v498, v221, v220);
              v16 = v504;
            }

            else
            {
              v18 = Logger.logObject.getter();
              v230 = static os_log_type_t.default.getter();
              v5 = v220;
              if (os_log_type_enabled(v18, v230))
              {
                v231 = swift_slowAlloc();
                v515 = swift_slowAlloc();
                *v231 = 136446466;
                *(v231 + 4) = sub_10000668C(0xD00000000000001ALL, (v499 | 0x8000000000000000), &v515);
                *(v231 + 12) = 2080;
                v232 = sub_10000668C(v508, v509, &v515);
                v509, v233, v234, v235, v236, v237, v238, v239;
                *(v231 + 14) = v232;
                _os_log_impl(&_mh_execute_header, v18, v230, "[%{public}s] Not mutating ordering because mutableOrderedSet for relationship is nil {orderableRelationshipKey: %s}", v231, 0x16u);
                swift_arrayDestroy();
                v8 = v498;

                v16 = v504;
              }

              else
              {

                v16 = v504;
                v8 = v498;
              }
            }

            v128 = v497;
            objc_autoreleasePoolPop(v6);
            v101 = v501;
            if (v5[104])
            {
              v18 = v8;
              [v18 updateChangeCount];
            }

            v17 = (v17 + 1);

            if (v496 == v17)
            {
              goto LABEL_79;
            }
          }

LABEL_97:
          __break(1u);
LABEL_98:
          swift_once();
          goto LABEL_3;
        }

LABEL_79:

        v128, v240, v241, v242, v243, v244, v245, v246;
        v85 = v492;
        v84 = v494;
        v17 = v530;
        v87 = v490;
        v86 = v491;
      }

      while (v494 != v493);
    }

    v17, v77, v78, v79, v80, v81, v82, v83;
    v495, v62, v63, v64, v65, v66, v67, v68;
  }
}

void sub_1006595E8(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v6 = a3;
  v410 = a2;
  v8 = a3[2];
  v9 = a3[3];
  v404 = &v410;
  v405 = v5;

  v15 = sub_100759CB4(sub_1006AF794, v403, a1, v10, v11, v12, v13, v14);
  if (!v4)
  {
    v16 = v15;
    v402 = v8;
    v17 = "mutateRelationshipOrdering";
    if (qword_100936008 != -1)
    {
      goto LABEL_71;
    }

LABEL_3:
    v18 = v17 - 32;
    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_100945730);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    v9, v22, v23, v24, v25, v26, v27, v28;
    v29 = os_log_type_enabled(v20, v21);
    v30 = v16 >> 62;
    v401 = v5;
    v423 = v16;
    v398 = v16 >> 62;
    v400 = v6;
    v397 = v18;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v408 = swift_slowAlloc();
      *v30 = 136446978;
      *(v30 + 4) = sub_10000668C(0xD00000000000001ALL, (v18 | 0x8000000000000000), &v408);
      *(v30 + 12) = 2048;
      if (!(v16 >> 62))
      {
        v38 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_74;
    }

    v16, v51, v52, v53, v54, v55, v56, v57;
    while (1)
    {
      v17 = v30 ? _CocoaArrayWrapper.endIndex.getter() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = &_swiftEmptyArrayStorage;
      if (!v17)
      {
        break;
      }

      v408 = &_swiftEmptyArrayStorage;
      v20 = &v408;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v17 & 0x8000000000000000) == 0)
      {
        v9 = 0;
        v5 = v16 & 0xC000000000000001;
        v402 = (v16 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          v6 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v5)
          {
            v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= v402[2])
            {
              goto LABEL_69;
            }

            v58 = *&v16->clientIdentity[8 * v9 + 16];
          }

          v59 = v58;
          sub_1005E3810([v58 remObjectID], &qword_1009399F0, off_1008D4120);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v16 = v423;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v9;
          if (v6 == v17)
          {
            v9 = v408;
            v5 = v401;
            v30 = v398;
            v6 = v400;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_74:
      v38 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v30 + 14) = v38;
      v16, v31, v32, v33, v34, v35, v36, v37;
      *(v30 + 22) = 2082;
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      v39 = [swift_getObjCClassFromMetadata() description];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v16 = v423;
      v43 = sub_10000668C(v40, v42, &v408);
      v42, v44, v45, v46, v47, v48, v49, v50;
      *(v30 + 24) = v43;
      *(v30 + 32) = 2082;
      *(v30 + 34) = sub_10000668C(v402, v9, &v408);
      _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v30, 0x2Au);
      swift_arrayDestroy();

      v5 = v401;
      v30 = v398;
      v6 = v400;
    }

LABEL_22:
    v391 = sub_1006666A4(v9, v6);
    v9, v67, v68, v69, v70, v71, v72, v73;
    if (v30)
    {
      v74 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v74 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v75 = v391;
    swift_beginAccess();
    if (v74)
    {
      v83 = 0;
      v84 = v16 & 0xC000000000000001;
      v85 = v16 & 0xFFFFFFFFFFFFFF8;
      v86 = &v16->clientIdentity[16];
      v388 = v16 & 0xC000000000000001;
      v389 = v74;
      v386 = &v16->clientIdentity[16];
      v387 = v16 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v84)
        {
          v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v83 >= *(v85 + 16))
          {
            __break(1u);
LABEL_76:
            __break(1u);
            return;
          }

          v87 = *&v86[8 * v83];
        }

        v390 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          goto LABEL_76;
        }

        v88 = v87;
        v89 = sub_1005E3810([v88 remObjectID], &qword_1009399F0, off_1008D4120);

        v393 = v88;
        if (!*v75->clientIdentity || (v97 = sub_100393C74(), (v90 & 1) == 0))
        {
          v75, v90, v91, v92, v93, v94, v95, v96;
          v16, v311, v312, v313, v314, v315, v316, v317;
          v318 = v89;

          v319 = Logger.logObject.getter();
          v320 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v319, v320))
          {
            v321 = swift_slowAlloc();
            v406 = swift_slowAlloc();
            *v321 = 136446722;
            *(v321 + 4) = sub_10000668C(0xD00000000000001ALL, (v397 | 0x8000000000000000), &v406);
            *(v321 + 12) = 2082;
            v322 = *(v5 + 40);
            v411 = *(v5 + 24);
            v412[0] = v322;
            *(v412 + 14) = *(v5 + 54);
            sub_100009DAC(&v411, &v408);
            v323 = sub_1000063E8();
            v325 = v324;
            sub_1005812D4(&v411);
            v326 = sub_10000668C(v323, v325, &v406);
            v325, v327, v328, v329, v330, v331, v332, v333;
            *(v321 + 14) = v326;
            *(v321 + 22) = 2080;
            v334 = [v318 description];
            v335 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v337 = v336;

            v338 = sub_10000668C(v335, v337, &v406);
            v337, v339, v340, v341, v342, v343, v344, v345;
            *(v321 + 24) = v338;
            _os_log_impl(&_mh_execute_header, v319, v320, "[%{public}s] Tried to mutate ordering in relationships with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v321, 0x20u);
            swift_arrayDestroy();

            v88 = v393;
          }

          [objc_opt_self() noSuchObjectErrorWithObjectID:v318];
          swift_willThrow();

          return;
        }

        v98 = *(*&v75->clientIdentity[40] + 8 * v97);
        v99 = v6[6];
        v9 = v98;
        v100 = v89;

        v17 = sub_1003536F0(v100, v99);

        v99, v101, v102, v103, v104, v105, v106, v107;
        v108 = sub_1006ACAFC(v88, *(v5 + 72));
        v116 = v108;
        v394 = *v108->clientIdentity;
        if (v394)
        {
          break;
        }

LABEL_55:
        v116, v109, v110, v111, v112, v113, v114, v115;

        v84 = v388;
        v83 = v390;
        v6 = v400;
        v75 = v391;
        v86 = v386;
        v85 = v387;
        if (v390 == v389)
        {
          goto LABEL_58;
        }
      }

      v6 = 0;
      v399 = v100;
      v395 = v108;
      v396 = v9;
      while (v6 < *v116->clientIdentity)
      {
        v117 = *(v6 + v116 + 32);
        v118 = [v9 entity];
        v119 = [v118 relationshipsByName];

        sub_1000060C8(0, &qword_10094BE18, NSRelationshipDescription_ptr);
        v120 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (!*(v120 + 16) || (v128 = sub_100005F4C(0x737473696CLL, 0xE500000000000000), (v121 & 1) == 0))
        {
          v423, v121, v122, v123, v124, v125, v126, v127;
          v395, v179, v180, v181, v182, v183, v184, v185;
          v120, v186, v187, v188, v189, v190, v191, v192;
          v391, v193, v194, v195, v196, v197, v198, v199;
          v200 = v100;

          v201 = Logger.logObject.getter();
          v202 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v201, v202))
          {
            v203 = swift_slowAlloc();
            v406 = swift_slowAlloc();
            *v203 = 136446978;
            *(v203 + 4) = sub_10000668C(0xD00000000000001ALL, (v397 | 0x8000000000000000), &v406);
            *(v203 + 12) = 2082;
            v204 = *(v5 + 40);
            v415 = *(v5 + 24);
            v416[0] = v204;
            *(v416 + 14) = *(v5 + 54);
            sub_100009DAC(&v415, &v408);
            v205 = sub_1000063E8();
            v207 = v206;
            sub_1005812D4(&v415);
            v208 = sub_10000668C(v205, v207, &v406);
            v207, v209, v210, v211, v212, v213, v214, v215;
            *(v203 + 14) = v208;
            *(v203 + 22) = 2080;
            v216 = [v200 description];
            v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v219 = v218;

            v220 = v217;
            v5 = v401;
            v221 = sub_10000668C(v220, v219, &v406);
            v219, v222, v223, v224, v225, v226, v227, v228;
            *(v203 + 24) = v221;
            *(v203 + 32) = 2080;
            *(v203 + 34) = sub_10000668C(0x737473696CLL, 0xE500000000000000, &v406);
            _os_log_impl(&_mh_execute_header, v201, v202, "[%{public}s] Tried to mutate ordering of a non-existing relationship -- bail {author: %{public}s, cdObjectID: %s, orderableRelationhipKey: %s}", v203, 0x2Au);
            swift_arrayDestroy();
          }

          v229 = objc_opt_self();
          v408 = 0;
          v409 = 0xE000000000000000;
          _StringGuts.grow(_:)(120);
          v406 = v408;
          v407 = v409;
          v230._countAndFlagsBits = 0xD000000000000049;
          v230._object = 0x80000001007FE5D0;
          String.append(_:)(v230);
          v231 = *(v5 + 40);
          v413 = *(v5 + 24);
          v414[0] = v231;
          *(v414 + 14) = *(v5 + 54);
          sub_100009DAC(&v413, &v408);
          v232 = sub_1000063E8();
          v234 = v233;
          sub_1005812D4(&v413);
          v235._countAndFlagsBits = v232;
          v235._object = v234;
          String.append(_:)(v235);
          v234, v236, v237, v238, v239, v240, v241, v242;
          v243._countAndFlagsBits = 0x656A624F6463202CLL;
          v243._object = 0xEE00203A44497463;
          String.append(_:)(v243);
          v244 = [v200 description];
          v245 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v247 = v246;

          v248._countAndFlagsBits = v245;
          v248._object = v247;
          String.append(_:)(v248);
          v247, v249, v250, v251, v252, v253, v254, v255;
          v256._object = 0x80000001007FE620;
          v256._countAndFlagsBits = 0xD00000000000001ALL;
          String.append(_:)(v256);
          v257._countAndFlagsBits = 0x737473696CLL;
          v257._object = 0xE500000000000000;
          String.append(_:)(v257);
          v258._countAndFlagsBits = 125;
          v258._object = 0xE100000000000000;
          String.append(_:)(v258);
          v259 = v407;
          v260 = String._bridgeToObjectiveC()();
          v259, v261, v262, v263, v264, v265, v266, v267;
          [v229 internalErrorWithDebugDescription:v260];

          swift_willThrow();
          return;
        }

        v129 = *(*(v120 + 56) + 8 * v128);
        v120, v130, v131, v132, v133, v134, v135, v136;
        v402 = v129;
        if (![v129 isOrdered])
        {
          v423, v137, v138, v139, v140, v141, v142, v143;
          v395, v268, v269, v270, v271, v272, v273, v274;
          v391, v275, v276, v277, v278, v279, v280, v281;
          v282 = v100;

          v283 = Logger.logObject.getter();
          v284 = static os_log_type_t.fault.getter();

          v285 = os_log_type_enabled(v283, v284);
          v423 = v282;
          if (v285)
          {
            v286 = swift_slowAlloc();
            v406 = swift_slowAlloc();
            *v286 = 136446978;
            *(v286 + 4) = sub_10000668C(0xD00000000000001ALL, (v397 | 0x8000000000000000), &v406);
            *(v286 + 12) = 2082;
            v287 = *(v401 + 40);
            v421 = *(v401 + 24);
            v422[0] = v287;
            *(v422 + 14) = *(v401 + 54);
            sub_100009DAC(&v421, &v408);
            v288 = sub_1000063E8();
            v290 = v289;
            sub_1005812D4(&v421);
            v291 = sub_10000668C(v288, v290, &v406);
            v290, v292, v293, v294, v295, v296, v297, v298;
            *(v286 + 14) = v291;
            *(v286 + 22) = 2080;
            v299 = [(RDXPCStorePerformer *)v282 description];
            v300 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v302 = v301;

            v303 = sub_10000668C(v300, v302, &v406);
            v302, v304, v305, v306, v307, v308, v309, v310;
            *(v286 + 24) = v303;
            *(v286 + 32) = 2080;
            *(v286 + 34) = sub_10000668C(0x737473696CLL, 0xE500000000000000, &v406);
            _os_log_impl(&_mh_execute_header, v283, v284, "[%{public}s] Tried to mutate a relationship that is not ordered -- bail {author: %{public}s, cdObjectID: %s, orderableRelationhipKey: %s}", v286, 0x2Au);
            swift_arrayDestroy();

            v5 = v401;
          }

          v346 = objc_opt_self();
          v408 = 0;
          v409 = 0xE000000000000000;
          _StringGuts.grow(_:)(115);
          v406 = v408;
          v407 = v409;
          v347._countAndFlagsBits = 0xD000000000000044;
          v347._object = 0x80000001007FE640;
          String.append(_:)(v347);
          v348 = *(v5 + 40);
          v419 = *(v5 + 24);
          v420[0] = v348;
          *(v420 + 14) = *(v5 + 54);
          sub_100009DAC(&v419, &v408);
          v349 = sub_1000063E8();
          v351 = v350;
          sub_1005812D4(&v419);
          v352._countAndFlagsBits = v349;
          v352._object = v351;
          String.append(_:)(v352);
          v351, v353, v354, v355, v356, v357, v358, v359;
          v360._countAndFlagsBits = 0x656A624F6463202CLL;
          v360._object = 0xEE00203A44497463;
          String.append(_:)(v360);
          v361 = v423;
          v362 = [(RDXPCStorePerformer *)v423 description];
          v363 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v365 = v364;

          v366._countAndFlagsBits = v363;
          v366._object = v365;
          String.append(_:)(v366);
          v365, v367, v368, v369, v370, v371, v372, v373;
          v374._object = 0x80000001007FE620;
          v374._countAndFlagsBits = 0xD00000000000001ALL;
          String.append(_:)(v374);
          v375._countAndFlagsBits = 0x737473696CLL;
          v375._object = 0xE500000000000000;
          String.append(_:)(v375);
          v376._countAndFlagsBits = 125;
          v376._object = 0xE100000000000000;
          String.append(_:)(v376);
          v377 = v407;
          v378 = String._bridgeToObjectiveC()();
          v377, v379, v380, v381, v382, v383, v384, v385;
          [v346 internalErrorWithDebugDescription:v378];

          swift_willThrow();
          return;
        }

        v144 = v100;

        v145 = Logger.logObject.getter();
        v146 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v145, v146))
        {
          v392 = v146;
          v147 = v5;
          v148 = v144;
          v149 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          v406 = swift_slowAlloc();
          *v149 = 136447234;
          *(v149 + 4) = sub_10000668C(0xD00000000000001ALL, (v397 | 0x8000000000000000), &v406);
          *(v149 + 12) = 2082;
          v151 = *(v147 + 40);
          v417 = *(v147 + 24);
          v418[0] = v151;
          *(v418 + 14) = *(v147 + 54);
          sub_100009DAC(&v417, &v408);
          v152 = sub_1000063E8();
          v154 = v153;
          sub_1005812D4(&v417);
          v155 = sub_10000668C(v152, v154, &v406);
          v154, v156, v157, v158, v159, v160, v161, v162;
          *(v149 + 14) = v155;
          *(v149 + 22) = 2114;
          *(v149 + 24) = v148;
          *v150 = v399;
          if (v117)
          {
            v163 = 0xD00000000000001ALL;
          }

          else
          {
            v163 = 0xD000000000000018;
          }

          if (v117)
          {
            v164 = "smartListIDsToUndelete";
          }

          else
          {
            v164 = "didFinishMigration";
          }

          *(v149 + 32) = 2082;
          v165 = v148;
          v166 = sub_10000668C(v163, (v164 | 0x8000000000000000), &v406);
          v167 = (v164 | 0x8000000000000000);
          v88 = v393;
          v167, v168, v169, v170, v171, v172, v173, v174;
          *(v149 + 34) = v166;
          *(v149 + 42) = 2082;
          *(v149 + 44) = sub_10000668C(0x737473696CLL, 0xE500000000000000, &v406);
          _os_log_impl(&_mh_execute_header, v145, v392, "[%{public}s] Updating relationship ordering {author: %{public}s, objectID: %{public}@, changedValueKey: %{public}s, orderableRelationshipKey: %{public}s}", v149, 0x34u);
          sub_1000050A4(v150, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();
        }

        else
        {
        }

        v175 = objc_autoreleasePoolPush();
        v176 = String._bridgeToObjectiveC()();
        v9 = v396;
        v17 = [v396 mutableOrderedSetValueForKey:v176];

        if (v17)
        {
          v5 = v401;
          sub_1002FD1B4(v17, v396, v88, v401);
        }

        else
        {
          v17 = Logger.logObject.getter();
          v177 = static os_log_type_t.default.getter();
          v5 = v401;
          if (os_log_type_enabled(v17, v177))
          {
            v178 = swift_slowAlloc();
            v408 = swift_slowAlloc();
            *v178 = 136446466;
            *(v178 + 4) = sub_10000668C(0xD00000000000001ALL, (v397 | 0x8000000000000000), &v408);
            *(v178 + 12) = 2080;
            *(v178 + 14) = sub_10000668C(0x737473696CLL, 0xE500000000000000, &v408);
            _os_log_impl(&_mh_execute_header, v17, v177, "[%{public}s] Not mutating ordering because mutableOrderedSet for relationship is nil {orderableRelationshipKey: %s}", v178, 0x16u);
            swift_arrayDestroy();
            v88 = v393;

            v9 = v396;
          }
        }

        v16 = v423;
        v116 = v395;
        objc_autoreleasePoolPop(v175);
        if (*(v5 + 104))
        {
          v17 = v9;
          [v17 updateChangeCount];
        }

        v6 = (v6 + 1);

        v100 = v399;
        if (v394 == v6)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_70;
    }

LABEL_58:
    v16, v76, v77, v78, v79, v80, v81, v82;
    v75, v60, v61, v62, v63, v64, v65, v66;
  }
}

void sub_10065AAA8(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v10 = *(v3 + 72);
  v190[0] = a2;
  v188 = v190;
  v189 = v10;

  v16 = sub_100759CB4(sub_1006AC71C, v187, a1, v11, v12, v13, v14, v15);
  if (!v4)
  {
    v17 = v16;
    v183 = v3;
    if (qword_100936008 != -1)
    {
      goto LABEL_63;
    }

LABEL_3:
    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_100945730);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    v8, v21, v22, v23, v24, v25, v26, v27;
    v28 = os_log_type_enabled(v19, v20);
    v29 = v17 >> 62;
    v184 = v6;
    v196 = v17;
    v180 = v17 >> 62;
    if (v28)
    {
      v5 = swift_slowAlloc();
      v190[0] = swift_slowAlloc();
      *v5 = 136446978;
      *(v5 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v190);
      *(v5 + 6) = 2048;
      if (!v29)
      {
        v37 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_66;
    }

    v17, v51, v52, v53, v54, v55, v56, v57;
    while (1)
    {
      v58 = v29 ? _CocoaArrayWrapper.endIndex.getter() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = &_swiftEmptyArrayStorage;
      if (!v58)
      {
        break;
      }

      v190[0] = &_swiftEmptyArrayStorage;
      v19 = v190;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v58 & 0x8000000000000000) == 0)
      {
        v6 = 0;
        v9 = v17 & 0xC000000000000001;
        v185 = v17 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          v5 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v9)
          {
            v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 >= *(v185 + 16))
            {
              goto LABEL_61;
            }

            v59 = *&v17->clientIdentity[8 * v6 + 16];
          }

          v60 = v59;
          sub_1005E5350([v59 remObjectID]);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v8 = *(v190[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v6;
          v17 = v196;
          if (v5 == v58)
          {
            v6 = v190[0];
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_66:
      v37 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v5 + 14) = v37;
      v17, v30, v31, v32, v33, v34, v35, v36;
      *(v5 + 11) = 2082;
      type metadata accessor for REMCDManualSortHint();
      v38 = [swift_getObjCClassFromMetadata() description];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = v39;
      v17 = v196;
      v43 = sub_10000668C(v42, v41, v190);
      v41, v44, v45, v46, v47, v48, v49, v50;
      *(v5 + 3) = v43;
      *(v5 + 16) = 2082;
      *(v5 + 34) = sub_10000668C(v9, v8, v190);
      _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v5, 0x2Au);
      swift_arrayDestroy();

      v29 = v180;
    }

LABEL_20:
    v61 = v184;
    v8 = sub_1006603FC(v6, v184);
    v6, v62, v63, v64, v65, v66, v67, v68;
    if (v180)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    swift_beginAccess();
    if (v9)
    {
      v76 = 0;
      v178 = v17 & 0xFFFFFFFFFFFFFF8;
      v179 = v17 & 0xC000000000000001;
      v176 = v8;
      v177 = v9;
      do
      {
        if (v179)
        {
          v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v78 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v76 >= *(v178 + 16))
          {
            goto LABEL_62;
          }

          v77 = *&v17->clientIdentity[8 * v76 + 16];
          v78 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
LABEL_57:
            __break(1u);
            break;
          }
        }

        v6 = v77;
        v5 = sub_1005E5350([v6 remObjectID]);
        v186 = v78;

        v79 = v61[6];
        if ((v79 & 0xC000000000000001) != 0)
        {
          v80 = v6;
          v81 = v5;

          v82 = __CocoaDictionary.lookup(_:)();
          if (!v82)
          {
            goto LABEL_35;
          }

          v191 = v82;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v83 = v190[0];
        }

        else
        {
          if (!*(v79 + 16))
          {
            v83 = 0;
            goto LABEL_37;
          }

          v80 = v6;
          v81 = v5;

          v84 = sub_10002B924(v81);
          if ((v85 & 1) == 0)
          {
LABEL_35:

            v79, v93, v94, v95, v96, v97, v98, v99;
            v83 = 0;
            goto LABEL_36;
          }

          v83 = *(*(v79 + 56) + 8 * v84);
        }

        v79, v86, v87, v88, v89, v90, v91, v92;
LABEL_36:
        v6 = v80;
LABEL_37:

        if (!*(v8 + 16) || (v100 = sub_100393C74(), (v101 & 1) == 0))
        {
          v5 = v5;

          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v114, v115))
          {
            v182 = v6;
            v6 = swift_slowAlloc();
            v191 = swift_slowAlloc();
            *v6 = 136446466;
            v116 = *(v183 + 40);
            v192 = *(v183 + 24);
            v193[0] = v116;
            *(v193 + 14) = *(v183 + 54);
            sub_100009DAC(&v192, v190);
            v117 = sub_1000063E8();
            v119 = v118;
            sub_1005812D4(&v192);
            v120 = sub_10000668C(v117, v119, &v191);
            v119, v121, v122, v123, v124, v125, v126, v127;
            *(v6 + 4) = v120;
            *(v6 + 12) = 2080;
            v128 = [v5 description];
            v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v131 = v130;

            v132 = v129;
            v8 = v176;
            v133 = sub_10000668C(v132, v131, &v191);
            v131, v134, v135, v136, v137, v138, v139, v140;
            *(v6 + 14) = v133;
            _os_log_impl(&_mh_execute_header, v114, v115, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v6, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v61 = v184;
          goto LABEL_52;
        }

        v181 = v6;
        v102 = *(*(v8 + 56) + 8 * v100);
        v103 = v184[7];
        if (!*(v103 + 16))
        {
          v141 = v102;
LABEL_48:
          v5 = v5;
          v6 = v183;

          v142 = Logger.logObject.getter();
          v143 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v142, v143))
          {
            v144 = swift_slowAlloc();
            v191 = swift_slowAlloc();
            *v144 = 136446466;
            v145 = *(v183 + 40);
            v194 = *(v183 + 24);
            v195[0] = v145;
            *(v195 + 14) = *(v183 + 54);
            sub_100009DAC(&v194, v190);
            v175 = v143;
            v146 = sub_1000063E8();
            v148 = v147;
            sub_1005812D4(&v194);
            v149 = sub_10000668C(v146, v148, &v191);
            v148, v150, v151, v152, v153, v154, v155, v156;
            *(v144 + 4) = v149;
            *(v144 + 12) = 2080;
            v157 = [v5 description];
            v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v6 = v159;

            v160 = sub_10000668C(v158, v6, &v191);
            v6, v161, v162, v163, v164, v165, v166, v167;
            *(v144 + 14) = v160;
            _os_log_impl(&_mh_execute_header, v142, v175, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v144, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v61 = v184;
          v8 = v176;
LABEL_52:
          v9 = v177;
          goto LABEL_53;
        }

        v104 = v5;
        v6 = v102;

        sub_10002B924(v104);
        v106 = v105;

        v103, v107, v108, v109, v110, v111, v112, v113;
        if ((v106 & 1) == 0)
        {
          goto LABEL_48;
        }

        v61 = v184;
        v8 = v176;
LABEL_53:
        ++v76;
        v17 = v196;
      }

      while (v186 != v9);
    }

    v8, v69, v70, v71, v72, v73, v74, v75;
    v17, v168, v169, v170, v171, v172, v173, v174;
  }
}

void sub_10065B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, uint64_t), char **a6, void *a7, uint64_t (*a8)(_TtC7remindd19RDXPCStorePerformer *, uint64_t), uint64_t (*a9)(id))
{
  v211 = a7;
  v17 = *(a3 + 16);
  v16 = *(a3 + 24);
  v18 = *(v9 + 72);
  v205[0] = a2;
  v203 = v205;
  v204 = v18;

  v19 = a5(a4, v202, a1);
  if (!v10)
  {
    v20 = v19;
    v195 = v17;
    v199 = v16;
    v21 = v211;
    v196 = v9;
    v197 = a3;
    if (qword_100936008 != -1)
    {
      goto LABEL_62;
    }

LABEL_3:
    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_100945730);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    v199, v25, v26, v27, v28, v29, v30, v31;
    v32 = v20 >> 62;
    v200 = a6;
    v201 = v20;
    v194 = v20 >> 62;
    if (os_log_type_enabled(v23, v24))
    {
      v33 = swift_slowAlloc();
      v205[0] = swift_slowAlloc();
      *v33 = 136446978;
      *(v33 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v205);
      *(v33 + 12) = 2048;
      if (!v32)
      {
        v41 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_65;
    }

    v20, v55, v56, v57, v58, v59, v60, v61;
    while (1)
    {
      a6 = v196;
      v33 = v32 ? _CocoaArrayWrapper.endIndex.getter() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v62 = &_swiftEmptyArrayStorage;
      if (!v33)
      {
        break;
      }

      v205[0] = &_swiftEmptyArrayStorage;
      v23 = v205;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v33 & 0x8000000000000000) == 0)
      {
        v63 = 0;
        v199 = (v201 & 0xFFFFFFFFFFFFFF8);
        a6 = &selRef_persistentStoreForIdentifier_;
        while (1)
        {
          v20 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            break;
          }

          if ((v201 & 0xC000000000000001) != 0)
          {
            v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v65 = v211;
          }

          else
          {
            v65 = v211;
            if (v63 >= *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_60;
            }

            v64 = *(v201 + 8 * v63 + 32);
          }

          sub_1005E3810([v64 remObjectID], v200, v65);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v21 = *(v205[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v63;
          if (v20 == v33)
          {
            v62 = v205[0];
            v21 = v211;
            a6 = v196;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_65:
      v20 = v201;
      v41 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v33 + 14) = v41;
      v20, v34, v35, v36, v37, v38, v39, v40;
      *(v33 + 22) = 2082;
      sub_1000060C8(0, v200, v21);
      v42 = [swift_getObjCClassFromMetadata() description];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = sub_10000668C(v43, v45, v205);
      v47 = v45;
      v21 = v211;
      v47, v48, v49, v50, v51, v52, v53, v54;
      *(v33 + 24) = v46;
      *(v33 + 32) = 2082;
      *(v33 + 34) = sub_10000668C(v195, v199, v205);
      _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v33, 0x2Au);
      swift_arrayDestroy();

      v32 = v194;
    }

LABEL_20:
    v66 = v197;
    v67 = v200;
    v68 = v201;
    v195 = a8(v62, v197);
    v62, v69, v70, v71, v72, v73, v74, v75;
    if (v194)
    {
      v76 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v76 = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    swift_beginAccess();
    if (v76)
    {
      v20 = 0;
      v193 = v76;
      do
      {
        if ((v201 & 0xC000000000000001) != 0)
        {
          v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v85 = (v20 + 1);
          if (__OFADD__(v20, 1))
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (v20 >= *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v84 = *&v68->clientIdentity[8 * v20 + 16];
          v85 = (v20 + 1);
          if (__OFADD__(v20, 1))
          {
LABEL_56:
            __break(1u);
            break;
          }
        }

        v199 = v85;
        v86 = v84;
        v87 = sub_1005E3810([v86 remObjectID], v67, v21);

        v88 = *(v66 + 48);
        a8 = v86;
        if ((v88 & 0xC000000000000001) != 0)
        {
          v89 = v87;

          v90 = __CocoaDictionary.lookup(_:)();
          if (!v90)
          {
            goto LABEL_35;
          }

          v206 = v90;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v91 = v205[0];
        }

        else
        {
          if (!*(v88 + 16))
          {
            goto LABEL_36;
          }

          v89 = v87;

          v92 = sub_10002B924(v89);
          if ((v93 & 1) == 0)
          {
LABEL_35:

            v88, v101, v102, v103, v104, v105, v106, v107;
LABEL_36:
            v91 = 0;
            goto LABEL_37;
          }

          v91 = *(*(v88 + 56) + 8 * v92);
        }

        v88, v94, v95, v96, v97, v98, v99, v100;
LABEL_37:

        if (!*(v195 + 16) || (v108 = a9(v87), (v109 & 1) == 0))
        {
          v123 = v87;

          v124 = Logger.logObject.getter();
          v125 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            v206 = swift_slowAlloc();
            *v126 = 136446466;
            v127 = *(a6 + 5);
            v207 = *(a6 + 3);
            v208[0] = v127;
            *(v208 + 14) = *(a6 + 54);
            sub_100009DAC(&v207, v205);
            v128 = sub_1000063E8();
            v130 = v129;
            sub_1005812D4(&v207);
            v131 = sub_10000668C(v128, v130, &v206);
            v130, v132, v133, v134, v135, v136, v137, v138;
            *(v126 + 4) = v131;
            *(v126 + 12) = 2080;
            v139 = [v123 description];
            v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v142 = v141;

            v143 = v140;
            a6 = v196;
            v144 = sub_10000668C(v143, v142, &v206);
            v145 = v142;
            v21 = v211;
            v145, v146, v147, v148, v149, v150, v151, v152;
            *(v126 + 14) = v144;
            _os_log_impl(&_mh_execute_header, v124, v125, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v126, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v153 = a8;
          goto LABEL_51;
        }

        v110 = *(*(v195 + 56) + 8 * v108);
        v111 = *(v66 + 56);
        if (!*(v111 + 16))
        {
          v154 = v110;
LABEL_47:
          v192 = v110;
          v155 = v87;
          a6 = v196;

          v156 = Logger.logObject.getter();
          v157 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v156, v157))
          {
            v158 = swift_slowAlloc();
            v206 = swift_slowAlloc();
            *v158 = 136446466;
            v159 = *(v196 + 40);
            v209 = *(v196 + 24);
            v210[0] = v159;
            *(v210 + 14) = *(v196 + 54);
            sub_100009DAC(&v209, v205);
            v191 = v157;
            v160 = sub_1000063E8();
            v162 = v161;
            sub_1005812D4(&v209);
            v163 = sub_10000668C(v160, v162, &v206);
            v162, v164, v165, v166, v167, v168, v169, v170;
            *(v158 + 4) = v163;
            *(v158 + 12) = 2080;
            v171 = [v155 description];
            v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v174 = v173;

            v175 = sub_10000668C(v172, v174, &v206);
            v176 = v174;
            v21 = v211;
            v176, v177, v178, v179, v180, v181, v182, v183;
            *(v158 + 14) = v175;
            _os_log_impl(&_mh_execute_header, v156, v191, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v158, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v153 = v192;
LABEL_51:

          goto LABEL_52;
        }

        v112 = v87;
        v113 = v110;

        sub_10002B924(v112);
        v115 = v114;

        v111, v116, v117, v118, v119, v120, v121, v122;
        if ((v115 & 1) == 0)
        {
          goto LABEL_47;
        }

        a6 = v196;
LABEL_52:
        v66 = v197;
        ++v20;
        v67 = v200;
        v68 = v201;
      }

      while (v199 != v193);
    }

    v195, v77, v78, v79, v80, v81, v82, v83;
    v68, v184, v185, v186, v187, v188, v189, v190;
  }
}

void sub_10065BF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, _BYTE *, uint64_t, __n128), unint64_t *a6, void *a7, uint64_t (*a8)(_TtC7remindd19RDXPCStorePerformer *, uint64_t), uint64_t (*a9)(id))
{
  v17 = *(a3 + 16);
  v16 = *(a3 + 24);
  v18 = *(v9 + 72);
  v208[0] = a2;
  v206 = v208;
  v207 = v18;

  v19 = (a5)(a4, v205, a1);
  if (!v10)
  {
    v20 = v19;
    v198 = v17;
    v202 = v16;
    v21 = a7;
    v199 = v9;
    v200 = a3;
    if (qword_100936008 != -1)
    {
      goto LABEL_62;
    }

LABEL_3:
    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_100945730);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    v202, v25, v26, v27, v28, v29, v30, v31;
    v32 = os_log_type_enabled(v23, v24);
    v33 = v20 >> 62;
    v203 = a6;
    v214 = v20;
    v196 = v20 >> 62;
    if (v32)
    {
      v34 = swift_slowAlloc();
      v208[0] = swift_slowAlloc();
      *v34 = 136446978;
      *(v34 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v208);
      *(v34 + 12) = 2048;
      if (!v33)
      {
        v20 = v214;
        v42 = *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_65;
    }

    v20, v57, v58, v59, v60, v61, v62, v63;
    while (1)
    {
      v64 = v199;
      v34 = v33 ? _CocoaArrayWrapper.endIndex.getter() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v65 = &_swiftEmptyArrayStorage;
      if (!v34)
      {
        break;
      }

      v208[0] = &_swiftEmptyArrayStorage;
      v23 = v208;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v34 & 0x8000000000000000) == 0)
      {
        v66 = 0;
        v21 = (v214 & 0xC000000000000001);
        v202 = v214 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          v20 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            break;
          }

          if (v21)
          {
            v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v66 >= *(v202 + 16))
            {
              goto LABEL_60;
            }

            v67 = *(v214 + 8 * v66 + 32);
          }

          v68 = v67;
          sub_1005E3810([v67 remObjectID], a6, a7);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v66;
          a6 = v203;
          if (v20 == v34)
          {
            v65 = v208[0];
            v21 = a7;
            v64 = v199;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_65:
      v20 = v214;
      v42 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v34 + 14) = v42;
      v20, v35, v36, v37, v38, v39, v40, v41;
      *(v34 + 22) = 2082;
      sub_1000060C8(0, a6, v21);
      v43 = [swift_getObjCClassFromMetadata() description];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = v44;
      a6 = v203;
      v48 = sub_10000668C(v47, v46, v208);
      v49 = v46;
      v21 = a7;
      v49, v50, v51, v52, v53, v54, v55, v56;
      *(v34 + 24) = v48;
      *(v34 + 32) = 2082;
      *(v34 + 34) = sub_10000668C(v198, v202, v208);
      _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v34, 0x2Au);
      swift_arrayDestroy();

      v33 = v196;
    }

LABEL_20:
    v69 = v200;
    v198 = a8(v65, v200);
    v65, v70, v71, v72, v73, v74, v75, v76;
    if (v196)
    {
      v77 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v77 = *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    swift_beginAccess();
    if (v77)
    {
      v20 = 0;
      v195 = v214 & 0xFFFFFFFFFFFFFF8;
      v197 = v214 & 0xC000000000000001;
      v194 = v77;
      do
      {
        if (v197)
        {
          v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v86 = (v20 + 1);
          if (__OFADD__(v20, 1))
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (v20 >= *(v195 + 16))
          {
            goto LABEL_61;
          }

          v85 = *(v214 + 8 * v20 + 32);
          v86 = (v20 + 1);
          if (__OFADD__(v20, 1))
          {
LABEL_56:
            __break(1u);
            break;
          }
        }

        v202 = v86;
        v87 = v85;
        v88 = sub_1005E3810([v87 remObjectID], a6, v21);

        v89 = *(v69 + 48);
        a8 = v87;
        if ((v89 & 0xC000000000000001) != 0)
        {
          v90 = v88;

          v91 = __CocoaDictionary.lookup(_:)();
          if (!v91)
          {
            goto LABEL_35;
          }

          v209 = v91;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v92 = v208[0];
        }

        else
        {
          if (!*(v89 + 16))
          {
            goto LABEL_36;
          }

          v90 = v88;

          v93 = sub_10002B924(v90);
          if ((v94 & 1) == 0)
          {
LABEL_35:

            v89, v102, v103, v104, v105, v106, v107, v108;
LABEL_36:
            v92 = 0;
            goto LABEL_37;
          }

          v92 = *(*(v89 + 56) + 8 * v93);
        }

        v89, v95, v96, v97, v98, v99, v100, v101;
LABEL_37:

        if (!*(v198 + 16) || (v109 = a9(v88), (v110 & 1) == 0))
        {
          v124 = v88;

          v125 = Logger.logObject.getter();
          v126 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v209 = swift_slowAlloc();
            *v127 = 136446466;
            v128 = *(v64 + 40);
            v210 = *(v64 + 24);
            v211[0] = v128;
            *(v211 + 14) = *(v64 + 54);
            sub_100009DAC(&v210, v208);
            v129 = sub_1000063E8();
            v131 = v130;
            sub_1005812D4(&v210);
            v132 = sub_10000668C(v129, v131, &v209);
            v131, v133, v134, v135, v136, v137, v138, v139;
            *(v127 + 4) = v132;
            *(v127 + 12) = 2080;
            v140 = [v124 description];
            v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v143 = v142;

            v144 = v141;
            v64 = v199;
            v145 = sub_10000668C(v144, v143, &v209);
            v146 = v143;
            v21 = a7;
            v146, v147, v148, v149, v150, v151, v152, v153;
            *(v127 + 14) = v145;
            _os_log_impl(&_mh_execute_header, v125, v126, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v127, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v154 = a8;
          goto LABEL_51;
        }

        v111 = *(*(v198 + 56) + 8 * v109);
        v112 = *(v69 + 56);
        if (!*(v112 + 16))
        {
          v155 = v111;
LABEL_47:
          v193 = v111;
          v156 = v88;
          v64 = v199;

          v157 = Logger.logObject.getter();
          v158 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v157, v158))
          {
            v159 = swift_slowAlloc();
            v209 = swift_slowAlloc();
            *v159 = 136446466;
            v160 = *(v199 + 40);
            v212 = *(v199 + 24);
            v213[0] = v160;
            *(v213 + 14) = *(v199 + 54);
            sub_100009DAC(&v212, v208);
            v192 = v158;
            v161 = sub_1000063E8();
            v163 = v162;
            sub_1005812D4(&v212);
            v164 = sub_10000668C(v161, v163, &v209);
            v163, v165, v166, v167, v168, v169, v170, v171;
            *(v159 + 4) = v164;
            *(v159 + 12) = 2080;
            v172 = [v156 description];
            v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v175 = v174;

            v176 = sub_10000668C(v173, v175, &v209);
            v177 = v175;
            v21 = a7;
            v177, v178, v179, v180, v181, v182, v183, v184;
            *(v159 + 14) = v176;
            _os_log_impl(&_mh_execute_header, v157, v192, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v159, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v154 = v193;
LABEL_51:

          a6 = v203;
          goto LABEL_52;
        }

        v113 = v88;
        v114 = v111;

        sub_10002B924(v113);
        v116 = v115;

        v112, v117, v118, v119, v120, v121, v122, v123;
        if ((v116 & 1) == 0)
        {
          goto LABEL_47;
        }

        a6 = v203;
        v64 = v199;
LABEL_52:
        v69 = v200;
        ++v20;
      }

      while (v202 != v194);
    }

    v214, v78, v79, v80, v81, v82, v83, v84;
    v198, v185, v186, v187, v188, v189, v190, v191;
  }
}

void sub_10065C9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, uint64_t), _TtC7remindd19RDXPCStorePerformer *a6, void *a7, uint64_t (*a8)(id), uint64_t (*a9)(NSObject *))
{
  v202 = a8;
  v17 = *(a3 + 16);
  v18 = *(a3 + 24);
  v19 = *(v9 + 72);
  v196[0] = a2;
  v194 = v196;
  v195 = v19;

  v20 = a5(a4, v193, a1);
  if (!v10)
  {
    v21 = v20;
    v189 = a7;
    v190 = v18;
    v186 = v17;
    v22 = v202;
    v191 = a3;
    v188 = v9;
    if (qword_100936008 != -1)
    {
      goto LABEL_60;
    }

LABEL_3:
    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_100945730);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    v190, v26, v27, v28, v29, v30, v31, v32;
    v192 = v21;
    v187 = v21 >> 62;
    if (os_log_type_enabled(v24, v25))
    {
      v33 = swift_slowAlloc();
      v196[0] = swift_slowAlloc();
      *v33 = 136446978;
      *(v33 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v196);
      *(v33 + 12) = 2048;
      LOBYTE(v185) = v25;
      if (!(v21 >> 62))
      {
        v41 = v21;
        v42 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_63;
    }

    v21, v56, v57, v58, v59, v60, v61, v62;
    v55 = v22;
    while (1)
    {
      v33 = v189;
      v63 = v187;
      v21 = v187 ? _CocoaArrayWrapper.endIndex.getter() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v64 = &_swiftEmptyArrayStorage;
      if (!v21)
      {
        break;
      }

      v196[0] = &_swiftEmptyArrayStorage;
      v24 = v196;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v21 & 0x8000000000000000) == 0)
      {
        v22 = 0;
        v190 = (v192 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          a6 = (v22 + 1);
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if ((v192 & 0xC000000000000001) != 0)
          {
            v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v66 = v202;
          }

          else
          {
            v66 = v202;
            if (v22 >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v65 = *(v192 + 8 * v22 + 32);
          }

          v66([v65 remObjectID]);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v22;
          if (a6 == v21)
          {
            v64 = v196[0];
            v55 = v202;
            v33 = v189;
            v63 = v187;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_63:
      v41 = v192;
      v42 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v33 + 14) = v42;
      v41, v34, v35, v36, v37, v38, v39, v40;
      *(v33 + 22) = 2082;
      (a6)(0);
      v43 = [swift_getObjCClassFromMetadata() description];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_10000668C(v44, v46, v196);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v33 + 24) = v47;
      *(v33 + 32) = 2082;
      *(v33 + 34) = sub_10000668C(v186, v190, v196);
      _os_log_impl(&_mh_execute_header, v24, v185, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v33, 0x2Au);
      swift_arrayDestroy();

      v55 = v202;
      v21 = v41;
    }

LABEL_20:
    v67 = (v33)(v64, v191);
    v64, v68, v69, v70, v71, v72, v73, v74;
    v21 = v192;
    if (v63)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v75 = v191;
    swift_beginAccess();
    swift_beginAccess();
    if (v22)
    {
      v83 = 0;
      v186 = v192 & 0xFFFFFFFFFFFFFF8;
      v184 = v22;
      v185 = v67;
      do
      {
        if ((v192 & 0xC000000000000001) != 0)
        {
          v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v86 = (v83 + 1);
          if (__OFADD__(v83, 1))
          {
            goto LABEL_54;
          }
        }

        else
        {
          if (v83 >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v85 = *(v21 + 8 * v83 + 32);
          v86 = (v83 + 1);
          if (__OFADD__(v83, 1))
          {
LABEL_54:
            __break(1u);
            break;
          }
        }

        v87 = v85;
        a6 = v55([v87 remObjectID]);

        v88 = *(v75 + 48);
        v190 = v86;
        if ((v88 & 0xC000000000000001) != 0)
        {
          v89 = a6;

          v90 = __CocoaDictionary.lookup(_:)();
          if (!v90)
          {
            goto LABEL_39;
          }

          v197 = v90;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v22 = v196[0];
        }

        else
        {
          if (!*(v88 + 16))
          {
            goto LABEL_40;
          }

          v89 = a6;

          v91 = sub_10002B924(v89);
          if ((v92 & 1) == 0)
          {
LABEL_39:

            v88, v100, v101, v102, v103, v104, v105, v106;
LABEL_40:
            v22 = 0;
            goto LABEL_41;
          }

          v22 = *(*(v88 + 56) + 8 * v91);
        }

        v88, v93, v94, v95, v96, v97, v98, v99;
LABEL_41:
        v189 = v87;

        if (*(v67 + 16) && (v107 = a9(&a6->super), (v108 & 1) != 0))
        {
          v109 = *(*(v67 + 56) + 8 * v107);
          v110 = *(v191 + 56);
          if (*(v110 + 16))
          {
            v22 = a6;
            v111 = v109;

            sub_10002B924(v22);
            v113 = v112;

            v110, v114, v115, v116, v117, v118, v119, v120;
            if (v113)
            {

              goto LABEL_28;
            }
          }

          else
          {
            v148 = v109;
          }

          v22 = a6;

          a6 = Logger.logObject.getter();
          v149 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(&a6->super, v149))
          {

            goto LABEL_28;
          }

          v183 = v109;
          v150 = v22;
          v22 = swift_slowAlloc();
          v197 = swift_slowAlloc();
          *v22 = 136446466;
          v151 = *(v188 + 40);
          v200 = *(v188 + 24);
          v201[0] = v151;
          *(v201 + 14) = *(v188 + 54);
          sub_100009DAC(&v200, v196);
          v152 = sub_1000063E8();
          v154 = v153;
          sub_1005812D4(&v200);
          v155 = sub_10000668C(v152, v154, &v197);
          v154, v156, v157, v158, v159, v160, v161, v162;
          *(v22 + 4) = v155;
          *(v22 + 12) = 2080;
          v163 = [v150 description];
          v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v166 = v165;

          v167 = v164;
          v55 = v202;
          v168 = sub_10000668C(v167, v166, &v197);
          v166, v169, v170, v171, v172, v173, v174, v175;
          *(v22 + 14) = v168;
          _os_log_impl(&_mh_execute_header, &a6->super, v149, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v22, 0x16u);
          swift_arrayDestroy();

          v84 = v183;
        }

        else
        {
          a6 = a6;

          v121 = Logger.logObject.getter();
          v122 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v121, v122))
          {
            v22 = swift_slowAlloc();
            v197 = swift_slowAlloc();
            *v22 = 136446466;
            v123 = *(v188 + 40);
            v198 = *(v188 + 24);
            v199[0] = v123;
            *(v199 + 14) = *(v188 + 54);
            sub_100009DAC(&v198, v196);
            v124 = sub_1000063E8();
            v126 = v125;
            sub_1005812D4(&v198);
            v127 = sub_10000668C(v124, v126, &v197);
            v126, v128, v129, v130, v131, v132, v133, v134;
            *(v22 + 4) = v127;
            *(v22 + 12) = 2080;
            v135 = [(RDXPCStorePerformer *)a6 description];
            v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v138 = v137;

            v139 = sub_10000668C(v136, v138, &v197);
            v140 = v138;
            v55 = v202;
            v140, v141, v142, v143, v144, v145, v146, v147;
            *(v22 + 14) = v139;
            _os_log_impl(&_mh_execute_header, v121, v122, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v22, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v84 = v189;
        }

LABEL_28:
        v75 = v191;
        v21 = v192;
        v67 = v185;
        ++v83;
      }

      while (v190 != v184);
    }

    v21, v76, v77, v78, v79, v80, v81, v82;
    v67, v176, v177, v178, v179, v180, v181, v182;
  }
}

void sub_10065D434(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v10 = *(v3 + 72);
  v190[0] = a2;
  v188 = v190;
  v189 = v10;

  v16 = sub_100759CB4(sub_1006AD758, v187, a1, v11, v12, v13, v14, v15);
  if (!v4)
  {
    v17 = v16;
    v183 = v3;
    if (qword_100936008 != -1)
    {
      goto LABEL_63;
    }

LABEL_3:
    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_100945730);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    v8, v21, v22, v23, v24, v25, v26, v27;
    v28 = os_log_type_enabled(v19, v20);
    v29 = v17 >> 62;
    v184 = v6;
    v196 = v17;
    v180 = v17 >> 62;
    if (v28)
    {
      v5 = swift_slowAlloc();
      v190[0] = swift_slowAlloc();
      *v5 = 136446978;
      *(v5 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v190);
      *(v5 + 6) = 2048;
      if (!v29)
      {
        v37 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_66;
    }

    v17, v51, v52, v53, v54, v55, v56, v57;
    while (1)
    {
      v58 = v29 ? _CocoaArrayWrapper.endIndex.getter() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = &_swiftEmptyArrayStorage;
      if (!v58)
      {
        break;
      }

      v190[0] = &_swiftEmptyArrayStorage;
      v19 = v190;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v58 & 0x8000000000000000) == 0)
      {
        v6 = 0;
        v9 = v17 & 0xC000000000000001;
        v185 = v17 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          v5 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v9)
          {
            v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 >= *(v185 + 16))
            {
              goto LABEL_61;
            }

            v59 = *&v17->clientIdentity[8 * v6 + 16];
          }

          v60 = v59;
          sub_1005E2A38([v59 remObjectID]);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v8 = *(v190[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v6;
          v17 = v196;
          if (v5 == v58)
          {
            v6 = v190[0];
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_66:
      v37 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v5 + 14) = v37;
      v17, v30, v31, v32, v33, v34, v35, v36;
      *(v5 + 11) = 2082;
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v38 = [swift_getObjCClassFromMetadata() description];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = v39;
      v17 = v196;
      v43 = sub_10000668C(v42, v41, v190);
      v41, v44, v45, v46, v47, v48, v49, v50;
      *(v5 + 3) = v43;
      *(v5 + 16) = 2082;
      *(v5 + 34) = sub_10000668C(v9, v8, v190);
      _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v5, 0x2Au);
      swift_arrayDestroy();

      v29 = v180;
    }

LABEL_20:
    v61 = v184;
    v8 = sub_10066C018(v6, v184);
    v6, v62, v63, v64, v65, v66, v67, v68;
    if (v180)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    swift_beginAccess();
    if (v9)
    {
      v76 = 0;
      v178 = v17 & 0xFFFFFFFFFFFFFF8;
      v179 = v17 & 0xC000000000000001;
      v176 = v8;
      v177 = v9;
      do
      {
        if (v179)
        {
          v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v78 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v76 >= *(v178 + 16))
          {
            goto LABEL_62;
          }

          v77 = *&v17->clientIdentity[8 * v76 + 16];
          v78 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
LABEL_57:
            __break(1u);
            break;
          }
        }

        v6 = v77;
        v5 = sub_1005E2A38([v6 remObjectID]);
        v186 = v78;

        v79 = v61[6];
        if ((v79 & 0xC000000000000001) != 0)
        {
          v80 = v6;
          v81 = v5;

          v82 = __CocoaDictionary.lookup(_:)();
          if (!v82)
          {
            goto LABEL_35;
          }

          v191 = v82;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v83 = v190[0];
        }

        else
        {
          if (!*(v79 + 16))
          {
            v83 = 0;
            goto LABEL_37;
          }

          v80 = v6;
          v81 = v5;

          v84 = sub_10002B924(v81);
          if ((v85 & 1) == 0)
          {
LABEL_35:

            v79, v93, v94, v95, v96, v97, v98, v99;
            v83 = 0;
            goto LABEL_36;
          }

          v83 = *(*(v79 + 56) + 8 * v84);
        }

        v79, v86, v87, v88, v89, v90, v91, v92;
LABEL_36:
        v6 = v80;
LABEL_37:

        if (!*(v8 + 16) || (v100 = sub_100393C74(), (v101 & 1) == 0))
        {
          v5 = v5;

          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v114, v115))
          {
            v182 = v6;
            v6 = swift_slowAlloc();
            v191 = swift_slowAlloc();
            *v6 = 136446466;
            v116 = *(v183 + 40);
            v192 = *(v183 + 24);
            v193[0] = v116;
            *(v193 + 14) = *(v183 + 54);
            sub_100009DAC(&v192, v190);
            v117 = sub_1000063E8();
            v119 = v118;
            sub_1005812D4(&v192);
            v120 = sub_10000668C(v117, v119, &v191);
            v119, v121, v122, v123, v124, v125, v126, v127;
            *(v6 + 4) = v120;
            *(v6 + 12) = 2080;
            v128 = [v5 description];
            v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v131 = v130;

            v132 = v129;
            v8 = v176;
            v133 = sub_10000668C(v132, v131, &v191);
            v131, v134, v135, v136, v137, v138, v139, v140;
            *(v6 + 14) = v133;
            _os_log_impl(&_mh_execute_header, v114, v115, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v6, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v61 = v184;
          goto LABEL_52;
        }

        v181 = v6;
        v102 = *(*(v8 + 56) + 8 * v100);
        v103 = v184[7];
        if (!*(v103 + 16))
        {
          v141 = v102;
LABEL_48:
          v5 = v5;
          v6 = v183;

          v142 = Logger.logObject.getter();
          v143 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v142, v143))
          {
            v144 = swift_slowAlloc();
            v191 = swift_slowAlloc();
            *v144 = 136446466;
            v145 = *(v183 + 40);
            v194 = *(v183 + 24);
            v195[0] = v145;
            *(v195 + 14) = *(v183 + 54);
            sub_100009DAC(&v194, v190);
            v175 = v143;
            v146 = sub_1000063E8();
            v148 = v147;
            sub_1005812D4(&v194);
            v149 = sub_10000668C(v146, v148, &v191);
            v148, v150, v151, v152, v153, v154, v155, v156;
            *(v144 + 4) = v149;
            *(v144 + 12) = 2080;
            v157 = [v5 description];
            v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v6 = v159;

            v160 = sub_10000668C(v158, v6, &v191);
            v6, v161, v162, v163, v164, v165, v166, v167;
            *(v144 + 14) = v160;
            _os_log_impl(&_mh_execute_header, v142, v175, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v144, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v61 = v184;
          v8 = v176;
LABEL_52:
          v9 = v177;
          goto LABEL_53;
        }

        v104 = v5;
        v6 = v102;

        sub_10002B924(v104);
        v106 = v105;

        v103, v107, v108, v109, v110, v111, v112, v113;
        if ((v106 & 1) == 0)
        {
          goto LABEL_48;
        }

        v61 = v184;
        v8 = v176;
LABEL_53:
        ++v76;
        v17 = v196;
      }

      while (v186 != v9);
    }

    v17, v69, v70, v71, v72, v73, v74, v75;
    v8, v168, v169, v170, v171, v172, v173, v174;
  }
}

void sub_10065DE60(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v10 = *(v3 + 72);
  v212[0] = a2;
  v210 = v212;
  v211 = v10;

  v16 = sub_100759CB4(sub_1006AF758, v209, a1, v11, v12, v13, v14, v15);
  if (!v4)
  {
    v17 = v16;
    v201 = v3;
    if (qword_100936008 != -1)
    {
      goto LABEL_63;
    }

LABEL_3:
    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_100945730);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    v8, v21, v22, v23, v24, v25, v26, v27;
    v28 = os_log_type_enabled(v19, v20);
    v29 = v17 >> 62;
    v206 = v6;
    v218 = v17;
    v202 = v17 >> 62;
    if (v28)
    {
      v5 = swift_slowAlloc();
      v212[0] = swift_slowAlloc();
      *v5 = 136446978;
      *(v5 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v212);
      *(v5 + 6) = 2048;
      if (!v29)
      {
        v37 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_66;
    }

    v17, v51, v52, v53, v54, v55, v56, v57;
    while (1)
    {
      v8 = v201;
      v58 = v29 ? _CocoaArrayWrapper.endIndex.getter() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = &_swiftEmptyArrayStorage;
      if (!v58)
      {
        break;
      }

      v212[0] = &_swiftEmptyArrayStorage;
      v19 = v212;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v58 & 0x8000000000000000) == 0)
      {
        v8 = 0;
        v59 = v17 & 0xC000000000000001;
        v207 = v17 & 0xFFFFFFFFFFFFFF8;
        v9 = off_1008D4120;
        while (1)
        {
          v6 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v59)
          {
            v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v8 >= *(v207 + 16))
            {
              goto LABEL_61;
            }

            v60 = *&v17->clientIdentity[8 * v8 + 16];
          }

          v61 = v60;
          sub_1005E3810([v60 remObjectID], &qword_1009399F0, off_1008D4120);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v5 = *(v212[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v8;
          v17 = v218;
          if (v6 == v58)
          {
            v6 = v212[0];
            v8 = v201;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_66:
      v37 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v5 + 14) = v37;
      v17, v30, v31, v32, v33, v34, v35, v36;
      *(v5 + 11) = 2082;
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      v38 = [swift_getObjCClassFromMetadata() description];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = v39;
      v17 = v218;
      v43 = sub_10000668C(v42, v41, v212);
      v41, v44, v45, v46, v47, v48, v49, v50;
      *(v5 + 3) = v43;
      *(v5 + 16) = 2082;
      *(v5 + 34) = sub_10000668C(v9, v8, v212);
      _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v5, 0x2Au);
      swift_arrayDestroy();

      v29 = v202;
    }

LABEL_20:
    v62 = v206;
    v9 = sub_1006666A4(v6, v206);
    v6, v63, v64, v65, v66, v67, v68, v69;
    if (v202)
    {
      v70 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v70 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    swift_beginAccess();
    if (v70)
    {
      v78 = 0;
      v199 = v17 & 0xFFFFFFFFFFFFFF8;
      v200 = v17 & 0xC000000000000001;
      v197 = v9;
      v198 = v70;
      do
      {
        if (v200)
        {
          v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v80 = v78 + 1;
          if (__OFADD__(v78, 1))
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v78 >= *(v199 + 16))
          {
            goto LABEL_62;
          }

          v79 = *&v17->clientIdentity[8 * v78 + 16];
          v80 = v78 + 1;
          if (__OFADD__(v78, 1))
          {
LABEL_57:
            __break(1u);
            break;
          }
        }

        v208 = v80;
        v6 = v79;
        v81 = sub_1005E3810([(RDXPCStorePerformer *)v6 remObjectID], &qword_1009399F0, off_1008D4120);

        v82 = *&v62->clientIdentity[32];
        if ((v82 & 0xC000000000000001) != 0)
        {
          v203 = v78;
          v83 = v9;
          v84 = v8;
          v85 = v6;
          v86 = v81;

          v87 = __CocoaDictionary.lookup(_:)();
          if (!v87)
          {
            goto LABEL_35;
          }

          v213 = v87;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v88 = v212[0];
        }

        else
        {
          if (!*(v82 + 16))
          {
            v88 = 0;
            goto LABEL_37;
          }

          v203 = v78;
          v83 = v9;
          v84 = v8;
          v85 = v6;
          v86 = v81;

          v89 = sub_10002B924(v86);
          if ((v90 & 1) == 0)
          {
LABEL_35:

            v82, v98, v99, v100, v101, v102, v103, v104;
            v88 = 0;
            goto LABEL_36;
          }

          v88 = *(*(v82 + 56) + 8 * v89);
        }

        v82, v91, v92, v93, v94, v95, v96, v97;
LABEL_36:
        v6 = v85;
        v8 = v84;
        v9 = v83;
        v78 = v203;
LABEL_37:

        if (!v9[2] || (v105 = sub_100393C74(), (v106 & 1) == 0))
        {
          v5 = v81;

          v132 = Logger.logObject.getter();
          v133 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v132, v133))
          {
            v205 = v6;
            v6 = swift_slowAlloc();
            v213 = swift_slowAlloc();
            LODWORD(v6->super.isa) = 136446466;
            v134 = *(v8 + 40);
            v214 = *(v8 + 24);
            v215[0] = v134;
            *(v215 + 14) = *(v8 + 54);
            sub_100009DAC(&v214, v212);
            v135 = sub_1000063E8();
            v137 = v136;
            sub_1005812D4(&v214);
            v138 = sub_10000668C(v135, v137, &v213);
            v137, v139, v140, v141, v142, v143, v144, v145;
            *(&v6->super.isa + 4) = v138;
            *&v6->storeController[4] = 2080;
            v146 = [v5 description];
            v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v149 = v148;

            v150 = v147;
            v8 = v201;
            v151 = sub_10000668C(v150, v149, &v213);
            v152 = v149;
            v17 = v218;
            v152, v153, v154, v155, v156, v157, v158, v159;
            *&v6->storeController[6] = v151;
            _os_log_impl(&_mh_execute_header, v132, v133, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v6, 0x16u);
            swift_arrayDestroy();

            v160 = v205;
            goto LABEL_51;
          }

LABEL_52:
          v62 = v206;
          v9 = v197;
          goto LABEL_53;
        }

        v204 = v6;
        v107 = *(&v9[7]->isa + v105);
        v6 = *&v206->clientIdentity[40];
        v108 = *v6->clientIdentity;
        v5 = v81;
        v196 = v107;
        if (!v108)
        {
          goto LABEL_47;
        }

        v109 = sub_10002B924(v5);
        if ((v110 & 1) == 0)
        {
          v6, v110, v111, v112, v113, v114, v115, v116;
LABEL_47:

          v161 = Logger.logObject.getter();
          v162 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v161, v162))
          {
            v163 = swift_slowAlloc();
            v213 = swift_slowAlloc();
            *v163 = 136446466;
            v164 = *(v8 + 40);
            v216 = *(v8 + 24);
            v217[0] = v164;
            *(v217 + 14) = *(v8 + 54);
            sub_100009DAC(&v216, v212);
            v195 = v162;
            v165 = sub_1000063E8();
            v167 = v166;
            sub_1005812D4(&v216);
            v168 = sub_10000668C(v165, v167, &v213);
            v167, v169, v170, v171, v172, v173, v174, v175;
            *(v163 + 4) = v168;
            *(v163 + 12) = 2080;
            v176 = [v5 description];
            v177 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v6 = v178;

            v179 = v177;
            v17 = v218;
            v180 = sub_10000668C(v179, v6, &v213);
            v6, v181, v182, v183, v184, v185, v186, v187;
            *(v163 + 14) = v180;
            _os_log_impl(&_mh_execute_header, v161, v195, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v163, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v160 = v196;
LABEL_51:

          goto LABEL_52;
        }

        v117 = *(*&v6->clientIdentity[40] + 8 * v109);

        v6, v118, v119, v120, v121, v122, v123, v124;

        v6 = v196;
        sub_1002FF0BC(v196, v117);

        v117, v125, v126, v127, v128, v129, v130, v131;
        v62 = v206;
LABEL_53:
        ++v78;
      }

      while (v208 != v198);
    }

    v17, v71, v72, v73, v74, v75, v76, v77;
    v9, v188, v189, v190, v191, v192, v193, v194;
  }
}

uint64_t sub_10065E91C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v181 = a2;
  v176 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v179 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_82;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v183 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v182[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v183 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v182[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v181;
          if (v182[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v181;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v179;
        goto LABEL_36;
      }
    }

    v6 = v179;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100366688(0, (*v179->clientIdentity + 1), 1, v179);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_100366688((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v182[3] = sub_1000F5104(&qword_10094F3B0, &qword_1007B4F48);
  v182[0] = v6;
  sub_1000F5104(&qword_10094F3B8, &unk_1007B4F50);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v178;
  if (v178)
  {
    v6, v65, v66, v67, v68, v69, v70, v71;
    sub_10000607C(v182);
    return v5;
  }

  else
  {
    v73 = v6;
    sub_10000607C(v182);
    v74 = v183;
    v75 = *(v183 + 16);
    if (v75)
    {
      sub_1000F5104(&unk_10094F3C0, &qword_1007A3F78);
      v76 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v76 = _swiftEmptyDictionarySingleton;
    }

    v182[0] = v76;

    sub_10067AE04(v77, 1, v182, v78, v79, v80, v81, v82);
    v73, v83, v84, v85, v86, v87, v88, v89;
    v5 = v182[0];

    v91 = sub_1001A5E78(v90);
    v176, v92, v93, v94, v95, v96, v97, v98;
    if (v75)
    {
      v182[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v106 = 32;
      do
      {
        v107 = *(&v74->super.isa + v106);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v106 += 16;
        --v75;
      }

      while (v75);
      v74, v108, v109, v110, v111, v112, v113, v114;
      v115 = v182[0];
    }

    else
    {
      v74, v99, v100, v101, v102, v103, v104, v105;
      v115 = &_swiftEmptyArrayStorage;
    }

    a2 = sub_10019CA44(v115, v91);
    v115, v116, v117, v118, v119, v120, v121, v122;
    if (qword_100936008 != -1)
    {
      goto LABEL_84;
    }

    while (1)
    {
      v123 = type metadata accessor for Logger();
      sub_100006654(v123, qword_100945730);

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 134217984;
        *(v126 + 4) = a2[2];

        _os_log_impl(&_mh_execute_header, v124, v125, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v126, 0xCu);

        v127 = a2[2];
        if (!v127)
        {
          goto LABEL_52;
        }
      }

      else
      {

        v127 = a2[2];
        if (!v127)
        {
LABEL_52:

          return v5;
        }
      }

      v128 = sub_100368B70(v127, 0);
      a2 = sub_10027DC58();
      sub_10001B860(v182[0]);
      if (a2 != v127)
      {
        break;
      }

      v129 = sub_10066D1B8(v128, v181[4]);

      if (v2)
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182[0] = v5;
      sub_100698228(v129, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v182);
      v129, v131, v132, v133, v134, v135, v136, v137;
      v177 = v182[0];
      v138 = v129 + 64;
      v139 = 1 << *(v129 + 32);
      v140 = -1;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      v2 = v140 & *(v129 + 64);
      v5 = (v139 + 63) >> 6;

      v141 = 0;
      v180 = v129;
      while (v2)
      {
LABEL_65:
        v145 = (v141 << 9) | (8 * __clz(__rbit64(v2)));
        a2 = *(*(v129 + 48) + v145);
        v146 = *(*(v129 + 56) + v145);
        swift_beginAccess();
        v147 = v181[5];
        if ((v147 & 0xC000000000000001) != 0)
        {
          if (v147 >= 0)
          {
            v147 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v148 = v146;
          v149 = a2;
          v150 = __CocoaDictionary.count.getter();
          if (__OFADD__(v150, 1))
          {
            goto LABEL_87;
          }

          v151 = v181;
          v181[5] = sub_10021CDBC(v147, v150 + 1);
        }

        else
        {
          v152 = v146;
          v153 = a2;
          v151 = v181;
        }

        v154 = swift_isUniquelyReferenced_nonNull_native();
        v183 = v151[5];
        v155 = v183;
        v151[5] = 0x8000000000000000;
        v156 = sub_10002B924(a2);
        v158 = *(v155 + 16);
        v159 = (v157 & 1) == 0;
        v160 = __OFADD__(v158, v159);
        v161 = v158 + v159;
        if (v160)
        {
          __break(1u);
          goto LABEL_86;
        }

        v162 = v157;
        if (*(v155 + 24) >= v161)
        {
          if ((v154 & 1) == 0)
          {
            v168 = v156;
            sub_100374768();
            v156 = v168;
          }
        }

        else
        {
          sub_10036CA94(v161, v154);
          v156 = sub_10002B924(a2);
          if ((v162 & 1) != (v163 & 1))
          {
            goto LABEL_89;
          }
        }

        v129 = v180;
        v164 = v183;
        if (v162)
        {
          v142 = *(v183 + 56);
          v143 = *(v142 + 8 * v156);
          *(v142 + 8 * v156) = v146;
        }

        else
        {
          *(v183 + 8 * (v156 >> 6) + 64) |= 1 << v156;
          *(v164[6] + 8 * v156) = a2;
          *(v164[7] + 8 * v156) = v146;
          v165 = v164[2];
          v160 = __OFADD__(v165, 1);
          v166 = v165 + 1;
          if (v160)
          {
            goto LABEL_88;
          }

          v164[2] = v166;
          v167 = a2;
        }

        v2 &= v2 - 1;
        v181[5] = v164;
        swift_endAccess();
      }

      while (1)
      {
        v144 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          break;
        }

        if (v144 >= v5)
        {

          v129, v169, v170, v171, v172, v173, v174, v175;
          return v177;
        }

        v2 = *(v138 + 8 * v144);
        ++v141;
        if (v2)
        {
          v141 = v144;
          goto LABEL_65;
        }
      }

LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_89:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10065F214(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v181 = a2;
  v176 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v179 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_82;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v183 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v182[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v183 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v182[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v181;
          if (v182[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v181;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v179;
        goto LABEL_36;
      }
    }

    v6 = v179;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003666AC(0, (*v179->clientIdentity + 1), 1, v179);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_1003666AC((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v182[3] = sub_1000F5104(&qword_10094F120, &qword_1007B4D28);
  v182[0] = v6;
  sub_1000F5104(&qword_10094F128, &unk_1007B4D30);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v178;
  if (v178)
  {
    v6, v65, v66, v67, v68, v69, v70, v71;
    sub_10000607C(v182);
    return v5;
  }

  else
  {
    v73 = v6;
    sub_10000607C(v182);
    v74 = v183;
    v75 = *(v183 + 16);
    if (v75)
    {
      sub_1000F5104(&qword_100943280, &qword_1007A3C68);
      v76 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v76 = _swiftEmptyDictionarySingleton;
    }

    v182[0] = v76;

    sub_10067B184(v77, 1, v182, v78, v79, v80, v81, v82);
    v73, v83, v84, v85, v86, v87, v88, v89;
    v5 = v182[0];

    v91 = sub_1001A5EA8(v90);
    v176, v92, v93, v94, v95, v96, v97, v98;
    if (v75)
    {
      v182[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v106 = 32;
      do
      {
        v107 = *(&v74->super.isa + v106);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v106 += 16;
        --v75;
      }

      while (v75);
      v74, v108, v109, v110, v111, v112, v113, v114;
      v115 = v182[0];
    }

    else
    {
      v74, v99, v100, v101, v102, v103, v104, v105;
      v115 = &_swiftEmptyArrayStorage;
    }

    a2 = sub_10019CAAC(v115, v91);
    v115, v116, v117, v118, v119, v120, v121, v122;
    if (qword_100936008 != -1)
    {
      goto LABEL_84;
    }

    while (1)
    {
      v123 = type metadata accessor for Logger();
      sub_100006654(v123, qword_100945730);

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 134217984;
        *(v126 + 4) = a2[2];

        _os_log_impl(&_mh_execute_header, v124, v125, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v126, 0xCu);

        v127 = a2[2];
        if (!v127)
        {
          goto LABEL_52;
        }
      }

      else
      {

        v127 = a2[2];
        if (!v127)
        {
LABEL_52:

          return v5;
        }
      }

      v128 = sub_100368B84(v127, 0);
      a2 = sub_10027DC58();
      sub_10001B860(v182[0]);
      if (a2 != v127)
      {
        break;
      }

      v129 = sub_1006A772C(v128);

      if (v2)
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182[0] = v5;
      sub_1006A7A4C(v129, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v182);
      v129, v131, v132, v133, v134, v135, v136, v137;
      v177 = v182[0];
      v138 = v129 + 64;
      v139 = 1 << *(v129 + 32);
      v140 = -1;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      v2 = v140 & *(v129 + 64);
      v5 = (v139 + 63) >> 6;

      v141 = 0;
      v180 = v129;
      while (v2)
      {
LABEL_65:
        v145 = (v141 << 9) | (8 * __clz(__rbit64(v2)));
        a2 = *(*(v129 + 48) + v145);
        v146 = *(*(v129 + 56) + v145);
        swift_beginAccess();
        v147 = v181[5];
        if ((v147 & 0xC000000000000001) != 0)
        {
          if (v147 >= 0)
          {
            v147 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v148 = v146;
          v149 = a2;
          v150 = __CocoaDictionary.count.getter();
          if (__OFADD__(v150, 1))
          {
            goto LABEL_87;
          }

          v151 = v181;
          v181[5] = sub_10021CDBC(v147, v150 + 1);
        }

        else
        {
          v152 = v146;
          v153 = a2;
          v151 = v181;
        }

        v154 = swift_isUniquelyReferenced_nonNull_native();
        v183 = v151[5];
        v155 = v183;
        v151[5] = 0x8000000000000000;
        v156 = sub_10002B924(a2);
        v158 = *(v155 + 16);
        v159 = (v157 & 1) == 0;
        v160 = __OFADD__(v158, v159);
        v161 = v158 + v159;
        if (v160)
        {
          __break(1u);
          goto LABEL_86;
        }

        v162 = v157;
        if (*(v155 + 24) >= v161)
        {
          if ((v154 & 1) == 0)
          {
            v168 = v156;
            sub_100374768();
            v156 = v168;
          }
        }

        else
        {
          sub_10036CA94(v161, v154);
          v156 = sub_10002B924(a2);
          if ((v162 & 1) != (v163 & 1))
          {
            goto LABEL_89;
          }
        }

        v129 = v180;
        v164 = v183;
        if (v162)
        {
          v142 = *(v183 + 56);
          v143 = *(v142 + 8 * v156);
          *(v142 + 8 * v156) = v146;
        }

        else
        {
          *(v183 + 8 * (v156 >> 6) + 64) |= 1 << v156;
          *(v164[6] + 8 * v156) = a2;
          *(v164[7] + 8 * v156) = v146;
          v165 = v164[2];
          v160 = __OFADD__(v165, 1);
          v166 = v165 + 1;
          if (v160)
          {
            goto LABEL_88;
          }

          v164[2] = v166;
          v167 = a2;
        }

        v2 &= v2 - 1;
        v181[5] = v164;
        swift_endAccess();
      }

      while (1)
      {
        v144 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          break;
        }

        if (v144 >= v5)
        {

          v129, v169, v170, v171, v172, v173, v174, v175;
          return v177;
        }

        v2 = *(v138 + 8 * v144);
        ++v141;
        if (v2)
        {
          v141 = v144;
          goto LABEL_65;
        }
      }

LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_89:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10065FB04(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v181 = a2;
  v176 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v179 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_82;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v183 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v182[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v183 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v182[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v181;
          if (v182[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v181;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v179;
        goto LABEL_36;
      }
    }

    v6 = v179;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_10036673C(0, (*v179->clientIdentity + 1), 1, v179);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_10036673C((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v182[3] = sub_1000F5104(&qword_10094F550, &qword_1007B5080);
  v182[0] = v6;
  sub_1000F5104(&qword_10094F558, &unk_1007B5088);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v178;
  if (v178)
  {
    v6, v65, v66, v67, v68, v69, v70, v71;
    sub_10000607C(v182);
    return v5;
  }

  else
  {
    v73 = v6;
    sub_10000607C(v182);
    v74 = v183;
    v75 = *(v183 + 16);
    if (v75)
    {
      sub_1000F5104(&qword_100943850, &qword_1007A4130);
      v76 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v76 = _swiftEmptyDictionarySingleton;
    }

    v182[0] = v76;

    sub_10067B504(v77, 1, v182, v78, v79, v80, v81, v82);
    v73, v83, v84, v85, v86, v87, v88, v89;
    v5 = v182[0];

    v91 = sub_1001A5FAC(v90);
    v176, v92, v93, v94, v95, v96, v97, v98;
    if (v75)
    {
      v182[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v106 = 32;
      do
      {
        v107 = *(&v74->super.isa + v106);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v106 += 16;
        --v75;
      }

      while (v75);
      v74, v108, v109, v110, v111, v112, v113, v114;
      v115 = v182[0];
    }

    else
    {
      v74, v99, v100, v101, v102, v103, v104, v105;
      v115 = &_swiftEmptyArrayStorage;
    }

    a2 = sub_10019D578(v115, v91);
    v115, v116, v117, v118, v119, v120, v121, v122;
    if (qword_100936008 != -1)
    {
      goto LABEL_84;
    }

    while (1)
    {
      v123 = type metadata accessor for Logger();
      sub_100006654(v123, qword_100945730);

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 134217984;
        *(v126 + 4) = a2[2];

        _os_log_impl(&_mh_execute_header, v124, v125, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v126, 0xCu);

        v127 = a2[2];
        if (!v127)
        {
          goto LABEL_52;
        }
      }

      else
      {

        v127 = a2[2];
        if (!v127)
        {
LABEL_52:

          return v5;
        }
      }

      v128 = sub_100368B98(v127, 0);
      a2 = sub_10027DC58();
      sub_10001B860(v182[0]);
      if (a2 != v127)
      {
        break;
      }

      v129 = sub_10066D564(v128, v181[4]);

      if (v2)
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182[0] = v5;
      sub_100698498(v129, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v182);
      v129, v131, v132, v133, v134, v135, v136, v137;
      v177 = v182[0];
      v138 = &v129->storeProvider[2];
      v139 = 1 << v129->clientIdentity[16];
      v140 = -1;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      v2 = v140 & *&v129->storeProvider[2];
      v5 = (v139 + 63) >> 6;

      v141 = 0;
      v180 = v129;
      while (v2)
      {
LABEL_65:
        v145 = (v141 << 9) | (8 * __clz(__rbit64(v2)));
        a2 = *(*&v129->clientIdentity[32] + v145);
        v146 = *(*&v129->clientIdentity[40] + v145);
        swift_beginAccess();
        v147 = v181[5];
        if ((v147 & 0xC000000000000001) != 0)
        {
          if (v147 >= 0)
          {
            v147 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v148 = v146;
          v149 = a2;
          v150 = __CocoaDictionary.count.getter();
          if (__OFADD__(v150, 1))
          {
            goto LABEL_87;
          }

          v151 = v181;
          v181[5] = sub_10021CDBC(v147, v150 + 1);
        }

        else
        {
          v152 = v146;
          v153 = a2;
          v151 = v181;
        }

        v154 = swift_isUniquelyReferenced_nonNull_native();
        v183 = v151[5];
        v155 = v183;
        v151[5] = 0x8000000000000000;
        v156 = sub_10002B924(a2);
        v158 = *(v155 + 16);
        v159 = (v157 & 1) == 0;
        v160 = __OFADD__(v158, v159);
        v161 = v158 + v159;
        if (v160)
        {
          __break(1u);
          goto LABEL_86;
        }

        v162 = v157;
        if (*(v155 + 24) >= v161)
        {
          if ((v154 & 1) == 0)
          {
            v168 = v156;
            sub_100374768();
            v156 = v168;
          }
        }

        else
        {
          sub_10036CA94(v161, v154);
          v156 = sub_10002B924(a2);
          if ((v162 & 1) != (v163 & 1))
          {
            goto LABEL_89;
          }
        }

        v129 = v180;
        v164 = v183;
        if (v162)
        {
          v142 = *(v183 + 56);
          v143 = *(v142 + 8 * v156);
          *(v142 + 8 * v156) = v146;
        }

        else
        {
          *(v183 + 8 * (v156 >> 6) + 64) |= 1 << v156;
          *(v164[6] + 8 * v156) = a2;
          *(v164[7] + 8 * v156) = v146;
          v165 = v164[2];
          v160 = __OFADD__(v165, 1);
          v166 = v165 + 1;
          if (v160)
          {
            goto LABEL_88;
          }

          v164[2] = v166;
          v167 = a2;
        }

        v2 &= v2 - 1;
        v181[5] = v164;
        swift_endAccess();
      }

      while (1)
      {
        v144 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          break;
        }

        if (v144 >= v5)
        {

          v129, v169, v170, v171, v172, v173, v174, v175;
          return v177;
        }

        v2 = *&v138[8 * v144];
        ++v141;
        if (v2)
        {
          v141 = v144;
          goto LABEL_65;
        }
      }

LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_89:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1006603FC(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v181 = a2;
  v176 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v179 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_82;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v183 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v182[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v183 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v182[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v181;
          if (v182[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v181;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v179;
        goto LABEL_36;
      }
    }

    v6 = v179;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003667D0(0, (*v179->clientIdentity + 1), 1, v179);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_1003667D0((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v182[3] = sub_1000F5104(&qword_10094F2C0, &qword_1007B4E80);
  v182[0] = v6;
  sub_1000F5104(&qword_10094F2C8, &qword_1007B4E88);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v178;
  if (v178)
  {
    v6, v65, v66, v67, v68, v69, v70, v71;
    sub_10000607C(v182);
    return v5;
  }

  else
  {
    v73 = v6;
    sub_10000607C(v182);
    v74 = v183;
    v75 = *(v183 + 16);
    if (v75)
    {
      sub_1000F5104(&unk_10094F2D0, &unk_1007B4E90);
      v76 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v76 = _swiftEmptyDictionarySingleton;
    }

    v182[0] = v76;

    sub_10067B884(v77, 1, v182, v78, v79, v80, v81, v82);
    v73, v83, v84, v85, v86, v87, v88, v89;
    v5 = v182[0];

    v91 = sub_1001A600C(v90);
    v176, v92, v93, v94, v95, v96, v97, v98;
    if (v75)
    {
      v182[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v106 = 32;
      do
      {
        v107 = *(&v74->super.isa + v106);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v106 += 16;
        --v75;
      }

      while (v75);
      v74, v108, v109, v110, v111, v112, v113, v114;
      v115 = v182[0];
    }

    else
    {
      v74, v99, v100, v101, v102, v103, v104, v105;
      v115 = &_swiftEmptyArrayStorage;
    }

    a2 = sub_10019D5E0(v115, v91);
    v115, v116, v117, v118, v119, v120, v121, v122;
    if (qword_100936008 != -1)
    {
      goto LABEL_84;
    }

    while (1)
    {
      v123 = type metadata accessor for Logger();
      sub_100006654(v123, qword_100945730);

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 134217984;
        *(v126 + 4) = a2[2];

        _os_log_impl(&_mh_execute_header, v124, v125, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v126, 0xCu);

        v127 = a2[2];
        if (!v127)
        {
          goto LABEL_52;
        }
      }

      else
      {

        v127 = a2[2];
        if (!v127)
        {
LABEL_52:

          return v5;
        }
      }

      v128 = sub_100368BAC(v127, 0);
      a2 = sub_10027DC58();
      sub_10001B860(v182[0]);
      if (a2 != v127)
      {
        break;
      }

      v129 = sub_10066D920(v128, v181[4]);

      if (v2)
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182[0] = v5;
      sub_100698708(v129, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v182);
      v129, v131, v132, v133, v134, v135, v136, v137;
      v177 = v182[0];
      v138 = &v129->storeProvider[2];
      v139 = 1 << v129->clientIdentity[16];
      v140 = -1;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      v2 = v140 & *&v129->storeProvider[2];
      v5 = (v139 + 63) >> 6;

      v141 = 0;
      v180 = v129;
      while (v2)
      {
LABEL_65:
        v145 = (v141 << 9) | (8 * __clz(__rbit64(v2)));
        a2 = *(*&v129->clientIdentity[32] + v145);
        v146 = *(*&v129->clientIdentity[40] + v145);
        swift_beginAccess();
        v147 = v181[5];
        if ((v147 & 0xC000000000000001) != 0)
        {
          if (v147 >= 0)
          {
            v147 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v148 = v146;
          v149 = a2;
          v150 = __CocoaDictionary.count.getter();
          if (__OFADD__(v150, 1))
          {
            goto LABEL_87;
          }

          v151 = v181;
          v181[5] = sub_10021CDBC(v147, v150 + 1);
        }

        else
        {
          v152 = v146;
          v153 = a2;
          v151 = v181;
        }

        v154 = swift_isUniquelyReferenced_nonNull_native();
        v183 = v151[5];
        v155 = v183;
        v151[5] = 0x8000000000000000;
        v156 = sub_10002B924(a2);
        v158 = *(v155 + 16);
        v159 = (v157 & 1) == 0;
        v160 = __OFADD__(v158, v159);
        v161 = v158 + v159;
        if (v160)
        {
          __break(1u);
          goto LABEL_86;
        }

        v162 = v157;
        if (*(v155 + 24) >= v161)
        {
          if ((v154 & 1) == 0)
          {
            v168 = v156;
            sub_100374768();
            v156 = v168;
          }
        }

        else
        {
          sub_10036CA94(v161, v154);
          v156 = sub_10002B924(a2);
          if ((v162 & 1) != (v163 & 1))
          {
            goto LABEL_89;
          }
        }

        v129 = v180;
        v164 = v183;
        if (v162)
        {
          v142 = *(v183 + 56);
          v143 = *(v142 + 8 * v156);
          *(v142 + 8 * v156) = v146;
        }

        else
        {
          *(v183 + 8 * (v156 >> 6) + 64) |= 1 << v156;
          *(v164[6] + 8 * v156) = a2;
          *(v164[7] + 8 * v156) = v146;
          v165 = v164[2];
          v160 = __OFADD__(v165, 1);
          v166 = v165 + 1;
          if (v160)
          {
            goto LABEL_88;
          }

          v164[2] = v166;
          v167 = a2;
        }

        v2 &= v2 - 1;
        v181[5] = v164;
        swift_endAccess();
      }

      while (1)
      {
        v144 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          break;
        }

        if (v144 >= v5)
        {

          v129, v169, v170, v171, v172, v173, v174, v175;
          return v177;
        }

        v2 = *&v138[8 * v144];
        ++v141;
        if (v2)
        {
          v141 = v144;
          goto LABEL_65;
        }
      }

LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_89:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100660CF4(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v181 = a2;
  v176 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v179 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_82;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v183 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v182[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v183 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v182[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v181;
          if (v182[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v181;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v179;
        goto LABEL_36;
      }
    }

    v6 = v179;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100366864(0, (*v179->clientIdentity + 1), 1, v179);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_100366864((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v182[3] = sub_1000F5104(&qword_10094F7D8, &qword_1007B51D8);
  v182[0] = v6;
  sub_1000F5104(&unk_10094F7E0, &qword_1007B51E0);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v178;
  if (v178)
  {
    v6, v65, v66, v67, v68, v69, v70, v71;
    sub_10000607C(v182);
    return v5;
  }

  else
  {
    v73 = v6;
    sub_10000607C(v182);
    v74 = v183;
    v75 = *(v183 + 16);
    if (v75)
    {
      sub_1000F5104(&qword_100943BC8, &qword_1007A4410);
      v76 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v76 = _swiftEmptyDictionarySingleton;
    }

    v182[0] = v76;

    sub_10067BC04(v77, 1, v182, v78, v79, v80, v81, v82);
    v73, v83, v84, v85, v86, v87, v88, v89;
    v5 = v182[0];

    v91 = sub_1001A609C(v90);
    v176, v92, v93, v94, v95, v96, v97, v98;
    if (v75)
    {
      v182[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v106 = 32;
      do
      {
        v107 = *(&v74->super.isa + v106);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v106 += 16;
        --v75;
      }

      while (v75);
      v74, v108, v109, v110, v111, v112, v113, v114;
      v115 = v182[0];
    }

    else
    {
      v74, v99, v100, v101, v102, v103, v104, v105;
      v115 = &_swiftEmptyArrayStorage;
    }

    a2 = sub_10019D648(v115, v91);
    v115, v116, v117, v118, v119, v120, v121, v122;
    if (qword_100936008 != -1)
    {
      goto LABEL_84;
    }

    while (1)
    {
      v123 = type metadata accessor for Logger();
      sub_100006654(v123, qword_100945730);

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 134217984;
        *(v126 + 4) = a2[2];

        _os_log_impl(&_mh_execute_header, v124, v125, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v126, 0xCu);

        v127 = a2[2];
        if (!v127)
        {
          goto LABEL_52;
        }
      }

      else
      {

        v127 = a2[2];
        if (!v127)
        {
LABEL_52:

          return v5;
        }
      }

      v128 = sub_100368BC0(v127, 0);
      a2 = sub_10027DC58();
      sub_10001B860(v182[0]);
      if (a2 != v127)
      {
        break;
      }

      v129 = sub_10066DCCC(v128, v181[4]);

      if (v2)
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182[0] = v5;
      sub_100698978(v129, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v182);
      v129, v131, v132, v133, v134, v135, v136, v137;
      v177 = v182[0];
      v138 = &v129->storeProvider[2];
      v139 = 1 << v129->clientIdentity[16];
      v140 = -1;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      v2 = v140 & *&v129->storeProvider[2];
      v5 = (v139 + 63) >> 6;

      v141 = 0;
      v180 = v129;
      while (v2)
      {
LABEL_65:
        v145 = (v141 << 9) | (8 * __clz(__rbit64(v2)));
        a2 = *(*&v129->clientIdentity[32] + v145);
        v146 = *(*&v129->clientIdentity[40] + v145);
        swift_beginAccess();
        v147 = v181[5];
        if ((v147 & 0xC000000000000001) != 0)
        {
          if (v147 >= 0)
          {
            v147 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v148 = v146;
          v149 = a2;
          v150 = __CocoaDictionary.count.getter();
          if (__OFADD__(v150, 1))
          {
            goto LABEL_87;
          }

          v151 = v181;
          v181[5] = sub_10021CDBC(v147, v150 + 1);
        }

        else
        {
          v152 = v146;
          v153 = a2;
          v151 = v181;
        }

        v154 = swift_isUniquelyReferenced_nonNull_native();
        v183 = v151[5];
        v155 = v183;
        v151[5] = 0x8000000000000000;
        v156 = sub_10002B924(a2);
        v158 = *(v155 + 16);
        v159 = (v157 & 1) == 0;
        v160 = __OFADD__(v158, v159);
        v161 = v158 + v159;
        if (v160)
        {
          __break(1u);
          goto LABEL_86;
        }

        v162 = v157;
        if (*(v155 + 24) >= v161)
        {
          if ((v154 & 1) == 0)
          {
            v168 = v156;
            sub_100374768();
            v156 = v168;
          }
        }

        else
        {
          sub_10036CA94(v161, v154);
          v156 = sub_10002B924(a2);
          if ((v162 & 1) != (v163 & 1))
          {
            goto LABEL_89;
          }
        }

        v129 = v180;
        v164 = v183;
        if (v162)
        {
          v142 = *(v183 + 56);
          v143 = *(v142 + 8 * v156);
          *(v142 + 8 * v156) = v146;
        }

        else
        {
          *(v183 + 8 * (v156 >> 6) + 64) |= 1 << v156;
          *(v164[6] + 8 * v156) = a2;
          *(v164[7] + 8 * v156) = v146;
          v165 = v164[2];
          v160 = __OFADD__(v165, 1);
          v166 = v165 + 1;
          if (v160)
          {
            goto LABEL_88;
          }

          v164[2] = v166;
          v167 = a2;
        }

        v2 &= v2 - 1;
        v181[5] = v164;
        swift_endAccess();
      }

      while (1)
      {
        v144 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          break;
        }

        if (v144 >= v5)
        {

          v129, v169, v170, v171, v172, v173, v174, v175;
          return v177;
        }

        v2 = *&v138[8 * v144];
        ++v141;
        if (v2)
        {
          v141 = v144;
          goto LABEL_65;
        }
      }

LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_89:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1006615EC(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v181 = a2;
  v176 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v179 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_82;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v183 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v182[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v183 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v182[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v181;
          if (v182[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v181;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v179;
        goto LABEL_36;
      }
    }

    v6 = v179;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003668AC(0, (*v179->clientIdentity + 1), 1, v179);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_1003668AC((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v182[3] = sub_1000F5104(&qword_10094F790, &qword_1007B51B0);
  v182[0] = v6;
  sub_1000F5104(&qword_10094F798, &qword_1007B51B8);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v178;
  if (v178)
  {
    v6, v65, v66, v67, v68, v69, v70, v71;
    sub_10000607C(v182);
    return v5;
  }

  else
  {
    v73 = v6;
    sub_10000607C(v182);
    v74 = v183;
    v75 = *(v183 + 16);
    if (v75)
    {
      sub_1000F5104(&unk_10094F7A0, &qword_1007A43D0);
      v76 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v76 = _swiftEmptyDictionarySingleton;
    }

    v182[0] = v76;

    sub_10067BF84(v77, 1, v182, v78, v79, v80, v81, v82);
    v73, v83, v84, v85, v86, v87, v88, v89;
    v5 = v182[0];

    v91 = sub_1001A60CC(v90);
    v176, v92, v93, v94, v95, v96, v97, v98;
    if (v75)
    {
      v182[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v106 = 32;
      do
      {
        v107 = *(&v74->super.isa + v106);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v106 += 16;
        --v75;
      }

      while (v75);
      v74, v108, v109, v110, v111, v112, v113, v114;
      v115 = v182[0];
    }

    else
    {
      v74, v99, v100, v101, v102, v103, v104, v105;
      v115 = &_swiftEmptyArrayStorage;
    }

    a2 = sub_10019D6B0(v115, v91);
    v115, v116, v117, v118, v119, v120, v121, v122;
    if (qword_100936008 != -1)
    {
      goto LABEL_84;
    }

    while (1)
    {
      v123 = type metadata accessor for Logger();
      sub_100006654(v123, qword_100945730);

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 134217984;
        *(v126 + 4) = a2[2];

        _os_log_impl(&_mh_execute_header, v124, v125, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v126, 0xCu);

        v127 = a2[2];
        if (!v127)
        {
          goto LABEL_52;
        }
      }

      else
      {

        v127 = a2[2];
        if (!v127)
        {
LABEL_52:

          return v5;
        }
      }

      v128 = sub_100368BD4(v127, 0);
      a2 = sub_10027DC58();
      sub_10001B860(v182[0]);
      if (a2 != v127)
      {
        break;
      }

      v129 = sub_10066E088(v128, v181[4]);

      if (v2)
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182[0] = v5;
      sub_100698BE8(v129, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v182);
      v129, v131, v132, v133, v134, v135, v136, v137;
      v177 = v182[0];
      v138 = &v129->storeProvider[2];
      v139 = 1 << v129->clientIdentity[16];
      v140 = -1;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      v2 = v140 & *&v129->storeProvider[2];
      v5 = (v139 + 63) >> 6;

      v141 = 0;
      v180 = v129;
      while (v2)
      {
LABEL_65:
        v145 = (v141 << 9) | (8 * __clz(__rbit64(v2)));
        a2 = *(*&v129->clientIdentity[32] + v145);
        v146 = *(*&v129->clientIdentity[40] + v145);
        swift_beginAccess();
        v147 = v181[5];
        if ((v147 & 0xC000000000000001) != 0)
        {
          if (v147 >= 0)
          {
            v147 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v148 = v146;
          v149 = a2;
          v150 = __CocoaDictionary.count.getter();
          if (__OFADD__(v150, 1))
          {
            goto LABEL_87;
          }

          v151 = v181;
          v181[5] = sub_10021CDBC(v147, v150 + 1);
        }

        else
        {
          v152 = v146;
          v153 = a2;
          v151 = v181;
        }

        v154 = swift_isUniquelyReferenced_nonNull_native();
        v183 = v151[5];
        v155 = v183;
        v151[5] = 0x8000000000000000;
        v156 = sub_10002B924(a2);
        v158 = *(v155 + 16);
        v159 = (v157 & 1) == 0;
        v160 = __OFADD__(v158, v159);
        v161 = v158 + v159;
        if (v160)
        {
          __break(1u);
          goto LABEL_86;
        }

        v162 = v157;
        if (*(v155 + 24) >= v161)
        {
          if ((v154 & 1) == 0)
          {
            v168 = v156;
            sub_100374768();
            v156 = v168;
          }
        }

        else
        {
          sub_10036CA94(v161, v154);
          v156 = sub_10002B924(a2);
          if ((v162 & 1) != (v163 & 1))
          {
            goto LABEL_89;
          }
        }

        v129 = v180;
        v164 = v183;
        if (v162)
        {
          v142 = *(v183 + 56);
          v143 = *(v142 + 8 * v156);
          *(v142 + 8 * v156) = v146;
        }

        else
        {
          *(v183 + 8 * (v156 >> 6) + 64) |= 1 << v156;
          *(v164[6] + 8 * v156) = a2;
          *(v164[7] + 8 * v156) = v146;
          v165 = v164[2];
          v160 = __OFADD__(v165, 1);
          v166 = v165 + 1;
          if (v160)
          {
            goto LABEL_88;
          }

          v164[2] = v166;
          v167 = a2;
        }

        v2 &= v2 - 1;
        v181[5] = v164;
        swift_endAccess();
      }

      while (1)
      {
        v144 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          break;
        }

        if (v144 >= v5)
        {

          v129, v169, v170, v171, v172, v173, v174, v175;
          return v177;
        }

        v2 = *&v138[8 * v144];
        ++v141;
        if (v2)
        {
          v141 = v144;
          goto LABEL_65;
        }
      }

LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_89:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100661EE4(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = &_swiftEmptyArrayStorage;
  v181 = a2;
  v176 = a1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v179 = v6;
    v9 = v7;
    while (1)
    {
      if (v9 >= v5)
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_82;
      }

      v10 = *(v8 + 8 * v9);
      v11 = a2[6];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v2 = v10;

        v12 = __CocoaDictionary.lookup(_:)();

        if (!v12)
        {
          goto LABEL_16;
        }

        v183 = v12;
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v27 = v182[0];
      }

      else
      {
        v2 = *(v11 + 16);
        v28 = v10;
        if (!v2)
        {
          goto LABEL_17;
        }

        v29 = v28;

        v30 = sub_10002B924(v29);
        if ((v13 & 1) == 0)
        {
LABEL_16:
          v11, v13, v14, v15, v16, v17, v18, v19;
          goto LABEL_17;
        }

        v27 = *(*(v11 + 56) + 8 * v30);
      }

      v11, v20, v21, v22, v23, v24, v25, v26;
      if (v27)
      {
        break;
      }

LABEL_17:
      v31 = a2[5];
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v2 = a2[5];
        }

        else
        {
          v2 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v32 = v10;

        v33 = __CocoaDictionary.lookup(_:)();

        if (v33)
        {
          v183 = v33;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v27 = v182[0];
          v31, v41, v42, v43, v44, v45, v46, v47;
          a2 = v181;
          if (v182[0])
          {
            break;
          }
        }

        else
        {
          v31, v34, v35, v36, v37, v38, v39, v40;
          a2 = v181;
        }

        goto LABEL_5;
      }

      if (*(v31 + 16))
      {

        v48 = sub_10002B924(v10);
        if ((v49 & 1) == 0)
        {
          v31, v49, v50, v51, v52, v53, v54, v55;
          goto LABEL_5;
        }

        v27 = *(*(v31 + 56) + 8 * v48);
        v31, v56, v57, v58, v59, v60, v61, v62;
        if (v27)
        {
          break;
        }
      }

LABEL_5:

      ++v9;
      if (v7 == v5)
      {
        v6 = v179;
        goto LABEL_36;
      }
    }

    v6 = v179;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003668F4(0, (*v179->clientIdentity + 1), 1, v179);
    }

    v2 = *v6->clientIdentity;
    v63 = *&v6->clientIdentity[8];
    if (v2 >= v63 >> 1)
    {
      v6 = sub_1003668F4((v63 > 1), (v2 + 1), 1, v6);
    }

    *v6->clientIdentity = v2 + 1;
    v64 = v6 + 16 * v2;
    *(v64 + 4) = v10;
    *(v64 + 5) = v27;
  }

  while (v7 != v5);
LABEL_36:
  v182[3] = sub_1000F5104(&qword_10094F740, &qword_1007B5188);
  v182[0] = v6;
  sub_1000F5104(&qword_10094F748, &qword_1007B5190);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v178;
  if (v178)
  {
    v6, v65, v66, v67, v68, v69, v70, v71;
    sub_10000607C(v182);
    return v5;
  }

  else
  {
    v73 = v6;
    sub_10000607C(v182);
    v74 = v183;
    v75 = *(v183 + 16);
    if (v75)
    {
      sub_1000F5104(&unk_10094F750, &qword_1007A43A0);
      v76 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v76 = _swiftEmptyDictionarySingleton;
    }

    v182[0] = v76;

    sub_10067C304(v77, 1, v182, v78, v79, v80, v81, v82);
    v73, v83, v84, v85, v86, v87, v88, v89;
    v5 = v182[0];

    v91 = sub_1001A60FC(v90);
    v176, v92, v93, v94, v95, v96, v97, v98;
    if (v75)
    {
      v182[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v106 = 32;
      do
      {
        v107 = *(&v74->super.isa + v106);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v106 += 16;
        --v75;
      }

      while (v75);
      v74, v108, v109, v110, v111, v112, v113, v114;
      v115 = v182[0];
    }

    else
    {
      v74, v99, v100, v101, v102, v103, v104, v105;
      v115 = &_swiftEmptyArrayStorage;
    }

    a2 = sub_10019D718(v115, v91);
    v115, v116, v117, v118, v119, v120, v121, v122;
    if (qword_100936008 != -1)
    {
      goto LABEL_84;
    }

    while (1)
    {
      v123 = type metadata accessor for Logger();
      sub_100006654(v123, qword_100945730);

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 134217984;
        *(v126 + 4) = a2[2];

        _os_log_impl(&_mh_execute_header, v124, v125, "Fetching pending objects from database {cdPendingObjectIDs.count: %ld}", v126, 0xCu);

        v127 = a2[2];
        if (!v127)
        {
          goto LABEL_52;
        }
      }

      else
      {

        v127 = a2[2];
        if (!v127)
        {
LABEL_52:

          return v5;
        }
      }

      v128 = sub_100368BE8(v127, 0);
      a2 = sub_10027DC58();
      sub_10001B860(v182[0]);
      if (a2 != v127)
      {
        break;
      }

      v129 = sub_10066E444(v128, v181[4]);

      if (v2)
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182[0] = v5;
      sub_100698E58(v129, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v182);
      v129, v131, v132, v133, v134, v135, v136, v137;
      v177 = v182[0];
      v138 = &v129->storeProvider[2];
      v139 = 1 << v129->clientIdentity[16];
      v140 = -1;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      v2 = v140 & *&v129->storeProvider[2];
      v5 = (v139 + 63) >> 6;

      v141 = 0;
      v180 = v129;
      while (v2)
      {
LABEL_65:
        v145 = (v141 << 9) | (8 * __clz(__rbit64(v2)));
        a2 = *(*&v129->clientIdentity[32] + v145);
        v146 = *(*&v129->clientIdentity[40] + v145);
        swift_beginAccess();
        v147 = v181[5];
        if ((v147 & 0xC000000000000001) != 0)
        {
          if (v147 >= 0)
          {
            v147 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v148 = v146;
          v149 = a2;
          v150 = __CocoaDictionary.count.getter();
          if (__OFADD__(v150, 1))
          {
            goto LABEL_87;
          }

          v151 = v181;
          v181[5] = sub_10021CDBC(v147, v150 + 1);
        }

        else
        {
          v152 = v146;
          v153 = a2;
          v151 = v181;
        }

        v154 = swift_isUniquelyReferenced_nonNull_native();
        v183 = v151[5];
        v155 = v183;
        v151[5] = 0x8000000000000000;
        v156 = sub_10002B924(a2);
        v158 = *(v155 + 16);
        v159 = (v157 & 1) == 0;
        v160 = __OFADD__(v158, v159);
        v161 = v158 + v159;
        if (v160)
        {
          __break(1u);
          goto LABEL_86;
        }

        v162 = v157;
        if (*(v155 + 24) >= v161)
        {
          if ((v154 & 1) == 0)
          {
            v168 = v156;
            sub_100374768();
            v156 = v168;
          }
        }

        else
        {
          sub_10036CA94(v161, v154);
          v156 = sub_10002B924(a2);
          if ((v162 & 1) != (v163 & 1))
          {
            goto LABEL_89;
          }
        }

        v129 = v180;
        v164 = v183;
        if (v162)
        {
          v142 = *(v183 + 56);
          v143 = *(v142 + 8 * v156);
          *(v142 + 8 * v156) = v146;
        }

        else
        {
          *(v183 + 8 * (v156 >> 6) + 64) |= 1 << v156;
          *(v164[6] + 8 * v156) = a2;
          *(v164[7] + 8 * v156) = v146;
          v165 = v164[2];
          v160 = __OFADD__(v165, 1);
          v166 = v165 + 1;
          if (v160)
          {
            goto LABEL_88;
          }

          v164[2] = v166;
          v167 = a2;
        }

        v2 &= v2 - 1;
        v181[5] = v164;
        swift_endAccess();
      }

      while (1)
      {
        v144 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          break;
        }

        if (v144 >= v5)
        {

          v129, v169, v170, v171, v172, v173, v174, v175;
          return v177;
        }

        v2 = *&v138[8 * v144];
        ++v141;
        if (v2)
        {
          v141 = v144;
          goto LABEL_65;
        }
      }

LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_89:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}