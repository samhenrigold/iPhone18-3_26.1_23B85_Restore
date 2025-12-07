uint64_t sub_10031BEB8(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v56 = a4;
  v55 = a3;
  v61 = a1;
  v62 = a2;
  v59 = *(*v4 + 88);
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v55 - v10;
  v12 = type metadata accessor for NANAttribute.CustomDeviceInformation(0) - 8;
  __chkstk_darwin();
  v60 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v55 - v14;
  v15 = *(v5 + qword_10059B990);
  swift_unownedRetainStrong();
  v16 = *(*v15 + 96);
  swift_beginAccess();
  v17 = *(v7 + 16);
  v17(v11, v15 + v16, AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LODWORD(v59) = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v19 = *(v7 + 8);
  v19(v11, AssociatedTypeWitness);
  swift_unownedRetainStrong();
  v20 = *(*v15 + 96);
  swift_beginAccess();
  v17(v9, v15 + v20, AssociatedTypeWitness);
  v21 = v57;

  LOBYTE(AssociatedConformanceWitness) = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v19(v9, AssociatedTypeWitness);
  v22 = v58;
  v23 = v21 + *(v12 + 36);
  NANAttribute.CustomDeviceInformation.CustomAttributes.init()(v23);
  *v21 = v59;
  *(v21 + 1) = AssociatedConformanceWitness;
  *(v21 + 4) = 0;
  v24 = (v23 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 60));
  v25 = *v24;
  v26 = v24[1];
  v27 = v61;
  v28 = v62;
  *v24 = v61;
  v24[1] = v28;
  sub_10000AB0C(v27, v28);
  sub_100017554(v25, v26);
  v29 = v60;
  sub_10031CFB4(v21, v60, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v30 = NANActionFrame.init(customDeviceInformation:)(v29);
  v32 = v31;
  v33 = v30;
  if (*(v22 + qword_1005963C8 + 6) & 1) == 0 && (v56)
  {
    v34 = *(v22 + qword_1005963C8) | (*(v22 + qword_1005963C8 + 4) << 32);
    v35 = swift_unownedRetainStrong();
    sub_10040DD50(v35, v36, v37, v38);

    v39 = TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap.unsafeMutableAddressor();
    v40 = *v39;
    v41 = v39[1];
    v42 = v39[2];
    if (*(v22 + qword_1005963E0 + 4) << 32 == 0x300000000)
    {
      v43 = 1;
    }

    else
    {
      v43 = *(v22 + qword_1005963E0 + 4);
    }

    v63 = 0;
    v64 = v33;
    v65 = v32;
    v66 = 0;
    v67 = 2;
    sub_1003A8DBC(&v63, v34, 1, v40, v41, v42, 0, v43, 0x1F4u, NANBitmap.Channel.operatingClass.getter, 0);
    goto LABEL_12;
  }

  v44 = v55;
  if ((v55 & 0x1000000000000) == 0)
  {
    v45 = swift_unownedRetainStrong();
    sub_10040DD50(v45, v46, v47, v48);

    v63 = 0;
    v64 = v33;
    v65 = v32;
    v66 = 0;
    v67 = 2;
    v49 = TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap.unsafeMutableAddressor();
    v50 = *v49;
    v51 = v49[1];
    v52 = v49[2];
    v53 = *(v22 + qword_1005963E0) | (*(v22 + qword_1005963E0 + 4) << 32);
    if ((v53 & 0xFF00000000) == 0x300000000)
    {
      sub_1003A8260(&v63, v44 & 0xFFFFFFFFFFFFLL, 1, v50, v51, v52, 0, 1, 500, NANBitmap.Channel.operatingClass.getter, 0);
    }

    else
    {
      sub_1003A8260(&v63, v44 & 0xFFFFFFFFFFFFLL, 1, v50, v51, v52, 0, HIDWORD(v53), 500, NANBitmap.Channel.operatingClass.getter, 0);
    }

LABEL_12:
    sub_100048C4C(v33, v32, 0);

    return sub_10031D01C(v21, type metadata accessor for NANAttribute.CustomDeviceInformation);
  }

  sub_100048C4C(v30, v31, 0);
  return sub_10031D01C(v21, type metadata accessor for NANAttribute.CustomDeviceInformation);
}

void sub_10031C6BC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v3 + qword_10059B9A8);
  swift_beginAccess();
  if (*(*(v7 + 24) + 16) && (, , sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL), v9 = v8, , , (v9 & 1) != 0))
  {
    if (a3 >> 60 != 15)
    {
      swift_unownedRetainStrong();
      v21 = sub_10000AB0C(a2, a3);
      sub_10040CAE8(v21, v22, v23, v24);

      sub_10033A9F0(*(v3 + qword_1005963B8), a1 & 0xFFFFFFFFFFFFLL, a2, a3);

      sub_100017554(a2, a3);
      return;
    }

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136315138;
      v14 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v16 = sub_100002320(v14, v15, &v25);

      *(v12 + 4) = v16;
      v17 = "No blob data from %s";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v10, v11, v17, v12, 0xCu);
      sub_100002A00(v13);
    }
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136315138;
      v18 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v20 = sub_100002320(v18, v19, &v25);

      *(v12 + 4) = v20;
      v17 = "No valid peer with %s";
      goto LABEL_8;
    }
  }
}

uint64_t sub_10031C93C()
{
  v1 = qword_10059B988;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unownedRelease();
  sub_100016290(v0 + qword_10059B9A0, &unk_100595C70, &qword_1004B0C00);

  v3 = qword_100596440;
  v4 = type metadata accessor for DispatchTime();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_10031CA58()
{
  sub_10031C93C();

  return swift_deallocClassInstance();
}

uint64_t sub_10031CAFC(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

void *sub_10031CBB0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  Logger.init(subsystem:category:)();
  *(v3 + qword_10059B998) = 1;
  v7 = v3 + qword_1005963C8;
  *(v7 + 2) = 0;
  *v7 = 0;
  v7[6] = 1;
  v8 = v3 + qword_1005963D0;
  *v8 = 0;
  *(v8 + 2) = 0;
  v8[6] = 1;
  v9 = v3 + qword_1005963E0;
  *v9 = 0;
  *(v9 + 2) = 3;
  v10 = v3 + qword_1005963E8;
  *v10 = 0;
  v10[2] = 1;
  v11 = v3 + qword_10059B9A0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *(v3 + qword_1005963F0) = 10;
  v12 = v3 + qword_1005963F8;
  *v12 = 197632;
  v12[4] = 1;
  v13 = (v3 + qword_100596400);
  *v13 = &_swiftEmptySetSingleton;
  v13[1] = 0;
  v14 = qword_100596408;
  type metadata accessor for NANDeviceLink(0, *(v6 + 80), *(v6 + 88), v15);
  sub_1002CAFC4();
  *(v3 + v14) = Dictionary.init()();
  *(v3 + qword_100596410) = 0;
  *(v3 + qword_100596418) = 1;
  *(v3 + qword_100596420) = 2;
  *(v3 + qword_100596428) = 0;
  *(v3 + qword_100596430) = 0;
  *(v3 + qword_100596438) = 3;
  v16 = v3 + qword_10059B9B0;
  *v16 = 0;
  *(v16 + 4) = 0;
  *(v16 + 3) = 0;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  *(v3 + qword_100596448) = 0;
  *(v3 + qword_10059B990) = a1;
  *(v3 + qword_1005963C0) = 0;
  *(v3 + qword_100596428) = 0;
  type metadata accessor for NANMulticastPeers(0);
  v17 = swift_allocObject();
  *(v17 + 16) = 3;
  swift_unownedRetain();
  *(v17 + 24) = sub_1002DE25C(_swiftEmptyArrayStorage);
  *(v17 + 32) = 0x4024000000000000;
  Logger.init(subsystem:category:)();
  *(v3 + qword_10059B9A8) = v17;
  *(v3 + qword_1005963D8) = 0;
  *(v3 + qword_1005963B8) = a2;
  return v3;
}

void *sub_10031CE9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MulticastSenderManager(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_10031CBB0(a1, a2);
}

uint64_t sub_10031CEF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100595C70, &qword_1004B0C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031CFB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10031D01C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10031D090(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    type metadata accessor for DispatchTime();
    if (v3 <= 0x3F)
    {
      sub_100330C28(319, qword_100596670, &type metadata accessor for DispatchTime);
      if (v4 <= 0x3F)
      {
        sub_100330C28(319, &qword_100593018, type metadata accessor for NANInternetSharingStatistics.Requester);
        if (v6 <= 0x3F)
        {
          _s17InitiatorInstanceC12PeerIdentityVMa(255, *(a1 + 80), *(a1 + 88), v5);
          type metadata accessor for Optional();
          if (v7 <= 0x3F)
          {
            swift_initClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_10031D33C(uint64_t a1)
{
  v2 = 0x63696C6F50205249;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v3 = 0xED000066664F2079;
      goto LABEL_14;
    }

    if (a1 == 1)
    {
      v3 = 0x80000001004BA6D0;
      v2 = 0xD000000000000014;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v3 = 0x80000001004BA690;
      v2 = 0xD00000000000001BLL;
      goto LABEL_14;
    }

    if (a1 == 4)
    {
      v3 = 0xEE006F7475412079;
      goto LABEL_14;
    }

LABEL_12:
    v2 = 0xD000000000000011;
    v4 = "Unknown IR Policy";
    goto LABEL_13;
  }

  v2 = 0xD000000000000011;
  v4 = "IR Policy for DFS";
LABEL_13:
  v3 = (v4 - 32) | 0x8000000000000000;
LABEL_14:
  v5 = v3;
  String.append(_:)(*&v2);
}

unint64_t sub_10031D44C(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      while ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        [v6 datapathUpdatedInternetSharingPolicy:a2];
        result = swift_unknownObjectRelease();
        ++v5;
        if (v7 == v4)
        {
          return result;
        }
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_10031D544(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10005DC58(&unk_1005968B0, &qword_1004B0FA8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100085188(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100085188(v29, v30);
    v14 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_100085188(v30, (v2[7] + 32 * v9));
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

void sub_10031D810(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10005DC58(&unk_1005968B0, &qword_1004B0FA8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_100002B30(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100085188(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100085188(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100085188(v31, v32);
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_100085188(v32, (v2[7] + 32 * v9));
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

void sub_10031DAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  (*(a4 + 16))(a4, a1, v6);
}

uint64_t sub_10031DB88@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  return sub_1003336F4(v1 + v3, a1);
}

uint64_t sub_10031DBFC@<X0>(void *a2@<X8>)
{
  v4 = *(v2 + *((swift_isaMask & *v2) + 0x78));
  if (v4)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v4;
  a2[3] = ObjectType;

  return swift_unknownObjectRetain();
}

uint64_t sub_10031DC78(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    sub_100016290(a1, &qword_10058BA80, &qword_1004818C0);
    goto LABEL_5;
  }

  sub_10005DC58(&qword_1005968A8, &qword_1004B1790);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = v4;
LABEL_6:
  *(v1 + *((swift_isaMask & *v1) + 0x78)) = v2;
  return swift_unknownObjectRelease();
}

uint64_t sub_10031DD34@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x98);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, &v1[v3], v4);
}

unint64_t sub_10031DDC8(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      return 0x6574736575716552;
    }

    else
    {
      return 0x696C616974696E49;
    }
  }

  else if (a3 == 2)
  {
    return 0x696D7269666E6F43;
  }

  else if (a3 == 3)
  {
    return 0x73696C6261747345;
  }

  else
  {
    if (a1 ^ 2 | a2)
    {
      v4 = 0x74616E696D726554;
    }

    else
    {
      v4 = 0x65736E6F70736552;
    }

    if (a1 | a2)
    {
      v5 = 0x20676E6974696157;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a1 <= 1)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t sub_10031DF1C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a3;
  v20[1] = a6;
  v11 = type metadata accessor for Mirror.AncestorRepresentation();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v16 = v20 - v15;
  v20[3] = a1;
  v20[4] = a2;
  v21 = v8;
  v20[2] = _swiftEmptyArrayStorage;
  v17 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  _s17InitiatorInstanceC5StateOMa(0, a4, a5, v18);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  (*(v12 + 104))(v14, enum case for Mirror.AncestorRepresentation.generated(_:), v11);
  sub_100333808(a1, a2, v8);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_10031E144()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v6 = *((swift_isaMask & *v0) + 0xC8);
  swift_beginAccess();
  (*(v3 + 40))(&v1[v6], v5, v2);
  return swift_endAccess();
}

unint64_t sub_10031E264()
{
  v1 = v0 + *((swift_isaMask & *v0) + 0x68);
  swift_beginAccess();
  return *(v1 + 25) | (*(v1 + 27) << 16);
}

BOOL sub_10031E2D0()
{
  v1 = v0 + *((swift_isaMask & *v0) + 0xD0);
  v2 = v1[16];
  if ((v2 - 1) < 2)
  {
    return 1;
  }

  if (v2 == 4)
  {
    return (*v1 & 0xFFFFFFFFFFFFFFFELL ^ 2 | *(v1 + 1)) == 0;
  }

  return 0;
}

BOOL sub_10031E33C()
{
  v1 = v0 + *((swift_isaMask & *v0) + 0x68);
  swift_beginAccess();
  sub_100012400((v1 + 104), v4, &qword_1005914A8, &qword_100499048);
  v2 = v4[3] != 1;
  sub_100016290(v4, &qword_1005914A8, &qword_100499048);
  return v2;
}

uint64_t sub_10031E3E8()
{
  if (*(v0 + *((swift_isaMask & *v0) + 0xD0) + 16) == 3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10031E444(uint64_t a1)
{
  v12 = a1;
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v11 - v4;
  v6 = *((swift_isaMask & *v1) + 0x110);
  swift_beginAccess();
  sub_100012400(v1 + v6, v5, &unk_100597330, &unk_100481FA0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  result = sub_100016290(v5, &unk_100597330, &unk_100481FA0);
  if (v9 == 1 || *(v1 + *((swift_isaMask & *v1) + 0x108)) != v12)
  {
    type metadata accessor for P2PTimer(0);
    variable initialization expression of AWDLPeer.lastUpdated();
    (*(v8 + 56))(v3, 0, 1, v7);
    swift_beginAccess();
    sub_1000B1B78(v3, v1 + v6, &unk_100597330, &unk_100481FA0);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10031E688@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x110);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_100597330, &unk_100481FA0);
}

uint64_t sub_10031E70C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = swift_isaMask & *v0;
  v3 = swift_unownedRetainStrong();
  sub_10040CAE8(v3, v4, v5, v6);

  v7 = sub_10033ABB0();

  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = v1 + *((swift_isaMask & *v1) + 0x68);
    v11 = *((swift_isaMask & *v1) + 0xE0);
    v12 = *(v1 + *((swift_isaMask & *v1) + 0xE8));
    v13 = type metadata accessor for LowLatencyInternetProviderPolicy(0, *(v2 + 80), *(v2 + 88), v8);
    do
    {
      v31 = v13;
      v32 = &off_10057A368;
      v30[0] = v12;
      swift_beginAccess();
      v14 = v12;
      sub_1000B1B78(v30, (v10 + 104), &qword_1005914A8, &qword_100499048);
      swift_endAccess();
      if ((*(v1 + v11) & 1) == 0)
      {
        sub_100012400((v10 + 104), &v28, &qword_1005914A8, &qword_100499048);
        if (v29)
        {
          if (v29 == 1)
          {
            sub_100016290(&v28, &qword_1005914A8, &qword_100499048);
          }

          else
          {
            sub_100179C1C(&v28, v30);
            *(v1 + v11) = 1;
            v15 = v31;
            v16 = v32;
            sub_100029B34(v30, v31);
            v17 = *(v10 + 27);
            v26 = v16;
            v27 = v15;
            v25 = v10[25];
            v24 = v10[26];
            if (*(v10 + 12) == 1)
            {
              v18 = 0;
              v19 = 0xF000000000000000;
            }

            else
            {
              v18 = *(v10 + 7);
              v19 = *(v10 + 8);
              sub_10000AB0C(v18, v19);
            }

            WitnessTable = swift_getWitnessTable(byte_1004B0F38, ObjectType);
            v21 = sub_10036DB68(ObjectType, WitnessTable);
            (v26[1])(v25 | (v24 << 8) | (v17 << 16), v18, v19, v21 & 0xFFFFFFFFFFFFFFLL, v27);
            sub_100017554(v18, v19);
            sub_100002A00(v30);
          }
        }

        else
        {
          sub_10020C6CC(&v28);
        }
      }

      --v9;
    }

    while (v9);
  }

  else
  {
  }
}

uint64_t sub_10031EA24(uint64_t a1)
{
  v2 = v1;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v5 = v17 - v4;
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  v6._object = 0x80000001004BFA40;
  String.append(_:)(v6);
  sub_100012400(v1, v5, &qword_10058F4D0, &qword_100491AB0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_100016290(v5, &qword_10058F4D0, &qword_100491AB0);
    v9 = 0xE90000000000003ELL;
    v10 = 0x6E776F6E6B6E553CLL;
  }

  else
  {
    v11 = UUID.uuidString.getter();
    v9 = v12;
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  v13 = v9;
  String.append(_:)(*&v10);

  v14._object = 0x80000001004BFA60;
  v14._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v14);
  v17[1] = *(v2 + *(a1 + 36));
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  return v18;
}

void sub_10031EC38()
{
  v1 = v0;
  v2 = v0 + *((swift_isaMask & *v0) + 0x68);
  swift_beginAccess();
  v4 = *(v2 + 1);
  v3 = *(v2 + 2);

  v5 = NANServiceName.description.getter(v4, v3);
  v7 = v6;

  v8 = v1 + *((swift_isaMask & *v1) + 0x148);
  swift_beginAccess();
  *(v8 + 2) = v5;
  *(v8 + 3) = v7;
  v8[64] = 3;

  v9 = *(v1 + *((swift_isaMask & *v1) + 0x60));
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v10 = sub_1003F06BC();

  *(v1 + *((swift_isaMask & *v1) + 0x150)) = v10;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v11 = sub_1003F06D8();

  *(v1 + *((swift_isaMask & *v1) + 0x158)) = v11;
  swift_unownedRetainStrong();
  v12 = *(v9 + *(*v9 + 800));
  swift_unownedRetainStrong();

  (*(*v12 + 200))(v13);

  WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
  sub_1000C2A14();

  LOBYTE(v12) = dispatch thunk of SetAlgebra.isSuperset(of:)();

  v8[105] = v12 & 1;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  sub_1003EB084();
  v15 = v14;
  v17 = v16;

  if (v15)
  {
  }

  else
  {
    v17 = 0;
  }

  *(v8 + 25) = v17;
}

void sub_10031EF0C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v97) = a2;
  v96 = a1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v103 = *(AssociatedTypeWitness - 8);
  v104 = AssociatedTypeWitness;
  __chkstk_darwin();
  v102 = &v92 - v8;
  v9 = swift_checkMetadataState();
  v99 = *(v9 - 8);
  v100 = v9;
  __chkstk_darwin();
  v98 = &v92 - v10;
  v95 = type metadata accessor for DispatchTime();
  v11 = *(v95 - 8);
  __chkstk_darwin();
  v94 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v92 - v13;
  v15 = (v3 + *((v5 & v4) + 0x128));
  v16 = v15[1];
  v93 = v15;
  if (v16)
  {
    v17 = *v15;
    v18 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = v3 + *(v6 + 328);
  swift_beginAccess();
  *v19 = v17;
  *(v19 + 1) = v18;

  v19[68] = *(v3 + *((swift_isaMask & *v3) + 0x138));
  swift_endAccess();
  v20 = *(v3 + *((swift_isaMask & *v3) + 0x60));
  v21 = swift_unownedRetainStrong();
  sub_10040CAE8(v21, v22, v23, v24);

  v25 = sub_100337438();

  *(v19 + 6) = v25;
  v26 = swift_unownedRetainStrong();
  sub_10040CAE8(v26, v27, v28, v29);

  v30 = sub_10033746C();

  *(v19 + 5) = v30;
  v31 = swift_unownedRetainStrong();
  sub_10040CAE8(v31, v32, v33, v34);

  v36 = sub_100337590(v35);

  *(v19 + 7) = v36;
  if ((v96 + 1) >= 6)
  {
    v37 = 5;
  }

  else
  {
    v37 = 0x50403020501uLL >> (8 * (v96 + 1));
  }

  v19[33] = v37;
  v19[34] = v97;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v38 = DispatchTime.uptimeNanoseconds.getter();
  v39 = v11;
  v40 = *(v11 + 8);
  v41 = v14;
  v42 = v95;
  v40(v41, v95);
  v43 = v94;
  (*(v39 + 16))(v94, v3 + *((swift_isaMask & *v3) + 0x160), v42);
  v44 = DispatchTime.uptimeNanoseconds.getter();
  v40(v43, v42);
  if (v38 < v44)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v19 + 11) = (v38 - v44) / 0xF4240;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v45 = sub_1003F06BC();

  v46 = *(v3 + *((swift_isaMask & *v3) + 0x150));
  v47 = v45 >= v46;
  v48 = v45 - v46;
  if (!v47)
  {
    goto LABEL_35;
  }

  *(v19 + 33) = v48;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v49 = sub_1003F06D8();

  v50 = *(v3 + *((swift_isaMask & *v3) + 0x158));
  v47 = v49 >= v50;
  v51 = v49 - v50;
  if (!v47)
  {
    goto LABEL_36;
  }

  *(v19 + 34) = v51;
  v52 = v3 + *((swift_isaMask & *v3) + 0x68);
  swift_beginAccess();
  if (v52[32])
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v53 = 1;
  }

  v19[65] = v53 & 1;
  if (v52[32] && v52[32] == 1)
  {
    v54 = 1;
  }

  else
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v19[66] = v54 & 1;
  if (v52[32] && v52[32] != 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v19[67] = v55 & 1;
  v56 = *(v3 + *((swift_isaMask & *v3) + 0x70));
  if (v56)
  {
    v57 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_bksstatus;
    swift_beginAccess();
    v58 = *(v56 + v57);
    memcpy(v115, v19, sizeof(v115));
    v19[160] = NANWiFiAwareStatistics.convertToAppStatus(reason:)(v58);
  }

  v59 = v93[1];
  if (!v59)
  {
LABEL_33:
    swift_unownedRetainStrong();
    v85 = v98;
    v86 = v99;
    v87 = v100;
    (*(v99 + 16))(v98, v20 + *(*v20 + 112), v100);

    v88 = v102;
    (*(AssociatedConformanceWitness + 152))(v87, AssociatedConformanceWitness);
    (*(v86 + 8))(v85, v87);
    memcpy(v106, v19, sizeof(v106));
    v89 = v104;
    v90 = swift_getAssociatedConformanceWitness();
    v91 = *(v90 + 32);
    sub_1002CB02C(v106, &v105);
    v91(v106, v89, v90);
    sub_1002CB088(v106);
    (*(v103 + 8))(v88, v89);
    return;
  }

  v60 = *v93;
  swift_unownedRetainStrong();

  sub_10040CAE8(v61, v62, v63, v64);

  v65 = sub_100337438();

  if ((v65 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v65 >> 16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v66 = swift_unownedRetainStrong();
  sub_10040CAE8(v66, v67, v68, v69);

  v70 = sub_10033746C();

  if ((v70 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v70 >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v71 = swift_unownedRetainStrong();
  sub_10040CAE8(v71, v72, v73, v74);

  v75 = sub_100337594();

  if ((v75 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!(v75 >> 16))
  {
    v97 = *(v19 + 11);
    LODWORD(v96) = v19[64];
    swift_unownedRetainStrong();
    v76 = *(*v20 + 112);
    v94 = v65;
    v95 = v59;
    v77 = v98;
    v78 = v99;
    v79 = *(v99 + 16);
    v93 = v60;
    v80 = v100;
    v79(v98, v20 + v76, v100);

    v81 = v70;
    v82 = v102;
    (*(AssociatedConformanceWitness + 152))(v80, AssociatedConformanceWitness);
    (*(v78 + 8))(v77, v80);
    v107[0] = v93;
    v107[1] = v95;
    v108 = v94;
    v109 = v81;
    v110 = v75;
    v111 = 0u;
    memset(v112, 0, 26);
    v112[26] = v96;
    *v113 = v106[0];
    *&v113[3] = *(v106 + 3);
    v114 = v97;
    v83 = v104;
    v84 = swift_getAssociatedConformanceWitness();
    (*(v84 + 40))(v107, v83, v84);
    sub_1002CB0DC(v107);
    (*(v103 + 8))(v82, v83);
    goto LABEL_33;
  }

LABEL_42:
  __break(1u);
}

id sub_10031FA14()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v41 = *(v4 + 0x58);
  v40 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v8 = &v35 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *((v3 & v2) + 0xF8);
  swift_beginAccess();
  if (notify_is_valid_token(*&v1[v13]))
  {
    v14 = notify_cancel(*&v1[v13]);
    *&v1[v13] = -1;
    if (v14)
    {
      v39 = v14;
      (*(v10 + 16))(v12, &v1[*((swift_isaMask & *v1) + 0x98)], v9);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v38 = v16;
        v18 = v17;
        v35 = v17;
        v37 = swift_slowAlloc();
        v43[0] = v37;
        *v18 = 136315138;
        v19 = static WiFiError.notifyErrorMessage(from:)(v39);
        v21 = sub_100002320(v19, v20, v43);
        v36 = v15;
        v22 = v21;

        v23 = v35;
        *(v35 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v15, v38, "Failed to cancel monitoring statistic reset events with error: %s", v23, 0xCu);
        sub_100002A00(v37);
      }

      else
      {
      }

      (*(v10 + 8))(v12, v9);
    }
  }

  v24 = &v1[*((swift_isaMask & *v1) + 0xD0)];
  if (v24[16] - 1 >= 3)
  {
    if (!v24[16])
    {
      goto LABEL_11;
    }

    v33 = *v24;
    v32 = *(v24 + 1);
    if (__PAIR128__(v32, v33) < 2)
    {
      goto LABEL_11;
    }

    if (v33 ^ 2 | v32)
    {
      goto LABEL_12;
    }
  }

  v25 = *&v1[*((swift_isaMask & *v1) + 0x60)];
  swift_unownedRetainStrong();
  v26 = *(*v25 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v8, v25 + v26, AssociatedTypeWitness);

  v27 = &v1[*((swift_isaMask & *v1) + 0x68)];
  swift_beginAccess();
  v28 = *(v27 + 3);
  v29 = *(v27 + 1);
  v30 = *v27;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 240))(v30, v29 | (v28 << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
LABEL_11:
  sub_100320050(-1, 0x64657361656C6572, 0xE800000000000000, 44);
  *&v1[*((swift_isaMask & *v1) + 0x70)] = 0;

LABEL_12:
  sub_10031FF1C(v1);
  v44.receiver = v1;
  v44.super_class = ObjectType;
  return objc_msgSendSuper2(&v44, "dealloc");
}

void sub_10031FF1C(void *a1)
{
  v2 = a1;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 4) = v2;
    *v5 = a1;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Destroyed %@", v4, 0xCu);
    sub_100016290(v5, &qword_10058B780, &qword_100480AC0);
  }
}

void sub_100320050(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  LODWORD(v5) = a4;
  v86 = swift_isaMask & *v4;
  v9 = v4;

  v90 = v4;
  v10 = Logger.logObject.getter();
  v91 = a1;
  if (a1 != 2)
  {
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v17))
    {
      v12 = v5;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v98[0] = v20;
      *v18 = 138412546;
      *(v18 + 4) = v9;
      *v19 = v90;
      *(v18 + 12) = 2080;
      v21 = v9;
      *(v18 + 14) = sub_100002320(a2, a3, v98);
      _os_log_impl(&_mh_execute_header, v10, v17, "%@ was terminated because %s", v18, 0x16u);
      sub_100016290(v19, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v20);
      a1 = v91;
      goto LABEL_6;
    }

LABEL_7:

    goto LABEL_8;
  }

  v11 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_7;
  }

  v12 = v5;
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  *&v98[0] = v15;
  *v13 = 138412546;
  *(v13 + 4) = v9;
  *v14 = v90;
  *(v13 + 12) = 2080;
  v16 = v9;
  *(v13 + 14) = sub_100002320(a2, a3, v98);
  _os_log_impl(&_mh_execute_header, v10, v11, "%@ was terminated because %s", v13, 0x16u);
  sub_100016290(v14, &qword_10058B780, &qword_100480AC0);
  a1 = 2;

  sub_100002A00(v15);
LABEL_6:

  LODWORD(v5) = v12;

LABEL_8:
  v89 = (v9 + *((swift_isaMask & *v9) + 0xA0));
  if ((*(v89 + 6) & 1) == 0 && *(v9 + *((swift_isaMask & *v9) + 0xD8)) == 1)
  {
    v22 = *v89 | (*(v89 + 2) << 32);
    v23 = sub_1003236D8();
    v24 = (v9 + *((swift_isaMask & *v9) + 0xB8));
    v25 = v24[1];
    v85 = v5;
    v84 = v24;
    if (v25 >> 60 == 15)
    {
      v26 = v22 & 0xFFFFFFFFFFFFLL;
      v27 = WiFiAddress.ipv6LinkLocalAddress.getter(v22 & 0xFFFFFFFFFFFFLL);
      v29 = v28;
      v31 = v30;
      v33 = v32;
    }

    else
    {
      v34 = *v24;
      sub_10000AB0C(*v24, v25);
      v27 = InterfaceIdentifier.ipv6Address.getter(v34, v25);
      v29 = v35;
      v31 = v36;
      v33 = v37;
      sub_100017554(v34, v25);
      v26 = v22 & 0xFFFFFFFFFFFFLL;
    }

    v38 = (*(*v23 + 416))(v98);
    v40 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable(0, *(v86 + 80), *(*(v86 + 88) + 8), v39);
    v87 = v26;
    v41 = v31;
    v42 = v40;
    WiFiInterface.NeighborDiscoveryTable.postPeerAbsence(macAddress:ipv6Address:)(v26, v27, v29, v41, v33, v40);
    v38(v98, 0);

    v43 = sub_1003236D8();
    v44 = *(v9 + *((swift_isaMask & *v9) + 0x60));
    swift_unownedRetainStrong();
    v45 = *(v44 + *(*v44 + 472));

    if (v45)
    {

      v46 = v43 == v45;
      a1 = v91;
      LODWORD(v5) = v85;
      if (v46)
      {
        v82 = v42;
        v83 = 0;
        swift_unownedRetainStrong();
        v47 = v84[1];
        if (v47 >> 60 == 15)
        {
          v48 = v26;
          v49 = WiFiAddress.ipv6LinkLocalAddress.getter(v26);
          v51 = v50;
          v53 = v52;
          v55 = v54;
        }

        else
        {
          v5 = *v84;
          sub_10000AB0C(*v84, v84[1]);
          v49 = InterfaceIdentifier.ipv6Address.getter(v5, v47);
          v51 = v78;
          v53 = v79;
          v55 = v80;
          v81 = v5;
          LODWORD(v5) = v85;
          sub_100017554(v81, v47);
          v48 = v87;
        }

        swift_beginAccess();
        WiFiInterface.NeighborDiscoveryTable.postPeerAbsence(macAddress:ipv6Address:)(v48, v49, v51, v53, v55, v82);
LABEL_51:
        swift_endAccess();

        a1 = v91;
      }
    }

    else
    {

      a1 = v91;
      LODWORD(v5) = v85;
    }
  }

  sub_10031EF0C(a1, v5);
  sub_100332618(3, 0, 4);
  v56 = swift_isaMask & *v9;
  v57 = *(v56 + 0x78);
  v58 = *(v9 + v57);
  v5 = &unk_100588000;
  if (v58)
  {
    [v58 datapathTerminatedWithReason:a1];
    v56 = swift_isaMask & *v9;
  }

  v59 = *(v56 + 128);
  swift_beginAccess();
  v60 = *(v9 + v59);
  v88 = v9;
  if (v60 >> 62)
  {
    v61 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v61)
  {
    v62 = 0;
    v9 = (v60 & 0xC000000000000001);
    do
    {
      if (v9)
      {
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v64 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
LABEL_32:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_51;
        }

        v63 = *(v60 + 8 * v62 + 32);
        swift_unknownObjectRetain();
        v64 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          goto LABEL_32;
        }
      }

      [v63 datapathTerminatedWithReason:{v91, v82, v83}];
      swift_unknownObjectRelease();
      ++v62;
    }

    while (v64 != v61);
  }

  *(v88 + v57) = 0;
  swift_unknownObjectRelease();
  *(v88 + v59) = _swiftEmptyArrayStorage;

  if (v91 != -1)
  {
    v65 = swift_unownedRetainStrong();
    sub_10040CAE8(v65, v66, v67, v68);

    sub_10033AE18(v88);
  }

  v69 = *((swift_isaMask & *v88) + 0xE0);
  if (*(v88 + v69) == 1)
  {
    v70 = v88 + *((swift_isaMask & *v88) + 0x68);
    swift_beginAccess();
    sub_100012400((v70 + 104), &v95, &qword_1005914A8, &qword_100499048);
    if (*(&v96 + 1) == 1)
    {
      sub_100016290(&v95, &qword_1005914A8, &qword_100499048);
    }

    else
    {
      v98[0] = v95;
      v98[1] = v96;
      v99 = v97;
      sub_10020C694(v98, &v95);
      if (*(&v96 + 1))
      {
        sub_100179C1C(&v95, v92);
        v71 = v93;
        v72 = v94;
        sub_100029B34(v92, v93);
        (*(v72 + 16))(*(v70 + 25) | (*(v70 + 27) << 16), v71, v72);
        sub_10020C6CC(v98);
        sub_100002A00(v92);
      }

      else
      {
        sub_10032BAA8();
        sub_10020C6CC(v98);
      }

      *(v88 + v69) = 0;
    }
  }

  if ((*(v89 + 6) & 1) == 0)
  {
    v73 = *(v89 + 2);
    v74 = *v89;
    v75 = *((swift_isaMask & *v88) + 0xF0);
    swift_beginAccess();
    if (*(*(v88 + v75) + 16) && (v76 = v74 | (v73 << 32), sub_100041DE8(v76 & 0xFFFFFFFFFFFFLL), (v77 & 1) != 0))
    {
      swift_endAccess();
      swift_beginAccess();
      sub_1004208F0(v76 & 0xFFFFFFFFFFFFLL);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }
  }
}

double sub_100320C34(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;
  swift_unownedRelease();
  sub_100333750(&a1[*((swift_isaMask & *a1) + 0x68)]);

  swift_unknownObjectRelease();

  v4 = *((swift_isaMask & *a1) + 0x98);
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(&a1[v4], v5);
  v6 = &a1[*((swift_isaMask & *a1) + 0xB0)];
  sub_1001842D0(*v6, *(v6 + 1), *(v6 + 2));
  v7 = &a1[*((swift_isaMask & *a1) + 0xB8)];
  sub_100017554(*v7, *(v7 + 1));
  swift_unknownObjectWeakDestroy();
  v8 = *((swift_isaMask & *a1) + 0xC8);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(*(v9 - 8) + 8);
  v10(&a1[v8], v9);
  v11 = &a1[*((swift_isaMask & *a1) + 0xD0)];
  sub_100333850(*v11, *(v11 + 1), v11[16]);

  sub_100016290(&a1[*((swift_isaMask & *a1) + 0x110)], &unk_100597330, &unk_100481FA0);
  sub_100016290(&a1[*((swift_isaMask & *a1) + 0x118)], &unk_100596870, &unk_1004B0F60);

  v12 = *((swift_isaMask & *a1) + 0x140);
  _s17InitiatorInstanceC12PeerIdentityVMa(255, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58), v13);
  v14 = type metadata accessor for Optional();
  (*(*(v14 - 8) + 8))(&a1[v12], v14);
  memcpy(v16, &a1[*((swift_isaMask & *a1) + 0x148)], sizeof(v16));
  sub_1002CB088(v16);
  v10(&a1[*((swift_isaMask & *a1) + 0x160)], v9);

  return result;
}

void sub_100321094()
{
  v2 = swift_isaMask & *v0;
  v61 = *(v2 + 0x58);
  v60 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v62 = &v52 - v4;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v10 = *v9;
  *v8 = *v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v10)
  {
    v12 = v0 + *((swift_isaMask & *v0) + 0xD0);
    if (!v12[16] && (*v12 & 1) != 0)
    {
      v13 = *(v0 + *((swift_isaMask & *v0) + 0x60));
      v14 = swift_unownedRetainStrong();
      sub_10040CAE8(v14, v15, v16, v17);

      v18 = *((swift_isaMask & *v0) + 0x68);
      v59 = v0;
      v19 = v0 + v18;
      swift_beginAccess();
      v20 = sub_10033ACA4(*(v19 + 25) | (*(v19 + 27) << 16));

      if ((v20 & 1) == 0)
      {
        v21 = *(v19 + 6);
        v22 = *(v19 + 12);
        if (v22 != 1 && *(v19 + 6) >= 6u)
        {
          v52 = v3;
          v58 = v21;
          v24 = *(v19 + 7);
          v25 = *(v19 + 8);
          v26 = *(v19 + 9);
          v27 = *(v19 + 10);
          v53 = *(v19 + 11);
          sub_10000AB0C(v24, v25);
          v54 = v27;
          v55 = v26;
          sub_10005D67C(v26, v27);
          v57 = v22;

          v28 = static NANPMK.zero.getter();
          v30 = v29;
          v56 = v24;
          v31 = v24;
          v32 = v25;
          LOBYTE(v25) = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v31, v25, v28, v29);
          sub_1000124C8(v28, v30);
          if (v25)
          {
            sub_100332618(1, 0, 4);
            sub_100321744();
            sub_10011A270(v58, v56, v32, v55, v54, v53, v57);
            return;
          }

          sub_10011A270(v58, v56, v32, v55, v54, v53, v57);
          v3 = v52;
        }

        swift_unownedRetainStrong();
        sub_10040CBA8();

        if (!v1)
        {
          v33 = sub_1003236D8();
          (*(*v33 + 216))(1);

          swift_unownedRetainStrong();
          v34 = *(*v13 + 96);
          swift_beginAccess();
          v35 = v13 + v34;
          v36 = v62;
          v37 = AssociatedTypeWitness;
          (*(v3 + 16))(v62, v35, AssociatedTypeWitness);

          sub_1003336F4(v19, v63);
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          (*(AssociatedConformanceWitness + 216))(v63, v37, AssociatedConformanceWitness);
          sub_100333750(v63);
          (*(v3 + 8))(v36, v37);
          v39 = v59;
          sub_100332618(0, 0, 1);
          v40 = v39;
          v41 = v39;
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            *v44 = 138412290;
            *(v44 + 4) = v40;
            *v45 = v41;
            v46 = v40;
            _os_log_impl(&_mh_execute_header, v42, v43, "%@ was started", v44, 0xCu);
            sub_100016290(v45, &qword_10058B780, &qword_100480AC0);
          }

          v47 = *(v40 + *((swift_isaMask & *v40) + 0x78));
          if (v47)
          {
            v48 = *v19;
            v49 = *(v19 + 1) | (*(v19 + 3) << 16);
            swift_unknownObjectRetain();
            v50 = WiFiAddress.apiAddress.getter(v49);
            sub_1003236D8();
            v51 = WiFiInterface.interfaceIndex.getter();

            [v47 datapathStartedWithInstanceID:v48 initiatorDataAddress:v50 localInterfaceIndex:v51];

            swift_unknownObjectRelease();
          }

          sub_10031EC38();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100321744()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  BeaconInformation = type metadata accessor for NANPeer.LastBeaconInformation(0);
  v254 = *(BeaconInformation - 8);
  __chkstk_darwin();
  v246 = &v242 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_1005954D0, &unk_1004AF470);
  __chkstk_darwin();
  v256 = &v242 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v253 = &v242 - v6;
  v251 = type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v252 = &v242 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = *((v3 & v2) + 0x58);
  v8 = *((v3 & v2) + 0x50);
  swift_getAssociatedTypeWitness();
  v248 = v8;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  isa = v12[-1].isa;
  v259 = v12;
  __chkstk_darwin();
  v257 = &v242 - v13;
  v14 = type metadata accessor for DispatchTime();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v242 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v242 - v18;
  v20 = type metadata accessor for DispatchTimeInterval();
  v263 = *(v20 - 8);
  __chkstk_darwin();
  v247 = &v242 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v244 = &v242 - v22;
  __chkstk_darwin();
  v250 = &v242 - v23;
  __chkstk_darwin();
  v262 = (&v242 - v24);
  __chkstk_darwin();
  v245 = &v242 - v25;
  __chkstk_darwin();
  v243 = &v242 - v26;
  __chkstk_darwin();
  v260 = (&v242 - v27);
  __chkstk_darwin();
  v29 = (&v242 - v28);
  __chkstk_darwin();
  v31 = &v242 - v30;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v32 = *((swift_isaMask & *v1) + 0xC8);
  swift_beginAccess();
  (*(v15 + 16))(v17, &v1[v32], v14);
  v264 = v31;
  DispatchTime.distance(to:)();
  v33 = *(v15 + 8);
  v33(v17, v14);
  v33(v19, v14);
  v34 = v29;
  v35 = v263;
  v34->isa = 10;
  v36 = enum case for DispatchTimeInterval.seconds(_:);
  v37 = v35[13];
  v265 = v20;
  v37(v34, enum case for DispatchTimeInterval.seconds(_:), v20);
  v38 = swift_isaMask & *v1;
  v39 = &v1[*(v38 + 0xD0)];
  v40 = *v39;
  v41 = v39[16];
  if (v41 <= 1)
  {
    v76 = v262;
    if (v39[16])
    {
      v77 = v264;
      v115 = static DispatchTimeInterval.< infix(_:_:)(v34, v264);
      v43 = v265;
      if (v115)
      {
        v261 = v34;
        (v35[2])(v76, v77, v265);
        v116 = v1;
        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v117, v118))
        {
          v119 = v1;
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v260 = swift_slowAlloc();
          v271[0] = v260;
          *v120 = 138412802;
          *(v120 + 4) = v116;
          *v121 = v119;
          *(v120 + 12) = 2080;
          v122 = v116;
          v123 = DispatchTimeInterval.description.getter();
          v124 = v35;
          v126 = v125;
          (v124[1])(v76, v265);
          v127 = sub_100002320(v123, v126, v271);
          v35 = v124;

          *(v120 + 14) = v127;
          *(v120 + 22) = 2048;
          *(v120 + 24) = v40;
          _os_log_impl(&_mh_execute_header, v117, v118, "%@ did not get the datapath request acknowledgement for %s, retry #%ld", v120, 0x20u);
          sub_100016290(v121, &qword_10058B780, &qword_100480AC0);
          v77 = v264;

          sub_100002A00(v260);
          v43 = v265;
        }

        else
        {

          (v35[1])(v76, v43);
        }

        sub_100323854();
        goto LABEL_76;
      }

      goto LABEL_42;
    }

    v77 = v264;
    v43 = v265;
    if ((v40 & 1) == 0)
    {
      goto LABEL_42;
    }

    v261 = v34;
    v78 = swift_unownedRetainStrong();
    sub_10040CAE8(v78, v79, v80, v81);

    v82 = &v1[*((swift_isaMask & *v1) + 0x68)];
    swift_beginAccess();
    LOBYTE(v82) = sub_10033ACA4(*(v82 + 25) | (*(v82 + 27) << 16));

    if ((v82 & 1) == 0)
    {
      sub_100321094();
      goto LABEL_76;
    }

    v83 = NANConstants.keepAliveTimeout.unsafeMutableAddressor();
    v84 = v260;
    (v35[2])(v260, v83, v43);
    v85 = static DispatchTimeInterval.< infix(_:_:)(v84, v77);
    v86 = v35[1];
    v86(v84, v43);
    if (v85)
    {
      sub_100320050(1, 0xD000000000000025, 0x80000001004BF920, 14);
    }

LABEL_22:
    v86(v261, v43);
    return (v86)(v77, v43);
  }

  v42 = *(v39 + 1);
  if (v41 == 2)
  {
    v77 = v264;
    if (!static DispatchTimeInterval.< infix(_:_:)(v34, v264))
    {
      v128 = v35[1];
      v129 = v34;
      v130 = v265;
      v128(v129, v265);
      return (v128)(v77, v130);
    }

    v261 = v34;
    v88 = v250;
    v43 = v265;
    (v35[2])(v250, v77, v265);
    v89 = v1;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = v88;
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v262 = swift_slowAlloc();
      v271[0] = v262;
      *v93 = 138412802;
      *(v93 + 4) = v89;
      *v94 = v1;
      *(v93 + 12) = 2080;
      v95 = v89;
      v96 = DispatchTimeInterval.description.getter();
      v97 = v35;
      v99 = v98;
      (v97[1])(v92, v265);
      v100 = sub_100002320(v96, v99, v271);
      v35 = v97;

      *(v93 + 14) = v100;
      *(v93 + 22) = 2048;
      *(v93 + 24) = v42;
      _os_log_impl(&_mh_execute_header, v90, v91, "%@ did not get the datapath confirmation acknowledgement for %s, retry #%ld", v93, 0x20u);
      sub_100016290(v94, &qword_10058B780, &qword_100480AC0);
      v43 = v265;

      sub_100002A00(v262);
      v77 = v264;
    }

    else
    {

      (v35[1])(v88, v43);
    }

    sub_1003244CC();
    goto LABEL_76;
  }

  v261 = v34;
  if (v41 == 3)
  {
    v43 = v265;
    if (v1[*(v38 + 144)] == 1)
    {
      swift_unownedRetainStrong();
      v44 = sub_10031E264();
      v45 = v252;
      sub_10040CD68(v44, v252);

      v46 = v253;
      sub_100012400(v45 + *(v251 + 32), v253, &qword_1005954D0, &unk_1004AF470);
      sub_100023958(v45, type metadata accessor for NANPeer);
      v47 = v46;
      v48 = v256;
      sub_10001CEA8(v47, v256, &qword_1005954D0, &unk_1004AF470);
      if ((*(v254 + 48))(v48, 1, BeaconInformation) != 1)
      {
        v49 = v246;
        sub_1003337A4(v256, v246);
        v50 = *(v49 + 8);
        sub_100023958(v49, type metadata accessor for NANPeer.LastBeaconInformation);
        v51 = *&v1[*((swift_isaMask & *v1) + 0x78)];
        if (v51)
        {
          v52 = 0x7FFFFFFFLL;
          if (v50 < 0x7FFFFFFF)
          {
            v52 = v50;
          }

          if (v52 <= 0xFFFFFFFF80000000)
          {
            v53 = 0xFFFFFFFF80000000;
          }

          else
          {
            v53 = v52;
          }

          [v51 datapathUpdatedPeerRSSI:v53];
        }
      }
    }

    swift_unownedRetainStrong();
    v54 = v257;
    WiFiInterface.preferences.getter();

    v55 = v259;
    v56 = Preferences.enableUserspaceP2POptions.getter(v259);
    (*(isa + 1))(v54, v55);
    if ((*PreferenceDefaults.EnableUserspaceP2POptions.keepAliveTermination.unsafeMutableAddressor() & ~v56) != 0)
    {
      v62 = v35[1];
      v62(v261, v43);
    }

    else
    {
      v57 = NANConstants.keepAliveTimeout.unsafeMutableAddressor();
      v58 = v35[2];
      v59 = v260;
      v58(v260, v57, v43);
      v60 = v264;
      v61 = static DispatchTimeInterval.< infix(_:_:)(v59, v264);
      v62 = v35[1];
      v62(v59, v43);
      if (v61)
      {
        v63 = v247;
        v58(v247, v60, v43);
        v64 = v1;
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v262 = swift_slowAlloc();
          v271[0] = v262;
          *v67 = 138412546;
          *(v67 + 4) = v64;
          *v68 = v1;
          *(v67 + 12) = 2080;
          v69 = v64;
          v260 = v65;
          v70 = DispatchTimeInterval.description.getter();
          v71 = v35;
          v73 = v72;
          v62(v63, v265);
          v74 = sub_100002320(v70, v73, v271);
          v35 = v71;

          *(v67 + 14) = v74;
          v75 = v260;
          _os_log_impl(&_mh_execute_header, v260, v66, "%@ will be terminated because no keep alive was received for %s", v67, 0x16u);
          sub_100016290(v68, &qword_10058B780, &qword_100480AC0);
          v43 = v265;

          sub_100002A00(v262);
        }

        else
        {

          v62(v63, v43);
        }

        sub_100323CDC();
        v77 = v264;
        goto LABEL_76;
      }

      v62(v261, v43);
    }

    return (v62)(v264, v43);
  }

  if (v40 > 1)
  {
    if (!(v40 ^ 2 | v42))
    {
      v77 = v264;
      v131 = static DispatchTimeInterval.< infix(_:_:)(v34, v264);
      v43 = v265;
      if (v131)
      {
        v132 = v244;
        (v35[2])(v244, v77, v265);
        v133 = v1;
        v134 = Logger.logObject.getter();
        v135 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          v271[0] = v138;
          *v136 = 138412546;
          *(v136 + 4) = v133;
          *v137 = v1;
          *(v136 + 12) = 2080;
          v139 = v133;
          v140 = DispatchTimeInterval.description.getter();
          v141 = v35;
          v143 = v142;
          (v141[1])(v132, v265);
          v144 = sub_100002320(v140, v143, v271);
          v35 = v141;

          *(v136 + 14) = v144;
          _os_log_impl(&_mh_execute_header, v134, v135, "%@ will be terminated because no response was received for %s", v136, 0x16u);
          sub_100016290(v137, &qword_10058B780, &qword_100480AC0);
          v77 = v264;

          sub_100002A00(v138);
          v43 = v265;
        }

        else
        {

          (v35[1])(v132, v43);
        }

        sub_100323CDC();
        goto LABEL_76;
      }

LABEL_42:
      v145 = v35[1];
      v145(v34, v43);
      return (v145)(v77, v43);
    }

    v174 = NANConstants.serviceTerminateEventTimeout.unsafeMutableAddressor();
    v175 = v260;
    v43 = v265;
    (v35[2])(v260, v174, v265);
    v77 = v264;
    v176 = static DispatchTimeInterval.< infix(_:_:)(v175, v264);
    v86 = v35[1];
    v86(v175, v43);
    if (v176)
    {
      sub_100320050(2, 0xD000000000000026, 0x80000001004BE520, 42);
      goto LABEL_76;
    }

    goto LABEL_22;
  }

  if (v40 | v42)
  {
    swift_unownedRetainStrong();
    v146 = v257;
    WiFiInterface.preferences.getter();

    v147 = v259;
    v148 = Preferences.enableNANPairingCertification.getter(v259);
    (*(isa + 1))(v146, v147);
    v149 = 60;
    if (v148)
    {
      v149 = 600;
    }

    v150 = v260;
    v260->isa = v149;
    v151 = v36;
    v152 = v265;
    v37(v150, v151, v265);
    v77 = v264;
    v153 = static DispatchTimeInterval.< infix(_:_:)(v264, v150);
    v154 = v35[1];
    v154(v150, v152);
    v262 = v154;
    if (!v153)
    {
      v177 = v245;
      (v35[2])(v245, v77, v152);
      v178 = v1;
      v179 = Logger.logObject.getter();
      v180 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v179, v180))
      {
        v181 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v260 = v182;
        v263 = swift_slowAlloc();
        v271[0] = v263;
        *v181 = 138412546;
        *(v181 + 4) = v178;
        v182->isa = v1;
        *(v181 + 12) = 2080;
        v183 = v178;
        v259 = v179;
        v184 = DispatchTimeInterval.description.getter();
        v186 = v185;
        (v262)(v177, v152);
        v187 = sub_100002320(v184, v186, v271);

        *(v181 + 14) = v187;
        v188 = v259;
        _os_log_impl(&_mh_execute_header, v259, v180, "%@ will be terminated because unable to pair for %s", v181, 0x16u);
        sub_100016290(v260, &qword_10058B780, &qword_100480AC0);
        v77 = v264;

        sub_100002A00(v263);
      }

      else
      {

        v154(v177, v152);
      }

      v211 = swift_unownedRetainStrong();
      sub_10040CAE8(v211, v212, v213, v214);

      swift_beginAccess();

      v215 = &v178[*((swift_isaMask & *v178) + 0x68)];
      swift_beginAccess();
      v216 = *(v215 + 29);
      v266 = *(v215 + 25);
      v267 = v216;
      v217 = v248;
      v218 = v249;
      v220 = _s17InitiatorInstanceCMa_0(255, v248, v249, v219);
      v222 = _s17ResponderInstanceCMa_0(255, v217, v218, v221);
      type metadata accessor for Either(0, v220, v222, v223);
      sub_1002CAFC4();
      Dictionary.subscript.getter();

      v224 = v269;
      if (v269 != 255)
      {
        v225 = v268;
        sub_100428B18(v268, v269 & 1, v217, v218);
        v226 = swift_unownedRetainStrong();
        sub_10040CAE8(v226, v227, v228, v229);

        sub_1003379B8(*(v215 + 25) | (*(v215 + 27) << 16));

        sub_1002CB018(v225, v224);
      }

      sub_100323CDC();
      v230 = v262;
      v231 = v265;
      (v262)(v261, v265);
      return v230(v77, v231);
    }

    v155 = swift_unownedRetainStrong();
    sub_10040CAE8(v155, v156, v157, v158);

    swift_beginAccess();

    v159 = &v1[*((swift_isaMask & *v1) + 0x68)];
    swift_beginAccess();
    v160 = *(v159 + 29);
    v266 = *(v159 + 25);
    v267 = v160;
    v161 = v248;
    v162 = v249;
    v164 = _s17InitiatorInstanceCMa_0(255, v248, v249, v163);
    v166 = _s17ResponderInstanceCMa_0(255, v161, v162, v165);
    type metadata accessor for Either(0, v164, v166, v167);
    sub_1002CAFC4();
    Dictionary.subscript.getter();

    v169 = v269;
    if (v269 == 255)
    {
LABEL_53:
      v172 = v262;
      v173 = v265;
      (v262)(v261, v265, v168);
      return v172(v77, v173);
    }

    v260 = v268;
    v170 = sub_100428AB0(v268, v269 & 1);
    if (v171 >> 60 == 15)
    {
      v168.n128_f64[0] = sub_1002CB018(v260, v169);
      goto LABEL_53;
    }

    v232 = v170;
    v233 = v171;
    v234 = sub_100428AE0(v260);
    sub_10000AB0C(v232, v233);
    sub_100017554(0, 0xF000000000000000);
    sub_10000AB0C(v232, v233);
    sub_10005D67C(0, 0xF000000000000000);
    sub_1000124C8(v232, v233);
    sub_100017554(0, 0xF000000000000000);

    v235 = *(v159 + 6);
    v236 = *(v159 + 7);
    v237 = *(v159 + 8);
    v238 = *(v159 + 9);
    v239 = *(v159 + 10);
    v240 = *(v159 + 11);
    v241 = *(v159 + 12);
    *(v159 + 6) = v234;
    *(v159 + 7) = v232;
    *(v159 + 8) = v233;
    *(v159 + 72) = xmmword_100483C50;
    *(v159 + 11) = 0;
    *(v159 + 12) = 0;
    sub_10011A270(v235, v236, v237, v238, v239, v240, v241);
    sub_100332618(1, 0, 0);
    sub_100321094();
    sub_1002CB018(v260, v169);
    sub_100017554(v232, v233);
    v43 = v265;
LABEL_76:
    v145 = v35[1];
    v145(v261, v43);
    return (v145)(v77, v43);
  }

  v262 = v1;
  v101 = v260;
  v260->isa = 2;
  v102 = v265;
  v37(v101, v36, v265);
  v77 = v264;
  v103 = static DispatchTimeInterval.< infix(_:_:)(v101, v264);
  v104 = v35[1];
  v104(v101, v102);
  if (!v103)
  {
    v104(v261, v102);
    return (v104)(v77, v102);
  }

  v105 = v262;
  v106 = swift_unownedRetainStrong();
  sub_10040CAE8(v106, v107, v108, v109);

  v110 = v105 + *((swift_isaMask & *v105) + 0x68);
  swift_beginAccess();
  LOBYTE(v110) = sub_10033ACA4(*(v110 + 25) | (*(v110 + 27) << 16));

  if ((v110 & 1) == 0)
  {
    v189 = v243;
    v190 = v265;
    (v35[2])(v243, v77, v265);
    v191 = v105;
    v192 = Logger.logObject.getter();
    LODWORD(v260) = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v192, v260))
    {
      v193 = v189;
      v194 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      isa = v195;
      v259 = swift_slowAlloc();
      v270 = v259;
      *v194 = 138412802;
      *(v194 + 4) = v191;
      *v195 = v105;
      *(v194 + 12) = 2080;
      v196 = v191;
      v197 = v192;
      v198 = DispatchTimeInterval.description.getter();
      v200 = v199;
      v201 = v193;
      v190 = v265;
      v104(v201, v265);
      v202 = sub_100002320(v198, v200, &v270);

      *(v194 + 14) = v202;
      *(v194 + 22) = 2080;
      v203 = *v39;
      v204 = *(v39 + 1);
      v205 = v39[16];
      sub_100333808(*v39, v204, v205);

      v206 = sub_10031DDC8(v203, v204, v205);
      v208 = v207;

      v209 = v204;
      v35 = v263;
      v77 = v264;
      sub_100333850(v203, v209, v205);
      v210 = sub_100002320(v206, v208, &v270);

      *(v194 + 24) = v210;
      _os_log_impl(&_mh_execute_header, v197, v260, "%@ will attempt to retry request since its been %s in %s", v194, 0x20u);
      sub_100016290(isa, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();
    }

    else
    {

      v104(v189, v190);
    }

    v43 = v190;
    sub_100332618(0, 0, 1);
    sub_100323854();
    goto LABEL_76;
  }

  v111 = NANConstants.keepAliveTimeout.unsafeMutableAddressor();
  v112 = v260;
  v113 = v265;
  (v35[2])(v260, v111, v265);
  v114 = static DispatchTimeInterval.< infix(_:_:)(v112, v77);
  v104(v112, v113);
  if (v114)
  {
    sub_100320050(1, 0xD000000000000027, 0x80000001004BF8F0, 14);
  }

  v104(v261, v113);
  return (v104)(v77, v113);
}

void *sub_1003236D8()
{
  v1 = v0 + *((swift_isaMask & *v0) + 0x68);
  swift_beginAccess();
  sub_100012400((v1 + 104), v7, &qword_1005914A8, &qword_100499048);
  if (v8)
  {
    if (v8 == 1)
    {
      sub_100016290(v7, &qword_1005914A8, &qword_100499048);
    }

    else
    {
      sub_10020C6CC(v7);
    }

    v4 = v1[32];
    v2 = *(v0 + *((swift_isaMask & *v0) + 0x60));
    swift_unownedRetainStrong();
    if (v4 != 2)
    {
      return v2;
    }

    v3 = 472;
  }

  else
  {
    sub_10020C6CC(v7);
    v2 = *(v0 + *((swift_isaMask & *v0) + 0x60));
    swift_unownedRetainStrong();
    v3 = 480;
  }

  v5 = *(v2 + *(*v2 + v3));

  result = v5;
  if (!v5)
  {
    return swift_unownedRetainStrong();
  }

  return result;
}

void sub_100323854()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v8 = &v23[-v7 - 8];
  v9 = v1 + *((v3 & v2) + 0xD0);
  if (v9[16] == 1)
  {
    v10 = *v9;
    if (*v9 > 2)
    {
      v16 = v1;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = v1;
        v21 = v16;
        _os_log_impl(&_mh_execute_header, v17, v18, "%@ is being terminated because request retries exceeded", v19, 0xCu);
        sub_100016290(v20, &qword_10058B780, &qword_100480AC0);
      }

      sub_100323CDC();
    }

    else
    {
      v22 = v6;
      v11 = *(v1 + *(v4 + 96));
      swift_unownedRetainStrong();
      sub_10040CBA8();

      v12 = sub_1003236D8();
      (*(*v12 + 216))(1);

      swift_unownedRetainStrong();
      v13 = *(*v11 + 96);
      swift_beginAccess();
      (*(v22 + 16))(v8, v11 + v13, AssociatedTypeWitness);

      v14 = *((swift_isaMask & *v1) + 0x68);
      swift_beginAccess();
      sub_1003336F4(v1 + v14, v23);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 216))(v23, AssociatedTypeWitness, AssociatedConformanceWitness);
      sub_100333750(v23);
      (*(v22 + 8))(v8, AssociatedTypeWitness);
      sub_100332618((v10 + 1), 0, 1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100323CDC()
{
  v1 = v0;
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v6 = &v54 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v12 = *v11;
  *v10 = *v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v14 = v1 + *((swift_isaMask & *v1) + 0xD0);
  if (v14[16] - 1 < 3)
  {
    goto LABEL_3;
  }

  if (!v14[16] || (v47 = *v14, v46 = *(v14 + 1), __PAIR128__(v46, v47) < 2))
  {
    sub_100320050(2, 0x7165722072657375, 0xEC00000074736575, 45);
    return;
  }

  if (!(v47 ^ 2 | v46))
  {
LABEL_3:
    v15 = v1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v55 = v3;
      v20 = v19;
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v1;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "%@ will attempt to stop", v18, 0xCu);
      sub_100016290(v20, &qword_10058B780, &qword_100480AC0);
      v3 = v55;
    }

    sub_100332618(3, 0, 4);
    v22 = (v15 + *((swift_isaMask & *v15) + 0xA0));
    if (*(v22 + 6))
    {
      goto LABEL_9;
    }

    v23 = swift_unownedRetainStrong();
    sub_10040CAE8(v23, v24, v25, v26);

    swift_beginAccess();

    if ((*(v22 + 6) & 1) == 0)
    {
      v28 = *(v22 + 2);
      v29 = *v22 | (v28 << 32);
      v57 = *v22;
      v30.i64[0] = 0xFFFFFFFFFFFFLL;
      v30.i64[1] = 0xFFFFFFFFFFFFLL;
      v31 = vandq_s8(vdupq_n_s64(v29), v30);
      v32 = vshlq_u64(v31, xmmword_1004817A0);
      *v31.i8 = vmovn_s64(vshlq_u64(v31, xmmword_100481790));
      *v32.i8 = vmovn_s64(v32);
      v32.i16[1] = v32.i16[2];
      v32.i16[2] = v31.i16[0];
      v32.i16[3] = v31.i16[2];
      v58 = vmovn_s16(v32).u32[0];
      v59 = BYTE1(v28);
      v33 = _s17InitiatorInstanceCMa_0(255, v3, v2, v27);
      v35 = _s17ResponderInstanceCMa_0(255, v3, v2, v34);
      type metadata accessor for Either(0, v33, v35, v36);
      sub_1002CAFC4();
      Dictionary.subscript.getter();

      v37 = v61;
      if (v61 != 255)
      {
        v38 = v60;
        sub_100428A84(v60, v61 & 1, v3, v2);
        sub_1002CB018(v38, v37);
      }

LABEL_9:
      v39 = *(v15 + *((swift_isaMask & *v15) + 0x60));
      swift_unownedRetainStrong();
      sub_10040CBA8();

      swift_unownedRetainStrong();
      v40 = *(*v39 + 96);
      swift_beginAccess();
      (*(v56 + 16))(v6, v39 + v40, AssociatedTypeWitness);

      v41 = v15 + *((swift_isaMask & *v15) + 0x68);
      swift_beginAccess();
      v42 = *(v41 + 3);
      v43 = *(v41 + 1);
      v44 = *v41;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 240))(v44, v43 | (v42 << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
      (*(v56 + 8))(v6, AssociatedTypeWitness);
      return;
    }

    goto LABEL_19;
  }

  v48 = v1;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412290;
    *(v51 + 4) = v48;
    *v52 = v1;
    v53 = v48;
    _os_log_impl(&_mh_execute_header, v49, v50, "%@ was already in process of termination, ignoring request to terminate", v51, 0xCu);
    sub_100016290(v52, &qword_10058B780, &qword_100480AC0);
  }
}

void sub_1003244CC()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = swift_isaMask & *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = v0 + *((v2 & v1) + 0xD0);
  if (v8[16] == 2)
  {
    v9 = *(v8 + 1);
    if (v9 > 2)
    {

      sub_100320050(1, 0xD00000000000001DLL, 0x80000001004BF9A0, 24);
    }

    else
    {
      v10 = *v8;
      v11 = *(v3 + 96);
      v15 = v0;
      v12 = *(v0 + v11);
      swift_unownedRetainStrong();
      sub_10040CBA8();

      swift_unownedRetainStrong();
      v13 = *(*v12 + 96);
      swift_beginAccess();
      (*(v5 + 16))(v7, v12 + v13, AssociatedTypeWitness);

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 288))(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
      (*(v5 + 8))(v7, AssociatedTypeWitness);
      sub_100332618(v10, v9 + 1, 2);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100324830(void *a1)
{
  v587 = a1;
  ObjectType = swift_getObjectType();
  v2 = *v1;
  v3 = swift_isaMask;
  v4 = type metadata accessor for UUID();
  v556 = *(v4 - 8);
  v557 = v4;
  __chkstk_darwin();
  v555 = &v554 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v574 = *(v6 - 8);
  v575 = v6;
  __chkstk_darwin();
  v573 = &v554 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100596880, &unk_1004B0F70);
  __chkstk_darwin();
  v572 = &v554 - v8;
  *(&v580 + 1) = type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v562 = &v554 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v571 = &v554 - v10;
  __chkstk_darwin();
  v570 = &v554 - v11;
  __chkstk_darwin();
  v569 = &v554 - v12;
  v13 = type metadata accessor for DispatchTime();
  v579 = *(v13 - 8);
  *&v580 = v13;
  __chkstk_darwin();
  v578 = &v554 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v577 = &v554 - v15;
  v586 = *((v3 & v2) + 0x58);
  v588 = v1;
  v16 = *((v3 & v2) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  v582 = *(v20 - 8);
  v583 = v20;
  __chkstk_darwin();
  v581 = (&v554 - v21);
  sub_10005DC58(&unk_100595C00, &qword_10048F790);
  __chkstk_darwin();
  v565 = &v554 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v566 = (&v554 - v23);
  __chkstk_darwin();
  v576 = (&v554 - v24);
  v585 = v16;
  v25 = swift_getAssociatedTypeWitness();
  v567 = *(v25 - 8);
  v568 = v25;
  __chkstk_darwin();
  v564 = &v554 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v563 = &v554 - v27;
  v28 = type metadata accessor for DispatchTimeInterval();
  v560 = *(v28 - 1);
  v561 = v28;
  __chkstk_darwin();
  v559 = (&v554 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v32 = &v554 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v34 = &v554 - v33;
  __chkstk_darwin();
  v36 = (&v554 - v35);
  __chkstk_darwin();
  v38 = &v554 - v37;
  v39 = type metadata accessor for DispatchPredicate();
  v40 = *(v39 - 8);
  __chkstk_darwin();
  v42 = &v554 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v558 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v43 = *v558;
  *v42 = *v558;
  (*(v40 + 104))(v42, enum case for DispatchPredicate.onQueue(_:), v39);
  v44 = v43;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  v46 = *(v40 + 8);
  v45 = (v40 + 8);
  v46(v42, v39);
  if ((v43 & 1) == 0)
  {
    __break(1u);
    goto LABEL_278;
  }

  v47 = v587;
  sub_1000133C4(v587, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v49 = v38;
  if (EnumCaseMultiPayload == 4)
  {
    sub_1000133C4(v38, v34);
    v50 = v588;
    if (*v34 != 1)
    {
      goto LABEL_39;
    }

    v66 = &v588[*((swift_isaMask & *v588) + 0xD0)];
    if (v66[16] == 4 && !*(v66 + 1) && *v66 == 3)
    {
      sub_100320050(2, 0xD00000000000002ALL, 0x80000001004BE5B0, 39);
      goto LABEL_42;
    }

    v77 = ObjectType;
    WitnessTable = swift_getWitnessTable(byte_1004B0F38, ObjectType);
    if (!sub_10036DCD0(v77, WitnessTable))
    {
      goto LABEL_42;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v80 = Strong;
      v81 = *&Strong[qword_10059BAF8];
      if (v81)
      {

        v82 = *(v81 + qword_10059BBF8);

        if (v82 != 1)
        {
LABEL_76:
          v200 = v50 + *((swift_isaMask & *v50) + 0x68);
          swift_beginAccess();
          sub_100012400((v200 + 104), v594, &qword_1005914A8, &qword_100499048);
          if (v594[3])
          {
            if (v594[3] == 1)
            {
              sub_100016290(v594, &qword_1005914A8, &qword_100499048);
            }

            else
            {
              sub_10020C6CC(v594);
            }
          }

          else
          {
            sub_10020C6CC(v594);
            v201 = *((swift_isaMask & *v50) + 0xE0);
            if (*(v50 + v201) == 1)
            {
              sub_10032BAA8();
              *(v50 + v201) = 0;
            }
          }

          goto LABEL_42;
        }
      }

      else
      {
      }
    }

    sub_100332618(0, 0, 4);
    goto LABEL_76;
  }

  v50 = v588;
  if (EnumCaseMultiPayload)
  {
    goto LABEL_39;
  }

  sub_1000133C4(v49, v36);
  memcpy(v593, v36, 0x16AuLL);
  memcpy(v594, v36, 0x16AuLL);
  v51 = sub_100185198(v594);
  if (v51 > 7)
  {
    if (v51 != 8)
    {
      if (v51 != 9)
      {
        if (v51 == 10)
        {
          NANBitmap.Channel.operatingClass.getter();
          v53 = v52;
          v54 = v50 + *((swift_isaMask & *v50) + 0x68);
          swift_beginAccess();
          v587 = *v54;
          ObjectType = v54[1];
          v583 = v54[2];
          v55 = *(v54 + 3);
          v56 = v50;
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v582 = v55;
            v61 = v60;
            *&v591[0] = swift_slowAlloc();
            *v59 = 138412802;
            *(v59 + 4) = v56;
            *v61 = v588;

            *(v59 + 12) = 2080;
            v595[0] = *(v53 + 15);
            v62 = String.init<A>(describing:)();
            v64 = sub_100002320(v62, v63, v591);

            *(v59 + 14) = v64;
            *(v59 + 22) = 2080;
            v65 = sub_100002320(0x64657463656A6572, 0xE800000000000000, v591);

            *(v59 + 24) = v65;
            _os_log_impl(&_mh_execute_header, v57, v58, "%@ received datapath host assist for %s. Responding with %s", v59, 0x20u);
            sub_100016290(v61, &qword_10058B780, &qword_100480AC0);
            v55 = v582;

            swift_arrayDestroy();
          }

          else
          {
          }

          v166 = *(v56 + *((swift_isaMask & *v56) + 0x60));
          swift_unownedRetainStrong();
          sub_10040CBA8();

          v167 = v55 << 24;
          swift_unownedRetainStrong();
          v168 = *(*v166 + 96);
          swift_beginAccess();
          v169 = v567;
          v170 = v166 + v168;
          v171 = v563;
          v172 = v568;
          (*(v567 + 16))(v563, v170, v568);

          v173 = swift_getAssociatedConformanceWitness();
          v174 = v587 | (ObjectType << 8) | (v583 << 16) | v167;
          (*(v173 + 288))(v174 | 0x200000000000000, v172, v173);
          (*(v169 + 8))(v171, v172);
          sub_100332618((v174 | 0x200000000000000), 0, 2);
          goto LABEL_42;
        }

        goto LABEL_38;
      }

      NANBitmap.Channel.operatingClass.getter();
      v587 = *(v101 + 8);
      v102 = v50;
      LODWORD(v583) = *(v101 + 16);
      v103 = swift_isaMask & *v50;
      v104 = (v50 + *(v103 + 0xA0));
      v105 = *(v104 + 6);
      ObjectType = v104;
      if (v105)
      {
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          *v108 = 0;
          _os_log_impl(&_mh_execute_header, v106, v107, "Unable to generate channel sequence mismatch count for peer a peer address (Respondeer) was nil", v108, 2u);
        }

        sub_10000B02C();
        swift_allocError();
        *v109 = xmmword_10047CE50;
        *(v109 + 16) = 1;
        swift_willThrow();
        swift_errorRetain();
        v160 = Logger.logObject.getter();
        v161 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v160, v161))
        {
          v163 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          *v163 = 138412290;
          swift_errorRetain();
          v165 = _swift_stdlib_bridgeErrorToNSError();
          *(v163 + 4) = v165;
          *v164 = v165;

          _os_log_impl(&_mh_execute_header, v160, v161, "Unable to generate channel sequence mismatch count for peer (Responder): %@", v163, 0xCu);
          sub_100016290(v164, &qword_10058B780, &qword_100480AC0);
        }

        else
        {
        }
      }

      else
      {
        v152 = *v104 | (*(v104 + 2) << 32);
        v153 = *(v50 + *(v103 + 96));
        swift_unownedRetainStrong();
        v154 = *(*v153 + 96);
        swift_beginAccess();
        v155 = v567;
        v156 = v568;
        v157 = v153 + v154;
        v158 = v564;
        (*(v567 + 16))(v564, v157, v568);

        v159 = swift_getAssociatedConformanceWitness();
        (*(v159 + 360))(v152, v156, v159);
        v244 = v243;
        (*(v155 + 8))(v158, v156);
        v245 = v102 + *((swift_isaMask & *v102) + 0x148);
        swift_beginAccess();
        *(v245 + 140) = v244;
      }

      v36 = &v588[*((swift_isaMask & *v588) + 0xD0)];
      v246 = *v36;
      v247 = *(v36 + 16);
      if (v247 <= 1)
      {
        if (!*(v36 + 16))
        {
          sub_100321094();
          v250 = ObjectType;
          goto LABEL_265;
        }
      }

      else
      {
        v248 = v36[1];
        if (v247 != 2)
        {
          if (v247 == 3)
          {
            v249 = &v588[*((swift_isaMask & *v588) + 0x68)];
            swift_beginAccess();
            sub_100012400((v249 + 104), v591, &qword_1005914A8, &qword_100499048);
            v250 = ObjectType;
            if (*(&v591[1] + 1))
            {
              if (*(&v591[1] + 1) == 1)
              {
                sub_100016290(v591, &qword_1005914A8, &qword_100499048);
              }

              else
              {
                sub_100179C1C(v591, v592);
                if (v587 == 2)
                {
                  v406 = *(&v592[1] + 1);
                  v407 = *&v592[2];
                  sub_100029B34(v592, *(&v592[1] + 1));
                  v408 = (*(v407 + 32))(*(v249 + 25) | (*(v249 + 27) << 16), v406, v407);
                  if (v408)
                  {
                    v409 = v408;
                    v410 = *&v588[*((swift_isaMask & *v588) + 0x78)];
                    if (v410)
                    {
                      [v410 datapathUpdatedInternetSharingPolicy:v409];
                    }

                    swift_beginAccess();

                    sub_10031D44C(v411, v409);

                    *&v596 = 0;
                    *(&v596 + 1) = 0xE000000000000000;
                    _StringGuts.grow(_:)(26);
                    v412._countAndFlagsBits = 0xD000000000000018;
                    v412._object = 0x80000001004BF9F0;
                    String.append(_:)(v412);
                    sub_10031D33C(v409);
                    v413._countAndFlagsBits = 0;
                    v413._object = 0xE000000000000000;
                    String.append(_:)(v413);
                    sub_100320050(4, v596, *(&v596 + 1), 29);

                    sub_100002A00(v592);
                    goto LABEL_42;
                  }
                }

                sub_100002A00(v592);
              }
            }

            else
            {
              sub_10020C6CC(v591);
            }

            v355 = 0x7165722072656570;
            v356 = v587;
            v357 = v583;
LABEL_216:
            sub_100320050(v356, v355, 0xEC00000074736575, v357);
            if (*(v250 + 6))
            {
              goto LABEL_42;
            }

            goto LABEL_266;
          }

          v260 = v588;
          if (__PAIR128__(v248, v246) >= 2)
          {
            v250 = ObjectType;
            if (v246 ^ 2 | v248)
            {
              v355 = 0x7165722072657375;
              v356 = 2;
              v357 = 45;
            }

            else
            {
              v355 = 0x7165722072656570;
              v356 = 3;
              v357 = 28;
            }

            goto LABEL_216;
          }

          v42 = v588;
          v45 = Logger.logObject.getter();
          v261 = v260;
          LOBYTE(v38) = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v45, v38))
          {

            v250 = ObjectType;
            if (*(ObjectType + 6))
            {
              goto LABEL_42;
            }

LABEL_266:
            v523 = swift_unownedRetainStrong();
            sub_10040CAE8(v523, v524, v525, v526);

            swift_beginAccess();

            if ((*(v250 + 6) & 1) == 0)
            {
              v528 = *(v250 + 2);
              v529 = *v250 | (v528 << 32);
              LOBYTE(v596) = *v250;
              v530.i64[0] = 0xFFFFFFFFFFFFLL;
              v530.i64[1] = 0xFFFFFFFFFFFFLL;
              v531 = vandq_s8(vdupq_n_s64(v529), v530);
              v532 = vshlq_u64(v531, xmmword_1004817A0);
              *v531.i8 = vmovn_s64(vshlq_u64(v531, xmmword_100481790));
              *v532.i8 = vmovn_s64(v532);
              v532.i16[1] = v532.i16[2];
              v532.i16[2] = v531.i16[0];
              v532.i16[3] = v531.i16[2];
              *(&v596 + 1) = vmovn_s16(v532).u32[0];
              BYTE5(v596) = BYTE1(v528);
              v534 = v585;
              v533 = v586;
              v535 = _s17InitiatorInstanceCMa_0(255, v585, v586, v527);
              v537 = _s17ResponderInstanceCMa_0(255, v534, v533, v536);
              type metadata accessor for Either(0, v535, v537, v538);
              sub_1002CAFC4();
              Dictionary.subscript.getter();

              v539 = BYTE8(v591[0]);
              if (BYTE8(v591[0]) != 255)
              {
                v540 = *&v591[0];
                sub_100428A58(*&v591[0], BYTE8(v591[0]) & 1, v585, v586);
                v541 = swift_unownedRetainStrong();
                sub_10040CAE8(v541, v542, v543, v544);

                if ((*(v250 + 6) & 1) == 0)
                {
                  sub_1003379B8(*v250 | (*(v250 + 2) << 32));

                  sub_1002CB018(v540, v539);
                  goto LABEL_42;
                }

                goto LABEL_287;
              }

LABEL_42:
              sub_100023958(v49, type metadata accessor for DriverEvent);
              return;
            }

LABEL_286:
            __break(1u);
LABEL_287:
            __break(1u);
            goto LABEL_288;
          }

          v30 = swift_slowAlloc();
          v262 = swift_slowAlloc();
          v263 = swift_slowAlloc();
          *&v592[0] = v263;
          *v30 = 138412802;
          *(v30 + 4) = v42;
          v262->isa = v261;
          *(v30 + 12) = 2080;
          v554 = v49;
          v582 = v262;
          v583 = v263;
          if (v587 <= 1)
          {
            if (v587 == -1)
            {
              v264 = 0x80000001004BA5E0;
              v265 = 0xD000000000000011;
              goto LABEL_282;
            }

            if (v587 == 1)
            {
              v265 = 0x754F2064656D6954;
              v264 = 0xE900000000000074;
              goto LABEL_282;
            }

LABEL_281:
            v264 = 0xE700000000000000;
            v265 = 0x6E776F6E6B6E55;
LABEL_282:
            v546 = sub_100002320(v265, v264, v592);

            *(v30 + 14) = v546;
            *(v30 + 22) = 2080;
            v547 = *v36;
            v548 = v36[1];
            v549 = *(v36 + 16);
            sub_100333808(*v36, v548, v549);

            v550 = sub_10031DDC8(v547, v548, v549);
            v552 = v551;
            sub_100333850(v547, v548, v549);
            v553 = sub_100002320(v550, v552, v592);

            *(v30 + 24) = v553;

            _os_log_impl(&_mh_execute_header, v45, v38, "%@ got early termination (%s) when %s, ignoring", v30, 0x20u);
            sub_100016290(v582, &qword_10058B780, &qword_100480AC0);

            swift_arrayDestroy();

            v49 = v554;
            v250 = ObjectType;
            if (*(ObjectType + 6))
            {
              goto LABEL_42;
            }

            goto LABEL_266;
          }

          if (v587 != 2)
          {
            if (v587 == 3)
            {
              v265 = 0x6961462070696843;
              v264 = 0xEC0000006572756CLL;
              goto LABEL_282;
            }

            if (v587 == 4)
            {
              v264 = 0x80000001004BA540;
              v265 = 0xD000000000000018;
              goto LABEL_282;
            }

            goto LABEL_281;
          }

LABEL_278:
          v265 = 0x7165522072657355;
          v264 = 0xEE00646574736575;
          goto LABEL_282;
        }

        v246 = v36[1];
      }

      v251 = v588;
      sub_100332618(v246, 0, 1);
      v252 = v251;
      v253 = Logger.logObject.getter();
      v254 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v253, v254))
      {

LABEL_264:
        v250 = ObjectType;
        sub_100323854();
LABEL_265:
        if (*(v250 + 6))
        {
          goto LABEL_42;
        }

        goto LABEL_266;
      }

      v255 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      v257 = swift_slowAlloc();
      *&v592[0] = v257;
      *v255 = 138413058;
      *(v255 + 4) = v252;
      v581 = v256;
      v582 = v257;
      *v256 = v251;
      *(v255 + 12) = 2080;
      v554 = v49;
      LODWORD(v583) = v254;
      if (v587 <= 1)
      {
        if (v587 == -1)
        {
          v258 = 0x80000001004BA5E0;
          v259 = 0xD000000000000011;
          goto LABEL_263;
        }

        if (v587 == 1)
        {
          v259 = 0x754F2064656D6954;
          v258 = 0xE900000000000074;
          goto LABEL_263;
        }
      }

      else
      {
        switch(v587)
        {
          case 2:
            v259 = 0x7165522072657355;
            v258 = 0xEE00646574736575;
            goto LABEL_263;
          case 3:
            v259 = 0x6961462070696843;
            v258 = 0xEC0000006572756CLL;
            goto LABEL_263;
          case 4:
            v258 = 0x80000001004BA540;
            v259 = 0xD000000000000018;
LABEL_263:
            v515 = sub_100002320(v259, v258, v592);

            *(v255 + 14) = v515;
            *(v255 + 22) = 2080;
            v516 = *v36;
            v517 = v36[1];
            v518 = *(v36 + 16);
            sub_100333808(*v36, v517, v518);

            v519 = sub_10031DDC8(v516, v517, v518);
            v521 = v520;
            sub_100333850(v516, v517, v518);
            v522 = sub_100002320(v519, v521, v592);

            *(v255 + 24) = v522;

            *(v255 + 32) = 2048;
            *(v255 + 34) = v246;
            _os_log_impl(&_mh_execute_header, v253, v583, "%@ got early termination (%s) when %s for retry #%ld", v255, 0x2Au);
            sub_100016290(v581, &qword_10058B780, &qword_100480AC0);

            swift_arrayDestroy();

            v49 = v554;
            goto LABEL_264;
        }
      }

      v258 = 0xE700000000000000;
      v259 = 0x6E776F6E6B6E55;
      goto LABEL_263;
    }

    v554 = v49;
    NANBitmap.Channel.operatingClass.getter();
    v84 = v83[8];
    v85 = v83[9];
    v587 = v83[10];
    v568 = v83[11];
    v86 = v83[12];
    v87 = v83[13];
    v88 = *((swift_isaMask & *v50) + 0x98);
    v89 = v50;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();
    v92 = os_log_type_enabled(v90, v91);
    v93 = v84 | (v85 << 8);
    v565 = v86;
    v567 = v87;
    v563 = v88;
    if (v92)
    {
      v94 = swift_slowAlloc();
      v564 = v93;
      v95 = v94;
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *&v592[0] = v97;
      *v95 = 138412546;
      *(v95 + 4) = v89;
      *v96 = v588;

      *(v95 + 12) = 2080;
      v98 = WiFiAddress.description.getter(v564 | (v587 << 16) | (v568 << 24) | (v86 << 32) | (v87 << 40));
      v100 = sub_100002320(v98, v99, v592);

      *(v95 + 14) = v100;
      v86 = v565;
      _os_log_impl(&_mh_execute_header, v90, v91, "%@ datapath established with %s", v95, 0x16u);
      sub_100016290(v96, &qword_10058B780, &qword_100480AC0);
      v50 = v588;

      sub_100002A00(v97);

      v93 = v564;
    }

    else
    {
    }

    v139 = v89;
    v140 = (v89 + *((swift_isaMask & *v89) + 0xB0));
    v141 = *v140;
    v142 = *v140;
    v576 = v89;
    v143 = v567;
    v144 = v568;
    v145 = v587;
    if (v142 == 4)
    {
      v561 = 0;
    }

    else
    {
      v146 = v567;
      v147 = v86;
      v148 = v93;
      v149 = v140[1];
      v150 = v140[2];
      sub_10000AB0C(v149, v150);
      v151 = NANServiceInfo.genericServiceProtocol.getter(v141, v149, v150);
      sub_1001842D0(v141, v149, v150);
      if (v151)
      {
        v561 = NANGenericServiceProtocol.apiDatapathServiceSpecificInfo.getter(v151);
      }

      else
      {
        v561 = 0;
      }

      v139 = v576;
      v93 = v148;
      v86 = v147;
      v143 = v146;
      v145 = v587;
    }

    v231 = (v139 + *((swift_isaMask & *v139) + 0xA0));
    v232 = *(v231 + 6);
    v566 = v231;
    if ((v232 & 1) == 0)
    {
      v233 = v93 | (v145 << 16) | (v144 << 24) | (v86 << 32) | (v143 << 40);
      if (static WiFiAddress.!= infix(_:_:)(*v231 | (*(v231 + 2) << 32), v233))
      {
        v234 = v139;
        v235 = Logger.logObject.getter();
        v236 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v235, v236))
        {
          v237 = swift_slowAlloc();
          v564 = v93;
          v238 = v237;
          v239 = swift_slowAlloc();
          v560 = swift_slowAlloc();
          *&v592[0] = v560;
          *v238 = 138412546;
          *(v238 + 4) = v234;
          *v239 = v588;

          *(v238 + 12) = 2080;
          v240 = WiFiAddress.description.getter(v233);
          v242 = sub_100002320(v240, v241, v592);

          *(v238 + 14) = v242;
          _os_log_impl(&_mh_execute_header, v235, v236, "%@ got an updated responder data address %s", v238, 0x16u);
          sub_100016290(v239, &qword_10058B780, &qword_100480AC0);
          v50 = v588;

          sub_100002A00(v560);

          v93 = v564;
        }

        else
        {
        }

        v139 = v576;
        v86 = v565;
        v231 = v566;
      }
    }

    *(v231 + 2) = ((v143 << 40) | (v86 << 32)) >> 32;
    v560 = v93 | (v145 << 16) | (v144 << 24);
    *v231 = v560;
    *(v231 + 6) = 0;
    v266 = &swift_isaMask;
    v267 = *(v139 + *((swift_isaMask & *v139) + 0x60));
    v268 = swift_unownedRetainStrong();
    sub_10040CAE8(v268, v269, v270, v271);
    v587 = v267;

    v272 = v139 + *((swift_isaMask & *v139) + 0x68);
    swift_beginAccess();
    v273 = *(v272 + 27);
    v564 = v272;
    v568 = sub_100337688(*(v272 + 25) | (v273 << 16));

    type metadata accessor for P2PTimer(0);
    v274 = v577;
    variable initialization expression of AWDLPeer.lastUpdated();
    v275 = DispatchTime.uptimeNanoseconds.getter();
    v276 = v579;
    v277 = v580;
    v278 = v579[1];
    v278(v274, v580);
    v279 = v578;
    (*(v276 + 16))(v578, v139 + *((swift_isaMask & *v139) + 0x160), v277);
    v280 = DispatchTime.uptimeNanoseconds.getter();
    v278(v279, v277);
    if (v275 >= v280)
    {
      v281 = (v275 - v280) / 0xF4240;
      v282 = v139 + *((swift_isaMask & *v139) + 0x148);
      swift_beginAccess();
      *(v282 + 10) = v281;
      v283 = (v139 + *((swift_isaMask & *v139) + 0x128));
      v284 = v283[1];
      if (v284)
      {
        v285 = v139 + *((swift_isaMask & *v139) + 0x130);
        if ((v285[4] & 1) == 0)
        {
          v286 = *v285;
          if (*v285 >= 1)
          {
            v287 = *v283;
            type metadata accessor for WiFiAwareMonitorClient(0);
            swift_allocObject();

            v288 = v287;
            v139 = v576;
            v50 = v588;
            sub_10038982C(v288, v284, v286);
            *(v139 + *((swift_isaMask & *v139) + 0x70)) = v289;
          }
        }
      }

      swift_unownedRetainStrong();
      v290 = v560 | (v565 << 32) | (v567 << 40);
      v291 = v569;
      sub_10040CD68(v290, v569);

      v292 = *(&v580 + 1);
      v293 = *(v291 + *(*(&v580 + 1) + 72) + 8);
      sub_100023958(v291, type metadata accessor for NANPeer);
      if ((v293 & 0xFF00000000) == 0x300000000)
      {
        v294 = 0;
      }

      else
      {
        v294 = BYTE6(v293);
      }

      v282[104] = v294;
      swift_unownedRetainStrong();
      v295 = v570;
      sub_10040CD68(v290, v570);

      v296 = sub_1002E0E3C();
      sub_100023958(v295, type metadata accessor for NANPeer);
      v282[106] = v296;
      swift_unownedRetainStrong();
      v297 = v571;
      *&v580 = v290;
      sub_10040CD68(v290, v571);

      v298 = v297 + *(v292 + 76);
      v299 = v572;
      sub_100012400(v298, v572, &unk_100596880, &unk_1004B0F70);
      sub_100023958(v297, type metadata accessor for NANPeer);
      v300 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
      if ((*(*(v300 - 8) + 48))(v299, 1, v300) == 1)
      {
        sub_100016290(v299, &unk_100596880, &unk_1004B0F70);
        v301 = 0;
      }

      else
      {
        v301 = *(v299 + 4);
        sub_100023958(v299, type metadata accessor for NANAttribute.CustomDeviceInformation);
      }

      v302 = v563;
      v303 = v566;
      v304 = (v301 >> 4) & 2;
      if ((v301 & 0x10) != 0)
      {
        LOBYTE(v304) = 1;
      }

      v282[32] = v304;
      v305 = v561;
      v306 = v561;
      v307 = v568;

      sub_100332618(v305, v307, 3);

      v579 = v306;

      type metadata accessor for NANDatapathPerformanceInstance(0, v585, v586, v308);
      v309 = v564;
      LOBYTE(v307) = *v564;
      v310 = v587;
      swift_unownedRetainStrong();
      v311 = v573;
      (*(v574 + 16))(v573, &v302[v50], v575);
      v312 = v311;
      v313 = v309;
      v314 = sub_10038F634(v307, v310, v580, v312);

      *(v139 + *((swift_isaMask & *v139) + 0x168)) = v314;

      v315 = *(v309 + 150);
      v49 = v554;
      if (v315 & 1) != 0 || (*(v303 + 6))
      {
        v316 = Logger.logObject.getter();
        v317 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v316, v317))
        {
          v318 = swift_slowAlloc();
          *v318 = 0;
          _os_log_impl(&_mh_execute_header, v316, v317, "Error while starting GCR session)", v318, 2u);
          v313 = v564;
        }

        goto LABEL_141;
      }

      v336 = *(v313 + 148);
      v337 = *(v313 + 144);
      v338 = *(v303 + 2);
      v339 = *v303;
      v340 = swift_unknownObjectWeakLoadStrong();
      if (v340)
      {
        v341 = v340;
        if (*&v340[qword_10059BAF8])
        {

          sub_100423FE0((v337 | (v336 << 32)) & 0xFFFFFFFFFFFFLL, (v339 | (v338 << 32)) & 0xFFFFFFFFFFFFLL, *(v564 + 156) | (*(v564 + 160) << 32), *(v564 + 162) | (*(v564 + 164) << 16));
        }

        else
        {
        }
      }

      v414 = swift_unknownObjectWeakLoadStrong();
      v49 = v554;
      v313 = v564;
      if (v414)
      {
        v415 = v414;
        if (*&v414[qword_10059BAF8])
        {

          sub_10042471C(v568);
        }

        else
        {
        }
      }

      v139 = v576;
      v416 = swift_unknownObjectWeakLoadStrong();
      if (v416)
      {
        v316 = v416;
        v417 = *(v416 + qword_10059BAF8);
        if (!v417)
        {
LABEL_141:

          goto LABEL_142;
        }

        *(v417 + qword_10059BBF8) = *(v313 + 151);
      }

LABEL_142:
      v319 = swift_unknownObjectWeakLoadStrong();
      if (v319)
      {
        v320 = v319;
        sub_100390F88();
      }

      if (*(v313 + 150) == 1)
      {
        swift_unknownObjectWeakAssign();
      }

      v321 = *((swift_isaMask & *v139) + 0xE0);
      if ((*(v139 + v321) & 1) == 0)
      {
        sub_100012400(v313 + 104, v591, &qword_1005914A8, &qword_100499048);
        if (*(&v591[1] + 1) != 1)
        {
          v592[0] = v591[0];
          v592[1] = v591[1];
          *&v592[2] = *&v591[2];
          *(v139 + v321) = 1;
          sub_10020C694(v592, v591);
          if (*(&v591[1] + 1))
          {
            sub_100179C1C(v591, v595);
            v342 = v313;
            v343 = *&v595[24];
            v344 = *&v595[32];
            v588 = sub_100029B34(v595, *&v595[24]);
            v345 = *(v342 + 25);
            v346 = *(v342 + 26);
            v347 = *(v342 + 27) << 16;
            if (*(v342 + 96) == 1)
            {
              v348 = 0;
              v349 = 0xF000000000000000;
            }

            else
            {
              v348 = *(v342 + 56);
              v349 = *(v342 + 64);
              sub_10000AB0C(v348, v349);
            }

            v389 = ObjectType;
            v390 = swift_getWitnessTable(byte_1004B0F38, ObjectType);
            v391 = sub_10036DB68(v389, v390);
            (*(v344 + 8))(v345 | (v346 << 8) | v347, v348, v349, v391 & 0xFFFFFFFFFFFFFFLL, v343, v344);
            sub_100017554(v348, v349);
            sub_10020C6CC(v592);
            sub_100002A00(v595);
            v49 = v554;
          }

          else
          {
            sub_1003291E8();
            sub_10020C6CC(v592);
          }

          goto LABEL_188;
        }

        sub_100016290(v591, &qword_1005914A8, &qword_100499048);
      }

      swift_unownedRetainStrong();
      v322 = v581;
      WiFiInterface.preferences.getter();

      v323 = v583;
      v324 = Preferences.autoInternetSharingOnInfraLost.getter(v583);
      (v582[1].isa)(v322, v323);
      if ((v324 & 1) == 0)
      {
        v329 = Logger.logObject.getter();
        v330 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v329, v330))
        {
          v331 = swift_slowAlloc();
          *v331 = 0;
          _os_log_impl(&_mh_execute_header, v329, v330, "autoInternetSharingProvider is disabled. To enable it, set 'wifip2p Preferences autoInternetSharingOnInfraLost=true'", v331, 2u);
        }

        v335 = v579;
        v303 = v566;
        goto LABEL_189;
      }

      swift_unownedRetainStrong();
      v325 = v562;
      sub_10040CD68(v580, v562);

      v326 = *(v325 + *(*(&v580 + 1) + 72) + 8);
      sub_100023958(v325, type metadata accessor for NANPeer);
      if ((v326 & 0xFF00000000) == 0x300000000)
      {
        v327 = Optional<A>.init(integerLiteral:)(0) & 0xFFFFFFFFFFFFLL;
        v328 = 0x300000000;
      }

      else
      {
        v350 = Optional<A>.init(integerLiteral:)(BYTE6(v326));
        v328 = v350 & 0xFFFFFFFFFFFFLL;
        v351 = Optional<A>.init(integerLiteral:)(0);
        v327 = v351 & 0xFFFFFFFFFFFFLL;
        if ((v350 & 0xFF00000000) != 0x300000000)
        {
          v303 = v566;
          v352 = v580;
          if ((v351 & 0xFF00000000) != 0x300000000 && static InfraAssociationStartEvent.__derived_struct_equals(_:_:)(v350 & 0xFFFFFFFFFFFFLL, v351 & 0xFFFFFFFFFFFFLL))
          {
            goto LABEL_163;
          }

          goto LABEL_172;
        }
      }

      v303 = v566;
      v352 = v580;
      if ((v327 & 0xFF00000000) == 0x300000000)
      {
LABEL_163:
        sub_10031E70C();
LABEL_179:
        v366 = v139;
        v367 = Logger.logObject.getter();
        v368 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v367, v368))
        {
          v369 = swift_slowAlloc();
          v587 = swift_slowAlloc();
          *&v591[0] = v587;
          *v369 = 136315650;
          v370 = v580;
          v371 = WiFiAddress.description.getter(v580);
          v373 = sub_100002320(v371, v372, v591);

          *(v369 + 4) = v373;
          *(v369 + 12) = 2080;
          v374 = Optional<A>.description.getter(v328);
          v376 = sub_100002320(v374, v375, v591);

          *(v369 + 14) = v376;
          *(v369 + 22) = 2080;
          v377 = *((swift_isaMask & *v366) + 0xF0);
          swift_beginAccess();
          v378 = *(v366 + v377);
          if (*(v378 + 16) && (v379 = sub_100041DE8(v370), (v380 & 1) != 0))
          {
            v381 = *(*(v378 + 56) + 8 * v379);
            swift_endAccess();
            v382 = v555;
            v383 = v556;
            v384 = v557;
            (*(v556 + 16))(v555, v381 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_id, v557);
            v588 = UUID.uuidString.getter();
            v386 = v385;
            (*(v383 + 8))(v382, v384);
            v387 = v588;
          }

          else
          {
            swift_endAccess();
            v386 = 0xE300000000000000;
            v387 = 7104878;
          }

          v49 = v554;
          v335 = v579;
          v388 = sub_100002320(v387, v386, v591);

          *(v369 + 24) = v388;

          _os_log_impl(&_mh_execute_header, v367, v368, "start monitoring peerAttribute(.extendedWLANInfrastructure) for autoInternetSharingOnInfraLost requester %s requesterChannel %s got token %s", v369, 0x20u);
          swift_arrayDestroy();

          goto LABEL_189;
        }

LABEL_188:
        v335 = v579;
LABEL_189:
        v392 = *v303 | (*(v303 + 2) << 32);
        LOBYTE(v592[0]) = *(v303 + 6);
        sub_100329B64(v392 | (LOBYTE(v592[0]) << 48), v332, v333, v334);
        sub_10032AEC4(v393, v394, v395, v396);

        goto LABEL_42;
      }

LABEL_172:
      ObjectType = v328;
      v358 = *((swift_isaMask & *v139) + 0xF0);
      swift_beginAccess();
      v359 = sub_10040C914(v352, *(v139 + v358));
      swift_endAccess();
      if (v359)
      {
      }

      else
      {
        swift_unownedRetainStrong();
        v360 = v352;
        v361 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v362 = swift_allocObject();
        v363 = v586;
        v362[2] = v585;
        v362[3] = v363;
        v362[4] = v361;

        v364 = sub_10040DECC(v360, 0x1Eu, sub_10033389C, v362);

        v139 = v576;

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v591[0] = *(v139 + v358);
        sub_1003E12B0(v364, v360, isUniquelyReferenced_nonNull_native);
        *(v139 + v358) = *&v591[0];
        swift_endAccess();
      }

      v328 = ObjectType;
      goto LABEL_179;
    }

    __break(1u);
LABEL_285:
    sub_1001854F8(v593);

    __break(1u);
    goto LABEL_286;
  }

  if (v51 == 4)
  {
    v554 = v49;
    NANBitmap.Channel.operatingClass.getter();
    v111 = *(v110 + 7);
    v112 = *(v110 + 8);
    v113 = v50 + *((swift_isaMask & *v50) + 0xD0);
    v114 = *v113;
    v115 = *(v113 + 1);
    v116 = v113[16];
    if (v116 == 1)
    {
      if (v111 == 4)
      {
        if (*(v110 + 8))
        {
          v178 = v50;
          v179 = Logger.logObject.getter();
          v180 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v179, v180))
          {
            v582 = v114;
            v181 = swift_slowAlloc();
            v182 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            *&v592[0] = v183;
            *v181 = 138412802;
            *(v181 + 4) = v178;
            *v182 = v50;

            *(v181 + 12) = 2080;
            v184 = 0xE700000000000000;
            v185 = 0x646570706F7264;
            if (v112 != 2)
            {
              v185 = 0xD000000000000010;
              v184 = 0x80000001004BA2F0;
            }

            if (v112 == 1)
            {
              v186 = 0x756F2064656D6974;
            }

            else
            {
              v186 = v185;
            }

            if (v112 == 1)
            {
              v187 = 0xE900000000000074;
            }

            else
            {
              v187 = v184;
            }

            v188 = sub_100002320(v186, v187, v592);

            *(v181 + 14) = v188;
            *(v181 + 22) = 2048;
            v189 = v582;
            *(v181 + 24) = v582;
            _os_log_impl(&_mh_execute_header, v179, v180, "%@ failed to send datapath request, with status %s, for retry #%ld", v181, 0x20u);
            sub_100016290(v182, &qword_10058B780, &qword_100480AC0);

            sub_100002A00(v183);
            v114 = v189;
          }

          else
          {
          }

          v49 = v554;
          type metadata accessor for P2PTimer(0);
          v419 = v559;
          v418 = v560;
          *v559 = v114;
          v420 = v561;
          (v418[13])(v419, enum case for DispatchTimeInterval.seconds(_:), v561);
          v421 = *v558;
          v422 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v423 = swift_allocObject();
          v424 = v586;
          v423[2] = v585;
          v423[3] = v424;
          v423[4] = v422;
          v425 = v421;

          static P2PTimer.async(after:on:execute:)(v419, v425, sub_1003338D0, v423);

          (v418[1])(v419, v420);

          goto LABEL_42;
        }

LABEL_121:
        sub_100332618(2, 0, 4);
        v49 = v554;
        goto LABEL_42;
      }
    }

    else if (v116 == 2 && v111 == 6)
    {
      if (*(v110 + 8))
      {
        v117 = v50;
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.error.getter();
        v120 = os_log_type_enabled(v118, v119);
        v49 = v554;
        if (v120)
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          v124 = v50;
          v125 = v123;
          *&v592[0] = v123;
          *v121 = 138412802;
          *(v121 + 4) = v117;
          *v122 = v124;

          *(v121 + 12) = 2080;
          v587 = v115;
          if (v112 == 1)
          {
            v127 = 0x756F2064656D6974;
            v126 = 0xE900000000000074;
          }

          else if (v112 == 2)
          {
            v126 = 0xE700000000000000;
            v127 = 0x646570706F7264;
          }

          else
          {
            v127 = 0xD000000000000010;
            v126 = 0x80000001004BA2F0;
          }

          v545 = sub_100002320(v127, v126, v592);

          *(v121 + 14) = v545;
          *(v121 + 22) = 2048;
          *(v121 + 24) = v587;
          _os_log_impl(&_mh_execute_header, v118, v119, "%@ failed to send datapath confirmation, with status %s, for retry #%ld", v121, 0x20u);
          sub_100016290(v122, &qword_10058B780, &qword_100480AC0);

          sub_100002A00(v125);

          v49 = v554;
        }

        else
        {
        }

        sub_1003244CC();
        goto LABEL_42;
      }

      goto LABEL_121;
    }

    v190 = v50;
    sub_100333808(v114, v115, v116);
    v191 = Logger.logObject.getter();
    if (v112)
    {
      LODWORD(v583) = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v191, v583))
      {
        v587 = v115;
        v582 = v114;
        v192 = v190;
        v193 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        v581 = swift_slowAlloc();
        *&v592[0] = v581;
        *v193 = 138413058;
        ObjectType = v192;
        *(v193 + 4) = v192;
        *(&v580 + 1) = v194;
        *v194 = v50;
        *(v193 + 12) = 2080;
        v195 = NANManagementFrameType.description.getter(v111);
        v197 = sub_100002320(v195, v196, v592);

        *(v193 + 14) = v197;
        *(v193 + 22) = 2080;
        if (v112 == 1)
        {
          v199 = 0x756F2064656D6974;
          v198 = 0xE900000000000074;
        }

        else if (v112 == 2)
        {
          v198 = 0xE700000000000000;
          v199 = 0x646570706F7264;
        }

        else
        {
          v199 = 0xD000000000000010;
          v198 = 0x80000001004BA2F0;
        }

        v397 = sub_100002320(v199, v198, v592);

        *(v193 + 24) = v397;
        *(v193 + 32) = 2080;
        v398 = *v113;
        v399 = *(v113 + 1);
        v400 = v113[16];
        sub_100333808(*v113, v399, v400);
        v401 = ObjectType;

        v402 = sub_10031DDC8(v398, v399, v400);
        v404 = v403;
        sub_100333850(v398, v399, v400);
        v405 = sub_100002320(v402, v404, v592);

        *(v193 + 34) = v405;
        sub_100333850(v582, v587, v116);

        _os_log_impl(&_mh_execute_header, v191, v583, "%@ failed to transmit frame %s with status %s in %s", v193, 0x2Au);
        sub_100016290(*(&v580 + 1), &qword_10058B780, &qword_100480AC0);

        goto LABEL_193;
      }
    }

    else
    {
      v202 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v191, v202))
      {
        v203 = swift_slowAlloc();
        ObjectType = v190;
        *(&v580 + 1) = v203;
        v581 = swift_slowAlloc();
        v582 = v191;
        v204 = v581;
        v583 = swift_slowAlloc();
        *&v592[0] = v583;
        v205 = *(&v580 + 1);
        **(&v580 + 1) = 138412802;
        *(v205 + 4) = v190;
        *v204 = v50;
        *(v205 + 12) = 2080;
        v206 = v205;
        v207 = NANManagementFrameType.description.getter(v111);
        v209 = sub_100002320(v207, v208, v592);
        v587 = v115;
        v210 = v209;

        *(v206 + 14) = v210;
        *(v206 + 22) = 2080;
        v211 = *v113;
        v212 = *(v113 + 1);
        LODWORD(v588) = v202;
        v213 = v113[16];
        sub_100333808(v211, v212, v213);
        v214 = ObjectType;

        v215 = sub_10031DDC8(v211, v212, v213);
        v216 = v114;
        v218 = v217;
        sub_100333850(v211, v212, v213);
        v219 = sub_100002320(v215, v218, v592);

        *(v206 + 24) = v219;
        sub_100333850(v216, v587, v116);

        v191 = v582;
        _os_log_impl(&_mh_execute_header, v582, v588, "%@ successfully transmitted frame %s in %s", v206, 0x20u);
        sub_100016290(v581, &qword_10058B780, &qword_100480AC0);

LABEL_193:
        swift_arrayDestroy();

LABEL_255:

        v49 = v554;
        goto LABEL_42;
      }
    }

    sub_100333850(v114, v115, v116);
    v49 = v554;
    goto LABEL_42;
  }

  if (v51 != 6)
  {
LABEL_38:
    sub_1001854F8(v593);
LABEL_39:
    sub_1000133C4(v47, v32);
    v128 = v50;
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v134 = v50;
      v135 = v133;
      v594[0] = v133;
      *v131 = 138412546;
      *(v131 + 4) = v128;
      *v132 = v134;

      *(v131 + 12) = 2080;
      v136 = DriverEvent.description.getter();
      v138 = sub_100002320(v136, v137, v594);

      *(v131 + 14) = v138;
      sub_100023958(v32, type metadata accessor for DriverEvent);
      _os_log_impl(&_mh_execute_header, v129, v130, "%@ received an unexpected %s", v131, 0x16u);
      sub_100016290(v132, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v135);
    }

    else
    {

      sub_100023958(v32, type metadata accessor for DriverEvent);
    }

    goto LABEL_42;
  }

  NANBitmap.Channel.operatingClass.getter();
  v68 = v67;
  v69 = *(v67 + 24);
  memcpy(v592, v593, 0x16AuLL);
  NANBitmap.Channel.operatingClass.getter();
  sub_1001851A0(v70, v591);
  v71 = v576;
  Array<A>.retrieve(attribute:)(41, v69, v576);
  sub_1001854F8(v593);
  v72 = type metadata accessor for NANAttribute(0);
  v73 = *(v72 - 8);
  v74 = *(v73 + 48);
  v75 = v73 + 48;
  v76 = v74(v71, 1, v72);
  v578 = v72;
  v579 = v69;
  v585 = v75;
  v586 = v74;
  if (v76 == 1)
  {
    sub_100016290(v71, &unk_100595C00, &qword_10048F790);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      v175 = v71[1];
      *v595 = *v71;
      *&v595[16] = v175;
      v176 = v71[3];
      *&v595[32] = v71[2];
      *&v595[48] = v176;
      v177 = NANAttribute.Datapath.status.getter();
      if (v177 == 3)
      {
        v580 = 0uLL;
      }

      else
      {
        *&v591[0] = 0;
        *(&v591[0] + 1) = 0xE000000000000000;
        if (v177)
        {
          v353 = 0xE800000000000000;
          if (v177 == 1)
          {
            v354 = 0x747065636361;
          }

          else
          {
            v354 = 0x7463656A6572;
          }

          v426 = v354 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
        }

        else
        {
          v353 = 0xE900000000000064;
          v426 = 0x65756E69746E6F63;
        }

        v427 = v353;
        String.append(_:)(*&v426);

        v580 = v591[0];
      }

      v428 = *&v595[40];
      v589 = *&v595[40];
      v590 = *&v595[56];
      v429 = (v50 + *((swift_isaMask & *v50) + 0xB0));
      v430 = *v429;
      v431 = v429[1];
      v432 = v429[2];
      v429[2] = *&v595[56];
      *v429 = v428;
      sub_100012400(&v589, v591, &qword_10058F2E0, qword_100491AC0);
      sub_1001842D0(v430, v431, v432);
      v433 = (v50 + *((swift_isaMask & *v50) + 0xA0));
      *v433 = *&v595[13];
      *(v433 + 3) = *&v595[16];
      v596 = *&v595[24];
      v434 = (v50 + *((swift_isaMask & *v50) + 0xB8));
      v435 = *v434;
      v436 = v434[1];
      *v434 = *&v595[24];
      sub_100012400(&v596, v591, &unk_100596890, &qword_10049F8A0);
      sub_100017554(v435, v436);
      sub_10027A06C(v595);
      v227 = *(&v580 + 1);
      goto LABEL_223;
    }

    sub_100023958(v71, type metadata accessor for NANAttribute);
  }

  memcpy(v591, v593, 0x16AuLL);
  NANBitmap.Channel.operatingClass.getter();
  sub_1001851A0(v220, v595);
  v221 = v566;
  Array<A>.retrieve(attribute:)(16, v69, v566);
  sub_1001854F8(v593);
  if (v74(v221, 1, v72) == 1)
  {
    sub_100016290(v221, &unk_100595C00, &qword_10048F790);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      v222 = v221[2];
      *&v595[16] = v221[1];
      *&v595[32] = v222;
      *v595 = *v221;
      v223 = (v50 + *((swift_isaMask & *v50) + 0xB0));
      v224 = *v223;
      v225 = v223[1];
      v226 = v223[2];
      *v223 = *&v595[24];
      v223[2] = *(&v222 + 1);
      sub_1002862DC(v595, &v589);
      sub_1001842D0(v224, v225, v226);
      sub_10027A15C(v595);
      *&v580 = 0;
      v227 = 0;
      v228 = *&v595[13];
      v229 = v595[19];
      v230 = v50 + *((swift_isaMask & *v50) + 0xA0);
      *(v230 + 2) = *&v595[17];
      *v230 = v228;
      v230[6] = v229;
      goto LABEL_223;
    }

    sub_100023958(v221, type metadata accessor for NANAttribute);
  }

  *&v580 = 0;
  v227 = 0;
LABEL_223:
  v437 = (v50 + *((swift_isaMask & *v50) + 0xA0));
  if (*(v437 + 6))
  {
    LOBYTE(v438) = v68[8];
    LOBYTE(v439) = v68[9];
    v440 = v68[10];
    v441 = v68[11];
    LOBYTE(v442) = v68[12];
    v443 = v68[13];
  }

  else
  {
    v442 = *(v437 + 2);
    v438 = *v437;
    v444 = v438 & 0xFFFF0000FFFFFFFFLL | (*(v437 + 2) << 32);
    v445 = v444 >> 16;
    v446 = v444 >> 24;
    v439 = v444 >> 8;
    v440 = v445;
    v441 = v446;
    v443 = v442 >> 8;
  }

  v447 = v438 | (v439 << 8) | (v440 << 16) & 0xFFFFFFFF00FFFFFFLL | (v441 << 24);
  v448 = v447 | (v442 << 32) | (v443 << 40);
  *v437 = v447;
  *(v437 + 2) = WORD2(v448);
  *(v437 + 6) = 0;
  v449 = *(v68 + 10);
  v587 = v68;
  ObjectType = *(v68 + 4) | (v449 << 16);
  v450 = static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v448, ObjectType);
  v554 = v49;
  if (v450)
  {
LABEL_232:
    sub_100332618(2, 0, 4);
    v466 = *((swift_isaMask & *v50) + 0x98);
    v467 = v50;
    sub_100185558(v593, v591);
    v266 = v467;
    sub_100185558(v593, v591);

    v468 = Logger.logObject.getter();
    v469 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v468, v469))
    {
      *(&v580 + 1) = v466;
      v470 = swift_slowAlloc();
      v471 = swift_slowAlloc();
      v577 = swift_slowAlloc();
      *&v591[0] = v577;
      *v470 = 138413058;
      *(v470 + 4) = v266;
      *v471 = v50;

      *(v470 + 12) = 2080;
      if (v227)
      {
        v472 = v580;
      }

      else
      {
        v472 = 0x6E776F6E6B6E55;
      }

      if (v227)
      {
        v473 = v227;
      }

      else
      {
        v473 = 0xE700000000000000;
      }

      v474 = sub_100002320(v472, v473, v591);

      *(v470 + 14) = v474;
      swift_bridgeObjectRelease_n();
      *(v470 + 22) = 2080;
      if (*(v437 + 6))
      {
        goto LABEL_285;
      }

      v475 = *v437 | (*(v437 + 2) << 32);

      v476 = WiFiAddress.description.getter(v475);
      v478 = sub_100002320(v476, v477, v591);

      *(v470 + 24) = v478;

      *(v470 + 32) = 2080;
      v479 = v587;
      v480 = WiFiAddress.description.getter(*(v587 + 14) | (*(v587 + 16) << 16));
      v482 = sub_100002320(v480, v481, v591);

      *(v470 + 34) = v482;
      sub_1001854F8(v593);
      sub_1001854F8(v593);
      _os_log_impl(&_mh_execute_header, v468, v469, "%@ received datapath response with status %s from responder data address: %s [NMI: %s]", v470, 0x2Au);
      sub_100016290(v471, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();

      v49 = v554;
      v50 = v588;
    }

    else
    {
      swift_bridgeObjectRelease_n();

      sub_1001854F8(v593);
      sub_1001854F8(v593);
      v479 = v587;
    }

    v483 = (*(v479 + 19) << 40) | (*(v479 + 18) << 32);
    v484 = v266 + *((swift_isaMask & *v266) + 0xA8);
    *v484 = *(v479 + 14);
    *(v484 + 2) = WORD2(v483);
    v484[6] = 0;
    swift_unownedRetainStrong();
    v485 = v581;
    WiFiInterface.preferences.getter();

    v486 = v583;
    v487 = Preferences.enableMulticastKeys.getter(v583);
    (v582[1].isa)(v485, v486);
    v488 = v586;
    if ((v487 & 1) == 0)
    {
      sub_1001854F8(v593);
      goto LABEL_42;
    }

    v489 = v266 + *((swift_isaMask & *v266) + 0x68);
    swift_beginAccess();
    v490 = v489[165];
    sub_1001851A0(v479, v591);
    v491 = v565;
    Array<A>.retrieve(attribute:)(41, v579, v565);
    sub_1001854F8(v593);
    if (v488(v491, 1, v578) == 1)
    {
      sub_100016290(v491, &unk_100595C00, &qword_10048F790);
    }

    else if (swift_getEnumCaseMultiPayload() == 36)
    {
      v492 = v491[1];
      v591[0] = *v491;
      v591[1] = v492;
      v493 = v491[3];
      v591[2] = v491[2];
      v591[3] = v493;
      sub_10027A06C(v591);
      if ((BYTE10(v591[0]) & 0x20) != 0)
      {
        v494 = 1;
        if (v490)
        {
LABEL_253:
          v504 = v266;
          sub_100185558(v593, v591);
          v505 = v504;
          sub_100185558(v593, v591);
          v191 = Logger.logObject.getter();
          v506 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v191, v506))
          {

            sub_1001854F8(v593);
            sub_1001854F8(v593);
            sub_1001854F8(v593);
            v49 = v554;
            goto LABEL_42;
          }

          v507 = swift_slowAlloc();
          v508 = v494;
          v509 = v50;
          v510 = swift_slowAlloc();
          v511 = swift_slowAlloc();
          *&v591[0] = v511;
          *v507 = 138413058;
          *(v507 + 4) = v505;
          *v510 = v509;

          *(v507 + 12) = 2080;
          v512 = WiFiAddress.description.getter(ObjectType);
          v514 = sub_100002320(v512, v513, v591);

          *(v507 + 14) = v514;
          sub_1001854F8(v593);
          sub_1001854F8(v593);
          *(v507 + 22) = 1024;
          *(v507 + 24) = v490 & 1;
          *(v507 + 28) = 1024;
          *(v507 + 30) = v508;
          sub_1001854F8(v593);
          _os_log_impl(&_mh_execute_header, v191, v506, "%@ NAN-DPResp: Peer %s, Self gtk_required: %{BOOL}d, Peer gtk_required: %{BOOL}d", v507, 0x22u);
          sub_100016290(v510, &qword_10058B780, &qword_100480AC0);

          sub_100002A00(v511);

          goto LABEL_255;
        }

LABEL_249:
        v495 = v266;
        sub_100185558(v593, v591);
        v496 = v495;
        sub_100185558(v593, v591);
        v497 = Logger.logObject.getter();
        v498 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v497, v498))
        {
          v499 = swift_slowAlloc();
          v500 = swift_slowAlloc();
          v587 = swift_slowAlloc();
          *&v591[0] = v587;
          *v499 = 138413058;
          *(v499 + 4) = v496;
          *v500 = v50;

          *(v499 + 12) = 2080;
          v501 = WiFiAddress.description.getter(ObjectType);
          v503 = sub_100002320(v501, v502, v591);

          *(v499 + 14) = v503;
          sub_1001854F8(v593);
          sub_1001854F8(v593);
          *(v499 + 22) = 1024;
          *(v499 + 24) = v490 & 1;
          *(v499 + 28) = 1024;
          *(v499 + 30) = v494;
          sub_1001854F8(v593);
          _os_log_impl(&_mh_execute_header, v497, v498, "%@ NAN-DPResp: Peer %s, Self gtk_required: %{BOOL}d, Peer gtk_required: %{BOOL}d mismatch, terminating data path", v499, 0x22u);
          sub_100016290(v500, &qword_10058B780, &qword_100480AC0);

          sub_100002A00(v587);
        }

        else
        {

          sub_1001854F8(v593);
          sub_1001854F8(v593);
          sub_1001854F8(v593);
        }

        v49 = v554;
        sub_100323CDC();
        goto LABEL_42;
      }
    }

    else
    {
      sub_100023958(v491, type metadata accessor for NANAttribute);
    }

    v494 = 0;
    if ((v490 & 1) == 0)
    {
      goto LABEL_253;
    }

    goto LABEL_249;
  }

  *(&v580 + 1) = v227;
  v451 = v50;
  sub_100185558(v593, v591);
  v452 = v451;
  sub_100185558(v593, v591);
  v453 = Logger.logObject.getter();
  v454 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v453, v454))
  {

    sub_1001854F8(v593);
    sub_1001854F8(v593);

    goto LABEL_231;
  }

  v455 = swift_slowAlloc();
  v456 = swift_slowAlloc();
  v577 = swift_slowAlloc();
  *&v591[0] = v577;
  *v455 = 138412802;
  *(v455 + 4) = v452;
  *v456 = v50;
  *(v455 + 12) = 2080;
  v457 = WiFiAddress.description.getter(ObjectType);
  v459 = sub_100002320(v457, v458, v591);

  *(v455 + 14) = v459;
  sub_1001854F8(v593);
  sub_1001854F8(v593);
  *(v455 + 22) = 2080;
  v460 = *(v437 + 2);
  v461 = *v437;
  v462 = *(v437 + 6);

  if ((v462 & 1) == 0)
  {
    v463 = WiFiAddress.description.getter((v461 | (v460 << 32)) & 0xFFFFFFFFFFFFLL);
    v465 = sub_100002320(v463, v464, v591);

    *(v455 + 24) = v465;

    _os_log_impl(&_mh_execute_header, v453, v454, "%@: bad responder data address in the event %s compared to attributes %s", v455, 0x20u);
    sub_100016290(v456, &qword_10058B780, &qword_100480AC0);

    swift_arrayDestroy();

    v49 = v554;
    v50 = v588;
LABEL_231:
    v227 = *(&v580 + 1);
    goto LABEL_232;
  }

LABEL_288:
  __break(1u);
}

uint64_t sub_1003291E8()
{
  v1 = swift_isaMask & *v0;
  v71 = *(v1 + 0x58);
  v2 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  v66 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for Preferences(0, AssociatedTypeWitness, v4, v5);
  v7 = *(v6 - 8);
  v74 = v6;
  v75 = v7;
  __chkstk_darwin();
  v62 = &v60 - v8;
  v60 = swift_checkMetadataState();
  v9 = *(v60 - 8);
  __chkstk_darwin();
  v11 = &v60 - v10;
  v12 = type metadata accessor for DispatchTimeInterval();
  v78 = *(v12 - 8);
  v79 = v12;
  __chkstk_darwin();
  v76 = (&v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_getAssociatedTypeWitness();
  v77 = v14;
  v68 = *(v14 - 8);
  v15 = v68;
  __chkstk_darwin();
  v72 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v60 - v17;
  v67 = &v60 - v17;
  v19 = type metadata accessor for DispatchTime();
  v80 = *(v19 - 8);
  v81 = v19;
  v65 = *(v80 + 64);
  __chkstk_darwin();
  v61 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v60 - v21;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v23 = *(v0 + *((swift_isaMask & *v0) + 0x60));
  swift_unownedRetainStrong();
  v24 = *(*v23 + 96);
  swift_beginAccess();
  v25 = *(v15 + 16);
  v69 = v15 + 16;
  v70 = v25;
  v25(v18, v23 + v24, v14);

  v26 = sub_1003236D8();
  v27 = (v26 + *(*v26 + 104));
  v28 = v27[1];
  v64 = *v27;
  v63 = v28;

  swift_unownedRetainStrong();
  v29 = v60;
  (*(v9 + 16))(v11, v23 + *(*v23 + 112), v60);

  v30 = v62;
  (*(AssociatedConformanceWitness + 120))(v29);
  (*(v9 + 8))(v11, v29);
  v31 = v74;
  LODWORD(v24) = Preferences.linkTestIntervalMinutes.getter(v74);
  (*(v75 + 8))(v30, v31);
  *v76 = 60 * v24;
  (*(v78 + 104))();
  v32 = swift_allocObject();
  v75 = v32;
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  v62 = v33;
  v34 = v66;
  v35 = v71;
  *(v33 + 2) = v66;
  *(v33 + 3) = v35;
  *(v33 + 4) = v32;
  v36 = swift_allocObject();
  v74 = v36;
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  v37[2] = v34;
  v37[3] = v35;
  v37[4] = v36;
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = v80;
  v40 = v81;
  v41 = *(v80 + 16);
  v42 = v61;
  AssociatedConformanceWitness = v22;
  v41(v61, v22, v81);
  v43 = v39;
  v44 = (*(v39 + 80) + 40) & ~*(v39 + 80);
  v45 = swift_allocObject();
  *(v45 + 2) = v34;
  *(v45 + 3) = v35;
  *(v45 + 4) = v38;
  v60 = v38;
  (*(v43 + 32))(&v45[v44], v42, v40);
  v46 = v77;
  v47 = swift_getAssociatedConformanceWitness();
  v48 = *(v47 + 8);
  v49 = *(v48 + 32);

  v58 = v46;
  v59 = v48;
  v50 = v76;
  v51 = v67;
  v49(v64, v63, v76, sub_100333904, v62, sub_100333910, v37, sub_10033391C, v45, v58, v59);

  v52 = v68;

  (*(v78 + 8))(v50, v79);
  v53 = *(v52 + 8);
  v54 = v77;
  v53(v51, v77);

  v55 = v72;

  swift_unownedRetainStrong();
  v56 = *(*v23 + 96);
  swift_beginAccess();
  v70(v55, v23 + v56, v54);

  (*(v47 + 408))(1, v54, v47);
  v53(v55, v54);
  return (*(v80 + 8))(AssociatedConformanceWitness, v81);
}

void sub_100329B08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a4();
  }
}

double sub_100329B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = swift_isaMask & *v4;
  v9 = *((swift_isaMask & v7) + 0x50);
  v178 = *((swift_isaMask & v7) + 0x58);
  v179 = v9;
  v173 = _s17InitiatorInstanceC12PeerIdentityVMa(255, v9, v178, a4);
  v10 = type metadata accessor for Optional();
  v174 = *(v10 - 8);
  v175 = v10;
  __chkstk_darwin();
  v166 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v172 = &v151 - v12;
  v13 = type metadata accessor for DispatchTime();
  v163 = *(v13 - 8);
  v164 = v13;
  __chkstk_darwin();
  v161 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v162 = &v151 - v15;
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v168 = &v151 - v16;
  v180 = type metadata accessor for UUID();
  v17 = *(v180 - 8);
  __chkstk_darwin();
  v158 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v159 = v20;
  v160 = &v151 - v19;
  __chkstk_darwin();
  v22 = &v151 - v21;
  v23 = type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v25 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v171 = &v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v170 = &v151 - v27;
  __chkstk_darwin();
  __chkstk_darwin();
  v29 = &v151 - v28;
  __chkstk_darwin();
  v31 = &v151 - v30;
  v34 = __chkstk_darwin();
  v181 = (&v151 - v35);
  v176 = a1;
  if ((a1 & 0x1000000000000) == 0)
  {
    v169 = v32;
    v165 = v22;
    v36 = (v5 + *(v8 + 168));
    v37 = *(v36 + 6);
    v177 = v17;
    v155 = v33;
    v156 = v36;
    if (v37)
    {
      v38 = *(v17 + 56);
      v39 = v17;
      v40 = v180;
      v38(v31, 1, 1, v180, v34);
    }

    else
    {
      v45 = *v36 | (*(v36 + 2) << 32);
      swift_unownedRetainStrong();
      sub_10040CD68(v45, v25);

      sub_100012400(&v25[*(v23 + 88)], v31, &qword_10058F4D0, &qword_100491AB0);
      sub_100023958(v25, type metadata accessor for NANPeer);
      v46 = *(v17 + 48);
      v39 = v17;
      v40 = v180;
      if (v46(v31, 1, v180) != 1)
      {
        v157 = v46;
        v47 = v181;
        (*(v39 + 32))(v181, v31, v40);
        (*(v39 + 56))(v47, 0, 1, v40);
        goto LABEL_13;
      }
    }

    swift_unownedRetainStrong();
    sub_10040CD68(v176 & 0xFFFFFFFFFFFFLL, v25);

    sub_100012400(&v25[*(v23 + 88)], v181, &qword_10058F4D0, &qword_100491AB0);
    sub_100023958(v25, type metadata accessor for NANPeer);
    v157 = *(v39 + 48);
    if (v157(v31, 1, v40) != 1)
    {
      sub_100016290(v31, &qword_10058F4D0, &qword_100491AB0);
    }

LABEL_13:
    v48 = *((swift_isaMask & *v5) + 0x98);
    sub_100012400(v181, v29, &qword_10058F4D0, &qword_100491AB0);
    v49 = v5;
    v167 = v48;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v50, v51))
    {
      LODWORD(v154) = v51;
      v52 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v185 = v153;
      *v52 = 136315394;
      v53 = v49 + *((swift_isaMask & *v49) + 0x68);
      swift_beginAccess();
      v54 = *(v53 + 168);
      v55 = *(v53 + 200);
      v186[1] = *(v53 + 184);
      v186[2] = v55;
      v186[0] = v54;
      v56 = *(v53 + 216);
      v57 = *(v53 + 232);
      v58 = *(v53 + 248);
      v187 = *(v53 + 33);
      v186[4] = v57;
      v186[5] = v58;
      v186[3] = v56;
      v59 = *(v53 + 168);
      v60 = *(v53 + 184);
      v183[2] = *(v53 + 200);
      v183[0] = v59;
      v183[1] = v60;
      v61 = *(v53 + 216);
      v62 = *(v53 + 232);
      v63 = *(v53 + 248);
      v184 = *(v53 + 33);
      v183[4] = v62;
      v183[5] = v63;
      v183[3] = v61;
      sub_100012400(v186, &v182, &qword_1005968A0, &unk_100499050);
      sub_10005DC58(&qword_1005968A0, &unk_100499050);
      v64 = String.init<A>(describing:)();
      v66 = sub_100002320(v64, v65, &v185);

      *(v52 + 4) = v66;
      *(v52 + 12) = 2080;
      sub_100012400(v29, v155, &qword_10058F4D0, &qword_100491AB0);
      v67 = String.init<A>(describing:)();
      v69 = v68;
      sub_100016290(v29, &qword_10058F4D0, &qword_100491AB0);
      v70 = sub_100002320(v67, v69, &v185);

      *(v52 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v50, v154, "Pairing Metadata: %s, PairingKeystoreUUID: %s", v52, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100016290(v29, &qword_10058F4D0, &qword_100491AB0);
    }

    v71 = v180;
    v72 = v177;
    v73 = v49;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    v169 = v73;

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *&v186[0] = swift_slowAlloc();
      *v76 = 136315394;
      v77 = WiFiAddress.description.getter(v176 & 0xFFFFFFFFFFFFLL);
      v79 = sub_100002320(v77, v78, v186);

      *(v76 + 4) = v79;
      *(v76 + 12) = 2080;
      if (*(v156 + 6))
      {
        v80 = 0xE90000000000003ELL;
        v81 = 0x6E776F6E6B6E553CLL;
      }

      else
      {
        v81 = WiFiAddress.description.getter(*v156 | (*(v156 + 2) << 32));
        v80 = v82;
      }

      v83 = sub_100002320(v81, v80, v186);

      *(v76 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v74, v75, "Peer: %s [NMI: %s]", v76, 0x16u);
      swift_arrayDestroy();

      v72 = v177;
    }

    else
    {
    }

    sub_10005DC58(&unk_10058F4C0, &unk_100492870);
    v176 = swift_allocBox();
    v85 = v84;
    v86 = type metadata accessor for WiFiAwarePairedDevice(0);
    v87 = *(v86 - 8);
    (*(v87 + 56))(v85, 1, 1, v86);
    v88 = v170;
    sub_100012400(v181, v170, &qword_10058F4D0, &qword_100491AB0);
    if (v157(v88, 1, v71) == 1)
    {
      sub_100016290(v88, &qword_10058F4D0, &qword_100491AB0);
      v89 = v171;
LABEL_24:
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();
      v92 = os_log_type_enabled(v90, v91);
      v93 = v169;
      if (v92)
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&_mh_execute_header, v90, v91, "Unable to determine paired device. Missing Bundle ID or PairingKeyStoreUUID", v94, 2u);
      }

      goto LABEL_37;
    }

    v156 = *(v72 + 32);
    v157 = v86;
    (v156)(v165, v88, v71);
    v95 = v169;
    v96 = &v169[*((swift_isaMask & *v169) + 0x68)];
    swift_beginAccess();
    v97 = *(v96 + 22);
    if (v97)
    {
      v153 = v5;
      v154 = v87;
      v155 = v85;
      v98 = (v96 + 168);
    }

    else
    {
      v98 = (v95 + *((swift_isaMask & *v95) + 0x128));
      v97 = v98[1];
      if (!v97)
      {
        (*(v177 + 8))(v165, v71);
        v89 = v171;
        v86 = v157;
        goto LABEL_24;
      }

      v153 = v5;
      v154 = v87;
      v155 = v85;
    }

    v170 = *v98;
    v99 = v97;

    v100 = dispatch_semaphore_create(0);
    v101 = type metadata accessor for TaskPriority();
    (*(*(v101 - 8) + 56))(v168, 1, 1, v101);
    v102 = v177 + 16;
    v103 = v160;
    v152 = *(v177 + 16);
    v152(v160, v165, v71);
    v104 = (*(v102 + 64) + 88) & ~*(v102 + 64);
    v105 = swift_allocObject();
    v105[2] = 0;
    v105[3] = 0;
    v106 = v178;
    v105[4] = v179;
    v105[5] = v106;
    v107 = v176;
    v105[6] = v100;
    v105[7] = v107;
    v109 = v169;
    v108 = v170;
    v105[8] = v169;
    v105[9] = v108;
    v105[10] = v99;
    (v156)(v105 + v104, v103, v180);
    v110 = v109;
    v111 = v100;

    v112 = v99;

    sub_1003ACB3C(0, 0, v168, &unk_1004B0F98, v105);

    v113 = v161;
    static DispatchTime.now()();
    v114 = v162;
    + infix(_:_:)();
    v115 = v164;
    v116 = *(v163 + 8);
    v116(v113, v164);
    OS_dispatch_semaphore.wait(timeout:)();
    v116(v114, v115);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v168 = v111;
      v117 = v158;
      v118 = v165;
      v152(v158, v165, v180);

      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *&v186[0] = v164;
        *v121 = 136315394;
        v122 = sub_100002320(v170, v112, v186);
        LODWORD(v170) = v120;
        v123 = v122;

        *(v121 + 4) = v123;
        *(v121 + 12) = 2080;
        sub_10000BAD0();
        v124 = v180;
        v125 = dispatch thunk of CustomStringConvertible.description.getter();
        v127 = v126;
        v128 = v117;
        v129 = *(v177 + 8);
        v129(v128, v124);
        v130 = sub_100002320(v125, v127, v186);

        *(v121 + 14) = v130;
        _os_log_impl(&_mh_execute_header, v119, v170, "Timed out waiting to get paired device for %s [PairingKeyStoreID: %s]", v121, 0x16u);
        swift_arrayDestroy();

        v129(v118, v124);
      }

      else
      {

        v131 = *(v177 + 8);
        v132 = v117;
        v133 = v180;
        v131(v132, v180);
        v131(v118, v133);
      }

      v89 = v171;
      v93 = v169;
      v87 = v154;
      v85 = v155;
      v86 = v157;
    }

    else
    {
      (*(v177 + 8))(v165, v180);

      v89 = v171;
      v93 = v169;
      v87 = v154;
      v85 = v155;
      v86 = v157;
    }

LABEL_37:
    sub_100012400(v181, v89, &qword_10058F4D0, &qword_100491AB0);
    swift_beginAccess();
    v134 = (*(v87 + 48))(v85, 1, v86);
    v135 = 0;
    v136 = v175;
    if (!v134)
    {
      v135 = *(v85 + *(v86 + 20));
    }

    v137 = v89;
    v138 = v172;
    sub_10001CEA8(v137, v172, &qword_10058F4D0, &qword_100491AB0);
    *(v138 + *(_s17InitiatorInstanceC12PeerIdentityVMa(0, v179, v178, v139) + 36)) = v135;
    (*(*(v173 - 8) + 56))(v138, 0, 1);
    v140 = *((swift_isaMask & *v93) + 0x140);
    swift_beginAccess();
    v141 = v174;
    (*(v174 + 40))(&v93[v140], v138, v136);
    swift_endAccess();
    v142 = v93;
    v143 = Logger.logObject.getter();
    v144 = v136;
    v145 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v143, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *&v183[0] = v147;
      *v146 = 136315138;
      (*(v141 + 16))(v166, &v93[v140], v144);
      v148 = String.init<A>(describing:)();
      v150 = sub_100002320(v148, v149, v183);

      *(v146 + 4) = v150;
      _os_log_impl(&_mh_execute_header, v143, v145, "Resovled Peer Identity: %s", v146, 0xCu);
      sub_100002A00(v147);
    }

    sub_100016290(v181, &qword_10058F4D0, &qword_100491AB0);

    return result;
  }

  v181 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v181, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v181, v41, "Failed to resolve peer identity: responderDataAddress is nil", v42, 2u);
  }

  v43 = v181;

  return result;
}

void sub_10032AEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = swift_isaMask;
  v8 = swift_isaMask & *v4;
  v9 = *((swift_isaMask & v6) + 0x50);
  v10 = *((swift_isaMask & v6) + 0x58);
  v11 = _s17InitiatorInstanceC12PeerIdentityVMa(0, *((v7 & v6) + 0x50), *((v7 & v6) + 0x58), a4);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v118 = &v109 - v13;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v109 - v16;
  v18 = *((v7 & v6) + 0xD8);
  if ((*(v5 + v18) & 1) == 0)
  {
    v19 = (v5 + *(v8 + 208));
    if (*(v19 + 16) == 3)
    {
      v20 = *v19;
      v21 = (v5 + *((swift_isaMask & *v5) + 0xA0));
      if (*(v21 + 6))
      {
      }

      else
      {
        v110 = v12;
        v111 = v11;
        v112 = v15;
        v113 = v17;
        v117 = v20;
        v22 = *v21 | (*(v21 + 2) << 32);
        *(v5 + v18) = 1;
        v23 = sub_1003236D8();
        v24 = (v5 + *((swift_isaMask & *v5) + 0xB8));
        v25 = v24[1];
        v115 = v24;
        if (v25 >> 60 == 15)
        {
          v26 = v22 & 0xFFFFFFFFFFFFLL;
          v114 = WiFiAddress.ipv6LinkLocalAddress.getter(v26);
          v28 = v27;
          v30 = v29;
          v32 = v31;
        }

        else
        {
          v33 = *v24;
          sub_10000AB0C(*v24, v25);
          v114 = InterfaceIdentifier.ipv6Address.getter(v33, v25);
          v28 = v34;
          v30 = v35;
          v32 = v36;
          sub_100017554(v33, v25);
          v26 = v22 & 0xFFFFFFFFFFFFLL;
        }

        v37 = (*(*v23 + 416))(v119);
        v39 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable(0, v9, *(v10 + 8), v38);
        v116 = v26;
        WiFiInterface.NeighborDiscoveryTable.postPeerPresence(macAddress:ipv6Address:)(v26, v114, v28, v30, v32, v39);
        v37(v119, 0);

        v40 = sub_1003236D8();
        v41 = *(v5 + *((swift_isaMask & *v5) + 0x60));
        swift_unownedRetainStrong();
        v42 = *(v41 + *(*v41 + 472));

        if (v42)
        {

          if (v40 == v42)
          {
            swift_unownedRetainStrong();
            v43 = v115[1];
            if (v43 >> 60 == 15)
            {
              v44 = v116;
              v45 = WiFiAddress.ipv6LinkLocalAddress.getter(v116);
              v47 = v46;
              v49 = v48;
              v51 = v50;
            }

            else
            {
              v105 = *v115;
              sub_10000AB0C(*v115, v115[1]);
              v45 = InterfaceIdentifier.ipv6Address.getter(v105, v43);
              v47 = v106;
              v49 = v107;
              v51 = v108;
              sub_100017554(v105, v43);
              v44 = v116;
            }

            swift_beginAccess();
            WiFiInterface.NeighborDiscoveryTable.postPeerPresence(macAddress:ipv6Address:)(v44, v45, v47, v49, v51, v39);
            swift_endAccess();
          }
        }

        else
        {
        }

        v52 = v5 + *((swift_isaMask & *v5) + 0x68);
        swift_beginAccess();
        v53 = *v5;
        v54 = swift_isaMask;
        if (v52[32] == 2)
        {
          v55 = *(v5 + *((swift_isaMask & v53) + 0x78));
          if (v55)
          {
            v56 = v52[25];
            v57 = v52[26];
            v114 = *(v52 + 27) << 16;
            v58 = v115[1];
            if (v58 >> 60 == 15)
            {
              swift_unknownObjectRetain();
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = 1;
            }

            else
            {
              v109 = v56;
              v63 = *v115;
              swift_unknownObjectRetain();
              sub_10005D67C(v63, v58);
              v59 = InterfaceIdentifier.ipv6Address.getter(v63, v58);
              v60 = v64;
              v61 = v65;
              v62 = v66;
              v67 = v63;
              v56 = v109;
              sub_100017554(v67, v58);
            }

            v68 = WiFiAddress.apiAddress(with:)(v59, v60, v61, v62, v56 | (v57 << 8) | v114);
            sub_10011AF40(v59, v60, v61, v62);
            swift_unownedRetainStrong();
            v69 = WiFiInterface.interfaceIndex.getter();

            [v55 datapathReceivedControlDataAddress:v68 serviceSpecificInfo:v117 onInterfaceIndex:v69];

            swift_unknownObjectRelease();
            v53 = *v5;
            v54 = swift_isaMask;
          }
        }

        v70 = *((v54 & v53) + 0x78);
        v71 = *(v5 + v70);
        if (!v71)
        {
          goto LABEL_29;
        }

        v72 = v115[1];
        if (v72 >> 60 == 15)
        {
          swift_unknownObjectRetain();
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v76 = 1;
        }

        else
        {
          v77 = *v115;
          swift_unknownObjectRetain();
          sub_10005D67C(v77, v72);
          v73 = InterfaceIdentifier.ipv6Address.getter(v77, v72);
          v74 = v78;
          v75 = v79;
          v76 = v80;
          sub_100017554(v77, v72);
        }

        v81 = WiFiAddress.apiAddress(with:)(v73, v74, v75, v76, v116);
        sub_10011AF40(v73, v74, v75, v76);
        [v71 datapathConfirmedForPeerDataAddress:v81 serviceSpecificInfo:v117];

        swift_unknownObjectRelease();
        v82 = *(v5 + v70);
        if (v82 && ([v82 respondsToSelector:"datapathConfirmedForPeerDataAddress:serviceSpecificInfo:pairingKeyStoreID:deviceID:"] & 1) != 0)
        {
          v83 = v115[1];
          if (v83 >> 60 == 15)
          {
            swift_unknownObjectRetain();
            v84 = 0;
            v85 = 0;
            v86 = 0;
            v87 = 1;
          }

          else
          {
            v88 = *v115;
            swift_unknownObjectRetain();
            sub_10005D67C(v88, v83);
            v84 = InterfaceIdentifier.ipv6Address.getter(v88, v83);
            v85 = v89;
            v86 = v90;
            v87 = v91;
            sub_100017554(v88, v83);
          }

          v92 = WiFiAddress.apiAddress(with:)(v84, v85, v86, v87, v116);
          sub_10011AF40(v84, v85, v86, v87);
          v93 = v5 + *((swift_isaMask & *v5) + 0x140);
          swift_beginAccess();
          v95 = v110;
          v94 = v111;
          v96 = *(v110 + 48);
          if (v96(v93, 1, v111))
          {
            v97 = type metadata accessor for UUID();
            v98 = v113;
            (*(*(v97 - 8) + 56))(v113, 1, 1, v97);
          }

          else
          {
            v99 = v118;
            (*(v95 + 16))(v118, v93, v94);
            v98 = v113;
            sub_10001CEA8(v99, v113, &qword_10058F4D0, &qword_100491AB0);
          }

          v100 = v112;
          if (v96(v93, 1, v94))
          {
            v101 = 0;
          }

          else
          {
            v101 = *&v93[*(v94 + 36)];
          }

          sub_100012400(v98, v100, &qword_10058F4D0, &qword_100491AB0);
          v102 = type metadata accessor for UUID();
          v103 = *(v102 - 8);
          isa = 0;
          if ((*(v103 + 48))(v100, 1, v102) != 1)
          {
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v103 + 8))(v100, v102);
          }

          [v82 datapathConfirmedForPeerDataAddress:v92 serviceSpecificInfo:v117 pairingKeyStoreID:isa deviceID:v101];

          swift_unknownObjectRelease();
          sub_100016290(v98, &qword_10058F4D0, &qword_100491AB0);
        }

        else
        {
LABEL_29:
        }
      }
    }
  }
}

double sub_10032BAA8()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v25 - v7;
  __chkstk_darwin();
  v10 = &v25 - v9;
  v11 = *(v0 + *((v3 & v2) + 0x60));
  swift_unownedRetainStrong();
  v12 = *(*v11 + 96);
  swift_beginAccess();
  v13 = *(v5 + 16);
  v25 = v5 + 16;
  v28 = v13;
  v13(v10, v11 + v12, AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 40))(AssociatedTypeWitness);
  v27 = *(v5 + 8);
  v27(v10, AssociatedTypeWitness);
  v15 = *((swift_isaMask & *v0) + 0x100);
  if (*(v0 + v15) == 1)
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Restarting infrastructure WiFi connectivity", v18, 2u);
    }

    swift_unownedRetainStrong();
    swift_unownedRetainStrong();

    sub_1003EFBF8();

    *(v1 + v15) = 0;
  }

  swift_unownedRetainStrong();
  v19 = *(*v11 + 96);
  swift_beginAccess();
  v28(v8, v11 + v19, AssociatedTypeWitness);

  (*(AssociatedConformanceWitness + 408))(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  v20 = v26;
  v27(v8, AssociatedTypeWitness);
  swift_unownedRetainStrong();
  v21 = v11 + *(*v11 + 760);
  swift_beginAccess();
  *(v21 + 16) = 0;
  *v21 = 0;
  *(v21 + 8) = 0;

  swift_unownedRetainStrong();
  v22 = *(*v11 + 96);
  swift_beginAccess();
  v28(v20, v11 + v22, AssociatedTypeWitness);

  (*(AssociatedConformanceWitness + 416))(256, AssociatedTypeWitness, AssociatedConformanceWitness);
  v27(v20, AssociatedTypeWitness);
  v23 = sub_1003236D8();
  (*(*v23 + 216))(0);

  return result;
}

uint64_t sub_10032BFB0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v8 = *v7;
  *v6 = *v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v8)
  {
    v11 = *((swift_isaMask & *v1) + 0x68);
    swift_beginAccess();
    sub_100333AD0(a1, v1 + v11);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10032C110(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = v3;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 138412802;
    *(v11 + 4) = v8;
    *v12 = v4;
    *(v11 + 12) = 2080;
    v14 = v8;
    *(v11 + 14) = sub_100002320(a1, a2, &v18);
    *(v11 + 22) = 1024;
    *(v11 + 24) = a3;
    _os_log_impl(&_mh_execute_header, v9, v10, "%@ updated bundleID to: %s and pid to %d", v11, 0x1Cu);
    sub_100016290(v12, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v13);
  }

  v15 = (v8 + *((swift_isaMask & *v8) + 0x128));
  *v15 = a1;
  v15[1] = a2;

  v16 = v8 + *((swift_isaMask & *v8) + 0x130);
  *v16 = a3;
  v16[4] = 0;

  result = static LaunchServiceRecord.isExternalApi(for:)(a1, a2);
  *(v8 + *((swift_isaMask & *v8) + 0x138)) = result & 1;
  return result;
}

void sub_10032C348(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_unownedRetainStrong();
  v6 = sub_10040E40C();

  if (v6)
  {
    v7 = v2 + *((swift_isaMask & *v2) + 0x68);
    swift_beginAccess();
    sub_100012400((v7 + 104), &v52, &qword_1005914A8, &qword_100499048);
    if (v53)
    {
      if (v53 == 1)
      {
        sub_100016290(&v52, &qword_1005914A8, &qword_100499048);
      }

      else
      {
        sub_100179C1C(&v52, v54);
        v8 = *((swift_isaMask & *v2) + 0xE0);
        if (*(v2 + v8) == 1)
        {
          v9 = v55;
          v10 = v56;
          sub_100029B34(v54, v55);
          (*(v10 + 16))(*(v7 + 25) | (*(v7 + 27) << 16), v9, v10);
          *(v2 + v8) = 0;
          sub_100002A00(v54);
          return;
        }

        sub_100002A00(v54);
      }
    }

    else
    {
      sub_10020C6CC(&v52);
    }
  }

  v11 = v2;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v54[0] = v16;
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v3;
    *(v14 + 12) = 2080;
    v17 = v11;
    *(v14 + 14) = sub_100002320(a1, a2, v54);
    _os_log_impl(&_mh_execute_header, v12, v13, "%@ is unsatisfiable, will terminate because %s", v14, 0x16u);
    sub_100016290(v15, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v16);
  }

  if (*(v11 + *((swift_isaMask & *v11) + 0xD0) + 16) == 3)
  {
    v18 = v11 + *((swift_isaMask & *v11) + 0x68);
    swift_beginAccess();
    sub_100012400((v18 + 104), &v52, &qword_1005914A8, &qword_100499048);
    if (!v53)
    {
      sub_10020C6CC(&v52);
      goto LABEL_61;
    }

    if (v53 == 1)
    {
      sub_100016290(&v52, &qword_1005914A8, &qword_100499048);
      goto LABEL_61;
    }

    sub_100179C1C(&v52, v54);
    v19 = v55;
    v20 = v56;
    sub_100029B34(v54, v55);
    v21 = (*(v20 + 32))(*(v18 + 25) | (*(v18 + 27) << 16), v19, v20);
    if (!v21)
    {
LABEL_60:
      sub_100002A00(v54);
      goto LABEL_61;
    }

    v22 = v21;
    v23 = v11;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    v48 = v23;
    if (!os_log_type_enabled(v24, v25))
    {

      goto LABEL_31;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v52 = v28;
    *v26 = 138412546;
    *(v26 + 4) = v23;
    *v27 = v3;
    *(v26 + 12) = 2080;
    v50 = v28;
    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v31 = 0x80000001004BA690;
        v29 = 0xD00000000000001BLL;
        goto LABEL_30;
      }

      if (v22 == 4)
      {
        v31 = 0xEE006F7475412079;
        v29 = 0x63696C6F50205249;
LABEL_30:
        v32 = v48;
        v33 = sub_100002320(v29, v31, &v52);
        v23 = v48;

        *(v26 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v24, v25, "%@ terminating because of unsatisfiable internet sharing policy %s", v26, 0x16u);
        sub_100016290(v27, &qword_10058B780, &qword_100480AC0);

        sub_100002A00(v50);

LABEL_31:
        v34 = swift_isaMask & *v23;
        v51 = *(v34 + 0x78);
        v35 = *(v23 + v51);
        v36 = &unk_100588000;
        if (v35)
        {
          [v35 datapathUpdatedInternetSharingPolicy:v22];
          v34 = swift_isaMask & *v23;
        }

        v37 = *(v34 + 128);
        swift_beginAccess();
        v49 = v37;
        v38 = *(v23 + v37);
        if (v38 >> 62)
        {
          goto LABEL_65;
        }

        v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_35:

        if (v39)
        {
          v40 = 0;
          do
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v42 = v40 + 1;
              if (__OFADD__(v40, 1))
              {
LABEL_44:
                __break(1u);
                break;
              }
            }

            else
            {
              if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                v39 = _CocoaArrayWrapper.endIndex.getter();
                goto LABEL_35;
              }

              v41 = *(v38 + 8 * v40 + 32);
              swift_unknownObjectRetain();
              v42 = v40 + 1;
              if (__OFADD__(v40, 1))
              {
                goto LABEL_44;
              }
            }

            [v41 v36[398]];
            swift_unknownObjectRelease();
            ++v40;
          }

          while (v42 != v39);
        }

        v43 = v48;
        v44 = *&v48[v51];
        if (v44)
        {
          [v44 datapathTerminatedWithReason:4];
        }

        v38 = *&v48[v49];
        if (v38 >> 62)
        {
          v45 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v45 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v45)
        {
          v22 = 0;
          v36 = (v38 & 0xC000000000000001);
          do
          {
            if (v36)
            {
              v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v47 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
                goto LABEL_58;
              }
            }

            else
            {
              if (v22 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_64;
              }

              v46 = *(v38 + 8 * v22 + 32);
              swift_unknownObjectRetain();
              v47 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
LABEL_58:
                __break(1u);
                break;
              }
            }

            [v46 datapathTerminatedWithReason:{4, v48}];
            swift_unknownObjectRelease();
            ++v22;
          }

          while (v47 != v45);
        }

        *&v43[v51] = 0;
        swift_unknownObjectRelease();
        *&v43[v49] = _swiftEmptyArrayStorage;

        goto LABEL_60;
      }
    }

    else
    {
      if (v22 == 1)
      {
        v31 = 0x80000001004BA6D0;
        v29 = 0xD000000000000014;
        goto LABEL_30;
      }

      if (v22 == 2)
      {
        v29 = 0xD000000000000011;
        v30 = "IR Policy for DFS";
LABEL_27:
        v31 = (v30 - 32) | 0x8000000000000000;
        goto LABEL_30;
      }
    }

    v29 = 0xD000000000000011;
    v30 = "Unknown IR Policy";
    goto LABEL_27;
  }

LABEL_61:
  sub_100323CDC();
}

uint64_t sub_10032CB88(uint64_t a1)
{
  sub_10005DC58(&unk_100596870, &unk_1004B0F60);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = *((swift_isaMask & *v1) + 0x118);
  swift_beginAccess();
  v6 = a1 + *(type metadata accessor for NANAttribute.CustomDeviceInformation(0) + 28);
  v7 = *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 48);
  sub_100016290(v6 + v7, &unk_100596870, &unk_1004B0F60);
  sub_100012400(v1 + v5, v6 + v7, &unk_100596870, &unk_1004B0F60);
  swift_endAccess();
  v8 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  swift_beginAccess();
  sub_1000B1B78(v4, v1 + v5, &unk_100596870, &unk_1004B0F60);
  return swift_endAccess();
}

void sub_10032CD0C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[*((swift_isaMask & *v0) + 0xD0) + 16] == 3)
  {
    type metadata accessor for P2PTimer(0);
    variable initialization expression of AWDLPeer.lastUpdated();
    v6 = *((swift_isaMask & *v0) + 0xC8);
    swift_beginAccess();
    (*(v3 + 40))(&v1[v6], v5, v2);
    swift_endAccess();
  }
}

void sub_10032CE58()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v8 = &v19 - v7;
  v9 = v1 + *((v3 & v2) + 0xD0);
  if (v9[16] - 1 < 3)
  {
LABEL_2:
    v10 = *(v1 + *(v4 + 96));
    swift_unownedRetainStrong();
    sub_10040CBA8();

    swift_unownedRetainStrong();
    v11 = *(*v10 + 96);
    swift_beginAccess();
    (*(v6 + 16))(v8, v10 + v11, AssociatedTypeWitness);

    v12 = v1 + *((swift_isaMask & *v1) + 0x68);
    swift_beginAccess();
    v19 = *(v12 + 3);
    v13 = *(v12 + 1);
    v14 = *v12;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 240))(v14, v13 | (v19 << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v6 + 8))(v8, AssociatedTypeWitness);
    sub_100332618(0, 0, 4);
    sub_100012400((v12 + 104), &v20, &qword_1005914A8, &qword_100499048);
    if (v21)
    {
      if (v21 == 1)
      {
        sub_100016290(&v20, &qword_1005914A8, &qword_100499048);
      }

      else
      {
        sub_10020C6CC(&v20);
      }
    }

    else
    {
      sub_10020C6CC(&v20);
      v18 = *((swift_isaMask & *v1) + 0xE0);
      if (*(v1 + v18) == 1)
      {
        sub_10032BAA8();
        *(v1 + v18) = 0;
      }
    }

    return;
  }

  if (!v9[16])
  {
    sub_100321094();
    return;
  }

  v17 = *v9;
  v16 = *(v9 + 1);
  if (v17 > 1)
  {
    if (v17 ^ 2 | v16)
    {
      return;
    }

    goto LABEL_2;
  }

  if (!(v17 | v16))
  {

    sub_100320050(1, 0xD000000000000030, 0x80000001004BE490, 38);
  }
}

uint64_t sub_10032D358(uint64_t a1)
{
  sub_100002B30(a1, v3);
  sub_10005DC58(&qword_1005968A8, &qword_1004B1790);
  result = swift_dynamicCast();
  if (result)
  {
    sub_10032D3D0(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10032D3D0(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v2;
  v7 = *(type metadata accessor for DispatchTimeInterval() - 8);
  __chkstk_darwin();
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *((v5 & v4) + 0x78);
  v12 = *(v2 + v11);
  v13 = *((v5 & v4) + 0x80);
  if (v12)
  {
    v14 = v12 == a1;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = sub_100333298((v2 + v13), a1);
    swift_unknownObjectRelease();
    v16 = *(v2 + v13);
    if (v16 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
      if (v17 >= v15)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17 >= v15)
      {
LABEL_7:
        sub_1003335EC(v15, v17);
        swift_endAccess();
        return;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  v18 = v8;
  swift_beginAccess();
  v19 = *(v2 + v13);
  if (v19 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_10:
      swift_beginAccess();
      v20 = *(v2 + v13);
      if (!(v20 >> 62))
      {
        if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

LABEL_12:
        v21 = sub_1003325B4();
        if (v21)
        {
LABEL_16:
          swift_endAccess();
          *(v2 + v11) = v21;
          swift_unknownObjectRelease();
          return;
        }

        v22 = *(v2 + v13);
        if (!(v22 >> 62))
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v24 = __OFSUB__(v23, 1);
          v25 = v23 - 1;
          if (!v24)
          {
LABEL_15:
            v21 = sub_10044BF80(v25);
            goto LABEL_16;
          }

          goto LABEL_36;
        }

LABEL_34:
        v43 = _CocoaArrayWrapper.endIndex.getter();
        v24 = __OFSUB__(v43, 1);
        v25 = v43 - 1;
        if (!v24)
        {
          goto LABEL_15;
        }

LABEL_36:
        __break(1u);
        swift_endAccess();
        __break(1u);
        return;
      }

LABEL_32:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_33;
      }

      goto LABEL_12;
    }
  }

  else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

  *(v2 + v11) = 0;
  swift_unknownObjectRelease();
  v26 = v2 + *((swift_isaMask & *v2) + 0x68);
  swift_beginAccess();
  sub_100012400((v26 + 104), v44, &qword_1005914A8, &qword_100499048);
  if (v45)
  {
    if (v45 == 1)
    {
      sub_100016290(v44, &qword_1005914A8, &qword_100499048);
    }

    else
    {
      sub_10020C6CC(v44);
    }

LABEL_26:
    v37 = v2;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v37;
      *v41 = v2;
      v42 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "Terminating %@ because it's client was invalidated", v40, 0xCu);
      sub_100016290(v41, &qword_10058B780, &qword_100480AC0);
    }

    sub_100323CDC();
    return;
  }

  sub_10020C6CC(v44);
  if (*(v2 + *((swift_isaMask & *v2) + 0xD0) + 16) != 3)
  {
    goto LABEL_26;
  }

  v27 = v2;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v2;
    v32 = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "Delaying termination of %@ after client invalidation because it is an internet sharing requester", v30, 0xCu);
    sub_100016290(v31, &qword_10058B780, &qword_100480AC0);
  }

  type metadata accessor for P2PTimer(0);
  *v10 = 10;
  (*(v7 + 104))(v10, enum case for DispatchTimeInterval.seconds(_:), v18);
  v33 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  v35[2] = *(v6 + 80);
  v35[3] = *(v6 + 88);
  v35[4] = v34;
  v36 = v33;

  static P2PTimer.async(after:on:execute:)(v10, v36, sub_100333AC4, v35);

  (*(v7 + 8))(v10, v18);
}

BOOL sub_10032DA28(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v9 = v4 + *((swift_isaMask & *v4) + 0x68);
  swift_beginAccess();
  v10 = *(v9 + 1) == a1 && *(v9 + 2) == a2;
  return (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && v9[24] == a3 && static NANClusterChangeEvent.__derived_struct_equals(_:_:)(a4 & 0xFFFFFFFFFFFFLL, *(v9 + 25) | (*(v9 + 27) << 16));
}

void sub_10032DAF8()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v5 = *v4;
  *v3 = *v4;
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v5)
  {
    sub_100323CDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_10032DC08(void *a1)
{
  v1 = a1;
  sub_10032DAF8();
}

void sub_10032DC50(void (*a1)(uint64_t, uint64_t, unint64_t))
{
  v3 = swift_isaMask & *v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v9 = *v8;
  *v7 = *v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v11 = (v1 + *((swift_isaMask & *v1) + 0xA0));
  if ((*(v11 + 6) & 1) == 0)
  {
    v15 = *(v11 + 2);
    v16 = *v11;
    v17 = v16 | (v15 << 32);
    v18 = v15 >> 8;
    v19 = swift_unownedRetainStrong();
    sub_10040CAE8(v19, v20, v21, v22);

    swift_beginAccess();

    v44[2] = v16;
    v23.i64[0] = 0xFFFFFFFFFFFFLL;
    v23.i64[1] = 0xFFFFFFFFFFFFLL;
    v24 = vandq_s8(vdupq_n_s64(v17), v23);
    v25 = vshlq_u64(v24, xmmword_1004817A0);
    *v24.i8 = vmovn_s64(vshlq_u64(v24, xmmword_100481790));
    *v25.i8 = vmovn_s64(v25);
    v25.i16[1] = v25.i16[2];
    v25.i16[2] = v24.i16[0];
    v25.i16[3] = v24.i16[2];
    v45 = vmovn_s16(v25).u32[0];
    v46 = v18;
    v27 = *(v3 + 80);
    v26 = *(v3 + 88);
    v29 = _s17InitiatorInstanceCMa_0(255, v27, v26, v28);
    v31 = _s17ResponderInstanceCMa_0(255, v27, v26, v30);
    type metadata accessor for Either(0, v29, v31, v32);
    sub_1002CAFC4();
    Dictionary.subscript.getter();

    v33 = v48;
    if (v48 != 255)
    {
      v34 = v47;
      v35 = sub_100440B3C(v47);
      v37 = v36;

      a1(0, v35, v37);

      sub_1002CB018(v34, v33);
      return;
    }

    v12 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v38))
    {
      goto LABEL_10;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v47 = v40;
    *v39 = 136315138;
    v41 = WiFiAddress.description.getter(v17 & 0xFFFFFFFFFFFFLL);
    v43 = sub_100002320(v41, v42, &v47);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v12, v38, "Unable to get diversified pin for %s because there is no active pairing session", v39, 0xCu);
    sub_100002A00(v40);

    goto LABEL_9;
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Unable to get a diversified pin because the datapath referenced doesn't exist or isn't established yet", v14, 2u);
LABEL_9:
  }

LABEL_10:

  a1(3, 0x303030303030, 0xE600000000000000);
}

uint64_t sub_10032E120(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = swift_isaMask & *v1;
  v33[2] = *(v5 + 0x58);
  v33[1] = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = v33 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v15 = *v14;
  *v13 = *v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v15)
  {
    v18 = *((swift_isaMask & *v2) + 0x108);
    v19 = *(v2 + v18);
    *(v2 + v18) = a1;
    sub_10031E444(v19);
    v20 = *(v2 + *((swift_isaMask & *v2) + 0x60));
    v21 = swift_unownedRetainStrong();
    sub_10040CAE8(v21, v22, v23, v24);

    sub_100339E28();

    v25 = swift_unownedRetainStrong();
    sub_10040CAE8(v25, v26, v27, v28);

    sub_100339E54();

    swift_unownedRetainStrong();
    v29 = *(*v20 + 96);
    swift_beginAccess();
    (*(v7 + 16))(v9, v20 + v29, AssociatedTypeWitness);

    WitnessTable = swift_getWitnessTable(byte_1004B0F38, ObjectType);
    v33[0] = ObjectType;
    v31 = sub_10036DB68(ObjectType, WitnessTable);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 400))(a1, v31 & 0xFFFFFFFFFFFFFFLL, AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v7 + 8))(v9, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10032E678(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_10032E120(a3);
}

uint64_t sub_10032E6CC(void (*a1)(void, uint64_t), uint64_t a2)
{
  v45 = a2;
  v46 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v38 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v12 = *v11;
  *v10 = *v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v12)
  {
    v15 = v2 + *((swift_isaMask & *v2) + 0x68);
    swift_beginAccess();
    sub_100012400((v15 + 104), v47, &qword_1005914A8, &qword_100499048);
    if (v51)
    {
      if (v51 == 1)
      {
        sub_100016290(v47, &qword_1005914A8, &qword_100499048);
      }

      else
      {
        sub_10020C6CC(v47);
      }

      return (v46)(3, 0);
    }

    sub_10020C6CC(v47);
    v16 = swift_isaMask & *v2;
    v17 = (v2 + *(v16 + 0xA0));
    if (*(v17 + 6))
    {
      return (v46)(3, 0);
    }

    v18 = *(v17 + 2);
    v40 = *v17;
    v41 = v40 & 0xFFFF0000FFFFFFFFLL | (v18 << 32);
    v19 = vdupq_n_s64(v41);
    v20 = vmovn_s32(vuzp1q_s32(vshlq_u64(v19, xmmword_1004817A0), vshlq_u64(v19, xmmword_100481790)));
    v38 = v18 >> 8;
    v21 = *(v15 + 2);
    v39 = *(v15 + 1);
    v22 = *(v2 + *(v16 + 96));
    swift_unownedRetainStrong();
    v23 = *(*v22 + 96);
    swift_beginAccess();
    v24 = v44;
    v25 = *(v44 + 16);
    v25(v6, v22 + v23, AssociatedTypeWitness);
    v42 = v21;

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v27 = v24;
    v28 = (*(AssociatedConformanceWitness + 136))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v29 = *(v27 + 8);
    v29(v6, AssociatedTypeWitness);
    if ((v28 & 0xFF00000000) == 0x300000000)
    {
      swift_unownedRetainStrong();
      v31 = *(*v22 + 96);
      swift_beginAccess();
      v32 = v22 + v31;
      v33 = v43;
      v25(v43, v32, AssociatedTypeWitness);

      v28 = (*(AssociatedConformanceWitness + 120))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v29(v33, AssociatedTypeWitness);
      if ((v28 & 0xFF00000000) == 0x300000000)
      {
        swift_unownedRetainStrong();
        v28 = sub_100019B10();
      }
    }

    v34 = v46;
    v47[0] = v39;
    v47[1] = v42;
    v48 = v40;
    v49 = vuzp1_s8(v20, v30).u32[0];
    v50 = v38;
    LODWORD(v51) = v28;
    BYTE4(v51) = BYTE4(v28);
    BYTE5(v51) = BYTE5(v28);
    v35 = WiFiNetwork.createRecord()(v39, v42, v41, v28 & 0xFFFFFFFFFFFFLL);
    sub_100333B64(v47);
    sub_10031D810(v35);
    v37 = v36;

    v34(0, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10032EC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  isa = v5.super.isa;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_10032ED1C(char a1, uint64_t (*a2)(void))
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v10 = *v9;
  *v8 = *v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v10)
  {
    *(v2 + *((swift_isaMask & *v2) + 0x90)) = a1 & 1;
    return a2(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_10032EE78(void *a1, int a2, char a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;
  v7 = a1;
  sub_10032ED1C(a3, sub_1000104E4);

  return result;
}

void sub_10032EF0C(void (*a1)(uint64_t, id), uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v61 = a1;
  v4 = swift_isaMask & *v2;
  v59 = *(v4 + 0x58);
  v5 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = &v57 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v14 = *v58;
  *v13 = *v58;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v16 = (v3 + *((swift_isaMask & *v3) + 0xA0));
  if ((*(v16 + 6) & 1) == 0)
  {
    v20 = *(v16 + 2);
    v21 = *v16;
    v22 = *v16 | (v20 << 32);
    v23 = *(v3 + *((swift_isaMask & *v3) + 0x60));
    swift_unownedRetainStrong();
    v24 = *(*v23 + 96);
    swift_beginAccess();
    (*(v7 + 16))(v9, v23 + v24, AssociatedTypeWitness);

    v25 = v59;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v57 = (*(AssociatedConformanceWitness + 480))(v22, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v7 + 8))(v9, AssociatedTypeWitness);
    v27 = v3 + *((swift_isaMask & *v3) + 0x68);
    swift_beginAccess();
    sub_100012400((v27 + 104), &v66, &qword_1005914A8, &qword_100499048);
    if (v67)
    {
      if (v67 == 1)
      {
        sub_100016290(&v66, &qword_1005914A8, &qword_100499048);
      }

      else
      {
        sub_100179C1C(&v66, aBlock);
        v28 = v63;
        v29 = v64;
        sub_100029B34(aBlock, v63);
        v30 = (*(v29 + 5))(v28, v29) != 0;
        v31 = v57;
        [v57 setInfraRelayOperationStatus:v30];
        isa = Int._bridgeToObjectiveC()().super.super.isa;
        [v31 setInfraRelayRequestersCount:isa];

        sub_100002A00(aBlock);
      }
    }

    else
    {
      sub_10020C6CC(&v66);
    }

    v33 = *((swift_isaMask & *v3) + 0x88);
    v34 = *(v3 + v33);
    if (v34)
    {
      v35 = v34;
      WiFiAwareDataSessionStatisticsReport.difference(from:)(v35);
    }

    else
    {
      v36 = v57;
      *(v3 + v33) = v57;
      v37 = *((swift_isaMask & *v3) + 0xF8);
      swift_beginAccess();
      v38 = *(v3 + v37);
      v39 = v36;
      if (notify_is_valid_token(v38))
      {
        goto LABEL_18;
      }

      v40 = vdupq_n_s64(v22);
      v41 = vmovn_s32(vuzp1q_s32(vshlq_u64(v40, xmmword_1004817A0), vshlq_u64(v40, xmmword_100481790)));
      v42 = *v58;
      v43 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v5;
      *(v44 + 24) = v25;
      *(v44 + 32) = v43;
      *(v44 + 40) = v21;
      *(v44 + 41) = vuzp1_s8(v41, v45).u32[0];
      *(v44 + 45) = HIBYTE(v20);
      v64 = sub_100333B44;
      v65 = v44;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001C5BEC;
      v63 = &unk_100576858;
      v46 = _Block_copy(aBlock);
      v47 = v42;

      swift_beginAccess();
      v48 = notify_register_dispatch("com.apple.airplay.isPlayingAmbientAudioChanged", (v3 + v37), v47, v46);
      swift_endAccess();
      _Block_release(v46);

      if (!v48)
      {
        goto LABEL_18;
      }

      v35 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        aBlock[0] = v51;
        *v50 = 136315138;
        v52 = static WiFiError.notifyErrorMessage(from:)(v48);
        v54 = sub_100002320(v52, v53, aBlock);

        *(v50 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v35, v49, "Failed to start monitoring statistic reset events with error: %s", v50, 0xCu);
        sub_100002A00(v51);
      }
    }

LABEL_18:
    v55 = v57;
    v56 = v57;
    v61(0, v55);

    return;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Unable to generate a data session statistics because the datapath referenced doesn't exist or isn't established yet", v19, 2u);
  }

  v61(3, 0);
}

void sub_10032F890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = &v18 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + *((swift_isaMask & *Strong) + 0x60));
    swift_unownedRetainStrong();
    v13 = *(*v12 + 96);
    swift_beginAccess();
    (*(v7 + 16))(v9, v12 + v13, AssociatedTypeWitness);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = (*(AssociatedConformanceWitness + 480))(a3 & 0xFFFFFFFFFFFFLL, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v7 + 8))(v9, AssociatedTypeWitness);
    v16 = *((swift_isaMask & *v11) + 0x88);
    v17 = *(v11 + v16);
    *(v11 + v16) = v15;
  }
}

double sub_10032FC3C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);

  return result;
}

uint64_t sub_10032FCD0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v9 = *v8;
  *v7 = *v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v9)
  {
    if (*(v2 + *((swift_isaMask & *v2) + 0xD0) + 16) == 3)
    {
      v12 = v2;
      v13 = a1;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412546;
        *(v16 + 4) = v12;
        *(v16 + 12) = 2112;
        *(v16 + 14) = v13;
        *v17 = v2;
        v17[1] = v13;
        v18 = v12;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "%@ got an issue report: %@", v16, 0x16u);
        sub_10005DC58(&qword_10058B780, &qword_100480AC0);
        swift_arrayDestroy();
      }

      swift_unownedRetainStrong();
      v43 = 0;
      v44 = 0xE000000000000000;
      v20 = v12 + *((swift_isaMask & *v12) + 0x68);
      swift_beginAccess();
      v22 = (v12 + *((swift_isaMask & *v12) + 0xA0));
      if (*(v22 + 6))
      {
        LOBYTE(v23) = v20[25];
        LOBYTE(v24) = v20[26];
        v21.i32[0] = *(v20 + 27);
        v25 = vmovl_u8(v21);
      }

      else
      {
        v26 = *(v22 + 2);
        v23 = *v22;
        v27 = v23 | (v26 << 32);
        v28.i64[0] = 0xFFFFFFFFFFFFLL;
        v28.i64[1] = 0xFFFFFFFFFFFFLL;
        v25 = vandq_s8(vdupq_n_s64(v27), v28);
        *v25.i8 = vmovn_s32(vuzp1q_s32(vshlq_u64(v25, xmmword_1004841E0), vshlq_u64(v25, xmmword_1004841F0)));
        v24 = v27 >> 8;
      }

      v29 = vmovl_u16((v25.i64[0] & 0xFF00FF00FF00FFLL));
      v30.i64[0] = v29.u32[0];
      v30.i64[1] = v29.u32[1];
      v31 = v30;
      v30.i64[0] = v29.u32[2];
      v30.i64[1] = v29.u32[3];
      v32 = vorrq_s8(vshlq_u64(v31, xmmword_1004AD2B0), vshlq_u64(v30, xmmword_1004B0C10));
      v33._countAndFlagsBits = NANPeerServiceIdentifier.description.getter(*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | (v24 << 16) | *v20 | (v23 << 8));
      String.append(_:)(v33);

      v34._countAndFlagsBits = 0x6374696C47202D20;
      v34._object = 0xEA00000000002068;
      String.append(_:)(v34);
      v35 = [v13 rtpSequenceNumber];
      if (v35)
      {
        v36 = v35;
        v37 = [v35 description];

        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
      }

      else
      {
        v38 = 0;
        v40 = 0xE000000000000000;
      }

      v41._countAndFlagsBits = v38;
      v41._object = v40;
      String.append(_:)(v41);

      sub_10040D52C(v43, v44);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100330134(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10032FCD0(v4);
}

uint64_t sub_10033019C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v13;
  v8[9] = a6;
  v8[10] = a7;
  v8[8] = a4;
  v9 = swift_isaMask & *a6;
  v8[13] = *(*(v9 + 0x58) + 8);
  v8[14] = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v8[16] = *(AssociatedTypeWitness - 8);
  v8[17] = swift_task_alloc();
  sub_10005DC58(&unk_10058F4C0, &unk_100492870);
  v8[18] = swift_task_alloc();
  v8[19] = swift_projectBox();

  return _swift_task_switch(sub_100330308, 0, 0);
}

uint64_t sub_100330308()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[9];
  v5 = *(v4 + *((swift_isaMask & *v4) + 0x60));
  swift_unownedRetainStrong();
  (*(v2 + 16))(v1, v5 + *(*v5 + 112), v3);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = (*(AssociatedConformanceWitness + 136))(v3, AssociatedConformanceWitness);
  v0[20] = v7;
  (*(v2 + 8))(v1, v3);
  v8 = v4 + *((swift_isaMask & *v4) + 0x68);
  swift_beginAccess();
  if (*(v8 + 22))
  {
    v9 = *(v8 + 25);
  }

  else
  {
    v9 = 1;
  }

  v0[21] = v9;
  v10 = *v7 + 392;
  v0[22] = *v10;
  v0[23] = v10 & 0xFFFFFFFFFFFFLL | 0xD6F0000000000000;

  return _swift_task_switch(sub_1003304CC, v7, 0);
}

uint64_t sub_1003304CC()
{
  *(v0 + 192) = (*(v0 + 176))(*(v0 + 80), *(v0 + 88), *(v0 + 168), 0);
  *(v0 + 200) = 0;

  return _swift_task_switch(sub_1002C7D78, 0, 0);
}

uint64_t sub_10033056C()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to get paired device from WiFiAwarePairedDevicesStore: %@", v3, 0xCu);
    sub_100016290(v4, &qword_10058B780, &qword_100480AC0);
  }

  else
  {
  }

  OS_dispatch_semaphore.signal()();

  v6 = *(v0 + 8);

  return v6();
}

id sub_100330718(void *a1)
{
  v1 = a1;
  sub_100330780();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

unint64_t sub_100330780()
{
  v1 = v0;
  _StringGuts.grow(_:)(32);

  v2 = v1 + *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x203A6F543C205DLL;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v6 = (v1 + *((swift_isaMask & *v1) + 0xA0));
  if (*(v6 + 6))
  {
    LOBYTE(v7) = v2[25];
    LOBYTE(v8) = v2[26];
    v5.i32[0] = *(v2 + 27);
    v9 = vmovl_u8(v5);
  }

  else
  {
    v10 = *(v6 + 2);
    v7 = *v6;
    v11 = v7 | (v10 << 32);
    v8 = v11 >> 8;
    v12.i64[0] = 0xFFFFFFFFFFFFLL;
    v12.i64[1] = 0xFFFFFFFFFFFFLL;
    v9 = vandq_s8(vdupq_n_s64(v11), v12);
    *v9.i8 = vmovn_s32(vuzp1q_s32(vshlq_u64(v9, xmmword_1004841E0), vshlq_u64(v9, xmmword_1004841F0)));
  }

  v13 = vmovl_u16((v9.i64[0] & 0xFF00FF00FF00FFLL));
  v14.i64[0] = v13.u32[0];
  v14.i64[1] = v13.u32[1];
  v15 = v14;
  v14.i64[0] = v13.u32[2];
  v14.i64[1] = v13.u32[3];
  v16 = vorrq_s8(vshlq_u64(v15, xmmword_1004AD2A0), vshlq_u64(v14, xmmword_1004AD290));
  v17._countAndFlagsBits = WiFiAddress.description.getter(*&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | (v8 << 8) | v7);
  String.append(_:)(v17);

  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 8254;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v22 = *(v2 + 1);
  v21 = *(v2 + 2);

  v23 = NANServiceName.description.getter(v22, v21);
  v25 = v24;

  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  return 0xD000000000000016;
}

uint64_t sub_100330A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100330A98(uint64_t a1)
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

uint64_t sub_100330AB4(uint64_t a1, unsigned int a2)
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

uint64_t sub_100330AFC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100330B40(uint64_t result, unsigned int a2)
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

void sub_100330B70(uint64_t a1)
{
  sub_100330C28(319, &qword_100593008, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100330C28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_100330CA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1002CA2BC;

  return sub_100330D2C();
}

uint64_t sub_100330D4C()
{
  v1 = v0[5];
  if (*(v1 + *((swift_isaMask & *v1) + 0xD0) + 16) == 3)
  {
    v2 = *(v1 + *((swift_isaMask & *v1) + 0x168));
    v0[6] = v2;
    if (v2)
    {

      return _swift_task_switch(sub_1002CA578, v2, 0);
    }
  }

  else
  {
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[5];
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 16777472;
      v9 = *((swift_isaMask & *v7) + 0x68);
      swift_beginAccess();
      v8[4] = *(v7 + v9);

      _os_log_impl(&_mh_execute_header, v4, v5, "Datapath Initiator ID: %hhu is not established yet.", v8, 5u);
    }

    else
    {
    }
  }

  v10 = v0[1];

  return v10(0);
}

void *sub_100330F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v6 = sub_100332FA0(a1, a2, a3, a4, a5 | ((HIDWORD(a5) & 1) << 32), a6);

  return v6;
}

uint64_t sub_100330FE4(uint64_t a1)
{
  result = swift_getWitnessTable(byte_1004B0EF8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100331024()
{
  result = qword_1005967E0;
  if (!qword_1005967E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANDatapath.Configuration, &type metadata for NANDatapath.Configuration, v0, v1);
    atomic_store(result, &qword_1005967E0);
  }

  return result;
}

uint64_t sub_100331078(uint64_t a1)
{
  result = swift_getWitnessTable(byte_1004B0F14);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003310B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v5;
  v9 = swift_isaMask;
  v10 = _s17InitiatorInstanceC12PeerIdentityVMa(0, *((swift_isaMask & *v5) + 0x50), *((swift_isaMask & *v5) + 0x58), a4);
  v46 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v44 - v11;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v44 - v15;
  v17 = (v5 + *((v9 & v8) + 0xD0));
  if (*(v17 + 16) != 3)
  {
    return 0;
  }

  v18 = *v17;
  v19 = swift_isaMask & *v5;
  v20 = (v5 + *(v19 + 0xA0));
  if (*(v20 + 6))
  {

    return 0;
  }

  v22 = *v20 | (*(v20 + 2) << 32);
  v44 = v18;
  v23 = *(v19 + 104);
  v24 = swift_beginAccess();
  v45 = a1;
  v25 = *(v5 + v23);
  v26 = (*(*a2 + 256))(v24);
  v27 = WiFiAddress.apiAddress.getter(v26 & 0xFFFFFFFFFFFFLL);
  v28 = WiFiInterface.interfaceIndex.getter();
  v29 = v25;
  v30 = v45;
  [v45 datapathStartedWithInstanceID:v29 initiatorDataAddress:v27 localInterfaceIndex:v28];

  v31 = v44;
  v32 = WiFiAddress.apiAddress.getter(v22);
  [v30 datapathConfirmedForPeerDataAddress:v32 serviceSpecificInfo:v31];

  if ([v30 respondsToSelector:"datapathConfirmedForPeerDataAddress:serviceSpecificInfo:pairingKeyStoreID:deviceID:"])
  {
    v33 = WiFiAddress.apiAddress.getter(v22);
    v34 = v5 + *((swift_isaMask & *v5) + 0x140);
    swift_beginAccess();
    v35 = v46;
    v36 = *(v46 + 48);
    if (v36(v34, 1, v10))
    {
      v37 = type metadata accessor for UUID();
      (*(*(v37 - 8) + 56))(v16, 1, 1, v37);
    }

    else
    {
      (*(v35 + 16))(v12, v34, v10);
      sub_10001CEA8(v12, v16, &qword_10058F4D0, &qword_100491AB0);
    }

    if (v36(v34, 1, v10))
    {
      v38 = 0;
    }

    else
    {
      v38 = *&v34[*(v10 + 36)];
    }

    v31 = v44;
    v30 = v45;
    sub_100012400(v16, v14, &qword_10058F4D0, &qword_100491AB0);
    v39 = type metadata accessor for UUID();
    v40 = *(v39 - 8);
    isa = 0;
    if ((*(v40 + 48))(v14, 1, v39) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v40 + 8))(v14, v39);
    }

    [v30 datapathConfirmedForPeerDataAddress:v33 serviceSpecificInfo:v31 pairingKeyStoreID:isa deviceID:v38];

    sub_100016290(v16, &qword_10058F4D0, &qword_100491AB0);
  }

  v42 = *((swift_isaMask & *v5) + 0x78);
  if (*(v5 + v42))
  {
    v43 = *((swift_isaMask & *v5) + 0x80);
    swift_beginAccess();
    swift_unknownObjectRetain();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v5 + v43) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + v43) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v31 = v44;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    return 1;
  }

  else
  {

    *(v5 + v42) = v30;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    return 1;
  }
}

void sub_100331680(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (!*(Strong + *((swift_isaMask & *Strong) + 0x78)))
    {
      v3 = Strong;
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        *v6 = 138412290;
        *(v6 + 4) = v3;
        *v7 = v2;
        v8 = v3;
        _os_log_impl(&_mh_execute_header, v4, v5, "Terminating %@ (after delay) because it's client was invalidated", v6, 0xCu);
        sub_100016290(v7, &qword_10058B780, &qword_100480AC0);
      }

      sub_100323CDC();
    }
  }
}

void *sub_100331808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v10 = &v17 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(result + *((swift_isaMask & *result) + 0x60));
    swift_unownedRetainStrong();
    v14 = *(v13 + *(*v13 + 800));
    swift_unownedRetainStrong();

    (*(*v14 + 168))(v15);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 168))(a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);

    return (*(v8 + 8))(v10, AssociatedTypeWitness);
  }

  return result;
}

void sub_100331BE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong;
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v7 = 138412802;
      *(v7 + 4) = v4;
      *v8 = v3;
      *(v7 + 12) = 2080;
      v9 = v4;
      sub_1003236D8();

      v10 = WiFiInterface.description.getter();
      v12 = v11;

      v13 = sub_100002320(v10, v12, &v16);

      *(v7 + 14) = v13;
      *(v7 + 22) = 2112;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 24) = v14;
      v8[1] = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "%@ internet sharing on %s failed because %@", v7, 0x20u);
      sub_10005DC58(&qword_10058B780, &qword_100480AC0);
      swift_arrayDestroy();

      sub_100002A00(v15);
    }

    else
    {
    }

    sub_100323CDC();
  }
}

void sub_100331E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  sub_10005DC58(&unk_100596870, &unk_1004B0F60);
  __chkstk_darwin();
  v5 = &v42 - v4;
  v6 = type metadata accessor for DispatchTime();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin();
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v50 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v42 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v16 = &v42 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v44 = v10;
    v45 = v9;
    v46 = v5;
    v19 = *(Strong + *((swift_isaMask & *Strong) + 0x60));
    swift_unownedRetainStrong();
    v20 = *(*v19 + 96);
    swift_beginAccess();
    (*(v14 + 16))(v16, v19 + v20, AssociatedTypeWitness);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 416))(65792, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v14 + 8))(v16, AssociatedTypeWitness);
    v22 = v18 + *((swift_isaMask & *v18) + 0x120);
    if ((v22[8] & 1) == 0)
    {
      v43 = *v22;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Triggering infrastructure WiFi disconnect", v25, 2u);
      }

      *(v18 + *((swift_isaMask & *v18) + 0x100)) = 1;
      swift_unownedRetainStrong();
      swift_unownedRetainStrong();

      sub_1003EFB38(0);

      type metadata accessor for P2PTimer(0);
      variable initialization expression of AWDLPeer.lastUpdated();
      v26 = v51;
      DispatchTime.distance(to:)();
      (*(v47 + 8))(v8, v48);
      v28 = v44;
      v27 = v45;
      v29 = v50;
      (*(v44 + 16))(v50, v26, v45);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v52[0] = v33;
        *v32 = 136315138;
        v34 = DispatchTimeInterval.description.getter();
        v36 = v35;
        (*(v28 + 8))(v29, v27);
        v37 = sub_100002320(v34, v36, v52);

        *(v32 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v30, v31, "DHCP took %s", v32, 0xCu);
        sub_100002A00(v33);
      }

      else
      {

        (*(v28 + 8))(v29, v27);
      }

      v38 = v46;
      if (v43 >= 5)
      {
        v39 = 0;
      }

      else
      {
        v39 = 0x3040102uLL >> (8 * v43);
      }

      (*(v28 + 32))(v46, v51, v27);
      v40 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
      *(v38 + *(v40 + 20)) = v39;
      (*(*(v40 - 8) + 56))(v38, 0, 1, v40);
      v41 = *((swift_isaMask & *v18) + 0x118);
      swift_beginAccess();
      sub_1000B1B78(v38, v18 + v41, &unk_100596870, &unk_1004B0F60);
      swift_endAccess();
    }
  }
}

uint64_t sub_100332514(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_1003325B4()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1004770C8();
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100332618(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + *((swift_isaMask & *v3) + 0xD0);
  v5 = *v4;
  v6 = *(v4 + 1);
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v4[16];
  v4[16] = a3;
  sub_100333808(a1, a2, a3);
  sub_100333850(v5, v6, v7);

  return sub_10031E144();
}

void *sub_100332698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v55 = a6;
  v54 = a5;
  v51 = a3;
  v52 = a4;
  v59 = a2;
  ObjectType = swift_getObjectType();
  v9 = *v6;
  v10 = swift_isaMask;
  v49 = type metadata accessor for Logger();
  v56 = *(v49 - 8);
  __chkstk_darwin();
  v53 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + *((v10 & v9) + 0x70)) = 0;
  *(v6 + *((swift_isaMask & *v6) + 0x78)) = 0;
  *(v6 + *((swift_isaMask & *v6) + 0x80)) = _swiftEmptyArrayStorage;
  *(v6 + *((swift_isaMask & *v6) + 0x88)) = 0;
  *(v6 + *((swift_isaMask & *v6) + 0x90)) = 0;
  Logger.init(subsystem:category:)();
  v12 = v6 + *((swift_isaMask & *v6) + 0xA0);
  *(v12 + 2) = 0;
  *v12 = 0;
  v12[6] = 1;
  v13 = v6 + *((swift_isaMask & *v6) + 0xA8);
  *(v13 + 2) = 0;
  *v13 = 0;
  v13[6] = 1;
  v14 = (v6 + *((swift_isaMask & *v6) + 0xB0));
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 4;
  *(v6 + *((swift_isaMask & *v6) + 0xB8)) = xmmword_100483C50;
  swift_unknownObjectWeakInit();
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v15 = v7 + *((swift_isaMask & *v7) + 0xD0);
  *v15 = xmmword_10047CE70;
  v15[16] = 0;
  *(v6 + *((swift_isaMask & *v6) + 0xD8)) = 0;
  *(v6 + *((swift_isaMask & *v6) + 0xE0)) = 0;
  *(v6 + *((swift_isaMask & *v6) + 0xF0)) = &_swiftEmptyDictionarySingleton;
  *(v6 + *((swift_isaMask & *v6) + 0xF8)) = -1;
  *(v6 + *((swift_isaMask & *v6) + 0x100)) = 0;
  *(v6 + *((swift_isaMask & *v6) + 0x108)) = 1;
  v16 = *((swift_isaMask & *v6) + 0x110);
  v17 = type metadata accessor for DispatchTime();
  (*(*(v17 - 8) + 56))(v6 + v16, 1, 1, v17);
  v18 = *((swift_isaMask & *v6) + 0x118);
  v19 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  (*(*(v19 - 8) + 56))(v6 + v18, 1, 1, v19);
  v20 = v7 + *((swift_isaMask & *v7) + 0x120);
  *v20 = 0;
  v20[8] = 1;
  v21 = (v7 + *((swift_isaMask & *v7) + 0x128));
  *v21 = 0;
  v21[1] = 0;
  v22 = v7 + *((swift_isaMask & *v7) + 0x130);
  *v22 = 0;
  v22[4] = 1;
  *(v6 + *((swift_isaMask & *v6) + 0x138)) = 0;
  v23 = *((swift_isaMask & *v6) + 0x140);
  v24 = *((v10 & v9) + 0x50);
  v25 = *((v10 & v9) + 0x58);
  v27 = _s17InitiatorInstanceC12PeerIdentityVMa(0, v24, v25, v26);
  v28 = v6 + v23;
  v29 = v49;
  (*(*(v27 - 8) + 56))(v28, 1, 1, v27);
  v30 = *((swift_isaMask & *v6) + 0x148);
  NANWiFiAwareStatistics.init()(&v58);
  memcpy(v6 + v30, &v58, 0x120uLL);
  *(v6 + *((swift_isaMask & *v6) + 0x150)) = 0;
  *(v6 + *((swift_isaMask & *v6) + 0x158)) = 0;
  variable initialization expression of AWDLPeer.lastUpdated();
  *(v6 + *((swift_isaMask & *v6) + 0x168)) = 0;
  *(v6 + *((swift_isaMask & *v6) + 0x60)) = a1;
  sub_1003336F4(v59, v7 + *((swift_isaMask & *v7) + 0x68));
  type metadata accessor for LowLatencyInternetProviderPolicy(0, v24, v25, v31);
  swift_unownedRetain();

  v33 = sub_100408E0C(v32);

  *(v7 + *((swift_isaMask & *v7) + 0xE8)) = v33;
  v57.receiver = v7;
  v57.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v57, "init");
  v35 = (v34 + *((swift_isaMask & *v34) + 0x128));
  v36 = v52;
  *v35 = v51;
  v35[1] = v36;
  v37 = v34;

  v38 = v37 + *((swift_isaMask & *v37) + 0x130);
  v39 = v53;
  v40 = BYTE4(v54);
  *v38 = v54;
  v38[4] = v40 & 1;
  *(v37 + *((swift_isaMask & *v37) + 0x138)) = v55;
  v41 = v29;
  v42 = v39;
  (*(v56 + 16))();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    *(v45 + 4) = v37;
    *v46 = v34;
    v47 = v37;
    _os_log_impl(&_mh_execute_header, v43, v44, "Created %@", v45, 0xCu);
    sub_100016290(v46, &qword_10058B780, &qword_100480AC0);
  }

  sub_100333750(v59);
  (*(v56 + 8))(v42, v41);
  return v37;
}

unint64_t sub_10033302C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  sub_10005DC58(&unk_1005968C0, &qword_1004AF230);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  v14 = 32 * v12;
  v15 = v13 + 32 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1003330FC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 10 * result + 10 * a3;
  v10 = (v6 + 32 + 10 * a2);
  v11 = 10 * v9;
  if (result != v10 || result >= v10 + v11)
  {
    v13 = a3;
    result = memmove(result, v10, v11);
    a3 = v13;
  }

  v14 = *(v6 + 16);
  v8 = __OFADD__(v14, v5);
  v15 = v14 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v15;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1003331B0(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v7 == a2)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_100333298(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_1003331B0(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v13 = *(v7 + 8 * v11 + 32);
    swift_unknownObjectRetain();
LABEL_17:
    swift_unknownObjectRelease();
    if (v13 != a2)
    {
      if (v10 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v15)
          {
            goto LABEL_47;
          }

          if (v11 >= v15)
          {
            goto LABEL_48;
          }

          v3 = *(v7 + 32 + 8 * v10);
          v14 = *(v7 + 32 + 8 * v11);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_1004770C8();
          v16 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;
        swift_unknownObjectRelease();
        if ((v7 & 0x8000000000000000) != 0 || v16)
        {
          v7 = sub_1004770C8();
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;
        swift_unknownObjectRelease();
        *a1 = v7;
      }

      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_44;
      }
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_43;
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
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1003334E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_10005DC58(&qword_1005968A8, &qword_1004B1790);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003335EC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_100332514(result, 1);

  return sub_1003334E0(v5, v3, 0);
}

uint64_t sub_1003337A4(uint64_t a1, uint64_t a2)
{
  BeaconInformation = type metadata accessor for NANPeer.LastBeaconInformation(0);
  (*(*(BeaconInformation - 8) + 32))(a2, a1, BeaconInformation);
  return a2;
}

void *sub_100333808(void *result, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
    v4 = result;
  }

  return result;
}

void sub_100333850(void *a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }
}

void sub_10033391C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(type metadata accessor for DispatchTime() - 8);
  v4 = v0[4];
  v5 = v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_100331E20(v4, v5, v1, v2);
}

uint64_t sub_10033399C(uint64_t a1)
{
  type metadata accessor for UUID();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = v1[10];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1002CB380;

  return sub_10033019C(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_100333BB8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = String._bridgeToObjectiveC()();
  (*(v3 + 16))(v3, a1, v4);
}

uint64_t sub_100333C24()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 51) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer) = 0;

    *(v0 + 50) = 0;
    *(v0 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_heartbeatRequestCounter) = 0;
    type metadata accessor for P2PTimer(0);
    variable initialization expression of AWDLPeer.lastUpdated();
    v6 = OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_lastModified;
    swift_beginAccess();
    (*(v3 + 24))(v1 + v6, v5, v2);
    swift_endAccess();
    sub_1003341C4();
    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v7 = OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_lastModified;
  swift_beginAccess();
  (*(v3 + 24))(v1 + v7, v5, v2);
  swift_endAccess();
  sub_1003341C4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100333DF0(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 56) = a1;
  *(v1 + 50) = 1;
  *(v1 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_heartbeatRequestCounter) = 0;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v8 = OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_lastModified;
  swift_beginAccess();
  (*(v5 + 24))(v2 + v8, v7, v4);
  swift_endAccess();
  sub_1003341C4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100333F3C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 64) = a1;
  *(v2 + 50) = 1;
  *(v2 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_heartbeatRequestCounter) = 0;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v8 = OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_lastModified;
  swift_beginAccess();
  (*(v5 + 24))(v2 + v8, v7, v4);
  swift_endAccess();
  sub_1003341C4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100334080(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 65) = a1;
  *(v2 + 50) = 1;
  *(v2 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_heartbeatRequestCounter) = 0;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v8 = OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_lastModified;
  swift_beginAccess();
  (*(v5 + 24))(v2 + v8, v7, v4);
  swift_endAccess();
  sub_1003341C4();
  return (*(v5 + 8))(v7, v4);
}

void sub_1003341C4()
{
  v1 = *(type metadata accessor for DispatchTimeInterval() - 8);
  __chkstk_darwin();
  v3 = (&v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v5 = &v17 - v4;
  v8 = __chkstk_darwin();
  v9 = (&v17 - v7);
  if (*(v0 + 51) == 1 && *(v0 + 49) == 1)
  {
    v10 = 1000 * *(v0 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatIntervalInSeconds);
    if ((v10 & 0xFFFFFFFF00000000) != 0)
    {
      __break(1u);
    }

    else
    {
      *v9 = v10;
      v11 = enum case for DispatchTimeInterval.milliseconds(_:);
      v12 = *(v1 + 104);
      v13 = v6;
      v12(&v17 - v7, enum case for DispatchTimeInterval.milliseconds(_:), v6, v8);
      v14 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
      v15 = swift_allocObject();
      swift_weakInit();
      (v12)(v5, enum case for DispatchTimeInterval.never(_:), v13);
      *v3 = 100;
      (v12)(v3, v11, v13);
      type metadata accessor for P2PTimer(0);
      swift_allocObject();
      v16 = v14;
      *(v0 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer) = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v9, v16, v5, v3, sub_100336A88, v15);
    }
  }
}

double sub_1003343F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(Strong + 24))();
  }

  return result;
}

void sub_100334458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v14 = __chkstk_darwin();
  v15 = (v25 - v12);
  v16 = *(v4 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_heartbeatRequestCounter);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_heartbeatRequestCounter) = v18;
    *v15 = a1;
    v19 = enum case for DispatchTimeInterval.milliseconds(_:);
    v25[0] = a2;
    v25[1] = a3;
    v20 = *(v9 + 104);
    v26 = v13;
    v20(v25 - v12, enum case for DispatchTimeInterval.milliseconds(_:), v8, v14);
    v27 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    v22[2] = v25[0];
    v22[3] = a3;
    v22[4] = v21;
    v23 = v26;
    (v20)(v26, enum case for DispatchTimeInterval.never(_:), v8);
    *v11 = 100;
    (v20)(v11, v19, v8);
    type metadata accessor for P2PTimer(0);
    swift_allocObject();
    v24 = v27;

    *(v4 + OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer) = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v15, v24, v23, v11, sub_100336A7C, v22);
  }
}

double sub_1003346C0(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  swift_weakLoadStrong();
  a1();

  return result;
}

uint64_t sub_100334728()
{

  v1 = OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_lastModified;
  v2 = type metadata accessor for DispatchTime();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100334804(uint64_t a1)
{
  result = type metadata accessor for DispatchTime();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

Swift::Int sub_100334900()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(v1 + 40));
  NANClusterChangeEvent.hash(into:)(v3, *(v1 + 42) | (*(v1 + 44) << 16));
  return Hasher._finalize()();
}

void sub_10033495C(int a1)
{
  v3 = *v1;
  Hasher._combine(_:)(*(*v1 + 40));
  v4 = *(v3 + 42) | (*(v3 + 44) << 16);

  NANClusterChangeEvent.hash(into:)(a1, v4);
}

Swift::Int sub_1003349B4(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *v1;
  Hasher._combine(_:)(*(*v1 + 40));
  NANClusterChangeEvent.hash(into:)(v4, *(v2 + 42) | (*(v2 + 44) << 16));
  return Hasher._finalize()();
}

void sub_100334A60()
{
  v69 = type metadata accessor for DispatchTimeInterval();
  v70 = *(v69 - 8);
  __chkstk_darwin();
  v68 = (&v63 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v72 = &v63 - v2;
  __chkstk_darwin();
  v71 = (&v63 - v3);
  v78 = type metadata accessor for DispatchTime();
  v73 = *(v78 - 8);
  __chkstk_darwin();
  v77 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v76 = v0;
  v5 = *(v0 + 24);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_10036777C(*(v5 + 16), 0);
    v8 = sub_100315DC8(&v80, (v7 + 32), v6, v5);
    v9 = v80;

    sub_1000E290C(v9);
    if (v8 != v6)
    {
      __break(1u);
      goto LABEL_97;
    }

    v80 = _swiftEmptyArrayStorage;
    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
    v80 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_85;
    }
  }

  if ((v7 & 0x4000000000000000) != 0)
  {
    goto LABEL_85;
  }

  for (i = *(v7 + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    while ((v7 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_15:
      if (v12[50] == 1 && (v12[51] & 1) != 0 && (v12[48] & 1) == 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v11;
      if (v13 == i)
      {
        goto LABEL_22;
      }
    }

    if (v11 < *(v7 + 16))
    {
      v12 = *(v7 + 8 * v11 + 32);

      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    ;
  }

LABEL_22:

  v80 = sub_1003367BC(v14);
  sub_100335D04(&v80);

  v5 = v80;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    v18 = v5 & 0x4000000000000000;
    if (v5 < 0 || v18)
    {
      v62 = v17;
      v19 = _CocoaArrayWrapper.endIndex.getter();
      v17 = v62;
    }

    else
    {
      v19 = *(v5 + 16);
    }

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "Current peers with stats available is %ld", v17, 0xCu);
  }

  else
  {

    v18 = v5 & 0x4000000000000000;
  }

  v20 = v5 >= 0 && v18 == 0;
  LODWORD(v9) = !v20;
  if (v20)
  {
    v21 = *(v5 + 16);
    if (v21)
    {
      if (v21 >= 3)
      {
        v22 = 3;
      }

      else
      {
        v22 = *(v5 + 16);
      }

      goto LABEL_40;
    }

    goto LABEL_94;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 1)
  {
LABEL_94:

    v54 = 1;
    goto LABEL_95;
  }

  v61 = _CocoaArrayWrapper.endIndex.getter();
  if ((v61 & 0x8000000000000000) != 0)
  {
    goto LABEL_106;
  }

  if (v61 >= 3)
  {
    v22 = 3;
  }

  else
  {
    v22 = v61;
  }

  if (!v61)
  {
    v24 = 0.0;
    goto LABEL_93;
  }

LABEL_40:
  if ((v5 & 0xC000000000000001) == 0 && v22 > *(v5 + 16))
  {
    goto LABEL_98;
  }

  v23 = 0;
  v24 = 0.0;
  v25 = 0.0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v26 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 56);

      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v26 = *(*(v5 + 8 * v23 + 32) + 56);
    }

    ++v23;
    v25 = v25 + v26;
    LOBYTE(v26) = *(v27 + 64);

    v24 = v24 + log10(*&v26);
  }

  while (v22 != v23);
  if (v9)
  {
LABEL_93:
    _CocoaArrayWrapper.endIndex.getter();
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = *(v5 + 16);
  }

  v29 = 3;
  if (v28 < 3)
  {
    v29 = v28;
  }

  v30 = __exp10(v24 / v29);
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v30 <= -1.0)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v30 >= 256.0)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v9)
  {
LABEL_101:
    v76 = _CocoaArrayWrapper.endIndex.getter();
    if (!v76)
    {
      goto LABEL_70;
    }

LABEL_56:
    v79 = _swiftEmptyArrayStorage;
    v31 = v76;

    sub_100367968(0, v31 & ~(v31 >> 63), 0);
    if ((v31 & 0x8000000000000000) == 0)
    {
      v63 = v9;
      v7 = v79;
      type metadata accessor for P2PTimer(0);
      v32 = 0;
      v74 = (v73 + 3);
      v75 = v5 & 0xC000000000000001;
      ++v73;
      v66 = enum case for DispatchTimeInterval.milliseconds(_:);
      v65 = v70 + 13;
      v64 = enum case for DispatchTimeInterval.never(_:);
      v33 = &unk_10059B000;
      p_prots = &OBJC_PROTOCOL___WiFiAwarePairedDevicesXPC.prots;
      v67 = v5;
      do
      {
        if (v75)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v35 = *(v5 + 8 * v32 + 32);
        }

        v35[50] = 0;
        *&v35[v33[311]] = 0;
        v36 = v77;
        variable initialization expression of AWDLPeer.lastUpdated();
        v37 = p_prots[282];
        swift_beginAccess();
        (*v74)(v37 + v35, v36, v78);
        swift_endAccess();
        if (v35[51] == 1 && (v35[49] & 1) != 0)
        {
          v38 = 1000 * *&v35[OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatIntervalInSeconds];
          if ((v38 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_84;
          }

          *v71 = v38;
          v39 = *v65;
          v40 = v66;
          v41 = v69;
          (*v65)();
          v70 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
          v42 = swift_allocObject();
          swift_weakInit();
          (v39)(v72, v64, v41);
          v43 = v68;
          *v68 = 100;
          v44 = v41;
          v45 = v77;
          (v39)(v43, v40, v44);
          p_prots = (&OBJC_PROTOCOL___WiFiAwarePairedDevicesXPC + 16);
          swift_allocObject();
          v46 = v70;

          v47 = v46;
          v33 = &unk_10059B000;
          v48 = v43;
          v5 = v67;
          v49 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v71, v47, v72, v48, sub_1003369FC, v42);
          (*v73)(v45, v78);

          *&v35[OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_receiverHeartBeatTimer] = v49;
        }

        else
        {

          (*v73)(v77, v78);
        }

        v79 = v7;
        v51 = *(v7 + 16);
        v50 = *(v7 + 24);
        v52 = v51 + 1;
        if (v51 >= v50 >> 1)
        {
          sub_100367968((v50 > 1), v51 + 1, 1);
          v7 = v79;
        }

        ++v32;
        *(v7 + 16) = v52;
      }

      while (v76 != v32);

      LODWORD(v9) = v63;
      goto LABEL_70;
    }

    __break(1u);
    goto LABEL_105;
  }

  v76 = *(v5 + 16);
  if (v76)
  {
    goto LABEL_56;
  }

LABEL_70:
  if (v9)
  {
    v53 = _CocoaArrayWrapper.endIndex.getter();
    if (!v53)
    {
      goto LABEL_72;
    }

LABEL_74:
    v80 = _swiftEmptyArrayStorage;

    sub_100367968(0, v53 & ~(v53 >> 63), 0);
    if ((v53 & 0x8000000000000000) == 0)
    {
      v55 = 0;
      v56 = v80;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        *(v57 + 48) = 1;

        v80 = v56;
        v59 = v56[2];
        v58 = v56[3];
        v60 = v59 + 1;
        if (v59 >= v58 >> 1)
        {
          sub_100367968((v58 > 1), v59 + 1, 1);
          v56 = v80;
        }

        ++v55;
        v56[2] = v60;
      }

      while (v53 != v55);

      v54 = 0;
      goto LABEL_95;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);

    __break(1u);
  }

  else
  {
    v53 = *(v5 + 16);
    if (v53)
    {
      goto LABEL_74;
    }

LABEL_72:

    v54 = 0;
LABEL_95:
    LOBYTE(v80) = v54;
    LOBYTE(v79) = v54;
  }
}

uint64_t sub_1003354D4(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(v1 + 24) + 16) >> 3 <= 0x270uLL)
  {
    v3 = *(a1 + 44);
    v4 = *(a1 + 42);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + 24);
    *(v1 + 24) = 0x8000000000000000;
    sub_1003E14E4(a1, v4 | (v3 << 16), isUniquelyReferenced_nonNull_native);
    *(v1 + 24) = v8;
    swift_endAccess();
  }

  sub_10000B02C();
  swift_allocError();
  *v6 = xmmword_10048DED0;
  *(v6 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_1003355D0(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + 24);
    v18 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10046A8A8();
      v8 = v18;
    }

    v9 = *(*(v8 + 56) + 8 * v6);
    sub_100477104();
    *(v2 + 24) = v8;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v12 = 136315138;
      v14 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v16 = sub_100002320(v14, v15, v19);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Peer %s not present in database", v12, 0xCu);
      sub_100002A00(v13);
    }

    return 0;
  }

  return v9;
}

void sub_100335764(uint64_t a1, double a2)
{
  swift_beginAccess();
  if (*(*(v2 + 24) + 16))
  {

    sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
    if (v5)
    {

      sub_100333DF0(a2);

      return;
    }
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    v10 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
    v12 = sub_100002320(v10, v11, &v13);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Peer %s not present in database", v8, 0xCu);
    sub_100002A00(v9);
  }
}

void sub_100335918(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  if (*(*(v3 + 24) + 16))
  {

    sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
    if (v7)
    {

      a3(a2);

      return;
    }
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    v12 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
    v14 = sub_100002320(v12, v13, &v15);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Peer %s not present in database", v10, 0xCu);
    sub_100002A00(v11);
  }
}