unint64_t sub_10003545C(uint64_t a1, unint64_t a2)
{
  v10 = 0;
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:

    v7 = sub_10003563C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, v2, &v10);

    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    goto LABEL_7;
  }

LABEL_8:
  v7 = sp_key_index_map_contains_key_prefix();
LABEL_9:
  v8 = v10;
  if ((v7 & 1) == 0)
  {
    v8 = 0;
  }

  return v8 | (((v7 & 1) == 0) << 32);
}

unint64_t sub_1000355E4(uint64_t a1, unint64_t a2)
{

  return sub_10003545C(a1, a2);
}

uint64_t sub_10003563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return sp_key_index_map_contains_key_prefix();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000356D8(uint64_t a1, unint64_t a2)
{

  return sub_1000355E4(a1, a2);
}

void *sub_100035730(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
  OS_dispatch_queue.sync<A>(execute:)();
  if (!*(v15 + 16))
  {
    goto LABEL_6;
  }

  v7 = sub_1000210EC(a1);
  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(*(v15 + 56) + 8 * v7);

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_100034824(*(v9 + 16), 0);
    v12 = sub_1000364B4(&v15, v11 + 4, v10, v9);
    sub_1000128F8(v15);
    if (v12 != v10)
    {
      __break(1u);
LABEL_6:

      v13 = _swiftEmptyArrayStorage;
      goto LABEL_10;
    }
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  v13 = sub_100034838(v11);

  if (a2)
  {

    v13 = sub_10013D160(a2, a3, v13);
    sub_1000BB27C(a2, a3);
  }

LABEL_10:
  objc_autoreleasePoolPop(v6);
  return v13;
}

uint64_t sub_1000358B8()
{

  return _swift_task_switch(sub_1000359B4, 0, 0);
}

uint64_t sub_1000359B4()
{
  v1 = v0[23];
  if ((*(v0[21] + 48))(v1, 1, v0[20]) == 1)
  {
    (*(v0[31] + 8))(v0[32], v0[30]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[2];
    sub_100035B84(v1, v0[22], type metadata accessor for ObservedAdvertisement);

    return _swift_task_switch(sub_100035BEC, v4, 0);
  }
}

uint64_t sub_100035B84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100035C14()
{
  v60 = v0;
  v1 = *(v0 + 176);
  if ((*(v0 + 424) & 1) == 0)
  {
    sub_10003627C(v1, type metadata accessor for ObservedAdvertisement);
LABEL_8:
    v19 = swift_task_alloc();
    *(v0 + 312) = v19;
    *v19 = v0;
    v19[1] = sub_1000358B8;
    v20 = *(v0 + 240);
    v21 = *(v0 + 184);

    return AsyncStream.Iterator.next(isolation:)(v21, 0, 0, v20);
  }

  v2 = *(v0 + 96);
  sub_1000D2A70(v1 + *(*(v0 + 160) + 52), v2, &qword_101699DB0, &unk_101393100);
  v3 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  v5 = *(v0 + 176);
  if (v4 == 1)
  {
    v6 = *(v0 + 96);
    sub_10003627C(*(v0 + 176), type metadata accessor for ObservedAdvertisement);
    v7 = &qword_101699DB0;
    v8 = &unk_101393100;
LABEL_7:
    sub_10000B3A8(v6, v7, v8);
    goto LABEL_8;
  }

  v9 = *(v0 + 152);
  v10 = *(v0 + 144);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  v13 = *(v0 + 96);
  v14 = *(v0 + 80);
  v54 = *(v0 + 160);
  v55 = *(v0 + 72);
  v15 = *(v0 + 64);
  v16 = *(v12 + 16);
  *(v0 + 320) = v16;
  *(v0 + 328) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v57 = v16;
  v16(v10, v13, v11);
  sub_10003627C(v13, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v17 = *(v12 + 32);
  *(v0 + 336) = v17;
  *(v0 + 344) = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v17(v9, v10, v11);
  sub_1000D2A70(v5 + *(v54 + 48), v15, &qword_1016AA430, &unk_101392650);
  if ((*(v14 + 48))(v15, 1, v55) == 1)
  {
    v18 = *(v0 + 176);
    v6 = *(v0 + 64);
    (*(*(v0 + 112) + 8))(*(v0 + 152), *(v0 + 104));
    sub_10003627C(v18, type metadata accessor for ObservedAdvertisement);
    v7 = &qword_1016AA430;
    v8 = &unk_101392650;
    goto LABEL_7;
  }

  v22 = *(v0 + 152);
  v23 = *(v0 + 104);
  v24 = *(v0 + 88);
  v25 = *(v0 + 72);
  v26 = *(v0 + 56);
  v27 = *(v0 + 24);
  sub_100035B84(*(v0 + 64), v24, type metadata accessor for ObservedAdvertisement.Location);
  UUID.init()();
  v57(&v26[v27[6]], v22, v23);
  v28 = *v24;
  v29 = v24[1];
  v30 = v24[2];
  v31 = *(v25 + 28);
  v56 = v27[10];
  v32 = type metadata accessor for Date();
  v33 = *(v32 - 8);
  v34 = *(v33 + 16);
  v34(&v26[v56], v24 + v31, v32);
  v35 = v27[12];
  v34(&v26[v35], v24 + v31, v32);
  (*(v33 + 56))(&v26[v35], 0, 1, v32);
  *v26 = xmmword_10138C660;
  *&v26[v27[7]] = v28;
  *&v26[v27[8]] = v29;
  *&v26[v27[9]] = v30;
  v26[v27[11]] = 2;
  *&v26[v27[13]] = 0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 152);
  v37 = *(v0 + 136);
  v38 = *(v0 + 104);
  v39 = type metadata accessor for Logger();
  sub_1000076D4(v39, qword_10177B368);
  v57(v37, v36, v38);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 136);
  v44 = *(v0 + 104);
  v45 = *(v0 + 112);
  if (v42)
  {
    v46 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v59 = v58;
    *v46 = 141558275;
    *(v46 + 4) = 1752392040;
    *(v46 + 12) = 2081;
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    v50 = *(v45 + 8);
    v50(v43, v44);
    v51 = sub_1000136BC(v47, v49, &v59);

    *(v46 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v40, v41, "Saving location for beacon - from observation store update: beacon: %{private,mask.hash}s.", v46, 0x16u);
    sub_100007BAC(v58);
  }

  else
  {

    v50 = *(v45 + 8);
    v50(v43, v44);
  }

  *(v0 + 352) = v50;
  v52 = swift_task_alloc();
  *(v0 + 360) = v52;
  *v52 = v0;
  v52[1] = sub_1007E3558;

  return daemon.getter();
}

uint64_t sub_10003627C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000362DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003633C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_100036438(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000BC4D4(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_1000364B4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100036624()
{

  if (v0)
  {

    v1 = sub_10001BA08;
  }

  else
  {

    v1 = sub_100B28000;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10003676C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 272) = v3;
  *v3 = v2;
  v3[1] = sub_100039558;
  v4 = *(v1 + 248);

  return sub_100036DE8(v4);
}

uint64_t sub_1000368C4()
{
  v36 = v0;
  if (*(v0 + 408) == 1)
  {
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 240);
    v2 = *(v0 + 248);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B5D8);
    sub_10002963C(v2, v1, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 240);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v35 = v8;
      *v7 = 141558275;
      *(v7 + 4) = 1752392040;
      *(v7 + 12) = 2081;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v10;
      sub_10001F210(v6, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v12 = sub_1000136BC(v9, v11, &v35);

      *(v7 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "Managed periphereral: %{private,mask.hash}s", v7, 0x16u);
      sub_100007BAC(v8);
    }

    else
    {
      v25 = *(v0 + 240);

      sub_10001F210(v25, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    }

    v26 = *(v0 + 120);
    v27 = *(v0 + 128);
    v28 = *(v0 + 104);
    sub_10002963C(*(v0 + 176), v28, type metadata accessor for ObservedAdvertisement);
    (*(v27 + 56))(v28, 0, 1, v26);
    v29 = swift_task_alloc();
    *(v0 + 280) = v29;
    *v29 = v0;
    v29[1] = sub_1008E5FAC;
    v30 = *(v0 + 104);
    v31 = *(v0 + 88);

    return sub_1008E9104(v30, v31);
  }

  else
  {
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 248);
    v14 = *(v0 + 232);
    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177B5D8);
    sub_10002963C(v13, v14, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 232);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35 = v20;
      *v19 = 141558275;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_10001F210(v18, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v24 = sub_1000136BC(v21, v23, &v35);

      *(v19 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "Not a managed periphereral: %{private,mask.hash}s", v19, 0x16u);
      sub_100007BAC(v20);
    }

    else
    {
      v33 = *(v0 + 232);

      sub_10001F210(v33, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    }

    v34 = swift_task_alloc();
    *(v0 + 288) = v34;
    *v34 = v0;
    v34[1] = sub_1008E615C;

    return daemon.getter();
  }
}

uint64_t sub_100036DE8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[16] = v5;
  *v5 = v2;
  v5[1] = sub_100036F40;

  return daemon.getter();
}

uint64_t sub_100036F40(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 136) = a1;

  v3 = swift_task_alloc();
  *(v2 + 144) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019588(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_10003711C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10003711C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = v3[8];

    return _swift_task_switch(sub_1008E5C10, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[21] = v6;
    *v6 = v4;
    v6[1] = sub_100038038;
    v7 = v3[7];

    return sub_100028F54(v7);
  }
}

uint64_t sub_1000372AC()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1000373AC(v0 + v3, v0 + v4);
}

uint64_t sub_1000373AC(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[15] = swift_task_alloc();
  v3 = swift_task_alloc();
  v2[16] = v3;
  *v3 = v2;
  v3[1] = sub_100037478;

  return daemon.getter();
}

uint64_t sub_100037478(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 136) = a1;

  v3 = swift_task_alloc();
  *(v2 + 144) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100037654;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100037654(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003A5B90, 0, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v4[21] = v6;
    *v6 = v5;
    v6[1] = sub_100037BA0;

    return sub_1000377F8(a1);
  }
}

uint64_t sub_1000377F8(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for MemberSharingCircle(0);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for OwnerSharingCircle(0);
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v1[18] = v5;
  v1[19] = *(v5 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_100037A8C, 0, 0);
}

uint64_t type metadata accessor for MemberSharingCircle(uint64_t a1)
{
  result = qword_10169DF68;
  if (!qword_10169DF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for OwnerSharingCircle(uint64_t a1)
{
  result = qword_1016BC238;
  if (!qword_1016BC238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037A8C()
{
  if (byte_1016CC7D8)
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[7];
    (*(v0[15] + 56))(v0[21], 1, 1, v0[14]);

    return _swift_task_switch(sub_101297BF4, v3, 0);
  }
}

uint64_t sub_100037BA0()
{

  return _swift_task_switch(sub_100037C9C, 0, 0);
}

uint64_t sub_100037C9C()
{
  if (qword_1016954D8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  swift_beginAccess();
  v2 = qword_1016CC7D0;

  LOBYTE(v1) = sub_100037E20(v1, v2);

  if (v1)
  {
    if (qword_101695510 != -1)
    {
      swift_once();
    }

    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_1003A5C00;

    return sub_100507C6C();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100037E20(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100009894(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100009894(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100038038(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v5 = sub_1008E5C9C;
  }

  else
  {
    v5 = sub_100038164;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100038164()
{
  v50 = v0;
  v1 = v0[22];
  v48 = *(v1 + 16);
  if (v48)
  {
    if (qword_101694A58 != -1)
    {
LABEL_25:
      swift_once();
    }

    v2 = v0[15];
    v3 = v0[12];
    v4 = v0[13];
    v5 = v0[7];
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177B5D8);
    (*(v4 + 16))(v2, v5, v3);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[15];
    v12 = v0[12];
    v11 = v0[13];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v13 = 136315907;
      *(v13 + 4) = sub_1000136BC(0xD000000000000025, 0x80000001013644B0, v49);
      *(v13 + 12) = 2048;
      *(v13 + 14) = *(v1 + 16);

      *(v13 + 22) = 2160;
      *(v13 + 24) = 1752392040;
      *(v13 + 32) = 2081;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v11 + 8))(v10, v12);
      v17 = sub_1000136BC(v14, v16, v49);

      *(v13 + 34) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s Found [%ld] beacon infos  for %{private,mask.hash}s", v13, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v34 = 0;
    v36 = v0[9];
    v35 = v0[10];
    v37 = enum case for Feature.FindMy.spPlaySoundAll(_:);
    while (1)
    {
      v38 = v34;
      if (v48 == v34)
      {
        break;
      }

      if (v34 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v39 = v0[11];
      sub_10002963C(v0[22] + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34, v39, type metadata accessor for KeyGenerationBeaconInfo);
      if (*(v39 + *(v36 + 28)))
      {
        v43 = v0[11];

        sub_10001F210(v43, type metadata accessor for KeyGenerationBeaconInfo);
        goto LABEL_20;
      }

      v40 = v0[11];
      ++v34;
      My = type metadata accessor for Feature.FindMy();
      v0[5] = My;
      v0[6] = sub_100019588(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
      v42 = sub_1000280DC(v0 + 2);
      (*(*(My - 8) + 104))(v42, v37, My);
      LOBYTE(My) = isFeatureEnabled(_:)();
      sub_10001F210(v40, type metadata accessor for KeyGenerationBeaconInfo);
      sub_100007BAC(v0 + 2);
      if (My)
      {

        goto LABEL_20;
      }
    }

LABEL_20:

    v45 = v0[1];
    v46 = v48 != v38;
  }

  else
  {

    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[12];
    v21 = v0[7];
    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177B5D8);
    (*(v19 + 16))(v18, v21, v20);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[13];
    v26 = v0[14];
    v28 = v0[12];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v29 = 136315651;
      *(v29 + 4) = sub_1000136BC(0xD000000000000025, 0x80000001013644B0, v49);
      *(v29 + 12) = 2160;
      *(v29 + 14) = 1752392040;
      *(v29 + 22) = 2081;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v27 + 8))(v26, v28);
      v33 = sub_1000136BC(v30, v32, v49);

      *(v29 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s Missing beacon info for %{private,mask.hash}s!", v29, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v27 + 8))(v26, v28);
    }

    sub_1002685E8();
    swift_allocError();
    *v44 = 4;
    swift_willThrow();

    v45 = v0[1];
    v46 = 0;
  }

  return v45(v46);
}

unint64_t sub_100038888(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000211C0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  a2(0);
  dispatch thunk of Hashable.hash(into:)();
  v10 = Hasher._finalize()();
  return sub_1000389D8(a1, v10, a3, a4, a5);
}

unint64_t sub_1000389D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v19 = a3(0);
  __chkstk_darwin(v19);
  v11 = &v18 - v10;
  v12 = -1 << *(v5 + 32);
  v13 = a2 & ~v12;
  if ((*(v5 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v9 + 72);
    do
    {
      sub_100038B5C(*(v5 + 48) + v15 * v13, v11, a4);
      if (static UUID.== infix(_:_:)())
      {
        v16 = static UUID.== infix(_:_:)();
        sub_100038BC4(v11, a5);
        if (v16)
        {
          return v13;
        }
      }

      else
      {
        sub_100038BC4(v11, a5);
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v5 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_100038B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100038BC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100038C24(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for ObservedAdvertisement(0);
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &unk_10169BB50, &unk_101395760);
    sub_1001E4F44(a2, v7);
    sub_1000296A4(a2, type metadata accessor for BeaconIdentifier);
    return sub_10000B3A8(v7, &unk_10169BB50, &unk_101395760);
  }

  else
  {
    sub_100038E0C(a1, v10, type metadata accessor for ObservedAdvertisement);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_100038FAC(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1000296A4(a2, type metadata accessor for BeaconIdentifier);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_100038E0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100038E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100038EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100038F44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100038FAC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for BeaconIdentifier(0);
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_100038994(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = type metadata accessor for ObservedAdvertisement(0);
      return sub_100039158(a1, v20 + *(*(v21 - 8) + 72) * v13, type metadata accessor for ObservedAdvertisement);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_101006B74();
    goto LABEL_7;
  }

  sub_100FE9D48(v16, a3 & 1);
  v23 = sub_100038994(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100022ABC(a2, v10, type metadata accessor for BeaconIdentifier);
  return sub_101003724(v13, v10, a1, v19);
}

uint64_t sub_100039158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000391C0(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v2[20] = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[21] = swift_task_alloc();
  v3 = type metadata accessor for SharedBeaconRecord(0);
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[25] = v4;
  v5 = *(v4 - 8);
  v2[26] = v5;
  v2[27] = *(v5 + 64);
  v2[28] = swift_task_alloc();
  v2[29] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[30] = swift_task_alloc();
  v6 = type metadata accessor for OwnedBeaconRecord(0);
  v2[31] = v6;
  v2[32] = *(v6 - 8);
  v2[33] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v2[34] = swift_task_alloc();
  v7 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v2[35] = v7;
  v2[36] = *(v7 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_1000396A0, v1, 0);
}

uint64_t sub_100039464()
{
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_1008E615C;

  return daemon.getter();
}

uint64_t sub_1000394F4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100039558(char a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 96);
  if (v1)
  {

    v7 = sub_1008E5D28;
  }

  else
  {
    *(v5 + 408) = a1 & 1;
    v7 = sub_1000368C4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000396A0()
{
  v39 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 144);
  v5 = type metadata accessor for ObservedAdvertisement(0);
  *(v0 + 320) = v5;
  sub_1000D2A70(v4 + *(v5 + 52), v3, &qword_101699DB0, &unk_101393100);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(*(v0 + 272), &qword_101699DB0, &unk_101393100);
    if (qword_1016944F0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177A7D8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Not updating key sync metadata for unreconciled advertisement.", v9, 2u);
    }

    goto LABEL_7;
  }

  v12 = *(v0 + 144);
  sub_100018118(*(v0 + 272), *(v0 + 312), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  if (((*(v12 + 32) >> 4) & 3) == 0)
  {
    sub_10001F210(*(v0 + 312), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
LABEL_7:

    v10 = *(v0 + 8);

    return v10();
  }

  v13 = *(v0 + 144);
  if ((v13[31] & 0x20) != 0)
  {
    v28 = *(*(v0 + 312) + *(*(v0 + 280) + 24));
    v29 = *(v5 + 44);
    v30 = swift_task_alloc();
    *(v0 + 328) = v30;
    *v30 = v0;
    v30[1] = sub_1008E6F88;
    v31 = *(v0 + 312);

    return sub_1008E9A28(v28, &v13[v29], v31);
  }

  else
  {
    *(v0 + 477) = v13[34];
    if (v13[35])
    {
      if (qword_1016944F0 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 304);
      v15 = *(v0 + 312);
      v16 = type metadata accessor for Logger();
      sub_1000076D4(v16, qword_10177A7D8);
      sub_10002963C(v15, v14, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      v19 = os_log_type_enabled(v17, v18);
      v21 = *(v0 + 304);
      v20 = *(v0 + 312);
      if (v19)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38 = v23;
        *v22 = 141558275;
        *(v22 + 4) = 1752392040;
        *(v22 + 12) = 2081;
        sub_100019588(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        sub_10001F210(v21, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
        v27 = sub_1000136BC(v24, v26, &v38);

        *(v22 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to update key sync metadata - no hint provided for wild advertisement for %{private,mask.hash}s.", v22, 0x16u);
        sub_100007BAC(v23);

        sub_10001F210(v20, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      }

      else
      {

        sub_10001F210(v21, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
        sub_10001F210(v20, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      }

      goto LABEL_7;
    }

    v32 = *(v0 + 312);
    v33 = *(v0 + 280);
    if (*(v32 + *(v33 + 20)))
    {
      v34 = &type metadata for SecondaryIndex;
      v35 = sub_10022A4D4();
    }

    else
    {
      v34 = &type metadata for PrimaryWildIndex;
      v35 = sub_10022A528();
    }

    v36 = *(v32 + *(v33 + 24));
    *(v0 + 40) = v34;
    *(v0 + 48) = v35;
    *(v0 + 16) = v36;
    v37 = swift_task_alloc();
    *(v0 + 344) = v37;
    *v37 = v0;
    v37[1] = sub_1008E71A0;

    return daemon.getter();
  }
}

uint64_t sub_100039C64()
{

  v1 = v0[31];
  v2 = v0[25];
  v3 = v0[22];

  sub_10001F210(v3, type metadata accessor for ObservedAdvertisement);
  sub_10001F210(v2, type metadata accessor for BeaconIdentifier);
  sub_10001F210(v1, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100039E1C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[12] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v2[15] = *(v4 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v2[23] = swift_task_alloc();
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  v2[24] = found;
  v2[25] = *(found - 8);
  v2[26] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[27] = v6;
  *v6 = v2;
  v6[1] = sub_10003A06C;

  return daemon.getter();
}

uint64_t type metadata accessor for NotifyWhenFoundRecord(uint64_t a1)
{
  result = qword_1016A2830;
  if (!qword_1016A2830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003A06C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[28] = a1;

  v3 = swift_task_alloc();
  v2[29] = v3;
  v4 = type metadata accessor for Daemon();
  v2[30] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[31] = v6;
  v7 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10003A2A8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10003A260(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10003A2A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = *(v4 + 88);
    v6 = sub_100043C54;
  }

  else
  {

    *(v4 + 264) = a1;
    v6 = sub_10003A3E4;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10003A3E4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 168);
  v3 = *(v0 + 112);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v3 + 16);
  *(v0 + 272) = v6;
  *(v0 + 280) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 456) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 288) = v9;
  *(v9 + 16) = v1;
  (*(v3 + 32))(v9 + v8, v2, v4);

  v10 = swift_task_alloc();
  *(v0 + 296) = v10;
  *v10 = v0;
  v10[1] = sub_100355D88;
  v12 = *(v0 + 176);
  v11 = *(v0 + 184);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_10003A5EC, v9, v12);
}

uint64_t sub_10003A564(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_10003A604@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = type metadata accessor for DirectorySequence();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v43 = *(v1 + 168);
  v15 = objc_autoreleasePoolPush();
  if (qword_1016947A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v8, qword_10177AEC8);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v15);
  v44 = _swiftEmptyArrayStorage;
  v45 = _swiftEmptyArrayStorage;
  v16 = [objc_opt_self() defaultManager];
  v39 = v14;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v41 = v9;
  v17 = *(v9 + 48);
  if (v17(v4, 1, v8) != 1)
  {
    v42 = *(v41 + 32);
    v18 = (v41 + 8);
    do
    {
      v42(v12, v4, v8);
      v19 = v17;
      v20 = objc_autoreleasePoolPush();
      sub_1006029CC(v12, v43, &v45, &v44);
      v21 = v20;
      v17 = v19;
      objc_autoreleasePoolPop(v21);
      (*v18)(v12, v8);
      DirectorySequence.next()();
    }

    while (v19(v4, 1, v8) != 1);
  }

  (*(v37 + 8))(v7, v38);
  v22 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v23 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10138BBE0;
  v25 = v45;
  v26 = v45[2];
  *(v24 + 56) = &type metadata for Int;
  *(v24 + 64) = &protocol witness table for Int;
  *(v24 + 32) = v26;
  sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v27 = v39;
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = sub_100008C00();
  *(v24 + 72) = v28;
  *(v24 + 80) = v30;
  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Found %i records at %@", 22, 2, v24);

  (*(v41 + 8))(v27, v8);

  if (v25[2])
  {
    found = type metadata accessor for NotifyWhenFoundRecord(0);
    v32 = *(found - 8);
    v33 = v40;
    sub_100022A54(v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v40, type metadata accessor for NotifyWhenFoundRecord);

    return (*(v32 + 56))(v33, 0, 1, found);
  }

  else
  {

    v35 = type metadata accessor for NotifyWhenFoundRecord(0);
    return (*(*(v35 - 8) + 56))(v40, 1, 1, v35);
  }
}

uint64_t sub_10003ABC0(char *a1, uint64_t a2, char *a3, int a4)
{
  LODWORD(v406) = a4;
  v426 = a3;
  v433 = a1;
  v419 = sub_1000BC4D4(&qword_101699848, &unk_1013D6610);
  __chkstk_darwin(v419);
  v418 = &v379 - v5;
  v393 = type metadata accessor for SystemInfo.DeviceLockState();
  v383 = *(v393 - 8);
  v6 = __chkstk_darwin(v393);
  v392 = &v379 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v391 = &v379 - v8;
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v9 - 8);
  v389 = &v379 - v10;
  v11 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  v12 = __chkstk_darwin(v11 - 8);
  v417 = &v379 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v414 = &v379 - v14;
  v430 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
  v382 = *(v430 - 8);
  v15 = __chkstk_darwin(v430);
  v407 = &v379 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v403 = (&v379 - v17);
  v410 = type metadata accessor for BeaconStatus(0);
  v18 = __chkstk_darwin(v410);
  v381 = &v379 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v400 = &v379 - v21;
  __chkstk_darwin(v20);
  v404 = &v379 - v22;
  v23 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v24 = __chkstk_darwin(v23 - 8);
  v413 = &v379 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v420 = (&v379 - v26);
  v443 = type metadata accessor for BeaconObservation(0);
  v434 = *(v443 - 1);
  v27 = __chkstk_darwin(v443);
  v442 = (&v379 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __chkstk_darwin(v27);
  v441 = &v379 - v30;
  v31 = __chkstk_darwin(v29);
  v398 = &v379 - v32;
  v33 = __chkstk_darwin(v31);
  v444 = (&v379 - v34);
  v35 = __chkstk_darwin(v33);
  v37 = &v379 - v36;
  __chkstk_darwin(v35);
  v409 = (&v379 - v38);
  v425 = type metadata accessor for Date();
  v429 = *(v425 - 8);
  v39 = __chkstk_darwin(v425);
  v408 = &v379 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v405 = &v379 - v42;
  v43 = __chkstk_darwin(v41);
  v440 = (&v379 - v44);
  v45 = __chkstk_darwin(v43);
  v427 = &v379 - v46;
  v47 = __chkstk_darwin(v45);
  v424 = (&v379 - v48);
  v49 = __chkstk_darwin(v47);
  v428 = &v379 - v50;
  v51 = __chkstk_darwin(v49);
  v435 = &v379 - v52;
  __chkstk_darwin(v51);
  v415 = (&v379 - v53);
  v54 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v55 = __chkstk_darwin(v54 - 8);
  v412 = &v379 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v394 = &v379 - v57;
  v58 = sub_1000BC4D4(&qword_1016AA4E0, &unk_1013BD0E0);
  __chkstk_darwin(v58);
  v60 = &v379 - v59;
  v61 = sub_1000BC4D4(&qword_1016AA4E8, &unk_1013D67A0);
  __chkstk_darwin(v61 - 8);
  v63 = (&v379 - v62);
  v64 = sub_1000BC4D4(&unk_1016AA4F0, &unk_1013BD0F0);
  v421 = *(v64 - 8);
  v65 = __chkstk_darwin(v64);
  v387 = &v379 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __chkstk_darwin(v65);
  v385 = &v379 - v68;
  v69 = __chkstk_darwin(v67);
  v432 = &v379 - v70;
  __chkstk_darwin(v69);
  v399 = &v379 - v71;
  v72 = type metadata accessor for UUID();
  v73 = __chkstk_darwin(v72);
  v384 = &v379 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __chkstk_darwin(v73);
  v379 = &v379 - v76;
  v77 = __chkstk_darwin(v75);
  v380 = &v379 - v78;
  v79 = __chkstk_darwin(v77);
  v390 = (&v379 - v80);
  v81 = __chkstk_darwin(v79);
  v431 = &v379 - v82;
  v83 = __chkstk_darwin(v81);
  v396 = &v379 - v84;
  v85 = __chkstk_darwin(v83);
  v388 = &v379 - v86;
  v87 = __chkstk_darwin(v85);
  v402 = &v379 - v88;
  v89 = __chkstk_darwin(v87);
  *&v401 = &v379 - v90;
  v91 = __chkstk_darwin(v89);
  v397 = &v379 - v92;
  v93 = __chkstk_darwin(v91);
  v386 = &v379 - v94;
  __chkstk_darwin(v93);
  v96 = &v379 - v95;
  v439 = v97;
  v98 = *(v97 + 16);
  v395 = a2;
  v436 = v99;
  v423 = v97 + 16;
  v422 = v98;
  (v98)(&v379 - v95, a2);
  if (qword_101694940 != -1)
  {
    goto LABEL_142;
  }

  while (1)
  {
    OS_dispatch_queue.sync<A>(execute:)();
    v411 = sub_101073C70(v452);

    v100._object = 0x800000010136C350;
    v100._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v100);
    v101 = *&v437[OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue];
    __chkstk_darwin(v102);
    *(&v379 - 2) = v103;
    *(&v379 - 1) = v96;
    v438 = v96;
    v416 = v101;
    OS_dispatch_queue.sync<A>(execute:)();
    v104 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
    if ((*(*(v104 - 8) + 48))(v60, 1, v104) == 1)
    {
      sub_10000B3A8(v60, &qword_1016AA4E0, &unk_1013BD0E0);
      v105 = v443;
      v432 = 0;
      v421[7](v63, 1, 1, v64);
      v108 = &qword_1016AA4E8;
      v109 = &unk_1013D67A0;
      v110 = v63;
    }

    else
    {
      v106 = v64;
      v107 = sub_100A870CC(v63 + *(v64 + 48));
      v105 = v443;
      LOBYTE(v63->magic) = v107 & 1;
      sub_10000B3A8(v60, &qword_1016998D0, &unk_1013931A0);
      v421[7](v63, 0, 1, v64);
      v175 = v399;
      sub_1000D2AD8(v63, v399, &unk_1016AA4F0, &unk_1013BD0F0);
      v176 = v432;
      sub_1000D2A70(v175, v432, &unk_1016AA4F0, &unk_1013BD0F0);
      v177 = *v176;
      sub_100022C40(&v176[*(v106 + 48)], type metadata accessor for DeviceEvent);
      if (v177 == 1)
      {
        sub_1000D2A70(v175, v176, &unk_1016AA4F0, &unk_1013BD0F0);
        v178 = &v176[*(v106 + 48)];
        LODWORD(v444) = *(v178 + 9);
        sub_100022C40(v178, type metadata accessor for DeviceEvent);
        v179 = v385;
        sub_1000D2A70(v175, v385, &unk_1016AA4F0, &unk_1013BD0F0);
        v180 = v179 + *(v106 + 48);
        if (*(v180 + 9) == 5)
        {
          OS_dispatch_queue.sync<A>(execute:)();
          sub_101073C8C(v452);

          type metadata accessor for DeviceEvent(0);
          v181 = v394;
          Date.addingTimeInterval(_:)();
          v182 = 0;
          v183 = v425;
          v157 = v436;
        }

        else
        {
          v182 = 1;
          v183 = v425;
          v157 = v436;
          v181 = v394;
        }

        v277 = v387;
        v278 = v429;
        (*(v429 + 56))(v181, v182, 1, v183);
        sub_100022C40(v180, type metadata accessor for DeviceEvent);
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v279 = type metadata accessor for Logger();
        sub_1000076D4(v279, qword_10177BA08);
        v280 = v386;
        v422(v386, v438, v157);
        sub_1000D2A70(v175, v277, &unk_1016AA4F0, &unk_1013BD0F0);
        v281 = Logger.logObject.getter();
        v282 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v281, v282))
        {
          v283 = swift_slowAlloc();
          v443 = swift_slowAlloc();
          v452 = v443;
          *v283 = 141558787;
          *(v283 + 4) = 1752392040;
          *(v283 + 12) = 2081;
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          LODWORD(v441) = v282;
          v284 = dispatch thunk of CustomStringConvertible.description.getter();
          v286 = v285;
          v442 = *(v439 + 8);
          (v442)(v280, v436);
          v287 = sub_1000136BC(v284, v286, &v452);

          *(v283 + 14) = v287;
          *(v283 + 22) = 1026;
          *(v283 + 24) = v444;
          *(v283 + 28) = 2082;
          v288 = v432;
          sub_1000D2A70(v277, v432, &unk_1016AA4F0, &unk_1013BD0F0);
          v289 = v288 + *(v106 + 48);
          v290 = type metadata accessor for DeviceEvent(0);
          v291 = v415;
          (*(v278 + 16))(v415, v289 + *(v290 + 24), v183);
          sub_100022C40(v289, type metadata accessor for DeviceEvent);
          sub_10000768C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v292 = dispatch thunk of CustomStringConvertible.description.getter();
          v294 = v293;
          (*(v278 + 8))(v291, v183);
          sub_10000B3A8(v277, &unk_1016AA4F0, &unk_1013BD0F0);
          v295 = sub_1000136BC(v292, v294, &v452);

          *(v283 + 30) = v295;
          _os_log_impl(&_mh_execute_header, v281, v441, "Beacon %{private,mask.hash}s is connected (via %{public}u since: %{public}s.", v283, 0x26u);
          swift_arrayDestroy();

          v157 = v436;

          v296 = v399;
          v181 = v394;
        }

        else
        {

          sub_10000B3A8(v277, &unk_1016AA4F0, &unk_1013BD0F0);
          v442 = *(v439 + 8);
          (v442)(v280, v157);
          v296 = v175;
        }

        sub_10000B3A8(v296, &unk_1016AA4F0, &unk_1013BD0F0);
        sub_1000D2AD8(v181, v433, &unk_101696900, &unk_10138B1E0);
        v233 = 1;
        goto LABEL_105;
      }

      v432 = 0;
      v108 = &unk_1016AA4F0;
      v109 = &unk_1013BD0F0;
      v110 = v175;
    }

    sub_10000B3A8(v110, v108, v109);
    v111 = *(v426 + 2);
    if (v111)
    {
      v112 = (*(v434 + 80) + 32) & ~*(v434 + 80);
      v113 = *(v434 + 72);
      v114 = _swiftEmptyArrayStorage;
      v115 = &v426[v112];
      v116 = *(v426 + 2);
      do
      {
        sub_100022A54(v115, v37, type metadata accessor for BeaconObservation);
        v117 = *(v37 + *(v105 + 6));
        if (qword_1013D6DD0[v117] == 501 || qword_1013D6DD0[v117] == 503)
        {
          sub_10002911C(v37, v444, type metadata accessor for BeaconObservation);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v452 = v114;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_101124308(0, v114[2] + 1, 1);
            v114 = v452;
          }

          v120 = v114[2];
          v119 = v114[3];
          if (v120 >= v119 >> 1)
          {
            sub_101124308((v119 > 1), v120 + 1, 1);
            v114 = v452;
          }

          v114[2] = v120 + 1;
          sub_10002911C(v444, v114 + v112 + v120 * v113, type metadata accessor for BeaconObservation);
          v105 = v443;
        }

        else
        {
          sub_100022C40(v37, type metadata accessor for BeaconObservation);
        }

        v115 += v113;
        --v116;
      }

      while (v116);
    }

    else
    {
      v114 = _swiftEmptyArrayStorage;
    }

    v121 = v420;
    sub_1012BB138(v114, v420);

    v122 = *(v434 + 48);
    v123 = v122(v121, 1, v105);
    v124 = v433;
    if (v123 == 1)
    {
      sub_10000B3A8(v121, &qword_1016A42E0, &qword_1013B0010);
      v63 = v440;
      goto LABEL_21;
    }

    v125 = v121;
    v126 = v409;
    sub_10002911C(v125, v409, type metadata accessor for BeaconObservation);
    v127 = v438;
    v63 = v440;
    if (*(v126 + *(v105 + 6)) != 35)
    {
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v155 = type metadata accessor for Logger();
      sub_1000076D4(v155, qword_10177BA08);
      v156 = v397;
      v157 = v436;
      v422(v397, v127, v436);
      v158 = v398;
      sub_100022A54(v126, v398, type metadata accessor for BeaconObservation);
      v159 = v126;
      v160 = Logger.logObject.getter();
      v161 = static os_log_type_t.default.getter();
      v162 = os_log_type_enabled(v160, v161);
      v163 = v425;
      v164 = v439;
      if (v162)
      {
        v165 = swift_slowAlloc();
        v452 = swift_slowAlloc();
        *v165 = 141558531;
        *(v165 + 4) = 1752392040;
        *(v165 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v166 = dispatch thunk of CustomStringConvertible.description.getter();
        v168 = v167;
        v442 = *(v164 + 8);
        (v442)(v156, v436);
        v169 = sub_1000136BC(v166, v168, &v452);

        *(v165 + 14) = v169;
        *(v165 + 22) = 2082;
        sub_10000768C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v170 = dispatch thunk of CustomStringConvertible.description.getter();
        v172 = v171;
        sub_100022C40(v158, type metadata accessor for BeaconObservation);
        v173 = sub_1000136BC(v170, v172, &v452);

        *(v165 + 24) = v173;
        _os_log_impl(&_mh_execute_header, v160, v161, "Beacon %{private,mask.hash}s is connected (via bluetooth) since: %{public}s.", v165, 0x20u);
        swift_arrayDestroy();
        v124 = v433;

        v157 = v436;

        v174 = v409;
      }

      else
      {

        sub_100022C40(v158, type metadata accessor for BeaconObservation);
        v442 = *(v164 + 8);
        (v442)(v156, v157);
        v174 = v159;
      }

      sub_100022C40(v174, type metadata accessor for BeaconObservation);
      v233 = 1;
      (*(v429 + 56))(v124, 1, 1, v163);
LABEL_105:
      v191 = v438;
      goto LABEL_106;
    }

    sub_100022C40(v126, type metadata accessor for BeaconObservation);
LABEL_21:
    v128 = _swiftEmptyArrayStorage;
    if (v111)
    {
      v129 = (*(v434 + 80) + 32) & ~*(v434 + 80);
      v130 = *(v434 + 72);
      v131 = &v426[v129];
      v132 = v441;
      do
      {
        sub_100022A54(v131, v132, type metadata accessor for BeaconObservation);
        if (*(v132 + *(v105 + 6)) == 36)
        {
          sub_10002911C(v132, v442, type metadata accessor for BeaconObservation);
          v133 = swift_isUniquelyReferenced_nonNull_native();
          v452 = v128;
          if ((v133 & 1) == 0)
          {
            sub_101124308(0, v128[2] + 1, 1);
            v128 = v452;
          }

          v135 = v128[2];
          v134 = v128[3];
          if (v135 >= v134 >> 1)
          {
            sub_101124308((v134 > 1), v135 + 1, 1);
            v128 = v452;
          }

          v128[2] = v135 + 1;
          sub_10002911C(v442, v128 + v129 + v135 * v130, type metadata accessor for BeaconObservation);
          v63 = v440;
          v105 = v443;
        }

        else
        {
          sub_100022C40(v132, type metadata accessor for BeaconObservation);
        }

        v131 += v130;
        --v111;
      }

      while (v111);
    }

    v136 = v413;
    sub_1012BB138(v128, v413);

    v137 = v122(v136, 1, v105);
    v138 = v438;
    if (v137 == 1)
    {
      sub_10000B3A8(v136, &qword_1016A42E0, &qword_1013B0010);
      v64 = v429;
      v139 = v412;
      v140 = v425;
      v420 = *(v429 + 56);
      (v420)(v412, 1, 1, v425);
      static Date.distantPast.getter();
      v141 = (*(v64 + 48))(v139, 1, v140);
      v142 = v428;
      v143 = v414;
      if (v141 != 1)
      {
        sub_10000B3A8(v139, &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v64 = v429;
      v144 = v412;
      v140 = v425;
      (*(v429 + 16))(v412, v136 + *(v105 + 5), v425);
      sub_100022C40(v136, type metadata accessor for BeaconObservation);
      v420 = *(v64 + 56);
      (v420)(v144, 0, 1, v140);
      (*(v64 + 32))(v435, v144, v140);
      v142 = v428;
      v143 = v414;
    }

    sub_100AC6DA0(v138, v143);
    v145 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
    v413 = *(v145 - 8);
    v146 = *(v413 + 48);
    v426 = (v413 + 48);
    v421 = v146;
    v147 = (v146)(v143, 1, v145);
    v434 = v145;
    if (v147 == 1)
    {
      sub_10000B3A8(v143, &qword_10169DBD0, &unk_1013D6790);
      static Date.distantPast.getter();
      goto LABEL_50;
    }

    v148 = *(v143 + *(v145 + 48));
    v149 = v430;
    v150 = *(v430 + 48);
    v151 = v143;
    v152 = v403;
    sub_10002911C(v151, v403, type metadata accessor for BeaconStatus);
    *(v152 + v150) = v148;
    v153 = *(v152 + *(v149 + 48));
    v154 = v404;
    sub_10002911C(v152, v404, type metadata accessor for BeaconStatus);
    if (v153 > 1)
    {
      if (v153 == 2)
      {
LABEL_48:
        (*(v64 + 16))(v142, v154 + *(v410 + 24), v140);
        goto LABEL_49;
      }
    }

    else if (v153)
    {
      goto LABEL_48;
    }

    static Date.distantPast.getter();
LABEL_49:
    sub_100022C40(v154, type metadata accessor for BeaconStatus);
LABEL_50:
    sub_10000768C(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v184 = v435;
    v185 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v157 = *(v64 + 16);
    v186 = (v185 & 1) != 0 ? v142 : v184;
    v96 = v424;
    v157(v424, v186, v140);
    Date.addingTimeInterval(_:)();
    v187 = v415;
    static Date.trustedNow.getter(v415);
    Date.timeIntervalSince(_:)();
    v189 = v188;
    v190 = *(v64 + 8);
    v441 = (v64 + 8);
    v440 = v190;
    (v190)(v187, v140);
    if (v189 > 0.0)
    {
      break;
    }

    v210 = v438;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v211 = type metadata accessor for Logger();
    v212 = sub_1000076D4(v211, qword_10177BA08);
    v213 = v402;
    v214 = v436;
    v422(v402, v210, v436);
    v215 = v405;
    v157(v405, v96, v140);
    v216 = Logger.logObject.getter();
    v217 = static os_log_type_t.default.getter();
    v218 = os_log_type_enabled(v216, v217);
    v404 = v212;
    if (v218)
    {
      v219 = swift_slowAlloc();
      v452 = swift_slowAlloc();
      *v219 = 141558531;
      *(v219 + 4) = 1752392040;
      *(v219 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v220 = dispatch thunk of CustomStringConvertible.description.getter();
      v221 = v213;
      v223 = v222;
      v224 = v439;
      v442 = *(v439 + 8);
      (v442)(v221, v214);
      v225 = sub_1000136BC(v220, v223, &v452);

      *(v219 + 14) = v225;
      *(v219 + 22) = 2082;
      sub_10000768C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v226 = dispatch thunk of CustomStringConvertible.description.getter();
      v228 = v227;
      (v440)(v215, v140);
      v229 = sub_1000136BC(v226, v228, &v452);

      *(v219 + 24) = v229;
      _os_log_impl(&_mh_execute_header, v216, v217, "Beacon %{private,mask.hash}s is not connected. Last seen: %{public}s.", v219, 0x20u);
      swift_arrayDestroy();
      v230 = v224;
    }

    else
    {

      (v440)(v215, v140);
      v230 = v439;
      v442 = *(v439 + 8);
      (v442)(v213, v214);
    }

    v157 = v214;
    v191 = v438;
    v63 = v424;
    if ((v406 & 1) == 0)
    {
      v240 = v440;
      (v440)(v427, v140);
      (v240)(v63, v140);
      (v240)(v428, v140);
      (v240)(v435, v140);
LABEL_73:
      v242 = v420;
      goto LABEL_74;
    }

    sub_100025020(v395, &v449);
    if (!v450)
    {
      v241 = v440;
      (v440)(v427, v140);
      (v241)(v63, v140);
      (v241)(v428, v140);
      (v241)(v435, v140);
      sub_10000B3A8(&v449, &qword_101696920, &unk_10138B200);
      goto LABEL_73;
    }

    v234 = v191;
    sub_10000A748(&v449, &v452);
    v235 = v453;
    v236 = v454;
    sub_1000035D0(&v452, v453);
    v237 = v235;
    v238 = v389;
    (*(v236 + 200))(v237, v236);
    if ((*(v230 + 48))(v238, 1, v214) == 1)
    {
      v239 = v440;
      (v440)(v427, v140);
      (v239)(v63, v140);
      (v239)(v428, v140);
      (v239)(v435, v140);
      sub_10000B3A8(v238, &qword_1016980D0, &unk_10138F3B0);
      sub_100007BAC(&v452);
      v191 = v234;
      goto LABEL_73;
    }

    v243 = v388;
    v443 = *(v230 + 32);
    v444 = (v230 + 32);
    (v443)(v388, v238, v214);
    sub_100ACBC98(v243, &v449);
    v244 = v450;
    if (!v450)
    {
      sub_10000B3A8(&v449, &unk_1016AA480, &unk_1013BD050);
      v298 = _swiftEmptyArrayStorage;
      v96 = v408;
      v64 = v434;
LABEL_109:
      v415 = v298;
      v191 = v400;
      v414 = v298[2];
      if (v414)
      {
        v299 = 0;
        v412 = (v415 + 4);
        v409 = (v382 + 48);
        v406 = (v413 + 56);
        v413 = v230 + 8;
        do
        {
          if (v299 >= v415[2])
          {
            __break(1u);
            goto LABEL_144;
          }

          v63 = v96;
          sub_10001F280(&v412[40 * v299], &v449);
          v300 = v450;
          v301 = v451;
          sub_1000035D0(&v449, v450);
          v302 = v431;
          (*(*(*(v301 + 8) + 8) + 32))(v300);
          v303._countAndFlagsBits = 0xD000000000000015;
          v303._object = (v411 | 0x8000000000000000);
          prohibitAsyncContext(functionName:)(v303);
          __chkstk_darwin(v304);
          *(&v379 - 2) = v437;
          *(&v379 - 1) = v302;
          v305 = v418;
          v306 = v432;
          OS_dispatch_queue.sync<A>(execute:)();
          v432 = v306;
          v307 = v430;
          if ((*v409)(v305, 1, v430) == 1)
          {
            sub_10000B3A8(v305, &qword_101699848, &unk_1013D6610);
            v308 = 1;
            v157 = v436;
            v309 = v417;
          }

          else
          {
            v310 = v305;
            v311 = *(v305 + *(v307 + 48));
            v312 = *(v64 + 48);
            v309 = v417;
            sub_10002911C(v310, v417, type metadata accessor for BeaconStatus);
            v308 = 0;
            *(v309 + v312) = v311;
            v157 = v436;
          }

          (*v406)(v309, v308, 1, v64);
          (v442)(v431, v157);
          if ((v421)(v309, 1, v64) == 1)
          {
            sub_10000B3A8(v309, &qword_10169DBD0, &unk_1013D6790);
            v96 = v63;
            goto LABEL_112;
          }

          v313 = *(v309 + *(v64 + 48));
          v314 = v430;
          v315 = *(v430 + 48);
          v316 = v309;
          v317 = v407;
          sub_10002911C(v316, v407, type metadata accessor for BeaconStatus);
          *(v317 + v315) = v313;
          v318 = *(v317 + *(v314 + 48));
          sub_10002911C(v317, v191, type metadata accessor for BeaconStatus);
          if (v318 > 1)
          {
            v96 = v63;
            if (v318 != 2)
            {
LABEL_120:
              static Date.distantPast.getter();
              goto LABEL_123;
            }
          }

          else
          {
            v96 = v63;
            if (!v318)
            {
              goto LABEL_120;
            }
          }

          Date.addingTimeInterval(_:)();
LABEL_123:
          v157 = v436;
          v64 = v434;
          Date.timeIntervalSinceNow.getter();
          if (v319 > 0.0)
          {
            v320 = sub_10001993C(*(v191 + *(v410 + 20)) & 0xB);
            v321 = (v320 >> 8) & 1;
            v322 = HIWORD(v320) & 1;
            v323 = HIBYTE(v320) & 1;
            v324 = v450;
            v325 = v451;
            v326 = sub_1000035D0(&v449, v450);
            v327 = sub_100B0D624(v326, v321, v322, v323, v437, v324, v325);
            v328 = v327[2];
            if (v328)
            {
              v448 = _swiftEmptyArrayStorage;
              sub_101123D4C(0, v328, 0);
              v329 = v448;
              v330 = (v327 + 4);
              v63 = v390;
              do
              {
                sub_10001F280(v330, &v445);
                v331 = *(&v446 + 1);
                v332 = v447;
                sub_1000035D0(&v445, *(&v446 + 1));
                (*(*(*(v332 + 8) + 8) + 32))(v331);
                sub_100007BAC(&v445);
                v448 = v329;
                v334 = v329[2];
                v333 = v329[3];
                if (v334 >= v333 >> 1)
                {
                  sub_101123D4C((v333 > 1), v334 + 1, 1);
                  v329 = v448;
                }

                v329[2] = v334 + 1;
                (v443)(v329 + ((*(v439 + 80) + 32) & ~*(v439 + 80)) + *(v439 + 72) * v334, v63, v157);
                v330 += 40;
                --v328;
              }

              while (v328);
            }

            else
            {

              v329 = _swiftEmptyArrayStorage;
            }

            v335 = sub_1005C8A30(v438, v329);

            v140 = v425;
            v191 = v400;
            v96 = v408;
            v64 = v434;
            if (v335)
            {
              v351 = v380;
              v422(v380, v438, v157);
              sub_10001F280(&v449, &v445);
              v352 = v381;
              sub_100022A54(v191, v381, type metadata accessor for BeaconStatus);
              v353 = v415;

              v354 = Logger.logObject.getter();
              v355 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v354, v355))
              {
                v356 = swift_slowAlloc();
                v444 = swift_slowAlloc();
                v448 = v444;
                *v356 = 141559299;
                *(v356 + 4) = 1752392040;
                *(v356 + 12) = 2081;
                sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v357 = dispatch thunk of CustomStringConvertible.description.getter();
                v359 = v358;
                v360 = v442;
                (v442)(v351, v436);
                v361 = sub_1000136BC(v357, v359, &v448);

                *(v356 + 14) = v361;
                *(v356 + 22) = 2048;
                v362 = v353[2];

                *(v356 + 24) = v362;

                *(v356 + 32) = 2160;
                *(v356 + 34) = 1752392040;
                *(v356 + 42) = 2081;
                v140 = v425;
                v364 = *(&v446 + 1);
                v363 = v447;
                sub_1000035D0(&v445, *(&v446 + 1));
                v365 = v379;
                (*(*(*(v363 + 8) + 8) + 32))(v364);
                v366 = dispatch thunk of CustomStringConvertible.description.getter();
                v368 = v367;
                v360(v365, v436);
                sub_100007BAC(&v445);
                v369 = sub_1000136BC(v366, v368, &v448);

                *(v356 + 44) = v369;
                *(v356 + 52) = 2082;
                sub_10000768C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v370 = v381;
                v371 = dispatch thunk of CustomStringConvertible.description.getter();
                v373 = v372;
                sub_100022C40(v370, type metadata accessor for BeaconStatus);
                v374 = sub_1000136BC(v371, v373, &v448);

                *(v356 + 54) = v374;
                _os_log_impl(&_mh_execute_header, v354, v355, "Beacon %{private,mask.hash}s has %ld peers and is connected by %{private,mask.hash}s since %{public}s.", v356, 0x3Eu);
                swift_arrayDestroy();
                v96 = v408;

                v157 = v436;

                sub_100022C40(v400, type metadata accessor for BeaconStatus);
                v360(v388, v157);
                v375 = v440;
                (v440)(v427, v140);
                (v375)(v424, v140);
                (v375)(v428, v140);
                (v375)(v435, v140);
              }

              else
              {

                swift_bridgeObjectRelease_n();
                sub_100022C40(v352, type metadata accessor for BeaconStatus);
                v376 = v442;
                (v442)(v351, v157);
                sub_100022C40(v400, type metadata accessor for BeaconStatus);
                v376(v388, v157);
                v377 = v440;
                (v440)(v427, v140);
                (v377)(v424, v140);
                (v377)(v428, v140);
                (v377)(v435, v140);
                sub_100007BAC(&v445);
              }

              v378 = v433;
              (*(v429 + 32))(v433, v96, v140);
              v233 = 1;
              (v420)(v378, 0, 1, v140);
              sub_100007BAC(&v449);
              sub_100007BAC(&v452);
              goto LABEL_105;
            }
          }

          (v440)(v96, v140);
          sub_100022C40(v191, type metadata accessor for BeaconStatus);
LABEL_112:
          ++v299;
          sub_100007BAC(&v449);
        }

        while (v299 != v414);
      }

      v336 = v384;
      v422(v384, v438, v157);
      v337 = v415;

      v338 = Logger.logObject.getter();
      v339 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v338, v339))
      {
        v340 = swift_slowAlloc();
        v341 = swift_slowAlloc();
        *&v449 = v341;
        *v340 = 141558531;
        *(v340 + 4) = 1752392040;
        *(v340 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v342 = dispatch thunk of CustomStringConvertible.description.getter();
        v344 = v343;
        v345 = v336;
        v346 = v442;
        (v442)(v345, v436);
        v347 = sub_1000136BC(v342, v344, &v449);

        *(v340 + 14) = v347;
        *(v340 + 22) = 2048;
        v348 = v337[2];

        *(v340 + 24) = v348;

        _os_log_impl(&_mh_execute_header, v338, v339, "Beacon %{private,mask.hash}s has %ld peers and is not connected.", v340, 0x20u);
        sub_100007BAC(v341);

        v157 = v436;

        v346(v388, v157);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v349 = v442;
        (v442)(v336, v157);
        v349(v388, v157);
      }

      v350 = v440;
      (v440)(v427, v140);
      (v350)(v424, v140);
      (v350)(v428, v140);
      (v350)(v435, v140);
      v242 = v420;
      sub_100007BAC(&v452);
      v191 = v438;
LABEL_74:
      v242(v433, 1, 1, v140);
      v233 = 0;
      goto LABEL_106;
    }

    v245 = v451;
    sub_1000035D0(&v449, v450);
    v246 = (*(v245 + 16))(v244, v245);
    v60 = &v379;
    __chkstk_darwin(v246);
    *(&v379 - 2) = v234;
    v247 = v432;
    v249 = sub_100B00224(sub_100B23B00, (&v379 - 4), v248);
    v432 = v247;
    v157 = v436;
    sub_100007BAC(&v449);
    v250 = *(v249 + 7);
    v412 = v249 + 56;
    v251 = 1 << v249[32];
    v252 = -1;
    if (v251 < 64)
    {
      v252 = ~(-1 << v251);
    }

    v37 = v252 & v250;
    v411 = (v251 + 63) >> 6;
    LODWORD(v406) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v405 = (v383 + 104);
    v403 = (v383 + 8);
    v402 = (v230 + 8);
    v409 = v249;

    v253 = 0;
    v401 = xmmword_101385D80;
    v63 = &_mh_execute_header;
    v415 = _swiftEmptyArrayStorage;
    v96 = v408;
    v254 = v396;
LABEL_79:
    v64 = v434;
LABEL_80:
    if (v37)
    {
      goto LABEL_85;
    }

    while (1)
    {
      v255 = v253 + 1;
      if (__OFADD__(v253, 1))
      {
        break;
      }

      if (v255 >= v411)
      {

        v140 = v425;
        v298 = v415;
        goto LABEL_109;
      }

      v37 = *&v412[8 * v255];
      ++v253;
      if (v37)
      {
        v253 = v255;
LABEL_85:
        v422(v254, v409[6] + *(v230 + 72) * (__clz(__rbit64(v37)) | (v253 << 6)), v157);
        v256 = static os_log_type_t.info.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v257 = qword_10177C380;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v258 = swift_allocObject();
        *(v258 + 16) = v401;
        v259 = UUID.uuidString.getter();
        v261 = v260;
        *(v258 + 56) = &type metadata for String;
        *(v258 + 64) = sub_100008C00();
        *(v258 + 32) = v259;
        *(v258 + 40) = v261;
        v414 = v257;
        os_log(_:dso:log:_:_:)(v256, &_mh_execute_header, v257, "beaconRecord(for uuid: %@)", 26, 2, v258);

        v262 = v391;
        static SystemInfo.lockState.getter();
        v263 = v392;
        v264 = v393;
        (*v405)(v392, v406, v393);
        sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
        v60 = dispatch thunk of static Equatable.== infix(_:_:)();
        v265 = *v403;
        (*v403)(v263, v264);
        v265(v262, v264);
        if (v60)
        {
          v266 = static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)(v266, &_mh_execute_header, v414, "beaconRecord call failed because in device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
          v447 = 0;
          v445 = 0u;
          v446 = 0u;
          v230 = v439;
          v254 = v396;
        }

        else
        {
          v60 = sub_100007F54();
          __chkstk_darwin(v60);
          v254 = v396;
          *(&v379 - 2) = v396;
          v267 = v432;
          sub_1000314D0(sub_100030E14, v60, &v445);
          v432 = v267;
          v157 = v436;

          v230 = v439;
        }

        v37 &= v37 - 1;
        (v442)(v254, v157);
        v96 = v408;
        v64 = v434;
        if (!*(&v446 + 1))
        {
          sub_10000B3A8(&v445, &qword_101696920, &unk_10138B200);
          goto LABEL_80;
        }

        sub_10000A748(&v445, &v449);
        v268 = v415;
        v269 = swift_isUniquelyReferenced_nonNull_native();
        v448 = v268;
        if ((v269 & 1) == 0)
        {
          v268 = sub_1000084AC(0, v268[2] + 1, 1, v268);
          v448 = v268;
        }

        v271 = v268[2];
        v270 = v268[3];
        if (v271 >= v270 >> 1)
        {
          v415 = sub_1000084AC((v270 > 1), v271 + 1, 1, v268);
          v448 = v415;
        }

        else
        {
          v415 = v268;
        }

        v60 = v450;
        v272 = v451;
        v273 = sub_10015049C(&v449, v450);
        __chkstk_darwin(v273);
        v275 = &v379 - ((v274 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v276 + 16))(v275);
        sub_100B039C0(v271, v275, &v448, v60, v272);
        sub_100007BAC(&v449);
        v157 = v436;
        v96 = v408;
        goto LABEL_79;
      }
    }

    __break(1u);
LABEL_142:
    swift_once();
  }

  v191 = v438;
  if (qword_101694BE8 != -1)
  {
LABEL_144:
    swift_once();
  }

  v192 = type metadata accessor for Logger();
  sub_1000076D4(v192, qword_10177BA08);
  v193 = v401;
  v194 = v436;
  v422(v401, v191, v436);
  v157(v63, v96, v140);
  v195 = Logger.logObject.getter();
  v196 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v195, v196))
  {
    v197 = swift_slowAlloc();
    v452 = swift_slowAlloc();
    *v197 = 141558531;
    *(v197 + 4) = 1752392040;
    *(v197 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v198 = v196;
    v199 = dispatch thunk of CustomStringConvertible.description.getter();
    v201 = v200;
    v442 = *(v439 + 8);
    (v442)(v193, v194);
    v202 = sub_1000136BC(v199, v201, &v452);

    *(v197 + 14) = v202;
    *(v197 + 22) = 2082;
    sub_10000768C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v203 = dispatch thunk of CustomStringConvertible.description.getter();
    v205 = v204;
    v206 = v63;
    v207 = v440;
    (v440)(v206, v140);
    v208 = sub_1000136BC(v203, v205, &v452);

    *(v197 + 24) = v208;
    _os_log_impl(&_mh_execute_header, v195, v198, "Beacon %{private,mask.hash}s is connected since %{public}s.", v197, 0x20u);
    swift_arrayDestroy();
    v64 = v429;

    v209 = v420;
    (v207)(v424, v140);
    (v207)(v428, v140);
    (v207)(v435, v140);
    v191 = v438;
    v157 = v194;
  }

  else
  {

    v231 = v440;
    (v440)(v63, v140);
    v442 = *(v439 + 8);
    (v442)(v193, v194);
    (v231)(v96, v140);
    (v231)(v428, v140);
    (v231)(v435, v140);
    v157 = v194;
    v209 = v420;
  }

  v232 = v433;
  (*(v64 + 32))(v433, v427, v140);
  v233 = 1;
  v209(v232, 0, 1, v140);
LABEL_106:
  (v442)(v191, v157);
  return v233;
}

uint64_t sub_10003E938(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DefaultConfigurationLayer(0);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9 = *(v4 + 72);
  while (1)
  {
    sub_100041EB0(v8, v6);
    v16[3] = v3;
    v16[4] = &off_10163B190;
    v10 = sub_1000280DC(v16);
    sub_100041EB0(v6, v10);
    swift_getAtKeyPath();
    v11 = v15;
    sub_100007BAC(v16);
    if ((v11 & 1) == 0)
    {
      break;
    }

    sub_100041F5C(v6);
    v8 += v9;
    if (!--v7)
    {
      return 0;
    }
  }

  v17[3] = v3;
  v17[4] = &off_10163B190;
  v13 = sub_1000280DC(v17);
  sub_1000420BC(v6, v13);
  swift_getAtKeyPath();
  sub_100007BAC(v17);
  return v16[0];
}

void *sub_10003EAC8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_10003EB74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v4 - 8);
  v260 = &v255 - v5;
  v268 = sub_1000BC4D4(&unk_101698C20, &qword_101390748);
  __chkstk_darwin(v268);
  v270 = &v255 - v6;
  v7 = type metadata accessor for KeyDropLostItemDates(0);
  v267 = *(v7 - 8);
  __chkstk_darwin(v7);
  v262 = &v255 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v9 - 8);
  v264 = &v255 - v10;
  v11 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v11 - 8);
  v297 = &v255 - v12;
  v299 = type metadata accessor for SharedBeaconRecord(0);
  v279 = *(v299 - 8);
  v13 = __chkstk_darwin(v299);
  v261 = &v255 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v298 = &v255 - v16;
  v17 = __chkstk_darwin(v15);
  v265 = &v255 - v18;
  v266 = v19;
  __chkstk_darwin(v17);
  v300 = &v255 - v20;
  v21 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v22 = __chkstk_darwin(v21 - 8);
  v263 = &v255 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v276 = &v255 - v24;
  v25 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v25 - 8);
  v296 = &v255 - v26;
  v27 = type metadata accessor for OwnedBeaconRecord(0);
  v295 = *(v27 - 8);
  __chkstk_darwin(v27);
  v277 = &v255 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v291);
  v292 = &v255 - v29;
  v293 = type metadata accessor for BeaconNamingRecord(0);
  v290 = *(v293 - 8);
  __chkstk_darwin(v293);
  v278 = &v255 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v31 - 8);
  v289 = &v255 - v32;
  v288 = type metadata accessor for BeaconProductInfoRecord(0);
  v287 = *(v288 - 8);
  __chkstk_darwin(v288);
  v275 = &v255 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  __chkstk_darwin(v34 - 8);
  v285 = &v255 - v35;
  v286 = type metadata accessor for KeyAlignmentRecord(0);
  v284 = *(v286 - 8);
  __chkstk_darwin(v286);
  v274 = &v255 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v37 = __chkstk_darwin(v282);
  v294 = &v255 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v283 = (&v255 - v40);
  __chkstk_darwin(v39);
  v312 = &v255 - v41;
  v313 = type metadata accessor for Date();
  v308 = *(v313 - 8);
  v42 = __chkstk_darwin(v313);
  v256 = &v255 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v257 = &v255 - v45;
  v46 = __chkstk_darwin(v44);
  v273 = &v255 - v47;
  v48 = __chkstk_darwin(v46);
  v272 = &v255 - v49;
  v50 = __chkstk_darwin(v48);
  v281 = &v255 - v51;
  __chkstk_darwin(v50);
  v306 = &v255 - v52;
  v53 = sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0);
  v54 = __chkstk_darwin(v53);
  v280 = &v255 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v307 = &v255 - v56;
  v57 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  __chkstk_darwin(v57 - 8);
  v59 = &v255 - v58;
  v314 = type metadata accessor for UUID();
  v301 = *(v314 - 8);
  v60 = __chkstk_darwin(v314);
  v62 = &v255 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v64 = &v255 - v63;
  v330[3] = v27;
  v330[4] = sub_1003FD7F0(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v65 = sub_1000280DC(v330);
  sub_100032504(a1, v65, type metadata accessor for OwnedBeaconRecord);
  v317 = [objc_allocWithZone(SPBeacon) init];
  v305 = v27;
  v66 = *(v65 + *(v27 + 68));
  v304 = *(v65 + *(v27 + 64));
  v303 = v66;
  v67 = sub_100314604(v304, v66);
  v302 = v64;
  v318 = a2;
  v269 = v7;
  if (v68 >> 60 == 15)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_1000076D4(v69, qword_10177BA08);
    sub_10001F280(v330, &v325);
    sub_10001F280(v330, &v320);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v305;
    if (v72)
    {
      v74 = swift_slowAlloc();
      *v74 = 134218240;
      v75 = *(sub_1000035D0(&v325, *(&v326 + 1)) + v73[16]);
      sub_100007BAC(&v325);
      *(v74 + 4) = v75;
      *(v74 + 12) = 2048;
      v76 = *(sub_1000035D0(&v320, *(&v321 + 1)) + v73[17]);
      sub_100007BAC(&v320);
      *(v74 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v70, v71, "Unable to create AccessoryProductData from %ld/%ld", v74, 0x16u);
    }

    else
    {
      sub_100007BAC(&v320);
      sub_100007BAC(&v325);
    }

    UUID.init(uuid:)();
  }

  else
  {
    v77 = v67;
    v78 = v68;
    if (qword_101694570 != -1)
    {
      swift_once();
    }

    v325 = xmmword_10169DAA8;
    sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
    Data.append(_:)();
    v79 = v325;
    v320 = v325;
    sub_100017D5C(v325, *(&v325 + 1));
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100006654(v77, v78);
    sub_100016590(v79, *(&v79 + 1));
    sub_100016590(v79, *(&v79 + 1));
    v73 = v305;
  }

  v80 = v73[5];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v82 = v317;
  [v317 setIdentifier:isa];

  v83 = String._bridgeToObjectiveC()();
  [v82 setModel:v83];

  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100405DEC();
  v84 = Set._bridgeToObjectiveC()().super.isa;
  [v82 setShares:v84];

  v85 = String._bridgeToObjectiveC()();
  [v82 setSystemVersion:v85];

  v86 = UUID._bridgeToObjectiveC()().super.isa;
  [v82 setProductUUID:v86];

  [v82 setVendorId:v304];
  [v82 setProductId:v303];
  v271 = v73[8];
  v87 = Date._bridgeToObjectiveC()().super.isa;
  [v82 setPairingDate:v87];

  v88 = sub_100D60CD0();
  [v82 setType:v88];

  v311 = v80;
  sub_100ABD87C(v59);
  v89 = type metadata accessor for LostModeRecord(0);
  if ((*(*(v89 - 8) + 48))(v59, 1, v89) == 1)
  {
    sub_10000B3A8(v59, &unk_1016A99E0, &qword_1013A07B0);
    v90 = 0;
  }

  else
  {
    v90 = sub_100E78AA8();
    sub_10040A66C(v59, type metadata accessor for LostModeRecord);
  }

  v91 = v301;
  v92 = v317;
  [v317 setLostModeInfo:v90];

  v93 = *(v53 + 48);
  v94 = *(v91 + 16);
  v95 = v314;
  v310 = v91 + 16;
  v309 = v94;
  v94(v62, v65 + v311, v314);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v96 = sub_100035730(v62, 0, 0);
  v97 = v307;
  v98 = sub_10003ABC0(&v307[v93], v62, v96, 1);

  v99 = *(v91 + 8);
  v316 = v91 + 8;
  v315 = v99;
  v99(v62, v95);
  *v97 = v98 & 1;
  [v92 setConnected:?];
  v100 = v97;
  v101 = v280;
  sub_1000D2A70(v100, v280, &unk_1016AA420, &unk_1013BCFE0);
  v102 = *(v53 + 48);
  v103 = v308;
  v104 = *(v308 + 48);
  v105 = v313;
  v259 = v308 + 48;
  v258 = v104;
  v106 = 0;
  if (v104(v101 + v102, 1, v313) != 1)
  {
    v106 = Date._bridgeToObjectiveC()().super.isa;
    (*(v103 + 8))(v101 + v102, v105);
  }

  v107 = v317;
  [v317 setConnectedStateExpiryDate:v106];

  [v107 setIsAppleAudioAccessory:{sub_100E0EA64(v304, v303)}];
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_10107485C(v325);

  Date.init(timeIntervalSinceNow:)();
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v280 = 0;
  v108 = v325;
  sub_10001F280(v330, &v325);
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  sub_100031694(&v325, v109 + 24);
  v304 = v108;

  v110 = v312;
  unsafeFromAsyncTask<A>(_:)();

  v111 = v283;
  sub_1000D2A70(v110, v283, &unk_1016AF8A0, &unk_10139D7C0);
  v112 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v113 = *(*(v112 - 8) + 48);
  if (v113(v111, 1, v112) == 1)
  {
    sub_10000B3A8(v111, &unk_1016AF8A0, &unk_10139D7C0);
    v114 = 1;
  }

  else
  {
    v114 = *v111;
    sub_10000B3A8(v111, &unk_1016C8FC0, &unk_10139D7D0);
  }

  v115 = v281;
  v116 = v62;
  [v317 setKeySyncLastObservedIndex:v114];
  v117 = v294;
  sub_1000D2A70(v312, v294, &unk_1016AF8A0, &unk_10139D7C0);
  if (v113(v117, 1, v112) == 1)
  {
    sub_10000B3A8(v117, &unk_1016AF8A0, &unk_10139D7C0);
    v118 = v308;
    v119 = v313;
    v283 = *(v308 + 16);
    (v283)(v115, v65 + v271, v313);
  }

  else
  {
    v118 = v308;
    v120 = &v117[*(v112 + 36)];
    v121 = v272;
    v119 = v313;
    v283 = *(v308 + 16);
    (v283)(v272, v120, v313);
    sub_10000B3A8(v117, &unk_1016C8FC0, &unk_10139D7D0);
    (*(v118 + 32))(v115, v121, v119);
  }

  v122 = v314;
  v123 = v65;
  v124 = Date._bridgeToObjectiveC()().super.isa;
  v125 = *(v118 + 8);
  v125(v115, v119);
  v126 = v317;
  [v317 setKeySyncLastIndexObservationDate:v124];

  [v126 setKeySyncWildIndexFallback:1];
  v127 = v123;
  v128 = v123 + v311;
  v129 = v116;
  v309(v116, v128, v122);
  v130 = v285;
  sub_100B2DA4C(v285);
  v315(v129, v122);
  v131 = v286;
  v132 = (*(v284 + 48))(v130, 1, v286);
  v303 = v118 + 8;
  v294 = v125;
  if (v132 == 1)
  {
    sub_10000B3A8(v130, &qword_10169F328, &unk_1013CB040);
    [v126 setKeyAlignmentLastObservedIndex:0];
    v133 = v273;
    static Date.distantPast.getter();
    v134 = Date._bridgeToObjectiveC()().super.isa;
    v125(v133, v119);
    [v126 setKeyAlignmentLastIndexObservationDate:v134];
  }

  else
  {
    v135 = v274;
    sub_10040A014(v130, v274, type metadata accessor for KeyAlignmentRecord);
    [v126 setKeyAlignmentLastObservedIndex:*(v135 + *(v131 + 28))];
    v136 = Date._bridgeToObjectiveC()().super.isa;
    [v126 setKeyAlignmentLastIndexObservationDate:v136];

    sub_10040A66C(v135, type metadata accessor for KeyAlignmentRecord);
  }

  v137 = [v126 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v138 = v289;
  sub_100AC1584(v129, v289);
  v139 = v314;
  v315(v129, v314);
  v140 = (*(v287 + 48))(v138, 1, v288);
  v141 = v293;
  v142 = v292;
  if (v140 == 1)
  {
    sub_10000B3A8(v138, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    v143 = v275;
    sub_10040A014(v138, v275, type metadata accessor for BeaconProductInfoRecord);
    v144 = sub_10083B890();
    [v126 setAccessoryProductInfo:v144];

    sub_10040A66C(v143, type metadata accessor for BeaconProductInfoRecord);
  }

  v145 = (v309)(v129, v127 + v311, v139);
  v146 = v318;
  __chkstk_darwin(v145);
  QueueSynchronizer.conditionalSync<A>(_:)();
  v315(v129, v139);
  if ((*(v290 + 48))(v142, 1, v141) != 1)
  {
    v160 = v278;
    sub_10040A014(v142, v278, type metadata accessor for BeaconNamingRecord);
    v161 = String._bridgeToObjectiveC()();
    v152 = v317;
    [v317 setName:v161];

    v162 = *(v160 + *(v141 + 28));
    v163 = sub_1012BD7E8(v162);
    v164 = v163;
    if (v162 == SPBeaconRoleIdOther && *(v160 + *(v141 + 36) + 8) && v163)
    {
      v165 = [v163 role];
      v166 = v298;
      if (!v165)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v165 = String._bridgeToObjectiveC()();
      }

      v167 = objc_allocWithZone(SPBeaconRole);
      v168 = String._bridgeToObjectiveC()();
      v169 = [v167 initWithRoleId:v162 role:v165 roleEmoji:v168];

      [v152 setRole:v169];
      v139 = v314;
      v170 = v318;
      v160 = v278;
    }

    else
    {
      [v152 setRole:v163];
      v166 = v298;
      v170 = v318;
    }

    v156 = v305;

    sub_10040A66C(v160, type metadata accessor for BeaconNamingRecord);
    v171 = v299;
    goto LABEL_57;
  }

  sub_10000B3A8(v142, &unk_1016B29E0, &unk_1013B70E0);
  sub_10001F280(v330, &v319);
  v147 = swift_allocObject();
  *(v147 + 16) = v146;
  sub_100031694(&v319, v147 + 24);

  sub_1000BC4D4(&unk_1016AF910, &unk_10138C4C0);
  unsafeFromAsyncTask<A>(_:)();

  v325 = v320;
  v326 = v321;
  v327 = v322;
  v328 = v323;
  v148 = v324;
  v329 = v324;
  if (*(&v320 + 1))
  {
    v149 = v327;
    v150 = v326;
    v151 = String._bridgeToObjectiveC()();
    v152 = v317;
    [v317 setName:v151];

    v153 = sub_1012BD7E8(v150);
    v154 = v153;
    if (v150 == SPBeaconRoleIdOther && v149 && v153)
    {

      v155 = [v154 role];
      v156 = v305;
      if (!v155)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v155 = String._bridgeToObjectiveC()();
      }

      v157 = objc_allocWithZone(SPBeaconRole);
      v158 = String._bridgeToObjectiveC()();

      v159 = [v157 initWithRoleId:v150 role:v155 roleEmoji:v158];

      [v152 setRole:v159];
    }

    else
    {
      [v152 setRole:v153];
      v156 = v305;
    }

    v139 = v314;
    v171 = v299;
    v166 = v298;
    v170 = v318;
    if (v148)
    {

      v172 = String._bridgeToObjectiveC()();
      sub_10000B3A8(&v325, &unk_1016AF910, &unk_10138C4C0);
    }

    else
    {
      sub_10000B3A8(&v325, &unk_1016AF910, &unk_10138C4C0);
      v172 = 0;
    }

    [v152 setSerialNumber:v172];

LABEL_57:
    v184 = v297;
    v185 = v296;
    goto LABEL_58;
  }

  v152 = v317;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v173 = type metadata accessor for Logger();
  sub_1000076D4(v173, qword_10177BA08);
  sub_10001F280(v330, &v320);
  v174 = Logger.logObject.getter();
  v175 = static os_log_type_t.error.getter();
  v176 = os_log_type_enabled(v174, v175);
  v166 = v298;
  if (v176)
  {
    v177 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    *&v319 = v178;
    *v177 = 141558275;
    *(v177 + 4) = 1752392040;
    *(v177 + 12) = 2081;
    v179 = sub_1000035D0(&v320, *(&v321 + 1));
    v156 = v305;
    v309(v129, &v179[v305[5]], v314);
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v180 = dispatch thunk of CustomStringConvertible.description.getter();
    v182 = v181;
    v315(v129, v314);
    sub_100007BAC(&v320);
    v183 = sub_1000136BC(v180, v182, &v319);

    *(v177 + 14) = v183;
    _os_log_impl(&_mh_execute_header, v174, v175, "No beacon name record %{private,mask.hash}s. Fallback to custom role.", v177, 0x16u);
    sub_100007BAC(v178);
    v139 = v314;

    v171 = v299;
    v184 = v297;
    v185 = v296;
  }

  else
  {

    sub_100007BAC(&v320);
    v171 = v299;
    v184 = v297;
    v185 = v296;
    v156 = v305;
  }

  v211 = String._bridgeToObjectiveC()();
  [v152 setName:v211];

  v170 = v318;
LABEL_58:
  sub_10001F280(v330, &v325);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v186 = swift_dynamicCast();
  v187 = *(v295 + 56);
  if (v186)
  {
    v187(v185, 0, 1, v156);
    v188 = v185;
    v189 = v277;
    sub_10040A014(v188, v277, type metadata accessor for OwnedBeaconRecord);
    sub_1010DA578();
    v190 = String._bridgeToObjectiveC()();

    [v152 setStableIdentifier:v190];

    v191 = v276;
    sub_1000D2A70(v189 + v156[7], v276, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v301 + 48))(v191, 1, v139) == 1)
    {
      v192 = 0;
    }

    else
    {
      v192 = UUID._bridgeToObjectiveC()().super.isa;
      v315(v191, v139);
    }

    v205 = v294;
    [v152 setGroupIdentifier:v192];

    sub_100B0E4A8(v189);
    if (v206)
    {
      v207 = String._bridgeToObjectiveC()();
    }

    else
    {
      v207 = 0;
    }

    [v152 setSerialNumber:v207];

    [v152 setPartIdentifier:sub_100B0E7A8(v189)];
    [v152 setBatteryLevel:*(v189 + v156[19])];
    [v152 setIsZeus:*(v189 + v156[20])];
    if (qword_101694E80 != -1)
    {
      swift_once();
    }

    [v152 setOwner:qword_10177C088];
    [v152 setAccepted:1];
    v208 = String._bridgeToObjectiveC()();
    [v152 setCorrelationIdentifier:v208];

    [v152 setInternalShareType:-1];
    [v152 setOwnerBeaconIdentifier:0];

    sub_10040A66C(v189, type metadata accessor for OwnedBeaconRecord);
    sub_10000B3A8(v312, &unk_1016AF8A0, &unk_10139D7C0);
    (v205)(v306, v313);
    sub_10000B3A8(v307, &unk_1016AA420, &unk_1013BCFE0);
    v315(v302, v139);
    goto LABEL_93;
  }

  v187(v185, 1, 1, v156);
  sub_10000B3A8(v185, &unk_1016A9A20, &qword_10138B280);
  sub_10001F280(v330, &v325);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_10000B3A8(v312, &unk_1016AF8A0, &unk_10139D7C0);
    (v294)(v306, v313);
    sub_10000B3A8(v307, &unk_1016AA420, &unk_1013BCFE0);
    v315(v302, v139);
    (*(v279 + 56))(v184, 1, 1, v171);
    sub_10000B3A8(v184, &unk_101698C30, &unk_101392630);
    goto LABEL_93;
  }

  (*(v279 + 56))(v184, 0, 1, v171);
  v193 = v184;
  v194 = v300;
  sub_10040A014(v193, v300, type metadata accessor for SharedBeaconRecord);
  v195 = String._bridgeToObjectiveC()();
  [v152 setStableIdentifier:v195];

  v196 = sub_100EB3708(*(v194 + v171[7]), *(v194 + v171[7] + 8), *(v194 + v171[7] + 16));
  [v152 setOwner:v196];

  [v152 setAccepted:*(v194 + v171[13])];
  v197 = String._bridgeToObjectiveC()();
  [v152 setCorrelationIdentifier:v197];

  v198 = v152;
  [v152 setInternalShareType:*(v194 + v171[16])];
  v199 = v194 + v171[20];
  v200 = v264;
  sub_1000D2A70(v199, v264, &unk_1016AF890, &qword_1013926D0);
  v201 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v202 = (*(*(v201 - 8) + 48))(v200, 1, v201);
  v203 = v313;
  if (v202 == 1)
  {
    sub_10000B3A8(v200, &unk_1016AF890, &qword_1013926D0);
    (*(v301 + 56))(v263, 1, 1, v139);
    v204 = 0;
  }

  else
  {
    v209 = v200 + *(v201 + 20);
    v210 = v263;
    sub_1000D2A70(v209, v263, &qword_1016980D0, &unk_10138F3B0);
    sub_10040A66C(v200, type metadata accessor for SharedBeaconRecord.PropertyListContent);
    if ((*(v301 + 48))(v210, 1, v139) == 1)
    {
      v204 = 0;
    }

    else
    {
      v212.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v213 = v210;
      v204 = v212.super.isa;
      v315(v213, v139);
    }
  }

  [v198 setOwnerBeaconIdentifier:v204];

  v214 = v265;
  sub_100032504(v300, v265, type metadata accessor for SharedBeaconRecord);
  v215 = (*(v279 + 80) + 24) & ~*(v279 + 80);
  v216 = swift_allocObject();
  *(v216 + 16) = v170;
  sub_10040A014(v214, v216 + v215, type metadata accessor for SharedBeaconRecord);

  v217 = v270;
  unsafeFromAsyncTask<A>(_:)();

  v218 = v269;
  if ((*(v267 + 48))(v217, 1, v269) == 1)
  {
    v219 = &unk_101698C20;
    v220 = &qword_101390748;
LABEL_81:
    sub_10000B3A8(v217, v219, v220);
    [v198 setLostModeInfo:0];
    v222 = v261;
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v223 = type metadata accessor for Logger();
    sub_1000076D4(v223, qword_10177A560);
    sub_100032504(v300, v222, type metadata accessor for SharedBeaconRecord);
    v224 = Logger.logObject.getter();
    v225 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v224, v225))
    {
      v226 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      *&v325 = v227;
      *v226 = 141558275;
      *(v226 + 4) = 1752392040;
      *(v226 + 12) = 2081;
      sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v228 = dispatch thunk of CustomStringConvertible.description.getter();
      v229 = v139;
      v231 = v230;
      sub_10040A66C(v222, type metadata accessor for SharedBeaconRecord);
      v232 = sub_1000136BC(v228, v231, &v325);

      *(v226 + 14) = v232;
      _os_log_impl(&_mh_execute_header, v224, v225, "Lost mode is not enabled for shared beacon %{private,mask.hash}s.", v226, 0x16u);
      sub_100007BAC(v227);

      sub_10000B3A8(v312, &unk_1016AF8A0, &unk_10139D7C0);
      (v294)(v306, v203);
      sub_10000B3A8(v307, &unk_1016AA420, &unk_1013BCFE0);
      v233 = v302;
      v234 = v229;
    }

    else
    {

      sub_10040A66C(v222, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v312, &unk_1016AF8A0, &unk_10139D7C0);
      (v294)(v306, v203);
      sub_10000B3A8(v307, &unk_1016AA420, &unk_1013BCFE0);
      v233 = v302;
      v234 = v139;
    }

    v315(v233, v234);
    sub_10040A66C(v300, type metadata accessor for SharedBeaconRecord);
    v152 = v198;
    goto LABEL_93;
  }

  v221 = v262;
  sub_10040A014(v217, v262, type metadata accessor for KeyDropLostItemDates);
  v217 = v260;
  sub_1000D2A70(v221 + *(v218 + 20), v260, &unk_101696900, &unk_10138B1E0);
  if (v258(v217, 1, v203) == 1)
  {
    sub_10040A66C(v221, type metadata accessor for KeyDropLostItemDates);
    v219 = &unk_101696900;
    v220 = &unk_10138B1E0;
    goto LABEL_81;
  }

  v235 = v257;
  (*(v308 + 32))(v257, v217, v203);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v236 = type metadata accessor for Logger();
  sub_1000076D4(v236, qword_10177A560);
  sub_100032504(v300, v166, type metadata accessor for SharedBeaconRecord);
  v237 = v256;
  (v283)(v256, v235, v203);
  v238 = Logger.logObject.getter();
  v239 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v238, v239))
  {
    v240 = swift_slowAlloc();
    v318 = swift_slowAlloc();
    *&v325 = v318;
    *v240 = 141558531;
    *(v240 + 4) = 1752392040;
    *(v240 + 12) = 2081;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v241 = dispatch thunk of CustomStringConvertible.description.getter();
    v243 = v242;
    sub_10040A66C(v166, type metadata accessor for SharedBeaconRecord);
    v244 = sub_1000136BC(v241, v243, &v325);

    *(v240 + 14) = v244;
    *(v240 + 22) = 2080;
    sub_1003FD7F0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v245 = dispatch thunk of CustomStringConvertible.description.getter();
    v247 = v246;
    v248 = v294;
    (v294)(v237, v203);
    v249 = sub_1000136BC(v245, v247, &v325);
    v139 = v314;

    *(v240 + 24) = v249;
    _os_log_impl(&_mh_execute_header, v238, v239, "Lost mode is enabled for shared beacon %{private,mask.hash}s\nwith timestamp of %s.", v240, 0x20u);
    swift_arrayDestroy();

    v235 = v257;
  }

  else
  {

    v248 = v294;
    (v294)(v237, v203);
    sub_10040A66C(v166, type metadata accessor for SharedBeaconRecord);
  }

  v250 = objc_allocWithZone(SPLostModeInfo);
  v251 = Date._bridgeToObjectiveC()().super.isa;
  v252 = [v250 initWithMessage:0 email:0 phoneNumber:0 timestamp:v251];

  [v198 setLostModeInfo:v252];

  (v248)(v235, v203);
  sub_10040A66C(v262, type metadata accessor for KeyDropLostItemDates);
  sub_10000B3A8(v312, &unk_1016AF8A0, &unk_10139D7C0);
  v253 = v203;
  v152 = v198;
  (v248)(v306, v253);
  sub_10000B3A8(v307, &unk_1016AA420, &unk_1013BCFE0);
  v315(v302, v139);
  sub_10040A66C(v300, type metadata accessor for SharedBeaconRecord);
LABEL_93:
  sub_100007BAC(v330);
  return v152;
}

uint64_t sub_100041C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 0x2C)
      {
        return v14 - 43;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100041DA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 43;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100041EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultConfigurationLayer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041F14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100041F5C(uint64_t a1)
{
  v2 = type metadata accessor for DefaultConfigurationLayer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100041FB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  KeyPath = swift_getKeyPath();
  v8 = sub_10003E938(KeyPath, a1);
  if (v9)
  {
    _StringGuts.grow(_:)(40);
    v12._object = 0x800000010134CA80;
    v12._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v12);
    sub_1000BC4D4(a3, a4);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v10 = v8;

    return v10;
  }

  return result;
}

uint64_t sub_1000420BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultConfigurationLayer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100042134(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000421D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100042234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  swift_beginAccess();
  v12 = *(a1 + v11);
  if (*(v12 + 16))
  {

    v13 = sub_1000210EC(a2);
    if (v14)
    {
      v15 = v13;
      v16 = *(v12 + 56);
      v17 = sub_1000BC4D4(a4, a5);
      v18 = *(v17 - 8);
      sub_1000D2A70(v16 + *(v18 + 72) * v15, a6, a4, a5);

      return (*(v18 + 56))(a6, 0, 1, v17);
    }
  }

  v20 = sub_1000BC4D4(a4, a5);
  return (*(*(v20 - 8) + 56))(a6, 1, 1, v20);
}

uint64_t sub_1000423C8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000424A8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000424C0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100042584(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1000BC4D4(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  (*(v4 + 8))(v2 + v5, v3);

  return _swift_deallocObject(v2, v5 + v6);
}

uint64_t sub_100042608()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100042690()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100042768()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000427A8()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000428C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100042908()
{

  sub_100016590(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100042948()
{
  v1 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100042A24(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_100042A78()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100042AB8()
{
  v1 = sub_1000BC4D4(&qword_10169E738, &unk_10139DA80);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100042B88()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64) + v3;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 1);
}

uint64_t sub_100042C50()
{
  sub_100016590(*(v0 + 24), *(v0 + 32));
  sub_100016590(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100042C90()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 32) & ~v2;
  v5 = (v2 + ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v4, 1, v6))
  {
    (*(v7 + 8))(v0 + v4, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return _swift_deallocObject(v0, ((((v5 + v3) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100042E34(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_100042E7C()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_1000431E8(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_100043238(uint64_t a1)
{

  return _swift_deallocObject(v1, a1);
}

uint64_t sub_100043284()
{
  v1 = (type metadata accessor for MemberSharingCircle(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  swift_unknownObjectRelease();

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);
  v6(v0 + v2 + v1[9], v5);
  v6(v0 + v2 + v1[10], v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000433E4(void (*a1)(void))
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v4 + 8))(v1 + v5, v3);
  a1(*(v1 + v6));

  return _swift_deallocObject(v1, v6 + 8);
}

uint64_t sub_1000434CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 152);
}

uint64_t sub_10004354C()
{
  v1 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10004361C()
{
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  v2 = (*(*(MyServiceDevice - 1) + 80) + 24) & ~*(*(MyServiceDevice - 1) + 80);
  v16 = *(*(MyServiceDevice - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  (*(v5 + 8))(v3 + MyServiceDevice[7], v4);

  v6 = MyServiceDevice[22];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v10 = MyServiceDevice[23];
  if (!v9(v3 + v10, 1, v7))
  {
    (*(v8 + 8))(v3 + v10, v7);
  }

  v11 = MyServiceDevice[24];
  if (!v9(v3 + v11, 1, v7))
  {
    (*(v8 + 8))(v3 + v11, v7);
  }

  v12 = MyServiceDevice[31];
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v3 + v12, 1, v13))
  {
    (*(v14 + 8))(v3 + v12, v13);
  }

  return _swift_deallocObject(v0, v2 + v16);
}

uint64_t sub_10004397C()
{
  v1 = sub_1000BC4D4(&qword_1016B70F0, &unk_1013DBA20);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100043A10(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1000BC4D4(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v5, v3);

  return _swift_deallocObject(v2, v5 + v6);
}

uint64_t sub_100043AD8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100043BB0(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_100043C14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100043C54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100043D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100043E00(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 248) = a1;
  *(v4 + 256) = v1;

  v5 = *(v3 + 40);
  if (v1)
  {
    v6 = sub_1008E4C3C;
  }

  else
  {
    v6 = sub_100043F34;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100043F34()
{
  v1 = v0[31];
  if (*(v1 + 16))
  {
    v2 = v0[18];
    v3 = v0[16];
    v4 = *(v0[17] + 80);
    sub_10002963C(v1 + ((v4 + 32) & ~v4), v2, type metadata accessor for KeyGenerationBeaconInfo);

    v5 = *(v2 + *(v3 + 28));
    sub_10001F210(v2, type metadata accessor for KeyGenerationBeaconInfo);
    if (v5 == 3)
    {
      v6 = swift_task_alloc();
      v0[33] = v6;
      *v6 = v0;
      v6[1] = sub_1008E3398;

      return daemon.getter();
    }
  }

  else
  {
  }

  v7 = v0[23];

  sub_10001F210(v7, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100044130(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for UUID();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v2[15] = *(v5 + 64);
  v2[16] = swift_task_alloc();
  v2[5] = type metadata accessor for MemberCircleRevokeManager();
  v2[6] = &off_1016634E8;
  v2[2] = a2;

  return _swift_task_switch(sub_100044244, 0, 0);
}

uint64_t sub_100044244()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  (*(v4 + 16))(v1, *(v0 + 96), v3);
  sub_10001F280(v0 + 16, v0 + 56);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v5, v1, v3);
  sub_10000A748((v0 + 56), v7 + v6);
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  sub_100007BAC((v0 + 16));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000443B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  sub_100007BAC((v0 + v4));

  return _swift_deallocObject(v0, v4 + 40);
}

uint64_t sub_10004444C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[25] = a1;

  v3 = swift_task_alloc();
  v2[26] = v3;
  v4 = type metadata accessor for Daemon();
  v2[27] = v4;
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[28] = v6;
  v7 = sub_100019588(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_10004462C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10004462C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 232) = a1;

  if (v1)
  {
    v5 = v3[5];

    return _swift_task_switch(sub_1008E4980, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[30] = v6;
    *v6 = v4;
    v6[1] = sub_100043E00;
    v7 = v3[23];

    return sub_100028F54(v7);
  }
}

uint64_t sub_1000447EC()
{
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044870()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001BBA4C;

  return sub_100044908(v2);
}

uint64_t sub_100044928()
{
  if (qword_101694F40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C200);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Located state reported.", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100E9C428;

  return sub_100E9C520();
}

uint64_t sub_100044A74()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C200);
  v1 = sub_1000076D4(v0, qword_10177C200);
  if (qword_101694F38 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C1E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_100044B3C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100044BA0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C1E8);
  sub_1000076D4(v0, qword_10177C1E8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100044C20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100853494;

  return sub_100044CB0();
}

uint64_t sub_100044CB0()
{
  v1[20] = v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[21] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v1[22] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[23] = v2;
  v3 = *(v2 - 8);
  v1[24] = v3;
  v1[25] = *(v3 + 64);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_100044E00, v0, 0);
}

uint64_t sub_100044E00()
{
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[29] = sub_1000076D4(v1, qword_10177CE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start publishing own device beacons.", v4, 2u);
  }

  v5 = v0[28];

  static Date.trustedNow.getter(v5);
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_100853678;

  return sub_100045274();
}

uint64_t static Date.trustedNow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v2);
  v4 = &v13[-v3];
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v14[0] = 0x7365547265646E75;
  v14[1] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v13[0] == 1)
  {
    v5 = [objc_opt_self() sharedInstance];
    v6 = [v5 isInternalBuild];

    if (v6)
    {
      if (qword_101694418 != -1)
      {
        swift_once();
      }

      v7 = sub_1000076D4(v2, qword_101696A00);
      swift_beginAccess();
      sub_1000D3410(v7, v4);
      v8 = type metadata accessor for Date();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(v4, 1, v8) != 1)
      {
        return (*(v9 + 32))(a1, v4, v8);
      }

      sub_1000D3480(v4);
    }
  }

  My = type metadata accessor for Feature.FindMy();
  v14[3] = My;
  v14[4] = sub_10004521C();
  v11 = sub_1000280DC(v14);
  (*(*(My - 8) + 104))(v11, enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v14);
  if ((My & 1) == 0)
  {
    return Date.init()();
  }

  sub_100F0FFAC();
  return Date.init(timeIntervalSinceReferenceDate:)();
}

unint64_t sub_10004521C()
{
  result = qword_1016AF950;
  if (!qword_1016AF950)
  {
    type metadata accessor for Feature.FindMy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF950);
  }

  return result;
}

uint64_t sub_100045274()
{
  v1[15] = v0;
  v1[16] = type metadata accessor for OS_dispatch_queue.Attributes();
  v1[17] = swift_task_alloc();
  type metadata accessor for DispatchQoS();
  v1[18] = swift_task_alloc();
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = type metadata accessor for LocationFetcher(0);
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_1000455D8, v0, 0);
}

uint64_t type metadata accessor for LocationFetcher(uint64_t a1)
{
  result = qword_1016A5BE0;
  if (!qword_1016A5BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004540C(uint64_t a1)
{
  type metadata accessor for BeaconStore(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BeaconObservationStore(319);
    if (v2 <= 0x3F)
    {
      sub_100008BB8(319, &qword_101695570, OS_dispatch_queue_ptr);
      if (v3 <= 0x3F)
      {
        sub_10062CDC4();
        if (v4 <= 0x3F)
        {
          type metadata accessor for Logger();
          if (v5 <= 0x3F)
          {
            sub_10062CE28(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for DeviceIdentityUtility(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for MemberCircleRevokeManager();
                if (v8 <= 0x3F)
                {
                  type metadata accessor for MemberCircleRevokeAssistant();
                  if (v9 <= 0x3F)
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
  }
}

uint64_t type metadata accessor for BeaconObservationStore(uint64_t a1)
{
  result = qword_1016A96D8;
  if (!qword_1016A96D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000455D8()
{
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching own device locations from disk before publishing own devices.", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = sub_100045724;

  return daemon.getter();
}

uint64_t sub_100045724(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[25] = a1;

  v3 = swift_task_alloc();
  v2[26] = v3;
  v4 = type metadata accessor for Daemon();
  v2[27] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100045918(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[28] = v6;
  v7 = sub_100045918(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100045960;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100045918(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100045960(uint64_t a1)
{
  v3 = *v2;
  v3[29] = a1;
  v3[30] = v1;

  if (v1)
  {
    v4 = v3[15];

    return _swift_task_switch(sub_100860A74, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[31] = v5;
    *v5 = v3;
    v5[1] = sub_100045AD4;

    return daemon.getter();
  }
}

uint64_t sub_100045AD4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 256) = a1;

  v5 = swift_task_alloc();
  *(v3 + 264) = v5;
  v6 = type metadata accessor for LegacyServiceContainer();
  v7 = sub_100045918(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v5 = v4;
  v5[1] = sub_100045C8C;
  v8 = *(v2 + 224);
  v9 = *(v2 + 216);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100045C8C(uint64_t a1)
{
  v4 = *v2;
  v4[34] = a1;
  v4[35] = v1;

  if (v1)
  {

    v4[42] = v1;
    v5 = v4[15];
    v6 = sub_1008609D4;
  }

  else
  {
    v6 = sub_100045F24;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100045DC8(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v10 = result;
  v4 = *(v3 + 112);
  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = 0;
    v8 = v4 + 32;
    while (v7 < *(v4 + 16))
    {
      sub_10001F280(v8, v12);
      sub_1000BC4D4(&qword_10169EF08, &qword_10139FBE8);
      a3(0);
      result = swift_dynamicCast();
      if (result)
      {
        return v13;
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    sub_1003BE54C();
    swift_allocError();
    *v9 = v10;
    v9[1] = a2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100045F24()
{
  v1 = v0[35];
  v0[36] = sub_100045EDC();
  v0[37] = v1;
  sub_100045918(&qword_1016969E0, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v4 = sub_100860958;
  }

  else
  {
    v4 = sub_100046008;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100046008()
{
  v1 = *(v0 + 120);

  return _swift_task_switch(sub_1000460D4, v1, 0);
}

unint64_t sub_100046080()
{
  result = qword_1016AB868;
  if (!qword_1016AB868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB868);
  }

  return result;
}

uint64_t sub_1000460D4()
{
  *(v0 + 88) = &type metadata for DiskFetchPolicy;
  *(v0 + 96) = sub_100046080();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 232);
  v1 = *(v0 + 184);
  v14 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v15 = qword_10177B2E8;
  v16 = *(v0 + 288);

  v17 = sub_100908168(_swiftEmptyArrayStorage);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v2 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);

  static DispatchQoS.unspecified.getter();
  *(v0 + 104) = _swiftEmptyArrayStorage;
  sub_100045918(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v5 = v14[10];
  type metadata accessor for DeviceIdentityUtility(0);
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  *(v6 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v6 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v6 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v1 + v5) = v6;
  v9 = v14[11];
  *(v0 + 40) = type metadata accessor for BeaconObservationStore(0);
  *(v0 + 48) = &off_101632E88;
  *(v0 + 56) = &off_101613BE0;
  *(v0 + 16) = v15;
  type metadata accessor for MemberCircleRevokeManager();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0((v0 + 16), (v10 + 32));
  *(v1 + v9) = v10;
  v11 = v14[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v1 + v11) = swift_allocObject();
  *v1 = v16;
  sub_10001F280(v0 + 64, (v1 + 3));
  v12 = v14[8];

  sub_1005CB7C8((v0 + 64), v1 + v12);
  sub_100007BAC((v0 + 64));
  v1[1] = v15;
  *(v1 + v14[9]) = v17;
  *(v10 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  return _swift_task_switch(sub_1008603F4, v18, 0);
}

unint64_t sub_100046470(uint64_t a1)
{
  result = sub_100890B48();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Coordinates(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Coordinates(uint64_t result, int a2, int a3)
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

BOOL sub_1000464FC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000465B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000465E0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000466DC@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100046730(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000467F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_100046D78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100046D98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100046DCC()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_100046E14()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100046E5C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100046E9C()
{
  v1 = *(sub_1000BC4D4(&qword_1016969A8, &unk_10138B270) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100046FB8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100046FF0()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100047044()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004707C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000470BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000470F4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004712C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100047164()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000471A4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100047250(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000472F4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000473A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100047444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_100047514(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_1000475D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100047640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000476EC()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000477BC()
{
  v2 = *(v0 + 240);
  v3 = *(v0 + 256);
  sub_100100BF8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), v2, *(&v2 + 1), v3, *(&v3 + 1), *(v0 + 272));

  return _swift_deallocObject(v0, 280);
}

uint64_t sub_100047840()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10004790C()
{
  v1 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000479AC(uint64_t result)
{
  v1 = *(result + 256) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 240) &= ~0x2000000000000000uLL;
  *(result + 256) = v1;
  return result;
}

uint64_t sub_1000479C8()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100047A18()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 192), *(v0 + 200));
  sub_100016590(*(v0 + 208), *(v0 + 216));
  sub_100016590(*(v0 + 232), *(v0 + 240));
  sub_100016590(*(v0 + 248), *(v0 + 256));
  sub_100016590(*(v0 + 264), *(v0 + 272));

  return _swift_deallocObject(v0, 280);
}

uint64_t sub_100047ACC()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  sub_100016590(*(v0 + 24), *(v0 + 32));

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100047BCC()
{
  v1 = sub_1000BC4D4(&qword_1016973A0, &unk_10138BF30);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100047C9C()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  sub_100016590(*(v0 + 3), *(v0 + 4));
  sub_100016590(*(v0 + 5), *(v0 + 6));
  sub_100016590(*(v0 + 7), *(v0 + 8));
  v5 = *(v0 + 10);
  if (v5 >> 60 != 15)
  {
    sub_100016590(*(v0 + 9), v5);
  }

  v6 = *(v0 + 12);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*(v0 + 11), v6);
  }

  v7 = (v3 + 128) & ~v3;

  (*(v2 + 8))(&v0[v7], v1);

  return _swift_deallocObject(v0, ((v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100047DF0()
{

  return _swift_deallocObject(v0, 97);
}

uint64_t sub_100047E38()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100047E90()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100047F3C()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100048014()
{
  v1 = *(sub_1000BC4D4(&unk_101698BC0, &qword_10138C440) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for MemberSharingCircle(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  swift_unknownObjectRelease();
  v8 = v0 + v2;
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    sub_100016590(*v8, *(v8 + 8));
    v19 = v7;
    v9 = v4[5];
    v10 = type metadata accessor for UUID();
    v18 = v3;
    v11 = *(*(v10 - 8) + 8);
    v12 = v8 + v9;
    v7 = v19;
    v11(v12, v10);
    v11(v8 + v4[6], v10);
    v11(v8 + v4[7], v10);
    v11(v8 + v4[8], v10);
    v3 = v18;
  }

  v13 = (v2 + v3 + v6) & ~v6;
  sub_100016590(*(v0 + v13), *(v0 + v13 + 8));
  v14 = v4[5];
  v15 = type metadata accessor for UUID();
  v16 = *(*(v15 - 8) + 8);
  v16(v0 + v13 + v14, v15);
  v16(v0 + v13 + v4[6], v15);
  v16(v0 + v13 + v4[7], v15);
  v16(v0 + v13 + v4[8], v15);

  return _swift_deallocObject(v0, v13 + v7);
}

uint64_t sub_1000482B0()
{
  v1 = *(sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for OwnerSharingCircle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  swift_unknownObjectRelease();
  v8 = v0 + v2;
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    sub_100016590(*v8, *(v8 + 8));
    v16 = *(v4 + 20);
    v9 = type metadata accessor for UUID();
    v17 = v3;
    v10 = *(*(v9 - 8) + 8);
    v10(v8 + v16, v9);
    v10(v8 + *(v4 + 24), v9);
    v3 = v17;
  }

  v11 = (v2 + v3 + v6) & ~v6;
  sub_100016590(*(v0 + v11), *(v0 + v11 + 8));
  v12 = *(v4 + 20);
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v11 + v12, v13);
  v14(v0 + v11 + *(v4 + 24), v13);

  return _swift_deallocObject(v0, v11 + v7);
}

uint64_t sub_1000484F4()
{
  v1 = *(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v5 = *(v4 - 1);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v32 = *(v5 + 64);
  swift_unknownObjectRelease();
  v7 = v0 + v2;
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    sub_100016590(*v7, *(v7 + 8));
    v8 = v4[5];
    v9 = type metadata accessor for UUID();
    v10 = *(v9 - 8);
    v11 = *(v10 + 8);
    v11(v7 + v8, v9);
    v33 = v11;
    v11(v7 + v4[6], v9);

    v12 = v4[18];
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
    v14 = v4[19];
    v15 = *(v10 + 48);
    if (!v15(v7 + v14, 1, v9))
    {
      v33(v7 + v14, v9);
    }

    v16 = v7 + v4[20];
    v17 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {
      v18 = *(v17 + 20);
      if (!v15(v16 + v18, 1, v9))
      {
        v33(v16 + v18, v9);
      }
    }
  }

  v34 = v6;
  v19 = v0 + v6;
  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v20 = v4[5];
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 8);
  v23(v19 + v20, v21);
  v23(v19 + v4[6], v21);

  v24 = v4[18];
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 8))(v19 + v24, v25);
  v26 = v4[19];
  v27 = *(v22 + 48);
  if (!v27(v19 + v26, 1, v21))
  {
    v23(v19 + v26, v21);
  }

  v28 = v19 + v4[20];
  v29 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    v30 = *(v29 + 20);
    if (!v27(v28 + v30, 1, v21))
    {
      v23(v28 + v30, v21);
    }
  }

  return _swift_deallocObject(v0, v34 + v32);
}

uint64_t sub_1000489B8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000489F0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100048A2C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100048A8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073A3C(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100048AB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073B58(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048B3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101073B80(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100048B6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073B8C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048B9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073BB4(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100048BCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101073BDC(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100048C00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073BF4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048C2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073524(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048C58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073C10(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048C84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073C2C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048CB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073C48(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048D08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073C70(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048D34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073C8C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048D60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073CA8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048DB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073CD0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048DE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073CEC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048E10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073D08(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048E3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073D24(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048E68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101073E44(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100048E98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073E50(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048EC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073E6C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048EF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073E88(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048F1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073EA4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048F48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073EC0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048F74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073EDC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048FA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073EF8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048FCC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073F14(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100048FF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073F30(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049024@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073F4C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049050@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073F68(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004907C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101073F84(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000490AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073F90(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000490D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073FAC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049104@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073FC8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049130@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073FE4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004915C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074000(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049188@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107401C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000491B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074038(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049240@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074188(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004926C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010741A4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049298@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010741C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000492C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010741DC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000492F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010741F8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004931C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074214(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049394@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074350(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000493C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107436C(*a1);
  *a2 = result;
  return result;
}

__n128 sub_10004949C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1010743B8(*a1, v6);
  v3 = v6[5];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v6[6];
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1000494F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074528(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049520@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074534(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049550@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074540(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000496E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010745AC(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10004970C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010745B8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049738@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010745D4(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100049764@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010745E0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049790@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010745FC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000497BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074618(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100049814@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074630(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049844@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10107463C(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049874@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074648(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000498A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074654(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000498DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074698(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049908@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010746B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049934@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010746D0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000499E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107355C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049A10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074710(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049A3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107472C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049A68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074748(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049AEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107477C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049B18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074798(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049B44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010747B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049B70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010747D0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049B9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010747EC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049BC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074808(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049BF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074824(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049C20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074840(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049C78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074868(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049D00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107488C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049D2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1010748A8(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049D5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1010748B4(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049D8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1010748C0(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049DBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010748CC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049E40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074900(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049E6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107491C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049E98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074938(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049EC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074954(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049F1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10107497C(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100049FA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010749A0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100049FD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1010749BC(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004A000@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1010749C8(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004A030@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010749D4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A0B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074A08(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004A0E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074A14(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004A114@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074A20(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A140@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074A3C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A16C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074A58(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A198@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074A74(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A1C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073540(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A1F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074A90(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A21C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074AAC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A248@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074AC8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A274@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074AE4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A2A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074B00(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A2CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074B1C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A2F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074B38(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A324@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074B54(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A350@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074B70(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A37C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074B8C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A3A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074BA8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A42C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074BDC(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004A4E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074C00(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10004A50C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074D18(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A538@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101073410(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004A5EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074D58(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004A61C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074D64(*a1);
  *a2 = result & 1;
  return result;
}

unint64_t sub_10004A64C@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_101074D70(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A678@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074E70(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A7AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074ED4(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004A834@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101074FFC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004A890(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000035D0(a1, v1);
  return (*(v2 + 472))(v1, v2);
}

uint64_t sub_10004A8E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 464))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_10004A948(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000035D0(a1, v1);
  return (*(v2 + 456))(v1, v2);
}

uint64_t sub_10004A9A0()
{

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_10004AA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UUID();
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
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10004AB6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = type metadata accessor for UUID();
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
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10004AC98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Date();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[9] + 16);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10004ADF8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = type metadata accessor for Date();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[7];
    }

    else
    {
      result = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9] + 16) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[8];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_10004AF58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for PeripheralConnectionMaterial(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[13];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for P256PrivateKey();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[14];
    goto LABEL_11;
  }

  v17 = type metadata accessor for SymmetricKey256();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[15];

  return v18(v19, a2, v17);
}

uint64_t sub_10004B118(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for PeripheralConnectionMaterial(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[13];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for P256PrivateKey();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[14];
    goto LABEL_9;
  }

  v17 = type metadata accessor for SymmetricKey256();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[15];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_10004B348()
{
  v1 = sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = (v0 + v4);
  sub_100016590(*(v0 + v4 + 8), *(v0 + v4 + 16));
  sub_100016590(v5[3], v5[4]);
  v6 = *(v0 + v4 + 48);
  if (v6 >> 60 != 15)
  {
    sub_100016590(v5[5], v6);
  }

  sub_100016590(v5[14], v5[15]);
  sub_100016590(v5[16], v5[17]);
  sub_100016590(v5[18], v5[19]);

  sub_100016590(v5[25], v5[26]);
  sub_100016590(v5[27], v5[28]);
  sub_100016590(v5[29], v5[30]);
  sub_100016590(v5[31], v5[32]);
  sub_100016590(v5[33], v5[34]);
  v7 = v5[36];
  if (v7 >> 60 != 15)
  {
    sub_100016590(v5[35], v7);
  }

  v8 = v5[40];
  if (v8 >> 60 != 15)
  {
    sub_100016590(v5[39], v8);
  }

  sub_100016590(v5[41], v5[42]);
  sub_100016590(v5[43], v5[44]);

  return _swift_deallocObject(v0, ((v4 + 367) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10004B4F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004B5B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10004B670()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004B6A8()
{

  return _swift_deallocObject(v0, 33);
}

uint64_t sub_10004B6E0()
{

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_10004B728()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 9) & ~*(v6 + 80);
  v8 = (((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_10004B8B8()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 73);
}

uint64_t sub_10004B900()
{
  v1 = (type metadata accessor for OwnerSharingCircle(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10004BA28()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004BA64()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004BAA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10004BAE4()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  swift_unknownObjectRelease();

  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10004BC28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10004BC78()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for MACAddress();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v6 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_10004BDE0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004BE30()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10004BE78()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

double sub_10004C15C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 11;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 11;
  return result;
}

uint64_t sub_10004C180()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10004C1C8()
{
  if (*(v0 + 57) == 1)
  {
    v1 = *(v0 + 56);
    if (v1 <= 4)
    {
      if (*(v0 + 56) <= 1u)
      {
        if (*(v0 + 56))
        {
          sub_100007BAC((v0 + 16));
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (v1 == 2)
      {

        goto LABEL_24;
      }

      if (v1 == 3)
      {

        goto LABEL_25;
      }

      if (v1 != 4)
      {
        goto LABEL_25;
      }

LABEL_12:

      goto LABEL_25;
    }

    if (*(v0 + 56) <= 7u)
    {
      if (v1 != 5 && v1 != 6)
      {
        if (v1 != 7)
        {
          goto LABEL_25;
        }

LABEL_24:

        goto LABEL_25;
      }

      goto LABEL_12;
    }

    switch(v1)
    {
      case 8u:

        goto LABEL_24;
      case 9u:

        break;
      case 0xAu:
        goto LABEL_24;
    }
  }

LABEL_25:

  return _swift_deallocObject(v0, 58);
}

uint64_t sub_10004C2D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004C308()
{

  sub_1001D9BA4(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));

  return _swift_deallocObject(v0, 248);
}

uint64_t sub_10004C3A4()
{

  sub_100016590(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10004C3E4()
{
  sub_1001D9BA4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224));

  return _swift_deallocObject(v0, 232);
}

uint64_t sub_10004C460()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[8];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v1[9];
  v7 = type metadata accessor for MACAddress();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10004C5B0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004C5E8()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10004C758()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  sub_100016590(*(v0 + 24), *(v0 + 32));
  sub_100016590(*(v0 + 40), *(v0 + 48));
  sub_100016590(*(v0 + 56), *(v0 + 64));
  v5 = *(v0 + 80);
  if (v5 >> 60 != 15)
  {
    sub_100016590(*(v0 + 72), v5);
  }

  v6 = *(v0 + 96);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*(v0 + 88), v6);
  }

  v7 = (v3 + 112) & ~v3;
  v8 = (v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v7, v1);
  sub_100016590(*(v0 + v8), *(v0 + v8 + 8));

  return _swift_deallocObject(v0, v8 + 16);
}

uint64_t sub_10004C884()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10004C950()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10004CA28(uint64_t result)
{
  v1 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 192) &= ~0x8000000000000000;
  *(result + 208) = v1;
  return result;
}

uint64_t sub_10004CA44()
{
  v1 = *(v0 + 56);
  if (v1 <= 4)
  {
    if (*(v0 + 56) <= 1u)
    {
      if (*(v0 + 56))
      {
        sub_100007BAC((v0 + 16));
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (v1 == 2)
    {

      goto LABEL_23;
    }

    if (v1 == 3)
    {

      goto LABEL_24;
    }

    if (v1 != 4)
    {
      goto LABEL_24;
    }

LABEL_11:

    goto LABEL_24;
  }

  if (*(v0 + 56) <= 7u)
  {
    if (v1 != 5 && v1 != 6)
    {
      if (v1 != 7)
      {
        goto LABEL_24;
      }

LABEL_23:

      goto LABEL_24;
    }

    goto LABEL_11;
  }

  switch(v1)
  {
    case 8u:

      goto LABEL_23;
    case 9u:

      break;
    case 0xAu:
      goto LABEL_23;
  }

LABEL_24:

  return _swift_deallocObject(v0, 57);
}

uint64_t sub_10004CB5C()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10004CC30()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  v5 = *(v0 + 32);
  if (v5 >> 60 != 15)
  {
    sub_100016590(*(v0 + 24), v5);
  }

  v6 = (v3 + 42) & ~v3;
  v7 = (v3 + ((v4 + 7 + v6) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  v8 = *(v2 + 8);
  v8(v0 + v6, v1);

  v8(v0 + v7, v1);

  return _swift_deallocObject(v0, ((v4 + 7 + v7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10004CD50()
{

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_10004CD88()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004CDC0()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10004CE98()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5);
}

uint64_t sub_10004CFC8()
{
  sub_1001DB7B8(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_10004D004()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004D044()
{

  return _swift_deallocObject(v0, 24);
}

_OWORD *sub_10004D07C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10004D08C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004D148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10004D204()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004D23C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v17 = *(*(v5 - 1) + 64);
  swift_unknownObjectRelease();
  v7 = *(v2 + 8);
  v7(v0 + v3, v1);
  v18 = v6;
  v8 = v0 + v6;
  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v7(v0 + v6 + v5[5], v1);
  v7(v0 + v6 + v5[6], v1);

  v9 = v5[18];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  v11 = v5[19];
  v12 = *(v2 + 48);
  if (!v12(v8 + v11, 1, v1))
  {
    v7(v8 + v11, v1);
  }

  v13 = v8 + v5[20];
  v14 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v15 = *(v14 + 20);
    if (!v12(v13 + v15, 1, v1))
    {
      v7(v13 + v15, v1);
    }
  }

  return _swift_deallocObject(v0, v18 + v17);
}

uint64_t sub_10004D504()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10004D5D0()
{
  v1 = (type metadata accessor for SessionTokenRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  v5 = v1[8];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10004D6F8()
{
  v1 = (type metadata accessor for SessionTokenRecord(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = v1[8];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10004D840()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v16 = *(*(v1 - 1) + 64);
  v17 = v0;
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  return _swift_deallocObject(v17, v2 + v16);
}

uint64_t sub_10004DAAC()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v23 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for MemberSharingCircle(0);
  v20 = *(*(v2 - 1) + 80);
  v19 = *(*(v2 - 1) + 64);

  v22 = (v23 + 24) & ~v23;
  v3 = v0 + v22;
  sub_100016590(*(v0 + v22), *(v0 + v22 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v22 + v4, v5);
  v7(v0 + v22 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v22 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v0 + v22 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  v15 = (v22 + v21 + v20) & ~v20;
  v16 = (v19 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = v0 + v15;
  sub_100016590(*(v0 + v15), *(v0 + v15 + 8));
  v7(v17 + v2[5], v5);
  v7(v17 + v2[6], v5);
  v7(v17 + v2[7], v5);
  v7(v17 + v2[8], v5);

  return _swift_deallocObject(v0, v16 + 16);
}

uint64_t sub_10004DE48()
{
  v1 = sub_1000BC4D4(&qword_101699D00, &unk_101393010);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10004DF20()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10004DF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 64) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10004E07C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 64) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10004E200(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_10004E2C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_10004E390@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074660(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004E3BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107467C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004E3E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004E420()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004E474()
{
  v1 = (type metadata accessor for MemberSharingCircle(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);
  v6(v0 + v2 + v1[9], v5);
  v6(v0 + v2 + v1[10], v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10004E5CC()
{

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10004E628(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10004E6D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004E778()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10004E7C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ServerStatusCode();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004E874(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ServerStatusCode();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004E934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10004E9A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10004EA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10004EB2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10004EC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10004ED04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MACAddress();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_10004EDD0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64) + v3;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 1);
}

uint64_t sub_10004EE98()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10004EF5C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004EF94()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004EFCC()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004F004()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004F03C()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10004F168()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10004F1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10004F2FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_10004F45C()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10004F4A4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004F4E4()
{
  v13 = type metadata accessor for URL();
  v1 = *(v13 - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v12 = type metadata accessor for UUID();
  v4 = *(v12 - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v8 + 64);
  swift_unknownObjectRelease();

  (*(v1 + 8))(v0 + v2, v13);
  (*(v4 + 8))(v0 + v5, v12);
  (*(v8 + 8))(v0 + v9, v7);

  return _swift_deallocObject(v0, v9 + v11);
}

uint64_t sub_10004F6C8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004F700()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004F738()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004F7E0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004F818()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10004F994()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10004F9D4(uint64_t result)
{
  v1 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 120) &= ~0x2000000000000000uLL;
  *(result + 136) = v1;
  return result;
}

uint64_t sub_10004F9F4()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));

  return _swift_deallocObject(v0, 160);
}

uint64_t sub_10004FA70()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004FAA8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004FAE0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    MyServiceDeviceListClientContext = type metadata accessor for FindMyServiceDeviceListClientContext(0);
    v11 = *(*(MyServiceDeviceListClientContext - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, MyServiceDeviceListClientContext);
  }
}

_BYTE *sub_10004FB8C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    MyServiceDeviceListClientContext = type metadata accessor for FindMyServiceDeviceListClientContext(0);
    v8 = *(*(MyServiceDeviceListClientContext - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, MyServiceDeviceListClientContext);
  }

  return result;
}

uint64_t sub_10004FC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
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
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004FCD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004FD7C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    MyServiceDeviceListClientContext = type metadata accessor for FindMyServiceDeviceListClientContext(0);
    v9 = *(*(MyServiceDeviceListClientContext - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, MyServiceDeviceListClientContext);
  }
}

void *sub_10004FE28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    MyServiceDeviceListClientContext = type metadata accessor for FindMyServiceDeviceListClientContext(0);
    v8 = *(*(MyServiceDeviceListClientContext - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, MyServiceDeviceListClientContext);
  }

  return result;
}

uint64_t sub_10004FECC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for WildModeAssociationRecord(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_10004FF70(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for WildModeAssociationRecord(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100050120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 2);
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
    v10 = type metadata accessor for Date();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 28);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for MACAddress();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 32);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_100050244(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 2) = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for Date();
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
      v13 = type metadata accessor for MACAddress();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100050370()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000503A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DiscoveredObject(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000BC4D4(&qword_10169CBD8, &unk_1013996D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100050500(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DiscoveredObject(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000BC4D4(&qword_10169CBD8, &unk_1013996D0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_100050664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000506D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100050740()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100050824(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1000508E0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000509A8()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000509E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101073BA8(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100050A18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073BC0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100050A44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107406C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100050A70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107416C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100050AAC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100050B14()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100050B4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconObservation(0);
  if (qword_10139AAC0[*(a1 + *(v4 + 24))] != qword_10139AAC0[*(a2 + *(v4 + 24))])
  {
    return 0;
  }

  return static Date.== infix(_:_:)();
}

uint64_t sub_100050BC8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100050CA4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((((v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100050DA8()
{

  return _swift_deallocObject(v0, 33);
}

uint64_t sub_100050DE0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100050EDC()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_10005124C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100051288()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 32) & ~v2);
  sub_100016590(*v3, *(v3 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  return _swift_deallocObject(v0, ((v2 + 32) & ~v2) + v16);
}

uint64_t sub_100051504()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v16 = *(*(v1 - 1) + 64);
  v15 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v2 = v0 + v15;
  sub_100016590(*(v0 + v15), *(v0 + v15 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v15 + v3, v4);
  v6(v0 + v15 + v1[6], v4);

  v7 = v1[18];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v15 + v7, v8);
  v9 = v1[19];
  v10 = *(v5 + 48);
  if (!v10(v0 + v15 + v9, 1, v4))
  {
    v6(v2 + v9, v4);
  }

  v11 = v2 + v1[20];
  v12 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = *(v12 + 20);
    if (!v10(v11 + v13, 1, v4))
    {
      v6(v11 + v13, v4);
    }
  }

  return _swift_deallocObject(v0, ((((v16 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000517A0()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_100051B0C()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 64);
  v19 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v19;
  sub_100016590(*(v0 + v19), *(v0 + v19 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v19 + v4, v5);
  v8 = v0 + v19 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v18;
LABEL_13:

      break;
    case 3:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v10 = v1[7];
  if (!(*(v6 + 48))(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v11 = v1[8];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v13 = (v3 + v1[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100016590(*v13, v14);
  }

  v15 = (v3 + v1[11]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return _swift_deallocObject(v0, ((((v2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100051EA8()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100051EE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100051F38()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100052014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10005208C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100052108(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000521B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100052258(char a1, char a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return (a2 & 1) == 0;
  }
}

unint64_t sub_100052278()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_1000BC4D4(&qword_10169D880, qword_10139BF48);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10000B3A8(v7, &unk_1016A0B10, &qword_10139BF40);
  }

  return sub_100907BD8(_swiftEmptyArrayStorage);
}

uint64_t sub_1000524BC()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000524F4()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100052534()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000525D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for PeerCommunicationIdentifier(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1000526DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for PeerCommunicationIdentifier(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void *sub_1000527E4(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = (a4)(&v7, a1, a2, a3);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_10005282C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100052898(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100052918()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100052984(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for OwnedBeaconRecord(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for UUID();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}