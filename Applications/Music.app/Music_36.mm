void sub_100409DFC(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v7);
      v12 = NSObject._rawHashValue(seed:)(v10);

      v13 = v12 & v8;
      if (v4 >= v9)
      {
        if (v13 >= v9 && v4 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = (v16 + 8 * v4);
          v18 = (v16 + 8 * v7);
          if (v4 != v7 || v17 >= v18 + 1)
          {
            *v17 = *v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 8 * v4);
          v21 = (v19 + 8 * v7);
          if (v4 != v7 || v20 >= v21 + 1)
          {
            *v20 = *v21;
            v4 = v7;
          }
        }
      }

      else if (v13 >= v9 || v4 >= v13)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

Swift::Int sub_100409F88(Swift::Int result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();

      result = Hasher._finalize()();
      v10 = result & v8;
      if (v4 >= v9)
      {
        if (v10 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v4);
        v13 = (v11 + 16 * v7);
        if (v4 != v7 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v4);
        v16 = (v14 + 8 * v7);
        if (v4 != v7 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
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

uint64_t sub_10040A134(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3[32] = a1;
  v3[33] = a2;
  v4 = type metadata accessor for URLRequest();
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[37] = v5;
  v3[38] = *(v5 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();

  return _swift_task_switch(sub_10040A268, 0, 0);
}

uint64_t sub_10040A268()
{
  v1 = v0[33];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 urlForBagKey:v2];

  if (v3)
  {
    v5 = v0[40];
    v4 = v0[41];
    v6 = v0[37];
    v7 = v0[38];
    v8 = v0[32];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 32))(v4, v5, v6);
    v9 = UIImageJPEGRepresentation(v8, 0.8);
    if (v9)
    {
      v10 = v9;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xF000000000000000;
    }

    v0[42] = v11;
    v0[43] = v13;
    (*(v0[38] + 16))(v0[39], v0[41], v0[37]);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    v17.value._countAndFlagsBits = 0x706A2F6567616D69;
    v18._countAndFlagsBits = 0x2D746E65746E6F43;
    v18._object = 0xEC00000065707954;
    v17.value._object = 0xEA00000000006765;
    URLRequest.setValue(_:forHTTPHeaderField:)(v17, v18);
    v19 = [objc_allocWithZone(NSUUID) init];
    v20 = [v19 UUIDString];
    if (v20)
    {
      v22 = v20;

      v23 = String._bridgeToObjectiveC()();
      v24 = [v22 stringByAppendingPathExtension:v23];

      if (v24)
      {
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v28._countAndFlagsBits = 0xD000000000000013;
      v28._object = 0x8000000100E49920;
      v29.value._countAndFlagsBits = v25;
      v29.value._object = v27;
      URLRequest.setValue(_:forHTTPHeaderField:)(v29, v28);

      sub_10002D6A4(v11, v13);
      URLRequest.httpBody.setter();
      sub_100009F78(0, &qword_1011BE880, ICUserIdentity_ptr);
      v30 = static ICUserIdentity.active.getter();
      v31 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v30];
      v0[44] = v31;

      v32 = objc_allocWithZone(ICStoreURLRequest);
      v33 = v31;
      isa = URLRequest._bridgeToObjectiveC()().super.isa;
      v35 = [v32 initWithURLRequest:isa requestContext:v33];
      v0[45] = v35;

      sub_100009F78(0, &qword_10118EAF8, ICURLSessionManager_ptr);
      v36 = static ICURLSessionManager.musicSession.getter();
      v0[46] = v36;
      v0[2] = v0;
      v0[7] = v0 + 31;
      v0[3] = sub_10040A730;
      v37 = swift_continuation_init();
      v0[17] = sub_10010FC20(&qword_10118EB00, &qword_100ECAF48);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_10040E398;
      v0[13] = &unk_1010AB0B0;
      v0[14] = v37;
      [v36 enqueueUploadRequest:v35 withCompletionHandler:v0 + 10];
      v20 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v20, v21);
  }

  else
  {
    sub_10040DF08();
    swift_allocError();
    *v14 = 0xD00000000000001BLL;
    *(v14 + 8) = 0x8000000100E49900;
    *(v14 + 16) = 1;
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_10040A730()
{
  v1 = *(*v0 + 48);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = sub_10040AB50;
  }

  else
  {
    v2 = sub_10040A840;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10040A840()
{
  v1 = *(v0 + 248);

  v33 = v1;
  v2 = [v1 parsedBodyDictionary];
  if (v2)
  {
    v3 = v2;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 216) = 0x6E656B6F74;
    *(v0 + 224) = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_1000160B4(v0 + 144), (v6 & 1) != 0))
    {
      sub_10000DD18(*(v4 + 56) + 32 * v5, v0 + 184);
      sub_10001621C(v0 + 144);

      if (swift_dynamicCast())
      {
        v8 = *(v0 + 352);
        v7 = *(v0 + 360);
        v10 = *(v0 + 336);
        v9 = *(v0 + 344);
        v11 = *(v0 + 328);
        v12 = *(v0 + 304);
        v13 = *(v0 + 288);
        v29 = *(v0 + 296);
        v15 = *(v0 + 272);
        v14 = *(v0 + 280);

        sub_100029CA4(v10, v9);
        (*(v14 + 8))(v13, v15);
        (*(v12 + 8))(v11, v29);
        v17 = *(v0 + 232);
        v16 = *(v0 + 240);

        v18 = *(v0 + 8);

        return v18(v17, v16);
      }
    }

    else
    {

      sub_10001621C(v0 + 144);
    }
  }

  v21 = *(v0 + 352);
  v20 = *(v0 + 360);
  v23 = *(v0 + 336);
  v22 = *(v0 + 344);
  v24 = *(v0 + 304);
  v31 = *(v0 + 296);
  v32 = *(v0 + 328);
  v25 = *(v0 + 280);
  v30 = *(v0 + 288);
  v26 = *(v0 + 272);
  sub_10040DF08();
  swift_allocError();
  *v27 = xmmword_100EC78D0;
  *(v27 + 16) = 2;
  swift_willThrow();

  sub_100029CA4(v23, v22);
  (*(v25 + 8))(v30, v26);
  (*(v24 + 8))(v32, v31);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10040AB50()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v12 = v0[41];
  v13 = v0[46];
  v5 = v0[38];
  v11 = v0[37];
  v6 = v0[35];
  v7 = v0[36];
  v8 = v0[34];
  swift_willThrow();

  sub_100029CA4(v3, v4);
  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v12, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10040AC64(void *a1)
{
  v1 = [a1 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100407258(v3);
  v5 = v4;

  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v5 + 16))
  {

    goto LABEL_13;
  }

  v8 = sub_100019C10(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1000160F8(*(v5 + 56) + 40 * v8, v19);

  sub_10010FC20(&qword_10118EB18, &qword_100ECAF78);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!*(v18 + 16) || (v11 = sub_100019C10(0x746C7561666564, 0xE700000000000000), (v12 & 1) == 0))
  {
LABEL_13:

    goto LABEL_14;
  }

  sub_1000160F8(*(v18 + 56) + 40 * v11, v19);

  if (swift_dynamicCast())
  {
    return v18;
  }

LABEL_14:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  sub_10040DF08();
  swift_allocError();
  *v17 = v14;
  *(v17 + 8) = v16;
  *(v17 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_10040AE70(uint64_t a1, __n128 a2)
{
  v2[35] = a1;
  v3 = type metadata accessor for URLRequest();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  v2[39] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[40] = v4;
  v2[41] = *(v4 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();

  return _swift_task_switch(sub_10040AFFC, 0, 0);
}

uint64_t sub_10040AFFC()
{
  v1 = sub_10040AC64(*(v0 + 280));
  v3 = v2;
  v4 = *(v0 + 320);
  v5 = *(v0 + 328);
  v6 = *(v0 + 312);
  v7 = v1;
  _StringGuts.grow(_:)(75);
  v8._countAndFlagsBits = 0x2F2F3A7370747468;
  v8._object = 0xE800000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = v7;
  v9._object = v3;
  String.append(_:)(v9);

  v10._object = 0x8000000100E499B0;
  v10._countAndFlagsBits = 0xD000000000000041;
  String.append(_:)(v10);
  URL.init(string:)();

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_1000095E8(*(v0 + 312), &qword_101183A20, &unk_100EBCF80);
    sub_10040DF08();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 2;
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    (*(*(v0 + 328) + 32))(*(v0 + 344), *(v0 + 312), *(v0 + 320));
    sub_10010FC20(&unk_1011839E0, &unk_100EBF440);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(v0 + 248) = 0x65756C6176;
    *(v0 + 256) = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = sub_10010FC20(&qword_101183BC8, &unk_100EBF620);
    *(inited + 72) = &off_10109AC78;
    sub_100060CB0(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_1011801C8, &unk_100EBA510);
    v15 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 264) = 0;
    v17 = [v15 dataWithJSONObject:isa options:0 error:v0 + 264];

    v18 = *(v0 + 264);
    if (v17)
    {
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v22 = v18;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v19 = 0;
      v21 = 0xF000000000000000;
    }

    *(v0 + 352) = v19;
    *(v0 + 360) = v21;
    (*(*(v0 + 328) + 16))(*(v0 + 336), *(v0 + 344), *(v0 + 320));
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
    v26._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
    v29.value._countAndFlagsBits = v23;
    v29.value._object = v25;
    v26._object = v28;
    URLRequest.setValue(_:forHTTPHeaderField:)(v29, v26);

    sub_10002D6A4(v19, v21);
    URLRequest.httpBody.setter();
    sub_100009F78(0, &qword_10118EB10, ICMusicKitRequestContext_ptr);
    v30 = static ICMusicKitRequestContext.music.getter();
    v31 = objc_allocWithZone(ICMusicKitURLRequest);
    v32 = URLRequest._bridgeToObjectiveC()().super.isa;
    v33 = [v31 initWithURLRequest:v32 requestContext:v30];
    *(v0 + 368) = v33;

    [v33 setCancelOnHTTPErrors:0];
    sub_100009F78(0, &qword_10118EAF8, ICURLSessionManager_ptr);
    v34 = static ICURLSessionManager.musicSession.getter();
    *(v0 + 376) = v34;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_10040B5D0;
    v35 = swift_continuation_init();
    *(v0 + 240) = sub_10010FC20(&qword_10118EB00, &qword_100ECAF48);
    *(v0 + 184) = _NSConcreteStackBlock;
    *(v0 + 192) = 1107296256;
    *(v0 + 200) = sub_10040E398;
    *(v0 + 208) = &unk_1010AB100;
    *(v0 + 216) = v35;
    [v34 enqueueUploadRequest:v33 withCompletionHandler:v0 + 184];

    return _swift_continuation_await(v0 + 16, v36);
  }
}

uint64_t sub_10040B5D0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = sub_10040B83C;
  }

  else
  {
    v2 = sub_10040B70C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10040B70C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  v3 = *(v0 + 360);
  v4 = *(v0 + 344);
  v5 = *(v0 + 320);
  v6 = *(v0 + 328);
  v7 = *(v0 + 304);
  v9 = *(v0 + 288);
  v8 = *(v0 + 296);

  sub_100029CA4(v2, v3);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10040B83C()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[44];
  v11 = v0[43];
  v12 = v0[47];
  v4 = v0[40];
  v5 = v0[41];
  v6 = v0[37];
  v7 = v0[38];
  v8 = v0[36];
  swift_willThrow();

  sub_100029CA4(v3, v1);
  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v11, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10040B970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5[112] = a4;
  v5[111] = a3;
  v5[110] = a2;
  v5[109] = a1;
  v6 = type metadata accessor for URLRequest();
  v5[113] = v6;
  v5[114] = *(v6 - 8);
  v5[115] = swift_task_alloc();
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  v5[116] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v5[117] = v7;
  v5[118] = *(v7 - 8);
  v5[119] = swift_task_alloc();
  v5[120] = swift_task_alloc();
  v5[121] = swift_task_alloc();

  return _swift_task_switch(sub_10040BB14, 0, 0);
}

uint64_t sub_10040BB14()
{
  v1 = sub_10040AC64(*(v0 + 880));
  v3 = v2;
  v4 = *(v0 + 944);
  v5 = *(v0 + 936);
  v6 = *(v0 + 928);
  v7 = v1;
  _StringGuts.grow(_:)(31);

  v8._countAndFlagsBits = v7;
  v8._object = v3;
  String.append(_:)(v8);

  v9._object = 0x8000000100E49970;
  v9._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v9);
  URL.init(string:)();

  if ((*(v4 + 48))(v6, 1, v5) == 1)
  {
    sub_1000095E8(*(v0 + 928), &qword_101183A20, &unk_100EBCF80);
    sub_10040DF08();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 2;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = *(v0 + 960);
  v14 = *(v0 + 872);
  (*(*(v0 + 944) + 32))(*(v0 + 968), *(v0 + 928), *(v0 + 936));
  v15 = sub_10010C578(&off_10109ACB8);
  sub_1000095E8(&unk_10109ACD8, &qword_101183AA0, &unk_100ECAF50);
  URL.parametrize(_:)(v15, v13);

  v16 = sub_100060CB0(_swiftEmptyArrayStorage);
  v17 = *(v14 + 8);
  if (v17)
  {
    v18 = **(v0 + 872);
    *(v0 + 816) = 1701667182;
    *(v0 + 824) = 0xE400000000000000;

    AnyHashable.init<A>(_:)();
    *(v0 + 440) = &type metadata for String;
    *(v0 + 416) = v18;
    *(v0 + 424) = v17;
    sub_100016270((v0 + 416), (v0 + 608));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C((v0 + 608), v0 + 144, isUniquelyReferenced_nonNull_native);
    sub_10001621C(v0 + 144);
  }

  v20 = *(v0 + 872);
  v21 = *(v20 + 24);
  if (v21)
  {
    v22 = *(v20 + 16);
    *(v0 + 784) = 0x656C646E6168;
    *(v0 + 792) = 0xE600000000000000;

    AnyHashable.init<A>(_:)();
    *(v0 + 536) = &type metadata for String;
    *(v0 + 512) = v22;
    *(v0 + 520) = v21;
    sub_100016270((v0 + 512), (v0 + 480));
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C((v0 + 480), v0 + 264, v23);
    sub_10001621C(v0 + 264);
  }

  v24 = *(v0 + 896);
  if (v24)
  {
    v25 = *(v0 + 888);
    strcpy((v0 + 752), "artworkToken");
    *(v0 + 765) = 0;
    *(v0 + 766) = -5120;

    AnyHashable.init<A>(_:)();
    *(v0 + 408) = &type metadata for String;
    *(v0 + 384) = v25;
    *(v0 + 392) = v24;
    sub_100016270((v0 + 384), (v0 + 704));
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v16;
    sub_10006800C((v0 + 704), v0 + 344, v26);
    v27 = v0 + 344;
  }

  else
  {
    if (*(*(v0 + 872) + 32))
    {
      goto LABEL_13;
    }

    strcpy((v0 + 736), "artworkToken");
    *(v0 + 749) = 0;
    *(v0 + 750) = -5120;
    AnyHashable.init<A>(_:)();
    *(v0 + 664) = &type metadata for String;
    *(v0 + 640) = 0;
    *(v0 + 648) = 0xE000000000000000;
    sub_100016270((v0 + 640), (v0 + 672));
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v16;
    sub_10006800C((v0 + 672), v0 + 304, v53);
    v27 = v0 + 304;
  }

  sub_10001621C(v27);
  v16 = v54;
LABEL_13:
  v28 = *(*(v0 + 872) + 41);
  if (v28 != 2)
  {
    *(v0 + 768) = 0x72616F626E4F7369;
    *(v0 + 776) = 0xEB00000000646564;
    AnyHashable.init<A>(_:)();
    *(v0 + 568) = &type metadata for Bool;
    *(v0 + 544) = v28;
    sub_100016270((v0 + 544), (v0 + 576));
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C((v0 + 576), v0 + 224, v29);
    sub_10001621C(v0 + 224);
  }

  sub_10010FC20(&unk_1011839E0, &unk_100EBF440);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBC6B0;
  *(v0 + 832) = 0x7475626972747461;
  *(v0 + 840) = 0xEA00000000007365;
  AnyHashable.init<A>(_:)();
  *(v30 + 96) = sub_10010FC20(&unk_1011BE660, &unk_100ECAF60);
  *(v30 + 72) = v16;
  sub_100060CB0(v30);
  swift_setDeallocating();
  sub_1000095E8(v30 + 32, &qword_1011801C8, &unk_100EBA510);
  swift_deallocClassInstance();
  v31 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 864) = 0;
  v33 = [v31 dataWithJSONObject:isa options:0 error:v0 + 864];

  v34 = *(v0 + 864);
  if (v33)
  {
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v38 = v34;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v35 = 0;
    v37 = 0xF000000000000000;
  }

  *(v0 + 984) = v37;
  *(v0 + 976) = v35;
  (*(*(v0 + 944) + 16))(*(v0 + 952), *(v0 + 960), *(v0 + 936));
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  v42._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;
  v45.value._countAndFlagsBits = v39;
  v45.value._object = v41;
  v42._object = v44;
  URLRequest.setValue(_:forHTTPHeaderField:)(v45, v42);

  sub_10002D6A4(v35, v37);
  URLRequest.httpBody.setter();
  sub_100009F78(0, &qword_10118EB10, ICMusicKitRequestContext_ptr);
  v46 = static ICMusicKitRequestContext.music.getter();
  v47 = objc_allocWithZone(ICMusicKitURLRequest);
  v48 = URLRequest._bridgeToObjectiveC()().super.isa;
  v49 = [v47 initWithURLRequest:v48 requestContext:v46];
  *(v0 + 992) = v49;

  [v49 setCancelOnHTTPErrors:0];
  sub_100009F78(0, &qword_10118EAF8, ICURLSessionManager_ptr);
  v50 = static ICURLSessionManager.musicSession.getter();
  *(v0 + 1000) = v50;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 856;
  *(v0 + 24) = sub_10040C454;
  v51 = swift_continuation_init();
  *(v0 + 136) = sub_10010FC20(&qword_10118EB00, &qword_100ECAF48);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10040E398;
  *(v0 + 104) = &unk_1010AB0D8;
  *(v0 + 112) = v51;
  [v50 enqueueDataRequest:v49 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16, v52);
}

uint64_t sub_10040C454()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1008) = v1;
  if (v1)
  {
    v2 = sub_10040CD64;
  }

  else
  {
    v2 = sub_10040C590;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10040C590()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 856);
  *(v0 + 1016) = v2;

  v3 = [v2 urlResponse];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5 && [v5 statusCode] == 409)
    {
      v6 = [v2 parsedBodyDictionary];
      if (v6)
      {
        v7 = v6;
        v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        *(v0 + 800) = 0xD000000000000010;
        *(v0 + 808) = 0x8000000100E49990;
        AnyHashable.init<A>(_:)();
        if (*(v8 + 16))
        {
          v9 = sub_1000160B4(v0 + 184);
          if (v10)
          {
            sub_10000DD18(*(v8 + 56) + 32 * v9, v0 + 448);
            sub_10001621C(v0 + 184);

            if (*(v0 + 472))
            {
              sub_10010FC20(&qword_101183BC8, &unk_100EBF620);
              if (swift_dynamicCast())
              {
                v11 = *(v0 + 848);
LABEL_18:
                v16 = *(v0 + 992);
                v17 = *(v0 + 976);
                v28 = *(v0 + 968);
                v26 = *(v0 + 984);
                v27 = *(v0 + 960);
                v18 = *(v0 + 944);
                v19 = *(v0 + 936);
                v20 = *(v0 + 912);
                v24 = *(v0 + 904);
                v25 = *(v0 + 920);
                sub_10040DF08();
                swift_allocError();
                *v21 = v11;
                *(v21 + 8) = 0;
                *(v21 + 16) = 0;
                swift_willThrow();

                sub_100029CA4(v17, v26);
                (*(v20 + 8))(v25, v24);
                v22 = *(v18 + 8);
                v22(v27, v19);
                v22(v28, v19);

                v23 = *(v0 + 8);

                return v23();
              }

LABEL_17:
              v11 = _swiftEmptyArrayStorage;
              goto LABEL_18;
            }

LABEL_16:
            sub_1000095E8(v0 + 448, &unk_101183F30, qword_100EBF960);
            goto LABEL_17;
          }
        }

        sub_10001621C(v0 + 184);
      }

      *(v0 + 448) = 0u;
      *(v0 + 464) = 0u;
      goto LABEL_16;
    }
  }

  v12 = swift_task_alloc();
  *(v0 + 1024) = v12;
  *v12 = v0;
  v12[1] = sub_10040C954;
  v14 = *(v0 + 880);

  return sub_10040AE70(v14, v13);
}

uint64_t sub_10040C954()
{
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v2 = sub_10040CBFC;
  }

  else
  {
    v2 = sub_10040CA94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10040CA94()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  v4 = *(v0 + 968);
  v13 = *(v0 + 960);
  v5 = *(v0 + 944);
  v6 = *(v0 + 936);
  v7 = *(v0 + 920);
  v8 = *(v0 + 912);
  v9 = *(v0 + 904);

  sub_100029CA4(v3, v2);
  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v13, v6);
  v10(v4, v6);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10040CBFC()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  v13 = *(v0 + 968);
  v4 = *(v0 + 960);
  v5 = *(v0 + 944);
  v6 = *(v0 + 936);
  v7 = *(v0 + 920);
  v8 = *(v0 + 912);
  v9 = *(v0 + 904);

  sub_100029CA4(v3, v2);
  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v13, v6);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10040CD64()
{
  v1 = v0[124];
  v2 = v0[123];
  v3 = v0[122];
  v13 = v0[121];
  v14 = v0[125];
  v12 = v0[120];
  v4 = v0[118];
  v5 = v0[117];
  v6 = v0[115];
  v7 = v0[114];
  v8 = v0[113];
  swift_willThrow();

  sub_100029CA4(v3, v2);
  (*(v7 + 8))(v6, v8);
  v9 = *(v4 + 8);
  v9(v12, v5);
  v9(v13, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10040CEDC(uint64_t a1, char a2)
{
  *(v2 + 314) = a2;
  *(v2 + 432) = a1;
  return _swift_task_switch(sub_10040CF00, 0, 0);
}

uint64_t sub_10040CF00()
{
  v1 = [objc_opt_self() sharedBagProvider];
  v0[55] = v1;
  sub_100009F78(0, &qword_10118EAD8, ICStoreRequestContext_ptr);
  v2 = static ICStoreRequestContext.current.getter();
  v0[56] = v2;
  v0[2] = v0;
  v0[7] = v0 + 52;
  v0[3] = sub_10040D074;
  v3 = swift_continuation_init();
  v0[25] = sub_10010FC20(&qword_10118EAE0, &qword_100ECAF28);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10040E398;
  v0[21] = &unk_1010AB060;
  v0[22] = v3;
  [v1 getBagForRequestContext:v2 withCompletionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2, v4);
}

uint64_t sub_10040D074()
{
  v1 = *(*v0 + 48);
  *(*v0 + 456) = v1;
  if (v1)
  {
    v2 = sub_10040DD9C;
  }

  else
  {
    v2 = sub_10040D184;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10040D184()
{
  v27 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 416);
  *(v0 + 464) = v4;

  v5 = *(v3 + 32);
  *(v0 + 472) = v5;
  if (v5 >= 2)
  {
    v23 = v5;
    v24 = swift_task_alloc();
    *(v0 + 480) = v24;
    *v24 = v0;
    v24[1] = sub_10040D440;

    return sub_10040A134(v23, v4, v25);
  }

  else
  {
    *(v0 + 512) = 0;
    if (qword_10117F6B0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 432);
    v7 = type metadata accessor for Logger();
    *(v0 + 520) = sub_1000060E4(v7, qword_101218BD8);
    sub_10040DE90(v6, v0 + 272);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    sub_10040DEC8(v6);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 432);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136446210;
      v13 = *(v10 + 26);
      v14 = v10[1];
      *(v0 + 320) = *v10;
      *(v0 + 336) = v14;
      *(v0 + 346) = v13;
      sub_10040DE90(v10, v0 + 368);
      v15 = String.init<A>(describing:)();
      v17 = sub_1000105AC(v15, v16, &v26);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Will update profile with=%{public}s", v11, 0xCu);
      sub_10000959C(v12);
    }

    v18 = swift_task_alloc();
    *(v0 + 528) = v18;
    *v18 = v0;
    v18[1] = sub_10040D808;
    v20 = *(v0 + 464);
    v21 = *(v0 + 432);

    return sub_10040B970(v21, v20, 0, 0, v19);
  }
}

uint64_t sub_10040D440(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 488) = v2;

  if (v2)
  {
    v7 = sub_10040D79C;
  }

  else
  {
    *(v6 + 496) = a2;
    *(v6 + 504) = a1;
    v7 = sub_10040D574;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10040D574()
{
  v21 = v0;
  v1 = *(v0 + 496);
  sub_10040DEF8(*(v0 + 472));
  v2 = *(v0 + 504);
  *(v0 + 512) = v1;
  if (qword_10117F6B0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 432);
  v4 = type metadata accessor for Logger();
  *(v0 + 520) = sub_1000060E4(v4, qword_101218BD8);
  sub_10040DE90(v3, v0 + 272);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_10040DEC8(v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 432);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    v10 = *(v7 + 26);
    v11 = v7[1];
    *(v0 + 320) = *v7;
    *(v0 + 336) = v11;
    *(v0 + 346) = v10;
    sub_10040DE90(v7, v0 + 368);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v20);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Will update profile with=%{public}s", v8, 0xCu);
    sub_10000959C(v9);
  }

  v15 = swift_task_alloc();
  *(v0 + 528) = v15;
  *v15 = v0;
  v15[1] = sub_10040D808;
  v17 = *(v0 + 464);
  v18 = *(v0 + 432);

  return sub_10040B970(v18, v17, v2, v1, v16);
}

uint64_t sub_10040D79C()
{
  v1 = *(v0 + 472);

  sub_10040DEF8(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10040D808()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_10040DB30;
  }

  else
  {

    v2 = sub_10040D924;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10040D924(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 314);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Updated user profile, refreshing activeUserState=%{BOOL}d", v5, 8u);
  }

  v6 = *(v1 + 314);

  if (v6 == 1)
  {
    v7 = [objc_opt_self() shared];
    *(v1 + 544) = v7;
    *(v1 + 80) = v1;
    *(v1 + 120) = v1 + 424;
    *(v1 + 88) = sub_10040DBA0;
    v8 = swift_continuation_init();
    *(v1 + 264) = sub_10010FC20(&qword_10118EAE8, &qword_100ECAF38);
    *(v1 + 208) = _NSConcreteStackBlock;
    *(v1 + 216) = 1107296256;
    *(v1 + 224) = sub_100407FE0;
    *(v1 + 232) = &unk_1010AB088;
    *(v1 + 240) = v8;
    [v7 refreshUserStatesWithOptions:1 completion:v1 + 208];

    return _swift_continuation_await(v1 + 80, v9);
  }

  else
  {

    v10 = *(v1 + 8);

    return v10();
  }
}

uint64_t sub_10040DB30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10040DBA0()
{
  v1 = *(*v0 + 112);
  *(*v0 + 552) = v1;
  if (v1)
  {
    v2 = sub_10040DE14;
  }

  else
  {
    v2 = sub_10040DCB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10040DCB0()
{
  v1 = *(v0 + 544);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Active user state updated", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10040DD9C()
{
  v1 = v0[56];
  v2 = v0[55];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10040DE14()
{
  v1 = v0[68];
  v2 = v0[58];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

void sub_10040DEF8(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_10040DF08()
{
  result = qword_10118EAF0;
  if (!qword_10118EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EAF0);
  }

  return result;
}

uint64_t sub_10040DFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10040E028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Cache.Entry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10040E08C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10040E0D4(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10040E0F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10040E138(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_10040E17C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10040E1A4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_10040E1C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10040E1DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 42))
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

uint64_t sub_10040E238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10040E2C4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10040E314(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10040E39C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v6 = ~v9;
    v5 = v3 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v3 + 64);
    v8 = v3;
  }

  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = 0;
  v12[6] = v7;
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = *(a1 + 24);
  *(v13 + 40) = v12;

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  return AnyIterator.init(_:)(sub_10040F0E8, v13, TupleTypeMetadata2);
}

void sub_10040E4E0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v61 = *(a3 - 8);
  __chkstk_darwin();
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = type metadata accessor for Optional();
  v59 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v51 - v17;
  swift_beginAccess();
  v19 = a1[2];
  v60 = v10;
  if (v19 < 0)
  {
    if (__CocoaDictionary.Iterator.next()())
    {
      v58 = v12;
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v26 = v8;
      v27 = *(TupleTypeMetadata2 + 48);
      (*(v10 + 32))(v18, v58, a2);
      (*(v61 + 32))(&v18[v27], v26, v14);
      v28 = *(TupleTypeMetadata2 - 8);
      (*(v28 + 56))(v18, 0, 1, TupleTypeMetadata2);
    }

    else
    {
      v28 = *(TupleTypeMetadata2 - 8);
      (*(v28 + 56))(v18, 1, 1, TupleTypeMetadata2);
    }

LABEL_17:
    swift_endAccess();
    if ((*(v28 + 48))(v18, 1, TupleTypeMetadata2) == 1)
    {
      (*(v59 + 8))(v18, v16);
      v47 = swift_getTupleTypeMetadata2();
      (*(*(v47 - 8) + 56))(a4, 1, 1, v47);
    }

    else
    {
      v48 = *(TupleTypeMetadata2 + 48);
      v49 = swift_getTupleTypeMetadata2();
      v50 = *(v49 + 48);
      (*(v60 + 32))(a4, v18, a2);
      (*(v61 + 32))(&a4[v50], &v18[v48], v14);
      (*(*(v49 - 8) + 56))(a4, 0, 1, v49);
    }

    return;
  }

  v56 = TupleTypeMetadata2;
  v57 = v16;
  v20 = v8;
  v58 = a4;
  v22 = a1[3];
  v21 = a1[4];
  v23 = a1[5];
  v24 = a1[6];
  v54 = v19;
  v55 = v21;
  if (v24)
  {
    v53 = v18;
    v25 = v23;
LABEL_14:
    v52 = (v24 - 1) & v24;
    v32 = __clz(__rbit64(v24)) | (v25 << 6);
    v33 = v19;
    (*(v10 + 16))(v12, *(v19 + 48) + *(v10 + 72) * v32, a2);
    v34 = *(v33 + 56);
    v35 = a2;
    v36 = v61;
    v37 = v34 + *(v61 + 72) * v32;
    v38 = v12;
    v39 = v20;
    (*(v61 + 16))(v20, v37, v14);
    TupleTypeMetadata2 = v56;
    v51 = *(v56 + 48);
    v40 = *(v10 + 32);
    v41 = v53;
    v40(v53, v38, v35);
    v42 = v36;
    a2 = v35;
    v18 = v41;
    v43 = v39;
    v44 = v52;
    (*(v42 + 32))(&v41[v51], v43, v14);
    v45 = 0;
    v31 = v25;
    a4 = v58;
LABEL_15:
    v28 = *(TupleTypeMetadata2 - 8);
    (*(v28 + 56))(v18, v45, 1, TupleTypeMetadata2);
    v46 = v55;
    a1[2] = v54;
    a1[3] = v22;
    a1[4] = v46;
    a1[5] = v31;
    a1[6] = v44;
    v16 = v57;
    goto LABEL_17;
  }

  v29 = (v21 + 64) >> 6;
  if (v29 <= v23 + 1)
  {
    v30 = v23 + 1;
  }

  else
  {
    v30 = (v21 + 64) >> 6;
  }

  v31 = v30 - 1;
  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v29)
    {
      v44 = 0;
      v45 = 1;
      a4 = v58;
      TupleTypeMetadata2 = v56;
      goto LABEL_15;
    }

    v24 = *(v22 + 8 * v25);
    ++v23;
    if (v24)
    {
      v53 = v18;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_10040EAA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10040E39C(a1);
  result = (*(*(a1 - 8) + 8))(v2, a1);
  *a2 = v5;
  return result;
}

uint64_t sub_10040EB10(uint64_t a1, uint64_t a2)
{
  v4 = j___ss30_copySequenceToContiguousArrayys0dE0Vy7ElementQzGxSTRzlF(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

uint64_t sub_10040EBA8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((static Dictionary<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DefaultDictionary(0, a3, a4, a5);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10040EC60(void *a1)
{
  result = type metadata accessor for Dictionary();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10040ECF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_10040EE78(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void sub_10040F18C()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 isHighlighted];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  if (v2)
  {
    *(v4 + 24) = ObjectType;
    v14 = sub_10040F750;
    v15 = v4;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v5 = &unk_1010AB468;
  }

  else
  {
    v14 = sub_10040F740;
    v15 = v4;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_10002BC98;
    v13 = &unk_1010AB3C8;
    v6 = _Block_copy(&v10);
    v0 = v0;

    [v3 animateWithDuration:2 delay:v6 options:0 animations:0.47 completion:0.0];
    _Block_release(v6);
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    v14 = sub_10040F748;
    v15 = v7;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v5 = &unk_1010AB418;
  }

  v12 = sub_10002BC98;
  v13 = v5;
  v8 = _Block_copy(&v10);
  v9 = v0;

  [v3 animateWithDuration:2 delay:v8 options:0 animations:0.2 completion:{0.0, v10, v11}];
  _Block_release(v8);
}

void sub_10040F3DC(char *a1)
{
  v2 = [a1 imageView];
  if (v2)
  {
    v3 = v2;
    CGAffineTransformMakeScale(&v11, 0.8, 0.8);
    [v3 setTransform:&v11];
  }

  v4 = *&a1[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
  if (v4)
  {
    CGAffineTransformMakeScale(&v11, 0.8, 0.8);
    [v4 setTransform:&v11];
  }

  v5 = OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorView;
  v6 = *&a1[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorView];
  if (v6)
  {
    v7 = v6;
    v8 = [a1 isHovered];
    v9 = 0.1;
    if (v8)
    {
      v9 = 0.0;
    }

    [v7 setAlpha:v9];

    v10 = *&a1[v5];
    if (v10)
    {
      CGAffineTransformMakeScale(&v11, 1.2, 1.2);
      [v10 setTransform:&v11];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_10040F53C(char *a1)
{
  v2 = [a1 imageView];
  if (v2)
  {
    v6 = 0x3FF0000000000000;
    v7 = 0;
    v8 = 0;
    v9 = 0x3FF0000000000000;
    v10 = 0;
    v11 = 0;
    v3 = v2;
    [v2 setTransform:&v6];
  }

  v4 = *&a1[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
  if (v4)
  {
    v6 = 0x3FF0000000000000;
    v7 = 0;
    v8 = 0;
    v9 = 0x3FF0000000000000;
    v10 = 0;
    v11 = 0;
    [v4 setTransform:&v6];
  }

  result = *&a1[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorView];
  if (result)
  {
    return [result setAlpha:0.0];
  }

  __break(1u);
  return result;
}

char *sub_10040F5FC(char *result)
{
  v1 = *&result[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorView];
  if (v1)
  {
    CGAffineTransformMakeScale(&v2, 1.4, 1.4);
    return [v1 setTransform:&v2];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10040F670()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingTransportButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10040F758()
{
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView) = 0;
  v1 = v0 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_wantsHihglightIndicator) = 1;
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidth) = 0x4046000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10040F818(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10040F864(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101183BC0, &qword_100EC5900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10040F8D4(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101183BC0, &qword_100EC5900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10040F94C()
{
  _s14descr101092F61V20PlaybackStateManagerCMa(0);
  swift_allocObject();
  result = sub_10040F9B4();
  qword_101218BF0 = result;
  return result;
}

uint64_t sub_10040F9B4()
{
  v0 = sub_10010FC20(&qword_10118ED08, &qword_100ECB280);
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin();
  v23 = v21 - v1;
  v21[1] = sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = v21 - v3;
  v5 = sub_10010FC20(&qword_10118ED10, &qword_100ECB288);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v21 - v7;
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v21 - v11;
  v13 = OBJC_IVAR____TtCO5Music14ClarityUIMusic20PlaybackStateManager__selectedEntry;
  v14 = type metadata accessor for Playlist.Entry();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_1000089F8(v12, v10, &qword_101191570, &qword_100ECE0B0);
  Published.init(initialValue:)();
  sub_1000095E8(v12, &qword_101191570, &qword_100ECE0B0);
  v15 = v22;
  (*(v6 + 32))(v22 + v13, v8, v5);
  v16 = OBJC_IVAR____TtCO5Music14ClarityUIMusic20PlaybackStateManager__selectedPlaylist;
  v17 = type metadata accessor for Playlist();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_1000089F8(v4, v21[0], &unk_1011814D0, &qword_100EC12A0);
  v18 = v23;
  Published.init(initialValue:)();
  sub_1000095E8(v4, &unk_1011814D0, &qword_100EC12A0);
  (*(v24 + 32))(v15 + v16, v18, v25);
  v19 = OBJC_IVAR____TtCO5Music14ClarityUIMusic20PlaybackStateManager_playbackIndicator;
  type metadata accessor for PlaybackIndicator(0);
  swift_allocObject();
  *(v15 + v19) = sub_100584950();
  return v15;
}

uint64_t sub_10040FD74(uint64_t a1)
{
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v2 = (&v12 - v1);
  v3 = type metadata accessor for Playlist.Entry();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v2);

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000095E8(v2, &qword_101191570, &qword_100ECE0B0);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v13);

    v7 = v13;
    if (v13)
    {
      v8 = MPCPlayerResponse.playState(for:in:)();
      v10 = v9;

      (*(v4 + 8))(v6, v3);
      if ((v10 & 1) == 0)
      {
        return v8;
      }
    }

    else
    {
      (*(v4 + 8))(v6, v3);
    }
  }

  return 0;
}

uint64_t sub_10040FFDC(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v13 - v6;
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v13 - v10;
  sub_1000089F8(a1, &v13 - v10, &qword_101191570, &qword_100ECE0B0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v11, v9, &qword_101191570, &qword_100ECE0B0);

  static Published.subscript.setter();
  sub_1000095E8(v11, &qword_101191570, &qword_100ECE0B0);
  sub_1000089F8(a2, v7, &unk_1011814D0, &qword_100EC12A0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v7, v5, &unk_1011814D0, &qword_100EC12A0);

  static Published.subscript.setter();
  return sub_1000095E8(v7, &unk_1011814D0, &qword_100EC12A0);
}

uint64_t sub_100410208(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for PlaybackIntentDescriptor(0);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  __chkstk_darwin();
  v32 = v5;
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v31 = &v30 - v6;
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  sub_10010FC20(&qword_1011848A0, &unk_100EC64F0);
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v30 - v11;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v14 = &v30 - v13;
  v15 = type metadata accessor for Playlist();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v35 = a1;
  v17(v14, a1, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v18 = v34;
  sub_10040FFDC(v34, v14);
  sub_1000095E8(v14, &unk_1011814D0, &qword_100EC12A0);
  sub_1000089F8(v18, v8, &qword_101191570, &qword_100ECE0B0);
  v19 = type metadata accessor for Playlist.Entry();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v8, 1, v19) == 1)
  {
    sub_1000095E8(v8, &qword_101191570, &qword_100ECE0B0);
    v38 = 0u;
    v39 = 0u;
    v40 = 0;
  }

  else
  {
    *(&v39 + 1) = v19;
    v40 = &protocol witness table for Playlist.Entry;
    v21 = sub_10001C8B8(&v38);
    (*(v20 + 32))(v21, v8, v19);
  }

  sub_100410724(v35, &v38, v12);
  sub_1000095E8(&v38, &qword_101182C38, &unk_100ECB2A0);
  sub_1000089F8(v12, v10, &qword_1011848A0, &unk_100EC64F0);
  v22 = v37;
  if ((*(v37 + 48))(v10, 1, v36) == 1)
  {
    sub_1000095E8(v12, &qword_1011848A0, &unk_100EC64F0);
    return sub_1000095E8(v10, &qword_1011848A0, &unk_100EC64F0);
  }

  else
  {
    v24 = type metadata accessor for TaskPriority();
    v25 = v31;
    (*(*(v24 - 8) + 56))(v31, 1, 1, v24);
    v26 = v33;
    sub_1001DFCE4(v10, v33);
    type metadata accessor for MainActor();
    v27 = static MainActor.shared.getter();
    v28 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = &protocol witness table for MainActor;
    sub_1001DFD58(v26, v29 + v28);
    sub_1001F4F78(0, 0, v25, &unk_100ECA700, v29);

    sub_1000095E8(v12, &qword_1011848A0, &unk_100EC64F0);
    return sub_100188CDC(v10);
  }
}

uint64_t sub_100410724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v26 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v5 = &v26 - v4;
  v6 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v10 = &v26 - v9;
  v11 = sub_10010FC20(&qword_10118A3B0, &qword_100EE4B40);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v26 - v13;
  v15 = type metadata accessor for Playlist();
  type metadata accessor for Playlist.Entry();
  MusicLibrarySectionedRequest.init()();
  swift_getKeyPath();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v10, v29, v15);
  (*(v16 + 56))(v10, 0, 1, v15);
  sub_1004112BC();
  MusicLibrarySectionedRequest<>.filterItems<A>(matching:equalTo:)();

  sub_1000095E8(v10, &unk_1011814D0, &qword_100EC12A0);
  *(&v34 + 1) = v11;
  v35 = sub_100198A44();
  v17 = sub_10001C8B8(&v33);
  (*(v12 + 16))(v17, v14, v11);
  sub_1000089F8(v30, v32, &qword_101182C38, &unk_100ECB2A0);
  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  (*(v7 + 56))(v5, 0, 1, v6);
  v18 = v27;
  (*(v7 + 32))(v27, v5, v6);
  v19 = v28;
  (*(v7 + 16))(v28, v18, v6);
  swift_storeEnumTagMultiPayload();
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100EBDC20;
  *(v20 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v20 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v20 + 32) = 0x5579746972616C43;
  *(v20 + 40) = 0xE900000000000049;
  *(v20 + 96) = &type metadata for Player.CommandIssuerIdentity;
  *(v20 + 104) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v20 + 72) = 0x7473696C79616C50;
  *(v20 + 80) = 0xE900000000000073;
  v21 = Player.CommandIssuerIdentity.init(_:)();
  v32[3] = &type metadata for Player.CommandIssuerIdentity;
  v32[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v32[0] = v21;
  v32[1] = v22;
  v23 = v31;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v19, &v33, 3, 0, 0, 1, 0, 1, v31, 0, v32);
  (*(v7 + 8))(v18, v6);
  (*(v12 + 8))(v14, v11);
  v24 = type metadata accessor for PlaybackIntentDescriptor(0);
  return (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
}

uint64_t sub_100410CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_100410D60, v6, v5);
}

uint64_t sub_100410D60()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  *(v0 + 40) = &type metadata for Player.PlaybackCommand;
  *(v0 + 48) = &protocol witness table for Player.PlaybackCommand;
  *(v0 + 16) = 3;
  *(v0 + 96) = v1;

  v2 = String.init<A>(reflecting:)();
  *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_10016B618;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_100410EA4()
{
  v1 = OBJC_IVAR____TtCO5Music14ClarityUIMusic20PlaybackStateManager__selectedEntry;
  v2 = sub_10010FC20(&qword_10118ED10, &qword_100ECB288);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCO5Music14ClarityUIMusic20PlaybackStateManager__selectedPlaylist;
  v4 = sub_10010FC20(&qword_10118ED08, &qword_100ECB280);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t _s14descr101092F61V20PlaybackStateManagerCMa(uint64_t a1)
{
  result = qword_10118EC60;
  if (!qword_10118EC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100410FFC(uint64_t a1)
{
  sub_1000054CC(319, &qword_10118EC70, &qword_101191570, &qword_100ECE0B0);
  if (v1 <= 0x3F)
  {
    sub_1000054CC(319, &unk_10118EC78, &unk_1011814D0, &qword_100EC12A0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_100411100()
{
  v1 = *v0;
  if (qword_10117F898 != -1)
  {
    swift_once();
  }

  v2 = qword_101219020;
  v3 = objc_allocWithZone(type metadata accessor for WaveformPlayIndicator(0));
  v4 = WaveformPlayIndicator.init(settings:)(v2);
  if (v1 == 2)
  {
    v5 = 3;
  }

  else
  {
    v5 = v1;
  }

  WaveformPlayIndicator.mode.setter(v5);
  return v4;
}

void sub_100411190()
{
  if (*v0 == 2)
  {
    v1 = 3;
  }

  else
  {
    v1 = *v0;
  }

  WaveformPlayIndicator.mode.setter(v1);
}

uint64_t sub_1004111CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100411528();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100411230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100411528();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100411294(uint64_t a1)
{
  sub_100411528();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1004112BC()
{
  result = qword_101186EC0;
  if (!qword_101186EC0)
  {
    type metadata accessor for Playlist();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186EC0);
  }

  return result;
}

double sub_100411314@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t sub_100411390(uint64_t a1, uint64_t *a2)
{
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_1000089F8(a1, &v8 - v5, &qword_101191570, &qword_100ECE0B0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v6, v4, &qword_101191570, &qword_100ECE0B0);

  static Published.subscript.setter();
  return sub_1000095E8(v6, &qword_101191570, &qword_100ECE0B0);
}

unint64_t sub_1004114D4()
{
  result = qword_10118ED18;
  if (!qword_10118ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118ED18);
  }

  return result;
}

unint64_t sub_100411528()
{
  result = qword_10118ED20;
  if (!qword_10118ED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118ED20);
  }

  return result;
}

id sub_10041157C()
{
  type metadata accessor for NowPlayingDataProvider(0);
  swift_allocObject();
  result = sub_10041D0E8();
  qword_101218C00 = result;
  return result;
}

uint64_t sub_1004115BC()
{
  v1 = v0;
  sub_10010FC20(&qword_10118F130, &qword_100ECB640);
  __chkstk_darwin();
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v29 - v4;
  sub_10010FC20(&qword_10118F120, &unk_100ED5660);
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v29 - v8;
  v33 = OBJC_IVAR____TtC5Music22NowPlayingDataProvider_logger;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Clearing current item, progress, and background", v12, 2u);
  }

  v13 = *(v1 + 16);
  v14 = type metadata accessor for WidgetMusicItem(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v31 = v15 + 56;
  v32 = v16;
  v16(v9, 1, 1, v14);
  sub_1000089F8(v9, v7, &qword_10118F120, &unk_100ED5660);
  v17 = v13 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentItem;
  swift_beginAccess();
  v30 = sub_10010FC20(&qword_10118F108, &qword_100ECB5F0);
  sub_100714C40(*(v17 + *(v30 + 44)), *(v17 + *(v30 + 44) + 8), v7);
  sub_1000095E8(v7, &qword_10118F120, &unk_100ED5660);
  swift_endAccess();
  sub_1000095E8(v9, &qword_10118F120, &unk_100ED5660);
  v18 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  sub_1000089F8(v5, v3, &qword_10118F130, &qword_100ECB640);
  v19 = v13 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentItemProgress;
  swift_beginAccess();
  v20 = sub_10010FC20(&qword_10118F110, &qword_100ECB5F8);
  sub_100715B4C(*(v19 + *(v20 + 44)), *(v19 + *(v20 + 44) + 8), v3);
  sub_1000095E8(v3, &qword_10118F130, &qword_100ECB640);
  swift_endAccess();
  sub_1000095E8(v5, &qword_10118F130, &qword_100ECB640);
  v21 = v13 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__codableCurrentItemBackground;
  swift_beginAccess();
  v22 = sub_10010FC20(&qword_10118F118, &unk_100ECB600);
  sub_100715450(*(v21 + *(v22 + 44)), *(v21 + *(v22 + 44) + 8), 1);
  swift_endAccess();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Clearing current container and background", v25, 2u);
  }

  v32(v9, 1, 1, v14);
  sub_1000089F8(v9, v7, &qword_10118F120, &unk_100ED5660);
  v26 = v13 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentContainer;
  swift_beginAccess();
  sub_100714C40(*(v26 + *(v30 + 44)), *(v26 + *(v30 + 44) + 8), v7);
  sub_1000095E8(v7, &qword_10118F120, &unk_100ED5660);
  swift_endAccess();
  sub_1000095E8(v9, &qword_10118F120, &unk_100ED5660);
  v27 = v13 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__codableCurrentContainerBackground;
  swift_beginAccess();
  sub_100715450(*(v27 + *(v22 + 44)), *(v27 + *(v22 + 44) + 8), 1);
  return swift_endAccess();
}

void sub_100411AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118F138, &qword_100ECB648);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = aBlock - v6;
  v8 = objc_opt_self();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_10041F944;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000603D0;
  aBlock[3] = &unk_1010AB560;
  v11 = _Block_copy(aBlock);

  [v8 getActiveRouteWithCompletion:v11];
  _Block_release(v11);
}

double sub_100411C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_10118F138, &qword_100ECB648);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = aBlock - v8;
  v10 = [objc_allocWithZone(MPCPlayerRequest) init];
  MPCPlaybackEngine.Configuration.systemMusic.unsafeMutableAddressor();

  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() pathWithRoute:a1 bundleID:0 playerID:v11];

  [v10 setPlayerPath:v12];
  (*(v7 + 16))(v9, a3, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = v10;
  (*(v7 + 32))(v14 + v13, v9, v6);
  aBlock[4] = sub_10041F9C4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B378;
  aBlock[3] = &unk_1010AB5B0;
  v15 = _Block_copy(aBlock);

  v16 = v10;

  v17 = [v16 performWithCompletion:v15];
  _Block_release(v15);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_100411F0C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v5 = [a1 state];
    v6 = v5 - 2;
    if (v5 - 2 <= 4 && ((0x1Du >> v6) & 1) != 0)
    {
      v7 = 8 * v6;
      v8 = 0x100010000uLL >> (v7 & 0xF8);
      v5 = *(&unk_100ECB820 + v7);
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
  }

  LOBYTE(v8) = 2;
LABEL_7:
  v9 = a4;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136446722;
    v13 = String.init<A>(describing:)();
    v15 = v14;
    v16 = sub_1000105AC(v13, v14, &v27);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    if (v5 <= 6)
    {
      v15 = off_1010AB730[v5];
      v17 = off_1010AB6F8[v5];
    }

    v18 = v15;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_1000105AC(v19, v21, &v27);

    *(v12 + 14) = v22;
    *(v12 + 22) = 2082;
    [v9 playerPath];
    sub_10010FC20(&qword_10118F140, &qword_100ECB650);
    v23 = String.init<A>(describing:)();
    v25 = sub_1000105AC(v23, v24, &v27);

    *(v12 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v10, v11, "Widget state: %{public}s, mpcState: %{public}s, path: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  LOBYTE(v27) = v8;
  sub_10010FC20(&qword_10118F138, &qword_100ECB648);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1004121B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x646573756170;
  if (v2 != 1)
  {
    v4 = 0x646570706F7473;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E6979616C70;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x646573756170;
  if (*a2 != 1)
  {
    v8 = 0x646570706F7473;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E6979616C70;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1004122AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10041234C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1004123D8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100412474@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10041FBD4(*a1);
  *a2 = result;
  return result;
}

void sub_1004124A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x646573756170;
  if (v2 != 1)
  {
    v5 = 0x646570706F7473;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E6979616C70;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100412500(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  sub_10010FC20(&qword_10118F120, &unk_100ED5660);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v4 = type metadata accessor for WidgetMusicItem(0);
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[27] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[28] = v6;
  v3[29] = v5;

  return _swift_task_switch(sub_100412654, v6, v5);
}

uint64_t sub_100412654()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = v0[18];
    v3 = v1;
    v4 = v2;
    v5 = swift_task_alloc();
    v0[30] = v5;
    *v5 = v0;
    v5[1] = sub_100412924;
    v6 = v0[22];
    v7 = v0[18];

    return sub_100413238(v6, v3, v7, 1);
  }

  else
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Clearing current item and background", v11, 2u);
    }

    v12 = v0[23];
    v13 = v0[24];
    v15 = v0[20];
    v14 = v0[21];
    v16 = v0[19];

    v17 = *(v16 + 16);
    (*(v13 + 56))(v14, 1, 1, v12);
    sub_1000089F8(v14, v15, &qword_10118F120, &unk_100ED5660);
    v18 = v17 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentItem;
    swift_beginAccess();
    v19 = sub_10010FC20(&qword_10118F108, &qword_100ECB5F0);
    sub_100714C40(*(v18 + *(v19 + 44)), *(v18 + *(v19 + 44) + 8), v15);
    sub_1000095E8(v15, &qword_10118F120, &unk_100ED5660);
    swift_endAccess();
    sub_1000095E8(v14, &qword_10118F120, &unk_100ED5660);
    v20 = v17 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__codableCurrentItemBackground;
    swift_beginAccess();
    v21 = sub_10010FC20(&qword_10118F118, &unk_100ECB600);
    sub_100715450(*(v20 + *(v21 + 44)), *(v20 + *(v21 + 44) + 8), 1);
    swift_endAccess();

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_100412924()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_100412A44, v3, v2);
}

uint64_t sub_100412A44()
{
  v41 = v0;
  v1 = v0[22];
  if ((*(v0[24] + 48))(v1, 1, v0[23]) == 1)
  {
    v2 = v0[17];

    sub_1000095E8(v1, &qword_10118F120, &unk_100ED5660);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Clearing current item and background", v5, 2u);
    }

    v6 = v0[23];
    v7 = v0[24];
    v9 = v0[20];
    v8 = v0[21];
    v10 = v0[19];

    v11 = *(v10 + 16);
    (*(v7 + 56))(v8, 1, 1, v6);
    sub_1000089F8(v8, v9, &qword_10118F120, &unk_100ED5660);
    v12 = v11 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentItem;
    swift_beginAccess();
    v13 = sub_10010FC20(&qword_10118F108, &qword_100ECB5F0);
    sub_100714C40(*(v12 + *(v13 + 44)), *(v12 + *(v13 + 44) + 8), v9);
    sub_1000095E8(v9, &qword_10118F120, &unk_100ED5660);
    swift_endAccess();
    sub_1000095E8(v8, &qword_10118F120, &unk_100ED5660);
    v14 = v11 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__codableCurrentItemBackground;
    swift_beginAccess();
    v15 = sub_10010FC20(&qword_10118F118, &unk_100ECB600);
    sub_100715450(*(v14 + *(v15 + 44)), *(v14 + *(v15 + 44) + 8), 1);
    swift_endAccess();

    v16 = v0[1];

    return v16();
  }

  else
  {
    v19 = v0[25];
    v18 = v0[26];
    sub_10041F8DC(v1, v18, type metadata accessor for WidgetMusicItem);
    sub_10041F80C(v18, v19, type metadata accessor for WidgetMusicItem);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[25];
    if (v22)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = v25;
      *v24 = 136446210;
      v26 = sub_100439864();
      v28 = v27;
      sub_10041F874(v23, type metadata accessor for WidgetMusicItem);
      v29 = sub_1000105AC(v26, v28, &v40);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "Updating current item: %{public}s", v24, 0xCu);
      sub_10000959C(v25);
    }

    else
    {

      sub_10041F874(v23, type metadata accessor for WidgetMusicItem);
    }

    v30 = v0[26];
    v32 = v0[23];
    v31 = v0[24];
    v34 = v0[20];
    v33 = v0[21];
    v35 = *(v0[19] + 16);
    v0[31] = v35;
    sub_10041F80C(v30, v33, type metadata accessor for WidgetMusicItem);
    (*(v31 + 56))(v33, 0, 1, v32);
    sub_1000089F8(v33, v34, &qword_10118F120, &unk_100ED5660);
    v36 = v35 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentItem;
    swift_beginAccess();
    v37 = sub_10010FC20(&qword_10118F108, &qword_100ECB5F0);
    sub_100714C40(*(v36 + *(v37 + 44)), *(v36 + *(v37 + 44) + 8), v34);
    sub_1000095E8(v34, &qword_10118F120, &unk_100ED5660);
    swift_endAccess();
    sub_1000095E8(v33, &qword_10118F120, &unk_100ED5660);
    v38 = *(v30 + *(v32 + 100));
    v39 = swift_task_alloc();
    v0[32] = v39;
    *v39 = v0;
    v39[1] = sub_100412FA0;

    return sub_10041D340(v38);
  }
}

uint64_t sub_100412FA0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 264) = a1;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);

  return _swift_task_switch(sub_1004130C8, v4, v3);
}

uint64_t sub_1004130C8()
{
  v1 = v0[33];
  v2 = v0[31];

  v3 = v2 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__codableCurrentItemBackground;
  if (v1)
  {
    v4 = v0[33];
    v5 = v0[17];
    swift_beginAccess();
    v6 = sub_10010FC20(&qword_10118F118, &unk_100ECB600);
    sub_100715450(*(v3 + *(v6 + 44)), *(v3 + *(v6 + 44) + 8), v4);
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    v7 = sub_10010FC20(&qword_10118F118, &unk_100ECB600);
    sub_100715450(*(v3 + *(v7 + 44)), *(v3 + *(v7 + 44) + 8), 1);
    swift_endAccess();
    v4 = v0[17];
  }

  v8 = v0[26];

  sub_10041F874(v8, type metadata accessor for WidgetMusicItem);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100413238(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 1408) = a4;
  *(v4 + 304) = a2;
  *(v4 + 312) = a3;
  *(v4 + 296) = a1;
  v5 = type metadata accessor for MusicMovie();
  *(v4 + 320) = v5;
  *(v4 + 328) = *(v5 - 8);
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  v6 = type metadata accessor for TVEpisode();
  *(v4 + 352) = v6;
  *(v4 + 360) = *(v6 - 8);
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();
  v7 = type metadata accessor for MusicVideo();
  *(v4 + 384) = v7;
  *(v4 + 392) = *(v7 - 8);
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  sub_10010FC20(&qword_1011831D0, &unk_100EC4CD0);
  *(v4 + 432) = swift_task_alloc();
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  *(v4 + 440) = swift_task_alloc();
  v8 = type metadata accessor for MusicSiriRepresentation();
  *(v4 + 448) = v8;
  *(v4 + 456) = *(v8 - 8);
  *(v4 + 464) = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  *(v4 + 472) = swift_task_alloc();
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  *(v4 + 480) = swift_task_alloc();
  *(v4 + 488) = swift_task_alloc();
  *(v4 + 496) = swift_task_alloc();
  *(v4 + 504) = swift_task_alloc();
  *(v4 + 512) = swift_task_alloc();
  *(v4 + 520) = swift_task_alloc();
  *(v4 + 528) = swift_task_alloc();
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  *(v4 + 536) = swift_task_alloc();
  *(v4 + 544) = swift_task_alloc();
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  *(v4 + 584) = swift_task_alloc();
  *(v4 + 592) = swift_task_alloc();
  *(v4 + 600) = swift_task_alloc();
  *(v4 + 608) = swift_task_alloc();
  *(v4 + 616) = swift_task_alloc();
  *(v4 + 624) = swift_task_alloc();
  *(v4 + 632) = swift_task_alloc();
  *(v4 + 640) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v4 + 648) = v9;
  *(v4 + 656) = *(v9 - 8);
  *(v4 + 664) = swift_task_alloc();
  *(v4 + 672) = swift_task_alloc();
  *(v4 + 680) = swift_task_alloc();
  *(v4 + 688) = swift_task_alloc();
  *(v4 + 696) = swift_task_alloc();
  *(v4 + 704) = swift_task_alloc();
  *(v4 + 712) = swift_task_alloc();
  v10 = type metadata accessor for Song();
  *(v4 + 720) = v10;
  *(v4 + 728) = *(v10 - 8);
  *(v4 + 736) = swift_task_alloc();
  *(v4 + 744) = swift_task_alloc();
  v11 = type metadata accessor for Station();
  *(v4 + 752) = v11;
  *(v4 + 760) = *(v11 - 8);
  *(v4 + 768) = swift_task_alloc();
  *(v4 + 776) = swift_task_alloc();
  *(v4 + 784) = swift_task_alloc();
  *(v4 + 792) = swift_task_alloc();
  v12 = type metadata accessor for Playlist();
  *(v4 + 800) = v12;
  *(v4 + 808) = *(v12 - 8);
  *(v4 + 816) = swift_task_alloc();
  *(v4 + 824) = swift_task_alloc();
  *(v4 + 832) = swift_task_alloc();
  *(v4 + 840) = swift_task_alloc();
  v13 = type metadata accessor for Album();
  *(v4 + 848) = v13;
  *(v4 + 856) = *(v13 - 8);
  *(v4 + 864) = swift_task_alloc();
  *(v4 + 872) = swift_task_alloc();
  *(v4 + 880) = swift_task_alloc();
  *(v4 + 888) = swift_task_alloc();
  v14 = type metadata accessor for WidgetMusicItem(0);
  *(v4 + 896) = v14;
  *(v4 + 904) = *(v14 - 8);
  *(v4 + 912) = swift_task_alloc();

  return _swift_task_switch(sub_100413954, 0, 0);
}

uint64_t sub_100413954()
{
  sub_10041E844((v0 + 56));
  v1 = *(v0 + 312);
  if (*(v0 + 80))
  {
    sub_100188D80((v0 + 56), v0 + 16);
    if (v1)
    {
      v2 = *(v0 + 312);
      sub_10041E844((v0 + 96));
    }

    else
    {
      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
    }

    sub_1000089F8(v0 + 96, v0 + 136, &qword_101182C38, &unk_100ECB2A0);
    if (*(v0 + 160))
    {
      sub_1000089F8(v0 + 136, v0 + 256, &qword_101182C38, &unk_100ECB2A0);
      sub_10010FC20(&qword_101182C50, &unk_100EBE7E0);
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 880);
        v6 = *(v0 + 856);
        v7 = *(v0 + 848);
        (*(v6 + 32))(v5, *(v0 + 888), v7);
        v8 = Album.id.getter();
        v10 = v9;
        v11 = Album.catalogID.getter();
LABEL_13:
        v14 = v11;
        v15 = v12;
        (*(v6 + 8))(v5, v7);
        sub_10000959C((v0 + 256));
LABEL_21:
        *(v0 + 944) = v10;
        *(v0 + 936) = v8;
        *(v0 + 928) = v15;
        *(v0 + 920) = v14;
        sub_1000095E8(v0 + 136, &qword_101182C38, &unk_100ECB2A0);
        v23 = *(v0 + 40);
        v22 = *(v0 + 48);
        sub_10000954C((v0 + 16), v23);
        v24 = swift_task_alloc();
        *(v0 + 952) = v24;
        *v24 = v0;
        v24[1] = sub_10041403C;

        return sub_100438318(v23, v22);
      }

      if (swift_dynamicCast())
      {
        v5 = *(v0 + 832);
        v6 = *(v0 + 808);
        v7 = *(v0 + 800);
        (*(v6 + 32))(v5, *(v0 + 840), v7);
        v8 = Playlist.id.getter();
        v10 = v13;
        v11 = Playlist.catalogID.getter();
        goto LABEL_13;
      }

      if (swift_dynamicCast())
      {
        v16 = *(v0 + 784);
        v17 = *(v0 + 760);
        v18 = *(v0 + 752);
        (*(v17 + 32))(v16, *(v0 + 792), v18);
        v8 = Station.id.getter();
        v10 = v19;
        (*(v17 + 8))(v16, v18);
        v20 = (v0 + 256);
LABEL_19:
        sub_10000959C(v20);
        v14 = 0;
        v15 = 0;
        goto LABEL_21;
      }

      sub_10000959C((v0 + 256));
    }

    sub_1000089F8(v0 + 96, v0 + 176, &qword_101182C38, &unk_100ECB2A0);
    v8 = *(v0 + 200);
    if (!v8)
    {
      sub_1000095E8(v0 + 176, &qword_101182C38, &unk_100ECB2A0);
      v14 = 0;
      v15 = 0;
      v10 = 0;
      goto LABEL_21;
    }

    sub_10000954C((v0 + 176), *(v0 + 200));
    v8 = dispatch thunk of MusicItem.id.getter();
    v10 = v21;
    v20 = (v0 + 176);
    goto LABEL_19;
  }

  sub_1000095E8(v0 + 56, &qword_101182C38, &unk_100ECB2A0);
  (*(*(v0 + 904) + 56))(*(v0 + 296), 1, 1, *(v0 + 896));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10041403C(char a1)
{
  *(*v1 + 1409) = a1;

  return _swift_task_switch(sub_10041413C, 0, 0);
}

uint64_t sub_10041413C()
{
  sub_100008FE4(v0 + 16, v0 + 216);
  sub_10010FC20(&qword_101182C50, &unk_100EBE7E0);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v12 = *(v0 + 656);
      v13 = *(v0 + 648);
      v14 = *(v0 + 624);
      (*(*(v0 + 392) + 32))(*(v0 + 400), *(v0 + 408), *(v0 + 384));
      *(v0 + 1024) = MusicVideo.title.getter();
      *(v0 + 1032) = v15;
      *(v0 + 1040) = MusicVideo.artistName.getter();
      *(v0 + 1048) = v16;
      MusicVideo.url.getter();
      v17 = *(v12 + 48);
      if (v17(v14, 1, v13) == 1)
      {
        v18 = *(v0 + 648);
        v19 = *(v0 + 616);
        URL.init(string:)();
        result = v17(v19, 1, v18);
        if (result == 1)
        {
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        v20 = *(v0 + 648);
        v21 = *(v0 + 624);
        (*(*(v0 + 656) + 32))(*(v0 + 704), *(v0 + 616), v20);
        if (v17(v21, 1, v20) != 1)
        {
          sub_1000095E8(*(v0 + 624), &qword_101183A20, &unk_100EBCF80);
        }
      }

      else
      {
        (*(*(v0 + 656) + 32))(*(v0 + 704), *(v0 + 624), *(v0 + 648));
      }

      v59 = *(v0 + 520);
      MusicVideo.artwork.getter();
      v60 = type metadata accessor for Artwork();
      *(v0 + 1056) = v60;
      v61 = *(v60 - 8);
      *(v0 + 1064) = v61;
      if ((*(v61 + 48))(v59, 1, v60) != 1)
      {
        if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
        {
          v57 = 140.0;
        }

        else
        {
          v57 = 125.0;
        }

        v113 = swift_task_alloc();
        *(v0 + 1072) = v113;
        *v113 = v0;
        v113[1] = sub_10041749C;
        goto LABEL_108;
      }

      v366 = (v0 + 400);
      v368 = (v0 + 384);
      v365 = (v0 + 392);
      sub_1000095E8(*(v0 + 520), &unk_101188920, &qword_100EBCC50);
      v330 = *(v0 + 1040);
      v337 = *(v0 + 1048);
      v323 = *(v0 + 1024);
      v62 = *(v0 + 1409);
      v352 = *(v0 + 944);
      v356 = *(v0 + 928);
      v346 = *(v0 + 936);
      v349 = *(v0 + 920);
      v26 = *(v0 + 912);
      v27 = *(v0 + 896);
      v364 = (v0 + 704);
      v302 = *(v0 + 656);
      v309 = *(v0 + 648);
      v316 = *(v0 + 704);
      v64 = *(v0 + 464);
      v63 = *(v0 + 472);
      v285 = v63;
      v65 = *(v0 + 448);
      v66 = *(v0 + 456);
      v67 = *(v0 + 432);
      v68 = *(v0 + 440);
      v266 = *(v0 + 424);
      v270 = *(v0 + 416);
      if (*(v0 + 1408) != 2)
      {
        v62 = *(v0 + 1408);
      }

      v343 = v62;
      v69 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
      (*(*(v69 - 8) + 56))(v63, 5, 11, v69);
      v70 = MusicVideo.id.getter();
      v291 = v71;
      v296 = v70;
      v72 = MusicVideo.catalogID.getter();
      v276 = v73;
      v280 = v72;
      MusicVideo.siriRepresentation.getter();
      v74 = MusicSiriRepresentation.id.getter();
      v273 = v75;
      v274 = v74;
      (*(v66 + 8))(v64, v65);
      sub_10010FC20(&qword_10118F128, &unk_100ECB620);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_100EBDC20;
      MusicVideo.contentRating.getter();
      *(v41 + 32) = TextBadge.init(for:isPlayable:)(v68, 1);
      MusicVideo.favoriteStatus.getter();
      v76 = type metadata accessor for MusicFavoriteStatus();
      (*(*(v76 - 8) + 56))(v67, 0, 1, v76);
      *(v41 + 33) = TextBadge.init(for:)(v67);
      v77 = type metadata accessor for Date();
      v78 = *(*(v77 - 8) + 56);
      v45 = v266;
      v78(v266, 1, 1, v77);
      v46 = v270;
      v78(v270, 1, 1, v77);
      v360 = (v26 + v27[25]);
      *v360 = 0;
      *(v26 + v27[26]) = _swiftEmptyArrayStorage;
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = v323;
      *(v26 + 32) = v330;
      *(v26 + 40) = v337;
      (*(v302 + 16))(v26 + v27[7], v316, v309);
      sub_10041F80C(v285, v26 + v27[23], type metadata accessor for ArtworkImage.Placeholder);
      *(v26 + v27[24]) = 0x3FFC71C71C71C71CLL;
      v79 = v27[8];
      v80 = 5;
LABEL_30:
      *(v26 + v79) = v80;
LABEL_31:
      v81 = (v26 + v27[9]);
      *v81 = v296;
      v81[1] = v291;
      v82 = (v26 + v27[10]);
      v83 = v276;
      v84 = v280;
LABEL_32:
      *v82 = v84;
      v82[1] = v83;
      v85 = (v26 + v27[11]);
      *v85 = v274;
      v85[1] = v273;
      v86 = (v26 + v27[12]);
      *v86 = v346;
      v86[1] = v352;
      v87 = (v26 + v27[13]);
      *v87 = v349;
      v87[1] = v356;
      v88 = (v26 + v27[14]);
      *v88 = 0;
      v88[1] = 0;
      *(v26 + v27[15]) = v41;
      *(v26 + v27[16]) = v343 & 1;
      sub_1000089F8(v45, v26 + v27[17], &qword_101188C20, &qword_100EC2030);
      sub_1000089F8(v46, v26 + v27[18], &qword_101188C20, &qword_100EC2030);
      v89 = (v26 + v27[19]);
      *v89 = 0;
      v89[1] = 0;
      *(v26 + v27[20]) = _swiftEmptyArrayStorage;
      v90 = v26 + v27[21];
      *v90 = 0;
      *(v90 + 8) = 0;
      *(v90 + 16) = 0;
      *(v90 + 24) = 1;
      v91 = v27[22];
LABEL_33:
      v92 = v26 + v91;
      *v92 = 0;
      *(v92 + 8) = 0;
      *(v92 + 16) = 0;
      *(v92 + 24) = 1;
      sub_10043975C(_swiftEmptyArrayStorage);
      v353 = *v368;
      v357 = *v366;
      v93 = *v365;
      v94 = *v364;
      v95 = *(v0 + 656);
      v96 = *(v0 + 648);
      v97 = *(v0 + 472);
      v99 = *(v0 + 416);
      v98 = *(v0 + 424);
      v100 = *(v0 + 312);
      v367 = *(v0 + 296);
      v369 = *(v0 + 912);

      sub_1000095E8(v99, &qword_101188C20, &qword_100EC2030);
      sub_1000095E8(v98, &qword_101188C20, &qword_100EC2030);
      sub_10041F874(v97, type metadata accessor for ArtworkImage.Placeholder);
      (*(v95 + 8))(v94, v96);
      (*(v93 + 8))(v357, v353);
      sub_1000095E8(v0 + 96, &qword_101182C38, &unk_100ECB2A0);
      *v360 = 0;
      sub_10000959C((v0 + 216));
      sub_10000959C((v0 + 16));
      sub_10041F8DC(v369, v367, type metadata accessor for WidgetMusicItem);
      v101 = 0;
LABEL_34:
      (*(*(v0 + 904) + 56))(*(v0 + 296), v101, 1, *(v0 + 896));

      v102 = *(v0 + 8);

      return v102();
    }

    if (swift_dynamicCast())
    {
      v47 = *(v0 + 656);
      v48 = *(v0 + 648);
      v49 = *(v0 + 608);
      (*(*(v0 + 360) + 32))(*(v0 + 368), *(v0 + 376), *(v0 + 352));
      *(v0 + 1088) = TVEpisode.title.getter();
      *(v0 + 1096) = v50;
      *(v0 + 1104) = TVEpisode.showName.getter();
      *(v0 + 1112) = v51;
      TVEpisode.url.getter();
      v52 = *(v47 + 48);
      if (v52(v49, 1, v48) == 1)
      {
        v53 = *(v0 + 648);
        v54 = *(v0 + 600);
        URL.init(string:)();
        result = v52(v54, 1, v53);
        if (result == 1)
        {
LABEL_113:
          __break(1u);
          goto LABEL_114;
        }

        v55 = *(v0 + 648);
        v56 = *(v0 + 608);
        (*(*(v0 + 656) + 32))(*(v0 + 696), *(v0 + 600), v55);
        if (v52(v56, 1, v55) != 1)
        {
          sub_1000095E8(*(v0 + 608), &qword_101183A20, &unk_100EBCF80);
        }
      }

      else
      {
        (*(*(v0 + 656) + 32))(*(v0 + 696), *(v0 + 608), *(v0 + 648));
      }

      v114 = *(v0 + 512);
      TVEpisode.artwork.getter();
      v115 = type metadata accessor for Artwork();
      *(v0 + 1120) = v115;
      v116 = *(v115 - 8);
      *(v0 + 1128) = v116;
      if ((*(v116 + 48))(v114, 1, v115) != 1)
      {
        if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
        {
          v57 = 140.0;
        }

        else
        {
          v57 = 125.0;
        }

        v148 = swift_task_alloc();
        *(v0 + 1136) = v148;
        *v148 = v0;
        v148[1] = sub_100417E20;
        goto LABEL_108;
      }

      v366 = (v0 + 368);
      v368 = (v0 + 352);
      v365 = (v0 + 360);
      sub_1000095E8(*(v0 + 512), &unk_101188920, &qword_100EBCC50);
      v331 = *(v0 + 1104);
      v338 = *(v0 + 1112);
      v324 = *(v0 + 1088);
      v117 = *(v0 + 1409);
      v354 = *(v0 + 944);
      v358 = *(v0 + 928);
      v347 = *(v0 + 936);
      v350 = *(v0 + 920);
      v26 = *(v0 + 912);
      v118 = *(v0 + 896);
      v364 = (v0 + 696);
      v119 = *(v0 + 656);
      v310 = *(v0 + 648);
      v317 = *(v0 + 696);
      v121 = *(v0 + 464);
      v120 = *(v0 + 472);
      v297 = v120;
      v122 = *(v0 + 456);
      v361 = *(v0 + 448);
      v124 = *(v0 + 416);
      v123 = *(v0 + 424);
      if (*(v0 + 1408) != 2)
      {
        v117 = *(v0 + 1408);
      }

      v344 = v117;
      v125 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
      (*(*(v125 - 8) + 56))(v120, 6, 11, v125);
      v126 = TVEpisode.id.getter();
      v303 = v127;
      v128 = TVEpisode.catalogID.getter();
      v286 = v129;
      v292 = v128;
      TVEpisode.siriRepresentation.getter();
      v130 = MusicSiriRepresentation.id.getter();
      v277 = v131;
      v281 = v130;
      (*(v122 + 8))(v121, v361);
      v132 = type metadata accessor for Date();
      v133 = *(*(v132 - 8) + 56);
      v133(v123, 1, 1, v132);
      v133(v124, 1, 1, v132);
      v360 = (v26 + v118[25]);
      *v360 = 0;
      *(v26 + v118[26]) = _swiftEmptyArrayStorage;
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = v324;
      *(v26 + 32) = v331;
      *(v26 + 40) = v338;
      (*(v119 + 16))(v26 + v118[7], v317, v310);
      sub_10041F80C(v297, v26 + v118[23], type metadata accessor for ArtworkImage.Placeholder);
      *(v26 + v118[24]) = 0x3FFC71C71C71C71CLL;
      *(v26 + v118[8]) = 6;
      v134 = (v26 + v118[9]);
      *v134 = v126;
      v134[1] = v303;
      v135 = (v26 + v118[10]);
      v136 = v286;
      v137 = v292;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        if (!swift_dynamicCast())
        {
          if (!swift_dynamicCast())
          {
            if (!swift_dynamicCast())
            {
              v236 = *(v0 + 304);
              v235 = *(v0 + 312);
              sub_1000095E8(v0 + 96, &qword_101182C38, &unk_100ECB2A0);

              sub_10000959C((v0 + 216));
              sub_10000959C((v0 + 16));
              v101 = 1;
              goto LABEL_34;
            }

            v204 = *(v0 + 656);
            v205 = *(v0 + 648);
            v206 = *(v0 + 544);
            (*(*(v0 + 760) + 32))(*(v0 + 768), *(v0 + 776), *(v0 + 752));
            *(v0 + 1344) = Station.name.getter();
            *(v0 + 1352) = v207;
            *(v0 + 1360) = Station.stationProviderName.getter();
            *(v0 + 1368) = v208;
            Station.url.getter();
            v209 = *(v204 + 48);
            if (v209(v206, 1, v205) == 1)
            {
              v210 = *(v0 + 648);
              v211 = *(v0 + 536);
              URL.init(string:)();
              result = v209(v211, 1, v210);
              if (result == 1)
              {
LABEL_117:
                __break(1u);
                return result;
              }

              v212 = *(v0 + 648);
              v213 = *(v0 + 544);
              (*(*(v0 + 656) + 32))(*(v0 + 664), *(v0 + 536), v212);
              if (v209(v213, 1, v212) != 1)
              {
                sub_1000095E8(*(v0 + 544), &qword_101183A20, &unk_100EBCF80);
              }
            }

            else
            {
              (*(*(v0 + 656) + 32))(*(v0 + 664), *(v0 + 544), *(v0 + 648));
            }

            v238 = *(v0 + 480);
            Station.artwork.getter();
            v239 = type metadata accessor for Artwork();
            *(v0 + 1376) = v239;
            v240 = *(v239 - 8);
            *(v0 + 1384) = v240;
            if ((*(v240 + 48))(v238, 1, v239) == 1)
            {
              v366 = (v0 + 768);
              v368 = (v0 + 752);
              v365 = (v0 + 760);
              sub_1000095E8(*(v0 + 480), &unk_101188920, &qword_100EBCC50);
              v335 = *(v0 + 1360);
              v342 = *(v0 + 1368);
              v328 = *(v0 + 1344);
              v241 = *(v0 + 1409);
              v355 = *(v0 + 944);
              v359 = *(v0 + 928);
              v348 = *(v0 + 936);
              v351 = *(v0 + 920);
              v26 = *(v0 + 912);
              v242 = *(v0 + 896);
              v364 = (v0 + 664);
              v243 = *(v0 + 656);
              v314 = *(v0 + 648);
              v321 = *(v0 + 664);
              v245 = *(v0 + 464);
              v244 = *(v0 + 472);
              v295 = v244;
              v247 = *(v0 + 448);
              v246 = *(v0 + 456);
              v248 = *(v0 + 440);
              if (*(v0 + 1408) != 2)
              {
                v241 = *(v0 + 1408);
              }

              v345 = v241;
              v275 = *(v0 + 424);
              v279 = *(v0 + 416);
              v249 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
              (*(*(v249 - 8) + 56))(v244, 9, 11, v249);
              v307 = Station.id.getter();
              v300 = v250;
              Station.siriRepresentation.getter();
              v251 = MusicSiriRepresentation.id.getter();
              v283 = v252;
              v290 = v251;
              (*(v246 + 8))(v245, v247);
              sub_10010FC20(&qword_10118F128, &unk_100ECB620);
              v253 = swift_allocObject();
              *(v253 + 16) = xmmword_100EBC6B0;
              Station.contentRating.getter();
              *(v253 + 32) = TextBadge.init(for:isPlayable:)(v248, 1);
              v254 = type metadata accessor for Date();
              v255 = *(*(v254 - 8) + 56);
              v255(v275, 1, 1, v254);
              v255(v279, 1, 1, v254);
              v360 = (v26 + v242[25]);
              *v360 = 0;
              *(v26 + v242[26]) = _swiftEmptyArrayStorage;
              *v26 = 0;
              *(v26 + 8) = 0;
              *(v26 + 16) = v328;
              *(v26 + 32) = v335;
              *(v26 + 40) = v342;
              (*(v243 + 16))(v26 + v242[7], v321, v314);
              sub_10041F80C(v295, v26 + v242[23], type metadata accessor for ArtworkImage.Placeholder);
              *(v26 + v242[24]) = 0x3FF0000000000000;
              *(v26 + v242[8]) = 4;
              v256 = (v26 + v242[9]);
              *v256 = v307;
              v256[1] = v300;
              v257 = (v26 + v242[10]);
              *v257 = 0;
              v257[1] = 0;
              v258 = (v26 + v242[11]);
              *v258 = v290;
              v258[1] = v283;
              v259 = (v26 + v242[12]);
              *v259 = v348;
              v259[1] = v355;
              v260 = (v26 + v242[13]);
              *v260 = v351;
              v260[1] = v359;
              v261 = (v26 + v242[14]);
              *v261 = 0;
              v261[1] = 0;
              *(v26 + v242[15]) = v253;
              *(v26 + v242[16]) = v345 & 1;
              sub_1000089F8(v275, v26 + v242[17], &qword_101188C20, &qword_100EC2030);
              sub_1000089F8(v279, v26 + v242[18], &qword_101188C20, &qword_100EC2030);
              v262 = (v26 + v242[19]);
              *v262 = 0;
              v262[1] = 0;
              *(v26 + v242[20]) = _swiftEmptyArrayStorage;
              v263 = v26 + v242[21];
              *v263 = 0;
              *(v263 + 8) = 0;
              *(v263 + 16) = 0;
              *(v263 + 24) = 1;
              v91 = v242[22];
              goto LABEL_33;
            }

            if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
            {
              v57 = 140.0;
            }

            else
            {
              v57 = 125.0;
            }

            v264 = swift_task_alloc();
            *(v0 + 1392) = v264;
            *v264 = v0;
            v264[1] = sub_10041A294;
            goto LABEL_108;
          }

          v173 = *(v0 + 656);
          v174 = *(v0 + 648);
          v175 = *(v0 + 560);
          (*(*(v0 + 808) + 32))(*(v0 + 816), *(v0 + 824), *(v0 + 800));
          *(v0 + 1280) = Playlist.name.getter();
          *(v0 + 1288) = v176;
          *(v0 + 1296) = Playlist.curatorName.getter();
          *(v0 + 1304) = v177;
          Playlist.url.getter();
          v178 = *(v173 + 48);
          if (v178(v175, 1, v174) == 1)
          {
            v179 = *(v0 + 648);
            v180 = *(v0 + 552);
            URL.init(string:)();
            result = v178(v180, 1, v179);
            if (result == 1)
            {
LABEL_116:
              __break(1u);
              goto LABEL_117;
            }

            v181 = *(v0 + 648);
            v182 = *(v0 + 560);
            (*(*(v0 + 656) + 32))(*(v0 + 672), *(v0 + 552), v181);
            if (v178(v182, 1, v181) != 1)
            {
              sub_1000095E8(*(v0 + 560), &qword_101183A20, &unk_100EBCF80);
            }
          }

          else
          {
            (*(*(v0 + 656) + 32))(*(v0 + 672), *(v0 + 560), *(v0 + 648));
          }

          v215 = *(v0 + 488);
          Playlist.artwork.getter();
          v216 = type metadata accessor for Artwork();
          *(v0 + 1312) = v216;
          v217 = *(v216 - 8);
          *(v0 + 1320) = v217;
          if ((*(v217 + 48))(v215, 1, v216) == 1)
          {
            v366 = (v0 + 816);
            v368 = (v0 + 800);
            v365 = (v0 + 808);
            sub_1000095E8(*(v0 + 488), &unk_101188920, &qword_100EBCC50);
            v334 = *(v0 + 1296);
            v341 = *(v0 + 1304);
            v327 = *(v0 + 1280);
            v218 = *(v0 + 1409);
            v352 = *(v0 + 944);
            v356 = *(v0 + 928);
            v346 = *(v0 + 936);
            v349 = *(v0 + 920);
            v26 = *(v0 + 912);
            v27 = *(v0 + 896);
            v306 = *(v0 + 656);
            v313 = *(v0 + 648);
            v320 = *(v0 + 672);
            v220 = *(v0 + 464);
            v219 = *(v0 + 472);
            v221 = *(v0 + 456);
            v363 = *(v0 + 448);
            v364 = (v0 + 672);
            v222 = *(v0 + 432);
            v223 = *(v0 + 440);
            if (*(v0 + 1408) != 2)
            {
              v218 = *(v0 + 1408);
            }

            v343 = v218;
            v268 = *(v0 + 424);
            v272 = *(v0 + 416);
            v278 = *(v0 + 472);
            Playlist.variant.getter();
            v224 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
            (*(*(v224 - 8) + 56))(v219, 0, 11, v224);
            v225 = Playlist.id.getter();
            v294 = v226;
            v299 = v225;
            v227 = Playlist.catalogID.getter();
            v282 = v228;
            v289 = v227;
            Playlist.siriRepresentation.getter();
            v229 = MusicSiriRepresentation.id.getter();
            v273 = v230;
            v274 = v229;
            (*(v221 + 8))(v220, v363);
            sub_10010FC20(&qword_10118F128, &unk_100ECB620);
            v41 = swift_allocObject();
            *(v41 + 16) = xmmword_100EBDC20;
            Playlist.contentRating.getter();
            *(v41 + 32) = TextBadge.init(for:isPlayable:)(v223, 1);
            Playlist.favoriteStatus.getter();
            v231 = type metadata accessor for MusicFavoriteStatus();
            (*(*(v231 - 8) + 56))(v222, 0, 1, v231);
            *(v41 + 33) = TextBadge.init(for:)(v222);
            v232 = type metadata accessor for Date();
            v233 = *(*(v232 - 8) + 56);
            v45 = v268;
            v233(v268, 1, 1, v232);
            v46 = v272;
            v233(v272, 1, 1, v232);
            v360 = (v26 + v27[25]);
            *v360 = 0;
            *(v26 + v27[26]) = _swiftEmptyArrayStorage;
            *v26 = 0;
            *(v26 + 8) = 0;
            *(v26 + 16) = v327;
            *(v26 + 32) = v334;
            *(v26 + 40) = v341;
            (*(v306 + 16))(v26 + v27[7], v320, v313);
            sub_10041F80C(v278, v26 + v27[23], type metadata accessor for ArtworkImage.Placeholder);
            *(v26 + v27[24]) = 0x3FF0000000000000;
            *(v26 + v27[8]) = 3;
            v234 = (v26 + v27[9]);
            *v234 = v299;
            v234[1] = v294;
            v82 = (v26 + v27[10]);
            v83 = v282;
            v84 = v289;
            goto LABEL_32;
          }

          if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
          {
            v57 = 140.0;
          }

          else
          {
            v57 = 125.0;
          }

          v237 = swift_task_alloc();
          *(v0 + 1328) = v237;
          *v237 = v0;
          v237[1] = sub_10041991C;
          goto LABEL_108;
        }

        v138 = *(v0 + 656);
        v139 = *(v0 + 648);
        v140 = *(v0 + 576);
        (*(*(v0 + 856) + 32))(*(v0 + 864), *(v0 + 872), *(v0 + 848));
        *(v0 + 1216) = Album.title.getter();
        *(v0 + 1224) = v141;
        *(v0 + 1232) = Album.artistName.getter();
        *(v0 + 1240) = v142;
        Album.url.getter();
        v143 = *(v138 + 48);
        if (v143(v140, 1, v139) == 1)
        {
          v144 = *(v0 + 648);
          v145 = *(v0 + 568);
          URL.init(string:)();
          result = v143(v145, 1, v144);
          if (result == 1)
          {
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }

          v146 = *(v0 + 648);
          v147 = *(v0 + 576);
          (*(*(v0 + 656) + 32))(*(v0 + 680), *(v0 + 568), v146);
          if (v143(v147, 1, v146) != 1)
          {
            sub_1000095E8(*(v0 + 576), &qword_101183A20, &unk_100EBCF80);
          }
        }

        else
        {
          (*(*(v0 + 656) + 32))(*(v0 + 680), *(v0 + 576), *(v0 + 648));
        }

        v184 = *(v0 + 496);
        Album.artwork.getter();
        v185 = type metadata accessor for Artwork();
        *(v0 + 1248) = v185;
        v186 = *(v185 - 8);
        *(v0 + 1256) = v186;
        if ((*(v186 + 48))(v184, 1, v185) != 1)
        {
          if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
          {
            v57 = 140.0;
          }

          else
          {
            v57 = 125.0;
          }

          v214 = swift_task_alloc();
          *(v0 + 1264) = v214;
          *v214 = v0;
          v214[1] = sub_100418FA0;
          goto LABEL_108;
        }

        v366 = (v0 + 864);
        v368 = (v0 + 848);
        v365 = (v0 + 856);
        sub_1000095E8(*(v0 + 496), &unk_101188920, &qword_100EBCC50);
        v333 = *(v0 + 1232);
        v340 = *(v0 + 1240);
        v326 = *(v0 + 1216);
        v187 = *(v0 + 1409);
        v352 = *(v0 + 944);
        v356 = *(v0 + 928);
        v346 = *(v0 + 936);
        v349 = *(v0 + 920);
        v26 = *(v0 + 912);
        v27 = *(v0 + 896);
        v364 = (v0 + 680);
        v305 = *(v0 + 656);
        v312 = *(v0 + 648);
        v319 = *(v0 + 680);
        v189 = *(v0 + 464);
        v188 = *(v0 + 472);
        v288 = v188;
        v190 = *(v0 + 448);
        v191 = *(v0 + 456);
        v192 = *(v0 + 432);
        v193 = *(v0 + 440);
        if (*(v0 + 1408) != 2)
        {
          v187 = *(v0 + 1408);
        }

        v343 = v187;
        v267 = *(v0 + 424);
        v271 = *(v0 + 416);
        v194 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
        (*(*(v194 - 8) + 56))(v188, 1, 11, v194);
        v195 = Album.id.getter();
        v291 = v196;
        v296 = v195;
        v197 = Album.catalogID.getter();
        v276 = v198;
        v280 = v197;
        Album.siriRepresentation.getter();
        v199 = MusicSiriRepresentation.id.getter();
        v273 = v200;
        v274 = v199;
        (*(v191 + 8))(v189, v190);
        sub_10010FC20(&qword_10118F128, &unk_100ECB620);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_100EBDC20;
        Album.contentRating.getter();
        *(v41 + 32) = TextBadge.init(for:isPlayable:)(v193, 1);
        Album.favoriteStatus.getter();
        v201 = type metadata accessor for MusicFavoriteStatus();
        (*(*(v201 - 8) + 56))(v192, 0, 1, v201);
        *(v41 + 33) = TextBadge.init(for:)(v192);
        v202 = type metadata accessor for Date();
        v203 = *(*(v202 - 8) + 56);
        v45 = v267;
        v203(v267, 1, 1, v202);
        v46 = v271;
        v203(v271, 1, 1, v202);
        v360 = (v26 + v27[25]);
        *v360 = 0;
        *(v26 + v27[26]) = _swiftEmptyArrayStorage;
        *v26 = 0;
        *(v26 + 8) = 0;
        *(v26 + 16) = v326;
        *(v26 + 32) = v333;
        *(v26 + 40) = v340;
        (*(v305 + 16))(v26 + v27[7], v319, v312);
        sub_10041F80C(v288, v26 + v27[23], type metadata accessor for ArtworkImage.Placeholder);
        *(v26 + v27[24]) = 0x3FF0000000000000;
        v79 = v27[8];
        v80 = 1;
        goto LABEL_30;
      }

      v103 = *(v0 + 656);
      v104 = *(v0 + 648);
      v105 = *(v0 + 592);
      (*(*(v0 + 328) + 32))(*(v0 + 336), *(v0 + 344), *(v0 + 320));
      *(v0 + 1152) = MusicMovie.title.getter();
      *(v0 + 1160) = v106;
      *(v0 + 1168) = MusicMovie.artistName.getter();
      *(v0 + 1176) = v107;
      MusicMovie.url.getter();
      v108 = *(v103 + 48);
      if (v108(v105, 1, v104) == 1)
      {
        v109 = *(v0 + 648);
        v110 = *(v0 + 584);
        URL.init(string:)();
        result = v108(v110, 1, v109);
        if (result == 1)
        {
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

        v111 = *(v0 + 648);
        v112 = *(v0 + 592);
        (*(*(v0 + 656) + 32))(*(v0 + 688), *(v0 + 584), v111);
        if (v108(v112, 1, v111) != 1)
        {
          sub_1000095E8(*(v0 + 592), &qword_101183A20, &unk_100EBCF80);
        }
      }

      else
      {
        (*(*(v0 + 656) + 32))(*(v0 + 688), *(v0 + 592), *(v0 + 648));
      }

      v149 = *(v0 + 504);
      MusicMovie.artwork.getter();
      v150 = type metadata accessor for Artwork();
      *(v0 + 1184) = v150;
      v151 = *(v150 - 8);
      *(v0 + 1192) = v151;
      if ((*(v151 + 48))(v149, 1, v150) != 1)
      {
        if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
        {
          v57 = 140.0;
        }

        else
        {
          v57 = 125.0;
        }

        v183 = swift_task_alloc();
        *(v0 + 1200) = v183;
        *v183 = v0;
        v183[1] = sub_1004186E4;
        goto LABEL_108;
      }

      v366 = (v0 + 336);
      v368 = (v0 + 320);
      v365 = (v0 + 328);
      sub_1000095E8(*(v0 + 504), &unk_101188920, &qword_100EBCC50);
      v332 = *(v0 + 1168);
      v339 = *(v0 + 1176);
      v325 = *(v0 + 1152);
      v152 = *(v0 + 1409);
      v354 = *(v0 + 944);
      v358 = *(v0 + 928);
      v347 = *(v0 + 936);
      v350 = *(v0 + 920);
      v26 = *(v0 + 912);
      v118 = *(v0 + 896);
      v364 = (v0 + 688);
      v153 = *(v0 + 656);
      v311 = *(v0 + 648);
      v318 = *(v0 + 688);
      v155 = *(v0 + 464);
      v154 = *(v0 + 472);
      v287 = v154;
      v156 = *(v0 + 456);
      v362 = *(v0 + 448);
      v124 = *(v0 + 416);
      v123 = *(v0 + 424);
      if (*(v0 + 1408) != 2)
      {
        v152 = *(v0 + 1408);
      }

      v344 = v152;
      v157 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
      (*(*(v157 - 8) + 56))(v154, 6, 11, v157);
      v158 = MusicMovie.id.getter();
      v304 = v159;
      v160 = MusicMovie.catalogID.getter();
      v293 = v161;
      v298 = v160;
      MusicMovie.siriRepresentation.getter();
      v162 = MusicSiriRepresentation.id.getter();
      v277 = v163;
      v281 = v162;
      (*(v156 + 8))(v155, v362);
      v164 = type metadata accessor for Date();
      v165 = *(*(v164 - 8) + 56);
      v165(v123, 1, 1, v164);
      v165(v124, 1, 1, v164);
      v360 = (v26 + v118[25]);
      *v360 = 0;
      *(v26 + v118[26]) = _swiftEmptyArrayStorage;
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = v325;
      *(v26 + 32) = v332;
      *(v26 + 40) = v339;
      (*(v153 + 16))(v26 + v118[7], v318, v311);
      sub_10041F80C(v287, v26 + v118[23], type metadata accessor for ArtworkImage.Placeholder);
      *(v26 + v118[24]) = 0x3FE5555555555555;
      *(v26 + v118[8]) = 7;
      v166 = (v26 + v118[9]);
      *v166 = v158;
      v166[1] = v304;
      v135 = (v26 + v118[10]);
      v136 = v293;
      v137 = v298;
    }

    *v135 = v137;
    v135[1] = v136;
    v167 = (v26 + v118[11]);
    *v167 = v281;
    v167[1] = v277;
    v168 = (v26 + v118[12]);
    *v168 = v347;
    v168[1] = v354;
    v169 = (v26 + v118[13]);
    *v169 = v350;
    v169[1] = v358;
    v170 = (v26 + v118[14]);
    *v170 = 0;
    v170[1] = 0;
    *(v26 + v118[15]) = _swiftEmptyArrayStorage;
    *(v26 + v118[16]) = v344 & 1;
    sub_1000089F8(v123, v26 + v118[17], &qword_101188C20, &qword_100EC2030);
    sub_1000089F8(v124, v26 + v118[18], &qword_101188C20, &qword_100EC2030);
    v171 = (v26 + v118[19]);
    *v171 = 0;
    v171[1] = 0;
    *(v26 + v118[20]) = _swiftEmptyArrayStorage;
    v172 = v26 + v118[21];
    *v172 = 0;
    *(v172 + 8) = 0;
    *(v172 + 16) = 0;
    *(v172 + 24) = 1;
    v91 = v118[22];
    goto LABEL_33;
  }

  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  (*(*(v0 + 728) + 32))(*(v0 + 736), *(v0 + 744), *(v0 + 720));
  *(v0 + 960) = Song.title.getter();
  *(v0 + 968) = v4;
  *(v0 + 976) = Song.artistName.getter();
  *(v0 + 984) = v5;
  Song.url.getter();
  v6 = *(v1 + 48);
  if (v6(v3, 1, v2) == 1)
  {
    v7 = *(v0 + 648);
    v8 = *(v0 + 632);
    URL.init(string:)();
    result = v6(v8, 1, v7);
    if (result != 1)
    {
      v10 = *(v0 + 648);
      v11 = *(v0 + 640);
      (*(*(v0 + 656) + 32))(*(v0 + 712), *(v0 + 632), v10);
      if (v6(v11, 1, v10) != 1)
      {
        sub_1000095E8(*(v0 + 640), &qword_101183A20, &unk_100EBCF80);
      }

      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_112;
  }

  (*(*(v0 + 656) + 32))(*(v0 + 712), *(v0 + 640), *(v0 + 648));
LABEL_12:
  v22 = *(v0 + 528);
  Song.artwork.getter();
  v23 = type metadata accessor for Artwork();
  *(v0 + 992) = v23;
  v24 = *(v23 - 8);
  *(v0 + 1000) = v24;
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v366 = (v0 + 736);
    v368 = (v0 + 720);
    v365 = (v0 + 728);
    sub_1000095E8(*(v0 + 528), &unk_101188920, &qword_100EBCC50);
    v329 = *(v0 + 976);
    v336 = *(v0 + 984);
    v322 = *(v0 + 960);
    v25 = *(v0 + 1409);
    v352 = *(v0 + 944);
    v356 = *(v0 + 928);
    v346 = *(v0 + 936);
    v349 = *(v0 + 920);
    v26 = *(v0 + 912);
    v27 = *(v0 + 896);
    v364 = (v0 + 712);
    v301 = *(v0 + 656);
    v308 = *(v0 + 648);
    v315 = *(v0 + 712);
    v29 = *(v0 + 464);
    v28 = *(v0 + 472);
    v284 = v28;
    v30 = *(v0 + 448);
    v31 = *(v0 + 456);
    v32 = *(v0 + 432);
    v33 = *(v0 + 440);
    if (*(v0 + 1408) != 2)
    {
      v25 = *(v0 + 1408);
    }

    v343 = v25;
    v265 = *(v0 + 424);
    v269 = *(v0 + 416);
    v34 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
    (*(*(v34 - 8) + 56))(v28, 1, 11, v34);
    v35 = Song.id.getter();
    v291 = v36;
    v296 = v35;
    v37 = Song.catalogID.getter();
    v276 = v38;
    v280 = v37;
    Song.siriRepresentation.getter();
    v39 = MusicSiriRepresentation.id.getter();
    v273 = v40;
    v274 = v39;
    (*(v31 + 8))(v29, v30);
    sub_10010FC20(&qword_10118F128, &unk_100ECB620);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100EBDC20;
    Song.contentRating.getter();
    *(v41 + 32) = TextBadge.init(for:isPlayable:)(v33, 1);
    Song.favoriteStatus.getter();
    v42 = type metadata accessor for MusicFavoriteStatus();
    (*(*(v42 - 8) + 56))(v32, 0, 1, v42);
    *(v41 + 33) = TextBadge.init(for:)(v32);
    v43 = type metadata accessor for Date();
    v44 = *(*(v43 - 8) + 56);
    v45 = v265;
    v44(v265, 1, 1, v43);
    v46 = v269;
    v44(v269, 1, 1, v43);
    v360 = (v26 + v27[25]);
    *v360 = 0;
    *(v26 + v27[26]) = _swiftEmptyArrayStorage;
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = v322;
    *(v26 + 32) = v329;
    *(v26 + 40) = v336;
    (*(v301 + 16))(v26 + v27[7], v315, v308);
    sub_10041F80C(v284, v26 + v27[23], type metadata accessor for ArtworkImage.Placeholder);
    *(v26 + v27[24]) = 0x3FF0000000000000;
    *(v26 + v27[8]) = 0;
    goto LABEL_31;
  }

  if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
  {
    v57 = 140.0;
  }

  else
  {
    v57 = 125.0;
  }

  v58 = swift_task_alloc();
  *(v0 + 1008) = v58;
  *v58 = v0;
  v58[1] = sub_100416B24;
LABEL_108:

  return sub_1005F1854(v57);
}

uint64_t sub_100416B24(uint64_t a1)
{
  v2 = *(*v1 + 1000);
  v3 = *(*v1 + 992);
  v4 = *(*v1 + 528);
  *(*v1 + 1016) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_100416C84, 0, 0);
}

uint64_t sub_100416C84()
{
  v53 = *(v0 + 976);
  v54 = *(v0 + 984);
  v52 = *(v0 + 960);
  v1 = *(v0 + 1409);
  v56 = *(v0 + 936);
  v62 = *(v0 + 928);
  v64 = *(v0 + 1016);
  v58 = *(v0 + 920);
  v60 = *(v0 + 944);
  v2 = *(v0 + 912);
  v3 = *(v0 + 896);
  v49 = *(v0 + 656);
  v50 = *(v0 + 648);
  v51 = *(v0 + 712);
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);
  v45 = v4;
  v6 = *(v0 + 448);
  v7 = *(v0 + 456);
  v8 = *(v0 + 432);
  v9 = *(v0 + 440);
  if (*(v0 + 1408) != 2)
  {
    v1 = *(v0 + 1408);
  }

  v55 = v1;
  v39 = *(v0 + 424);
  v40 = *(v0 + 416);
  v10 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v10 - 8) + 56))(v4, 1, 11, v10);
  v11 = Song.id.getter();
  v46 = v12;
  v47 = v11;
  v44 = Song.catalogID.getter();
  v43 = v13;
  Song.siriRepresentation.getter();
  v14 = MusicSiriRepresentation.id.getter();
  v41 = v15;
  v42 = v14;
  (*(v7 + 8))(v5, v6);
  sub_10010FC20(&qword_10118F128, &unk_100ECB620);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100EBDC20;
  Song.contentRating.getter();
  *(v16 + 32) = TextBadge.init(for:isPlayable:)(v9, 1);
  Song.favoriteStatus.getter();
  v17 = type metadata accessor for MusicFavoriteStatus();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  *(v16 + 33) = TextBadge.init(for:)(v8);
  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 56);
  v19(v39, 1, 1, v18);
  v19(v40, 1, 1, v18);
  v48 = v3[25];
  *(v2 + v48) = 0;
  *(v2 + v3[26]) = _swiftEmptyArrayStorage;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = v52;
  *(v2 + 32) = v53;
  *(v2 + 40) = v54;
  (*(v49 + 16))(v2 + v3[7], v51, v50);
  sub_10041F80C(v45, v2 + v3[23], type metadata accessor for ArtworkImage.Placeholder);
  *(v2 + v3[24]) = 0x3FF0000000000000;
  *(v2 + v3[8]) = 0;
  v20 = (v2 + v3[9]);
  *v20 = v47;
  v20[1] = v46;
  v21 = (v2 + v3[10]);
  *v21 = v44;
  v21[1] = v43;
  v22 = (v2 + v3[11]);
  *v22 = v42;
  v22[1] = v41;
  v23 = (v2 + v3[12]);
  *v23 = v56;
  v23[1] = v60;
  v24 = (v2 + v3[13]);
  *v24 = v58;
  v24[1] = v62;
  v25 = (v2 + v3[14]);
  *v25 = 0;
  v25[1] = 0;
  *(v2 + v3[15]) = v16;
  *(v2 + v3[16]) = v55 & 1;
  sub_1000089F8(v39, v2 + v3[17], &qword_101188C20, &qword_100EC2030);
  sub_1000089F8(v40, v2 + v3[18], &qword_101188C20, &qword_100EC2030);
  v26 = (v2 + v3[19]);
  *v26 = 0;
  v26[1] = 0;
  *(v2 + v3[20]) = _swiftEmptyArrayStorage;
  v27 = v2 + v3[21];
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  *(v27 + 24) = 1;
  v28 = v2 + v3[22];
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  *(v28 + 24) = 1;
  sub_10043975C(_swiftEmptyArrayStorage);
  v29 = *(v0 + 728);
  v57 = *(v0 + 720);
  v59 = *(v0 + 736);
  v30 = *(v0 + 712);
  v31 = *(v0 + 656);
  v32 = *(v0 + 648);
  v33 = *(v0 + 472);
  v35 = *(v0 + 416);
  v34 = *(v0 + 424);
  v36 = *(v0 + 312);
  v61 = *(v0 + 296);
  v63 = *(v0 + 912);

  sub_1000095E8(v35, &qword_101188C20, &qword_100EC2030);
  sub_1000095E8(v34, &qword_101188C20, &qword_100EC2030);
  sub_10041F874(v33, type metadata accessor for ArtworkImage.Placeholder);
  (*(v31 + 8))(v30, v32);
  (*(v29 + 8))(v59, v57);
  sub_1000095E8(v0 + 96, &qword_101182C38, &unk_100ECB2A0);
  *(v2 + v48) = v64;
  sub_10000959C((v0 + 216));
  sub_10000959C((v0 + 16));
  sub_10041F8DC(v63, v61, type metadata accessor for WidgetMusicItem);
  (*(*(v0 + 904) + 56))(*(v0 + 296), 0, 1, *(v0 + 896));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_10041749C(uint64_t a1)
{
  v2 = *(*v1 + 1064);
  v3 = *(*v1 + 1056);
  v4 = *(*v1 + 520);
  *(*v1 + 1080) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_1004175FC, 0, 0);
}

uint64_t sub_1004175FC()
{
  v53 = *(v0 + 1040);
  v54 = *(v0 + 1048);
  v52 = *(v0 + 1024);
  v1 = *(v0 + 1409);
  v56 = *(v0 + 936);
  v62 = *(v0 + 928);
  v64 = *(v0 + 1080);
  v58 = *(v0 + 920);
  v60 = *(v0 + 944);
  v2 = *(v0 + 912);
  v3 = *(v0 + 896);
  v49 = *(v0 + 656);
  v50 = *(v0 + 648);
  v51 = *(v0 + 704);
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);
  v45 = v4;
  v6 = *(v0 + 448);
  v7 = *(v0 + 456);
  v8 = *(v0 + 432);
  v9 = *(v0 + 440);
  v39 = *(v0 + 424);
  v40 = *(v0 + 416);
  if (*(v0 + 1408) != 2)
  {
    v1 = *(v0 + 1408);
  }

  v55 = v1;
  v10 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v10 - 8) + 56))(v4, 5, 11, v10);
  v11 = MusicVideo.id.getter();
  v46 = v12;
  v47 = v11;
  v44 = MusicVideo.catalogID.getter();
  v43 = v13;
  MusicVideo.siriRepresentation.getter();
  v14 = MusicSiriRepresentation.id.getter();
  v41 = v15;
  v42 = v14;
  (*(v7 + 8))(v5, v6);
  sub_10010FC20(&qword_10118F128, &unk_100ECB620);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100EBDC20;
  MusicVideo.contentRating.getter();
  *(v16 + 32) = TextBadge.init(for:isPlayable:)(v9, 1);
  MusicVideo.favoriteStatus.getter();
  v17 = type metadata accessor for MusicFavoriteStatus();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  *(v16 + 33) = TextBadge.init(for:)(v8);
  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 56);
  v19(v39, 1, 1, v18);
  v19(v40, 1, 1, v18);
  v48 = v3[25];
  *(v2 + v48) = 0;
  *(v2 + v3[26]) = _swiftEmptyArrayStorage;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = v52;
  *(v2 + 32) = v53;
  *(v2 + 40) = v54;
  (*(v49 + 16))(v2 + v3[7], v51, v50);
  sub_10041F80C(v45, v2 + v3[23], type metadata accessor for ArtworkImage.Placeholder);
  *(v2 + v3[24]) = 0x3FFC71C71C71C71CLL;
  *(v2 + v3[8]) = 5;
  v20 = (v2 + v3[9]);
  *v20 = v47;
  v20[1] = v46;
  v21 = (v2 + v3[10]);
  *v21 = v44;
  v21[1] = v43;
  v22 = (v2 + v3[11]);
  *v22 = v42;
  v22[1] = v41;
  v23 = (v2 + v3[12]);
  *v23 = v56;
  v23[1] = v60;
  v24 = (v2 + v3[13]);
  *v24 = v58;
  v24[1] = v62;
  v25 = (v2 + v3[14]);
  *v25 = 0;
  v25[1] = 0;
  *(v2 + v3[15]) = v16;
  *(v2 + v3[16]) = v55 & 1;
  sub_1000089F8(v39, v2 + v3[17], &qword_101188C20, &qword_100EC2030);
  sub_1000089F8(v40, v2 + v3[18], &qword_101188C20, &qword_100EC2030);
  v26 = (v2 + v3[19]);
  *v26 = 0;
  v26[1] = 0;
  *(v2 + v3[20]) = _swiftEmptyArrayStorage;
  v27 = v2 + v3[21];
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  *(v27 + 24) = 1;
  v28 = v2 + v3[22];
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  *(v28 + 24) = 1;
  sub_10043975C(_swiftEmptyArrayStorage);
  v29 = *(v0 + 704);
  v30 = *(v0 + 392);
  v57 = *(v0 + 384);
  v59 = *(v0 + 400);
  v31 = *(v0 + 656);
  v32 = *(v0 + 648);
  v33 = *(v0 + 472);
  v35 = *(v0 + 416);
  v34 = *(v0 + 424);
  v36 = *(v0 + 312);
  v61 = *(v0 + 296);
  v63 = *(v0 + 912);

  sub_1000095E8(v35, &qword_101188C20, &qword_100EC2030);
  sub_1000095E8(v34, &qword_101188C20, &qword_100EC2030);
  sub_10041F874(v33, type metadata accessor for ArtworkImage.Placeholder);
  (*(v31 + 8))(v29, v32);
  (*(v30 + 8))(v59, v57);
  sub_1000095E8(v0 + 96, &qword_101182C38, &unk_100ECB2A0);
  *(v2 + v48) = v64;
  sub_10000959C((v0 + 216));
  sub_10000959C((v0 + 16));
  sub_10041F8DC(v63, v61, type metadata accessor for WidgetMusicItem);
  (*(*(v0 + 904) + 56))(*(v0 + 296), 0, 1, *(v0 + 896));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_100417E20(uint64_t a1)
{
  v2 = *(*v1 + 1128);
  v3 = *(*v1 + 1120);
  v4 = *(*v1 + 512);
  *(*v1 + 1144) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_100417F80, 0, 0);
}

uint64_t sub_100417F80()
{
  v59 = *(v0 + 1144);
  v47 = *(v0 + 1104);
  v48 = *(v0 + 1112);
  v46 = *(v0 + 1088);
  v1 = *(v0 + 1409);
  v54 = *(v0 + 944);
  v56 = *(v0 + 928);
  v50 = *(v0 + 936);
  v52 = *(v0 + 920);
  v2 = *(v0 + 912);
  v3 = *(v0 + 896);
  v4 = *(v0 + 656);
  v44 = *(v0 + 648);
  v45 = *(v0 + 696);
  v5 = *(v0 + 464);
  v6 = *(v0 + 472);
  v8 = *(v0 + 448);
  v7 = *(v0 + 456);
  v9 = *(v0 + 424);
  v37 = *(v0 + 416);
  if (*(v0 + 1408) != 2)
  {
    v1 = *(v0 + 1408);
  }

  v49 = v1;
  v10 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v10 - 8) + 56))(v6, 6, 11, v10);
  v11 = TVEpisode.id.getter();
  v42 = v12;
  v43 = v11;
  v13 = TVEpisode.catalogID.getter();
  v40 = v14;
  v41 = v13;
  TVEpisode.siriRepresentation.getter();
  v39 = MusicSiriRepresentation.id.getter();
  v38 = v15;
  (*(v7 + 8))(v5, v8);
  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 56);
  v17(v9, 1, 1, v16);
  v17(v37, 1, 1, v16);
  v58 = v3[25];
  *(v2 + v58) = 0;
  *(v2 + v3[26]) = _swiftEmptyArrayStorage;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = v46;
  *(v2 + 32) = v47;
  *(v2 + 40) = v48;
  (*(v4 + 16))(v2 + v3[7], v45, v44);
  sub_10041F80C(v6, v2 + v3[23], type metadata accessor for ArtworkImage.Placeholder);
  *(v2 + v3[24]) = 0x3FFC71C71C71C71CLL;
  *(v2 + v3[8]) = 6;
  v18 = (v2 + v3[9]);
  *v18 = v43;
  v18[1] = v42;
  v19 = (v2 + v3[10]);
  *v19 = v41;
  v19[1] = v40;
  v20 = (v2 + v3[11]);
  *v20 = v39;
  v20[1] = v38;
  v21 = (v2 + v3[12]);
  *v21 = v50;
  v21[1] = v54;
  v22 = (v2 + v3[13]);
  *v22 = v52;
  v22[1] = v56;
  v23 = (v2 + v3[14]);
  *v23 = 0;
  v23[1] = 0;
  *(v2 + v3[15]) = _swiftEmptyArrayStorage;
  *(v2 + v3[16]) = v49 & 1;
  sub_1000089F8(v9, v2 + v3[17], &qword_101188C20, &qword_100EC2030);
  sub_1000089F8(v37, v2 + v3[18], &qword_101188C20, &qword_100EC2030);
  v24 = (v2 + v3[19]);
  *v24 = 0;
  v24[1] = 0;
  *(v2 + v3[20]) = _swiftEmptyArrayStorage;
  v25 = v2 + v3[21];
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  *(v25 + 24) = 1;
  v26 = v2 + v3[22];
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  *(v26 + 24) = 1;
  sub_10043975C(_swiftEmptyArrayStorage);
  v27 = *(v0 + 696);
  v28 = *(v0 + 360);
  v51 = *(v0 + 352);
  v53 = *(v0 + 368);
  v29 = *(v0 + 656);
  v30 = *(v0 + 648);
  v31 = *(v0 + 472);
  v32 = *(v0 + 416);
  v33 = *(v0 + 424);
  v34 = *(v0 + 312);
  v55 = *(v0 + 296);
  v57 = *(v0 + 912);

  sub_1000095E8(v32, &qword_101188C20, &qword_100EC2030);
  sub_1000095E8(v33, &qword_101188C20, &qword_100EC2030);
  sub_10041F874(v31, type metadata accessor for ArtworkImage.Placeholder);
  (*(v29 + 8))(v27, v30);
  (*(v28 + 8))(v53, v51);
  sub_1000095E8(v0 + 96, &qword_101182C38, &unk_100ECB2A0);
  *(v2 + v58) = v59;
  sub_10000959C((v0 + 216));
  sub_10000959C((v0 + 16));
  sub_10041F8DC(v57, v55, type metadata accessor for WidgetMusicItem);
  (*(*(v0 + 904) + 56))(*(v0 + 296), 0, 1, *(v0 + 896));

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1004186E4(uint64_t a1)
{
  v2 = *(*v1 + 1192);
  v3 = *(*v1 + 1184);
  v4 = *(*v1 + 504);
  *(*v1 + 1208) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_100418844, 0, 0);
}

uint64_t sub_100418844()
{
  v59 = *(v0 + 1208);
  v47 = *(v0 + 1168);
  v48 = *(v0 + 1176);
  v46 = *(v0 + 1152);
  v1 = *(v0 + 1409);
  v54 = *(v0 + 944);
  v56 = *(v0 + 928);
  v50 = *(v0 + 936);
  v52 = *(v0 + 920);
  v2 = *(v0 + 912);
  v3 = *(v0 + 896);
  v4 = *(v0 + 656);
  v44 = *(v0 + 648);
  v45 = *(v0 + 688);
  v5 = *(v0 + 464);
  v6 = *(v0 + 472);
  v8 = *(v0 + 448);
  v7 = *(v0 + 456);
  v9 = *(v0 + 424);
  v37 = *(v0 + 416);
  if (*(v0 + 1408) != 2)
  {
    v1 = *(v0 + 1408);
  }

  v49 = v1;
  v10 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v10 - 8) + 56))(v6, 6, 11, v10);
  v11 = MusicMovie.id.getter();
  v42 = v12;
  v43 = v11;
  v13 = MusicMovie.catalogID.getter();
  v40 = v14;
  v41 = v13;
  MusicMovie.siriRepresentation.getter();
  v39 = MusicSiriRepresentation.id.getter();
  v38 = v15;
  (*(v7 + 8))(v5, v8);
  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 56);
  v17(v9, 1, 1, v16);
  v17(v37, 1, 1, v16);
  v58 = v3[25];
  *(v2 + v58) = 0;
  *(v2 + v3[26]) = _swiftEmptyArrayStorage;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = v46;
  *(v2 + 32) = v47;
  *(v2 + 40) = v48;
  (*(v4 + 16))(v2 + v3[7], v45, v44);
  sub_10041F80C(v6, v2 + v3[23], type metadata accessor for ArtworkImage.Placeholder);
  *(v2 + v3[24]) = 0x3FE5555555555555;
  *(v2 + v3[8]) = 7;
  v18 = (v2 + v3[9]);
  *v18 = v43;
  v18[1] = v42;
  v19 = (v2 + v3[10]);
  *v19 = v41;
  v19[1] = v40;
  v20 = (v2 + v3[11]);
  *v20 = v39;
  v20[1] = v38;
  v21 = (v2 + v3[12]);
  *v21 = v50;
  v21[1] = v54;
  v22 = (v2 + v3[13]);
  *v22 = v52;
  v22[1] = v56;
  v23 = (v2 + v3[14]);
  *v23 = 0;
  v23[1] = 0;
  *(v2 + v3[15]) = _swiftEmptyArrayStorage;
  *(v2 + v3[16]) = v49 & 1;
  sub_1000089F8(v9, v2 + v3[17], &qword_101188C20, &qword_100EC2030);
  sub_1000089F8(v37, v2 + v3[18], &qword_101188C20, &qword_100EC2030);
  v24 = (v2 + v3[19]);
  *v24 = 0;
  v24[1] = 0;
  *(v2 + v3[20]) = _swiftEmptyArrayStorage;
  v25 = v2 + v3[21];
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  *(v25 + 24) = 1;
  v26 = v2 + v3[22];
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  *(v26 + 24) = 1;
  sub_10043975C(_swiftEmptyArrayStorage);
  v27 = *(v0 + 328);
  v51 = *(v0 + 688);
  v53 = *(v0 + 336);
  v28 = *(v0 + 656);
  v29 = *(v0 + 648);
  v30 = *(v0 + 472);
  v32 = *(v0 + 416);
  v31 = *(v0 + 424);
  v34 = *(v0 + 312);
  v33 = *(v0 + 320);
  v55 = *(v0 + 296);
  v57 = *(v0 + 912);

  sub_1000095E8(v32, &qword_101188C20, &qword_100EC2030);
  sub_1000095E8(v31, &qword_101188C20, &qword_100EC2030);
  sub_10041F874(v30, type metadata accessor for ArtworkImage.Placeholder);
  (*(v28 + 8))(v51, v29);
  (*(v27 + 8))(v53, v33);
  sub_1000095E8(v0 + 96, &qword_101182C38, &unk_100ECB2A0);
  *(v2 + v58) = v59;
  sub_10000959C((v0 + 216));
  sub_10000959C((v0 + 16));
  sub_10041F8DC(v57, v55, type metadata accessor for WidgetMusicItem);
  (*(*(v0 + 904) + 56))(*(v0 + 296), 0, 1, *(v0 + 896));

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_100418FA0(uint64_t a1)
{
  v2 = *(*v1 + 1256);
  v3 = *(*v1 + 1248);
  v4 = *(*v1 + 496);
  *(*v1 + 1272) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_100419100, 0, 0);
}

uint64_t sub_100419100()
{
  v53 = *(v0 + 1232);
  v54 = *(v0 + 1240);
  v52 = *(v0 + 1216);
  v1 = *(v0 + 1409);
  v56 = *(v0 + 936);
  v62 = *(v0 + 928);
  v64 = *(v0 + 1272);
  v58 = *(v0 + 920);
  v60 = *(v0 + 944);
  v2 = *(v0 + 912);
  v3 = *(v0 + 896);
  v49 = *(v0 + 656);
  v50 = *(v0 + 648);
  v51 = *(v0 + 680);
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);
  v45 = v4;
  v6 = *(v0 + 448);
  v7 = *(v0 + 456);
  v8 = *(v0 + 432);
  v9 = *(v0 + 440);
  if (*(v0 + 1408) != 2)
  {
    v1 = *(v0 + 1408);
  }

  v55 = v1;
  v39 = *(v0 + 424);
  v40 = *(v0 + 416);
  v10 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v10 - 8) + 56))(v4, 1, 11, v10);
  v11 = Album.id.getter();
  v46 = v12;
  v47 = v11;
  v44 = Album.catalogID.getter();
  v43 = v13;
  Album.siriRepresentation.getter();
  v14 = MusicSiriRepresentation.id.getter();
  v41 = v15;
  v42 = v14;
  (*(v7 + 8))(v5, v6);
  sub_10010FC20(&qword_10118F128, &unk_100ECB620);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100EBDC20;
  Album.contentRating.getter();
  *(v16 + 32) = TextBadge.init(for:isPlayable:)(v9, 1);
  Album.favoriteStatus.getter();
  v17 = type metadata accessor for MusicFavoriteStatus();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  *(v16 + 33) = TextBadge.init(for:)(v8);
  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 56);
  v19(v39, 1, 1, v18);
  v19(v40, 1, 1, v18);
  v48 = v3[25];
  *(v2 + v48) = 0;
  *(v2 + v3[26]) = _swiftEmptyArrayStorage;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = v52;
  *(v2 + 32) = v53;
  *(v2 + 40) = v54;
  (*(v49 + 16))(v2 + v3[7], v51, v50);
  sub_10041F80C(v45, v2 + v3[23], type metadata accessor for ArtworkImage.Placeholder);
  *(v2 + v3[24]) = 0x3FF0000000000000;
  *(v2 + v3[8]) = 1;
  v20 = (v2 + v3[9]);
  *v20 = v47;
  v20[1] = v46;
  v21 = (v2 + v3[10]);
  *v21 = v44;
  v21[1] = v43;
  v22 = (v2 + v3[11]);
  *v22 = v42;
  v22[1] = v41;
  v23 = (v2 + v3[12]);
  *v23 = v56;
  v23[1] = v60;
  v24 = (v2 + v3[13]);
  *v24 = v58;
  v24[1] = v62;
  v25 = (v2 + v3[14]);
  *v25 = 0;
  v25[1] = 0;
  *(v2 + v3[15]) = v16;
  *(v2 + v3[16]) = v55 & 1;
  sub_1000089F8(v39, v2 + v3[17], &qword_101188C20, &qword_100EC2030);
  sub_1000089F8(v40, v2 + v3[18], &qword_101188C20, &qword_100EC2030);
  v26 = (v2 + v3[19]);
  *v26 = 0;
  v26[1] = 0;
  *(v2 + v3[20]) = _swiftEmptyArrayStorage;
  v27 = v2 + v3[21];
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  *(v27 + 24) = 1;
  v28 = v2 + v3[22];
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  *(v28 + 24) = 1;
  sub_10043975C(_swiftEmptyArrayStorage);
  v29 = *(v0 + 856);
  v57 = *(v0 + 848);
  v59 = *(v0 + 864);
  v30 = *(v0 + 680);
  v31 = *(v0 + 656);
  v32 = *(v0 + 648);
  v33 = *(v0 + 472);
  v35 = *(v0 + 416);
  v34 = *(v0 + 424);
  v36 = *(v0 + 312);
  v61 = *(v0 + 296);
  v63 = *(v0 + 912);

  sub_1000095E8(v35, &qword_101188C20, &qword_100EC2030);
  sub_1000095E8(v34, &qword_101188C20, &qword_100EC2030);
  sub_10041F874(v33, type metadata accessor for ArtworkImage.Placeholder);
  (*(v31 + 8))(v30, v32);
  (*(v29 + 8))(v59, v57);
  sub_1000095E8(v0 + 96, &qword_101182C38, &unk_100ECB2A0);
  *(v2 + v48) = v64;
  sub_10000959C((v0 + 216));
  sub_10000959C((v0 + 16));
  sub_10041F8DC(v63, v61, type metadata accessor for WidgetMusicItem);
  (*(*(v0 + 904) + 56))(*(v0 + 296), 0, 1, *(v0 + 896));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_10041991C(uint64_t a1)
{
  v2 = *(*v1 + 1320);
  v3 = *(*v1 + 1312);
  v4 = *(*v1 + 488);
  *(*v1 + 1336) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_100419A7C, 0, 0);
}

uint64_t sub_100419A7C(uint64_t a1)
{
  v54 = *(v1 + 1296);
  v55 = *(v1 + 1304);
  v53 = *(v1 + 1280);
  v2 = *(v1 + 1409);
  v57 = *(v1 + 936);
  v63 = *(v1 + 928);
  v65 = *(v1 + 1336);
  v59 = *(v1 + 920);
  v61 = *(v1 + 944);
  v3 = *(v1 + 912);
  v4 = *(v1 + 896);
  v51 = *(v1 + 648);
  v52 = *(v1 + 672);
  v6 = *(v1 + 464);
  v5 = *(v1 + 472);
  v7 = *(v1 + 456);
  v48 = *(v1 + 448);
  v50 = *(v1 + 656);
  v8 = *(v1 + 432);
  v9 = *(v1 + 440);
  if (*(v1 + 1408) != 2)
  {
    v2 = *(v1 + 1408);
  }

  v56 = v2;
  v40 = *(v1 + 424);
  v41 = *(v1 + 416);
  Playlist.variant.getter();
  v10 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v10 - 8) + 56))(v5, 0, 11, v10);
  v11 = Playlist.id.getter();
  v46 = v12;
  v47 = v11;
  v13 = Playlist.catalogID.getter();
  v44 = v14;
  v45 = v13;
  Playlist.siriRepresentation.getter();
  v15 = MusicSiriRepresentation.id.getter();
  v42 = v16;
  v43 = v15;
  (*(v7 + 8))(v6, v48);
  sub_10010FC20(&qword_10118F128, &unk_100ECB620);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100EBDC20;
  Playlist.contentRating.getter();
  *(v17 + 32) = TextBadge.init(for:isPlayable:)(v9, 1);
  Playlist.favoriteStatus.getter();
  v18 = type metadata accessor for MusicFavoriteStatus();
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  *(v17 + 33) = TextBadge.init(for:)(v8);
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 56);
  v20(v40, 1, 1, v19);
  v20(v41, 1, 1, v19);
  v49 = v4[25];
  *(v3 + v49) = 0;
  *(v3 + v4[26]) = _swiftEmptyArrayStorage;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = v53;
  *(v3 + 32) = v54;
  *(v3 + 40) = v55;
  (*(v50 + 16))(v3 + v4[7], v52, v51);
  sub_10041F80C(v5, v3 + v4[23], type metadata accessor for ArtworkImage.Placeholder);
  *(v3 + v4[24]) = 0x3FF0000000000000;
  *(v3 + v4[8]) = 3;
  v21 = (v3 + v4[9]);
  *v21 = v47;
  v21[1] = v46;
  v22 = (v3 + v4[10]);
  *v22 = v45;
  v22[1] = v44;
  v23 = (v3 + v4[11]);
  *v23 = v43;
  v23[1] = v42;
  v24 = (v3 + v4[12]);
  *v24 = v57;
  v24[1] = v61;
  v25 = (v3 + v4[13]);
  *v25 = v59;
  v25[1] = v63;
  v26 = (v3 + v4[14]);
  *v26 = 0;
  v26[1] = 0;
  *(v3 + v4[15]) = v17;
  *(v3 + v4[16]) = v56 & 1;
  sub_1000089F8(v40, v3 + v4[17], &qword_101188C20, &qword_100EC2030);
  sub_1000089F8(v41, v3 + v4[18], &qword_101188C20, &qword_100EC2030);
  v27 = (v3 + v4[19]);
  *v27 = 0;
  v27[1] = 0;
  *(v3 + v4[20]) = _swiftEmptyArrayStorage;
  v28 = v3 + v4[21];
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  *(v28 + 24) = 1;
  v29 = v3 + v4[22];
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  *(v29 + 24) = 1;
  sub_10043975C(_swiftEmptyArrayStorage);
  v30 = *(v1 + 808);
  v58 = *(v1 + 800);
  v60 = *(v1 + 816);
  v31 = *(v1 + 672);
  v32 = *(v1 + 656);
  v33 = *(v1 + 648);
  v34 = *(v1 + 472);
  v36 = *(v1 + 416);
  v35 = *(v1 + 424);
  v37 = *(v1 + 312);
  v62 = *(v1 + 296);
  v64 = *(v1 + 912);

  sub_1000095E8(v36, &qword_101188C20, &qword_100EC2030);
  sub_1000095E8(v35, &qword_101188C20, &qword_100EC2030);
  sub_10041F874(v34, type metadata accessor for ArtworkImage.Placeholder);
  (*(v32 + 8))(v31, v33);
  (*(v30 + 8))(v60, v58);
  sub_1000095E8(v1 + 96, &qword_101182C38, &unk_100ECB2A0);
  *(v3 + v49) = v65;
  sub_10000959C((v1 + 216));
  sub_10000959C((v1 + 16));
  sub_10041F8DC(v64, v62, type metadata accessor for WidgetMusicItem);
  (*(*(v1 + 904) + 56))(*(v1 + 296), 0, 1, *(v1 + 896));

  v38 = *(v1 + 8);

  return v38();
}

uint64_t sub_10041A294(uint64_t a1)
{
  v2 = *(*v1 + 1384);
  v3 = *(*v1 + 1376);
  v4 = *(*v1 + 480);
  *(*v1 + 1400) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_10041A3F4, 0, 0);
}

uint64_t sub_10041A3F4()
{
  v47 = *(v0 + 1360);
  v48 = *(v0 + 1368);
  v46 = *(v0 + 1344);
  v1 = *(v0 + 1409);
  v51 = *(v0 + 936);
  v57 = *(v0 + 928);
  v59 = *(v0 + 1400);
  v53 = *(v0 + 920);
  v55 = *(v0 + 944);
  v2 = *(v0 + 912);
  v3 = *(v0 + 896);
  v4 = *(v0 + 656);
  v44 = *(v0 + 648);
  v45 = *(v0 + 664);
  v6 = *(v0 + 464);
  v5 = *(v0 + 472);
  v41 = v5;
  v8 = *(v0 + 448);
  v7 = *(v0 + 456);
  v9 = *(v0 + 440);
  if (*(v0 + 1408) != 2)
  {
    v1 = *(v0 + 1408);
  }

  v50 = v1;
  v37 = *(v0 + 424);
  v38 = *(v0 + 416);
  v10 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v10 - 8) + 56))(v5, 9, 11, v10);
  v11 = Station.id.getter();
  v42 = v12;
  v43 = v11;
  Station.siriRepresentation.getter();
  v13 = MusicSiriRepresentation.id.getter();
  v39 = v14;
  v40 = v13;
  (*(v7 + 8))(v6, v8);
  sub_10010FC20(&qword_10118F128, &unk_100ECB620);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100EBC6B0;
  Station.contentRating.getter();
  *(v15 + 32) = TextBadge.init(for:isPlayable:)(v9, 1);
  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 56);
  v17(v37, 1, 1, v16);
  v17(v38, 1, 1, v16);
  v49 = v3[25];
  *(v2 + v49) = 0;
  *(v2 + v3[26]) = _swiftEmptyArrayStorage;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = v46;
  *(v2 + 32) = v47;
  *(v2 + 40) = v48;
  (*(v4 + 16))(v2 + v3[7], v45, v44);
  sub_10041F80C(v41, v2 + v3[23], type metadata accessor for ArtworkImage.Placeholder);
  *(v2 + v3[24]) = 0x3FF0000000000000;
  *(v2 + v3[8]) = 4;
  v18 = (v2 + v3[9]);
  *v18 = v43;
  v18[1] = v42;
  v19 = (v2 + v3[10]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v2 + v3[11]);
  *v20 = v40;
  v20[1] = v39;
  v21 = (v2 + v3[12]);
  *v21 = v51;
  v21[1] = v55;
  v22 = (v2 + v3[13]);
  *v22 = v53;
  v22[1] = v57;
  v23 = (v2 + v3[14]);
  *v23 = 0;
  v23[1] = 0;
  *(v2 + v3[15]) = v15;
  *(v2 + v3[16]) = v50 & 1;
  sub_1000089F8(v37, v2 + v3[17], &qword_101188C20, &qword_100EC2030);
  sub_1000089F8(v38, v2 + v3[18], &qword_101188C20, &qword_100EC2030);
  v24 = (v2 + v3[19]);
  *v24 = 0;
  v24[1] = 0;
  *(v2 + v3[20]) = _swiftEmptyArrayStorage;
  v25 = v2 + v3[21];
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  *(v25 + 24) = 1;
  v26 = v2 + v3[22];
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  *(v26 + 24) = 1;
  sub_10043975C(_swiftEmptyArrayStorage);
  v27 = *(v0 + 760);
  v52 = *(v0 + 752);
  v54 = *(v0 + 768);
  v28 = *(v0 + 664);
  v29 = *(v0 + 656);
  v30 = *(v0 + 648);
  v31 = *(v0 + 472);
  v32 = *(v0 + 416);
  v33 = *(v0 + 424);
  v34 = *(v0 + 312);
  v56 = *(v0 + 296);
  v58 = *(v0 + 912);

  sub_1000095E8(v32, &qword_101188C20, &qword_100EC2030);
  sub_1000095E8(v33, &qword_101188C20, &qword_100EC2030);
  sub_10041F874(v31, type metadata accessor for ArtworkImage.Placeholder);
  (*(v29 + 8))(v28, v30);
  (*(v27 + 8))(v54, v52);
  sub_1000095E8(v0 + 96, &qword_101182C38, &unk_100ECB2A0);
  *(v2 + v49) = v59;
  sub_10000959C((v0 + 216));
  sub_10000959C((v0 + 16));
  sub_10041F8DC(v58, v56, type metadata accessor for WidgetMusicItem);
  (*(*(v0 + 904) + 56))(*(v0 + 296), 0, 1, *(v0 + 896));

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_10041AB9C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_10010FC20(&qword_10118F130, &qword_100ECB640);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  v2[15] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[24] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[25] = v6;
  v2[26] = v5;

  return _swift_task_switch(sub_10041AD80, v6, v5);
}

uint64_t sub_10041AD80(uint64_t a1)
{
  v2 = *(v1 + 88);
  *(v1 + 216) = *(v2 + 24);
  v3 = *(v2 + 48);
  if (v3 == 2)
  {

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Clearing current item progress", v6, 2u);
    }

    v7 = *(v1 + 152);
    v8 = *(v1 + 160);
    v10 = *(v1 + 104);
    v9 = *(v1 + 112);
    v11 = *(v1 + 96);

    v12 = *(v11 + 16);
    (*(v8 + 56))(v9, 1, 1, v7);
LABEL_11:
    sub_1000089F8(v9, v10, &qword_10118F130, &qword_100ECB640);
    v24 = v12 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentItemProgress;
    swift_beginAccess();
    v25 = sub_10010FC20(&qword_10118F110, &qword_100ECB5F8);
    sub_100715B4C(*(v24 + *(v25 + 44)), *(v24 + *(v25 + 44) + 8), v10);
    sub_1000095E8(v10, &qword_10118F130, &qword_100ECB640);
    swift_endAccess();
    sub_1000095E8(v9, &qword_10118F130, &qword_100ECB640);

    v26 = *(v1 + 8);

    return v26();
  }

  v13 = *(v2 + 40);
  v14 = *(v2 + 32);
  v15 = *v2;
  static Date.timeIntervalSinceReferenceDate.getter();
  *(v1 + 224) = v14 + (v16 - v15) * v13;
  if (v3)
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67240192;
      *(v19 + 4) = 1;
      _os_log_impl(&_mh_execute_header, v17, v18, "Using placeholder item progress. isLiveContent: %{BOOL,public}d", v19, 8u);
    }

    v20 = *(v1 + 96);

    v12 = *(v20 + 16);
    if (qword_10117F6C8 != -1)
    {
      swift_once();
    }

    v21 = *(v1 + 152);
    v22 = *(v1 + 160);
    v10 = *(v1 + 104);
    v9 = *(v1 + 112);
    v23 = sub_1000060E4(v21, qword_101218C08);
    sub_10041F80C(v23, v9, type metadata accessor for NowPlayingDataProvider.ItemProgress);
    (*(v22 + 56))(v9, 0, 1, v21);
    goto LABEL_11;
  }

  return _swift_task_switch(sub_10041B140, 0, 0);
}

uint64_t sub_10041B140()
{
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_10041B21C;
  v2 = *(v0 + 96);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 240, 0, 0, 0x7453726579616C70, 0xEB00000000657461, sub_10041F8D4, v2, &type metadata for NowPlayingDataProvider.PlayerState);
}

uint64_t sub_10041B21C()
{

  return _swift_task_switch(sub_10041B318, 0, 0);
}

uint64_t sub_10041B338()
{
  v35 = v0;
  v1 = *(v0 + 241);

  if (v1 == 1)
  {

    static Date.now.getter();
    Date.addingTimeInterval(_:)();
    Date.addingTimeInterval(_:)();
LABEL_4:
    (*(*(v0 + 136) + 32))(*(v0 + 120), *(v0 + 144), *(v0 + 128));
    v3 = 0;
    goto LABEL_6;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  Date.addingTimeInterval(_:)();
  if (v2)
  {
    goto LABEL_4;
  }

  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  v3 = 1;
LABEL_6:
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  v8 = *(v0 + 120);
  (*(*(v0 + 136) + 56))(v8, v3, 1, *(v0 + 128));
  sub_10041E7D4(v8, v4 + *(v7 + 24));
  sub_10041F8DC(v4, v5, type metadata accessor for NowPlayingDataProvider.ItemProgress);
  sub_10041F80C(v5, v6, type metadata accessor for NowPlayingDataProvider.ItemProgress);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 168);
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v12 = 136446722;
    v13 = sub_10041BA24();
    v15 = v14;
    sub_10041F874(v11, type metadata accessor for NowPlayingDataProvider.ItemProgress);
    v16 = sub_1000105AC(v13, v15, &v34);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v17 = Double.description.getter();
    v19 = sub_1000105AC(v17, v18, &v34);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2082;
    v20 = Double.description.getter();
    v22 = sub_1000105AC(v20, v21, &v34);

    *(v12 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v9, v10, "Updating current item progress: %{public}s, elapsedDuration: %{public}s, duration: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 168);

    sub_10041F874(v23, type metadata accessor for NowPlayingDataProvider.ItemProgress);
  }

  v24 = *(v0 + 184);
  v25 = *(v0 + 152);
  v26 = *(v0 + 160);
  v28 = *(v0 + 104);
  v27 = *(v0 + 112);
  v29 = *(*(v0 + 96) + 16);
  sub_10041F80C(v24, v27, type metadata accessor for NowPlayingDataProvider.ItemProgress);
  (*(v26 + 56))(v27, 0, 1, v25);
  sub_1000089F8(v27, v28, &qword_10118F130, &qword_100ECB640);
  v30 = v29 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentItemProgress;
  swift_beginAccess();
  v31 = sub_10010FC20(&qword_10118F110, &qword_100ECB5F8);
  sub_100715B4C(*(v30 + *(v31 + 44)), *(v30 + *(v31 + 44) + 8), v28);
  sub_1000095E8(v28, &qword_10118F130, &qword_100ECB640);
  swift_endAccess();
  sub_1000095E8(v27, &qword_10118F130, &qword_100ECB640);
  sub_10041F874(v24, type metadata accessor for NowPlayingDataProvider.ItemProgress);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_10041B858()
{
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v1 = &v12 - v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v12 - v6;
  v8 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  sub_100006080(v8, qword_101218C08);
  v9 = sub_1000060E4(v8, qword_101218C08);
  static Date.now.getter();
  static Date.distantFuture.getter();
  static Date.distantPast.getter();
  (*(v3 + 56))(v1, 0, 1, v2);
  v10 = *(v3 + 32);
  v10(v9, v7, v2);
  v10(v9 + *(v8 + 20), v5, v2);
  return sub_10041E7D4(v1, v9 + *(v8 + 24));
}

uint64_t sub_10041BA24()
{
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v2 = &v11 - v1;
  strcpy(v12, "ItemProgress(");
  HIWORD(v12[1]) = -4864;
  v11._countAndFlagsBits = 0x7461447472617473;
  v11._object = 0xEB00000000203A65;
  type metadata accessor for Date();
  sub_10041E490(&qword_10118F100, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  String.append(_:)(v11);

  v11._countAndFlagsBits = 0x3A65746144646E65;
  v11._object = 0xE900000000000020;
  v5 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 8236;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  String.append(_:)(v11);

  v11._countAndFlagsBits = 0x7461446573756170;
  v11._object = 0xEB00000000203A65;
  sub_1000089F8(v0 + *(v5 + 24), v2, &qword_101188C20, &qword_100EC2030);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  String.append(_:)(v11);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return v12[0];
}

uint64_t sub_10041BC7C(void *a1)
{
  v3 = sub_10010FC20(&qword_10118F0E0, &unk_100ECB5E0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_10000954C(a1, a1[3]);
  sub_10041E780();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  type metadata accessor for Date();
  sub_10041E490(&qword_10118F0E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    v10 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10041BE7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v24 = &v20 - v4;
  v28 = type metadata accessor for Date();
  v25 = *(v28 - 8);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v20 - v7;
  v29 = sub_10010FC20(&qword_10118F0C8, &qword_100ECB5D8);
  v26 = *(v29 - 8);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000954C(a1, a1[3]);
  sub_10041E780();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v13 = v26;
  v20 = v10;
  v21 = v12;
  v22 = a1;
  v32 = 0;
  sub_10041E490(&qword_10118F0D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v14 = v27;
  v15 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = *(v25 + 32);
  (v27)(v21, v14, v15);
  v31 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v27)(&v21[*(v20 + 20)], v6, v15);
  v30 = 2;
  v16 = v24;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17 = v22;
  (*(v13 + 8))(v9, v29);
  v18 = v21;
  sub_10041E7D4(v16, &v21[*(v20 + 24)]);
  sub_10041F80C(v18, v23, type metadata accessor for NowPlayingDataProvider.ItemProgress);
  sub_10000959C(v17);
  return sub_10041F874(v18, type metadata accessor for NowPlayingDataProvider.ItemProgress);
}

uint64_t sub_10041C324()
{
  v1 = 0x65746144646E65;
  if (*v0 != 1)
  {
    v1 = 0x7461446573756170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_10041C380@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10041FC20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10041C3A8(uint64_t a1)
{
  v2 = sub_10041E780();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10041C3E4(uint64_t a1)
{
  v2 = sub_10041E780();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10041C458(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  sub_10010FC20(&qword_10118F120, &unk_100ED5660);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v3 = type metadata accessor for WidgetMusicItem(0);
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_10041C574, 0, 0);
}

uint64_t sub_10041C574(uint64_t a1)
{
  v2 = v1[17];
  if (v2)
  {
    v3 = v2;
    v4 = swift_task_alloc();
    v1[26] = v4;
    *v4 = v1;
    v4[1] = sub_10041C834;
    v5 = v1[21];

    return sub_100413238(v5, v3, 0, 2);
  }

  else
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Clearing current container and background", v9, 2u);
    }

    v10 = v1[22];
    v11 = v1[23];
    v13 = v1[19];
    v12 = v1[20];
    v14 = v1[18];

    v15 = *(v14 + 16);
    (*(v11 + 56))(v12, 1, 1, v10);
    sub_1000089F8(v12, v13, &qword_10118F120, &unk_100ED5660);
    v16 = v15 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentContainer;
    swift_beginAccess();
    v17 = sub_10010FC20(&qword_10118F108, &qword_100ECB5F0);
    sub_100714C40(*(v16 + *(v17 + 44)), *(v16 + *(v17 + 44) + 8), v13);
    sub_1000095E8(v13, &qword_10118F120, &unk_100ED5660);
    swift_endAccess();
    sub_1000095E8(v12, &qword_10118F120, &unk_100ED5660);
    v18 = v15 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__codableCurrentContainerBackground;
    swift_beginAccess();
    v19 = sub_10010FC20(&qword_10118F118, &unk_100ECB600);
    sub_100715450(*(v18 + *(v19 + 44)), *(v18 + *(v19 + 44) + 8), 1);
    swift_endAccess();

    v20 = v1[1];

    return v20();
  }
}

uint64_t sub_10041C834()
{

  return _swift_task_switch(sub_10041C930, 0, 0);
}

uint64_t sub_10041C930()
{
  v40 = v0;
  v1 = *(v0 + 168);
  if ((*(*(v0 + 184) + 48))(v1, 1, *(v0 + 176)) == 1)
  {

    sub_1000095E8(v1, &qword_10118F120, &unk_100ED5660);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Clearing current container and background", v4, 2u);
    }

    v5 = *(v0 + 176);
    v6 = *(v0 + 184);
    v8 = *(v0 + 152);
    v7 = *(v0 + 160);
    v9 = *(v0 + 144);

    v10 = *(v9 + 16);
    (*(v6 + 56))(v7, 1, 1, v5);
    sub_1000089F8(v7, v8, &qword_10118F120, &unk_100ED5660);
    v11 = v10 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentContainer;
    swift_beginAccess();
    v12 = sub_10010FC20(&qword_10118F108, &qword_100ECB5F0);
    sub_100714C40(*(v11 + *(v12 + 44)), *(v11 + *(v12 + 44) + 8), v8);
    sub_1000095E8(v8, &qword_10118F120, &unk_100ED5660);
    swift_endAccess();
    sub_1000095E8(v7, &qword_10118F120, &unk_100ED5660);
    v13 = v10 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__codableCurrentContainerBackground;
    swift_beginAccess();
    v14 = sub_10010FC20(&qword_10118F118, &unk_100ECB600);
    sub_100715450(*(v13 + *(v14 + 44)), *(v13 + *(v14 + 44) + 8), 1);
    swift_endAccess();

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v18 = *(v0 + 192);
    v17 = *(v0 + 200);
    sub_10041F8DC(v1, v17, type metadata accessor for WidgetMusicItem);
    sub_10041F80C(v17, v18, type metadata accessor for WidgetMusicItem);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 192);
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v24;
      *v23 = 136446210;
      v25 = sub_100439864();
      v27 = v26;
      sub_10041F874(v22, type metadata accessor for WidgetMusicItem);
      v28 = sub_1000105AC(v25, v27, &v39);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "Updating current container: %{public}s", v23, 0xCu);
      sub_10000959C(v24);
    }

    else
    {

      sub_10041F874(v22, type metadata accessor for WidgetMusicItem);
    }

    v29 = *(v0 + 200);
    v31 = *(v0 + 176);
    v30 = *(v0 + 184);
    v33 = *(v0 + 152);
    v32 = *(v0 + 160);
    v34 = *(*(v0 + 144) + 16);
    *(v0 + 216) = v34;
    sub_10041F80C(v29, v32, type metadata accessor for WidgetMusicItem);
    (*(v30 + 56))(v32, 0, 1, v31);
    sub_1000089F8(v32, v33, &qword_10118F120, &unk_100ED5660);
    v35 = v34 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentContainer;
    swift_beginAccess();
    v36 = sub_10010FC20(&qword_10118F108, &qword_100ECB5F0);
    sub_100714C40(*(v35 + *(v36 + 44)), *(v35 + *(v36 + 44) + 8), v33);
    sub_1000095E8(v33, &qword_10118F120, &unk_100ED5660);
    swift_endAccess();
    sub_1000095E8(v32, &qword_10118F120, &unk_100ED5660);
    v37 = *(v29 + *(v31 + 100));
    v38 = swift_task_alloc();
    *(v0 + 224) = v38;
    *v38 = v0;
    v38[1] = sub_10041CE84;

    return sub_10041D340(v37);
  }
}

uint64_t sub_10041CE84(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_10041CF84, 0, 0);
}

uint64_t sub_10041CF84()
{
  v1 = v0[29];
  v2 = v0[27] + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__codableCurrentContainerBackground;
  if (v1)
  {
    v3 = v0[17];
    swift_beginAccess();
    v4 = sub_10010FC20(&qword_10118F118, &unk_100ECB600);
    sub_100715450(*(v2 + *(v4 + 44)), *(v2 + *(v4 + 44) + 8), v1);
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    v5 = sub_10010FC20(&qword_10118F118, &unk_100ECB600);
    sub_100715450(*(v2 + *(v5 + 44)), *(v2 + *(v5 + 44) + 8), 1);
    swift_endAccess();
    v1 = v0[17];
  }

  v6 = v0[25];

  sub_10041F874(v6, type metadata accessor for WidgetMusicItem);

  v7 = v0[1];

  return v7();
}

id sub_10041D0E8()
{
  v1 = v0;
  type metadata accessor for NowPlayingDataProvider.Cache(0);
  swift_allocObject();
  *(v0 + 16) = sub_10041DF48();
  static Logger.NowPlaying.category(_:)(0xD000000000000012, 0x8000000100E49CE0);
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 processName];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4 == 0x646957636973754DLL && v6 == 0xEC00000073746567)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return v1;
    }
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "running in widget process, disabling fallback cache", v11, 2u);
  }

  v12 = [objc_opt_self() defaultMediaLibrary];
  if ([v12 artworkDataSource])
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      [v13 setUsesFallbackCache:0];
    }

    swift_unknownObjectRelease();
  }

  result = [objc_opt_self() sharedStoreArtworkDataSource];
  if (result)
  {
    v15 = result;
    [result setUsesFallbackCache:0];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10041D340(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Backdrop.SnapshotConfiguration();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10041D400, 0, 0);
}

uint64_t sub_10041D400()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 processName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == 0x636973754DLL && v5 == 0xE500000000000000)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Not in Music process: skipping background image generation", v10, 2u);
      }

      v11 = v0[1];

      return v11(0);
    }
  }

  v13 = v0[3];
  v0[8] = objc_opt_self();
  v0[9] = type metadata accessor for MainActor();
  v14 = v13;
  v0[10] = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10041D614, v16, v15);
}

uint64_t sub_10041D614()
{
  v1 = *(v0 + 64);

  *(v0 + 88) = [v1 mainScreen];

  return _swift_task_switch(sub_10041D69C, 0, 0);
}

uint64_t sub_10041D69C(uint64_t a1)
{
  *(v1 + 96) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10041D728, v3, v2);
}

uint64_t sub_10041D728()
{
  v1 = *(v0 + 88);

  [v1 scale];
  *(v0 + 104) = v2;

  return _swift_task_switch(sub_10041D7A8, 0, 0);
}

uint64_t sub_10041D7A8()
{
  v1 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  Backdrop.SnapshotConfiguration.init(image:size:scale:offset:traitCollection:)();
  type metadata accessor for Backdrop.CompositeRenderer();
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_10041D8A8;
  v3 = *(v0 + 56);

  return static Backdrop.CompositeRenderer.snapshot(configuration:)(v3);
}

uint64_t sub_10041D8A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_10041DBA8;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_10041D9D0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10041D9D0()
{
  v20 = v0;
  v1 = v0[16];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v18 = v0[7];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v0[2] = v1;
    v9 = v2;
    sub_10010FC20(&qword_101184460, &qword_100EDACF0);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000105AC(v10, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Generated background image: %{public}s", v7, 0xCu);
    sub_10000959C(v8);

    (*(v5 + 8))(v18, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[1];

  return v16(v1);
}

uint64_t sub_10041DBA8()
{
  v20 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to generate background image: %{public}@", v3, 0xCu);
    sub_1000095E8(v4, &unk_101183D70, &unk_100EC6540);
  }

  else
  {
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    v0[2] = 0;
    sub_10010FC20(&qword_101184460, &qword_100EDACF0);
    v14 = String.init<A>(describing:)();
    v16 = sub_1000105AC(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Generated background image: %{public}s", v12, 0xCu);
    sub_10000959C(v13);
  }

  (*(v10 + 8))(v9, v11);

  v17 = v0[1];

  return v17(0);
}

uint64_t sub_10041DE3C()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentItem, &qword_10118F108, &qword_100ECB5F0);
  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentItemProgress, &qword_10118F110, &qword_100ECB5F8);
  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__codableCurrentItemBackground, &qword_10118F118, &unk_100ECB600);
  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentContainer, &qword_10118F108, &qword_100ECB5F0);
  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__codableCurrentContainerBackground, &qword_10118F118, &unk_100ECB600);

  return swift_deallocClassInstance();
}

uint64_t sub_10041DF48()
{
  v1 = v0 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentItem;
  sub_10050352C(0x6979616C50776F4ELL, 0xEA0000000000676ELL, v0 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentItem);
  v2 = sub_10010FC20(&qword_10118F108, &qword_100ECB5F0);
  v3 = (v1 + *(v2 + 44));
  *v3 = 0x49746E6572727563;
  v3[1] = 0xEB000000006D6574;
  v4 = v0 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentItemProgress;
  sub_10050352C(0x6979616C50776F4ELL, 0xEA0000000000676ELL, v0 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentItemProgress);
  v5 = (v4 + *(sub_10010FC20(&qword_10118F110, &qword_100ECB5F8) + 44));
  *v5 = 0xD000000000000013;
  v5[1] = 0x8000000100E49D00;
  v6 = v0 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__codableCurrentItemBackground;
  sub_10050352C(0x6979616C50776F4ELL, 0xEA0000000000676ELL, v0 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__codableCurrentItemBackground);
  v7 = sub_10010FC20(&qword_10118F118, &unk_100ECB600);
  v8 = (v6 + *(v7 + 44));
  *v8 = 0xD000000000000015;
  v8[1] = 0x8000000100E49D20;
  v9 = v0 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentContainer;
  sub_10050352C(0x6979616C50776F4ELL, 0xEA0000000000676ELL, v0 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__currentContainer);
  v10 = (v9 + *(v2 + 44));
  *v10 = 0xD000000000000010;
  v10[1] = 0x8000000100E49D40;
  v11 = v0 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__codableCurrentContainerBackground;
  sub_10050352C(0x6979616C50776F4ELL, 0xEA0000000000676ELL, v0 + OBJC_IVAR____TtCC5Music22NowPlayingDataProviderP33_2FC75CDB8B46BF9DF1FD00C5072461DA5Cache__codableCurrentContainerBackground);
  v12 = (v11 + *(v7 + 44));
  *v12 = 0xD00000000000001ALL;
  v12[1] = 0x8000000100E49D60;
  return v0;
}

uint64_t sub_10041E128()
{

  v1 = OBJC_IVAR____TtC5Music22NowPlayingDataProvider_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10041E1F4(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

void sub_10041E2BC(uint64_t a1)
{
  sub_10041E3C4(319);
  if (v1 <= 0x3F)
  {
    sub_10041E4D8(319);
    if (v2 <= 0x3F)
    {
      sub_10041E5C4(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10041E3C4(uint64_t a1)
{
  if (!qword_10118EEA8)
  {
    v2 = type metadata accessor for WidgetMusicItem(255);
    v3 = sub_10041E490(&qword_10118EEB0, type metadata accessor for WidgetMusicItem, &unk_100ECC71C);
    v4 = sub_10041E490(&qword_10118EEB8, type metadata accessor for WidgetMusicItem, &unk_100ECC6F4);
    v5 = type metadata accessor for FileBacked(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_10118EEA8);
    }
  }
}

uint64_t sub_10041E490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10041E4D8(uint64_t a1)
{
  if (!qword_10118EEC0)
  {
    v2 = type metadata accessor for NowPlayingDataProvider.ItemProgress(255);
    v3 = sub_10041E490(&qword_10118EEC8, type metadata accessor for NowPlayingDataProvider.ItemProgress, &unk_100ECB5B0);
    v4 = sub_10041E490(&qword_10118EED0, type metadata accessor for NowPlayingDataProvider.ItemProgress, &unk_100ECB588);
    v5 = type metadata accessor for FileBacked(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_10118EEC0);
    }
  }
}

void sub_10041E5C4(uint64_t a1)
{
  if (!qword_10118EED8)
  {
    v2 = sub_10041E62C();
    v3 = sub_10041E680();
    v4 = type metadata accessor for FileBacked(a1, &type metadata for CodableImage, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_10118EED8);
    }
  }
}

unint64_t sub_10041E62C()
{
  result = qword_10118EEE0;
  if (!qword_10118EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EEE0);
  }

  return result;
}

unint64_t sub_10041E680()
{
  result = qword_10118EEE8;
  if (!qword_10118EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EEE8);
  }

  return result;
}

void sub_10041E6FC(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1001E8510(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10041E780()
{
  result = qword_10118F0D0;
  if (!qword_10118F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118F0D0);
  }

  return result;
}

uint64_t sub_10041E7D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10041E844(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_10010FC20(&unk_1011838C0, &qword_100EBD688);
  __chkstk_darwin();
  v80 = &v76 - v4;
  v81 = type metadata accessor for Station();
  v97 = *(v81 - 8);
  __chkstk_darwin();
  v78 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v84 = &v76 - v6;
  v85 = type metadata accessor for Playlist();
  v96 = *(v85 - 8);
  __chkstk_darwin();
  v79 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v95 = &v76 - v8;
  v9 = type metadata accessor for Album();
  v87 = *(v9 - 8);
  v88 = v9;
  __chkstk_darwin();
  v82 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011803F0, &qword_100EBA6C0);
  __chkstk_darwin();
  v98 = &v76 - v11;
  v12 = type metadata accessor for MusicMovie();
  v92 = *(v12 - 8);
  v93 = v12;
  __chkstk_darwin();
  v86 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011996D0, &unk_100ED8090);
  __chkstk_darwin();
  v15 = &v76 - v14;
  v16 = type metadata accessor for TVEpisode();
  v94 = *(v16 - 8);
  __chkstk_darwin();
  v89 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v19 = &v76 - v18;
  v20 = type metadata accessor for MusicVideo();
  v90 = *(v20 - 8);
  __chkstk_darwin();
  v83 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v23 = &v76 - v22;
  v24 = type metadata accessor for Song();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v27 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  v29 = a1;
  if (v28)
  {
    v30 = v28;
    v91 = v29;
    v77 = v2;
    v31 = v2;
    if ([v30 hasVideo])
    {
    }

    else
    {
      v76 = v31;
      dispatch thunk of LegacyModelObjectConvertible.init(_:)();
      if ((*(v25 + 48))(v23, 1, v24) != 1)
      {
        v59 = *(v25 + 32);
        v59(v27, v23, v24);
        v60 = v91;
        v91[3] = v24;
        v60[4] = &protocol witness table for Song;
        v61 = sub_10001C8B8(v60);
        v59(v61, v27, v24);

        return;
      }

      sub_1000095E8(v23, &unk_101183960, &unk_100EBCF90);
    }

    v32 = v31;
    if ([v30 hasVideo])
    {
      v33 = v32;
      dispatch thunk of LegacyModelObjectConvertible.init(_:)();
      v34 = v90;
      v35 = (*(v90 + 48))(v19, 1, v20);
      v36 = v91;
      if (v35 != 1)
      {
        v66 = *(v34 + 32);
        v67 = v83;
        v66(v83, v19, v20);
        v36[3] = v20;
        v36[4] = sub_10041E490(&unk_101193C00, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
        v68 = sub_10001C8B8(v36);
        v66(v68, v67, v20);

        return;
      }

      sub_1000095E8(v19, &unk_1011846B0, &unk_100ECB630);
      v2 = v77;
      v29 = v36;
    }

    else
    {

      v29 = v91;
      v2 = v77;
    }
  }

  v37 = v29;
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  v39 = v98;
  if (v38)
  {
    v40 = v2;
    dispatch thunk of LegacyModelObjectConvertible.init(_:)();
    v41 = v94;
    if ((*(v94 + 48))(v15, 1, v16) != 1)
    {
      v56 = *(v41 + 32);
      v57 = v89;
      v56(v89, v15, v16);
      v37[3] = v16;
      v37[4] = sub_10041E490(&qword_101199720, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      v58 = sub_10001C8B8(v37);
      v56(v58, v57, v16);
      return;
    }

    sub_1000095E8(v15, &unk_1011996D0, &unk_100ED8090);
  }

  objc_opt_self();
  v42 = swift_dynamicCastObjCClass();
  v44 = v96;
  v43 = v97;
  v45 = v95;
  if (v42)
  {
    v46 = v2;
    v47 = v93;
    dispatch thunk of LegacyModelObjectConvertible.init(_:)();
    v48 = v92;
    if ((*(v92 + 48))(v39, 1, v47) != 1)
    {
      v62 = *(v48 + 32);
      v63 = v86;
      v62(v86, v39, v47);
      v37[3] = v47;
      v37[4] = sub_10041E490(&unk_1011A38E0, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      v64 = sub_10001C8B8(v37);
      v65 = v63;
      goto LABEL_32;
    }

    sub_1000095E8(v39, &unk_1011803F0, &qword_100EBA6C0);
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
LABEL_19:
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
LABEL_22:
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
LABEL_25:
        v37[4] = 0;
        *v37 = 0u;
        *(v37 + 1) = 0u;
        return;
      }

      v54 = v2;
      v50 = v81;
      v55 = v80;
      dispatch thunk of LegacyModelObjectConvertible.init(_:)();
      if ((*(v43 + 48))(v55, 1, v50) == 1)
      {
        sub_1000095E8(v55, &unk_1011838C0, &qword_100EBD688);
        goto LABEL_25;
      }

      v74 = v55;
      v69 = *(v43 + 32);
      v70 = v78;
      v69(v78, v74, v50);
      v71 = &protocol witness table for Station;
      goto LABEL_34;
    }

    v52 = v2;
    v47 = v85;
    v53 = v84;
    dispatch thunk of LegacyModelObjectConvertible.init(_:)();
    if ((*(v44 + 48))(v53, 1, v47) == 1)
    {
      sub_1000095E8(v53, &unk_1011814D0, &qword_100EC12A0);
      goto LABEL_22;
    }

    v72 = v53;
    v62 = *(v44 + 32);
    v73 = v79;
    v62(v79, v72, v47);
    v37[3] = v47;
    v37[4] = &protocol witness table for Playlist;
    v64 = sub_10001C8B8(v37);
    v65 = v73;
LABEL_32:
    v62(v64, v65, v47);
    return;
  }

  v49 = v2;
  v50 = v88;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  v51 = v87;
  if ((*(v87 + 48))(v45, 1, v50) == 1)
  {
    sub_1000095E8(v45, &unk_101184730, &unk_100ECB920);
    goto LABEL_19;
  }

  v69 = *(v51 + 32);
  v70 = v82;
  v69(v82, v45, v50);
  v71 = &protocol witness table for Album;
LABEL_34:
  v37[3] = v50;
  v37[4] = v71;
  v75 = sub_10001C8B8(v37);
  v69(v75, v70, v50);
}

BOOL sub_10041F4A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v10 = sub_10010FC20(&qword_10118F0F0, &unk_100EDF690);
  __chkstk_darwin();
  v12 = &v22 - v11;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v13 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v23 = v5;
  v14 = *(v13 + 24);
  v15 = *(v10 + 48);
  sub_1000089F8(a1 + v14, v12, &qword_101188C20, &qword_100EC2030);
  v16 = a2 + v14;
  v17 = v23;
  sub_1000089F8(v16, &v12[v15], &qword_101188C20, &qword_100EC2030);
  v18 = *(v17 + 48);
  if (v18(v12, 1, v4) == 1)
  {
    if (v18(&v12[v15], 1, v4) == 1)
    {
      sub_1000095E8(v12, &qword_101188C20, &qword_100EC2030);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1000089F8(v12, v9, &qword_101188C20, &qword_100EC2030);
  if (v18(&v12[v15], 1, v4) == 1)
  {
    (*(v17 + 8))(v9, v4);
LABEL_8:
    sub_1000095E8(v12, &qword_10118F0F0, &unk_100EDF690);
    return 0;
  }

  (*(v17 + 32))(v7, &v12[v15], v4);
  sub_10041E490(&qword_10118F0F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v17 + 8);
  v21(v7, v4);
  v21(v9, v4);
  sub_1000095E8(v12, &qword_101188C20, &qword_100EC2030);
  return (v20 & 1) != 0;
}

uint64_t sub_10041F80C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10041F874(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10041F8DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_10041F944(uint64_t a1)
{
  v3 = *(sub_10010FC20(&qword_10118F138, &qword_100ECB648) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100411C90(a1, v4, v5);
}

uint64_t sub_10041F9C4(void *a1, uint64_t a2)
{
  sub_10010FC20(&qword_10118F138, &qword_100ECB648);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  return sub_100411F0C(a1, a2, v5, v6);
}

unint64_t sub_10041FA78()
{
  result = qword_10118F148;
  if (!qword_10118F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118F148);
  }

  return result;
}

unint64_t sub_10041FAD0()
{
  result = qword_10118F150;
  if (!qword_10118F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118F150);
  }

  return result;
}

unint64_t sub_10041FB28()
{
  result = qword_10118F158;
  if (!qword_10118F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118F158);
  }

  return result;
}

unint64_t sub_10041FB80()
{
  result = qword_10118F160;
  if (!qword_10118F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118F160);
  }

  return result;
}

unint64_t sub_10041FBD4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109ACF8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10041FC20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446573756170 && a2 == 0xE900000000000065)
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

void sub_10041FD54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v172 = a1;
  v170 = type metadata accessor for Logger();
  v161 = *(v170 - 8);
  __chkstk_darwin();
  v167 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v164 = &v141 - v6;
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v163 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v171 = &v141 - v8;
  v166 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v165 = *(v166 - 8);
  __chkstk_darwin();
  v160 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = v9;
  __chkstk_darwin();
  v158 = &v141 - v10;
  sub_10010FC20(&qword_10118F1F0, &unk_100ECB930);
  __chkstk_darwin();
  v149 = &v141 - v11;
  v148 = type metadata accessor for MusicFavoriteStatus();
  v147 = *(v148 - 8);
  __chkstk_darwin();
  v146 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v145 = &v141 - v13;
  v154 = type metadata accessor for Artist();
  v153 = *(v154 - 8);
  __chkstk_darwin();
  v162 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101187768, &qword_100EC2C70);
  __chkstk_darwin();
  v152 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v151 = (&v141 - v16);
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v18 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v141 - v19;
  __chkstk_darwin();
  v150 = &v141 - v21;
  v174 = type metadata accessor for Genre();
  v168 = *(v174 - 8);
  __chkstk_darwin();
  v173 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v141 - v23;
  v25 = type metadata accessor for Composer();
  v26 = *(v25 - 8);
  __chkstk_darwin();
  v28 = &v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = *(_s6AlbumsV5ScopeOMa(0) - 8);
  __chkstk_darwin();
  v157 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v29;
  __chkstk_darwin();
  v31 = &v141 - v30;
  if (a2)
  {
    v177 = *(a2 + 16);
    v175 = dispatch thunk of CustomStringConvertible.description.getter();
    v176 = v32;
    v33._countAndFlagsBits = 0x736D75626C6120;
    v33._object = 0xE700000000000000;
    String.append(_:)(v33);
    a2 = v176;
    v169 = v175;
  }

  else
  {
    v169 = 0;
  }

  sub_100426BA4(v172, v31, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v36 = v171;
    if (EnumCaseMultiPayload)
    {
      (*(v26 + 32))(v28, v31, v25);
      if (*&v3[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_mediaContainerHeader])
      {
        v55 = Composer.name.getter();
        sub_100261EE0(v55, v56);
        v57 = sub_1002608E8(v169, a2);
        (*(v26 + 8))(v28, v25, v57);
        v35 = v170;
        goto LABEL_53;
      }

      (*(v26 + 8))(v28, v25);
    }

    else
    {
      v37 = v168;
      v38 = v24;
      v39 = v31;
      v40 = v174;
      (*(v168 + 32))(v24, v39, v174);
      v41 = *&v3[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_mediaContainerHeader];
      if (v41)
      {
        v42 = v150;
        v143 = a2;
        Genre.artwork.getter();
        v173 = v38;
        sub_1000089F8(v42, v20, &unk_101188920, &qword_100EBCC50);
        sub_100261718(v20);
        sub_1000095E8(v42, &unk_101188920, &qword_100EBCC50);
        v43 = sub_10010FC20(&qword_1011875B8, "^\a\v");
        v44 = *(v43 + 48);
        v45 = v151;
        *v151 = 0;
        *(v45 + 8) = 1;
        v46 = type metadata accessor for RoundedCornerStyle();
        (*(*(v46 - 8) + 56))(v45 + v44, 1, 1, v46);
        (*(*(v43 - 8) + 56))(v45, 0, 1, v43);
        v47 = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel.Shape(0);
        (*(*(v47 - 8) + 56))(v45, 0, 1, v47);
        v48 = *(v41 + OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_viewModel);
        v49 = v152;
        sub_1000089F8(v45, v152, &qword_101187768, &qword_100EC2C70);
        swift_getKeyPath();
        v162 = &v141;
        __chkstk_darwin();
        *(&v141 - 2) = v48;
        *(&v141 - 1) = v49;
        v175 = v48;
        sub_100426DC4(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        v36 = v171;

        sub_1000095E8(v45, &qword_101187768, &qword_100EC2C70);
        sub_1000095E8(v49, &qword_101187768, &qword_100EC2C70);
        v50 = v173;
        v51 = Genre.name.getter();
        v35 = v170;
        sub_100261EE0(v51, v52);
        v53 = sub_1002608E8(v169, v143);
        (*(v37 + 8))(v50, v174, v53);
        goto LABEL_53;
      }

      (*(v37 + 8))(v24, v40);
    }

    v35 = v170;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v54 = v162;
    (*(v153 + 32))(v162, v31, v154);
    v144 = *&v3[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_mediaContainerHeader];
    v142 = v3;
    if (v144)
    {
      v143 = a2;
      sub_10010FC20(&unk_10118F200, &unk_100ECB940);
      swift_allocObject();
      MusicAttributeProperty.init(_:)();
      Artist.subscript.getter();

      v60 = v144;
      v61 = v150;
      sub_1000089F8(v18, v150, &unk_101188920, &qword_100EBCC50);
      sub_100261718(v61);
      sub_1000095E8(v18, &unk_101188920, &qword_100EBCC50);
      v62 = sub_10010FC20(&qword_1011875B8, "^\a\v");
      v63 = v151;
      (*(*(v62 - 8) + 56))(v151, 1, 1, v62);
      v64 = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel.Shape(0);
      (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
      v65 = *(v60 + OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_viewModel);
      v66 = v152;
      sub_1000089F8(v63, v152, &qword_101187768, &qword_100EC2C70);
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v141 - 2) = v65;
      *(&v141 - 1) = v66;
      v175 = v65;
      sub_100426DC4(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v150 = 0;

      sub_1000095E8(v63, &qword_101187768, &qword_100EC2C70);
      sub_1000095E8(v66, &qword_101187768, &qword_100EC2C70);
      v54 = v162;
      v67 = Artist.name.getter();
      sub_100261EE0(v67, v68);
      v69 = v145;
      Artist.favoriteStatus.getter();
      v70 = v147;
      v71 = v146;
      v72 = v148;
      (*(v147 + 104))(v146, enum case for MusicFavoriteStatus.favorited(_:), v148);
      v73 = static MusicFavoriteStatus.== infix(_:_:)();
      v74 = *(v70 + 8);
      v74(v71, v72);
      v74(v69, v72);
      if (v73)
      {
        v75 = 0x6C69662E72617473;
      }

      else
      {
        v75 = 0;
      }

      if (v73)
      {
        v76 = 0xE90000000000006CLL;
      }

      else
      {
        v76 = 0;
      }

      sub_100260800(v75, v76);
      v3 = v142;
      v59 = v169;
      v35 = v170;
      v58 = v149;
      a2 = v143;
    }

    else
    {
      v150 = 0;
      v58 = v149;
      v59 = v169;
      v35 = v170;
    }

    sub_10010FC20(&qword_10118F1F8, &unk_100ED76C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = v59;
    *(inited + 40) = a2;
    Artist.genres.getter();
    v78 = sub_10010FC20(&qword_10118D210, &qword_100EBD760);
    v79 = *(v78 - 8);
    if ((v79[6])(v58, 1, v78) == 1)
    {
      sub_1000095E8(v58, &qword_10118F1F0, &unk_100ECB930);
      v80 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_100020674(&unk_10118C240, &qword_10118D210, &qword_100EBD760, &protocol conformance descriptor for MusicItemCollection<A>);
      v81 = dispatch thunk of Collection.count.getter();
      v80 = _swiftEmptyArrayStorage;
      if (v81)
      {
        v82 = v81;
        v151 = v79;
        v152 = inited;
        v177 = _swiftEmptyArrayStorage;
        sub_10066CC94(0, v81 & ~(v81 >> 63), 0);
        v80 = v177;
        dispatch thunk of Collection.startIndex.getter();
        if (v82 < 0)
        {
LABEL_64:
          __break(1u);
          return;
        }

        v169 = (v168 + 16);
        v168 += 8;
        do
        {
          v83 = v78;
          v84 = dispatch thunk of Collection.subscript.read();
          v85 = v173;
          v86 = v174;
          (*v169)(v173);
          v84(&v175, 0);
          v87 = Genre.name.getter();
          v89 = v88;
          (*v168)(v85, v86);
          v177 = v80;
          v91 = v80[2];
          v90 = v80[3];
          if (v91 >= v90 >> 1)
          {
            sub_10066CC94((v90 > 1), v91 + 1, 1);
            v80 = v177;
          }

          v80[2] = v91 + 1;
          v92 = &v80[2 * v91];
          v92[4] = v87;
          v92[5] = v89;
          dispatch thunk of Collection.formIndex(after:)();
          --v82;
          v78 = v83;
        }

        while (v82);
        v3 = v142;
        v35 = v170;
        v54 = v162;
        inited = v152;
        v79 = v151;
      }

      else
      {
        v35 = v170;
      }

      (v79[1])(v58, v78);
    }

    v36 = v171;
    v175 = inited;
    sub_1001255D8(v80);
    v93 = v175;
    if (v144)
    {
      v94 = 0;
      v95 = v175[2];
      v96 = _swiftEmptyArrayStorage;
LABEL_38:
      v97 = 16 * v94 + 40;
      while (v95 != v94)
      {
        if (v94 >= v93[2])
        {
          __break(1u);
          goto LABEL_64;
        }

        ++v94;
        v98 = v97 + 16;
        v99 = *(v93 + v97);
        v97 += 16;
        if (v99)
        {
          v100 = *(v93 + v98 - 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = sub_100498B7C(0, *(v96 + 2) + 1, 1, v96);
          }

          v102 = *(v96 + 2);
          v101 = *(v96 + 3);
          if (v102 >= v101 >> 1)
          {
            v96 = sub_100498B7C((v101 > 1), v102 + 1, 1, v96);
          }

          *(v96 + 2) = v102 + 1;
          v103 = &v96[16 * v102];
          *(v103 + 4) = v100;
          *(v103 + 5) = v99;
          goto LABEL_38;
        }
      }

      v175 = v96;
      sub_10010FC20(&qword_101183BC8, &unk_100EBF620);
      sub_100020674(&unk_101183BD0, &qword_101183BC8, &unk_100EBF620, &protocol conformance descriptor for [A]);
      v104 = BidirectionalCollection<>.joined(separator:)();
      v106 = v105;

      v107 = HIBYTE(v106) & 0xF;
      if ((v106 & 0x2000000000000000) == 0)
      {
        v107 = v104 & 0xFFFFFFFFFFFFLL;
      }

      if (!v107)
      {

        v104 = 0;
        v106 = 0;
      }

      v36 = v171;
      v108 = v162;
      v109 = sub_1002608E8(v104, v106);
      (*(v153 + 8))(v108, v154, v109);
    }

    else
    {
      (*(v153 + 8))(v54, v154);
    }
  }

  else
  {
    v35 = v170;

    v36 = v171;
  }

LABEL_53:
  v110 = *(*&v3[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_responseController] + 48);
  v111 = *(*v110 + 96);
  swift_beginAccess();
  v112 = v110 + v111;
  v113 = v163;
  sub_100426BA4(v112, v163, _s6AlbumsVMa);
  v114 = type metadata accessor for Album();
  v115 = v164;
  (*(*(v114 - 8) + 56))(v164, 1, 1, v114);
  sub_100289108(v115, v36);
  sub_1000095E8(v115, &unk_101184730, &unk_100ECB920);
  sub_100426D64(v113, _s6AlbumsVMa);
  v116 = v165;
  v117 = v166;
  if ((*(v165 + 48))(v36, 1, v166) == 1)
  {
    sub_1000095E8(v36, &unk_10118CDB0, &unk_100EC0360);
    Logger.init(subsystem:category:)();
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
    }

    (*(v161 + 8))(v167, v35);
    v121 = *&v3[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_mediaContainerHeader];
    if (v121)
    {
      v122 = &v121[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_playAction];
      v123 = *&v121[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_playAction];
      v124 = *&v121[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_playAction + 8];
      *v122 = 0;
      *(v122 + 1) = 0;
LABEL_60:
      sub_100020438(v123, v124);
      [*&v3[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_tableView] frame];
      [v121 sizeThatFits:{CGRectGetWidth(v178), 1.79769313e308}];
      [v121 frame];
      [v121 setFrame:?];
    }
  }

  else
  {
    v126 = v116 + 32;
    v125 = *(v116 + 32);
    v127 = v158;
    v125(v158, v36, v117);
    v128 = v157;
    sub_100426BA4(v172, v157, _s6AlbumsV5ScopeOMa);
    v129 = v160;
    v125(v160, v127, v117);
    v130 = (*(v155 + 80) + 16) & ~*(v155 + 80);
    v131 = (v156 + *(v126 + 48) + v130) & ~*(v126 + 48);
    v132 = (v159 + v131 + 7) & 0xFFFFFFFFFFFFFFF8;
    v133 = v117;
    v134 = swift_allocObject();
    sub_100426C0C(v128, v134 + v130, _s6AlbumsV5ScopeOMa);
    v125((v134 + v131), v129, v133);
    *(v134 + v132) = v3;
    v121 = *&v3[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_mediaContainerHeader];
    if (v121)
    {
      v135 = swift_allocObject();
      *(v135 + 16) = sub_100426A60;
      *(v135 + 24) = v134;
      v136 = &v121[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_playAction];
      v137 = *&v121[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_playAction];
      v138 = *&v121[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_playAction + 8];
      *v136 = sub_100426B60;
      v136[1] = v135;
      v139 = v3;
      v123 = v137;
      v124 = v138;
      goto LABEL_60;
    }

    v140 = v3;
  }
}

uint64_t sub_1004215A0(uint64_t a1)
{
  sub_10010FC20(&unk_1011926F0, &qword_100ECF890);
  __chkstk_darwin();
  v4 = &v13 - v3;
  v5 = _s6AlbumsV5ScopeOMa(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_loadedScope;
  swift_beginAccess();
  sub_100426E0C(a1, v1 + v9);
  swift_endAccess();
  sub_1000089F8(v1 + v9, v4, &unk_1011926F0, &qword_100ECF890);
  v10 = *(v6 + 48);
  if (v10(v4, 1, v5) == 1)
  {
    sub_100426BA4(v1 + OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_scope, v8, _s6AlbumsV5ScopeOMa);
    if (v10(v4, 1, v5) != 1)
    {
      sub_1000095E8(v4, &unk_1011926F0, &qword_100ECF890);
    }
  }

  else
  {
    sub_100426C0C(v4, v8, _s6AlbumsV5ScopeOMa);
  }

  v11 = *(v1 + OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_albums);

  sub_10041FD54(v8, v11);

  sub_1000095E8(a1, &unk_1011926F0, &qword_100ECF890);
  return sub_100426D64(v8, _s6AlbumsV5ScopeOMa);
}

char *sub_1004217FC(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v44 = &v41 - v6;
  v45 = type metadata accessor for Artist();
  v42 = *(v45 - 8);
  v7 = *(v42 + 64);
  __chkstk_darwin();
  v41 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v41 - v8;
  v9 = _s6AlbumsV5ScopeOMa(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v41 - v13;
  __chkstk_darwin();
  v16 = &v41 - v15;
  _s6AlbumsVMa(0);
  v17 = __chkstk_darwin();
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 56))(&v3[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_loadedScope], 1, 1, v9, v17);
  v20 = OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_tableView;
  *&v3[v20] = [objc_allocWithZone(MCDTableView) init];
  sub_100426BA4(a1, &v3[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_scope], _s6AlbumsV5ScopeOMa);
  sub_100426BA4(a1, v16, _s6AlbumsV5ScopeOMa);
  sub_1002884E4(v16, a2, v19);
  sub_10010FC20(&qword_101184618, &unk_100EC0350);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_responseController] = sub_1003A1E94(v19);
  v3[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_includeOnlyDownloadedContent] = a2;
  *&v3[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_albums] = _swiftEmptyArrayStorage;
  sub_100426BA4(a1, v14, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = 0;
  if (EnumCaseMultiPayload <= 2)
  {
    sub_100426D64(v14, _s6AlbumsV5ScopeOMa);
    type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView();
    v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  *&v3[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_mediaContainerHeader] = v22;
  v47.receiver = v3;
  v47.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v47, "initWithNibName:bundle:", 0, 0);
  sub_100426BA4(a1, v12, _s6AlbumsV5ScopeOMa);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24 <= 2)
  {
    if (v24 > 1)
    {
      v26 = v42;
      v25 = v43;
      ObjectType = *(v42 + 32);
      v27 = v45;
      (ObjectType)(v43, v12, v45);
      v28 = type metadata accessor for TaskPriority();
      (*(*(v28 - 8) + 56))(v44, 1, 1, v28);
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = v41;
      (*(v26 + 16))(v41, v25, v27);
      type metadata accessor for MainActor();

      v31 = static MainActor.shared.getter();
      v32 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      *(v33 + 24) = &protocol witness table for MainActor;
      v34 = v45;
      (ObjectType)(v33 + v32, v30, v45);
      *(v33 + ((v7 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;

      sub_10086E3AC(0, 0, v44, &unk_100ECB8C8, v33);

      (*(v26 + 8))(v43, v34);
    }

    else
    {
      sub_100426D64(v12, _s6AlbumsV5ScopeOMa);
    }
  }

  v35 = v23;
  UIViewController.playActivityFeatureIdentifier.setter(1);
  v36 = *&v35[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_responseController];
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v38 = *(v36 + 32);
  v39 = *(v36 + 40);
  *(v36 + 32) = sub_100426A58;
  *(v36 + 40) = v37;

  sub_100020438(v38, v39);

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  sub_100426D64(a1, _s6AlbumsV5ScopeOMa);

  return v35;
}

uint64_t sub_100421E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_10010FC20(&unk_1011926F0, &qword_100ECF890);
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for Artist();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v8;
  v5[13] = v7;

  return _swift_task_switch(sub_100421F9C, v8, v7);
}

uint64_t sub_100421F9C()
{
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v1 = swift_allocObject();
  v0[14] = v1;
  *(v1 + 16) = xmmword_100EBC6C0;
  sub_10010FC20(&qword_10118F230, &qword_100ECB998);
  *(v1 + 32) = static PartialMusicProperty<A>.genres.getter();
  v2 = swift_task_alloc();
  v0[15] = v2;
  v3 = sub_100426DC4(&qword_101181D10, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
  *v2 = v0;
  v2[1] = sub_1004220E4;
  v4 = v0[10];
  v5 = v0[8];

  return MusicItem<>.with(_:)(v4, v1, v5, &protocol witness table for Artist, &protocol witness table for Artist, v3);
}

uint64_t sub_1004220E4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_10042233C;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100422200;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100422200()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[7];
    (*(v0[9] + 16))(v3, v0[10], v0[8]);
    v4 = _s6AlbumsV5ScopeOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    sub_1004215A0(v3);
  }

  (*(v0[9] + 8))(v0[10], v0[8]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10042233C()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1004223C8(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  __chkstk_darwin();
  v3 = v28 - v2;
  v4 = sub_10010FC20(&qword_1011846D8, &unk_100EC0390);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v28 - v6;
  v8 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v28 - v10;
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v13 = v28 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    RequestResponse.Revision.content.getter(v13);
    v17 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
    if ((*(*(v17 - 8) + 48))(v13, 1, v17) == 1)
    {
      sub_1000095E8(v13, &unk_1011846E0, &qword_100EC8E40);
    }

    else
    {
      (*(v9 + 16))(v11, v13, v8);
      sub_1000095E8(v13, &unk_101184700, &unk_100EC03C0);
      v18 = MusicLibrarySectionedResponse.sections.getter();
      (*(v9 + 8))(v11, v8);
      swift_getKeyPath();
      v31 = _swiftEmptyArrayStorage;
      v19 = *(v18 + 16);
      if (v19)
      {
        v21 = *(v5 + 16);
        v20 = v5 + 16;
        v29 = v16;
        v30 = v21;
        v22 = *(v20 + 64);
        v28[1] = v18;
        v23 = v18 + ((v22 + 32) & ~v22);
        v24 = *(v20 + 56);
        v25 = (v20 - 8);
        do
        {
          v30(v7, v23, v4);
          swift_getAtKeyPath();
          (*v25)(v7, v4);
          sub_100124960(v3);
          v23 += v24;
          --v19;
        }

        while (v19);

        v26 = v31;
        v16 = v29;
        goto LABEL_10;
      }
    }

    v26 = _swiftEmptyArrayStorage;
LABEL_10:
    v27 = *&v16[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_albums];
    *&v16[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_albums] = v26;
    sub_10042380C(v27);
  }

  return result;
}

void sub_100422874()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_10010FC20(&unk_1011926F0, &qword_100ECF890);
  __chkstk_darwin();
  v4 = &v42 - v3;
  v5 = _s6AlbumsV5ScopeOMa(0);
  v43 = *(v5 - 8);
  v44 = v5;
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45.receiver = v1;
  v45.super_class = ObjectType;
  objc_msgSendSuper2(&v45, "viewDidLoad", v6);
  v42 = OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_scope;
  sub_1006E703C();
  v9 = String._bridgeToObjectiveC()();

  [v1 setTitle:v9];

  v10 = [v1 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v12 clearColor];
  [v11 setBackgroundColor:v13];

  v14 = OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_tableView;
  [*&v1[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_tableView] setAutoresizingMask:18];
  v15 = *&v1[v14];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v15 setFrame:{v19, v21, v23, v25}];
  v26 = [v1 view];
  if (!v26)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v27 = v26;
  [v26 addSubview:*&v1[v14]];

  v28 = *&v1[v14];
  v29 = [v12 clearColor];
  [v28 setBackgroundColor:v29];

  [*&v1[v14] setDataSource:v1];
  [*&v1[v14] setDelegate:v1];
  [*&v1[v14] _setHeaderAndFooterViewsFloat:0];
  [*&v1[v14] setRemembersLastFocusedIndexPath:1];
  v30 = *&v1[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_mediaContainerHeader];
  if (v30)
  {
    v31 = v30;
    v32 = [v1 navigationItem];
    v33 = [objc_allocWithZone(UIView) init];
    [v32 setTitleView:v33];

    [*&v1[v14] setTableHeaderView:v31];
    v34 = OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_loadedScope;
    swift_beginAccess();
    sub_1000089F8(&v1[v34], v4, &unk_1011926F0, &qword_100ECF890);
    v35 = v44;
    v36 = *(v43 + 48);
    if (v36(v4, 1, v44) == 1)
    {
      sub_100426BA4(&v1[v42], v8, _s6AlbumsV5ScopeOMa);
      if (v36(v4, 1, v35) != 1)
      {
        sub_1000095E8(v4, &unk_1011926F0, &qword_100ECF890);
      }
    }

    else
    {
      sub_100426C0C(v4, v8, _s6AlbumsV5ScopeOMa);
    }

    v37 = *&v1[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_albums];

    sub_10041FD54(v8, v37);

    sub_100426D64(v8, _s6AlbumsV5ScopeOMa);
  }

  v38 = *&v1[v14];
  sub_100426F9C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = v38;
  v41 = String._bridgeToObjectiveC()();
  [v40 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v41];
}

uint64_t sub_100422DF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a3;
  v45 = a2;
  v54 = a1;
  v52 = a4;
  ObjectType = swift_getObjectType();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v56 = &v44 - v4;
  v46 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  __chkstk_darwin();
  v53 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v6;
  __chkstk_darwin();
  v55 = &v44 - v7;
  v8 = type metadata accessor for Artist();
  v44 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Genre();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Composer();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100426BA4(v45, v20, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v33 = *(v16 + 32);
      v33(v18, v20, v15);
      *(&v59 + 1) = v15;
      v60 = sub_100426DC4(&unk_10118F220, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
      v34 = sub_10001C8B8(&v58);
      v33(v34, v18, v15);
    }

    else
    {
      v29 = *(v12 + 32);
      v29(v14, v20, v11);
      *(&v59 + 1) = v11;
      v60 = &protocol witness table for Genre;
      v30 = sub_10001C8B8(&v58);
      v29(v30, v14, v11);
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v31 = *(v44 + 32);
    v31(v10, v20, v8);
    *(&v59 + 1) = v8;
    v60 = &protocol witness table for Artist;
    v32 = sub_10001C8B8(&v58);
    v31(v32, v10, v8);
LABEL_8:
    v25 = v55;
    v24 = v56;
    v27 = v53;
    v26 = v54;
    v28 = v52;
    v22 = v49;
    v23 = ObjectType;
    goto LABEL_9;
  }

  v22 = v49;
  v23 = ObjectType;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v25 = v55;
  v24 = v56;
  v27 = v53;
  v26 = v54;
  v28 = v52;
LABEL_9:
  v35 = v50;
  v61[0] = v58;
  v61[1] = v59;
  v62 = v60;
  v36 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v37 = v47;
  (*(*(v36 - 8) + 16))(v47, v35, v36);
  swift_storeEnumTagMultiPayload();
  sub_1000089F8(v61, &v58, &qword_10118B990, &unk_100EBE7B0);
  v57[3] = v23;
  v57[4] = &off_1010AB768;
  v57[0] = v28;
  v38 = v28;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v37, &v58, 3, 1, v26 & 1, 0, 0, 1, v25, v28, v57);
  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v24, 1, 1, v39);
  sub_100426BA4(v25, v27, type metadata accessor for PlaybackIntentDescriptor);
  type metadata accessor for MainActor();
  v40 = static MainActor.shared.getter();
  v41 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v42 + 24) = &protocol witness table for MainActor;
  sub_100426C0C(v27, v42 + v41, type metadata accessor for PlaybackIntentDescriptor);
  sub_1001F4F78(0, 0, v24, &unk_100ECB988, v42);

  sub_100426D64(v25, type metadata accessor for PlaybackIntentDescriptor);
  return sub_1000095E8(v61, &qword_10118B990, &unk_100EBE7B0);
}

uint64_t sub_100423504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_10042359C, v6, v5);
}

uint64_t sub_10042359C()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100423670;
  v2 = *(v0 + 24);

  return PlaybackController.add(_:route:)(v2, 0);
}

uint64_t sub_100423670()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1004271CC;
  }

  else
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100423798;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100423798()
{
  v1 = v0[8];
  v2 = v0[2];

  *v2 = v1 != 0;
  v3 = v0[1];

  return v3();
}

void sub_10042380C(uint64_t a1)
{
  sub_10010FC20(&unk_1011926F0, &qword_100ECF890);
  __chkstk_darwin();
  v4 = &v14 - v3;
  v5 = _s6AlbumsV5ScopeOMa(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_albums;

  LOBYTE(a1) = sub_10047D02C(v10, a1);

  if ((a1 & 1) == 0 && [v1 isViewLoaded])
  {
    v11 = OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_loadedScope;
    swift_beginAccess();
    sub_1000089F8(&v1[v11], v4, &unk_1011926F0, &qword_100ECF890);
    v12 = *(v6 + 48);
    if (v12(v4, 1, v5) == 1)
    {
      sub_100426BA4(&v1[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_scope], v8, _s6AlbumsV5ScopeOMa);
      if (v12(v4, 1, v5) != 1)
      {
        sub_1000095E8(v4, &unk_1011926F0, &qword_100ECF890);
      }
    }

    else
    {
      sub_100426C0C(v4, v8, _s6AlbumsV5ScopeOMa);
    }

    v13 = *&v1[v9];

    sub_10041FD54(v8, v13);

    sub_100426D64(v8, _s6AlbumsV5ScopeOMa);
    [*&v1[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_tableView] reloadData];
  }
}

unint64_t sub_100423AA0(void *a1)
{
  v3 = type metadata accessor for Album();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v9 = [a1 dequeueReusableCellWithIdentifier:v7 forIndexPath:isa];

  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v1 + OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_albums);
    if (result < *(v11 + 16))
    {
      (*(v4 + 16))(v6, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * result, v3);
      __chkstk_darwin();
      *(&v12 - 2) = v6;
      *(&v12 - 1) = v1;
      v13[3] = sub_10010FC20(&qword_10118F238, &qword_100ECB9B8);
      v13[4] = sub_100020674(&qword_10118F240, &qword_10118F238, &qword_100ECB9B8, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
      sub_10001C8B8(v13);
      type metadata accessor for AlbumCell(0);
      sub_100426DC4(&qword_10118F248, type metadata accessor for AlbumCell, &unk_100ECBAAC);
      UIHostingConfiguration<>.init(content:)();
      UITableViewCell.contentConfiguration.setter();
      [v9 setAccessoryType:1];
      (*(v4 + 8))(v6, v3);
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100423D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Album();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  sub_100426BA4(a2 + OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_scope, v7, _s6AlbumsV5ScopeOMa);
  v13 = type metadata accessor for AlbumCell(0);
  v14 = a3 + v13[6];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = v13[7];
  *(a3 + v15) = swift_getKeyPath();
  sub_10010FC20(&unk_10118F250, &qword_100EC45B0);
  swift_storeEnumTagMultiPayload();
  (*(v9 + 32))(a3, v12, v8);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    v17 = 0;
  }

  else
  {
    if (result)
    {
      v17 = result != 1;
    }

    else
    {
      v17 = 0;
    }

    result = sub_100426D64(v7, _s6AlbumsV5ScopeOMa);
  }

  *(a3 + v13[5]) = v17;
  return result;
}

void sub_10042406C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = v11;
  (*(v5 + 32))(&v14[v13], v7, v4);

  sub_1001F4CB8(0, 0, v9, &unk_100ECB9B0, v14);

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectRowAtIndexPath:isa animated:1];
}

uint64_t sub_1004242C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for MusicPropertySource();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for Album();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[15] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10042442C, v9, v8);
}

unint64_t sub_10042442C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    result = IndexPath.row.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *&v2[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_albums];
      if (result < *(v4 + 16))
      {
        v6 = v0[13];
        v5 = v0[14];
        v8 = v0[11];
        v7 = v0[12];
        v18 = v0[10];
        v19 = v0[9];
        v9 = v0[7];
        v10 = v0[8];
        v21 = v5;
        v11 = *(v7 + 16);
        v11(v5, v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * result, v8);
        v20 = v2[OBJC_IVAR____TtC5Music27CarPlayAlbumsViewController_includeOnlyDownloadedContent];
        (*(v10 + 104))(v18, enum case for MusicPropertySource.library(_:), v9);
        v11(v6, v5, v8);
        (*(v10 + 16))(v19, v18, v9);
        _s10DataSourceCMa_1(0);
        swift_allocObject();
        v12 = sub_10078B958(v6, v20, v19);
        v13 = objc_allocWithZone(type metadata accessor for MCDItemDetailViewController());
        v14 = sub_1007934B0(v12, v13);
        (*(v10 + 8))(v18, v9);
        (*(v7 + 8))(v21, v8);
        v15 = v2;
        [v14 setPlayActivityFeatureNameSourceViewController:v15];
        v16 = [v15 navigationController];

        if (v16)
        {
          [v16 pushViewController:v14 animated:1];
        }

        goto LABEL_7;
      }
    }

    __break(1u);
    return result;
  }

LABEL_7:

  v17 = v0[1];

  return v17();
}

void sub_1004248D0(uint64_t a1)
{
  _s6AlbumsV5ScopeOMa(319);
  if (v1 <= 0x3F)
  {
    sub_1004270E4(319, &qword_10118F1D8, _s6AlbumsV5ScopeOMa, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100424A04()
{
  swift_getObjectType();
  v0._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x203A65706F637328;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  _s6AlbumsV5ScopeOMa(0);
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0;
}

uint64_t sub_100424AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v101 = a2;
  v85 = type metadata accessor for EnvironmentValues();
  v84 = *(v85 - 8);
  __chkstk_darwin();
  v82 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118F320, &qword_100ECBB08);
  __chkstk_darwin();
  v6 = (&v77 - v5);
  v96 = sub_10010FC20(&qword_10118F328, &unk_100ECBB10);
  __chkstk_darwin();
  v100 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v77 - v8;
  __chkstk_darwin();
  v99 = &v77 - v9;
  v10 = type metadata accessor for ColorScheme();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v86 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v77 - v13;
  __chkstk_darwin();
  v81 = (&v77 - v14);
  __chkstk_darwin();
  v92 = &v77 - v15;
  __chkstk_darwin();
  v17 = &v77 - v16;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v18 = sub_10010FC20(&qword_10118F330, &qword_100EC2E20) - 8;
  __chkstk_darwin();
  v20 = &v77 - v19;
  v21 = sub_10010FC20(&qword_10118F338, &unk_100ECBB20);
  __chkstk_darwin();
  v93 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v77 - v23;
  __chkstk_darwin();
  v90 = &v77 - v25;
  Album.artwork.getter();
  ArtworkImage.init(_:)();
  v26 = &v20[*(sub_10010FC20(&unk_10118F340, &qword_100EC2E18) + 36)];
  *v26 = 0x3FF0000000000000;
  *(v26 + 4) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v27 = &v20[*(v18 + 44)];
  v28 = v105;
  *v27 = v104;
  *(v27 + 1) = v28;
  *(v27 + 2) = v106;
  v88 = type metadata accessor for AlbumCell(0);
  v29 = *(v88 + 28);
  v94 = a1;
  v89 = v29;
  sub_10056CEEC(v17);
  v30 = *(v11 + 88);
  v79 = v11 + 88;
  v78 = v30;
  v31 = v30(v17, v10);
  v98 = v6;
  v95 = v10;
  v91 = v11;
  v80 = enum case for ColorScheme.light(_:);
  if (v31 == enum case for ColorScheme.light(_:))
  {
    static Color.black.getter();
LABEL_5:
    v87 = Color.opacity(_:)();

    goto LABEL_7;
  }

  if (v31 == enum case for ColorScheme.dark(_:))
  {
    static Color.white.getter();
    goto LABEL_5;
  }

  static Color.black.getter();
  v87 = Color.opacity(_:)();

  (*(v11 + 8))(v17, v10);
LABEL_7:
  v32 = type metadata accessor for RoundedRectangle();
  v103[3] = v32;
  v103[4] = sub_100426DC4(&qword_101187830, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v33 = sub_10001C8B8(v103);
  v34 = *(v32 + 20);
  v35 = enum case for RoundedCornerStyle.continuous(_:);
  v36 = type metadata accessor for RoundedCornerStyle();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  __asm { FMOV            V0.2D, #5.0 }

  *v33 = _Q0;
  v42 = &v24[*(v21 + 36)];
  sub_100008FE4(v103, v42);
  v43 = static Alignment.center.getter();
  v45 = v44;
  v46 = &v24[*(sub_10010FC20(&qword_10118F350, &qword_100ECBB30) + 36)];
  sub_10000954C(v42, *(v42 + 24));
  v102[3] = swift_getAssociatedTypeWitness();
  v102[4] = swift_getAssociatedConformanceWitness();
  sub_10001C8B8(v102);
  dispatch thunk of InsettableShape.inset(by:)();
  sub_100267528(v102, v46);
  *(v46 + 40) = 0;
  sub_100267584(v102);
  *(v46 + 48) = v87;
  *(v46 + 56) = 256;
  *(v46 + 64) = v43;
  *(v46 + 72) = v45;
  sub_10003D17C(v20, v24, &qword_10118F330, &qword_100EC2E20);
  *(v42 + 40) = 256;
  sub_10000959C(v103);
  v47 = v90;
  sub_10003D17C(v24, v90, &qword_10118F338, &unk_100ECBB20);
  v48 = static HorizontalAlignment.leading.getter();
  v49 = v98;
  *v98 = v48;
  *(v49 + 8) = 0;
  *(v49 + 16) = 1;
  v50 = sub_10010FC20(&qword_10118F358, &qword_100ECBB38);
  v51 = v94;
  sub_10042561C(v94, v49 + *(v50 + 44));
  KeyPath = swift_getKeyPath();
  v53 = v51 + *(v88 + 24);
  v54 = *v53;
  if (*(v53 + 8) == 1)
  {
    v55 = v95;
    v56 = v92;
    v57 = v91;
    if ((v54 & 1) == 0)
    {
LABEL_9:
      sub_10056CEEC(v56);
      v58 = *(v57 + 32);
      goto LABEL_17;
    }
  }

  else
  {

    v59 = static os_log_type_t.fault.getter();
    v60 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v59, &_mh_execute_header, v60, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v61 = v82;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v62 = sub_1000D8F20(v54, 0);
    (*(v84 + 8))(v61, v85, v62);
    v55 = v95;
    v56 = v92;
    v57 = v91;
    if (LOBYTE(v103[0]) != 1)
    {
      goto LABEL_9;
    }
  }

  v92 = KeyPath;
  v63 = v81;
  sub_10056CEEC(v81);
  v58 = *(v57 + 32);
  v64 = v86;
  v58(v86, v63, v55);
  v65 = v78(v64, v55);
  if (v65 == v80)
  {
    v66 = v83;
    (*(v57 + 104))(v83, enum case for ColorScheme.dark(_:), v55);
  }

  else
  {
    v67 = *(v57 + 104);
    v66 = v83;
    if (v65 == enum case for ColorScheme.dark(_:))
    {
      (v67)(v83, v80, v55);
    }

    else
    {
      v67(v83);
      (*(v57 + 8))(v86, v55);
    }
  }

  KeyPath = v92;
  v58(v56, v66, v55);
LABEL_17:
  v68 = v97;
  v69 = &v97[*(v96 + 36)];
  v70 = sub_10010FC20(&qword_10118F360, &qword_100ECBB40);
  v58(v69 + *(v70 + 28), v56, v55);
  *v69 = KeyPath;
  sub_10003D17C(v49, v68, &qword_10118F320, &qword_100ECBB08);
  v71 = v99;
  sub_10003D17C(v68, v99, &qword_10118F328, &unk_100ECBB10);
  v72 = v93;
  sub_1000089F8(v47, v93, &qword_10118F338, &unk_100ECBB20);
  v73 = v100;
  sub_10008644C(v71, v100);
  v74 = v101;
  sub_1000089F8(v72, v101, &qword_10118F338, &unk_100ECBB20);
  v75 = sub_10010FC20(&unk_10118F368, &qword_100ECBB48);
  sub_10008644C(v73, v74 + *(v75 + 48));
  sub_1000864BC(v71);
  sub_1000095E8(v47, &qword_10118F338, &unk_100ECBB20);
  sub_1000864BC(v73);
  return sub_1000095E8(v72, &qword_10118F338, &unk_100ECBB20);
}

uint64_t sub_10042561C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v4 = v61 - v3;
  v5 = type metadata accessor for Text.Suffix();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin();
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_101189260, &qword_100EC4DB0);
  v67 = *(v8 - 8);
  v68 = v8;
  __chkstk_darwin();
  v66 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v61 - v10;
  v62 = a1;
  v70 = Album.title.getter();
  v71 = v12;
  v61[1] = sub_100009838();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v72 = v13;
  v73 = v14;
  v17 = v16 & 1;
  v74 = v16 & 1;
  v75 = v18;
  Album.contentRating.getter();
  v19 = TextBadge.init(for:isPlayable:)(v4, 1);
  static FavoriteBadgeConfiguration.default.getter(&v70);
  TextBadge.view(favoriteBadgeConfiguration:)(&v70, v19, v20);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_10028E664(&v70);
  static Text.Suffix.alwaysVisible(_:)();
  sub_10011895C(v22, v24, v26 & 1);

  v65 = v11;
  View.textSuffix(_:)();
  v27 = v62;
  (*(v63 + 8))(v7, v64);
  sub_10011895C(v13, v15, v17);

  if (*(v27 + *(type metadata accessor for AlbumCell(0) + 20)) == 1)
  {
    v29 = sub_100425B08(v28);
    if (!v30)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v29 = sub_10034E12C();
  }

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {

LABEL_10:
    v64 = 0;
    v44 = 0;
    v48 = 0;
    v47 = 0;
    goto LABEL_11;
  }

  v70 = v29;
  v71 = v30;
  v32 = Text.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  static Font.caption.getter();
  v37 = Text.font(_:)();
  v39 = v38;
  v41 = v40;

  sub_10011895C(v32, v34, v36 & 1);

  LODWORD(v70) = static HierarchicalShapeStyle.secondary.getter();
  v42 = Text.foregroundStyle<A>(_:)();
  v44 = v43;
  LOBYTE(v32) = v45;
  v47 = v46;
  sub_10011895C(v37, v39, v41 & 1);

  v48 = v32 & 1;
  v64 = v42;
  sub_10021D0C0(v42, v44, v48);

LABEL_11:
  v50 = v66;
  v49 = v67;
  v51 = *(v67 + 16);
  v52 = v65;
  v53 = v68;
  v51(v66, v65, v68);
  v54 = v69;
  v51(v69, v50, v53);
  v55 = (v54 + *(sub_10010FC20(&qword_10118F378, &unk_100ECBB50) + 48));
  v56 = v64;
  sub_10024EA48(v64, v44, v48, v47);
  v57 = sub_10024EA04(v56, v44, v48, v47);
  *v55 = v56;
  v55[1] = v44;
  v55[2] = v48;
  v55[3] = v47;
  v58 = *(v49 + 8);
  v58(v52, v53, v57);
  v59 = sub_10024EA04(v56, v44, v48, v47);
  return (v58)(v50, v53, v59);
}

uint64_t sub_100425B08(__n128 a1)
{
  v1 = type metadata accessor for Date.FormatStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v6 = v11 - v5;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v7 = Album.isPreorder.getter();
  if (v7 == 2 || (v7 & 1) == 0)
  {
    Album.releaseDate.getter();
    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      sub_1000095E8(v6, &qword_101188C20, &qword_100EC2030);
      return Album.releaseYearString.getter();
    }

    else
    {
      static FormatStyle<>.musicReleaseYear.getter();
      sub_100426DC4(&unk_1011A3900, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
      Date.formatted<A>(_:)();
      (*(v2 + 8))(v4, v1);
      (*(v10 + 8))(v6, v9);
      return v11[2];
    }
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }
}

uint64_t sub_100425E0C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_10010FC20(&qword_10118F318, &qword_100ECBB00);
  return sub_100424AC0(v2, a1 + *(v4 + 44), v5);
}

char *sub_100425E60(void *a1, int a2)
{
  v17 = a2;
  ObjectType = swift_getObjectType();
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v7 = &v16[-v6];
  v8 = type metadata accessor for Artist();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a1;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_1000095E8(v7, &unk_101184930, &unk_100EC05C0);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    (*(v9 + 16))(v5, v11, v8);
    swift_storeEnumTagMultiPayload();
    v14 = objc_allocWithZone(ObjectType);
    v15 = sub_1004217FC(v5, v17 & 1);

    (*(v9 + 8))(v11, v8);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v15;
  }
}

char *sub_100426198(void *a1, char a2)
{
  ObjectType = swift_getObjectType();
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118DE80, &unk_100EE4D70);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = type metadata accessor for Genre();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  Genre.init(_:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_1000095E8(v8, &qword_10118DE80, &unk_100EE4D70);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v10 + 16))(v6, v12, v9);
    swift_storeEnumTagMultiPayload();
    v15 = objc_allocWithZone(ObjectType);
    v16 = sub_1004217FC(v6, a2 & 1);

    (*(v10 + 8))(v12, v9);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v16;
  }
}

char *sub_1004264BC(void *a1, int a2)
{
  v17 = a2;
  ObjectType = swift_getObjectType();
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_10118C4F0, &qword_100ECB9A0);
  __chkstk_darwin();
  v7 = &v16[-v6];
  v8 = type metadata accessor for Composer();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a1;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_1000095E8(v7, &unk_10118C4F0, &qword_100ECB9A0);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    (*(v9 + 16))(v5, v11, v8);
    swift_storeEnumTagMultiPayload();
    v14 = objc_allocWithZone(ObjectType);
    v15 = sub_1004217FC(v5, v17 & 1);

    (*(v9 + 8))(v11, v8);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v15;
  }
}

id sub_1004267F4(void *a1, char a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v2 initWithArtist:v5 includeOnlyDownloadedContent:a2 & 1];
  }

  else
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return 0;
    }

    v6 = [v2 initWithComposer:v7 includeOnlyDownloadedContent:a2 & 1];
  }

  v8 = v6;

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_100426938(uint64_t a1)
{
  v4 = *(type metadata accessor for Artist() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_100421E70(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100426A60(uint64_t a1)
{
  v3 = *(_s6AlbumsV5ScopeOMa(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for MusicPlaybackIntentDescriptor() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100422DF0(a1, v1 + v4, v1 + v7, v8);
}

uint64_t sub_100426BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100426C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100426C74(uint64_t a1)
{
  v4 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100423504(a1, v6, v7, v1 + v5);
}

uint64_t sub_100426D64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100426DC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100426E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011926F0, &qword_100ECF890);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100426E7C(uint64_t a1)
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1004242C4(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_100426F9C()
{
  result = qword_101188938;
  if (!qword_101188938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101188938);
  }

  return result;
}

void sub_100427010(uint64_t a1)
{
  type metadata accessor for Album();
  if (v1 <= 0x3F)
  {
    sub_100266B08();
    if (v2 <= 0x3F)
    {
      sub_1004270E4(319, &qword_1011878B0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1004270E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10042715C()
{
  result = qword_10118F310;
  if (!qword_10118F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118F310);
  }

  return result;
}

uint64_t sub_1004271E8()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218C28);
  sub_1000060E4(v0, qword_101218C28);
  return static Logger.music(_:)(0x6E65746E49707041, 0xEA00000000007374);
}

_OWORD *sub_100427250()
{
  v1 = OBJC_IVAR___MusicLyricsBackgroundView____lazy_storage___gradientView;
  v2 = *(v0 + OBJC_IVAR___MusicLyricsBackgroundView____lazy_storage___gradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MusicLyricsBackgroundView____lazy_storage___gradientView);
  }

  else
  {
    v4 = v0;
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100EBC6D0;
    *(v5 + 32) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.0];
    *(v5 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:1.0];
    Gradient.init(kind:colors:locations:interpolations:startPoint:endPoint:)(kCAGradientLayerAxial, v5, 0, 0, v11, 0.5, 0.5, 0.5, 1.0);
    v6 = objc_allocWithZone(type metadata accessor for Gradient.View());
    v7 = Gradient.View.init(configuration:)(v11);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

char *sub_10042737C(double a1, double a2, double a3, double a4)
{
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v10 = v37 - v9;
  v11 = sub_10010FC20(&qword_10118F410, &qword_100ECBBD8);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v37 - v13;
  v37[0] = sub_10010FC20(&qword_10118F418, &unk_100ECBBE0);
  v15 = *(v37[0] - 8);
  __chkstk_darwin();
  v17 = v37 - v16;
  *&v4[OBJC_IVAR___MusicLyricsBackgroundView_metalView] = 0;
  *&v4[OBJC_IVAR___MusicLyricsBackgroundView____lazy_storage___gradientView] = 0;
  *&v4[OBJC_IVAR___MusicLyricsBackgroundView_renderer] = 0;
  *&v4[OBJC_IVAR___MusicLyricsBackgroundView_playerPathSubscription] = 0;
  v4[OBJC_IVAR___MusicLyricsBackgroundView_isPaused] = 1;
  *&v4[OBJC_IVAR___MusicLyricsBackgroundView_resetDurationTask] = 0;
  v18 = &v4[OBJC_IVAR___MusicLyricsBackgroundView_crossfadeDuration];
  *v18 = 0;
  v18[4] = 1;
  v19 = &v4[OBJC_IVAR___MusicLyricsBackgroundView_defaultDuration];
  *v19 = 0;
  v19[4] = 1;
  v20 = type metadata accessor for LyricsBackgroundView();
  v38.receiver = v4;
  v38.super_class = v20;
  v21 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
  sub_100427F80();
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  (*(*qword_101218AC8 + 384))();
  sub_100027010();
  v22 = static OS_dispatch_queue.main.getter();
  v37[1] = v22;
  v23 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  sub_100020674(&qword_10118F420, &qword_10118F410, &qword_100ECBBD8, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1004288C0(&qword_101184920, 255, sub_100027010, &protocol conformance descriptor for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v10, &qword_101182140, &unk_100EBD2A0);

  (*(v12 + 8))(v14, v11);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&qword_10118F428, &qword_10118F418, &unk_100ECBBE0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v24 = v37[0];
  v25 = Publisher<>.sink(receiveValue:)();

  (*(v15 + 8))(v17, v24);
  *&v21[OBJC_IVAR___MusicLyricsBackgroundView_playerPathSubscription] = v25;

  v26 = sub_100427250();
  [v21 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [v26 setFrame:{v28, v30, v32, v34}];
  v35 = OBJC_IVAR___MusicLyricsBackgroundView____lazy_storage___gradientView;
  [*&v21[OBJC_IVAR___MusicLyricsBackgroundView____lazy_storage___gradientView] setAutoresizingMask:18];
  [*&v21[v35] setAlpha:0.4];
  [v21 addSubview:*&v21[v35]];

  return v21;
}

void sub_1004278C0(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [v2 route];
    sub_100428480(v5);
  }
}

void sub_100427990(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v26 - v9;
  if ((a4 & 1) == 0)
  {
    v11 = *&a3 + *&a3;
    v12 = v5 + OBJC_IVAR___MusicLyricsBackgroundView_crossfadeDuration;
    v13 = *(v5 + OBJC_IVAR___MusicLyricsBackgroundView_crossfadeDuration);
    v14 = *(v5 + OBJC_IVAR___MusicLyricsBackgroundView_crossfadeDuration + 4);
    *v12 = v11;
    *(v12 + 4) = 0;
    v15 = *(v5 + OBJC_IVAR___MusicLyricsBackgroundView_renderer);
    if (v15 && v14 & 1 | (v13 != v11))
    {
      v16 = v15;
      dispatch thunk of Backdrop.CompositeRenderer.crossfadeDuration.setter();
    }

    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = &protocol witness table for MainActor;
    *(v20 + 32) = *&a3;
    *(v20 + 40) = v18;

    v21 = sub_1001F4CB8(0, 0, v10, &unk_100ECBBD0, v20);
    v22 = *(v5 + OBJC_IVAR___MusicLyricsBackgroundView_resetDurationTask);
    *(v5 + OBJC_IVAR___MusicLyricsBackgroundView_resetDurationTask) = v21;
    if (v22)
    {

      Task.cancel()();
    }
  }

  v23 = *(v5 + OBJC_IVAR___MusicLyricsBackgroundView_renderer);
  if (v23)
  {
    v24 = v23;
    dispatch thunk of Backdrop.CompositeRenderer.setImage(_:animated:)();
  }

  if (*(v5 + OBJC_IVAR___MusicLyricsBackgroundView_isPaused) == 1)
  {
    v25 = *(v5 + OBJC_IVAR___MusicLyricsBackgroundView_metalView);
    if (v25)
    {
      [v25 setNeedsDisplay];
    }
  }
}

uint64_t sub_100427C14(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a5;
  v5[9] = type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[11] = v7;
  *v7 = v5;
  v7[1] = sub_100427CC8;

  return static Task<>.sleep(for:)(a1);
}

uint64_t sub_100427CC8()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_100428910;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_100427E4C;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_100427E4C()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = *&v3[OBJC_IVAR___MusicLyricsBackgroundView_defaultDuration];
        v5 = v3[OBJC_IVAR___MusicLyricsBackgroundView_defaultDuration + 4];
      }

      else
      {
        v5 = 1;
        v4 = 0.0;
      }

      v6 = &v2[OBJC_IVAR___MusicLyricsBackgroundView_crossfadeDuration];
      v7 = *&v2[OBJC_IVAR___MusicLyricsBackgroundView_crossfadeDuration];
      v8 = v2[OBJC_IVAR___MusicLyricsBackgroundView_crossfadeDuration + 4];
      *v6 = v4;
      *(v6 + 4) = v5;
      v9 = *&v2[OBJC_IVAR___MusicLyricsBackgroundView_renderer];
      if (v9)
      {
        if (v7 != v4)
        {
          v8 = 1;
        }

        if ((v5 & 1) == 0 && v8)
        {
          v10 = v9;
          dispatch thunk of Backdrop.CompositeRenderer.crossfadeDuration.setter();
        }
      }
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

void sub_100427F80()
{
  v1 = v0;
  sub_10010FC20(&qword_10118F3F8, &qword_100ECBBB0);
  __chkstk_darwin();
  v3 = &v33 - v2;
  sub_10010FC20(&qword_10118F400, &unk_100ECBBB8);
  __chkstk_darwin();
  v5 = &v33 - v4;
  v6 = type metadata accessor for MetalContext();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v33 - v10;
  v12 = OBJC_IVAR___MusicLyricsBackgroundView_metalView;
  if (!*&v1[OBJC_IVAR___MusicLyricsBackgroundView_metalView])
  {
    static MetalContext.shared.getter();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000095E8(v5, &qword_10118F400, &unk_100ECBBB8);
    }

    else
    {
      (*(v7 + 32))(v11, v5, v6);
      [v1 bounds];
      v17 = [objc_allocWithZone(MTKView) initWithFrame:MetalContext.device.getter() device:{v13, v14, v15, v16}];
      swift_unknownObjectRelease();
      v18 = v17;
      [v18 setAutoresizingMask:18];
      v19 = [v18 layer];

      [v19 setAllowsDisplayCompositing:0];
      [v18 setEnableSetNeedsDisplay:v1[OBJC_IVAR___MusicLyricsBackgroundView_isPaused]];
      if (*DeviceCapabilities.supportsHighFrameRateLyricsBackground.unsafeMutableAddressor())
      {
        v20 = [objc_opt_self() mainScreen];
        v21 = [v20 maximumFramesPerSecond];
      }

      else
      {
        v21 = static Backdrop.PerformanceConcessions.getter();
      }

      [v18 setPreferredFramesPerSecond:v21];
      if ((MetalContext.supportsBGRA10.getter() & 1) != 0 && *DeviceCapabilities.hasExtendedColorDisplay.unsafeMutableAddressor() == 1)
      {
        [v18 setColorPixelFormat:552];
      }

      (*(v7 + 16))(v9, v11, v6);
      v22 = type metadata accessor for Backdrop.ViewConfiguration();
      (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
      v23 = objc_allocWithZone(type metadata accessor for Backdrop.CompositeRenderer());
      v24 = Backdrop.CompositeRenderer.init(context:configuration:)();
      sub_1004288C0(&qword_10118F408, v25, type metadata accessor for LyricsBackgroundView, &unk_100ECBB88);
      swift_unknownObjectRetain();
      dispatch thunk of Backdrop.CompositeRenderer.observer.setter();
      v26 = [objc_opt_self() systemGrayColor];
      dispatch thunk of Backdrop.CompositeRenderer.setPlaceholderColor(_:animated:)();

      [v18 colorPixelFormat];
      dispatch thunk of Backdrop.CompositeRenderer.framebufferPixelFormat.setter();
      [v18 setDelegate:v24];
      dispatch thunk of Backdrop.CompositeRenderer.crossfadeDuration.getter();
      v27 = &v1[OBJC_IVAR___MusicLyricsBackgroundView_defaultDuration];
      *v27 = v28;
      v27[4] = 0;
      v29 = *&v1[v12];
      *&v1[v12] = v18;
      v30 = v18;

      v31 = *&v1[OBJC_IVAR___MusicLyricsBackgroundView_renderer];
      *&v1[OBJC_IVAR___MusicLyricsBackgroundView_renderer] = v24;
      v32 = v24;

      [v1 addSubview:v30];
      (*(v7 + 8))(v11, v6);
    }
  }
}