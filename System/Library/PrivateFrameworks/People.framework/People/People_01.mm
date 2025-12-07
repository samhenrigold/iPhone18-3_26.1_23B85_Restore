uint64_t sub_100018234(unint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v59 = a3;
  v58 = 0;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100018924(a1, BMScreenTimeRequestEvent_ptr);
  if (!v13)
  {
    static PeopleLogger.daemon.getter();

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v72[0] = v50;
      *v49 = 136315138;
      type metadata accessor for StatusType();
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;

      v54 = sub_10002580C(v51, v53, v72);

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "%s event type array not [EventType]!", v49, 0xCu);
      sub_100003938(v50);
    }

    else
    {
    }

    return (*(v10 + 8))(v12, v9);
  }

  v14 = v13;
  v15 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v55 = a5;
    v56 = a4;
    v57 = a2;
    v17 = &_swiftEmptyDictionarySingleton;
    if (i)
    {
      a2 = 0;
      v62 = v14;
      v63 = v14 & 0xC000000000000001;
      v61 = v15;
      v60 = i;
      do
      {
        if (v63)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a2 >= *(v15 + 16))
          {
            goto LABEL_41;
          }

          v18 = *(v14 + 8 * a2 + 32);
        }

        v19 = v18;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_40;
        }

        v64 = a2 + 1;
        v15 = sub_100010734(0, &qword_100062D78, BMScreenTimeRequestEvent_ptr);
        v72[3] = v15;
        v72[4] = &protocol witness table for BMScreenTimeRequestEvent;
        v72[0] = v19;
        sub_100005E78(v72, v15);
        a5 = v19;
        v20 = BMScreenTimeRequestEvent.requestId.getter();
        v22 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = &protocol witness table for BMScreenTimeRequestEvent;
        v71 = v17;
        v69 = v15;
        *&v68 = a5;
        v14 = a5;
        a4 = v17;
        v25 = sub_100005EBC(v20, v22);
        v26 = v17[2];
        v27 = (v24 & 1) == 0;
        v28 = v26 + v27;
        if (__OFADD__(v26, v27))
        {
          goto LABEL_42;
        }

        a5 = v24;
        if (v17[3] >= v28)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v17 = v71;
            if (v24)
            {
              goto LABEL_6;
            }
          }

          else
          {
            sub_100006EF4();
            v17 = v71;
            if (a5)
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
          sub_100006474(v28, isUniquelyReferenced_nonNull_native);
          v29 = sub_100005EBC(v20, v22);
          if ((a5 & 1) != (v30 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            goto LABEL_46;
          }

          v25 = v29;
          v17 = v71;
          if (a5)
          {
LABEL_6:
            a4 = (v17[7] + 40 * v25);
            sub_100003938(a4);
            sub_10000784C(&v68, a4);

            goto LABEL_7;
          }
        }

        a4 = v69;
        v31 = sub_1000106B4(&v68, v69);
        __chkstk_darwin(v31);
        a5 = (&v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v33 + 16))(a5);
        v34 = *a5;
        v66 = v15;
        v67 = &protocol witness table for BMScreenTimeRequestEvent;
        *&v65 = v34;
        v17[(v25 >> 6) + 8] |= 1 << v25;
        v35 = (v17[6] + 16 * v25);
        *v35 = v20;
        v35[1] = v22;
        sub_10000784C(&v65, v17[7] + 40 * v25);
        v36 = v17[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_43;
        }

        v17[2] = v38;
        sub_100003938(&v68);
LABEL_7:
        sub_100003938(v72);

        ++a2;
        v15 = v61;
        v14 = v62;
      }

      while (v64 != v60);
    }

    *&v68 = &_swiftEmptyDictionarySingleton;
    v39 = 1 << *(v17 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & v17[8];
    a4 = ((v39 + 63) >> 6);

    v42 = 0;
    v15 = 40;
    v43 = v57;
    v44 = v59;
    a5 = v58;
    if (v41)
    {
      break;
    }

LABEL_28:
    while (1)
    {
      v14 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v14 >= a4)
      {

        v45 = v68;
        type metadata accessor for PeopleAnalytics();
        static PeopleAnalytics.eventsCollected(statusType:eventCount:)();
        (v56)(v45, 0);
      }

      v41 = v17[v14 + 8];
      ++v42;
      if (v41)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  while (1)
  {
    v14 = v42;
LABEL_31:
    sub_1000077E8(v17[7] + 40 * (__clz(__rbit64(v41)) | (v14 << 6)), v72);
    sub_1000199D8(&v68, v72, v43, v44);
    if (a5)
    {
      break;
    }

    v41 &= v41 - 1;
    sub_100003938(v72);
    v42 = v14;
    if (!v41)
    {
      goto LABEL_28;
    }
  }

LABEL_46:

  sub_100003938(v72);

  __break(1u);
  return result;
}

void *sub_100018924(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v4;
      }

      while (v5 != v3);
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100018A98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v92 = a1;
  v7 = type metadata accessor for BMAskToBuyEvent.ProductType();
  __chkstk_darwin(v7 - 8);
  v91[1] = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for StatusType();
  v97 = *(v105 - 8);
  __chkstk_darwin(v105);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Date();
  v98 = *(v99 - 8);
  v10 = __chkstk_darwin(v99);
  v94 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v102 = v91 - v12;
  v13 = sub_100005E30(&qword_100062D48, &qword_10004DF98);
  __chkstk_darwin(v13 - 8);
  v15 = v91 - v14;
  v16 = type metadata accessor for RequestStatus();
  v17 = *(v16 - 8);
  v103 = v16;
  v104 = v17;
  v18 = __chkstk_darwin(v16);
  v93 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v101 = v91 - v20;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v106 = v21;
  v107 = v22;
  v23 = __chkstk_darwin(v21);
  v95 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v100 = v91 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = v91 - v28;
  __chkstk_darwin(v27);
  v31 = v91 - v30;
  sub_100005E78(a2, a2[3]);
  v32 = dispatch thunk of FamilyRequestEvent.dsid.getter();
  if (v33)
  {
    static PeopleLogger.daemon.getter();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v113 = v37;
      *v36 = 136315138;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;

      v41 = sub_10002580C(v38, v40, &v113);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s invalid dsid", v36, 0xCu);
      sub_100003938(v37);
    }

    else
    {
    }

    return (*(v107 + 8))(v31, v106);
  }

  if (!*(a4 + 16) || (v42 = sub_100005F78(v32), (v43 & 1) == 0))
  {
    static PeopleLogger.daemon.getter();

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v113 = v61;
      *v60 = 136315138;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;

      v65 = sub_10002580C(v62, v64, &v113);

      *(v60 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v58, v59, "%s no family member found", v60, 0xCu);
      sub_100003938(v61);
    }

    else
    {
    }

    return (*(v107 + 8))(v29, v106);
  }

  v44 = *(*(a4 + 56) + 8 * v42);
  v45 = [v44 contactsIncludingImage:0];
  sub_100010734(0, &qword_100062C10, CNContact_ptr);
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v46 >> 62)
  {
    v83 = _CocoaArrayWrapper.endIndex.getter();
    v47 = v103;
    if (v83)
    {
      goto LABEL_8;
    }

LABEL_27:

    v49 = v100;
    static PeopleLogger.daemon.getter();

    v50 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v113 = v86;
      *v85 = 136315138;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;

      v90 = sub_10002580C(v87, v89, &v113);

      *(v85 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v50, v84, "%s no contacts found", v85, 0xCu);
      sub_100003938(v86);

      goto LABEL_29;
    }

LABEL_30:

    goto LABEL_31;
  }

  v47 = v103;
  if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

LABEL_8:
  sub_100005E78(a2, a2[3]);
  dispatch thunk of FamilyRequestEvent.requestStatus.getter();
  v48 = v104;
  if ((*(v104 + 48))(v15, 1, v47) == 1)
  {

    sub_100007DB0(v15, &qword_100062D48, &qword_10004DF98);
    v49 = v95;
    static PeopleLogger.daemon.getter();

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v113 = v53;
      *v52 = 136315138;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;

      v57 = sub_10002580C(v54, v56, &v113);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "%s invalid status for event", v52, 0xCu);
      sub_100003938(v53);

LABEL_29:

LABEL_31:
      return (*(v107 + 8))(v49, v106);
    }

    goto LABEL_30;
  }

  v106 = v44;
  v107 = v46;
  v67 = v101;
  (*(v48 + 32))(v101, v15, v47);
  sub_100005E78(a2, a2[3]);
  v68 = v48;
  dispatch thunk of FamilyRequestEvent.time.getter();
  v69 = v102;
  Date.init(timeIntervalSinceReferenceDate:)();
  v115 = 0;
  v113 = 0u;
  v114 = 0u;
  v70 = v97;
  v71 = a3 + qword_100065530;
  v72 = v96;
  v73 = v105;
  (*(v97 + 16))(v96, v71, v105);
  v74 = (*(v70 + 88))(v72, v73);
  if (v74 == enum case for StatusType.askToBuyRequest(_:))
  {
    (*(v68 + 16))(v93, v67, v47);
    v75 = v98;
    v76 = v69;
    v77 = v99;
    (*(v98 + 16))(v94, v76, v99);
    sub_1000077E8(a2, &v110);
    sub_100005E30(&qword_100062D60, &qword_10004DFA8);
    sub_100010734(0, &qword_100062D40, BMAskToBuyEvent_ptr);
    swift_dynamicCast();
    v78 = v108;
    BMAskToBuyEvent.productFromRequest()();

    type metadata accessor for PeopleFeatureFlags();
    static PeopleFeatureFlags.shared.getter();
    *(&v111 + 1) = type metadata accessor for AskToBuyRequestPersonStatus();
    v112 = sub_10001764C(&qword_100062D68, &type metadata accessor for AskToBuyRequestPersonStatus, &protocol conformance descriptor for AskToBuyRequestPersonStatus);
    sub_100007784(&v110);
    AskToBuyRequestPersonStatus.init(requestState:date:productType:featureFlags:)();
    sub_100007DB0(&v113, &qword_100062D50, &qword_10004DFA0);
    v113 = v110;
    v114 = v111;
    v115 = v112;
    v79 = v67;
  }

  else
  {
    v77 = v99;
    v75 = v98;
    if (v74 == enum case for StatusType.screenTimeRequest(_:))
    {
      v79 = v101;
      (*(v104 + 16))(v93, v101, v47);
      (*(v75 + 16))(v94, v102, v77);
      type metadata accessor for PeopleFeatureFlags();
      static PeopleFeatureFlags.shared.getter();
      *(&v111 + 1) = type metadata accessor for ScreenTimeRequestPersonStatus();
      v112 = sub_10001764C(&qword_100062D58, &type metadata accessor for ScreenTimeRequestPersonStatus, &protocol conformance descriptor for ScreenTimeRequestPersonStatus);
      sub_100007784(&v110);
      ScreenTimeRequestPersonStatus.init(requestState:date:featureFlags:)();
      sub_100007DB0(&v113, &qword_100062D50, &qword_10004DFA0);
      v113 = v110;
      v114 = v111;
      v115 = v112;
    }

    else
    {
      (*(v70 + 8))(v72, v73);
      v79 = v101;
    }
  }

  v81 = v106;
  v80 = v107;
  sub_10001E738(&v113, &v108, &qword_100062D50, &qword_10004DFA0);
  if (v109)
  {
    v82 = sub_10000784C(&v108, &v110);
    __chkstk_darwin(v82);
    v91[-2] = v92;
    v91[-1] = &v110;
    sub_1000155A4(sub_10001E4E8, &v91[-4], v80);

    sub_100007DB0(&v113, &qword_100062D50, &qword_10004DFA0);
    (*(v75 + 8))(v102, v77);
    (*(v104 + 8))(v79, v47);
    return sub_100003938(&v110);
  }

  else
  {

    sub_100007DB0(&v113, &qword_100062D50, &qword_10004DFA0);
    (*(v75 + 8))(v102, v77);
    (*(v104 + 8))(v79, v47);
    return sub_100007DB0(&v108, &qword_100062D50, &qword_10004DFA0);
  }
}

uint64_t sub_1000199D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v92 = a1;
  v7 = type metadata accessor for BMAskToBuyEvent.ProductType();
  __chkstk_darwin(v7 - 8);
  v91[1] = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for StatusType();
  v97 = *(v105 - 8);
  __chkstk_darwin(v105);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Date();
  v98 = *(v99 - 8);
  v10 = __chkstk_darwin(v99);
  v94 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v102 = v91 - v12;
  v13 = sub_100005E30(&qword_100062D48, &qword_10004DF98);
  __chkstk_darwin(v13 - 8);
  v15 = v91 - v14;
  v16 = type metadata accessor for RequestStatus();
  v17 = *(v16 - 8);
  v103 = v16;
  v104 = v17;
  v18 = __chkstk_darwin(v16);
  v93 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v101 = v91 - v20;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v106 = v21;
  v107 = v22;
  v23 = __chkstk_darwin(v21);
  v95 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v100 = v91 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = v91 - v28;
  __chkstk_darwin(v27);
  v31 = v91 - v30;
  sub_100005E78(a2, a2[3]);
  v32 = dispatch thunk of FamilyRequestEvent.dsid.getter();
  if (v33)
  {
    static PeopleLogger.daemon.getter();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v113 = v37;
      *v36 = 136315138;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;

      v41 = sub_10002580C(v38, v40, &v113);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s invalid dsid", v36, 0xCu);
      sub_100003938(v37);
    }

    else
    {
    }

    return (*(v107 + 8))(v31, v106);
  }

  if (!*(a4 + 16) || (v42 = sub_100005F78(v32), (v43 & 1) == 0))
  {
    static PeopleLogger.daemon.getter();

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v113 = v61;
      *v60 = 136315138;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;

      v65 = sub_10002580C(v62, v64, &v113);

      *(v60 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v58, v59, "%s no family member found", v60, 0xCu);
      sub_100003938(v61);
    }

    else
    {
    }

    return (*(v107 + 8))(v29, v106);
  }

  v44 = *(*(a4 + 56) + 8 * v42);
  v45 = [v44 contactsIncludingImage:0];
  sub_100010734(0, &qword_100062C10, CNContact_ptr);
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v46 >> 62)
  {
    v83 = _CocoaArrayWrapper.endIndex.getter();
    v47 = v103;
    if (v83)
    {
      goto LABEL_8;
    }

LABEL_27:

    v49 = v100;
    static PeopleLogger.daemon.getter();

    v50 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v113 = v86;
      *v85 = 136315138;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;

      v90 = sub_10002580C(v87, v89, &v113);

      *(v85 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v50, v84, "%s no contacts found", v85, 0xCu);
      sub_100003938(v86);

      goto LABEL_29;
    }

LABEL_30:

    goto LABEL_31;
  }

  v47 = v103;
  if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

LABEL_8:
  sub_100005E78(a2, a2[3]);
  dispatch thunk of FamilyRequestEvent.requestStatus.getter();
  v48 = v104;
  if ((*(v104 + 48))(v15, 1, v47) == 1)
  {

    sub_100007DB0(v15, &qword_100062D48, &qword_10004DF98);
    v49 = v95;
    static PeopleLogger.daemon.getter();

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v113 = v53;
      *v52 = 136315138;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;

      v57 = sub_10002580C(v54, v56, &v113);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "%s invalid status for event", v52, 0xCu);
      sub_100003938(v53);

LABEL_29:

LABEL_31:
      return (*(v107 + 8))(v49, v106);
    }

    goto LABEL_30;
  }

  v106 = v44;
  v107 = v46;
  v67 = v101;
  (*(v48 + 32))(v101, v15, v47);
  sub_100005E78(a2, a2[3]);
  v68 = v48;
  dispatch thunk of FamilyRequestEvent.time.getter();
  v69 = v102;
  Date.init(timeIntervalSinceReferenceDate:)();
  v115 = 0;
  v113 = 0u;
  v114 = 0u;
  v70 = v97;
  v71 = a3 + qword_100065530;
  v72 = v96;
  v73 = v105;
  (*(v97 + 16))(v96, v71, v105);
  v74 = (*(v70 + 88))(v72, v73);
  if (v74 == enum case for StatusType.askToBuyRequest(_:))
  {
    (*(v68 + 16))(v93, v67, v47);
    v75 = v98;
    v76 = v69;
    v77 = v99;
    (*(v98 + 16))(v94, v76, v99);
    sub_1000077E8(a2, &v110);
    sub_100005E30(&qword_100062D60, &qword_10004DFA8);
    sub_100010734(0, &qword_100062D40, BMAskToBuyEvent_ptr);
    swift_dynamicCast();
    v78 = v108;
    BMAskToBuyEvent.productFromRequest()();

    type metadata accessor for PeopleFeatureFlags();
    static PeopleFeatureFlags.shared.getter();
    *(&v111 + 1) = type metadata accessor for AskToBuyRequestPersonStatus();
    v112 = sub_10001764C(&qword_100062D68, &type metadata accessor for AskToBuyRequestPersonStatus, &protocol conformance descriptor for AskToBuyRequestPersonStatus);
    sub_100007784(&v110);
    AskToBuyRequestPersonStatus.init(requestState:date:productType:featureFlags:)();
    sub_100007DB0(&v113, &qword_100062D50, &qword_10004DFA0);
    v113 = v110;
    v114 = v111;
    v115 = v112;
    v79 = v67;
  }

  else
  {
    v77 = v99;
    v75 = v98;
    if (v74 == enum case for StatusType.screenTimeRequest(_:))
    {
      v79 = v101;
      (*(v104 + 16))(v93, v101, v47);
      (*(v75 + 16))(v94, v102, v77);
      type metadata accessor for PeopleFeatureFlags();
      static PeopleFeatureFlags.shared.getter();
      *(&v111 + 1) = type metadata accessor for ScreenTimeRequestPersonStatus();
      v112 = sub_10001764C(&qword_100062D58, &type metadata accessor for ScreenTimeRequestPersonStatus, &protocol conformance descriptor for ScreenTimeRequestPersonStatus);
      sub_100007784(&v110);
      ScreenTimeRequestPersonStatus.init(requestState:date:featureFlags:)();
      sub_100007DB0(&v113, &qword_100062D50, &qword_10004DFA0);
      v113 = v110;
      v114 = v111;
      v115 = v112;
    }

    else
    {
      (*(v70 + 8))(v72, v73);
      v79 = v101;
    }
  }

  v81 = v106;
  v80 = v107;
  sub_10001E738(&v113, &v108, &qword_100062D50, &qword_10004DFA0);
  if (v109)
  {
    v82 = sub_10000784C(&v108, &v110);
    __chkstk_darwin(v82);
    v91[-2] = v92;
    v91[-1] = &v110;
    sub_1000155A4(sub_10001EC78, &v91[-4], v80);

    sub_100007DB0(&v113, &qword_100062D50, &qword_10004DFA0);
    (*(v75 + 8))(v102, v77);
    (*(v104 + 8))(v79, v47);
    return sub_100003938(&v110);
  }

  else
  {

    sub_100007DB0(&v113, &qword_100062D50, &qword_10004DFA0);
    (*(v75 + 8))(v102, v77);
    (*(v104 + 8))(v79, v47);
    return sub_100007DB0(&v108, &qword_100062D50, &qword_10004DFA0);
  }
}

void sub_10001A918(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5)
{
  v7 = a2;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    static PeopleLogger.daemon.getter();

    sub_100014AA4(a1, 1);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    sub_100014AB8(a1, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = a4;
      v16 = v15;
      v24 = swift_slowAlloc();
      v27 = v24;
      *v16 = 136315394;
      type metadata accessor for StatusType();
      v26 = a5;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;

      v20 = sub_10002580C(v17, v19, &v27);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = sub_10002580C(v21, v22, &v27);

      *(v16 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s family lookup error: %s", v16, 0x16u);
      swift_arrayDestroy();

      a4 = v25;
    }

    else
    {
    }

    (*(v10 + 8))(v12, v9);
    a4(a1, 1);
  }

  else
  {
    sub_100017718(a1, a4, a5);
  }
}

void sub_10001ABFC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5)
{
  v7 = a2;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    static PeopleLogger.daemon.getter();

    sub_100014AA4(a1, 1);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    sub_100014AB8(a1, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = a4;
      v16 = v15;
      v24 = swift_slowAlloc();
      v27 = v24;
      *v16 = 136315394;
      type metadata accessor for StatusType();
      v26 = a5;
      sub_10001764C(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;

      v20 = sub_10002580C(v17, v19, &v27);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = sub_10002580C(v21, v22, &v27);

      *(v16 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s family lookup error: %s", v16, 0x16u);
      swift_arrayDestroy();

      a4 = v25;
    }

    else
    {
    }

    (*(v10 + 8))(v12, v9);
    a4(a1, 1);
  }

  else
  {
    sub_100017934(a1, a4, a5);
  }
}

uint64_t sub_10001AEE0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001AFD8;

  return v6(a1);
}

uint64_t sub_10001AFD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001B0D0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10001B17C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10001C054(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10001B2CC(uint64_t a1, void *a2, int a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v23 = a3;
  Hasher._combine(_:)(a3 & 1);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_100010734(0, &qword_100062D80, NSObject_ptr);
    while (1)
    {
      v11 = *(v6 + 48) + 16 * v9;
      v12 = *(v11 + 8);
      v13 = *v11;
      v14 = static NSObject.== infix(_:_:)();

      if ((v14 & 1) != 0 && ((v12 ^ v23) & 1) == 0)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v15 = *(v6 + 48) + 16 * v9;
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    *a1 = v16;
    *(a1 + 8) = v15;
    v17 = v16;
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v21;
    v20 = a2;
    sub_10001C1D4(v20, v23 & 1, v9, isUniquelyReferenced_nonNull_native);
    *v21 = v24;
    *a1 = v20;
    *(a1 + 8) = v23 & 1;
    return 1;
  }
}

uint64_t sub_10001B474(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100010734(0, &qword_100062D90, EKEvent_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10001B6BC(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_10001BDB0(v20 + 1, &qword_100062DA0, &unk_10004DFF0);
    }

    v18 = v8;
    sub_10001BFD0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100010734(0, &qword_100062D90, EKEvent_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_10001C38C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_10001B6BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100005E30(&qword_100062DA0, &unk_10004DFF0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100010734(0, &qword_100062D90, EKEvent_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10001BDB0(v9 + 1, &qword_100062DA0, &unk_10004DFF0);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_10001B8CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100005E30(&qword_100062D70, &qword_10004DFB0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_10001BB40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100005E30(&qword_100062D88, &unk_10004ED90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      Hasher.init(_seed:)();
      NSObject.hash(into:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_10001BDB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_100005E30(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_10001BFD0(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

Swift::Int sub_10001C054(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10001B8CC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10001C50C();
      goto LABEL_16;
    }

    sub_10001C91C(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10001C1D4(uint64_t a1, int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a4)
  {
    sub_10001BB40(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_10001C668();
      goto LABEL_14;
    }

    sub_10001CB54(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(a2 & 1);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    sub_100010734(0, &qword_100062D80, NSObject_ptr);
    while (1)
    {
      v14 = *(v10 + 48) + 16 * a3;
      v15 = *(v14 + 8);
      v16 = *v14;
      v17 = static NSObject.== infix(_:_:)();

      if ((v17 & 1) != 0 && ((v15 ^ a2) & 1) == 0)
      {
        break;
      }

      a3 = (a3 + 1) & v13;
      if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_14:
  v18 = *v23;
  *(*v23 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = *(v18 + 48) + 16 * a3;
  *v19 = a1;
  *(v19 + 8) = a2 & 1;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }
}

void sub_10001C38C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001BDB0(v6 + 1, &qword_100062DA0, &unk_10004DFF0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10001C7CC();
      goto LABEL_12;
    }

    sub_10001CD9C(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100010734(0, &qword_100062D90, EKEvent_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_10001C50C()
{
  v1 = v0;
  sub_100005E30(&qword_100062D70, &qword_10004DFB0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10001C668()
{
  v1 = v0;
  sub_100005E30(&qword_100062D88, &unk_10004ED90);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(v4 + 48) + v17;
        *v20 = v19;
        *(v20 + 8) = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10001C7CC()
{
  v1 = v0;
  sub_100005E30(&qword_100062DA0, &unk_10004DFF0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_10001C91C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100005E30(&qword_100062D70, &qword_10004DFB0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_10001CB54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100005E30(&qword_100062D88, &unk_10004ED90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v28 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v3 + 48) + 16 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      Hasher.init(_seed:)();
      v20 = v18;
      NSObject.hash(into:)();
      Hasher._combine(_:)(v19);
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 16 * v12;
      *v13 = v20;
      *(v13 + 8) = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_10001CD9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100005E30(&qword_100062DA0, &unk_10004DFF0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10001CFB0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for StatusType();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  sub_10001764C(&qword_1000629C0, type metadata accessor for DNDStatusSource, &unk_10004D8E0);
  static PeopleLogger.daemon.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v43 = v9;
  v44 = v8;
  if (v16)
  {
    v17 = swift_slowAlloc();
    *&v46[0] = swift_slowAlloc();
    *v17 = 136315394;
    swift_getObjectType();
    v45 = a1;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = sub_10002580C(v18, v19, v46);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v21 = Array.description.getter();
    v23 = sub_10002580C(v21, v22, v46);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "status source: %s has updated statuses for contacts: %s", v17, 0x16u);
    swift_arrayDestroy();
    v9 = v43;

    v8 = v44;
  }

  v24 = *(v9 + 8);
  result = v24(v13, v8);
  if (*(a2 + 16))
  {
    sub_100005E78(a3 + 4, a3[7]);
    type metadata accessor for WidgetConfigurationReader();
    sub_10000D0E8();
    sub_1000077E8((a3 + 4), v46);
    v26 = swift_allocObject();
    sub_10000784C(v46, v26 + 16);
    *(v26 + 56) = a2;
    *(v26 + 64) = a3;

    dispatch thunk of Promise.then<A>(_:)();

    dispatch thunk of Promise.catch<A>(_:)();

    v27 = v42;
    static PeopleLogger.daemon.getter();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v46[0] = v31;
      *v30 = 136315138;
      v32 = Array.description.getter();
      v34 = sub_10002580C(v32, v33, v46);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Will attempt suggesting widgets for contacts: %s", v30, 0xCu);
      sub_100003938(v31);

      v35 = v42;
    }

    else
    {

      v35 = v27;
    }

    v24(v35, v44);
    sub_100005E78(a3 + 14, a3[17]);
    v37 = v39;
    v36 = v40;
    v38 = v41;
    (*(v40 + 104))(v39, enum case for StatusType.dndAvailability(_:), v41);
    sub_100048ED4(v37, a2);
    (*(v36 + 8))(v37, v38);
    dispatch thunk of Promise.catch<A>(_:)();
  }

  return result;
}

uint64_t sub_10001D5A0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v47 = a7;
  v44[1] = a5;
  v44[2] = a6;
  v10 = type metadata accessor for StatusType();
  v48 = *(v10 - 8);
  v49 = v10;
  __chkstk_darwin(v10);
  v46 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v50 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v44 - v16;
  static PeopleLogger.daemon.getter();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = v12;
    v21 = v20;
    *&v51[0] = swift_slowAlloc();
    *v21 = 136315394;
    v22 = a4();
    v24 = sub_10002580C(v22, v23, v51);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    v25 = Array.description.getter();
    v27 = sub_10002580C(v25, v26, v51);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "status source: %s has updated statuses for contacts: %s", v21, 0x16u);
    swift_arrayDestroy();

    v12 = v45;
  }

  v28 = *(v13 + 8);
  result = v28(v17, v12);
  if (*(a2 + 16))
  {
    sub_100005E78(a3 + 4, a3[7]);
    type metadata accessor for WidgetConfigurationReader();
    sub_10000D0E8();
    sub_1000077E8((a3 + 4), v51);
    v30 = swift_allocObject();
    sub_10000784C(v51, v30 + 16);
    *(v30 + 56) = a2;
    *(v30 + 64) = a3;

    dispatch thunk of Promise.then<A>(_:)();

    dispatch thunk of Promise.catch<A>(_:)();

    v31 = v50;
    static PeopleLogger.daemon.getter();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v51[0] = v35;
      *v34 = 136315138;
      v36 = Array.description.getter();
      v45 = v12;
      v38 = sub_10002580C(v36, v37, v51);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Will attempt suggesting widgets for contacts: %s", v34, 0xCu);
      sub_100003938(v35);

      v39 = v50;
      v40 = v45;
    }

    else
    {

      v39 = v31;
      v40 = v12;
    }

    v28(v39, v40);
    sub_100005E78(a3 + 14, a3[17]);
    v41 = v48;
    v42 = v46;
    v43 = v49;
    (*(v48 + 104))(v46, *v47, v49);
    sub_100048ED4(v42, a2);
    (*(v41 + 8))(v42, v43);
    dispatch thunk of Promise.catch<A>(_:)();
  }

  return result;
}

uint64_t sub_10001DB84(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for StatusType();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  sub_10001764C(&qword_1000629B8, type metadata accessor for LocationStatusEventListener, &unk_10004ED08);
  static PeopleLogger.daemon.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v43 = v9;
  v44 = v8;
  if (v16)
  {
    v17 = swift_slowAlloc();
    *&v46[0] = swift_slowAlloc();
    *v17 = 136315394;
    swift_getObjectType();
    v45 = a1;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = sub_10002580C(v18, v19, v46);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v21 = Array.description.getter();
    v23 = sub_10002580C(v21, v22, v46);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "status source: %s has updated statuses for contacts: %s", v17, 0x16u);
    swift_arrayDestroy();
    v9 = v43;

    v8 = v44;
  }

  v24 = *(v9 + 8);
  result = v24(v13, v8);
  if (*(a2 + 16))
  {
    sub_100005E78(a3 + 4, a3[7]);
    type metadata accessor for WidgetConfigurationReader();
    sub_10000D0E8();
    sub_1000077E8((a3 + 4), v46);
    v26 = swift_allocObject();
    sub_10000784C(v46, v26 + 16);
    *(v26 + 56) = a2;
    *(v26 + 64) = a3;

    dispatch thunk of Promise.then<A>(_:)();

    dispatch thunk of Promise.catch<A>(_:)();

    v27 = v42;
    static PeopleLogger.daemon.getter();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v46[0] = v31;
      *v30 = 136315138;
      v32 = Array.description.getter();
      v34 = sub_10002580C(v32, v33, v46);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Will attempt suggesting widgets for contacts: %s", v30, 0xCu);
      sub_100003938(v31);

      v35 = v42;
    }

    else
    {

      v35 = v27;
    }

    v24(v35, v44);
    sub_100005E78(a3 + 14, a3[17]);
    v37 = v39;
    v36 = v40;
    v38 = v41;
    (*(v40 + 104))(v39, enum case for StatusType.location(_:), v41);
    sub_100048ED4(v37, a2);
    (*(v36 + 8))(v37, v38);
    dispatch thunk of Promise.catch<A>(_:)();
  }

  return result;
}

uint64_t sub_10001E174(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10001E1CC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10001E2C0;

  return v5(v2 + 16);
}

uint64_t sub_10001E2C0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10001E3F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10001B17C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10001E488()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001E504()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E55C(void (*a1)(void))
{

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10001E5C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E600()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001E654()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E68C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007CBC;

  return sub_10001616C();
}

uint64_t sub_10001E738(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005E30(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001E7A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001ECE4;

  return sub_10001AEE0(a1, v4);
}

uint64_t sub_10001E87C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001E8D0()
{
  sub_100003938((v0 + 16));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001E918(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100010734(0, &qword_100062D90, EKEvent_ptr);
    sub_10001EA58();
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10001B474(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_10001EA58()
{
  result = qword_100062D98;
  if (!qword_100062D98)
  {
    sub_100010734(255, &qword_100062D90, EKEvent_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062D98);
  }

  return result;
}

uint64_t sub_10001EAC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001ECE4;

  return sub_10001E1CC(a1, v4);
}

uint64_t sub_10001EB78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007CBC;

  return sub_10001E1CC(a1, v4);
}

uint64_t sub_10001EC30()
{

  sub_100003938((v0 + 32));

  return _swift_deallocObject(v0, 73, 7);
}

id sub_10001ECE8()
{
  result = [objc_allocWithZone(type metadata accessor for XPCListener()) init];
  qword_100065528 = result;
  return result;
}

id sub_10001ED18()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7peopled11XPCListener__machServiceName];
  *v2 = 0xD000000000000016;
  *(v2 + 1) = 0x8000000100050830;
  v3 = OBJC_IVAR____TtC7peopled11XPCListener_eventObserver;
  v4 = type metadata accessor for XPCStreamHandler();
  v5 = swift_allocObject();
  v6 = type metadata accessor for PeopleTimelineControllerFactory();
  swift_allocObject();

  v7 = PeopleTimelineControllerFactory.init()();
  type metadata accessor for PeopleFeatureFlags();

  v8 = static PeopleFeatureFlags.shared.getter();
  v24[3] = v4;
  v24[4] = &off_10005E9C8;
  v24[0] = v5;
  v22 = v6;
  v23 = &protocol witness table for PeopleTimelineControllerFactory;
  *&v21 = v7;
  type metadata accessor for XPCEventObserver();
  v9 = swift_allocObject();
  v10 = sub_1000106B4(v24, v4);
  __chkstk_darwin(v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v9[5] = v4;
  v9[6] = &off_10005E9C8;
  v9[2] = v14;
  v9[13] = sub_100007914(_swiftEmptyArrayStorage);
  sub_10000784C(&v21, (v9 + 7));
  v9[12] = v8;
  sub_100003938(v24);

  *&v1[v3] = v9;
  v15 = objc_allocWithZone(NSXPCListener);

  v16 = String._bridgeToObjectiveC()();

  v17 = [v15 initWithMachServiceName:v16];

  *&v1[OBJC_IVAR____TtC7peopled11XPCListener__listener] = v17;
  v18 = type metadata accessor for XPCListener();
  v20.receiver = v1;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, "init");
}

id sub_10001EFA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCListener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001F0BC(void *a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v28[-v10];
  v12 = String._bridgeToObjectiveC()();
  v13 = [a2 valueForEntitlement:v12];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (*(&v30 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v28[15] == 1)
    {
      v14 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP6People23ServiceDelegateProtocol_];
      [a2 setExportedInterface:v14];
      if (qword_1000623F8 != -1)
      {
        swift_once();
      }

      [a2 setExportedObject:qword_100065588];
      [a2 resume];
      static PeopleLogger.daemon.getter();
      v15 = a1;
      v16 = a2;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412546;
        *(v19 + 4) = v15;
        *(v19 + 12) = 2112;
        *(v19 + 14) = v16;
        *v20 = v15;
        v20[1] = v16;
        v21 = v15;
        v22 = v16;
        _os_log_impl(&_mh_execute_header, v17, v18, "%@: New connection established %@", v19, 0x16u);
        sub_100005E30(&qword_100062758, &unk_10004E8A0);
        swift_arrayDestroy();

        v23 = v14;
      }

      else
      {
        v23 = v17;
        v17 = v14;
      }

      v26 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    sub_10001F498(v31);
  }

  static PeopleLogger.daemon.getter();
  v17 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v17, v24, "connection is not entitled. declining.", v25, 2u);
  }

  v26 = 0;
  v11 = v9;
LABEL_15:

  (*(v6 + 8))(v11, v5);
  return v26;
}

uint64_t sub_10001F498(uint64_t a1)
{
  v2 = sub_100005E30(&qword_100062E60, &qword_10004F030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001F500()
{
  sub_100003938((v0 + 16));

  sub_100003938((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_10001F56C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StatusType.location(_:);
  v3 = type metadata accessor for StatusType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10001F5E0(uint64_t a1)
{
  v2 = sub_10001F814(&qword_1000629A8, &unk_10004E0B8);

  return StatusSource.debugID.getter(a1, v2);
}

uint64_t sub_10001F638(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001F6DC;

  return static LocateFriend.statusFromFMCache(for:with:friendLocateProvider:)(a1, v4 + 16, v4 + 64);
}

uint64_t sub_10001F6DC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10001F814(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocationStatusSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10001F854(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10001F8C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = a3[5];
  v8 = a3[6];
  sub_100005E78(a3 + 2, v7);

  v9 = static PeopleConstants.appBundleID.getter();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10000D1F8;
  *(v12 + 24) = v6;
  (*(v8 + 24))(v9, v11, sub_100020AD8, v12, v7, v8);
}

uint64_t sub_10001F9CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  sub_100005E30(&qword_100063008, &unk_10004E180);
  static Result<>.foundation_from(_:_:)();
  a3(v5, v6);
  return sub_100014AB8(v5, v6);
}

unint64_t *sub_10001FA54@<X0>(unint64_t *result@<X0>, char **a2@<X8>)
{
  v2 = *result;
  if (*result >> 62)
  {
    goto LABEL_30;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v4 = 0;
      v5 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v6 = *(v2 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v9 = sub_10000C3F4(v6);

        v10 = *(v9 + 2);
        v11 = *(v5 + 2);
        v12 = v11 + v10;
        if (__OFADD__(v11, v10))
        {
          goto LABEL_26;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v12 <= *(v5 + 3) >> 1)
        {
          if (*(v9 + 2))
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (v11 <= v12)
          {
            v14 = v11 + v10;
          }

          else
          {
            v14 = v11;
          }

          v5 = sub_100022130(isUniquelyReferenced_nonNull_native, v14, 1, v5);
          if (*(v9 + 2))
          {
LABEL_19:
            if ((*(v5 + 3) >> 1) - *(v5 + 2) < v10)
            {
              goto LABEL_28;
            }

            swift_arrayInitWithCopy();

            if (v10)
            {
              v15 = *(v5 + 2);
              v16 = __OFADD__(v15, v10);
              v17 = v15 + v10;
              if (v16)
              {
                goto LABEL_29;
              }

              *(v5 + 2) = v17;
            }

            goto LABEL_5;
          }
        }

        if (v10)
        {
          goto LABEL_27;
        }

LABEL_5:
        ++v4;
        if (v8 == v3)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      result = _CocoaArrayWrapper.endIndex.getter();
      v3 = result;
    }

    while (result);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_32:
  *a2 = v5;
  return result;
}

char *sub_10001FC20@<X0>(char *result@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *result;
  v20 = *(*result + 16);
  if (!v20)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_23:
    v18 = sub_10001E3F0(v7);

    *a3 = v18;
    return result;
  }

  v5 = 0;
  v6 = v3 + 40;
  v7 = _swiftEmptyArrayStorage;
  while (v5 < *(v3 + 16))
  {
    sub_100005E78(a2 + 12, a2[15]);

    v8 = dispatch thunk of ContactFetcherProtocol.contact(for:includeImages:)();
    if (v8)
    {
      v9 = v8;
      v10 = CNContact.people_normalizedHandles.getter();
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }

    v11 = v10[2];
    v12 = *(v7 + 2);
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      goto LABEL_25;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v13 <= *(v7 + 3) >> 1)
    {
      if (v10[2])
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v14 = v12 + v11;
      }

      else
      {
        v14 = v12;
      }

      result = sub_100022130(result, v14, 1, v7);
      v7 = result;
      if (v10[2])
      {
LABEL_18:
        if ((*(v7 + 3) >> 1) - *(v7 + 2) < v11)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v15 = *(v7 + 2);
          v16 = __OFADD__(v15, v11);
          v17 = v15 + v11;
          if (v16)
          {
            goto LABEL_28;
          }

          *(v7 + 2) = v17;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_26;
    }

LABEL_4:
    ++v5;
    v6 += 16;
    if (v20 == v5)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10001FE00()
{
  sub_100003938(v0 + 2);
  sub_100003938(v0 + 7);
  sub_100003938(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_10001FE6C()
{
  sub_100005E30(&qword_100062FE0, &qword_10004E160);
  sub_100005E30(&qword_100062FE8, &qword_10004E168);
  swift_allocObject();

  Promise.init(startBlock:)();
  sub_100005E78((v0 + 56), *(v0 + 80));
  type metadata accessor for WidgetConfigurationReader();
  sub_10000D0E8();

  sub_100005E30(&qword_100062FF0, &qword_10004E170);
  dispatch thunk of Promise.then<A>(_:)();

  sub_100005E30(&qword_100062FF8, &qword_10004E178);
  dispatch thunk of Promise.then<A>(_:)();

  static Promise.join<A, B>(_:_:)();

  dispatch thunk of Promise.then<A>(_:)();

  v1 = dispatch thunk of Promise.catch<A>(_:)();

  return v1;
}

void sub_1000200B4(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  aBlock[0] = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_50:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = v2;
  v61 = v3;
  if (v3)
  {
    v4 = 0;
    v54 = v2 & 0xFFFFFFFFFFFFFF8;
    v55 = v2 & 0xC000000000000001;
    v53 = v2 + 32;
    do
    {
      while (1)
      {
        if (v55)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v54 + 16))
          {
            goto LABEL_49;
          }

          v5 = *(v53 + 8 * v4);
        }

        v6 = v5;
        v7 = __OFADD__(v4++, 1);
        if (v7)
        {
          goto LABEL_48;
        }

        v8 = [v5 ownerHandles];
        if (v8)
        {
          v9 = v8;
          sub_100020A3C();
          v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v10 >> 62)
          {
            v11 = _CocoaArrayWrapper.endIndex.getter();
            v57 = v6;
            v58 = v4;
            if (v11)
            {
LABEL_13:
              v12 = 0;
              v13 = _swiftEmptyArrayStorage;
              while (1)
              {
                if ((v10 & 0xC000000000000001) != 0)
                {
                  v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_47;
                  }

                  v14 = *(v10 + 8 * v12 + 32);
                }

                v15 = v14;
                v2 = v12 + 1;
                if (__OFADD__(v12, 1))
                {
                  break;
                }

                v16 = [v14 handleString];
                static String._unconditionallyBridgeFromObjectiveC(_:)();

                v17 = String.lowercased()();

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v13 = sub_100022130(0, *(v13 + 2) + 1, 1, v13);
                }

                v19 = *(v13 + 2);
                v18 = *(v13 + 3);
                if (v19 >= v18 >> 1)
                {
                  v13 = sub_100022130((v18 > 1), v19 + 1, 1, v13);
                }

                *(v13 + 2) = v19 + 1;
                *&v13[16 * v19 + 32] = v17;
                ++v12;
                if (v2 == v11)
                {
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }
          }

          else
          {
            v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v57 = v6;
            v58 = v4;
            if (v11)
            {
              goto LABEL_13;
            }
          }

          v13 = _swiftEmptyArrayStorage;
LABEL_29:

          v2 = v60;
          v3 = v61;
          v6 = v57;
          v4 = v58;
        }

        else
        {
          v13 = _swiftEmptyArrayStorage;
        }

        v20 = sub_10000DCD4(v13, a2);

        if (v20)
        {
          break;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v4 == v3)
        {
          goto LABEL_32;
        }
      }
    }

    while (v4 != v3);
LABEL_32:
    v21 = aBlock[0];
    p_weak_ivar_lyt = (&ScreenTimeStatusSource + 56);
    if ((aBlock[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

  v21 = _swiftEmptyArrayStorage;
  p_weak_ivar_lyt = &ScreenTimeStatusSource.weak_ivar_lyt;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_51;
  }

LABEL_35:
  if ((v21 & 0x4000000000000000) != 0)
  {
LABEL_51:
    v23 = _CocoaArrayWrapper.endIndex.getter();
    if (!v23)
    {
      goto LABEL_52;
    }

    goto LABEL_37;
  }

  v23 = *(v21 + 16);
  if (!v23)
  {
LABEL_52:

    v25 = _swiftEmptyArrayStorage;
    goto LABEL_53;
  }

LABEL_37:
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000D6D4(0, v23 & ~(v23 >> 63), 0);
  if (v23 < 0)
  {
LABEL_79:
    __break(1u);
    return;
  }

  v24 = 0;
  v25 = aBlock[0];
  do
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v26 = *(v21 + 8 * v24 + 32);
    }

    v27 = v26;
    v28 = [v27 p_weak_ivar_lyt[397]];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    aBlock[0] = v25;
    v33 = v25[2];
    v32 = v25[3];
    if (v33 >= v32 >> 1)
    {
      sub_10000D6D4((v32 > 1), v33 + 1, 1);
      v25 = aBlock[0];
    }

    ++v24;
    v25[2] = v33 + 1;
    v34 = &v25[2 * v33];
    v34[4] = v29;
    v34[5] = v31;
  }

  while (v23 != v24);

  v2 = v60;
  v3 = v61;
LABEL_53:
  v35 = sub_10001E3F0(v25);

  if (v3)
  {
    v36 = 0;
    v37 = v2 & 0xC000000000000001;
    v62 = v2 & 0xFFFFFFFFFFFFFF8;
    v59 = v2 + 32;
    v38 = v35 + 56;
    while (1)
    {
      if (v37)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v36 >= *(v62 + 16))
        {
          goto LABEL_78;
        }

        v41 = *(v59 + 8 * v36);
      }

      v42 = v41;
      v7 = __OFADD__(v36++, 1);
      if (v7)
      {
        break;
      }

      v43 = [v41 subscriptionIdentifier];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      if (*(v35 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v47 = Hasher._finalize()(), v48 = -1 << *(v35 + 32), v49 = v47 & ~v48, ((*(v38 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) != 0))
      {
        v50 = ~v48;
        while (1)
        {
          v51 = (*(v35 + 48) + 16 * v49);
          v52 = *v51 == v44 && v51[1] == v46;
          if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v49 = (v49 + 1) & v50;
          if (((*(v38 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
          {
            goto LABEL_55;
          }
        }
      }

      else
      {
LABEL_55:

        static PeopleConstants.appBundleID.getter();
        v39 = String._bridgeToObjectiveC()();

        aBlock[4] = sub_10002074C;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10001F854;
        aBlock[3] = &unk_10005E200;
        v40 = _Block_copy(aBlock);
        [v42 releasePersistentSubscriptionAssertionForApplicationIdentifier:v39 completion:v40];
        _Block_release(v40);
      }

      if (v36 == v61)
      {

        return;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }
}

uint64_t sub_10002074C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  Logger.ifError(_:message:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100020860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17[1] = v3;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = sub_10002580C(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v11, 0xCu);
    sub_100003938(v12);
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_100020A3C()
{
  result = qword_100063000;
  if (!qword_100063000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100063000);
  }

  return result;
}

uint64_t sub_100020A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100020AA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100020AE4()
{
  v1 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 104);
  *(v0 + 104) = 0x8000000000000000;
  sub_1000069EC(sub_100021B88, v1, 0xD00000000000002DLL, 0x8000000100050A40, isUniquelyReferenced_nonNull_native);
  *(v0 + 104) = v8;
  swift_endAccess();

  v3 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();

  v4 = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 104);
  *(v0 + 104) = 0x8000000000000000;
  sub_1000069EC(sub_100021B90, v3, 0xD00000000000001FLL, 0x8000000100050A70, v4);
  *(v0 + 104) = v9;
  swift_endAccess();

  v5 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();

  v6 = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 104);
  *(v0 + 104) = 0x8000000000000000;
  sub_1000069EC(sub_100021B98, v5, 0xD000000000000035, 0x8000000100050A90, v6);
  *(v0 + 104) = v10;
  swift_endAccess();
}

uint64_t sub_100020D14(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_100005E30(&qword_100062930, &qword_10004DB40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10004E190;
    *(inited + 32) = static PeopleConstants.singleContactWidgetKind.getter();
    *(inited + 40) = v6;
    *(inited + 48) = static PeopleConstants.multipleContactsWidgetKind.getter();
    *(inited + 56) = v7;
    v8 = *sub_100005E78(a1, a1[3]);
    v10[3] = &type metadata for XPCEvent;
    v10[4] = &off_10005E2F0;
    v10[0] = v8;
    __chkstk_darwin(v8);
    v9[2] = v10;
    v9[3] = v4;
    swift_unknownObjectRetain();
    sub_1000154F8(sub_100021C10, v9, inited);
    swift_setDeallocating();
    swift_arrayDestroy();

    return sub_100003938(v10);
  }

  return result;
}

uint64_t sub_100020E64(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for PeopleFeatureFlagNames();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    (*(v4 + 104))(v6, enum case for PeopleFeatureFlagNames.calendarStatus(_:), v3);
    v9 = dispatch thunk of FeatureFlagsProvider.isEnabled(_:)();
    (*(v4 + 8))(v6, v3);
    if (v9)
    {
      sub_100005E30(&qword_100062930, &qword_10004DB40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10004E190;
      *(inited + 32) = static PeopleConstants.singleContactWidgetKind.getter();
      *(inited + 40) = v11;
      *(inited + 48) = static PeopleConstants.multipleContactsWidgetKind.getter();
      *(inited + 56) = v12;
      v13 = *sub_100005E78(a1, a1[3]);
      v15[3] = &type metadata for XPCEvent;
      v15[4] = &off_10005E2F0;
      v15[0] = v13;
      __chkstk_darwin(v13);
      *&v14[-16] = v15;
      *&v14[-8] = v8;
      swift_unknownObjectRetain();
      sub_1000154F8(sub_100021C10, &v14[-32], inited);
      swift_setDeallocating();
      swift_arrayDestroy();

      return sub_100003938(v15);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10002108C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_100005E30(&qword_100062930, &qword_10004DB40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10004D790;
    *(inited + 32) = static PeopleConstants.singleContactWidgetKind.getter();
    *(inited + 40) = v6;
    v7 = *sub_100005E78(a1, a1[3]);
    v9[3] = &type metadata for XPCEvent;
    v9[4] = &off_10005E2F0;
    v9[0] = v7;
    __chkstk_darwin(v7);
    v8[2] = v9;
    v8[3] = v4;
    swift_unknownObjectRetain();
    sub_1000154F8(sub_100021BA0, v8, inited);
    swift_setDeallocating();
    sub_100021BBC(inited + 32);

    return sub_100003938(v9);
  }

  return result;
}

uint64_t sub_1000211C8()
{
  sub_100020AE4();
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_1000216F4;
  *(v1 + 24) = v0;
  v5[4] = sub_100021B08;
  v5[5] = v1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100021B10;
  v5[3] = &unk_10005E2C8;
  v2 = _Block_copy(v5);
  swift_retain_n();

  v3 = String.utf8CString.getter();
  xpc_set_event_stream_handler((v3 + 32), 0, v2);

  _Block_release(v2);
}

uint64_t sub_10002130C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  sub_1000077E8(a1, v31);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v29 = a1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30[0] = v11;
    *v10 = 136315138;
    v12 = sub_100005E78(v31, v31[3]);
    if (xpc_dictionary_get_string(*v12, _xpc_event_key_name))
    {
      v13 = String.init(cString:)();
      v15 = v14;
    }

    else
    {
      v13 = 0xD000000000000021;
      v15 = 0x8000000100050A10;
    }

    sub_100003938(v31);
    v16 = sub_10002580C(v13, v15, v30);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received event %s", v10, 0xCu);
    sub_100003938(v11);

    (*(v5 + 8))(v7, v4);
    a1 = v29;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    sub_100003938(v31);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = sub_100005E78(a1, a1[3]);
    if (xpc_dictionary_get_string(*v19, _xpc_event_key_name))
    {
      v20 = String.init(cString:)();
      v22 = v21;
    }

    else
    {
      v20 = 0xD000000000000021;
      v22 = 0x8000000100050A10;
    }

    swift_beginAccess();
    v23 = *(v18 + 104);

    if (*(v23 + 16))
    {
      v24 = sub_100005EBC(v20, v22);
      v26 = v25;

      if (v26)
      {
        v27 = *(*(v23 + 56) + 16 * v24);

        v27(a1);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100021648()
{
  sub_100003938((v0 + 16));
  sub_100003938((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1000216BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000216FC(uint64_t *a1, uint64_t a2, void *a3)
{
  v30 = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = *a1;
  v12 = a1[1];
  static PeopleLogger.daemon.getter();
  sub_1000077E8(a2, v35);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v31 = v11;
  if (v15)
  {
    v29 = v5;
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_10002580C(v11, v12, &v33);
    *(v16 + 12) = 2080;
    v17 = sub_100005E78(v35, v36);
    if (xpc_dictionary_get_string(*v17, _xpc_event_key_name))
    {
      v18 = String.init(cString:)();
      v20 = v19;
    }

    else
    {
      v20 = 0x8000000100050A10;
      v18 = 0xD000000000000021;
    }

    sub_100003938(v35);
    v22 = sub_10002580C(v18, v20, &v33);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "reloading timelines of kind: %s due to xpc event: %s", v16, 0x16u);
    swift_arrayDestroy();

    v21 = *(v6 + 8);
    v5 = v29;
    v21(v10, v29);
  }

  else
  {

    v21 = *(v6 + 8);
    v21(v10, v5);
    sub_100003938(v35);
  }

  sub_100005E78(v30 + 7, v30[10]);
  static PeopleConstants.widgetBundleID.getter();
  v23 = v31;
  dispatch thunk of TimelineControllerFactoryProtocol.timelineController(for:in:)();

  sub_100005E78(v35, v36);
  dispatch thunk of TimelineControllerProtocol.reloadTimeline()();
  v24 = v32;
  static PeopleLogger.daemon.getter();
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);

  v33 = 0xD000000000000023;
  v34 = 0x8000000100050AD0;
  v25._countAndFlagsBits = v23;
  v25._object = v12;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x203A726F72726520;
  v26._object = 0xEA00000000004025;
  String.append(_:)(v26);
  Logger.ifError(_:message:)();

  v21(v24, v5);
  return sub_100003938(v35);
}

uint64_t sub_100021AD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021B10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100021B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100021C3C(uint64_t a1)
{
  type metadata accessor for StatusType();
  if (v1 <= 0x3F)
  {
    sub_100013A1C(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_100021D10(id *a1, uint64_t **a2, uint64_t a3)
{
  v5 = [*a1 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  sub_1000077E8(a3, v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *a2;
  v10 = v30;
  *a2 = 0x8000000000000000;
  v12 = sub_100005EBC(v6, v8);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
LABEL_15:
    v8 = sub_100022348(0, v8[2] + 1, 1, v8);
    *v10 = v8;
    goto LABEL_11;
  }

  v16 = v11;
  if (v10[3] >= v15)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100006EE0();
    }
  }

  else
  {
    sub_100006460(v15, isUniquelyReferenced_nonNull_native);
    v17 = sub_100005EBC(v6, v8);
    if ((v16 & 1) != (v18 & 1))
    {
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v12 = v17;
  }

  *a2 = v30;

  v19 = *a2;
  if (v16)
  {
  }

  else
  {
    sub_100007E88();
  }

  v10 = (v19[7] + 8 * v12);
  v8 = *v10;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v8;
  if ((v20 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v22 = v8[2];
  v21 = v8[3];
  if (v22 >= v21 >> 1)
  {
    *v10 = sub_100022348((v21 > 1), v22 + 1, 1, v8);
  }

  v23 = v32;
  v24 = v33;
  v25 = sub_1000106B4(v31, v32);
  __chkstk_darwin(v25);
  v27 = &v31[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27);
  sub_1000226E4(v22, v27, v10, v23, v24);
  return sub_100003938(v31);
}

uint64_t sub_100021FA8()
{
  v1 = qword_100065530;
  v2 = type metadata accessor for StatusType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100003938((v0 + qword_100065538));
  v3 = qword_100065540;
  v4 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100003938((v0 + qword_100065548));
  return v0;
}

uint64_t sub_100022074()
{
  sub_100021FA8();

  return swift_deallocClassInstance();
}

unint64_t sub_1000220E4()
{
  result = qword_100062AF0;
  if (!qword_100062AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100062AF0);
  }

  return result;
}

char *sub_100022130(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005E30(&qword_100062930, &qword_10004DB40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10002223C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005E30(&unk_100063268, &unk_10004E2B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100022348(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005E30(&qword_100063260, &qword_10004E2B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005E30(&qword_100062950, &qword_10004DB60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100022508(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005E30(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1000226E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100007784(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10000784C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1000227AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  sub_100005E30(&qword_100063368, &qword_10004E5B0);
  v6[13] = swift_task_alloc();
  v7 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  sub_100005E30(&qword_100063370, &unk_10004E330);
  v6[17] = swift_task_alloc();
  v8 = type metadata accessor for MessageDetails();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_10002294C, 0, 0);
}

uint64_t sub_10002294C()
{
  sub_100005E78(*(v0 + 88), *(*(v0 + 88) + 24));
  if (dispatch thunk of MessageConduitProtocol.enabledOnPlatform.getter())
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 96);
    v3 = OBJC_IVAR____TtC7peopled20RequestMessageSender_messageConduit;
    *(v0 + 168) = OBJC_IVAR____TtC7peopled20RequestMessageSender_messageConduit;
    sub_1000077E8(v1, v2 + v3);
    type metadata accessor for RequestMessageDetailsBuilder();
    swift_allocObject();
    *(v0 + 176) = RequestMessageDetailsBuilder.init()();
    v4 = [objc_opt_self() hours];
    sub_1000220E4();
    Measurement.init(value:unit:)();
    v5 = type metadata accessor for ContactFetcher();
    *(v0 + 16) = static ContactFetcher.shared.getter();
    *(v0 + 40) = v5;
    *(v0 + 48) = &protocol witness table for ContactFetcher;
    v19 = &async function pointer to dispatch thunk of RequestMessageDetailsBuilder.fromPersistence(_:eventID:useFamilyCache:resolveAppBundleInfo:maxAge:withContactFetcher:) + async function pointer to dispatch thunk of RequestMessageDetailsBuilder.fromPersistence(_:eventID:useFamilyCache:resolveAppBundleInfo:maxAge:withContactFetcher:);
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    *v6 = v0;
    v6[1] = sub_100022C4C;
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);

    return (v19)(v7, v9, v11, v10, 0, 0, v8, v0 + 16);
  }

  else
  {
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);

    static PeopleErrors.createError(_:code:)();
    swift_willThrow();
    v15 = type metadata accessor for ResolvedFamily();
    (*(*(v15 - 8) + 8))(v13, v15);
    v16 = type metadata accessor for MessageDetails.EventSource();
    (*(*(v16 - 8) + 8))(v14, v16);
    v17 = *(v0 + 88);
    type metadata accessor for RequestMessageSender(0);
    swift_deallocPartialClassInstance();
    sub_100003938(v17);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100022C4C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[16];
  v5 = v2[15];
  v6 = v2[14];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    sub_100003938(v3 + 2);
    v7 = sub_100022DFC;
  }

  else
  {
    (*(v5 + 8))(v4, v6);

    sub_100003938(v3 + 2);
    v7 = sub_10002302C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100022DFC()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  (*(v0[19] + 56))(v2, 1, 1, v0[18]);
  sub_100007DB0(v2, &qword_100063370, &unk_10004E330);
  _StringGuts.grow(_:)(29);

  v8._countAndFlagsBits = v7;
  v8._object = v6;
  String.append(_:)(v8);

  static PeopleErrors.createError(_:code:)();

  swift_willThrow();

  v9 = type metadata accessor for ResolvedFamily();
  (*(*(v9 - 8) + 8))(v5, v9);
  v10 = type metadata accessor for MessageDetails.EventSource();
  (*(*(v10 - 8) + 8))(v4, v10);
  sub_100003938((v3 + v1));
  v11 = v0[11];
  type metadata accessor for RequestMessageSender(0);
  swift_deallocPartialClassInstance();
  sub_100003938(v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10002302C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[13];
  v15 = v0[12];
  v6 = v0[10];
  v16 = v0[11];
  v14 = v0[9];
  (*(v2 + 56))(v3, 0, 1, v4);
  v7 = *(v2 + 32);
  v7(v1, v3, v4);
  v8 = type metadata accessor for ResolvedFamily();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v5, v6, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  MessageDetails.family.setter();

  (*(v9 + 8))(v6, v8);
  v10 = type metadata accessor for MessageDetails.EventSource();
  (*(*(v10 - 8) + 8))(v14, v10);
  v7(v15 + OBJC_IVAR____TtC7peopled20RequestMessageSender_details, v1, v4);
  sub_100003938(v16);

  v11 = v0[1];
  v12 = v0[12];

  return v11(v12);
}

uint64_t sub_100023238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = v3;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_100005E30(&qword_100063368, &qword_10004E5B0);
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for MessageDetails();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100023398, 0, 0);
}

uint64_t sub_100023398()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[2];
  v6 = OBJC_IVAR____TtC7peopled20RequestMessageSender_details;
  v7 = *(v3 + 16);
  v7(v1, v5 + OBJC_IVAR____TtC7peopled20RequestMessageSender_details, v2);
  MessageDetails.family.getter();
  v8 = *(v3 + 8);
  v0[11] = v8;
  v0[12] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v2);
  v9 = type metadata accessor for ResolvedFamily();
  LODWORD(v1) = (*(*(v9 - 8) + 48))(v4, 1, v9);
  sub_100007DB0(v4, &qword_100063368, &qword_10004E5B0);
  if (v1 == 1)
  {
    v10 = static PeopleErrors.createError(_:code:)();

    v11 = v0[1];

    return v11(v10);
  }

  else
  {
    v13 = v0[9];
    v14 = v0[7];
    v15 = (v0[2] + OBJC_IVAR____TtC7peopled20RequestMessageSender_messageConduit);
    v16 = v15[3];
    v17 = v15[4];
    sub_100005E78(v15, v16);
    v7(v13, v5 + v6, v14);
    v18 = swift_task_alloc();
    v0[13] = v18;
    *v18 = v0;
    v18[1] = sub_1000235EC;
    v19 = v0[9];

    return dispatch thunk of MessageConduitProtocol.sendMessage(details:)(v19, v16, v17);
  }
}

uint64_t sub_1000235EC(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 56);
  *(*v1 + 112) = a1;

  v2(v3, v4);

  return _swift_task_switch(sub_100023754, 0, 0);
}

uint64_t sub_100023754()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  static PeopleLogger.messages.getter();
  Logger.ifError(_:message:)();
  (*(v2 + 8))(v1, v3);
  v4 = v0[14];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_100023830()
{
  v1 = OBJC_IVAR____TtC7peopled20RequestMessageSender_details;
  v2 = type metadata accessor for MessageDetails();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100003938((v0 + OBJC_IVAR____TtC7peopled20RequestMessageSender_messageConduit));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RequestMessageSender(uint64_t a1)
{
  result = qword_1000632B8;
  if (!qword_1000632B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100023930(uint64_t a1)
{
  result = type metadata accessor for MessageDetails();
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

uint64_t sub_1000239C8()
{
  result = static PeopleErrors.createError(_:code:)();
  qword_100065558 = result;
  return result;
}

id sub_100023A08()
{
  if (qword_1000623D8 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(type metadata accessor for PeopleIndexingClient());

  result = sub_100023A7C(v1, v2, v3);
  qword_100065560 = result;
  return result;
}

id sub_100023A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC7peopled20PeopleIndexingClient_statusManager] = a1;
  v9 = type metadata accessor for PeopleIndexingClient();
  v16.receiver = v3;
  v16.super_class = v9;

  v10 = objc_msgSendSuper2(&v16, "init");
  static PeopleConstants.peopleReindexRegistration.getter();
  v11 = String._bridgeToObjectiveC()();

  SpotlightDaemonClientRegister();

  static PeopleLogger.daemon.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "PeopleIndexingClient: SpotlightDaemonClientRegister completed.", v14, 2u);
  }

  else
  {
  }

  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t PeopleIndexingClient.provideData(forBundleID:protectionClass:itemIdentifier:typeIdentifier:options:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void, unint64_t, uint64_t))
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Unimplemented SpotlightDaemonClient method!", v16, 2u);
  }

  (*(v11 + 8))(v13, v10);
  if (qword_1000623E8 != -1)
  {
    swift_once();
  }

  return a10(0, 0xF000000000000000, qword_100065558);
}

uint64_t PeopleIndexingClient.provideFileURL(forBundleID:protectionClass:itemIdentifier:typeIdentifier:options:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(char *, uint64_t))
{
  v10 = sub_100005E30(&qword_100063378, &qword_10004E340);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Unimplemented SpotlightDaemonClient method!", v19, 2u);
  }

  (*(v14 + 8))(v16, v13);
  v20 = type metadata accessor for URL();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  if (qword_1000623E8 != -1)
  {
    swift_once();
  }

  a10(v12, qword_100065558);
  return sub_100007DB0(v12, &qword_100063378, &qword_10004E340);
}

void sub_100024074(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, void *aBlock, void (*a9)(void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a1;
  a9(v10);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t PeopleIndexingClient.reindexAllItems(for:protectionClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000241B8, 0, 0);
}

uint64_t sub_1000241B8(uint64_t a1)
{
  v19 = v1;
  static PeopleLogger.daemon.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10002580C(v9, v8, &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "PeopleIndexingClient reindexAllItems for %s", v10, 0xCu);
    sub_100003938(v11);
  }

  (*(v6 + 8))(v5, v7);
  v12 = swift_task_alloc();
  v1[10] = v12;
  *v12 = v1;
  v12[1] = sub_100024380;
  v13 = v1[4];
  v14 = v1[5];
  v16 = v1[2];
  v15 = v1[3];

  return sub_10000B248(v16, v15, _swiftEmptyArrayStorage, v13, v14);
}

uint64_t sub_100024380()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100024620(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_10002471C;

  return PeopleIndexingClient.reindexAllItems(for:protectionClass:)(v6, v8, v9, v11);
}

uint64_t sub_10002471C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t PeopleIndexingClient.reindexItems(for:bundleID:protectionClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for Logger();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_100024968, 0, 0);
}

uint64_t sub_100024968(uint64_t a1)
{
  v35 = v1;
  static PeopleLogger.daemon.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v7 = v1[8];
  v6 = v1[9];
  if (v4)
  {
    v32 = v1[11];
    v9 = v1[3];
    v8 = v1[4];
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_10002580C(v9, v8, &v34);
    *(v11 + 12) = 2048;
    *(v11 + 14) = *(v10 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "PeopleIndexingClient reindexAllItems for %s for %ld ids", v11, 0x16u);
    sub_100003938(v12);

    v13 = *(v6 + 8);
    v13(v32, v7);
  }

  else
  {

    v13 = *(v6 + 8);
    v13(v5, v7);
  }

  if (*(v1[2] + 16))
  {
    v14 = swift_task_alloc();
    v1[12] = v14;
    *v14 = v1;
    v14[1] = sub_100024CD8;
    v15 = v1[5];
    v16 = v1[6];
    v18 = v1[3];
    v17 = v1[4];
    v19 = v1[2];

    return sub_10000B248(v18, v17, v19, v15, v16);
  }

  else
  {
    static PeopleLogger.daemon.getter();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    v23 = os_log_type_enabled(v21, v22);
    v24 = v1[10];
    v25 = v1[8];
    if (v23)
    {
      v33 = v1[10];
      v27 = v1[3];
      v26 = v1[4];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_10002580C(v27, v26, &v34);
      _os_log_impl(&_mh_execute_header, v21, v22, "Reindex for %s provided empty id array.", v28, 0xCu);
      sub_100003938(v29);

      v30 = v33;
    }

    else
    {

      v30 = v24;
    }

    v13(v30, v25);

    v31 = v1[1];

    return v31();
  }
}

uint64_t sub_100024CD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100024FA8(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[4] = v7;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[5] = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v5[6] = v12;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_1000250CC;

  return PeopleIndexingClient.reindexItems(for:bundleID:protectionClass:)(v7, v8, v10, v11, v13);
}

uint64_t sub_1000250CC()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

id PeopleIndexingClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeopleIndexingClient.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PeopleIndexingClient();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100025340(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10001ECE4;

  return v6();
}

uint64_t sub_100025428(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100007CBC;

  return v7();
}

uint64_t sub_100025510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10001E738(a3, v23 - v10, &qword_100062A80, &qword_10004ED60);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100007DB0(v11, &qword_100062A80, &qword_10004ED60);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100007DB0(a3, &qword_100062A80, &qword_10004ED60);

    return v21;
  }

LABEL_8:
  sub_100007DB0(a3, &qword_100062A80, &qword_10004ED60);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

unint64_t sub_10002580C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000258D8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100010658(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003938(v11);
  return v7;
}

unint64_t sub_1000258D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000259E4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1000259E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100025A30(a1, a2);
  sub_100025B60(&off_10005DAA8);
  return v3;
}

void *sub_100025A30(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100013EDC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100013EDC(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100025B60(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100025C4C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100025C4C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005E30(&qword_100062C18, &unk_10004DDF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100025D64()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100025DBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100007CBC;

  return sub_100024FA8(v2, v3, v4, v5, v6);
}

uint64_t sub_100025E84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001ECE4;

  return sub_100025340(v2, v3, v4);
}

uint64_t sub_100025F48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001ECE4;

  return sub_100025428(a1, v4, v5, v6);
}

uint64_t sub_100026014()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002604C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001ECE4;

  return sub_10001AEE0(a1, v4);
}

uint64_t sub_100026104(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007CBC;

  return sub_10001AEE0(a1, v4);
}

uint64_t sub_1000261BC()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002620C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001ECE4;

  return sub_100024620(v2, v3, v5, v4);
}

uint64_t sub_1000262CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10002630C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Unimplemented SpotlightDaemonClient method!", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  if (qword_1000623E8 != -1)
  {
    swift_once();
  }

  v11 = _convertErrorToNSError(_:)();
  (*(a1 + 16))(a1, 0, v11);
}

uint64_t sub_1000264A8(uint64_t a1)
{
  v2 = sub_100005E30(&qword_100063378, &qword_10004E340);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Unimplemented SpotlightDaemonClient method!", v14, 2u);
  }

  (*(v9 + 8))(v11, v8);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v7, 1, 1, v15);
  if (qword_1000623E8 != -1)
  {
    swift_once();
  }

  sub_10001E738(v7, v5, &qword_100063378, &qword_10004E340);
  if ((*(v16 + 48))(v5, 1, v15) == 1)
  {
    v18 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v17);
    v18 = v19;
    (*(v16 + 8))(v5, v15);
  }

  v20 = _convertErrorToNSError(_:)();
  (*(a1 + 16))(a1, v18, v20);

  return sub_100007DB0(v7, &qword_100063378, &qword_10004E340);
}

uint64_t sub_1000267B4()
{
  if (*(v0 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_listener))
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v1 = 0xE000000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
    v2 = 4271950;
  }

  _StringGuts.grow(_:)(51);
  v3._object = 0x8000000100050D20;
  v3._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 0x6E657473696C0A2CLL;
  v4._object = 0xEC000000203A7265;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v2;
  v5._object = v1;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 10506;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t sub_1000268EC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  type metadata accessor for PeopleUserDefaults();
  v13 = static PeopleUserDefaults.shared.getter();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 BOOLForKey:v14];

  if (v15)
  {
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = a1;
    v18 = a1;
    sub_100027770(0, 0, v12, &unk_10004E5A8, v17);
  }

  else
  {
    static PeopleLogger.daemon.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "AskTo enabled for Screen Time, people bowing out", v21, 2u);
    }

    (*(v7 + 8))(v9, v6);
  }

  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v4;
  v23[5] = a1;
  v24 = a1;

  sub_100014EE4(0, 0, v12, &unk_10004E598, v23);

  sub_100005E30(&qword_100062750, &qword_10004D990);
  swift_allocObject();
  return Promise.init(startBlock:)();
}

uint64_t sub_100026C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = type metadata accessor for MessageDetails.EventSource();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  sub_100005E30(&qword_100063368, &qword_10004E5B0);
  v4[19] = swift_task_alloc();
  v7 = type metadata accessor for ResolvedFamily();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100026E08, 0, 0);
}

uint64_t sub_100026E08()
{
  v1 = type metadata accessor for ContactFetcher();
  v2 = static ContactFetcher.shared.getter();
  v0[5] = v1;
  v0[6] = &protocol witness table for ContactFetcher;
  v0[2] = v2;
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_100026EC8;
  v4 = v0[19];

  return static ResolvedFamily.getFamilyForLoggedInChild(withContactFetcher:)(v4, v0 + 2);
}

uint64_t sub_100026EC8()
{
  v2 = *v1;
  *(v2 + 200) = v0;

  sub_100003938((v2 + 16));
  if (v0)
  {
    v3 = sub_1000276DC;
  }

  else
  {
    v3 = sub_100026FE4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100026FE4()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007DB0(v3, &qword_100063368, &qword_10004E5B0);
    static PeopleLogger.daemon.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[17];
    v7 = v0[18];
    v9 = v0[16];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "ST send message task: no family found", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[23];
    v27 = v0[22];
    v14 = v0[14];
    v15 = v0[15];
    v16 = v0[12];
    v17 = v0[13];
    (*(v2 + 32))(v13, v3, v1);
    v18 = [v16 requestID];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    (*(v14 + 104))(v15, enum case for MessageDetails.EventSource.screenTime(_:), v17);
    (*(v2 + 16))(v27, v13, v1);
    v22 = type metadata accessor for MessageConduit();
    swift_allocObject();
    v23 = MessageConduit.init()();
    v0[10] = v22;
    v0[11] = &protocol witness table for MessageConduit;
    v0[7] = v23;
    type metadata accessor for RequestMessageSender(0);
    swift_allocObject();
    v24 = swift_task_alloc();
    v0[26] = v24;
    *v24 = v0;
    v24[1] = sub_1000272E4;
    v25 = v0[22];
    v26 = v0[15];

    return sub_1000227AC(v19, v21, v26, v25, (v0 + 7));
  }
}

uint64_t sub_1000272E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    return _swift_task_switch(sub_100027630, 0, 0);
  }

  else
  {
    *(v4 + 216) = a1;
    v6 = swift_task_alloc();
    *(v4 + 224) = v6;
    *v6 = v5;
    v6[1] = sub_10002746C;

    return sub_100023238(v6, v7, v8);
  }
}

uint64_t sub_10002746C(uint64_t a1)
{

  return _swift_task_switch(sub_100027574, 0, 0);
}

uint64_t sub_100027574()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100027630()
{
  (*(v0[21] + 8))(v0[23], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000276DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100027770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10002A4B0(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007DB0(v10, &qword_100062A80, &qword_10004ED60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100007DB0(a3, &qword_100062A80, &qword_10004ED60);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007DB0(a3, &qword_100062A80, &qword_10004ED60);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100027A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for StatusType();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_100027B34, 0, 0);
}

uint64_t sub_100027B34()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v14 = v0[6];
  v15 = v0[5];
  v4 = v0[4];
  v12 = v0[7];
  v13 = v0[3];
  v5 = enum case for StatusType.screenTimeRequest(_:);
  v6 = *(v2 + 104);
  v6(v1, enum case for StatusType.screenTimeRequest(_:), v3);
  v7 = [objc_opt_self() screenTimeRequestStream];
  sub_100005E30(&qword_100063508, &qword_10004E560);
  swift_allocObject();
  v0[2] = BiomeStreamReader.init(statusType:readerStream:)();
  v6(v1, v5, v3);
  static PeopleConstants.screenTimeRequestEventTTL.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v13;
  sub_100029F94();
  v9 = v4;

  dispatch thunk of EventCollectorProtocol.collectEvents(statusType:maxAge:completion:)();

  (*(v14 + 8))(v12, v15);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

unint64_t sub_100027D30(unint64_t a1, void *a2, uint64_t a3)
{
  v48 = a3;
  v5 = type metadata accessor for Logger();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v47 = &v47 - v7;
  v51 = v8;
  *&v52[0] = _swiftEmptyArrayStorage;
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_21:
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

LABEL_20:
  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_3:
  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  do
  {
    v12 = v10;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        swift_unknownObjectRetain();
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v12;
      if (v10 == v9)
      {
        goto LABEL_22;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v52[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v52[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v11 = *&v52[0];
  }

  while (v10 != v9);
LABEL_22:
  v13 = a2;
  if (!(v11 >> 62))
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v51;
    if (v14)
    {
      goto LABEL_24;
    }

LABEL_40:

    goto LABEL_41;
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  v15 = v51;
  if (!v14)
  {
    goto LABEL_40;
  }

LABEL_24:
  v16 = __OFSUB__(v14, 1);
  result = v14 - 1;
  if (v16)
  {
    __break(1u);
    goto LABEL_45;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_45:
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_29;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (result >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_47:
    __break(1u);
    return result;
  }

  v18 = *(v11 + 8 * result + 32);
LABEL_29:
  v19 = v18;

  v20 = [v19 requestID];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = [v13 requestID];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (v21 == v25 && v23 == v27)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
LABEL_34:

LABEL_41:
      static PeopleLogger.daemon.getter();
      v38 = v13;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        *(v41 + 4) = v38;
        *v42 = v38;
        v43 = v38;
        _os_log_impl(&_mh_execute_header, v39, v40, "Indexing ST %@", v41, 0xCu);
        sub_100007DB0(v42, &qword_100062758, &unk_10004E8A0);
      }

      (*(v49 + 8))(v15, v50);
      v44 = v48;
      sub_1000077E8(v48 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_indexer, v52);
      v45 = swift_allocObject();
      *(v45 + 16) = v38;
      *(v45 + 24) = v44;
      sub_10000784C(v52, v45 + 32);
      *(v45 + 72) = 1;
      sub_100005E30(&qword_100062750, &qword_10004D990);
      swift_allocObject();
      v46 = v38;

      Promise.init(startBlock:)();
    }
  }

  sub_100010734(0, &qword_100062D78, BMScreenTimeRequestEvent_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    goto LABEL_34;
  }

  v29 = v47;
  static PeopleLogger.daemon.getter();
  v30 = v13;
  v31 = v19;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412546;
    *(v34 + 4) = v30;
    *(v34 + 12) = 2112;
    *(v34 + 14) = v31;
    *v35 = v30;
    v35[1] = v31;
    v36 = v30;
    v37 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "Dropping %@ since prior event sorted higher %@", v34, 0x16u);
    sub_100005E30(&qword_100062758, &unk_10004E8A0);
    swift_arrayDestroy();
  }

  else
  {
    v37 = v32;
    v32 = v31;
  }

  return (*(v49 + 8))(v29, v50);
}

uint64_t sub_10002835C(uint64_t (*a1)(uint64_t *))
{
  v2 = 0;
  v3 = 0;
  return a1(&v2);
}

uint64_t sub_10002839C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  type metadata accessor for PeopleBiomeEventIndexer();
  v11 = type metadata accessor for AppBundleResolver();

  v14[3] = v11;
  v14[4] = &protocol witness table for AppBundleResolver;
  v14[0] = AppBundleResolver.__allocating_init()();
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = a4;
  *(v12 + 32) = sub_100014D78;
  *(v12 + 40) = v10;

  static PeopleBiomeEventIndexer.indexEvent(screenTimeRequest:bundleResolver:withContactFetcher:withIndexer:completion:)();

  return sub_100003938(v14);
}

uint64_t sub_1000284C8(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v64 = a6;
  v65 = a5;
  v61 = type metadata accessor for StatusType();
  v10 = *(v61 - 8);
  __chkstk_darwin(v61);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v62 = *(v13 - 8);
  v63 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v59 - v18;
  __chkstk_darwin(v17);
  v21 = &v59 - v20;
  v22 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  __chkstk_darwin(v22 - 8);
  v24 = &v59 - v23;
  if ((a2 & 1) == 0)
  {
    v60 = *(a1 + 16);
    if (v60)
    {
      if (a3)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          sub_10001DB0C(a4, a1, Strong);
          swift_unknownObjectRelease();
        }

        v39 = type metadata accessor for TaskPriority();
        (*(*(v39 - 8) + 56))(v24, 1, 1, v39);
        v40 = swift_allocObject();
        *(v40 + 16) = 0;
        *(v40 + 24) = 0;
        sub_100014EE4(0, 0, v24, &unk_10004E588, v40);
      }

      static PeopleLogger.daemon.getter();

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v66 = v44;
        *v43 = 136315138;
        v45 = v61;
        (*(v10 + 104))(v12, enum case for StatusType.screenTimeRequest(_:), v61);
        sub_10002A068(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        (*(v10 + 8))(v12, v45);
        v49 = sub_10002580C(v46, v48, &v66);

        *(v43 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v41, v42, "%s event consume complete", v43, 0xCu);
        sub_100003938(v44);

        (*(v62 + 8))(v21, v63);
LABEL_18:
        type metadata accessor for PeopleAnalytics();
        (*(v10 + 104))(v12, enum case for StatusType.screenTimeRequest(_:), v45);
        static PeopleAnalytics.eventReceived(foundContacts:statusType:)();
        (*(v10 + 8))(v12, v45);
        v36 = 0;
        v37 = 0;
        return v65(v36, v37);
      }

      (*(v62 + 8))(v21, v63);
    }

    else
    {
      static PeopleLogger.daemon.getter();

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v66 = v53;
        *v52 = 136315138;
        v45 = v61;
        (*(v10 + 104))(v12, enum case for StatusType.screenTimeRequest(_:), v61);
        sub_10002A068(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = v55;
        (*(v10 + 8))(v12, v45);
        v57 = sub_10002580C(v54, v56, &v66);

        *(v52 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v50, v51, "%s event consume complete w/o local contact", v52, 0xCu);
        sub_100003938(v53);

        (*(v62 + 8))(v19, v63);
        goto LABEL_18;
      }

      (*(v62 + 8))(v19, v63);
    }

    v45 = v61;
    goto LABEL_18;
  }

  static PeopleLogger.daemon.getter();

  sub_100014AA4(a1, 1);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  sub_100014AB8(a1, 1);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v66 = v60;
    *v27 = 136315394;
    v28 = v61;
    (*(v10 + 104))(v12, enum case for StatusType.screenTimeRequest(_:), v61);
    sub_10002A068(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v10 + 8))(v12, v28);
    v32 = sub_10002580C(v29, v31, &v66);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    swift_getErrorValue();
    v33 = Error.localizedDescription.getter();
    v35 = sub_10002580C(v33, v34, &v66);

    *(v27 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s consume error: %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  (*(v62 + 8))(v16, v63);
  v36 = a1;
  v37 = 1;
  return v65(v36, v37);
}

uint64_t sub_100028D24()
{
  v1 = type metadata accessor for StatusType();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100028DE0, 0, 0);
}

uint64_t sub_100028DE0()
{
  (*(v0[3] + 104))(v0[4], enum case for StatusType.screenTimeRequest(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004810, v2, v1);
}

uint64_t sub_100028EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  __chkstk_darwin(v5);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  v52 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for StatusType();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v45 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v44 - v16;
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v20 = enum case for StatusType.screenTimeRequest(_:);
  v21 = *(v12 + 104);
  v21(&v44 - v18, enum case for StatusType.screenTimeRequest(_:), v11);
  sub_1000077E8(v4 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_contactFetcher, v56);
  v21(v17, v20, v11);
  v22 = [objc_opt_self() screenTimeRequestStream];
  v23 = sub_100005E30(&qword_100063508, &qword_10004E560);
  swift_allocObject();
  v24 = BiomeStreamReader.init(statusType:readerStream:)();
  v25 = *(v52 + 16);
  v25(v10, v4 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_ttl, v8);
  sub_100005E30(&qword_100063510, &unk_10004E568);
  v26 = swift_allocObject();
  v55[3] = v23;
  v55[4] = sub_100029F94();
  v55[0] = v24;
  v46 = v12;
  v27 = v12;
  v28 = v45;
  v29 = *(v27 + 16);
  v29(v26 + qword_100065530, v19, v11);
  sub_1000077E8(v56, v26 + qword_100065538);
  v47 = v10;
  v48 = v8;
  v25((v26 + qword_100065540), v10, v8);
  sub_1000077E8(v55, v26 + qword_100065548);
  static PeopleLogger.daemon.getter();
  v44 = v19;
  v29(v28, v19, v11);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v54 = v33;
    *v32 = 136315138;
    sub_10002A068(&qword_100062708, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v28;
    v37 = v36;
    v38 = *(v46 + 8);
    v38(v35, v11);
    v39 = sub_10002580C(v34, v37, &v54);

    *(v32 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "FamilyStatusEventProcessor for %s init", v32, 0xCu);
    sub_100003938(v33);

    (*(v52 + 8))(v47, v48);
    sub_100003938(v56);
    v38(v44, v11);
  }

  else
  {

    (*(v52 + 8))(v47, v48);
    sub_100003938(v56);
    v40 = *(v46 + 8);
    v40(v44, v11);
    v40(v28, v11);
  }

  (*(v50 + 8))(v53, v49);
  sub_100003938(v55);
  v41 = swift_allocObject();
  v42 = v51;
  *(v41 + 16) = v26;
  *(v41 + 24) = v42;
  sub_100005E30(&qword_100062700, &unk_10004D940);
  swift_allocObject();

  return Promise.init(startBlock:)();
}

uint64_t sub_1000294C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_10001E3F0(v8);

  sub_100005E78((a3 + qword_100065538), *(a3 + qword_100065538 + 24));
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = sub_100014D78;
  v9[4] = v7;

  dispatch thunk of FamilyMemberContactFetching.familyWithDSIDs(completion:)();
}

uint64_t sub_1000295DC()
{
  sub_100007E10(v0 + 16);

  v1 = OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_ttl;
  v2 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100003938((v0 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_indexer));
  sub_100003938((v0 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_contactFetcher));
  sub_100003938((v0 + OBJC_IVAR____TtC7peopled22ScreenTimeStatusSource_messageConduit));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScreenTimeStatusSource(uint64_t a1)
{
  result = qword_100063440;
  if (!qword_100063440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100029728(uint64_t a1)
{
  sub_100013A1C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000297E8@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StatusType.screenTimeRequest(_:);
  v3 = type metadata accessor for StatusType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10002985C(uint64_t a1)
{
  v2 = sub_10002A068(&qword_100062980, type metadata accessor for ScreenTimeStatusSource, &unk_10004E524);

  return StatusSource.debugID.getter(a1, v2);
}

uint64_t sub_1000298EC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for StatusType();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000299BC, 0, 0);
}

void sub_1000299BC()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = enum case for StatusType.screenTimeRequest(_:);
  v7 = *(v0[11] + 104);
  v7(v0[13], enum case for StatusType.screenTimeRequest(_:), v2);
  v17 = swift_allocObject();
  v0[14] = v17;
  *(v17 + 16) = v5;
  v8 = swift_allocObject();
  v0[15] = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  v7(v1, v6, v2);
  v9 = objc_opt_self();

  v10 = [v9 screenTimeRequestStream];
  v11 = sub_100005E30(&qword_100063508, &qword_10004E560);
  swift_allocObject();
  v12 = BiomeStreamReader.init(statusType:readerStream:)();
  v0[5] = v11;
  v13 = sub_100029F94();
  v0[2] = v12;
  v0[6] = v13;
  v15 = &async function pointer to dispatch thunk of ReindexCoordinator.reindex<A>(statusType:squashEvents:includeEvent:handleEvent:withReader:) + async function pointer to dispatch thunk of ReindexCoordinator.reindex<A>(statusType:squashEvents:includeEvent:handleEvent:withReader:);
  v14 = swift_task_alloc();
  v0[16] = v14;
  sub_100010734(0, &qword_100062D78, BMScreenTimeRequestEvent_ptr);
  *v14 = v0;
  v14[1] = sub_10001710C;

  __asm { BR              X8 }
}

uint64_t sub_100029C18(uint64_t a1)
{
  v2 = sub_100010734(0, &qword_100062D78, BMScreenTimeRequestEvent_ptr);

  return static BMStoreDataPeople.squashRequestEvents<A>(_:)(a1, v2);
}

uint64_t sub_100029C68(void *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = [a1 requestID];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v11[0] = v4;
    v11[1] = v6;
    __chkstk_darwin(v7);
    v10[2] = v11;
    v8 = sub_10001B0D0(sub_10002A294, v10, a2);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_100029D34(void *a1, uint64_t a2)
{
  v4 = ReindexCoordinator.indexer.getter();
  v10[3] = type metadata accessor for SpotlightIndexer();
  v10[4] = &protocol witness table for SpotlightIndexer;
  v10[0] = v4;
  sub_1000077E8(v10, v9);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_10000784C(v9, v5 + 32);
  *(v5 + 72) = 0;
  sub_100005E30(&qword_100062750, &qword_10004D990);
  swift_allocObject();
  v6 = a1;

  v7 = Promise.init(startBlock:)();
  sub_100003938(v10);
  return v7;
}

uint64_t sub_100029E4C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007CBC;

  return sub_1000298EC(a1, a2);
}

uint64_t sub_100029EF4(uint64_t a1)
{
  result = sub_10002A068(&qword_1000634F8, type metadata accessor for ScreenTimeStatusSource, &unk_10004E4A0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100029F94()
{
  result = qword_100063518;
  if (!qword_100063518)
  {
    sub_100010594(&qword_100063508, &qword_10004E560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063518);
  }

  return result;
}

uint64_t sub_10002A018()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002A068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002A0B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002A124()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A15C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002A1B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A1E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001ECE4;

  return sub_100028D24();
}

uint64_t sub_10002A2B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002A2FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007CBC;

  return sub_100027A0C(a1, v4, v5, v7, v6);
}

uint64_t sub_10002A3BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002A3FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007CBC;

  return sub_100026C4C(a1, v4, v5, v6);
}

uint64_t sub_10002A4B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A520()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A578()
{
  type metadata accessor for XPCEncoder();
  swift_allocObject();
  v0 = XPCEncoder.init()();
  type metadata accessor for XPCDecoder();
  swift_allocObject();
  *&v25 = v0;
  v24[0] = XPCDecoder.init()();
  sub_100005E30(&qword_100063600, &qword_10004E600);
  swift_allocObject();
  v1 = MessageDispatcher.init<A, B>(encoder:decoder:)();
  if (qword_1000623D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000654E0;
  v3 = AKAvailabilityStatusTypeIdentifier;
  v4 = objc_allocWithZone(SKStatusSubscriptionService);

  v5 = v3;
  v6 = [v4 initWithStatusTypeIdentifier:v5];

  v7 = [objc_allocWithZone(CHSWidgetConfigurationReader) init];
  v26 = sub_100010734(0, &unk_100062A20, CHSWidgetConfigurationReader_ptr);
  v27 = &protocol witness table for CHSWidgetConfigurationReader;
  *&v25 = v7;
  v8 = type metadata accessor for WidgetConfigurationReader();
  v9 = swift_allocObject();
  sub_10000784C(&v25, v9 + 16);
  v10 = type metadata accessor for ContactFetcher();
  v11 = static ContactFetcher.shared.getter();
  v26 = sub_100010734(0, &qword_100062A70, SKStatusSubscriptionService_ptr);
  v27 = &off_10005DAD0;
  *&v25 = v6;
  v24[3] = v8;
  v24[4] = &off_10005DBD0;
  v24[0] = v9;
  v22 = v10;
  v23 = &protocol witness table for ContactFetcher;
  *&v21 = v11;
  type metadata accessor for AvailabilitySubscriptionManager();
  v12 = swift_allocObject();
  v13 = sub_1000106B4(v24, v8);
  __chkstk_darwin(v13);
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v12[10] = v8;
  v12[11] = &off_10005DBD0;
  v12[7] = v17;
  sub_10000784C(&v25, (v12 + 2));
  sub_10000784C(&v21, (v12 + 12));
  sub_100003938(v24);
  v18 = sub_10002C89C(v1, v2, v12);

  qword_100065588 = v18;
  return result;
}

uint64_t sub_10002A898(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005B08;

  return sub_10002BD30(a1, v4, v5);
}

uint64_t sub_10002A930(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_10002AA28;

  return v7(a2);
}

uint64_t sub_10002AA28(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_10002AB38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002ABE0;

  return sub_10002D39C(a1, sub_10002D39C, v4);
}

uint64_t sub_10002ABE0(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_10002ACF0(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_10002ADE8;

  return v7(a2);
}

uint64_t sub_10002ADE8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_10002AF04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100030C9C;

  return sub_10002D5D0(a1);
}

uint64_t sub_10002AFAC(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_100030C98;

  return v7(a2);
}

uint64_t sub_10002B0A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002B14C;

  return sub_10002E5AC(a1);
}

uint64_t sub_10002B14C(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_10002B254(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100030C9C;

  return sub_10002F3CC(a1);
}

uint64_t sub_10002B2FC(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_10002B3F4;

  return v7(a2);
}

uint64_t sub_10002B3F4(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_10002B508(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31 = a3;
  v9 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v30 = a1;
    v21 = a2;
    v22 = a4;
    v23 = v20;
    v32 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_10002580C(0xD00000000000001DLL, 0x8000000100050DF0, &v32);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s", v19, 0xCu);
    sub_100003938(v23);
    a4 = v22;
    a2 = v21;
    a1 = v30;
  }

  (*(v13 + 8))(v15, v12);
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v25;
  v26[5] = a1;
  v27 = v31;
  v26[6] = a2;
  v26[7] = v27;
  v26[8] = a4;
  sub_10002C3C0(a1, a2);

  sub_100014EE4(0, 0, v11, &unk_10004E5F8, v26);
}

uint64_t sub_10002B7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  return _swift_task_switch(sub_10002B820, 0, 0);
}

uint64_t sub_10002B820()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    *(v0 + 112) = *(Strong + 16);

    *(v0 + 56) = v3;
    *(v0 + 64) = v2;
    v7 = (&async function pointer to dispatch thunk of MessageDispatcher.handleMessage(with:) + async function pointer to dispatch thunk of MessageDispatcher.handleMessage(with:));
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_10002B980;

    return v7(v0 + 40, v0 + 56);
  }

  else
  {
    (*(v0 + 96))(0, 0xF000000000000000, 0);
    sub_10002C414(0, 0xF000000000000000);
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10002B980()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10002BB38;
  }

  else
  {
    v2 = sub_10002BAB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002BAB0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  (*(v0 + 96))(v1, v2, 0);
  sub_10002C414(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10002BB38()
{
  v1 = v0[16];
  v2 = v0[12];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

void sub_10002BC98(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_10002BD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = v3;
  v5 = type metadata accessor for Logger();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_10002BDF0, 0, 0);
}

uint64_t sub_10002BDF0(uint64_t a1)
{
  static PeopleLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "handling fetch contacts status message", v4, 2u);
  }

  v6 = v1[5];
  v5 = v1[6];
  v8 = v1[3];
  v7 = v1[4];

  (*(v6 + 8))(v5, v7);
  sub_100005E78((v8 + 24), *(v8 + 48));
  ContactsStatus = FetchContactsStatusMessage.contactIDs.getter();
  v1[7] = ContactsStatus;
  v10 = FetchContactsStatusMessage.types.getter();
  v1[8] = v10;
  v11 = swift_task_alloc();
  v1[9] = v11;
  *v11 = v1;
  v11[1] = sub_10002BF5C;

  return sub_100009BB8(ContactsStatus, v10);
}

uint64_t sub_10002BF5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 80) = a1;

    return _swift_task_switch(sub_10002C0F4, 0, 0);
  }
}

uint64_t sub_10002C0F4()
{
  sub_100005E78((*(v0 + 24) + 64), *(*(v0 + 24) + 88));
  sub_10001FE6C();

  v1 = Dictionary<>.typeErased()();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10002C19C()
{

  sub_100003938((v0 + 24));
  sub_100003938((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_10002C208()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C240()
{
  swift_unknownObjectRelease();

  sub_10002C290(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002C290(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10002C2E4(uint64_t a1)
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
  v11[1] = sub_100007CBC;

  return sub_10002B7F8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10002C3C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10002C414(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10002C290(result, a2);
  }

  return result;
}

uint64_t sub_10002C428()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = type metadata accessor for StatusManager();
  v15[4] = &off_10005DBF8;
  v15[0] = a2;
  v14[3] = type metadata accessor for AvailabilitySubscriptionManager();
  v14[4] = &off_10005E1F0;
  v14[0] = a3;
  *(a4 + 16) = a1;
  sub_1000077E8(v15, a4 + 24);
  sub_1000077E8(v14, a4 + 64);
  type metadata accessor for FetchContactsStatusMessage();
  v8 = swift_allocObject();
  *(v8 + 16) = &unk_10004E610;
  *(v8 + 24) = a4;
  sub_100030C3C(&qword_100063608, &type metadata accessor for FetchContactsStatusMessage, &protocol conformance descriptor for FetchContactsStatusMessage);

  dispatch thunk of MessageDispatcher.registerHandler<A>(for:_:)();

  type metadata accessor for PingMessage();
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_10004E630;
  *(v9 + 24) = a4;
  sub_100030C3C(&qword_100063610, &type metadata accessor for PingMessage, &protocol conformance descriptor for PingMessage);

  dispatch thunk of MessageDispatcher.registerHandler<A>(for:_:)();

  type metadata accessor for FamilyWillSendScreenTimeMessage();
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_10004E650;
  *(v10 + 24) = a4;
  sub_100030C3C(&qword_100063618, &type metadata accessor for FamilyWillSendScreenTimeMessage, &protocol conformance descriptor for FamilyWillSendScreenTimeMessage);

  dispatch thunk of MessageDispatcher.registerHandler<A>(for:_:)();

  type metadata accessor for FamilyWillSendAskToBuyMessage();
  v11 = swift_allocObject();
  *(v11 + 16) = &unk_10004E670;
  *(v11 + 24) = a4;
  sub_100030C3C(&qword_100063620, &type metadata accessor for FamilyWillSendAskToBuyMessage, &protocol conformance descriptor for FamilyWillSendAskToBuyMessage);

  dispatch thunk of MessageDispatcher.registerHandler<A>(for:_:)();

  type metadata accessor for FamilyATBSendIMessage();
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_10004E690;
  *(v12 + 24) = a4;
  sub_100030C3C(&qword_100063628, &type metadata accessor for FamilyATBSendIMessage, &protocol conformance descriptor for FamilyATBSendIMessage);

  dispatch thunk of MessageDispatcher.registerHandler<A>(for:_:)();

  sub_100003938(v14);
  sub_100003938(v15);
  return a4;
}

uint64_t sub_10002C89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = type metadata accessor for StatusManager();
  v22 = &off_10005DBF8;
  v20[0] = a2;
  v18 = type metadata accessor for AvailabilitySubscriptionManager();
  v19 = &off_10005E1F0;
  v17[0] = a3;
  type metadata accessor for ServiceDelegate();
  v6 = swift_allocObject();
  v7 = sub_1000106B4(v20, v21);
  __chkstk_darwin(v7);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_1000106B4(v17, v18);
  __chkstk_darwin(v11);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_10002C468(a1, *v9, *v13, v6);
  sub_100003938(v17);
  sub_100003938(v20);
  return v15;
}

uint64_t sub_10002CA7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002CB14;

  return sub_10002A898(a1);
}

uint64_t sub_10002CB14(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10002CC10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002CC48(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001ECE4;

  return sub_10002A930(a1, a2, v6);
}

uint64_t sub_10002CD10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002CDA8;

  return sub_10002AB38(a1);
}

uint64_t sub_10002CDA8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_10002CEB4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100007CBC;

  return sub_10002ACF0(a1, a2, v6);
}

uint64_t sub_10002CF7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100030C94;

  return sub_10002AF04(a1);
}

uint64_t sub_10002D014(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001ECE4;

  return sub_10002AFAC(a1, a2, v6);
}

uint64_t sub_10002D0DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002CB14;

  return sub_10002B0A4(a1);
}

uint64_t sub_10002D174(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001ECE4;

  return sub_10002AFAC(a1, a2, v6);
}

uint64_t sub_10002D23C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100030C94;

  return sub_10002B254(a1);
}

uint64_t sub_10002D2D4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001ECE4;

  return sub_10002B2FC(a1, a2, v6);
}

uint64_t sub_10002D39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v3[2] = v4;
  v3[3] = *(v4 - 8);
  v3[4] = swift_task_alloc();

  return _swift_task_switch(sub_10002D458, 0, 0);
}

uint64_t sub_10002D458(uint64_t a1)
{
  v13 = v1;
  static PeopleLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10002580C(0xD000000000000015, 0x8000000100050EB0, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100003938(v9);
  }

  (*(v6 + 8))(v5, v7);

  v10 = v1[1];

  return v10(1735290736, 0xE400000000000000);
}

uint64_t sub_10002D5D0(uint64_t a1)
{
  v1[2] = a1;
  sub_100005E30(&qword_100063630, &qword_10004E6B0);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for AskToMetrics.RequestJourneyCheckpoint();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for AskToMetrics();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_10002D7B0, 0, 0);
}

uint64_t sub_10002D7B0()
{
  v19 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  FamilyWillSendScreenTimeMessage.isCallerAskToProcess.getter();
  AskToMetrics.init(isAskToProcess:)();
  v4 = enum case for AskToMetrics.RequestJourneyCheckpoint.daemonReceivedCanSendCall(_:);
  v5 = *(v2 + 104);
  v0[17] = v5;
  v0[18] = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1, v4, v3);
  AskToMetrics.logScreenTimeMoreTimeRequestCheckpoint(_:)();
  v6 = *(v2 + 8);
  v0[19] = v6;
  v0[20] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  static PeopleLogger.daemon.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  v11 = v0[4];
  v12 = v0[5];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10002580C(0xD000000000000029, 0x8000000100050E80, &v18);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v13, 0xCu);
    sub_100003938(v14);
  }

  v15 = *(v12 + 8);
  v15(v10, v11);
  v0[21] = v15;
  sub_100010734(0, &qword_100063638, FAFamilyCircle_ptr);
  v16 = swift_task_alloc();
  v0[22] = v16;
  *v16 = v0;
  v16[1] = sub_10002D9EC;

  return static FAFamilyCircle.fetch()();
}

uint64_t sub_10002D9EC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_10002E4C8;
  }

  else
  {
    v4 = sub_10002DB00;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002DB00(uint64_t a1)
{
  v2 = *(v1 + 184);
  if (v2)
  {
    v3 = *(v1 + 152);
    v4 = *(v1 + 104);
    v5 = *(v1 + 88);
    (*(v1 + 136))(v4, enum case for AskToMetrics.RequestJourneyCheckpoint.familyCircleFetchSucceeded(_:), v5);
    AskToMetrics.logScreenTimeMoreTimeRequestCheckpoint(_:)();
    v3(v4, v5);
    v6 = FAFamilyCircle.requestingFamilyMember.getter();
    *(v1 + 200) = v6;
    if (v6)
    {
      v7 = v6;
      v8 = *(v1 + 152);
      v9 = *(v1 + 104);
      v10 = *(v1 + 88);
      (*(v1 + 136))(v9, enum case for AskToMetrics.RequestJourneyCheckpoint.familyCircleHasRequester(_:), v10);
      AskToMetrics.logScreenTimeMoreTimeRequestCheckpoint(_:)();
      v8(v9, v10);
      v11 = FAFamilyCircle.approvers.getter();
      *(v1 + 208) = v11;
      if (v11)
      {
        v12 = v11;
        v13 = *(v1 + 152);
        v14 = *(v1 + 104);
        v15 = *(v1 + 88);
        v16 = *(v1 + 24);
        (*(v1 + 136))(v14, enum case for AskToMetrics.RequestJourneyCheckpoint.familyCircleHasApprovers(_:), v15);
        AskToMetrics.logScreenTimeMoreTimeRequestCheckpoint(_:)();
        v13(v14, v15);
        type metadata accessor for MessageSendRules();
        *(v1 + 216) = static MessageSendRules.sharedInstance.getter();
        v17 = type metadata accessor for DiscoveredHandles();
        (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
        v51 = (&async function pointer to dispatch thunk of MessageSendRules.willSendScreenTimeRequest(from:to:client:askToMetrics:discoveredHandles:) + async function pointer to dispatch thunk of MessageSendRules.willSendScreenTimeRequest(from:to:client:askToMetrics:discoveredHandles:));
        v18 = swift_task_alloc();
        *(v1 + 224) = v18;
        *v18 = v1;
        v18[1] = sub_10002E0A4;
        v19 = *(v1 + 128);
        v20 = *(v1 + 24);

        return v51(v7, v12, 1, v19, v20);
      }

      static PeopleLogger.daemon.getter();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      v43 = os_log_type_enabled(v41, v42);
      v44 = *(v1 + 120);
      v45 = *(v1 + 128);
      v50 = *(v1 + 168);
      v53 = *(v1 + 112);
      v46 = *(v1 + 64);
      v47 = *(v1 + 32);
      if (v43)
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Failed to get approvers for logged in user", v48, 2u);
      }

      v50(v46, v47);
      (*(v44 + 8))(v45, v53);
    }

    else
    {
      static PeopleLogger.daemon.getter();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v1 + 168);
      v37 = *(v1 + 120);
      v36 = *(v1 + 128);
      v52 = *(v1 + 112);
      v38 = *(v1 + 56);
      v39 = *(v1 + 32);
      if (v34)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Failed to get requesting Family member for logged in user", v40, 2u);
      }

      v35(v38, v39);
      (*(v37 + 8))(v36, v52);
    }
  }

  else
  {
    static PeopleLogger.daemon.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v1 + 168);
    v27 = *(v1 + 120);
    v26 = *(v1 + 128);
    v28 = *(v1 + 112);
    v29 = *(v1 + 48);
    v30 = *(v1 + 32);
    if (v24)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to fetch FamilyCircle", v31, 2u);
    }

    v25(v29, v30);
    (*(v27 + 8))(v26, v28);
  }

  v49 = *(v1 + 8);

  return v49(0);
}

uint64_t sub_10002E0A4(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 232) = a1;

  sub_100030BD4(v2);

  return _swift_task_switch(sub_10002E204, 0, 0);
}

uint64_t sub_10002E204(uint64_t a1)
{
  v35 = v1;
  v2 = *(v1 + 184);
  static PeopleLogger.daemon.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v26 = *(v1 + 232);
    v6 = *(v1 + 184);
    v7 = *(v1 + 120);
    v32 = *(v1 + 128);
    v30 = *(v1 + 168);
    v31 = *(v1 + 112);
    v27 = *(v1 + 200);
    v28 = *(v1 + 32);
    v29 = *(v1 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136315394;
    v10 = v6;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002580C(v12, v14, &v34);

    *(v8 + 4) = v15;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetched family %s willSend: %{BOOL}d", v8, 0x12u);
    sub_100003938(v9);

    v30(v29, v28);
    (*(v7 + 8))(v32, v31);
  }

  else
  {
    v16 = *(v1 + 200);
    v17 = *(v1 + 184);
    v18 = *(v1 + 168);
    v19 = *(v1 + 120);
    v33 = *(v1 + 128);
    v20 = *(v1 + 112);
    v21 = *(v1 + 72);
    v22 = *(v1 + 32);

    v18(v21, v22);
    (*(v19 + 8))(v33, v20);
  }

  v23 = *(v1 + 232);

  v24 = *(v1 + 8);

  return v24(v23);
}

uint64_t sub_10002E4C8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_10002E5AC(uint64_t a1)
{
  v1[2] = a1;
  sub_100005E30(&qword_100063630, &qword_10004E6B0);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for AskToMetrics();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10002E730, 0, 0);
}

uint64_t sub_10002E730()
{
  v13 = v0;
  FamilyWillSendAskToBuyMessage.isCallerAskToProcess.getter();
  AskToMetrics.init(isAskToProcess:)();
  static PeopleLogger.daemon.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[10];
  v5 = v0[4];
  v6 = v0[5];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10002580C(0xD000000000000027, 0x8000000100050E50, &v12);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v7, 0xCu);
    sub_100003938(v8);
  }

  v9 = *(v6 + 8);
  v9(v4, v5);
  v0[14] = v9;
  sub_100010734(0, &qword_100063638, FAFamilyCircle_ptr);
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_10002E904;

  return static FAFamilyCircle.fetch()();
}

uint64_t sub_10002E904(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_10002F2F4;
  }

  else
  {
    v4 = sub_10002EA18;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002EA18(uint64_t a1)
{
  v2 = v1[16];
  if (v2)
  {
    v3 = FAFamilyCircle.requestingFamilyMember.getter();
    v1[18] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = FAFamilyCircle.approvers.getter();
      v1[19] = v5;
      if (v5)
      {
        v6 = v5;
        v7 = v1[3];
        type metadata accessor for MessageSendRules();
        v1[20] = static MessageSendRules.sharedInstance.getter();
        v8 = type metadata accessor for DiscoveredHandles();
        (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
        v42 = (&async function pointer to dispatch thunk of MessageSendRules.willSendAskToBuyRequest(from:to:client:askToMetrics:discoveredHandles:) + async function pointer to dispatch thunk of MessageSendRules.willSendAskToBuyRequest(from:to:client:askToMetrics:discoveredHandles:));
        v9 = swift_task_alloc();
        v1[21] = v9;
        *v9 = v1;
        v9[1] = sub_10002EEE4;
        v10 = v1[13];
        v11 = v1[3];

        return v42(v4, v6, 1, v10, v11);
      }

      static PeopleLogger.daemon.getter();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v1[13];
      v36 = v1[12];
      v41 = v1[14];
      v44 = v1[11];
      v37 = v1[8];
      v38 = v1[4];
      if (v34)
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Failed to get approvers for logged in user", v39, 2u);
      }

      v41(v37, v38);
      (*(v36 + 8))(v35, v44);
    }

    else
    {
      static PeopleLogger.daemon.getter();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v25 = os_log_type_enabled(v23, v24);
      v27 = v1[13];
      v26 = v1[14];
      v28 = v1[12];
      v43 = v1[11];
      v29 = v1[7];
      v30 = v1[4];
      if (v25)
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to get requesting Family member for logged in user", v31, 2u);
      }

      v26(v29, v30);
      (*(v28 + 8))(v27, v43);
    }
  }

  else
  {
    static PeopleLogger.daemon.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v1[13];
    v17 = v1[14];
    v18 = v1[11];
    v19 = v1[12];
    v20 = v1[6];
    v21 = v1[4];
    if (v15)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to fetch FamilyCircle", v22, 2u);
    }

    v17(v20, v21);
    (*(v19 + 8))(v16, v18);
  }

  v40 = v1[1];

  return v40(0);
}

uint64_t sub_10002EEE4(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 176) = a1;

  sub_100030BD4(v2);

  return _swift_task_switch(sub_10002F044, 0, 0);
}

uint64_t sub_10002F044(uint64_t a1)
{
  v35 = v1;
  v2 = *(v1 + 128);
  static PeopleLogger.daemon.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v26 = *(v1 + 176);
    v6 = *(v1 + 128);
    v32 = *(v1 + 104);
    v7 = *(v1 + 96);
    v30 = *(v1 + 112);
    v31 = *(v1 + 88);
    v27 = *(v1 + 144);
    v28 = *(v1 + 32);
    v29 = *(v1 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136315394;
    v10 = v6;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002580C(v12, v14, &v34);

    *(v8 + 4) = v15;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetched family %s willSend: %{BOOL}d", v8, 0x12u);
    sub_100003938(v9);

    v30(v29, v28);
    (*(v7 + 8))(v32, v31);
  }

  else
  {
    v16 = *(v1 + 144);
    v17 = *(v1 + 128);
    v18 = *(v1 + 112);
    v33 = *(v1 + 104);
    v19 = *(v1 + 88);
    v20 = *(v1 + 96);
    v21 = *(v1 + 72);
    v22 = *(v1 + 32);

    v18(v21, v22);
    (*(v20 + 8))(v33, v19);
  }

  v23 = *(v1 + 176);

  v24 = *(v1 + 8);

  return v24(v23);
}

uint64_t sub_10002F2F4()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_10002F3CC(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for MessageDetails.EventSource();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_100005E30(&qword_100063630, &qword_10004E6B0);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for ResolvedFamily();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v5 = type metadata accessor for AskToMetrics();
  v1[25] = v5;
  v1[26] = *(v5 - 8);
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_10002F62C, 0, 0);
}

uint64_t sub_10002F62C()
{
  v13 = v0;
  FamilyATBSendIMessage.isCallerAskToProcess.getter();
  AskToMetrics.init(isAskToProcess:)();
  static PeopleLogger.daemon.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[24];
  v5 = v0[16];
  v6 = v0[17];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10002580C(0xD00000000000001FLL, 0x8000000100050E30, &v12);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v7, 0xCu);
    sub_100003938(v8);
  }

  v9 = *(v6 + 8);
  v9(v4, v5);
  v0[28] = v9;
  sub_100010734(0, &qword_100063638, FAFamilyCircle_ptr);
  v10 = swift_task_alloc();
  v0[29] = v10;
  *v10 = v0;
  v10[1] = sub_10002F800;

  return static FAFamilyCircle.fetch()();
}

uint64_t sub_10002F800(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = sub_100030ABC;
  }

  else
  {
    v4 = sub_10002F914;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002F914(uint64_t a1)
{
  v2 = v1[30];
  if (v2)
  {
    v3 = FAFamilyCircle.requestingFamilyMember.getter();
    v1[32] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = FAFamilyCircle.approvers.getter();
      v1[33] = v5;
      if (v5)
      {
        v6 = v5;
        v7 = v1[11];
        v8 = v4;

        ResolvedFamily.init(requestingFamilyMember:actionFamilyMember:approvers:)();
        type metadata accessor for MessageSendRules();
        v1[34] = static MessageSendRules.sharedInstance.getter();
        v9 = type metadata accessor for DiscoveredHandles();
        (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
        v43 = (&async function pointer to dispatch thunk of MessageSendRules.willSendAskToBuyRequest(from:to:client:askToMetrics:discoveredHandles:) + async function pointer to dispatch thunk of MessageSendRules.willSendAskToBuyRequest(from:to:client:askToMetrics:discoveredHandles:));
        v10 = swift_task_alloc();
        v1[35] = v10;
        *v10 = v1;
        v10[1] = sub_10002FE3C;
        v11 = v1[27];
        v12 = v1[11];

        return v43(v8, v6, 1, v11, v12);
      }

      static PeopleLogger.daemon.getter();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v1[27];
      v37 = v1[26];
      v42 = v1[28];
      v45 = v1[25];
      v38 = v1[20];
      v39 = v1[16];
      if (v35)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Failed to get approvers for logged in user", v40, 2u);
      }

      v42(v38, v39);
      (*(v37 + 8))(v36, v45);
    }

    else
    {
      static PeopleLogger.daemon.getter();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      v26 = os_log_type_enabled(v24, v25);
      v28 = v1[27];
      v27 = v1[28];
      v29 = v1[26];
      v44 = v1[25];
      v30 = v1[19];
      v31 = v1[16];
      if (v26)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Failed to get requesting Family member for logged in user", v32, 2u);
      }

      v27(v30, v31);
      (*(v29 + 8))(v28, v44);
    }
  }

  else
  {
    static PeopleLogger.daemon.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v1[27];
    v18 = v1[28];
    v19 = v1[25];
    v20 = v1[26];
    v21 = v1[18];
    v22 = v1[16];
    if (v16)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to fetch FamilyCircle", v23, 2u);
    }

    v18(v21, v22);
    (*(v20 + 8))(v17, v19);
  }

  v41 = v1[1];

  return v41(0);
}

uint64_t sub_10002FE3C(char a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 328) = a1;

  sub_100030BD4(v2);

  return _swift_task_switch(sub_10002FF9C, 0, 0);
}

uint64_t sub_10002FF9C(uint64_t a1)
{
  if (*(v1 + 328) == 1)
  {
    v3 = *(v1 + 112);
    v2 = *(v1 + 120);
    v4 = *(v1 + 96);
    v5 = *(v1 + 104);
    v6 = *(v1 + 72);
    v7 = *(v1 + 80);
    v8 = *(v1 + 64);
    v32 = FamilyATBSendIMessage.requestID.getter();
    v10 = v9;
    (*(v6 + 104))(v7, enum case for MessageDetails.EventSource.askToBuy(_:), v8);
    (*(v5 + 16))(v3, v2, v4);
    v11 = type metadata accessor for MessageConduit();
    swift_allocObject();
    v12 = MessageConduit.init()();
    *(v1 + 40) = v11;
    *(v1 + 48) = &protocol witness table for MessageConduit;
    *(v1 + 16) = v12;
    type metadata accessor for RequestMessageSender(0);
    swift_allocObject();
    v13 = swift_task_alloc();
    *(v1 + 288) = v13;
    *v13 = v1;
    v13[1] = sub_1000302FC;
    v14 = *(v1 + 112);
    v15 = *(v1 + 80);

    return sub_1000227AC(v32, v10, v15, v14, v1 + 16);
  }

  else
  {
    static PeopleLogger.daemon.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v1 + 240);
    v22 = *(v1 + 216);
    v21 = *(v1 + 224);
    v24 = *(v1 + 200);
    v23 = *(v1 + 208);
    v29 = *(v1 + 256);
    v30 = *(v1 + 128);
    v25 = *(v1 + 120);
    v26 = *(v1 + 104);
    v31 = *(v1 + 96);
    v33 = *(v1 + 168);
    if (v19)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "iMessage config/device config prevents ATB iMessage send", v27, 2u);

      v20 = v29;
    }

    else
    {

      v17 = v29;
    }

    v21(v33, v30);
    (*(v26 + 8))(v25, v31);
    (*(v23 + 8))(v22, v24);

    v28 = *(v1 + 8);

    return v28(0);
  }
}

uint64_t sub_1000302FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v4 = sub_100030410;
  }

  else
  {
    v4 = sub_100030680;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100030410(uint64_t a1)
{
  v2 = v1[30];
  v16 = v1[27];
  v3 = v1[26];
  v14 = v1[28];
  v15 = v1[25];
  v4 = v1[23];
  v10 = v1[16];
  v11 = v1[32];
  v5 = v1[13];
  v12 = v1[12];
  v13 = v1[15];
  static PeopleLogger.daemon.getter();
  swift_errorRetain();
  _StringGuts.grow(_:)(34);

  type metadata accessor for FamilyATBSendIMessage();
  sub_100030C3C(&qword_100063640, &type metadata accessor for FamilyATBSendIMessage, &protocol conformance descriptor for FamilyATBSendIMessage);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 4203808;
  v7._object = 0xE300000000000000;
  String.append(_:)(v7);
  Logger.ifError(_:message:)();

  v14(v4, v10);
  (*(v5 + 8))(v13, v12);
  (*(v3 + 8))(v16, v15);

  v8 = v1[1];

  return v8(0);
}

uint64_t sub_100030680()
{

  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v1[1] = sub_10003071C;

  return sub_100023238(v1, v2, v3);
}

uint64_t sub_10003071C(uint64_t a1)
{
  *(*v1 + 320) = a1;

  return _swift_task_switch(sub_10003083C, 0, 0);
}

uint64_t sub_10003083C(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[23];
  v4 = v1[16];
  static PeopleLogger.daemon.getter();
  Logger.ifError(_:message:)();
  v2(v3, v4);
  static PeopleLogger.daemon.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[40];
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v7 == 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "iMessage ATB iMessage send result %{BOOL}d", v8, 8u);
  }

  v9 = v1[40];
  v10 = v1[32];
  v11 = v1[30];
  v22 = v1[27];
  v12 = v1[26];
  v20 = v1[28];
  v21 = v1[25];
  v13 = v1[22];
  v14 = v1[16];
  v19 = v1[15];
  v16 = v1[12];
  v15 = v1[13];

  v20(v13, v14);
  (*(v15 + 8))(v19, v16);
  (*(v12 + 8))(v22, v21);

  v17 = v1[1];

  return v17(v9 == 0);
}

uint64_t sub_100030ABC()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_100030BD4(uint64_t a1)
{
  v2 = sub_100005E30(&qword_100063630, &qword_10004E6B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100030C3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100030CA0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_100030CC4, 0, 0);
}

uint64_t sub_100030CC4()
{
  v1 = v0[20];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[21] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100030E00;
  v3 = swift_continuation_init();
  v0[17] = sub_100005E30(&qword_100063860, &unk_10004E8D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100030F0C;
  v0[13] = &unk_10005E9A0;
  v0[14] = v3;
  [v1 grabUnreadFor:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100030E00()
{
  v4 = *v0;
  v1 = *(*v0 + 144);

  v2 = *(v4 + 8);

  return v2(v1);
}

uint64_t sub_100030F0C(uint64_t a1, uint64_t a2)
{
  v2 = *sub_100005E78((a1 + 32), *(a1 + 56));
  sub_10003558C();
  **(*(v2 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v2);
}

uint64_t sub_100030F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = v3;
  v4[2] = a1;
  v5 = type metadata accessor for Logger();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = sub_100005E30(&qword_100063840, &qword_10004E888);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100031080, 0, 0);
}

uint64_t sub_100031080()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_allocObject();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_100031180;
  v6 = v0[8];
  v5 = v0[9];

  return withTimeout<A>(after:_:)(v5, 1000000000000000000, 0, &unk_10004E8C8, v3, v6);
}

uint64_t sub_100031180()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100031338;
  }

  else
  {

    v2 = sub_10003129C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003129C()
{
  v1 = v0[9];
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  sub_1000354F0(v1 + *(v0[8] + 64), v0[2]);

  v5 = v0[1];

  return v5(v3, v2, v4);
}

uint64_t sub_100031338()
{

  static PeopleLogger.daemon.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "MessageFetcher getLastReceivedMessage timed out", v3, 2u);
  }

  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v7 = v0[2];

  (*(v5 + 8))(v4, v6);

  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

  v9 = v0[1];

  return v9(0, 0xE000000000000000, 0);
}

uint64_t sub_1000314B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100031574, 0, 0);
}

uint64_t sub_100031574()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[6];
  sub_100005E78(v1 + 2, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1000316A4;
  v5 = v0[4];

  return v7(v5, v2, v3);
}

uint64_t sub_1000316A4(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1000317A4, 0, 0);
}

unint64_t sub_1000317A4()
{
  v36 = v0;
  v1 = v0[9];
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
LABEL_3:
      v4 = __OFSUB__(v3, 1);
      result = v3 - 1;
      if (v4)
      {
        __break(1u);
      }

      else if ((v1 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v6 = *(v0[9] + 8 * result + 32);
LABEL_8:
          static PeopleLogger.daemon.getter();
          swift_bridgeObjectRetain_n();
          v7 = v6;
          v8 = Logger.logObject.getter();
          v9 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v8, v9))
          {
            v10 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v35 = v34;
            *v10 = 136315394;
            v11 = [v7 text];
            v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v14 = v13;

            v15 = sub_10002580C(v12, v14, &v35);

            *(v10 + 4) = v15;
            *(v10 + 12) = 2048;
            if (v1 >> 62)
            {
              v16 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v16 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v21 = v0[6];
            v20 = v0[7];
            v33 = v0[5];

            *(v10 + 14) = v16;

            _os_log_impl(&_mh_execute_header, v8, v9, "lastReceivedMessage %s out of %ld", v10, 0x16u);
            sub_100003938(v34);

            (*(v21 + 8))(v20, v33);
            v2 = v1 >> 62;
          }

          else
          {
            v18 = v0[6];
            v17 = v0[7];
            v19 = v0[5];
            swift_bridgeObjectRelease_n();

            (*(v18 + 8))(v17, v19);
          }

          v22 = v0[2];
          v23 = [v7 text];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v24 = String.trim()();

          *v22 = v24;
          if (v2)
          {
            v25 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v25 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v26 = v0[2];

          v27 = (v26 + *(sub_100005E30(&qword_100063840, &qword_10004E888) + 64));
          *(v26 + 16) = v25;
          v28 = [v7 date];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v29 = 0;
          goto LABEL_20;
        }

        __break(1u);
        return result;
      }

      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_8;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v30 = v0[2];

  v27 = v30 + *(sub_100005E30(&qword_100063840, &qword_10004E888) + 64);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v30[2] = 0;
  v29 = 1;
LABEL_20:
  v31 = type metadata accessor for Date();
  (*(*(v31 - 8) + 56))(v27, v29, 1, v31);

  v32 = v0[1];

  return v32();
}

uint64_t sub_100031BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  *(v3 + 16) = v5;
  *(v3 + 24) = *(v5 - 8);
  *(v3 + 32) = swift_task_alloc();
  v6 = sub_100005E30(&qword_100063840, &qword_10004E888);
  *(v3 + 40) = v6;
  *(v3 + 48) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v3 + 56) = v7;
  v8 = *(v6 + 64);
  *(v3 + 96) = v8;
  v10 = swift_task_alloc();
  *(v3 + 64) = v10;
  *v10 = v3;
  v10[1] = sub_100031D1C;

  return sub_100030F80(v7 + v8, a1, v9);
}

uint64_t sub_100031D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = a3;

  return _swift_task_switch(sub_100031E20, 0, 0);
}

uint64_t sub_100031E20()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 56);
  *v3 = *(v0 + 72);
  *(v3 + 16) = v1;
  v4 = type metadata accessor for Date();
  if ((*(*(v4 - 8) + 48))(v3 + v2, 1, v4) == 1)
  {
    if (*(v0 + 88) >= 1)
    {
      static PeopleLogger.common.getter();
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      v7 = os_log_type_enabled(v5, v6);
      v9 = *(v0 + 24);
      v8 = *(v0 + 32);
      v10 = *(v0 + 16);
      if (v7)
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "No time in last unread message!", v11, 2u);
      }

      (*(v9 + 8))(v8, v10);
    }

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 48);
    v14 = *(v0 + 40);
    sub_100035130(*(v0 + 56), v13);

    v12 = *(v13 + 16);
    sub_100007DB0(v13 + *(v14 + 64), &qword_100062738, &qword_10004D970);
  }

  sub_100007DB0(*(v0 + 56), &qword_100063840, &qword_10004E888);

  v15 = *(v0 + 8);

  return v15(v12);
}

uint64_t sub_100032028()
{
  if (*(v0 + 144))
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v1 = 0xE000000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
    v2 = 4271950;
  }

  _StringGuts.grow(_:)(53);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x8000000100050F80;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._object = 0x8000000100050FA0;
  v4._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v2;
  v5._object = v1;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 10506;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t sub_10003217C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "Got BMReadMessageEvent: %@", v13, 0xCu);
    sub_100007DB0(v14, &qword_100062758, &unk_10004E8A0);
  }

  (*(v7 + 8))(v9, v6);
  sub_100005E30(&qword_100062930, &qword_10004DB40);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10004D790;
  v17 = [v10 idsHandle];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  v21 = [v10 markedUnread];
  sub_100005E30(&qword_100062750, &qword_10004D990);
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  *(v22 + 24) = v4;
  *(v22 + 32) = v21;

  return Promise.__allocating_init(_:)();
}

uint64_t sub_1000323F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 216) = a4;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  v5 = type metadata accessor for Logger();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  v6 = type metadata accessor for StatusType();
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 - 8);
  *(v4 + 104) = swift_task_alloc();
  sub_100005E30(&qword_100062A80, &qword_10004ED60);
  *(v4 + 112) = swift_task_alloc();
  sub_100005E30(&qword_100062738, &qword_10004D970);
  *(v4 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100032584, 0, 0);
}

uint64_t sub_100032584()
{
  v1 = v0[7];
  v2 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[16] = [v2 predicateForContactsMatchingHandleStrings:isa];

  sub_100005E78((v1 + 64), *(v1 + 88));
  v4 = dispatch thunk of ContactFetcherProtocol.contacts(withPredicate:includeImages:)();
  v0[17] = 0;
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_17;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v6; i = v0)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v0 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v9 identifier];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100022130(0, *(v8 + 2) + 1, 1, v8);
      }

      v16 = *(v8 + 2);
      v15 = *(v8 + 3);
      if (v16 >= v15 >> 1)
      {
        v8 = sub_100022130((v15 > 1), v16 + 1, 1, v8);
      }

      *(v8 + 2) = v16 + 1;
      v17 = &v8[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
      ++v7;
      if (v0 == v6)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_19:
  i[18] = v8;
  v18 = *(i + 216);

  if (v18)
  {
    sub_100005E78((i[7] + 24), *(i[7] + 48));
    dispatch thunk of LaunchRecordReaderProtocol.reload()();
    type metadata accessor for LaunchRecorderWriter();
    i[19] = static LaunchRecorderWriter.sharedInstance.getter();
    sub_100035368(&qword_100063858, 255, &type metadata accessor for LaunchRecorderWriter, &protocol conformance descriptor for LaunchRecorderWriter);
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    i[20] = v20;
    i[21] = v19;

    return _swift_task_switch(sub_100032C8C, v20, v19);
  }

  else
  {
    if (*(i[18] + 16))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_10001DB48(i[7], i[18], Strong);
        swift_unknownObjectRelease();
      }

      v22 = i[14];

      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      sub_100014EE4(0, 0, v22, &unk_10004E8B8, v24);
    }

    else
    {
    }

    v25 = i[16];
    v26 = i[13];
    v27 = i[11];
    v28 = i[12];
    type metadata accessor for PeopleAnalytics();
    (*(v28 + 104))(v26, enum case for StatusType.readMessage(_:), v27);
    static PeopleAnalytics.eventReceived(foundContacts:statusType:)();

    (*(v28 + 8))(v26, v27);

    v29 = i[1];

    return v29();
  }
}