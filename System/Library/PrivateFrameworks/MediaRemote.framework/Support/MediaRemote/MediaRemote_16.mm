Swift::Int sub_1002652E8(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_10026534C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_100265398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v5 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v6 = __chkstk_darwin(v5 - 8);
  v79 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v65 - v8;
  v10 = sub_1001BC5A8(&qword_100523C28, &qword_100451AF8);
  v11 = __chkstk_darwin(v10 - 8);
  v69 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v75 = &v65 - v14;
  __chkstk_darwin(v13);
  v16 = &v65 - v15;
  v17 = type metadata accessor for RoutingSession();
  v74 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v72 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v71 = &v65 - v21;
  v22 = __chkstk_darwin(v20);
  v78 = &v65 - v23;
  __chkstk_darwin(v22);
  v73 = &v65 - v24;
  v25 = sub_1001BC5A8(&qword_100523C30, &qword_100451B00);
  __chkstk_darwin(v25 - 8);
  v27 = &v65 - v26;
  v28 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v32;
  sub_10001D9AC(a1, v27, &qword_100523C30, &qword_100451B00);
  if ((*(v29 + 48))(v27, 1, v33) == 1)
  {
    v34 = type metadata accessor for RoutingSessionConfiguration();
    (*(*(v34 - 8) + 8))(v70, v34);
    sub_1000038A4(a1, &qword_100523C30, &qword_100451B00);
    sub_1000038A4(v27, &qword_100523C30, &qword_100451B00);
    v35 = 1;
LABEL_28:
    v64 = type metadata accessor for RoutingSessionSnapshot();
    return (*(*(v64 - 8) + 56))(a3, v35, 1, v64);
  }

  v66 = a1;
  v67 = a3;
  result = sub_100032E08(v27, v31, type metadata accessor for HostedRoutingSessionSnapshot);
  v65 = v33;
  v37 = *&v31[*(v33 + 20)];
  v38 = *(v37 + 16);
  v68 = v31;
  v77 = v38;
  if (v38)
  {
    v39 = 0;
    v40 = v75;
    v76 = (v74 + 48);
    v41 = (v74 + 32);
    v80 = _swiftEmptyArrayStorage;
    while (v39 < *(v37 + 16))
    {
      v42 = type metadata accessor for HostedRoutingSession(0);
      v43 = *(v42 - 8);
      sub_10003271C(v37 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v39, v9, type metadata accessor for HostedRoutingSession);
      (*(v43 + 56))(v9, 0, 1, v42);
      v44 = v79;
      sub_10001D9AC(v9, v79, &qword_100523620, &unk_1004511D0);
      sub_100039818(v44, v16);
      sub_1000038A4(v9, &qword_100523620, &unk_1004511D0);
      if ((*v76)(v16, 1, v17) == 1)
      {
        result = sub_1000038A4(v16, &qword_100523C28, &qword_100451AF8);
      }

      else
      {
        v45 = *v41;
        v46 = v73;
        (*v41)(v73, v16, v17);
        v45(v78, v46, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_100032F14(0, v80[2] + 1, 1, v80, &qword_100524170, &unk_100455080, &type metadata accessor for RoutingSession);
        }

        v48 = v80[2];
        v47 = v80[3];
        if (v48 >= v47 >> 1)
        {
          v80 = sub_100032F14((v47 > 1), v48 + 1, 1, v80, &qword_100524170, &unk_100455080, &type metadata accessor for RoutingSession);
        }

        v49 = v80;
        v80[2] = v48 + 1;
        result = (v45)(v49 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v48, v78, v17);
        v40 = v75;
      }

      if (v77 == ++v39)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v80 = _swiftEmptyArrayStorage;
    v40 = v75;
LABEL_15:
    result = RoutingSessionConfiguration.filterInactiveSessions.getter();
    if ((result & 1) != 0 || (v50 = *&v68[*(v65 + 24)], (v78 = *(v50 + 16)) == 0))
    {
LABEL_27:
      v62 = v68;
      sub_10001D9AC(v68, v9, &qword_100523620, &unk_1004511D0);
      sub_100039818(v9, v69);
      a3 = v67;
      RoutingSessionSnapshot.init(activeSessions:inactiveSessions:activeSession:)();
      v63 = type metadata accessor for RoutingSessionConfiguration();
      (*(*(v63 - 8) + 8))(v70, v63);
      sub_1000038A4(v66, &qword_100523C30, &qword_100451B00);
      sub_10002181C(v62, type metadata accessor for HostedRoutingSessionSnapshot);
      v35 = 0;
      goto LABEL_28;
    }

    v51 = 0;
    v77 = (v74 + 48);
    v52 = (v74 + 32);
    v53 = _swiftEmptyArrayStorage;
    while (v51 < *(v50 + 16))
    {
      v54 = type metadata accessor for HostedRoutingSession(0);
      v55 = *(v54 - 8);
      sub_10003271C(v50 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v51, v9, type metadata accessor for HostedRoutingSession);
      (*(v55 + 56))(v9, 0, 1, v54);
      v56 = v79;
      sub_10001D9AC(v9, v79, &qword_100523620, &unk_1004511D0);
      sub_100039818(v56, v40);
      sub_1000038A4(v9, &qword_100523620, &unk_1004511D0);
      if ((*v77)(v40, 1, v17) == 1)
      {
        result = sub_1000038A4(v40, &qword_100523C28, &qword_100451AF8);
      }

      else
      {
        v57 = v40;
        v58 = *v52;
        v59 = v71;
        (*v52)(v71, v57, v17);
        v58(v72, v59, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_100032F14(0, v53[2] + 1, 1, v53, &qword_100524170, &unk_100455080, &type metadata accessor for RoutingSession);
        }

        v61 = v53[2];
        v60 = v53[3];
        if (v61 >= v60 >> 1)
        {
          v53 = sub_100032F14((v60 > 1), v61 + 1, 1, v53, &qword_100524170, &unk_100455080, &type metadata accessor for RoutingSession);
        }

        v53[2] = v61 + 1;
        result = (v58)(v53 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v61, v72, v17);
        v40 = v75;
      }

      if (v78 == ++v51)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
  return result;
}

id sub_100265DF0()
{
  v1 = type metadata accessor for RoutingSessionConfiguration.Context();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == enum case for RoutingSessionConfiguration.Context.app(_:))
  {
    (*(v2 + 96))(v4, v1);
    v7 = *v4;
    v6 = v4[1];
    v8 = sub_10033D250();
    swift_beginAccess();
    v9 = *v8 == v7 && v8[1] == v6;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v10 = sub_10033D330(), swift_beginAccess(), *v10 == v7) ? (v11 = v10[1] == v6) : (v11 = 0), v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v12 = sub_10033D4F0(), swift_beginAccess(), *v12 == v7) ? (v13 = v12[1] == v6) : (v13 = 0), v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v14 = sub_10033D4FC(), swift_beginAccess(), *v14 == v7) ? (v15 = v14[1] == v6) : (v15 = 0), v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v16 = sub_10033D508(), swift_beginAccess(), *v16 == v7) && v16[1] == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v17 = sub_10033D514(), swift_beginAccess(), *v17 == v7) && v17[1] == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))))
    {
      result = [objc_opt_self() currentSettings];
      if (result)
      {
        v19 = result;

        v20 = [v19 supportSystemEndpoints];

        return v20;
      }

      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    goto LABEL_48;
  }

  if (v5 == enum case for RoutingSessionConfiguration.Context.deviceTarget(_:) || v5 == enum case for RoutingSessionConfiguration.Context.platterTarget(_:) || v5 == enum case for RoutingSessionConfiguration.Context.deviceSessionTarget(_:))
  {
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    if (v5 == enum case for RoutingSessionConfiguration.Context.nonUI(_:) || v5 == enum case for RoutingSessionConfiguration.Context.ui(_:))
    {
      result = [objc_opt_self() currentSettings];
      if (result)
      {
        v22 = result;
        v23 = [result supportSystemEndpoints];

        return v23;
      }

      goto LABEL_50;
    }

    if (v5 != enum case for RoutingSessionConfiguration.Context.localSessionTarget(_:) && v5 != enum case for RoutingSessionConfiguration.Context.activeSessionTarget(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_48:
    }
  }

  return 0;
}

id sub_1002661C8()
{
  v1 = v0;
  v2 = (*(*v0 + 160))();
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v4 = sub_10024C81C();
  v5 = [v4 queryExistingPlayerPath:v3];

  if (!v5)
  {
    v5 = v3;
LABEL_12:

LABEL_13:
    v12 = *(v1 + 32);

    return v12;
  }

  v6 = [v5 playerClient];
  if (!v6)
  {
    v13 = v3;
LABEL_11:

    goto LABEL_12;
  }

  v7 = v6;
  result = [v6 playbackQueue];
  if (result)
  {
    v9 = result;
    v10 = [result contentItemWithOffset:0];

    if (v10)
    {
      v11 = [v10 identifier];

      if (v11)
      {
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v12;
      }
    }

    v13 = v5;
    v5 = v3;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_100266350@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v66 = a2;
  v61 = type metadata accessor for HostedRoutingSession(0);
  v65 = *(v61 - 8);
  v2 = __chkstk_darwin(v61);
  v4 = (&v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v6 = &v56 - v5;
  v7 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v7 - 8);
  v62 = &v56 - v8;
  v9 = type metadata accessor for RoutingSessionConfiguration.Attribution.AttributionType();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = &v56 - v14;
  v16 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  RoutingSessionConfiguration.attribution.getter();
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 != enum case for RoutingSessionConfiguration.Attribution.attributed(_:))
  {
    if (v20 == enum case for RoutingSessionConfiguration.Attribution.none(_:))
    {
      return RoutingSessionConfiguration.attribution.getter();
    }

    goto LABEL_37;
  }

  v60 = v20;
  (*(v17 + 96))(v19, v16);
  (*(v10 + 32))(v15, v19, v9);
  (*(v10 + 16))(v13, v15, v9);
  v21 = (*(v10 + 88))(v13, v9);
  v22 = v21;
  if (v21 == enum case for RoutingSessionConfiguration.Attribution.AttributionType.app(_:))
  {
    (*(v10 + 96))(v13, v9);
    v23 = *v13;
    v24 = v13[1];
    sub_100018D7C(0, &qword_100523B90, NSBundle_ptr);
    v25 = sub_10033D3E8(v23, v24);
    v27 = v26;

    (*(v10 + 8))(v15, v9);
    v28 = v66;
    *v66 = v25;
    v28[1] = v27;
    (*(v10 + 104))(v28, v22, v9);
    return (*(v17 + 104))(v28, v60, v16);
  }

  v30 = enum case for RoutingSessionConfiguration.Attribution.AttributionType.anonymous(_:);
  if (v21 == enum case for RoutingSessionConfiguration.Attribution.AttributionType.anonymous(_:))
  {
    RoutingSessionConfiguration.attribution.getter();
    return (*(v10 + 8))(v15, v9);
  }

  if (v21 != enum case for RoutingSessionConfiguration.Attribution.AttributionType.nowPlayingApp(_:))
  {
    if (v21 != enum case for RoutingSessionConfiguration.Attribution.AttributionType.foregroundMediaApp(_:))
    {
LABEL_38:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    goto LABEL_12;
  }

  v31 = *(v64 + 48);
  if (v31 < 3)
  {
    v57 = enum case for RoutingSessionConfiguration.Attribution.AttributionType.app(_:);
    v58 = enum case for RoutingSessionConfiguration.Attribution.AttributionType.anonymous(_:);
    v59 = *(v64 + 32);
    v32 = (v64 + 40);
LABEL_16:
    v34 = *v32;
    v35 = sub_100032A00();
    v64 = *(v35 + 16);
    if (v64)
    {
      v36 = 0;
      while (1)
      {
        if (v36 >= *(v35 + 16))
        {
          __break(1u);
          goto LABEL_36;
        }

        sub_10003271C(v35 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v36, v4, type metadata accessor for HostedRoutingSession);
        v37 = *v4 == v59 && v4[1] == v34;
        if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++v36;
        sub_10002181C(v4, type metadata accessor for HostedRoutingSession);
        if (v64 == v36)
        {
          goto LABEL_25;
        }
      }

      sub_100032E08(v4, v6, type metadata accessor for HostedRoutingSession);
      v38 = v62;
      sub_10001D9AC(&v6[*(v61 + 28)], v62, &qword_100523640, qword_100451520);
      sub_10002181C(v6, type metadata accessor for HostedRoutingSession);
      v39 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
      if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
      {
        (*(v10 + 8))(v15, v9);
        sub_1000038A4(v38, &qword_100523640, qword_100451520);
        goto LABEL_28;
      }

      v46 = *(v38 + 48);
      v47 = *(v38 + 56);
      v48 = *(v38 + 60);
      sub_100248888(v46, v47, v48);
      sub_10002181C(v38, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
      v49 = *(v46 + 16);
      if (v49)
      {
        v50 = (v46 + 16 + 16 * v49);
        v51 = *v50;
        v52 = v50[1];

        sub_1002488FC(v46, v47, v48);
        sub_100018D7C(0, &qword_100523B90, NSBundle_ptr);
        v53 = sub_10033D3E8(v51, v52);
        v55 = v54;

        (*(v10 + 8))(v15, v9);
        v45 = v66;
        *v66 = v53;
        v45[1] = v55;
        (*(v10 + 104))(v45, v57, v9);
        return (*(v17 + 104))(v45, v60, v16);
      }

LABEL_36:
      __break(1u);
LABEL_37:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_38;
    }

LABEL_25:

    (*(v10 + 8))(v15, v9);
LABEL_28:
    v33 = v66;
    (*(v10 + 104))(v66, v58, v9);
    return (*(v17 + 104))(v33, v60, v16);
  }

  if (v31 != 6)
  {
    if (v31 == 4)
    {
      v59 = *(v64 + 16);
      v57 = enum case for RoutingSessionConfiguration.Attribution.AttributionType.app(_:);
      v58 = enum case for RoutingSessionConfiguration.Attribution.AttributionType.anonymous(_:);
      v32 = (v64 + 24);
      goto LABEL_16;
    }

LABEL_12:
    (*(v10 + 8))(v15, v9);
    v33 = v66;
    (*(v10 + 104))(v66, v30, v9);
    return (*(v17 + 104))(v33, v60, v16);
  }

  v40 = *(*(v64 + 16) + 48);
  v41 = enum case for RoutingSessionConfiguration.Attribution.AttributionType.app(_:);
  sub_100018D7C(0, &qword_100523B90, NSBundle_ptr);
  v42 = sub_10033D3E8(*(v40 + 16), *(v40 + 24));
  v44 = v43;
  (*(v10 + 8))(v15, v9);
  v45 = v66;
  *v66 = v42;
  v45[1] = v44;
  (*(v10 + 104))(v45, v41, v9);
  return (*(v17 + 104))(v45, v60, v16);
}

uint64_t sub_100266B70(uint64_t a1, float a2)
{
  v4 = type metadata accessor for HostedRoutingItem(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  if (v9)
  {
    v39 = v2;
    v10 = 0;
    v11 = v8 + *(v6 + 52);
    v41 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = &_swiftEmptyDictionarySingleton;
    v40 = v11;
    while (v10 < *(a1 + 16))
    {
      sub_10003271C(v41 + *(v5 + 72) * v10, v8, type metadata accessor for HostedRoutingItem);
      v15 = *v8;
      v14 = v8[1];
      v16 = *v11;
      v17 = v11[4];

      sub_10002181C(v8, type metadata accessor for HostedRoutingItem);
      if (v17)
      {
        v18 = sub_10000698C(v15, v14);
        v20 = v19;

        if (v20)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = v12;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_100267F48();
            v12 = v42;
          }

          sub_100267D98(v18, v12);
        }
      }

      else
      {
        v22 = v9;
        v23 = v5;
        v24 = a1;
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v42 = v12;
        v26 = sub_10000698C(v15, v14);
        v28 = v12[2];
        v29 = (v27 & 1) == 0;
        v30 = __OFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          goto LABEL_23;
        }

        v32 = v27;
        if (v12[3] >= v31)
        {
          if ((v25 & 1) == 0)
          {
            v37 = v26;
            sub_100267F48();
            v26 = v37;
          }
        }

        else
        {
          sub_100267AF4(v31, v25);
          v26 = sub_10000698C(v15, v14);
          if ((v32 & 1) != (v33 & 1))
          {
            goto LABEL_25;
          }
        }

        a1 = v24;
        v5 = v23;
        if (v32)
        {
          v13 = v26;

          v12 = v42;
          *(v42[7] + 4 * v13) = v16;
          v9 = v22;
        }

        else
        {
          v12 = v42;
          v42[(v26 >> 6) + 8] |= 1 << v26;
          v34 = (v12[6] + 16 * v26);
          *v34 = v15;
          v34[1] = v14;
          *(v12[7] + 4 * v26) = v16;
          v35 = v12[2];
          v30 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v30)
          {
            goto LABEL_24;
          }

          v9 = v22;
          v12[2] = v36;
        }

        v11 = v40;
      }

      if (v9 == ++v10)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_21:

    return dispatch thunk of VolumeGroup.__allocating_init(itemVolumeLevels:groupVolumeLevel:)();
  }

  return result;
}

uint64_t sub_100266EA8(void *a1, float a2)
{
  v4 = type metadata accessor for HostedRoutingItem(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1001BC5A8(&qword_100523C18, &qword_100451AF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23[-1] - v9;
  dispatch thunk of VolumeGroup.groupVolumeLevel.getter();
  if (vabds_f32(v11, a2) > 0.01)
  {
    return 0;
  }

  v13 = sub_1000326D8(a1, a1[3]);
  __chkstk_darwin(v13);
  (*(v15 + 16))(&v23[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1000397B4(v23);
  dispatch thunk of Sequence.makeIterator()();
  while (1)
  {
    sub_100022650(v23, AssociatedTypeWitness);
    dispatch thunk of IteratorProtocol.next()();
    if ((*(v5 + 48))(v10, 1, v4) == 1)
    {
      break;
    }

    sub_100032E08(v10, v7, type metadata accessor for HostedRoutingItem);
    v16 = (v7 + *(v4 + 52));
    if (v16[1])
    {
LABEL_5:
      sub_10002181C(v7, type metadata accessor for HostedRoutingItem);
    }

    else
    {
      v17 = *v16;
      v18 = dispatch thunk of VolumeGroup.itemVolumeLevels.getter();
      if (!*(v18 + 16) || (v19 = sub_10000698C(*v7, v7[1]), (v20 & 1) == 0))
      {

        goto LABEL_5;
      }

      v21 = *(*(v18 + 56) + 4 * v19);

      sub_10002181C(v7, type metadata accessor for HostedRoutingItem);
      if (vabds_f32(v21, v17) > 0.01)
      {
        sub_100026A44(v23);
        return 0;
      }
    }
  }

  sub_100026A44(v23);
  return 1;
}

uint64_t sub_100267210(uint64_t a1, char a2)
{
  v4 = type metadata accessor for HostedRoutingItem(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = type metadata accessor for HostedRoutingSourceSession(0);
  v9 = a1 + *(result + 40);
  if (*(v9 + 4))
  {
    if (a2)
    {
      return 1;
    }

    goto LABEL_6;
  }

  v10 = *v9;
  dispatch thunk of VolumeGroup.groupVolumeLevel.getter();
  v12 = vabds_f32(v11, v10);
  result = v12 <= 0.01;
  if (v12 <= 0.01 && (a2 & 1) == 0)
  {
LABEL_6:
    v13 = *(a1 + 32);
    v14 = *(v13 + 16);
    if (!v14)
    {
      return 1;
    }

    v15 = 0;
    v16 = v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (1)
    {
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
        return result;
      }

      sub_10003271C(v16 + *(v5 + 72) * v15, v7, type metadata accessor for HostedRoutingItem);
      v17 = (v7 + *(v4 + 52));
      if (v17[1])
      {
        goto LABEL_9;
      }

      v18 = *v17;
      v19 = dispatch thunk of VolumeGroup.itemVolumeLevels.getter();
      if (!*(v19 + 16))
      {
        break;
      }

      v20 = sub_10000698C(*v7, v7[1]);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = *(*(v19 + 56) + 4 * v20);

      result = sub_10002181C(v7, type metadata accessor for HostedRoutingItem);
      if (vabds_f32(v22, v18) > 0.01)
      {
        return 0;
      }

LABEL_10:
      if (v14 == ++v15)
      {
        return 1;
      }
    }

LABEL_9:
    result = sub_10002181C(v7, type metadata accessor for HostedRoutingItem);
    goto LABEL_10;
  }

  return result;
}

void sub_100267434(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_100524160, &qword_100455078);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v32 = v3;
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
    v12 = v4 + 56;
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_38;
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

        v31 = 1 << *(v3 + 32);
        if (v31 >= 64)
        {
          bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v31;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        goto LABEL_36;
      }

      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      Hasher.init(_seed:)();
      if (v21 <= 1)
      {
        break;
      }

      if (v21 == 2)
      {
        v22 = 3;
LABEL_21:
        Hasher._combine(_:)(v22);
        String.hash(into:)();
        goto LABEL_23;
      }

      Hasher._combine(_:)(0);
LABEL_23:
      v23 = Hasher._finalize()();
      v24 = -1 << *(v5 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v32;
    }

    if (!v21)
    {
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v19);
      goto LABEL_23;
    }

    v22 = 2;
    goto LABEL_21;
  }

LABEL_36:

  *v2 = v5;
}

void sub_1002676F4()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100524160, &qword_100455078);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        sub_10002CBE8(v19, v20, v22);
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
}

void sub_10026785C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_100524160, &qword_100455078);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (!*(v3 + 16))
  {

LABEL_34:
    *v2 = v5;
    return;
  }

  v31 = v3;
  v6 = 0;
  v7 = v3 + 56;
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
  v12 = v4 + 56;
  while (v10)
  {
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_15:
    v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    Hasher.init(_seed:)();
    if (v21 <= 1)
    {
      if (!v21)
      {
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v19);
        goto LABEL_23;
      }

      v22 = 2;
      goto LABEL_21;
    }

    if (v21 == 2)
    {
      v22 = 3;
LABEL_21:
      Hasher._combine(_:)(v22);

      String.hash(into:)();
      goto LABEL_23;
    }

    Hasher._combine(_:)(0);
LABEL_23:
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      while (++v26 != v28 || (v27 & 1) == 0)
      {
        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v26);
        if (v30 != -1)
        {
          v13 = __clz(__rbit64(~v30)) + (v26 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_36;
    }

    v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v5 + 48) + 24 * v13;
    *v14 = v19;
    *(v14 + 8) = v20;
    *(v14 + 16) = v21;
    ++*(v5 + 16);
    v3 = v31;
  }

  v16 = v6;
  while (1)
  {
    v6 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v2 = v1;
      goto LABEL_34;
    }

    v17 = *(v7 + 8 * v6);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v10 = (v17 - 1) & v17;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_100267AF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_100524158, &qword_100455070);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_100267D98(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 4 * v3);
        v16 = (v14 + 4 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100267F48()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100524158, &qword_100455070);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

uint64_t sub_1002680B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365536F69647561 && a2 == 0xEC0000006E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6963657053707061 && a2 == 0xEB00000000636966 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x800000010043DDD0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_100268224()
{
  result = qword_10052C3C0;
  if (!qword_10052C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052C3C0);
  }

  return result;
}

unint64_t sub_100268278()
{
  result = qword_10052C3C8;
  if (!qword_10052C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052C3C8);
  }

  return result;
}

unint64_t sub_1002682CC()
{
  result = qword_10052C3D0;
  if (!qword_10052C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052C3D0);
  }

  return result;
}

unint64_t sub_100268320()
{
  result = qword_10052C3D8;
  if (!qword_10052C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052C3D8);
  }

  return result;
}

unint64_t sub_100268374()
{
  result = qword_10052C3E0;
  if (!qword_10052C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052C3E0);
  }

  return result;
}

uint64_t sub_1002683C8(void *a1)
{
  v48 = sub_1001BC5A8(&qword_100524218, &qword_1004550E8);
  v44 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v37 - v2;
  v41 = sub_1001BC5A8(&qword_100524220, &qword_1004550F0);
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v46 = &v37 - v3;
  v45 = sub_1001BC5A8(&qword_100524228, &qword_1004550F8);
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v5 = &v37 - v4;
  v6 = sub_1001BC5A8(&qword_100524230, &qword_100455100);
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v9 = sub_1001BC5A8(&qword_100524238, &qword_100455108);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v50 = a1;
  sub_1000326D8(a1, v14);
  sub_100268224();
  v15 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v37 = v6;
    v38 = v8;
    v13 = v5;
    v16 = v45;
    v17 = v46;
    v39 = 0;
    v18 = v47;
    v19 = v48;
    v49 = v10;
    v20 = KeyedDecodingContainer.allKeys.getter();
    v21 = *(v20 + 16);
    if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 4) : (v23 = 1), v23))
    {
      v13 = type metadata accessor for DecodingError();
      swift_allocError();
      v25 = v24;
      sub_1001BC5A8(&unk_100527470, &qword_100455110);
      *v25 = &type metadata for HostedItemType;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v13 - 8) + 104))(v25, enum case for DecodingError.typeMismatch(_:), v13);
      swift_willThrow();
      (*(v49 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v20 + 32) <= 1u)
      {
        if (!*(v20 + 32))
        {
          v51 = 0;
          sub_100268374();
          v13 = v38;
          v27 = v39;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v27)
          {
            (*(v40 + 8))(v13, v37);
            (*(v49 + 8))(v12, v9);
            swift_unknownObjectRelease();
            v13 = 0;
            goto LABEL_9;
          }

          v28 = v49;
          goto LABEL_17;
        }

        v52 = 1;
        sub_100268320();
        v32 = v13;
        v33 = v39;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v13 = v33;
        if (!v33)
        {
          v35 = v12;
          v36 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v42 + 8))(v32, v16);
          (*(v49 + 8))(v35, v9);
          swift_unknownObjectRelease();
          v13 = v36;
          goto LABEL_9;
        }

        (*(v49 + 8))(v12, v9);
LABEL_22:
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      v29 = v49;
      if (v22 != 2)
      {
        v54 = 3;
        sub_100268278();
        v34 = v39;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v13 = v34;
        if (!v34)
        {
          v13 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v44 + 8))(v18, v19);
          (*(v29 + 8))(v12, v9);
          swift_unknownObjectRelease();
          goto LABEL_9;
        }

        (*(v29 + 8))(v12, v9);
        goto LABEL_22;
      }

      v28 = v49;
      v53 = 2;
      sub_1002682CC();
      v30 = v39;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v30)
      {
LABEL_17:
        (*(v28 + 8))(v12, v9);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      v31 = v41;
      v13 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v43 + 8))(v17, v31);
      (*(v28 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }
  }

LABEL_9:
  sub_100026A44(v50);
  return v13;
}

uint64_t sub_100268BA8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v6 = a3;
      v7 = a6;
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v6;
      a6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3 == 2)
  {
    if (a6 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (a6 == 2 || ((a6 ^ a3) & 1) != 0)
    {
      return result;
    }
  }

  if ((a3 & 0xFF00) == 0x200)
  {
    if (BYTE1(a6) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (BYTE1(a6) == 2 || ((((a3 & 0x100) == 0) ^ (a6 >> 8)) & 1) == 0)
    {
      return result;
    }
  }

  if ((a3 & 0xFF0000) == 0x20000)
  {
    if (BYTE2(a6) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (BYTE2(a6) == 2 || ((((a3 & 0x10000) == 0) ^ HIWORD(a6)) & 1) == 0)
    {
      return result;
    }
  }

  v10 = HIBYTE(a6);
  if (HIBYTE(a3) == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v10 ^ HIBYTE(a3)) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_100268CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (BYTE4(a2) <= 1u)
  {
    if (BYTE4(a2))
    {
      if (BYTE4(a4) == 1)
      {
        return sub_100034D74(a1, a3) & (a2 == a4);
      }

      return 0;
    }

    if (BYTE4(a4))
    {
      return 0;
    }
  }

  else
  {
    if (BYTE4(a2) != 2)
    {
      if (BYTE4(a2) == 3)
      {
        if (BYTE4(a4) == 3)
        {
          return sub_100034D74(a1, a3) & (a2 == a4);
        }
      }

      else if (BYTE4(a4) == 4)
      {
        return sub_100034D74(a1, a3) & (a2 == a4);
      }

      return 0;
    }

    if (BYTE4(a4) != 2)
    {
      return 0;
    }
  }

  return sub_100034D74(a1, a3) & (a2 == a4);
}

BOOL sub_100268D78(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7 || (a1[4] != *(a2 + 32) || v6 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((*(a1 + 48) ^ *(a2 + 48)) & 1) != 0 || ((*(a1 + 49) ^ *(a2 + 49)))
  {
    return 0;
  }

  v9 = a1[8];
  v10 = *(a2 + 64);
  if (v9)
  {
    if (!v10 || (a1[7] != *(a2 + 56) || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = a1[10];
  v12 = *(a2 + 80);
  if (!v11)
  {
    return !v12;
  }

  return v12 && (a1[9] == *(a2 + 72) && v11 == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
}

uint64_t sub_100268EC0(void *a1, void *a2)
{
  v4 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v8 - 8);
  v10 = (&v62 - v9);
  v11 = sub_1001BC5A8(&qword_1005241A8, &qword_1004550A8);
  __chkstk_darwin(v11);
  v13 = &v62 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_37;
  }

  v14 = a1[3];
  v15 = a2[3];
  if (v14)
  {
    if (!v15 || (a1[2] != a2[2] || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v15)
  {
    goto LABEL_37;
  }

  if ((sub_10002E77C(a1[4], a2[4], type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem, sub_10001E4EC, type metadata accessor for HostedRoutingItem) & 1) == 0)
  {
    goto LABEL_37;
  }

  v63 = type metadata accessor for HostedRoutingSourceSession(0);
  v16 = *(v63 + 28);
  v17 = *(v11 + 48);
  sub_10001D9AC(a1 + v16, v13, &qword_100523640, qword_100451520);
  v18 = a2 + v16;
  v19 = v17;
  sub_10001D9AC(v18, &v13[v17], &qword_100523640, qword_100451520);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
      sub_1000038A4(v13, &qword_100523640, qword_100451520);
      goto LABEL_19;
    }

LABEL_16:
    v21 = &qword_1005241A8;
    v22 = &qword_1004550A8;
    v23 = v13;
LABEL_17:
    sub_1000038A4(v23, v21, v22);
    goto LABEL_37;
  }

  sub_10001D9AC(v13, v10, &qword_100523640, qword_100451520);
  if (v20(&v13[v19], 1, v4) == 1)
  {
    sub_10002181C(v10, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    goto LABEL_16;
  }

  sub_100032E08(&v13[v19], v7, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  v24 = sub_1002695FC(v10, v7);
  sub_10002181C(v7, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  sub_10002181C(v10, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  sub_1000038A4(v13, &qword_100523640, qword_100451520);
  if ((v24 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_19:
  v25 = v63;
  if ((static RoutingControls.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_37;
  }

  v26 = v25[9];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v30)
  {
    goto LABEL_37;
  }

  v31 = v25[10];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_37;
    }
  }

  if (*(a1 + v25[11]) != *(a2 + v25[11]) || *(a1 + v25[12]) != *(a2 + v25[12]) || *(a1 + v25[13]) != *(a2 + v25[13]) || *(a1 + v25[14]) != *(a2 + v25[14]))
  {
    goto LABEL_37;
  }

  v38 = a1 + v25[15];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v90 = *(v38 + 10);
  v41 = *(v38 + 2);
  v42 = *(v38 + 1);
  v89[3] = *(v38 + 3);
  v89[4] = v40;
  v43 = *(v38 + 1);
  v89[0] = *v38;
  v89[1] = v43;
  v89[2] = v41;
  v44 = a2 + v25[15];
  v45 = *(v44 + 4);
  v46 = *(v44 + 1);
  v91[0] = *v44;
  v91[1] = v46;
  v47 = *(v44 + 2);
  v91[3] = *(v44 + 3);
  v91[4] = v45;
  v91[2] = v47;
  v48 = *(v38 + 4);
  v86 = v39;
  v87 = v48;
  v92 = *(v44 + 10);
  v49 = v89[0];
  v88 = *(v38 + 10);
  v84 = v42;
  v85 = v41;
  if (*(&v89[0] + 1))
  {
    if (*(&v91[0] + 1))
    {
      v64 = v91[0];
      v50 = *(v44 + 4);
      v67 = *(v44 + 3);
      v68 = v50;
      v69 = *(v44 + 10);
      v51 = *(v44 + 2);
      v65 = *(v44 + 1);
      v66 = v51;
      v77 = v69;
      v75 = v67;
      v76 = v50;
      v73 = v65;
      v74 = v51;
      v72 = v91[0];
      v52 = *(v38 + 4);
      v93[3] = *(v38 + 3);
      v93[4] = v52;
      v94 = *(v38 + 10);
      v53 = *(v38 + 2);
      v93[1] = *(v38 + 1);
      v93[2] = v53;
      v93[0] = v89[0];
      v54 = sub_100268D78(v93, &v72);
      sub_10001D9AC(v89, v70, &qword_100523B20, &unk_1004519F0);
      sub_10001D9AC(v91, v70, &qword_100523B20, &unk_1004519F0);
      sub_1000038A4(&v64, &qword_100523B20, &unk_1004519F0);
      v70[0] = v49;
      v70[3] = v86;
      v70[4] = v87;
      v71 = v88;
      v70[2] = v85;
      v70[1] = v84;
      sub_1000038A4(v70, &qword_100523B20, &unk_1004519F0);
      if (!v54)
      {
        goto LABEL_37;
      }

      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (*(&v91[0] + 1))
  {
LABEL_44:
    v72 = v89[0];
    v55 = *(v38 + 4);
    v75 = *(v38 + 3);
    v76 = v55;
    v56 = *(v38 + 10);
    v57 = *(v38 + 2);
    v73 = *(v38 + 1);
    v74 = v57;
    v77 = v56;
    v78 = v91[0];
    v83 = *(v44 + 10);
    v58 = *(v44 + 4);
    v81 = *(v44 + 3);
    v82 = v58;
    v59 = *(v44 + 2);
    v79 = *(v44 + 1);
    v80 = v59;
    sub_10001D9AC(v89, v93, &qword_100523B20, &unk_1004519F0);
    sub_10001D9AC(v91, v93, &qword_100523B20, &unk_1004519F0);
    v21 = &unk_1005241B0;
    v22 = &unk_1004550B0;
    v23 = &v72;
    goto LABEL_17;
  }

  v72 = *&v89[0];
  v60 = *(v38 + 4);
  v75 = *(v38 + 3);
  v76 = v60;
  v77 = *(v38 + 10);
  v61 = *(v38 + 2);
  v73 = *(v38 + 1);
  v74 = v61;
  sub_10001D9AC(v89, v93, &qword_100523B20, &unk_1004519F0);
  sub_10001D9AC(v91, v93, &qword_100523B20, &unk_1004519F0);
  sub_1000038A4(&v72, &qword_100523B20, &unk_1004519F0);
LABEL_46:
  if (*(a1 + v25[16]) == *(a2 + v25[16]) && *(a1 + v25[17]) == *(a2 + v25[17]))
  {
    v36 = static Date.== infix(_:_:)();
    return v36 & 1;
  }

LABEL_37:
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_1002695FC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_33;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v5)
  {
    goto LABEL_33;
  }

  v7 = a1[3];
  v8 = *(a2 + 24);
  if (v7)
  {
    if (!v8 || (a1[2] != *(a2 + 16) || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v8)
  {
    goto LABEL_33;
  }

  v9 = a1[5];
  v10 = *(a2 + 40);
  if (v9)
  {
    if (!v10 || (a1[4] != *(a2 + 32) || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v10)
  {
    goto LABEL_33;
  }

  if ((sub_100268CE4(a1[6], *(a1 + 14) | (*(a1 + 60) << 32), *(a2 + 48), *(a2 + 56) | (*(a2 + 60) << 32)) & 1) == 0)
  {
    goto LABEL_33;
  }

  v11 = *(a2 + 64);
  if (!a1[8])
  {
    if (!v11)
    {
      goto LABEL_30;
    }

LABEL_33:
    v15 = 0;
    return v15 & 1;
  }

  if (!v11)
  {
    goto LABEL_33;
  }

  type metadata accessor for ArtworkToken();
  sub_100017F84(&qword_1005241C0, &type metadata accessor for ArtworkToken, &protocol conformance descriptor for ArtworkToken);

  v12 = dispatch thunk of static Equatable.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_30:
  v13 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  if ((static RoutingSession.NowPlayingInfo.PlaybackInfo.== infix(_:_:)() & 1) == 0 || (static RoutingSession.NowPlayingInfo.TrackInfo.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_33;
  }

  v14 = *(v13 + 44);
  v15 = sub_100268BA8(*(a1 + v14), *(a1 + v14 + 8), *(a1 + v14 + 16), *(a2 + v14), *(a2 + v14 + 8), *(a2 + v14 + 16));
  return v15 & 1;
}

uint64_t sub_100269804(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_10026983C()
{
  result = qword_100523AF0;
  if (!qword_100523AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523AF0);
  }

  return result;
}

void sub_1002698C0(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = [a1 origin];
  if (v6)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 server];
    v10 = [v9 nowPlayingServer];

    v11 = [v10 originClientForOrigin:v8];
    if (!v11 || (v12 = [v11 deviceInfo], v11, !v12))
    {

      goto LABEL_8;
    }

    if ([v12 isAirPlayActive])
    {
      v13 = [v12 leaderDeviceInfo];

      v12 = v13;
      if (!v13)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v15 = [objc_allocWithZone(MRDeviceInfoOutputDevice) initWithDeviceInfo:v12];
    v103 = v8;
    v104 = a3;
    v94 = v4;
    if (![v4 isLocalEndpoint])
    {
      if ([v4 supportsVisualProxyGroupPlayer] && (v57 = objc_msgSend(v15, "uid")) != 0)
      {
        v58 = v57;
        v92 = v15;
        v17 = a2 & 0xFFFFFFFFFFFFFF8;
        if (a2 >> 62)
        {
          v59 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v59 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v60 = 0;
        do
        {
          if (v59 == v60)
          {

LABEL_64:
            v102 = 1;
            goto LABEL_66;
          }

          if ((a2 & 0xC000000000000001) != 0)
          {
            v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v60 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_89;
            }

            v61 = *(a2 + 8 * v60 + 32);
          }

          v62 = v61;
          if (__OFADD__(v60, 1))
          {
            goto LABEL_88;
          }

          v15 = [v61 containsUID:v58];

          ++v60;
        }

        while ((v15 & 1) == 0);

LABEL_65:
        v102 = 0;
LABEL_66:
        v15 = v92;
      }

      else
      {

        v102 = 0;
      }

      v63 = [v12 name];
      if (v63)
      {
        v64 = v63;
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;
      }

      else
      {
        v65 = 0;
        v67 = 0xE000000000000000;
      }

      v68 = [v12 deviceUID];
      if (v68)
      {
        v69 = v68;
        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v96 = v71;
        v98 = v70;
      }

      else
      {
        v96 = 0;
        v98 = 0;
      }

      v72 = [v12 modelID];
      v100 = v67;
      if (v72)
      {
        v73 = v72;
        v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;
      }

      else
      {
        v93 = 0;
        v75 = 0;
      }

      type metadata accessor for Symbols();
      v76 = v15;
      v77 = sub_100018E6C();
      v79 = v78;
      v81 = v80;

      v82 = sub_10001D08C(v77, v79, v81);
      v84 = v83;
      sub_100019550(v77, v79, v81);
      v85 = [v12 localizedModelName];
      if (v85)
      {
        v86 = v85;
        v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v89 = v88;
      }

      else
      {
        v87 = 0;
        v89 = 0;
      }

      v90 = [v12 isPersonalDevice];

      v106 = v65;
      v107 = v100;
      v108 = v82;
      v109 = v84;
      *&v110 = v87;
      *(&v110 + 1) = v89;
      v111 = v102;
      v112 = v90;
      *&v113 = v93;
      *(&v113 + 1) = v75;
      *&v114 = v98;
      *(&v114 + 1) = v96;
      v115 = v65;
      v116 = v100;
      v117 = v82;
      v118 = v84;
      v119 = v87;
      v120 = v89;
      LOBYTE(v121) = v102;
      HIBYTE(v121) = v90;
      v122 = v93;
      v123 = v75;
      v124 = v98;
      v125 = v96;
      goto LABEL_80;
    }

    v92 = v15;
    v17 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v53 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v54 = 0;
    while (1)
    {
      if (v53 == v54)
      {

        goto LABEL_65;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v54 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_87;
        }

        v55 = *(a2 + 8 * v54 + 32);
      }

      v56 = v55;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      v15 = [v55 deviceType];

      ++v54;
      if (v15 == 1)
      {

        goto LABEL_64;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

LABEL_8:
  v14 = [v4 designatedGroupLeader];
  if (!v14)
  {

    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    goto LABEL_83;
  }

  v15 = v14;
  v103 = v6;
  v104 = a3;
  if ([v4 supportsVisualProxyGroupPlayer])
  {
    v16 = [v15 uid];
    if (v16)
    {
      v12 = v16;
      v94 = v4;
      v17 = a2 & 0xFFFFFFFFFFFFFF8;
      if (!(a2 >> 62))
      {
        v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_90:
      v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
      v19 = 0;
      while (v18 != v19)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *(v17 + 16))
          {
            goto LABEL_85;
          }

          v20 = *(a2 + 8 * v19 + 32);
        }

        v21 = v20;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v22 = [v20 containsUID:v12];

        ++v19;
        if (v22)
        {

          v101 = 0;
          v4 = v94;
          goto LABEL_23;
        }
      }

      v101 = 1;
      v4 = v94;
      goto LABEL_23;
    }
  }

  v101 = 0;
LABEL_23:
  v23 = [v15 name];
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v26;
    v99 = v25;
  }

  else
  {
    v97 = 0xE000000000000000;
    v99 = 0;
  }

  v35 = [v15 uid];
  if (v35)
  {
    v36 = v35;
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v95 = 0;
    v38 = 0;
  }

  v39 = v4;
  v40 = [v15 modelID];
  if (v40)
  {
    v41 = v40;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  type metadata accessor for Symbols();
  v45 = sub_100018E6C();
  v47 = v46;
  v49 = v48;
  v50 = sub_10001D08C(v45, v46, v48);
  v52 = v51;

  sub_100019550(v45, v47, v49);
  v106 = v99;
  v107 = v97;
  v108 = v50;
  v109 = v52;
  v110 = 0uLL;
  v111 = v101;
  v112 = 0;
  *&v113 = v42;
  *(&v113 + 1) = v44;
  *&v114 = v95;
  *(&v114 + 1) = v38;
  v115 = v99;
  v116 = v97;
  v117 = v50;
  v118 = v52;
  v119 = 0;
  v120 = 0;
  v121 = v101;
  v122 = v42;
  v123 = v44;
  v124 = v95;
  v125 = v38;
LABEL_80:
  sub_10026A204(&v106, v105);
  sub_10026A23C(&v115);
  v34 = v114;
  v33 = v113;
  v32 = v110;
  v29 = v108;
  v30 = v109;
  v27 = v106;
  v28 = v107;
  v91 = 256;
  if (!v112)
  {
    v91 = 0;
  }

  v31 = v91 | v111;
  a3 = v104;
LABEL_83:
  *a3 = v27;
  *(a3 + 8) = v28;
  *(a3 + 16) = v29;
  *(a3 + 24) = v30;
  *(a3 + 32) = v32;
  *(a3 + 48) = v31;
  *(a3 + 56) = v33;
  *(a3 + 72) = v34;
}

uint64_t sub_10026A0EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_10026A190(unint64_t a1)
{
  if (a1 != 3)
  {
    return sub_1002540BC(a1);
  }

  return result;
}

double sub_10026A1A0(unint64_t a1)
{
  if (a1 != 3)
  {
    return sub_1002540AC(a1);
  }

  return result;
}

unint64_t sub_10026A1B0()
{
  result = qword_100523B40;
  if (!qword_100523B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523B40);
  }

  return result;
}

unint64_t sub_10026A26C()
{
  result = qword_10052C3E8[0];
  if (!qword_10052C3E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052C3E8);
  }

  return result;
}

uint64_t sub_10026A2C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010043DE10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F737265507369 && a2 == 0xEE0074736F486C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10026A524@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001BC5A8(&qword_1005241B8, &qword_1004550C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_1000326D8(a1, a1[3]);
  sub_10026A26C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100026A44(a1);
  }

  else
  {
    LOBYTE(v44[0]) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v36 = a2;
    LOBYTE(v44[0]) = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = v13;
    v35 = v12;
    LOBYTE(v44[0]) = 2;
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    LOBYTE(v44[0]) = 3;
    v51 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v44[0]) = 4;
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v44[0]) = 5;
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = v16;
    v52 = 6;
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = v17;
    v18 = v51 & 1;
    v28 = v51 & 1;
    v51 = v33 & 1;
    (*(v6 + 8))(v8, v5);
    *&v38 = v9;
    v19 = v35;
    *(&v38 + 1) = v11;
    *&v39 = v35;
    v20 = v37;
    *(&v39 + 1) = v37;
    *&v40 = v34;
    *(&v40 + 1) = v15;
    LOBYTE(v41) = v18;
    BYTE1(v41) = v51;
    *(&v41 + 1) = v31;
    *&v42 = v32;
    v21 = v30;
    v22 = v29;
    *(&v42 + 1) = v30;
    v43 = v29;
    sub_10026A204(&v38, v44);
    sub_100026A44(a1);
    v44[0] = v9;
    v44[1] = v11;
    v44[2] = v19;
    v44[3] = v20;
    v44[4] = v34;
    v44[5] = v15;
    v45 = v28;
    v46 = v51;
    v47 = v31;
    v48 = v32;
    v49 = v21;
    v50 = v22;
    result = sub_10026A23C(v44);
    v24 = v41;
    v25 = v36;
    *(v36 + 32) = v40;
    *(v25 + 48) = v24;
    *(v25 + 64) = v42;
    *(v25 + 80) = v43;
    v26 = v39;
    *v25 = v38;
    *(v25 + 16) = v26;
  }

  return result;
}

Swift::Int sub_10026A9C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&qword_100524160, &qword_100455078);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v33 = v1;
    v34 = a1 + 32;
    v35 = v3;
    while (1)
    {
      v9 = v34 + 24 * v4;
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *(v9 + 16);
      Hasher.init(_seed:)();
      if (v12 <= 1)
      {
        break;
      }

      if (v12 == 2)
      {
        v13 = 3;
LABEL_12:
        Hasher._combine(_:)(v13);

        String.hash(into:)();
        goto LABEL_14;
      }

      Hasher._combine(_:)(0);
LABEL_14:
      result = Hasher._finalize()();
      v15 = -1 << *(v3 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      v18 = *(v5 + 8 * (v16 >> 6));
      v19 = 1 << v16;
      v20 = *(v3 + 48);
      if (((1 << v16) & v18) != 0)
      {
        v21 = ~v15;
        v23 = v12 == 3 && (v10 | v11) == 0;
        do
        {
          v24 = v20 + 24 * v16;
          result = *v24;
          v25 = *(v24 + 8);
          v26 = *(v24 + 16);
          if (v26 > 1)
          {
            if (v26 == 2)
            {
              if (v12 == 2)
              {
                v27 = result == v11 && v25 == v10;
                if (v27 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
                {
                  v6 = v11;
                  v7 = v10;
                  v8 = 2;
LABEL_4:
                  sub_10002349C(v6, v7, v8);
                  goto LABEL_5;
                }
              }
            }

            else if (v23)
            {
              goto LABEL_5;
            }
          }

          else if (v26)
          {
            if (v12 == 1)
            {
              v28 = result == v11 && v25 == v10;
              if (v28 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
              {
                v6 = v11;
                v7 = v10;
                v8 = 1;
                goto LABEL_4;
              }
            }
          }

          else if (!v12 && result == v11)
          {
            goto LABEL_5;
          }

          v16 = (v16 + 1) & v21;
          v17 = v16 >> 6;
          v18 = *(v5 + 8 * (v16 >> 6));
          v19 = 1 << v16;
        }

        while ((v18 & (1 << v16)) != 0);
        v3 = v35;
        v20 = *(v35 + 48);
      }

      *(v5 + 8 * v17) = v18 | v19;
      v29 = v20 + 24 * v16;
      *v29 = v11;
      *(v29 + 8) = v10;
      *(v29 + 16) = v12;
      v30 = *(v3 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v32;
LABEL_5:
      ++v4;
      v3 = v35;
      if (v4 == v33)
      {
        return v3;
      }
    }

    if (!v12)
    {
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v11);
      goto LABEL_14;
    }

    v13 = 2;
    goto LABEL_12;
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10026AC70()
{
  result = qword_100523C40;
  if (!qword_100523C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C40);
  }

  return result;
}

unint64_t sub_10026ACCC()
{
  result = qword_100523C50;
  if (!qword_100523C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C50);
  }

  return result;
}

unint64_t sub_10026AD24()
{
  result = qword_100523C58;
  if (!qword_100523C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C58);
  }

  return result;
}

unint64_t sub_10026AD7C()
{
  result = qword_100523C60;
  if (!qword_100523C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C60);
  }

  return result;
}

unint64_t sub_10026ADD4()
{
  result = qword_100523C68;
  if (!qword_100523C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C68);
  }

  return result;
}

unint64_t sub_10026AE2C()
{
  result = qword_100523C70;
  if (!qword_100523C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C70);
  }

  return result;
}

unint64_t sub_10026AE8C()
{
  result = qword_100523C78;
  if (!qword_100523C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C78);
  }

  return result;
}

unint64_t sub_10026AEE4()
{
  result = qword_100523C80;
  if (!qword_100523C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C80);
  }

  return result;
}

unint64_t sub_10026AF40()
{
  result = qword_100523C90;
  if (!qword_100523C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C90);
  }

  return result;
}

unint64_t sub_10026AF98()
{
  result = qword_100523C98;
  if (!qword_100523C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C98);
  }

  return result;
}

unint64_t sub_10026B038()
{
  result = qword_100523CA8;
  if (!qword_100523CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523CA8);
  }

  return result;
}

unint64_t sub_10026B0D8()
{
  result = qword_100523CB8;
  if (!qword_100523CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523CB8);
  }

  return result;
}

unint64_t sub_10026B130()
{
  result = qword_100523CC0;
  if (!qword_100523CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523CC0);
  }

  return result;
}

unint64_t sub_10026B188()
{
  result = qword_100523CC8;
  if (!qword_100523CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523CC8);
  }

  return result;
}

unint64_t sub_10026B228()
{
  result = qword_100523CD8;
  if (!qword_100523CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523CD8);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for RouteRelevance.Classification(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10026B330(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10026B378(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10026B3BC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

__n128 sub_10026B3E4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_10026B3F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FA && *(a1 + 18))
  {
    return (*a1 + 506);
  }

  v3 = ((((*(a1 + 16) >> 2) & 0x180 | (*(a1 + 16) >> 1)) >> 6) & 0xFFFFFE07 | (8 * ((*(a1 + 16) >> 1) & 0x3F))) ^ 0x1FF;
  if (v3 >= 0x1F9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10026B458(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1F9)
  {
    *(result + 16) = 0;
    *result = a2 - 506;
    *(result + 8) = 0;
    if (a3 >= 0x1FA)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FA)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (((-a2 & 0x1F8) >> 2) - (a2 << 7)) & 0xFE | (((-a2 >> 1) & 3) << 9);
    }
  }

  return result;
}

uint64_t sub_10026B500(uint64_t a1)
{
  v1 = (((*(a1 + 16) >> 2) & 0x180 | (*(a1 + 16) >> 1)) >> 6) & 0xFFFFFE07 | (8 * ((*(a1 + 16) >> 1) & 0x3F));
  v2 = v1 ^ 0x1FF;
  v3 = 512 - v1;
  if (v2 >= 0x1F9)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10026B534(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F9 && *(a1 + 18))
  {
    return (*a1 + 505);
  }

  v3 = ((((*(a1 + 16) >> 2) & 0x180 | (*(a1 + 16) >> 1)) >> 6) & 0xFFFFFE07 | (8 * ((*(a1 + 16) >> 1) & 0x3F))) ^ 0x1FF;
  if (v3 >= 0x1F9)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10026B594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1F8)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 505;
    if (a3 >= 0x1F9)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F9)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      v3 = ((a2 ^ 0x1FF) << 6) | ((a2 ^ 0x1FF) >> 3);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (4 * v3) & 0x600 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_10026B5F4(uint64_t result, unsigned int a2)
{
  if (a2 > 0x1F9)
  {
    *(result + 16) = 0;
    *result = a2 - 506;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = (((-a2 & 0x1F8) >> 2) - (a2 << 7)) & 0xFE | (((-a2 >> 1) & 3) << 9);
  }

  return result;
}

uint64_t sub_10026B658(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FEF && *(a1 + 18))
  {
    return (*a1 + 16367);
  }

  v3 = ((*(a1 + 16) >> 11) | (32 * ((*(a1 + 16) >> 2) & 0x180 | (*(a1 + 16) >> 1)))) ^ 0x3FFF;
  if (v3 >= 0x3FEE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10026B6C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FEE)
  {
    *(result + 16) = 0;
    *result = a2 - 16367;
    *(result + 8) = 0;
    if (a3 >= 0x3FEF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FEF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 5) & 0x1FF) - (a2 << 9);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_10026B73C(uint64_t result, unsigned int a2)
{
  if (a2 < 0x11)
  {
    *(result + 16) = *(result + 16) & 0x101 | (a2 << 11);
  }

  else
  {
    *result = a2 - 17;
    *(result + 8) = 0;
    *(result + 16) = -30720;
  }

  return result;
}

__n128 sub_10026B778(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10026B78C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_10026B7D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10026B848(uint64_t a1)
{
  sub_10026BC50(319, &qword_100523D48, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_10026BA04(319, &qword_100523D50, &type metadata accessor for RoutingItem.SelectionIndicator, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10026BA04(319, &qword_100523D58, &type metadata accessor for RoutingItem.Action.Kind, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_10026BC50(319, &qword_100523D60, &type metadata for Float);
        if (v4 <= 0x3F)
        {
          sub_10026BA04(319, &unk_100523D68, &type metadata accessor for RoutingItem.Attributes, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10026BA04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10026BA90(uint64_t a1)
{
  sub_10026BA04(319, &qword_100523E20, type metadata accessor for HostedRoutingItem, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10026BA04(319, &qword_100523E28, type metadata accessor for HostedRoutingSession.NowPlayingInfo, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for RoutingControls();
      if (v3 <= 0x3F)
      {
        sub_10026BC50(319, &qword_100523D48, &type metadata for String);
        if (v4 <= 0x3F)
        {
          sub_10026BC50(319, &qword_100523D60, &type metadata for Float);
          if (v5 <= 0x3F)
          {
            sub_10026BC50(319, &unk_100523E30, &type metadata for HostedRoutingSession.HostInfo);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Date();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10026BC50(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_10026BC9C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10026BCA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10026BCF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10026BD4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10026BD64(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_10026BDB8(uint64_t a1)
{
  sub_10026BA04(319, &qword_100523E20, type metadata accessor for HostedRoutingItem, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10026BA04(319, &qword_100523E28, type metadata accessor for HostedRoutingSession.NowPlayingInfo, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for RoutingControls();
      if (v3 <= 0x3F)
      {
        sub_10026BC50(319, &qword_100523D48, &type metadata for String);
        if (v4 <= 0x3F)
        {
          sub_10026BC50(319, &qword_100523D60, &type metadata for Float);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Date();
            if (v6 <= 0x3F)
            {
              sub_10026BC50(319, &unk_100523E30, &type metadata for HostedRoutingSession.HostInfo);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10026BF6C(uint64_t a1)
{
  sub_10026BC50(319, &qword_100523D48, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_10026BA04(319, &unk_100524078, &type metadata accessor for ArtworkToken, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
      if (v3 <= 0x3F)
      {
        type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void *sub_10026C074(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_10026C088(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 13))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 12);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10026C0D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

__n128 sub_10026C130(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_10026C144(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 20))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10026C1A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_10026C214(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10026C238(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10026C280(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10026C2E4(uint64_t a1)
{
  sub_10026BA04(319, &qword_100524118, type metadata accessor for HostedRoutingSession, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10026BA04(319, &unk_100524120, type metadata accessor for HostedRoutingSession, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for HostedRoutingSession.HostInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HostedRoutingSession.HostInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10026C574()
{
  result = qword_10052E840[0];
  if (!qword_10052E840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052E840);
  }

  return result;
}

unint64_t sub_10026C5CC()
{
  result = qword_10052EA50[0];
  if (!qword_10052EA50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052EA50);
  }

  return result;
}

unint64_t sub_10026C624()
{
  result = qword_10052EC60[0];
  if (!qword_10052EC60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052EC60);
  }

  return result;
}

unint64_t sub_10026C67C()
{
  result = qword_10052EF70[0];
  if (!qword_10052EF70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052EF70);
  }

  return result;
}

unint64_t sub_10026C6D4()
{
  result = qword_10052F180[0];
  if (!qword_10052F180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052F180);
  }

  return result;
}

unint64_t sub_10026C72C()
{
  result = qword_10052F290;
  if (!qword_10052F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F290);
  }

  return result;
}

unint64_t sub_10026C784()
{
  result = qword_10052F298[0];
  if (!qword_10052F298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052F298);
  }

  return result;
}

unint64_t sub_10026C7DC()
{
  result = qword_10052F320;
  if (!qword_10052F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F320);
  }

  return result;
}

unint64_t sub_10026C834()
{
  result = qword_10052F328[0];
  if (!qword_10052F328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052F328);
  }

  return result;
}

unint64_t sub_10026C88C()
{
  result = qword_10052F3B0;
  if (!qword_10052F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F3B0);
  }

  return result;
}

unint64_t sub_10026C8E4()
{
  result = qword_10052F3B8[0];
  if (!qword_10052F3B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052F3B8);
  }

  return result;
}

unint64_t sub_10026C93C()
{
  result = qword_10052F440;
  if (!qword_10052F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F440);
  }

  return result;
}

unint64_t sub_10026C994()
{
  result = qword_10052F448[0];
  if (!qword_10052F448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052F448);
  }

  return result;
}

unint64_t sub_10026C9EC()
{
  result = qword_10052F4D0;
  if (!qword_10052F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F4D0);
  }

  return result;
}

unint64_t sub_10026CA44()
{
  result = qword_10052F4D8[0];
  if (!qword_10052F4D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052F4D8);
  }

  return result;
}

unint64_t sub_10026CA9C()
{
  result = qword_10052F560;
  if (!qword_10052F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F560);
  }

  return result;
}

unint64_t sub_10026CAF4()
{
  result = qword_10052F568[0];
  if (!qword_10052F568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052F568);
  }

  return result;
}

unint64_t sub_10026CBE8(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      _StringGuts.grow(_:)(27);

      v5 = 0xD000000000000018;
      goto LABEL_12;
    }

LABEL_11:
    _StringGuts.grow(_:)(24);

    v5 = 0xD000000000000015;
    goto LABEL_12;
  }

  if (a3 == 2)
  {
    goto LABEL_11;
  }

  if (a3 == 3)
  {
    _StringGuts.grow(_:)(21);

    v5 = 0xD000000000000012;
LABEL_12:
    v9 = v5;
    v7._countAndFlagsBits = a1;
    v7._object = a2;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 41;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    return v9;
  }

  if (a1 | a2)
  {
    return 0x416C65636E61632ELL;
  }

  else
  {
    return 0x656E6F6E2ELL;
  }
}

uint64_t sub_10026CD80(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  _StringGuts.grow(_:)(24);
  v7._countAndFlagsBits = 0x28726F727245;
  v7._object = 0xE600000000000000;
  String.append(_:)(v7);
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  _print_unlocked<A, B>(_:_:)();
  v8._countAndFlagsBits = 0x756C6F736572202CLL;
  v8._object = 0xED00003A6E6F6974;
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_10026CBE8(a2, a3, a4);
  String.append(_:)(v9);

  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0;
}

uint64_t sub_10026CEA0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 25) = a5;
  *(a6 + 32) = a7;
  return result;
}

uint64_t sub_10026CEB8()
{
  _StringGuts.grow(_:)(42);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0x746C75736552;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x7461727564202D20;
  v3._object = 0xED0000203A6E6F69;
  String.append(_:)(v3);
  Double.write<A>(to:)();
  v4._countAndFlagsBits = 0x656C62617473202CLL;
  v4._object = 0xEA0000000000203ALL;
  String.append(_:)(v4);
  if (*(v0 + 25))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + 25))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  v8._countAndFlagsBits = 0x3A726F727265202CLL;
  v8._object = 0xE900000000000020;
  String.append(_:)(v8);
  if (*v0)
  {
    v9 = sub_10026CD80(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
    v9 = 7104878;
  }

  v12 = v11;
  String.append(_:)(*&v9);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return 0;
}

uint64_t sub_10026D044()
{
  v1 = *v0;

  return v1;
}

double sub_10026D0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 5u)
  {
    if (a5 > 8u)
    {
      if (a5 != 9 && a5 != 10 && a5 != 11)
      {
        return result;
      }
    }

    else if (a5 != 6 && a5 != 7 && a5 != 8)
    {
      return result;
    }
  }

  else
  {
    if (a5 >= 4u)
    {
      if (a5 != 4 && a5 != 5)
      {
        return result;
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10026D1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for RoutingEvent(0);
  v9 = (a4 + v8[6]);
  *v9 = 0;
  v9[1] = 0;
  *(a4 + 48) = *(a1 + 48);
  v10 = *(a1 + 32);
  *(a4 + 16) = *(a1 + 16);
  *(a4 + 32) = v10;
  *a4 = *a1;
  v11 = v8[5];
  v12 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  result = (*(*(v12 - 8) + 32))(a4 + v11, a2, v12);
  *(a4 + v8[7]) = a3;
  return result;
}

uint64_t sub_10026D278()
{
  v1 = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x45676E6974756F52;
  v3._object = 0xEC000000746E6576;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0x746E656469202D20;
  v4._object = 0xEF203A7265696669;
  String.append(_:)(v4);
  String.append(_:)(*v0);
  v5._countAndFlagsBits = 0x6E6F69746361202CLL;
  v5._object = 0xEA0000000000203ALL;
  String.append(_:)(v5);
  v6._countAndFlagsBits = sub_10026EFE0();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x626972747461202CLL;
  v7._object = 0xEF203A6E6F697475;
  String.append(_:)(v7);
  v8 = type metadata accessor for RoutingEvent(0);
  type metadata accessor for RoutingSessionConfiguration.Attribution();
  sub_100273EC8(&qword_100524240, 255, &type metadata accessor for RoutingSessionConfiguration.Attribution, &protocol conformance descriptor for RoutingSessionConfiguration.Attribution);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10 = (&v0->_countAndFlagsBits + *(v8 + 24));
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;
    _StringGuts.grow(_:)(18);

    v13._countAndFlagsBits = v12;
    v13._object = v11;
    String.append(_:)(v13);
    v14 = 0xD000000000000010;
    v1 = 0x800000010043DEE0;
  }

  else
  {
    v14 = 0;
  }

  v15 = v1;
  String.append(_:)(*&v14);

  v16._countAndFlagsBits = 62;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return 0;
}

uint64_t sub_10026D4AC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v13[0] = *(a1 + 1);
  v13[1] = v6;
  v14 = *(a1 + 48);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 2);
  v15[0] = *(a2 + 1);
  v15[1] = v9;
  v16 = *(a2 + 48);
  if (v4 == v7 && v5 == v8 || (v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), v11 = 0, (v10 & 1) != 0))
  {
    v11 = sub_100273050(v13, v15);
  }

  return v11 & 1;
}

uint64_t sub_10026D530(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), v6 = 0, (v5 & 1) != 0))
  {
    v7 = *(a1 + 2);
    v12[0] = *(a1 + 1);
    v12[1] = v7;
    v13 = *(a1 + 48);
    v8 = *(a2 + 32);
    v10[0] = *(a2 + 16);
    v10[1] = v8;
    v11 = *(a2 + 48);
    v6 = sub_100273050(v12, v10);
  }

  return v6 & 1;
}

Swift::Int sub_10026D5B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10026D604(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10026D648()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_10026D694(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

void *sub_10026D738()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void sub_10026D77C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

id sub_10026D8AC()
{
  v1 = OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_request;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10026D900(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_request;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10026D9D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_10001D9AC(v4 + v8, a4, a2, a3);
}

uint64_t sub_10026DA5C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_10001CECC(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

char *sub_10026DB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  *(v8 + 6) = 0;
  v9 = OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_expectedPlaybackState;
  v10 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_request;
  *&v8[v11] = [objc_allocWithZone(MRPlaybackSessionMigrateRequest) init];
  v12 = OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_expectedNowPlayingInfo;
  v13 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  (*(*(v13 - 8) + 56))(&v8[v12], 1, 1, v13);
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  return v8;
}

uint64_t sub_10026DC4C(void *a1)
{
  v2 = swift_allocObject();
  sub_10026DC9C(a1);
  return v2;
}

void *sub_10026DC9C(void *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_100524250, &qword_100455118);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v1[6] = 0;
  v1[7] = 0;
  v1[8] = 0;
  v9 = OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_expectedPlaybackState;
  v10 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_request;
  *(v3 + v11) = [objc_allocWithZone(MRPlaybackSessionMigrateRequest) init];
  v12 = OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_expectedNowPlayingInfo;
  v13 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  sub_1000326D8(a1, a1[3]);
  sub_100273DDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    sub_1000038A4(v3 + OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_expectedPlaybackState, &qword_100524248, &unk_100457C10);
    sub_1000038A4(v3 + OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_expectedNowPlayingInfo, &qword_100523640, qword_100451520);
    type metadata accessor for RoutingInteraction.Action.HandoffContext(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = 0;
    v3[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v3[3] = v14;
    v20 = 1;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v3[4] = v16;
    v3[5] = v18;
  }

  sub_100026A44(a1);
  return v3;
}

uint64_t sub_10026DFC0(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

uint64_t sub_10026E000()
{
  if (*v0)
  {
    return 0x6E6564496D657469;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_10026E04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000010043E060 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6564496D657469 && a2 == 0xEE00726569666974)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10026E13C(uint64_t a1)
{
  v2 = sub_100273DDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026E178(uint64_t a1)
{
  v2 = sub_100273DDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026E1B4(void *a1)
{
  v3 = sub_1001BC5A8(&qword_100524258, &qword_100455120);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000326D8(a1, a1[3]);
  sub_100273DDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10026E334()
{
  _StringGuts.grow(_:)(27);

  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6C646E7562202D20;
  v2._object = 0xEB00000000203A65;
  String.append(_:)(v2);
  String.append(_:)(v0[1]);
  v3._countAndFlagsBits = 0x203A6D657469202CLL;
  v3._object = 0xE800000000000000;
  String.append(_:)(v3);
  String.append(_:)(v0[2]);
  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 60;
}

uint64_t sub_10026E440()
{

  sub_1000038A4(v0 + OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_expectedPlaybackState, &qword_100524248, &unk_100457C10);
  sub_1000038A4(v0 + OBJC_IVAR____TtCOV12mediaremoted18RoutingInteraction6Action14HandoffContext_expectedNowPlayingInfo, &qword_100523640, qword_100451520);

  return swift_deallocClassInstance();
}

Swift::Int sub_10026E504()
{
  Hasher.init(_seed:)();
  (*(*v0 + 272))(v2);
  return Hasher._finalize()();
}

Swift::Int sub_10026E604(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(**v1 + 272))(v3);
  return Hasher._finalize()();
}

uint64_t sub_10026E66C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 264))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10026E740(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == v3[3];
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    if (*(v2 + 32) == v3[4] && *(v2 + 40) == v3[5])
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

void sub_10026E7C4(uint64_t a1)
{
  if (*(v1 + 24))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t sub_10026E83C()
{
  _StringGuts.grow(_:)(17);

  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6C646E7562202D20;
  v2._object = 0xEB00000000203A65;
  String.append(_:)(v2);
  if (*(v0 + 24))
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 60;
}

uint64_t sub_10026E96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000010043E150 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10026EA00(uint64_t a1)
{
  v2 = sub_100273E50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026EA3C(uint64_t a1)
{
  v2 = sub_100273E50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026EA78(void *a1)
{
  v2 = sub_1001BC5A8(&qword_100524260, &qword_100455128);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000326D8(a1, a1[3]);
  sub_100273E50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int sub_10026EBA8()
{
  Hasher.init(_seed:)();
  (*(*v0 + 96))(v2);
  return Hasher._finalize()();
}

uint64_t sub_10026EC08(void *a1)
{
  v2 = swift_allocObject();
  sub_10026EC58(a1);
  return v2;
}

uint64_t sub_10026EC58(void *a1)
{
  v4 = sub_1001BC5A8(&qword_100524268, &qword_100455130);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  sub_1000326D8(a1, a1[3]);
  sub_100273E50();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for RoutingInteraction.Action.ControlContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v9;
    *(v1 + 24) = v11;
  }

  sub_100026A44(a1);
  return v1;
}

Swift::Int sub_10026EE70(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(**v1 + 96))(v3);
  return Hasher._finalize()();
}

uint64_t sub_10026EED0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10026EF94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 24);
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*(v2 + 16) == *(v3 + 16) && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_10026EFE0()
{
  v1 = type metadata accessor for RoutingControls.TVRemoteControl.Context();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContinuousRoutingControl();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v95 - v10;
  v12 = type metadata accessor for RoutingControl();
  v13 = __chkstk_darwin(v12);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v19 = &v95 - v18;
  v20 = *v0;
  v21 = *(v0 + 32);
  if (v21 <= 5)
  {
    v22 = *(v0 + 8);
    v23 = *(v0 + 16);
    v24 = *(v0 + 24);
    if (*(v0 + 32) <= 2u)
    {
      if (*(v0 + 32))
      {
        v25 = *v0;
        if (v21 == 1)
        {
          v95 = 0;
          v96 = 0xE000000000000000;
          _StringGuts.grow(_:)(30);

          v26 = 0x2865766F6D65722ELL;
LABEL_21:
          v95 = v26;
          v96 = 0xEE00203A6D657469;
          v59._countAndFlagsBits = v25;
          v59._object = v22;
          String.append(_:)(v59);
          v60 = 0x6F6973736573202CLL;
          v61 = 0xEB00000000203A6ELL;
LABEL_26:
          String.append(_:)(*&v60);
          v71 = v23;
          v72 = v24;
LABEL_31:
          String.append(_:)(*&v71);
          v57 = 41;
          v58 = 0xE100000000000000;
          goto LABEL_32;
        }

        v95 = 0;
        v96 = 0xE000000000000000;
        _StringGuts.grow(_:)(27);

        v45 = 1952805678;
      }

      else
      {
        v95 = 0;
        v96 = 0xE000000000000000;
        v25 = v20;
        _StringGuts.grow(_:)(27);

        v45 = 1684300078;
      }

      v95 = v45 | 0x6574692800000000;
      v96 = 0xEB00000000203A6DLL;
      v70._countAndFlagsBits = v25;
      v70._object = v22;
      String.append(_:)(v70);
      v60 = 0x6F6973736573202CLL;
      v61 = 0xEB00000000203A6ELL;
      goto LABEL_26;
    }

    if (v21 != 3)
    {
      v38 = *v0;
      v95 = 0;
      v96 = 0xE000000000000000;
      if (v21 == 4)
      {
        _StringGuts.grow(_:)(21);

        v95 = 0xD000000000000012;
        v96 = 0x800000010043DFD0;
      }

      else
      {
        _StringGuts.grow(_:)(18);

        v95 = 0x697463417465732ELL;
        v96 = 0xEF286D6574496576;
      }

      v71 = v38;
      v72 = v22;
      goto LABEL_31;
    }

    v95 = 0;
    v96 = 0xE000000000000000;
    v25 = v20;
    _StringGuts.grow(_:)(30);

    v26 = 0x287463656C65732ELL;
    goto LABEL_21;
  }

  if (*(v0 + 32) > 8u)
  {
    if (v21 == 9)
    {
      v62 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
      v63 = swift_projectBox();
      v64 = *(v63 + *(v62 + 48));
      (*(v6 + 16))(v9, v63, v5);
      v95 = 0;
      v96 = 0xE000000000000000;

      _StringGuts.grow(_:)(56);
      v65._countAndFlagsBits = 0xD00000000000001FLL;
      v65._object = 0x800000010043DF20;
      String.append(_:)(v65);
      sub_100273EC8(&qword_100524288, 255, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
      v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v66);

      v67._object = 0x800000010043DF40;
      v67._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v67);
      if (*(v64 + 24))
      {
        v68 = *(v64 + 16);
        v69 = *(v64 + 24);
      }

      else
      {
        v68 = 7104878;
        v69 = 0xE300000000000000;
      }

      v88._countAndFlagsBits = v68;
      v88._object = v69;
      String.append(_:)(v88);

      v89._countAndFlagsBits = 41;
      v89._object = 0xE100000000000000;
      String.append(_:)(v89);

      v44 = v95;
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      v39 = v17;
      v40 = v16;
      if (v21 == 10)
      {
        v41 = swift_projectBox();
        (*(v39 + 16))(v15, v41, v40);
        v95 = 0;
        v96 = 0xE000000000000000;
        _StringGuts.grow(_:)(26);

        v95 = 0xD000000000000017;
        v96 = 0x800000010043DF00;
        sub_100273EC8(&qword_100524278, 255, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
        v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v42);

        v43._countAndFlagsBits = 41;
        v43._object = 0xE100000000000000;
        String.append(_:)(v43);
        v44 = v95;
      }

      else
      {
        v81 = sub_1001BC5A8(&qword_100524270, &unk_100458150);
        v82 = swift_projectBox();
        v83 = *(v81 + 48);
        (*(v39 + 16))(v15, v82, v40);
        (*(v2 + 16))(v4, v82 + v83, v1);
        v95 = 0;
        v96 = 0xE000000000000000;
        _StringGuts.grow(_:)(26);
        v84._countAndFlagsBits = 0x746F6D655276742ELL;
        v84._object = 0xEA00000000002865;
        String.append(_:)(v84);
        sub_100273EC8(&qword_100524278, 255, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
        v85._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v85);

        v86._countAndFlagsBits = 0x7865746E6F63202CLL;
        v86._object = 0xEB00000000203A74;
        String.append(_:)(v86);
        _print_unlocked<A, B>(_:_:)();
        v87._countAndFlagsBits = 41;
        v87._object = 0xE100000000000000;
        String.append(_:)(v87);
        v44 = v95;
        (*(v2 + 8))(v4, v1);
      }

      (*(v39 + 8))(v15, v40);
    }
  }

  else
  {
    if (v21 == 6)
    {
      v46 = v20[2];
      v47 = v20[3];
      v48 = v20[4];
      v49 = v20[5];
      v50 = v20[6];
      v95 = 0;
      v96 = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      v51._countAndFlagsBits = 0xD000000000000012;
      v51._object = 0x800000010043DFB0;
      String.append(_:)(v51);
      v52._countAndFlagsBits = v46;
      v52._object = v47;
      String.append(_:)(v52);
      v53._countAndFlagsBits = 0x203A6D657469202CLL;
      v53._object = 0xE800000000000000;
      String.append(_:)(v53);
      v54._countAndFlagsBits = v48;
      v54._object = v49;
      String.append(_:)(v54);
      v55._object = 0x800000010043DF40;
      v55._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v55);
      String.append(_:)(v50[1]);
      v56._countAndFlagsBits = 0x203A6D657469202CLL;
      v56._object = 0xE800000000000000;
      String.append(_:)(v56);
      String.append(_:)(v50[2]);
      v57 = 10537;
      v58 = 0xE200000000000000;
LABEL_32:
      String.append(_:)(*&v57);
      return v95;
    }

    if (v21 == 7)
    {
      v27 = v16;
      v28 = v17;
      v29 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
      v30 = swift_projectBox();
      v31 = *(v30 + *(v29 + 48));
      v32 = v28;
      (*(v28 + 16))(v19, v30, v27);
      v95 = 0;
      v96 = 0xE000000000000000;

      _StringGuts.grow(_:)(44);

      v95 = 0xD000000000000012;
      v96 = 0x800000010043DF90;
      sub_100273EC8(&qword_100524278, 255, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
      v33 = v27;
      v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v34);

      v35._object = 0x800000010043DF40;
      v35._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v35);
      if (*(v31 + 24))
      {
        v36 = *(v31 + 16);
        v37 = *(v31 + 24);
      }

      else
      {
        v36 = 7104878;
        v37 = 0xE300000000000000;
      }

      v90._countAndFlagsBits = v36;
      v90._object = v37;
      String.append(_:)(v90);

      v91._countAndFlagsBits = 10537;
      v91._object = 0xE200000000000000;
      String.append(_:)(v91);

      v44 = v95;
      (*(v32 + 8))(v19, v33);
    }

    else
    {
      v73 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
      v74 = swift_projectBox();
      v75 = *(v74 + *(v73 + 48));
      (*(v6 + 16))(v11, v74, v5);
      v95 = 0;
      v96 = 0xE000000000000000;

      _StringGuts.grow(_:)(59);
      v76._countAndFlagsBits = 0xD000000000000021;
      v76._object = 0x800000010043DF60;
      String.append(_:)(v76);
      sub_100273EC8(&qword_100524288, 255, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
      v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v77);

      v78._object = 0x800000010043DF40;
      v78._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v78);
      if (*(v75 + 24))
      {
        v79 = *(v75 + 16);
        v80 = *(v75 + 24);
      }

      else
      {
        v79 = 7104878;
        v80 = 0xE300000000000000;
      }

      v92._countAndFlagsBits = v79;
      v92._object = v80;
      String.append(_:)(v92);

      v93._countAndFlagsBits = 10537;
      v93._object = 0xE200000000000000;
      String.append(_:)(v93);

      v44 = v95;
      (*(v6 + 8))(v11, v5);
    }
  }

  return v44;
}

unint64_t sub_10026FBBC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000014;
    v7 = 0xD000000000000015;
    if (a1 != 10)
    {
      v7 = 0x65746F6D65527674;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000016;
    if (a1 == 7)
    {
      v8 = 0x6C6F72746E6F63;
    }

    if (a1 == 6)
    {
      v8 = 0x66666F646E6168;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 6579297;
    v2 = 0x7463656C6573;
    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x7669746341746573;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x65766F6D6572;
    if (a1 != 1)
    {
      v4 = 7628147;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10026FD3C()
{
  if (*v0)
  {
    return 0x7247656D756C6F76;
  }

  else
  {
    return 0x6C6F72746E6F63;
  }
}

uint64_t sub_10026FD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7247656D756C6F76 && a2 == 0xEB0000000070756FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10026FE60(uint64_t a1)
{
  v2 = sub_100273FB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026FE9C(uint64_t a1)
{
  v2 = sub_100273FB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026FED8()
{
  if (*v0)
  {
    return 0x6E6F6973736573;
  }

  else
  {
    return 1835365481;
  }
}

uint64_t sub_10026FF10(uint64_t a1)
{
  v2 = sub_100274300();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026FF4C(uint64_t a1)
{
  v2 = sub_100274300();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10026FF88(uint64_t a1)
{
  v2 = sub_100274060();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10026FFC4(uint64_t a1)
{
  v2 = sub_100274060();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100270008@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100274354(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10027003C(uint64_t a1)
{
  v2 = sub_100273F10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100270078(uint64_t a1)
{
  v2 = sub_100273F10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002700B4()
{
  if (*v0)
  {
    return 0x747865746E6F63;
  }

  else
  {
    return 0x6C6F72746E6F63;
  }
}

uint64_t sub_1002700EC(uint64_t a1)
{
  v2 = sub_1002740B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100270128(uint64_t a1)
{
  v2 = sub_1002740B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100270164(uint64_t a1)
{
  v2 = sub_10027400C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002701A0(uint64_t a1)
{
  v2 = sub_10027400C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002701DC()
{
  v1 = 1835365481;
  if (*v0 != 1)
  {
    v1 = 0x747865746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973736573;
  }
}

uint64_t sub_100270230@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10027471C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100270264(uint64_t a1)
{
  v2 = sub_100274108();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002702A0(uint64_t a1)
{
  v2 = sub_100274108();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002702DC(uint64_t a1)
{
  v2 = sub_1002742AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100270318(uint64_t a1)
{
  v2 = sub_1002742AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100270354(uint64_t a1)
{
  v2 = sub_100274204();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100270390(uint64_t a1)
{
  v2 = sub_100274204();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002703DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1835365481 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100270464(uint64_t a1)
{
  v2 = sub_10027415C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002704A0(uint64_t a1)
{
  v2 = sub_10027415C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002704F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10027057C(uint64_t a1)
{
  v2 = sub_1002741B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002705B8(uint64_t a1)
{
  v2 = sub_1002741B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002705F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1002706D0(uint64_t a1)
{
  v2 = sub_100274258();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10027070C(uint64_t a1)
{
  v2 = sub_100274258();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100270748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100270824(uint64_t a1)
{
  v2 = sub_100273F64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100270860(uint64_t a1)
{
  v2 = sub_100273F64();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10027089C(void *a1)
{
  v2 = sub_1001BC5A8(&qword_100524298, &qword_100455148);
  v140 = *(v2 - 8);
  v141 = v2;
  __chkstk_darwin(v2);
  v138 = &v107 - v3;
  v147 = type metadata accessor for RoutingControls.TVRemoteControl.Context();
  v139 = *(v147 - 8);
  __chkstk_darwin(v147);
  v146 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001BC5A8(&qword_1005242A0, &qword_100455150);
  v136 = *(v5 - 8);
  v137 = v5;
  __chkstk_darwin(v5);
  v135 = &v107 - v6;
  v134 = sub_1001BC5A8(&qword_1005242A8, &qword_100455158);
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v132 = &v107 - v7;
  v131 = sub_1001BC5A8(&qword_1005242B0, &qword_100455160);
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v107 - v8;
  v9 = type metadata accessor for ContinuousRoutingControl();
  v148 = *(v9 - 8);
  v149 = v9;
  v10 = __chkstk_darwin(v9);
  v145 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v144 = &v107 - v12;
  v128 = sub_1001BC5A8(&qword_1005242B8, &qword_100455168);
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v107 - v13;
  v14 = type metadata accessor for RoutingControl();
  v15 = *(v14 - 8);
  v150 = v14;
  v151 = v15;
  v16 = __chkstk_darwin(v14);
  v143 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v125 = &v107 - v19;
  __chkstk_darwin(v18);
  v142 = &v107 - v20;
  v124 = sub_1001BC5A8(&qword_1005242C0, &qword_100455170);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v107 - v21;
  v121 = sub_1001BC5A8(&qword_1005242C8, &qword_100455178);
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v107 - v22;
  v117 = sub_1001BC5A8(&qword_1005242D0, &qword_100455180);
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v113 = &v107 - v23;
  v118 = sub_1001BC5A8(&qword_1005242D8, &qword_100455188);
  v116 = *(v118 - 8);
  __chkstk_darwin(v118);
  v114 = &v107 - v24;
  v112 = sub_1001BC5A8(&qword_1005242E0, &qword_100455190);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v107 - v25;
  v109 = sub_1001BC5A8(&qword_1005242E8, &qword_100455198);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v27 = &v107 - v26;
  v28 = sub_1001BC5A8(&qword_1005242F0, &qword_1004551A0);
  v107 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v107 - v29;
  v31 = sub_1001BC5A8(&qword_1005242F8, &qword_1004551A8);
  v154 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v107 - v32;
  sub_1000326D8(a1, a1[3]);
  sub_100273F10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v34 = v152[32];
  if (v34 > 5)
  {
    if (v152[32] > 8u)
    {
      v51 = v31;
      if (v34 != 9)
      {
        if (v34 != 10)
        {
          v90 = sub_1001BC5A8(&qword_100524270, &unk_100458150);
          v91 = swift_projectBox();
          v92 = *(v90 + 48);
          v94 = v150;
          v93 = v151;
          v95 = v143;
          (*(v151 + 16))(v143, v91, v150);
          v96 = v139;
          (*(v139 + 16))(v146, v91 + v92, v147);
          LOBYTE(v156) = 11;
          sub_100273F64();
          v97 = v138;
          v152 = v33;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          LOBYTE(v156) = 0;
          sub_100273EC8(&qword_100524300, 255, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
          v98 = v141;
          v99 = v153;
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          if (v99)
          {
            (*(v140 + 8))(v97, v98);
            (*(v96 + 8))(v146, v147);
            (*(v93 + 8))(v95, v94);
            (*(v154 + 8))(v152, v51);
          }

          else
          {
            v104 = v93;
            v153 = v51;
            LOBYTE(v156) = 1;
            sub_100273EC8(&qword_100524308, 255, &type metadata accessor for RoutingControls.TVRemoteControl.Context, &protocol conformance descriptor for RoutingControls.TVRemoteControl.Context);
            v106 = v146;
            v105 = v147;
            KeyedEncodingContainer.encode<A>(_:forKey:)();
            (*(v140 + 8))(v97, v98);
            (*(v96 + 8))(v106, v105);
            (*(v104 + 8))(v143, v94);
            (*(v154 + 8))(v152, v153);
          }

          return result;
        }

        v52 = sub_1001BC5A8(&qword_100523030, &unk_100450F40);
        v53 = swift_projectBox();
        v54 = *(v53 + *(v52 + 48));
        v56 = v150;
        v55 = v151;
        v57 = v125;
        (*(v151 + 16))(v125, v53, v150);
        LOBYTE(v156) = 10;
        sub_100273FB8();

        v58 = v135;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        LOBYTE(v156) = 0;
        sub_100273EC8(&qword_100524300, 255, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
        v59 = v51;
        v60 = v137;
        v61 = v153;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        if (v61)
        {

          (*(v136 + 8))(v58, v60);
          (*(v55 + 8))(v57, v56);
          (*(v154 + 8))(v33, v59);
          return result;
        }

        v152 = v33;
        v156 = v54;
        v155 = 1;
        type metadata accessor for VolumeGroup();
        sub_100273EC8(&qword_100524310, 255, &type metadata accessor for VolumeGroup, &protocol conformance descriptor for VolumeGroup);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v136 + 8))(v58, v60);
        (*(v55 + 8))(v57, v56);
        (*(v154 + 8))(v152, v59);
        goto LABEL_49;
      }

      v68 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
      v69 = swift_projectBox();
      v70 = *(v69 + *(v68 + 48));
      v72 = v148;
      v71 = v149;
      v73 = v145;
      (*(v148 + 16))(v145, v69, v149);
      LOBYTE(v156) = 9;
      sub_10027400C();

      v74 = v132;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v156) = 0;
      sub_100273EC8(&qword_100524318, 255, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
      v75 = v51;
      v76 = v134;
      v77 = v153;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v77)
      {

        (*(v133 + 8))(v74, v76);
        (*(v72 + 8))(v73, v71);
        (*(v154 + 8))(v33, v75);
        return result;
      }

      v100 = v33;
      v156 = v70;
      v155 = 1;
      type metadata accessor for RoutingInteraction.Action.ControlContext();
      sub_100273EC8(&qword_100524320, v101, type metadata accessor for RoutingInteraction.Action.ControlContext, &unk_100455448);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v133 + 8))(v74, v76);
      (*(v72 + 8))(v145, v71);
    }

    else
    {
      v38 = v31;
      if (v34 == 6)
      {
        v63 = *(*v152 + 48);
        LOBYTE(v156) = 6;
        sub_100274108();
        v64 = v122;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        LOBYTE(v156) = 0;
        v65 = v124;
        v66 = v153;
        KeyedEncodingContainer.encode(_:forKey:)();
        if (!v66)
        {
          LOBYTE(v156) = 1;
          KeyedEncodingContainer.encode(_:forKey:)();
          v156 = v63;
          v155 = 2;
          type metadata accessor for RoutingInteraction.Action.HandoffContext(0);
          sub_100273EC8(&qword_100524328, 255, type metadata accessor for RoutingInteraction.Action.HandoffContext, &unk_100455368);
          KeyedEncodingContainer.encode<A>(_:forKey:)();
        }

        (*(v123 + 8))(v64, v65);
        goto LABEL_25;
      }

      if (v34 == 7)
      {
        v39 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
        v40 = swift_projectBox();
        v41 = *(v40 + *(v39 + 48));
        v43 = v150;
        v42 = v151;
        v44 = v142;
        (*(v151 + 16))(v142, v40, v150);
        LOBYTE(v156) = 7;
        sub_1002740B4();
        v152 = v41;

        v45 = v126;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        LOBYTE(v156) = 0;
        sub_100273EC8(&qword_100524300, 255, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
        v46 = v128;
        v47 = v153;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        if (v47)
        {

          (*(v127 + 8))(v45, v46);
          (*(v42 + 8))(v44, v43);
LABEL_25:
          (*(v154 + 8))(v33, v38);
          return result;
        }

        v156 = v152;
        v155 = 1;
        type metadata accessor for RoutingInteraction.Action.ControlContext();
        sub_100273EC8(&qword_100524320, v102, type metadata accessor for RoutingInteraction.Action.ControlContext, &unk_100455448);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v127 + 8))(v45, v46);
        (*(v151 + 8))(v142, v150);
        (*(v154 + 8))(v33, v38);
LABEL_49:

        return result;
      }

      v81 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
      v82 = swift_projectBox();
      v83 = *(v82 + *(v81 + 48));
      v85 = v148;
      v84 = v149;
      v31 = v38;
      v86 = v144;
      (*(v148 + 16))(v144, v82, v149);
      LOBYTE(v156) = 8;
      sub_100274060();
      v152 = v83;

      v87 = v129;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v156) = 0;
      sub_100273EC8(&qword_100524318, 255, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
      v88 = v131;
      v89 = v153;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v89)
      {

        (*(v130 + 8))(v87, v88);
        (*(v85 + 8))(v86, v84);
LABEL_38:
        (*(v154 + 8))(v33, v31);
        return result;
      }

      v100 = v33;
      v75 = v31;
      v156 = v152;
      v155 = 1;
      type metadata accessor for RoutingInteraction.Action.ControlContext();
      sub_100273EC8(&qword_100524320, v103, type metadata accessor for RoutingInteraction.Action.ControlContext, &unk_100455448);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v130 + 8))(v87, v88);
      (*(v148 + 8))(v144, v149);
    }

    (*(v154 + 8))(v100, v75);
    goto LABEL_49;
  }

  if (v152[32] > 2u)
  {
    if (v34 == 3)
    {
      v152 = *(v152 + 2);
      LOBYTE(v156) = 3;
      sub_100274204();
      v48 = v114;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v156) = 0;
      v49 = v118;
      v67 = v153;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v67)
      {
        LOBYTE(v156) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      v50 = &v148;
    }

    else if (v34 == 4)
    {
      LOBYTE(v156) = 4;
      sub_1002741B0();
      v48 = v113;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v49 = v117;
      KeyedEncodingContainer.encode(_:forKey:)();
      v50 = &v147;
    }

    else
    {
      LOBYTE(v156) = 5;
      sub_10027415C();
      v48 = v119;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v49 = v121;
      KeyedEncodingContainer.encode(_:forKey:)();
      v50 = &v152;
    }

    (*(*(v50 - 32) + 8))(v48, v49);
    goto LABEL_38;
  }

  v152 = *(v152 + 3);
  if (v34)
  {
    if (v34 == 1)
    {
      LOBYTE(v156) = 1;
      sub_1002742AC();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v156) = 0;
      v35 = v109;
      v36 = v153;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (v36)
      {
        (*(v108 + 8))(v27, v35);
        (*(v154 + 8))(v33, v31);
        return result;
      }

      LOBYTE(v156) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v108 + 8))(v27, v35);
    }

    else
    {
      LOBYTE(v156) = 2;
      sub_100274258();
      v78 = v110;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v156) = 0;
      v79 = v112;
      v80 = v153;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v80)
      {
        LOBYTE(v156) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      (*(v111 + 8))(v78, v79);
    }
  }

  else
  {
    LOBYTE(v156) = 0;
    sub_100274300();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v156) = 0;
    v62 = v153;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v62)
    {
      LOBYTE(v156) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v107 + 8))(v30, v28);
  }

  (*(v154 + 8))(v33, v31);
  return result;
}

void sub_100272220(uint64_t a1)
{
  v3 = type metadata accessor for RoutingControls.TVRemoteControl.Context();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContinuousRoutingControl();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RoutingControl();
  v12 = __chkstk_darwin(v11);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[32];
  if (v16 > 5)
  {
    if (v1[32] > 8u)
    {
      if (v16 != 9)
      {
        v24 = v13;
        v25 = v12;
        if (v16 == 10)
        {
          v26 = sub_1001BC5A8(&qword_100523030, &unk_100450F40);
          v27 = swift_projectBox();
          v28 = *(v27 + *(v26 + 48));
          (*(v24 + 16))(v15, v27, v25);
          Hasher._combine(_:)(0xAuLL);
          sub_100273EC8(&qword_100524330, 255, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);

          dispatch thunk of Hashable.hash(into:)();
          v39[1] = v28;
          type metadata accessor for VolumeGroup();
          sub_100273EC8(&qword_100524340, 255, &type metadata accessor for VolumeGroup, &protocol conformance descriptor for VolumeGroup);
          dispatch thunk of Hashable.hash(into:)();
          (*(v24 + 8))(v15, v25);
        }

        else
        {
          v36 = sub_1001BC5A8(&qword_100524270, &unk_100458150);
          v37 = swift_projectBox();
          v38 = *(v36 + 48);
          (*(v24 + 16))(v15, v37, v25);
          (*(v4 + 16))(v6, v37 + v38, v3);
          Hasher._combine(_:)(0xBuLL);
          sub_100273EC8(&qword_100524330, 255, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
          dispatch thunk of Hashable.hash(into:)();
          sub_100273EC8(&qword_100524338, 255, &type metadata accessor for RoutingControls.TVRemoteControl.Context, &protocol conformance descriptor for RoutingControls.TVRemoteControl.Context);
          dispatch thunk of Hashable.hash(into:)();
          (*(v4 + 8))(v6, v3);
          (*(v24 + 8))(v15, v25);
        }

        return;
      }

      v30 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
      v31 = swift_projectBox();
      v32 = *(v31 + *(v30 + 48));
      (*(v8 + 16))(v10, v31, v7);
      v33 = 9;
    }

    else
    {
      if (v16 == 6)
      {
        v29 = *(*v1 + 48);
        Hasher._combine(_:)(6uLL);
        String.hash(into:)();
        String.hash(into:)();
        (*(*v29 + 272))(a1);
        return;
      }

      if (v16 == 7)
      {
        v18 = v12;
        v19 = v13;
        v20 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
        v21 = swift_projectBox();
        v22 = *(v21 + *(v20 + 48));
        (*(v19 + 16))(v15, v21, v18);
        Hasher._combine(_:)(7uLL);
        sub_100273EC8(&qword_100524330, 255, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);

        dispatch thunk of Hashable.hash(into:)();
        (*(*v22 + 96))(a1);

        (*(v19 + 8))(v15, v18);
        return;
      }

      v34 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
      v35 = swift_projectBox();
      v32 = *(v35 + *(v34 + 48));
      (*(v8 + 16))(v10, v35, v7);
      v33 = 8;
    }

    Hasher._combine(_:)(v33);
    sub_100273EC8(&qword_100524348, 255, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);

    dispatch thunk of Hashable.hash(into:)();
    (*(*v32 + 96))(a1);

    (*(v8 + 8))(v10, v7);
    return;
  }

  if (v1[32] > 2u)
  {
    if (v16 != 3)
    {
      if (v16 == 4)
      {
        v23 = 4;
      }

      else
      {
        v23 = 5;
      }

      Hasher._combine(_:)(v23);
      goto LABEL_26;
    }

    v17 = 3;
  }

  else if (v1[32])
  {
    if (v16 == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {
    v17 = 0;
  }

  Hasher._combine(_:)(v17);
  String.hash(into:)();
LABEL_26:

  String.hash(into:)();
}

Swift::Int sub_100272A08()
{
  Hasher.init(_seed:)();
  sub_100272220(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100272A4C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100272220(v2);
  return Hasher._finalize()();
}

double sub_100272A88@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100274834(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_100272AEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100273050(v5, v7) & 1;
}

__n128 sub_100272B38@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  *a2 = static String.nanoIDFourChar()();
  *(a2 + 8) = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v7;
  *(a2 + 48) = v4;
  return result;
}

unint64_t sub_100272B7C()
{
  _StringGuts.grow(_:)(33);

  String.append(_:)(*v0);
  v1._countAndFlagsBits = 0x6E6F69746361202CLL;
  v1._object = 0xEA0000000000203ALL;
  String.append(_:)(v1);
  v2._countAndFlagsBits = sub_10026EFE0();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0xD000000000000022;
}

uint64_t sub_100272C38()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_100272C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100272D54(uint64_t a1)
{
  v2 = sub_100276744();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100272D90(uint64_t a1)
{
  v2 = sub_100276744();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100272DCC(void *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_100524350, qword_1004551B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000326D8(a1, a1[3]);
  sub_100276744();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v12 = *(v3 + 16);
    v13 = v9;
    v14 = *(v3 + 48);
    v11[15] = 1;
    sub_100276798();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_100272F50()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100272F9C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

double sub_100272FE4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1002767EC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_100273050(uint64_t a1, void *a2)
{
  v151 = a2;
  v3 = type metadata accessor for RoutingControls.TVRemoteControl.Context();
  v147 = *(v3 - 8);
  v148 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v144 = &v144 - v7;
  v8 = type metadata accessor for ContinuousRoutingControl();
  v9 = *(v8 - 8);
  v149 = v8;
  v150 = v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v146 = &v144 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v144 - v16;
  __chkstk_darwin(v15);
  v145 = &v144 - v18;
  v19 = type metadata accessor for RoutingControl();
  v20 = __chkstk_darwin(v19);
  v22 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v144 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v144 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v144 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v144 - v33;
  v35 = __chkstk_darwin(v32);
  v38 = &v144 - v37;
  v39 = *a1;
  v40 = *(a1 + 32);
  if (v40 > 5)
  {
    if (*(a1 + 32) > 8u)
    {
      if (v40 != 9)
      {
        if (v40 != 10)
        {
          if (*(v151 + 32) == 11)
          {
            v103 = v36;
            v104 = v35;
            v105 = sub_1001BC5A8(&qword_100524270, &unk_100458150);
            v106 = swift_projectBox();
            v107 = *(v105 + 48);
            v108 = swift_projectBox();
            v151 = v103;
            v109 = v103[2];
            v109(v25, v106, v104);
            v150 = v104;
            v109(v22, v108, v104);
            v110 = v147;
            v111 = *(v147 + 16);
            v112 = v106 + v107;
            v113 = v144;
            v114 = v148;
            v111(v144, v112, v148);
            v111(v6, v108 + v107, v114);
            if (static RoutingControl.== infix(_:_:)())
            {
              v67 = static RoutingControls.TVRemoteControl.Context.== infix(_:_:)();
              v115 = *(v110 + 8);
              v115(v6, v114);
              v115(v113, v114);
              v116 = v150;
              v117 = v151[1];
              v117(v22, v150);
              v117(v25, v116);
              return v67 & 1;
            }

            v124 = *(v110 + 8);
            v124(v6, v114);
            v124(v113, v114);
            v125 = v150;
            v126 = v151[1];
            v126(v22, v150);
            v126(v25, v125);
          }

          goto LABEL_97;
        }

        v61 = v36;
        v62 = v35;
        sub_1001BC5A8(&qword_100523030, &unk_100450F40);
        v63 = swift_projectBox();
        if (*(v151 + 32) != 10)
        {
          goto LABEL_97;
        }

        v64 = v63;
        v65 = swift_projectBox();
        v66 = v61[2];
        v66(v31, v64, v62);
        v66(v28, v65, v62);

        if ((static RoutingControl.== infix(_:_:)() & 1) == 0)
        {

          v123 = v61[1];
          v123(v28, v62);
          v123(v31, v62);
          goto LABEL_97;
        }

        type metadata accessor for VolumeGroup();
        v67 = static VolumeGroup.== infix(_:_:)();

        v68 = v61[1];
        v68(v28, v62);
        v68(v31, v62);
        return v67 & 1;
      }

      v75 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
      v76 = swift_projectBox();
      if (*(v151 + 32) != 9)
      {
        goto LABEL_97;
      }

      v77 = *(v75 + 48);
      v78 = *(v76 + v77);
      v79 = v76;
      v80 = swift_projectBox();
      v81 = *(v80 + v77);
      v83 = v149;
      v82 = v150;
      v84 = *(v150 + 16);
      v85 = v146;
      v84(v146, v79, v149);
      v84(v12, v80, v83);

      if (static ContinuousRoutingControl.== infix(_:_:)())
      {
        v86 = *(v78 + 24);
        v87 = *(v81 + 24);
        if (v86)
        {
          if (!v87)
          {
            v132 = *(v82 + 8);
            v132(v12, v83);
            v132(v85, v83);
            goto LABEL_91;
          }

          if (*(v78 + 16) == *(v81 + 16) && v86 == v87)
          {
            v88 = *(v82 + 8);
            v88(v12, v83);
            v88(v85, v83);
LABEL_65:

            v67 = 1;
            return v67 & 1;
          }

          v137 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v138 = *(v82 + 8);
          v138(v12, v83);
          v139 = v85;
LABEL_96:
          v138(v139, v83);

          if ((v137 & 1) == 0)
          {
            goto LABEL_97;
          }

          goto LABEL_69;
        }

        v127 = *(v82 + 8);
        v127(v12, v83);
        v128 = v85;
LABEL_86:
        v127(v128, v83);

        if (v87)
        {
          goto LABEL_97;
        }

        goto LABEL_69;
      }

      v119 = *(v82 + 8);
      v119(v12, v83);
      v120 = v85;
    }

    else
    {
      if (v40 == 6)
      {
        if (*(v151 + 32) != 6)
        {
          goto LABEL_97;
        }

        v69 = v39[4];
        v70 = v39[5];
        v71 = v39[6];
        v72 = *(*v151 + 32);
        v73 = *(*v151 + 40);
        v74 = *(*v151 + 48);
        if ((v39[2] != *(*v151 + 16) || v39[3] != *(*v151 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_97;
        }

        if ((v69 != v72 || v70 != v73) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v71[2] != v74[2] || v71[3] != v74[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v71[4] != v74[4] || v71[5] != v74[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_97;
        }

        goto LABEL_69;
      }

      if (v40 == 7)
      {
        v45 = v36;
        v150 = v35;
        v46 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
        v47 = swift_projectBox();
        if (*(v151 + 32) != 7)
        {
          goto LABEL_97;
        }

        v48 = *(v46 + 48);
        v49 = *(v47 + v48);
        v50 = v47;
        v51 = swift_projectBox();
        v52 = *(v51 + v48);
        v53 = v45[2];
        v54 = v50;
        v55 = v150;
        v53(v38, v54, v150);
        v53(v34, v51, v55);

        if ((static RoutingControl.== infix(_:_:)() & 1) == 0)
        {

          v121 = v45[1];
          v122 = v150;
          v121(v34, v150);
          v121(v38, v122);
          goto LABEL_97;
        }

        v56 = *(v49 + 24);
        v57 = *(v52 + 24);
        if (!v56)
        {
          v129 = v45[1];
          v130 = v34;
          v131 = v150;
          v129(v130, v150);
          v129(v38, v131);

          if (v57)
          {
            goto LABEL_97;
          }

          goto LABEL_69;
        }

        if (v57)
        {
          if (*(v49 + 16) != *(v52 + 16) || v56 != v57)
          {
            v140 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v141 = v45[1];
            v142 = v34;
            v143 = v150;
            v141(v142, v150);
            v141(v38, v143);

            if ((v140 & 1) == 0)
            {
              goto LABEL_97;
            }

            goto LABEL_69;
          }

          v58 = v45[1];
          v59 = v34;
          v60 = v150;
          v58(v59, v150);
          v58(v38, v60);
          goto LABEL_65;
        }

        v133 = v45[1];
        v134 = v34;
        v135 = v150;
        v133(v134, v150);
        v133(v38, v135);
LABEL_91:

        goto LABEL_97;
      }

      v91 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
      v92 = swift_projectBox();
      if (*(v151 + 32) != 8)
      {
        goto LABEL_97;
      }

      v93 = *(v91 + 48);
      v94 = *(v92 + v93);
      v95 = v92;
      v96 = swift_projectBox();
      v97 = *(v96 + v93);
      v83 = v149;
      v98 = v150;
      v99 = *(v150 + 16);
      v100 = v145;
      v99(v145, v95, v149);
      v99(v17, v96, v83);

      if (static ContinuousRoutingControl.== infix(_:_:)())
      {
        v101 = *(v94 + 24);
        v87 = *(v97 + 24);
        if (v101)
        {
          if (!v87)
          {
            v136 = *(v98 + 8);
            v136(v17, v83);
            v136(v100, v83);
            goto LABEL_91;
          }

          if (*(v94 + 16) == *(v97 + 16) && v101 == v87)
          {
            v102 = *(v98 + 8);
            v102(v17, v83);
            v102(v100, v83);
            goto LABEL_65;
          }

          v137 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v138 = *(v98 + 8);
          v138(v17, v83);
          v139 = v100;
          goto LABEL_96;
        }

        v127 = *(v98 + 8);
        v127(v17, v83);
        v128 = v100;
        goto LABEL_86;
      }

      v119 = *(v98 + 8);
      v119(v17, v83);
      v120 = v100;
    }

    v119(v120, v83);
    goto LABEL_97;
  }

  v41 = *(a1 + 8);
  v42 = *(a1 + 16);
  v43 = *(a1 + 24);
  if (*(a1 + 32) <= 2u)
  {
    v44 = v151;
    if (*(a1 + 32))
    {
      if (v40 == 1)
      {
        if (*(v151 + 32) != 1)
        {
          goto LABEL_97;
        }
      }

      else if (*(v151 + 32) != 2)
      {
        goto LABEL_97;
      }
    }

    else if (*(v151 + 32))
    {
      goto LABEL_97;
    }

    goto LABEL_52;
  }

  v44 = v151;
  if (v40 == 3)
  {
    if (*(v151 + 32) != 3)
    {
      goto LABEL_97;
    }

LABEL_52:
    v89 = v44[2];
    v90 = v44[3];
    if (v39 == *v44 && v41 == v44[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (v42 != v89 || v43 != v90)
      {
        goto LABEL_73;
      }

      goto LABEL_69;
    }

LABEL_97:
    v67 = 0;
    return v67 & 1;
  }

  if (v40 == 4)
  {
    if (*(v151 + 32) != 4)
    {
      goto LABEL_97;
    }
  }

  else if (*(v151 + 32) != 5)
  {
    goto LABEL_97;
  }

  if (v39 == *v151 && v41 == v151[1])
  {
LABEL_69:
    v67 = 1;
    return v67 & 1;
  }

LABEL_73:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_100273DDC()
{
  result = qword_10052F5F0;
  if (!qword_10052F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F5F0);
  }

  return result;
}

unint64_t sub_100273E50()
{
  result = qword_10052F5F8;
  if (!qword_10052F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F5F8);
  }

  return result;
}

uint64_t sub_100273EC8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100273F10()
{
  result = qword_10052F600;
  if (!qword_10052F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F600);
  }

  return result;
}

unint64_t sub_100273F64()
{
  result = qword_10052F608;
  if (!qword_10052F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F608);
  }

  return result;
}

unint64_t sub_100273FB8()
{
  result = qword_10052F610;
  if (!qword_10052F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F610);
  }

  return result;
}

unint64_t sub_10027400C()
{
  result = qword_10052F618;
  if (!qword_10052F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F618);
  }

  return result;
}

unint64_t sub_100274060()
{
  result = qword_10052F620;
  if (!qword_10052F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F620);
  }

  return result;
}

unint64_t sub_1002740B4()
{
  result = qword_10052F628;
  if (!qword_10052F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F628);
  }

  return result;
}

unint64_t sub_100274108()
{
  result = qword_10052F630;
  if (!qword_10052F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F630);
  }

  return result;
}

unint64_t sub_10027415C()
{
  result = qword_10052F638;
  if (!qword_10052F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F638);
  }

  return result;
}

unint64_t sub_1002741B0()
{
  result = qword_10052F640;
  if (!qword_10052F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F640);
  }

  return result;
}

unint64_t sub_100274204()
{
  result = qword_10052F648;
  if (!qword_10052F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F648);
  }

  return result;
}

unint64_t sub_100274258()
{
  result = qword_10052F650;
  if (!qword_10052F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F650);
  }

  return result;
}

unint64_t sub_1002742AC()
{
  result = qword_10052F658;
  if (!qword_10052F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F658);
  }

  return result;
}

unint64_t sub_100274300()
{
  result = qword_10052F660;
  if (!qword_10052F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052F660);
  }

  return result;
}

uint64_t sub_100274354(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579297 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65766F6D6572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7628147 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7463656C6573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010043E170 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7669746341746573 && a2 == 0xED00006D65744965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x66666F646E6168 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010043E190 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010043E1B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010043E1D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65746F6D65527674 && a2 == 0xE800000000000000)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_10027471C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1835365481 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100274834@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v164 = a2;
  v3 = sub_1001BC5A8(&qword_100524668, &qword_100456E90);
  v4 = *(v3 - 8);
  v155 = v3;
  v156 = v4;
  __chkstk_darwin(v3);
  v162 = &v131 - v5;
  v6 = sub_1001BC5A8(&qword_100524670, &qword_100456E98);
  v7 = *(v6 - 8);
  v153 = v6;
  v154 = v7;
  __chkstk_darwin(v6);
  v160 = &v131 - v8;
  v9 = sub_1001BC5A8(&qword_100524678, &qword_100456EA0);
  v151 = *(v9 - 8);
  v152 = v9;
  __chkstk_darwin(v9);
  v167 = &v131 - v10;
  v11 = sub_1001BC5A8(&qword_100524680, &qword_100456EA8);
  v149 = *(v11 - 8);
  v150 = v11;
  __chkstk_darwin(v11);
  v161 = &v131 - v12;
  v147 = sub_1001BC5A8(&qword_100524688, &qword_100456EB0);
  v148 = *(v147 - 8);
  __chkstk_darwin(v147);
  v158 = &v131 - v13;
  v143 = sub_1001BC5A8(&qword_100524690, &qword_100456EB8);
  v146 = *(v143 - 8);
  __chkstk_darwin(v143);
  v163 = &v131 - v14;
  v145 = sub_1001BC5A8(&qword_100524698, &qword_100456EC0);
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v157 = &v131 - v15;
  v142 = sub_1001BC5A8(&qword_1005246A0, &qword_100456EC8);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v159 = &v131 - v16;
  v140 = sub_1001BC5A8(&qword_1005246A8, &qword_100456ED0);
  v138 = *(v140 - 8);
  __chkstk_darwin(v140);
  v166 = &v131 - v17;
  v139 = sub_1001BC5A8(&qword_1005246B0, &qword_100456ED8);
  v136 = *(v139 - 8);
  __chkstk_darwin(v139);
  v165 = &v131 - v18;
  v137 = sub_1001BC5A8(&qword_1005246B8, &qword_100456EE0);
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v20 = &v131 - v19;
  v21 = sub_1001BC5A8(&qword_1005246C0, &qword_100456EE8);
  v134 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v131 - v22;
  v24 = sub_1001BC5A8(&qword_1005246C8, &unk_100456EF0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v131 - v26;
  v28 = a1[3];
  v169 = a1;
  sub_1000326D8(a1, v28);
  sub_100273F10();
  v29 = v168;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    return sub_100026A44(v169);
  }

  v131 = v21;
  v30 = v20;
  v32 = v165;
  v31 = v166;
  v33 = v167;
  v133 = v25;
  v132 = 0;
  v168 = v24;
  v34 = KeyedDecodingContainer.allKeys.getter();
  if (*(v34 + 16) != 1 || (v35 = *(v34 + 32), v35 == 12))
  {
    v40 = type metadata accessor for DecodingError();
    swift_allocError();
    v42 = v41;
    sub_1001BC5A8(&unk_100527470, &qword_100455110);
    *v42 = &type metadata for RoutingInteraction.Action;
    v43 = v168;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v40 - 8) + 104))(v42, enum case for DecodingError.typeMismatch(_:), v40);
    swift_willThrow();
    goto LABEL_11;
  }

  if (*(v34 + 32) <= 5u)
  {
    if (*(v34 + 32) <= 2u)
    {
      if (!*(v34 + 32))
      {
        v170 = 0;
        sub_100274300();
        v63 = v23;
        v64 = v168;
        v65 = v132;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v65)
        {
          v170 = 0;
          v84 = v131;
          v85 = KeyedDecodingContainer.decode(_:forKey:)();
          v113 = v100;
          v163 = v85;
          LODWORD(v135) = 0;
          v101 = v27;
          v170 = 1;
          v102 = KeyedDecodingContainer.decode(_:forKey:)();
          v103 = (v133 + 8);
          v132 = 0;
          v109 = v102;
          v125 = v126;
          (*(v134 + 8))(v63, v84);
          (*v103)(v101, v168);
          goto LABEL_53;
        }

        (*(v133 + 8))(v27, v64);
LABEL_12:
        swift_unknownObjectRelease();
        return sub_100026A44(v169);
      }

      if (v35 == 1)
      {
        v170 = 1;
        sub_1002742AC();
        v36 = v30;
        v37 = v27;
        v38 = v168;
        v39 = v132;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (v39)
        {
          (*(v133 + 8))(v37, v38);
          swift_unknownObjectRelease();
          return sub_100026A44(v169);
        }

        v91 = v37;
        v170 = 0;
        v92 = v137;
        v93 = KeyedDecodingContainer.decode(_:forKey:)();
        v167 = v119;
        v163 = v93;
        v170 = 1;
        v120 = KeyedDecodingContainer.decode(_:forKey:)();
        v121 = (v135 + 8);
        v122 = (v133 + 8);
        v132 = 0;
        v109 = v120;
        v125 = v130;
        LODWORD(v135) = 1;
        (*v121)(v36, v92);
        (*v122)(v91, v168);
        goto LABEL_54;
      }

      v170 = 2;
      sub_100274258();
      v74 = v32;
      v43 = v168;
      v75 = v132;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v75)
      {
        v170 = 0;
        v76 = v139;
        v77 = KeyedDecodingContainer.decode(_:forKey:)();
        v113 = v115;
        v163 = v77;
        LODWORD(v135) = v35;
        v166 = v27;
        v170 = 1;
        v116 = KeyedDecodingContainer.decode(_:forKey:)();
        v117 = (v133 + 8);
        v132 = 0;
        v109 = v116;
        v125 = v129;
        (*(v136 + 8))(v74, v76);
        (*v117)(v166, v43);
LABEL_53:
        swift_unknownObjectRelease();
LABEL_58:
        v111 = v163;
        v54 = v164;
        goto LABEL_59;
      }

LABEL_11:
      (*(v133 + 8))(v27, v43);
      goto LABEL_12;
    }

    if (v35 == 3)
    {
      v170 = 3;
      sub_100274204();
      v67 = v31;
      v43 = v168;
      v68 = v132;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v69 = v133;
      if (!v68)
      {
        v170 = 0;
        v70 = v140;
        v71 = KeyedDecodingContainer.decode(_:forKey:)();
        v167 = v97;
        v163 = v71;
        LODWORD(v135) = 3;
        v98 = v27;
        v170 = 1;
        v99 = KeyedDecodingContainer.decode(_:forKey:)();
        v132 = 0;
        v109 = v99;
        v125 = v124;
        (*(v138 + 8))(v67, v70);
        (*(v69 + 8))(v98, v43);
LABEL_54:
        swift_unknownObjectRelease();
        v111 = v163;
        v54 = v164;
        v113 = v167;
        goto LABEL_59;
      }

      goto LABEL_11;
    }

    LODWORD(v135) = *(v34 + 32);
    v50 = v168;
    v51 = v133;
    if (v35 == 4)
    {
      v170 = 4;
      sub_1002741B0();
      v52 = v159;
      v53 = v132;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v54 = v164;
      if (!v53)
      {
        v55 = v142;
        v56 = KeyedDecodingContainer.decode(_:forKey:)();
        v57 = v52;
        v109 = 0;
        v111 = v56;
        v113 = v112;
        v132 = 0;
        v114 = &v171;
LABEL_52:
        (*(*(v114 - 32) + 8))(v57, v55);
        (*(v51 + 8))(v27, v50);
        swift_unknownObjectRelease();
        v125 = 0;
        goto LABEL_59;
      }
    }

    else
    {
      v170 = 5;
      sub_10027415C();
      v79 = v157;
      v80 = v132;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v54 = v164;
      if (!v80)
      {
        v55 = v145;
        v81 = KeyedDecodingContainer.decode(_:forKey:)();
        v57 = v79;
        v109 = 0;
        v111 = v81;
        v113 = v118;
        v132 = 0;
        v114 = &v172;
        goto LABEL_52;
      }
    }

    (*(v51 + 8))(v27, v50);
    goto LABEL_12;
  }

  v45 = v168;
  if (*(v34 + 32) > 8u)
  {
    v58 = v133;
    if (v35 == 9)
    {
      v170 = 9;
      sub_10027400C();
      v72 = v33;
      v73 = v132;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v73)
      {
        LODWORD(v135) = 9;
        v166 = v27;
        sub_1001BC5A8(&qword_100524280, &qword_100455138);
        v87 = swift_allocBox();
        v89 = v88;
        type metadata accessor for ContinuousRoutingControl();
        v170 = 0;
        sub_100273EC8(&qword_1005246E8, 255, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
        v165 = v89;
        v90 = v152;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v163 = v87;
        type metadata accessor for RoutingInteraction.Action.ControlContext();
        v170 = 1;
        sub_100273EC8(&qword_1005246F0, v107, type metadata accessor for RoutingInteraction.Action.ControlContext, &unk_100455420);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v109 = 0;
        v132 = 0;
        (*(v151 + 8))(v72, v90);
        (*(v58 + 8))(v166, v45);
LABEL_57:
        swift_unknownObjectRelease();
        v113 = 0;
        v125 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      v167 = v34;
      if (v35 == 10)
      {
        v170 = 10;
        sub_100273FB8();
        v59 = v160;
        v60 = v132;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v60)
        {
          LODWORD(v135) = 10;
          v166 = v27;
          sub_1001BC5A8(&qword_100523030, &unk_100450F40);
          v61 = swift_allocBox();
          type metadata accessor for RoutingControl();
          v170 = 0;
          sub_100273EC8(&qword_1005246D0, 255, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
          v62 = v153;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v163 = v61;
          type metadata accessor for VolumeGroup();
          v170 = 1;
          sub_100273EC8(&qword_1005246E0, 255, &type metadata accessor for VolumeGroup, &protocol conformance descriptor for VolumeGroup);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v109 = 0;
          v132 = 0;
          (*(v154 + 8))(v59, v62);
LABEL_56:
          (*(v58 + 8))(v166, v45);
          goto LABEL_57;
        }
      }

      else
      {
        v170 = 11;
        sub_100273F64();
        v82 = v162;
        v83 = v132;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v83)
        {
          LODWORD(v135) = v35;
          v166 = v27;
          sub_1001BC5A8(&qword_100524270, &unk_100458150);
          v95 = swift_allocBox();
          type metadata accessor for RoutingControl();
          v170 = 0;
          sub_100273EC8(&qword_1005246D0, 255, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
          v96 = v155;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v163 = v95;
          type metadata accessor for RoutingControls.TVRemoteControl.Context();
          v170 = 1;
          sub_100273EC8(&qword_1005246D8, 255, &type metadata accessor for RoutingControls.TVRemoteControl.Context, &protocol conformance descriptor for RoutingControls.TVRemoteControl.Context);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v109 = 0;
          v132 = 0;
          (*(v156 + 8))(v82, v96);
          goto LABEL_56;
        }
      }
    }

    (*(v58 + 8))(v27, v45);
    goto LABEL_12;
  }

  v46 = v133;
  if (v35 != 6)
  {
    v167 = v34;
    if (v35 == 7)
    {
      v170 = 7;
      sub_1002740B4();
      v47 = v158;
      v48 = v132;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v48)
      {
        LODWORD(v135) = 7;
        v166 = v27;
        sub_1001BC5A8(&qword_100524290, &qword_100455140);
        v163 = swift_allocBox();
        type metadata accessor for RoutingControl();
        v170 = 0;
        sub_100273EC8(&qword_1005246D0, 255, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
        v49 = v147;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        type metadata accessor for RoutingInteraction.Action.ControlContext();
        v170 = 1;
        sub_100273EC8(&qword_1005246F0, v108, type metadata accessor for RoutingInteraction.Action.ControlContext, &unk_100455420);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v109 = 0;
        v110 = v148;
        v132 = 0;
LABEL_55:
        (*(v110 + 8))(v47, v49);
        (*(v46 + 8))(v166, v45);
        goto LABEL_57;
      }
    }

    else
    {
      v170 = 8;
      sub_100274060();
      v47 = v161;
      v78 = v132;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v78)
      {
        LODWORD(v135) = v35;
        v166 = v27;
        sub_1001BC5A8(&qword_100524280, &qword_100455138);
        v94 = swift_allocBox();
        type metadata accessor for ContinuousRoutingControl();
        v170 = 0;
        sub_100273EC8(&qword_1005246E8, 255, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
        v49 = v150;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v163 = v94;
        type metadata accessor for RoutingInteraction.Action.ControlContext();
        v170 = 1;
        sub_100273EC8(&qword_1005246F0, v123, type metadata accessor for RoutingInteraction.Action.ControlContext, &unk_100455420);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v109 = 0;
        v132 = 0;
        v110 = v149;
        goto LABEL_55;
      }
    }

LABEL_30:
    (*(v46 + 8))(v27, v45);
    goto LABEL_12;
  }

  LODWORD(v135) = 6;
  v170 = 6;
  sub_100274108();
  v66 = v132;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (v66)
  {
    goto LABEL_30;
  }

  v111 = swift_allocObject();
  v170 = 0;
  v86 = v143;
  v111[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v111[3] = v104;
  v170 = 1;
  v105 = KeyedDecodingContainer.decode(_:forKey:)();
  v106 = v146;
  v111[4] = v105;
  v111[5] = v127;
  type metadata accessor for RoutingInteraction.Action.HandoffContext(0);
  v170 = 2;
  sub_100273EC8(&qword_1005246F8, 255, type metadata accessor for RoutingInteraction.Action.HandoffContext, &unk_100455340);
  v128 = v163;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v109 = 0;
  v132 = 0;
  (*(v106 + 8))(v128, v86);
  (*(v46 + 8))(v27, v45);
  swift_unknownObjectRelease();
  v113 = 0;
  v125 = 0;
  v54 = v164;
LABEL_59:
  result = sub_100026A44(v169);
  *v54 = v111;
  *(v54 + 8) = v113;
  *(v54 + 16) = v109;
  *(v54 + 24) = v125;
  *(v54 + 32) = v135;
  return result;
}

unint64_t sub_100276744()
{
  result = qword_10052F668[0];
  if (!qword_10052F668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052F668);
  }

  return result;
}

unint64_t sub_100276798()
{
  result = qword_100524358;
  if (!qword_100524358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524358);
  }

  return result;
}

uint64_t sub_1002767EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001BC5A8(&qword_100524658, &qword_100456E88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_1000326D8(a1, a1[3]);
  sub_100276744();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100026A44(a1);
  }

  LOBYTE(v18) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v21 = 1;
  sub_10027867C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v20;
  v16 = v19;
  v17 = v18;
  result = sub_100026A44(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  v15 = v16;
  *(a2 + 16) = v17;
  *(a2 + 32) = v15;
  *(a2 + 48) = v13;
  return result;
}

unint64_t sub_100276ADC()
{
  result = qword_100524378;
  if (!qword_100524378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524378);
  }

  return result;
}

unint64_t sub_100276B34()
{
  result = qword_100524380;
  if (!qword_100524380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524380);
  }

  return result;
}

void sub_100276BB0(uint64_t a1)
{
  type metadata accessor for RoutingSessionConfiguration.Attribution();
  if (v1 <= 0x3F)
  {
    sub_100276CA4(319, &qword_100523D48, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100276CA4(319, &unk_1005243E0, &type metadata for RoutingEvent.Result, type metadata accessor for Future);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100276CA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100276CF4(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 sub_100276D10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100276D24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100276D6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100276DC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100276E08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100276E4C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100276E74(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100276E8C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100276EA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100276EFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_100276F74(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100276F90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100276FD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100277038(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10027704C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 33))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 32);
  if (v3 <= 0xB)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100277094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 245;
    *(result + 8) = 0;
    if (a3 >= 0xF5)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void sub_1002770FC(uint64_t a1)
{
  sub_100277228(319, &unk_100524440, &type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState);
  if (v1 <= 0x3F)
  {
    sub_100277228(319, &qword_100523E28, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100277228(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RoutingInteraction.Action.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RoutingInteraction.Action.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoutingInteraction.Action.HandoffCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RoutingInteraction.Action.HandoffCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100277600()
{
  result = qword_100530510[0];
  if (!qword_100530510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100530510);
  }

  return result;
}

unint64_t sub_100277658()
{
  result = qword_100530720[0];
  if (!qword_100530720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100530720);
  }

  return result;
}

unint64_t sub_1002776B0()
{
  result = qword_100530930[0];
  if (!qword_100530930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100530930);
  }

  return result;
}

unint64_t sub_100277708()
{
  result = qword_100530B40[0];
  if (!qword_100530B40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100530B40);
  }

  return result;
}

unint64_t sub_100277760()
{
  result = qword_100530D50[0];
  if (!qword_100530D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100530D50);
  }

  return result;
}

unint64_t sub_1002777B8()
{
  result = qword_100530F60[0];
  if (!qword_100530F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100530F60);
  }

  return result;
}

unint64_t sub_100277810()
{
  result = qword_100531170[0];
  if (!qword_100531170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100531170);
  }

  return result;
}

unint64_t sub_100277868()
{
  result = qword_100531380[0];
  if (!qword_100531380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100531380);
  }

  return result;
}

unint64_t sub_1002778C0()
{
  result = qword_100531590[0];
  if (!qword_100531590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100531590);
  }

  return result;
}

unint64_t sub_100277918()
{
  result = qword_1005317A0[0];
  if (!qword_1005317A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005317A0);
  }

  return result;
}

unint64_t sub_100277970()
{
  result = qword_1005319B0[0];
  if (!qword_1005319B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005319B0);
  }

  return result;
}

unint64_t sub_1002779C8()
{
  result = qword_100531BC0[0];
  if (!qword_100531BC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100531BC0);
  }

  return result;
}

unint64_t sub_100277A20()
{
  result = qword_100531DD0[0];
  if (!qword_100531DD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100531DD0);
  }

  return result;
}

unint64_t sub_100277A78()
{
  result = qword_100531FE0[0];
  if (!qword_100531FE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100531FE0);
  }

  return result;
}

unint64_t sub_100277AD0()
{
  result = qword_1005321F0;
  if (!qword_1005321F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005321F0);
  }

  return result;
}

unint64_t sub_100277B28()
{
  result = qword_100532400[0];
  if (!qword_100532400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532400);
  }

  return result;
}

unint64_t sub_100277B80()
{
  result = qword_100532510;
  if (!qword_100532510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532510);
  }

  return result;
}

unint64_t sub_100277BD8()
{
  result = qword_100532518[0];
  if (!qword_100532518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532518);
  }

  return result;
}

unint64_t sub_100277C30()
{
  result = qword_1005325A0;
  if (!qword_1005325A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005325A0);
  }

  return result;
}

unint64_t sub_100277C88()
{
  result = qword_1005325A8[0];
  if (!qword_1005325A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005325A8);
  }

  return result;
}

unint64_t sub_100277CE0()
{
  result = qword_100532630;
  if (!qword_100532630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532630);
  }

  return result;
}

unint64_t sub_100277D38()
{
  result = qword_100532638[0];
  if (!qword_100532638[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532638);
  }

  return result;
}

unint64_t sub_100277D90()
{
  result = qword_1005326C0;
  if (!qword_1005326C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005326C0);
  }

  return result;
}

unint64_t sub_100277DE8()
{
  result = qword_1005326C8[0];
  if (!qword_1005326C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005326C8);
  }

  return result;
}

unint64_t sub_100277E40()
{
  result = qword_100532750;
  if (!qword_100532750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532750);
  }

  return result;
}

unint64_t sub_100277E98()
{
  result = qword_100532758[0];
  if (!qword_100532758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532758);
  }

  return result;
}

unint64_t sub_100277EF0()
{
  result = qword_1005327E0;
  if (!qword_1005327E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005327E0);
  }

  return result;
}

unint64_t sub_100277F48()
{
  result = qword_1005327E8[0];
  if (!qword_1005327E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005327E8);
  }

  return result;
}

unint64_t sub_100277FA0()
{
  result = qword_100532870;
  if (!qword_100532870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532870);
  }

  return result;
}

unint64_t sub_100277FF8()
{
  result = qword_100532878;
  if (!qword_100532878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532878);
  }

  return result;
}

unint64_t sub_100278050()
{
  result = qword_100532900;
  if (!qword_100532900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532900);
  }

  return result;
}

unint64_t sub_1002780A8()
{
  result = qword_100532908[0];
  if (!qword_100532908[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532908);
  }

  return result;
}

unint64_t sub_100278100()
{
  result = qword_100532990;
  if (!qword_100532990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532990);
  }

  return result;
}

unint64_t sub_100278158()
{
  result = qword_100532998[0];
  if (!qword_100532998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532998);
  }

  return result;
}

unint64_t sub_1002781B0()
{
  result = qword_100532A20;
  if (!qword_100532A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532A20);
  }

  return result;
}

unint64_t sub_100278208()
{
  result = qword_100532A28[0];
  if (!qword_100532A28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532A28);
  }

  return result;
}

unint64_t sub_100278260()
{
  result = qword_100532AB0;
  if (!qword_100532AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532AB0);
  }

  return result;
}

unint64_t sub_1002782B8()
{
  result = qword_100532AB8[0];
  if (!qword_100532AB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532AB8);
  }

  return result;
}

unint64_t sub_100278310()
{
  result = qword_100532B40;
  if (!qword_100532B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532B40);
  }

  return result;
}

unint64_t sub_100278368()
{
  result = qword_100532B48[0];
  if (!qword_100532B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532B48);
  }

  return result;
}

unint64_t sub_1002783C0()
{
  result = qword_100532BD0;
  if (!qword_100532BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532BD0);
  }

  return result;
}

unint64_t sub_100278418()
{
  result = qword_100532BD8[0];
  if (!qword_100532BD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532BD8);
  }

  return result;
}

unint64_t sub_100278470()
{
  result = qword_100532C60;
  if (!qword_100532C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532C60);
  }

  return result;
}

unint64_t sub_1002784C8()
{
  result = qword_100532C68[0];
  if (!qword_100532C68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532C68);
  }

  return result;
}

unint64_t sub_100278520()
{
  result = qword_100532CF0;
  if (!qword_100532CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532CF0);
  }

  return result;
}

unint64_t sub_100278578()
{
  result = qword_100532CF8[0];
  if (!qword_100532CF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532CF8);
  }

  return result;
}

unint64_t sub_1002785D0()
{
  result = qword_100532D80;
  if (!qword_100532D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532D80);
  }

  return result;
}

unint64_t sub_100278628()
{
  result = qword_100532D88[0];
  if (!qword_100532D88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532D88);
  }

  return result;
}

unint64_t sub_10027867C()
{
  result = qword_100524660;
  if (!qword_100524660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524660);
  }

  return result;
}

uint64_t sub_1002786E8(uint64_t a1)
{
  v2 = v1;
  v32 = *v1;
  v3 = type metadata accessor for Logger();
  v34 = *(v3 - 8);
  __chkstk_darwin(v3);
  v33 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RoutingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingMode;
  swift_beginAccess();
  v10 = *(v6 + 16);
  v10(v8, &v1[v9], v5);
  sub_100017FCC(&qword_1005249D0, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v6 + 8);
  result = v12(v8, v5);
  if ((v11 & 1) == 0)
  {
    v30 = v10;
    v14 = sub_100028D40();
    (*(v34 + 16))(v33, v14, v3);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    v31 = v16;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v17 = 136315394;
      v18 = _typeName(_:qualified:)();
      v28 = v15;
      v20 = sub_10002C9C8(v18, v19, &v35);
      v32 = v3;
      v21 = v20;

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      v30(v8, &v2[v9], v5);
      sub_100017FCC(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v12(v8, v5);
      v25 = sub_10002C9C8(v22, v24, &v35);

      *(v17 + 14) = v25;
      v26 = v28;
      _os_log_impl(&_mh_execute_header, v28, v31, "[%s] setRoutingMode - value: %{public}s", v17, 0x16u);
      swift_arrayDestroy();

      (*(v34 + 8))(v33, v32);
    }

    else
    {

      (*(v34 + 8))(v33, v3);
    }

    return sub_10027AEE8();
  }

  return result;
}

uint64_t sub_100278AF8(uint64_t a1)
{
  v3 = type metadata accessor for RoutingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingMode;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v7, a1, v3);
  swift_endAccess();
  sub_1002786E8(v6);
  v8 = *(v4 + 8);
  v8(a1, v3);
  return (v8)(v6, v3);
}

void (*sub_100278C54(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = type metadata accessor for RoutingMode();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[11] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v11 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingMode;
  v4[14] = v9;
  v4[15] = v11;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[16] = v12;
  v4[17] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_100278DC8;
}

void sub_100278DC8(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 14);
  v5 = *(*a1 + 15);
  v6 = *(*a1 + 12);
  v7 = *(*a1 + 13);
  v8 = *(*a1 + 10);
  v9 = *(*a1 + 11);
  v10 = *(*a1 + 9);
  if (a2)
  {
    v3(*(*a1 + 13), v4, v8);
    v3(v6, (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v7, v8);
    swift_endAccess();
    sub_1002786E8(v6);
    v11 = *(v9 + 8);
    v11(v6, v8);
  }

  else
  {
    v3(*(*a1 + 13), (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v4, v8);
    swift_endAccess();
    sub_1002786E8(v7);
    v11 = *(v9 + 8);
  }

  v11(v7, v8);
  v11(v4, v8);
  free(v4);
  free(v7);
  free(v6);

  free(v2);
}