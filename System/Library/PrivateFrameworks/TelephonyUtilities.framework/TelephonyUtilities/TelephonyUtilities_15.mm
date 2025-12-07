unint64_t sub_1002F1B2C()
{
  result = qword_1006A46F0;
  if (!qword_1006A46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A46F0);
  }

  return result;
}

uint64_t sub_1002F1B8C(uint64_t a1)
{
  result = 0x7469736F706D6F63;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x61737265766E6F63;
      break;
    case 2:
      result = 1819042147;
      break;
    case 3:
      result = 0x79627261656ELL;
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

unint64_t sub_1002F1C48(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1002F1C58@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1002F1C48(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1002F1CC4()
{
  result = qword_1006A46F8;
  if (!qword_1006A46F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A46F8);
  }

  return result;
}

void sub_1002F2348()
{
  sub_100005EF4();
  v6 = v5;
  v7 = type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v8);
  sub_100007BAC();
  sub_10001863C();
  __chkstk_darwin(v9);
  sub_10000BB80();
  sub_10000A758();
  sub_1000053E8(v10, v11, &protocol conformance descriptor for UUID);
  sub_10000790C();
  Set.init(minimumCapacity:)();
  v12 = *(v6 + 16);
  if (v12)
  {
    sub_10001ABC0();
    do
    {
      v3(v0, v2, v7);
      sub_10039653C();
      (*v6)(v1, v7);
      v2 += v4;
      --v12;
    }

    while (v12);
  }

  else
  {
    sub_10000C3F0();
  }

  sub_100027E90();
  sub_100005EDC();
}

void sub_1002F2494()
{
  sub_100005EF4();
  v6 = v5;
  v7 = type metadata accessor for Participant();
  sub_100007FEC();
  __chkstk_darwin(v8);
  sub_100007BAC();
  sub_10001863C();
  __chkstk_darwin(v9);
  sub_10000BB80();
  sub_1000053E8(&unk_1006A4860, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
  sub_10000790C();
  Set.init(minimumCapacity:)();
  v10 = *(v6 + 16);
  if (v10)
  {
    sub_10001ABC0();
    do
    {
      v3(v0, v2, v7);
      sub_1003966D8();
      (*v6)(v1, v7);
      v2 += v4;
      --v10;
    }

    while (v10);
  }

  else
  {
    sub_10000C3F0();
  }

  sub_100027E90();
  sub_100005EDC();
}

void sub_1002F25F0()
{
  sub_100005EF4();
  v2 = v1;
  v86 = type metadata accessor for UUID();
  sub_100007FEC();
  v81 = v3;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v84 = v6 - v5;
  v7 = sub_10026D814(&qword_1006A47F0, &qword_10057F840);
  sub_100008070();
  __chkstk_darwin(v8);
  sub_100007BAC();
  v65 = v9 - v10;
  sub_100006838();
  __chkstk_darwin(v11);
  v13 = v62 - v12;
  v14 = sub_10026D814(&qword_1006A47F8, &qword_10057F848);
  __chkstk_darwin(v14 - 8);
  sub_100007BAC();
  v76 = v15 - v16;
  sub_100006838();
  __chkstk_darwin(v17);
  sub_10001863C();
  __chkstk_darwin(v18);
  v74 = v62 - v19;
  v20 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v20 - 8);
  sub_100007BAC();
  v73 = v21 - v22;
  sub_100006838();
  __chkstk_darwin(v23);
  v75 = v62 - v24;
  sub_100006AF0(0, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  sub_10000CE3C(&qword_1006A4800, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  v25 = v13;
  v26 = 0;
  v93[1] = Set.init(minimumCapacity:)();
  v27 = *v2;
  v29 = v2[2];
  v28 = v2[3];
  v87 = v2[1];
  v88 = v29;
  v64 = v28;
  v30 = v2[5];
  v67 = v2[4];
  v70 = v30;
  v31 = v27 + 64;
  v72 = v2[6];
  v69 = v2[7];
  v80 = v27;
  sub_10002F628();
  v34 = v33 & v32;
  v35 = v2[9];
  v71 = v2[8];
  v63 = v35;
  v62[1] = v36;
  v66 = v2[10];
  v37 = (63 - v36) >> 6;
  v77 = v81 + 16;
  v83 = (v81 + 32);
  v68 = (v81 + 8);
  v78 = v25;
  v79 = v7;
  v82 = v0;
  v85 = v31;
  v89 = v37;
  while (v34)
  {
    v38 = v26;
LABEL_8:
    v39 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v40 = v39 | (v38 << 6);
    v42 = v80;
    v41 = v81;
    v43 = v84;
    v44 = v86;
    (*(v81 + 16))(v84, *(v80 + 48) + *(v81 + 72) * v40, v86);
    v45 = *(v42 + 56) + 8 * v40;
    LODWORD(v40) = *v45;
    v46 = *(v45 + 4);
    v47 = *(v45 + 5);
    LOBYTE(v42) = *(v45 + 6);
    v90 = *(v45 + 7);
    v91 = v47;
    v7 = v79;
    v48 = v82 + *(v79 + 48);
    v49 = *(v41 + 32);
    v0 = v82;
    v49(v82, v43, v44);
    v50 = 0;
    *v48 = v40;
    *(v48 + 4) = v46;
    v51 = v90;
    *(v48 + 5) = v91;
    *(v48 + 6) = v42;
    *(v48 + 7) = v51;
    v25 = v78;
    v31 = v85;
LABEL_9:
    sub_10000AF74(v0, v50, 1, v7);
    if (sub_100015468(v0, 1, v7) == 1)
    {
      sub_100009A04(v0, &qword_1006A47F8, &qword_10057F848);
      v52 = 1;
      v53 = v74;
      goto LABEL_15;
    }

    sub_10000F32C();
    sub_1002982D0();
    if (v87(v25))
    {
      v53 = v74;
      sub_1002982D0();
      v52 = 0;
LABEL_15:
      v54 = 1;
      sub_10000AF74(v53, v52, 1, v7);
      v55 = v76;
      sub_1002982D0();
      if (sub_100015468(v55, 1, v7) != 1)
      {
        v56 = v65;
        sub_1002982D0();
        v64(v56);
        sub_100009A04(v56, &qword_1006A47F0, &qword_10057F840);
        v54 = 0;
      }

      v57 = v54;
      v58 = v86;
      sub_10000AF74(v75, v57, 1, v86);
      v59 = v73;
      sub_1002982D0();
      if (sub_100015468(v59, 1, v58) == 1)
      {
        goto LABEL_23;
      }

      v60 = v84;
      (*v83)(v84, v59, v58);
      v70(&v92, v60);
      (*v68)(v60, v58);
      v61 = v92;
      v93[0] = v92;
      if (v69(v93))
      {
        v93[0] = v61;
        v63(&v92, v93);

        sub_100396394(v93, v92);
      }

      else
      {
      }

      v0 = v82;
      v31 = v85;
      v37 = v89;
    }

    else
    {
      sub_100009A04(v25, &qword_1006A47F0, &qword_10057F840);
      v37 = v89;
    }
  }

  while (1)
  {
    v38 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v38 >= v37)
    {
      v34 = 0;
      v50 = 1;
      goto LABEL_9;
    }

    v34 = *(v31 + 8 * v38);
    ++v26;
    if (v34)
    {
      v26 = v38;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  sub_100022DDC(v80);

  sub_100005EDC();
}

void sub_1002F2CF4(uint64_t a1, char *a2, char a3, void *a4)
{
  v4 = a4;
  v6 = *(a1 + 16);
  v66 = OBJC_IVAR___CSDProcessObserver_processInfoByBundleIdentifier;
  v7 = (a1 + 40);
  if (!v6)
  {
LABEL_34:

    return;
  }

  while (1)
  {
    v64 = v7;
    v65 = v6;
    v8 = *(v7 - 1);
    v9 = *v7;
    swift_beginAccess();
    v10 = *&a2[v66];
    v11 = *(v10 + 16);

    if (v11 && (v12 = sub_100005208(v8, v9), (v13 & 1) != 0))
    {
      v14 = *(*(v10 + 56) + 8 * v12);
      swift_endAccess();
      if ((a3 & 1) == 0)
      {
        v63 = v14;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *v4;
        v67 = *v4;
        v17 = v8;
        v18 = sub_100005208(v8, v9);
        v20 = v16[2];
        v21 = (v19 & 1) == 0;
        v22 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          goto LABEL_39;
        }

        v23 = v18;
        v24 = v19;
        sub_10026D814(&unk_1006A4770, &qword_10057F7F8);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v22))
        {
          v25 = sub_100005208(v17, v9);
          if ((v24 & 1) != (v26 & 1))
          {
            goto LABEL_40;
          }

          v23 = v25;
        }

        v27 = v67;
        if ((v24 & 1) == 0)
        {
          v67[(v23 >> 6) + 8] |= 1 << v23;
          v59 = (v67[6] + 16 * v23);
          *v59 = v17;
          v59[1] = v9;
          *(v67[7] + 8 * v23) = v63;
          v60 = v67[2];
          v44 = __OFADD__(v60, 1);
          v58 = v60 + 1;
          if (v44)
          {
            __break(1u);
            goto LABEL_34;
          }

LABEL_28:
          v27[2] = v58;

          goto LABEL_29;
        }

        *(v67[7] + 8 * v23) = v63;
        goto LABEL_26;
      }
    }

    else
    {
      swift_endAccess();
    }

    v28 = sub_1000061C4(v8, v9);
    swift_beginAccess();
    v29 = v28;

    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = a2;
    v69 = *&a2[v66];
    v32 = v8;
    v33 = sub_100005208(v8, v9);
    v35 = v69[2];
    v36 = (v34 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v38 = v33;
    v39 = v34;
    sub_10026D814(&unk_1006A4770, &qword_10057F7F8);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v30, v37))
    {
      v40 = sub_100005208(v32, v9);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_40;
      }

      v38 = v40;
    }

    a2 = v31;
    v4 = a4;
    if (v39)
    {
      *(v69[7] + 8 * v38) = v29;
    }

    else
    {
      v69[(v38 >> 6) + 8] |= 1 << v38;
      v42 = (v69[6] + 16 * v38);
      *v42 = v32;
      v42[1] = v9;
      *(v69[7] + 8 * v38) = v29;
      v43 = v69[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_37;
      }

      v69[2] = v45;
    }

    *&a2[v66] = v69;
    swift_endAccess();
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v47 = *a4;
    v68 = *a4;
    v48 = sub_100005208(v32, v9);
    v50 = v49;
    v51 = *(v47 + 16);
    v52 = (v49 & 1) == 0;
    if (__OFADD__(v51, v52))
    {
      goto LABEL_36;
    }

    v53 = v48;
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v46, v51 + v52))
    {
      v54 = sub_100005208(v32, v9);
      if ((v50 & 1) != (v55 & 1))
      {
        goto LABEL_40;
      }

      v53 = v54;
    }

    v27 = v68;
    if ((v50 & 1) == 0)
    {
      v68[(v53 >> 6) + 8] |= 1 << v53;
      v56 = (v68[6] + 16 * v53);
      *v56 = v32;
      v56[1] = v9;
      *(v68[7] + 8 * v53) = v29;
      v57 = v68[2];
      v44 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v44)
      {
        goto LABEL_38;
      }

      goto LABEL_28;
    }

    *(v68[7] + 8 * v53) = v29;
LABEL_26:

LABEL_29:
    *v4 = v27;

    v7 = v64 + 2;
    v6 = v65 - 1;
    if (v65 == 1)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1002F3134(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v26 = v3;
  v27 = a2;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v10 = __clz(__rbit64(v6)) | (v8 << 6);
      v11 = *(*(a1 + 48) + 4 * v10);
      v29 = *(*(a1 + 56) + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *a2;
      v13 = sub_100007558(v11);
      v15 = v30[2];
      v16 = (v14 & 1) == 0;
      v17 = v15 + v16;
      if (__OFADD__(v15, v16))
      {
        break;
      }

      v18 = v13;
      v19 = v14;
      sub_10026D814(&qword_1006A4768, &qword_10057F7F0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
      {
        v20 = sub_100007558(v11);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_22;
        }

        v18 = v20;
      }

      if (v19)
      {
        *(v30[7] + 8 * v18) = v29;
      }

      else
      {
        v30[(v18 >> 6) + 8] |= 1 << v18;
        *(v30[6] + 4 * v18) = v11;
        *(v30[7] + 8 * v18) = v29;
        v22 = v30[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_21;
        }

        v30[2] = v24;
      }

      v6 &= v6 - 1;
      v3 = v26;
      a2 = v27;
      *v27 = v30;
      if (!v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t ProcessState.init(rawValue:)(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1002F3348@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ProcessState.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1002F337C(void *a1)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [v1 initWithBundleIdentifiers:isa queue:a1];

  return v4;
}

char *sub_1002F340C()
{
  sub_100010060();
  v3 = objc_allocWithZone(v1);
  return sub_1002F344C(v2, v0);
}

char *sub_1002F344C(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v5);
  sub_100007FDC();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v31 = v7;
  v32 = v6;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v10 = v9 - v8;
  *&v2[OBJC_IVAR___CSDProcessObserver_processInfoByBundleIdentifier] = _swiftEmptyDictionarySingleton;
  v11 = &v2[OBJC_IVAR___CSDProcessObserver_processStateChanged];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v2[OBJC_IVAR___CSDProcessObserver_processStateChangedWithBundleID];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = objc_allocWithZone(BKSApplicationStateMonitor);
  result = sub_1002F5B2C(_swiftEmptyArrayStorage, 0);
  if (result)
  {
    *&v2[OBJC_IVAR___CSDProcessObserver_applicationMonitor] = result;
    *&v2[OBJC_IVAR___CSDProcessObserver_queue] = a2;
    v39.receiver = v2;
    v39.super_class = ObjectType;
    v29 = a2;
    v15 = objc_msgSendSuper2(&v39, "init");
    v16 = *&v15[OBJC_IVAR___CSDProcessObserver_applicationMonitor];
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = sub_100005430;
    v38 = v17;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_100005438;
    v36 = &unk_100625A80;
    v18 = _Block_copy(&aBlock);
    v19 = v15;
    v20 = v16;

    [v20 setHandler:v18];
    _Block_release(v18);

    v21 = *&v19[OBJC_IVAR___CSDProcessObserver_queue];
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = a1;
    v37 = sub_1002F6EBC;
    v38 = v22;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_100004CEC;
    v36 = &unk_100625AD0;
    v23 = _Block_copy(&aBlock);
    v24 = v21;
    static DispatchQoS.unspecified.getter();
    sub_1000159F0();
    sub_1000053E8(v25, v26, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    sub_1000076A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    v27 = sub_100007764();
    v28(v27);
    (*(v31 + 8))(v10, v32);

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002F3838(uint64_t a1, uint64_t a2)
{
  sub_1002F3874(a2, 0);
}

uint64_t sub_1002F3BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a2;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 32;
    do
    {
      v11 = sub_10000C1EC(a1, *(a1 + v10), a3, a4, a5, a6, a7, a8, v21);
      sub_1003963DC(v11, v12, v13, v14, v15, v16, v17, v18, v22, v23);
      v10 += 8;
      --v9;
    }

    while (v9);

    return v23;
  }

  else
  {
    v19 = a2;
  }

  return v19;
}

void *sub_1002F3C28(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = sub_100006900();
    sub_10039A320(v4, v5, v6);
    v3 = v12;
    v7 = v1 + 40;
    do
    {

      swift_dynamicCast();
      v12 = v3;
      v9 = v3[2];
      v8 = v3[3];
      if (v9 >= v8 >> 1)
      {
        sub_10039A320((v8 > 1), v9 + 1, 1);
        v3 = v12;
      }

      v3[2] = v9 + 1;
      sub_10003EBF0(&v11, &v3[4 * v9 + 4]);
      v7 += 16;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void sub_1002F3D14()
{
  sub_100005EF4();
  sub_100006B84();
  if (v2)
  {
    sub_10000E9D4();
    v0 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    sub_100035CC0();
  }

  if (!v0)
  {
LABEL_13:
    sub_100027E90();
    sub_100005EDC();
    return;
  }

  v3 = sub_100008B20();
  sub_10039A3C0(v3, v4, v5);
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_10000BA24();
    do
    {
      if (v1)
      {
        sub_100007764();
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        sub_10000FBE4();
      }

      v6 = sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
      sub_100015F5C(v6);
      if (v7)
      {
        sub_10003DB64();
        sub_10039A3C0(v18, v19, v20);
      }

      sub_100008D74();
      sub_1000083C0();
      __chkstk_darwin(v8);
      sub_100007FDC();
      v10 = sub_10000FD94(v9);
      v11(v10);
      v12 = sub_100011308();
      sub_10039BE6C(v12, v13, v14, v15, v16);
      sub_100009B7C(&v21);
      sub_100035DDC();
    }

    while (!v17);
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1002F3E70()
{
  sub_100005EF4();
  sub_100006B84();
  if (v2)
  {
    sub_10000E9D4();
    v0 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    sub_100035CC0();
  }

  if (!v0)
  {
LABEL_13:
    sub_100027E90();
    sub_100005EDC();
    return;
  }

  v3 = sub_100008B20();
  sub_10039A400(v3, v4, v5);
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_10000BA24();
    do
    {
      if (v1)
      {
        sub_100007764();
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        sub_10000FBE4();
      }

      v6 = sub_100006AF0(0, &qword_1006A4850, CNFavoritesEntry_ptr);
      sub_100015F5C(v6);
      if (v7)
      {
        sub_10003DB64();
        sub_10039A400(v18, v19, v20);
      }

      sub_100008D74();
      sub_1000083C0();
      __chkstk_darwin(v8);
      sub_100007FDC();
      v10 = sub_10000FD94(v9);
      v11(v10);
      v12 = sub_100011308();
      sub_1002F705C(v12, v13, v14, v15, v16);
      sub_100009B7C(&v21);
      sub_100035DDC();
    }

    while (!v17);
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1002F3FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_10002767C();
  a24 = v27;
  a25 = v28;
  sub_100006B84();
  if (v29)
  {
    sub_10000E9D4();
    v26 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    sub_100035CC0();
  }

  if (!v26)
  {
LABEL_12:
    sub_100006660();
    return;
  }

  a13 = _swiftEmptyArrayStorage;
  sub_10039A320(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v31 = a13;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        sub_100007764();
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      sub_10026D814(&qword_1006A5BE0, &qword_100580880);
      swift_dynamicCast();
      a13 = v31;
      v33 = v31[2];
      v32 = v31[3];
      if (v33 >= v32 >> 1)
      {
        sub_10039A320((v32 > 1), v33 + 1, 1);
        v31 = a13;
      }

      ++v30;
      v31[2] = v33 + 1;
      sub_10003EBF0(&a10, &v31[4 * v33 + 4]);
    }

    while (v26 != v30);
    goto LABEL_12;
  }

  __break(1u);
}

void sub_1002F4104()
{
  sub_100005EF4();
  sub_100006B84();
  if (v2)
  {
    sub_10000E9D4();
    v0 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    sub_100035CC0();
  }

  if (!v0)
  {
LABEL_13:
    sub_100027E90();
    sub_100005EDC();
    return;
  }

  v3 = sub_100008B20();
  sub_10039A460(v3, v4, v5);
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_10000BA24();
    do
    {
      if (v1)
      {
        sub_100007764();
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        sub_10000FBE4();
      }

      v6 = sub_100006AF0(0, &qword_1006A4848, VMVoicemail_ptr);
      sub_100015F5C(v6);
      if (v7)
      {
        sub_10003DB64();
        sub_10039A460(v18, v19, v20);
      }

      sub_100008D74();
      sub_1000083C0();
      __chkstk_darwin(v8);
      sub_100007FDC();
      v10 = sub_10000FD94(v9);
      v11(v10);
      v12 = sub_100011308();
      sub_1002F705C(v12, v13, v14, v15, v16);
      sub_100009B7C(&v21);
      sub_100035DDC();
    }

    while (!v17);
    goto LABEL_13;
  }

  __break(1u);
}

void *sub_1002F4260(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = sub_100006900();
    sub_10039A4C0(v4, v5, v6);
    v3 = v13;
    v7 = v1 + 40;
    do
    {

      sub_10026D814(&qword_1006ABFF0, &qword_100588080);
      swift_dynamicCast();
      v8 = v12;
      v10 = v13[2];
      v9 = v13[3];
      if (v10 >= v9 >> 1)
      {
        sub_10039A4C0((v9 > 1), v10 + 1, 1);
        v8 = v12;
      }

      v13[2] = v10 + 1;
      *&v13[2 * v10 + 4] = v8;
      v7 += 16;
      --v2;
    }

    while (v2);
  }

  return v3;
}

unint64_t sub_1002F4368()
{
  result = qword_1006A4700;
  if (!qword_1006A4700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4700);
  }

  return result;
}

void *sub_1002F43CC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v14 = *(v3 + OBJC_IVAR___CSDProcessObserver_queue);
  *(v12 - v11) = v14;
  (*(v9 + 104))(v12 - v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v13, v7);
  if (v14)
  {
    v17 = _swiftEmptyDictionarySingleton;
    v22 = _swiftEmptyDictionarySingleton;
    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057D690;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    v19 = sub_1002F3874(inited, a3 & 1);
    swift_setDeallocating();
    sub_1002F5C78();
    v20 = sub_100005E74(a1, a2, v19);

    if (v20)
    {
      sub_1002F3134(v20, &v22);

      v17 = v22;
    }

    if (!v17[2])
    {
      sub_10026D814(&qword_1006A4758, &qword_10057F7E8);
      v21 = swift_initStackObject();
      sub_100021EF0(v21, xmmword_10057D690);
      Dictionary.init(dictionaryLiteral:)();
      sub_10000C3F0();
      return v20;
    }

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002F46B8()
{
  v0 = sub_100006B30();
  sub_1000115CC(v0, v1);
  return sub_100006B30();
}

uint64_t sub_1002F484C()
{
  v0 = sub_100006B30();
  sub_1000115CC(v0, v1);
  return sub_100006B30();
}

uint64_t sub_1002F4884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v6(v7, v9, a3, a4);
}

void sub_1002F49B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = String._bridgeToObjectiveC()();
  (*(a5 + 16))(a5, v8, a3, a4);
}

_UNKNOWN **sub_1002F4A30()
{
  sub_100010060();
  v3 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = *(v1 + OBJC_IVAR___CSDProcessObserver_queue);
  *(v8 - v7) = v10;
  (*(v5 + 104))(v8 - v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v9, v3);
  if (v10)
  {
    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057D690;
    *(inited + 32) = v2;
    *(inited + 40) = v0;

    v14 = sub_1002F3874(inited, 0);
    swift_setDeallocating();
    sub_1002F5C78();
    v15 = sub_100005E74(v2, v0, v14);

    if (v15)
    {
      return sub_100274078(v15);
    }

    else
    {
      return &off_1006205D8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002F4D7C(uint64_t a1, uint64_t a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

id sub_1002F4E04(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);

  Dictionary._bridgeToObjectiveC()();
  sub_10000C3F0();

  return v9;
}

void sub_1002F4EA0()
{
  sub_100005EF4();
  v25 = v1;
  v26 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v24 = v9;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v10);
  sub_100007FDC();
  v27 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v16 = v15 - v14;
  v17 = swift_allocObject();
  v17[2] = v6;
  v17[3] = v4;
  v17[4] = v0;
  v17[5] = v24;
  v17[6] = v8;
  v28[4] = v25;
  v28[5] = v17;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 1107296256;
  v28[2] = sub_100004CEC;
  v28[3] = v26;
  v18 = _Block_copy(v28);

  v19 = v0;

  static DispatchQoS.unspecified.getter();
  sub_1000159F0();
  sub_1000053E8(v20, v21, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_1000076A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  v22 = sub_100007764();
  v23(v22);
  (*(v12 + 8))(v16, v27);

  sub_100005EDC();
}

uint64_t sub_1002F5108()
{
  sub_100010060();
  sub_1002F43CC(v1, v2, v3);
  v0();
}

uint64_t sub_1002F532C(void *a1)
{
  v2 = sub_1002C89F0(a1);
  if (v3)
  {
    sub_1002F43CC(v2, v3, 0);
    sub_10000C3F0();
    return v1;
  }

  else
  {
    sub_10026D814(&qword_1006A4758, &qword_10057F7E8);
    inited = swift_initStackObject();
    sub_100021EF0(inited, xmmword_10057D690);
    return Dictionary.init(dictionaryLiteral:)();
  }
}

void sub_1002F5440(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    sub_10002F730();
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & v5;
    v9 = (v6 + 63) >> 6;
    if ((v7 & v5) != 0)
    {
      while (2)
      {
        sub_10000FA08();
LABEL_13:
        v15 = (*(v10 + 48) + 16 * (v11 | (v3 << 6)));
        v17 = *v15;
        v16 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v18 = Hasher._finalize()();
        v19 = ~(-1 << *(a2 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(a2 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            return;
          }

          v21 = (*(a2 + 48) + 16 * v20);
          if (*v21 == v17 && v21[1] == v16)
          {
            break;
          }

          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v18 = v20 + 1;
        }

        while ((v23 & 1) == 0);

        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v9)
      {
        return;
      }

      ++v12;
      if (*(a1 + 8 * v3))
      {
        sub_100007C8C();
        v8 = v14 & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_1002F55DC()
{
  sub_100005EF4();
  sub_100007710();
  v2 = type metadata accessor for UUID();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007BAC();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v46 = &v35 - v10;
  sub_100006838();
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  if (v1 == v0 || *(v1 + 16) != *(v0 + 16))
  {
LABEL_20:
    sub_100005EDC();
  }

  else
  {
    v14 = 0;
    v15 = *(v1 + 56);
    v36 = v1 + 56;
    v16 = 1 << *(v1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v42 = v4 + 32;
    v44 = v0 + 56;
    v45 = v4 + 16;
    v20 = (v4 + 8);
    v37 = v19;
    v38 = &v35 - v12;
    v39 = v4;
    v40 = v1;
    if (v18)
    {
      while (2)
      {
        v21 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
LABEL_13:
        v25 = *(v1 + 48);
        v43 = *(v4 + 72);
        v26 = *(v4 + 16);
        v26(v13, v25 + v43 * (v21 | (v14 << 6)), v2);
        (*(v4 + 32))(v46, v13, v2);
        sub_10000A758();
        sub_1000053E8(&qword_1006A3BE0, v27, &protocol conformance descriptor for UUID);
        sub_10000790C();
        v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v29 = v0;
        v30 = ~(-1 << *(v0 + 32));
        do
        {
          v31 = v28 & v30;
          if (((*(v44 + (((v28 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v30)) & 1) == 0)
          {
            (*v20)(v46, v2);
            goto LABEL_20;
          }

          v26(v8, *(v29 + 48) + v31 * v43, v2);
          sub_10000A758();
          sub_1000053E8(&qword_1006A2620, v32, &protocol conformance descriptor for UUID);
          v33 = dispatch thunk of static Equatable.== infix(_:_:)();
          v34 = *v20;
          (*v20)(v8, v2);
          v28 = v31 + 1;
        }

        while ((v33 & 1) == 0);
        v34(v46, v2);
        v0 = v29;
        v4 = v39;
        v1 = v40;
        v19 = v37;
        v13 = v38;
        v18 = v41;
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v19)
      {
        goto LABEL_20;
      }

      ++v22;
      if (*(v36 + 8 * v14))
      {
        sub_100007C8C();
        v41 = v24 & v23;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002F591C()
{
  sub_100010060();
  v5 = v4 & 0xC000000000000001;
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (!v5)
    {
      if (v1 == v0)
      {
LABEL_27:
        v8 = 1;
      }

      else
      {
        if (*(v1 + 16) == *(v0 + 16))
        {
          v10 = 1 << *(v1 + 32);
          if (v10 < 64)
          {
            v11 = ~(-1 << v10);
          }

          else
          {
            v11 = -1;
          }

          v12 = v11 & *(v1 + 56);
          v7 = sub_100006AF0(0, v2, v3);
          v13 = 0;
          v14 = (v10 + 63) >> 6;
          v26 = v14;
          if (v12)
          {
            while (2)
            {
              v15 = __clz(__rbit64(v12));
              v27 = (v12 - 1) & v12;
LABEL_22:
              v19 = *(v0 + 40);
              v20 = *(*(v1 + 48) + 8 * (v15 | (v13 << 6)));
              v21 = NSObject._rawHashValue(seed:)(v19);
              v22 = ~(-1 << *(v0 + 32));
              do
              {
                v23 = v21 & v22;
                if (((*(v0 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
                {

                  goto LABEL_29;
                }

                v24 = *(*(v0 + 48) + 8 * v23);
                v25 = static NSObject.== infix(_:_:)();

                v21 = v23 + 1;
              }

              while ((v25 & 1) == 0);

              v14 = v26;
              v12 = v27;
              if (v27)
              {
                continue;
              }

              break;
            }
          }

          v16 = v13;
          while (1)
          {
            v13 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v13 >= v14)
            {
              goto LABEL_27;
            }

            ++v16;
            if (*(v1 + 56 + 8 * v13))
            {
              sub_100007C8C();
              v27 = v18 & v17;
              goto LABEL_22;
            }
          }

          __break(1u);
          return __CocoaSet.isEqual(to:)(v7);
        }

LABEL_29:
        v8 = 0;
      }

      return v8 & 1;
    }

    sub_10000E9D4();
LABEL_8:
    sub_1002F5BA4();
    return v8 & 1;
  }

  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = sub_10000E9D4();

  return __CocoaSet.isEqual(to:)(v7);
}

id sub_1002F5B2C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v5 = [v2 initWithBundleIDs:v4.super.isa states:a2];

  return v5;
}

void sub_1002F5BA4()
{
  sub_100007710();
  v2 = *(v1 + 16);
  if (v2 == __CocoaSet.count.getter())
  {
    v3 = 0;
    sub_100007990();
    v6 = v5 & v4;
    v8 = (v7 + 63) >> 6;
    while (v6)
    {
      sub_10000FA08();
LABEL_10:
      v13 = *(*(v0 + 48) + 8 * (v9 | (v3 << 6)));
      v14 = __CocoaSet.contains(_:)();

      if ((v14 & 1) == 0)
      {
        return;
      }
    }

    v10 = v3;
    while (1)
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        return;
      }

      ++v10;
      if (*(v0 + 56 + 8 * v3))
      {
        sub_100007C8C();
        v6 = v12 & v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002F5C78()
{
  swift_arrayDestroy();
  v0 = sub_1000081EC();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1002F5CC8()
{
  swift_arrayDestroy();
  v0 = sub_1000081EC();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1002F5D44(uint64_t *a1, uint64_t *a2)
{
  sub_10026D814(a1, a2);
  swift_arrayDestroy();
  v2 = sub_1000081EC();

  return _swift_deallocClassInstance(v2, v3, v4);
}

void *sub_1002F5D8C(uint64_t a1, uint64_t a2)
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

  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v3 = sub_100008B38();
  v4 = j__malloc_size(v3);
  sub_100049FD4((v4 - 32) / 16);
  return v3;
}

void *sub_1002F5E68(uint64_t a1, uint64_t a2)
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

  sub_10026D814(&qword_1006A4780, &qword_10057F800);
  v3 = sub_100008B38();
  v4 = j__malloc_size(v3);
  sub_100049FD4((v4 - 32) / 4);
  return v3;
}

void *sub_1002F5F50(uint64_t a1, uint64_t a2)
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

  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v4 = sub_100008B38();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_1002F5FE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10026D814(a3, a4);
  v7 = a5(0);
  sub_100005EB4(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v9)
  {
    if ((result - v11) != 0x8000000000000000 || v9 != -1)
    {
      sub_100049FD4((result - v11) / v9);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1002F611C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10026D814(a3, a4);
  v9 = sub_10026D814(a5, a6);
  sub_100005EB4(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      sub_100049FD4((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002F6210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10002767C();
  a25 = v26;
  a26 = v28;
  v29 = *(v27 + 16);
  if (v29)
  {
    v30 = v27;
    v31 = sub_1002F611C(*(v27 + 16), 0, &qword_1006A4840, &qword_10057F868, &qword_1006A2C18, &unk_10057D990);
    v32 = *(sub_10026D814(&qword_1006A2C18, &unk_10057D990) - 8);
    sub_1002F644C(&a10, v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v29, v30);
    sub_10000D610();
    sub_10000F32C();
    sub_100022DDC(v33);
    if (&qword_1006A2C18 != v29)
    {
      __break(1u);
    }
  }

  sub_100006660();
}

void sub_1002F62FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10002767C();
  v28 = *(v27 + 16);
  if (v28)
  {
    sub_1002F5D8C(*(v27 + 16), 0);
    sub_1002F66FC();
    sub_10000D610();
    sub_10000F32C();
    sub_100022DDC(v29);
    if (v26 != v28)
    {
      __break(1u);
    }
  }

  sub_100006660();
}

void sub_1002F6384(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_10026D814(&qword_1006A4760, &unk_10057EA60);
      v7 = sub_100008B38();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1002F644C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v31 = sub_10026D814(&qword_1006A2C18, &unk_10057D990);
  v29 = *(v31 - 8);
  v8 = __chkstk_darwin(v31);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v8);
  v30 = &v25 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  v32 = a2;
  if (!a2)
  {
    v18 = 0;
    a3 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v18;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v26 = v14;
    v27 = a1;
    v17 = 0;
    v18 = 0;
    v19 = (63 - v14) >> 6;
    v28 = a3;
    while (v17 < a3)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_24;
      }

      if (!v16)
      {
        while (1)
        {
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v21 >= v19)
          {
            v16 = 0;
            a3 = v17;
            v14 = v26;
            a1 = v27;
            goto LABEL_20;
          }

          v16 = *(v13 + 8 * v21);
          ++v18;
          if (v16)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v21 = v18;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = *(*(a4 + 48) + 8 * (v22 | (v21 << 6)));
      type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
      sub_1002F7004();
      *v10 = v23;
      sub_1002982D0();
      v24 = v32;
      result = sub_1002982D0();
      a3 = v28;
      if (v20 == v28)
      {
        v18 = v21;
        v14 = v26;
        a1 = v27;
        goto LABEL_20;
      }

      v32 = v24 + *(v29 + 72);
      v17 = v20;
      v18 = v21;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002F66FC()
{
  sub_100005EF4();
  sub_1002F710C();
  v5 = v2 + 56;
  sub_100015164();
  if (!v7)
  {
    sub_10000D31C();
LABEL_17:
    sub_100035A38(v9);
    sub_100005EDC();
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    sub_10000E6AC();
    while (v10 < v8)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v12 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v5 + 8 * v12);
          ++v9;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v12 = v9;
LABEL_12:
      v13 = (*(v0 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v3)))));
      v14 = v13[1];
      v3 &= v3 - 1;
      *v1 = *v13;
      v1[1] = v14;
      if (v11 == v8)
      {

        v9 = v12;
        goto LABEL_17;
      }

      v1 += 2;

      v10 = v11;
      v9 = v12;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t *sub_1002F6800(uint64_t *result, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
    result = Set.Iterator.init(_cocoa:)();
    v4 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
  }

  else
  {
    v10 = 0;
    v12 = -1 << *(a4 + 32);
    v8 = a4 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a4 + 56);
  }

  v21 = v7;
  if (!a2)
  {
    v15 = 0;
LABEL_28:
    *v21 = v4;
    v21[1] = v8;
    v21[2] = v9;
    v21[3] = v10;
    v21[4] = v11;
    return v15;
  }

  if (!a3)
  {
    v15 = 0;
    goto LABEL_28;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v20 = v9;
    v16 = (v9 + 64) >> 6;
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_26;
        }

        sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
        swift_dynamicCast();
        result = v22;
        if (!v22)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v18 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v18 >= v16)
            {
              v11 = 0;
              goto LABEL_26;
            }

            v11 = *(v8 + 8 * v18);
            ++v10;
            if (v11)
            {
              v10 = v18;
              goto LABEL_18;
            }
          }

          __break(1u);
          break;
        }

LABEL_18:
        sub_10000FA08();
        result = *(*(v4 + 48) + ((v10 << 9) | (8 * v19)));
        if (!result)
        {
          goto LABEL_26;
        }
      }

      *a2++ = result;
      ++v15;
      if (v17 == a3)
      {
        v15 = a3;
LABEL_26:
        v9 = v20;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002F6A0C()
{
  sub_100005EF4();
  sub_1002F710C();
  v4 = v1 + 64;
  sub_100015164();
  if (!v6)
  {
    sub_10000D31C();
LABEL_17:
    sub_100035A38(v8);
    sub_100005EDC();
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    sub_10000E6AC();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v3)
          {
            goto LABEL_17;
          }

          v2 = *(v4 + 8 * v11);
          ++v8;
          if (v2)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      sub_10000D73C();
      v14 = *(v13 + v12);
      *v0 = v14;
      if (v10 == v7)
      {
        v16 = v14;
        v8 = v11;
        goto LABEL_17;
      }

      ++v0;
      v15 = v14;
      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1002F6AF4(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 8) | (4 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002F6BDC()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for PendingMembershipInfo(0);
  v9 = sub_100005EB4(v8);
  v30 = v10;
  __chkstk_darwin(v9);
  sub_100007BAC();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  v31 = v1;
  v17 = v1 + 64;
  sub_10002F628();
  v21 = v20 & v19;
  if (!v5)
  {
    sub_10000D31C();
LABEL_18:
    *v7 = v31;
    v7[1] = v17;
    v7[2] = ~v18;
    v7[3] = v23;
    v7[4] = v21;
    sub_100005EDC();
    return;
  }

  if (!v3)
  {
    v23 = 0;
    goto LABEL_18;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v28 = v18;
    v29 = v7;
    v22 = 0;
    v23 = 0;
    v24 = (63 - v18) >> 6;
    while (1)
    {
      if (v22 >= v3)
      {
        goto LABEL_21;
      }

      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_22;
      }

      if (!v21)
      {
        while (1)
        {
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v26 >= v24)
          {
            v21 = 0;
            goto LABEL_16;
          }

          v21 = *(v17 + 8 * v26);
          ++v23;
          if (v21)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v26 = v23;
LABEL_12:
      v21 &= v21 - 1;
      v27 = *(v30 + 72);
      sub_1002F7004();
      sub_1002F6F18(v13, v16);
      sub_1002F6F18(v16, v5);
      if (v25 == v3)
      {
        break;
      }

      v5 += v27;
      v22 = v25;
      v23 = v26;
    }

    v23 = v26;
LABEL_16:
    v18 = v28;
    v7 = v29;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1002F6DCC()
{
  sub_100005EF4();
  sub_1002F710C();
  v4 = v1 + 64;
  sub_100015164();
  if (!v6)
  {
    sub_10000D31C();
LABEL_17:
    sub_100035A38(v8);
    sub_100005EDC();
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    sub_10000E6AC();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v3)
          {
            goto LABEL_17;
          }

          v2 = *(v4 + 8 * v11);
          ++v8;
          if (v2)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      sub_10000D73C();
      *v0 = *(v13 + v12);
      if (v10 == v7)
      {

        v8 = v11;
        goto LABEL_17;
      }

      ++v0;

      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1002F6F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingMembershipInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F6F84()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1002F7004()
{
  sub_100007710();
  v1(0);
  sub_100008070();
  v2 = sub_100006B30();
  v3(v2);
  return v0;
}

uint64_t sub_1002F705C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1002A1D5C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10002F0C8(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1002F7124(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return sub_1000080A0();
}

uint64_t sub_1002F713C()
{
  v1 = *(v0 + 48);
  v8 = *(v0 + 32);
  v2 = [v1 queue];
  *(v0 + 56) = v2;
  v3 = sub_1000102DC(&qword_1006A4578, &qword_1006A31A0, OS_dispatch_queue_ptr);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = type metadata accessor for ActivitySessionCreationRequestResult(0);
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  *v5 = v0;
  v5[1] = sub_1002F72B8;

  return __ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lF(v0 + 16, v2, v3, 0, 0, &unk_10057F8E8, v4, v6);
}

uint64_t sub_1002F72B8()
{
  sub_10000C698();
  sub_100005F18();
  v3 = v2;
  sub_10000E51C();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_100008060();
  *v8 = v7;

  if (v0)
  {
    v9 = sub_1002F73D8;
  }

  else
  {

    v9 = sub_100287CB4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1002F73D8()
{
  sub_100006810();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F7438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_1002F74E8;

  return sub_1002F7640(a3, a4);
}

uint64_t sub_1002F74E8()
{
  sub_10000C698();
  v3 = v2;
  sub_100005F18();
  v5 = v4;
  sub_10000E51C();
  *v6 = v5;
  v7 = *v1;
  sub_100008060();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (v0)
  {
    v9 = sub_1002F761C;
  }

  else
  {
    *(v5 + 48) = v3;
    v9 = sub_1002F75F8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1002F7640(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for DispatchPredicate();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1002F7824, 0, 0);
}

uint64_t sub_1002F7824()
{
  v124 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  *v1 = [*(v0 + 32) queue];
  (*(v2 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v3);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_1006A0830 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100015184(&qword_1006A0830);
LABEL_3:
  v5 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = type metadata accessor for Logger();
  v11 = sub_10000AF9C(v10, qword_1006A4870);
  v115 = *(v7 + 16);
  v117 = v7 + 16;
  v115(v5, v9, v6);
  v12 = v8;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 16);
    v16 = sub_100005E84();
    v121 = v11;
    v17 = sub_10000777C();
    v18 = swift_slowAlloc();
    v123 = v18;
    *v16 = 136315650;
    *(v16 + 4) = sub_10000F638("vitySessionContainerProvider", v18, v115, v117, v119, v121);
    *(v16 + 12) = 2112;
    *(v16 + 14) = v15;
    *v17 = v15;
    *(v16 + 22) = 2080;
    sub_10000A114();
    sub_1002F9E08(v19, v20, &protocol conformance descriptor for UUID);
    v21 = v15;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = sub_100035A50();
    v26(v25);
    v27 = sub_10002741C(v22, v24, &v123);

    *(v16 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: %@ containerID: %s", v16, 0x20u);
    sub_1000099A4(v17, &unk_1006A2630, &qword_10057CB40);
    v28 = v17;
    v11 = v120;
    sub_100005F40(v28);
    swift_arrayDestroy();
    sub_100005F40(v114);
    sub_100005F40(v16);
  }

  else
  {

    v29 = sub_100035A50();
    v30(v29);
  }

  v31 = *(v0 + 24);
  v32 = [*(v0 + 32) _conversationsByUUID];
  sub_100006AF0(0, &unk_1006A3AA0, off_100616600);
  sub_10000A114();
  sub_1002F9E08(v33, v34, &protocol conformance descriptor for UUID);
  v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = sub_100025C58(v31, v35);

  if (!v36)
  {
    type metadata accessor for ActivitySessionCreationRequestResult(0);
    v47 = sub_1002F16C4();
    goto LABEL_13;
  }

  if ([*(v0 + 16) isPlaceholderActivity])
  {
    v37 = *(v0 + 16);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 16);
      v41 = swift_slowAlloc();
      v42 = sub_10000777C();
      v43 = sub_100005E84();
      v123 = v43;
      *v41 = 136315394;
      *(v41 + 4) = sub_10000F638("vitySessionContainerProvider", v114, v115, v117, v119, v120);
      *(v41 + 12) = 2112;
      *(v41 + 14) = v40;
      *v42 = v40;
      v44 = v40;
      _os_log_impl(&_mh_execute_header, v38, v39, "%s: Given activity is a placeholder: %@", v41, 0x16u);
      sub_1000099A4(v42, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40(v42);
      sub_100009B7C(v43);
      sub_100005F40(v43);
      sub_100005F40(v41);
    }

    v45 = [v36 createStagedActivitySessionForActivity:*(v0 + 16)];
    if (v45)
    {
      v46 = v45;
      type metadata accessor for ActivitySessionCreationRequestResult(0);
      v47 = sub_1002F1618(v46);

LABEL_13:
      sub_100011320();

      v48 = *(v0 + 8);

      return v48(v47);
    }

    v54 = sub_1002FA028();
    sub_100008248(&_s28ActivitySessionCreationErrorON, v54);
    v56 = xmmword_10057F880;
    goto LABEL_24;
  }

  v50 = [objc_opt_self() sharedInstance];
  if (!v50)
  {
    sub_10000AF74(*(v0 + 48), 1, 1, *(v0 + 56));
LABEL_23:
    sub_1000099A4(*(v0 + 48), &qword_1006A3C70, &unk_10057EA80);
    v60 = sub_1002FA028();
    sub_100008248(&_s28ActivitySessionCreationErrorON, v60);
    v56 = xmmword_10057F870;
LABEL_24:
    *v55 = v56;
    swift_willThrow();

    goto LABEL_25;
  }

  v51 = v50;
  v52 = [v50 currentServerTimeDate];

  if (v52)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  v58 = *(v0 + 48);
  v57 = *(v0 + 56);
  v59 = *(v0 + 40);
  sub_10000AF74(v59, v53, 1, v57);
  sub_1002FA07C(v59, v58);
  if (sub_100015468(v58, 1, v57) == 1)
  {
    goto LABEL_23;
  }

  v62 = *(v0 + 16);
  (*(*(v0 + 64) + 32))(*(v0 + 80), *(v0 + 48), *(v0 + 56));
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v62 setTimestamp:isa];

  v64 = "com.apple.callservicesd.shareplay-session-server-terminated";
  v122 = v11;
  if ([v62 isStaticActivity] && (v65 = sub_1002F9E50(*(v0 + 16)), v66))
  {
    v67 = v65;
    v68 = v66;
    v69 = *(v0 + 16);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = *(v0 + 16);
      v73 = swift_slowAlloc();
      v74 = sub_10000777C();
      v75 = sub_100005E84();
      v123 = v75;
      *v73 = 136315394;
      *(v73 + 4) = sub_10000F638("vitySessionContainerProvider", v114, v115, v117, v119, v122);
      *(v73 + 12) = 2112;
      *(v73 + 14) = v72;
      *v74 = v72;
      v76 = v72;
      _os_log_impl(&_mh_execute_header, v70, v71, "%s: Given activity is static: %@", v73, 0x16u);
      sub_1000099A4(v74, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40(v74);
      sub_100009B7C(v75);
      sub_100005F40(v75);
      sub_100005F40(v73);
    }

    v77 = *(v0 + 104);
    v78 = *(v0 + 88);
    v79 = objc_opt_self();
    v80 = String._bridgeToObjectiveC()();
    v81 = [v36 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v82 = UUID._bridgeToObjectiveC()().super.isa;
    v119(v77, v78);
    v83 = [v79 tu_UUIDv5ForString:v80 namespaceUUID:v82];

    if (!v83)
    {
      v109 = *(v0 + 80);
      v110 = *(v0 + 56);
      v111 = *(v0 + 64);
      v112 = sub_1002FA028();
      sub_100008248(&_s28ActivitySessionCreationErrorON, v112);
      *v113 = v67;
      v113[1] = v68;
      swift_willThrow();

      (*(v111 + 8))(v109, v110);
      goto LABEL_25;
    }

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = "com.apple.callservicesd.shareplay-session-server-terminated";
  }

  else
  {
    UUID.init()();
  }

  v84 = *(v0 + 104);
  v85 = *(v0 + 80);
  v87 = *(v0 + 64);
  v86 = *(v0 + 72);
  v88 = *(v0 + 56);
  v89 = *(v0 + 16);
  v115(v84, *(v0 + 112), *(v0 + 88));
  (*(v87 + 16))(v86, v85, v88);
  objc_allocWithZone(TUConversationActivitySession);
  v90 = sub_1002F9CFC(v89, v84, 1, v86, 1);
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = sub_10000777C();
    v95 = sub_100005E84();
    v123 = v95;
    *v93 = *(v64 + 461);
    *(v93 + 4) = sub_10000F638("vitySessionContainerProvider", v114, v115, v117, v119, v122);
    *(v93 + 12) = 2112;
    *(v93 + 14) = v90;
    *v94 = v90;
    v96 = v90;
    _os_log_impl(&_mh_execute_header, v91, v92, "%s: Creating CPActivitySession for %@", v93, 0x16u);
    sub_1000099A4(v94, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v94);
    sub_100009B7C(v95);
    sub_100005F40(v95);
    sub_100005F40(v93);
  }

  v97 = *(v0 + 32);
  v98 = UUID._bridgeToObjectiveC()().super.isa;
  v99 = [v97 createCPActivitySessionForActivitySession:v90 onConversationWithUUID:v98];

  v100 = *(v0 + 112);
  v101 = *(v0 + 88);
  v102 = *(v0 + 80);
  v104 = *(v0 + 56);
  v103 = *(v0 + 64);
  if (v99)
  {
    v116 = *(v0 + 88);
    type metadata accessor for ActivitySessionCreationRequestResult(0);
    v118 = v104;
    v105 = v102;
    v106 = dispatch thunk of ActivitySession.tuConversationActivitySession.getter();
    v47 = sub_1002F1618(v106);

    v119(v100, v116);
    (*(v103 + 8))(v105, v118);
    goto LABEL_13;
  }

  v107 = sub_1002FA028();
  sub_100008248(&_s28ActivitySessionCreationErrorON, v107);
  *v108 = 0;
  v108[1] = 0;
  swift_willThrow();

  v119(v100, v101);
  (*(v103 + 8))(v102, v104);
LABEL_25:
  sub_100011320();

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_1002F8484(void *a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v8 = type metadata accessor for UUID();
  v4[4] = v8;
  v4[5] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[6] = v9;
  v4[7] = _Block_copy(a3);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4;
  v11 = swift_task_alloc();
  v4[8] = v11;
  *v11 = v4;
  v11[1] = sub_1002F85C8;

  return sub_1002F7124(v10, v9);
}

uint64_t sub_1002F85C8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  sub_100008060();
  *v7 = v6;
  v8 = *v2;
  *v7 = *v2;

  v9 = v5[7];
  v10 = v5[3];
  v11 = v5[2];
  (*(v5[5] + 8))(v5[6], v5[4]);

  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v12);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v13 = v8[1];

  return v13();
}

uint64_t sub_1002F87E4()
{
  sub_10000C698();
  v1 = v0[3];
  v2 = [v1 queue];
  v0[4] = v2;
  v3 = sub_1000102DC(&qword_1006A4578, &qword_1006A31A0, OS_dispatch_queue_ptr);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = sub_10026D814(&qword_1006A4888, &qword_10057F8B8);
  *v5 = v0;
  v5[1] = sub_1002F8934;

  return __ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lF(v0 + 2, v2, v3, 0, 0, &unk_10057F8B0, v4, v6);
}

uint64_t sub_1002F8934()
{
  sub_100006810();
  sub_100005F18();
  v3 = v2;
  sub_10000E51C();
  *v4 = v3;
  v5 = *v1;
  sub_100008060();
  *v6 = v5;

  if (!v0)
  {

    return _swift_task_switch(sub_1002F8A3C, 0, 0);
  }

  return result;
}

uint64_t sub_1002F8A54(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1002F8A74, 0, 0);
}

uint64_t sub_1002F8A74()
{
  sub_1000066BC();
  v11 = v0;
  sub_1002F8BD4();
  v2 = v1;
  if (qword_1006A0830 != -1)
  {
    sub_100015184(&qword_1006A0830);
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006A4870);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = sub_100005E84();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10002741C(0xD000000000000021, 0x8000000100568260, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s containers", v6, 0xCu);
    sub_100009B7C(v7);
    sub_100005F40(v7);
    sub_100005F40(v6);
  }

  **(v0 + 16) = v2;
  v8 = *(v0 + 8);

  return v8();
}

void sub_1002F8BD4()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = [v0 queue];
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v5 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v6 = [v0 _conversationsByUUID];
    type metadata accessor for UUID();
    sub_100006AF0(0, &unk_1006A3AA0, off_100616600);
    sub_1002F9E08(&qword_1006A3BE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = 0;
    v24 = _swiftEmptyArrayStorage;
    v9 = 1 << *(v7 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v7 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = v8;
LABEL_10:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v15 = *(*(v7 + 56) + ((v13 << 9) | (8 * v14)));
      if (([v15 isFromStorage] & 1) != 0 || objc_msgSend(v15, "state") != 3)
      {

        v8 = v13;
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 = v13;
      }
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v12)
      {
        break;
      }

      v11 = *(v7 + 64 + 8 * v13);
      ++v8;
      if (v11)
      {
        goto LABEL_10;
      }
    }

    v16 = v24;
    v17 = sub_10000B6F4(v24);
    if (v17)
    {
      v18 = v17;
      v24 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v18 < 0)
      {
        goto LABEL_26;
      }

      sub_100006AF0(0, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
      v19 = 0;
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v20 = *(v16 + 8 * v19 + 32);
        }

        v21 = v20;
        ++v19;
        sub_1002F94BC(v20);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v18 != v19);

      v22 = v24;
    }

    else
    {

      v22 = _swiftEmptyArrayStorage;
    }

    sub_1002F20C0(v22);
  }

  else
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_1002F8FF0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1002F9098;

  return sub_1002F87D0();
}

uint64_t sub_1002F9098()
{
  sub_1000066BC();
  sub_100005F18();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100008060();
  *v5 = v4;

  sub_100006AF0(0, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  sub_1002F93D0(&qword_1006A4800, &unk_1006A6310, TUConversationActivitySessionContainer_ptr, &protocol conformance descriptor for NSObject);
  isa = Set._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_1002F9248()
{
  sub_10000C698();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100008A48(v3);
  *v4 = v5;
  v4[1] = sub_1002F92EC;

  return sub_1002F8FF0(v1, v2);
}

uint64_t sub_1002F92EC()
{
  sub_100006810();
  sub_100005F18();
  v1 = *v0;
  sub_100008060();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1002F93D0(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100006AF0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002F9414()
{
  sub_10000C698();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_100008A48(v4);
  *v5 = v6;
  v5[1] = sub_1002F92EC;

  return sub_1002F8A54(v2, v3);
}

id sub_1002F94BC(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(TUConversationActivitySessionContainer) init];
  [v6 setCapabilities:11];
  v7 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = *(v3 + 8);
  v9(v5, v2);
  [v6 setUUID:isa];

  v10 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = UUID._bridgeToObjectiveC()().super.isa;
  v9(v5, v2);
  [v6 setGroupUUID:v11];

  [v6 setState:{objc_msgSend(a1, "state")}];
  v12 = [a1 activitySessions];
  type metadata accessor for ActivitySession();
  sub_1002F9E08(&qword_1006A4890, &type metadata accessor for ActivitySession, &protocol conformance descriptor for NSObject);
  v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_10001E550();
  if (v14)
  {
    v15 = v14;
    v57 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = sub_10001E578();
    v54 = result;
    v55 = v17;
    v56 = v18 & 1;
    if ((v15 & 0x8000000000000000) == 0)
    {
      v48 = a1;
      v49 = v6;
      v19 = 0;
      if (v13 < 0)
      {
        v20 = v13;
      }

      else
      {
        v20 = v13 & 0xFFFFFFFFFFFFFF8;
      }

      v51 = v13 + 56;
      v52 = v20;
      v50 = v13 + 64;
      while (!__OFADD__(v19++, 1))
      {
        v23 = v54;
        v22 = v55;
        v24 = v56;
        sub_1002E94F0();
        v26 = v25;
        dispatch thunk of ActivitySession.tuConversationActivitySession.getter();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = specialized ContiguousArray._endMutation()();
        if ((v13 & 0xC000000000000001) != 0)
        {
          if (!v24)
          {
            goto LABEL_37;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_10026D814(&qword_1006A4898, &qword_10057F8C0);
          v31 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v31(v53, 0);
        }

        else
        {
          if (v24)
          {
            goto LABEL_38;
          }

          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          v27 = 1 << *(v13 + 32);
          if (v23 >= v27)
          {
            goto LABEL_33;
          }

          v28 = v23 >> 6;
          v29 = *(v51 + 8 * (v23 >> 6));
          if (((v29 >> v23) & 1) == 0)
          {
            goto LABEL_34;
          }

          if (*(v13 + 36) != v22)
          {
            goto LABEL_35;
          }

          v30 = v29 & (-2 << (v23 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v23 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v32 = v28 << 6;
            v33 = v28 + 1;
            v34 = (v50 + 8 * v28);
            while (v33 < (v27 + 63) >> 6)
            {
              v36 = *v34++;
              v35 = v36;
              v32 += 64;
              ++v33;
              if (v36)
              {
                result = sub_100010000(v23, v22, 0);
                v27 = __clz(__rbit64(v35)) + v32;
                goto LABEL_25;
              }
            }

            result = sub_100010000(v23, v22, 0);
          }

LABEL_25:
          v54 = v27;
          v55 = v22;
          v56 = 0;
        }

        if (v19 == v15)
        {

          sub_100010000(v54, v55, v56);
          v37 = v57;
          a1 = v48;
          v6 = v49;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
LABEL_29:
    sub_1002F2198(v37);
    sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
    sub_1002F93D0(&unk_1006A2600, &unk_1006A4820, TUConversationActivitySession_ptr, &protocol conformance descriptor for NSObject);
    v38 = Set._bridgeToObjectiveC()().super.isa;

    [v6 setActivitySessions:v38];

    v39 = [a1 localMember];
    [v6 setLocalMember:v39];

    v40 = [a1 initiator];
    [v6 setInitiator:v40];

    [v6 setLocalParticipantIdentifier:{objc_msgSend(a1, "localParticipantIdentifier")}];
    v41 = [a1 virtualParticipants];
    sub_100006AF0(0, &qword_1006A7BF0, TUConversationVirtualParticipant_ptr);
    sub_1002F93D0(&qword_1006A48A0, &qword_1006A7BF0, TUConversationVirtualParticipant_ptr, &protocol conformance descriptor for NSObject);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = Set._bridgeToObjectiveC()().super.isa;

    [v6 setVirtualParticipants:v42];

    v43 = objc_allocWithZone(TUConversationVirtualParticipantConfig);
    v44 = sub_1002FFE6C(1, 1, 1, 1, 1, 0, 0, 0, 0);
    [v6 setVirtualParticipantConfig:v44];

    v45 = [objc_allocWithZone(TUConversationUnreliableMessengerConfig) initWithEstablishChannelMaxAttempts:1 establishChannelRetryIntervalMillis:1 egressMessagePayloadMaxSizeBytes:1 channelStreamMaxQueueSize:1 channelStreamMaxTries:1 channelStreamRetryIntervalMillis:1 seqNumBufferSize:1];
    [v6 setUnreliableMessengerConfig:v45];

    if (sub_10000B6F4(_swiftEmptyArrayStorage))
    {
      sub_10039B1BC(_swiftEmptyArrayStorage);
    }

    sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
    sub_1002F93D0(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr, &protocol conformance descriptor for NSObject);
    v46 = Set._bridgeToObjectiveC()().super.isa;

    [v6 setActiveRemoteParticipants:v46];

    return v6;
  }

  return result;
}

uint64_t sub_1002F9C7C()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006A4870);
  sub_10000AF9C(v0, qword_1006A4870);
  return Logger.init(subsystem:category:)();
}

id sub_1002F9CFC(void *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = v5;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = Date._bridgeToObjectiveC()().super.isa;
  v14 = [v6 initWithActivity:a1 uuid:isa locallyInitiated:a3 & 1 timestamp:v13 isFirstJoin:a5 & 1];

  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(a4, v15);
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 8))(a2, v16);
  return v14;
}

uint64_t sub_1002F9E08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002F9E50(void *a1)
{
  v1 = [a1 staticIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002F9EB4()
{
  sub_1000066BC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100008A48(v5);
  *v6 = v7;
  v6[1] = sub_1002FA1E0;

  return sub_1002F8484(v1, v2, v4, v3);
}

uint64_t sub_1002F9F6C()
{
  sub_1000066BC();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = sub_100008A48(v8);
  *v9 = v10;
  v9[1] = sub_1002FA1E0;

  return sub_1002F7438(v4, v5, v6, v7, v2);
}

unint64_t sub_1002FA028()
{
  result = qword_1006A48A8;
  if (!qword_1006A48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A48A8);
  }

  return result;
}

uint64_t sub_1002FA07C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FA0EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002FA104(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002FA160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1002FA1B0(void *result, int a2)
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

uint64_t sub_1002FA204(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(TUContactsDataProviderFetchRequest) initWithHandle:a1];
  v4 = [a2 executeFetchRequest:v3];

  v5 = [v4 localizedName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void sub_1002FA2AC()
{
  v0 = [objc_opt_self() soundWithAlertType:1];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002FBDBC(v1, v2, v0);
  qword_1006A48B0 = v0;
}

uint64_t sub_1002FA310(uint64_t a1, uint64_t a2)
{
  sub_10031E958(0xD000000000000023, 0x80000001005683A0);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057D690;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100009D88();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  v5 = String.init(format:_:)();

  return v5;
}

uint64_t sub_1002FA3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10031E958(0xD000000000000025, 0x8000000100568370);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D6A0;
  *(v8 + 56) = &type metadata for String;
  v9 = sub_100009D88();
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v9;
  *(v8 + 64) = v9;
  *(v8 + 72) = a1;
  *(v8 + 80) = a2;

  v10 = String.init(format:_:)();

  return v10;
}

uint64_t sub_1002FA4D0()
{
  swift_getObjectType();
  sub_10026D814(&qword_1006A4908, &unk_10057FA10);
  v1 = String.init<A>(describing:)();
  if (*(v0 + OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_notificationType))
  {
    v2 = 0x656E6F6850;
  }

  else
  {
    v2 = 0x656D695465636146;
  }

  if (*(v0 + OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_notificationType))
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  v6 = v1;

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);

  return v6;
}

uint64_t sub_1002FA5D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_removeNotification);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000051F8(v6, v7);
}

void sub_1002FA630(uint64_t a1)
{
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA6D0);
  sub_100009AB0(a1, v19);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v9 = v20;
    v10 = v21;
    sub_100009B14(v19, v20);
    v11 = *(v10 + 16);
    v12 = v4;
    v13 = v11(v9, v10);
    v15 = v14;
    sub_100009B7C(v19);
    v16 = sub_10002741C(v13, v15, &v18);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "%@ does not handle response with identifier %s", v7, 0x16u);
    sub_100009A5C(v8, &unk_1006A2630, &qword_10057CB40);

    sub_100009B7C(v17);
  }

  else
  {

    sub_100009B7C(v19);
  }
}

uint64_t type metadata accessor for FaceTimeNotificationProvider(uint64_t a1)
{
  result = qword_1006A48F8;
  if (!qword_1006A48F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002FA9C0(uint64_t a1)
{
  sub_1002FAAA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002FAAA0(uint64_t a1)
{
  if (!qword_1006ABFC0)
  {
    type metadata accessor for BadgeCountCategory();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006ABFC0);
    }
  }
}

void sub_1002FAB1C(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v57 - v8;
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_10000AF9C(v10, qword_1006BA6D0);
  v12 = *(v4 + 16);
  v12(v9, a1, v3);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v58 = v11;
    v16 = v15;
    v17 = swift_slowAlloc();
    v57 = a1;
    v18 = v17;
    v62[0] = v17;
    *v16 = 136315138;
    v12(v7, v9, v3);
    v19 = String.init<A>(reflecting:)();
    v21 = v20;
    (*(v4 + 8))(v9, v3);
    v22 = sub_10002741C(v19, v21, v62);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Handling notification %s", v16, 0xCu);
    sub_100009B7C(v18);
  }

  else
  {

    (*(v4 + 8))(v9, v3);
  }

  if (!Notification.userInfo.getter())
  {
    v63 = 0u;
    v64 = 0u;
    goto LABEL_19;
  }

  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v23;
  AnyHashable.init<A>(_:)();
  sub_100006600();

  sub_100006780(v62);
  if (!*(&v64 + 1))
  {
LABEL_19:
    sub_100009A5C(&v63, &unk_1006A2D10, &unk_10057D940);
    goto LABEL_20;
  }

  type metadata accessor for IDSPendingChat(0);
  if (swift_dynamicCast())
  {
    v24 = v62[0];
    v25 = *(v62[0] + OBJC_IVAR___CSDIDSPendingChat_handle);
    v26 = objc_allocWithZone(FTNUServiceNames);
    v27 = v25;
    v28 = [v26 init];
    if (v24[OBJC_IVAR___CSDIDSPendingChat_isVideo])
    {
      v29 = &selRef_faceTimeVideoServiceName;
    }

    else
    {
      v29 = &selRef_faceTimeAudioServiceName;
    }

    v30 = *v29;
    v58 = v28;
    v31 = [v28 v30];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = *(v59 + OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_localizeHandleName);
    v36 = *(v59 + OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_contactsDataProvider);

    v37 = v35(v27, v36);
    v39 = v38;

    v40 = [objc_allocWithZone(UNMutableNotificationContent) init];
    sub_1002FA310(v37, v39);
    v41 = String._bridgeToObjectiveC()();

    [v40 setTitle:v41];

    sub_1002FA3E0(v37, v39, v32, v34);

    v42 = String._bridgeToObjectiveC()();

    [v40 setBody:v42];

    v43 = String._bridgeToObjectiveC()();
    [v40 setCategoryIdentifier:v43];

    if (qword_1006A0838 != -1)
    {
      swift_once();
    }

    [v40 setSound:qword_1006A48B0];
    v44 = [v27 value];
    if (!v44)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = String._bridgeToObjectiveC()();
    }

    [v40 setThreadIdentifier:v44];

    v45 = v59;
    v46 = sub_1002FA4D0();
    sub_1004554A0(v46, v47, v40);
    sub_1002FBE20();
    v48 = UUID.uuidString.getter();
    v50 = v49;
    v51 = v40;
    v52 = sub_10044F628(v48, v50, v51, 0);
    [v52 setDestinations:15];
    v53 = *(v45 + OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_add);
    if (v53)
    {
      v54 = *(v45 + OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_add + 8);

      v53(v52);

      sub_1000051F8(v53, v54);
      v51 = v52;
    }

    else
    {
    }

    goto LABEL_22;
  }

LABEL_20:
  v51 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v51, v55, "Did not find expected pending chat information", v56, 2u);
  }

LABEL_22:
}

uint64_t sub_1002FB228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v30[1] = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v35 = v7;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v11 = v10 - v9;
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v33 = v13;
  v34 = v12;
  __chkstk_darwin(v12);
  sub_100007FDC();
  v16 = v15 - v14;
  v17 = type metadata accessor for Notification();
  sub_100007FEC();
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  v23 = v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = *&v4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_queue];
  (*(v19 + 16))(v23, a1, v17);
  v24 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v25 = (v21 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v19 + 32))(v26 + v24, v23, v17);
  *(v26 + v25) = v4;
  aBlock[4] = v31;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = v32;
  v27 = _Block_copy(aBlock);
  v28 = v4;
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v35 + 8))(v11, v6);
  (*(v33 + 8))(v16, v34);
}

void sub_1002FB530(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v3 - 8);
  v47 = &v42 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Notification();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_10000AF9C(v15, qword_1006BA6D0);
  v17 = *(v9 + 16);
  v46 = a1;
  v17(v14, a1, v8);
  v45 = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v44 = v6;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v42 = v5;
    v22 = v21;
    v23 = swift_slowAlloc();
    v51[0] = v23;
    *v22 = 136315138;
    v17(v12, v14, v8);
    v24 = String.init<A>(reflecting:)();
    v26 = v25;
    (*(v9 + 8))(v14, v8);
    v27 = sub_10002741C(v24, v26, v51);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Handling notification %s", v22, 0xCu);
    sub_100009B7C(v23);

    v5 = v42;
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  v28 = Notification.userInfo.getter();
  v29 = v48;
  if (!v28)
  {
    v52 = 0u;
    v53 = 0u;
    goto LABEL_12;
  }

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v30;
  AnyHashable.init<A>(_:)();
  sub_100006600();

  sub_100006780(v51);
  if (!*(&v53 + 1))
  {
LABEL_12:
    sub_100009A5C(&v52, &unk_1006A2D10, &unk_10057D940);
    v31 = v47;
    sub_10000AF74(v47, 1, 1, v5);
    goto LABEL_13;
  }

  v31 = v47;
  v32 = swift_dynamicCast();
  sub_10000AF74(v31, v32 ^ 1u, 1, v5);
  if (sub_100015468(v31, 1, v5) != 1)
  {
    v33 = v44;
    (*(v44 + 32))(v29, v31, v5);
    v34 = v43 + OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_removeNotification;
    swift_beginAccess();
    v35 = *v34;
    if (*v34)
    {
      v36 = v5;
      v37 = *(v34 + 8);
      swift_endAccess();

      v38 = UUID.uuidString.getter();
      v35(v38);

      sub_1000051F8(v35, v37);
      (*(v33 + 8))(v29, v36);
    }

    else
    {
      (*(v33 + 8))(v29, v5);
      swift_endAccess();
    }

    return;
  }

LABEL_13:
  sub_100009A5C(v31, &unk_1006A3DD0, &unk_10057C9D0);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Did not find expected pending chat uuid information", v41, 2u);
  }
}

uint64_t sub_1002FBAF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for Notification();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v16 = v15 - v14;
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = a1;
  sub_1002FB228(v16, a4, a5, a6);

  return (*(v12 + 8))(v16, v10);
}

uint64_t sub_1002FBBEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006AB160, &qword_100584570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FBC74()
{
  type metadata accessor for Notification();
  sub_1000080D0();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_1002FBD1C(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for Notification() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

void sub_1002FBDBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setAlertTopic:v4];
}

unint64_t sub_1002FBE20()
{
  result = qword_1006A7AE0;
  if (!qword_1006A7AE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A7AE0);
  }

  return result;
}

uint64_t sub_1002FBE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = *(a2 + 24);
  sub_1000115CC(a3, a4);
  v9(sub_1002FC014, v8, ObjectType, a2);
}

uint64_t sub_1002FBF24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = sub_100004778(a1);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057D690;
  v6 = sub_100009D88();
  v7 = 544501614;
  if (v3)
  {
    v7 = 0;
  }

  v8 = 0xE400000000000000;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = v6;
  if (v3)
  {
    v8 = 0xE000000000000000;
  }

  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  v9 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Call announcement request was %@fulfilled", 41, 2, &_mh_execute_header, v4, v9, v5);

  if (a2)
  {
    return a2(v3 & 1);
  }

  return result;
}

id sub_1002FC028()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithDestinationID:v1];

  return v2;
}

void sub_1002FC0A8(void *a1, SEL *a2)
{
  v4 = v2;
  if (qword_1006A0AF8 != -1)
  {
    sub_1000083DC(&qword_1006A0AF8);
  }

  v6 = type metadata accessor for Logger();
  sub_10000AF9C(v6, qword_1006BA568);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_100005274();
    v11 = sub_10000777C();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Found Available advertisement %@ Manager", v10, 0xCu);
    sub_100009A04(v11, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v11);
    sub_100005F40(v10);
  }

  NearbyAdvertisement.handle.getter();
  if (v13)
  {
    v14 = NearbyAdvertisement.contactID.getter();
    if (v15)
    {
      v16 = v14;
      v17 = v15;
      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      v18 = sub_1002FC028();
      v19 = NearbyAdvertisement.identifier.getter();
      v21 = v20;
      objc_allocWithZone(TUConversationActivityAdvertisement);
      v22 = v18;
      v23 = sub_1002FDEF0(v19, v21, v16, v17, v22);
      sub_10000F658(v4 + OBJC_IVAR___CSDNearbySessionManager_delegate, v24);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong *a2];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }
  }

  oslog = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v26, "Cannot find handle or contactID from NearbyAdvertisement", v27, 2u);
    sub_100005F40(v27);
  }
}

uint64_t NearbySessionManager.NearbySessionObserver.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NearbySessionManager.NearbySessionObserver.delegate.modify(void *a1))()
{
  v3 = sub_1002FDF84(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1002FC468;
}

void sub_1002FC468()
{
  sub_10001817C();
  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t NearbySessionManager.NearbySessionObserver.didDiscoverNearbyAdvertisement(advertisement:)(void *a1)
{
  v2 = v1;
  if (qword_1006A0AF8 != -1)
  {
    sub_1000083DC(&qword_1006A0AF8);
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA568);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_100005274();
    v9 = sub_10000777C();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    sub_100005FCC(&_mh_execute_header, v11, v12, "Found Available advertisement %@ NearbySessionObserver");
    sub_100009A04(v9, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v9);
    sub_100005F40(v8);
  }

  sub_10000F658(v2 + 16, v13);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v15 + 8))(v5, ObjectType, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t NearbySessionManager.NearbySessionObserver.didLoseNearbyAdvertisement(advertisement:)(void *a1)
{
  v2 = v1;
  if (qword_1006A0AF8 != -1)
  {
    sub_1000083DC(&qword_1006A0AF8);
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA568);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_100005274();
    v9 = sub_10000777C();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    sub_100005FCC(&_mh_execute_header, v11, v12, "Lost advertisement %@ NearbySessionObserver");
    sub_100009A04(v9, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v9);
    sub_100005F40(v8);
  }

  sub_10000F658(v2 + 16, v13);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v15 + 16))(v5, ObjectType, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002FC84C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

uint64_t NearbySessionManager.NearbySessionObserver.__deallocating_deinit()
{
  sub_100060500(v0 + 16);
  sub_100007C2C();

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t NearbySessionManager.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NearbySessionManager.delegate.modify(void *a1))()
{
  v3 = sub_1002FDF84(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___CSDNearbySessionManager_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1002FCAB4;
}

void sub_1002FCAB4()
{
  sub_10001817C();
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

char *NearbySessionManager.init(advertisementID:)(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100007FEC();
  v23 = v3;
  v24 = v2;
  __chkstk_darwin(v2);
  sub_100007FDC();
  v26 = (v5 - v4);
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v11 = v10 - v9;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_100008070();
  __chkstk_darwin(v12);
  sub_100007FDC();
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  sub_100007FDC();
  v21 = OBJC_IVAR___CSDNearbySessionManager_queue;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_100017FF8(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_10026DC50();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  *&v1[v21] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_unknownObjectWeakInit();
  type metadata accessor for NearbyInvitationsController();
  *&v1[OBJC_IVAR___CSDNearbySessionManager_controller] = static NearbyInvitationsController.shared.getter();
  v14 = *(v23 + 16);
  v14(&v1[OBJC_IVAR___CSDNearbySessionManager_id], a1, v24);
  type metadata accessor for NearbySessionManager.NearbySessionObserver();
  sub_100007C2C();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___CSDNearbySessionManager_observer] = v15;
  v27.receiver = v1;
  v27.super_class = type metadata accessor for NearbySessionManager(0);
  v16 = objc_msgSendSuper2(&v27, "init");
  v17 = *&v16[OBJC_IVAR___CSDNearbySessionManager_observer];
  swift_beginAccess();
  *(v17 + 24) = &protocol witness table for NearbySessionManager;
  swift_unknownObjectWeakAssign();
  v18 = v16;

  NearbyInvitationsController.addObserver(_:)();

  v14(v26, &v18[OBJC_IVAR___CSDNearbySessionManager_id], v24);

  NearbyInvitationsController.scanNearbyInvitations(scannerID:response:)();

  v19 = *(v23 + 8);
  v19(a1, v24);
  v19(v26, v24);
  return v18;
}

uint64_t sub_1002FD050(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  sub_100007FEC();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = *(v6 + 16);
  v11(&v34 - v12, a1, v4);
  v13 = objc_allocWithZone(type metadata accessor for NearbyAdvertisementRequest());
  v14 = NearbyAdvertisementRequest.init(identifier:invitation:route:activityType:)();
  if (qword_1006A0AF8 != -1)
  {
    sub_1000083DC(&qword_1006A0AF8);
  }

  v15 = type metadata accessor for Logger();
  sub_10000AF9C(v15, qword_1006BA568);
  v11(v10, a1, v4);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = sub_100005274();
    v19 = swift_slowAlloc();
    v35 = v14;
    aBlock[0] = v19;
    v20 = v19;
    *v18 = 136315138;
    sub_100017FF8(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v6 + 8))(v10, v4);
    v24 = sub_10002741C(v21, v23, aBlock);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Starting to advertise invitations w id %s", v18, 0xCu);
    sub_100009B7C(v20);
    v25 = v20;
    v14 = v35;
    sub_100005F40(v25);
    sub_100005F40(v18);
  }

  else
  {

    (*(v6 + 8))(v10, v4);
  }

  v26 = *&v2[OBJC_IVAR___CSDNearbySessionManager_queue];
  sub_100007C2C();
  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  *(v27 + 24) = v14;
  sub_100007C2C();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1002FE0E8;
  *(v28 + 24) = v27;
  aBlock[4] = sub_1000200A4;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002007C;
  aBlock[3] = &unk_100625F30;
  v29 = _Block_copy(aBlock);
  v30 = v2;
  v31 = v14;

  dispatch_sync(v26, v29);
  _Block_release(v29);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(swift_allocObject() + 16) = v30;
    v33 = v30;
    NearbyInvitationsController.assertAdvertisementPublic(_:rotations:response:)();
  }

  return result;
}

void sub_1002FD4E8(uint64_t a1, uint64_t (*a2)(void), const char *a3, ...)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006A0AF8 != -1)
    {
      sub_1000083DC(&qword_1006A0AF8);
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA568);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v6 = a2();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = sub_100005274();
      v8 = sub_10000777C();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, oslog, v6, a3, v7, 0xCu);
      sub_100009A04(v8, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40(v8);
      sub_100005F40(v7);
    }

    else
    {
    }
  }
}

void sub_1002FD680(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = a1;
  v5 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v47 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v47 - v12;
  if (qword_1006A0AF8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000AF9C(v14, qword_1006BA568);
  v16 = a3;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v51 = v15;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48 = v13;
    v22 = v9;
    v23 = a2;
    v24 = v21;
    v52 = v21;
    *v20 = 136315138;
    sub_100017FF8(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = sub_10002741C(v25, v26, &v52);

    *(v20 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "Making advertisement public %s", v20, 0xCu);
    sub_100009B7C(v24);
    a2 = v23;
    v9 = v22;
    v13 = v48;
  }

  sub_1002A5F90(v49, v7);
  v28 = sub_100015468(v7, 1, v8);
  v29 = v50;
  if (v28 == 1)
  {
    sub_100009A04(v7, &unk_1006A3DD0, &unk_10057C9D0);
    if (!a2)
    {
      return;
    }

    goto LABEL_12;
  }

  (*(v9 + 32))(v13, v7, v8);
  (*(v9 + 16))(v29, v13, v8);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v52 = v33;
    *v32 = 136315138;
    sub_100017FF8(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v13;
    v35 = v9;
    v36 = a2;
    v38 = v37;
    v39 = *(v35 + 8);
    v39(v29, v8);
    v40 = sub_10002741C(v34, v38, &v52);
    a2 = v36;

    *(v32 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "Advertisement public assertion id = %s", v32, 0xCu);
    sub_100009B7C(v33);

    v39(v48, v8);
  }

  else
  {

    v41 = *(v9 + 8);
    v41(v29, v8);
    v41(v13, v8);
  }

  if (a2)
  {
LABEL_12:
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 4) = v46;
      *v45 = v46;
      _os_log_impl(&_mh_execute_header, v42, v43, "Error making advertisement public: %@", v44, 0xCu);
      sub_100009A04(v45, &unk_1006A2630, &qword_10057CB40);
    }

    else
    {
    }
  }
}

id NearbySessionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbySessionManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1002FDEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  v9 = [v5 initWithSessionID:v7 contactID:v8 handle:a5];

  return v9;
}

void *sub_1002FDF84(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t type metadata accessor for NearbySessionManager(uint64_t a1)
{
  result = qword_1006A4960;
  if (!qword_1006A4960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002FE030(uint64_t a1)
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

id sub_1002FE184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___CSDPendingConversationMessageHandler_pendingIncomingMessagesQueue] = _swiftEmptyDictionarySingleton;
  *&v3[OBJC_IVAR___CSDPendingConversationMessageHandler_queue] = a1;
  *&v3[OBJC_IVAR___CSDPendingConversationMessageHandler_serverBag] = a2;
  *&v3[OBJC_IVAR___CSDPendingConversationMessageHandler_featureFlags] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PendingConversationMessageHandler();
  return objc_msgSendSuper2(&v5, "init");
}

void sub_1002FE24C(void *a1, void (*a2)(void, void), void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v132 = a5;
  v133 = a6;
  v139 = a4;
  v136 = a2;
  v137 = a3;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v128 = v9;
  v129 = v8;
  __chkstk_darwin(v8);
  sub_100007FDC();
  sub_10000A770(v11 - v10);
  v127 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v125 = v12;
  __chkstk_darwin(v13);
  sub_100007FDC();
  sub_10000A770(v15 - v14);
  v123 = type metadata accessor for DispatchTimeInterval();
  sub_100007FEC();
  v122 = v16;
  __chkstk_darwin(v17);
  sub_100007FDC();
  sub_10000A770(v19 - v18);
  v135 = type metadata accessor for DispatchTime();
  sub_100007FEC();
  v138 = v20;
  v22 = __chkstk_darwin(v21);
  v130 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v134 = &v110 - v24;
  v25 = type metadata accessor for UUID();
  sub_100007FEC();
  v140 = v26;
  v28 = *(v27 + 64);
  v30 = __chkstk_darwin(v29);
  v131 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v30);
  v33 = &v110 - v32;
  __chkstk_darwin(v31);
  v35 = &v110 - v34;
  v36 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v38 = v37;
  __chkstk_darwin(v39);
  sub_100007FDC();
  v42 = (v41 - v40);
  v141 = v6;
  v43 = *&v6[OBJC_IVAR___CSDPendingConversationMessageHandler_queue];
  *(v41 - v40) = v43;
  (*(v38 + 104))(v41 - v40, enum case for DispatchPredicate.onQueue(_:), v36);
  v44 = v43;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  (*(v38 + 8))(v42, v36);
  if ((v43 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v45 = [a1 conversationGroupUUID];
  if (!v45)
  {
    v61 = sub_100004778(0);
    v62 = static os_log_type_t.fault.getter();
    os_log(_:dso:log:type:_:)("Could not create group UUID from string. Dropping message.", 58, 2, &_mh_execute_header, v61, v62, _swiftEmptyArrayStorage);

    return;
  }

  v46 = v45;
  v42 = a1;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = v140 + 32;
  v47 = *(v140 + 32);
  v47(v35, v33, v25);
  v36 = *&v141[OBJC_IVAR___CSDPendingConversationMessageHandler_serverBag];
  v49 = [v36 messageRetryMaxAttempts];
  v50 = v139;
  if ((v139 & 0x8000000000000000) == 0 && v49 <= v139)
  {
    v51 = sub_100004778(v49);
    v52 = static os_log_type_t.default.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_10057D6A0;
    *(v53 + 56) = &type metadata for String;
    v54 = sub_100009D88();
    v55 = v137;
    *(v53 + 32) = v136;
    *(v53 + 40) = v55;
    *(v53 + 96) = &type metadata for Int;
    *(v53 + 104) = &protocol witness table for Int;
    *(v53 + 64) = v54;
    *(v53 + 72) = v50;

    os_log(_:dso:log:type:_:)("[WARN] Exhausted retry attempts for message (%@). Dropping message after %d attempts", 84, 2, &_mh_execute_header, v51, v52, v53);

    v56 = objc_opt_self();
    v57 = [v56 sharedInstance];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v57 messageRetryFailedForConversationGroupUUID:isa];

    if ([a1 type] == 4)
    {
      v59 = [v56 sharedInstance];
      v60 = UUID._bridgeToObjectiveC()().super.isa;
      [v59 avcBlobRequestMessageRetryFailedForConversationGroupUUID:v60];
    }

    (*(v140 + 8))(v35, v25);
    return;
  }

  v63 = [*&v141[OBJC_IVAR___CSDPendingConversationMessageHandler_featureFlags] nearbyFaceTimeEnabled];
  a1 = v137;
  v120 = v25;
  v119 = v42;
  v118 = v44;
  v117 = v48;
  v116 = v47;
  if (!v63)
  {
    goto LABEL_16;
  }

  if (qword_1006A0840 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v63 = sub_100422794([v42 type], qword_1006BA2E8);
    if ((v63 & 1) == 0)
    {
LABEL_16:
      v115 = 0;
      v114 = 0;
      v76 = v136;
      goto LABEL_21;
    }

    v64 = swift_allocObject();
    v65 = v133;
    *(v64 + 2) = v132;
    *(v64 + 3) = v65;
    v115 = v64;
    v66 = OBJC_IVAR___CSDPendingConversationMessageHandler_pendingIncomingMessagesQueue;
    v67 = v141;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v142 = *&v67[v66];
    v68 = v142;
    *&v67[v66] = 0x8000000000000000;
    sub_100021E24();
    v111 = v69;
    v70 = v68[2];
    v114 = v71;
    v72 = (v71 & 1) == 0;
    v73 = v70 + v72;
    if (__OFADD__(v70, v72))
    {
      break;
    }

    sub_10026D814(&qword_1006A4AC0, &qword_10057FB38);
    v74 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v73);
    v75 = v142;
    v76 = v136;
    if (v74)
    {
      sub_100021E24();
      v79 = v114;
      if ((v114 & 1) != (v78 & 1))
      {
        goto LABEL_27;
      }

      v80 = v77;
    }

    else
    {
      v80 = v111;
      v79 = v114;
    }

    *&v141[v66] = v75;
    if ((v79 & 1) == 0)
    {
      sub_1002FEEE0(&v142);
      (*(v140 + 16))(v131, v35, v25);
      sub_1003283CC();
    }

    v81 = v75[7];
    swift_isUniquelyReferenced_nonNull_native();
    v142 = *(v81 + 8 * v80);
    sub_100379278();
    *(v81 + 8 * v80) = v142;
    v63 = swift_endAccess();
    v114 = 1;
    v115 = sub_1002FEEE0;
LABEL_21:
    v82 = sub_100004778(v63);
    v42 = static os_log_type_t.default.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_10057D6A0;
    *(v83 + 56) = &type metadata for String;
    *(v83 + 64) = sub_100009D88();
    *(v83 + 32) = v76;
    *(v83 + 40) = a1;

    v25 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
    v84 = [v36 messageRetryIntervalMillis];
    *(v83 + 96) = &type metadata for UInt;
    *(v83 + 104) = &protocol witness table for UInt;
    *(v83 + 72) = v84;
    os_log(_:dso:log:type:_:)("[WARN] Will retry message (%@) again after %d ms", 48, 2, &_mh_execute_header, v82, v42, v83);

    v85 = v130;
    static DispatchTime.now()();
    v86 = [v36 messageRetryIntervalMillis];
    if ((v86 & 0x8000000000000000) == 0)
    {
      v87 = v121;
      *v121 = v86;
      v88 = v122;
      v89 = v123;
      (*(v122 + 104))(v87, enum case for DispatchTimeInterval.milliseconds(_:), v123);
      + infix(_:_:)();
      (*(v88 + 8))(v87, v89);
      v90 = v76;
      v91 = *(v138 + 8);
      v138 += 8;
      v136 = v91;
      v91(v85, v135);
      v92 = v35;
      v113 = v35;
      v93 = v140;
      v94 = v131;
      v95 = v120;
      (*(v140 + 16))(v131, v92, v120);
      v96 = (*(v93 + 80) + 56) & ~*(v93 + 80);
      v97 = (v28 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
      v98 = swift_allocObject();
      *(v98 + 16) = v90;
      *(v98 + 24) = a1;
      *(v98 + 32) = v139;
      *(v98 + 40) = v114;
      v99 = v141;
      *(v98 + 48) = v141;
      v116(v98 + v96, v94, v95);
      v100 = v119;
      *(v98 + v97) = v119;
      v101 = (v98 + ((v97 + 15) & 0xFFFFFFFFFFFFFFF8));
      v102 = v133;
      *v101 = v132;
      v101[1] = v102;
      aBlock[4] = sub_1002FF994;
      aBlock[5] = v98;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004CEC;
      aBlock[3] = &unk_100625FA8;
      v103 = _Block_copy(aBlock);

      v104 = v99;
      v105 = v100;
      v106 = v124;
      static DispatchQoS.unspecified.getter();
      v142 = _swiftEmptyArrayStorage;
      sub_1002FFA40(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      v107 = v126;
      v108 = v129;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v109 = v134;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v103);
      (*(v128 + 8))(v107, v108);
      (*(v125 + 8))(v106, v127);
      v136(v109, v135);
      (*(v93 + 8))(v113, v95);

      sub_1000051F8(v115, 0);
      return;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  __break(1u);
LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1002FEEE0@<X0>(uint64_t *a1@<X8>)
{
  sub_10026D814(&qword_1006A4AC8, &unk_10057FB40);
  result = Dictionary.init(dictionaryLiteral:)();
  *a1 = result;
  return result;
}

uint64_t sub_1002FEF38(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t (*a8)(void))
{
  v45 = a7;
  v46 = a8;
  v44 = a5;
  v47 = a4;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100004778(v14);
  v18 = static os_log_type_t.default.getter();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10057D6A0;
  *(v19 + 56) = &type metadata for String;
  v20 = sub_100009D88();
  v43 = a1;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *(v19 + 96) = &type metadata for Int;
  *(v19 + 104) = &protocol witness table for Int;
  *(v19 + 64) = v20;
  *(v19 + 72) = a3;

  os_log(_:dso:log:type:_:)("Retrying message (%@) for attempt %d", 36, 2, &_mh_execute_header, v17, v18, v19);

  if (v47)
  {
    (*(v13 + 16))(v16, a6, v12);
    v21 = sub_1002FE0F8(v49);
    v22 = sub_10040BE24(v48);
    if (!*v23)
    {
      (v22)(v48, 0);
      (*(v13 + 8))(v16, v12);
      return (v21)(v49, 0);
    }

    v24 = sub_100383D48(v43, a2);
    v26 = v25;
    (v22)(v48, 0);
    (*(v13 + 8))(v16, v12);
    result = (v21)(v49, 0);
    if (!v24)
    {
      return result;
    }

    sub_1000051F8(v24, v26);
    swift_beginAccess();

    v28 = sub_1002DB870();

    if (v28)
    {
      v29 = *(v28 + 16);

      if (!v29)
      {
        swift_beginAccess();
        sub_100383DE8(a6, v30, v31, v32, v33, v34, v35, v36, v42, v43);
        swift_endAccess();
      }
    }
  }

  v37 = objc_opt_self();
  v38 = [v37 sharedInstance];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v38 messageRetryStartedForConversationGroupUUID:isa];

  if ([v45 type] == 4)
  {
    v40 = [v37 sharedInstance];
    v41 = UUID._bridgeToObjectiveC()().super.isa;
    [v40 avcBlobRequestMessageRetryStartedForConversationGroupUUID:v41];
  }

  return v46();
}

uint64_t sub_1002FF404(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = *(v1 + OBJC_IVAR___CSDPendingConversationMessageHandler_queue);
  *(v8 - v7) = v10;
  (*(v5 + 104))(v8 - v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v9, v3);
  if ((v10 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  sub_100383DE8(a1, v13, v14, v15, v16, v17, v18, v19, v43, v44);
  v21 = v20;
  result = swift_endAccess();
  if (v21)
  {
    v22 = 0;
    v45 = v21;
    v25 = *(v21 + 64);
    v24 = v21 + 64;
    v23 = v25;
    v26 = 1 << *(v24 - 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & v23;
    v29 = (v26 + 63) >> 6;
    if ((v27 & v23) != 0)
    {
      do
      {
        v30 = v22;
LABEL_11:
        v31 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v32 = (v30 << 10) | (16 * v31);
        v33 = (*(v45 + 48) + v32);
        v35 = *v33;
        v34 = v33[1];
        v46 = *(*(v45 + 56) + v32);

        v37 = sub_100004778(v36);
        v38 = static os_log_type_t.default.getter();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_10057D6A0;
        *(v39 + 56) = &type metadata for String;
        *(v39 + 64) = sub_100009D88();
        *(v39 + 32) = v35;
        *(v39 + 40) = v34;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        *(v39 + 96) = sub_1002FF950();
        *(v39 + 104) = sub_1002FFA40(&unk_1006A4AB0, sub_1002FF950, &protocol conformance descriptor for NSObject);
        *(v39 + 72) = isa;
        os_log(_:dso:log:type:_:)("Retrying message (%@) after receiving conversation with groupUUID %@", 68, 2, &_mh_execute_header, v37, v38, v39);

        v41 = [objc_opt_self() sharedInstance];
        v42 = UUID._bridgeToObjectiveC()().super.isa;
        [v41 messageRetryStartedForConversationGroupUUID:v42];

        v46();
      }

      while (v28);
    }

    while (1)
    {
      v30 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v30 >= v29)
      {
      }

      v28 = *(v24 + 8 * v30);
      ++v22;
      if (v28)
      {
        v22 = v30;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

id sub_1002FF88C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PendingConversationMessageHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1002FF950()
{
  result = qword_1006A5C50;
  if (!qword_1006A5C50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A5C50);
  }

  return result;
}

uint64_t sub_1002FF994()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002FEF38(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1002FFA40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1002FFA88(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(TUConversationActivitySessionContainer) init];
  [v7 setState:3];
  [v7 setCapabilities:a2];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_10000A780(isa, "setUUID:");

  UUID.init()();
  v9 = UUID._bridgeToObjectiveC()().super.isa;
  v10 = (*(v4 + 8))(v6, v3);
  sub_10000A780(v10, "setGroupUUID:");

  [v7 setState:3];
  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B3DC(_swiftEmptyArrayStorage);
  }

  sub_1000083D0();
  sub_100006AF0(v11, v12, v13);
  sub_1000083D0();
  sub_10000CE3C(v14, v15, v16);
  sub_10000A12C();
  v17 = sub_100010160();
  sub_10000F5E4(v17, "setActivitySessions:");

  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B3B8(_swiftEmptyArrayStorage);
  }

  sub_1000083D0();
  sub_100006AF0(v18, v19, v20);
  sub_1000083D0();
  sub_10000CE3C(v21, v22, v23);
  sub_10000A12C();
  v24 = sub_100010160();
  sub_10000F5E4(v24, "setRemoteMembers:");

  [v7 setLocalParticipantIdentifier:123];
  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B1E0(_swiftEmptyArrayStorage);
  }

  sub_1000083D0();
  sub_100006AF0(v25, v26, v27);
  sub_1000083D0();
  sub_10000CE3C(v28, v29, v30);
  sub_10000A12C();
  v31 = sub_100010160();
  sub_10000F5E4(v31, "setVirtualParticipants:");

  v32 = objc_allocWithZone(TUConversationVirtualParticipantConfig);
  v33 = sub_1002FFE6C(1, 1, 1, 1, 1, 0, 0, 0, 0);
  sub_10000A780(v33, "setVirtualParticipantConfig:");

  v34 = [objc_allocWithZone(TUConversationUnreliableMessengerConfig) initWithEstablishChannelMaxAttempts:1 establishChannelRetryIntervalMillis:1 egressMessagePayloadMaxSizeBytes:1 channelStreamMaxQueueSize:1 channelStreamMaxTries:1 channelStreamRetryIntervalMillis:1 seqNumBufferSize:1];
  sub_10000A780(v34, "setUnreliableMessengerConfig:");

  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B1BC(_swiftEmptyArrayStorage);
  }

  sub_1000083D0();
  sub_100006AF0(v35, v36, v37);
  sub_1000083D0();
  sub_10000CE3C(v38, v39, v40);
  sub_10000A12C();
  v41 = sub_100010160();
  sub_10000F5E4(v41, "setActiveRemoteParticipants:");

  return v7;
}

id sub_1002FFE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a7)
  {
    v15 = 0;
    if (a9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = String._bridgeToObjectiveC()();

  if (!a9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = String._bridgeToObjectiveC()();

LABEL_6:
  v17 = [v9 initWithConnectionRetryIntervalMillis:a1 connectionMaxAttempts:a2 rpcStreamRetryIntervalMillis:a3 rpcStreamMaxAttempts:a4 serverCertValidationEnabled:a5 & 1 serverCertHostnameOverride:v15 serverCertLeafMarkerOIDOverride:v16];

  return v17;
}

uint64_t sub_1002FFF54()
{
  sub_10026D814(&qword_1006A4CF0, &qword_10057FBB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057CA70;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x8000000100569630;
  *(inited + 48) = Dictionary.init(dictionaryLiteral:)();
  *(inited + 56) = 0xD00000000000001ELL;
  *(inited + 64) = 0x8000000100569650;
  *(inited + 72) = Dictionary.init(dictionaryLiteral:)();
  *(inited + 80) = 0xD000000000000024;
  *(inited + 88) = 0x8000000100569670;
  *(inited + 96) = Dictionary.init(dictionaryLiteral:)();
  *(inited + 104) = 0xD00000000000002ALL;
  *(inited + 112) = 0x80000001005696A0;
  *(inited + 120) = Dictionary.init(dictionaryLiteral:)();
  sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
  result = Dictionary.init(dictionaryLiteral:)();
  qword_1006A4AD0 = result;
  return result;
}

id sub_1003000C0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v28[0] = v26;
    v28[1] = v27;
    if (*(&v27 + 1))
    {
      v10 = sub_1000496D4();
      v11 = swift_dynamicCast();
      if (v11)
      {
        v12 = sub_100004778(v11);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_10057D6A0;
        *(v13 + 56) = &type metadata for String;
        *(v13 + 64) = sub_100009D88();
        *(v13 + 32) = a1;
        *(v13 + 40) = a2;
        *(v13 + 96) = v10;
        *(v13 + 104) = sub_100304210();
        *(v13 + 72) = v25;

        v14 = v25;
        v15 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Got %@ from server bag with a value of: %@", 42, 2, &_mh_execute_header, v12, v15, v13);

        a3 = [v14 BOOLValue];

        return (a3 & 1);
      }
    }

    else
    {
      v11 = sub_10004975C(v28);
    }

    v16 = sub_100004778(v11);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10057D6A0;
    *&v28[0] = a1;
    *(&v28[0] + 1) = a2;

    v18 = String.init<A>(reflecting:)();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    v21 = sub_100009D88();
    *(v17 + 64) = v21;
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    LOBYTE(v28[0]) = a3 & 1;
    v22 = String.init<A>(reflecting:)();
    *(v17 + 96) = &type metadata for String;
    *(v17 + 104) = v21;
    *(v17 + 72) = v22;
    *(v17 + 80) = v23;
    v24 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Server bag does not have a value for %@, so returning the default one of %@ seconds.", 84, 2, &_mh_execute_header, v16, v24, v17);

    return (a3 & 1);
  }

  __break(1u);
  return result;
}

id sub_100300380(uint64_t a1, uint64_t a2, id a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v28[0] = v26;
    v28[1] = v27;
    if (*(&v27 + 1))
    {
      v10 = sub_1000496D4();
      v11 = swift_dynamicCast();
      if (v11)
      {
        v12 = sub_100004778(v11);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_10057D6A0;
        *(v13 + 56) = &type metadata for String;
        *(v13 + 64) = sub_100009D88();
        *(v13 + 32) = a1;
        *(v13 + 40) = a2;
        *(v13 + 96) = v10;
        *(v13 + 104) = sub_100304210();
        *(v13 + 72) = v25;

        v14 = v25;
        v15 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Got %@ from server bag with a value of: %@", 42, 2, &_mh_execute_header, v12, v15, v13);

        a3 = [v14 unsignedIntegerValue];

        return a3;
      }
    }

    else
    {
      v11 = sub_10004975C(v28);
    }

    v16 = sub_100004778(v11);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10057D6A0;
    *&v28[0] = a1;
    *(&v28[0] + 1) = a2;

    v18 = String.init<A>(reflecting:)();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    v21 = sub_100009D88();
    *(v17 + 64) = v21;
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    *&v28[0] = a3;
    v22 = String.init<A>(reflecting:)();
    *(v17 + 96) = &type metadata for String;
    *(v17 + 104) = v21;
    *(v17 + 72) = v22;
    *(v17 + 80) = v23;
    v24 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Server bag does not have a value for %@, so returning the default one of %@ seconds.", 84, 2, &_mh_execute_header, v16, v24, v17);

    return a3;
  }

  __break(1u);
  return result;
}

id sub_10030063C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10003EBF0(&v26, v27);
    }

    else
    {
      memset(v27, 0, sizeof(v27));
    }

    sub_10026D814(&unk_1006A2D10, &unk_10057D940);
    sub_10026D814(&qword_1006A4CE8, &qword_10057FBB0);
    v10 = swift_dynamicCast();
    if (v10)
    {
      a3 = v26;
      v11 = sub_100004778(v10);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_10057D6A0;
      *(v12 + 56) = &type metadata for String;
      v13 = sub_100009D88();
      *(v12 + 64) = v13;
      *(v12 + 32) = a1;
      *(v12 + 40) = a2;
      *&v27[0] = a3;

      v14 = String.init<A>(reflecting:)();
      *(v12 + 96) = &type metadata for String;
      *(v12 + 104) = v13;
      *(v12 + 72) = v14;
      *(v12 + 80) = v15;
      v16 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Got %@ from server bag with a value of: %@", 42, 2, &_mh_execute_header, v11, v16, v12);
    }

    else
    {
      v17 = sub_100004778(v10);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10057D6A0;
      *&v27[0] = a1;
      *(&v27[0] + 1) = a2;

      v19 = String.init<A>(reflecting:)();
      v21 = v20;
      *(v18 + 56) = &type metadata for String;
      v22 = sub_100009D88();
      *(v18 + 64) = v22;
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      *&v27[0] = a3;

      v23 = String.init<A>(reflecting:)();
      *(v18 + 96) = &type metadata for String;
      *(v18 + 104) = v22;
      *(v18 + 72) = v23;
      *(v18 + 80) = v24;
      v25 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Server bag does not have a value for %@, so returning the default one of %@ seconds.", 84, 2, &_mh_execute_header, v17, v25, v18);
    }

    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100300908(uint64_t a1, uint64_t a2, float a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10003EBF0(&v26, v27);
    }

    else
    {
      memset(v27, 0, sizeof(v27));
    }

    sub_10026D814(&unk_1006A2D10, &unk_10057D940);
    v10 = swift_dynamicCast();
    if (v10)
    {
      v11 = v26;
      v12 = sub_100004778(v10);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10057D6A0;
      *(v13 + 56) = &type metadata for String;
      v14 = sub_100009D88();
      *(v13 + 64) = v14;
      *(v13 + 32) = a1;
      *(v13 + 40) = a2;
      LODWORD(v27[0]) = v11;

      v15 = String.init<A>(reflecting:)();
      *(v13 + 96) = &type metadata for String;
      *(v13 + 104) = v14;
      *(v13 + 72) = v15;
      *(v13 + 80) = v16;
      v17 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Got %@ from server bag with a value of: %@", 42, 2, &_mh_execute_header, v12, v17, v13);
    }

    else
    {
      v12 = sub_100004778(v10);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10057D6A0;
      *&v27[0] = a1;
      *(&v27[0] + 1) = a2;

      v19 = String.init<A>(reflecting:)();
      v21 = v20;
      *(v18 + 56) = &type metadata for String;
      v22 = sub_100009D88();
      *(v18 + 64) = v22;
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      *v27 = a3;
      v23 = String.init<A>(reflecting:)();
      *(v18 + 96) = &type metadata for String;
      *(v18 + 104) = v22;
      *(v18 + 72) = v23;
      *(v18 + 80) = v24;
      v25 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Server bag does not have a value for %@, so returning the default one of %@ seconds.", 84, 2, &_mh_execute_header, v12, v25, v18);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100300B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10003EBF0(&v25, v26);
    }

    else
    {
      memset(v26, 0, sizeof(v26));
    }

    sub_10026D814(&unk_1006A2D10, &unk_10057D940);
    v10 = swift_dynamicCast();
    if (v10)
    {
      a3 = v25;
      v11 = sub_100004778(v10);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_10057D6A0;
      *(v12 + 56) = &type metadata for String;
      v13 = sub_100009D88();
      *(v12 + 64) = v13;
      *(v12 + 32) = a1;
      *(v12 + 40) = a2;
      *&v26[0] = a3;

      v14 = String.init<A>(reflecting:)();
      *(v12 + 96) = &type metadata for String;
      *(v12 + 104) = v13;
      *(v12 + 72) = v14;
      *(v12 + 80) = v15;
      v16 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Got %@ from server bag with a value of: %@", 42, 2, &_mh_execute_header, v11, v16, v12);
    }

    else
    {
      v11 = sub_100004778(v10);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_10057D6A0;
      *&v26[0] = a1;
      *(&v26[0] + 1) = a2;

      v18 = String.init<A>(reflecting:)();
      v20 = v19;
      *(v17 + 56) = &type metadata for String;
      v21 = sub_100009D88();
      *(v17 + 64) = v21;
      *(v17 + 32) = v18;
      *(v17 + 40) = v20;
      *&v26[0] = a3;
      v22 = String.init<A>(reflecting:)();
      *(v17 + 96) = &type metadata for String;
      *(v17 + 104) = v21;
      *(v17 + 72) = v22;
      *(v17 + 80) = v23;
      v24 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Server bag does not have a value for %@, so returning the default one of %@ seconds.", 84, 2, &_mh_execute_header, v11, v24, v17);
    }

    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100300E18(uint64_t a1, uint64_t a2, double a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10003EBF0(&v26, v27);
    }

    else
    {
      memset(v27, 0, sizeof(v27));
    }

    sub_10026D814(&unk_1006A2D10, &unk_10057D940);
    v10 = swift_dynamicCast();
    if (v10)
    {
      v11 = v26;
      v12 = sub_100004778(v10);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10057D6A0;
      *(v13 + 56) = &type metadata for String;
      v14 = sub_100009D88();
      *(v13 + 64) = v14;
      *(v13 + 32) = a1;
      *(v13 + 40) = a2;
      *&v27[0] = v11;

      v15 = String.init<A>(reflecting:)();
      *(v13 + 96) = &type metadata for String;
      *(v13 + 104) = v14;
      *(v13 + 72) = v15;
      *(v13 + 80) = v16;
      v17 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Got %@ from server bag with a value of: %@", 42, 2, &_mh_execute_header, v12, v17, v13);
    }

    else
    {
      v12 = sub_100004778(v10);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10057D6A0;
      *&v27[0] = a1;
      *(&v27[0] + 1) = a2;

      v19 = String.init<A>(reflecting:)();
      v21 = v20;
      *(v18 + 56) = &type metadata for String;
      v22 = sub_100009D88();
      *(v18 + 64) = v22;
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      *v27 = a3;
      v23 = String.init<A>(reflecting:)();
      *(v18 + 96) = &type metadata for String;
      *(v18 + 104) = v22;
      *(v18 + 72) = v23;
      *(v18 + 80) = v24;
      v25 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Server bag does not have a value for %@, so returning the default one of %@ seconds.", 84, 2, &_mh_execute_header, v12, v25, v18);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003010A0()
{
  result = sub_100300380(0xD00000000000001CLL, 0x8000000100569CE0, 0x1E);
  qword_1006A4AD8 = result;
  return result;
}

id sub_1003010DC()
{
  result = sub_100300380(0xD00000000000001ALL, 0x8000000100569CC0, 0x1E);
  qword_1006A4AE0 = result;
  return result;
}

id sub_100301118()
{
  result = sub_100300380(0xD000000000000018, 0x8000000100569CA0, 2);
  qword_1006A4AE8 = result;
  return result;
}

id sub_100301154()
{
  result = sub_100300380(0xD000000000000029, 0x8000000100569C70, 5);
  qword_1006A4AF0 = result;
  return result;
}

id sub_100301190()
{
  result = sub_100300380(0xD000000000000024, 0x8000000100569C40, 0x41);
  qword_1006A4AF8 = result;
  return result;
}

id sub_1003011CC()
{
  result = sub_100300380(0xD00000000000002ELL, 0x8000000100569C10, 0x14);
  qword_1006A4B00 = result;
  return result;
}

id sub_100301208()
{
  result = sub_100300380(0xD000000000000020, 0x8000000100569BE0, 0xA);
  qword_1006A4B08 = result;
  return result;
}

id sub_100301244()
{
  result = sub_100300380(0xD000000000000024, 0x8000000100569BB0, 5);
  qword_1006A4B10 = result;
  return result;
}

id sub_100301280()
{
  result = sub_100300380(0xD00000000000001ALL, 0x8000000100569B70, 0x64);
  qword_1006A4B18 = result;
  return result;
}

id sub_1003012BC()
{
  result = sub_100300380(0xD000000000000016, 0x8000000100569B50, 0x64);
  qword_1006A4B20 = result;
  return result;
}

id sub_1003012F8()
{
  result = sub_100300380(0xD000000000000015, 0x8000000100569B30, 0x64);
  qword_1006A4B28 = result;
  return result;
}

id sub_100301334()
{
  result = sub_1003000C0(0xD000000000000013, 0x8000000100569B10, 1u);
  byte_1006A4B30 = result & 1;
  return result;
}

id sub_100301374()
{
  result = sub_1003000C0(0xD000000000000010, 0x8000000100569AF0, 1u);
  byte_1006A4B31 = result & 1;
  return result;
}

id sub_1003013B4()
{
  result = sub_1003000C0(0xD00000000000001DLL, 0x8000000100569B90, 0);
  byte_1006A4B32 = result & 1;
  return result;
}

id sub_1003013F4()
{
  result = sub_1003000C0(0xD00000000000001ELL, 0x8000000100569AA0, 1u);
  byte_1006A4B33 = result & 1;
  return result;
}

id sub_100301434()
{
  result = sub_1003000C0(0xD00000000000002DLL, 0x8000000100569AC0, 0);
  byte_1006A4B34 = result & 1;
  return result;
}

id sub_100301474()
{
  result = sub_1003000C0(0xD00000000000001FLL, 0x8000000100569A80, 1u);
  byte_1006A4B35 = result & 1;
  return result;
}

id sub_1003014B4()
{
  result = sub_1003000C0(0xD00000000000002ALL, 0x8000000100569A50, 1u);
  byte_1006A4B36 = result & 1;
  return result;
}

id sub_1003014F4()
{
  result = sub_1003000C0(0xD00000000000002CLL, 0x8000000100569A20, 1u);
  byte_1006A4B37 = result & 1;
  return result;
}

id sub_100301534()
{
  result = sub_1003000C0(0xD000000000000025, 0x80000001005699F0, 1u);
  byte_1006A4B38 = result & 1;
  return result;
}

id sub_100301574()
{
  result = sub_1003000C0(0xD00000000000001FLL, 0x80000001005699D0, 1u);
  byte_1006A4B39 = result & 1;
  return result;
}

id sub_1003015B4()
{
  result = sub_1003000C0(0xD000000000000025, 0x80000001005699A0, 1u);
  byte_1006A4B3A = result & 1;
  return result;
}

id sub_1003015F4()
{
  result = sub_1003000C0(0xD00000000000001ALL, 0x8000000100569980, 1u);
  byte_1006A4B3B = result & 1;
  return result;
}

id sub_100301634()
{
  result = sub_100300380(0xD000000000000023, 0x8000000100569950, 5);
  qword_1006A4B40 = result;
  return result;
}

id sub_100301670()
{
  result = sub_1003000C0(0xD00000000000001BLL, 0x80000001005697B0, 1u);
  byte_1006A4B48 = result & 1;
  return result;
}

id sub_1003016B0()
{
  result = sub_100300380(0xD000000000000016, 0x8000000100569930, 5);
  qword_1006A4B50 = result;
  return result;
}

id sub_1003016EC()
{
  result = sub_100300380(0xD000000000000015, 0x8000000100569910, 0x1F4FA00);
  qword_1006A4B58 = result;
  return result;
}

id sub_10030172C()
{
  result = sub_100300380(0xD00000000000001ELL, 0x8000000100569880, 0x1F4FA00);
  qword_1006A4B60 = result;
  return result;
}

id sub_10030176C()
{
  result = sub_100300380(0xD00000000000001CLL, 0x80000001005698F0, 0x1F4);
  qword_1006A4B68 = result;
  return result;
}

id sub_1003017A8()
{
  result = sub_100300380(0xD00000000000001BLL, 0x80000001005698D0, 0x1F4FA00);
  qword_1006A4B70 = result;
  return result;
}

id sub_1003017E8()
{
  result = sub_100300380(0xD000000000000027, 0x80000001005698A0, 0x1F4FA00);
  qword_1006A4B78 = result;
  return result;
}

id sub_100301828()
{
  result = sub_100300380(0xD000000000000019, 0x8000000100569860, 3);
  qword_1006A4B80 = result;
  return result;
}

id sub_100301864()
{
  result = sub_100300380(0xD000000000000019, 0x8000000100569840, 0x100);
  qword_1006A4B88 = result;
  return result;
}

id sub_1003018A0()
{
  result = sub_100300380(0xD00000000000001FLL, 0x8000000100569820, 2);
  qword_1006A4B90 = result;
  return result;
}

id sub_1003018DC()
{
  result = sub_100300380(0xD00000000000001CLL, 0x8000000100569800, 0x15180);
  qword_1006A4B98 = result;
  return result;
}

id sub_10030191C()
{
  result = sub_100300380(0xD000000000000026, 0x80000001005697D0, 0x12C);
  qword_1006A4BA0 = result;
  return result;
}

id sub_100301958()
{
  result = sub_100300380(0xD000000000000022, 0x8000000100569780, 0x12C);
  qword_1006A4BA8 = result;
  return result;
}

id sub_100301994()
{
  result = sub_100300380(0xD000000000000026, 0x8000000100569750, 5);
  qword_1006A4BB0 = result;
  return result;
}

id sub_1003019D0()
{
  if (qword_1006A0848 != -1)
  {
    swift_once();
  }

  result = sub_10030063C(0xD000000000000020, 0x8000000100569600, qword_1006A4AD0);
  off_1006A4BB8 = result;
  return result;
}

id sub_100301A40()
{
  result = sub_100300380(0xD000000000000025, 0x80000001005695A0, 0x1388);
  qword_1006A4BC0 = result;
  return result;
}

id sub_100301A7C()
{
  result = sub_100300380(0xD000000000000022, 0x80000001005695D0, 0xA);
  qword_1006A4BC8 = result;
  return result;
}

id sub_100301AB8()
{
  result = sub_1003000C0(0xD000000000000022, 0x8000000100569570, 1u);
  byte_1006A4BD0 = result & 1;
  return result;
}

id sub_100301AF8()
{
  result = sub_100300380(0xD000000000000027, 0x8000000100569540, 4);
  qword_1006A4BD8 = result;
  return result;
}

id sub_100301B34()
{
  result = sub_1003000C0(0xD000000000000025, 0x8000000100569510, 1u);
  byte_1006A4BE0 = result & 1;
  return result;
}

id sub_100301B74()
{
  result = sub_1003000C0(0xD000000000000014, 0x80000001005694F0, 1u);
  byte_1006A4BE1 = result & 1;
  return result;
}

id sub_100301BB4()
{
  result = sub_1003000C0(0xD000000000000018, 0x80000001005694D0, 1u);
  byte_1006A4BE2 = result & 1;
  return result;
}

id sub_100301BF4()
{
  result = sub_100300380(0xD00000000000001BLL, 0x8000000100568E90, 0xB4);
  qword_1006A4BE8 = result;
  return result;
}

id sub_100301C30()
{
  result = sub_100300380(0xD000000000000014, 0x8000000100568EB0, 0x1F4);
  qword_1006A4BF0 = result;
  return result;
}

id sub_100301C6C()
{
  result = sub_100300380(0xD000000000000019, 0x8000000100568ED0, 5);
  qword_1006A4BF8 = result;
  return result;
}

uint64_t sub_100301CA8(uint64_t a1, uint64_t a2)
{
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057D690;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100009D88();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  v5 = String.init(format:_:)();
  LOBYTE(a1) = sub_1003000C0(v5, v6, 1u);

  return a1 & 1;
}

id sub_100301D60()
{
  result = sub_100300380(0xD00000000000001BLL, 0x8000000100568FE0, 3);
  qword_1006A4C00 = result;
  return result;
}

id sub_100301D9C()
{
  result = sub_100300380(0xD000000000000019, 0x8000000100569000, 2);
  qword_1006A4C08 = result;
  return result;
}

id sub_100301DD8()
{
  result = sub_100300380(0xD00000000000001CLL, 0x8000000100569020, 2);
  qword_1006A4C10 = result;
  return result;
}

id sub_100301E14()
{
  result = sub_100300380(0xD000000000000013, 0x8000000100569040, 5);
  qword_1006A4C18 = result;
  return result;
}

id sub_100301E50()
{
  result = sub_100300908(0xD000000000000028, 0x8000000100569060, 300.0);
  dword_1006A4C20 = v1;
  return result;
}

id sub_100301E90()
{
  sub_100007CF4();
  result = sub_100300380(0xD000000000000024, v0, 0x19);
  qword_1006A4C28 = result;
  return result;
}

id sub_100301EC8()
{
  sub_100007CF4();
  result = sub_100300B90(0xD00000000000001ELL, v0, 2);
  qword_1006A4C30 = result;
  return result;
}

id sub_100301F00()
{
  sub_100007CF4();
  result = sub_100300B90(0xD000000000000019, v0, 120);
  qword_1006A4C38 = result;
  return result;
}

id sub_100301F38()
{
  sub_100007CF4();
  result = sub_100300B90(0xD00000000000001ELL, v0, 15);
  qword_1006A4C40 = result;
  return result;
}

id sub_100301F70()
{
  sub_100007CF4();
  result = sub_100300B90(0xD00000000000001BLL, v0, 2000);
  qword_1006A4C48 = result;
  return result;
}

id sub_100301FA8()
{
  sub_100007CF4();
  result = sub_100300B90(0xD000000000000018, v0, 20);
  qword_1006A4C50 = result;
  return result;
}

id sub_100301FE0()
{
  sub_100007CF4();
  result = sub_100300B90(0xD000000000000021, v0, 20);
  qword_1006A4C58 = result;
  return result;
}

id sub_100302018()
{
  result = sub_100300B90(0x736F642D70696F76, 0xEE00746E756F632DLL, 20);
  qword_1006A4C60 = result;
  return result;
}

id sub_10030205C()
{
  result = sub_100300380(0xD000000000000015, 0x8000000100569490, 0x1E);
  qword_1006A4C68 = result;
  return result;
}

id sub_100302098()
{
  result = sub_100300380(0xD00000000000001ELL, 0x8000000100569470, 0x12C);
  qword_1006A4C70 = result;
  return result;
}

id sub_1003020D4()
{
  result = sub_100300380(0xD00000000000001ELL, 0x8000000100569450, 1);
  qword_1006A4C78 = result;
  return result;
}

id sub_100302110()
{
  result = sub_100300380(0xD000000000000013, 0x8000000100569120, 2);
  qword_1006A4C80 = result;
  return result;
}

id sub_10030214C()
{
  result = sub_100300E18(0xD000000000000018, 0x80000001005691B0, 1.0);
  qword_1006A4C88 = v1;
  return result;
}

id sub_100302188()
{
  sub_100007CF4();
  result = sub_1003000C0(0xD000000000000020, v0, 1u);
  byte_1006A4C90 = result & 1;
  return result;
}

id sub_1003021C4()
{
  result = sub_1003000C0(0xD000000000000025, 0x8000000100569420, 1u);
  byte_1006A4C91 = result & 1;
  return result;
}

id sub_100302204()
{
  result = sub_100300380(0xD000000000000043, 0x80000001005693D0, 0x3C);
  qword_1006A4C98 = result;
  return result;
}

id sub_100302240()
{
  result = sub_100300380(0xD000000000000032, 0x8000000100569390, 5);
  qword_1006A4CA0 = result;
  return result;
}

uint64_t sub_100302FB4()
{
  if (qword_1006A0980 != -1)
  {
    sub_1000083FC(&qword_1006A0980);
  }
}

uint64_t sub_100303000(uint64_t a1, uint64_t a2)
{
  if (qword_1006A0980 != -1)
  {
    sub_1000083FC(&qword_1006A0980);
  }

  v4 = off_1006A4BB8;

  v5 = sub_100005E74(a1, a2, v4);

  if (v5)
  {
    v7 = sub_1002CB47C(5459817, 0xE300000000000000, v5);
    if (v8)
    {
    }

    else
    {
      v15 = sub_10000A798();
      v17 = sub_1002CB47C(v15, v16, v5);
      v19 = v18;

      if (v19)
      {
        v21 = sub_100004778(v20);
        v22 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("No bundleID specified, but fallback is specified", 48, 2, &_mh_execute_header, v21, v22, _swiftEmptyArrayStorage);

        return v17;
      }
    }
  }

  else
  {
    v9 = sub_100004778(v6);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10057D6A0;
    *(v10 + 56) = &type metadata for String;
    v11 = sub_100009D88();
    *(v10 + 64) = v11;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;

    sub_10026D814(&qword_1006A4CE8, &qword_10057FBB0);
    v12 = String.init<A>(reflecting:)();
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v11;
    *(v10 + 72) = v12;
    *(v10 + 80) = v13;
    v14 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Couldn't find bundleID %@ in activityIdentifierMap %@", 53, 2, &_mh_execute_header, v9, v14, v10);

    return 0;
  }

  return v7;
}

uint64_t sub_1003033B0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___CSDSharedConversationServerBag_fitnessPlusDaemonBundleID) == a1 && *(v2 + OBJC_IVAR___CSDSharedConversationServerBag_fitnessPlusDaemonBundleID + 8) == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v6 = *(v2 + OBJC_IVAR___CSDSharedConversationServerBag_fitnessPlusAppBundleID);
  }

  else
  {
    if (qword_1006A0980 != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v7 = off_1006A4BB8 + 64;
      v8 = 1 << *(off_1006A4BB8 + 32);
      v9 = -1;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      v10 = v9 & *(off_1006A4BB8 + 8);
      v11 = (v8 + 63) >> 6;
      v24 = off_1006A4BB8;
      v12 = swift_bridgeObjectRetain_n();
      v13 = 0;
      if (v10)
      {
        break;
      }

LABEL_12:
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v11)
        {

          return 0;
        }

        v10 = *&v7[8 * v14];
        ++v13;
        if (v10)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_24:
      sub_1000083FC(&qword_1006A0980);
    }

    while (1)
    {
      v14 = v13;
LABEL_15:
      v15 = *(v24[7] + ((v14 << 9) | (8 * __clz(__rbit64(v10)))));
      v25[0] = a1;
      v25[1] = a2;
      __chkstk_darwin(v12);
      v23[2] = v25;
      swift_bridgeObjectRetain_n();
      sub_10045E238(sub_100304294, v23, v15);
      v17 = v16;

      if (v17)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    v19 = sub_10000A798();
    v21 = sub_1002CB47C(v19, v20, v15);
    if (!v22)
    {
      v21 = sub_1002CB47C(5459817, 0xE300000000000000, v15);
    }

    v6 = v21;
  }

  return v6;
}

float sub_100303B30()
{
  if (qword_1006A09F8 != -1)
  {
    swift_once();
  }

  return *&dword_1006A4C20;
}

double sub_100303ED4()
{
  if (qword_1006A0A60 != -1)
  {
    swift_once();
  }

  return *&qword_1006A4C88;
}

uint64_t sub_100304084(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

id sub_1003040C0(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___CSDSharedConversationServerBag_fitnessPlusAppBundleID];
  *v2 = 0xD000000000000011;
  *(v2 + 1) = 0x8000000100569D00;
  v3 = &v1[OBJC_IVAR___CSDSharedConversationServerBag_fitnessPlusDaemonBundleID];
  *v3 = 0xD00000000000001ALL;
  *(v3 + 1) = 0x8000000100569D20;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SharedConversationServerBag();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_100304164(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SharedConversationServerBag();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100304210()
{
  result = qword_1006A4CE0;
  if (!qword_1006A4CE0)
  {
    sub_1000496D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4CE0);
  }

  return result;
}

void sub_1003042B4()
{
  sub_100005EF4();
  v1 = v0;
  v2 = type metadata accessor for URL();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007BAC();
  v48 = (v6 - v7);
  sub_100006838();
  __chkstk_darwin(v8);
  v10 = &v48 - v9;
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v51[0] = 0;
  v16 = [v12 removeItemAtURL:v14 error:v51];

  if (v16)
  {
    v17 = v51[0];
  }

  else
  {
    v18 = v51[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v19 = [v11 defaultManager];
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  URL._bridgeToObjectiveC()(v23);
  v25 = v24;
  v51[0] = 0;
  v26 = [v19 copyItemAtURL:v22 toURL:v24 error:v51];

  if (v26)
  {
    sub_100005EDC();

    v29 = v27;
  }

  else
  {
    v49 = v51[0];
    v30 = v51[0];
    v31 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B50 != -1)
    {
      sub_100008194(&qword_1006A0B50);
    }

    v32 = type metadata accessor for Logger();
    sub_10000AF9C(v32, qword_1006BA670);
    v33 = *(v4 + 16);
    v33(v10, v1, v2);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51[0] = v49;
      *v36 = 136315394;
      v33(v48, v10, v2);
      v37 = String.init<A>(reflecting:)();
      v39 = v38;
      v40 = sub_10000A7B0();
      v41(v40);
      v42 = sub_10002741C(v37, v39, v51);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2080;
      v50 = v31;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v43 = String.init<A>(reflecting:)();
      v45 = sub_10002741C(v43, v44, v51);

      *(v36 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error copying completed greeting to %s: %s", v36, 0x16u);
      sub_100011344();
      sub_10000F674();
      sub_100005F40(v36);
    }

    else
    {

      v46 = sub_10000A7B0();
      v47(v46);
    }

    sub_100005EDC();
  }
}

void sub_1003046D0()
{
  sub_100005EF4();
  v1 = v0;
  v2 = type metadata accessor for URL();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007BAC();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v11 = v49 - v10;
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  URL.absoluteString.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 fileExistsAtPath:v14];

  if (v15)
  {
LABEL_2:
    sub_100005EDC();
    return;
  }

  v16 = [v12 defaultManager];
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  v53[0] = 0;
  v20 = [v16 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:v53];

  if (!v20)
  {
    v51 = v53[0];
    v24 = v53[0];
    v25 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B50 != -1)
    {
      sub_100008194(&qword_1006A0B50);
    }

    v26 = type metadata accessor for Logger();
    sub_10000AF9C(v26, qword_1006BA670);
    v27 = *(v4 + 16);
    v27(v11, v1, v2);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v50 = v29;
      v31 = v30;
      v51 = swift_slowAlloc();
      v52 = v25;
      v53[0] = v51;
      *v31 = 136315394;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v32 = String.init<A>(reflecting:)();
      v34 = sub_10002741C(v32, v33, v53);
      v49[1] = v28;
      v35 = v34;

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v27(v8, v11, v2);
      v36 = String.init<A>(reflecting:)();
      v38 = v37;
      v39 = sub_10000A7B0();
      v40(v39);
      v41 = sub_10002741C(v36, v38, v53);

      *(v31 + 14) = v41;
      sub_10000E6C8();
      _os_log_impl(v42, v43, v44, v45, v46, 0x16u);
      sub_100011344();
      sub_10000F674();
      sub_100005F40(v31);
    }

    else
    {

      v47 = sub_10000A7B0();
      v48(v47);
    }

    goto LABEL_2;
  }

  sub_100005EDC();

  v23 = v21;
}

void sub_100304AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005EF4();
  a19 = v20;
  a20 = v21;
  v22 = type metadata accessor for UUID();
  sub_100007FEC();
  v24 = v23;
  __chkstk_darwin(v25);
  v27 = &a9 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for URL();
  sub_100007FEC();
  v30 = v29;
  __chkstk_darwin(v31);
  v33 = &a9 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL.temporaryDirectory.getter();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v24 + 8))(v27, v22);
  URL.appendingPathComponent(_:)();

  (*(v30 + 8))(v33, v28);
  sub_100005EDC();
}

void sub_100304C20()
{
  sub_100005EF4();
  v1 = v0;
  v123 = v2;
  v3 = type metadata accessor for URL();
  sub_100007FEC();
  v122 = v4;
  __chkstk_darwin(v5);
  sub_100007BAC();
  v119 = (v6 - v7);
  sub_100006838();
  __chkstk_darwin(v8);
  sub_100005F58();
  v117 = v9;
  sub_100006838();
  __chkstk_darwin(v10);
  sub_100005F58();
  v118 = v11;
  sub_100006838();
  __chkstk_darwin(v12);
  sub_100005F58();
  v14 = v13;
  sub_100006838();
  __chkstk_darwin(v15);
  sub_100005F58();
  v17 = v16;
  sub_100006838();
  v19 = __chkstk_darwin(v18);
  v21 = &v109 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v109 - v23;
  sub_100304AAC(v22, v25, v26, v27, v28, v29, v30, v31, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
  sub_1003046D0();
  v124 = v1;
  URL.lastPathComponent.getter();
  v121 = v24;
  URL.appendingPathComponent(_:)();

  v32 = objc_opt_self();
  v33 = &selRef_conversationManager_conversationScreenSharingChanged_forParticipant_;
  v34 = [v32 defaultManager];
  v125 = v21;
  URL._bridgeToObjectiveC()(v35);
  v37 = v36;
  v127[0] = 0;
  LODWORD(v21) = [v34 removeItemAtURL:v36 error:v127];

  if (v21)
  {
    v38 = v127[0];
  }

  else
  {
    v39 = v127[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v40 = v14;
  v41 = v17;
  if (qword_1006A0B50 != -1)
  {
    sub_100008194(&qword_1006A0B50);
  }

  v42 = type metadata accessor for Logger();
  v43 = sub_10000AF9C(v42, qword_1006BA670);
  v44 = v122;
  v45 = v122 + 16;
  v46 = *(v122 + 16);
  v46(v41, v124, v3);
  v46(v40, v125, v3);
  v114 = v43;
  v47 = Logger.logObject.getter();
  HIDWORD(v113) = static os_log_type_t.info.getter();
  v48 = os_log_type_enabled(v47, BYTE4(v113));
  v115 = v46;
  v116 = v45;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v120 = v40;
    v50 = v49;
    v111 = swift_slowAlloc();
    v127[0] = v111;
    *v50 = 136315394;
    v51 = v44;
    v52 = v118;
    v46(v118, v41, v3);
    v53 = String.init<A>(reflecting:)();
    v112 = v32;
    v54 = v53;
    v110 = v47;
    v56 = v55;
    v57 = *(v51 + 8);
    v57(v41, v3);
    v58 = sub_10002741C(v54, v56, v127);

    *(v50 + 4) = v58;
    *(v50 + 12) = 2080;
    v59 = v50;
    v60 = v120;
    v46(v52, v120, v3);
    v61 = String.init<A>(reflecting:)();
    v63 = v62;
    v120 = v57;
    v57(v60, v3);
    v33 = &selRef_conversationManager_conversationScreenSharingChanged_forParticipant_;
    v64 = sub_10002741C(v61, v63, v127);
    v32 = v112;

    *(v59 + 14) = v64;
    v65 = v110;
    _os_log_impl(&_mh_execute_header, v110, BYTE4(v113), "Copy file (%s) to temp location (%s)", v59, 0x16u);
    swift_arrayDestroy();
    sub_10000F674();
    sub_100005F40(v59);

    v44 = v122;
  }

  else
  {

    v66 = *(v44 + 8);
    v66(v40, v3);
    v120 = v66;
    v66(v41, v3);
  }

  v67 = [v32 v33[209]];
  v68 = v124;
  URL._bridgeToObjectiveC()(v69);
  v71 = v70;
  URL._bridgeToObjectiveC()(v72);
  v74 = v73;
  v127[0] = 0;
  v75 = [v67 copyItemAtURL:v71 toURL:v73 error:v127];

  if (v75)
  {
    v76 = v127[0];
    v120(v121, v3);
    (*(v44 + 32))(v123, v125, v3);
    v77 = 0;
  }

  else
  {
    v78 = v127[0];
    v79 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v80 = v117;
    v81 = v115;
    v115(v117, v68, v3);
    v82 = v119;
    v81(v119, v125, v3);
    swift_errorRetain();
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    v124 = v83;
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      HIDWORD(v113) = v84;
      v86 = v85;
      v114 = swift_slowAlloc();
      v127[0] = v114;
      *v86 = 136315650;
      v87 = v118;
      v81(v118, v80, v3);
      v88 = String.init<A>(reflecting:)();
      v89 = v80;
      v90 = v88;
      v91 = v44;
      v93 = v92;
      v122 = v91 + 8;
      v94 = v120;
      v120(v89, v3);
      v95 = sub_10002741C(v90, v93, v127);

      *(v86 + 4) = v95;
      *(v86 + 12) = 2080;
      v96 = v119;
      v81(v87, v119, v3);
      v97 = String.init<A>(reflecting:)();
      v99 = v98;
      v94(v96, v3);
      v100 = sub_10002741C(v97, v99, v127);

      *(v86 + 14) = v100;
      *(v86 + 22) = 2080;
      v126 = v79;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v101 = String.init<A>(reflecting:)();
      v103 = sub_10002741C(v101, v102, v127);

      *(v86 + 24) = v103;
      sub_10000E6C8();
      _os_log_impl(v104, v105, v106, v107, v108, 0x20u);
      swift_arrayDestroy();
      sub_10000F674();
      sub_100005F40(v86);
    }

    else
    {

      v94 = v120;
      v120(v82, v3);
      v94(v80, v3);
    }

    v94(v125, v3);
    v94(v121, v3);
    v77 = 1;
  }

  sub_10000AF74(v123, v77, 1, v3);
  sub_100005EDC();
}

_BYTE *sub_10030547C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_100305558()
{
  result = qword_1006A4CF8;
  if (!qword_1006A4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4CF8);
  }

  return result;
}

_BYTE *sub_1003055AC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100305694()
{
  result = qword_1006A4D00;
  if (!qword_1006A4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4D00);
  }

  return result;
}

uint64_t sub_10030578C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1006A4D10);
  v4 = *(v2 + qword_1006A4D10);
  v5 = *(v2 + qword_1006A4D10 + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000051F8(v4, v5);
}

uint64_t sub_1003057AC(uint64_t a1)
{

  sub_10001AFD0(v3, a1);
  LOBYTE(a1) = v4;

  if ((a1 & 1) == 0)
  {
    v6 = *(v1 + qword_1006A4D10);
    if (v6)
    {
      v7 = *(v1 + qword_1006A4D10 + 8);

      v6(v8);

      return sub_1000051F8(v6, v7);
    }
  }

  return result;
}

uint64_t sub_100305850(uint64_t a1)
{
  v2 = *(v1 + qword_1006A4D68);
  *(v1 + qword_1006A4D68) = a1;
  sub_1003057AC(v2);
}

void sub_100305898()
{
  sub_100005EF4();
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v25 = v3;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = v6 - v5;
  v24 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 queue];

  v16 = swift_allocObject();
  memcpy((v16 + 16), v1, 0x48uLL);
  v27[4] = sub_100308250;
  v27[5] = v16;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v27[2] = v17;
  v27[3] = &unk_100626360;
  v18 = _Block_copy(v27);
  sub_10001C174(v1, v26);
  static DispatchQoS.unspecified.getter();
  v26[0] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  v22 = sub_10001000C(v19, v20, &unk_10057D6E0, v21);
  sub_100008B50(v26, v23, v22);
  sub_100007C38();
  _Block_release(v18);

  (*(v25 + 8))(v7, v2);
  (*(v9 + 8))(v13, v24);

  sub_100005EDC();
}

void sub_100305AF0(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 pushHostedCallsToDestination:*(a1 + 48)];
}

void sub_100305B60()
{
  sub_100005EF4();
  v0 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v22 = v1;
  __chkstk_darwin(v2);
  sub_100007FDC();
  v5 = v4 - v3;
  v21 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 queue];

  v24[4] = sub_100305D78;
  v24[5] = 0;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v24[2] = v14;
  v24[3] = &unk_100626310;
  v15 = _Block_copy(v24);
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  v19 = sub_10001000C(v16, v17, &unk_10057D6E0, v18);
  sub_100008B50(&v23, v20, v19);
  sub_100007C38();
  _Block_release(v15);

  (*(v22 + 8))(v5, v0);
  (*(v7 + 8))(v11, v21);
  sub_100005EDC();
}

void sub_100305D78()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 pullRelayingCallsFromClient];
}

void sub_100305DD8()
{
  sub_100005EF4();
  v1 = v0;
  v2 = *((swift_isaMask & *v0) + 0x58);
  v165 = *((swift_isaMask & *v0) + 0x50);
  v166 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100007FEC();
  v167 = v4;
  v6 = __chkstk_darwin(v5);
  v152 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v142 - v9;
  v149 = v11;
  __chkstk_darwin(v8);
  v164 = &v142 - v12;
  sub_10000D414();
  v13 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100007FDC();
  v19 = v18 - v17;
  v20 = *(v1 + qword_1006A4D40);
  *(v18 - v17) = v20;
  (*(v15 + 104))(v18 - v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v19, v13);
  if ((v20 & 1) == 0)
  {
    goto LABEL_79;
  }

  if (qword_1006A0AA0 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v22 = qword_1006BA380;
    v158 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v23 = swift_allocObject();
    v156 = xmmword_10057D690;
    *(v23 + 16) = xmmword_10057D690;
    v189[0] = sub_1003EE88C();
    v24 = type metadata accessor for Array();
    v25 = sub_10031E8A0(v189, v24);
    v153 = v1;
    v26 = v25;
    v28 = v27;

    *(v23 + 56) = &type metadata for String;
    v157 = sub_100009D88();
    *(v23 + 64) = v157;
    *(v23 + 32) = v26;
    *(v23 + 40) = v28;
    v29 = v153;
    v30 = static os_log_type_t.default.getter();
    v159 = v22;
    os_log(_:dso:log:type:_:)("Updating nearby device routes using devices: %@", 47, 2, &_mh_execute_header, v22, v30, v23);

    v174 = &_swiftEmptySetSingleton;
    v31 = *(v29 + qword_1006A4D28);

    v33 = v31(v32);

    v34 = *(v29 + qword_1006A4D30);

    v36 = v34(v35);

    v37 = *(v29 + qword_1006A4D80);
    v1 = &selRef_pseudonymPropertiesWithFeatureID_scopeID_expiryDurationInSeconds_;
    if (v37 == 1 && (v33 & 1) != 0 && (v36 & 1) != 0)
    {
      break;
    }

    v42 = v37 ^ 1;
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_10057D6A0;
    LOBYTE(v189[0]) = v42;
    v44 = String.init<A>(reflecting:)();
    AssociatedTypeWitness = v157;
    *(v43 + 56) = &type metadata for String;
    *(v43 + 64) = AssociatedTypeWitness;
    *(v43 + 32) = v44;
    *(v43 + 40) = v45;
    LOBYTE(v189[0]) = (v33 & 1) == 0;
    v46 = String.init<A>(reflecting:)();
    *(v43 + 96) = &type metadata for String;
    *(v43 + 104) = AssociatedTypeWitness;
    *(v43 + 72) = v46;
    *(v43 + 80) = v47;
    v48 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Current calls do not support nearby devices (%@) or device doesn't support primary calling (%@)", 95, 2, &_mh_execute_header, v159, v48, v43);

LABEL_9:
    v49 = *(v29 + qword_1006A4D70);
    if (!v49 || (v50 = [v49 v1[144]]) == 0)
    {
LABEL_23:
      sub_100305850(v174);
      sub_100005EDC();
      return;
    }

    v51 = 0;
    v52 = 1 << v174[32];
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v54 = v53 & *(v174 + 7);
    v55 = (v52 + 63) >> 6;
    while (v54)
    {
      v56 = v51;
LABEL_20:
      v57 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      if (*(*(v174 + 6) + 72 * (v57 | (v56 << 6)) + 40) == 1)
      {

        goto LABEL_23;
      }
    }

    while (1)
    {
      v56 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v56 >= v55)
      {
        v58 = v50;
        sub_1002BA89C(v58, v183);
        v184 = *v183;
        v185 = *&v183[16];
        v186 = *&v183[32];
        v187 = 1;
        *v188 = *&v183[41];
        *&v188[15] = *&v183[56];
        sub_10001C174(&v184, v173);
        sub_10001C1D0(v171, &v184);

        memcpy(v172, v171, 0x48uLL);
        sub_1002F6EC4(v172);
        *v173 = *v183;
        *&v173[16] = *&v183[16];
        *&v173[32] = *&v183[32];
        v173[40] = 1;
        *&v173[41] = *&v183[41];
        *&v173[56] = *&v183[56];
        sub_1002F6EC4(v173);
        goto LABEL_23;
      }

      v54 = *&v174[8 * v56 + 56];
      ++v51;
      if (v54)
      {
        v51 = v56;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    sub_100008134(&qword_1006A0AA0);
  }

  v38 = sub_1003EE88C();
  v39 = Array.startIndex.getter();
  v170 = v39;
  v40 = Array.endIndex.getter();
  v41 = v164;
  if (v39 == v40)
  {
LABEL_7:

    v1 = &selRef_pseudonymPropertiesWithFeatureID_scopeID_expiryDurationInSeconds_;
    goto LABEL_9;
  }

  v154 = (v29 + qword_1006A4D38);
  v155 = v10;
  v168 = (v167 + 16);
  v161 = (v167 + 32);
  v162 = qword_1006A4D78;
  v151 = qword_1006A4D58;
  v160 = v167 + 8;
  v147 = qword_1006A4D70;
  v163 = v38;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    v60 = *(v167 + 16);
    v60(v41, (v38 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v39), AssociatedTypeWitness);
LABEL_27:
    Array.formIndex(after:)(&v170);
    (*v161)(v10, v41, AssociatedTypeWitness);
    v61 = *(v29 + v162);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    if (v61 != 1 || (v63 = sub_10000B8B0(), v65 = v64(v63), v66) && (v67 = v65, v68 = v66, v69 = *v154, , v70 = v69(v67, v68), v41 = v164, v71 = v70, , , v71) && (v72 = [v71 canReceiveRelayedGFTCalls], v71, (v72 & 1) != 0))
    {
      v41 = AssociatedConformanceWitness + 16;
      v73 = *(AssociatedConformanceWitness + 16);
      v74 = sub_10000B8B0();
      v75 = v73(v74);
      if (v76 && (v77 = v75, v78 = v76, v79 = *v154, , v80 = v79(v77, v78), v29 = v153, v81 = v80, , , v81) && (v82 = [v81 canReceiveRelayedCalls], v81, (v82 & 1) == 0))
      {
        sub_100015F74();
        v10 = v155;
      }

      else
      {
        v83 = v73;
        v84 = sub_10000B8B0();
        v10 = v155;
        if (sub_1002BAA28(v84, v85))
        {
          v86 = sub_100035A64();
          *(v86 + 16) = v156;
          v87 = sub_10000A148();
          v89 = sub_10031E8A0(v87, v88);
          v90 = v157;
          *(v86 + 56) = &type metadata for String;
          *(v86 + 64) = v90;
          *(v86 + 32) = v89;
          *(v86 + 40) = v91;
          v92 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("filtering out device: %@", 24, 2, &_mh_execute_header, v159, v92, v86);
          goto LABEL_36;
        }

        sub_100009AB0(v29 + v151, &v184);
        v102 = sub_100307D30(&v184, AssociatedTypeWitness, AssociatedConformanceWitness);
        sub_100009B7C(&v184);
        if (v102)
        {
          v60(v152, v10, AssociatedTypeWitness);
          v103 = v102;
          sub_1002BAA98(v103, AssociatedTypeWitness, AssociatedConformanceWitness, &v175);
          v104 = v176;
          if (v176)
          {
            v105 = v175;
            v106 = v179;
            v172[0] = v177;
            v169[0] = *v180;
            *(v169 + 3) = *&v180[3];
            v171[0] = v182;
            if (v178 == 13)
            {
              sub_100015F74();
              v10 = v155;
              v107 = sub_10000A148();
              v108 = v104;
              v110 = v109;
              v111(v107);

              *&v184 = v105;
              *(&v184 + 1) = v108;
              v185 = v172[0];
              v186 = 13;
              v187 = v110;
              sub_100018194();
              sub_10000C708();
LABEL_45:
              v41 = v164;
              goto LABEL_46;
            }

            v122 = *(v29 + v147);
            v148 = v181;
            v146 = v103;
            if (!v122)
            {
              v132 = v178;
              v10 = v155;
              v41 = v164;
              goto LABEL_75;
            }

            v144 = v178;
            v145 = v175;
            v150 = v179;
            v123 = [v122 remoteDevice];
            if (!v123)
            {
              goto LABEL_65;
            }

            v10 = v123;
            v105 = v155;
            v124 = sub_10000B8B0();
            v125 = v83(v124);
            v127 = v126;
            v128 = [v10 uniqueIDOverride];
            if (v128)
            {
              v105 = v128;
              v143 = v125;
              v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v130 = v129;

              if (v127)
              {
                if (v130)
                {
                  v131 = v143 == v41 && v127 == v130;
                  if (!v131)
                  {
                    v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v105)
                    {
LABEL_70:
                      v132 = v144;
                      goto LABEL_74;
                    }

LABEL_65:
                    v132 = v144;
                    v133 = *(v29 + v147);
                    if (v133)
                    {
                      v134 = [v133 remoteDestination];
                      sub_10000FDAC();
                      v106 = v150;
                      if (v135)
                      {
                        v136 = v135;
                        sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
                        v137 = static NSObject.== infix(_:_:)();

                        v106 = v150;
                        v131 = (v137 & 1) == 0;
                        v105 = v145;
                        if (!v131)
                        {
                          v106 = 1;
                        }
                      }
                    }

                    else
                    {
                      sub_10000FDAC();
                      v106 = v150;
                    }

LABEL_75:
                    v150 = v106;
                    v189[0] = v105;
                    v189[1] = v104;
                    v190 = v172[0];
                    v191 = v132;
                    v192 = v106;
                    sub_100018194();
                    v193 = v148;
                    *(v138 + 56) = v171[0];
                    sub_10001C174(v189, v183);
                    sub_10001C1D0(v173, v189);

                    memcpy(v183, v173, sizeof(v183));
                    sub_1002F6EC4(v183);
                    sub_100015F74();
                    v139 = sub_10000A148();
                    v140(v139);
                    *&v184 = v105;
                    *(&v184 + 1) = v104;
                    v185 = v172[0];
                    v186 = v132;
                    v187 = v150;
                    sub_100018194();
                    sub_10000C708();
                    goto LABEL_46;
                  }

                  v132 = v144;

LABEL_73:

LABEL_74:
                  sub_10000FDAC();
                  goto LABEL_75;
                }

                goto LABEL_62;
              }

              if (!v130)
              {
                goto LABEL_70;
              }
            }

            else
            {
              if (!v127)
              {
                v132 = v144;
                goto LABEL_73;
              }

LABEL_62:
            }

            goto LABEL_65;
          }

          v115 = static os_log_type_t.error.getter();
          v116 = sub_100035A64();
          *(v116 + 16) = v156;
          v117 = sub_10000A148();
          v119 = sub_10031E8A0(v117, v118);
          v120 = v157;
          *(v116 + 56) = &type metadata for String;
          *(v116 + 64) = v120;
          *(v116 + 32) = v119;
          *(v116 + 40) = v121;
          os_log(_:dso:log:type:_:)("Could not convert NearbyDevice to NearbyDeviceRoute: %@", 55, 2, &_mh_execute_header, v159, v115, v116);

LABEL_36:
        }

        sub_100015F74();
      }

      v112 = sub_10000A148();
      v113(v112);
      goto LABEL_45;
    }

    v93 = sub_100035A64();
    *(v93 + 16) = v156;
    v94 = sub_10000A148();
    v96 = sub_10031E8A0(v94, v95);
    v97 = v157;
    *(v93 + 56) = &type metadata for String;
    *(v93 + 64) = v97;
    *(v93 + 32) = v96;
    *(v93 + 40) = v98;
    v99 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("filtering out device: %@ because it does not support GFT", 56, 2, &_mh_execute_header, v159, v99, v93);

    sub_100015F74();
    v100 = sub_10000A148();
    v101(v100);
LABEL_46:
    v38 = v163;
    v114 = Array.endIndex.getter();
    v39 = v170;
    if (v170 == v114)
    {
      goto LABEL_7;
    }
  }

  v141 = _ArrayBuffer._getElementSlowPath(_:)();
  if (v149 == 8)
  {
    *&v184 = v141;
    v60 = *v168;
    (*v168)(v41, &v184, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  __break(1u);
}

uint64_t sub_100306B40(uint64_t result)
{
  if (result)
  {
    swift_errorRetain();
    if (qword_1006A0AA0 != -1)
    {
      sub_100008134(&qword_1006A0AA0);
    }

    v1 = qword_1006BA380;
    v2 = static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10057D690;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v4 = String.init<A>(reflecting:)();
    v6 = v5;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_100009D88();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    os_log(_:dso:log:type:_:)("Error activating companion link client: %@", 42, 2, &_mh_execute_header, v1, v2, v3);
  }

  return result;
}

void sub_100306C68()
{
  sub_100005EF4();
  v2 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v3);
  sub_100007FDC();
  sub_10000F9FC();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v24 = v5;
  v25 = v4;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v8 = v7 - v6;
  v9 = [v2 relayClientTransport];
  if (v2)
  {
    v10 = v2;
    if ([v10 isHostedOnCurrentDevice] && objc_msgSend(v10, "hasRelaySupport:", 2))
    {
      v11 = [v10 provider];
      v12 = [v11 isSystemProvider];
    }

    else
    {
      v12 = 0;
    }

    v13 = [v10 needsConversationOrVideoRelaySupport];
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  *(v14 + 24) = v12;
  *(v14 + 25) = v13;
  *(v14 + 32) = v9;
  v26[4] = sub_10030823C;
  v26[5] = v14;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v26[2] = v15;
  v26[3] = &unk_1006262E8;
  v16 = _Block_copy(v26);
  v17 = v0;
  v18 = v9;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v19, v20, &unk_10057D6E0, v21);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  v22 = sub_100006884();
  v23(v22);
  (*(v24 + 8))(v8, v25);

  sub_100005EDC();
}

uint64_t sub_100306F58()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v4 = *(v14 - 8);
  __chkstk_darwin(v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 queue];

  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  aBlock[4] = sub_100308258;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_1006263B0;
  v10 = _Block_copy(aBlock);
  v11 = v0;
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v15 + 8))(v3, v1);
  (*(v4 + 8))(v6, v14);
}

void sub_100307238()
{
  sub_100005EF4();
  v3 = v2;
  type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_100007FDC();
  sub_10000F9FC();
  v5 = *(v0 + qword_1006A4D40);
  *v1 = v5;
  v6 = sub_100011364();
  v7(v6);
  v8 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  v9 = sub_100006884();
  v10(v9);
  if ((v5 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (qword_1006A0AA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v11 = qword_1006BA380;
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10057D690;
    v34 = sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
    *(v12 + 56) = v34;
    v33 = sub_100308148();
    *(v12 + 64) = v33;
    *(v12 + 32) = v3;
    v37 = v3;
    v13 = static os_log_type_t.default.getter();
    v35 = v11;
    os_log(_:dso:log:type:_:)("route: %@", 9, 2, &_mh_execute_header, v11, v13, v12);

    v36 = v0;
    v32 = qword_1006A4D68;
    v14 = *(v0 + qword_1006A4D68);
    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v0 = v16 & *(v14 + 56);
    v17 = (v15 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v18 = 0;
    if (v0)
    {
      break;
    }

LABEL_7:
    while (1)
    {
      v3 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v3 >= v17)
      {

        v27 = static os_log_type_t.error.getter();
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_10057D6A0;
        *(v28 + 56) = v34;
        *(v28 + 64) = v33;
        *(v28 + 32) = v37;
        v29 = *(v36 + v32);
        *(v28 + 96) = sub_10026D814(&qword_1006A4E18, &qword_10057FE58);
        *(v28 + 104) = sub_10001000C(&unk_1006A4E20, &qword_1006A4E18, &qword_10057FE58, &protocol conformance descriptor for Set<A>);
        *(v28 + 72) = v29;
        v30 = v37;

        os_log(_:dso:log:type:_:)("Could not find route to pick for %@. All nearby device routes: %@", 65, 2, &_mh_execute_header, v35, v27, v28);

        goto LABEL_21;
      }

      v0 = *(v14 + 56 + 8 * v3);
      ++v18;
      if (v0)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_100008134(&qword_1006A0AA0);
  }

  while (1)
  {
    v3 = v18;
LABEL_10:
    memcpy(v39, (*(v14 + 48) + 72 * (__clz(__rbit64(v0)) | (v3 << 6))), 0x48uLL);
    v19 = v39[0];
    v20 = v39[1];
    sub_10001C174(v39, &v38);
    v21 = [v37 uniqueIdentifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v19 == v22 && v20 == v24)
    {

      goto LABEL_20;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      break;
    }

    v0 &= v0 - 1;
    sub_1002F6EC4(v39);
    v18 = v3;
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_20:

  v31 = *(v36 + qword_1006A4D18);

  v31(v39);

  sub_1002F6EC4(v39);
LABEL_21:
  sub_100005EDC();
}

void sub_10030768C()
{
  sub_100005EF4();
  v46 = v1;
  v44 = v2;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v51 = v4;
  v52 = v3;
  __chkstk_darwin(v3);
  sub_100007FDC();
  v49 = v6 - v5;
  sub_10000D414();
  v50 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v48 = v7;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v47 = v10 - v9;
  sub_10000D414();
  v11 = type metadata accessor for DispatchTimeInterval();
  sub_100007FEC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100007FDC();
  v17 = (v16 - v15);
  v45 = type metadata accessor for DispatchWallTime();
  sub_100007FEC();
  v19 = v18;
  v21 = __chkstk_darwin(v20);
  v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v43 - v24;
  sub_10000D414();
  v26 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_100007FDC();
  v32 = v31 - v30;
  v33 = *(v0 + qword_1006A4D40);
  *(v31 - v30) = v33;
  (*(v28 + 104))(v31 - v30, enum case for DispatchPredicate.onQueue(_:), v26);
  v43[1] = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  (*(v28 + 8))(v32, v26);
  if (v33)
  {
    static DispatchWallTime.now()();
    *v17 = TUTransferTimeout();
    (*(v13 + 104))(v17, enum case for DispatchTimeInterval.seconds(_:), v11);
    + infix(_:_:)();
    (*(v13 + 8))(v17, v11);
    v43[0] = *(v19 + 8);
    v34 = v45;
    (v43[0])(v23, v45);
    v54[4] = v44;
    v54[5] = v46;
    sub_100009FE4();
    sub_1000081D4(COERCE_DOUBLE(1107296256));
    v54[2] = v35;
    v54[3] = &unk_100626298;
    v36 = _Block_copy(v54);

    v37 = v47;
    static DispatchQoS.unspecified.getter();
    v53 = _swiftEmptyArrayStorage;
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10000826C();
    sub_10001000C(v38, v39, &unk_10057D6E0, v40);
    v41 = v49;
    v42 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(wallDeadline:qos:flags:execute:)();
    _Block_release(v36);
    (*(v51 + 8))(v41, v42);
    (*(v48 + 8))(v37, v50);
    (v43[0])(v25, v34);

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100307AFC()
{
  type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  __chkstk_darwin(v2);
  sub_100007FDC();
  sub_10000F9FC();
  v3 = *(v0 + qword_1006A4D40);
  *v1 = v3;
  v4 = sub_100011364();
  v5(v4);
  v6 = v3;
  LOBYTE(v3) = _dispatchPreconditionTest(_:)();
  v7 = sub_100006884();
  v8(v7);
  if ((v3 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_1006A0AA0 != -1)
  {
LABEL_5:
    sub_100008134(&qword_1006A0AA0);
  }

  v9 = qword_1006BA380;
  v10 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("", 0, 2, &_mh_execute_header, v9, v10, _swiftEmptyArrayStorage);
  v11 = *(v0 + qword_1006A4D20);

  v11(v12);
}

void sub_100307C68(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + qword_1006A4D48) "callContainer")];
  swift_unknownObjectRelease();
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v4 = v2;
      v3 = v1;
      v2 = v4;
    }
  }

  else
  {
    v2 = 0;
  }

  v5 = v2;
  sub_100306C68();
}

id sub_100307D30(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 16))(a2, a3);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = a1[3];
    v11 = a1[4];
    sub_100009B14(a1, v10);
    v12 = (*(v11 + 8))(v8, v9, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(a3 + 24))(a2, a3);
  if (v14)
  {
    v15 = v14;
    if (v12)
    {
    }

    else
    {
      v16 = v13;
      sub_100006AF0(0, &qword_1006A5C40, IDSDestination_ptr);
      return sub_10001BA24(v16, v15);
    }
  }

  return v12;
}

void sub_100307E5C(uint64_t a1, char a2, char a3, void *a4)
{
  *(a1 + qword_1006A4D80) = a2;
  *(a1 + qword_1006A4D78) = a3;
  v6 = qword_1006A4D70;
  v7 = *(a1 + qword_1006A4D70);
  if (v7)
  {
    if (a4)
    {
      sub_100006AF0(0, &unk_1006A4E30, off_100616638);
      v8 = v7;
      v9 = a4;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        goto LABEL_9;
      }
    }
  }

  else if (!a4)
  {
    goto LABEL_9;
  }

  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v11 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10057D690;
  v13 = sub_100291244(a4);
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100009D88();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v16 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updating activeRelayClientTransport to %@", 41, 2, &_mh_execute_header, v11, v16, v12);

  v17 = *(a1 + v6);
  *(a1 + v6) = a4;
  v18 = a4;

LABEL_9:
  sub_100305DD8();
}

void sub_100308034(uint64_t a1)
{
  sub_1000051F8(*(a1 + qword_1006A4D10), *(a1 + qword_1006A4D10 + 8));
  sub_100015C8C();
  sub_100015C8C();
  sub_100015C8C();
  sub_100015C8C();
  sub_100015C8C();

  swift_unknownObjectRelease();
  sub_100009B7C((a1 + qword_1006A4D58));

  v2 = *(a1 + qword_1006A4D70);
}

unint64_t sub_100308148()
{
  result = qword_1006A4E10;
  if (!qword_1006A4E10)
  {
    sub_100006AF0(255, &qword_1006A2C28, TURoute_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4E10);
  }

  return result;
}

uint64_t sub_1003081B4(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      return _HashTable.occupiedBucket(after:)();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100308274(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(a2 + 56) + ((v7 << 9) | (8 * v8))) == result)
    {
      return 1;
    }
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return 0;
    }

    v5 = *(a2 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_100308310()
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA5F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "voicemail timeout block running", v3, 2u);
  }

  v4 = [objc_opt_self() sharedInstance];
  [v4 disconnectAllCalls];
}

uint64_t sub_100308434()
{
  if (qword_1006A0A10 != -1)
  {
    swift_once();
  }

  v0 = qword_1006A4C38;
  if (qword_1006A0A18 != -1)
  {
    swift_once();
  }

  result = v0 + qword_1006A4C40;
  if (__OFADD__(v0, qword_1006A4C40))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100308500()
{
  v1 = (v0 + OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource);
  sub_100005298(v0 + OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource, v4);
  sub_100009B14(v1, v1[3]);
  sub_100434ED8();
  return v2 & 1;
}

uint64_t sub_100308588()
{
  v1 = (v0 + OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource);
  sub_100005298(v0 + OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource, v3);
  sub_100009B14(v1, v1[3]);
  return sub_1004353B4();
}

id sub_1003085D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000AF9C(v8, qword_1006BA5F8);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "creating answeringMachine with configuration: %@", v12, 0xCu);
    sub_100009A04(v13, &unk_1006A2630, &qword_10057CB40);
  }

  v15 = sub_100006AF0(0, &qword_1006A5368, AVCAnsweringMachine_ptr);
  swift_getObjectType();
  v16 = a3;
  v17 = v9;
  swift_unknownObjectRetain();
  result = sub_100317424(v17, a2, a3, v15);
  if (result)
  {
    v19 = &off_1006263D8;
  }

  else
  {
    v15 = 0;
    v19 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  *a4 = result;
  a4[3] = v15;
  a4[4] = v19;
  return result;
}

void sub_1003087A4()
{
  sub_100005EF4();
  v2 = v0;
  v188 = v3;
  v192 = v4;
  v185 = type metadata accessor for Locale();
  sub_100007FEC();
  v184 = v5;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v183 = v8 - v7;
  v9 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v10 = sub_100007BF0(v9);
  __chkstk_darwin(v10);
  sub_10000F4E8();
  v186 = v11;
  sub_100006838();
  v13 = __chkstk_darwin(v12);
  v15 = &v179 - v14;
  __chkstk_darwin(v13);
  v17 = &v179 - v16;
  v18 = type metadata accessor for URL();
  sub_100007FEC();
  v191 = v19;
  __chkstk_darwin(v20);
  sub_10000F4E8();
  v187 = v21;
  sub_100006838();
  __chkstk_darwin(v22);
  sub_10000C1C4();
  v189 = v23;
  v24 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v24);
  sub_100006688();
  __chkstk_darwin(v25);
  sub_10000B8BC();
  v26 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_10000E4F4();
  v30 = *(v0 + OBJC_IVAR___CSDAnsweringMachineController_queue);
  *v1 = v30;
  (*(v28 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v26);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  (*(v28 + 8))(v1, v26);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_66;
  }

  v190 = *(v0 + OBJC_IVAR___CSDAnsweringMachineController_featureFlags);
  if ([v190 receptionistEnabled])
  {
    if ((v32 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState, (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v34 = Strong, v35 = [Strong receptionistState], v34, v35 == 3) || (v36 = swift_unknownObjectWeakLoadStrong()) != 0 && (v37 = v36, v38 = objc_msgSend(v36, "receptionistState"), v37, v38 == 4))
    {
      v39 = *(v0 + v32);
      v200 = 0;
      v198 = 0u;
      v199 = 0u;
      sub_100008D34(v39 + 16, &v194);

      sub_1000432B0(&v198, v39 + 16, &qword_1006A52D0, &unk_100580040);
      swift_endAccess();
    }
  }

  v40 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  v41 = *(v0 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  sub_100005298(v41 + 16, &v197);
  sub_10003A220(v41 + 16, &v198, &qword_1006A52D0, &unk_100580040);
  v42 = *(&v199 + 1);
  sub_100009A04(&v198, &qword_1006A52D0, &unk_100580040);
  if (v42)
  {
    if (qword_1006A0B28 == -1)
    {
LABEL_10:
      v43 = type metadata accessor for Logger();
      sub_1000075F0(v43, qword_1006BA5F8);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (sub_10000A648(v45))
      {
        v46 = sub_100006DC4();
        sub_100008944(v46);
        sub_10001628C();
        _os_log_impl(v47, v48, v49, v50, v51, 2u);
        sub_10000E668();
      }

      goto LABEL_64;
    }

LABEL_66:
    sub_100008018();
    swift_once();
    goto LABEL_10;
  }

  v52 = [objc_allocWithZone(AVCAnsweringMachineConfiguration) init];
  v53 = [v190 receptionistEnabled];
  v182 = v40;
  if (v53)
  {
    v54 = v192;
    if ([v192 isKnownCaller] && objc_msgSend(v54, "receptionistState") == 1)
    {
      v55 = v18;
      v56 = 0;
    }

    else
    {
      v55 = v18;
      v56 = sub_100059674([v54 receptionistState], &off_1006208A8);
    }

    [v52 setIsMessageCaptioningEnabled:v56];
    v59 = [v54 uniqueProxyIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    v60 = type metadata accessor for UUID();
    isa = 0;
    if (sub_100015468(v0, 1, v60) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v62 = sub_10000BA34();
      v63(v62);
    }

    [v52 setReportingSamplingUUID:isa];

    v58 = v192;
    if ([v192 receptionistState])
    {
      v64 = 3;
    }

    else
    {
      v64 = 1;
    }

    [v52 setUsage:v64];
    v18 = v55;
    v57 = v191;
  }

  else
  {
    [v52 setIsMessageCaptioningEnabled:1];
    v57 = v191;
    v58 = v192;
  }

  [v52 setIsMessageRecordingEnabled:{objc_msgSend(v52, "isMessageCaptioningEnabled")}];
  sub_10003A220(v188, v15, &unk_1006A52C0, &unk_10057D930);
  v65 = sub_100015468(v15, 1, v18);
  if (v65 == 1)
  {
    v0 += OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource;
    sub_100022CBC(v65, &v196);
    sub_10000D420();
    sub_100437B94();
    if (sub_100015468(v15, 1, v18) != 1)
    {
      sub_100009A04(v15, &unk_1006A52C0, &unk_10057D930);
    }
  }

  else
  {
    (*(v57 + 32))(v17, v15, v18);
    sub_100007C20();
    sub_10000AF74(v66, v67, v68, v18);
  }

  if (sub_100015468(v17, 1, v18) == 1)
  {
    sub_100009A04(v17, &unk_1006A52C0, &unk_10057D930);
    if (qword_1006A0B28 != -1)
    {
      sub_100008018();
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_1000075F0(v69, qword_1006BA5F8);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (sub_10000A648(v71))
    {
      v72 = sub_100006DC4();
      sub_100008944(v72);
      sub_10001628C();
      _os_log_impl(v73, v74, v75, v76, v77, 2u);
      sub_10000E668();
    }
  }

  else
  {
    v181 = v31;
    v78 = v189;
    (*(v57 + 32))(v189, v17, v18);
    if (qword_1006A0B28 != -1)
    {
      sub_100008018();
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_1000075F0(v79, qword_1006BA5F8);
    v80 = *(v57 + 16);
    v81 = v187;
    v180 = v57 + 16;
    v179 = v80;
    v80(v187, v78, v18);
    v188 = v0;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = sub_100005274();
      v85 = sub_100005E84();
      *&v198 = v85;
      *v84 = 136315138;
      sub_100011374();
      sub_10031699C(v86, v87, &protocol conformance descriptor for URL);
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v18;
      v91 = v90;
      v92 = v81;
      v93 = *(v191 + 8);
      v93(v92, v89);
      v94 = sub_10002741C(v88, v91, &v198);
      v18 = v89;

      *(v84 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v82, v83, "greeting = %s", v84, 0xCu);
      sub_100009B7C(v85);
      v95 = v85;
      v58 = v192;
      sub_100005F40(v95);
      v96 = v84;
      v78 = v189;
      sub_100005F40(v96);
    }

    else
    {

      v98 = v81;
      v93 = *(v57 + 8);
      v93(v98, v18);
    }

    URL._bridgeToObjectiveC()(v97);
    v100 = v99;
    [v52 setAnnouncementAsset:v99];

    sub_1002A8978(v52, v58);
    v101 = v52;
    v102 = v188;
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.default.getter();
    if (sub_10000BB44(v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 16777472;
      *(v105 + 4) = [v101 source];

      sub_1000079AC();
      _os_log_impl(v106, v107, v108, v109, v110, 5u);
      v111 = v105;
      v58 = v192;
      sub_100005F40(v111);
    }

    else
    {

      v103 = v101;
    }

    v112 = *(v2 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineCreationBlock);

    v112(&v194, v101, v2, v181);

    if (v195)
    {
      sub_10002F0C8(&v194, &v198);
      v113 = v182;
      v114 = *(v2 + v182);
      sub_100009AB0(&v198, &v194);
      sub_100008D34(v114 + 16, &v193);

      sub_1000432B0(&v194, v114 + 16, &qword_1006A52D0, &unk_100580040);
      swift_endAccess();

      v115 = swift_unknownObjectWeakAssign();
      v116 = *(v2 + v113);
      sub_100022CBC(v115, &v194);
      sub_10000D420();

      sub_100438D58(v58, v117, v118, v119, v120, v121, v122, v123, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190);
      v125 = v124;
      v127 = v126;
      v128 = (v116 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeHandle);
      *v128 = v129;
      v128[1] = v130;

      v131 = (v116 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeLabelID);
      *v131 = v125;
      v131[1] = v127;
      v132 = v192;

      if (([v132 isRTT] & 1) != 0 || objc_msgSend(v132, "isTTY"))
      {
        if (![v190 receptionistEnabled])
        {
          goto LABEL_55;
        }

        v133 = [v132 lastReceptionistMessage];
        v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v136 = v135;

        v137 = HIBYTE(v136) & 0xF;
        v138 = v134 & 0xFFFFFFFFFFFFLL;
        v139 = v192;
        if ((v136 & 0x2000000000000000) == 0)
        {
          v137 = v138;
        }

        if (v137)
        {
          if (qword_1006A0BC8 != -1)
          {
            sub_10003DB74(&qword_1006A0BC8);
          }

          v140 = [v139 lastReceptionistMessage];
          v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v143 = v142;

          v144 = [v192 callUUID];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100317550();

          v145 = v141;
          v132 = v192;
          sub_1003D3158(v145, v143, v102, v93);
        }

        else
        {
LABEL_55:
          v190 = v93;
          v153 = v189;
          if (qword_1006A0BC8 != -1)
          {
            sub_10003DB74(&qword_1006A0BC8);
          }

          v154 = v186;
          v179(v186, v153, v18);
          sub_100007C20();
          sub_10000AF74(v155, v156, v157, v18);
          v158 = v183;
          static Locale.current.getter();
          v159 = Locale.identifier.getter();
          v161 = v160;
          (*(v184 + 8))(v158, v185);
          v162 = v192;
          v163 = [v192 callUUID];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100317550();

          sub_1003D2DEC(v154, v159, v161, v102, v93);
          v132 = v162;

          sub_100009A04(v154, &unk_1006A52C0, &unk_10057D930);
          v93 = v190;
        }
      }

      v164 = v132;
      v165 = v200;
      sub_100009B14(&v198, *(&v199 + 1));
      v166 = sub_100005EC4();
      [v164 setAnsweringMachineStreamToken:{v167(v166, v165)}];
      v168 = v200;
      sub_100009B14(&v198, *(&v199 + 1));
      v169 = sub_100005EC4();
      v170(v169, v168);
      v171 = v164;
      v172 = Logger.logObject.getter();
      LOBYTE(v168) = static os_log_type_t.default.getter();
      if (sub_10000BB44(v168))
      {
        v173 = sub_100005274();
        *v173 = 134217984;
        *(v173 + 4) = [v171 answeringMachineStreamToken];

        sub_10000FBFC();
        _os_log_impl(v174, v175, v176, v177, v173, 0xCu);
        sub_100005F40(v173);
        v171 = v101;
      }

      else
      {

        v172 = v101;
      }

      v178 = v189;

      v93(v178, v18);
      sub_100009B7C(&v198);
    }

    else
    {
      sub_100009A04(&v194, &qword_1006A52D0, &unk_100580040);
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.default.getter();
      if (sub_10000BB44(v147))
      {
        *sub_100006DC4() = 0;
        sub_1000079AC();
        _os_log_impl(v148, v149, v150, v151, v152, 2u);
        sub_100006868();
      }

      else
      {
      }

      v93(v78, v18);
    }
  }

LABEL_64:
  sub_100005EDC();
}

void sub_100309760()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Locale();
  v6 = sub_100007BF0(v5);
  __chkstk_darwin(v6);
  sub_100007FDC();
  v20 = [objc_allocWithZone(type metadata accessor for CallCenterObserver()) init];
  v7 = type metadata accessor for GreetingsDataSource(0);
  v8 = [v3 queue];
  v9 = v1;
  static Locale.current.getter();
  sub_1004341EC();
  v11 = v10;
  v12 = type metadata accessor for AnsweringMachineState(0);
  v13 = sub_1000076B4(v12);
  sub_10003A308();
  v14 = [objc_allocWithZone(CHManager) init];
  v15 = [objc_allocWithZone(TUFeatureFlags) init];
  v21[3] = v7;
  v21[4] = &off_1006305D8;
  v21[0] = v11;
  v16 = objc_allocWithZone(ObjectType);
  v17 = sub_10001BDB8(v21, v7);
  __chkstk_darwin(v17);
  sub_10000E598();
  (*(v18 + 16))(&selRef_fetchCurrentProcessStatesForBundleIdentifier_);
  v19 = v11;
  sub_100316F50(v20, v3, "fetchCurrentProcessStatesForBundleIdentifier:", v13, v14, v15, v16);

  sub_100009B7C(v21);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  sub_100005EDC();
}