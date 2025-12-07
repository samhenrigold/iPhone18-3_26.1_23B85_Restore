uint64_t sub_100CA6A30()
{
  v1 = v0[55];
  v0[57] = v0[18];
  return _swift_task_switch(sub_100CA6A54, v1, 0);
}

uint64_t sub_100CA6A54()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 392);
  v3 = *(v0 + 344);
  v4 = *(v0 + 336);
  (*(v0 + 424))(v2, *(v0 + 176), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 464) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 472) = v7;
  *v7 = v0;
  v7[1] = sub_100CA6BA4;
  v9 = *(v0 + 296);
  v8 = *(v0 + 304);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100D14908, v6, v9);
}

uint64_t sub_100CA6BA4()
{
  v1 = *(*v0 + 200);

  return _swift_task_switch(sub_100CA6CD0, v1, 0);
}

uint64_t sub_100CA6CD0()
{
  v22 = v0;
  v1 = *(v0 + 304);
  if ((*(*(v0 + 320) + 48))(v1, 1, *(v0 + 312)) == 1)
  {
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
    sub_1001BAEE0();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 192);
    sub_100D12974(v1, *(v0 + 328), type metadata accessor for SharedBeaconRecord);
    *(v0 + 152) = _swiftEmptyDictionarySingleton;
    v6 = *(v5 + 32);
    *(v0 + 648) = v6;
    v7 = 1 << v6;
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v5 + 56);
    *(v0 + 480) = OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore;
    v10 = (v7 + 63) >> 6;

    v14 = 0;
    while (v9)
    {
      v11 = *(v0 + 192);
LABEL_15:
      *(v0 + 488) = v9;
      *(v0 + 496) = v14;
      v16 = *(*(v11 + 48) + (__clz(__rbit64(v9)) | (v14 << 6)));
      *(v0 + 649) = v16;
      if ((v16 - 7) >= 0xC && ((1 << v16) & 0x1C) == 0)
      {
        *(v0 + 650) = ((1 << v16) & 0x21) == 0;
        *(v0 + 640) = *(*(v0 + 312) + 20);
        v11 = sub_100CA70B0;
        v12 = 0;
        v13 = 0;

        return _swift_task_switch(v11, v12, v13);
      }

      v9 &= v9 - 1;
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return _swift_task_switch(v11, v12, v13);
      }

      v11 = *(v0 + 192);
      if (v15 >= v10)
      {
        break;
      }

      v9 = *(v11 + 8 * v15 + 56);
      ++v14;
      if (v9)
      {
        v14 = v15;
        goto LABEL_15;
      }
    }

    v17 = *(v0 + 152);
    *(v0 + 568) = v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = _swiftEmptyDictionarySingleton;
    sub_100D0EDD0(v17, sub_100D0E130, 0, isUniquelyReferenced_nonNull_native, &v21);

    *(v0 + 576) = v21;
    v19 = swift_task_alloc();
    *(v0 + 584) = v19;
    *v19 = v0;
    v19[1] = sub_100CA7F1C;
    v20 = *(v0 + 184);

    return sub_100C7BA0C(v0 + 16, v20);
  }
}

uint64_t sub_100CA70B0()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 650);
  v3 = *(v0 + 328);
  v4 = getuid();
  sub_1000294F0(v4);
  v5 = swift_task_alloc();
  *(v0 + 504) = v5;
  *v5 = v0;
  v5[1] = sub_100CA7184;
  v6 = *(v0 + 384);

  return sub_100685140(v6, v3 + v1, v2);
}

uint64_t sub_100CA7184(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 512) = a1;
  *(v6 + 520) = a2;
  *(v6 + 528) = v3;

  if (v3)
  {
    (*(*(v6 + 344) + 8))(*(v6 + 384), *(v6 + 336));

    v7 = sub_100CA75E8;
    v8 = 0;
  }

  else
  {
    v9 = *(v6 + 384);
    v10 = *(v6 + 336);
    v11 = *(v6 + 344);
    v12 = *(v6 + 200);
    *(v6 + 651) = a3;
    v13 = *(v11 + 8);
    *(v6 + 536) = v13;
    *(v6 + 544) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v9, v10);
    v7 = sub_100CA7304;
    v8 = v12;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100CA7304(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v19 = v3;
  if (*(v3 + 651))
  {
    v5 = *(v3 + 488);
    v4 = *(v3 + 496);
    while (1)
    {
      v5 &= v5 - 1;
      if (!v5)
      {
        break;
      }

      v6 = *(v3 + 192);
LABEL_9:
      *(v3 + 488) = v5;
      *(v3 + 496) = v4;
      v8 = *(*(v6 + 48) + (__clz(__rbit64(v5)) | (v4 << 6)));
      *(v3 + 649) = v8;
      if ((v8 - 7) >= 0xC && ((1 << v8) & 0x1C) == 0)
      {
        *(v3 + 650) = ((1 << v8) & 0x21) == 0;
        *(v3 + 640) = *(*(v3 + 312) + 20);
        a1 = sub_100CA70B0;
        a2 = 0;
        a3 = 0;

        return _swift_task_switch(a1, a2, a3);
      }
    }

    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        return _swift_task_switch(a1, a2, a3);
      }

      if (v7 >= (((1 << *(v3 + 648)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v3 + 192);
      v5 = *(v6 + 8 * v7 + 56);
      ++v4;
      if (v5)
      {
        v4 = v7;
        goto LABEL_9;
      }
    }

    v14 = *(v3 + 152);
    *(v3 + 568) = v14;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = _swiftEmptyDictionarySingleton;
    sub_100D0EDD0(v14, sub_100D0E130, 0, isUniquelyReferenced_nonNull_native, &v18);

    *(v3 + 576) = v18;
    v16 = swift_task_alloc();
    *(v3 + 584) = v16;
    *v16 = v3;
    v16[1] = sub_100CA7F1C;
    v17 = *(v3 + 184);

    return sub_100C7BA0C(v3 + 16, v17);
  }

  else
  {
    v9 = *(v3 + 328);
    *(v3 + 104) = *(v3 + 312);
    *(v3 + 112) = sub_100D13BF8(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
    v10 = sub_1000280DC((v3 + 80));
    sub_100D11DC8(v9, v10, type metadata accessor for SharedBeaconRecord);
    v11 = swift_task_alloc();
    *(v3 + 552) = v11;
    *v11 = v3;
    v11[1] = sub_100CA7764;
    v12 = *(v3 + 288);

    return sub_100CA0680(v12, v3 + 80);
  }
}

uint64_t sub_100CA7604()
{
  v1 = *(v0 + 328);

  sub_100018D00(v1, type metadata accessor for SharedBeaconRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100CA7764()
{
  v2 = *v1;
  v2[70] = v0;

  v3 = v2[25];
  if (v0)
  {

    v4 = sub_100CA8CC4;
  }

  else
  {
    sub_100007BAC(v2 + 10);
    v4 = sub_100CA78A4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100CA78A4()
{
  v64 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 368);
  v3 = *(v0 + 336);
  v4 = *(v0 + 176);
  v1(*(v0 + 376), *(v0 + 184), v3);
  v1(v2, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v57 = *(v0 + 536);
    v7 = *(v0 + 520);
    v8 = *(v0 + 512);
    v55 = *(v0 + 376);
    v60 = *(v0 + 368);
    v9 = *(v0 + 336);
    v10 = *(v0 + 649);
    v11 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v11 = 136447491;
    v12 = sub_10125403C(v10);
    v14 = sub_1000136BC(v12, v13, v63);

    *(v11 + 4) = v14;
    *(v0 + 120) = 0;
    *(v0 + 160) = v8;
    *(v11 + 12) = 2082;
    *(v0 + 168) = v7;
    *(v0 + 128) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v15._countAndFlagsBits = 3026478;
    v15._object = 0xE300000000000000;
    String.append(_:)(v15);
    _print_unlocked<A, B>(_:_:)();
    v16 = sub_1000136BC(*(v0 + 120), *(v0 + 128), v63);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v57(v55, v9);
    v20 = sub_1000136BC(v17, v19, v63);

    *(v11 + 34) = v20;
    *(v11 + 42) = 2160;
    *(v11 + 44) = 1752392040;
    *(v11 + 52) = 2081;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v57(v60, v9);
    v24 = sub_1000136BC(v21, v23, v63);

    *(v11 + 54) = v24;
    _os_log_impl(&_mh_execute_header, v5, v6, "Downloaded keys of type: %{public}s,\nfound %{public}s.\nShare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v11, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    v25 = *(v0 + 536);
    v27 = *(v0 + 368);
    v26 = *(v0 + 376);
    v28 = *(v0 + 336);

    v25(v27, v28);
    v25(v26, v28);
  }

  v61 = *(v0 + 512);
  v62 = *(v0 + 520);
  v29 = *(v0 + 288);
  v31 = *(v0 + 264);
  v30 = *(v0 + 272);
  v32 = *(v0 + 248);
  v33 = *(v0 + 256);
  v59 = *(v0 + 216);
  v56 = *(v0 + 208);
  v34 = *(*(v0 + 280) + 36);
  v58 = *(v0 + 649);
  v35 = type metadata accessor for Date();
  v36 = *(*(v35 - 8) + 16);
  v36(v30, &v29[v34], v35);
  v37 = v29;
  v38 = *v29;
  v39 = v37 + v34;
  v40 = v37;
  v36(v30 + *(v33 + 24), v39, v35);
  *(v30 + *(v33 + 20)) = v38;
  v41 = *(v56 + 20);
  sub_100D11DC8(v30, &v32[v41], type metadata accessor for KeyDropInterface.KeyAlignment);
  (*(v31 + 56))(&v32[v41], 0, 1, v33);
  *v32 = v61;
  *(v32 + 1) = v62;
  v32[*(v56 + 24)] = v58;
  (*(v59 + 56))(v32, 0, 1, v56);
  sub_1001DD8EC(v32, v58);
  sub_100018D00(v30, type metadata accessor for KeyDropInterface.KeyAlignment);
  v42 = sub_10000B3A8(v40, &unk_1016C8FC0, &unk_10139D7D0);
  v46 = *(v0 + 488);
  v45 = *(v0 + 496);
  while (1)
  {
    v46 &= v46 - 1;
    if (!v46)
    {
      break;
    }

    v47 = *(v0 + 192);
LABEL_11:
    *(v0 + 488) = v46;
    *(v0 + 496) = v45;
    v49 = *(*(v47 + 48) + (__clz(__rbit64(v46)) | (v45 << 6)));
    *(v0 + 649) = v49;
    if ((v49 - 7) >= 0xC && ((1 << v49) & 0x1C) == 0)
    {
      *(v0 + 650) = ((1 << v49) & 0x21) == 0;
      *(v0 + 640) = *(*(v0 + 312) + 20);
      v42 = sub_100CA70B0;
      v43 = 0;
      v44 = 0;

      return _swift_task_switch(v42, v43, v44);
    }
  }

  while (1)
  {
    v48 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      return _swift_task_switch(v42, v43, v44);
    }

    if (v48 >= (((1 << *(v0 + 648)) + 63) >> 6))
    {
      break;
    }

    v47 = *(v0 + 192);
    v46 = *(v47 + 8 * v48 + 56);
    ++v45;
    if (v46)
    {
      v45 = v48;
      goto LABEL_11;
    }
  }

  v50 = *(v0 + 152);
  *(v0 + 568) = v50;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63[0] = _swiftEmptyDictionarySingleton;
  sub_100D0EDD0(v50, sub_100D0E130, 0, isUniquelyReferenced_nonNull_native, v63);

  *(v0 + 576) = v63[0];
  v52 = swift_task_alloc();
  *(v0 + 584) = v52;
  *v52 = v0;
  v52[1] = sub_100CA7F1C;
  v53 = *(v0 + 184);

  return sub_100C7BA0C(v0 + 16, v53);
}

uint64_t sub_100CA7F1C()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);

    v4 = sub_100CA8E2C;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 200);
    v4 = sub_100CA8050;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100CA8050()
{
  v46 = v0;
  v1 = *(v0 + 72);
  *(v0 + 136) = v1;
  v43 = *(v0 + 240);
  v2 = v1 + 64;
  v42 = *(v0 + 216);
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v44 = v1;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = *(v0 + 192);
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = v11 | (v7 << 6);
    v13 = *(*(v44 + 48) + v12);
    v14 = (*(v44 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    sub_100017D5C(*v14, v15);
    if ((sub_10111EFE8(v13, v10) & 1) == 0)
    {
      goto LABEL_9;
    }

    v17 = *(v0 + 240);
    v38 = *(v0 + 208);
    v39 = *(v0 + 232);
    (*(*(v0 + 264) + 56))(&v17[*(v38 + 20)], 1, 1, *(v0 + 256));
    *v17 = 1;
    *(v43 + 8) = 1;
    v17[*(v38 + 24)] = v13;
    sub_100D12974(v17, v39, type metadata accessor for BookmarkMetaData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v8;
    v19 = sub_100771F0C(v13);
    v22 = v8[2];
    v23 = (v20 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      return _swift_task_switch(v19, v20, v21);
    }

    if (v8[3] >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v41 = v19;
      v28 = v20;
      sub_101005B0C();
      v19 = v41;
      v8 = v45;
      v27 = *(v0 + 232);
      if (v28)
      {
        goto LABEL_16;
      }

LABEL_18:
      v8[(v19 >> 6) + 8] |= 1 << v19;
      *(v8[6] + v19) = v13;
      sub_100D12974(v27, v8[7] + *(v42 + 72) * v19, type metadata accessor for BookmarkMetaData);
      v19 = sub_100016590(v16, v15);
      v29 = v8[2];
      v24 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v24)
      {
        goto LABEL_32;
      }

      v8[2] = v30;
    }

    else
    {
      v40 = v20;
      sub_100FE7AB0(v25, isUniquelyReferenced_nonNull_native);
      v8 = v45;
      v19 = sub_100771F0C(v13);
      v26 = v20 & 1;
      LOBYTE(v20) = v40;
      if ((v40 & 1) != v26)
      {
LABEL_28:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_15:
      v27 = *(v0 + 232);
      if ((v20 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_16:
      sub_100729120(v27, v8[7] + *(v42 + 72) * v19);
LABEL_9:
      sub_100016590(v16, v15);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v31 = *(v0 + 576);
  v32 = *(v0 + 192);

  sub_10000B3A8(v0 + 136, &qword_1016B9B60, &qword_1013E36D8);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v45 = v31;
  sub_100D0EDD0(v8, sub_100D0E130, 0, v33, &v45);

  v34 = v45;
  *(v0 + 600) = v45;
  if (sub_10111EFE8(9, v32))
  {
    *(v0 + 644) = *(*(v0 + 312) + 20);
    v19 = sub_100CA8550;
    v20 = 0;
    v21 = 0;

    return _swift_task_switch(v19, v20, v21);
  }

  v35 = *(v0 + 328);
  sub_1001BAF34(v0 + 16);

  sub_100018D00(v35, type metadata accessor for SharedBeaconRecord);

  v36 = *(v0 + 8);

  return v36(v34);
}

uint64_t sub_100CA8550()
{
  v1 = *(v0 + 644);
  v2 = *(v0 + 328);
  v3 = getuid();
  sub_1000294F0(v3);
  v4 = swift_task_alloc();
  *(v0 + 608) = v4;
  *v4 = v0;
  v4[1] = sub_100CA8614;
  v5 = *(v0 + 360);

  return sub_100687010(v5, v2 + v1);
}

uint64_t sub_100CA8614(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 616) = a1;
  *(v6 + 624) = a2;
  *(v6 + 632) = v3;

  if (v3)
  {
    (*(*(v6 + 344) + 8))(*(v6 + 360), *(v6 + 336));

    v7 = sub_100CA8AF8;
    v8 = 0;
  }

  else
  {
    v9 = *(v6 + 360);
    v10 = *(v6 + 336);
    v11 = *(v6 + 344);
    v12 = *(v6 + 200);
    *(v6 + 652) = a3;
    (*(v11 + 8))(v9, v10);
    v7 = sub_100CA8788;
    v8 = v12;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100CA8788()
{
  v20 = v0;
  if (*(v0 + 652))
  {
    v1 = *(v0 + 328);
    sub_1001BAF34(v0 + 16);

    sub_100018D00(v1, type metadata accessor for SharedBeaconRecord);
    v2 = *(v0 + 600);
  }

  else
  {
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    v5 = *(v0 + 600);
    v17 = *(v0 + 328);
    v6 = *(v0 + 224);
    v7 = *(v0 + 208);
    (*(*(v0 + 264) + 56))(&v6[*(v7 + 20)], 1, 1, *(v0 + 256));
    *v6 = v4;
    *(v6 + 1) = v3;
    v6[*(v7 + 24)] = 9;
    sub_1000BC4D4(&qword_1016B9B68, &unk_1013E36E0);
    v8 = (sub_1000BC4D4(&qword_1016A5AB8, &unk_1013B35E0) - 8);
    v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    v11 = (v10 + v9);
    v12 = v8[14];
    *v11 = 9;
    sub_100D11DC8(v6, &v11[v12], type metadata accessor for BookmarkMetaData);
    v13 = sub_100907F84(v10);
    swift_setDeallocating();
    sub_10000B3A8(v11, &qword_1016A5AB8, &unk_1013B35E0);
    swift_deallocClassInstance();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v5;
    sub_100D0EDD0(v13, sub_100D0E130, 0, isUniquelyReferenced_nonNull_native, &v19);

    sub_1001BAF34(v0 + 16);

    sub_100018D00(v6, type metadata accessor for BookmarkMetaData);

    sub_100018D00(v17, type metadata accessor for SharedBeaconRecord);
    v2 = v19;
  }

  v18 = v2;

  v15 = *(v0 + 8);

  return v15(v18);
}

uint64_t sub_100CA8AF8()
{
  v1 = *(v0 + 200);

  return _swift_task_switch(sub_100CA8B64, v1, 0);
}

uint64_t sub_100CA8B64()
{
  v1 = *(v0 + 328);
  sub_1001BAF34(v0 + 16);

  sub_100018D00(v1, type metadata accessor for SharedBeaconRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100CA8CC4()
{
  v1 = v0[41];

  sub_100018D00(v1, type metadata accessor for SharedBeaconRecord);
  sub_100007BAC(v0 + 10);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100CA8E2C()
{
  v1 = *(v0 + 328);

  sub_100018D00(v1, type metadata accessor for SharedBeaconRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100CA8F80(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 100) = a3;
  *(v4 + 16) = a1;
  v6 = type metadata accessor for MemberSharingCircle(0);
  *(v4 + 40) = v6;
  *(v4 + 48) = swift_task_alloc();
  v7 = *(v6 + 24);
  *(v4 + 96) = v7;
  v8 = swift_task_alloc();
  *(v4 + 56) = v8;
  *v8 = v4;
  v8[1] = sub_100CA906C;

  return sub_100CA9B94(a2 + v7);
}

uint64_t sub_100CA906C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 101) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 32);

    return _swift_task_switch(sub_100CA91BC, v7, 0);
  }
}

uint64_t sub_100CA91BC()
{
  v1 = *(v0 + 101);
  if (v1 > 4)
  {

    v3 = &off_101607750;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v2)
    {
      v3 = &off_101607750;
    }

    else
    {
      v3 = &off_101607778;
    }
  }

  v4 = *(v0 + 100);
  v5 = sub_100B04978(v3);
  *(v0 + 64) = v5;
  if (v4 == 1)
  {
    v6 = v5;
    v7 = *(v0 + 96);
    v8 = *(v0 + 24);
    v9 = *(*(v0 + 40) + 28);
    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    *v10 = v0;
    v10[1] = sub_100CA94E4;

    return sub_100CA6228(v8 + v7, v8 + v9, v6);
  }

  else
  {
    v12 = sub_100907F84(_swiftEmptyArrayStorage);
    v24 = *(v0 + 101);
    v22 = *(v0 + 96);
    v23 = *(v0 + 64);
    v13 = *(v0 + 40);
    v25 = v12;
    v15 = *(v0 + 16);
    v14 = *(v0 + 24);
    v16 = *(v13 + 28);
    v17 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
    v18 = v17[5];
    v19 = type metadata accessor for UUID();
    v20 = *(*(v19 - 8) + 16);
    v20(v15 + v18, v14 + v16, v19);
    v20(v15 + v17[6], v14 + v22, v19);
    v20(v15 + v17[7], v14 + *(v13 + 32), v19);
    UUID.init()();
    *(v15 + v17[8]) = v23;
    *(v15 + v17[9]) = v24;
    *(v15 + v17[10]) = 1;
    *(v15 + v17[11]) = v25;
    static Date.trustedNow.getter(v15 + v17[12]);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_100CA94E4(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  v5 = v4[4];
  if (v1)
  {
    v6 = sub_100CA97A0;
  }

  else
  {
    v4[11] = a1;
    v6 = sub_100CA9620;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100CA9620()
{
  v13 = *(v0 + 101);
  v11 = *(v0 + 96);
  v12 = *(v0 + 64);
  v1 = *(v0 + 40);
  v14 = *(v0 + 88);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v1 + 28);
  v5 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v6 = v5[5];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 16);
  v8(v2 + v6, v3 + v4, v7);
  v8(v2 + v5[6], v3 + v11, v7);
  v8(v2 + v5[7], v3 + *(v1 + 32), v7);
  UUID.init()();
  *(v2 + v5[8]) = v12;
  *(v2 + v5[9]) = v13;
  *(v2 + v5[10]) = 1;
  *(v2 + v5[11]) = v14;
  static Date.trustedNow.getter(v2 + v5[12]);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100CA97A0()
{
  v31 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BF08);
  sub_100D11DC8(v2, v1, type metadata accessor for MemberSharingCircle);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100018D00(v6, type metadata accessor for MemberSharingCircle);
    v13 = sub_1000136BC(v10, v12, &v30);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to retrieve existing keys for circle %{private,mask.hash}s, error: %@.", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
    v15 = *(v0 + 48);

    sub_100018D00(v15, type metadata accessor for MemberSharingCircle);
  }

  v29 = sub_100907F84(_swiftEmptyArrayStorage);

  v28 = *(v0 + 101);
  v26 = *(v0 + 96);
  v27 = *(v0 + 64);
  v16 = *(v0 + 40);
  v18 = *(v0 + 16);
  v17 = *(v0 + 24);
  v19 = *(v16 + 28);
  v20 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v21 = v20[5];
  v22 = type metadata accessor for UUID();
  v23 = *(*(v22 - 8) + 16);
  v23(v18 + v21, v17 + v19, v22);
  v23(v18 + v20[6], v17 + v26, v22);
  v23(v18 + v20[7], v17 + *(v16 + 32), v22);
  UUID.init()();
  *(v18 + v20[8]) = v27;
  *(v18 + v20[9]) = v28;
  *(v18 + v20[10]) = 1;
  *(v18 + v20[11]) = v29;
  static Date.trustedNow.getter(v18 + v20[12]);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100CA9B94(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100CA9CB0, v1, 0);
}

uint64_t sub_100CA9CB0()
{
  v1 = *(*(v0 + 24) + 120);
  *(v0 + 96) = v1;
  return _swift_task_switch(sub_100CA9CD4, v1, 0);
}

uint64_t sub_100CA9CD4()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  (*(v4 + 16))(v2, v0[2], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[13] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100CA9E38;
  v8 = v0[11];
  v9 = v0[8];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100D14908, v6, v9);
}

uint64_t sub_100CA9E38()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100CA9F64, v1, 0);
}

uint64_t sub_100CA9F64()
{
  v1 = v0[10];
  sub_1000D2A70(v0[11], v1, &unk_101698C30, &unk_101392630);
  v2 = type metadata accessor for SharedBeaconRecord(0);
  v3 = *(*(v2 - 1) + 48);
  v4 = v3(v1, 1, v2);
  v5 = v0[10];
  if (v4 == 1)
  {
    sub_10000B3A8(v5, &unk_101698C30, &unk_101392630);
LABEL_3:
    v6 = v0[11];
    sub_1001BAEE0();
    swift_allocError();
    *v7 = 17;
    swift_willThrow();
    sub_10000B3A8(v6, &unk_101698C30, &unk_101392630);

    v8 = v0[1];

    return v8();
  }

  v10 = *(v5 + v2[16]);
  sub_100018D00(v5, type metadata accessor for SharedBeaconRecord);
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      sub_10000B3A8(v0[11], &unk_101698C30, &unk_101392630);
      v11 = 3;
      goto LABEL_20;
    }

    if (v10 != 4)
    {
      sub_10000B3A8(v0[11], &unk_101698C30, &unk_101392630);
      v11 = 5;
      goto LABEL_20;
    }
  }

  else
  {
    if (!v10)
    {
      goto LABEL_3;
    }

    if (v10 != 1)
    {
      sub_10000B3A8(v0[11], &unk_101698C30, &unk_101392630);
      v11 = 0;
      goto LABEL_20;
    }
  }

  v12 = v0[9];
  sub_1000D2AD8(v0[11], v12, &unk_101698C30, &unk_101392630);
  v13 = v3(v12, 1, v2);
  v14 = v0[9];
  if (v13 == 1)
  {
    sub_10000B3A8(v14, &unk_101698C30, &unk_101392630);
  }

  else if (*(v14 + v2[11]) == -1)
  {
    v15 = *(v14 + v2[12]);
    sub_100018D00(v14, type metadata accessor for SharedBeaconRecord);
    if (v15 == -1)
    {
      v11 = 2;
      goto LABEL_20;
    }
  }

  else
  {
    sub_100018D00(v14, type metadata accessor for SharedBeaconRecord);
  }

  v11 = 1;
LABEL_20:

  v16 = v0[1];

  return v16(v11);
}

uint64_t sub_100CAA29C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for MemberSharingCircle(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v2[10] = *(v4 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100CAA3F4, v1, 0);
}

uint64_t sub_100CAA3F4()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 120);
  *(v0 + 120) = v2;
  *(v0 + 144) = *(v1 + 24);
  return _swift_task_switch(sub_100CAA420, v2, 0);
}

uint64_t sub_100CAA420()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  (*(v4 + 16))(v2, *(v0 + 16) + *(v0 + 144), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 128) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_100CAA58C;
  v8 = *(v0 + 112);
  v9 = *(v0 + 96);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100D12D44, v6, v9);
}

uint64_t sub_100CAA58C()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100CAA6B8, v1, 0);
}

uint64_t sub_100CAA6B8()
{
  v43 = v0;
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v2 + *(v1 + 40));
  if (sub_10062CFC0(*(v2 + *(v1 + 40)), &off_101607700))
  {
LABEL_2:
    sub_10000B3A8(v0[14], &unk_101698C30, &unk_101392630);
    v4 = 1;
    goto LABEL_32;
  }

  v5 = v0[13];
  sub_1000D2A70(v0[14], v5, &unk_101698C30, &unk_101392630);
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  v8 = v0[13];
  if (v7 == 1)
  {
    sub_10000B3A8(v8, &unk_101698C30, &unk_101392630);
  }

  else
  {
    v9 = *(v8 + *(v6 + 64));
    sub_100018D00(v8, type metadata accessor for SharedBeaconRecord);
    if (v9 == 4 && v3 == 4)
    {
      goto LABEL_2;
    }
  }

  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[5];
  v14 = v0[2];
  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177BF08);
  sub_100D11DC8(v14, v12, type metadata accessor for MemberSharingCircle);
  sub_100D11DC8(v14, v11, type metadata accessor for MemberSharingCircle);
  sub_100D11DC8(v14, v13, type metadata accessor for MemberSharingCircle);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v0[7];
    v19 = v0[6];
    v20 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v20 = 141559043;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v18, type metadata accessor for MemberSharingCircle);
    v24 = sub_1000136BC(v21, v23, &v42);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2082;
    v25 = *(v19 + *(v1 + 40));
    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v27 = 0xE500000000000000;
        v26 = 0x746E65732ELL;
      }

      else
      {
        if (v25 == 4)
        {
          v26 = 0xD000000000000013;
        }

        else
        {
          v26 = 0x64656C6961662ELL;
        }

        if (v25 == 4)
        {
          v27 = 0x800000010134B830;
        }

        else
        {
          v27 = 0xE700000000000000;
        }
      }
    }

    else if (*(v19 + *(v1 + 40)))
    {
      if (v25 == 1)
      {
        v26 = 0x657470656363612ELL;
      }

      else
      {
        v26 = 0x747365757165722ELL;
      }

      if (v25 == 1)
      {
        v27 = 0xE900000000000064;
      }

      else
      {
        v27 = 0xEA00000000006465;
      }
    }

    else
    {
      v27 = 0xEB00000000646574;
      v26 = 0x70656363616E752ELL;
    }

    v41 = v0[14];
    v33 = v0[5];
    sub_100018D00(v0[6], type metadata accessor for MemberSharingCircle);
    v34 = sub_1000136BC(v26, v27, &v42);

    *(v20 + 24) = v34;
    *(v20 + 32) = 2160;
    *(v20 + 34) = 1752392040;
    *(v20 + 42) = 2081;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    sub_100018D00(v33, type metadata accessor for MemberSharingCircle);
    v38 = sub_1000136BC(v35, v37, &v42);

    *(v20 + 44) = v38;
    _os_log_impl(&_mh_execute_header, v16, v17, "Not allowed to download keys for circle: %{private,mask.hash}s, acceptanceState: %{public}s, beacon-id: %{private,mask.hash}s.", v20, 0x34u);
    swift_arrayDestroy();

    v32 = v41;
  }

  else
  {
    v28 = v0[14];
    v30 = v0[6];
    v29 = v0[7];
    v31 = v0[5];

    sub_100018D00(v31, type metadata accessor for MemberSharingCircle);
    sub_100018D00(v30, type metadata accessor for MemberSharingCircle);
    sub_100018D00(v29, type metadata accessor for MemberSharingCircle);
    v32 = v28;
  }

  sub_10000B3A8(v32, &unk_101698C30, &unk_101392630);
  v4 = 0;
LABEL_32:

  v39 = v0[1];

  return v39(v4);
}

uint64_t sub_100CAAC60(uint64_t a1)
{
  v2[121] = v1;
  v2[120] = a1;
  sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v3 = type metadata accessor for TimeBasedKey(0);
  v2[124] = v3;
  v2[125] = *(v3 - 8);
  v2[126] = swift_task_alloc();
  v2[127] = swift_task_alloc();
  v2[128] = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v2[129] = swift_task_alloc();
  v4 = type metadata accessor for AES.GCM.Nonce();
  v2[130] = v4;
  v2[131] = *(v4 - 8);
  v2[132] = swift_task_alloc();
  v5 = type metadata accessor for P256.Signing.ECDSASignature();
  v2[133] = v5;
  v2[134] = *(v5 - 8);
  v2[135] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016AF958, &qword_1013CADF8);
  v2[136] = swift_task_alloc();
  v6 = type metadata accessor for SymmetricKey();
  v2[137] = v6;
  v2[138] = *(v6 - 8);
  v2[139] = swift_task_alloc();
  v7 = type metadata accessor for AES.GCM.SealedBox();
  v2[140] = v7;
  v2[141] = *(v7 - 8);
  v2[142] = swift_task_alloc();
  v8 = type metadata accessor for P256.Signing.PrivateKey();
  v2[143] = v8;
  v2[144] = *(v8 - 8);
  v2[145] = swift_task_alloc();
  v2[146] = swift_task_alloc();
  v9 = type metadata accessor for P256PrivateKey();
  v2[147] = v9;
  v2[148] = *(v9 - 8);
  v2[149] = swift_task_alloc();
  v10 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  v2[150] = v10;
  v2[151] = *(v10 - 8);
  v2[152] = swift_task_alloc();
  v2[153] = swift_task_alloc();
  v2[154] = swift_task_alloc();
  v2[155] = swift_task_alloc();
  v2[156] = swift_task_alloc();
  v2[157] = swift_task_alloc();
  v2[158] = swift_task_alloc();
  v2[159] = swift_task_alloc();
  v2[160] = swift_task_alloc();
  v2[161] = swift_task_alloc();
  v2[162] = swift_task_alloc();
  v2[163] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0);
  v2[164] = swift_task_alloc();
  v2[165] = swift_task_alloc();
  v2[166] = swift_task_alloc();
  v2[167] = swift_task_alloc();
  v2[168] = swift_task_alloc();
  v2[169] = swift_task_alloc();
  v2[170] = swift_task_alloc();
  v2[171] = swift_task_alloc();
  v2[172] = swift_task_alloc();
  v2[173] = swift_task_alloc();
  v2[174] = swift_task_alloc();
  v2[175] = swift_task_alloc();
  v2[176] = swift_task_alloc();
  v2[177] = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  v2[178] = swift_task_alloc();
  v2[179] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698360, &qword_1013E35F0);
  v2[180] = swift_task_alloc();
  v11 = type metadata accessor for SymmetricKey256();
  v2[181] = v11;
  v2[182] = *(v11 - 8);
  v2[183] = swift_task_alloc();
  v12 = type metadata accessor for KeyDropJoinToken(0);
  v2[184] = v12;
  v2[185] = *(v12 - 8);
  v2[186] = swift_task_alloc();
  v2[187] = swift_task_alloc();
  v2[188] = swift_task_alloc();
  v2[189] = type metadata accessor for SharingCircleKeyManager.DelegatedKeychain(0);
  v2[190] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v2[191] = v13;
  v14 = *(v13 - 8);
  v2[192] = v14;
  v2[193] = *(v14 + 64);
  v2[194] = swift_task_alloc();
  v2[195] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[196] = swift_task_alloc();
  v15 = type metadata accessor for OwnedBeaconRecord(0);
  v2[197] = v15;
  v2[198] = *(v15 - 8);
  v2[199] = swift_task_alloc();
  v2[200] = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v2[201] = swift_task_alloc();
  v2[202] = swift_task_alloc();
  v2[203] = swift_task_alloc();
  v2[204] = swift_task_alloc();
  v2[205] = swift_task_alloc();
  v2[206] = swift_task_alloc();
  v2[207] = swift_task_alloc();
  v2[208] = swift_task_alloc();
  v2[209] = swift_task_alloc();
  v2[210] = swift_task_alloc();
  v2[211] = swift_task_alloc();
  v2[212] = swift_task_alloc();

  return _swift_task_switch(sub_100CAB51C, v1, 0);
}

uint64_t sub_100CAB51C()
{
  v29 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1696);
  v2 = *(v0 + 1688);
  v3 = *(v0 + 1680);
  v4 = *(v0 + 960);
  v5 = type metadata accessor for Logger();
  *(v0 + 1704) = sub_1000076D4(v5, qword_10177AE28);
  sub_100D11DC8(v4, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1696);
  v10 = *(v0 + 1688);
  v11 = *(v0 + 1680);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v12 = 136447235;
    v13 = sub_100C71778();
    v15 = v14;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v16 = sub_1000136BC(v13, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, &v28);

    *(v12 + 24) = v20;
    *(v12 + 32) = 2160;
    *(v12 + 34) = 1752392040;
    *(v12 + 42) = 2081;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, &v28);

    *(v12 + 44) = v24;
    _os_log_impl(&_mh_execute_header, v6, v7, "Delegated keys to upload: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v12, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v25 = *(v0 + 1600);
  v26 = *(*(v0 + 968) + 120);
  *(v0 + 1712) = v26;
  *(v0 + 1904) = *(v25 + 24);

  return _swift_task_switch(sub_100CAB8E8, v26, 0);
}

uint64_t sub_100CAB8E8()
{
  v1 = *(v0 + 1712);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1536);
  v4 = *(v0 + 1528);
  (*(v3 + 16))(v2, *(v0 + 960) + *(v0 + 1904), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 1720) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 1728) = v7;
  *v7 = v0;
  v7[1] = sub_100CABA88;
  v8 = *(v0 + 1568);
  v9 = *(v0 + 1560);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100D14904, v6, v9);
}

uint64_t sub_100CABA88()
{
  v1 = *(*v0 + 968);

  return _swift_task_switch(sub_100CABBE8, v1, 0);
}

uint64_t sub_100CABBE8()
{
  v1 = v0[196];
  if ((*(v0[198] + 48))(v1, 1, v0[197]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    sub_1001BAEE0();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[200];
    v6 = v0[120];
    sub_100D12974(v1, v0[199], type metadata accessor for OwnedBeaconRecord);
    v7 = *(v5 + 20);
    v8 = swift_task_alloc();
    v0[217] = v8;
    *v8 = v0;
    v8[1] = sub_100CAC118;
    v9 = v0[190];

    return sub_100C7B39C(v9, v6 + v7);
  }
}

uint64_t sub_100CAC118()
{
  v2 = *v1;
  *(*v1 + 1744) = v0;

  v3 = *(v2 + 968);
  if (v0)
  {
    v4 = sub_100CB3A20;
  }

  else
  {
    v4 = sub_100CAC270;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100CAC270()
{
  v123 = v0;
  v1 = *(v0 + 1520);
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
LABEL_13:
    v20 = *(v0 + 1592);
    v21 = *(v0 + 1520);
    sub_1001BAEE0();
    swift_allocError();
    *v22 = 21;
    swift_willThrow();
    sub_100018D00(v20, type metadata accessor for OwnedBeaconRecord);
    sub_100018D00(v21, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

    v23 = *(v0 + 8);

    return v23();
  }

  v4 = 0;
  v5 = *(v0 + 1480);
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
LABEL_56:
      __break(1u);
    }

    sub_100D11DC8(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, *(v0 + 1488), type metadata accessor for KeyDropJoinToken);
    if (qword_101694560 != -1)
    {
      swift_once();
    }

    sub_1000076D4(*(v0 + 1528), qword_10177A900);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    ++v4;
    sub_100018D00(*(v0 + 1488), type metadata accessor for KeyDropJoinToken);
    if (v3 == v4)
    {
      goto LABEL_13;
    }
  }

  v6 = *(v0 + 1520);
  v7 = *(v0 + 1512);
  v8 = *(v0 + 1504);
  v9 = *(v0 + 1496);
  v10 = *(v0 + 1456);
  v11 = *(v0 + 1448);
  v12 = *(v0 + 1440);
  sub_100D12974(*(v0 + 1488), v9, type metadata accessor for KeyDropJoinToken);
  sub_100D12974(v9, v8, type metadata accessor for KeyDropJoinToken);
  sub_1000D2A70(v6 + *(v7 + 20), v12, &qword_101698360, &qword_1013E35F0);
  if ((*(v10 + 48))(v12, 1, v11) == 1)
  {
    v13 = *(v0 + 1440);
    sub_100018D00(*(v0 + 1504), type metadata accessor for KeyDropJoinToken);
    sub_10000B3A8(v13, &qword_101698360, &qword_1013E35F0);
    goto LABEL_13;
  }

  v14 = *(v0 + 1520);
  v15 = *(v0 + 1512);
  (*(*(v0 + 1456) + 32))(*(v0 + 1464), *(v0 + 1440), *(v0 + 1448));
  v16 = (v14 + *(v15 + 24));
  v17 = *v16;
  *(v0 + 1752) = *v16;
  v18 = v16[1];
  *(v0 + 1760) = v18;
  if (v18 >> 60 == 15)
  {
    v19 = *(v0 + 1504);
    (*(*(v0 + 1456) + 8))(*(v0 + 1464), *(v0 + 1448));
    sub_100018D00(v19, type metadata accessor for KeyDropJoinToken);
    goto LABEL_13;
  }

  v25 = (v0 + 1752);
  v26 = *(v0 + 1600);
  v27 = *(v0 + 1432);
  v28 = *(v0 + 1416);
  v29 = *(v0 + 960);
  sub_100017D5C(v17, v18);
  static Date.trustedNow.getter(v27);
  static Date.trustedNow.getter(v27 + *(v28 + 24));
  *(v27 + *(v28 + 20)) = 1;
  v30 = *(v29 + *(v26 + 32));
  *(v0 + 1768) = v30;
  v31 = *(v30 + 32);
  *(v0 + 1923) = v31;
  v32 = 1 << v31;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(v30 + 56);

  v35 = 0;
  v36 = _swiftEmptyArrayStorage;
  v37 = xmmword_101385D80;
  *&v38 = 136446466;
LABEL_20:
  *(v0 + 1792) = v36;
  while (v34)
  {
    v39 = *(v0 + 1768);
LABEL_27:
    *(v0 + 1808) = v35;
    *(v0 + 1800) = v34;
    v41 = *(*(v39 + 48) + (__clz(__rbit64(v34)) | (v35 << 6)));
    *(v0 + 1924) = v41;
    if (v41 == 17)
    {
      v100 = *(v0 + 1592);
      *(v0 + 640) = *(v0 + 1576);
      v101 = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
      *(v0 + 1832) = v101;
      *(v0 + 648) = v101;
      v102 = sub_1000280DC((v0 + 616));
      sub_100D11DC8(v100, v102, type metadata accessor for OwnedBeaconRecord);
      v103 = swift_task_alloc();
      *(v0 + 1840) = v103;
      *v103 = v0;
      v103[1] = sub_100CAFA28;
      v104 = *(v0 + 960);

      return sub_100CB5688(v0 + 560, v0 + 616, v104);
    }

    if (v41 == 15)
    {
      v105 = swift_task_alloc();
      *(v0 + 1816) = v105;
      *v105 = v0;
      v105[1] = sub_100CAD67C;
      v106 = *(v0 + 1592);

      return sub_100CF83A4(v0 + 304, v106);
    }

    v34 &= v34 - 1;
    if (v41 == 14)
    {
      v114 = v38;
      v117 = v37;
      v118 = v25;
      v119 = v36;
      v109 = *(v0 + 1752);
      v112 = *(v0 + 1760);
      v42 = *(v0 + 1408);
      v43 = *(v0 + 1400);
      v44 = type metadata accessor for EncryptedData();
      v45 = *(v44 - 8);
      (*(v45 + 56))(v42, 1, 1, v44);
      sub_1000D2A70(v42, v43, &qword_1016B9AE8, &unk_1013E35D0);
      v115 = *(v45 + 48);
      LODWORD(v42) = v115(v43, 1, v44);
      sub_10002E98C(v109, v112);
      v46 = *(v0 + 1400);
      if (v42 == 1)
      {
        sub_10000B3A8(*(v0 + 1400), &qword_1016B9AE8, &unk_1013E35D0);
        v110 = 0xF000000000000000;
        v113 = 0;
      }

      else
      {
        v47 = EncryptedData.cipherText.getter();
        v110 = v48;
        v113 = v47;
        (*(v45 + 8))(v46, v44);
      }

      v49 = *(v0 + 1392);
      sub_1000D2A70(*(v0 + 1408), v49, &qword_1016B9AE8, &unk_1013E35D0);
      v50 = v115(v49, 1, v44);
      v51 = *(v0 + 1392);
      if (v50 == 1)
      {
        sub_10000B3A8(*(v0 + 1392), &qword_1016B9AE8, &unk_1013E35D0);
        v107 = 0xF000000000000000;
        v108 = 0;
      }

      else
      {
        v52 = EncryptedData.initializationVector.getter();
        v107 = v53;
        v108 = v52;
        (*(v45 + 8))(v51, v44);
      }

      v54 = *(v0 + 1384);
      sub_1000D2A70(*(v0 + 1408), v54, &qword_1016B9AE8, &unk_1013E35D0);
      v55 = v115(v54, 1, v44);
      v56 = *(v0 + 1408);
      v57 = *(v0 + 1384);
      if (v55 == 1)
      {
        sub_10000B3A8(*(v0 + 1408), &qword_1016B9AE8, &unk_1013E35D0);
        sub_10000B3A8(v57, &qword_1016B9AE8, &unk_1013E35D0);
        v58 = 0;
        v59 = 0xF000000000000000;
      }

      else
      {
        v58 = EncryptedData.tag.getter();
        v59 = v60;
        sub_10000B3A8(v56, &qword_1016B9AE8, &unk_1013E35D0);
        (*(v45 + 8))(v57, v44);
      }

      v61 = *(v0 + 1432);
      v62 = *(v0 + 1304);
      v63 = *(v0 + 1296);
      v64 = *(v0 + 1200);
      *(v0 + 88) = 1;
      *(v0 + 96) = *v118;
      *(v0 + 112) = v113;
      *(v0 + 120) = v110;
      *(v0 + 128) = v108;
      *(v0 + 136) = v107;
      *(v0 + 144) = v58;
      *(v0 + 152) = v59;
      sub_100D11DC8(v61, &v62[*(v64 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
      v65 = swift_allocObject();
      v66 = *(v0 + 120);
      *(v65 + 48) = *(v0 + 104);
      *(v65 + 64) = v66;
      *(v65 + 80) = *(v0 + 136);
      *(v65 + 96) = *(v0 + 152);
      v67 = *(v0 + 88);
      *(v65 + 16) = v117;
      *(v65 + 32) = v67;
      *v62 = 14;
      *&v62[*(v64 + 24)] = v65;
      sub_100D11DC8(v62, v63, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_1003914F8(v0 + 88, v0 + 16);
      v68 = v119;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_100A5BE40(0, v119[2] + 1, 1, v119);
      }

      v70 = v68[2];
      v69 = v68[3];
      v120 = v68;
      if (v70 >= v69 >> 1)
      {
        v120 = sub_100A5BE40((v69 > 1), v70 + 1, 1, v68);
      }

      v71 = *(v0 + 1672);
      v72 = *(v0 + 1304);
      v73 = *(v0 + 1296);
      v74 = *(v0 + 1288);
      v75 = *(v0 + 1208);
      v76 = *(v0 + 960);
      v120[2] = v70 + 1;
      v36 = v120;
      sub_100D12974(v73, v120 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v70, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100D11DC8(v76, v71, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v72, v74, type metadata accessor for KeyDropInterface.KeyPackage);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      v79 = os_log_type_enabled(v77, v78);
      v80 = *(v0 + 1672);
      v81 = *(v0 + 1304);
      v82 = *(v0 + 1288);
      if (v79)
      {
        v111 = v78;
        v83 = swift_slowAlloc();
        v122[0] = swift_slowAlloc();
        *v83 = v114;
        v116 = v81;
        v84 = sub_100C71778();
        v86 = v85;
        sub_100018D00(v80, type metadata accessor for SharingCircleKeyManager.Instruction);
        v87 = sub_1000136BC(v84, v86, v122);

        *(v83 + 4) = v87;
        *(v83 + 12) = 2082;
        v88 = sub_101255410();
        v90 = v89;
        sub_100018D00(v82, type metadata accessor for KeyDropInterface.KeyPackage);
        v91 = sub_1000136BC(v88, v90, v122);

        *(v83 + 14) = v91;
        v36 = v120;
        _os_log_impl(&_mh_execute_header, v77, v111, "Delegated keys to upload: %{public}s,\nadded: %{public}s.", v83, 0x16u);
        swift_arrayDestroy();

        sub_100391554(v0 + 88);
        sub_100018D00(v116, type metadata accessor for KeyDropInterface.KeyPackage);
        v38 = v114;
        v25 = v118;
        v37 = v117;
      }

      else
      {

        sub_100391554(v0 + 88);
        sub_100018D00(v82, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100018D00(v80, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v81, type metadata accessor for KeyDropInterface.KeyPackage);
        v25 = v118;
        v37 = v117;
        v38 = v114;
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v40 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_56;
    }

    v39 = *(v0 + 1768);
    if (v40 >= (((1 << *(v0 + 1923)) + 63) >> 6))
    {
      break;
    }

    v34 = *(v39 + 8 * v40 + 56);
    ++v35;
    if (v34)
    {
      v35 = v40;
      goto LABEL_27;
    }
  }

  v121 = v36;
  v92 = *(v0 + 1592);
  v93 = *(v0 + 1520);
  v94 = *(v0 + 1504);
  v95 = *(v0 + 1464);
  v96 = *(v0 + 1456);
  v97 = *(v0 + 1448);
  v98 = *(v0 + 1432);
  sub_100006654(*(v0 + 1752), *(v0 + 1760));
  sub_100018D00(v98, type metadata accessor for KeyDropInterface.KeyAlignment);
  (*(v96 + 8))(v95, v97);
  sub_100018D00(v94, type metadata accessor for KeyDropJoinToken);
  sub_100018D00(v92, type metadata accessor for OwnedBeaconRecord);

  sub_100018D00(v93, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

  v99 = *(v0 + 8);

  return v99(v121);
}

uint64_t sub_100CAD67C()
{
  v2 = *v1;
  *(*v1 + 1824) = v0;

  if (v0)
  {
    v3 = *(v2 + 968);

    v4 = sub_100CB3E30;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 968);
    v4 = sub_100CAD7F0;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100CAD7F0()
{
  v244 = v0;
  v1 = *(v0 + 1824);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v2 = *(v0 + 320);
  *(v0 + 368) = *(v0 + 304);
  *(v0 + 384) = v2;
  v3 = *(v0 + 352);
  *(v0 + 400) = *(v0 + 336);
  *(v0 + 416) = v3;
  sub_100D12C9C();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {

    sub_100694A6C(v0 + 304);
LABEL_4:
    v9 = *(v0 + 1616);
    v10 = *(v0 + 1608);
    v11 = *(v0 + 960);
    sub_100D11DC8(v11, *(v0 + 1624), type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v11, v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v11, v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v233 = v13;
      v14 = *(v0 + 1624);
      v15 = *(v0 + 1616);
      v236 = *(v0 + 1608);
      v16 = *(v0 + 1924);
      v17 = swift_slowAlloc();
      v243[0] = swift_slowAlloc();
      *v17 = 136447747;
      v18 = sub_100C71778();
      v20 = v19;
      sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
      v21 = sub_1000136BC(v18, v20, v243);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      v22 = sub_10125403C(v16);
      v24 = sub_1000136BC(v22, v23, v243);

      *(v17 + 14) = v24;
      *(v17 + 22) = 2160;
      *(v17 + 24) = 1752392040;
      *(v17 + 32) = 2081;
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_100018D00(v15, type metadata accessor for SharingCircleKeyManager.Instruction);
      v28 = sub_1000136BC(v25, v27, v243);

      *(v17 + 34) = v28;
      *(v17 + 42) = 2160;
      *(v17 + 44) = 1752392040;
      *(v17 + 52) = 2081;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      sub_100018D00(v236, type metadata accessor for SharingCircleKeyManager.Instruction);
      v32 = sub_1000136BC(v29, v31, v243);

      *(v17 + 54) = v32;
      *(v17 + 62) = 2082;
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v35 = sub_1000136BC(v33, v34, v243);

      *(v17 + 64) = v35;
      _os_log_impl(&_mh_execute_header, v12, v233, "Delegated keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v17, 0x48u);
      swift_arrayDestroy();
    }

    else
    {
      v36 = *(v0 + 1624);
      v37 = *(v0 + 1616);
      v38 = *(v0 + 1608);

      sub_100018D00(v38, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v37, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v36, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v39 = *(v0 + 1760);
    v40 = *(v0 + 1752);
    v237 = *(v0 + 1592);
    v240 = *(v0 + 1520);
    v41 = *(v0 + 1504);
    v42 = *(v0 + 1464);
    v43 = *(v0 + 1456);
    v44 = *(v0 + 1448);
    v45 = *(v0 + 1432);
    swift_willThrow();

    sub_100006654(v40, v39);
    sub_100018D00(v45, type metadata accessor for KeyDropInterface.KeyAlignment);
    (*(v43 + 8))(v42, v44);
    sub_100018D00(v41, type metadata accessor for KeyDropJoinToken);
    sub_100018D00(v237, type metadata accessor for OwnedBeaconRecord);
    sub_100018D00(v240, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

    v46 = *(v0 + 8);

    return v46();
  }

  v235 = v4;
  v239 = v5;
  v6 = (*(v0 + 1504) + *(*(v0 + 1472) + 20));
  v7 = *v6;
  v8 = v6[1];
  *(v0 + 840) = *v6;
  *(v0 + 848) = v8;
  sub_100017D5C(v7, v8);
  P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
  v48 = *(v0 + 1168);
  v49 = *(v0 + 1152);
  v50 = *(v0 + 1144);
  P256.Signing.PrivateKey.rawRepresentation.getter();
  v51 = *(v49 + 8);
  v51(v48, v50);
  P256PrivateKey.init(data:)();
  v231 = v51;
  v52 = *(v0 + 1088);
  v53 = *(v0 + 1048);
  v54 = *(v0 + 1040);
  *(v0 + 856) = v235;
  *(v0 + 864) = v239;
  sub_100D13BF8(&qword_1016982E8, &type metadata accessor for SymmetricKey256, &protocol conformance descriptor for SymmetricKey256);
  *(v0 + 872) = KeyRepresenting.rawValue.getter();
  *(v0 + 880) = v55;
  SymmetricKey.init<A>(data:)();
  (*(v53 + 56))(v52, 1, 1, v54);
  sub_1000E0A3C();
  static AES.GCM.seal<A>(_:using:nonce:)();
  v56 = *(v0 + 1112);
  v57 = *(v0 + 1104);
  v58 = *(v0 + 1096);
  sub_10000B3A8(*(v0 + 1088), &qword_1016AF958, &qword_1013CADF8);
  (*(v57 + 8))(v56, v58);
  v59 = AES.GCM.SealedBox.combined.getter();
  if (v60 >> 60 == 15)
  {
    v61 = *(v0 + 1192);
    v62 = *(v0 + 1184);
    v63 = *(v0 + 1176);
    v64 = *(v0 + 1136);
    v65 = *(v0 + 1128);
    v66 = *(v0 + 1120);

    sub_100694A6C(v0 + 304);
    sub_1001BAEE0();
    swift_allocError();
    *v67 = 22;
    swift_willThrow();
    sub_100016590(v235, v239);

    (*(v65 + 8))(v64, v66);
    (*(v62 + 8))(v61, v63);
    goto LABEL_4;
  }

  v223 = v59;
  v227 = v60;
  sub_100D13BF8(&qword_1016982E0, &type metadata accessor for P256PrivateKey, &protocol conformance descriptor for P256PrivateKey);
  *(v0 + 760) = KeyRepresenting.rawValue.getter();
  *(v0 + 768) = v68;
  P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
  result = AES.GCM.SealedBox.combined.getter();
  if (v69 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v70 = result;
    v71 = v69;
    sub_100694A6C(v0 + 304);
    *(v0 + 824) = v70;
    *(v0 + 832) = v71;
    P256.Signing.PrivateKey.signature<A>(for:)();
    v72 = *(v0 + 1080);
    v73 = *(v0 + 1072);
    v74 = *(v0 + 1064);
    v75 = *(v0 + 1056);
    v76 = *(v0 + 1048);
    v77 = *(v0 + 1040);
    sub_100016590(*(v0 + 824), *(v0 + 832));
    v242 = P256.Signing.ECDSASignature.rawRepresentation.getter();
    v219 = v78;
    (*(v73 + 8))(v72, v74);
    v79 = AES.GCM.SealedBox.ciphertext.getter();
    v216 = v80;
    v81 = AES.GCM.SealedBox.tag.getter();
    v211 = v82;
    v214 = v81;
    AES.GCM.SealedBox.nonce.getter();
    *(v0 + 720) = v77;
    *(v0 + 728) = sub_100D13BF8(&qword_1016B9B00, &type metadata accessor for AES.GCM.Nonce, &protocol conformance descriptor for AES.GCM.Nonce);
    v83 = sub_1000280DC((v0 + 696));
    (*(v76 + 16))(v83, v75, v77);
    sub_1000035D0((v0 + 696), *(v0 + 720));
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v76 + 8))(v75, v77);
    v84 = *(v0 + 808);
    v85 = *(v0 + 816);
    sub_100007BAC((v0 + 696));
    *(v0 + 496) = v242;
    *(v0 + 504) = v219;
    *(v0 + 512) = v79;
    *(v0 + 520) = v216;
    *(v0 + 528) = v214;
    *(v0 + 536) = v211;
    *(v0 + 544) = v84;
    *(v0 + 552) = v85;
    v86 = *(v0 + 512);
    *(v0 + 432) = *(v0 + 496);
    *(v0 + 448) = v86;
    v87 = *(v0 + 544);
    *(v0 + 464) = *(v0 + 528);
    *(v0 + 480) = v87;
    sub_100D12CF0();
    v88 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v90 = v89;
    v91 = *(v0 + 1432);
    v92 = *(v0 + 1376);
    v93 = *(v0 + 1280);
    v212 = *(v0 + 1272);
    v94 = *(v0 + 1200);
    v95 = type metadata accessor for EncryptedData();
    v210 = *(v95 - 8);
    v202 = v95;
    v201 = *(v210 + 56);
    v201(v92, 1, 1);
    sub_100017D5C(v88, v90);
    sub_10125A120(1, v88, v90, v92, (v0 + 232));
    sub_100D11DC8(v91, &v93[*(v94 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
    sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
    v96 = swift_allocObject();
    v97 = *(v0 + 264);
    v98 = *(v0 + 280);
    v99 = *(v0 + 232);
    *(v96 + 48) = *(v0 + 248);
    *(v96 + 64) = v97;
    *(v96 + 80) = v98;
    *(v96 + 96) = *(v0 + 296);
    *(v96 + 16) = xmmword_101385D80;
    *(v96 + 32) = v99;
    *v93 = 15;
    *&v93[*(v94 + 24)] = v96;
    sub_100D11DC8(v93, v212, type metadata accessor for KeyDropInterface.KeyPackage);
    v213 = v0 + 232;
    sub_1003914F8(v0 + 232, v0 + 160);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = *(v0 + 1792);
    v215 = v88;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v101 = sub_100A5BE40(0, v101[2] + 1, 1, v101);
    }

    v103 = v101[2];
    v102 = v101[3];
    v217 = v90;
    if (v103 >= v102 >> 1)
    {
      v101 = sub_100A5BE40((v102 > 1), v103 + 1, 1, v101);
    }

    v104 = *(v0 + 1664);
    v105 = *(v0 + 1280);
    v106 = *(v0 + 1272);
    v107 = *(v0 + 1264);
    v108 = *(v0 + 1208);
    v109 = *(v0 + 960);
    v101[2] = v103 + 1;
    v220 = v101;
    sub_100D12974(v106, v101 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v103, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v109, v104, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v105, v107, type metadata accessor for KeyDropInterface.KeyPackage);
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();
    v112 = os_log_type_enabled(v110, v111);
    v113 = *(v0 + 1664);
    v205 = *(v0 + 1280);
    v114 = *(v0 + 1264);
    v204 = *(v0 + 1192);
    v115 = *(v0 + 1176);
    v207 = *(v0 + 1144);
    v208 = *(v0 + 1160);
    v209 = *(v0 + 1136);
    v116 = (*(v0 + 1184) + 8);
    v203 = (*(v0 + 1128) + 8);
    v117 = &unk_10138B000;
    v206 = *(v0 + 1120);
    if (v112)
    {
      v118 = swift_slowAlloc();
      v243[0] = swift_slowAlloc();
      *v118 = 136446466;
      v119 = sub_100C71778();
      v200 = v116;
      v121 = v120;
      sub_100018D00(v113, type metadata accessor for SharingCircleKeyManager.Instruction);
      v122 = sub_1000136BC(v119, v121, v243);

      *(v118 + 4) = v122;
      *(v118 + 12) = 2082;
      v123 = sub_101255410();
      v125 = v124;
      sub_100018D00(v114, type metadata accessor for KeyDropInterface.KeyPackage);
      v126 = sub_1000136BC(v123, v125, v243);

      *(v118 + 14) = v126;
      _os_log_impl(&_mh_execute_header, v110, v111, "Delegated keys to upload: %{public}s,\nadded: %{public}s.", v118, 0x16u);
      swift_arrayDestroy();

      v117 = &unk_10138B000;

      sub_100016590(v235, v239);

      sub_100922D9C(v0 + 496);
      sub_100006654(v223, v227);

      sub_100391554(v213);
      sub_100016590(v215, v217);
      sub_100018D00(v205, type metadata accessor for KeyDropInterface.KeyPackage);
      v231(v208, v207);
      (*v203)(v209, v206);
      (*v200)(v204, v115);
    }

    else
    {
      sub_100016590(v235, v239);

      sub_100922D9C(v0 + 496);
      sub_100006654(v223, v227);

      sub_100391554(v213);
      sub_100016590(v215, v217);
      sub_100018D00(v114, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v113, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v205, type metadata accessor for KeyDropInterface.KeyPackage);
      v231(v208, v207);
      (*v203)(v209, v206);
      (*v116)(v204, v115);
    }

    v128 = *(v0 + 1808);
    v129 = (*(v0 + 1800) - 1) & *(v0 + 1800);
    v130 = (v0 + 1752);
    v131 = (v210 + 48);
    v132 = (v210 + 8);
    *&v127 = v117[129];
    v133 = v220;
LABEL_21:
    *(v0 + 1792) = v133;
    while (v129)
    {
      v134 = *(v0 + 1768);
LABEL_28:
      *(v0 + 1808) = v128;
      *(v0 + 1800) = v129;
      v136 = *(*(v134 + 48) + (__clz(__rbit64(v129)) | (v128 << 6)));
      *(v0 + 1924) = v136;
      if (v136 == 17)
      {
        v193 = *(v0 + 1592);
        *(v0 + 640) = *(v0 + 1576);
        v194 = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
        *(v0 + 1832) = v194;
        *(v0 + 648) = v194;
        v195 = sub_1000280DC((v0 + 616));
        sub_100D11DC8(v193, v195, type metadata accessor for OwnedBeaconRecord);
        v196 = swift_task_alloc();
        *(v0 + 1840) = v196;
        *v196 = v0;
        v196[1] = sub_100CAFA28;
        v197 = *(v0 + 960);

        return sub_100CB5688(v0 + 560, v0 + 616, v197);
      }

      if (v136 == 15)
      {
        v198 = swift_task_alloc();
        *(v0 + 1816) = v198;
        *v198 = v0;
        v198[1] = sub_100CAD67C;
        v199 = *(v0 + 1592);

        return sub_100CF83A4(v0 + 304, v199);
      }

      v129 &= v129 - 1;
      if (v136 == 14)
      {
        v232 = v127;
        v234 = v130;
        v238 = v132;
        v228 = *(v0 + 1760);
        v221 = v133;
        v224 = *(v0 + 1752);
        v137 = *(v0 + 1408);
        v138 = *(v0 + 1400);
        (v201)(v137, 1, 1, v202);
        sub_1000D2A70(v137, v138, &qword_1016B9AE8, &unk_1013E35D0);
        v139 = v131;
        v140 = *v131;
        v241 = v139;
        LODWORD(v137) = v140(v138, 1, v202);
        sub_10002E98C(v224, v228);
        v141 = *(v0 + 1400);
        if (v137 == 1)
        {
          sub_10000B3A8(*(v0 + 1400), &qword_1016B9AE8, &unk_1013E35D0);
          v225 = 0xF000000000000000;
          v229 = 0;
        }

        else
        {
          v142 = EncryptedData.cipherText.getter();
          v225 = v143;
          v229 = v142;
          (*v238)(v141, v202);
        }

        v144 = *(v0 + 1392);
        sub_1000D2A70(*(v0 + 1408), v144, &qword_1016B9AE8, &unk_1013E35D0);
        v145 = v140(v144, 1, v202);
        v146 = *(v0 + 1392);
        if (v145 == 1)
        {
          sub_10000B3A8(*(v0 + 1392), &qword_1016B9AE8, &unk_1013E35D0);
          v218 = 0;
          v147 = 0xF000000000000000;
        }

        else
        {
          v218 = EncryptedData.initializationVector.getter();
          v147 = v148;
          (*v238)(v146, v202);
        }

        v149 = *(v0 + 1384);
        sub_1000D2A70(*(v0 + 1408), v149, &qword_1016B9AE8, &unk_1013E35D0);
        v150 = v140(v149, 1, v202);
        v151 = *(v0 + 1408);
        v152 = *(v0 + 1384);
        if (v150 == 1)
        {
          sub_10000B3A8(*(v0 + 1408), &qword_1016B9AE8, &unk_1013E35D0);
          sub_10000B3A8(v152, &qword_1016B9AE8, &unk_1013E35D0);
          v153 = 0;
          v154 = 0xF000000000000000;
        }

        else
        {
          v153 = EncryptedData.tag.getter();
          v154 = v155;
          sub_10000B3A8(v151, &qword_1016B9AE8, &unk_1013E35D0);
          (*v238)(v152, v202);
        }

        v156 = *(v0 + 1432);
        v157 = *(v0 + 1304);
        v158 = *(v0 + 1296);
        v159 = *(v0 + 1200);
        *(v0 + 88) = 1;
        *(v0 + 96) = *v234;
        *(v0 + 112) = v229;
        *(v0 + 120) = v225;
        *(v0 + 128) = v218;
        *(v0 + 136) = v147;
        *(v0 + 144) = v153;
        *(v0 + 152) = v154;
        sub_100D11DC8(v156, &v157[*(v159 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v160 = swift_allocObject();
        v161 = *(v0 + 120);
        *(v160 + 48) = *(v0 + 104);
        *(v160 + 64) = v161;
        *(v160 + 80) = *(v0 + 136);
        *(v160 + 96) = *(v0 + 152);
        v162 = *(v0 + 88);
        *(v160 + 16) = xmmword_101385D80;
        *(v160 + 32) = v162;
        *v157 = 14;
        *&v157[*(v159 + 24)] = v160;
        sub_100D11DC8(v157, v158, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_1003914F8(v0 + 88, v0 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v221 = sub_100A5BE40(0, v221[2] + 1, 1, v221);
        }

        v164 = v221[2];
        v163 = v221[3];
        if (v164 >= v163 >> 1)
        {
          v221 = sub_100A5BE40((v163 > 1), v164 + 1, 1, v221);
        }

        v165 = *(v0 + 1672);
        v166 = *(v0 + 1304);
        v167 = *(v0 + 1296);
        v168 = *(v0 + 1288);
        v169 = *(v0 + 1208);
        v170 = *(v0 + 960);
        v221[2] = v164 + 1;
        sub_100D12974(v167, v221 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v164, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v170, v165, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v166, v168, type metadata accessor for KeyDropInterface.KeyPackage);
        v171 = Logger.logObject.getter();
        v226 = static os_log_type_t.default.getter();
        v172 = v171;
        v173 = os_log_type_enabled(v171, v226);
        v174 = *(v0 + 1672);
        v230 = *(v0 + 1304);
        v175 = *(v0 + 1288);
        if (v173)
        {
          v176 = swift_slowAlloc();
          v243[0] = swift_slowAlloc();
          *v176 = v232;
          v177 = sub_100C71778();
          v179 = v178;
          sub_100018D00(v174, type metadata accessor for SharingCircleKeyManager.Instruction);
          v180 = sub_1000136BC(v177, v179, v243);

          *(v176 + 4) = v180;
          *(v176 + 12) = 2082;
          v181 = sub_101255410();
          v183 = v182;
          sub_100018D00(v175, type metadata accessor for KeyDropInterface.KeyPackage);
          v184 = sub_1000136BC(v181, v183, v243);

          *(v176 + 14) = v184;
          _os_log_impl(&_mh_execute_header, v172, v226, "Delegated keys to upload: %{public}s,\nadded: %{public}s.", v176, 0x16u);
          swift_arrayDestroy();

          sub_100391554(v0 + 88);
          sub_100018D00(v230, type metadata accessor for KeyDropInterface.KeyPackage);
          v127 = v232;
          v133 = v221;
          v130 = v234;
          v132 = v238;
          v131 = v241;
        }

        else
        {

          sub_100391554(v0 + 88);
          sub_100018D00(v175, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v174, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v230, type metadata accessor for KeyDropInterface.KeyPackage);
          v133 = v221;
          v130 = v234;
          v132 = v238;
          v131 = v241;
          v127 = v232;
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v135 = v128 + 1;
      if (__OFADD__(v128, 1))
      {
        __break(1u);
      }

      v134 = *(v0 + 1768);
      if (v135 >= (((1 << *(v0 + 1923)) + 63) >> 6))
      {
        break;
      }

      v129 = *(v134 + 8 * v135 + 56);
      ++v128;
      if (v129)
      {
        v128 = v135;
        goto LABEL_28;
      }
    }

    v222 = v133;
    v185 = *(v0 + 1592);
    v186 = *(v0 + 1520);
    v187 = *(v0 + 1504);
    v188 = *(v0 + 1464);
    v189 = *(v0 + 1456);
    v190 = *(v0 + 1448);
    v191 = *(v0 + 1432);
    sub_100006654(*(v0 + 1752), *(v0 + 1760));
    sub_100018D00(v191, type metadata accessor for KeyDropInterface.KeyAlignment);
    (*(v189 + 8))(v188, v190);
    sub_100018D00(v187, type metadata accessor for KeyDropJoinToken);
    sub_100018D00(v185, type metadata accessor for OwnedBeaconRecord);

    sub_100018D00(v186, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

    v192 = *(v0 + 8);

    return v192(v222);
  }

  return result;
}

uint64_t sub_100CAFA28()
{
  v2 = *v1;
  v3 = (*v1 + 584);
  *(v2 + 1848) = v0;
  *(v2 + 1856) = *(v2 + 560);
  *(v2 + 1925) = *(v2 + 576);
  *(v2 + 1872) = *v3;
  *(v2 + 1926) = *(v2 + 600);

  if (v0)
  {
    v4 = *(v2 + 968);

    v5 = sub_100CB4648;
    v6 = v4;
  }

  else
  {
    v7 = *(v2 + 968);
    sub_100007BAC((v2 + 616));
    v5 = sub_100CAFBC8;
    v6 = v7;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100CAFBC8()
{
  v1 = v0[229];
  v2 = v0[199];
  v0[85] = v0[197];
  v0[86] = v1;
  v3 = sub_1000280DC(v0 + 82);
  sub_100D11DC8(v2, v3, type metadata accessor for OwnedBeaconRecord);
  v4 = swift_task_alloc();
  v0[236] = v4;
  *v4 = v0;
  v4[1] = sub_100CAFCCC;
  v5 = v0[129];

  return sub_100CA0680(v5, (v0 + 82));
}

uint64_t sub_100CAFCCC()
{
  v2 = *v1;
  *(*v1 + 1896) = v0;

  if (v0)
  {
    v3 = *(v2 + 1880);
    v4 = *(v2 + 1872);
    v5 = *(v2 + 1864);
    v6 = *(v2 + 1856);
    v7 = *(v2 + 968);
    v8 = *(v2 + 1926);
    v9 = *(v2 + 1925);

    sub_100359088(v4, v3, v8);
    sub_100359088(v6, v5, v9);
    v10 = sub_100CB4E68;
  }

  else
  {
    v7 = *(v2 + 968);
    sub_100007BAC((v2 + 656));
    v10 = sub_100CAFE74;
  }

  return _swift_task_switch(v10, v7, 0);
}

uint64_t sub_100CAFE74()
{
  v478 = v0;
  v474 = *(v0 + 1925);
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1416);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1024);
  v6 = *(*(v0 + 1576) + 32);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 16);
  v8(v2, v1 + v6, v7);
  v9 = *v4;
  v8(v2 + *(v3 + 24), v4 + *(v5 + 36), v7);
  *(v2 + *(v3 + 20)) = v9;
  v10 = v474;
  v475 = v0;
  if (v10 != 1)
  {
    v24 = *(v0 + 1880);
    v25 = *(v0 + 1872);
    v26 = *(v0 + 1864);
    v27 = *(v0 + 1856);
    v28 = *(v0 + 1424);
    v29 = *(v0 + 1032);
    v30 = *(v0 + 1926);
    v31 = *(v0 + 1925);

    sub_100359088(v25, v24, v30);
    sub_1001BAEE0();
    swift_allocError();
    *v32 = 4;
    swift_willThrow();
    sub_100359088(v27, v26, v31);
    sub_100018D00(v28, type metadata accessor for KeyDropInterface.KeyAlignment);
    v33 = v29;
LABEL_5:
    sub_10000B3A8(v33, &unk_1016C8FC0, &unk_10139D7D0);
LABEL_100:
    v120 = *(v0 + 1616);
    v121 = *(v0 + 1608);
    v122 = *(v0 + 960);
    sub_100D11DC8(v122, *(v0 + 1624), type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v122, v120, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v122, v121, type metadata accessor for SharingCircleKeyManager.Instruction);
    swift_errorRetain();
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v123, v124))
    {
      v455 = v124;
      v125 = *(v0 + 1624);
      v126 = *(v0 + 1616);
      v461 = *(v0 + 1608);
      v127 = *(v0 + 1924);
      v128 = swift_slowAlloc();
      v476 = swift_slowAlloc();
      *v128 = 136447747;
      v129 = sub_100C71778();
      v131 = v130;
      sub_100018D00(v125, type metadata accessor for SharingCircleKeyManager.Instruction);
      v132 = sub_1000136BC(v129, v131, &v476);

      *(v128 + 4) = v132;
      *(v128 + 12) = 2082;
      v133 = sub_10125403C(v127);
      v135 = sub_1000136BC(v133, v134, &v476);

      *(v128 + 14) = v135;
      *(v128 + 22) = 2160;
      *(v128 + 24) = 1752392040;
      *(v128 + 32) = 2081;
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v136 = dispatch thunk of CustomStringConvertible.description.getter();
      v138 = v137;
      sub_100018D00(v126, type metadata accessor for SharingCircleKeyManager.Instruction);
      v139 = sub_1000136BC(v136, v138, &v476);

      *(v128 + 34) = v139;
      *(v128 + 42) = 2160;
      *(v128 + 44) = 1752392040;
      *(v128 + 52) = 2081;
      v0 = v475;
      v140 = dispatch thunk of CustomStringConvertible.description.getter();
      v142 = v141;
      sub_100018D00(v461, type metadata accessor for SharingCircleKeyManager.Instruction);
      v143 = sub_1000136BC(v140, v142, &v476);

      *(v128 + 54) = v143;
      *(v128 + 62) = 2082;
      swift_getErrorValue();
      v144 = Error.localizedDescription.getter();
      v146 = sub_1000136BC(v144, v145, &v476);

      *(v128 + 64) = v146;
      _os_log_impl(&_mh_execute_header, v123, v455, "Delegated keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v128, 0x48u);
      swift_arrayDestroy();
    }

    else
    {
      v147 = *(v0 + 1624);
      v148 = *(v0 + 1616);
      v149 = *(v0 + 1608);

      sub_100018D00(v149, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v148, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v147, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v150 = *(v0 + 1760);
    v151 = *(v0 + 1752);
    v152 = *(v0 + 1592);
    v466 = *(v0 + 1520);
    v153 = *(v0 + 1504);
    v154 = *(v0 + 1464);
    v155 = *(v475 + 1456);
    v156 = *(v475 + 1448);
    v157 = *(v475 + 1432);
    swift_willThrow();

    sub_100006654(v151, v150);
    sub_100018D00(v157, type metadata accessor for KeyDropInterface.KeyAlignment);
    (*(v155 + 8))(v154, v156);
    sub_100018D00(v153, type metadata accessor for KeyDropJoinToken);
    sub_100018D00(v152, type metadata accessor for OwnedBeaconRecord);
    sub_100018D00(v466, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

    v158 = *(v475 + 8);

    return v158();
  }

  v11 = *(v0 + 1856);
  sub_100D11DC8(*(v0 + 960), *(v0 + 1656), type metadata accessor for SharingCircleKeyManager.Instruction);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 1864);
  v16 = *(v0 + 1856);
  v17 = *(v0 + 1656);
  if (v14)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v476 = v19;
    *v18 = 134218499;
    *(v18 + 4) = *(v11 + 16);
    sub_100359088(v16, v15, 1u);
    *(v18 + 12) = 2160;
    *(v18 + 14) = 1752392040;
    *(v18 + 22) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_100018D00(v17, type metadata accessor for SharingCircleKeyManager.Instruction);
    v23 = sub_1000136BC(v20, v22, &v476);

    *(v18 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "Uploading primary keys count %ld for delegated share %{private,mask.hash}s", v18, 0x20u);
    sub_100007BAC(v19);
  }

  else
  {
    sub_100359088(*(v0 + 1856), *(v0 + 1864), 1u);

    sub_100018D00(v17, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v438 = (v0 + 601);
  v34 = *(v11 + 16);
  if (v34)
  {
    v35 = (v0 + 888);
    v423 = (v0 + 928);
    v36 = (v0 + 936);
    v37 = *(v0 + 1000);
    *(v475 + 936) = _swiftEmptyArrayStorage;
    v421 = v36;
    sub_101123DD0(0, v34, 0);
    v38 = 0;
    v39 = *(v475 + 936);
    v40 = *(v37 + 80);
    v0 = v475;
    v436 = v11 + ((v40 + 32) & ~v40);
    v41 = *(v475 + 1896);
    v432 = v11;
    v434 = *(v475 + 1784);
    v424 = v35;
    v426 = v34;
    while (1)
    {
      if (v38 >= *(v11 + 16))
      {
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        v410 = *(v0 + 1592);
        *(v0 + 640) = *(v0 + 1576);
        v411 = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
        *(v0 + 1832) = v411;
        *(v0 + 648) = v411;
        v412 = sub_1000280DC((v0 + 616));
        sub_100D11DC8(v410, v412, type metadata accessor for OwnedBeaconRecord);
        v413 = swift_task_alloc();
        *(v0 + 1840) = v413;
        *v413 = v0;
        v413[1] = sub_100CAFA28;
        v414 = *(v0 + 960);

        return sub_100CB5688(v0 + 560, v0 + 616, v414);
      }

      v471 = v39;
      v42 = *(v0 + 1016);
      v43 = *(v0 + 1000);
      v44 = *(v0 + 992);
      sub_100D11DC8(v436 + *(v43 + 72) * v38, v42, type metadata accessor for TimeBasedKey);
      v45 = *v42;
      sub_100A7A194(*(v42 + *(v44 + 24) + 16), *(v42 + *(v44 + 24) + 24), 0, 0);
      if (v41)
      {
        v0 = v475;
        goto LABEL_119;
      }

      v465 = v45;
      *v35 = 57;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v46 = __DataStorage.init(length:)();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v0 = v475;
      }

      else
      {

        v47 = __DataStorage._bytes.getter();
        v0 = v475;
        if (v47)
        {
          v41 = v47;
          v48 = v46;
          if (__OFSUB__(0, __DataStorage._offset.getter()))
          {
            goto LABEL_280;
          }
        }

        swift_allocObject();
        v49 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v46 = v49;
      }

      if (!__DataStorage._bytes.getter())
      {
        __break(1u);
      }

      if (__OFSUB__(0, __DataStorage._offset.getter()))
      {
        goto LABEL_267;
      }

      __DataStorage._length.getter();
      v41 = CCECCryptorExportKey();

      if (v41)
      {
        v94 = static os_log_type_t.error.getter();
        if (qword_101694BE0 == -1)
        {
          goto LABEL_90;
        }

        goto LABEL_295;
      }

      v50 = *v35;
      if ((*v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_268;
      }

      if (v50 >= 0x39)
      {
        v51 = 57;
      }

      else
      {
        v51 = *v35;
      }

      if (!v50)
      {

        CCECCryptorRelease();
        v48 = 0;
        v106 = 0;
        v52 = 0xC000000000000000;
        goto LABEL_206;
      }

      if (v50 <= 0xE)
      {
        *(v438 + 6) = 0;
        *v438 = 0;
        *(v0 + 615) = v51;

        v53 = __DataStorage._bytes.getter();
        if (v53)
        {
          v41 = v53;
          v48 = v46;
          v54 = __DataStorage._offset.getter();
          if (__OFSUB__(0, v54))
          {
            goto LABEL_283;
          }

          v41 -= v54;
          __DataStorage._length.getter();
          if (v41)
          {
            memcpy(v438, v41, v51);
          }
        }

        else
        {
          __DataStorage._length.getter();
        }

        v48 = *v438;
        v55 = *(v438 + 2) | ((*(v438 + 6) | (*(v438 + 14) << 16)) << 32);

        v52 = v434 & 0xF00000000000000 | v55;
        v434 = v52;
        v0 = v475;
      }

      else
      {
        v48 = v51 << 32;
        v52 = v46 | 0x4000000000000000;
      }

      CCECCryptorRelease();
      v56 = v52 >> 62;
      if ((v52 >> 62) > 1)
      {
        if (v56 != 2)
        {
          v106 = 0;
          goto LABEL_206;
        }

        v59 = *(v48 + 16);
        v58 = *(v48 + 24);
        v60 = __OFSUB__(v58, v59);
        v57 = v58 - v59;
        if (v60)
        {
          goto LABEL_281;
        }
      }

      else if (v56)
      {
        LODWORD(v57) = HIDWORD(v48) - v48;
        if (__OFSUB__(HIDWORD(v48), v48))
        {
          goto LABEL_282;
        }

        v57 = v57;
      }

      else
      {
        v57 = BYTE6(v52);
      }

      if (v57 != 28)
      {
        if (v56 == 2)
        {
          v275 = *(v48 + 16);
          v274 = *(v48 + 24);
          v106 = v274 - v275;
          if (!__OFSUB__(v274, v275))
          {
            goto LABEL_206;
          }

          __break(1u);
        }

        else if (v56 == 1)
        {
          if (!__OFSUB__(HIDWORD(v48), v48))
          {
            v106 = HIDWORD(v48) - v48;
LABEL_206:
            sub_100018350();
            v217 = swift_allocError();
            *v276 = 28;
            *(v276 + 8) = v106;
            *(v276 + 16) = 0;
            swift_willThrow();
            sub_100016590(v48, v52);
            goto LABEL_207;
          }

LABEL_300:
          __break(1u);
LABEL_301:
          swift_once();
LABEL_257:
          v398 = qword_10177BA00;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v399 = swift_allocObject();
          *(v399 + 16) = xmmword_101385D80;
          *v418 = v41;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v400 = String.init<A>(describing:)();
          v402 = v401;
          *(v399 + 56) = &type metadata for String;
          *(v399 + 64) = sub_100008C00();
          *(v399 + 32) = v400;
          *(v399 + 40) = v402;
          os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v398, "Error deriving advertisementKey: %@", 35, 2, v399);

          sub_1001BAF88();
          v403 = swift_allocError();
          *v404 = 0;
          swift_willThrow();

LABEL_264:
          v476 = 0;
          v477 = 0xE000000000000000;
          _StringGuts.grow(_:)(35);
          v408 = v477;
          *(v0 + 792) = v476;
          *(v0 + 800) = v408;
          v409._object = 0x800000010134CB30;
          v409._countAndFlagsBits = 0xD000000000000021;
          String.append(_:)(v409);
          *(v0 + 952) = v403;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          goto LABEL_208;
        }

        v106 = BYTE6(v52);
        goto LABEL_206;
      }

      if (v56 == 2)
      {
        v61 = *(v48 + 16);
        v41 = *(v48 + 24);
      }

      else
      {
        if (v56 != 1)
        {
          v61 = 0;
          v62 = 0;
          v41 = BYTE6(v52);
          v63 = BYTE6(v52);
          goto LABEL_51;
        }

        v41 = v48 >> 32;
        v61 = v48;
      }

      sub_100017D5C(v48, v52);
      if (v41 < v61)
      {
        goto LABEL_269;
      }

      if (v56 == 2)
      {
        v62 = *(v48 + 16);
        v63 = *(v48 + 24);
      }

      else
      {
        v62 = v48;
        v63 = v48 >> 32;
      }

LABEL_51:
      if (v63 < v61 || v61 < v62)
      {
        goto LABEL_270;
      }

      if (__OFSUB__(v61, v41))
      {
        goto LABEL_271;
      }

      if ((v61 - v41 + 5) >= 6)
      {
        v64 = v41 - 6;
        if (__OFSUB__(v41, 6))
        {
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          swift_once();
LABEL_120:
          v212 = qword_10177BA00;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v213 = swift_allocObject();
          *(v213 + 16) = xmmword_101385D80;
          *v423 = v41;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v214 = String.init<A>(describing:)();
          v216 = v215;
          *(v213 + 56) = &type metadata for String;
          *(v213 + 64) = sub_100008C00();
          *(v213 + 32) = v214;
          *(v213 + 40) = v216;
          os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v212, "Error deriving advertisementKey: %@", 35, 2, v213);

          sub_1001BAF88();
          v217 = swift_allocError();
          *v218 = 0;
          swift_willThrow();

LABEL_207:
          v476 = 0;
          v477 = 0xE000000000000000;
          _StringGuts.grow(_:)(35);
          v277 = v477;
          *(v0 + 776) = v476;
          *(v0 + 784) = v277;
          v278._object = 0x800000010134CB30;
          v278._countAndFlagsBits = 0xD000000000000021;
          String.append(_:)(v278);
          *(v0 + 920) = v217;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
LABEL_208:
          _print_unlocked<A, B>(_:_:)();
          return _assertionFailure(_:_:file:line:flags:)();
        }

        if (v56 == 2)
        {
          v65 = *(v48 + 16);
          v66 = *(v48 + 24);
        }

        else if (v56 == 1)
        {
          v65 = v48;
          v66 = v48 >> 32;
        }

        else
        {
          v65 = 0;
          v66 = BYTE6(v52);
        }

        if (v66 < v64 || v64 < v65)
        {
          goto LABEL_279;
        }

        if (!v56)
        {
          goto LABEL_71;
        }

        if (v56 != 1)
        {
          goto LABEL_72;
        }

        v67 = v48 >> 32;
      }

      else
      {
        if (!v56)
        {
          v64 = 0;
LABEL_71:
          v67 = BYTE6(v52);
          goto LABEL_73;
        }

        if (v56 == 2)
        {
          v64 = *(v48 + 16);
LABEL_72:
          v67 = *(v48 + 24);
          goto LABEL_73;
        }

        v64 = v48;
        v67 = v48 >> 32;
      }

LABEL_73:
      if (v67 < v64)
      {
        goto LABEL_266;
      }

      v459 = v38;
      v68 = *(v0 + 1368);
      v69 = *(v0 + 1360);
      v70 = Data._Representation.subscript.getter();
      v449 = v71;
      v454 = v70;
      sub_100016590(v48, v52);
      sub_100016590(v48, v52);
      v72 = type metadata accessor for EncryptedData();
      v73 = *(v72 - 8);
      (*(v73 + 56))(v68, 1, 1, v72);
      sub_1000D2A70(v68, v69, &qword_1016B9AE8, &unk_1013E35D0);
      v74 = *(v73 + 48);
      v75 = v74(v69, 1, v72);
      v76 = *(v0 + 1360);
      if (v75 == 1)
      {
        sub_10000B3A8(v76, &qword_1016B9AE8, &unk_1013E35D0);
        v442 = 0xF000000000000000;
        v446 = 0;
      }

      else
      {
        v77 = EncryptedData.cipherText.getter();
        v442 = v78;
        v446 = v77;
        (*(v73 + 8))(v76, v72);
      }

      v79 = *(v0 + 1352);
      sub_1000D2A70(*(v0 + 1368), v79, &qword_1016B9AE8, &unk_1013E35D0);
      v80 = v74(v79, 1, v72);
      v81 = *(v0 + 1352);
      if (v80 == 1)
      {
        sub_10000B3A8(*(v0 + 1352), &qword_1016B9AE8, &unk_1013E35D0);
        v439 = 0;
        v82 = 0xF000000000000000;
      }

      else
      {
        v439 = EncryptedData.initializationVector.getter();
        v82 = v83;
        (*(v73 + 8))(v81, v72);
      }

      v84 = *(v0 + 1344);
      sub_1000D2A70(*(v0 + 1368), v84, &qword_1016B9AE8, &unk_1013E35D0);
      v85 = v74(v84, 1, v72);
      v86 = *(v0 + 1368);
      v87 = *(v0 + 1344);
      if (v85 == 1)
      {
        sub_10000B3A8(*(v0 + 1368), &qword_1016B9AE8, &unk_1013E35D0);
        sub_10000B3A8(v87, &qword_1016B9AE8, &unk_1013E35D0);
        v88 = 0;
        v89 = 0xF000000000000000;
      }

      else
      {
        v88 = EncryptedData.tag.getter();
        v89 = v90;
        sub_10000B3A8(v86, &qword_1016B9AE8, &unk_1013E35D0);
        (*(v73 + 8))(v87, v72);
      }

      sub_100018D00(*(v0 + 1016), type metadata accessor for TimeBasedKey);
      v39 = v471;
      *(v0 + 936) = v471;
      v92 = v471[2];
      v91 = v471[3];
      if (v92 >= v91 >> 1)
      {
        sub_101123DD0((v91 > 1), v92 + 1, 1);
        v39 = *v421;
      }

      v41 = 0;
      ++v38;
      v39[2] = v92 + 1;
      v93 = &v39[9 * v92];
      v93[4] = v465;
      v93[5] = v454;
      v93[6] = v449;
      v93[7] = v446;
      v93[8] = v442;
      v93[9] = v439;
      v93[10] = v82;
      v93[11] = v88;
      v93[12] = v89;
      v11 = v432;
      v35 = v424;
      if (v426 == v459 + 1)
      {
        v107 = 0;
        v108 = v434;
        v109 = v39;
        goto LABEL_98;
      }
    }
  }

  v107 = *(v0 + 1896);
  v108 = *(v0 + 1784);
  v109 = _swiftEmptyArrayStorage;
LABEL_98:
  v110 = SymmetricKey256.data.getter();
  v112 = v111;
  v113 = sub_100D11764(v109, v110, v111);
  if (v107)
  {
    v114 = *(v0 + 1880);
    v115 = *(v0 + 1872);
    v116 = *(v0 + 1864);
    v117 = *(v0 + 1856);
    v460 = *(v0 + 1424);
    v118 = *(v0 + 1032);
    v119 = *(v0 + 1926);

    sub_100016590(v110, v112);
    sub_100359088(v115, v114, v119);
    sub_100359088(v117, v116, 1u);
    sub_100018D00(v460, type metadata accessor for KeyDropInterface.KeyAlignment);
    sub_10000B3A8(v118, &unk_1016C8FC0, &unk_10139D7D0);

    goto LABEL_100;
  }

  v160 = v113;
  v435 = v108;
  v161 = *(v0 + 1424);
  v162 = *(v0 + 1256);
  v163 = *(v0 + 1248);
  v164 = *(v475 + 1200);

  sub_100016590(v110, v112);
  sub_100D11DC8(v161, &v162[*(v164 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
  *v162 = 17;
  v165 = *(v164 + 24);
  v0 = v475;
  *&v162[v165] = v160;
  sub_100D11DC8(v162, v163, type metadata accessor for KeyDropInterface.KeyPackage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v167 = *(v475 + 1792);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v167 = sub_100A5BE40(0, v167[2] + 1, 1, v167);
  }

  v169 = v167[2];
  v168 = v167[3];
  if (v169 >= v168 >> 1)
  {
    v167 = sub_100A5BE40((v168 > 1), v169 + 1, 1, v167);
  }

  v170 = *(v475 + 1648);
  v171 = *(v475 + 1256);
  v172 = *(v475 + 1248);
  v173 = *(v475 + 1240);
  v174 = *(v475 + 1208);
  v175 = *(v475 + 960);
  v167[2] = v169 + 1;
  v427 = v167;
  v419 = (*(v174 + 80) + 32) & ~*(v174 + 80);
  v420 = *(v174 + 72);
  sub_100D12974(v172, v167 + v419 + v420 * v169, type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100D11DC8(v175, v170, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v171, v173, type metadata accessor for KeyDropInterface.KeyPackage);
  v176 = Logger.logObject.getter();
  v177 = static os_log_type_t.default.getter();
  v178 = os_log_type_enabled(v176, v177);
  v179 = *(v475 + 1864);
  v180 = *(v475 + 1856);
  v181 = *(v475 + 1648);
  v182 = *(v475 + 1256);
  v183 = *(v475 + 1240);
  if (v178)
  {
    v184 = swift_slowAlloc();
    v476 = swift_slowAlloc();
    *v184 = 136446466;
    v467 = v179;
    v472 = v182;
    v185 = sub_100C71778();
    v187 = v186;
    sub_100018D00(v181, type metadata accessor for SharingCircleKeyManager.Instruction);
    v188 = sub_1000136BC(v185, v187, &v476);

    *(v184 + 4) = v188;
    *(v184 + 12) = 2082;
    v189 = sub_101255410();
    v191 = v190;
    sub_100018D00(v183, type metadata accessor for KeyDropInterface.KeyPackage);
    v192 = sub_1000136BC(v189, v191, &v476);

    *(v184 + 14) = v192;
    _os_log_impl(&_mh_execute_header, v176, v177, "Delegated keys to upload: %{public}s,\nadded: %{public}s.", v184, 0x16u);
    swift_arrayDestroy();

    sub_100359088(v180, v467, 1u);
    v193 = v472;
  }

  else
  {

    sub_100359088(v180, v179, 1u);
    sub_100018D00(v183, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100018D00(v181, type metadata accessor for SharingCircleKeyManager.Instruction);
    v193 = v182;
  }

  sub_100018D00(v193, type metadata accessor for KeyDropInterface.KeyPackage);
  v194 = *(v475 + 1926);
  if (v194 != 1)
  {
    v207 = *(v475 + 1880);
    v208 = *(v475 + 1872);
    v209 = *(v475 + 1424);
    v210 = *(v475 + 1032);

    sub_1001BAEE0();
    swift_allocError();
    *v211 = 4;
    swift_willThrow();
    sub_100359088(v208, v207, v194);
    sub_100018D00(v209, type metadata accessor for KeyDropInterface.KeyAlignment);
    v33 = v210;
    goto LABEL_5;
  }

  v195 = *(v475 + 1872);
  sub_100D11DC8(*(v475 + 960), *(v475 + 1640), type metadata accessor for SharingCircleKeyManager.Instruction);

  v196 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v197 = os_log_type_enabled(v196, v41);
  v198 = *(v475 + 1880);
  v199 = *(v475 + 1872);
  v200 = *(v475 + 1640);
  if (v197)
  {
    v201 = swift_slowAlloc();
    v202 = swift_slowAlloc();
    v476 = v202;
    *v201 = 134218499;
    *(v201 + 4) = *(v195 + 16);
    sub_100359088(v199, v198, 1u);
    *(v201 + 12) = 2160;
    *(v201 + 14) = 1752392040;
    *(v201 + 22) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v203 = dispatch thunk of CustomStringConvertible.description.getter();
    v205 = v204;
    sub_100018D00(v200, type metadata accessor for SharingCircleKeyManager.Instruction);
    v206 = sub_1000136BC(v203, v205, &v476);

    *(v201 + 24) = v206;
    _os_log_impl(&_mh_execute_header, v196, v41, "Uploading secondary keys count %ld for delegated share %{private,mask.hash}s", v201, 0x20u);
    sub_100007BAC(v202);
  }

  else
  {
    sub_100359088(*(v475 + 1872), *(v475 + 1880), 1u);

    sub_100018D00(v200, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v219 = *(v195 + 16);
  if (!v219)
  {
    v0 = v475;
    v437 = *(v475 + 1776);
    v223 = _swiftEmptyArrayStorage;
LABEL_210:
    v279 = SymmetricKey256.data.getter();
    v281 = v280;
    v282 = sub_100D11764(v223, v279, v280);
    v283 = *(v0 + 1424);
    v284 = *(v0 + 1232);
    v285 = *(v0 + 1224);
    v286 = *(v0 + 1200);
    v287 = v282;

    sub_100016590(v279, v281);
    sub_100D11DC8(v283, &v284[*(v286 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
    *v284 = 18;
    *&v284[*(v286 + 24)] = v287;
    sub_100D11DC8(v284, v285, type metadata accessor for KeyDropInterface.KeyPackage);
    v288 = v427;
    v290 = v427[2];
    v289 = v427[3];
    if (v290 >= v289 >> 1)
    {
      v288 = sub_100A5BE40((v289 > 1), v290 + 1, 1, v427);
    }

    v0 = v475;
    v291 = *(v475 + 1632);
    v292 = *(v475 + 1232);
    v293 = *(v475 + 1224);
    v294 = *(v475 + 1216);
    v295 = *(v475 + 960);
    v428 = v288;
    v288[2] = v290 + 1;
    sub_100D12974(v293, v288 + v419 + v290 * v420, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v295, v291, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v292, v294, type metadata accessor for KeyDropInterface.KeyPackage);
    v296 = Logger.logObject.getter();
    v297 = static os_log_type_t.default.getter();
    v298 = os_log_type_enabled(v296, v297);
    v299 = *(v475 + 1880);
    v300 = *(v475 + 1872);
    v48 = *(v475 + 1632);
    v469 = *(v475 + 1424);
    v463 = *(v475 + 1232);
    v301 = *(v475 + 1216);
    v302 = &unk_10138B000;
    v303 = *(v475 + 1032);
    if (v298)
    {
      v304 = swift_slowAlloc();
      v476 = swift_slowAlloc();
      *v304 = 136446466;
      v305 = sub_100C71778();
      v457 = v303;
      v307 = v306;
      sub_100018D00(v48, type metadata accessor for SharingCircleKeyManager.Instruction);
      v308 = sub_1000136BC(v305, v307, &v476);

      *(v304 + 4) = v308;
      *(v304 + 12) = 2082;
      v309 = sub_101255410();
      v311 = v310;
      v48 = type metadata accessor for KeyDropInterface.KeyPackage;
      sub_100018D00(v301, type metadata accessor for KeyDropInterface.KeyPackage);
      v312 = v309;
      v302 = &unk_10138B000;
      v313 = sub_1000136BC(v312, v311, &v476);

      *(v304 + 14) = v313;
      _os_log_impl(&_mh_execute_header, v296, v297, "Delegated keys to upload: %{public}s,\nadded: %{public}s.", v304, 0x16u);
      swift_arrayDestroy();

      sub_100359088(v300, v299, 1u);
      sub_100018D00(v463, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v469, type metadata accessor for KeyDropInterface.KeyAlignment);
      v314 = v457;
    }

    else
    {

      sub_100359088(v300, v299, 1u);
      sub_100018D00(v301, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v48, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v463, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v469, type metadata accessor for KeyDropInterface.KeyAlignment);
      v314 = v303;
    }

    sub_10000B3A8(v314, &unk_1016C8FC0, &unk_10139D7D0);
    v328 = *(v475 + 1808);
    v329 = (*(v475 + 1800) - 1) & *(v475 + 1800);
    *(v475 + 1784) = v435;
    *(v475 + 1776) = v437;
    v330 = (v438 + 1151);
    v41 = 1;
    v331 = xmmword_101385D80;
    *&v332 = v302[129];
    v333 = v428;
LABEL_226:
    *(v0 + 1792) = v333;
    while (v329)
    {
      v334 = *(v0 + 1768);
LABEL_233:
      *(v0 + 1808) = v328;
      *(v0 + 1800) = v329;
      v336 = *(*(v334 + 48) + (__clz(__rbit64(v329)) | (v328 << 6)));
      *(v0 + 1924) = v336;
      if (v336 == 17)
      {
        goto LABEL_272;
      }

      if (v336 == 15)
      {
        v415 = swift_task_alloc();
        *(v0 + 1816) = v415;
        *v415 = v0;
        v415[1] = sub_100CAD67C;
        v416 = *(v0 + 1592);

        return sub_100CF83A4(v0 + 304, v416);
      }

      v329 &= v329 - 1;
      if (v336 == 14)
      {
        v458 = v332;
        v464 = v331;
        v470 = v330;
        v429 = v333;
        v451 = *(v0 + 1760);
        v337 = *(v0 + 1752);
        v338 = *(v0 + 1408);
        v339 = *(v0 + 1400);
        v340 = type metadata accessor for EncryptedData();
        v341 = *(v340 - 8);
        (*(v341 + 56))(v338, 1, 1, v340);
        sub_1000D2A70(v338, v339, &qword_1016B9AE8, &unk_1013E35D0);
        v342 = v339;
        v343 = *(v341 + 48);
        LODWORD(v338) = v343(v342, 1, v340);
        sub_10002E98C(v337, v451);
        v344 = *(v0 + 1400);
        if (v338 == 1)
        {
          sub_10000B3A8(*(v0 + 1400), &qword_1016B9AE8, &unk_1013E35D0);
          v448 = 0xF000000000000000;
          v452 = 0;
        }

        else
        {
          v345 = EncryptedData.cipherText.getter();
          v448 = v346;
          v452 = v345;
          (*(v341 + 8))(v344, v340);
        }

        v347 = *(v0 + 1392);
        sub_1000D2A70(*(v0 + 1408), v347, &qword_1016B9AE8, &unk_1013E35D0);
        v348 = v343(v347, 1, v340);
        v349 = *(v0 + 1392);
        if (v348 == 1)
        {
          sub_10000B3A8(*(v0 + 1392), &qword_1016B9AE8, &unk_1013E35D0);
          v441 = 0xF000000000000000;
          v444 = 0;
        }

        else
        {
          v350 = EncryptedData.initializationVector.getter();
          v441 = v351;
          v444 = v350;
          (*(v341 + 8))(v349, v340);
        }

        v352 = *(v0 + 1384);
        sub_1000D2A70(*(v0 + 1408), v352, &qword_1016B9AE8, &unk_1013E35D0);
        v353 = v343(v352, 1, v340);
        v354 = *(v0 + 1408);
        v355 = *(v0 + 1384);
        if (v353 == 1)
        {
          sub_10000B3A8(*(v0 + 1408), &qword_1016B9AE8, &unk_1013E35D0);
          sub_10000B3A8(v355, &qword_1016B9AE8, &unk_1013E35D0);
          v356 = 0;
          v357 = 0xF000000000000000;
        }

        else
        {
          v356 = EncryptedData.tag.getter();
          v357 = v358;
          sub_10000B3A8(v354, &qword_1016B9AE8, &unk_1013E35D0);
          (*(v341 + 8))(v355, v340);
        }

        v359 = *(v0 + 1432);
        v360 = *(v0 + 1304);
        v361 = *(v0 + 1296);
        v362 = *(v475 + 1200);
        *(v475 + 88) = 1;
        *(v475 + 96) = *v470;
        *(v475 + 112) = v452;
        *(v475 + 120) = v448;
        *(v475 + 128) = v444;
        *(v475 + 136) = v441;
        *(v475 + 144) = v356;
        *(v475 + 152) = v357;
        sub_100D11DC8(v359, &v360[*(v362 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v363 = swift_allocObject();
        v364 = *(v475 + 120);
        *(v363 + 48) = *(v475 + 104);
        *(v363 + 64) = v364;
        *(v363 + 80) = *(v475 + 136);
        *(v363 + 96) = *(v475 + 152);
        v365 = *(v475 + 88);
        *(v363 + 16) = v464;
        *(v363 + 32) = v365;
        *v360 = 14;
        v366 = *(v362 + 24);
        v0 = v475;
        *&v360[v366] = v363;
        sub_100D11DC8(v360, v361, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_1003914F8(v0 + 88, v0 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v429 = sub_100A5BE40(0, v429[2] + 1, 1, v429);
        }

        v367 = v429;
        v369 = v429[2];
        v368 = v429[3];
        if (v369 >= v368 >> 1)
        {
          v367 = sub_100A5BE40((v368 > 1), v369 + 1, 1, v429);
        }

        v370 = *(v475 + 1672);
        v371 = *(v475 + 1304);
        v372 = *(v475 + 1296);
        v373 = *(v475 + 1288);
        v374 = *(v475 + 1208);
        v375 = *(v475 + 960);
        v367[2] = v369 + 1;
        v430 = v367;
        sub_100D12974(v372, v367 + ((*(v374 + 80) + 32) & ~*(v374 + 80)) + *(v374 + 72) * v369, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v375, v370, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v371, v373, type metadata accessor for KeyDropInterface.KeyPackage);
        v376 = Logger.logObject.getter();
        v377 = static os_log_type_t.default.getter();
        v378 = os_log_type_enabled(v376, v377);
        v48 = *(v475 + 1672);
        v379 = *(v475 + 1304);
        v380 = *(v475 + 1288);
        if (v378)
        {
          v381 = swift_slowAlloc();
          v476 = swift_slowAlloc();
          *v381 = v458;
          v445 = v377;
          v382 = sub_100C71778();
          v453 = v379;
          v384 = v383;
          sub_100018D00(v48, type metadata accessor for SharingCircleKeyManager.Instruction);
          v385 = sub_1000136BC(v382, v384, &v476);

          *(v381 + 4) = v385;
          *(v381 + 12) = 2082;
          v386 = sub_101255410();
          v388 = v387;
          v48 = type metadata accessor for KeyDropInterface.KeyPackage;
          sub_100018D00(v380, type metadata accessor for KeyDropInterface.KeyPackage);
          v389 = sub_1000136BC(v386, v388, &v476);

          *(v381 + 14) = v389;
          _os_log_impl(&_mh_execute_header, v376, v445, "Delegated keys to upload: %{public}s,\nadded: %{public}s.", v381, 0x16u);
          swift_arrayDestroy();

          sub_100391554(v475 + 88);
          sub_100018D00(v453, type metadata accessor for KeyDropInterface.KeyPackage);
          v332 = v458;
          v331 = v464;
          v333 = v430;
          v330 = v470;
        }

        else
        {

          sub_100391554(v475 + 88);
          sub_100018D00(v380, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v48, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v379, type metadata accessor for KeyDropInterface.KeyPackage);
          v333 = v430;
          v330 = v470;
          v332 = v458;
          v331 = v464;
        }

        goto LABEL_226;
      }
    }

    while (1)
    {
      v335 = v328 + 1;
      if (__OFADD__(v328, 1))
      {
        goto LABEL_284;
      }

      v334 = *(v0 + 1768);
      if (v335 >= (((1 << *(v0 + 1923)) + 63) >> 6))
      {
        v431 = v333;
        v390 = *(v0 + 1592);
        v391 = *(v0 + 1520);
        v392 = *(v0 + 1504);
        v393 = *(v0 + 1464);
        v394 = *(v0 + 1456);
        v395 = *(v0 + 1448);
        v396 = *(v0 + 1432);
        sub_100006654(*(v0 + 1752), *(v0 + 1760));
        sub_100018D00(v396, type metadata accessor for KeyDropInterface.KeyAlignment);
        (*(v394 + 8))(v393, v395);
        sub_100018D00(v392, type metadata accessor for KeyDropJoinToken);
        sub_100018D00(v390, type metadata accessor for OwnedBeaconRecord);

        sub_100018D00(v391, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

        v397 = *(v0 + 8);

        return v397(v431);
      }

      v329 = *(v334 + 8 * v335 + 56);
      ++v328;
      if (v329)
      {
        v328 = v335;
        goto LABEL_233;
      }
    }
  }

  v440 = (v475 + 1908);
  v220 = (v475 + 896);
  v418 = (v475 + 904);
  v48 = v475 + 912;
  v221 = *(v475 + 1000);
  *(v475 + 912) = _swiftEmptyArrayStorage;
  sub_101123DD0(0, v219, 0);
  v222 = 0;
  v223 = *(v475 + 912);
  v224 = *(v221 + 80);
  v0 = v475;
  v433 = v195 + ((v224 + 32) & ~v224);
  v437 = *(v475 + 1776);
  v423 = (v475 + 896);
  v425 = v195;
  v422 = v219;
  while (1)
  {
    if (v222 >= *(v195 + 16))
    {
      goto LABEL_285;
    }

    v225 = *(v0 + 1008);
    v226 = *(v0 + 1000);
    v227 = *(v0 + 992);
    v473 = v222;
    sub_100D11DC8(v433 + *(v226 + 72) * v222, v225, type metadata accessor for TimeBasedKey);
    v228 = *v225;
    sub_100A7A194(*(v225 + *(v227 + 24) + 16), *(v225 + *(v227 + 24) + 24), 0, 0);
    v462 = v228;
    v468 = v223;
    *v220 = 57;
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v229 = __DataStorage.init(length:)();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v0 = v475;
    }

    else
    {

      v230 = __DataStorage._bytes.getter();
      v0 = v475;
      if (v230)
      {
        v41 = v230;
        v48 = v229;
        if (__OFSUB__(0, __DataStorage._offset.getter()))
        {
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
LABEL_299:
          __break(1u);
          goto LABEL_300;
        }
      }

      swift_allocObject();
      v231 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v229 = v231;
    }

    result = __DataStorage._bytes.getter();
    if (!result)
    {
      goto LABEL_304;
    }

    v48 = v229;
    v232 = __DataStorage._offset.getter();
    v41 = -v232;
    if (__OFSUB__(0, v232))
    {
      goto LABEL_287;
    }

    v48 = v229;
    __DataStorage._length.getter();
    v41 = CCECCryptorExportKey();

    if (v41)
    {
      v315 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v316 = *(v0 + 976);
      v317 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v318 = swift_allocObject();
      *(v318 + 16) = xmmword_101385D80;
      *(v318 + 56) = &type metadata for Int32;
      *(v318 + 64) = &protocol witness table for Int32;
      *(v318 + 32) = v41;
      os_log(_:dso:log:_:_:)(v315, &_mh_execute_header, v317, "Error running CCECCryptorExportKey. Code: %d.", v417);

      CryptoError.init(rawValue:)();
      v319 = type metadata accessor for CryptoError();
      sub_100D13BF8(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
      v320 = swift_allocError();
      v322 = v321;
      v323 = *(v319 - 8);
      v324 = *(v323 + 48);
      v325 = v324(v316, 1, v319);
      v326 = *(v0 + 976);
      if (v325 == 1)
      {
        (*(v323 + 104))(v322, enum case for CryptoError.unspecifiedError(_:), v319);
        if (v324(v326, 1, v319) != 1)
        {
          sub_10000B3A8(*(v0 + 976), &qword_10169C9A0, &unk_1013D5A40);
        }
      }

      else
      {
        (*(v323 + 32))(v322, *(v0 + 976), v319);
      }

      swift_willThrow();
      v41 = v320;

      v48 = static os_log_type_t.error.getter();
      if (qword_101694BE0 == -1)
      {
        goto LABEL_257;
      }

      goto LABEL_301;
    }

    v233 = *v220;
    if ((*v220 & 0x8000000000000000) != 0)
    {
      goto LABEL_288;
    }

    if (v233 >= 0x39)
    {
      v234 = 57;
    }

    else
    {
      v234 = *v220;
    }

    if (!v233)
    {

      CCECCryptorRelease();
      v48 = 0;
      v327 = 0;
      v235 = 0xC000000000000000;
LABEL_263:
      sub_100018350();
      v403 = swift_allocError();
      *v407 = 28;
      *(v407 + 8) = v327;
      *(v407 + 16) = 0;
      swift_willThrow();
      sub_100016590(v48, v235);
      goto LABEL_264;
    }

    if (v233 <= 0xE)
    {
      *(v475 + 1914) = 0;
      *v440 = 0;
      *(v0 + 1922) = v234;

      v236 = __DataStorage._bytes.getter();
      if (v236)
      {
        v41 = v236;
        v48 = v229;
        v237 = __DataStorage._offset.getter();
        if (__OFSUB__(0, v237))
        {
          goto LABEL_299;
        }

        v41 -= v237;
        __DataStorage._length.getter();
        if (v41)
        {
          memcpy(v440, v41, v234);
        }
      }

      else
      {
        __DataStorage._length.getter();
      }

      v48 = *v440;
      v238 = *(v438 + 1315) | ((*(v438 + 1319) | (*(v438 + 1321) << 16)) << 32);

      v235 = v437 & 0xF00000000000000 | v238;
      v437 = v235;
      v0 = v475;
    }

    else
    {
      v48 = v234 << 32;
      v235 = v229 | 0x4000000000000000;
    }

    result = CCECCryptorRelease();
    v239 = v235 >> 62;
    if ((v235 >> 62) > 1)
    {
      if (v239 != 2)
      {
        v327 = 0;
        goto LABEL_263;
      }

      v242 = *(v48 + 16);
      v241 = *(v48 + 24);
      v60 = __OFSUB__(v241, v242);
      v240 = v241 - v242;
      if (v60)
      {
        goto LABEL_297;
      }
    }

    else if (v239)
    {
      LODWORD(v240) = HIDWORD(v48) - v48;
      if (__OFSUB__(HIDWORD(v48), v48))
      {
        goto LABEL_298;
      }

      v240 = v240;
    }

    else
    {
      v240 = BYTE6(v235);
    }

    if (v240 != 28)
    {
      break;
    }

    if (v239 == 2)
    {
      v94 = *(v48 + 16);
      v41 = *(v48 + 24);
    }

    else
    {
      if (v239 != 1)
      {
        v94 = 0;
        v243 = 0;
        v41 = BYTE6(v235);
        v244 = BYTE6(v235);
        goto LABEL_165;
      }

      v41 = v48 >> 32;
      v94 = v48;
    }

    sub_100017D5C(v48, v235);
    if (v41 < v94)
    {
      goto LABEL_289;
    }

    if (v239 == 2)
    {
      v243 = *(v48 + 16);
      v244 = *(v48 + 24);
    }

    else
    {
      v243 = v48;
      v244 = v48 >> 32;
    }

LABEL_165:
    if (v244 < v94 || v94 < v243)
    {
      goto LABEL_290;
    }

    if (__OFSUB__(v94, v41))
    {
      goto LABEL_291;
    }

    if ((v94 - v41 + 5) >= 6)
    {
      v245 = v41 - 6;
      if (__OFSUB__(v41, 6))
      {
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        swift_once();
LABEL_90:
        v95 = *(v0 + 984);
        v96 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v97 = swift_allocObject();
        *(v97 + 16) = xmmword_101385D80;
        *(v97 + 56) = &type metadata for Int32;
        *(v97 + 64) = &protocol witness table for Int32;
        *(v97 + 32) = v41;
        os_log(_:dso:log:_:_:)(v94, &_mh_execute_header, v96, "Error running CCECCryptorExportKey. Code: %d.", v417);

        CryptoError.init(rawValue:)();
        v98 = type metadata accessor for CryptoError();
        sub_100D13BF8(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
        v99 = swift_allocError();
        v101 = v100;
        v102 = *(v98 - 8);
        v103 = *(v102 + 48);
        v104 = v103(v95, 1, v98);
        v105 = *(v0 + 984);
        if (v104 == 1)
        {
          (*(v102 + 104))(v101, enum case for CryptoError.unspecifiedError(_:), v98);
          if (v103(v105, 1, v98) != 1)
          {
            sub_10000B3A8(*(v0 + 984), &qword_10169C9A0, &unk_1013D5A40);
          }
        }

        else
        {
          (*(v102 + 32))(v101, *(v0 + 984), v98);
        }

        swift_willThrow();
        v41 = v99;

LABEL_119:
        v48 = static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          goto LABEL_292;
        }

        goto LABEL_120;
      }

      if (v239 == 2)
      {
        v246 = *(v48 + 16);
        v247 = *(v48 + 24);
      }

      else if (v239 == 1)
      {
        v246 = v48;
        v247 = v48 >> 32;
      }

      else
      {
        v246 = 0;
        v247 = BYTE6(v235);
      }

      if (v247 < v245 || v245 < v246)
      {
        goto LABEL_294;
      }

      if (!v239)
      {
        goto LABEL_185;
      }

      if (v239 != 1)
      {
        goto LABEL_186;
      }

      v248 = v48 >> 32;
    }

    else
    {
      if (!v239)
      {
        v245 = 0;
LABEL_185:
        v248 = BYTE6(v235);
        goto LABEL_187;
      }

      if (v239 == 2)
      {
        v245 = *(v48 + 16);
LABEL_186:
        v248 = *(v48 + 24);
        goto LABEL_187;
      }

      v245 = v48;
      v248 = v48 >> 32;
    }

LABEL_187:
    if (v248 < v245)
    {
      goto LABEL_286;
    }

    v249 = *(v0 + 1336);
    v250 = *(v0 + 1328);
    v251 = Data._Representation.subscript.getter();
    v450 = v252;
    v456 = v251;
    sub_100016590(v48, v235);
    sub_100016590(v48, v235);
    v253 = type metadata accessor for EncryptedData();
    v254 = *(v253 - 8);
    (*(v254 + 56))(v249, 1, 1, v253);
    sub_1000D2A70(v249, v250, &qword_1016B9AE8, &unk_1013E35D0);
    v255 = *(v254 + 48);
    v256 = v255(v250, 1, v253);
    v257 = *(v0 + 1328);
    if (v256 == 1)
    {
      sub_10000B3A8(*(v0 + 1328), &qword_1016B9AE8, &unk_1013E35D0);
      v443 = 0xF000000000000000;
      v447 = 0;
    }

    else
    {
      v258 = EncryptedData.cipherText.getter();
      v443 = v259;
      v447 = v258;
      (*(v254 + 8))(v257, v253);
    }

    v260 = *(v0 + 1320);
    sub_1000D2A70(*(v0 + 1336), v260, &qword_1016B9AE8, &unk_1013E35D0);
    v261 = v255(v260, 1, v253);
    v262 = *(v0 + 1320);
    if (v261 == 1)
    {
      sub_10000B3A8(*(v0 + 1320), &qword_1016B9AE8, &unk_1013E35D0);
      v263 = 0;
      v264 = 0xF000000000000000;
    }

    else
    {
      v263 = EncryptedData.initializationVector.getter();
      v264 = v265;
      (*(v254 + 8))(v262, v253);
    }

    v266 = *(v0 + 1312);
    sub_1000D2A70(*(v0 + 1336), v266, &qword_1016B9AE8, &unk_1013E35D0);
    v267 = v255(v266, 1, v253);
    v268 = *(v0 + 1336);
    v48 = *(v0 + 1312);
    if (v267 == 1)
    {
      sub_10000B3A8(*(v0 + 1336), &qword_1016B9AE8, &unk_1013E35D0);
      sub_10000B3A8(v48, &qword_1016B9AE8, &unk_1013E35D0);
      v269 = 0;
      v41 = 0xF000000000000000;
    }

    else
    {
      v269 = EncryptedData.tag.getter();
      v41 = v270;
      sub_10000B3A8(v268, &qword_1016B9AE8, &unk_1013E35D0);
      (*(v254 + 8))(v48, v253);
    }

    sub_100018D00(*(v0 + 1008), type metadata accessor for TimeBasedKey);
    v223 = v468;
    *(v0 + 912) = v468;
    v272 = v468[2];
    v271 = v468[3];
    if (v272 >= v271 >> 1)
    {
      v48 = v475 + 912;
      sub_101123DD0((v271 > 1), v272 + 1, 1);
      v223 = *(v475 + 912);
    }

    v222 = v473 + 1;
    v223[2] = v272 + 1;
    v273 = &v223[9 * v272];
    v273[4] = v462;
    v273[5] = v456;
    v273[6] = v450;
    v273[7] = v447;
    v273[8] = v443;
    v273[9] = v263;
    v273[10] = v264;
    v273[11] = v269;
    v273[12] = v41;
    v220 = (v475 + 896);
    v195 = v425;
    if (v422 == v473 + 1)
    {
      goto LABEL_210;
    }
  }

  if (v239 == 2)
  {
    v406 = *(v48 + 16);
    v405 = *(v48 + 24);
    v327 = v405 - v406;
    if (!__OFSUB__(v405, v406))
    {
      goto LABEL_263;
    }

    __break(1u);
    goto LABEL_262;
  }

  if (v239 != 1)
  {
LABEL_262:
    v327 = BYTE6(v235);
    goto LABEL_263;
  }

  if (!__OFSUB__(HIDWORD(v48), v48))
  {
    v327 = HIDWORD(v48) - v48;
    goto LABEL_263;
  }

  __break(1u);
LABEL_304:
  __break(1u);
  return result;
}

uint64_t sub_100CB3A20()
{
  sub_100018D00(*(v0 + 1592), type metadata accessor for OwnedBeaconRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CB3E30()
{
  v45 = v0;
  v1 = *(v0 + 1616);
  v2 = *(v0 + 1608);
  v3 = *(v0 + 960);
  sub_100D11DC8(v3, *(v0 + 1624), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v40 = v5;
    v6 = *(v0 + 1624);
    v7 = *(v0 + 1616);
    v41 = *(v0 + 1608);
    v8 = *(v0 + 1924);
    v9 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v9 = 136447747;
    v10 = sub_100C71778();
    v12 = v11;
    sub_100018D00(v6, type metadata accessor for SharingCircleKeyManager.Instruction);
    v13 = sub_1000136BC(v10, v12, v44);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = sub_10125403C(v8);
    v16 = sub_1000136BC(v14, v15, v44);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2160;
    *(v9 + 24) = 1752392040;
    *(v9 + 32) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, v44);

    *(v9 + 34) = v20;
    *(v9 + 42) = 2160;
    *(v9 + 44) = 1752392040;
    *(v9 + 52) = 2081;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v41, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v44);

    *(v9 + 54) = v24;
    *(v9 + 62) = 2082;
    swift_getErrorValue();
    v25 = Error.localizedDescription.getter();
    v27 = sub_1000136BC(v25, v26, v44);

    *(v9 + 64) = v27;
    _os_log_impl(&_mh_execute_header, v4, v40, "Delegated keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v9, 0x48u);
    swift_arrayDestroy();
  }

  else
  {
    v28 = *(v0 + 1624);
    v29 = *(v0 + 1616);
    v30 = *(v0 + 1608);

    sub_100018D00(v30, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v29, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v28, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v31 = *(v0 + 1760);
  v32 = *(v0 + 1752);
  v42 = *(v0 + 1592);
  v43 = *(v0 + 1520);
  v33 = *(v0 + 1504);
  v34 = *(v0 + 1464);
  v35 = *(v0 + 1456);
  v36 = *(v0 + 1448);
  v37 = *(v0 + 1432);
  swift_willThrow();

  sub_100006654(v32, v31);
  sub_100018D00(v37, type metadata accessor for KeyDropInterface.KeyAlignment);
  (*(v35 + 8))(v34, v36);
  sub_100018D00(v33, type metadata accessor for KeyDropJoinToken);
  sub_100018D00(v42, type metadata accessor for OwnedBeaconRecord);
  sub_100018D00(v43, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_100CB4648()
{
  v45 = v0;
  sub_100007BAC((v0 + 616));
  v1 = *(v0 + 1616);
  v2 = *(v0 + 1608);
  v3 = *(v0 + 960);
  sub_100D11DC8(v3, *(v0 + 1624), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v40 = v5;
    v6 = *(v0 + 1624);
    v7 = *(v0 + 1616);
    v41 = *(v0 + 1608);
    v8 = *(v0 + 1924);
    v9 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v9 = 136447747;
    v10 = sub_100C71778();
    v12 = v11;
    sub_100018D00(v6, type metadata accessor for SharingCircleKeyManager.Instruction);
    v13 = sub_1000136BC(v10, v12, v44);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = sub_10125403C(v8);
    v16 = sub_1000136BC(v14, v15, v44);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2160;
    *(v9 + 24) = 1752392040;
    *(v9 + 32) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, v44);

    *(v9 + 34) = v20;
    *(v9 + 42) = 2160;
    *(v9 + 44) = 1752392040;
    *(v9 + 52) = 2081;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v41, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v44);

    *(v9 + 54) = v24;
    *(v9 + 62) = 2082;
    swift_getErrorValue();
    v25 = Error.localizedDescription.getter();
    v27 = sub_1000136BC(v25, v26, v44);

    *(v9 + 64) = v27;
    _os_log_impl(&_mh_execute_header, v4, v40, "Delegated keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v9, 0x48u);
    swift_arrayDestroy();
  }

  else
  {
    v28 = *(v0 + 1624);
    v29 = *(v0 + 1616);
    v30 = *(v0 + 1608);

    sub_100018D00(v30, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v29, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v28, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v31 = *(v0 + 1760);
  v32 = *(v0 + 1752);
  v42 = *(v0 + 1592);
  v43 = *(v0 + 1520);
  v33 = *(v0 + 1504);
  v34 = *(v0 + 1464);
  v35 = *(v0 + 1456);
  v36 = *(v0 + 1448);
  v37 = *(v0 + 1432);
  swift_willThrow();

  sub_100006654(v32, v31);
  sub_100018D00(v37, type metadata accessor for KeyDropInterface.KeyAlignment);
  (*(v35 + 8))(v34, v36);
  sub_100018D00(v33, type metadata accessor for KeyDropJoinToken);
  sub_100018D00(v42, type metadata accessor for OwnedBeaconRecord);
  sub_100018D00(v43, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_100CB4E68()
{
  v45 = v0;
  sub_100007BAC((v0 + 656));
  v1 = *(v0 + 1616);
  v2 = *(v0 + 1608);
  v3 = *(v0 + 960);
  sub_100D11DC8(v3, *(v0 + 1624), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v3, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v40 = v5;
    v6 = *(v0 + 1624);
    v7 = *(v0 + 1616);
    v41 = *(v0 + 1608);
    v8 = *(v0 + 1924);
    v9 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v9 = 136447747;
    v10 = sub_100C71778();
    v12 = v11;
    sub_100018D00(v6, type metadata accessor for SharingCircleKeyManager.Instruction);
    v13 = sub_1000136BC(v10, v12, v44);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = sub_10125403C(v8);
    v16 = sub_1000136BC(v14, v15, v44);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2160;
    *(v9 + 24) = 1752392040;
    *(v9 + 32) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100018D00(v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, v44);

    *(v9 + 34) = v20;
    *(v9 + 42) = 2160;
    *(v9 + 44) = 1752392040;
    *(v9 + 52) = 2081;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v41, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v44);

    *(v9 + 54) = v24;
    *(v9 + 62) = 2082;
    swift_getErrorValue();
    v25 = Error.localizedDescription.getter();
    v27 = sub_1000136BC(v25, v26, v44);

    *(v9 + 64) = v27;
    _os_log_impl(&_mh_execute_header, v4, v40, "Delegated keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v9, 0x48u);
    swift_arrayDestroy();
  }

  else
  {
    v28 = *(v0 + 1624);
    v29 = *(v0 + 1616);
    v30 = *(v0 + 1608);

    sub_100018D00(v30, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v29, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v28, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v31 = *(v0 + 1760);
  v32 = *(v0 + 1752);
  v42 = *(v0 + 1592);
  v43 = *(v0 + 1520);
  v33 = *(v0 + 1504);
  v34 = *(v0 + 1464);
  v35 = *(v0 + 1456);
  v36 = *(v0 + 1448);
  v37 = *(v0 + 1432);
  swift_willThrow();

  sub_100006654(v32, v31);
  sub_100018D00(v37, type metadata accessor for KeyDropInterface.KeyAlignment);
  (*(v35 + 8))(v34, v36);
  sub_100018D00(v33, type metadata accessor for KeyDropJoinToken);
  sub_100018D00(v42, type metadata accessor for OwnedBeaconRecord);
  sub_100018D00(v43, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_100CB5688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v5 = type metadata accessor for UUID();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v7 = type metadata accessor for DateInterval();
  v4[32] = v7;
  v4[33] = *(v7 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[37] = v8;
  *v8 = v4;
  v8[1] = sub_100CB5864;

  return daemon.getter();
}

uint64_t sub_100CB5864(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 304) = a1;

  v3 = swift_task_alloc();
  *(v2 + 312) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100D13BF8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D13BF8(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100CB5A40;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100CB5A40(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v5 = sub_100CB7110;
  }

  else
  {

    v5 = sub_100CB5B80;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100CB5B80()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[21];
  v5 = v0[22];
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074BF4(v0[17]);

  v6 = *(type metadata accessor for SharingCircleKeyManager.Instruction(0) + 48);
  v7 = *(v3 + 16);
  v0[42] = v7;
  v0[43] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5 + v6, v2);
  DateInterval.init(start:duration:)();
  v9 = v4[3];
  v8 = v4[4];
  sub_1000035D0(v4, v9);
  (*(*(*(v8 + 8) + 8) + 32))(v9);
  v10 = swift_task_alloc();
  v0[44] = v10;
  *v10 = v0;
  v10[1] = sub_100CB5D60;
  v11 = v0[36];
  v12 = v0[26];

  return sub_1010D07D0((v0 + 12), v12, v11);
}

uint64_t sub_100CB5D60()
{
  v2 = *v1;

  v3 = v2[26];
  v4 = v2[25];
  v5 = v2[24];
  v6 = v2[23];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v7 = sub_100CB7424;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v7 = sub_100CB5F0C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100CB5F0C()
{
  *(v0 + 360) = *(v0 + 112);
  if (*(v0 + 128))
  {
    v1 = *(v0 + 336);
    v2 = *(v0 + 240);
    v3 = *(v0 + 232);
    v4 = *(v0 + 216);
    v5 = *(v0 + 184);
    static Date.trustedNow.getter(v2);
    Date.addingTimeInterval(_:)();
    v1(v3, v2, v4);
    DateInterval.init(start:end:)();
    *(v0 + 488) = *(v5 + 120);
    v6 = swift_task_alloc();
    *(v0 + 496) = v6;
    *v6 = v0;
    v6[1] = sub_100CB6C28;
    v7 = *(v0 + 280);
    v8 = *(v0 + 168);

    return sub_100E725BC(v8, v7, 0, 1, 0);
  }

  else
  {
    v10 = *(v0 + 184);
    *(v0 + 376) = vextq_s8(*(v0 + 96), *(v0 + 96), 8uLL);
    v11 = *(v10 + 120);
    *(v0 + 392) = v11;

    return _swift_task_switch(sub_100CB6090, v11, 0);
  }
}

uint64_t sub_100CB6090()
{

  v1 = swift_task_alloc();
  v0[50] = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  v0[51] = v2;
  *v1 = v0;
  v1[1] = sub_100CB6174;
  v3 = v0[49];

  return unsafeBlocking<A>(context:_:)(v0 + 18, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_100CB6174()
{
  v1 = *(*v0 + 392);

  return _swift_task_switch(sub_100CB628C, v1, 0);
}

uint64_t sub_100CB628C()
{
  v0[52] = v0[18];
  v1 = swift_task_alloc();
  v0[53] = v1;
  *v1 = v0;
  v1[1] = sub_100CB6338;
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[21];

  return sub_100731BF4(v4, v2, v3, 0, 0, 0);
}

uint64_t sub_100CB6338(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 432) = a1;
  *(v5 + 440) = a2;
  *(v5 + 129) = a3;
  *(v5 + 448) = v3;

  if (v3)
  {
    v6 = *(v5 + 392);
    v7 = sub_100CB683C;
  }

  else
  {
    v8 = *(v5 + 392);

    v7 = sub_100CB6468;
    v6 = v8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100CB6468()
{

  v1 = swift_task_alloc();
  v0[57] = v1;
  *v1 = v0;
  v1[1] = sub_100CB6540;
  v2 = v0[51];
  v3 = v0[49];

  return unsafeBlocking<A>(context:_:)(v0 + 19, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_100CB6540()
{
  v1 = *(*v0 + 392);

  return _swift_task_switch(sub_100CB6658, v1, 0);
}

uint64_t sub_100CB6658()
{
  v0[58] = v0[19];
  v1 = swift_task_alloc();
  v0[59] = v1;
  *v1 = v0;
  v1[1] = sub_100CB6704;
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[21];

  return sub_100731BF4(v4, v2, v3, 1, 0, 0);
}

uint64_t sub_100CB6704(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 48) = v3;
  *(v5 + 40) = a3;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 16) = v4;
  *(v5 + 480) = v3;

  if (v3)
  {
    v6 = *(v5 + 392);
    v7 = sub_100CB6AB8;
  }

  else
  {
    v8 = *(v5 + 184);

    v7 = sub_100CB698C;
    v6 = v8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100CB683C()
{
  v1 = *(v0 + 184);

  return _swift_task_switch(sub_100CB68A8, v1, 0);
}

uint64_t sub_100CB68A8()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[33];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100CB698C()
{
  v1 = *(v0 + 264);

  v10 = *(v0 + 40);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v7 = *(v0 + 129);
  v5 = *(v0 + 432);
  v6 = *(v0 + 440);
  v2 = *(v0 + 160);
  (*(v1 + 8))(*(v0 + 288), *(v0 + 256));

  *v2 = v5;
  *(v2 + 8) = v6;
  *(v2 + 16) = v7;
  *(v2 + 24) = v8;
  *(v2 + 32) = v9;
  *(v2 + 40) = v10;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100CB6AB8()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v3 = *(v0 + 184);
  v4 = *(v0 + 129);

  sub_100359088(v1, v2, v4);

  return _swift_task_switch(sub_100CB6B44, v3, 0);
}

uint64_t sub_100CB6B44()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[33];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100CB6C28(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *v4;
  *(v6 + 504) = a1;
  *(v6 + 512) = a2;
  *(v6 + 130) = a3;
  *(v6 + 520) = v3;

  v7 = *(v5 + 184);
  if (v3)
  {
    v8 = sub_100CB71D4;
  }

  else
  {
    v8 = sub_100CB6D64;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100CB6D64()
{
  (*(v0 + 336))(*(v0 + 248), *(v0 + 240), *(v0 + 216));
  Date.addingTimeInterval(_:)();
  DateInterval.init(start:end:)();
  v1 = swift_task_alloc();
  *(v0 + 528) = v1;
  *v1 = v0;
  v1[1] = sub_100CB6E58;
  v2 = *(v0 + 272);
  v3 = *(v0 + 168);

  return sub_100E725BC(v3, v2, 1, 1, 0);
}

uint64_t sub_100CB6E58(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 88) = v3;
  *(v5 + 80) = a3;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  *(v5 + 56) = v4;
  *(v5 + 536) = v3;

  if (v3)
  {
    v6 = *(v5 + 184);
    sub_100359088(*(v5 + 504), *(v5 + 512), *(v5 + 130));
    v7 = sub_100CB72EC;
    v8 = v6;
  }

  else
  {
    v8 = *(v5 + 184);
    v7 = sub_100CB6F94;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100CB6F94()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 240);
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);

  v8 = *(v4 + 8);
  v8(v1, v3);
  v8(v2, v3);
  (*(v7 + 8))(v5, v6);
  v17 = *(v0 + 80);
  v15 = *(v0 + 64);
  v16 = *(v0 + 72);
  v14 = *(v0 + 130);
  v12 = *(v0 + 504);
  v13 = *(v0 + 512);
  v9 = *(v0 + 160);
  v8(*(v0 + 288), *(v0 + 256));

  *v9 = v12;
  *(v9 + 8) = v13;
  *(v9 + 16) = v14;
  *(v9 + 24) = v15;
  *(v9 + 32) = v16;
  *(v9 + 40) = v17;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100CB7110()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CB71D4()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[28];

  v8 = *(v4 + 8);
  v8(v1, v3);
  (*(v7 + 8))(v5, v6);
  v8(v2, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100CB72EC()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v6 = v0[30];
  v7 = v0[27];
  v8 = v0[28];

  v9 = *(v4 + 8);
  v9(v3, v5);
  v9(v1, v5);
  (*(v8 + 8))(v6, v7);
  v9(v2, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100CB7424()
{
  v1 = v0[42];
  v2 = v0[30];
  v3 = v0[29];
  v4 = v0[27];
  v5 = v0[23];
  static Date.trustedNow.getter(v2);
  Date.addingTimeInterval(_:)();
  v1(v3, v2, v4);
  DateInterval.init(start:end:)();
  v0[61] = *(v5 + 120);
  v6 = swift_task_alloc();
  v0[62] = v6;
  *v6 = v0;
  v6[1] = sub_100CB6C28;
  v7 = v0[35];
  v8 = v0[21];

  return sub_100E725BC(v8, v7, 0, 1, 0);
}

uint64_t sub_100CB753C(uint64_t a1, char a2)
{
  *(v3 + 1128) = v2;
  *(v3 + 2508) = a2;
  *(v3 + 1120) = a1;
  *(v3 + 1136) = type metadata accessor for KeyDropLostItemDates(0);
  *(v3 + 1144) = swift_task_alloc();
  *(v3 + 1152) = type metadata accessor for StableIdentifier(0);
  *(v3 + 1160) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  *(v3 + 1168) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B9B20, &qword_1013E3680);
  *(v3 + 1176) = swift_task_alloc();
  v4 = type metadata accessor for KeyDropBeaconGroupAttributes(0);
  *(v3 + 1184) = v4;
  *(v3 + 1192) = *(v4 - 8);
  *(v3 + 1200) = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  *(v3 + 1208) = swift_task_alloc();
  *(v3 + 1216) = swift_task_alloc();
  *(v3 + 1224) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B9B28, &unk_1013E3688);
  *(v3 + 1232) = swift_task_alloc();
  v5 = type metadata accessor for Date();
  *(v3 + 1240) = v5;
  *(v3 + 1248) = *(v5 - 8);
  *(v3 + 1256) = swift_task_alloc();
  *(v3 + 1264) = swift_task_alloc();
  *(v3 + 1272) = swift_task_alloc();
  *(v3 + 1280) = swift_task_alloc();
  *(v3 + 1288) = swift_task_alloc();
  *(v3 + 1296) = swift_task_alloc();
  *(v3 + 1304) = sub_1000BC4D4(&qword_1016B0478, &unk_1013CDC10);
  *(v3 + 1312) = swift_task_alloc();
  *(v3 + 1320) = swift_task_alloc();
  *(v3 + 1328) = swift_task_alloc();
  *(v3 + 1336) = swift_task_alloc();
  *(v3 + 1344) = swift_task_alloc();
  *(v3 + 1352) = swift_task_alloc();
  *(v3 + 1360) = swift_task_alloc();
  *(v3 + 1368) = swift_task_alloc();
  *(v3 + 1376) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B9B30, &unk_1013E3698);
  *(v3 + 1384) = swift_task_alloc();
  *(v3 + 1392) = swift_task_alloc();
  *(v3 + 1400) = swift_task_alloc();
  *(v3 + 1408) = swift_task_alloc();
  v6 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  *(v3 + 1416) = v6;
  *(v3 + 1424) = *(v6 - 8);
  *(v3 + 1432) = swift_task_alloc();
  *(v3 + 1440) = swift_task_alloc();
  *(v3 + 1448) = swift_task_alloc();
  *(v3 + 1456) = swift_task_alloc();
  *(v3 + 1464) = swift_task_alloc();
  *(v3 + 1472) = swift_task_alloc();
  *(v3 + 1480) = swift_task_alloc();
  *(v3 + 1488) = swift_task_alloc();
  *(v3 + 1496) = swift_task_alloc();
  *(v3 + 1504) = swift_task_alloc();
  *(v3 + 1512) = swift_task_alloc();
  *(v3 + 1520) = swift_task_alloc();
  *(v3 + 1528) = swift_task_alloc();
  *(v3 + 1536) = swift_task_alloc();
  *(v3 + 1544) = swift_task_alloc();
  *(v3 + 1552) = swift_task_alloc();
  *(v3 + 1560) = swift_task_alloc();
  *(v3 + 1568) = swift_task_alloc();
  *(v3 + 1576) = swift_task_alloc();
  *(v3 + 1584) = swift_task_alloc();
  *(v3 + 1592) = swift_task_alloc();
  *(v3 + 1600) = swift_task_alloc();
  *(v3 + 1608) = swift_task_alloc();
  *(v3 + 1616) = swift_task_alloc();
  *(v3 + 1624) = swift_task_alloc();
  *(v3 + 1632) = swift_task_alloc();
  *(v3 + 1640) = swift_task_alloc();
  *(v3 + 1648) = swift_task_alloc();
  *(v3 + 1656) = swift_task_alloc();
  *(v3 + 1664) = swift_task_alloc();
  *(v3 + 1672) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0);
  *(v3 + 1680) = swift_task_alloc();
  *(v3 + 1688) = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  *(v3 + 1696) = swift_task_alloc();
  sub_1000BC4D4(&qword_10169BA30, &unk_101395620);
  *(v3 + 1704) = swift_task_alloc();
  v7 = type metadata accessor for BookmarkMetaData(0);
  *(v3 + 1712) = v7;
  *(v3 + 1720) = *(v7 - 8);
  *(v3 + 1728) = swift_task_alloc();
  *(v3 + 1736) = swift_task_alloc();
  *(v3 + 1744) = swift_task_alloc();
  *(v3 + 1752) = swift_task_alloc();
  v8 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  *(v3 + 1760) = v8;
  *(v3 + 1768) = *(v8 - 8);
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1808) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v3 + 1816) = v9;
  v10 = *(v9 - 8);
  *(v3 + 1824) = v10;
  *(v3 + 1832) = *(v10 + 64);
  *(v3 + 1840) = swift_task_alloc();
  *(v3 + 1848) = swift_task_alloc();
  *(v3 + 1856) = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  *(v3 + 1864) = swift_task_alloc();
  v11 = type metadata accessor for OwnedBeaconRecord(0);
  *(v3 + 1872) = v11;
  *(v3 + 1880) = *(v11 - 8);
  *(v3 + 1888) = swift_task_alloc();
  *(v3 + 1896) = swift_task_alloc();
  *(v3 + 1904) = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  *(v3 + 1912) = swift_task_alloc();
  *(v3 + 1920) = swift_task_alloc();
  *(v3 + 1928) = swift_task_alloc();
  *(v3 + 1936) = swift_task_alloc();
  *(v3 + 1944) = swift_task_alloc();
  *(v3 + 1952) = swift_task_alloc();
  *(v3 + 1960) = swift_task_alloc();
  *(v3 + 1968) = swift_task_alloc();
  *(v3 + 1976) = swift_task_alloc();
  *(v3 + 1984) = swift_task_alloc();
  *(v3 + 1992) = swift_task_alloc();
  *(v3 + 2000) = swift_task_alloc();
  *(v3 + 2008) = swift_task_alloc();
  *(v3 + 2016) = swift_task_alloc();
  *(v3 + 2024) = swift_task_alloc();
  *(v3 + 2032) = swift_task_alloc();
  *(v3 + 2040) = swift_task_alloc();
  *(v3 + 2048) = swift_task_alloc();
  *(v3 + 2056) = swift_task_alloc();
  *(v3 + 2064) = swift_task_alloc();
  *(v3 + 2072) = swift_task_alloc();

  return _swift_task_switch(sub_100CB7E9C, v2, 0);
}

uint64_t sub_100CB7E9C()
{
  v29 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2072);
  v2 = *(v0 + 2064);
  v3 = *(v0 + 2056);
  v4 = *(v0 + 1120);
  v5 = type metadata accessor for Logger();
  *(v0 + 2080) = sub_1000076D4(v5, qword_10177BF08);
  sub_100D11DC8(v4, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 2072);
  v10 = *(v0 + 2064);
  v11 = *(v0 + 2056);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v12 = 136447235;
    v13 = sub_100C71778();
    v15 = v14;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v16 = sub_1000136BC(v13, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, &v28);

    *(v12 + 24) = v20;
    *(v12 + 32) = 2160;
    *(v12 + 34) = 1752392040;
    *(v12 + 42) = 2081;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, &v28);

    *(v12 + 44) = v24;
    _os_log_impl(&_mh_execute_header, v6, v7, "Keys to upload: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v12, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v25 = *(v0 + 1904);
  v26 = *(*(v0 + 1128) + 120);
  *(v0 + 2088) = v26;
  *(v0 + 2504) = *(v25 + 24);

  return _swift_task_switch(sub_100CB823C, v26, 0);
}

uint64_t sub_100CB823C()
{
  v1 = *(v0 + 2088);
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1824);
  v4 = *(v0 + 1816);
  (*(v3 + 16))(v2, *(v0 + 1120) + *(v0 + 2504), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 2096) = v6;
  *(v6 + 16) = v1;
  v7 = *(v3 + 32);
  *(v0 + 2104) = v7;
  *(v0 + 2112) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v6 + v5, v2, v4);

  v8 = swift_task_alloc();
  *(v0 + 2120) = v8;
  *v8 = v0;
  v8[1] = sub_100CB83C0;
  v9 = *(v0 + 1864);
  v10 = *(v0 + 1856);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100D12B50, v6, v10);
}

uint64_t sub_100CB83C0()
{
  v1 = *(*v0 + 1128);

  return _swift_task_switch(sub_100CB84EC, v1, 0);
}

uint64_t sub_100CB84EC()
{
  v1 = v0[233];
  if ((*(v0[235] + 48))(v1, 1, v0[234]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    sub_1001BAEE0();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[238];
    v6 = v0[140];
    sub_100D12974(v1, v0[237], type metadata accessor for OwnedBeaconRecord);
    v7 = *(v5 + 20);
    v8 = swift_task_alloc();
    v0[266] = v8;
    *v8 = v0;
    v8[1] = sub_100CB8BD4;

    return sub_100C7BA0C((v0 + 110), v6 + v7);
  }
}

uint64_t sub_100CB8BD4()
{
  v2 = *v1;
  *(*v1 + 2136) = v0;

  v3 = *(v2 + 1128);
  if (v0)
  {
    v4 = sub_100CDF00C;
  }

  else
  {
    v4 = sub_100CB8D00;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_100CB8D00()
{
  v298 = v0;
  v1 = *(v0 + 880);
  *(v0 + 2144) = v1;
  v2 = *(v0 + 888);
  *(v0 + 2152) = v2;
  if (v2 >> 60 == 15)
  {
    v3 = *(v0 + 1896);
    sub_1001BAEE0();
    swift_allocError();
    *v4 = 9;
    swift_willThrow();
    sub_1001BAF34(v0 + 880);
    sub_100018D00(v3, type metadata accessor for OwnedBeaconRecord);

    v5 = *(v0 + 8);

    v5();
    return;
  }

  v6 = *(v0 + 2136);
  v7 = *(v0 + 1808);
  v8 = *(v0 + 1768);
  v9 = *(v0 + 1760);
  sub_100017D5C(v1, v2);
  static Date.trustedNow.getter(v7);
  static Date.trustedNow.getter(v7 + *(v9 + 24));
  *(v7 + *(v9 + 20)) = 1;
  *(v0 + 2160) = swift_allocBox();
  *(v0 + 2168) = v10;
  (*(v8 + 56))(v10, 1, 1, v9);

  v297[0] = sub_10126D89C(v11);

  sub_100C71518(v297);
  if (v6)
  {

    return;
  }

  v12 = v297[0];
  *(v0 + 2176) = v297[0];
  v13 = *(v12 + 2);
  *(v0 + 2184) = v13;
  if (!v13)
  {

    v296 = _swiftEmptyArrayStorage;
    goto LABEL_76;
  }

  v291 = (v0 + 232);
  v290 = (v0 + 808);
  swift_beginAccess();
  v14 = 0;
  v15 = _swiftEmptyArrayStorage;
  while (2)
  {
    *(v0 + 2208) = v15;
    *(v0 + 2200) = v14;
    *(v0 + 2192) = 0;
    v16 = *(v0 + 2176);
    if (v14 >= *(v16 + 16))
    {
      __break(1u);
      return;
    }

    v17 = v15;
    v18 = *(v0 + 2048);
    v19 = *(v0 + 1120);
    v20 = *(v16 + v14 + 32);
    *(v0 + 2509) = v20;
    sub_100D11DC8(v19, v18, type metadata accessor for SharingCircleKeyManager.Instruction);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 2048);
    if (v23)
    {
      v25 = swift_slowAlloc();
      v297[0] = swift_slowAlloc();
      *v25 = 136446466;
      v26 = sub_100C71778();
      v28 = v27;
      sub_100018D00(v24, type metadata accessor for SharingCircleKeyManager.Instruction);
      v29 = sub_1000136BC(v26, v28, v297);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      v30 = sub_10125403C(v20);
      v32 = sub_1000136BC(v30, v31, v297);

      *(v25 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v21, v22, "Keys to upload: %{public}s. Creating package for %{public}s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v24, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v15 = v17;
    switch(v20)
    {
      case 1:
        v240 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
        if (*(v240 + 16) && (v241 = sub_100771F0C(1), (v242 & 1) != 0))
        {
          v243 = *(v0 + 1752);
          sub_100D11DC8(*(v240 + 56) + *(*(v0 + 1720) + 72) * v241, v243, type metadata accessor for BookmarkMetaData);
          v244 = *(v243 + 8);
          sub_100018D00(v243, type metadata accessor for BookmarkMetaData);
        }

        else
        {
          v244 = 0;
        }

        *(v0 + 2216) = v244;
        v277 = *(v0 + 2504);
        v278 = *(v0 + 1120);
        v279 = swift_task_alloc();
        *(v0 + 2224) = v279;
        *v279 = v0;
        v279[1] = sub_100CBBD44;
        v280 = *(v0 + 1704);

        sub_100CFC71C(v280, v278 + v277);
        return;
      case 4:
        v248 = swift_task_alloc();
        *(v0 + 2328) = v248;
        *v248 = v0;
        v248[1] = sub_100CC4E24;
        v249 = *(v0 + 1896);
        v250 = *(v0 + 1408);
        v251 = *(v0 + 1120);

        sub_100CF172C(v250, v251, v249, v0 + 880);
        return;
      case 5:
        v54 = *(v0 + 1768);
        v55 = *(v0 + 1760);
        v56 = *(v0 + 1376);
        sub_1000D2A70(*(v0 + 2168), v56, &qword_1016B0478, &unk_1013CDC10);
        v57 = *(v54 + 48);
        *(v0 + 2344) = v57;
        *(v0 + 2352) = (v54 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v55) = v57(v56, 1, v55);
        sub_10000B3A8(v56, &qword_1016B0478, &unk_1013CDC10);
        if (v55 == 1)
        {
          v256 = swift_task_alloc();
          *(v0 + 2360) = v256;
          *v256 = v0;
          v257 = sub_100CC7CAC;
          goto LABEL_94;
        }

        v58 = *(v0 + 2344);
        v59 = *(v0 + 1760);
        v60 = *(v0 + 1368);
        sub_1000D2A70(*(v0 + 2168), v60, &qword_1016B0478, &unk_1013CDC10);
        v61 = v58(v60, 1, v59);
        v62 = *(v0 + 1368);
        if (v61 != 1)
        {
          sub_100D12974(v62, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
          v261 = swift_task_alloc();
          *(v0 + 2376) = v261;
          *v261 = v0;
          v261[1] = sub_100CCA6E8;
          v262 = *(v0 + 2152);
          v263 = *(v0 + 2144);
          v264 = *(v0 + 1896);
          v265 = *(v0 + 1792);
          v266 = *(v0 + 1400);
          v267 = *(v0 + 1120);
          v268 = 0;
          goto LABEL_99;
        }

        v63 = *(v0 + 2000);
        v64 = *(v0 + 1120);
        sub_10000B3A8(v62, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v64, v63, type metadata accessor for SharingCircleKeyManager.Instruction);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();
        v67 = os_log_type_enabled(v65, v66);
        v68 = *(v0 + 2000);
        if (!v67)
        {
          goto LABEL_11;
        }

        v69 = swift_slowAlloc();
        v297[0] = swift_slowAlloc();
        *v69 = 136446466;
        v70 = sub_100C71778();
        v72 = v71;
        sub_100018D00(v68, type metadata accessor for SharingCircleKeyManager.Instruction);
        v73 = sub_1000136BC(v70, v72, v297);

        *(v69 + 4) = v73;
        *(v69 + 12) = 2082;
        v74 = 5;
        goto LABEL_36;
      case 6:
        v75 = *(v0 + 1768);
        v76 = *(v0 + 1760);
        v77 = *(v0 + 1360);
        sub_1000D2A70(*(v0 + 2168), v77, &qword_1016B0478, &unk_1013CDC10);
        v78 = *(v75 + 48);
        *(v0 + 2392) = v78;
        *(v0 + 2400) = (v75 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v76) = v78(v77, 1, v76);
        sub_10000B3A8(v77, &qword_1016B0478, &unk_1013CDC10);
        if (v76 != 1)
        {
          v79 = *(v0 + 2392);
          v80 = *(v0 + 1760);
          v81 = *(v0 + 1352);
          sub_1000D2A70(*(v0 + 2168), v81, &qword_1016B0478, &unk_1013CDC10);
          v82 = v79(v81, 1, v80);
          v83 = *(v0 + 1352);
          if (v82 != 1)
          {
            sub_100D12974(v83, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
            v269 = swift_task_alloc();
            *(v0 + 2424) = v269;
            *v269 = v0;
            v269[1] = sub_100CD0008;
            v262 = *(v0 + 2152);
            v263 = *(v0 + 2144);
            v264 = *(v0 + 1896);
            v265 = *(v0 + 1784);
            v266 = *(v0 + 1392);
            v267 = *(v0 + 1120);
            v268 = 1;
LABEL_99:

            sub_100CF2904(v266, v267, v264, v265, v268, v263, v262);
            return;
          }

          v84 = *(v0 + 1984);
          v85 = *(v0 + 1120);
          sub_10000B3A8(v83, &qword_1016B0478, &unk_1013CDC10);
          sub_100D11DC8(v85, v84, type metadata accessor for SharingCircleKeyManager.Instruction);
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.error.getter();
          v86 = os_log_type_enabled(v65, v66);
          v68 = *(v0 + 1984);
          if (v86)
          {
            v69 = swift_slowAlloc();
            v297[0] = swift_slowAlloc();
            *v69 = 136446466;
            v87 = sub_100C71778();
            v89 = v88;
            sub_100018D00(v68, type metadata accessor for SharingCircleKeyManager.Instruction);
            v90 = sub_1000136BC(v87, v89, v297);

            *(v69 + 4) = v90;
            *(v69 + 12) = 2082;
            v74 = 6;
LABEL_36:
            v107 = sub_10125403C(v74);
            v109 = sub_1000136BC(v107, v108, v297);

            *(v69 + 14) = v109;
            _os_log_impl(&_mh_execute_header, v65, v66, "No key alignment available for %{public}s. No package created for %{public}s", v69, 0x16u);
            swift_arrayDestroy();

            goto LABEL_12;
          }

          goto LABEL_11;
        }

        v256 = swift_task_alloc();
        *(v0 + 2408) = v256;
        *v256 = v0;
        v257 = sub_100CCD5CC;
        goto LABEL_94;
      case 8:
      case 10:
        v33 = *(v0 + 936);
        if (*(v33 + 16))
        {
          v34 = sub_100771F0C(v20);
          if (v35)
          {
            v36 = *(v0 + 2152);
            v37 = *(v0 + 2144);
            v38 = *(v0 + 1680);
            v39 = (*(v33 + 56) + 16 * v34);
            v40 = *v39;
            v41 = v39[1];
            v42 = type metadata accessor for EncryptedData();
            (*(*(v42 - 8) + 56))(v38, 1, 1, v42);
            sub_100017D5C(v40, v41);
            sub_100017D5C(v40, v41);
            sub_10125A120(1, v40, v41, v38, v291);
            sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
            v43 = swift_allocObject();
            v44 = *(v0 + 264);
            v45 = *(v0 + 280);
            v46 = *v291;
            *(v43 + 48) = *(v0 + 248);
            *(v43 + 64) = v44;
            *(v43 + 80) = v45;
            *(v43 + 96) = *(v0 + 296);
            *(v43 + 16) = xmmword_101385D80;
            *(v43 + 32) = v46;
            sub_10002E98C(v37, v36);
            sub_1003914F8(v291, v0 + 736);
            v47 = sub_100D11764(v43, v37, v36);
            v292 = v41;
            v125 = *(v0 + 1808);
            v126 = *(v0 + 1520);
            v285 = *(v0 + 1512);
            v288 = v40;
            v127 = *(v0 + 1416);
            v128 = v47;
            sub_100006654(*(v0 + 2144), *(v0 + 2152));
            swift_setDeallocating();
            sub_100391554(v43 + 32);
            swift_deallocClassInstance();
            sub_100D11DC8(v125, &v126[*(v127 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v126 = v20;
            v129 = *(v127 + 24);
            v15 = v17;
            *&v126[v129] = v128;
            sub_100D11DC8(v126, v285, type metadata accessor for KeyDropInterface.KeyPackage);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v15 = sub_100A5BE40(0, v17[2] + 1, 1, v17);
            }

            v132 = v15[2];
            v131 = v15[3];
            if (v132 >= v131 >> 1)
            {
              v15 = sub_100A5BE40((v131 > 1), v132 + 1, 1, v15);
            }

            v133 = *(v0 + 1960);
            v134 = *(v0 + 1520);
            v135 = *(v0 + 1512);
            v136 = *(v0 + 1504);
            v137 = *(v0 + 1424);
            v138 = *(v0 + 1120);
            v15[2] = v132 + 1;
            sub_100D12974(v135, v15 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v132, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100D11DC8(v138, v133, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100D11DC8(v134, v136, type metadata accessor for KeyDropInterface.KeyPackage);
            v139 = Logger.logObject.getter();
            v140 = static os_log_type_t.default.getter();
            v141 = os_log_type_enabled(v139, v140);
            v142 = *(v0 + 1960);
            v143 = *(v0 + 1520);
            v144 = *(v0 + 1504);
            if (v141)
            {
              v145 = swift_slowAlloc();
              v297[0] = swift_slowAlloc();
              *v145 = 136446466;
              v286 = v143;
              v146 = sub_100C71778();
              v148 = v147;
              sub_100018D00(v142, type metadata accessor for SharingCircleKeyManager.Instruction);
              v149 = sub_1000136BC(v146, v148, v297);

              *(v145 + 4) = v149;
              *(v145 + 12) = 2082;
              v150 = sub_101255410();
              v152 = v151;
              sub_100018D00(v144, type metadata accessor for KeyDropInterface.KeyPackage);
              v153 = sub_1000136BC(v150, v152, v297);

              *(v145 + 14) = v153;
              _os_log_impl(&_mh_execute_header, v139, v140, "Keys to upload: %{public}s,\nadded: %{public}s.", v145, 0x16u);
              swift_arrayDestroy();

              sub_100391554(v291);
              sub_100016590(v288, v292);
              v154 = v286;
            }

            else
            {

              sub_100391554(v291);
              sub_100016590(v288, v292);
              sub_100018D00(v144, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v142, type metadata accessor for SharingCircleKeyManager.Instruction);
              v154 = v143;
            }

            sub_100018D00(v154, type metadata accessor for KeyDropInterface.KeyPackage);
          }
        }

        goto LABEL_13;
      case 9:
        v91 = *(v0 + 1768);
        v92 = *(v0 + 1760);
        v93 = *(v0 + 1344);
        sub_1000D2A70(*(v0 + 2168), v93, &qword_1016B0478, &unk_1013CDC10);
        v94 = *(v91 + 48);
        *(v0 + 2440) = v94;
        *(v0 + 2448) = (v91 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v92) = v94(v93, 1, v92);
        sub_10000B3A8(v93, &qword_1016B0478, &unk_1013CDC10);
        if (v92 == 1)
        {
          v256 = swift_task_alloc();
          *(v0 + 2456) = v256;
          *v256 = v0;
          v257 = sub_100CD2EEC;
LABEL_94:
          v256[1] = v257;
          v258 = *(v0 + 2160);
          v259 = *(v0 + 1896);
          v260 = *(v0 + 1128);

          sub_100CF0FB4(v259, v258, v260);
          return;
        }

        v95 = *(v0 + 2440);
        v96 = *(v0 + 1760);
        v97 = *(v0 + 1336);
        sub_1000D2A70(*(v0 + 2168), v97, &qword_1016B0478, &unk_1013CDC10);
        v98 = v95(v97, 1, v96);
        v99 = *(v0 + 1336);
        if (v98 != 1)
        {
          sub_100D12974(v99, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
          v270 = swift_task_alloc();
          *(v0 + 2472) = v270;
          *v270 = v0;
          v270[1] = sub_100CD5928;
          v271 = *(v0 + 2152);
          v272 = *(v0 + 2144);
          v273 = *(v0 + 1896);
          v274 = *(v0 + 1776);
          v275 = *(v0 + 1384);
          v276 = *(v0 + 1120);

          sub_100CF3F94(v275, v276, v273, v274, v272, v271);
          return;
        }

        v100 = *(v0 + 1968);
        v101 = *(v0 + 1120);
        sub_10000B3A8(v99, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v101, v100, type metadata accessor for SharingCircleKeyManager.Instruction);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();
        v102 = os_log_type_enabled(v65, v66);
        v68 = *(v0 + 1968);
        if (v102)
        {
          v69 = swift_slowAlloc();
          v297[0] = swift_slowAlloc();
          *v69 = 136446466;
          v103 = sub_100C71778();
          v105 = v104;
          sub_100018D00(v68, type metadata accessor for SharingCircleKeyManager.Instruction);
          v106 = sub_1000136BC(v103, v105, v297);

          *(v69 + 4) = v106;
          *(v69 + 12) = 2082;
          v74 = 9;
          goto LABEL_36;
        }

LABEL_11:

        sub_100018D00(v68, type metadata accessor for SharingCircleKeyManager.Instruction);
LABEL_12:
        v15 = *(v0 + 2208);
LABEL_13:
        v14 = *(v0 + 2200) + 1;
        if (v14 != *(v0 + 2184))
        {
          continue;
        }

        v296 = v15;
LABEL_76:
        v237 = *(v0 + 1896);
        v238 = *(v0 + 1808);
        sub_100006654(*(v0 + 2144), *(v0 + 2152));
        sub_1001BAF34(v0 + 880);
        sub_100018D00(v238, type metadata accessor for KeyDropInterface.KeyAlignment);
        sub_100018D00(v237, type metadata accessor for OwnedBeaconRecord);

        v239 = *(v0 + 8);

        v239(v296);
        return;
      case 12:
        v48 = *(v0 + 1824);
        v49 = *(v0 + 1816);
        v50 = *(v0 + 1168);
        sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v50, &qword_1016980D0, &unk_10138F3B0);
        if ((*(v48 + 48))(v50, 1, v49) == 1)
        {
          v51 = *(v0 + 1192);
          v52 = *(v0 + 1184);
          v53 = *(v0 + 1176);
          sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
          (*(v51 + 56))(v53, 1, 1, v52);
          goto LABEL_54;
        }

        v110 = *(v0 + 1896);
        v111 = *(v0 + 1872);
        v112 = *(v0 + 1160);
        (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
        sub_100D11DC8(v110 + *(v111 + 24), v112, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_49:
            v159 = *(v0 + 1192);
            v160 = *(v0 + 1184);
            v161 = *(v0 + 1176);
            v162 = *(v0 + 1160);
            (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
            sub_100018D00(v162, type metadata accessor for StableIdentifier);
            (*(v159 + 56))(v161, 1, 1, v160);
            goto LABEL_54;
          }

          v155 = *(v0 + 1824);
          v156 = *(v0 + 1816);
          v157 = *(v0 + 1160);
          v158 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

          v118 = *(v157 + *(v158 + 96));
          (*(v155 + 8))(v157, v156);
        }

        else
        {
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_49;
          }

          v114 = *(v0 + 1824);
          v115 = *(v0 + 1160);
          v116 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

          v117 = (v115 + *(v116 + 96));
          v118 = *v117;
          LOBYTE(v115) = v117[1];

          v119 = *(v114 + 8);
          if (v115)
          {
            v120 = *(v0 + 1816);
            v121 = *(v0 + 1192);
            v122 = *(v0 + 1184);
            v123 = *(v0 + 1176);
            v124 = *(v0 + 1160);
            v119(*(v0 + 1840), v120);
            (*(v121 + 56))(v123, 1, 1, v122);
            v119(v124, v120);
            goto LABEL_54;
          }

          v119(*(v0 + 1160), *(v0 + 1816));
        }

        v163 = *(v0 + 1192);
        v164 = *(v0 + 1184);
        v165 = *(v0 + 1176);
        (*(v0 + 2104))(v165, *(v0 + 1840), *(v0 + 1816));
        *(v165 + *(v164 + 20)) = v118;
        (*(v163 + 56))(v165, 0, 1, v164);
LABEL_54:
        v166 = *(v0 + 1176);
        if ((*(*(v0 + 1192) + 48))(v166, 1, *(v0 + 1184)) == 1)
        {
          sub_10000B3A8(v166, &qword_1016B9B20, &qword_1013E3680);
LABEL_65:
          v15 = v17;
          goto LABEL_13;
        }

        v167 = *(v0 + 1904);
        v168 = *(v0 + 1120);
        sub_100D12974(v166, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
        v169 = *(v168 + *(v167 + 44));
        if (!*(v169 + 16))
        {
          goto LABEL_60;
        }

        v170 = sub_100771F0C(12);
        if ((v171 & 1) == 0)
        {
          goto LABEL_60;
        }

        v172 = *(v0 + 1768);
        v173 = *(v0 + 1760);
        v174 = *(v0 + 1736);
        v175 = *(v0 + 1712);
        v176 = *(v0 + 1320);
        sub_100D11DC8(*(v169 + 56) + *(*(v0 + 1720) + 72) * v170, v174, type metadata accessor for BookmarkMetaData);
        sub_1000D2A70(v174 + *(v175 + 20), v176, &qword_1016B0478, &unk_1013CDC10);
        sub_100018D00(v174, type metadata accessor for BookmarkMetaData);
        if ((*(v172 + 48))(v176, 1, v173) == 1)
        {
          sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
LABEL_60:
          v177 = *(v0 + 1248);
          v178 = *(v0 + 1240);
          v179 = *(v0 + 1216);
          (*(v177 + 56))(v179, 1, 1, v178);
          static Date.distantPast.getter();
          if ((*(v177 + 48))(v179, 1, v178) != 1)
          {
            sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          v180 = *(v0 + 1320);
          v181 = *(v0 + 1280);
          v182 = *(v0 + 1248);
          v183 = *(v0 + 1240);
          v184 = *(v0 + 1216);
          (*(v182 + 16))(v184, v180 + *(*(v0 + 1760) + 24), v183);
          sub_100018D00(v180, type metadata accessor for KeyDropInterface.KeyAlignment);
          (*(v182 + 56))(v184, 0, 1, v183);
          (*(v182 + 32))(v181, v184, v183);
        }

        v185 = *(v0 + 1896);
        v186 = *(v0 + 1272);
        v187 = objc_autoreleasePoolPush();
        sub_100D088CC(v185, v186);
        v188 = *(v0 + 1272);
        v189 = *(v0 + 1248);
        v190 = *(v0 + 1240);
        objc_autoreleasePoolPop(v187);
        sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        LOBYTE(v187) = dispatch thunk of static Comparable.< infix(_:_:)();
        v191 = *(v189 + 8);
        v191(v188, v190);
        if (v187)
        {
          v192 = *(v0 + 1200);
          v191(*(v0 + 1280), *(v0 + 1240));
          sub_100018D00(v192, type metadata accessor for KeyDropBeaconGroupAttributes);
          goto LABEL_65;
        }

        v289 = v191;
        type metadata accessor for PropertyListEncoder();
        swift_allocObject();
        PropertyListEncoder.init()();
        sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA58);
        v193 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v195 = v194;
        v293 = *(v0 + 2152);
        v196 = *(v0 + 2144);
        v197 = *(v0 + 1680);
        v198 = v193;

        v199 = type metadata accessor for EncryptedData();
        (*(*(v199 - 8) + 56))(v197, 1, 1, v199);
        sub_100017D5C(v198, v195);
        sub_10125A120(1, v198, v195, v197, v290);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v200 = swift_allocObject();
        v201 = *(v0 + 840);
        v202 = *(v0 + 856);
        v203 = *v290;
        *(v200 + 48) = *(v0 + 824);
        *(v200 + 64) = v201;
        *(v200 + 80) = v202;
        *(v200 + 96) = *(v0 + 872);
        *(v200 + 16) = xmmword_101385D80;
        *(v200 + 32) = v203;
        sub_10002E98C(v196, v293);
        sub_1003914F8(v290, v0 + 448);
        v204 = sub_100D11764(v200, v196, v293);
        v284 = v198;
        v287 = v195;
        v205 = *(v0 + 1808);
        v206 = *(v0 + 1472);
        v294 = *(v0 + 1464);
        v207 = *(v0 + 1416);
        v208 = v204;
        sub_100006654(*(v0 + 2144), *(v0 + 2152));
        swift_setDeallocating();
        sub_100391554(v200 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v205, &v206[*(v207 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v206 = 12;
        *&v206[*(v207 + 24)] = v208;
        sub_100D11DC8(v206, v294, type metadata accessor for KeyDropInterface.KeyPackage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100A5BE40(0, v17[2] + 1, 1, v17);
        }

        v210 = v17[2];
        v209 = v17[3];
        v295 = v17;
        if (v210 >= v209 >> 1)
        {
          v295 = sub_100A5BE40((v209 > 1), v210 + 1, 1, v17);
        }

        v211 = *(v0 + 1944);
        v212 = *(v0 + 1472);
        v213 = *(v0 + 1464);
        v214 = *(v0 + 1456);
        v215 = *(v0 + 1424);
        v216 = *(v0 + 1120);
        v295[2] = v210 + 1;
        sub_100D12974(v213, v295 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v210, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v216, v211, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v212, v214, type metadata accessor for KeyDropInterface.KeyPackage);
        v217 = Logger.logObject.getter();
        v218 = static os_log_type_t.default.getter();
        v219 = os_log_type_enabled(v217, v218);
        v220 = *(v0 + 1944);
        v221 = *(v0 + 1472);
        v222 = *(v0 + 1456);
        v223 = *(v0 + 1280);
        v224 = *(v0 + 1240);
        v225 = *(v0 + 1200);
        if (v219)
        {
          v282 = *(v0 + 1200);
          v226 = v218;
          v227 = swift_slowAlloc();
          v297[0] = swift_slowAlloc();
          *v227 = 136446466;
          v281 = v221;
          v228 = sub_100C71778();
          v283 = v224;
          v230 = v229;
          sub_100018D00(v220, type metadata accessor for SharingCircleKeyManager.Instruction);
          v231 = sub_1000136BC(v228, v230, v297);

          *(v227 + 4) = v231;
          *(v227 + 12) = 2082;
          v232 = sub_101255410();
          v234 = v233;
          sub_100018D00(v222, type metadata accessor for KeyDropInterface.KeyPackage);
          v235 = sub_1000136BC(v232, v234, v297);

          *(v227 + 14) = v235;
          _os_log_impl(&_mh_execute_header, v217, v226, "Keys to upload: %{public}s,\nadded: %{public}s.", v227, 0x16u);
          swift_arrayDestroy();

          sub_100391554(v290);
          sub_100016590(v284, v287);
          sub_100018D00(v281, type metadata accessor for KeyDropInterface.KeyPackage);
          v289(v223, v283);
          v236 = v282;
        }

        else
        {

          sub_100391554(v290);
          sub_100016590(v284, v287);
          sub_100018D00(v222, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v220, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v221, type metadata accessor for KeyDropInterface.KeyPackage);
          v289(v223, v224);
          v236 = v225;
        }

        sub_100018D00(v236, type metadata accessor for KeyDropBeaconGroupAttributes);
        v15 = v295;
        goto LABEL_13;
      case 13:
        v245 = swift_task_alloc();
        *(v0 + 2488) = v245;
        *v245 = v0;
        v245[1] = sub_100CD880C;
        v246 = *(v0 + 1896);
        v247 = *(v0 + 1232);

        sub_100CF5FBC(v247, v246);
        return;
      case 16:
        v252 = swift_task_alloc();
        *(v0 + 2496) = v252;
        *v252 = v0;
        v252[1] = sub_100CDBC44;
        v253 = *(v0 + 1896);
        v254 = *(v0 + 1264);
        v255 = *(v0 + 1144);

        sub_100CF6C9C(v254, v255, v253);
        return;
      default:
        goto LABEL_13;
    }
  }
}

uint64_t sub_100CBBD44()
{
  v1 = *(*v0 + 1128);

  return _swift_task_switch(sub_100CBBE54, v1, 0);
}

void sub_100CBBE54()
{
  v352 = v0;
  v1 = *(v0 + 1704);
  v2 = type metadata accessor for TimeBasedKey(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v14 = *(v0 + 2192);
    v15 = (v1 + *(v2 + 24));
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v20 = v15[4];
    v21 = v15[5];
    sub_10002E98C(*v15, v17);
    sub_100017D5C(v18, v19);
    sub_10002E98C(v20, v21);
    sub_100018D00(v1, type metadata accessor for TimeBasedKey);
    v22 = sub_100A7A194(v18, v19, 0, 0);
    if (v14)
    {
      v5 = v0 + 1080;
      v8 = static os_log_type_t.error.getter();
      if (qword_101694BE0 == -1)
      {
LABEL_7:
        v25 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_101385D80;
        *v5 = v14;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v27 = String.init<A>(describing:)();
        v29 = v28;
        *(v26 + 56) = &type metadata for String;
        *(v26 + 64) = sub_100008C00();
        *(v26 + 32) = v27;
        *(v26 + 40) = v29;
        os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v25, "Error deriving advertisementKey: %@", 35, 2, v26);

        sub_1001BAF88();
        v30 = swift_allocError();
        *v31 = 0;
        swift_willThrow();

LABEL_8:
        v350 = 0;
        v351 = 0xE000000000000000;
        _StringGuts.grow(_:)(35);
        v32 = v351;
        *(v0 + 992) = v350;
        *(v0 + 1000) = v32;
        v33._object = 0x800000010134CB30;
        v33._countAndFlagsBits = 0xD000000000000021;
        String.append(_:)(v33);
        *(v0 + 1088) = v30;
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        _print_unlocked<A, B>(_:_:)();
        _assertionFailure(_:_:file:line:flags:)();
        return;
      }

LABEL_141:
      swift_once();
      goto LABEL_7;
    }

    v23 = sub_100A7829C(v22, 0, 2);
    *(v0 + 2232) = v23;
    *(v0 + 2240) = v24;
    v274 = v23;
    v275 = v24;
    CCECCryptorRelease();
    v276 = v275;
    v277 = v275 >> 62;
    if ((v275 >> 62) > 1)
    {
      v278 = v274;
      if (v277 != 2)
      {
        v286 = v275;
        v287 = v274;
        v288 = 0;
        goto LABEL_132;
      }

      v281 = *(v274 + 16);
      v280 = *(v274 + 24);
      v282 = __OFSUB__(v280, v281);
      v279 = v280 - v281;
      if (!v282)
      {
        goto LABEL_94;
      }

      __break(1u);
    }

    else
    {
      v278 = v274;
      if (!v277)
      {
        v279 = BYTE6(v275);
        goto LABEL_94;
      }
    }

    LODWORD(v279) = HIDWORD(v278) - v278;
    if (__OFSUB__(HIDWORD(v278), v278))
    {
      __break(1u);
      goto LABEL_143;
    }

    v279 = v279;
LABEL_94:
    if (v279 == 28)
    {
      v283 = *(v0 + 1896);
      v284 = *(v0 + 1888);
      sub_100006654(v16, v17);
      sub_100016590(v18, v19);
      sub_100006654(v20, v21);
      sub_100D11DC8(v283, v284, type metadata accessor for OwnedBeaconRecord);
      v285 = swift_task_alloc();
      *(v0 + 2248) = v285;
      *v285 = v0;
      v285[1] = sub_100CBED44;

      goto _$s19FindMyDaemonSupport6daemonAA0C0Cvg;
    }

    if (v277 == 2)
    {
      v327 = *(v278 + 16);
      v326 = *(v278 + 24);
      v288 = v326 - v327;
      if (!__OFSUB__(v326, v327))
      {
        v286 = v275;
        v287 = v278;
        goto LABEL_132;
      }

LABEL_144:
      __break(1u);
_$s19FindMyDaemonSupport6daemonAA0C0Cvg:
      daemon.getter();
      return;
    }

    if (v277 != 1)
    {
      v287 = v278;
      v286 = v276;
      v288 = BYTE6(v276);
      goto LABEL_132;
    }

    if (!__OFSUB__(HIDWORD(v278), v278))
    {
      v286 = v275;
      v287 = v278;
      v288 = HIDWORD(v278) - v278;
LABEL_132:
      sub_100018350();
      v30 = swift_allocError();
      *v328 = 28;
      *(v328 + 8) = v288;
      *(v328 + 16) = 0;
      swift_willThrow();
      sub_100016590(v287, v286);
      goto LABEL_8;
    }

LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v3 = *(v0 + 2024);
  v4 = *(v0 + 1120);
  sub_10000B3A8(v1, &qword_10169BA30, &unk_101395620);
  sub_100D11DC8(v4, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 2024);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v350 = v10;
    *v9 = 136446210;
    v11 = sub_100C71778();
    v13 = v12;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v8 = sub_1000136BC(v11, v13, &v350);

    *(v9 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v5, v6, "No secondary key available for %{public}s.", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v348 = *(v0 + 2208);
  v34 = *(v0 + 2200) + 1;
  if (v34 == *(v0 + 2184))
  {
LABEL_11:

    v35 = *(v0 + 1896);
    v36 = *(v0 + 1808);
    sub_100006654(*(v0 + 2144), *(v0 + 2152));
    sub_1001BAF34(v0 + 880);
    sub_100018D00(v36, type metadata accessor for KeyDropInterface.KeyAlignment);
    sub_100018D00(v35, type metadata accessor for OwnedBeaconRecord);

    v37 = *(v0 + 8);

    v37(v348);
    return;
  }

  v38 = v0 + 232;
  v39 = v0 + 808;
  v14 = *(v0 + 2192);
  v346 = v0 + 232;
  v347 = v0 + 808;
  while (2)
  {
    *(v0 + 2208) = v348;
    *(v0 + 2200) = v34;
    *(v0 + 2192) = v14;
    v40 = *(v0 + 2176);
    if (v34 >= *(v40 + 16))
    {
      __break(1u);
      goto LABEL_141;
    }

    v41 = *(v0 + 2048);
    v42 = *(v0 + 1120);
    v43 = *(v40 + v34 + 32);
    *(v0 + 2509) = v43;
    sub_100D11DC8(v42, v41, type metadata accessor for SharingCircleKeyManager.Instruction);
    v5 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    v45 = os_log_type_enabled(v5, v44);
    v8 = *(v0 + 2048);
    if (v45)
    {
      v46 = swift_slowAlloc();
      v350 = swift_slowAlloc();
      *v46 = 136446466;
      v47 = sub_100C71778();
      v49 = v48;
      sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
      v50 = sub_1000136BC(v47, v49, &v350);
      v38 = v0 + 232;

      *(v46 + 4) = v50;
      *(v46 + 12) = 2082;
      v51 = sub_10125403C(v43);
      v8 = v52;
      v53 = sub_1000136BC(v51, v52, &v350);

      *(v46 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v5, v44, "Keys to upload: %{public}s. Creating package for %{public}s", v46, 0x16u);
      swift_arrayDestroy();
      v39 = v0 + 808;
    }

    else
    {

      sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    switch(v43)
    {
      case 1:
        v289 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
        if (*(v289 + 16) && (v290 = sub_100771F0C(1), (v291 & 1) != 0))
        {
          v292 = *(v0 + 1752);
          sub_100D11DC8(*(v289 + 56) + *(*(v0 + 1720) + 72) * v290, v292, type metadata accessor for BookmarkMetaData);
          v293 = *(v292 + 8);
          sub_100018D00(v292, type metadata accessor for BookmarkMetaData);
        }

        else
        {
          v293 = 0;
        }

        *(v0 + 2216) = v293;
        v329 = *(v0 + 2504);
        v330 = *(v0 + 1120);
        v331 = swift_task_alloc();
        *(v0 + 2224) = v331;
        *v331 = v0;
        v331[1] = sub_100CBBD44;
        v332 = *(v0 + 1704);

        sub_100CFC71C(v332, v330 + v329);
        return;
      case 4:
        v297 = swift_task_alloc();
        *(v0 + 2328) = v297;
        *v297 = v0;
        v297[1] = sub_100CC4E24;
        v298 = *(v0 + 1896);
        v299 = *(v0 + 1408);
        v300 = *(v0 + 1120);

        sub_100CF172C(v299, v300, v298, v0 + 880);
        return;
      case 5:
        v75 = *(v0 + 1768);
        v76 = *(v0 + 1760);
        v77 = *(v0 + 1376);
        sub_1000D2A70(*(v0 + 2168), v77, &qword_1016B0478, &unk_1013CDC10);
        v78 = *(v75 + 48);
        *(v0 + 2344) = v78;
        *(v0 + 2352) = (v75 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v76) = v78(v77, 1, v76);
        sub_10000B3A8(v77, &qword_1016B0478, &unk_1013CDC10);
        if (v76 == 1)
        {
          v305 = swift_task_alloc();
          *(v0 + 2360) = v305;
          *v305 = v0;
          v306 = sub_100CC7CAC;
          goto LABEL_118;
        }

        v79 = *(v0 + 2344);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1368);
        sub_1000D2A70(*(v0 + 2168), v81, &qword_1016B0478, &unk_1013CDC10);
        v82 = v79(v81, 1, v80);
        v83 = *(v0 + 1368);
        if (v82 != 1)
        {
          sub_100D12974(v83, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
          v310 = swift_task_alloc();
          *(v0 + 2376) = v310;
          *v310 = v0;
          v310[1] = sub_100CCA6E8;
          v311 = *(v0 + 2152);
          v312 = *(v0 + 2144);
          v313 = *(v0 + 1896);
          v314 = *(v0 + 1792);
          v315 = *(v0 + 1400);
          v316 = *(v0 + 1120);
          v317 = 0;
          goto LABEL_123;
        }

        v84 = *(v0 + 2000);
        v85 = *(v0 + 1120);
        sub_10000B3A8(v83, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v85, v84, type metadata accessor for SharingCircleKeyManager.Instruction);
        v5 = Logger.logObject.getter();
        v86 = static os_log_type_t.error.getter();
        v87 = os_log_type_enabled(v5, v86);
        v8 = *(v0 + 2000);
        if (!v87)
        {
          goto LABEL_41;
        }

        v88 = swift_slowAlloc();
        v350 = swift_slowAlloc();
        *v88 = 136446466;
        v89 = sub_100C71778();
        v91 = v90;
        sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
        v92 = sub_1000136BC(v89, v91, &v350);

        *(v88 + 4) = v92;
        *(v88 + 12) = 2082;
        v93 = 5;
        goto LABEL_40;
      case 6:
        v94 = *(v0 + 1768);
        v95 = *(v0 + 1760);
        v96 = *(v0 + 1360);
        sub_1000D2A70(*(v0 + 2168), v96, &qword_1016B0478, &unk_1013CDC10);
        v97 = *(v94 + 48);
        *(v0 + 2392) = v97;
        *(v0 + 2400) = (v94 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v95) = v97(v96, 1, v95);
        sub_10000B3A8(v96, &qword_1016B0478, &unk_1013CDC10);
        if (v95 == 1)
        {
          v305 = swift_task_alloc();
          *(v0 + 2408) = v305;
          *v305 = v0;
          v306 = sub_100CCD5CC;
LABEL_118:
          v305[1] = v306;
          v307 = *(v0 + 2160);
          v308 = *(v0 + 1896);
          v309 = *(v0 + 1128);

          sub_100CF0FB4(v308, v307, v309);
          return;
        }

        v98 = *(v0 + 2392);
        v99 = *(v0 + 1760);
        v100 = *(v0 + 1352);
        sub_1000D2A70(*(v0 + 2168), v100, &qword_1016B0478, &unk_1013CDC10);
        v101 = v98(v100, 1, v99);
        v102 = *(v0 + 1352);
        if (v101 == 1)
        {
          v103 = *(v0 + 1984);
          v104 = *(v0 + 1120);
          sub_10000B3A8(v102, &qword_1016B0478, &unk_1013CDC10);
          sub_100D11DC8(v104, v103, type metadata accessor for SharingCircleKeyManager.Instruction);
          v5 = Logger.logObject.getter();
          v86 = static os_log_type_t.error.getter();
          v105 = os_log_type_enabled(v5, v86);
          v8 = *(v0 + 1984);
          if (v105)
          {
            v88 = swift_slowAlloc();
            v350 = swift_slowAlloc();
            *v88 = 136446466;
            v106 = sub_100C71778();
            v108 = v107;
            sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
            v109 = sub_1000136BC(v106, v108, &v350);

            *(v88 + 4) = v109;
            *(v88 + 12) = 2082;
            v93 = 6;
LABEL_40:
            v126 = sub_10125403C(v93);
            v8 = v127;
            v128 = sub_1000136BC(v126, v127, &v350);

            *(v88 + 14) = v128;
            v39 = v0 + 808;
            _os_log_impl(&_mh_execute_header, v5, v86, "No key alignment available for %{public}s. No package created for %{public}s", v88, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
LABEL_41:

            sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
          }

LABEL_42:
          v348 = *(v0 + 2208);
LABEL_16:
          v34 = *(v0 + 2200) + 1;
          if (v34 == *(v0 + 2184))
          {
            goto LABEL_11;
          }

          continue;
        }

        sub_100D12974(v102, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
        v318 = swift_task_alloc();
        *(v0 + 2424) = v318;
        *v318 = v0;
        v318[1] = sub_100CD0008;
        v311 = *(v0 + 2152);
        v312 = *(v0 + 2144);
        v313 = *(v0 + 1896);
        v314 = *(v0 + 1784);
        v315 = *(v0 + 1392);
        v316 = *(v0 + 1120);
        v317 = 1;
LABEL_123:

        sub_100CF2904(v315, v316, v313, v314, v317, v312, v311);
        return;
      case 8:
      case 10:
        v8 = *(v0 + 936);
        if (!*(v8 + 16))
        {
          goto LABEL_16;
        }

        v54 = sub_100771F0C(v43);
        if ((v55 & 1) == 0)
        {
          goto LABEL_16;
        }

        v56 = *(v0 + 2152);
        v57 = *(v0 + 2144);
        v58 = *(v0 + 1680);
        v59 = (*(v8 + 56) + 16 * v54);
        v61 = *v59;
        v60 = v59[1];
        v62 = type metadata accessor for EncryptedData();
        (*(*(v62 - 8) + 56))(v58, 1, 1, v62);
        sub_100017D5C(v61, v60);
        sub_100017D5C(v61, v60);
        sub_10125A120(1, v61, v60, v58, v38);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v63 = swift_allocObject();
        v64 = *(v38 + 32);
        v65 = *(v38 + 48);
        v66 = *v38;
        *(v63 + 48) = *(v38 + 16);
        *(v63 + 64) = v64;
        *(v63 + 80) = v65;
        *(v63 + 96) = *(v38 + 64);
        *(v63 + 16) = xmmword_101385D80;
        *(v63 + 32) = v66;
        sub_10002E98C(v57, v56);
        sub_1003914F8(v38, v0 + 736);
        v67 = sub_100D11764(v63, v57, v56);
        v68 = *(v0 + 2152);
        v69 = *(v0 + 2144);
        if (v14)
        {
          sub_100016590(v61, v60);
          sub_100391554(v38);
          sub_100006654(v69, v68);
          swift_setDeallocating();
          sub_100391554(v63 + 32);
          swift_deallocClassInstance();
          v39 = v0 + 808;
          v218 = *(v0 + 1920);
          v219 = *(v0 + 1912);
          v220 = *(v0 + 1120);
          sub_100D11DC8(v220, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v220, v218, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v220, v219, type metadata accessor for SharingCircleKeyManager.Instruction);
          swift_errorRetain();
          v221 = Logger.logObject.getter();
          v222 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v221, v222))
          {
            v349 = v222;
            v223 = *(v0 + 1928);
            v224 = *(v0 + 1920);
            v340 = *(v0 + 1912);
            v225 = *(v0 + 2509);
            v226 = swift_slowAlloc();
            v344 = swift_slowAlloc();
            v350 = v344;
            *v226 = 136447747;
            v227 = sub_100C71778();
            v229 = v228;
            sub_100018D00(v223, type metadata accessor for SharingCircleKeyManager.Instruction);
            v230 = sub_1000136BC(v227, v229, &v350);

            *(v226 + 4) = v230;
            *(v226 + 12) = 2082;
            v231 = sub_10125403C(v225);
            v233 = sub_1000136BC(v231, v232, &v350);

            *(v226 + 14) = v233;
            *(v226 + 22) = 2160;
            *(v226 + 24) = 1752392040;
            *(v226 + 32) = 2081;
            sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v234 = dispatch thunk of CustomStringConvertible.description.getter();
            v236 = v235;
            v237 = v224;
            v38 = v0 + 232;
            sub_100018D00(v237, type metadata accessor for SharingCircleKeyManager.Instruction);
            v238 = sub_1000136BC(v234, v236, &v350);

            *(v226 + 34) = v238;
            *(v226 + 42) = 2160;
            *(v226 + 44) = 1752392040;
            *(v226 + 52) = 2081;
            v39 = v0 + 808;
            v239 = dispatch thunk of CustomStringConvertible.description.getter();
            v241 = v240;
            sub_100018D00(v340, type metadata accessor for SharingCircleKeyManager.Instruction);
            v242 = sub_1000136BC(v239, v241, &v350);

            *(v226 + 54) = v242;
            *(v226 + 62) = 2082;
            swift_getErrorValue();
            v243 = Error.localizedDescription.getter();
            v245 = sub_1000136BC(v243, v244, &v350);

            *(v226 + 64) = v245;
            v5 = v221;
            _os_log_impl(&_mh_execute_header, v221, v349, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v226, 0x48u);
            v8 = v344;
            swift_arrayDestroy();
          }

          else
          {
            v8 = *(v0 + 1928);
            v5 = *(v0 + 1920);
            v246 = *(v0 + 1912);

            sub_100018D00(v246, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v5, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
          }

          v14 = 0;
          goto LABEL_42;
        }

        v143 = v67;
        v144 = *(v0 + 1808);
        v145 = *(v0 + 1520);
        v338 = *(v0 + 1512);
        v342 = v60;
        v146 = *(v0 + 1416);
        sub_100006654(v69, v68);
        swift_setDeallocating();
        sub_100391554(v63 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v144, &v145[*(v146 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v145 = v43;
        *&v145[*(v146 + 24)] = v143;
        sub_100D11DC8(v145, v338, type metadata accessor for KeyDropInterface.KeyPackage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v348 = sub_100A5BE40(0, v348[2] + 1, 1, v348);
        }

        v148 = v348[2];
        v147 = v348[3];
        if (v148 >= v147 >> 1)
        {
          v348 = sub_100A5BE40((v147 > 1), v148 + 1, 1, v348);
        }

        v149 = *(v0 + 1960);
        v150 = *(v0 + 1520);
        v151 = *(v0 + 1512);
        v152 = *(v0 + 1504);
        v153 = *(v0 + 1424);
        v154 = *(v0 + 1120);
        v348[2] = v148 + 1;
        sub_100D12974(v151, v348 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v148, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v154, v149, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v150, v152, type metadata accessor for KeyDropInterface.KeyPackage);
        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.default.getter();
        v157 = os_log_type_enabled(v155, v156);
        v8 = *(v0 + 1960);
        v158 = *(v0 + 1520);
        v159 = *(v0 + 1504);
        if (v157)
        {
          v5 = swift_slowAlloc();
          v350 = swift_slowAlloc();
          *v5 = 136446466;
          v160 = sub_100C71778();
          v339 = v158;
          v162 = v161;
          sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
          v163 = sub_1000136BC(v160, v162, &v350);

          *(v5 + 4) = v163;
          *(v5 + 12) = 2082;
          v164 = sub_101255410();
          v166 = v165;
          v8 = type metadata accessor for KeyDropInterface.KeyPackage;
          sub_100018D00(v159, type metadata accessor for KeyDropInterface.KeyPackage);
          v167 = sub_1000136BC(v164, v166, &v350);

          *(v5 + 14) = v167;
          _os_log_impl(&_mh_execute_header, v155, v156, "Keys to upload: %{public}s,\nadded: %{public}s.", v5, 0x16u);
          swift_arrayDestroy();

          v38 = v0 + 232;
          sub_100391554(v346);
          sub_100016590(v61, v342);
          v168 = v339;
        }

        else
        {

          sub_100391554(v346);
          sub_100016590(v61, v342);
          v5 = type metadata accessor for KeyDropInterface.KeyPackage;
          v176 = v159;
          v38 = v0 + 232;
          sub_100018D00(v176, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
          v168 = v158;
        }

        sub_100018D00(v168, type metadata accessor for KeyDropInterface.KeyPackage);
        v14 = 0;
        v39 = v0 + 808;
        goto LABEL_16;
      case 9:
        v110 = *(v0 + 1768);
        v111 = *(v0 + 1760);
        v112 = *(v0 + 1344);
        sub_1000D2A70(*(v0 + 2168), v112, &qword_1016B0478, &unk_1013CDC10);
        v113 = *(v110 + 48);
        *(v0 + 2440) = v113;
        *(v0 + 2448) = (v110 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v111) = v113(v112, 1, v111);
        sub_10000B3A8(v112, &qword_1016B0478, &unk_1013CDC10);
        if (v111 == 1)
        {
          v305 = swift_task_alloc();
          *(v0 + 2456) = v305;
          *v305 = v0;
          v306 = sub_100CD2EEC;
          goto LABEL_118;
        }

        v114 = *(v0 + 2440);
        v115 = *(v0 + 1760);
        v116 = *(v0 + 1336);
        sub_1000D2A70(*(v0 + 2168), v116, &qword_1016B0478, &unk_1013CDC10);
        v117 = v114(v116, 1, v115);
        v118 = *(v0 + 1336);
        if (v117 != 1)
        {
          sub_100D12974(v118, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
          v319 = swift_task_alloc();
          *(v0 + 2472) = v319;
          *v319 = v0;
          v319[1] = sub_100CD5928;
          v320 = *(v0 + 2152);
          v321 = *(v0 + 2144);
          v322 = *(v0 + 1896);
          v323 = *(v0 + 1776);
          v324 = *(v0 + 1384);
          v325 = *(v0 + 1120);

          sub_100CF3F94(v324, v325, v322, v323, v321, v320);
          return;
        }

        v119 = *(v0 + 1968);
        v120 = *(v0 + 1120);
        sub_10000B3A8(v118, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v120, v119, type metadata accessor for SharingCircleKeyManager.Instruction);
        v5 = Logger.logObject.getter();
        v86 = static os_log_type_t.error.getter();
        v121 = os_log_type_enabled(v5, v86);
        v8 = *(v0 + 1968);
        if (!v121)
        {
          goto LABEL_41;
        }

        v88 = swift_slowAlloc();
        v350 = swift_slowAlloc();
        *v88 = 136446466;
        v122 = sub_100C71778();
        v124 = v123;
        sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
        v125 = sub_1000136BC(v122, v124, &v350);

        *(v88 + 4) = v125;
        *(v88 + 12) = 2082;
        v93 = 9;
        goto LABEL_40;
      case 12:
        v70 = *(v0 + 1824);
        v71 = *(v0 + 1816);
        v72 = *(v0 + 1168);
        sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v72, &qword_1016980D0, &unk_10138F3B0);
        if ((*(v70 + 48))(v72, 1, v71) == 1)
        {
          v73 = *(v0 + 1192);
          v74 = *(v0 + 1184);
          v5 = *(v0 + 1176);
          sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
          (*(v73 + 56))(v5, 1, 1, v74);
          goto LABEL_60;
        }

        v129 = *(v0 + 1896);
        v130 = *(v0 + 1872);
        v131 = *(v0 + 1160);
        (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
        sub_100D11DC8(v129 + *(v130 + 24), v131, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_55:
            v173 = *(v0 + 1192);
            v174 = *(v0 + 1184);
            v5 = *(v0 + 1176);
            v175 = *(v0 + 1160);
            (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
            sub_100018D00(v175, type metadata accessor for StableIdentifier);
            (*(v173 + 56))(v5, 1, 1, v174);
            goto LABEL_60;
          }

          v169 = *(v0 + 1824);
          v170 = *(v0 + 1816);
          v171 = *(v0 + 1160);
          v172 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

          v137 = *(v171 + *(v172 + 96));
          (*(v169 + 8))(v171, v170);
        }

        else
        {
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_55;
          }

          v133 = *(v0 + 1824);
          v134 = *(v0 + 1160);
          v135 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

          v136 = (v134 + *(v135 + 96));
          v137 = *v136;
          LOBYTE(v134) = v136[1];

          v138 = *(v133 + 8);
          if (v134)
          {
            v139 = *(v0 + 1816);
            v140 = *(v0 + 1192);
            v5 = *(v0 + 1184);
            v141 = *(v0 + 1176);
            v142 = *(v0 + 1160);
            v138(*(v0 + 1840), v139);
            (*(v140 + 56))(v141, 1, 1, v5);
            v138(v142, v139);
            v39 = v0 + 808;
            goto LABEL_60;
          }

          v138(*(v0 + 1160), *(v0 + 1816));
          v39 = v0 + 808;
        }

        v177 = *(v0 + 1192);
        v178 = *(v0 + 1184);
        v5 = *(v0 + 1176);
        (*(v0 + 2104))(v5, *(v0 + 1840), *(v0 + 1816));
        *(v5 + *(v178 + 20)) = v137;
        (*(v177 + 56))(v5, 0, 1, v178);
LABEL_60:
        v8 = *(v0 + 1176);
        if ((*(*(v0 + 1192) + 48))(v8, 1, *(v0 + 1184)) == 1)
        {
          sub_10000B3A8(v8, &qword_1016B9B20, &qword_1013E3680);
          goto LABEL_16;
        }

        v179 = *(v0 + 1904);
        v180 = *(v0 + 1120);
        sub_100D12974(v8, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
        v181 = *(v180 + *(v179 + 44));
        if (!*(v181 + 16))
        {
          goto LABEL_65;
        }

        v182 = sub_100771F0C(12);
        if ((v183 & 1) == 0)
        {
          goto LABEL_65;
        }

        v184 = *(v0 + 1768);
        v185 = *(v0 + 1760);
        v186 = *(v0 + 1736);
        v187 = *(v0 + 1712);
        v188 = *(v0 + 1320);
        sub_100D11DC8(*(v181 + 56) + *(*(v0 + 1720) + 72) * v182, v186, type metadata accessor for BookmarkMetaData);
        sub_1000D2A70(v186 + *(v187 + 20), v188, &qword_1016B0478, &unk_1013CDC10);
        sub_100018D00(v186, type metadata accessor for BookmarkMetaData);
        if ((*(v184 + 48))(v188, 1, v185) == 1)
        {
          sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
          v39 = v0 + 808;
LABEL_65:
          v189 = *(v0 + 1248);
          v190 = *(v0 + 1240);
          v191 = *(v0 + 1216);
          (*(v189 + 56))(v191, 1, 1, v190);
          static Date.distantPast.getter();
          if ((*(v189 + 48))(v191, 1, v190) != 1)
          {
            sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          v192 = *(v0 + 1320);
          v193 = *(v0 + 1280);
          v194 = *(v0 + 1248);
          v195 = *(v0 + 1240);
          v196 = *(v0 + 1216);
          (*(v194 + 16))(v196, v192 + *(*(v0 + 1760) + 24), v195);
          sub_100018D00(v192, type metadata accessor for KeyDropInterface.KeyAlignment);
          (*(v194 + 56))(v196, 0, 1, v195);
          (*(v194 + 32))(v193, v196, v195);
          v39 = v0 + 808;
        }

        v197 = *(v0 + 1896);
        v198 = *(v0 + 1272);
        v199 = objc_autoreleasePoolPush();
        sub_100D088CC(v197, v198);
        if (v14)
        {

          objc_autoreleasePoolPop(v199);
          return;
        }

        v5 = *(v0 + 1280);
        v200 = *(v0 + 1272);
        v201 = *(v0 + 1248);
        v202 = *(v0 + 1240);
        objc_autoreleasePoolPop(v199);
        sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v203 = dispatch thunk of static Comparable.< infix(_:_:)();
        v204 = *(v201 + 8);
        v204(v200, v202);
        if (v203)
        {
          v8 = *(v0 + 1200);
          v204(*(v0 + 1280), *(v0 + 1240));
          v205 = v8;
        }

        else
        {
          type metadata accessor for PropertyListEncoder();
          swift_allocObject();
          PropertyListEncoder.init()();
          sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA58);
          v206 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
          v208 = v207;
          v343 = *(v0 + 2152);
          v209 = *(v0 + 2144);
          v210 = *(v0 + 1680);
          v211 = v206;

          v212 = type metadata accessor for EncryptedData();
          (*(*(v212 - 8) + 56))(v210, 1, 1, v212);
          sub_100017D5C(v211, v208);
          sub_10125A120(1, v211, v208, v210, v39);
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v213 = swift_allocObject();
          v214 = *(v39 + 32);
          v215 = *(v39 + 48);
          v216 = *v39;
          *(v213 + 48) = *(v39 + 16);
          *(v213 + 64) = v214;
          *(v213 + 80) = v215;
          *(v213 + 96) = *(v39 + 64);
          *(v213 + 16) = xmmword_101385D80;
          *(v213 + 32) = v216;
          sub_10002E98C(v209, v343);
          sub_1003914F8(v39, v0 + 448);
          v217 = sub_100D11764(v213, v209, v343);
          v341 = v211;
          v345 = v208;
          v247 = *(v0 + 1808);
          v248 = *(v0 + 1472);
          v336 = *(v0 + 1464);
          v249 = *(v0 + 1416);
          v250 = v217;
          sub_100006654(*(v0 + 2144), *(v0 + 2152));
          swift_setDeallocating();
          sub_100391554(v213 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v247, &v248[*(v249 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v248 = 12;
          *&v248[*(v249 + 24)] = v250;
          sub_100D11DC8(v248, v336, type metadata accessor for KeyDropInterface.KeyPackage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v348 = sub_100A5BE40(0, v348[2] + 1, 1, v348);
          }

          v252 = v348[2];
          v251 = v348[3];
          if (v252 >= v251 >> 1)
          {
            v348 = sub_100A5BE40((v251 > 1), v252 + 1, 1, v348);
          }

          v253 = *(v0 + 1944);
          v254 = *(v0 + 1472);
          v255 = *(v0 + 1464);
          v256 = *(v0 + 1456);
          v257 = *(v0 + 1424);
          v258 = *(v0 + 1120);
          v348[2] = v252 + 1;
          sub_100D12974(v255, v348 + ((*(v257 + 80) + 32) & ~*(v257 + 80)) + *(v257 + 72) * v252, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100D11DC8(v258, v253, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v254, v256, type metadata accessor for KeyDropInterface.KeyPackage);
          v5 = Logger.logObject.getter();
          v259 = static os_log_type_t.default.getter();
          v260 = os_log_type_enabled(v5, v259);
          v8 = *(v0 + 1944);
          v337 = *(v0 + 1472);
          v261 = *(v0 + 1456);
          v262 = *(v0 + 1280);
          v263 = *(v0 + 1240);
          v264 = *(v0 + 1200);
          if (v260)
          {
            v333 = v259;
            v265 = swift_slowAlloc();
            v350 = swift_slowAlloc();
            *v265 = 136446466;
            v334 = v262;
            v335 = v263;
            v266 = sub_100C71778();
            v268 = v267;
            sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
            v269 = sub_1000136BC(v266, v268, &v350);

            *(v265 + 4) = v269;
            *(v265 + 12) = 2082;
            v270 = sub_101255410();
            v272 = v271;
            v8 = type metadata accessor for KeyDropInterface.KeyPackage;
            sub_100018D00(v261, type metadata accessor for KeyDropInterface.KeyPackage);
            v273 = sub_1000136BC(v270, v272, &v350);

            *(v265 + 14) = v273;
            _os_log_impl(&_mh_execute_header, v5, v333, "Keys to upload: %{public}s,\nadded: %{public}s.", v265, 0x16u);
            swift_arrayDestroy();

            v39 = v0 + 808;
            sub_100391554(v347);
            sub_100016590(v341, v345);
            sub_100018D00(v337, type metadata accessor for KeyDropInterface.KeyPackage);
            v204(v334, v335);
          }

          else
          {

            v39 = v0 + 808;
            sub_100391554(v347);
            sub_100016590(v341, v345);
            v5 = type metadata accessor for KeyDropInterface.KeyPackage;
            sub_100018D00(v261, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v337, type metadata accessor for KeyDropInterface.KeyPackage);
            v204(v262, v263);
          }

          v205 = v264;
        }

        sub_100018D00(v205, type metadata accessor for KeyDropBeaconGroupAttributes);
        v14 = 0;
        v38 = v0 + 232;
        goto LABEL_16;
      case 13:
        v294 = swift_task_alloc();
        *(v0 + 2488) = v294;
        *v294 = v0;
        v294[1] = sub_100CD880C;
        v295 = *(v0 + 1896);
        v296 = *(v0 + 1232);

        sub_100CF5FBC(v296, v295);
        return;
      case 16:
        v301 = swift_task_alloc();
        *(v0 + 2496) = v301;
        *v301 = v0;
        v301[1] = sub_100CDBC44;
        v302 = *(v0 + 1896);
        v303 = *(v0 + 1264);
        v304 = *(v0 + 1144);

        sub_100CF6C9C(v303, v304, v302);
        return;
      default:
        goto LABEL_16;
    }
  }
}

uint64_t sub_100CBED44(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 2256) = a1;

  v3 = swift_task_alloc();
  *(v2 + 2264) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100D13BF8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D13BF8(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100CBEF20;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100CBEF20(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 2272) = v1;

  if (v1)
  {
    v6 = v4[141];

    return _swift_task_switch(sub_100CBF2C0, v6, 0);
  }

  else
  {
    v7 = v4[236];
    v8 = v4[234];

    v4[285] = a1;
    v9 = *(v8 + 20);
    v10 = *(v8 + 32);
    v11 = swift_task_alloc();
    v4[286] = v11;
    *v11 = v5;
    v11[1] = sub_100CBF0D4;
    v12 = v4[212];

    return sub_1010CD424(v12, v7 + v9, v7 + v10);
  }
}

uint64_t sub_100CBF0D4()
{
  v1 = *(*v0 + 1128);

  return _swift_task_switch(sub_100CBF1E4, v1, 0);
}

uint64_t sub_100CBF1E4()
{
  v1 = v0[236];
  v2 = v0[212];

  sub_100018D00(v1, type metadata accessor for OwnedBeaconRecord);
  v3 = *v2;
  v0[287] = *v2;
  if (v3)
  {
    v4 = v3 / 0x60 + 1;
  }

  else
  {
    v4 = 0;
  }

  v0[288] = v4;
  v5 = swift_task_alloc();
  v0[289] = v5;
  *v5 = v0;
  v5[1] = sub_100CC1B30;

  return sub_100C721E8();
}

void sub_100CBF2C0()
{
  v309 = v0;
  v307 = (v0 + 232);
  v306 = (v0 + 808);
  v1 = *(v0 + 2240);
  v2 = *(v0 + 2232);
  v3 = *(v0 + 1888);

  sub_100016590(v2, v1);
  sub_100018D00(v3, type metadata accessor for OwnedBeaconRecord);
  v4 = *(v0 + 1920);
  v5 = *(v0 + 1912);
  v6 = *(v0 + 1120);
  sub_100D11DC8(v6, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v6, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v6, v5, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v303 = v8;
    v9 = *(v0 + 1928);
    v296 = v7;
    v10 = *(v0 + 1920);
    v298 = *(v0 + 1912);
    v11 = *(v0 + 2509);
    v12 = swift_slowAlloc();
    v308[0] = swift_slowAlloc();
    *v12 = 136447747;
    v13 = sub_100C71778();
    v15 = v14;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v16 = sub_1000136BC(v13, v15, v308);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v17 = sub_10125403C(v11);
    v19 = sub_1000136BC(v17, v18, v308);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    v23 = sub_1000136BC(v20, v22, v308);

    *(v12 + 34) = v23;
    *(v12 + 42) = 2160;
    *(v12 + 44) = 1752392040;
    *(v12 + 52) = 2081;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    sub_100018D00(v298, type metadata accessor for SharingCircleKeyManager.Instruction);
    v27 = sub_1000136BC(v24, v26, v308);

    *(v12 + 54) = v27;
    *(v12 + 62) = 2082;
    swift_getErrorValue();
    v28 = Error.localizedDescription.getter();
    v30 = sub_1000136BC(v28, v29, v308);

    *(v12 + 64) = v30;
    v31 = v296;
    _os_log_impl(&_mh_execute_header, v296, v303, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v12, 0x48u);
    swift_arrayDestroy();

    goto LABEL_4;
  }

  v32 = *(v0 + 1928);
  v33 = *(v0 + 1920);
  v34 = *(v0 + 1912);

  sub_100018D00(v34, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v33, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v32, type metadata accessor for SharingCircleKeyManager.Instruction);
  while (1)
  {
    v35 = *(v0 + 2208);
LABEL_6:
    v36 = *(v0 + 2200) + 1;
    if (v36 == *(v0 + 2184))
    {

      v250 = *(v0 + 1896);
      v251 = *(v0 + 1808);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      sub_1001BAF34(v0 + 880);
      sub_100018D00(v251, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v250, type metadata accessor for OwnedBeaconRecord);

      v252 = *(v0 + 8);

      v252(v35);
      return;
    }

    *(v0 + 2208) = v35;
    *(v0 + 2200) = v36;
    *(v0 + 2192) = 0;
    v37 = *(v0 + 2176);
    if (v36 >= *(v37 + 16))
    {
      __break(1u);
      return;
    }

    v38 = *(v0 + 2048);
    v39 = *(v0 + 1120);
    v40 = *(v37 + v36 + 32);
    *(v0 + 2509) = v40;
    sub_100D11DC8(v39, v38, type metadata accessor for SharingCircleKeyManager.Instruction);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 2048);
    if (v43)
    {
      v45 = swift_slowAlloc();
      v308[0] = swift_slowAlloc();
      *v45 = 136446466;
      v46 = sub_100C71778();
      v48 = v47;
      sub_100018D00(v44, type metadata accessor for SharingCircleKeyManager.Instruction);
      v49 = sub_1000136BC(v46, v48, v308);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      v50 = sub_10125403C(v40);
      v52 = sub_1000136BC(v50, v51, v308);

      *(v45 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v41, v42, "Keys to upload: %{public}s. Creating package for %{public}s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v44, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    switch(v40)
    {
      case 1:
        v257 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
        if (*(v257 + 16) && (v258 = sub_100771F0C(1), (v259 & 1) != 0))
        {
          v260 = *(v0 + 1752);
          sub_100D11DC8(*(v257 + 56) + *(*(v0 + 1720) + 72) * v258, v260, type metadata accessor for BookmarkMetaData);
          v261 = *(v260 + 8);
          sub_100018D00(v260, type metadata accessor for BookmarkMetaData);
        }

        else
        {
          v261 = 0;
        }

        *(v0 + 2216) = v261;
        v290 = *(v0 + 2504);
        v291 = *(v0 + 1120);
        v292 = swift_task_alloc();
        *(v0 + 2224) = v292;
        *v292 = v0;
        v292[1] = sub_100CBBD44;
        v293 = *(v0 + 1704);

        sub_100CFC71C(v293, v291 + v290);
        return;
      case 4:
        v262 = swift_task_alloc();
        *(v0 + 2328) = v262;
        *v262 = v0;
        v262[1] = sub_100CC4E24;
        v263 = *(v0 + 1896);
        v264 = *(v0 + 1408);
        v265 = *(v0 + 1120);

        sub_100CF172C(v264, v265, v263, v0 + 880);
        return;
      case 5:
        v221 = *(v0 + 1768);
        v222 = *(v0 + 1760);
        v223 = *(v0 + 1376);
        sub_1000D2A70(*(v0 + 2168), v223, &qword_1016B0478, &unk_1013CDC10);
        v224 = *(v221 + 48);
        *(v0 + 2344) = v224;
        *(v0 + 2352) = (v221 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v222) = v224(v223, 1, v222);
        sub_10000B3A8(v223, &qword_1016B0478, &unk_1013CDC10);
        if (v222 == 1)
        {
          v269 = swift_task_alloc();
          *(v0 + 2360) = v269;
          *v269 = v0;
          v270 = sub_100CC7CAC;
          goto LABEL_83;
        }

        v225 = *(v0 + 2344);
        v226 = *(v0 + 1760);
        v227 = *(v0 + 1368);
        sub_1000D2A70(*(v0 + 2168), v227, &qword_1016B0478, &unk_1013CDC10);
        v228 = v225(v227, 1, v226);
        v229 = *(v0 + 1368);
        if (v228 == 1)
        {
          v230 = *(v0 + 2000);
          v231 = *(v0 + 1120);
          sub_10000B3A8(v229, &qword_1016B0478, &unk_1013CDC10);
          sub_100D11DC8(v231, v230, type metadata accessor for SharingCircleKeyManager.Instruction);
          v31 = Logger.logObject.getter();
          v206 = static os_log_type_t.error.getter();
          v232 = os_log_type_enabled(v31, v206);
          v208 = *(v0 + 2000);
          if (v232)
          {
            v237 = swift_slowAlloc();
            v308[0] = swift_slowAlloc();
            *v237 = 136446466;
            v243 = sub_100C71778();
            v245 = v244;
            sub_100018D00(v208, type metadata accessor for SharingCircleKeyManager.Instruction);
            v246 = sub_1000136BC(v243, v245, v308);

            *(v237 + 4) = v246;
            *(v237 + 12) = 2082;
            v242 = 5;
LABEL_64:
            v247 = sub_10125403C(v242);
            v249 = sub_1000136BC(v247, v248, v308);

            *(v237 + 14) = v249;
            _os_log_impl(&_mh_execute_header, v31, v206, "No key alignment available for %{public}s. No package created for %{public}s", v237, 0x16u);
            swift_arrayDestroy();

LABEL_4:

            continue;
          }

          goto LABEL_62;
        }

        sub_100D12974(v229, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
        v282 = swift_task_alloc();
        *(v0 + 2376) = v282;
        *v282 = v0;
        v282[1] = sub_100CCA6E8;
        v275 = *(v0 + 2152);
        v276 = *(v0 + 2144);
        v277 = *(v0 + 1896);
        v278 = *(v0 + 1792);
        v279 = *(v0 + 1400);
        v280 = *(v0 + 1120);
        v281 = 0;
LABEL_88:

        sub_100CF2904(v279, v280, v277, v278, v281, v276, v275);
        return;
      case 6:
        v209 = *(v0 + 1768);
        v210 = *(v0 + 1760);
        v211 = *(v0 + 1360);
        sub_1000D2A70(*(v0 + 2168), v211, &qword_1016B0478, &unk_1013CDC10);
        v212 = *(v209 + 48);
        *(v0 + 2392) = v212;
        *(v0 + 2400) = (v209 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v210) = v212(v211, 1, v210);
        sub_10000B3A8(v211, &qword_1016B0478, &unk_1013CDC10);
        if (v210 == 1)
        {
          v269 = swift_task_alloc();
          *(v0 + 2408) = v269;
          *v269 = v0;
          v270 = sub_100CCD5CC;
          goto LABEL_83;
        }

        v213 = *(v0 + 2392);
        v214 = *(v0 + 1760);
        v215 = *(v0 + 1352);
        sub_1000D2A70(*(v0 + 2168), v215, &qword_1016B0478, &unk_1013CDC10);
        v216 = v213(v215, 1, v214);
        v217 = *(v0 + 1352);
        if (v216 != 1)
        {
          sub_100D12974(v217, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
          v274 = swift_task_alloc();
          *(v0 + 2424) = v274;
          *v274 = v0;
          v274[1] = sub_100CD0008;
          v275 = *(v0 + 2152);
          v276 = *(v0 + 2144);
          v277 = *(v0 + 1896);
          v278 = *(v0 + 1784);
          v279 = *(v0 + 1392);
          v280 = *(v0 + 1120);
          v281 = 1;
          goto LABEL_88;
        }

        v218 = *(v0 + 1984);
        v219 = *(v0 + 1120);
        sub_10000B3A8(v217, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v219, v218, type metadata accessor for SharingCircleKeyManager.Instruction);
        v31 = Logger.logObject.getter();
        v206 = static os_log_type_t.error.getter();
        v220 = os_log_type_enabled(v31, v206);
        v208 = *(v0 + 1984);
        if (v220)
        {
          v237 = swift_slowAlloc();
          v308[0] = swift_slowAlloc();
          *v237 = 136446466;
          v233 = sub_100C71778();
          v235 = v234;
          sub_100018D00(v208, type metadata accessor for SharingCircleKeyManager.Instruction);
          v236 = sub_1000136BC(v233, v235, v308);

          *(v237 + 4) = v236;
          *(v237 + 12) = 2082;
          v242 = 6;
          goto LABEL_64;
        }

        goto LABEL_62;
      case 8:
      case 10:
        v53 = *(v0 + 936);
        if (*(v53 + 16))
        {
          v54 = sub_100771F0C(v40);
          if (v55)
          {
            v56 = *(v0 + 2152);
            v57 = *(v0 + 2144);
            v58 = *(v0 + 1680);
            v59 = (*(v53 + 56) + 16 * v54);
            v61 = *v59;
            v60 = v59[1];
            v62 = type metadata accessor for EncryptedData();
            (*(*(v62 - 8) + 56))(v58, 1, 1, v62);
            sub_100017D5C(v61, v60);
            sub_100017D5C(v61, v60);
            sub_10125A120(1, v61, v60, v58, v307);
            sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
            v63 = swift_allocObject();
            v64 = *(v0 + 264);
            v65 = *(v0 + 280);
            v66 = *v307;
            *(v63 + 48) = *(v0 + 248);
            *(v63 + 64) = v64;
            *(v63 + 80) = v65;
            *(v63 + 96) = *(v0 + 296);
            *(v63 + 16) = xmmword_101385D80;
            *(v63 + 32) = v66;
            sub_10002E98C(v57, v56);
            sub_1003914F8(v307, v0 + 736);
            v67 = sub_100D11764(v63, v57, v56);
            v304 = v61;
            v68 = *(v0 + 1808);
            v69 = *(v0 + 1520);
            v70 = *(v0 + 1512);
            v71 = *(v0 + 1416);
            sub_100006654(*(v0 + 2144), *(v0 + 2152));
            swift_setDeallocating();
            sub_100391554(v63 + 32);
            swift_deallocClassInstance();
            sub_100D11DC8(v68, &v69[*(v71 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v69 = v40;
            *&v69[*(v71 + 24)] = v67;
            sub_100D11DC8(v69, v70, type metadata accessor for KeyDropInterface.KeyPackage);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_100A5BE40(0, v35[2] + 1, 1, v35);
            }

            v73 = v35[2];
            v72 = v35[3];
            if (v73 >= v72 >> 1)
            {
              v35 = sub_100A5BE40((v72 > 1), v73 + 1, 1, v35);
            }

            v74 = *(v0 + 1960);
            v75 = *(v0 + 1520);
            v76 = *(v0 + 1512);
            v77 = *(v0 + 1504);
            v78 = *(v0 + 1424);
            v79 = *(v0 + 1120);
            v35[2] = v73 + 1;
            sub_100D12974(v76, v35 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v73, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100D11DC8(v79, v74, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100D11DC8(v75, v77, type metadata accessor for KeyDropInterface.KeyPackage);
            v80 = Logger.logObject.getter();
            v81 = static os_log_type_t.default.getter();
            v82 = os_log_type_enabled(v80, v81);
            v83 = *(v0 + 1960);
            v84 = *(v0 + 1520);
            v85 = *(v0 + 1504);
            if (v82)
            {
              v86 = swift_slowAlloc();
              v308[0] = swift_slowAlloc();
              *v86 = 136446466;
              v299 = v60;
              v301 = v84;
              v87 = sub_100C71778();
              v89 = v88;
              sub_100018D00(v83, type metadata accessor for SharingCircleKeyManager.Instruction);
              v90 = sub_1000136BC(v87, v89, v308);

              *(v86 + 4) = v90;
              *(v86 + 12) = 2082;
              v91 = sub_101255410();
              v93 = v92;
              sub_100018D00(v85, type metadata accessor for KeyDropInterface.KeyPackage);
              v94 = sub_1000136BC(v91, v93, v308);

              *(v86 + 14) = v94;
              _os_log_impl(&_mh_execute_header, v80, v81, "Keys to upload: %{public}s,\nadded: %{public}s.", v86, 0x16u);
              swift_arrayDestroy();

              sub_100391554(v307);
              sub_100016590(v304, v299);
              sub_100018D00(v301, type metadata accessor for KeyDropInterface.KeyPackage);
            }

            else
            {

              sub_100391554(v307);
              sub_100016590(v304, v60);
              sub_100018D00(v85, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v83, type metadata accessor for SharingCircleKeyManager.Instruction);
              sub_100018D00(v84, type metadata accessor for KeyDropInterface.KeyPackage);
            }
          }
        }

        goto LABEL_6;
      case 9:
        v195 = *(v0 + 1768);
        v196 = *(v0 + 1760);
        v197 = *(v0 + 1344);
        sub_1000D2A70(*(v0 + 2168), v197, &qword_1016B0478, &unk_1013CDC10);
        v198 = *(v195 + 48);
        *(v0 + 2440) = v198;
        *(v0 + 2448) = (v195 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v196) = v198(v197, 1, v196);
        sub_10000B3A8(v197, &qword_1016B0478, &unk_1013CDC10);
        if (v196 == 1)
        {
          v269 = swift_task_alloc();
          *(v0 + 2456) = v269;
          *v269 = v0;
          v270 = sub_100CD2EEC;
LABEL_83:
          v269[1] = v270;
          v271 = *(v0 + 2160);
          v272 = *(v0 + 1896);
          v273 = *(v0 + 1128);

          sub_100CF0FB4(v272, v271, v273);
          return;
        }

        v199 = *(v0 + 2440);
        v200 = *(v0 + 1760);
        v201 = *(v0 + 1336);
        sub_1000D2A70(*(v0 + 2168), v201, &qword_1016B0478, &unk_1013CDC10);
        v202 = v199(v201, 1, v200);
        v203 = *(v0 + 1336);
        if (v202 != 1)
        {
          sub_100D12974(v203, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
          v283 = swift_task_alloc();
          *(v0 + 2472) = v283;
          *v283 = v0;
          v283[1] = sub_100CD5928;
          v284 = *(v0 + 2152);
          v285 = *(v0 + 2144);
          v286 = *(v0 + 1896);
          v287 = *(v0 + 1776);
          v288 = *(v0 + 1384);
          v289 = *(v0 + 1120);

          sub_100CF3F94(v288, v289, v286, v287, v285, v284);
          return;
        }

        v204 = *(v0 + 1968);
        v205 = *(v0 + 1120);
        sub_10000B3A8(v203, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v205, v204, type metadata accessor for SharingCircleKeyManager.Instruction);
        v31 = Logger.logObject.getter();
        v206 = static os_log_type_t.error.getter();
        v207 = os_log_type_enabled(v31, v206);
        v208 = *(v0 + 1968);
        if (v207)
        {
          v237 = swift_slowAlloc();
          v308[0] = swift_slowAlloc();
          *v237 = 136446466;
          v238 = sub_100C71778();
          v240 = v239;
          sub_100018D00(v208, type metadata accessor for SharingCircleKeyManager.Instruction);
          v241 = sub_1000136BC(v238, v240, v308);

          *(v237 + 4) = v241;
          *(v237 + 12) = 2082;
          v242 = 9;
          goto LABEL_64;
        }

LABEL_62:

        sub_100018D00(v208, type metadata accessor for SharingCircleKeyManager.Instruction);
        break;
      case 12:
        v95 = *(v0 + 1824);
        v96 = *(v0 + 1816);
        v97 = *(v0 + 1168);
        sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v97, &qword_1016980D0, &unk_10138F3B0);
        if ((*(v95 + 48))(v97, 1, v96) == 1)
        {
          v98 = *(v0 + 1192);
          v99 = *(v0 + 1184);
          v100 = *(v0 + 1176);
          sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
          (*(v98 + 56))(v100, 1, 1, v99);
          goto LABEL_32;
        }

        v101 = *(v0 + 1896);
        v102 = *(v0 + 1872);
        v103 = *(v0 + 1160);
        (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
        sub_100D11DC8(v101 + *(v102 + 24), v103, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_29:
            v120 = *(v0 + 1192);
            v121 = *(v0 + 1184);
            v122 = *(v0 + 1176);
            v123 = *(v0 + 1160);
            (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
            sub_100018D00(v123, type metadata accessor for StableIdentifier);
            (*(v120 + 56))(v122, 1, 1, v121);
            goto LABEL_32;
          }

          v116 = *(v0 + 1824);
          v117 = *(v0 + 1816);
          v118 = *(v0 + 1160);
          v119 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

          v109 = *(v118 + *(v119 + 96));
          (*(v116 + 8))(v118, v117);
        }

        else
        {
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_29;
          }

          v105 = *(v0 + 1824);
          v106 = *(v0 + 1160);
          v107 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

          v108 = (v106 + *(v107 + 96));
          v109 = *v108;
          LOBYTE(v106) = v108[1];

          v110 = *(v105 + 8);
          if (v106)
          {
            v111 = *(v0 + 1816);
            v112 = *(v0 + 1192);
            v113 = *(v0 + 1184);
            v114 = *(v0 + 1176);
            v115 = *(v0 + 1160);
            v110(*(v0 + 1840), v111);
            (*(v112 + 56))(v114, 1, 1, v113);
            v110(v115, v111);
            goto LABEL_32;
          }

          v110(*(v0 + 1160), *(v0 + 1816));
        }

        v124 = *(v0 + 1192);
        v125 = *(v0 + 1184);
        v126 = *(v0 + 1176);
        (*(v0 + 2104))(v126, *(v0 + 1840), *(v0 + 1816));
        *(v126 + *(v125 + 20)) = v109;
        (*(v124 + 56))(v126, 0, 1, v125);
LABEL_32:
        v127 = *(v0 + 1176);
        if ((*(*(v0 + 1192) + 48))(v127, 1, *(v0 + 1184)) == 1)
        {
          sub_10000B3A8(v127, &qword_1016B9B20, &qword_1013E3680);
          goto LABEL_6;
        }

        v128 = *(v0 + 1904);
        v129 = *(v0 + 1120);
        sub_100D12974(v127, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
        v130 = *(v129 + *(v128 + 44));
        if (!*(v130 + 16))
        {
          goto LABEL_38;
        }

        v131 = sub_100771F0C(12);
        if ((v132 & 1) == 0)
        {
          goto LABEL_38;
        }

        v133 = *(v0 + 1768);
        v134 = *(v0 + 1760);
        v135 = *(v0 + 1736);
        v136 = *(v0 + 1712);
        v137 = *(v0 + 1320);
        sub_100D11DC8(*(v130 + 56) + *(*(v0 + 1720) + 72) * v131, v135, type metadata accessor for BookmarkMetaData);
        sub_1000D2A70(v135 + *(v136 + 20), v137, &qword_1016B0478, &unk_1013CDC10);
        sub_100018D00(v135, type metadata accessor for BookmarkMetaData);
        if ((*(v133 + 48))(v137, 1, v134) == 1)
        {
          sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
LABEL_38:
          v138 = *(v0 + 1248);
          v139 = *(v0 + 1240);
          v140 = *(v0 + 1216);
          (*(v138 + 56))(v140, 1, 1, v139);
          static Date.distantPast.getter();
          if ((*(v138 + 48))(v140, 1, v139) != 1)
          {
            sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          v141 = *(v0 + 1320);
          v142 = *(v0 + 1280);
          v143 = *(v0 + 1248);
          v144 = *(v0 + 1240);
          v145 = *(v0 + 1216);
          (*(v143 + 16))(v145, v141 + *(*(v0 + 1760) + 24), v144);
          sub_100018D00(v141, type metadata accessor for KeyDropInterface.KeyAlignment);
          (*(v143 + 56))(v145, 0, 1, v144);
          (*(v143 + 32))(v142, v145, v144);
        }

        v146 = *(v0 + 1896);
        v147 = *(v0 + 1272);
        v148 = objc_autoreleasePoolPush();
        sub_100D088CC(v146, v147);
        v149 = *(v0 + 1272);
        v150 = *(v0 + 1248);
        v151 = *(v0 + 1240);
        objc_autoreleasePoolPop(v148);
        sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        LOBYTE(v148) = dispatch thunk of static Comparable.< infix(_:_:)();
        v152 = *(v150 + 8);
        v152(v149, v151);
        if (v148)
        {
          v153 = *(v0 + 1200);
          v152(*(v0 + 1280), *(v0 + 1240));
          sub_100018D00(v153, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        else
        {
          type metadata accessor for PropertyListEncoder();
          swift_allocObject();
          PropertyListEncoder.init()();
          sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA58);
          v154 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
          v156 = v155;
          v305 = v152;
          v157 = *(v0 + 2152);
          v158 = *(v0 + 2144);
          v159 = *(v0 + 1680);
          v160 = v154;

          v161 = type metadata accessor for EncryptedData();
          (*(*(v161 - 8) + 56))(v159, 1, 1, v161);
          sub_100017D5C(v160, v156);
          v300 = v160;
          v302 = v156;
          sub_10125A120(1, v160, v156, v159, v306);
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v162 = swift_allocObject();
          v163 = *(v0 + 840);
          v164 = *(v0 + 856);
          v165 = *v306;
          *(v162 + 48) = *(v0 + 824);
          *(v162 + 64) = v163;
          *(v162 + 80) = v164;
          *(v162 + 96) = *(v0 + 872);
          *(v162 + 16) = xmmword_101385D80;
          *(v162 + 32) = v165;
          sub_10002E98C(v158, v157);
          sub_1003914F8(v306, v0 + 448);
          v166 = sub_100D11764(v162, v158, v157);
          v167 = *(v0 + 1808);
          v168 = *(v0 + 1472);
          v169 = *(v0 + 1464);
          v170 = *(v0 + 1416);
          sub_100006654(*(v0 + 2144), *(v0 + 2152));
          swift_setDeallocating();
          sub_100391554(v162 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v167, &v168[*(v170 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v168 = 12;
          *&v168[*(v170 + 24)] = v166;
          sub_100D11DC8(v168, v169, type metadata accessor for KeyDropInterface.KeyPackage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_100A5BE40(0, v35[2] + 1, 1, v35);
          }

          v172 = v35[2];
          v171 = v35[3];
          if (v172 >= v171 >> 1)
          {
            v35 = sub_100A5BE40((v171 > 1), v172 + 1, 1, v35);
          }

          v173 = *(v0 + 1944);
          v174 = *(v0 + 1472);
          v175 = *(v0 + 1464);
          v176 = *(v0 + 1456);
          v177 = *(v0 + 1424);
          v178 = *(v0 + 1120);
          v35[2] = v172 + 1;
          sub_100D12974(v175, v35 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v172, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100D11DC8(v178, v173, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v174, v176, type metadata accessor for KeyDropInterface.KeyPackage);
          v179 = Logger.logObject.getter();
          v180 = static os_log_type_t.default.getter();
          v181 = os_log_type_enabled(v179, v180);
          v182 = *(v0 + 1944);
          v183 = *(v0 + 1456);
          v184 = *(v0 + 1280);
          v295 = *(v0 + 1472);
          v297 = *(v0 + 1240);
          v185 = *(v0 + 1200);
          if (v181)
          {
            v186 = swift_slowAlloc();
            v308[0] = swift_slowAlloc();
            *v186 = 136446466;
            v294 = v184;
            v187 = sub_100C71778();
            v189 = v188;
            sub_100018D00(v182, type metadata accessor for SharingCircleKeyManager.Instruction);
            v190 = sub_1000136BC(v187, v189, v308);

            *(v186 + 4) = v190;
            *(v186 + 12) = 2082;
            v191 = sub_101255410();
            v193 = v192;
            sub_100018D00(v183, type metadata accessor for KeyDropInterface.KeyPackage);
            v194 = sub_1000136BC(v191, v193, v308);

            *(v186 + 14) = v194;
            _os_log_impl(&_mh_execute_header, v179, v180, "Keys to upload: %{public}s,\nadded: %{public}s.", v186, 0x16u);
            swift_arrayDestroy();

            sub_100391554(v306);
            sub_100016590(v300, v302);
            sub_100018D00(v295, type metadata accessor for KeyDropInterface.KeyPackage);
            v305(v294, v297);
          }

          else
          {

            sub_100391554(v306);
            sub_100016590(v300, v302);
            sub_100018D00(v183, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100018D00(v182, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v295, type metadata accessor for KeyDropInterface.KeyPackage);
            v305(v184, v297);
          }

          sub_100018D00(v185, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        goto LABEL_6;
      case 13:
        v266 = swift_task_alloc();
        *(v0 + 2488) = v266;
        *v266 = v0;
        v266[1] = sub_100CD880C;
        v267 = *(v0 + 1896);
        v268 = *(v0 + 1232);

        sub_100CF5FBC(v268, v267);
        return;
      case 16:
        v253 = swift_task_alloc();
        *(v0 + 2496) = v253;
        *v253 = v0;
        v253[1] = sub_100CDBC44;
        v254 = *(v0 + 1896);
        v255 = *(v0 + 1264);
        v256 = *(v0 + 1144);

        sub_100CF6C9C(v255, v256, v254);
        return;
      default:
        goto LABEL_6;
    }
  }
}

uint64_t sub_100CC1B30(double a1)
{
  v2 = *(*v1 + 1128);
  *(*v1 + 2320) = a1;

  return _swift_task_switch(sub_100CC1C44, v2, 0);
}

void sub_100CC1C44()
{
  v387 = v0;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2272);
  OS_dispatch_queue.sync<A>(execute:)();
  v383 = v1;
  v2 = sub_101073C10(*(v0 + 1096));

  if (v2 < 0)
  {
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v374 = v0 + 232;
  v371 = v0 + 808;
  v4 = *(v0 + 2304);
  v5 = *(v0 + 2216);
  if (!v5)
  {
    goto LABEL_12;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_137;
  }

  v6 = *(v0 + 2320);
  v7 = v2 * 60.0;
  v8 = v6 / v7;
  v9 = v4 >= v5;
  v10 = v4 - v5;
  if (v10 != 0 && v9)
  {
    if (COERCE_UNSIGNED_INT64(fabs(v6 / v7)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v8 > -1.0)
      {
        if (v8 < 1.84467441e19)
        {
          if (v10 <= v8)
          {
            goto LABEL_87;
          }

LABEL_12:
          v369 = *(v0 + 2296);
          v370 = *(v0 + 2304);
          v372 = *(v0 + 2240);
          v11 = *(v0 + 2232);
          v375 = *(v0 + 2144);
          v379 = *(v0 + 2152);
          v12 = *(v0 + 1800);
          v13 = *(v0 + 1760);
          v14 = *(v0 + 1696);
          v15 = *(v0 + 1688);
          v16 = *(v0 + 1680);
          v17 = *(v0 + 1240);
          v18 = *(*(v0 + 1248) + 16);
          v18(v12, *(v0 + 1896) + *(*(v0 + 1872) + 32), v17);
          v18(v12 + *(v13 + 24), v14 + *(v15 + 36), v17);
          *(v12 + *(v13 + 20)) = v369;
          v19 = type metadata accessor for EncryptedData();
          (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
          sub_100017D5C(v11, v372);
          sub_10125A120(v370, v11, v372, v16, (v0 + 304));
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v20 = swift_allocObject();
          v21 = *(v0 + 336);
          v22 = *(v0 + 352);
          v23 = *(v0 + 304);
          *(v20 + 48) = *(v0 + 320);
          *(v20 + 64) = v21;
          *(v20 + 80) = v22;
          *(v20 + 96) = *(v0 + 368);
          *(v20 + 16) = xmmword_101385D80;
          *(v20 + 32) = v23;
          sub_10002E98C(v375, v379);
          sub_1003914F8(v0 + 304, v0 + 88);
          v24 = sub_100D11764(v20, v375, v379);
          v25 = *(v0 + 2152);
          v26 = *(v0 + 2144);
          v27 = *(v0 + 1800);
          if (v383)
          {
            v28 = *(v0 + 1696);
            sub_100016590(*(v0 + 2232), *(v0 + 2240));
            sub_100391554(v0 + 304);
            sub_100006654(v26, v25);
            swift_setDeallocating();
            sub_100391554(v20 + 32);
            swift_deallocClassInstance();
            sub_100018D00(v27, type metadata accessor for KeyDropInterface.KeyAlignment);
            sub_10000B3A8(v28, &unk_1016C8FC0, &unk_10139D7D0);
            goto LABEL_14;
          }

          v285 = v24;
          v286 = *(v0 + 1672);
          v287 = *(v0 + 1664);
          v288 = *(v0 + 1416);
          sub_100006654(*(v0 + 2144), *(v0 + 2152));
          swift_setDeallocating();
          sub_100391554(v20 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v27, &v286[*(v288 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v286 = 1;
          *&v286[*(v288 + 24)] = v285;
          sub_100D11DC8(v286, v287, type metadata accessor for KeyDropInterface.KeyPackage);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v3 = *(v0 + 2208);
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_95;
          }

          goto LABEL_145;
        }

LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

LABEL_87:
  sub_100D11DC8(*(v0 + 1120), *(v0 + 2032), type metadata accessor for SharingCircleKeyManager.Instruction);
  v57 = Logger.logObject.getter();
  v269 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v57, v269))
  {
    v56 = *(v0 + 2240);
    v282 = *(v0 + 2232);
    v283 = *(v0 + 2032);
    v284 = *(v0 + 1696);

    sub_100016590(v282, v56);
    sub_100018D00(v283, type metadata accessor for SharingCircleKeyManager.Instruction);
    v58 = sub_10000B3A8(v284, &unk_1016C8FC0, &unk_10139D7D0);
    goto LABEL_18;
  }

  v270 = *(v0 + 2304);
  v271 = swift_slowAlloc();
  v272 = swift_slowAlloc();
  *(v0 + 1104) = v272;
  *v271 = 134218498;
  *(v271 + 4) = v270;
  *(v271 + 12) = 2048;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_141;
  }

  if (v8 <= -1.0)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (v8 >= 1.84467441e19)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v273 = *(v0 + 2304);
  v9 = __CFADD__(v8, v273);
  v274 = v8 + v273;
  if (v9)
  {
LABEL_144:
    __break(1u);
LABEL_145:
    v3 = sub_100A5BE40(0, v3[2] + 1, 1, v3);
LABEL_95:
    v291 = v3[2];
    v290 = v3[3];
    if (v291 >= v290 >> 1)
    {
      v378 = sub_100A5BE40((v290 > 1), v291 + 1, 1, v3);
    }

    else
    {
      v378 = v3;
    }

    v292 = *(v0 + 2040);
    v293 = *(v0 + 1672);
    v294 = *(v0 + 1664);
    v295 = *(v0 + 1656);
    v296 = *(v0 + 1424);
    v297 = *(v0 + 1120);
    v378[2] = v291 + 1;
    sub_100D12974(v294, v378 + ((*(v296 + 80) + 32) & ~*(v296 + 80)) + *(v296 + 72) * v291, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v297, v292, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v293, v295, type metadata accessor for KeyDropInterface.KeyPackage);
    v298 = Logger.logObject.getter();
    v299 = static os_log_type_t.default.getter();
    v300 = os_log_type_enabled(v298, v299);
    v301 = *(v0 + 2240);
    v302 = *(v0 + 2232);
    v56 = *(v0 + 2040);
    v303 = *(v0 + 1800);
    v304 = *(v0 + 1696);
    v305 = *(v0 + 1672);
    v306 = *(v0 + 1656);
    if (v300)
    {
      v382 = *(v0 + 2240);
      v57 = swift_slowAlloc();
      v386[0] = swift_slowAlloc();
      *v57 = 136446466;
      v373 = v303;
      v307 = sub_100C71778();
      v370 = v305;
      v309 = v308;
      sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
      v310 = sub_1000136BC(v307, v309, v386);

      *(v57 + 4) = v310;
      *(v57 + 12) = 2082;
      v311 = sub_101255410();
      v313 = v312;
      v56 = type metadata accessor for KeyDropInterface.KeyPackage;
      sub_100018D00(v306, type metadata accessor for KeyDropInterface.KeyPackage);
      v314 = sub_1000136BC(v311, v313, v386);

      *(v57 + 14) = v314;
      _os_log_impl(&_mh_execute_header, v298, v299, "Keys to upload: %{public}s,\nadded: %{public}s.", v57, 0x16u);
      swift_arrayDestroy();

      sub_100391554(v0 + 304);
      sub_100016590(v302, v382);
      sub_100018D00(v370, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v373, type metadata accessor for KeyDropInterface.KeyAlignment);
    }

    else
    {

      sub_100391554(v0 + 304);
      sub_100016590(v302, v301);
      v57 = type metadata accessor for KeyDropInterface.KeyPackage;
      sub_100018D00(v306, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v305, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v303, type metadata accessor for KeyDropInterface.KeyAlignment);
    }

    v58 = sub_10000B3A8(v304, &unk_1016C8FC0, &unk_10139D7D0);
    v383 = 0;
    v61 = v378;
    goto LABEL_19;
  }

  v275 = v272;
  v381 = *(v0 + 2240);
  v276 = *(v0 + 2232);
  v277 = *(v0 + 2032);
  v278 = *(v0 + 1696);
  *(v271 + 14) = v274;
  *(v271 + 22) = 2082;
  v279 = sub_100C71778();
  v281 = v280;
  sub_100018D00(v277, type metadata accessor for SharingCircleKeyManager.Instruction);
  v56 = sub_1000136BC(v279, v281, (v0 + 1104));

  *(v271 + 24) = v56;
  _os_log_impl(&_mh_execute_header, v57, v269, "Secondary key %llu is not beyond low water %llu for %{public}s.", v271, 0x20u);
  sub_100007BAC(v275);

  sub_100016590(v276, v381);
  v58 = sub_10000B3A8(v278, &unk_1016C8FC0, &unk_10139D7D0);
LABEL_18:
  while (1)
  {
    v61 = *(v0 + 2208);
LABEL_19:
    v62 = *(v0 + 2200) + 1;
    if (v62 == *(v0 + 2184))
    {
LABEL_84:

      v266 = *(v0 + 1896);
      v267 = *(v0 + 1808);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      sub_1001BAF34(v0 + 880);
      sub_100018D00(v267, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v266, type metadata accessor for OwnedBeaconRecord);

      v268 = *(v0 + 8);

      v268(v61);
      return;
    }

LABEL_24:
    *(v0 + 2208) = v61;
    *(v0 + 2200) = v62;
    *(v0 + 2192) = v383;
    v63 = *(v0 + 2176);
    if (v62 < *(v63 + 16))
    {
      break;
    }

    __break(1u);
    v359 = *(v0 + 1280);
    v360 = *(v0 + 1240);
    v361 = *(v0 + 1200);
    v362 = v58;
    v363 = v57;
    v364 = v59;
    sub_100016590(v363, v369);
    sub_100391554(v371);
    sub_100006654(v362, v364);
    swift_setDeallocating();
    sub_100391554(v56 + 32);
    swift_deallocClassInstance();
    v370(v359, v360);
    sub_100018D00(v361, type metadata accessor for KeyDropBeaconGroupAttributes);
LABEL_14:
    v29 = *(v0 + 1920);
    v30 = *(v0 + 1912);
    v31 = *(v0 + 1120);
    sub_100D11DC8(v31, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v31, v29, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v31, v30, type metadata accessor for SharingCircleKeyManager.Instruction);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    LODWORD(v370) = v33;
    v369 = v32;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 1928);
      v35 = *(v0 + 1920);
      v380 = *(v0 + 1912);
      v36 = *(v0 + 2509);
      v37 = swift_slowAlloc();
      v384 = swift_slowAlloc();
      v386[0] = v384;
      *v37 = 136447747;
      v38 = sub_100C71778();
      v40 = v39;
      sub_100018D00(v34, type metadata accessor for SharingCircleKeyManager.Instruction);
      v41 = sub_1000136BC(v38, v40, v386);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      v42 = sub_10125403C(v36);
      v44 = sub_1000136BC(v42, v43, v386);

      *(v37 + 14) = v44;
      *(v37 + 22) = 2160;
      *(v37 + 24) = 1752392040;
      *(v37 + 32) = 2081;
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      sub_100018D00(v35, type metadata accessor for SharingCircleKeyManager.Instruction);
      v48 = sub_1000136BC(v45, v47, v386);

      *(v37 + 34) = v48;
      *(v37 + 42) = 2160;
      *(v37 + 44) = 1752392040;
      *(v37 + 52) = 2081;
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      sub_100018D00(v380, type metadata accessor for SharingCircleKeyManager.Instruction);
      v52 = sub_1000136BC(v49, v51, v386);

      *(v37 + 54) = v52;
      *(v37 + 62) = 2082;
      swift_getErrorValue();
      v53 = Error.localizedDescription.getter();
      v55 = sub_1000136BC(v53, v54, v386);

      *(v37 + 64) = v55;
      v56 = v369;
      _os_log_impl(&_mh_execute_header, v369, v370, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v37, 0x48u);
      v57 = v384;
      swift_arrayDestroy();
    }

    else
    {
      v56 = *(v0 + 1928);
      v57 = *(v0 + 1920);
      v60 = *(v0 + 1912);

      sub_100018D00(v60, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v57, type metadata accessor for SharingCircleKeyManager.Instruction);
      v58 = sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v383 = 0;
  }

  v64 = *(v0 + 2048);
  v65 = *(v0 + 1120);
  v66 = *(v63 + v62 + 32);
  *(v0 + 2509) = v66;
  sub_100D11DC8(v65, v64, type metadata accessor for SharingCircleKeyManager.Instruction);
  v57 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  v68 = os_log_type_enabled(v57, v67);
  v56 = *(v0 + 2048);
  if (v68)
  {
    v69 = swift_slowAlloc();
    v386[0] = swift_slowAlloc();
    *v69 = 136446466;
    v70 = sub_100C71778();
    v72 = v71;
    sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
    v73 = sub_1000136BC(v70, v72, v386);

    *(v69 + 4) = v73;
    *(v69 + 12) = 2082;
    v74 = sub_10125403C(v66);
    v56 = v75;
    v76 = sub_1000136BC(v74, v75, v386);

    *(v69 + 14) = v76;
    _os_log_impl(&_mh_execute_header, v57, v67, "Keys to upload: %{public}s. Creating package for %{public}s", v69, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v58 = sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  switch(v66)
  {
    case 1:
      v318 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
      if (*(v318 + 16) && (v319 = sub_100771F0C(1), (v320 & 1) != 0))
      {
        v321 = *(v0 + 1752);
        sub_100D11DC8(*(v318 + 56) + *(*(v0 + 1720) + 72) * v319, v321, type metadata accessor for BookmarkMetaData);
        v322 = *(v321 + 8);
        sub_100018D00(v321, type metadata accessor for BookmarkMetaData);
      }

      else
      {
        v322 = 0;
      }

      *(v0 + 2216) = v322;
      v352 = *(v0 + 2504);
      v353 = *(v0 + 1120);
      v354 = swift_task_alloc();
      *(v0 + 2224) = v354;
      *v354 = v0;
      v354[1] = sub_100CBBD44;
      v355 = *(v0 + 1704);

      sub_100CFC71C(v355, v353 + v352);
      return;
    case 4:
      v327 = swift_task_alloc();
      *(v0 + 2328) = v327;
      *v327 = v0;
      v327[1] = sub_100CC4E24;
      v328 = *(v0 + 1896);
      v329 = *(v0 + 1408);
      v330 = *(v0 + 1120);

      sub_100CF172C(v329, v330, v328, v0 + 880);
      return;
    case 5:
      v123 = *(v0 + 1768);
      v124 = *(v0 + 1760);
      v125 = *(v0 + 1376);
      sub_1000D2A70(*(v0 + 2168), v125, &qword_1016B0478, &unk_1013CDC10);
      v126 = *(v123 + 48);
      *(v0 + 2344) = v126;
      *(v0 + 2352) = (v123 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v124) = v126(v125, 1, v124);
      sub_10000B3A8(v125, &qword_1016B0478, &unk_1013CDC10);
      if (v124 == 1)
      {
        v331 = swift_task_alloc();
        *(v0 + 2360) = v331;
        *v331 = v0;
        v332 = sub_100CC7CAC;
        goto LABEL_116;
      }

      v127 = *(v0 + 2344);
      v128 = *(v0 + 1760);
      v129 = *(v0 + 1368);
      sub_1000D2A70(*(v0 + 2168), v129, &qword_1016B0478, &unk_1013CDC10);
      v130 = v127(v129, 1, v128);
      v131 = *(v0 + 1368);
      if (v130 != 1)
      {
        sub_100D12974(v131, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
        v336 = swift_task_alloc();
        *(v0 + 2376) = v336;
        *v336 = v0;
        v336[1] = sub_100CCA6E8;
        v337 = *(v0 + 2152);
        v338 = *(v0 + 2144);
        v339 = *(v0 + 1896);
        v340 = *(v0 + 1792);
        v341 = *(v0 + 1400);
        v342 = *(v0 + 1120);
        v343 = 0;
        goto LABEL_124;
      }

      v132 = *(v0 + 2000);
      v133 = *(v0 + 1120);
      sub_10000B3A8(v131, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v133, v132, type metadata accessor for SharingCircleKeyManager.Instruction);
      v57 = Logger.logObject.getter();
      v134 = static os_log_type_t.error.getter();
      v135 = os_log_type_enabled(v57, v134);
      v56 = *(v0 + 2000);
      if (!v135)
      {
        goto LABEL_21;
      }

      v136 = swift_slowAlloc();
      v386[0] = swift_slowAlloc();
      *v136 = 136446466;
      v137 = sub_100C71778();
      v139 = v138;
      sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
      v140 = sub_1000136BC(v137, v139, v386);

      *(v136 + 4) = v140;
      *(v136 + 12) = 2082;
      v141 = 5;
      goto LABEL_52;
    case 6:
      v142 = *(v0 + 1768);
      v143 = *(v0 + 1760);
      v144 = *(v0 + 1360);
      sub_1000D2A70(*(v0 + 2168), v144, &qword_1016B0478, &unk_1013CDC10);
      v145 = *(v142 + 48);
      *(v0 + 2392) = v145;
      *(v0 + 2400) = (v142 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v143) = v145(v144, 1, v143);
      sub_10000B3A8(v144, &qword_1016B0478, &unk_1013CDC10);
      if (v143 == 1)
      {
        v331 = swift_task_alloc();
        *(v0 + 2408) = v331;
        *v331 = v0;
        v332 = sub_100CCD5CC;
LABEL_116:
        v331[1] = v332;
        v333 = *(v0 + 2160);
        v334 = *(v0 + 1896);
        v335 = *(v0 + 1128);

        sub_100CF0FB4(v334, v333, v335);
        return;
      }

      v146 = *(v0 + 2392);
      v147 = *(v0 + 1760);
      v148 = *(v0 + 1352);
      sub_1000D2A70(*(v0 + 2168), v148, &qword_1016B0478, &unk_1013CDC10);
      v149 = v146(v148, 1, v147);
      v150 = *(v0 + 1352);
      if (v149 == 1)
      {
        v151 = *(v0 + 1984);
        v152 = *(v0 + 1120);
        sub_10000B3A8(v150, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v152, v151, type metadata accessor for SharingCircleKeyManager.Instruction);
        v57 = Logger.logObject.getter();
        v134 = static os_log_type_t.error.getter();
        v153 = os_log_type_enabled(v57, v134);
        v56 = *(v0 + 1984);
        if (v153)
        {
          v136 = swift_slowAlloc();
          v386[0] = swift_slowAlloc();
          *v136 = 136446466;
          v154 = sub_100C71778();
          v156 = v155;
          sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
          v157 = sub_1000136BC(v154, v156, v386);

          *(v136 + 4) = v157;
          *(v136 + 12) = 2082;
          v141 = 6;
LABEL_52:
          v174 = sub_10125403C(v141);
          v56 = v175;
          v176 = sub_1000136BC(v174, v175, v386);

          *(v136 + 14) = v176;
          _os_log_impl(&_mh_execute_header, v57, v134, "No key alignment available for %{public}s. No package created for %{public}s", v136, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
LABEL_21:

          v58 = sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        v61 = *(v0 + 2208);
LABEL_23:
        v62 = *(v0 + 2200) + 1;
        if (v62 == *(v0 + 2184))
        {
          goto LABEL_84;
        }

        goto LABEL_24;
      }

      sub_100D12974(v150, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
      v351 = swift_task_alloc();
      *(v0 + 2424) = v351;
      *v351 = v0;
      v351[1] = sub_100CD0008;
      v337 = *(v0 + 2152);
      v338 = *(v0 + 2144);
      v339 = *(v0 + 1896);
      v340 = *(v0 + 1784);
      v341 = *(v0 + 1392);
      v342 = *(v0 + 1120);
      v343 = 1;
LABEL_124:

      sub_100CF2904(v341, v342, v339, v340, v343, v338, v337);
      return;
    case 8:
    case 10:
      v56 = *(v0 + 936);
      if (!*(v56 + 16))
      {
        goto LABEL_23;
      }

      v58 = sub_100771F0C(v66);
      if ((v59 & 1) == 0)
      {
        goto LABEL_23;
      }

      v77 = v61;
      v78 = *(v0 + 2152);
      v79 = *(v0 + 2144);
      v80 = *(v0 + 1680);
      v81 = (*(v56 + 56) + 16 * v58);
      v83 = *v81;
      v82 = v81[1];
      v84 = type metadata accessor for EncryptedData();
      (*(*(v84 - 8) + 56))(v80, 1, 1, v84);
      sub_100017D5C(v83, v82);
      sub_100017D5C(v83, v82);
      v370 = v82;
      sub_10125A120(1, v83, v82, v80, v374);
      sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
      v85 = swift_allocObject();
      v86 = *(v374 + 32);
      v87 = *(v374 + 48);
      v88 = *v374;
      *(v85 + 48) = *(v374 + 16);
      *(v85 + 64) = v86;
      *(v85 + 80) = v87;
      *(v85 + 96) = *(v374 + 64);
      *(v85 + 16) = xmmword_101385D80;
      *(v85 + 32) = v88;
      sub_10002E98C(v79, v78);
      sub_1003914F8(v374, v0 + 736);
      v89 = sub_100D11764(v85, v79, v78);
      if (v383)
      {
        v356 = *(v0 + 2144);
        v357 = v83;
        v358 = *(v0 + 2152);
        sub_100016590(v357, v370);
        sub_100391554(v374);
        sub_100006654(v356, v358);
        swift_setDeallocating();
        sub_100391554(v85 + 32);
        swift_deallocClassInstance();
        goto LABEL_14;
      }

      v90 = *(v0 + 1808);
      v91 = *(v0 + 1520);
      v92 = *(v0 + 1512);
      v93 = *(v0 + 1416);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      swift_setDeallocating();
      sub_100391554(v85 + 32);
      swift_deallocClassInstance();
      sub_100D11DC8(v90, &v91[*(v93 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
      *v91 = v66;
      *&v91[*(v93 + 24)] = v89;
      sub_100D11DC8(v91, v92, type metadata accessor for KeyDropInterface.KeyPackage);
      v94 = v77;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_100A5BE40(0, v77[2] + 1, 1, v77);
      }

      v96 = v94[2];
      v95 = v94[3];
      v376 = v94;
      if (v96 >= v95 >> 1)
      {
        v376 = sub_100A5BE40((v95 > 1), v96 + 1, 1, v94);
      }

      v97 = *(v0 + 1960);
      v98 = *(v0 + 1520);
      v99 = *(v0 + 1512);
      v100 = *(v0 + 1504);
      v101 = *(v0 + 1424);
      v102 = *(v0 + 1120);
      v376[2] = v96 + 1;
      sub_100D12974(v99, v376 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v96, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100D11DC8(v102, v97, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v98, v100, type metadata accessor for KeyDropInterface.KeyPackage);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.default.getter();
      v105 = os_log_type_enabled(v103, v104);
      v56 = *(v0 + 1960);
      v106 = *(v0 + 1520);
      v107 = *(v0 + 1504);
      if (v105)
      {
        v108 = swift_slowAlloc();
        v386[0] = swift_slowAlloc();
        *v108 = 136446466;
        v385 = v106;
        v109 = sub_100C71778();
        v111 = v110;
        sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
        v112 = sub_1000136BC(v109, v111, v386);

        *(v108 + 4) = v112;
        *(v108 + 12) = 2082;
        v113 = sub_101255410();
        v115 = v114;
        v56 = type metadata accessor for KeyDropInterface.KeyPackage;
        sub_100018D00(v107, type metadata accessor for KeyDropInterface.KeyPackage);
        v57 = sub_1000136BC(v113, v115, v386);

        *(v108 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v103, v104, "Keys to upload: %{public}s,\nadded: %{public}s.", v108, 0x16u);
        swift_arrayDestroy();

        sub_100391554(v374);
        sub_100016590(v83, v370);
        v116 = v385;
      }

      else
      {

        sub_100391554(v374);
        sub_100016590(v83, v370);
        v57 = type metadata accessor for KeyDropInterface.KeyPackage;
        sub_100018D00(v107, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
        v116 = v106;
      }

      v58 = sub_100018D00(v116, type metadata accessor for KeyDropInterface.KeyPackage);
      v383 = 0;
      v61 = v376;
      goto LABEL_23;
    case 9:
      v158 = *(v0 + 1768);
      v159 = *(v0 + 1760);
      v160 = *(v0 + 1344);
      sub_1000D2A70(*(v0 + 2168), v160, &qword_1016B0478, &unk_1013CDC10);
      v161 = *(v158 + 48);
      *(v0 + 2440) = v161;
      *(v0 + 2448) = (v158 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v159) = v161(v160, 1, v159);
      sub_10000B3A8(v160, &qword_1016B0478, &unk_1013CDC10);
      if (v159 == 1)
      {
        v331 = swift_task_alloc();
        *(v0 + 2456) = v331;
        *v331 = v0;
        v332 = sub_100CD2EEC;
        goto LABEL_116;
      }

      v162 = *(v0 + 2440);
      v163 = *(v0 + 1760);
      v164 = *(v0 + 1336);
      sub_1000D2A70(*(v0 + 2168), v164, &qword_1016B0478, &unk_1013CDC10);
      v165 = v162(v164, 1, v163);
      v166 = *(v0 + 1336);
      if (v165 != 1)
      {
        sub_100D12974(v166, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
        v344 = swift_task_alloc();
        *(v0 + 2472) = v344;
        *v344 = v0;
        v344[1] = sub_100CD5928;
        v345 = *(v0 + 2152);
        v346 = *(v0 + 2144);
        v347 = *(v0 + 1896);
        v348 = *(v0 + 1776);
        v349 = *(v0 + 1384);
        v350 = *(v0 + 1120);

        sub_100CF3F94(v349, v350, v347, v348, v346, v345);
        return;
      }

      v167 = *(v0 + 1968);
      v168 = *(v0 + 1120);
      sub_10000B3A8(v166, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v168, v167, type metadata accessor for SharingCircleKeyManager.Instruction);
      v57 = Logger.logObject.getter();
      v134 = static os_log_type_t.error.getter();
      v169 = os_log_type_enabled(v57, v134);
      v56 = *(v0 + 1968);
      if (!v169)
      {
        goto LABEL_21;
      }

      v136 = swift_slowAlloc();
      v386[0] = swift_slowAlloc();
      *v136 = 136446466;
      v170 = sub_100C71778();
      v172 = v171;
      sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
      v173 = sub_1000136BC(v170, v172, v386);

      *(v136 + 4) = v173;
      *(v136 + 12) = 2082;
      v141 = 9;
      goto LABEL_52;
    case 12:
      v117 = v61;
      v118 = *(v0 + 1824);
      v119 = *(v0 + 1816);
      v120 = *(v0 + 1168);
      sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v120, &qword_1016980D0, &unk_10138F3B0);
      if ((*(v118 + 48))(v120, 1, v119) == 1)
      {
        v121 = *(v0 + 1192);
        v122 = *(v0 + 1184);
        v57 = *(v0 + 1176);
        sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
        (*(v121 + 56))(v57, 1, 1, v122);
        goto LABEL_64;
      }

      v177 = *(v0 + 1896);
      v178 = *(v0 + 1872);
      v179 = *(v0 + 1160);
      (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
      sub_100D11DC8(v177 + *(v178 + 24), v179, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
LABEL_61:
          v195 = *(v0 + 1192);
          v196 = *(v0 + 1184);
          v57 = *(v0 + 1176);
          v197 = *(v0 + 1160);
          (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
          sub_100018D00(v197, type metadata accessor for StableIdentifier);
          (*(v195 + 56))(v57, 1, 1, v196);
          goto LABEL_64;
        }

        v191 = *(v0 + 1824);
        v192 = *(v0 + 1816);
        v193 = *(v0 + 1160);
        v194 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        v185 = *(v193 + *(v194 + 96));
        (*(v191 + 8))(v193, v192);
      }

      else
      {
        if (EnumCaseMultiPayload < 2)
        {
          goto LABEL_61;
        }

        v181 = *(v0 + 1824);
        v182 = *(v0 + 1160);
        v183 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        v184 = (v182 + *(v183 + 96));
        v185 = *v184;
        LOBYTE(v182) = v184[1];

        v186 = *(v181 + 8);
        if (v182)
        {
          v187 = *(v0 + 1816);
          v188 = *(v0 + 1192);
          v57 = *(v0 + 1184);
          v189 = *(v0 + 1176);
          v190 = *(v0 + 1160);
          v186(*(v0 + 1840), v187);
          (*(v188 + 56))(v189, 1, 1, v57);
          v186(v190, v187);
          goto LABEL_64;
        }

        v186(*(v0 + 1160), *(v0 + 1816));
      }

      v198 = *(v0 + 1192);
      v199 = *(v0 + 1184);
      v57 = *(v0 + 1176);
      (*(v0 + 2104))(v57, *(v0 + 1840), *(v0 + 1816));
      *(v57 + *(v199 + 20)) = v185;
      (*(v198 + 56))(v57, 0, 1, v199);
LABEL_64:
      v56 = *(v0 + 1176);
      if ((*(*(v0 + 1192) + 48))(v56, 1, *(v0 + 1184)) == 1)
      {
        v58 = sub_10000B3A8(v56, &qword_1016B9B20, &qword_1013E3680);
        v61 = v117;
        goto LABEL_23;
      }

      v200 = *(v0 + 1904);
      v201 = *(v0 + 1120);
      sub_100D12974(v56, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
      v202 = *(v201 + *(v200 + 44));
      if (!*(v202 + 16))
      {
        goto LABEL_70;
      }

      v203 = sub_100771F0C(12);
      if ((v204 & 1) == 0)
      {
        goto LABEL_70;
      }

      v205 = *(v0 + 1768);
      v206 = *(v0 + 1760);
      v207 = *(v0 + 1736);
      v208 = *(v0 + 1712);
      v209 = *(v0 + 1320);
      sub_100D11DC8(*(v202 + 56) + *(*(v0 + 1720) + 72) * v203, v207, type metadata accessor for BookmarkMetaData);
      sub_1000D2A70(v207 + *(v208 + 20), v209, &qword_1016B0478, &unk_1013CDC10);
      sub_100018D00(v207, type metadata accessor for BookmarkMetaData);
      if ((*(v205 + 48))(v209, 1, v206) == 1)
      {
        sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
LABEL_70:
        v210 = *(v0 + 1248);
        v211 = *(v0 + 1240);
        v212 = *(v0 + 1216);
        (*(v210 + 56))(v212, 1, 1, v211);
        static Date.distantPast.getter();
        if ((*(v210 + 48))(v212, 1, v211) != 1)
        {
          sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        v213 = *(v0 + 1320);
        v214 = *(v0 + 1280);
        v215 = *(v0 + 1248);
        v216 = *(v0 + 1240);
        v217 = *(v0 + 1216);
        (*(v215 + 16))(v217, v213 + *(*(v0 + 1760) + 24), v216);
        sub_100018D00(v213, type metadata accessor for KeyDropInterface.KeyAlignment);
        (*(v215 + 56))(v217, 0, 1, v216);
        (*(v215 + 32))(v214, v217, v216);
      }

      v218 = *(v0 + 1896);
      v219 = *(v0 + 1272);
      v220 = objc_autoreleasePoolPush();
      sub_100D088CC(v218, v219);
      if (v383)
      {

        objc_autoreleasePoolPop(v220);
        return;
      }

      v57 = *(v0 + 1280);
      v221 = *(v0 + 1272);
      v222 = *(v0 + 1248);
      v223 = *(v0 + 1240);
      objc_autoreleasePoolPop(v220);
      sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v224 = dispatch thunk of static Comparable.< infix(_:_:)();
      v225 = *(v222 + 8);
      v225(v221, v223);
      if (v224)
      {
        v56 = *(v0 + 1200);
        v225(*(v0 + 1280), *(v0 + 1240));
        v58 = sub_100018D00(v56, type metadata accessor for KeyDropBeaconGroupAttributes);
        v383 = 0;
        v61 = v117;
      }

      else
      {
        type metadata accessor for PropertyListEncoder();
        swift_allocObject();
        PropertyListEncoder.init()();
        sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA58);
        v57 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v227 = v226;
        v370 = v225;
        v228 = *(v0 + 2152);
        v229 = *(v0 + 2144);
        v230 = *(v0 + 1680);

        v231 = type metadata accessor for EncryptedData();
        (*(*(v231 - 8) + 56))(v230, 1, 1, v231);
        sub_100017D5C(v57, v227);
        v369 = v227;
        sub_10125A120(1, v57, v227, v230, v371);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v232 = swift_allocObject();
        v233 = *(v371 + 32);
        v234 = *(v371 + 48);
        v235 = *v371;
        *(v232 + 48) = *(v371 + 16);
        *(v232 + 64) = v233;
        *(v232 + 80) = v234;
        *(v232 + 96) = *(v371 + 64);
        *(v232 + 16) = xmmword_101385D80;
        *(v232 + 32) = v235;
        sub_10002E98C(v229, v228);
        sub_1003914F8(v371, v0 + 448);
        v236 = sub_100D11764(v232, v229, v228);
        v237 = *(v0 + 1808);
        v238 = *(v0 + 1472);
        v239 = *(v0 + 1464);
        v240 = *(v0 + 1416);
        sub_100006654(*(v0 + 2144), *(v0 + 2152));
        swift_setDeallocating();
        sub_100391554(v232 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v237, &v238[*(v240 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v238 = 12;
        *&v238[*(v240 + 24)] = v236;
        sub_100D11DC8(v238, v239, type metadata accessor for KeyDropInterface.KeyPackage);
        v241 = v117;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v241 = sub_100A5BE40(0, v117[2] + 1, 1, v117);
        }

        v243 = v241[2];
        v242 = v241[3];
        v377 = v241;
        if (v243 >= v242 >> 1)
        {
          v377 = sub_100A5BE40((v242 > 1), v243 + 1, 1, v241);
        }

        v244 = *(v0 + 1944);
        v245 = *(v0 + 1472);
        v246 = *(v0 + 1464);
        v247 = *(v0 + 1456);
        v248 = *(v0 + 1424);
        v249 = *(v0 + 1120);
        v377[2] = v243 + 1;
        v61 = v377;
        sub_100D12974(v246, v377 + ((*(v248 + 80) + 32) & ~*(v248 + 80)) + *(v248 + 72) * v243, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v249, v244, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v245, v247, type metadata accessor for KeyDropInterface.KeyPackage);
        v250 = Logger.logObject.getter();
        v251 = static os_log_type_t.default.getter();
        v252 = os_log_type_enabled(v250, v251);
        v56 = *(v0 + 1944);
        v253 = *(v0 + 1456);
        v254 = *(v0 + 1280);
        v367 = *(v0 + 1472);
        v368 = *(v0 + 1240);
        v255 = *(v0 + 1200);
        if (v252)
        {
          v256 = swift_slowAlloc();
          v386[0] = swift_slowAlloc();
          *v256 = 136446466;
          v365 = v254;
          v366 = v255;
          v257 = sub_100C71778();
          v259 = v258;
          sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
          v260 = sub_1000136BC(v257, v259, v386);

          *(v256 + 4) = v260;
          *(v256 + 12) = 2082;
          v261 = sub_101255410();
          v263 = v262;
          v56 = type metadata accessor for KeyDropInterface.KeyPackage;
          sub_100018D00(v253, type metadata accessor for KeyDropInterface.KeyPackage);
          v264 = sub_1000136BC(v261, v263, v386);

          *(v256 + 14) = v264;
          _os_log_impl(&_mh_execute_header, v250, v251, "Keys to upload: %{public}s,\nadded: %{public}s.", v256, 0x16u);
          swift_arrayDestroy();

          v61 = v377;

          sub_100391554(v371);
          sub_100016590(v57, v369);
          sub_100018D00(v367, type metadata accessor for KeyDropInterface.KeyPackage);
          v370(v365, v368);
          v265 = v366;
        }

        else
        {

          sub_100391554(v371);
          sub_100016590(v57, v369);
          v57 = type metadata accessor for KeyDropInterface.KeyPackage;
          sub_100018D00(v253, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v56, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v367, type metadata accessor for KeyDropInterface.KeyPackage);
          v370(v254, v368);
          v265 = v255;
        }

        v58 = sub_100018D00(v265, type metadata accessor for KeyDropBeaconGroupAttributes);
        v383 = 0;
      }

      goto LABEL_23;
    case 13:
      v315 = swift_task_alloc();
      *(v0 + 2488) = v315;
      *v315 = v0;
      v315[1] = sub_100CD880C;
      v316 = *(v0 + 1896);
      v317 = *(v0 + 1232);

      sub_100CF5FBC(v317, v316);
      return;
    case 16:
      v323 = swift_task_alloc();
      *(v0 + 2496) = v323;
      *v323 = v0;
      v323[1] = sub_100CDBC44;
      v324 = *(v0 + 1896);
      v325 = *(v0 + 1264);
      v326 = *(v0 + 1144);

      sub_100CF6C9C(v325, v326, v324);
      return;
    default:
      goto LABEL_23;
  }
}

uint64_t sub_100CC4E24()
{
  v2 = *v1;
  *(*v1 + 2336) = v0;

  v3 = *(v2 + 1128);
  if (v0)
  {
    v4 = sub_100CDF5F4;
  }

  else
  {
    v4 = sub_100CC4F50;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_100CC4F50()
{
  v366 = v0;
  v1 = *(v0 + 1408);
  if ((*(*(v0 + 1424) + 48))(v1, 1, *(v0 + 1416)) != 1)
  {
    v2 = *(v0 + 1648);
    v3 = *(v0 + 1640);
    sub_100D12974(v1, v2, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v2, v3, type metadata accessor for KeyDropInterface.KeyPackage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v363 = *(v0 + 2208);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_125;
  }

  sub_10000B3A8(v1, &qword_1016B9B30, &unk_1013E3698);
  v363 = *(v0 + 2208);
  while (1)
  {
    v49 = *(v0 + 2200) + 1;
    if (v49 == *(v0 + 2184))
    {
LABEL_17:

      v50 = *(v0 + 1896);
      v51 = *(v0 + 1808);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      sub_1001BAF34(v0 + 880);
      sub_100018D00(v51, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v50, type metadata accessor for OwnedBeaconRecord);

      v52 = *(v0 + 8);

      v52(v363);
      return;
    }

    v53 = v0 + 232;
    v54 = v0 + 808;
    v55 = *(v0 + 2336);
    v360 = v0 + 232;
    v362 = v0 + 808;
LABEL_23:
    *(v0 + 2208) = v363;
    *(v0 + 2200) = v49;
    *(v0 + 2192) = v55;
    v56 = *(v0 + 2176);
    if (v49 < *(v56 + 16))
    {
      break;
    }

    __break(1u);
LABEL_125:
    v363 = sub_100A5BE40(0, v363[2] + 1, 1, v363);
LABEL_4:
    v6 = v363[2];
    v5 = v363[3];
    if (v6 >= v5 >> 1)
    {
      v363 = sub_100A5BE40((v5 > 1), v6 + 1, 1, v363);
    }

    v7 = *(v0 + 2016);
    v8 = *(v0 + 1648);
    v9 = *(v0 + 1640);
    v10 = *(v0 + 1632);
    v11 = *(v0 + 1624);
    v12 = *(v0 + 1424);
    v13 = *(v0 + 1120);
    v363[2] = v6 + 1;
    sub_100D12974(v9, v363 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v6, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v13, v7, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v8, v10, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v8, v11, type metadata accessor for KeyDropInterface.KeyPackage);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 2016);
    if (v16)
    {
      v361 = v15;
      v18 = *(v0 + 1632);
      v19 = *(v0 + 1624);
      v20 = *(v0 + 1416);
      v21 = swift_slowAlloc();
      *(v0 + 1064) = swift_slowAlloc();
      *v21 = 136446722;
      v22 = sub_100C71778();
      v24 = v23;
      sub_100018D00(v17, type metadata accessor for SharingCircleKeyManager.Instruction);
      v25 = sub_1000136BC(v22, v24, (v0 + 1064));

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v26 = sub_101255410();
      v28 = v27;
      sub_100018D00(v18, type metadata accessor for KeyDropInterface.KeyPackage);
      v29 = sub_1000136BC(v26, v28, (v0 + 1064));

      *(v21 + 14) = v29;
      *(v21 + 22) = 2082;
      v30 = *(v19 + *(v20 + 24));
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = (v0 + 1072);
        *(v0 + 1072) = _swiftEmptyArrayStorage;
        sub_101123BF8(0, v31, 0);
        v33 = *(v0 + 1072);
        v34 = (v30 + 32);
        v35 = *(v33 + 16);
        do
        {
          v37 = *v34;
          v34 += 9;
          v36 = v37;
          *v32 = v33;
          v38 = *(v33 + 24);
          if (v35 >= v38 >> 1)
          {
            sub_101123BF8((v38 > 1), v35 + 1, 1);
            v33 = *v32;
          }

          *(v33 + 16) = v35 + 1;
          *(v33 + 8 * v35++ + 32) = v36;
          --v31;
        }

        while (v31);
      }

      v43 = *(v0 + 1648);
      v44 = *(v0 + 1624);
      v45 = Array.description.getter();
      v47 = v46;

      sub_100018D00(v44, type metadata accessor for KeyDropInterface.KeyPackage);
      v48 = sub_1000136BC(v45, v47, (v0 + 1064));

      *(v21 + 24) = v48;
      _os_log_impl(&_mh_execute_header, v14, v361, "Keys to upload: %{public}s,\nadded: %{public}s,\nkey indexes: %{public}s.", v21, 0x20u);
      swift_arrayDestroy();

      v42 = v43;
    }

    else
    {
      v39 = *(v0 + 1648);
      v40 = *(v0 + 1632);
      v41 = *(v0 + 1624);

      sub_100018D00(v40, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v17, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v39, type metadata accessor for KeyDropInterface.KeyPackage);
      v42 = v41;
    }

    sub_100018D00(v42, type metadata accessor for KeyDropInterface.KeyPackage);
  }

  v57 = *(v0 + 2048);
  v58 = *(v0 + 1120);
  v59 = *(v56 + v49 + 32);
  *(v0 + 2509) = v59;
  sub_100D11DC8(v58, v57, type metadata accessor for SharingCircleKeyManager.Instruction);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  v62 = os_log_type_enabled(v60, v61);
  v63 = *(v0 + 2048);
  if (v62)
  {
    v64 = swift_slowAlloc();
    v365[0] = swift_slowAlloc();
    *v64 = 136446466;
    v65 = sub_100C71778();
    v67 = v66;
    sub_100018D00(v63, type metadata accessor for SharingCircleKeyManager.Instruction);
    v68 = sub_1000136BC(v65, v67, v365);
    v53 = v0 + 232;

    *(v64 + 4) = v68;
    *(v64 + 12) = 2082;
    v69 = sub_10125403C(v59);
    v71 = sub_1000136BC(v69, v70, v365);

    *(v64 + 14) = v71;
    _os_log_impl(&_mh_execute_header, v60, v61, "Keys to upload: %{public}s. Creating package for %{public}s", v64, 0x16u);
    swift_arrayDestroy();
    v54 = v0 + 808;
  }

  else
  {

    sub_100018D00(v63, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  switch(v59)
  {
    case 1:
      v307 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
      if (*(v307 + 16) && (v308 = sub_100771F0C(1), (v309 & 1) != 0))
      {
        v310 = *(v0 + 1752);
        sub_100D11DC8(*(v307 + 56) + *(*(v0 + 1720) + 72) * v308, v310, type metadata accessor for BookmarkMetaData);
        v311 = *(v310 + 8);
        sub_100018D00(v310, type metadata accessor for BookmarkMetaData);
      }

      else
      {
        v311 = 0;
      }

      *(v0 + 2216) = v311;
      v344 = *(v0 + 2504);
      v345 = *(v0 + 1120);
      v346 = swift_task_alloc();
      *(v0 + 2224) = v346;
      *v346 = v0;
      v346[1] = sub_100CBBD44;
      v347 = *(v0 + 1704);

      sub_100CFC71C(v347, v345 + v344);
      return;
    case 4:
      v315 = swift_task_alloc();
      *(v0 + 2328) = v315;
      *v315 = v0;
      v315[1] = sub_100CC4E24;
      v316 = *(v0 + 1896);
      v317 = *(v0 + 1408);
      v318 = *(v0 + 1120);

      sub_100CF172C(v317, v318, v316, v0 + 880);
      return;
    case 5:
      v95 = *(v0 + 1768);
      v96 = *(v0 + 1760);
      v97 = *(v0 + 1376);
      sub_1000D2A70(*(v0 + 2168), v97, &qword_1016B0478, &unk_1013CDC10);
      v98 = *(v95 + 48);
      *(v0 + 2344) = v98;
      *(v0 + 2352) = (v95 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v96) = v98(v97, 1, v96);
      sub_10000B3A8(v97, &qword_1016B0478, &unk_1013CDC10);
      if (v96 == 1)
      {
        v323 = swift_task_alloc();
        *(v0 + 2360) = v323;
        *v323 = v0;
        v324 = sub_100CC7CAC;
        goto LABEL_106;
      }

      v99 = *(v0 + 2344);
      v100 = *(v0 + 1760);
      v101 = *(v0 + 1368);
      sub_1000D2A70(*(v0 + 2168), v101, &qword_1016B0478, &unk_1013CDC10);
      v102 = v99(v101, 1, v100);
      v103 = *(v0 + 1368);
      if (v102 != 1)
      {
        sub_100D12974(v103, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
        v328 = swift_task_alloc();
        *(v0 + 2376) = v328;
        *v328 = v0;
        v328[1] = sub_100CCA6E8;
        v329 = *(v0 + 2152);
        v330 = *(v0 + 2144);
        v331 = *(v0 + 1896);
        v332 = *(v0 + 1792);
        v333 = *(v0 + 1400);
        v334 = *(v0 + 1120);
        v335 = 0;
        goto LABEL_111;
      }

      v104 = *(v0 + 2000);
      v105 = *(v0 + 1120);
      sub_10000B3A8(v103, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v105, v104, type metadata accessor for SharingCircleKeyManager.Instruction);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();
      v108 = os_log_type_enabled(v106, v107);
      v109 = *(v0 + 2000);
      if (!v108)
      {
        goto LABEL_47;
      }

      v110 = swift_slowAlloc();
      v365[0] = swift_slowAlloc();
      *v110 = 136446466;
      v111 = sub_100C71778();
      v113 = v112;
      sub_100018D00(v109, type metadata accessor for SharingCircleKeyManager.Instruction);
      v114 = sub_1000136BC(v111, v113, v365);

      *(v110 + 4) = v114;
      *(v110 + 12) = 2082;
      v115 = 5;
      goto LABEL_46;
    case 6:
      v116 = *(v0 + 1768);
      v117 = *(v0 + 1760);
      v118 = *(v0 + 1360);
      sub_1000D2A70(*(v0 + 2168), v118, &qword_1016B0478, &unk_1013CDC10);
      v119 = *(v116 + 48);
      *(v0 + 2392) = v119;
      *(v0 + 2400) = (v116 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v117) = v119(v118, 1, v117);
      sub_10000B3A8(v118, &qword_1016B0478, &unk_1013CDC10);
      if (v117 == 1)
      {
        v323 = swift_task_alloc();
        *(v0 + 2408) = v323;
        *v323 = v0;
        v324 = sub_100CCD5CC;
LABEL_106:
        v323[1] = v324;
        v325 = *(v0 + 2160);
        v326 = *(v0 + 1896);
        v327 = *(v0 + 1128);

        sub_100CF0FB4(v326, v325, v327);
        return;
      }

      v120 = *(v0 + 2392);
      v121 = *(v0 + 1760);
      v122 = *(v0 + 1352);
      sub_1000D2A70(*(v0 + 2168), v122, &qword_1016B0478, &unk_1013CDC10);
      v123 = v120(v122, 1, v121);
      v124 = *(v0 + 1352);
      if (v123 == 1)
      {
        v125 = *(v0 + 1984);
        v126 = *(v0 + 1120);
        sub_10000B3A8(v124, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v126, v125, type metadata accessor for SharingCircleKeyManager.Instruction);
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.error.getter();
        v127 = os_log_type_enabled(v106, v107);
        v109 = *(v0 + 1984);
        if (v127)
        {
          v110 = swift_slowAlloc();
          v365[0] = swift_slowAlloc();
          *v110 = 136446466;
          v128 = sub_100C71778();
          v130 = v129;
          sub_100018D00(v109, type metadata accessor for SharingCircleKeyManager.Instruction);
          v131 = sub_1000136BC(v128, v130, v365);

          *(v110 + 4) = v131;
          *(v110 + 12) = 2082;
          v115 = 6;
LABEL_46:
          v148 = sub_10125403C(v115);
          v150 = sub_1000136BC(v148, v149, v365);

          *(v110 + 14) = v150;
          v54 = v0 + 808;
          _os_log_impl(&_mh_execute_header, v106, v107, "No key alignment available for %{public}s. No package created for %{public}s", v110, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
LABEL_47:

          sub_100018D00(v109, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

LABEL_48:
        v363 = *(v0 + 2208);
LABEL_22:
        v49 = *(v0 + 2200) + 1;
        if (v49 == *(v0 + 2184))
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

      sub_100D12974(v124, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
      v336 = swift_task_alloc();
      *(v0 + 2424) = v336;
      *v336 = v0;
      v336[1] = sub_100CD0008;
      v329 = *(v0 + 2152);
      v330 = *(v0 + 2144);
      v331 = *(v0 + 1896);
      v332 = *(v0 + 1784);
      v333 = *(v0 + 1392);
      v334 = *(v0 + 1120);
      v335 = 1;
LABEL_111:

      sub_100CF2904(v333, v334, v331, v332, v335, v330, v329);
      return;
    case 8:
    case 10:
      v72 = *(v0 + 936);
      if (!*(v72 + 16))
      {
        goto LABEL_22;
      }

      v73 = sub_100771F0C(v59);
      if ((v74 & 1) == 0)
      {
        goto LABEL_22;
      }

      v75 = *(v0 + 2152);
      v76 = *(v0 + 2144);
      v77 = *(v0 + 1680);
      v78 = (*(v72 + 56) + 16 * v73);
      v80 = *v78;
      v79 = v78[1];
      v81 = type metadata accessor for EncryptedData();
      (*(*(v81 - 8) + 56))(v77, 1, 1, v81);
      sub_100017D5C(v80, v79);
      sub_100017D5C(v80, v79);
      sub_10125A120(1, v80, v79, v77, v53);
      sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
      v82 = swift_allocObject();
      v83 = *(v53 + 32);
      v84 = *(v53 + 48);
      v85 = *v53;
      *(v82 + 48) = *(v53 + 16);
      *(v82 + 64) = v83;
      *(v82 + 80) = v84;
      *(v82 + 96) = *(v53 + 64);
      *(v82 + 16) = xmmword_101385D80;
      *(v82 + 32) = v85;
      sub_10002E98C(v76, v75);
      sub_1003914F8(v53, v0 + 736);
      v86 = sub_100D11764(v82, v76, v75);
      v87 = *(v0 + 2152);
      v88 = *(v0 + 2144);
      if (v55)
      {
        sub_100016590(v80, v79);
        sub_100391554(v53);
        sub_100006654(v88, v87);
        swift_setDeallocating();
        sub_100391554(v82 + 32);
        swift_deallocClassInstance();
        v54 = v0 + 808;
        v247 = *(v0 + 1920);
        v248 = *(v0 + 1912);
        v249 = *(v0 + 1120);
        sub_100D11DC8(v249, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v249, v247, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v249, v248, type metadata accessor for SharingCircleKeyManager.Instruction);
        swift_errorRetain();
        v250 = Logger.logObject.getter();
        v251 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v250, v251))
        {
          v364 = v251;
          v252 = *(v0 + 1928);
          v253 = *(v0 + 1920);
          v355 = *(v0 + 1912);
          v254 = *(v0 + 2509);
          v255 = swift_slowAlloc();
          v365[0] = swift_slowAlloc();
          *v255 = 136447747;
          v256 = sub_100C71778();
          v258 = v257;
          sub_100018D00(v252, type metadata accessor for SharingCircleKeyManager.Instruction);
          v259 = sub_1000136BC(v256, v258, v365);

          *(v255 + 4) = v259;
          *(v255 + 12) = 2082;
          v260 = sub_10125403C(v254);
          v262 = sub_1000136BC(v260, v261, v365);

          *(v255 + 14) = v262;
          *(v255 + 22) = 2160;
          *(v255 + 24) = 1752392040;
          *(v255 + 32) = 2081;
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v263 = dispatch thunk of CustomStringConvertible.description.getter();
          v265 = v264;
          v266 = v253;
          v53 = v0 + 232;
          sub_100018D00(v266, type metadata accessor for SharingCircleKeyManager.Instruction);
          v267 = sub_1000136BC(v263, v265, v365);

          *(v255 + 34) = v267;
          *(v255 + 42) = 2160;
          *(v255 + 44) = 1752392040;
          *(v255 + 52) = 2081;
          v54 = v0 + 808;
          v268 = dispatch thunk of CustomStringConvertible.description.getter();
          v270 = v269;
          sub_100018D00(v355, type metadata accessor for SharingCircleKeyManager.Instruction);
          v271 = sub_1000136BC(v268, v270, v365);

          *(v255 + 54) = v271;
          *(v255 + 62) = 2082;
          swift_getErrorValue();
          v272 = Error.localizedDescription.getter();
          v274 = sub_1000136BC(v272, v273, v365);

          *(v255 + 64) = v274;
          _os_log_impl(&_mh_execute_header, v250, v364, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v255, 0x48u);
          swift_arrayDestroy();
        }

        else
        {
          v275 = *(v0 + 1928);
          v276 = *(v0 + 1920);
          v277 = *(v0 + 1912);

          sub_100018D00(v277, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v276, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v275, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        v55 = 0;
        goto LABEL_48;
      }

      v166 = v86;
      v167 = *(v0 + 1808);
      v168 = *(v0 + 1520);
      v353 = *(v0 + 1512);
      v357 = v79;
      v169 = *(v0 + 1416);
      sub_100006654(v88, v87);
      swift_setDeallocating();
      sub_100391554(v82 + 32);
      swift_deallocClassInstance();
      sub_100D11DC8(v167, &v168[*(v169 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
      *v168 = v59;
      *&v168[*(v169 + 24)] = v166;
      sub_100D11DC8(v168, v353, type metadata accessor for KeyDropInterface.KeyPackage);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v363 = sub_100A5BE40(0, v363[2] + 1, 1, v363);
      }

      v171 = v363[2];
      v170 = v363[3];
      if (v171 >= v170 >> 1)
      {
        v363 = sub_100A5BE40((v170 > 1), v171 + 1, 1, v363);
      }

      v172 = *(v0 + 1960);
      v173 = *(v0 + 1520);
      v174 = *(v0 + 1512);
      v175 = *(v0 + 1504);
      v176 = *(v0 + 1424);
      v177 = *(v0 + 1120);
      v363[2] = v171 + 1;
      sub_100D12974(v174, v363 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v171, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100D11DC8(v177, v172, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v173, v175, type metadata accessor for KeyDropInterface.KeyPackage);
      v178 = Logger.logObject.getter();
      v179 = static os_log_type_t.default.getter();
      v180 = os_log_type_enabled(v178, v179);
      v181 = *(v0 + 1960);
      v182 = *(v0 + 1520);
      v183 = *(v0 + 1504);
      if (v180)
      {
        v184 = swift_slowAlloc();
        v365[0] = swift_slowAlloc();
        *v184 = 136446466;
        v185 = sub_100C71778();
        v354 = v182;
        v187 = v186;
        sub_100018D00(v181, type metadata accessor for SharingCircleKeyManager.Instruction);
        v188 = sub_1000136BC(v185, v187, v365);

        *(v184 + 4) = v188;
        *(v184 + 12) = 2082;
        v189 = sub_101255410();
        v191 = v190;
        sub_100018D00(v183, type metadata accessor for KeyDropInterface.KeyPackage);
        v192 = sub_1000136BC(v189, v191, v365);

        *(v184 + 14) = v192;
        _os_log_impl(&_mh_execute_header, v178, v179, "Keys to upload: %{public}s,\nadded: %{public}s.", v184, 0x16u);
        swift_arrayDestroy();

        v53 = v0 + 232;
        sub_100391554(v360);
        sub_100016590(v80, v357);
        v193 = v354;
      }

      else
      {

        sub_100391554(v360);
        sub_100016590(v80, v357);
        v202 = v183;
        v53 = v0 + 232;
        sub_100018D00(v202, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100018D00(v181, type metadata accessor for SharingCircleKeyManager.Instruction);
        v193 = v182;
      }

      sub_100018D00(v193, type metadata accessor for KeyDropInterface.KeyPackage);
      v55 = 0;
      v54 = v0 + 808;
      goto LABEL_22;
    case 9:
      v132 = *(v0 + 1768);
      v133 = *(v0 + 1760);
      v134 = *(v0 + 1344);
      sub_1000D2A70(*(v0 + 2168), v134, &qword_1016B0478, &unk_1013CDC10);
      v135 = *(v132 + 48);
      *(v0 + 2440) = v135;
      *(v0 + 2448) = (v132 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v133) = v135(v134, 1, v133);
      sub_10000B3A8(v134, &qword_1016B0478, &unk_1013CDC10);
      if (v133 == 1)
      {
        v323 = swift_task_alloc();
        *(v0 + 2456) = v323;
        *v323 = v0;
        v324 = sub_100CD2EEC;
        goto LABEL_106;
      }

      v136 = *(v0 + 2440);
      v137 = *(v0 + 1760);
      v138 = *(v0 + 1336);
      sub_1000D2A70(*(v0 + 2168), v138, &qword_1016B0478, &unk_1013CDC10);
      v139 = v136(v138, 1, v137);
      v140 = *(v0 + 1336);
      if (v139 != 1)
      {
        sub_100D12974(v140, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
        v337 = swift_task_alloc();
        *(v0 + 2472) = v337;
        *v337 = v0;
        v337[1] = sub_100CD5928;
        v338 = *(v0 + 2152);
        v339 = *(v0 + 2144);
        v340 = *(v0 + 1896);
        v341 = *(v0 + 1776);
        v342 = *(v0 + 1384);
        v343 = *(v0 + 1120);

        sub_100CF3F94(v342, v343, v340, v341, v339, v338);
        return;
      }

      v141 = *(v0 + 1968);
      v142 = *(v0 + 1120);
      sub_10000B3A8(v140, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v142, v141, type metadata accessor for SharingCircleKeyManager.Instruction);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();
      v143 = os_log_type_enabled(v106, v107);
      v109 = *(v0 + 1968);
      if (!v143)
      {
        goto LABEL_47;
      }

      v110 = swift_slowAlloc();
      v365[0] = swift_slowAlloc();
      *v110 = 136446466;
      v144 = sub_100C71778();
      v146 = v145;
      sub_100018D00(v109, type metadata accessor for SharingCircleKeyManager.Instruction);
      v147 = sub_1000136BC(v144, v146, v365);

      *(v110 + 4) = v147;
      *(v110 + 12) = 2082;
      v115 = 9;
      goto LABEL_46;
    case 12:
      v89 = *(v0 + 1824);
      v90 = *(v0 + 1816);
      v91 = *(v0 + 1168);
      sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v91, &qword_1016980D0, &unk_10138F3B0);
      if ((*(v89 + 48))(v91, 1, v90) == 1)
      {
        v92 = *(v0 + 1192);
        v93 = *(v0 + 1184);
        v94 = *(v0 + 1176);
        sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
        (*(v92 + 56))(v94, 1, 1, v93);
        goto LABEL_66;
      }

      v151 = *(v0 + 1896);
      v152 = *(v0 + 1872);
      v153 = *(v0 + 1160);
      (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
      sub_100D11DC8(v151 + *(v152 + 24), v153, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
LABEL_61:
          v198 = *(v0 + 1192);
          v199 = *(v0 + 1184);
          v200 = *(v0 + 1176);
          v201 = *(v0 + 1160);
          (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
          sub_100018D00(v201, type metadata accessor for StableIdentifier);
          (*(v198 + 56))(v200, 1, 1, v199);
          goto LABEL_66;
        }

        v194 = *(v0 + 1824);
        v195 = *(v0 + 1816);
        v196 = *(v0 + 1160);
        v197 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        v159 = *(v196 + *(v197 + 96));
        (*(v194 + 8))(v196, v195);
      }

      else
      {
        if (EnumCaseMultiPayload < 2)
        {
          goto LABEL_61;
        }

        v155 = *(v0 + 1824);
        v156 = *(v0 + 1160);
        v157 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        v158 = (v156 + *(v157 + 96));
        v159 = *v158;
        LOBYTE(v156) = v158[1];

        v160 = *(v155 + 8);
        if (v156)
        {
          v161 = *(v0 + 1816);
          v162 = *(v0 + 1192);
          v163 = *(v0 + 1184);
          v164 = *(v0 + 1176);
          v165 = *(v0 + 1160);
          v160(*(v0 + 1840), v161);
          (*(v162 + 56))(v164, 1, 1, v163);
          v160(v165, v161);
          v54 = v0 + 808;
          goto LABEL_66;
        }

        v160(*(v0 + 1160), *(v0 + 1816));
        v54 = v0 + 808;
      }

      v203 = *(v0 + 1192);
      v204 = *(v0 + 1184);
      v205 = *(v0 + 1176);
      (*(v0 + 2104))(v205, *(v0 + 1840), *(v0 + 1816));
      *(v205 + *(v204 + 20)) = v159;
      (*(v203 + 56))(v205, 0, 1, v204);
LABEL_66:
      v206 = *(v0 + 1176);
      if ((*(*(v0 + 1192) + 48))(v206, 1, *(v0 + 1184)) == 1)
      {
        sub_10000B3A8(v206, &qword_1016B9B20, &qword_1013E3680);
        goto LABEL_22;
      }

      v207 = *(v0 + 1904);
      v208 = *(v0 + 1120);
      sub_100D12974(v206, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
      v209 = *(v208 + *(v207 + 44));
      if (!*(v209 + 16))
      {
        goto LABEL_71;
      }

      v210 = sub_100771F0C(12);
      if ((v211 & 1) == 0)
      {
        goto LABEL_71;
      }

      v212 = *(v0 + 1768);
      v213 = *(v0 + 1760);
      v214 = *(v0 + 1736);
      v215 = *(v0 + 1712);
      v216 = *(v0 + 1320);
      sub_100D11DC8(*(v209 + 56) + *(*(v0 + 1720) + 72) * v210, v214, type metadata accessor for BookmarkMetaData);
      sub_1000D2A70(v214 + *(v215 + 20), v216, &qword_1016B0478, &unk_1013CDC10);
      sub_100018D00(v214, type metadata accessor for BookmarkMetaData);
      if ((*(v212 + 48))(v216, 1, v213) == 1)
      {
        sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
        v54 = v0 + 808;
LABEL_71:
        v217 = *(v0 + 1248);
        v218 = *(v0 + 1240);
        v219 = *(v0 + 1216);
        (*(v217 + 56))(v219, 1, 1, v218);
        static Date.distantPast.getter();
        if ((*(v217 + 48))(v219, 1, v218) != 1)
        {
          sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        v220 = *(v0 + 1320);
        v221 = *(v0 + 1280);
        v222 = *(v0 + 1248);
        v223 = *(v0 + 1240);
        v224 = *(v0 + 1216);
        (*(v222 + 16))(v224, v220 + *(*(v0 + 1760) + 24), v223);
        sub_100018D00(v220, type metadata accessor for KeyDropInterface.KeyAlignment);
        (*(v222 + 56))(v224, 0, 1, v223);
        (*(v222 + 32))(v221, v224, v223);
        v54 = v0 + 808;
      }

      v225 = *(v0 + 1896);
      v226 = *(v0 + 1272);
      v227 = objc_autoreleasePoolPush();
      sub_100D088CC(v225, v226);
      if (v55)
      {

        objc_autoreleasePoolPop(v227);
        return;
      }

      v228 = *(v0 + 1272);
      v229 = *(v0 + 1248);
      v230 = *(v0 + 1240);
      objc_autoreleasePoolPop(v227);
      sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v231 = dispatch thunk of static Comparable.< infix(_:_:)();
      v232 = *(v229 + 8);
      v232(v228, v230);
      if (v231)
      {
        v233 = *(v0 + 1200);
        v232(*(v0 + 1280), *(v0 + 1240));
        v234 = v233;
      }

      else
      {
        type metadata accessor for PropertyListEncoder();
        swift_allocObject();
        PropertyListEncoder.init()();
        sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes, &unk_10138BA58);
        v235 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v237 = v236;
        v358 = *(v0 + 2152);
        v238 = *(v0 + 2144);
        v239 = *(v0 + 1680);
        v240 = v235;

        v241 = type metadata accessor for EncryptedData();
        (*(*(v241 - 8) + 56))(v239, 1, 1, v241);
        sub_100017D5C(v240, v237);
        sub_10125A120(1, v240, v237, v239, v54);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v242 = swift_allocObject();
        v243 = *(v54 + 32);
        v244 = *(v54 + 48);
        v245 = *v54;
        *(v242 + 48) = *(v54 + 16);
        *(v242 + 64) = v243;
        *(v242 + 80) = v244;
        *(v242 + 96) = *(v54 + 64);
        *(v242 + 16) = xmmword_101385D80;
        *(v242 + 32) = v245;
        sub_10002E98C(v238, v358);
        sub_1003914F8(v54, v0 + 448);
        v246 = sub_100D11764(v242, v238, v358);
        v356 = v240;
        v359 = v237;
        v278 = *(v0 + 1808);
        v279 = *(v0 + 1472);
        v351 = *(v0 + 1464);
        v280 = *(v0 + 1416);
        v281 = v246;
        sub_100006654(*(v0 + 2144), *(v0 + 2152));
        swift_setDeallocating();
        sub_100391554(v242 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v278, &v279[*(v280 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v279 = 12;
        *&v279[*(v280 + 24)] = v281;
        sub_100D11DC8(v279, v351, type metadata accessor for KeyDropInterface.KeyPackage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v363 = sub_100A5BE40(0, v363[2] + 1, 1, v363);
        }

        v283 = v363[2];
        v282 = v363[3];
        if (v283 >= v282 >> 1)
        {
          v363 = sub_100A5BE40((v282 > 1), v283 + 1, 1, v363);
        }

        v284 = *(v0 + 1944);
        v285 = *(v0 + 1472);
        v286 = *(v0 + 1464);
        v287 = *(v0 + 1456);
        v288 = *(v0 + 1424);
        v289 = *(v0 + 1120);
        v363[2] = v283 + 1;
        sub_100D12974(v286, v363 + ((*(v288 + 80) + 32) & ~*(v288 + 80)) + *(v288 + 72) * v283, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v289, v284, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v285, v287, type metadata accessor for KeyDropInterface.KeyPackage);
        v290 = Logger.logObject.getter();
        v291 = static os_log_type_t.default.getter();
        v292 = os_log_type_enabled(v290, v291);
        v293 = *(v0 + 1944);
        v352 = *(v0 + 1472);
        v294 = *(v0 + 1456);
        v295 = *(v0 + 1280);
        v296 = *(v0 + 1240);
        v297 = *(v0 + 1200);
        if (v292)
        {
          v348 = v291;
          v298 = swift_slowAlloc();
          v365[0] = swift_slowAlloc();
          *v298 = 136446466;
          v349 = v295;
          v350 = v296;
          v299 = sub_100C71778();
          v301 = v300;
          sub_100018D00(v293, type metadata accessor for SharingCircleKeyManager.Instruction);
          v302 = sub_1000136BC(v299, v301, v365);

          *(v298 + 4) = v302;
          *(v298 + 12) = 2082;
          v303 = sub_101255410();
          v305 = v304;
          sub_100018D00(v294, type metadata accessor for KeyDropInterface.KeyPackage);
          v306 = sub_1000136BC(v303, v305, v365);

          *(v298 + 14) = v306;
          _os_log_impl(&_mh_execute_header, v290, v348, "Keys to upload: %{public}s,\nadded: %{public}s.", v298, 0x16u);
          swift_arrayDestroy();

          v54 = v0 + 808;
          sub_100391554(v362);
          sub_100016590(v356, v359);
          sub_100018D00(v352, type metadata accessor for KeyDropInterface.KeyPackage);
          v232(v349, v350);
        }

        else
        {

          v54 = v0 + 808;
          sub_100391554(v362);
          sub_100016590(v356, v359);
          sub_100018D00(v294, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v293, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v352, type metadata accessor for KeyDropInterface.KeyPackage);
          v232(v295, v296);
        }

        v234 = v297;
      }

      sub_100018D00(v234, type metadata accessor for KeyDropBeaconGroupAttributes);
      v55 = 0;
      v53 = v0 + 232;
      goto LABEL_22;
    case 13:
      v312 = swift_task_alloc();
      *(v0 + 2488) = v312;
      *v312 = v0;
      v312[1] = sub_100CD880C;
      v313 = *(v0 + 1896);
      v314 = *(v0 + 1232);

      sub_100CF5FBC(v314, v313);
      return;
    case 16:
      v319 = swift_task_alloc();
      *(v0 + 2496) = v319;
      *v319 = v0;
      v319[1] = sub_100CDBC44;
      v320 = *(v0 + 1896);
      v321 = *(v0 + 1264);
      v322 = *(v0 + 1144);

      sub_100CF6C9C(v321, v322, v320);
      return;
    default:
      goto LABEL_22;
  }
}