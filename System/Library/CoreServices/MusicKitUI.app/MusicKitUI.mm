void sub_100001A60()
{
  v1 = v0;
  v29 = type metadata accessor for ClientInfo.API();
  sub_1000056AC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100005710();
  v7 = v6 - v5;
  v28 = type metadata accessor for ClientInfo();
  v8 = *(v28 - 8);
  __chkstk_darwin(v28);
  sub_100005710();
  v11 = v10 - v9;
  v12 = OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_options;
  v13 = type metadata accessor for MusicSubscriptionOffer.Options();
  sub_10000400C(v1 + v12, 1, 1, v13);
  *(v1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_loadedMarketingItem) = 0;
  *(v1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_marketingItemContinuations) = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v1 + v14) = UnfairLock.init()();
  v15 = (v1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_clientIdentifier);
  static ClientInfo.default.getter();
  ClientInfo.api.getter();
  v16 = *(v8 + 8);
  v16(v11, v28);
  v17 = ClientInfo.API.identifier.getter();
  v19 = v18;
  v20 = *(v3 + 8);
  v20(v7, v29);
  *v15 = v17;
  v15[1] = v19;
  v21 = (v1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_clientVersion);
  static ClientInfo.default.getter();
  ClientInfo.api.getter();
  v16(v11, v28);
  v22 = ClientInfo.API.version.getter();
  v24 = v23;
  v20(v7, v29);
  *v21 = v22;
  v21[1] = v24;
  v25 = (v1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_serviceType);
  *v25 = 0x636973756DLL;
  v25[1] = 0xE500000000000000;
  if (qword_100025828 != -1)
  {
    swift_once();
  }

  v26 = qword_100026710;
  *(v1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_bag) = qword_100026710;
  v27 = v26;
  sub_10000575C();
}

uint64_t sub_100001D20(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100001D40, 0, 0);
}

uint64_t sub_100001D40()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = sub_1000044BC(&qword_1000259D8, &qword_1000179A8);
  *v1 = v0;
  v1[1] = sub_100001E2C;
  v3 = v0[2];
  v4 = v0[3];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0x6E6974656B72616DLL, 0xED00006D65744967, sub_100005290, v4, v2);
}

uint64_t sub_100001E2C()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100001F60, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_100001F78(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000044BC(&qword_1000259D8, &qword_1000179A8);
  __chkstk_darwin(v2 - 8);
  UnfairLock.locked<A>(_:)();
}

void sub_100002098(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = *(a1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_loadedMarketingItem);
  if (v3)
  {
    v4 = *a2;
    *a2 = v3;
    v5 = v3;
  }

  else
  {
    v8 = OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_marketingItemContinuations;
    sub_100004724();
    v9 = *(*(a1 + v8) + 16);
    sub_100004770(v9);
    v10 = *(a1 + v8);
    *(v10 + 16) = v9 + 1;
    v11 = sub_1000044BC(&qword_1000259E0, &qword_1000179B0);
    (*(*(v11 - 8) + 16))(v10 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)) + *(*(v11 - 8) + 72) * v9, a3, v11);
    *(a1 + v8) = v10;
  }
}

uint64_t sub_10000221C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for MusicSubscriptionOffer.Options();
  (*(*(v7 - 8) + 16))(v6, a2, v7);
  sub_10000400C(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_options;
  swift_beginAccess();
  sub_100005220(v6, a1 + v8);
  return swift_endAccess();
}

void sub_100002330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a3;
  v93 = a2;
  v96 = a1;
  type metadata accessor for MusicSubscriptionOffer.Options();
  sub_1000056AC();
  v94 = v5;
  v95 = v4;
  v6 = __chkstk_darwin(v4);
  v92 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v85 = &v85 - v9;
  v90 = v10;
  __chkstk_darwin(v8);
  v86 = &v85 - v11;
  v12 = type metadata accessor for MusicSubscriptionOffer.MessageIdentifier();
  sub_1000056AC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100005710();
  v18 = v17 - v16;
  v19 = *(v3 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_bag);
  v87 = *(v3 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_clientVersion);
  v89 = v19;

  MusicSubscriptionOffer.Options.messageIdentifier.getter();
  sub_100002BA8();
  (*(v14 + 8))(v18, v12);
  v91 = v3;
  v20 = objc_allocWithZone(AMSMarketingItemTask);

  v21 = String._bridgeToObjectiveC()();

  v22 = String._bridgeToObjectiveC()();

  v23 = v88;
  v24 = String._bridgeToObjectiveC()();

  v25 = String._bridgeToObjectiveC()();

  v26 = v89;
  v27 = [v20 initWithBag:v89 clientIdentifier:v21 clientVersion:v22 placement:v24 serviceType:v25];

  v28 = v96;
  v29 = [objc_opt_self() ams_sharedAccountStore];
  v30 = [v29 ams_activeiTunesAccount];

  [v27 setAccount:v30];
  v31 = sub_100002E08();
  v32 = sub_10000317C(v31);

  sub_100004EB4(v32, v27);
  if (v23)
  {
    if (qword_100025820 != -1)
    {
      sub_10000568C(&qword_100025820);
    }

    v33 = type metadata accessor for Logger();
    sub_100004504(v33, qword_1000266F8);
    v35 = v94;
    v34 = v95;
    v36 = *(v94 + 16);
    v89 = ((v94 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v37 = v86;
    v38 = v36;
    v36(v86, v28, v95);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v87 = v27;
      v42 = v41;
      v43 = v37;
      v44 = v34;
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v42 = 136446466;
      sub_1000056C0();
      sub_1000051BC(v46, v47, &protocol conformance descriptor for MusicSubscriptionOffer.Options);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v94 + 8))(v43, v44);
      v51 = sub_100014AE4(v48, v50, aBlock);
      v35 = v94;

      *(v42 + 4) = v51;
      *(v42 + 12) = 2082;
      v52 = v93;
      *(v42 + 14) = sub_100014AE4(v93, v23, aBlock);
      _os_log_impl(&_mh_execute_header, v39, v40, "Fetching marketing item for options %{public}s on behalf of application with bundle identifier %{public}s.", v42, 0x16u);
      swift_arrayDestroy();
      sub_1000056F8(v45);
      v53 = v42;
      v28 = v96;
      v27 = v87;
      sub_1000056F8(v53);
    }

    else
    {

      (*(v35 + 8))(v37, v34);
      v52 = v93;
    }

    v71 = String._bridgeToObjectiveC()();
    [v27 setOfferHints:v71];

    v72 = v23;
    v73 = v52;
    v56 = v95;
    v58 = v38;
  }

  else
  {
    v54 = v85;
    v87 = v27;
    if (qword_100025820 != -1)
    {
      sub_10000568C(&qword_100025820);
    }

    v55 = type metadata accessor for Logger();
    sub_100004504(v55, qword_1000266F8);
    v57 = v94;
    v56 = v95;
    v58 = *(v94 + 16);
    v89 = ((v94 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v58(v54, v28, v95);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = sub_100005720();
      aBlock[0] = v62;
      *v61 = 136446210;
      sub_1000056C0();
      sub_1000051BC(v63, v64, &protocol conformance descriptor for MusicSubscriptionOffer.Options);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v54;
      v67 = v58;
      v69 = v68;
      (*(v57 + 8))(v66, v56);
      v70 = sub_100014AE4(v65, v69, aBlock);
      v58 = v67;

      *(v61 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v59, v60, "Fetching marketing item for options %{public}s", v61, 0xCu);
      sub_1000047B0(v62);
      sub_1000056F8(v62);
      sub_1000056F8(v61);
    }

    else
    {

      (*(v57 + 8))(v54, v56);
    }

    v72 = 0;
    v73 = v93;
    v35 = v57;
    v28 = v96;
    v27 = v87;
  }

  v74 = [v27 perform];
  v75 = swift_allocObject();
  swift_weakInit();
  v76 = v27;
  v77 = v92;
  v58(v92, v28, v56);
  v78 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v79 = (v90 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v35;
  v82 = v80;
  *(v80 + 16) = v75;
  (*(v81 + 32))(v80 + v78, v77, v56);
  v83 = (v82 + v79);
  *v83 = v73;
  v83[1] = v72;
  aBlock[4] = sub_10000504C;
  aBlock[5] = v82;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000033EC;
  aBlock[3] = &unk_100021000;
  v84 = _Block_copy(aBlock);

  [v74 resultWithCompletion:v84];
  _Block_release(v84);

  sub_10000575C();
}

unint64_t sub_100002BA8()
{
  v1 = v0;
  v2 = 0xD000000000000012;
  v3 = type metadata accessor for MusicSubscriptionOffer.MessageIdentifier();
  sub_1000056AC();
  v5 = v4;
  v7 = __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  (*(v5 + 16))(&v23 - v8, v1, v3);
  static MusicSubscriptionOffer.MessageIdentifier.addMusic.getter();
  sub_1000051BC(&qword_100025A58, &type metadata accessor for MusicSubscriptionOffer.MessageIdentifier, &protocol conformance descriptor for MusicSubscriptionOffer.MessageIdentifier);
  v9 = sub_1000056D8();
  v10 = *(v5 + 8);
  v11 = sub_100005750();
  v10(v11);
  if (v9)
  {
    v12 = sub_100005738();
    v10(v12);
    return 0xD000000000000014;
  }

  else
  {
    static MusicSubscriptionOffer.MessageIdentifier.addToPlaylist.getter();
    v13 = sub_1000056D8();
    v14 = sub_100005750();
    v10(v14);
    if (v13)
    {
      v15 = sub_100005738();
      v10(v15);
      return 0xD000000000000015;
    }

    else
    {
      static MusicSubscriptionOffer.MessageIdentifier.join.getter();
      v16 = sub_1000056D8();
      v17 = sub_100005750();
      v10(v17);
      if (v16)
      {
        v18 = sub_100005738();
        v10(v18);
      }

      else
      {
        static MusicSubscriptionOffer.MessageIdentifier.playMusic.getter();
        v19 = sub_1000056D8();
        v20 = sub_100005750();
        v10(v20);
        v21 = sub_100005738();
        v10(v21);
        if (v19)
        {
          return 0xD000000000000016;
        }
      }
    }
  }

  return v2;
}

void *sub_100002E08()
{
  sub_100005118();
  v0 = Dictionary.init(dictionaryLiteral:)();
  v1 = MusicSubscriptionOffer.Options.itemID.getter();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100015460(v3, v4, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_1000150F4();
    if (v6)
    {
      v7 = swift_isUniquelyReferenced_nonNull_native();
      v33 = v0;
      v8 = *(v0 + 24);
      sub_1000044BC(&qword_100025A28, &qword_1000179E0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v7, v8);
      v0 = v33;
      _NativeDictionary._delete(at:)();
    }
  }

  v9 = *(v0 + 16);
  if (v9)
  {

    sub_100004D7C(0, v9, 0);
    result = sub_10000516C(v0);
    v12 = result;
    v14 = v13;
    v15 = 0;
    v16 = v0 + 64;
    v30 = v13;
    v31 = v9;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v0 + 32))
    {
      v17 = v12 >> 6;
      if ((*(v16 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_30;
      }

      if (*(v0 + 36) != v14)
      {
        goto LABEL_31;
      }

      v32 = v11;

      v18 = String._bridgeToObjectiveC()();

      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_100004D7C((v19 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[3 * v20];
      v21[4] = 1684366707;
      v21[5] = 0xE400000000000000;
      v21[6] = v18;
      v22 = 1 << *(v0 + 32);
      if (v12 >= v22)
      {
        goto LABEL_32;
      }

      v16 = v0 + 64;
      v23 = *(v0 + 64 + 8 * v17);
      if ((v23 & (1 << v12)) == 0)
      {
        goto LABEL_33;
      }

      if (*(v0 + 36) != v14)
      {
        goto LABEL_34;
      }

      v24 = v23 & (-2 << (v12 & 0x3F));
      if (v24)
      {
        v22 = __clz(__rbit64(v24)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v17 << 6;
        v26 = v17 + 1;
        v27 = (v0 + 72 + 8 * v17);
        while (v26 < (v22 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1000051AC(v12, v14, v32 & 1);
            v22 = __clz(__rbit64(v28)) + v25;
            goto LABEL_23;
          }
        }

        result = sub_1000051AC(v12, v14, v32 & 1);
      }

LABEL_23:
      v11 = 0;
      ++v15;
      v12 = v22;
      v14 = v30;
      if (v15 == v31)
      {
        swift_bridgeObjectRelease_n();
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

LABEL_26:

    return sub_100004178(_swiftEmptyArrayStorage);
  }

  return result;
}

unint64_t sub_10000317C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000044BC(&qword_100025A18, &qword_1000179D8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);

    v16 = v15;
    result = sub_100015080(v14, v13);
    v17 = result;
    if (v18)
    {
      v19 = (v2[6] + 16 * result);
      *v19 = v14;
      v19[1] = v13;

      *(v2[7] + 8 * v17) = v16;
      result = swift_unknownObjectRelease();
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v2[6] + 16 * result);
      *v20 = v14;
      v20[1] = v13;
      *(v2[7] + 8 * result) = v16;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100003360(NSObject *a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100003478(a1, a4, v11, a6, a2);
  }

  return result;
}

void sub_1000033EC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_100003478(NSObject *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v70 = a2;
  v10 = sub_1000044BC(&qword_1000259D8, &qword_1000179A8);
  __chkstk_darwin(v10 - 8);
  v72 = &v66 - v11;
  v12 = sub_1000044BC(&qword_1000259E0, &qword_1000179B0);
  sub_1000056AC();
  v73 = v13;
  __chkstk_darwin(v14);
  v16 = &v66 - v15;
  v71 = a5;
  if (a1)
  {
    v17 = qword_100025820;
    v18 = a1;
    if (v17 != -1)
    {
      sub_10000568C(&qword_100025820);
    }

    v19 = type metadata accessor for Logger();
    sub_100004504(v19, qword_1000266F8);
    v20 = v18;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v21, v22))
    {

      goto LABEL_24;
    }

    v23 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = sub_100005720();
    v74 = v70;
    *v23 = 136446466;
    sub_100005744();
    v24 = _typeName(_:qualified:)();
    v26 = sub_100014AE4(v24, v25, &v74);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2114;
    *(v23 + 14) = v20;
    v27 = v69;
    v69->isa = a1;
    v28 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "%{public}s: fetched marketing item %{public}@.", v23, 0x16u);
    sub_1000052B8(v27, &qword_100025A00, &unk_1000179C0);
    sub_1000056F8(v27);
    v29 = v70;
    sub_1000047B0(v70);
    sub_1000056F8(v29);
    sub_1000056F8(v23);

LABEL_6:
LABEL_24:
    __chkstk_darwin(v30);
    *(&v66 - 2) = v6;
    *(&v66 - 1) = a1;
    sub_1000044BC(&qword_1000259E8, &qword_1000179B8);
    UnfairLock.locked<A>(_:)();
    isa = v74[2].isa;
    if (isa)
    {
      v58 = v73 + 16;
      v73 = *(v73 + 16);
      v59 = *(v58 + 64);
      v70 = v74;
      v60 = v74 + ((v59 + 32) & ~v59);
      v61 = *(v58 + 56);
      v62 = (v58 - 8);
      do
      {
        (v73)(v16, v60, v12);
        if (a1)
        {
          v74 = a1;
          sub_1000045AC();
          v63 = a1;
          UncheckedSendableWrapper.init(_:)();
          CheckedContinuation.resume(returning:)();
          (*v62)(v16, v12);
        }

        else
        {
          v64 = v71;
          if (!v71)
          {
            sub_100004558();
            v64 = swift_allocError();
            *v65 = 1;
          }

          v74 = v64;
          swift_errorRetain();
          CheckedContinuation.resume(throwing:)();
          (*v62)(v16, v12);
        }

        v60 += v61;
        isa = (isa - 1);
      }

      while (isa);
    }

    sub_10000575C();
    return;
  }

  if (!a5)
  {
    if (qword_100025820 != -1)
    {
      sub_10000568C(&qword_100025820);
    }

    v50 = type metadata accessor for Logger();
    sub_100004504(v50, qword_1000266F8);

    v28 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v51))
    {
      v52 = swift_slowAlloc();
      v53 = sub_100005720();
      v74 = v53;
      *v52 = 136446210;
      sub_100005744();
      v54 = _typeName(_:qualified:)();
      v56 = sub_100014AE4(v54, v55, &v74);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v28, v51, "%{public}s: failed to load marketing item with unknown error.", v52, 0xCu);
      sub_1000047B0(v53);
      sub_1000056F8(v53);
      sub_1000056F8(v52);
    }

    goto LABEL_6;
  }

  swift_errorRetain();
  if (qword_100025820 != -1)
  {
    sub_10000568C(&qword_100025820);
  }

  v31 = type metadata accessor for Logger();
  sub_100004504(v31, qword_1000266F8);

  swift_errorRetain();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v68 = v33;
    v35 = v34;
    v67 = swift_slowAlloc();
    v69 = sub_100005720();
    v74 = v69;
    *v35 = 136446466;
    sub_100005744();
    v36 = _typeName(_:qualified:)();
    v66 = v32;
    v38 = sub_100014AE4(v36, v37, &v74);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2114;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 14) = v39;
    v32 = v66;
    v40 = v67;
    *v67 = v39;
    _os_log_impl(&_mh_execute_header, v32, v68, "%{public}s: failed to load marketing item with error %{public}@.", v35, 0x16u);
    sub_1000052B8(v40, &qword_100025A00, &unk_1000179C0);
    sub_1000056F8(v40);
    v41 = v69;
    sub_1000047B0(v69);
    sub_1000056F8(v41);
    sub_1000056F8(v35);
  }

  if (!a4)
  {

    goto LABEL_24;
  }

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = sub_100005720();
    v74 = v45;
    *v44 = 136446210;
    sub_100005744();
    v46 = _typeName(_:qualified:)();
    v48 = sub_100014AE4(v46, v47, &v74);

    *(v44 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v42, v43, "%{public}s: fetching marketing item again without a host bundle identifier.", v44, 0xCu);
    sub_1000047B0(v45);
    sub_1000056F8(v45);
    sub_1000056F8(v44);
  }

  sub_100002330(v70, 0, 0);
  sub_10000575C();
}

void sub_100003CB0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_loadedMarketingItem);
  *(a1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_loadedMarketingItem) = a2;
  v6 = a2;

  v7 = *(a1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_marketingItemContinuations);
  *(a1 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_marketingItemContinuations) = _swiftEmptyArrayStorage;
  *a3 = v7;
}

uint64_t sub_100003D18()
{
  sub_1000052B8(v0 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_options, &unk_100025C60, &qword_100017A10);

  return v0;
}

uint64_t sub_100003DCC()
{
  sub_100003D18();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t _s19MarketingItemLoaderCMa(uint64_t a1)
{
  result = qword_1000258A0;
  if (!qword_1000258A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100003E78(uint64_t a1)
{
  sub_100003F48(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100003F48(uint64_t a1)
{
  if (!qword_1000258B0)
  {
    type metadata accessor for MusicSubscriptionOffer.Options();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000258B0);
    }
  }
}

__n128 sub_100003FA0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003FB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003FD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

BOOL sub_100004034(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100020E80, v2);

  return v3 != 0;
}

BOOL sub_100004098@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100004034(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000040CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004088();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_UNKNOWN **sub_1000040F4@<X0>(void *a1@<X8>)
{
  result = sub_10000407C();
  *a1 = result;
  return result;
}

Swift::Int sub_100004124()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100004178(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000044BC(&qword_100025A30, &qword_1000179E8);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_1000047FC(v2, 1, &v4);

  return v4;
}

uint64_t sub_100004234()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100004274(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000042D0(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100004354(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000043D0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100004450@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100004478(a2);
  *a1 = result;
  return result;
}

NSString sub_100004478(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String._bridgeToObjectiveC()();

  return v1;
}

uint64_t sub_1000044BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004504(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100004558()
{
  result = qword_1000259F0;
  if (!qword_1000259F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000259F0);
  }

  return result;
}

unint64_t sub_1000045AC()
{
  result = qword_1000259F8;
  if (!qword_1000259F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000259F8);
  }

  return result;
}

uint64_t sub_1000045F0@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100004638@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100004668(uint64_t a1)
{
  v2 = sub_1000051BC(&qword_100025A98, type metadata accessor for LaunchOptionsKey, &unk_100017C98);
  v3 = sub_1000051BC(&unk_100025AA0, type metadata accessor for LaunchOptionsKey, &unk_100017B08);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void *sub_100004724()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_100010924(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_100004770(void *result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    result = sub_100010924((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1000047B0(void *a1)
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

uint64_t sub_1000047FC(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_100015080(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1000044BC(&qword_100025A38, &qword_1000179F0);
      _NativeDictionary.copy()();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v12) = v10;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_100004ADC(v15, a2 & 1);
  v17 = sub_100015080(v7, v6);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_1000044BC(&qword_100025A40, &qword_1000179F8);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v25._object = 0x8000000100018640;
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v25);
  _print_unlocked<A, B>(_:_:)();
  v26._countAndFlagsBits = 39;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int sub_100004ADC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000044BC(&qword_100025A30, &qword_1000179E8);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

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
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      sub_10000CA78(0, (v33 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v35 & 1) == 0)
    {

      v23 = v22;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    *(*(v7 + 56) + 8 * v27) = v22;
    ++*(v7 + 16);
    v5 = v34;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

char *sub_100004D7C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100004D9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100004D9C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_1000044BC(&qword_100025A48, &qword_100017A00);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_100010BF4(a4 + 32, v8, v10 + 32);
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1000044BC(&qword_100025A50, &qword_100017A08);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_100004EB4(uint64_t a1, void *a2)
{
  sub_1000044BC(&qword_100025A10, &qword_1000179D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setContextInfo:isa];
}

uint64_t sub_100004F44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004F7C()
{
  v1 = type metadata accessor for MusicSubscriptionOffer.Options();
  sub_1000056AC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 16, v4 | 7);
}

uint64_t sub_10000504C(NSObject *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MusicSubscriptionOffer.Options() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_100003360(a1, a2, v7, (v2 + v6), v9, v10);
}

uint64_t sub_100005100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100005118()
{
  result = qword_100025A20;
  if (!qword_100025A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A20);
  }

  return result;
}

uint64_t sub_1000051AC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1000051BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100005220(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000052B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000044BC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s14ContextInfoKeyOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *_s14ContextInfoKeyOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100005408);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100005460(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_100005540()
{
  result = qword_100025A78;
  if (!qword_100025A78)
  {
    sub_1000055A4(&qword_100025A80, qword_100017BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A78);
  }

  return result;
}

uint64_t sub_1000055A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000055F0()
{
  result = qword_100025A88;
  if (!qword_100025A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A88);
  }

  return result;
}

uint64_t sub_10000568C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000056D8()
{

  return dispatch thunk of static Equatable.== infix(_:_:)(v2, v1, v0, v3);
}

uint64_t sub_1000056F8(uint64_t a1)
{
}

uint64_t sub_100005720()
{

  return swift_slowAlloc();
}

id sub_100005774(uint64_t a1, double a2, double a3, double a4, double a5)
{
  _s5ModelCMa(0);
  swift_allocObject();
  *&v5[OBJC_IVAR____TtCVVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer11ArtworkGrid10HostedView_model] = sub_10000F42C(a1, a4, a5);
  v16.receiver = v5;
  v16.super_class = _s10HostedViewCMa();

  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", a2, a3, a4, a5);

  v12 = v11;
  State.init(wrappedValue:)();
  v13 = objc_allocWithZone(sub_1000044BC(&unk_100025B40, "> "));

  v14 = _UIHostingView.init(rootView:)();
  [v12 bounds];
  [v14 setFrame:?];
  [v14 setAutoresizingMask:18];
  [v12 addSubview:v14];

  return v12;
}

uint64_t sub_100005980()
{
  v7.receiver = v0;
  v7.super_class = _s10HostedViewCMa();
  objc_msgSendSuper2(&v7, "layoutSubviews");

  v1 = [v0 frame];
  v3.n128_u64[0] = v2;
  v5.n128_u64[0] = v4;
  sub_10000FB10(v3, v5, v1);
}

id sub_100005A80()
{
  v2.receiver = v0;
  v2.super_class = _s10HostedViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100005AE8(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

id sub_100005B74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer14ViewController_bag;
  if (qword_100025828 != -1)
  {
    sub_10000810C();
    swift_once();
  }

  v4 = qword_100026710;
  *&v1[v3] = qword_100026710;
  *&v1[OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer14ViewController_marketingItemLoader] = a1;
  v7.receiver = v1;
  v7.super_class = _s14ViewControllerCMa();
  v5 = v4;
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

void sub_100005C10()
{
  v1 = OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer14ViewController_bag;
  if (qword_100025828 != -1)
  {
    sub_10000810C();
    swift_once();
  }

  *(v0 + v1) = qword_100026710;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100005CC8()
{
  v1 = sub_1000044BC(&unk_100025C70, &qword_100017D20);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = _s14ViewControllerCMa();
  v11.receiver = v0;
  v11.super_class = v4;
  objc_msgSendSuper2(&v11, "viewDidLoad");
  result = [v0 view];
  if (result)
  {
    v6 = result;
    if (qword_100025830 != -1)
    {
      swift_once();
    }

    [v6 setTintColor:qword_100026718];

    v7 = type metadata accessor for TaskPriority();
    sub_10000400C(v3, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = v0;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;
    sub_100006178(0, 0, v3, &unk_100017D30, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100005E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100005EEC, v6, v5);
}

id sub_100005EEC()
{
  sub_100008100();
  result = [*(v0 + 16) view];
  *(v0 + 48) = result;
  if (result)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_100005FA4;

    return sub_100006450();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100005FA4()
{
  sub_100008100();
  v2 = *v1;
  sub_100008154();
  *v3 = v2;
  v4 = *v1;
  sub_100008154();
  *v5 = v4;
  *(v2 + 64) = v0;

  if (v0)
  {
    v6 = *(v2 + 32);
    v7 = *(v2 + 40);
    v8 = sub_100006110;
  }

  else
  {

    v6 = *(v2 + 32);
    v7 = *(v2 + 40);
    v8 = sub_1000060B4;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1000060B4()
{
  sub_100008100();

  sub_10000813C();

  return v0();
}

uint64_t sub_100006110()
{
  sub_100008100();

  sub_10000813C();

  return v1();
}

uint64_t sub_100006178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000044BC(&unk_100025C70, &qword_100017D20);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  sub_100008098(a3, v21 - v9, &unk_100025C70, &qword_100017D20);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_100007E1C(v10, 1, v11);

  if (v12 == 1)
  {
    sub_1000052B8(v10, &unk_100025C70, &qword_100017D20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1000052B8(a3, &unk_100025C70, &qword_100017D20);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000052B8(a3, &unk_100025C70, &qword_100017D20);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100006450()
{
  sub_100008100();
  v1[6] = v2;
  v1[7] = v0;
  v3 = type metadata accessor for MusicSubscriptionOffer.Options();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  sub_1000044BC(&unk_100025C60, &qword_100017A10);
  v1[11] = swift_task_alloc();
  v4 = sub_1000044BC(&qword_1000259D8, &qword_1000179A8);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v6;
  v1[17] = v5;

  return _swift_task_switch(sub_1000065E0, v6, v5);
}

uint64_t sub_1000065E0()
{
  sub_100008100();
  v0[18] = *(v0[7] + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer14ViewController_marketingItemLoader);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_100006684;
  v2 = v0[14];

  return sub_100001D20(v2);
}

uint64_t sub_100006684(uint64_t a1)
{
  v3 = *v2;
  sub_100008154();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 160) = v1;

  v6 = *(v3 + 136);
  v7 = *(v3 + 128);
  if (v1)
  {
    v8 = sub_100006B00;
  }

  else
  {
    v8 = sub_1000067BC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000067BC()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v7 = v0[7];
  v6 = v0[8];

  UncheckedSendableWrapper.wrapped.getter();
  (*(v4 + 8))(v2, v3);
  v8 = v0[5];
  v9 = [objc_allocWithZone(AMSUIMarketingItemViewController) initWithMarketingItem:v8 bag:*(v7 + OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer14ViewController_bag)];
  v10 = OBJC_IVAR____TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer19MarketingItemLoader_options;
  swift_beginAccess();
  sub_100008098(v1 + v10, v5, &unk_100025C60, &qword_100017A10);
  v11 = sub_100007E1C(v5, 1, v6);
  v12 = v0[11];
  if (v11)
  {
    sub_1000052B8(v0[11], &unk_100025C60, &qword_100017A10);
  }

  else
  {
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];
    (*(v14 + 16))(v13, v0[11], v15);
    sub_1000052B8(v12, &unk_100025C60, &qword_100017A10);
    v16 = MusicSubscriptionOffer.Options.campaignAttributionQueryParameters.getter();
    (*(v14 + 8))(v13, v15);
    if (v16)
    {
      sub_100007E44(v16, v9);
    }
  }

  v18 = v0[6];
  v17 = v0[7];
  v19 = objc_opt_self();
  v20 = v9;
  v21 = [v19 ams_sharedAccountStore];
  v22 = [v21 ams_activeiTunesAccount];

  [v20 setAccount:v22];
  [v20 setDelegate:v17];

  [v17 addChildViewController:v20];
  v23 = v20;
  v24 = [v23 view];
  [v18 bounds];
  [v24 setFrame:?];

  v25 = [v23 view];
  [v25 setAutoresizingMask:18];

  v26 = [v23 view];
  [v18 addSubview:v26];

  [v23 didMoveToParentViewController:v17];

  sub_10000813C();

  return v27();
}

uint64_t sub_100006B00()
{

  type metadata accessor for NetworkConnectivityMonitor();
  static NetworkConnectivityMonitor.shared.getter();
  v1 = dispatch thunk of NetworkConnectivityMonitor.hasNetworkConnectivity.getter();

  sub_100008148();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  if (v1)
  {
    v2 = sub_100008A80();
  }

  else
  {
    v2 = sub_100008930();
  }

  v3 = v2;
  v4 = *(v0 + 56);

  [v4 presentViewController:v3 animated:1 completion:0];

  swift_willThrow();

  sub_10000813C();

  return v5();
}

void sub_100006C64(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100006D3C();
  }
}

void sub_100006CD0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100006D3C();
  }
}

uint64_t sub_100006D3C()
{
  v0 = type metadata accessor for MusicAngel.Client.Action.Identifier();
  sub_1000056AC();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for MusicAngel.Client.Action();
  sub_1000056AC();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v2 + 104))(v5, enum case for MusicAngel.Client.Action.Identifier.dismiss(_:), v0);
  MusicAngel.Client.Action.init(identifier:)();
  v12 = sub_10000F3C4();
  v13 = v12;
  if (v12)
  {
    v12 = sub_100007D94();
  }

  else
  {
    v17[1] = 0;
    v17[2] = 0;
  }

  v17[0] = v13;
  v17[3] = v12;
  v14 = v13;
  MusicAngel.Client.Action.send(from:)();
  (*(v8 + 8))(v11, v6);

  return sub_1000052B8(v17, &qword_100025C50, &qword_100017D18);
}

id sub_100007144(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s14ViewControllerCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100007264(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_allocWithZone(_s10HostedViewCMa());

  return sub_100005774(v11, a1, a2, a3, a4);
}

void sub_100007398(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    v5 = _convertErrorToNSError(_:)();
    v6 = [v5 code];

    if (v6 == 6)
    {
      if (qword_100025820 != -1)
      {
        sub_10000568C(&qword_100025820);
      }

      v7 = type metadata accessor for Logger();
      sub_100004504(v7, qword_1000266F8);
      v8 = v3;
      oslog = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        v11 = sub_100005720();
        aBlock[0] = v11;
        *v10 = 136446210;
        swift_getObjectType();
        v12 = _typeName(_:qualified:)();
        v14 = sub_100014AE4(v12, v13, aBlock);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, oslog, v9, "%{public}s: did finish purchase after user cancelled the flow. Leaving the subscription offer view visible.", v10, 0xCu);
        sub_1000047B0(v11);
        sub_100008120();
        sub_1000056F8(v10);

        return;
      }
    }

    else
    {
      if (qword_100025820 != -1)
      {
        sub_10000568C(&qword_100025820);
      }

      v31 = type metadata accessor for Logger();
      sub_100004504(v31, qword_1000266F8);
      swift_errorRetain();
      v32 = a2;
      v33 = v3;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = sub_100005720();
        v37 = swift_slowAlloc();
        osloga = sub_100005720();
        aBlock[0] = osloga;
        *v36 = 136446722;
        swift_getObjectType();
        v38 = _typeName(_:qualified:)();
        v40 = sub_100014AE4(v38, v39, aBlock);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2114;
        *(v36 + 14) = v32;
        *v37 = a2;
        *(v36 + 22) = 2114;
        swift_errorRetain();
        v41 = v32;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 24) = v42;
        v37[1] = v42;
        _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s: did finish purchase with purchase result: %{public}@, error %{public}@.", v36, 0x20u);
        sub_1000044BC(&qword_100025A00, &unk_1000179C0);
        swift_arrayDestroy();
        sub_1000056F8(v37);
        sub_1000047B0(osloga);
        sub_1000056F8(osloga);
        sub_100008120();
      }

      oslog = sub_100008BD0();
      [v33 presentViewController:oslog animated:1 completion:0];
    }
  }

  else
  {
    if (qword_100025820 != -1)
    {
      sub_10000568C(&qword_100025820);
    }

    v15 = type metadata accessor for Logger();
    sub_100004504(v15, qword_1000266F8);
    v16 = a2;
    v17 = v3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = sub_100005720();
      aBlock[0] = v22;
      *v20 = 136446466;
      swift_getObjectType();
      v23 = _typeName(_:qualified:)();
      v25 = sub_100014AE4(v23, v24, aBlock);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2114;
      *(v20 + 14) = v16;
      *v21 = a2;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s: did finish purchase with purchase result: %{public}@.", v20, 0x16u);
      sub_1000052B8(v21, &qword_100025A00, &unk_1000179C0);
      sub_1000056F8(v21);
      sub_1000047B0(v22);
      sub_1000056F8(v22);
      sub_100008120();
    }

    v27 = [objc_opt_self() sharedStatusController];
    sub_100008148();
    v28 = swift_allocObject();
    *(v28 + 16) = v17;
    aBlock[4] = sub_100007D74;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000033EC;
    aBlock[3] = &unk_100021108;
    v29 = _Block_copy(aBlock);
    v30 = v17;

    [v27 refreshSubscriptionWithCompletionHandler:v29];
    _Block_release(v29);
  }
}

uint64_t sub_10000791C(void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100025820 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100004504(v4, qword_1000266F8);
    swift_errorRetain();
    v5 = a3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v6, v7))
    {

      return sub_100006D3C();
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v8 = 136446466;
    swift_getObjectType();
    v11 = _typeName(_:qualified:)();
    v13 = sub_100014AE4(v11, v12, &v28);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: ICMusicSubscriptionStatusController refresh subscription failed with error %{public}@.", v8, 0x16u);
    sub_1000052B8(v9, &qword_100025A00, &unk_1000179C0);

    sub_1000047B0(v10);
  }

  else
  {
    if (qword_100025820 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100004504(v16, qword_1000266F8);
    v17 = a1;
    v18 = a3;
    v6 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v20 = 136446466;
      swift_getObjectType();
      v23 = _typeName(_:qualified:)();
      v25 = sub_100014AE4(v23, v24, &v28);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2114;
      *(v20 + 14) = v17;
      *v21 = a1;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v6, v19, "%{public}s: ICMusicSubscriptionStatusController refresh subscription succeeded with subscription status: %{public}@.", v20, 0x16u);
      sub_1000052B8(v21, &qword_100025A00, &unk_1000179C0);

      sub_1000047B0(v22);
    }
  }

  return sub_100006D3C();
}

uint64_t sub_100007D40()
{
  sub_100008148();

  return _swift_deallocObject(v1, v2, v3);
}

double sub_100007D7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100007D94()
{
  result = qword_100025C58;
  if (!qword_100025C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100025C58);
  }

  return result;
}

uint64_t sub_100007DD8()
{
  swift_unknownObjectWeakDestroy();
  sub_100008148();

  return _swift_deallocObject(v0, v1, v2);
}

void sub_100007E44(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setCampaignQueryParameters:isa];
}

uint64_t sub_100007EBC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007EFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007FB0;

  return sub_100005E54(a1, v4, v5, v6);
}

uint64_t sub_100007FB0()
{
  sub_100008100();
  v1 = *v0;
  sub_100008154();
  *v2 = v1;

  sub_10000813C();

  return v3();
}

uint64_t sub_100008098(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000044BC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100008120()
{
}

uint64_t sub_100008160(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000081A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100008208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*(a1 + 16) <= 1uLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x4028000000000000;
  }

  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  v7 = sub_1000044BC(&qword_100025C80, &qword_100017DB8);
  return sub_100008284(a1, a2 + *(v7 + 44), a3);
}

uint64_t sub_100008284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v34 = sub_1000044BC(&qword_100025C88, &qword_100017DC0);
  __chkstk_darwin(v34);
  v7 = v33 - v6;
  v8 = sub_1000044BC(&qword_100025C90, &qword_100017DC8);
  __chkstk_darwin(v8);
  v10 = v33 - v9;
  v11 = _s4TileVMa(0);
  v12 = __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v33 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = v33 - v19;
  result = __chkstk_darwin(v18);
  v23 = v33 - v22;
  v24 = *(a1 + 16);
  if (v24 >= 2)
  {
    v25 = type metadata accessor for Artwork();
    v33[2] = a2;
    v26 = v25;
    v27 = *(v25 - 8);
    v33[0] = v7;
    v28 = *(v27 + 16);
    v33[1] = v8;
    v29 = v27 + 16;
    v30 = a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v28(v23, v30, v25);
    *&v23[*(v11 + 20)] = a3;
    v28(v20, v30 + *(v29 + 56), v26);
    *&v20[*(v11 + 20)] = a3;
    sub_1000086B4(v23, v17);
    sub_1000086B4(v20, v14);
    sub_1000086B4(v17, v10);
    v31 = sub_1000044BC(&qword_100025CA8, &qword_100017DD0);
    sub_1000086B4(v14, &v10[*(v31 + 48)]);
    sub_100008770(v14);
    sub_100008770(v17);
    sub_1000087CC(v10, v33[0]);
    swift_storeEnumTagMultiPayload();
    sub_1000088E8(&qword_100025C98, &qword_100025C90, &qword_100017DC8, &protocol conformance descriptor for TupleView<A>);
    sub_100008718();
    _ConditionalContent<>.init(storage:)();
    sub_10000883C(v10);
    sub_100008770(v20);
    return sub_100008770(v23);
  }

  if (v24 == 1)
  {
    v32 = type metadata accessor for Artwork();
    (*(*(v32 - 8) + 16))(v23, a1 + ((*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80)), v32);
    *&v23[*(v11 + 20)] = a3 + a3 + 12.0;
    sub_1000086B4(v23, v7);
    swift_storeEnumTagMultiPayload();
    sub_1000088E8(&qword_100025C98, &qword_100025C90, &qword_100017DC8, &protocol conformance descriptor for TupleView<A>);
    sub_100008718();
    _ConditionalContent<>.init(storage:)();
    return sub_100008770(v23);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000086B4(uint64_t a1, uint64_t a2)
{
  v4 = _s4TileVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100008718()
{
  result = qword_100025CA0;
  if (!qword_100025CA0)
  {
    _s4TileVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025CA0);
  }

  return result;
}

uint64_t sub_100008770(uint64_t a1)
{
  v2 = _s4TileVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000087CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&qword_100025C90, &qword_100017DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000883C(uint64_t a1)
{
  v2 = sub_1000044BC(&qword_100025C90, &qword_100017DC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000088E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000055A4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100008930()
{
  if (qword_100025838 != -1)
  {
    sub_100009008(&qword_100025838);
  }

  sub_100009098();
  sub_100009028(0xD000000000000028, v0, v1, v2, v3, v4, v5, 98);
  sub_1000090A8();
  sub_100009028(19279, 0xE200000000000000, v6, v7, v8, v9, v10, 100);
  sub_100008F48(0, &qword_100025CC0, UIAlertController_ptr);
  v11 = sub_10000904C();
  sub_100008F48(0, &qword_100025CC8, UIAlertAction_ptr);
  sub_1000090D4();
  v12 = swift_allocObject();
  sub_1000090B8(v12);
  v13 = sub_100009074();
  [v11 addAction:v13];

  return v11;
}

id sub_100008A80()
{
  if (qword_100025838 != -1)
  {
    sub_100009008(&qword_100025838);
  }

  sub_100009098();
  sub_100009028(0xD000000000000020, v0, v1, v2, v3, v4, v5, 77);
  sub_1000090A8();
  sub_100009028(19279, 0xE200000000000000, v6, v7, v8, v9, v10, 83);
  sub_100008F48(0, &qword_100025CC0, UIAlertController_ptr);
  v11 = sub_10000904C();
  sub_100008F48(0, &qword_100025CC8, UIAlertAction_ptr);
  sub_1000090D4();
  v12 = swift_allocObject();
  sub_1000090B8(v12);
  v13 = sub_100009074();
  [v11 addAction:v13];

  return v11;
}

id sub_100008BD0()
{
  if (qword_100025838 != -1)
  {
    sub_100009008(&qword_100025838);
  }

  sub_100009098();
  sub_100009028(0xD000000000000022, v0, v1, v2, v3, v4, v5, 70);
  sub_1000090A8();
  sub_100009028(19279, 0xE200000000000000, v6, v7, v8, v9, v10, 76);
  sub_100008F48(0, &qword_100025CC0, UIAlertController_ptr);
  v11 = sub_10000904C();
  sub_100008F48(0, &qword_100025CC8, UIAlertAction_ptr);
  sub_1000090D4();
  v12 = swift_allocObject();
  sub_1000090B8(v12);
  v13 = sub_100009074();
  [v11 addAction:v13];

  return v11;
}

id sub_100008D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = String._bridgeToObjectiveC()();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:a5];

  return v9;
}

id sub_100008DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100008EE0;
  v12[3] = &unk_100021228;
  v9 = _Block_copy(v12);

LABEL_6:
  v10 = [swift_getObjCClassFromMetadata() actionWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

void sub_100008EE0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100008F48(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100008F88()
{

  sub_1000090D4();

  return _swift_deallocObject(v0, v1, v2);
}

double sub_100008FE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100009008(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100009028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0xE000000000000000;

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&a1, *&v10, v8, *&v12, *&a8)._countAndFlagsBits;
}

id sub_10000904C()
{

  return sub_100008D20(v0, v1, 0, 0, 1);
}

id sub_100009074()
{

  return sub_100008DD8(v2, v3, 0, v0, v1);
}

double sub_1000090B8(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;

  return result;
}

double sub_10000910C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0x4028000000000000;
  *(a3 + 16) = 0;
  v6 = sub_1000044BC(&qword_100025CD0, &qword_100017E68);
  sub_10000927C(a1, a2, a3 + *(v6 + 44));
  v7 = static Edge.Set.all.getter();
  v8 = static SafeAreaRegions.all.getter();
  v9 = a3 + *(sub_1000044BC(&qword_100025CD8, &qword_100017E70) + 36);
  *v9 = v8;
  *(v9 + 8) = v7;
  sub_1000044BC(&qword_100025CE0, &qword_100017E78);
  State.wrappedValue.getter();
  sub_10001050C();

  *&v12 = a1;
  *(&v12 + 1) = a2;
  State.wrappedValue.getter();
  sub_10001050C();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v10 = (a3 + *(sub_1000044BC(&qword_100025CE8, &qword_100017E80) + 36));
  *v10 = v12;
  v10[1] = v13;
  result = *&v14;
  v10[2] = v14;
  return result;
}

uint64_t sub_10000927C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v108 = a3;
  v5 = sub_1000044BC(&qword_100025CF0, &qword_100017E88);
  __chkstk_darwin(v5 - 8);
  v7 = &v94 - v6;
  v8 = type metadata accessor for Artwork();
  v113 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1000044BC(&qword_100025CF8, &qword_100017E90);
  __chkstk_darwin(v103);
  v12 = &v94 - v11;
  v104 = sub_1000044BC(&qword_100025D00, &qword_100017E98);
  __chkstk_darwin(v104);
  v101 = &v94 - v13;
  v111 = _s6ColumnVMa(0);
  v14 = __chkstk_darwin(v111);
  v99 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v98 = &v94 - v17;
  v18 = __chkstk_darwin(v16);
  v102 = &v94 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v94 - v21;
  v23 = __chkstk_darwin(v20);
  v100 = &v94 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v94 - v26;
  v28 = __chkstk_darwin(v25);
  v106 = &v94 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v94 - v31;
  __chkstk_darwin(v30);
  v107 = &v94 - v33;
  v112 = a1;
  v115 = a1;
  v116 = a2;
  v110 = a2;
  v109 = sub_1000044BC(&qword_100025CE0, &qword_100017E78);
  State.wrappedValue.getter();
  v34 = *(v114 + 16);

  if (*(v34 + 16) >= 0xFuLL)
  {
    v105 = v8;
    sub_10000A200(1uLL, 5, v34);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v96 = v12;
    if (v41)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v50 = swift_dynamicCastClass();
      if (!v50)
      {
        swift_unknownObjectRelease();
        v50 = _swiftEmptyArrayStorage;
      }

      v51 = v50[2];

      if (__OFSUB__(v42 >> 1, v40))
      {
        goto LABEL_44;
      }

      if (v51 != (v42 >> 1) - v40)
      {
        goto LABEL_45;
      }

      v38 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v12 = v96;
      if (v38)
      {
        goto LABEL_16;
      }

      v38 = _swiftEmptyArrayStorage;
      goto LABEL_15;
    }

    while (1)
    {
      sub_10000A120(v36, v38, v40, v42);
      v38 = v43;
LABEL_15:
      swift_unknownObjectRelease();
LABEL_16:
      if (*(v34 + 16) < 6uLL)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v52 = v111;
      v53 = *(v111 + 24);
      v54 = *(v113 + 16);
      v40 = v34 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
      v95 = *(v113 + 72);
      v113 += 16;
      v97 = v54;
      v54((v32 + v53), v40 + 5 * v95, v105);
      v115 = v112;
      v116 = v110;
      State.wrappedValue.getter();
      v55 = sub_10001044C();

      *v32 = v38;
      *(v32 + 8) = 2;
      *(v32 + *(v52 + 28)) = v55;
      sub_10000A2A8(v32, v107);
      sub_10000A200(6uLL, 10, v34);
      v36 = v56;
      v58 = v57;
      v32 = v59;
      v61 = v60;
      if ((v60 & 1) == 0)
      {
        goto LABEL_18;
      }

      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v63 = swift_dynamicCastClass();
      if (!v63)
      {
        swift_unknownObjectRelease();
        v63 = _swiftEmptyArrayStorage;
      }

      v64 = v63[2];

      if (__OFSUB__(v61 >> 1, v32))
      {
        break;
      }

      if (v64 != (v61 >> 1) - v32)
      {
        goto LABEL_47;
      }

      v42 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v12 = v96;
      v38 = v110;
      if (v42)
      {
        goto LABEL_26;
      }

      v42 = _swiftEmptyArrayStorage;
LABEL_25:
      swift_unknownObjectRelease();
LABEL_26:
      if (!*(v34 + 16))
      {
        goto LABEL_42;
      }

      v65 = v111;
      v97(&v27[*(v111 + 24)], v40, v105);
      v115 = v112;
      v116 = v38;
      State.wrappedValue.getter();
      v66 = sub_10001044C();

      *v27 = v42;
      v27[8] = 1;
      *&v27[*(v65 + 28)] = v66;
      sub_10000A2A8(v27, v106);
      sub_10000A200(0xBuLL, 15, v34);
      v36 = v67;
      v42 = v68;
      v70 = v69;
      v32 = v71;
      if ((v71 & 1) == 0)
      {
        goto LABEL_28;
      }

      v73 = v12;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v74 = swift_dynamicCastClass();
      if (!v74)
      {
        swift_unknownObjectRelease();
        v74 = _swiftEmptyArrayStorage;
      }

      v75 = v74[2];

      if (__OFSUB__(v32 >> 1, v70))
      {
        __break(1u);
LABEL_49:
        swift_unknownObjectRelease();
        v12 = v73;
        v38 = v110;
LABEL_28:
        sub_10000A120(v36, v42, v70, v32);
        v27 = v72;
        goto LABEL_35;
      }

      if (v75 != (v32 >> 1) - v70)
      {
        goto LABEL_49;
      }

      v27 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v12 = v73;
      v38 = v110;
      if (v27)
      {
        goto LABEL_36;
      }

      v27 = _swiftEmptyArrayStorage;
LABEL_35:
      swift_unknownObjectRelease();
LABEL_36:
      if (*(v34 + 16) >= 0xBuLL)
      {
        v76 = v111;
        v97(&v22[*(v111 + 24)], v40 + 10 * v95, v105);

        v115 = v112;
        v116 = v38;
        State.wrappedValue.getter();
        v77 = sub_10001044C();

        *v22 = v27;
        v22[8] = 0;
        *&v22[*(v76 + 28)] = v77;
        v78 = v22;
        v79 = v100;
        sub_10000A2A8(v78, v100);
        v80 = v107;
        v81 = v102;
        sub_10000A30C(v107, v102);
        v82 = v106;
        v83 = v12;
        v84 = v98;
        sub_10000A30C(v106, v98);
        v85 = v99;
        sub_10000A30C(v79, v99);
        v86 = v101;
        sub_10000A30C(v81, v101);
        v87 = sub_1000044BC(&qword_100025D08, &qword_100017EA0);
        sub_10000A30C(v84, v86 + *(v87 + 48));
        sub_10000A30C(v85, v86 + *(v87 + 64));
        sub_10000A370(v85);
        sub_10000A370(v84);
        sub_10000A370(v81);
        sub_10000A3CC(v86, v83);
        swift_storeEnumTagMultiPayload();
        sub_1000088E8(&qword_100025D10, &qword_100025D00, &qword_100017E98, &protocol conformance descriptor for TupleView<A>);
        sub_10000A43C();
        v49 = v108;
        _ConditionalContent<>.init(storage:)();
        sub_1000052B8(v86, &qword_100025D00, &qword_100017E98);
        sub_10000A370(v79);
        sub_10000A370(v82);
        sub_10000A370(v80);
        goto LABEL_39;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      swift_unknownObjectRelease();
      v12 = v96;
    }

    __break(1u);
LABEL_47:
    swift_unknownObjectRelease();
    v12 = v96;
LABEL_18:
    sub_10000A120(v36, v58, v32, v61);
    v42 = v62;
    v38 = v110;
    goto LABEL_25;
  }

  sub_100009DB0(v34, v7);

  if (sub_100007E1C(v7, 1, v8) == 1)
  {
    sub_1000052B8(v7, &qword_100025CF0, &qword_100017E88);
LABEL_8:
    v48 = 1;
    v49 = v108;
    goto LABEL_40;
  }

  v44 = v113;
  (*(v113 + 32))(v10, v7, v8);
  v45 = v112;
  v46 = v110;
  v115 = v112;
  v116 = v110;
  State.wrappedValue.getter();
  v47 = *(v114 + 24);

  if (v47)
  {
    (*(v44 + 8))(v10, v8);
    goto LABEL_8;
  }

  v88 = v111;
  v89 = v102;
  (*(v44 + 16))(v102 + *(v111 + 24), v10, v8);
  v115 = v45;
  v116 = v46;
  State.wrappedValue.getter();
  v90 = sub_10001044C();

  *v89 = _swiftEmptyArrayStorage;
  *(v89 + 8) = 1;
  *(v89 + *(v88 + 28)) = v90;
  sub_10000A30C(v89, v12);
  swift_storeEnumTagMultiPayload();
  sub_1000088E8(&qword_100025D10, &qword_100025D00, &qword_100017E98, &protocol conformance descriptor for TupleView<A>);
  sub_10000A43C();
  v91 = v108;
  _ConditionalContent<>.init(storage:)();
  sub_10000A370(v89);
  v49 = v91;
  (*(v44 + 8))(v10, v8);
LABEL_39:
  v48 = 0;
LABEL_40:
  v92 = sub_1000044BC(&qword_100025D20, &qword_100017EA8);
  return sub_10000400C(v49, v48, 1, v92);
}

uint64_t sub_100009DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Artwork();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_10000400C(a2, v7, 1, v6);
}

uint64_t sub_100009E58(uint64_t a1)
{
  v2 = sub_10000A494(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_10000A4F4(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_10000A734(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_1000051AC(v7, v9, v11 & 1);
  v13 = sub_10000A8F4();
  if (v12)
  {
    sub_1000051AC(v13, v14, v15);
    return 0;
  }

  else
  {
    sub_10000A548(v13, v14, v15, a1);
    v16 = v17;
    v18 = sub_10000A8F4();
    sub_1000051AC(v18, v19, v20);
  }

  return v16;
}

void *sub_100009F1C(uint64_t a1, uint64_t a2)
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

  sub_1000044BC(&qword_100025D38, &qword_100017EB0);
  v4 = *(sub_1000044BC(&qword_1000259E0, &qword_1000179B0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
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

void *sub_10000A024(uint64_t a1, uint64_t a2)
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

  sub_1000044BC(&qword_100025D28, &qword_100018220);
  v4 = *(type metadata accessor for Artwork() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
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

void sub_10000A120(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_10000A024((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      type metadata accessor for Artwork();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_10000A200(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    type metadata accessor for Artwork();

    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_10000A2A8(uint64_t a1, uint64_t a2)
{
  v4 = _s6ColumnVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A30C(uint64_t a1, uint64_t a2)
{
  v4 = _s6ColumnVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A370(uint64_t a1)
{
  v2 = _s6ColumnVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&qword_100025D00, &qword_100017E98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000A43C()
{
  result = qword_100025D18;
  if (!qword_100025D18)
  {
    _s6ColumnVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025D18);
  }

  return result;
}

uint64_t sub_10000A494(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

uint64_t sub_10000A4F4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.endIndex.getter();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

void sub_10000A548(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000A768();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000A768();
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v4 = v13;
      v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v8 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v7 & v8;
        if (((*(a4 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v9 = *(*(a4 + 48) + 8 * v6);
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
          goto LABEL_15;
        }

        v7 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v11 = *(*(a4 + 48) + 8 * v6);

  v12 = v11;
}

uint64_t sub_10000A734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a2 == a5)
      {
        return a1 == a4;
      }

      __break(1u);
    }

    goto LABEL_8;
  }

  if ((a6 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
  }

  a3 = a4;
  a4 = a5;
  return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
}

unint64_t sub_10000A768()
{
  result = qword_100025D30;
  if (!qword_100025D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100025D30);
  }

  return result;
}

unint64_t sub_10000A7B0()
{
  result = qword_100025D40;
  if (!qword_100025D40)
  {
    sub_1000055A4(&qword_100025CE8, &qword_100017E80);
    sub_10000A83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025D40);
  }

  return result;
}

unint64_t sub_10000A83C()
{
  result = qword_100025D48;
  if (!qword_100025D48)
  {
    sub_1000055A4(&qword_100025CD8, &qword_100017E70);
    sub_1000088E8(&qword_100025D50, &qword_100025D58, &qword_100017EB8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025D48);
  }

  return result;
}

uint64_t sub_10000A904(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10000A93C()
{
  _StringGuts.grow(_:)(54);
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v1._object = 0x8000000100018DE0;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + 16));
  v2._object = 0x8000000100018E00;
  v2._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v2);
  v3 = [*(v0 + 32) description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0;
}

uint64_t sub_10000AA30()
{

  return v0;
}

uint64_t sub_10000AA58()
{
  sub_10000AA30();

  return _swift_deallocClassInstance(v0, 40, 7);
}

Swift::Int sub_10000AAB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10000AB60(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10000A934(v2);
  return Hasher._finalize()();
}

double sub_10000ABA0@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;

  return result;
}

unint64_t sub_10000ABE4()
{
  result = qword_100025E20;
  if (!qword_100025E20)
  {
    _s10ConnectionCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025E20);
  }

  return result;
}

uint64_t sub_10000AC38(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

id sub_10000AC5C()
{
  result = [objc_allocWithZone(_s6ServerCMa()) init];
  qword_1000266F0 = result;
  return result;
}

id sub_10000AC8C()
{
  *&v0[OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_listener] = 0;
  v1 = sub_10000AC38(_swiftEmptyArrayStorage);
  v2 = v0;
  if (v1)
  {
    sub_10000CADC(_swiftEmptyArrayStorage);
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  *&v2[OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_connections] = v3;
  v4 = OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v2[v4] = UnfairLock.init()();
  v5 = OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_subscriptionOfferContextMap;
  _s7ContextVMa(0);
  *&v2[v5] = Dictionary.init(dictionaryLiteral:)();
  if (qword_100025820 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100004504(v6, qword_1000266F8);
  v7 = v2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    swift_getObjectType();

    v12 = _typeName(_:qualified:)();
    v14 = sub_100014AE4(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: init.", v10, 0xCu);
    sub_1000047B0(v11);
  }

  else
  {
  }

  v15 = _s6ServerCMa();
  v18.receiver = v7;
  v18.super_class = v15;
  return objc_msgSendSuper2(&v18, "init");
}

uint64_t sub_10000AEE4()
{
  _s6ServerCMa();
  result = sub_10000AF14();
  qword_100025E30 = result;
  return result;
}

uint64_t sub_10000AF14()
{
  sub_100008F48(0, &qword_100025F40, BSMutableServiceInterface_ptr);
  v0 = static MusicAngel.Constants.serviceName.getter();
  v2 = sub_10000B0C8(v0, v1);
  v3 = [objc_opt_self() protocolForProtocol:&OBJC_PROTOCOL____TtP17_MusicKit_SwiftUI25MusicAngelServerInterface_];
  [v2 setServer:v3];

  [v2 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100008F48(0, &qword_100025F48, BSServiceInterface_ptr);
  if (swift_dynamicCast())
  {

    return v8;
  }

  else
  {
    _StringGuts.grow(_:)(53);
    v5._object = 0x8000000100018F70;
    v5._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v5);
    v6._countAndFlagsBits = static MusicAngel.Constants.serviceName.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 0xD00000000000001DLL;
    v7._object = 0x8000000100018F90;
    String.append(_:)(v7);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_10000B0C8(uint64_t a1, uint64_t a2)
{
  v2 = String._bridgeToObjectiveC()();

  v3 = [swift_getObjCClassFromMetadata() interfaceWithIdentifier:v2];

  return v3;
}

uint64_t sub_10000B12C(uint64_t a1)
{
  UnfairLock.assertOwned()();
  if (qword_100025820 != -1)
  {
    sub_10000568C(&qword_100025820);
  }

  v3 = type metadata accessor for Logger();
  sub_100004504(v3, qword_1000266F8);
  v4 = v1;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136446466;
    swift_getObjectType();
    v9 = _typeName(_:qualified:)();
    v11 = sub_100014AE4(v9, v10, v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = sub_10000A93C();
    v14 = sub_100014AE4(v12, v13, v16);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s: adding client with connection: %{public}s.", v7, 0x16u);
    swift_arrayDestroy();
    sub_1000056F8(v8);
    sub_1000056F8(v7);
  }

  swift_beginAccess();

  sub_10000CC90(&v17, a1);
  swift_endAccess();
}

uint64_t sub_10000B314(uint64_t a1)
{
  v3 = sub_1000044BC(&qword_100025F50, &qword_1000184A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23[-1] - v4;
  UnfairLock.assertOwned()();
  if (qword_100025820 != -1)
  {
    sub_10000568C(&qword_100025820);
  }

  v6 = type metadata accessor for Logger();
  sub_100004504(v6, qword_1000266F8);
  v7 = v1;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23[0] = v11;
    *v10 = 136446466;
    swift_getObjectType();
    v12 = _typeName(_:qualified:)();
    v14 = sub_100014AE4(v12, v13, v23);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v15 = sub_10000A93C();
    v17 = sub_100014AE4(v15, v16, v23);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: removing client with connection: %{public}s.", v10, 0x16u);
    swift_arrayDestroy();
    sub_1000056F8(v11);
    sub_1000056F8(v10);
  }

  sub_10000E09C();
  sub_10000D848(a1);
  swift_endAccess();

  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  sub_10000E09C();
  v20 = _s7ContextVMa(0);
  sub_10000400C(v5, 1, 1, v20);

  sub_100012C58(v5, v19, v18);
  return swift_endAccess();
}

void sub_10000B584()
{
  v1 = objc_opt_self();
  static MusicAngel.Constants.machName.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 activateManualDomain:v2];
  swift_unknownObjectRelease();

  if (qword_100025820 != -1)
  {
    sub_10000568C(&qword_100025820);
  }

  v4 = type metadata accessor for Logger();
  sub_100004504(v4, qword_1000266F8);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136446466;
    swift_getObjectType();
    v11 = _typeName(_:qualified:)();
    v13 = sub_100014AE4(v11, v12, &v20);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    v14 = [v1 bootstrapConfiguration];
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: bootstrap configuration %{public}@.", v8, 0x16u);
    sub_1000052B8(v9, &qword_100025A00, &unk_1000179C0);
    sub_1000056F8(v9);
    sub_1000047B0(v10);
    sub_1000056F8(v10);
    sub_1000056F8(v8);
  }

  v15 = sub_100008F48(0, &unk_100025F60, BSServiceConnectionListener_ptr);
  __chkstk_darwin(v15);
  v19[2] = v5;
  v16 = sub_10000B8B4(sub_10000DE0C, v19);
  v17 = *&v5[OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_listener];
  *&v5[OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_listener] = v16;
  v18 = v16;

  if (v18)
  {
    [v18 activate];
  }

  else
  {
    __break(1u);
  }
}

id sub_10000B808(void *a1, uint64_t a2)
{
  static MusicAngel.Constants.machName.getter();
  v4 = String._bridgeToObjectiveC()();

  [a1 setDomain:v4];

  static MusicAngel.Constants.serviceName.getter();
  v5 = String._bridgeToObjectiveC()();

  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

id sub_10000B8B4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v9[4] = sub_10000E098;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000E094;
  v9[3] = &unk_100021410;
  v5 = _Block_copy(v9);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v7 = [ObjCClassFromMetadata listenerWithConfigurator:v5];
  _Block_release(v5);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000B9E4(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  static MusicAngel.Constants.clientIdentifierKey.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [a3 decodeStringForKey:v8];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    _s10ConnectionCMa();
    v13 = swift_allocObject();
    v13[2] = v10;
    v13[3] = v12;
    v13[4] = a2;
    __chkstk_darwin(v13);

    v14 = a2;
    UnfairLock.locked<A>(_:)();

    v15 = swift_allocObject();
    v15[2] = v4;
    v15[3] = v13;
    v15[4] = ObjectType;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_10000C81C;
    *(v16 + 24) = v15;
    aBlock[4] = sub_10000C838;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000E094;
    aBlock[3] = &unk_100021370;
    v17 = _Block_copy(aBlock);
    v18 = v4;

    [v14 configureConnection:v17];
    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      [v14 activate];
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10000BCCC(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v56 = a4;
  v55 = a5;
  v8 = sub_1000044BC(&qword_100025F50, &qword_1000184A0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  v54 = _s7ContextVMa(0);
  v14 = __chkstk_darwin(v54);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  sub_10000B12C(a2);
  v59 = [a3 remoteToken];
  [v59 realToken];
  v19 = v58[0];
  v20 = v58[1];
  v21 = v58[2];
  v22 = v58[3];
  sub_100008F48(0, &qword_100025F58, LSBundleRecord_ptr);
  v23 = v57;
  v24 = sub_10000C180(v19, v20, v21, v22);
  if (v23)
  {
    if (qword_100025820 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100004504(v25, qword_1000266F8);
    v26 = a1;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v58[0] = v30;
      *v29 = 136446210;
      swift_getObjectType();
      v31 = _typeName(_:qualified:)();
      v33 = sub_100014AE4(v31, v32, v58);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s: failed to find host bundle identifier.", v29, 0xCu);
      sub_1000047B0(v30);
    }
  }

  else
  {
    v51 = v24;
    v52 = v18;
    v53 = v16;
    v57 = 0;
    v34 = v11;
    v35 = OBJC_IVAR____TtCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server_subscriptionOfferContextMap;
    swift_beginAccess();
    v37 = v55;
    v36 = v56;
    sub_100013478(v56, v55, *&a1[v35], v13);
    v38 = v54;
    v39 = sub_100007E1C(v13, 1, v54);
    v50 = a1;
    if (v39 == 1)
    {
      sub_1000052B8(v13, &qword_100025F50, &qword_1000184A0);
      _s19MarketingItemLoaderCMa(0);
      swift_allocObject();
      sub_100001A60();
      v40 = v52;
      v52[3] = 0;
      v40[4] = 0;
      v40[2] = v41;
      v42 = *(v38 + 28);
      v43 = type metadata accessor for MusicSubscriptionOffer.Options();
      sub_10000400C(v40 + v42, 1, 1, v43);
      *(v40 + *(v38 + 32)) = 0;
      *v40 = v36;
      v40[1] = v37;
      sub_10000C9F0(v40, v11);
      sub_10000400C(v11, 0, 1, v38);
      swift_bridgeObjectRetain_n();
      sub_100012C58(v11, v36, v37);
    }

    else
    {
      v40 = v52;
      sub_10000DDA8(v13, v52);
    }

    v44 = v38;
    v45 = v53;
    sub_10000C9F0(v40, v53);
    v46 = v51;
    v47 = sub_10000DCE8(v51);
    v49 = v48;

    *(v45 + 24) = v47;
    *(v45 + 32) = v49;
    sub_10000C9F0(v45, v34);
    sub_10000400C(v34, 0, 1, v44);

    sub_100012C58(v34, v56, v37);
    sub_10000DD4C(v40);
    sub_10000DD4C(v45);
    swift_endAccess();
  }
}

id sub_10000C180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:&v9];
  if (v4)
  {
    v5 = v9;
  }

  else
  {
    v6 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

void sub_10000C288(id a1, void *a2, uint64_t a3)
{
  if (qword_100025818 != -1)
  {
    swift_once();
  }

  [a1 setInterface:qword_100025E30];
  [a1 setInterfaceTarget:a2];
  v6 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v6];

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v10[4] = sub_10000C8CC;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100008EE0;
  v10[3] = &unk_1000213C0;
  v8 = _Block_copy(v10);
  v9 = a2;

  [a1 setInvalidationHandler:v8];
  _Block_release(v8);
}

uint64_t sub_10000C478(void *a1, uint64_t a2)
{
  if (qword_100025820 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100004504(v4, qword_1000266F8);
  v5 = a1;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136446466;
    swift_getObjectType();
    v9 = _typeName(_:qualified:)();
    v11 = sub_100014AE4(v9, v10, &v16);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    v12 = sub_10000A93C();
    v14 = sub_100014AE4(v12, v13, &v16);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: client %{public}s invalidated.", v8, 0x16u);
    swift_arrayDestroy();
  }

  return sub_10000B314(a2);
}

uint64_t sub_10000C644(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id sub_10000C72C()
{
  v2.receiver = v0;
  v2.super_class = _s6ServerCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10000C860(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10000C880(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

Swift::Int sub_10000C928(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10000C9AC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10000C9F0(uint64_t a1, uint64_t a2)
{
  v4 = _s7ContextVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000CA54(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000CA78(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100017FB0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_10000CADC(unint64_t a1)
{
  if (sub_10000AC38(a1))
  {
    sub_1000044BC(&qword_100025FD0, &qword_100017FE0);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = sub_10000AC38(a1);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = v2 + 56;
    v7 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_10000CA54(v5, v7 == 0, a1);
      if (v7)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(a1 + 32 + 8 * v5);
      }

      v9 = __OFADD__(v5++, 1);
      if (v9)
      {
        break;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v10 = Hasher._finalize()();
      v11 = ~(-1 << v2[32]);
      while (1)
      {
        v12 = v10 & v11;
        v13 = (v10 & v11) >> 6;
        v14 = *&v6[8 * v13];
        v15 = 1 << (v10 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        v16 = *(*(v2 + 6) + 8 * v12);
        v17 = *(v16 + 16) == *(v8 + 16) && *(v16 + 24) == *(v8 + 24);
        if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_21;
        }

        v10 = v12 + 1;
      }

      *&v6[8 * v13] = v15 | v14;
      *(*(v2 + 6) + 8 * v12) = v8;
      v18 = *(v2 + 2);
      v9 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (v9)
      {
        goto LABEL_24;
      }

      *(v2 + 2) = v19;
LABEL_21:
      if (v5 == v4)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:
  }
}

uint64_t sub_10000CC90(void *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      _s10ConnectionCMa();
      swift_dynamicCast();
      result = 0;
      *a1 = v20;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v15 = sub_10000CEA0(v7, result + 1);
    v16 = *(v15 + 16);
    if (*(v15 + 24) <= v16)
    {
      sub_10000D078(v16 + 1);
    }

    sub_10000D2C4(v17, v15);

    *v3 = v15;
  }

  else
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v12 = v10 & v11;
      if (((*(v6 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
      {
        break;
      }

      v13 = *(*(v6 + 48) + 8 * v12);
      v14 = *(v13 + 16) == *(a2 + 16) && *(v13 + 24) == *(a2 + 24);
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        *a1 = *(*(v6 + 48) + 8 * v12);

        return 0;
      }

      v10 = v12 + 1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;

    sub_10000D368(v19, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v21;
  }

  *a1 = a2;
  return 1;
}

Swift::Int sub_10000CEA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000044BC(&qword_100025FD0, &qword_100017FE0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      _s10ConnectionCMa();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_10000D078(v3 + 1);
      }

      v2 = v15;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_10000D078(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000044BC(&qword_100025FD0, &qword_100017FE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_10000CA78(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
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
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_10000D2C4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_10000D368(Swift::Int result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10000D078(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_10000D618(v6 + 1);
LABEL_10:
      v12 = *v3;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v13 = Hasher._finalize()();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        _s10ConnectionCMa();
        v15 = *(*(v12 + 48) + 8 * a2);
        v16 = *(v15 + 16) == *(result + 16) && *(v15 + 24) == *(result + 24);
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        v13 = a2 + 1;
      }
    }

    sub_10000D4C8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_19:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_10000D4C8()
{
  v1 = v0;
  sub_1000044BC(&qword_100025FD0, &qword_100017FE0);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

Swift::Int sub_10000D618(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000044BC(&qword_100025FD0, &qword_100017FE0);
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10000D848(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    Hasher.init(_seed:)();
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    String.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v12 = v10 & v11;
      if (((*(v4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
      {
        break;
      }

      v13 = *(*(v4 + 48) + 8 * v12);
      v14 = *(v13 + 16) == v8 && *(v13 + 24) == v9;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *v2;
        v18 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10000D4C8();
          v16 = v18;
        }

        v7 = *(*(v16 + 48) + 8 * v12);
        sub_10000DB28(v12);
        *v2 = v18;
        return v7;
      }

      v10 = v12 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v2;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = __CocoaSet.contains(_:)();

  if ((v6 & 1) == 0)
  {

    return 0;
  }

  v7 = sub_10000D9C8(v5, a1);

  return v7;
}

uint64_t sub_10000D9C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  v7 = sub_10000CEA0(v6, v5);
  v18 = v7;
  Hasher.init(_seed:)();
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);

  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v12 = v10 & v11;
    if (((*(v7 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
    {
      break;
    }

    v13 = *(*(v7 + 48) + 8 * v12);
    v14 = *(v13 + 16) == v8 && *(v13 + 24) == v9;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = *(*(v7 + 48) + 8 * v12);
      sub_10000DB28(v12);
      v16 = v8 == *(v15 + 16) && v9 == *(v15 + 24);
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        *v3 = v18;
        return v15;
      }

      __break(1u);
      break;
    }

    v10 = v12 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_10000DB28(unint64_t result)
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
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10000DCE8(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10000DD4C(uint64_t a1)
{
  v2 = _s7ContextVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000DDA8(uint64_t a1, uint64_t a2)
{
  v4 = _s7ContextVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s6ServerC5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s6ServerC5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10000DF74);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10000DFC4()
{
  result = qword_100025FD8;
  if (!qword_100025FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025FD8);
  }

  return result;
}

unint64_t sub_10000E01C()
{
  result = qword_100025FE0;
  if (!qword_100025FE0)
  {
    sub_1000055A4(&qword_100025FE8, qword_100018058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025FE0);
  }

  return result;
}

uint64_t sub_10000E09C()
{

  return swift_beginAccess();
}

uint64_t sub_10000E0D0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Artwork();
    v9 = a1 + *(a3 + 24);

    return sub_100007E1C(v9, a2, v8);
  }
}

void *sub_10000E16C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Artwork();
    v8 = v5 + *(a4 + 24);

    return sub_10000400C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t _s6ColumnVMa(uint64_t a1)
{
  result = qword_1000260A8;
  if (!qword_1000260A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E238(uint64_t a1)
{
  sub_10000E2CC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Artwork();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000E2CC(uint64_t a1)
{
  if (!qword_1000260B8)
  {
    type metadata accessor for Artwork();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1000260B8);
    }
  }
}

uint64_t _s20LargeArtworkPositionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s20LargeArtworkPositionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10000E478);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10000E4BC()
{
  result = qword_1000260F0;
  if (!qword_1000260F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000260F0);
  }

  return result;
}

void *sub_10000E510@<X0>(void *a1@<X8>)
{
  if (*(*v1 + 16))
  {
    static HorizontalAlignment.center.getter();
    sub_10000E770(v1, __src);
  }

  else
  {
    static HorizontalAlignment.center.getter();
    sub_1000044BC(&qword_100025D28, &qword_100018220);
    v3 = type metadata accessor for Artwork();
    v4 = *(v3 - 8);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000180E0;
    v7 = _s6ColumnVMa(0);
    (*(v4 + 16))(v6 + v5, v1 + *(v7 + 24), v3);
  }

  sub_1000044BC(&qword_100026108, &qword_100018210);
  sub_1000044BC(&qword_100026110, &qword_100018218);
  sub_1000088E8(&qword_100026118, &qword_100026108, &qword_100018210, &protocol conformance descriptor for VStack<A>);
  sub_1000088E8(&qword_100026120, &qword_100026110, &qword_100018218, &protocol conformance descriptor for VStack<A>);
  _ConditionalContent<>.init(storage:)();
  return memcpy(a1, __src, 0x49uLL);
}

uint64_t sub_10000E770@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = &unk_100018000;
  if (!*(a1 + 8))
  {
    sub_1000044BC(&qword_100025D28, &qword_100018220);
    v16 = type metadata accessor for Artwork();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v15 = swift_allocObject();
    *(v15 + 1) = xmmword_1000180E0;
    v19 = _s6ColumnVMa(0);
    (*(v17 + 16))(v15 + v18, a1 + *(v19 + 24), v16);
    goto LABEL_11;
  }

  sub_10000A200(0, 2, *a1);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if ((v12 & 1) == 0)
  {
LABEL_3:
    sub_10000A120(v7, v9, v11, v13);
    v15 = v14;
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = _swiftEmptyArrayStorage;
  }

  v21 = v20[2];

  if (__OFSUB__(v13 >> 1, v11))
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v21 != (v13 >> 1) - v11)
  {
LABEL_45:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v15 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = _swiftEmptyArrayStorage;
  }

LABEL_11:
  v22 = _s6ColumnVMa(0);
  v23 = *(a1 + *(v22 + 28));
  if (v4 == 1)
  {
    sub_1000044BC(&qword_100025D28, &qword_100018220);
    v24 = type metadata accessor for Artwork();
    v25 = *(v24 - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 1) = xmmword_1000180E0;
    (*(v25 + 16))(v27 + v26, a1 + *(v22 + 24), v24);
    goto LABEL_33;
  }

  v28 = *a1;
  if (!v4)
  {
    sub_10000A200(0, 2, v28);
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    if (v43)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v54 = swift_dynamicCastClass();
      if (!v54)
      {
        swift_unknownObjectRelease();
        v54 = _swiftEmptyArrayStorage;
      }

      v55 = v54[2];

      if (__OFSUB__(v44 >> 1, v42))
      {
        __break(1u);
      }

      else if (v55 == (v44 >> 1) - v42)
      {
        v27 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v27)
        {
          swift_unknownObjectRelease();
          v27 = _swiftEmptyArrayStorage;
        }

        goto LABEL_33;
      }

      swift_unknownObjectRelease();
    }

    sub_10000A120(v38, v40, v42, v44);
    v27 = v45;
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  sub_10000A200(2uLL, 4, v28);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  if ((v34 & 1) == 0)
  {
    goto LABEL_15;
  }

  v67 = v29;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v46 = swift_dynamicCastClass();
  if (!v46)
  {
    swift_unknownObjectRelease();
    v46 = _swiftEmptyArrayStorage;
  }

  v47 = v46[2];

  if (__OFSUB__(v35 >> 1, v33))
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v47 != (v35 >> 1) - v33)
  {
LABEL_47:
    swift_unknownObjectRelease();
    v5 = &unk_100018000;
    v29 = v67;
LABEL_15:
    sub_10000A120(v31, v29, v33, v35);
    v27 = v36;
    goto LABEL_24;
  }

  v27 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v5 = &unk_100018000;
  if (v27)
  {
    goto LABEL_25;
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_24:
  swift_unknownObjectRelease();
LABEL_25:
  if (v4 == 2)
  {
    sub_1000044BC(&qword_100025D28, &qword_100018220);
    v48 = type metadata accessor for Artwork();
    v49 = *(v48 - 8);
    v50 = v5;
    v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v52 = swift_allocObject();
    *(v52 + 1) = v50[14];
    result = (*(v49 + 16))(v52 + v51, a1 + *(v22 + 24), v48);
    goto LABEL_41;
  }

LABEL_33:
  sub_10000A200(2uLL, 4, *a1);
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  if ((v62 & 1) == 0)
  {
LABEL_34:
    sub_10000A120(v57, v59, v61, v63);
    v52 = v64;
    result = swift_unknownObjectRelease();
    goto LABEL_41;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v65 = swift_dynamicCastClass();
  if (!v65)
  {
    swift_unknownObjectRelease();
    v65 = _swiftEmptyArrayStorage;
  }

  v66 = v65[2];

  if (__OFSUB__(v63 >> 1, v61))
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v66 != (v63 >> 1) - v61)
  {
LABEL_43:
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  v52 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease();
  if (!v52)
  {
    result = swift_unknownObjectRelease();
    v52 = _swiftEmptyArrayStorage;
  }

LABEL_41:
  *a2 = v15;
  a2[1] = v23;
  a2[2] = v27;
  a2[3] = v23;
  a2[4] = v52;
  a2[5] = v23;
  return result;
}

Swift::Int sub_10000EDB0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_10000EE88()
{
  result = qword_100026128;
  if (!qword_100026128)
  {
    sub_1000055A4(&qword_100026130, &unk_100018228);
    sub_1000088E8(&qword_100026118, &qword_100026108, &qword_100018210, &protocol conformance descriptor for VStack<A>);
    sub_1000088E8(&qword_100026120, &qword_100026110, &qword_100018218, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026128);
  }

  return result;
}

uint64_t sub_10000EF7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();

  return sub_100007E1C(a1, a2, v4);
}

uint64_t sub_10000EFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();

  return sub_10000400C(a1, a2, a2, v4);
}

uint64_t _s4TileVMa(uint64_t a1)
{
  result = qword_100026190;
  if (!qword_100026190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F070(uint64_t a1)
{
  result = type metadata accessor for Artwork();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000F100@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Artwork();
  __chkstk_darwin(v3);
  (*(v5 + 16))(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  _s4TileVMa(0);
  ArtworkImage.init(_:width:height:)();
  v6 = (a1 + *(sub_1000044BC(&qword_1000261C8, &qword_100018290) + 36));
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #10.0 }

  *v6 = _Q0;
  result = sub_1000044BC(&qword_1000261D0, &qword_100018298);
  *&v6[*(result + 36)] = 256;
  return result;
}

unint64_t sub_10000F27C()
{
  result = qword_1000261D8;
  if (!qword_1000261D8)
  {
    sub_1000055A4(&qword_1000261C8, &qword_100018290);
    sub_10000F308();
    sub_10000F360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000261D8);
  }

  return result;
}

unint64_t sub_10000F308()
{
  result = qword_1000261E0;
  if (!qword_1000261E0)
  {
    type metadata accessor for ArtworkImage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000261E0);
  }

  return result;
}

unint64_t sub_10000F360()
{
  result = qword_1000261E8;
  if (!qword_1000261E8)
  {
    sub_1000055A4(&qword_1000261D0, &qword_100018298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000261E8);
  }

  return result;
}

id sub_10000F3C4()
{
  result = [v0 _hostedWindowScene];
  if (!result)
  {
    result = [v0 parentViewController];
    if (result)
    {
      v2 = result;
      v3 = sub_10000F3C4();

      return v3;
    }
  }

  return result;
}

double *sub_10000F42C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for CloudMarketingItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObservationRegistrar.init()();
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = (a3 + -24.0 + -24.0) * 0.25;
  v46[2] = 0x65756C6156776172;
  v46[3] = 0xE900000000000073;
  AnyHashable.init<A>(_:)();
  sub_100013414(a1, &v48, v47);
  sub_1000108D0(v47);
  if (!v49)
  {
    sub_100011670(&v48, &qword_100025C50, &qword_100017D18);
    goto LABEL_6;
  }

  sub_1000044BC(&qword_100026360, &qword_100018368);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    if (qword_100025820 != -1)
    {
      sub_10000568C(&qword_100025820);
    }

    v20 = type metadata accessor for Logger();
    sub_100004504(v20, qword_1000266F8);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v47[0] = v24;
      *v23 = 136446466;
      v25 = _typeName(_:qualified:)();
      v27 = sub_100014AE4(v25, v26, v47);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = Dictionary.description.getter();
      v30 = v29;

      v31 = sub_100014AE4(v28, v30, v47);

      *(v23 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "%{public}s: incorrectly formed content view dictionary: %s.", v23, 0x16u);
      swift_arrayDestroy();
      sub_1000056F8(v24);
      sub_1000056F8(v23);
    }

    else
    {
    }

    goto LABEL_15;
  }

  v13 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v47[0] = 0;
  v15 = [v13 dataWithJSONObject:isa options:4 error:v47];

  v16 = v47[0];
  if (!v15)
  {
    v32 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100025820 != -1)
    {
      sub_10000568C(&qword_100025820);
    }

    v33 = type metadata accessor for Logger();
    sub_100004504(v33, qword_1000266F8);

    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v21, v34))
    {

      goto LABEL_16;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v47[0] = v37;
    *v35 = 136446466;
    v38 = _typeName(_:qualified:)();
    v40 = sub_100014AE4(v38, v39, v47);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2114;
    swift_errorRetain();
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 14) = v41;
    *v36 = v41;
    _os_log_impl(&_mh_execute_header, v21, v34, "%{public}s: could not parse artworks with error %{public}@.", v35, 0x16u);
    sub_100011670(v36, &qword_100025A00, &unk_1000179C0);
    sub_1000056F8(v36);
    sub_1000047B0(v37);
    sub_1000056F8(v37);
    sub_1000056F8(v35);

LABEL_15:

LABEL_16:
    v45 = 0;
    v44 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  *v46 = v8;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100010CFC(&qword_100026368, &type metadata accessor for CloudMarketingItem, &protocol conformance descriptor for CloudMarketingItem);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10000FCA0();
  v44 = v43;
  v45 = sub_100010330();

  sub_100010D44(v17, v19);
  (*(v10 + 8))(v12, v9);
LABEL_17:
  *(v4 + 2) = v44;
  *(v4 + 24) = v45;
  return v4;
}

void sub_10000FB10(__n128 a1, __n128 a2, uint64_t a3)
{
  v4 = a2.n128_u64[0];
  v5 = a1.n128_u64[0];
  if (*(v3 + 40) == a1.n128_f64[0] && *(v3 + 48) == a2.n128_f64[0])
  {

    sub_1000104CC(a3, a1.n128_f64[0], a2.n128_f64[0]);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = __chkstk_darwin(KeyPath);
    v9[2] = v3;
    v9[3] = v5;
    v9[4] = v4;
    sub_1000105B4(v8, sub_100010838, v9);
  }
}

void sub_10000FBF0(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = __chkstk_darwin(KeyPath);
    v5[2] = v1;
    *&v5[3] = a1;
    sub_1000105B4(v4, sub_1000108C0, v5);
  }
}

void sub_10000FCA0()
{
  v0 = type metadata accessor for CloudGenericMusicItem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v60 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000044BC(&qword_100026378, &qword_100018378);
  __chkstk_darwin(v3 - 8);
  v5 = v46 - v4;
  v59 = type metadata accessor for Artwork();
  v49 = *(v59 - 8);
  v6 = __chkstk_darwin(v59);
  v48 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v58 = v46 - v8;
  v50 = sub_1000044BC(&qword_100026380, &qword_100018380);
  v9 = *(v50 - 8);
  __chkstk_darwin(v50);
  v11 = v46 - v10;
  v12 = sub_1000044BC(&qword_100026388, &qword_100018388);
  __chkstk_darwin(v12 - 8);
  v14 = v46 - v13;
  v15 = sub_1000044BC(&qword_100026390, &qword_100018390);
  __chkstk_darwin(v15 - 8);
  v17 = v46 - v16;
  CloudMarketingItem.relationships.getter();
  v18 = type metadata accessor for CloudMarketingItem.Relationships();
  if (sub_100007E1C(v14, 1, v18) == 1)
  {
    v19 = &qword_100026388;
    v20 = &qword_100018388;
    v21 = v14;
LABEL_5:
    sub_100011670(v21, v19, v20);
    v23 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  CloudMarketingItem.Relationships.contents.getter();
  (*(*(v18 - 8) + 8))(v14, v18);
  v22 = sub_1000044BC(&qword_1000263A0, &qword_1000183A0);
  if (sub_100007E1C(v17, 1, v22) == 1)
  {
    v19 = &qword_100026390;
    v20 = &qword_100018390;
    v21 = v17;
    goto LABEL_5;
  }

  v23 = CloudResourceCollection.data.getter();
  (*(*(v22 - 8) + 8))(v17, v22);
LABEL_7:
  v24 = v50;
  v25 = v23[2];
  if (v25)
  {
    v55 = v5;
    v56 = v11;
    v26 = v9 + 16;
    v27 = *(v9 + 16);
    v28 = *(v9 + 80);
    v46[1] = v23;
    v29 = v23 + ((v28 + 32) & ~v28);
    v53 = (v1 + 8);
    v54 = v27;
    v30 = (v9 + 8);
    v52 = (v49 + 32);
    v31 = _swiftEmptyArrayStorage;
    v57 = v26;
    v51 = *(v26 + 56);
    v47 = v0;
    do
    {
      v32 = v56;
      v54(v56, v29, v24);
      v33 = v60;
      CloudResource.item.getter();
      v34 = v55;
      CloudGenericMusicItem.artwork.getter();
      (*v53)(v33, v0);
      v35 = sub_1000044BC(&qword_100026398, &qword_100018398);
      if (sub_100007E1C(v34, 1, v35) == 1)
      {
        (*v30)(v32, v24);
        sub_100011670(v34, &qword_100026378, &qword_100018378);
      }

      else
      {
        v36 = v48;
        CloudAttribute<A>.convertToArtwork()();
        (*v30)(v32, v24);
        (*(*(v35 - 8) + 8))(v34, v35);
        v37 = *v52;
        (*v52)(v58, v36, v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_100010A1C(0, *(v31 + 2) + 1, 1, v31);
        }

        v39 = *(v31 + 2);
        v38 = *(v31 + 3);
        if (v39 >= v38 >> 1)
        {
          v31 = sub_100010A1C((v38 > 1), v39 + 1, 1, v31);
        }

        *(v31 + 2) = v39 + 1;
        v37(&v31[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v39], v58, v59);
        v0 = v47;
        v24 = v50;
      }

      v29 += v51;
      --v25;
    }

    while (v25);
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  v65 = v31;
  v40 = *(v31 + 2);
  if (v40)
  {
    sub_10000A200(1uLL, v40, v31);
    v61 = v41;
    v62 = v42;
    v63 = v43;
    v64 = v44;
    sub_10001104C();
    v45 = *(v31 + 2);
    if (v45)
    {
      sub_100011524(v61, v62, v63, v64, 1uLL, v45);
    }

    else
    {
      __break(1u);
    }
  }
}

BOOL sub_100010330()
{
  v0 = sub_1000044BC(&qword_100026370, &qword_100018370);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  CloudMarketingItem.attributes.getter();
  v3 = type metadata accessor for CloudMarketingItem.Attributes();
  if (sub_100007E1C(v2, 1, v3) == 1)
  {
    sub_100011670(v2, &qword_100026370, &qword_100018370);
  }

  else
  {
    v4 = CloudMarketingItem.Attributes.marketingArtwork.getter();
    (*(*(v3 - 8) + 8))(v2, v3);
    if (v4)
    {
      v5 = *(v4 + 16);

      return v5 != 0;
    }
  }

  return 0;
}

double sub_10001044C()
{
  swift_getKeyPath();
  sub_1000116C4();
  v3 = sub_100010CFC(v1, v2, &unk_1000182F8);
  sub_1000116F0(v3, v4, v5);

  return *(v0 + 32);
}

void sub_1000104CC(uint64_t a1, double a2, double a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  sub_10001050C();

  sub_10000FBF0((v4 + -24.0 + -24.0) * 0.25);
}

double sub_10001050C()
{
  swift_getKeyPath();
  sub_1000116C4();
  v3 = sub_100010CFC(v1, v2, &unk_1000182F8);
  sub_1000116F0(v3, v4, v5);

  return *(v0 + 40);
}

void sub_10001058C(unint64_t *a1, __n128 a2, __n128 a3)
{
  a2.n128_u64[0] = *a1;
  a3.n128_u64[0] = a1[1];
  sub_10000FB10(a2, a3, a1);
}

uint64_t sub_1000105B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000116C4();
  sub_100010CFC(v3, v4, &unk_1000182F8);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10001065C()
{

  v1 = OBJC_IVAR____TtCVVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer11ArtworkGrid5Model___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  sub_1000116DC();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t _s5ModelCMa(uint64_t a1)
{
  result = qword_100026220;
  if (!qword_100026220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010748(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

double sub_1000108C0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

void *sub_100010924(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_100009F1C(v8, v7);
  v10 = *(sub_1000044BC(&qword_1000259E0, &qword_1000179B0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_100010B08(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_100010A1C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_10000A024(v8, v7);
  v10 = *(type metadata accessor for Artwork() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_100010C28(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

uint64_t sub_100010B08(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1000044BC(&qword_1000259E0, &qword_1000179B0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_1000044BC(&qword_1000259E0, &qword_1000179B0);

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

char *sub_100010BF4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[24 * a2] <= __dst)
  {
    return memmove(__dst, __src, 24 * a2);
  }

  return __src;
}

uint64_t sub_100010C28(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for Artwork(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for Artwork();

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_100010CFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100010D44(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_100010D9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(*v6 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = __OFSUB__(v13, v10);
  v15 = v13 - v10;
  if (v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v8 + v15;
  if (__OFADD__(v8, v15))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_100010E6C(result, 1);

  return sub_100010ED4(v9, a2, v13, a3, a4, a5, a6);
}

void *sub_100010E6C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_100010A1C(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_100010ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = *v7;
  result = type metadata accessor for Artwork();
  v15 = *(*(result - 8) + 72);
  v16 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = *(*(result - 8) + 80);
  v17 = v12 + ((v14 + 32) & ~v14);
  v18 = v17 + v15 * a1;
  result = swift_arrayDestroy();
  v19 = __OFSUB__(a3, v16);
  v20 = a3 - v16;
  if (v19)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = *(v12 + 16);
  if (__OFSUB__(v21, a2))
  {
    goto LABEL_16;
  }

  result = sub_100010C28(v17 + v15 * a2, v21 - a2, v18 + v15 * a3);
  v22 = *(v12 + 16);
  v19 = __OFADD__(v22, v20);
  v23 = v22 + v20;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v12 + 16) = v23;
LABEL_7:
  if (a3 >= 1)
  {
    if (!__OFSUB__(a7 >> 1, a6))
    {
      if ((a7 >> 1) - a6 == a3)
      {
        swift_arrayInitWithCopy();
        goto LABEL_11;
      }

LABEL_19:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_11:

  return swift_unknownObjectRelease();
}

void sub_10001104C()
{
  v42 = type metadata accessor for Artwork();
  v35 = *(v42 - 8);
  v1 = __chkstk_darwin(v42);
  v39 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v40 = v34 - v3;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = (v4 >> 1) - v5;
  if (__OFSUB__(v4 >> 1, v5))
  {
LABEL_47:
    __break(1u);
    return;
  }

  if (v6 >= 2)
  {
    v34[1] = v35 + 16;
    v7 = v5;
    v38 = (v35 + 40);
    while (1)
    {
      v43 = v7;
      v44 = 0;
      swift_stdlib_random();
      v8 = (v44 * v6) >> 64;
      if (v6 > v44 * v6)
      {
        v9 = -v6 % v6;
        if (v9 > v44 * v6)
        {
          do
          {
            v44 = 0;
            swift_stdlib_random();
          }

          while (v9 > v44 * v6);
          v8 = (v44 * v6) >> 64;
        }
      }

      v10 = v5 + v8;
      v7 = v43;
      if (__OFADD__(v5, v8))
      {
        break;
      }

      if (v5 != v10)
      {
        v11 = v5 >= v43 && v5 < (v4 >> 1);
        if (!v11)
        {
          goto LABEL_43;
        }

        v12 = v4;
        v13 = *(v0 + 8);
        v41 = v4 >> 1;
        v14 = *(v35 + 72);
        v15 = v42;
        v16 = *(v35 + 16);
        v37 = v14 * v5;
        v16(v40, v13 + v14 * v5, v42);
        if (v10 < v43 || v10 >= v41)
        {
          goto LABEL_44;
        }

        v36 = v14 * v10;
        v16(v39, v13 + v14 * v10, v15);
        v18 = *v0;
        v4 = v12;
        if (v12 & 1) != 0 && (isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(), *v0 = v18, (isUniquelyReferenced_nonNull))
        {
          v20 = v38;
          v7 = v43;
          v21 = v41;
        }

        else
        {
          sub_100011370(v18, *(v0 + 8), *(v0 + 16), *(v0 + 24));
          v18 = v22;
          v13 = v23;
          v7 = v24;
          v4 = v25;
          *(v0 + 8) = v23;
          *(v0 + 16) = v24;
          *(v0 + 24) = v25;
          v21 = v25 >> 1;
          v20 = v38;
        }

        if (v5 < v7 || v5 >= v21)
        {
          goto LABEL_45;
        }

        v27 = *v20;
        (*v20)(v13 + v37, v39, v42);
        if ((v4 & 1) == 0)
        {
          sub_100011370(v18, v13, v7, v4);
          v18 = v28;
          v13 = v29;
          v7 = v30;
          *(v0 + 8) = v29;
          *(v0 + 16) = v30;
          *(v0 + 24) = v31;
          v4 = v31;
          v21 = v31 >> 1;
        }

        if (v10 < v7 || v10 >= v21)
        {
          goto LABEL_46;
        }

        v27(v13 + v36, v40, v42);
        *v0 = v18;
      }

      if (__OFADD__(v5++, 1))
      {
        goto LABEL_42;
      }

      v11 = v6-- <= 2;
      if (v11)
      {
        return;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }
}

void sub_100011370(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = sub_10000A024((a4 >> 1) - a3, (a4 >> 1) - a3);
  if (v4 < a3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  type metadata accessor for Artwork();
  swift_arrayInitWithCopy();
  swift_unknownObjectRelease();

  sub_100011460(v7, a3);
}

uint64_t sub_100011460(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = type metadata accessor for Artwork() - 8;
  v4 = *(v3 + 16);
  v5 = __OFADD__(a2, v4);
  v6 = a2 + v4;
  if (v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v6 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100011524(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *v6;
  v10 = *(*v6 + 16);
  if (v10 < a5 || v10 < a6)
  {
    goto LABEL_20;
  }

  if (a6 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = result;
  v16 = type metadata accessor for Artwork();
  v17 = *(v16 - 8);
  result = v16 - 8;
  if (v9 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * a5 != a2 + *(v17 + 72) * a3)
  {
LABEL_13:

    return sub_100010D9C(a5, a6, v15, a2, a3, a4);
  }

  if ((a4 >> 1) < a3)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  if (a5 != a3 || a4 >> 1 != a6)
  {
    goto LABEL_13;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_100011670(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1000044BC(a2, a3);
  sub_1000116DC();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000116F0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return ObservationRegistrar.access<A, B>(_:keyPath:)(va, v3, a1);
}

uint64_t sub_100011710()
{
  v0 = type metadata accessor for Logger();
  sub_100011784(v0, qword_1000266F8);
  sub_100004504(v0, qword_1000266F8);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100011784(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_1000117E8()
{
  sub_10001181C();
  result = sub_100011860();
  qword_100026710 = result;
  return result;
}

unint64_t sub_10001181C()
{
  result = qword_1000263A8;
  if (!qword_1000263A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000263A8);
  }

  return result;
}

id sub_100011860()
{
  v0 = type metadata accessor for ClientInfo.Bag();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ClientInfo();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ClientInfo.default.getter();
  ClientInfo.bag.getter();
  sub_10001181C();
  v8 = ClientInfo.Bag.profile.getter();
  v10 = v9;
  v11 = ClientInfo.Bag.version.getter();
  v13 = sub_100011A14(v8, v10, v11, v12);
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v13;
}

id sub_100011A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();

  v6 = [swift_getObjCClassFromMetadata() bagForProfile:v4 profileVersion:v5];

  return v6;
}

id sub_100011AB8()
{
  v0 = objc_allocWithZone(UIColor);
  result = sub_100011C0C(sub_100011B08, 0);
  qword_100026718 = result;
  return result;
}

uint64_t sub_100011B08()
{
  sub_100011D30();
  result = sub_100011BA8(0x6F43746E65636341, 0xEB00000000726F6CLL);
  if (!result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_100011BA8(uint64_t a1, uint64_t a2)
{
  v2 = String._bridgeToObjectiveC()();

  v3 = [swift_getObjCClassFromMetadata() colorNamed:v2];

  return v3;
}

id sub_100011C0C(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100011CB0;
  v6[3] = &unk_100021580;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider:v3];
  _Block_release(v3);

  return v4;
}

id sub_100011CB0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

double sub_100011D18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100011D30()
{
  result = qword_1000263B0;
  if (!qword_1000263B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000263B0);
  }

  return result;
}

uint64_t sub_100011D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100008F48(0, &qword_100026468, UIViewController_ptr);
  UnfairLock.locked<A>(_:)();
  return v5;
}

void *sub_100011E34()
{
  v1 = *(v0 + OBJC_IVAR____TtCCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server13SceneDelegate_window);
  v2 = v1;
  return v1;
}

void sub_100011ED4(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_1000044BC(&unk_100026450, &qword_1000183E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v10 = type metadata accessor for MusicAngel.Client.Parameters();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    return;
  }

  v18 = v17;
  v19 = a1;
  v20 = [a3 userActivities];
  sub_100008F48(0, &qword_100025D30, NSUserActivity_ptr);
  sub_1000125D8();
  v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = sub_100009E58(v21);

  if (!v22)
  {
    goto LABEL_8;
  }

  v41 = v19;
  v23 = static MusicAngel.Client.UserActivityHandler.clientID(from:)();
  if (!v24)
  {

    goto LABEL_7;
  }

  v25 = v23;
  v26 = v24;
  static MusicAngel.Client.UserActivityHandler.parameters(from:)();
  if (sub_100007E1C(v9, 1, v10) == 1)
  {

    sub_100012640(v9);
LABEL_7:
    v19 = v41;
LABEL_8:
    if (qword_100025820 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100004504(v27, qword_1000266F8);
    v28 = v4;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42 = v32;
      *v31 = 136446210;
      swift_getObjectType();
      v33 = _typeName(_:qualified:)();
      v35 = sub_100014AE4(v33, v34, &v42);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "%{public}s: UIScene.ConnectionOptions don't have userActivity with AngelServiceParameter.", v31, 0xCu);
      sub_1000047B0(v32);
    }

    return;
  }

  (*(v11 + 32))(v16, v9, v10);
  (*(v11 + 16))(v14, v16, v10);
  if ((*(v11 + 88))(v14, v10) == enum case for MusicAngel.Client.Parameters.subscriptionOffer(_:))
  {
    if (qword_100025810 != -1)
    {
      swift_once();
    }

    v36 = sub_100011D74(v25, v26, sub_1000123F8, 0);

    v37 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v36];
    v38 = [objc_allocWithZone(UIWindow) initWithWindowScene:v18];
    v39 = *&v4[OBJC_IVAR____TtCCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server13SceneDelegate_window];
    *&v4[OBJC_IVAR____TtCCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server13SceneDelegate_window] = v38;
    v40 = v38;

    [v40 setRootViewController:v37];
    [v40 makeKeyAndVisible];

    (*(v11 + 8))(v16, v10);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_1000123F8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = objc_allocWithZone(_s14ViewControllerCMa());

  v6 = sub_100005B74(v5);
  v7 = *(_s7ContextVMa(0) + 32);
  v8 = *(a1 + v7);
  v9 = v6;

  *(a1 + v7) = v6;
  *a2 = v9;
}

id sub_10001250C()
{
  *&v0[OBJC_IVAR____TtCCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server13SceneDelegate_window] = 0;
  v2.receiver = v0;
  v2.super_class = _s13SceneDelegateCMa();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100012570()
{
  v2.receiver = v0;
  v2.super_class = _s13SceneDelegateCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000125D8()
{
  result = qword_100026460;
  if (!qword_100026460)
  {
    sub_100008F48(255, &qword_100025D30, NSUserActivity_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026460);
  }

  return result;
}

uint64_t sub_100012640(uint64_t a1)
{
  v2 = sub_1000044BC(&unk_100026450, &qword_1000183E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000126A8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, void (*a5)(uint64_t *__return_ptr, char *)@<X3>, uint64_t a6@<X4>)
{
  result = sub_100012DD8(a2, a3, a4, a5, a6);
  if (!v6)
  {
    *a1 = result;
  }

  return result;
}

id sub_1000126F8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100012754()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000127B0()
{
  type metadata accessor for MusicKitUI_FinalClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100026720 = result;
  return result;
}

uint64_t sub_100012808()
{
  if (qword_100025810 != -1)
  {
    swift_once();
  }

  sub_10000B584();
  return 1;
}

id sub_1000128F0(int a1, id a2)
{
  v2 = [a2 role];
  v3 = objc_allocWithZone(UISceneConfiguration);
  v4 = sub_100012B48(0, 0, v2);
  _s13SceneDelegateCMa();
  [v4 setDelegateClass:swift_getObjCClassFromMetadata()];
  return v4;
}

id sub_1000129F8()
{
  v2.receiver = v0;
  v2.super_class = _s19ApplicationDelegateCMa();
  return objc_msgSendSuper2(&v2, "init");
}

void sub_100012A50()
{
  _s19ApplicationDelegateCMa();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v1) = UIApplicationMain(_:_:_:_:)();

  exit(v1);
}

id sub_100012ADC()
{
  v2.receiver = v0;
  v2.super_class = _s19ApplicationDelegateCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100012B48(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithName:v5 sessionRole:a3];

  return v6;
}

unint64_t sub_100012BB8()
{
  result = qword_100025A98;
  if (!qword_100025A98)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A98);
  }

  return result;
}

Swift::Int sub_100012C20(uint64_t a1)
{
  v1 = Hasher.init(_seed:)();
  sub_100015A2C(v1);
  return Hasher._finalize()();
}

uint64_t sub_100012C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000044BC(&qword_100025F50, &qword_1000184A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  _s7ContextVMa(0);
  sub_1000159B0();
  __chkstk_darwin(v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100007E1C(a1, 1, v14) == 1)
  {
    sub_100015884(a1, &qword_100025F50, &qword_1000184A0);
    sub_10001532C(a2, a3, v10);

    return sub_100015884(v10, &qword_100025F50, &qword_1000184A0);
  }

  else
  {
    sub_10000DDA8(a1, v13);
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_100015A20();
    sub_100015580(v16, v17, v18, v19);

    *v4 = v21;
  }

  return result;
}

uint64_t sub_100012DD8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, char *), uint64_t a5)
{
  swift_beginAccess();
  v8 = sub_10001318C(a2, a3, a4);
  swift_endAccess();
  return v8;
}

uint64_t sub_100012E74(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  swift_beginAccess();
  sub_100012F10(a2, a3, a4);
  return swift_endAccess();
}

uint64_t sub_100012F10(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = v3;
  v31 = a3;
  v7 = sub_1000044BC(&qword_100025F50, &qword_1000184A0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = _s7ContextVMa(0);
  sub_1000159B0();
  v15 = __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = (&v30 - v18);
  sub_100013478(a1, a2, *v4, v12);
  if (sub_100007E1C(v12, 1, v13) == 1)
  {
    sub_100015884(v12, &qword_100025F50, &qword_1000184A0);
    _s19MarketingItemLoaderCMa(0);
    swift_allocObject();
    sub_100001A60();
    v19[3] = 0;
    v19[4] = 0;
    v19[2] = v20;
    v21 = *(v13 + 28);
    v22 = type metadata accessor for MusicSubscriptionOffer.Options();
    sub_10000400C(v19 + v21, 1, 1, v22);
    *(v19 + *(v13 + 32)) = 0;
    *v19 = a1;
    v19[1] = a2;
    sub_10000C9F0(v19, v10);
    sub_10000400C(v10, 0, 1, v13);
    swift_bridgeObjectRetain_n();
    sub_100015A20();
    sub_100012C58(v23, v24, v25);
  }

  else
  {
    sub_10000DDA8(v12, v19);
  }

  sub_10000C9F0(v19, v17);
  v31(v17);
  sub_10000C9F0(v17, v10);
  sub_10000400C(v10, 0, 1, v13);

  sub_100015A20();
  sub_100012C58(v26, v27, v28);
  sub_10000DD4C(v17);
  return sub_10000DD4C(v19);
}

uint64_t sub_10001318C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, char *))
{
  v4 = v3;
  v8 = sub_1000044BC(&qword_100025F50, &qword_1000184A0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = _s7ContextVMa(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = (&v24 - v18);
  sub_100013478(a1, a2, *v4, v13);
  if (sub_100007E1C(v13, 1, v14) == 1)
  {
    sub_100015884(v13, &qword_100025F50, &qword_1000184A0);
    _s19MarketingItemLoaderCMa(0);
    swift_allocObject();
    sub_100001A60();
    v19[3] = 0;
    v19[4] = 0;
    v19[2] = v20;
    v21 = *(v14 + 28);
    v22 = type metadata accessor for MusicSubscriptionOffer.Options();
    sub_10000400C(v19 + v21, 1, 1, v22);
    *(v19 + *(v14 + 32)) = 0;
    *v19 = a1;
    v19[1] = a2;
    sub_10000C9F0(v19, v11);
    sub_10000400C(v11, 0, 1, v14);
    swift_bridgeObjectRetain_n();
    sub_100012C58(v11, a1, a2);
  }

  else
  {
    sub_10000DDA8(v13, v19);
  }

  sub_10000C9F0(v19, v17);
  a3(&v25, v17);
  sub_10000C9F0(v17, v11);
  sub_10000400C(v11, 0, 1, v14);

  sub_100012C58(v11, a1, a2);
  sub_10000DD4C(v17);
  sub_10000DD4C(v19);
  return v25;
}

double sub_100013414@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_100015144(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_1000158DC(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100013478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100015080(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = _s7ContextVMa(0);
    sub_1000159B0();
    sub_10000C9F0(v9 + *(v11 + 72) * v8, a4);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = _s7ContextVMa(0);
    v12 = a4;
    v13 = 1;
  }

  return sub_10000400C(v12, v13, 1, v14);
}

uint64_t sub_100013520()
{
  sub_100008100();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for MusicSubscriptionOffer.Options();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000135EC, 0, 0);
}

uint64_t sub_1000135EC()
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  sub_100014A8C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v7 = v0[6];

  sub_100010D44(v1, v3);
  (*(v7 + 32))(v4, v5, v6);
  if (qword_100025810 != -1)
  {
    swift_once();
  }

  v8 = v0[8];
  v9 = v0[6];
  v18 = v0[5];
  v10 = qword_1000266F0;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = swift_task_alloc();
  *(v14 + 16) = v8;
  v15 = swift_task_alloc();
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v13;
  v15[5] = sub_100015054;
  v15[6] = v14;
  UnfairLock.locked<A>(_:)();

  (*(v9 + 8))(v8, v18);

  sub_10000813C();

  return v16();
}

uint64_t sub_10001396C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for MusicSubscriptionOffer.Options();
  (*(*(v7 - 8) + 16))(v6, a2, v7);
  sub_10000400C(v6, 0, 1, v7);
  v8 = _s7ContextVMa(0);
  sub_100015814(v6, a1 + *(v8 + 28));
  sub_100015A4C();
  return sub_100015884(v6, &unk_100025C60, &qword_100017A10);
}

uint64_t sub_100013B20(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100013BF8;

  return sub_100013520();
}

uint64_t sub_100013BF8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1000159A0();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[3];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[5];
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(v3[5], 0);
  }

  _Block_release(v4[5]);
  v12 = v9[1];

  return v12();
}

uint64_t sub_100013DAC()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100013DFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1000159C0(v1);

  return v3(v2);
}

uint64_t sub_100013EA0()
{
  sub_100008100();
  sub_100015A14();
  v1 = *v0;
  sub_1000159A0();
  *v2 = v1;

  sub_10000813C();

  return v3();
}

uint64_t sub_100013F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&unk_100025C70, &qword_100017D20);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_10000400C(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_100018468;
  v9[5] = v8;
  sub_10001440C(0, 0, v6, &unk_100018478, v9);
}

uint64_t sub_100014090(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10001599C;

  return v6();
}

uint64_t sub_10001417C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1000159C0(v1);

  return v3(v2);
}

uint64_t sub_100014220(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100013EA0;

  return v7();
}

uint64_t sub_100014308()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100014348(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_100015A04(v6);
  *v7 = v8;
  v7[1] = sub_10001599C;

  return sub_100014220(a1, v3, v4, v5);
}

uint64_t sub_10001440C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000044BC(&unk_100025C70, &qword_100017D20);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_1000146D8(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  if (sub_100007E1C(v11, 1, v12) == 1)
  {
    sub_100015884(v11, &unk_100025C70, &qword_100017D20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_100015884(a3, &unk_100025C70, &qword_100017D20);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100015884(a3, &unk_100025C70, &qword_100017D20);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1000146D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&unk_100025C70, &qword_100017D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014748(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014840;

  return v6(a1);
}

uint64_t sub_100014840()
{
  sub_100008100();
  sub_100015A14();
  v1 = *v0;
  sub_1000159A0();
  *v2 = v1;

  sub_10000813C();

  return v3();
}

uint64_t sub_100014924()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001495C()
{
  v0 = swift_task_alloc();
  v1 = sub_100015A04(v0);
  *v1 = v2;
  v3 = sub_1000159E4(v1);

  return v4(v3);
}

uint64_t sub_1000149F4()
{
  v0 = swift_task_alloc();
  v1 = sub_100015A04(v0);
  *v1 = v2;
  v3 = sub_1000159E4(v1);

  return v4(v3);
}

unint64_t sub_100014A8C()
{
  result = qword_100026588;
  if (!qword_100026588)
  {
    type metadata accessor for MusicSubscriptionOffer.Options();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026588);
  }

  return result;
}

unint64_t sub_100014AE4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100014BA8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1000158DC(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000047B0(v11);
  return v7;
}

unint64_t sub_100014BA8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100014CA8(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

void *sub_100014CA8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100014CF4(a1, a2);
  sub_100014E0C(&off_100020E58);
  return v3;
}

void *sub_100014CF4(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100014EF0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100014E0C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100014F60(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100014EF0(uint64_t a1, uint64_t a2)
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

  sub_1000044BC(&qword_100026598, &qword_1000184B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100014F60(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000044BC(&qword_100026598, &qword_1000184B8);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_100015080(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_100015A20();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100015188(a1, a2, v4);
}

uint64_t sub_1000150F4()
{
  v0 = Hasher.init(_seed:)();
  sub_100015A2C(v0);
  v1 = Hasher._finalize()();

  return sub_10001523C(v1);
}

unint64_t sub_100015144(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100015268(a1, v4);
}

unint64_t sub_100015188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100015268(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100015938(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_1000108D0(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10001532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_100015080(a1, a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v9 = *(*v3 + 24);
    sub_1000044BC(&qword_100026590, &unk_1000184A8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);

    v10 = *(v16 + 56);
    v11 = _s7ContextVMa(0);
    sub_10000DDA8(v10 + *(*(v11 - 8) + 72) * v7, a3);
    _NativeDictionary._delete(at:)();
    *v3 = v16;
    v12 = a3;
    v13 = 0;
    v14 = v11;
  }

  else
  {
    v14 = _s7ContextVMa(0);
    v12 = a3;
    v13 = 1;
  }

  return sub_10000400C(v12, v13, 1, v14);
}

unint64_t sub_100015460(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1000150F4();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_1000044BC(&qword_100025A28, &qword_1000179E0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = sub_1000150F4();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = (*(v18 + 56) + 16 * v14);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {

    return sub_1000156D8(v14, a1, a2, v18);
  }
}

void sub_100015580(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100015080(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_1000044BC(&qword_100026590, &unk_1000184A8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_100015080(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = v20[7];
    v22 = v21 + *(*(_s7ContextVMa(0) - 8) + 72) * v16;

    sub_1000157B0(a1, v22);
  }

  else
  {
    sub_100015718(v16, a2, a3, a1, v20);
  }
}

unint64_t sub_1000156D8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (result >> 6) + 64) |= 1 << result;
  v4 = (*(a4 + 56) + 16 * result);
  *v4 = a2;
  v4[1] = a3;
  v5 = *(a4 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v7;
  }

  return result;
}

uint64_t sub_100015718(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = _s7ContextVMa(0);
  result = sub_10000DDA8(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1000157B0(uint64_t a1, uint64_t a2)
{
  v4 = _s7ContextVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015884(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1000044BC(a2, a3);
  sub_1000159B0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000158DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100015A2C(uint64_t a1, ...)
{

  return String.hash(into:)();
}

void sub_100015A4C()
{
  v1 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for MusicSubscriptionOffer.Options();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s7ContextVMa(0);
  sub_100015CC8(v0 + *(v8 + 28), v3);
  if (sub_100007E1C(v3, 1, v4) == 1)
  {
    sub_100015D38(v3);
    if (qword_100025820 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100004504(v9, qword_1000266F8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Skipping fetching marketing item due to nil options.", v12, 2u);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_100002188(v7, *(v0 + 24), *(v0 + 32));
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t _s7ContextVMa(uint64_t a1)
{
  result = qword_1000265F8;
  if (!qword_1000265F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100015CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015D38(uint64_t a1)
{
  v2 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015DB4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
    v9 = a1 + *(a3 + 28);

    return sub_100007E1C(v9, a2, v8);
  }
}

uint64_t sub_100015E5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000044BC(&unk_100025C60, &qword_100017A10);
    v8 = v5 + *(a4 + 28);

    return sub_10000400C(v8, a2, a2, v7);
  }

  return result;
}

void sub_100015EE8(uint64_t a1)
{
  _s19MarketingItemLoaderCMa(319);
  if (v1 <= 0x3F)
  {
    sub_100015FE4();
    if (v2 <= 0x3F)
    {
      sub_100016034(319, &qword_1000258B0, &type metadata accessor for MusicSubscriptionOffer.Options);
      if (v3 <= 0x3F)
      {
        sub_100016034(319, &unk_100026610, _s14ViewControllerCMa);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100015FE4()
{
  if (!qword_100026608)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100026608);
    }
  }
}

void sub_100016034(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}