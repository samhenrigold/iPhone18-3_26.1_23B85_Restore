id sub_10001E0D0()
{
  v1 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___hearingAidHelper;
  v2 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___hearingAidHelper);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___hearingAidHelper);
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = objc_allocWithZone(RoutingItemDataSourceHearingAidHelper);
    v12[4] = sub_100286BD0;
    v12[5] = v5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100003D98;
    v12[3] = &unk_1004C73F0;
    v7 = _Block_copy(v12);

    v8 = [v6 initWithTargetQueue:v4 hearingAidDidChangeHandler:v7];
    _Block_release(v7);

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_10001E220(uint64_t a1)
{
  v1 = *(a1 + 16) >> 11;
  if (v1 <= 0x10)
  {
    return v1;
  }

  else
  {
    return (*a1 + 17);
  }
}

uint64_t sub_10001E23C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingItems;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1000180A0(v4);
}

_BYTE *sub_10001E2B4(uint64_t a1)
{
  result = sub_100015D10();
  v3 = 0;
  v4 = result + 64;
  v24 = result;
  v5 = 1 << result[32];
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 8);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;
  while (v7)
  {
LABEL_13:
    v11 = (*(v24 + 6) + ((v3 << 10) | (16 * __clz(__rbit64(v7)))));
    v13 = *v11;
    v12 = v11[1];
    if (!*(a1 + 16))
    {

LABEL_24:
      v20 = *(v25 + 16);

      v21 = sub_10000698C(v13, v12);
      v23 = v22;

      if (v23)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_100035C9C();
        }

        sub_10021A064(v21, v20);
      }

      *(v25 + 16) = v20;
      goto LABEL_7;
    }

    Hasher.init(_seed:)();

    String.hash(into:)();
    v14 = Hasher._finalize()();
    v15 = -1 << *(a1 + 32);
    v16 = v14 & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_24;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = (*(a1 + 48) + 16 * v16);
      v19 = *v18 == v13 && v18[1] == v12;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

LABEL_7:
    v7 &= v7 - 1;
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *&v4[8 * v10];
    ++v3;
    if (v7)
    {
      v3 = v10;
      goto LABEL_13;
    }
  }
}

uint64_t sub_10001E4EC(void *a1, void *a2)
{
  v4 = type metadata accessor for RoutingItem.Attributes();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
  __chkstk_darwin(v8 - 8);
  v54 = &v48 - v9;
  v52 = sub_1001BC5A8(&qword_1005241F0, &qword_1004550D8);
  __chkstk_darwin(v52);
  v53 = &v48 - v10;
  v11 = type metadata accessor for RoutingItem.SelectionIndicator();
  v55 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v48 - v15;
  v17 = sub_1001BC5A8(&qword_1005241F8, &qword_1004550E0);
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  v20 = a1[3];
  v21 = a2[3];
  if (v20)
  {
    if (!v21 || (a1[2] != a2[2] || v20 != v21) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (v21)
  {
    goto LABEL_44;
  }

  if ((a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[6] != a2[6] || a1[7] != a2[7]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  v49 = v7;
  v50 = v5;
  v48 = v4;
  v51 = type metadata accessor for HostedRoutingItem(0);
  v22 = v51[8];
  v23 = *(v17 + 48);
  sub_10001D9AC(a1 + v22, v19, &unk_100524E90, &unk_1004519B0);
  sub_10001D9AC(a2 + v22, &v19[v23], &unk_100524E90, &unk_1004519B0);
  v24 = v55;
  v25 = *(v55 + 48);
  if (v25(v19, 1, v11) == 1)
  {
    if (v25(&v19[v23], 1, v11) == 1)
    {
      sub_1000038A4(v19, &unk_100524E90, &unk_1004519B0);
      goto LABEL_24;
    }

LABEL_21:
    v26 = &qword_1005241F8;
    v27 = &qword_1004550E0;
LABEL_22:
    sub_1000038A4(v19, v26, v27);
    goto LABEL_44;
  }

  sub_10001D9AC(v19, v16, &unk_100524E90, &unk_1004519B0);
  if (v25(&v19[v23], 1, v11) == 1)
  {
    (*(v24 + 8))(v16, v11);
    goto LABEL_21;
  }

  (*(v24 + 32))(v13, &v19[v23], v11);
  sub_100017F84(&qword_100524208, &type metadata accessor for RoutingItem.SelectionIndicator, &protocol conformance descriptor for RoutingItem.SelectionIndicator);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v24 + 8);
  v29(v13, v11);
  v29(v16, v11);
  sub_1000038A4(v19, &unk_100524E90, &unk_1004519B0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_24:
  v30 = v51;
  if (*(a1 + v51[9]) != *(a2 + v51[9]) || *(a1 + v51[10]) != *(a2 + v51[10]) || *(a1 + v51[11]) != *(a2 + v51[11]) || (sub_100256D38(*(a1 + v51[12]), *(a2 + v51[12])) & 1) == 0)
  {
    goto LABEL_44;
  }

  v31 = v30[13];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    v37 = v49;
    v36 = v50;
    v38 = v54;
    if (!v35)
    {
      return v35 & 1;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    v37 = v49;
    v36 = v50;
    v38 = v54;
    if (v35)
    {
      goto LABEL_44;
    }
  }

  if (*(a1 + v30[14]) != *(a2 + v30[14]))
  {
LABEL_44:
    LOBYTE(v35) = 0;
    return v35 & 1;
  }

  v39 = v30[15];
  v19 = v53;
  v40 = *(v52 + 48);
  sub_10001D9AC(a1 + v39, v53, &qword_100523AE8, &unk_100457500);
  sub_10001D9AC(a2 + v39, &v19[v40], &qword_100523AE8, &unk_100457500);
  v41 = *(v36 + 48);
  v42 = v48;
  if (v41(v19, 1, v48) == 1)
  {
    if (v41(&v19[v40], 1, v42) == 1)
    {
      sub_1000038A4(v19, &qword_100523AE8, &unk_100457500);
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  sub_10001D9AC(v19, v38, &qword_100523AE8, &unk_100457500);
  if (v41(&v19[v40], 1, v42) == 1)
  {
    (*(v36 + 8))(v38, v42);
LABEL_40:
    v26 = &qword_1005241F0;
    v27 = &qword_1004550D8;
    goto LABEL_22;
  }

  (*(v36 + 32))(v37, &v19[v40], v42);
  sub_100017F84(&qword_100524200, &type metadata accessor for RoutingItem.Attributes, &protocol conformance descriptor for RoutingItem.Attributes);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v36 + 8);
  v44(v37, v42);
  v44(v38, v42);
  sub_1000038A4(v19, &qword_100523AE8, &unk_100457500);
  if ((v43 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_42:
  v45 = v51;
  v46 = v51[16];
  if ((sub_1000184A4(*(a1 + v46), *(a1 + v46 + 8), *(a1 + v46 + 16), *(a2 + v46), *(a2 + v46 + 8), *(a2 + v46 + 16)) & 1) == 0)
  {
    goto LABEL_44;
  }

  LOBYTE(v35) = *(a1 + v45[17]) ^ *(a2 + v45[17]) ^ 1;
  return v35 & 1;
}

uint64_t sub_10001ECB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingItem(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_10001D948(v13, v10);
        sub_10001D948(v14, v7);
        sub_100017FCC(&qword_100523CA0, type metadata accessor for HostedRoutingItem, &unk_100452330);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10001DA14(v7);
        sub_10001DA14(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_10001EF6C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

Swift::Int sub_10001F384(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_100521B10, &unk_100450000);
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

uint64_t sub_10001FC9C@<X0>(uint64_t *a2@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_10001FCC8(void *a1, void *a2)
{
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1000203F8;
  applier[3] = &unk_1004C0B68;
  v5 = a1;
  v3 = v5;
  xpc_dictionary_apply(a2, applier);
}

void sub_10001FD5C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = qos_class_self();
  qos_class = dispatch_queue_get_qos_class(v9, 0);
  v13 = v9;
  v14 = v13;
  if (qos_class < v11)
  {
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = qos_class_self();
    v17 = dispatch_queue_attr_make_with_qos_class(v15, v16, 0);
    v14 = dispatch_queue_create_with_target_V2(0, v17, v13);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001FEC0;
  handler[3] = &unk_1004BE2D0;
  v20 = v10;
  v18 = v10;
  xpc_connection_send_message_with_reply(v7, v8, v14, handler);
}

uint64_t sub_10001FEC0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *sub_100020418(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100020E0C(i, v5);
    sub_100018D7C(0, &qword_1005241C8, MRCommandInfo_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_100020664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002067C(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 32) playbackQueue];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100020790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000207A8(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_isPlaying];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_1000207E8()
{
  v0 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  RoutingSession.NowPlayingInfo.PlaybackInfo.playbackState.getter();
  (*(v1 + 104))(v4, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:), v0);
  v7 = static RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_100020E0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

NSString *__cdecl sub_100020E68(id a1, MRAVEndpoint *a2)
{
  v2 = a2;
  v3 = [(MRAVEndpoint *)v2 localizedName];
  v4 = [(MRAVEndpoint *)v2 uniqueIdentifier];

  v5 = [NSString stringWithFormat:@"%@ - %@", v3, v4];

  return v5;
}

void sub_100020EFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 msv_map:&stru_1004C13D8];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRRC] addEndpointsModifiedCallback: %@", &v9, 0xCu);
  }

  v6 = [v3 msv_compactMap:&stru_1004C13F8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained recommender];
  [v8 updateRouteCandidates:v6];
}

MRIRRoute *__cdecl sub_100021018(id a1, MRAVEndpoint *a2)
{
  v2 = a2;
  if ([(MRAVEndpoint *)v2 shouldDonate])
  {
    v3 = [MRIRRoute routeWithEndpoint:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *sub_10002107C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
    *(v0 + 24) = _swiftEmptyArrayStorage;
  }

  return v1;
}

unint64_t sub_1000210BC()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100021264();
  v5 = *v4;
  *v3 = *v4;
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v5)
  {
    result = sub_10002107C();
    v0 = result;
    if (!(result >> 62))
    {
      v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_12:

      return sub_10031B8F4();
    }
  }

  else
  {
    __break(1u);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v8 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v0 + 8 * i + 32);
      }

      sub_100028D64(v10);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t *sub_100021264()
{
  if (qword_10052BAB0 != -1)
  {
    swift_once();
  }

  return &qword_1005384B8;
}

id sub_100021404(id a1, MRAVDistantEndpoint *a2)
{
  v2 = a2;
  if (([(MRAVDistantEndpoint *)v2 isLocalEndpoint]& 1) != 0)
  {
    v3 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

uint64_t sub_100021468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSession(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v21 - v9);
  v11 = sub_1001BC5A8(&qword_100524178, &unk_1004584F0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10001D9AC(a1, &v21 - v13, &qword_100523620, &unk_1004511D0);
  sub_10001D9AC(a2, &v14[v15], &qword_100523620, &unk_1004511D0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_1000038A4(v14, &qword_100523620, &unk_1004511D0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_10001D9AC(v14, v10, &qword_100523620, &unk_1004511D0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_10002181C(v10, type metadata accessor for HostedRoutingSession);
LABEL_6:
    sub_1000038A4(v14, &qword_100524178, &unk_1004584F0);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  sub_100032E08(&v14[v15], v7, type metadata accessor for HostedRoutingSession);
  v17 = sub_10002E020(v10, v7);
  sub_10002181C(v7, type metadata accessor for HostedRoutingSession);
  sub_10002181C(v10, type metadata accessor for HostedRoutingSession);
  sub_1000038A4(v14, &qword_100523620, &unk_1004511D0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v18 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  if ((sub_10002E77C(*(a1 + *(v18 + 20)), *(a2 + *(v18 + 20)), type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession, sub_10002E020, type metadata accessor for HostedRoutingSession) & 1) == 0)
  {
    goto LABEL_10;
  }

  v19 = sub_10002E77C(*(a1 + *(v18 + 24)), *(a2 + *(v18 + 24)), type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession, sub_10002E020, type metadata accessor for HostedRoutingSession);
  return v19 & 1;
}

uint64_t sub_10002181C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002187C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000218DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100021940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for HostedRoutingSession(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  sub_10001CECC(a3, a4, &qword_100523620, &unk_1004511D0);
  result = type metadata accessor for HostedRoutingSessionSnapshot(0);
  *(a4 + *(result + 20)) = a1;
  *(a4 + *(result + 24)) = a2;
  return result;
}

uint64_t sub_1000219E8(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v5 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for RoutingSessionConfiguration();
  v7 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001BC5A8(&qword_100523C30, &qword_100451B00);
  __chkstk_darwin(v9 - 8);
  v50 = &v46 - v10;
  v11 = sub_1001BC5A8(&qword_100525F78, &qword_100458A90);
  __chkstk_darwin(v11 - 8);
  v49 = &v46 - v12;
  v48 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v63 = *(v48 - 8);
  v13 = __chkstk_darwin(v48);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v14;
  __chkstk_darwin(v13);
  v60 = &v46 - v16;
  v17 = sub_1001BC5A8(&qword_100526730, &unk_100458510);
  v70[3] = v17;
  v70[4] = sub_10000462C(&qword_100526738, &qword_100526730, &unk_100458510, &protocol conformance descriptor for [A]);
  v70[0] = a2;
  v18 = sub_1000326D8(v70, v17);
  __chkstk_darwin(v18);
  v20 = (&v46 - v19);
  (*(v21 + 16))(&v46 - v19);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = sub_1000397B4(v67);
  *v22 = *v20;
  v22[1] = 0;

  sub_100022650(v67, AssociatedTypeWitness);
  dispatch thunk of IteratorProtocol.next()();
  v23 = aBlock[0];
  if (aBlock[0])
  {
    v55 = v66;
    v54 = (v3 + 8);
    v53 = (v5 + 8);
    v47 = (v63 + 56);
    v46 = (v7 + 16);
    do
    {
      v29 = v60;
      sub_10002ADF8(v62, v60, type metadata accessor for HostedRoutingSessionSnapshot);
      sub_10002ADF8(v29, v15, type metadata accessor for HostedRoutingSessionSnapshot);
      v30 = (*(v63 + 80) + 24) & ~*(v63 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = v23;
      sub_10002AF68(v29, v31 + v30, type metadata accessor for HostedRoutingSessionSnapshot);
      v32 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
      v33 = *(v23 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);

      v34 = v33;
      v35 = *sub_100021264();

      if (v34 == v35)
      {
        v24 = *(v23 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
        ObjectType = swift_getObjectType();
        v26 = v50;
        sub_10002ADF8(v15, v50, type metadata accessor for HostedRoutingSessionSnapshot);
        (*v47)(v26, 0, 1, v48);
        v27 = v51;
        (*v46)(v51, v23 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v52);
        swift_unknownObjectRetain();
        v28 = v49;
        sub_100265398(v26, v27, v49);
        (*(v24 + 8))(v28, ObjectType, v24);

        swift_unknownObjectRelease();
        sub_1000038A4(v28, &qword_100525F78, &qword_100458A90);
        sub_10002AC54(v15, type metadata accessor for HostedRoutingSessionSnapshot);
      }

      else
      {
        v36 = *(v23 + v32);
        v37 = swift_allocObject();
        *(v37 + 16) = sub_100331258;
        *(v37 + 24) = v31;
        v66[2] = sub_1002253D8;
        v66[3] = v37;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v66[0] = sub_100003D98;
        v66[1] = &unk_1004CE5B8;
        v38 = _Block_copy(aBlock);
        v39 = v36;

        v40 = v15;
        v41 = v56;
        static DispatchQoS.unspecified.getter();
        v64 = _swiftEmptyArrayStorage;
        sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1001BC5A8(&unk_100522280, &unk_10044F590);
        sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
        v42 = v58;
        v43 = v59;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v38);

        (*v54)(v42, v43);
        v44 = v41;
        v15 = v40;
        (*v53)(v44, v57);
        sub_10002AC54(v40, type metadata accessor for HostedRoutingSessionSnapshot);
      }

      sub_100022650(v67, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      v23 = aBlock[0];
    }

    while (aBlock[0]);
  }

  sub_100026A44(v67);
  return sub_100026A44(v70);
}

uint64_t sub_100022320()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022358()
{
  v1 = *(type metadata accessor for HostedRoutingSessionSnapshot(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  v6 = type metadata accessor for HostedRoutingSession(0);
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {

    v7 = v5 + v6[7];
    v8 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {

      sub_1002488FC(*(v7 + 48), *(v7 + 56), *(v7 + 60));

      v9 = *(v8 + 36);
      v10 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
      (*(*(v10 - 8) + 8))(v7 + v9, v10);
      v11 = *(v8 + 40);
      v12 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
      (*(*(v12 - 8) + 8))(v7 + v11, v12);
    }

    v13 = v6[8];
    v14 = type metadata accessor for RoutingControls();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);

    v15 = v6[13];
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
    if (*(v5 + v6[16] + 8))
    {
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100022650(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1000226A0(uint64_t a1)
{
  v104 = a1;
  v2 = type metadata accessor for ExecutionPriority();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v81[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = type metadata accessor for Logger();
  v105 = *(v102 - 8);
  v6 = __chkstk_darwin(v102);
  v96 = &v81[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v98 = &v81[-v9];
  __chkstk_darwin(v8);
  v101 = &v81[-v10];
  v103 = type metadata accessor for IPCClientMessage();
  v106 = *(v103 - 8);
  v11 = __chkstk_darwin(v103);
  v95 = &v81[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v81[-v14];
  v16 = __chkstk_darwin(v13);
  v100 = &v81[-v17];
  __chkstk_darwin(v16);
  v19 = &v81[-v18];
  v20 = sub_1001BC5A8(&qword_1005273C0, &unk_100459098);
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v97 = &v81[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v26 = &v81[-v25];
  if ((*(*v1 + 192))(v24))
  {
    v85 = v5;
    v86 = v3;
    v87 = v2;
    v94 = v1;
    v28 = v106 + 16;
    v27 = *(v106 + 16);
    v30 = v103;
    v29 = v104;
    v27(v19, v104, v103);
    sub_10003B370(&qword_1005273C8, &type metadata accessor for IPCClientMessage, &protocol conformance descriptor for IPCClientMessage);
    sub_10003B370(&qword_1005273D0, &type metadata accessor for IPCClientMessage, &protocol conformance descriptor for IPCClientMessage);
    IPCMessage.init(message:)();
    v31 = sub_100038EF0();
    v32 = *(v105 + 16);
    v33 = v102;
    v89 = v31;
    v90 = v105 + 16;
    v88 = v32;
    v32(v101);
    v91 = v27;
    v92 = v28;
    v27(v100, v29, v30);
    v34 = v94;
    v35 = *(v21 + 16);
    v36 = v97;
    v98 = v26;
    v35(v97, v26, v20);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v39 = os_log_type_enabled(v37, v38);
    v93 = v21;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v83 = v37;
      v41 = v40;
      v84 = swift_slowAlloc();
      v107[0] = v84;
      *v41 = 136315650;
      v42 = *(*v34 + 320);
      v82 = v38;
      v43 = v42();
      v45 = sub_10002C9C8(v43, v44, v107);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      sub_10003B370(&qword_100527438, &type metadata accessor for IPCClientMessage, &protocol conformance descriptor for IPCClientMessage);
      v46 = v100;
      v47 = v103;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v100 = *(v106 + 8);
      (v100)(v46, v47);
      v51 = sub_10002C9C8(v48, v50, v107);

      *(v41 + 14) = v51;
      *(v41 + 22) = 2080;
      v52 = v85;
      IPCMessage.priority.getter();
      sub_10003B370(&unk_100527440, &type metadata accessor for ExecutionPriority, &protocol conformance descriptor for ExecutionPriority);
      v53 = v36;
      v54 = v87;
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      (*(v86 + 8))(v52, v54);
      v97 = *(v21 + 8);
      (v97)(v53, v20);
      v58 = sub_10002C9C8(v55, v57, v107);
      v33 = v102;

      *(v41 + 24) = v58;
      v59 = v83;
      _os_log_impl(&_mh_execute_header, v83, v82, "[%s] sendMessage - message: %s, priority: %s", v41, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v97 = *(v21 + 8);
      (v97)(v36, v20);
      v77 = v100;
      v100 = *(v106 + 8);
      (v100)(v77, v103);
    }

    v60 = v101;
    v101 = *(v105 + 8);
    (v101)(v60, v33);
    sub_10000462C(&unk_1005273D8, &qword_1005273C0, &unk_100459098, &protocol conformance descriptor for IPCMessage<A>);
    v78 = v98;
    result = dispatch thunk of XPCSession.send<A>(_:)();
    v79 = *(v34 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_oneWayMessageCount);
    v80 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      __break(1u);
    }

    else
    {
      *(v34 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_oneWayMessageCount) = v80;
      if (*(v34 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) == 2 && (type metadata accessor for Preferences(), v80 == static Preferences.ipcCheckInInterval.getter()))
      {
        sub_100342DF8();

        return (v97)(v78, v20);
      }

      else
      {
        (v97)(v78, v20);
      }
    }
  }

  else
  {
    v61 = sub_100038EF0();
    v62 = v105;
    v63 = v102;
    (*(v105 + 16))(v98, v61, v102);
    v64 = v106;
    v65 = v103;
    (*(v106 + 16))(v15, v104, v103);

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v107[0] = v104;
      *v68 = 136315394;
      v69 = (*(*v1 + 320))();
      v71 = sub_10002C9C8(v69, v70, v107);

      *(v68 + 4) = v71;
      *(v68 + 12) = 2080;
      sub_10003B370(&qword_100527438, &type metadata accessor for IPCClientMessage, &protocol conformance descriptor for IPCClientMessage);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      (*(v64 + 8))(v15, v65);
      v75 = sub_10002C9C8(v72, v74, v107);

      *(v68 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v66, v67, "[%s] sendMessage - failed to send message: %s, session is gone, this should not be possible", v68, 0x16u);
      swift_arrayDestroy();

      return (*(v105 + 8))(v98, v63);
    }

    else
    {

      (*(v64 + 8))(v15, v65);
      return (*(v62 + 8))(v98, v63);
    }
  }

  return result;
}

uint64_t sub_10002349C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

unint64_t sub_10002351C()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_7;
  }

  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_10001BF64(v9), (v3 & 1) == 0))
  {

    sub_10001BF10(v9);
LABEL_7:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_8;
  }

  sub_100020E0C(*(v1 + 56) + 32 * v2, &v10);
  sub_10001BF10(v9);

  if (*(&v11 + 1))
  {
    return sub_1000038A4(&v10, &qword_100522890, &qword_100450610);
  }

LABEL_8:
  sub_1000038A4(&v10, &qword_100522890, &qword_100450610);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  result = sub_10002107C();
  v5 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v6 = result;
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_11:
      if (v6 < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v6; ++i)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v8 = *(v5 + 8 * i + 32);
        }

        sub_100028D64(v8);
      }
    }
  }

  sub_10031B8F4();
}

id sub_100024358(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 44));
  *(*(a1 + 32) + 40) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 44));
  v2 = *(a1 + 32);

  return [v2 reloadDeviceInfoImmediately];
}

void sub_100024AF4(uint64_t a1)
{
  v2 = nameOfHearingDeviceReachableForAudioHandoff();
  v3 = [*(a1 + 32) targetQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100037FDC;
  v5[3] = &unk_1004B68F0;
  v5[4] = *(a1 + 32);
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, v5);
}

uint64_t sub_100024BB0@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v6 = v5;
  v129 = a3;
  v122 = a2;
  v128 = a1;
  v127 = a5;
  v116 = v6;
  v113[1] = *v6;
  v8 = type metadata accessor for Date();
  __chkstk_darwin(v8 - 8);
  v126 = v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001BC5A8(&qword_100523B38, &qword_100451A08);
  __chkstk_darwin(v10 - 8);
  v115 = v113 - v11;
  v12 = sub_1001BC5A8(&qword_100523B30, &qword_100451A00);
  __chkstk_darwin(v12 - 8);
  v114 = v113 - v13;
  v125 = type metadata accessor for RoutingControls();
  v124 = *(v125 - 8);
  v14 = __chkstk_darwin(v125);
  v123 = v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v130 = v113 - v16;
  v133 = type metadata accessor for HostedRoutingItem(0);
  v117 = *(v133 - 1);
  v17 = __chkstk_darwin(v133);
  v19 = v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v113 - v20;
  v22 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v23 = __chkstk_darwin(v22 - 8);
  v120 = v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v132 = v113 - v26;
  __chkstk_darwin(v25);
  v28 = (v113 - v27);
  if (a4)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  v121 = [objc_opt_self() sharedLocalEndpointForRoutingContextWithUID:v29];

  v30 = objc_opt_self();
  v31 = [v30 server];
  v32 = [v31 nowPlayingServer];

  v33 = [v32 localActivePlayerClient];
  if (v33 && (v34 = [v33 supportedRemoteControlCommands], v33, v34))
  {
    v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v119 = sub_100020418(v35);
  }

  else
  {
    v119 = 0;
  }

  v36 = [v30 server];
  v37 = [v36 nowPlayingServer];

  v38 = [v37 localOriginClient];
  v39 = [v30 server];
  v40 = [v39 nowPlayingServer];

  v41 = [v40 localActivePlayerClient];
  if (v129)
  {
    v42 = String._bridgeToObjectiveC()();
    v43 = [v38 existingNowPlayingClientForDisplayID:v42];

    v44 = [v43 activePlayerClient];
    v41 = v44;
  }

  v129 = v38;
  v122 = v41;
  sub_100026A90(v38, v41, v28);
  v45 = v121;
  LODWORD(v121) = [v45 canModifyGroupMembership];
  v46 = [v45 outputDevices];
  if (v46)
  {
    v47 = v46;
    sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
    v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v48 = _swiftEmptyArrayStorage;
  }

  v131 = v28;
  v49 = v45;
  v50 = sub_10025B508(v137, v49, v48);
  v118 = v49;
  v51 = [v49 volume];
  v53 = v52;
  v54 = v128[2];
  if (v54)
  {
    v55 = (*(v117 + 80) + 32) & ~*(v117 + 80);
    v56 = v128 + v55;
    v57 = *(v117 + 72);
    v58 = _swiftEmptyArrayStorage;
    v59 = v133;
    do
    {
      sub_10002ADF8(v56, v21, type metadata accessor for HostedRoutingItem);
      if (v21[*(v59 + 36)] == 1)
      {
        sub_10002AF68(v21, v19, type metadata accessor for HostedRoutingItem);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = v58;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10002A42C(0, v58[2] + 1, 1);
          v59 = v133;
          v58 = v135;
        }

        v62 = v58[2];
        v61 = v58[3];
        if (v62 >= v61 >> 1)
        {
          sub_10002A42C((v61 > 1), v62 + 1, 1);
          v59 = v133;
          v58 = v135;
        }

        v58[2] = v62 + 1;
        v51 = sub_10002AF68(v19, v58 + v55 + v62 * v57, type metadata accessor for HostedRoutingItem);
      }

      else
      {
        v51 = sub_10002AC54(v21, type metadata accessor for HostedRoutingItem);
      }

      v56 += v57;
      --v54;
    }

    while (v54);
  }

  else
  {
    v58 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v51);
  v63 = v131;
  v111 = v131;
  v64 = sub_10002A44C(sub_10002AE60, &v110, v58);

  v65 = sub_100037234();
  v66 = *v65;
  v67 = v65[1];
  v68 = v132;
  sub_10001D9AC(v63, v132, &qword_100523640, qword_100451520);
  v69 = v119;

  v70 = v118;

  v128 = v70;
  sub_10025C7D0(v66, v67, v69, v70, v68, v130);
  v71 = v120;
  sub_10001D9AC(v63, v120, &qword_100523640, qword_100451520);
  v72 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v73 = (*(*(v72 - 8) + 48))(v71, 1, v72);
  v133 = v64;
  if (v73 == 1)
  {

    sub_1000038A4(v71, &qword_100523640, qword_100451520);
LABEL_28:
    v77 = *v65;
    v78 = v65[1];
    v120 = v77;
    v119 = v78;
    sub_10001D9AC(v63, v132, &qword_100523640, qword_100451520);

    v79 = [v129 lastPlayingDateSnapshot];
    v80 = v126;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v81 = v128;
    LODWORD(v118) = [v128 supportsVisualProxyGroupPlayer];

    v82 = v124;
    v83 = v123;
    v84 = v130;
    v85 = v125;
    (*(v124 + 16))(v123, v130, v125);
    v86 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
    v87 = static TimeoutError.__derived_enum_equals(_:_:)();
    v88 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
    v89 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
    LOBYTE(v135) = 0;
    sub_10025B560(v120, v119, v133, v132, v80, v121 ^ 1, v86 & 1, v87 & 1, v127, v118, v88 & 1, v89 & 1, v109, v53, 0, v83, v137, 0, 0);

    (*(v82 + 8))(v84, v85);
    return sub_1000038A4(v131, &qword_100523640, qword_100451520);
  }

  v74 = *(v71 + 48);
  v75 = *(v71 + 56);
  v76 = *(v71 + 60);
  sub_100248888(v74, v75, *(v71 + 60));
  sub_10002AC54(v71, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  if (v76)
  {
    sub_1002488FC(v74, v75, v76);

    goto LABEL_28;
  }

  sub_1002488FC(v74, v75, 0);
  v91 = sub_100301054();
  v92 = *v65;
  v93 = v65[1];
  v94 = *(*v91 + 200);

  v95 = v94(v92, v93);

  if (v95 > 1)
  {
    if (v95 == 2 || v95 == 3)
    {

      v63 = v131;
      goto LABEL_28;
    }
  }

  else
  {
    if (!v95)
    {

      v101 = v114;
      RoutingControls.UnfavoriteControl.init(sessionIdentifier:isDisabled:)();
      v102 = type metadata accessor for RoutingControls.UnfavoriteControl();
      (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
      RoutingControls.unfavorite.setter();
      v63 = v131;
      goto LABEL_28;
    }

    if (v95 == 1)
    {

      v96 = v115;
      RoutingControls.FavoriteControl.init(sessionIdentifier:isDisabled:)();
      v97 = type metadata accessor for RoutingControls.FavoriteControl();
      (*(*(v97 - 8) + 56))(v96, 0, 1, v97);
      RoutingControls.favorite.setter();
      v63 = v131;
      goto LABEL_28;
    }
  }

  v98 = *(v95 + 16);
  switch(v98)
  {
    case 0:

      v103 = v114;
      RoutingControls.UnfavoriteControl.init(sessionIdentifier:isDisabled:)();
      v104 = type metadata accessor for RoutingControls.UnfavoriteControl();
      (*(*(v104 - 8) + 56))(v103, 0, 1, v104);
      RoutingControls.unfavorite.setter();
      goto LABEL_43;
    case 1:

      v99 = v115;
      RoutingControls.FavoriteControl.init(sessionIdentifier:isDisabled:)();
      v100 = type metadata accessor for RoutingControls.FavoriteControl();
      (*(*(v100 - 8) + 56))(v99, 0, 1, v100);
      RoutingControls.favorite.setter();
LABEL_43:
      sub_10026A190(v95);
      v63 = v131;
      goto LABEL_28;
    case 2:

      goto LABEL_43;
  }

  v135 = 0;
  v136 = 0xE000000000000000;

  _StringGuts.grow(_:)(76);
  v105._countAndFlagsBits = 91;
  v105._object = 0xE100000000000000;
  String.append(_:)(v105);
  v106._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v106);

  v107._object = 0x8000000100440470;
  v107._countAndFlagsBits = 0xD000000000000047;
  String.append(_:)(v107);
  v134 = v95;
  sub_10026A1B0();
  v108._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v108);

  LODWORD(v112) = 0;
  v111 = 976;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100025AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v101 = a2;
  v5 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v5 - 8);
  v113 = &v94 - v6;
  v112 = type metadata accessor for HostedRoutingSourceSession(0);
  *&v104 = *(v112 - 8);
  v7 = __chkstk_darwin(v112);
  v110 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v114 = &v94 - v10;
  __chkstk_darwin(v9);
  v107 = &v94 - v11;
  v111 = type metadata accessor for RoutingSessionConfiguration.Context();
  v103 = *(v111 - 8);
  v12 = __chkstk_darwin(v111);
  v109 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v102 = &v94 - v14;
  v15 = type metadata accessor for RoutingSessionConfiguration();
  __chkstk_darwin(v15);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v19;
  v100 = v18;
  v20 = *(v19 + 16);
  v105 = a1;
  v20(v17, a1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration);
  v108 = v17;
  v21 = sub_10002CC04();

  v22 = sub_10002EAC8(v21);
  v98 = 0;

  v106 = v3;

  v24 = v22[2];
  if (!v24)
  {
    v27 = _swiftEmptyArrayStorage;
LABEL_25:
    v47 = v107;
    v48 = v111;
    v49 = v102;
    v50 = v103;

    v51 = 0;
    v52 = 0;
    goto LABEL_27;
  }

  v25 = 0;
  v26 = v22 + 5;
  v27 = _swiftEmptyArrayStorage;
  do
  {
    if (v25 >= v22[2])
    {
      goto LABEL_49;
    }

    v28 = *v26;
    ObjectType = swift_getObjectType();
    v30 = *(v28 + 56);
    swift_unknownObjectRetain();
    v31 = v30(ObjectType, v28);
    result = swift_unknownObjectRelease();
    v32 = *(v31 + 16);
    v33 = v27[2];
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v34 <= v27[3] >> 1)
    {
      if (!*(v31 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v36 = v33 + v32;
      }

      else
      {
        v36 = v33;
      }

      v27 = sub_100026868(isUniquelyReferenced_nonNull_native, v36, 1, v27, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
      if (!*(v31 + 16))
      {
LABEL_3:

        if (v32)
        {
          goto LABEL_51;
        }

        goto LABEL_4;
      }
    }

    v37 = (v27[3] >> 1) - v27[2];
    result = type metadata accessor for HostedRoutingItem(0);
    if (v37 < v32)
    {
      goto LABEL_52;
    }

    swift_arrayInitWithCopy();

    if (v32)
    {
      v38 = v27[2];
      v39 = __OFADD__(v38, v32);
      v40 = v38 + v32;
      if (v39)
      {
        goto LABEL_54;
      }

      v27[2] = v40;
    }

LABEL_4:
    ++v25;
    v26 += 2;
  }

  while (v24 != v25);
  v41 = 0;
  v42 = v22 + 5;
  while (1)
  {
    if (v41 >= v22[2])
    {
      goto LABEL_53;
    }

    v43 = *v42;
    v44 = swift_getObjectType();
    v45 = *(v43 + 64);
    swift_unknownObjectRetain();
    v45(v44, v43);
    if (v46)
    {
      break;
    }

    result = swift_unknownObjectRelease();
    ++v41;
    v42 += 2;
    if (v24 == v41)
    {
      goto LABEL_25;
    }
  }

  v51 = (v45)(v44, v43);
  v52 = v53;
  swift_unknownObjectRelease();
  v47 = v107;
  v48 = v111;
  v49 = v102;
  v50 = v103;
LABEL_27:
  RoutingSessionConfiguration.context.getter();
  if ((*(v50 + 88))(v49, v48) == enum case for RoutingSessionConfiguration.Context.app(_:))
  {
    (*(v50 + 96))(v49, v48);
    v54 = *v49;
    v55 = *(v49 + 1);
  }

  else
  {
    (*(v50 + 8))(v49, v48);
    v54 = 0;
    v55 = 0;
  }

  v97 = v51;
  v56 = v106;
  sub_100024BB0(v27, v54, v55, v52, v47);

  v57 = *sub_100028BB8();
  v103 = (*(v57 + 440))();

  v58 = v47;
  v59 = *(**(v56 + 88) + 680);

  v95 = v59(v60);
  v96 = v61;

  v102 = v52;
  sub_1001BC5A8(&qword_100525748, &unk_100457D90);
  v62 = *(v104 + 72);
  v63 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v64 = swift_allocObject();
  v104 = xmmword_10044EC70;
  *(v64 + 16) = xmmword_10044EC70;
  sub_10002ADF8(v58, v64 + v63, type metadata accessor for HostedRoutingSourceSession);
  v115 = v64;
  sub_100030DE8(v103, &qword_100525748, &unk_100457D90, type metadata accessor for HostedRoutingSourceSession, type metadata accessor for HostedRoutingSourceSession);
  v65 = v115;
  v66 = v109;
  RoutingSessionConfiguration.context.getter();
  LOBYTE(v58) = sub_1000307D0();
  (*(v50 + 8))(v66, v111);
  if (v58)
  {

    *&v104 = v65;
  }

  else
  {
    v67 = swift_allocObject();
    *(v67 + 16) = v104;
    *&v104 = v67;
    result = sub_10002ADF8(v107, v67 + v63, type metadata accessor for HostedRoutingSourceSession);
  }

  v68 = v113;
  v111 = v65[2];
  if (v111)
  {
    v69 = 0;
    v109 = v63;
    v70 = v65 + v63;
    v71 = _swiftEmptyArrayStorage;
    v72 = qword_100451520;
    while (1)
    {
      if (v69 >= v65[2])
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v73 = v65;
      v74 = v62;
      v75 = v72;
      v76 = v114;
      sub_10002ADF8(v70, v114, type metadata accessor for HostedRoutingSourceSession);
      v77 = v76 + *(v112 + 28);
      v72 = v75;
      sub_10001D9AC(v77, v68, &qword_100523640, v75);
      v78 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
      if ((*(*(v78 - 8) + 48))(v68, 1, v78) == 1)
      {
        sub_1000038A4(v68, &qword_100523640, v75);
      }

      else
      {
        v79 = v68;
        v80 = sub_1000207E8();
        v81 = v79;
        v72 = v75;
        sub_10002AC54(v81, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
        if (v80)
        {
          sub_10002AF68(v114, v110, type metadata accessor for HostedRoutingSourceSession);
          v82 = swift_isUniquelyReferenced_nonNull_native();
          v115 = v71;
          if ((v82 & 1) == 0)
          {
            sub_10032E068(0, v71[2] + 1, 1);
            v71 = v115;
          }

          v68 = v113;
          v84 = v71[2];
          v83 = v71[3];
          if (v84 >= v83 >> 1)
          {
            sub_10032E068((v83 > 1), v84 + 1, 1);
            v68 = v113;
            v71 = v115;
          }

          v71[2] = v84 + 1;
          result = sub_10002AF68(v110, &v109[v71 + v84 * v74], type metadata accessor for HostedRoutingSourceSession);
          v72 = v75;
          goto LABEL_37;
        }
      }

      result = sub_10002AC54(v114, type metadata accessor for HostedRoutingSourceSession);
      v68 = v113;
LABEL_37:
      ++v69;
      v62 = v74;
      v70 += v74;
      v65 = v73;
      if (v111 == v69)
      {
        goto LABEL_47;
      }
    }
  }

  v71 = _swiftEmptyArrayStorage;
LABEL_47:

  __chkstk_darwin(v85);
  v86 = v108;
  v92 = v71;
  v93 = v108;
  v87 = sub_10002A44C(sub_100031088, (&v94 - 4), v27);

  v88 = *(**(*(v105 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96) + 408);

  v88(v27);

  type metadata accessor for RoutingOptimisticEngine();
  v89 = sub_1000300CC();
  v90 = sub_100030F88();
  v91 = sub_1002E8698(v104, v87, v95, v96, v97, v102, v86, v89, v90);

  sub_10031D868(v91, v87, v105, v101);

  sub_10002AC54(v107, type metadata accessor for HostedRoutingSourceSession);
  return (*(v99 + 8))(v86, v100);
}

void *sub_10002668C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1001BC5A8(a5, a6);
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

void *sub_100026868(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1001BC5A8(a5, a6);
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

uint64_t sub_100026A44(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_100026A90(id a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v271 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v269 = *(v271 - 8);
  __chkstk_darwin(v271);
  v270 = v246 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v279 = v246 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  __chkstk_darwin(v10 - 8);
  v264 = v246 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo.ProgressSnapshot();
  __chkstk_darwin(v12 - 8);
  v266 = v246 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType();
  v277 = *(v14 - 8);
  v278 = v14;
  v15 = __chkstk_darwin(v14);
  v268 = v246 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v265 = v246 - v18;
  __chkstk_darwin(v17);
  v276 = v246 - v19;
  v273 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
  v272 = *(v273 - 8);
  __chkstk_darwin(v273);
  v281 = v246 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo.ExtendedInfo();
  v274 = *(v21 - 8);
  v275 = v21;
  v22 = __chkstk_darwin(v21);
  v267 = v246 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v280 = v246 - v24;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = v246 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1001BC5A8(&qword_100523B48, &unk_100451A30);
  v30 = __chkstk_darwin(v29 - 8);
  v32 = v246 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = v246 - v33;
  if (!a1)
  {
    v38 = a2;
    goto LABEL_12;
  }

  if (!a2)
  {
LABEL_11:
    v38 = a1;
    goto LABEL_12;
  }

  v263 = v8;
  v35 = [a2 playerPath];
  if (!v35 || (v262 = v7, v36 = v35, v37 = [v35 client], v36, !v37))
  {

    goto LABEL_11;
  }

  v38 = v37;
  v39 = [v37 bundleIdentifier];
  if (v39)
  {
    v256 = v39;
    v257 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v258 = v40;
    v41 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
    v42 = [a2 nowPlayingContentItem];
    v255 = a3;
    v261 = a1;
    v260 = v38;
    if (!v42)
    {
      v254 = 0;
      v253 = 0;
      v252 = 0;
      v48 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
LABEL_43:
      v57 = v258;
      goto LABEL_44;
    }

    v259 = v42;
    v43 = [v42 identifier];
    if (v43)
    {
      v44 = v43;
      v254 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v253 = v45;
    }

    else
    {
      v254 = 0;
      v253 = 0;
    }

    v48 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
    v251 = [a1 deviceInfo];
    v49 = [a2 playerPath];
    if (!v49)
    {
LABEL_169:

      __break(1u);
      goto LABEL_170;
    }

    v50 = v49;
    v51 = [v49 origin];

    if (!v51)
    {
LABEL_170:

      __break(1u);
      goto LABEL_171;
    }

    v52 = [v51 isLocallyHosted];

    if (v52 & 1) != 0 || ([v251 isCompanion])
    {
      goto LABEL_22;
    }

    v65 = [v259 metadata];
    if (v65)
    {
      v66 = v65;
      v67 = [v65 artworkURLTemplates];

      if (v67)
      {
        sub_1001BC5A8(&qword_1005229E0, &qword_10045A7D0);
        v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v68 + 16))
        {

          v69 = objc_opt_self();
          isa = Dictionary._bridgeToObjectiveC()().super.isa;
          *&v283 = 0;
          v71 = [v69 dataWithJSONObject:isa options:0 error:&v283];

          v72 = v283;
          if (v71)
          {
            v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v75 = v74;

            v76 = objc_allocWithZone(MRRemoteArtwork);
            sub_1001C3FE0(v73, v75);
            v77 = Data._bridgeToObjectiveC()().super.isa;
            sub_1001C4034(v73, v75);
            v78 = [v76 initWithArtworkURLString:0 templateData:v77];

            v79 = [a2 playerPath];
            if (!v79)
            {
LABEL_175:

              __break(1u);
              goto LABEL_176;
            }

            v80 = v79;
            v81 = [v79 data];

            static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v252 = v82;
            v83 = v259;
            v84 = [v259 identifier];
            if (!v84)
            {
LABEL_176:

              __break(1u);
              goto LABEL_177;
            }

            v85 = v84;

            v247 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v246[1] = v86;

            v87 = [v83 metadata];
            v250 = v75;
            v249 = v73;
            if (v87)
            {
              v88 = v87;
              v89 = [v87 artworkIdentifier];

              if (v89)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
              }
            }

            type metadata accessor for ArtworkToken();
            v185 = [v78 protobufData];
            v186 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v187 = v78;
            v189 = v188;

            default argument 4 of ArtworkToken.init(playerPathData:contentItemIdentifier:artworkIdentifier:supportsRemoteArtwork:maxPixelSize:remoteArtworkData:)();
            v244 = v186;
            v245 = v189;
            v252 = ArtworkToken.__allocating_init(playerPathData:contentItemIdentifier:artworkIdentifier:supportsRemoteArtwork:maxPixelSize:remoteArtworkData:)();

            sub_1001C4034(v249, v250);
            goto LABEL_41;
          }

          v190 = v72;

          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        else
        {
        }
      }
    }

    v191 = [v259 availableRemoteArtworkFormats];
    if (v191)
    {
      v192 = v191;
      v193 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v252 = MRContentItemArtworkFormatStandard;
      *&v283 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v283 + 1) = v194;
      __chkstk_darwin(v283);
      v244 = &v283;
      v195 = sub_1001E5604(sub_10001BDAC, &v243, v193);

      if (v195)
      {
        v196 = [a2 playerPath];
        if (!v196)
        {
LABEL_173:

          __break(1u);
          goto LABEL_174;
        }

        v197 = v196;
        v198 = [v196 data];

        v199 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v200 = v259;
        v201 = [v259 identifier];
        v48 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
        if (!v201)
        {
LABEL_174:

          __break(1u);
          goto LABEL_175;
        }

        v202 = v201;

        v203 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v247 = v204;

        v205 = [v200 metadata];
        v250 = v199;
        v249 = v203;
        if (v205)
        {
          v206 = v205;
          v207 = [v205 artworkIdentifier];

          if (v207)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }
        }

        v212 = [v259 remoteArtworks];
        if (v212)
        {
          v213 = v212;
          sub_100018D7C(0, &qword_100523B50, MRRemoteArtwork_ptr);
          v214 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v215 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (*(v214 + 16))
          {
            v217 = sub_10000698C(v215, v216);
            if (v218)
            {
              v219 = *(*(v214 + 56) + 8 * v217);

              v220 = [v219 protobufData];

              v221 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v223 = v222;

LABEL_167:
              type metadata accessor for ArtworkToken();
              default argument 4 of ArtworkToken.init(playerPathData:contentItemIdentifier:artworkIdentifier:supportsRemoteArtwork:maxPixelSize:remoteArtworkData:)();
              v244 = v221;
              v245 = v223;
              v252 = ArtworkToken.__allocating_init(playerPathData:contentItemIdentifier:artworkIdentifier:supportsRemoteArtwork:maxPixelSize:remoteArtworkData:)();

              a1 = v261;
              goto LABEL_42;
            }
          }
        }

        v221 = 0;
        v223 = 0xF000000000000000;
        goto LABEL_167;
      }

      v48 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
    }

    v208 = [v259 metadata];
    if (v208)
    {
      v209 = v208;
      v210 = [v208 artworkURL];

      if (v210)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v211 = 0;
      }

      else
      {
        v211 = 1;
      }

      (*(v26 + 56))(v32, v211, 1, v25);
      sub_10003AEF0(v32, v34, &qword_100523B48, &unk_100451A30);
      if (!(*(v26 + 48))(v34, 1, v25))
      {
        (*(v26 + 16))(v28, v34, v25);
        sub_1000038A4(v34, &qword_100523B48, &unk_100451A30);
        URL.absoluteString.getter();
        (*(v26 + 8))(v28, v25);
        v224 = objc_allocWithZone(MRRemoteArtwork);
        v225 = String._bridgeToObjectiveC()();
        v226 = [v224 initWithArtworkURLString:v225 templateData:0];

        v227 = [a2 playerPath];
        if (!v227)
        {
LABEL_177:

          __break(1u);
          goto LABEL_178;
        }

        v228 = v227;
        v229 = [v227 data];

        v230 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v231 = v259;
        v232 = [v259 identifier];
        if (!v232)
        {
LABEL_178:

          __break(1u);
          return;
        }

        v233 = v232;
        v252 = v230;

        v234 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v249 = v235;

        v236 = [v231 metadata];
        v250 = v234;
        if (v236)
        {
          v237 = v236;
          v238 = [v236 artworkIdentifier];

          if (v238)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }
        }

        type metadata accessor for ArtworkToken();
        v239 = [v226 protobufData];
        v240 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v242 = v241;

        default argument 4 of ArtworkToken.init(playerPathData:contentItemIdentifier:artworkIdentifier:supportsRemoteArtwork:maxPixelSize:remoteArtworkData:)();
        v244 = v240;
        v245 = v242;
        v252 = ArtworkToken.__allocating_init(playerPathData:contentItemIdentifier:artworkIdentifier:supportsRemoteArtwork:maxPixelSize:remoteArtworkData:)();

        goto LABEL_40;
      }

      sub_1000038A4(v34, &qword_100523B48, &unk_100451A30);
    }

LABEL_22:
    v53 = v259;
    v54 = [v259 metadata];
    if (!v54)
    {

      v252 = 0;
LABEL_41:
      a1 = v261;
LABEL_42:
      v38 = v260;
      v41 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
      goto LABEL_43;
    }

    v55 = v54;
    v56 = [v54 artworkAvailable];
    a1 = v261;
    v57 = v258;
    if ((v56 & 1) == 0)
    {

      v252 = 0;
      v38 = v260;
      v41 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
LABEL_44:
      v90 = [v38 bundleIdentifierHierarchy];
      if (v90)
      {
        v91 = v90;
        v259 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v258) = [v38 processIdentifier];
        v92 = [a1 deviceInfo];
        v93 = [v92 systemMediaApplication];

        if (v93)
        {
          v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v96 = v95;

          if (v257 == v94 && v57 == v96)
          {

LABEL_51:
            LODWORD(v257) = 0;
LABEL_69:
            v113 = [a2 v41[499]];
            v114 = [v113 v48[377]];

            v115 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
            if (v114)
            {
              v116 = v114;
              if ([v116 hasITunesStoreIdentifier] && objc_msgSend(v116, "iTunesStoreIdentifier") >= 1)
              {
                [v116 iTunesStoreIdentifier];
              }

              if ([v116 hasITunesStoreSubscriptionIdentifier] && objc_msgSend(v116, "iTunesStoreSubscriptionIdentifier") >= 1)
              {
                [v116 iTunesStoreSubscriptionIdentifier];
              }

              v117 = [v116 internationalStandardRecordingCode];
              v249 = v114;
              v248 = a2;
              if (v117)
              {
                v118 = v117;
                v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v121 = v120;

                v122 = HIBYTE(v121) & 0xF;
                if ((v121 & 0x2000000000000000) == 0)
                {
                  v122 = v119 & 0xFFFFFFFFFFFFLL;
                }

                if (v122)
                {
                  v123 = [v116 internationalStandardRecordingCode];
                  if (v123)
                  {
                    v124 = v123;
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                  }
                }
              }

              v125 = v267;
              RoutingSession.NowPlayingInfo.TrackInfo.ExtendedInfo.init(storeIdentifier:subscriptionIdentifier:isrc:)();

              v126 = v116;
              sub_100037240();

              v127 = [v126 albumName];
              if (v127)
              {
                v128 = v127;
                v267 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v256 = v129;
              }

              else
              {
                v267 = 0;
                v256 = 0;
              }

              v135 = [v126 trackArtistName];
              if (v135)
              {
                v136 = v135;
                v251 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v250 = v137;
              }

              else
              {
                v251 = 0;
                v250 = 0;
              }

              v138 = [v126 composer];
              if (v138)
              {
                v139 = v138;
                static String._unconditionallyBridgeFromObjectiveC(_:)();
              }

              v140 = [v126 radioStationName];
              if (v140)
              {
                v141 = v140;
                static String._unconditionallyBridgeFromObjectiveC(_:)();
              }

              v142 = v126;
              v143 = sub_100037744();
              v145 = v144;

              (*(v274 + 16))(v125, v280, v275);
              *(&v243 + 1) = v145;
              v244 = v125;
              *&v243 = v143;
              RoutingSession.NowPlayingInfo.TrackInfo.init(title:album:artist:composer:station:attribution:extendedInfo:)();
              v146 = v142;
              if (([v146 isAlwaysLive] & 1) != 0 || (sub_1000377D0(), fabs(v147) == INFINITY) || (objc_msgSend(v146, "duration"), fabs(v148) == INFINITY))
              {

                v132 = v276;
                v134 = v277;
                v133 = v278;
                (*(v277 + 104))(v276, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.live(_:), v278);
                v114 = v249;
                v115 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
                a2 = v248;
              }

              else
              {
                v177 = [v146 hasElapsedTimeTimestamp];
                v178 = &selRef_elapsedTimeTimestamp;
                if (!v177)
                {
                  v178 = &selRef_inferredTimestamp;
                }

                [v146 *v178];
                [v146 startTime];
                v114 = v249;
                a2 = v248;
                if ((v179 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  [v146 startTime];
                }

                sub_1000377D0();
                v115 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
                if ((v180 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  sub_1000377D0();
                }

                [v146 duration];
                v132 = v276;
                if ((v181 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  [v146 duration];
                }

                [v146 elapsedTime];
                if ((v182 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  [v146 elapsedTime];
                }

                Date.init(timeIntervalSinceReferenceDate:)();
                RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo.ProgressSnapshot.init(time:date:)();
                if ([v146 hasPlaybackRate])
                {
                  [v146 playbackRate];
                  if ((v183 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                  {
                    [v146 playbackRate];
                  }
                }

                else
                {
                  [a2 isPlaying];
                }

                v184 = v265;
                RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo.init(start:end:duration:progressSnapshot:rate:)();

                v134 = v277;
                v133 = v278;
                (*(v277 + 104))(v184, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.finite(_:), v278);
                (*(v134 + 32))(v132, v184, v133);
              }
            }

            else
            {
              v130 = v280;
              RoutingSession.NowPlayingInfo.TrackInfo.ExtendedInfo.init(storeIdentifier:subscriptionIdentifier:isrc:)();
              v131 = v267;
              (*(v274 + 16))(v267, v130, v275);
              v244 = v131;
              v243 = 0u;
              RoutingSession.NowPlayingInfo.TrackInfo.init(title:album:artist:composer:station:attribution:extendedInfo:)();
              v132 = v276;
              static RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo.empty.getter();
              v134 = v277;
              v133 = v278;
              (*(v277 + 104))(v132, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.finite(_:), v278);
            }

            v149 = [a2 v115[187]];
            v150 = &enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:);
            if (!v149)
            {
              v150 = &enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.paused(_:);
            }

            (*(v269 + 104))(v270, *v150, v271);
            (*(v134 + 16))(v268, v132, v133);
            RoutingSession.NowPlayingInfo.PlaybackInfo.init(playbackState:playbackType:)();
            *&v283 = RoutingSession.NowPlayingInfo.TrackInfo.title.getter();
            *(&v283 + 1) = v151;
            if (v114)
            {
              v152 = v151;
              v153 = v114;
              if ([v153 isExplicitItem] && (objc_msgSend(v153, "hasLoadingPlaceholderTitle") & 1) == 0 && v152)
              {
                v282._countAndFlagsBits = 32;
                v282._object = 0xE100000000000000;
                v154 = sub_10024C408();
                if (v155)
                {
                  v156 = v155;
                }

                else
                {
                  v154 = 3028656112;
                  v156 = 0xA400000000000000;
                }

                v157 = v156;
                String.append(_:)(*&v154);

                String.append(contentsOf:)(v282);
              }
            }

            v158 = RoutingSession.NowPlayingInfo.TrackInfo.artist.getter();
            if (!v159)
            {
              v158 = RoutingSession.NowPlayingInfo.TrackInfo.station.getter();
              if (!v159)
              {
                v158 = RoutingSession.NowPlayingInfo.TrackInfo.composer.getter();
                if (!v159)
                {
                  v158 = RoutingSession.NowPlayingInfo.TrackInfo.attribution.getter();
                }
              }
            }

            v160 = v158;
            v161 = v159;
            if (v114)
            {
              v162 = [v114 mediaType];
              if (v162 == 2)
              {
                v163 = 1;
              }

              else
              {
                v163 = 2;
              }

              if (v162 == 1)
              {
                v164 = 0;
              }

              else
              {
                v164 = v163;
              }

              v165 = v114;
              v166 = sub_10024C580();
              v114 = v167;

              v168 = v165;
              v169 = sub_10024C42C();

              v170 = [v168 isExplicitItem];
              v171 = v168;
              v172 = sub_10024C41C();
            }

            else
            {
              v166 = 0;
              v172 = 2;
              v170 = 2;
              v169 = 2;
              v164 = 2;
            }

            (*(v277 + 8))(v276, v278);
            (*(v274 + 8))(v280, v275);
            v173 = v255;
            v174 = v253;
            *v255 = v254;
            v173[1] = v174;
            *(v173 + 1) = v283;
            v173[4] = v160;
            v173[5] = v161;
            v175 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
            (*(v263 + 32))(v173 + v175[9], v279, v262);
            (*(v272 + 32))(v173 + v175[10], v281, v273);
            v176 = v173 + v175[11];
            *v176 = v166;
            *(v176 + 1) = v114;
            v176[16] = v169;
            v176[17] = v170;
            v176[18] = v172;
            v176[19] = v164;
            v173[8] = v252;
            v173[6] = v259;
            *(v173 + 14) = v258;
            *(v173 + 60) = v257;
            (*(*(v175 - 1) + 56))(v173, 0, 1, v175);
            return;
          }

          v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v97)
          {

            goto LABEL_51;
          }
        }

        v98 = [a1 deviceInfo];
        v99 = [v98 systemPodcastApplication];

        if (v99)
        {
          v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v102 = v101;

          if (v257 == v100 && v57 == v102)
          {

            v103 = 1;
LABEL_68:
            LODWORD(v257) = v103;
            goto LABEL_69;
          }

          v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v104)
          {

            v103 = 1;
            goto LABEL_68;
          }
        }

        v105 = [a1 deviceInfo];
        v106 = [v105 systemBooksApplication];

        if (v106)
        {
          v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v109 = v108;

          if (v257 == v107 && v57 == v109)
          {

            v103 = 3;
            goto LABEL_68;
          }

          v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v110)
          {

            v103 = 3;
            goto LABEL_68;
          }
        }

        else
        {
        }

        v111 = v256;
        IsSystemAppleTVApplication = MRMediaRemoteApplicationIsSystemAppleTVApplication();

        if (IsSystemAppleTVApplication)
        {
          v103 = 2;
        }

        else
        {
          v103 = 4;
        }

        goto LABEL_68;
      }

      __break(1u);
      goto LABEL_169;
    }

    v58 = [a2 playerPath];
    if (!v58)
    {
LABEL_171:

      __break(1u);
      goto LABEL_172;
    }

    v59 = v58;
    v60 = [v58 data];

    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = [v259 identifier];
    if (!v61)
    {
LABEL_172:

      __break(1u);
      goto LABEL_173;
    }

    v62 = v61;

    v252 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = [v55 artworkIdentifier];
    if (v63)
    {
      v64 = v63;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for ArtworkToken();
    default argument 3 of ArtworkToken.init(playerPathData:contentItemIdentifier:artworkIdentifier:supportsRemoteArtwork:maxPixelSize:remoteArtworkData:)();
    default argument 4 of ArtworkToken.init(playerPathData:contentItemIdentifier:artworkIdentifier:supportsRemoteArtwork:maxPixelSize:remoteArtworkData:)();
    v244 = 0;
    v245 = 0xF000000000000000;
    v252 = ArtworkToken.__allocating_init(playerPathData:contentItemIdentifier:artworkIdentifier:supportsRemoteArtwork:maxPixelSize:remoteArtworkData:)();

LABEL_40:
    goto LABEL_41;
  }

LABEL_12:
  v46 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v47 = *(*(v46 - 8) + 56);

  v47(a3, 1, 1, v46);
}

char *sub_100028BB8()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    type metadata accessor for HostedRoutingSessionDataSource(0);
    v2 = v0;
    v3 = sub_1000300CC();
    v4 = sub_100030F88();
    v5 = sub_100301054();
    v6 = sub_100279470();
    swift_unknownObjectRetain();
    v1 = sub_10029A7B4(v3, v4, v5, v2, &off_1004CDFF8, v6);
    *(v2 + 88) = v1;
  }

  return v1;
}

uint64_t sub_100028CEC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return sub_100015AFC(v4, a2);
}

uint64_t sub_100028D64(uint64_t a1)
{
  v174 = *v1;
  v176 = type metadata accessor for HostedRoutingSession(0);
  v173 = *(v176 - 8);
  v3 = __chkstk_darwin(v176);
  v156 = (&v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __chkstk_darwin(v3);
  v7 = (&v152 - v6);
  __chkstk_darwin(v5);
  v154 = &v152 - v8;
  v160 = sub_1001BC5A8(&qword_100524178, &unk_1004584F0);
  __chkstk_darwin(v160);
  v163 = &v152 - v9;
  v10 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v157 = &v152 - v15;
  v16 = __chkstk_darwin(v14);
  v179 = &v152 - v17;
  __chkstk_darwin(v16);
  v161 = &v152 - v18;
  v167 = type metadata accessor for RoutingSessionConfiguration();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v165 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_1001BC5A8(&qword_100526728, &unk_100458500);
  __chkstk_darwin(v177);
  v21 = &v152 - v20;
  v22 = sub_1001BC5A8(&qword_100523C30, &qword_100451B00);
  v23 = __chkstk_darwin(v22 - 8);
  v155 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v159 = &v152 - v26;
  v27 = __chkstk_darwin(v25);
  v162 = &v152 - v28;
  v29 = __chkstk_darwin(v27);
  v181 = &v152 - v30;
  __chkstk_darwin(v29);
  v184 = &v152 - v31;
  v183 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v180 = *(v183 - 8);
  v32 = __chkstk_darwin(v183);
  v175 = &v152 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v152 - v34;
  v36 = type metadata accessor for Logger();
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  v164 = &v152 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v153 = &v152 - v41;
  __chkstk_darwin(v40);
  v43 = &v152 - v42;
  v44 = sub_100028D40();
  v45 = *(v37 + 16);
  v168 = v44;
  v170 = v37 + 16;
  v169 = v45;
  (v45)(v43);

  v46 = a1;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();

  v49 = os_log_type_enabled(v47, v48);
  v185 = v35;
  v158 = v13;
  v178 = v37;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    *v50 = 136315394;
    v51 = _typeName(_:qualified:)();
    v152 = v21;
    v52 = v46;
    v54 = sub_10002C9C8(v51, v53, &v186);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2082;
    v55 = sub_100036B00();
    v57 = sub_10002C9C8(v55, v56, &v186);

    *(v50 + 14) = v57;
    v46 = v52;
    v21 = v152;
    _os_log_impl(&_mh_execute_header, v47, v48, "[%s] reloadSnapshot - reload for: %{public}s", v50, 0x16u);
    swift_arrayDestroy();

    v35 = v185;

    v171 = *(v178 + 8);
  }

  else
  {

    v171 = *(v37 + 8);
  }

  v171(v43, v36);
  v172 = v36;
  v58 = v46;
  sub_100025AAC(v46, v35);
  v59 = sub_100030790();
  v60 = v180;
  if (v59[2])
  {
    v61 = v58;
    v62 = sub_100031588(v58);
    v63 = v183;
    if (v64)
    {
      sub_10002ADF8(v59[7] + v60[9] * v62, v184, type metadata accessor for HostedRoutingSessionSnapshot);
      v65 = 0;
    }

    else
    {
      v65 = 1;
    }
  }

  else
  {
    v61 = v58;
    v65 = 1;
    v63 = v183;
  }

  v66 = v60[7];
  v67 = v184;
  v66(v184, v65, 1, v63);
  v68 = v35;
  v69 = v181;
  sub_10002ADF8(v68, v181, type metadata accessor for HostedRoutingSessionSnapshot);
  v66(v69, 0, 1, v63);
  v70 = *(v177 + 48);
  sub_10001D9AC(v69, v21, &qword_100523C30, &qword_100451B00);
  sub_10001D9AC(v67, &v21[v70], &qword_100523C30, &qword_100451B00);
  v73 = v60[6];
  v72 = v60 + 6;
  v71 = v73;
  if (v73(v21, 1, v63) == 1)
  {
    sub_1000038A4(v69, &qword_100523C30, &qword_100451B00);
    v74 = v71(&v21[v70], 1, v63);
    v75 = v179;
    if (v74 == 1)
    {
      sub_1000038A4(v21, &qword_100523C30, &qword_100451B00);
      v76 = v185;
LABEL_42:
      sub_1000038A4(v184, &qword_100523C30, &qword_100451B00);
      v137 = v76;
      return sub_10002AC54(v137, type metadata accessor for HostedRoutingSessionSnapshot);
    }
  }

  else
  {
    v77 = v162;
    sub_10001D9AC(v21, v162, &qword_100523C30, &qword_100451B00);
    if (v71(&v21[v70], 1, v63) != 1)
    {
      v177 = v71;
      v93 = &v21[v70];
      v94 = v175;
      sub_10002AF68(v93, v175, type metadata accessor for HostedRoutingSessionSnapshot);
      sub_100004930(&qword_100523CE8, type metadata accessor for HostedRoutingSessionSnapshot, &unk_100452930);
      v95 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10002AC54(v94, type metadata accessor for HostedRoutingSessionSnapshot);
      sub_1000038A4(v181, &qword_100523C30, &qword_100451B00);
      sub_10002AC54(v77, type metadata accessor for HostedRoutingSessionSnapshot);
      sub_1000038A4(v21, &qword_100523C30, &qword_100451B00);
      v76 = v185;
      v75 = v179;
      if (v95)
      {
        goto LABEL_42;
      }

      goto LABEL_15;
    }

    sub_1000038A4(v181, &qword_100523C30, &qword_100451B00);
    sub_10002AC54(v77, type metadata accessor for HostedRoutingSessionSnapshot);
    v75 = v179;
  }

  v177 = v71;
  sub_1000038A4(v21, &qword_100526728, &unk_100458500);
  v76 = v185;
LABEL_15:
  v78 = v182;
  v79 = *(v182 + 32);
  v80 = v76;
  v81 = v175;
  sub_10002ADF8(v80, v175, type metadata accessor for HostedRoutingSessionSnapshot);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v186 = v79;
  v83 = v61;
  sub_1000393BC(v81, v61, isUniquelyReferenced_nonNull_native);
  *(v78 + 32) = v186;

  v84 = v166;
  v85 = v165;
  v86 = v167;
  (*(v166 + 16))(v165, v61 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v167);
  LOBYTE(v79) = RoutingSessionConfiguration.filterInactiveSessions.getter();
  (*(v84 + 8))(v85, v86);
  v87 = v176;
  v88 = v183;
  if ((v79 & 1) == 0)
  {
    goto LABEL_31;
  }

  v89 = v161;
  sub_10001D9AC(v185, v161, &qword_100523620, &unk_1004511D0);
  v90 = v159;
  sub_10001D9AC(v184, v159, &qword_100523C30, &qword_100451B00);
  v91 = (v177)(v90, 1, v88);
  v180 = v72;
  if (v91 == 1)
  {
    sub_1000038A4(v90, &qword_100523C30, &qword_100451B00);
    v92 = v173;
    (*(v173 + 56))(v75, 1, 1, v87);
  }

  else
  {
    sub_10001D9AC(v90, v75, &qword_100523620, &unk_1004511D0);
    sub_10002AC54(v90, type metadata accessor for HostedRoutingSessionSnapshot);
    v92 = v173;
  }

  v96 = *(v160 + 48);
  v97 = v163;
  sub_10001D9AC(v89, v163, &qword_100523620, &unk_1004511D0);
  v98 = v97;
  sub_10001D9AC(v75, v97 + v96, &qword_100523620, &unk_1004511D0);
  v99 = *(v92 + 48);
  if (v99(v98, 1, v87) == 1)
  {
    sub_1000038A4(v75, &qword_100523620, &unk_1004511D0);
    v100 = v163;
    sub_1000038A4(v89, &qword_100523620, &unk_1004511D0);
    v101 = v99(v100 + v96, 1, v87);
    v88 = v183;
    if (v101 == 1)
    {
      sub_1000038A4(v100, &qword_100523620, &unk_1004511D0);
      goto LABEL_28;
    }

LABEL_26:
    v103 = &qword_100524178;
    v104 = &unk_1004584F0;
    v105 = v100;
LABEL_30:
    sub_1000038A4(v105, v103, v104);
    goto LABEL_31;
  }

  v102 = v157;
  sub_10001D9AC(v98, v157, &qword_100523620, &unk_1004511D0);
  if (v99(v98 + v96, 1, v87) == 1)
  {
    sub_1000038A4(v179, &qword_100523620, &unk_1004511D0);
    v100 = v163;
    sub_1000038A4(v161, &qword_100523620, &unk_1004511D0);
    sub_10002AC54(v102, type metadata accessor for HostedRoutingSession);
    v88 = v183;
    goto LABEL_26;
  }

  v106 = v154;
  sub_10002AF68(v98 + v96, v154, type metadata accessor for HostedRoutingSession);
  sub_100004930(&qword_100523CE0, type metadata accessor for HostedRoutingSession, &unk_100452878);
  v107 = v98;
  v108 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10002AC54(v106, type metadata accessor for HostedRoutingSession);
  sub_1000038A4(v179, &qword_100523620, &unk_1004511D0);
  sub_1000038A4(v161, &qword_100523620, &unk_1004511D0);
  sub_10002AC54(v102, type metadata accessor for HostedRoutingSession);
  sub_1000038A4(v107, &qword_100523620, &unk_1004511D0);
  v88 = v183;
  if ((v108 & 1) == 0)
  {
LABEL_31:
    v111 = v164;
    v112 = v172;
    v169(v164, v168, v172);

    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      *v115 = 136315394;
      v116 = _typeName(_:qualified:)();
      v117 = v111;
      v119 = sub_10002C9C8(v116, v118, &v186);

      *(v115 + 4) = v119;
      *(v115 + 12) = 2082;
      v120 = sub_100036B00();
      v122 = sub_10002C9C8(v120, v121, &v186);

      *(v115 + 14) = v122;
      _os_log_impl(&_mh_execute_header, v113, v114, "[%s] reloadSnapshot - update snapshot for: %{public}s", v115, 0x16u);
      swift_arrayDestroy();

      v88 = v183;

      v123 = v117;
    }

    else
    {

      v123 = v111;
    }

    v171(v123, v112);
    v124 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context;
    if (*(*(v83 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 16) == 1)
    {
      v125 = *&v185[*(v88 + 20)];
      v126 = *(v125 + 16);
      if (v126)
      {
        v127 = v125 + ((*(v173 + 80) + 32) & ~*(v173 + 80));
        v128 = *(v173 + 72);
        do
        {
          sub_10002ADF8(v127, v7, type metadata accessor for HostedRoutingSession);
          v129 = *v7;
          v130 = v7[1];
          swift_beginAccess();

          sub_100008318(&v187, v129, v130);
          swift_endAccess();

          sub_10002AC54(v7, type metadata accessor for HostedRoutingSession);
          v127 += v128;
          --v126;
        }

        while (v126);
      }

      v131 = v158;
      sub_10001D9AC(v185, v158, &qword_100523620, &unk_1004511D0);
      if ((*(v173 + 48))(v131, 1, v176) == 1)
      {
        sub_1000038A4(v131, &qword_100523620, &unk_1004511D0);
      }

      else
      {
        v132 = v156;
        sub_10002AF68(v131, v156, type metadata accessor for HostedRoutingSession);
        v133 = *v132;
        v134 = v132[1];
        swift_beginAccess();

        sub_100008318(&v187, v133, v134);
        swift_endAccess();

        sub_10002AC54(v132, type metadata accessor for HostedRoutingSession);
      }
    }

    sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
    v135 = swift_allocObject();
    *(v135 + 16) = xmmword_10044EBC0;
    *(v135 + 32) = v83;

    v76 = v185;
    sub_1000219E8(v185, v135);

    v136 = *(**(*(v83 + v124) + 96) + 400);

    v136(v76);

    goto LABEL_42;
  }

LABEL_28:
  v109 = *&v185[*(v88 + 20)];
  v110 = v155;
  sub_10001D9AC(v184, v155, &qword_100523C30, &qword_100451B00);
  if ((v177)(v110, 1, v88) == 1)
  {
    v103 = &qword_100523C30;
    v104 = &qword_100451B00;
    v105 = v110;
    goto LABEL_30;
  }

  v139 = *(v110 + *(v88 + 20));

  sub_10002AC54(v110, type metadata accessor for HostedRoutingSessionSnapshot);
  v140 = sub_1003293A4(v109, v139);

  if ((v140 & 1) == 0)
  {
    goto LABEL_31;
  }

  v141 = v153;
  v142 = v172;
  v169(v153, v168, v172);

  v143 = Logger.logObject.getter();
  v144 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    *v145 = 136315394;
    v146 = _typeName(_:qualified:)();
    v148 = sub_10002C9C8(v146, v147, &v186);

    *(v145 + 4) = v148;
    *(v145 + 12) = 2082;
    v149 = sub_100036B00();
    v151 = sub_10002C9C8(v149, v150, &v186);

    *(v145 + 14) = v151;
    _os_log_impl(&_mh_execute_header, v143, v144, "[%s] reloadSnapshot - skip update snapshot for: %{public}s because of filter rules", v145, 0x16u);
    swift_arrayDestroy();
  }

  v171(v141, v142);
  sub_1000038A4(v184, &qword_100523C30, &qword_100451B00);
  v137 = v185;
  return sub_10002AC54(v137, type metadata accessor for HostedRoutingSessionSnapshot);
}

uint64_t sub_10002A308(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
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
      v13 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void *sub_10002A42C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002A5F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10002A44C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for HostedRoutingItem(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_10002A42C(0, v10, 0);
  v11 = v21;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a3 + v18;
  v13 = *(v7 + 72);
  while (1)
  {
    v19(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_10002A42C((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    v11[2] = v15 + 1;
    sub_10002AF68(v9, v11 + v18 + v15 * v13, type metadata accessor for HostedRoutingItem);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void *sub_10002A5F4(void *result, int64_t a2, char a3, void *a4)
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

  sub_1001BC5A8(&unk_100524EB0, &unk_1004584A0);
  v10 = *(type metadata accessor for HostedRoutingItem(0) - 8);
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
  v15 = *(type metadata accessor for HostedRoutingItem(0) - 8);
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

uint64_t sub_10002A7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  sub_10002ADF8(a1, a3, type metadata accessor for HostedRoutingItem);
  sub_10001D9AC(a2, v8, &qword_100523640, qword_100451520);
  v9 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_1000038A4(v8, &qword_100523640, qword_100451520);
    v10 = 0;
  }

  else
  {
    v10 = sub_1000207E8();
    sub_10002AC54(v8, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  }

  result = type metadata accessor for HostedRoutingItem(0);
  *(a3 + *(result + 40)) = v10 & 1;
  return result;
}

void sub_10002AA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002AA34(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  v3 = v2;
  if (!v2)
  {
    v3 = +[NSDate distantPast];
  }

  v4 = v3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (!v2)
  {
  }
}

uint64_t sub_10002AADC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for RoutingControls();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_10002AC54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002ACC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_10002ADF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002AF68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_10002AFD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
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

uint64_t sub_10002B0DC(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_10002AFD0(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_10002AFD0((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x656C676E6973;
  *(v5 + 5) = 0xE600000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10002AFD0(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_10002AFD0((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x69746C756DLL;
    *(v8 + 5) = 0xE500000000000000;
  }

LABEL_12:
  if ((a1 & 4) == 0)
  {
    if ((a1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10002AFD0(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_10002AFD0((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 25458;
  *(v11 + 5) = 0xE200000000000000;
  if ((a1 & 8) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10002AFD0(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_10002AFD0((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0x74696C7073;
    *(v14 + 5) = 0xE500000000000000;
  }

LABEL_25:
  sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  sub_10002C150();
  v15 = BidirectionalCollection<>.joined(separator:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 93;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);

  return 91;
}

uint64_t sub_10002B39C(uint64_t a1, unint64_t a2, unsigned __int16 a3)
{
  switch(a3 >> 11)
  {
    case 1:
      _StringGuts.grow(_:)(16);

      strcpy(v94, ".speaker(");
      WORD1(v94[1]) = 0;
      HIDWORD(v94[1]) = -385875968;
      if (a2)
      {
        v33 = 0x7C6C65646F6DLL;
      }

      else
      {
        v33 = 0;
      }

      if (a2)
      {
        v34 = 0xE600000000000000;
      }

      else
      {
        v34 = 0xE000000000000000;
      }

      v35 = v34;
      String.append(_:)(*&v33);

      if (a3)
      {
        v36 = 0x69746C756DLL;
      }

      else
      {
        v36 = 1869377395;
      }

      if (a3)
      {
        v37 = 0xE500000000000000;
      }

      else
      {
        v37 = 0xE400000000000000;
      }

      v38 = v37;
      String.append(_:)(*&v36);

      if ((a3 & 0x100) != 0)
      {
        v9 = 0x696669687CLL;
      }

      else
      {
        v9 = 0;
      }

      if ((a3 & 0x100) != 0)
      {
        v39 = 0xE500000000000000;
      }

      else
      {
        v39 = 0xE000000000000000;
      }

      goto LABEL_47;
    case 2:
      v11 = 0x6F6870646165682ELL;
      v12 = 0xEC0000002873656ELL;
      goto LABEL_51;
    case 3:
      v11 = 0x746573646165682ELL;
      goto LABEL_50;
    case 4:
      v14 = 0x657669656365722ELL;
      v15 = 0xEA00000000002872;
      goto LABEL_41;
    case 5:
      v14 = 0x74754F656E696C2ELL;
      v15 = 0xE900000000000028;
LABEL_41:
      v94[0] = v14;
      v94[1] = v15;
      v41 = (a1 & 1) == 0;
      if (a1)
      {
        v9 = 1768319336;
      }

      else
      {
        v9 = 0;
      }

      if (v41)
      {
        v39 = 0xE000000000000000;
      }

      else
      {
        v39 = 0xE400000000000000;
      }

LABEL_47:
      v10 = v39;
      goto LABEL_72;
    case 6:
      v11 = 0x646F50656D6F682ELL;
      goto LABEL_50;
    case 7:
      v11 = 0x5654656C7070612ELL;
      goto LABEL_50;
    case 8:
      v60 = *(a1 + 16);
      strcpy(v94, ".stereoPair([");
      HIWORD(v94[1]) = -4864;
      v61 = *(v60 + 16);
      if (v61)
      {
        sub_1000089FC(0, v61, 0);
        v62 = (v60 + 64);
        do
        {
          v64 = *(v62 - 4);
          v63 = *(v62 - 3);
          v65 = *(v62 - 2);
          v66 = *(v62 - 1);
          v67 = *v62;

          sub_10001DAE0(v65, v66, v67);
          v68._countAndFlagsBits = v64;
          v68._object = v63;
          String.append(_:)(v68);
          v69._countAndFlagsBits = 32;
          v69._object = 0xE100000000000000;
          String.append(_:)(v69);
          v70._countAndFlagsBits = sub_10002BF18(v65, v66, v67);
          String.append(_:)(v70);

          v71._countAndFlagsBits = 41;
          v71._object = 0xE100000000000000;
          String.append(_:)(v71);

          sub_100019550(v65, v66, v67);
          v73 = _swiftEmptyArrayStorage[2];
          v72 = _swiftEmptyArrayStorage[3];
          if (v73 >= v72 >> 1)
          {
            sub_1000089FC((v72 > 1), v73 + 1, 1);
          }

          v62 += 20;
          _swiftEmptyArrayStorage[2] = v73 + 1;
          v74 = &_swiftEmptyArrayStorage[2 * v73];
          v74[4] = 40;
          v74[5] = 0xE100000000000000;
          --v61;
        }

        while (v61);
      }

      sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
      sub_10002C150();
      v75 = BidirectionalCollection<>.joined(separator:)();
      v77 = v76;

      v78._countAndFlagsBits = v75;
      v78._object = v77;
      String.append(_:)(v78);

      v79 = 10589;
      v80 = 0xE200000000000000;
      goto LABEL_75;
    case 9:
      v16 = *(a1 + 16);
      strcpy(v94, ".homeTheater([");
      HIBYTE(v94[1]) = -18;
      v17 = *(v16 + 16);
      if (v17)
      {
        sub_1000089FC(0, v17, 0);
        v18 = (v16 + 64);
        do
        {
          v20 = *(v18 - 4);
          v19 = *(v18 - 3);
          v21 = *(v18 - 2);
          v22 = *(v18 - 1);
          v23 = *v18;

          sub_10001DAE0(v21, v22, v23);
          v24._countAndFlagsBits = v20;
          v24._object = v19;
          String.append(_:)(v24);
          v25._countAndFlagsBits = 32;
          v25._object = 0xE100000000000000;
          String.append(_:)(v25);
          v26._countAndFlagsBits = sub_10002BF18(v21, v22, v23);
          String.append(_:)(v26);

          v27._countAndFlagsBits = 41;
          v27._object = 0xE100000000000000;
          String.append(_:)(v27);

          sub_100019550(v21, v22, v23);
          v29 = _swiftEmptyArrayStorage[2];
          v28 = _swiftEmptyArrayStorage[3];
          if (v29 >= v28 >> 1)
          {
            sub_1000089FC((v28 > 1), v29 + 1, 1);
          }

          v18 += 20;
          _swiftEmptyArrayStorage[2] = v29 + 1;
          v30 = &_swiftEmptyArrayStorage[2 * v29];
          v30[4] = 40;
          v30[5] = 0xE100000000000000;
          --v17;
        }

        while (v17);
      }

      sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
      sub_10002C150();
      v81 = BidirectionalCollection<>.joined(separator:)();
      v83 = v82;

      v84._countAndFlagsBits = v81;
      v84._object = v83;
      String.append(_:)(v84);

      v85._countAndFlagsBits = 0x6365707865202C5DLL;
      v85._object = 0xEC000000203A7374;
      String.append(_:)(v85);
      v86._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v86);

      return v94[0];
    case 10:
      v45 = *(a1 + 16);
      strcpy(v94, ".cluster([");
      BYTE3(v94[1]) = 0;
      HIDWORD(v94[1]) = -369098752;
      v46 = *(v45 + 16);
      if (v46)
      {
        sub_1000089FC(0, v46, 0);
        v47 = (v45 + 64);
        do
        {
          v49 = *(v47 - 4);
          v48 = *(v47 - 3);
          v50 = *(v47 - 2);
          v51 = *(v47 - 1);
          v52 = *v47;

          sub_10001DAE0(v50, v51, v52);
          v53._countAndFlagsBits = v49;
          v53._object = v48;
          String.append(_:)(v53);
          v54._countAndFlagsBits = 32;
          v54._object = 0xE100000000000000;
          String.append(_:)(v54);
          v55._countAndFlagsBits = sub_10002BF18(v50, v51, v52);
          String.append(_:)(v55);

          v56._countAndFlagsBits = 41;
          v56._object = 0xE100000000000000;
          String.append(_:)(v56);

          sub_100019550(v50, v51, v52);
          v58 = _swiftEmptyArrayStorage[2];
          v57 = _swiftEmptyArrayStorage[3];
          if (v58 >= v57 >> 1)
          {
            sub_1000089FC((v57 > 1), v58 + 1, 1);
          }

          v47 += 20;
          _swiftEmptyArrayStorage[2] = v58 + 1;
          v59 = &_swiftEmptyArrayStorage[2 * v58];
          v59[4] = 40;
          v59[5] = 0xE100000000000000;
          --v46;
        }

        while (v46);
      }

      sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
      sub_10002C150();
      v87 = BidirectionalCollection<>.joined(separator:)();
      v89 = v88;

      v90._countAndFlagsBits = v87;
      v90._object = v89;
      String.append(_:)(v90);

      v91._countAndFlagsBits = 0x746365707865205DLL;
      v91._object = 0xEB00000000203A73;
      String.append(_:)(v91);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      goto LABEL_72;
    case 11:
      v13 = 1667329326;
      goto LABEL_8;
    case 12:
      v13 = 1397713198;
LABEL_8:
      v11 = v13 & 0xFFFF0000FFFFFFFFLL | 0x2800000000;
      v12 = 0xE500000000000000;
      goto LABEL_51;
    case 13:
      v11 = 0x2868637461772ELL;
      v12 = 0xE700000000000000;
      goto LABEL_51;
    case 14:
      v11 = 0x286E6F697369762ELL;
      v12 = 0xE800000000000000;
      goto LABEL_51;
    case 15:
      v11 = 0x73646F707269612ELL;
LABEL_50:
      v12 = 0xE900000000000028;
LABEL_51:
      v94[0] = v11;
      v94[1] = v12;
      if (a2)
      {
        v42 = a1;
      }

      else
      {
        v42 = 0;
      }

      if (a2)
      {
        v43 = a2;
      }

      else
      {
        v43 = 0xE000000000000000;
      }

      v44._countAndFlagsBits = v42;
      v44._object = v43;
      String.append(_:)(v44);
      goto LABEL_73;
    case 16:
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
      v8 = *(a1 + 32);
      strcpy(v94, "beatsLegacy(");
      BYTE5(v94[1]) = 0;
      HIWORD(v94[1]) = -5120;
      v9 = sub_10002B39C(v7, v6, v8);
LABEL_72:
      String.append(_:)(*&v9);
LABEL_73:

      goto LABEL_74;
    case 17:
      if (!(a2 | a1) && a3 == 34816)
      {
        return 0x7261646E6174732ELL;
      }

      if (a1 == 1 && !a2 && a3 == 34816)
      {
        return 1651733806;
      }

      if (a1 == 2 && !a2 && a3 == 34816)
      {
        return 0x79616C707369642ELL;
      }

      if (a1 == 3 && !a2 && a3 == 34816)
      {
        return 0x696D64682ELL;
      }

      if (a1 == 4 && !a2 && a3 == 34816)
      {
        return 0x72656E45776F6C2ELL;
      }

      if (a1 == 5 && !a2 && a3 == 34816)
      {
        return 0x66696470732ELL;
      }

      if (a1 == 6 && !a2 && a3 == 34816)
      {
        return 7762990;
      }

      if (a1 == 7 && !a2 && a3 == 34816)
      {
        return 0x656C63696865762ELL;
      }

      if (a1 == 8 && !a2 && a3 == 34816)
      {
        return 0x42706F547465732ELL;
      }

      if (a1 == 9 && !a2 && a3 == 34816)
      {
        return 0x6B6369745376742ELL;
      }

      v93 = a1 == 10 && a2 == 0;
      if (v93 && a3 == 34816)
      {
        return 0x41676E6972616568;
      }

      else
      {
        return 0x436D65747379732ELL;
      }

    default:
      _StringGuts.grow(_:)(18);

      v94[0] = 0x6E776F6E6B6E752ELL;
      v94[1] = 0xEF203A6F666E6928;
      v5._countAndFlagsBits = a1;
      v5._object = a2;
      String.append(_:)(v5);
LABEL_74:
      v79 = 41;
      v80 = 0xE100000000000000;
LABEL_75:
      String.append(_:)(*&v79);
      return v94[0];
  }
}

uint64_t sub_10002BF18(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = (a3 >> 8) & 6 | (a3 >> 7) & 1;
  if (v3 > 2)
  {
    if (v3 > 4)
    {
      if (v3 != 5)
      {
        v17 = *(a1 + 16);
        v18 = *(a1 + 24);
        v19 = *(a1 + 32);
        v22 = 0;
        sub_10024896C(v17, v18, v19);
        v20._countAndFlagsBits = 0x747065636E6F632ELL;
        v20._object = 0xEC000000286C6175;
        String.append(_:)(v20);
        sub_1002554F0(v17, v18, v19);
        v21._countAndFlagsBits = 41;
        v21._object = 0xE100000000000000;
        String.append(_:)(v21);
        sub_100248970(v17, v18, v19);
        return v22;
      }

      v5 = 0x6E49746C6975622ELL;
      goto LABEL_14;
    }

    if (v3 != 3)
    {
      v5 = 0x2864657269772ELL;
      goto LABEL_14;
    }

    v4 = 1918985006;
    goto LABEL_8;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      v5 = 0x6F6F7465756C622ELL;
      goto LABEL_14;
    }

    v4 = 1919508782;
LABEL_8:
    v5 = v4 | 0x79616C5000000000;
LABEL_14:
    v22 = v5;
    v14._countAndFlagsBits = sub_10002B39C(a1, a2, a3 & 0xF97F);
    String.append(_:)(v14);

    goto LABEL_15;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  _StringGuts.grow(_:)(21);

  v22 = 0x6E776F6E6B6E752ELL;
  v11._countAndFlagsBits = sub_10002B39C(v6, v7, v10);
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x203A6F666E6920;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = v8;
  v13._object = v9;
  String.append(_:)(v13);
LABEL_15:
  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return v22;
}

unint64_t sub_10002C150()
{
  result = qword_100523680;
  if (!qword_100523680)
  {
    sub_1001C2EC8(&qword_1005229B0, &unk_100450110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523680);
  }

  return result;
}

uint64_t sub_10002C1B4()
{
  v1 = type metadata accessor for HostedRoutingItem(0);
  if (*(&v0->_countAndFlagsBits + v1[9]) == 1)
  {
    v2 = sub_10002AFD0(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_10002AFD0((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0x64656B636970;
    *(v5 + 5) = 0xE600000000000000;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if (*(&v0->_countAndFlagsBits + v1[17]) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10002AFD0(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_10002AFD0((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6C61636F6CLL;
    *(v8 + 5) = 0xE500000000000000;
  }

  _StringGuts.grow(_:)(59);
  v9._countAndFlagsBits = 60;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10._object = 0x80000001004519A0;
  v10._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x203A6469202D20;
  v11._object = 0xE700000000000000;
  String.append(_:)(v11);
  if (v0[1]._object)
  {
    countAndFlagsBits = v0[1]._countAndFlagsBits;
    object = v0[1]._object;

    v12._countAndFlagsBits = 14906;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    v13 = v0->_countAndFlagsBits;
    v14 = v0->_object;

    v15._countAndFlagsBits = v13;
    v15._object = v14;
    String.append(_:)(v15);

    v17 = countAndFlagsBits;
    v16 = object;
  }

  else
  {
    v17 = v0->_countAndFlagsBits;
    v16 = v0->_object;
  }

  v18._countAndFlagsBits = v17;
  v18._object = v16;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x3A656C746974202CLL;
  v19._object = 0xE900000000000020;
  String.append(_:)(v19);
  String.append(_:)(v0[2]);
  v20._countAndFlagsBits = 0x5B203A70202CLL;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  sub_10002C150();
  v21 = BidirectionalCollection<>.joined(separator:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0x203A63202C5DLL;
  v25._object = 0xE600000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = sub_10002B0DC(*(&v0->_countAndFlagsBits + v1[11]));
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0x203A65707974202CLL;
  v27._object = 0xE800000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = sub_10002BF18(*(&v0->_countAndFlagsBits + v1[16]), *(&v0->_object + v1[16]), *(&v0[1]._countAndFlagsBits + v1[16]));
  String.append(_:)(v28);

  v29._countAndFlagsBits = 0x203A6C6F76202C5DLL;
  v29._object = 0xE800000000000000;
  String.append(_:)(v29);
  if (*(&v0->_countAndFlagsBits + v1[13] + 4))
  {
    v30 = 0xE300000000000000;
    v31 = 7104878;
  }

  else
  {
    v31 = Float.description.getter();
    v30 = v32;
  }

  v33 = v30;
  String.append(_:)(*&v31);

  return 0;
}

uint64_t sub_10002C570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v10 = swift_getObjectType();
    v11 = (*(a2 + 24))(v10, a2);
    v13 = v12;
    v15 = v14;
    (*(v8 + 16))(v3, a3, v11, v12, v14, ObjectType, v8);
    swift_unknownObjectRelease();

    return sub_10002349C(v11, v13, v15);
  }

  return result;
}

uint64_t sub_10002C684(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingItems;
  swift_beginAccess();
  v9 = *(v2 + v8);

  LOBYTE(a1) = sub_10001ECB8(a1, v9);

  if ((a1 & 1) == 0)
  {
    v11 = sub_100028D40();
    (*(v5 + 16))(v7, v11, v4);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      HIDWORD(v28) = v13;
      v15 = v14;
      v29 = swift_slowAlloc();
      v30 = v29;
      *v15 = 136315650;
      v16 = _typeName(_:qualified:)();
      v18 = sub_10002C9C8(v16, v17, &v30);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_10002C9C8(*(v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier), *(v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier + 8), &v30);
      *(v15 + 22) = 2082;
      type metadata accessor for HostedRoutingItem(0);

      v19 = Array.description.getter();
      v21 = v20;

      v22 = sub_10002C9C8(v19, v21, &v30);

      *(v15 + 24) = v22;
      _os_log_impl(&_mh_execute_header, v12, BYTE4(v28), "[%s]<%{public}s> setRoutingItems - value: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v7, v4);
    v23 = v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v24 = *(v23 + 8);
      ObjectType = swift_getObjectType();
      v26 = *(v2 + v8);
      v27 = *(v24 + 8);

      v27(v2, &off_1004C75D0, v26, ObjectType, v24);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_10002C9C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002CA94(v11, 0, 0, 1, a1, a2);
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
    sub_100020E0C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100026A44(v11);
  return v7;
}

unint64_t sub_10002CA94(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10002F3E0(a5, a6);
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

uint64_t sub_10002CBA0()
{
  v1 = *(v0 + 24);
  sub_10002CBE8(v1, *(v0 + 32), *(v0 + 40));
  return v1;
}

uint64_t sub_10002CBE8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

Swift::Int sub_10002CC04()
{
  v0 = type metadata accessor for RoutingSessionConfiguration.Context();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  RoutingSessionConfiguration.context.getter();
  if ((*(v1 + 88))(v3, v0) != enum case for RoutingSessionConfiguration.Context.app(_:))
  {
    (*(v1 + 8))(v3, v0);
    goto LABEL_9;
  }

  (*(v1 + 96))(v3, v0);
  v5 = *v3;
  v4 = v3[1];
  v6 = sub_10033D250();
  swift_beginAccess();
  v7 = *v6 == v5 && v6[1] == v4;
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v13 = sub_10033D330();
    swift_beginAccess();
    v14 = *v13 == v5 && v13[1] == v4;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v15 = sub_10033D4F0(), swift_beginAccess(), *v15 == v5) ? (v16 = v15[1] == v4) : (v16 = 0), v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v17 = sub_10033D4FC(), swift_beginAccess(), *v17 == v5) ? (v18 = v17[1] == v4) : (v18 = 0), v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v19 = sub_10033D508(), swift_beginAccess(), *v19 == v5) && v19[1] == v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v20 = sub_10033D514(), swift_beginAccess(), *v20 == v5) && v20[1] == v4)))
    {

LABEL_32:
      v9 = sub_10026A9C0(&off_1004C5A38);
      sub_10026AC3C(&unk_1004C5A58);
      return v9;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_32;
    }

LABEL_9:
    v10 = RoutingSessionConfiguration.itemTypes.getter();
    v11 = sub_10003634C(v10);

    v9 = sub_1000362A4(v11);

    return v9;
  }

  sub_1001BC5A8(&qword_100523C38, &qword_100451B08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100450890;
  *(inited + 40) = 0;
  *(inited + 32) = 0;
  *(inited + 48) = 3;
  *(inited + 56) = v5;
  *(inited + 64) = v4;
  *(inited + 72) = 2;
  v9 = sub_10026A9C0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v9;
}

void sub_10002CF6C(uint64_t a1, void *a2, uint64_t a3)
{
  v114 = type metadata accessor for Date();
  v130 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v7 - 8);
  v117 = &v108 - v8;
  v116 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v129 = *(v116 - 8);
  __chkstk_darwin(v116);
  v118 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HostedRoutingSession(0);
  v134 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v120 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v111 = &v108 - v14;
  v15 = __chkstk_darwin(v13);
  v110 = &v108 - v16;
  v17 = __chkstk_darwin(v15);
  v112 = &v108 - v18;
  v19 = __chkstk_darwin(v17);
  v122 = &v108 - v20;
  v21 = __chkstk_darwin(v19);
  v119 = &v108 - v22;
  v23 = __chkstk_darwin(v21);
  v121 = &v108 - v24;
  v25 = __chkstk_darwin(v23);
  v125 = &v108 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = (&v108 - v28);
  __chkstk_darwin(v27);
  v31 = &v108 - v30;
  v32 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context;
  v33 = *(a3 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context);
  swift_beginAccess();
  v34 = *(v33 + 88);
  type metadata accessor for Preferences();
  v133 = v34;

  static Preferences.sessionRecentActivityInterval.getter();
  v36 = v35;
  v37 = *(a3 + v32);
  v38 = *(v37 + 40);
  v124 = v10;
  if (v38)
  {
    v132 = a2;
    v39 = *(v37 + 48);
    v40 = *(v37 + 56);
    v41 = *(v37 + 64);
    v42 = *(v37 + 72);
    v43 = *(v37 + 80);

    v128 = v39;
    v44 = v39;
    v45 = v40;
    v46 = v40;
    v47 = v41;
    sub_10026D0B8(v44, v46, v41, v42, v43);
    if (static Preferences.hideSourceSessionForTransitionInteractions.getter())
    {
      if (v43 == 5)
      {
        v50 = sub_100037234();
        v51 = v50 + 8;
        v48 = v45;
        v49 = v128;
        v10 = v124;
      }

      else
      {
        v48 = v45;
        v10 = v124;
        if (v43 != 6)
        {
          v126 = 0;
          v131 = 0;
          v49 = v128;
          goto LABEL_11;
        }

        v49 = v128;
        v50 = (v128 + 16);
        v51 = (v128 + 24);
      }

      v126 = *v50;
      v131 = *v51;
    }

    else
    {
      v126 = 0;
      v131 = 0;
      v48 = v45;
      v49 = v128;
      v10 = v124;
    }

LABEL_11:

    sub_1002485A4(v49, v48, v47, v42, v43);
    a2 = v132;
    goto LABEL_12;
  }

  v126 = 0;
  v131 = 0;
LABEL_12:
  v52 = 0;
  v53 = *(a1 + 16);
  while (1)
  {
    v54 = v52;
    if (v53 == v52)
    {
      break;
    }

    v55 = (*(v134 + 80) + 32) & ~*(v134 + 80);
    sub_10002ADF8(a1 + v55 + *(v134 + 72) * v52++, v31, type metadata accessor for HostedRoutingSession);
    v56 = v54;
    v57 = v31[*(v10 + 68)];
    sub_10002AC54(v31, type metadata accessor for HostedRoutingSession);
    if (v57)
    {
      v123 = v56;
      goto LABEL_18;
    }
  }

  if (v53)
  {
    v123 = v52;
    v55 = (*(v134 + 80) + 32) & ~*(v134 + 80);
LABEL_18:
    v58 = 0;
    v127 = v55;
    v59 = a1 + v55;
    v132 = v133 + 7;
    v115 = (v129 + 6);
    v109 = (v130 + 1);
    v60 = *a2;
    v61 = a2[1];
    v62 = -v36;
    v129 = _swiftEmptyArrayStorage;
    v130 = _swiftEmptyArrayStorage;
    v128 = v59;
    while (1)
    {
      if (v58 == v53)
      {
        __break(1u);
        return;
      }

      v63 = v53;
      v64 = *(v134 + 72);
      sub_10002ADF8(v59 + v64 * v58, v29, type metadata accessor for HostedRoutingSession);
      v66 = *v29;
      v65 = v29[1];
      if (*v29 != v60 || v65 != v61)
      {
        v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((v68 & 1) == 0)
        {
          break;
        }
      }

      v53 = v63;
LABEL_20:
      ++v58;
      sub_10002AC54(v29, type metadata accessor for HostedRoutingSession);
      if (v58 == v53)
      {

        goto LABEL_96;
      }
    }

    if (v131)
    {
      if (v66 == v126 && v131 == v65 || (v68 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v68 & 1) != 0))
      {
        sub_10002ADF8(v29, v125, type metadata accessor for HostedRoutingSession);
        v69 = v130;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_100026868(0, v69[2] + 1, 1, v69, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
        }

        v53 = v63;
        v71 = v69[2];
        v70 = v69[3];
        v72 = v69;
        v73 = v71 + 1;
        if (v71 < v70 >> 1)
        {
          v130 = v72;
          v74 = v72;
          v75 = &v142;
LABEL_76:
          v101 = *(v75 - 32);
LABEL_77:
          v74[2] = v73;
          sub_10002AF68(v101, v74 + v127 + v71 * v64, type metadata accessor for HostedRoutingSession);
          v59 = v128;
          goto LABEL_20;
        }

        v74 = sub_100026868((v70 > 1), v71 + 1, 1, v72, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
        v106 = &v142;
LABEL_89:
        v101 = *(v106 - 32);
        v130 = v74;
        goto LABEL_77;
      }
    }

    if (v133[2] && (v76 = v133, Hasher.init(_seed:)(), String.hash(into:)(), v68 = Hasher._finalize()(), v77 = -1 << *(v76 + 32), v78 = v68 & ~v77, ((*(v132 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) != 0))
    {
      v79 = ~v77;
      while (1)
      {
        v80 = (v133[6] + 16 * v78);
        if (*v80 == v66 && v80[1] == v65)
        {
          break;
        }

        v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (v68)
        {
          break;
        }

        v78 = (v78 + 1) & v79;
        if (((*(v132 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      sub_10002ADF8(v29, v121, type metadata accessor for HostedRoutingSession);
      v90 = v129;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_100026868(0, v90[2] + 1, 1, v90, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
      }

      v53 = v63;
      v71 = v90[2];
      v91 = v90[3];
      v92 = v90;
      v73 = v71 + 1;
      if (v71 < v91 >> 1)
      {
        v129 = v92;
        v74 = v92;
        v75 = &v140;
        goto LABEL_76;
      }

      v74 = sub_100026868((v91 > 1), v71 + 1, 1, v92, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
      v107 = &v140;
    }

    else
    {
LABEL_44:
      v53 = v63;
      if (v63 == v123 && (sub_100031908(v68) & 1) != 0)
      {
        sub_10002ADF8(v29, v119, type metadata accessor for HostedRoutingSession);
        v82 = v129;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_100026868(0, v82[2] + 1, 1, v82, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
        }

        v71 = v82[2];
        v83 = v82[3];
        v84 = v82;
        v73 = v71 + 1;
        if (v71 < v83 >> 1)
        {
          v129 = v84;
          v74 = v84;
          v75 = &v138;
          goto LABEL_76;
        }

        v74 = sub_100026868((v83 > 1), v71 + 1, 1, v84, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
        v107 = &v138;
      }

      else
      {
        v85 = v124;
        if (*(v29 + *(v124 + 68)) != 1)
        {
          v89 = v117;
          sub_10001D9AC(v29 + *(v124 + 28), v117, &qword_100523640, qword_100451520);
          if ((*v115)(v89, 1, v116) == 1)
          {
            sub_1000038A4(v89, &qword_100523640, qword_100451520);
          }

          else
          {
            sub_10002AF68(v89, v118, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
            if (sub_1000207E8())
            {
              if (*(v29 + *(v85 + 60)) == 1)
              {
                sub_10002ADF8(v29, v112, type metadata accessor for HostedRoutingSession);
                v93 = v129;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v93 = sub_100026868(0, v93[2] + 1, 1, v93, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
                }

                v71 = v93[2];
                v94 = v93[3];
                v129 = v93;
                v73 = v71 + 1;
                if (v71 >= v94 >> 1)
                {
                  v129 = sub_100026868((v94 > 1), v71 + 1, 1, v129, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
                }

                sub_10002AC54(v118, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
                v74 = v129;
                v75 = v137;
                goto LABEL_76;
              }

              if ((sub_10026049C() & 1) == 0)
              {
                sub_10002ADF8(v29, v110, type metadata accessor for HostedRoutingSession);
                v104 = v129;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v104 = sub_100026868(0, v104[2] + 1, 1, v104, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
                }

                v71 = v104[2];
                v105 = v104[3];
                v129 = v104;
                v73 = v71 + 1;
                if (v71 >= v105 >> 1)
                {
                  v129 = sub_100026868((v105 > 1), v71 + 1, 1, v129, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
                }

                sub_10002AC54(v118, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
                v74 = v129;
                v75 = &v135;
                goto LABEL_76;
              }
            }

            v95 = v113;
            sub_100261430(v113);
            Date.timeIntervalSinceNow.getter();
            v97 = v96;
            (*v109)(v95, v114);
            if (v97 > v62 && (sub_10026049C() & 1) == 0)
            {
              sub_10002ADF8(v29, v111, type metadata accessor for HostedRoutingSession);
              v102 = v129;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v102 = sub_100026868(0, v102[2] + 1, 1, v102, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
              }

              v71 = v102[2];
              v103 = v102[3];
              v129 = v102;
              v73 = v71 + 1;
              if (v71 >= v103 >> 1)
              {
                v129 = sub_100026868((v103 > 1), v71 + 1, 1, v129, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
              }

              sub_10002AC54(v118, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
              v74 = v129;
              v75 = &v136;
              goto LABEL_76;
            }

            sub_10002AC54(v118, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
          }

          sub_10002ADF8(v29, v120, type metadata accessor for HostedRoutingSession);
          v98 = v130;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_100026868(0, v98[2] + 1, 1, v98, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
          }

          v71 = v98[2];
          v99 = v98[3];
          v100 = v98;
          v73 = v71 + 1;
          if (v71 < v99 >> 1)
          {
            v130 = v100;
            v74 = v100;
            v75 = &v139;
            goto LABEL_76;
          }

          v74 = sub_100026868((v99 > 1), v71 + 1, 1, v100, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
          v106 = &v139;
          goto LABEL_89;
        }

        sub_10002ADF8(v29, v122, type metadata accessor for HostedRoutingSession);
        v86 = v129;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100026868(0, v86[2] + 1, 1, v86, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
        }

        v71 = v86[2];
        v87 = v86[3];
        v88 = v86;
        v73 = v71 + 1;
        if (v71 < v87 >> 1)
        {
          v129 = v88;
          v74 = v88;
          v75 = &v141;
          goto LABEL_76;
        }

        v74 = sub_100026868((v87 > 1), v71 + 1, 1, v88, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
        v107 = &v141;
      }
    }

    v101 = *(v107 - 32);
    v129 = v74;
    goto LABEL_77;
  }

  v133 = v131;
LABEL_96:
}

uint64_t sub_10002E020(void *a1, void *a2)
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
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10002E77C(a1[2], a2[2], type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem, sub_10001E4EC, type metadata accessor for HostedRoutingItem) & 1) == 0 || (sub_10002E77C(a1[3], a2[3], type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem, sub_10001E4EC, type metadata accessor for HostedRoutingItem) & 1) == 0)
  {
    goto LABEL_16;
  }

  v63 = v7;
  v14 = type metadata accessor for HostedRoutingSession(0);
  v15 = *(v14 + 28);
  v16 = *(v11 + 48);
  v64 = v14;
  v65 = a1;
  sub_10001D9AC(a1 + v15, v13, &qword_100523640, qword_100451520);
  v17 = a2 + v15;
  v18 = a2;
  sub_10001D9AC(v17, &v13[v16], &qword_100523640, qword_100451520);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v16], 1, v4) == 1)
    {
      sub_1000038A4(v13, &qword_100523640, qword_100451520);
      goto LABEL_13;
    }

LABEL_10:
    v20 = &qword_1005241A8;
    v21 = &qword_1004550A8;
    v22 = v13;
    goto LABEL_11;
  }

  sub_10001D9AC(v13, v10, &qword_100523640, qword_100451520);
  if (v19(&v13[v16], 1, v4) == 1)
  {
    sub_10002181C(v10, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    goto LABEL_10;
  }

  v23 = v63;
  sub_100032E08(&v13[v16], v63, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  v24 = sub_1002695FC(v10, v23);
  sub_10002181C(v23, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  sub_10002181C(v10, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  sub_1000038A4(v13, &qword_100523640, qword_100451520);
  if ((v24 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v26 = v64;
  v25 = v65;
  if ((static RoutingControls.== infix(_:_:)() & 1) == 0 || *(v25 + v26[9]) != *(v18 + v26[9]) || *(v25 + v26[10]) != *(v18 + v26[10]))
  {
    goto LABEL_16;
  }

  v29 = v26[11];
  v30 = (v25 + v29);
  v31 = *(v25 + v29 + 8);
  v32 = (v18 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33 || (*v30 != *v32 || v31 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v33)
  {
    goto LABEL_16;
  }

  v34 = v26[12];
  v35 = (v25 + v34);
  v36 = *(v25 + v34 + 4);
  v37 = (v18 + v34);
  v27 = *(v18 + v34 + 4);
  if (v36)
  {
    if (!v27)
    {
      return v27 & 1;
    }
  }

  else
  {
    if (*v35 != *v37)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      goto LABEL_16;
    }
  }

  if ((static Date.== infix(_:_:)() & 1) != 0 && *(v25 + v26[14]) == *(v18 + v26[14]) && *(v25 + v26[15]) == *(v18 + v26[15]))
  {
    v38 = v25 + v26[16];
    v39 = *(v38 + 3);
    v40 = *(v38 + 4);
    v92 = *(v38 + 10);
    v41 = *(v38 + 2);
    v42 = *(v38 + 1);
    v91[3] = *(v38 + 3);
    v91[4] = v40;
    v43 = *(v38 + 1);
    v91[0] = *v38;
    v91[1] = v43;
    v91[2] = v41;
    v44 = v18 + v26[16];
    v45 = *(v44 + 4);
    v46 = *(v44 + 1);
    v93[0] = *v44;
    v93[1] = v46;
    v47 = *(v44 + 2);
    v93[3] = *(v44 + 3);
    v93[4] = v45;
    v93[2] = v47;
    v48 = *(v38 + 4);
    v88 = v39;
    v89 = v48;
    v94 = *(v44 + 10);
    v49 = v91[0];
    v90 = *(v38 + 10);
    v86 = v42;
    v87 = v41;
    if (*(&v91[0] + 1))
    {
      if (*(&v93[0] + 1))
      {
        v66 = v93[0];
        v50 = *(v44 + 4);
        v69 = *(v44 + 3);
        v70 = v50;
        v71 = *(v44 + 10);
        v51 = *(v44 + 2);
        v67 = *(v44 + 1);
        v68 = v51;
        v79 = v71;
        v77 = v69;
        v78 = v50;
        v75 = v67;
        v76 = v51;
        v74 = v93[0];
        v52 = *(v38 + 4);
        v95[3] = *(v38 + 3);
        v95[4] = v52;
        v96 = *(v38 + 10);
        v53 = *(v38 + 2);
        v95[1] = *(v38 + 1);
        v95[2] = v53;
        v95[0] = v91[0];
        v54 = sub_100268D78(v95, &v74);
        sub_10001D9AC(v91, v72, &qword_100523B20, &unk_1004519F0);
        sub_10001D9AC(v93, v72, &qword_100523B20, &unk_1004519F0);
        sub_1000038A4(&v66, &qword_100523B20, &unk_1004519F0);
        v72[0] = v49;
        v72[3] = v88;
        v72[4] = v89;
        v73 = v90;
        v72[2] = v87;
        v72[1] = v86;
        sub_1000038A4(v72, &qword_100523B20, &unk_1004519F0);
        if (v54)
        {
          goto LABEL_41;
        }

        goto LABEL_16;
      }
    }

    else if (!*(&v93[0] + 1))
    {
      v74 = *&v91[0];
      v60 = *(v38 + 4);
      v77 = *(v38 + 3);
      v78 = v60;
      v79 = *(v38 + 10);
      v61 = *(v38 + 2);
      v75 = *(v38 + 1);
      v76 = v61;
      sub_10001D9AC(v91, v95, &qword_100523B20, &unk_1004519F0);
      sub_10001D9AC(v93, v95, &qword_100523B20, &unk_1004519F0);
      sub_1000038A4(&v74, &qword_100523B20, &unk_1004519F0);
LABEL_41:
      LOBYTE(v27) = *(v25 + v26[17]) ^ *(v18 + v26[17]) ^ 1;
      return v27 & 1;
    }

    v74 = v91[0];
    v55 = *(v38 + 4);
    v77 = *(v38 + 3);
    v78 = v55;
    v56 = *(v38 + 10);
    v57 = *(v38 + 2);
    v75 = *(v38 + 1);
    v76 = v57;
    v79 = v56;
    v80 = v93[0];
    v85 = *(v44 + 10);
    v58 = *(v44 + 4);
    v83 = *(v44 + 3);
    v84 = v58;
    v59 = *(v44 + 2);
    v81 = *(v44 + 1);
    v82 = v59;
    sub_10001D9AC(v91, v95, &qword_100523B20, &unk_1004519F0);
    sub_10001D9AC(v93, v95, &qword_100523B20, &unk_1004519F0);
    v20 = &unk_1005241B0;
    v21 = &unk_1004550B0;
    v22 = &v74;
LABEL_11:
    sub_1000038A4(v22, v20, v21);
  }

LABEL_16:
  LOBYTE(v27) = 0;
  return v27 & 1;
}

uint64_t sub_10002E77C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_10003271C(v20, v17, a4);
        sub_10003271C(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_10002181C(v14, a6);
        sub_10002181C(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_10002E91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_100036134(a1, a2, v4);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002E9D4()
{
  sub_10002F518();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 64))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

void *sub_10002EAC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  sub_100036284(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v4 = v3 + 56;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v29 = v3 + 64;
  v30 = v1;
  v31 = v3 + 56;
  v32 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v33 = v7;
    v34 = *(v3 + 36);
    v10 = *(v3 + 48) + 24 * v6;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = v2;
    v14 = *(v10 + 16);
    sub_10002CBE8(*v10, v12, *(v10 + 16));
    v15 = *sub_100028BB8();
    v16 = (*(v15 + 888))(v11, v12, v14);
    v35 = v17;

    v18 = v14;
    v2 = v13;
    result = sub_10002349C(v11, v12, v18);
    v20 = v13[2];
    v19 = v13[3];
    if (v20 >= v19 >> 1)
    {
      result = sub_100036284((v19 > 1), v20 + 1, 1);
      v2 = v13;
    }

    v2[2] = v20 + 1;
    v21 = &v2[2 * v20];
    v21[4] = v16;
    v21[5] = v35;
    v3 = v32;
    v8 = 1 << *(v32 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = v31;
    v22 = *(v31 + 8 * v9);
    if ((v22 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(v32 + 36))
    {
      goto LABEL_24;
    }

    v23 = v22 & (-2 << (v6 & 0x3F));
    if (v23)
    {
      v8 = __clz(__rbit64(v23)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v9 << 6;
      v25 = v9 + 1;
      v26 = (v29 + 8 * v9);
      while (v25 < (v8 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_10000A16C(v6, v34, 0);
          v8 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_10000A16C(v6, v34, 0);
    }

LABEL_4:
    v7 = v33 + 1;
    v6 = v8;
    if (v33 + 1 == v30)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_10002ED78(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1000360C4();
    do
    {
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void *sub_10002EE5C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001BC5A8(&qword_100526778, &qword_100458558);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001BC5A8(&qword_100526780, &unk_100458560);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10002EF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v8 = *v4;
  Hasher.init(_seed:)();
  if (v5 > 1u)
  {
    if (v5 != 2)
    {
      Hasher._combine(_:)(0);
      goto LABEL_9;
    }

    v9 = 3;
    goto LABEL_7;
  }

  if (v5)
  {
    v9 = 2;
LABEL_7:
    Hasher._combine(_:)(v9);
    String.hash(into:)();
    goto LABEL_9;
  }

  Hasher._combine(_:)(1uLL);
  Hasher._combine(_:)(a2);
LABEL_9:
  v10 = Hasher._finalize()();
  v11 = v8 + 56;
  v12 = -1 << *(v8 + 32);
  v13 = v10 & ~v12;
  if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_34:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;
    sub_10002CBE8(a2, a3, v5);
    sub_1000368B4(a2, a3, v5, v13, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v5;
    return 1;
  }

  v14 = ~v12;
  v28 = v8;
  v15 = *(v8 + 48);
  v17 = v5 == 3 && (a3 | a2) == 0;
  while (1)
  {
    v18 = (v15 + 24 * v13);
    v19 = *v18;
    v20 = *(v18 + 16);
    if (v20 <= 1)
    {
      break;
    }

    if (v20 == 2)
    {
      if (v5 == 2)
      {
        goto LABEL_27;
      }
    }

    else if (v17)
    {
      goto LABEL_33;
    }

LABEL_17:
    v13 = (v13 + 1) & v14;
    if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  if (!*(v18 + 16))
  {
    if (!v5 && v19 == a2)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  if (v5 != 1)
  {
    goto LABEL_17;
  }

LABEL_27:
  v21 = v19 == a2 && v18[1] == a3;
  if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_10002349C(a2, a3, v20);
LABEL_33:
  v22 = *(v28 + 48) + 24 * v13;
  v23 = *v22;
  v24 = *(v22 + 8);
  *a1 = *v22;
  *(a1 + 8) = v24;
  v25 = *(v22 + 16);
  *(a1 + 16) = v25;
  sub_10002CBE8(v23, v24, v25);
  return 0;
}

uint64_t sub_10002F200()
{
  v1 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);

  return v1;
}

void *sub_10002F23C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1001BC5A8(&unk_100521880, &qword_10044EB90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_10002F2B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_10002F23C(v5, 0);
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
        v7 = sub_10002F23C(v10, 0);
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

void *sub_10002F3E0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10002F2B0(a1, a2);
  sub_10002F42C(&off_1004C1AA0);
  return v3;
}

uint64_t sub_10002F42C(uint64_t result)
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

  result = sub_1001BFDFC(result, v11, 1, v3);
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

uint64_t sub_10002F518()
{
  v1 = (v0 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource____lazy_storage___subDataSource);
  if (*(v0 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource____lazy_storage___subDataSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource____lazy_storage___subDataSource);
LABEL_11:
    swift_unknownObjectRetain();
    return v2;
  }

  v3 = v0;
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  if (*(v3 + 40) > 1u)
  {
    if (*(v3 + 40) == 2)
    {
      type metadata accessor for RemoteControlGroupSessionItemDataSource(0);

      v6 = sub_100279470();
      swift_unknownObjectRetain();
      v2 = sub_10028C7D4(v5, v4, 2, v3, &off_1004C7618, v6);
      v7 = sub_100017EF4(&qword_100524C10, type metadata accessor for RemoteControlGroupSessionItemDataSource, &unk_1004573D8);
      v8 = &off_1004C7720;
LABEL_10:
      *v1 = v2;
      v1[1] = v7;
      v1[2] = v8;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    type metadata accessor for AVDiscoveryRoutingItemDataSource(0);
    v9 = sub_100279470();
    swift_unknownObjectRetain();
    v10 = 0x100000000;
    v11 = v5;
    v12 = v4;
    v13 = 3;
LABEL_9:
    v2 = sub_10027949C(v11, v12, v13, v10, v3, &off_1004C7618, v9);
    v7 = sub_100017EF4(&qword_100524C18, type metadata accessor for AVDiscoveryRoutingItemDataSource, &unk_100456F10);
    v8 = &off_1004C7180;
    goto LABEL_10;
  }

  if (!*(v3 + 40))
  {
    type metadata accessor for AVDiscoveryRoutingItemDataSource(0);
    v9 = sub_100279470();
    swift_unknownObjectRetain();
    v10 = v5;
    v11 = v5;
    v12 = v4;
    v13 = 0;
    goto LABEL_9;
  }

  _StringGuts.grow(_:)(75);
  v15._countAndFlagsBits = 91;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 15453;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  String.append(_:)(*(v3 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier));
  v18._object = 0x800000010043E7D0;
  v18._countAndFlagsBits = 0xD000000000000044;
  String.append(_:)(v18);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10002F818(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingItems;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_10002C684(v4);
}

uint64_t sub_10002F87C(int64_t a1)
{
  v2 = v1;
  v93 = type metadata accessor for Date();
  v4 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HostedRoutingItem(0);
  v7 = *(v6 - 1);
  v8 = __chkstk_darwin(v6);
  v10 = (&v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (&v91 - v11);
  swift_beginAccess();
  v13 = *(*(v1 + 40) + 16);
  v14 = *(a1 + 16);
  v15 = _swiftEmptyArrayStorage;
  v97 = v2;
  v98 = v10;
  if (v14)
  {
    v94 = v13;
    v96 = v4;
    v100 = v6;
    v101 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v14, 0);
    v15 = v101;
    v16 = *(v7 + 80);
    v99 = a1;
    v17 = a1 + ((v16 + 32) & ~v16);
    v95 = v7;
    v18 = *(v7 + 72);
    v19 = v14;
    do
    {
      sub_100238F04(v17, v12, type metadata accessor for HostedRoutingItem);
      v21 = *v12;
      v20 = v12[1];

      sub_10024889C(v12, type metadata accessor for HostedRoutingItem);
      v101 = v15;
      v23 = v15[2];
      v22 = v15[3];
      if (v23 >= v22 >> 1)
      {
        sub_1000089FC((v22 > 1), v23 + 1, 1);
        v15 = v101;
      }

      v15[2] = v23 + 1;
      v24 = &v15[2 * v23];
      v24[4] = v21;
      v24[5] = v20;
      v17 += v18;
      --v19;
    }

    while (v19);
    v2 = v97;
    v10 = v98;
    a1 = v99;
    v6 = v100;
    v7 = v95;
    v4 = v96;
    v13 = v94;
  }

  v25 = sub_100008280(v15);

  v96 = v25;
  if (v14)
  {
    LODWORD(v95) = v13 == 0;
    v26 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v27 = *(v7 + 72);
    v91 = (v4 + 40);
    v94 = v27;
    do
    {
      sub_100238F04(v26, v10, type metadata accessor for HostedRoutingItem);
      if (*(v10 + v6[17]) == 1)
      {
        sub_10024889C(v10, type metadata accessor for HostedRoutingItem);
      }

      else
      {
        v29 = *v10;
        v28 = v10[1];
        v30 = *(v2 + 40);
        if (*(v30 + 16))
        {

          v31 = sub_10000698C(v29, v28);
          if (v32)
          {
            v33 = v2;
            v34 = *(*(v30 + 56) + 8 * v31);

            if (*(v34 + OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_current))
            {
              sub_10024889C(v10, type metadata accessor for HostedRoutingItem);
            }

            else
            {
              *(v34 + OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_current) = 1;
              v61 = v92;
              static Date.now.getter();
              sub_10024889C(v98, type metadata accessor for HostedRoutingItem);
              v62 = OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_lastAvailable;
              swift_beginAccess();
              v63 = v61;
              v10 = v98;
              (*v91)(v34 + v62, v63, v93);
              swift_endAccess();
            }

            v2 = v33;
            goto LABEL_10;
          }
        }

        v99 = v14;
        v35 = v10 + v6[16];
        v36 = *v35;
        v37 = *(v35 + 1);
        v38 = *(v10 + v6[11]);
        v39 = v29;
        v40 = v28;
        v41 = v6;
        LODWORD(v100) = *(v10 + v6[9]);
        v42 = *(v35 + 8);
        type metadata accessor for RoutingClientEventContext.AvailableItem(0);
        v43 = swift_allocObject();
        swift_bridgeObjectRetain_n();
        sub_10001DAE0(v36, v37, v42);
        static Date.now.getter();
        *(v43 + OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_current) = 1;
        *(v43 + 16) = v39;
        *(v43 + 24) = v40;
        *(v43 + 40) = v36;
        *(v43 + 48) = v37;
        *(v43 + 56) = v42;
        *(v43 + 58) = v38;
        *(v43 + 32) = v95;
        *(v43 + OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_initiallyPicked) = v100;
        v44 = v97;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v102 = *(v44 + 40);
        v46 = v102;
        v47 = v44;
        *(v44 + 40) = 0x8000000000000000;
        v100 = v39;
        v49 = sub_10000698C(v39, v40);
        v50 = v46[2];
        v51 = (v48 & 1) == 0;
        v52 = v50 + v51;
        if (__OFADD__(v50, v51))
        {
          goto LABEL_58;
        }

        v53 = v48;
        if (v46[3] >= v52)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10023CB44();
          }
        }

        else
        {
          sub_10023C724(v52, isUniquelyReferenced_nonNull_native);
          v54 = sub_10000698C(v100, v40);
          if ((v53 & 1) != (v55 & 1))
          {
            goto LABEL_62;
          }

          v49 = v54;
        }

        v27 = v94;
        v56 = v102;
        if (v53)
        {
          *(v102[7] + 8 * v49) = v43;

          v2 = v47;
        }

        else
        {
          v102[(v49 >> 6) + 8] |= 1 << v49;
          v57 = (v56[6] + 16 * v49);
          *v57 = v100;
          v57[1] = v40;
          *(v56[7] + 8 * v49) = v43;
          v58 = v56[2];
          v59 = __OFADD__(v58, 1);
          v60 = v58 + 1;
          if (v59)
          {
            goto LABEL_59;
          }

          v2 = v47;
          v56[2] = v60;
        }

        *(v2 + 40) = v56;
        swift_endAccess();
        v10 = v98;
        sub_10024889C(v98, type metadata accessor for HostedRoutingItem);
        v25 = v96;
        v6 = v41;
        v14 = v99;
      }

LABEL_10:
      v26 += v27;
      --v14;
    }

    while (v14);
  }

  v64 = *(v2 + 40);
  v67 = *(v64 + 64);
  v66 = v64 + 64;
  v65 = v67;
  v68 = 1 << *(*(v2 + 40) + 32);
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  else
  {
    v69 = -1;
  }

  v70 = v69 & v65;
  v71 = (v68 + 63) >> 6;
  v72 = v25 + 56;
  v100 = *(v2 + 40);

  v73 = 0;
  if (v70)
  {
    goto LABEL_40;
  }

LABEL_36:
  while (1)
  {
    v74 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v74 >= v71)
    {
    }

    v70 = *(v66 + 8 * v74);
    ++v73;
    if (v70)
    {
      while (1)
      {
        v75 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
        v76 = (*(v100 + 48) + ((v74 << 10) | (16 * v75)));
        v78 = *v76;
        v77 = v76[1];
        if (*(v25 + 16))
        {
          Hasher.init(_seed:)();

          String.hash(into:)();
          v79 = Hasher._finalize()();
          v80 = -1 << *(v25 + 32);
          v81 = v79 & ~v80;
          if ((*(v72 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81))
          {
            v82 = ~v80;
            while (1)
            {
              v83 = (*(v25 + 48) + 16 * v81);
              v84 = *v83 == v78 && v83[1] == v77;
              if (v84 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v81 = (v81 + 1) & v82;
              if (((*(v72 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81) & 1) == 0)
              {
                goto LABEL_52;
              }
            }

            v73 = v74;
            if (!v70)
            {
              goto LABEL_36;
            }

            goto LABEL_40;
          }
        }

        else
        {
        }

LABEL_52:
        v85 = *(v97 + 40);
        if (!*(v85 + 16))
        {
          goto LABEL_60;
        }

        v86 = sub_10000698C(v78, v77);
        v88 = v87;

        if ((v88 & 1) == 0)
        {
          goto LABEL_61;
        }

        v89 = *(*(v85 + 56) + 8 * v86);

        *(v89 + OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_current) = 0;

        v73 = v74;
        v25 = v96;
        if (!v70)
        {
          goto LABEL_36;
        }

LABEL_40:
        v74 = v73;
      }
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000300CC()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v2 = v0;
    type metadata accessor for RoutingTimeline();
    v1 = sub_10033853C();
    (*(*v1 + 224))(v2, &off_1004CDFE8);
    *(v2 + 80) = v1;
  }

  return v1;
}

uint64_t sub_100030168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v40 = a3;
  v45 = a2;
  v6 = type metadata accessor for RoutingSessionConfiguration.RoutingItemProperties();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = __chkstk_darwin(v6);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v38 - v9;
  v10 = type metadata accessor for HostedRoutingItem(0);
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for HostedRoutingSourceSession(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002ADF8(a1, a4, type metadata accessor for HostedRoutingItem);
  *(a4 + v10[9]) = 0;
  v18 = a4 + v10[13];
  *v18 = 0;
  v18[4] = 1;
  v46 = _swiftEmptyArrayStorage;
  sub_1000310B4();
  sub_1001BC5A8(&qword_100526760, &unk_100458548);
  sub_10000462C(&qword_100526768, &qword_100526760, &unk_100458548, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v45;
  *(a4 + v10[14]) = v47;
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = v19 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v23 = *(v15 + 72);
    v38 = v23;
    v39 = v20;
    v45 = v22;
    while (2)
    {
      result = sub_10002ADF8(v22 + v23 * v21, v17, type metadata accessor for HostedRoutingSourceSession);
      v25 = 0;
      ++v21;
      v26 = *(v17 + 4);
      v27 = *(v26 + 16);
      while (v27 != v25)
      {
        if (v25 >= *(v26 + 16))
        {
          __break(1u);
          return result;
        }

        sub_10002ADF8(v26 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v25, v13, type metadata accessor for HostedRoutingItem);
        if (*v13 == *a4 && v13[1] == a4[1])
        {
          sub_10002AC54(v13, type metadata accessor for HostedRoutingItem);
LABEL_16:
          sub_10002AC54(v17, type metadata accessor for HostedRoutingSourceSession);
          v30 = 1;
          goto LABEL_17;
        }

        ++v25;
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = sub_10002AC54(v13, type metadata accessor for HostedRoutingItem);
        if (v29)
        {
          goto LABEL_16;
        }
      }

      sub_10002AC54(v17, type metadata accessor for HostedRoutingSourceSession);
      v30 = 0;
      v23 = v38;
      v22 = v45;
      if (v21 != v39)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v30 = 0;
  }

LABEL_17:
  *(a4 + v10[10]) = v30;
  v31 = v41;
  RoutingSessionConfiguration.routingItemProperties.getter();
  v32 = v42;
  static RoutingSessionConfiguration.RoutingItemProperties.attributes.getter();
  sub_100004930(&qword_100526770, &type metadata accessor for RoutingSessionConfiguration.RoutingItemProperties, &protocol conformance descriptor for RoutingSessionConfiguration.RoutingItemProperties);
  v33 = v44;
  v34 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v35 = *(v43 + 8);
  v35(v32, v33);
  result = (v35)(v31, v33);
  if ((v34 & 1) == 0)
  {
    v36 = v10[15];
    sub_1000038A4(a4 + v36, &qword_100523AE8, &unk_100457500);
    v37 = type metadata accessor for RoutingItem.Attributes();
    return (*(*(v37 - 8) + 56))(a4 + v36, 1, 1, v37);
  }

  return result;
}

uint64_t sub_1000306CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void *sub_100030790()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
    *(v0 + 32) = &_swiftEmptyDictionarySingleton;
  }

  return v1;
}

uint64_t sub_1000307D0()
{
  v1 = type metadata accessor for RoutingSessionConfiguration.Context();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
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
LABEL_49:
      __break(1u);
      return result;
    }

LABEL_47:

    return 0;
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

      goto LABEL_49;
    }

    if (v5 == enum case for RoutingSessionConfiguration.Context.localSessionTarget(_:))
    {
      return 0;
    }

    if (v5 != enum case for RoutingSessionConfiguration.Context.activeSessionTarget(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_47;
    }
  }

  return 1;
}

uint64_t sub_100030BB8(uint64_t a1)
{
  v21 = type metadata accessor for HostedRoutingItem(0);
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
LABEL_10:
    v18 = sub_10033F154(v6);

    v19 = [objc_opt_self() symbolNameForComposition:v18];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v20;
  }

  if (v5 != 1)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_10023CCB4(0, v5, 0);
    v6 = v22;
    v9 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_10001D948(v9, v4);
      v11 = &v4[*(v21 + 64)];
      v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(v11 + 8);
      sub_10001DAE0(*v11, v13, v14);
      sub_10001DA14(v4);
      v22 = v6;
      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        sub_10023CCB4((v15 > 1), v16 + 1, 1);
        v6 = v22;
      }

      v6[2] = v16 + 1;
      v17 = &v6[3 * v16];
      v17[4] = v12;
      v17[5] = v13;
      *(v17 + 24) = v14;
      v9 += v10;
      --v5;
    }

    while (v5);
    goto LABEL_10;
  }

  v7 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return sub_10003190C(v7);
}

uint64_t sub_100030DE8(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_100026868(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_100030F44()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_100030F88()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    type metadata accessor for SessionIdentifierStore();
    v2 = sub_100279470();
    sub_100339D18(v2);
    v1 = v3;
    *(v0 + 72) = v3;
  }

  return v1;
}

uint64_t sub_100031030()
{
  v1 = (v0 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

unint64_t sub_1000310B4()
{
  result = qword_100523C88;
  if (!qword_100523C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C88);
  }

  return result;
}

unint64_t sub_100031110(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = (a1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier);
    do
    {
      v7 = (*(*(v2 + 48) + 8 * v4) + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier);
      if (*v7 == *v6 && v7[1] == v6[1])
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_1000311D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1001BC5A8(a5, a6);
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

void *sub_1000313AC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1001BC5A8(a5, a6);
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

unint64_t sub_100031588(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100031110(a1, v2);
}

BOOL sub_100031600(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for HostedRoutingItem(0) + 64));
  v2 = v1[8];
  v3 = (v2 >> 8) & 6 | (v2 >> 7) & 1;
  if ((v3 - 1) < 5)
  {
    v4 = v2 >> 11;
    return v4 == 4;
  }

  if (!v3)
  {
    v4 = *(*v1 + 32) >> 11;
    return v4 == 4;
  }

  return 0;
}

void *sub_10003167C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for HostedRoutingItem(0);
  v25 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_10002ADF8(a3 + v15 + v16 * v13, v12, type metadata accessor for HostedRoutingItem);
      v17 = a1(v12);
      if (v3)
      {
        sub_10002AC54(v12, type metadata accessor for HostedRoutingItem);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_10002AF68(v12, v24, type metadata accessor for HostedRoutingItem);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10002A42C(0, v14[2] + 1, 1);
          v14 = v26;
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_10002A42C((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        v14[2] = v20 + 1;
        result = sub_10002AF68(v24, v14 + v15 + v20 * v16, type metadata accessor for HostedRoutingItem);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_10002AC54(v12, type metadata accessor for HostedRoutingItem);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_10003190C(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for HostedRoutingItem(0) + 64);
  v2 = *v1;
  v3 = *(v1 + 16);
  if (((v3 >> 8) & 6 | (v3 >> 7) & 1) == 6)
  {
    v4 = *(v2 + 32);
    if ((~v4 & 0x6FE) != 0)
    {
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      sub_10024896C(v9, v8, v4);
      sub_10001DAE0(v9, v8, v4);
      v10 = sub_10001D1E4(v9, v8, v4);
      v11 = [objc_opt_self() symbolNameForComposition:v10];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100248970(v9, v8, v4);
      sub_100248970(v9, v8, v4);
    }

    else
    {
      return 0xD00000000000001FLL;
    }
  }

  else
  {
    v6 = sub_10001D1E4(v2, *(v1 + 8), v3);
    v7 = [objc_opt_self() symbolNameForComposition:v6];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v5;
}

uint64_t sub_100031A84()
{
  if (*v0 == 0x4C41434F4CLL && v0[1] == 0xE500000000000000)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100031AC8(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = __chkstk_darwin(AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = __chkstk_darwin(v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v57 = &v42 - v18;
  v19 = type metadata accessor for Optional();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = __chkstk_darwin(v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v42 - v23;
  v25 = __chkstk_darwin(v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v55 = *(a3 - 1);
  __chkstk_darwin(v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  __chkstk_darwin(v62);
  v31 = &v42 - v30;
  v32 = dispatch thunk of Sequence.underestimatedCount.getter();
  v63 = ContiguousArray.init()();
  v58 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v32);
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  dispatch thunk of IteratorProtocol.next()();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      dispatch thunk of IteratorProtocol.next()();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_1000321BC()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    type metadata accessor for RoutingRecommendationDataSource();
    v2 = v0;
    v3 = sub_1000300CC();
    v4 = sub_100279470();
    swift_unknownObjectRetain();
    v1 = sub_1002FC010(v3, v4, v2, &off_1004CDFD8);
    *(v2 + 96) = v1;
  }

  return v1;
}

uint64_t sub_100032268(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for RoutingControls();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

void *sub_1000323E0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for HostedRoutingSession(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_1000326B8(0, v10, 0);
  v11 = v21;
  v12 = *(type metadata accessor for HostedRoutingSourceSession(0) - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_1000326B8((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    v11[2] = v15 + 1;
    sub_10002AF68(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for HostedRoutingSession);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000325E0(void *a1)
{
  sub_1000326D8(a1, a1[3]);
  v2 = Sequence.contains(where:)();
  v3 = a1[3];
  v4 = a1[4];
  sub_1000326D8(a1, v3);
  v8[16] = v2 & 1;
  v5 = type metadata accessor for HostedRoutingItem(0);
  return sub_100031AC8(sub_100032784, v8, v3, v5, &type metadata for Never, v4, &protocol witness table for Never, v6);
}

void *sub_1000326B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023CCD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000326D8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10003271C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100032784@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for HostedRoutingItem(0);
  if ((*(a1 + *(v6 + 68)) & 1) == 0)
  {
    return sub_10003271C(a1, a2, type metadata accessor for HostedRoutingItem);
  }

  if (!v5)
  {
    sub_10003271C(a1, a2, type metadata accessor for HostedRoutingItem);
    v11 = static LocalizedStrings.RoutingItem.Title.speaker.getter();
    goto LABEL_7;
  }

  v7 = (a1 + *(v6 + 64));
  v8 = v7[8];
  v9 = (v8 >> 8) & 6 | (v8 >> 7) & 1;
  if ((v9 - 1) >= 5)
  {
    if (v9)
    {
      return sub_10003271C(a1, a2, type metadata accessor for HostedRoutingItem);
    }

    v16 = *(*v7 + 32);
    if ((v16 & 0xF800) == 0x2000)
    {
      goto LABEL_5;
    }

    v10 = v16 >> 11;
  }

  else
  {
    v10 = v8 >> 11;
    if (v8 >> 11 == 4)
    {
LABEL_5:
      sub_10003271C(a1, a2, type metadata accessor for HostedRoutingItem);
      v11 = static LocalizedStrings.deviceModelName.getter();
LABEL_7:
      v13 = v11;
      v14 = v12;

      a2[4] = v13;
      a2[5] = v14;
      return result;
    }
  }

  if (v10 == 1)
  {
    sub_10003271C(a1, a2, type metadata accessor for HostedRoutingItem);

    a2[6] = 0xD000000000000013;
    a2[7] = 0x800000010043DD00;
    return result;
  }

  return sub_10003271C(a1, a2, type metadata accessor for HostedRoutingItem);
}

BOOL sub_1000328F4()
{
  v1 = [v0 deviceUID];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

Swift::Int sub_10003293C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  type metadata accessor for HostedRoutingItem(0);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_10003322C(v5);
  }

  result = sub_1000330F0(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_100032A00()
{
  v1 = v0;
  v2 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v17 = *(v0 + *(type metadata accessor for HostedRoutingSessionSnapshot(0) + 20));

  sub_100032CAC(v8, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession);
  v16 = v17;
  sub_10001D9AC(v0, v7, &qword_100523620, &unk_1004511D0);
  v9 = type metadata accessor for HostedRoutingSession(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  sub_1000038A4(v7, &qword_100523620, &unk_1004511D0);
  if (v12 == 1)
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_5:
    v17 = v16;
    sub_100032CAC(v13, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession);
    return v17;
  }

  sub_1001BC5A8(&qword_100523630, &qword_1004511E0);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 1) = xmmword_10044EC70;
  sub_10001D9AC(v1, v5, &qword_100523620, &unk_1004511D0);
  result = v11(v5, 1, v9);
  if (result != 1)
  {
    sub_100032E08(v5, v13 + v14, type metadata accessor for HostedRoutingSession);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100032CAC(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_100032F14(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100032E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100032E70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_100032F14(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1001BC5A8(a5, a6);
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

Swift::Int sub_1000330F0(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for HostedRoutingItem(0);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v8;
      }

      v10 = *(type metadata accessor for HostedRoutingItem(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_10032E1A4(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_100033278(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_100033278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v37 = a4;
  v36 = type metadata accessor for HostedRoutingItem(0);
  v9 = __chkstk_darwin(v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *v4;
    v19 = *(v15 + 72);
    v20 = *v4 + v19 * (a3 - 1);
    v33 = -v19;
    v34 = v18;
    v21 = a1 - a3;
    v27 = v19;
    v22 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    v23 = v20;
    while (1)
    {
      sub_10002ADF8(v22, v17, type metadata accessor for HostedRoutingItem);
      sub_10002ADF8(v23, v13, type metadata accessor for HostedRoutingItem);
      v24 = v37(v17, v13);
      sub_10002AC54(v13, type metadata accessor for HostedRoutingItem);
      result = sub_10002AC54(v17, type metadata accessor for HostedRoutingItem);
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v34)
        {
          __break(1u);
          return result;
        }

        v25 = v35;
        sub_10002AF68(v22, v35, type metadata accessor for HostedRoutingItem);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_10002AF68(v25, v23, type metadata accessor for HostedRoutingItem);
        v23 += v33;
        v22 += v33;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

id sub_1000334F0()
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
LABEL_51:
      __break(1u);
      return result;
    }

LABEL_49:

    return 0;
  }

  if (v5 != enum case for RoutingSessionConfiguration.Context.deviceTarget(_:) && v5 != enum case for RoutingSessionConfiguration.Context.platterTarget(_:))
  {
    if (v5 == enum case for RoutingSessionConfiguration.Context.deviceSessionTarget(_:))
    {
      (*(v2 + 8))(v4, v1);
    }

    else if (v5 != enum case for RoutingSessionConfiguration.Context.nonUI(_:) && v5 != enum case for RoutingSessionConfiguration.Context.ui(_:))
    {
      if (v5 == enum case for RoutingSessionConfiguration.Context.localSessionTarget(_:) || v5 == enum case for RoutingSessionConfiguration.Context.activeSessionTarget(_:))
      {
        return 0;
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_49;
    }

    result = [objc_opt_self() currentSettings];
    if (result)
    {
      v22 = result;
      v23 = [result supportSystemEndpoints];

      return v23;
    }

    goto LABEL_51;
  }

  (*(v2 + 8))(v4, v1);
  return 0;
}

void sub_100033DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100033E38(id a1, MRAVDistantEndpoint *a2)
{
  v2 = a2;
  if (([(MRAVDistantEndpoint *)v2 isLocalEndpoint]& 1) != 0)
  {
    v3 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

uint64_t sub_100033EA0(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = Notification.name.getter();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    a2(v5, v7);
  }

  return result;
}

uint64_t sub_100033F40(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v46 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v41 - v11;
  v13 = sub_100028D40();
  v47 = v8;
  v15 = *(v8 + 16);
  v14 = v8 + 16;
  v44 = v15;
  v45 = v13;
  (v15)(v12);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  LODWORD(v43) = v17;
  v18 = os_log_type_enabled(v16, v17);
  v41[2] = v6;
  v42 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v41[1] = v14;
    v20 = v19;
    v41[0] = swift_slowAlloc();
    v48 = v41[0];
    *v20 = 136315394;
    v21 = _typeName(_:qualified:)();
    v23 = a2;
    v24 = sub_10002C9C8(v21, v22, &v48);
    v25 = v47;

    *(v20 + 4) = v24;
    a2 = v23;
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_10002C9C8(a1, v23, &v48);
    _os_log_impl(&_mh_execute_header, v16, v43, "[%s] updateSessionsIfNeeded - reason: %{public}s", v20, 0x16u);
    swift_arrayDestroy();

    v26 = v25;
  }

  else
  {

    v26 = v47;
  }

  v27 = *(v26 + 8);
  v27(v12, v7);
  v28 = sub_1000343D4();
  v29 = (*(*v3 + 440))();
  v30 = sub_100034B1C(v28, v29);

  if ((v30 & 1) == 0)
  {
    v43 = v27;
    v44(v46, v45, v7);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v33 = 136315394;
      v34 = _typeName(_:qualified:)();
      v36 = a2;
      v37 = sub_10002C9C8(v34, v35, &v48);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_10002C9C8(v42, v36, &v48);
      _os_log_impl(&_mh_execute_header, v31, v32, "[%s] updateSessionsIfNeeded - updated because: %{public}s", v33, 0x16u);
      swift_arrayDestroy();
    }

    v43(v46, v7);
    v38 = *(*v3 + 448);

    v38(v39);
    sub_1002A8A5C(v28);
  }
}

uint64_t sub_1000343D4()
{
  v1 = sub_1001BC5A8(&qword_100525728, &unk_100457A80);
  v61 = *(v1 - 8);
  v62 = v1;
  __chkstk_darwin(v1);
  v60 = &v57 - v2;
  v3 = sub_1001BC5A8(&qword_100523B88, &unk_100451A50);
  __chkstk_darwin(v3 - 8);
  v5 = &v57 - v4;
  v75 = type metadata accessor for HostedRoutingSourceSession(0);
  v6 = *(v75 - 8);
  v7 = __chkstk_darwin(v75);
  v59 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v57 - v9;
  v77 = v0;
  v10 = sub_100034D68();
  v11 = v10;
  v12 = v10 + 64;
  v13 = 1 << v10[32];
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 8);
  v71 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore;
  v64 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_musicFavoriteStatusDataSource;
  v16 = (v13 + 63) >> 6;
  v74 = (v6 + 56);
  v58 = v6;
  v72 = (v6 + 48);

  v18 = 0;
  v63 = _swiftEmptyArrayStorage;
  v76 = v5;
  for (i = result; v15; result = sub_1000038A4(v5, &qword_100523B88, &unk_100451A50))
  {
LABEL_11:
    while (1)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v20 | (v18 << 6);
      v22 = (*(v11 + 6) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v25 = *(*(v11 + 7) + 8 * v21);
      v26 = *(v25 + 16);
      if (v26 != 3)
      {
        break;
      }

      v40 = *(**(v77 + v71) + 256);

      v41 = v40(v24, v23);
      v78 = v24;
      v42 = v41;
      v44 = v43;

      v45 = *(v25 + 80);
      v46 = sub_100298814();

      v47 = v44;
      v5 = v76;
      sub_10025A190(v42, v47, v45, v46, v78, v23, v76);
LABEL_15:
      v48 = v75;
      (*v74)(v5, 0, 1, v75);

      v49 = (*v72)(v5, 1, v48);
      v11 = i;
      if (v49 == 1)
      {
        goto LABEL_6;
      }

      v50 = v57;
      sub_100032E70(v5, v57, type metadata accessor for HostedRoutingSourceSession);
      sub_100032E70(v50, v59, type metadata accessor for HostedRoutingSourceSession);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_1002CABDC(0, v63[2] + 1, 1, v63);
      }

      v52 = v63[2];
      v51 = v63[3];
      if (v52 >= v51 >> 1)
      {
        v63 = sub_1002CABDC((v51 > 1), v52 + 1, 1, v63);
      }

      v53 = v63;
      v63[2] = v52 + 1;
      result = sub_100032E70(v59, v53 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v52, type metadata accessor for HostedRoutingSourceSession);
      if (!v15)
      {
        goto LABEL_7;
      }
    }

    if (v26 == 2)
    {
      v27 = v77;
      v28 = v71;
      v29 = *(v77 + v71);
      v30 = *(*v29 + 256);
      v69 = *v29 + 256;
      v70 = v30;

      v78 = v24;
      v31 = v70(v24, v23);
      v69 = v32;
      v70 = v31;

      v33 = *(**(v27 + v28) + 256);

      v34 = v33(v24, v23);
      v67 = v35;
      v68 = v34;

      v66 = *(v25 + 88);
      v65 = sub_100298814();
      v36 = *(**(v77 + v64) + 200);

      v37 = v36(v70, v69);
      v5 = v76;
      v38 = v37;

      LODWORD(v29) = *(v25 + 97);
      v39 = *(v25 + 98);

      sub_10025B89C(v68, v67, v66, v65, v38, v29, v39, v78, v5, v23);
      goto LABEL_15;
    }

    (*v74)(v5, 1, 1, v75);
LABEL_6:
    ;
  }

LABEL_7:
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      v79 = v63;
      swift_getKeyPath();
      v54 = v60;
      KeyPathComparator.init<A>(_:order:)();
      sub_1001BC5A8(&qword_100525730, &qword_100457AB0);
      sub_10000462C(&qword_100525738, &qword_100525730, &qword_100457AB0, &protocol conformance descriptor for [A]);
      sub_10000462C(&qword_100525740, &qword_100525728, &unk_100457A80, &protocol conformance descriptor for KeyPathComparator<A>);
      v55 = v62;
      v56 = Sequence.sorted<A>(using:)();
      (*(v61 + 8))(v54, v55);

      return v56;
    }

    v15 = *&v12[8 * v19];
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100034B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSourceSession(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1002CDCB4(v13, v10, type metadata accessor for HostedRoutingSourceSession);
        sub_1002CDCB4(v14, v7, type metadata accessor for HostedRoutingSourceSession);
        sub_1002CDD70(&qword_100523CB0, type metadata accessor for HostedRoutingSourceSession, &unk_100452478);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10002187C(v7, type metadata accessor for HostedRoutingSourceSession);
        sub_10002187C(v10, type metadata accessor for HostedRoutingSourceSession);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void *sub_100034D24(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &_swiftEmptyDictionarySingleton;
    *(v1 + v2) = &_swiftEmptyDictionarySingleton;
  }

  return v4;
}

uint64_t sub_100034D74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_100034E04(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  *(*(a1 + 32) + 64) = 0;
  *(*(a1 + 32) + 16) = 0;
  objc_sync_exit(v2);

  if ([*(a1 + 40) disarm])
  {
    v3 = +[MRUserSettings currentSettings];
    v4 = [v3 verboseConnectionMonitorLogging];

    if (v4)
    {
      v5 = _MRLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        [*(v6 + 88) timeIntervalSinceNow];
        *buf = 138412546;
        v12 = v6;
        v13 = 2048;
        v14 = -v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[ConnectionMonitor] Checked-in connection %@ in %lf seconds", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015BC74;
    block[3] = &unk_1004B6D08;
    block[4] = v8;
    dispatch_async(v9, block);
  }
}

uint64_t sub_100034F90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100034FA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100034FB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100034FC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100034FD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100034FE0(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_10003500C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003501C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003502C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003503C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003504C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003505C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003506C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003507C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003508C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003509C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000350AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000350BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000350CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000350DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000350EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000350FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003510C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003511C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003512C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003513C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003514C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003515C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003516C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003517C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003518C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003519C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000351AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000351BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000351CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000351DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000351EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000351FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003520C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003521C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003522C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003523C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003524C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003525C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003526C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003527C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003528C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003529C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000352AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100035374(uint64_t a1)
{
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = [*(*(a1 + 32) + 32) allValues];
  v3 = [v2 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        if ([v7 type] - 6 <= 0xFFFFFFFFFFFFFFFBLL)
        {
          v8 = objc_alloc_init(NSMutableDictionary);
          v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 type]);
          [v8 setObject:v9 forKeyedSubscript:@"type"];

          v10 = [v7 date];
          [v8 setObject:v10 forKeyedSubscript:@"date"];

          v11 = [v7 outputDeviceUID];

          if (v11)
          {
            v12 = [v7 outputDeviceUID];
            [v8 setObject:v12 forKeyedSubscript:@"uid"];
          }

          v13 = [NSNumber numberWithInteger:objc_msgSend_event(v7)];
          [v8 setObject:v13 forKeyedSubscript:@"event"];

          v14 = objc_msgSend_event(v7);
          v15 = sub_100035750(v14);
          [v8 setObject:v15 forKeyedSubscript:@"eventdescription"];

          v16 = [v7 selectionReason];
          [v8 setObject:v16 forKeyedSubscript:@"selectionreason"];

          v17 = [v7 eventReason];
          [v8 setObject:v17 forKeyedSubscript:@"eventreason"];

          v18 = [v7 date];
          [v18 timeIntervalSinceNow];
          v20 = [NSNumber numberWithDouble:-v19];
          [v8 setObject:v20 forKeyedSubscript:@"timesince"];

          v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 changeType]);
          [v8 setObject:v21 forKeyedSubscript:@"changeType"];

          v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 supportsIdleReset]);
          [v8 setObject:v22 forKeyedSubscript:@"supportsIdleReset"];

          [v7 changeType];
          v23 = MRMediaRemoteActiveEndpointChangeTypeCopyDescription();
          [v8 setObject:v23 forKeyedSubscript:@"changeTypeDescription"];

          v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 demoteWhenSyncingToCompanion]);
          [v8 setObject:v24 forKeyedSubscript:@"demoteWhenSyncingToCompanion"];

          [v7 type];
          active = MRMediaRemoteActiveEndpointTypeCopyDescription();
          if (active)
          {
            [*(a1 + 40) setObject:v8 forKeyedSubscript:active];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v4);
  }
}

uint64_t sub_100035750(unint64_t a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return *(&off_1004B6D78 + a1);
  }
}

void sub_100035880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100035898(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 40) mutableCopy];
  if ([v5 count] >= 6)
  {
    [v5 removeObjectsInRange:{0, objc_msgSend(v5, "count") - 5}];
  }

  v2 = [v5 msv_map:&stru_1004B6930];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_100035B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10000698C(a3, a4);
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
      sub_100219338(v18, a5 & 1);
      v13 = sub_10000698C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100035C9C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_100035C9C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005228C0, &qword_10045B1A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

  return result;
}

uint64_t sub_100035E2C()
{
  sub_10002F518();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 56))(ObjectType, v2);
  swift_unknownObjectRelease();
  v5 = *(*v0 + 224);

  return v5(v4);
}

char *sub_100035FA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_100523C38, &qword_100451B08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000360C4()
{
  result = qword_100523C48;
  if (!qword_100523C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C48);
  }

  return result;
}