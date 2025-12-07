void sub_1001FF7E0(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  *&v6 = __chkstk_darwin(v4 - 8, v5).n128_u64[0];
  v8 = &v36 - v7;
  v9 = *a1;
  v10 = [v9 name];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v14, v15, v16, v17, v18, v19, v20, v21;
  v22 = (v14 >> 56) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v22 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v22 && (v23 = [v9 account]) != 0)
  {
    v24 = v23;
    v25 = [v23 identifier];
    if (v25)
    {
      v26 = v25;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = type metadata accessor for UUID();
      (*(*(v27 - 8) + 56))(v8, 0, 1, v27);
      sub_1000050A4(v8, &unk_100939D90, "8\n\r");
      *a2 = v9;
      v28 = v9;
    }

    else
    {
      v32 = type metadata accessor for UUID();
      (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
      sub_1000050A4(v8, &unk_100939D90, "8\n\r");
      v33 = objc_opt_self();
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v35 = String._bridgeToObjectiveC()();
      [v33 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v35];

      swift_willThrow();
    }
  }

  else
  {
LABEL_8:
    v29 = objc_opt_self();
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    v30 = swift_getObjCClassFromMetadata();
    v31 = String._bridgeToObjectiveC()();
    [v29 unexpectedNilPropertyWithClass:v30 property:v31];

    swift_willThrow();
  }
}

void *sub_1001FFB30(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_33:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v57 = v1 & 0xC000000000000001;
      v54 = v1 & 0xFFFFFFFFFFFFFF8;
      v4 = _swiftEmptyDictionarySingleton;
      v55 = v2;
      v56 = v1;
      while (1)
      {
        if (v57)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *(v54 + 16))
          {
            goto LABEL_31;
          }

          v8 = *(v1 + 8 * v3 + 32);
        }

        v9 = v8;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v10 = [v8 accountIdentifier];
        if (!v10)
        {
          if (qword_100935BF8 != -1)
          {
            swift_once();
          }

          v30 = type metadata accessor for Logger();
          sub_100006654(v30, qword_10093CC70);
          v31 = v9;
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v59 = v58;
            *v34 = 136446210;
            v35 = [v31 ic_loggingDescription];
            v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v37;

            v39 = v36;
            v7 = v3 + 1;
            v40 = sub_10000668C(v39, v38, &v59);
            v41 = v38;
            v1 = v56;
            v41, v42, v43, v44, v45, v46, v47, v48;
            *(v34 + 4) = v40;
            v2 = v55;
            _os_log_impl(&_mh_execute_header, v32, v33, "RDHashtagLabelUpdater: REMCDHashtagLabel with nil accountIdentifier: %{public}s", v34, 0xCu);
            sub_10000607C(v58);
          }

          else
          {
          }

          goto LABEL_6;
        }

        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v4;
        v24 = sub_100005F4C(v12, v14);
        v25 = v4[2];
        v26 = (v17 & 1) == 0;
        v27 = v25 + v26;
        if (__OFADD__(v25, v26))
        {
          goto LABEL_30;
        }

        v28 = v17;
        if (v4[3] >= v27)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v17 & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            sub_100373650();
            if ((v28 & 1) == 0)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          sub_10036A8DC(v27, isUniquelyReferenced_nonNull_native);
          v29 = sub_100005F4C(v12, v14);
          if ((v28 & 1) != (v17 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v24 = v29;
          if ((v28 & 1) == 0)
          {
LABEL_24:
            v4 = v59;
            v59[(v24 >> 6) + 8] |= 1 << v24;
            v49 = (v4[6] + 16 * v24);
            *v49 = v12;
            v49[1] = v14;
            *(v4[7] + 8 * v24) = v15;

            v50 = v4[2];
            v51 = __OFADD__(v50, 1);
            v52 = v50 + 1;
            if (v51)
            {
              goto LABEL_32;
            }

            v4[2] = v52;
            goto LABEL_5;
          }
        }

        v14, v17, v18, v19, v20, v21, v22, v23;
        v4 = v59;
        v5 = v59[7];
        v6 = *(v5 + 8 * v24);
        *(v5 + 8 * v24) = v15;

LABEL_5:
        v2 = v55;
        v1 = v56;
        v7 = v3 + 1;
LABEL_6:
        ++v3;
        if (v7 == v2)
        {
          return v4;
        }
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

void sub_1001FFEF8(unint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = (&v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6, v7);
  v98 = &v93 - v8;
  __chkstk_darwin(v9, v10);
  v101 = &v93 - v11;
  __chkstk_darwin(v12, v13);
  v15 = &v93 - v14;
  v16 = type metadata accessor for Date();
  v108 = *(v16 - 8);
  __chkstk_darwin(v16, v17);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v104 = (&v93 - v22);
  __chkstk_darwin(v23, v24);
  v26 = &v93 - v25;
  __chkstk_darwin(v27, v28);
  v106 = &v93 - v29;
  __chkstk_darwin(v30, v31);
  v105 = &v93 - v32;
  v112[0] = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_64:
    v33 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v33 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v99 = v5;
  v100 = v19;
  v95 = v26;
  v96 = v15;
  if (v33)
  {
    v19 = 0;
    v15 = (a1 & 0xC000000000000001);
    do
    {
      if (v15)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v34 = *(a1 + 8 * v19 + 32);
      }

      v5 = v34;
      v35 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v36 = [(RDXPCStorePerformer *)v34 name];
      if (v36)
      {

        v26 = v112;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v19;
    }

    while (v35 != v33);
    a1 = v112[0];
    v19 = v100;
    if ((v112[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_65;
  }

  a1 = &_swiftEmptyArrayStorage;
  if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_65;
  }

LABEL_17:
  if ((a1 & 0x4000000000000000) != 0)
  {
LABEL_65:
    v97 = _CocoaArrayWrapper.endIndex.getter();
    if (!v97)
    {
      goto LABEL_66;
    }

    goto LABEL_19;
  }

  v97 = *(a1 + 16);
  if (!v97)
  {
LABEL_66:

    return;
  }

LABEL_19:
  v94 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
    v38 = v37;
    if (v97 != 1)
    {
      v15 = v108 + 32;
      v109 = (v108 + 56);
      v102 = (v108 + 48);
      v39 = v108 + 8;
      v40 = 1;
      v93 = a1;
      do
      {
        v107 = v38;
        v41 = v40;
        while (1)
        {
          if (v94)
          {
            v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v41 & 0x8000000000000000) != 0)
            {
              goto LABEL_62;
            }

            if (v41 >= *(a1 + 16))
            {
              goto LABEL_63;
            }

            v60 = *(a1 + 8 * v41 + 32);
          }

          v26 = v60;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_61;
          }

          v103 = v41 + 1;
          v61 = [v60 creationDate];
          v108 = v26;
          if (v61)
          {
            v62 = v106;
            v63 = v61;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v64 = *v15;
            v65 = v96;
            (*v15)(v96, v62, v16);
            v5 = *v109;
            (*v109)(v65, 0, 1, v16);
            v64(v105, v65, v16);
          }

          else
          {
            v5 = *v109;
            v66 = v96;
            (*v109)(v96, 1, 1, v16);
            static Date.distantFuture.getter();
            if ((*v102)(v66, 1, v16) != 1)
            {
              sub_1000050A4(v66, &unk_100938850, qword_100795AE0);
            }
          }

          v67 = [v107 creationDate];
          if (v67)
          {
            v68 = v106;
            v69 = v67;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v70 = *v15;
            v71 = v101;
            (*v15)(v101, v68, v16);
            (v5)(v71, 0, 1, v16);
            v72 = v95;
            v70(v95, v71, v16);
          }

          else
          {
            v73 = v101;
            (v5)(v101, 1, 1, v16);
            v72 = v95;
            static Date.distantFuture.getter();
            if ((*v102)(v73, 1, v16) != 1)
            {
              sub_1000050A4(v101, &unk_100938850, qword_100795AE0);
            }
          }

          v74 = v105;
          v26 = static Date.< infix(_:_:)();
          v75 = *v39;
          (*v39)(v72, v16);
          v75(v74, v16);
          if (v26)
          {
            break;
          }

          v76 = [v108 creationDate];
          if (v76)
          {
            v77 = v106;
            v78 = v76;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v79 = *v15;
            v80 = v98;
            (*v15)(v98, v77, v16);
            (v5)(v80, 0, 1, v16);
            v19 = v100;
            v79(v104, v80, v16);
          }

          else
          {
            v81 = v98;
            (v5)(v98, 1, 1, v16);
            static Date.distantFuture.getter();
            if ((*v102)(v81, 1, v16) != 1)
            {
              sub_1000050A4(v98, &unk_100938850, qword_100795AE0);
            }
          }

          v82 = [v107 creationDate];
          if (v82)
          {
            v83 = v106;
            v84 = v82;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v85 = *v15;
            v86 = v99;
            (*v15)(v99, v83, v16);
            (v5)(v86, 0, 1, v16);
            v85(v19, v86, v16);
          }

          else
          {
            v87 = v99;
            (v5)(v99, 1, 1, v16);
            static Date.distantFuture.getter();
            if ((*v102)(v87, 1, v16) != 1)
            {
              sub_1000050A4(v99, &unk_100938850, qword_100795AE0);
            }
          }

          v5 = v104;
          v26 = static Date.== infix(_:_:)();
          v75(v19, v16);
          v75(v5, v16);
          if (v26)
          {
            v88 = [v108 name];
            if (v88)
            {
              v89 = v88;
              v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v5 = v91;
            }

            else
            {
              v90 = 0;
              v5 = 0xE000000000000000;
            }

            v112[0] = v90;
            v112[1] = v5;
            v92 = [v107 name];
            if (v92)
            {
              v42 = v92;
              v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v45 = v44;
            }

            else
            {
              v43 = 0;
              v45 = 0xE000000000000000;
            }

            v19 = v100;
            v110 = v43;
            v111 = v45;
            sub_10013BCF4();
            v26 = StringProtocol.localizedStandardCompare<A>(_:)();
            v5, v46, v47, v48, v49, v50, v51, v52;
            v45, v53, v54, v55, v56, v57, v58, v59;
            if (v26 == -1)
            {
              break;
            }
          }

          ++v41;
          a1 = v93;
          if (v103 == v97)
          {
            goto LABEL_66;
          }
        }

        v40 = v103;
        a1 = v93;
        v38 = v108;
      }

      while (v103 != v97);
    }

    goto LABEL_66;
  }

  if (*(a1 + 16))
  {
    v37 = *(a1 + 32);
    goto LABEL_22;
  }

  __break(1u);
}

void *sub_100200890(unint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2, v4);
  v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10, v11);
  v13 = &v45 - v12;
  if (a1 >> 62)
  {
LABEL_31:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_3:
      v15 = 0;
      v56 = v2;
      v57 = a1 & 0xC000000000000001;
      v54 = (v3 + 6);
      v55 = (v3 + 7);
      v50 = (v3 + 2);
      v51 = a1 & 0xFFFFFFFFFFFFFF8;
      v49 = (v3 + 1);
      v53 = _swiftEmptyDictionarySingleton;
      v2 = &unk_100939D90;
      v47 = v9;
      v48 = a1;
      v45 = v14;
      v46 = v13;
      while (1)
      {
        if (v57)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v51 + 16))
          {
            goto LABEL_28;
          }

          v16 = *(a1 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v19 = [v16 identifier];
        if (v19)
        {
          v20 = v19;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v2 = &unk_100939D90;
          v21 = 0;
        }

        else
        {
          v21 = 1;
        }

        v3 = v56;
        (*v55)(v9, v21, 1, v56);
        sub_100031B58(v9, v13, &unk_100939D90, "8\n\r");
        if (!(*v54)(v13, 1, v3))
        {
          break;
        }

        sub_1000050A4(v13, &unk_100939D90, "8\n\r");
LABEL_5:
        ++v15;
        if (v18 == v14)
        {
          return v53;
        }
      }

      v22 = v52;
      (*v50)(v52, v13, v3);
      sub_1000050A4(v13, &unk_100939D90, "8\n\r");
      v13 = UUID.uuidString.getter();
      v9 = v23;
      (*v49)(v22, v3);
      v24 = v17;
      v2 = v53;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v2;
      a1 = sub_100005F4C(v13, v9);
      v33 = v2[2];
      v34 = (v26 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_29;
      }

      v36 = v26;
      if (v2[3] < v35)
      {
        sub_10036A224(v35, isUniquelyReferenced_nonNull_native);
        v2 = v58;
        v37 = sub_100005F4C(v13, v9);
        if ((v36 & 1) != (v26 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        a1 = v37;
        if ((v36 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_22:
        v9, v26, v27, v28, v29, v30, v31, v32;
        v53 = v58;
        v38 = v58[7];
        v39 = *(v38 + 8 * a1);
        *(v38 + 8 * a1) = v24;

LABEL_26:
        v9 = v47;
        a1 = v48;
        v14 = v45;
        v13 = v46;
        v2 = &unk_100939D90;
        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v26)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v2 = &v58;
        sub_1003731D4();
        if (v36)
        {
          goto LABEL_22;
        }
      }

LABEL_24:
      v3 = v58;
      v58[(a1 >> 6) + 8] |= 1 << a1;
      v40 = (v3[6] + 16 * a1);
      *v40 = v13;
      v40[1] = v9;
      *(v3[7] + 8 * a1) = v24;

      v41 = v3[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_30;
      }

      v53 = v3;
      v3[2] = v43;
      goto LABEL_26;
    }
  }

  return _swiftEmptyDictionarySingleton;
}

void sub_100200CF8(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, void *a3, int a4)
{
  v551 = a4;
  v555 = a3;
  v545 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v545, v6);
  v544 = &v534 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v549 = &v534 - v10;
  v550 = type metadata accessor for RDHashtagLabelUpdater.HashtagTombstone(0);
  v11 = *(v550 - 8);
  __chkstk_darwin(v550 - 8, v12);
  v559 = &v534 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v556 = &v534 - v16;
  __chkstk_darwin(v17, v18);
  v20 = &v534 - v19;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21, v23);
  v25 = &v534 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1->clientIdentity;
  v27 = &_swiftEmptyArrayStorage;
  v560 = v11;
  v561 = v22;
  v554 = a1;
  if (v26)
  {
    v28 = v25;
    v553 = v4;
    v562 = &_swiftEmptyArrayStorage;
    sub_100253258(0, v26, 0);
    v29 = v562;
    v30 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v31 = *(v11 + 72);
    v557 = v22 + 32;
    v558 = v31;
    do
    {
      sub_100211458(v30, v20);
      (*(v22 + 16))(v28, v20, v21);
      sub_1002114BC(v20);
      v562 = v29;
      v33 = *v29->clientIdentity;
      v32 = *&v29->clientIdentity[8];
      if (v33 >= v32 >> 1)
      {
        sub_100253258((v32 > 1), v33 + 1, 1);
        v29 = v562;
      }

      *v29->clientIdentity = v33 + 1;
      (*&v561->clientIdentity[16])(v29 + ((v561->dataAccessRequestsWriter[2] + 32) & ~v561->dataAccessRequestsWriter[2]) + *&v561->storeProvider[10] * v33, v28, v21);
      v30 += v558;
      --v26;
    }

    while (v26);
    v27 = &_swiftEmptyArrayStorage;
    v34 = v553;
  }

  else
  {
    v34 = v4;
    v29 = &_swiftEmptyArrayStorage;
  }

  v36 = sub_1001A59A4(v35);
  v558 = v29;
  v29, v37, v38, v39, v40, v41, v42, v43;
  v563 = &_swiftEmptyArrayStorage;
  v51 = *(v36 + 16);
  v52 = v561;
  if (!v51)
  {
    goto LABEL_11;
  }

  v27 = sub_100368A1C(*(v36 + 16), 0);
  sub_1002799DC(&v562, v27 + ((v52->dataAccessRequestsWriter[2] + 32) & ~v52->dataAccessRequestsWriter[2]), v51, v36);
  v36 = v53;
  sub_10001B860(v562);
  if (v36 != v51)
  {
    __break(1u);
LABEL_11:
    v36, v44, v45, v46, v47, v48, v49, v50;
  }

  v562 = v27;
  sub_1000F5104(&qword_10093D008, qword_10079AAC0);
  sub_10000CB48(&qword_10093D010, &qword_10093D008, qword_10079AAC0, &protocol conformance descriptor for [A]);
  v54 = BidirectionalCollection<>.slices(by:)();

  v55 = v555;
  sub_10020BD74(v54, 1);
  v54, v56, v57, v58, v59, v60, v61, v62;
  v555 = v55;

  v70 = v563;
  v562 = _swiftEmptyDictionarySingleton;
  if (v563 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v563 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v72 = 0;
    while (1)
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v72 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v73 = *(v70 + 8 * v72 + 32);
      }

      v74 = v73;
      v75 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      v563 = v73;
      sub_1002028D8(&v562, &v563);
      if (v34)
      {
        goto LABEL_243;
      }

      ++v72;
      if (v75 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_26:
  v558, v63, v64, v65, v66, v67, v68, v69;
  v70, v76, v77, v78, v79, v80, v81, v82;
  v536 = v562;
  v83 = v554;

  v85 = sub_10020DD3C(v84);
  v535 = v34;
  v83, v86, v87, v88, v89, v90, v91, v92;
  v94 = 0;
  v96 = v85 + 8;
  v95 = v85[8];
  v539 = v85;
  v97 = 1 << *(v85 + 32);
  if (v97 < 64)
  {
    v98 = ~(-1 << v97);
  }

  else
  {
    v98 = -1;
  }

  v74 = v98 & v95;
  v99 = (v97 + 63) >> 6;
  *&v93 = 136315394;
  v546 = v93;
  *&v93 = 136315138;
  v547 = v93;
  v538 = v85 + 8;
  v537 = v99;
  if ((v98 & v95) == 0)
  {
LABEL_30:
    while (1)
    {
      v100 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        break;
      }

      if (v100 >= v99)
      {

        v536, v520, v521, v522, v523, v524, v525, v526;
        return;
      }

      v74 = v96[v100];
      ++v94;
      if (v74)
      {
        v94 = v100;
        goto LABEL_34;
      }
    }

LABEL_225:
    __break(1u);
    goto LABEL_226;
  }

  while (1)
  {
    while (1)
    {
LABEL_34:
      v541 = v94;
      v101 = __clz(__rbit64(v74)) | (v94 << 6);
      v102 = (v539[6] + 16 * v101);
      v103 = *v102;
      v104 = v102[1];
      v105 = *(v539[7] + 8 * v101);
      v106 = qword_100935BF8;

      if (v106 != -1)
      {
        swift_once();
      }

      v107 = type metadata accessor for Logger();
      v108 = sub_100006654(v107, qword_10093CC70);

      v557 = v108;
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.info.getter();
      v105, v111, v112, v113, v114, v115, v116, v117;
      v104, v118, v119, v120, v121, v122, v123, v124;
      v125 = os_log_type_enabled(&v109->super, v110);
      v561 = v105;
      if (v125)
      {
        LODWORD(v553) = v110;
        v540 = v74;
        v126 = swift_slowAlloc();
        v548 = swift_slowAlloc();
        v562 = v548;
        *v126 = v546;
        v554 = v103;
        *(v126 + 4) = sub_10000668C(v103, v104, &v562);
        v552 = v126;
        *(v126 + 12) = 2082;
        v127 = *(v105 + 16);
        v558 = v109;
        if (v127)
        {
          v128 = v105 + ((*(v560 + 80) + 32) & ~*(v560 + 80));
          v129 = *(v560 + 72);
          v130 = &_swiftEmptyArrayStorage;
          do
          {
            v131 = v556;
            sub_100211458(v128, v556);
            v132 = UUID.uuidString.getter();
            v134 = v133;
            sub_1002114BC(v131);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v130 = sub_100365788(0, *v130->clientIdentity + 1, 1, v130, v135, v136, v137, v138);
            }

            v140 = *v130->clientIdentity;
            v139 = *&v130->clientIdentity[8];
            if (v140 >= v139 >> 1)
            {
              v130 = sub_100365788((v139 > 1), v140 + 1, 1, v130, v135, v136, v137, v138);
            }

            *v130->clientIdentity = v140 + 1;
            v141 = v130 + 16 * v140;
            *(v141 + 4) = v132;
            *(v141 + 5) = v134;
            v128 += v129;
            --v127;
          }

          while (v127);
        }

        else
        {
          v130 = &_swiftEmptyArrayStorage;
        }

        v149 = Array.description.getter();
        v151 = v150;
        v130, v150, v152, v153, v154, v155, v156, v157;
        v158 = sub_10000668C(v149, v151, &v562);
        v151, v159, v160, v161, v162, v163, v164, v165;
        v166 = v552;
        *&v552->storeController[6] = v158;
        v167 = v558;
        _os_log_impl(&_mh_execute_header, v558, v553, "RDHashtagLabelUpdater processing hashtag tombstones {canonicalName: %s, deletedIDs: %{public}s}", v166, 0x16u);
        swift_arrayDestroy();

        v74 = v540;
        v103 = v554;
      }

      else
      {
      }

      v74 &= v74 - 1;
      v168 = HIBYTE(v104) & 0xF;
      if ((v104 & 0x2000000000000000) == 0)
      {
        v168 = v103 & 0xFFFFFFFFFFFFLL;
      }

      if (!v168)
      {
        v202 = v103;
        v561, v142, v143, v144, v145, v146, v147, v148;

        v203 = Logger.logObject.getter();
        v204 = static os_log_type_t.fault.getter();
        v104, v205, v206, v207, v208, v209, v210, v211;
        if (os_log_type_enabled(v203, v204))
        {
          v219 = swift_slowAlloc();
          v220 = swift_slowAlloc();
          v562 = v220;
          *v219 = v547;
          v221 = sub_10000668C(v202, v104, &v562);
          v222 = v104;
          v223 = v221;
          v222, v224, v225, v226, v227, v228, v229, v230;
          *(v219 + 4) = v223;
          _os_log_impl(&_mh_execute_header, v203, v204, "RDHashtagLabelUpdater: Impossible to get here, concealed hashtag[%s] with nil name should have been filtered", v219, 0xCu);
          sub_10000607C(v220);
        }

        else
        {
          v104, v212, v213, v214, v215, v216, v217, v218;
        }

        goto LABEL_65;
      }

      v169 = sub_10020E138(v555, v103, v104);
      v177 = v169;
      v562 = v169;
      v178 = v169 >> 62;
      v179 = v169 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v180 = v536;
      if (v179)
      {
        break;
      }

      v177, v170, v171, v172, v173, v174, v175, v176;
      v561, v231, v232, v233, v234, v235, v236, v237;
      v104, v238, v239, v240, v241, v242, v243, v244;
LABEL_65:
      v96 = v538;
      v94 = v541;
      v99 = v537;
      if (!v74)
      {
        goto LABEL_30;
      }
    }

    v181 = *v536->clientIdentity;
    v540 = v74;
    v558 = v104;
    v553 = v177;
    v554 = v103;
    v543 = v178;
    if (v181)
    {
      v182 = sub_100005F4C(v103, v104);
      if (v183)
      {
        v184 = *(*&v180->clientIdentity[40] + 8 * v182);

        v186 = v535;
        v187 = sub_10020D874(v185);
        v535 = v186;
        v184, v188, v189, v190, v191, v192, v193, v194;
        v195 = sub_1001FFB30(v177);
        v196 = 0;
        v198 = v187 + 8;
        v197 = v187[8];
        v548 = v187;
        v199 = 1 << *(v187 + 32);
        if (v199 < 64)
        {
          v200 = ~(-1 << v199);
        }

        else
        {
          v200 = -1;
        }

        v201 = v200 & v197;
        v74 = (v199 + 63) >> 6;
        while (v201)
        {
          v245 = v201;
LABEL_74:
          v201 = (v245 - 1) & v245;
          if (*v195->clientIdentity)
          {
            v552 = ((v245 - 1) & v245);
            v247 = __clz(__rbit64(v245)) | (v196 << 6);
            v248 = *(*(v548 + 56) + 8 * v247);
            v249 = (*(v548 + 48) + 16 * v247);
            v250 = *v249;
            v251 = v249[1];

            v252 = v195;
            v253 = sub_100005F4C(v250, v251);
            v255 = v254;
            v251, v254, v256, v257, v258, v259, v260, v261;
            if (v255)
            {
              v269 = *(*&v252->clientIdentity[40] + 8 * v253);
              v270 = sub_1001A5FDC(v248);
              v248, v271, v272, v273, v274, v275, v276, v277;
              sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
              v104 = v558;
              sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190, &protocol conformance descriptor for NSObject);
              isa = Set._bridgeToObjectiveC()().super.isa;
              v270, v279, v280, v281, v282, v283, v284, v285;
              [v269 removeHashtags:isa];
            }

            else
            {
              v248, v262, v263, v264, v265, v266, v267, v268;
            }

            v201 = v552;
            v177 = v553;
            v195 = v252;
          }
        }

        while (1)
        {
          v246 = v196 + 1;
          if (__OFADD__(v196, 1))
          {
            goto LABEL_227;
          }

          if (v246 >= v74)
          {
            break;
          }

          v245 = v198[v246];
          ++v196;
          if (v245)
          {
            v196 = v246;
            goto LABEL_74;
          }
        }

        v195, v286, v287, v288, v289, v290, v291, v292;
        v178 = v543;
      }
    }

    v563 = &_swiftEmptyArrayStorage;
    if (!v178)
    {
      v293 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v293)
      {
        goto LABEL_99;
      }

      goto LABEL_81;
    }

    v293 = _CocoaArrayWrapper.endIndex.getter();
    if (!v293)
    {
LABEL_99:
      v552 = &_swiftEmptyArrayStorage;
      v309 = v177 & 0xFFFFFFFFFFFFFF8;
      if (v178)
      {
        goto LABEL_100;
      }

LABEL_96:
      v310 = *(v309 + 16);
      if (!v310)
      {
        goto LABEL_113;
      }

LABEL_101:
      v311 = 0;
      v312 = v177 & 0xC000000000000001;
      v548 = v177 & 0xFFFFFFFFFFFFFF8;
      v313 = 5;
      while (1)
      {
        if (v312)
        {
          v314 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v311 >= *(v548 + 16))
          {
            goto LABEL_233;
          }

          v314 = *(v177 + 8 * v311 + 32);
        }

        v315 = v314;
        v316 = [v314 hashtags];
        if (!v316)
        {
          break;
        }

        v74 = v316;
        sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
        sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190, &protocol conformance descriptor for NSObject);
        v317 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v317 & 0xC000000000000001) != 0)
        {
          v74 = __CocoaSet.count.getter();
          v317, v318, v319, v320, v321, v322, v323, v324;

          v104 = v558;
          v177 = v553;
          if (!v74)
          {
            goto LABEL_133;
          }
        }

        else
        {

          v325 = *(v317 + 16);
          v317, v326, v327, v328, v329, v330, v331, v332;
          v104 = v558;
          v177 = v553;
          if (!v325)
          {
            goto LABEL_133;
          }
        }

        v333 = v311 + 1;
        if (__OFADD__(v311, 1))
        {
          goto LABEL_229;
        }

        ++v311;
        ++v313;
        if (v333 == v310)
        {
          goto LABEL_113;
        }
      }

LABEL_133:
      v352 = v311 + 1;
      if (__OFADD__(v311, 1))
      {
        goto LABEL_242;
      }

      if (v543)
      {
        v353 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v353 = *(v548 + 16);
      }

      while (2)
      {
        if (v352 == v353)
        {
          goto LABEL_116;
        }

        v354 = v313 - 4;
        if ((v177 & 0xC000000000000001) != 0)
        {
          v355 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v354 & 0x8000000000000000) != 0)
          {
            goto LABEL_230;
          }

          if (v354 >= *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_231;
          }

          v355 = *(v177 + 8 * v313);
        }

        v356 = v355;
        v357 = [v355 hashtags];
        if (v357)
        {
          v74 = v357;
          v553 = v177 & 0xC000000000000001;
          v358 = v177;
          sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
          sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190, &protocol conformance descriptor for NSObject);
          v359 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          if ((v359 & 0xC000000000000001) != 0)
          {
            v74 = __CocoaSet.count.getter();
            v359, v360, v361, v362, v363, v364, v365, v366;

            if (v74)
            {
              goto LABEL_145;
            }

LABEL_150:
            v104 = v558;
            v177 = v358;
          }

          else
          {

            v369 = *(v359 + 16);
            v359, v370, v371, v372, v373, v374, v375, v376;
            if (!v369)
            {
              goto LABEL_150;
            }

LABEL_145:
            v104 = v558;
            v177 = v358;
            if (v354 != v311)
            {
              if (v553)
              {
                v367 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v368 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v311 & 0x8000000000000000) != 0)
                {
                  goto LABEL_239;
                }

                v377 = *((v358 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v311 >= v377)
                {
                  goto LABEL_240;
                }

                if (v354 >= v377)
                {
                  goto LABEL_241;
                }

                v378 = *(v358 + 8 * v313);
                v367 = *(v177 + 8 * v311 + 32);
                v368 = v378;
              }

              v74 = v368;
              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v177 & 0x8000000000000000) != 0 || (v177 & 0x4000000000000000) != 0)
              {
                v177 = sub_1002618D4();
                v379 = (v177 >> 62) & 1;
              }

              else
              {
                LODWORD(v379) = 0;
              }

              v380 = v177 & 0xFFFFFFFFFFFFFF8;
              v381 = *((v177 & 0xFFFFFFFFFFFFFF8) + 8 * v311 + 0x20);
              *((v177 & 0xFFFFFFFFFFFFFF8) + 8 * v311 + 0x20) = v74;

              if ((v177 & 0x8000000000000000) != 0 || v379)
              {
                v177 = sub_1002618D4();
                v380 = v177 & 0xFFFFFFFFFFFFFF8;
                if ((v354 & 0x8000000000000000) != 0)
                {
                  goto LABEL_235;
                }
              }

              else if ((v354 & 0x8000000000000000) != 0)
              {
                goto LABEL_235;
              }

              if (v354 >= *(v380 + 16))
              {
                goto LABEL_236;
              }

              v382 = *(v380 + 8 * v313);
              *(v380 + 8 * v313) = v367;

              v562 = v177;
            }

            v383 = __OFADD__(v311++, 1);
            if (v383)
            {
              goto LABEL_234;
            }
          }
        }

        else
        {
        }

        v352 = v313 - 3;
        if (__OFADD__(v354, 1))
        {
          goto LABEL_232;
        }

        if (v177 >> 62)
        {
          v353 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v353 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v313;
        continue;
      }
    }

LABEL_81:
    v294 = 0;
    v552 = (v177 & 0xC000000000000001);
    v295 = v177 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v552)
      {
        v296 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v294 >= *(v295 + 16))
        {
          goto LABEL_224;
        }

        v296 = *(v177 + 8 * v294 + 32);
      }

      v297 = v296;
      v298 = v294 + 1;
      if (__OFADD__(v294, 1))
      {
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
        goto LABEL_225;
      }

      v299 = [v296 hashtags];
      if (v299 && ((v300 = v299, sub_1000060C8(0, &qword_10093CFE0, off_1008D4190), sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190, &protocol conformance descriptor for NSObject), v74 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v300, (v74 & 0xC000000000000001) == 0) ? (v308 = *(v74 + 16)) : (v308 = __CocoaSet.count.getter()), v74, v301, v302, v303, v304, v305, v306, v307, v104 = v558, v177 = v553, v308))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v74 = *(v563 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v294;
    }

    while (v298 != v293);
    v552 = v563;
    v309 = v177 & 0xFFFFFFFFFFFFFF8;
    if (!v543)
    {
      goto LABEL_96;
    }

LABEL_100:
    v310 = _CocoaArrayWrapper.endIndex.getter();
    if (v310)
    {
      goto LABEL_101;
    }

LABEL_113:
    if (v543)
    {
      v311 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v311 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

LABEL_116:
    if (v177 >> 62)
    {
      v334 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v334 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v335 = v550;
    v336 = v552;
    if (v334 < v311)
    {
      goto LABEL_237;
    }

    sub_100260EBC(v311, v334);
    if ((v336 & 0x8000000000000000) != 0 || (v336 & 0x4000000000000000) != 0)
    {
      v337 = _CocoaArrayWrapper.endIndex.getter();
      if (!v337)
      {
        goto LABEL_177;
      }

LABEL_122:
      if (v337 >= 1)
      {
        v338 = 0;
        v339 = v336 & 0xC000000000000001;
        do
        {
          if (v339)
          {
            v340 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v340 = *&v336->clientIdentity[8 * v338 + 16];
          }

          v341 = v340;
          if (v551)
          {
            [v340 setWasDeletedDueToUserInitiatedChanges:1];
          }

          [v555 deleteObject:v341];

          v342 = Logger.logObject.getter();
          v74 = static os_log_type_t.info.getter();
          v104, v343, v344, v345, v346, v347, v348, v349;
          if (os_log_type_enabled(v342, v74))
          {
            v350 = swift_slowAlloc();
            v351 = swift_slowAlloc();
            v563 = v351;
            *v350 = v547;
            *(v350 + 4) = sub_10000668C(v554, v104, &v563);
            _os_log_impl(&_mh_execute_header, v342, v74, "RDHashtagLabelUpdater deleted hashtag label {canonicalName: %s}", v350, 0xCu);
            sub_10000607C(v351);
            v335 = v550;

            v336 = v552;
          }

          ++v338;
        }

        while (v337 != v338);
        goto LABEL_177;
      }

      goto LABEL_238;
    }

    v337 = *v336->clientIdentity;
    if (v337)
    {
      goto LABEL_122;
    }

LABEL_177:

    v391 = v562;
    if (v562 >> 62)
    {
      v392 = _CocoaArrayWrapper.endIndex.getter();
      v548 = v391;
      if (v392)
      {
        break;
      }

      goto LABEL_219;
    }

    v392 = *((v562 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v548 = v562;
    if (v392)
    {
      break;
    }

LABEL_219:
    v104, v384, v385, v386, v387, v388, v389, v390;
    v561, v506, v507, v508, v509, v510, v511, v512;
    v548, v513, v514, v515, v516, v517, v518, v519;
    v96 = v538;
    v94 = v541;
    v99 = v537;
    v74 = v540;
    if (!v540)
    {
      goto LABEL_30;
    }
  }

  v393 = 0;
  v553 = v548 & 0xC000000000000001;
  v543 = v548 & 0xFFFFFFFFFFFFFF8;
  v542 = (v548 + 32);
  v552 = v392;
  while (1)
  {
    if (v553)
    {
      v394 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v393 >= *(v543 + 16))
      {
        goto LABEL_228;
      }

      v394 = *&v542[8 * v393];
    }

    v395 = v394;
    v383 = __OFADD__(v393++, 1);
    if (v383)
    {
      break;
    }

    v396 = [v394 name];
    if (v396)
    {
      v397 = v396;
      v398 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v400 = v399;

      v74 = 0;
      v408 = v561;
      v409 = *v561->clientIdentity;
      while (1)
      {
        if (v409 == v74)
        {
          v400, v401, v402, v403, v404, v405, v406, v407;
LABEL_208:
          v392 = v552;
          goto LABEL_209;
        }

        v410 = v559;
        if (v74 >= *v408->clientIdentity)
        {
          __break(1u);
          goto LABEL_223;
        }

        sub_100211458(v408 + ((*(v560 + 80) + 32) & ~*(v560 + 80)) + *(v560 + 72) * v74, v559);
        v411 = (v410 + *(v335 + 20));
        if (*v411 == v398 && v411[1] == v400)
        {
          break;
        }

        ++v74;
        v413 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v414 = v410;
        v415 = v413;
        sub_1002114BC(v414);
        v408 = v561;
        if (v415)
        {
          goto LABEL_199;
        }
      }

      sub_1002114BC(v410);
LABEL_199:
      v400, v401, v402, v403, v404, v405, v406, v407;
      v416 = [v395 hashtags];
      if (v416)
      {
        v417 = v416;
        sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
        v104 = v558;
        sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190, &protocol conformance descriptor for NSObject);
        v418 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v74 = sub_100202C38(v418);
        v420 = v419;
        v418, v419, v421, v422, v423, v424, v425, v426;
        if (v420)
        {
          v427 = String._bridgeToObjectiveC()();
          [v395 setName:v427];

          v428 = Logger.logObject.getter();
          v429 = static os_log_type_t.info.getter();
          v420, v430, v431, v432, v433, v434, v435, v436;
          v104, v437, v438, v439, v440, v441, v442, v443;
          if (os_log_type_enabled(v428, v429))
          {
            v451 = swift_slowAlloc();
            v563 = swift_slowAlloc();
            *v451 = v546;
            *(v451 + 4) = sub_10000668C(v554, v104, &v563);
            *(v451 + 12) = 2080;
            v452 = sub_10000668C(v74, v420, &v563);
            v420, v453, v454, v455, v456, v457, v458, v459;
            *(v451 + 14) = v452;
            _os_log_impl(&_mh_execute_header, v428, v429, "RDHashtagLabelUpdater updated hashtag label name to next occurrence {canonicalName: %s, nextOccurrenceHashtagName: %s}", v451, 0x16u);
            swift_arrayDestroy();
            v335 = v550;
          }

          else
          {
            v420, v444, v445, v446, v447, v448, v449, v450;
          }

          goto LABEL_208;
        }
      }

      v460 = Logger.logObject.getter();
      v461 = static os_log_type_t.fault.getter();
      v462 = os_log_type_enabled(v460, v461);
      v392 = v552;
      if (v462)
      {
        v463 = swift_slowAlloc();
        *v463 = 0;
        _os_log_impl(&_mh_execute_header, v460, v461, "RDHashtagLabelUpdater: Cannot find a non-nil next occurrence hashtag name. We have non empty hashtagLabel.hashtags but we can't find one with non-nil name.", v463, 2u);
      }
    }

    else
    {
LABEL_209:
      v464 = [v395 hashtags];
      if (v464)
      {
        v465 = v464;
        sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
        v104 = v558;
        sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190, &protocol conformance descriptor for NSObject);
        v466 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v467 = v549;
        sub_1002030B0(v466, v549);
        v466, v468, v469, v470, v471, v472, v473, v474;
        v475 = type metadata accessor for Date();
        v476 = *(v475 - 8);
        v477 = 0;
        if ((*(v476 + 48))(v467, 1, v475) != 1)
        {
          v478 = v549;
          v477 = Date._bridgeToObjectiveC()().super.isa;
          (*(v476 + 8))(v478, v475);
        }
      }

      else
      {
        v479 = type metadata accessor for Date();
        (*(*(v479 - 8) + 56))(v549, 1, 1, v479);
        v477 = 0;
      }

      [v395 setRecencyDate:v477];

      v480 = v395;
      v481 = Logger.logObject.getter();
      v74 = static os_log_type_t.info.getter();

      v104, v482, v483, v484, v485, v486, v487, v488;
      if (os_log_type_enabled(v481, v74))
      {
        v489 = swift_slowAlloc();
        v563 = swift_slowAlloc();
        *v489 = v546;
        *(v489 + 4) = sub_10000668C(v554, v104, &v563);
        *(v489 + 12) = 2080;
        v490 = [v480 recencyDate];
        if (v490)
        {
          v491 = v544;
          v492 = v490;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v493 = 0;
        }

        else
        {
          v493 = 1;
          v491 = v544;
        }

        v494 = type metadata accessor for Date();
        (*(*(v494 - 8) + 56))(v491, v493, 1, v494);
        v495 = Optional.descriptionOrNil.getter();
        v497 = v496;
        sub_1000050A4(v491, &unk_100938850, qword_100795AE0);
        v498 = sub_10000668C(v495, v497, &v563);
        v497, v499, v500, v501, v502, v503, v504, v505;
        *(v489 + 14) = v498;
        _os_log_impl(&_mh_execute_header, v481, v74, "RDHashtagLabelUpdater updated hashtag label recency date {canonicalName: %s, new-recencyDate: %s}", v489, 0x16u);
        swift_arrayDestroy();

        v335 = v550;
        v104 = v558;
        v392 = v552;
      }

      else
      {
      }
    }

    if (v393 == v392)
    {
      goto LABEL_219;
    }
  }

LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:

  v562, v527, v528, v529, v530, v531, v532, v533;
  __break(1u);
}

void sub_1002028D8(uint64_t a1, id *a2)
{
  v3 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  *&v5 = __chkstk_darwin(v3 - 8, v4).n128_u64[0];
  v7 = v60 - v6;
  v8 = *a2;
  v9 = [*a2 name];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v21 = (v13 >> 56) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v21 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v61 = v11;
      v62 = v13;
      static Locale.current.getter();
      v22 = type metadata accessor for Locale();
      (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
      sub_10013BCF4();
      v23 = StringProtocol.foldedStringForWriting(locale:)();
      v25 = v24;
      sub_1000050A4(v7, &unk_10093F420, &unk_100797AE0);
      v13, v26, v27, v28, v29, v30, v31, v32;
      v60[1] = v8;
      v61 = v23;
      v62 = v25;
      sub_1000F5104(&qword_10093D0D8, &qword_10079AD38);
      sub_10000CB48(&unk_10093D0E0, &qword_10094F560, &qword_1007AC6A0, &protocol conformance descriptor for [A]);
      Dictionary<>.append(_:toCollectionUnderKey:)();
      v25, v33, v34, v35, v36, v37, v38, v39;
      return;
    }

    v13, v14, v15, v16, v17, v18, v19, v20;
  }

  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100006654(v40, qword_10093CC70);
  v41 = v8;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61 = v45;
    *v44 = 136446210;
    v46 = [v41 remObjectID];
    if (v46)
    {
      v47 = v46;
      v48 = [v46 description];

      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;
    }

    else
    {
      v51 = 0xE300000000000000;
      v49 = 7104878;
    }

    v52 = sub_10000668C(v49, v51, &v61);
    v51, v53, v54, v55, v56, v57, v58, v59;
    *(v44 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v42, v43, "RDHashtagLabelUpdater: Unexpected hashtag with nil or empty name %{public}s", v44, 0xCu);
    sub_10000607C(v45);
  }
}

uint64_t sub_100202C38(uint64_t a1)
{
  v1 = a1;
  v44 = 0;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v20 = *(a1 + 32);
    v21 = v20 & 0x3F;
    v8 = ((1 << v20) + 63) >> 6;
    v5 = 8 * v8;

    if (v21 <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

  v2 = _swiftEmptySetSingleton;
  v47 = _swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  v3 = __CocoaSet.Iterator.next()();
  if (!v3)
  {
LABEL_20:

    goto LABEL_37;
  }

  v4 = v3;
  v5 = sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v6 = v4;
  v2 = _swiftEmptySetSingleton;
  while (1)
  {
    v45 = v6;
    swift_dynamicCast();
    v7 = [v46[0] name];
    if (v7)
    {
      break;
    }

LABEL_5:
    v6 = __CocoaSet.Iterator.next()();
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  v8 = v46[0];
  v9 = v2[2];
  if (v2[3] <= v9)
  {
    sub_100380E64(v9 + 1);
  }

  v2 = v47;
  v1 = v46[0];
  v10 = NSObject._rawHashValue(seed:)(v47[5]);
  v11 = v47 + 7;
  v12 = -1 << *(v47 + 32);
  v13 = v10 & ~v12;
  v14 = v13 >> 6;
  if (((-1 << v13) & ~v47[(v13 >> 6) + 7]) != 0)
  {
    v15 = __clz(__rbit64((-1 << v13) & ~v47[(v13 >> 6) + 7])) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    *(v2[6] + 8 * v15) = v8;
    ++v2[2];
    goto LABEL_5;
  }

  v16 = 0;
  v17 = (63 - v12) >> 6;
  while (++v14 != v17 || (v16 & 1) == 0)
  {
    v18 = v14 == v17;
    if (v14 == v17)
    {
      v14 = 0;
    }

    v16 |= v18;
    v19 = v11[v14];
    if (v19 != -1)
    {
      v15 = __clz(__rbit64(~v19)) + (v14 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_42:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

LABEL_22:
    v41[1] = v41;
    v42 = v8;
    __chkstk_darwin(isStackAllocationSafe, v23);
    v24 = v41 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v24, v5);
    v43 = 0;
    v25 = 0;
    v26 = 1 << v1[32];
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v1 + 7);
    v29 = (v26 + 63) >> 6;
    while (v28)
    {
      v30 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_32:
      v5 = v30 | (v25 << 6);
      v33 = *(*(v1 + 6) + 8 * v5);
      v8 = [v33 name];

      if (v8)
      {

        *&v24[(v5 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v5;
        if (__OFADD__(v43++, 1))
        {
          __break(1u);
LABEL_36:
          v2 = sub_1001A112C(v24, v42, v43, v1);
          goto LABEL_37;
        }
      }
    }

    v31 = v25;
    while (1)
    {
      v25 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v25 >= v29)
      {
        goto LABEL_36;
      }

      v32 = *&v1[8 * v25 + 56];
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v28 = (v32 - 1) & v32;
        goto LABEL_32;
      }
    }
  }

  v40 = swift_slowAlloc();
  v2 = sub_1001BAAE8(v40, v8, v1, sub_1002119A0, 0);

LABEL_37:
  sub_100205690(v2);
  v36 = v35;

  if (!v36)
  {
    return 0;
  }

  v37 = [v36 name];

  if (!v37)
  {
    return 0;
  }

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v38;
}

uint64_t sub_1002030B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v52 = 0;
  v53 = a2;
  v51 = v48 - v6;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v25 = *(a1 + 32);
    v26 = v25 & 0x3F;
    v7 = ((1 << v25) + 63) >> 6;
    v10 = 8 * v7;

    if (v26 <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

  v7 = _swiftEmptySetSingleton;
  v56 = _swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  v8 = __CocoaSet.Iterator.next()();
  if (!v8)
  {
LABEL_20:

LABEL_37:
    a2 = v53;
    goto LABEL_38;
  }

  v9 = v8;
  v10 = sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v11 = v9;
  a2 = 1;
  while (1)
  {
    v54 = v11;
    swift_dynamicCast();
    v12 = [v55[0] name];
    if (v12)
    {
      break;
    }

LABEL_5:
    v11 = __CocoaSet.Iterator.next()();
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  v13 = v55[0];
  v14 = *(v7 + 16);
  if (*(v7 + 24) <= v14)
  {
    sub_100380E64(v14 + 1);
  }

  v7 = v56;
  a1 = v13;
  v15 = NSObject._rawHashValue(seed:)(v56[5]);
  v16 = v7 + 56;
  v17 = -1 << *(v7 + 32);
  v18 = v15 & ~v17;
  v19 = v18 >> 6;
  if (((-1 << v18) & ~*(v7 + 56 + 8 * (v18 >> 6))) != 0)
  {
    v20 = __clz(__rbit64((-1 << v18) & ~*(v7 + 56 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v7 + 48) + 8 * v20) = v13;
    ++*(v7 + 16);
    goto LABEL_5;
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v16 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_45:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

LABEL_22:
    v48[1] = v48;
    v49 = v7;
    __chkstk_darwin(isStackAllocationSafe, v28);
    v29 = v48 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v10);
    v50 = 0;
    a2 = 0;
    v30 = 1 << *(a1 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v7 = v31 & *(a1 + 56);
    v32 = (v30 + 63) >> 6;
    while (v7)
    {
      v33 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_32:
      v10 = v33 | (a2 << 6);
      v36 = *(*(a1 + 48) + 8 * v10);
      v37 = [v36 name];

      if (v37)
      {

        *&v29[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
        if (__OFADD__(v50++, 1))
        {
          __break(1u);
LABEL_36:
          v7 = sub_1001A112C(v29, v49, v50, a1);
          goto LABEL_37;
        }
      }
    }

    v34 = a2;
    while (1)
    {
      a2 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (a2 >= v32)
      {
        goto LABEL_36;
      }

      v35 = *(a1 + 56 + 8 * a2);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v7 = (v35 - 1) & v35;
        goto LABEL_32;
      }
    }
  }

  v47 = swift_slowAlloc();
  v7 = sub_1001BAAE8(v47, v7, a1, sub_1002119A0, 0);

LABEL_38:
  sub_1002059C4(v7);
  v40 = v39;

  if (v40)
  {
    v41 = [v40 creationDate];

    if (v41)
    {
      v42 = v51;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = 0;
    }

    else
    {
      v43 = 1;
      v42 = v51;
    }

    v46 = type metadata accessor for Date();
    (*(*(v46 - 8) + 56))(v42, v43, 1, v46);
    return sub_100031B58(v42, a2, &unk_100938850, qword_100795AE0);
  }

  else
  {
    v44 = type metadata accessor for Date();
    return (*(*(v44 - 8) + 56))(a2, 1, 1, v44);
  }
}

void sub_100203610(uint64_t a1, void *a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v4 = v3;
  v184 = type metadata accessor for UUID();
  v7 = *(v184 - 8);
  __chkstk_darwin(v184, v8);
  v178 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v183 = &v174 - v16;

  v18 = sub_1001A59A4(v17);
  a3, v19, v20, v21, v22, v23, v24, v25;
  v190 = &_swiftEmptyArrayStorage;
  v33 = *(v18 + 16);
  if (v33)
  {
    v34 = sub_100368A1C(*(v18 + 16), 0);
    sub_1002799DC(&v189, v34 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v33, v18);
    v36 = v35;
    sub_10001B860(v189);
    if (v36 != v33)
    {
      __break(1u);
      goto LABEL_67;
    }

    v37 = v13;
  }

  else
  {
    v37 = v13;
    v18, v26, v27, v28, v29, v30, v31, v32;
    v34 = &_swiftEmptyArrayStorage;
  }

  v189 = v34;
  sub_1000F5104(&qword_10093D008, qword_10079AAC0);
  sub_10000CB48(&qword_10093D010, &qword_10093D008, qword_10079AAC0, &protocol conformance descriptor for [A]);
  v38 = BidirectionalCollection<>.slices(by:)();

  v13 = a2;
  sub_10020BE20(v38, v13, &v190, sub_100204DB4);
  v39 = v3;
  v38, v40, v41, v42, v43, v44, v45, v46;

  v4 = v190;
  if (v190 >> 62)
  {
    goto LABEL_64;
  }

  v54 = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v54)
  {
LABEL_65:
    v4, v47, v48, v49, v50, v51, v52, v53;
    return;
  }

LABEL_7:
  v177 = v13;
  v185 = v54;
  v186 = v4;
  v13 = 0;
  v187 = v4 & 0xFFFFFFFFFFFFFF8;
  v188 = v4 & 0xC000000000000001;
  v182 = (v7 + 56);
  v180 = v39;
  v181 = (v7 + 48);
  v175 = (v7 + 8);
  v176 = (v7 + 16);
  v7 = &unk_100939D90;
  v4 = "8\n\r";
  v179 = &_swiftEmptyArrayStorage;
  do
  {
    v55 = v13;
    while (1)
    {
      if (v188)
      {
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v55 >= *(v187 + 16))
        {
          goto LABEL_59;
        }

        v56 = v186[v55 + 4];
      }

      v39 = v56;
      v13 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
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
        v54 = _CocoaArrayWrapper.endIndex.getter();
        if (!v54)
        {
          goto LABEL_65;
        }

        goto LABEL_7;
      }

      v57 = [v56 reminder];
      if (v57)
      {
        break;
      }

LABEL_10:
      ++v55;
      if (v13 == v185)
      {
        goto LABEL_27;
      }
    }

    v58 = v7;
    v59 = v57;
    v60 = [v57 identifier];

    if (v60)
    {
      v61 = v37;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v62 = 0;
      v7 = v58;
    }

    else
    {
      v62 = 1;
      v7 = v58;
      v61 = v37;
    }

    v63 = v184;
    (*v182)(v61, v62, 1, v184);
    v37 = v61;
    v64 = v61;
    v65 = v183;
    sub_100031B58(v64, v183, v7, "8\n\r");
    if ((*v181)(v65, 1, v63))
    {

      sub_1000050A4(v65, v7, "8\n\r");
      goto LABEL_10;
    }

    v66 = v7;
    v67 = v178;
    v68 = v184;
    (*v176)(v178, v65, v184);
    sub_1000050A4(v65, v66, "8\n\r");
    v69 = UUID.uuidString.getter();
    v71 = v70;

    (*v175)(v67, v68);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v179 = sub_100365788(0, *v179->clientIdentity + 1, 1, v179, v72, v73, v74, v75);
    }

    v77 = *v179->clientIdentity;
    v76 = *&v179->clientIdentity[8];
    if (v77 >= v76 >> 1)
    {
      v179 = sub_100365788((v76 > 1), v77 + 1, 1, v179, v72, v73, v74, v75);
    }

    v78 = v179;
    *v179->clientIdentity = v77 + 1;
    v79 = v78 + 16 * v77;
    *(v79 + 4) = v69;
    *(v79 + 5) = v71;
    v7 = v58;
  }

  while (v13 != v185);
LABEL_27:
  if (qword_100935BF8 != -1)
  {
LABEL_67:
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  sub_100006654(v80, qword_10093CC70);
  v81 = v179;

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.info.getter();
  v81, v84, v85, v86, v87, v88, v89, v90;
  v91 = os_log_type_enabled(v82, v83);
  v37 = v185;
  if (v91)
  {
    v7 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v189 = v92;
    *v7 = 136446210;
    v93 = Array.description.getter();
    v95 = v94;
    v4 = sub_10000668C(v93, v94, &v189);
    v95, v96, v97, v98, v99, v100, v101, v102;
    *(v7 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v82, v83, "RDHashtagLabelUpdater process shared to me reminders: %{public}s", v7, 0xCu);
    sub_10000607C(v92);
  }

  v39 = v186;
  v103 = 0;
  v104 = &_swiftEmptyArrayStorage;
  v189 = &_swiftEmptyArrayStorage;
  while (v37 != v103)
  {
    if (v188)
    {
      v105 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v103 >= *(v187 + 16))
      {
        goto LABEL_61;
      }

      v105 = *&v39[8 * v103 + 32];
    }

    v106 = v105;
    v13 = v103 + 1;
    if (__OFADD__(v103, 1))
    {
      goto LABEL_60;
    }

    v7 = [v105 reminder];

    ++v103;
    if (v7)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v189 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v189 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v104 = v189;
      v103 = v13;
    }
  }

  v4 = sub_100200890(v104);
  v104, v107, v108, v109, v110, v111, v112, v113;
  v189 = &_swiftEmptyArrayStorage;
  v190 = v81;
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
  v114 = BidirectionalCollection<>.slices(by:)();
  v81, v115, v116, v117, v118, v119, v120, v121;
  v122 = v177;
  v123 = v180;
  sub_10020BE20(v114, v122, &v189, sub_1002048F0);
  v180 = v123;
  v114, v124, v125, v126, v127, v128, v129, v130;

  v7 = v189;
  v182 = v122;
  if (v189 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      goto LABEL_69;
    }

LABEL_43:
    v37 = 0;
    v183 = v7 & 0xFFFFFFFFFFFFFF8;
    v184 = v7 & 0xC000000000000001;
    while (1)
    {
      if (v184)
      {
        v139 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v37 >= *(v183 + 16))
        {
          goto LABEL_63;
        }

        v139 = *(v7 + 8 * v37 + 32);
      }

      v140 = v139;
      v141 = (v37 + 1);
      if (__OFADD__(v37, 1))
      {
        goto LABEL_62;
      }

      v142 = [v139 sharedToMeReminderCKIdentifier];
      if (v142)
      {
        v39 = v142;
        v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v152 = v151;

        if (!*(v4 + 16))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v152 = 0xE300000000000000;
        v150 = 7104878;
        if (!*(v4 + 16))
        {
LABEL_44:
          v152, v143, v144, v145, v146, v147, v148, v149;
          goto LABEL_45;
        }
      }

      v153 = sub_100005F4C(v150, v152);
      v39 = v154;
      v152, v154, v155, v156, v157, v158, v159, v160;
      if (v39)
      {
        v138 = *(*(v4 + 56) + 8 * v153);
        goto LABEL_46;
      }

LABEL_45:
      v138 = 0;
LABEL_46:
      [v140 setReminder:v138];

      ++v37;
      if (v141 == v13)
      {
        goto LABEL_69;
      }
    }
  }

  v13 = *((v189 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    goto LABEL_43;
  }

LABEL_69:
  v7, v131, v132, v133, v134, v135, v136, v137;
  v4, v161, v162, v163, v164, v165, v166, v167;
  v168 = 0;
  v169 = v185;
  v4 = v186;
  v170 = v182;
  while (1)
  {
    if (v188)
    {
      v171 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v168 >= *(v187 + 16))
      {
        goto LABEL_78;
      }

      v171 = *(v4 + 8 * v168 + 32);
    }

    v172 = v171;
    v173 = (v168 + 1);
    if (__OFADD__(v168, 1))
    {
      break;
    }

    [v170 deleteObject:v171];

    ++v168;
    if (v173 == v169)
    {
      goto LABEL_65;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
}

void sub_100204018(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3];
  v61 = a1[2];
  v64 = &_swiftEmptyArrayStorage;
  sub_10001035C((a2 & 1) != 0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*_swiftEmptyArrayStorage.clientIdentity >= *&_swiftEmptyArrayStorage.clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  KeyPath = swift_getKeyPath();
  v60 = v5 >> 1;
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = &_swiftEmptyArrayStorage;
  }

  v10 = *v9->clientIdentity;

  if (__OFSUB__(v60, v61))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v10 != v60 - v61)
  {
LABEL_30:
    swift_unknownObjectRelease();
LABEL_4:
    sub_100277FD4(v3, v4, v61, v5);
    v8 = v7;
    goto LABEL_11;
  }

  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = &_swiftEmptyArrayStorage;
  }

LABEL_11:
  v11 = sub_10004FAEC(v8);

  sub_1003E9F6C(KeyPath, v11);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v64->clientIdentity >= *&v64->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v12 = v64;

  v13 = sub_10000C2B0();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100799D70;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1007953F0;
  *(v15 + 32) = swift_getKeyPath();
  v58 = sub_100405C20(inited, v15, 0, v13);
  inited, v16, v17, v18, v19, v20, v21, v22;
  swift_setDeallocating();
  swift_arrayDestroy();
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1007953F0;
  *(v23 + 32) = swift_getKeyPath();
  v63 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, 1, 0);
  v24 = &_swiftEmptyArrayStorage;
  if ((v23 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  v59 = v13;
  v25 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v26)
  {
LABEL_32:
    _StringGuts.grow(_:)(46);
    v57._object = 0x80000001007EC120;
    v57._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v57);
    sub_1000F5104(&unk_10093D020, qword_1007A3230);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v27 = v25;
  v28 = v26;

  v30 = *_swiftEmptyArrayStorage.clientIdentity;
  v29 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v30 >= v29 >> 1)
  {
    sub_100026EF4((v29 > 1), v30 + 1, 1);
    v24 = v63;
  }

  *v24->clientIdentity = v30 + 1;
  v31 = v24 + 16 * v30;
  *(v31 + 4) = v27;
  *(v31 + 5) = v28;
  swift_setDeallocating();
  swift_arrayDestroy();
  v12, v32, v33, v34, v35, v36, v37, v38;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [(RDXPCStorePerformer *)v58 setRelationshipKeyPathsForPrefetching:isa];

  if (__OFSUB__(v60, v61))
  {
    __break(1u);
  }

  else
  {
    [(RDXPCStorePerformer *)v58 setFetchLimit:v60 - v61];
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    v40 = NSManagedObjectContext.fetch<A>(_:)();
    if (!v2)
    {
      sub_1002722DC(v40);

      return;
    }

    v30 = v59;
    if (qword_100935BF8 == -1)
    {
      goto LABEL_23;
    }
  }

  swift_once();
LABEL_23:
  v41 = type metadata accessor for Logger();
  sub_100006654(v41, qword_10093CC70);
  swift_errorRetain();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v62 = v45;
    *v44 = 136315138;
    swift_getErrorValue();
    v46 = Error.rem_errorDescription.getter();
    v48 = v47;
    v49 = sub_10000668C(v46, v47, &v62);
    v48, v50, v51, v52, v53, v54, v55, v56;
    *(v44 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v42, v43, "RDHashtagLabelUpdater: failed to fetch hashtag from database {error: %s}", v44, 0xCu);
    sub_10000607C(v45);
  }

  else
  {
  }
}

void sub_1002046DC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_100204744(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setName:?];
}

void sub_1002047B4(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCreationDate:isa];
}

void sub_1002048F0(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  sub_1000F5104(&qword_10093D0F8, &unk_1007A30A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791320;
  *(inited + 32) = sub_10001035C(0);
  KeyPath = swift_getKeyPath();
  v9 = sub_1003F7200(KeyPath);

  *(inited + 40) = v9;
  v10 = swift_getKeyPath();
  if ((v6 & 1) == 0)
  {
    goto LABEL_2;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = &_swiftEmptyArrayStorage;
  }

  v14 = *v13->clientIdentity;

  if (__OFSUB__(v6 >> 1, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v14 != (v6 >> 1) - v5)
  {
LABEL_17:
    swift_unknownObjectRelease();
    v2 = v1;
LABEL_2:
    sub_1002781A0(v3, v4, v5, v6);
    v12 = v11;
    goto LABEL_9;
  }

  v12 = swift_dynamicCastClass();
  v2 = v1;
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = &_swiftEmptyArrayStorage;
  }

LABEL_9:
  v15 = sub_100270804(v12);

  v16 = sub_1003E9FD8(v10, v15);

  *(inited + 48) = v16;
  v17 = sub_10000C2B0();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1007953F0;
  *(v18 + 32) = swift_getKeyPath();
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v19 = [objc_allocWithZone(NSFetchRequest) init];
  v20 = [swift_getObjCClassFromMetadata() entity];
  [v19 setEntity:v20];

  [v19 setAffectedStores:0];
  [v19 setPredicate:v17];

  sub_100390E88(v21);
  v18, v22, v23, v24, v25, v26, v27, v28;
  v29 = sub_1003FE4FC(_swiftEmptySetSingleton);
  _swiftEmptySetSingleton, v30, v31, v32, v33, v34, v35, v36;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v29, v38, v39, v40, v41, v42, v43, v44;
  [v19 setPropertiesToFetch:isa];

  swift_setDeallocating();
  swift_arrayDestroy();
  v45 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100006654(v46, qword_10093CC70);
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v62 = v50;
      *v49 = 136315138;
      swift_getErrorValue();
      v51 = Error.rem_errorDescription.getter();
      v53 = v52;
      v54 = sub_10000668C(v51, v52, &v62);
      v53, v55, v56, v57, v58, v59, v60, v61;
      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "RDHashtagLabelUpdater: failed to fetch unassociated hashtags with sharedToMEReminderCkIdentifier from database {error: %s}", v49, 0xCu);
      sub_10000607C(v50);
    }

    else
    {
    }
  }

  else
  {
    sub_1002722DC(v45);
  }
}

void sub_100204DB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  KeyPath = swift_getKeyPath();
  if ((v4 & 1) == 0)
  {
    v6 = (v4 >> 1) - v3;
    v7 = __OFSUB__(v4 >> 1, v3);
    goto LABEL_5;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = &_swiftEmptyArrayStorage;
  }

  v10 = *v9->clientIdentity;

  v6 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v10 != v6)
  {
LABEL_23:
    swift_unknownObjectRelease();
    v7 = 0;
LABEL_5:
    sub_100277FD4(v1, v2, v3, v4);
    goto LABEL_13;
  }

  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v7 = 0;
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
  }

LABEL_13:
  v11 = sub_10004FAEC(v8);

  v12 = sub_1003E9FB4(KeyPath, v11);

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v14 = sub_100406014(0, inited, 0, v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v7)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_16;
  }

  [(RDXPCStorePerformer *)v14 setFetchLimit:v6];
  sub_1000060C8(0, &qword_100944260, off_1008D41D8);
  v15 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v32)
  {
    sub_1002722F4(v15);

    return;
  }

  if (qword_100935BF8 != -1)
  {
    goto LABEL_21;
  }

LABEL_16:
  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_10093CC70);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315138;
    swift_getErrorValue();
    v21 = Error.rem_errorDescription.getter();
    v23 = v22;
    v24 = sub_10000668C(v21, v22, &v33);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "RDHashtagLabelUpdater: failed to fetch sharedToMeReminderPlaceholder from database {error: %s}", v19, 0xCu);
    sub_10000607C(v20);
  }

  else
  {
  }
}

uint64_t sub_100205130@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_1002051E8(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

id *sub_100205324()
{
  v1 = OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_timeGroupingStrategy;
  v2 = sub_1000F5104(&unk_10093CFD0, qword_10079AA70);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000536E0(v0 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate);

  *(v0 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_hashtagInsertEventCancellables), v3, v4, v5, v6, v7, v8, v9;

  *(v0 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumed + 8), v10, v11, v12, v13, v14, v15, v16;
  *(v0 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumedOnLaunch + 8), v17, v18, v19, v20, v21, v22, v23;
  *(v0 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_analyticsCrashDetected + 8), v24, v25, v26, v27, v28, v29, v30;

  *(v0 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_changeTrackingClientName + 8), v31, v32, v33, v34, v35, v36, v37;
  return v0;
}

uint64_t sub_100205458()
{
  sub_100205324();

  return swift_deallocClassInstance();
}

void sub_1002054D8(uint64_t a1)
{
  sub_1002055C4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002055C4(uint64_t a1)
{
  if (!qword_10093CD30)
  {
    sub_1000060C8(255, &qword_10093E6E0, OS_dispatch_queue_ptr);
    sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v1 = type metadata accessor for Publishers.TimeGroupingStrategy();
    if (!v2)
    {
      atomic_store(v1, &qword_10093CD30);
    }
  }
}

void sub_100205690(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v9 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v5 = v11 & *(a1 + 56);

    v3 = 0;
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  __CocoaSet.makeIterator()();
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190, &protocol conformance descriptor for NSObject);
  Set.Iterator.init(_cocoa:)();
  v1 = v22;
  v2 = v23;
  v4 = v24;
  v3 = v25;
  v5 = v26;
  if ((v22 & 0x8000000000000000) == 0)
  {
    if (v26)
    {
LABEL_4:
      v6 = (v5 - 1) & v5;
      v7 = __clz(__rbit64(v5)) | (v3 << 6);
      v8 = v3;
LABEL_14:
      v14 = *(*(v1 + 48) + 8 * v7);
      v21 = 1;
      if (v14)
      {
        goto LABEL_15;
      }

LABEL_32:
      sub_10001B860(v1);
      return;
    }

LABEL_9:
    v12 = v3;
    while (1)
    {
      v8 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_34;
      }

      if (v8 >= ((v4 + 64) >> 6))
      {
        goto LABEL_32;
      }

      v13 = *(v2 + 8 * v8);
      ++v12;
      if (v13)
      {
        v6 = (v13 - 1) & v13;
        v7 = __clz(__rbit64(v13)) | (v8 << 6);
        goto LABEL_14;
      }
    }
  }

  if (!__CocoaSet.Iterator.next()())
  {
    goto LABEL_32;
  }

  swift_dynamicCast();
  v21 = 0;
  v14 = v27;
  v8 = v25;
  v6 = v26;
  if (!v27)
  {
    goto LABEL_32;
  }

LABEL_15:
  v15 = (v4 + 64) >> 6;
  if (!v21)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v16 = v8;
    v17 = v6;
    v18 = v8;
    if (!v6)
    {
      break;
    }

LABEL_20:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_32;
    }

    while (1)
    {
      if (sub_10074E978(v14))
      {

        v14 = v20;
      }

      else
      {
      }

      v8 = v18;
      v6 = v19;
      if (v21)
      {
        break;
      }

LABEL_22:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
        swift_dynamicCast();
        v20 = v27;
        v18 = v8;
        v19 = v6;
        if (v27)
        {
          continue;
        }
      }

      goto LABEL_32;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_32;
    }

    v17 = *(v2 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1002059C4(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v3 - 8, v4);
  v71 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v60 - v8;
  v10 = type metadata accessor for Date();
  v73 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v72 = &v60 - v16;
  __chkstk_darwin(v17, v18);
  v63 = &v60 - v19;
  v61 = v1;
  v67 = v13;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v27 = -1 << *(a1 + 32);
    v20 = a1 + 56;
    v22 = ~v27;
    v28 = -v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v23 = v29 & *(a1 + 56);

    v21 = 0;
    if (v23)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  __CocoaSet.makeIterator()();
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190, &protocol conformance descriptor for NSObject);
  Set.Iterator.init(_cocoa:)();
  a1 = v76;
  v20 = v77;
  v22 = v78;
  v21 = v79;
  v23 = v80;
  if ((v76 & 0x8000000000000000) == 0)
  {
    if (v80)
    {
LABEL_4:
      v24 = (v23 - 1) & v23;
      v25 = __clz(__rbit64(v23)) | (v21 << 6);
      v26 = v21;
LABEL_14:
      v32 = *(*(a1 + 48) + 8 * v25);
      v70 = 1;
      if (v32)
      {
        goto LABEL_15;
      }

LABEL_40:
      sub_10001B860(a1);
      return;
    }

LABEL_9:
    v30 = v21;
    while (1)
    {
      v26 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_42;
      }

      if (v26 >= ((v22 + 64) >> 6))
      {
        goto LABEL_40;
      }

      v31 = *(v20 + 8 * v26);
      ++v30;
      if (v31)
      {
        v24 = (v31 - 1) & v31;
        v25 = __clz(__rbit64(v31)) | (v26 << 6);
        goto LABEL_14;
      }
    }
  }

  v74 = v79;
  v60 = v78;
  v59 = __CocoaSet.Iterator.next()();
  if (!v59)
  {
    goto LABEL_40;
  }

  v75 = v59;
  swift_dynamicCast();
  v70 = 0;
  v32 = v81;
  v26 = v74;
  v24 = v23;
  v22 = v60;
  if (!v81)
  {
    goto LABEL_40;
  }

LABEL_15:
  v68 = a1;
  v69 = v32;
  v60 = v22;
  v33 = (v22 + 64) >> 6;
  v34 = (v73 + 32);
  v74 = (v73 + 56);
  v62 = (v73 + 48);
  v64 = (v73 + 8);
  v65 = v33;
  v35 = v63;
  v66 = v20;
  if (!v70)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v36 = v26;
    v37 = v24;
    v38 = v26;
    if (!v24)
    {
      break;
    }

LABEL_20:
    v73 = (v37 - 1) & v37;
    v39 = *(*(v68 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));
    v40 = v69;
    if (!v39)
    {
LABEL_37:
      sub_10001B860(v68);
      return;
    }

    while (1)
    {
      v42 = [v40 creationDate];
      if (v42)
      {
        v43 = v72;
        v44 = v42;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v45 = *v34;
        (*v34)(v9, v43, v10);
        v46 = *v74;
        (*v74)(v9, 0, 1, v10);
        v45(v35, v9, v10);
      }

      else
      {
        v46 = *v74;
        (*v74)(v9, 1, 1, v10);
        static Date.distantPast.getter();
        if ((*v62)(v9, 1, v10) != 1)
        {
          sub_1000050A4(v9, &unk_100938850, qword_100795AE0);
        }
      }

      v47 = v9;
      v48 = [v39 creationDate];
      if (v48)
      {
        v49 = v72;
        v50 = v48;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v51 = *v34;
        v52 = v71;
        v53 = v49;
        v35 = v63;
        (*v34)(v71, v53, v10);
        v46(v52, 0, 1, v10);
        v54 = v67;
        v51(v67, v52, v10);
      }

      else
      {
        v55 = v71;
        v46(v71, 1, 1, v10);
        v54 = v67;
        static Date.distantPast.getter();
        if ((*v62)(v55, 1, v10) != 1)
        {
          sub_1000050A4(v71, &unk_100938850, qword_100795AE0);
        }
      }

      v56 = static Date.< infix(_:_:)();
      v57 = v54;
      v58 = *v64;
      (*v64)(v57, v10);
      v58(v35, v10);
      if (v56)
      {

        v69 = v39;
      }

      else
      {
      }

      v26 = v38;
      v24 = v73;
      v9 = v47;
      v33 = v65;
      v20 = v66;
      if (v70)
      {
        break;
      }

LABEL_22:
      v41 = __CocoaSet.Iterator.next()();
      if (v41)
      {
        v75 = v41;
        sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
        swift_dynamicCast();
        v39 = v81;
        v38 = v26;
        v73 = v24;
        v40 = v69;
        if (v81)
        {
          continue;
        }
      }

      goto LABEL_37;
    }
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v33)
    {
      goto LABEL_37;
    }

    v37 = *(v20 + 8 * v38);
    ++v36;
    if (v37)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_1002060C8(_TtC7remindd19RDXPCStorePerformer **a1, void **a2)
{
  v4 = type metadata accessor for RDHashtagLabelUpdater.HashtagTombstone(0);
  v80 = *(v4 - 8);
  __chkstk_darwin(v4, v5);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    swift_unknownObjectRetain();
    v16 = [v15 objectIdentifier];
    if (v16)
    {
      v17 = v16;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = [v15 name];
      v79 = v9;
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = a1;
        v22 = v21;

        (*(v9 + 16))(v7, v12, v8);
        v23 = &v7[*(v4 + 20)];
        *v23 = v20;
        v23[1] = v22;
        v24 = *v78;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_10036683C(0, *v24->clientIdentity + 1, 1, v24);
        }

        v26 = *v24->clientIdentity;
        v25 = *&v24->clientIdentity[8];
        v27 = v79;
        if (v26 >= v25 >> 1)
        {
          v24 = sub_10036683C((v25 > 1), v26 + 1, 1, v24);
        }

        swift_unknownObjectRelease();
        (*(v27 + 8))(v12, v8);
        *v24->clientIdentity = v26 + 1;
        sub_1002113F4(v7, v24 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + v80[9] * v26);
        *v78 = v24;
      }

      else
      {
        if (qword_100935BF8 != -1)
        {
          swift_once();
        }

        v62 = type metadata accessor for Logger();
        sub_100006654(v62, qword_10093CC70);
        swift_unknownObjectRetain();
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.fault.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v81 = v80;
          *v65 = 136315138;
          v66 = [v13 description];
          v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v69 = v68;

          v70 = sub_10000668C(v67, v69, &v81);
          v69, v71, v72, v73, v74, v75, v76, v77;
          *(v65 + 4) = v70;
          _os_log_impl(&_mh_execute_header, v63, v64, "RDHashtagLabelUpdater: Tracked deletion tombstone does not contain the hashtag name, huh? {deleted: %s}", v65, 0xCu);
          sub_10000607C(v80);
        }

        swift_unknownObjectRelease();
        (*(v79 + 8))(v12, v8);
      }
    }

    else
    {
      if (qword_100935BF8 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_100006654(v45, qword_10093CC70);
      swift_unknownObjectRetain();
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.fault.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v81 = v49;
        *v48 = 136315138;
        v50 = [v13 description];
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        v54 = sub_10000668C(v51, v53, &v81);
        v53, v55, v56, v57, v58, v59, v60, v61;
        *(v48 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v46, v47, "RDHashtagLabelUpdater: Tracked deletion tombstone does not contain an objectIdentifier, huh? {deleted: %s}", v48, 0xCu);
        sub_10000607C(v49);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_10093CC70);
    swift_unknownObjectRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v81 = v32;
      *v31 = 136315138;
      v33 = [v13 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = sub_10000668C(v34, v36, &v81);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "RDHashtagLabelUpdater: Tracked deletion is not an REMDAHashtagTombstone (or nil) huh? {deleted: %s}", v31, 0xCu);
      sub_10000607C(v32);
    }
  }
}

uint64_t sub_100206864()
{
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100791340;
  v3 = *(v0 + OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountDescription);
  v2 = *(v0 + OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountDescription + 8);
  *(v1 + 56) = &type metadata for String;
  v4 = sub_100006600();
  v5 = 7104878;
  if (v2)
  {
    v5 = v3;
  }

  v6 = 0xE300000000000000;
  if (v2)
  {
    v6 = v2;
  }

  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  v7 = *(v0 + OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountID);
  v8 = *(v0 + OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountID + 8);
  *(v1 + 96) = &type metadata for String;
  *(v1 + 104) = v4;
  *(v1 + 64) = v4;
  *(v1 + 72) = v7;
  *(v1 + 80) = v8;

  return String.init(format:_:)();
}

id sub_100206A94(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = type metadata accessor for RDDaemonController();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = &v7[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  v10 = *(a3 + 30);
  v11 = a3[1];
  *v9 = *a3;
  *(v9 + 1) = v11;
  *(v9 + 30) = v10;
  *&v7[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
  swift_unknownObjectRetain();
  sub_100009DAC(a3, v14);
  v13.receiver = v7;
  v13.super_class = v6;
  return objc_msgSendSuper2(&v13, "init");
}

void sub_100206B54(void *a1@<X0>, char a2@<W2>, NSObject *a3@<X8>)
{
  v6 = sub_10020E944();
  v14 = sub_10020EE9C(v6);
  if ((a2 & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!(v6 >> 62))
  {
    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_25:
    v6, v7, v8, v9, v10, v11, v12, v13;
    a3->isa = v14;
    return;
  }

LABEL_24:
  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
    goto LABEL_25;
  }

LABEL_4:
  v54 = a3;
  v55 = v14;
  v16 = 0;
  v14 = (v6 & 0xC000000000000001);
  v17 = v6 & 0xFFFFFFFFFFFFFF8;
  v59 = v6;
  v60 = a1;
  v57 = v6 & 0xC000000000000001;
  v58 = v15;
  v56 = v6 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v14)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *(v17 + 16))
      {
        goto LABEL_23;
      }

      v25 = *(v6 + 8 * v16 + 32);
    }

    v26 = v25;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v61 = v16 + 1;
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006654(v27, qword_10093CC70);
    v28 = v26;
    a3 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(a3, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v62 = v31;
      *v30 = 136315138;
      v32 = [v28 name];
      if (v32)
      {
        v33 = v32;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
      }

      else
      {
        v36 = 0xE300000000000000;
        v34 = 7104878;
      }

      v37 = sub_10000668C(v34, v36, &v62);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v30 + 4) = v37;
      _os_log_impl(&_mh_execute_header, a3, v29, "RDHashtagLabelRepairer: removes hashtag label without hashtag: %s", v30, 0xCu);
      sub_10000607C(v31);

      v6 = v59;
      a1 = v60;
      v14 = v57;
      v15 = v58;
      v17 = v56;
    }

    else
    {
    }

    [a1 deleteObject:v28];

    ++v16;
  }

  while (v61 != v15);
  v6, v18, v19, v20, v21, v22, v23, v24;
  v62 = 0;
  if ([a1 save:&v62])
  {
    v45 = v62;
    v54->isa = v55;
  }

  else
  {
    v46 = v62;
    v55, v47, v48, v49, v50, v51, v52, v53;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100206E8C(void *a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v5 = sub_10020EFEC();
  v13 = sub_10020EE9C(v5);
  if ((a2 & 1) == 0)
  {
    goto LABEL_80;
  }

  if (v5 >> 62)
  {
LABEL_79:
    v164 = _CocoaArrayWrapper.endIndex.getter();
    if (v164)
    {
      goto LABEL_4;
    }

LABEL_80:
    v5, v6, v7, v8, v9, v10, v11, v12;
LABEL_81:
    *a3 = v13;
    return;
  }

  v164 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v164)
  {
    goto LABEL_80;
  }

LABEL_4:
  v15 = 0;
  v163 = v5 & 0xC000000000000001;
  v157 = v5 + 32;
  v158 = v5 & 0xFFFFFFFFFFFFFF8;
  v16 = &selRef_hack_willSaveHandled;
  *&v14 = 136315394;
  v156 = v14;
  v160 = v13;
  v161 = a3;
  v159 = v5;
  do
  {
    if (v163)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v158 + 16))
      {
        goto LABEL_78;
      }

      v24 = *(v157 + 8 * v15);
    }

    v25 = v24;
    if (__OFADD__(v15++, 1))
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v27 = [v24 hashtags];
    if (!v27)
    {

      continue;
    }

    v28 = v27;
    v166 = v25;
    v167 = v15;
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    a3 = sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190, &protocol conformance descriptor for NSObject);
    v29 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = v29;
    v171 = _swiftEmptySetSingleton;
    if ((v29 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v30 = v173;
      v31 = v174;
      v32 = v175;
      v5 = v176;
      v33 = v177;
    }

    else
    {
      v5 = 0;
      v34 = -1 << *(v29 + 32);
      v31 = v29 + 56;
      v32 = ~v34;
      v35 = -v34;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      else
      {
        v36 = -1;
      }

      v33 = v36 & *(v29 + 56);
    }

    v13 = ((v32 + 64) >> 6);
    v168 = v31;
    while (1)
    {
      if ((v30 & 0x8000000000000000) == 0)
      {
        v38 = v5;
        v39 = v33;
        v40 = v5;
        if (!v33)
        {
          while (1)
          {
            v40 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              break;
            }

            if (v40 >= v13)
            {
              goto LABEL_62;
            }

            v39 = *(v31 + 8 * v40);
            ++v38;
            if (v39)
            {
              goto LABEL_27;
            }
          }

          __break(1u);
          goto LABEL_75;
        }

LABEL_27:
        v169 = (v39 - 1) & v39;
        a3 = *(*(v30 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v39)))));
        if (!a3)
        {
          break;
        }

        goto LABEL_31;
      }

      v41 = __CocoaSet.Iterator.next()();
      if (!v41)
      {
        break;
      }

      v170 = v41;
      swift_dynamicCast();
      a3 = v172[0];
      v40 = v5;
      v169 = v33;
      if (!v172[0])
      {
        break;
      }

LABEL_31:
      if ([a3 v16[184]])
      {
        swift_beginAccess();
        v5 = v171;
        if ((v171 & 0xC000000000000001) != 0)
        {
          if (v171 < 0)
          {
            v42 = v171;
          }

          else
          {
            v42 = v171 & 0xFFFFFFFFFFFFFF8;
          }

          v43 = a3;

          a3 = __CocoaSet.member(for:)();

          if (a3)
          {
            v5, v44, v45, v46, v47, v48, v49, v50;

            swift_dynamicCast();
            a3 = v30;
            v51 = v170;
            swift_endAccess();

            v30 = a3;
            goto LABEL_21;
          }

          v64 = __CocoaSet.count.getter();
          if (__OFADD__(v64, 1))
          {
            goto LABEL_77;
          }

          v65 = sub_10037FC0C(v42, v64 + 1);
          v170 = v65;
          v66 = v65[2];
          if (v65[3] <= v66)
          {
            sub_100380E64(v66 + 1);
            v65 = v170;
          }

          v67 = v65[5];
          a3 = v43;
          v68 = NSObject._rawHashValue(seed:)(v67);
          v76 = (v65 + 7);
          v77 = -1 << *(v65 + 32);
          v78 = v68 & ~v77;
          v79 = v78 >> 6;
          if (((-1 << v78) & ~v65[(v78 >> 6) + 7]) == 0)
          {
            v81 = 0;
            v82 = (63 - v77) >> 6;
            v31 = v168;
            while (++v79 != v82 || (v81 & 1) == 0)
            {
              v83 = v79 == v82;
              if (v79 == v82)
              {
                v79 = 0;
              }

              v81 |= v83;
              v84 = *&v76[8 * v79];
              if (v84 != -1)
              {
                v80 = __clz(__rbit64(~v84)) + (v79 << 6);
                goto LABEL_61;
              }
            }

LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          v80 = __clz(__rbit64((-1 << v78) & ~v65[(v78 >> 6) + 7])) | v78 & 0x7FFFFFFFFFFFFFC0;
          v31 = v168;
LABEL_61:
          *&v76[(v80 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v80;
          *(v65[6] + 8 * v80) = a3;
          ++v65[2];
          v5, v69, v70, v71, v72, v73, v74, v75;
          v171 = v65;
          swift_endAccess();

          v5 = v40;
          v33 = v169;
        }

        else
        {
          v165 = v30;
          v55 = *(v171 + 40);
          v56 = a3;
          v57 = NSObject._rawHashValue(seed:)(v55);
          v58 = -1 << *(v5 + 32);
          v59 = v57 & ~v58;
          if ((*(v5 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
          {
            v60 = ~v58;
            while (1)
            {
              v61 = *(*(v5 + 48) + 8 * v59);
              a3 = static NSObject.== infix(_:_:)();

              if (a3)
              {
                break;
              }

              v59 = (v59 + 1) & v60;
              if (((*(v5 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
              {
                goto LABEL_45;
              }
            }

            swift_endAccess();
          }

          else
          {
LABEL_45:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v170 = v171;
            v63 = v56;
            a3 = &v170;
            sub_100385C1C(v63, v59, isUniquelyReferenced_nonNull_native);
            v171 = v170;
            swift_endAccess();
          }

          v5 = v40;
          v33 = v169;
          v16 = &selRef_hack_willSaveHandled;
          v30 = v165;
          v31 = v168;
        }
      }

      else
      {
        v52 = [a3 reminder];
        if (!v52 || (v53 = v52, v54 = [v52 markedForDeletion], v53, v54))
        {
          [a3 markForDeletion];
          swift_beginAccess();
          v37 = a3;
          a3 = &v171;
          sub_10037BE14(&v170, v37);
          swift_endAccess();
        }

        else
        {
        }

LABEL_21:
        v5 = v40;
        v31 = v168;
        v33 = v169;
      }
    }

LABEL_62:
    sub_10001B860(v30);
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_100006654(v85, qword_10093CC70);
    v86 = v166;
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();

    v5 = v159;
    v15 = v167;
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v172[0] = swift_slowAlloc();
      *v89 = v156;
      v90 = [v86 name];
      if (v90)
      {
        v91 = v90;
        v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v94 = v93;
      }

      else
      {
        v94 = 0xE300000000000000;
        v92 = 7104878;
      }

      v95 = sub_10000668C(v92, v94, v172);
      v94, v96, v97, v98, v99, v100, v101, v102;
      *(v89 + 4) = v95;
      *(v89 + 12) = 2080;
      swift_beginAccess();
      v103 = v171;

      sub_1001F6FAC(v104);
      v106 = v105;
      v103, v107, v108, v109, v110, v111, v112, v113;
      v114 = Array.description.getter();
      v116 = v115;
      v106, v115, v117, v118, v119, v120, v121, v122;
      v123 = sub_10000668C(v114, v116, v172);
      v116, v124, v125, v126, v127, v128, v129, v130;
      *(v89 + 14) = v123;
      _os_log_impl(&_mh_execute_header, v87, v88, "RDHashtagLabelRepairer: removes hashtags with isConcealed for hashtag label [%s]: %s", v89, 0x16u);
      swift_arrayDestroy();

      v15 = v167;
      v16 = &selRef_hack_willSaveHandled;
    }

    else
    {

      v16 = &selRef_hack_willSaveHandled;
    }

    swift_beginAccess();
    v131 = v171;

    isa = Set._bridgeToObjectiveC()().super.isa;
    v131, v133, v134, v135, v136, v137, v138, v139;
    [v86 removeHashtags:isa];

    sub_10020F4D8(a1, v86);
    v131, v140, v141, v142, v143, v144, v145, v146;

    v13 = v160;
    a3 = v161;
  }

  while (v15 != v164);
  v5, v17, v18, v19, v20, v21, v22, v23;
  v172[0] = 0;
  if ([a1 save:v172])
  {
    v147 = v172[0];
    goto LABEL_81;
  }

  v148 = v172[0];
  v13, v149, v150, v151, v152, v153, v154, v155;
  _convertNSErrorToError(_:)();

  swift_willThrow();
}

void sub_100207844(void *a1@<X0>, int a2@<W2>, _TtC7remindd19RDXPCStorePerformer **a3@<X8>)
{
  v156 = a3;
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v154 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v159 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v166 = &v154 - v19;
  __chkstk_darwin(v20, v21);
  v172 = &v154 - v22;
  __chkstk_darwin(v23, v24);
  v176 = &v154 - v25;
  v178 = type metadata accessor for UUID();
  v26 = *(v178 - 8);
  __chkstk_darwin(v178, v27);
  v177 = &v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10020F7FC();
  v38 = (v29 >> 62);
  v179 = v29;
  if (v29 >> 62)
  {
    v152 = (v29 >> 62);
    v153 = _CocoaArrayWrapper.endIndex.getter();
    v38 = v152;
    v39 = v153;
  }

  else
  {
    v39 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = &_swiftEmptyArrayStorage;
  v170 = v8;
  v167 = v13;
  v168 = a1;
  v161 = v12;
  if (!v39)
  {
    v42 = v179;
    if (a2)
    {
      goto LABEL_16;
    }

LABEL_51:
    v141 = v40;
    v42, v30, v31, v32, v33, v34, v35, v36;
    *v156 = v141;
    return;
  }

  v180 = v38;
  v181 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, v39 & ~(v39 >> 63), 0);
  if (v39 < 0)
  {
    __break(1u);
LABEL_60:
    __break(1u);
  }

  LODWORD(v174) = a2;
  v175 = v14;
  v41 = 0;
  v40 = v181;
  v42 = v179;
  v43 = v179 & 0xC000000000000001;
  v173 = v26;
  v44 = (v26 + 8);
  do
  {
    v45 = v40;
    if (v43)
    {
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v46 = *&v42->clientIdentity[8 * v41 + 16];
    }

    v47 = v46;
    v48 = [v46 remObjectID];
    if (v48)
    {
      v49 = v48;
      v50 = [v48 uuid];

      v51 = v177;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = UUID.uuidString.getter();
      v54 = v53;
      v55 = v51;
      v42 = v179;
      (*v44)(v55, v178);
    }

    else
    {
      v54 = 0xE300000000000000;
      v52 = 7104878;
    }

    v40 = v45;
    v181 = v45;
    v56 = *v45->clientIdentity;
    v57 = *&v40->clientIdentity[8];
    if (v56 >= v57 >> 1)
    {
      sub_100026EF4((v57 > 1), v56 + 1, 1);
      v42 = v179;
      v40 = v181;
    }

    ++v41;
    *v40->clientIdentity = v56 + 1;
    v58 = v40 + 16 * v56;
    *(v58 + 4) = v52;
    *(v58 + 5) = v54;
  }

  while (v39 != v41);
  a1 = v168;
  v12 = v161;
  v14 = v175;
  v26 = v173;
  v38 = v180;
  if ((v174 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_16:
  v155 = v40;
  if (!v38)
  {
    v59 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59)
    {
      goto LABEL_18;
    }

LABEL_55:
    v42, v30, v31, v32, v33, v34, v35, v36;
    goto LABEL_56;
  }

  v59 = _CocoaArrayWrapper.endIndex.getter();
  if (!v59)
  {
    goto LABEL_55;
  }

LABEL_18:
  if (v59 < 1)
  {
    goto LABEL_60;
  }

  v60 = 0;
  v173 = v42 & 0xC000000000000001;
  v158 = (v26 + 8);
  v169 = (v14 + 4);
  v175 = (v14 + 7);
  v162 = (v14 + 6);
  v171 = (v14 + 1);
  *&v37 = 136315394;
  v160 = v37;
  v164 = xmmword_1007953F0;
  v165 = v59;
  do
  {
    if (v173)
    {
      v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v71 = *&v42->clientIdentity[8 * v60 + 16];
    }

    v72 = v71;
    v73 = sub_10020FD48(a1, v71);
    if (v73)
    {
      v74 = v73;
      if (qword_100935BF8 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_100006654(v75, qword_10093CC70);
      v174 = v72;
      v76 = v72;
      v77 = v74;
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();
      v180 = v77;

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v181 = v163;
        *v80 = v160;
        v81 = [v76 remObjectID];
        if (v81)
        {
          v82 = v81;
          v83 = [v81 uuid];

          v84 = v177;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v85 = UUID.uuidString.getter();
          v87 = v86;
          (*v158)(v84, v178);
        }

        else
        {
          v87 = 0xE300000000000000;
          v85 = 7104878;
        }

        v88 = sub_10000668C(v85, v87, &v181);
        v87, v89, v90, v91, v92, v93, v94, v95;
        *(v80 + 4) = v88;
        *(v80 + 12) = 2080;
        v96 = [(RDXPCStorePerformer *)v180 name];
        if (v96)
        {
          v97 = v96;
          v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v100 = v99;
        }

        else
        {
          v100 = 0xE300000000000000;
          v98 = 7104878;
        }

        v101 = sub_10000668C(v98, v100, &v181);
        v100, v102, v103, v104, v105, v106, v107, v108;
        *(v80 + 14) = v101;
        _os_log_impl(&_mh_execute_header, v78, v79, "RDHashtagLabelRepairer: updates hashtag[%s] with label[%s]", v80, 0x16u);
        swift_arrayDestroy();

        v12 = v161;
      }

      else
      {
      }

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      inited = swift_initStackObject();
      *(inited + 16) = v164;
      *(inited + 32) = v76;
      v110 = v76;
      sub_100392DCC(inited);
      v112 = v111;
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
      sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190, &protocol conformance descriptor for NSObject);
      isa = Set._bridgeToObjectiveC()().super.isa;
      v112, v114, v115, v116, v117, v118, v119, v120;
      v121 = v180;
      [(RDXPCStorePerformer *)v180 addHashtags:isa];

      v122 = [(RDXPCStorePerformer *)v121 recencyDate];
      if (v122)
      {
        v123 = v172;
        v124 = v122;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v125 = *v169;
        v126 = v167;
        (*v169)(v12, v123, v167);
        v127 = *v175;
        (*v175)(v12, 0, 1, v126);
        v125(v176, v12, v126);
      }

      else
      {
        v127 = *v175;
        v126 = v167;
        (*v175)(v12, 1, 1, v167);
        static Date.distantPast.getter();
        if ((*v162)(v12, 1, v126) != 1)
        {
          sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
        }
      }

      v128 = [v110 creationDate];
      if (v128)
      {
        v129 = v172;
        v130 = v128;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v131 = v170;
        v132 = *v169;
        (*v169)(v170, v129, v126);
        v127(v131, 0, 1, v126);
        v133 = v166;
        v132(v166, v131, v126);
      }

      else
      {
        v134 = v170;
        v127(v170, 1, 1, v126);
        v133 = v166;
        static Date.distantPast.getter();
        if ((*v162)(v134, 1, v126) != 1)
        {
          sub_1000050A4(v170, &unk_100938850, qword_100795AE0);
        }
      }

      v135 = v176;
      v136 = static Date.< infix(_:_:)();
      v137 = v133;
      v138 = v136;
      v139 = *v171;
      (*v171)(v137, v126);
      v139(v135, v126);
      v72 = v174;
      if (v138)
      {
        v140 = [v110 creationDate];
        if (v140)
        {
          v61 = v159;
          v62 = v140;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v63.super.isa = Date._bridgeToObjectiveC()().super.isa;
          v139(v61, v126);
        }

        else
        {
          v63.super.isa = 0;
        }

        [(RDXPCStorePerformer *)v180 setRecencyDate:v63.super.isa];
      }

      v59 = v165;
      a1 = v168;
    }

    ++v60;

    v42 = v179;
  }

  while (v59 != v60);
  v179, v64, v65, v66, v67, v68, v69, v70;
  v181 = 0;
  if ([a1 save:&v181])
  {
    v142 = v181;
LABEL_56:
    *v156 = v155;
    return;
  }

  v143 = v181;
  v155, v144, v145, v146, v147, v148, v149, v150;
  v151 = _convertNSErrorToError(_:)();

  v157 = v151;
  swift_willThrow();
}

double sub_100208430@<D0>(void *a1@<X0>, int a2@<W2>, _TtC7remindd19RDXPCStorePerformer **a3@<X8>)
{
  v324 = a2;
  v312 = a3;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v306 = &v286 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v305 = &v286 - v9;
  v310 = type metadata accessor for Date();
  v10 = *(v310 - 8);
  __chkstk_darwin(v310, v11);
  v302 = &v286 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  p_super = (&v286 - v15);
  __chkstk_darwin(v17, v18);
  v307 = &v286 - v19;
  __chkstk_darwin(v20, v21);
  v309 = &v286 - v22;
  v311 = type metadata accessor for UUID();
  v23 = *(v311 - 8);
  __chkstk_darwin(v311, v24);
  v308 = &v286 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v26 - 8, v27);
  v303 = &v286 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v30);
  v304 = &v286 - v31;
  v32 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  __chkstk_darwin(v32 - 8, v33);
  v35 = &v286 - v34;
  v315 = a1;
  v36 = sub_1002104FC();
  v45 = v36;
  if (v36 >> 62)
  {
    goto LABEL_90;
  }

  v46 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v46)
  {
LABEL_3:
    v296 = p_super;
    v47 = 0;
    v48 = v45 & 0xC000000000000001;
    v318 = v45 & 0xFFFFFFFFFFFFFF8;
    v317 = (v45 + 32);
    v294 = (v23 + 56);
    v293 = (v23 + 48);
    v291 = (v23 + 16);
    v299 = (v23 + 8);
    v297 = v10 + 4;
    v301 = v10 + 7;
    v295 = v10 + 6;
    v314 = &_swiftEmptyArrayStorage;
    v298 = v10 + 1;
    *&v44 = 136446210;
    v322 = v44;
    *&v44 = 136315650;
    v292 = v44;
    v300 = xmmword_1007953F0;
    v321 = v45;
    v323 = v35;
    v320 = v46;
    v319 = v45 & 0xC000000000000001;
    do
    {
      if (v48)
      {
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v47 >= *(v318 + 16))
        {
          goto LABEL_89;
        }

        v63 = *&v317[8 * v47];
      }

      v23 = v63;
      if (__OFADD__(v47++, 1))
      {
        goto LABEL_88;
      }

      v65 = [v63 canonicalName];
      if (v65)
      {
        v66 = v65;
        v333 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v334 = v67;

        v68 = [v23 hashtags];
        if (v68)
        {
          v10 = v68;
          v327 = v23;
          v69 = sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
          v70 = sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190, &protocol conformance descriptor for NSObject);
          v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v328 = v69;
          v316 = v70;
          if ((v23 & 0xC000000000000001) != 0)
          {
            __CocoaSet.makeIterator()();
            Set.Iterator.init(_cocoa:)();
            v71 = v336[2];
            v332 = v336[3];
            v72 = v336[4];
            v73 = v336[5];
            p_super = v336[6];
          }

          else
          {
            v73 = 0;
            v74 = -1 << *(v23 + 32);
            v75 = *(v23 + 56);
            v332 = (v23 + 56);
            v72 = ~v74;
            v76 = -v74;
            if (v76 < 64)
            {
              v77 = ~(-1 << v76);
            }

            else
            {
              v77 = -1;
            }

            p_super = (v77 & v75);
            v71 = v23;
          }

          v326 = v47;
          v325 = v72;
          v78 = (v72 + 64) >> 6;
          v330 = v71;
          v331 = v78;
          while (2)
          {
            v45 = v73;
            v79 = p_super;
            v80 = v332;
LABEL_24:
            if (v71 < 0)
            {
              v10 = (v71 & 0x7FFFFFFFFFFFFFFFLL);
              v83 = __CocoaSet.Iterator.next()();
              if (!v83 || (v335 = v83, swift_dynamicCast(), v23 = v336[0], v73 = v45, p_super = &v79->super, !v336[0]))
              {
LABEL_4:
                sub_10001B860(v71);
                v45 = v321;
                v46 = v320;
                v47 = v326;
                v48 = v319;
                v23 = v327;
                goto LABEL_5;
              }
            }

            else
            {
              v81 = v45;
              v82 = v79;
              v73 = v45;
              if (!v79)
              {
                while (1)
                {
                  v73 = v81 + 1;
                  if (__OFADD__(v81, 1))
                  {
                    break;
                  }

                  if (v73 >= v78)
                  {
                    goto LABEL_4;
                  }

                  v82 = v80[v73];
                  ++v81;
                  if (v82)
                  {
                    goto LABEL_29;
                  }
                }

                __break(1u);
LABEL_88:
                __break(1u);
LABEL_89:
                __break(1u);
LABEL_90:
                v46 = _CocoaArrayWrapper.endIndex.getter();
                if (!v46)
                {
                  goto LABEL_91;
                }

                goto LABEL_3;
              }

LABEL_29:
              p_super = ((v82 - 1) & v82);
              v23 = *(*(v71 + 48) + ((v73 << 9) | (8 * __clz(__rbit64(v82)))));
              if (!v23)
              {
                goto LABEL_4;
              }
            }

            v84 = [v23 name];
            if (v84)
            {
              v85 = v84;
              v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v88 = v87;

              v336[0] = v86;
              v336[1] = v88;
              static Locale.current.getter();
              v89 = type metadata accessor for Locale();
              (*(*(v89 - 8) + 56))(v35, 0, 1, v89);
              sub_10013BCF4();
              v10 = v336;
              v90 = StringProtocol.foldedStringForWriting(locale:)();
              v92 = v91;
              sub_1000050A4(v35, &unk_10093F420, &unk_100797AE0);
              v88, v93, v94, v95, v96, v97, v98, v99;
              if (v333 == v90 && v334 == v92)
              {
                v92, v100, v101, v102, v103, v104, v105, v106;

                v45 = v73;
                v79 = p_super;
                goto LABEL_49;
              }

              v117 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v71 = v330;
              v10 = p_super;
              if (v117)
              {
                v92, v118, v119, v120, v121, v122, v123, v124;

                v45 = v73;
                v79 = p_super;
                goto LABEL_50;
              }

              if ((v324 & 1) == 0)
              {
                v92, v118, v119, v120, v121, v122, v123, v124;
LABEL_77:
                v260 = [v23 remObjectID];
                if (v260)
                {
                  v261 = v260;
                  v262 = [v260 uuid];

                  v263 = v308;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v264 = UUID.uuidString.getter();
                  v10 = v265;
                  (*v299)(v263, v311);
                }

                else
                {
                  v10 = 0xE300000000000000;
                  v264 = 7104878;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v314 = sub_100365788(0, *v314->clientIdentity + 1, 1, v314, v266, v267, v268, v269);
                }

                v271 = *v314->clientIdentity;
                v270 = *&v314->clientIdentity[8];
                if (v271 >= v270 >> 1)
                {
                  v314 = sub_100365788((v270 > 1), v271 + 1, 1, v314, v266, v267, v268, v269);
                }

                v272 = v314;
                *v314->clientIdentity = v271 + 1;
                v273 = v272 + 16 * v271;
                *(v273 + 4) = v264;
                *(v273 + 5) = v10;
                v71 = v330;
                v78 = v331;
                continue;
              }

              v125 = sub_10020FD48(v315, v23);
              v80 = v332;
              if (v125)
              {
                v329 = v125;
                if (qword_100935BF8 != -1)
                {
                  swift_once();
                }

                v140 = type metadata accessor for Logger();
                sub_100006654(v140, qword_10093CC70);
                v290 = v23;
                v141 = v334;

                v142 = Logger.logObject.getter();
                v143 = static os_log_type_t.default.getter();
                v92, v144, v145, v146, v147, v148, v149, v150;
                v151 = v141;
                v152 = v142;
                v151, v153, v154, v155, v156, v157, v158, v159;
                v160 = v290;

                LODWORD(v289) = v143;
                if (os_log_type_enabled(v152, v143))
                {
                  v288 = v152;
                  v168 = swift_slowAlloc();
                  v169 = swift_slowAlloc();
                  v336[0] = v169;
                  *v168 = v292;
                  v170 = [v160 identifier];
                  v171 = v311;
                  v287 = v168;
                  v286 = v169;
                  if (v170)
                  {
                    v172 = v303;
                    v173 = v170;
                    v174 = v311;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v171 = v174;
                    v175 = v172;
                    v176 = 0;
                  }

                  else
                  {
                    v176 = 1;
                    v175 = v303;
                  }

                  (*v294)(v175, v176, 1, v171);
                  v177 = v304;
                  sub_100031B58(v175, v304, &unk_100939D90, "8\n\r");
                  if ((*v293)(v177, 1, v311))
                  {
                    sub_1000050A4(v304, &unk_100939D90, "8\n\r");
                    v178 = 0xE300000000000000;
                    v179 = 7104878;
                  }

                  else
                  {
                    v180 = v308;
                    v181 = v304;
                    (*v291)(v308, v304, v311);
                    sub_1000050A4(v181, &unk_100939D90, "8\n\r");
                    v182 = UUID.uuidString.getter();
                    v178 = v183;
                    v184 = v180;
                    v35 = v323;
                    (*v299)(v184, v311);
                    v179 = v182;
                  }

                  v185 = sub_10000668C(v179, v178, v336);
                  v178, v186, v187, v188, v189, v190, v191, v192;
                  v193 = v287;
                  *(v287 + 1) = v185;
                  *(v193 + 6) = 2080;
                  *(v193 + 14) = sub_10000668C(v333, v334, v336);
                  *(v193 + 11) = 2080;
                  v194 = sub_10000668C(v90, v92, v336);
                  v92, v195, v196, v197, v198, v199, v200, v201;
                  *(v193 + 3) = v194;
                  v152 = v288;
                  _os_log_impl(&_mh_execute_header, v288, v289, "RDHashtagLabelRepairer: updates hashtag [%s] from old label canonical name [%s] to new canonical name [%s]", v193, 0x20u);
                  swift_arrayDestroy();
                }

                else
                {
                  v92, v161, v162, v163, v164, v165, v166, v167;
                }

                v202 = sub_1000F5104(&unk_100939D60, &unk_1007959E0);
                inited = swift_initStackObject();
                *(inited + 16) = v300;
                v204 = v290;
                *(inited + 32) = v290;
                v205 = v204;
                sub_100392DCC(inited);
                v207 = v206;
                swift_setDeallocating();
                swift_arrayDestroy();
                isa = Set._bridgeToObjectiveC()().super.isa;
                v207, v209, v210, v211, v212, v213, v214, v215;
                v216 = v329;
                [(RDXPCStorePerformer *)v329 addHashtags:isa];

                v217 = [(RDXPCStorePerformer *)v216 recencyDate];
                v289 = v202;
                v290 = v205;
                if (v217)
                {
                  v218 = v307;
                  v219 = v217;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v220 = v297->isa;
                  v221 = v305;
                  v222 = v310;
                  (v297->isa)(v305, v218, v310);
                  v223 = v301->isa;
                  (v301->isa)(v221, 0, 1, v222);
                  v220(v309, v221, v222);
                  v205 = v290;
                }

                else
                {
                  v223 = v301->isa;
                  v224 = v305;
                  v225 = v310;
                  (v301->isa)(v305, 1, 1, v310);
                  static Date.distantPast.getter();
                  if ((v295->isa)(v224, 1, v225) != 1)
                  {
                    sub_1000050A4(v224, &unk_100938850, qword_100795AE0);
                  }
                }

                v226 = [v205 creationDate];
                if (v226)
                {
                  v227 = v307;
                  v228 = v226;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v229 = v297->isa;
                  v230 = v306;
                  v231 = v227;
                  v232 = v310;
                  (v297->isa)(v306, v231, v310);
                  v223(v230, 0, 1, v232);
                  v233 = v232;
                  v234 = v296;
                  v229(v296, v230, v233);
                  v235 = v234;
                }

                else
                {
                  v236 = v306;
                  v237 = v310;
                  v223(v306, 1, 1, v310);
                  v233 = v237;
                  v235 = v296;
                  static Date.distantPast.getter();
                  if ((v295->isa)(v236, 1, v233) != 1)
                  {
                    sub_1000050A4(v306, &unk_100938850, qword_100795AE0);
                  }
                }

                v238 = v309;
                v239 = static Date.< infix(_:_:)();
                v240 = v235;
                v241 = v298->isa;
                (v298->isa)(v240, v233);
                v241(v238, v233);
                v242 = v290;
                if (v239)
                {
                  v243 = [v290 creationDate];
                  if (v243)
                  {
                    v244 = v302;
                    v245 = v243;
                    static Date._unconditionallyBridgeFromObjectiveC(_:)();

                    v246.super.isa = Date._bridgeToObjectiveC()().super.isa;
                    v241(v244, v310);
                  }

                  else
                  {
                    v246.super.isa = 0;
                  }

                  [(RDXPCStorePerformer *)v329 setRecencyDate:v246.super.isa];
                }

                v247 = swift_initStackObject();
                *(v247 + 16) = v300;
                *(v247 + 32) = v242;
                v248 = v242;
                sub_100392DCC(v247);
                v250 = v249;
                swift_setDeallocating();
                swift_arrayDestroy();
                v251 = Set._bridgeToObjectiveC()().super.isa;
                v250, v252, v253, v254, v255, v256, v257, v258;
                v259 = v327;
                [v327 removeHashtags:v251];

                sub_10020F4D8(v315, v259);
                goto LABEL_77;
              }

              v92, v126, v127, v128, v129, v130, v131, v132;
              v45 = v73;
              v79 = p_super;
            }

            else
            {
              v329 = p_super;
              if (qword_100935BF8 != -1)
              {
                swift_once();
              }

              v107 = type metadata accessor for Logger();
              sub_100006654(v107, qword_10093CC70);
              v23 = v23;
              v10 = Logger.logObject.getter();
              v108 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v10, v108))
              {
                v109 = swift_slowAlloc();
                v110 = swift_slowAlloc();
                v336[0] = v110;
                *v109 = v322;
                v111 = [v23 remObjectID];
                if (v111)
                {
                  v112 = v111;
                  v113 = [v111 description];

                  v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v116 = v115;
                }

                else
                {
                  v116 = 0xE300000000000000;
                  v114 = 7104878;
                }

                p_super = sub_10000668C(v114, v116, v336);
                v116, v133, v134, v135, v136, v137, v138, v139;
                *(v109 + 4) = p_super;
                _os_log_impl(&_mh_execute_header, v10, v108, "RDHashtagLabelRepairer: Hashtag[%{public}s] without name", v109, 0xCu);
                sub_10000607C(v110);

                v45 = v73;
                v79 = v329;
                v35 = v323;
LABEL_49:
                v71 = v330;
LABEL_50:
                v80 = v332;
              }

              else
              {

                v45 = v73;
                v79 = v329;
              }
            }

            break;
          }

          v78 = v331;
          goto LABEL_24;
        }

LABEL_5:
        v334, v49, v50, v51, v52, v53, v54, v55;
      }
    }

    while (v47 != v46);
    v45, v56, v57, v58, v59, v60, v61, v62;
    v275 = v314;
    if ((v324 & 1) == 0)
    {
      goto LABEL_95;
    }
  }

  else
  {
LABEL_91:
    v45, v37, v38, v39, v40, v41, v42, v43;
    v275 = &_swiftEmptyArrayStorage;
    if ((v324 & 1) == 0)
    {
LABEL_95:
      *v312 = v275;
      return result;
    }
  }

  if (!*v275->clientIdentity)
  {
    goto LABEL_95;
  }

  v336[0] = 0;
  if ([v315 save:v336])
  {
    v276 = v336[0];
    goto LABEL_95;
  }

  v277 = v336[0];
  v278 = _convertNSErrorToError(_:)();

  v313 = v278;
  swift_willThrow();
  v275, v279, v280, v281, v282, v283, v284, v285;
  return result;
}

void sub_1002098FC(void *a1@<X0>, int a2@<W2>, _TtC7remindd19RDXPCStorePerformer **a3@<X8>)
{
  LODWORD(v3) = a2;
  v248 = a3;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v251 = &v246 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v246 - v10;
  __chkstk_darwin(v12, v13);
  v259 = &v246 - v14;
  __chkstk_darwin(v15, v16);
  v253 = &v246 - v17;
  __chkstk_darwin(v18, v19);
  v21 = &v246 - v20;
  v22 = type metadata accessor for UUID();
  v266 = *(v22 - 8);
  __chkstk_darwin(v22, v23);
  v268 = &v246 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v276 = &v246 - v27;
  v265 = a1;
  v28 = sub_1002109B0();
  v37 = v28;
  v38 = (v28 >> 62);
  if (v28 >> 62)
  {
    goto LABEL_79;
  }

  v39 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v40 = &_swiftEmptyArrayStorage;
  v250 = v11;
  v267 = v21;
  v277 = v22;
  v278 = v37;
  if (v39)
  {
    v280 = &_swiftEmptyArrayStorage;
    v275 = v39;
    sub_100026EF4(0, v39 & ~(v39 >> 63), 0);
    v41 = v275;
    if ((v275 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_81:
      __break(1u);
    }

    v273 = v38;
    LODWORD(v274) = v3;
    v42 = 0;
    v40 = v280;
    v43 = v37 & 0xC000000000000001;
    v44 = (v266 + 8);
    do
    {
      if (v43)
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v45 = *&v278->clientIdentity[8 * v42 + 16];
      }

      v46 = v45;
      v47 = [v45 remObjectID];
      if (v47)
      {
        v48 = v47;
        v49 = [v47 uuid];

        v50 = v276;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v51 = UUID.uuidString.getter();
        v41 = v275;
        v52 = v51;
        v54 = v53;
        (*v44)(v50, v277);
      }

      else
      {
        v54 = 0xE300000000000000;
        v52 = 7104878;
      }

      v280 = v40;
      v56 = *v40->clientIdentity;
      v55 = *&v40->clientIdentity[8];
      if (v56 >= v55 >> 1)
      {
        sub_100026EF4((v55 > 1), v56 + 1, 1);
        v41 = v275;
        v40 = v280;
      }

      ++v42;
      *v40->clientIdentity = v56 + 1;
      v57 = v40 + 16 * v56;
      *(v57 + 4) = v52;
      *(v57 + 5) = v54;
    }

    while (v41 != v42);
    v21 = v267;
    v22 = v277;
    v37 = v278;
    LOBYTE(v3) = v274;
    v38 = v273;
  }

  if ((v3 & 1) == 0)
  {
    v37, v29, v30, v31, v32, v33, v34, v35;
    *v248 = v40;
    return;
  }

  v247 = v40;
  if (!v38)
  {
    v58 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v58)
    {
      goto LABEL_19;
    }

LABEL_74:
    v37, v29, v30, v31, v32, v33, v34, v35;
LABEL_75:
    *v248 = v247;
    return;
  }

  v58 = _CocoaArrayWrapper.endIndex.getter();
  if (!v58)
  {
    goto LABEL_74;
  }

LABEL_19:
  if (v58 < 1)
  {
    goto LABEL_81;
  }

  v3 = 0;
  v274 = (v266 + 48);
  v275 = v37 & 0xC000000000000001;
  v258 = v266 + 32;
  v264 = v266 + 16;
  v254 = (v266 + 56);
  v263 = (v266 + 8);
  *&v36 = 136446210;
  v260 = v36;
  *(&v59 + 1) = 2;
  v257 = xmmword_100791300;
  *&v59 = 136315650;
  v249 = v59;
  *&v59 = 136315138;
  v246 = v59;
  v269 = v58;
  do
  {
    if (v275)
    {
      v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v67 = *(v37 + 8 * v3 + 32);
    }

    v68 = v67;
    v69 = [v67 sharedToMeReminderCKIdentifier];
    if (!v69)
    {
      goto LABEL_29;
    }

    v70 = v69;
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v72;

    v272 = v71;
    UUID.init(uuidString:)();
    v73 = *v274;
    if ((*v274)(v21, 1, v22) != 1)
    {
      v273 = v3;
      v94 = v266;
      v95 = v268;
      (*(v266 + 32))(v268, v21, v22);
      sub_1000F5104(&qword_10093D000, &qword_10079D320);
      v96 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v97 = swift_allocObject();
      *(v97 + 16) = v257;
      v261 = *(v94 + 16);
      v261(v97 + v96, v95, v22);
      v279 = v97;
      v280 = &_swiftEmptyArrayStorage;
      sub_1000F5104(&qword_10093D008, qword_10079AAC0);
      sub_10000CB48(&qword_10093D010, &qword_10093D008, qword_10079AAC0, &protocol conformance descriptor for [A]);
      v98 = BidirectionalCollection<>.slices(by:)();
      v97, v99, v100, v101, v102, v103, v104, v105;
      v106 = v265;
      v107 = v271;
      sub_10020BE20(v98, v106, &v280, sub_1001FADDC);
      v271 = v107;
      v98, v108, v109, v110, v111, v112, v113, v114;

      v22 = v280;
      if (qword_100935BF8 != -1)
      {
        swift_once();
      }

      v115 = type metadata accessor for Logger();
      v116 = sub_100006654(v115, qword_10093CC70);
      v117 = v68;

      v262 = v116;
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.default.getter();

      v38, v120, v121, v122, v123, v124, v125, v126;
      v127 = os_log_type_enabled(v118, v119);
      v270 = v117;
      if (v127)
      {
        v256 = v119;
        v128 = swift_slowAlloc();
        v255 = swift_slowAlloc();
        v280 = v255;
        *v128 = v249;
        v129 = [v117 identifier];
        v130 = v259;
        if (v129)
        {
          v131 = v129;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v130 = v259;
          v132 = 0;
        }

        else
        {
          v132 = 1;
        }

        v148 = v277;
        v252 = *v254;
        v252(v130, v132, 1, v277);
        v149 = v130;
        v150 = v253;
        sub_100031B58(v149, v253, &unk_100939D90, "8\n\r");
        if (v73(v150, 1, v148))
        {
          sub_1000050A4(v150, &unk_100939D90, "8\n\r");
          v151 = 0xE300000000000000;
          v152 = 7104878;
        }

        else
        {
          v153 = v276;
          v261(v276, v150, v148);
          sub_1000050A4(v150, &unk_100939D90, "8\n\r");
          v154 = UUID.uuidString.getter();
          v151 = v155;
          (*v263)(v153, v148);
          v152 = v154;
        }

        v37 = v278;
        v156 = sub_10000668C(v152, v151, &v280);
        v151, v157, v158, v159, v160, v161, v162, v163;
        *(v128 + 4) = v156;
        *(v128 + 12) = 2080;
        *(v128 + 14) = sub_10000668C(v272, v38, &v280);
        *(v128 + 22) = 2080;
        v164 = [v270 reminder];
        if (v164)
        {
          v165 = v164;
          v166 = [v164 identifier];

          if (v166)
          {
            v167 = v251;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v168 = v167;
            v169 = 0;
          }

          else
          {
            v169 = 1;
            v168 = v251;
          }

          v172 = v277;
          v252(v168, v169, 1, v277);
          v173 = v168;
          v174 = v250;
          sub_100031B58(v173, v250, &unk_100939D90, "8\n\r");
          if (v73(v174, 1, v172))
          {
            sub_1000050A4(v174, &unk_100939D90, "8\n\r");
            v170 = 0xE300000000000000;
            v171 = 7104878;
          }

          else
          {
            v175 = v276;
            v261(v276, v174, v172);
            sub_1000050A4(v174, &unk_100939D90, "8\n\r");
            v176 = UUID.uuidString.getter();
            v170 = v177;
            (*v263)(v175, v172);
            v171 = v176;
          }

          v21 = v267;
          v37 = v278;
        }

        else
        {
          v170 = 0xE300000000000000;
          v171 = 7104878;
          v21 = v267;
        }

        v178 = sub_10000668C(v171, v170, &v280);
        v170, v179, v180, v181, v182, v183, v184, v185;
        *(v128 + 24) = v178;
        _os_log_impl(&_mh_execute_header, v118, v256, "RDHashtagLabelRepairer: fixes hashtag[%s] with sharedToMeReminderCKIdentifier[%s] and original reminder id [%s]", v128, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v37 = v278;
      }

      v3 = v273;
      v58 = v269;
      if (v22 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_58;
        }
      }

      else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_58:
        if ((v22 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v38, v230, v231, v232, v233, v234, v235, v236;
          swift_unknownObjectRelease();
          v186 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v11 = (v22 & 0xFFFFFFFFFFFFFF8);
          v3 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v38, v133, v134, v135, v136, v137, v138, v139;
          if (!v3)
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            v39 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_3;
          }

          v3 = v273;
          if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_78;
          }

          v186 = *(v22 + 32);
        }

        v194 = v186;
        v22, v187, v188, v189, v190, v191, v192, v193;
        goto LABEL_68;
      }

      v195 = Logger.logObject.getter();
      v196 = static os_log_type_t.default.getter();
      v38, v197, v198, v199, v200, v201, v202, v203;
      if (os_log_type_enabled(v195, v196))
      {
        v211 = swift_slowAlloc();
        v212 = swift_slowAlloc();
        v280 = v212;
        *v211 = v246;
        v213 = sub_10000668C(v272, v38, &v280);
        v38, v214, v215, v216, v217, v218, v219, v220;
        *(v211 + 4) = v213;
        v58 = v269;
        _os_log_impl(&_mh_execute_header, v195, v196, "RDHashtagLabelRepairer: reminder[%s] is not found in database. It may not be sync down yet.", v211, 0xCu);
        sub_10000607C(v212);
        v21 = v267;

        v3 = v273;

        v228 = v22;
      }

      else
      {
        v22, v204, v205, v206, v207, v208, v209, v210;
        v228 = v38;
      }

      v228, v221, v222, v223, v224, v225, v226, v227;

      v194 = 0;
LABEL_68:
      v229 = v270;
      [v270 setReminder:v194];

      v22 = v277;
      (*v263)(v268, v277);
      goto LABEL_22;
    }

    v38, v74, v75, v76, v77, v78, v79, v80;
    sub_1000050A4(v21, &unk_100939D90, "8\n\r");
LABEL_29:
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    sub_100006654(v81, qword_10093CC70);
    v82 = v68;
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = v3;
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v280 = v87;
      *v86 = v260;
      v88 = [v82 remObjectID];
      if (v88)
      {
        v89 = v88;
        v90 = [v88 description];

        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;
      }

      else
      {
        v93 = 0xE300000000000000;
        v91 = 7104878;
      }

      v140 = sub_10000668C(v91, v93, &v280);
      v93, v141, v142, v143, v144, v145, v146, v147;
      *(v86 + 4) = v140;
      _os_log_impl(&_mh_execute_header, v83, v84, "RDHashtagLabelRepairer: Impossible as hashtag[%{public}s] without sharedToMeReminderCKIdentifier", v86, 0xCu);
      sub_10000607C(v87);

      v21 = v267;
      v58 = v269;
      v3 = v85;
      v22 = v277;
      v37 = v278;
    }

    else
    {

      v22 = v277;
    }

LABEL_22:
    v3 = (v3 + 1);
  }

  while (v58 != v3);
  v37, v60, v61, v62, v63, v64, v65, v66;
  v280 = 0;
  if ([v265 save:&v280])
  {
    v237 = v280;
    goto LABEL_75;
  }

  v238 = v280;
  v247, v239, v240, v241, v242, v243, v244, v245;
  _convertNSErrorToError(_:)();

  swift_willThrow();
}

void sub_10020A810(void *a1@<X0>, int a2@<W2>, unint64_t a3@<X8>)
{
  v4 = v3;
  v72 = a2;
  v81 = type metadata accessor for UUID();
  v7 = *(v81 - 8);
  __chkstk_darwin(v81 - 8, v8);
  v75 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v10 - 8, v11);
  v80 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v69 - v15;
  v77 = a1;
  v17 = sub_100210F94();
  v25 = v17;
  v71 = v17 >> 62;
  if (v17 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v27 = &_swiftEmptyArrayStorage;
    v86 = v25;
    if (i)
    {
      v87 = &_swiftEmptyArrayStorage;
      v82 = i;
      sub_100026EF4(0, i & ~(i >> 63), 0);
      v28 = v82;
      if (v82 < 0)
      {
        __break(1u);
      }

      v69 = a3;
      v70 = v4;
      a3 = 0;
      v25 = v86;
      v27 = v87;
      v83 = v16;
      v84 = v86 & 0xC000000000000001;
      v76 = v86 & 0xFFFFFFFFFFFFFF8;
      v78 = (v7 + 48);
      v79 = (v7 + 56);
      v73 = (v7 + 8);
      v74 = (v7 + 16);
      while (1)
      {
        v4 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        if (v84)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a3 >= *(v76 + 16))
          {
            goto LABEL_44;
          }

          v29 = *(v25 + 8 * a3 + 32);
        }

        v30 = v29;
        v31 = [v29 reminder];
        if (v31)
        {
          v32 = v31;
          v33 = [v31 identifier];

          v85 = v27;
          if (v33)
          {
            v34 = v80;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v35 = 0;
          }

          else
          {
            v35 = 1;
            v34 = v80;
          }

          v38 = v81;
          (*v79)(v34, v35, 1, v81);
          sub_100031B58(v34, v16, &unk_100939D90, "8\n\r");
          v39 = (*v78)(v16, 1, v38);
          v40 = v86;
          v28 = v82;
          if (v39)
          {
            sub_1000050A4(v16, &unk_100939D90, "8\n\r");
            v36 = 0xE300000000000000;
            v37 = 7104878;
            v25 = v40;
          }

          else
          {
            v41 = v75;
            (*v74)(v75, v16, v38);
            sub_1000050A4(v16, &unk_100939D90, "8\n\r");
            v42 = UUID.uuidString.getter();
            v25 = v86;
            v37 = v42;
            v36 = v43;
            v44 = v41;
            v28 = v82;
            (*v73)(v44, v38);
          }

          v27 = v85;
        }

        else
        {
          v36 = 0xE300000000000000;
          v37 = 7104878;
        }

        v87 = v27;
        v46 = *v27->clientIdentity;
        v45 = *&v27->clientIdentity[8];
        v7 = v46 + 1;
        if (v46 >= v45 >> 1)
        {
          sub_100026EF4((v45 > 1), v46 + 1, 1);
          v28 = v82;
          v25 = v86;
          v27 = v87;
        }

        *v27->clientIdentity = v7;
        v47 = v27 + 16 * v46;
        *(v47 + 4) = v37;
        *(v47 + 5) = v36;
        ++a3;
        v16 = v83;
        if (v4 == v28)
        {
          a3 = v69;
          v4 = v70;
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

LABEL_24:
    if ((v72 & 1) == 0)
    {
      break;
    }

    if (!v71)
    {
      v7 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        break;
      }

      goto LABEL_27;
    }

    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      break;
    }

LABEL_27:
    v48 = 0;
    v49 = v25 & 0xC000000000000001;
    v16 = (v25 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v49)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v48 >= *(v16 + 2))
        {
          goto LABEL_43;
        }

        v50 = *(v86 + 8 * v48 + 32);
      }

      v51 = v50;
      v25 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      v87 = v50;
      sub_10020AD58(&v87, v77);

      ++v48;
      if (v25 == v7)
      {
        v86, v52, v53, v54, v55, v56, v57, v58;
        v87 = 0;
        if ([v77 save:&v87])
        {
          v60 = v87;
          goto LABEL_39;
        }

        v61 = v87;
        v27, v62, v63, v64, v65, v66, v67, v68;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        return;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  v25, v18, v19, v20, v21, v22, v23, v24;
LABEL_39:
  *a3 = v27;
}

id sub_10020AD58(void **a1, void *a2)
{
  v60 = a2;
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v55 - v10;
  v12 = type metadata accessor for UUID();
  v59 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10093CC70);
  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v57 = v20;
    v58 = v2;
    v21 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61 = v56;
    *v21 = 136315394;
    v22 = [v18 remObjectID];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = UUID.uuidString.getter();
      v27 = v26;
      (*(v59 + 8))(v15, v12);
    }

    else
    {
      v27 = 0xE300000000000000;
      v25 = 7104878;
    }

    v28 = sub_10000668C(v25, v27, &v61);
    v27, v29, v30, v31, v32, v33, v34, v35;
    *(v21 + 4) = v28;
    *(v21 + 12) = 2080;
    v36 = [v18 reminder];
    if (v36)
    {
      v37 = v36;
      v38 = [v36 identifier];

      if (v38)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v39 = 0;
      }

      else
      {
        v39 = 1;
      }

      v41 = v59;
      (*(v59 + 56))(v7, v39, 1, v12);
      sub_100031B58(v7, v11, &unk_100939D90, "8\n\r");
      if (!(*(v41 + 48))(v11, 1, v12))
      {
        (*(v41 + 16))(v15, v11, v12);
        sub_1000050A4(v11, &unk_100939D90, "8\n\r");
        v43 = v41;
        v44 = UUID.uuidString.getter();
        v40 = v45;
        (*(v43 + 8))(v15, v12);
        v42 = v44;
        goto LABEL_16;
      }

      sub_1000050A4(v11, &unk_100939D90, "8\n\r");
      v40 = 0xE300000000000000;
    }

    else
    {
      v40 = 0xE300000000000000;
    }

    v42 = 7104878;
LABEL_16:
    v46 = sub_10000668C(v42, v40, &v61);
    v40, v47, v48, v49, v50, v51, v52, v53;
    *(v21 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v19, v57, "RDHashtagLabelRepairer removes sharedToMeReminerPlaceholder[%s] with reminderID[%s]", v21, 0x16u);
    swift_arrayDestroy();
  }

  return [v60 deleteObject:v18];
}

void sub_10020B1EC(void **a1@<X0>, void *a2@<X8>)
{
  v69 = a2;
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v3 - 8, v4);
  v70 = &v65 - v5;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v10, v11).n128_u64[0];
  v14 = &v65 - v13;
  v15 = *a1;
  v16 = [v15 name];
  if (v16)
  {
    v17 = v16;
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v19 = 0xE300000000000000;
    v67 = 7104878;
  }

  v20 = [v15 canonicalName];
  if (v20)
  {
    v21 = v20;
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v66 = 0;
    v23 = 0;
  }

  v24 = [v15 firstOccurrenceCreationDate];
  if (v24)
  {
    v25 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 56))(v14, 0, 1, v26);
  }

  else
  {
    v27 = type metadata accessor for Date();
    (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  }

  v28 = [v15 recencyDate];
  if (v28)
  {
    v29 = v28;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v34 = 1;
  v68 = v9;
  v33(v9, v30, 1, v31);
  v35 = [v15 uuidForChangeTracking];
  if (v35)
  {
    v36 = v70;
    v37 = v35;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = v36;
    v34 = 0;
  }

  else
  {
    v38 = v70;
  }

  v39 = type metadata accessor for UUID();
  v40 = *(v39 - 8);
  (*(v40 + 56))(v38, v34, 1, v39);
  v67 = String._bridgeToObjectiveC()();
  v19, v41, v42, v43, v44, v45, v46, v47;
  if (v23)
  {
    v48 = String._bridgeToObjectiveC()();
    v23, v49, v50, v51, v52, v53, v54, v55;
  }

  else
  {
    v48 = 0;
  }

  v56 = *(v32 + 48);
  if (v56(v14, 1, v31) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v32 + 8))(v14, v31);
  }

  v58 = v68;
  if (v56(v68, 1, v31) == 1)
  {
    v59 = 0;
  }

  else
  {
    v59 = Date._bridgeToObjectiveC()().super.isa;
    (*(v32 + 8))(v58, v31);
  }

  v60 = v70;
  if ((*(v40 + 48))(v70, 1, v39) == 1)
  {
    v61 = 0;
  }

  else
  {
    v61 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v40 + 8))(v60, v39);
  }

  v62 = objc_allocWithZone(REMHashtagLabel);
  v63 = v67;
  v64 = [v62 initWithName:v67 canonicalName:v48 firstOccurrenceCreationDate:isa recencyDate:v59 uuidForChangeTracking:v61];

  *v69 = v64;
}

void sub_10020B720(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = &qword_100936000;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(a1 + 48) + ((v7 << 10) | (16 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = v13 + 1;
    if ((v13 + 1) > 0x22)
    {
      goto LABEL_12;
    }

    if (((1 << v14) & 0x40401) == 0)
    {
      if (((1 << v14) & 0x404000000) != 0)
      {
LABEL_18:

        return;
      }

LABEL_12:
      v15 = v8[42];
      v16 = v12;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_100946FF0);
      v18 = v16;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134349056;
        *(v21 + 4) = v13;
      }

      else
      {

        v19 = v18;
      }

      v8 = &qword_100936000;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      goto LABEL_18;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10020B940(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = &qword_100936000;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(a1 + 48) + ((v7 << 10) | (16 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = v13 + 1;
    if ((v13 + 1) > 0x22)
    {
      goto LABEL_12;
    }

    if (((1 << v14) & 0x40401) == 0)
    {
      if (((1 << v14) & 0x404000000) != 0)
      {
LABEL_18:

        return;
      }

LABEL_12:
      v15 = v8[42];
      v16 = v12;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_100946FF0);
      v18 = v16;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134349056;
        *(v21 + 4) = v13;
      }

      else
      {

        v19 = v18;
      }

      v8 = &qword_100936000;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      goto LABEL_18;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10020BB60(uint64_t a1, _TtC7remindd19RDXPCStorePerformer **a2, uint64_t a3, void (*a4)(uint64_t, _TtC7remindd19RDXPCStorePerformer **))
{
  v16 = *a2;
  v7 = v16;

  a4(a1, &v16);
  v7, v8, v9, v10, v11, v12, v13, v14;
  v16 = *(a3 + 48);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

uint64_t sub_10020BC34(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t *), uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  a3(a1, &v6);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

uint64_t sub_10020BCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

uint64_t sub_10020BD74(uint64_t result, char a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 48); ; i += 2)
    {
      v6 = *i;
      v7[0] = *(i - 1);
      v7[1] = v6;
      swift_unknownObjectRetain();
      sub_100204018(v7, a2 & 1);
      if (v2)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v3)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10020BE20(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *, uint64_t, uint64_t))
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 48); ; i += 2)
    {
      v10 = *i;
      v11[0] = *(i - 1);
      v11[1] = v10;
      swift_unknownObjectRetain();
      a4(v11, a2, a3);
      if (v4)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v5)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_10020BECC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a6;
  v45 = a2;
  v46 = a5;
  v49 = a4;
  v51 = a3;
  v44 = a1;
  v6 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v6, v7);
  v8 = sub_1000F5104(&unk_10093CFD0, qword_10079AA70);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v42 - v11;
  if (qword_100935C00 != -1)
  {
    swift_once();
  }

  v13 = sub_100006654(v8, qword_100974C50);
  v52 = v9;
  v53 = v8;
  v14 = *(v9 + 16);
  v50 = v12;
  v47 = v14;
  v48 = v9 + 16;
  v14(v12, v13, v8);
  type metadata accessor for RDHashtagLabelUpdater(0);
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_started) = 0;
  *(v15 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_cloudAccountsDidChangeCancellable) = 0;
  v43 = OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_highPrioritySubscriptionTransactionRegistrar;
  type metadata accessor for RDTransactionRegistrar();
  v16 = swift_allocObject();
  v16[4] = 0;
  v16[5] = 0;
  v16[2] = 0xD000000000000040;
  v16[3] = 0x80000001007EB230;
  *&v56[0] = &_swiftEmptyArrayStorage;
  sub_10000D380(&qword_100936E60, &type metadata accessor for UnfairLock.Options, &protocol conformance descriptor for UnfairLock.Options);
  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  sub_10000CB48(&qword_100936E70, &qword_100936E68, &unk_100791AB0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v16[6] = UnfairLock.init(options:)();
  *(v15 + v43) = v16;
  v17 = OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_lowPrioritySubscriptionTransactionRegistrar;
  v18 = swift_allocObject();
  v18[4] = 0;
  v18[5] = 0;
  v18[2] = 0xD00000000000003FLL;
  v18[3] = 0x80000001007EB280;
  *&v56[0] = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  swift_allocObject();
  v18[6] = UnfairLock.init(options:)();
  *(v15 + v17) = v18;
  v19 = (v15 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumed);
  *v19 = 0xD000000000000017;
  v19[1] = 0x80000001007EB2C0;
  v20 = (v15 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumedOnLaunch);
  *v20 = 0xD00000000000001FLL;
  v20[1] = 0x80000001007EB2E0;
  v21 = (v15 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_analyticsCrashDetected);
  *v21 = 0xD000000000000035;
  v21[1] = 0x80000001007EB300;
  v22 = OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitTarget;
  *(v15 + v22) = [objc_allocWithZone(type metadata accessor for RDHashtagLabelUpdater.BabysitTarget()) init];
  v23 = (v15 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_changeTrackingClientName);
  *v23 = 0xD000000000000027;
  v23[1] = 0x80000001007EB340;
  v25 = v44;
  v24 = v45;
  v15[2] = v44;
  v15[3] = v24;
  *&v56[0] = 0xD000000000000013;
  *(&v56[0] + 1) = 0x80000001007EB370;
  memset(&v56[1], 0, 30);
  if (v46)
  {
    ObjectType = swift_getObjectType();
    v27 = v54;
    v28 = *(v54 + 8);
    v29 = v25;
    v30 = v24;
    v31 = v28(v51, v49, v56, ObjectType, v27);
  }

  else
  {
    v32 = type metadata accessor for RDDaemonController();
    v33 = objc_allocWithZone(v32);
    v34 = &v33[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
    v35 = v49;
    *v34 = v51;
    v34[1] = v35;
    v36 = &v33[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
    *(v36 + 30) = *(&v56[1] + 14);
    *(v36 + 1) = v56[1];
    *v36 = v56[0];
    *&v33[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
    v55.receiver = v33;
    v55.super_class = v32;
    v37 = v25;
    v38 = v24;
    swift_unknownObjectRetain();
    v31 = objc_msgSendSuper2(&v55, "init");
    v27 = v54;
  }

  v15[4] = v31;
  v39 = v50;
  v40 = v53;
  v47(v15 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_timeGroupingStrategy, v50, v53);
  *(v15 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate + 8) = v27;
  swift_unknownObjectWeakAssign();
  (*(v52 + 8))(v39, v40);
  *(v15 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_hashtagInsertEventCancellables) = &_swiftEmptyArrayStorage;
  return v15;
}

void sub_10020C4A4(void *a1, unint64_t a2, void *a3)
{
  v277 = a1;
  v273 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v273, v5);
  v276 = &v262 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v262 - v9;
  __chkstk_darwin(v11, v12);
  v14 = &v262 - v13;
  __chkstk_darwin(v15, v16);
  v18 = &v262 - v17;
  v19 = type metadata accessor for Date();
  v279 = *(v19 - 8);
  __chkstk_darwin(v19, v20);
  v22 = &v262 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v275 = &v262 - v25;
  __chkstk_darwin(v26, v27);
  __chkstk_darwin(v28, v29);
  v31 = &v262 - v30;
  __chkstk_darwin(v32, v33);
  v36 = &v262 - v35;
  v37 = a2 >> 62;
  if (a2 >> 62)
  {
    v271 = v22;
    v260 = v34;
    v261 = _CocoaArrayWrapper.endIndex.getter();
    v34 = v260;
    v22 = v271;
    if (!v261)
    {
      return;
    }
  }

  else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v271 = v22;
  v272 = v34;
  v278 = a3;
  if (a3 || (sub_1001FFEF8(a2), (v278 = v38) != 0))
  {
    v270 = v10;
    v274 = v36;
    v39 = a3;

    v41 = sub_1001A5FDC(v40);
    a2, v42, v43, v44, v45, v46, v47, v48;
    sub_1002030B0(v41, v18);
    v49 = v279;
    isa = v279[6].isa;
    if (isa(v18, 1, v19) == 1)
    {
      v41, v51, v52, v53, v54, v55, v56, v57;
      sub_1000050A4(v18, &unk_100938850, qword_100795AE0);
      if (qword_100935BF8 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_100006654(v58, qword_10093CC70);

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.fault.getter();
      a2, v61, v62, v63, v64, v65, v66, v67;
      if (!os_log_type_enabled(v59, v60))
      {
        goto LABEL_34;
      }

      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v280 = v69;
      *v68 = 136446210;
      if (v37)
      {
        v70 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v70 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v92 = &_swiftEmptyArrayStorage;
      if (!v70)
      {
LABEL_33:
        v105 = Array.description.getter();
        v107 = v106;
        v92, v106, v108, v109, v110, v111, v112, v113;
        v114 = sub_10000668C(v105, v107, &v280);
        v107, v115, v116, v117, v118, v119, v120, v121;
        *(v68 + 4) = v114;
        _os_log_impl(&_mh_execute_header, v59, v60, "RDHashtagLabelUpdater.associate(hashtagLabel:to:): Impossible. Should be able to get most recently created date as empty array or those with nil name should have been filtered {hashtags: %{public}s}", v68, 0xCu);
        sub_10000607C(v69);

LABEL_34:

LABEL_65:
        return;
      }

      v275 = v69;
      v276 = v68;
      LODWORD(v277) = v60;
      v279 = v59;
      v282[0] = &_swiftEmptyArrayStorage;
      sub_100026EF4(0, v70 & ~(v70 >> 63), 0);
      if ((v70 & 0x8000000000000000) == 0)
      {
        v93 = 0;
        v92 = v282[0];
        do
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v94 = *(a2 + 8 * v93 + 32);
          }

          v95 = v94;
          v96 = [v94 remObjectID];
          if (v96)
          {
            v97 = v96;
            v98 = [v96 description];

            v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v101 = v100;
          }

          else
          {

            v101 = 0xE300000000000000;
            v99 = 7104878;
          }

          v282[0] = v92;
          v103 = *v92->clientIdentity;
          v102 = *&v92->clientIdentity[8];
          if (v103 >= v102 >> 1)
          {
            sub_100026EF4((v102 > 1), v103 + 1, 1);
            v92 = v282[0];
          }

          ++v93;
          *v92->clientIdentity = v103 + 1;
          v104 = v92 + 16 * v103;
          *(v104 + 4) = v99;
          *(v104 + 5) = v101;
        }

        while (v70 != v93);
        v59 = v279;
        LOBYTE(v60) = v277;
        v69 = v275;
        v68 = v276;
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_87;
    }

    v268 = isa;
    v269 = v41;
    v71 = v49[4].isa;
    v71(v274, v18, v19);
    v72 = v277;
    if (sub_10074E984(v277))
    {
      v73 = v278;
      v74 = [v278 name];
      [v72 setName:v74];

      v75 = [v73 creationDate];
      v267 = v71;
      if (v75)
      {
        v76 = v272;
        v77 = v75;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v71(v14, v76, v19);
        v78 = v71;
        v79 = v279;
        v266 = v279[7].isa;
        v266(v14, 0, 1, v19);
        v78(v31, v14, v19);
      }

      else
      {
        v122 = v279[7].isa;
        v122(v14, 1, 1, v19);
        static Date.distantFuture.getter();
        v123 = v268(v14, 1, v19);
        v266 = v122;
        if (v123 != 1)
        {
          sub_1000050A4(v14, &unk_100938850, qword_100795AE0);
        }

        v79 = v279;
      }

      v124 = Date._bridgeToObjectiveC()().super.isa;
      (v79[1].isa)(v31, v19);
      [v72 setFirstOccurrenceCreationDate:v124];

      if (qword_100935BF8 != -1)
      {
        swift_once();
      }

      v125 = type metadata accessor for Logger();
      sub_100006654(v125, qword_10093CC70);
      v126 = v72;
      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.info.getter();

      v129 = os_log_type_enabled(v127, v128);
      v71 = v267;
      if (v129)
      {
        v264 = v128;
        v265 = v127;
        v130 = swift_slowAlloc();
        v263 = swift_slowAlloc();
        v282[0] = v263;
        v131 = v130;
        *v130 = 136315650;
        v132 = [v126 canonicalName];
        if (v132)
        {
          v133 = v132;
          v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v136 = v135;
        }

        else
        {
          v134 = 0;
          v136 = 0;
        }

        v280 = v134;
        v281 = v136;
        sub_1000F5104(&unk_100939E40, &qword_100791BD0);
        v138 = Optional.descriptionOrNil.getter();
        v140 = v139;
        v136, v139, v141, v142, v143, v144, v145, v146;
        v147 = sub_10000668C(v138, v140, v282);
        v140, v148, v149, v150, v151, v152, v153, v154;
        *(v131 + 1) = v147;
        *(v131 + 6) = 2080;
        v155 = [v126 name];
        if (v155)
        {
          v156 = v155;
          v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v159 = v158;
        }

        else
        {
          v157 = 0;
          v159 = 0;
        }

        v280 = v157;
        v281 = v159;
        v160 = Optional.descriptionOrNil.getter();
        v162 = v161;
        v159, v161, v163, v164, v165, v166, v167, v168;
        v169 = sub_10000668C(v160, v162, v282);
        v162, v170, v171, v172, v173, v174, v175, v176;
        *(v131 + 14) = v169;
        *(v131 + 11) = 2080;
        v177 = [v126 firstOccurrenceCreationDate];
        if (v177)
        {
          v178 = v270;
          v179 = v177;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v180 = 0;
          v72 = v277;
        }

        else
        {
          v180 = 1;
          v72 = v277;
          v178 = v270;
        }

        v266(v178, v180, 1, v19);
        v181 = Optional.descriptionOrNil.getter();
        v183 = v182;
        sub_1000050A4(v178, &unk_100938850, qword_100795AE0);
        v184 = sub_10000668C(v181, v183, v282);
        v183, v185, v186, v187, v188, v189, v190, v191;
        *(v131 + 3) = v184;
        v127 = v265;
        _os_log_impl(&_mh_execute_header, v265, v264, "RDHashtagLabelUpdater.associate(hashtagLabel:to:): updated hashtag label first occurrence {canonicalName: %s, new-name: %s, new-firstOccurrenceCreationDate: %s}", v131, 0x20u);
        swift_arrayDestroy();
      }
    }

    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190, &protocol conformance descriptor for NSObject);
    v192 = v269;
    v193 = Set._bridgeToObjectiveC()().super.isa;
    v192, v194, v195, v196, v197, v198, v199, v200;
    [v72 addHashtags:v193];

    v201 = [v72 recencyDate];
    if (v201)
    {
      v202 = v272;
      v203 = v201;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v204 = v276;
      v71(v276, v202, v19);
      v205 = v279;
      (v279[7].isa)(v204, 0, 1, v19);
      v206 = v275;
      v71(v275, v204, v19);
    }

    else
    {
      v205 = v279;
      v207 = v276;
      (v279[7].isa)(v276, 1, 1, v19);
      v206 = v275;
      static Date.distantPast.getter();
      if (v268(v207, 1, v19) != 1)
      {
        sub_1000050A4(v207, &unk_100938850, qword_100795AE0);
      }
    }

    v208 = v274;
    v209 = static Date.< infix(_:_:)();
    v210 = v205[1].isa;
    v210(v206, v19);
    if ((v209 & 1) == 0)
    {
      v210(v208, v19);
      goto LABEL_65;
    }

    v211 = Date._bridgeToObjectiveC()().super.isa;
    [v277 setRecencyDate:v211];

    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v212 = type metadata accessor for Logger();
    sub_100006654(v212, qword_10093CC70);
    v213 = v271;
    (v205[2].isa)(v271, v208, v19);
    v214 = Logger.logObject.getter();
    v215 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v214, v215))
    {
      v216 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v280 = v217;
      *v216 = 136315138;
      v218 = Date.description.getter();
      v220 = v219;
      v210(v213, v19);
      v221 = sub_10000668C(v218, v220, &v280);
      v220, v222, v223, v224, v225, v226, v227, v228;
      *(v216 + 4) = v221;
      _os_log_impl(&_mh_execute_header, v214, v215, "RDHashtagLabelUpdater.associate(hashtagLabel:to:): updated hashtag label recencyDate {new-recencyDate: %s}", v216, 0xCu);
      sub_10000607C(v217);

      v229 = v274;
    }

    else
    {

      v210(v213, v19);
      v229 = v208;
    }

    v210(v229, v19);
  }

  else
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_100006654(v80, qword_10093CC70);

    v279 = Logger.logObject.getter();
    v81 = static os_log_type_t.fault.getter();
    a2, v82, v83, v84, v85, v86, v87, v88;
    if (os_log_type_enabled(v279, v81))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v280 = v90;
      *v89 = 136446210;
      if (v37)
      {
        v91 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v91 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v230 = &_swiftEmptyArrayStorage;
      if (v91)
      {
        v276 = v90;
        v277 = v89;
        LODWORD(v278) = v81;
        v282[0] = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v91 & ~(v91 >> 63), 0);
        if (v91 < 0)
        {
LABEL_87:
          __break(1u);
          return;
        }

        v231 = 0;
        v230 = v282[0];
        do
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v232 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v232 = *(a2 + 8 * v231 + 32);
          }

          v233 = v232;
          v234 = [v232 remObjectID];
          if (v234)
          {
            v235 = v234;
            v236 = [v234 description];

            v237 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v239 = v238;
          }

          else
          {

            v239 = 0xE300000000000000;
            v237 = 7104878;
          }

          v282[0] = v230;
          v241 = *v230->clientIdentity;
          v240 = *&v230->clientIdentity[8];
          if (v241 >= v240 >> 1)
          {
            sub_100026EF4((v240 > 1), v241 + 1, 1);
            v230 = v282[0];
          }

          ++v231;
          *v230->clientIdentity = v241 + 1;
          v242 = v230 + 16 * v241;
          *(v242 + 4) = v237;
          *(v242 + 5) = v239;
        }

        while (v91 != v231);
        LOBYTE(v81) = v278;
        v90 = v276;
        v89 = v277;
      }

      v243 = Array.description.getter();
      v245 = v244;
      v230, v244, v246, v247, v248, v249, v250, v251;
      v252 = sub_10000668C(v243, v245, &v280);
      v245, v253, v254, v255, v256, v257, v258, v259;
      *(v89 + 1) = v252;
      _os_log_impl(&_mh_execute_header, v279, v81, "RDHashtagLabelUpdater.associate(hashtagLabel:to:): Impossible. Should be able to get first occurrence hashtag as empty array or those with nil name should have been filtered {hashtags: %{public}s}", v89, 0xCu);
      sub_10000607C(v90);
    }

    else
    {
      v137 = v279;
    }
  }
}

void *sub_10020D4F0(unint64_t a1)
{
  v2 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  __chkstk_darwin(v2 - 8, v3);
  v49 = &v47 - v4;
  v56 = _swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_27:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v52 = a1 & 0xFFFFFFFFFFFFFF8;
      v53 = a1 & 0xC000000000000001;
      v7 = _swiftEmptyDictionarySingleton;
      v48 = xmmword_1007953F0;
      v50 = v5;
      v51 = a1;
      while (1)
      {
        if (v53)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v52 + 16))
          {
            goto LABEL_24;
          }

          v9 = *(a1 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v12 = [v9 name];
        if (v12)
        {
          v13 = v12;
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          v54 = v14;
          v55 = v16;
          v17 = v49;
          static Locale.current.getter();
          v18 = type metadata accessor for Locale();
          (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
          sub_10013BCF4();
          v19 = StringProtocol.foldedStringForWriting(locale:)();
          v21 = v20;
          sub_1000050A4(v17, &unk_10093F420, &unk_100797AE0);
          v16, v22, v23, v24, v25, v26, v27, v28;
        }

        else
        {
          v19 = 0;
          v21 = 0xE000000000000000;
        }

        a1 = sub_100005F4C(v19, v21);
        v36 = v7[2];
        v37 = (v29 & 1) == 0;
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
          goto LABEL_25;
        }

        v39 = v29;
        if (v7[3] < v38)
        {
          sub_10036CE7C(v38, 1);
          v7 = v56;
          v40 = sub_100005F4C(v19, v21);
          if ((v39 & 1) != (v29 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          a1 = v40;
        }

        if (v39)
        {
          v21, v29, v30, v31, v32, v33, v34, v35;
          v8 = (v7[7] + 8 * a1);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v41 = swift_allocObject();
          *(v41 + 16) = v48;
          *(v41 + 32) = v10;
          v7[(a1 >> 6) + 8] |= 1 << a1;
          v42 = (v7[6] + 16 * a1);
          *v42 = v19;
          v42[1] = v21;
          *(v7[7] + 8 * a1) = v41;
          v43 = v7[2];
          v44 = __OFADD__(v43, 1);
          v45 = v43 + 1;
          if (v44)
          {
            goto LABEL_26;
          }

          v7[2] = v45;
        }

        a1 = v51;
        ++v6;
        if (v11 == v50)
        {
          return v7;
        }
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

void *sub_10020D874(unint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *&v2[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v2, v4);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v47 - v11;
  v60 = _swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_32:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_3:
      v14 = 0;
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      v59 = a1 & 0xC000000000000001;
      v53 = (v3 + 7);
      v54 = v2;
      v52 = (v3 + 6);
      v48 = (v3 + 1);
      v49 = (v3 + 2);
      v3 = _swiftEmptyDictionarySingleton;
      v51 = xmmword_1007953F0;
      v56 = v13;
      v57 = a1;
      while (1)
      {
        if (v59)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *(v58 + 16))
          {
            goto LABEL_29;
          }

          v17 = *(a1 + 8 * v14 + 32);
        }

        v18 = v17;
        v19 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v20 = [v17 account];
        if (!v20)
        {
          goto LABEL_18;
        }

        v21 = v20;
        v22 = [v20 identifier];

        if (v22)
        {
          v23 = v55;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v24 = 0;
        }

        else
        {
          v24 = 1;
          v23 = v55;
        }

        v25 = v54;
        (*v53)(v23, v24, 1, v54);
        sub_100031B58(v23, v12, &unk_100939D90, "8\n\r");
        if ((*v52)(v12, 1, v25))
        {
          break;
        }

        v27 = v50;
        (*v49)(v50, v12, v25);
        sub_1000050A4(v12, &unk_100939D90, "8\n\r");
        v26 = UUID.uuidString.getter();
        v2 = v28;
        (*v48)(v27, v25);
LABEL_20:
        a1 = sub_100005F4C(v26, v2);
        v36 = v3[2];
        v37 = (v29 & 1) == 0;
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
          goto LABEL_30;
        }

        v39 = v29;
        if (v3[3] < v38)
        {
          sub_10036CE7C(v38, 1);
          v3 = v60;
          v40 = sub_100005F4C(v26, v2);
          if ((v39 & 1) != (v29 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          a1 = v40;
        }

        if (v39)
        {
          v2, v29, v30, v31, v32, v33, v34, v35;
          v15 = (v3[7] + 8 * a1);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v2 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v16 = v56;
          a1 = v57;
        }

        else
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v41 = swift_allocObject();
          *(v41 + 16) = v51;
          *(v41 + 32) = v18;
          v3[(a1 >> 6) + 8] |= 1 << a1;
          v42 = (v3[6] + 16 * a1);
          *v42 = v26;
          v42[1] = v2;
          *(v3[7] + 8 * a1) = v41;
          v43 = v3[2];
          v44 = __OFADD__(v43, 1);
          v45 = v43 + 1;
          if (v44)
          {
            goto LABEL_31;
          }

          v3[2] = v45;
          v16 = v56;
          a1 = v57;
        }

        ++v14;
        if (v19 == v16)
        {
          return v3;
        }
      }

      sub_1000050A4(v12, &unk_100939D90, "8\n\r");
LABEL_18:
      v26 = 0;
      v2 = 0xE000000000000000;
      goto LABEL_20;
    }
  }

  return _swiftEmptyDictionarySingleton;
}

void *sub_10020DD3C(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  __chkstk_darwin(v2 - 8, v3);
  v64 = &v57 - v4;
  v5 = type metadata accessor for RDHashtagLabelUpdater.HashtagTombstone(0);
  __chkstk_darwin(v5, v6);
  v63 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v65 = &v57 - v11;
  v12 = _swiftEmptyDictionarySingleton;
  v68 = _swiftEmptyDictionarySingleton;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return v12;
  }

  v59 = *(v10 + 80);
  v14 = *(v10 + 72);
  v62 = (v59 + 32) & ~v59;
  v15 = a1 + v62;
  v58 = xmmword_100791300;
  v60 = v14;
  v61 = v5;
  while (1)
  {
    v17 = v65;
    sub_100211458(v15, v65);
    v18 = (v17 + *(v5 + 20));
    v19 = v18[1];
    v66 = *v18;
    v67 = v19;

    v20 = v64;
    static Locale.current.getter();
    v21 = type metadata accessor for Locale();
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
    sub_10013BCF4();
    v22 = StringProtocol.foldedStringForWriting(locale:)();
    v24 = v23;
    sub_1000050A4(v20, &unk_10093F420, &unk_100797AE0);
    v19, v25, v26, v27, v28, v29, v30, v31;
    v39 = sub_100005F4C(v22, v24);
    v40 = v12[2];
    v41 = (v32 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      break;
    }

    v43 = v32;
    if (v12[3] < v42)
    {
      sub_10036DAA0(v42, 1);
      v12 = v68;
      v44 = sub_100005F4C(v22, v24);
      if ((v43 & 1) != (v32 & 1))
      {
        goto LABEL_19;
      }

      v39 = v44;
    }

    if (v43)
    {
      v24, v32, v33, v34, v35, v36, v37, v38;
      v45 = v12[7];
      sub_1002113F4(v65, v63);
      v46 = *(v45 + 8 * v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v45 + 8 * v39) = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = sub_10036683C(0, *v46->clientIdentity + 1, 1, v46);
        *(v45 + 8 * v39) = v46;
      }

      v49 = *v46->clientIdentity;
      v48 = *&v46->clientIdentity[8];
      if (v49 >= v48 >> 1)
      {
        v46 = sub_10036683C((v48 > 1), v49 + 1, 1, v46);
        *(v45 + 8 * v39) = v46;
      }

      *v46->clientIdentity = v49 + 1;
      v16 = v60;
      sub_1002113F4(v63, v46 + v62 + v49 * v60);
    }

    else
    {
      sub_1000F5104(&qword_10093D0D0, &qword_10079AD30);
      v50 = v62;
      v51 = swift_allocObject();
      *(v51 + 16) = v58;
      sub_1002113F4(v65, v51 + v50);
      v12[(v39 >> 6) + 8] |= 1 << v39;
      v52 = (v12[6] + 16 * v39);
      *v52 = v22;
      v52[1] = v24;
      *(v12[7] + 8 * v39) = v51;
      v53 = v12[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_18;
      }

      v12[2] = v55;
      v16 = v60;
    }

    v5 = v61;
    v15 += v16;
    if (!--v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10020E138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  v6 = sub_10038D894(inited);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  sub_100271EA8(&off_1008E2498);
  v7 = sub_10003450C(&off_1008E2468);
  &off_1008E2468, v8, v9, v10, v11, v12, v13, v14;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1007953F0;
  *(v15 + 32) = swift_getKeyPath();
  sub_100026EF4(0, 1, 0);
  if ((v15 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  v48 = v7;
  v16 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v17)
  {
LABEL_12:
    _StringGuts.grow(_:)(46);
    v47._object = 0x80000001007EC120;
    v47._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v47);
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v18 = v16;
  v19 = v17;

  v21 = *_swiftEmptyArrayStorage.clientIdentity;
  v20 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v21 >= v20 >> 1)
  {
    sub_100026EF4((v20 > 1), v21 + 1, 1);
  }

  *_swiftEmptyArrayStorage.clientIdentity = v21 + 1;
  v22 = &_swiftEmptyArrayStorage + 16 * v21;
  *(v22 + 4) = v18;
  *(v22 + 5) = v19;
  swift_setDeallocating();
  swift_arrayDestroy();
  KeyPath = swift_getKeyPath();
  sub_100394808(v6);
  v25 = v24;
  v6, v26, v27, v28, v29, v30, v31, v32;
  sub_10042D838(KeyPath, v25);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*_swiftEmptyArrayStorage.clientIdentity >= *&_swiftEmptyArrayStorage.clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v33 = sub_10000C2B0();
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v34 = [objc_allocWithZone(NSFetchRequest) init];
  v35 = [swift_getObjCClassFromMetadata() entity];
  [v34 setEntity:v35];

  [v34 setAffectedStores:0];
  [v34 setPredicate:v33];

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v34 setPropertiesToFetch:isa];

  v37 = Array._bridgeToObjectiveC()().super.isa;
  [v34 setRelationshipKeyPathsForPrefetching:v37];

  v38 = NSManagedObjectContext.fetch<A>(_:)();
  v48, v39, v40, v41, v42, v43, v44, v45;

  return v38;
}

uint64_t sub_10020E944()
{
  sub_100271EA8(&off_1008E2548);
  sub_100271EA8(&off_1008E2518);
  v0 = sub_10003450C(&off_1008E24C8);
  &off_1008E24C8, v1, v2, v3, v4, v5, v6, v7;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_100026EF4(0, 1, 0);
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  v9 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v10)
  {
LABEL_12:
    _StringGuts.grow(_:)(46);
    v31._object = 0x80000001007EC120;
    v31._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v31);
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v11 = v9;
  v12 = v10;

  v14 = *_swiftEmptyArrayStorage.clientIdentity;
  v13 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v14 >= v13 >> 1)
  {
    sub_100026EF4((v13 > 1), v14 + 1, 1);
  }

  *_swiftEmptyArrayStorage.clientIdentity = v14 + 1;
  v15 = &_swiftEmptyArrayStorage + 16 * v14;
  *(v15 + 4) = v11;
  *(v15 + 5) = v12;
  swift_setDeallocating();
  swift_arrayDestroy();
  KeyPath = swift_getKeyPath();
  sub_1003EE564(KeyPath, 0);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*_swiftEmptyArrayStorage.clientIdentity >= *&_swiftEmptyArrayStorage.clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v17 = sub_10000C2B0();
  v18 = [objc_allocWithZone(NSFetchRequest) init];
  v19 = [swift_getObjCClassFromMetadata() entity];
  [v18 setEntity:v19];

  [v18 setAffectedStores:0];
  [v18 setPredicate:v17];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v18 setPropertiesToFetch:isa];

  v21 = Array._bridgeToObjectiveC()().super.isa;
  [v18 setRelationshipKeyPathsForPrefetching:v21];

  v22 = NSManagedObjectContext.fetch<A>(_:)();
  v0, v23, v24, v25, v26, v27, v28, v29;

  return v22;
}

_TtC7remindd19RDXPCStorePerformer *sub_10020EE9C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = &_swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v10 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = v6;
      sub_10020B1EC(&v8, &v9);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v5 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

uint64_t sub_10020EFEC()
{
  sub_100271EA8(&off_1008E2548);
  sub_100271EA8(&off_1008E2518);
  v0 = sub_10003450C(&off_1008E24C8);
  &off_1008E24C8, v1, v2, v3, v4, v5, v6, v7;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_100026EF4(0, 1, 0);
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_10;
    }
  }

  v9 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v10)
  {
LABEL_10:
    _StringGuts.grow(_:)(46);
    v30._object = 0x80000001007EC120;
    v30._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v30);
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v11 = v9;
  v12 = v10;

  v14 = *_swiftEmptyArrayStorage.clientIdentity;
  v13 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v14 >= v13 >> 1)
  {
    sub_100026EF4((v13 > 1), v14 + 1, 1);
  }

  *_swiftEmptyArrayStorage.clientIdentity = v14 + 1;
  v15 = &_swiftEmptyArrayStorage + 16 * v14;
  *(v15 + 4) = v11;
  *(v15 + 5) = v12;
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  swift_setDeallocating();
  swift_arrayDestroy();
  v16 = sub_100034664(1, 2);
  v17 = [objc_allocWithZone(NSFetchRequest) init];
  v18 = [swift_getObjCClassFromMetadata() entity];
  [v17 setEntity:v18];

  [v17 setAffectedStores:0];
  [v17 setPredicate:v16];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v17 setPropertiesToFetch:isa];

  v20 = Array._bridgeToObjectiveC()().super.isa;
  [v17 setRelationshipKeyPathsForPrefetching:v20];

  v21 = NSManagedObjectContext.fetch<A>(_:)();
  v0, v22, v23, v24, v25, v26, v27, v28;

  return v21;
}

void sub_10020F4D8(void *a1, void *a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  *&v6 = __chkstk_darwin(v4 - 8, v5).n128_u64[0];
  v8 = &v53 - v7;
  v9 = [a2 hashtags];
  if (v9 && ((v10 = v9, sub_1000060C8(0, &qword_10093CFE0, off_1008D4190), sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190, &protocol conformance descriptor for NSObject), v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v10, (v11 & 0xC000000000000001) == 0) ? (v19 = *(v11 + 16)) : (v19 = __CocoaSet.count.getter()), v11, v12, v13, v14, v15, v16, v17, v18, v19))
  {
    v20 = [a2 hashtags];
    if (v20 && (v21 = v20, v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v21, sub_100202C38(v22), v24 = v23, v22, v23, v25, v26, v27, v28, v29, v30, v24))
    {
      v31 = String._bridgeToObjectiveC()();
      v24, v32, v33, v34, v35, v36, v37, v38;
    }

    else
    {
      v31 = 0;
    }

    [a2 setName:v31];

    v39 = [a2 hashtags];
    if (v39)
    {
      v40 = v39;
      v41 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1002030B0(v41, v8);
      v41, v42, v43, v44, v45, v46, v47, v48;
      v49 = type metadata accessor for Date();
      v50 = *(v49 - 8);
      isa = 0;
      if ((*(v50 + 48))(v8, 1, v49) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v50 + 8))(v8, v49);
      }
    }

    else
    {
      v52 = type metadata accessor for Date();
      (*(*(v52 - 8) + 56))(v8, 1, 1, v52);
      isa = 0;
    }

    [a2 setRecencyDate:isa];
  }

  else
  {

    [a1 deleteObject:a2];
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_10020F7FC()
{
  v1 = sub_1003480AC(0, 3u);
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v2 = [objc_allocWithZone(NSFetchRequest) init];
  v3 = [swift_getObjCClassFromMetadata() entity];
  [v2 setEntity:v3];

  [v2 setAffectedStores:0];
  [v2 setPredicate:v1];

  v4 = sub_10003450C(&off_1008E2578);
  sub_100034610(&unk_1008E2598);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4, v6, v7, v8, v9, v10, v11, v12;
  v48 = v2;
  [v2 setPropertiesToFetch:isa];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  v50 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, 2, 0);
  v14 = &_swiftEmptyArrayStorage;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }
  }

  v15 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v16)
  {
    goto LABEL_20;
  }

  v0 = v15;
  v17 = v16;

  v19 = *_swiftEmptyArrayStorage.clientIdentity;
  v18 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v19 >= v18 >> 1)
  {
    sub_100026EF4((v18 > 1), v19 + 1, 1);
    v14 = v50;
  }

  *v14->clientIdentity = v19 + 1;
  v20 = v14 + 16 * v19;
  *(v20 + 4) = v0;
  *(v20 + 5) = v17;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {

LABEL_12:
    v21 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (v22)
    {
      v23 = v21;
      v24 = v22;

      v50 = v14;
      v26 = *v14->clientIdentity;
      v25 = *&v14->clientIdentity[8];
      if (v26 >= v25 >> 1)
      {
        sub_100026EF4((v25 > 1), v26 + 1, 1);
        v14 = v50;
      }

      *v14->clientIdentity = v26 + 1;
      v27 = v14 + 16 * v26;
      *(v27 + 4) = v23;
      *(v27 + 5) = v24;
      swift_setDeallocating();
      swift_arrayDestroy();
      v28 = Array._bridgeToObjectiveC()().super.isa;

      [v48 setRelationshipKeyPathsForPrefetching:v28];

      v45 = NSManagedObjectContext.fetch<A>(_:)();
      return v45;
    }

LABEL_20:
    _StringGuts.grow(_:)(46);
    v47._object = 0x80000001007EC120;
    v47._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v47);
    sub_1000F5104(&unk_10093D020, qword_1007A3230);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

LABEL_19:
  __break(1u);
  swift_once();
  v29 = type metadata accessor for Logger();
  sub_100006654(v29, qword_10093CC70);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v49 = v33;
    *v32 = 136315138;
    swift_getErrorValue();
    v34 = Error.rem_errorDescription.getter();
    v36 = v35;
    v37 = sub_10000668C(v34, v35, &v49);
    v36, v38, v39, v40, v41, v42, v43, v44;
    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "REMCDHashtagLabelRepairer: failed to fetch hashtag from database {error: %s}", v32, 0xCu);
    sub_10000607C(v33);
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_10020FD48(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v166 - v15;
  v17 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  *&v19 = __chkstk_darwin(v17 - 8, v18).n128_u64[0];
  v21 = &v166 - v20;
  v22 = [a2 name];
  if (!v22)
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100006654(v49, qword_10093CC70);
    v50 = a2;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_39;
    }

    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v170[0] = v54;
    *v53 = 136446210;
    v55 = [v50 remObjectID];
    if (v55)
    {
      v56 = v55;
      v57 = [v55 description];

      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;
    }

    else
    {
      v58 = 7104878;
      v60 = 0xE300000000000000;
    }

    v135 = sub_10000668C(v58, v60, v170);
    v60, v136, v137, v138, v139, v140, v141, v142;
    *(v53 + 4) = v135;
    v134 = "REMCDHashtagLabelRepairer: hashtag[%{public}s] without name";
    goto LABEL_38;
  }

  v167 = a1;
  v23 = v22;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v170[0] = v24;
  v170[1] = v26;
  static Locale.current.getter();
  v27 = type metadata accessor for Locale();
  (*(*(v27 - 8) + 56))(v21, 0, 1, v27);
  sub_10013BCF4();
  v28 = StringProtocol.foldedStringForWriting(locale:)();
  v30 = v29;
  sub_1000050A4(v21, &unk_10093F420, &unk_100797AE0);
  v26, v31, v32, v33, v34, v35, v36, v37;
  v38 = [a2 account];
  if (!v38)
  {
    v30, v39, v40, v41, v42, v43, v44, v45;
    goto LABEL_14;
  }

  v168 = v28;
  v46 = v38;
  v47 = [v38 identifier];

  if (v47)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  (*(v5 + 56))(v12, v48, 1, v4);
  sub_100031B58(v12, v16, &unk_100939D90, "8\n\r");
  if ((*(v5 + 48))(v16, 1, v4))
  {
    v30, v61, v62, v63, v64, v65, v66, v67;
    sub_1000050A4(v16, &unk_100939D90, "8\n\r");
LABEL_14:
    if (qword_100935BF8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

  v166 = a2;
  (*(v5 + 16))(v8, v16, v4);
  sub_1000050A4(v16, &unk_100939D90, "8\n\r");
  v76 = UUID.uuidString.getter();
  v169 = v77;
  (*(v5 + 8))(v8, v4);
  v78 = sub_10020E138(v167, v168, v30);
  v30, v79, v80, v81, v82, v83, v84, v85;
  if (!(v78 >> 62))
  {
    a2 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_20;
    }

LABEL_47:
    v78, v86, v87, v88, v89, v90, v91, v92;
    v169, v159, v160, v161, v162, v163, v164, v165;
    return sub_10020E700(v167, v166);
  }

  a2 = _CocoaArrayWrapper.endIndex.getter();
  if (!a2)
  {
    goto LABEL_47;
  }

LABEL_20:
  v93 = 0;
  v168 = v78 & 0xC000000000000001;
  while (1)
  {
    if (v168)
    {
      v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v93 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v94 = *(v78 + 8 * v93 + 32);
    }

    v95 = v94;
    v96 = (v93 + 1);
    if (__OFADD__(v93, 1))
    {
      break;
    }

    v97 = [v94 accountIdentifier];
    if (v97)
    {
      v98 = v97;
      v99 = v76;
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = v101;

      if (v100 == v99 && v102 == v169)
      {
        v169, v103, v104, v105, v106, v107, v108, v109;
        v78, v144, v145, v146, v147, v148, v149, v150;
        v158 = v102;
        goto LABEL_42;
      }

      v76 = v99;
      v111 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v102, v112, v113, v114, v115, v116, v117, v118;
      if (v111)
      {
        v169, v119, v120, v121, v122, v123, v124, v125;
        v158 = v78;
LABEL_42:
        v158, v151, v152, v153, v154, v155, v156, v157;
        return v95;
      }
    }

    ++v93;
    if (v96 == a2)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  swift_once();
LABEL_15:
  v68 = type metadata accessor for Logger();
  sub_100006654(v68, qword_10093CC70);
  v69 = a2;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v170[0] = v54;
    *v53 = 136446210;
    v70 = [v69 remObjectID];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 description];

      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;
    }

    else
    {
      v73 = 7104878;
      v75 = 0xE300000000000000;
    }

    v126 = sub_10000668C(v73, v75, v170);
    v75, v127, v128, v129, v130, v131, v132, v133;
    *(v53 + 4) = v126;
    v134 = "REMCDHashtagLabelRepairer: hashtag[%{public}s] without accountIdentifier";
LABEL_38:
    _os_log_impl(&_mh_execute_header, v51, v52, v134, v53, 0xCu);
    sub_10000607C(v54);
  }

LABEL_39:

  return 0;
}

uint64_t sub_1002104FC()
{
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v0 = [objc_allocWithZone(NSFetchRequest) init];
  v1 = [swift_getObjCClassFromMetadata() entity];
  [v0 setEntity:v1];

  [v0 setAffectedStores:0];
  [v0 setPredicate:0];
  sub_100271EA8(&off_1008E25D8);
  v2 = sub_10003450C(&off_1008E25A8);
  &off_1008E25A8, v3, v4, v5, v6, v7, v8, v9;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2, v11, v12, v13, v14, v15, v16, v17;
  [v0 setPropertiesToFetch:isa];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_100026EF4(0, 1, 0);
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_10;
    }
  }

  v19 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v20)
  {
LABEL_10:
    _StringGuts.grow(_:)(46);
    v29._object = 0x80000001007EC120;
    v29._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v29);
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21 = v19;
  v22 = v20;

  v24 = *_swiftEmptyArrayStorage.clientIdentity;
  v23 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v24 >= v23 >> 1)
  {
    sub_100026EF4((v23 > 1), v24 + 1, 1);
  }

  *_swiftEmptyArrayStorage.clientIdentity = v24 + 1;
  v25 = &_swiftEmptyArrayStorage + 16 * v24;
  *(v25 + 4) = v21;
  *(v25 + 5) = v22;
  swift_setDeallocating();
  swift_arrayDestroy();
  v26 = Array._bridgeToObjectiveC()().super.isa;

  [v0 setRelationshipKeyPathsForPrefetching:v26];

  v27 = NSManagedObjectContext.fetch<A>(_:)();
  return v27;
}

uint64_t sub_1002109B0()
{
  v0 = sub_1003480AC(1, 3u);
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v1 = [objc_allocWithZone(NSFetchRequest) init];
  v2 = [swift_getObjCClassFromMetadata() entity];
  [v1 setEntity:v2];

  [v1 setAffectedStores:0];
  [v1 setPredicate:v0];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v27 = &_swiftEmptyArrayStorage;
  sub_100010D04(0, 1, 0);
  v4 = &_swiftEmptyArrayStorage;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  v5 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v6)
  {
LABEL_18:
    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v24._object = 0x80000001007EC120;
    v24._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v24);
    sub_1000F5104(&unk_10093D020, qword_1007A3230);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v7 = v5;
  v8 = v6;
  v26 = &type metadata for String;

  *&v25 = v7;
  *(&v25 + 1) = v8;
  v10 = *_swiftEmptyArrayStorage.clientIdentity;
  v9 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v10 >= v9 >> 1)
  {
    sub_100010D04((v9 > 1), v10 + 1, 1);
    v4 = v27;
  }

  *v4->clientIdentity = v10 + 1;
  sub_100005EE0(&v25, &v4->clientIdentity[32 * v10 + 16]);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setPropertiesToFetch:isa];

  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1007953F0;
  *(v12 + 32) = swift_getKeyPath();
  v27 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, 1, 0);
  v13 = v27;
  if ((v12 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  v14 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v14;
  v17 = v15;

  v19 = *v13->clientIdentity;
  v18 = *&v13->clientIdentity[8];
  if (v19 >= v18 >> 1)
  {
    sub_100026EF4((v18 > 1), v19 + 1, 1);
    v13 = v27;
  }

  *v13->clientIdentity = v19 + 1;
  v20 = v13 + 16 * v19;
  *(v20 + 4) = v16;
  *(v20 + 5) = v17;
  swift_setDeallocating();
  swift_arrayDestroy();
  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v1 setRelationshipKeyPathsForPrefetching:v21];

  v22 = NSManagedObjectContext.fetch<A>(_:)();
  return v22;
}

uint64_t sub_100210F94()
{
  v0 = [objc_opt_self() fetchRequest];
  [v0 setPropertiesToFetch:0];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_100026EF4(0, 1, 0);
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_10;
    }
  }

  v2 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v3)
  {
LABEL_10:
    _StringGuts.grow(_:)(46);
    v12._object = 0x80000001007EC120;
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v12);
    sub_1000F5104(&unk_10093CFF0, &unk_10079AAB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v4 = v2;
  v5 = v3;

  v7 = *_swiftEmptyArrayStorage.clientIdentity;
  v6 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v7 >= v6 >> 1)
  {
    sub_100026EF4((v6 > 1), v7 + 1, 1);
  }

  *_swiftEmptyArrayStorage.clientIdentity = v7 + 1;
  v8 = &_swiftEmptyArrayStorage + 16 * v7;
  *(v8 + 4) = v4;
  *(v8 + 5) = v5;
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setRelationshipKeyPathsForPrefetching:isa];

  sub_1000060C8(0, &qword_100944260, off_1008D41D8);
  v10 = NSManagedObjectContext.fetch<A>(_:)();

  return v10;
}

uint64_t sub_1002113F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDHashtagLabelUpdater.HashtagTombstone(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100211458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDHashtagLabelUpdater.HashtagTombstone(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002114BC(uint64_t a1)
{
  v2 = type metadata accessor for RDHashtagLabelUpdater.HashtagTombstone(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_10021156C(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
  }

  return a1;
}

double sub_100211640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  v12 = *(a1 + *(a2 + 20) + 8);

  v12, v5, v6, v7, v8, v9, v10, v11;
  return result;
}

uint64_t sub_1002116B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t sub_100211740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v10 = v8[1];
  v8[1] = v9[1];

  v10, v11, v12, v13, v14, v15, v16, v17;
  return a1;
}

uint64_t sub_1002117DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_100211858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  v12 = v8[1];
  *v8 = v11;
  v8[1] = v10;
  v12, v13, v14, v15, v16, v17, v18, v19;
  return a1;
}

uint64_t sub_10021190C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1002119C8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093D280);
  v1 = sub_100006654(v0, qword_10093D280);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_100211A9C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE800000000000000;
  v3 = 0x80000001007E9F10;
  v4 = 0xE800000000000000;
  if (v1 != 3)
  {
    v4 = 0x80000001007E9F30;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1)
  {
    v2 = 0xE700000000000000;
  }

  if (v1 <= 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  String.hash(into:)();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return Hasher._finalize()();
}

double sub_100211B88(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x80000001007E9F10;
  v5 = 0xE800000000000000;
  if (v2 != 3)
  {
    v5 = 0x80000001007E9F30;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  String.hash(into:)();

  v6, v7, v8, v9, v10, v11, v12, v13;
  return result;
}

Swift::Int sub_100211C60(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0xE800000000000000;
  v4 = 0x80000001007E9F10;
  v5 = 0xE800000000000000;
  if (v2 != 3)
  {
    v5 = 0x80000001007E9F30;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (v2)
  {
    v3 = 0xE700000000000000;
  }

  if (v2 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  String.hash(into:)();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return Hasher._finalize()();
}

unint64_t sub_100211D48@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002130F4(*a1);
  *a2 = result;
  return result;
}

void sub_100211D78(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x44497463656A626FLL;
  v5 = 0x80000001007E9F10;
  v6 = 0xD000000000000010;
  v7 = 0xE800000000000000;
  v8 = 0x4449556D72616C61;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001007E9F30;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x72656767697274;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100211E30@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1002130F4(a1);
  *a2 = result;
  return result;
}

unint64_t sub_100211E58()
{
  v1 = *v0;
  v2 = 0x44497463656A626FLL;
  v3 = 0xD000000000000010;
  v4 = 0x4449556D72616C61;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72656767697274;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100211EFC(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x7265646E696D6572;
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
    v10 = 0xEA00000000004449;
  }

  if (*a2)
  {
    v11 = 0x7265646E696D6572;
  }

  else
  {
    v11 = 0x49746E756F636361;
  }

  if (*a2)
  {
    v12 = 0xEA00000000004449;
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

Swift::Int sub_100211FAC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xEA00000000004449;
  }

  else
  {
    v2 = 0xE900000000000044;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}