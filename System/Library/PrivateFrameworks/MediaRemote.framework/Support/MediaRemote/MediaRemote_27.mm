void sub_10037E1E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_100528760, &qword_10045AE10);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v1;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v18 = NSObject._rawHashValue(seed:)(v16);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

        v2 = v26;
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
}

void *sub_10037E3FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10037E41C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10037E41C(void *result, int64_t a2, char a3, void *a4)
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

  sub_1001BC5A8(&qword_100528750, &unk_10045AE00);
  v10 = *(type metadata accessor for UUID() - 8);
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
  v15 = *(type metadata accessor for UUID() - 8);
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

void sub_10037E5F4(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100018D7C(0, &qword_100528748, HMUser_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100018D7C(0, &qword_100528748, HMUser_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10037E818(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100018D7C(0, &qword_100528748, HMUser_ptr);
    sub_10037EB24();
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

      sub_10037D8D8(&v8, v6);

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

uint64_t sub_10037E98C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009F34;

  return sub_10037D624(v2, v3);
}

uint64_t sub_10037EA38()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10037EA78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009F30;

  return sub_10037CCCC(v2, v3);
}

unint64_t sub_10037EB24()
{
  result = qword_100528758;
  if (!qword_100528758)
  {
    sub_100018D7C(255, &qword_100528748, HMUser_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528758);
  }

  return result;
}

unint64_t sub_10037EB8C()
{
  result = qword_100528770;
  if (!qword_100528770)
  {
    sub_1001C2EC8(&qword_100528768, &qword_10045AE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528770);
  }

  return result;
}

uint64_t sub_10037EBF0(uint64_t a1)
{
  v3 = *(sub_1001BC5A8(&qword_100528780, &unk_10045AE20) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005363A0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100015AFC(v5, qword_1005363A8);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v8 = 136315650;
      *(v8 + 4) = sub_10002C9C8(0xD000000000000018, 0x800000010045AD50, &v19);
      *(v8 + 12) = 2048;
      *(v8 + 14) = 0x4024000000000000;
      *(v8 + 22) = 2112;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 24) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%s] - Failed to populate HMHomeManager within %f: %@", v8, 0x20u);
      sub_1000038A4(v9, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v10);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1005363A0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100015AFC(v12, qword_1005363A8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10002C9C8(0xD000000000000018, 0x800000010045AD50, &v19);
      _os_log_impl(&_mh_execute_header, v13, v14, "[%s] - Refreshed HMHomeManager", v15, 0xCu);
      sub_100026A44(v16);
    }
  }

  v19 = v4;
  v17 = v4;
  sub_1001BC5A8(&qword_100528780, &unk_10045AE20);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10037F00C()
{
  v1 = (v0 + OBJC_IVAR___MRDRouteRecommendationDemotionContext_primaryBundleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_10037F0D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___MRDRouteRecommendationDemotionContext_primaryBundleIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_10037F1D8()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_recommendationType;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10037F270(uint64_t a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_recommendationType;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10037F368()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isASELocal;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10037F400(char a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isASELocal;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10037F4F8()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_localOutputContextHasAirPlay;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10037F590(char a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_localOutputContextHasAirPlay;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10037F688()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isSourceEndpointPlaying;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10037F720(char a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isSourceEndpointPlaying;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10037F818()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isTargetEndpointPlaying;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10037F8B0(char a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isTargetEndpointPlaying;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10037F9EC()
{
  v1 = (v0 + OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetNowPlayingBundleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_10037FAC0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetNowPlayingBundleIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_10037FB80()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetEndpointContainsDiscoverableGroupLeader;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10037FBC4(char a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetEndpointContainsDiscoverableGroupLeader;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_10037FC74(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, char a7, uint64_t a8, uint64_t a9, char a10)
{
  v18 = objc_allocWithZone(v10);
  v19 = &v18[OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetNowPlayingBundleIdentifier];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v18[OBJC_IVAR___MRDRouteRecommendationDemotionContext_primaryBundleIdentifier];
  *v20 = a1;
  v20[1] = a2;
  *&v18[OBJC_IVAR___MRDRouteRecommendationDemotionContext_recommendationType] = a3;
  v18[OBJC_IVAR___MRDRouteRecommendationDemotionContext_isASELocal] = a4;
  v18[OBJC_IVAR___MRDRouteRecommendationDemotionContext_localOutputContextHasAirPlay] = a5;
  v18[OBJC_IVAR___MRDRouteRecommendationDemotionContext_isSourceEndpointPlaying] = a6;
  v18[OBJC_IVAR___MRDRouteRecommendationDemotionContext_isTargetEndpointPlaying] = a7;
  swift_beginAccess();
  *v19 = a8;
  v19[1] = a9;
  v18[OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetEndpointContainsDiscoverableGroupLeader] = a10;
  v23.receiver = v18;
  v23.super_class = v10;
  return objc_msgSendSuper2(&v23, "init");
}

id sub_10037FD94(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, char a7, uint64_t a8, uint64_t a9, char a10)
{
  v12 = &v10[OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetNowPlayingBundleIdentifier];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v10[OBJC_IVAR___MRDRouteRecommendationDemotionContext_primaryBundleIdentifier];
  *v13 = a1;
  v13[1] = a2;
  *&v10[OBJC_IVAR___MRDRouteRecommendationDemotionContext_recommendationType] = a3;
  v10[OBJC_IVAR___MRDRouteRecommendationDemotionContext_isASELocal] = a4;
  v10[OBJC_IVAR___MRDRouteRecommendationDemotionContext_localOutputContextHasAirPlay] = a5;
  v10[OBJC_IVAR___MRDRouteRecommendationDemotionContext_isSourceEndpointPlaying] = a6;
  v10[OBJC_IVAR___MRDRouteRecommendationDemotionContext_isTargetEndpointPlaying] = a7;
  swift_beginAccess();
  *v12 = a8;
  v12[1] = a9;
  v10[OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetEndpointContainsDiscoverableGroupLeader] = a10;
  v15.receiver = v10;
  v15.super_class = type metadata accessor for RouteRecommendationDemotionContext();
  return objc_msgSendSuper2(&v15, "init");
}

id sub_10038006C()
{
  v0 = type metadata accessor for RouteRecommendationDemotionPolicy();
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_shouldDemote] = 0;
  v2 = &v1[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason];
  *v2 = 0;
  v2[1] = 0;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, "init");
  qword_1005385B8 = result;
  return result;
}

id sub_1003800D4(char a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_shouldDemote] = a1;
  v8 = &v7[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

void *sub_1003801C4(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_10034EA70(a1, v3 + OBJC_IVAR___MRDRouteRecommendationDemotionController_appInFocusMonitor);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_100026A44(a1);
  return v4;
}

id sub_10038025C(void *a1)
{
  v2 = v1;
  if ((*((swift_isaMask & *a1) + 0xA8))() != 1)
  {
    goto LABEL_22;
  }

  if (((*((swift_isaMask & *a1) + 0xC0))() & 1) == 0)
  {
    v8 = type metadata accessor for RouteRecommendationDemotionPolicy();
    v9 = objc_allocWithZone(v8);
    v9[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_shouldDemote] = 1;
    v10 = &v9[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason];
    *v10 = 0xD000000000000010;
    v10[1] = 0x80000001004434D0;
    return objc_msgSendSuper2(&v40, "init", v35.receiver, v35.super_class, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v39.receiver, v39.super_class, v9, v8);
  }

  if ((*((swift_isaMask & *a1) + 0xD8))())
  {
    v4 = type metadata accessor for RouteRecommendationDemotionPolicy();
    v5 = objc_allocWithZone(v4);
    v5[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_shouldDemote] = 1;
    v6 = &v5[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason];
    *v6 = 0xD00000000000001CLL;
    v6[1] = 0x80000001004434F0;
    return objc_msgSendSuper2(&v35, "init", v5, v4, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v39.receiver, v39.super_class, v40.receiver, v40.super_class);
  }

  if ((*((swift_isaMask & *a1) + 0xF0))())
  {
    v11 = type metadata accessor for RouteRecommendationDemotionPolicy();
    v12 = objc_allocWithZone(v11);
    v12[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_shouldDemote] = 1;
    v13 = &v12[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason];
    *v13 = 0xD000000000000011;
    v13[1] = 0x80000001004435C0;
    return objc_msgSendSuper2(&v36, "init", v35.receiver, v35.super_class, v12, v11, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v39.receiver, v39.super_class, v40.receiver, v40.super_class);
  }

  if (((*((swift_isaMask & *a1) + 0x108))() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (((*((swift_isaMask & *a1) + 0x138))() & 1) == 0)
  {
    v22 = type metadata accessor for RouteRecommendationDemotionPolicy();
    v23 = objc_allocWithZone(v22);
    v23[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_shouldDemote] = 1;
    v24 = &v23[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason];
    *v24 = 0xD00000000000001BLL;
    v24[1] = 0x8000000100443510;
    return objc_msgSendSuper2(&v39, "init", v35.receiver, v35.super_class, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v23, v22, v40.receiver, v40.super_class);
  }

  v14 = *((swift_isaMask & *a1) + 0x90);
  v15 = v14();
  v17 = v16;
  v18 = (*((swift_isaMask & *a1) + 0x120))();
  if (!v19)
  {

    goto LABEL_19;
  }

  if (v15 == v18 && v19 == v17)
  {

    goto LABEL_21;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v21 & 1) == 0)
  {
LABEL_19:
    v25 = type metadata accessor for RouteRecommendationDemotionPolicy();
    v26 = objc_allocWithZone(v25);
    v26[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_shouldDemote] = 1;
    v27 = &v26[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason];
    *v27 = 0xD000000000000042;
    v27[1] = 0x8000000100443530;
    return objc_msgSendSuper2(&v38, "init", v35.receiver, v35.super_class, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v26, v25, v39.receiver, v39.super_class, v40.receiver, v40.super_class);
  }

LABEL_21:
  v28 = *(v2 + OBJC_IVAR___MRDRouteRecommendationDemotionController_appInFocusMonitor + 32);
  sub_1000326D8((v2 + OBJC_IVAR___MRDRouteRecommendationDemotionController_appInFocusMonitor), *(v2 + OBJC_IVAR___MRDRouteRecommendationDemotionController_appInFocusMonitor + 24));
  v29 = v14();
  v30 = (*(v28 + 8))(v29);

  if ((v30 & 1) == 0)
  {
    v32 = type metadata accessor for RouteRecommendationDemotionPolicy();
    v33 = objc_allocWithZone(v32);
    v33[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_shouldDemote] = 1;
    v34 = &v33[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason];
    *v34 = 0xD000000000000038;
    v34[1] = 0x8000000100443580;
    return objc_msgSendSuper2(&v37, "init", v35.receiver, v35.super_class, v36.receiver, v36.super_class, v33, v32, v38.receiver, v38.super_class, v39.receiver, v39.super_class, v40.receiver, v40.super_class);
  }

LABEL_22:
  if (qword_1005363D0 != -1)
  {
    swift_once();
  }

  v31 = qword_1005385B8;

  return v31;
}

id sub_100380844(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void type metadata accessor for MRRouteRecommendationType()
{
  if (!qword_100528858)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100528858);
    }
  }
}

void *sub_1003808EC()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_localEndpoint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100380938(uint64_t a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_localEndpoint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1003809F0()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_activeSystemEndpoint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100380A3C(uint64_t a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_activeSystemEndpoint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100380AF4()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_eligibleToShowRecommendationsOutsideApp;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_100380B38(char a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_eligibleToShowRecommendationsOutsideApp;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100380BE8()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_eligibleToShowDeltaBanners;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_100380C2C(char a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_eligibleToShowDeltaBanners;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_100380CDC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_localEndpoint;
  *&v9[OBJC_IVAR___MRDRouteRecommendationSuppressionContext_localEndpoint] = 0;
  v11 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_activeSystemEndpoint;
  *&v9[OBJC_IVAR___MRDRouteRecommendationSuppressionContext_activeSystemEndpoint] = 0;
  swift_beginAccess();
  *&v9[v10] = a1;
  swift_beginAccess();
  *&v9[v11] = a2;
  v9[OBJC_IVAR___MRDRouteRecommendationSuppressionContext_eligibleToShowRecommendationsOutsideApp] = a3;
  v9[OBJC_IVAR___MRDRouteRecommendationSuppressionContext_eligibleToShowDeltaBanners] = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, "init");
}

id sub_100380FB4(uint64_t a1)
{
  v1 = type metadata accessor for RouteRecommendationSuppressionPolicy();
  v2 = objc_allocWithZone(v1);
  v2[OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_shouldSuppress] = 0;
  v3 = &v2[OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_reason];
  *v3 = 0;
  v3[1] = 0;
  v5.receiver = v2;
  v5.super_class = v1;
  result = objc_msgSendSuper2(&v5, "init");
  qword_1005385C0 = result;
  return result;
}

id sub_10038101C(char a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_shouldSuppress] = a1;
  v8 = &v7[OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_reason];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t *sub_10038108C()
{
  if (qword_100536460 != -1)
  {
    swift_once();
  }

  return &qword_1005385C0;
}

id sub_1003810DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteRecommendationSuppressionPolicy();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_shouldSuppress] = 1;
  v6 = &v5[OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_reason];
  *v6 = a1;
  v6[1] = a2;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, "init");
}

id sub_1003811C8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10038122C(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(45);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x65636976656420;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  return 0xD000000000000024;
}

id sub_1003812E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1001BC5A8(&qword_100521B00, &qword_10044ED30);
  sub_1001C3FE0(a1, a2);
  InvitationRequest.__allocating_init(invitationData:displayName:userInfo:)();
  v14 = dispatch thunk of InvitationRequest.invitationUserInfo.getter();
  if (v15 >> 60 == 15)
  {

    sub_1001C4034(a1, a2);
LABEL_9:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v16 = v14;
  v17 = v15;
  sub_1001C3FE0(v14, v15);
  v18 = sub_1001D2EB8(v16, v17);
  v19 = sub_100367638(v18);
  if (!v19)
  {

    sub_1001C4034(a1, a2);
    sub_100045968(v16, v17);
    goto LABEL_9;
  }

  v20 = v19;
  v37 = v16;
  v38 = v17;
  dispatch thunk of InvitationRequest.invitationDisplayName.getter();
  v21 = objc_allocWithZone(MRGroupSessionHostInfo);
  v22 = String._bridgeToObjectiveC()();

  v23 = [v21 initWithRouteType:v20 displayName:v22];

  v24.super.isa = Data._bridgeToObjectiveC()().super.isa;
  if (a4)
  {
    v25 = String._bridgeToObjectiveC()();

    v26 = a9;
    if (a6)
    {
      goto LABEL_6;
    }

LABEL_11:
    v27 = 0;
    if (a8)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v25 = 0;
  v26 = a9;
  if (!a6)
  {
    goto LABEL_11;
  }

LABEL_6:
  v27 = String._bridgeToObjectiveC()();

  if (a8)
  {
LABEL_7:
    v28 = String._bridgeToObjectiveC()();

    goto LABEL_13;
  }

LABEL_12:
  v28 = 0;
LABEL_13:
  v30 = [objc_allocWithZone(NSNumber) initWithInteger:v26];
  v31 = [v39 initWithHostInfo:v23 invitationData:v24.super.isa sharedSecret:v25 sessionIdentifier:v27 equivalentMediaIdentifier:v28 version:v30];

  v32 = [objc_opt_self() sharedCenter];
  v33 = v23;
  v34 = [v32 localActiveUserState];

  if (v34)
  {
    v35 = v33;
    v36 = [v34 storefrontCountryCode];

    if (v36)
    {
      [v31 setStorefrontCountryCode:v36];

      sub_100045968(v37, v38);

      sub_1001C4034(a1, a2);
      return v31;
    }
  }

  else
  {
  }

  sub_100045968(v37, v38);
  sub_1001C4034(a1, a2);
  return v31;
}

uint64_t ActivityController.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ActivityController.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MRDUIActivityController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1001DA158;
}

void *ActivityController.currentActivitiesInfo.getter()
{
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  return sub_100384948();
}

void ActivityController.startNowPlayingActivity(preferredState:suppressedBundleIdentifiers:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19[-v7];
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100450890;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v10;
  *(inited + 48) = a1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v11;
  *(inited + 120) = sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  *(inited + 96) = a2;

  v12 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  v13 = sub_100384FCC(0, v12);

  if (v13)
  {
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    v15[5] = v3;
    v16 = v3;
    sub_1001BF864(0, 0, v8, &unk_10045AFC8, v15);
  }

  else
  {
    v17 = static os_log_type_t.error.getter();
    v18 = *sub_1001D8BC4();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Failed to start nowPlaying activity", 35, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100381DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_100381DD0, 0, 0);
}

uint64_t sub_100381DD0()
{
  v1 = sub_1001BC5A8(&qword_100528AB0, &qword_10045B188);
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  v2 = sub_1001BC5A8(&qword_100528AB8, &qword_10045B190);
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  dispatch thunk of Activity.activityStateUpdates.getter();
  Activity.ActivityStateUpdates.makeAsyncIterator()();
  (*(v3 + 8))(v4, v2);

  sub_1001BC5A8(&qword_100528AC0, &qword_10045B198);
  v0[8] = swift_task_alloc();
  v5 = sub_10038B9C0();
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_100381FD4;
  v7 = v0[8];
  v8 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v5);
}

uint64_t sub_100381FD4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1003823E4;
  }

  else
  {
    v2 = sub_1003820E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100382104()
{
  v1 = *(v0 + 64);
  v2 = type metadata accessor for ActivityState();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
LABEL_7:

    v13 = *(v0 + 8);

    return v13();
  }

  v4 = swift_task_alloc();
  (*(v3 + 32))(v4, v1, v2);
  v5 = swift_task_alloc();
  (*(v3 + 104))(v5, enum case for ActivityState.ended(_:), v2);
  v6 = static ActivityState.== infix(_:_:)();
  v7 = *(v3 + 8);
  v7(v5, v2);

  if (v6)
  {
    v9 = (*((swift_isaMask & **(v0 + 32)) + 0x58))(v8);
    if (v9)
    {
      [v9 nowPlayingEnded];
      swift_unknownObjectRelease();
    }

    v11 = *(v0 + 48);
    v10 = *(v0 + 56);
    v12 = *(v0 + 40);
    v7(v4, v2);
    (*(v11 + 8))(v10, v12);

    goto LABEL_7;
  }

  v7(v4, v2);

  v15 = sub_10038B9C0();
  v16 = swift_task_alloc();
  *(v0 + 72) = v16;
  *v16 = v0;
  v16[1] = sub_100381FD4;
  v17 = *(v0 + 64);
  v18 = *(v0 + 40);

  return dispatch thunk of AsyncIteratorProtocol.next()(v17, v18, v15);
}

uint64_t sub_1003823E4()
{
  *(v0 + 16) = *(v0 + 80);
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t ActivityController.nowPlayingActivityIdentifier.getter()
{
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  v0 = sub_10038916C(0);
  if (*(v0 + 2))
  {
    v1 = *(v0 + 4);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

Swift::Void __swiftcall ActivityController.startMirroringActivity()()
{
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  v0 = sub_10021F050(_swiftEmptyArrayStorage);
  sub_100384FCC(1, v0);
}

Swift::String_optional __swiftcall ActivityController.startRouteRecommendationActivity(for:relevanceScore:)(Swift::String a1, Swift::Double relevanceScore)
{
  v3 = v2;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v7 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v28[-v8];
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100450890;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v11;
  *(inited + 48) = countAndFlagsBits;
  *(inited + 56) = object;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v12;
  *(inited + 120) = &type metadata for Double;
  *(inited + 96) = relevanceScore;

  v13 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  v14 = sub_100384FCC(2, v13);

  if (v14)
  {
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = v3;

    v17 = v3;
    sub_1001BF864(0, 0, v9, &unk_10045AFE0, v16);

    v18 = Activity.id.getter();
    v20 = v19;
  }

  else
  {
    v21 = static os_log_type_t.error.getter();
    v22 = *sub_1001D8BC4();
    sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10044EC70;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_100008FEC();
    *(v23 + 32) = countAndFlagsBits;
    *(v23 + 40) = object;

    v24 = v22;
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v24, "Failed to start routeRecommendation activity for %@", 51, 2, v23);

    v18 = 0;
    v20 = 0;
  }

  v25 = v18;
  v26 = v20;
  result.value._object = v26;
  result.value._countAndFlagsBits = v25;
  return result;
}

uint64_t sub_100382AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_100382B0C, 0, 0);
}

uint64_t sub_100382B0C()
{
  v1 = sub_1001BC5A8(&qword_100528AB0, &qword_10045B188);
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  v2 = sub_1001BC5A8(&qword_100528AB8, &qword_10045B190);
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  dispatch thunk of Activity.activityStateUpdates.getter();
  Activity.ActivityStateUpdates.makeAsyncIterator()();
  (*(v3 + 8))(v4, v2);

  sub_1001BC5A8(&qword_100528AC0, &qword_10045B198);
  v0[8] = swift_task_alloc();
  v5 = sub_10038B9C0();
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_100382D10;
  v7 = v0[8];
  v8 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v5);
}

uint64_t sub_100382D10()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10038BC0C;
  }

  else
  {
    v2 = sub_100382E24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100382E40()
{
  v1 = *(v0 + 64);
  v2 = type metadata accessor for ActivityState();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
LABEL_7:

    v13 = *(v0 + 8);

    return v13();
  }

  v4 = swift_task_alloc();
  (*(v3 + 32))(v4, v1, v2);
  v5 = swift_task_alloc();
  (*(v3 + 104))(v5, enum case for ActivityState.dismissed(_:), v2);
  v6 = static ActivityState.== infix(_:_:)();
  v7 = *(v3 + 8);
  v7(v5, v2);

  if (v6)
  {
    v9 = (*((swift_isaMask & **(v0 + 32)) + 0x58))(v8);
    if (v9)
    {
      [v9 routeRecommendationDismissed];
      swift_unknownObjectRelease();
    }

    v11 = *(v0 + 48);
    v10 = *(v0 + 56);
    v12 = *(v0 + 40);
    v7(v4, v2);
    (*(v11 + 8))(v10, v12);

    goto LABEL_7;
  }

  v7(v4, v2);

  v15 = sub_10038B9C0();
  v16 = swift_task_alloc();
  *(v0 + 72) = v16;
  *v16 = v0;
  v16[1] = sub_100382D10;
  v17 = *(v0 + 64);
  v18 = *(v0 + 40);

  return dispatch thunk of AsyncIteratorProtocol.next()(v17, v18, v15);
}

Swift::Void __swiftcall ActivityController.setRouteRecommendationRelevanceScore(_:activityIdentifier:)(Swift::Double _, Swift::String activityIdentifier)
{
  object = activityIdentifier._object;
  countAndFlagsBits = activityIdentifier._countAndFlagsBits;
  if (qword_100536470 != -1)
  {
    v4 = _;
    swift_once();
    _ = v4;
  }

  sub_100388968(2, countAndFlagsBits, object, _);
}

Swift::Void __swiftcall ActivityController.endRouteRecommendationActivity(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  sub_1003871AC(2, countAndFlagsBits, object);
}

void ActivityController.startGroupSessionNearbyActivity(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5];
  sub_1001BC5A8(&qword_1005228A8, &unk_100450030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v8;
  v9 = [a1 data];
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = Data.base64EncodedString(options:)(0);
  sub_1001C4034(v10, v12);
  *(inited + 48) = v13;
  v14 = sub_10021EF3C(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228B0, &qword_10045AFF0);
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  sub_1003836A0(v14);
  v16 = v15;

  v17 = sub_100384FCC(3, v16);

  if (v17)
  {
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    v19[5] = v2;
    v19[6] = a1;
    v20 = v2;
    v21 = a1;
    sub_1001BF864(0, 0, v6, &unk_10045B000, v19);
  }

  else
  {
    v22 = static os_log_type_t.error.getter();
    v23 = *sub_1001D8BC4();
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Failed to start groupSessionNearby activity", 43, 2, _swiftEmptyArrayStorage);
  }
}

void sub_1003836A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001BC5A8(&qword_100522840, &qword_10044FE70);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_1001C4088(&v22, v24);
        sub_1001C4088(v24, v25);
        sub_1001C4088(v25, &v23);
        v16 = sub_10000698C(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          sub_100026A44(v10);
          sub_1001C4088(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_1001C4088(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1003838F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_10038391C, 0, 0);
}

uint64_t sub_10038391C()
{
  v1 = sub_1001BC5A8(&qword_100528AB0, &qword_10045B188);
  v0[6] = v1;
  v0[7] = *(v1 - 8);
  v0[8] = swift_task_alloc();
  v2 = sub_1001BC5A8(&qword_100528AB8, &qword_10045B190);
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  dispatch thunk of Activity.activityStateUpdates.getter();
  Activity.ActivityStateUpdates.makeAsyncIterator()();
  (*(v3 + 8))(v4, v2);

  sub_1001BC5A8(&qword_100528AC0, &qword_10045B198);
  v0[9] = swift_task_alloc();
  v5 = sub_10038B9C0();
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_100383B20;
  v7 = v0[9];
  v8 = v0[6];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v5);
}

uint64_t sub_100383B20()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100383F34;
  }

  else
  {
    v2 = sub_100383C34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100383C50()
{
  v1 = *(v0 + 72);
  v2 = type metadata accessor for ActivityState();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
LABEL_7:

    v13 = *(v0 + 8);

    return v13();
  }

  v4 = swift_task_alloc();
  (*(v3 + 32))(v4, v1, v2);
  v5 = swift_task_alloc();
  (*(v3 + 104))(v5, enum case for ActivityState.dismissed(_:), v2);
  v6 = static ActivityState.== infix(_:_:)();
  v7 = *(v3 + 8);
  v7(v5, v2);

  if (v6)
  {
    v9 = (*((swift_isaMask & **(v0 + 32)) + 0x58))(v8);
    if (v9)
    {
      [v9 nearbyGroupSessionDismissed:*(v0 + 40)];
      swift_unknownObjectRelease();
    }

    v11 = *(v0 + 56);
    v10 = *(v0 + 64);
    v12 = *(v0 + 48);
    v7(v4, v2);
    (*(v11 + 8))(v10, v12);

    goto LABEL_7;
  }

  v7(v4, v2);

  v15 = sub_10038B9C0();
  v16 = swift_task_alloc();
  *(v0 + 80) = v16;
  *v16 = v0;
  v16[1] = sub_100383B20;
  v17 = *(v0 + 72);
  v18 = *(v0 + 48);

  return dispatch thunk of AsyncIteratorProtocol.next()(v17, v18, v15);
}

uint64_t sub_100383F34()
{
  *(v0 + 16) = *(v0 + 88);
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100384048(uint64_t a1)
{
  if (qword_100536470 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_1003879BC(a1);
}

uint64_t sub_1003840B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (qword_100536470 != -1)
  {
    swift_once();
    v3 = a3;
  }

  return sub_1003879BC(v3);
}

Swift::Void __swiftcall ActivityController.clearActivities()()
{
  if (qword_100536470 != -1)
  {
    v0 = swift_once();
  }

  sub_100384DBC(v0);
}

id ActivityController.init()()
{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityController();
  return objc_msgSendSuper2(&v2, "init");
}

id ActivityController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivityController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10038432C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6E69726F7272696DLL;
    }

    else
    {
      v3 = 0x6979616C50776F6ELL;
    }

    if (v2)
    {
      v4 = 0xE900000000000067;
    }

    else
    {
      v4 = 0xEA0000000000676ELL;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x8000000100443BB0;
    v3 = 0xD000000000000013;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD000000000000014;
    }

    if (v2 == 3)
    {
      v4 = 0x8000000100443BD0;
    }

    else
    {
      v4 = 0x8000000100443BF0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6E69726F7272696DLL;
    }

    else
    {
      v9 = 0x6979616C50776F6ELL;
    }

    if (a2)
    {
      v8 = 0xE900000000000067;
    }

    else
    {
      v8 = 0xEA0000000000676ELL;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x8000000100443BD0;
    v6 = 0xD000000000000014;
    if (a2 == 3)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x8000000100443BF0;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0x8000000100443BB0;
    }

    else
    {
      v8 = v5;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

unint64_t sub_1003844AC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10038B6BC(*a1);
  *a2 = result;
  return result;
}

void sub_1003844DC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000676ELL;
  v4 = 0x6979616C50776F6ELL;
  v5 = 0x8000000100443BB0;
  v6 = 0xD000000000000013;
  v7 = 0xD000000000000012;
  v8 = 0x8000000100443BD0;
  if (v2 != 3)
  {
    v7 = 0xD000000000000014;
    v8 = 0x8000000100443BF0;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x6E69726F7272696DLL;
    v3 = 0xE900000000000067;
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

Swift::Int sub_100384590()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100384688(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10038476C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100384910()
{
  type metadata accessor for ActivityStore();
  result = swift_allocObject();
  *(result + 16) = &_swiftEmptyDictionarySingleton;
  *(result + 24) = &_swiftEmptyDictionarySingleton;
  qword_100536478 = result;
  return result;
}

void *sub_100384948()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v45 = v1 + 64;
  v46 = v1;
  v44 = v6;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return &_swiftEmptyDictionarySingleton;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v48 = v8;
        v10 = v9 | (v8 << 6);
        v11 = *(*(v1 + 48) + v10);
        v12 = *(*(v1 + 56) + 8 * v10);
        v13 = 0xD000000000000014;
        if (v11 == 3)
        {
          v13 = 0xD000000000000012;
        }

        v14 = 0x8000000100443BF0;
        if (v11 == 3)
        {
          v14 = 0x8000000100443BD0;
        }

        if (v11 == 2)
        {
          v13 = 0xD000000000000013;
          v14 = 0x8000000100443BB0;
        }

        v15 = 0x6979616C50776F6ELL;
        if (v11)
        {
          v15 = 0x6E69726F7272696DLL;
        }

        v16 = 0xEA0000000000676ELL;
        if (v11)
        {
          v16 = 0xE900000000000067;
        }

        if (v11 <= 1)
        {
          v13 = v15;
        }

        v51 = v13;
        if (v11 <= 1)
        {
          v17 = v16;
        }

        else
        {
          v17 = v14;
        }

        v18 = *(&_swiftEmptyDictionarySingleton + 2);

        if (v18)
        {
          v19 = sub_10000698C(v51, v17);
          v21 = v20;

          v50 = _swiftEmptyArrayStorage;
          if (v21)
          {
            v50 = *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v19);
          }
        }

        else
        {

          v50 = _swiftEmptyArrayStorage;
        }

        v49 = v17;
        if (v12 >> 62)
        {
          v22 = _CocoaArrayWrapper.endIndex.getter();
          if (!v22)
          {
LABEL_41:

            goto LABEL_42;
          }
        }

        else
        {
          v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v22)
          {
            goto LABEL_41;
          }
        }

        sub_1000089FC(0, v22 & ~(v22 >> 63), 0);
        if (v22 < 0)
        {
          goto LABEL_56;
        }

        v47 = v5;
        v23 = 0;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          v24 = Activity.id.getter();
          v26 = v25;

          v28 = _swiftEmptyArrayStorage[2];
          v27 = _swiftEmptyArrayStorage[3];
          if (v28 >= v27 >> 1)
          {
            sub_1000089FC((v27 > 1), v28 + 1, 1);
          }

          ++v23;
          _swiftEmptyArrayStorage[2] = v28 + 1;
          v29 = &_swiftEmptyArrayStorage[2 * v28];
          v29[4] = v24;
          v29[5] = v26;
        }

        while (v22 != v23);

        v2 = v45;
        v1 = v46;
        v6 = v44;
        v5 = v47;
LABEL_42:
        sub_10021B8A8(_swiftEmptyArrayStorage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = sub_10000698C(v51, v49);
        v33 = *(&_swiftEmptyDictionarySingleton + 2);
        v34 = (v32 & 1) == 0;
        v35 = __OFADD__(v33, v34);
        v36 = v33 + v34;
        if (v35)
        {
          goto LABEL_55;
        }

        v37 = v32;
        if (*(&_swiftEmptyDictionarySingleton + 3) < v36)
        {
          sub_100219B20(v36, isUniquelyReferenced_nonNull_native);
          v31 = sub_10000698C(v51, v49);
          if ((v37 & 1) != (v38 & 1))
          {
            goto LABEL_58;
          }

LABEL_47:
          if (v37)
          {
            goto LABEL_5;
          }

          goto LABEL_48;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_47;
        }

        v42 = v31;
        sub_10021A724();
        v31 = v42;
        if (v37)
        {
LABEL_5:
          *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v31) = v50;

          v7 = v48;
          if (!v5)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }

LABEL_48:
        *(&_swiftEmptyDictionarySingleton + (v31 >> 6) + 8) |= 1 << v31;
        v39 = (*(&_swiftEmptyDictionarySingleton + 6) + 16 * v31);
        *v39 = v51;
        v39[1] = v49;
        *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v31) = v50;
        v40 = *(&_swiftEmptyDictionarySingleton + 2);
        v35 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v35)
        {
          goto LABEL_57;
        }

        *(&_swiftEmptyDictionarySingleton + 2) = v41;
        v7 = v48;
        if (!v5)
        {
          goto LABEL_7;
        }

LABEL_6:
        v8 = v7;
      }
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100384DBC(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  v15 = sub_1001D8BC4();
  v2 = *v15;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "Clearing all outstanding activities.", 36, 2, _swiftEmptyArrayStorage);

  sub_1001BC5A8(&qword_100528AA0, &qword_10045B178);
  result = static Activity.activities.getter();
  v4 = result;
  if (!(result >> 62))
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:

    swift_beginAccess();
    *(v14 + 16) = _swiftEmptyDictionarySingleton;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v6;
      v7 = static os_log_type_t.default.getter();
      v8 = *v15;
      sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_10044EC70;
      v10 = v8;
      v11 = Activity.id.getter();
      v13 = v12;
      *(v9 + 56) = &type metadata for String;
      *(v9 + 64) = sub_100008FEC();
      *(v9 + 32) = v11;
      *(v9 + 40) = v13;
      os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v10, "Finishing activity %{public}@.", 30, 2, v9);
    }

    while (v5 != v6);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_100384FCC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v5 - 8);
  v160 = &v148 - v6;
  v7 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  __chkstk_darwin(v7 - 8);
  *&v170 = &v148 - v8;
  v9 = type metadata accessor for MediaLiveActivityAttributes.ContentState();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v169 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v148 - v13;
  v15 = type metadata accessor for MediaLiveActivityAttributes();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  if ((sub_1003896A4(a1) & 1) == 0)
  {
    return v19;
  }

  v148 = v2;
  v163 = 0xD000000000000017;
  v20 = static os_log_type_t.default.getter();
  v21 = a1;
  v152 = sub_1001D8BC4();
  v22 = *v152;
  v153 = sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100450890;
  v164 = v21;
  v166 = v10;
  v155 = v15;
  v154 = v16;
  v167 = v14;
  v159 = v18;
  if (v21 <= 1u)
  {
    if (v21)
    {
      v24 = 0xE900000000000067;
      v25 = 0x6E69726F7272696DLL;
    }

    else
    {
      v24 = 0xEA0000000000676ELL;
      v25 = 0x6979616C50776F6ELL;
    }
  }

  else if (v21 == 2)
  {
    v24 = 0x8000000100443BB0;
    v25 = 0xD000000000000013;
  }

  else if (v21 == 3)
  {
    v24 = 0x8000000100443BD0;
    v25 = 0xD000000000000012;
  }

  else
  {
    v24 = 0x8000000100443BF0;
    v25 = 0xD000000000000014;
  }

  *(v23 + 56) = &type metadata for String;
  v26 = v23;
  v151 = sub_100008FEC();
  v26[8] = v151;
  v26[4] = v25;
  v26[5] = v24;
  v26[12] = sub_1001BC5A8(&qword_100528A88, &qword_10045B160);
  v26[13] = sub_10038B824();
  v26[9] = a2;
  v27 = v22;

  os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v27, "Requesting activity for type %{public}@, userInfo: %{public}@", 61, 2, v26);

  v28 = sub_1001BC5A8(&qword_100528AE0, &qword_10045B1C8);
  v29 = a2;
  v30 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v32 = &v148 - v31;
  v33 = type metadata accessor for ActivityPresentationOptions();
  v171 = *(v33 - 8);
  v34 = *(v171 + 56);
  v168 = v32;
  v35 = v32;
  v36 = v33;
  v157 = v34;
  (v34)(v35, 1, 1, v33);
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  v40 = *(v29 + 16);
  v158 = v30;
  v156 = v29;
  if (v40)
  {
    v41 = v37;

    v42 = sub_10000698C(v41, v39);
    v44 = v43;

    v46 = v164;
    if (v44)
    {
      sub_100020E0C(*(v29 + 56) + 32 * v42, &v175);
      v45 = swift_dynamicCast();
    }

    v30 = v158;
  }

  else
  {

    v46 = v164;
  }

  v165 = v36;
  v162 = v9;
  v150 = &v148;
  if (v46 <= 1u)
  {
    v161 = 0x8000000100440A90;
    if (!v46)
    {
      result = [objc_opt_self() currentSettings];
      if (!result)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v56 = result;
      v57 = [result supportLiveActivityBanner];

      v149 = &v148;
      __chkstk_darwin(v58);
      v59 = &v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1001BC5A8(&qword_100528AE8, &qword_10045B1D0);
      v60 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
      v61 = *(v60 - 8);
      v62 = *(v61 + 72);
      v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v64 = (v61 + 104);
      v65 = 2 * v62;
      v66 = swift_allocObject();
      if (v57)
      {
        *(v66 + 16) = xmmword_1004592F0;
        v67 = v66 + v63;
        v68 = *v64;
        (*v64)(v67, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v60);
        v68(v67 + v62, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v60);
        v68(v67 + v65, enum case for ActivityPresentationOptions.ActivityPresentationDestination.banner(_:), v60);
        v69 = enum case for ActivityPresentationOptions.ActivityPresentationDestination.ambient(_:);
        v70 = v67 + 3 * v62;
      }

      else
      {
        *(v66 + 16) = xmmword_10044F530;
        v103 = v66 + v63;
        v68 = *v64;
        (*v64)(v103, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v60);
        v68(v103 + v62, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v60);
        v69 = enum case for ActivityPresentationOptions.ActivityPresentationDestination.ambient(_:);
        v70 = v103 + v65;
      }

      v68(v70, v69, v60);
      ActivityPresentationOptions.init(destinations:)();
      (v157)(v59, 0, 1, v36);
      v104 = v59;
      v105 = v36;
      v51 = v168;
      sub_10038BABC(v104, v168);
      v89 = v156;
      result = (*(v171 + 48))(v51, 1, v105);
      v9 = v162;
      v91 = v167;
      if (result == 1)
      {
        goto LABEL_53;
      }

      ActivityPresentationOptions.isUserDismissalAllowedOnLockScreen.setter();
      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v107;
      v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v176 = &type metadata for String;
      *&v175 = v109;
      *(&v175 + 1) = v110;
      sub_1001C4088(&v175, &v174);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v173 = v89;
      sub_10022D818(&v174, v106, v108, isUniquelyReferenced_nonNull_native);

      goto LABEL_36;
    }

    __chkstk_darwin(v45);
    sub_1001BC5A8(&qword_100528AE8, &qword_10045B1D0);
    v92 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
    v93 = *(v92 - 8);
    v94 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_10044EC70;
    (*(v93 + 104))(v95 + v94, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v92);
    ActivityPresentationOptions.init(destinations:)();
    (v157)(&v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v36);
    v96 = v36;
    v51 = v168;
    sub_10038BABC(&v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v168);
    result = (*(v171 + 48))(v51, 1, v96);
    if (result == 1)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    ActivityPresentationOptions.isUserDismissalAllowedOnLockScreen.setter();
    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;
    v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v176 = &type metadata for String;
    *&v175 = v100;
    *(&v175 + 1) = v101;
    sub_1001C4088(&v175, &v174);
    v89 = v156;
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v89;
    sub_10022D818(&v174, v97, v99, v102);

LABEL_32:
    v91 = v167;
LABEL_36:
    v30 = v158;
    goto LABEL_37;
  }

  if (v46 != 2)
  {
    v161 = 0x8000000100440AB0;
    __chkstk_darwin(v45);
    sub_1001BC5A8(&qword_100528AE8, &qword_10045B1D0);
    v47 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
    v48 = *(v47 - 8);
    v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_10044EC70;
    (*(v48 + 104))(v50 + v49, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v47);
    ActivityPresentationOptions.init(destinations:)();
    (v157)(&v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v36);
    v51 = v168;
    sub_10038BABC(&v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v168);
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v176 = &type metadata for String;
    *&v175 = v87;
    *(&v175 + 1) = v88;
    sub_1001C4088(&v175, &v174);
    v89 = v156;
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v89;
    sub_10022D818(&v174, v52, v54, v90);

    v163 = 0xD00000000000001ELL;
    v91 = v167;
LABEL_37:

    MediaLiveActivityAttributes.init(attributes:)();
    sub_100389540(v89);
    v112 = sub_1001BC5A8(&qword_100528A68, &qword_10045B158);
    v157 = &v148;
    v156 = v112;
    v149 = *(v112 - 8);
    __chkstk_darwin(v112);
    v114 = &v148 - v113;
    (*(v166 + 16))(v169, v91, v9);
    v115 = type metadata accessor for Date();
    (*(*(v115 - 8) + 56))(v170, 1, 1, v115);
    sub_10038B7E0(&qword_100528A70, &protocol conformance descriptor for MediaLiveActivityAttributes.ContentState);
    sub_10038B7E0(&qword_100528A78, &protocol conformance descriptor for MediaLiveActivityAttributes.ContentState);
    sub_10038B7E0(&qword_100528A80, &protocol conformance descriptor for MediaLiveActivityAttributes.ContentState);
    v116 = ActivityContent.init(state:staleDate:relevanceScore:)();
    __chkstk_darwin(v116);
    sub_10001D9AC(v51, &v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_100528AE0, &qword_10045B1C8);
    result = (*(v171 + 48))(&v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v165);
    if (result != 1)
    {
      sub_1001BC5A8(&qword_100528AA0, &qword_10045B178);
      sub_1001BC5A8(&qword_100528AF0, &qword_10045B1D8);
      v117 = *(type metadata accessor for ActivityContentSource.Request() - 8);
      v118 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v119 = swift_allocObject();
      v170 = xmmword_10044EC70;
      *(v119 + 16) = xmmword_10044EC70;
      v120 = (v119 + v118);
      *v120 = 0;
      v120[1] = 0;
      (*(v117 + 104))();
      v19 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();

      (*(v171 + 8))(&v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v165);
      v121 = Activity.id.getter();
      v123 = v122;
      v124 = type metadata accessor for TaskPriority();
      v125 = v160;
      (*(*(v124 - 8) + 56))(v160, 1, 1, v124);
      v126 = swift_allocObject();
      v126[2] = 0;
      v126[3] = 0;
      v126[4] = v19;

      v127 = sub_1001BF864(0, 0, v125, &unk_10045B1E8, v126);
      v128 = v148;
      swift_beginAccess();
      v129 = swift_isUniquelyReferenced_nonNull_native();
      *&v174 = *(v128 + 24);
      *(v128 + 24) = 0x8000000000000000;
      v130 = v121;
      v131 = v128;
      sub_10038A794(v127, v130, v123, v129);

      *(v128 + 24) = v174;
      swift_endAccess();
      swift_beginAccess();
      v132 = *(v128 + 16);
      if (*(v132 + 16))
      {

        v133 = sub_100389ADC(v164);
        v134 = v162;
        v135 = v152;
        v136 = v151;
        if (v137)
        {
          v138 = *(*(v132 + 56) + 8 * v133);
        }

        else
        {
          v138 = _swiftEmptyArrayStorage;
        }

        v139 = v155;
      }

      else
      {
        v138 = _swiftEmptyArrayStorage;
        v134 = v162;
        v139 = v155;
        v135 = v152;
        v136 = v151;
      }

      v173 = v138;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v140 = v173;
      swift_beginAccess();
      v141 = swift_isUniquelyReferenced_nonNull_native();
      v172 = *(v131 + 16);
      *(v131 + 16) = 0x8000000000000000;
      sub_10038A648(v140, v164, v141);
      *(v131 + 16) = v172;
      swift_endAccess();
      v142 = static os_log_type_t.default.getter();
      v143 = *v135;
      v144 = swift_allocObject();
      *(v144 + 16) = v170;
      v145 = v143;
      v146 = Activity.id.getter();
      *(v144 + 56) = &type metadata for String;
      *(v144 + 64) = v136;
      *(v144 + 32) = v146;
      *(v144 + 40) = v147;
      os_log(_:dso:log:_:_:)(v142, &_mh_execute_header, v145, "Requested activity (%{public}@) successfully.", 45, 2, v144);

      (v149[1])(v114, v156);
      (*(v166 + 8))(v167, v134);
      (*(v154 + 8))(v159, v139);

      sub_1000038A4(v168, &qword_100528AE0, &qword_10045B1C8);
      return v19;
    }

    __break(1u);
    goto LABEL_49;
  }

  v161 = 0x8000000100440A90;
  result = [objc_opt_self() currentSettings];
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v71 = result;
  v72 = [result supportManyRecommendationsPlatters];

  __chkstk_darwin(v73);
  sub_1001BC5A8(&qword_100528AE8, &qword_10045B1D0);
  v74 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v75 = *(v74 - 8);
  v76 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_10044EC70;
  (*(v75 + 104))(v77 + v76, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v74);
  ActivityPresentationOptions.init(destinations:)();
  (v157)(&v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v36);
  v78 = v36;
  v51 = v168;
  sub_10038BABC(&v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v168);
  result = (*(v171 + 48))(v51, 1, v78);
  if (result != 1)
  {
    v79 = v161;
    if (v72)
    {
      v79 = 0x8000000100440AB0;
    }

    v161 = v79;
    v80 = 0xD000000000000017;
    if (v72)
    {
      v80 = 0xD00000000000001ELL;
    }

    v163 = v80;
    ActivityPresentationOptions.isUserDismissalAllowedOnLockScreen.setter();
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v176 = &type metadata for String;
    *&v175 = v84;
    *(&v175 + 1) = v85;
    sub_1001C4088(&v175, &v174);
    v89 = v156;
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v89;
    sub_10022D818(&v174, v81, v83, v86);

    v9 = v162;
    goto LABEL_32;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_10038698C()
{
  v1 = sub_1001BC5A8(&qword_100528AB0, &qword_10045B188);
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v2 = sub_1001BC5A8(&qword_100528AB8, &qword_10045B190);
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  dispatch thunk of Activity.activityStateUpdates.getter();
  Activity.ActivityStateUpdates.makeAsyncIterator()();
  (*(v3 + 8))(v4, v2);

  sub_1001BC5A8(&qword_100528AC0, &qword_10045B198);
  v0[7] = swift_task_alloc();
  v5 = sub_10038B9C0();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_100386B90;
  v7 = v0[7];
  v8 = v0[4];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v5);
}

uint64_t sub_100386B90()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100387120;
  }

  else
  {
    v2 = sub_100386CA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100386CC0()
{
  v1 = v0[7];
  v2 = type metadata accessor for ActivityState();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[5] + 8))(v0[6], v0[4]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    (*(v3 + 32))(v6, v1, v2);
    v34 = static os_log_type_t.default.getter();
    v33 = sub_1001D8BC4();
    v7 = *v33;
    sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100450890;
    v35 = v3;
    v9 = v7;
    v10 = Activity.id.getter();
    v12 = v11;
    *(v8 + 56) = &type metadata for String;
    v13 = sub_100008FEC();
    *(v8 + 64) = v13;
    *(v8 + 32) = v10;
    *(v8 + 40) = v12;
    swift_task_alloc();
    (*(v35 + 16))();
    v14 = String.init<A>(describing:)();
    v16 = v15;

    *(v8 + 96) = &type metadata for String;
    *(v8 + 104) = v13;
    v17 = v13;
    *(v8 + 72) = v14;
    *(v8 + 80) = v16;
    os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v9, "Activity (%{public}@) state changed: %{public}@.", 48, 2, v8);

    v18 = swift_task_alloc();
    (*(v35 + 104))(v18, enum case for ActivityState.dismissed(_:), v2);
    LOBYTE(v14) = static ActivityState.== infix(_:_:)();
    v19 = *(v35 + 8);
    v19(v18, v2);

    if (v14)
    {
      if (static Task<>.isCancelled.getter())
      {
        v36 = static os_log_type_t.info.getter();
        v20 = *v33;
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_10044EC70;
        v22 = v20;
        v23 = Activity.id.getter();
        *(v21 + 56) = &type metadata for String;
        *(v21 + 64) = v17;
        *(v21 + 32) = v23;
        *(v21 + 40) = v24;
        os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v22, "Activity (%{public}@) delivered ended state when observer was cancelled. This is a bug in the implementation of ActivityStateUpdates.", 133, 2, v21, v33);
      }

      else
      {
        v37 = static os_log_type_t.default.getter();
        v25 = *v33;
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_10044EC70;
        v22 = v25;
        v27 = Activity.id.getter();
        *(v26 + 56) = &type metadata for String;
        *(v26 + 64) = v17;
        *(v26 + 32) = v27;
        *(v26 + 40) = v28;
        os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v22, "Activity (%{public}@) ended while observer still running. This may indicate a bug in MediaRemote.", 97, 2, v26, v33);
      }
    }

    v19(v6, v2);

    v29 = sub_10038B9C0();
    v30 = swift_task_alloc();
    v0[8] = v30;
    *v30 = v0;
    v30[1] = sub_100386B90;
    v31 = v0[7];
    v32 = v0[4];

    return dispatch thunk of AsyncIteratorProtocol.next()(v31, v32, v29);
  }
}

uint64_t sub_100387120()
{
  *(v0 + 16) = *(v0 + 72);
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_1003871AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v65 = a2;
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (!*(v7 + 16))
  {
    return;
  }

  v8 = sub_100389ADC(a1);
  if ((v9 & 1) == 0)
  {
LABEL_19:

    return;
  }

  v62 = a1;
  v10 = *(*(v7 + 56) + 8 * v8);

  v68 = _swiftEmptyArrayStorage;
  v63 = v4;
  if (v10 >> 62)
  {
LABEL_37:
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_38:
    v21 = _swiftEmptyArrayStorage;
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_39;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_38;
  }

LABEL_5:
  v12 = 0;
  v13 = v10 & 0xC000000000000001;
  do
  {
    if (v13)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_18;
      }
    }

    if (Activity.id.getter() == v65 && v15 == a3)
    {

LABEL_7:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_8;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_7;
    }

LABEL_8:
    ++v12;
  }

  while (v14 != v11);
  v17 = 0;
  v61 = v68;
  v68 = _swiftEmptyArrayStorage;
  while (v13)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_33;
    }

LABEL_26:
    if (Activity.id.getter() == v65 && v19 == a3)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }
    }

    ++v17;
    if (v18 == v11)
    {
      goto LABEL_34;
    }
  }

  if (v17 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

  v18 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_26;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  v21 = v68;
  v22 = v61;
LABEL_39:

  v23 = v63;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = *(v63 + 16);
  *(v63 + 16) = 0x8000000000000000;
  sub_10038A648(v21, v62, isUniquelyReferenced_nonNull_native);
  *(v23 + 16) = v67;
  swift_endAccess();
  v25 = v22;
  if ((v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
    v25 = v22;
    if (!v26)
    {
      goto LABEL_66;
    }

LABEL_42:
    v60 = a3;
    if (v26 >= 1)
    {
      v58 = v25 & 0xC000000000000001;
      swift_beginAccess();
      v27 = v22;
      v28 = 0;
      v56[3] = 0x8000000100443BF0;
      v56[2] = 0x8000000100443BD0;
      v56[1] = 0x8000000100443BB0;
      v57 = xmmword_100450890;
      v61 = v22;
      v59 = v26;
      do
      {
        if (v58)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v37 = *(v27 + 8 * v28 + 32);
        }

        v38 = v60;
        v39 = static os_log_type_t.default.getter();
        v40 = *sub_1001D8BC4();
        sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
        v41 = swift_allocObject();
        *(v41 + 16) = v57;
        v42 = v40;
        v43 = Activity.id.getter();
        v45 = v44;
        *(v41 + 56) = &type metadata for String;
        v46 = sub_100008FEC();
        *(v41 + 64) = v46;
        *(v41 + 32) = v43;
        *(v41 + 40) = v45;
        if (v62 <= 1u)
        {
          if (v62)
          {
            v49 = 0xE900000000000067;
            v47 = 0x6E69726F7272696DLL;
          }

          else
          {
            v49 = 0xEA0000000000676ELL;
            v47 = 0x6979616C50776F6ELL;
          }
        }

        else
        {
          if (v62 == 2)
          {
            v47 = 0xD000000000000013;
            v48 = &v69;
          }

          else if (v62 == 3)
          {
            v47 = 0xD000000000000012;
            v48 = &v70;
          }

          else
          {
            v47 = 0xD000000000000014;
            v48 = &v71;
          }

          v49 = *(v48 - 32);
        }

        *(v41 + 96) = &type metadata for String;
        *(v41 + 104) = v46;
        *(v41 + 72) = v47;
        *(v41 + 80) = v49;
        os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v42, "Finishing activity (%{public}@) for type %{public}@.", 52, 2, v41);

        if (*(*(v23 + 24) + 16))
        {

          sub_10000698C(v65, v38);
          if (v50)
          {

            Task.cancel()();
          }

          else
          {
          }
        }

        v64 = v37;
        swift_beginAccess();

        v51 = sub_10000698C(v65, v38);
        v53 = v52;

        if (v53)
        {
          v54 = swift_isUniquelyReferenced_nonNull_native();
          v55 = *(v23 + 24);
          v66 = v55;
          *(v23 + 24) = 0x8000000000000000;
          if (!v54)
          {
            sub_10038AA6C();
            v55 = v66;
          }

          sub_1001DEE44(v51, v55);
          *(v23 + 24) = v55;
        }

        ++v28;
        swift_endAccess();
        v29 = sub_1001BC5A8(&qword_100528AA8, &qword_10045B180);
        __chkstk_darwin(v29 - 8);
        v31 = v56 - v30;
        v32 = sub_1001BC5A8(&qword_100528A68, &qword_10045B158);
        (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
        v33 = type metadata accessor for ActivityUIDismissalPolicy();
        v34 = *(v33 - 8);
        __chkstk_darwin(v33);
        v36 = v56 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
        static ActivityUIDismissalPolicy.immediate.getter();
        dispatch thunk of Activity.endSync(_:dismissalPolicy:)();

        (*(v34 + 8))(v36, v33);
        sub_1000038A4(v31, &qword_100528AA8, &qword_10045B180);
        v23 = v63;
        v27 = v61;
      }

      while (v59 != v28);
      goto LABEL_66;
    }

    __break(1u);
  }

  else
  {
    v26 = *(v22 + 16);
    if (v26)
    {
      goto LABEL_42;
    }

LABEL_66:
  }
}

uint64_t sub_1003879BC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_100389ADC(a1);
  if ((v5 & 1) == 0)
  {
    return swift_endAccess();
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 16);
  v60 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10038A910();
    v8 = v60;
  }

  v9 = v6;
  v10 = *(*(v8 + 56) + 8 * v6);
  sub_10038A3F0(v9, v8);
  v58 = v2;
  *(v2 + 16) = v8;
  result = swift_endAccess();
  v12 = v10;
  if (!(v10 >> 62))
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_6;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v12 = v10;
  v13 = result;
  if (!result)
  {
  }

LABEL_6:
  if (v13 >= 1)
  {
    v55 = v12 & 0xC000000000000001;
    v14 = v12;
    swift_beginAccess();
    v15 = 0;
    v51 = 0x8000000100443BD0;
    v52 = 0x8000000100443BF0;
    v50 = 0x8000000100443BB0;
    v54 = xmmword_100450890;
    v16 = a1;
    v56 = v13;
    v57 = v14;
    v53 = a1;
    do
    {
      if (v55)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v25 = v58;
      v26 = static os_log_type_t.default.getter();
      v27 = *sub_1001D8BC4();
      sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
      v28 = swift_allocObject();
      *(v28 + 16) = v54;
      v29 = v27;
      v30 = Activity.id.getter();
      v32 = v31;
      *(v28 + 56) = &type metadata for String;
      v33 = sub_100008FEC();
      *(v28 + 64) = v33;
      *(v28 + 32) = v30;
      *(v28 + 40) = v32;
      if (v16 <= 1)
      {
        if (v16)
        {
          v35 = 0xE900000000000067;
          v34 = 0x6E69726F7272696DLL;
        }

        else
        {
          v35 = 0xEA0000000000676ELL;
          v34 = 0x6979616C50776F6ELL;
        }
      }

      else
      {
        v34 = 0xD000000000000012;
        if (v16 == 2)
        {
          v34 = 0xD000000000000013;
          v35 = v50;
        }

        else if (v16 == 3)
        {
          v35 = v51;
        }

        else
        {
          v34 = 0xD000000000000014;
          v35 = v52;
        }
      }

      *(v28 + 96) = &type metadata for String;
      *(v28 + 104) = v33;
      *(v28 + 72) = v34;
      *(v28 + 80) = v35;
      os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v29, "Finishing activity (%{public}@) for type %{public}@.", 52, 2, v28, v50);

      v36 = Activity.id.getter();
      v38 = v37;
      if (*(*(v25 + 24) + 16) && (v39 = v36, , sub_10000698C(v39, v38), v41 = v40, , (v41 & 1) != 0))
      {

        Task.cancel()();
      }

      else
      {
      }

      v42 = Activity.id.getter();
      v44 = v43;
      swift_beginAccess();
      v45 = sub_10000698C(v42, v44);
      v47 = v46;

      if (v47)
      {
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v49 = *(v25 + 24);
        v59 = v49;
        *(v25 + 24) = 0x8000000000000000;
        if (!v48)
        {
          sub_10038AA6C();
          v49 = v59;
        }

        sub_1001DEE44(v45, v49);
        *(v25 + 24) = v49;
      }

      ++v15;
      swift_endAccess();
      v17 = sub_1001BC5A8(&qword_100528AA8, &qword_10045B180);
      __chkstk_darwin(v17 - 8);
      v19 = &v50 - v18;
      v20 = sub_1001BC5A8(&qword_100528A68, &qword_10045B158);
      (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
      v21 = type metadata accessor for ActivityUIDismissalPolicy();
      v22 = *(v21 - 8);
      __chkstk_darwin(v21);
      v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      static ActivityUIDismissalPolicy.immediate.getter();
      dispatch thunk of Activity.endSync(_:dismissalPolicy:)();

      (*(v22 + 8))(v24, v21);
      sub_1000038A4(v19, &qword_100528AA8, &qword_10045B180);
      v16 = v53;
    }

    while (v56 != v15);
  }

  __break(1u);
  return result;
}

void sub_100387F7C(uint64_t a1, uint64_t a2)
{
  v5 = 0xE900000000000067;
  v6 = 0x6E69726F7272696DLL;
  if (!a2)
  {

    return;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return;
  }

  swift_beginAccess();
  v8 = *(v2 + 16);
  if (*(v8 + 16))
  {

    v9 = sub_100389ADC(a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      if (v11 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_10:
          if ((v11 & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v12 = *(v11 + 32);
          }

          sub_1003882B4(a1, v12);

          return;
        }
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }
    }
  }

  v13 = static os_log_type_t.error.getter();
  v14 = *sub_1001D8BC4();
  sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10044EC70;
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v6 = 0xD000000000000012;
      v5 = 0x8000000100443BD0;
    }

    else
    {
      v5 = 0x8000000100443BF0;
      v6 = 0xD000000000000014;
    }
  }

  else if (a2 != 1)
  {
    v5 = 0x8000000100443BB0;
    v6 = 0xD000000000000013;
  }

  *(v15 + 56) = &type metadata for String;
  v16 = v15;
  *(v15 + 64) = sub_100008FEC();
  *(v16 + 32) = v6;
  *(v16 + 40) = v5;
  v17 = v14;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v17, "Could not find activity for type: %{public}@ to update user info.", 65, 2, v16);
}

uint64_t sub_1003882B4(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v4 - 8);
  v52 = &v41 - v5;
  v6 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v7 = __chkstk_darwin(v6 - 8);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v11 = type metadata accessor for MediaLiveActivityAttributes.ContentState();
  v12 = *(v11 - 8);
  v53 = v11;
  v54 = v12;
  v13 = __chkstk_darwin(v11);
  v42 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  v50 = &v41 - v15;
  sub_100389540(a1);
  v17 = sub_1001BC5A8(&qword_100528A68, &qword_10045B158);
  v47 = *(v17 - 8);
  v18 = v47;
  v19 = *(v47 + 64);
  __chkstk_darwin(v17);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = a2;
  dispatch thunk of Activity.content.getter();
  v49 = v10;
  ActivityContent.staleDate.getter();
  v21 = *(v18 + 8);
  v22 = v21(&v41 - v20, v17);
  v51 = v21;
  v48 = v18 + 8;
  __chkstk_darwin(v22);
  v45 = v20;
  dispatch thunk of Activity.content.getter();
  ActivityContent.relevanceScore.getter();
  v23 = v21(&v41 - v20, v17);
  __chkstk_darwin(v23);
  v24 = &v41 - v20;
  (*(v54 + 16))(v42, v16, v53);
  sub_10001D9AC(v10, v43, &qword_1005228D8, &unk_100450060);
  sub_10038B7E0(&qword_100528A70, &protocol conformance descriptor for MediaLiveActivityAttributes.ContentState);
  sub_10038B7E0(&qword_100528A78, &protocol conformance descriptor for MediaLiveActivityAttributes.ContentState);
  sub_10038B7E0(&qword_100528A80, &protocol conformance descriptor for MediaLiveActivityAttributes.ContentState);
  ActivityContent.init(state:staleDate:relevanceScore:)();
  v25 = static os_log_type_t.default.getter();
  v26 = *sub_1001D8BC4();
  sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100450890;
  *(v27 + 56) = sub_1001BC5A8(&qword_100528A88, &qword_10045B160);
  *(v27 + 64) = sub_10038B824();
  *(v27 + 32) = v46;
  v28 = v26;

  v29 = v44;
  v30 = Activity.id.getter();
  v32 = v31;
  *(v27 + 96) = &type metadata for String;
  *(v27 + 104) = sub_100008FEC();
  *(v27 + 72) = v30;
  *(v27 + 80) = v32;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v28, "Updating user info %{public}@ for activity: %{public}@.", 55, 2, v27);

  v33 = type metadata accessor for TaskPriority();
  v34 = v52;
  v35 = (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
  __chkstk_darwin(v35);
  v36 = &v41 - v45;
  v37 = v47;
  (*(v47 + 16))(&v41 - v45, v24, v17);
  v38 = (*(v37 + 80) + 40) & ~*(v37 + 80);
  v39 = swift_allocObject();
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 4) = v29;
  (*(v37 + 32))(&v39[v38], v36, v17);

  sub_1001BF864(0, 0, v34, &unk_10045B170, v39);

  v51(v24, v17);
  sub_1000038A4(v49, &qword_1005228D8, &unk_100450060);
  return (*(v54 + 8))(v50, v53);
}

uint64_t sub_1003888B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (&async function pointer to dispatch thunk of Activity.update(_:) + async function pointer to dispatch thunk of Activity.update(_:));
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100009F34;

  return v9(a5);
}

void sub_100388968(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  swift_beginAccess();
  v12 = *(v4 + 16);
  if (*(v12 + 16))
  {

    v13 = sub_100389ADC(a1);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      v30 = v11;
      if (v15 >> 62)
      {
        goto LABEL_21;
      }

      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        while (1)
        {
          v17 = 0;
          v31 = v15 & 0xC000000000000001;
          while (v31)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v19 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
LABEL_16:
              __break(1u);
              goto LABEL_22;
            }

LABEL_9:
            if (Activity.id.getter() == a2 && v20 == a3)
            {

LABEL_19:

              v22 = type metadata accessor for TaskPriority();
              v23 = v30;
              (*(*(v22 - 8) + 56))(v30, 1, 1, v22);
              v24 = swift_allocObject();
              *(v24 + 16) = 0;
              *(v24 + 24) = 0;
              *(v24 + 32) = v18;
              *(v24 + 40) = a4;
              sub_1001BF864(0, 0, v23, &unk_10045B1C0, v24);

              return;
            }

            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v21)
            {
              goto LABEL_19;
            }

            ++v17;
            if (v19 == v16)
            {
              goto LABEL_22;
            }
          }

          if (v17 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_21:
          v16 = _CocoaArrayWrapper.endIndex.getter();
          if (!v16)
          {
            goto LABEL_22;
          }
        }

        v18 = *(v15 + 8 * v17 + 32);

        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_16;
        }

        goto LABEL_9;
      }
    }

LABEL_22:
  }

  v25 = static os_log_type_t.error.getter();
  v26 = *sub_1001D8BC4();
  sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10044EC70;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = sub_100008FEC();
  *(v27 + 32) = a2;
  *(v27 + 40) = a3;
  v28 = v26;

  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v28, "Could not find activity (%{public}@)", 36, 2, v27);
}

uint64_t sub_100388C98(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  *(v5 + 32) = swift_task_alloc();
  *(v5 + 40) = type metadata accessor for MediaLiveActivityAttributes.ContentState();
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100388D68, 0, 0);
}

uint64_t sub_100388D68()
{
  v1 = sub_1001BC5A8(&qword_100528A68, &qword_10045B158);
  v0[7] = v1;
  v2 = *(v1 - 8);
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = swift_task_alloc();
  dispatch thunk of Activity.content.getter();
  ActivityContent.state.getter();
  v5 = *(v2 + 8);
  v0[9] = v5;
  v0[10] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v4, v1);
  v6 = swift_task_alloc();
  dispatch thunk of Activity.content.getter();
  ActivityContent.staleDate.getter();
  v5(v6, v1);
  sub_10038B7E0(&qword_100528A70, &protocol conformance descriptor for MediaLiveActivityAttributes.ContentState);
  sub_10038B7E0(&qword_100528A78, &protocol conformance descriptor for MediaLiveActivityAttributes.ContentState);
  sub_10038B7E0(&qword_100528A80, &protocol conformance descriptor for MediaLiveActivityAttributes.ContentState);
  ActivityContent.init(state:staleDate:relevanceScore:)();

  v9 = (&async function pointer to dispatch thunk of Activity.update(_:) + async function pointer to dispatch thunk of Activity.update(_:));
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_100388FE0;

  return v9(v3);
}

uint64_t sub_100388FE0()
{

  return _swift_task_switch(sub_1003890DC, 0, 0);
}

uint64_t sub_1003890DC()
{
  (*(v0 + 72))(*(v0 + 64), *(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

char *sub_10038916C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (!*(v3 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = sub_100389ADC(a1);
  if ((v5 & 1) == 0)
  {
    goto LABEL_16;
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_16:

    return _swiftEmptyArrayStorage;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_5:
  result = sub_1000089FC(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v10 = Activity.id.getter();
      v12 = v11;

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_1000089FC((v13 > 1), v14 + 1, 1);
      }

      ++v9;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
    }

    while (v7 != v9);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_100389300(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v19 = v4;
  v17 = v9;
  v18 = v4 + 64;
  if (v8)
  {
LABEL_4:
    v11 = v10;
  }

  else
  {
    do
    {
LABEL_5:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_29;
      }

      if (v11 >= v9)
      {
LABEL_26:

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
    }

    while (!v8);
  }

  v12 = *(*(v4 + 56) + 8 * (__clz(__rbit64(v8)) | (v11 << 6)));

  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v8 &= v8 - 1;
  while (1)
  {
    if (v13 == v14)
    {

      v10 = v11;
      v4 = v19;
      v9 = v17;
      v5 = v18;
      if (!v8)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if ((v12 & 0xC000000000000001) == 0)
    {
      break;
    }

    specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (__OFADD__(v14, 1))
    {
      goto LABEL_27;
    }

LABEL_16:
    if (Activity.id.getter() == a1 && v16 == a2)
    {

LABEL_25:

      goto LABEL_26;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v14;
    if (v15)
    {
      goto LABEL_25;
    }
  }

  if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

  if (!__OFADD__(v14, 1))
  {
    goto LABEL_16;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_100389540(uint64_t a1)
{
  MediaLiveActivityAttributes.ContentState.init()();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v4 = sub_10000698C(v2, v3);
    v6 = v5;

    if (v6)
    {
      sub_100020E0C(*(a1 + 56) + 32 * v4, v13);
      if (swift_dynamicCast())
      {
        MediaLiveActivityAttributes.ContentState.rawNowPlayingActivityUIState.setter();
      }
    }
  }

  else
  {
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {
  }

  v9 = sub_10000698C(v7, v8);
  v11 = v10;

  if (v11)
  {
    sub_100020E0C(*(a1 + 56) + 32 * v9, v13);
    sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
    result = swift_dynamicCast();
    if (result)
    {
      return MediaLiveActivityAttributes.ContentState.suppressedBundleIdentifiers.setter();
    }
  }

  return result;
}

id sub_1003896A4(uint64_t a1)
{
  if (a1 == 2)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  result = [objc_opt_self() currentSettings];
  if (result)
  {
    v4 = result;
    v5 = [result supportManyRecommendationsPlatters];

    if (v5)
    {
      v6 = 1;
      return (v6 & 1);
    }

LABEL_8:
    v6 = sub_1003897FC(a1) ^ 1;
    return (v6 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003897FC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16))
  {

    v4 = sub_100389ADC(a1);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      if (v6 >> 62)
      {
        goto LABEL_18;
      }

      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        while (1)
        {
          v8 = 0;
          v18 = v6 & 0xFFFFFFFFFFFFFF8;
          v19 = v6 & 0xC000000000000001;
          while (v19)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v9 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_14:
              __break(1u);
              goto LABEL_19;
            }

LABEL_9:
            v20 = v9;
            v10 = type metadata accessor for ActivityState();
            v22 = &v18;
            v11 = *(v10 - 8);
            v12 = *(v11 + 64);
            __chkstk_darwin(v10);
            v13 = dispatch thunk of Activity.activityState.getter();
            v21 = &v18;
            __chkstk_darwin(v13);
            v14 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v11 + 104))(v14, enum case for ActivityState.dismissed(_:), v10);
            sub_10038B794();
            v15 = dispatch thunk of static Equatable.== infix(_:_:)();
            v16 = *(v11 + 8);
            v16(v14, v10);
            v16(v14, v10);

            if ((v15 & 1) == 0)
            {

              return 1;
            }

            ++v8;
            if (v20 == v7)
            {
              goto LABEL_19;
            }
          }

          if (v8 < *(v18 + 16))
          {
            break;
          }

          __break(1u);
LABEL_18:
          v7 = _CocoaArrayWrapper.endIndex.getter();
          if (!v7)
          {
            goto LABEL_19;
          }
        }

        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_14;
        }

        goto LABEL_9;
      }
    }

LABEL_19:
  }

  return 0;
}

uint64_t sub_100389A9C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100389ADC(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_100389BFC(v1, v2);
}

unint64_t sub_100389BFC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xEA0000000000676ELL;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v19 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v19 + 48) + v4))
        {
          v8 = 0x6E69726F7272696DLL;
        }

        else
        {
          v8 = 0x6979616C50776F6ELL;
        }

        if (*(*(v19 + 48) + v4))
        {
          v9 = 0xE900000000000067;
        }

        else
        {
          v9 = 0xEA0000000000676ELL;
        }
      }

      else if (v7 == 2)
      {
        v8 = 0xD000000000000013;
        v9 = 0x8000000100443BB0;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0xD000000000000012;
        }

        else
        {
          v8 = 0xD000000000000014;
        }

        if (v7 == 3)
        {
          v9 = 0x8000000100443BD0;
        }

        else
        {
          v9 = 0x8000000100443BF0;
        }
      }

      v10 = 0xD000000000000014;
      if (v6 == 3)
      {
        v10 = 0xD000000000000012;
        v11 = 0x8000000100443BD0;
      }

      else
      {
        v11 = 0x8000000100443BF0;
      }

      if (v6 == 2)
      {
        v10 = 0xD000000000000013;
        v11 = 0x8000000100443BB0;
      }

      if (v6)
      {
        v12 = 0x6E69726F7272696DLL;
      }

      else
      {
        v12 = 0x6979616C50776F6ELL;
      }

      if (v6)
      {
        v5 = 0xE900000000000067;
      }

      v13 = v6 <= 1 ? v12 : v10;
      v14 = v6 <= 1 ? v5 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xEA0000000000676ELL;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_100389DF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_100528AD8, &qword_10045B1B0);
  v31 = v4;
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v31 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      v15 = Hasher._finalize()();
      v16 = -1 << *(v7 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v16) >> 6;
        while (++v18 != v27 || (v26 & 1) == 0)
        {
          v28 = v18 == v27;
          if (v18 == v27)
          {
            v18 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v18);
          if (v29 != -1)
          {
            v19 = __clz(__rbit64(~v29)) + (v18 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + v19) = v24;
      *(*(v7 + 56) + 8 * v19) = v25;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_10038A148(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_100528AD0, &qword_10045B1A8);
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

Swift::Int sub_10038A3F0(Swift::Int result, uint64_t a2)
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

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10038A648(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100389ADC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100389DF4(v14, a3 & 1);
      result = sub_100389ADC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10038A910();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void sub_10038A794(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
      sub_10038A148(v16, a4 & 1);
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
      sub_10038AA6C();
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

void sub_10038A910()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100528AD8, &qword_10045B1B0);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void sub_10038AA6C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100528AD0, &qword_10045B1A8);
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

uint64_t sub_10038ABDC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009F30;

  return sub_100381DB0(v4, v5, v6, v2, v3);
}

uint64_t _s12mediaremoted18ActivityControllerC016updateNowPlayingB5State_27suppressedBundleIdentifiersySo05MRNowfB7UIStateV_SaySSGtF_0(uint64_t a1, uint64_t a2)
{
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100450890;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v5;
  *(inited + 48) = a1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v6;
  *(inited + 120) = sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  *(inited + 96) = a2;

  sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  if (qword_100536470 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10038ADB0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10038ADF8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009F30;

  return sub_100382AEC(v4, v5, v6, v2, v3);
}

uint64_t sub_10038AE90()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_1003838F8(v5, v6, v7, v2, v3, v4);
}

double _s12mediaremoted18ActivityControllerC032startGroupSessionLowPowerPlatterB0yyF_0()
{
  v0 = [objc_opt_self() server];
  v1 = [v0 groupSessionServer];

  if (v1)
  {
    v3 = [v1 sessionManager];

    if (v3)
    {
      v4 = [v3 session];

      if (v4)
      {
        v5 = [v4 identifier];
        swift_unknownObjectRelease();
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        sub_1001BC5A8(&qword_1005228A8, &unk_100450030);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10044EC70;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v10;
        *(inited + 48) = v6;
        *(inited + 56) = v8;
        v11 = sub_10021EF3C(inited);
        swift_setDeallocating();
        sub_1000038A4(inited + 32, &unk_1005228B0, &qword_10045AFF0);
        if (qword_100536470 != -1)
        {
          swift_once();
        }

        sub_1003836A0(v11);
        v13 = v12;

        sub_100384FCC(4, v13);
      }
    }
  }

  return result;
}

id _s12mediaremoted18ActivityControllerC010contextForB10IdentifierySo11MRUIContextaSSF_0(uint64_t a1, uint64_t a2)
{
  if (qword_100536470 != -1)
  {
LABEL_29:
    swift_once();
  }

  sub_100389300(a1, a2);
  if (v4 > 2u)
  {
    if (v4 == 3)
    {
      v5 = &MRUIContextGroupSessionNearby;
      goto LABEL_32;
    }

    if (v4 == 4)
    {
      v5 = &MRUIContextGroupSession;
      goto LABEL_32;
    }

    v6 = static os_log_type_t.error.getter();
    v7 = sub_1001D8BC4();
    v8 = *v7;
    v9 = sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
    v10 = swift_allocObject();
    v43 = xmmword_10044EC70;
    *(v10 + 16) = xmmword_10044EC70;
    *(v10 + 56) = &type metadata for String;
    v11 = sub_100008FEC();
    *(v10 + 64) = v11;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    v12 = v8;

    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v12, "No context for unknown activity %{public}@.", 43, 2, v10);

    sub_1001BC5A8(&qword_100528AA0, &qword_10045B178);
    v13 = static Activity.activities.getter();
    v14 = v13;
    v44 = v9;
    v41 = v11;
    v42 = v7;
    if (v13 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_14:
        v16 = 0;
        v45 = v14 & 0xC000000000000001;
        do
        {
          if (v45)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
LABEL_25:
              __break(1u);
LABEL_26:

LABEL_27:

              v20 = static os_log_type_t.error.getter();
              v21 = *v42;
              v22 = swift_allocObject();
              *(v22 + 16) = v43;
              v23 = v41;
              *(v22 + 56) = &type metadata for String;
              *(v22 + 64) = v23;
              *(v22 + 32) = a1;
              *(v22 + 40) = a2;

              v24 = v21;
              os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v24, "Identified untracked activity. Will end.", 40, 2, v22);

              v25 = sub_1001BC5A8(&qword_100528AA8, &qword_10045B180);
              __chkstk_darwin(v25 - 8);
              v27 = &v41 - v26;
              v28 = sub_1001BC5A8(&qword_100528A68, &qword_10045B158);
              (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
              v29 = type metadata accessor for ActivityUIDismissalPolicy();
              v30 = *(v29 - 8);
              __chkstk_darwin(v29);
              v32 = &v41 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
              static ActivityUIDismissalPolicy.immediate.getter();
              dispatch thunk of Activity.endSync(_:dismissalPolicy:)();
              (*(v30 + 8))(v32, v29);
              sub_1000038A4(v27, &qword_100528AA8, &qword_10045B180);
              v33 = MRUIContextUnknown;

              return v33;
            }
          }

          else
          {
            if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_29;
            }

            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_25;
            }
          }

          if (Activity.id.getter() == a1 && v18 == a2)
          {
            goto LABEL_26;
          }

          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_27;
          }

          ++v16;
        }

        while (v17 != v15);
      }
    }

    v35 = static os_log_type_t.error.getter();
    v36 = *v42;
    v37 = swift_allocObject();
    *(v37 + 16) = v43;
    v38 = v41;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = v38;
    *(v37 + 32) = a1;
    *(v37 + 40) = a2;

    v39 = v36;
    os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v39, "Could not find untracked activity.", 34, 2, v37);

    v5 = &MRUIContextUnknown;
    goto LABEL_32;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v5 = &MRUIContextScreenMirroring;
    }

    else
    {
      v5 = &MRUIContextRouteRecommendation;
    }
  }

  else
  {
    v5 = &MRUIContextNowPlaying;
  }

LABEL_32:
  v40 = *v5;

  return v40;
}

unint64_t sub_10038B6BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004D03D0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10038B70C()
{
  result = qword_1005288E8;
  if (!qword_1005288E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005288E8);
  }

  return result;
}

unint64_t sub_10038B794()
{
  result = qword_100528A60;
  if (!qword_100528A60)
  {
    type metadata accessor for ActivityState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528A60);
  }

  return result;
}

uint64_t sub_10038B7E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MediaLiveActivityAttributes.ContentState();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10038B824()
{
  result = qword_100528A90;
  if (!qword_100528A90)
  {
    sub_1001C2EC8(&qword_100528A88, &qword_10045B160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528A90);
  }

  return result;
}

uint64_t sub_10038B888()
{
  v2 = *(sub_1001BC5A8(&qword_100528A68, &qword_10045B158) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_1003888B4(v5, v6, v7, v4, v0 + v3);
}

unint64_t sub_10038B96C()
{
  result = qword_100528A98;
  if (!qword_100528A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528A98);
  }

  return result;
}

unint64_t sub_10038B9C0()
{
  result = qword_100528AC8;
  if (!qword_100528AC8)
  {
    sub_1001C2EC8(&qword_100528AB0, &qword_10045B188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528AC8);
  }

  return result;
}

uint64_t sub_10038BA18()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009F30;

  return sub_100388C98(v3, v4, v5, v6, v2);
}

uint64_t sub_10038BABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100528AE0, &qword_10045B1C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038BB2C(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10038BB78()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009F34;

  return sub_10038696C(v3, v4, v5, v2);
}

unint64_t sub_10038BC10()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10038BC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000100444280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010043FE00 == a2)
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

uint64_t sub_10038BD2C(uint64_t a1)
{
  v2 = sub_1003900D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038BD68(uint64_t a1)
{
  v2 = sub_1003900D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_10038BF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___MRIRRouteRecommendationContext_candidateResults] = a1;
  v8 = &v7[OBJC_IVAR___MRIRRouteRecommendationContext_contextIdentifier];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

void *sub_10038C09C(void *a1)
{
  v3 = type metadata accessor for UUID();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001BC5A8(&qword_100528B08, &qword_10045B200);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v11 = a1[3];
  v10 = a1[4];
  v28 = a1;
  sub_1000326D8(a1, v11);
  sub_1003900D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100026A44(v28);
    type metadata accessor for RouteRecommendationContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v5;
    v25 = v3;
    v26 = v7;
    sub_1001BC5A8(&qword_100528B18, &qword_10045B208);
    v33 = 0;
    sub_100390150(&qword_100528B20, &qword_100528B28, &unk_10045B4B0, &protocol conformance descriptor for <> Set<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v29;
    *&v29[OBJC_IVAR___MRIRRouteRecommendationContext_candidateResults] = v31;
    LOBYTE(v31) = 1;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v26;
    if (!v15)
    {
      v31 = 760500813;
      v32 = 0xE400000000000000;
      v17 = v24;
      UUID.init()();
      v18 = UUID.uuidString.getter();
      v20 = v19;
      (*(v27 + 8))(v17, v25);
      v21._countAndFlagsBits = v18;
      v21._object = v20;
      String.append(_:)(v21);
      v16 = v26;
      v13 = v29;

      v14 = v31;
      v15 = v32;
    }

    v22 = &v13[OBJC_IVAR___MRIRRouteRecommendationContext_contextIdentifier];
    *v22 = v14;
    v22[1] = v15;
    v23 = type metadata accessor for RouteRecommendationContext();
    v30.receiver = v13;
    v30.super_class = v23;
    v10 = objc_msgSendSuper2(&v30, "init");
    (*(v16 + 8))(v9, v6);
    sub_100026A44(v28);
  }

  return v10;
}

uint64_t sub_10038C46C(void *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_100528B38, &qword_10045B210);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_1000326D8(a1, a1[3]);
  sub_1003900D8();
  v9 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (*((swift_isaMask & *v3) + 0x60))(v9);
  v12[7] = 0;
  sub_1001BC5A8(&qword_100528B18, &qword_10045B208);
  sub_100390150(&qword_100528B40, &qword_100528B48, &unk_10045B4D8, &protocol conformance descriptor for <> Set<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*((swift_isaMask & *v3) + 0x78))(v10);
  v12[6] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_10038C760@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 152))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10038C7F0()
{
  v1 = *v0;
  v2 = 0x6966697373616C63;
  v3 = 0xD000000000000016;
  if (v1 == 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x48676E6974726F73;
  if (v1 != 3)
  {
    v4 = 0x6F546C6C61437369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v1 != 1)
  {
    v5 = 0x74616469646E6163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10038C8E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1003901EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10038C910(uint64_t a1)
{
  v2 = sub_100390450();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038C94C(uint64_t a1)
{
  v2 = sub_100390450();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10038C9D0()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10038CA68(uint64_t a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_10038CBF4()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10038CCA8(uint64_t a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_10038CDAC()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10038CE58(uint64_t a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10038CF58()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10038CFF0(char a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10038D0E8()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10038D180(char a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10038D278()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10038D310(char a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_10038D3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{

  v15 = objc_allocWithZone(v8);
  v16 = &v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classificationDescription];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  *&v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint] = 0;
  *&v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification] = a1;
  *&v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate] = a4;
  swift_beginAccess();
  *&v15[v17] = a5;
  v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction] = a6;
  v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl] = a7;
  v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered] = a8;
  v19.receiver = v15;
  v19.super_class = v8;
  return objc_msgSendSuper2(&v19, "init");
}

id sub_10038D4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{

  v15 = &v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classificationDescription];
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  *&v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint] = 0;
  *&v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification] = a1;
  *&v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate] = a4;
  swift_beginAccess();
  *&v8[v16] = a5;
  v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction] = a6;
  v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl] = a7;
  v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered] = a8;
  v18.receiver = v8;
  v18.super_class = type metadata accessor for RouteRecommendationCandidateResult();
  return objc_msgSendSuper2(&v18, "init");
}

char *sub_10038D674(void *a1)
{
  v4 = sub_1001BC5A8(&qword_100528B88, &qword_10045B218);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = (v1 + OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classificationDescription);
  *v8 = 0;
  v8[1] = 0;
  v27 = v8;
  v28 = a1;
  v9 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  v29 = v1;
  *(v1 + OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint) = 0;
  sub_1000326D8(a1, a1[3]);
  sub_100390450();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v14 = v29;
    sub_100026A44(v28);

    type metadata accessor for RouteRecommendationCandidateResult();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = 0;
    v10 = v9;
    *(v29 + OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification) = KeyedDecodingContainer.decode(_:forKey:)();
    v33 = 1;
    v11 = v4;
    v12 = v7;
    v13 = v5;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v17;
    v19 = v27;
    swift_beginAccess();
    *v19 = v16;
    v19[1] = v18;

    type metadata accessor for RouteRecommendationCandidate();
    v32 = 2;
    sub_100390C08(&qword_100528B98, type metadata accessor for RouteRecommendationCandidate, &unk_10045B608);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = v13;
    v21 = v29;
    *(v29 + OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate) = v31;
    LOBYTE(v31) = 3;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = [objc_allocWithZone(NSNumber) initWithDouble:*&v22];
    }

    swift_beginAccess();
    v25 = *&v21[v10];
    *&v21[v10] = v24;

    v32 = 4;
    v21[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)() & 1;
    v32 = 5;
    v21[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)() & 1;
    v32 = 6;
    v21[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)() & 1;
    v26 = type metadata accessor for RouteRecommendationCandidateResult();
    v30.receiver = v21;
    v30.super_class = v26;
    v14 = objc_msgSendSuper2(&v30, "init");
    (*(v20 + 8))(v12, v11);
    sub_100026A44(v28);
  }

  return v14;
}

id sub_10038DB24(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v10 = a1;
  sub_10038DBB4(a3, a4, a5, a6);

  v11 = String._bridgeToObjectiveC()();

  return v11;
}

uint64_t sub_10038DBB4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = v4;
  v10 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v10 - 8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v28 = v4;
  v11 = a1();
  sub_100390C08(a2, a3, a4);
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v13;
  static String.Encoding.utf8.getter();
  v15 = String.init(data:encoding:)();
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    sub_1001C4034(v12, v14);
  }

  else
  {
    sub_1001C4034(v12, v14);
    v18 = 0xEC00000061746164;
    v17 = 0x2064696C61766E69;
  }

  v28 = 60;
  v29 = 0xE100000000000000;
  v27.receiver = v9;
  v27.super_class = v11;
  v19 = objc_msgSendSuper2(&v27, "description");
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 2622;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = v17;
  v25._object = v18;
  String.append(_:)(v25);

  return v28;
}

uint64_t sub_10038DDBC(void *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_100528BA0, &qword_10045B220);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - v7;
  sub_1000326D8(a1, a1[3]);
  sub_100390450();
  v9 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*((swift_isaMask & *v3) + 0x88))(v9);
  v26 = 0;
  v10 = KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    (*((swift_isaMask & *v3) + 0xA0))(v10);
    v25 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    v13 = (*((swift_isaMask & *v3) + 0xB8))(v12);
    v19[1] = v13;
    v24 = 2;
    type metadata accessor for RouteRecommendationCandidate();
    sub_100390C08(&qword_100528BA8, type metadata accessor for RouteRecommendationCandidate, &unk_10045B630);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v14 = (*((swift_isaMask & *v3) + 0xD0))();
    v15 = v14;
    if (v14)
    {
      [v14 doubleValue];
    }

    v23 = 3;
    v16 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    (*((swift_isaMask & *v3) + 0xE8))(v16);
    v22 = 4;
    v17 = KeyedEncodingContainer.encode(_:forKey:)();
    (*((swift_isaMask & *v3) + 0x100))(v17);
    v21 = 5;
    v18 = KeyedEncodingContainer.encode(_:forKey:)();
    (*((swift_isaMask & *v3) + 0x118))(v18);
    v20 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10038E2A4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 312))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10038E33C()
{
  if (*v0)
  {
    return 0x7365646F6ELL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_10038E378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000100444340 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7365646F6ELL && a2 == 0xE500000000000000)
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

uint64_t sub_10038E45C(uint64_t a1)
{
  v2 = sub_1003904C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038E498(uint64_t a1)
{
  v2 = sub_1003904C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10038E4EC(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_10038E558(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

Class sub_10038E650(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t), unint64_t *a5, uint64_t (*a6)(void))
{
  v9 = swift_beginAccess();
  a4(v9);
  sub_100390C08(a5, a6, &protocol conformance descriptor for NSObject);

  v10.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

uint64_t sub_10038E75C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), unint64_t *a5, uint64_t (*a6)(void), uint64_t *a7)
{
  a4(a1, a2);
  sub_100390C08(a5, a6, &protocol conformance descriptor for NSObject);
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = *a7;
  swift_beginAccess();
  *(a1 + v12) = v11;
}

uint64_t sub_10038E814(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id sub_10038E8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___MRIRRouteRecommendationCandidate_candidateIdentifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR___MRIRRouteRecommendationCandidate_nodes] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

char *sub_10038E97C(void *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_100528BC0, &qword_10045B228);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_1000326D8(a1, a1[3]);
  sub_1003904C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100026A44(a1);
    type metadata accessor for RouteRecommendationCandidate();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = (v1 + OBJC_IVAR___MRIRRouteRecommendationCandidate_candidateIdentifier);
    *v11 = v9;
    v11[1] = v12;
    sub_1001BC5A8(&qword_100528BD0, &qword_10045B230);
    v16 = 1;
    sub_100390540(&qword_100528BD8, &qword_100528BE0, &unk_10045B760, &protocol conformance descriptor for <> Set<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + OBJC_IVAR___MRIRRouteRecommendationCandidate_nodes) = v17;
    v13 = type metadata accessor for RouteRecommendationCandidate();
    v15.receiver = v1;
    v15.super_class = v13;
    v3 = objc_msgSendSuper2(&v15, "init");
    (*(v6 + 8))(v8, v5);
    sub_100026A44(a1);
  }

  return v3;
}

uint64_t sub_10038EC04(void *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_100528BE8, &qword_10045B238);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_1000326D8(a1, a1[3]);
  sub_1003904C8();
  v9 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*((swift_isaMask & *v3) + 0x60))(v9);
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v13 = (*((swift_isaMask & *v3) + 0x78))(v11);
    v12[15] = 1;
    sub_1001BC5A8(&qword_100528BD0, &qword_10045B230);
    sub_100390540(&qword_100528BF0, &qword_100528BF8, &unk_10045B788, &protocol conformance descriptor for <> Set<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10038EF00@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 152))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10038EF90()
{
  v1 = 0x746E656449736469;
  if (*v0 != 2)
  {
    v1 = 0x6C61636F4C7369;
  }

  v2 = 0xD000000000000018;
  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10038F024@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1003905DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10038F04C(uint64_t a1)
{
  v2 = sub_100390754();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038F088(uint64_t a1)
{
  v2 = sub_100390754();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_10038F1F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10038F290(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_10038F3C0()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationNode_isLocal;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10038F458(char a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationNode_isLocal;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t (*sub_10038F6D0(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = (*((swift_isaMask & *v1) + 0x70))();
  a1[1] = v3;
  return sub_10038F748;
}

uint64_t sub_10038F748(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *((swift_isaMask & *a1[2]) + 0x78);
  if ((a2 & 1) == 0)
  {
    return v4(*a1, v2);
  }

  v4(v3, v2);
}

id sub_10038F800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = objc_allocWithZone(v7);
  v14 = &v13[OBJC_IVAR___MRIRRouteRecommendationNode_avOutputDeviceIdentifier];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v13[OBJC_IVAR___MRIRRouteRecommendationNode_rapportIdentifier];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v13[OBJC_IVAR___MRIRRouteRecommendationNode_idsIdentifier];
  *v16 = 0;
  v16[1] = 0;
  swift_beginAccess();
  *v14 = a1;
  v14[1] = a2;
  swift_beginAccess();
  *v15 = a3;
  v15[1] = a4;
  swift_beginAccess();
  *v16 = a5;
  v16[1] = a6;

  v13[OBJC_IVAR___MRIRRouteRecommendationNode_isLocal] = a7;
  v20.receiver = v13;
  v20.super_class = v7;
  return objc_msgSendSuper2(&v20, "init");
}

uint64_t *sub_10038F958(void *a1)
{
  v4 = sub_1001BC5A8(&qword_100528C20, &qword_10045B240);
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v7 = &v1[OBJC_IVAR___MRIRRouteRecommendationNode_avOutputDeviceIdentifier];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v1[OBJC_IVAR___MRIRRouteRecommendationNode_rapportIdentifier];
  *v8 = 0;
  v8[1] = 0;
  v30 = a1;
  v31 = v1;
  v9 = &v1[OBJC_IVAR___MRIRRouteRecommendationNode_idsIdentifier];
  *v9 = 0;
  v9[1] = 0;
  v10 = v9;
  sub_1000326D8(a1, a1[3]);
  sub_100390754();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100026A44(v30);

    type metadata accessor for RouteRecommendationNode();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v35 = 0;
    v11 = v6;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = v13;
    swift_beginAccess();
    *v7 = v12;
    v7[1] = v14;

    v34 = 1;
    v15 = v29;
    v16 = v10;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = v18;
    swift_beginAccess();
    *v8 = v17;
    v8[1] = v19;

    v33 = 2;
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = v21;
    swift_beginAccess();
    *v16 = v20;
    v16[1] = v22;

    v36 = 3;
    v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v25 = v31;
    *(v31 + OBJC_IVAR___MRIRRouteRecommendationNode_isLocal) = v23 & 1;
    v26 = type metadata accessor for RouteRecommendationNode();
    v32.receiver = v25;
    v32.super_class = v26;
    v10 = objc_msgSendSuper2(&v32, "init");
    (*(v28 + 8))(v11, v15);
    sub_100026A44(v30);
  }

  return v10;
}

uint64_t sub_10038FC84(void *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_100528C30, &qword_10045B248);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  sub_1000326D8(a1, a1[3]);
  sub_100390754();
  v9 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*((swift_isaMask & *v3) + 0x70))(v9);
  v14[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    (*((swift_isaMask & *v3) + 0x88))(v10);
    v14[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    (*((swift_isaMask & *v3) + 0xA0))(v11);
    v14[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    (*((swift_isaMask & *v3) + 0xB8))(v12);
    v14[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v6 + 8))(v8, v5);
  }
}

id sub_10038FF84(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100390024@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 240))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1003900D8()
{
  result = qword_100528B10;
  if (!qword_100528B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528B10);
  }

  return result;
}

uint64_t sub_100390150(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1001C2EC8(&qword_100528B18, &qword_10045B208);
    sub_100390C08(a2, type metadata accessor for RouteRecommendationCandidateResult, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003901EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6966697373616C63 && a2 == 0xEE006E6F69746163;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000010043FE20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616469646E6163 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x48676E6974726F73 && a2 == 0xEB00000000746E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F546C6C61437369 && a2 == 0xEE006E6F69746341 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004442F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004442D0 == a2)
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

unint64_t sub_100390450()
{
  result = qword_100528B90;
  if (!qword_100528B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528B90);
  }

  return result;
}

unint64_t sub_1003904C8()
{
  result = qword_100528BC8;
  if (!qword_100528BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528BC8);
  }

  return result;
}

uint64_t sub_100390540(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1001C2EC8(&qword_100528BD0, &qword_10045B230);
    sub_100390C08(a2, type metadata accessor for RouteRecommendationNode, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003905DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001004443B0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100444390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E656449736469 && a2 == 0xED00007265696669 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61636F4C7369 && a2 == 0xE700000000000000)
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

unint64_t sub_100390754()
{
  result = qword_100528C28;
  if (!qword_100528C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C28);
  }

  return result;
}

unint64_t sub_1003907AC()
{
  result = qword_100528C38;
  if (!qword_100528C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C38);
  }

  return result;
}

unint64_t sub_100390804()
{
  result = qword_100528C40;
  if (!qword_100528C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C40);
  }

  return result;
}

unint64_t sub_10039085C()
{
  result = qword_100528C48;
  if (!qword_100528C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C48);
  }

  return result;
}

unint64_t sub_1003908B4()
{
  result = qword_100528C50;
  if (!qword_100528C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C50);
  }

  return result;
}

unint64_t sub_10039090C()
{
  result = qword_100528C58;
  if (!qword_100528C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C58);
  }

  return result;
}

unint64_t sub_100390964()
{
  result = qword_100528C60;
  if (!qword_100528C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C60);
  }

  return result;
}

unint64_t sub_1003909BC()
{
  result = qword_100528C68;
  if (!qword_100528C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C68);
  }

  return result;
}

unint64_t sub_100390A14()
{
  result = qword_100528C70;
  if (!qword_100528C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C70);
  }

  return result;
}

unint64_t sub_100390A6C()
{
  result = qword_100528C78;
  if (!qword_100528C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C78);
  }

  return result;
}

unint64_t sub_100390AC4()
{
  result = qword_100528C80;
  if (!qword_100528C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C80);
  }

  return result;
}

unint64_t sub_100390B1C()
{
  result = qword_100528C88;
  if (!qword_100528C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C88);
  }

  return result;
}

unint64_t sub_100390B74()
{
  result = qword_100528C90;
  if (!qword_100528C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C90);
  }

  return result;
}

uint64_t sub_100390C08(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100390C4C()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100537508);
  sub_100015AFC(v0, qword_100537508);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

id sub_100390D68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionUIManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100390DA0()
{
  result = qword_100528D50;
  if (!qword_100528D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528D50);
  }

  return result;
}

id sub_100390E04()
{
  v1 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation____lazy_storage___uiController;
  if (*(v0 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation____lazy_storage___uiController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation____lazy_storage___uiController);
  }

  else
  {
    v2 = [objc_opt_self() groupSessionUIControllerWithDelegate:v0];
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

char *sub_100390E88()
{
  v1 = v0;
  v35[0] = swift_getObjectType();
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation____lazy_storage___uiController] = 0;
  v8 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_bannerCenter;
  v9 = objc_allocWithZone(MRDBannerCenter);
  *&v0[v8] = [v9 init];
  v36 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue;
  v35[1] = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_1000049C0(&qword_100522A90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
  sub_100004674(&qword_100522AA0, &qword_100521DF8, &unk_100450220);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v36] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = &v0[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v0[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_shouldPresentBannerWhenAppropriate] = 1;
  v0[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_suppressBanners] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_participants] = 0;
  *&v0[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_ongoingNotifications] = _swiftEmptyArrayStorage;
  v11 = objc_allocWithZone(UNUserNotificationCenter);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithBundleIdentifier:v12];

  *&v1[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_notificationCenter] = v13;
  [v13 setWantsNotificationResponsesDelivered];
  v14 = type metadata accessor for GroupSessionUIManagerImplementation();
  v37.receiver = v1;
  v37.super_class = v14;
  v15 = objc_msgSendSuper2(&v37, "init");
  v16 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_notificationCenter;
  v17 = *&v15[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_notificationCenter];
  v18 = v15;
  [v17 setDelegate:v18];
  [*&v18[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_bannerCenter] setDelegate:v18];
  [*&v15[v16] removeAllPendingNotificationRequests];
  [*&v15[v16] removeAllDeliveredNotifications];
  v19 = objc_opt_self();
  v20 = [v19 defaultCenter];
  v21 = objc_opt_self();
  v22 = v18;
  v23 = [v21 sharedMonitor];
  [v20 addObserver:v22 selector:"handleDisplayMonitorChangeNotification:" name:@"MRDisplayMonitorLayoutDidChangeNotification" object:v23];

  v24 = [v19 defaultCenter];
  v25 = [v21 sharedMonitor];
  [v24 addObserver:v22 selector:"handleDisplayMonitorChangeNotification:" name:@"MRDisplayMonitorDisplayDidChangeNotification" object:v25];

  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100015AFC(v26, qword_100537508);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136315138;
    v31 = _typeName(_:qualified:)();
    v33 = sub_10002C9C8(v31, v32, &v38);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "[%s] Initialized", v29, 0xCu);
    sub_100026A44(v30);
  }

  return v22;
}

id sub_1003914B4()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100537508);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002C9C8(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] Deinit", v5, 0xCu);
    sub_100026A44(v6);
  }

  v10 = type metadata accessor for GroupSessionUIManagerImplementation();
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "dealloc");
}

id sub_100391704(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong removeObserver:v1];
    v4 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_notificationCenter);
    [v4 removeAllPendingNotificationRequests];
    [v4 removeAllDeliveredNotifications];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectWeakAssign();
  v5 = [a1 participants];
  sub_1001BC5A8(&unk_100522CB0, &unk_10044EC00);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_participants) = v6;

  return [a1 addObserver:v1];
}

double sub_100391880(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v12 = *(v23 - 8);
  __chkstk_darwin(v23);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v4[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = v4;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = ObjectType;
  aBlock[4] = sub_1003989FC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004D0D68;
  v17 = _Block_copy(aBlock);
  v18 = v15;
  v19 = a1;
  v20 = v4;

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1000049C0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v24 + 8))(v11, v9);
  (*(v12 + 8))(v14, v23);

  return result;
}

double sub_100391BAC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_10039868C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004D0C78;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v2;

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1000049C0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v19 + 8))(v7, v5);
  (*(v8 + 8))(v10, v18);

  return result;
}

void sub_100391EF0(uint64_t a1, unint64_t a2)
{
  v5 = v2;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v5 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v16 = *(v10 + 8);
  v15 = v10 + 8;
  v16(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  v4 = v5 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext;
  v17 = *(v5 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext);
  if (v17)
  {
    v80 = ObjectType;
    v79 = *(v4 + 8);
    v3 = v79;

    v81 = v17;
    v18 = [v81 identifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v9 = a1;
    v22 = v19 == a1;
    v15 = a2;
    v22 = v22 && v21 == a2;
    if (v22)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        if (qword_100537500 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_100015AFC(v24, qword_100537508);

        v25 = v81;
        v26 = v3;

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v82 = v79;
          *v29 = 136315650;
          v30 = _typeName(_:qualified:)();
          v32 = sub_10002C9C8(v30, v31, &v82);
          v81 = v26;
          v33 = v32;

          *(v29 + 4) = v33;
          *(v29 + 12) = 2082;
          v34 = [v25 identifier];
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v38 = sub_10002C9C8(v35, v37, &v82);

          *(v29 + 14) = v38;
          *(v29 + 22) = 2082;
          *(v29 + 24) = sub_10002C9C8(a1, a2, &v82);
          _os_log_impl(&_mh_execute_header, v27, v28, "[%s] Attempted to dismiss different discovered session. Current: %{public}s, requested: %{public}s", v29, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
        }

        return;
      }
    }

    if (qword_100537500 == -1)
    {
LABEL_19:
      v47 = type metadata accessor for Logger();
      sub_100015AFC(v47, qword_100537508);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v82 = v78;
        *v50 = 136315394;
        v51 = _typeName(_:qualified:)();
        v76 = v9;
        v53 = sub_10002C9C8(v51, v52, &v82);
        v77 = v48;
        v54 = v53;

        *(v50 + 4) = v54;
        *(v50 + 12) = 2082;
        *(v50 + 14) = sub_10002C9C8(v76, v15, &v82);
        v48 = v77;
        _os_log_impl(&_mh_execute_header, v77, v49, "[%s] Dismissing for session: %{public}s", v50, 0x16u);
        swift_arrayDestroy();
      }

      v55 = objc_opt_self();
      v56 = [v55 currentSettings];
      if (v56)
      {
        v57 = v56;
        v58 = [v56 groupSessionNearbyBanner];

        if (v58 && v79 && *(v5 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_suppressBanners) == 1)
        {
          v59 = v3;
          sub_100395F08(v59);
        }

        v60 = [v55 currentSettings];
        if (v60)
        {
          v61 = v60;
          v62 = [v60 groupSessionNearbyLockscreen];

          if (v62)
          {
            v63 = Logger.logObject.getter();
            v64 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              v82 = v66;
              *v65 = 136315138;
              v67 = _typeName(_:qualified:)();
              v69 = v3;
              v70 = sub_10002C9C8(v67, v68, &v82);

              *(v65 + 4) = v70;
              v3 = v69;
              _os_log_impl(&_mh_execute_header, v63, v64, "[%s] Releasing GroupSessionNearby assertion", v65, 0xCu);
              sub_100026A44(v66);
            }

            [sub_100390E04() releaseGroupSessionNearbyAssertion];
            swift_unknownObjectRelease();
          }

          v71 = *v4;
          v72 = *(v4 + 8);
          v73 = *(v4 + 16);
          v74 = *(v4 + 24);
          *v4 = 0u;
          *(v4 + 16) = 0u;
          sub_1003985EC(v71, v72, v73, v74);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_35:
    swift_once();
    goto LABEL_19;
  }

  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100015AFC(v39, qword_100537508);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v82 = v43;
    *v42 = 136315138;
    v44 = _typeName(_:qualified:)();
    v46 = sub_10002C9C8(v44, v45, &v82);

    *(v42 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v40, v41, "[%s] Attempted to dismiss while no discovered session is presented", v42, 0xCu);
    sub_100026A44(v43);
  }
}

void sub_100392754(void *a1, uint64_t a2, uint64_t a3)
{
  v109 = a3;
  v107 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UUID();
  v105 = *(v5 - 8);
  v106 = v5;
  __chkstk_darwin(v5);
  v104 = v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001BC5A8(&qword_100523B48, &unk_100451A30);
  v8 = __chkstk_darwin(v7 - 8);
  v110 = (v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v11 = v98 - v10;
  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100015AFC(v12, qword_100537508);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  v16 = os_log_type_enabled(v14, v15);
  v111 = ObjectType;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock = v19;
    *v17 = 136315394;
    v20 = _typeName(_:qualified:)();
    v22 = sub_10002C9C8(v20, v21, &aBlock);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v13;
    *v18 = v13;
    v23 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%s] displayJoinRequest: %@", v17, 0x16u);
    sub_1001E4048(v18);

    sub_100026A44(v19);
  }

  v24 = [v13 identity];
  v25 = [v24 displayName];

  if (v25)
  {
    v102 = v13;
    v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    v28 = [objc_allocWithZone(UNMutableNotificationContent) init];
    [v28 setTitle:v25];

    v29 = String._bridgeToObjectiveC()();
    v30 = MRLocalizedString();

    if (v30)
    {
      [v28 setBody:v30];

      v31 = String._bridgeToObjectiveC()();
      v101 = objc_opt_self();
      v32 = [v101 iconForApplicationIdentifier:v31];

      [v28 setIcon:v32];
      v100 = "N_REQUEST_NOTIFICATION_BODY_IOS";
      URL.init(string:)();
      v33 = type metadata accessor for URL();
      v34 = *(v33 - 8);
      v35 = *(v34 + 48);
      if (v35(v11, 1, v33) == 1)
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      URL._bridgeToObjectiveC()(v36);
      v38 = v37;
      v99 = *(v34 + 8);
      v99(v11, v33);
      [v28 setDefaultActionURL:v38];

      v98[1] = "music://groupSession/settings";
      v39 = String._bridgeToObjectiveC()();
      [v28 setCategoryIdentifier:v39];

      [v28 setShouldBackgroundDefaultAction:1];
      v40 = [objc_allocWithZone(UNMutableNotificationContent) init];
      v41 = String._bridgeToObjectiveC()();
      v42 = String._bridgeToObjectiveC()();
      v43 = MRLocalizedStringWithFormat();

      if (!v43)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_10044EC70;
      *(v44 + 56) = &type metadata for String;
      *(v44 + 64) = sub_100008FEC();
      *(v44 + 32) = v103;
      *(v44 + 40) = v27;

      String.init(format:_:)();

      v45 = String._bridgeToObjectiveC()();

      [v40 setTitle:v45];

      v46 = String._bridgeToObjectiveC()();
      v47 = [v101 iconForApplicationIdentifier:v46];

      [v40 setIcon:v47];
      v48 = v110;
      URL.init(string:)();
      if (v35(v48, 1, v33) == 1)
      {
LABEL_21:
        __break(1u);
        return;
      }

      URL._bridgeToObjectiveC()(v49);
      v51 = v50;
      v99(v48, v33);
      [v40 setDefaultActionURL:v51];

      v52 = String._bridgeToObjectiveC()();
      [v40 setCategoryIdentifier:v52];

      [v40 setShouldBackgroundDefaultAction:1];
      v53 = v104;
      UUID.init()();
      v110 = UUID.uuidString.getter();
      v55 = v54;
      v56 = v106;
      v57 = v105[1];
      v57(v53, v106);
      v58 = v28;
      v59 = String._bridgeToObjectiveC()();
      v60 = objc_opt_self();
      v61 = [v60 requestWithIdentifier:v59 content:v58 trigger:0];

      v105 = v58;
      v103 = v61;
      [v61 setDestinations:3];
      UUID.init()();
      v62 = UUID.uuidString.getter();
      v64 = v63;
      v57(v53, v56);
      v65 = v40;
      v66 = String._bridgeToObjectiveC()();
      v67 = [v60 requestWithIdentifier:v66 content:v65 trigger:0];

      v104 = v65;
      v106 = v67;
      [v67 setDestinations:8];
      v68 = v108;
      v69 = *&v108[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
      v70 = swift_allocObject();
      v71 = v102;
      v70[2] = v68;
      v70[3] = v71;
      v70[4] = v110;
      v70[5] = v55;
      v70[6] = v62;
      v70[7] = v64;
      v72 = v109;
      v70[8] = v107;
      v70[9] = v72;
      v73 = swift_allocObject();
      *(v73 + 16) = sub_10039814C;
      *(v73 + 24) = v70;
      v116 = sub_10021C408;
      v117 = v73;
      aBlock = _NSConcreteStackBlock;
      v113 = 1107296256;
      v114 = sub_1001E7220;
      v115 = &unk_1004D0B88;
      v74 = _Block_copy(&aBlock);
      v75 = v71;
      v76 = v69;
      v77 = v68;

      dispatch_async_and_wait(v76, v74);

      _Block_release(v74);
      LOBYTE(v74) = swift_isEscapingClosureAtFileLocation();

      if ((v74 & 1) == 0)
      {
        v78 = *&v77[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_notificationCenter];
        v79 = swift_allocObject();
        v80 = v103;
        v81 = v111;
        *(v79 + 16) = v103;
        *(v79 + 24) = v81;
        v116 = sub_10039820C;
        v117 = v79;
        aBlock = _NSConcreteStackBlock;
        v113 = 1107296256;
        v114 = sub_1001BC53C;
        v115 = &unk_1004D0BD8;
        v82 = _Block_copy(&aBlock);
        v83 = v80;

        [v78 addNotificationRequest:v83 withCompletionHandler:v82];
        _Block_release(v82);
        v84 = swift_allocObject();
        v85 = v106;
        *(v84 + 16) = v106;
        *(v84 + 24) = v81;
        v116 = sub_100398218;
        v117 = v84;
        aBlock = _NSConcreteStackBlock;
        v113 = 1107296256;
        v114 = sub_1001BC53C;
        v115 = &unk_1004D0C28;
        v86 = _Block_copy(&aBlock);
        v87 = v85;

        [v78 addNotificationRequest:v87 withCompletionHandler:v86];
        _Block_release(v86);

        return;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  v88 = v13;
  v110 = Logger.logObject.getter();
  v89 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v110, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    aBlock = v92;
    *v90 = 136315394;
    v93 = _typeName(_:qualified:)();
    v95 = sub_10002C9C8(v93, v94, &aBlock);

    *(v90 + 4) = v95;
    *(v90 + 12) = 2112;
    v96 = [v88 identity];
    *(v90 + 14) = v96;
    *v91 = v96;
    _os_log_impl(&_mh_execute_header, v110, v89, "[%s] Can't display join request for identity: %@ with no displayName", v90, 0x16u);
    sub_1001E4048(v91);

    sub_100026A44(v92);
  }

  else
  {
    v97 = v110;
  }
}

double sub_100393460(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);

  return result;
}

double sub_100393508(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v1;
  v11[4] = ObjectType;
  aBlock[4] = sub_100397F90;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004D0B10;
  v12 = _Block_copy(aBlock);
  v13 = v10;
  v14 = a1;
  v15 = v1;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1000049C0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v19 + 8))(v6, v4);
  (*(v7 + 8))(v9, v18);

  return result;
}

uint64_t sub_100393850(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001BC5A8(&qword_100523B48, &unk_100451A30);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MRGroupSessionToken) initWithDiscoveredSession:a1];
  v16 = [v15 joinURLString];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URL.init(string:)();

  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v18 = sub_100393CB8(v14, a2 & 1, a3, a4);
    return (*(v12 + 8))(v14, v11, v18);
  }

  return result;
}

double sub_100393CB8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31 = a3;
  v32 = a4;
  v29 = a2;
  ObjectType = swift_getObjectType();
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *&v4[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 25) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  *(v19 + 24) = v29;
  (*(v13 + 32))(v19 + v16, v15, v12);
  v20 = (v19 + v17);
  v22 = v31;
  v21 = v32;
  *v20 = v31;
  v20[1] = v21;
  *(v19 + v18) = ObjectType;
  aBlock[4] = sub_100397CD4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004D0A20;
  v23 = _Block_copy(aBlock);
  v24 = v28;
  v25 = v5;
  sub_10021DF20(v22, v21);
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_1000049C0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  v26 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v36 + 8))(v8, v26);
  (*(v34 + 8))(v11, v35);

  return result;
}

void sub_1003940A4(char *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a4;
  v69 = a5;
  v81 = a2;
  v74 = a1;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v66 = v10;
  v67 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v79 = *(v11 - 8);
  v80 = v11;
  __chkstk_darwin(v11);
  v77 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DispatchQoS();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTimeInterval();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = type metadata accessor for DispatchTime();
  v73 = *(v86 - 1);
  v18 = __chkstk_darwin(v86);
  v71 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v72 = &v65 - v20;
  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v83 = v9;
  v84 = v8;
  v21 = type metadata accessor for Logger();
  sub_100015AFC(v21, qword_100537508);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v82 = a3;
  v85 = a6;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    v27 = _typeName(_:qualified:)();
    v29 = v17;
    v30 = v15;
    v31 = v14;
    v32 = sub_10002C9C8(v27, v28, &aBlock);
    a6 = v85;

    *(v25 + 4) = v32;
    v14 = v31;
    v15 = v30;
    v17 = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "[%s] Begin banner suppression.", v25, 0xCu);
    sub_100026A44(v26);
  }

  v33 = v74;
  v74[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_suppressBanners] = 1;
  v70 = *&v33[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
  v34 = v71;
  static DispatchTime.now()();
  *v17 = 15;
  (*(v15 + 104))(v17, enum case for DispatchTimeInterval.seconds(_:), v14);
  v35 = v72;
  + infix(_:_:)();
  (*(v15 + 8))(v17, v14);
  v73 = *(v73 + 8);
  (v73)(v34, v86);
  v36 = swift_allocObject();
  *(v36 + 16) = v33;
  *(v36 + 24) = a6;
  v92 = sub_100397D78;
  v93 = v36;
  aBlock = _NSConcreteStackBlock;
  v89 = 1107296256;
  v71 = &v90;
  v90 = sub_100003D98;
  v91 = &unk_1004D0A70;
  v37 = _Block_copy(&aBlock);
  v38 = v33;
  v39 = v75;
  static DispatchQoS.unspecified.getter();
  v87 = _swiftEmptyArrayStorage;
  sub_1000049C0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  v40 = v77;
  v41 = v80;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v42 = v70;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v37);

  (*(v79 + 8))(v40, v41);
  (*(v76 + 8))(v39, v78);
  (v73)(v35, v86);

  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004592F0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v44;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = (v81 & 1) == 0;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v45;
  v46 = v84;
  *(inited + 120) = v84;
  v47 = sub_1000397B4((inited + 96));
  v49 = v82;
  v48 = v83;
  v86 = *(v83 + 16);
  v86(v47, v82, v46);
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v50;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v51;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v52 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  v53 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  if (v53)
  {
    v54 = v53;
    sub_1003949B4(v52);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v56 = v67;
    v86(v67, v49, v46);
    v57 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v58 = (v66 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 23) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    (*(v48 + 32))(v60 + v57, v56, v46);
    v61 = (v60 + v58);
    v63 = v68;
    v62 = v69;
    *v61 = v68;
    v61[1] = v62;
    *(v60 + v59) = v85;
    v92 = sub_100397EE4;
    v93 = v60;
    aBlock = _NSConcreteStackBlock;
    v89 = 1107296256;
    v90 = sub_1002D50E0;
    v91 = &unk_1004D0AC0;
    v64 = _Block_copy(&aBlock);
    sub_10021DF20(v63, v62);

    sub_10019E4E8(v54, isa, v64);
    _Block_release(v64);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003949B4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001BC5A8(&qword_1005216C8, &unk_100450040);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_100020E0C(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1001C4088(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1001C4088(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1001C4088(v31, v32);
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_1001C4088(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100394C7C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100015AFC(v13, qword_100537508);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      *v16 = 136315394;
      v19 = _typeName(_:qualified:)();
      v21 = sub_10002C9C8(v19, v20, &v37);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2114;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v22;
      *v17 = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Failed to launch music with error: %{public}@", v16, 0x16u);
      sub_1001E4048(v17);

      sub_100026A44(v18);

      if (!a3)
      {
        return;
      }

LABEL_15:
      a3(a1);
      return;
    }

    if (a3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v36 = a3;
    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100015AFC(v23, qword_100537508);
    (*(v10 + 16))(v12, a2, v9);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v35[1] = a4;
      v27 = v26;
      v37 = swift_slowAlloc();
      *v27 = 136315394;
      v28 = _typeName(_:qualified:)();
      v30 = sub_10002C9C8(v28, v29, &v37);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2082;
      sub_1000049C0(&unk_100528EC0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v10 + 8))(v12, v9);
      v34 = sub_10002C9C8(v31, v33, &v37);

      *(v27 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%s] Launched music with URL: %{public}s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }

    a3 = v36;
    if (v36)
    {
      goto LABEL_15;
    }
  }
}

void sub_100395100(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v7 = sub_1001BC5A8(&qword_100523B48, &unk_100451A30);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 == 1)
  {
    v14 = v3 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext;
    v15 = *(&v3->isa + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext);
    if (v15)
    {
      v42 = v3;
      v16 = *(v14 + 3);
      v17 = *(v14 + 1);
      v18 = qword_100537500;
      v19 = v15;
      v40 = v17;
      v41 = v16;

      if (v18 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100015AFC(v20, qword_100537508);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v39 = v19;
        v24 = v23;
        v25 = swift_slowAlloc();
        v43 = v25;
        *v24 = 136315138;
        v26 = _typeName(_:qualified:)();
        v28 = sub_10002C9C8(v26, v27, &v43);

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v21, v22, "[%s] Launch Music for banner tap.", v24, 0xCu);
        sub_100026A44(v25);

        v19 = v39;
      }

      v29 = [objc_allocWithZone(MRGroupSessionToken) initWithDiscoveredSession:v19];
      v30 = [v29 joinURLString];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      URL.init(string:)();

      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        __break(1u);
      }

      else
      {
        (*(v11 + 32))(v13, v9, v10);
        sub_100393CB8(v13, 1, 0, 0);

        (*(v11 + 8))(v13, v10);
      }
    }

    else
    {
      if (qword_100537500 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100015AFC(v31, qword_100537508);

      v42 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v32))
      {
        v33 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v33 = 136315394;
        v34 = _typeName(_:qualified:)();
        v36 = sub_10002C9C8(v34, v35, &v43);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2082;
        *(v33 + 14) = sub_10002C9C8(a1, a2, &v43);
        _os_log_impl(&_mh_execute_header, v42, v32, "[%s] Got banner tap for request: %{public}s but have no context", v33, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v37 = v42;
      }
    }
  }
}

double sub_100395664(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v8 = *(v19 - 8);
  __chkstk_darwin(v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = ObjectType;
  aBlock[4] = sub_100397690;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004D09D0;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v2;
  v16 = a1;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1000049C0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v20 + 8))(v7, v5);
  (*(v8 + 8))(v10, v19);

  return result;
}

double sub_100395A54(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v38 = v13;
  v39 = v14;
  __chkstk_darwin(v13);
  v37 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100015AFC(v16, qword_100537508);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = a2;
    v20 = v19;
    v34 = swift_slowAlloc();
    v35 = v9;
    aBlock[0] = v34;
    *v20 = 136315650;
    v21 = _typeName(_:qualified:)();
    v23 = sub_10002C9C8(v21, v22, aBlock);
    v33 = ObjectType;
    v24 = v23;

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10002C9C8(0xD00000000000002ELL, 0x8000000100444800, aBlock);
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_10002C9C8(v36, a3, aBlock);
    _os_log_impl(&_mh_execute_header, v17, v18, "[%s] %s - %s", v20, 0x20u);
    swift_arrayDestroy();
    v9 = v35;

    a2 = v36;

    v25 = v33;
  }

  else
  {

    v25 = ObjectType;
  }

  v26 = *&v4[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
  v27 = swift_allocObject();
  v27[2] = v4;
  v27[3] = a2;
  v27[4] = a3;
  v27[5] = a1;
  v27[6] = v25;
  aBlock[4] = sub_1003972BC;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004D0980;
  v28 = _Block_copy(aBlock);

  v29 = v26;
  v30 = v4;
  v31 = v37;
  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_1000049C0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v10 + 8))(v12, v9);
  (*(v39 + 8))(v31, v38);

  return result;
}

id sub_100395F08(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_100537500 == -1)
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
  sub_100015AFC(v10, qword_100537508);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v14 = 136315394;
    v17 = _typeName(_:qualified:)();
    v19 = sub_10002C9C8(v17, v18, &v23);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2114;
    *(v14 + 14) = v11;
    *v15 = v11;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%s] Dismissing banner: %{public}@", v14, 0x16u);
    sub_1001E4048(v15);

    sub_100026A44(v16);
  }

  return [*(v2 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_bannerCenter) dismissAllBannerRequests];
}

uint64_t sub_1003961B4(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v15)
  {
    v15 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_ongoingNotifications;
    swift_beginAccess();
    v9 = *(v4 + v15);

    a1 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v15) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v9 = sub_10039719C(0, *(v9 + 16) + 1, 1, v9);
  *(v4 + v15) = v9;
LABEL_3:
  v18 = *(v9 + 16);
  v17 = *(v9 + 24);
  if (v18 >= v17 >> 1)
  {
    v9 = sub_10039719C((v17 > 1), v18 + 1, 1, v9);
  }

  *(v9 + 16) = v18 + 1;
  v19 = (v9 + 32 * v18);
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a3;
  v19[7] = a4;
  *(v4 + v15) = v9;
  return swift_endAccess();
}

void sub_1003963A0(void *a1)
{
  v27 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_ongoingNotifications;
    swift_beginAccess();
    v9 = *(v1 + v8);
    v10 = *(v9 + 16);
    v28 = v9;

    v26 = v10;
    if (!v10)
    {
LABEL_13:

      return;
    }

    v11 = 0;
    v12 = v28 + 56;
    while (v11 < *(v28 + 16))
    {
      v13 = *(v12 - 24);
      v25[1] = *(v12 - 8);
      v14 = v13;

      v15 = [v14 identifier];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = [v27 identifier];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      if (v16 == v20 && v18 == v22)
      {

        goto LABEL_13;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        ++v11;

        v12 += 32;
        if (v26 != v11)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100396644(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_ongoingNotifications;
    swift_beginAccess();
    v10 = *(v2 + v9);
    v11 = *(v10 + 16);

    v19 = v11;
    if (!v11)
    {
LABEL_7:

      return;
    }

    v13 = 0;
    v14 = v10 + 56;
    while (v13 < *(v10 + 16))
    {
      v15 = *(v14 - 16);
      v22[0] = v20;
      v22[1] = v21;
      __chkstk_darwin(v12);
      *(&v18 - 2) = v22;
      v17 = v16;

      if ((sub_1001E5604(sub_10001BDAC, (&v18 - 4), v15) & 1) == 0)
      {

        ++v13;
        v14 += 32;
        if (v19 != v13)
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100396894(void *a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  sub_1003963A0(a1);
  if (v9)
  {
    v10 = v9;
    v11 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_notificationCenter);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v11 removePendingNotificationRequestsWithIdentifiers:isa];

    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
    [v11 removeDeliveredNotificationsWithIdentifiers:v13.super.isa];

    goto LABEL_7;
  }

  if (qword_100537500 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v14 = type metadata accessor for Logger();
  sub_100015AFC(v14, qword_100537508);
  v15 = a1;
  v13.super.isa = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13.super.isa, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v17 = 136315394;
    v20 = _typeName(_:qualified:)();
    v22 = sub_10002C9C8(v20, v21, &v25);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v15;
    *v18 = v15;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v13.super.isa, v16, "[%s] Received request to dismiss notifications for unknown request: %@", v17, 0x16u);
    sub_1001E4048(v18);

    sub_100026A44(v19);
  }

LABEL_7:
}

void sub_100396BA8(void *a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v48 = a1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v42[1] = ObjectType;
  v11 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_ongoingNotifications;
  swift_beginAccess();
  v43 = v11;
  v44 = v3;
  v12 = *(*(v3 + v11) + 16);

  v46 = v12;
  if (!v12)
  {
LABEL_11:

    if (qword_100537500 == -1)
    {
LABEL_12:
      v27 = type metadata accessor for Logger();
      sub_100015AFC(v27, qword_100537508);
      v28 = v48;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v49[0] = v33;
        *v31 = 136315394;
        v34 = _typeName(_:qualified:)();
        v36 = sub_10002C9C8(v34, v35, v49);

        *(v31 + 4) = v36;
        *(v31 + 12) = 2112;
        *(v31 + 14) = v28;
        *v32 = v28;
        v37 = v28;
        _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Received request to dismiss notifications for unknown request: %@", v31, 0x16u);
        sub_1001E4048(v32);

        sub_100026A44(v33);
      }

LABEL_17:

      return;
    }

LABEL_20:
    swift_once();
    goto LABEL_12;
  }

  v14 = 0;
  v15 = 56;
  v47 = v13;
  while (1)
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v16 = *(v13 + v15 - 24);

    v17 = [v16 identifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = [v48 identifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v18 == v22 && v20 == v24)
    {
      break;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      goto LABEL_15;
    }

    ++v14;
    v15 += 32;
    v13 = v47;
    if (v46 == v14)
    {
      goto LABEL_11;
    }
  }

LABEL_15:

  v38 = *(v44 + v43);
  if (v14 < *(v38 + 16))
  {
    v39 = v38 + v15;
    v40 = *(v39 - 8);
    v41 = *(v39 - 24);

    v40(v45);
    swift_beginAccess();
    v29 = sub_1003970FC(v14);
    swift_endAccess();

    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_100397060(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1003970AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003970FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1003972A8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 32 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 64), 32 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

char *sub_10039719C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_100528EB8, &qword_10045BA00);
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

void sub_1003972BC()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  sub_100396644(v1, v3);
  if (v4)
  {
    v5 = v4;
    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100015AFC(v6, qword_100537508);
    v7 = v5;

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v10 = 136315650;
      v12 = _typeName(_:qualified:)();
      v23 = v9;
      v14 = v2;
      v15 = sub_10002C9C8(v12, v13, &v26);

      *(v10 + 4) = v15;
      v2 = v14;
      *(v10 + 12) = 2048;
      *(v10 + 14) = v14;
      *(v10 + 22) = 2112;
      *(v10 + 24) = v7;
      *v11 = v5;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v8, v23, "[%s] Received notification response: %ld for join request: %@", v10, 0x20u);
      sub_1001E4048(v11);

      sub_100026A44(v24);
    }

    sub_100396894(v7);
    sub_100396BA8(v7, v2);
  }

  else
  {
    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100015AFC(v17, qword_100537508);

    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v19 = 136315394;
      v20 = _typeName(_:qualified:)();
      v22 = sub_10002C9C8(v20, v21, &v26);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_10002C9C8(v1, v3, &v26);
      _os_log_impl(&_mh_execute_header, oslog, v18, "[%s] Received response from unknown notification: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
    }
  }
}

void sub_100397690()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v0 + 24);
    v55 = *(v1 + 16);
    oslog = *(v1 + 8);

    v4 = v2;
    v5 = [v4 identifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = [v3 identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        if (qword_100537500 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_100015AFC(v15, qword_100537508);
        v16 = v4;
        v17 = oslog;

        v18 = v3;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *v21 = 136315650;
          v22 = _typeName(_:qualified:)();
          v24 = sub_10002C9C8(v22, v23, &v59);

          *(v21 + 4) = v24;
          *(v21 + 12) = 2082;
          v25 = [v16 identifier];
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          oslogb = v17;
          v28 = v27;

          v29 = sub_10002C9C8(v26, v28, &v59);

          *(v21 + 14) = v29;
          *(v21 + 22) = 2082;
          v30 = [v18 identifier];
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          v34 = sub_10002C9C8(v31, v33, &v59);

          *(v21 + 24) = v34;
          _os_log_impl(&_mh_execute_header, v19, v20, "[%s] Got dismiss event for different session. Current: %{public}s, received: %{public}s. Ignoring", v21, 0x20u);
          swift_arrayDestroy();

          return;
        }

        goto LABEL_21;
      }
    }

    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100015AFC(v42, qword_100537508);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v59 = v46;
      *v45 = 136315138;
      v47 = _typeName(_:qualified:)();
      v49 = sub_10002C9C8(v47, v48, &v59);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%s] Got dismiss event from GroupSessionNearby", v45, 0xCu);
      sub_100026A44(v46);
    }

    v50 = [v4 identifier];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    sub_100391EF0(v51, v53);

    v55(v54);

LABEL_21:

    return;
  }

  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100015AFC(v35, qword_100537508);
  osloga = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(osloga, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v59 = v38;
    *v37 = 136315138;
    v39 = _typeName(_:qualified:)();
    v41 = sub_10002C9C8(v39, v40, &v59);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, osloga, v36, "[%s] Got dismiss event without discovered session context. Ignoring", v37, 0xCu);
    sub_100026A44(v38);
  }

  else
  {
  }
}

void sub_100397CD4()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = (v0 + v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v4);

  sub_1003940A4(v5, v6, v0 + v2, v8, v9, v10);
}

void sub_100397D78()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_suppressBanners;
  if (*(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_suppressBanners) == 1)
  {
    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100015AFC(v3, qword_100537508);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      v8 = _typeName(_:qualified:)();
      v10 = sub_10002C9C8(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%s] End banner suppression.", v6, 0xCu);
      sub_100026A44(v7);
    }

    *(v1 + v2) = 0;
  }
}

void sub_100397EE4(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  sub_100394C7C(a1, v1 + v4, v9, v10, v8);
}

void sub_100397F90()
{
  v1 = *(v0 + 16);
  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100537508);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10002C9C8(v9, v10, &v13);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s] Dismissing join request: %@", v6, 0x16u);
    sub_1001E4048(v7);

    sub_100026A44(v8);
  }

  sub_100396894(v3);
  sub_100396BA8(v3, 1);
}

uint64_t sub_10039814C()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100450890;
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;
  *(v8 + 48) = v5;
  *(v8 + 56) = v4;

  sub_1003961B4(v1, v8, v7, v6);
}

void sub_100398224(uint64_t a1, const char *a2, ...)
{
  v3 = *(v2 + 16);
  if (a1)
  {
    swift_errorRetain();
    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100015AFC(v5, qword_100537508);
    swift_errorRetain();
    v6 = v3;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v9 = 136315650;
      v12 = _typeName(_:qualified:)();
      v14 = sub_10002C9C8(v12, v13, &v28);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2114;
      *(v9 + 14) = v6;
      *v10 = v6;
      *(v9 + 22) = 2114;
      swift_errorRetain();
      v15 = v6;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 24) = v16;
      v10[1] = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, a2, v9, 0x20u);
      sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
      swift_arrayDestroy();

      sub_100026A44(v11);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100015AFC(v17, qword_100537508);
    v18 = v3;
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v20 = 136315394;
      v23 = _typeName(_:qualified:)();
      v25 = sub_10002C9C8(v23, v24, &v28);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2114;
      *(v20 + 14) = v18;
      *v21 = v18;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, oslog, v19, "[%s] Added notification with request: %{public}@", v20, 0x16u);
      sub_1001E4048(v21);

      sub_100026A44(v22);
    }

    else
    {
    }
  }
}

void sub_1003985EC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }
}

uint64_t sub_100398640(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

id sub_1003986B8(id result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;
    v4 = a2;

    return v5;
  }

  return result;
}

void sub_10039870C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_suppressBanners;
  if (*(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_suppressBanners) == 1)
  {
    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100015AFC(v4, qword_100537508);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      v9 = _typeName(_:qualified:)();
      v11 = sub_10002C9C8(v9, v10, &v18);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%s] End banner suppression.", v7, 0xCu);
      sub_100026A44(v8);
    }

    *(v1 + v3) = 0;
  }

  v12 = (v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext);
  v13 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext);
  if (v13)
  {
    v15 = v12[2];
    v14 = v12[3];
    v16 = v12[1];
    sub_1003986B8(*(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext), v16, v15, v14);
    v17 = v16;
    sub_1003985EC(v13, v16, v15, v14);
    if (v16)
    {

      if (v2 == v17)
      {
        sub_100395F08(v2);
      }
    }
  }

  sub_100004E7C();
}

unint64_t sub_1003988F0()
{
  v1 = *(v0 + 16);
  sub_1001BC5A8(&unk_100521B40, &unk_10044ED80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100450890;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = kMREventNearbyNotificationTypeInAppBanner;
  *(inited + 40) = v4;
  *(inited + 48) = v3;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v5;
  v6 = v3;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithUnsignedChar:{objc_msgSend(v1, "routeType")}];
  v7 = sub_1001D5788(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_1005228F0, &unk_100450070);
  swift_arrayDestroy();
  return v7;
}

void sub_1003989FC()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = &selRef_entitlements;
  v6 = [v2 hostInfo];
  v7 = [v6 isInAppBannerAllowed];

  if (v7)
  {
    v77 = v4;
    v78 = v3;
    v8 = v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext;
    v9 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext);
    v10 = &selRef_entitlements;
    v79 = v2;
    if (v9)
    {
      v11 = *(v8 + 8);
      v12 = qword_100537500;
      v13 = v9;
      v14 = v11;

      if (v12 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100015AFC(v15, qword_100537508);
      v16 = v13;
      v17 = v14;

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v76 = v17;
        aBlock[0] = swift_slowAlloc();
        *v20 = 136315394;
        v21 = _typeName(_:qualified:)();
        v23 = sub_10002C9C8(v21, v22, aBlock);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2082;
        v24 = [v16 identifier];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = v25;
        v10 = &selRef_entitlements;
        v29 = sub_10002C9C8(v28, v27, aBlock);

        *(v20 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v18, v19, "[%s] Cancelling sessionID: %{public}s because of new request", v20, 0x16u);
        swift_arrayDestroy();
      }

      v2 = v79;
      v30 = [v16 v10[254]];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      sub_100391EF0(v31, v33);

      v5 = &selRef_entitlements;
    }

    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100015AFC(v34, qword_100537508);
    v35 = v2;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v38 = 136315394;
      v39 = _typeName(_:qualified:)();
      v41 = sub_10002C9C8(v39, v40, aBlock);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2082;
      v42 = [v35 v10[254]];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = sub_10002C9C8(v43, v45, aBlock);

      *(v38 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v36, v37, "[%s] Displaying for session: %{public}s", v38, 0x16u);
      swift_arrayDestroy();

      v5 = &selRef_entitlements;
    }

    v47 = [v35 v5[228]];
    v48 = [v47 displayName];

    if (!v48)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = String._bridgeToObjectiveC()();
    }

    v49 = [v35 v5[228]];
    v50 = [v49 routeType];

    v51 = [objc_opt_self() requestWithBundleIdentifierAffinity:0 hostDisplayName:v48 routeType:v50];
    v52 = *v8;
    v53 = *(v8 + 8);
    v54 = *(v8 + 16);
    v55 = *(v8 + 24);
    *v8 = v35;
    *(v8 + 8) = v51;
    *(v8 + 16) = v77;
    *(v8 + 24) = v78;
    v56 = v35;
    v57 = v51;

    sub_1003985EC(v52, v53, v54, v55);
    sub_100004E7C();

    v2 = v79;
  }

  v58 = [objc_opt_self() currentSettings];
  if (v58)
  {
    v59 = v58;
    v60 = [v58 groupSessionNearbyLockscreen];

    if (v60)
    {
      v61 = [v2 v5[228]];
      v62 = [v61 isLockScreenAffordanceAllowed];

      if (v62)
      {
        if (qword_100537500 != -1)
        {
          swift_once();
        }

        v63 = type metadata accessor for Logger();
        sub_100015AFC(v63, qword_100537508);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          aBlock[0] = v67;
          *v66 = 136315138;
          v68 = _typeName(_:qualified:)();
          v70 = sub_10002C9C8(v68, v69, aBlock);

          *(v66 + 4) = v70;
          _os_log_impl(&_mh_execute_header, v64, v65, "[%s] Acquiring GroupSessionNearby assertion", v66, 0xCu);
          sub_100026A44(v67);
        }

        [sub_100390E04() acquireGroupSessionNearbyAssertionForSession:v2];
        swift_unknownObjectRelease();
        v71 = kMREventGroupSessionNearbyNotificationDisplayed;
        v72 = swift_allocObject();
        *(v72 + 16) = v2;
        aBlock[4] = sub_1003991B4;
        aBlock[5] = v72;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001CDC04;
        aBlock[3] = &unk_1004D0DB8;
        v73 = _Block_copy(aBlock);
        v74 = v2;
        v75 = v71;

        MRAnalyticsSendEvent();
        _Block_release(v73);
      }
    }
  }

  else
  {
    __break(1u);
  }
}