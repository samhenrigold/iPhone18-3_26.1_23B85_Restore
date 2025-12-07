unint64_t sub_10002A1C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100015140(&qword_10007ECA0, &qword_10005ACC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002A514(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100040750(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10002A3E4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10002A2D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100015140(&qword_10007EC98, &qword_10005ACB8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100040750(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_10002A3E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10002A448(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015140(&qword_10007E790, &qword_10005BD10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A514(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015140(&qword_10007ECA8, &qword_10005ACC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A588(uint64_t a1, uint64_t a2, void *a3, void *a4, double *a5)
{
  v39 = a5;
  v44 = a2;
  v45 = a3;
  v7 = sub_100015140(&qword_10007ED10, &unk_10005ACD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for ScoredFeedItem();
  v41 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MergedFeedItemSequence();
  v14 = __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v37 - v17;
  v38 = v19;
  (*(v19 + 16))(v16, a1, v13);
  sub_10002AA4C(&qword_10007ED18, &protocol conformance descriptor for MergedFeedItemSequence);
  dispatch thunk of Sequence.makeIterator()();
  v20 = a4;
  swift_beginAccess();
  swift_beginAccess();
  v21 = objc_autoreleasePoolPush();
  v22 = sub_10002AA4C(&unk_10007ED20, &protocol conformance descriptor for MergedFeedItemSequence);
  v46 = v18;
  v47 = v13;
  v43 = v22;
  dispatch thunk of IteratorProtocol.next()();
  v23 = v41;
  v42 = *(v41 + 48);
  if (v42(v9, 1, v10) == 1)
  {
LABEL_2:
    sub_10002AA90(v9);
    objc_autoreleasePoolPop(v21);
    return (*(v38 + 8))(v46, v47);
  }

  else
  {
    v26 = *(v23 + 32);
    v25 = v23 + 32;
    v40 = v20;
    v41 = v26;
    v27 = (v25 - 24);
    while (1)
    {
      v28 = v25;
      (v41)(v12, v9, v10);
      v29 = ScoredFeedItem.feedItem.getter();
      ScoredFeedItem.score.getter();
      [v29 applyTabiScore:NDManagedFeedItemPoolOptions.configurationSet.getter() configurationSet:v30];

      v31 = ScoredFeedItem.feedItem.getter();
      v48 = 0;
      LODWORD(v29) = [v45 write:v31 error:&v48];

      v32 = v48;
      if (!v29)
      {
        break;
      }

      if (__OFSUB__(*v40, 1))
      {
        __break(1u);
      }

      --*v40;
      v33 = v32;
      v34 = ScoredFeedItem.feedItem.getter();
      v35 = [v34 isEvergreen];

      if (v35)
      {
        *v39 = *v39 + -1.0;
      }

      (*v27)(v12, v10);
      objc_autoreleasePoolPop(v21);
      v21 = objc_autoreleasePoolPush();
      dispatch thunk of IteratorProtocol.next()();
      v25 = v28;
      if (v42(v9, 1, v10) == 1)
      {
        goto LABEL_2;
      }
    }

    v36 = v48;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*v27)(v12, v10);
    objc_autoreleasePoolPop(v21);
    return (*(v38 + 8))(v46, v47);
  }
}

uint64_t sub_10002AA4C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MergedFeedItemSequence();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002AA90(uint64_t a1)
{
  v2 = sub_100015140(&qword_10007ED10, &unk_10005ACD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_10002AB00()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10002AB6C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10002ABAC()
{
  v1 = 0x74696D696CLL;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_10002AC00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10003012C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10002AC40(uint64_t a1)
{
  v2 = sub_100032E24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002AC7C(uint64_t a1)
{
  v2 = sub_100032E24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002ACB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v12 = a4;
  v7 = sub_100015140(&qword_10007EED8, &qword_10005B158);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_100002288(a1, a1[3]);
  sub_100032E24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

void sub_10002AE78(uint64_t *a1@<X8>, void *a2@<X0>)
{
  v7 = sub_10003023C(a2);
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
    *(a1 + 3) = v7;
  }
}

uint64_t sub_10002AED0(void *a1)
{
  v3 = v1;
  v5 = sub_100015140(&qword_10007EE98, &qword_10005AFB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100002288(a1, a1[3]);
  sub_100032920();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 48);
    v10[15] = 4;
    sub_100015140(&qword_10007EE80, &qword_10005AFA8);
    sub_100032A5C(&qword_10007EEA0, sub_100032AD4, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10002B13C()
{
  v1 = *v0;
  v2 = 0x6B6E615278616DLL;
  v3 = 0x65726F63536E696DLL;
  if (v1 != 3)
  {
    v3 = 0x694C656372756F73;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000016;
  if (*v0)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10002B1E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100030724(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10002B218(uint64_t a1)
{
  v2 = sub_100032920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B254(uint64_t a1)
{
  v2 = sub_100032920();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10002B290@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100030450(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_10002B2F8()
{
  v1[50] = v0;
  v2 = type metadata accessor for Date();
  v1[51] = v2;
  v1[52] = *(v2 - 8);
  v1[53] = swift_task_alloc();
  v3 = type metadata accessor for NotificationHistoryItem();
  v1[54] = v3;
  v1[55] = *(v3 - 8);
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  sub_100015140(&qword_10007EDE8, &qword_10005AD68);
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[62] = v4;
  *v4 = v1;
  v4[1] = sub_10002B4AC;

  return sub_10002CE0C(v0);
}

uint64_t sub_10002B4AC()
{
  v2 = *v1;
  *(v2 + 504) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10002B648, 0, 0);
  }
}

uint64_t sub_10002B648()
{
  v1 = [objc_msgSend(*(*(v0 + 400) + 16) "appConfigurationManager")];
  swift_unknownObjectRelease();
  if (([v1 respondsToSelector:"delayedNotificationVendorConfigurationData"] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v2 = [v1 delayedNotificationVendorConfigurationData];
  swift_unknownObjectRelease();
  if (!v2)
  {
LABEL_6:
    sub_10002DD10();
    swift_allocError();
    swift_willThrow();
    goto LABEL_7;
  }

  v3 = *(v0 + 504);
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(v0 + 512) = v4;
  *(v0 + 520) = v6;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10002DD64();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {
    sub_1000153DC(v4, v6);

LABEL_7:

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 400);

  v10 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v10;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 64) = *(v0 + 120);
  v11 = FCNotificationsLog;
  *(v0 + 528) = sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10005A4F0;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0xE000000000000000;
  v13 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v13;
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = *(v0 + 64);
  v14 = v11;
  _print_unlocked<A, B>(_:_:)();
  v15 = *(v0 + 344);
  v16 = *(v0 + 352);
  *(v12 + 56) = &type metadata for String;
  v17 = sub_10001528C();
  *(v0 + 536) = v17;
  *(v12 + 64) = v17;
  *(v12 + 32) = v15;
  *(v12 + 40) = v16;
  v18 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Fetching notification pool with configuration: %{public}@", 57, 2, &_mh_execute_header, v14, v18, v12);

  v19 = v9[7];
  v20 = v9[8];
  sub_100002288(v9 + 4, v19);
  v21 = swift_task_alloc();
  *(v0 + 544) = v21;
  *v21 = v0;
  v21[1] = sub_10002B9D8;

  return dispatch thunk of NotificationHistoryType.recentHistoryItems()(v0 + 184, v19, v20);
}

uint64_t sub_10002B9D8()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    sub_10002DDB8(v2 + 16);
    v3 = sub_10002CC58;
  }

  else
  {
    v3 = sub_10002BAF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002BAF4()
{
  v132 = v0;
  v1 = v0[55];
  v2 = v0[52];
  v0[45] = &_swiftEmptyDictionarySingleton;
  v3 = v0[26];
  v4 = sub_100002288(v0 + 23, v3);
  v5 = *(v3 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v3);
  v0[31] = swift_getAssociatedTypeWitness();
  v0[32] = swift_getAssociatedConformanceWitness();
  sub_10002377C(v0 + 28);
  dispatch thunk of Sequence.makeIterator()();

  v7 = 0;
  v130 = (v1 + 48);
  v127 = (v2 + 8);
  v128 = (v1 + 32);
  v126 = (v1 + 8);
  v8 = v0 + 45;
  while (1)
  {
    v0[70] = v7;
    v9 = v0[61];
    v10 = v0[54];
    sub_100017518((v0 + 28), v0[31]);
    dispatch thunk of IteratorProtocol.next()();
    v129 = *v130;
    if ((*v130)(v9, 1, v10) == 1)
    {
      goto LABEL_17;
    }

    v11 = v0[53];
    v12 = v0[51];
    (*v128)(v0[58], v0[61], v0[54]);
    NotificationHistoryItem.notifiedAt.getter();
    Date.timeIntervalSinceNow.getter();
    v14 = v13;
    (*v127)(v11, v12);
    if (v14 <= -86400.0)
    {
      break;
    }

    v15 = NotificationHistoryItem.channelID.getter();
    v17 = v16;
    sub_10002FFD8(v7, 0);
    v18 = *v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v131[0] = v18;
    v20 = sub_100040750(v15, v17);
    v28 = v18[2];
    v29 = (v21 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_57;
    }

    v32 = v21;
    if (v18[3] < v31)
    {
      sub_100040DEC(v31, isUniquelyReferenced_nonNull_native);
      v18 = v131[0];
      v20 = sub_100040750(v15, v17);
      if ((v32 & 1) != (v21 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_9:
      *v8 = v18;
      if (v32)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v34 = v8;
    v35 = v20;
    sub_100042018();
    v20 = v35;
    v8 = v34;
    v18 = v131[0];
    *v34 = v131[0];
    if (v32)
    {
LABEL_10:
      v33 = v20;

      v20 = v33;
      goto LABEL_14;
    }

LABEL_12:
    v18[(v20 >> 6) + 8] |= 1 << v20;
    v36 = (v18[6] + 16 * v20);
    *v36 = v15;
    v36[1] = v17;
    *(v18[7] + 8 * v20) = 0;
    v37 = v18[2];
    v30 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v30)
    {
      goto LABEL_59;
    }

    v18[2] = v38;
LABEL_14:
    v39 = v18[7];
    v40 = *(v39 + 8 * v20);
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_58;
    }

    v42 = v0[58];
    v43 = v0[54];
    *(v39 + 8 * v20) = v41;
    (*v126)(v42, v43);
    v7 = sub_100032F94;
  }

  (*v126)(v0[58], v0[54]);
LABEL_17:
  v119 = v8;
  v44 = v0[60];
  v45 = v0[54];
  sub_10001653C(v0 + 28);
  v0[46] = &_swiftEmptySetSingleton;
  v46 = v0[26];
  v47 = sub_100002288(v0 + 23, v46);
  v48 = *(v46 - 8);
  v49 = swift_task_alloc();
  (*(v48 + 16))(v49, v47, v46);
  v0[36] = swift_getAssociatedTypeWitness();
  v0[37] = swift_getAssociatedConformanceWitness();
  sub_10002377C(v0 + 33);
  dispatch thunk of Sequence.makeIterator()();

  sub_100017518((v0 + 33), v0[36]);
  dispatch thunk of IteratorProtocol.next()();
  if (v129(v44, 1, v45) != 1)
  {
    v50 = *v128;
    while (1)
    {
      v51 = v0[53];
      v52 = v0[51];
      v50(v0[57], v0[60], v0[54]);
      NotificationHistoryItem.notifiedAt.getter();
      Date.timeIntervalSinceNow.getter();
      v54 = v53;
      (*v127)(v51, v52);
      if (v54 <= -v0[2])
      {
        break;
      }

      v55 = v0[60];
      v56 = v0[57];
      v57 = v0[54];
      v58 = NotificationHistoryItem.clusterID.getter();
      sub_10002E170(v131, v58, v59);

      (*v126)(v56, v57);
      sub_100017518((v0 + 33), v0[36]);
      dispatch thunk of IteratorProtocol.next()();
      if (v129(v55, 1, v57) == 1)
      {
        goto LABEL_23;
      }
    }

    (*v126)(v0[57], v0[54]);
  }

LABEL_23:
  sub_10001653C(v0 + 33);
  v0[47] = &_swiftEmptySetSingleton;
  v60 = v0[8];
  v122 = *(v60 + 16);
  if (v122)
  {
    v121 = v60 + 32;

    v61 = 0;
    v62 = v0 + 47;
    v120 = v60;
    while (v61 < *(v60 + 16))
    {
      v67 = (v121 + 32 * v61);
      v68 = *v67;
      v69 = *(v67 + 1);
      v70 = *(v67 + 2);
      v71 = v67[3];
      swift_bridgeObjectRetain_n();
      v72 = String._bridgeToObjectiveC()();

      v73 = FCNotificationSourceFromString();

      if (v73)
      {
        v124 = v69;
        v125 = v70;
        v123 = v61;
        v74 = v0[59];
        v75 = v0[54];
        v76 = v0[26];
        sub_100002288(v0 + 23, v76);
        v77 = *(v76 - 8);
        swift_task_alloc();
        (*(v77 + 16))();
        v0[41] = swift_getAssociatedTypeWitness();
        v0[42] = swift_getAssociatedConformanceWitness();
        sub_10002377C(v0 + 38);
        dispatch thunk of Sequence.makeIterator()();

        sub_100017518((v0 + 38), v0[41]);
        dispatch thunk of IteratorProtocol.next()();
        v78 = 0;
        if (v129(v74, 1, v75) != 1)
        {
          v78 = 0;
          v79 = *v128;
          v80 = v68;
          while (1)
          {
            v83 = v0[53];
            v84 = v0[51];
            v79(v0[56], v0[59], v0[54]);
            NotificationHistoryItem.notifiedAt.getter();
            Date.timeIntervalSinceNow.getter();
            v86 = v85;
            (*v127)(v83, v84);
            v87 = v0[56];
            v88 = v0[54];
            if (v86 <= -v71)
            {
              break;
            }

            v89 = NotificationHistoryItem.source.getter();
            v20 = (*v126)(v87, v88);
            if (v89 == v73)
            {
              v30 = __OFADD__(v78++, 1);
              if (v30)
              {
                __break(1u);
                goto LABEL_56;
              }
            }

            v81 = v0[59];
            v82 = v0[54];
            sub_100017518((v0 + 38), v0[41]);
            dispatch thunk of IteratorProtocol.next()();
            v68 = v80;
            if (v129(v81, 1, v82) == 1)
            {
              goto LABEL_38;
            }
          }

          (*v126)(v0[56], v0[54]);
        }

LABEL_38:
        sub_10001653C(v0 + 38);
        v62 = v0 + 47;
        if (v78 >= v125)
        {
          v90 = FCNotificationsLog;
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_10005A4E0;
          *(v20 + 56) = &type metadata for Int;
          *(v20 + 64) = &protocol witness table for Int;
          *(v20 + 32) = v78;
          v60 = v120;
          v61 = v123;
          if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_60;
          }

          if (v71 <= -9.22337204e18)
          {
            goto LABEL_61;
          }

          if (v71 >= 9.22337204e18)
          {
            goto LABEL_62;
          }

          v91 = v0[67];
          *(v20 + 96) = &type metadata for Int;
          *(v20 + 104) = &protocol witness table for Int;
          *(v20 + 72) = v71;
          *(v20 + 136) = &type metadata for String;
          *(v20 + 144) = v91;
          *(v20 + 112) = v68;
          *(v20 + 120) = v124;
          *(v20 + 176) = &type metadata for Int;
          *(v20 + 184) = &protocol witness table for Int;
          *(v20 + 152) = v125;
          *(v20 + 216) = &type metadata for String;
          *(v20 + 224) = v91;
          *(v20 + 192) = v68;
          *(v20 + 200) = v124;
          v92 = v20;

          v93 = v90;
          v94 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("Observed %lu notifications in last %lu seconds from source %{public}@ exceeding cap of %lu. Source %{public}@ is currently forbidden", 132, 2, &_mh_execute_header, v93, v94, v92);

          v20 = sub_10002E2C0(v131, v73);
        }

        else
        {

          v60 = v120;
          v61 = v123;
        }
      }

      else
      {
        v63 = v0[67];
        v64 = FCNotificationsLog;
        v65 = static os_log_type_t.error.getter();
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_10005A4F0;
        *(v66 + 56) = &type metadata for String;
        *(v66 + 64) = v63;
        v60 = v120;
        *(v66 + 32) = v68;
        *(v66 + 40) = v69;
        os_log(_:dso:log:type:_:)("Encountered an unknown source specified in source limits: %{public}@", 68, 2, &_mh_execute_header, v64, v65, v66);
      }

      if (++v61 == v122)
      {
        v95 = (v0 + 2);
        sub_10002DDB8((v0 + 2));
        v96 = v62;
        goto LABEL_46;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
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
    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v20, v21, v22, v23, v24, v25, v26, v27);
  }

  v95 = (v0 + 2);
  v96 = v0 + 47;
LABEL_46:
  v97 = v0[67];
  v98 = v0[50];
  v99 = FCNotificationsLog;
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_10005A4D0;
  v101 = v99;
  v102 = Dictionary.description.getter();
  *(v100 + 56) = &type metadata for String;
  *(v100 + 64) = v97;
  *(v100 + 32) = v102;
  *(v100 + 40) = v103;
  v104 = Set.description.getter();
  *(v100 + 96) = &type metadata for String;
  *(v100 + 104) = v97;
  *(v100 + 72) = v104;
  *(v100 + 80) = v105;
  v106 = Set.description.getter();
  *(v100 + 136) = &type metadata for String;
  *(v100 + 144) = v97;
  *(v100 + 112) = v106;
  *(v100 + 120) = v107;
  v108 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Fetching notification pool with past day per publisher notifications: %{public}@, recent clusters: %{public}@, forbidden sources %{public}@", 139, 2, &_mh_execute_header, v101, v108, v100);

  v109 = *(v98 + 24);
  v110 = swift_task_alloc();
  v110[2] = v98;
  v110[3] = v95;
  v110[4] = v96;
  v110[5] = v119;
  v110[6] = v0 + 46;
  v111 = swift_task_alloc();
  v111[2] = v109;
  v111[3] = sub_10002E3A8;
  v111[4] = v110;
  sub_100015140(&qword_10007EE00, &qword_10005AD80);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_10002DDB8(v95);

  v112 = v0[48];
  v0[71] = v112;

  if (v112)
  {
    v113 = v0[50];
    v114 = swift_task_alloc();
    v0[72] = v114;
    *(v114 + 16) = v113;
    *(v114 + 24) = v112;
    v115 = swift_task_alloc();
    v0[73] = v115;
    v27 = sub_100015140(&qword_10007EE08, &qword_10005AD88);
    *v115 = v0;
    v115[1] = sub_10002CA3C;
    v25 = sub_10002FFE8;
    v20 = (v0 + 49);
    v24 = 0x800000010005E5F0;
    v21 = 0;
    v22 = 0;
    v23 = 0xD000000000000012;
    v26 = v114;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v20, v21, v22, v23, v24, v25, v26, v27);
  }

  sub_1000153DC(v0[64], v0[65]);
  v116 = v0[70];
  sub_10001653C(v0 + 23);
  sub_10002FFD8(v116, 0);

  v117 = v0[1];

  return v117(0);
}

uint64_t sub_10002CA3C()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_10002CD1C;
  }

  else
  {

    v2 = sub_10002CB58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002CB58()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);

  sub_1000153DC(v2, v1);
  v3 = *(v0 + 392);
  v4 = *(v0 + 560);
  sub_10001653C((v0 + 184));
  sub_10002FFD8(v4, 0);

  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_10002CC58()
{
  sub_1000153DC(v0[64], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10002CD1C()
{
  v1 = v0[71];
  v2 = v0[70];
  sub_1000153DC(v0[64], v0[65]);

  sub_10001653C(v0 + 23);
  sub_10002FFD8(v2, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10002CE2C()
{
  v1 = FCNotificationsLog;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("will fetch notification pool", 28, 2, &_mh_execute_header, v1, v2, _swiftEmptyArrayStorage);

  *(v0 + 48) = [objc_allocWithZone(NSDate) init];
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_10002CF24;

  return sub_1000393F4();
}

uint64_t sub_10002CF24()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10002D148;
  }

  else
  {
    v2 = sub_10002D038;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002D038()
{
  v1 = *(v0 + 48);
  v2 = FCNotificationsLog;
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10005A4F0;
  v4 = v2;
  v5 = [v1 fc_millisecondTimeIntervalUntilNow];
  *(v3 + 56) = &type metadata for UInt64;
  *(v3 + 64) = &protocol witness table for UInt64;
  *(v3 + 32) = v5;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("did fetch notification pool, time=%llums", v8);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10002D148()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = FCNotificationsLog;
  v4 = static os_log_type_t.error.getter();
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v5 = swift_allocObject();
  v0[2] = 0;
  *(v5 + 16) = xmmword_10005A4F0;
  v0[3] = 0xE000000000000000;
  v0[4] = v1;
  sub_100015140(&unk_10007EC50, &qword_10005A910);
  _print_unlocked<A, B>(_:_:)();
  v6 = v0[2];
  v7 = v0[3];
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10001528C();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  os_log(_:dso:log:type:_:)("failed to fetch notification pool, error=%{public}@", 51, 2, &_mh_execute_header, v3, v4, v5);

  swift_willThrow();
  v8 = v0[1];

  return v8();
}

uint64_t sub_10002D2B8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, uint64_t *a6@<X8>)
{
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 24);
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);

  sub_1000308E8(a1, v13, v14, v12, v10, v11, v7, v8, v9);
  v16 = v15;

  *a6 = v16;
  return result;
}

void sub_10002D388(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = a1;
  v35 = sub_100015140(&qword_10007EE18, &qword_10005AD98);
  v5 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v32 - v6;
  v7 = *(a2 + 16);
  sub_100015140(&qword_10007EE20, &unk_10005ADA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10005ACE0;
  *(v8 + 32) = a3;
  v9 = objc_allocWithZone(FCNotificationPayloadOperation);
  sub_100025E70(0, &qword_10007EE28, NTPBNotificationItem_ptr);
  v10 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v9 initWithContext:v7 notificationItems:isa];

  v13 = FCNotificationsLog;
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10005A9A0;
  v15 = v13;
  v16 = [v10 description];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(v14 + 56) = &type metadata for String;
  v20 = sub_10001528C();
  *(v14 + 64) = v20;
  *(v14 + 32) = v17;
  *(v14 + 40) = v19;
  v21 = [v12 shortOperationDescription];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v20;
    *(v14 + 72) = v23;
    *(v14 + 80) = v25;
    v26 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("will fetch full payload for notification, item=%{public}@, operationID=%{public}@", 81, 2, &_mh_execute_header, v15, v26, v14);

    v27 = v33;
    v28 = v35;
    (*(v5 + 16))(v33, v34, v35);
    v29 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v30 = swift_allocObject();
    (*(v5 + 32))(v30 + v29, v27, v28);
    aBlock[4] = sub_10002FFF0;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002D7F0;
    aBlock[3] = &unk_100073200;
    v31 = _Block_copy(aBlock);

    [v12 setCompletionHandler:v31];
    _Block_release(v31);
    [v12 start];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10002D704(unint64_t result, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100015140(&qword_10007EE18, &qword_10005AD98);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!result)
  {
    goto LABEL_10;
  }

  v2 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v5 = result & 0xFFFFFFFFFFFFFF8;
    v6 = result;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v5;
    result = v6;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    sub_100015140(&qword_10007EE18, &qword_10005AD98);
    return CheckedContinuation.resume(returning:)();
  }

  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*(v2 + 16))
  {
    v3 = *(result + 32);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002D7F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100025E70(0, &qword_10007EE30, FCNotificationPayload_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void *sub_10002D894()
{
  v1 = *(v0 + 72);
  v2 = [v1 rankedAllSubscribedTagIDs];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_100030094(v3);

  v5 = [v1 autoFavoriteTagIDs];
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [v1 mutedTagIDs];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v6 + 16) <= v4[2] >> 3)
  {

    sub_10002F1AC(v6);

    return v4;
  }

  else
  {

    v8 = sub_10002F2D8(v6, v4);

    return v8;
  }
}

uint64_t sub_10002D9E0(uint64_t a1, uint64_t a2)
{
  v2 = NewsCoreUserDefaults();
  v3 = FCShowStoriesOnlyFromFavoritesSharedPreferenceKey;
  v4 = [v2 valueForKey:FCShowStoriesOnlyFromFavoritesSharedPreferenceKey];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100032508(v10);
    v5 = NewsCoreUserDefaults();
    v6 = [v5 BOOLForKey:v3];

    if (v6)
    {
      v7 = FCNotificationsLog;
      v8 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Will filter notifications to followed channels only", 51, 2, &_mh_execute_header, v7, v8, _swiftEmptyArrayStorage);

      return 1;
    }
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sub_100032508(v10);
  }

  return 0;
}

uint64_t sub_10002DAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_10002DBF0(unsigned int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = static Hasher._hash(seed:bytes:count:)();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_10002DC9C()
{
  swift_unknownObjectRelease();

  sub_10001653C((v0 + 32));
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 80, 7);
}

unint64_t sub_10002DD10()
{
  result = qword_10007EDF0;
  if (!qword_10007EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EDF0);
  }

  return result;
}

unint64_t sub_10002DD64()
{
  result = qword_10007EDF8;
  if (!qword_10007EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EDF8);
  }

  return result;
}

unint64_t sub_10002DDE8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x64657269707865;
    v6 = 0xD000000000000017;
    v7 = 0x6B6E615278616DLL;
    if (a1 != 3)
    {
      v7 = 0x65726F63536E696DLL;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (!a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD00000000000001ALL;
    if (a1 != 9)
    {
      v1 = 0x6143656372756F73;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000021;
    }

    v2 = 0xD000000000000010;
    v3 = 0x627550646574756DLL;
    if (a1 != 6)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10002DF74(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10002DDE8(*a1);
  v5 = v4;
  if (v3 == sub_10002DDE8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10002DFFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10002DDE8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002E060(uint64_t a1)
{
  sub_10002DDE8(*v1);
  String.hash(into:)();
}

Swift::Int sub_10002E0B4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10002DDE8(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10002E114@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100032A10(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10002E144@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10002DDE8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10002E170(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10002E840(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10002E2C0(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:bytes:count:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10002E9C0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_10002E3B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100015140(&qword_10007EE10, &qword_10005AD90);
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

uint64_t sub_10002E618(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100015140(&unk_10007EE50, &unk_10005ADB0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      result = static Hasher._hash(seed:bytes:count:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_10002E840(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10002E3B8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10002EAE4();
      goto LABEL_16;
    }

    sub_10002ED80(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10002E9C0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10002E618(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10002EC40();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10002EFB8(v5 + 1);
  }

  v8 = *v3;
  result = static Hasher._hash(seed:bytes:count:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10002EAE4()
{
  v1 = v0;
  sub_100015140(&qword_10007EE10, &qword_10005AD90);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

  return result;
}

void *sub_10002EC40()
{
  v1 = v0;
  sub_100015140(&unk_10007EE50, &unk_10005ADB0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

Swift::Int sub_10002ED80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100015140(&qword_10007EE10, &qword_10005AD90);
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

  return result;
}

uint64_t sub_10002EFB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100015140(&unk_10007EE50, &unk_10005ADB0);
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      result = static Hasher._hash(seed:bytes:count:)();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_10002F1AC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10002F848(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_10002F2D8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_10002FBBC(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_10002F984(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_100032570(v13);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002F848(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10002EAE4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10002FDE0(v8);
  *v2 = v16;
  return v12;
}

unint64_t *sub_10002F984(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_10002FBBC(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

Swift::Int sub_10002FBBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100015140(&qword_10007EE10, &qword_10005AD90);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_10002FDE0(unint64_t result)
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
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10002FFA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000398EC(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10002FFD8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10002FFF0(unint64_t a1, uint64_t a2)
{
  sub_100015140(&qword_10007EE18, &qword_10005AD98);

  return sub_10002D704(a1, a2);
}

uint64_t sub_10003007C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100030094(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10002E170(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10003012C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

double sub_10003023C(void *a1)
{
  v4 = sub_100015140(&qword_10007EEC8, &qword_10005B150);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  sub_100002288(a1, a1[3]);
  sub_100032E24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10[13] = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v2 = v9;
    (*(v5 + 8))(v7, v4);
  }

  sub_10001653C(a1);
  return v2;
}

uint64_t sub_100030450@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100015140(&qword_10007EE70, &qword_10005AFA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_100002288(a1, a1[3]);
  sub_100032920();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10001653C(a1);
  }

  v31 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v10)
  {
    v11 = 86400;
  }

  else
  {
    v11 = v9;
  }

  v30 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v13)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12;
  }

  v29 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v16;
  v24 = v15;
  v28 = 3;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v18;
  v22 = v17;
  sub_100015140(&qword_10007EE80, &qword_10005AFA8);
  v27 = 4;
  sub_100032A5C(&qword_10007EE88, sub_1000329BC, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v26)
  {
    v20 = v26;
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  (*(v6 + 8))(v8, v5);
  result = sub_10001653C(a1);
  *a2 = v11;
  *(a2 + 8) = v14;
  *(a2 + 16) = v24;
  *(a2 + 24) = v25 & 1;
  *(a2 + 32) = v22;
  *(a2 + 40) = v23 & 1;
  *(a2 + 48) = v20;
  return result;
}

uint64_t sub_100030724(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x800000010005E9C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000010005E9E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6E615278616DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F63536E696DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x694C656372756F73 && a2 == 0xEC0000007374696DLL)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_1000308E8(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v245 = a8;
  v259 = a7;
  v268 = a6;
  v271 = a5;
  v269 = a4;
  v244 = a2;
  v257 = type metadata accessor for Date();
  v11 = *(v257 - 8);
  __chkstk_darwin(v257);
  v256 = &v244 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002D894();
  v15 = v14;
  v252 = v16;
  v17 = sub_10002D9E0(v13, v14);
  v18 = a1[3];
  v264 = a1;
  v19 = sub_100002288(a1, v18);
  __chkstk_darwin(v19);
  (*(v21 + 16))(&v244 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10002377C(&v276);
  dispatch thunk of Sequence.makeIterator()();
  sub_100017518(&v276, AssociatedTypeWitness);
  dispatch thunk of IteratorProtocol.next()();
  v22 = v274;
  v273 = v13;
  v249 = v15;
  if (!v274)
  {
    v265 = 0;
    v270 = 0;
    v261 = 0;
    v250 = 0;
    v251 = 0;
    v253 = 0;
    v254 = 0;
    v262 = 0;
    v260 = 0;
    v13 = 0;
    v31 = &_swiftEmptyDictionarySingleton;
    v32 = &type metadata for String;
    goto LABEL_197;
  }

  v23 = 0;
  v260 = 0;
  v262 = 0;
  v254 = 0;
  v253 = 0;
  v251 = 0;
  v250 = 0;
  v261 = 0;
  v270 = 0;
  v265 = 0;
  v24 = v275;
  v272 = v13 + 56;
  v25 = *&a3;
  v26 = *&v271;
  v255 = (v11 + 8);
  v271 = a9 + 56;
  v27 = (v17 & 1) == 0;
  v28 = a9;
  if (v27)
  {
    v29 = 7;
  }

  else
  {
    v29 = 8;
  }

  v247 = v29;
  if (v27)
  {
    v30 = v15;
  }

  else
  {
    v30 = v13;
  }

  v248 = v30;
  v31 = &_swiftEmptyDictionarySingleton;
  v246 = xmmword_10005A4F0;
  v258 = xmmword_10005A9A0;
  v32 = &type metadata for String;
  v266 = a9;
  v263 = a3;
  while (1)
  {
    v33 = [v22 suppressIfFollowingTagIDs];
    if (v33)
    {
      v274 = 0;
      v34 = v33;
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();

      v13 = v274;
      if (v274)
      {
        break;
      }
    }

LABEL_39:
    if ((v269 & 1) == 0)
    {
      v13 = v264[3];
      sub_100002288(v264, v13);
      if (v23 / dispatch thunk of Collection.count.getter() > v25)
      {
        v197 = FCNotificationsLog;
        sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_10005A4D0;
        *(v13 + 56) = &type metadata for Int;
        *(v13 + 64) = &protocol witness table for Int;
        *(v13 + 32) = v23;
        sub_100002288(v264, v264[3]);
        v198 = v197;
        v199 = dispatch thunk of Collection.count.getter();
        *(v13 + 96) = &type metadata for Int;
        *(v13 + 104) = &protocol witness table for Int;
        *(v13 + 72) = v199;
        v200 = swift_allocObject();
        *(v200 + 16) = v246;
        *(v200 + 56) = &type metadata for Double;
        *(v200 + 64) = &protocol witness table for Double;
        *(v200 + 32) = v263;
        v201 = String.init(format:_:)();
        v203 = v202;
        *(v13 + 136) = &type metadata for String;
        *(v13 + 144) = sub_10001528C();
        *(v13 + 112) = v201;
        *(v13 + 120) = v203;
        v204 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Got to index %lu in collection of size %lu exceeding max rank of %{public}@, halting notification item consideration", 116, 2, &_mh_execute_header, v198, v204, v13);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v274 = v31;
        v37 = sub_10004080C(3);
        v206 = *(v31 + 2);
        v207 = (v205 & 1) == 0;
        v60 = __OFADD__(v206, v207);
        v208 = v206 + v207;
        if (v60)
        {
          goto LABEL_252;
        }

        LOBYTE(v13) = v205;
        if (*(v31 + 3) < v208)
        {
          sub_100041344(v208, isUniquelyReferenced_nonNull_native);
          v37 = sub_10004080C(3);
          if ((v13 & 1) != (v209 & 1))
          {
            goto LABEL_191;
          }

LABEL_193:
          v31 = v274;
          if (v13)
          {
            goto LABEL_195;
          }

LABEL_194:
          v13 = v37;
          sub_100041FD4(v37, 3, 0, v31);
          v37 = v13;
LABEL_195:
          while (1)
          {
            v210 = *(v31 + 7);
            v211 = *(v210 + 8 * v37);
            v60 = __OFADD__(v211, 1);
            v212 = v211 + 1;
            if (!v60)
            {
              break;
            }

LABEL_253:
            __break(1u);
LABEL_254:
            __break(1u);
LABEL_255:
            __break(1u);
LABEL_256:
            v243 = v37;
            sub_100042324();
            v37 = v243;
            v31 = v274;
            if ((v13 & 1) == 0)
            {
              goto LABEL_194;
            }
          }

          *(v210 + 8 * v37) = v212;

          v22 = 0;
          v13 = sub_100032F94;
LABEL_197:
          sub_10001653C(&v276);
          v213 = FCNotificationsLog;
          sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
          v37 = swift_allocObject();
          v214 = v37;
          v215 = 0;
          v216 = 0;
          *(v37 + 16) = xmmword_10005A9A0;
          *(v37 + 56) = &type metadata for Int;
          *(v37 + 64) = &protocol witness table for Int;
          v217 = 1 << v31[32];
          v218 = -1;
          if (v217 < 64)
          {
            v218 = ~(-1 << v217);
          }

          v219 = v218 & *(v31 + 8);
          v220 = (v217 + 63) >> 6;
          do
          {
            if (!v219)
            {
              while (1)
              {
                v221 = v215 + 1;
                if (__OFADD__(v215, 1))
                {
                  break;
                }

                if (v221 >= v220)
                {
                  goto LABEL_209;
                }

                v219 = *&v31[8 * v221 + 64];
                ++v215;
                if (v219)
                {
                  v215 = v221;
                  goto LABEL_206;
                }
              }

              __break(1u);
              goto LABEL_215;
            }

            v221 = v215;
LABEL_206:
            v222 = __clz(__rbit64(v219));
            v219 &= v219 - 1;
            v223 = *(*(v31 + 7) + ((v221 << 9) | (8 * v222)));
            v60 = __OFADD__(v216, v223);
            v216 += v223;
          }

          while (!v60);
          __break(1u);
LABEL_209:
          v224 = v213;
          v214[4] = v216;
          sub_1000324B4();
          v225 = Dictionary.description.getter();
          v226 = v32;
          v228 = v227;
          v214[12] = v226;
          v229 = sub_10001528C();
          v214[13] = v229;
          v214[9] = v225;
          v214[10] = v228;
          v230 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("Processed notification pool skipping %lu items with reasons %{public}@", 70, 2, &_mh_execute_header, v224, v230, v214);

          if (v22)
          {
            v231 = FCNotificationsLog;
            v232 = swift_allocObject();
            *(v232 + 16) = xmmword_10005A4F0;
            v233 = v231;
            v234 = v22;
            v235 = [v234 identifier];
            if (!v235)
            {
              goto LABEL_265;
            }

            v236 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v238 = v237;

            *(v232 + 56) = &type metadata for String;
            *(v232 + 64) = v229;
            *(v232 + 32) = v236;
            *(v232 + 40) = v238;
            v239 = static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)("Processed notification pool vending notification %{public}@", 59, 2, &_mh_execute_header, v233, v239, v232);

            v240 = v234;
          }

          else
          {

            sub_100025E70(0, &unk_10007EE40, OS_os_log_ptr);
            v241 = static OS_os_log.default.getter();
            v242 = static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)("Processed notification pool and found no acceptable notification", 64, 2, &_mh_execute_header, v241, v242, _swiftEmptyArrayStorage);

            v240 = 0;
          }

          sub_10002FFD8(v265, 0);
          sub_10002FFD8(v13, 0);
          sub_10002FFD8(v270, 0);
          sub_10002FFD8(v261, 0);
          sub_10002FFD8(v250, 0);
          sub_10002FFD8(v251, 0);
          sub_10002FFD8(v253, 0);
          sub_10002FFD8(v254, 0);
          sub_10002FFD8(v262, 0);
          sub_10002FFD8(v260, 0);
          return;
        }

LABEL_192:
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_256;
        }

        goto LABEL_193;
      }
    }

    if ((v268 & 1) == 0 && v24 < v26)
    {
      sub_10002FFD8(v270, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v274 = v31;
      v37 = sub_10004080C(4);
      v69 = *(v31 + 2);
      v70 = (v68 & 1) == 0;
      v60 = __OFADD__(v69, v70);
      v71 = v69 + v70;
      if (v60)
      {
        goto LABEL_216;
      }

      LOBYTE(v13) = v68;
      if (*(v31 + 3) >= v71)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_76;
        }

        v188 = v37;
        sub_100042324();
        v37 = v188;
        v31 = v274;
        if ((v13 & 1) == 0)
        {
LABEL_77:
          *&v31[8 * (v37 >> 6) + 64] |= 1 << v37;
          *(*(v31 + 6) + v37) = 4;
          *(*(v31 + 7) + 8 * v37) = 0;
          v105 = *(v31 + 2);
          v60 = __OFADD__(v105, 1);
          v106 = v105 + 1;
          if (v60)
          {
            goto LABEL_223;
          }

          *(v31 + 2) = v106;
        }
      }

      else
      {
        sub_100041344(v71, isUniquelyReferenced_nonNull_native);
        v37 = sub_10004080C(4);
        if ((v13 & 1) != (v72 & 1))
        {
          goto LABEL_191;
        }

LABEL_76:
        v31 = v274;
        if ((v13 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      v107 = *(v31 + 7);
      v108 = *(v107 + 8 * v37);
      v60 = __OFADD__(v108, 1);
      v109 = v108 + 1;
      if (v60)
      {
        goto LABEL_217;
      }

      *(v107 + 8 * v37) = v109;

      v60 = __OFADD__(v23++, 1);
      if (v60)
      {
        goto LABEL_218;
      }

      v67 = &v285;
LABEL_143:
      *(v67 - 32) = sub_100032F94;
      goto LABEL_144;
    }

    v73 = [v22 feedItem];
    if (!v73)
    {
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    v74 = v73;
    v75 = [v73 expirationData];

    if (!v75)
    {
      goto LABEL_259;
    }

    v76 = [v75 hasGlobalExpireUtcTime];

    if (v76)
    {
      v77 = [v22 feedItem];
      if (!v77)
      {
        goto LABEL_263;
      }

      v78 = v77;
      v79 = [v77 expirationData];

      if (!v79)
      {
        goto LABEL_262;
      }

      v13 = [v79 globalExpireUtcTime];

      v80 = v256;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v82 = v81;
      v83 = v81;
      v37 = (*v255)(v80, v257);
      if ((*&v83 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_222;
      }

      if (v82 <= -9.22337204e18)
      {
        goto LABEL_224;
      }

      if (v82 >= 9.22337204e18)
      {
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
        goto LABEL_253;
      }

      if (v13 < v82)
      {
        sub_10002FFD8(v261, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v274 = v31;
        v37 = sub_10004080C(1);
        v85 = *(v31 + 2);
        v86 = (v84 & 1) == 0;
        v60 = __OFADD__(v85, v86);
        v87 = v85 + v86;
        if (v60)
        {
          goto LABEL_229;
        }

        LOBYTE(v13) = v84;
        if (*(v31 + 3) >= v87)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_102;
          }

          v191 = v37;
          sub_100042324();
          v37 = v191;
          v31 = v274;
          if ((v13 & 1) == 0)
          {
LABEL_103:
            *&v31[8 * (v37 >> 6) + 64] |= 1 << v37;
            *(*(v31 + 6) + v37) = 1;
            *(*(v31 + 7) + 8 * v37) = 0;
            v132 = *(v31 + 2);
            v60 = __OFADD__(v132, 1);
            v133 = v132 + 1;
            if (v60)
            {
              goto LABEL_236;
            }

            *(v31 + 2) = v133;
          }
        }

        else
        {
          sub_100041344(v87, isUniquelyReferenced_nonNull_native);
          v37 = sub_10004080C(1);
          if ((v13 & 1) != (v88 & 1))
          {
            goto LABEL_191;
          }

LABEL_102:
          v31 = v274;
          if ((v13 & 1) == 0)
          {
            goto LABEL_103;
          }
        }

        v134 = *(v31 + 7);
        v135 = *(v134 + 8 * v37);
        v60 = __OFADD__(v135, 1);
        v136 = v135 + 1;
        if (v60)
        {
          goto LABEL_230;
        }

        *(v134 + 8 * v37) = v136;

        v60 = __OFADD__(v23++, 1);
        if (v60)
        {
          goto LABEL_231;
        }

        v67 = &v282;
        goto LABEL_143;
      }
    }

    v89 = [v22 clusterID];
    if (!v89)
    {
      goto LABEL_260;
    }

    v90 = v89;
    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v92;

    if (*(v28 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v93 = Hasher._finalize()();
      v94 = -1 << *(v28 + 32);
      v95 = v93 & ~v94;
      if ((*(v271 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95))
      {
        v96 = ~v94;
        while (1)
        {
          v97 = (*(v28 + 48) + 16 * v95);
          v98 = *v97 == v91 && v97[1] == v13;
          if (v98 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v95 = (v95 + 1) & v96;
          if (((*(v271 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
          {
            goto LABEL_70;
          }
        }

        sub_10002FFD8(v260, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v274 = v31;
        v37 = sub_10004080C(0);
        v123 = *(v31 + 2);
        v124 = (v122 & 1) == 0;
        v60 = __OFADD__(v123, v124);
        v125 = v123 + v124;
        if (v60)
        {
          goto LABEL_232;
        }

        LOBYTE(v13) = v122;
        if (*(v31 + 3) >= v125)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_115;
          }

          v192 = v37;
          sub_100042324();
          v37 = v192;
          v31 = v274;
          if ((v13 & 1) == 0)
          {
LABEL_116:
            *&v31[8 * (v37 >> 6) + 64] |= 1 << v37;
            *(*(v31 + 6) + v37) = 0;
            *(*(v31 + 7) + 8 * v37) = 0;
            v150 = *(v31 + 2);
            v60 = __OFADD__(v150, 1);
            v151 = v150 + 1;
            if (v60)
            {
              goto LABEL_240;
            }

            *(v31 + 2) = v151;
          }
        }

        else
        {
          sub_100041344(v125, isUniquelyReferenced_nonNull_native);
          v37 = sub_10004080C(0);
          if ((v13 & 1) != (v126 & 1))
          {
            goto LABEL_191;
          }

LABEL_115:
          v31 = v274;
          if ((v13 & 1) == 0)
          {
            goto LABEL_116;
          }
        }

        v152 = *(v31 + 7);
        v153 = *(v152 + 8 * v37);
        v60 = __OFADD__(v153, 1);
        v154 = v153 + 1;
        if (v60)
        {
          goto LABEL_233;
        }

        *(v152 + 8 * v37) = v154;

        v60 = __OFADD__(v23++, 1);
        if (v60)
        {
          goto LABEL_234;
        }

        v67 = &v281;
        goto LABEL_143;
      }
    }

LABEL_70:

    v99 = [v22 source];
    if (sub_10002DBF0(v99, v259))
    {
      sub_10002FFD8(v262, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v274 = v31;
      v37 = sub_10004080C(10);
      v101 = *(v31 + 2);
      v102 = (v100 & 1) == 0;
      v60 = __OFADD__(v101, v102);
      v103 = v101 + v102;
      if (v60)
      {
        goto LABEL_226;
      }

      LOBYTE(v13) = v100;
      if (*(v31 + 3) >= v103)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_95;
        }

        v190 = v37;
        sub_100042324();
        v37 = v190;
        v31 = v274;
        if ((v13 & 1) == 0)
        {
LABEL_96:
          *&v31[8 * (v37 >> 6) + 64] |= 1 << v37;
          *(*(v31 + 6) + v37) = 10;
          *(*(v31 + 7) + 8 * v37) = 0;
          v127 = *(v31 + 2);
          v60 = __OFADD__(v127, 1);
          v128 = v127 + 1;
          if (v60)
          {
            goto LABEL_235;
          }

          *(v31 + 2) = v128;
        }
      }

      else
      {
        sub_100041344(v103, isUniquelyReferenced_nonNull_native);
        v37 = sub_10004080C(10);
        if ((v13 & 1) != (v104 & 1))
        {
          goto LABEL_191;
        }

LABEL_95:
        v31 = v274;
        if ((v13 & 1) == 0)
        {
          goto LABEL_96;
        }
      }

      v129 = *(v31 + 7);
      v130 = *(v129 + 8 * v37);
      v60 = __OFADD__(v130, 1);
      v131 = v130 + 1;
      if (v60)
      {
        goto LABEL_227;
      }

      *(v129 + 8 * v37) = v131;

      v60 = __OFADD__(v23++, 1);
      if (v60)
      {
        goto LABEL_228;
      }

      v67 = &v283;
      goto LABEL_143;
    }

    v110 = [v22 feedItem];
    if (!v110)
    {
      goto LABEL_264;
    }

    v111 = v110;
    v112 = [v110 publisherID];

    if (!v112)
    {
      v137 = v23;
      v13 = FCNotificationsLog;
      v138 = static os_log_type_t.error.getter();
      sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
      v139 = swift_allocObject();
      *(v139 + 16) = v246;
      v140 = [v22 identifier];
      if (!v140)
      {
        goto LABEL_266;
      }

      v141 = v140;
      v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v143;

      *(v139 + 56) = &type metadata for String;
      *(v139 + 64) = sub_10001528C();
      *(v139 + 32) = v142;
      *(v139 + 40) = v32;
      os_log(_:dso:log:type:_:)("Failed to get publisher ID on notification item %{public}@", 58, 2, &_mh_execute_header, v13, v138, v139);

      sub_10002FFD8(v254, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v274 = v31;
      v37 = sub_10004080C(5);
      v145 = *(v31 + 2);
      v146 = (v144 & 1) == 0;
      v60 = __OFADD__(v145, v146);
      v147 = v145 + v146;
      if (v60)
      {
        goto LABEL_237;
      }

      LOBYTE(v13) = v144;
      if (*(v31 + 3) < v147)
      {
        sub_100041344(v147, isUniquelyReferenced_nonNull_native);
        v37 = sub_10004080C(5);
        v32 = &type metadata for String;
        v28 = v266;
        if ((v13 & 1) != (v148 & 1))
        {
          goto LABEL_191;
        }

        v149 = v137;
        v31 = v274;
        if (v13)
        {
          goto LABEL_129;
        }

LABEL_127:
        *&v31[8 * (v37 >> 6) + 64] |= 1 << v37;
        *(*(v31 + 6) + v37) = 5;
        *(*(v31 + 7) + 8 * v37) = 0;
        v160 = *(v31 + 2);
        v60 = __OFADD__(v160, 1);
        v161 = v160 + 1;
        if (v60)
        {
          goto LABEL_244;
        }

        *(v31 + 2) = v161;
        goto LABEL_129;
      }

      v32 = &type metadata for String;
      v149 = v137;
      v28 = v266;
      if (isUniquelyReferenced_nonNull_native)
      {
        v31 = v274;
        if ((v144 & 1) == 0)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v193 = v37;
        sub_100042324();
        v37 = v193;
        v31 = v274;
        if ((v13 & 1) == 0)
        {
          goto LABEL_127;
        }
      }

LABEL_129:
      v162 = *(v31 + 7);
      v163 = *(v162 + 8 * v37);
      v60 = __OFADD__(v163, 1);
      v164 = v163 + 1;
      if (v60)
      {
        goto LABEL_238;
      }

      *(v162 + 8 * v37) = v164;

      v60 = __OFADD__(v149, 1);
      v23 = v149 + 1;
      if (v60)
      {
        goto LABEL_239;
      }

      v67 = &v278;
      goto LABEL_143;
    }

    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v114;

    v115 = v248;

    v116 = sub_10002DAF8(v113, v13, v115);

    if ((v116 & 1) == 0)
    {

      sub_10002FFD8(v253, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v274 = v31;
      v37 = sub_10004080C(v247);
      v156 = *(v31 + 2);
      v157 = (v155 & 1) == 0;
      v60 = __OFADD__(v156, v157);
      v158 = v156 + v157;
      if (v60)
      {
        goto LABEL_241;
      }

      LOBYTE(v13) = v155;
      if (*(v31 + 3) >= v158)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_137;
        }

        v194 = v37;
        sub_100042324();
        v37 = v194;
        v31 = v274;
        if ((v13 & 1) == 0)
        {
LABEL_138:
          *&v31[8 * (v37 >> 6) + 64] |= 1 << v37;
          *(*(v31 + 6) + v37) = v247;
          *(*(v31 + 7) + 8 * v37) = 0;
          v168 = *(v31 + 2);
          v60 = __OFADD__(v168, 1);
          v169 = v168 + 1;
          if (v60)
          {
            goto LABEL_246;
          }

          *(v31 + 2) = v169;
        }
      }

      else
      {
        sub_100041344(v158, isUniquelyReferenced_nonNull_native);
        v37 = sub_10004080C(v247);
        if ((v13 & 1) != (v159 & 1))
        {
          goto LABEL_191;
        }

LABEL_137:
        v31 = v274;
        if ((v13 & 1) == 0)
        {
          goto LABEL_138;
        }
      }

      v170 = *(v31 + 7);
      v171 = *(v170 + 8 * v37);
      v60 = __OFADD__(v171, 1);
      v172 = v171 + 1;
      if (v60)
      {
        goto LABEL_242;
      }

      *(v170 + 8 * v37) = v172;

      v60 = __OFADD__(v23++, 1);
      if (v60)
      {
        goto LABEL_243;
      }

      v67 = &v277;
      goto LABEL_143;
    }

    if (sub_10002DAF8(v113, v13, v252))
    {

      sub_10002FFD8(v251, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v274 = v31;
      v37 = sub_10004080C(6);
      v118 = *(v31 + 2);
      v119 = (v117 & 1) == 0;
      v60 = __OFADD__(v118, v119);
      v120 = v118 + v119;
      if (v60)
      {
        goto LABEL_245;
      }

      LOBYTE(v13) = v117;
      if (*(v31 + 3) >= v120)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_147;
        }

        v195 = v37;
        sub_100042324();
        v37 = v195;
        v31 = v274;
        if ((v13 & 1) == 0)
        {
LABEL_148:
          *&v31[8 * (v37 >> 6) + 64] |= 1 << v37;
          *(*(v31 + 6) + v37) = 6;
          *(*(v31 + 7) + 8 * v37) = 0;
          v173 = *(v31 + 2);
          v60 = __OFADD__(v173, 1);
          v174 = v173 + 1;
          if (v60)
          {
            goto LABEL_254;
          }

          *(v31 + 2) = v174;
        }
      }

      else
      {
        sub_100041344(v120, isUniquelyReferenced_nonNull_native);
        v37 = sub_10004080C(6);
        if ((v13 & 1) != (v121 & 1))
        {
          goto LABEL_191;
        }

LABEL_147:
        v31 = v274;
        if ((v13 & 1) == 0)
        {
          goto LABEL_148;
        }
      }

      v175 = *(v31 + 7);
      v176 = *(v175 + 8 * v37);
      v60 = __OFADD__(v176, 1);
      v177 = v176 + 1;
      if (v60)
      {
        goto LABEL_247;
      }

      *(v175 + 8 * v37) = v177;

      v251 = sub_100032F94;
      v60 = __OFADD__(v23++, 1);
      if (v60)
      {
        goto LABEL_248;
      }

      goto LABEL_144;
    }

    if (*(v245 + 16))
    {
      v165 = sub_100040750(v113, v13);
      v167 = v166;

      if (v167)
      {
        if (*(*(v245 + 56) + 8 * v165) < v244)
        {
          goto LABEL_186;
        }

        goto LABEL_156;
      }
    }

    else
    {
    }

    if (v244 > 0)
    {
LABEL_186:
      v13 = 0;
      goto LABEL_197;
    }

LABEL_156:
    sub_10002FFD8(v250, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v274 = v31;
    v37 = sub_10004080C(2);
    v179 = *(v31 + 2);
    v180 = (v178 & 1) == 0;
    v60 = __OFADD__(v179, v180);
    v181 = v179 + v180;
    if (v60)
    {
      goto LABEL_249;
    }

    LOBYTE(v13) = v178;
    if (*(v31 + 3) >= v181)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v196 = v37;
        sub_100042324();
        v37 = v196;
        v31 = v274;
        if (v13)
        {
          goto LABEL_164;
        }

        goto LABEL_162;
      }
    }

    else
    {
      sub_100041344(v181, isUniquelyReferenced_nonNull_native);
      v37 = sub_10004080C(2);
      if ((v13 & 1) != (v182 & 1))
      {
LABEL_191:
        v37 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_192;
      }
    }

    v31 = v274;
    if (v13)
    {
      goto LABEL_164;
    }

LABEL_162:
    *&v31[8 * (v37 >> 6) + 64] |= 1 << v37;
    *(*(v31 + 6) + v37) = 2;
    *(*(v31 + 7) + 8 * v37) = 0;
    v183 = *(v31 + 2);
    v60 = __OFADD__(v183, 1);
    v184 = v183 + 1;
    if (v60)
    {
      goto LABEL_255;
    }

    *(v31 + 2) = v184;
LABEL_164:
    v185 = *(v31 + 7);
    v186 = *(v185 + 8 * v37);
    v60 = __OFADD__(v186, 1);
    v187 = v186 + 1;
    if (v60)
    {
      goto LABEL_250;
    }

    *(v185 + 8 * v37) = v187;

    v250 = sub_100032F94;
    v60 = __OFADD__(v23++, 1);
    if (v60)
    {
      goto LABEL_251;
    }

LABEL_144:
    LOBYTE(v13) = AssociatedTypeWitness;
    sub_100017518(&v276, AssociatedTypeWitness);
    dispatch thunk of IteratorProtocol.next()();
    v22 = v274;
    v24 = v275;
    if (!v274)
    {
      goto LABEL_186;
    }
  }

  v267 = v23;
  v35 = *(v274 + 2);
  if (!v35)
  {
LABEL_38:

    v23 = v267;
    goto LABEL_39;
  }

  v32 = v274 + 32;
  v36 = v273;
  v37 = swift_bridgeObjectRetain_n();
  v38 = 0;
  while (1)
  {
    if (v38 >= *(v13 + 16))
    {
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
      goto LABEL_219;
    }

    if (!*(v36 + 16))
    {
      goto LABEL_14;
    }

    v39 = &v32[16 * v38];
    v40 = *v39;
    v41 = *(v39 + 1);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v42 = Hasher._finalize()();
    v43 = -1 << *(v36 + 32);
    v44 = v42 & ~v43;
    if ((*(v272 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
    {
      break;
    }

LABEL_13:

    v36 = v273;
    v28 = v266;
LABEL_14:
    if (++v38 == v35)
    {

      LOBYTE(v13) = v36;
      v32 = &type metadata for String;
      goto LABEL_38;
    }
  }

  v45 = ~v43;
  while (1)
  {
    v46 = (*(v273 + 48) + 16 * v44);
    v47 = *v46 == v40 && v46[1] == v41;
    if (v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v44 = (v44 + 1) & v45;
    if (((*(v272 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  swift_bridgeObjectRelease_n();
  v48 = FCNotificationsLog;
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v49 = swift_allocObject();
  *(v49 + 16) = v258;
  *(v49 + 56) = &type metadata for String;
  v50 = sub_10001528C();
  *(v49 + 64) = v50;
  *(v49 + 32) = v40;
  *(v49 + 40) = v41;

  v51 = v48;
  v52 = [v22 identifier];
  if (v52)
  {
    v32 = v52;

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    *(v49 + 96) = &type metadata for String;
    *(v49 + 104) = v50;
    *(v49 + 72) = v13;
    *(v49 + 80) = v54;
    v55 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("User is following %{public}@ which is specified within notification item %{public}@'s suppressIfFollowingTagIDs", 111, 2, &_mh_execute_header, v51, v55, v49);

    sub_10002FFD8(v265, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v274 = v31;
    v37 = sub_10004080C(9);
    v58 = *(v31 + 2);
    v59 = (v57 & 1) == 0;
    v60 = __OFADD__(v58, v59);
    v61 = v58 + v59;
    if (!v60)
    {
      LOBYTE(v13) = v57;
      v32 = &type metadata for String;
      if (*(v31 + 3) >= v61)
      {
        v63 = v267;
        v28 = v266;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_32;
        }

        v189 = v37;
        sub_100042324();
        v37 = v189;
        v31 = v274;
        if ((v13 & 1) == 0)
        {
LABEL_33:
          v13 = v37;
          sub_100041FD4(v37, 9, 0, v31);
          v37 = v13;
        }
      }

      else
      {
        sub_100041344(v61, isUniquelyReferenced_nonNull_native);
        v37 = sub_10004080C(9);
        v63 = v267;
        v28 = v266;
        if ((v13 & 1) != (v62 & 1))
        {
          goto LABEL_191;
        }

LABEL_32:
        v31 = v274;
        if ((v13 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      v64 = *(v31 + 7);
      v65 = *(v64 + 8 * v37);
      v60 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (!v60)
      {
        *(v64 + 8 * v37) = v66;

        v60 = __OFADD__(v63, 1);
        v23 = v63 + 1;
        if (!v60)
        {
          v67 = &v284;
          goto LABEL_143;
        }

LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
        goto LABEL_225;
      }

LABEL_220:
      __break(1u);
      goto LABEL_221;
    }

LABEL_219:
    __break(1u);
    goto LABEL_220;
  }

LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
}

unint64_t sub_1000324B4()
{
  result = qword_10007EE38;
  if (!qword_10007EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EE38);
  }

  return result;
}

uint64_t sub_100032508(uint64_t a1)
{
  v2 = sub_100015140(&qword_10007EC90, &qword_10005ACB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for DelayedNotificationVendor.FilterReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DelayedNotificationVendor.FilterReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1000326C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000326E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10003272C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DelayedNotificationVendor.Errors(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DelayedNotificationVendor.Errors(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100032874()
{
  result = qword_10007EE60;
  if (!qword_10007EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EE60);
  }

  return result;
}

unint64_t sub_1000328CC()
{
  result = qword_10007EE68;
  if (!qword_10007EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EE68);
  }

  return result;
}

unint64_t sub_100032920()
{
  result = qword_10007EE78;
  if (!qword_10007EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EE78);
  }

  return result;
}

uint64_t sub_100032974(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000329BC()
{
  result = qword_10007EE90;
  if (!qword_10007EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EE90);
  }

  return result;
}

unint64_t sub_100032A10(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100072798, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100032A5C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100032974(&qword_10007EE80, &qword_10005AFA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100032AD4()
{
  result = qword_10007EEA8;
  if (!qword_10007EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EEA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DelayedNotificationVendor.Configuration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DelayedNotificationVendor.Configuration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100032C78(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100032C84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100032CCC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100032D20()
{
  result = qword_10007EEB0;
  if (!qword_10007EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EEB0);
  }

  return result;
}

unint64_t sub_100032D78()
{
  result = qword_10007EEB8;
  if (!qword_10007EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EEB8);
  }

  return result;
}

unint64_t sub_100032DD0()
{
  result = qword_10007EEC0;
  if (!qword_10007EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EEC0);
  }

  return result;
}

unint64_t sub_100032E24()
{
  result = qword_10007EED0;
  if (!qword_10007EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EED0);
  }

  return result;
}

unint64_t sub_100032E8C()
{
  result = qword_10007EEE0;
  if (!qword_10007EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EEE0);
  }

  return result;
}

unint64_t sub_100032EE4()
{
  result = qword_10007EEE8;
  if (!qword_10007EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EEE8);
  }

  return result;
}

unint64_t sub_100032F3C()
{
  result = qword_10007EEF0;
  if (!qword_10007EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EEF0);
  }

  return result;
}

uint64_t sub_100032FAC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DropboxMyArticlesRequestFactory();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_1000346C0(&qword_10007EFB8, type metadata accessor for DropboxMyArticlesRequestFactory, &unk_10005C048);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_100033030@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ProxyScoringServiceConnection();
  v3 = static ProxyScoringServiceConnection.shared.getter();
  a1[3] = v2;
  result = sub_1000346C0(&qword_10007EFB0, &type metadata accessor for ProxyScoringServiceConnection, &protocol conformance descriptor for ProxyScoringServiceConnection);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_1000330AC()
{
  sub_100015140(&qword_10007EFA8, &qword_10005B300);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100033118@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100002288(a1, a1[3]);
  type metadata accessor for DropboxReadingHistory();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v5 = result;
    sub_100002288(a1, a1[3]);
    type metadata accessor for DropboxSubscriptionList();
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for UserContextProvider();
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      a2[3] = v7;
      a2[4] = &off_100072DF8;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ProxyScoringServiceConnection.scoreItems(in:configurationSet:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100023584;

  return sub_100033290(a1, a2, 0);
}

uint64_t sub_100033290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for CocoaError.Code();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10003340C, 0, 0);
}

uint64_t sub_10003340C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *(v4 + 16) = sub_100034688;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_100033508;

  return ProxyScoringServiceConnection.withAsyncScoringService<A>(_:)();
}

uint64_t sub_100033508()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1000336A8;
  }

  else
  {

    v2 = sub_10003362C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003362C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000336A8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[4];

  swift_errorRetain();
  static CocoaError.xpcConnectionInterrupted.getter();
  sub_1000346C0(&qword_10007EFE0, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v5 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v2 + 8))(v1, v3);
  if ((v5 & 1) != 0 && v4 < 1)
  {
    v6 = v0[4];

    v7 = exp2(v6);
    if (v7 <= 5.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 5.0;
    }

    static Logger.scoringService.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134349056;
      *(v11 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "ProxyScoringServiceConnection lost XPC connection, will retry after %{public}f seconds", v11, 0xCu);
    }

    v13 = v0[10];
    v12 = v0[11];
    v14 = v0[9];

    (*(v13 + 8))(v12, v14);
    v15 = static Duration.seconds(_:)();
    v17 = v16;
    static Clock<>.continuous.getter();
    v18 = swift_task_alloc();
    v0[19] = v18;
    *v18 = v0;
    v18[1] = sub_100033970;

    return sub_100033FAC(v15, v17, 0, 0, 1);
  }

  else
  {

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100033970()
{
  v2 = *v1;
  v2[20] = v0;

  if (v0)
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    return _swift_task_switch(sub_100033C78, 0, 0);
  }

  else
  {
    v3 = v2[4];
    (*(v2[7] + 8))(v2[8], v2[6]);
    v4 = swift_task_alloc();
    v2[21] = v4;
    *v4 = v2;
    v4[1] = sub_100033B28;
    v5 = v2[3];
    v6 = v2[2];

    return sub_100033290(v6, v5, v3 + 1);
  }
}

uint64_t sub_100033B28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100033C78()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100033CFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = FeedItemDatabase.toReference()();
  if (!v5)
  {
    v11 = v10;
    type metadata accessor for NDScoringServiceEnvironment();
    v12 = static NDScoringServiceEnvironment.current.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    v15[4] = sub_100034744;
    v15[5] = v13;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_100039860;
    v15[3] = &unk_1000735D0;
    v14 = _Block_copy(v15);

    [a1 scoreItemsIn:v11 environment:v12 configurationSet:a5 completion:v14];
    _Block_release(v14);
  }
}

uint64_t sub_100033E34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), uint64_t))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  a4(a1, sub_100034708, v8);
}

uint64_t sub_100033EDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100017F58;

  return sub_100033290(a1, a2, 0);
}

uint64_t sub_100033FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1000340AC, 0, 0);
}

uint64_t sub_1000340AC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1000346C0(&qword_10007EFE8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000346C0(&unk_10007EFF0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10003423C;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10003423C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000343F8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000343F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100034464()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.public.getter();
  type metadata accessor for FeedItemPoolManager(0);
  RegistrationContainer.register<A>(_:name:factory:)();

  (*(v1 + 104))(v3, enum case for Scope.singleton(_:), v0);
  Definition.inScope(_:)();

  (*(v1 + 8))(v3, v0);
  ProxyContainer.public.getter();
  sub_100015140(&qword_10007EF98, &qword_10005B2F0);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100015140(&qword_10007EFA0, &qword_10005B2F8);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

uint64_t sub_1000346C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100034708(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = 0;
  return v2(&v4, a1);
}

uint64_t sub_10003476C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_100034784(uint64_t a1, uint64_t a2)
{
  v2 = NewsCoreUserDefaults();
  v3 = FCDelayedNotificationRandomNormalizedValueKey;
  v4 = [v2 valueForKey:FCDelayedNotificationRandomNormalizedValueKey];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100032508(v11);
    v5 = NewsCoreUserDefaults();
    [v5 doubleForKey:v3];
    v7 = v6;
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v8 = sub_100032508(v11);
    sub_100015430(v8, 0.0, 1.0);
    v7 = v9;
    v5 = NewsCoreUserDefaults();
    [v5 setDouble:v3 forKey:v7];
  }

  return v7;
}

void *sub_100034888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100014B28();
  if (v6)
  {
    return 0;
  }

  v8 = result;
  v9 = result + 7;
  if (__OFADD__(result, 7))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v9 < result)
  {
    goto LABEL_49;
  }

  v10 = v5;
  v7 = 0;
  v11 = 1;
  v12 = result;
  while (1)
  {
    if (*(a3 + 16))
    {
      v13 = v12 <= 7 ? v12 : v12 - 7;
      sub_10004070C(v13);
      if (v14)
      {
        break;
      }
    }

    result = _swiftEmptyArrayStorage;
    v15 = _swiftEmptyArrayStorage[2];
    if (v15)
    {
      goto LABEL_14;
    }

LABEL_21:

    if (v12 == v9)
    {
      return v7;
    }

    if (__OFADD__(v12++, 1))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

  v15 = result[2];
  if (!v15)
  {
    goto LABEL_21;
  }

LABEL_14:
  v16 = v9;
  v17 = 86400 * (v12 - v8);
  v18 = result[4];
  if (v18 >= v10)
  {
    v24 = 0;
    goto LABEL_35;
  }

  v19 = result + 5;
  if (v12 > v8)
  {
    goto LABEL_36;
  }

  if ((v11 & 1) == 0)
  {
    v21 = 1;
LABEL_29:
    v22 = &result[2 * v21 + 4];
    while (v15 != v21)
    {
      if (v21 >= v15)
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (__OFADD__(v21, 1))
      {
        goto LABEL_44;
      }

      v23 = *v22;
      v22 += 2;
      v18 = v23;
      ++v21;
      if (v23 >= v10)
      {
        v24 = v21 - 1;
        goto LABEL_35;
      }
    }

LABEL_20:
    v11 = 0;
    v9 = v16;
    goto LABEL_21;
  }

  v7 = v18 + v17;
  if (__OFADD__(v18, v17))
  {
    goto LABEL_46;
  }

  if (__OFADD__(*v19, v17))
  {
    goto LABEL_47;
  }

  if (v15 == 1)
  {
    goto LABEL_20;
  }

  v18 = result[6];
  if (v18 < v10)
  {
    if (v12 > v8)
    {
      goto LABEL_36;
    }

    v21 = 2;
    goto LABEL_29;
  }

  v24 = 1;
LABEL_35:
  v19 = &result[2 * v24 + 5];
LABEL_36:
  v25 = *v19;

  if (__OFSUB__(v12, v8))
  {
    goto LABEL_50;
  }

  if ((v12 - v8 - 0x611722833945) < 0xFFFF3DD1BAF98D77)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v7 = v18 + v17;
  if (__OFADD__(v18, v17))
  {
    goto LABEL_52;
  }

  if (!__OFADD__(v25, v17))
  {
    return v7;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_100034AAC()
{
  v1 = 0x7961646E6F6DLL;
  v2 = *v0;
  v3 = 0x796164697266;
  if (v2 != 5)
  {
    v3 = 0x7961647275746173;
  }

  v4 = 0x616473656E646577;
  if (v2 != 3)
  {
    v4 = 0x7961647372756874;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0x79616473657574;
  }

  if (!*v0)
  {
    v1 = 0x7961646E7573;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100034B78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000373E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100034BAC(uint64_t a1)
{
  v2 = sub_100039044();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100034BE8(uint64_t a1)
{
  v2 = sub_100039044();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100034C24(uint64_t result)
{
  v1 = 0;
  v21 = 30067;
  v22 = 0xE200000000000000;
  v23[0] = result & 1;
  v24 = 109;
  v25 = 0xE100000000000000;
  v26 = BYTE1(result) & 1;
  v27 = 30068;
  v28 = 0xE200000000000000;
  v29 = BYTE2(result) & 1;
  v30 = 119;
  v31 = 0xE100000000000000;
  v32 = BYTE3(result) & 1;
  v33 = 26740;
  v34 = 0xE200000000000000;
  v35 = BYTE4(result) & 1;
  v36 = 102;
  v37 = 0xE100000000000000;
  v38 = BYTE5(result) & 1;
  v39 = 24947;
  v40 = 0xE200000000000000;
  v41 = BYTE6(result) & 1;
LABEL_2:
  if (v1 <= 7)
  {
    v2 = 7;
  }

  else
  {
    v2 = v1;
  }

  v3 = v2 + 1;
  v4 = 24 * v1;
  while (v1 != 7)
  {
    if (v3 == ++v1)
    {
      __break(1u);
      return result;
    }

    v5 = v4 + 24;
    v6 = v23[v4];
    v4 += 24;
    if (v6)
    {
      v8 = *&v20[v5 + 8];
      v7 = *&v20[v5 + 16];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000429B8(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        result = sub_1000429B8((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[3 * v10];
      v11[4] = v8;
      v11[5] = v7;
      *(v11 + 48) = 1;
      goto LABEL_2;
    }
  }

  sub_100015140(&unk_10007F360, &unk_10005BDE0);
  swift_arrayDestroy();
  v12 = _swiftEmptyArrayStorage[2];
  if (v12)
  {
    sub_100042998(0, v12, 0);
    v13 = &_swiftEmptyArrayStorage[5];
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      v16 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];

      if (v16 >= v17 >> 1)
      {
        sub_100042998((v17 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v18 = &_swiftEmptyArrayStorage[2 * v16];
      v18[4] = v15;
      v18[5] = v14;
      v13 += 3;
      --v12;
    }

    while (v12);
  }

  v19 = Array.description.getter();

  return v19;
}

int8x8_t sub_100034EB4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  v4 = sub_100037628(a2);
  if (!v2)
  {
    *a1 = v4 & 1;
    v6 = vdupq_n_s64(v4);
    *v6.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v6, xmmword_10005B330), vshlq_u64(v6, xmmword_10005B320))), 0x1000100010001);
    result = vuzp1_s8(*v6.i8, *v6.i8);
    *(a1 + 1) = result.i32[0];
    *(a1 + 5) = BYTE5(v4) & 1;
    *(a1 + 6) = BYTE6(v4) & 1;
  }

  return result;
}

uint64_t sub_100034F28()
{
  v1 = 0x1000000000000;
  if (!v0[6])
  {
    v1 = 0;
  }

  v2 = 0x10000000000;
  if (!v0[5])
  {
    v2 = 0;
  }

  v3 = &_mh_execute_header;
  if (!v0[4])
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if (!v0[3])
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if (!v0[2])
  {
    v5 = 0;
  }

  v6 = 256;
  if (!v0[1])
  {
    v6 = 0;
  }

  return sub_100034C24(v6 | *v0 | v5 | v4 | v3 | v2 | v1);
}

BOOL sub_100034FA8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = v9 == 0;
  v18 = 0x1000000000000;
  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = 0x1000000000000;
  }

  v17 = v8 == 0;
  v20 = 0x10000000000;
  if (v17)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0x10000000000;
  }

  v17 = v7 == 0;
  v22 = &_mh_execute_header;
  if (v17)
  {
    v23 = 0;
  }

  else
  {
    v23 = &_mh_execute_header;
  }

  v17 = v6 == 0;
  v24 = 0x1000000;
  if (v17)
  {
    v25 = 0;
  }

  else
  {
    v25 = 0x1000000;
  }

  v17 = v5 == 0;
  v26 = 0x10000;
  if (v17)
  {
    v27 = 0;
  }

  else
  {
    v27 = 0x10000;
  }

  v17 = v4 == 0;
  v28 = 256;
  if (v17)
  {
    v29 = 0;
  }

  else
  {
    v29 = 256;
  }

  v30 = v29 | v3 | v27 | v25;
  v31 = v23 | v21 | v19;
  if (!v16)
  {
    v18 = 0;
  }

  if (!v15)
  {
    v20 = 0;
  }

  if (!v14)
  {
    v22 = 0;
  }

  if (!v13)
  {
    v24 = 0;
  }

  if (!v12)
  {
    v26 = 0;
  }

  if (!v11)
  {
    v28 = 0;
  }

  return sub_100037370(v30 | v31, v28 | v10 | v26 | v24 | v22 | v20 | v18);
}

uint64_t sub_1000350A0()
{
  v1 = 0x7472617473;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6557664F73796164;
  }
}

uint64_t sub_1000350F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100037BB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003511C(uint64_t a1)
{
  v2 = sub_100038D60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100035158(uint64_t a1)
{
  v2 = sub_100038D60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100035194(uint64_t a1)
{
  _StringGuts.grow(_:)(16);
  v2 = sub_100034C24(a1 & 0x1010101010101);

  v3._countAndFlagsBits = 2629690;
  v3._object = 0xE300000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x28203E2D2029;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v2;
}

int8x8_t sub_1000352B0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  v4 = sub_100037CD4(a2);
  if (!v2)
  {
    *a1 = v4 & 1;
    v8 = vdupq_n_s64(v4);
    *v8.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v8, xmmword_10005B330), vshlq_u64(v8, xmmword_10005B320))), 0x1000100010001);
    result = vuzp1_s8(*v8.i8, *v8.i8);
    *(a1 + 1) = result.i32[0];
    *(a1 + 5) = BYTE5(v4) & 1;
    *(a1 + 6) = BYTE6(v4) & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_100035328()
{
  v1 = 256;
  if ((v0[1] & 1) == 0)
  {
    v1 = 0;
  }

  v2 = v1 & 0xFFFFFFFFFFFFFFFELL | *v0 & 1;
  v3 = 0x10000;
  if ((v0[2] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((v0[3] & 1) == 0)
  {
    v4 = 0;
  }

  v5 = v2 | v3 | v4;
  v6 = &_mh_execute_header;
  if ((v0[4] & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0x10000000000;
  if ((v0[5] & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x1000000000000;
  if ((v0[6] & 1) == 0)
  {
    v8 = 0;
  }

  return sub_100035194(v5 | v6 | v7 | v8);
}

void *sub_1000353AC(uint64_t a1)
{
  v20 = 1;
  v21 = &_swiftEmptyDictionarySingleton;
  sub_10003562C(&v21, &v20, a1);
  v20 = 2;
  sub_10003562C(&v21, &v20, a1);
  v20 = 3;
  sub_10003562C(&v21, &v20, a1);
  v20 = 4;
  sub_10003562C(&v21, &v20, a1);
  v20 = 5;
  sub_10003562C(&v21, &v20, a1);
  v20 = 6;
  sub_10003562C(&v21, &v20, a1);
  v20 = 7;
  sub_10003562C(&v21, &v20, a1);
  v2 = v21;
  sub_100015140(&qword_10007F350, &qword_10005B420);
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  v5 = 0;
  v6 = 1 << v2[32];
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 8);
  v9 = (v6 + 63) >> 6;
  v19 = v3 + 64;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v5 << 6);
      v14 = *(*(v2 + 6) + 8 * v13);
      v21 = *(*(v2 + 7) + 8 * v13);
      swift_bridgeObjectRetain_n();
      sub_100036930(&v21);

      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v4[6] + 8 * v13) = v14;
      *(v4[7] + 8 * v13) = v21;
      v15 = v4[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        break;
      }

      v4[2] = v17;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        return v4;
      }

      v12 = *&v2[8 * v5 + 64];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10003562C(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 16);
  v100 = *a2;
  if (v4)
  {
    v5 = 7 * (v3 / 7);
    v6 = v5 + v3 % 7;
    v7 = __OFADD__(v5, v3 % 7);
    v98 = v7;
    v8 = (a3 + 39);
    v91 = v6;
    do
    {
      v11 = *(v8 - 7);
      v12 = *(v8 - 6);
      v13 = *(v8 - 5);
      v14 = *(v8 - 4);
      v15 = *(v8 - 3);
      v102 = *v8;
      v103 = *(v8 + 16);
      if (v3 < 1)
      {
        goto LABEL_8;
      }

      if (v98)
      {
        goto LABEL_93;
      }

      if (v6 <= 3)
      {
        switch(v6)
        {
          case 1:
            if ((*(v8 - 7) & 1) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_32;
          case 2:
            if ((*(v8 - 6) & 1) == 0)
            {
              goto LABEL_8;
            }

LABEL_32:
            v95 = *(v8 - 1);
            v96 = *(v8 - 2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000429D8(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v17 = _swiftEmptyArrayStorage[2];
            v16 = _swiftEmptyArrayStorage[3];
            v18 = v96;
            v19 = v95;
            if (v17 >= v16 >> 1)
            {
              sub_1000429D8((v16 > 1), v17 + 1, 1);
              v19 = v95;
              v18 = v96;
            }

            _swiftEmptyArrayStorage[2] = v17 + 1;
            v20 = &_swiftEmptyArrayStorage[3 * v17];
            *(v20 + 32) = v11;
            *(v20 + 33) = v12;
            *(v20 + 34) = v13;
            *(v20 + 35) = v14;
            *(v20 + 36) = v15;
            *(v20 + 37) = v18;
            *(v20 + 38) = v19;
            *(v20 + 55) = v103;
            *(v20 + 39) = v102;
            v3 = v100;
            goto LABEL_7;
          case 3:
            if ((*(v8 - 5) & 1) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_32;
        }
      }

      else
      {
        if (v6 <= 5)
        {
          if (v6 == 4)
          {
            if ((*(v8 - 4) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          else if ((*(v8 - 3) & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_32;
        }

        if (v6 == 6)
        {
          if ((*(v8 - 2) & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_32;
        }

        if (v6 == 7)
        {
          if ((*(v8 - 1) & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_32;
        }
      }

      v9 = FCNotificationsLog;
      static os_log_type_t.error.getter();
      sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_10005A4F0;
      *(v10 + 56) = &type metadata for Int;
      *(v10 + 64) = &protocol witness table for Int;
      *(v10 + 32) = v91;
      os_log(_:dso:log:type:_:)("Asked if days of week contains unsupported weekday value %lu", v89);

LABEL_7:
      v6 = v91;
LABEL_8:
      v8 = (v8 + 24);
      --v4;
    }

    while (v4);
  }

  v97 = _swiftEmptyArrayStorage[2];
  v21 = 0;
  v22 = 0;
  if (v97)
  {
    v99 = 0;
    v23 = v3;
    v24 = 0;
    v25 = v23 + 1;
    v26 = __OFADD__(v23, 1);
    v90 = v26;
    if (v23 == 7)
    {
      v25 = 1;
    }

    v94 = v25;
    v27 = &_swiftEmptyArrayStorage[6];
    while (v24 < _swiftEmptyArrayStorage[2])
    {
      v31 = *(v27 - 1);
      v30 = *v27;
      if (v31 >= *v27)
      {
        v93 = *v27;
        v43 = v21;
        sub_10002FFD8(v22, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *a1;
        v47 = sub_10004070C(v100);
        v48 = v45[2];
        v49 = (v46 & 1) == 0;
        v50 = v48 + v49;
        if (__OFADD__(v48, v49))
        {
          goto LABEL_94;
        }

        v51 = v46;
        if (v45[3] >= v50)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100042470();
          }
        }

        else
        {
          sub_10004177C(v50, isUniquelyReferenced_nonNull_native);
          v52 = sub_10004070C(v100);
          if ((v51 & 1) != (v53 & 1))
          {
            goto LABEL_101;
          }

          v47 = v52;
        }

        *a1 = v45;
        if ((v51 & 1) == 0)
        {
          v45[(v47 >> 6) + 8] |= 1 << v47;
          *(v45[6] + 8 * v47) = v100;
          *(v45[7] + 8 * v47) = _swiftEmptyArrayStorage;
          v63 = v45[2];
          v55 = __OFADD__(v63, 1);
          v64 = v63 + 1;
          if (v55)
          {
            goto LABEL_98;
          }

          v45[2] = v64;
        }

        v65 = v45[7];
        v66 = *(v65 + 8 * v47);
        v67 = swift_isUniquelyReferenced_nonNull_native();
        *(v65 + 8 * v47) = v66;
        if ((v67 & 1) == 0)
        {
          v66 = sub_100043D48(0, *(v66 + 2) + 1, 1, v66);
          *(v65 + 8 * v47) = v66;
        }

        v69 = *(v66 + 2);
        v68 = *(v66 + 3);
        if (v69 >= v68 >> 1)
        {
          v66 = sub_100043D48((v68 > 1), v69 + 1, 1, v66);
          *(v65 + 8 * v47) = v66;
        }

        *(v66 + 2) = v69 + 1;
        v70 = &v66[16 * v69];
        *(v70 + 4) = v31;
        *(v70 + 5) = 86400;
        if (v90)
        {
          goto LABEL_99;
        }

        sub_10002FFD8(v99, 0);
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v72 = *a1;
        v74 = sub_10004070C(v94);
        v75 = v72[2];
        v76 = (v73 & 1) == 0;
        v77 = v75 + v76;
        if (__OFADD__(v75, v76))
        {
          goto LABEL_96;
        }

        v78 = v73;
        if (v72[3] >= v77)
        {
          if ((v71 & 1) == 0)
          {
            sub_100042470();
          }
        }

        else
        {
          sub_10004177C(v77, v71);
          v79 = sub_10004070C(v94);
          if ((v78 & 1) != (v80 & 1))
          {
            goto LABEL_101;
          }

          v74 = v79;
        }

        *a1 = v72;
        if ((v78 & 1) == 0)
        {
          v72[(v74 >> 6) + 8] |= 1 << v74;
          *(v72[6] + 8 * v74) = v94;
          *(v72[7] + 8 * v74) = _swiftEmptyArrayStorage;
          v81 = v72[2];
          v55 = __OFADD__(v81, 1);
          v82 = v81 + 1;
          if (v55)
          {
            goto LABEL_100;
          }

          v72[2] = v82;
        }

        v83 = v72[7];
        v58 = *(v83 + 8 * v74);
        v84 = swift_isUniquelyReferenced_nonNull_native();
        *(v83 + 8 * v74) = v58;
        if ((v84 & 1) == 0)
        {
          v58 = sub_100043D48(0, *(v58 + 2) + 1, 1, v58);
          *(v83 + 8 * v74) = v58;
        }

        v61 = *(v58 + 2);
        v85 = *(v58 + 3);
        v62 = v61 + 1;
        if (v61 >= v85 >> 1)
        {
          v58 = sub_100043D48((v85 > 1), v61 + 1, 1, v58);
          v28 = 0;
          *(v83 + 8 * v74) = v58;
          v99 = sub_1000393DC;
          v22 = sub_1000393DC;
        }

        else
        {
          v22 = sub_1000393DC;
          v99 = sub_1000393DC;
          v28 = 0;
        }

        v21 = v43;
        v30 = v93;
      }

      else
      {
        v92 = *(v27 - 1);
        v32 = v22;
        sub_10002FFD8(v21, 0);
        v33 = swift_isUniquelyReferenced_nonNull_native();
        v34 = *a1;
        v36 = sub_10004070C(v100);
        v37 = v34[2];
        v38 = (v35 & 1) == 0;
        v39 = v37 + v38;
        if (__OFADD__(v37, v38))
        {
          goto LABEL_95;
        }

        v40 = v35;
        if (v34[3] >= v39)
        {
          if ((v33 & 1) == 0)
          {
            sub_100042470();
          }
        }

        else
        {
          sub_10004177C(v39, v33);
          v41 = sub_10004070C(v100);
          if ((v40 & 1) != (v42 & 1))
          {
            goto LABEL_101;
          }

          v36 = v41;
        }

        *a1 = v34;
        if ((v40 & 1) == 0)
        {
          v34[(v36 >> 6) + 8] |= 1 << v36;
          *(v34[6] + 8 * v36) = v100;
          *(v34[7] + 8 * v36) = _swiftEmptyArrayStorage;
          v54 = v34[2];
          v55 = __OFADD__(v54, 1);
          v56 = v54 + 1;
          if (v55)
          {
            goto LABEL_97;
          }

          v34[2] = v56;
        }

        v57 = v34[7];
        v58 = *(v57 + 8 * v36);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        *(v57 + 8 * v36) = v58;
        if ((v59 & 1) == 0)
        {
          v58 = sub_100043D48(0, *(v58 + 2) + 1, 1, v58);
          *(v57 + 8 * v36) = v58;
        }

        v61 = *(v58 + 2);
        v60 = *(v58 + 3);
        v62 = v61 + 1;
        v21 = sub_1000393DC;
        if (v61 >= v60 >> 1)
        {
          v58 = sub_100043D48((v60 > 1), v61 + 1, 1, v58);
          *(v57 + 8 * v36) = v58;
          v21 = sub_1000393DC;
        }

        v22 = v32;
        v28 = v92;
      }

      ++v24;
      *(v58 + 2) = v62;
      v29 = &v58[16 * v61];
      *(v29 + 4) = v28;
      *(v29 + 5) = v30;
      v27 += 3;
      if (v97 == v24)
      {
        goto LABEL_91;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v99 = 0;
LABEL_91:
    v86 = v21;
    v87 = v22;

    sub_10002FFD8(v86, 0);
    sub_10002FFD8(v87, 0);
    return sub_10002FFD8(v99, 0);
  }

  return result;
}

uint64_t sub_100035EC0(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 16);
  v75 = *a2;
  if (v4)
  {
    v5 = 7 * (v3 / 7);
    v6 = v5 + v3 % 7;
    v7 = __OFADD__(v5, v3 % 7);
    v72 = v7;
    v8 = (a3 + 39);
    v66 = v6;
    do
    {
      v11 = *(v8 - 7);
      v12 = *(v8 - 6);
      v13 = *(v8 - 5);
      v14 = *(v8 - 4);
      v76 = *v8;
      v77 = *(v8 + 16);
      if (v3 < 1)
      {
        goto LABEL_8;
      }

      if (v72)
      {
        goto LABEL_73;
      }

      if (v6 <= 3)
      {
        switch(v6)
        {
          case 1:
            if ((*(v8 - 7) & 1) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_32;
          case 2:
            if ((*(v8 - 6) & 1) == 0)
            {
              goto LABEL_8;
            }

LABEL_32:
            v68 = *(v8 - 1);
            v71 = *(v8 - 2);
            v67 = *(v8 - 3);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000429D8(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v16 = _swiftEmptyArrayStorage[2];
            v15 = _swiftEmptyArrayStorage[3];
            v17 = v71;
            v18 = v68;
            if (v16 >= v15 >> 1)
            {
              sub_1000429D8((v15 > 1), v16 + 1, 1);
              v18 = v68;
              v17 = v71;
            }

            _swiftEmptyArrayStorage[2] = v16 + 1;
            v19 = &_swiftEmptyArrayStorage[3 * v16];
            *(v19 + 32) = v11;
            *(v19 + 33) = v12;
            *(v19 + 34) = v13;
            *(v19 + 35) = v14;
            *(v19 + 36) = v67;
            *(v19 + 37) = v17;
            *(v19 + 38) = v18;
            *(v19 + 55) = v77;
            *(v19 + 39) = v76;
            v3 = v75;
            goto LABEL_7;
          case 3:
            if ((*(v8 - 5) & 1) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_32;
        }
      }

      else
      {
        if (v6 <= 5)
        {
          if (v6 == 4)
          {
            if ((*(v8 - 4) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          else if ((*(v8 - 3) & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_32;
        }

        if (v6 == 6)
        {
          if ((*(v8 - 2) & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_32;
        }

        if (v6 == 7)
        {
          if ((*(v8 - 1) & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_32;
        }
      }

      v9 = FCNotificationsLog;
      static os_log_type_t.error.getter();
      sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_10005A4F0;
      *(v10 + 56) = &type metadata for Int;
      *(v10 + 64) = &protocol witness table for Int;
      *(v10 + 32) = v66;
      os_log(_:dso:log:type:_:)("Asked if days of week contains unsupported weekday value %lu", v65);

      v3 = v75;

LABEL_7:
      v6 = v66;
LABEL_8:
      v8 = (v8 + 24);
      --v4;
    }

    while (v4);
  }

  v73 = _swiftEmptyArrayStorage[2];
  v20 = 0;
  v21 = 0;
  if (v73)
  {
    v22 = 0;
    v23 = &_swiftEmptyArrayStorage[6];
    while (v22 < _swiftEmptyArrayStorage[2])
    {
      v25 = *(v23 - 1);
      v26 = *v23;
      if (*v23 >= v25)
      {
        v70 = v20;
        sub_10002FFD8(v21, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = *a1;
        v42 = sub_10004070C(v75);
        v43 = v40[2];
        v44 = (v41 & 1) == 0;
        v45 = v43 + v44;
        if (__OFADD__(v43, v44))
        {
          goto LABEL_75;
        }

        v46 = v41;
        if (v40[3] >= v45)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100042470();
          }
        }

        else
        {
          sub_10004177C(v45, isUniquelyReferenced_nonNull_native);
          v47 = sub_10004070C(v75);
          if ((v46 & 1) != (v48 & 1))
          {
            goto LABEL_79;
          }

          v42 = v47;
        }

        *a1 = v40;
        if ((v46 & 1) == 0)
        {
          v40[(v42 >> 6) + 8] |= 1 << v42;
          *(v40[6] + 8 * v42) = v75;
          *(v40[7] + 8 * v42) = _swiftEmptyArrayStorage;
          v49 = v40[2];
          v27 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v27)
          {
            goto LABEL_77;
          }

          v40[2] = v50;
        }

        v51 = v40[7];
        v52 = *(v51 + 8 * v42);
        v53 = swift_isUniquelyReferenced_nonNull_native();
        *(v51 + 8 * v42) = v52;
        if ((v53 & 1) == 0)
        {
          v52 = sub_100043D48(0, *(v52 + 2) + 1, 1, v52);
          *(v51 + 8 * v42) = v52;
        }

        v55 = *(v52 + 2);
        v54 = *(v52 + 3);
        v56 = v55 + 1;
        v21 = sub_1000393DC;
        if (v55 >= v54 >> 1)
        {
          v52 = sub_100043D48((v54 > 1), v55 + 1, 1, v52);
          *(v51 + 8 * v42) = v52;
          v21 = sub_1000393DC;
        }

        v20 = v70;
      }

      else
      {
        v27 = __OFADD__(v26, 86400);
        v26 += 86400;
        if (v27)
        {
          goto LABEL_74;
        }

        v69 = *(v23 - 1);
        v28 = v21;
        sub_10002FFD8(v20, 0);
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v30 = *a1;
        v32 = sub_10004070C(v75);
        v33 = v30[2];
        v34 = (v31 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_76;
        }

        v36 = v31;
        if (v30[3] >= v35)
        {
          if ((v29 & 1) == 0)
          {
            sub_100042470();
          }
        }

        else
        {
          sub_10004177C(v35, v29);
          v37 = sub_10004070C(v75);
          if ((v36 & 1) != (v38 & 1))
          {
            goto LABEL_79;
          }

          v32 = v37;
        }

        *a1 = v30;
        if ((v36 & 1) == 0)
        {
          v30[(v32 >> 6) + 8] |= 1 << v32;
          *(v30[6] + 8 * v32) = v75;
          *(v30[7] + 8 * v32) = _swiftEmptyArrayStorage;
          v57 = v30[2];
          v27 = __OFADD__(v57, 1);
          v58 = v57 + 1;
          if (v27)
          {
            goto LABEL_78;
          }

          v30[2] = v58;
        }

        v59 = v30[7];
        v52 = *(v59 + 8 * v32);
        v60 = swift_isUniquelyReferenced_nonNull_native();
        *(v59 + 8 * v32) = v52;
        if ((v60 & 1) == 0)
        {
          v52 = sub_100043D48(0, *(v52 + 2) + 1, 1, v52);
          *(v59 + 8 * v32) = v52;
        }

        v55 = *(v52 + 2);
        v61 = *(v52 + 3);
        v56 = v55 + 1;
        if (v55 >= v61 >> 1)
        {
          v52 = sub_100043D48((v61 > 1), v55 + 1, 1, v52);
          *(v59 + 8 * v32) = v52;
        }

        v20 = sub_1000393DC;
        v21 = v28;
        v25 = v69;
      }

      ++v22;
      *(v52 + 2) = v56;
      v24 = &v52[16 * v55];
      *(v24 + 4) = v25;
      *(v24 + 5) = v26;
      v23 += 3;
      if (v73 == v22)
      {
        goto LABEL_71;
      }
    }

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
LABEL_79:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_71:
    v62 = v21;
    v63 = v20;

    sub_10002FFD8(v63, 0);
    return sub_10002FFD8(v62, 0);
  }

  return result;
}

uint64_t sub_10003658C()
{
  if (*v0)
  {
    return 0x73776F646E6977;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1000365CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000010005EAE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73776F646E6977 && a2 == 0xE700000000000000)
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

uint64_t sub_1000366C0(uint64_t a1)
{
  v2 = sub_1000387D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000366FC(uint64_t a1)
{
  v2 = sub_1000387D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100036738(char a1, uint64_t a2)
{
  _StringGuts.grow(_:)(52);
  v4._countAndFlagsBits = 0xD000000000000032;
  v4._object = 0x800000010005EAA0;
  String.append(_:)(v4);
  sub_100015140(&qword_10007F038, &qword_10005B438);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10005A9A0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000010005EAE0;
  *(inited + 48) = a1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x73776F646E6977;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 120) = sub_100015140(&qword_10007F040, &unk_10005B440);
  *(inited + 96) = a2;

  sub_10002A1C0(inited);
  swift_setDeallocating();
  sub_100015140(&qword_10007ECA8, &qword_10005ACC8);
  swift_arrayDestroy();
  v6 = Dictionary.description.getter();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  return 0;
}

uint64_t sub_1000368CC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000385E8(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
  }

  return result;
}

unint64_t sub_10003690C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_100036A84(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_100036930(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100044168(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_100015140(&qword_10007F028, &unk_10005B428);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100036BF4(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_100036A84(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
LABEL_6:
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_10004070C(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    v15 = *(*(a2 + 56) + 8 * result);
    v16 = v15[1].i64[0];
    if (v16 != v13[1].i64[0])
    {
      return 0;
    }

    if (v16)
    {
      v17 = v15 == v13;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v18 = v15 + 2;
      v19 = v13 + 2;
      while (v16)
      {
        v20 = vmovn_s64(vceqq_s64(*v18, *v19));
        if ((v20.i32[0] & v20.i32[1] & 1) == 0)
        {
          return 0;
        }

        ++v18;
        ++v19;
        if (!--v16)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_27;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100036BF4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100043D34(v8);
      v8 = result;
    }

    v79 = v8 + 2;
    v80 = v8[2];
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = &v8[2 * v80];
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_10003716C((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100043D48(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v33 = v8[3];
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_100043D48((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v34;
    v35 = v8 + 4;
    v36 = &v8[2 * v5 + 4];
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = v8[4];
          v38 = v8[5];
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v8[2 * v34];
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = &v35[2 * v5];
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = &v8[2 * v34];
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = &v35[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = &v35[2 * v5 - 2];
        v75 = *v74;
        v76 = &v35[2 * v5];
        v77 = v76[1];
        sub_10003716C((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = v8[2];
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove(&v35[2 * v5], v76 + 2, 16 * (v78 - 1 - v5));
        v8[2] = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = &v35[2 * v34];
      v42 = *(v41 - 8);
      v43 = *(v41 - 7);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 6);
      v45 = *(v41 - 5);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v8[2 * v34];
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = &v35[2 * v5];
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_10003716C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_1000373E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7961646E7573 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7961646E6F6DLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79616473657574 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616473656E646577 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7961647372756874 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x796164697266 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7961647275746173 && a2 == 0xE800000000000000)
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

unint64_t sub_100037628(void *a1)
{
  v3 = sub_100015140(&qword_10007F098, &qword_10005B858);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  sub_100002288(a1, a1[3]);
  sub_100039044();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10001653C(a1);
  }

  v33 = 0;
  v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = 1;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = 2;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = 3;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = 4;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = 5;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = 6;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if ((v7 & 1) == 0 && (v8 & 1) == 0 && (v9 & 1) == 0 && (v10 & 1) == 0 && (v26 & 1) == 0 && (v25 & 1) == 0 && (v11 & 1) == 0)
  {
    sub_100039098();
    swift_allocError();
    *v13 = 0xD00000000000003DLL;
    v13[1] = 0x800000010005EBF0;
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
    return sub_10001653C(a1);
  }

  v14 = *(v4 + 8);
  v23 = v9;
  v24 = v8;
  v15 = v26;
  v16 = v11;
  v14(v6, v3);
  sub_10001653C(a1);
  if (v16)
  {
    v17 = 0x1000000000000;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0x10000000000;
  if ((v25 & 1) == 0)
  {
    v18 = 0;
  }

  v19 = &_mh_execute_header;
  if ((v15 & 1) == 0)
  {
    v19 = 0;
  }

  v20 = 0x1000000;
  if ((v10 & 1) == 0)
  {
    v20 = 0;
  }

  v21 = 0x10000;
  if ((v23 & 1) == 0)
  {
    v21 = 0;
  }

  v22 = 256;
  if ((v24 & 1) == 0)
  {
    v22 = 0;
  }

  return v22 & 0xFFFFFFFFFFFFFFFELL | v7 & 1 | v21 | v20 | v19 | v18 | v17;
}

uint64_t sub_100037944(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 == a3)
  {
    v3 = 0x800000010005EBB0;
    sub_100038E08();
    swift_allocError();
    v5 = 0xD00000000000003ALL;
  }

  else
  {
    if (a2 >= 0x15181)
    {
      _StringGuts.grow(_:)(71);
      v7._countAndFlagsBits = 0xD000000000000013;
      v7._object = 0x800000010005EB00;
      String.append(_:)(v7);
      v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v8);

      v9 = "Start specified as ";
      v10 = 0xD000000000000030;
    }

    else
    {
      if (a3 < 0x15181)
      {
        return a1 & 0x1010101010101;
      }

      _StringGuts.grow(_:)(67);
      v11._object = 0x800000010005EB60;
      v11._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v11);
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v9 = "End specified as ";
      v10 = 0xD00000000000002ELL;
    }

    v13 = v9 | 0x8000000000000000;
    String.append(_:)(*&v10);
    _print_unlocked<A, B>(_:_:)();
    v14._countAndFlagsBits = 3943982;
    v14._object = 0xE300000000000000;
    String.append(_:)(v14);
    _print_unlocked<A, B>(_:_:)();
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    String.append(_:)(v15);

    v5 = 0;
    v3 = 0xE000000000000000;
    sub_100038E08();
    swift_allocError();
  }

  *v4 = v5;
  v4[1] = v3;
  return swift_willThrow();
}

uint64_t sub_100037BB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6557664F73796164 && a2 == 0xEA00000000006B65;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
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

uint64_t sub_100037CD4(void *a1)
{
  v3 = sub_100015140(&qword_10007F060, &unk_10005B640);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  sub_100002288(a1, a1[3]);
  sub_100038D60();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10001653C(a1);
  }

  v38 = 0;
  sub_100038DB4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v7 = v35 | ((v36 | (v37 << 16)) << 32);
  v8 = v7 & &_mh_execute_header;
  v9 = v7 & 0x10000000000;
  v10 = v7 & 0x1000000000000;
  v11 = v35 & 1;
  if (v35 == 2)
  {
    v11 = 1;
  }

  v32 = v11;
  if (v35 == 2)
  {
    v12 = 256;
  }

  else
  {
    v12 = v35 & 0x100;
  }

  v31 = v12;
  if (v35 == 2)
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = v35 & 0x10000;
  }

  if (v35 == 2)
  {
    v14 = 0x1000000;
  }

  else
  {
    v14 = v35 & 0x1000000;
  }

  v29 = v14;
  v30 = v13;
  if (v35 == 2)
  {
    v15 = &_mh_execute_header;
  }

  else
  {
    v15 = v8;
  }

  if (v35 == 2)
  {
    v16 = 0x10000000000;
  }

  else
  {
    v16 = v9;
  }

  if (v35 == 2)
  {
    v17 = 0x1000000000000;
  }

  else
  {
    v17 = v10;
  }

  v34 = 1;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v17;
  v26 = v16;
  v27 = v15;
  v28 = v18;
  v20 = v31;
  v19 = v32;
  v33 = 2;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = sub_100037944(v20 | v19 | v30 | v29 | v27 | v26 | v25, v28, v21);
  (*(v4 + 8))(v6, v3);
  sub_10001653C(a1);
  return v22 & 0x1010101010101;
}

void *sub_100037F8C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    result = sub_1000353AC(a1);
    v2 = 0;
    v3 = 1 << *(result + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & result[8];
    v6 = (v3 + 63) >> 6;
LABEL_5:
    while (v5)
    {
LABEL_10:
      v8 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v9 = *(result[7] + 8 * (v8 | (v2 << 6)));
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = 0;
        v12 = (v9 + 56);
        while (1)
        {
          v13 = v11 + 1;
          if (v11 < (v10 - 1))
          {
            break;
          }

LABEL_12:
          v12 += 2;
          v11 = v13;
          if (v13 == v10)
          {
            goto LABEL_5;
          }
        }

        v14 = (v9 + 32 + 16 * v11);
        v15 = *v14;
        v16 = v14[1];
        v17 = v12;
        v18 = v13;
        while (v18 < v10)
        {
          v19 = *(v17 - 1);
          v20 = *v17;
          if (v19 < v16 && v15 < v20 && v19 != v20 && v15 != v16)
          {

            _StringGuts.grow(_:)(56);
            v24._countAndFlagsBits = 0x20776F646E6957;
            v24._object = 0xE700000000000000;
            String.append(_:)(v24);
            _print_unlocked<A, B>(_:_:)();
            v25._countAndFlagsBits = 3943982;
            v25._object = 0xE300000000000000;
            String.append(_:)(v25);
            _print_unlocked<A, B>(_:_:)();
            v26._countAndFlagsBits = 0;
            v26._object = 0xE000000000000000;
            String.append(_:)(v26);

            v27._countAndFlagsBits = 0x20796164206E6920;
            v27._object = 0xE800000000000000;
            String.append(_:)(v27);
            v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v28);

            v29._object = 0x800000010005EA60;
            v29._countAndFlagsBits = 0xD000000000000011;
            String.append(_:)(v29);
            _print_unlocked<A, B>(_:_:)();
            v30._countAndFlagsBits = 3943982;
            v30._object = 0xE300000000000000;
            String.append(_:)(v30);
            _print_unlocked<A, B>(_:_:)();
            v31._countAndFlagsBits = 0;
            v31._object = 0xE000000000000000;
            String.append(_:)(v31);

            v32._countAndFlagsBits = 0xD000000000000012;
            v32._object = 0x800000010005EA80;
            String.append(_:)(v32);
            sub_100038900();
            swift_allocError();
            *v33 = 0;
            v33[1] = 0xE000000000000000;
            swift_willThrow();
          }

          ++v18;
          v17 += 2;
          if (v10 == v18)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_32;
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
      }

      v5 = result[v7 + 8];
      ++v2;
      if (v5)
      {
        v2 = v7;
        goto LABEL_10;
      }
    }

LABEL_32:
    __break(1u);
  }

  else
  {
    sub_100038900();
    swift_allocError();
    *v34 = 0;
    v34[1] = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10003831C(char a1, uint64_t a2)
{
  sub_100037F8C(a2);
  if (v2)
  {

    return v5 & 1;
  }

  else
  {
    v28 = &_swiftEmptyDictionarySingleton;
    v27 = 1;
    sub_100035EC0(&v28, &v27, a2);
    v27 = 2;
    sub_100035EC0(&v28, &v27, a2);
    v27 = 3;
    sub_100035EC0(&v28, &v27, a2);
    v27 = 4;
    sub_100035EC0(&v28, &v27, a2);
    v27 = 5;
    sub_100035EC0(&v28, &v27, a2);
    v27 = 6;
    sub_100035EC0(&v28, &v27, a2);
    v24 = a1;
    v27 = 7;
    sub_100035EC0(&v28, &v27, a2);

    v6 = v28;
    sub_100015140(&qword_10007F350, &qword_10005B420);
    v7 = static _DictionaryStorage.copy(original:)();
    v8 = v7;
    v9 = 0;
    v10 = 1 << v6[32];
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v6 + 64;
    v13 = v11 & *(v6 + 8);
    v14 = (v10 + 63) >> 6;
    v25 = v7 + 64;
    v26 = v6;
    if (v13)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v26 + 6) + 8 * v18);
        v28 = *(*(v26 + 7) + 8 * v18);
        swift_bridgeObjectRetain_n();
        sub_100036930(&v28);

        *(v25 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(v8[6] + 8 * v18) = v19;
        *(v8[7] + 8 * v18) = v28;
        v20 = v8[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          break;
        }

        v8[2] = v22;
        if (!v13)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v9;
      while (1)
      {
        v9 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v5 = v24;
          return v5 & 1;
        }

        v17 = *&v12[8 * v9];
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v13 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);

    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_1000385E8(void *a1)
{
  v2 = sub_100015140(&qword_10007F000, &qword_10005B410);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-v4];
  sub_100002288(a1, a1[3]);
  sub_1000387D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11 = 0;
  v6 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100015140(&qword_10007F010, &qword_10005B418);
  v9[15] = 1;
  sub_100038828();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = sub_10003831C(v6 & 1, v10);
  (*(v3 + 8))(v5, v2);
  sub_10001653C(a1);
  return v8 & 1;
}

unint64_t sub_1000387D4()
{
  result = qword_10007F008;
  if (!qword_10007F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F008);
  }

  return result;
}

unint64_t sub_100038828()
{
  result = qword_10007F018;
  if (!qword_10007F018)
  {
    sub_100032974(&qword_10007F010, &qword_10005B418);
    sub_1000388AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F018);
  }

  return result;
}

unint64_t sub_1000388AC()
{
  result = qword_10007F020;
  if (!qword_10007F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F020);
  }

  return result;
}

unint64_t sub_100038900()
{
  result = qword_10007F030;
  if (!qword_10007F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F030);
  }

  return result;
}

uint64_t sub_100038954(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000389A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000389F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100038A10(void *result, int a2)
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

__n128 initializeBufferWithCopyOfBuffer for DelayedNotificationTimetableFactoryConfiguration.Window(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DelayedNotificationTimetableFactoryConfiguration.Window(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DelayedNotificationTimetableFactoryConfiguration.Window(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DelayedNotificationTimetableFactoryConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DelayedNotificationTimetableFactoryConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100038C5C()
{
  result = qword_10007F048;
  if (!qword_10007F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F048);
  }

  return result;
}

unint64_t sub_100038CB4()
{
  result = qword_10007F050;
  if (!qword_10007F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F050);
  }

  return result;
}

unint64_t sub_100038D0C()
{
  result = qword_10007F058;
  if (!qword_10007F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F058);
  }

  return result;
}

unint64_t sub_100038D60()
{
  result = qword_10007F068;
  if (!qword_10007F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F068);
  }

  return result;
}

unint64_t sub_100038DB4()
{
  result = qword_10007F070;
  if (!qword_10007F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F070);
  }

  return result;
}

unint64_t sub_100038E08()
{
  result = qword_10007F078;
  if (!qword_10007F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F078);
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for DelayedNotificationTimetableFactoryConfiguration.Window.DaysOfWeek(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DelayedNotificationTimetableFactoryConfiguration.Window.DaysOfWeek(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[7])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DelayedNotificationTimetableFactoryConfiguration.Window.DaysOfWeek(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}