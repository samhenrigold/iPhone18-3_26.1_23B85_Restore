void sub_1002C6A28(void *a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v6 = v5;
  v50 = a4;
  v11 = type metadata accessor for RoutingControl.RoutingControlType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  RoutingControl.type.getter();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 != enum case for RoutingControl.RoutingControlType.favorite(_:))
  {
    if (v15 == enum case for RoutingControl.RoutingControlType.unfavorite(_:))
    {
      v22 = RoutingControl.sessionIdentifier.getter();
      v24 = v23;
      v26 = *(a2 + 16);
      v25 = *(a2 + 24);

      v27 = sub_10033D250();
      swift_beginAccess();
      if (v25)
      {
        if (v26 == *v27 && v25 == v27[1])
        {

LABEL_15:
          v39 = *(**(v6 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_musicFavoriteStatusDataSource) + 216);

          v39(v22, v24);

          v30 = swift_allocObject();
          v30[2] = v6;
          v30[3] = v22;
          v30[4] = v24;

          v31 = sub_1002D12F8;
          goto LABEL_16;
        }

        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v38)
        {
          goto LABEL_15;
        }
      }

      sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10044EC70;
      if (kMRMediaRemoteOptionIsNegative)
      {
        v41 = inited;

        *(v41 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v41 + 40) = v42;
        *(v41 + 72) = &type metadata for Bool;
        *(v41 + 48) = 1;
        v43 = sub_10021F050(v41);
        swift_setDeallocating();
        sub_1000038A4(v41 + 32, &unk_100527DF0, &unk_100457610);
        v44 = *a3;
        v45 = a3[1];
        v46 = *(a3 + 2);
        v52 = *(a3 + 1);
        v53 = v46;
        v54 = *(a3 + 48);
        v47 = swift_allocObject();
        *(v47 + 16) = v50;
        *(v47 + 24) = a5;
        *(v47 + 32) = v6;
        v48 = *(a3 + 1);
        *(v47 + 40) = *a3;
        *(v47 + 56) = v48;
        *(v47 + 72) = *(a3 + 2);
        *(v47 + 88) = *(a3 + 48);
        *(v47 + 96) = a2;

        sub_10026D080(&v52, v51);
        sub_1002CE274(a1, a2, v44, v45, 21, v43, sub_1002D12E0, v47);

        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v16 = RoutingControl.sessionIdentifier.getter();
  v18 = v17;
  v20 = *(a2 + 16);
  v19 = *(a2 + 24);

  v21 = sub_10033D250();
  swift_beginAccess();
  if (!v19)
  {
    goto LABEL_13;
  }

  if (v20 != *v21 || v19 != v21[1])
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
      goto LABEL_12;
    }

LABEL_13:

    v32 = *a3;
    v33 = a3[1];
    v34 = *(a3 + 2);
    v52 = *(a3 + 1);
    v53 = v34;
    v54 = *(a3 + 48);
    v35 = swift_allocObject();
    *(v35 + 16) = v50;
    *(v35 + 24) = a5;
    *(v35 + 32) = v6;
    v36 = *(a3 + 1);
    *(v35 + 40) = *a3;
    *(v35 + 56) = v36;
    *(v35 + 72) = *(a3 + 2);
    *(v35 + 88) = *(a3 + 48);
    *(v35 + 96) = a2;

    sub_10026D080(&v52, v51);

    v37 = sub_10021F050(_swiftEmptyArrayStorage);
    sub_1002CE274(a1, a2, v32, v33, 21, v37, sub_1002D1360, v35);

    return;
  }

LABEL_12:
  v29 = *(**(v6 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_musicFavoriteStatusDataSource) + 208);

  v29(v16, v18);

  v30 = swift_allocObject();
  v30[2] = v6;
  v30[3] = v16;
  v30[4] = v18;

  v31 = sub_1002D1488;
LABEL_16:
  sub_1002ADC18(a3, v50, a5, v31, v30);
LABEL_19:
}

uint64_t sub_1002C6FB4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for RoutingControl.RoutingControlType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v37 = a2[1];
  RoutingControl.type.getter();
  v11 = (*(v7 + 88))(v9, v6);
  if (v11 == enum case for RoutingControl.RoutingControlType.absoluteVolume(_:))
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(104);
    v24._countAndFlagsBits = 91;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    v25._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v25);

    v26._object = 0x800000010043E2B0;
    v26._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v26);
    v27._countAndFlagsBits = v10;
    v27._object = v37;
    String.append(_:)(v27);
    v28._countAndFlagsBits = 0xD00000000000004DLL;
    v28._object = 0x800000010043F8A0;
    String.append(_:)(v28);
    v35 = 0;
LABEL_9:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v11 == enum case for RoutingControl.RoutingControlType.relativeVolume(_:))
  {
    v12 = (*(v7 + 96))(v9, v6);
    __chkstk_darwin(v12);
    *(&v36 - 6) = sub_1002D32BC;
    *(&v36 - 5) = a3;
    sub_1002CF8F8(a1, v10, v37, sub_1002D4C34, (&v36 - 8), sub_1002D50F4, 0xEA0000000CLL, 1, 0xE90000000CLL, 1, "[%s] handleBeginRelativeVolumeControl<%{public}s> - relative volume is not supported for local session");
    v13 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
    return (*(*(v13 - 8) + 8))(v9, v13);
  }

  if (v11 != enum case for RoutingControl.RoutingControlType.mute(_:))
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v29._countAndFlagsBits = 91;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v30._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v30);

    v31._object = 0x800000010043E2B0;
    v31._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v31);
    v32._countAndFlagsBits = v10;
    v32._object = v37;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 0xD00000000000001DLL;
    v33._object = 0x800000010043E2D0;
    String.append(_:)(v33);
    type metadata accessor for RoutingControl();
    sub_1002CDD70(&qword_100524278, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    v35 = 0;
    goto LABEL_9;
  }

  v15 = type metadata accessor for InternalRoutingError();
  sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
  swift_allocError();
  (*(*(v15 - 8) + 104))(v16, enum case for InternalRoutingError.notImplemented(_:), v15);
  MRDFastSyncGroupSessionState.rawValue.getter();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1002D32BC(v23, v17, v19, v21);

  return sub_10023DCB0(v18, v20, v22);
}

double sub_1002C74C0(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a3;
  v21 = a4;
  v22 = a1;
  v11 = type metadata accessor for RoutingControl();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a5, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v15, v14, v11);
  *(v17 + v16) = a6;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a7;

  sub_1002ACDCC(a2, v20, v21, sub_1002D4F04, v17);

  return result;
}

uint64_t sub_1002C7654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v38 = a2;
  v6 = type metadata accessor for RoutingControl.Target();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for HostedRoutingSourceSession(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + 16);
  v33 = a4;
  swift_beginAccess();
  if (!v14)
  {
    return 0;
  }

  v15 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = *(v11 + 72);
  v17 = (v7 + 88);
  v18 = enum case for RoutingControl.Target.session(_:);
  v34 = enum case for RoutingControl.Target.item(_:);
  v37 = (v7 + 96);
  while (1)
  {
    sub_1002CDCB4(v15, v13, type metadata accessor for HostedRoutingSourceSession);
    RoutingControl.target.getter();
    v21 = (*v17)(v9, v6);
    if (v21 == v18)
    {
      (*v37)(v9, v6);
      if (*v13 == *v9 && v13[1] == v9[1])
      {
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v23 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v19 = *(v33 + 16);
      goto LABEL_5;
    }

    v36 = v14;
    if (v21 != v34)
    {
      break;
    }

    (*v37)(v9, v6);
    v26 = sub_100258614(*v9, v9[1], v24, v25);
    v28 = v27;

    if (*v13 == v26 && v13[1] == v28)
    {

      v14 = v36;
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v14 = v36;
      if ((v30 & 1) == 0)
      {
LABEL_20:
        sub_10002187C(v13, type metadata accessor for HostedRoutingSourceSession);
        goto LABEL_6;
      }
    }

    v19 = SystemGroupSessionTransport.supportsIdleDisconnection.getter() & 1;
LABEL_5:
    v20 = sub_100267210(v13, v19);
    sub_10002187C(v13, type metadata accessor for HostedRoutingSourceSession);
    if (v20)
    {
      return 1;
    }

LABEL_6:
    v15 += v16;
    if (!--v14)
    {
      return 0;
    }
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002C79CC(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = a2;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = a2;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (a2)
  {
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      MRDFastSyncGroupSessionState.rawValue.getter();
      v16 = v15;
      v18 = v17;
      v20 = v19;
      a3();

      sub_10023DCB0(v16, v18, v20);
    }

    else
    {
      return a5(result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1002C7B68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v26 = a4;
  v30 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v27 = *(v10 - 8);
  v28 = v10;
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RoutingControl();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a5, v13);
  v17 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v18 = swift_allocObject();
  v19 = v25;
  v20 = v26;
  *(v18 + 2) = a1;
  *(v18 + 3) = v19;
  *(v18 + 4) = v20;
  (*(v14 + 32))(&v18[v17], v16, v13);
  aBlock[4] = sub_1002D2BA8;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C8608;
  v21 = _Block_copy(aBlock);
  v22 = a1;

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v29 + 8))(v9, v7);
  (*(v27 + 8))(v12, v28);

  return result;
}

void *sub_1002C7F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(a1 + 16);
  v20 = *a1;
  v9 = *(a1 + 32);
  v18[0] = v8;
  v18[1] = v9;
  v19 = *(a1 + 48);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = sub_10029A79C();
  sub_10028BC98(&v20, v17);
  sub_10026D080(v18, v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17[0] = v11;
  sub_10028B8E4(sub_1002D50DC, v10, a1, isUniquelyReferenced_nonNull_native, v13, v14, v15);
  sub_1001E6204(&v20);
  sub_100238E4C(v18);
  *(v7 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___pendingInteractions) = v17[0];

  return sub_1002A5EA8();
}

void sub_1002C801C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = a2;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = a2;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((a2 & 1) == 0)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v16 = sub_100034D68();
    if (!v16[2] || (v17 = sub_10000698C(a4, a5), (v18 & 1) == 0))
    {

LABEL_12:

      return;
    }

    v19 = *(v16[7] + 8 * v17);

    if (v19 == a6 && *(v19 + 16) == 2)
    {
      if (a1)
      {
        if ((*(v19 + 98) & 1) == 0)
        {
          *(v19 + 98) = 1;
          sub_1002985D8(0);
          v24 = 0;
          v25 = 0xE000000000000000;
          _StringGuts.grow(_:)(63);
          v20 = 0x800000010043F340;
          v21 = 0xD00000000000003DLL;
LABEL_16:
          String.append(_:)(*&v21);
          v22._countAndFlagsBits = sub_1002992B0();
          String.append(_:)(v22);

          sub_100033F40(v24, v25);
        }
      }

      else if (*(v19 + 98))
      {
        *(v19 + 98) = 0;
        sub_1002985D8(1);
        v24 = 0;
        v25 = 0xE000000000000000;
        _StringGuts.grow(_:)(67);
        v21 = 0xD000000000000041;
        v20 = 0x800000010043F2F0;
        goto LABEL_16;
      }
    }

    goto LABEL_12;
  }
}

void sub_1002C82C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

void sub_1002C8370(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = a2;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = a2;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((a2 & 1) == 0)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v16 = sub_100034D68();
    if (!v16[2] || (v17 = sub_10000698C(a4, a5), (v18 & 1) == 0))
    {

LABEL_12:

      return;
    }

    v19 = *(v16[7] + 8 * v17);

    if (v19 == a6 && *(v19 + 16) == 2)
    {
      if (a1)
      {
        if ((*(v19 + 97) & 1) == 0)
        {
          *(v19 + 97) = 1;
          sub_10029839C(0);
          v24 = 0;
          v25 = 0xE000000000000000;
          _StringGuts.grow(_:)(63);
          v20 = 0x800000010043F3D0;
          v21 = 0xD00000000000003DLL;
LABEL_16:
          String.append(_:)(*&v21);
          v22._countAndFlagsBits = sub_1002992B0();
          String.append(_:)(v22);

          sub_100033F40(v24, v25);
        }
      }

      else if (*(v19 + 97))
      {
        *(v19 + 97) = 0;
        sub_10029839C(1);
        v24 = 0;
        v25 = 0xE000000000000000;
        _StringGuts.grow(_:)(67);
        v21 = 0xD000000000000041;
        v20 = 0x800000010043F380;
        goto LABEL_16;
      }
    }

    goto LABEL_12;
  }
}

void sub_1002C861C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void), uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, __int128 *a11)
{
  v76 = a8;
  v79 = a5;
  v80 = a3;
  v82 = a4;
  v81 = type metadata accessor for Logger();
  v15 = *(v81 - 8);
  v16 = __chkstk_darwin(v81);
  v77 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v70 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = (&v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v24 = (*(*a2 + 368))(v22);
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20);
  v25 = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v24, v20);
  if (v25)
  {
    v78 = a6;
    if (a1)
    {
      v76 = a11;
      swift_errorRetain();
      v26 = sub_100028D40();
      v73 = *(v15 + 16);
      v74 = v26;
      v27 = v81;
      v73(v19);
      v28 = v82;

      swift_errorRetain();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      v31 = os_log_type_enabled(v29, v30);
      v75 = a7;
      v72 = v15;
      if (v31)
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v83 = v71;
        *v32 = 136315650;
        v34 = _typeName(_:qualified:)();
        v36 = sub_10002C9C8(v34, v35, &v83);

        *(v32 + 4) = v36;
        v28 = v82;
        *(v32 + 12) = 2082;
        *(v32 + 14) = sub_10002C9C8(v80, v28, &v83);
        *(v32 + 22) = 2114;
        swift_errorRetain();
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 24) = v37;
        *v33 = v37;
        _os_log_impl(&_mh_execute_header, v29, v30, "[%s] pullContentFromSession<%{public}s> - failed with error: %{public}@.", v32, 0x20u);
        sub_1000038A4(v33, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();

        v27 = v81;

        v38 = v72;
      }

      else
      {

        v38 = v15;
      }

      v48 = *(v38 + 8);
      v48(v19, v27);
      v49 = v77;
      (v73)(v77, v74, v27);
      v50 = v79;

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v53 = 136315650;
        v54 = _typeName(_:qualified:)();
        v56 = sub_10002C9C8(v54, v55, &v83);

        *(v53 + 4) = v56;
        *(v53 + 12) = 2082;
        *(v53 + 14) = sub_10002C9C8(v80, v28, &v83);
        *(v53 + 22) = 2082;
        v57 = [v50 report];
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;

        v61 = sub_10002C9C8(v58, v60, &v83);

        *(v53 + 24) = v61;
        _os_log_impl(&_mh_execute_header, v51, v52, "[%s] pullContentFromSession<%{public}s> - report: %{public}s", v53, 0x20u);
        swift_arrayDestroy();

        v62 = v77;
        v63 = v81;
      }

      else
      {

        v62 = v49;
        v63 = v27;
      }

      v48(v62, v63);
      [v50 finalizeWithCompletion:0];
      swift_errorRetain();
      MRDFastSyncGroupSessionState.rawValue.getter();
      v65 = v64;
      v67 = v66;
      v69 = v68;
      v78();

      sub_10023DCB0(v65, v67, v69);
    }

    else
    {
      v39 = String._bridgeToObjectiveC()();
      v40 = v79;
      v41 = [v79 startEvent:v39 role:1];

      v42 = String._bridgeToObjectiveC()();
      v43 = [v40 startEvent:v42 role:1];

      v44 = swift_allocObject();
      *(v44 + 16) = v40;
      *(v44 + 24) = v43;
      *(v44 + 28) = v41;
      v45 = v82;
      *(v44 + 32) = v80;
      *(v44 + 40) = v45;
      *(v44 + 48) = v78;
      *(v44 + 56) = a7;
      *(v44 + 64) = a11;
      v46 = swift_allocObject();
      *(v46 + 16) = a9;
      *(v46 + 24) = a10;
      v47 = v40;

      sub_1002AF590(v76, sub_1002D423C, v44, sub_1002D4254, v46);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002C8D90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void, void, void, void), uint64_t a7, uint64_t a8)
{
  v38 = a7;
  v36 = a4;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 endEventWithID:a2];
  [a1 endEventWithID:a3];
  v17 = sub_100028D40();
  v18 = *(v14 + 16);
  v37 = v13;
  v18(v16, v17, v13);

  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v22 = 136315650;
    v23 = _typeName(_:qualified:)();
    v25 = sub_10002C9C8(v23, v24, &v39);
    v35 = a6;
    v26 = v25;

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_10002C9C8(v36, a5, &v39);
    *(v22 + 22) = 2082;
    v27 = [v19 report];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = v28;
    a6 = v35;
    v32 = sub_10002C9C8(v31, v30, &v39);

    *(v22 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "[%s] pullContentFromSession<%{public}s> - report: %{public}s", v22, 0x20u);
    swift_arrayDestroy();
  }

  (*(v14 + 8))(v16, v37);
  [v19 finalizeWithCompletion:0];
  return a6(0, 0, 0, 0);
}

uint64_t sub_1002C9068(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v4 - 8);
  v6 = (&v14 - v5);
  sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v7 = sub_10024C81C();
  sub_10024C87C(v6);

  v8 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000038A4(v6, &qword_100523640, qword_100451520);
    v9 = 0;
  }

  else
  {
    v11 = *v6;
    v10 = v6[1];

    sub_10002187C(v6, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    if (v10)
    {
      if (v11 == a1 && v10 == a2)
      {

        v9 = 1;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

void sub_1002C91F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1002C9268(uint64_t a1, __int128 *a2, unint64_t a3, void (*a4)(char *, uint64_t), void (*a5)(void), uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, void (*a11)(char *), void (*a12)(char *, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15)
{
  v78 = a8;
  v79 = a7;
  v76 = a12;
  v77 = a14;
  v74 = a11;
  v75 = a13;
  v73 = a9;
  v82 = type metadata accessor for Logger();
  v21 = *(v82 - 8);
  v22 = __chkstk_darwin(v82);
  v80 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v72 - v24;
  v81 = a6;
  if (a1)
  {
    v76 = a4;
    v77 = a15;
    v78 = a2;
    swift_errorRetain();
    v26 = sub_100028D40();
    v79 = v21;
    v74 = *(v21 + 16);
    v75 = v26;
    v27 = v82;
    v74(v25);

    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    v30 = os_log_type_enabled(v28, v29);
    v72 = a5;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v83 = v73;
      *v31 = 136315650;
      v33 = _typeName(_:qualified:)();
      v35 = sub_10002C9C8(v33, v34, &v83);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2082;
      *(v31 + 14) = sub_10002C9C8(v78, a3, &v83);
      *(v31 + 22) = 2114;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 24) = v36;
      *v32 = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%s] handoffFromApplication<%{public}s> - failed with error: %{public}@.", v31, 0x20u);
      sub_1000038A4(v32, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();

      v27 = v82;
    }

    v37 = *(v79 + 8);
    v37(v25, v27);
    v38 = v76;
    v39 = v80;
    (v74)(v80, v75, v27);
    v40 = v38;

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v76 = v37;
      v83 = v44;
      *v43 = 136315650;
      v45 = _typeName(_:qualified:)();
      v47 = a3;
      v48 = sub_10002C9C8(v45, v46, &v83);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2082;
      *(v43 + 14) = sub_10002C9C8(v78, v47, &v83);
      *(v43 + 22) = 2082;
      v49 = [v40 report];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = sub_10002C9C8(v50, v52, &v83);

      *(v43 + 24) = v53;
      _os_log_impl(&_mh_execute_header, v41, v42, "[%s] handoffFromApplication<%{public}s> - report: %{public}s", v43, 0x20u);
      swift_arrayDestroy();

      v76(v80, v82);
    }

    else
    {

      v37(v39, v27);
    }

    [v40 finalizeWithCompletion:{0, v72}];
    swift_errorRetain();
    MRDFastSyncGroupSessionState.rawValue.getter();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v72();

    sub_10023DCB0(v67, v69, v71);
  }

  else
  {
    v54 = String._bridgeToObjectiveC()();
    v55 = [a4 startEvent:v54 role:1];

    v56 = String._bridgeToObjectiveC()();
    v57 = a3;
    v58 = a5;
    v59 = [a4 startEvent:v56 role:1];

    v60 = swift_allocObject();
    *(v60 + 16) = v73;
    *(v60 + 24) = a10;
    *(v60 + 32) = a4;
    *(v60 + 40) = v59;
    *(v60 + 44) = v55;
    *(v60 + 48) = a2;
    *(v60 + 56) = v57;
    *(v60 + 64) = v58;
    *(v60 + 72) = v81;
    *(v60 + 80) = a15;
    v61 = swift_allocObject();
    v62 = v75;
    v64 = v76;
    v63 = v77;
    v61[2] = v74;
    v61[3] = v64;
    v61[4] = v62;
    v61[5] = v63;

    v65 = a4;

    sub_1002ACDCC(v78, sub_1002D4350, v60, sub_1002D43DC, v61);
  }
}

uint64_t sub_1002C9920(void (*a1)(uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(void, void, void, void), uint64_t a9, uint64_t a10)
{
  v38 = a6;
  v40 = a9;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v18);
  [a3 endEventWithID:a4];
  [a3 endEventWithID:a5];
  v21 = sub_100028D40();
  v22 = *(v17 + 16);
  v39 = v16;
  v22(v20, v21, v16);

  v23 = a3;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v37 = a8;
    v26 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v26 = 136315650;
    v27 = _typeName(_:qualified:)();
    v29 = sub_10002C9C8(v27, v28, &v41);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_10002C9C8(v38, a7, &v41);
    *(v26 + 22) = 2082;
    v30 = [v23 report];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = sub_10002C9C8(v31, v33, &v41);

    *(v26 + 24) = v34;
    a8 = v37;
    _os_log_impl(&_mh_execute_header, v24, v25, "[%s] handoffFromApplication<%{public}s> - report: %{public}s", v26, 0x20u);
    swift_arrayDestroy();
  }

  (*(v17 + 8))(v20, v39);
  [v23 finalizeWithCompletion:0];
  return a8(0, 0, 0, 0);
}

uint64_t sub_1002C9C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a4;
  v8 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v8 - 8);
  v10 = (&v24 - v9);
  v11 = type metadata accessor for HostedRoutingSourceSession(0);
  __chkstk_darwin(v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + 16);
  if (!v15)
  {
    return 0;
  }

  v16 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v17 = *(v12 + 72);
  while (1)
  {
    sub_1002CDCB4(v16, v14, type metadata accessor for HostedRoutingSourceSession);
    v18 = *v14 == a2 && v14[1] == a3;
    if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_4;
    }

    sub_10001D9AC(v14 + *(v11 + 28), v10, &qword_100523640, qword_100451520);
    v19 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
    if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
    {
      sub_1000038A4(v10, &qword_100523640, qword_100451520);
LABEL_4:
      sub_10002187C(v14, type metadata accessor for HostedRoutingSourceSession);
      goto LABEL_5;
    }

    v21 = *v10;
    v20 = v10[1];

    sub_10002187C(v10, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    if (!v20)
    {
      goto LABEL_4;
    }

    if (v21 == v25 && v20 == v24)
    {
      break;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_10002187C(v14, type metadata accessor for HostedRoutingSourceSession);
    if (v22)
    {
      return 1;
    }

LABEL_5:
    v16 += v17;
    if (!--v15)
    {
      return 0;
    }
  }

  sub_10002187C(v14, type metadata accessor for HostedRoutingSourceSession);
  return 1;
}

void sub_1002C9EE8()
{
  v1 = v0;
  v2 = type metadata accessor for HostedRoutingSourceSession(0);
  v98 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v100 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RoutingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = 0xD00000000000002BLL;
  v106 = 0x800000010043EC40;
  v104._countAndFlagsBits = 0x656E696C656D6954;
  v104._object = 0xEA00000000000A3ALL;
  v8._countAndFlagsBits = sub_1003385DC();
  String.append(_:)(v8);

  String.append(_:)(v104);

  v104._countAndFlagsBits = 0;
  v104._object = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(&v104, "Routing Mode: ");
  HIBYTE(v104._object) = -18;
  (*(*v0 + 392))(v9);
  sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11 = *(v5 + 8);
  v11(v7, v4);
  v12._countAndFlagsBits = 10;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  String.append(_:)(v104);

  v104._countAndFlagsBits = 0;
  v104._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v101._countAndFlagsBits = 0xD000000000000017;
  v101._object = 0x800000010043E690;
  v13 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_overrideRoutingMode;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v13, v4);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v11(v7, v4);
  v15._countAndFlagsBits = 10;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  String.append(_:)(v101);

  v101._countAndFlagsBits = 0;
  v101._object = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v101._countAndFlagsBits = 0xD00000000000001BLL;
  v101._object = 0x800000010043EC70;
  v17._countAndFlagsBits = (*(*v1 + 680))(v16);
  String.append(_:)(v17);

  v18._countAndFlagsBits = 10;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  String.append(_:)(v101);

  v101._countAndFlagsBits = 0;
  v101._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v101._countAndFlagsBits = 0xD000000000000012;
  v101._object = 0x800000010043EC90;
  v19 = (v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
  v20 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
  if (v20)
  {
    v21 = *v19;
    v22 = v19[1];

    v23 = sub_1002998F0(v21, v22, v20);
    v25 = v24;
  }

  else
  {
    v25 = 0xE300000000000000;
    v23 = 7104878;
  }

  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  v27._countAndFlagsBits = 10;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  String.append(_:)(v101);

  v101._countAndFlagsBits = 0;
  v101._object = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v101._countAndFlagsBits = 0xD000000000000026;
  v101._object = 0x800000010043ECB0;
  if (*(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionDataSource))
  {
    v102._countAndFlagsBits = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionDataSource);
    type metadata accessor for ActiveSessionEndpointDataSource();
    sub_1002CDD70(&qword_1005250E8, type metadata accessor for ActiveSessionEndpointDataSource, &unk_100457520);

    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 2570;
    v29._object = 0xE200000000000000;
    String.append(_:)(v29);
    String.append(_:)(v101);

    v101._countAndFlagsBits = 0x6E6F69737365530ALL;
    v101._object = 0xEB000000000A3A73;
    v31 = (*(*v1 + 440))(v30);
    v32 = *(v31 + 16);
    v99 = v1;
    if (v32)
    {
      v103 = _swiftEmptyArrayStorage;
      sub_1000089FC(0, v32, 0);
      v33 = v103;
      v34 = *(v98 + 80);
      v97 = v31;
      v35 = v31 + ((v34 + 32) & ~v34);
      v36 = *(v98 + 72);
      do
      {
        v37 = v100;
        sub_1002CDCB4(v35, v100, type metadata accessor for HostedRoutingSourceSession);
        v102._countAndFlagsBits = 538976288;
        v102._object = 0xE400000000000000;
        v38._countAndFlagsBits = sub_10025D928();
        String.append(_:)(v38);

        countAndFlagsBits = v102._countAndFlagsBits;
        object = v102._object;
        sub_10002187C(v37, type metadata accessor for HostedRoutingSourceSession);
        v103 = v33;
        v42 = v33[2];
        v41 = v33[3];
        if (v42 >= v41 >> 1)
        {
          sub_1000089FC((v41 > 1), v42 + 1, 1);
          v33 = v103;
        }

        v33[2] = v42 + 1;
        v43 = &v33[2 * v42];
        v43[4] = countAndFlagsBits;
        v43[5] = object;
        v35 += v36;
        --v32;
      }

      while (v32);
    }

    else
    {

      v33 = _swiftEmptyArrayStorage;
    }

    v102._countAndFlagsBits = v33;
    v44 = sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
    v45 = sub_10000462C(&qword_100523680, &qword_1005229B0, &unk_100450110, &protocol conformance descriptor for [A]);
    v46 = BidirectionalCollection<>.joined(separator:)();
    v48 = v47;

    v49._countAndFlagsBits = v46;
    v49._object = v48;
    String.append(_:)(v49);

    v50._countAndFlagsBits = 10;
    v50._object = 0xE100000000000000;
    String.append(_:)(v50);
    String.append(_:)(v101);

    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v101._countAndFlagsBits = 0xD000000000000013;
    v101._object = 0x800000010043ECE0;
    v51 = sub_100034D68();
    v52 = sub_100297140(v51);
    v100 = 0;

    v102._countAndFlagsBits = v52;
    v53 = BidirectionalCollection<>.joined(separator:)();
    v55 = v54;

    v56._countAndFlagsBits = v53;
    v56._object = v55;
    String.append(_:)(v56);

    v57._countAndFlagsBits = 10;
    v57._object = 0xE100000000000000;
    String.append(_:)(v57);
    String.append(_:)(v101);

    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v101._countAndFlagsBits = 0xD000000000000016;
    v101._object = 0x800000010043ED00;
    v58 = sub_100297780();
    v59 = [v58 availableEndpoints];

    if (!v59)
    {
      goto LABEL_29;
    }

    sub_100018D7C(0, &qword_1005250D0, MRAVEndpoint_ptr);
    v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v60 >> 62)
    {
      v61 = _CocoaArrayWrapper.endIndex.getter();
      if (v61)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v61)
      {
LABEL_15:
        v103 = _swiftEmptyArrayStorage;
        sub_1000089FC(0, v61 & ~(v61 >> 63), 0);
        if ((v61 & 0x8000000000000000) == 0)
        {
          v97 = v45;
          v98 = v44;
          v62 = 0;
          v63 = v103;
          do
          {
            if ((v60 & 0xC000000000000001) != 0)
            {
              v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v64 = *(v60 + 8 * v62 + 32);
            }

            v65 = v64;
            v102._countAndFlagsBits = 538976288;
            v102._object = 0xE400000000000000;
            v66 = [v64 description];
            v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = v68;

            v70._countAndFlagsBits = v67;
            v70._object = v69;
            String.append(_:)(v70);

            v71 = v102._countAndFlagsBits;
            v72 = v102._object;
            v103 = v63;
            v74 = v63[2];
            v73 = v63[3];
            if (v74 >= v73 >> 1)
            {
              sub_1000089FC((v73 > 1), v74 + 1, 1);
              v63 = v103;
            }

            ++v62;
            v63[2] = v74 + 1;
            v75 = &v63[2 * v74];
            v75[4] = v71;
            v75[5] = v72;
          }

          while (v61 != v62);

          goto LABEL_26;
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    v63 = _swiftEmptyArrayStorage;
LABEL_26:
    v102._countAndFlagsBits = v63;
    v76 = BidirectionalCollection<>.joined(separator:)();
    v78 = v77;

    v79._countAndFlagsBits = v76;
    v79._object = v78;
    String.append(_:)(v79);

    v80._countAndFlagsBits = 10;
    v80._object = 0xE100000000000000;
    String.append(_:)(v80);
    String.append(_:)(v101);

    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v101._countAndFlagsBits = 0xD000000000000017;
    v101._object = 0x800000010043ED20;
    v81 = sub_10029A79C();
    sub_10028A9B8(v81);
    v83 = v82;

    v102._countAndFlagsBits = v83;
    v84 = BidirectionalCollection<>.joined(separator:)();
    v86 = v85;

    v87._countAndFlagsBits = v84;
    v87._object = v86;
    String.append(_:)(v87);

    v88._countAndFlagsBits = 10;
    v88._object = 0xE100000000000000;
    String.append(_:)(v88);
    String.append(_:)(v101);

    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v102._countAndFlagsBits = 0xD000000000000014;
    v102._object = 0x800000010043ED40;
    swift_beginAccess();

    sub_1002973A0(v89);
    v91 = v90;

    v103 = v91;
    v92 = BidirectionalCollection<>.joined(separator:)();
    v94 = v93;

    v95._countAndFlagsBits = v92;
    v95._object = v94;
    String.append(_:)(v95);

    v96._countAndFlagsBits = 10;
    v96._object = 0xE100000000000000;
    String.append(_:)(v96);
    String.append(_:)(v102);

    return;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void *sub_1002CABDC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001BC5A8(&qword_100525748, &unk_100457D90);
  v10 = *(type metadata accessor for HostedRoutingSourceSession(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for HostedRoutingSourceSession(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1002CADB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_100525750, &qword_100457AB8);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
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
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void sub_1002CB05C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_100525758, &unk_100457AC0);
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
      v24 = *(*(v5 + 56) + 8 * v20);
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
      *(*(v7 + 56) + 8 * v15) = v24;
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

void sub_1002CB300(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_1005257A0, &qword_100457B08);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 24 * v21;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        sub_10002CBE8(v23, v24, v25);
      }

      sub_100036860();
      v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v16 = v25;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v16 = v25;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 24 * v15;
      *v17 = v23;
      *(v17 + 8) = v24;
      *(v17 + 16) = v16;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_1002CB5EC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    sub_100036860();
    do
    {
      v9 = 24 * v6;
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 24 * v3;
          v15 = (v13 + v9);
          if (24 * v3 < v9 || v14 >= v15 + 24 || v3 != v6)
          {
            v16 = *v15;
            *(v14 + 16) = *(v15 + 2);
            *v14 = v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1002CB7B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000698C(a2, a3);
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
      sub_1002CADB4(v16, a4 & 1);
      v11 = sub_10000698C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1002CBC28();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_1002CB934(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000698C(a1, a2);
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
      sub_1002CB05C(v16, a3 & 1);
      v11 = sub_10000698C(a1, a2);
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
      sub_1002CBD98();
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

void sub_1002CBA90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100036134(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1002CB300(v18, a5 & 1);
      v13 = sub_100036134(a2, a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1002CBF00();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v24 = v23[6] + 24 * v13;
  *v24 = a2;
  *(v24 + 8) = a3;
  *(v24 + 16) = a4;
  *(v23[7] + 8 * v13) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v26;

  sub_10002CBE8(a2, a3, a4);
}

void sub_1002CBC28()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100525750, &qword_100457AB8);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void sub_1002CBD98()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100525758, &unk_100457AC0);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void sub_1002CBF00()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005257A0, &qword_100457B08);
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        v23 = *(v18 + 16);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v23;
        *(*(v4 + 56) + 8 * v17) = v21;
        sub_10002CBE8(v19, v20, v23);
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

uint64_t sub_1002CC07C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ContinuousRoutingControl();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1002CDD70(&qword_100524348, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1002CDD70(&qword_100525788, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1002CC6B8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_1002CC35C(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for ContinuousRoutingControl();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1001BC5A8(&qword_100525790, &qword_1004584C0);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1002CDD70(&qword_100524348, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

uint64_t sub_1002CC6B8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for ContinuousRoutingControl();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002CC35C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1002CC95C();
      goto LABEL_12;
    }

    sub_1002CCB94(v10 + 1);
  }

  v12 = *v3;
  sub_1002CDD70(&qword_100524348, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1002CDD70(&qword_100525788, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002CC95C()
{
  v1 = v0;
  v2 = type metadata accessor for ContinuousRoutingControl();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001BC5A8(&qword_100525790, &qword_1004584C0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1002CCB94(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for ContinuousRoutingControl();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1001BC5A8(&qword_100525790, &qword_1004584C0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1002CDD70(&qword_100524348, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

uint64_t sub_1002CCEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ContinuousRoutingControl();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1002CDD70(&qword_100524348, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1002CDD70(&qword_100525788, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1002CC95C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1002CD158(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_1002CD158(int64_t a1)
{
  v3 = type metadata accessor for ContinuousRoutingControl();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_1002CDD70(&qword_100524348, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t sub_1002CD460(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000462C(&qword_100525768, &qword_100525760, &unk_100457AD0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_1001BC5A8(&qword_100525760, &unk_100457AD0);
            v9 = sub_1002CD614(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100018D7C(0, &qword_1005250D0, MRAVEndpoint_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1002CD614(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1002CD694;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002CD69C(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  *(v4 + 16) = 0;
  *(v4 + 40) = 0;
  *(v4 + 64) = static String.nanoIDFourChar()();
  *(v4 + 72) = v8;
  *(v4 + 98) = 0;
  *(v4 + 96) = 1;
  *(v4 + 80) = a1;
  *(v4 + 88) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  v9 = [a1 uniqueIdentifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v4 + 24) = v10;
  *(v4 + 32) = v12;
  return v4;
}

char *sub_1002CD728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v45 = a5;
  v46 = a4;
  v43 = a2;
  v44 = a3;
  v47 = a1;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v7 + 2) = &_swiftEmptySetSingleton;
  *(v7 + 3) = &_swiftEmptySetSingleton;
  *(v7 + 4) = &_swiftEmptySetSingleton;
  v13 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_routingMode;
  v14 = enum case for RoutingMode.disabled(_:);
  v15 = type metadata accessor for RoutingMode();
  v16 = *(*(v15 - 8) + 104);
  v16(&v7[v13], v14, v15);
  v16(&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_overrideRoutingMode], v14, v15);
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_sessions] = _swiftEmptyArrayStorage;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers] = 0;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalFavoriteStatusObservers] = 0;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___discoverySession] = 0;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___itemTypes] = 0;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources] = &_swiftEmptyDictionarySingleton;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints] = 0;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___failedEndpointReconnectIntervals] = 0;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionDataSource] = 0;
  v17 = &v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements];
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  *v17 = 0;
  v18 = &v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___pendingInteractions] = 0;
  v19 = &v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  v19[48] = 0;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___ongoingContinousControls] = 0;
  v20 = &v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken];
  *v20 = 0;
  *(v20 + 1) = 0;
  *v12 = a6;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v21 = a6;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v15)
  {
    *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_timeline] = v47;

    v23 = sub_100037234();
    v24 = *(v23 + 1);
    v25 = &v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionIdentifier];
    *v25 = *v23;
    *(v25 + 1) = v24;
    *(v7 + 5) = v21;
    v26 = objc_opt_self();
    v27 = v21;

    result = [v26 currentSettings];
    if (result)
    {
      v28 = result;
      v29 = [result supportSystemEndpoints];

      v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_supportActiveSession] = v29;
      v30 = v44;
      *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore] = v43;
      v31 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_musicFavoriteStatusDataSource;
      *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_musicFavoriteStatusDataSource] = v30;
      type metadata accessor for ActiveSessionEndpointDataSource();
      v32 = v27;

      *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionDataSource] = sub_100293694(v33, &off_1004C7B48, v32);

      type metadata accessor for RoutingItemDataSource(0);
      v34 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_timeline;
      v35 = *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_timeline];

      v36 = sub_100279470();
      v37 = sub_100287C20(0, 0, 3, v35, v7, &off_1004C7B78, v36);
      v38 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *&v7[v38];
      *&v7[v38] = 0x8000000000000000;
      sub_1002CBA90(v37, 0, 0, 3, isUniquelyReferenced_nonNull_native);
      *&v7[v38] = v48;
      swift_endAccess();
      v40 = *(**&v7[v34] + 224);

      v40(v7, &off_1004C7B58);

      v41 = *(**&v7[v31] + 184);

      v41(v7, &off_1004C7B68);

      *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate + 8] = v45;
      swift_unknownObjectWeakAssign();
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002CDC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1002CDCB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for HostedRoutingSessionDataSource(uint64_t a1)
{
  result = qword_100533450;
  if (!qword_100533450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002CDD70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1002CDDB8(void *a1)
{
  v3 = *v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v36 = (v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
    v37 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
    v38 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8);
    v39 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
    v36[1] = 0;
    v36[2] = 0;
    *v36 = 0;
    sub_10029A410(v37, v38, v39);
    sub_1002CDC70(v37, v38, v39);

    sub_1002A01EC();
    return;
  }

  v53 = a1;
  v8 = [v53 outputDevices];
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = v8;
  sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_23;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v10 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v12 = i;

      v13 = [v12 groupID];

      if (v13)
      {
        break;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v51 = v3;
    v14 = v5;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = (v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements);
    v19 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements);
    v20 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements + 8);
    v21 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements + 16);
    *v18 = v15;
    v18[1] = v17;
    v18[2] = _swiftEmptyArrayStorage;
    sub_10029A0A4(v19, v20, v21);
    sub_1002CDC70(v19, v20, v21);
    v52 = v1;
    sub_1002A01EC();
    v22 = v18[2];
    if (v22)
    {
      v23 = *v18;
      v24 = v18[1];

      v25 = sub_100028D40();
      (*(v14 + 16))(v7, v25, v4);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v50 = v23;
        v29 = v28;
        v30 = swift_slowAlloc();
        v49 = v24;
        v31 = v30;
        v54 = v30;
        *v29 = 136315138;
        v32 = _typeName(_:qualified:)();
        v34 = sub_10002C9C8(v32, v33, &v54);
        v51 = v4;
        v35 = v34;

        *(v29 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v26, v27, "[%s] activeSessionEndpointDataSourceDidUpdateEndpoint - deferred elements not consumed, setting as active elements", v29, 0xCu);
        sub_100026A44(v31);
        v24 = v49;

        v23 = v50;

        (*(v14 + 8))(v7, v51);
      }

      else
      {

        (*(v14 + 8))(v7, v4);
      }

      v41 = *v18;
      v42 = v18[1];
      v43 = v18[2];
      v18[1] = 0;
      v18[2] = 0;
      *v18 = 0;
      v44 = v52;
      sub_10029A0A4(v41, v42, v43);
      sub_1002CDC70(v41, v42, v43);
      v45 = (v44 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
      v46 = *(v44 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
      v47 = *(v44 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8);
      v48 = *(v44 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
      *v45 = v23;
      v45[1] = v24;
      v45[2] = v22;
      sub_10029A410(v46, v47, v48);
      sub_1002CDC70(v46, v47, v48);
    }

    else
    {
      v40 = v53;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002CE274(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v9 = v8;
  v119 = a7;
  LODWORD(v118) = a5;
  v113._object = a4;
  v113._countAndFlagsBits = a3;
  v112 = *v9;
  v14 = type metadata accessor for RoutingControl();
  v116 = *(v14 - 8);
  v117 = v14;
  __chkstk_darwin(v14);
  v114 = v15;
  v115 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001BC5A8(&qword_100523B88, &unk_100451A50);
  __chkstk_darwin(v16 - 8);
  v18 = &v110 - v17;
  v19 = type metadata accessor for HostedRoutingSourceSession(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = a6;

  v23 = a1;
  v24 = RoutingControl.sessionIdentifier.getter();
  if (__PAIR128__(v25, v24) == *sub_100037234())
  {

LABEL_4:
    v28 = [objc_opt_self() localOrigin];
    v29 = a1;
    goto LABEL_5;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_4;
  }

  v111 = a8;
  v46 = (*(*v9 + 440))(v27);
  __chkstk_darwin(v46);
  v110 = v23;
  *(&v110 - 2) = v23;
  sub_10029F038(sub_1002D50F4, v46, v18);

  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {

    sub_1000038A4(v18, &qword_100523B88, &unk_100451A50);
    v47 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v47 - 8) + 104))(v48, enum case for InternalRoutingError.sessionNotFound(_:), v47);
    RoutingControl.sessionIdentifier.getter();
    MRDFastSyncGroupSessionState.rawValue.getter();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v119();

    sub_10023DCB0(v50, v52, v54);
    return;
  }

  v55 = sub_100032E70(v18, v22, type metadata accessor for HostedRoutingSourceSession);
  v93 = *(v22 + 3);
  a8 = v111;
  if (!v93)
  {
    goto LABEL_35;
  }

  v94 = *(v22 + 2);
  v95 = sub_100034D68();
  v29 = v23;
  if (!v95[2] || (v96 = sub_10000698C(v94, v93), (v97 & 1) == 0))
  {

LABEL_32:

    v101 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v101 - 8) + 104))(v102, enum case for InternalRoutingError.sessionNotFound(_:), v101);
    RoutingControl.sessionIdentifier.getter();
    MRDFastSyncGroupSessionState.rawValue.getter();
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v119();

    sub_10023DCB0(v104, v106, v108);
    sub_10002187C(v22, type metadata accessor for HostedRoutingSourceSession);
    return;
  }

  v98 = *(v95[7] + 8 * v96);

  v99 = [*(v98 + 88) origin];
  if (!v99)
  {

    goto LABEL_32;
  }

  v28 = v99;
  v100 = *(v98 + 16);

  if (v100 != 2)
  {

    goto LABEL_32;
  }

  sub_10002187C(v22, type metadata accessor for HostedRoutingSourceSession);
LABEL_5:
  v30 = *(a2 + 24);
  sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v31 = sub_10024C81C();
  v32 = [v31 originClientForOrigin:v28];

  if (v30)
  {
    if (!v32)
    {
      goto LABEL_14;
    }

    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 existingNowPlayingClientForDisplayID:v33];

    if (!v34)
    {
      goto LABEL_14;
    }

    v35 = &selRef_activePlayerPath;
  }

  else
  {
    if (!v32)
    {
      goto LABEL_14;
    }

    v36 = [v32 activeNowPlayingClient];

    if (!v36)
    {
      goto LABEL_14;
    }

    v34 = [v36 activePlayerClient];

    if (!v34)
    {
      goto LABEL_14;
    }

    v35 = &selRef_playerPath;
  }

  v37 = [v34 *v35];

  if (!v37)
  {
LABEL_14:
    if (v118)
    {

      v38 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v38 - 8) + 104))(v39, enum case for InternalRoutingError.noActivePlayer(_:), v38);
      RoutingControl.sessionIdentifier.getter();
      MRDFastSyncGroupSessionState.rawValue.getter();
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v119();

      sub_10023DCB0(v41, v43, v45);
      return;
    }

    v37 = [objc_allocWithZone(MRPlayerPath) initWithOrigin:v28 client:0 player:0];
  }

  v55 = kMRMediaRemoteOptionCommandID;
  if (kMRMediaRemoteOptionCommandID)
  {
    v110 = v28;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;
    v59 = RoutingControl.identifier.getter();
    v124 = &type metadata for String;
    *&aBlock = v59;
    *(&aBlock + 1) = v60;
    sub_1001C4088(&aBlock, v127);
    v61 = v120;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = v61;
    sub_10022D818(v127, v56, v58, isUniquelyReferenced_nonNull_native);

    v55 = kMRMediaRemoteOptionRemoteControlInterfaceIdentifier;
    if (kMRMediaRemoteOptionRemoteControlInterfaceIdentifier)
    {
      v111 = a8;
      v63 = v121;
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(36);

      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v67._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v67);

      v68._object = 0x800000010043F590;
      v68._countAndFlagsBits = 0xD00000000000001ELL;
      String.append(_:)(v68);
      String.append(_:)(v113);
      v69._countAndFlagsBits = 62;
      v69._object = 0xE100000000000000;
      String.append(_:)(v69);
      v124 = &type metadata for String;
      sub_1001C4088(&aBlock, v127);
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v121 = v63;
      sub_10022D818(v127, v64, v66, v70);

      v71 = objc_opt_self();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      *&aBlock = 0;
      v73 = [v71 dataWithPropertyList:isa format:200 options:0 error:&aBlock];

      v55 = aBlock;
      if (v73)
      {

        v74 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v75;

        v77 = objc_allocWithZone(MRDRemoteControlCommand);
        v78 = v37;
        v120 = v74;
        sub_1001C3FE0(v74, v76);
        v79 = String._bridgeToObjectiveC()();
        v80 = Data._bridgeToObjectiveC()().super.isa;
        sub_1001C4034(v74, v76);
        v118 = [v77 initWithCommandType:v118 playerPath:v78 unresolvedPlayerPath:v78 senderAppDisplayID:v79 optionsData:v80];

        v81 = (*(*v9 + 368))();
        v82 = [objc_opt_self() server];
        v83 = [v82 remoteControlServer];

        v84 = v115;
        v85 = v116;
        v86 = v117;
        (*(v116 + 16))(v115, v29, v117);
        v87 = (*(v85 + 80) + 40) & ~*(v85 + 80);
        v88 = swift_allocObject();
        v89 = v119;
        *(v88 + 2) = v81;
        *(v88 + 3) = v89;
        *(v88 + 4) = v111;
        (*(v85 + 32))(&v88[v87], v84, v86);
        v125 = sub_1002D2A64;
        v126 = v88;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v123 = sub_1002C7F0C;
        v124 = &unk_1004C85B8;
        v90 = _Block_copy(&aBlock);
        v91 = v81;

        v92 = v118;
        [v83 sendRemoteControlCommand:v118 completion:v90];

        sub_1001C4034(v120, v76);
        _Block_release(v90);

        return;
      }

      goto LABEL_36;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  v109 = v55;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1002CEFB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v85 = a5;
  v88._countAndFlagsBits = a3;
  v88._object = a4;
  v75 = *v5;
  v76 = a2;
  v7 = type metadata accessor for RoutingControl.RoutingControlType();
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin(v7);
  v81 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RoutingControl();
  v83 = *(v9 - 8);
  v84 = v9;
  v10 = __chkstk_darwin(v9);
  v82 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v69 - v12;
  v14 = type metadata accessor for ContinuousRoutingControl();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v78 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v77 = &v69 - v19;
  __chkstk_darwin(v18);
  v21 = &v69 - v20;
  v22 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  __chkstk_darwin(v22 - 8);
  v24 = &v69 - v23;
  v25 = sub_100015A78();
  sub_10001D9AC(v25, v24, &qword_100525C00, &unk_1004511A0);
  v26 = type metadata accessor for Logger();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v24, 1, v26);
  v87 = a1;
  if (v28 == 1)
  {
    sub_1000038A4(v24, &qword_100525C00, &unk_1004511A0);
    v29 = *(v15 + 16);
    v30 = v81;
  }

  else
  {
    v31 = *(v15 + 16);
    v72 = v13;
    v73 = v31;
    v31(v21, a1, v14);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    v71 = v33;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v89[0] = swift_slowAlloc();
      *v34 = 136315650;
      v35 = _typeName(_:qualified:)();
      v70 = v32;
      v37 = sub_10002C9C8(v35, v36, v89);
      v74 = v14;
      v38 = v37;

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_10002C9C8(v88._countAndFlagsBits, v88._object, v89);
      *(v34 + 22) = 2080;
      sub_1002CDD70(&qword_100524288, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v15 + 8))(v21, v74);
      v42 = sub_10002C9C8(v39, v41, v89);
      v14 = v74;

      *(v34 + 24) = v42;
      v43 = v70;
      _os_log_impl(&_mh_execute_header, v70, v71, "[%s] handleBeginContinuousControl<%s> - handle interaction with: %s", v34, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v15 + 8))(v21, v14);
    }

    (*(v27 + 8))(v24, v26);
    v30 = v81;
    v13 = v72;
    v29 = v73;
  }

  v44 = v78;
  v29(v78, v87, v14);
  v45 = v86;
  v89[0] = sub_10029A7A8();
  v46 = v77;
  sub_1002CC07C(v77, v44);
  (*(v15 + 8))(v46, v14);
  *(v45 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___ongoingContinousControls) = v89[0];

  ContinuousRoutingControl.control.getter();
  RoutingControl.type.getter();
  v47 = *(v83 + 8);
  v48 = v13;
  v49 = v84;
  v47(v48, v84);
  v51 = v79;
  v50 = v80;
  v52 = (*(v79 + 88))(v30, v80);
  if (v52 == enum case for RoutingControl.RoutingControlType.relativeVolume(_:))
  {
    (*(v51 + 96))(v30, v50);
    v53 = v82;
    ContinuousRoutingControl.control.getter();
    sub_1002CF8F8(v53, v88._countAndFlagsBits, v88._object, sub_1002D32BC, v85, sub_1002D50F4, 0xEA0000000CLL, 1, 0xE90000000CLL, 1, "[%s] handleBeginRelativeVolumeControl<%{public}s> - relative volume is not supported for local session");
    v47(v53, v49);
    v54 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
    return (*(*(v54 - 8) + 8))(v30, v54);
  }

  if (v52 == enum case for RoutingControl.RoutingControlType.rewind(_:))
  {
    v56 = v82;
    ContinuousRoutingControl.control.getter();
    v57 = sub_10021F050(_swiftEmptyArrayStorage);
    v58 = v56;
    v59 = v76;
    countAndFlagsBits = v88._countAndFlagsBits;
    object = v88._object;
    v62 = 10;
  }

  else
  {
    if (v52 != enum case for RoutingControl.RoutingControlType.fastForward(_:))
    {
      v89[0] = 0;
      v89[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(114);
      v63._countAndFlagsBits = 91;
      v63._object = 0xE100000000000000;
      String.append(_:)(v63);
      v64._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v64);

      v65._object = 0x800000010043F8F0;
      v65._countAndFlagsBits = 0xD00000000000001FLL;
      String.append(_:)(v65);
      String.append(_:)(v88);
      v66._countAndFlagsBits = 0x746E6F63202D203ELL;
      v66._object = 0xED0000203A6C6F72;
      String.append(_:)(v66);
      sub_1002CDD70(&qword_100524288, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
      v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v67);

      v68._countAndFlagsBits = 0xD00000000000003FLL;
      v68._object = 0x800000010043F910;
      String.append(_:)(v68);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v56 = v82;
    ContinuousRoutingControl.control.getter();
    v57 = sub_10021F050(_swiftEmptyArrayStorage);
    v58 = v56;
    v59 = v76;
    countAndFlagsBits = v88._countAndFlagsBits;
    object = v88._object;
    v62 = 8;
  }

  sub_1002CE274(v58, v59, countAndFlagsBits, object, v62, v57, sub_1002D32BC, v85);

  return (v47)(v56, v49);
}

uint64_t sub_1002CF8F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(char *))
{
  v81 = a7;
  v82 = a8;
  v12 = v11;
  v95 = a5;
  v96 = a4;
  v92 = a2;
  v93 = a3;
  v14 = *v12;
  v90 = a6;
  v91 = v14;
  v94 = type metadata accessor for Logger();
  v15 = *(v94 - 8);
  __chkstk_darwin(v94);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RoutingControl.RoutingControlType();
  v87 = *(v18 - 8);
  v88 = v18;
  __chkstk_darwin(v18);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
  v85 = *(v21 - 8);
  v86 = v21;
  v22 = __chkstk_darwin(v21);
  v83 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v84 = &v80 - v24;
  v25 = sub_1001BC5A8(&qword_100523B88, &unk_100451A50);
  __chkstk_darwin(v25 - 8);
  v27 = &v80 - v26;
  v28 = type metadata accessor for HostedRoutingSourceSession(0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v89 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = RoutingControl.sessionIdentifier.getter();
  if (__PAIR128__(v32, v31) == *sub_100037234())
  {

LABEL_4:
    v35 = sub_100028D40();
    v36 = v94;
    (*(v15 + 16))(v17, v35, v94);
    v37 = v93;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v90 = a11;
      v40 = swift_slowAlloc();
      v97[0] = swift_slowAlloc();
      *v40 = 136315394;
      v41 = _typeName(_:qualified:)();
      v43 = sub_10002C9C8(v41, v42, v97);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2082;
      *(v40 + 14) = sub_10002C9C8(v92, v37, v97);
      _os_log_impl(&_mh_execute_header, v38, v39, v90, v40, 0x16u);
      swift_arrayDestroy();
    }

    (*(v15 + 8))(v17, v36);
    v44 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v44 - 8) + 104))(v45, enum case for InternalRoutingError.unsupportedOperation(_:), v44);
    goto LABEL_7;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
    goto LABEL_4;
  }

  v53 = (*(*v12 + 440))(v34);
  __chkstk_darwin(v53);
  *(&v80 - 2) = a1;
  sub_10029F038(v90, v53, v27);

  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_1000038A4(v27, &qword_100523B88, &unk_100451A50);
    v54 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v54 - 8) + 104))(v55, enum case for InternalRoutingError.sessionNotFound(_:), v54);
    RoutingControl.sessionIdentifier.getter();
LABEL_7:
    MRDFastSyncGroupSessionState.rawValue.getter();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v96();

    return sub_10023DCB0(v47, v49, v51);
  }

  v56 = v89;
  sub_100032E70(v27, v89, type metadata accessor for HostedRoutingSourceSession);
  RoutingControl.type.getter();
  v58 = v87;
  v57 = v88;
  if ((*(v87 + 88))(v20, v88) != enum case for RoutingControl.RoutingControlType.relativeVolume(_:))
  {
    (*(v58 + 8))(v20, v57);
    __break(1u);
    goto LABEL_27;
  }

  (*(v58 + 96))(v20, v57);
  v60 = v84;
  v59 = v85;
  v61 = v86;
  (*(v85 + 32))(v84, v20, v86);
  v62 = *(v56 + 24);
  if (!v62)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v63 = *(v56 + 16);
  v64 = sub_100034D68();
  if (!v64[2] || (v65 = sub_10000698C(v63, v62), (v66 & 1) == 0))
  {

LABEL_19:
    v72 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v72 - 8) + 104))(v73, enum case for InternalRoutingError.sessionNotFound(_:), v72);
    RoutingControl.sessionIdentifier.getter();
    MRDFastSyncGroupSessionState.rawValue.getter();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v96();

    sub_10023DCB0(v75, v77, v79);
LABEL_20:
    (*(v59 + 8))(v60, v61);
    return sub_10002187C(v56, type metadata accessor for HostedRoutingSourceSession);
  }

  v67 = *(v64[7] + 8 * v65);

  v68 = [*(v67 + 88) externalDevice];
  if (!v68)
  {

    goto LABEL_19;
  }

  v69 = v68;
  if (*(v67 + 16) != 2)
  {

    goto LABEL_19;
  }

  v70 = v83;
  (*(v59 + 16))(v83, v60, v61);
  v71 = (*(v59 + 88))(v70, v61);
  if (v71 == enum case for RoutingControls.RelativeVolumeControl.AdjustmentType.increase(_:))
  {
    [v69 sendButtonEvent:{a9, a10}];
LABEL_25:
    (v96)(0, 0, 0, 0);

    goto LABEL_20;
  }

  if (v71 == enum case for RoutingControls.RelativeVolumeControl.AdjustmentType.decrease(_:))
  {
    [v69 sendButtonEvent:{v81, v82}];
    goto LABEL_25;
  }

LABEL_28:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002D0308(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v113 = a3;
  v114 = a5;
  v116 = a4;
  v100 = a2;
  v109 = *v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v110 = &v96[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for RoutingControl.RoutingControlType();
  v102 = *(v10 - 8);
  v103 = v10;
  __chkstk_darwin(v10);
  v105 = &v96[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for RoutingControl();
  v107 = *(v12 - 8);
  v108 = v12;
  v13 = __chkstk_darwin(v12);
  v106 = &v96[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v101 = &v96[-v15];
  v16 = sub_1001BC5A8(&qword_100525798, &qword_100457B00);
  __chkstk_darwin(v16 - 8);
  v18 = &v96[-v17];
  v19 = type metadata accessor for ContinuousRoutingControl();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v104 = &v96[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v24 = &v96[-v23];
  v25 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  __chkstk_darwin(v25 - 8);
  v27 = &v96[-v26];
  v28 = sub_100015A78();
  v29 = v7;
  sub_10001D9AC(v28, v27, &qword_100525C00, &unk_1004511A0);
  v115 = v8;
  v30 = (*(v8 + 48))(v27, 1, v7);
  v112 = a1;
  if (v30 == 1)
  {
    sub_1000038A4(v27, &qword_100525C00, &unk_1004511A0);
    v31 = v115;
    v32 = v19;
  }

  else
  {
    (*(v20 + 16))(v24, a1, v19);
    v33 = v116;

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v99 = v29;
      v37 = v36;
      v98 = swift_slowAlloc();
      v117[0] = v98;
      *v37 = 136315650;
      v38 = _typeName(_:qualified:)();
      v97 = v35;
      v40 = sub_10002C9C8(v38, v39, v117);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_10002C9C8(v113, v33, v117);
      *(v37 + 22) = 2080;
      sub_1002CDD70(&qword_100524288, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v20 + 8))(v24, v19);
      v44 = sub_10002C9C8(v41, v43, v117);

      *(v37 + 24) = v44;
      _os_log_impl(&_mh_execute_header, v34, v97, "[%s] handleEndContinuousControl<%s> - handle interaction with: %s", v37, 0x20u);
      swift_arrayDestroy();

      v29 = v99;
    }

    else
    {

      (*(v20 + 8))(v24, v19);
    }

    v32 = v19;
    v31 = v115;
    (*(v115 + 8))(v27, v29);
  }

  v45 = v116;
  v46 = v111;
  v117[0] = sub_10029A7A8();
  v47 = v112;
  sub_1002CCEB0(v112, v18);
  *(v46 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___ongoingContinousControls) = v117[0];

  v48 = (*(v20 + 48))(v18, 1, v32);
  sub_1000038A4(v18, &qword_100525798, &qword_100457B00);
  if (v48 == 1)
  {
    v49 = sub_100028D40();
    v50 = v110;
    (*(v31 + 16))(v110, v49, v29);
    v51 = v104;
    (*(v20 + 16))(v104, v47, v32);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v99 = v29;
      v55 = v54;
      v117[0] = swift_slowAlloc();
      *v55 = 136315650;
      v56 = _typeName(_:qualified:)();
      v58 = sub_10002C9C8(v56, v57, v117);

      *(v55 + 4) = v58;
      *(v55 + 12) = 2082;
      *(v55 + 14) = sub_10002C9C8(v113, v45, v117);
      *(v55 + 22) = 2082;
      sub_1002CDD70(&qword_100524288, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v20 + 8))(v51, v32);
      v62 = sub_10002C9C8(v59, v61, v117);

      *(v55 + 24) = v62;
      _os_log_impl(&_mh_execute_header, v52, v53, "[%s] handleEndContinuousControl<%{public}s> - no matching ongoing control found for: %{public}s", v55, 0x20u);
      swift_arrayDestroy();

      (*(v115 + 8))(v110, v99);
    }

    else
    {

      (*(v20 + 8))(v51, v32);
      (*(v31 + 8))(v50, v29);
    }

    v73 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v73 - 8) + 104))(v74, enum case for InternalRoutingError.invalidAction(_:), v73);
    MRDFastSyncGroupSessionState.rawValue.getter();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    sub_1002D32BC(v81, v75, v77, v79);

    return sub_10023DCB0(v76, v78, v80);
  }

  else
  {
    v63 = v101;
    ContinuousRoutingControl.control.getter();
    v64 = v105;
    RoutingControl.type.getter();
    v65 = v108;
    v66 = *(v107 + 8);
    v66(v63, v108);
    v68 = v102;
    v67 = v103;
    v69 = (*(v102 + 88))(v64, v103);
    if (v69 == enum case for RoutingControl.RoutingControlType.relativeVolume(_:))
    {
      (*(v68 + 96))(v64, v67);
      v70 = v106;
      ContinuousRoutingControl.control.getter();
      sub_1002CF8F8(v70, v113, v45, sub_1002D32BC, v114, sub_1002D4D5C, 0xEA0000000CLL, 0, 0xE90000000CLL, 0, "[%s] handleEndRelativeVolumeControl<%{public}s> - relative volume is not supported for local session");
      v66(v70, v65);
      v71 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
      return (*(*(v71 - 8) + 8))(v64, v71);
    }

    if (v69 == enum case for RoutingControl.RoutingControlType.rewind(_:))
    {
      v82 = v106;
      ContinuousRoutingControl.control.getter();
      v83 = sub_10021F050(_swiftEmptyArrayStorage);
      v84 = v82;
      v85 = v100;
      v86 = v113;
      v87 = v45;
      v88 = 11;
    }

    else
    {
      if (v69 != enum case for RoutingControl.RoutingControlType.fastForward(_:))
      {
        v117[0] = 0;
        v117[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(112);
        v89._countAndFlagsBits = 91;
        v89._object = 0xE100000000000000;
        String.append(_:)(v89);
        v90._countAndFlagsBits = _typeName(_:qualified:)();
        String.append(_:)(v90);

        v91._object = 0x800000010043F950;
        v91._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v91);
        v92._countAndFlagsBits = v113;
        v92._object = v45;
        String.append(_:)(v92);
        v93._countAndFlagsBits = 0x746E6F63202D203ELL;
        v93._object = 0xED0000203A6C6F72;
        String.append(_:)(v93);
        sub_1002CDD70(&qword_100524288, &type metadata accessor for ContinuousRoutingControl, &protocol conformance descriptor for ContinuousRoutingControl);
        v94._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v94);

        v95._countAndFlagsBits = 0xD00000000000003FLL;
        v95._object = 0x800000010043F910;
        String.append(_:)(v95);
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v82 = v106;
      ContinuousRoutingControl.control.getter();
      v83 = sub_10021F050(_swiftEmptyArrayStorage);
      v84 = v82;
      v85 = v100;
      v86 = v113;
      v87 = v45;
      v88 = 9;
    }

    sub_1002CE274(v84, v85, v86, v87, v88, v83, sub_1002D32BC, v114);

    return (v66)(v82, v65);
  }
}

void sub_1002D0FEC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = (*(*v3 + 368))(v9);
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v13 = sub_100037234();
    if ((*v13 != a2 || *(v13 + 1) != a3) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(75);
      v14._countAndFlagsBits = 0xD000000000000031;
      v14._object = 0x800000010043F5D0;
      String.append(_:)(v14);
      v30[1] = a1;
      sub_10026A1B0();
      v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v15);

      v16._object = 0x800000010043F610;
      v16._countAndFlagsBits = 0xD000000000000016;
      String.append(_:)(v16);
      v17._countAndFlagsBits = a2;
      v17._object = a3;
      String.append(_:)(v17);
      sub_100033F40(v31, v32);
    }

    v18 = sub_100297774();
    v19 = v18;
    v20 = v18 + 64;
    v21 = 1 << v18[32];
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v18 + 8);
    v24 = (v21 + 63) >> 6;

    v25 = 0;
    while (v23)
    {
      v26 = v25;
LABEL_14:
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v28 = *(*(v19 + 7) + ((v26 << 10) | (16 * v27)));

      v28(v29);
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        return;
      }

      v23 = *&v20[8 * v26];
      ++v25;
      if (v23)
      {
        v25 = v26;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1002D1300()
{

  sub_1002485A4(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 104, 7);
}

double sub_1002D1378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (a1)
  {
    sub_10023DBE8(a1, a2, a3, a4);
    swift_errorRetain();
    sub_10023DC40(a2, a3, a4);
    v7(a1, a2, a3, a4);
    sub_10023DC58(a1, a2, a3, a4);

    sub_10023DCB0(a2, a3, a4);
  }

  else
  {
    v15 = *(v6 + 96);

    sub_1002AF590((v6 + 40), v7, v8, a5, v15);
  }

  return result;
}

uint64_t sub_1002D1490(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *(**(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_musicFavoriteStatusDataSource) + 200);

  v6 = v5(v3, v4);

  if (v6 == 3)
  {
    v7 = 0;
  }

  else
  {
    sub_100254984();
    v7 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_1002540BC(v6);
  }

  return v7 & 1;
}

uint64_t sub_1002D156C(uint64_t a1)
{
  result = type metadata accessor for RoutingMode();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 sub_1002D16D4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1002D16E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002D1730(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1002D1784()
{
  result = qword_100533560[0];
  if (!qword_100533560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100533560);
  }

  return result;
}

unint64_t sub_1002D17DC()
{
  result = qword_100533670;
  if (!qword_100533670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100533670);
  }

  return result;
}

unint64_t sub_1002D1834()
{
  result = qword_100533800[0];
  if (!qword_100533800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100533800);
  }

  return result;
}

unint64_t sub_1002D188C()
{
  result = qword_100533A10[0];
  if (!qword_100533A10[0])
  {
    type metadata accessor for HostedRoutingSessionDataSource.EndpointEntry();
    result = swift_getWitnessTable();
    atomic_store(result, qword_100533A10);
  }

  return result;
}

double sub_1002D18E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1002D193C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002D19C0(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

double sub_1002D1A34()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_13;
    }

    v5 = Strong;
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v1 && v6 == v2)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    sub_1002A58F4(v5);
LABEL_12:
    sub_100033F40(v1, v2);

LABEL_13:
  }

  return result;
}

uint64_t sub_1002D1B4C()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[8];
  v6 = sub_100034D68();
  if (v6[2] && (v7 = sub_10000698C(v2, v3), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);

    if (v9 == v1)
    {
      if (!v5)
      {
        sub_1002A4A5C(v1);
      }

      return v4(v5);
    }
  }

  else
  {
  }

  v11 = type metadata accessor for InternalRoutingError();
  sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
  v12 = swift_allocError();
  (*(*(v11 - 8) + 104))(v13, enum case for InternalRoutingError.endpointEntryNotFound(_:), v11);
  v4(v12);
}

uint64_t sub_1002D1E08()
{
  if (!*(v0 + 24))
  {
    sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
    v22 = sub_10024C81C();
    v23 = [v22 localActivePlayerClient];

    if (!v23)
    {
      return 0;
    }

    v24 = [v23 supportedRemoteControlCommands];

    if (!v24)
    {
      return 0;
    }

    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_100020418(v25);

    if (!v8)
    {
      return 0;
    }

    v9 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
      if (!v26)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v26 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_62;
      }
    }

    v41 = kMRMediaRemoteCommandInfoIsActiveKey;
    v27 = 4;
    while (1)
    {
      v28 = v27 - 4;
      if ((v8 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v29 = *(v8 + 8 * v27);
      }

      v30 = v29;
      v31 = v27 - 3;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_57;
      }

      if ([v29 command] == 21)
      {
        v32 = [v30 options];
        if (!v32)
        {

          goto LABEL_50;
        }

        v33 = v32;
        v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = v41;
        sub_1001BC5A8(&qword_100523738, &unk_100457AF0);
        sub_100037570();
        AnyHashable.init<A>(_:)();
        if (!*(v34 + 16) || (v36 = sub_10001BF64(v42), (v37 & 1) == 0))
        {

          sub_10001BF10(v42);
LABEL_50:
          v43 = 0u;
          v44 = 0u;
LABEL_51:
          sub_1000038A4(&v43, &qword_100522890, &qword_100450610);
          goto LABEL_35;
        }

        sub_100020E0C(*(v34 + 56) + 32 * v36, &v43);

        sub_10001BF10(v42);

        if (!*(&v44 + 1))
        {
          goto LABEL_51;
        }

        if (swift_dynamicCast() & 1) != 0 && (v42[0])
        {
LABEL_54:
          v39 = 1;
          goto LABEL_63;
        }
      }

      else
      {
      }

LABEL_35:
      ++v27;
      if (v31 == v26)
      {
        goto LABEL_62;
      }
    }
  }

  sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v1 = sub_10024C81C();
  v2 = [v1 localOriginClient];

  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 existingNowPlayingClientForDisplayID:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 activePlayerClient];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 supportedRemoteControlCommands];

  if (!v6)
  {
    return 0;
  }

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_100020418(v7);

  if (!v8)
  {
    return 0;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v40 = kMRMediaRemoteCommandInfoIsActiveKey;
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v9 + 16))
        {
          goto LABEL_56;
        }

        v13 = *(v8 + 8 * v11);
      }

      v14 = v13;
      v15 = v11 - 3;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ([v13 command] == 21)
      {
        v16 = [v14 options];
        if (!v16)
        {

          goto LABEL_25;
        }

        v17 = v16;
        v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = v40;
        sub_1001BC5A8(&qword_100523738, &unk_100457AF0);
        sub_100037570();
        AnyHashable.init<A>(_:)();
        if (!*(v18 + 16) || (v20 = sub_10001BF64(v42), (v21 & 1) == 0))
        {

          sub_10001BF10(v42);
LABEL_25:
          v43 = 0u;
          v44 = 0u;
LABEL_26:
          sub_1000038A4(&v43, &qword_100522890, &qword_100450610);
          goto LABEL_10;
        }

        sub_100020E0C(*(v18 + 56) + 32 * v20, &v43);

        sub_10001BF10(v42);

        if (!*(&v44 + 1))
        {
          goto LABEL_26;
        }

        if (swift_dynamicCast() & 1) != 0 && (v42[0])
        {
          goto LABEL_54;
        }
      }

      else
      {
      }

LABEL_10:
      ++v11;
      if (v15 == i)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

LABEL_62:
  v39 = 0;
LABEL_63:

  return v39;
}

uint64_t sub_1002D23D8(char a1)
{
  v3 = *(type metadata accessor for ContinuousClock() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002B29C8(a1, *(v1 + 16), v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v8 + 8), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1002D24FC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = swift_beginAccess();
  v5 = *(v1 + 16);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = __CocoaSet.count.getter();

    if (!v6)
    {
      return;
    }
  }

  else if (!*(v5 + 16))
  {
    return;
  }

  if (v2(v4))
  {
    v3(0);
  }
}

uint64_t sub_1002D25B4(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 40));

  return _swift_deallocObject(v1, 48, 7);
}

void sub_1002D260C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    v3 = *(v1 + 16);
    if ((v3 & 0xC000000000000001) != 0)
    {

      v4 = __CocoaSet.count.getter();

      if (!v4)
      {
        return;
      }
    }

    else if (!*(v3 + 16))
    {
      return;
    }

    v2(1);
  }
}

void sub_1002D26C8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = Notification.userInfo.getter();
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  if (!kMRNowPlayingPlayerPathUserInfoKey)
  {
    __break(1u);
    return;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_10001BF64(v17), (v7 & 1) == 0))
  {

    sub_10001BF10(v17);
LABEL_13:
    v18 = 0u;
    v19 = 0u;
    goto LABEL_14;
  }

  sub_100020E0C(*(v5 + 56) + 32 * v6, &v18);
  sub_10001BF10(v17);

  if (!*(&v19 + 1))
  {
LABEL_14:
    sub_1000038A4(&v18, &qword_100522890, &qword_100450610);
    return;
  }

  sub_100018D7C(0, &qword_100522FF0, MRPlayerPath_ptr);
  if (swift_dynamicCast())
  {
    v8 = v17[0];
    v9 = [v17[0] client];
    if (!v9)
    {
      goto LABEL_18;
    }

    v10 = v9;
    v11 = [v9 bundleIdentifier];

    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v12 == v1 && v14 == v2)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
LABEL_18:

        return;
      }
    }

    v3(v15);
    goto LABEL_18;
  }
}

double sub_1002D28C4()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (v1())
    {
      v8 = sub_100297774();

      sub_10027DB8C(0, 0, v2, v3);
      *(v7 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalFavoriteStatusObservers) = v8;

      v4(0);
    }
  }

  return result;
}

double sub_1002D29A0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v11 = sub_100297774();
    v7 = sub_1002859AC(v1, v2);
    v9 = v8;
    *(v6 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalFavoriteStatusObservers) = v11;

    if (v7)
    {
      v10 = sub_1001C7C2C(v7, v9);
      v3(v10);
    }
  }

  return result;
}

double sub_1002D2A64(void *a1)
{
  v3 = *(type metadata accessor for RoutingControl() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1002C7B68(a1, v4, v5, v6, v7);
}

uint64_t sub_1002D2ADC()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1002D2BA8()
{
  type metadata accessor for RoutingControl();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 && (v3 = [v1 error]) != 0)
  {
    v10 = v3;
    RoutingControl.sessionIdentifier.getter();
    MRDFastSyncGroupSessionState.rawValue.getter();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v2();

    sub_10023DCB0(v5, v7, v9);
  }

  else
  {
    (v2)(0, 0, 0, 0);
  }
}

uint64_t sub_1002D2CEC()
{
  if (!*(v0 + 24))
  {
    sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
    v22 = sub_10024C81C();
    v23 = [v22 localActivePlayerClient];

    if (!v23)
    {
      return 0;
    }

    v24 = [v23 supportedRemoteControlCommands];

    if (!v24)
    {
      return 0;
    }

    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_100020418(v25);

    if (!v8)
    {
      return 0;
    }

    v9 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
      if (!v26)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v26 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_62;
      }
    }

    v41 = kMRMediaRemoteCommandInfoIsActiveKey;
    v27 = 4;
    while (1)
    {
      v28 = v27 - 4;
      if ((v8 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v29 = *(v8 + 8 * v27);
      }

      v30 = v29;
      v31 = v27 - 3;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_57;
      }

      if ([v29 command] == 21)
      {
        v32 = [v30 options];
        if (!v32)
        {

          goto LABEL_50;
        }

        v33 = v32;
        v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = v41;
        sub_1001BC5A8(&qword_100523738, &unk_100457AF0);
        sub_100037570();
        AnyHashable.init<A>(_:)();
        if (!*(v34 + 16) || (v36 = sub_10001BF64(v42), (v37 & 1) == 0))
        {

          sub_10001BF10(v42);
LABEL_50:
          v43 = 0u;
          v44 = 0u;
LABEL_51:
          sub_1000038A4(&v43, &qword_100522890, &qword_100450610);
          goto LABEL_35;
        }

        sub_100020E0C(*(v34 + 56) + 32 * v36, &v43);

        sub_10001BF10(v42);

        if (!*(&v44 + 1))
        {
          goto LABEL_51;
        }

        if ((swift_dynamicCast() & 1) != 0 && (v42[0] & 1) == 0)
        {
LABEL_54:
          v39 = 1;
          goto LABEL_63;
        }
      }

      else
      {
      }

LABEL_35:
      ++v27;
      if (v31 == v26)
      {
        goto LABEL_62;
      }
    }
  }

  sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v1 = sub_10024C81C();
  v2 = [v1 localOriginClient];

  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 existingNowPlayingClientForDisplayID:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 activePlayerClient];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 supportedRemoteControlCommands];

  if (!v6)
  {
    return 0;
  }

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_100020418(v7);

  if (!v8)
  {
    return 0;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v40 = kMRMediaRemoteCommandInfoIsActiveKey;
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v9 + 16))
        {
          goto LABEL_56;
        }

        v13 = *(v8 + 8 * v11);
      }

      v14 = v13;
      v15 = v11 - 3;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ([v13 command] == 21)
      {
        v16 = [v14 options];
        if (!v16)
        {

          goto LABEL_25;
        }

        v17 = v16;
        v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = v40;
        sub_1001BC5A8(&qword_100523738, &unk_100457AF0);
        sub_100037570();
        AnyHashable.init<A>(_:)();
        if (!*(v18 + 16) || (v20 = sub_10001BF64(v42), (v21 & 1) == 0))
        {

          sub_10001BF10(v42);
LABEL_25:
          v43 = 0u;
          v44 = 0u;
LABEL_26:
          sub_1000038A4(&v43, &qword_100522890, &qword_100450610);
          goto LABEL_10;
        }

        sub_100020E0C(*(v18 + 56) + 32 * v20, &v43);

        sub_10001BF10(v42);

        if (!*(&v44 + 1))
        {
          goto LABEL_26;
        }

        if ((swift_dynamicCast() & 1) != 0 && (v42[0] & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
      }

LABEL_10:
      ++v11;
      if (v15 == i)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

LABEL_62:
  v39 = 0;
LABEL_63:

  return v39;
}

uint64_t sub_1002D32BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for ContinuousClock() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002B3594(a1, a2, a3, a4, v4 + v10, v4 + v13, *(v4 + v14), *(v4 + v14 + 8), *(v4 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v4 + ((((v14 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1002D3434()
{
  v1 = type metadata accessor for ContinuousClock();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v12 = v3 | v8;
  v10 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v12 | 7);
}

uint64_t sub_1002D35D4(char a1, const char *a2, const char *a3, ...)
{
  v7 = *(type metadata accessor for ContinuousClock() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002AE9FC(a1, v3 + v8, v3 + v11, *(v3 + v12), *(v3 + v12 + 8), *(v3 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), a2, a3, v14, v15, v16, v17, v18, v19, vars0, vars8);
}

uint64_t sub_1002D3704()
{

  return _swift_deallocObject(v0, 72, 7);
}

double sub_1002D3754()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(*Strong + 440))();
    v8 = v1();

    if (v8)
    {
      v9 = sub_100297768();

      sub_10027DB8C(0, 0, v2, v3);
      *(v7 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers) = v9;

      v4(0);
    }
  }

  return result;
}

uint64_t sub_1002D38A8()
{

  sub_1002485A4(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return _swift_deallocObject(v0, 128, 7);
}

void sub_1002D3930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3;
  v5 = v3;
  v6 = *(v3 + 16);
  v7 = *(v5 + 24);
  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  v10 = *(v5 + 112);
  v11 = *(v5 + 120);
  if (!a1)
  {
    goto LABEL_4;
  }

  swift_getErrorValue();
  swift_errorRetain();
  if (sub_100248E9C(v20, v21))
  {

    v4 = a3;
LABEL_4:
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v11;
    v12[4] = v8;
    v12[5] = v9;

    sub_1002ACDCC((v5 + 56), v6, v7, v4, v12);

    return;
  }

  swift_errorRetain();

  MRDFastSyncGroupSessionState.rawValue.getter();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (v6)();

  sub_10023DCB0(v14, v16, v18);
}

double sub_1002D3AA4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  if (a1)
  {
    swift_errorRetain();

    swift_errorRetain();
    MRDFastSyncGroupSessionState.rawValue.getter();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v3();

    sub_10023DCB0(v7, v9, v11);
  }

  else
  {
    v13 = *(v1 + 48);
    v20 = *(v1 + 56);
    v14 = *(v1 + 88);
    v18[0] = *(v1 + 72);
    v18[1] = v14;
    v19 = *(v1 + 104);
    v15 = swift_allocObject();
    *(v15 + 16) = v3;
    *(v15 + 24) = v2;
    *(v15 + 32) = v5;
    *(v15 + 40) = v4;
    *(v15 + 48) = v13;
    *(v15 + 56) = *(v1 + 56);
    *(v15 + 72) = *(v1 + 72);
    *(v15 + 88) = *(v1 + 88);
    *(v15 + 104) = *(v1 + 104);
    v16 = swift_allocObject();
    *(v16 + 16) = v5;
    *(v16 + 24) = v4;
    swift_bridgeObjectRetain_n();

    sub_10028BC98(&v20, v17);
    sub_10026D080(v18, v17);
    sub_1002ACDCC((v1 + 56), sub_1002D3C80, v15, sub_1002D3DE0, v16);
  }

  return result;
}

uint64_t sub_1002D3C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (!a1)
  {
    return sub_1002B48B8(*(v5 + 32), *(v5 + 40), (v5 + 56), v7, v6);
  }

  sub_1002D3DE8();
  swift_allocError();
  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  sub_10023DBE8(a1, a2, a3, a4);
  swift_errorRetain();
  sub_10023DC40(a2, a3, a4);

  MRDFastSyncGroupSessionState.rawValue.getter();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v7();

  sub_10023DCB0(v14, v16, v18);

  return sub_10023DCB0(a2, a3, a4);
}

unint64_t sub_1002D3DE8()
{
  result = qword_100525770;
  if (!qword_100525770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100525770);
  }

  return result;
}

uint64_t sub_1002D3F48(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 32));

  return _swift_deallocObject(v1, 56, 7);
}

uint64_t sub_1002D3FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[5];
  if (a1)
  {
    v11 = v4[2];
    v10 = v4[3];
    v25 = v4[4];
    v12 = v11 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = a4;
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      v14 = sub_100037234();
      v22 = v9;
      v23 = a3;
      v16 = *v14;
      v15 = *(v14 + 1);
      v20 = *(v13 + 32);

      v17 = v16;
      v9 = v22;
      v18 = v13;
      a4 = v24;
      v20(v11, v10, v25, v17, v15, ObjectType, v18);
      swift_unknownObjectRelease();
      a3 = v23;
    }
  }

  return v9(a1, a2, a3, a4);
}

void sub_1002D410C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v9 = *(type metadata accessor for HostedRoutingSourceSession(0) - 8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  sub_1002BFBA8(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), *(v4 + 28), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), (v4 + v10), (v4 + ((v10 + *(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v10 + *(v9 + 64) + 63) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_1002D425C()
{
  v1 = *(type metadata accessor for HostedRoutingSourceSession(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);

  return sub_1002C2BB4(v0 + v2, v5, v7, v8, v6);
}

uint64_t sub_1002D438C(void (*a1)(void))
{

  a1(*(v1 + 40));

  return _swift_deallocObject(v1, 48, 7);
}

double sub_1002D43E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for RoutingControl() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002C5BD0(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v10, *(v4 + v11), *(v4 + ((((v11 + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), (v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 71) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_1002D4508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for RoutingControl() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState() - 8);
  return sub_1002C4CB8(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v10, *(v4 + v11), (v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v12 + 80) + 49) & ~*(v12 + 80)));
}

void sub_1002D4658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void))
{
  v15 = *(type metadata accessor for RoutingControl() - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1002C56BC(a1, a2, a3, a4, *(v7 + 16), *(v7 + 24), v7 + v16, *(v7 + v17), (v7 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)), a5, a6, a7);
}

uint64_t sub_1002D4744()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  sub_1002485A4(*(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32), *(v0 + v5 + 40), *(v0 + v5 + 48));

  return _swift_deallocObject(v0, v5 + 49, v3 | 7);
}

uint64_t sub_1002D487C(uint64_t a1)
{
  type metadata accessor for RoutingControl();

  return sub_1002C4B14(a1);
}

uint64_t sub_1002D48F0(uint64_t a1)
{
  v3 = *(type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for RoutingControl();

  return sub_1002C5320(a1, v1 + v4);
}

id sub_1002D49C4()
{
  v1 = *(type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1002C50B8(v2);
}

uint64_t sub_1002D4A24(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1002D4B1C(uint64_t a1)
{
  v3 = *(type metadata accessor for RoutingControl() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002C63B8(a1, v1 + v4, v5);
}

uint64_t sub_1002D4BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D4C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  if (!a1)
  {
    return sub_1002CF8F8(*(v5 + 40), **(v5 + 48), *(*(v5 + 48) + 8), v6, v7, sub_1002D4D5C, 0xEA0000000CLL, 0, 0xE90000000CLL, 0, "[%s] handleEndRelativeVolumeControl<%{public}s> - relative volume is not supported for local session");
  }

  sub_10023DBE8(a1, a2, a3, a4);
  swift_errorRetain();
  sub_10023DC40(a2, a3, a4);
  (v6)(a1, a2, a3, a4);
  sub_10023DC58(a1, a2, a3, a4);

  return sub_10023DCB0(a2, a3, a4);
}

uint64_t sub_1002D4D78(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 == RoutingControl.sessionIdentifier.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

double sub_1002D4DF0()
{
  v1 = *(type metadata accessor for RoutingControl() - 8);
  v2 = (*(v1 + 80) + 96) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + v3);
  v8 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002C74C0(v4, (v0 + 24), v5, v6, v0 + v2, v7, v8);
}

uint64_t sub_1002D4E94()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002D4F04(uint64_t a1)
{
  v3 = *(type metadata accessor for RoutingControl() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002C7654(a1, v1 + v4, v6, v7);
}

uint64_t sub_1002D5110@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element;
  swift_beginAccess();
  return sub_1002D56A8(v1 + v3, a1, type metadata accessor for RoutingDecisionEngine.Decision.Element);
}

uint64_t sub_1002D519C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element;
  swift_beginAccess();
  sub_1002D51FC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1002D51FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutingDecisionEngine.Decision.Element(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1002D52C0(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  LOBYTE(v3) = *(v3 + 48);

  sub_10026D0B8(v6, v7, v8, v9, v3);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v3;
}

double sub_1002D5360(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  *(v3 + 32) = *(a1 + 32);
  v9 = *(a1 + 48);
  LOBYTE(a1) = *(v3 + 48);
  *(v3 + 48) = v9;

  return sub_1002485A4(v4, v5, v6, v7, a1);
}

uint64_t sub_1002D545C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RoutingDecisionEngine.Decision.Element(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 96))(v4);
  if (!swift_getEnumCaseMultiPayload())
  {
    return sub_1002D5640(v6, a1, type metadata accessor for HostedRoutingItem);
  }

  result = sub_1002D5710(v6, type metadata accessor for RoutingDecisionEngine.Decision.Element);
  __break(1u);
  return result;
}

uint64_t sub_1002D554C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RoutingDecisionEngine.Decision.Element(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 96))(v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1002D5640(v6, a1, type metadata accessor for HostedRoutingSession);
  }

  result = sub_1002D5710(v6, type metadata accessor for RoutingDecisionEngine.Decision.Element);
  __break(1u);
  return result;
}

uint64_t sub_1002D5640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002D56A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002D5710(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002D5770(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1002D5640(a1, v4 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
  v5 = v4 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = *(a2 + 48);
  return v4;
}

uint64_t sub_1002D5800()
{
  sub_1002D5710(v0 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
  v1 = *(v0 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction + 16);
  v2 = *(v0 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction + 24);
  v3 = *(v0 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction + 32);
  v4 = *(v0 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction + 40);
  v5 = *(v0 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction + 48);

  sub_1002485A4(v1, v2, v3, v4, v5);

  return swift_deallocClassInstance();
}

uint64_t sub_1002D5950(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v660 = a4;
  v687 = a3;
  v768 = a1;
  v5 = sub_1001BC5A8(&qword_100524248, &unk_100457C10);
  __chkstk_darwin(v5 - 8);
  v631 = &v623 - v6;
  v7 = type metadata accessor for RoutingSessionConfiguration.Context();
  v658 = *(v7 - 8);
  v659 = v7;
  __chkstk_darwin(v7);
  v657 = &v623 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v638 = &v623 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v643 = &v623 - v14;
  v15 = __chkstk_darwin(v13);
  v639 = &v623 - v16;
  v17 = __chkstk_darwin(v15);
  v641 = &v623 - v18;
  v19 = __chkstk_darwin(v17);
  v634 = &v623 - v20;
  v21 = __chkstk_darwin(v19);
  v650 = &v623 - v22;
  v23 = __chkstk_darwin(v21);
  v649 = &v623 - v24;
  v25 = __chkstk_darwin(v23);
  v648 = &v623 - v26;
  v27 = __chkstk_darwin(v25);
  v635 = &v623 - v28;
  v29 = __chkstk_darwin(v27);
  v633 = &v623 - v30;
  v31 = __chkstk_darwin(v29);
  v629 = &v623 - v32;
  v33 = __chkstk_darwin(v31);
  v630 = &v623 - v34;
  v35 = __chkstk_darwin(v33);
  v640 = &v623 - v36;
  v37 = __chkstk_darwin(v35);
  v646 = &v623 - v38;
  v39 = __chkstk_darwin(v37);
  v645 = &v623 - v40;
  v41 = __chkstk_darwin(v39);
  v642 = &v623 - v42;
  v43 = __chkstk_darwin(v41);
  v636 = &v623 - v44;
  v45 = __chkstk_darwin(v43);
  v652 = &v623 - v46;
  v47 = __chkstk_darwin(v45);
  v651 = &v623 - v48;
  __chkstk_darwin(v47);
  v669 = &v623 - v49;
  v666 = type metadata accessor for RoutingDecisionEngine.Decision.Element(0);
  __chkstk_darwin(v666);
  v667 = &v623 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v52 = __chkstk_darwin(v51 - 8);
  v647 = &v623 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v663 = &v623 - v54;
  v55 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v664 = *(v55 - 8);
  v665 = v55;
  v56 = __chkstk_darwin(v55);
  v644 = (&v623 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v56);
  v656 = (&v623 - v58);
  v59 = sub_1001BC5A8(&qword_100523C18, &qword_100451AF0);
  __chkstk_darwin(v59 - 8);
  v674 = &v623 - v60;
  v676 = type metadata accessor for HostedRoutingItem(0);
  v681 = *(v676 - 8);
  v61 = __chkstk_darwin(v676);
  v655 = &v623 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __chkstk_darwin(v61);
  v653 = &v623 - v64;
  v65 = __chkstk_darwin(v63);
  v670 = &v623 - v66;
  v67 = __chkstk_darwin(v65);
  v662 = (&v623 - v68);
  v69 = __chkstk_darwin(v67);
  v671 = &v623 - v70;
  v71 = __chkstk_darwin(v69);
  v672 = (&v623 - v72);
  v73 = __chkstk_darwin(v71);
  v661 = &v623 - v74;
  v75 = __chkstk_darwin(v73);
  v654 = &v623 - v76;
  v77 = __chkstk_darwin(v75);
  v668 = &v623 - v78;
  __chkstk_darwin(v77);
  v675 = &v623 - v79;
  v684 = type metadata accessor for HostedRoutingSession(0);
  v678 = *(v684 - 8);
  v80 = __chkstk_darwin(v684);
  v632 = &v623 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v83 = (&v623 - v82);
  v84 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v85 = __chkstk_darwin(v84 - 8);
  v637 = &v623 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __chkstk_darwin(v85);
  v679 = (&v623 - v88);
  v89 = __chkstk_darwin(v87);
  v673 = &v623 - v90;
  __chkstk_darwin(v89);
  v677 = (&v623 - v91);
  v92 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  __chkstk_darwin(v92 - 8);
  v94 = &v623 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  __chkstk_darwin(v95 - 8);
  v97 = &v623 - v96;
  v98 = sub_1001D93CC();
  sub_10001D9AC(v98, v97, &qword_100525C00, &unk_1004511A0);
  v99 = (*(v10 + 48))(v97, 1, v9);
  v686 = v9;
  if (v99 == 1)
  {
    sub_1000038A4(v97, &qword_100525C00, &unk_1004511A0);
  }

  else
  {
    v683 = v10;
    sub_1002D56A8(v687, v94, type metadata accessor for HostedRoutingSessionSnapshot);
    swift_bridgeObjectRetain_n();
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v627 = v83;
      v103 = a2;
      v104 = v102;
      v685 = swift_slowAlloc();
      v691[0] = v685;
      *v104 = 136315650;
      v105 = _typeName(_:qualified:)();
      v107 = sub_10002C9C8(v105, v106, v691);

      *(v104 + 4) = v107;
      *(v104 + 12) = 2080;

      v108 = sub_10002C9C8(v768, v103, v691);

      *(v104 + 14) = v108;
      swift_bridgeObjectRelease_n();
      *(v104 + 22) = 2080;
      v109 = sub_100264AAC();
      v111 = sub_10002C9C8(v109, v110, v691);

      *(v104 + 24) = v111;
      v112 = v627;
      sub_1002D5710(v94, type metadata accessor for HostedRoutingSessionSnapshot);
      _os_log_impl(&_mh_execute_header, v100, v101, "[%s] computeInteraction for item: %s in snapshot: %s", v104, 0x20u);
      swift_arrayDestroy();

      a2 = v103;
      v83 = v112;
    }

    else
    {
      swift_bridgeObjectRelease_n();

      sub_1002D5710(v94, type metadata accessor for HostedRoutingSessionSnapshot);
    }

    v10 = v683;
    (*(v683 + 8))(v97, v686);
  }

  v691[0] = v768;
  v691[1] = a2;
  v689 = 14906;
  v690 = 0xE200000000000000;
  sub_10026983C();
  v113 = Collection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)();
  if (*(v113 + 16) != 2)
  {

    v123 = type metadata accessor for InternalRoutingError();
    sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    v125 = v124;
    v126 = &enum case for InternalRoutingError.itemNotFound(_:);
LABEL_16:
    (*(*(v123 - 8) + 104))(v125, *v126, v123);
    swift_willThrow();
    return v10;
  }

  v626 = a2;
  v114 = *(v113 + 40);
  v115 = v113;

  v116 = static String._fromSubstring(_:)();
  v685 = v117;

  if (*(v115 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_135;
  }

  v682 = v116;
  v628 = v115;

  v118 = v682;
  v119 = static String._fromSubstring(_:)();
  v121 = v120;

  if (v118 == static RoutingSession.placeholderSessionIdentifier.getter() && v685 == v122)
  {

LABEL_15:

    v123 = type metadata accessor for InternalRoutingError();
    sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    v125 = v128;
    v126 = &enum case for InternalRoutingError.invalidAction(_:);
    goto LABEL_16;
  }

  v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v127)
  {

    goto LABEL_15;
  }

  v683 = v10;
  v627 = v83;
  v623 = v119;
  v625 = v121;
  v130 = v687;
  v624 = sub_1002647C8();
  v131 = v677;
  sub_10001D9AC(v130, v677, &qword_100523620, &unk_1004511D0);
  v132 = v678;
  v133 = v678 + 6;
  v134 = v678[6];
  v135 = v684;
  v136 = (v134)(v131, 1, v684);
  sub_1000038A4(v131, &qword_100523620, &unk_1004511D0);
  if (v136 == 1)
  {
    v137 = v134;
    v10 = v133;
    v138 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  sub_1001BC5A8(&qword_100523630, &qword_1004511E0);
  v139 = (*(v132 + 80) + 32) & ~*(v132 + 80);
  v138 = swift_allocObject();
  *(v138 + 1) = xmmword_10044EC70;
  v140 = v130;
  v141 = v673;
  sub_10001D9AC(v140, v673, &qword_100523620, &unk_1004511D0);
  v10 = v133;
  v137 = v134;
  result = (v134)(v141, 1, v135);
  if (result != 1)
  {
    sub_1002D5640(v141, v138 + v139, type metadata accessor for HostedRoutingSession);
LABEL_22:
    v142 = v627;
    v143 = v679;
    v691[0] = v624;
    sub_1002E6D98(v138, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession);
    v144 = v691[0];
    v145 = v685;

    v146 = v680;
    sub_1002E3040(v144, v682, v145, v143);
    v147 = v146;
    if (v137(v143, 1, v135) == 1)
    {

      sub_1000038A4(v143, &qword_100523620, &unk_1004511D0);
      v123 = type metadata accessor for InternalRoutingError();
      sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      v125 = v148;
      v126 = &enum case for InternalRoutingError.sessionNotFound(_:);
      goto LABEL_16;
    }

    v679 = v137;
    v680 = v10;
    v687 = v144;
    sub_1002D5640(v143, v142, type metadata accessor for HostedRoutingSession);
    v149 = sub_100261164();
    v150 = v626;

    v151 = v674;
    v152 = v150;
    v153 = v147;
    sub_1002E33C8(v149, v768, v152, v674);
    v154 = v147;

    if ((*(v681 + 48))(v151, 1, v676) == 1)
    {

      sub_1000038A4(v151, &qword_100523C18, &qword_100451AF0);
      v155 = type metadata accessor for InternalRoutingError();
      sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v155 - 8) + 104))(v156, enum case for InternalRoutingError.itemNotFound(_:), v155);
      swift_willThrow();
LABEL_29:
      sub_1002D5710(v142, type metadata accessor for HostedRoutingSession);
      return v10;
    }

    v157 = v675;
    sub_1002D5640(v151, v675, type metadata accessor for HostedRoutingItem);
    if (*(&v142->isa + v135[15]) == 1)
    {

      v158 = type metadata accessor for InternalRoutingError();
      sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v158 - 8) + 104))(v159, enum case for InternalRoutingError.sessionRequiresAuthorization(_:), v158);
      swift_willThrow();
      v160 = v157;
LABEL_28:
      sub_1002D5710(v160, type metadata accessor for HostedRoutingItem);
      goto LABEL_29;
    }

    if (*(&v142->isa + v135[14]) == 1 && sub_100032ED8())
    {

      v161 = type metadata accessor for InternalRoutingError();
      sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v161 - 8) + 104))(v162, enum case for InternalRoutingError.invalidAction(_:), v161);
      swift_willThrow();
      v160 = v675;
      goto LABEL_28;
    }

    v163 = v675;
    if (sub_100037908())
    {
      v164 = v663;
      sub_10001D9AC(v142 + v135[7], v663, &qword_100523640, qword_100451520);
      v165 = (*(v664 + 48))(v164, 1, v665);
      v166 = v683;
      if (v165 == 1)
      {
        v167 = v142;
        sub_1000038A4(v164, &qword_100523640, qword_100451520);
        v168 = v669;
LABEL_59:
        v221 = sub_100028D40();
        (*(v166 + 16))(v168, v221, v686);
        v222 = v685;
        swift_bridgeObjectRetain_n();
        v223 = v625;
        swift_bridgeObjectRetain_n();
        v224 = Logger.logObject.getter();
        v225 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v224, v225))
        {
          v226 = swift_slowAlloc();
          v691[0] = swift_slowAlloc();
          *v226 = 136315650;
          v227 = _typeName(_:qualified:)();
          v229 = sub_10002C9C8(v227, v228, v691);

          *(v226 + 4) = v229;
          *(v226 + 12) = 2082;

          v230 = sub_10002C9C8(v623, v223, v691);

          *(v226 + 14) = v230;
          swift_bridgeObjectRelease_n();
          *(v226 + 22) = 2082;
          v167 = v627;

          v10 = sub_10002C9C8(v682, v222, v691);

          *(v226 + 24) = v10;

          swift_bridgeObjectRelease_n();

          _os_log_impl(&_mh_execute_header, v224, v225, "[%s] Item: %{public}s, is pull handoff item but session: %{public}s has no content", v226, 0x20u);
          swift_arrayDestroy();

          (*(v683 + 8))(v669, v686);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          v231 = *(v166 + 8);
          v10 = v166 + 8;
          v231(v168, v686);
        }

        v232 = type metadata accessor for InternalRoutingError();
        sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
        swift_allocError();
        (*(*(v232 - 8) + 104))(v233, enum case for InternalRoutingError.invalidAction(_:), v232);
        swift_willThrow();
        sub_1002D5710(v675, type metadata accessor for HostedRoutingItem);
        sub_1002D5710(v167, type metadata accessor for HostedRoutingSession);
        return v10;
      }

      v169 = v656;
      sub_1002D5640(v164, v656, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
      v176 = v169[1];
      v177 = v675;
      v168 = v669;
      if (!v176)
      {
        v167 = v142;
        sub_1002D5710(v169, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
        goto LABEL_59;
      }

      v674 = v153;
      v178 = *v169;

      v179 = v668;
      sub_1002D56A8(v177, v668, type metadata accessor for HostedRoutingItem);
      v180 = swift_allocObject();
      v181 = v685;
      v180[2] = v682;
      v180[3] = v181;
      v182 = v625;
      v180[4] = v623;
      v180[5] = v182;
      type metadata accessor for RoutingInteraction.Action.HandoffContext(0);
      v183 = sub_10025FAC0(v169[6]);
      v180[6] = sub_10026DB30(v183, v184, v178, v176);
      v730[0] = v180;
      memset(&v730[1], 0, 24);
      v731 = 6;
      sub_100272B38(v730, v692);
      v185 = v667;
      sub_1002D56A8(v179, v667, type metadata accessor for HostedRoutingItem);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for RoutingDecisionEngine.Decision(0);
      v10 = swift_allocObject();
      sub_1002D5640(v185, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
      v186 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
      v187 = v692[1];
      *v186 = v692[0];
      *(v186 + 16) = v187;
      *(v186 + 32) = v692[2];
      *(v186 + 48) = v693;
      sub_1002D5710(v179, type metadata accessor for HostedRoutingItem);
      sub_1002D5710(v177, type metadata accessor for HostedRoutingItem);
      sub_1002D5710(v627, type metadata accessor for HostedRoutingSession);
      v175 = type metadata accessor for HostedRoutingSession.NowPlayingInfo;
LABEL_40:
      sub_1002D5710(v169, v175);
      return v10;
    }

    v169 = v142;
    v170 = sub_1002588CC();
    v10 = v683;
    if (v170)
    {

      v171 = v668;
      sub_1002D56A8(v163, v668, type metadata accessor for HostedRoutingItem);
      v732[0] = v623;
      v732[1] = v625;
      v732[2] = v682;
      v732[3] = v685;
      v733 = 3;
      sub_100272B38(v732, v694);
      v172 = v667;
      sub_1002D56A8(v171, v667, type metadata accessor for HostedRoutingItem);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for RoutingDecisionEngine.Decision(0);
      v10 = swift_allocObject();
      sub_1002D5640(v172, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
      v173 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
      v174 = v694[1];
      *v173 = v694[0];
      *(v173 + 16) = v174;
      *(v173 + 32) = v694[2];
      *(v173 + 48) = v695;
      sub_1002D5710(v171, type metadata accessor for HostedRoutingItem);
      sub_1002D5710(v163, type metadata accessor for HostedRoutingItem);
      v175 = type metadata accessor for HostedRoutingSession;
      goto LABEL_40;
    }

    v188 = v657;
    RoutingSessionConfiguration.context.getter();
    v189 = sub_1000307D0();
    (*(v658 + 8))(v188, v659);
    if (v189)
    {
      v674 = v153;
      v190 = sub_100261164();
      v191 = v676;
      v768 = *(v190 + 16);
      if (v768)
      {
        v192 = 0;
        v678 = _swiftEmptyArrayStorage;
        v193 = v672;
        while (v192 < *(v190 + 16))
        {
          v194 = (*(v681 + 80) + 32) & ~*(v681 + 80);
          v195 = *(v681 + 72);
          sub_1002D56A8(v190 + v194 + v195 * v192, v193, type metadata accessor for HostedRoutingItem);
          if (*(&v193->isa + *(v191 + 36)) == 1 && (v196 = *(&v672->isa + *(v191 + 44)), LOBYTE(v689) = *sub_10025774C(), v688 = v196, sub_100248690(), v197 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v193 = v672, (v197 & 1) != 0))
          {
            sub_1002D5640(v672, v671, type metadata accessor for HostedRoutingItem);
            v198 = v678;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v200 = v198;
            v691[0] = v198;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10002A42C(0, *(v198 + 16) + 1, 1);
              v193 = v672;
              v200 = v691[0];
            }

            v202 = *(v200 + 16);
            v201 = *(v200 + 24);
            v203 = (v202 + 1);
            if (v202 >= v201 >> 1)
            {
              v678 = (v202 + 1);
              sub_10002A42C((v201 > 1), v202 + 1, 1);
              v203 = v678;
              v193 = v672;
              v200 = v691[0];
            }

            *(v200 + 16) = v203;
            v678 = v200;
            sub_1002D5640(v671, v200 + v194 + v202 * v195, type metadata accessor for HostedRoutingItem);
            v191 = v676;
          }

          else
          {
            sub_1002D5710(v193, type metadata accessor for HostedRoutingItem);
          }

          v192 = (v192 + 1);
          v135 = v684;
          if (v768 == v192)
          {
            goto LABEL_77;
          }
        }

        __break(1u);
        goto LABEL_210;
      }

      v678 = _swiftEmptyArrayStorage;
LABEL_77:

      v673 = v678[2];

      v250 = sub_100261164();
      v768 = *(v250 + 16);
      if (v768)
      {
        v251 = 0;
        v677 = _swiftEmptyArrayStorage;
        v678 = v250;
        v193 = v662;
        while (v251 < *(v250 + 16))
        {
          v252 = (*(v681 + 80) + 32) & ~*(v681 + 80);
          v253 = *(v681 + 72);
          sub_1002D56A8(v250 + v252 + v253 * v251, v193, type metadata accessor for HostedRoutingItem);
          v254 = v193;
          if (sub_100258854() && (v255 = *(&v193->isa + *(v191 + 44)), LOBYTE(v689) = *sub_10025774C(), v688 = v255, sub_100248690(), (dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) != 0))
          {
            sub_1002D5640(v254, v670, type metadata accessor for HostedRoutingItem);
            v256 = v677;
            v257 = swift_isUniquelyReferenced_nonNull_native();
            v258 = v256;
            v691[0] = v256;
            if (v257)
            {
              v193 = v254;
            }

            else
            {
              sub_10002A42C(0, v256[2] + 1, 1);
              v193 = v662;
              v258 = v691[0];
            }

            v260 = v258[2];
            v259 = v258[3];
            if (v260 >= v259 >> 1)
            {
              sub_10002A42C((v259 > 1), v260 + 1, 1);
              v193 = v662;
              v258 = v691[0];
            }

            v258[2] = v260 + 1;
            v677 = v258;
            sub_1002D5640(v670, v258 + v252 + v260 * v253, type metadata accessor for HostedRoutingItem);
            v191 = v676;
          }

          else
          {
            sub_1002D5710(v254, type metadata accessor for HostedRoutingItem);
            v193 = v254;
          }

          v251 = (v251 + 1);
          v135 = v684;
          v250 = v678;
          if (v768 == v251)
          {
            goto LABEL_91;
          }
        }

LABEL_210:
        __break(1u);
        goto LABEL_211;
      }

      v677 = _swiftEmptyArrayStorage;
LABEL_91:

      v261 = v677[2];

      if (sub_100031908(v262))
      {
        v263 = *(v675 + *(v676 + 44));
        LOBYTE(v691[0]) = *sub_100257758();
        LOBYTE(v689) = v263;
        sub_100248690();
        if ((dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) != 0 && !v673 && !v261)
        {
          v264 = v647;
          sub_10001D9AC(v169 + v135[7], v647, &qword_100523640, qword_100451520);
          if ((*(v664 + 48))(v264, 1, v665) == 1)
          {
            sub_1000038A4(v264, &qword_100523640, qword_100451520);
LABEL_173:
            v509 = v686;
            v510 = sub_100028D40();
            v511 = v648;
            (*(v10 + 16))(v648, v510, v509);
            v512 = v625;
            swift_bridgeObjectRetain_n();
            v513 = Logger.logObject.getter();
            v514 = static os_log_type_t.default.getter();
            v515 = os_log_type_enabled(v513, v514);
            v516 = v675;
            if (v515)
            {
              v517 = swift_slowAlloc();
              v691[0] = swift_slowAlloc();
              *v517 = 136315394;
              v518 = _typeName(_:qualified:)();
              v520 = sub_10002C9C8(v518, v519, v691);

              *(v517 + 4) = v520;
              v512 = v625;
              *(v517 + 12) = 2082;

              v521 = v623;
              v522 = sub_10002C9C8(v623, v512, v691);

              *(v517 + 14) = v522;
              swift_bridgeObjectRelease_n();

              _os_log_impl(&_mh_execute_header, v513, v514, "[%s] Item: %{public}s, selected in local session, is .remoteControllable, publisher does not support handoff -> .set", v517, 0x16u);
              swift_arrayDestroy();

              (*(v683 + 8))(v648, v686);
              v523 = v667;
              v524 = v668;
            }

            else
            {

              swift_bridgeObjectRelease_n();

              (*(v10 + 8))(v511, v509);
              v523 = v667;
              v524 = v668;
              v521 = v623;
            }

            sub_1002D56A8(v516, v524, type metadata accessor for HostedRoutingItem);
            v742[0] = v521;
            v742[1] = v512;
            v742[2] = v682;
            v742[3] = v685;
            v743 = 2;
            sub_100272B38(v742, v716);
            sub_1002D56A8(v524, v523, type metadata accessor for HostedRoutingItem);
            swift_storeEnumTagMultiPayload();
            type metadata accessor for RoutingDecisionEngine.Decision(0);
            v10 = swift_allocObject();
            sub_1002D5640(v523, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
            v525 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
            v526 = v716[1];
            *v525 = v716[0];
            *(v525 + 16) = v526;
            *(v525 + 32) = v716[2];
            *(v525 + 48) = v717;
            sub_1002D5710(v524, type metadata accessor for HostedRoutingItem);
            v445 = v516;
            goto LABEL_177;
          }

          v376 = v264;
          v377 = v644;
          sub_1002D5640(v376, v644, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
          v378 = *(v377 + 48);
          v379 = *(v377 + 56) | (*(v377 + 60) << 32);
          if (!sub_10025FA74(v378, v379))
          {
            sub_1002D5710(v377, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
            goto LABEL_173;
          }

          v380 = *(v377 + 8);
          if (!v380)
          {
            v547 = sub_100028D40();
            v548 = v10;
            (*(v10 + 16))(v635, v547, v686);
            swift_bridgeObjectRetain_n();
            v549 = Logger.logObject.getter();
            v550 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v549, v550))
            {
              v551 = swift_slowAlloc();
              v691[0] = swift_slowAlloc();
              *v551 = 136315394;
              v552 = _typeName(_:qualified:)();
              v554 = sub_10002C9C8(v552, v553, v691);

              *(v551 + 4) = v554;
              *(v551 + 12) = 2082;
              v555 = v625;

              v556 = sub_10002C9C8(v623, v555, v691);

              *(v551 + 14) = v556;
              swift_bridgeObjectRelease_n();

              _os_log_impl(&_mh_execute_header, v549, v550, "[%s] Item: %{public}s, selected in local session, is .remoteControllable, has no handoff content -> .set", v551, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            (*(v548 + 8))(v635, v686);
            v581 = v675;
            v582 = v668;
            sub_1002D56A8(v675, v668, type metadata accessor for HostedRoutingItem);
            v740[0] = v623;
            v740[1] = v625;
            v740[2] = v682;
            v740[3] = v685;
            v741 = 2;
            sub_100272B38(v740, v714);
            v583 = v667;
            sub_1002D56A8(v582, v667, type metadata accessor for HostedRoutingItem);
            swift_storeEnumTagMultiPayload();
            type metadata accessor for RoutingDecisionEngine.Decision(0);
            v10 = swift_allocObject();
            sub_1002D5640(v583, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
            v584 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
            v585 = v714[1];
            *v584 = v714[0];
            *(v584 + 16) = v585;
            *(v584 + 32) = v714[2];
            *(v584 + 48) = v715;
            sub_1002D5710(v582, type metadata accessor for HostedRoutingItem);
            sub_1002D5710(v581, type metadata accessor for HostedRoutingItem);
            v586 = v627;
            goto LABEL_208;
          }

          v681 = *v377;
          v381 = v625;

          v768 = v380;

          v382 = v637;
          v383 = v381;
          v384 = v674;
          sub_1002E31F8(v687, v623, v383, v637);
          v674 = v384;
          if (v679(v382, 1, v684) == 1)
          {
            sub_1000038A4(v637, &qword_100523620, &unk_1004511D0);
            v385 = sub_100028D40();
            (*(v683 + 16))(v633, v385, v686);
            swift_bridgeObjectRetain_n();
            v386 = Logger.logObject.getter();
            v387 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v386, v387))
            {
              v388 = swift_slowAlloc();
              v691[0] = swift_slowAlloc();
              *v388 = 136315394;
              v389 = _typeName(_:qualified:)();
              v391 = sub_10002C9C8(v389, v390, v691);

              *(v388 + 4) = v391;
              *(v388 + 12) = 2082;
              v392 = v625;

              v393 = sub_10002C9C8(v623, v392, v691);

              *(v388 + 14) = v393;
              swift_bridgeObjectRelease_n();

              _os_log_impl(&_mh_execute_header, v386, v387, "[%s] Item: %{public}s, selected in local session, is .remoteControllable, has handoff content, no existing containing session -> .handoff", v388, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            (*(v683 + 8))(v633, v686);
            type metadata accessor for RoutingInteraction.Action.HandoffContext(0);
            v589 = sub_10025FAC0(v378);
            v591 = sub_10026DB30(v589, v590, v681, v768);
            v418 = v644;
            v592 = v631;
            RoutingSession.NowPlayingInfo.PlaybackInfo.playbackState.getter();
            v593 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
            (*(*(v593 - 8) + 56))(v592, 0, 1, v593);
            (*(*v591 + 192))(v592);
            v594 = v675;
            v595 = v668;
            sub_1002D56A8(v675, v668, type metadata accessor for HostedRoutingItem);
            v596 = swift_allocObject();
            v597 = v627;
            isa = v627[1].isa;
            v596[2] = v627->isa;
            v596[3] = isa;
            v599 = v625;
            v596[4] = v623;
            v596[5] = v599;
            v596[6] = v591;
            v738[0] = v596;
            memset(&v738[1], 0, 24);
            v739 = 6;

            sub_100272B38(v738, v712);
            v600 = v667;
            sub_1002D56A8(v595, v667, type metadata accessor for HostedRoutingItem);
            swift_storeEnumTagMultiPayload();
            type metadata accessor for RoutingDecisionEngine.Decision(0);
            v10 = swift_allocObject();
            sub_1002D5640(v600, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
            v601 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
            v602 = v712[1];
            *v601 = v712[0];
            *(v601 + 16) = v602;
            *(v601 + 32) = v712[2];
            *(v601 + 48) = v713;
            sub_1002D5710(v595, type metadata accessor for HostedRoutingItem);

            sub_1002D5710(v594, type metadata accessor for HostedRoutingItem);
            v603 = v597;
LABEL_218:
            sub_1002D5710(v603, type metadata accessor for HostedRoutingSession);
            v537 = type metadata accessor for HostedRoutingSession.NowPlayingInfo;
LABEL_185:
            v538 = v537;
            p_isa = &v418->isa;
LABEL_195:
            sub_1002D5710(p_isa, v538);
            return v10;
          }

          v557 = v632;
          sub_1002D5640(v637, v632, type metadata accessor for HostedRoutingSession);
          if (*(v557 + *(v684 + 36)) != 1 || !sub_10025FA68(v378, v379))
          {
            v566 = sub_100028D40();
            (*(v683 + 16))(v630, v566, v686);
            swift_bridgeObjectRetain_n();
            v567 = Logger.logObject.getter();
            v568 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v567, v568))
            {
              v569 = swift_slowAlloc();
              v691[0] = swift_slowAlloc();
              *v569 = 136315394;
              v570 = _typeName(_:qualified:)();
              v572 = sub_10002C9C8(v570, v571, v691);

              *(v569 + 4) = v572;
              *(v569 + 12) = 2082;
              v573 = v625;

              v574 = sub_10002C9C8(v623, v573, v691);

              *(v569 + 14) = v574;
              swift_bridgeObjectRelease_n();

              _os_log_impl(&_mh_execute_header, v567, v568, "[%s] Item: %{public}s, selected in local session, is .remoteControllable, has handoff content, existing containing session -> .handoff", v569, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            (*(v683 + 8))(v630, v686);
            type metadata accessor for RoutingInteraction.Action.HandoffContext(0);
            v604 = sub_10025FAC0(v378);
            v606 = sub_10026DB30(v604, v605, v681, v768);
            v418 = v644;
            v607 = v631;
            RoutingSession.NowPlayingInfo.PlaybackInfo.playbackState.getter();
            v608 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
            (*(*(v608 - 8) + 56))(v607, 0, 1, v608);
            (*(*v606 + 192))(v607);
            v609 = v675;
            v610 = v668;
            sub_1002D56A8(v675, v668, type metadata accessor for HostedRoutingItem);
            v611 = swift_allocObject();
            v612 = v627;
            v613 = v627[1].isa;
            v611[2] = v627->isa;
            v611[3] = v613;
            v614 = v625;
            v611[4] = v623;
            v611[5] = v614;
            v611[6] = v606;
            v736[0] = v611;
            memset(&v736[1], 0, 24);
            v737 = 6;

            sub_100272B38(v736, v708);
            v615 = v667;
            sub_1002D56A8(v610, v667, type metadata accessor for HostedRoutingItem);
            swift_storeEnumTagMultiPayload();
            type metadata accessor for RoutingDecisionEngine.Decision(0);
            v10 = swift_allocObject();
            sub_1002D5640(v615, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
            v616 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
            v617 = v708[1];
            *v616 = v708[0];
            *(v616 + 16) = v617;
            *(v616 + 32) = v708[2];
            *(v616 + 48) = v709;
            sub_1002D5710(v610, type metadata accessor for HostedRoutingItem);

            sub_1002D5710(v632, type metadata accessor for HostedRoutingSession);
            sub_1002D5710(v609, type metadata accessor for HostedRoutingItem);
            v603 = v612;
            goto LABEL_218;
          }

          v558 = sub_100028D40();
          (*(v683 + 16))(v629, v558, v686);
          swift_bridgeObjectRetain_n();
          v238 = Logger.logObject.getter();
          v559 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v238, v559))
          {
            v560 = swift_slowAlloc();
            v691[0] = swift_slowAlloc();
            *v560 = 136315394;
            v561 = _typeName(_:qualified:)();
            v563 = sub_10002C9C8(v561, v562, v691);

            *(v560 + 4) = v563;
            *(v560 + 12) = 2082;
            v564 = v625;

            v565 = sub_10002C9C8(v623, v564, v691);

            *(v560 + 14) = v565;
            swift_bridgeObjectRelease_n();

            _os_log_impl(&_mh_execute_header, v238, v559, "[%s] Item: %{public}s, selected in local session, is .remoteControllable, has handoff content, existing containing session, push disabled -> .set", v560, 0x16u);
            swift_arrayDestroy();

LABEL_221:
            (*(v683 + 8))(v629, v686);
            v618 = v675;
            v619 = v668;
            sub_1002D56A8(v675, v668, type metadata accessor for HostedRoutingItem);
            v734[0] = v623;
            v734[1] = v625;
            v734[2] = v682;
            v734[3] = v685;
            v735 = 2;
            sub_100272B38(v734, v710);
            v620 = v667;
            sub_1002D56A8(v619, v667, type metadata accessor for HostedRoutingItem);
            swift_storeEnumTagMultiPayload();
            type metadata accessor for RoutingDecisionEngine.Decision(0);
            v10 = swift_allocObject();
            sub_1002D5640(v620, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
            v621 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
            v622 = v710[1];
            *v621 = v710[0];
            *(v621 + 16) = v622;
            *(v621 + 32) = v710[2];
            *(v621 + 48) = v711;
            sub_1002D5710(v619, type metadata accessor for HostedRoutingItem);
            sub_1002D5710(v632, type metadata accessor for HostedRoutingSession);
            sub_1002D5710(v618, type metadata accessor for HostedRoutingItem);
            v586 = v627;
LABEL_208:
            sub_1002D5710(v586, type metadata accessor for HostedRoutingSession);
            v538 = type metadata accessor for HostedRoutingSession.NowPlayingInfo;
            p_isa = &v644->isa;
            goto LABEL_195;
          }

LABEL_220:

          swift_bridgeObjectRelease_n();

          goto LABEL_221;
        }
      }

      v266 = v675;
      v265 = v676;
      v267 = v625;
      if (*(v675 + *(v676 + 36)) == 1)
      {
        v268 = v625;
        v269 = sub_100261164();
        v270 = v674;
        v271 = sub_1002E6EF4(v269);
        v674 = v270;

        sub_1001BC5A8(&unk_100524EB0, &unk_1004584A0);
        v272 = (*(v681 + 80) + 32) & ~*(v681 + 80);
        v273 = swift_allocObject();
        *(v273 + 16) = xmmword_10044EC70;
        sub_1002D56A8(v266, v273 + v272, type metadata accessor for HostedRoutingItem);
        v274 = sub_10001ECB8(v271, v273);

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v275 = sub_100028D40();
        v276 = *(v10 + 16);
        if (v274)
        {
          v277 = v649;
          v278 = v686;
          v276(v649, v275, v686);
          v279 = v685;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v280 = Logger.logObject.getter();
          v281 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v280, v281))
          {
            v282 = swift_slowAlloc();
            v691[0] = swift_slowAlloc();
            *v282 = 136315650;
            v283 = _typeName(_:qualified:)();
            v285 = sub_10002C9C8(v283, v284, v691);

            *(v282 + 4) = v285;
            *(v282 + 12) = 2082;

            v286 = sub_10002C9C8(v623, v268, v691);

            *(v282 + 14) = v286;
            swift_bridgeObjectRelease_n();
            *(v282 + 22) = 2082;

            v10 = sub_10002C9C8(v682, v279, v691);

            *(v282 + 24) = v10;

            swift_bridgeObjectRelease_n();

            _os_log_impl(&_mh_execute_header, v280, v281, "[%s] Item: %{public}s, selected in session: %{public}s, is sole picked item -> no-op", v282, 0x20u);
            swift_arrayDestroy();

            (*(v683 + 8))(v649, v686);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();

            v441 = *(v10 + 8);
            v10 += 8;
            v441(v277, v278);
          }

          goto LABEL_154;
        }

        v329 = v650;
        v330 = v686;
        v276(v650, v275, v686);
        v331 = v685;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v332 = Logger.logObject.getter();
        v333 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v332, v333))
        {
          v334 = swift_slowAlloc();
          v768 = swift_slowAlloc();
          v691[0] = v768;
          *v334 = 136315650;
          v335 = _typeName(_:qualified:)();
          v337 = sub_10002C9C8(v335, v336, v691);

          *(v334 + 4) = v337;
          *(v334 + 12) = 2082;

          v338 = sub_10002C9C8(v623, v625, v691);

          *(v334 + 14) = v338;
          swift_bridgeObjectRelease_n();
          *(v334 + 22) = 2082;
          v268 = v625;

          v339 = v682;
          v340 = sub_10002C9C8(v682, v331, v691);

          *(v334 + 24) = v340;
          swift_bridgeObjectRelease_n();

          _os_log_impl(&_mh_execute_header, v332, v333, "[%s] Item: %{public}s, selected in session: %{public}s, is picked -> .remove", v334, 0x20u);
          swift_arrayDestroy();

          (*(v683 + 8))(v650, v686);
          v341 = v667;
          v342 = v668;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          (*(v10 + 8))(v329, v330);
          v341 = v667;
          v342 = v668;
          v339 = v682;
        }

        v205 = v675;
        sub_1002D56A8(v675, v342, type metadata accessor for HostedRoutingItem);
        v744[0] = v623;
        v744[1] = v268;
        v744[2] = v339;
        v744[3] = v685;
        v745 = 1;
        sub_100272B38(v744, v718);
        sub_1002D56A8(v342, v341, type metadata accessor for HostedRoutingItem);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for RoutingDecisionEngine.Decision(0);
        v10 = swift_allocObject();
        sub_1002D5640(v341, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
        v361 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
        v444 = v718[1];
        *v361 = v718[0];
        *(v361 + 16) = v444;
        *(v361 + 32) = v718[2];
        v363 = v719;
LABEL_157:
        *(v361 + 48) = v363;
        sub_1002D5710(v342, type metadata accessor for HostedRoutingItem);
        v445 = v205;
LABEL_177:
        sub_1002D5710(v445, type metadata accessor for HostedRoutingItem);
        sub_1002D5710(v627, type metadata accessor for HostedRoutingSession);
        return v10;
      }

      v287 = *(v675 + *(v676 + 44));
      v684 = sub_10025774C();
      LOBYTE(v691[0]) = *v684;
      LOBYTE(v689) = v287;
      v288 = sub_100248690();
      if (dispatch thunk of SetAlgebra.isSuperset(of:)())
      {
        v680 = v288;
        result = sub_100261164();
        v289 = result;
        v290 = *(result + 16);
        if (v290)
        {
          v291 = 0;
          v768 = _swiftEmptyArrayStorage;
          v292 = v653;
          while (v291 < *(v289 + 16))
          {
            v294 = (*(v681 + 80) + 32) & ~*(v681 + 80);
            v295 = *(v681 + 72);
            sub_1002D56A8(v289 + v294 + v295 * v291, v292, type metadata accessor for HostedRoutingItem);
            if (*(v292 + *(v265 + 36)) != 1 || (v296 = *(v292 + *(v265 + 44)), LOBYTE(v689) = *v684, v688 = v296, (dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) != 0))
            {
              result = sub_1002D5710(v292, type metadata accessor for HostedRoutingItem);
            }

            else
            {
              sub_1002D5640(v292, v655, type metadata accessor for HostedRoutingItem);
              v297 = v768;
              v298 = swift_isUniquelyReferenced_nonNull_native();
              v691[0] = v297;
              if ((v298 & 1) == 0)
              {
                sub_10002A42C(0, v297[2].isa + 1, 1);
                v297 = v691[0];
              }

              v300 = v297[2].isa;
              v299 = v297[3].isa;
              if (v300 >= v299 >> 1)
              {
                sub_10002A42C((v299 > 1), v300 + 1, 1);
                v297 = v691[0];
              }

              v297[2].isa = (v300 + 1);
              v768 = v297;
              result = sub_1002D5640(v655, v297 + v294 + v300 * v295, type metadata accessor for HostedRoutingItem);
              v265 = v676;
              v292 = v653;
            }

            ++v291;
            v293 = v686;
            if (v290 == v291)
            {
              goto LABEL_165;
            }
          }

          __break(1u);
          goto LABEL_223;
        }

        v768 = _swiftEmptyArrayStorage;
        v293 = v686;
LABEL_165:

        v476 = v768[2].isa;
        v477 = sub_100028D40();
        v478 = v683;
        v479 = *(v683 + 16);
        if (v476)
        {
          v480 = v643;
          v479(v643, v477, v293);
          v481 = v685;
          swift_bridgeObjectRetain_n();
          v482 = v625;
          swift_bridgeObjectRetain_n();
          v483 = Logger.logObject.getter();
          v484 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v483, v484))
          {
            v485 = swift_slowAlloc();
            v691[0] = swift_slowAlloc();
            *v485 = 136315650;
            v486 = _typeName(_:qualified:)();
            v488 = sub_10002C9C8(v486, v487, v691);

            *(v485 + 4) = v488;
            *(v485 + 12) = 2082;

            v489 = sub_10002C9C8(v623, v625, v691);

            *(v485 + 14) = v489;
            swift_bridgeObjectRelease_n();
            *(v485 + 22) = 2082;

            v490 = v682;
            v491 = sub_10002C9C8(v682, v481, v691);

            *(v485 + 24) = v491;
            v482 = v625;
            swift_bridgeObjectRelease_n();

            _os_log_impl(&_mh_execute_header, v483, v484, "[%s] Item: %{public}s, is not picked in session: %{public}s, session has existing non-groupable items -> .set", v485, 0x20u);
            swift_arrayDestroy();

            (*(v683 + 8))(v643, v686);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();

            (*(v478 + 8))(v480, v293);
            v490 = v682;
          }

          v527 = v675;
          v528 = v668;
          sub_1002D56A8(v675, v668, type metadata accessor for HostedRoutingItem);
          v748[0] = v623;
          v748[1] = v482;
          v748[2] = v490;
          v748[3] = v481;
          v749 = 2;
          sub_100272B38(v748, v726);
          v529 = v667;
          sub_1002D56A8(v528, v667, type metadata accessor for HostedRoutingItem);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for RoutingDecisionEngine.Decision(0);
          v10 = swift_allocObject();
          sub_1002D5640(v529, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
          v530 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
          v531 = v726[1];
          *v530 = v726[0];
          *(v530 + 16) = v531;
          *(v530 + 32) = v726[2];
          v532 = v727;
        }

        else
        {
          v479(v638, v477, v293);
          v492 = v685;
          swift_bridgeObjectRetain_n();
          v493 = v625;
          swift_bridgeObjectRetain_n();
          v494 = Logger.logObject.getter();
          v495 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v494, v495))
          {
            v496 = swift_slowAlloc();
            v684 = swift_slowAlloc();
            v691[0] = v684;
            *v496 = 136315650;
            v497 = _typeName(_:qualified:)();
            v499 = sub_10002C9C8(v497, v498, v691);

            *(v496 + 4) = v499;
            *(v496 + 12) = 2082;

            v500 = sub_10002C9C8(v623, v493, v691);

            *(v496 + 14) = v500;
            swift_bridgeObjectRelease_n();
            *(v496 + 22) = 2082;

            v501 = v682;
            v502 = sub_10002C9C8(v682, v492, v691);

            *(v496 + 24) = v502;
            swift_bridgeObjectRelease_n();

            _os_log_impl(&_mh_execute_header, v494, v495, "[%s] Item: %{public}s, is not picked in session: %{public}s -> .add", v496, 0x20u);
            swift_arrayDestroy();

            (*(v683 + 8))(v638, v686);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();

            (*(v683 + 8))(v638, v686);
            v501 = v682;
          }

          v527 = v675;
          v528 = v668;
          sub_1002D56A8(v675, v668, type metadata accessor for HostedRoutingItem);
          v746[0] = v623;
          v746[1] = v493;
          v746[2] = v501;
          v746[3] = v492;
          v747 = 0;
          sub_100272B38(v746, v728);
          v545 = v667;
          sub_1002D56A8(v528, v667, type metadata accessor for HostedRoutingItem);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for RoutingDecisionEngine.Decision(0);
          v10 = swift_allocObject();
          sub_1002D5640(v545, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
          v530 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
          v546 = v728[1];
          *v530 = v728[0];
          *(v530 + 16) = v546;
          *(v530 + 32) = v728[2];
          v532 = v729;
        }

        goto LABEL_193;
      }

      v343 = sub_100257764();
      LOBYTE(v691[0]) = *v343;
      LOBYTE(v689) = v287;
      if (dispatch thunk of SetAlgebra.isSuperset(of:)())
      {
        v344 = sub_100261164();
        v345 = *(v344 + 16);
        if (v345)
        {
          v346 = v344 + ((*(v681 + 80) + 32) & ~*(v681 + 80));
          v347 = *(v681 + 72);
          while (1)
          {
            if (*(v346 + *(v676 + 36)))
            {
              v348 = *(v346 + *(v676 + 44));
              LOBYTE(v691[0]) = *v343;
              LOBYTE(v689) = v348;
              if ((dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) == 0)
              {
                break;
              }
            }

            v346 += v347;
            if (!--v345)
            {
              goto LABEL_162;
            }
          }

          v169 = v627;

          v349 = sub_100028D40();
          (*(v683 + 16))(v634, v349, v686);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v193 = Logger.logObject.getter();
          v350 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v193, v350))
          {
            v351 = swift_slowAlloc();
            v691[0] = swift_slowAlloc();
            *v351 = 136315650;
            v352 = _typeName(_:qualified:)();
            v354 = sub_10002C9C8(v352, v353, v691);

            *(v351 + 4) = v354;
            *(v351 + 12) = 2082;
            v355 = v625;

            v356 = sub_10002C9C8(v623, v355, v691);

            *(v351 + 14) = v356;
            swift_bridgeObjectRelease_n();
            *(v351 + 22) = 2082;
            v357 = v685;

            v358 = sub_10002C9C8(v682, v357, v691);

            *(v351 + 24) = v358;
            swift_bridgeObjectRelease_n();

            _os_log_impl(&_mh_execute_header, v193, v350, "[%s] Item: %{public}s, is not picked in session: %{public}s, supports split, session has existing non-split items -> .set", v351, 0x20u);
            swift_arrayDestroy();

LABEL_212:
            (*(v683 + 8))(v634, v686);
            v575 = v675;
            v576 = v668;
            sub_1002D56A8(v675, v668, type metadata accessor for HostedRoutingItem);
            v752[0] = v623;
            v752[1] = v625;
            v752[2] = v682;
            v752[3] = v685;
            v753 = 2;
            sub_100272B38(v752, v720);
            v587 = v667;
            sub_1002D56A8(v576, v667, type metadata accessor for HostedRoutingItem);
            swift_storeEnumTagMultiPayload();
            type metadata accessor for RoutingDecisionEngine.Decision(0);
            v10 = swift_allocObject();
            sub_1002D5640(v587, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
            v578 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
            v588 = v720[1];
            *v578 = v720[0];
            *(v578 + 16) = v588;
            *(v578 + 32) = v720[2];
            v580 = v721;
LABEL_213:
            *(v578 + 48) = v580;
            sub_1002D5710(v576, type metadata accessor for HostedRoutingItem);
            sub_1002D5710(v575, type metadata accessor for HostedRoutingItem);
            v538 = type metadata accessor for HostedRoutingSession;
            p_isa = v169;
            goto LABEL_195;
          }

LABEL_211:

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          goto LABEL_212;
        }

LABEL_162:

        v464 = sub_100028D40();
        v465 = v683;
        (*(v683 + 16))(v641, v464, v686);
        v466 = v685;
        swift_bridgeObjectRetain_n();
        v467 = v625;
        swift_bridgeObjectRetain_n();
        v468 = Logger.logObject.getter();
        v469 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v468, v469))
        {
          v470 = swift_slowAlloc();
          v768 = swift_slowAlloc();
          v691[0] = v768;
          *v470 = 136315650;
          v471 = _typeName(_:qualified:)();
          v473 = sub_10002C9C8(v471, v472, v691);

          *(v470 + 4) = v473;
          *(v470 + 12) = 2082;

          v474 = sub_10002C9C8(v623, v467, v691);

          *(v470 + 14) = v474;
          swift_bridgeObjectRelease_n();
          *(v470 + 22) = 2082;

          v475 = sub_10002C9C8(v682, v466, v691);

          *(v470 + 24) = v475;
          swift_bridgeObjectRelease_n();

          _os_log_impl(&_mh_execute_header, v468, v469, "[%s] Item: %{public}s, is not picked in session: %{public}s, supports split, session has only split items -> .add", v470, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        (*(v465 + 8))(v641, v686);
        v527 = v675;
        v528 = v668;
        sub_1002D56A8(v675, v668, type metadata accessor for HostedRoutingItem);
        v750[0] = v623;
        v750[1] = v467;
        v750[2] = v682;
        v750[3] = v466;
        v751 = 0;
        sub_100272B38(v750, v722);
        v543 = v667;
        sub_1002D56A8(v528, v667, type metadata accessor for HostedRoutingItem);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for RoutingDecisionEngine.Decision(0);
        v10 = swift_allocObject();
        sub_1002D5640(v543, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
        v530 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
        v544 = v722[1];
        *v530 = v722[0];
        *(v530 + 16) = v544;
        *(v530 + 32) = v722[2];
        v532 = v723;
        goto LABEL_193;
      }

      v446 = sub_100028D40();
      v447 = v639;
      v448 = v686;
      (*(v10 + 16))(v639, v446, v686);
      v449 = v685;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v450 = Logger.logObject.getter();
      v451 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v450, v451))
      {
        v452 = swift_slowAlloc();
        v691[0] = swift_slowAlloc();
        *v452 = 136315650;
        v453 = _typeName(_:qualified:)();
        v455 = sub_10002C9C8(v453, v454, v691);

        *(v452 + 4) = v455;
        *(v452 + 12) = 2082;

        v456 = sub_10002C9C8(v623, v625, v691);

        *(v452 + 14) = v456;
        swift_bridgeObjectRelease_n();
        *(v452 + 22) = 2082;
        v267 = v625;

        v457 = sub_10002C9C8(v682, v449, v691);

        *(v452 + 24) = v457;
        swift_bridgeObjectRelease_n();

        _os_log_impl(&_mh_execute_header, v450, v451, "[%s] Item: %{public}s, is not picked in session: %{public}s, not multi select or split -> .set", v452, 0x20u);
        swift_arrayDestroy();

        (*(v683 + 8))(v639, v448);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        (*(v10 + 8))(v447, v448);
      }

      v503 = v675;
      v504 = v668;
      sub_1002D56A8(v675, v668, type metadata accessor for HostedRoutingItem);
      v754[0] = v623;
      v754[1] = v267;
      v754[2] = v682;
      v754[3] = v449;
      v755 = 2;
      sub_100272B38(v754, v724);
      v540 = v667;
      sub_1002D56A8(v504, v667, type metadata accessor for HostedRoutingItem);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for RoutingDecisionEngine.Decision(0);
      v10 = swift_allocObject();
      sub_1002D5640(v540, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
      v506 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
      v541 = v724[1];
      *v506 = v724[0];
      *(v506 + 16) = v541;
      *(v506 + 32) = v724[2];
      v508 = v725;
      goto LABEL_188;
    }

    v205 = v675;
    v204 = v676;
    if (*(v675 + *(v676 + 36)) != 1)
    {
      v674 = v153;
      v234 = *(v675 + *(v676 + 44));
      v684 = sub_10025774C();
      LOBYTE(v691[0]) = *v684;
      LOBYTE(v689) = v234;
      v235 = sub_100248690();
      v236 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v237 = v625;
      if (v236)
      {
        v680 = v235;
        v238 = v627;
        v239 = sub_100261164();
        v240 = *(v239 + 16);
        if (!v240)
        {
          v768 = _swiftEmptyArrayStorage;
          v243 = v686;
LABEL_148:

          v408 = v768[2].isa;
          v409 = sub_100028D40();
          v410 = v683;
          v411 = *(v683 + 16);
          if (v408)
          {
            v412 = v646;
            v411(v646, v409, v243);
            v413 = v685;
            swift_bridgeObjectRetain_n();
            v414 = v625;
            swift_bridgeObjectRetain_n();
            v415 = Logger.logObject.getter();
            v416 = static os_log_type_t.default.getter();
            v417 = os_log_type_enabled(v415, v416);
            v418 = v627;
            if (v417)
            {
              v419 = swift_slowAlloc();
              v691[0] = swift_slowAlloc();
              *v419 = 136315650;
              v420 = _typeName(_:qualified:)();
              v422 = v418;
              v423 = sub_10002C9C8(v420, v421, v691);

              *(v419 + 4) = v423;
              v418 = v422;
              *(v419 + 12) = 2082;

              v424 = sub_10002C9C8(v623, v625, v691);

              *(v419 + 14) = v424;
              swift_bridgeObjectRelease_n();
              *(v419 + 22) = 2082;

              v425 = v682;
              v426 = sub_10002C9C8(v682, v413, v691);

              *(v419 + 24) = v426;
              v414 = v625;
              swift_bridgeObjectRelease_n();

              _os_log_impl(&_mh_execute_header, v415, v416, "[%s] Item: %{public}s, is not picked in session: %{public}s, not RC context, session has existing non-groupable items -> .set", v419, 0x20u);
              swift_arrayDestroy();

              (*(v683 + 8))(v646, v686);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();

              (*(v410 + 8))(v412, v243);
              v425 = v682;
            }

            v458 = v675;
            v459 = v668;
            sub_1002D56A8(v675, v668, type metadata accessor for HostedRoutingItem);
            v760[0] = v623;
            v760[1] = v414;
            v760[2] = v425;
            v760[3] = v413;
            v761 = 2;
            sub_100272B38(v760, v704);
            v460 = v667;
            sub_1002D56A8(v459, v667, type metadata accessor for HostedRoutingItem);
            swift_storeEnumTagMultiPayload();
            type metadata accessor for RoutingDecisionEngine.Decision(0);
            v10 = swift_allocObject();
            sub_1002D5640(v460, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
            v461 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
            v462 = v704[1];
            *v461 = v704[0];
            *(v461 + 16) = v462;
            *(v461 + 32) = v704[2];
            v463 = v705;
          }

          else
          {
            v427 = v640;
            v411(v640, v409, v243);
            v428 = v685;
            swift_bridgeObjectRetain_n();
            v429 = v625;
            swift_bridgeObjectRetain_n();
            v430 = Logger.logObject.getter();
            v431 = static os_log_type_t.default.getter();
            v432 = os_log_type_enabled(v430, v431);
            v418 = v627;
            if (v432)
            {
              v433 = swift_slowAlloc();
              v691[0] = swift_slowAlloc();
              *v433 = 136315650;
              v434 = _typeName(_:qualified:)();
              v436 = v418;
              v437 = sub_10002C9C8(v434, v435, v691);

              *(v433 + 4) = v437;
              v418 = v436;
              *(v433 + 12) = 2082;

              v438 = sub_10002C9C8(v623, v625, v691);

              *(v433 + 14) = v438;
              swift_bridgeObjectRelease_n();
              *(v433 + 22) = 2082;

              v439 = v682;
              v440 = sub_10002C9C8(v682, v428, v691);

              *(v433 + 24) = v440;
              v429 = v625;
              swift_bridgeObjectRelease_n();

              _os_log_impl(&_mh_execute_header, v430, v431, "[%s] Item: %{public}s, is not picked in session: %{public}s, not RC context -> .add", v433, 0x20u);
              swift_arrayDestroy();

              (*(v683 + 8))(v640, v686);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();

              (*(v410 + 8))(v427, v243);
              v439 = v682;
            }

            v458 = v675;
            v459 = v668;
            sub_1002D56A8(v675, v668, type metadata accessor for HostedRoutingItem);
            v758[0] = v623;
            v758[1] = v429;
            v758[2] = v439;
            v758[3] = v428;
            v759 = 0;
            sub_100272B38(v758, v706);
            v535 = v667;
            sub_1002D56A8(v459, v667, type metadata accessor for HostedRoutingItem);
            swift_storeEnumTagMultiPayload();
            type metadata accessor for RoutingDecisionEngine.Decision(0);
            v10 = swift_allocObject();
            sub_1002D5640(v535, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
            v461 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
            v536 = v706[1];
            *v461 = v706[0];
            *(v461 + 16) = v536;
            *(v461 + 32) = v706[2];
            v463 = v707;
          }

          *(v461 + 48) = v463;
          sub_1002D5710(v459, type metadata accessor for HostedRoutingItem);
          sub_1002D5710(v458, type metadata accessor for HostedRoutingItem);
          v537 = type metadata accessor for HostedRoutingSession;
          goto LABEL_185;
        }

        v241 = 0;
        v768 = _swiftEmptyArrayStorage;
        v242 = v654;
        while (v241 < *(v239 + 16))
        {
          v244 = (*(v681 + 80) + 32) & ~*(v681 + 80);
          v245 = *(v681 + 72);
          sub_1002D56A8(v239 + v244 + v245 * v241, v242, type metadata accessor for HostedRoutingItem);
          if (*(v242 + *(v204 + 36)) != 1 || (v246 = *(v242 + *(v204 + 44)), LOBYTE(v689) = *v684, v688 = v246, v238 = &v688, (dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) != 0))
          {
            sub_1002D5710(v242, type metadata accessor for HostedRoutingItem);
          }

          else
          {
            sub_1002D5640(v242, v661, type metadata accessor for HostedRoutingItem);
            v238 = v768;
            v247 = swift_isUniquelyReferenced_nonNull_native();
            v691[0] = v238;
            if ((v247 & 1) == 0)
            {
              sub_10002A42C(0, v238[2].isa + 1, 1);
              v238 = v691[0];
            }

            v249 = v238[2].isa;
            v248 = v238[3].isa;
            if (v249 >= v248 >> 1)
            {
              sub_10002A42C((v248 > 1), v249 + 1, 1);
              v238 = v691[0];
            }

            v238[2].isa = (v249 + 1);
            v768 = v238;
            sub_1002D5640(v661, v238 + v244 + v249 * v245, type metadata accessor for HostedRoutingItem);
            v204 = v676;
            v242 = v654;
          }

          ++v241;
          v243 = v686;
          if (v240 == v241)
          {
            goto LABEL_148;
          }
        }

        __break(1u);
        goto LABEL_220;
      }

      v312 = sub_100257764();
      LOBYTE(v691[0]) = *v312;
      LOBYTE(v689) = v234;
      if (dispatch thunk of SetAlgebra.isSuperset(of:)())
      {
        v313 = sub_100261164();
        v314 = *(v313 + 16);
        if (v314)
        {
          v315 = v313 + ((*(v681 + 80) + 32) & ~*(v681 + 80));
          v316 = *(v681 + 72);
          while (1)
          {
            if (*(v315 + *(v676 + 36)))
            {
              v317 = *(v315 + *(v676 + 44));
              LOBYTE(v691[0]) = *v312;
              LOBYTE(v689) = v317;
              if ((dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) == 0)
              {
                break;
              }
            }

            v315 += v316;
            if (!--v314)
            {
              goto LABEL_145;
            }
          }

          v169 = v627;

          v318 = sub_100028D40();
          (*(v683 + 16))(v636, v318, v686);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v319 = Logger.logObject.getter();
          v320 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v319, v320))
          {
            v321 = swift_slowAlloc();
            v691[0] = swift_slowAlloc();
            *v321 = 136315650;
            v322 = _typeName(_:qualified:)();
            v324 = sub_10002C9C8(v322, v323, v691);

            *(v321 + 4) = v324;
            *(v321 + 12) = 2082;
            v325 = v625;

            v326 = sub_10002C9C8(v623, v325, v691);

            *(v321 + 14) = v326;
            swift_bridgeObjectRelease_n();
            *(v321 + 22) = 2082;
            v327 = v685;

            v328 = sub_10002C9C8(v682, v327, v691);

            *(v321 + 24) = v328;
            swift_bridgeObjectRelease_n();

            _os_log_impl(&_mh_execute_header, v319, v320, "[%s] Item: %{public}s, is not picked in session: %{public}s, not RC context, supports split, session has existing non-split items -> .set", v321, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          (*(v683 + 8))(v636, v686);
          v575 = v675;
          v576 = v668;
          sub_1002D56A8(v675, v668, type metadata accessor for HostedRoutingItem);
          v764[0] = v623;
          v764[1] = v625;
          v764[2] = v682;
          v764[3] = v685;
          v765 = 2;
          sub_100272B38(v764, v698);
          v577 = v667;
          sub_1002D56A8(v576, v667, type metadata accessor for HostedRoutingItem);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for RoutingDecisionEngine.Decision(0);
          v10 = swift_allocObject();
          sub_1002D5640(v577, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
          v578 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
          v579 = v698[1];
          *v578 = v698[0];
          *(v578 + 16) = v579;
          *(v578 + 32) = v698[2];
          v580 = v699;
          goto LABEL_213;
        }

LABEL_145:

        v394 = sub_100028D40();
        v395 = v683;
        v396 = v642;
        v397 = v686;
        (*(v683 + 16))(v642, v394, v686);
        v398 = v685;
        swift_bridgeObjectRetain_n();
        v399 = v625;
        swift_bridgeObjectRetain_n();
        v400 = Logger.logObject.getter();
        v401 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v400, v401))
        {
          v402 = swift_slowAlloc();
          v691[0] = swift_slowAlloc();
          *v402 = 136315650;
          v403 = _typeName(_:qualified:)();
          v405 = sub_10002C9C8(v403, v404, v691);

          *(v402 + 4) = v405;
          *(v402 + 12) = 2082;

          v406 = sub_10002C9C8(v623, v625, v691);

          *(v402 + 14) = v406;
          swift_bridgeObjectRelease_n();
          *(v402 + 22) = 2082;
          v399 = v625;

          v407 = sub_10002C9C8(v682, v398, v691);

          *(v402 + 24) = v407;
          swift_bridgeObjectRelease_n();

          _os_log_impl(&_mh_execute_header, v400, v401, "[%s] Item: %{public}s, is not picked in session: %{public}s, not RC context, supports split, session has only split items -> .add", v402, 0x20u);
          swift_arrayDestroy();

          (*(v683 + 8))(v642, v397);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          (*(v395 + 8))(v396, v397);
        }

        v527 = v675;
        v528 = v668;
        sub_1002D56A8(v675, v668, type metadata accessor for HostedRoutingItem);
        v762[0] = v623;
        v762[1] = v399;
        v762[2] = v682;
        v762[3] = v398;
        v763 = 0;
        sub_100272B38(v762, v700);
        v533 = v667;
        sub_1002D56A8(v528, v667, type metadata accessor for HostedRoutingItem);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for RoutingDecisionEngine.Decision(0);
        v10 = swift_allocObject();
        sub_1002D5640(v533, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
        v530 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
        v534 = v700[1];
        *v530 = v700[0];
        *(v530 + 16) = v534;
        *(v530 + 32) = v700[2];
        v532 = v701;
LABEL_193:
        *(v530 + 48) = v532;
        sub_1002D5710(v528, type metadata accessor for HostedRoutingItem);
        v542 = v527;
        goto LABEL_194;
      }

      v364 = sub_100028D40();
      v365 = v645;
      v366 = v686;
      (*(v10 + 16))(v645, v364, v686);
      v367 = v685;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v368 = Logger.logObject.getter();
      v369 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v368, v369))
      {
        v370 = swift_slowAlloc();
        v691[0] = swift_slowAlloc();
        *v370 = 136315650;
        v371 = _typeName(_:qualified:)();
        v373 = sub_10002C9C8(v371, v372, v691);

        *(v370 + 4) = v373;
        *(v370 + 12) = 2082;

        v374 = sub_10002C9C8(v623, v625, v691);

        *(v370 + 14) = v374;
        swift_bridgeObjectRelease_n();
        *(v370 + 22) = 2082;
        v237 = v625;

        v375 = sub_10002C9C8(v682, v367, v691);

        *(v370 + 24) = v375;
        swift_bridgeObjectRelease_n();

        _os_log_impl(&_mh_execute_header, v368, v369, "[%s] Item: %{public}s, is not picked in session: %{public}s, not RC context, not multi select or split -> .set", v370, 0x20u);
        swift_arrayDestroy();

        (*(v683 + 8))(v645, v366);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        (*(v10 + 8))(v365, v366);
      }

      v503 = v675;
      v504 = v668;
      sub_1002D56A8(v675, v668, type metadata accessor for HostedRoutingItem);
      v766[0] = v623;
      v766[1] = v237;
      v766[2] = v682;
      v766[3] = v367;
      v767 = 2;
      sub_100272B38(v766, v702);
      v505 = v667;
      sub_1002D56A8(v504, v667, type metadata accessor for HostedRoutingItem);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for RoutingDecisionEngine.Decision(0);
      v10 = swift_allocObject();
      sub_1002D5640(v505, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
      v506 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
      v507 = v702[1];
      *v506 = v702[0];
      *(v506 + 16) = v507;
      *(v506 + 32) = v702[2];
      v508 = v703;
LABEL_188:
      *(v506 + 48) = v508;
      sub_1002D5710(v504, type metadata accessor for HostedRoutingItem);
      v542 = v503;
LABEL_194:
      sub_1002D5710(v542, type metadata accessor for HostedRoutingItem);
      v538 = type metadata accessor for HostedRoutingSession;
      p_isa = &v627->isa;
      goto LABEL_195;
    }

    v206 = sub_100261164();
    v207 = sub_1002E6EF4(v206);
    v674 = v154;

    sub_1001BC5A8(&unk_100524EB0, &unk_1004584A0);
    v208 = (*(v681 + 80) + 32) & ~*(v681 + 80);
    v209 = swift_allocObject();
    *(v209 + 16) = xmmword_10044EC70;
    sub_1002D56A8(v205, v209 + v208, type metadata accessor for HostedRoutingItem);
    v210 = sub_10001ECB8(v207, v209);

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v211 = sub_100028D40();
    v212 = *(v10 + 16);
    v213 = v625;
    if ((v210 & 1) == 0)
    {
      v301 = v652;
      v302 = v686;
      v212(v652, v211, v686);
      v303 = v685;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v304 = Logger.logObject.getter();
      v305 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v304, v305))
      {
        v306 = swift_slowAlloc();
        v691[0] = swift_slowAlloc();
        *v306 = 136315650;
        v307 = _typeName(_:qualified:)();
        v309 = sub_10002C9C8(v307, v308, v691);

        *(v306 + 4) = v309;
        *(v306 + 12) = 2082;

        v310 = sub_10002C9C8(v623, v625, v691);

        *(v306 + 14) = v310;
        swift_bridgeObjectRelease_n();
        *(v306 + 22) = 2082;
        v213 = v625;

        v311 = sub_10002C9C8(v682, v303, v691);

        *(v306 + 24) = v311;
        swift_bridgeObjectRelease_n();

        _os_log_impl(&_mh_execute_header, v304, v305, "[%s] Item: %{public}s, is picked in session: %{public}s, not RC context -> .remove", v306, 0x20u);
        swift_arrayDestroy();

        (*(v683 + 8))(v652, v686);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        (*(v10 + 8))(v301, v302);
      }

      v360 = v667;
      v342 = v668;
      sub_1002D56A8(v205, v668, type metadata accessor for HostedRoutingItem);
      v756[0] = v623;
      v756[1] = v213;
      v756[2] = v682;
      v756[3] = v303;
      v757 = 1;
      sub_100272B38(v756, v696);
      sub_1002D56A8(v342, v360, type metadata accessor for HostedRoutingItem);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for RoutingDecisionEngine.Decision(0);
      v10 = swift_allocObject();
      sub_1002D5640(v360, v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
      v361 = v10 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
      v362 = v696[1];
      *v361 = v696[0];
      *(v361 + 16) = v362;
      *(v361 + 32) = v696[2];
      v363 = v697;
      goto LABEL_157;
    }

    v116 = v651;
    a2 = v686;
    v212(v651, v211, v686);
    v214 = v685;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v114 = Logger.logObject.getter();
    v215 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v114, v215))
    {
      v216 = swift_slowAlloc();
      v768 = swift_slowAlloc();
      v691[0] = v768;
      *v216 = 136315650;
      v217 = _typeName(_:qualified:)();
      v219 = sub_10002C9C8(v217, v218, v691);

      *(v216 + 4) = v219;
      *(v216 + 12) = 2082;

      v220 = sub_10002C9C8(v623, v213, v691);

      *(v216 + 14) = v220;
      swift_bridgeObjectRelease_n();
      *(v216 + 22) = 2082;

      v10 = sub_10002C9C8(v682, v214, v691);

      *(v216 + 24) = v10;

      swift_bridgeObjectRelease_n();

      _os_log_impl(&_mh_execute_header, v114, v215, "[%s] Item: %{public}s, is sole picked item in session: %{public}s, not RC context -> no-op", v216, 0x20u);
      swift_arrayDestroy();

      (*(v683 + 8))(v651, a2);
LABEL_154:
      v442 = type metadata accessor for InternalRoutingError();
      sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v442 - 8) + 104))(v443, enum case for InternalRoutingError.NOP(_:), v442);
      swift_willThrow();
      sub_1002D5710(v675, type metadata accessor for HostedRoutingItem);
      sub_1002D5710(v627, type metadata accessor for HostedRoutingSession);
      return v10;
    }

LABEL_135:

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v359 = *(v10 + 8);
    v10 += 8;
    v359(v116, a2);
    goto LABEL_154;
  }

LABEL_223:
  __break(1u);
  return result;
}

uint64_t sub_1002DBC98(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v4 = v3;
  v389 = a3;
  v416 = a2;
  v6 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v6 - 8);
  v376 = &v316 - v7;
  v8 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v374 = *(v8 - 8);
  v375 = v8;
  __chkstk_darwin(v8);
  v362 = &v316 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001BC5A8(&qword_100523B30, &qword_100451A00);
  __chkstk_darwin(v10 - 8);
  v12 = &v316 - v11;
  v13 = type metadata accessor for RoutingControls.UnfavoriteControl();
  v325 = *(v13 - 8);
  __chkstk_darwin(v13);
  v324 = &v316 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001BC5A8(&qword_100523B38, &qword_100451A08);
  __chkstk_darwin(v15 - 8);
  v327 = &v316 - v16;
  v328 = type metadata accessor for RoutingControls.FavoriteControl();
  v326 = *(v328 - 8);
  __chkstk_darwin(v328);
  v323 = &v316 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001BC5A8(&qword_100523BD0, &unk_100451AB0);
  __chkstk_darwin(v18 - 8);
  v356 = &v316 - v19;
  v357 = type metadata accessor for RoutingControls.SkipBackwardControl();
  v355 = *(v357 - 8);
  __chkstk_darwin(v357);
  v353 = &v316 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1001BC5A8(&qword_100523BC8, &qword_100451AA8);
  __chkstk_darwin(v21 - 8);
  v360 = &v316 - v22;
  v361 = type metadata accessor for RoutingControls.SkipForwardControl();
  v359 = *(v361 - 8);
  __chkstk_darwin(v361);
  v354 = &v316 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1001BC5A8(&qword_100523BD8, &unk_100457BE0);
  __chkstk_darwin(v24 - 8);
  v366 = &v316 - v25;
  v367 = type metadata accessor for RoutingControls.SeekControl();
  v365 = *(v367 - 8);
  __chkstk_darwin(v367);
  v358 = &v316 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1001BC5A8(&qword_100523BC0, &qword_100451AA0);
  __chkstk_darwin(v27 - 8);
  v334 = &v316 - v28;
  v29 = type metadata accessor for RoutingControls.FastForwardControl();
  v331 = *(v29 - 8);
  v332 = v29;
  __chkstk_darwin(v29);
  v329 = &v316 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1001BC5A8(&qword_100523BB8, &unk_100457BF0);
  __chkstk_darwin(v31 - 8);
  v338 = &v316 - v32;
  v33 = type metadata accessor for RoutingControls.RewindControl();
  v335 = *(v33 - 8);
  v336 = v33;
  __chkstk_darwin(v33);
  v330 = &v316 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1001BC5A8(&qword_100523BF0, &qword_100451AD0);
  __chkstk_darwin(v35 - 8);
  v342 = &v316 - v36;
  v37 = type metadata accessor for RoutingControls.StopControl();
  v339 = *(v37 - 8);
  v340 = v37;
  __chkstk_darwin(v37);
  v333 = &v316 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v382 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v381 = *(v382 - 8);
  v39 = __chkstk_darwin(v382);
  v377 = &v316 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v380 = &v316 - v41;
  v42 = sub_1001BC5A8(&qword_100523BF8, &unk_100457C00);
  v43 = __chkstk_darwin(v42 - 8);
  v364 = &v316 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v343 = &v316 - v45;
  v46 = type metadata accessor for RoutingControls.PauseControl();
  v368 = *(v46 - 8);
  v369 = v46;
  v47 = __chkstk_darwin(v46);
  v373 = &v316 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v337 = &v316 - v49;
  v50 = sub_1001BC5A8(&qword_100523B60, &qword_100451A48);
  v51 = __chkstk_darwin(v50 - 8);
  v363 = &v316 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v346 = &v316 - v53;
  v54 = type metadata accessor for RoutingControls.PlayControl();
  v370 = *(v54 - 8);
  v371 = v54;
  v55 = __chkstk_darwin(v54);
  v372 = &v316 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v341 = &v316 - v57;
  v58 = sub_1001BC5A8(&qword_100523BE0, &qword_100451AC0);
  __chkstk_darwin(v58 - 8);
  v349 = &v316 - v59;
  TrackControl = type metadata accessor for RoutingControls.NextTrackControl();
  v347 = *(TrackControl - 8);
  v348 = TrackControl;
  __chkstk_darwin(TrackControl);
  v344 = &v316 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1001BC5A8(&qword_100523BE8, &qword_100451AC8);
  __chkstk_darwin(v62 - 8);
  v352 = &v316 - v63;
  v64 = type metadata accessor for RoutingControls.PreviousTrackControl();
  v350 = *(v64 - 8);
  v351 = v64;
  __chkstk_darwin(v64);
  v345 = &v316 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v385 = type metadata accessor for RoutingSessionConfiguration.Context();
  v388 = *(v385 - 8);
  v66 = __chkstk_darwin(v385);
  v384 = (&v316 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v66);
  v383 = &v316 - v68;
  v405 = type metadata accessor for RoutingControl();
  v406 = *(v405 - 8);
  __chkstk_darwin(v405);
  v387 = &v316 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v395 = type metadata accessor for Logger();
  v397 = *(v395 - 8);
  __chkstk_darwin(v395);
  v396 = &v316 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v402 = type metadata accessor for RoutingDecisionEngine.Decision.Element(0);
  __chkstk_darwin(v402);
  v403 = &v316 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1001BC5A8(&qword_100523B58, &qword_100451A40);
  __chkstk_darwin(v72 - 8);
  v399 = &v316 - v73;
  v394 = type metadata accessor for RoutingControls.TVRemoteControl.Context();
  v393 = *(v394 - 8);
  v74 = __chkstk_darwin(v394);
  v391 = &v316 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v392 = &v316 - v76;
  v409 = type metadata accessor for RoutingControl.RoutingControlType();
  v411 = *(v409 - 8);
  v77 = __chkstk_darwin(v409);
  v378 = &v316 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __chkstk_darwin(v77);
  v379 = &v316 - v80;
  v81 = __chkstk_darwin(v79);
  v400 = &v316 - v82;
  v83 = __chkstk_darwin(v81);
  v408 = (&v316 - v84);
  __chkstk_darwin(v83);
  v412 = &v316 - v85;
  v417 = type metadata accessor for HostedRoutingSession(0);
  v419 = *(v417 - 8);
  v86 = __chkstk_darwin(v417);
  v386 = &v316 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __chkstk_darwin(v86);
  v390 = &v316 - v89;
  v90 = __chkstk_darwin(v88);
  v401 = (&v316 - v91);
  v92 = __chkstk_darwin(v90);
  v398 = &v316 - v93;
  v94 = __chkstk_darwin(v92);
  v404 = &v316 - v95;
  v96 = __chkstk_darwin(v94);
  v98 = (&v316 - v97);
  v99 = __chkstk_darwin(v96);
  v407 = &v316 - v100;
  __chkstk_darwin(v99);
  v413 = &v316 - v101;
  v102 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v103 = __chkstk_darwin(v102 - 8);
  v410 = (&v316 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v103);
  v415 = &v316 - v105;
  v106 = type metadata accessor for RoutingControl.Target();
  v107 = *(v106 - 8);
  __chkstk_darwin(v106);
  v109 = (&v316 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
  v414 = a1;
  RoutingControl.target.getter();
  v110 = (*(v107 + 88))(v109, v106);
  if (v110 == enum case for RoutingControl.Target.session(_:))
  {
    v320 = v13;
    (*(v107 + 96))(v109, v106);
    v111 = *v109;
    v112 = v109[1];

    v113 = 0;
  }

  else
  {
    if (v110 != enum case for RoutingControl.Target.item(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_156;
    }

    v115 = *(v107 + 96);
    v114 = v107 + 96;
    v115(v109, v106);
    v116 = v109[1];
    v422[0] = *v109;
    v422[1] = v116;
    v420 = 14906;
    v421 = 0xE200000000000000;
    sub_10026983C();
    v117 = Collection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)();

    if (*(v117 + 16) != 2)
    {

      v125 = type metadata accessor for InternalRoutingError();
      sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      v127 = v129;
      v128 = &enum case for InternalRoutingError.itemNotFound(_:);
      goto LABEL_27;
    }

    v321 = v3;
    v118 = *(v117 + 48);

    v418 = static String._fromSubstring(_:)();
    v112 = v119;

    if (*(v117 + 16) < 2uLL)
    {
LABEL_106:
      __break(1u);
LABEL_107:
      v301 = v353;
      (*(v12 + 32))(v353, v114, v13);
      LODWORD(v415) = ConditionalControl.isEnabled.getter();
      (*(v12 + 8))(v301, v13);
      v231 = v385;
      v232 = v388;
      v230 = v408;
      if (v415)
      {
        goto LABEL_56;
      }

      goto LABEL_101;
    }

    v319 = v12;
    v320 = v13;

    v12 = v319;
    static String._fromSubstring(_:)();
    v113 = v120;

    v4 = v321;
    v111 = v418;
  }

  v121 = static RoutingSession.placeholderSessionIdentifier.getter();
  v418 = v111;
  v123 = v419;
  if (v111 == v121 && v112 == v122)
  {
    swift_bridgeObjectRelease_n();
LABEL_11:

    v125 = type metadata accessor for InternalRoutingError();
    sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    v127 = v126;
    v128 = &enum case for InternalRoutingError.invalidAction(_:);
LABEL_27:
    (*(*(v125 - 8) + 104))(v127, *v128, v125);
    swift_willThrow();
    return v125;
  }

  v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v124)
  {
    goto LABEL_11;
  }

  v317 = v113;
  v319 = v12;
  v321 = v4;
  v322 = v112;
  v130 = v416;
  v318 = sub_1002647C8();
  v131 = v415;
  sub_10001D9AC(v130, v415, &qword_100523620, &unk_1004511D0);
  v118 = (v123 + 48);
  v316 = *(v123 + 48);
  v132 = v316(v131, 1, v417);
  sub_1000038A4(v131, &qword_100523620, &unk_1004511D0);
  if (v132 == 1)
  {
    v133 = _swiftEmptyArrayStorage;
    v134 = v322;
    v135 = v418;
  }

  else
  {
    sub_1001BC5A8(&qword_100523630, &qword_1004511E0);
    v136 = (*(v123 + 80) + 32) & ~*(v123 + 80);
    v137 = swift_allocObject();
    v138 = v130;
    v133 = v137;
    *(v137 + 16) = xmmword_10044EC70;
    v139 = v410;
    sub_10001D9AC(v138, v410, &qword_100523620, &unk_1004511D0);
    v140 = v316(v139, 1, v417);
    v135 = v418;
    if (v140 == 1)
    {
      __break(1u);
      goto LABEL_151;
    }

    sub_1002D5640(v139, v133 + v136, type metadata accessor for HostedRoutingSession);
    v134 = v322;
  }

  v422[0] = v318;
  sub_1002E6D98(v133, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession);
  v13 = v422[0];
  v118 = *(v422[0] + 16);
  if (!v118)
  {
LABEL_26:

    v125 = type metadata accessor for InternalRoutingError();
    sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    v127 = v144;
    v128 = &enum case for InternalRoutingError.sessionNotFound(_:);
    goto LABEL_27;
  }

  v141 = 0;
  while (1)
  {
    if (v141 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_86;
    }

    v142 = (*(v419 + 80) + 32) & ~*(v419 + 80);
    v12 = *(v419 + 72);
    sub_1002D56A8(v13 + v142 + v12 * v141, v98, type metadata accessor for HostedRoutingSession);
    v143 = *v98 == v135 && v98[1] == v134;
    if (v143 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v141;
    sub_1002D5710(v98, type metadata accessor for HostedRoutingSession);
    if (v118 == v141)
    {
      goto LABEL_26;
    }
  }

  v146 = v407;
  sub_1002D5640(v98, v407, type metadata accessor for HostedRoutingSession);
  sub_1002D5640(v146, v413, type metadata accessor for HostedRoutingSession);
  RoutingControl.type.getter();
  v147 = v411;
  v148 = *(v411 + 104);
  v149 = v408;
  LODWORD(v415) = enum case for RoutingControl.RoutingControlType.tvRemote(_:);
  v150 = v409;
  v148(v408);
  LODWORD(v419) = static RoutingControl.RoutingControlType.== infix(_:_:)();
  isa = v147[1].isa;
  isa(v149, v150);
  v416 = v147 + 1;
  isa(v412, v150);
  if ((v419 & 1) == 0)
  {
    v158 = isa;
    v159 = v400;
    RoutingControl.type.getter();
    v118 = *(v411 + 88);
    v160 = v118(v159, v150);
    v161 = enum case for RoutingControl.RoutingControlType.absoluteVolume(_:);
    if (v160 == enum case for RoutingControl.RoutingControlType.absoluteVolume(_:))
    {

      v162 = v413;
      v163 = v413 + *(v417 + 48);
      if ((*(v163 + 4) & 1) == 0)
      {
        v216 = *v163;
        v217 = sub_1001BC5A8(&qword_100523030, &unk_100450F40);
        v218 = swift_allocBox();
        v220 = v219;
        v221 = *(v217 + 48);
        (*(v406 + 16))(v219, v414, v405);
        type metadata accessor for VolumeGroup();
        v222 = sub_10003AC60();
        *(v220 + v221) = sub_100266B70(v222, v216);
        v437[0] = v218;
        memset(&v437[1], 0, 24);
        v438 = 10;
        sub_100272B38(v437, v425);
        sub_1002D5710(v162, type metadata accessor for HostedRoutingSession);
        v223 = v403;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for RoutingDecisionEngine.Decision(0);
        v125 = swift_allocObject();
        sub_1002D5640(v223, v125 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
        v198 = v125 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
        v224 = v425[1];
        *v198 = v425[0];
        *(v198 + 16) = v224;
        *(v198 + 32) = v425[2];
        v200 = v426;
        goto LABEL_51;
      }

      v164 = sub_100028D40();
      v165 = v395;
      (*(v397 + 16))(v396, v164, v395);
      v166 = v406;
      v167 = v387;
      v168 = v405;
      (*(v406 + 16))(v387, v414, v405);
      v169 = v386;
      sub_1002D56A8(v162, v386, type metadata accessor for HostedRoutingSession);
      v170 = Logger.logObject.getter();
      LODWORD(v419) = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v170, v419))
      {
        v171 = v166;
        v172 = swift_slowAlloc();
        v418 = swift_slowAlloc();
        v422[0] = v418;
        *v172 = 136315650;
        v173 = _typeName(_:qualified:)();
        v416 = v170;
        v175 = sub_10002C9C8(v173, v174, v422);

        *(v172 + 4) = v175;
        *(v172 + 12) = 2082;
        sub_1002E798C(&qword_100524278, &type metadata accessor for RoutingControl, &protocol conformance descriptor for RoutingControl);
        v176 = dispatch thunk of CustomStringConvertible.description.getter();
        v178 = v177;
        (*(v171 + 8))(v167, v168);
        v179 = sub_10002C9C8(v176, v178, v422);

        *(v172 + 14) = v179;
        *(v172 + 22) = 2082;
        sub_1002E798C(&qword_1005259D0, type metadata accessor for HostedRoutingSession, &unk_100452828);
        v180 = dispatch thunk of CustomStringConvertible.description.getter();
        v182 = v181;
        sub_1002D5710(v169, type metadata accessor for HostedRoutingSession);
        v183 = sub_10002C9C8(v180, v182, v422);

        *(v172 + 24) = v183;
        v184 = v416;
        _os_log_impl(&_mh_execute_header, v416, v419, "[%s] computeInteractionForControl - failing: %{public}s because session: %{public}s has no volume", v172, 0x20u);
        swift_arrayDestroy();

        (*(v397 + 8))(v396, v395);
      }

      else
      {

        sub_1002D5710(v169, type metadata accessor for HostedRoutingSession);
        (*(v166 + 8))(v167, v168);
        (*(v397 + 8))(v396, v165);
      }

LABEL_61:
      v125 = type metadata accessor for InternalRoutingError();
      sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      (*(*(v125 - 8) + 104))(v236, enum case for InternalRoutingError.unsupportedControl(_:), v125);
      swift_willThrow();
      v157 = v162;
      goto LABEL_62;
    }

    v158(v159, v150);
    if (v317)
    {

      v192 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
      v193 = swift_allocBox();
      v195 = v194;
      v196 = *(v192 + 48);
      (*(v406 + 16))(v194, v414, v405);
      type metadata accessor for RoutingInteraction.Action.ControlContext();
      *(v195 + v196) = sub_1001E789C(0, 0);
      v439[0] = v193;
      memset(&v439[1], 0, 24);
      v440 = 7;
      sub_100272B38(v439, v427);
      sub_1002D5710(v413, type metadata accessor for HostedRoutingSession);
      v197 = v403;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for RoutingDecisionEngine.Decision(0);
      v125 = swift_allocObject();
      sub_1002D5640(v197, v125 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
      v198 = v125 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
      v199 = v427[1];
      *v198 = v427[0];
      *(v198 + 16) = v199;
      *(v198 + 32) = v427[2];
      v200 = v428;
      goto LABEL_51;
    }

    v225 = v383;
    RoutingSessionConfiguration.context.getter();
    v226 = v388;
    v227 = *(v388 + 88);
    v228 = v385;
    v419 = v388 + 88;
    v412 = v227;
    v229 = (v227)(v225, v385);
    v410 = v158;
    if (v229 == enum case for RoutingSessionConfiguration.Context.nonUI(_:))
    {

      v230 = *(v226 + 8);
      v230(v225, v228);
      v231 = v228;
      v232 = v226;
      v98 = v384;
LABEL_55:
      v112 = v322;
      goto LABEL_56;
    }

    v408 = *(v226 + 8);
    v408(v225, v228);
    v237 = v379;
    RoutingControl.type.getter();
    v238 = v409;
    v239 = v118(v237, v409);
    if (v239 == enum case for RoutingControl.RoutingControlType.togglePlayPause(_:))
    {
      (*(v411 + 96))(v237, v238);
      v240 = v381;
      v241 = v380;
      v242 = v382;
      (*(v381 + 32))(v380, v237, v382);
      v243 = v377;
      (*(v240 + 16))(v377, v241, v242);
      v244 = (*(v240 + 88))(v243, v242);
      v98 = v384;
      if (v244 == enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:))
      {

        v245 = v364;
        RoutingControls.pause.getter();
        v246 = v368;
        v247 = v369;
        v248 = (*(v368 + 48))(v245, 1, v369);
        v232 = v388;
        v112 = v322;
        if (v248 == 1)
        {

          sub_1000038A4(v245, &qword_100523BF8, &unk_100457C00);
LABEL_98:
          v125 = type metadata accessor for InternalRoutingError();
          sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
          swift_allocError();
          (*(*(v125 - 8) + 104))(v299, enum case for InternalRoutingError.unsupportedControl(_:), v125);
          swift_willThrow();
          (*(v381 + 8))(v380, v382);
LABEL_40:
          v157 = v413;
LABEL_62:
          sub_1002D5710(v157, type metadata accessor for HostedRoutingSession);
          return v125;
        }

        (*(v246 + 32))(v373, v245, v247);
        v295 = v246;
        v296 = ConditionalControl.isEnabled.getter();
        (*(v295 + 8))(v373, v247);
LABEL_94:
        if ((v296 & 1) == 0)
        {

          goto LABEL_98;
        }

        (*(v381 + 8))(v380, v382);
        v231 = v385;
        goto LABEL_96;
      }

      v232 = v388;
      v112 = v322;
      if (v244 == enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.paused(_:))
      {

        v276 = v363;
        RoutingControls.play.getter();
        v277 = v276;
        v278 = v370;
        v279 = v276;
        v280 = v371;
        if ((*(v370 + 48))(v279, 1, v371) == 1)
        {

          sub_1000038A4(v277, &qword_100523B60, &qword_100451A48);
          goto LABEL_98;
        }

        (*(v278 + 32))(v372, v277, v280);
        v296 = ConditionalControl.isEnabled.getter();
        (*(v278 + 8))(v372, v280);
        goto LABEL_94;
      }

LABEL_156:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v98 = v384;
    if (v239 == enum case for RoutingControl.RoutingControlType.seek(_:))
    {

      v114 = v366;
      RoutingControls.seek.getter();
      v260 = v365;
      v261 = v367;
      if ((*(v365 + 48))(v114, 1, v367) == 1)
      {

        v262 = &qword_100523BD8;
        v263 = &unk_100457BE0;
LABEL_92:
        sub_1000038A4(v114, v262, v263);
        goto LABEL_102;
      }

      v297 = v358;
      (*(v260 + 32))(v358, v114, v261);
LABEL_100:
      LODWORD(v415) = ConditionalControl.isEnabled.getter();
      (*(v260 + 8))(v297, v261);
      v231 = v385;
      v232 = v388;
      v230 = v408;
      v112 = v322;
      if (v415)
      {
        goto LABEL_56;
      }

      goto LABEL_101;
    }

    if (v239 == enum case for RoutingControl.RoutingControlType.skipForward(_:))
    {

      v114 = v360;
      RoutingControls.skipForward.getter();
      v260 = v359;
      v261 = v361;
      if ((*(v359 + 48))(v114, 1, v361) == 1)
      {

        v262 = &qword_100523BC8;
        v263 = &qword_100451AA8;
        goto LABEL_92;
      }

      v297 = v354;
      (*(v260 + 32))(v354, v114, v261);
      goto LABEL_100;
    }

    if (v239 == enum case for RoutingControl.RoutingControlType.skipBackward(_:))
    {

      v114 = v356;
      RoutingControls.skipBackward.getter();
      v12 = v355;
      v13 = v357;
      v298 = (*(v355 + 48))(v114, 1, v357);
      v112 = v322;
      if (v298 == 1)
      {

        v262 = &qword_100523BD0;
        v263 = &unk_100451AB0;
        goto LABEL_92;
      }

      goto LABEL_107;
    }

    if (v239 == v161)
    {

LABEL_111:
      v231 = v385;
      v232 = v388;
      v230 = v408;
      goto LABEL_55;
    }

    if (v239 == enum case for RoutingControl.RoutingControlType.relativeVolume(_:))
    {

      (*(v411 + 96))(v237, v409);
      v302 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
      (*(*(v302 - 8) + 8))(v237, v302);
      goto LABEL_111;
    }

    if (v239 == enum case for RoutingControl.RoutingControlType.previousTrack(_:))
    {

      v303 = v352;
      RoutingControls.previousTrack.getter();
      if ((*(v350 + 48))(v303, 1, v351) == 1)
      {

        sub_1000038A4(v352, &qword_100523BE8, &qword_100451AC8);
        goto LABEL_102;
      }

      v306 = v350;
      v305 = v351;
      v307 = v345;
      (*(v350 + 32))(v345, v352, v351);
LABEL_142:
      v313 = ConditionalControl.isEnabled.getter();
      (*(v306 + 8))(v307, v305);
      v231 = v385;
      v232 = v388;
      v98 = v384;
      v112 = v322;
      v230 = v408;
      if (v313)
      {
        goto LABEL_56;
      }

LABEL_101:

      goto LABEL_102;
    }

    if (v239 == enum case for RoutingControl.RoutingControlType.nextTrack(_:))
    {

      v304 = v349;
      RoutingControls.nextTrack.getter();
      if ((*(v347 + 48))(v304, 1, v348) != 1)
      {
        v306 = v347;
        v305 = v348;
        v307 = v344;
        (*(v347 + 32))(v344, v349, v348);
        goto LABEL_142;
      }

      sub_1000038A4(v349, &qword_100523BE0, &qword_100451AC0);
      goto LABEL_102;
    }

    if (v239 == enum case for RoutingControl.RoutingControlType.play(_:))
    {

      v308 = v346;
      RoutingControls.play.getter();
      if ((*(v370 + 48))(v308, 1, v371) != 1)
      {
        v306 = v370;
        v305 = v371;
        v307 = v341;
        (*(v370 + 32))(v341, v346, v371);
        goto LABEL_142;
      }

      sub_1000038A4(v346, &qword_100523B60, &qword_100451A48);
      goto LABEL_102;
    }

    if (v239 == enum case for RoutingControl.RoutingControlType.pause(_:))
    {

      v309 = v343;
      RoutingControls.pause.getter();
      if ((*(v368 + 48))(v309, 1, v369) != 1)
      {
        v306 = v368;
        v305 = v369;
        v307 = v337;
        (*(v368 + 32))(v337, v343, v369);
        goto LABEL_142;
      }

      sub_1000038A4(v343, &qword_100523BF8, &unk_100457C00);
      goto LABEL_102;
    }

    if (v239 == enum case for RoutingControl.RoutingControlType.stop(_:))
    {

      v310 = v342;
      RoutingControls.stop.getter();
      if ((*(v339 + 48))(v310, 1, v340) != 1)
      {
        v306 = v339;
        v305 = v340;
        v307 = v333;
        (*(v339 + 32))(v333, v342, v340);
        goto LABEL_142;
      }

      sub_1000038A4(v342, &qword_100523BF0, &qword_100451AD0);
      goto LABEL_102;
    }

    if (v239 == enum case for RoutingControl.RoutingControlType.rewind(_:))
    {

      v311 = v338;
      RoutingControls.rewind.getter();
      if ((*(v335 + 48))(v311, 1, v336) != 1)
      {
        v306 = v335;
        v305 = v336;
        v307 = v330;
        (*(v335 + 32))(v330, v338, v336);
        goto LABEL_142;
      }

      sub_1000038A4(v338, &qword_100523BB8, &unk_100457BF0);
      goto LABEL_102;
    }

    if (v239 == enum case for RoutingControl.RoutingControlType.fastForward(_:))
    {

      v312 = v334;
      RoutingControls.fastForward.getter();
      if ((*(v331 + 48))(v312, 1, v332) != 1)
      {
        v306 = v331;
        v305 = v332;
        v307 = v329;
        (*(v331 + 32))(v329, v334, v332);
        goto LABEL_142;
      }

      sub_1000038A4(v334, &qword_100523BC0, &qword_100451AA0);
      goto LABEL_102;
    }

    if (v239 == v415)
    {
LABEL_140:

      v231 = v385;
      v232 = v388;
      v98 = v384;
      v112 = v322;
LABEL_96:
      v230 = v408;
LABEL_56:
      RoutingSessionConfiguration.context.getter();
      if ((v412)(v98, v231) != enum case for RoutingSessionConfiguration.Context.app(_:))
      {

        v230(v98, v231);
        goto LABEL_68;
      }

      (*(v232 + 96))(v98, v231);
      v233 = *v98;
      v234 = v98[1];
      v235 = sub_100037234();
      if (v418 == *v235 && v112 == *(v235 + 1))
      {

LABEL_77:
        v266 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
        v267 = swift_allocBox();
        v269 = v268;
        v270 = *(v266 + 48);
        (*(v406 + 16))(v268, v414, v405);
        type metadata accessor for RoutingInteraction.Action.ControlContext();
        sub_1002E7940();
        v271 = sub_10033D3E8(v233, v234);
        v273 = v272;

        *(v269 + v270) = sub_1001E789C(v271, v273);
        v441[0] = v267;
        memset(&v441[1], 0, 24);
        v442 = 7;
        sub_100272B38(v441, v429);
        sub_1002D5710(v413, type metadata accessor for HostedRoutingSession);
        v274 = v403;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for RoutingDecisionEngine.Decision(0);
        v125 = swift_allocObject();
        sub_1002D5640(v274, v125 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
        v198 = v125 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
        v275 = v429[1];
        *v198 = v429[0];
        *(v198 + 16) = v275;
        *(v198 + 32) = v429[2];
        v200 = v430;
        goto LABEL_51;
      }

      v265 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v265)
      {
        goto LABEL_77;
      }

LABEL_86:

LABEL_68:
      v249 = v378;
      v250 = v414;
      RoutingControl.type.getter();
      v251 = v409;
      v252 = v118(v249, v409);
      if (v252 == enum case for RoutingControl.RoutingControlType.favorite(_:) || v252 == enum case for RoutingControl.RoutingControlType.unfavorite(_:))
      {
        v162 = v413;
        v264 = v376;
        sub_10001D9AC(v413 + *(v417 + 28), v376, &qword_100523640, qword_100451520);
        if ((*(v374 + 48))(v264, 1, v375) != 1)
        {
          v281 = v264;
          v282 = v362;
          sub_1002D5640(v281, v362, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
          v283 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
          v419 = swift_allocBox();
          v285 = v284;
          v286 = *(v283 + 48);
          (*(v406 + 16))(v284, v250, v405);
          type metadata accessor for RoutingInteraction.Action.ControlContext();
          sub_1002E7940();
          v287 = sub_10025FAC0(*(v282 + 48));
          v289 = sub_10033D3E8(v287, v288);
          v291 = v290;

          *(v285 + v286) = sub_1001E789C(v289, v291);
          v443[0] = v419;
          memset(&v443[1], 0, 24);
          v444 = 7;
          sub_100272B38(v443, v431);
          sub_1002D5710(v162, type metadata accessor for HostedRoutingSession);
          v292 = v403;
          swift_storeEnumTagMultiPayload();
          type metadata accessor for RoutingDecisionEngine.Decision(0);
          v125 = swift_allocObject();
          sub_1002D5640(v292, v125 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
          v293 = v125 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
          v294 = v431[1];
          *v293 = v431[0];
          *(v293 + 16) = v294;
          *(v293 + 32) = v431[2];
          *(v293 + 48) = v432;
          sub_1002D5710(v282, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
          return v125;
        }

        sub_1000038A4(v264, &qword_100523640, qword_100451520);
        goto LABEL_61;
      }

      v410(v249, v251);
      v253 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
      v254 = swift_allocBox();
      v256 = v255;
      v257 = *(v253 + 48);
      (*(v406 + 16))(v255, v250, v405);
      type metadata accessor for RoutingInteraction.Action.ControlContext();
      *(v256 + v257) = sub_1001E789C(0, 0);
      v445[0] = v254;
      memset(&v445[1], 0, 24);
      v446 = 7;
      sub_100272B38(v445, v433);
      sub_1002D5710(v413, type metadata accessor for HostedRoutingSession);
      v258 = v403;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for RoutingDecisionEngine.Decision(0);
      v125 = swift_allocObject();
      sub_1002D5640(v258, v125 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
      v198 = v125 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
      v259 = v433[1];
      *v198 = v433[0];
      *(v198 + 16) = v259;
      *(v198 + 32) = v433[2];
      v200 = v434;
LABEL_51:
      *(v198 + 48) = v200;
      return v125;
    }

    if (v239 != enum case for RoutingControl.RoutingControlType.favorite(_:))
    {
      if (v239 == enum case for RoutingControl.RoutingControlType.unfavorite(_:))
      {

        v315 = v319;
        RoutingControls.unfavorite.getter();
        if ((*(v325 + 48))(v315, 1, v320) != 1)
        {
          v307 = v324;
          v306 = v325;
          v305 = v320;
          (*(v325 + 32))(v324, v319, v320);
          goto LABEL_142;
        }

        sub_1000038A4(v319, &qword_100523B30, &qword_100451A00);
LABEL_102:
        v125 = type metadata accessor for InternalRoutingError();
        sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
        swift_allocError();
        v155 = v300;
        v156 = &enum case for InternalRoutingError.unsupportedControl(_:);
LABEL_39:
        (*(*(v125 - 8) + 104))(v155, *v156, v125);
        swift_willThrow();
        goto LABEL_40;
      }

      if (v239 != enum case for RoutingControl.RoutingControlType.mute(_:))
      {
        goto LABEL_156;
      }

      goto LABEL_140;
    }

    v314 = v327;
    RoutingControls.favorite.getter();
    if ((*(v326 + 48))(v314, 1, v328) == 1)
    {

      sub_1000038A4(v327, &qword_100523B38, &qword_100451A08);
      goto LABEL_102;
    }

LABEL_151:
    v306 = v326;
    v307 = v323;
    v305 = v328;
    (*(v326 + 32))(v323, v327, v328);
    goto LABEL_142;
  }

  v114 = 0;
  v152 = v13 + v142;
  v112 = v321;
  v98 = v401;
  while (1)
  {
    if (v114 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_106;
    }

    sub_1002D56A8(v152, v98, type metadata accessor for HostedRoutingSession);
    v153 = *v98 == v418 && v98[1] == v322;
    if (v153 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v114;
    sub_1002D5710(v98, type metadata accessor for HostedRoutingSession);
    v152 += v12;
    if (v118 == v114)
    {

      v125 = type metadata accessor for InternalRoutingError();
      sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
      swift_allocError();
      v155 = v154;
      v156 = &enum case for InternalRoutingError.sessionNotFound(_:);
      goto LABEL_39;
    }
  }

  v185 = v398;
  sub_1002D5640(v98, v398, type metadata accessor for HostedRoutingSession);
  v186 = v404;
  sub_1002D5640(v185, v404, type metadata accessor for HostedRoutingSession);
  v187 = v399;
  RoutingControls.TVRemote.getter();
  v188 = type metadata accessor for RoutingControls.TVRemoteControl();
  v189 = *(v188 - 8);
  if ((*(v189 + 48))(v187, 1, v188) == 1)
  {
    sub_1000038A4(v187, &qword_100523B58, &qword_100451A40);
    v190 = type metadata accessor for InternalRoutingError();
    sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
    swift_allocError();
    (*(*(v190 - 8) + 104))(v191, enum case for InternalRoutingError.unsupportedControl(_:), v190);
    swift_willThrow();
    v125 = type metadata accessor for HostedRoutingSession;
    sub_1002D5710(v186, type metadata accessor for HostedRoutingSession);
    v157 = v413;
    goto LABEL_62;
  }

  v201 = v391;
  RoutingControls.TVRemoteControl.context.getter();
  (*(v189 + 8))(v187, v188);
  v202 = v186;
  v203 = v393;
  v204 = v392;
  v205 = v394;
  (*(v393 + 32))(v392, v201, v394);
  v206 = v390;
  sub_1002D56A8(v202, v390, type metadata accessor for HostedRoutingSession);
  v207 = sub_1001BC5A8(&qword_100524270, &unk_100458150);
  v208 = swift_allocBox();
  v210 = v209;
  v211 = *(v207 + 48);
  (*(v406 + 16))(v209, v414, v405);
  (*(v203 + 16))(v210 + v211, v204, v205);
  v435[0] = v208;
  memset(&v435[1], 0, 24);
  v436 = 11;
  v212 = sub_100272B38(v435, v423);
  (*(v203 + 8))(v204, v205, v212);
  sub_1002D5710(v404, type metadata accessor for HostedRoutingSession);
  sub_1002D5710(v413, type metadata accessor for HostedRoutingSession);
  v213 = v403;
  sub_1002D5640(v206, v403, type metadata accessor for HostedRoutingSession);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RoutingDecisionEngine.Decision(0);
  v125 = swift_allocObject();
  sub_1002D5640(v213, v125 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
  v214 = v125 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
  v215 = v423[1];
  *v214 = v423[0];
  *(v214 + 16) = v215;
  *(v214 + 32) = v423[2];
  *(v214 + 48) = v424;
  return v125;
}