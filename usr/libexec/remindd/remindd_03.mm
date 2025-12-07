void sub_100041EBC(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v210 = a3;
  v6 = _s10PredicatesOMa(0);
  __chkstk_darwin(v6, v7);
  v9 = &v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004232C(a2, v211);
  if (!v3)
  {
    v205 = v9;
    v208 = 0;
    if (qword_100935FB8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_100944F38);
    v11 = v211[0];
    v12 = v211[1];
    v13 = v211[2];
    v14 = v211[3];
    v15 = v211[4];

    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v209 = v15;
    v15, v19, v20, v21, v22, v23, v24, v25;
    v16, v26, v27, v28, v29, v30, v31, v32;
    v13, v33, v34, v35, v36, v37, v38, v39;
    v12, v40, v41, v42, v43, v44, v45, v46;
    v11, v47, v48, v49, v50, v51, v52, v53;
    v204 = v18;
    v54 = os_log_type_enabled(v17, v18);
    v206 = v16;
    v207 = v13;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v202 = v6;
      v56 = v55;
      v57 = swift_slowAlloc();
      v203 = a1;
      v201 = v57;
      v212 = v57;
      *v56 = 136315138;

      v58 = v209;

      v59 = v16;
      v60 = sub_100042F60();
      v200 = v17;
      v62 = v61;
      v58, v61, v63, v64, v65, v66, v67, v68;
      v59, v69, v70, v71, v72, v73, v74, v75;
      v13, v76, v77, v78, v79, v80, v81, v82;
      v12, v83, v84, v85, v86, v87, v88, v89;
      v11, v90, v91, v92, v93, v94, v95, v96;
      v97 = sub_10000668C(v60, v62, &v212);
      v62, v98, v99, v100, v101, v102, v103, v104;
      *(v56 + 4) = v97;
      v105 = v200;
      _os_log_impl(&_mh_execute_header, v200, v204, "RemindersInCalendarInvocation: fetched diff for incremental mode {diff: %s}", v56, 0xCu);
      sub_10000607C(v201);
      a1 = v203;
    }

    else
    {
    }

    sub_1000434E8(v106, v11);
    v108 = v107;
    v109 = sub_1000436E4(v107);
    v110 = v109;
    v111 = v205;
    if ((v109 & 0x8000000000000000) != 0 || (v109 & 0x4000000000000000) != 0)
    {
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v112 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v112 = v110;
    }

    *v111 = v112;
    swift_storeEnumTagMultiPayload();
    v113 = v208;
    v114 = sub_1000437C4(a1);
    if (v113)
    {
      sub_1000513B4(v111);
      v209, v115, v116, v117, v118, v119, v120, v121;
      v206, v122, v123, v124, v125, v126, v127, v128;
      v207, v129, v130, v131, v132, v133, v134, v135;
      v12, v136, v137, v138, v139, v140, v141, v142;
      v11, v143, v144, v145, v146, v147, v148, v149;
      v108, v150, v151, v152, v153, v154, v155, v156;
    }

    else
    {
      v157 = sub_100051088(v114, v108);
      v158 = v207;

      sub_1000434E8(v159, v157);
      v208 = v160;
      v161 = v11;
      v162 = v209;
      v163 = v206;

      sub_1000434E8(v164, v163);
      v162, v165, v166, v167, v168, v169, v170, v171;
      v163, v172, v173, v174, v175, v176, v177, v178;
      v158, v179, v180, v181, v182, v183, v184, v185;
      v12, v186, v187, v188, v189, v190, v191, v192;
      v161, v193, v194, v195, v196, v197, v198, v199;
      REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.IncrementalResult.init(matchedReminderIDs:removedReminderIDs:updatedListIDs:)();
      sub_1000513B4(v111);
    }
  }
}

void sub_10004232C(void *a2@<X1>, void *a3@<X8>)
{
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v6 = [swift_getObjCClassFromMetadata() entity];
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v7 = [swift_getObjCClassFromMetadata() entity];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100796900;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  v9 = v6;
  v10 = v7;
  v11 = sub_10003B8F0(a2, v8);
  if (v3)
  {

    v8, v19, v20, v21, v22, v23, v24, v25;
    return;
  }

  v26 = v11;
  v80 = v9;
  v8, v12, v13, v14, v15, v16, v17, v18;
  sub_100042CBC(&v86);
  v27 = v86;
  v28 = v87;
  v29 = v88;
  v30 = v89;
  v31 = v90;
  v91 = v86;
  v84 = v88;
  v85 = v87;
  v82 = v90;
  v83 = v89;
  v76 = v26;
  if (v26 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v30 = 0;
    v29 = i;
    v28 = v76;
    v74 = a3;
    v79 = v10;
    while (1)
    {
      while (1)
      {
        if ((v76 & 0xC000000000000001) != 0)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v30 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v32 = *&v76->clientIdentity[8 * v30 + 16];
        }

        v31 = v32;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
          goto LABEL_46;
        }

        v34 = [v32 changes];
        if (v34)
        {
          break;
        }

        if (v30 == v29)
        {
          goto LABEL_44;
        }
      }

      v27 = v34;
      v77 = v31;
      v78 = v30;
      sub_1000060C8(0, &qword_10093F3C8, NSPersistentHistoryChange_ptr);
      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v30 >> 62))
      {
        v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v35)
        {
          break;
        }

        goto LABEL_42;
      }

      v35 = _CocoaArrayWrapper.endIndex.getter();
      if (v35)
      {
        break;
      }

LABEL_42:

      v30, v53, v54, v55, v56, v57, v58, v59;
LABEL_43:
      v30 = v78;
      if (v78 == v29)
      {
LABEL_44:

        v28, v60, v61, v62, v63, v64, v65, v66;
        v27 = v91;
        v29 = v84;
        v28 = v85;
        v31 = v82;
        v30 = v83;
        goto LABEL_50;
      }
    }

    v10 = &selRef_accountStatusWithCompletionHandler_;
    sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
    if (v35 >= 1)
    {
      v36 = 0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v37 = *(v30 + 8 * v36 + 32);
        }

        v27 = v37;
        v38 = [v37 changedObjectID];
        v39 = [v38 entity];

        v31 = v39;
        LOBYTE(v38) = static NSObject.== infix(_:_:)();

        if (v38)
        {

          v40 = [v27 changeType];
          if (v40)
          {
            if (v40 == 2)
            {
              v41 = sub_1003C6CC4(v27);
              if (v41)
              {
                goto LABEL_39;
              }
            }

            else if (v40 == 1)
            {
              v41 = sub_1003C6A34(v27);
              if (v41)
              {
                goto LABEL_39;
              }
            }
          }

          else
          {
            v41 = sub_1003C6A34(v27);
            if (v41)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          v42 = static NSObject.== infix(_:_:)();

          if (v42)
          {
            v43 = [v27 changeType];
            if (v43)
            {
              if (v43 == 2)
              {
                v41 = sub_1003C6CC4(v27);
                if (v41)
                {
                  goto LABEL_39;
                }
              }

              else if (v43 == 1)
              {
                v41 = sub_1003C6A34(v27);
                if (v41)
                {
LABEL_39:
                  v31 = v41;
                  v44 = REMObjectID.codable.getter();
                  sub_100379240(&v81, v44);
                  v45 = v81;

                  goto LABEL_18;
                }
              }
            }
          }
        }

LABEL_18:
        if (v35 == ++v36)
        {

          v30, v46, v47, v48, v49, v50, v51, v52;
          a3 = v74;
          v29 = i;
          v10 = v79;
          v28 = v76;
          goto LABEL_43;
        }
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  v76, v67, v68, v69, v70, v71, v72, v73;
LABEL_50:

  *a3 = v27;
  a3[1] = v28;
  a3[2] = v29;
  a3[3] = v30;
  a3[4] = v31;
}

unint64_t sub_10004285C()
{
  result = qword_100939688;
  if (!qword_100939688)
  {
    sub_1000F514C(&qword_100939680, &qword_100795F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939688);
  }

  return result;
}

void sub_1000428C0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(NSFetchRequest) init];
  [v6 setEntity:a2];
  [v6 setPredicate:a3];
  [a1 setFetchRequest:v6];
}

void sub_100042968(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t initializeBufferWithCopyOfBuffer for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_100042A14(uint64_t a1, char a2, void *a3, uint64_t (*a4)(void))
{
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_10093B458);
  v9 = a3;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = a4;
    v14 = swift_slowAlloc();
    v43 = v14;
    *v12 = 67109378;
    *(v12 + 4) = a2 & 1;
    *(v12 + 8) = 2082;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v43);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v12 + 10) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "XPCSyncInterface.SyncCloudKit: CloudKit Sync did finish {discretionary: %{BOOL}d, reason: %{public}s}", v12, 0x12u);
    sub_10000607C(v14);
    a4 = v13;
  }

  if (a1)
  {
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43 = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v30 = Error.localizedDescription.getter();
      v32 = v31;
      v33 = sub_10000668C(v30, v31, &v43);
      v32, v34, v35, v36, v37, v38, v39, v40;
      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "XPCSyncInterface.SyncCloudKit: Sync interface cloudkit sync finished with error {error: %s}", v28, 0xCu);
      sub_10000607C(v29);
    }

    else
    {
    }
  }

  if (sub_100042E00(v9))
  {
    v41 = a1;
  }

  else
  {
    v41 = 0;
  }

  return a4(v41);
}

void sub_100042CBC(void *a1@<X8>)
{
  if (&_swiftEmptyArrayStorage >> 62)
  {
    v6 = a1;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(&_swiftEmptyArrayStorage);
      v5 = v7;
    }

    else
    {
      v5 = _swiftEmptySetSingleton;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(&_swiftEmptyArrayStorage);
      v4 = v8;
    }

    else
    {
      v4 = _swiftEmptySetSingleton;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(&_swiftEmptyArrayStorage);
      v3 = v9;
    }

    else
    {
      v3 = _swiftEmptySetSingleton;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(&_swiftEmptyArrayStorage);
      v2 = v10;
    }

    else
    {
      v2 = _swiftEmptySetSingleton;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(&_swiftEmptyArrayStorage);
    }

    else
    {
      v1 = _swiftEmptySetSingleton;
    }

    a1 = v6;
  }

  else
  {
    v1 = _swiftEmptySetSingleton;
    v2 = _swiftEmptySetSingleton;
    v3 = _swiftEmptySetSingleton;
    v4 = _swiftEmptySetSingleton;
    v5 = _swiftEmptySetSingleton;
  }

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
}

uint64_t sub_100042E00(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v1;
  v12 = v4;
  if (v11 == v5 && v3 == v4)
  {
    goto LABEL_14;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v3, v15, v16, v17, v18, v19, v20, v21;
  v12, v22, v23, v24, v25, v26, v27, v28;
  if ((v14 & 1) == 0)
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v31;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v30;
    v12 = v4;
    if (v32 != v5 || v3 != v4)
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v3, v35, v36, v37, v38, v39, v40, v41;
      v12, v42, v43, v44, v45, v46, v47, v48;
      if (v34)
      {
        goto LABEL_6;
      }

      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v50;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v49;
      v12 = v4;
      if (v51 != v5 || v3 != v4)
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_15;
      }
    }

LABEL_14:
    v29 = 1;
LABEL_15:
    v3, v4, v5, v6, v7, v8, v9, v10;
    v12, v52, v53, v54, v55, v56, v57, v58;
    return v29 & 1;
  }

LABEL_6:
  v29 = 1;
  return v29 & 1;
}

uint64_t sub_100042F60()
{
  v1 = swift_allocObject();
  *(v1 + 16) = &_swiftEmptyArrayStorage;
  KeyPath = swift_getKeyPath();
  sub_100043224(KeyPath, 0xD000000000000010, 0x80000001007F68B0, v0, v1);

  v3 = swift_getKeyPath();
  sub_100043224(v3, 0xD000000000000011, 0x80000001007F68D0, v0, v1);

  v4 = swift_getKeyPath();
  sub_100043224(v4, 0xD000000000000014, 0x80000001007F68F0, v0, v1);

  v5 = swift_getKeyPath();
  sub_100043224(v5, 0x4C64657461647075, 0xEC00000073747369, v0, v1);

  v6 = swift_getKeyPath();
  sub_100043224(v6, 0xD000000000000010, 0x80000001007F6910, v0, v1);

  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16))
  {

    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
    v8 = BidirectionalCollection<>.joined(separator:)();
    v10 = v9;
    v7, v9, v11, v12, v13, v14, v15, v16;
    v17._countAndFlagsBits = v8;
    v17._object = v10;
    String.append(_:)(v17);
    v10, v18, v19, v20, v21, v22, v23, v24;
    v25._countAndFlagsBits = 125;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);

    return 123;
  }

  else
  {

    return 0x3E7974706D653CLL;
  }
}

uint64_t sub_1000431EC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 24, 7);
}

void sub_100043224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = *a4;
  v55 = a4[1];
  v56 = v8;
  v9 = a4[2];
  v53 = a4[3];
  v54 = v9;
  v10 = a4[4];
  v11 = *(a4 + 1);
  v49 = *a4;
  v50 = v11;
  v51 = a4[4];
  v52 = v10;
  sub_100043478(&v56, &v48);
  sub_100043478(&v55, &v48);
  sub_100043478(&v54, &v48);
  sub_100043478(&v53, &v48);
  sub_100043478(&v52, &v48);
  swift_getAtKeyPath();
  sub_1000050A4(&v56, &qword_100944F78, qword_1007AABF0);
  sub_1000050A4(&v55, &qword_100944F78, qword_1007AABF0);
  sub_1000050A4(&v54, &qword_100944F78, qword_1007AABF0);
  sub_1000050A4(&v53, &qword_100944F78, qword_1007AABF0);
  sub_1000050A4(&v52, &qword_100944F78, qword_1007AABF0);
  v19 = v48;
  v20 = v48 & 0xC000000000000001;
  if ((v48 & 0xC000000000000001) == 0)
  {
    if (*(v48 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    v19, v12, v13, v14, v15, v16, v17, v18;
    return;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_6;
  }

LABEL_3:
  *&v49 = a2;
  *(&v49 + 1) = a3;

  v21._countAndFlagsBits = 8250;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  if (v20)
  {
    v29 = __CocoaSet.count.getter();
  }

  else
  {
    v29 = *(v19 + 16);
  }

  v19, v22, v23, v24, v25, v26, v27, v28;
  v48 = v29;
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v30._object;
  String.append(_:)(v30);
  object, v32, v33, v34, v35, v36, v37, v38;
  v39 = v49;
  swift_beginAccess();
  v40 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v40;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v40 = sub_100365788(0, *v40->clientIdentity + 1, 1, v40, v42, v43, v44, v45);
    *(a5 + 16) = v40;
  }

  v47 = *v40->clientIdentity;
  v46 = *&v40->clientIdentity[8];
  if (v47 >= v46 >> 1)
  {
    v40 = sub_100365788((v46 > 1), v47 + 1, 1, v40, v42, v43, v44, v45);
  }

  *v40->clientIdentity = v47 + 1;
  *&v40->clientIdentity[16 * v47 + 16] = v39;
  *(a5 + 16) = v40;
  swift_endAccess();
}

uint64_t sub_100043478(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100944F78, qword_1007AABF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000434E8(uint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for REMObjectID_Codable();
    sub_100728EC8(&qword_100943E80, &type metadata accessor for REMObjectID_Codable, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_10001B860(v2);
      return;
    }

    while (1)
    {
      sub_100379240(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for REMObjectID_Codable();
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

_TtC7remindd19RDXPCStorePerformer *sub_1000436E4(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100018D7C(v2, 0);

    v1 = sub_100279C80(&v5, v3 + 4, v2, v1, &type metadata accessor for REMObjectID_Codable, &qword_100943E80, &type metadata accessor for REMObjectID_Codable);
    sub_10001B860(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t sub_1000437C4(uint64_t a1)
{
  v3 = sub_100043AA8();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v3];

  sub_100050AD0(v7);
  inited, v8, v9, v10, v11, v12, v13, v14;
  v15 = sub_1003FE014(_swiftEmptySetSingleton);
  _swiftEmptySetSingleton, v16, v17, v18, v19, v20, v21, v22;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v15, v24, v25, v26, v27, v28, v29, v30;
  [v5 setPropertiesToFetch:isa];

  swift_setDeallocating();
  swift_arrayDestroy();
  v31 = a1;
  v32 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v1)
  {
    v33 = v32;
    sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
    type metadata accessor for REMObjectID_Codable();
    sub_10000CB48(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0, &protocol conformance descriptor for [A]);
    sub_100050DB0(&qword_100943E80, &type metadata accessor for REMObjectID_Codable, &protocol conformance descriptor for NSObject);
    v31 = Sequence.mapToSet<A>(_:)();
    v33, v34, v35, v36, v37, v38, v39, v40;
  }

  return v31;
}

uint64_t sub_100043AA8()
{
  v1469 = type metadata accessor for REMSearchableListType();
  v1497 = *(v1469 - 8);
  __chkstk_darwin(v1469, v0);
  v1467 = &v1467 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2, v3);
  v1468 = &v1467 - v4;
  v1532 = type metadata accessor for REMStringMatchingStyle();
  v1495 = *(v1532 - 8);
  __chkstk_darwin(v1532, v5);
  v1489 = &v1467 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v1528 = &v1467 - v9;
  v1549 = type metadata accessor for REMSearchCriterion.Inclusion();
  v1496 = *(v1549 - 8);
  __chkstk_darwin(v1549, v10);
  v1527 = &v1467 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v1548 = &v1467 - v14;
  v1553 = type metadata accessor for REMSearchCriterion();
  v1552 = *(v1553 - 8);
  __chkstk_darwin(v1553, v15);
  v1557 = &v1467 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v1533 = &v1467 - v19;
  __chkstk_darwin(v20, v21);
  v1488 = &v1467 - v22;
  __chkstk_darwin(v23, v24);
  v1554 = (&v1467 - v25);
  __chkstk_darwin(v26, v27);
  v1555 = &v1467 - v28;
  v1577 = type metadata accessor for UUID();
  v1573 = *(v1577 - 8);
  __chkstk_darwin(v1577, v29);
  v1570 = (&v1467 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v31, v32);
  v1551 = &v1467 - v33;
  v1547 = sub_1000F5104(&qword_100945FE8, qword_1007A6B20);
  __chkstk_darwin(v1547, v34);
  v1522 = &v1467 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v37);
  v1546 = (&v1467 - v38);
  __chkstk_darwin(v39, v40);
  v1524 = &v1467 - v41;
  __chkstk_darwin(v42, v43);
  *&v1545 = &v1467 - v44;
  __chkstk_darwin(v45, v46);
  v1523 = &v1467 - v47;
  v1564 = type metadata accessor for Date();
  v1565 = *(v1564 - 8);
  __chkstk_darwin(v1564, v48);
  v1487 = &v1467 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50, v51);
  v1479 = &v1467 - v52;
  __chkstk_darwin(v53, v54);
  v1478 = &v1467 - v55;
  __chkstk_darwin(v56, v57);
  v1476 = &v1467 - v58;
  __chkstk_darwin(v59, v60);
  v1486 = &v1467 - v61;
  __chkstk_darwin(v62, v63);
  v1482 = &v1467 - v64;
  __chkstk_darwin(v65, v66);
  v1485 = &v1467 - v67;
  __chkstk_darwin(v68, v69);
  v1481 = &v1467 - v70;
  __chkstk_darwin(v71, v72);
  v1543 = &v1467 - v73;
  __chkstk_darwin(v74, v75);
  v1480 = &v1467 - v76;
  __chkstk_darwin(v77, v78);
  v1484 = &v1467 - v79;
  __chkstk_darwin(v80, v81);
  v1519 = &v1467 - v82;
  __chkstk_darwin(v83, v84);
  v1544 = &v1467 - v85;
  __chkstk_darwin(v86, v87);
  v1483 = &v1467 - v88;
  __chkstk_darwin(v89, v90);
  v1477 = &v1467 - v91;
  __chkstk_darwin(v92, v93);
  v1561 = &v1467 - v94;
  v95 = type metadata accessor for Calendar.Component();
  v1493 = *(v95 - 8);
  v1494 = v95;
  __chkstk_darwin(v95, v96);
  v1520 = &v1467 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Calendar();
  v1491 = *(v98 - 8);
  v1492 = v98;
  __chkstk_darwin(v98, v99);
  v1517 = &v1467 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v101 - 8, v102);
  v1518 = &v1467 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v104, v105);
  v1521 = &v1467 - v106;
  __chkstk_darwin(v107, v108);
  v1514 = (&v1467 - v109);
  __chkstk_darwin(v110, v111);
  v1537 = (&v1467 - v112);
  __chkstk_darwin(v113, v114);
  v1511 = &v1467 - v115;
  __chkstk_darwin(v116, v117);
  v1516 = &v1467 - v118;
  __chkstk_darwin(v119, v120);
  v1498 = &v1467 - v121;
  __chkstk_darwin(v122, v123);
  v1536 = &v1467 - v124;
  __chkstk_darwin(v125, v126);
  v1471 = &v1467 - v127;
  __chkstk_darwin(v128, v129);
  v1470 = &v1467 - v130;
  __chkstk_darwin(v131, v132);
  v1473 = &v1467 - v133;
  __chkstk_darwin(v134, v135);
  v1472 = &v1467 - v136;
  __chkstk_darwin(v137, v138);
  v1474 = &v1467 - v139;
  __chkstk_darwin(v140, v141);
  v1475 = &v1467 - v142;
  __chkstk_darwin(v143, v144);
  v1515 = &v1467 - v145;
  __chkstk_darwin(v146, v147);
  v1508 = &v1467 - v148;
  __chkstk_darwin(v149, v150);
  v1531 = &v1467 - v151;
  __chkstk_darwin(v152, v153);
  v1542 = (&v1467 - v154);
  __chkstk_darwin(v155, v156);
  v1513 = (&v1467 - v157);
  __chkstk_darwin(v158, v159);
  v1507 = (&v1467 - v160);
  __chkstk_darwin(v161, v162);
  v1530 = &v1467 - v163;
  __chkstk_darwin(v164, v165);
  v1541 = (&v1467 - v166);
  __chkstk_darwin(v167, v168);
  v1525 = &v1467 - v169;
  __chkstk_darwin(v170, v171);
  v1510 = &v1467 - v172;
  __chkstk_darwin(v173, v174);
  v1526 = &v1467 - v175;
  __chkstk_darwin(v176, v177);
  v1512 = (&v1467 - v178);
  __chkstk_darwin(v179, v180);
  v1509 = (&v1467 - v181);
  __chkstk_darwin(v182, v183);
  v1506 = &v1467 - v184;
  __chkstk_darwin(v185, v186);
  v1529 = &v1467 - v187;
  __chkstk_darwin(v188, v189);
  v1540 = (&v1467 - v190);
  __chkstk_darwin(v191, v192);
  v1490 = &v1467 - v193;
  __chkstk_darwin(v194, v195);
  v1562 = &v1467 - v196;
  v1559 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v1558 = *(v1559 - 1);
  __chkstk_darwin(v1559, v197);
  v1505 = &v1467 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v199, v200);
  v1535 = &v1467 - v201;
  __chkstk_darwin(v202, v203);
  v1539 = &v1467 - v204;
  __chkstk_darwin(v205, v206);
  v1550 = &v1467 - v207;
  __chkstk_darwin(v208, v209);
  v1538 = &v1467 - v210;
  __chkstk_darwin(v211, v212);
  v1500 = &v1467 - v213;
  __chkstk_darwin(v214, v215);
  v1499 = &v1467 - v216;
  __chkstk_darwin(v217, v218);
  v1501 = &v1467 - v219;
  __chkstk_darwin(v220, v221);
  v1504 = &v1467 - v222;
  __chkstk_darwin(v223, v224);
  v1503 = &v1467 - v225;
  __chkstk_darwin(v226, v227);
  v1556 = &v1467 - v228;
  __chkstk_darwin(v229, v230);
  v1502 = &v1467 - v231;
  v232 = sub_1000F5104(&unk_100939D90, "8\n\r");
  *&v1575 = *(v232 - 8);
  __chkstk_darwin(v232 - 8, v233);
  v1569 = &v1467 - ((v234 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v235, v236);
  v1567 = &v1467 - v237;
  __chkstk_darwin(v238, v239);
  v241 = &v1467 - v240;
  __chkstk_darwin(v242, v243);
  v245 = &v1467 - v244;
  __chkstk_darwin(v246, v247);
  v1566 = (&v1467 - v248);
  __chkstk_darwin(v249, v250);
  v252 = &v1467 - v251;
  __chkstk_darwin(v253, v254);
  v1568 = &v1467 - v255;
  __chkstk_darwin(v256, v257);
  v259 = &v1467 - v258;
  v260 = _s10PredicatesOMa(0);
  __chkstk_darwin(v260, v261);
  v263 = &v1467 - ((v262 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1563 = 0;
  v1574 = _s10PredicatesO19CompletionPredicateOMa(0);
  __chkstk_darwin(v1574, v264);
  v1571 = (&v1467 - ((v265 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v266, v267);
  v269 = &v1467 - v268;
  __chkstk_darwin(v270, v271);
  v273 = &v1467 - v272;
  __chkstk_darwin(v274, v275);
  v277 = &v1467 - v276;
  __chkstk_darwin(v278, v279);
  v1560 = &v1467 - v280;
  __chkstk_darwin(v281, v282);
  v1534 = (&v1467 - v283);
  __chkstk_darwin(v284, v285);
  v1576 = (&v1467 - v286);
  v1581 = &_swiftEmptyArrayStorage;
  sub_10004DCBC(v1572, v263, _s10PredicatesOMa);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v567 = v263[8];
      swift_storeEnumTagMultiPayload();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v382 = 0;
      v360 = 1;
      LODWORD(v1575) = 1;
      LOBYTE(v387) = 1;
      if (v567)
      {
        goto LABEL_429;
      }

      goto LABEL_420;
    case 2u:
      v494 = *v263;
      v495 = v263[8];
      v496 = sub_1000F5104(&qword_10093C920, qword_1007AC750);
      v497 = v1558;
      v498 = v1502;
      v499 = v1559;
      v1558[4](v1502, &v263[*(v496 + 64)], v1559);
      v500 = v1556;
      v497[2](v1556, v498, v499);
      sub_1003E83B8(v500, v1576);
      v382 = v495 ^ 1;
      KeyPath = swift_getKeyPath();
      v502 = [(RDXPCStorePerformer *)v494 uuid];
      v503 = v1568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1573 + 56))(v503, 0, 1, v1577);
      sub_100390EB8(KeyPath, v503);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (v497[1])(v498, v499);
      goto LABEL_146;
    case 3u:
      v509 = *v263;
      v510 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
      v511 = *(v510 + 48);
      LODWORD(v1572) = v263[*(v510 + 64)];
      v512 = v1534;
      sub_1003EB670(&v263[v511], v1534);
      sub_10004DCBC(v512, v1576, _s10PredicatesO19CompletionPredicateOMa);
      v520 = swift_getKeyPath();
      if (v509 >> 62)
      {
        v521 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v521 = *((v509 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v521)
      {
        v1570 = v520;
        v1578 = &_swiftEmptyArrayStorage;
        sub_100253038(v521);
        if ((v521 & 0x8000000000000000) == 0)
        {
          v522 = 0;
          v523 = (v1573 + 56);
          do
          {
            if ((v509 & 0xC000000000000001) != 0)
            {
              v524 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v524 = *&v509->clientIdentity[8 * v522 + 16];
            }

            v525 = v524;
            v526 = [v524 uuid];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            (*v523)(v252, 0, 1, v1577);
            v527 = v1578;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100253218(0, *v527->clientIdentity + 1, 1);
              v527 = v1578;
            }

            v529 = *v527->clientIdentity;
            v528 = *&v527->clientIdentity[8];
            if (v529 >= v528 >> 1)
            {
              sub_100253218((v528 > 1), v529 + 1, 1);
              v527 = v1578;
            }

            ++v522;
            *v527->clientIdentity = v529 + 1;
            sub_100031B58(v252, v527 + ((*(v1575 + 80) + 32) & ~*(v1575 + 80)) + *(v1575 + 72) * v529, &unk_100939D90, "8\n\r");
          }

          while (v521 != v522);
          v509, v530, v531, v532, v533, v534, v535, v536;
          v520 = v1570;
          goto LABEL_433;
        }

        goto LABEL_530;
      }

      v509, v513, v514, v515, v516, v517, v518, v519;
      v527 = &_swiftEmptyArrayStorage;
LABEL_433:
      sub_100016EF8(v520, v527, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000504F8(v1534, _s10PredicatesO19CompletionPredicateOMa);
LABEL_436:
      v360 = 0;
      LODWORD(v1575) = 0;
      LODWORD(v387) = 0;
LABEL_437:
      LOBYTE(v432) = v1572;
LABEL_438:
      if (v432 > 3u)
      {
        switch(v432)
        {
          case 4u:
            sub_1003E8200();
            goto LABEL_450;
          case 5u:
LABEL_447:
            sub_1003E8200();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

LABEL_456:
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            LOBYTE(v382) = v360;
            if (v387)
            {
              goto LABEL_429;
            }

            goto LABEL_457;
          case 6u:
            sub_1003E8200();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            sub_10004F91C(*v1581->clientIdentity);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            sub_1003E80CC(1);
LABEL_450:
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            sub_10004F91C(*v1581->clientIdentity);
            v1570 = v360;
            LODWORD(v1569) = v360;
            goto LABEL_422;
        }

LABEL_452:
        v1320 = swift_getKeyPath();
        if (v432)
        {
          sub_1003EFC70(v1320, &unk_100939F10, &qword_100797F30);
        }

        else
        {
          sub_10000E72C(v1320, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(*v1581->clientIdentity);
        goto LABEL_456;
      }

      if (v432 != 2)
      {
        if (v432 == 3)
        {
          LOBYTE(v382) = v360;
          if (v387)
          {
            goto LABEL_429;
          }

          goto LABEL_457;
        }

        goto LABEL_452;
      }

      v382 = v360;
LABEL_420:
      v1570 = v360;
      sub_100023A14(0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v1283 = *v1581->clientIdentity;
      v1284 = *&v1581->clientIdentity[8];
      LODWORD(v1569) = v382;
      if (v1283 >= v1284 >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

LABEL_422:
      v1285 = v387;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1286 = swift_getKeyPath();
      sub_10000E72C(v1286, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      inited = swift_initStackObject();
      v1572 = xmmword_100791340;
      *(inited + 16) = xmmword_100791340;
      v1288 = swift_getKeyPath();
      v1289 = sub_10000E72C(v1288, 0x696E203D3D204B25, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);

      *(inited + 32) = v1289;
      v1290 = swift_getKeyPath();
      v1291 = sub_10000E72C(v1290, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

      *(inited + 40) = v1291;
      sub_100024F24(inited, v1292, v1293, v1294, v1295, v1296, v1297, v1298);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1299 = swift_initStackObject();
      *(v1299 + 16) = v1572;
      v1300 = swift_getKeyPath();
      v1301 = sub_10000E72C(v1300, 0x696E203D3D204B25, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);

      *(v1299 + 32) = v1301;
      v1302 = swift_getKeyPath();
      v1303 = sub_10000E72C(v1302, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

      *(v1299 + 40) = v1303;
      sub_100024F24(v1299, v1304, v1305, v1306, v1307, v1308, v1309, v1310);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      LOBYTE(v382) = v1569;
      if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      LODWORD(v360) = v1570;
      if (v1285)
      {
LABEL_429:
        sub_1000F5104(&qword_10093B980, qword_10079A3D0);
        v1311 = swift_initStackObject();
        sub_100050238(v1311, 2);
        v1313 = v1312;
        v1314 = swift_getKeyPath();
        v1315 = sub_10000E72C(v1314, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

        *v1313 = v1315;
        v1316 = swift_getKeyPath();
        v1317 = sub_10000E72C(v1316, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

        v1313[1] = v1317;
        REMCDList.cleanUpAfterLocalObjectMerge()();
        sub_10000C2B0();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(*v1581->clientIdentity);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1318 = v1571;
        if (v1575)
        {
          goto LABEL_430;
        }

LABEL_458:
        if (!v360)
        {
          goto LABEL_460;
        }

        goto LABEL_459;
      }

LABEL_457:
      v1318 = v1571;
      if (!v1575)
      {
        goto LABEL_458;
      }

LABEL_430:
      v1319 = swift_getKeyPath();
      sub_10000E72C(v1319, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v360)
      {
LABEL_459:
        v1321 = swift_getKeyPath();
        v1322 = [objc_opt_self() localInternalAccountID];
        v1323 = [v1322 uuid];

        v1324 = v1568;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v1573 + 56))(v1324, 0, 1, v1577);
        sub_1003EAC2C(v1321, v1324);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(*v1581->clientIdentity);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

LABEL_460:
      v1325 = v1576;
      sub_10004DCBC(v1576, v1318, _s10PredicatesO19CompletionPredicateOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          if (EnumCaseMultiPayload != 4)
          {
            goto LABEL_474;
          }

          v1338 = swift_getKeyPath();
          sub_1003EFC70(v1338, &unk_100939F10, &qword_100797F30);
          goto LABEL_472;
        }

LABEL_471:
        v1399 = swift_getKeyPath();
        sub_10000E72C(v1399, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);
LABEL_472:

        goto LABEL_473;
      }

      if (!EnumCaseMultiPayload)
      {
        v1339 = v1565;
        v1340 = v1561;
        v1341 = v1564;
        (*(v1565 + 32))(v1561, v1318, v1564);
        sub_1000F5104(&qword_10093B980, qword_10079A3D0);
        v1342 = swift_initStackObject();
        sub_100050238(v1342, 2);
        v1344 = v1343;
        v1345 = swift_getKeyPath();
        v1346 = sub_10000E72C(v1345, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

        *v1344 = v1346;
        v1347 = swift_getKeyPath();
        v1348 = v1562;
        (*(v1339 + 16))(v1562, v1340, v1341);
        (*(v1339 + 56))(v1348, 0, 1, v1341);
        v1349 = sub_1003E9FFC(v1347, v1348);

        v1344[1] = v1349;
        REMCDList.cleanUpAfterLocalObjectMerge()();
        sub_100024F24(v1350, v1351, v1352, v1353, v1354, v1355, v1356, v1357);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(*v1581->clientIdentity);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1358 = v1340;
        v1325 = v1576;
        (*(v1339 + 8))(v1358, v1341);
        goto LABEL_474;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v1359 = *v1318;
        sub_1003E7588(*v1318, sub_100411AE4, &qword_100946070, &qword_1007A7668);
        v1361 = v1360;
        v1359, v1362, v1363, v1364, v1365, v1366, v1367, v1368;
        if (sub_10025D30C(v1361))
        {
          sub_1000F5104(&qword_10093B980, qword_10079A3D0);
          v1376 = swift_initStackObject();
          sub_100050238(v1376, 2);
          v1378 = v1377;
          v1379 = swift_getKeyPath();
          v1380 = sub_10000E72C(v1379, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

          *v1378 = v1380;
          v1381 = swift_getKeyPath();
          v1382 = sub_10004FAEC(v1361);
          v1361, v1383, v1384, v1385, v1386, v1387, v1388, v1389;
          v1390 = sub_100016EF8(v1381, v1382, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

          v1378[1] = v1390;
          REMCDList.cleanUpAfterLocalObjectMerge()();
          sub_100024F24(v1391, v1392, v1393, v1394, v1395, v1396, v1397, v1398);
LABEL_473:
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          sub_10004F91C(*v1581->clientIdentity);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          goto LABEL_474;
        }

        v1361, v1369, v1370, v1371, v1372, v1373, v1374, v1375;
        goto LABEL_471;
      }

      v1327 = v1565;
      v1328 = v1561;
      v1329 = v1564;
      (*(v1565 + 32))(v1561, v1318, v1564);
      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v1330 = swift_initStackObject();
      sub_100050238(v1330, 2);
      v1332 = v1331;
      v1333 = swift_getKeyPath();
      v1334 = sub_1003EFC70(v1333, &unk_100939F10, &qword_100797F30);

      *v1332 = v1334;
      v1335 = swift_getKeyPath();
      v1336 = v1562;
      (*(v1327 + 16))(v1562, v1328, v1329);
      (*(v1327 + 56))(v1336, 0, 1, v1329);
      v1337 = sub_1003EA414(v1335, v1336);

      v1332[1] = v1337;
      REMCDList.cleanUpAfterLocalObjectMerge()();
      sub_10000C2B0();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v1327 + 8))(v1328, v1329);
LABEL_474:
      if (v382)
      {
        v1400 = swift_getKeyPath();
        sub_10000E72C(v1400, 0x696E203D3D204B25, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(*v1581->clientIdentity);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v1135 = sub_10000C2B0();
      sub_1000504F8(v1325, _s10PredicatesO19CompletionPredicateOMa);
      return v1135;
    case 4u:
      v447 = *v263;
      v448 = sub_1000F5104(&qword_100946060, &qword_1007A7648);
      v449 = *(v448 + 64);
      v450 = v1540;
      sub_100031B58(&v263[*(v448 + 48)], v1540, &unk_100938850, qword_100795AE0);
      v451 = v1529;
      sub_100031B58(&v263[v449], v1529, &unk_100938850, qword_100795AE0);
      swift_storeEnumTagMultiPayload();
      v452 = v1506;
      sub_100010364(v450, v1506, &unk_100938850, qword_100795AE0);
      v453 = v1565;
      v454 = *(v1565 + 48);
      v455 = v1564;
      if (v454(v452, 1, v1564) == 1)
      {
        sub_1000050A4(v452, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v1170 = v1477;
        (*(v453 + 32))(v1477, v452, v455);
        v1171 = swift_getKeyPath();
        v1172 = v1562;
        (*(v453 + 16))(v1562, v1170, v455);
        (*(v453 + 56))(v1172, 0, 1, v455);
        sub_1003EA208(v1171, v1172);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(*v1581->clientIdentity);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1173 = v1170;
        v451 = v1529;
        (*(v453 + 8))(v1173, v455);
      }

      v1174 = v1509;
      sub_100010364(v451, v1509, &unk_100938850, qword_100795AE0);
      if (v454(v1174, 1, v455) == 1)
      {
        sub_1000050A4(v1174, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v1175 = v1565;
        v1176 = v1483;
        (*(v1565 + 32))(v1483, v1174, v455);
        v1177 = swift_getKeyPath();
        v1178 = v1562;
        (*(v1175 + 16))(v1562, v1176, v455);
        (*(v1175 + 56))(v1178, 0, 1, v455);
        sub_1003EA414(v1177, v1178);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(*v1581->clientIdentity);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (*(v1175 + 8))(v1176, v455);
      }

      v1179 = swift_getKeyPath();
      v1180 = v1563;
      v1181 = sub_1003E6C54(v447);
      v1563 = v1180;
      v447, v1182, v1183, v1184, v1185, v1186, v1187, v1188;
      sub_100016EF8(v1179, v1181, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000050A4(v451, &unk_100938850, qword_100795AE0);
      sub_1000050A4(v1540, &unk_100938850, qword_100795AE0);
      goto LABEL_493;
    case 5u:
      v608 = *v263;
      v609 = v263[8];
      v610 = *(v263 + 2);
      swift_storeEnumTagMultiPayload();
      v382 = v609 ^ 1;
      v611 = swift_getKeyPath();
      v612 = [(RDXPCStorePerformer *)v608 uuid];
      v613 = v1568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1573 + 56))(v613, 0, 1, v1577);
      sub_100390EB8(v611, v613);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v614 = v1520;
      v615 = v1517;
      if (v610)
      {
        *&v1575 = v608;
        v616 = [objc_opt_self() currentCalendar];
        static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

        v618 = v1493;
        v617 = v1494;
        (*(v1493 + 104))(v614, enum case for Calendar.Component.day(_:), v1494);
        if ((v610 & 0x8000000000000000) == 0)
        {
          v619 = v1561;
          Date.init()();
          v620 = v1562;
          Calendar.date(byAdding:value:to:wrappingComponents:)();
          (*(v1565 + 8))(v619, v1564);
          (*(v618 + 8))(v614, v617);
          (*(v1491 + 8))(v615, v1492);
          v621 = swift_getKeyPath();
          v622 = v1490;
          sub_100010364(v620, v1490, &unk_100938850, qword_100795AE0);
          sub_1003E9FFC(v621, v622);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          sub_10004F91C(*v1581->clientIdentity);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          sub_1000050A4(v620, &unk_100938850, qword_100795AE0);
LABEL_146:
          v360 = 0;
          LODWORD(v1575) = 0;
          LOBYTE(v387) = 0;
          goto LABEL_420;
        }

        goto LABEL_534;
      }

      goto LABEL_494;
    case 6u:
      v471 = *v263;
      swift_storeEnumTagMultiPayload();
      v656 = swift_getKeyPath();
      v657 = [(RDXPCStorePerformer *)v471 uuid];
      v658 = v1568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1573 + 56))(v658, 0, 1, v1577);
      sub_100390EB8(v656, v658);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      goto LABEL_136;
    case 7u:
      v537 = *v263;
      swift_storeEnumTagMultiPayload();
      v538 = swift_getKeyPath();
      v539 = [(RDXPCStorePerformer *)v537 uuid];
      v540 = v1568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1573 + 56))(v540, 0, 1, v1577);
      sub_100390EB8(v538, v540);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      LODWORD(v360) = 0;
      LODWORD(v1575) = 0;
      LOBYTE(v387) = 0;
      goto LABEL_447;
    case 8u:
      v683 = *v263;
      v684 = sub_1000F5104(&unk_100942AF0, qword_1007A7520);
      v387 = v1558;
      v685 = v1503;
      v686 = v1559;
      v1558[4](v1503, &v263[*(v684 + 48)], v1559);
      v687 = v1556;
      v387[2](v1556, v685, v686);
      sub_1003E83B8(v687, v1576);
      v688 = swift_getKeyPath();
      v689 = [(RDXPCStorePerformer *)v683 uuid];
      v690 = v1568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1573 + 56))(v690, 0, 1, v1577);
      sub_100390EB8(v688, v690);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (v387[1])(v685, v686);
      v360 = 0;
      LODWORD(v1575) = 0;
      LOBYTE(v387) = 0;
      v382 = 1;
      goto LABEL_420;
    case 9u:
      v465 = *v263;
      v466 = sub_1000F5104(&qword_100946058, qword_1007A75D0);
      v432 = v263[*(v466 + 64)];
      v467 = v1558;
      v468 = v1504;
      v469 = v1559;
      v1558[4](v1504, &v263[*(v466 + 48)], v1559);
      LODWORD(v387) = (v432 - 2) < 5 || (v432 & 1) == 0;
      v1147 = v1576;
      v1148 = v1556;
      v467[2](v1556, v468, v469);
      sub_1003E83B8(v1148, v1147);
      v1149 = swift_getKeyPath();
      v1150 = [(RDXPCStorePerformer *)v465 uuid];
      v1151 = v1568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1573 + 56))(v1151, 0, 1, v1577);
      sub_100390EB8(v1149, v1151);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (v467[1])(v468, v469);
      goto LABEL_374;
    case 0xAu:
      v676 = *v263;
      v677 = sub_1000F5104(&qword_100946050, &qword_1007B0450);
      v678 = v1558;
      v679 = v1501;
      v680 = v1559;
      v1558[4](v1501, &v263[*(v677 + 48)], v1559);
      v681 = v1556;
      v678[2](v1556, v679, v680);
      sub_1003E83B8(v681, v1576);
      v682 = swift_getKeyPath();
      sub_100016EF8(v682, v676, &qword_100937028, &qword_100791C10, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v678[1])(v679, v680);
      goto LABEL_145;
    case 0xBu:
      v434 = v1558;
      v277 = v1499;
      v435 = v1559;
      v1558[4](v1499, v263, v1559);
      v436 = v1556;
      (*(v434 + 2))(v1556, v277, v435);
      sub_1003E83B8(v436, v1576);
      v437 = swift_getKeyPath();
      sub_10000E72C(v437, 0x696E203D21204B25, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);
      goto LABEL_50;
    case 0xCu:
      v434 = v1558;
      v277 = v1500;
      v435 = v1559;
      v1558[4](v1500, v263, v1559);
      v463 = v1556;
      (*(v434 + 2))(v1556, v277, v435);
      sub_1003E83B8(v463, v1576);
      v464 = swift_getKeyPath();
      sub_1003EA64C(v464, 1);
LABEL_50:

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v1581->clientIdentity < *&v1581->clientIdentity[8] >> 1)
      {
        goto LABEL_51;
      }

      goto LABEL_519;
    case 0xDu:
      v640 = *(sub_1000F5104(&qword_100946048, &unk_1007A75C0) + 48);
      v641 = v1558;
      v1558[4](v1538, v263, v1559);
      v642 = v1565;
      v643 = &v263[v640];
      v644 = v1544;
      v645 = v1564;
      (*(v1565 + 32))(v1544, v643, v1564);
      v646 = v1547;
      *&v1572 = SLODWORD(v1547[6].isa);
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v647 = v1561;
      sub_1003E8654(v644, v1561);
      v648 = swift_getKeyPath();
      v649 = v1562;
      (*(v642 + 16))(v1562, v647, v645);
      (*(v642 + 56))(v649, 0, 1, v645);
      v650 = sub_1003EA818(v648, v649);

      *&v1575 = *(v642 + 8);
      (v1575)(v647, v645);
      v651 = v1523;
      v652 = sub_1003E8D0C(&v1523[v1572], v650);

      *v651 = v652;
      v653 = v1545;
      sub_100010364(v651, v1545, &qword_100945FE8, qword_1007A6B20);

      sub_1003EB670(v653 + SLODWORD(v646[6].isa), v1576);
      v654 = v1524;
      sub_100010364(v651, v1524, &qword_100945FE8, qword_1007A6B20);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      isa_low = SLODWORD(v646[6].isa);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000050A4(v651, &qword_100945FE8, qword_1007A6B20);
      (v1575)(v1544, v645);
      v641[1](v1538, v1559);
      sub_1000504F8(v654 + isa_low, _s10PredicatesO19CompletionPredicateOMa);
      goto LABEL_417;
    case 0xEu:
      v424 = v1565;
      v425 = v1519;
      v426 = v1564;
      (*(v1565 + 32))(v1519, v263, v1564);
      swift_storeEnumTagMultiPayload();
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v427 = v1561;
      sub_1003E8654(v425, v1561);
      v428 = swift_getKeyPath();
      v429 = v1562;
      (*(v424 + 16))(v1562, v427, v426);
      (*(v424 + 56))(v429, 0, 1, v426);
      sub_1003EA818(v428, v429);

      v430 = *(v424 + 8);
      v430(v427, v426);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v430(v425, v426);
      goto LABEL_417;
    case 0xFu:
      v505 = v1558;
      v506 = v1556;
      v507 = v1559;
      v1558[4](v1556, v263, v1559);
      v508 = v1550;
      v505[2](v1550, v506, v507);
      sub_1003E83B8(v508, v1576);
      (v505[1])(v506, v507);
      goto LABEL_417;
    case 0x10u:
      v383 = *v263;
      v384 = v263[8];
      v385 = sub_1000F5104(&qword_100946040, &qword_1007A75B8);
      v386 = v1512;
      sub_100031B58(&v263[*(v385 + 64)], v1512, &unk_100938850, qword_100795AE0);
      LODWORD(v1572) = v384;
      LODWORD(v387) = (v384 - 2) < 5 || (v384 & 1) == 0;
      v1136 = v1564;
      v1137 = v1565;
      v1138 = v1526;
      swift_storeEnumTagMultiPayload();
      v1139 = swift_getKeyPath();
      v1140 = [(RDXPCStorePerformer *)v383 uuid];
      v1141 = v383;
      v1142 = v1568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1573 + 56))(v1142, 0, 1, v1577);
      sub_100390EB8(v1139, v1142);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_100010364(v386, v1138, &unk_100938850, qword_100795AE0);
      if ((*(v1137 + 48))(v1138, 1, v1136) == 1)
      {
        sub_1000050A4(v386, &unk_100938850, qword_100795AE0);

        sub_1000050A4(v1138, &unk_100938850, qword_100795AE0);
        v360 = 1;
      }

      else
      {
        v1165 = *(v1137 + 32);
        *&v1575 = v1141;
        v1166 = v1484;
        v1165(v1484, v1138, v1136);
        v1167 = swift_getKeyPath();
        v1168 = v1562;
        (*(v1137 + 16))(v1562, v1166, v1136);
        v1169 = v386;
        v360 = 1;
        (*(v1137 + 56))(v1168, 0, 1, v1136);
        sub_1003E9FFC(v1167, v1168);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(*v1581->clientIdentity);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*(v1137 + 8))(v1166, v1136);
        sub_1000050A4(v1169, &unk_100938850, qword_100795AE0);
      }

      LODWORD(v1575) = 1;
      goto LABEL_437;
    case 0x11u:
      v575 = v263[*(sub_1000F5104(&qword_100946038, qword_1007A7578) + 48)];
      v576 = v1510;
      sub_100031B58(v263, v1510, &unk_100938850, qword_100795AE0);
      LODWORD(v387) = (v575 - 2) < 5 || (v575 & 1) == 0;
      v1152 = v1564;
      v1153 = v1565;
      v1154 = v1525;
      swift_storeEnumTagMultiPayload();
      sub_100010364(v576, v1154, &unk_100938850, qword_100795AE0);
      if ((*(v1153 + 48))(v1154, 1, v1152) == 1)
      {
        sub_1000050A4(v1154, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v1195 = v1480;
        (*(v1153 + 32))(v1480, v1154, v1152);
        v1196 = swift_getKeyPath();
        v1197 = v1562;
        (*(v1153 + 16))(v1562, v1195, v1152);
        (*(v1153 + 56))(v1197, 0, 1, v1152);
        sub_1003EA818(v1196, v1197);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(*v1581->clientIdentity);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (*(v1153 + 8))(v1195, v1152);
      }

      LOBYTE(v432) = v575;
      v1198 = swift_getKeyPath();
      sub_100390EDC(v1198, 0);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000050A4(v576, &unk_100938850, qword_100795AE0);
      v360 = 0;
      LODWORD(v1575) = 0;
      goto LABEL_438;
    case 0x12u:
      v659 = *v263;
      v660 = *(v263 + 1);
      v661 = sub_1000F5104(&qword_100938A98, &qword_1007A7570);
      v662 = v1558;
      v1558[4](v1539, &v263[*(v661 + 64)], v1559);
      v663 = v1547;
      v664 = SLODWORD(v1547[6].isa);
      v665 = v1561;
      Date.init()();
      v666 = sub_10023343C(v665);
      (*(v1565 + 8))(v665, v1564);
      v667 = v1546;
      v668 = sub_1003E8D0C((v1546 + v664), v666);

      *v667 = v668;
      v669 = v1545;
      sub_100010364(v667, v1545, &qword_100945FE8, qword_1007A6B20);

      sub_1003EB670(v669 + SLODWORD(v663[6].isa), v1576);
      v670 = v667;
      v671 = v1522;
      sub_100010364(v670, v1522, &qword_100945FE8, qword_1007A6B20);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v672 = SLODWORD(v663[6].isa);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000504F8(v671 + v672, _s10PredicatesO19CompletionPredicateOMa);
      v673 = swift_getKeyPath();
      v674 = [v660 uuid];
      v675 = v1568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1573 + 56))(v675, 0, 1, v1577);
      sub_100390EB8(v673, v675);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      sub_1000050A4(v1546, &qword_100945FE8, qword_1007A6B20);
      v662[1](v1539, v1559);
      goto LABEL_514;
    case 0x13u:
      v980 = *v263;
      v981 = sub_1000F5104(&qword_10093A560, &qword_100797768);
      v982 = v1558;
      v983 = &v263[*(v981 + 48)];
      v984 = v1535;
      v985 = v1559;
      v1558[4](v1535, v983, v1559);
      v986 = v1556;
      v982[2](v1556, v984, v985);
      sub_1003E83B8(v986, v1576);
      v994 = swift_getKeyPath();
      if (v980 >> 62)
      {
        v995 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v995 = *((v980 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v995)
      {
        *&v1572 = v994;
        v1578 = &_swiftEmptyArrayStorage;
        sub_100253038(v995);
        if (v995 < 0)
        {
LABEL_537:
          __break(1u);
          goto LABEL_538;
        }

        v996 = 0;
        v997 = (v1573 + 56);
        do
        {
          if ((v980 & 0xC000000000000001) != 0)
          {
            v998 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v998 = *&v980->clientIdentity[8 * v996 + 16];
          }

          v999 = v998;
          v1000 = [v998 uuid];
          v1001 = v1566;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v997)(v1001, 0, 1, v1577);
          v1002 = v1578;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100253218(0, *v1002->clientIdentity + 1, 1);
            v1002 = v1578;
          }

          v1004 = *v1002->clientIdentity;
          v1003 = *&v1002->clientIdentity[8];
          if (v1004 >= v1003 >> 1)
          {
            sub_100253218((v1003 > 1), v1004 + 1, 1);
            v1002 = v1578;
          }

          ++v996;
          *v1002->clientIdentity = v1004 + 1;
          sub_100031B58(v1566, v1002 + ((*(v1575 + 80) + 32) & ~*(v1575 + 80)) + *(v1575 + 72) * v1004, &unk_100939D90, "8\n\r");
        }

        while (v995 != v996);
        v980, v1005, v1006, v1007, v1008, v1009, v1010, v1011;
        v982 = v1558;
        v985 = v1559;
        v994 = v1572;
      }

      else
      {
        v980, v987, v988, v989, v990, v991, v992, v993;
        v1002 = &_swiftEmptyArrayStorage;
      }

      sub_100016EF8(v994, v1002, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v982[1])(v1535, v985);
      goto LABEL_493;
    case 0x14u:
      v583 = *v263;
      swift_storeEnumTagMultiPayload();
      v591 = swift_getKeyPath();
      if (v583 >> 62)
      {
        v592 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v592 = *((v583 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v592)
      {
        *&v1572 = v591;
        v1578 = &_swiftEmptyArrayStorage;
        sub_100253038(v592);
        if (v592 < 0)
        {
LABEL_533:
          __break(1u);
LABEL_534:
          __break(1u);
          goto LABEL_535;
        }

        v593 = 0;
        v594 = (v1573 + 56);
        do
        {
          if ((v583 & 0xC000000000000001) != 0)
          {
            v595 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v595 = *&v583->clientIdentity[8 * v593 + 16];
          }

          v596 = v595;
          v597 = [v595 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v594)(v245, 0, 1, v1577);
          v598 = v1578;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100253218(0, *v598->clientIdentity + 1, 1);
            v598 = v1578;
          }

          v600 = *v598->clientIdentity;
          v599 = *&v598->clientIdentity[8];
          if (v600 >= v599 >> 1)
          {
            sub_100253218((v599 > 1), v600 + 1, 1);
            v598 = v1578;
          }

          ++v593;
          *v598->clientIdentity = v600 + 1;
          sub_100031B58(v245, v598 + ((*(v1575 + 80) + 32) & ~*(v1575 + 80)) + *(v1575 + 72) * v600, &unk_100939D90, "8\n\r");
        }

        while (v592 != v593);
        v583, v601, v602, v603, v604, v605, v606, v607;
        v591 = v1572;
      }

      else
      {
        v583, v584, v585, v586, v587, v588, v589, v590;
        v598 = &_swiftEmptyArrayStorage;
      }

      sub_100016EF8(v591, v598, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_493:
      v382 = 0;
LABEL_494:
      v360 = 0;
      LODWORD(v1575) = 0;
      LOBYTE(v387) = 0;
      goto LABEL_420;
    case 0x15u:
      v623 = *v263;
      v624 = sub_1000F5104(&qword_100941B90, &unk_1007A7560);
      v625 = v1558;
      v626 = v1505;
      v627 = v1559;
      v1558[4](v1505, &v263[*(v624 + 48)], v1559);
      v628 = v1556;
      v625[2](v1556, v626, v627);
      sub_1003E83B8(v628, v1576);
      v629 = swift_getKeyPath();
      v630 = v1563;
      sub_1003E6ED0(v623);
      v632 = v631;
      v1563 = v630;
      v623, v633, v634, v635, v636, v637, v638, v639;
      sub_100016EF8(v629, v632, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v625[1])(v626, v627);
      goto LABEL_417;
    case 0x16u:
      v936 = *v263;
      swift_storeEnumTagMultiPayload();
      v937 = swift_getKeyPath();
      v938 = v1563;
      sub_1003E6ED0(v936);
      v940 = v939;
      v1563 = v938;
      v936, v941, v942, v943, v944, v945, v946, v947;
      v948 = &qword_100946088;
      v949 = &unk_1007A7690;
      goto LABEL_414;
    case 0x17u:
      v1048 = *v263;
      v1049 = sub_1000F5104(&unk_100942AF0, qword_1007A7520);
      v1050 = v1558;
      v1051 = v1556;
      v1052 = v1559;
      v1558[4](v1556, &v263[*(v1049 + 48)], v1559);
      v1053 = v1550;
      v1050[2](v1550, v1051, v1052);
      sub_1003E83B8(v1053, v1576);
      v1054 = swift_getKeyPath();
      v1055 = [(RDXPCStorePerformer *)v1048 uuid];
      v1056 = v1568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v360 = 1;
      (*(v1573 + 56))(v1056, 0, 1, v1577);
      sub_100390EB8(v1054, v1056);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (v1050[1])(v1051, v1052);
      goto LABEL_358;
    case 0x18u:
      v481 = *v263;
      v471 = *(v263 + 1);
      swift_storeEnumTagMultiPayload();
      v482 = swift_getKeyPath();
      v483 = sub_100270804(v481);
      v481, v484, v485, v486, v487, v488, v489, v490;
      sub_100016EF8(v482, v483, &qword_10093CB80, &qword_1007A7680, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v471)
      {
        goto LABEL_58;
      }

      goto LABEL_145;
    case 0x19u:
      v470 = *v263;
      v471 = *(v263 + 1);
      swift_storeEnumTagMultiPayload();
      v472 = swift_getKeyPath();
      v473 = sub_100270804(v470);
      v470, v474, v475, v476, v477, v478, v479, v480;
      sub_100016EF8(v472, v473, &qword_10093CB80, &qword_1007A7680, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v471)
      {
LABEL_58:
        v491 = swift_getKeyPath();
        v492 = [(RDXPCStorePerformer *)v471 uuid];
        v493 = v1568;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v1573 + 56))(v493, 0, 1, v1577);
        sub_100390EB8(v491, v493);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(*v1581->clientIdentity);
LABEL_136:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

LABEL_145:
      v382 = 0;
      goto LABEL_146;
    case 0x1Au:
      v361 = *v263;
      swift_storeEnumTagMultiPayload();
      v1093 = swift_getKeyPath();
      sub_1000F5104(&qword_10093EC20, &unk_10079D338);
      v1094 = (*(v1575 + 80) + 32) & ~*(v1575 + 80);
      v1095 = swift_allocObject();
      *(v1095 + 16) = xmmword_100791300;
      v1096 = [(RDXPCStorePerformer *)v361 uuid];
      v1097 = v1551;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v1098 = v1573;
      v1099 = v1577;
      (*(v1573 + 32))(v1095 + v1094, v1097, v1577);
      v360 = 1;
      (*(v1098 + 56))(v1095 + v1094, 0, 1, v1099);
      sub_100016EF8(v1093, v1095, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);
      goto LABEL_357;
    case 0x1Bu:
      v371 = *(sub_1000F5104(&qword_100946030, qword_1007A74D0) + 48);
      v372 = v1565;
      v373 = *(v1565 + 32);
      v374 = v1561;
      v375 = v1564;
      v373(v1561, v263, v1564);
      v376 = v1543;
      v373(v1543, &v263[v371], v375);
      swift_storeEnumTagMultiPayload();
      sub_1003EAE5C(v374, v376);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v377 = *(v372 + 8);
      v377(v376, v375);
      v377(v374, v375);
      goto LABEL_417;
    case 0x1Cu:
      v1057 = *v263;
      swift_storeEnumTagMultiPayload();
      v1065 = swift_getKeyPath();
      if (v1057 >> 62)
      {
        v1066 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v1066 = *((v1057 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v1066)
      {
        *&v1572 = v1065;
        v1578 = &_swiftEmptyArrayStorage;
        sub_100253038(v1066);
        if (v1066 < 0)
        {
LABEL_539:
          __break(1u);
LABEL_540:
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          JUMPOUT(0x10004CFC8);
        }

        v1067 = 0;
        v1068 = (v1573 + 56);
        do
        {
          if ((v1057 & 0xC000000000000001) != 0)
          {
            v1069 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v1069 = *&v1057->clientIdentity[8 * v1067 + 16];
          }

          v1070 = v1069;
          v1071 = [v1069 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v1068)(v241, 0, 1, v1577);
          v1072 = v1578;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100253218(0, *v1072->clientIdentity + 1, 1);
            v1072 = v1578;
          }

          v1074 = *v1072->clientIdentity;
          v1073 = *&v1072->clientIdentity[8];
          if (v1074 >= v1073 >> 1)
          {
            sub_100253218((v1073 > 1), v1074 + 1, 1);
            v1072 = v1578;
          }

          ++v1067;
          *v1072->clientIdentity = v1074 + 1;
          sub_100031B58(v241, v1072 + ((*(v1575 + 80) + 32) & ~*(v1575 + 80)) + *(v1575 + 72) * v1074, &unk_100939D90, "8\n\r");
        }

        while (v1066 != v1067);
        v1057, v1075, v1076, v1077, v1078, v1079, v1080, v1081;
        v1065 = v1572;
      }

      else
      {
        v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064;
        v1072 = &_swiftEmptyArrayStorage;
      }

      v1411 = v1065;
      v1412 = v1072;
      goto LABEL_508;
    case 0x1Du:
      v1082 = *v263;
      v1083 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
      v1084 = *(v1083 + 64);
      v1085 = v1541;
      sub_100031B58(&v263[*(v1083 + 48)], v1541, &unk_100938850, qword_100795AE0);
      v1086 = v1530;
      sub_100031B58(&v263[v1084], v1530, &unk_100938850, qword_100795AE0);
      swift_storeEnumTagMultiPayload();
      v1087 = v1507;
      sub_100010364(v1085, v1507, &unk_100938850, qword_100795AE0);
      v1088 = v1565;
      v1089 = *(v1565 + 48);
      v1090 = v1564;
      if (v1089(v1087, 1, v1564) == 1)
      {
        sub_1000050A4(v1087, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v1246 = v1481;
        (*(v1088 + 32))(v1481, v1087, v1090);
        v1247 = swift_getKeyPath();
        v1248 = v1562;
        (*(v1088 + 16))(v1562, v1246, v1090);
        (*(v1088 + 56))(v1248, 0, 1, v1090);
        sub_1003E9FFC(v1247, v1248);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(*v1581->clientIdentity);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1249 = v1246;
        v1086 = v1530;
        (*(v1088 + 8))(v1249, v1090);
      }

      v1250 = v1513;
      sub_100010364(v1086, v1513, &unk_100938850, qword_100795AE0);
      if (v1089(v1250, 1, v1090) == 1)
      {
        sub_1000050A4(v1250, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v1251 = v1565;
        v1252 = v1485;
        (*(v1565 + 32))(v1485, v1250, v1090);
        v1253 = swift_getKeyPath();
        v1254 = v1562;
        (*(v1251 + 16))(v1562, v1252, v1090);
        (*(v1251 + 56))(v1254, 0, 1, v1090);
        sub_1003EA414(v1253, v1254);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(*v1581->clientIdentity);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (*(v1251 + 8))(v1252, v1090);
      }

      v1255 = swift_getKeyPath();
      v1256 = v1563;
      v1257 = sub_1003E6C54(v1082);
      v1563 = v1256;
      v1082, v1258, v1259, v1260, v1261, v1262, v1263, v1264;
      sub_100016EF8(v1255, v1257, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000050A4(v1086, &unk_100938850, qword_100795AE0);
      v1245 = v1541;
      goto LABEL_513;
    case 0x1Eu:
      v691 = *v263;
      v692 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
      v693 = *(v692 + 64);
      v694 = v1542;
      sub_100031B58(&v263[*(v692 + 48)], v1542, &unk_100938850, qword_100795AE0);
      v695 = v1531;
      sub_100031B58(&v263[v693], v1531, &unk_100938850, qword_100795AE0);
      swift_storeEnumTagMultiPayload();
      v696 = v1508;
      sub_100010364(v694, v1508, &unk_100938850, qword_100795AE0);
      v697 = v1565;
      v698 = *(v1565 + 48);
      v699 = v1564;
      if (v698(v696, 1, v1564) == 1)
      {
        sub_1000050A4(v696, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v1226 = v1482;
        (*(v697 + 32))(v1482, v696, v699);
        v1227 = swift_getKeyPath();
        v1228 = v1562;
        (*(v697 + 16))(v1562, v1226, v699);
        (*(v697 + 56))(v1228, 0, 1, v699);
        sub_1003EA208(v1227, v1228);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(*v1581->clientIdentity);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1229 = v1226;
        v695 = v1531;
        (*(v697 + 8))(v1229, v699);
      }

      v1230 = v1515;
      sub_100010364(v695, v1515, &unk_100938850, qword_100795AE0);
      if (v698(v1230, 1, v699) == 1)
      {
        sub_1000050A4(v1230, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v1231 = v1565;
        v1232 = v1486;
        (*(v1565 + 32))(v1486, v1230, v699);
        v1233 = swift_getKeyPath();
        v1234 = v1562;
        (*(v1231 + 16))(v1562, v1232, v699);
        (*(v1231 + 56))(v1234, 0, 1, v699);
        sub_1003EA818(v1233, v1234);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10004F91C(*v1581->clientIdentity);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (*(v1231 + 8))(v1232, v699);
      }

      v1235 = swift_getKeyPath();
      v1236 = v1563;
      v1237 = sub_1003E6C54(v691);
      v1563 = v1236;
      v691, v1238, v1239, v1240, v1241, v1242, v1243, v1244;
      sub_100016EF8(v1235, v1237, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000050A4(v695, &unk_100938850, qword_100795AE0);
      v1245 = v1542;
      goto LABEL_513;
    case 0x1Fu:
      v568 = *v263;
      swift_storeEnumTagMultiPayload();
      v569 = swift_getKeyPath();
      sub_1000F5104(&unk_100938E80, &unk_1007959D0);
      v570 = swift_allocObject();
      v360 = 1;
      sub_100050238(v570, 1);
      v572 = v571;
      sub_1000060C8(0, &qword_100940350, off_1008D4130);
      v573 = [swift_getObjCClassFromMetadata() entity];
      v572[3] = sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
      *v572 = v573;
      REMCDList.cleanUpAfterLocalObjectMerge()();
      sub_1003EB1AC(v569, 24868, 0xE200000000000000, 0xD000000000000016, 0x80000001007F7EA0, v568, v574);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      goto LABEL_102;
    case 0x20u:
      v700 = *v263;
      v701 = v1560;
      swift_storeEnumTagMultiPayload();
      *&v1572 = v700;
      v1570 = sub_10025D30C(v700);
      if (!v1570)
      {
        goto LABEL_483;
      }

      v710 = 0;
      v1514 = (v1497 + 32);
      v1513 = (v1497 + 16);
      v1512 = (v1497 + 88);
      v1509 = (v1497 + 8);
      v1540 = (v1495 + 8);
      v1539 = (v1495 + 32);
      v1538 = (v1495 + 16);
      v1537 = (v1495 + 88);
      v1544 = v1496 + 32;
      v1543 = v1496 + 104;
      *&v709 = 136315138;
      v1545 = v709;
      v1551 = v1496 + 8;
      LODWORD(v1569) = enum case for REMSearchCriterion.itemTypes(_:);
      LODWORD(v1566) = enum case for REMSearchCriterion.objectID(_:);
      LODWORD(v1558) = enum case for REMSearchCriterion.accountID(_:);
      LODWORD(v1550) = enum case for REMSearchCriterion.listID(_:);
      LODWORD(v1542) = enum case for REMSearchCriterion.textualField(_:);
      LODWORD(v1536) = enum case for REMSearchCriterion.displayName(_:);
      LODWORD(v1531) = enum case for REMSearchCriterion.isCompleted(_:);
      LODWORD(v1529) = enum case for REMSearchCriterion.completionDate(_:);
      LODWORD(v1525) = enum case for REMSearchCriterion.hasLocation(_:);
      LODWORD(v1524) = enum case for REMSearchCriterion.location(_:);
      LODWORD(v1522) = enum case for REMSearchCriterion.dueDate(_:);
      LODWORD(v1521) = enum case for REMSearchCriterion.hasDueDate(_:);
      LODWORD(v1520) = enum case for REMSearchCriterion.modifiedDate(_:);
      LODWORD(v1519) = enum case for REMSearchCriterion.creationDate(_:);
      LODWORD(v1518) = enum case for REMSearchCriterion.isRecurrent(_:);
      LODWORD(v1517) = enum case for REMSearchCriterion.isFlagged(_:);
      LODWORD(v1516) = enum case for REMSearchCriterion.spotlightItemIdentifier(_:);
      LODWORD(v1515) = enum case for REMSearchCriterion.daCalendarItemUniqueIdentifier(_:);
      v701 = v1560;
      LODWORD(v1511) = enum case for REMSearchCriterion.listType(_:);
      LODWORD(v1510) = enum case for REMSearchableListType.grocery(_:);
      LODWORD(v1508) = enum case for REMSearchableListType.none(_:);
      LODWORD(v1535) = enum case for REMStringMatchingStyle.exact(_:);
      LODWORD(v1530) = enum case for REMStringMatchingStyle.prefix(_:);
      LODWORD(v1526) = enum case for REMStringMatchingStyle.word(_:);
      LODWORD(v1541) = enum case for REMSearchCriterion.Inclusion.includeForSiri(_:);
      v435 = v1552;
      v1567 = v1552 + 88;
      v1559 = v1552 + 96;
      *&v1575 = v1552 + 8;
      v1523 = (v1565 + 48);
      v1534 = (v1573 + 56);
      v711 = v1553;
      v434 = v1557;
      v712 = v1554;
      v713 = v1555;
      v1556 = (v1552 + 16);
      while (2)
      {
        if (v710 < *(v1572 + 16))
        {
          v715 = *(v435 + 2);
          v715(v713, v1572 + ((v435[80] + 32) & ~v435[80]) + *(v435 + 9) * v710, v711);
          v715(v712, v713, v711);
          v716 = (*(v435 + 11))(v712, v711);
          if (v716 == v1569)
          {
            v714 = *v1575;
            (*v1575)(v713, v711);
            v714(v712, v711);
            v701 = v1560;
            v277 = 0x4F4E203D3D204B25;
            goto LABEL_155;
          }

          if (v716 == v1566)
          {
            (*v1559)(v712, v711);
            v717 = *v712;
            v718 = swift_getKeyPath();
            v719 = v1563;
            v720 = sub_1003E6C54(v717);
            v1563 = v719;
            v717, v721, v722, v723, v724, v725, v726, v727;
            sub_100016EF8(v718, v720, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v713 = v1555;
            (*v1575)(v1555, v711);
LABEL_162:
            v277 = 0x4F4E203D3D204B25;
LABEL_163:
            v434 = v1557;
LABEL_164:
            v712 = v1554;
            v701 = v1560;
            goto LABEL_155;
          }

          if (v716 == v1558)
          {
            (*v1575)(v712, v711);
LABEL_167:
            if (qword_100936028 != -1)
            {
              swift_once();
            }

            v728 = type metadata accessor for Logger();
            sub_100006654(v728, qword_100945FD0);
            v715(v434, v713, v711);
            v729 = Logger.logObject.getter();
            v730 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v729, v730))
            {
              v731 = swift_slowAlloc();
              v732 = swift_slowAlloc();
              v1578 = v732;
              *v731 = v1545;
              v715(v1533, v1557, v711);
              v733 = String.init<A>(describing:)();
              v735 = v734;
              v736 = *v1575;
              (*v1575)(v1557, v1553);
              v737 = sub_10000668C(v733, v735, &v1578);
              v735, v738, v739, v740, v741, v742, v743, v744;
              *(v731 + 4) = v737;
              v435 = v1552;
              _os_log_impl(&_mh_execute_header, v729, v730, "Dropping unsupported criterion for searching REMCDReminder. {criterion: %s}", v731, 0xCu);
              sub_10000607C(v732);
              v434 = v1557;

              v712 = v1554;

              v713 = v1555;
              v736(v1555, v1553);
              v711 = v1553;
              v277 = 0x4F4E203D3D204B25;
            }

            else
            {

              v753 = *v1575;
              (*v1575)(v434, v711);
              v754 = v435;
              v755 = v710;
              v756 = v434;
              v757 = v1555;
              v753(v1555, v711);
              v277 = 0x4F4E203D3D204B25;
              v713 = v757;
              v434 = v756;
              v710 = v755;
              v435 = v754;
            }

            goto LABEL_177;
          }

          if (v716 == v1550)
          {
            (*v1559)(v712, v711);
            v1547 = *v712;
            v745 = sub_1000F5104(&qword_100946020, &unk_1007A73E8);
            v746 = v1549;
            (*v1544)(v1548, &v712[*(v745 + 48)], v1549);
            v747 = v1527;
            (*v1543)(v1527, v1541, v746);
            v748 = static REMSearchCriterion.Inclusion.== infix(_:_:)();
            v1546 = *v1551;
            (v1546)(v747, v746);
            if ((v748 & 1) == 0)
            {
              if (qword_100936028 != -1)
              {
                swift_once();
              }

              v767 = type metadata accessor for Logger();
              sub_100006654(v767, qword_100945FD0);
              v768 = v1488;
              v713 = v1555;
              v715(v1488, v1555, v711);
              v769 = Logger.logObject.getter();
              v770 = static os_log_type_t.fault.getter();
              if (os_log_type_enabled(v769, v770))
              {
                v771 = v768;
                v772 = swift_slowAlloc();
                v1507 = swift_slowAlloc();
                v1578 = v1507;
                *v772 = v1545;
                v715(v1533, v768, v711);
                v773 = String.init<A>(describing:)();
                v775 = v774;
                v776 = *v1575;
                (*v1575)(v771, v1553);
                v777 = sub_10000668C(v773, v775, &v1578);
                v778 = v775;
                v711 = v1553;
                v778, v779, v780, v781, v782, v783, v784, v785;
                *(v772 + 4) = v777;
                _os_log_impl(&_mh_execute_header, v769, v770, "Dropping unsupported criterion for searching REMCDReminder. {criterion: %s}", v772, 0xCu);
                sub_10000607C(v1507);
                v435 = v1552;

                v713 = v1555;

                (v1546)(v1548, v1549);
                v776(v713, v711);
              }

              else
              {

                v795 = *v1575;
                (*v1575)(v768, v711);
                (v1546)(v1548, v1549);
                v795(v713, v711);
              }

              goto LABEL_162;
            }

            v749 = swift_getKeyPath();
            v750 = v1547;
            v751 = [v1547 uuid];
            v752 = v1568;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            (*v1534)(v752, 0, 1, v1577);
            sub_100390EB8(v749, v752);

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            (v1546)(v1548, v1549);
            v713 = v1555;
            (*v1575)(v1555, v711);
            v277 = 0x4F4E203D3D204B25;
            v434 = v1557;
            v701 = v1560;
LABEL_155:
            if (v1570 == ++v710)
            {
LABEL_483:
              v1572, v702, v703, v704, v705, v706, v707, v708;
              sub_1003EB670(v701, v1576);
              goto LABEL_514;
            }

            continue;
          }

          if (v716 == v1542)
          {
            (*v1559)(v712, v711);
            v758 = v712;
            v759 = *v712;
            v760 = *(v712 + 1);
            v761 = &v758[*(sub_1000F5104(&qword_100945098, qword_1007B11A0) + 48)];
            v762 = v1528;
            v763 = v1532;
            (*v1539)(v1528, v761, v1532);
            v764 = v1489;
            (*v1538)(v1489, v762, v763);
            v765 = (*v1537)(v764, v763);
            if (v765 != v1535)
            {
              v277 = 0x4F4E203D3D204B25;
              v435 = v1552;
              if (v765 != v1530 && v765 != v1526)
              {
                goto LABEL_540;
              }

              v794 = swift_getKeyPath();
              sub_1003EEA00(v794, v759, v760, 6, &unk_100939F10, &qword_100797F30);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v434 = v1557;
              if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              (*v1540)(v1528, v1532);
              v713 = v1555;
              (*v1575)(v1555, v711);
              goto LABEL_164;
            }

            v766 = swift_getKeyPath();
            sub_1003910F4(v766, v759, v760);

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v277 = 0x4F4E203D3D204B25;
            v435 = v1552;
            if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            (*v1540)(v1528, v1532);
            v713 = v1555;
            (*v1575)(v1555, v711);
            goto LABEL_163;
          }

          if (v716 == v1536)
          {
            (*v1559)(v712, v711);
            *(v712 + 1), v786, v787, v788, v789, v790, v791, v792;
            v793 = sub_1000F5104(&qword_100945098, qword_1007B11A0);
            (*v1540)(&v712[*(v793 + 48)], v1532);
            goto LABEL_167;
          }

          if (v716 == v1531)
          {
            (*v1575)(v713, v711);
            sub_1000504F8(v701, _s10PredicatesO19CompletionPredicateOMa);
            (*v1559)(v712, v711);
            v277 = 0x4F4E203D3D204B25;
            swift_storeEnumTagMultiPayload();
            goto LABEL_155;
          }

          v277 = 0x4F4E203D3D204B25;
          if (v716 == v1529)
          {
            (*v1559)(v712, v711);
            if (qword_100936028 != -1)
            {
              swift_once();
            }

            v796 = type metadata accessor for Logger();
            sub_100006654(v796, qword_100945FD0);
            v797 = v1572;

            v1547 = Logger.logObject.getter();
            v798 = static os_log_type_t.fault.getter();
            v797, v799, v800, v801, v802, v803, v804, v805;
            LODWORD(v1546) = v798;
            if (os_log_type_enabled(v1547, v798))
            {
              v806 = swift_slowAlloc();
              v807 = swift_slowAlloc();
              v1578 = v807;
              *v806 = v1545;
              v808 = Array.description.getter();
              v810 = v809;
              v811 = sub_10000668C(v808, v809, &v1578);
              v812 = v810;
              v435 = v1552;
              v812, v813, v814, v815, v816, v817, v818, v819;
              *(v806 + 4) = v811;
              v277 = 0x4F4E203D3D204B25;
              v820 = v1547;
              _os_log_impl(&_mh_execute_header, v1547, v1546, "Searching REMCDReminder by completionDate is unsupported. {criteria: %s}", v806, 0xCu);
              sub_10000607C(v807);
              v434 = v1557;

              v713 = v1555;
            }

            else
            {
            }

            (*v1575)(v713, v711);
            v854 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
            v712 = v1554;
            sub_1000050A4(v1554 + *(v854 + 48), &unk_100938850, qword_100795AE0);
            v855 = v712;
LABEL_211:
            sub_1000050A4(v855, &unk_100938850, qword_100795AE0);
LABEL_177:
            v701 = v1560;
            goto LABEL_155;
          }

          if (v716 == v1525)
          {
LABEL_205:
            if (qword_100936028 != -1)
            {
              swift_once();
            }

            v829 = type metadata accessor for Logger();
            sub_100006654(v829, qword_100945FD0);
            v830 = v1572;

            v1547 = Logger.logObject.getter();
            v831 = static os_log_type_t.fault.getter();
            v830, v832, v833, v834, v835, v836, v837, v838;
            LODWORD(v1546) = v831;
            if (os_log_type_enabled(v1547, v831))
            {
              v839 = swift_slowAlloc();
              v840 = swift_slowAlloc();
              v1578 = v840;
              *v839 = v1545;
              v841 = Array.description.getter();
              v843 = v842;
              v844 = sub_10000668C(v841, v842, &v1578);
              v845 = v843;
              v435 = v1552;
              v845, v846, v847, v848, v849, v850, v851, v852;
              *(v839 + 4) = v844;
              v277 = 0x4F4E203D3D204B25;
              v853 = v1547;
              _os_log_impl(&_mh_execute_header, v1547, v1546, "Searching REMCDReminder by location is unsupported. {criteria: %s}", v839, 0xCu);
              sub_10000607C(v840);
              v434 = v1557;

              v713 = v1555;
            }

            else
            {
            }

            (*v1575)(v713, v711);
            goto LABEL_164;
          }

          if (v716 == v1524)
          {
            (*v1559)(v712, v711);
            *(v712 + 1), v821, v822, v823, v824, v825, v826, v827;
            v828 = sub_1000F5104(&qword_100945098, qword_1007B11A0);
            (*v1540)(&v712[*(v828 + 48)], v1532);
            goto LABEL_205;
          }

          if (v716 == v1522)
          {
            (*v1559)(v712, v711);
            v856 = *(sub_1000F5104(&qword_100938C18, &qword_1007957A0) + 48);
            v857 = v1475;
            sub_100031B58(v712, v1475, &unk_100938850, qword_100795AE0);
            sub_100031B58(&v712[v856], v1474, &unk_100938850, qword_100795AE0);
            v858 = *v1523;
            if ((*v1523)(v857, 1, v1564) != 1)
            {
              v859 = v858;
              v860 = swift_getKeyPath();
              v861 = v1562;
              sub_100010364(v1475, v1562, &unk_100938850, qword_100795AE0);
              sub_1003EA208(v860, v861);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v434 = v1557;
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v712 = v1554;
              v858 = v859;
            }

            v862 = v1474;
            v863 = v858(v1474, 1, v1564);
            v713 = v1555;
            if (v863 != 1)
            {
              v864 = swift_getKeyPath();
              v865 = v1562;
              sub_100010364(v862, v1562, &unk_100938850, qword_100795AE0);
              sub_1003EA414(v864, v865);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v713 = v1555;
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v712 = v1554;
            }

            (*v1575)(v713, v711);
            sub_1000050A4(v862, &unk_100938850, qword_100795AE0);
            v855 = v1475;
            goto LABEL_211;
          }

          if (v716 == v1521)
          {
            (*v1559)(v712, v711);
            v866 = *v712;
            v867 = swift_getKeyPath();
            if (v866 == 1)
            {
              v868 = 555764517;
            }

            else
            {
              v868 = 1025526565;
            }

            sub_10000E72C(v867, v868 | 0x696E203D00000000, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);
            goto LABEL_239;
          }

          if (v716 == v1520)
          {
            v869 = v1554;
            (*v1559)(v1554, v1553);
            v870 = *(sub_1000F5104(&qword_100938C18, &qword_1007957A0) + 48);
            v871 = v1472;
            sub_100031B58(v869, v1472, &unk_100938850, qword_100795AE0);
            sub_100031B58(v869 + v870, v1473, &unk_100938850, qword_100795AE0);
            v872 = *v1523;
            if ((*v1523)(v871, 1, v1564) != 1)
            {
              v873 = swift_getKeyPath();
              v874 = v1562;
              sub_100010364(v1472, v1562, &unk_100938850, qword_100795AE0);
              sub_1003EA208(v873, v874);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            if (v872(v1473, 1, v1564) != 1)
            {
              v875 = swift_getKeyPath();
              v876 = v1562;
              sub_100010364(v1473, v1562, &unk_100938850, qword_100795AE0);
              sub_1003EA414(v875, v876);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            v713 = v1555;
            v711 = v1553;
            (*v1575)(v1555, v1553);
            sub_1000050A4(v1473, &unk_100938850, qword_100795AE0);
            v877 = v1472;
          }

          else
          {
            if (v716 != v1519)
            {
              if (v716 == v1518)
              {
                v886 = v1554;
                (*v1559)(v1554, v1553);
                v887 = *v886;
                v888 = swift_getKeyPath();
                if (v887 == 1)
                {
                  sub_10004D350(v888, 0);
                }

                else
                {
                  sub_10004D178(v888, 0);
                }
              }

              else if (v716 == v1517)
              {
                v889 = v1554;
                (*v1559)(v1554, v1553);
                v890 = *v889;
                v891 = swift_getKeyPath();
                if (v890 == 1)
                {
                  sub_1003EB48C(v891, 0);
                }

                else
                {
                  sub_100390F14(v891, 0);
                }
              }

              else
              {
                if (v716 == v1516)
                {
                  v892 = *v1575;
                  (*v1575)(v1554, v1553);
                  if (qword_100936028 != -1)
                  {
                    swift_once();
                  }

                  v893 = type metadata accessor for Logger();
                  sub_100006654(v893, qword_100945FD0);
                  v894 = Logger.logObject.getter();
                  v895 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v894, v895))
                  {
                    v896 = swift_slowAlloc();
                    *v896 = 0;
                    _os_log_impl(&_mh_execute_header, v894, v895, "Searching by spotlightItemIdentifier in CoreData is unsupported", v896, 2u);
                  }

                  v713 = v1555;
                  v711 = v1553;
                  v892(v1555, v1553);
                  v435 = v1552;
                  goto LABEL_163;
                }

                if (v716 != v1515)
                {
                  if (v716 != v1511)
                  {
                    goto LABEL_540;
                  }

                  v901 = v1554;
                  (*v1559)(v1554, v1553);
                  v902 = v1468;
                  v903 = v901;
                  v904 = v1469;
                  (*v1514)(v1468, v903, v1469);
                  v905 = v1467;
                  (*v1513)(v1467, v902, v904);
                  v906 = (*v1512)(v905, v904);
                  if (v906 == v1510)
                  {
                    v907 = swift_getKeyPath();
                    sub_10000E72C(v907, 0x4559203D3D204B25, 0xE900000000000053, &unk_100939F10, &qword_100797F30);

                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  }

                  else
                  {
                    if (v906 != v1508)
                    {
                      goto LABEL_540;
                    }

                    if (qword_100936028 != -1)
                    {
                      swift_once();
                    }

                    v908 = type metadata accessor for Logger();
                    sub_100006654(v908, qword_100945FD0);
                    v909 = Logger.logObject.getter();
                    v910 = static os_log_type_t.default.getter();
                    if (os_log_type_enabled(v909, v910))
                    {
                      v911 = swift_slowAlloc();
                      *v911 = 0;
                      _os_log_impl(&_mh_execute_header, v909, v910, "Dropping unsupported .none list type criterion", v911, 2u);
                    }
                  }

                  (*v1509)(v1468, v1469);
                  goto LABEL_242;
                }

                v897 = v1554;
                (*v1559)(v1554, v1553);
                v898 = *v897;
                v899 = v897[1];
                v900 = swift_getKeyPath();
                sub_1003910F4(v900, v898, v899);
              }

LABEL_239:

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_242:
              v713 = v1555;
              v711 = v1553;
              (*v1575)(v1555, v1553);
              v435 = v1552;
              goto LABEL_163;
            }

            v878 = v1554;
            (*v1559)(v1554, v1553);
            v879 = *(sub_1000F5104(&qword_100938C18, &qword_1007957A0) + 48);
            v880 = v1470;
            sub_100031B58(v878, v1470, &unk_100938850, qword_100795AE0);
            sub_100031B58(v878 + v879, v1471, &unk_100938850, qword_100795AE0);
            v881 = *v1523;
            if ((*v1523)(v880, 1, v1564) != 1)
            {
              v882 = swift_getKeyPath();
              v883 = v1562;
              sub_100010364(v1470, v1562, &unk_100938850, qword_100795AE0);
              sub_1003EA208(v882, v883);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            if (v881(v1471, 1, v1564) != 1)
            {
              v884 = swift_getKeyPath();
              v885 = v1562;
              sub_100010364(v1471, v1562, &unk_100938850, qword_100795AE0);
              sub_1003EA414(v884, v885);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            v713 = v1555;
            v711 = v1553;
            (*v1575)(v1555, v1553);
            sub_1000050A4(v1471, &unk_100938850, qword_100795AE0);
            v877 = v1470;
          }

          sub_1000050A4(v877, &unk_100938850, qword_100795AE0);
          v435 = v1552;
          goto LABEL_163;
        }

        break;
      }

      __break(1u);
LABEL_519:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_51:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v434 + 1))(v277, v435);
      goto LABEL_417;
    case 0x21u:
      v431 = *v263;
      v432 = v263[8];
      LODWORD(v387) = (v432 - 2) < 5 || (v432 & 1) == 0;
      swift_storeEnumTagMultiPayload();
      v1143 = swift_getKeyPath();
      v1144 = [(RDXPCStorePerformer *)v431 uuid];
      v1145 = v1568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v1146 = *(v1573 + 56);
      LODWORD(v1575) = 1;
      v1146(v1145, 0, 1, v1577);
      sub_100390EB8(v1143, v1145);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v360 = 0;
      goto LABEL_438;
    case 0x22u:
      v344 = *v263;
      swift_storeEnumTagMultiPayload();
      v378 = swift_getKeyPath();
      v379 = [(RDXPCStorePerformer *)v344 uuid];
      v380 = v1568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v381 = *(v1573 + 56);
      LODWORD(v1575) = 1;
      v381(v380, 0, 1, v1577);
      sub_100390EB8(v378, v380);
      goto LABEL_19;
    case 0x23u:
      v361 = *v263;
      swift_storeEnumTagMultiPayload();
      v362 = swift_getKeyPath();
      v363 = [(RDXPCStorePerformer *)v361 uuid];
      v364 = v1568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v360 = 1;
      (*(v1573 + 56))(v364, 0, 1, v1577);
      sub_100390EB8(v362, v364);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v365 = swift_getKeyPath();
      sub_100391108(v365, 1);
LABEL_357:

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_358;
    case 0x24u:
      v344 = *v263;
      swift_storeEnumTagMultiPayload();
      v366 = swift_getKeyPath();
      v367 = [(RDXPCStorePerformer *)v344 uuid];
      v368 = v1568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v369 = *(v1573 + 56);
      LODWORD(v1575) = 1;
      v369(v368, 0, 1, v1577);
      sub_100390EB8(v366, v368);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v370 = swift_getKeyPath();
      sub_1003EB48C(v370, 0);
      goto LABEL_19;
    case 0x25u:
      v344 = *v263;
      swift_storeEnumTagMultiPayload();
      v345 = swift_getKeyPath();
      v346 = [(RDXPCStorePerformer *)v344 uuid];
      v347 = v1568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v348 = *(v1573 + 56);
      LODWORD(v1575) = 1;
      v348(v347, 0, 1, v1577);
      sub_100390EB8(v345, v347);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v349 = swift_getKeyPath();
      sub_10004D350(v349, 0);
LABEL_19:

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v382 = 0;
      v360 = 0;
      goto LABEL_419;
    case 0x26u:
      v1091 = *v263;
      v1092 = sub_1000F5104(&unk_100939F00, &unk_1007972A0);
      v432 = v263[*(v1092 + 64)];
      sub_1003EB670(&v263[*(v1092 + 48)], v277);
      LODWORD(v387) = (v432 - 2) < 5 || (v432 & 1) == 0;
      sub_10004DCBC(v277, v1576, _s10PredicatesO19CompletionPredicateOMa);
      v1155 = swift_getKeyPath();
      v1156 = [(RDXPCStorePerformer *)v1091 uuid];
      v1157 = v1568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1573 + 56))(v1157, 0, 1, v1577);
      sub_100390EB8(v1155, v1157);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      sub_1000504F8(v277, _s10PredicatesO19CompletionPredicateOMa);
LABEL_374:
      v360 = 0;
      LODWORD(v1575) = 0;
      goto LABEL_438;
    case 0x27u:
      v951 = *v263;
      v952 = sub_1000F5104(&qword_100946018, qword_1007A71C8);
      sub_100031B58(&v263[*(v952 + 48)], v1536, &unk_100938850, qword_100795AE0);
      v960 = swift_getKeyPath();
      if (v951 >> 62)
      {
        v961 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v961 = *((v951 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v962 = v1576;
      v963 = v1564;
      if (v961)
      {
        *&v1572 = v960;
        v1578 = &_swiftEmptyArrayStorage;
        sub_100253038(v961);
        if (v961 < 0)
        {
LABEL_536:
          __break(1u);
          goto LABEL_537;
        }

        v964 = 0;
        v965 = (v1573 + 56);
        do
        {
          if ((v951 & 0xC000000000000001) != 0)
          {
            v966 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v966 = *&v951->clientIdentity[8 * v964 + 16];
          }

          v967 = v966;
          v968 = [v966 uuid];
          v969 = v1567;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v965)(v969, 0, 1, v1577);
          v970 = v1578;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100253218(0, *v970->clientIdentity + 1, 1);
            v970 = v1578;
          }

          v972 = *v970->clientIdentity;
          v971 = *&v970->clientIdentity[8];
          if (v972 >= v971 >> 1)
          {
            sub_100253218((v971 > 1), v972 + 1, 1);
            v970 = v1578;
          }

          ++v964;
          *v970->clientIdentity = v972 + 1;
          sub_100031B58(v1567, v970 + ((*(v1575 + 80) + 32) & ~*(v1575 + 80)) + *(v1575 + 72) * v972, &unk_100939D90, "8\n\r");
        }

        while (v961 != v964);
        v951, v973, v974, v975, v976, v977, v978, v979;
        v963 = v1564;
        v962 = v1576;
        v960 = v1572;
      }

      else
      {
        v951, v953, v954, v955, v956, v957, v958, v959;
        v970 = &_swiftEmptyArrayStorage;
      }

      sub_100016EF8(v960, v970, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1413 = v1498;
      sub_100031B58(v1536, v1498, &unk_100938850, qword_100795AE0);
      v1414 = v1565;
      if ((*(v1565 + 48))(v1413, 1, v963) == 1)
      {
        sub_1000050A4(v1413, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v1415 = *(v1414 + 32);
        v1416 = v1476;
        v1415(v1476, v1413, v963);
        v1415(v962, v1416, v963);
      }

      swift_storeEnumTagMultiPayload();
      goto LABEL_493;
    case 0x28u:
      v457 = *v263;
      v456 = *(v263 + 1);
      v458 = sub_1000F5104(&qword_100946010, &qword_1007A71C0);
      v459 = v1516;
      sub_100031B58(&v263[*(v458 + 64)], v1516, &unk_100938850, qword_100795AE0);
      v460 = v1511;
      sub_100010364(v459, v1511, &unk_100938850, qword_100795AE0);
      v461 = v1565;
      v462 = v1564;
      if ((*(v1565 + 48))(v460, 1, v1564) == 1)
      {
        sub_1000050A4(v460, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v1189 = *(v461 + 32);
        v1190 = v1478;
        v1189(v1478, v460, v462);
        v1189(v1576, v1190, v462);
      }

      swift_storeEnumTagMultiPayload();
      v1191 = v1561;
      Date.init()();
      sub_10023343C(v1191);
      (*(v461 + 8))(v1191, v462);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1192 = swift_getKeyPath();
      v1193 = [v456 uuid];
      v1194 = v1568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v360 = 1;
      (*(v1573 + 56))(v1194, 0, 1, v1577);
      sub_100390EB8(v1192, v1194);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_517;
    case 0x29u:
      v577 = *v263;
      v578 = &v263[*(sub_1000F5104(&qword_100946008, &qword_1007A71B8) + 48)];
      v579 = v1537;
      sub_100031B58(v578, v1537, &unk_100938850, qword_100795AE0);
      v580 = v1514;
      sub_100010364(v579, v1514, &unk_100938850, qword_100795AE0);
      v581 = v1565;
      v582 = v1564;
      if ((*(v1565 + 48))(v580, 1, v1564) == 1)
      {
        sub_1000050A4(v580, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v1199 = *(v581 + 32);
        v1200 = v1479;
        v1199(v1479, v580, v582);
        v1199(v1576, v1200, v582);
      }

      swift_storeEnumTagMultiPayload();
      v1208 = swift_getKeyPath();
      if (v577 >> 62)
      {
        v1209 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v1209 = *((v577 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v1209)
      {
        *&v1572 = v1208;
        v1578 = &_swiftEmptyArrayStorage;
        sub_100253038(v1209);
        if (v1209 < 0)
        {
LABEL_532:
          __break(1u);
          goto LABEL_533;
        }

        v1210 = 0;
        v1211 = (v1573 + 56);
        do
        {
          if ((v577 & 0xC000000000000001) != 0)
          {
            v1212 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v1212 = *&v577->clientIdentity[8 * v1210 + 16];
          }

          v1213 = v1212;
          v1214 = [v1212 uuid];
          v1215 = v1569;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v1211)(v1215, 0, 1, v1577);
          v1216 = v1578;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100253218(0, *v1216->clientIdentity + 1, 1);
            v1216 = v1578;
          }

          v1218 = *v1216->clientIdentity;
          v1217 = *&v1216->clientIdentity[8];
          if (v1218 >= v1217 >> 1)
          {
            sub_100253218((v1217 > 1), v1218 + 1, 1);
            v1216 = v1578;
          }

          ++v1210;
          *v1216->clientIdentity = v1218 + 1;
          sub_100031B58(v1569, v1216 + ((*(v1575 + 80) + 32) & ~*(v1575 + 80)) + *(v1575 + 72) * v1218, &unk_100939D90, "8\n\r");
        }

        while (v1209 != v1210);
        v577, v1219, v1220, v1221, v1222, v1223, v1224, v1225;
        v1208 = v1572;
      }

      else
      {
        v577, v1201, v1202, v1203, v1204, v1205, v1206, v1207;
        v1216 = &_swiftEmptyArrayStorage;
      }

      sub_100016EF8(v1208, v1216, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1245 = v1537;
LABEL_513:
      sub_1000050A4(v1245, &unk_100938850, qword_100795AE0);
LABEL_514:
      v382 = 0;
      v360 = 1;
LABEL_515:
      LODWORD(v1575) = 1;
      LOBYTE(v387) = 1;
      goto LABEL_420;
    case 0x2Au:
      v1012 = *v263;
      swift_storeEnumTagMultiPayload();
      v1013 = swift_getKeyPath();
      v1014 = sub_100270804(v1012);
      v1012, v1015, v1016, v1017, v1018, v1019, v1020, v1021;
      sub_100016EF8(v1013, v1014, &qword_10093CB80, &qword_1007A7680, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1022 = &_swiftEmptyArrayStorage;
      v1578 = &_swiftEmptyArrayStorage;
      v1023 = static CharacterSet.hashtagTokenPrefixCharacterArray.getter();
      v1031 = v1023;
      v1032 = *(v1023 + 16);
      if (v1032)
      {
        v1580 = &_swiftEmptyArrayStorage;
        sub_100253020(v1032);
        v1033 = 32;
        v1022 = v1580;
        v1034 = v1563;
        do
        {
          v1035 = sub_1003E9E88(*(&v1031->super.isa + v1033));
          v1037 = v1036;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100026EF4(0, *v1022->clientIdentity + 1, 1);
            v1022 = v1580;
          }

          v1046 = *v1022->clientIdentity;
          v1045 = *&v1022->clientIdentity[8];
          if (v1046 >= v1045 >> 1)
          {
            sub_100026EF4((v1045 > 1), v1046 + 1, 1);
            v1022 = v1580;
          }

          *v1022->clientIdentity = v1046 + 1;
          v1047 = v1022 + 16 * v1046;
          *(v1047 + 4) = v1035;
          *(v1047 + 5) = v1037;
          v1033 += 4;
          --v1032;
        }

        while (v1032);
        v1031, v1038, v1039, v1040, v1041, v1042, v1043, v1044;
      }

      else
      {
        v1023, v1024, v1025, v1026, v1027, v1028, v1029, v1030;
        v1034 = v1563;
      }

      v1417 = sub_10025D30C(v1022);
      v1563 = v1034;
      if (v1417)
      {
        v1425 = v1417;
        if (v1417 < 1)
        {
LABEL_538:
          __break(1u);
          goto LABEL_539;
        }

        *&v1572 = v1022;
        v1426 = &v1022->clientIdentity[24];
        v1575 = xmmword_100791340;
        do
        {
          v1427 = *(v1426 - 1);
          v1428 = *v1426;
          v1429 = swift_getKeyPath();
          sub_1000F5104(&qword_100946000, qword_1007A7178);
          v1430 = swift_initStackObject();
          v1431 = v1575;
          *(v1430 + 16) = v1575;
          *(v1430 + 32) = v1431;
          swift_setDeallocating();
          swift_deallocClassInstance();
          swift_bridgeObjectRetain_n();
          sub_1003EEA00(v1429, v1427, v1428, 6, &unk_100939F10, &qword_100797F30);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          sub_10004F91C(*v1578->clientIdentity);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1432 = swift_getKeyPath();
          v1433 = swift_initStackObject();
          v1434 = sub_100050238(v1433, 2);
          *v1435 = v1575;
          v1436 = *(v1434 + 32);
          v1437 = *(v1434 + 40);
          v1434, v1435, v1438, v1439, v1440, v1441, v1442, v1443;
          if ((v1437 & ~v1436) != 0)
          {
            v1444 = v1437;
          }

          else
          {
            v1444 = 0;
          }

          sub_1003EEA00(v1432, v1427, v1428, v1444 | v1436, &unk_100939F10, &qword_100797F30);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          sub_10004F91C(*v1578->clientIdentity);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1426 += 2;
          --v1425;
        }

        while (v1425);
        v1452 = v1578;
        v1572, v1445, v1446, v1447, v1448, v1449, v1450, v1451;
      }

      else
      {
        v1022, v1418, v1419, v1420, v1421, v1422, v1423, v1424;
        v1452 = &_swiftEmptyArrayStorage;
      }

      sub_100024F24(v1452, v1453, v1454, v1455, v1456, v1457, v1458, v1459);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      goto LABEL_509;
    case 0x2Bu:
      swift_storeEnumTagMultiPayload();
      sub_1003EB670(v273, v1576);
      v1578 = &_swiftEmptyArrayStorage;
      v287 = static CharacterSet.hashtagTokenPrefixCharacterArray.getter();
      v288 = v1563;
      v289 = sub_1003E7318(v287);
      v287, v290, v291, v292, v293, v294, v295, v296;
      v297 = sub_10025D30C(v289);
      if (v297)
      {
        v305 = v297;
        *&v1572 = v288;
        if (v297 >= 1)
        {
          v1570 = v289;
          v306 = &v289->clientIdentity[24];
          v1575 = xmmword_100791340;
          do
          {
            v308 = *(v306 - 1);
            v307 = *v306;
            v309 = swift_getKeyPath();
            sub_1000F5104(&qword_100946000, qword_1007A7178);
            v310 = swift_initStackObject();
            v311 = v1575;
            *(v310 + 16) = v1575;
            *(v310 + 32) = v311;
            swift_setDeallocating();
            swift_deallocClassInstance();
            swift_bridgeObjectRetain_n();
            sub_1003EEA00(v309, v308, v307, 6, &unk_100939F10, &qword_100797F30);

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            sub_10004F91C(*v1578->clientIdentity);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v312 = swift_getKeyPath();
            v313 = swift_initStackObject();
            v314 = sub_100050238(v313, 2);
            *v315 = v1575;
            v316 = *(v314 + 32);
            v317 = *(v314 + 40);
            v314, v315, v318, v319, v320, v321, v322, v323;
            if ((v317 & ~v316) != 0)
            {
              v324 = v317;
            }

            else
            {
              v324 = 0;
            }

            sub_1003EEA00(v312, v308, v307, v324 | v316, &unk_100939F10, &qword_100797F30);

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            sub_10004F91C(*v1578->clientIdentity);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v306 += 2;
            --v305;
          }

          while (v305);
          v332 = v1578;
          v1570, v325, v326, v327, v328, v329, v330, v331;
          v288 = v1572;
          break;
        }

        __break(1u);
LABEL_529:
        __break(1u);
LABEL_530:
        __break(1u);
        goto LABEL_531;
      }

      v289, v298, v299, v300, v301, v302, v303, v304;
      v332 = &_swiftEmptyArrayStorage;
      break;
    case 0x2Cu:
      v389 = *v263;
      v390 = *(v263 + 1);
      swift_storeEnumTagMultiPayload();
      sub_1003EB670(v269, v1576);
      v1580 = &_swiftEmptyArrayStorage;
      v391 = static CharacterSet.hashtagTokenPrefixCharacterArray.getter();
      v288 = v1563;
      v392 = sub_1003E7318(v391);
      v391, v393, v394, v395, v396, v397, v398, v399;
      v400 = sub_10025D30C(v392);
      if (v400)
      {
        v1570 = v390;
        v1569 = v389;
        v1567 = v288;
        if (v400 >= 1)
        {
          v1566 = v392;
          v408 = &v392->clientIdentity[24];
          v409 = v1570;
          do
          {
            *&v1575 = v400;
            v410 = *(v408 - 1);
            v411 = *v408;
            v412 = swift_getKeyPath();
            *&v1572 = v410;
            v1578 = v410;
            v1579 = v411;
            swift_bridgeObjectRetain_n();
            v413 = v1569;
            v414._countAndFlagsBits = v1569;
            v414._object = v409;
            String.append(_:)(v414);
            sub_1003EEA00(v412, v1578, v1579, 2, &unk_100939F10, &qword_100797F30);

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*v1580->clientIdentity >= *&v1580->clientIdentity[8] >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v415 = swift_getKeyPath();
            v1578 = v1572;
            v1579 = v411;
            v416._countAndFlagsBits = v413;
            v416._object = v409;
            String.append(_:)(v416);
            sub_1003EEA00(v415, v1578, v1579, 2, &unk_100939F10, &qword_100797F30);

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*v1580->clientIdentity >= *&v1580->clientIdentity[8] >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v408 += 2;
            v400 = v1575 - 1;
          }

          while (v1575 != 1);
          v332 = v1580;
          v1570, v417, v418, v419, v420, v421, v422, v423;
          v1566, v1158, v1159, v1160, v1161, v1162, v1163, v1164;
          v288 = v1567;
          break;
        }

        goto LABEL_529;
      }

      v390, v401, v402, v403, v404, v405, v406, v407;
      v392, v1265, v1266, v1267, v1268, v1269, v1270, v1271;
      v332 = &_swiftEmptyArrayStorage;
      break;
    case 0x2Du:
      v912 = *v263;
      swift_storeEnumTagMultiPayload();
      v913 = swift_getKeyPath();
      sub_10000E72C(v913, 0x696E203D21204B25, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v912 >> 62)
      {
        v921 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v921 = *((v912 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v921)
      {
        v1578 = &_swiftEmptyArrayStorage;
        sub_100253050(v921);
        if (v921 < 0)
        {
LABEL_535:
          __break(1u);
          goto LABEL_536;
        }

        v922 = 0;
        do
        {
          if ((v912 & 0xC000000000000001) != 0)
          {
            v923 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v923 = *&v912->clientIdentity[8 * v922 + 16];
          }

          v924 = v923;
          v925 = [v923 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v926 = v1578;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100253258(0, *v926->clientIdentity + 1, 1);
            v926 = v1578;
          }

          v928 = *v926->clientIdentity;
          v927 = *&v926->clientIdentity[8];
          if (v928 >= v927 >> 1)
          {
            sub_100253258((v927 > 1), v928 + 1, 1);
            v926 = v1578;
          }

          ++v922;
          *v926->clientIdentity = v928 + 1;
          (*(v1573 + 32))(v926 + ((*(v1573 + 80) + 32) & ~*(v1573 + 80)) + *(v1573 + 72) * v928, v1570, v1577);
          v1578 = v926;
        }

        while (v921 != v922);
        v912, v929, v930, v931, v932, v933, v934, v935;
      }

      else
      {
        v912, v914, v915, v916, v917, v918, v919, v920;
        v926 = &_swiftEmptyArrayStorage;
      }

      v1402 = swift_getKeyPath();
      v1403 = sub_10004FAEC(v926);
      v926, v1404, v1405, v1406, v1407, v1408, v1409, v1410;
      v1411 = v1402;
      v1412 = v1403;
LABEL_508:
      sub_100016EF8(v1411, v1412, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
LABEL_509:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_514;
    case 0x2Eu:
      v459 = v1521;
      sub_100031B58(v263, v1521, &unk_100938850, qword_100795AE0);
      swift_storeEnumTagMultiPayload();
      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v1100 = swift_initStackObject();
      sub_100050238(v1100, 2);
      v1102 = v1101;
      v1103 = swift_getKeyPath();
      v1104 = sub_10000E72C(v1103, 0x696E203D21204B25, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);

      *v1102 = v1104;
      v1105 = swift_initStackObject();
      sub_100050238(v1105, 2);
      v1107 = v1106;
      v1108 = swift_getKeyPath();
      v1109 = sub_10000E72C(v1108, 0x4F4E203D3D204B25, 0xE800000000000000, &unk_100939F10, &qword_100797F30);

      *v1107 = v1109;
      v1110 = swift_getKeyPath();
      v1111 = sub_10004D350(v1110, 0);

      v1107[1] = v1111;
      REMCDList.cleanUpAfterLocalObjectMerge()();
      v1112 = sub_10000C2B0();
      if (v1112)
      {
        v1113 = v1112;
        v1114 = [objc_opt_self() notPredicateWithSubpredicate:v1112];
      }

      else
      {
        v1114 = 0;
      }

      v1460 = v1564;
      v1461 = v1565;
      v1462 = v1518;
      v1102[1] = v1114;
      REMCDList.cleanUpAfterLocalObjectMerge()();
      sub_100271454(v1463);
      sub_100010364(v459, v1462, &unk_100938850, qword_100795AE0);
      if ((*(v1461 + 48))(v1462, 1, v1460) == 1)
      {
        sub_1000050A4(v459, &unk_100938850, qword_100795AE0);
        v1245 = v1462;
        goto LABEL_513;
      }

      v1464 = v1487;
      (*(v1461 + 32))(v1487, v1462, v1460);
      v1465 = swift_getKeyPath();
      v1466 = v1562;
      (*(v1461 + 16))(v1562, v1464, v1460);
      v360 = 1;
      (*(v1461 + 56))(v1466, 0, 1, v1460);
      sub_1003E9FFC(v1465, v1466);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v1461 + 8))(v1464, v1460);
LABEL_517:
      sub_1000050A4(v459, &unk_100938850, qword_100795AE0);
      v382 = 0;
      goto LABEL_515;
    case 0x2Fu:
      v350 = *(sub_1000F5104(&qword_100945FF0, &qword_1007AC720) + 48);
      v351 = v1573;
      v352 = v1551;
      v353 = v1577;
      (*(v1573 + 32))(v1551, v263, v1577);
      v354 = v1558;
      v355 = v1556;
      v356 = v1559;
      v1558[4](v1556, &v263[v350], v1559);
      v357 = v1550;
      v354[2](v1550, v355, v356);
      sub_1003E83B8(v357, v1576);
      v358 = swift_getKeyPath();
      v359 = v1568;
      (*(v351 + 16))(v1568, v352, v353);
      v360 = 1;
      (*(v351 + 56))(v359, 0, 1, v353);
      sub_100390EB8(v358, v359);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v354[1])(v355, v356);
      (*(v351 + 8))(v1551, v353);
      goto LABEL_358;
    case 0x30u:
    case 0x37u:
      swift_storeEnumTagMultiPayload();
      v433 = swift_getKeyPath();
      sub_10000E72C(v433, 0x696E203D21204B25, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);
      goto LABEL_42;
    case 0x31u:
      swift_storeEnumTagMultiPayload();
      v438 = swift_getKeyPath();
      sub_1003EA64C(v438, 1);
LABEL_42:

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      goto LABEL_416;
    case 0x32u:
    case 0x33u:
    case 0x35u:
    case 0x39u:
    case 0x3Bu:
    case 0x3Cu:
    case 0x40u:
      swift_storeEnumTagMultiPayload();
      goto LABEL_417;
    case 0x34u:
      swift_storeEnumTagMultiPayload();
      v340 = swift_getKeyPath();
      v341 = [objc_opt_self() siriFoundInAppsListID];
      v342 = [v341 uuid];

      v343 = v1568;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1573 + 56))(v343, 0, 1, v1577);
      sub_100390EB8(v340, v343);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v1581->clientIdentity >= *&v1581->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_298;
    case 0x36u:
      swift_storeEnumTagMultiPayload();
LABEL_298:
      v382 = 0;
      v360 = 0;
      goto LABEL_418;
    case 0x38u:
      swift_storeEnumTagMultiPayload();
      v950 = swift_getKeyPath();
      sub_10004D178(v950, 0);
      goto LABEL_415;
    case 0x3Au:
    case 0x3Du:
    case 0x3Fu:
    case 0x43u:
    case 0x44u:
      swift_storeEnumTagMultiPayload();
      v504 = swift_getKeyPath();
      sub_10000E72C(v504, 0x696E203D21204B25, 0xE90000000000006CLL, &unk_100939F10, &qword_100797F30);
      goto LABEL_415;
    case 0x3Eu:
      swift_storeEnumTagMultiPayload();
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v439 = v1543;
      Date.init()();
      v440 = v1561;
      sub_1003E8654(v439, v1561);
      v441 = v1565;
      v442 = *(v1565 + 8);
      v443 = v1564;
      v442(v439, v1564);
      v444 = swift_getKeyPath();
      v445 = v1562;
      (*(v441 + 16))(v1562, v440, v443);
      v360 = 1;
      (*(v441 + 56))(v445, 0, 1, v443);
      sub_1003EA818(v444, v445);

      v442(v440, v443);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v446 = swift_getKeyPath();
      sub_1003910E0(v446, 1);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
LABEL_102:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_358:
      v382 = 0;
      goto LABEL_418;
    case 0x41u:
      swift_storeEnumTagMultiPayload();
      v388 = swift_getKeyPath();
      sub_10004D350(v388, 0);
      goto LABEL_415;
    case 0x42u:
      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v1115 = swift_initStackObject();
      v1577 = sub_100050238(v1115, 2);
      v1117 = v1116;
      v1118 = swift_initStackObject();
      sub_100050238(v1118, 3);
      v1120 = v1119;
      v1121 = swift_getKeyPath();
      v1122 = sub_10000E72C(v1121, 0x4559203D3D204B25, 0xE900000000000053, &unk_100939F10, &qword_100797F30);

      *v1120 = v1122;
      v1123 = swift_getKeyPath();
      v1124 = sub_10000E72C(v1123, 0x4559203D3D204B25, 0xE900000000000053, &unk_100939F10, &qword_100797F30);

      v1120[1] = v1124;
      v1125 = swift_getKeyPath();
      v1126 = sub_10000E72C(v1125, 0x4559203D3D204B25, 0xE900000000000053, &unk_100939F10, &qword_100797F30);

      v1120[2] = v1126;
      REMCDList.cleanUpAfterLocalObjectMerge()();
      *v1117 = sub_100024F24(v1127, v1128, v1129, v1130, v1131, v1132, v1133, v1134);
      v1117[1] = sub_100023A14(0);
      REMCDList.cleanUpAfterLocalObjectMerge()();
      return sub_10000C2B0();
    default:
      v541 = *v263;
      if (v263[8])
      {
        v542 = 3;
      }

      else
      {
        v542 = 2;
      }

      LODWORD(v1572) = v542;
      swift_storeEnumTagMultiPayload();
      v550 = swift_getKeyPath();
      if (v541 >> 62)
      {
        v551 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v551 = *((v541 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v551)
      {
        v1570 = v550;
        v1578 = &_swiftEmptyArrayStorage;
        sub_100253038(v551);
        if (v551 < 0)
        {
LABEL_531:
          __break(1u);
          goto LABEL_532;
        }

        v552 = 0;
        v553 = (v1573 + 56);
        do
        {
          if ((v541 & 0xC000000000000001) != 0)
          {
            v554 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v554 = *&v541->clientIdentity[8 * v552 + 16];
          }

          v555 = v554;
          v556 = [v554 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v553)(v259, 0, 1, v1577);
          v557 = v1578;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100253218(0, *v557->clientIdentity + 1, 1);
            v557 = v1578;
          }

          v559 = *v557->clientIdentity;
          v558 = *&v557->clientIdentity[8];
          if (v559 >= v558 >> 1)
          {
            sub_100253218((v558 > 1), v559 + 1, 1);
            v557 = v1578;
          }

          ++v552;
          *v557->clientIdentity = v559 + 1;
          sub_100031B58(v259, v557 + ((*(v1575 + 80) + 32) & ~*(v1575 + 80)) + *(v1575 + 72) * v559, &unk_100939D90, "8\n\r");
        }

        while (v551 != v552);
        v541, v560, v561, v562, v563, v564, v565, v566;
        v550 = v1570;
      }

      else
      {
        v541, v543, v544, v545, v546, v547, v548, v549;
        v557 = &_swiftEmptyArrayStorage;
      }

      sub_100016EF8(v550, v557, &qword_100946088, &unk_1007A7690, &unk_100939F10, &qword_100797F30);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_10004F91C(*v1581->clientIdentity);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_436;
  }

  sub_100024F24(v332, v333, v334, v335, v336, v337, v338, v339);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_10004F91C(*v1581->clientIdentity);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1000F5104(&qword_100945FF8, qword_1007A7100);
  v1272 = swift_initStackObject();
  sub_100050238(v1272, 2);
  *v1273 = xmmword_100791300;
  REMCDList.cleanUpAfterLocalObjectMerge()();
  v1275 = v1274;
  v937 = swift_getKeyPath();
  v940 = sub_1003E74A4(v1275);
  v1563 = v288;
  v1275, v1276, v1277, v1278, v1279, v1280, v1281, v1282;
  v948 = &unk_100946080;
  v949 = &unk_1007A7688;
LABEL_414:
  sub_100016EF8(v937, v940, v948, v949, &unk_100939F10, &qword_100797F30);
LABEL_415:

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_10004F91C(*v1581->clientIdentity);
LABEL_416:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_417:
  v382 = 0;
  v360 = 1;
LABEL_418:
  LODWORD(v1575) = 1;
LABEL_419:
  LOBYTE(v387) = 1;
  goto LABEL_420;
}

id sub_10004D128@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 list];
  *a2 = result;
  return result;
}

id sub_10004D178(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v10, v11, v12, v13, v14, v15, v16;
    v17 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v17;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v19._object = 0x80000001007EC120;
    v19._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v19);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_10004D350(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v10, v11, v12, v13, v14, v15, v16;
    v17 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v17;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v19._object = 0x80000001007EC120;
    v19._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v19);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_10004D528@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentList];
  *a2 = result;
  return result;
}

id sub_10004D578@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentReminder];
  *a2 = result;
  return result;
}

id sub_10004D5C8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 markedForDeletion];
  *a2 = result;
  return result;
}

id sub_10004D610@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 completed];
  *a2 = result;
  return result;
}

id sub_10004D6B4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 inactive];
  *a2 = result;
  return result;
}

id sub_10004D6FC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 daIsEventOnlyContainer];
  *a2 = result;
  return result;
}

id sub_10004D744@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 daIsNotificationsCollection];
  *a2 = result;
  return result;
}

id sub_10004D7D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recurrenceRules];
  *a2 = result;
  return result;
}

id sub_10004D8BC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 sharingStatus];
  *a2 = result;
  return result;
}

id sub_10004DA00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 flagged];
  *a2 = result;
  return result;
}

id sub_10004DA48@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldCategorizeGroceryItems];
  *a2 = result;
  return result;
}

id sub_10004DB24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarmStorage];
  *a2 = result;
  return result;
}

id sub_10004DC34@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 ckDirtyFlags];
  *a2 = result;
  return result;
}

uint64_t sub_10004DCBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_10004DD24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);

      goto LABEL_72;
    case 1u:
    case 0x21u:
      v50 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v51 = v50;
      goto LABEL_72;
    case 2u:
      v40 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v41 = v40;
      v42 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
      v43 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v43 - 8) + 16))(a1 + v42, a2 + v42, v43);
      goto LABEL_72;
    case 3u:
      *a1 = *a2;

      v63 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
      v64 = *(v63 + 48);
      v65 = _s10PredicatesO19CompletionPredicateOMa(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        *(a1 + v64) = *(a2 + v64);

        swift_storeEnumTagMultiPayload();
      }

      else if (EnumCaseMultiPayload > 1)
      {
        memcpy((a1 + v64), a2 + v64, *(*(v65 - 8) + 64));
      }

      else
      {
        v67 = type metadata accessor for Date();
        (*(*(v67 - 8) + 16))(a1 + v64, a2 + v64, v67);
        swift_storeEnumTagMultiPayload();
      }

      *(a1 + *(v63 + 64)) = *(a2 + *(v63 + 64));
      goto LABEL_72;
    case 4u:
      *a1 = *a2;

      v68 = sub_1000F5104(&qword_100946060, &qword_1007A7648);
      v69 = *(v68 + 48);
      v11 = type metadata accessor for Date();
      v12 = *(v11 - 8);
      v70 = *(v12 + 48);
      if (v70(a2 + v69, 1, v11))
      {
        v71 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy((a1 + v69), a2 + v69, *(*(v71 - 8) + 64));
      }

      else
      {
        (*(v12 + 16))(a1 + v69, a2 + v69, v11);
        (*(v12 + 56))(a1 + v69, 0, 1, v11);
      }

      v10 = *(v68 + 64);
      if (v70(a2 + v10, 1, v11))
      {
        goto LABEL_61;
      }

      goto LABEL_54;
    case 5u:
      v48 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = a2[2];
      v49 = v48;
      goto LABEL_72;
    case 6u:
    case 7u:
    case 0x1Au:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
      v52 = *a2;
      *a1 = *a2;
      v53 = v52;
      goto LABEL_72;
    case 8u:
    case 0x17u:
      v32 = *a2;
      *a1 = *a2;
      v33 = v32;
      v34 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
      v35 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v35 - 8) + 16))(a1 + v34, a2 + v34, v35);
      goto LABEL_72;
    case 9u:
      v79 = *a2;
      *a1 = *a2;
      v80 = v79;
      v81 = sub_1000F5104(&qword_100946058, qword_1007A75D0);
      v82 = *(v81 + 48);
      v83 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v83 - 8) + 16))(a1 + v82, a2 + v82, v83);
      *(a1 + *(v81 + 64)) = *(a2 + *(v81 + 64));
      goto LABEL_72;
    case 0xAu:
      *a1 = *a2;

      v36 = *(sub_1000F5104(&qword_100946050, &qword_1007B0450) + 48);
      v37 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v37 - 8) + 16))(a1 + v36, a2 + v36, v37);
      goto LABEL_72;
    case 0xBu:
    case 0xCu:
    case 0xFu:
      v58 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v58 - 8) + 16))(a1, a2, v58);
      goto LABEL_72;
    case 0xDu:
      v26 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v26 - 8) + 16))(a1, a2, v26);
      v27 = *(sub_1000F5104(&qword_100946048, &unk_1007A75C0) + 48);
      v28 = type metadata accessor for Date();
      (*(*(v28 - 8) + 16))(a1 + v27, a2 + v27, v28);
      goto LABEL_72;
    case 0xEu:
      v57 = type metadata accessor for Date();
      (*(*(v57 - 8) + 16))(a1, a2, v57);
      goto LABEL_72;
    case 0x10u:
      v87 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v88 = v87;
      v10 = *(sub_1000F5104(&qword_100946040, &qword_1007A75B8) + 64);
      v11 = type metadata accessor for Date();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(a2 + v10, 1, v11))
      {
        goto LABEL_61;
      }

      goto LABEL_54;
    case 0x11u:
      v84 = type metadata accessor for Date();
      v85 = *(v84 - 8);
      if ((*(v85 + 48))(a2, 1, v84))
      {
        v86 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy(a1, a2, *(*(v86 - 8) + 64));
      }

      else
      {
        (*(v85 + 16))(a1, a2, v84);
        (*(v85 + 56))(a1, 0, 1, v84);
      }

      v94 = sub_1000F5104(&qword_100946038, qword_1007A7578);
      *(a1 + *(v94 + 48)) = *(a2 + *(v94 + 48));
      goto LABEL_72;
    case 0x12u:
      v18 = *a2;
      v19 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v19;
      v20 = v18;
      v21 = v19;
      v22 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
      v23 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v23 - 8) + 16))(a1 + v22, a2 + v22, v23);
      goto LABEL_72;
    case 0x13u:
      *a1 = *a2;

      v38 = *(sub_1000F5104(&qword_10093A560, &qword_100797768) + 48);
      v39 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v39 - 8) + 16))(a1 + v38, a2 + v38, v39);
      goto LABEL_72;
    case 0x14u:
    case 0x16u:
    case 0x1Cu:
    case 0x20u:
    case 0x2Au:
    case 0x2Du:
      *a1 = *a2;

      goto LABEL_72;
    case 0x15u:
      *a1 = *a2;

      v24 = *(sub_1000F5104(&qword_100941B90, &unk_1007A7560) + 48);
      v25 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v25 - 8) + 16))(a1 + v24, a2 + v24, v25);
      goto LABEL_72;
    case 0x18u:
    case 0x19u:
      v29 = *a2;
      v30 = a2[1];
      *a1 = v29;
      *(a1 + 8) = v30;

      v31 = v30;
      goto LABEL_72;
    case 0x1Bu:
      v90 = type metadata accessor for Date();
      v91 = *(*(v90 - 8) + 16);
      v91(a1, a2, v90);
      v92 = sub_1000F5104(&qword_100946030, qword_1007A74D0);
      v91(a1 + *(v92 + 48), a2 + *(v92 + 48), v90);
      goto LABEL_72;
    case 0x1Du:
      *a1 = *a2;

      v44 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
      v45 = *(v44 + 48);
      v11 = type metadata accessor for Date();
      v12 = *(v11 - 8);
      v46 = *(v12 + 48);
      if (v46(a2 + v45, 1, v11))
      {
        v47 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy((a1 + v45), a2 + v45, *(*(v47 - 8) + 64));
      }

      else
      {
        (*(v12 + 16))(a1 + v45, a2 + v45, v11);
        (*(v12 + 56))(a1 + v45, 0, 1, v11);
      }

      v10 = *(v44 + 64);
      if (!v46(a2 + v10, 1, v11))
      {
        goto LABEL_54;
      }

      goto LABEL_61;
    case 0x1Eu:
      *a1 = *a2;

      v59 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
      v60 = *(v59 + 48);
      v11 = type metadata accessor for Date();
      v12 = *(v11 - 8);
      v61 = *(v12 + 48);
      if (v61(a2 + v60, 1, v11))
      {
        v62 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy((a1 + v60), a2 + v60, *(*(v62 - 8) + 64));
      }

      else
      {
        (*(v12 + 16))(a1 + v60, a2 + v60, v11);
        (*(v12 + 56))(a1 + v60, 0, 1, v11);
      }

      v10 = *(v59 + 64);
      if (v61(a2 + v10, 1, v11))
      {
        goto LABEL_61;
      }

      goto LABEL_54;
    case 0x26u:
      v72 = *a2;
      *a1 = *a2;
      v73 = v72;
      v74 = sub_1000F5104(&unk_100939F00, &unk_1007972A0);
      v75 = *(v74 + 48);
      v76 = _s10PredicatesO19CompletionPredicateOMa(0);
      v77 = swift_getEnumCaseMultiPayload();
      if (v77 == 2)
      {
        *(a1 + v75) = *(a2 + v75);

        swift_storeEnumTagMultiPayload();
      }

      else if (v77 > 1)
      {
        memcpy((a1 + v75), a2 + v75, *(*(v76 - 8) + 64));
      }

      else
      {
        v78 = type metadata accessor for Date();
        (*(*(v78 - 8) + 16))(a1 + v75, a2 + v75, v78);
        swift_storeEnumTagMultiPayload();
      }

      *(a1 + *(v74 + 64)) = *(a2 + *(v74 + 64));
      goto LABEL_72;
    case 0x27u:
      *a1 = *a2;

      v10 = *(sub_1000F5104(&qword_100946018, qword_1007A71C8) + 48);
      v11 = type metadata accessor for Date();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(a2 + v10, 1, v11))
      {
        goto LABEL_61;
      }

      goto LABEL_54;
    case 0x28u:
      v6 = *a2;
      v7 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v7;
      v8 = v6;
      v9 = v7;
      v10 = *(sub_1000F5104(&qword_100946010, &qword_1007A71C0) + 64);
      v11 = type metadata accessor for Date();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(a2 + v10, 1, v11))
      {
        goto LABEL_61;
      }

      goto LABEL_54;
    case 0x29u:
      *a1 = *a2;

      v10 = *(sub_1000F5104(&qword_100946008, &qword_1007A71B8) + 48);
      v11 = type metadata accessor for Date();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(a2 + v10, 1, v11))
      {
LABEL_61:
        v93 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy((a1 + v10), a2 + v10, *(*(v93 - 8) + 64));
      }

      else
      {
LABEL_54:
        (*(v12 + 16))(a1 + v10, a2 + v10, v11);
        (*(v12 + 56))(a1 + v10, 0, 1, v11);
      }

      goto LABEL_72;
    case 0x2Cu:
      v89 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v89;
      *(a1 + 16) = *(a2 + 16);

      goto LABEL_72;
    case 0x2Eu:
      v15 = type metadata accessor for Date();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(a2, 1, v15))
      {
        v17 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy(a1, a2, *(*(v17 - 8) + 64));
      }

      else
      {
        (*(v16 + 16))(a1, a2, v15);
        (*(v16 + 56))(a1, 0, 1, v15);
      }

      goto LABEL_72;
    case 0x2Fu:
      v54 = type metadata accessor for UUID();
      (*(*(v54 - 8) + 16))(a1, a2, v54);
      v55 = *(sub_1000F5104(&qword_100945FF0, &qword_1007AC720) + 48);
      v56 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v56 - 8) + 16))(a1 + v55, a2 + v55, v56);
LABEL_72:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v13 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v13);
      break;
  }

  return result;
}

void sub_10004F55C(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, void (*a3)(void))
{
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_10093B458);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  a1, v8, v9, v10, v11, v12, v13, v14;
  if (os_log_type_enabled(v6, v7))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36 = v16;
    *v15 = 136315138;
    v17 = Array.description.getter();
    v19 = v18;
    v20 = a3;
    v21 = sub_10000668C(v17, v18, &v36);
    v19, v22, v23, v24, v25, v26, v27, v28;
    *(v15 + 4) = v21;
    a3 = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "(daemon) Trigger DataAccess sync {accountIDs: %s}", v15, 0xCu);
    sub_10000607C(v16);
  }

  v36 = a1;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));

  sub_10004F728(&v36);
  a3(0);
  a1, v29, v30, v31, v32, v33, v34, v35;
}

void sub_10004F728(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v3;
  v23[2] = *(a1 + 32);
  v24 = *(a1 + 48);
  if (qword_100936210 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100948430);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10000668C(*(v1 + 16), *(v1 + 24), &v22);
    *(v7 + 12) = 2080;
    v8 = sub_10047D4B8();
    v10 = v9;
    v11 = sub_10000668C(v8, v9, &v22);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Putting event {identifier: %s, reader: %s}", v7, 0x16u);
    swift_arrayDestroy();
  }

  v19 = *(v2 + 40);
  v20 = *(v19 + 48);
  if (v20)
  {
    v21 = *(v19 + 56);

    v20(v23);

    sub_10003E114(v20, v21);
  }
}

uint64_t sub_10004F91C(uint64_t result)
{
  if (result + 1 > *(*v1 + 24) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

void sub_10004F944(__int128 *a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, void (*a5)(void))
{
  v8 = a1[1];
  v22 = *a1;
  v23 = v8;
  v24 = a1[2];
  v25 = *(a1 + 48);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a5();
  }

  else
  {
    if (qword_100936210 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100948430);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    a4, v12, v13, v14, v15, v16, v17, v18;
    if (os_log_type_enabled(v10, v11))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10000668C(a3, a4, &v21);
      _os_log_impl(&_mh_execute_header, v10, v11, "Dropping reader message because target has been deallocated {identifier: %s}", v19, 0xCu);
      sub_10000607C(v20);
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_10004FAEC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(v21 - 8);
  __chkstk_darwin(v21, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  if (v11)
  {
    v22 = &_swiftEmptyArrayStorage;
    sub_100253218(0, v11, 0);
    v12 = v22;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v19 = *(v13 + 56);
    v20 = v14;
    do
    {
      v20(v6, v15, v2);
      swift_dynamicCast();
      v22 = v12;
      v17 = *v12->clientIdentity;
      v16 = *&v12->clientIdentity[8];
      if (v17 >= v16 >> 1)
      {
        sub_100253218((v16 > 1), v17 + 1, 1);
        v12 = v22;
      }

      *v12->clientIdentity = v17 + 1;
      sub_100031B58(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, &unk_100939D90, "8\n\r");
      v15 += v19;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void sub_10004FD30(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v6;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_10004F944(v7, v2, v3, v4, v5);
}

uint64_t sub_10004FD78(uint64_t *a1, __int128 *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a2[1];
  v48 = *a2;
  v49 = v9;
  v50 = a2[2];
  v51 = *(a2 + 48);
  v10 = a1[4];
  *v8 = v10;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v10)
  {
    if (qword_100935C58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_10093DD90);
  swift_retain_n();
  sub_10005024C(&v48, v47);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  sub_100050600(&v48);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_10000668C(a1[2], a1[3], v47);
    *(v15 + 12) = 2080;
    v16 = sub_100050B00();
    v18 = v17;
    v19 = sub_10000668C(v16, v17, v47);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v15 + 14) = v19;
    *(v15 + 22) = 1024;
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      swift_unknownObjectRelease();
      v28 = 1;
    }

    else
    {
      v28 = 0;
    }

    *(v15 + 24) = v28;

    _os_log_impl(&_mh_execute_header, v13, v14, "RDDARequestsQueue: Appending new request {identifier: %s, request: %s, hasDelegate: %{BOOL}d}.", v15, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_beginAccess();
  v29 = a1[8];
  sub_10005024C(&v48, v47);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a1[8] = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_100050D94(0, *v29->clientIdentity + 1, 1, v29, v31, v32, v33, v34);
    a1[8] = v29;
  }

  v36 = *v29->clientIdentity;
  v35 = *&v29->clientIdentity[8];
  if (v36 >= v35 >> 1)
  {
    v29 = sub_100050D94((v35 > 1), v36 + 1, 1, v29, v31, v32, v33, v34);
  }

  *v29->clientIdentity = v36 + 1;
  v37 = v29 + 56 * v36;
  v38 = v48;
  v39 = v49;
  v40 = v50;
  v37[80] = v51;
  *(v37 + 3) = v39;
  *(v37 + 4) = v40;
  *(v37 + 2) = v38;
  a1[8] = v29;
  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (qword_100936860 != -1)
    {
      swift_once();
    }

    sub_100006654(v12, qword_100951C70);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47[0] = v45;
      *v44 = 136446210;
      *(v44 + 4) = sub_10000668C(a1[2], a1[3], v47);
      _os_log_impl(&_mh_execute_header, v42, v43, "RDDataAccess: Did add pending request {from: %{public}s}.", v44, 0xCu);
      sub_10000607C(v45);
    }

    sub_100050DF8(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10005023C(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t initializeWithCopy for RDDARequest(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = *(a2 + 48);
  sub_100050470(*a2, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return a1;
}

uint64_t *sub_10005032C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void sub_100050470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 2 || a7 == 1)
  {
  }

  else if (!a7)
  {
  }
}

uint64_t sub_1000504F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100050558(_TtC7remindd19RDXPCStorePerformer **a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v13 = *a1;

    v13, v4, v5, v6, v7, v8, v9, v10;
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 8);

    v12(a1, v11);
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_100050654(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, Class isa, uint64_t a4)
{
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [(RDXPCStorePerformer *)v8 setEntity:v9];

  if (isa)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [(RDXPCStorePerformer *)v8 setAffectedStores:isa];

  [(RDXPCStorePerformer *)v8 setPredicate:a4];
  if (a2)
  {

    sub_100050AD0(v17);
    a2, v18, v19, v20, v21, v22, v23, v24;
    v71 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      if (!i)
      {
LABEL_19:
        v35 = Array._bridgeToObjectiveC()().super.isa;
        &_swiftEmptyArrayStorage, v36, v37, v38, v39, v40, v41, v42;
        [(RDXPCStorePerformer *)v8 setRelationshipKeyPathsForPrefetching:v35];

        goto LABEL_20;
      }

      sub_100026EF4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v69 = a1;
      v70 = v8;
      v26 = 0;
      v72 = a2 & 0xC000000000000001;
      v8 = i;
      while (1)
      {
        a1 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v72)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v26 >= *(v71 + 16))
          {
            goto LABEL_25;
          }
        }

        v27 = a2;
        v28 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v29)
        {
          goto LABEL_28;
        }

        v30 = v28;
        v31 = v29;

        v33 = *_swiftEmptyArrayStorage.clientIdentity;
        v32 = *&_swiftEmptyArrayStorage.clientIdentity[8];
        if (v33 >= v32 >> 1)
        {
          sub_100026EF4((v32 > 1), v33 + 1, 1);
        }

        *_swiftEmptyArrayStorage.clientIdentity = v33 + 1;
        v34 = &_swiftEmptyArrayStorage + 16 * v33;
        *(v34 + 4) = v30;
        *(v34 + 5) = v31;
        ++v26;
        a2 = v27;
        if (a1 == v8)
        {
          a1 = v69;
          v8 = v70;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(46);
    v68._object = 0x80000001007EC120;
    v68._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v68);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (a1)
    {

      sub_100050AD0(v43);
      a1, v44, v45, v46, v47, v48, v49, v50;
      v51 = sub_1003FE084(_swiftEmptySetSingleton, &unk_100939F10, &qword_100797F30, &unk_1009464A0, &qword_1007A8698);
      _swiftEmptySetSingleton, v52, v53, v54, v55, v56, v57, v58;
      v59 = Array._bridgeToObjectiveC()().super.isa;
      v51, v60, v61, v62, v63, v64, v65, v66;
      [(RDXPCStorePerformer *)v8 setPropertiesToFetch:v59];
    }

    else
    {
      _swiftEmptySetSingleton, v10, v11, v12, v13, v14, v15, v16;
    }

    return v8;
  }

  return result;
}

void sub_100050A48(_TtC7remindd19RDXPCStorePerformer *result, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, _TtC7remindd19RDXPCStorePerformer *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a7 == 2 || a7 == 1)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    a4, v9, v10, v11, v12, v13, v14, v15;
  }

  else if (!a7)
  {

    result, a2, a3, a4, a5, a6, a7, a8;
  }
}

uint64_t sub_100050B00()
{
  v1 = *v0;
  v2 = *(v0 + 48);
  if (*(v0 + 48))
  {
    v4 = *(v0 + 8);
    v3 = *(v0 + 16);
    v5 = *(v0 + 24);
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    if (v2 == 1)
    {
      _StringGuts.grow(_:)(57);
      v6 = 0x80000001007FC630;
      v7 = 0xD000000000000027;
    }

    else
    {
      _StringGuts.grow(_:)(58);
      v7 = 0xD000000000000028;
      v6 = 0x80000001007FC600;
    }

    String.append(_:)(*&v7);
    v17._countAndFlagsBits = v1;
    v17._object = v4;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 0x6E756F636361202CLL;
    v18._object = 0xED0000203A444974;
    String.append(_:)(v18);
    v19._countAndFlagsBits = v3;
    v19._object = v5;
    String.append(_:)(v19);
  }

  else
  {
    strcpy(v22, "{accountIDs ");
    BYTE5(v22[1]) = 0;
    HIWORD(v22[1]) = -5120;
    v8._countAndFlagsBits = Array.description.getter();
    object = v8._object;
    String.append(_:)(v8);
    object, v10, v11, v12, v13, v14, v15, v16;
  }

  v20._countAndFlagsBits = 125;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  return v22[0];
}

_TtC7remindd19RDXPCStorePerformer *sub_100050C70(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8)
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
    sub_1000F5104(a5, a6);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14->clientIdentity = v12;
    *&v14->clientIdentity[8] = 2 * ((v15 - 32) / 56);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  v16 = &v14->clientIdentity[16];
  v17 = &a4->clientIdentity[16];
  if (v9)
  {
    v18 = 56 * v12;
    if (v14 != a4 || v16 >= &v17[56 * v12])
    {
      memmove(v16, v17, v18);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, v18, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_100050DB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100050DF8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v1;
  aBlock[4] = sub_1000523D0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008FE540;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16[1] = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

void *sub_100051088(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_100051184(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_10037F9A0(v5, v6);
LABEL_10:

  return sub_10019BE3C(a1, v2);
}

void sub_100051184(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for REMObjectID_Codable();
    sub_1001A3B50(&qword_100943E80, &type metadata accessor for REMObjectID_Codable, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_10001B860(a1);
      return;
    }

    while (1)
    {
      v16 = sub_10019EA98(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for REMObjectID_Codable();
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1000513B4(uint64_t a1)
{
  v2 = _s10PredicatesOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100051410(id *a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 0x14u:
    case 0x16u:
    case 0x1Cu:
    case 0x20u:
    case 0x2Au:
    case 0x2Du:
      v11 = *a1;
      goto LABEL_7;
    case 1u:
    case 5u:
    case 6u:
    case 7u:
    case 0x1Au:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
      v10 = *a1;
      goto LABEL_3;
    case 2u:

      v35 = &qword_10093C920;
      v36 = qword_1007AC750;
      goto LABEL_50;
    case 3u:
      *a1, v3, v4, v5, v6, v7, v8, v9;
      v22 = &qword_100946068;
      v23 = &unk_1007A7650;
      goto LABEL_30;
    case 4u:
      *a1, v3, v4, v5, v6, v7, v8, v9;
      v18 = &qword_100946060;
      v19 = &qword_1007A7648;
      goto LABEL_25;
    case 8u:
    case 0x17u:

      v16 = &unk_100942AF0;
      v17 = qword_1007A7520;
      goto LABEL_40;
    case 9u:

      v16 = &qword_100946058;
      v17 = qword_1007A75D0;
      goto LABEL_40;
    case 0xAu:
      *a1, v3, v4, v5, v6, v7, v8, v9;
      v16 = &qword_100946050;
      v17 = &qword_1007B0450;
      goto LABEL_40;
    case 0xBu:
    case 0xCu:
    case 0xFu:
      v12 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      goto LABEL_22;
    case 0xDu:
      v37 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v37 - 8) + 8))(a1, v37);
      v29 = *(sub_1000F5104(&qword_100946048, &unk_1007A75C0) + 48);
      goto LABEL_48;
    case 0xEu:
      v12 = type metadata accessor for Date();
LABEL_22:
      v14 = *(*(v12 - 8) + 8);
      v24 = v12;
      v15 = a1;
      goto LABEL_53;
    case 0x10u:

      v31 = &qword_100946040;
      v32 = &qword_1007A75B8;
      goto LABEL_42;
    case 0x11u:
    case 0x2Eu:
      v13 = type metadata accessor for Date();
      v39 = *(v13 - 8);
      if ((*(v39 + 48))(a1, 1, v13))
      {
        return;
      }

      v14 = *(v39 + 8);
      v15 = a1;
      goto LABEL_46;
    case 0x12u:

      v35 = &qword_100938A98;
      v36 = &qword_1007A7570;
LABEL_50:
      v29 = *(sub_1000F5104(v35, v36) + 64);
      goto LABEL_51;
    case 0x13u:
      *a1, v3, v4, v5, v6, v7, v8, v9;
      v16 = &qword_10093A560;
      v17 = &qword_100797768;
      goto LABEL_40;
    case 0x15u:
      *a1, v3, v4, v5, v6, v7, v8, v9;
      v16 = &qword_100941B90;
      v17 = &unk_1007A7560;
      goto LABEL_40;
    case 0x18u:
    case 0x19u:
      *a1, v3, v4, v5, v6, v7, v8, v9;
      v10 = a1[1];
LABEL_3:

      return;
    case 0x1Bu:
      v34 = type metadata accessor for Date();
      v41 = *(*(v34 - 8) + 8);
      (v41)((v34 - 8), a1, v34);
      v15 = (a1 + *(sub_1000F5104(&qword_100946030, qword_1007A74D0) + 48));
      v24 = v34;
      v14 = v41;
      goto LABEL_53;
    case 0x1Du:
    case 0x1Eu:
      *a1, v3, v4, v5, v6, v7, v8, v9;
      v18 = &qword_100946028;
      v19 = &unk_1007A7498;
LABEL_25:
      v25 = sub_1000F5104(v18, v19);
      v26 = *(v25 + 48);
      v13 = type metadata accessor for Date();
      v40 = *(v13 - 8);
      v27 = *(v40 + 48);
      if (!v27(a1 + v26, 1, v13))
      {
        (*(v40 + 8))(a1 + v26, v13);
      }

      v28 = *(v25 + 64);
      if (!v27(a1 + v28, 1, v13))
      {
        goto LABEL_45;
      }

      return;
    case 0x26u:

      v22 = &unk_100939F00;
      v23 = &unk_1007972A0;
LABEL_30:
      v29 = *(sub_1000F5104(v22, v23) + 48);
      _s10PredicatesO19CompletionPredicateOMa(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        v11 = *(a1 + v29);
LABEL_7:

        v11, v3, v4, v5, v6, v7, v8, v9;
      }

      else if (EnumCaseMultiPayload <= 1)
      {
LABEL_48:
        v38 = type metadata accessor for Date();
LABEL_52:
        v24 = v38;
        v14 = *(*(v38 - 8) + 8);
        v15 = (a1 + v29);
LABEL_53:

        v14(v15, v24);
      }

      return;
    case 0x27u:
      *a1, v3, v4, v5, v6, v7, v8, v9;
      v20 = &qword_100946018;
      v21 = qword_1007A71C8;
      goto LABEL_35;
    case 0x28u:

      v31 = &qword_100946010;
      v32 = &qword_1007A71C0;
LABEL_42:
      v28 = *(sub_1000F5104(v31, v32) + 64);
      goto LABEL_43;
    case 0x29u:
      *a1, v3, v4, v5, v6, v7, v8, v9;
      v20 = &qword_100946008;
      v21 = &qword_1007A71B8;
LABEL_35:
      v28 = *(sub_1000F5104(v20, v21) + 48);
LABEL_43:
      v13 = type metadata accessor for Date();
      v40 = *(v13 - 8);
      if ((*(v40 + 48))(a1 + v28, 1, v13))
      {
        return;
      }

LABEL_45:
      v14 = *(v40 + 8);
      v15 = (a1 + v28);
LABEL_46:
      v24 = v13;
      goto LABEL_53;
    case 0x2Cu:
      v11 = a1[1];
      goto LABEL_7;
    case 0x2Fu:
      v33 = type metadata accessor for UUID();
      (*(*(v33 - 8) + 8))(a1, v33);
      v16 = &qword_100945FF0;
      v17 = &qword_1007AC720;
LABEL_40:
      v29 = *(sub_1000F5104(v16, v17) + 48);
LABEL_51:
      v38 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      goto LABEL_52;
    default:
      return;
  }
}

void sub_100051AE4(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v73 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v73 - 8);
  __chkstk_darwin(v73, v3);
  v72 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchQoS();
  v5 = *(v71 - 8);
  __chkstk_darwin(v71, v6);
  v80 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000523D8();
  v16 = *(v8 + 16);
  if (v16)
  {
    v69 = (v2 + 8);
    v70 = v82;
    v68 = (v5 + 8);
    v67 = v8;
    v17 = (v8 + 80);
    v18 = v72;
    do
    {
      v32 = *(v17 - 6);
      v33 = *(v17 - 5);
      v34 = *(v17 - 4);
      v35 = *(v17 - 3);
      v36 = *(v17 - 2);
      v37 = *(v17 - 1);
      if (*v17)
      {
        v38 = *(v17 - 6);
        v39 = *(v17 - 5);
        v40 = *(v17 - 4);
        v41 = *(v17 - 3);
        v42 = *(v17 - 2);
        v43 = *(v17 - 1);
        if (*v17 == 1)
        {
          sub_100050470(v38, v39, v40, v41, v42, v43, 1);

          sub_100552444(1, v32, v33, v34, v35, v36, v37);
          v45 = v32;
          v46 = v33;
          v47 = v34;
          v48 = v35;
          v49 = v36;
          v50 = v37;
          v51 = 1;
        }

        else
        {
          sub_100050470(v38, v39, v40, v41, v42, v43, 2);

          sub_100552444(2, v32, v33, v34, v35, v36, v37);
          v45 = v32;
          v46 = v33;
          v47 = v34;
          v48 = v35;
          v49 = v36;
          v50 = v37;
          v51 = 2;
        }

        sub_100050A48(v45, v46, v47, v48, v49, v50, v51, v44);
        v33, v52, v53, v54, v55, v56, v57, v58;
        v35, v59, v60, v61, v62, v63, v64, v65;
      }

      else
      {
        sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
        sub_100050470(v32, v33, v34, v35, v36, v37, 0);

        v78 = static OS_dispatch_queue.main.getter();
        v19 = swift_allocObject();
        v79 = v36;
        v20 = v74;
        *(v19 + 16) = v32;
        *(v19 + 24) = v20;
        v82[2] = sub_100052BD4;
        v82[3] = v19;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v82[0] = sub_100019200;
        v82[1] = &unk_1008FE590;
        v76 = _Block_copy(aBlock);

        v77 = v34;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = &_swiftEmptyArrayStorage;
        v75 = sub_10000AB38();
        sub_1000F5104(&unk_100939E50, &unk_100791AD0);
        sub_10000AB90();
        v21 = v73;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v22 = v76;
        v23 = v78;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v22);

        sub_100050A48(v32, v33, v77, v35, v79, v37, 0, v24);
        (*v69)(v18, v21);
        (*v68)(v80, v71);
      }

      v17 += 56;
      --v16;
    }

    while (v16);
    v67, v25, v26, v27, v28, v29, v30, v31;
  }

  else
  {

    v8, v9, v10, v11, v12, v13, v14, v15;
  }
}

void sub_100051FA4(void *a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_100051FE4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1009362C0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_100949BB0);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      aBlock[0] = v8;
      *v7 = 136446210;
      v9 = *&v4[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16];
      v35 = *&v4[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
      *v36 = v9;
      *&v36[14] = *&v4[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 30];
      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v10 = swift_allocObject();
      v11 = v10;
      *(v10 + 16) = xmmword_100791340;
      if (((*&v36[28] << 32) & 0xC10000000000) == 0x810000000000)
      {
        v12 = 0xD000000000000011;
      }

      else
      {
        v12 = 0;
      }

      if (((*&v36[28] << 32) & 0xC10000000000) == 0x810000000000)
      {
        v13 = 0x80000001007EECE0;
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      *(v10 + 56) = &type metadata for String;
      v14 = sub_100006600();
      v11[8] = v14;
      v11[4] = v12;
      v11[5] = v13;
      v15 = sub_1000063E8();
      v11[12] = &type metadata for String;
      v11[13] = v14;
      v11[9] = v15;
      v11[10] = v16;
      v17 = String.init(format:_:)();
      v19 = v18;
      v20 = sub_10000668C(v17, v18, aBlock);
      v19, v21, v22, v23, v24, v25, v26, v27;
      *(v7 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v5, v6, "Connection was invalidated {clientIdentity: %{public}s}", v7, 0xCu);
      sub_10000607C(v8);
    }

    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = *(v28 + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_listenerQueue);
      v30 = v28;
      v31 = swift_allocObject();
      *(v31 + 16) = v4;
      *(v31 + 24) = v30;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_100052BDC;
      *(v32 + 24) = v31;
      aBlock[4] = sub_1000529DC;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F160;
      aBlock[3] = &unk_1008F45F0;
      v33 = _Block_copy(aBlock);
      v4 = v4;
      swift_unknownObjectRetain();

      dispatch_sync(v29, v33);
      _Block_release(v33);
      LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

      swift_unknownObjectRelease();

      if ((v29 & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

uint64_t sub_100052380()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000523D8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 32);
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if (qword_100935C58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10093DD90);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_10000668C(*(v1 + 16), *(v1 + 24), v18);
    *(v13 + 12) = 2048;
    swift_beginAccess();
    *(v13 + 14) = *(*(v1 + 64) + 16);
    *(v13 + 22) = 1024;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    *(v13 + 24) = v15;

    _os_log_impl(&_mh_execute_header, v11, v12, "RDDARequestsQueue: Draining {identifier: %s, count: %ld, hasDelegate: %{BOOL}d}.", v13, 0x1Cu);
    sub_10000607C(v14);
  }

  else
  {
  }

  swift_beginAccess();
  result = *(v1 + 64);
  *(v1 + 64) = &_swiftEmptyArrayStorage;
  return result;
}

void sub_100052690(void *a1, char *a2)
{
  if (qword_100935AF0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10093A260);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Client connection closed: %@", v8, 0xCu);
    sub_100039860(v9);
  }

  v11 = OBJC_IVAR____TtC7remindd26RDClientConnectionListener_clientConnections;
  swift_beginAccess();
  v12 = sub_100052BE4(v5);
  swift_endAccess();

  v28 = *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
  v29 = *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 8];
  v30 = *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16];
  v31 = *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 24];
  v32 = *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 32];
  v34 = *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 44];
  v33 = *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 40];
  sub_10000C71C(v28, v29, v30, v31, v32, v33 | (v34 << 32));
  PassthroughSubject.send(_:)();
  sub_10000CC4C(v28, v29, v30, v31, v32, v33 | (v34 << 32), v13, v14);
  v15 = a2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    v19 = *&a2[v11];
    if ((v19 & 0xC000000000000001) != 0)
    {

      v20 = __CocoaSet.count.getter();
      v19, v21, v22, v23, v24, v25, v26, v27;
    }

    else
    {
      v20 = *(v19 + 16);
    }

    *(v18 + 4) = v20;

    _os_log_impl(&_mh_execute_header, v16, v17, "Connection count: %ld", v18, 0xCu);
  }

  else
  {

    v16 = v15;
  }
}

uint64_t sub_100052954()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100052994(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

void sub_1000529E4(_TtC7remindd19RDXPCStorePerformer *a1)
{
  if (qword_100936860 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100951C70);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  a1, v5, v6, v7, v8, v9, v10, v11;
  if (os_log_type_enabled(v3, v4))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136446210;
    v14 = Array.description.getter();
    v16 = v15;
    v17 = sub_10000668C(v14, v15, &v27);
    v16, v18, v19, v20, v21, v22, v23, v24;
    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "RDDataAccess RDDARequest.updateContentsOfAllFolders {accountIDs: %{public}s}", v12, 0xCu);
    sub_10000607C(v13);
  }

  v25 = [objc_opt_self() sharedManager];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v25 updateContentsOfAllFoldersForAccountIDs:isa];
}

uint64_t sub_100052BE4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v14 = sub_1001A1548(v4, v5, sub_10037FBE4, type metadata accessor for RDClientConnection, v10, v11, v12, v13);
      v3, v15, v16, v17, v18, v19, v20, v21;
      return v14;
    }

    v3, v7, v8, v9, v10, v11, v12, v13;
    return 0;
  }

  v23 = v1;
  type metadata accessor for RDClientConnection();
  v24 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v25 = -1 << *(v3 + 32);
  v26 = v24 & ~v25;
  if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    return 0;
  }

  v27 = ~v25;
  while (1)
  {
    v28 = *(*(v3 + 48) + 8 * v26);
    v29 = static NSObject.== infix(_:_:)();

    if (v29)
    {
      break;
    }

    v26 = (v26 + 1) & v27;
    if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  v33 = *v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019B93C(&qword_10093A810, &unk_100797D70);
    v31 = v33;
  }

  v32 = *(*(v31 + 48) + 8 * v26);
  sub_100052DA4(v26);
  result = v32;
  *v23 = v33;
  return result;
}

unint64_t sub_100052DA4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void sub_100052F58()
{
  v0 = type metadata accessor for REM_os_activity.Scope();
  v56 = *(v0 - 8);
  __chkstk_darwin(v0, v1);
  v3 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for REM_os_activity.Options();
  __chkstk_darwin(v4 - 8, v5);
  v6 = type metadata accessor for REM_os_activity();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6, v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  sub_100006654(v10, &unk_1009359A0);
  sub_1000E9B88();
  sub_1000E9D7C(65537);
  static REM_os_activity.Options.ifNonePresent.getter();
  REM_os_activity.init(_:dso:options:)();
  REM_os_activity.Scope.init()();
  REM_os_activity.Scope.enter(_:)();
  v59 = 0;
  v58.rlim_cur = 0;
  v58.rlim_max = 0;
  getrlimit(8, &v58);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v53 = v0;
    v60 = v14;
    *v13 = 136446466;
    swift_beginAccess();
    rlim_cur = v58.rlim_cur;
    sub_1000F508C();
    v15 = BinaryInteger.description.getter();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v60);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    rlim_cur = v58.rlim_max;
    v26 = BinaryInteger.description.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v60);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v13 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v11, v12, "getrlimit(RLIMIT_NOFILE) = (%{public}s, %{public}s)", v13, 0x16u);
    swift_arrayDestroy();
    v0 = v53;
  }

  v37 = objc_autoreleasePoolPush();
  sub_1000EA72C(&v59, &v60);
  objc_autoreleasePoolPop(v37);
  v38 = v60;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Notifying daemon did launch", v41, 2u);
  }

  notify_post(_REMStoreDaemonDidLaunchNotificationName);
  REM_os_activity.Scope.leave()();
  v42 = v59;
  do
  {
    v43 = objc_autoreleasePoolPush();
    v44 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 86400.0, 1u);
    v45 = v42 & gDADMainRunloopStopped;
    objc_autoreleasePoolPop(v43);
  }

  while ((v45 & 1) == 0 && (v44 - 1) > 1);
  (*(v56 + 8))(v3, v0);
  (*(v54 + 8))(v9, v55);
  v38, v46, v47, v48, v49, v50, v51, v52;
}

void sub_100053464()
{
  v1 = OBJC_IVAR____TtC7remindd18RDClientConnection_keepAliveTransaction;
  if (*(v0 + OBJC_IVAR____TtC7remindd18RDClientConnection_keepAliveTransaction))
  {
    v2 = v0;
    swift_unknownObjectRetain();
    if (os_transaction_copy_description())
    {
      if (qword_1009362C0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100006654(v3, qword_100949BB0);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v19 = v7;
        *v6 = 136315138;
        v8 = String.init(cString:)();
        v10 = v9;
        v11 = sub_10000668C(v8, v9, &v19);
        v10, v12, v13, v14, v15, v16, v17, v18;
        *(v6 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v4, v5, "os_transaction RELEASE {name: %s}", v6, 0xCu);
        sub_10000607C(v7);
      }
    }

    swift_unknownObjectRelease();
    *(v2 + v1) = 0;

    swift_unknownObjectRelease();
  }
}

id sub_100053730()
{
  v1 = v0;
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094C8A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deallocating RDXPCStorePerformer", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_sharingObserverForAccountID;
  swift_beginAccess();
  v7 = *&v1[v6];
  *&v1[v6] = _swiftEmptyDictionarySingleton;
  v7, v8, v9, v10, v11, v12, v13, v14;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for RDXPCStorePerformer();
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_100053954(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 32));
  a2(*(v3 + 48));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_1000539C0()
{

  sub_10000CC4C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64) | (*(v0 + 68) << 32), v1, v2);

  return _swift_deallocObject(v0, 70, 7);
}

void sub_100053A1C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100053A94(int a1)
{
  if (a1)
  {
    v2 = 2 * (a1 == 1);
  }

  else
  {
    v2 = 1;
  }

  return (*(v1 + 16))(v2);
}

uint64_t sub_100053AD0(char a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  os_transaction_create();
  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_100942610);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "os_transaction INIT {name: com.apple.remindd._MobileKeybagStateProvider.mkbEventRegistration.callback}", v12, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v14 = Strong;
  v15 = *(Strong + 56);
  *v8 = v15;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v15)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        *(v14 + 97) = 1;
        sub_100346D90();
      }

      else
      {
        v18 = sub_100053D2C();
        v19 = *(v14 + 96);
        *(v14 + 96) = v18;
        sub_100053D84(v19);
      }
    }

LABEL_12:
    sub_10005476C();
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_100053D2C()
{
  if (qword_100935EF8 != -1)
  {
    swift_once();
  }

  v0 = MKBGetDeviceLockState();
  if (v0 < 8)
  {
    return v0 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100053D84(unsigned __int8 a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v79 = *(v4 - 8);
  v80 = v4;
  __chkstk_darwin(v4, v5);
  v77 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DispatchQoS();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78, v7);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = (&v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = os_transaction_create();
  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_100942610);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "os_transaction INIT {name: com.apple.remindd._MobileKeybagStateProvider.eventQueue_lockState.didSet}", v18, 2u);
  }

  v19 = *(v1 + 56);
  *v14 = v19;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v19)
  {
    v22 = a1;
    v23 = *(v1 + 96);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    if (v23 == v22)
    {
      if (v26)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "os_transaction RELEASE {name: com.apple.remindd._MobileKeybagStateProvider.eventQueue_lockState.didSet}", v27, 2u);
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      if (v26)
      {
        v28 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v28 = 136446466;
        if (v22 <= 3)
        {
          v38 = 0xE700000000000000;
          v39 = 0xE600000000000000;
          v40 = 0x64656B636F6CLL;
          if (v22 != 2)
          {
            v40 = 0x676E696B636F6CLL;
            v39 = 0xE700000000000000;
          }

          v41 = 0x64656B636F6C6E75;
          if (v22)
          {
            v38 = 0xE800000000000000;
          }

          else
          {
            v41 = 0x6E776F6E6B6E75;
          }

          if (v22 <= 1)
          {
            v35 = v41;
          }

          else
          {
            v35 = v40;
          }

          if (v22 <= 1)
          {
            v36 = v38;
          }

          else
          {
            v36 = v39;
          }
        }

        else
        {
          v29 = 0x5065636172476E69;
          v30 = 0xED0000646F697265;
          v31 = 0x7472657373416E69;
          v32 = 0xED000079616C6544;
          if (v22 != 7)
          {
            v31 = 0x6C6E556F69426E69;
            v32 = 0xEB000000006B636FLL;
          }

          if (v22 != 6)
          {
            v29 = v31;
            v30 = v32;
          }

          v33 = 0xE800000000000000;
          v34 = 0x64656C6261736964;
          if (v22 != 4)
          {
            v34 = 0xD000000000000010;
            v33 = 0x80000001007F57C0;
          }

          if (v22 <= 5)
          {
            v35 = v34;
          }

          else
          {
            v35 = v29;
          }

          if (v22 <= 5)
          {
            v36 = v33;
          }

          else
          {
            v36 = v30;
          }
        }

        v42 = sub_10000668C(v35, v36, aBlock);
        v36, v43, v44, v45, v46, v47, v48, v49;
        *(v28 + 4) = v42;
        *(v28 + 12) = 2082;
        if (v23 <= 3)
        {
          v58 = 0xE700000000000000;
          v59 = 0xE600000000000000;
          v60 = 0x64656B636F6CLL;
          if (v23 != 2)
          {
            v60 = 0x676E696B636F6CLL;
            v59 = 0xE700000000000000;
          }

          v61 = 0x64656B636F6C6E75;
          if (v23)
          {
            v58 = 0xE800000000000000;
          }

          else
          {
            v61 = 0x6E776F6E6B6E75;
          }

          if (v23 <= 1)
          {
            v56 = v61;
          }

          else
          {
            v56 = v60;
          }

          if (v23 <= 1)
          {
            v57 = v58;
          }

          else
          {
            v57 = v59;
          }
        }

        else
        {
          v50 = 0x5065636172476E69;
          v51 = 0xED0000646F697265;
          v52 = 0x7472657373416E69;
          v53 = 0xED000079616C6544;
          if (v23 != 7)
          {
            v52 = 0x6C6E556F69426E69;
            v53 = 0xEB000000006B636FLL;
          }

          if (v23 != 6)
          {
            v50 = v52;
            v51 = v53;
          }

          v54 = 0xE800000000000000;
          v55 = 0x64656C6261736964;
          if (v23 != 4)
          {
            v55 = 0xD000000000000010;
            v54 = 0x80000001007F57C0;
          }

          if (v23 <= 5)
          {
            v56 = v55;
          }

          else
          {
            v56 = v50;
          }

          if (v23 <= 5)
          {
            v57 = v54;
          }

          else
          {
            v57 = v51;
          }
        }

        v37 = v80;
        v62 = sub_10000668C(v56, v57, aBlock);
        v57, v63, v64, v65, v66, v67, v68, v69;
        *(v28 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v24, v25, "_MobileKeybagStateProvider: Transition: %{public}s -> %{public}s", v28, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v37 = v80;
      }

      v70 = *(v2 + 64);
      v71 = swift_allocObject();
      *(v71 + 16) = v2;
      *(v71 + 24) = v23;
      *(v71 + 32) = v81;
      aBlock[4] = sub_100054944;
      aBlock[5] = v71;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019200;
      aBlock[3] = &unk_1008EE9C0;
      v72 = _Block_copy(aBlock);
      v73 = v70;

      swift_unknownObjectRetain();
      static DispatchQoS.unspecified.getter();
      v82 = &_swiftEmptyArrayStorage;
      sub_10005464C(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
      v74 = v77;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v72);
      swift_unknownObjectRelease();

      (*(v79 + 8))(v74, v37);
      (*(v76 + 8))(v9, v78);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100054604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005464C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100054694(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000546DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100054724(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10005476C()
{
  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100942610);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: com.apple.remindd._MobileKeybagStateProvider.mkbEventRegistration.callback}", v2, 2u);
  }
}

void sub_100054854(uint64_t a1, char a2)
{
  PassthroughSubject.send(_:)();
  if (qword_100935EE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100942610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "os_transaction RELEASE {name: com.apple.remindd._MobileKeybagStateProvider.eventQueue_lockState.didSet}", v5, 2u);
  }
}

uint64_t sub_10005495C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_1000549E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000549F8@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100054A58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054AA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054AD8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054B14()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100054B6C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100054B94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100054BD4()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100054C44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054C7C()
{

  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100054CC4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 24, 7);
}

uint64_t sub_100054CFC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100054D3C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100054E00()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100054EE8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t sub_100054F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100055068(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000551B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10005525C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100055300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100055430(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100055570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000556AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  else
  {
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t _s7remindd14MigrateRequestV6OptionOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7remindd14MigrateRequestV6OptionOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100055828(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100055844(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_100055864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000558DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100055958(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for UnknownStorage();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_100055ADC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for UnknownStorage();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100055CA0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 36)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_100055D4C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 36)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100055DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100055F2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F5104(&qword_100937510, &qword_100792E00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100056068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000560D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100056144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 <= 1)
    {
      return 0;
    }

    else
    {
      return v4 ^ 0xFF;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000561E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = ~a2;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s7remindd37RDAutoCategorizerPromptInputProcessorV37RDAutoCategorizationReminderWithIndexVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_100056310()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056360()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10005647C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10005670C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056744()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100056784@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 lastAccessedSinceReferenceDate];
  *a2 = result;
  return result;
}

uint64_t sub_1000567CC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_100056804()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056844()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005687C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000569AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100056ADC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056B2C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_100056B6C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056BAC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100056BF4()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056C3C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056C74()
{

  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056CBC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056CF8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056D78()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056DB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056DF0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056E30()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *_s7remindd22RDSavedTemplateSectionVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

id sub_100056EDC()
{
  v1 = [*v0 account];

  return v1;
}

uint64_t sub_100056F14()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056FC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056FF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100057050@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 markedForDeletion];
  *a2 = result;
  return result;
}

uint64_t sub_1000570E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100057124()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000571E8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000572E4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000573BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000573F8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1000574A8()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000574F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100057530()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100057568()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v6 + 8), v7, v8, v9, v10, v11, v12, v13;

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_100057674()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  *(v0 + v7 + 8), v8, v9, v10, v11, v12, v13, v14;

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_100057768(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 24, 7);
}

uint64_t sub_1000577A4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1000578F4()
{

  return _swift_deallocObject(v0, 88, 7);
}

id sub_10005795C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

uint64_t sub_1000579AC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_100057AFC()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100057B6C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100057BBC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100057E08(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_100057ED4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_100057F94()
{
  v1 = type metadata accessor for REMUrgentReminder();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100058074()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000580D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005810C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_10005814C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100058288(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

id sub_1000583C4@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 ckDirtyFlags];
  *a2 = result;
  return result;
}

uint64_t sub_100058424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100058554(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10005868C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 24, 7);
}

uint64_t sub_1000586C4()
{

  return _swift_deallocObject(v0, 48, 7);
}

id sub_10005870C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 activityTypeRawValue];
  *a2 = result;
  return result;
}

uint64_t sub_100058764(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100058810(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100058900()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100058978()
{

  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000589F0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100058A38()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058A70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058AA8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058AF0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100058B38()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058BB0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100058BF8()
{

  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100058C40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058C78()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100058CC0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100058D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 56) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100058E9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 56) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000592E0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100059328()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100059360()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100059398()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

BOOL sub_1000593F4(id *a1)
{
  v1 = [*a1 name];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id sub_100059444@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reminder];
  *a2 = result;
  return result;
}

uint64_t sub_100059580(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 24, 7);
}

uint64_t sub_1000595B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000595F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100059630()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100059670()
{

  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000596B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100059778(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100059848@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v3;
  v4 = v2;
}

uint64_t sub_100059884(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 24, 7);
}

uint64_t sub_1000598C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10005998C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reminder];
  *a2 = result;
  return result;
}

id sub_100059AC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

id sub_100059B10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

id sub_100059B70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 priority];
  *a2 = result;
  return result;
}

id sub_100059BC0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 displayDateIsAllDay];
  *a2 = result;
  return result;
}

uint64_t sub_100059C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100059C94(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100059D18(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_100059DC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100059E78(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 24, 7);
}

uint64_t sub_100059EB0()
{
  sub_10000607C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

id sub_100059EFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

id sub_100059F6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 smartList];
  *a2 = result;
  return result;
}

id sub_100059FBC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 markedForDeletion];
  *a2 = result;
  return result;
}

id sub_10005A004@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

uint64_t sub_10005A1D4()
{
  swift_unknownObjectRelease();

  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 56), v8, v9, v10, v11, v12, v13, v14;

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005A224()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005A260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10005A2CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10005A33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RDXPCEventStream.Token(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005A3FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RDXPCEventStream.Token(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005A4BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005A4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10005A5A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_10005A644@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 remObjectID];
  *a2 = result;
  return result;
}

uint64_t sub_10005A688(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 64, 7);
}

id sub_10005A6E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 priority];
  *a2 = result;
  return result;
}

uint64_t sub_10005A760()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005A910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_10005A9E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_10005AAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000F5104(&qword_10093F968, &unk_10079E200);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 60);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 68));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10005ABD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000F5104(&qword_10093F968, &unk_10079E200);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 68)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 60);
  }

  return v11(v12, a2, a2, v10);
}