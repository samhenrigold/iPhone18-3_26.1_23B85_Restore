unint64_t sub_10014CEE4()
{
  result = qword_100504A38;
  if (!qword_100504A38)
  {
    sub_1000692D8(&qword_100504A30, &unk_10040BE98);
    sub_10014D478(&qword_100504A40, &type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504A38);
  }

  return result;
}

uint64_t sub_10014CFA0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10014CFEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504A50, &unk_10040F9F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014D05C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10014D0AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10014D0F4(uint64_t a1)
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
  v11[1] = sub_1000C288C;

  return sub_1001E3610(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10014D1D0()
{
  v11 = type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration();
  v1 = *(v11 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for SEStorageManagementSheet.DisplayConfiguration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v12 = v2 | v7;
  v9 = (v8 + *(v6 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v1 + 8))(v0 + v3, v11);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, ((((((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v12 | 7);
}

unint64_t sub_10014D3B4()
{
  result = qword_100507450;
  if (!qword_100507450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507450);
  }

  return result;
}

uint64_t sub_10014D408(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014D478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10014D4CC(uint64_t *a1, uint64_t a2, void *a3)
{
  v75 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v9 = *(v73 - 8);
  v10 = __chkstk_darwin(v73);
  v72 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a2;
  if (*(a2 + 16))
  {
    v12 = a3;
  }

  else
  {
    [a3 copyWithZone:{0, v10}];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10014E510();
    swift_dynamicCast();
    v12 = v88;
  }

  v13 = sub_1001107E0(v12);
  v77 = a3;
  v66 = v3;
  if (v13)
  {

    v14 = *a1;
    if ((v14 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
      sub_100075C60(&qword_100504AA8, &unk_100503FA0, &unk_10040B2F0, &unk_10040A890);
      result = Set.Iterator.init(_cocoa:)();
      v14 = v88;
      v16 = v89;
      v17 = v90;
      v18 = v91;
      v19 = v92;
    }

    else
    {
      v24 = -1 << *(v14 + 32);
      v16 = v14 + 56;
      v17 = ~v24;
      v25 = -v24;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v19 = v26 & *(v14 + 56);

      v18 = 0;
    }

    v65 = v17;
    v27 = (v17 + 64) >> 6;
    v69 = &v84;
    v68 = (v7 + 8);
    v67 = (v9 + 8);
    v70 = v27;
    v71 = v16;
    if (v14 < 0)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v28 = v18;
      v29 = v19;
      v30 = v18;
      if (!v19)
      {
        break;
      }

LABEL_18:
      v31 = (v29 - 1) & v29;
      v32 = *(*(v14 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));

      if (!v32)
      {
        return sub_100093854(v14);
      }

      while (1)
      {
        v80 = v31;
        v34 = swift_allocObject();
        v36 = v76;
        v35 = v77;
        v34[2] = v32;
        v34[3] = v36;
        v34[4] = v35;
        v79 = v32[4];
        v86 = sub_10014E504;
        v87 = v34;
        aBlock = _NSConcreteStackBlock;
        v83 = 1107296256;
        v84 = sub_100080830;
        v85 = &unk_1004C8CE8;
        v78 = _Block_copy(&aBlock);
        v37 = v35;

        v38 = v72;
        static DispatchQoS.unspecified.getter();
        v81 = _swiftEmptyArrayStorage;
        sub_1000BA7E0();
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
        v39 = v74;
        v40 = v14;
        v41 = v75;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v42 = v78;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v42);
        v16 = v71;

        v43 = v41;
        v14 = v40;
        (*v68)(v39, v43);
        (*v67)(v38, v73);

        v18 = v30;
        v19 = v80;
        v27 = v70;
        if ((v14 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_20:
        v33 = __CocoaSet.Iterator.next()();
        if (v33)
        {
          v81 = v33;
          sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
          swift_dynamicCast();
          v32 = aBlock;
          v30 = v18;
          v31 = v19;
          if (aBlock)
          {
            continue;
          }
        }

        return sub_100093854(v14);
      }
    }

    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v27)
      {
        return sub_100093854(v14);
      }

      v29 = *(v16 + 8 * v30);
      ++v28;
      if (v29)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = *a1;
    if ((v14 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
      sub_100075C60(&qword_100504AA8, &unk_100503FA0, &unk_10040B2F0, &unk_10040A890);
      result = Set.Iterator.init(_cocoa:)();
      v14 = v88;
      v20 = v89;
      v21 = v90;
      v22 = v91;
      v23 = v92;
    }

    else
    {
      v44 = -1 << *(v14 + 32);
      v20 = v14 + 56;
      v21 = ~v44;
      v45 = -v44;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      else
      {
        v46 = -1;
      }

      v23 = v46 & *(v14 + 56);

      v22 = 0;
    }

    v65 = v21;
    v47 = (v21 + 64) >> 6;
    v69 = &v84;
    v68 = (v7 + 8);
    v67 = (v9 + 8);
    v70 = v47;
    v71 = v14;
    if (v14 < 0)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v48 = v22;
      v49 = v23;
      v50 = v22;
      if (!v23)
      {
        break;
      }

LABEL_33:
      v51 = (v49 - 1) & v49;
      v52 = *(*(v14 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(v49)))));

      if (!v52)
      {
        return sub_100093854(v14);
      }

      while (1)
      {
        v80 = v51;
        v54 = swift_allocObject();
        v56 = v76;
        v55 = v77;
        v54[2] = v52;
        v54[3] = v56;
        v54[4] = v55;
        v79 = v52[4];
        v86 = sub_10014E498;
        v87 = v54;
        aBlock = _NSConcreteStackBlock;
        v83 = 1107296256;
        v84 = sub_100080830;
        v85 = &unk_1004C8C98;
        v78 = _Block_copy(&aBlock);
        v57 = v55;

        v58 = v72;
        static DispatchQoS.unspecified.getter();
        v81 = _swiftEmptyArrayStorage;
        sub_1000BA7E0();
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
        v59 = v74;
        v60 = v20;
        v61 = v75;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v62 = v78;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v62);
        v14 = v71;

        v63 = v61;
        v20 = v60;
        (*v68)(v59, v63);
        (*v67)(v58, v73);

        v22 = v50;
        v23 = v80;
        v47 = v70;
        if ((v14 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_35:
        v53 = __CocoaSet.Iterator.next()();
        if (v53)
        {
          v81 = v53;
          sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
          swift_dynamicCast();
          v52 = aBlock;
          v50 = v22;
          v51 = v23;
          if (aBlock)
          {
            continue;
          }
        }

        return sub_100093854(v14);
      }
    }

    while (1)
    {
      v50 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v50 >= v47)
      {
        return sub_100093854(v14);
      }

      v49 = *(v20 + 8 * v50);
      ++v48;
      if (v49)
      {
        goto LABEL_33;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_10014DE34(uint64_t a1, uint64_t a2, id a3)
{
  v3 = *(a1 + 24);
  if (*(a2 + 16))
  {
    v7 = a3;
    v4 = a3;
  }

  else
  {
    [a3 copyWithZone:0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10014E510();
    swift_dynamicCast();
    v4 = v7;
  }

  ObjectType = swift_getObjectType();
  v6[0] = v4;
  (*(v3 + 16))(v6, ObjectType, v3);
}

void sub_10014DF00(uint64_t a1, uint64_t a2, id a3)
{
  v3 = *(a1 + 24);
  if (*(a2 + 16))
  {
    v7 = a3;
    v4 = a3;
  }

  else
  {
    [a3 copyWithZone:0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10014E510();
    swift_dynamicCast();
    v4 = v7;
  }

  ObjectType = swift_getObjectType();
  v6[0] = v4;
  (*(v3 + 24))(v6, ObjectType, v3);
}

uint64_t sub_10014DFCC()
{
  sub_100068FC4(&qword_100504A98, &qword_10040BEE0);
  v0 = swift_allocObject();
  sub_100068FC4(&qword_100504AA0, &unk_10040BEE8);
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 16) = &_swiftEmptySetSingleton;
  *(result + 24) = &_swiftEmptySetSingleton;
  *(v0 + 24) = result;
  *(v0 + 16) = 0;
  off_100504A68 = v0;
  return result;
}

uint64_t sub_10014E4A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10014E4BC()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10014E510()
{
  result = qword_100503F00;
  if (!qword_100503F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100503F00);
  }

  return result;
}

id sub_10014E588()
{
  result = [objc_allocWithZone(type metadata accessor for AlishaHUP(0)) init];
  qword_10051B2E8 = result;
  return result;
}

id sub_10014E5BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock[-1] - v5;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v7 = OBJC_IVAR____TtC10seserviced9AlishaHUP_enableFriendHUP;
  LOBYTE(aBlock[0]) = 0;
  v17 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  v1[v7] = aBlock[0];
  *&v1[OBJC_IVAR____TtC10seserviced9AlishaHUP_hupTimeoutSec] = 0x4072C00000000000;
  *&v1[OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions] = _swiftEmptyArrayStorage;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v16, "init");
  v9 = qword_100501D90;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  aBlock[4] = sub_1001570D8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100193978;
  aBlock[3] = &unk_1004C90D0;
  v12 = _Block_copy(aBlock);

  os_state_add_handler();
  _Block_release(v12);

  return v10;
}

_DWORD *sub_10014E870()
{
  v1 = OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_70;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    v6 = _swiftEmptyArrayStorage;
    goto LABEL_56;
  }

  *&v51[0] = _swiftEmptyArrayStorage;

  sub_10019F3C0(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

  v5 = 0;
  v6 = *&v51[0];
  v46 = v2 & 0xC000000000000001;
  v42 = v2 + 32;
  v43 = v2 & 0xFFFFFFFFFFFFFF8;
  v44 = v2;
  v45 = v3;
  do
  {
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_64;
    }

    v48 = v6;
    if (v46)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v43 + 16))
      {
        goto LABEL_65;
      }

      v8 = *(v42 + 8 * v5);
    }

    v9 = (*(v8 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer) + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    v10 = v9[1];
    if (v10 >> 60 == 15)
    {
      goto LABEL_74;
    }

    v11 = *v9;
    v12 = v10 >> 62;
    v49 = HIDWORD(*v9);
    v47 = v7;
    if ((v10 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_51;
      }

      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      v13 = v14 - v15;
      if (__OFSUB__(v14, v15))
      {
        goto LABEL_67;
      }

      goto LABEL_22;
    }

    if (v12)
    {
      if (__OFSUB__(v49, v11))
      {
        goto LABEL_68;
      }

      v13 = v49 - v11;
LABEL_22:
      sub_100069E2C(v11, v10);
      if (!v13)
      {
        goto LABEL_51;
      }

LABEL_23:
      v16 = v13 & ~(v13 >> 63);
      sub_10019F3C0(0, v16, 0);
      v4 = _swiftEmptyArrayStorage;
      if (v12 == 2)
      {
        v2 = *(v11 + 16);
LABEL_27:
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_66;
      }

      if (v12 == 1)
      {
        v2 = v11;
        goto LABEL_27;
      }

      if (v13 < 0)
      {
        goto LABEL_69;
      }

      v2 = 0;
      while (1)
      {
LABEL_31:
        if (!v16)
        {
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
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          v3 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        if (v12 == 2)
        {
          if (v2 < *(v11 + 16))
          {
            goto LABEL_58;
          }

          if (v2 >= *(v11 + 24))
          {
            goto LABEL_61;
          }

          v21 = __DataStorage._bytes.getter();
          if (!v21)
          {
            goto LABEL_73;
          }

          v18 = v21;
          v22 = __DataStorage._offset.getter();
          v20 = v2 - v22;
          if (__OFSUB__(v2, v22))
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (v12 != 1)
          {
            if (v2 >= BYTE6(v10))
            {
              goto LABEL_59;
            }

            LOWORD(v52) = v11;
            BYTE2(v52) = BYTE2(v11);
            BYTE3(v52) = BYTE3(v11);
            BYTE4(v52) = v49;
            BYTE5(v52) = BYTE5(v11);
            BYTE6(v52) = BYTE6(v11);
            BYTE7(v52) = HIBYTE(v11);
            WORD4(v52) = v10;
            BYTE10(v52) = BYTE2(v10);
            BYTE11(v52) = BYTE3(v10);
            BYTE12(v52) = BYTE4(v10);
            BYTE13(v52) = BYTE5(v10);
            v23 = *(&v52 + v2);
            goto LABEL_47;
          }

          if (v2 < v11 || v2 >= v11 >> 32)
          {
            goto LABEL_60;
          }

          v17 = __DataStorage._bytes.getter();
          if (!v17)
          {
            goto LABEL_72;
          }

          v18 = v17;
          v19 = __DataStorage._offset.getter();
          v20 = v2 - v19;
          if (__OFSUB__(v2, v19))
          {
            goto LABEL_62;
          }
        }

        v23 = *(v18 + v20);
LABEL_47:
        sub_100068FC4(&qword_100502440, &unk_10040B240);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1004098F0;
        *(v24 + 56) = &type metadata for UInt8;
        *(v24 + 64) = &protocol witness table for UInt8;
        *(v24 + 32) = v23;
        v25 = String.init(format:_:)();
        v50 = v4;
        v28 = v4[2];
        v27 = v4[3];
        if (v28 >= v27 >> 1)
        {
          v41 = v25;
          v30 = v26;
          sub_10019F3C0((v27 > 1), v28 + 1, 1);
          v26 = v30;
          v25 = v41;
          v4 = v50;
        }

        v4[2] = v28 + 1;
        v29 = &v4[2 * v28];
        v29[4] = v25;
        v29[5] = v26;
        ++v2;
        --v16;
        if (!--v13)
        {
          v2 = v44;
          goto LABEL_51;
        }
      }
    }

    v13 = BYTE6(v10);
    if (BYTE6(v10))
    {
      goto LABEL_23;
    }

LABEL_51:
    *&v52 = v4;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v31 = BidirectionalCollection<>.joined(separator:)();
    v33 = v32;
    sub_10006A2D0(v11, v10);

    v6 = v48;
    *&v51[0] = v48;
    v35 = v48[2];
    v34 = v48[3];
    if (v35 >= v34 >> 1)
    {
      sub_10019F3C0((v34 > 1), v35 + 1, 1);
      v6 = *&v51[0];
    }

    v6[2] = v35 + 1;
    v36 = &v6[2 * v35];
    v36[4] = v31;
    v36[5] = v33;
    v5 = v47;
    v4 = _swiftEmptyArrayStorage;
  }

  while (v47 != v45);

LABEL_56:
  v53 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  *&v52 = v6;
  sub_100075D50(&v52, v51);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v51, 0xD000000000000010, 0x8000000100464820, isUniquelyReferenced_nonNull_native);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v39 = sub_100015DA0("alishahup.state", isa);

  return v39;
}

void sub_10014EEBC(uint64_t a1, unint64_t a2, unint64_t a3, id a4)
{
  v5 = v4;
  v157 = a2;
  v158 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v149 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v148 = *(v11 - 1);
  __chkstk_darwin(v11);
  v147 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  __chkstk_darwin(v13);
  v16 = (&v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    v142 = v14;
    swift_once();
    v14 = v142;
  }

  v17 = qword_10051B7F0;
  *v16 = qword_10051B7F0;
  v18 = *(v14 + 104);
  v152 = enum case for DispatchPredicate.onQueue(_:);
  v19 = v14;
  v153 = v14 + 104;
  v151 = v18;
  v18(v16);
  v20 = v17;
  v21 = _dispatchPreconditionTest(_:)();
  v22 = v13;
  v23 = v21;
  v24 = *(v19 + 8);
  v159 = v16;
  v155 = v22;
  v154 = v19 + 8;
  v150 = v24;
  v24(v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_82:
    v34 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_8;
  }

  v144 = v10;
  v145 = v11;
  v146 = v8;
  v156 = v20;
  v25 = OBJC_IVAR____TtC10seserviced9AlishaHUP_logger;

  v160 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  v28 = os_log_type_enabled(v26, v27);
  v11 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v161 = a3;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v29 = 67109378;
    *(v29 + 4) = a3 & 1;
    *(v29 + 8) = 2080;
    v31 = UUID.uuidString.getter();
    v33 = sub_1002FFA0C(v31, v32, &aBlock);

    *(v29 + 10) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "triggerHeadUnitPairing isRequestedByVehicle %{BOOL}d peer %s", v29, 0x12u);
    sub_1000752F4(v30);
  }

  v20 = OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions;
  swift_beginAccess();
  v143 = v20;
  v23 = *&v5[v20];
  v162 = v5;
  a3 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
    goto LABEL_82;
  }

  v34 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v35 = *v11;

  for (i = 0; ; ++i)
  {
    if (v34 == i)
    {
      goto LABEL_18;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (i >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_79;
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_17;
    }

LABEL_13:
    v20 = static UUID.== infix(_:_:)();

    if (v20)
    {

      return;
    }
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
  if (!__OFADD__(i, 1))
  {
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
LABEL_18:

  v37 = qword_1005019E8;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = swift_allocObject();
  *(v38 + 16) = sub_100157158;
  *(v38 + 24) = a4;

  v39 = sub_1000CAA04();

  v40 = sub_1000CA810(v39);

  v41 = v162;
  v42 = v161;
  if (!v40)
  {
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Endpoint does not exist", v48, 2u);
    }

    return;
  }

  v43 = [v40 hupDone];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 BOOLValue];
  }

  else
  {
    v45 = 0;
  }

  type metadata accessor for AlishaPeer(0);
  v49 = swift_dynamicCastClass();
  if (!v49)
  {
    if (v45)
    {
      goto LABEL_40;
    }

LABEL_34:
    v50 = v157;
    if (v157 >> 60 == 15)
    {
      sub_100150214();
LABEL_49:

      return;
    }

    sub_100069E2C(v158, v157);
    v66 = [v40 hupData];
    if (v66)
    {
      v67 = v66;
      v68 = v50;
      v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      sub_10006A178(v69, v71);
    }

    else
    {
      if (qword_100501D98 != -1)
      {
        swift_once();
      }

      v159 = qword_10051B7F8;
      v72 = swift_allocObject();
      v73 = v158;
      v72[2] = v40;
      v72[3] = v73;
      v74 = v162;
      v72[4] = v50;
      v72[5] = v74;
      v168 = sub_100156D28;
      v169 = v72;
      aBlock = _NSConcreteStackBlock;
      v165 = 1107296256;
      v166 = sub_100080830;
      v167 = &unk_1004C8D88;
      v155 = _Block_copy(&aBlock);
      sub_10006A2BC(v73, v50);
      v75 = v40;
      v76 = v74;
      v77 = v147;
      static DispatchQoS.unspecified.getter();
      v163 = _swiftEmptyArrayStorage;
      sub_100147FB4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v68 = v50;
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
      v78 = v144;
      v79 = v146;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v80 = v155;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v80);
      (*(v149 + 8))(v78, v79);
      (*(v148 + 8))(v77, v145);
    }

    v81 = v68 >> 62;
    v82 = v68;
    if ((v68 >> 62) > 1)
    {
      if (v81 != 2)
      {
        goto LABEL_65;
      }

      v85 = *(v158 + 16);
      v84 = *(v158 + 24);
      v86 = __OFSUB__(v84, v85);
      v83 = v84 - v85;
      if (!v86)
      {
LABEL_64:
        if (v83 >= 9)
        {
          v99 = v158;
          v100 = Data.subdata(in:)();
          v102 = v101;
          sub_10006A2BC(v99, v82);
          v103 = sub_100090214(v99, v82, 7, 0, 0);
          sub_10006A2D0(v99, v82);
          v104 = ((v103 & 2) >> 1);
          v105 = 2;
          if ((v103 & 2) != 0)
          {
            v105 = 3;
          }

          if ((v103 & 4) != 0)
          {
            v104 = v105;
          }

          v155 = v104;
          sub_100069E2C(v100, v102);
          v159 = v40;
          v106 = [v40 publicKeyIdentifier];
          v107 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v108 = v100;
          v110 = v109;

          aBlock = sub_100288788(v107, v110);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
          BidirectionalCollection<>.joined(separator:)();
          sub_10006A178(v107, v110);

          sub_1003F6F88(v111);
          v113 = objc_allocWithZone(*(v112 + 1392));
          isa = Data._bridgeToObjectiveC()().super.isa;
          v115 = String._bridgeToObjectiveC()();

          v116 = [v113 initWithVehicleAddress:isa supportedCapabilites:v155 keyIdentifier:v115];

          v154 = v108;
          v155 = v102;
          sub_10006A178(v108, v102);

          v117 = v162;
          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v118, v119))
          {
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            aBlock = v121;
            *v120 = 136315138;
            v122 = UUID.uuidString.getter();
            v124 = v116;
            v125 = sub_1002FFA0C(v122, v123, &aBlock);

            *(v120 + 4) = v125;
            v116 = v124;
            _os_log_impl(&_mh_execute_header, v118, v119, "Started CARWirelessPairingSession for %s", v120, 0xCu);
            sub_1000752F4(v121);

            v117 = v162;
          }

          v126 = v156;
          [v116 setDelegate:v117];
          type metadata accessor for AlishaHUP.HUPSession(0);
          v127 = swift_allocObject();
          *(v127 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_timer) = 0;
          *(v127 + 16) = v116;
          *(v127 + 24) = v161 & 1;
          v128 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
          swift_beginAccess();
          v129 = OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_connectionIdentifier;
          v130 = type metadata accessor for UUID();
          (*(*(v130 - 8) + 16))(v127 + v129, a4 + v128, v130);
          *(v127 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer) = a4;
          v131 = swift_allocObject();
          swift_weakInit();
          v132 = swift_allocObject();
          v132[2] = v131;
          v132[3] = v117;
          v132[4] = a4;
          v133 = objc_allocWithZone(SESTimer);
          v168 = sub_100156DCC;
          v169 = v132;
          aBlock = _NSConcreteStackBlock;
          v165 = 1107296256;
          v166 = sub_100080830;
          v167 = &unk_1004C8E00;
          v134 = _Block_copy(&aBlock);
          swift_retain_n();
          v135 = v117;
          a4 = v116;

          v136 = sub_1003AE50C(v133, v126, v134);
          _Block_release(v134);

          v137 = OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_timer;
          v138 = *(v127 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_timer);
          *(v127 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_timer) = v136;

          v139 = v143;
          swift_beginAccess();

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v35 = v159;
          if (*((*(v117 + v139) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v117 + v139) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          [a4 requestPairing];
          v140 = *(v127 + v137);
          v20 = v158;
          if (v140)
          {
            v141 = v140;
            sub_1003AE618(v141, 300.0);

            sub_10006A2D0(v20, v157);
            sub_10006A178(v154, v155);
          }

          else
          {
LABEL_79:

            sub_10006A2D0(v20, v157);
            sub_10006A178(v154, v155);
          }

          return;
        }

LABEL_65:
        v87 = v158;
        sub_100069E2C(v158, v68);
        v88 = Logger.logObject.getter();
        v89 = v157;
        v90 = v88;
        v91 = static os_log_type_t.error.getter();
        sub_10006A2D0(v87, v89);
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          aBlock = v93;
          *v92 = 136315138;
          v163 = sub_100288788(v87, v89);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
          v94 = BidirectionalCollection<>.joined(separator:)();
          v96 = v95;

          v97 = sub_1002FFA0C(v94, v96, &aBlock);
          v87 = v158;

          *(v92 + 4) = v97;
          _os_log_impl(&_mh_execute_header, v90, v91, "Invalid HU_PP payload %s", v92, 0xCu);
          sub_1000752F4(v93);
        }

        sub_100150214();
        v98 = objc_opt_self();
        sub_10004CB20(v98, v40, 2147483649);

        sub_10006A2D0(v87, v89);
        return;
      }

      __break(1u);
    }

    else if (!v81)
    {
      v83 = BYTE6(v68);
      goto LABEL_64;
    }

    LODWORD(v83) = HIDWORD(v158) - v158;
    if (__OFSUB__(HIDWORD(v158), v158))
    {
      __break(1u);
      goto LABEL_86;
    }

    v83 = v83;
    goto LABEL_64;
  }

  if ((v45 & 1) == 0)
  {
    if (*(*(v49 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration) + 64))
    {
      if (v41[OBJC_IVAR____TtC10seserviced9AlishaHUP_enableFriendHUP])
      {
        goto LABEL_34;
      }

      if ([v40 getEndpointUser] != 1)
      {

        goto LABEL_34;
      }
    }

    else
    {
    }

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "HUP disabled by configuration", v53, 2u);
    }

    sub_100150214();
  }

LABEL_40:
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "HUP already done", v56, 2u);
  }

  v57 = v159;
  if ((v42 & 1) == 0)
  {
    goto LABEL_49;
  }

  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  v58 = sub_10013044C(0xD000000000000094, 0x8000000100464740);
  if (v59 >> 60 != 15)
  {
    v60 = v58;
    v61 = v59;
    v63 = v155;
    v62 = v156;
    *v57 = v156;
    v151(v57, v152, v63);
    v64 = v62;
    LOBYTE(v62) = _dispatchPreconditionTest(_:)();
    v150(v57, v63);
    if (v62)
    {
      v42 = sub_100239160(6, 23, v60, v61);
      v57 = v65;
      if (qword_100501960 == -1)
      {
LABEL_48:
        sub_1000E71A0(v42, v57, a4);

        sub_10006A178(v42, v57);
        sub_10006A2D0(v60, v61);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_48;
  }

LABEL_86:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

void sub_100150214()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = [v0 hupDone];
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = [v0 hupDone];
  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v15 BOOLValue];

  if ((v17 & 1) == 0)
  {
LABEL_7:
    v22 = v2;
    if (qword_100501D98 == -1)
    {
LABEL_8:
      v18 = swift_allocObject();
      *(v18 + 16) = v0;
      aBlock[4] = sub_100156EF8;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C8F18;
      v19 = _Block_copy(aBlock);
      v20 = v0;
      static DispatchQoS.unspecified.getter();
      v24 = _swiftEmptyArrayStorage;
      sub_100147FB4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v19);
      (*(v22 + 8))(v4, v1);
      (*(v5 + 8))(v7, v23);

      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_8;
  }
}

uint64_t sub_100150678(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v31 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v14 = [a1 publicKeyIdentifier];
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  aBlock = sub_100288788(v15, v17);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
  BidirectionalCollection<>.joined(separator:)();
  sub_10006A178(v15, v17);

  v18 = String._bridgeToObjectiveC()();

  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v42 = sub_100156E10;
  v43 = v19;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_1000A409C;
  v41 = &unk_1004C8E78;
  v20 = _Block_copy(&aBlock);
  sub_100069E2C(a2, a3);

  v21 = SESEndPointUpdateWithBlock();
  _Block_release(v20);

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v22 = swift_allocObject();
  v24 = v31;
  v23 = v32;
  v22[2] = v21;
  v22[3] = v24;
  v22[4] = v23;
  v42 = sub_100156EB4;
  v43 = v22;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_100080830;
  v41 = &unk_1004C8EC8;
  v25 = _Block_copy(&aBlock);
  v26 = v21;
  v27 = v24;
  v28 = v23;
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_100147FB4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  v29 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v35 + 8))(v9, v29);
  (*(v33 + 8))(v13, v34);
}

void sub_100150B24(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    swift_errorRetain();
    v4 = a3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v7 = 136315394;
      v8 = [v4 publicKeyIdentifier];
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      sub_100288788(v9, v11);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v12 = BidirectionalCollection<>.joined(separator:)();
      v14 = v13;
      sub_10006A178(v9, v11);

      v15 = sub_1002FFA0C(v12, v14, &v22);

      *(v7 + 4) = v15;
      *(v7 + 12) = 2080;
      swift_getErrorValue();
      v16 = Error.localizedDescription.getter();
      v18 = sub_1002FFA0C(v16, v17, &v22);

      *(v7 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to update HUP data for %s %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v19, "Endpoint updated with hupData", v20, 2u);
    }
  }
}

void sub_100150E50(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
LABEL_29:
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  v7[13](v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  (v7[1])(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_31:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_6;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  [*(Strong + 16) invalidate];
  a1 = OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions;
  swift_beginAccess();
  v9 = *(a2 + a1);
  v29 = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    goto LABEL_31;
  }

  v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v7 = &unk_100504000;

  if (v14)
  {
    v24 = a1;
    v25 = a3;
    v26 = a2;
    a2 = 0;
    a1 = v9 & 0xC000000000000001;
    v6 = v9 & 0xFFFFFFFFFFFFFF8;
    v27 = v9 & 0xFFFFFFFFFFFFFF8;
    v28 = v9 & 0xC000000000000001;
    while (1)
    {
      if (a1)
      {
        a3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v15 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v16 = v29;
          a3 = v25;
          a2 = v26;
          a1 = v24;
          goto LABEL_20;
        }
      }

      else
      {
        if (a2 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_29;
        }

        a3 = *(v9 + 8 * a2 + 32);

        v15 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_17;
        }
      }

      if (static UUID.== infix(_:_:)())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v6 = v27;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        a1 = v28;
      }

      ++a2;
      if (v15 == v14)
      {
        goto LABEL_18;
      }
    }
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_20:

  *(a2 + a1) = v16;

  v17 = qword_1005019E8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = sub_100157158;
  *(v18 + 24) = a3;

  v19 = sub_1000CAA04();

  v20 = sub_1000CA810(v19);

  if (v20)
  {
    sub_100150214();
    v21 = objc_opt_self();
    sub_10004CB20(v21, v20, 2147483652);
  }

  else
  {
    v20 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v20, v22, "Endpoint does not exist", v23, 2u);
    }
  }
}

uint64_t sub_1001512D0(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
LABEL_38:
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v11 = v5 + 8;
  v12(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v11 = OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions;
  swift_beginAccess();
  v2 = *(v1 + v11);
  if (v2 >> 62)
  {
LABEL_40:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_5;
  }

  v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v32 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;

  if (!v13)
  {
  }

  v29 = v11;
  v30 = v1;
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v1 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  while (!v5)
  {
    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v7 = *(v2 + 8 * v4 + 32);

    v14 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_15;
    }

LABEL_10:
    if (static UUID.== infix(_:_:)())
    {
      goto LABEL_16;
    }

    ++v4;
    if (v14 == v13)
    {
    }
  }

  v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v14 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
LABEL_16:

  v15 = v30;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  v18 = os_log_type_enabled(v16, v17);
  v31 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v33 = v2;
    *v19 = 136315138;
    v20 = UUID.uuidString.getter();
    v22 = sub_1002FFA0C(v20, v21, &v33);

    *(v19 + 4) = v22;
    a1 = v31;
    _os_log_impl(&_mh_execute_header, v16, v17, "Cancelling HUP for %s", v19, 0xCu);
    sub_1000752F4(v2);

    v15 = v30;
  }

  v23 = v29;
  [v7[2] invalidate];
  v24 = *(v15 + v23);
  v33 = _swiftEmptyArrayStorage;
  v1 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  if (v24 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
    v27 = _swiftEmptyArrayStorage;
    goto LABEL_34;
  }

  v25 = 0;
  v5 = v24 & 0xC000000000000001;
  while (2)
  {
    if (v5)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      goto LABEL_27;
    }

    if (v25 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    v2 = *(v24 + 8 * v25 + 32);

    v26 = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
LABEL_27:
      if (static UUID.== infix(_:_:)())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v31;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v1 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      }

      ++v25;
      if (v26 == v4)
      {
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_32:
  v27 = v33;
  v15 = v30;
LABEL_34:

  *(v15 + v29) = v27;
}

void sub_100151780(char a1, void *a2, unint64_t a3, int64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(v147) = a8;
  v145 = a6;
  v146 = a7;
  v154 = a5;
  LOBYTE(v11) = a1;
  v12 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v12 - 8);
  v149 = &v138 - v13;
  v14 = type metadata accessor for UUID();
  v148 = *(v14 - 8);
  __chkstk_darwin(v14);
  v143 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v144 = &v138 - v17;
  __chkstk_darwin(v18);
  v155 = &v138 - v19;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
LABEL_79:
    swift_once();
  }

  v24 = qword_10051B7F0;
  *v23 = qword_10051B7F0;
  v25 = *(v21 + 104);
  LODWORD(v153) = enum case for DispatchPredicate.onQueue(_:);
  v152 = v25;
  (v25)(v23);
  v150 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v151 = *(v21 + 8);
  v151(v23, v20);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_81:
    swift_once();
    goto LABEL_11;
  }

  v26 = OBJC_IVAR____TtC10seserviced9AlishaHUP_logger;
  if (v11 != 24)
  {
    if (v11 == 22)
    {

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v158[0] = v30;
        *v29 = 136315138;
        v31 = UUID.uuidString.getter();
        v33 = a4;
        v34 = sub_1002FFA0C(v31, v32, v158);

        *(v29 + 4) = v34;
        a4 = v33;
        _os_log_impl(&_mh_execute_header, v27, v28, "Received HUP HU_PP from %s", v29, 0xCu);
        sub_1000752F4(v30);
      }

      sub_10014EEBC(a2, a3, 1uLL, a4);
    }

    else
    {
      sub_100069E2C(a2, a3);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.info.getter();
      sub_10006A178(a2, a3);
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v158[0] = v67;
        *v66 = 16777730;
        *(v66 + 4) = v11;
        *(v66 + 5) = 2080;
        v159[0] = sub_100288788(a2, a3);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
        v68 = BidirectionalCollection<>.joined(separator:)();
        v70 = v69;

        v71 = sub_1002FFA0C(v68, v70, v158);

        *(v66 + 7) = v71;
        _os_log_impl(&_mh_execute_header, v64, v65, "Ignoring unknown message with identifier %hhu payload %s", v66, 0xFu);
        sub_1000752F4(v67);
      }
    }

    return;
  }

  v139 = a2;
  v140 = a3;

  v142 = v26;
  v11 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  v36 = os_log_type_enabled(v11, v35);
  v141 = v14;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v158[0] = v138;
    *v37 = 136315138;
    v38 = UUID.uuidString.getter();
    v40 = a4;
    v41 = sub_1002FFA0C(v38, v39, v158);

    *(v37 + 4) = v41;
    a4 = v40;
    _os_log_impl(&_mh_execute_header, v11, v35, "Received HUP HUP_RS from %s", v37, 0xCu);
    sub_1000752F4(v138);
  }

  v42 = qword_1005019E8;

  if (v42 != -1)
  {
    goto LABEL_81;
  }

LABEL_11:
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100156C20;
  *(v14 + 24) = a4;

  v43 = sub_1000CAA04();

  v44 = sub_1000CA810(v43);

  if (!v44)
  {
LABEL_15:
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "HUP already done", v49, 2u);
    }

    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    v14 = qword_10051B5A0;
    v50 = sub_10013044C(0xD000000000000094, 0x8000000100464740);
    if (v51 >> 60 == 15)
    {
LABEL_85:
      __break(1u);
      return;
    }

    a2 = v50;
    a3 = v51;
    v52 = v150;
    *v23 = v150;
    (v152)(v23, v153, v20);
    v53 = v52;
    v54 = _dispatchPreconditionTest(_:)();
    v151(v23, v20);
    if (v54)
    {
      v55 = v154;
      v56 = v155;
      v57 = v149;
      if (v154)
      {
        sub_1000756F8(v145, v149);
        v58 = v148;
        v59 = v141;
        if ((*(v148 + 48))(v57, 1, v141) != 1)
        {
          v156 = a2;
          (*(v58 + 32))(v56, v57, v59);
          v78 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
          swift_beginAccess();
          v79 = *(v58 + 16);
          v152 = v78;
          v153 = v79;
          v80 = v144;
          v79(v144, &v78[a4], v59);
          v81 = v58;
          v82 = static UUID.== infix(_:_:)();
          v85 = *(v81 + 8);
          v84 = v81 + 8;
          v83 = v85;
          v85(v80, v59);
          if ((v82 & 1) == 0)
          {
            v154 = v83;
            v148 = v84;
            v93 = v143;
            v153(v143, v56, v59);

            v94 = Logger.logObject.getter();
            v95 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v151 = swift_slowAlloc();
              v159[0] = v151;
              *v96 = 136315394;
              v97 = sub_100147FB4(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v147 = a4;
              v149 = v97;
              LODWORD(v150) = v95;
              v98 = dispatch thunk of CustomStringConvertible.description.getter();
              v100 = v99;
              v101 = v154;
              (v154)(v93, v59);
              v102 = sub_1002FFA0C(v98, v100, v159);

              *(v96 + 4) = v102;
              *(v96 + 12) = 2080;
              v103 = v144;
              v153(v144, &v152[v147], v59);
              v104 = v94;
              v105 = dispatch thunk of CustomStringConvertible.description.getter();
              v107 = v106;
              v101(v103, v59);
              v108 = sub_1002FFA0C(v105, v107, v159);

              *(v96 + 14) = v108;
              _os_log_impl(&_mh_execute_header, v104, v150, "Connection identifier has changed %s %s", v96, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              v101 = v154;
              (v154)(v93, v59);
            }

            v113 = v156;
            v101(v155, v59);
            v112 = v113;
            goto LABEL_67;
          }

          v83(v56, v59);
          a2 = v156;
          if ((v154 & 2) == 0)
          {
            goto LABEL_27;
          }

LABEL_25:
          if ((v147 & 1) == 0)
          {
            v60 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
            if (*(a4 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) != v146)
            {

              v54 = Logger.logObject.getter();
              v91 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v54, v91))
              {
                v92 = swift_slowAlloc();
                *v92 = 134218240;
                *(v92 + 4) = v146;
                *(v92 + 12) = 2048;
                *(v92 + 14) = *(a4 + v60);

                _os_log_impl(&_mh_execute_header, v54, v91, "Sequence number has changed %ld %ld", v92, 0x16u);
              }

              else
              {
LABEL_65:
              }

              goto LABEL_66;
            }
          }

LABEL_27:
          v61 = sub_100239160(6, 23, a2, a3);
          v63 = v62;
          if (qword_100501960 != -1)
          {
            swift_once();
          }

          sub_1000E71A0(v61, v63, a4);
          sub_10006A178(v61, v63);
LABEL_66:
          v112 = a2;
LABEL_67:
          sub_10006A2D0(v112, a3);
          return;
        }

        sub_100156C78(v57);
      }

      if ((v55 & 2) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_83;
  }

  v45 = [v44 hupDone];
  if (v45)
  {
    v46 = v45;
    v14 = [v45 BOOLValue];

    if (v14)
    {

      goto LABEL_15;
    }
  }

  v72 = OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions;
  v73 = v156;
  swift_beginAccess();
  v54 = *(v73 + v72);
  v138 = v44;
  if (!(v54 >> 62))
  {
    v20 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_35;
  }

LABEL_83:
  v20 = _CocoaArrayWrapper.endIndex.getter();
LABEL_35:
  v21 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;

  if (v20)
  {
    v23 = 0;
    a3 = v54 & 0xC000000000000001;
    a4 = v54 & 0xFFFFFFFFFFFFFF8;
    a2 = &unk_100504000;
    while (1)
    {
      if (a3)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      else
      {
        if (v23 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_79;
        }

        v14 = *(v54 + 8 * v23 + 32);

        v11 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          goto LABEL_45;
        }
      }

      if (static UUID.== infix(_:_:)())
      {
        break;
      }

      ++v23;
      if (v11 == v20)
      {
        goto LABEL_46;
      }
    }

    v86 = *(v14 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_timer);
    if (v86)
    {
      sub_1003AE754(v86);
    }

    v87 = v140;
    v88 = v140 >> 62;
    v89 = v139;
    if ((v140 >> 62) > 1)
    {
      if (v88 != 2)
      {
        goto LABEL_73;
      }

      v110 = v139[2];
      v109 = v139[3];
      v111 = __OFSUB__(v109, v110);
      v90 = v109 - v110;
      if (v111)
      {
        __break(1u);
        goto LABEL_65;
      }

LABEL_72:
      if (v90 >= 70)
      {
        v124 = Data.subdata(in:)();
        v155 = v125;
        v156 = v124;
        v152 = Data.subdata(in:)();
        v153 = v126;
        v154 = Data.subdata(in:)();
        v128 = v127;
        v129 = Data.subdata(in:)();
        v131 = v130;
        v132 = *(v14 + 16);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v134 = Data._bridgeToObjectiveC()().super.isa;
        v135 = Data._bridgeToObjectiveC()().super.isa;
        v136 = v153;
        v137 = Data._bridgeToObjectiveC()().super.isa;
        [v132 setupVehicleDataC192:isa r192:v134 c256:v135 r256:v137];

        sub_10006A178(v129, v131);
        sub_10006A178(v154, v128);
        sub_10006A178(v152, v136);
        sub_10006A178(v156, v155);
      }

      else
      {
LABEL_73:
        sub_100069E2C(v139, v140);
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.error.getter();
        sub_10006A178(v89, v87);
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v159[0] = v117;
          *v116 = 136315138;
          v157 = sub_100288788(v89, v87);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
          v118 = BidirectionalCollection<>.joined(separator:)();
          v120 = v119;

          v121 = sub_1002FFA0C(v118, v120, v159);

          *(v116 + 4) = v121;
          _os_log_impl(&_mh_execute_header, v114, v115, "Invalid HUP_RS payload %s", v116, 0xCu);
          sub_1000752F4(v117);
        }

        v122 = v138;
        sub_100150214();
        v123 = objc_opt_self();
        sub_10004CB20(v123, v122, 2147483650);
      }

      return;
    }

    if (!v88)
    {
      v90 = BYTE6(v140);
      goto LABEL_72;
    }

    LODWORD(v90) = HIDWORD(v139) - v139;
    if (!__OFSUB__(HIDWORD(v139), v139))
    {
      v90 = v90;
      goto LABEL_72;
    }

    __break(1u);
    goto LABEL_85;
  }

LABEL_46:

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&_mh_execute_header, v74, v75, "No active HUP session", v76, 2u);
  }

  v77 = v138;
  sub_100150214();
}

BOOL sub_1001529C0(void *a1, uint64_t a2)
{
  v3 = [a1 publicKeyIdentifier];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v8 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v7 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v6 >> 60 == 15)
  {
    if (v7 >> 60 == 15)
    {
      sub_10006A2BC(v8, v7);
      sub_10006A2D0(v4, v6);
      return 1;
    }

    goto LABEL_5;
  }

  if (v7 >> 60 == 15)
  {
LABEL_5:
    sub_10006A2BC(v8, v7);
    sub_10006A2D0(v4, v6);
    sub_10006A2D0(v8, v7);
    return 0;
  }

  sub_10006A2BC(v8, v7);
  sub_10006A2BC(v8, v7);
  sub_100069E2C(v4, v6);
  v10 = sub_10008FB4C(v4, v6, v8, v7);
  sub_10006A2D0(v8, v7);
  sub_10006A2D0(v8, v7);
  sub_10006A178(v4, v6);
  sub_10006A2D0(v4, v6);
  return v10;
}

void sub_100152B0C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
LABEL_23:
    swift_once();
  }

  v11 = qword_10051B7F0;
  v10->isa = qword_10051B7F0;
  (v8[13])(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  v13 = _dispatchPreconditionTest(_:)();
  v14 = v8[1];
  ++v8;
  v14(v10, v7);
  if (v13)
  {
    v15 = OBJC_IVAR____TtC10seserviced9AlishaHUP_logger;

    v10 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    v17 = os_log_type_enabled(v10, v16);
    v8 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    v30 = a1;
    v31 = a2;
    v32 = v15;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34[0] = v19;
      *v18 = 136315138;
      v20 = UUID.uuidString.getter();
      v22 = sub_1002FFA0C(v20, v21, v34);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v10, v16, "Received HUP event from %s", v18, 0xCu);
      sub_1000752F4(v19);
    }

    v23 = OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions;
    swift_beginAccess();
    v7 = *(v4 + v23);
    v33 = v4;
    if (!(v7 >> 62))
    {
      v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
LABEL_7:
  a1 = *v8;

  if (v24)
  {
    a2 = 0;
    v4 = v7 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = (a2 + 1);
        if (__OFADD__(a2, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (a2 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v10 = *(v7 + 8 * a2 + 32);

        v8 = (a2 + 1);
        if (__OFADD__(a2, 1))
        {
          goto LABEL_17;
        }
      }

      if (static UUID.== infix(_:_:)())
      {

        v29 = v30;
        v28 = v31;
        sub_100069E2C(v30, v31);
        [(objc_class *)v10[2].isa handleVehicleReportedResult:sub_1000939AC(v29, v28, 0, 0, 0) == 0];

        return;
      }

      ++a2;
    }

    while (v8 != v24);
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "No active HUP session", v27, 2u);
  }
}

uint64_t sub_100152FB0()
{
  v1 = OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_connectionIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100153148(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100153224(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1001532E4(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12)
{
  v36 = a4;
  v37 = a8;
  v45 = a12;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v42 = *(v19 - 8);
  v43 = v19;
  __chkstk_darwin(v19);
  v38 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v39 = qword_10051B7F0;
  v21 = swift_allocObject();
  v22 = v45;
  v21[2] = v46;
  v21[3] = a1;
  v21[4] = a2;
  v21[5] = a3;
  v23 = a5;
  v21[6] = a5;
  v21[7] = a6;
  v24 = a6;
  v25 = a7;
  v21[8] = a7;
  v26 = v37;
  v21[9] = v37;
  v21[10] = a9;
  v21[11] = a10;
  v21[12] = a11;
  v35 = a1;
  v27 = v36;
  v21[13] = v22;
  v21[14] = v27;
  aBlock[4] = sub_100157090;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C9058;
  v36 = _Block_copy(aBlock);
  v28 = v46;
  v29 = v35;
  sub_100069E2C(a2, a3);
  sub_10006A2BC(v23, v24);
  sub_10006A2BC(v25, v26);
  sub_10006A2BC(a9, a10);
  sub_10006A2BC(a11, v45);
  v30 = v38;
  static DispatchQoS.unspecified.getter();
  v47 = _swiftEmptyArrayStorage;
  sub_100147FB4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  v31 = v40;
  v32 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v33 = v36;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);
  (*(v44 + 8))(v31, v32);
  (*(v42 + 8))(v30, v43);
}

void sub_100153698(uint8_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, char *a13)
{
  v161 = a8;
  v164 = a6;
  v162 = a5;
  v165 = a4;
  v160 = a3;
  v158 = type metadata accessor for UUID();
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v151 = v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v152 = v141 - v19;
  __chkstk_darwin(v20);
  v155 = (v141 - v21);
  v154 = type metadata accessor for DispatchPredicate();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v23 = (v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v24 - 8);
  v26 = v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v141 - v28;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Received HUP delegate requestedPairingWithDeviceAddress for CARWirelessPairingSession", v13, 2u);
  }

  v159 = a7;

  v32 = OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions;
  swift_beginAccess();
  v163 = v32;
  v33 = *&a1[v32];
  v166 = a1;
  v157 = v29;
  if (v33 >> 62)
  {
    v34 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v34)
  {
LABEL_16:

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "No active HUP session", v38, 2u);
    }

    return;
  }

  v35 = 0;
  v149 = a12;
  v147 = a11;
  v150 = a10;
  v148 = a9;
  v146 = a13;
  while (1)
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v167 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v13 = (v35 + 1);
      if (__OFADD__(v35, 1))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_84;
      }

      v167 = *(v33 + 8 * v35 + 32);

      v13 = (v35 + 1);
      if (__OFADD__(v35, 1))
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    if (*(v167 + 16) == a2)
    {
      break;
    }

    ++v35;
    if (v13 == v34)
    {
      goto LABEL_16;
    }
  }

  v39 = v167;
  v34 = OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_timer;
  v40 = *(v167 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_timer);
  if (v40)
  {
    sub_1003AE754(v40);
    v39 = v167;
  }

  v41 = qword_1005019E8;

  v13 = v166;
  if (v41 != -1)
  {
    swift_once();
  }

  v42 = swift_allocObject();
  *(v42 + 16) = sub_1001570D0;
  *(v42 + 24) = v39;

  v43 = sub_1000CAA04();

  a2 = sub_1000CA810(v43);

  if (!a2)
  {
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Endpoint does not exist or is not paired", v47, 2u);
    }

    [*(v167 + 16) invalidate];
    v35 = *&v13[v163];
    v169 = _swiftEmptyArrayStorage;
    if (v35 >> 62)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = &unk_100504000;

    if (v34)
    {
      a2 = 0;
      v48 = v35 & 0xC000000000000001;
      v49 = v35 & 0xFFFFFFFFFFFFFF8;
      v23 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      v164 = v35;
      v165 = v34;
      do
      {
        if (v48)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a2 >= *(v49 + 16))
          {
            goto LABEL_98;
          }

          v26 = *(v35 + 8 * a2 + 32);
        }

        v13 = (a2 + 1);
        if (__OFADD__(a2, 1))
        {
          goto LABEL_97;
        }

        if (static UUID.== infix(_:_:)())
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v35 = v164;
          v34 = v165;
        }

        ++a2;
      }

      while (v13 != v34);
      v54 = v169;
      v13 = v166;
    }

    else
    {
      v54 = _swiftEmptyArrayStorage;
    }

    *&v13[v163] = v54;

    return;
  }

  v44 = v165 >> 62;
  if ((v165 >> 62) > 1)
  {
    v33 = v164;
    v35 = v162;
    if (v44 != 2)
    {
      goto LABEL_117;
    }

    v51 = *(v160 + 16);
    v50 = *(v160 + 24);
    v52 = __OFSUB__(v50, v51);
    v53 = v50 - v51;
    if (!v52)
    {
      if (v53 != 6)
      {
        goto LABEL_117;
      }

      goto LABEL_50;
    }

    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v33 = v164;
  v35 = v162;
  if (v44)
  {
    if (!__OFSUB__(HIDWORD(v160), v160))
    {
      if (HIDWORD(v160) - v160 != 6)
      {
        goto LABEL_117;
      }

      goto LABEL_50;
    }

    goto LABEL_168;
  }

  if (BYTE6(v165) != 6)
  {
    goto LABEL_117;
  }

LABEL_50:
  if (v33 >> 60 != 15)
  {
    v55 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v55 != 2)
      {
LABEL_116:
        sub_10006A2D0(v35, v33);
        goto LABEL_117;
      }

      v58 = *(v35 + 16);
      v57 = *(v35 + 24);
      v56 = v57 - v58;
      if (!__OFSUB__(v57, v58))
      {
        goto LABEL_62;
      }

      __break(1u);
    }

    else if (!v55)
    {
      v56 = BYTE6(v33);
LABEL_63:
      if (v56 != 16 || v161 >> 60 == 15)
      {
        goto LABEL_116;
      }

      v59 = v161 >> 62;
      if ((v161 >> 62) > 1)
      {
        if (v59 != 2)
        {
LABEL_115:
          sub_10006A2D0(v159, v161);
          goto LABEL_116;
        }

        v61 = v159;
        v63 = *(v159 + 16);
        v62 = *(v159 + 24);
        v60 = v62 - v63;
        if (!__OFSUB__(v62, v63))
        {
          goto LABEL_74;
        }

        __break(1u);
      }

      else if (!v59)
      {
        v60 = BYTE6(v161);
LABEL_75:
        if (v60 != 16 || v150 >> 60 == 15)
        {
          goto LABEL_115;
        }

        v64 = v150 >> 62;
        if ((v150 >> 62) > 1)
        {
          if (v64 != 2)
          {
LABEL_114:
            sub_10006A2D0(v148, v150);
            goto LABEL_115;
          }

          v66 = v148;
          v68 = *(v148 + 16);
          v67 = *(v148 + 24);
          v65 = v67 - v68;
          if (!__OFSUB__(v67, v68))
          {
            goto LABEL_87;
          }

          __break(1u);
LABEL_84:
          __break(1u);
        }

        else if (!v64)
        {
          v65 = BYTE6(v150);
LABEL_88:
          if (v65 != 16 || v149 >> 60 == 15)
          {
            goto LABEL_114;
          }

          v69 = v149 >> 62;
          if ((v149 >> 62) > 1)
          {
            if (v69 != 2)
            {
LABEL_113:
              sub_10006A2D0(v147, v149);
              goto LABEL_114;
            }

            v71 = v147;
            v73 = *(v147 + 16);
            v72 = *(v147 + 24);
            v70 = v72 - v73;
            if (!__OFSUB__(v72, v73))
            {
              goto LABEL_101;
            }

            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
          }

          else if (!v69)
          {
            v70 = BYTE6(v149);
            goto LABEL_102;
          }

          v71 = v147;
          if (__OFSUB__(HIDWORD(v147), v147))
          {
            __break(1u);
            return;
          }

          v70 = HIDWORD(v147) - v147;
LABEL_101:
          sub_100069E2C(v71, v149);
LABEL_102:
          if (v70 == 16)
          {
            v145 = a2;
            if (v146 == 1)
            {
              v74 = 512;
            }

            else
            {
              v74 = (v146 == 2) << 10;
            }

            type metadata accessor for __DataStorage();
            swift_allocObject();
            v75 = __DataStorage.init(capacity:)();
            v173 = 0;
            v174 = (v75 | 0x4000000000000000);
            LOWORD(v168) = v74;
            v171 = &type metadata for UnsafeRawBufferPointer;
            v172 = &protocol witness table for UnsafeRawBufferPointer;
            v169 = &v168;
            v170 = &v168 + 2;
            sub_1000752B0(&v169, &type metadata for UnsafeRawBufferPointer);
            Data._Representation.append(contentsOf:)();
            sub_1000752F4(&v169);
            Data.append(_:)();
            LOWORD(v168) = v74;
            v171 = &type metadata for UnsafeRawBufferPointer;
            v172 = &protocol witness table for UnsafeRawBufferPointer;
            v169 = &v168;
            v170 = &v168 + 2;
            sub_1000752B0(&v169, &type metadata for UnsafeRawBufferPointer);
            Data._Representation.append(contentsOf:)();
            sub_1000752F4(&v169);
            Data.append(_:)();
            Data.append(_:)();
            Data.append(_:)();
            Data.append(_:)();
            if (qword_100501B60 != -1)
            {
              swift_once();
            }

            v141[1] = qword_10051B5A0;
            v165 = OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer;
            v146 = *(v167 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer);
            v142 = v173;
            v143 = v174;
            v76 = v156;
            v77 = *(v156 + 16);
            v78 = v157;
            v79 = v158;
            v160 = v156 + 16;
            v144 = v77;
            v77(v157, (v167 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_connectionIdentifier), v158);
            (*(v76 + 56))(v78, 0, 1, v79);
            if (qword_100501D90 != -1)
            {
              swift_once();
            }

            v80 = qword_10051B7F0;
            *v23 = qword_10051B7F0;
            v81 = v153;
            v82 = v154;
            (v153[13])(v23, enum case for DispatchPredicate.onQueue(_:), v154);
            v83 = v80;
            v84 = _dispatchPreconditionTest(_:)();
            v86 = v81[1];
            v85 = (v81 + 1);
            v86(v23, v82);
            if ((v84 & 1) == 0)
            {
              __break(1u);
              goto LABEL_175;
            }

            sub_1000756F8(v78, v26);
            v13 = v158;
            v87 = (*(v76 + 48))(v26, 1, v158);
            v88 = v155;
            if (v87 == 1)
            {
              sub_100156C78(v26);
              v80 = v146;
              goto LABEL_139;
            }

            goto LABEL_137;
          }

          goto LABEL_113;
        }

        v66 = v148;
        if (__OFSUB__(HIDWORD(v148), v148))
        {
          goto LABEL_173;
        }

        v65 = HIDWORD(v148) - v148;
LABEL_87:
        sub_100069E2C(v66, v150);
        goto LABEL_88;
      }

      v61 = v159;
      if (__OFSUB__(HIDWORD(v159), v159))
      {
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
      }

      v60 = HIDWORD(v159) - v159;
LABEL_74:
      sub_100069E2C(v61, v161);
      goto LABEL_75;
    }

    if (__OFSUB__(HIDWORD(v35), v35))
    {
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    v56 = HIDWORD(v35) - v35;
LABEL_62:
    sub_100069E2C(v35, v33);
    goto LABEL_63;
  }

LABEL_117:
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&_mh_execute_header, v89, v90, "Invalid parameters", v91, 2u);
  }

  [*(v167 + 16) invalidate];
  v92 = *&v13[v163];
  v169 = _swiftEmptyArrayStorage;
  if (v92 >> 62)
  {
    v34 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v34 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v34)
  {
    v145 = a2;
    v93 = 0;
    v94 = v92 & 0xC000000000000001;
    v76 = v92 & 0xFFFFFFFFFFFFFF8;
    v88 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    v164 = v92;
    v165 = v34;
    while (1)
    {
      if (v94)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v93 >= *(v76 + 16))
        {
          goto LABEL_136;
        }

        v26 = *(v92 + 8 * v93 + 32);
      }

      v13 = (v93 + 1);
      if (__OFADD__(v93, 1))
      {
        break;
      }

      if (static UUID.== infix(_:_:)())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v92 = v164;
        v34 = v165;
      }

      ++v93;
      if (v13 == v34)
      {
        v95 = v169;
        v13 = v166;
        a2 = v145;
        goto LABEL_134;
      }
    }

    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    (*(v76 + 32))(v88, v26, v13);
    v97 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
    v98 = v146;
    swift_beginAccess();
    v99 = v152;
    v144(v152, &v98[v97], v13);
    v100 = static UUID.== infix(_:_:)();
    v101 = v76 + 8;
    v102 = *(v76 + 8);
    v102(v99, v13);
    if (v100)
    {
      v102(v88, v13);
      v80 = v98;
LABEL_139:
      v85 = sub_100239160(6, 23, v142, v143);
      v76 = v103;
      if (qword_100501960 == -1)
      {
LABEL_140:
        sub_1000E71A0(v85, v76, v80);
        sub_10006A178(v85, v76);
        sub_100156C78(v157);
LABEL_161:
        v136 = v164;
        v137 = v162;
        v138 = *(v167 + v34);
        v139 = v145;
        if (v138)
        {
          v140 = v138;
          sub_1003AE618(v140, 300.0);
          sub_10006A2D0(v137, v136);
          sub_10006A2D0(v159, v161);
          sub_10006A2D0(v148, v150);
        }

        else
        {
          sub_10006A2D0(v162, v164);
          sub_10006A2D0(v159, v161);
          sub_10006A2D0(v148, v150);
        }

        sub_10006A2D0(v147, v149);

        sub_10006A178(v173, v174);
        return;
      }

LABEL_175:
      swift_once();
      goto LABEL_140;
    }

    v156 = v101;
    v104 = v151;
    v144(v151, v88, v13);

    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v154 = v107;
      v153 = swift_slowAlloc();
      v168 = v153;
      *v107 = 136315394;
      sub_100147FB4(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v143 = v105;
      LODWORD(v142) = v106;
      v108 = dispatch thunk of CustomStringConvertible.description.getter();
      v110 = v109;
      v102(v104, v158);
      v111 = sub_1002FFA0C(v108, v110, &v168);
      v88 = v155;
      v13 = v158;

      v112 = v154;
      *(v154 + 4) = v111;
      *(v112 + 12) = 2080;
      v113 = &v98[v97];
      v114 = v152;
      v144(v152, v113, v13);
      v115 = dispatch thunk of CustomStringConvertible.description.getter();
      v117 = v116;
      v102(v114, v13);
      v118 = sub_1002FFA0C(v115, v117, &v168);

      v119 = v154;
      *(v154 + 14) = v118;
      v120 = v143;
      _os_log_impl(&_mh_execute_header, v143, v142, "Connection identifier has changed %s %s", v119, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v102(v104, v13);
    }

    sub_100079E24();
    v121 = swift_allocError();
    *v122 = 2;
    swift_willThrow();
    v102(v88, v13);
    sub_100156C78(v157);
    swift_errorRetain();
    v123 = v166;
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v168 = v127;
      *v126 = 136315138;
      swift_getErrorValue();
      v128 = Error.localizedDescription.getter();
      v130 = sub_1002FFA0C(v128, v129, &v168);

      *(v126 + 4) = v130;
      v123 = v166;
      _os_log_impl(&_mh_execute_header, v124, v125, "Failed to send HUP_RQ %s", v126, 0xCu);
      sub_1000752F4(v127);
    }

    [*(v167 + 16) invalidate];
    v131 = *&v123[v163];
    v168 = _swiftEmptyArrayStorage;
    v158 = v121;
    if (v131 >> 62)
    {
      v132 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v132 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v132)
    {
LABEL_160:

      *&v123[v163] = v168;

      goto LABEL_161;
    }

    v133 = 0;
    v134 = v131 & 0xFFFFFFFFFFFFFF8;
    v160 = v131 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v131 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v133 >= *(v134 + 16))
        {
          goto LABEL_170;
        }
      }

      v135 = v133 + 1;
      if (__OFADD__(v133, 1))
      {
        goto LABEL_169;
      }

      if (static UUID.== infix(_:_:)())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v123 = v166;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v134 = v160;
      }

      ++v133;
      if (v135 == v132)
      {
        goto LABEL_160;
      }
    }
  }

  v95 = _swiftEmptyArrayStorage;
LABEL_134:

  *&v13[v163] = v95;

  sub_100150214();
  v96 = objc_opt_self();
  sub_10004CB20(v96, a2, 2147483651);
}

uint64_t sub_100154DC0(void *a1, uint64_t a2)
{
  v4 = [a1 publicKeyIdentifier];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (*(a2 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer) + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v10 = *v8;
  v9 = v8[1];
  if (v7 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10006A2BC(v10, v9);
      sub_10006A2D0(v5, v7);
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (v9 >> 60 == 15)
  {
LABEL_5:
    sub_10006A2BC(v10, v9);
    sub_10006A2D0(v5, v7);
    sub_10006A2D0(v10, v9);
    return 0;
  }

  sub_10006A2BC(v10, v9);
  sub_10006A2BC(v10, v9);
  sub_100069E2C(v5, v7);
  v12 = sub_10008FB4C(v5, v7, v10, v9);
  sub_10006A2D0(v10, v9);
  sub_10006A2D0(v10, v9);
  sub_10006A178(v5, v7);
  sub_10006A2D0(v5, v7);
  if (!v12)
  {
    return 0;
  }

LABEL_8:
  result = [a1 bleUUID];
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t sub_100155114(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17[1] = qword_10051B7F0;
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a2;
  v12[4] = a1;
  aBlock[4] = sub_100156FD4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C8FE0;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100147FB4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v18);
}

void sub_100155420(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v111 = v6;
  v112 = v7;
  __chkstk_darwin(v6);
  v104 = v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v105 = v101 - v10;
  __chkstk_darwin(v11);
  v13 = v101 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v18 - 8);
  v107 = (v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v113 = v101 - v21;
  v22 = OBJC_IVAR____TtC10seserviced9AlishaHUP_logger;
  v118 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v25 = os_log_type_enabled(v23, v24);
  v115 = v22;
  v106 = v13;
  v109 = v15;
  v110 = v14;
  v108 = v17;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v121[0] = v27;
    *v26 = 136315138;
    v28 = a2;
    v120 = a2;
    type metadata accessor for CARWirelessPairingResult(0);
    v29 = String.init<A>(describing:)();
    v31 = sub_1002FFA0C(v29, v30, v121);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "Received HUP delegate completedWithResult %s", v26, 0xCu);
    sub_1000752F4(v27);
  }

  else
  {
    v28 = a2;
  }

  [a3 invalidate];
  v32 = OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions;
  v33 = v118;
  swift_beginAccess();
  v114 = v32;
  v34 = *(v33 + v32);
  if (v34 >> 62)
  {
LABEL_65:
    v35 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v35)
  {
    goto LABEL_17;
  }

  v36 = 0;
  while (1)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
LABEL_16:
        __break(1u);
LABEL_17:

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v39, v40, "No active HUP session", v41, 2u);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v37 = *(v34 + 8 * v36 + 32);

      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_16;
      }
    }

    if (*(v37 + 16) == a3)
    {
      break;
    }

    ++v36;
    if (v38 == v35)
    {
      goto LABEL_17;
    }
  }

  v42 = *(v37 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_timer);
  if (v42)
  {
    sub_1003AE754(v42);
  }

  v34 = *(v118 + v114);
  v120 = _swiftEmptyArrayStorage;
  v43 = v28;
  if (v34 >> 62)
  {
    v44 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v44 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer;

  v103 = v28;
  if (!v44)
  {
    v48 = _swiftEmptyArrayStorage;
    goto LABEL_37;
  }

  v46 = 0;
  v47 = v34 & 0xC000000000000001;
  a3 = (v34 & 0xFFFFFFFFFFFFFF8);
  v116 = v34 & 0xC000000000000001;
  v117 = v37;
  while (v47)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v28 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_34;
    }

LABEL_30:
    if (static UUID.== infix(_:_:)())
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v47 = v116;
      v37 = v117;
    }

    ++v46;
    if (v28 == v44)
    {
      goto LABEL_35;
    }
  }

  if (v46 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_64;
  }

  v28 = v46 + 1;
  if (!__OFADD__(v46, 1))
  {
    goto LABEL_30;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  v48 = v120;
  v43 = v103;
LABEL_37:

  *(v118 + v114) = v48;

  if (!v43 || *(v37 + 24) != 1)
  {
    goto LABEL_55;
  }

  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  v49 = qword_10051B5A0;
  v50 = sub_10013044C(0xD000000000000094, 0x8000000100464740);
  v52 = v111;
  if (v51 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v53 = v51;
    v114 = v49;
    v116 = v50;
    v54 = *(v37 + v45);
    v55 = v112;
    v56 = v113;
    v57 = v112 + 16;
    v58 = *(v112 + 16);
    v58(v113, v37 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_connectionIdentifier, v111);
    (*(v55 + 56))(v56, 0, 1, v52);
    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v59 = qword_10051B7F0;
    v61 = v108;
    v60 = v109;
    *v108 = qword_10051B7F0;
    v62 = v110;
    (*(v60 + 104))(v61, enum case for DispatchPredicate.onQueue(_:), v110);
    v63 = v59;
    v64 = _dispatchPreconditionTest(_:)();
    v65 = *(v60 + 8);
    v43 = v60 + 8;
    v65(v61, v62);
    if ((v64 & 1) == 0)
    {
      __break(1u);
      goto LABEL_68;
    }

    v66 = v107;
    sub_1000756F8(v113, v107);
    v68 = v111;
    v67 = v112;
    if ((*(v112 + 48))(v66, 1, v111) == 1)
    {
      sub_100156C78(v66);
      goto LABEL_49;
    }

    v110 = v53;
    v69 = v106;
    (*(v67 + 32))(v106, v66, v68);
    v70 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
    swift_beginAccess();
    v109 = v70;
    v71 = v105;
    v58(v105, v54 + v70, v68);
    v72 = v67;
    v73 = static UUID.== infix(_:_:)();
    v76 = *(v72 + 8);
    v74 = v72 + 8;
    v75 = v76;
    v76(v71, v68);
    if (v73)
    {
      v75(v69, v68);
      v53 = v110;
LABEL_49:
      v61 = v116;
      v59 = sub_100239160(6, 23, v116, v53);
      v57 = v77;
      v43 = v103;
      if (qword_100501960 == -1)
      {
LABEL_50:
        sub_1000E71A0(v59, v57, v54);
        sub_10006A178(v59, v57);
        sub_10006A2D0(v61, v53);
        sub_100156C78(v113);
        goto LABEL_55;
      }

LABEL_68:
      swift_once();
      goto LABEL_50;
    }

    v108 = v75;
    v112 = v74;
    v78 = v104;
    v58(v104, v69, v68);

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v107 = v79;
      v82 = v81;
      v114 = swift_slowAlloc();
      v119 = v114;
      *v82 = 136315394;
      v101[1] = sub_100147FB4(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v102 = v80;
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v84;
      v86 = v108;
      v108(v78, v68);
      v87 = sub_1002FFA0C(v83, v85, &v119);

      *(v82 + 4) = v87;
      *(v82 + 12) = 2080;
      v88 = v105;
      v58(v105, v54 + v109, v68);
      v89 = v86;
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v91;
      v89(v88, v68);
      v93 = sub_1002FFA0C(v90, v92, &v119);

      *(v82 + 14) = v93;
      v94 = v107;
      _os_log_impl(&_mh_execute_header, v107, v102, "Connection identifier has changed %s %s", v82, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v89 = v108;
      v108(v78, v68);
    }

    sub_10006A2D0(v116, v110);
    v43 = v103;
    v89(v106, v68);
    sub_100156C78(v113);
LABEL_55:
    v95 = qword_1005019E8;

    if (v95 != -1)
    {
      swift_once();
    }

    v96 = swift_allocObject();
    *(v96 + 16) = sub_100156FE0;
    *(v96 + 24) = v37;

    v97 = sub_1000CAA04();

    v39 = sub_1000CA810(v97);

    if (v39)
    {
      sub_100150214();
      v98 = objc_opt_self();
      sub_10004CB20(v98, v39, v43);
    }

    else
    {
      v39 = Logger.logObject.getter();
      v99 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&_mh_execute_header, v39, v99, "No endpoint found", v100, 2u);
      }
    }

LABEL_62:
  }
}

BOOL sub_10015611C(void *a1, uint64_t a2)
{
  v3 = [a1 publicKeyIdentifier];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = (*(a2 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer) + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v9 = *v7;
  v8 = v7[1];
  if (v6 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      sub_10006A2BC(v9, v8);
      sub_10006A2D0(v4, v6);
      return 1;
    }

    goto LABEL_5;
  }

  if (v8 >> 60 == 15)
  {
LABEL_5:
    sub_10006A2BC(v9, v8);
    sub_10006A2D0(v4, v6);
    sub_10006A2D0(v9, v8);
    return 0;
  }

  sub_10006A2BC(v9, v8);
  sub_10006A2BC(v9, v8);
  sub_100069E2C(v4, v6);
  v11 = sub_10008FB4C(v4, v6, v9, v8);
  sub_10006A2D0(v9, v8);
  sub_10006A2D0(v9, v8);
  sub_10006A178(v4, v6);
  sub_10006A2D0(v4, v6);
  return v11;
}

uint64_t sub_1001562E4(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v22 = *(v5 - 8);
  v23 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 publicKeyIdentifier];
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  aBlock = sub_100288788(v10, v12);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
  BidirectionalCollection<>.joined(separator:)();
  sub_10006A178(v10, v12);

  v13 = String._bridgeToObjectiveC()();

  v30 = sub_100156744;
  v31 = 0;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1000A409C;
  v29 = &unk_1004C8F40;
  v14 = _Block_copy(&aBlock);
  v15 = SESEndPointUpdateWithBlock();
  _Block_release(v14);

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  v30 = sub_100156F40;
  v31 = v16;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_100080830;
  v29 = &unk_1004C8F90;
  v17 = _Block_copy(&aBlock);
  v18 = v15;
  v19 = a1;
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100147FB4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v24 + 8))(v4, v2);
  (*(v22 + 8))(v8, v23);
}

void sub_100156744(void *a1)
{
  sub_100156F48();
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  [a1 setHupDone:isa];
}

uint64_t sub_1001567AC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v34[-v9];
  if (a1)
  {
    swift_errorRetain();
    if (qword_100501D88 != -1)
    {
      swift_once();
    }

    (*(v5 + 16))(v7, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v4);
    swift_errorRetain();
    v11 = a2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40 = v38;
      *v14 = 136315394;
      v15 = [v11 publicKeyIdentifier];
      v36 = v12;
      v16 = v15;
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v39 = sub_100288788(v17, v19);
      v35 = v13;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      v37 = v4;
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v20 = BidirectionalCollection<>.joined(separator:)();
      v22 = v21;
      sub_10006A178(v17, v19);

      v23 = sub_1002FFA0C(v20, v22, &v40);

      *(v14 + 4) = v23;
      *(v14 + 12) = 2080;
      swift_getErrorValue();
      v24 = Error.localizedDescription.getter();
      v26 = sub_1002FFA0C(v24, v25, &v40);

      *(v14 + 14) = v26;
      v27 = v36;
      _os_log_impl(&_mh_execute_header, v36, v35, "Failed to update HUP done for %s %s", v14, 0x16u);
      swift_arrayDestroy();

      return (*(v5 + 8))(v7, v37);
    }

    v32 = *(v5 + 8);
    v33 = v7;
  }

  else
  {
    if (qword_100501D88 != -1)
    {
      swift_once();
    }

    (*(v5 + 16))(v10, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v4);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Endpoint updated with hupDone", v31, 2u);
    }

    v32 = *(v5 + 8);
    v33 = v10;
  }

  return v32(v33, v4);
}

uint64_t sub_100156C40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100156C78(uint64_t a1)
{
  v2 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100156CE0()
{
  sub_10006A178(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100156D34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100156D4C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100156D84()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100156DD8()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100156E10(void *a1)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a1 setHupData:isa];
}

uint64_t sub_100156E6C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100156EC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100156F00()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100156F48()
{
  result = qword_100504C80;
  if (!qword_100504C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100504C80);
  }

  return result;
}

uint64_t sub_100156F94()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100156FE8()
{
  sub_10006A178(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    sub_10006A178(*(v0 + 48), v1);
  }

  v2 = *(v0 + 72);
  if (v2 >> 60 != 15)
  {
    sub_10006A178(*(v0 + 64), v2);
  }

  v3 = *(v0 + 88);
  if (v3 >> 60 != 15)
  {
    sub_10006A178(*(v0 + 80), v3);
  }

  v4 = *(v0 + 104);
  if (v4 >> 60 != 15)
  {
    sub_10006A178(*(v0 + 96), v4);
  }

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_100157174(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        _StringGuts.grow(_:)(26);

        v13 = 0xD000000000000018;
        swift_getErrorValue();
        v12._countAndFlagsBits = Error.localizedDescription.getter();
        String.append(_:)(v12);

        return v13;
      }

      _StringGuts.grow(_:)(49);

      v13 = 0xD000000000000023;
      v5._countAndFlagsBits = a1;
      v5._object = a2;
      String.append(_:)(v5);
    }

    else
    {
      _StringGuts.grow(_:)(44);

      v13 = 0xD00000000000001ELL;
      v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v8);
    }

    v9 = 0x746E756F636E6520;
    v10 = 0xEC00000064657265;
LABEL_12:
    String.append(_:)(*&v9);
    return v13;
  }

  if (a3 == 3)
  {
    v6 = a2;
    _StringGuts.grow(_:)(19);

    v7 = 0xD000000000000011;
    goto LABEL_11;
  }

  if (a3 == 4)
  {
    v6 = a2;
    _StringGuts.grow(_:)(20);

    v7 = 0xD000000000000012;
LABEL_11:
    v13 = v7;
    v9 = a1;
    v10 = v6;
    goto LABEL_12;
  }

  if (a1 | a2)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000033;
  }
}

uint64_t sub_1001573F4(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1001574C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100157598(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100157664(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_10051B2F0);
  sub_1000958E4(v2, qword_10051B2F0);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001576D8()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  sub_1000B6A94(v0, qword_100504C88);
  sub_1000958E4(v0, qword_100504C88);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1001577D0()
{
  v1._object = 0xEE006D2D646D2D69;
  v1._countAndFlagsBits = 0x2D656C7070612D78;
  if (URLRequest.value(forHTTPHeaderField:)(v1).value._object && (, v2._object = 0xEC000000646D2D69, v2._countAndFlagsBits = 0x2D656C7070612D78, URLRequest.value(forHTTPHeaderField:)(v2).value._object) && (, v3._object = 0x8000000100464A70, v3._countAndFlagsBits = 0xD000000000000012, URLRequest.value(forHTTPHeaderField:)(v3).value._object))
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = [objc_allocWithZone(AKAnisetteProvisioningController) init];
    v0[20] = v6;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1001579C4;
    v7 = swift_continuation_init();
    v0[17] = sub_100068FC4(&qword_100504D58, &qword_10040C020);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001573F4;
    v0[13] = &unk_1004C9158;
    v0[14] = v7;
    [v6 anisetteDataWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1001579C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_100157DB4;
  }

  else
  {
    v2 = sub_100157AD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_100157AD4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 144);
  if (v3)
  {
    result = [*(v2 + 144) machineID];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *(v2 + 80) = v6;
    *(v2 + 88) = v8;
    v9.value._countAndFlagsBits = String.init<A>(_:)();
    v10._object = 0xEE006D2D646D2D69;
    v10._countAndFlagsBits = 0x2D656C7070612D78;
    URLRequest.setValue(_:forHTTPHeaderField:)(v9, v10);

    v11 = [v3 oneTimePassword];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v23 = *(v2 + 160);
    v24._object = 0xEC000000646D2D69;
    v25.value._countAndFlagsBits = v13;
    v25.value._object = v15;
    v24._countAndFlagsBits = 0x2D656C7070612D78;
    URLRequest.setValue(_:forHTTPHeaderField:)(v25, v24);

    *(v2 + 80) = [v3 routingInfo];
    v26.value._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v27._object = 0x8000000100464A70;
    v27._countAndFlagsBits = 0xD000000000000012;
    URLRequest.setValue(_:forHTTPHeaderField:)(v26, v27);

    v22 = *(v2 + 8);
  }

  else
  {
    if (qword_1005019F8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000958E4(v16, qword_10051B2F0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Anisette data is nil", v19, 2u);
    }

    v20 = *(v2 + 160);

    sub_10015CC60();
    swift_allocError();
    *v21 = xmmword_10040BF80;
    *(v21 + 16) = 5;
    swift_willThrow();

    v22 = *(v2 + 8);
  }

  return v22();
}

uint64_t sub_100157DB4(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100157E24(uint64_t a1)
{
  v1[22] = a1;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_100157EF0, 0, 0);
}

uint64_t sub_100157EF0()
{
  v1._countAndFlagsBits = 0x7A69726F68747561;
  v1._object = 0xED00006E6F697461;
  if (URLRequest.value(forHTTPHeaderField:)(v1).value._object)
  {

    if (qword_1005019F8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000958E4(v2, qword_10051B2F0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Auth header already exists", v5, 2u);
    }

LABEL_15:

    v16 = *(v0 + 8);
LABEL_16:

    return v16();
  }

  if (qword_100501A00 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = *(v0 + 184);
  v9 = sub_1000958E4(v8, qword_100504C88);
  (*(v7 + 16))(v6, v9, v8);
  UserDefaultBacked.wrappedValue.getter();
  (*(v7 + 8))(v6, v8);
  if (*(v0 + 256))
  {
    if (qword_1005019F8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_10051B2F0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Skipping AuthKit header", v13, 2u);
    }

    v14.value._countAndFlagsBits = 0xD00000000000001ALL;
    v14.value._object = 0x80000001004649E0;
    v15._countAndFlagsBits = 0x7A69726F68747561;
    v15._object = 0xED00006E6F697461;
    URLRequest.setValue(_:forHTTPHeaderField:)(v14, v15);
    goto LABEL_15;
  }

  v18 = [objc_opt_self() defaultStore];
  *(v0 + 208) = v18;
  if (!v18)
  {
LABEL_28:
    if (qword_1005019F8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000958E4(v29, qword_10051B2F0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unable to get AIDA information", v32, 2u);
    }

    sub_10015CC60();
    swift_allocError();
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 16) = 5;
    swift_willThrow();

    v16 = *(v0 + 8);
    goto LABEL_16;
  }

  v19 = v18;
  v20 = [v18 aida_accountForPrimaryiCloudAccount];
  *(v0 + 216) = v20;
  if (!v20)
  {
    v21 = v19;
LABEL_27:

    goto LABEL_28;
  }

  v21 = v20;
  v22 = [v20 aida_alternateDSID];
  if (!v22)
  {

    goto LABEL_27;
  }

  v23 = v22;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  *(v0 + 160) = v24;
  *(v0 + 168) = v25;

  *(v0 + 224) = v26;
  v27 = String._bridgeToObjectiveC()();
  *(v0 + 232) = v27;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100158474;
  v28 = swift_continuation_init();
  *(v0 + 136) = sub_100068FC4(&qword_100504D40, &unk_10040BFF8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001574C4;
  *(v0 + 104) = &unk_1004C9108;
  *(v0 + 112) = v28;
  [v21 aida_tokenForService:v27 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100158474()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {

    v3 = sub_1001586E0;
  }

  else
  {
    *(v1 + 248) = *(v1 + 160);
    v3 = sub_100158594;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100158594()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 216);
  v12 = *(v0 + 208);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);

  sub_100068FC4(&qword_100502440, &unk_10040B240);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100409900;
  *(v6 + 56) = &type metadata for String;
  v7 = sub_1000959BC();
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v7;
  *(v6 + 64) = v7;
  *(v6 + 72) = v4;
  *(v6 + 80) = v5;
  v8.value._countAndFlagsBits = String.init(format:_:)();
  v9._countAndFlagsBits = 0x7A69726F68747561;
  v9._object = 0xED00006E6F697461;
  URLRequest.setValue(_:forHTTPHeaderField:)(v8, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1001586E0(uint64_t a1)
{
  v2 = v1[29];
  swift_willThrow();

  if (qword_1005019F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2F0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to get AIDA token", v6, 2u);
  }

  v8 = v1[26];
  v7 = v1[27];

  sub_10015CC60();
  swift_allocError();
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 5;
  swift_willThrow();

  v10 = v1[1];

  return v10();
}

uint64_t sub_10015885C(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_10015887C, 0, 0);
}

uint64_t sub_10015887C()
{
  v1 = [objc_opt_self() defaultStore];
  v0[21] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 aida_accountForPrimaryiCloudAccount];
    v0[22] = v3;
    if (v3)
    {
      v4 = v3;
      sub_100068FC4(&qword_100504D48, &qword_10040C010);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1004098F0;
      *(v5 + 56) = &type metadata for String;
      *(v5 + 32) = 0xD000000000000014;
      *(v5 + 40) = 0x8000000100464980;
      isa = Array._bridgeToObjectiveC()().super.isa;
      v0[23] = isa;

      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_100158B98;
      v7 = swift_continuation_init();
      v0[17] = sub_100068FC4(&qword_100504D50, &qword_10040C018);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_100157598;
      v0[13] = &unk_1004C9130;
      v0[14] = v7;
      [v2 aida_renewCredentialsForAccount:v4 services:isa force:1 completion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }
  }

  if (qword_1005019F8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000958E4(v8, qword_10051B2F0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Unable to get AIDA information", v11, 2u);
  }

  sub_10015CC60();
  swift_allocError();
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 5;
  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t sub_100158B98()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_10015909C;
  }

  else
  {
    v2 = sub_100158CA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100158CA8()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    if (qword_1005019F8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000958E4(v2, qword_10051B2F0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_17;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Grandslam token renewal failed";
    goto LABEL_16;
  }

  if (qword_1005019F8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000958E4(v7, qword_10051B2F0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 160);
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2048;
    *(v11 + 14) = 3;
    _os_log_impl(&_mh_execute_header, v8, v9, "Grandslam token renewal successful, trying again %ld out of %ld", v11, 0x16u);
  }

  v12 = *(v0 + 176);

  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 aida_tokenWithExpiryCheckForService:v13];

  if (v14)
  {
    v15 = *(v0 + 176);
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v15 aida_alternateDSID];
    if (v19)
    {
      v20 = *(v0 + 176);
      v34 = *(v0 + 168);
      v21 = v19;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      sub_100068FC4(&qword_100502440, &unk_10040B240);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100409900;
      *(v25 + 56) = &type metadata for String;
      v26 = sub_1000959BC();
      *(v25 + 32) = v22;
      *(v25 + 40) = v24;
      *(v25 + 96) = &type metadata for String;
      *(v25 + 104) = v26;
      *(v25 + 64) = v26;
      *(v25 + 72) = v16;
      *(v25 + 80) = v18;
      v27.value._countAndFlagsBits = String.init(format:_:)();
      v28._countAndFlagsBits = 0x7A69726F68747561;
      v28._object = 0xED00006E6F697461;
      URLRequest.setValue(_:forHTTPHeaderField:)(v27, v28);

      v29 = *(v0 + 8);
      goto LABEL_18;
    }
  }

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Unable to get aida info after renewal";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);
  }

LABEL_17:
  v31 = *(v0 + 168);
  v30 = *(v0 + 176);

  sub_10015CC60();
  swift_allocError();
  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = 5;
  swift_willThrow();

  v29 = *(v0 + 8);
LABEL_18:

  return v29();
}

uint64_t sub_10015909C(uint64_t a1)
{
  v2 = v1[23];
  swift_willThrow();

  if (qword_1005019F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2F0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to renew credentials with AIDA", v6, 2u);
  }

  v8 = v1[21];
  v7 = v1[22];

  sub_10015CC60();
  swift_allocError();
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 5;
  swift_willThrow();

  v10 = v1[1];

  return v10();
}

uint64_t sub_100159210(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 80) = a2;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_10015923C, 0, 0);
}

uint64_t sub_10015923C()
{
  v59 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  *(v0 + 56) = v1;
  v2 = qword_1005019F8;
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 48);
    if (v2 == -1)
    {
      v5 = v4;
    }

    else
    {
      swift_once();
      v5 = *(v0 + 48);
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2F0);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 48);
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = [v3 statusCode];

      _os_log_impl(&_mh_execute_header, v8, v9, "Response Status : %ld", v11, 0xCu);
    }

    else
    {

      v8 = *(v0 + 48);
    }

    v33 = *(v0 + 32);
    v32 = *(v0 + 40);

    sub_100069E2C(v33, v32);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    sub_10006A178(v33, v32);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v58[0] = v37;
      *v36 = 136315138;
      v38 = Data.base64EncodedString(options:)(0);
      v39 = sub_1002FFA0C(v38._countAndFlagsBits, v38._object, v58);

      *(v36 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v34, v35, "Response Data   : %s", v36, 0xCu);
      sub_1000752F4(v37);
    }

    v40 = [v3 statusCode];
    if ((v40 - 200) <= 0x62)
    {
      v41 = *(v0 + 48);
      sub_100069E2C(*(v0 + 32), *(v0 + 40));

      v42 = *(v0 + 8);
      v43 = *(v0 + 32);
      v44 = *(v0 + 40);

      return v42(v43, v44);
    }

    if (v40 == 401)
    {
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = *(v0 + 24);
        v49 = swift_slowAlloc();
        *v49 = 134218240;
        *(v49 + 4) = v48;
        *(v49 + 12) = 2048;
        *(v49 + 14) = 3;
        _os_log_impl(&_mh_execute_header, v46, v47, "GS Token invalid: attempt %ld of %ld", v49, 0x16u);
      }

      v50 = *(v0 + 80);

      if (v50 == 1)
      {
        v51 = swift_task_alloc();
        *(v0 + 64) = v51;
        *v51 = v0;
        v51[1] = sub_100159844;
        v53 = *(v0 + 16);
        v52 = *(v0 + 24);

        return sub_10015885C(v53, v52);
      }
    }

    v54 = *(v0 + 48);
    v55 = [*(v0 + 56) statusCode];
    sub_10015CC60();
    swift_allocError();
    *v56 = v55;
    *(v56 + 8) = 0;
    *(v56 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    if (qword_1005019F8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 48);
    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_10051B2F0);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 48);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v58[0] = v19;
      *v18 = 136315138;
      v20 = v17;
      v21 = [v20 description];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = sub_1002FFA0C(v22, v24, v58);

      *(v18 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "Invalid or nil HTTP response? %s", v18, 0xCu);
      sub_1000752F4(v19);
    }

    v26 = *(v0 + 48);
    v27 = [v26 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    sub_10015CC60();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = 1;
    swift_willThrow();
  }

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_100159844()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100159A0C;
  }

  else
  {
    v2 = sub_100159958;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100159958()
{
  v1 = *(v0 + 48);
  v2 = [*(v0 + 56) statusCode];
  sub_10015CC60();
  swift_allocError();
  *v3 = v2;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100159A0C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100159A70(uint64_t a1, char a2)
{
  *(v2 + 249) = a2;
  *(v2 + 360) = a1;
  v3 = type metadata accessor for URL();
  *(v2 + 368) = v3;
  *(v2 + 376) = *(v3 - 8);
  *(v2 + 384) = swift_task_alloc();
  sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  *(v2 + 392) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v2 + 400) = v4;
  *(v2 + 408) = *(v4 - 8);
  *(v2 + 416) = swift_task_alloc();
  v5 = type metadata accessor for URLRequest();
  *(v2 + 424) = v5;
  *(v2 + 432) = *(v5 - 8);
  *(v2 + 440) = swift_task_alloc();
  *(v2 + 448) = swift_task_alloc();

  return _swift_task_switch(sub_100159C30, 0, 0);
}

uint64_t sub_100159C30()
{
  v1 = v0[56];
  v2 = v0[53];
  v3 = v0[54];
  v4 = v0[45];
  v5 = *(v3 + 16);
  v0[57] = v5;
  v0[58] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = swift_task_alloc();
  v0[59] = v6;
  *v6 = v0;
  v6[1] = sub_100159CEC;
  v7 = v0[56];

  return sub_1001577B0(v7);
}

uint64_t sub_100159CEC()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_10015A4F4;
  }

  else
  {
    v2 = sub_100159E00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100159E00(uint64_t a1)
{
  v2 = *(v1 + 408);
  *(v1 + 488) = 0;
  *(v1 + 496) = 1;
  if (*(v1 + 249) == 1)
  {
    swift_beginAccess();
    v3 = swift_task_alloc();
    *(v1 + 504) = v3;
    *v3 = v1;
    v3[1] = sub_10015A5AC;
    v4 = *(v1 + 448);

    return sub_100157E24(v4);
  }

  else
  {
    v6 = *(v1 + 416);
    v7 = *(v1 + 400);
    UUID.init()();
    v8 = UUID.uuidString.getter();
    v10 = v9;
    (*(v2 + 8))(v6, v7);
    *(v1 + 256) = v8;
    *(v1 + 264) = v10;
    *(v1 + 272) = 45;
    *(v1 + 280) = 0xE100000000000000;
    *(v1 + 288) = 0;
    *(v1 + 296) = 0xE000000000000000;
    v60 = sub_10012512C();
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v13 = v12;

    swift_beginAccess();
    v14._countAndFlagsBits = 0x7365757165722D78;
    v14._object = 0xEC00000064692D74;
    v15.value._countAndFlagsBits = v11;
    v15.value._object = v13;
    URLRequest.setValue(_:forHTTPHeaderField:)(v15, v14);
    swift_endAccess();

    if (qword_1005019F8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    *(v1 + 520) = sub_1000958E4(v16, qword_10051B2F0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v1 + 392);
      v20 = *(v1 + 368);
      v21 = *(v1 + 376);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *(v1 + 352) = v23;
      *v22 = 136315138;
      swift_beginAccess();
      URLRequest.url.getter();
      v24 = (*(v21 + 48))(v19, 1, v20);
      v25 = *(v1 + 392);
      if (v24)
      {
        sub_10015CD2C(*(v1 + 392));
        swift_endAccess();
        v26 = 0xE400000000000000;
        v27 = 1701736302;
      }

      else
      {
        v29 = *(v1 + 376);
        v28 = *(v1 + 384);
        v30 = *(v1 + 368);
        (*(v29 + 16))(v28, *(v1 + 392), v30);
        sub_10015CD2C(v25);
        swift_endAccess();
        v31 = URL.absoluteString.getter();
        v26 = v32;
        (*(v29 + 8))(v28, v30);
        v27 = v31;
      }

      v33 = sub_1002FFA0C(v27, v26, (v1 + 352));

      *(v22 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v17, v18, "Request URL: %s", v22, 0xCu);
      sub_1000752F4(v23);
    }

    else
    {
    }

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *(v1 + 344) = v37;
      *v36 = 136315138;
      swift_beginAccess();
      if (URLRequest.allHTTPHeaderFields.getter())
      {
        swift_endAccess();
        v38 = Dictionary.debugDescription.getter();
        v40 = v39;
      }

      else
      {
        v38 = 0x3E656E6F6E3CLL;
        swift_endAccess();
        v40 = 0xE600000000000000;
      }

      v41 = sub_1002FFA0C(v38, v40, (v1 + 344));

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Request headers: %s", v36, 0xCu);
      sub_1000752F4(v37);
    }

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *(v1 + 336) = v45;
      *v44 = 136315138;
      swift_beginAccess();
      v46 = URLRequest.httpBody.getter();
      if (v47 >> 60 == 15)
      {
        countAndFlagsBits = 0x3E656E6F6E3CLL;
        swift_endAccess();
        object = 0xE600000000000000;
      }

      else
      {
        v50 = v46;
        v51 = v47;
        swift_endAccess();
        v52 = Data.base64EncodedString(options:)(0);
        countAndFlagsBits = v52._countAndFlagsBits;
        object = v52._object;
        sub_10006A2D0(v50, v51);
      }

      v53 = sub_1002FFA0C(countAndFlagsBits, object, (v1 + 336));

      *(v44 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v42, v43, "Request body: %s", v44, 0xCu);
      sub_1000752F4(v45);
    }

    v54 = *(v1 + 456);
    v55 = *(v1 + 440);
    v56 = *(v1 + 448);
    v57 = *(v1 + 424);
    *(v1 + 528) = [objc_opt_self() sharedSession];
    v54(v55, v56, v57);
    v58 = swift_task_alloc();
    *(v1 + 536) = v58;
    *v58 = v1;
    v58[1] = sub_10015ADE0;
    v59 = *(v1 + 440);

    return NSURLSession.data(for:delegate:)(v59, 0);
  }
}

uint64_t sub_10015A4F4()
{
  (*(v0[54] + 8))(v0[56], v0[53]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10015A5AC()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_10015AD14;
  }

  else
  {
    swift_endAccess();
    v2 = sub_10015A6C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015A6C8(uint64_t a1)
{
  v3 = v1[51];
  v2 = v1[52];
  v4 = v1[50];
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  v1[32] = v5;
  v1[33] = v7;
  v1[34] = 45;
  v1[35] = 0xE100000000000000;
  v1[36] = 0;
  v1[37] = 0xE000000000000000;
  v58 = sub_10012512C();
  v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v10 = v9;

  swift_beginAccess();
  v11._countAndFlagsBits = 0x7365757165722D78;
  v11._object = 0xEC00000064692D74;
  v12.value._countAndFlagsBits = v8;
  v12.value._object = v10;
  URLRequest.setValue(_:forHTTPHeaderField:)(v12, v11);
  swift_endAccess();

  if (qword_1005019F8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v1[65] = sub_1000958E4(v13, qword_10051B2F0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v1[49];
    v17 = v1[46];
    v18 = v1[47];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v1[44] = v20;
    *v19 = 136315138;
    swift_beginAccess();
    URLRequest.url.getter();
    v21 = (*(v18 + 48))(v16, 1, v17);
    v22 = v1[49];
    if (v21)
    {
      sub_10015CD2C(v1[49]);
      swift_endAccess();
      v23 = 0xE400000000000000;
      v24 = 1701736302;
    }

    else
    {
      v26 = v1[47];
      v25 = v1[48];
      v27 = v1[46];
      (*(v26 + 16))(v25, v1[49], v27);
      sub_10015CD2C(v22);
      swift_endAccess();
      v28 = URL.absoluteString.getter();
      v23 = v29;
      (*(v26 + 8))(v25, v27);
      v24 = v28;
    }

    v30 = sub_1002FFA0C(v24, v23, v1 + 44);

    *(v19 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v14, v15, "Request URL: %s", v19, 0xCu);
    sub_1000752F4(v20);
  }

  else
  {
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v1[43] = v34;
    *v33 = 136315138;
    swift_beginAccess();
    if (URLRequest.allHTTPHeaderFields.getter())
    {
      swift_endAccess();
      v35 = Dictionary.debugDescription.getter();
      v37 = v36;
    }

    else
    {
      v35 = 0x3E656E6F6E3CLL;
      swift_endAccess();
      v37 = 0xE600000000000000;
    }

    v38 = sub_1002FFA0C(v35, v37, v1 + 43);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "Request headers: %s", v33, 0xCu);
    sub_1000752F4(v34);
  }

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v1[42] = v42;
    *v41 = 136315138;
    swift_beginAccess();
    v43 = URLRequest.httpBody.getter();
    if (v44 >> 60 == 15)
    {
      countAndFlagsBits = 0x3E656E6F6E3CLL;
      swift_endAccess();
      object = 0xE600000000000000;
    }

    else
    {
      v47 = v43;
      v48 = v44;
      swift_endAccess();
      v49 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v49._countAndFlagsBits;
      object = v49._object;
      sub_10006A2D0(v47, v48);
    }

    v50 = sub_1002FFA0C(countAndFlagsBits, object, v1 + 42);

    *(v41 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v39, v40, "Request body: %s", v41, 0xCu);
    sub_1000752F4(v42);
  }

  v51 = v1[57];
  v52 = v1[55];
  v53 = v1[56];
  v54 = v1[53];
  v1[66] = [objc_opt_self() sharedSession];
  v51(v52, v53, v54);
  v55 = swift_task_alloc();
  v1[67] = v55;
  *v55 = v1;
  v55[1] = sub_10015ADE0;
  v56 = v1[55];

  return NSURLSession.data(for:delegate:)(v56, 0);
}

uint64_t sub_10015AD14()
{
  swift_endAccess();

  (*(v0[54] + 8))(v0[56], v0[53]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10015ADE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[68] = a1;
  v6[69] = a2;
  v6[70] = a3;
  v6[71] = v3;

  v7 = v5[66];
  v8 = v5[55];
  v9 = v5[54];
  v10 = v5[53];
  v13 = *(v9 + 8);
  v11 = v9 + 8;
  v12 = v13;
  if (v3)
  {
    v12(v8, v10);

    v14 = sub_10015BF88;
  }

  else
  {
    v6[72] = v12;
    v6[73] = v11 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v8, v10);

    v14 = sub_10015AF9C;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_10015AF9C()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 592) = v1;
  *v1 = v0;
  v1[1] = sub_10015B058;
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 496);
  v6 = *(v0 + 448);
  v7 = *(v0 + 249);

  return sub_100159210(v6, v7, v5, v4, v3, v2);
}

uint64_t sub_10015B058(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 600) = v2;

  if (v2)
  {
    v7 = sub_10015B28C;
  }

  else
  {
    *(v6 + 608) = a2;
    *(v6 + 616) = a1;
    swift_endAccess();
    v7 = sub_10015B198;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10015B198()
{
  v1 = v0[72];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[56];
  v6 = v0[53];

  sub_10006A178(v4, v3);
  v1(v5, v6);

  v7 = v0[1];
  v8 = v0[77];
  v9 = v0[76];

  return v7(v8, v9);
}

uint64_t sub_10015B28C()
{
  v106 = v0;
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  swift_endAccess();

  sub_10006A178(v3, v2);
  v4 = *(v0 + 600);
  *(v0 + 304) = v4;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {

    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
    v7 = *(v0 + 248);
    sub_10015CCB4(v6, v5, v7);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_10015CCF0(v6, v5, v7);
    v103 = v6;
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 496);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v105[0] = v12;
      *v11 = 136315650;
      v13 = sub_100157174(v6, v5, v7);
      v15 = sub_1002FFA0C(v13, v14, v105);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v10;
      *(v11 + 22) = 2048;
      *(v11 + 24) = 3;
      _os_log_impl(&_mh_execute_header, v8, v9, "Connection error %s : attempt %ld of %ld", v11, 0x20u);
      sub_1000752F4(v12);
    }

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *(v0 + 328) = v19;
      *v18 = 136315138;
      swift_beginAccess();
      if (URLRequest.allHTTPHeaderFields.getter())
      {
        swift_endAccess();
        v20 = Dictionary.debugDescription.getter();
        v22 = v21;
      }

      else
      {
        v20 = 0x3E656E6F6E3CLL;
        swift_endAccess();
        v22 = 0xE600000000000000;
      }

      v38 = sub_1002FFA0C(v20, v22, (v0 + 328));

      *(v18 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v16, v17, "Request headers: %s", v18, 0xCu);
      sub_1000752F4(v19);
    }

    sub_10015CC60();
    v39 = swift_allocError();
    *v40 = v103;
    *(v40 + 8) = v5;
    *(v40 + 16) = v7;
  }

  else
  {

    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 496);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v105[0] = v27;
      *v26 = 136315650;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = sub_1002FFA0C(v28, v29, v105);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2048;
      *(v26 + 14) = v25;
      *(v26 + 22) = 2048;
      *(v26 + 24) = 3;
      _os_log_impl(&_mh_execute_header, v23, v24, "URL Session error %s : attempt %ld of %ld", v26, 0x20u);
      sub_1000752F4(v27);
    }

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *(v0 + 312) = v34;
      *v33 = 136315138;
      swift_beginAccess();
      if (URLRequest.allHTTPHeaderFields.getter())
      {
        swift_endAccess();
        v35 = Dictionary.debugDescription.getter();
        v37 = v36;
      }

      else
      {
        v35 = 0x3E656E6F6E3CLL;
        swift_endAccess();
        v37 = 0xE600000000000000;
      }

      v41 = sub_1002FFA0C(v35, v37, (v0 + 312));

      *(v33 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v31, v32, "Request headers: %s", v33, 0xCu);
      sub_1000752F4(v34);
    }

    sub_10015CC60();
    v39 = swift_allocError();
    *v42 = v4;
    *(v42 + 8) = 0;
    *(v42 + 16) = 2;
  }

  v43 = *(v0 + 496);
  if (v43 == 3)
  {
    swift_willThrow();
    (*(*(v0 + 432) + 8))(*(v0 + 448), *(v0 + 424));

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    *(v0 + 488) = v39;
    *(v0 + 496) = v43 + 1;
    if (*(v0 + 249) == 1)
    {
      swift_beginAccess();
      v46 = swift_task_alloc();
      *(v0 + 504) = v46;
      *v46 = v0;
      v46[1] = sub_10015A5AC;
      v47 = *(v0 + 448);

      return sub_100157E24(v47);
    }

    else
    {
      v49 = *(v0 + 408);
      v48 = *(v0 + 416);
      v50 = *(v0 + 400);
      UUID.init()();
      v51 = UUID.uuidString.getter();
      v53 = v52;
      (*(v49 + 8))(v48, v50);
      *(v0 + 256) = v51;
      *(v0 + 264) = v53;
      *(v0 + 272) = 45;
      *(v0 + 280) = 0xE100000000000000;
      *(v0 + 288) = 0;
      *(v0 + 296) = 0xE000000000000000;
      v102 = sub_10012512C();
      v54 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v56 = v55;

      swift_beginAccess();
      v57._countAndFlagsBits = 0x7365757165722D78;
      v57._object = 0xEC00000064692D74;
      v58.value._countAndFlagsBits = v54;
      v58.value._object = v56;
      URLRequest.setValue(_:forHTTPHeaderField:)(v58, v57);
      swift_endAccess();

      if (qword_1005019F8 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      *(v0 + 520) = sub_1000958E4(v59, qword_10051B2F0);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = *(v0 + 392);
        v63 = *(v0 + 368);
        v64 = *(v0 + 376);
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *(v0 + 352) = v66;
        *v65 = 136315138;
        swift_beginAccess();
        URLRequest.url.getter();
        v67 = (*(v64 + 48))(v62, 1, v63);
        v68 = *(v0 + 392);
        if (v67)
        {
          sub_10015CD2C(*(v0 + 392));
          swift_endAccess();
          v69 = 0xE400000000000000;
          v70 = 1701736302;
        }

        else
        {
          v72 = *(v0 + 376);
          v71 = *(v0 + 384);
          v104 = *(v0 + 368);
          (*(v72 + 16))(v71, v68);
          sub_10015CD2C(v68);
          swift_endAccess();
          v73 = URL.absoluteString.getter();
          v69 = v74;
          (*(v72 + 8))(v71, v104);
          v70 = v73;
        }

        v75 = sub_1002FFA0C(v70, v69, (v0 + 352));

        *(v65 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v60, v61, "Request URL: %s", v65, 0xCu);
        sub_1000752F4(v66);
      }

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *(v0 + 344) = v79;
        *v78 = 136315138;
        swift_beginAccess();
        if (URLRequest.allHTTPHeaderFields.getter())
        {
          swift_endAccess();
          v80 = Dictionary.debugDescription.getter();
          v82 = v81;
        }

        else
        {
          v80 = 0x3E656E6F6E3CLL;
          swift_endAccess();
          v82 = 0xE600000000000000;
        }

        v83 = sub_1002FFA0C(v80, v82, (v0 + 344));

        *(v78 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v76, v77, "Request headers: %s", v78, 0xCu);
        sub_1000752F4(v79);
      }

      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *(v0 + 336) = v87;
        *v86 = 136315138;
        swift_beginAccess();
        v88 = URLRequest.httpBody.getter();
        if (v89 >> 60 == 15)
        {
          countAndFlagsBits = 0x3E656E6F6E3CLL;
          swift_endAccess();
          object = 0xE600000000000000;
        }

        else
        {
          v92 = v88;
          v93 = v89;
          swift_endAccess();
          v94 = Data.base64EncodedString(options:)(0);
          countAndFlagsBits = v94._countAndFlagsBits;
          object = v94._object;
          sub_10006A2D0(v92, v93);
        }

        v95 = sub_1002FFA0C(countAndFlagsBits, object, (v0 + 336));

        *(v86 + 4) = v95;
        _os_log_impl(&_mh_execute_header, v84, v85, "Request body: %s", v86, 0xCu);
        sub_1000752F4(v87);
      }

      v96 = *(v0 + 456);
      v97 = *(v0 + 440);
      v98 = *(v0 + 448);
      v99 = *(v0 + 424);
      *(v0 + 528) = [objc_opt_self() sharedSession];
      v96(v97, v98, v99);
      v100 = swift_task_alloc();
      *(v0 + 536) = v100;
      *v100 = v0;
      v100[1] = sub_10015ADE0;
      v101 = *(v0 + 440);

      return NSURLSession.data(for:delegate:)(v101, 0);
    }
  }
}

uint64_t sub_10015BF88()
{
  v103 = v0;
  v1 = *(v0 + 568);
  *(v0 + 304) = v1;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 232);
    v2 = *(v0 + 240);
    v4 = *(v0 + 248);
    sub_10015CCB4(v3, v2, v4);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    sub_10015CCF0(v3, v2, v4);
    v100 = v3;
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 496);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v102[0] = v9;
      *v8 = 136315650;
      v10 = sub_100157174(v3, v2, v4);
      v12 = sub_1002FFA0C(v10, v11, v102);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v7;
      *(v8 + 22) = 2048;
      *(v8 + 24) = 3;
      _os_log_impl(&_mh_execute_header, v5, v6, "Connection error %s : attempt %ld of %ld", v8, 0x20u);
      sub_1000752F4(v9);
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *(v0 + 328) = v16;
      *v15 = 136315138;
      swift_beginAccess();
      if (URLRequest.allHTTPHeaderFields.getter())
      {
        swift_endAccess();
        v17 = Dictionary.debugDescription.getter();
        v19 = v18;
      }

      else
      {
        v17 = 0x3E656E6F6E3CLL;
        swift_endAccess();
        v19 = 0xE600000000000000;
      }

      v35 = sub_1002FFA0C(v17, v19, (v0 + 328));

      *(v15 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v13, v14, "Request headers: %s", v15, 0xCu);
      sub_1000752F4(v16);
    }

    sub_10015CC60();
    v36 = swift_allocError();
    *v37 = v100;
    *(v37 + 8) = v2;
    *(v37 + 16) = v4;
  }

  else
  {

    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 496);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v102[0] = v24;
      *v23 = 136315650;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = sub_1002FFA0C(v25, v26, v102);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2048;
      *(v23 + 14) = v22;
      *(v23 + 22) = 2048;
      *(v23 + 24) = 3;
      _os_log_impl(&_mh_execute_header, v20, v21, "URL Session error %s : attempt %ld of %ld", v23, 0x20u);
      sub_1000752F4(v24);
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *(v0 + 312) = v31;
      *v30 = 136315138;
      swift_beginAccess();
      if (URLRequest.allHTTPHeaderFields.getter())
      {
        swift_endAccess();
        v32 = Dictionary.debugDescription.getter();
        v34 = v33;
      }

      else
      {
        v32 = 0x3E656E6F6E3CLL;
        swift_endAccess();
        v34 = 0xE600000000000000;
      }

      v38 = sub_1002FFA0C(v32, v34, (v0 + 312));

      *(v30 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v28, v29, "Request headers: %s", v30, 0xCu);
      sub_1000752F4(v31);
    }

    sub_10015CC60();
    v36 = swift_allocError();
    *v39 = v1;
    *(v39 + 8) = 0;
    *(v39 + 16) = 2;
  }

  v40 = *(v0 + 496);
  if (v40 == 3)
  {
    swift_willThrow();
    (*(*(v0 + 432) + 8))(*(v0 + 448), *(v0 + 424));

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {
    *(v0 + 488) = v36;
    *(v0 + 496) = v40 + 1;
    if (*(v0 + 249) == 1)
    {
      swift_beginAccess();
      v43 = swift_task_alloc();
      *(v0 + 504) = v43;
      *v43 = v0;
      v43[1] = sub_10015A5AC;
      v44 = *(v0 + 448);

      return sub_100157E24(v44);
    }

    else
    {
      v46 = *(v0 + 408);
      v45 = *(v0 + 416);
      v47 = *(v0 + 400);
      UUID.init()();
      v48 = UUID.uuidString.getter();
      v50 = v49;
      (*(v46 + 8))(v45, v47);
      *(v0 + 256) = v48;
      *(v0 + 264) = v50;
      *(v0 + 272) = 45;
      *(v0 + 280) = 0xE100000000000000;
      *(v0 + 288) = 0;
      *(v0 + 296) = 0xE000000000000000;
      v99 = sub_10012512C();
      v51 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v53 = v52;

      swift_beginAccess();
      v54._countAndFlagsBits = 0x7365757165722D78;
      v54._object = 0xEC00000064692D74;
      v55.value._countAndFlagsBits = v51;
      v55.value._object = v53;
      URLRequest.setValue(_:forHTTPHeaderField:)(v55, v54);
      swift_endAccess();

      if (qword_1005019F8 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      *(v0 + 520) = sub_1000958E4(v56, qword_10051B2F0);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = *(v0 + 392);
        v60 = *(v0 + 368);
        v61 = *(v0 + 376);
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *(v0 + 352) = v63;
        *v62 = 136315138;
        swift_beginAccess();
        URLRequest.url.getter();
        v64 = (*(v61 + 48))(v59, 1, v60);
        v65 = *(v0 + 392);
        if (v64)
        {
          sub_10015CD2C(*(v0 + 392));
          swift_endAccess();
          v66 = 0xE400000000000000;
          v67 = 1701736302;
        }

        else
        {
          v69 = *(v0 + 376);
          v68 = *(v0 + 384);
          v101 = *(v0 + 368);
          (*(v69 + 16))(v68, v65);
          sub_10015CD2C(v65);
          swift_endAccess();
          v70 = URL.absoluteString.getter();
          v66 = v71;
          (*(v69 + 8))(v68, v101);
          v67 = v70;
        }

        v72 = sub_1002FFA0C(v67, v66, (v0 + 352));

        *(v62 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v57, v58, "Request URL: %s", v62, 0xCu);
        sub_1000752F4(v63);
      }

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *(v0 + 344) = v76;
        *v75 = 136315138;
        swift_beginAccess();
        if (URLRequest.allHTTPHeaderFields.getter())
        {
          swift_endAccess();
          v77 = Dictionary.debugDescription.getter();
          v79 = v78;
        }

        else
        {
          v77 = 0x3E656E6F6E3CLL;
          swift_endAccess();
          v79 = 0xE600000000000000;
        }

        v80 = sub_1002FFA0C(v77, v79, (v0 + 344));

        *(v75 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v73, v74, "Request headers: %s", v75, 0xCu);
        sub_1000752F4(v76);
      }

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *(v0 + 336) = v84;
        *v83 = 136315138;
        swift_beginAccess();
        v85 = URLRequest.httpBody.getter();
        if (v86 >> 60 == 15)
        {
          countAndFlagsBits = 0x3E656E6F6E3CLL;
          swift_endAccess();
          object = 0xE600000000000000;
        }

        else
        {
          v89 = v85;
          v90 = v86;
          swift_endAccess();
          v91 = Data.base64EncodedString(options:)(0);
          countAndFlagsBits = v91._countAndFlagsBits;
          object = v91._object;
          sub_10006A2D0(v89, v90);
        }

        v92 = sub_1002FFA0C(countAndFlagsBits, object, (v0 + 336));

        *(v83 + 4) = v92;
        _os_log_impl(&_mh_execute_header, v81, v82, "Request body: %s", v83, 0xCu);
        sub_1000752F4(v84);
      }

      v93 = *(v0 + 456);
      v94 = *(v0 + 440);
      v95 = *(v0 + 448);
      v96 = *(v0 + 424);
      *(v0 + 528) = [objc_opt_self() sharedSession];
      v93(v94, v95, v96);
      v97 = swift_task_alloc();
      *(v0 + 536) = v97;
      *v97 = v0;
      v97[1] = sub_10015ADE0;
      v98 = *(v0 + 440);

      return NSURLSession.data(for:delegate:)(v98, 0);
    }
  }
}

unint64_t sub_10015CC60()
{
  result = qword_100504D38;
  if (!qword_100504D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504D38);
  }

  return result;
}

uint64_t sub_10015CCB4(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return swift_errorRetain();
      }

      return v3;
    }
  }

  if (a3 == 3 || a3 == 4)
  {
  }

  return v3;
}

uint64_t sub_10015CCF0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
      }

      return result;
    }
  }

  if (a3 == 3 || a3 == 4)
  {
  }

  return result;
}

uint64_t sub_10015CD2C(uint64_t a1)
{
  v2 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10015CDAC(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 sub_10015CDC8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10015CDDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10015CE24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_10015CE68(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

id sub_10015CEA0()
{
  type metadata accessor for SEKeySyncManager(0);
  swift_allocObject();
  result = sub_10015CFD4();
  qword_10051B308 = result;
  return result;
}

id sub_10015CFD4()
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v1 = &v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_ptcViewName];
  *v1 = 0x4354502D4553;
  v1[1] = 0xE600000000000000;
  v2 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper;
  *&v0[v2] = [objc_opt_self() sharedInstance];
  v3 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_caStatisticsActivity;
  v4 = objc_allocWithZone(NSBackgroundActivityScheduler);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithIdentifier:v5];

  *&v0[v3] = v6;
  *&v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_recoveryPending] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notificationTokens] = &_swiftEmptySetSingleton;
  v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_preconditionsMet] = 2;
  v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_allViewsSynchronized] = 2;
  v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_stopped] = 0;
  v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced] = 0;
  v14 = 2;
  v12 = 0;
  v13 = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  type metadata accessor for SESPeerIdentityData(0);
  sub_100188AF0(&qword_100504E20, type metadata accessor for SESPeerIdentityData, &unk_10040DFAC);
  sub_100188AF0(&qword_100504E28, type metadata accessor for SESPeerIdentityData, &unk_10040DF5C);
  UserDefaultBackedCodableOptional.init(suiteName:key:)();
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  sub_100068FC4(&qword_100502458, &qword_10040C1F0);
  UserDefaultBackedOptional.init(suiteName:key:internalOnly:)();
  UserDefaultBackedOptional.init(suiteName:key:internalOnly:)();
  *&v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState] = 0;
  v7 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_state;
  sub_100068FC4(&qword_100504FA0, &qword_10040C568);
  v8 = swift_allocObject();
  *(v8 + 48) = 0;
  *(v8 + 16) = xmmword_1004098E0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *&v0[v7] = v8;
  *&v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_secureElementInfo] = 0;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_10015D4C4()
{
  if (qword_100501A08 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B308;
  *(v0 + 16) = qword_10051B308;

  return _swift_task_switch(sub_10015D55C, v1, 0);
}

uint64_t sub_10015D55C()
{
  sub_10015D5BC();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10015D5BC()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v2 - 8);
  v4 = &v53 - v3;
  v5 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53 - v7;
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v64 = sub_10018D808;
  v65 = v1;
  aBlock = _NSConcreteStackBlock;
  v61 = 1107296256;
  v62 = sub_100193978;
  v63 = &unk_1004C97C8;
  v14 = _Block_copy(&aBlock);

  os_state_add_handler();
  _Block_release(v14);

  v15 = *(v1 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_caStatisticsActivity);
  [v15 setPreregistered:1];
  v64 = sub_10018D828;
  v65 = v1;
  aBlock = _NSConcreteStackBlock;
  v61 = 1107296256;
  v62 = sub_10022ECB0;
  v63 = &unk_1004C97F0;
  v16 = _Block_copy(&aBlock);

  [v15 scheduleWithBlock:v16];
  _Block_release(v16);
  (*(v6 + 16))(v8, v1 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager__disableKeySync, v5);
  UserDefaultBacked.wrappedValue.getter();
  v17 = *(v6 + 8);
  v57 = v5;
  v17(v8, v5);
  if (aBlock == 1)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "KEY SYNC DISABLED BY INTERNAL SETTING", v20, 2u);
    }
  }

  else
  {
    v21 = swift_allocObject();
    *(v21 + 16) = &_swiftEmptySetSingleton;
    v22 = objc_opt_self();
    v23 = String._bridgeToObjectiveC()();
    LODWORD(v22) = [v22 isFirstLaunchAfterBootForKey:v23];

    if (v22)
    {
      sub_1000D7BA4(&aBlock, 7);
      *&v59 = 0;
      swift_beginAccess();
      sub_100068FC4(&qword_100504EE8, &qword_10040C430);
      UserDefaultBackedOptional.wrappedValue.setter();
      swift_endAccess();
      v59 = xmmword_1004098E0;
      swift_beginAccess();
      sub_100068FC4(&qword_100504F98, &unk_10040C540);
      UserDefaultBackedOptional.wrappedValue.setter();
      swift_endAccess();
    }

    v58 = v21 + 16;
    v54 = v21;
    v55 = v4;
    if (qword_100501A10 != -1)
    {
LABEL_28:
      swift_once();
    }

    v24 = off_100504D60;
    v25 = off_100504D60 + 64;
    v26 = 1 << *(off_100504D60 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(off_100504D60 + 8);
    v56 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__recoveryRequiredPref;
    v29 = (v26 + 63) >> 6;

    v30 = 0;
    while (v28)
    {
LABEL_16:
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v33 = *(v24[7] + (v32 | (v30 << 6)));
      v34 = objc_opt_self();

      v35 = String._bridgeToObjectiveC()();

      v36 = [v34 registerDelegate:v1 forEvent:v35];

      if (v36)
      {
        sub_1000D7BA4(&aBlock, v33);
        if (v33 == 2)
        {
          LOBYTE(v59) = 1;
          swift_beginAccess();
          UserDefaultBacked.wrappedValue.setter();
          swift_endAccess();
        }
      }
    }

    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v31 >= v29)
      {
        break;
      }

      v28 = *&v25[8 * v31];
      ++v30;
      if (v28)
      {
        v30 = v31;
        goto LABEL_16;
      }
    }

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    LODWORD(v37) = [v37 registerAlarm:v38 handler:v1];

    v39 = v58;
    if (v37)
    {
      sub_1000D7BA4(&aBlock, 8);
    }

    v40 = v54;

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock = v44;
      *v43 = 136315138;
      swift_beginAccess();

      sub_100188FC4();
      v45 = Set.description.getter();
      v47 = v46;

      v48 = sub_1002FFA0C(v45, v47, &aBlock);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "KeySyncStartup: all pending triggers %s", v43, 0xCu);
      sub_1000752F4(v44);

      v39 = v58;
    }

    else
    {
    }

    v49 = v55;
    swift_beginAccess();
    if (*(*v39 + 16))
    {
      v50 = type metadata accessor for TaskPriority();
      (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
      v51 = sub_100188AF0(&qword_100504FD0, type metadata accessor for SEKeySyncManager, &unk_10040C37C);
      v52 = swift_allocObject();
      v52[2] = v1;
      v52[3] = v51;
      v52[4] = v1;
      v52[5] = v40;
      swift_retain_n();

      sub_1001F9BE8(0, 0, v49, &unk_10040C610, v52);
    }
  }
}

uint64_t sub_10015E034(uint64_t a1, uint64_t a2)
{
  v3 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;

  v6 = dispatch_semaphore_create(0);
  sub_100068FC4(&qword_100504FD8, &qword_10040C628);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = sub_10018DA80;
  v9[6] = a2;
  v9[7] = v6;

  v10 = v6;
  sub_1001F9BE8(0, 0, v5, &unk_10040C638, v9);

  OS_dispatch_semaphore.wait()();

  v11 = *(v7 + 16);

  return v11;
}

_DWORD *sub_10015E1CC()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504EE0, &qword_10040C408);
  v88 = *(v2 - 8);
  v89 = v2;
  __chkstk_darwin(v2);
  v87 = &v81 - v3;
  v4 = sub_100068FC4(&qword_100504F78, &qword_10040C508);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v81 - v6;
  v8 = sub_100068FC4(&qword_100504EF0, &unk_10040C470);
  __chkstk_darwin(v8 - 8);
  v10 = &v81 - v9;
  v11 = type metadata accessor for SESPeerIdentityData(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__cachedLocalIdentity;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v15, v4);
  UserDefaultBackedCodableOptional.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100075768(v10, &qword_100504EF0, &unk_10040C470);
    v16 = _swiftEmptyDictionarySingleton;
  }

  else
  {
    v17 = v14;
    sub_10018CF04(v10, v14, type metadata accessor for SESPeerIdentityData);
    *&v92 = sub_100288AE8();
    sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
    sub_10018DBCC();
    AnyHashable.init<A>(_:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v92 = _swiftEmptyDictionarySingleton;
    sub_100316390(v96, 0xD000000000000013, 0x8000000100465040, isUniquelyReferenced_nonNull_native);
    v19 = v92;
    *v96 = 0;
    *&v96[8] = 0xE000000000000000;
    v20 = objc_opt_self();
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 isAlarmSet:v21];

    if (v22)
    {
      v23 = 1702195828;
    }

    else
    {
      v23 = 0x65736C6166;
    }

    if (v22)
    {
      v24 = 0xE400000000000000;
    }

    else
    {
      v24 = 0xE500000000000000;
    }

    v25 = v24;
    String.append(_:)(*&v23);

    v92 = *v96;
    AnyHashable.init<A>(_:)();
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *&v92 = v19;
    sub_100316390(v96, 0x466E497972746572, 0xED0000746867696CLL, v26);
    v27 = v92;
    v28 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
    swift_beginAccess();
    v30 = v88;
    v29 = v89;
    v31 = v1 + v28;
    v32 = v87;
    (*(v88 + 16))(v87, v31, v89);
    UserDefaultBacked.wrappedValue.getter();
    (*(v30 + 8))(v32, v29);
    *&v92 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v92 + 1) = v33;
    AnyHashable.init<A>(_:)();
    v34 = swift_isUniquelyReferenced_nonNull_native();
    *&v92 = v27;
    sub_100316390(v96, 0x756F43726F727265, 0xEA0000000000746ELL, v34);
    v35 = v92;
    *v96 = 0;
    *&v96[8] = 0xE000000000000000;
    if (*(v1 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_stopped))
    {
      v36 = 1702195828;
    }

    else
    {
      v36 = 0x65736C6166;
    }

    if (*(v1 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_stopped))
    {
      v37 = 0xE400000000000000;
    }

    else
    {
      v37 = 0xE500000000000000;
    }

    v38 = v37;
    String.append(_:)(*&v36);

    v92 = *v96;
    AnyHashable.init<A>(_:)();
    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v92 = v35;
    sub_100316390(v96, 0x646570706F7473, 0xE700000000000000, v39);
    sub_10018CE30(v17, type metadata accessor for SESPeerIdentityData);
    v16 = v92;
  }

  v40 = *(v1 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_state);
  os_unfair_lock_lock((v40 + 48));
  v41 = *(v40 + 16);
  v42 = *(v40 + 32);
  v43 = *(v40 + 40);
  v81 = *(v40 + 24);
  v82 = v41;
  sub_10006A2BC(v41, v81);

  os_unfair_lock_unlock((v40 + 48));
  v83 = v42;
  v84 = v43;
  if (v42)
  {
    v44 = v16;
    v102 = 0;
    v103 = 0;
    v101 = v42;

    sub_100160458(&v92);
    *&v96[57] = *(v95 + 9);
    *&v96[32] = v94;
    *&v96[48] = v95[0];
    *&v96[16] = v93;
    *v96 = v92;
    v45 = v92;
    v97 = *&v96[8];
    v98 = *&v96[24];
    v99 = *&v96[40];
    v100 = *&v96[56];
    for (i = BYTE8(v95[1]); BYTE8(v95[1]) != 2; i = BYTE8(v95[1]))
    {
      v104 = v97;
      v105 = v98;
      v106 = v99;
      v107 = v100;
      v108 = i;
      *&v92 = 0x2D45536E4F6B6C74;
      *(&v92 + 1) = 0xE800000000000000;
      v90 = v45;
      v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v47);

      v48 = v92;
      v90 = sub_10026BA34();
      v91 = v49;
      AnyHashable.init<A>(_:)();
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v90 = v44;
      sub_100316390(&v92, v48, *(&v48 + 1), v50);
      sub_100075768(v96, &qword_100504FF0, &qword_10040C640);

      v44 = v90;
      sub_100160458(&v92);
      *v96 = v92;
      *&v96[16] = v93;
      *&v96[32] = v94;
      *&v96[48] = v95[0];
      *&v96[57] = *(v95 + 9);
      v45 = v92;
      v97 = *&v96[8];
      v98 = *&v96[24];
      v99 = *&v96[40];
      v100 = *&v96[56];
    }

    v43 = v84;
    v16 = v44;
  }

  if (!v43)
  {
    goto LABEL_38;
  }

  v51 = *(v43 + 16);

  if (!v51)
  {
LABEL_37:

LABEL_38:
    sub_10019557C(v16);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v79 = sub_100015DA0("keysyncmanager.state", isa);
    sub_10006A2D0(v82, v81);

    return v79;
  }

  v52 = 0;
  v53 = (v43 + 72);
  while (v52 < v51)
  {
    v54 = *(v53 - 4);
    v55 = *(v53 - 3);
    v56 = *(v53 - 2);
    v85 = v53;
    v86 = v52;
    v57 = *v53;
    *v96 = 0x2D77656976;
    *&v96[8] = 0xE500000000000000;
    *&v92 = v52;

    sub_100069E2C(v55, v56);
    v58 = v57;
    v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v59);

    v60 = *v96;

    sub_100069E2C(v55, v56);
    v61 = v58;
    v87 = v54;

    v88 = v55;
    v89 = v56;
    sub_10006A178(v55, v56);
    v62 = [v61 dumpState];

    *&v92 = v62;
    sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
    sub_10018DBCC();
    AnyHashable.init<A>(_:)();
    v92 = *v96;
    v93 = *&v96[16];
    *&v94 = *&v96[32];
    v63 = swift_isUniquelyReferenced_nonNull_native();
    *&v97 = v16;
    v65 = sub_10008C908(v60, *(&v60 + 1));
    v66 = v16[2];
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_40;
    }

    v69 = v64;
    if (v16[3] >= v68)
    {
      if (v63)
      {
        if (v64)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_100312924();
        if (v69)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_10030CCEC(v68, v63);
      v70 = sub_10008C908(v60, *(&v60 + 1));
      if ((v69 & 1) != (v71 & 1))
      {
        goto LABEL_42;
      }

      v65 = v70;
      if (v69)
      {
LABEL_23:

        v16 = v97;
        sub_10018DC34(&v92, *(v97 + 56) + 40 * v65);

        sub_10006A178(v88, v89);

        goto LABEL_24;
      }
    }

    v16 = v97;
    *(v97 + 8 * (v65 >> 6) + 64) |= 1 << v65;
    *(v16[6] + 16 * v65) = v60;
    v72 = v16[7] + 40 * v65;
    v73 = v94;
    v74 = v93;
    *v72 = v92;
    *(v72 + 16) = v74;
    *(v72 + 32) = v73;

    sub_10006A178(v88, v89);

    v75 = v16[2];
    v76 = __OFADD__(v75, 1);
    v77 = v75 + 1;
    if (v76)
    {
      goto LABEL_41;
    }

    v16[2] = v77;
LABEL_24:
    v52 = v86 + 1;
    v51 = *(v84 + 16);
    v53 = v85 + 6;
    if (v86 + 1 == v51)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10015ECFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a3;
  v10[5] = a1;
  v10[6] = a2;

  sub_1001F9BE8(0, 0, v8, &unk_10040C620, v10);
}

uint64_t sub_10015EE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_10015EEB8;

  return sub_1002857E4();
}

uint64_t sub_10015EEB8()
{

  return _swift_task_switch(sub_10015EFB4, 0, 0);
}

uint64_t sub_10015EFB4()
{
  (*(v0 + 16))(1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015F01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_10015F03C, a4, 0);
}

uint64_t sub_10015F03C()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = v2;

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_10015F104;

  return sub_10015F214(v2);
}

uint64_t sub_10015F104()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10015F214(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return _swift_task_switch(sub_10015F234, v1, 0);
}

void sub_10015F234(uint64_t result)
{
  v2 = *(v1 + 88);
  if (*(v2 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_stopped) == 1)
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "KeySync machinery is stopped", v5, 2u);
    }

LABEL_19:
    v17 = *(v1 + 8);

    v17();
  }

  else
  {
    v6 = 0;
    v7 = *(v1 + 80);
    v8 = -1 << *(v7 + 32);
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v7 + 56);
    v11 = (63 - v8) >> 6;
    do
    {
      if (!v10)
      {
        while (1)
        {
          v12 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v12 >= v11)
          {
            goto LABEL_17;
          }

          v10 = *(v7 + 56 + 8 * v12);
          ++v6;
          if (v10)
          {
            v6 = v12;
            goto LABEL_15;
          }
        }

        __break(1u);
        return;
      }

      v12 = v6;
LABEL_15:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
    }

    while (*(*(v7 + 48) + (v13 | (v12 << 6))) != 2);
    *(v1 + 168) = 1;
    swift_beginAccess();
    sub_100068FC4(&unk_100504880, &unk_10040A5B0);
    UserDefaultBacked.wrappedValue.setter();
    swift_endAccess();
    v2 = *(v1 + 88);
LABEL_17:
    v14 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState;
    *(v1 + 96) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState;
    v15 = *(v2 + v14);
    if (v15)
    {
      v16 = *(v1 + 80);

      *(v2 + v14) = sub_100163840(v16, v15);

      goto LABEL_19;
    }

    *(v2 + v14) = &_swiftEmptySetSingleton;
    v18 = objc_opt_self();
    v19 = String._bridgeToObjectiveC()();
    [v18 clearAlarm:v19];

    *(v1 + 104) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Sync progress -- checking triggers", v22, 2u);
    }

    v23 = swift_task_alloc();
    *(v1 + 112) = v23;
    *v23 = v1;
    v23[1] = sub_10015F598;
    v24 = *(v1 + 80);

    sub_100163C4C(v24);
  }
}

uint64_t sub_10015F598(char a1)
{
  v3 = *v2;
  *(*v2 + 170) = a1;

  v4 = *(v3 + 88);
  if (v1)
  {
    v5 = sub_10015FEB4;
  }

  else
  {
    v5 = sub_10015F6CC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10015F6CC()
{
  v23 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v5 = 136446722;
    sub_100188FC4();
    v6 = Set.description.getter();
    v8 = sub_1002FFA0C(v6, v7, &v20);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    if (*(v4 + v3))
    {
      v21 = 0;
      v22 = 0xE000000000000000;

      _StringGuts.grow(_:)(23);

      v21 = 0xD000000000000015;
      v22 = 0x8000000100464D10;
      v9._countAndFlagsBits = Set.description.getter();
      String.append(_:)(v9);

      v10 = v21;
      v11 = v22;
    }

    else
    {
      v11 = 0xE400000000000000;
      v10 = 1701602409;
    }

    v12 = *(v0 + 170);
    v13 = sub_1002FFA0C(v10, v11, &v20);

    *(v5 + 14) = v13;
    *(v5 + 22) = 1024;
    *(v5 + 24) = v12 & 1;
    _os_log_impl(&_mh_execute_header, v1, v2, "Request to synchronize for reason %{public}s in state %{public}s - shouldSync %{BOOL}d", v5, 0x1Cu);
    swift_arrayDestroy();
  }

  if (*(v0 + 170))
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Sync Progress -- checking preconditions", v16, 2u);
    }

    v17 = swift_task_alloc();
    *(v0 + 120) = v17;
    *v17 = v0;
    v17[1] = sub_10015FA24;

    return sub_100164AD8();
  }

  else
  {
    sub_10016391C(*(v0 + 88));
    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_10015FA24(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[16] = a1;
  v5[17] = a2;
  v5[18] = v2;

  v6 = v4[11];
  if (v2)
  {
    v7 = sub_1001600A8;
  }

  else
  {
    v7 = sub_10015FB5C;
  }

  return _swift_task_switch(v7, v6, 0);
}

void sub_10015FB5C()
{
  v1 = v0[17];
  if (v1 >> 60 == 15)
  {
    v2 = v0[16];
    v3 = v0[11];
    *(v3 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_preconditionsMet) = 0;
    v4 = *(v3 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_state);
    os_unfair_lock_lock((v4 + 48));
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;
    sub_10006A2D0(v5, v6);
    *(v4 + 40) = 0;

    *(v4 + 32) = 0;

    os_unfair_lock_unlock((v4 + 48));
    sub_10016391C(v3);
    v7 = v0[1];

    v7();
  }

  else
  {
    v8 = v0[18];
    v9 = v0[16];
    v10 = *(v0[11] + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_state);
    v11 = swift_task_alloc();
    *(v11 + 16) = v9;
    *(v11 + 24) = v1;
    os_unfair_lock_lock((v10 + 48));
    sub_10018C72C((v10 + 16));
    os_unfair_lock_unlock((v10 + 48));
    if (!v8)
    {
      v12 = v0[11];

      *(v12 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_preconditionsMet) = 1;
      v13 = swift_task_alloc();
      v0[19] = v13;
      *v13 = v0;
      v13[1] = sub_10015FD20;
      v15 = v0[16];
      v14 = v0[17];

      sub_100165468(v15, v14);
    }
  }
}

uint64_t sub_10015FD20()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_10016027C;
  }

  else
  {
    v4 = sub_10015FE4C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10015FE4C()
{
  sub_10006A2D0(v0[16], v0[17]);
  sub_10016391C(v0[11]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10015FEB4()
{
  v15 = v0;
  v1 = *(v0 + 170);
  sub_10018C6D8();
  v2 = swift_allocError();
  *v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1002FFA0C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Sync Progress -- ended with error %s", v6, 0xCu);
    sub_1000752F4(v7);
  }

  *(v0 + 64) = v2;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 169);
  }

  else
  {
    v11 = 28;
  }

  sub_100180988(v11, 0);

  sub_10016391C(*(v0 + 88));
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1001600A8()
{
  v13 = v0;
  v1 = *(v0 + 144);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_1002FFA0C(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sync Progress -- ended with error %s", v4, 0xCu);
    sub_1000752F4(v5);
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 169);
  }

  else
  {
    v9 = 28;
  }

  sub_100180988(v9, 0);

  sub_10016391C(*(v0 + 88));
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10016027C()
{
  v13 = v0;
  sub_10006A2D0(*(v0 + 128), *(v0 + 136));
  v1 = *(v0 + 160);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_1002FFA0C(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sync Progress -- ended with error %s", v4, 0xCu);
    sub_1000752F4(v5);
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 169);
  }

  else
  {
    v9 = 28;
  }

  sub_100180988(v9, 0);

  sub_10016391C(*(v0 + 88));
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100160458@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 72) = 2;
    return result;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *v1 + 72 * v2;
  v13 = *(v4 + 32);
  v5 = *(v4 + 48);
  v6 = *(v4 + 64);
  v7 = *(v4 + 80);
  v17 = *(v4 + 96);
  v15 = v6;
  v16 = v7;
  v14 = v5;
  v1[1] = v2 + 1;
  v8 = v1[2];
  if (__OFADD__(v8, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v1[2] = v8 + 1;
  *a1 = v8;
  v9 = v13;
  *(a1 + 24) = v14;
  v10 = v16;
  *(a1 + 40) = v15;
  *(a1 + 56) = v10;
  *(a1 + 72) = v17;
  *(a1 + 8) = v9;
  return sub_10018C628(&v13, v12);
}

void sub_10016051C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  if (qword_100501A10 != -1)
  {
    swift_once();
  }

  v9 = off_100504D60;
  if (*(off_100504D60 + 2) && (v10 = sub_10008C908(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(v9[7] + v10);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = v3;
    *(v14 + 40) = v12;

    sub_1001608B4(0, 0, v8, &unk_10040C5E8, v14);

    sub_100075768(v8, &qword_100504250, &qword_10040D610);
  }

  else
  {

    v19 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1002FFA0C(a1, a2, &v20);
      _os_log_impl(&_mh_execute_header, v19, v15, "Ignorning unknown notification: %{public}s", v16, 0xCu);
      sub_1000752F4(v17);
    }

    else
    {
      v18 = v19;
    }
  }
}

uint64_t sub_1001607B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 49) = a5;
  *(v5 + 56) = a4;
  return _swift_task_switch(sub_1001607D8, 0, 0);
}

uint64_t sub_1001607D8()
{
  v1 = *(v0 + 49);
  sub_100068FC4(&qword_100504ED0, &qword_10040C3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  *(inited + 32) = v1;
  v3 = sub_1000B3934(inited);
  *(v0 + 64) = v3;
  swift_setDeallocating();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_10018DF70;

  return sub_10015F214(v3);
}

uint64_t sub_1001608B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000938D4(a3, v25 - v10, &qword_100504250, &qword_10040D610);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100075768(v11, &qword_100504250, &qword_10040D610);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100160BDC(uint64_t a1, unint64_t a2, char *a3)
{
  v4 = v3;
  v8 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  v11 = *(v3 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_state);
  v22[2] = a1;
  v22[3] = a2;
  v23 = v3;
  os_unfair_lock_lock(v11 + 12);
  sub_10018D1A0(&v11[4], v26);
  os_unfair_lock_unlock(v11 + 12);
  v25 = v27;
  v24[2] = v26[2];
  v24[3] = v26[3];
  v24[0] = v26[0];
  v24[1] = v26[1];
  if (v27 == 2)
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v4;

    sub_1001F9BE8(0, 0, v10, &unk_10040C580, v13);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1002FFA0C(a1, a2, v28);
      _os_log_impl(&_mh_execute_header, v14, v15, "Falling back to listing SE for %s", v16, 0xCu);
      sub_1000752F4(v17);
    }

    v18 = sub_1001A2ED8(a3);
    sub_10016203C(v18, v28, a1, a2);

    if (v29 == 2)
    {
      return 0;
    }

    v19 = v28[0];
    sub_100069E2C(v28[0], v28[1]);
    v20 = v28;
  }

  else
  {
    v19 = *&v24[0];
    sub_100069E2C(*&v24[0], *(&v24[0] + 1));
    v20 = v24;
  }

  sub_100075768(v20, &qword_100504FA8, &qword_10040C588);
  return v19;
}

__n128 sub_100160EF0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v105 = *(v4 + 16);
    if (v105)
    {
      v92 = a1;
      v5 = 0;
      v6 = (v4 + 72);
      v96 = *(a1 + 24);
      while (1)
      {
        if (v5 >= *(v4 + 16))
        {
          goto LABEL_107;
        }

        v103 = *(v6 - 5);
        v7 = *(v6 - 3);
        v8 = *(v6 - 2);
        v9 = *v6;
        log = *(v6 - 8);
        v10 = *(v6 - 4);

        v11 = v8;
        sub_100069E2C(v7, v8);
        v12 = v9;
        v13 = [v12 viewName];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        if (v14 == a2 && v16 == a3)
        {
          break;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          goto LABEL_16;
        }

        ++v5;

        sub_10006A178(v7, v11);

        v6 += 6;
        v4 = v96;
        if (v105 == v5)
        {
          v19 = 0;
          v20 = 0;
          v94 = 0;
          v95 = 0;
          v21 = 0;
          LODWORD(v4) = 0;
          v22 = 0;
          v23 = 0xF000000000000000;
          goto LABEL_20;
        }
      }

LABEL_16:
      v24 = v10;

      v21 = v7;
      sub_100069E2C(v7, v11);
      v22 = v12;
      v25 = v12;
      v95 = v24;

      v94 = v11;
      sub_10006A178(v7, v11);
      v26 = [v25 currentTLK];

      if (v26)
      {
        v27 = [v26 tlkUUID];

        v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v28;
      }

      else
      {
        v19 = 0;
        v23 = 0xF000000000000000;
      }

      v20 = v103;
      LODWORD(v4) = log;
LABEL_20:
      a1 = v92;
      goto LABEL_21;
    }

    v19 = 0;
    v20 = 0;
    v94 = 0;
    v95 = 0;
    v21 = 0;
    LODWORD(v4) = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v94 = 0;
    v95 = 0;
    v21 = 0;
  }

  v22 = 0;
  v23 = 0xF000000000000000;
LABEL_21:
  v104 = v20;
  v29 = *(a1 + 16);
  v91 = v22;
  v93 = v23;
  v97 = v21;
  if (!v29)
  {
    v65 = v22;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v119 = 2;
    goto LABEL_99;
  }

  loga = v4;
  if (!*(v29 + 16))
  {
LABEL_91:
    v65 = v91;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v119 = 2;
    goto LABEL_98;
  }

  v30 = *(v29 + 16);
  v31 = 0;
  if (v19)
  {
    v32 = 0;
  }

  else
  {
    v32 = v23 == 0xC000000000000000;
  }

  v33 = !v32;
  v86 = v33;
  v89 = v23 >> 62;
  v34 = (v29 + 32);
  v35 = __OFSUB__(HIDWORD(v19), v19);
  v83 = v35;
  v84 = HIDWORD(v19) - v19;
  v85 = BYTE6(v23);
  v106 = v23 >> 60;
  v87 = *(a1 + 16);
  while (1)
  {
    if (v31 >= *(v29 + 16))
    {
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
    }

    v108[0] = *v34;
    v36 = v34[1];
    v37 = v34[2];
    v38 = v34[3];
    v109 = *(v34 + 64);
    v108[2] = v37;
    v108[3] = v38;
    v108[1] = v36;
    v111 = v34[1];
    v112 = v34[2];
    v113 = v34[3];
    v114 = *(v34 + 64);
    v110 = *v34;
    v39 = *(&v108[0] + 1);
    v40 = *&v108[0];
    if (*(&v108[0] + 1) >> 60 == 15)
    {
      if (v106 > 0xE)
      {
        v66 = v23;
        v65 = v91;
        sub_100069E2C(*&v108[0], *(&v108[0] + 1));
        sub_10018C628(v108, &v115);
        sub_10006A2BC(v19, v66);
        sub_10006A2D0(v40, v39);
        goto LABEL_97;
      }

      goto LABEL_34;
    }

    if (v106 <= 0xE)
    {
      break;
    }

LABEL_34:
    sub_100069E2C(*&v108[0], *(&v108[0] + 1));
    sub_10006A2BC(v19, v23);
    sub_10006A2D0(v40, v39);
    sub_10006A2D0(v19, v23);
LABEL_35:
    ++v31;
    v34 = (v34 + 72);
    if (v30 == v31)
    {
      goto LABEL_91;
    }
  }

  v41 = *(&v108[0] + 1) >> 62;
  if (*(&v108[0] + 1) >> 62 != 3)
  {
    v43 = v89;
    if (v41 <= 1)
    {
      if (v41)
      {
        LODWORD(v46) = DWORD1(v108[0]) - LODWORD(v108[0]);
        if (__OFSUB__(DWORD1(v108[0]), v108[0]))
        {
          goto LABEL_110;
        }

        v46 = v46;
        if (v89 > 1)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v46 = BYTE14(v108[0]);
        if (v89 > 1)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_58;
    }

    if (v41 == 2)
    {
      v48 = *(*&v108[0] + 16);
      v47 = *(*&v108[0] + 24);
      v49 = __OFSUB__(v47, v48);
      v46 = v47 - v48;
      if (v49)
      {
        goto LABEL_111;
      }

      if (v89 > 1)
      {
        goto LABEL_62;
      }

      goto LABEL_58;
    }

LABEL_61:
    v46 = 0;
    if (v43 > 1)
    {
LABEL_62:
      if (v43 != 2)
      {
        if (!v46)
        {
LABEL_94:
          sub_100069E2C(*&v108[0], *(&v108[0] + 1));
          sub_10018C628(v108, &v115);
          sub_10006A2BC(v19, v23);
          sub_10006A2D0(v19, v23);
          goto LABEL_95;
        }

        goto LABEL_70;
      }

      v52 = *(v19 + 16);
      v51 = *(v19 + 24);
      v49 = __OFSUB__(v51, v52);
      v50 = v51 - v52;
      if (v49)
      {
        goto LABEL_109;
      }

LABEL_64:
      if (v46 == v50)
      {
        if (v46 < 1)
        {
          goto LABEL_94;
        }

        if (v41 > 1)
        {
          if (v41 != 2)
          {
            memset(v107, 0, 14);
            sub_100069E2C(*&v108[0], *(&v108[0] + 1));
            sub_100069E2C(v40, v39);
            sub_10018C628(v108, &v115);
            sub_10006A2BC(v19, v23);
            v53 = v107;
            goto LABEL_85;
          }

          v54 = v19;
          v55 = *(*&v108[0] + 16);
          v56 = *(*&v108[0] + 24);
          sub_100069E2C(*&v108[0], *(&v108[0] + 1));
          sub_100069E2C(v40, v39);
          sub_10018C628(v108, &v115);
          v82 = v54;
          sub_10006A2BC(v54, v23);
          v57 = __DataStorage._bytes.getter();
          if (v57)
          {
            v58 = __DataStorage._offset.getter();
            if (__OFSUB__(v55, v58))
            {
              goto LABEL_114;
            }

            v57 += v55 - v58;
          }

          if (__OFSUB__(v56, v55))
          {
            goto LABEL_113;
          }

          __DataStorage._length.getter();
          v53 = v57;
        }

        else
        {
          if (!v41)
          {
            LODWORD(v107[0]) = v108[0];
            WORD2(v107[0]) = WORD2(v108[0]);
            *(v107 + 6) = *(v108 + 6);
            sub_100069E2C(*&v108[0], *(&v108[0] + 1));
            sub_100069E2C(v40, v39);
            sub_10018C628(v108, &v115);
            sub_10006A2BC(v19, v23);
            v53 = v107;
LABEL_85:
            v63 = v19;
            goto LABEL_89;
          }

          v82 = v19;
          if (*&v108[0] >> 32 < SLODWORD(v108[0]))
          {
            goto LABEL_112;
          }

          sub_100069E2C(*&v108[0], *(&v108[0] + 1));
          sub_100069E2C(v40, v39);
          sub_10018C628(v108, &v115);
          sub_10006A2BC(v19, v93);
          v59 = __DataStorage._bytes.getter();
          if (v59)
          {
            v60 = v59;
            v61 = __DataStorage._offset.getter();
            if (__OFSUB__(v40, v61))
            {
              goto LABEL_115;
            }

            v62 = (v40 - v61 + v60);
          }

          else
          {
            v62 = 0;
          }

          __DataStorage._length.getter();
          v53 = v62;
        }

        v19 = v82;
        v63 = v82;
        v23 = v93;
LABEL_89:
        sub_10019F024(v53, v63, v23, &v115);
        sub_10006A178(v40, v39);
        sub_10006A2D0(v19, v23);
        v64 = v115;
        sub_10006A2D0(v40, v39);
        if (v64)
        {
          goto LABEL_96;
        }

        goto LABEL_90;
      }

LABEL_70:
      sub_100069E2C(*&v108[0], *(&v108[0] + 1));
      sub_10018C628(v108, &v115);
      sub_10006A2BC(v19, v23);
      sub_10006A2D0(v19, v23);
      sub_10006A2D0(v40, v39);
LABEL_90:
      sub_10018C684(v108);
      v29 = v87;
      goto LABEL_35;
    }

LABEL_58:
    v50 = v85;
    if (v43)
    {
      v50 = v84;
      if (v83)
      {
        goto LABEL_108;
      }
    }

    goto LABEL_64;
  }

  if (*&v108[0])
  {
    v42 = 0;
  }

  else
  {
    v42 = *(&v108[0] + 1) == 0xC000000000000000;
  }

  v43 = v89;
  v45 = !v42 || v89 < 3;
  if ((v45 | v86))
  {
    goto LABEL_61;
  }

  sub_100069E2C(0, 0xC000000000000000);
  sub_10018C628(v108, &v115);
  sub_10006A2BC(0, 0xC000000000000000);
  sub_10006A2D0(0, 0xC000000000000000);
  v40 = 0;
LABEL_95:
  sub_10006A2D0(v40, v39);
LABEL_96:
  v65 = v91;
LABEL_97:
  v117 = v112;
  v118 = v113;
  v119 = v114;
  v115 = v110;
  v116 = v111;
LABEL_98:
  v21 = v97;
  LODWORD(v4) = loga;
LABEL_99:
  v67 = v4;
  sub_1000938D4(&v115, &v110, &qword_100504FA8, &qword_10040C588);
  sub_10006A2BC(v19, v93);
  sub_1000938D4(&v115, &v110, &qword_100504FA8, &qword_10040C588);
  sub_10018D53C(v104, v95, v21, v94, v67, v65);

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.info.getter();

  sub_10006A2D0(v19, v93);
  if (os_log_type_enabled(v68, v69))
  {
    v90 = v69;
    logb = v68;
    v70 = swift_slowAlloc();
    *&v108[0] = swift_slowAlloc();
    *v70 = 136315906;
    *(v70 + 4) = sub_1002FFA0C(a2, a3, v108);
    *(v70 + 12) = 1024;
    *(v70 + 14) = v95 != 0;
    sub_10018D59C(v104, v95, v97, v94, v67, v65);
    *(v70 + 18) = 2080;
    if (v93 >> 60 == 15)
    {
      v71 = v67;
      v72 = 0xE500000000000000;
      v73 = 0x3E6C696E3CLL;
    }

    else
    {
      sub_100069E2C(v19, v93);
      sub_100288640(4, v19, v93, &v110);
      v75 = *(&v110 + 1);
      v74 = v110;
      v107[0] = sub_100288788(v110, *(&v110 + 1));
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v73 = BidirectionalCollection<>.joined(separator:)();
      v72 = v76;
      v77 = v75;
      v71 = v67;
      sub_10006A178(v74, v77);
    }

    v78 = sub_1002FFA0C(v73, v72, v108);

    *(v70 + 20) = v78;
    *(v70 + 28) = 1024;
    v79 = v119 != 2;
    sub_100075768(&v115, &qword_100504FA8, &qword_10040C588);
    *(v70 + 30) = v79;
    sub_100075768(&v115, &qword_100504FA8, &qword_10040C588);
    _os_log_impl(&_mh_execute_header, logb, v90, "For view %s cachedView %{BOOL}d currentTLK %s loadedTLK %{BOOL}d", v70, 0x22u);
    swift_arrayDestroy();

    sub_10018D59C(v104, v95, v97, v94, v71, v91);
    sub_10006A2D0(v19, v93);
  }

  else
  {
    sub_100075768(&v115, &qword_100504FA8, &qword_10040C588);
    sub_100075768(&v115, &qword_100504FA8, &qword_10040C588);
    sub_10018D59C(v104, v95, v97, v94, v67, v65);
    sub_10018D59C(v104, v95, v97, v94, v67, v65);

    sub_10006A2D0(v19, v93);
  }

  v80 = v118;
  *(a4 + 32) = v117;
  *(a4 + 48) = v80;
  *(a4 + 64) = v119;
  result = v116;
  *a4 = v115;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_100161B88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C288C;

  return sub_100161C18();
}

uint64_t sub_100161C38(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Asking CK to synchronize everything", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = sub_100161D88;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100161D88()
{

  return _swift_task_switch(sub_100161E84, 0, 0);
}

uint64_t sub_100161E84()
{
  v1 = sub_1000B3934(&off_1004C4678);
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_100161F2C;

  return sub_10015F214(v1);
}

uint64_t sub_100161F2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_10016203C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  result = sub_10018C318(a3, a4, v67);
  v7 = 0uLL;
  if (v68)
  {
    v50 = a2;
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = v69;
      v11 = v70;
      v12 = v71;
      v13 = (a1 + 32);
      if (v69)
      {
        v14 = 0;
      }

      else
      {
        v14 = v70 == 0xC000000000000000;
      }

      v15 = !v14;
      v58 = v15;
      v16 = v70 >> 62;
      v17 = __OFSUB__(HIDWORD(v69), v69);
      v54 = v17;
      v56 = BYTE6(v70);
      while (1)
      {
        v19 = v13[3];
        v64 = v13[2];
        v65 = v19;
        v66 = *(v13 + 64);
        v20 = v13[1];
        v62 = *v13;
        v63 = v20;
        v21 = *(&v65 + 1) >> 62;
        if (*(&v65 + 1) >> 62 == 3)
        {
          break;
        }

        if (v21 > 1)
        {
          if (v21 != 2)
          {
            goto LABEL_39;
          }

          v27 = *(v65 + 16);
          v26 = *(v65 + 24);
          v28 = __OFSUB__(v26, v27);
          v25 = v26 - v27;
          if (v28)
          {
            goto LABEL_74;
          }

          if (v16 <= 1)
          {
            goto LABEL_36;
          }
        }

        else if (v21)
        {
          LODWORD(v25) = DWORD1(v65) - v65;
          if (__OFSUB__(DWORD1(v65), v65))
          {
            goto LABEL_73;
          }

          v25 = v25;
          if (v16 <= 1)
          {
LABEL_36:
            v29 = v56;
            if (v16)
            {
              v29 = HIDWORD(v10) - v10;
              if (v54)
              {
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                __break(1u);
LABEL_76:
                __break(1u);
LABEL_77:
                __break(1u);
LABEL_78:
                __break(1u);
              }
            }

            goto LABEL_42;
          }
        }

        else
        {
          v25 = BYTE14(v65);
          if (v16 <= 1)
          {
            goto LABEL_36;
          }
        }

LABEL_40:
        if (v16 != 2)
        {
          if (v25)
          {
            goto LABEL_16;
          }

LABEL_13:
          sub_10018C628(&v62, v61);
LABEL_14:
          v18 = v66;
          if (((v66 ^ v12) & 1) == 0)
          {
            v57 = v64;
            v59 = v65;
            v53 = v62;
            v55 = v63;
            result = sub_100075768(v67, &qword_100504FB0, &qword_10040C590);
            v46 = v57;
            v47 = v59;
            v7 = v53;
            v45 = v55;
            a2 = v50;
            goto LABEL_71;
          }

          goto LABEL_15;
        }

        v31 = *(v10 + 16);
        v30 = *(v10 + 24);
        v28 = __OFSUB__(v30, v31);
        v29 = v30 - v31;
        if (v28)
        {
          goto LABEL_72;
        }

LABEL_42:
        if (v25 != v29)
        {
          goto LABEL_16;
        }

        if (v25 < 1)
        {
          goto LABEL_13;
        }

        if (v21 > 1)
        {
          if (v21 == 2)
          {
            v51 = v9;
            v48 = v12;
            v32 = v11;
            v34 = *(v65 + 16);
            v33 = *(v65 + 24);
            sub_10018C628(&v62, v61);
            v35 = __DataStorage._bytes.getter();
            if (v35)
            {
              v36 = __DataStorage._offset.getter();
              if (__OFSUB__(v34, v36))
              {
                goto LABEL_77;
              }

              v35 += v34 - v36;
            }

            if (__OFSUB__(v33, v34))
            {
              goto LABEL_76;
            }

            __DataStorage._length.getter();
            v37 = v35;
            v11 = v32;
            v38 = v32;
            v9 = v51;
            sub_10019F024(v37, v10, v38, v61);
            v39 = v61[0];
            v12 = v48;
LABEL_63:
            if (v39)
            {
              goto LABEL_14;
            }

            goto LABEL_15;
          }

          memset(v60, 0, 14);
          sub_10018C628(&v62, v61);
        }

        else
        {
          if (v21)
          {
            v52 = v9;
            v40 = v12;
            v41 = v65;
            if (v65 >> 32 < v65)
            {
              goto LABEL_75;
            }

            v49 = v11;
            sub_10018C628(&v62, v61);
            v42 = __DataStorage._bytes.getter();
            if (v42)
            {
              v43 = __DataStorage._offset.getter();
              if (__OFSUB__(v41, v43))
              {
                goto LABEL_78;
              }

              v42 += v41 - v43;
            }

            v12 = v40;
            __DataStorage._length.getter();
            v44 = v42;
            v11 = v49;
            v9 = v52;
            sub_10019F024(v44, v10, v49, v61);
            v39 = v61[0];
            goto LABEL_63;
          }

          LODWORD(v60[0]) = v65;
          WORD2(v60[0]) = WORD2(v65);
          *(v60 + 6) = *(&v65 + 6);
          sub_10018C628(&v62, v61);
        }

        sub_10019F024(v60, v10, v11, v61);
        if (v61[0])
        {
          goto LABEL_14;
        }

LABEL_15:
        sub_10018C684(&v62);
LABEL_16:
        v13 = (v13 + 72);
        if (!--v8)
        {
          goto LABEL_68;
        }
      }

      if (v65)
      {
        v22 = 0;
      }

      else
      {
        v22 = *(&v65 + 1) == 0xC000000000000000;
      }

      v24 = !v22 || v16 < 3;
      if (((v24 | v58) & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_39:
      v25 = 0;
      if (v16 <= 1)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }

LABEL_68:
    result = sub_100075768(v67, &qword_100504FB0, &qword_10040C590);
    v18 = 2;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    a2 = v50;
    v7 = 0uLL;
  }

  else
  {
    v18 = 2;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
  }

LABEL_71:
  *a2 = v7;
  *(a2 + 16) = v45;
  *(a2 + 32) = v46;
  *(a2 + 48) = v47;
  *(a2 + 64) = v18;
  return result;
}

void sub_1001625A8(uint64_t a1, unint64_t a2, char *a3)
{
  v8 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v8 - 8);
  v10 = &v118 - v9;
  sub_10026FF50(v138);
  *&v133 = a1;
  *(&v133 + 1) = a2;
  sub_100069E2C(a1, a2);
  v11 = sub_1001A93E0(&v133, v138);
  if (v4)
  {
    v147 = v139;
    v148 = v140;
    sub_10018C454(&v147);
    v131 = v141;
    sub_100075768(&v131, &qword_100504EC8, &qword_10040C3B0);
    sub_10006A178(v133, *(&v133 + 1));
    return;
  }

  v145 = v139;
  v146 = v140;
  v12 = v11;
  sub_10018C454(&v145);
  v130 = v141;
  sub_100075768(&v130, &qword_100504EC8, &qword_10040C3B0);
  sub_10006A178(v133, *(&v133 + 1));
  sub_1002700F8(v12, &v142);
  v13 = v143;
  v14 = v144;
  sub_100069E2C(v143, v144);
  sub_10018C4A8(&v142);
  v15 = *(v3 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_state);
  os_unfair_lock_lock((v15 + 48));
  v16 = *(v15 + 32);

  os_unfair_lock_unlock((v15 + 48));
  v125 = v14;
  v122 = v13;
  if (v16)
  {
    v128 = 0;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    v19 = os_log_type_enabled(v17, v18);
    v124 = v16;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v133 = v21;
      *v20 = 136315138;
      v22 = Array.description.getter();
      v24 = sub_1002FFA0C(v22, v23, &v133);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Have (cached) TLKs %s", v20, 0xCu);
      sub_1000752F4(v21);
      v25 = v124;
    }

    else
    {
      v25 = v16;
    }

    v40 = v25[2];
    v41 = v128;
    if (!v40)
    {
      v31 = v122;
LABEL_73:

      v72 = 0;
LABEL_75:
      [objc_allocWithZone(NSNumber) initWithBool:v72];
      goto LABEL_77;
    }

    v42 = 0;
    v31 = v122;
    if (v122)
    {
      v43 = 0;
    }

    else
    {
      v43 = v14 == 0xC000000000000000;
    }

    v44 = !v43;
    LODWORD(v127) = v44;
    v45 = v14 >> 62;
    v46 = __OFSUB__(HIDWORD(v122), v122);
    LODWORD(v120) = v46;
    v119 = (HIDWORD(v122) - v122);
    v126 = BYTE6(v14);
    v47 = 4;
    v121 = v40;
    v123 = (v14 >> 62);
    while (1)
    {
      if (v42 >= v25[2])
      {
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      v133 = *&v25[v47];
      v48 = *&v25[v47 + 2];
      v49 = *&v25[v47 + 4];
      v50 = *&v25[v47 + 6];
      v137 = v25[v47 + 8];
      v135 = v49;
      v136 = v50;
      v134 = v48;
      v51 = *(&v133 + 1) >> 62;
      if (*(&v133 + 1) >> 62 == 3)
      {
        break;
      }

      if (v51 > 1)
      {
        if (v51 != 2)
        {
          goto LABEL_45;
        }

        v57 = *(v133 + 16);
        v56 = *(v133 + 24);
        v58 = __OFSUB__(v56, v57);
        v55 = v56 - v57;
        if (v58)
        {
          goto LABEL_151;
        }

        if (v45 <= 1)
        {
          goto LABEL_42;
        }
      }

      else if (v51)
      {
        LODWORD(v55) = DWORD1(v133) - v133;
        if (__OFSUB__(DWORD1(v133), v133))
        {
          goto LABEL_150;
        }

        v55 = v55;
        if (v45 <= 1)
        {
LABEL_42:
          v59 = v126;
          if (v45)
          {
            v59 = v119;
            if (v120)
            {
              goto LABEL_148;
            }
          }

          goto LABEL_48;
        }
      }

      else
      {
        v55 = BYTE14(v133);
        if (v45 <= 1)
        {
          goto LABEL_42;
        }
      }

LABEL_46:
      if (v45 != 2)
      {
        if (!v55)
        {
          goto LABEL_74;
        }

        goto LABEL_21;
      }

      v61 = *(v31 + 16);
      v60 = *(v31 + 24);
      v58 = __OFSUB__(v60, v61);
      v59 = (v60 - v61);
      if (v58)
      {
        goto LABEL_147;
      }

LABEL_48:
      if (v55 == v59)
      {
        if (v55 < 1)
        {
          goto LABEL_74;
        }

        if (v51 > 1)
        {
          if (v51 != 2)
          {
            *&v129[6] = 0;
            *v129 = 0;
            sub_10018C628(&v133, v132);
            goto LABEL_70;
          }

          v62 = v31;
          v128 = v41;
          v63 = *(v133 + 16);
          v64 = *(v133 + 24);
          sub_10018C628(&v133, v132);
          v65 = __DataStorage._bytes.getter();
          if (v65)
          {
            v66 = __DataStorage._offset.getter();
            if (__OFSUB__(v63, v66))
            {
              goto LABEL_154;
            }

            v65 += v63 - v66;
          }

          if (__OFSUB__(v64, v63))
          {
            goto LABEL_153;
          }

          __DataStorage._length.getter();
          v67 = v65;
          v31 = v62;
        }

        else
        {
          if (!v51)
          {
            *v129 = v133;
            *&v129[8] = DWORD2(v133);
            *&v129[12] = WORD6(v133);
            sub_10018C628(&v133, v132);
            v40 = v121;
LABEL_70:
            sub_10019F024(v129, v31, v14, v132);
            sub_10018C684(&v133);
            if (v132[0])
            {
              goto LABEL_74;
            }

LABEL_71:
            v45 = v123;
            goto LABEL_21;
          }

          v128 = v41;
          v62 = v31;
          v68 = v133;
          if (v133 >> 32 < v133)
          {
            goto LABEL_152;
          }

          sub_10018C628(&v133, v132);
          v69 = __DataStorage._bytes.getter();
          if (v69)
          {
            v70 = __DataStorage._offset.getter();
            if (__OFSUB__(v68, v70))
            {
              goto LABEL_155;
            }

            v69 += v68 - v70;
          }

          v31 = v62;
          __DataStorage._length.getter();
          v67 = v69;
        }

        v14 = v125;
        v71 = v128;
        sub_10019F024(v67, v62, v125, v132);
        v41 = v71;
        sub_10018C684(&v133);
        v25 = v124;
        v40 = v121;
        if (v132[0])
        {
          goto LABEL_74;
        }

        goto LABEL_71;
      }

LABEL_21:
      ++v42;
      v47 += 9;
      if (v40 == v42)
      {
        goto LABEL_73;
      }
    }

    if (v133)
    {
      v52 = 0;
    }

    else
    {
      v52 = *(&v133 + 1) == 0xC000000000000000;
    }

    v54 = !v52 || v45 < 3;
    if (((v54 | v127) & 1) == 0)
    {
LABEL_74:

      v72 = 1;
      goto LABEL_75;
    }

LABEL_45:
    v55 = 0;
    if (v45 <= 1)
    {
      goto LABEL_42;
    }

    goto LABEL_46;
  }

  v126 = v15;
  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v3;
  *(v27 + 40) = 9;

  sub_1001F9BE8(0, 0, v10, &unk_10040C3C0, v27);

  v28 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
  sub_100069E2C(v13, v14);
  v127 = v28;
  v128 = v3;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  sub_10006A178(v13, v14);
  v31 = v13;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v123 = v32;
    v124 = swift_slowAlloc();
    v132[0] = v124;
    *v32 = 136315138;
    sub_100069E2C(v31, v14);
    sub_100288640(4, v31, v14, &v133);
    v33 = v133;
    *v129 = sub_100288788(v133, *(&v133 + 1));
    v120 = v29;
    LODWORD(v121) = v30;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v34 = BidirectionalCollection<>.joined(separator:)();
    v36 = v35;
    sub_10006A178(v33, *(&v33 + 1));

    v37 = sub_1002FFA0C(v34, v36, v132);
    v31 = v122;

    v38 = v123;
    *(v123 + 1) = v37;
    v39 = v120;
    _os_log_impl(&_mh_execute_header, v120, v121, "Falling back to listing SE for %s", v38, 0xCu);
    sub_1000752F4(v124);
  }

  else
  {
  }

  v73 = sub_1001A2ED8(a3);

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.info.getter();

  v76 = os_log_type_enabled(v74, v75);
  v123 = v73;
  if (v76)
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *&v133 = v78;
    *v77 = 136315138;
    v79 = Array.description.getter();
    v81 = sub_1002FFA0C(v79, v80, &v133);
    v73 = v123;

    *(v77 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v74, v75, "Got TLKS %s", v77, 0xCu);
    sub_1000752F4(v78);
  }

  v82 = v126;
  __chkstk_darwin(v83);
  *(&v118 - 2) = v73;
  os_unfair_lock_lock(v82 + 12);
  sub_10018C5DC(&v82[4]);
  v84 = 0;
  os_unfair_lock_unlock(v82 + 12);
  v85 = *(v73 + 16);
  v14 = v125;
  if (!v85)
  {
LABEL_143:

    v117 = 0;
    goto LABEL_145;
  }

  v86 = 0;
  if (v31)
  {
    v87 = 0;
  }

  else
  {
    v87 = v125 == 0xC000000000000000;
  }

  v88 = !v87;
  LODWORD(v127) = v88;
  v89 = (v125 >> 62);
  v90 = __OFSUB__(HIDWORD(v31), v31);
  LODWORD(v120) = v90;
  v119 = (HIDWORD(v31) - v31);
  v126 = BYTE6(v125);
  v91 = 32;
  v121 = v85;
  v124 = (v125 >> 62);
  while (1)
  {
    if (v86 >= *(v73 + 16))
    {
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
    }

    v133 = *(v73 + v91);
    v92 = *(v73 + v91 + 16);
    v93 = *(v73 + v91 + 32);
    v94 = *(v73 + v91 + 48);
    v137 = *(v73 + v91 + 64);
    v135 = v93;
    v136 = v94;
    v134 = v92;
    v95 = *(&v133 + 1) >> 62;
    if (*(&v133 + 1) >> 62 == 3)
    {
      break;
    }

    if (v95 > 1)
    {
      if (v95 != 2)
      {
        goto LABEL_116;
      }

      v101 = *(v133 + 16);
      v100 = *(v133 + 24);
      v58 = __OFSUB__(v100, v101);
      v99 = v100 - v101;
      if (v58)
      {
        goto LABEL_159;
      }

      if (v89 <= 1)
      {
        goto LABEL_113;
      }
    }

    else if (v95)
    {
      LODWORD(v99) = DWORD1(v133) - v133;
      if (__OFSUB__(DWORD1(v133), v133))
      {
        goto LABEL_158;
      }

      v99 = v99;
      if (v89 <= 1)
      {
LABEL_113:
        v102 = v126;
        if (v89)
        {
          v102 = v119;
          if (v120)
          {
            goto LABEL_157;
          }
        }

        goto LABEL_119;
      }
    }

    else
    {
      v99 = BYTE14(v133);
      if (v89 <= 1)
      {
        goto LABEL_113;
      }
    }

LABEL_117:
    if (v89 != 2)
    {
      if (!v99)
      {
        goto LABEL_144;
      }

      goto LABEL_92;
    }

    v104 = *(v31 + 16);
    v103 = *(v31 + 24);
    v58 = __OFSUB__(v103, v104);
    v102 = (v103 - v104);
    if (v58)
    {
      goto LABEL_156;
    }

LABEL_119:
    if (v99 == v102)
    {
      if (v99 < 1)
      {
        goto LABEL_144;
      }

      if (v95 > 1)
      {
        if (v95 != 2)
        {
          *&v129[6] = 0;
          *v129 = 0;
          sub_10018C628(&v133, v132);
LABEL_141:
          sub_10019F024(v129, v31, v14, v132);
          sub_10018C684(&v133);
          if (v132[0])
          {
            goto LABEL_144;
          }

          goto LABEL_142;
        }

        v105 = v84;
        v106 = *(v133 + 16);
        v128 = *(v133 + 24);
        sub_10018C628(&v133, v132);
        v107 = __DataStorage._bytes.getter();
        if (v107)
        {
          v108 = __DataStorage._offset.getter();
          if (__OFSUB__(v106, v108))
          {
            goto LABEL_162;
          }

          v107 += v106 - v108;
        }

        if (__OFSUB__(v128, v106))
        {
          goto LABEL_161;
        }

        __DataStorage._length.getter();
        v109 = v107;
        v110 = v31;
        v14 = v125;
        v111 = v125;
        v112 = v105;
      }

      else
      {
        if (!v95)
        {
          *v129 = v133;
          *&v129[8] = DWORD2(v133);
          *&v129[12] = WORD6(v133);
          sub_10018C628(&v133, v132);
          v85 = v121;
          goto LABEL_141;
        }

        v128 = v84;
        v113 = v31;
        v114 = v133;
        if (v133 >> 32 < v133)
        {
          goto LABEL_160;
        }

        sub_10018C628(&v133, v132);
        v115 = __DataStorage._bytes.getter();
        if (v115)
        {
          v116 = __DataStorage._offset.getter();
          if (__OFSUB__(v114, v116))
          {
            goto LABEL_163;
          }

          v115 += v114 - v116;
        }

        v31 = v113;
        __DataStorage._length.getter();
        v109 = v115;
        v110 = v113;
        v14 = v125;
        v111 = v125;
        v112 = v128;
      }

      sub_10019F024(v109, v110, v111, v132);
      v84 = v112;
      sub_10018C684(&v133);
      v73 = v123;
      v85 = v121;
      if (v132[0])
      {
        goto LABEL_144;
      }

LABEL_142:
      v89 = v124;
    }

LABEL_92:
    ++v86;
    v91 += 72;
    if (v85 == v86)
    {
      goto LABEL_143;
    }
  }

  if (v133)
  {
    v96 = 0;
  }

  else
  {
    v96 = *(&v133 + 1) == 0xC000000000000000;
  }

  v98 = !v96 || v89 < 3;
  if ((v98 | v127))
  {
LABEL_116:
    v99 = 0;
    if (v89 <= 1)
    {
      goto LABEL_113;
    }

    goto LABEL_117;
  }

LABEL_144:

  v117 = 1;
LABEL_145:
  sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
  NSNumber.init(BOOLeanLiteral:)(v117);
LABEL_77:
  sub_10006A178(v31, v14);
}