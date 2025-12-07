uint64_t sub_1000312E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100032454(a1, v5);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v5, 0xB0uLL);
  sub_100003998(&qword_1000DD038, &unk_1000AB9A0);
  swift_allocObject();
  result = Future.init(_:)();
  *a2 = result;
  return result;
}

uint64_t sub_100031384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v6 - 8);
  v8 = &__src[-v7];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = type metadata accessor for TaskPriority();
  sub_100008E2C(v8, 1, 1, v10);
  sub_100032454(a3, __src);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  memcpy(v11 + 4, __src, 0xB0uLL);
  v11[26] = sub_1000326E0;
  v11[27] = v9;

  sub_10004A77C();
}

uint64_t sub_1000314C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1000314EC);
}

uint64_t sub_1000314EC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_100008614(v3 + 11, v3[14]);
  v5 = v3[18];
  v6 = v3[19];
  v7 = *v4;

  sub_10007A58C(v5, v6, v7, v1, v2);
  v8 = v0[1];

  return v8();
}

uint64_t sub_100031590(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000DBA10 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100007DE8(v3, qword_1000E6D18);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = sub_1000170D4(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error connecting to watchlistd for suppression. %s", v6, 0xCu);
      sub_100008A94(v7);
      sub_10000B008(v7);
      sub_10000B008(v6);
    }

    else
    {
    }
  }

  return a2(1, 0);
}

uint64_t sub_100031734(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  sub_10002FDB8();
  sub_100008614((v5 + 16), *(v5 + 40));
  result = dispatch thunk of PersistentStorable.writeEventSubscription(_:isConventionalOrUnified:)();
  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t sub_1000317C4(uint64_t a1, uint64_t a2)
{
  sub_100032454(a2, v4);
  v2 = swift_allocObject();
  memcpy((v2 + 16), v4, 0xB0uLL);
  sub_100003998(&qword_1000DD038, &unk_1000AB9A0);
  sub_10000A6FC(&qword_1000DD040, &qword_1000DD038, &unk_1000AB9A0, &protocol conformance descriptor for Future<A, B>);
  return Deferred.init(createPublisher:)();
}

uint64_t sub_1000318A0@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_100008614(a1, a1[3]);
  result = sub_10000F1CC();
  *a2 = result;
  return result;
}

uint64_t sub_1000318D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_100008614((a2 + 48), *(a2 + 72));
  v6 = SportingEventSubscription.registrationId.getter();
  v8 = v7;
  v9 = sub_10002FF3C();
  sub_100003F50(v4, v5, v6, v8, v9);
  v11 = v10;

  *a3 = v11;
  return result;
}

uint64_t sub_10003198C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100003998(&qword_1000DD020, &unk_1000AB990);
  sub_10000AC48();
  v6 = v5;
  sub_10000ACFC();
  __chkstk_darwin(v7);
  v9 = v12 - v8;
  v12[1] = *a1;
  swift_errorRetain();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  Fail.init(error:)();
  sub_10000A6FC(&qword_1000DD028, &qword_1000DD020, &unk_1000AB990, &protocol conformance descriptor for Fail<A, B>);
  v10 = Publisher.eraseToAnyPublisher()();
  result = (*(v6 + 8))(v9, v4);
  *a2 = v10;
  return result;
}

void sub_100031AE0(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  sub_10002FDB8();
  sub_100008614((v4 + 16), *(v4 + 40));
  v5 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v7 = *(SportingEventSubscription.consumers.getter() + 16);

  if (v7)
  {

LABEL_4:
    *a2 = 1;
    return;
  }

  sub_10000BC8C(v4 + 16, v8);
  v8[6] = v8[4];
  sub_100008614(v8, v8[3]);
  sub_10002FDB8();
  dispatch thunk of PersistentStorable.deleteSportingEventSubscription(canonicalId:isConventionalOrUnified:)();

  sub_100008A94(v8);
  if (!v2)
  {
    goto LABEL_4;
  }
}

void sub_100031C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D48);
  sub_100032454(a2, v14);
  sub_100032454(a2, v13);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315394;
    v9 = v15;
    v10 = v16;

    sub_10003248C(v14);
    v11 = sub_1000170D4(v9, v10, &v12);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    LODWORD(v11) = sub_10002FDB8() & 1;
    sub_10003248C(v13);
    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Tempo /unregister success for %s, isLowCapLiveActivity=%{BOOL}d", v7, 0x12u);
    sub_100008A94(v8);
  }

  else
  {
    sub_10003248C(v13);

    sub_10003248C(v14);
  }
}

uint64_t sub_100031DB8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  v7 = *(a2 + 40);
  sub_10002FDB8();
  sub_100008614((v7 + 16), *(v7 + 40));
  result = dispatch thunk of PersistentStorable.writeEventSubscription(_:isConventionalOrUnified:)();
  if (!v4)
  {
    *a4 = v6;
  }

  return result;
}

uint64_t sub_100031E48(uint64_t a1)
{
  v2 = &_swiftEmptyDictionarySingleton;
  v56 = &_swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = sub_10001EF70(v27, &qword_1000DBD08, &qword_1000AA690))
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (i << 6);
    v13 = *(*(a1 + 48) + v12);
    sub_100032628(*(a1 + 56) + 32 * v12, v54 + 8);
    LOBYTE(v54[0]) = v13;
    v51 = v54[0];
    v52 = v54[1];
    v53 = v55;
    sub_100032628(&v51 + 8, &v33);
    if (v35)
    {
      sub_100008EA8(&v33, &v48);
      v44 = v51;
      v45 = v52;
      v46 = v53;
      sub_100008EA8(&v48, &v41);
      v20 = v2[2];
      if (v2[3] <= v20)
      {
        sub_1000A1D80(v20 + 1, 1, v14, v15, v16, v17, v18, v19, v32, v33, *(&v33 + 1), v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47, v48, *(&v48 + 1), v49, v50, v51, *(&v51 + 1));
      }

      v2 = v56;
      v21 = v44;
      Hasher.init(_seed:)();
      sub_100083914(v21);
      String.hash(into:)();

      result = Hasher._finalize()();
      v22 = (v2 + 8);
      v23 = -1 << *(v2 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~v2[(v24 >> 6) + 8]) == 0)
      {
        v28 = 0;
        v29 = (63 - v23) >> 6;
        while (++v25 != v29 || (v28 & 1) == 0)
        {
          v30 = v25 == v29;
          if (v25 == v29)
          {
            v25 = 0;
          }

          v28 |= v30;
          v31 = *&v22[8 * v25];
          if (v31 != -1)
          {
            v26 = __clz(__rbit64(~v31)) + (v25 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_27;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~v2[(v24 >> 6) + 8])) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *&v22[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
      *(v2[6] + v26) = v21;
      sub_100008EA8(&v41, (v2[7] + 32 * v26));
      ++v2[2];
      v27 = (&v44 + 8);
    }

    else
    {
      sub_10001EF70(&v51, &qword_1000DD030, &unk_1000AC840);
      v27 = &v33;
    }
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100032104()
{
  sub_100003998(&qword_1000DCF20, &qword_1000AB8F0);
  sub_10000AC48();
  v13 = v1;
  v14 = v2;
  sub_10000ACFC();
  __chkstk_darwin(v3);
  v5 = &v12 - v4;
  sub_100008614(v0, v0[3]);
  v12 = sub_10000F1CC();
  v16 = v12;
  sub_1000323D0(v0, __src);
  v6 = swift_allocObject();
  memcpy((v6 + 16), __src, 0x50uLL);
  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DC970, &qword_1000AB3C0);
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10000A6FC(&qword_1000DC978, &qword_1000DC970, &qword_1000AB3C0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  sub_10000AC94();
  sub_10000A6FC(v7, &qword_1000DCF20, &qword_1000AB8F0, v8);
  v9 = v13;
  v10 = Publisher.eraseToAnyPublisher()();
  (*(v14 + 8))(v5, v9);
  return v10;
}

uint64_t sub_100032338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_100008614((a2 + 40), *(a2 + 64));
  sub_10001DA90();
  v6 = Dictionary.init(dictionaryLiteral:)();
  sub_1000039E0(v4, v5, v6, v7, v8);
  v10 = v9;

  *a3 = v10;
  return result;
}

uint64_t sub_100032408()
{
  sub_100008A94((v0 + 16));
  sub_100008A94((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100032500(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10003250C()
{
  sub_100008A94(v0 + 2);

  sub_100008A94(v0 + 8);
  sub_100008A94(v0 + 13);

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_100032584()
{
  sub_100008A94((v0 + 16));

  sub_100008A94((v0 + 64));
  sub_100008A94((v0 + 104));

  return _swift_deallocObject(v0, 200, 7);
}

uint64_t sub_100032628(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000326A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000326EC()
{
  swift_unknownObjectRelease();
  sub_100008A94(v0 + 4);

  sub_100008A94(v0 + 10);
  sub_100008A94(v0 + 15);

  return _swift_deallocObject(v0, 224, 7);
}

uint64_t sub_100032764(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[26];
  v7 = v1[27];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002C904;

  return sub_1000314C8(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_100032828(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_100032868(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000328D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_100032914(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000329B0(void *a1)
{
  sub_100008614(a1, a1[3]);
  sub_100032A6C();
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100008614(v3, v3[3]);
    sub_100032A6C();
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    Date.init(timeIntervalSince1970:)();
    return sub_100008A94(v3);
  }

  return result;
}

uint64_t sub_100032A80()
{
  sub_100003998(&qword_1000DD048, &qword_1000ABAB8);
  swift_allocObject();
  result = PassthroughSubject.init()();
  qword_1000E6CD8 = result;
  return result;
}

uint64_t sub_100032ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DB9D0 != -1)
  {
    swift_once();
  }

  sub_100003998(&qword_1000DD048, &qword_1000ABAB8);
  sub_10000A6FC(&qword_1000DD050, &qword_1000DD048, &qword_1000ABAB8, &protocol conformance descriptor for PassthroughSubject<A, B>);
  Publisher.share()();

  sub_100003998(&qword_1000DD058, &unk_1000ABAC0);
  sub_10000A6FC(&qword_1000DD060, &qword_1000DD058, &unk_1000ABAC0, &protocol conformance descriptor for Publishers.Share<A>);
  v3 = Publisher.eraseToAnyPublisher()();

  qword_1000E6CE0 = v3;
  return result;
}

void *sub_100032C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  sub_100034A3C(a3, v21 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_100008B84(v10, 1, v11);

  if (v12 == 1)
  {
    sub_10001EF70(v10, &qword_1000DC5A8, &qword_1000AAFD0);
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
      v19 = sub_100034E50();

      sub_10001EF70(a3, &qword_1000DC5A8, &qword_1000AAFD0);

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

  sub_10001EF70(a3, &qword_1000DC5A8, &qword_1000AAFD0);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return sub_100034E50();
}

uint64_t sub_100032E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  sub_100034A3C(a3, v21 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_100008B84(v10, 1, v11);

  if (v12 == 1)
  {
    sub_10001EF70(v10, &qword_1000DC5A8, &qword_1000AAFD0);
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

      sub_100003998(&qword_1000DC480, &unk_1000AB420);
      v18 = (v16 | v14);
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_10001EF70(a3, &qword_1000DC5A8, &qword_1000AAFD0);

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

  sub_10001EF70(a3, &qword_1000DC5A8, &qword_1000AAFD0);
  sub_100003998(&qword_1000DC480, &unk_1000AB420);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100033100(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CF1B0, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100033154(char a1)
{
  if (a1)
  {
    return 0x736C656E6E616863;
  }

  else
  {
    return 0x6F724665726F7473;
  }
}

uint64_t sub_100033190(void *a1)
{
  sub_100003998(&qword_1000DD168, &qword_1000ABC28);
  sub_10000AC48();
  __chkstk_darwin(v3);
  v4 = a1[4];
  sub_100008614(a1, a1[3]);
  sub_100034B4C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100003998(&qword_1000DC480, &unk_1000AB420);
    sub_100034BA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v6 = sub_100034E24();
    v7(v6);
  }

  sub_100008A94(a1);
  return v4;
}

uint64_t sub_100033394@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100033100(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000333C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100033154(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000333F8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100033100(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10003342C(uint64_t a1)
{
  v2 = sub_100034B4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100033468(uint64_t a1)
{
  v2 = sub_100034B4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000334A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100033190(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1000334D4()
{
  type metadata accessor for CloudChannelFetchTask();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  qword_1000E6CE8 = v0;
  return result;
}

uint64_t sub_100033514()
{
  sub_10001BEC4();
  v1[4] = v0;
  sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100033608);
}

uint64_t sub_100033608(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v4 = v1[6];
  v5 = v1[4];
  v6 = Date.init()();
  sub_10008C99C(v6);
  v8 = v7;
  (*(v3 + 8))(v2, v4);
  v9 = *(v5 + 112);
  v1[9] = v9;
  if (v9)
  {

    v10 = swift_task_alloc();
    v1[10] = v10;
    sub_100003998(&qword_1000DC480, &unk_1000AB420);
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    *v10 = v1;
    v10[1] = sub_10003385C;
    v11 = v1 + 3;
  }

  else
  {
    v13 = v1[4];
    v12 = v1[5];
    v14 = type metadata accessor for TaskPriority();
    sub_100008E2C(v12, 1, 1, v14);
    v15 = sub_1000347FC();
    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v15;
    v16[4] = v13;
    v16[5] = v8;
    swift_retain_n();
    v17 = sub_100032E70(0, 0, v12, &unk_1000ABB70, v16);
    v1[12] = v17;
    *(v5 + 112) = v17;

    v18 = swift_task_alloc();
    v1[13] = v18;
    sub_100003998(&qword_1000DC480, &unk_1000AB420);
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    *v18 = v1;
    v18[1] = sub_1000339E4;
    v11 = v1 + 2;
  }

  return Task.value.getter(v11);
}

uint64_t sub_10003385C()
{
  sub_10001BF48();
  sub_10001BE94();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {
    v4 = sub_100033B90;
  }

  else
  {
    v4 = sub_10003397C;
  }

  return _swift_task_switch(v4);
}

uint64_t sub_10003397C()
{
  sub_10001BEC4();

  sub_100034E70();

  v0 = sub_100034E3C();

  return v1(v0);
}

uint64_t sub_1000339E4()
{
  sub_10001BF48();
  sub_10001BE94();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {
    v4 = sub_100033BF8;
  }

  else
  {
    v4 = sub_100033B20;
  }

  return _swift_task_switch(v4);
}

uint64_t sub_100033B20()
{
  sub_10001BEC4();
  *(*(v0 + 32) + 112) = 0;

  sub_100034E70();

  v1 = sub_100034E3C();

  return v2(v1);
}

uint64_t sub_100033B90()
{
  sub_10001BEC4();

  sub_100034E70();

  sub_10001BEDC();

  return v0();
}

uint64_t sub_100033BF8()
{
  sub_10001BEC4();
  *(*(v0 + 32) + 112) = 0;

  sub_100034E70();

  sub_10001BEDC();

  return v1();
}

uint64_t sub_100033C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[20] = a1;
  sub_100003998(&qword_1000DD148, &qword_1000ABB78);
  v5[23] = swift_task_alloc();
  v6 = sub_100003998(&qword_1000DD150, &qword_1000ABB80);
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  v7 = sub_100003998(&qword_1000DD158, &qword_1000ABB88);
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();

  return _swift_task_switch(sub_100033DDC);
}

uint64_t sub_100033DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = v3;
  if (qword_1000DBA40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v3[30] = sub_100007DE8(v4, qword_1000E6DA8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "fetching available cloud channels", v7, 2u);
    sub_10000B008(v7);
  }

  v3[31] = Dictionary.init(dictionaryLiteral:)();
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  if (qword_1000DB9B8 != -1)
  {
    swift_once();
  }

  v9 = v3[25];
  v8 = v3[26];
  v10 = v3[24];
  v11 = v3[22];
  v12 = qword_1000E6CC0;
  v25[3] = type metadata accessor for BagProvider();
  v25[4] = &off_1000D0860;
  v25[0] = v12;

  sub_100002C48(v23, 0, 1, v25);
  v13 = sub_10003461C(v11);
  sub_100004710(0, 0, v13, v14, v15);
  v17 = v16;

  sub_10002C738((v3 + 2));
  v3[17] = v17;
  sub_100003998(&qword_1000DBE10, &qword_1000AA720);
  sub_10000A6FC(&qword_1000DBE18, &qword_1000DBE10, &qword_1000AA720, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.values.getter();

  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v9 + 8))(v8, v10);
  v3[32] = sub_1000347FC();
  v18 = sub_10000A6FC(&qword_1000DD160, &qword_1000DD158, &qword_1000ABB88, &protocol conformance descriptor for AsyncThrowingPublisher<A>.Iterator);
  v19 = swift_task_alloc();
  v3[33] = v19;
  *v19 = v3;
  v19[1] = sub_100034100;
  v20 = v3[27];
  v21 = v3[23];

  return dispatch thunk of AsyncIteratorProtocol.next()(v21, v20, v18);
}

uint64_t sub_100034100()
{
  sub_10001BF48();
  v2 = *v1;
  sub_10001BE94();
  *v3 = v2;
  *(v2 + 272) = v0;

  if (v0)
  {
    v4 = *(v2 + 168);

    if (v4)
    {
      swift_getObjectType();
      dispatch thunk of Actor.unownedExecutor.getter();
    }

    v5 = sub_1000343F4;
  }

  else
  {
    v5 = sub_100034254;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_100034254()
{
  sub_10001BF48();
  v1 = *(v0 + 184);
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  v2 = sub_100003998(&qword_1000DBE30, &qword_1000AA730);
  v3 = sub_100008B84(v1, 1, v2);
  v4 = *(v0 + 248);
  if (v3 != 1)
  {
    v5 = *(v0 + 184);

    v4 = *(v5 + *(v2 + 40) + 16);

    sub_10001EF70(v5, &qword_1000DBE30, &qword_1000AA730);
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v6, v7, "fetched %ld available cloud channels", v8, 0xCu);
    sub_10000B008(v8);
  }

  else
  {
  }

  **(v0 + 160) = v4;

  sub_10001BEDC();

  return v9();
}

uint64_t sub_1000343F4()
{
  sub_10001BEC4();
  *(v0 + 144) = *(v0 + 272);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_100034488);
}

uint64_t sub_100034488()
{
  v11 = v0;
  (*(v0[28] + 8))(v0[29], v0[27]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1000170D4(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "failed to fetch cloud channels. error=%s", v3, 0xCu);
    sub_100008A94(v4);
    sub_10000B008(v4);
    sub_10000B008(v3);
  }

  swift_willThrow();

  sub_10001BEDC();

  return v8();
}

uint64_t sub_10003461C(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  sub_10000AC48();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003998(&qword_1000DD138, &unk_1000ABB58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB130;
  *(inited + 32) = 8;
  v9 = Date.init()();
  sub_10008C99C(v9);
  v11 = v10;
  (*(v4 + 8))(v7, v2);
  *(inited + 64) = &type metadata for UInt64;
  *(inited + 40) = v11;
  *(inited + 72) = 9;
  *(inited + 104) = &type metadata for UInt64;
  *(inited + 80) = a1;
  *(inited + 112) = 45;
  *(inited + 144) = &type metadata for EventType.EventName;
  *(inited + 120) = 3;
  sub_10001DA90();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10003477C()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_1000347FC()
{
  result = qword_1000DD140;
  if (!qword_1000DD140)
  {
    type metadata accessor for CloudChannelFetchTask();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD140);
  }

  return result;
}

uint64_t sub_100034850()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100034890(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100034950;

  return sub_100033C68(a1, v4, v5, v7, v6);
}

uint64_t sub_100034950()
{
  sub_10001BEC4();

  sub_10001BEDC();

  return v0();
}

uint64_t sub_100034A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_100034AAC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100034AC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_100034B00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100034B4C()
{
  result = qword_1000DD170;
  if (!qword_1000DD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD170);
  }

  return result;
}

unint64_t sub_100034BA0()
{
  result = qword_1000DD178;
  if (!qword_1000DD178)
  {
    sub_1000089A8(&qword_1000DC480, &unk_1000AB420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD178);
  }

  return result;
}

_BYTE *sub_100034C1C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100034CE8);
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

unint64_t sub_100034D20()
{
  result = qword_1000DD180;
  if (!qword_1000DD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD180);
  }

  return result;
}

unint64_t sub_100034D78()
{
  result = qword_1000DD188;
  if (!qword_1000DD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD188);
  }

  return result;
}

unint64_t sub_100034DD0()
{
  result = qword_1000DD190;
  if (!qword_1000DD190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD190);
  }

  return result;
}

uint64_t sub_100034E50()
{

  return swift_task_create();
}

uint64_t sub_100034E70()
{
}

uint64_t sub_100034E88@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void)@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100003998(&qword_1000DD2F8, &qword_1000ABEC8);
  result = a2(a1, *(a1 + *(v6 + 48)), *(a1 + *(v6 + 48) + 8));
  *a3 = result;
  return result;
}

Swift::Int sub_100034EEC(uint64_t a1)
{
  v1 = &_swiftEmptyDictionarySingleton;
  v54 = &_swiftEmptyDictionarySingleton;
  v2 = a1 + 64;
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
  v55 = a1;

  v8 = 0;
  while (v5)
  {
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(v55 + 48) + (v10 | (v8 << 6)));
    sub_10003BC90();
    LOBYTE(v51) = v11;
    v48 = v51;
    v49 = v52;
    v50 = v53;
    sub_10003BC90();
    if (v32)
    {
      sub_100008EA8(&v30, &v45);
      v41 = v48;
      v42 = v49;
      v43 = v50;
      sub_100008EA8(&v45, &v38);
      v18 = v1[2];
      if (v1[3] <= v18)
      {
        sub_1000A1D80(v18 + 1, 1, v12, v13, v14, v15, v16, v17, v29, v30, *(&v30 + 1), v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44, v45, *(&v45 + 1), v46, v47, v48, *(&v48 + 1));
      }

      v1 = v54;
      v19 = v41;
      Hasher.init(_seed:)();
      sub_100083914(v19);
      String.hash(into:)();

      result = Hasher._finalize()();
      v20 = (v1 + 8);
      v21 = -1 << *(v1 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~v1[(v22 >> 6) + 8]) == 0)
      {
        v25 = 0;
        v26 = (63 - v21) >> 6;
        while (++v23 != v26 || (v25 & 1) == 0)
        {
          v27 = v23 == v26;
          if (v23 == v26)
          {
            v23 = 0;
          }

          v25 |= v27;
          v28 = *&v20[8 * v23];
          if (v28 != -1)
          {
            v24 = __clz(__rbit64(~v28)) + (v23 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~v1[(v22 >> 6) + 8])) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *&v20[(v24 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v24;
      *(v1[6] + v24) = v19;
      sub_100008EA8(&v38, (v1[7] + 32 * v24));
      ++v1[2];
      result = sub_10001BB44(&v41 + 8, &qword_1000DBD08, &qword_1000AA690);
    }

    else
    {
      sub_10001BB44(&v48, &qword_1000DD030, &unk_1000AC840);
      result = sub_10001BB44(&v30, &qword_1000DBD08, &qword_1000AA690);
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

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000351E0()
{
  v1 = type metadata accessor for SubscriptionRegisterOperation(0);
  v69 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v70 = v2;
  v73 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003998(&qword_1000DD198, &qword_1000ABDB0);
  sub_10000AC48();
  v56 = v4;
  v57 = v3;
  sub_10000ACFC();
  __chkstk_darwin(v5);
  sub_10000ADEC();
  v55 = v6;
  sub_100003998(&qword_1000DD1A0, &qword_1000ABDB8);
  sub_10000AC48();
  v59 = v8;
  v60 = v7;
  sub_10000ACFC();
  __chkstk_darwin(v9);
  sub_10000ADEC();
  v58 = v10;
  sub_100003998(&qword_1000DD1A8, &qword_1000ABDC0);
  sub_10000AC48();
  v62 = v12;
  v63 = v11;
  sub_10000ACFC();
  __chkstk_darwin(v13);
  sub_10000ADEC();
  v61 = v14;
  sub_100003998(&qword_1000DD1B0, &qword_1000ABDC8);
  sub_10000AC48();
  v66 = v16;
  v67 = v15;
  sub_10000ACFC();
  __chkstk_darwin(v17);
  sub_10000ADEC();
  v64 = v18;
  v19 = sub_100003998(&qword_1000DD1B8, &unk_1000ABDD0);
  sub_10000AC48();
  v21 = v20;
  sub_10000ACFC();
  __chkstk_darwin(v22);
  sub_10000ADEC();
  v65 = v23;
  v24 = v0;
  sub_100008614((v0[5] + 16), *(v0[5] + 40));
  v25 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  v26 = v25;
  if (!v25)
  {
    goto LABEL_5;
  }

  v27 = v25;
  v28 = *(SportingEventSubscription.consumers.getter() + 16);

  if (!v28)
  {

LABEL_5:
    v30 = v24[3];
    v72 = v24;
    sub_100008614(v24, v30);
    v50 = sub_10000F1CC();
    v74 = v50;
    v71 = type metadata accessor for SubscriptionRegisterOperation;
    sub_10003B578();
    v69 = *(v69 + 80);
    v54 = v21;
    v31 = (v69 + 16) & ~v69;
    swift_allocObject();
    v68 = type metadata accessor for SubscriptionRegisterOperation;
    sub_10003B5D0();
    v49[0] = static Subscribers.Demand.unlimited.getter();
    v53 = v26;
    sub_100003998(&qword_1000DC970, &qword_1000AB3C0);
    v52 = v19;
    sub_100003998(&qword_1000DD1C0, &qword_1000ABDE0);
    sub_10000A6FC(&qword_1000DC978, &qword_1000DC970, &qword_1000AB3C0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v51 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_10000A6FC(&qword_1000DD1C8, &qword_1000DD1C0, &qword_1000ABDE0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v32 = v55;
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    sub_10003B578();
    v49[1] = v31;
    swift_allocObject();
    sub_10003B5D0();
    static Subscribers.Demand.unlimited.getter();
    sub_100003998(&qword_1000DD1D0, &qword_1000ABDE8);
    sub_100003998(&qword_1000DD1D8, &unk_1000ABDF0);
    v50 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
    sub_10000A6FC(&qword_1000DD1E0, &qword_1000DD198, &qword_1000ABDB0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    sub_10000A6FC(&qword_1000DD1E8, &qword_1000DD1D8, &unk_1000ABDF0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v33 = v58;
    v34 = v57;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v56 + 8))(v32, v34);
    sub_10003B578();
    v35 = swift_allocObject();
    sub_10003B5D0();
    v36 = swift_allocObject();
    *(v36 + 16) = sub_10003808C;
    *(v36 + 24) = v35;
    sub_10000A6FC(&qword_1000DD1F0, &qword_1000DD1A0, &qword_1000ABDB8, v50);
    v37 = v60;
    v38 = v61;
    Publisher.tryFilter(_:)();

    (*(v59 + 8))(v33, v37);
    sub_10003B578();
    v39 = swift_allocObject();
    sub_10003B5D0();
    v40 = swift_allocObject();
    *(v40 + 16) = sub_10003A054;
    *(v40 + 24) = v39;
    sub_10000A6FC(&qword_1000DD1F8, &qword_1000DD1A8, &qword_1000ABDC0, &protocol conformance descriptor for Publishers.TryFilter<A>);
    v41 = v63;
    v42 = v64;
    Publisher.map<A>(_:)();

    (*(v62 + 8))(v38, v41);
    v43 = sub_10001C53C();
    sub_100003998(v43, v44);
    sub_10000A6FC(&qword_1000DD200, &qword_1000DD1B0, &qword_1000ABDC8, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790, v51);
    v45 = v65;
    v46 = v67;
    Publisher.catch<A>(_:)();
    (*(v66 + 8))(v42, v46);
    sub_10000A6FC(&qword_1000DD208, &qword_1000DD1B8, &unk_1000ABDD0, &protocol conformance descriptor for Publishers.Catch<A, B>);
    v47 = v52;
    v29 = Publisher.eraseToAnyPublisher()();

    (*(v54 + 8))(v45, v47);
    return v29;
  }

  v29 = sub_100035B6C();

  return v29;
}

uint64_t sub_100035B6C()
{
  v1 = v0;
  v2 = sub_100003998(&qword_1000DD020, &unk_1000AB990);
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v3 = sub_100003998(&qword_1000DCF70, &unk_1000AB920);
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v30 = &v28 - v4;
  v5 = sub_100003998(&qword_1000DCF78, &qword_1000ABE00);
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v31 = &v28 - v6;
  v7 = sub_100003998(&qword_1000DD210, &qword_1000ABE08);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for SportingEventSubscription.Metadata();
  v29 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[2] = SportingEventSubscription.consumers.getter();
  v16 = v0[17];
  v17 = v0[18];

  sub_100019204(v38, v16, v17);

  if (v0[24] && v0[26])
  {
    v28 = v0[23];
    type metadata accessor for SubscriptionRegisterOperation(0);
    sub_10003BC90();
    v18 = type metadata accessor for SubscriptionRegisterOperation.PreferredData(0);
    if (sub_100008B84(v9, 1, v18) == 1)
    {
      sub_10001BB44(v9, &qword_1000DD210, &qword_1000ABE08);
      sub_100008E2C(v12, 1, 1, v13);
    }

    else
    {
      sub_10003BC90();
      sub_10003B2C0(v9, type metadata accessor for SubscriptionRegisterOperation.PreferredData);
      if (sub_100008B84(v12, 1, v13) != 1)
      {
        v27 = v29;
        (*(v29 + 32))(v15, v12, v13);
        v19 = SportingEventSubscription.byChanging(leagueId:sportId:metadata:consumers:)();

        (*(v27 + 8))(v15, v13);
        goto LABEL_8;
      }
    }

    sub_10001BB44(v12, &qword_1000DD218, &unk_1000ABE10);
  }

  v19 = SportingEventSubscription.byChangingConsumers(_:)();

LABEL_8:
  sub_100008614((v1[5] + 16), *(v1[5] + 40));
  v20 = v19;
  dispatch thunk of PersistentStorable.writeEventSubscription(_:isConventionalOrUnified:)();

  LOBYTE(v38[0]) = 1;
  v21 = v30;
  Just.init(_:)();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  v22 = v31;
  v23 = v33;
  Just.setFailureType<A>(to:)();
  (*(v32 + 8))(v21, v23);
  sub_10000A6FC(&qword_1000DCFC0, &qword_1000DCF78, &qword_1000ABE00, &protocol conformance descriptor for Result<A, B>.Publisher);
  v24 = v35;
  v25 = Publisher.eraseToAnyPublisher()();

  (*(v34 + 8))(v22, v24);
  return v25;
}

uint64_t sub_1000361D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v66 = a3;
  v64 = sub_100003998(&qword_1000DD2D8, &qword_1000ABEB0);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v60 = &v55 - v5;
  v65 = sub_100003998(&qword_1000DD2E0, &qword_1000ABEB8);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v55 - v6;
  v7 = type metadata accessor for SubscriptionRegisterOperation(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v55 - v11;
  __chkstk_darwin(v13);
  v15 = (&v55 - v14);
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  v19 = *a1;
  v20 = a1[1];
  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  v68 = v19;
  v21 = type metadata accessor for Logger();
  sub_100007DE8(v21, qword_1000E6D48);
  sub_10003B578();
  sub_10003B578();
  sub_10003B578();
  sub_10003B578();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  v67 = v20;
  if (v24)
  {
    v25 = swift_slowAlloc();
    LODWORD(v58) = v23;
    v26 = v25;
    v59 = swift_slowAlloc();
    __src[0] = v59;
    *v26 = 136316162;
    v28 = *(v18 + 19);
    v27 = *(v18 + 20);

    sub_10003B2C0(v18, type metadata accessor for SubscriptionRegisterOperation);
    v29 = sub_1000170D4(v28, v27, __src);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_1000170D4(v68, v67, __src);
    *(v26 + 22) = 2080;
    v30 = (*sub_100008614(v15, v15[3]) + OBJC_IVAR____TtC7sportsd11ApsListener_currentAPSConnectionEnvironment);
    v31 = *v30;
    v32 = v30[1];

    sub_10003B2C0(v15, type metadata accessor for SubscriptionRegisterOperation);
    v33 = sub_1000170D4(v31, v32, __src);

    *(v26 + 24) = v33;
    *(v26 + 32) = 2080;
    v34 = *(v12 + 17);
    v35 = *(v12 + 18);

    sub_10003B2C0(v12, type metadata accessor for SubscriptionRegisterOperation);
    v36 = sub_1000170D4(v34, v35, __src);

    *(v26 + 34) = v36;
    *(v26 + 42) = 2080;
    sub_100069EA8(v9[256]);
    v38 = v37;
    v40 = v39;
    sub_10003B2C0(v9, type metadata accessor for SubscriptionRegisterOperation);
    v41 = sub_1000170D4(v38, v40, __src);

    *(v26 + 44) = v41;
    _os_log_impl(&_mh_execute_header, v22, v58, "Tempo /register with id=%s, push_token=%s, aps_env=%s consumer_id=%s, applicationType=%s", v26, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10003B2C0(v9, type metadata accessor for SubscriptionRegisterOperation);
    sub_10003B2C0(v12, type metadata accessor for SubscriptionRegisterOperation);
    sub_10003B2C0(v18, type metadata accessor for SubscriptionRegisterOperation);
    sub_10003B2C0(v15, type metadata accessor for SubscriptionRegisterOperation);
  }

  sub_10000BC8C(a2 + 56, v70);
  v42 = sub_100008614(v70, v70[3]);
  v43 = *(a2 + 160);
  v58 = *(a2 + 152);
  v44 = *(a2 + 192);
  v57 = *(a2 + 184);
  LODWORD(v59) = *(a2 + 256);
  v56 = *(a2 + 232);
  v45 = sub_100036B40();
  v55 = sub_100034EEC(v45);

  __src[0] = *(*sub_100008614(v42 + 7, v42[10]) + 24);
  __src[12] = *(*sub_100008614(v42 + 7, v42[10]) + 48);

  sub_100003998(&qword_1000DBD60, &qword_1000ABEC0);
  sub_100003998(&qword_1000DC970, &qword_1000AB3C0);
  sub_10000A6FC(&qword_1000DBD70, &qword_1000DBD60, &qword_1000ABEC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000A6FC(&qword_1000DC978, &qword_1000DC970, &qword_1000AB3C0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v46 = v60;
  Publishers.Zip.init(_:_:)();
  sub_1000097A0(v42, __src);
  v47 = swift_allocObject();
  v48 = v67;
  *(v47 + 16) = v68;
  *(v47 + 24) = v48;
  *(v47 + 32) = v58;
  *(v47 + 40) = v43;
  *(v47 + 48) = v57;
  *(v47 + 56) = v44;
  *(v47 + 64) = v56;
  *(v47 + 65) = v59;
  memcpy((v47 + 72), __src, 0x60uLL);
  *(v47 + 168) = v55;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_10003BC3C;
  *(v49 + 24) = v47;

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DD1C0, &qword_1000ABDE0);
  sub_10000A6FC(&qword_1000DD2E8, &qword_1000DD2D8, &qword_1000ABEB0, &protocol conformance descriptor for Publishers.Zip<A, B>);
  sub_10000A6FC(&qword_1000DD1C8, &qword_1000DD1C0, &qword_1000ABDE0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v50 = v61;
  v51 = v64;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v62 + 8))(v46, v51);
  sub_10000A6FC(&qword_1000DD2F0, &qword_1000DD2E0, &qword_1000ABEB8, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v52 = v65;
  v53 = Publisher.eraseToAnyPublisher()();
  (*(v63 + 8))(v50, v52);
  *v66 = v53;
  return sub_100008A94(v70);
}

uint64_t sub_100036AA0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100036AD8()
{
  sub_10003C23C();
  sub_10003C284();
  v0 = sub_10003C25C();

  return sub_1000361D8(v0, v1, v2);
}

uint64_t sub_100036B40()
{
  v1 = v0;
  v23 = type metadata accessor for Date();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000ABD90;
  *(inited + 32) = 3;
  v6 = *(v1 + 152);
  v7 = *(v1 + 160);
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  *(inited + 72) = 21;
  v8 = type metadata accessor for SubscriptionRegisterOperation(0);
  v9 = (v1 + v8[20]);
  v10 = *v9;
  v11 = v9[1];
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = v10;
  *(inited + 88) = v11;
  *(inited + 112) = 22;
  v12 = *(v1 + 256);
  sub_100069EA8(*(v1 + 256));
  *(inited + 144) = &type metadata for String;
  *(inited + 120) = v13;
  *(inited + 128) = v14;
  *(inited + 152) = 8;

  v15 = Date.init()();
  sub_10008C99C(v15);
  v17 = v16;
  (*(v2 + 8))(v4, v23);
  *(inited + 184) = &type metadata for UInt64;
  *(inited + 160) = v17;
  *(inited + 192) = 9;
  v18 = *(v1 + v8[19]);
  *(inited + 224) = &type metadata for UInt64;
  *(inited + 200) = v18;
  *(inited + 232) = 44;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = (v12 < 6) & (0x27u >> v12);
  *(inited + 272) = 45;
  *(inited + 304) = &type metadata for EventType.EventName;
  *(inited + 280) = 0;
  *(inited + 312) = 1;
  v19 = (v1 + v8[21]);
  v21 = *v19;
  v20 = v19[1];
  *(inited + 344) = &type metadata for String;
  *(inited + 320) = v21;
  *(inited + 328) = v20;

  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100036D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v72 = a3;
  v73 = a2;
  v4 = sub_100003998(&qword_1000DBC40, &qword_1000AA618);
  v5 = v4 - 8;
  v61 = *(v4 - 8);
  v62 = *(v61 + 64);
  __chkstk_darwin(v4);
  v64 = &v57 - v6;
  v7 = sub_100003998(&qword_1000DD270, &qword_1000ABE78);
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v57 = &v57 - v8;
  v67 = sub_100003998(&qword_1000DD278, &qword_1000ABE80);
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v60 = &v57 - v9;
  v68 = sub_100003998(&qword_1000DD280, &qword_1000ABE88);
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v63 = &v57 - v10;
  v70 = sub_100003998(&qword_1000DD1D0, &qword_1000ABDE8);
  __chkstk_darwin(v70);
  v12 = &v57 - v11;
  v13 = sub_100003998(&qword_1000DD288, &qword_1000ABE90);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v57 - v15;
  v17 = sub_100003998(&qword_1000DD290, &qword_1000ABE98);
  v69 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v57 - v18;
  v20 = *(v5 + 48);
  v71 = a1;
  v21 = a1 + v20;
  v22 = *(a1 + v20 + 48);
  if (!v22 || (v24 = *(v73 + 152), v23 = *(v73 + 160), (v25 = sub_10007C02C(v24, v23, v22)) == 0))
  {
    v34 = *(v70 + 48);
    v35 = *(v70 + 64);
    sub_10003BC90();
    *&v12[v34] = _swiftEmptyArrayStorage;
    *&v12[v35] = xmmword_1000ABDA0;
    Just.init(_:)();
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    Just.setFailureType<A>(to:)();
    (*(v14 + 8))(v16, v13);
    sub_10000A6FC(&qword_1000DD298, &qword_1000DD290, &qword_1000ABE98, &protocol conformance descriptor for Result<A, B>.Publisher);
    v36 = Publisher.eraseToAnyPublisher()();
    v37 = v69;
LABEL_14:
    result = (*(v37 + 8))(v19, v17);
    *v72 = v36;
    return result;
  }

  v26 = v25;
  v27 = v73;
  v28 = dispatch thunk of SportingEvent.competitors.getter();

  v30 = *(v21 + 24);
  if (v30)
  {
    v29 = sub_10007C074(v24, v23, v30);
    v31 = v29;
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  __chkstk_darwin(v29);
  *(&v57 - 2) = v38;
  *(&v57 - 1) = v27;
  sub_100092A08(sub_10003B670, (&v57 - 4), v28);
  v40 = v39;

  v41 = *(v40 + 16);
  if (!v41)
  {

    v49 = _swiftEmptyArrayStorage;
LABEL_13:
    v74 = v49;
    sub_100003998(&qword_1000DD2A0, &qword_1000ABEA0);
    sub_100003998(&qword_1000DD2A8, &qword_1000ABEA8);
    sub_10000A6FC(&qword_1000DD2B0, &qword_1000DD2A0, &qword_1000ABEA0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_10000A6FC(&qword_1000DD2B8, &qword_1000DD2A8, &qword_1000ABEA8, &protocol conformance descriptor for [A]);
    v50 = v57;
    Publishers.MergeMany.init<A>(_:)();
    sub_10000A6FC(&qword_1000DD2C0, &qword_1000DD270, &qword_1000ABE78, &protocol conformance descriptor for Publishers.MergeMany<A>);
    v51 = v59;
    v52 = v60;
    Publisher.collect()();
    (*(v58 + 8))(v50, v51);
    sub_10003BC90();
    v53 = (v62 + ((*(v61 + 80) + 16) & ~*(v61 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    sub_10003BAC8();
    v55 = (v54 + v53);
    *v55 = v31;
    v55[1] = v33;
    sub_10000A6FC(&qword_1000DD2C8, &qword_1000DD278, &qword_1000ABE80, &protocol conformance descriptor for Publishers.Collect<A>);
    v19 = v63;
    v56 = v67;
    Publisher.map<A>(_:)();

    (*(v65 + 8))(v52, v56);
    sub_10000A6FC(&qword_1000DD2D0, &qword_1000DD280, &qword_1000ABE88, &protocol conformance descriptor for Publishers.Map<A, B>);
    v17 = v68;
    v36 = Publisher.eraseToAnyPublisher()();
    v37 = v66;
    goto LABEL_14;
  }

  v73 = v31;
  v74 = _swiftEmptyArrayStorage;

  result = specialized ContiguousArray.reserveCapacity(_:)();
  v43 = 0;
  v44 = (v40 + 56);
  while (v43 < *(v40 + 16))
  {
    ++v43;
    v45 = *(v44 - 3);
    v46 = *(v44 - 2);
    v47 = *(v44 - 1);
    v48 = *v44;

    sub_10002D48C(v45, v46, v47, v48);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    v44 += 4;
    if (v41 == v43)
    {

      v31 = v73;
      v49 = v74;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100037660()
{
  type metadata accessor for SubscriptionRegisterOperation(0);
  sub_10003C224();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  sub_100008A94((v1 + v4));

  sub_100008A94((v1 + v4 + 56));
  sub_100008A94((v1 + v4 + 96));

  v7 = *(v0 + 72);
  type metadata accessor for SubscriptionRegisterOperation.PreferredData(0);
  v8 = sub_10003C26C();
  if (!sub_100008B84(v8, v9, v10))
  {
    v11 = type metadata accessor for SportingEventSubscription.Metadata();
    v12 = sub_10003C26C();
    if (!sub_100008B84(v12, v13, v11))
    {
      sub_10000ACDC();
      (*(v14 + 8))(v1 + v4 + v7, v11);
    }
  }

  sub_10000AE38();
  sub_10000AE38();

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

uint64_t sub_1000377D4()
{
  sub_10003C23C();
  sub_10003C284();
  v0 = sub_10003C25C();

  return sub_100036D90(v0, v1, v2);
}

void sub_10003783C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for TemplateImageUrl.ImageFormat();
  v57 = *(v9 - 8);
  __chkstk_darwin(v9);
  v55 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  __chkstk_darwin(v11 - 8);
  v56 = &v47 - v12;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v54 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_24;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_24;
  }

  v16 = *a1;
  v17 = sub_100017538(*(a3 + 152), *(a3 + 160));
  if ((v18 & 1) == 0)
  {
    goto LABEL_24;
  }

  v50 = v14;
  v19 = (*(a2 + 56) + 16 * v17);
  v20 = v19[1];
  v53 = *v19;

  v21 = SportingEventCompetitorContainer.competitor.getter();
  v22 = dispatch thunk of SportingEventCompetitor.images.getter();

  if (!v22)
  {

LABEL_24:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  v51 = v20;
  v52 = v4;
  v47 = v16;
  v48 = v9;
  v49 = v13;
  v23 = sub_10001BE20(v22);
  for (i = 0; ; ++i)
  {
    if (v23 == i)
    {

      goto LABEL_24;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v25 = *(v22 + 8 * i + 32);
    }

    v26 = v25;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    if (SportingEventImage.type.getter() == 1869049676 && v27 == 0xE400000000000000)
    {
      break;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      goto LABEL_21;
    }
  }

LABEL_21:

  SportingEventImage.token.getter();

  static TemplateImageUrl.templateThumbUrl(host:token:)();
  v31 = v30;

  v32 = v48;
  v33 = v49;
  if (!v31)
  {
    goto LABEL_24;
  }

  v34 = v57;
  v35 = v55;
  (*(v57 + 104))(v55, enum case for TemplateImageUrl.ImageFormat.png(_:), v48);
  v36 = v56;
  static TemplateImageUrl.imageUrl(templateUrl:width:height:format:)();

  (*(v34 + 8))(v35, v32);
  if (sub_100008B84(v36, 1, v33) == 1)
  {
    sub_10001BB44(v36, &unk_1000DD7B0, &qword_1000AC150);
    goto LABEL_24;
  }

  v37 = v50;
  v38 = v54;
  (*(v50 + 32))(v54, v36, v33);
  v39 = SportingEventCompetitorContainer.competitor.getter();
  v40 = SportingEventCompetitor.canonicalId.getter();
  v42 = v41;

  v43 = URL.absoluteString.getter();
  v44 = v37;
  v46 = v45;
  (*(v44 + 8))(v38, v33);
  *a4 = v40;
  *(a4 + 8) = v42;
  *(a4 + 16) = v43;
  *(a4 + 24) = v46;
}

uint64_t sub_100037CA0@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = sub_100003998(&qword_1000DD1D0, &qword_1000ABDE8);
  v10 = *(v9 + 48);
  v11 = (a5 + *(v9 + 64));
  sub_10003BC90();
  *(a5 + v10) = v8;
  *v11 = a3;
  v11[1] = a4;
}

uint64_t sub_100037D48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for SubscriptionRegisterOperation(0);
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  __chkstk_darwin(v10 - 8);
  v31 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v12 - 8);
  v29 = &v28 - v13;
  v14 = sub_100003998(&qword_1000DBC40, &qword_1000AA618);
  v15 = *(a1 + *(v14 + 40) + 48);
  if (v15)
  {
    v16 = sub_10007C02C(a5[19], a5[20], v15);
  }

  else
  {
    v16 = 0;
  }

  if (a4)
  {
    v17 = a3;
  }

  else
  {
    v17 = 0;
  }

  if (a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v19 = sub_100038120(a1, a2, v17, v18);

  if (v16)
  {
    type metadata accessor for ApsMessageProcessingOperation(0);
    v20 = v16;
    v21 = v19;
    sub_100092B94(v20, v19);
  }

  sub_100039850(*(a1 + *(v14 + 36)), *(a1 + *(v14 + 36) + 8));
  sub_100008614((a5[5] + 16), *(a5[5] + 40));
  v22 = v32;
  dispatch thunk of PersistentStorable.writeEventSubscription(_:isConventionalOrUnified:)();
  if (v22 || (v23 = SportingEventSubscription.consumers.getter(), v24 = sub_100049B40(0xD000000000000011, 0x80000001000B0480, v23), , !v24))
  {
  }

  else
  {
    v25 = type metadata accessor for TaskPriority();
    sub_100008E2C(v29, 1, 1, v25);
    sub_10003B578();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    sub_10003B5D0();
    sub_10004A77C();
  }

  return 1;
}

uint64_t sub_10003808C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubscriptionRegisterOperation(0);
  sub_10003C284();
  return sub_100037D48(a1, a2, a3, a4, (v4 + v9)) & 1;
}

uint64_t sub_100038120(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v170 = a4;
  v169 = a3;
  v206 = a2;
  v209 = a1;
  v5 = sub_100003998(&qword_1000DD220, &unk_1000ABE30);
  __chkstk_darwin(v5 - 8);
  v7 = &v161 - v6;
  v208 = type metadata accessor for SportingEventRunningClockFeature();
  v190 = *(v208 - 8);
  __chkstk_darwin(v208);
  v188 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  __chkstk_darwin(v9 - 8);
  v192 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v191 = &v161 - v12;
  __chkstk_darwin(v13);
  v193 = &v161 - v14;
  v177 = type metadata accessor for Sport();
  v176 = *(v177 - 8);
  __chkstk_darwin(v177);
  v175 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003998(&qword_1000DD228, &qword_1000ABE40);
  __chkstk_darwin(v16 - 8);
  v182 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v166 = &v161 - v19;
  v20 = sub_100003998(&qword_1000DD230, &qword_1000ABE48);
  __chkstk_darwin(v20 - 8);
  v163 = &v161 - v21;
  v174 = type metadata accessor for Date();
  v168 = *(v174 - 8);
  __chkstk_darwin(v174);
  v173 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v164 = &v161 - v24;
  __chkstk_darwin(v25);
  v172 = &v161 - v26;
  v27 = sub_100003998(&qword_1000DD238, &qword_1000ABE50);
  __chkstk_darwin(v27 - 8);
  v203 = &v161 - v28;
  v29 = type metadata accessor for SportingEventSubscription.Competitor();
  v201 = *(v29 - 8);
  v202 = v29;
  __chkstk_darwin(v29);
  v205 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v200 = &v161 - v32;
  v33 = sub_100003998(&qword_1000DD210, &qword_1000ABE08);
  __chkstk_darwin(v33 - 8);
  v35 = &v161 - v34;
  v36 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);
  __chkstk_darwin(v36 - 8);
  v181 = &v161 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v167 = &v161 - v39;
  __chkstk_darwin(v40);
  v207 = &v161 - v41;
  __chkstk_darwin(v42);
  v204 = &v161 - v43;
  __chkstk_darwin(v44);
  v199 = &v161 - v45;
  v183 = _s20RegistrationResponseVMa(0);
  __chkstk_darwin(v183);
  v47 = &v161 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v4 + 40);
  v49 = *(v4 + 152);
  v50 = *(v4 + 160);
  v197 = v4;
  v179 = *(v4 + 256);
  sub_100008614((v48 + 16), *(v48 + 40));
  v51 = v49;
  v52 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  sub_100003998(&qword_1000DBC40, &qword_1000AA618);
  sub_10003B578();
  v53 = *(v47 + 6);
  if (v53)
  {
    v54 = sub_10007C02C(v49, v50, v53);
  }

  else
  {
    v54 = 0;
  }

  v194 = v54;
  v195 = v50;
  v55 = v197;
  if (v52)
  {
    v56 = v52;
    v57 = SportingEventSubscription.consumers.getter();
  }

  else
  {
    v57 = &_swiftEmptySetSingleton;
  }

  v211 = v57;
  v58 = v55[17];
  v59 = v55[18];

  sub_100019204(&v210, v58, v59);

  v60 = *(v47 + 4);
  v61 = v195;
  if (!v60 || (v209 = sub_10007C0C8(v51, v195, v60)) == 0)
  {

    v209 = _swiftEmptyArrayStorage;
  }

  v62 = v55[24];
  v184 = v55[23];
  v64 = v55[25];
  v63 = v55[26];
  v178 = type metadata accessor for SubscriptionRegisterOperation(0);
  sub_10003BC90();
  v65 = type metadata accessor for SubscriptionRegisterOperation.PreferredData(0);
  v66 = sub_100008B84(v35, 1, v65);
  v187 = v62;
  v196 = v63;
  if (v66 == 1)
  {

    sub_10001BB44(v35, &qword_1000DD210, &qword_1000ABE08);
    v67 = type metadata accessor for SportingEventSubscription.Metadata();
    v68 = v204;
    sub_100008E2C(v204, 1, 1, v67);
  }

  else
  {
    v69 = v204;
    sub_10003BC90();

    v70 = v35;
    v68 = v69;
    sub_10003B2C0(v70, type metadata accessor for SubscriptionRegisterOperation.PreferredData);
    v71 = type metadata accessor for SportingEventSubscription.Metadata();
    if (sub_100008B84(v68, 1, v71) != 1)
    {
      v74 = v61;
      v75 = v68;
      v76 = v199;
      (*(*(v71 - 8) + 32))(v199, v75, v71);
      sub_100008E2C(v76, 0, 1, v71);
      goto LABEL_19;
    }
  }

  if (v52)
  {
    v72 = v52;
    SportingEventSubscription.metadata.getter();
  }

  else
  {
    v73 = type metadata accessor for SportingEventSubscription.Metadata();
    sub_100008E2C(v199, 1, 1, v73);
  }

  v74 = v61;
  v71 = type metadata accessor for SportingEventSubscription.Metadata();
  if (sub_100008B84(v68, 1, v71) != 1)
  {
    sub_10001BB44(v68, &qword_1000DD218, &unk_1000ABE10);
  }

LABEL_19:
  v77 = v207;
  sub_10003BC90();
  type metadata accessor for SportingEventSubscription.Metadata();
  v165 = v71;
  v78 = sub_100008B84(v77, 1, v71);
  sub_10001BB44(v77, &qword_1000DD218, &unk_1000ABE10);
  v180 = v52;
  v189 = v47;
  v186 = v51;
  if (v78 == 1)
  {
    v79 = v197;
    if (v194)
    {
      v185 = v64;
      v80 = v194;
      v81 = dispatch thunk of SportingEvent.competitors.getter();
      v162 = v80;

      v82 = sub_10001BE20(v81);
      v83 = 0;
      v84 = 0;
      v85 = v81 & 0xC000000000000001;
      v204 = v81 & 0xFFFFFFFFFFFFFF8;
      v86 = v202;
      v87 = (v201 + 32);
      v207 = _swiftEmptyArrayStorage;
      v88 = v203;
      v198 = v81;
      while (v82 != v83)
      {
        if (v85)
        {
          v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v83 >= *(v204 + 16))
          {
            goto LABEL_98;
          }

          v89 = *(v81 + 8 * v83 + 32);
        }

        v52 = v89;
        if (__OFADD__(v83, 1))
        {
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          v120 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_52;
        }

        v210 = v89;
        sub_10003A2F0(&v210, v206, v88);

        if (sub_100008B84(v88, 1, v86) == 1)
        {
          sub_10001BB44(v88, &qword_1000DD238, &qword_1000ABE50);
        }

        else
        {
          v90 = v82;
          v91 = v85;
          v92 = v7;
          v93 = v86;
          v94 = *v87;
          v95 = v200;
          (*v87)(v200, v88, v93);
          v94(v205, v95, v93);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100016894();
            v207 = v100;
          }

          v96 = *(v207 + 2);
          v52 = (v96 + 1);
          v7 = v92;
          if (v96 >= *(v207 + 3) >> 1)
          {
            sub_100016894();
            v207 = v101;
          }

          v85 = v91;
          v97 = v207;
          *(v207 + 2) = v52;
          v98 = &v97[((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v96];
          v99 = v202;
          v94(v98, v205, v202);
          v86 = v99;
          v88 = v203;
          v82 = v90;
          v81 = v198;
        }

        ++v83;
      }

      v171 = 0;

      v104 = v172;
      Date.init()();
      v105 = v162;
      v106 = dispatch thunk of SportingEvent.schedule.getter();

      v107 = v174;
      v84 = v168;
      if (v106)
      {
        v108 = SportingEventSchedule.duration.getter();

        SportingEventDuration.start.getter();
        v109 = v164;
        Date.init(timeIntervalSince1970:)();
        (*(v84 + 8))(v104, v107);
        (*(v84 + 32))(v104, v109, v107);
      }

      (*(v84 + 16))(v173, v104, v107);
      v110 = v166;
      sub_10003BC90();
      v111 = type metadata accessor for SportingEventViewContext();
      v112 = sub_100008B84(v110, 1, v111);
      v86 = v195;
      if (v112 == 1)
      {
        v113 = &qword_1000DD228;
        v114 = &qword_1000ABE40;
        v115 = v110;
      }

      else
      {
        v116 = v163;
        SportingEventViewContext.titles.getter();
        (*(*(v111 - 8) + 8))(v110, v111);
        v117 = type metadata accessor for SportingEventViewContext.LocalizedTitles();
        if (sub_100008B84(v116, 1, v117) != 1)
        {
          v52 = SportingEventViewContext.LocalizedTitles.preGame.getter();
          v118 = v122;
          (*(*(v117 - 8) + 8))(v116, v117);
          if (v118)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        v113 = &qword_1000DD230;
        v114 = &qword_1000ABE48;
        v115 = v116;
      }

      sub_10001BB44(v115, v113, v114);
LABEL_47:

      v52 = 0;
      v118 = 0xE000000000000000;
LABEL_48:
      v82 = v105;
      v119 = dispatch thunk of SportingEvent.localizedShortName.getter();

      v206 = v118;
      if (!v119)
      {
        goto LABEL_56;
      }

      if (sub_10001BE20(v119))
      {
        sub_1000835D4();
        if ((v119 & 0xC000000000000001) != 0)
        {
          goto LABEL_99;
        }

        v120 = *(v119 + 32);
LABEL_52:
        v121 = v120;

        SportingEventLocalizedDisplayName.text.getter();

        goto LABEL_56;
      }

LABEL_56:
      v103 = v82;
      v123 = dispatch thunk of SportingEvent.league.getter();

      if (v123)
      {
        v124 = SportingEventLeague.localizedDisplayName.getter();

        if (sub_10001BE20(v124))
        {
          v205 = v52;
          sub_1000835D4();
          if ((v124 & 0xC000000000000001) != 0)
          {
            v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v125 = *(v124 + 32);
          }

          v126 = v125;

          SportingEventLocalizedDisplayName.text.getter();

          v52 = v205;
        }

        else
        {
        }
      }

      v127 = v167;
      SportingEventSubscription.Metadata.init(eventStartDate:competitors:preGameTitle:shortTitle:eventURL:localizedLeagueName:)();
      (*(v84 + 8))(v172, v174);
      sub_10001BB44(v199, &qword_1000DD218, &unk_1000ABE10);
      sub_100008E2C(v127, 0, 1, v165);
      sub_10003BAC8();
      v79 = v197;
      v64 = v185;
      v102 = v171;
      goto LABEL_63;
    }

    v86 = v74;
LABEL_43:
    v171 = 0;
    goto LABEL_66;
  }

  v79 = v197;
  v86 = v74;
  if (!v194)
  {
    goto LABEL_43;
  }

  v102 = 0;
  v103 = v194;
LABEL_63:
  v171 = v102;
  v128 = v103;
  v129 = dispatch thunk of SportingEvent.league.getter();

  if (v129)
  {
    v52 = v79;

    v184 = SportingEventLeague.canonicalId.getter();
    v187 = v130;
    v131 = SportingEventLeague.sport.getter();
    v64 = SportingEventSport.canonicalId.getter();
    v133 = v132;

    v134 = v133;
    v135 = v211;
    v47 = v189;
    v51 = v186;
LABEL_68:
    swift_bridgeObjectRetain_n();
    v206 = v135;

    v136 = v175;
    Sport.init(rawValue:)();
    v137 = Sport.rawValue.getter();
    v203 = v138;
    v204 = v137;
    v196 = v134;

    (*(v176 + 8))(v136, v177);
    v79 = v52;
    goto LABEL_70;
  }

  v47 = v189;
  v51 = v186;
LABEL_66:
  v134 = v196;
  v135 = v211;
  if (v196)
  {
    v52 = v79;
    goto LABEL_68;
  }

  v206 = v211;

  v196 = 0;
  v203 = 0xE000000000000000;
  v204 = 0;
LABEL_70:
  v139 = v79[30];
  v201 = v79[31];
  v202 = v139;
  v140 = *v47;

  sub_10007C074(v51, v86, v140);
  if (v141)
  {
    URL.init(string:)();
  }

  else
  {
    v142 = type metadata accessor for URL();
    sub_100008E2C(v193, 1, 1, v142);
  }

  v143 = *(v47 + 1);
  if (v143 && (sub_10007C074(v51, v86, v143), v144))
  {
    URL.init(string:)();
  }

  else
  {
    v145 = type metadata accessor for URL();
    sub_100008E2C(v191, 1, 1, v145);
  }

  v146 = *(v47 + 2);
  if (v146 && (sub_10007C074(v51, v86, v146), v147))
  {
    URL.init(string:)();
  }

  else
  {

    v148 = type metadata accessor for URL();
    sub_100008E2C(v192, 1, 1, v148);
  }

  v149 = v194;
  v185 = v64;
  if (v194)
  {
    v200 = v194;
  }

  else
  {
    type metadata accessor for SportingEventFactory();
    v200 = static SportingEventFactory.unknown(canonicalId:)();
    v149 = 0;
  }

  v194 = *(v47 + 7);
  LODWORD(v177) = v47[64];
  v176 = *(v47 + 9);
  LODWORD(v175) = v47[80];
  v205 = (v190 + 32);
  v150 = v209;
  v86 = v209[2];
  v198 = v149;
  v84 = 0;
  v151 = (v150 + 7);
  v207 = _swiftEmptyArrayStorage;
  v174 = (v150 + 7);
LABEL_85:
  v82 = (v151 + 32 * v84);
  while (v86 != v84)
  {
    if (v84 >= v209[2])
    {
      __break(1u);
      goto LABEL_97;
    }

    v52 = *(v82 - 1);

    SportingEventRunningClockFeature.init(feature:value:)();
    if (sub_100008B84(v7, 1, v208) != 1)
    {
      v152 = *v205;
      (*v205)(v188, v7, v208);
      v52 = v207;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000167BC();
        v52 = v155;
      }

      v151 = v174;
      v153 = v52[2];
      if (v153 >= v52[3] >> 1)
      {
        sub_1000167BC();
        v52 = v156;
      }

      ++v84;
      v52[2] = v153 + 1;
      v154 = (*(v190 + 80) + 32) & ~*(v190 + 80);
      v207 = v52;
      v152(v52 + v154 + *(v190 + 72) * v153, v188, v208);
      goto LABEL_85;
    }

    sub_10001BB44(v7, &qword_1000DD220, &unk_1000ABE30);
    v82 += 32;
    ++v84;
  }

  v157 = v189;
  v158 = *(v189 + 11);
  v208 = *(v189 + 12);
  v209 = v158;
  sub_10003BC90();
  sub_10003BC90();

  sub_100069F9C(v186, v195);
  sub_100069EA8(v179);
  v205 = objc_allocWithZone(type metadata accessor for SportingEventSubscription());

  v159 = SportingEventSubscription.init(consumers:sportId:sport:leagueId:leagueAbbreviation:eventStateURL:fullPayloadBaseURL:imageServiceBaseURL:sportingEventDetails:heartbeatTTLSeconds:heartbeatSessionsTTLSeconds:liveActivityTTLSeconds:clockFeatures:registrationId:metadata:view:shouldDisplayPlayByPlay:qosRegistrationId:applicationType:clientApp:)();

  sub_10001BB44(v199, &qword_1000DD218, &unk_1000ABE10);
  sub_10003B2C0(v157, _s20RegistrationResponseVMa);
  return v159;
}

void sub_100039850(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for SubscriptionRegisterOperation(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100007DE8(v8, qword_1000E6D48);
    sub_10003B578();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315138;
      v13 = *(v7 + 19);
      v14 = *(v7 + 20);

      sub_10003B2C0(v7, type metadata accessor for SubscriptionRegisterOperation);
      v15 = sub_1000170D4(v13, v14, &v25);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unexpected empty response from Tempo registration for canonicalId: %s", v11, 0xCu);
      sub_100008A94(v12);
    }

    else
    {

      sub_10003B2C0(v7, type metadata accessor for SubscriptionRegisterOperation);
    }
  }

  else
  {
    v16 = *(v2 + 152);
    v17 = *(v2 + 160);
    v18 = *(v2 + 256);
    v19 = v18 < 6;
    v20 = 0x27u >> v18;
    sub_100008B28(a1, a2);
    sub_10002D224(a1, a2, v16, v17, v19 & v20, v21, v22, v23, v24, v25);

    sub_10001F19C(a1, a2);
  }
}

uint64_t sub_100039AF4()
{
  v1 = *(v0 + 16);
  v2 = sub_100008614(v1 + 12, v1[15]);
  sub_100079BA4(v1[19], v1[20], *v2);
  v3 = *(v0 + 8);

  return v3();
}

void sub_100039B6C(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000DBA10 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100007DE8(v1, qword_1000E6D18);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_1000170D4(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error connecting to watchlistd for suppression. %s", v4, 0xCu);
      sub_100008A94(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_100039DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for SubscriptionRegisterOperation(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100007DE8(v11, qword_1000E6D48);
  sub_10003B578();
  sub_10003B578();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = *(v10 + 19);
    v16 = *(v10 + 20);

    sub_10003B2C0(v10, type metadata accessor for SubscriptionRegisterOperation);
    v17 = sub_1000170D4(v15, v16, &v25);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    sub_100069EA8(v7[256]);
    v19 = v18;
    v21 = v20;
    sub_10003B2C0(v7, type metadata accessor for SubscriptionRegisterOperation);
    v22 = sub_1000170D4(v19, v21, &v25);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Tempo /register success for %s - %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10003B2C0(v7, type metadata accessor for SubscriptionRegisterOperation);
    sub_10003B2C0(v10, type metadata accessor for SubscriptionRegisterOperation);
  }

  return 1;
}

uint64_t sub_10003A054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10003C23C();
  sub_10003C284();

  return sub_100039DB0(a1, a2, a3, a4, v4 + v9);
}

uint64_t sub_10003A0DC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void)@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_100003998(&qword_1000DD1D0, &qword_1000ABDE8);
  result = a2(a1, *(a1 + *(v6 + 48)), *(a1 + *(v6 + 64)), *(a1 + *(v6 + 64) + 8));
  *a3 = result & 1;
  return result;
}

uint64_t sub_10003A14C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003A18C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100003998(&qword_1000DD020, &unk_1000AB990);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  v10[1] = *a1;
  swift_errorRetain();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  Fail.init(error:)();
  sub_10000A6FC(&qword_1000DD028, &qword_1000DD020, &unk_1000AB990, &protocol conformance descriptor for Fail<A, B>);
  v8 = Publisher.eraseToAnyPublisher()();
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  return result;
}

uint64_t sub_10003A2F0@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v131 = a2;
  v143 = a3;
  v5 = type metadata accessor for SportingEventCompetitorQualifier();
  v126 = *(v5 - 8);
  __chkstk_darwin(v5);
  v116 = v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_100003998(&qword_1000DD240, &qword_1000ABE58);
  __chkstk_darwin(v124);
  v127 = v111 - v7;
  v8 = sub_100003998(&qword_1000DD248, &unk_1000ABE60);
  __chkstk_darwin(v8 - 8);
  v118 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v132 = v111 - v11;
  __chkstk_darwin(v12);
  v133 = v111 - v13;
  v14 = sub_100003998(&qword_1000DD250, &unk_1000AEBC0);
  __chkstk_darwin(v14 - 8);
  v122 = v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v128 = v111 - v17;
  v18 = type metadata accessor for SportingEventSubscription.Competitor.LogoFilePaths();
  v121 = *(v18 - 8);
  __chkstk_darwin(v18);
  v117 = v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for LogoDownloadResult(0);
  v130 = *(v120 - 8);
  __chkstk_darwin(v120);
  v144 = (v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_100003998(&qword_1000DD258, &qword_1000ABE70);
  __chkstk_darwin(v21 - 8);
  v23 = v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v125 = v111 - v25;
  __chkstk_darwin(v26);
  v119 = v111 - v27;
  __chkstk_darwin(v28);
  v129 = v111 - v29;
  v30 = type metadata accessor for SportingEventMetadataType();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v145 = v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v146 = v111 - v34;
  v35 = *a1;
  v36 = SportingEventCompetitorContainer.competitor.getter();
  v123 = dispatch thunk of SportingEventCompetitor.abbreviation.getter();
  v38 = v37;

  v134 = v38;
  if (!v38)
  {
    goto LABEL_23;
  }

  v115 = v5;
  v39 = SportingEventCompetitorContainer.competitor.getter();
  v40 = dispatch thunk of SportingEventCompetitor.localizedDisplayName.getter();

  if (!v40)
  {
LABEL_22:

LABEL_23:
    v58 = 1;
    goto LABEL_58;
  }

  if (!sub_10001BE20(v40))
  {

    goto LABEL_22;
  }

  sub_1000835D4();
  v114 = v3;
  v112 = v18;
  v142 = v30;
  if ((v40 & 0xC000000000000001) != 0)
  {
    goto LABEL_61;
  }

  for (i = *(v40 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v42 = i;

    v43 = SportingEventLocalizedDisplayName.text.getter();
    v45 = v44;

    v46 = SportingEventCompetitorContainer.competitor.getter();
    v47 = dispatch thunk of SportingEventCompetitor.metadata.getter();

    if (!v47)
    {
      break;
    }

    v111[1] = v43;
    v113 = v45;
    v48 = sub_10001BE20(v47);
    v49 = 0;
    v140 = v47 & 0xC000000000000001;
    v141 = v48;
    v136 = enum case for SportingEventMetadataType.backgroundColor(_:);
    v135 = (v31 + 104);
    v138 = (v31 + 8);
    v139 = v47 & 0xFFFFFFFFFFFFFF8;
    v111[0] = v23;
    for (j = v47; ; v47 = j)
    {
      v50 = v146;
      if (v141 == v49)
      {
        goto LABEL_27;
      }

      if (v140)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v49 >= *(v139 + 16))
        {
          goto LABEL_60;
        }

        v51 = *(v47 + 8 * v49 + 32);
      }

      if (__OFADD__(v49, 1))
      {
        break;
      }

      v151 = v51;
      SportingEventMetadata.metadataType.getter();
      v52 = v145;
      v53 = v142;
      (*v135)(v145, v136, v142);
      sub_10003B628(&qword_1000DD260, &type metadata accessor for SportingEventMetadataType, &protocol conformance descriptor for SportingEventMetadataType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v31 = v150;
      if (v149 == v147 && v150 == v148)
      {
        v59 = *v138;
        (*v138)(v52, v53);
        v59(v50, v53);

LABEL_26:

        v60 = v151;
        v61 = SportingEventMetadata.value.getter();
        v63 = v62;

        v64 = dispatch thunk of SportingEventCompetitorContainer.ordinal.getter();
        if (v65)
        {
LABEL_27:

          goto LABEL_28;
        }

        v151 = v64;
        v145 = v61;
        v146 = v63;
        v66 = 0;
        v67 = v132;
        v68 = *(v131 + 16);
        v69 = v133;
        while (1)
        {
          if (v68 == v66)
          {
            v79 = 1;
            v80 = v129;
            goto LABEL_40;
          }

          v70 = v144;
          sub_10003B578();
          v71 = *v70;
          v72 = v70[1];
          v73 = SportingEventCompetitorContainer.competitor.getter();
          v74 = SportingEventCompetitor.canonicalId.getter();
          v76 = v75;

          if (v71 == v74 && v72 == v76)
          {
            break;
          }

          v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v67 = v132;
          v69 = v133;
          if (v78)
          {
            goto LABEL_39;
          }

          sub_10003B2C0(v144, type metadata accessor for LogoDownloadResult);
          ++v66;
        }

        v67 = v132;
        v69 = v133;
LABEL_39:
        v80 = v129;
        sub_10003B5D0();
        v79 = 0;
LABEL_40:
        v81 = v120;
        sub_100008E2C(v80, v79, 1, v120);
        v82 = SportingEventCompetitorContainer.competitor.getter();
        v144 = SportingEventCompetitor.canonicalId.getter();
        v142 = v83;

        v84 = v119;
        sub_10003BC90();
        v85 = sub_100008B84(v84, 1, v81);
        v86 = v112;
        v87 = v111[0];
        if (v85 == 1)
        {
          sub_10001BB44(v84, &qword_1000DD258, &qword_1000ABE70);
          v140 = 0xE000000000000000;
          v141 = 0;
        }

        else
        {
          v88 = *(v84 + 16);
          v140 = *(v84 + 24);
          v141 = v88;

          sub_10003B2C0(v84, type metadata accessor for LogoDownloadResult);
        }

        v89 = v125;
        sub_10003BC90();
        if (sub_100008B84(v89, 1, v81) == 1)
        {
          sub_10001BB44(v89, &qword_1000DD258, &qword_1000ABE70);
          v138 = 0xE000000000000000;
          v139 = 0;
        }

        else
        {
          v90 = v121;
          v91 = v89 + *(v81 + 24);
          v92 = v117;
          (*(v121 + 16))(v117, v91, v86);
          sub_10003B2C0(v125, type metadata accessor for LogoDownloadResult);
          v93 = SportingEventSubscription.Competitor.LogoFilePaths.defaultSize.getter();
          v138 = v94;
          v139 = v93;
          (*(v90 + 8))(v92, v86);
        }

        v95 = v128;
        v96 = v122;
        sub_10003BC90();
        if (sub_100008B84(v87, 1, v81) == 1)
        {
          sub_10001BB44(v87, &qword_1000DD258, &qword_1000ABE70);
          sub_100008E2C(v96, 1, 1, v86);
          SportingEventSubscription.Competitor.LogoFilePaths.init(smallSize:defaultSize:)();
          if (sub_100008B84(v96, 1, v86) != 1)
          {
            sub_10001BB44(v96, &qword_1000DD250, &unk_1000AEBC0);
          }
        }

        else
        {
          v97 = *(v81 + 24);
          v98 = v121;
          (*(v121 + 16))(v96, v87 + v97, v86);
          sub_10003B2C0(v87, type metadata accessor for LogoDownloadResult);
          sub_100008E2C(v96, 0, 1, v86);
          (*(v98 + 32))(v95, v96, v86);
        }

        sub_100008E2C(v95, 0, 1, v86);
        v99 = SportingEventCompetitorContainer.competitor.getter();
        dispatch thunk of SportingEventCompetitor.qualifier.getter();

        v100 = v115;
        (*(v126 + 104))(v67, enum case for SportingEventCompetitorQualifier.home(_:), v115);
        sub_100008E2C(v67, 0, 1, v100);
        v101 = *(v124 + 48);
        v102 = v127;
        sub_10003BC90();
        sub_10003BC90();
        if (sub_100008B84(v102, 1, v100) == 1)
        {
          sub_10001BB44(v67, &qword_1000DD248, &unk_1000ABE60);
          v103 = v127;
          sub_10001BB44(v69, &qword_1000DD248, &unk_1000ABE60);
          if (sub_100008B84(v103 + v101, 1, v100) == 1)
          {
            sub_10001BB44(v103, &qword_1000DD248, &unk_1000ABE60);
LABEL_57:
            SportingEventSubscription.Competitor.init(canonicalId:abbreviation:name:teamLogoUrl:localLogoUrl:logoFilePaths:teamColorHex:isHome:ordinal:)();
            sub_10001BB44(v129, &qword_1000DD258, &qword_1000ABE70);
            v58 = 0;
            goto LABEL_58;
          }
        }

        else
        {
          v104 = v118;
          sub_10003BC90();
          if (sub_100008B84(v102 + v101, 1, v100) != 1)
          {
            v105 = v126;
            v106 = v102 + v101;
            v107 = v116;
            (*(v126 + 32))(v116, v106, v100);
            sub_10003B628(&qword_1000DD268, &type metadata accessor for SportingEventCompetitorQualifier, &protocol conformance descriptor for SportingEventCompetitorQualifier);
            dispatch thunk of static Equatable.== infix(_:_:)();
            v108 = *(v105 + 8);
            v108(v107, v100);
            sub_10001BB44(v132, &qword_1000DD248, &unk_1000ABE60);
            sub_10001BB44(v133, &qword_1000DD248, &unk_1000ABE60);
            v108(v104, v100);
            sub_10001BB44(v102, &qword_1000DD248, &unk_1000ABE60);
            goto LABEL_57;
          }

          sub_10001BB44(v132, &qword_1000DD248, &unk_1000ABE60);
          v103 = v127;
          sub_10001BB44(v133, &qword_1000DD248, &unk_1000ABE60);
          (*(v126 + 8))(v104, v100);
        }

        sub_10001BB44(v103, &qword_1000DD240, &qword_1000ABE58);
        goto LABEL_57;
      }

      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v56 = v52;
      v23 = v35;
      v57 = *v138;
      (*v138)(v56, v53);
      v57(v50, v53);
      v35 = v23;

      if (v55)
      {
        goto LABEL_26;
      }

      ++v49;
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }

LABEL_28:

  v58 = 1;
LABEL_58:
  v109 = type metadata accessor for SportingEventSubscription.Competitor();
  return sub_100008E2C(v143, v58, 1, v109);
}

uint64_t sub_10003B2C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10001C2AC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10003B318()
{
  type metadata accessor for SubscriptionRegisterOperation(0);
  sub_10003C224();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();
  sub_100008A94((v1 + v4));

  sub_100008A94((v1 + v4 + 56));
  sub_100008A94((v1 + v4 + 96));

  v7 = *(v0 + 72);
  type metadata accessor for SubscriptionRegisterOperation.PreferredData(0);
  v8 = sub_10003C26C();
  if (!sub_100008B84(v8, v9, v10))
  {
    v11 = type metadata accessor for SportingEventSubscription.Metadata();
    v12 = sub_10003C26C();
    if (!sub_100008B84(v12, v13, v11))
    {
      sub_10000ACDC();
      (*(v14 + 8))(v1 + v4 + v7, v11);
    }
  }

  sub_10000AE38();
  sub_10000AE38();

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

uint64_t sub_10003B494(uint64_t a1)
{
  sub_10003C23C();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002C904;

  return sub_100039AD4(a1, v6, v7, v1 + v5);
}

uint64_t sub_10003B578()
{
  sub_10003C278();
  v1(0);
  sub_10001C2AC();
  v2 = sub_10001C53C();
  v3(v2);
  return v0;
}

uint64_t sub_10003B5D0()
{
  sub_10003C278();
  v1(0);
  sub_10001C2AC();
  v2 = sub_10001C53C();
  v3(v2);
  return v0;
}

uint64_t sub_10003B628(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003B68C()
{
  sub_100003998(&qword_1000DBC40, &qword_1000AA618);
  sub_10003C224();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  v8 = type metadata accessor for ApiRequestMetrics(0);
  if (!sub_100008B84(v1 + v4, 1, v8))
  {
    v9 = type metadata accessor for Date();
    if (!sub_100008B84(v1 + v4, 1, v9))
    {
      sub_10000AC74();
      (*(v10 + 8))(v1 + v4, v9);
    }

    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v11 = sub_10000ADB0();
      v12(v11);
    }

    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v13 = sub_10000ADB0();
      v14(v13);
    }

    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v15 = sub_10000ADB0();
      v16(v15);
    }

    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v17 = sub_10000ADB0();
      v18(v17);
    }

    sub_10000AE38();
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v19 = sub_10000ADB0();
      v20(v19);
    }

    v21 = *(v8 + 56);
    v22 = type metadata accessor for URL();
    if (!sub_100008B84(v7 + v21, 1, v22))
    {
      sub_10000ACDC();
      (*(v23 + 8))(v7 + v21, v22);
    }

    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v24 = sub_10000ADB0();
      v25(v24);
    }

    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v26 = sub_10000ADB0();
      v27(v26);
    }

    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v28 = sub_10000ADB0();
      v29(v28);
    }

    sub_10000AE38();
    sub_10000AE38();
    sub_10000AE38();
    sub_10000AE38();
    sub_10000AE38();
    sub_10000AE38();
  }

  v30 = v0[7];
  type metadata accessor for URLRequest();
  sub_10001C2AC();
  (*(v31 + 8))(v7 + v30);

  v32 = (v7 + v0[9]);
  v33 = v32[1];
  if (v33 >> 60 != 15)
  {
    sub_100008BAC(*v32, v33);
  }

  v34 = v7 + v0[10];

  v35 = *(_s20RegistrationResponseVMa(0) + 44);
  v36 = type metadata accessor for SportingEventViewContext();
  if (!sub_100008B84(v34 + v35, 1, v36))
  {
    sub_10000ACDC();
    (*(v37 + 8))(v34 + v35, v36);
  }

  return _swift_deallocObject(v1, ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_10003BAC8()
{
  sub_10003C278();
  sub_100003998(v1, v2);
  sub_10001C2AC();
  v3 = sub_10001C53C();
  v4(v3);
  return v0;
}

uint64_t sub_10003BB20()
{
  sub_100003998(&qword_1000DBC40, &qword_1000AA618);
  v0 = sub_10003C25C();

  return sub_100037CA0(v0, v1, v2, v3);
}

uint64_t sub_10003BBD4()
{

  sub_100008A94((v0 + 72));

  sub_100008A94((v0 + 128));

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_10003BC90()
{
  sub_10003C278();
  sub_100003998(v1, v2);
  sub_10001C2AC();
  v3 = sub_10001C53C();
  v4(v3);
  return v0;
}

uint64_t sub_10003BCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003998(&qword_1000DD210, &qword_1000ABE08);
    v9 = a1 + *(a3 + 72);

    return sub_100008B84(v9, a2, v8);
  }
}

uint64_t sub_10003BDA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003998(&qword_1000DD210, &qword_1000ABE08);
    v8 = v5 + *(a4 + 72);

    return sub_100008E2C(v8, a2, a2, v7);
  }

  return result;
}

void sub_10003BE30(uint64_t a1)
{
  sub_10003BFBC(319, &qword_1000DD368, &protocol descriptor for ApsListening);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DataRepository();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PlaysStore();
      if (v3 <= 0x3F)
      {
        sub_10003BFBC(319, &qword_1000DD370, &protocol descriptor for TempoApiProvider);
        if (v4 <= 0x3F)
        {
          sub_10003BFBC(319, &qword_1000DD378, &protocol descriptor for NotificationsSuppresionManager);
          if (v5 <= 0x3F)
          {
            sub_10003C010();
            if (v6 <= 0x3F)
            {
              sub_10003C1BC(319, &unk_1000DD380, type metadata accessor for SubscriptionRegisterOperation.PreferredData);
              if (v7 <= 0x3F)
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

uint64_t sub_10003BFBC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_10003C010()
{
  if (!qword_1000DC108)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC108);
    }
  }
}

uint64_t sub_10003C074(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);

  return sub_100008B84(a1, a2, v4);
}

uint64_t sub_10003C0DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);

  return sub_100008E2C(a1, a2, a2, v4);
}

void sub_10003C134(uint64_t a1)
{
  sub_10003C1BC(319, &unk_1000DD458, &type metadata accessor for SportingEventSubscription.Metadata);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10003C1BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10003C290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a2;
  v20 = a3;
  v6 = sub_100003998(&qword_1000DD598, &qword_1000AC008);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  *(v4 + 24) = &_swiftEmptySetSingleton;
  if (qword_1000DB9D8 != -1)
  {
    swift_once();
  }

  v21 = qword_1000E6CE0;
  *(swift_allocObject() + 16) = a1;

  sub_100003998(&qword_1000DD568, &qword_1000ABFF0);
  sub_10000A6FC(&qword_1000DD570, &qword_1000DD568, &qword_1000ABFF0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.filter(_:)();

  v13 = swift_allocObject();
  v14 = v20;
  *(v13 + 16) = v19;
  *(v13 + 24) = v14;
  Publishers.Filter.filter(_:)();

  v15 = *(v7 + 8);
  v15(v9, v6);
  sub_10000A6FC(&qword_1000DD5A0, &qword_1000DD598, &qword_1000AC008, &protocol conformance descriptor for Publishers.Filter<A>);
  v16 = Publisher.eraseToAnyPublisher()();
  v15(v12, v6);
  *(v4 + 16) = v16;
  return v4;
}

uint64_t sub_10003C53C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_100008E2C(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_10003D94C(0, 0, v7, &unk_1000ABFC0, v9);

  return sub_10001EF70(v7, &qword_1000DC5A8, &qword_1000AAFD0);
}

uint64_t sub_10003C660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[35] = a4;
  v6[38] = sub_100003998(&qword_1000DD538, &unk_1000ABF70);
  v6[39] = swift_task_alloc();
  v7 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v6[40] = v7;
  v6[41] = *(v7 - 8);
  v6[42] = swift_task_alloc();
  sub_100003998(&qword_1000DBE78, &qword_1000AA750);
  v6[43] = swift_task_alloc();
  v8 = sub_100003998(&qword_1000DD558, &qword_1000ABFE0);
  v6[44] = v8;
  v6[45] = *(v8 - 8);
  v6[46] = swift_task_alloc();
  v9 = sub_100003998(&qword_1000DD560, &qword_1000ABFE8);
  v6[47] = v9;
  v6[48] = *(v9 - 8);
  v6[49] = swift_task_alloc();

  return _swift_task_switch(sub_10003C894);
}

uint64_t sub_10003C894()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 352);
  *(v0 + 224) = *(*(v0 + 280) + 16);
  sub_100003998(&qword_1000DD568, &qword_1000ABFF0);
  sub_10000A6FC(&qword_1000DD570, &qword_1000DD568, &qword_1000ABFF0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.values.getter();
  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  *(v0 + 464) = enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:);
  sub_10003FB74(&qword_1000DD578, &qword_1000DD560, &qword_1000ABFE8);
  v4 = swift_task_alloc();
  *(v0 + 400) = v4;
  *v4 = v0;
  sub_10003FB4C(v4);
  v5 = sub_10003FB98();

  return dispatch thunk of AsyncIteratorProtocol.next()(v5, v6, v7);
}

uint64_t sub_10003CA24()
{
  sub_10001BEC4();
  v2 = *v1;
  sub_10001BE74();
  *v3 = v2;
  *(v4 + 408) = v0;

  sub_10001C740();

  return _swift_task_switch(v5);
}

uint64_t sub_10003CB54()
{
  sub_10001BEC4();
  *(v0 + 416) = *(v0 + 232);
  sub_10001C740();

  return _swift_task_switch(v1);
}

uint64_t sub_10003CBE0()
{
  v97 = v0;
  v1 = *(v0 + 416);
  if (!v1)
  {
    (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));

    sub_10001BEDC();
    sub_10003FC08();

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 424) = os_transaction_create();
  v2 = [v1 channelID];
  if (v2)
  {
    v5 = v2;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = [v1 userInfo];
    if (v9)
    {
      v10 = v9;
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = objc_opt_self();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      *(v0 + 256) = 0;
      v13 = [v11 dataWithJSONObject:isa options:0 error:v0 + 256];

      v14 = *(v0 + 256);
      if (v13)
      {
        v86 = v6;
        v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        *(v0 + 432) = v15;
        *(v0 + 440) = v17;
        if (qword_1000DBA40 != -1)
        {
          sub_10003FBAC(&qword_1000DBA40, v18, v19);
        }

        v20 = type metadata accessor for Logger();
        sub_100007DE8(v20, qword_1000E6DA8);
        v21 = sub_10003FBEC();
        sub_100008B28(v21, v22);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();
        v25 = sub_10003FBEC();
        sub_100008BAC(v25, v26);
        v93 = v15;
        v94 = v8;
        v95 = v17;
        if (!os_log_type_enabled(v23, v24))
        {

          v92 = *(v0 + 408);
LABEL_32:
          v89 = *(v0 + 464);
          v61 = *(v0 + 328);
          v87 = *(v0 + 336);
          v88 = *(v0 + 320);
          type metadata accessor for JSONDecoder();
          swift_allocObject();
          *(v0 + 448) = JSONDecoder.init()();
          static SportsJSONContext.Property<A>.initFailureObserver.getter();
          v62 = type metadata accessor for DefaultSportsJSONInitFailureObserver();
          swift_allocObject();
          v63 = DefaultSportsJSONInitFailureObserver.init()();
          *(v0 + 40) = v62;
          *(v0 + 48) = &protocol witness table for DefaultSportsJSONInitFailureObserver;
          *(v0 + 16) = v63;
          v64 = dispatch thunk of JSONDecoder.userInfo.modify();
          v66 = v65;
          v96 = *v65;
          swift_bridgeObjectRetain_n();
          sub_100003998(&qword_1000DBE90, &qword_1000AA760);
          Dictionary<>.subscript.setter();
          *v66 = v96;

          v64(v0 + 136, 0);

          (*(v61 + 104))(v87, v89, v88);
          dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
          sub_10000A6FC(&qword_1000DD580, &qword_1000DD538, &unk_1000ABF70, &unk_1000AAA78);
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          if (!v92)
          {
            v74 = 0;
            switch(v95 >> 62)
            {
              case 1uLL:
                LODWORD(v74) = HIDWORD(v15) - v15;
                if (!__OFSUB__(HIDWORD(v15), v15))
                {
                  v74 = v74;
LABEL_41:
                  v79 = *(v0 + 304);
                  v78 = *(v0 + 312);
                  v80 = v78 + *(v79 + 52);
                  *v80 = v74;
                  *(v80 + 8) = 0;
                  v81 = (v78 + *(v79 + 56));

                  *v81 = v86;
                  v81[1] = v94;
                  v82 = swift_task_alloc();
                  *(v0 + 456) = v82;
                  *v82 = v0;
                  v82[1] = sub_10003D71C;
                  sub_10003FC08();

                  __asm { BRAA            X1, X16 }
                }

                __break(1u);
LABEL_45:
                __break(1u);
                return result;
              case 2uLL:
                v76 = *(v15 + 16);
                v75 = *(v15 + 24);
                v77 = __OFSUB__(v75, v76);
                v74 = v75 - v76;
                if (!v77)
                {
                  goto LABEL_41;
                }

                goto LABEL_45;
              case 3uLL:
                goto LABEL_41;
              default:
                v74 = BYTE6(v95);
                goto LABEL_41;
            }
          }

          swift_errorRetain();
          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v67, v68))
          {
            v69 = sub_10001C4D0();
            v70 = sub_10003FC24();
            v96 = v70;
            *v69 = 136315138;
            swift_getErrorValue();
            v71 = Error.localizedDescription.getter();
            v73 = sub_1000170D4(v71, v72, &v96);

            *(v69 + 4) = v73;
            _os_log_impl(&_mh_execute_header, v67, v68, "CloudChannelMessageProcessor - Encountered error while decoding expected type, error=%s", v69, 0xCu);
            sub_100008A94(v70);
            sub_10000B008(v70);
            sub_10000B008(v69);
            swift_unknownObjectRelease();

            sub_100008BAC(v93, v95);
          }

          else
          {
            swift_unknownObjectRelease();

            sub_100008BAC(v15, v95);
          }

          goto LABEL_23;
        }

        v91 = v24;
        v27 = *(v0 + 408);
        v28 = sub_10001C4D0();
        v90 = sub_10003FC24();
        *(v0 + 272) = v90;
        *v28 = 136315138;
        v29 = sub_10003FBEC();
        sub_100008B28(v29, v30);
        v31 = sub_10003FBEC();
        v33 = sub_1000492AC(v31, v32);
        if (!v34)
        {
          *(v0 + 192) = v15;
          *(v0 + 200) = v17;
          v35 = sub_10003FBEC();
          sub_100008B28(v35, v36);
          sub_100003998(&unk_1000DD760, &qword_1000ABFF8);
          if (swift_dynamicCast())
          {
            sub_10000A8F8((v0 + 96), v0 + 56);
            sub_100008614((v0 + 56), *(v0 + 80));
            if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
            {
              sub_100008BAC(v15, v17);
              sub_100008614((v0 + 56), *(v0 + 80));
              dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
              v38 = *(v0 + 208);
              v37 = *(v0 + 216);
              sub_100008A94((v0 + 56));
LABEL_31:
              v92 = v27;
              v60 = sub_1000170D4(v38, v37, (v0 + 272));

              *(v28 + 4) = v60;
              _os_log_impl(&_mh_execute_header, v23, v91, "CloudChannelMessageProcessor - bodyData: %s", v28, 0xCu);
              sub_100008A94(v90);
              sub_10000B008(v90);
              sub_10000B008(v28);

              goto LABEL_32;
            }

            sub_100008A94((v0 + 56));
          }

          else
          {
            *(v0 + 128) = 0;
            *(v0 + 96) = 0u;
            *(v0 + 112) = 0u;
            sub_10001EF70(v0 + 96, &qword_1000DD588, &qword_1000AC000);
          }

          sub_10003FBEC();
          v33 = sub_100049074();
        }

        v38 = v33;
        v37 = v34;
        v58 = sub_10003FBEC();
        sub_100008BAC(v58, v59);
        goto LABEL_31;
      }

      v41 = v14;

      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    else
    {
    }
  }

  if (qword_1000DBA40 != -1)
  {
    sub_10003FBAC(&qword_1000DBA40, v3, v4);
  }

  v42 = type metadata accessor for Logger();
  sub_100007DE8(v42, qword_1000E6DA8);
  v43 = v1;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = sub_10001C4D0();
    v47 = sub_10003FC24();
    *(v0 + 248) = v47;
    *v46 = 136315138;
    v48 = sub_10001B478(v43);

    if (!v48)
    {
      __break(1u);
      JUMPOUT(0x10003D658);
    }

    v49 = Dictionary.description.getter();
    v51 = v50;

    v52 = sub_1000170D4(v49, v51, (v0 + 248));

    *(v46 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v44, v45, "CloudChannelMessageProcessor - Failed to decode payload body %s", v46, 0xCu);
    sub_100008A94(v47);
    sub_10000B008(v47);
    sub_10000B008(v46);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_23:
  sub_10003FB74(&qword_1000DD578, &qword_1000DD560, &qword_1000ABFE8);
  v53 = swift_task_alloc();
  *(v0 + 400) = v53;
  *v53 = v0;
  sub_10003FB4C(v53);
  sub_10003FB98();
  sub_10003FC08();

  return dispatch thunk of AsyncIteratorProtocol.next()(v54, v55, v56);
}

uint64_t sub_10003D668()
{
  sub_10001BEC4();
  *(v0 + 240) = *(v0 + 408);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10003D71C()
{
  sub_10001BEC4();
  v1 = *v0;
  sub_10001BE74();
  *v2 = v1;

  sub_10001C740();

  return _swift_task_switch(v3);
}

uint64_t sub_10003D834()
{
  v1 = v0[55];
  v2 = v0[54];
  v3 = v0[52];
  v4 = v0[39];
  swift_unknownObjectRelease();

  sub_100008BAC(v2, v1);

  sub_10001EF70(v4, &qword_1000DD538, &unk_1000ABF70);
  sub_10003FB74(&qword_1000DD578, &qword_1000DD560, &qword_1000ABFE8);
  v5 = swift_task_alloc();
  v0[50] = v5;
  *v5 = v0;
  sub_10003FB4C(v5);
  v6 = sub_10003FB98();

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v8);
}

uint64_t sub_10003D94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_10003FA5C(a3, v24 - v10, &qword_1000DC5A8, &qword_1000AAFD0);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100008B84(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10001EF70(v11, &qword_1000DC5A8, &qword_1000AAFD0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t *sub_10003DBF0()
{
  v1 = *v0;
  sub_100003998(&qword_1000DD550, &qword_1000ABF98);
  swift_allocObject();
  sub_10001C740();
  v0[2] = sub_10003C290(v2, v3, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;

  sub_10003C53C(&unk_1000ABFA8, v5);

  return v0;
}

uint64_t sub_10003DCD0(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  sub_100003998(&qword_1000DC460, &qword_1000AAEF8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_100003998(&qword_1000DD530, &qword_1000ABF68);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10003DE18);
}

uint64_t sub_10003DE18()
{
  sub_10001BF48();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[7];
  v5 = Date.init()();
  sub_10008C99C(v5);
  v0[16] = v6;
  (*(v2 + 8))(v1, v3);
  v0[17] = *v4;
  type metadata accessor for ScoreboardSubscriptionManager();
  v0[18] = static ScoreboardSubscriptionManager.shared.getter();
  sub_10003FA04();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003DEEC);
}

uint64_t sub_10003DEEC()
{
  sub_10001BF48();
  dispatch thunk of ScoreboardSubscriptionManager.insert(_:)();
  *(v0 + 152) = 0;

  sub_10001C740();

  return _swift_task_switch(v1);
}

uint64_t sub_10003DF78()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[10];
  sub_10003FA5C(v0[7], v2, &qword_1000DD538, &unk_1000ABF70);
  v4 = sub_100003998(&qword_1000DD538, &unk_1000ABF70);
  sub_100008E2C(v2, 0, 1, v4);
  v5 = type metadata accessor for CloudChannelError();
  sub_100008E2C(v3, 1, 1, v5);
  sub_10003E364(v1, v2, v3);
  sub_10001EF70(v3, &qword_1000DC460, &qword_1000AAEF8);
  sub_10001EF70(v2, &qword_1000DD530, &qword_1000ABF68);

  sub_10001BEDC();

  return v6();
}

uint64_t sub_10003E0B8()
{
  v19 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[9];

  v5 = sub_100003998(&qword_1000DD538, &unk_1000ABF70);
  sub_100008E2C(v3, 1, 1, v5);
  v0[5] = v1;
  swift_errorRetain();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  v6 = type metadata accessor for CloudChannelError();
  v7 = swift_dynamicCast();
  sub_100008E2C(v4, v7 ^ 1u, 1, v6);
  sub_10003E364(v2, v3, v4);
  sub_10001EF70(v3, &qword_1000DD530, &qword_1000ABF68);
  sub_10001EF70(v4, &qword_1000DC460, &qword_1000AAEF8);
  if (qword_1000DBA48 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100007DE8(v8, qword_1000E6DC0);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_10001C4D0();
    v12 = sub_10003FC24();
    v18 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000170D4(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "ScoreboardSubscriptionMessageProcessor - Failed to process scoreboard subscription - %s", v11, 0xCu);
    sub_100008A94(v12);
    sub_10000B008(v12);
    sub_10000B008(v11);
  }

  else
  {
  }

  sub_10001BEDC();

  return v16();
}

void sub_10003E364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v149 = a3;
  v150 = a1;
  v4 = sub_100003998(&qword_1000DC460, &qword_1000AAEF8);
  __chkstk_darwin(v4 - 8);
  v160 = &v136 - v5;
  v6 = type metadata accessor for SportingEventProgressStatus();
  v139 = *(v6 - 8);
  v140 = v6;
  __chkstk_darwin(v6);
  v138 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = 0;
  v156 = type metadata accessor for Date();
  v8 = *(v156 - 8);
  __chkstk_darwin(v156);
  v136 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v153 = &v136 - v11;
  v12 = sub_100003998(&qword_1000DD530, &qword_1000ABF68);
  __chkstk_darwin(v12 - 8);
  v14 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v157 = &v136 - v16;
  __chkstk_darwin(v17);
  v155 = &v136 - v18;
  __chkstk_darwin(v19);
  v154 = &v136 - v20;
  __chkstk_darwin(v21);
  v23 = &v136 - v22;
  __chkstk_darwin(v24);
  v26 = &v136 - v25;
  __chkstk_darwin(v27);
  v29 = (&v136 - v28);
  sub_10003FA5C(a2, &v136 - v28, &qword_1000DD530, &qword_1000ABF68);
  v30 = sub_100003998(&qword_1000DD538, &unk_1000ABF70);
  v31 = sub_100008B84(v29, 1, v30);
  v161 = v30;
  v158 = v8;
  if (v31 == 1)
  {
    sub_10001EF70(v29, &qword_1000DD530, &qword_1000ABF68);
LABEL_30:
    v159 = 0;
    v51 = 0;
    LODWORD(v152) = 1;
    goto LABEL_37;
  }

  v32 = *v29;

  sub_10001EF70(v29, &qword_1000DD538, &unk_1000ABF70);
  if (!sub_10001BE20(v32))
  {

    goto LABEL_30;
  }

  sub_1000835D4();
  v33 = *(v32 + 32);

  v162 = v33;
  v34 = v33;
  v35 = dispatch thunk of SportingEvent.coverage.getter();

  if (v35)
  {
    v36 = dispatch thunk of SportingEventCoverage.ingestion.getter();

    if (v36)
    {
      v159 = dispatch thunk of SportingEventCoverageIngestion.last.getter();
      v38 = v37;

      if ((v38 & 1) == 0)
      {
        LODWORD(v152) = 0;
        goto LABEL_33;
      }
    }
  }

  v39 = dispatch thunk of SportingEvent.coverage.getter();
  if (!v39 || (v40 = v39, v41 = dispatch thunk of SportingEventCoverage.ingestion.getter(), v40, !v41))
  {
    v159 = 0;
    LODWORD(v152) = 1;
LABEL_33:
    v51 = v162;
    goto LABEL_37;
  }

  v147 = a2;
  a2 = dispatch thunk of SportingEventCoverageIngestion.lastUpdates.getter();

  if (!a2)
  {
LABEL_36:
    v159 = 0;
    LODWORD(v152) = 1;
    v51 = v162;
    a2 = v147;
LABEL_37:
    v162 = v51;
    if (qword_1000DBA80 != -1)
    {
      goto LABEL_108;
    }

    goto LABEL_38;
  }

  v159 = sub_10001BE20(a2);
  if (!v159)
  {

    goto LABEL_36;
  }

  sub_1000835D4();
  v152 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_114:
    v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v42 = *(a2 + 32);
  }

  v43 = v42;
  v148 = a2 & 0xFFFFFFFFFFFFFF8;
  v8 = 1;
  while (1)
  {
    if (v159 == v8)
    {

      v159 = dispatch thunk of SportingEventCoverageLastUpdate.timestamp.getter();
      LODWORD(v152) = v52;

      v51 = v162;
      a2 = v147;
      v8 = v158;
      goto LABEL_37;
    }

    if (v152)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      if (v8 >= *(v148 + 16))
      {
        goto LABEL_113;
      }

      v44 = *(a2 + 8 * v8 + 32);
    }

    v45 = v44;
    v30 = (v8 + 1);
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v46 = COERCE_DOUBLE(dispatch thunk of SportingEventCoverageLastUpdate.timestamp.getter());
    if (v47)
    {
      v48 = 0.0;
    }

    else
    {
      v48 = v46;
    }

    v49 = COERCE_DOUBLE(dispatch thunk of SportingEventCoverageLastUpdate.timestamp.getter());
    if (v50)
    {
      if (v48 >= 0.0)
      {
        goto LABEL_26;
      }

LABEL_28:

      ++v8;
      v43 = v45;
      v30 = v161;
    }

    else
    {
      if (v48 < v49)
      {
        goto LABEL_28;
      }

LABEL_26:

      ++v8;
      v30 = v161;
    }
  }

  __break(1u);
LABEL_108:
  swift_once();
  v51 = v162;
LABEL_38:
  v148 = qword_1000E6E10;
  if (v51)
  {
    v53 = v51;
    v137 = SportingEvent.canonicalId.getter();
    v145 = v54;
  }

  else
  {
    v137 = 0;
    v145 = 0;
  }

  v147 = sub_100003998(&qword_1000DD540, &unk_1000ABF80);
  inited = swift_initStackObject();
  v146 = xmmword_1000AB460;
  *(inited + 16) = xmmword_1000AB460;
  sub_10003FA5C(a2, v26, &qword_1000DD530, &qword_1000ABF68);
  if (sub_100008B84(v26, 1, v30) == 1)
  {
    sub_10001EF70(v26, &qword_1000DD530, &qword_1000ABF68);
    v56 = 0;
    v57 = 0;
  }

  else
  {
    v56 = *(v26 + 1);
    v57 = *(v26 + 2);

    sub_10001EF70(v26, &qword_1000DD538, &unk_1000ABF70);
  }

  *(inited + 32) = v56;
  *(inited + 40) = v57;
  sub_10003FA5C(a2, v23, &qword_1000DD530, &qword_1000ABF68);
  if (sub_100008B84(v23, 1, v30) == 1)
  {
    sub_10001EF70(v23, &qword_1000DD530, &qword_1000ABF68);
    v58 = 0;
    v59 = 0;
  }

  else
  {
    v60 = &v23[v30[14]];
    v58 = *v60;
    v59 = *(v60 + 1);

    sub_10001EF70(v23, &qword_1000DD538, &unk_1000ABF70);
  }

  v61 = 0;
  *(inited + 48) = v58;
  *(inited + 56) = v59;
  v62 = _swiftEmptyArrayStorage;
LABEL_48:
  v63 = (inited + 40 + 16 * v61);
  v64 = v160;
  while (++v61 != 3)
  {
    v65 = v63 + 2;
    v66 = *v63;
    v63 += 2;
    if (v66)
    {
      v144 = v14;
      v67 = a2;
      v68 = *(v65 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100016520();
        v62 = v71;
      }

      v69 = v62[2];
      if (v69 >= v62[3] >> 1)
      {
        sub_100016520();
        v62 = v72;
      }

      v62[2] = v69 + 1;
      v70 = &v62[2 * v69];
      v70[4] = v68;
      v70[5] = v66;
      a2 = v67;
      v14 = v144;
      v8 = v158;
      goto LABEL_48;
    }
  }

  swift_setDeallocating();
  sub_100086798();
  *&v166 = v62;
  v73 = sub_100003998(&qword_1000DC420, &unk_1000ADE60);
  v74 = sub_10000A6FC(&qword_1000DC428, &qword_1000DC420, &unk_1000ADE60, &protocol conformance descriptor for [A]);
  v158 = v73;
  v144 = v74;
  v75 = BidirectionalCollection<>.joined(separator:)();
  v141 = v76;
  v142 = v75;

  v77 = v153;
  v78 = Date.init()();
  sub_10008C99C(v78);
  v143 = v79;
  v80 = *(v8 + 8);
  v81 = v156;
  v80(v77, v156);
  v82 = v154;
  sub_10003FA5C(a2, v154, &qword_1000DD530, &qword_1000ABF68);
  v30 = v161;
  LODWORD(v153) = sub_100008B84(v82, 1, v161);
  if (v153 == 1)
  {
    sub_10001EF70(v82, &qword_1000DD530, &qword_1000ABF68);
    v154 = 0;
  }

  else
  {
    v83 = *(v8 + 16);
    v84 = v82 + v30[12];
    v85 = v14;
    v86 = v82;
    v87 = v136;
    v83(v136, v84, v81);
    v88 = v86;
    v14 = v85;
    v89 = sub_10001EF70(v88, &qword_1000DD538, &unk_1000ABF70);
    sub_10008C9F4(v89);
    v154 = v90;
    v80(v87, v81);
  }

  v91 = v157;
  v92 = v155;
  sub_10003FA5C(a2, v155, &qword_1000DD530, &qword_1000ABF68);
  if (sub_100008B84(v92, 1, v30) == 1)
  {
    sub_10001EF70(v92, &qword_1000DD530, &qword_1000ABF68);
    v157 = 0;
    v23 = 0;
  }

  else
  {
    v23 = *(v92 + 32);
    v157 = *(v92 + 24);

    sub_10001EF70(v92, &qword_1000DD538, &unk_1000ABF70);
  }

  sub_10003FA5C(a2, v91, &qword_1000DD530, &qword_1000ABF68);
  v93 = sub_100008B84(v91, 1, v30);
  if (v93 == 1)
  {
    sub_10001EF70(v91, &qword_1000DD530, &qword_1000ABF68);
    v156 = 0;
  }

  else
  {
    v156 = *(v91 + 40);
    sub_10001EF70(v91, &qword_1000DD538, &unk_1000ABF70);
  }

  sub_10003FA5C(a2, v14, &qword_1000DD530, &qword_1000ABF68);
  if (sub_100008B84(v14, 1, v30) == 1)
  {
    sub_10001EF70(v14, &qword_1000DD530, &qword_1000ABF68);
    v26 = 0;
    v94 = 1;
  }

  else
  {
    v95 = &v14[v30[13]];
    v26 = *v95;
    v94 = v95[8];
    sub_10001EF70(v14, &qword_1000DD538, &unk_1000ABF70);
  }

  if (v152)
  {
    v96 = 0.0;
  }

  else
  {
    v96 = *&v159;
  }

  if (!(v152 & 1 | ((v159 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)))
  {
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  if (v96 <= -1.0)
  {
    goto LABEL_110;
  }

  if (v96 >= 1.84467441e19)
  {
    goto LABEL_111;
  }

  if (v162)
  {
    v97 = v162;
    v98 = v138;
    SportingEvent.progressStatus.getter();

    v99 = SportingEventProgressStatus.rawValue.getter();
    v101 = v100;
    (*(v139 + 8))(v98, v140);
  }

  else
  {
    v99 = 0;
    v101 = 0;
  }

  sub_10003FA5C(v149, v64, &qword_1000DC460, &qword_1000AAEF8);
  v102 = type metadata accessor for CloudChannelError();
  if (sub_100008B84(v64, 1, v102) == 1)
  {
    sub_10001EF70(v64, &qword_1000DC460, &qword_1000AAEF8);
    v166 = 0u;
    v167 = 0u;
    v168 = 0;
  }

  else
  {
    *(&v167 + 1) = v102;
    v168 = &off_1000D49C0;
    v103 = sub_10003F5B0(&v166);
    (*(*(v102 - 8) + 32))(v103, v64, v102);
  }

  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  v104 = swift_initStackObject();
  v105 = v104;
  *(v104 + 16) = xmmword_1000ABF20;
  *(v104 + 32) = 3;
  v106 = v145;
  if (v145)
  {
    v107 = &type metadata for String;
    v108 = v137;
  }

  else
  {
    v108 = 0;
    v107 = 0;
    *(v104 + 56) = 0;
  }

  v109 = v154;
  *(v104 + 40) = v108;
  *(v104 + 48) = v106;
  *(v104 + 64) = v107;
  *(v104 + 72) = 12;
  *(v104 + 104) = &type metadata for String;
  v110 = v141;
  *(v104 + 80) = v142;
  *(v104 + 88) = v110;
  *(v104 + 112) = 13;
  *(v104 + 144) = &type metadata for UInt64;
  *(v104 + 120) = v150;
  *(v104 + 152) = 18;
  if (v94)
  {
    v26 = 0;
    v111 = 0;
    *(v104 + 168) = 0;
    *(v104 + 176) = 0;
  }

  else
  {
    v111 = &type metadata for Int;
  }

  *(v104 + 160) = v26;
  *(v104 + 184) = v111;
  *(v104 + 192) = 10;
  *(v104 + 224) = &type metadata for UInt64;
  *(v104 + 200) = v143;
  v112 = &type metadata for UInt64;
  *(v104 + 232) = 14;
  if (v153 == 1)
  {
    v109 = 0;
    v112 = 0;
    *(v104 + 248) = 0;
    *(v104 + 256) = 0;
  }

  *(v104 + 240) = v109;
  *(v104 + 264) = v112;
  *(v104 + 272) = 16;
  if (v23)
  {
    v113 = &type metadata for String;
    v114 = v157;
  }

  else
  {
    v114 = 0;
    v113 = 0;
    *(v104 + 296) = 0;
  }

  *(v104 + 280) = v114;
  *(v104 + 288) = v23;
  *(v104 + 304) = v113;
  *(v104 + 312) = 15;
  *(v104 + 344) = &type metadata for UInt64;
  *(v104 + 320) = v96;
  *(v104 + 352) = 17;
  v115 = swift_initStackObject();
  *(v115 + 16) = v146;
  if (v93 == 1)
  {
    v116 = 0;
    v117 = 0;
  }

  else
  {
    v163[0] = v156;
    v116 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  v118 = 0;
  *(v115 + 40) = v117;
  *(v115 + 32) = v116;
  *(v115 + 48) = v99;
  *(v115 + 56) = v101;
  v119 = _swiftEmptyArrayStorage;
LABEL_95:
  v120 = (v115 + 40 + 16 * v118);
  while (++v118 != 3)
  {
    v121 = v120 + 2;
    v122 = *v120;
    v120 += 2;
    if (v122)
    {
      v123 = *(v121 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100016520();
        v119 = v126;
      }

      v124 = v119[2];
      if (v124 >= v119[3] >> 1)
      {
        sub_100016520();
        v119 = v127;
      }

      v119[2] = v124 + 1;
      v125 = &v119[2 * v124];
      v125[4] = v123;
      v125[5] = v122;
      goto LABEL_95;
    }
  }

  swift_setDeallocating();
  sub_100086798();
  v163[0] = v119;
  v128 = BidirectionalCollection<>.joined(separator:)();
  v130 = v129;

  *(v105 + 384) = &type metadata for String;
  *(v105 + 360) = v128;
  *(v105 + 368) = v130;
  *(v105 + 392) = 1;
  *(v105 + 400) = 0u;
  *(v105 + 416) = 0u;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  v131 = Dictionary.init(dictionaryLiteral:)();
  sub_10003FA5C(&v166, v163, &qword_1000DD548, &qword_1000ABF90);
  v132 = v164;
  if (v164)
  {
    v133 = v165;
    sub_100008614(v163, v164);
    v134 = (*(v133 + 8))(v132, v133);
    sub_100008A94(v163);
  }

  else
  {
    sub_10001EF70(v163, &qword_1000DD548, &qword_1000ABF90);
    v134 = Dictionary.init(dictionaryLiteral:)();
  }

  v135 = sub_100044908(v134, v131);
  sub_10001EF70(&v166, &qword_1000DD548, &qword_1000ABF90);
  sub_10009C660(v135, 257);
}

uint64_t sub_10003F3A8(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DD530, &qword_1000ABF68);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Date.init()();
  sub_10008C99C(v9);
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v12 = sub_100003998(&qword_1000DD538, &unk_1000ABF70);
  sub_100008E2C(v4, 1, 1, v12);
  sub_10003E364(v11, v4, a1);
  return sub_10001EF70(v4, &qword_1000DD530, &qword_1000ABF68);
}

uint64_t sub_10003F554()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t *sub_10003F5B0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_10003F620()
{
  sub_10001BEC4();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10003FB48;

  return sub_10003DCD0(v3, v4);
}

uint64_t sub_10003F6B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003F700(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = sub_10003FBF8(v8);
  *v9 = v10;
  v9[1] = sub_10003F7C0;

  return sub_10003C660(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_10003F7C0()
{
  sub_10001BEC4();
  v1 = *v0;
  sub_10001BE74();
  *v2 = v1;

  sub_10001BEDC();

  return v3();
}

uint64_t sub_10003F8A4()
{
  sub_10001BF48();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  v3 = sub_10003FBCC(v1);

  return v4(v3);
}

uint64_t sub_10003F938()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F970()
{
  sub_10001BF48();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  v3 = sub_10003FBCC(v1);

  return v4(v3);
}

unint64_t sub_10003FA04()
{
  result = qword_1000DD590;
  if (!qword_1000DD590)
  {
    type metadata accessor for ScoreboardSubscriptionManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD590);
  }

  return result;
}

uint64_t sub_10003FA5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003998(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10003FAC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FB04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003FB74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_10000A6FC(a1, a2, a3, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
}

uint64_t sub_10003FBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_once();
}

uint64_t sub_10003FC24()
{

  return swift_slowAlloc();
}

void sub_10003FC3C()
{
  v1 = v0;
  type metadata accessor for Date();
  sub_10000AC48();
  __chkstk_darwin(v2);
  sub_10000ADA0();
  v3 = *(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_message);
  sub_100003998(&qword_1000DD650, &unk_1000AC0E8);
  swift_allocObject();

  v5 = sub_10004498C(v4);
  v6 = *(v5[2] + *(*v5[2] + 184));
  if (sub_10001BE20(v6))
  {
    v9 = (v6 & 0xC000000000000001);
    sub_1000835D4();
    if ((v6 & 0xC000000000000001) != 0)
    {

      specialized _ArrayBuffer._getElementSlowPath(_:)();
      sub_10001C418();
    }

    else
    {
      v9 = *(v6 + 32);
    }

    if (qword_1000DBA18 != -1)
    {
      sub_10001C0A8(&qword_1000DBA18, v10, v11);
    }

    v12 = type metadata accessor for Logger();
    sub_100007DE8(v12, qword_1000E6D30);
    swift_retain_n();
    v13 = v9;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    v72 = v15;
    v74 = v5;
    if (os_log_type_enabled(v14, v15))
    {
      v71 = v14;
      v16 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v16 = 136316418;
      v17 = SportingEvent.canonicalId.getter();
      v19 = sub_100045E94(v17, v18);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      v20 = SportingEvent.version.getter();
      v22 = sub_100045E94(v20, v21);

      *(v16 + 14) = v22;
      *(v16 + 22) = 2048;
      v23 = sub_100045E48();
      v24(v23);
      Date.timeIntervalSince1970.getter();
      v26 = v25;
      v27 = sub_100045DA0();
      v28(v27);
      *(v16 + 24) = v26;
      *(v16 + 32) = 2048;
      v29 = *(v5[2] + 16);

      *(v16 + 34) = v29;

      *(v16 + 42) = 2080;
      v30 = v5[2];
      v31 = *(v30 + 40);
      v32 = *(v30 + 48);

      v33 = sub_1000170D4(v31, v32, v75);

      *(v16 + 44) = v33;
      *(v16 + 52) = 2048;
      v34 = v5[2] + qword_1000E6E00;
      v35 = *v34;
      if (*(v34 + 8))
      {
        v35 = -1.0;
      }

      *(v16 + 54) = v35;
      _os_log_impl(&_mh_execute_header, v71, v72, "=== Begin apns log for %s, version %s, message timestamp %f, type %ld, tempoSessionId %s, liveActivityTtl %f ===", v16, 0x3Eu);
      swift_arrayDestroy();
      sub_10002F1FC();

      sub_10002F1FC();
    }

    else
    {
    }

    v37 = SportingEvent.version.getter();
    v38 = (v1 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_messageVersion);
    *v38 = v37;
    v38[1] = v39;

    v40 = *(v1 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_isLowCapLiveActivity) ^ 1;
    v41 = *(v1 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_dataRepository);
    SportingEvent.canonicalId.getter();
    sub_100008614((v41 + 16), *(v41 + 40));
    v42 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();

    if (v42)
    {
      v73 = v13;
      v43 = dispatch thunk of SportingEvent.versionNumber.getter();
      v44 = SportingEventSubscription.sportingEventDetails.getter();
      v45 = dispatch thunk of SportingEvent.versionNumber.getter();

      if (v43 >= v45)
      {
        v46 = SportingEvent.canonicalId.getter();
        sub_10002D018(v3, v46, v47, v40 & 1);
      }

      sub_1000459F8(v1 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateable, v75, &qword_1000DD648, &qword_1000AC0E0);
      if (v76)
      {
        sub_100008614(v75, v76);
        SportingEventSubscription.canonicalId.getter();
        v48 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v49 = swift_allocObject();
        v49[2] = v48;
        v49[3] = v74;
        v49[4] = v42;
        v49[5] = v73;

        v50 = v73;

        v51 = v42;
        sub_100057468();

        sub_100008A94(v75);
      }

      else
      {

        sub_10001BB44(v75, &qword_1000DD648, &qword_1000AC0E0);
      }
    }

    else
    {

      v52 = v13;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v53, v54))
      {
        sub_100045DE8();
        v55 = swift_slowAlloc();
        v75[0] = swift_slowAlloc();
        *v55 = 136315650;
        v56 = SportingEvent.canonicalId.getter();
        v58 = sub_100045E94(v56, v57);

        *(v55 + 4) = v58;
        *(v55 + 12) = 2080;
        v59 = SportingEvent.version.getter();
        v61 = sub_100045E94(v59, v60);

        *(v55 + 14) = v61;
        *(v55 + 22) = 2048;
        v62 = sub_100045E48();
        v63(v62);
        Date.timeIntervalSince1970.getter();
        v65 = v64;
        v66 = sub_100045DA0();
        v67(v66);
        *(v55 + 24) = v65;
        _os_log_impl(&_mh_execute_header, v53, v54, "Failed to process push notification for %s with version %s and message timestamp %f - no subscription exists", v55, 0x20u);
        swift_arrayDestroy();
        sub_10002F1FC();

        sub_10002F1FC();
      }

      sub_10004078C(v68, v69, v70);
    }

    sub_100045DCC();
  }

  else
  {
    sub_10004078C(0, v7, v8);
    sub_100045DCC();
  }
}

void sub_100040560(char a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_100040864(a3, a4, a5, *(*(a3 + 16) + qword_1000E6E00), *(*(a3 + 16) + qword_1000E6E00 + 8), *(Strong + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_isLowCapLiveActivity), a1 & 1);
    sub_10004078C(v11, v12, v13);
  }
}

uint64_t sub_10004078C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DBA18 != -1)
  {
    sub_10001C0A8(&qword_1000DBA18, a2, a3);
  }

  v3 = type metadata accessor for Logger();
  sub_100007DE8(v3, qword_1000E6D30);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "=== End apns log ===", v6, 2u);
    sub_10002F1FC();
  }

  return sub_100065BA4(v7);
}

void sub_100040864(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t), int a5, int a6, int a7)
{
  v194 = a4;
  v199 = a1;
  v184 = a7;
  v185 = a6;
  LODWORD(v193) = a5;
  v200 = a3;
  v8 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v9 = sub_10001C3C4(v8);
  __chkstk_darwin(v9);
  sub_100045D70();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  sub_100045DAC(&v167 - v14);
  v186 = type metadata accessor for Date();
  sub_10000AC48();
  v188 = v15;
  __chkstk_darwin(v16);
  sub_100045D70();
  v187 = v17 - v18;
  __chkstk_darwin(v19);
  sub_100045DAC(&v167 - v20);
  v182 = type metadata accessor for SportsScheduledActivities();
  sub_10000AC48();
  v181 = v21;
  __chkstk_darwin(v22);
  sub_10000ADA0();
  v183 = v24 - v23;
  v25 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v25);
  sub_10000ACFC();
  __chkstk_darwin(v26);
  sub_100045DAC(&v167 - v27);
  v179 = type metadata accessor for Sport();
  sub_10000AC48();
  v178 = v28;
  __chkstk_darwin(v29);
  sub_10000ADA0();
  v177 = v31 - v30;
  v32 = sub_100003998(&qword_1000DD228, &qword_1000ABE40);
  sub_10001C3C4(v32);
  sub_10000ACFC();
  __chkstk_darwin(v33);
  v189 = &v167 - v34;
  type metadata accessor for SportingEventProgressStatus();
  sub_10000AC48();
  v191 = v35;
  v192 = v36;
  __chkstk_darwin(v35);
  sub_100045D70();
  v39 = v37 - v38;
  __chkstk_darwin(v40);
  v42 = &v167 - v41;
  v43 = type metadata accessor for SportingEventPlayLevel();
  sub_10000AC48();
  v45 = v44;
  __chkstk_darwin(v46);
  sub_10000ADA0();
  v49 = v48 - v47;
  v50 = SportingEventSubscription.mostRecentPlay.getter();
  v51 = *(v45 + 104);
  v172 = enum case for SportingEventPlayLevel.alerts(_:);
  v173 = v45 + 104;
  v171 = v51;
  v51(v49);
  v52 = sub_10007C174(v49, v50);

  v53 = *(v45 + 8);
  v174 = v49;
  v176 = v43;
  v175 = v45 + 8;
  v170 = v53;
  v53(v49, v43);
  v204 = a2;
  v54 = SportingEventSubscription.sportingEventDetails.getter();
  v55 = dispatch thunk of SportingEvent.alertUpdates.getter();

  v196 = v52;
  v168 = v12;
  if (!v55)
  {
    goto LABEL_7;
  }

  if (!sub_10001BE20(v55))
  {

LABEL_7:
    v197 = 0;
    goto LABEL_8;
  }

  sub_100045E54();
  if (v54)
  {
    v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v56 = *(v55 + 32);
  }

  v197 = v56;

LABEL_8:
  v57 = v204;
  v58 = SportingEventSubscription.sportingEventDetails.getter();
  SportingEvent.progressStatus.getter();

  v59 = enum case for SportingEventProgressStatus.final(_:);
  v60 = v192;
  v61 = v39;
  v62 = v39;
  v63 = v191;
  v190 = v192[13];
  (v190)(v62, enum case for SportingEventProgressStatus.final(_:), v191);
  LOBYTE(v58) = sub_100064D7C(v42, v61);
  v64 = v60[1];
  v65 = sub_100045DA0();
  v64(v65);
  v66 = sub_100045DF4();
  v64(v66);
  if (v58)
  {
    type metadata accessor for SportingEventFactory();
    (v190)(v42, v59, v63);
    v67 = static SportingEventFactory.eventWithProgressStatus(event:progressStatus:)();
    v68 = sub_100045DF4();
    v64(v68);
    v69 = v198;
    SportingEventSubscription.update(sportingEventDetails:updatedAt:)();

LABEL_23:
    sub_1000459F8(*(v199 + 16) + *(**(v199 + 16) + 176), v189, &qword_1000DD228, &qword_1000ABE40);
    SportingEventSubscription.view.setter();
    goto LABEL_24;
  }

  v70 = SportingEventSubscription.sportingEventDetails.getter();
  SportingEvent.progressStatus.getter();

  v71 = sub_100045E48();
  v72 = v190;
  v190(v71);
  v73 = sub_100064D7C(v42, v61);
  v74 = sub_100045DA0();
  v64(v74);
  v75 = sub_100045DF4();
  v64(v75);
  if (v73 & 1) != 0 && (SportingEvent.progressStatus.getter(), v76 = sub_100045E48(), v72(v76), v77 = sub_100064D7C(v42, v61), v78 = sub_100045DA0(), v64(v78), v79 = sub_100045DF4(), v64(v79), (v77))
  {
    if (qword_1000DBA38 != -1)
    {
      sub_100045D4C();
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_100007DE8(v80, qword_1000E6D90);
    v81 = v200;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();

    v84 = os_log_type_enabled(v82, v83);
    v69 = v198;
    if (v84)
    {
      v85 = swift_slowAlloc();
      sub_100045DE8();
      v86 = swift_slowAlloc();
      v201 = v86;
      *v85 = 136315138;
      v87 = SportingEvent.canonicalId.getter();
      v89 = sub_1000170D4(v87, v88, &v201);

      *(v85 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v82, v83, "Skipped pregame update for inProgress event. canonical id: %s", v85, 0xCu);
      sub_100008A94(v86);
      sub_10002F1FC();

      sub_10002F1FC();
    }

    v57 = v204;
  }

  else
  {
    v90 = v200;
    v91 = dispatch thunk of SportingEvent.versionNumber.getter();
    v57 = v204;
    v92 = SportingEventSubscription.sportingEventDetails.getter();
    v93 = dispatch thunk of SportingEvent.versionNumber.getter();

    if (v91 >= v93)
    {
      v69 = v198;
      SportingEventSubscription.update(sportingEventDetails:updatedAt:)();
      goto LABEL_23;
    }

    v69 = v198;
    if (qword_1000DBA38 != -1)
    {
      sub_100045D4C();
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    sub_100007DE8(v94, qword_1000E6D90);
    v95 = v90;
    v96 = v57;
    v97 = v95;
    v98 = v96;
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v99, v100))
    {
      sub_100045DE8();
      v101 = swift_slowAlloc();
      sub_100045DE8();
      v192 = swift_slowAlloc();
      v201 = v192;
      *v101 = 136315650;
      v102 = SportingEvent.canonicalId.getter();
      v104 = sub_1000170D4(v102, v103, &v201);

      *(v101 + 4) = v104;
      *(v101 + 12) = 2048;
      v105 = dispatch thunk of SportingEvent.versionNumber.getter();

      *(v101 + 14) = v105;
      *(v101 + 22) = 2048;
      v106 = SportingEventSubscription.sportingEventDetails.getter();
      v107 = dispatch thunk of SportingEvent.versionNumber.getter();

      *(v101 + 24) = v107;
      _os_log_impl(&_mh_execute_header, v99, v100, "Skipped stale activity update for canonical id: %s. (%ld < %ld)", v101, 0x20u);
      sub_100008A94(v192);
      sub_10002F1FC();

      v57 = v204;
      sub_10002F1FC();
    }

    else
    {
    }
  }

LABEL_24:
  SportingEventSubscription.liveActivityTTLSeconds.setter();
  v108 = *&v69[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_dataRepository];
  sub_100008614((v108 + 16), *(v108 + 40));
  v109 = v195;
  dispatch thunk of PersistentStorable.writeEventSubscription(_:isConventionalOrUnified:)();
  if (v109)
  {

    return;
  }

  v110 = SportingEventSubscription.consumers.getter();
  v111 = sub_100049B40(0xD000000000000011, 0x80000001000B0480, v110);

  v112 = v111 | v185;
  if ((v111 | v185))
  {
    if (v184)
    {
      v113 = SportingEventSubscription.mostRecentPlay.getter();
      v114 = v174;
      v115 = v176;
      v171(v174, v172, v176);
      v116 = sub_10007C174(v114, v113);

      v170(v114, v115);
      v117 = SportingEventSubscription.sportingEventDetails.getter();
      v118 = dispatch thunk of SportingEvent.alertUpdates.getter();

      if (v118)
      {
        v119 = sub_10001BE20(v118);
        v120 = v196;
        if (v119)
        {
          sub_100045E54();
          if (v117)
          {
            v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v121 = *(v118 + 32);
          }

          v122 = v121;
        }

        else
        {

          v122 = 0;
        }
      }

      else
      {
        v122 = 0;
        v120 = v196;
      }

      if (qword_1000DB9F8 != -1)
      {
        swift_once();
      }

      SportingEventSubscription.sport.getter();
      v149 = v177;
      Sport.init(rawValue:)();
      sub_100049C24();
      v151 = v150;
      (*(v178 + 8))(v149, v179);
      v195 = v116;
      if (v151)
      {
        v152 = sub_100043934(v120, v116);
      }

      else
      {
        v152 = sub_100043A64(v197, v122);
      }

      v153 = v152;
      type metadata accessor for TaskPriority();
      sub_100045E00();
      sub_100008E2C(v154, v155, v156, v157);
      v158 = swift_allocObject();
      *(v158 + 16) = 0;
      *(v158 + 24) = 0;
      v159 = v204;
      *(v158 + 32) = v69;
      *(v158 + 40) = v159;
      *(v158 + 48) = v153 & 1;
      *(v158 + 56) = v199;
      v160 = v159;
      v161 = v69;

      sub_100045DBC();
      sub_10004A77C();

      v57 = v159;
      v123 = v186;
      goto LABEL_50;
    }

    sub_10000BC8C(v108 + 16, &v201);
    sub_100008614(&v201, v202);
    v124 = v183;
    dispatch thunk of PersistentStorable.scheduledLiveActivities.getter();
    sub_100008A94(&v201);
    v125 = SportingEventSubscription.canonicalId.getter();
    v127 = v126;
    v128 = SportsScheduledActivities.scheduledActivities.getter();
    v129 = v180;
    sub_10007C1BC(v125, v127, v128, v180);
    v130 = v129;

    v131 = v129;
    v132 = v186;
    if (sub_100008B84(v131, 1, v186) == 1)
    {
      (*(v181 + 8))(v124, v182);

      sub_10001BB44(v130, &qword_1000DC5A0, &unk_1000AB0E0);
    }

    else
    {
      v195 = v125;
      v133 = v188;
      v134 = v169;
      (*(v188 + 32))(v169, v130, v132);
      v135 = v187;
      static Date.now.getter();
      sub_100045A58();
      v136 = dispatch thunk of static Comparable.< infix(_:_:)();
      v137 = v135;
      v138 = *(v133 + 8);
      v138(v137, v132);
      if ((v136 & 1) == 0)
      {
        v194 = v138;
        sub_10000BC8C(v108 + 16, &v201);
        v193 = v203;
        sub_100008614(&v201, v202);
        v141 = v168;
        sub_100045E00();
        sub_100008E2C(v142, v143, v144, v132);
        v145 = v195;
        dispatch thunk of PersistentStorable.scheduleLiveActivity(_:forId:)();
        v120 = v196;
        v146 = v169;
        sub_10001BB44(v141, &qword_1000DC5A0, &unk_1000AB0E0);
        sub_100008A94(&v201);
        sub_100042EC0(v145, v127);

        v123 = v186;
        v194(v146, v186);
        v147 = sub_100045D80();
        v148(v147);
        v57 = v204;
        goto LABEL_50;
      }

      v138(v134, v132);
      v139 = sub_100045D80();
      v140(v139);
    }

    v57 = v204;
    v123 = v132;
  }

  else
  {
    v123 = v186;
  }

  v120 = v196;
LABEL_50:
  v162 = v199;
  sub_100042374(v199, v57, v112 & 1);
  v163 = SportingEventSubscription.canonicalId.getter();
  sub_100043CF8(v163, v164, v162, 0);

  v165 = v187;
  Date.init()();
  sub_100043AE0(v200, v57, v166, v112 & 1);

  (*(v188 + 8))(v165, v123);
}

uint64_t sub_10004181C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 104) = a5;
  *(v7 + 112) = a7;
  *(v7 + 144) = a6;
  *(v7 + 96) = a4;
  return _swift_task_switch(sub_100041844);
}

uint64_t sub_100041844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001C50C();
  sub_10001C370();
  v11 = 1751607656;
  v12 = sub_100066914();
  if ((v12 & 1) == 0)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  type metadata accessor for ContainerConstants();
  v13 = static ContainerConstants.defaultSuiteName.getter();
  v15 = v14;
  v16 = objc_allocWithZone(NSUserDefaults);
  v17 = sub_100058E38(v13, v15);
  if (!v17)
  {
    v17 = [objc_opt_self() standardUserDefaults];
  }

  v18 = v17;
  v10[15] = v17;
  v19 = sub_100045E74();
  v20 = [v18 stringForKey:v19];

  if (v20)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  v41._countAndFlagsBits = v11;
  v41._object = v22;
  sub_10004AF5C(v41);
  if ((sub_100064724(v12 & 1) & 1) == 0)
  {
    if (qword_1000DB9C0 != -1)
    {
      swift_once();
    }

    v23 = v10[12];
    sub_100008614((qword_1000E6CC8 + 208), *(qword_1000E6CC8 + 232));
    v10[10] = sub_10000F1CC();
    v24 = swift_allocObject();
    *(v24 + 16) = v12 & 1;
    *(v24 + 24) = v18;
    v25 = v18;
    sub_100003998(&qword_1000DC970, &qword_1000AB3C0);
    sub_10000A6FC(&qword_1000DC978, &qword_1000DC970, &qword_1000AB3C0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v26 = Publisher<>.sink(receiveValue:)();

    *(v23 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_cancellable) = v26;
  }

  sub_1000459F8(v10[12] + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateable, (v10 + 2), &qword_1000DD648, &qword_1000AC0E0);
  v27 = v10[5];
  if (v27)
  {
    sub_100008614(v10 + 2, v27);
    v28 = swift_task_alloc();
    v10[16] = v28;
    *v28 = v10;
    v28[1] = sub_100041BF4;
    sub_10001C358();

    return sub_100058748();
  }

  else
  {
    sub_10001BB44((v10 + 2), &qword_1000DD648, &qword_1000AC0E0);
    v31 = (v10[12] + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateCompletion);
    v32 = v10[15];
    if (*v31)
    {
      (*v31)(0);
    }

    sub_10001BEDC();
    sub_10001C358();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
  }
}

uint64_t sub_100041BF4()
{
  sub_10001BEC4();
  sub_10001BF54();
  v2 = *v1;
  sub_10001BE74();
  *v3 = v2;
  *(v4 + 136) = v0;

  sub_10001C740();

  return _swift_task_switch(v5);
}

uint64_t sub_100041CF4()
{
  sub_10001BEC4();
  sub_100008A94(v0 + 2);
  v1 = (v0[12] + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateCompletion);
  v2 = v0[15];
  if (*v1)
  {
    (*v1)(0);
  }

  sub_10001BEDC();

  return v3();
}

uint64_t sub_100041D7C()
{
  v26 = v0;
  v1 = *(v0 + 96);

  sub_100008A94((v0 + 16));
  v2 = *(v1 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateCompletion);
  if (v2)
  {
    sub_100045BF8();
    swift_allocError();
    *v3 = xmmword_1000AC020;
    v2();
  }

  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  v6 = SportingEventSubscription.canonicalId.getter();
  v8 = v7;
  swift_errorRetain();
  sub_100043CF8(v6, v8, v5, v4);

  if (qword_1000DBA38 != -1)
  {
    sub_100045D4C();
    swift_once();
  }

  v9 = *(v0 + 104);
  v10 = type metadata accessor for Logger();
  sub_100007DE8(v10, qword_1000E6D90);
  sub_10001C418();
  swift_errorRetain();
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = SportingEventSubscription.sportingEventDetails.getter();
    v16 = SportingEvent.canonicalId.getter();
    v18 = v17;

    v19 = sub_1000170D4(v16, v18, &v25);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v20 = Error.localizedDescription.getter();
    v22 = sub_1000170D4(v20, v21, &v25);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed to update activity for canonical id: %s - %s", v14, 0x16u);
    swift_arrayDestroy();
    sub_10002F1FC();

    sub_10002F1FC();
  }

  else
  {
  }

  sub_10001BEDC();

  return v23();
}

uint64_t sub_10004203C(uint64_t *a1, char a2, void *a3)
{
  v6 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v10 = *a1;
  v9 = a1[1];
  v11 = type metadata accessor for TaskPriority();
  sub_100008E2C(v8, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a2 & 1;
  *(v12 + 40) = v10;
  *(v12 + 48) = v9;
  *(v12 + 56) = a3;

  v13 = a3;
  sub_10004A77C();
}

uint64_t sub_100042148(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  *(v7 + 48) = a4;
  return _swift_task_switch(sub_100042170);
}

uint64_t sub_100042170()
{
  sub_10001BEC4();
  if (qword_1000DBA00 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_1000E6D10;
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_10004223C);
}

uint64_t sub_10004223C()
{
  sub_10001BEC4();
  sub_10004AFAC(*(v0 + 48) & 1);
  sub_10001C740();

  return _swift_task_switch(v1);
}

uint64_t sub_1000422A8()
{
  v1 = *(v0 + 32);
  v2 = String._bridgeToObjectiveC()();

  v3 = sub_100045E74();
  [v1 setObject:v2 forKey:v3];

  sub_10001BEDC();

  return v4();
}

void sub_100042374(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v48 = a3;
  v7 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v7);
  sub_10000ACFC();
  __chkstk_darwin(v8);
  v49 = &v41 - v9;
  v10 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  sub_10001C3C4(v10);
  sub_10000ACFC();
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for URL();
  sub_10000AC48();
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  v20 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v41 - v22;
  v24 = (*(a1 + 16) + qword_1000E6E08);
  v25 = v24[1];
  if (v25)
  {
    v46 = *v24;

    v47 = a2;
    SportingEventSubscription.fullPayloadBaseURL.getter();
    if (sub_100008B84(v13, 1, v14) == 1)
    {

      v26 = &unk_1000DD7B0;
      v27 = &qword_1000AC150;
      v28 = v13;
    }

    else
    {
      v45 = *(v16 + 32);
      v45(v23, v13, v14);
      sub_1000459F8(v4 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_subscriptionOperationFactory, v50, &qword_1000DCD20, &unk_1000AB820);
      if (v50[3])
      {
        memcpy(v51, v50, 0xB8uLL);
        type metadata accessor for TaskPriority();
        sub_100045E00();
        sub_100008E2C(v29, v30, v31, v32);
        sub_10000BC30(v51, v50);
        (*(v16 + 16))(v20, v23, v14);
        v33 = *(v16 + 80);
        v44 = v4;
        v34 = (v33 + 224) & ~v33;
        v43 = v34 + v18;
        v42 = (v34 + v18) & 0xFFFFFFFFFFFFFFF8;
        v41 = (v42 + 31) & 0xFFFFFFFFFFFFFFF8;
        v35 = swift_allocObject();
        *(v35 + 2) = 0;
        *(v35 + 3) = 0;
        memcpy(v35 + 32, v50, 0xB8uLL);
        v36 = v47;
        *(v35 + 27) = v47;
        v45(&v35[v34], v20, v14);
        v37 = v44;
        v35[v43] = v48 & 1;
        v38 = &v35[v42];
        *(v38 + 1) = v46;
        *(v38 + 2) = v25;
        *&v35[v41] = v37;
        v39 = v36;
        v40 = v37;
        sub_100045DBC();
        sub_10004A9F4();

        sub_10000BCF0(v51);
        (*(v16 + 8))(v23, v14);
        return;
      }

      (*(v16 + 8))(v23, v14);

      v26 = &qword_1000DCD20;
      v27 = &unk_1000AB820;
      v28 = v50;
    }

    sub_10001BB44(v28, v26, v27);
  }
}

uint64_t sub_100042728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 56) = v10;
  *(v8 + 64) = v11;
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 88) = a7;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 16) = a1;
  return _swift_task_switch(sub_100042760);
}

uint64_t sub_100042760()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 56);
  *(v4 + 16) = *(v0 + 24);
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v5;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_100042878;
  sub_10001C740();

  return withCheckedContinuation<A>(isolation:function:_:)(v7, v8, v9, 0xD000000000000039, v10, v11, v4, v12);
}

uint64_t sub_100042878()
{
  sub_10001BEC4();
  sub_10001BF54();
  v1 = *v0;
  sub_10001BE74();
  *v2 = v1;

  sub_10001BEDC();

  return v3();
}

uint64_t sub_100042974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a1;
  v54 = a8;
  v45 = a6;
  v46 = a7;
  v44 = a5;
  v42 = a4;
  v52 = sub_100003998(&qword_1000DCA48, qword_1000AB448);
  v50 = *(v52 - 8);
  v51 = *(v50 + 64);
  __chkstk_darwin(v52);
  v49 = &v41 - v9;
  v43 = type metadata accessor for Date();
  v10 = *(v43 - 8);
  __chkstk_darwin(v43);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  FullApsMessageOperation = type metadata accessor for SubscriptionFetchFullApsMessageOperation(0);
  v14 = (FullApsMessageOperation - 8);
  __chkstk_darwin(FullApsMessageOperation);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003998(&qword_1000DD670, &unk_1000AC168);
  v18 = *(v17 - 8);
  v47 = v17;
  v48 = v18;
  __chkstk_darwin(v17);
  v20 = &v41 - v19;
  v21 = SportingEventSubscription.canonicalId.getter();
  v23 = v22;
  v24 = *(a2 + 40);
  sub_10000BC8C(a2 + 96, (v16 + 8));
  v25 = v14[9];
  v26 = type metadata accessor for URL();
  (*(*(v26 - 8) + 16))(&v16[v25], v42, v26);

  v27 = sub_10001F5E4(v44);
  *v16 = v24;
  *(v16 + 6) = v21;
  *(v16 + 7) = v23;
  v16[v14[10]] = v27 & 1;
  v28 = &v16[v14[11]];
  v29 = v46;
  *v28 = v45;
  v28[1] = v29;
  v30 = v14[12];

  v31 = Date.init()();
  sub_10008C99C(v31);
  v33 = v32;
  (*(v10 + 8))(v12, v43);
  *&v16[v30] = v33;
  v55 = sub_10005B6D4();
  v56 = 0;
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.replaceError(with:)();

  sub_10004589C(v16, type metadata accessor for SubscriptionFetchFullApsMessageOperation);
  v35 = v49;
  v34 = v50;
  v36 = v52;
  (*(v50 + 16))(v49, v53, v52);
  v37 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v38 = swift_allocObject();
  (*(v34 + 32))(v38 + v37, v35, v36);
  sub_10000A6FC(&qword_1000DD678, &qword_1000DD670, &unk_1000AC168, &protocol conformance descriptor for Publishers.ReplaceError<A>);
  v39 = v47;
  Publisher<>.sink(receiveValue:)();

  (*(v48 + 8))(v20, v39);
  swift_beginAccess();
  sub_100003998(&qword_1000DCC28, &qword_1000AB798);
  sub_10000A6FC(&qword_1000DCC30, &qword_1000DCC28, &qword_1000AB798, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_100042EC0(uint64_t a1, uint64_t a2)
{
  v5 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v5);
  sub_10000ACFC();
  __chkstk_darwin(v6);
  sub_1000459F8(v2 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_subscriptionOperationFactory, v14, &qword_1000DCD20, &unk_1000AB820);
  if (!v14[3])
  {
    return sub_10001BB44(v14, &qword_1000DCD20, &unk_1000AB820);
  }

  memcpy(v15, v14, 0xB8uLL);
  type metadata accessor for TaskPriority();
  sub_100045E00();
  sub_100008E2C(v7, v8, v9, v10);
  sub_10000BC30(v15, v14);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  memcpy(v11 + 4, v14, 0xB8uLL);
  v11[27] = a1;
  v11[28] = a2;
  v11[29] = v2;

  v12 = v2;
  sub_100045DBC();
  sub_10004A9F4();

  return sub_10000BCF0(v15);
}

uint64_t sub_10004302C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_100043054);
}

uint64_t sub_100043054()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_100043150;
  sub_10001C740();

  return withCheckedContinuation<A>(isolation:function:_:)(v6, v7, v8, 0xD000000000000020, v9, v10, v3, v11);
}

uint64_t sub_100043150()
{
  sub_10001BEC4();
  sub_10001BF54();
  v1 = *v0;
  sub_10001BE74();
  *v2 = v1;

  sub_10001BEDC();

  return v3();
}

uint64_t sub_10004324C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v56 = a3;
  v52 = a1;
  v7 = sub_100003998(&qword_1000DCA48, qword_1000AB448);
  v53 = *(v7 - 8);
  v54 = v7;
  v50 = *(v53 + 64);
  __chkstk_darwin(v7);
  v51 = &v48 - v8;
  v9 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  __chkstk_darwin(ActivityOperation);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000499E0();
  v17 = v16;
  v18 = type metadata accessor for Date();
  v19 = v11;
  sub_100008E2C(v11, 1, 1, v18);
  sub_10000BC30(a2, v14);
  sub_10006F7C0(v14 + 23);
  if (qword_1000DB9B8 != -1)
  {
    swift_once();
  }

  v20 = qword_1000E6CC0;
  *(v14 + 31) = type metadata accessor for BagProvider();
  *(v14 + 32) = &off_1000D0860;
  *(v14 + 28) = v20;
  v21 = type metadata accessor for AccountManager();
  v22 = swift_allocObject();
  *(v14 + 36) = v21;
  *(v14 + 37) = &off_1000D0550;
  *(v14 + 33) = v22;
  v23 = *(a2 + 40);
  sub_10000BC8C(a2 + 56, (v14 + 312));
  v24 = &v14[ActivityOperation[12]];
  v49 = v19;
  sub_1000459F8(v19, v24, &qword_1000DC5A0, &unk_1000AB0E0);
  *(v14 + 38) = v23;
  v14[352] = 0;
  *(v14 + 45) = 0;
  *(v14 + 46) = 0;
  *(v14 + 47) = 0;
  *(v14 + 48) = 1;
  *(v14 + 392) = 0u;
  *(v14 + 408) = 0u;
  *(v14 + 424) = 0u;
  *(v14 + 440) = 0u;
  *(v14 + 456) = 0u;
  *(v14 + 60) = 0;
  *(v14 + 61) = 0;
  *(v14 + 59) = 1;
  v14[496] = 1;
  v25 = &v14[ActivityOperation[13]];
  *v25 = 0xD000000000000011;
  *(v25 + 1) = 0x80000001000B0480;
  v26 = &v14[ActivityOperation[14]];
  *v26 = v15;
  v26[1] = v17;
  v27 = &v14[ActivityOperation[15]];
  *v27 = v56;
  v27[1] = a4;
  v14[ActivityOperation[16]] = 1;
  v48 = ActivityOperation[17];
  v28 = type metadata accessor for ActivityAuthorization();
  v29 = objc_allocWithZone(v28);

  v30 = [v29 init];
  v31 = sub_1000499E0();
  v33 = v32;
  v57[3] = v28;
  v57[4] = &off_1000D1900;
  v57[0] = v30;
  type metadata accessor for ActivityCapUtility();
  v34 = swift_allocObject();
  v35 = sub_10000B90C(v57, v28);
  v36 = __chkstk_darwin(v35);
  v38 = (&v48 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38, v36);
  v40 = *v38;
  v34[5] = v28;
  v34[6] = &off_1000D1900;
  v34[2] = v40;
  v34[7] = v31;
  v34[8] = v33;
  sub_100008A94(v57);

  sub_10001BB44(v49, &qword_1000DC5A0, &unk_1000AB0E0);
  *&v14[v48] = v34;
  v41 = sub_10008CAA4(0);
  sub_10004589C(v14, type metadata accessor for SubscriptionCreateActivityOperation);
  v57[0] = v41;
  v42 = v53;
  v43 = v51;
  v44 = v54;
  (*(v53 + 16))(v51, v52, v54);
  v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v56;
  *(v46 + 24) = a4;
  (*(v42 + 32))(v46 + v45, v43, v44);

  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  sub_100003998(&qword_1000DCC28, &qword_1000AB798);
  sub_10000A6FC(&qword_1000DCC30, &qword_1000DCC28, &qword_1000AB798, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_100043854(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    if (qword_1000DB9C0 != -1)
    {
      swift_once();
    }

    sub_10002B47C(0xD000000000000011, 0x80000001000B0480, a2, a3, nullsub_1, 0);
  }

  sub_100003998(&qword_1000DCA48, qword_1000AB448);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100043934(void *a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    if (a1)
    {
      v3 = a1;
      v4 = v2;
      v24 = dispatch thunk of SportingEventPlay.stamp.getter();
      v6 = v5;
      v7 = dispatch thunk of SportingEventPlay.stamp.getter();
      v9 = v8;
      v10 = dispatch thunk of SportingEventPlay.id.getter();
      if (v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = 48;
      }

      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE100000000000000;
      }

      v14 = dispatch thunk of SportingEventPlay.id.getter();
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = 48;
      }

      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0xE100000000000000;
      }

      if (v12 == v16 && v13 == v17)
      {

        v2 = 0;
      }

      else
      {
        if (v9)
        {
          v19 = 0;
        }

        else
        {
          v19 = v7;
        }

        v20 = v24;
        if (v6)
        {
          v20 = 0;
        }

        v21 = v19 < v20;
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v2 = (v21 & ~v22);
      }
    }

    else
    {
      return 1;
    }
  }

  return v2;
}

BOOL sub_100043A64(void *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!a1)
  {
    return 1;
  }

  v3 = a2;
  v4 = a1;
  v5 = SportingEventAlertUpdate.version.getter();
  v6 = SportingEventAlertUpdate.version.getter();

  return v6 < v5;
}

void sub_100043AE0(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_getObjectType();
  type metadata accessor for SportsSubscriptionState();
  v6 = static SportsSubscriptionState.activeSubscriptionEventId.getter();
  if (v7)
  {
    v8 = v7;
    if (v6 == SportingEvent.canonicalId.getter() && v8 == v9)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        return;
      }
    }

    if (qword_1000DBA18 != -1)
    {
      sub_10001C0A8(&qword_1000DBA18, v12, v13);
    }

    v14 = type metadata accessor for Logger();
    sub_100007DE8(v14, qword_1000E6D30);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      sub_100045DE8();
      v22 = swift_slowAlloc();
      *v17 = 136315138;
      v18 = sub_100045DA0();
      v21 = sub_1000170D4(v18, v19, v20);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "EVENT TYPE: %s", v17, 0xCu);
      sub_100008A94(v22);
      sub_10002F1FC();

      sub_10002F1FC();
    }

    else
    {
    }

    sub_100092B94(a1, a2);
  }
}

uint64_t sub_100043CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v81 = a1;
  v82 = a4;
  v86 = a2;
  type metadata accessor for SportingEventProgressStatus();
  sub_10000AC48();
  v77 = v8;
  v78 = v7;
  __chkstk_darwin(v7);
  sub_10000ADA0();
  v11 = v10 - v9;
  v12 = type metadata accessor for Date();
  sub_10000AC48();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100045D70();
  v18 = (v16 - v17);
  __chkstk_darwin(v19);
  v21 = &v77 - v20;
  sub_10000BC8C(v5 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_performance, v93);
  v87 = sub_100008614(v93, v93[3]);
  if (a3)
  {
    v22 = *(a3 + 16);
    v23 = *(v22 + 48);
    v79 = *(v22 + 40);
    v84 = v23;
  }

  else
  {
    v79 = 0;
    v84 = 0;
  }

  v83 = *(v5 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_notificationReceiptTime);
  v24 = Date.init()();
  sub_10008C99C(v24);
  v85 = v25;
  v26 = *(v14 + 8);
  v26(v21, v12);
  if (a3)
  {
    v27 = (*(v14 + 16))(v18, *(a3 + 16) + qword_1000E6DF8, v12);
    v28 = v18;
    sub_10008C9F4(v27);
    v30 = v29;
    v26(v18, v12);
    v31 = *(a3 + 16);
    v32 = *(a3 + 24);
    v34 = v31[3];
    v33 = v31[4];
    v88 = *(v5 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_isLowCapLiveActivity);
    v80 = v31[2];
    v35 = *(v31 + *(*v31 + 184));

    sub_100045EAC(v35);
    sub_10001C418();

    if (v28)
    {
      SportingEvent.progressStatus.getter();

      v36 = SportingEventProgressStatus.rawValue.getter();
      v37 = v11;
      v39 = v38;
      (*(v77 + 8))(v37, v78);
    }

    else
    {
      v36 = 0;
      v39 = 0;
    }
  }

  else
  {
    v30 = 0;
    v33 = 0;
    v34 = 0;
    v39 = 0;
    v32 = 0;
    v80 = 0;
    v88 = *(v5 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_isLowCapLiveActivity);
    v36 = 0;
  }

  if (!v82 || (v89[0] = v82, swift_errorRetain(), sub_100003998(&qword_1000DC470, &qword_1000AA620), sub_100003998(&unk_1000DD750, &qword_1000AC120), (swift_dynamicCast() & 1) == 0))
  {
    v92 = 0;
    memset(v91, 0, sizeof(v91));
  }

  v40 = v86;
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  v42 = inited;
  *(inited + 16) = xmmword_1000ABF20;
  *(inited + 32) = 3;
  if (v40)
  {
    v43 = &type metadata for String;
    v44 = v40;
    v45 = v81;
  }

  else
  {
    v45 = 0;
    v44 = 0;
    v43 = 0;
    *(inited + 56) = 0;
  }

  v46 = v84;
  *(inited + 40) = v45;
  *(inited + 48) = v44;
  *(inited + 64) = v43;
  *(inited + 72) = 12;
  if (v46)
  {
    v47 = &type metadata for String;
    v48 = v79;
  }

  else
  {
    v48 = 0;
    v47 = 0;
    *(inited + 96) = 0;
  }

  *(inited + 80) = v48;
  *(inited + 88) = v46;
  *(inited + 104) = v47;
  *(inited + 112) = 13;
  v49 = &type metadata for UInt64;
  *(inited + 144) = &type metadata for UInt64;
  *(inited + 120) = v83;
  *(inited + 152) = 18;
  if (a3)
  {
    v50 = &type metadata for Int;
  }

  else
  {
    v32 = 0;
    v50 = 0;
    *(inited + 168) = 0;
    *(inited + 176) = 0;
  }

  *(inited + 160) = v32;
  *(inited + 184) = v50;
  *(inited + 192) = 10;
  *(inited + 224) = &type metadata for UInt64;
  *(inited + 200) = v85;
  *(inited + 232) = 14;
  if (!a3)
  {
    v30 = 0;
    v49 = 0;
    *(inited + 248) = 0;
    *(inited + 256) = 0;
  }

  *(inited + 240) = v30;
  *(inited + 264) = v49;
  *(inited + 272) = 16;
  if (v33)
  {
    v51 = &type metadata for String;
  }

  else
  {
    v34 = 0;
    v51 = 0;
    *(inited + 296) = 0;
  }

  v52 = v88;
  *(inited + 280) = v34;
  *(inited + 288) = v33;
  *(inited + 304) = v51;
  *(inited + 312) = 15;
  *(inited + 320) = 0u;
  *(inited + 336) = 0u;
  *(inited + 352) = 17;
  sub_100003998(&qword_1000DD540, &unk_1000ABF80);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_1000AB460;
  if (a3)
  {
    v89[0] = v80;

    v54 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  else
  {

    v54 = 0;
    v55 = 0;
  }

  v56 = 0;
  v86 = 0;
  *(v53 + 40) = v55;
  *(v53 + 32) = v54;
  *(v53 + 48) = v36;
  *(v53 + 56) = v39;
  v57 = _swiftEmptyArrayStorage;
LABEL_30:
  v58 = (v53 + 40 + 16 * v56);
  while (++v56 != 3)
  {
    v59 = v58 + 2;
    v60 = *v58;
    v58 += 2;
    if (v60)
    {
      v61 = *(v59 - 3);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100016520();
        v57 = v65;
      }

      v63 = v57[2];
      if (v63 >= v57[3] >> 1)
      {
        sub_100016520();
        v57 = v66;
      }

      v57[2] = v63 + 1;
      v64 = &v57[2 * v63];
      v64[4] = v61;
      v64[5] = v60;
      v52 = v88;
      goto LABEL_30;
    }
  }

  swift_setDeallocating();
  sub_100086798();
  v89[0] = v57;
  sub_100003998(&qword_1000DC420, &unk_1000ADE60);
  sub_10000A6FC(&qword_1000DC428, &qword_1000DC420, &unk_1000ADE60, &protocol conformance descriptor for [A]);
  v67 = BidirectionalCollection<>.joined(separator:)();
  v69 = v68;

  *(v42 + 384) = &type metadata for String;
  *(v42 + 360) = v67;
  *(v42 + 368) = v69;
  *(v42 + 392) = 1;
  *(v42 + 400) = 0u;
  *(v42 + 416) = 0u;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  v70 = Dictionary.init(dictionaryLiteral:)();
  sub_1000459F8(v91, v89, &qword_1000DD548, &qword_1000ABF90);
  if (v90)
  {
    sub_100008614(v89, v90);
    v71 = sub_100045DA0();
    v73 = v72(v71);
    sub_100008A94(v89);
  }

  else
  {
    sub_10001BB44(v89, &qword_1000DD548, &qword_1000ABF90);
    v73 = Dictionary.init(dictionaryLiteral:)();
  }

  v74 = sub_100044908(v73, v70);
  sub_10001BB44(v91, &qword_1000DD548, &qword_1000ABF90);
  if (v52)
  {
    v75 = 1;
  }

  else
  {
    v75 = 257;
  }

  sub_10009C660(v74, v75);

  return sub_100008A94(v93);
}

uint64_t sub_1000444D8()
{

  sub_10001BB44(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateable, &qword_1000DD648, &qword_1000AC0E0);
  sub_10001BB44(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_subscriptionOperationFactory, &qword_1000DCD20, &unk_1000AB820);
  sub_100008A94((v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_performance));

  sub_1000448F8(*(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateCompletion), *(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateCompletion + 8));
  sub_10001BB44(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_processDate, &qword_1000DC5A0, &unk_1000AB0E0);
}

id sub_1000445F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApsMessageProcessingOperation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ApsMessageProcessingOperation(uint64_t a1)
{
  result = qword_1000DD638;
  if (!qword_1000DD638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000447A0(uint64_t a1)
{
  sub_1000448A0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000448A0(uint64_t a1)
{
  if (!qword_1000DC790)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DC790);
    }
  }
}

uint64_t sub_1000448F8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100044908(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_10004508C(a1, sub_1000A16BC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void *sub_10004498C(uint64_t a1)
{
  v3 = v1;
  v41 = *v1;
  v5 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v33 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003998(&qword_1000DBE78, &qword_1000AA750);
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.Encoding();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 7565409;
  v35 = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  sub_10007C118(&v36, a1, &v39);

  sub_10001BAF0(&v36);
  if (!v40)
  {
    sub_10001BB44(&v39, &qword_1000DBD08, &qword_1000AA690);
    goto LABEL_10;
  }

  v32 = v5;
  sub_100003998(&qword_1000DD668, &unk_1000AC100);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v16 = 0x80000001000B1D00;
    sub_100003998(&qword_1000DD658, &qword_1000AC0F8);
    sub_10000A6FC(&qword_1000DD660, &qword_1000DD658, &qword_1000AC0F8, &unk_1000AF740);
    swift_allocError();
    v18 = 0xD000000000000014;
LABEL_16:
    *v17 = v18;
    v17[1] = v16;
    swift_willThrow();
    goto LABEL_17;
  }

  v31 = v2;
  sub_10007BF54(0x7472656C61, 0xE500000000000000, v34, &v36);

  if (!v37)
  {
    sub_10001BB44(&v36, &qword_1000DBD08, &qword_1000AA690);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v15 = "Key is missing - alert";
    goto LABEL_13;
  }

  sub_10007BF54(2036625250, 0xE400000000000000, v39, &v36);

  if (!v37)
  {
    sub_10001BB44(&v36, &qword_1000DBD08, &qword_1000AA690);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v16 = 0x80000001000B1D40;
    sub_100003998(&qword_1000DD658, &qword_1000AC0F8);
    sub_10000A6FC(&qword_1000DD660, &qword_1000DD658, &qword_1000AC0F8, &unk_1000AF740);
    swift_allocError();
    v18 = 0xD000000000000015;
    goto LABEL_16;
  }

  static String.Encoding.utf8.getter();
  v30 = String.data(using:allowLossyConversion:)();
  v14 = v13;

  (*(v10 + 8))(v12, v9);
  if (v14 >> 60 == 15)
  {
    v15 = "Unexpected data format";
LABEL_13:
    v16 = (v15 - 32) | 0x8000000000000000;
    sub_100003998(&qword_1000DD658, &qword_1000AC0F8);
    sub_10000A6FC(&qword_1000DD660, &qword_1000DD658, &qword_1000AC0F8, &unk_1000AF740);
    swift_allocError();
    v18 = 0xD000000000000016;
    goto LABEL_16;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  static SportsJSONContext.Property<A>.initFailureObserver.getter();
  v20 = type metadata accessor for DefaultSportsJSONInitFailureObserver();
  swift_allocObject();
  v21 = DefaultSportsJSONInitFailureObserver.init()();
  v37 = v20;
  v38 = &protocol witness table for DefaultSportsJSONInitFailureObserver;
  *&v36 = v21;
  v22 = dispatch thunk of JSONDecoder.userInfo.modify();
  v29 = v14;
  v24 = v23;
  v34 = *v23;
  swift_bridgeObjectRetain_n();
  sub_100003998(&qword_1000DBE90, &qword_1000AA760);
  Dictionary<>.subscript.setter();
  *v24 = v34;

  v22(&v39, 0);

  (*(v33 + 104))(v7, enum case for JSONDecoder.DateDecodingStrategy.secondsSince1970(_:), v32);
  dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
  sub_100003998(&qword_1000DBDE0, &unk_1000AC110);
  v25 = v29;
  sub_10000A6FC(&qword_1000DBDE8, &qword_1000DBDE0, &unk_1000AC110, &unk_1000AF498);
  v27 = v30;
  v26 = v31;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (!v26)
  {
    v3[2] = v36;
    v28 = Data.count.getter();

    sub_10001F19C(v27, v25);
    v3[3] = v28;
    return v3;
  }

  sub_10001F19C(v27, v25);
LABEL_17:
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_10004508C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1000A23BC(v45);
  v41 = v45[0];
  v42 = v45[1];
  v43 = v45[2];
  v44 = v46;
  v34 = a1;

  v33 = a3;

  while (1)
  {
    sub_1000A2084(&v38 + 8);
    if (*(&v40 + 1) == 1)
    {
      sub_10001B8A0(v41);
    }

    v9 = BYTE8(v38);
    v36 = v39;
    v37 = v40;
    v10 = *a5;
    v18 = sub_1000175AC(BYTE8(v38));
    v19 = *(v10 + 16);
    v20 = (v11 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v11;
    if (*(v10 + 24) >= v21)
    {
      if (a4)
      {
        if (v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_100003998(&qword_1000DD7C0, &unk_1000AC128);
        _NativeDictionary.copy()();
        if (v22)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1000A1BAC(v21, a4 & 1, v12, v13, v14, v15, v16, v17, v33, v34, v35[0], v35[1], v35[2], v35[3], v36, *(&v36 + 1), v37, *(&v37 + 1), v38, v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *&v45[0], *(&v45[0] + 1), *&v45[1]);
      v23 = sub_1000175AC(v9);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_18;
      }

      v18 = v23;
      if (v22)
      {
LABEL_10:
        v25 = *a5;
        sub_1000459F8(*(*a5 + 56) + 32 * v18, v35, &qword_1000DBD08, &qword_1000AA690);
        sub_10001BB44(&v36, &qword_1000DBD08, &qword_1000AA690);
        sub_100045358(v35, *(v25 + 56) + 32 * v18);
        goto LABEL_14;
      }
    }

    v26 = *a5;
    *(*a5 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    *(v26[6] + v18) = v9;
    v27 = (v26[7] + 32 * v18);
    v28 = v37;
    *v27 = v36;
    v27[1] = v28;
    v29 = v26[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_17;
    }

    v26[2] = v31;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000452C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000452FC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100045358(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000453C8()
{
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 32));

  sub_100045E0C();

  return _swift_deallocObject(v0, 240, 7);
}

uint64_t sub_10004542C()
{
  sub_10001C50C();
  sub_10001C370();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  v1[1] = sub_100045D48;
  sub_100045D60();
  sub_10001C358();

  return sub_10004302C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000454E8()
{
  v1 = sub_100003998(&qword_1000DCA48, qword_1000AB448);
  sub_10000AC48();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_1000455AC(void *a1)
{
  v3 = sub_100003998(&qword_1000DCA48, qword_1000AB448);
  sub_10001C3C4(v3);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_100043854(a1, v4, v5);
}

uint64_t sub_100045628()
{
  v1 = type metadata accessor for URL();
  sub_10000AC48();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 224) & ~v4;
  v7 = (((v5 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 32));

  sub_100045E0C();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_100045730(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = ((*(v3 + 80) + 224) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(v1 + 216);
  v6 = *(v1 + v4);
  v7 = *(v1 + (v4 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011504;
  sub_100045D60();

  return sub_100042728(v9, v10, v11, v12, v5, v13, v6, v7);
}

uint64_t sub_10004589C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10001C2AC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000458F4()
{
  sub_100003998(&qword_1000DCA48, qword_1000AB448);
  sub_10001C2AC();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100045980(char *a1)
{
  v2 = sub_100003998(&qword_1000DCA48, qword_1000AB448);
  sub_10001C3C4(v2);

  return sub_100042E70(a1);
}

uint64_t sub_1000459F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100003998(a3, a4);
  sub_10001C2AC();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_100045A58()
{
  result = qword_1000DC478;
  if (!qword_1000DC478)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC478);
  }

  return result;
}

uint64_t sub_100045AB0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100045B00()
{
  sub_10001C50C();
  sub_10001C370();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  v1[1] = sub_100045D48;
  sub_100045D60();
  sub_10001C358();

  return sub_10004181C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100045BB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100045BF8()
{
  result = qword_1000DD680;
  if (!qword_1000DD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD680);
  }

  return result;
}

uint64_t sub_100045C4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100045C94()
{
  sub_10001C50C();
  sub_10001C370();
  v0 = swift_task_alloc();
  v1 = sub_10003FBF8(v0);
  *v1 = v2;
  v1[1] = sub_100045D48;
  sub_100045D60();
  sub_10001C358();

  return sub_100042148(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100045E0C()
{
  sub_100008A94(v0 + 11);
  sub_100008A94(v0 + 16);
  sub_100008A94(v0 + 21);
}

uint64_t sub_100045E54()
{

  return sub_1000835D4();
}

NSString sub_100045E74()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100045E94(uint64_t a1, unint64_t a2)
{

  return sub_1000170D4(a1, a2, (v2 - 144));
}

char *sub_100045EC4(unint64_t a1, void (*a2)(char *, BOOL, uint64_t))
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v5 + 32);
      }
    }

    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_100045F60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  sub_10000ACFC();
  __chkstk_darwin(v4);
  v6 = &v120 - v5;
  v148 = type metadata accessor for URLRequest();
  sub_10000AC48();
  v135 = v7;
  __chkstk_darwin(v8);
  sub_1000499AC();
  v134 = v9;
  sub_1000498EC();
  __chkstk_darwin(v10);
  sub_1000498F8();
  v132 = v11;
  sub_1000498EC();
  __chkstk_darwin(v12);
  v14 = &v120 - v13;
  v15 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  __chkstk_darwin(v15 - 8);
  sub_1000499AC();
  v156 = v16;
  sub_1000498EC();
  __chkstk_darwin(v17);
  sub_1000498F8();
  v155 = v18;
  sub_1000498EC();
  __chkstk_darwin(v19);
  sub_1000498F8();
  v154 = v20;
  sub_1000498EC();
  __chkstk_darwin(v21);
  sub_1000498F8();
  v153 = v22;
  sub_1000498EC();
  __chkstk_darwin(v23);
  sub_1000498F8();
  v152 = v24;
  sub_1000498EC();
  __chkstk_darwin(v25);
  sub_1000498F8();
  v151 = v26;
  sub_1000498EC();
  __chkstk_darwin(v27);
  sub_1000498F8();
  v150 = v28;
  sub_1000498EC();
  __chkstk_darwin(v29);
  sub_1000498F8();
  v149 = v30;
  sub_1000498EC();
  __chkstk_darwin(v31);
  v33 = &v120 - v32;
  v34 = type metadata accessor for ApiRequestMetrics(0);
  sub_10001C2AC();
  __chkstk_darwin(v35);
  sub_10000ADA0();
  v38 = v37 - v36;
  type metadata accessor for Date();
  sub_10004989C(a2);
  v145 = a2 + v34[5];
  sub_10004989C(v145);
  v144 = a2 + v34[8];
  sub_10004989C(v144);
  v143 = a2 + v34[9];
  sub_10004989C(v143);
  v142 = a2 + v34[10];
  sub_10004989C(v142);
  sub_100049904(v34[12]);
  v141 = a2 + v34[13];
  sub_10004989C(v141);
  v39 = a2 + v34[14];
  v40 = type metadata accessor for URL();
  v140 = v39;
  sub_100008E2C(v39, 1, 1, v40);
  v139 = a2 + v34[15];
  sub_10004989C(v139);
  v138 = a2 + v34[16];
  sub_10004989C(v138);
  v137 = a2 + v34[17];
  sub_10004989C(v137);
  v41 = a2 + v34[18];
  *v41 = 0;
  *(v41 + 8) = 1;
  sub_100049904(v34[19]);
  sub_100049904(v34[20]);
  sub_100049904(v34[21]);
  sub_100049904(v34[22]);
  sub_100049904(v34[23]);
  *(a2 + v34[24]) = 2;
  sub_100049904(v34[25]);
  v42 = [a1 response];
  if (v42)
  {
    v43 = v42;
    objc_opt_self();
    v147 = swift_dynamicCastObjCClass();
    if (v147)
    {
      goto LABEL_5;
    }
  }

  v147 = 0;
LABEL_5:
  v44 = [a1 connectEndDate];
  if (v44)
  {
    v45 = v44;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = v33;
  v48 = 1;
  v136 = v47;
  sub_100049910(v47, v46);
  v49 = [a1 connectStartDate];
  if (v49)
  {
    v50 = v49;
    v51 = v149;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = v51;
    v48 = 0;
  }

  else
  {
    v52 = v149;
  }

  v53 = 1;
  sub_100049910(v52, v48);
  v133 = [a1 countOfRequestBodyBytesSent];
  v131 = [a1 countOfResponseBodyBytesReceived];
  v54 = [a1 domainLookupEndDate];
  if (v54)
  {
    v55 = v54;
    v56 = v150;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = v56;
    v53 = 0;
  }

  else
  {
    v57 = v150;
  }

  v58 = 1;
  sub_100049910(v57, v53);
  v59 = [a1 domainLookupStartDate];
  if (v59)
  {
    v60 = v59;
    v61 = v151;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v62 = v61;
    v58 = 0;
  }

  else
  {
    v62 = v151;
  }

  v63 = 1;
  sub_100049910(v62, v58);
  v64 = [a1 fetchStartDate];
  if (v64)
  {
    v65 = v64;
    v66 = v152;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v67 = v66;
    v63 = 0;
  }

  else
  {
    v67 = v152;
  }

  v68 = 1;
  sub_100049910(v67, v63);
  v130 = [a1 isReusedConnection];
  v129 = sub_10001B7F8(a1, &selRef_networkProtocolName);
  v128 = v69;
  v70 = [a1 requestStartDate];
  if (v70)
  {
    v71 = v70;
    v72 = v153;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v73 = v72;
    v68 = 0;
  }

  else
  {
    v73 = v153;
  }

  v74 = 1;
  sub_100049910(v73, v68);
  v75 = [a1 request];
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

  v146 = v6;
  URLRequest.url.getter();
  v76 = v135[1];
  v76(v14, v148);
  v77 = [a1 responseEndDate];
  if (v77)
  {
    v78 = v77;
    v79 = v154;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v80 = v79;
    v74 = 0;
  }

  else
  {
    v80 = v154;
  }

  v81 = 1;
  sub_100049910(v80, v74);
  v82 = [a1 responseStartDate];
  if (v82)
  {
    v83 = v82;
    v84 = v155;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v81 = 0;
  }

  else
  {
    v84 = v155;
  }

  v85 = 1;
  sub_100049910(v84, v81);
  v86 = [a1 secureConnectionStartDate];
  if (v86)
  {
    v87 = v86;
    v88 = v156;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v89 = v88;
    v85 = 0;
  }

  else
  {
    v89 = v156;
  }

  sub_100049910(v89, v85);
  v90 = v147;
  if (v147)
  {
    v135 = [v147 statusCode];
  }

  else
  {
    v135 = 0;
  }

  v91 = [a1 request];
  v92 = v132;
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

  v127 = URLRequest.httpMethod.getter();
  v126 = v93;
  v94 = v92;
  v95 = v148;
  v76(v94, v148);
  v132 = sub_10001B7F8(a1, &selRef_remoteAddress);
  v125 = v96;
  v97 = [a1 request];
  v98 = v134;
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

  v99 = URLRequest.allHTTPHeaderFields.getter();
  v76(v98, v95);
  if (v99)
  {
    v148 = sub_10007C074(0x6567412D72657355, 0xEA0000000000746ELL, v99);
    v134 = v100;
  }

  else
  {
    v148 = 0;
    v134 = 0;
  }

  if (!v90)
  {
    v122 = 0;
    v121 = 0;
    v124 = 0;
    v105 = &v155;
LABEL_42:
    *(v105 - 32) = 0;
    goto LABEL_47;
  }

  v101 = v90;
  v102 = String._bridgeToObjectiveC()();
  v103 = sub_100049928(v102);

  if (v103)
  {
    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v104;
  }

  else
  {
    v124 = 0;
    v123 = 0;
  }

  v106 = v101;
  v107 = String._bridgeToObjectiveC()();
  v108 = sub_100049928(v107);

  if (!v108)
  {
    v109 = String._bridgeToObjectiveC()();
    v108 = sub_100049928(v109);

    if (!v108)
    {
      v122 = 0;
      v105 = &v153;
      goto LABEL_42;
    }
  }

  v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v121 = v110;

LABEL_47:
  v111 = [a1 resourceFetchType];
  if (v90)
  {
    v112 = v90;
    v113 = String._bridgeToObjectiveC()();
    v114 = [v112 valueForHTTPHeaderField:v113];

    if (v114)
    {
      v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v116 = v115;
    }

    else
    {

      v120 = 0;
      v116 = 0;
    }

    v90 = v147;
  }

  else
  {

    v120 = 0;
    v116 = 0;
  }

  sub_100049970();
  sub_100049970();
  *(v38 + v34[6]) = v133;
  *(v38 + v34[7]) = v131;
  sub_100049970();
  sub_100049970();
  sub_100049970();
  *(v38 + v34[11]) = v130;
  sub_100049948((v38 + v34[12]));
  sub_100049970();
  sub_10003BAC8();
  sub_100049970();
  sub_100049970();
  sub_100049970();
  v117 = v38 + v34[18];
  *v117 = v135;
  *(v117 + 8) = v90 == 0;
  sub_100049948((v38 + v34[19]));
  sub_100049948((v38 + v34[20]));
  sub_100049948((v38 + v34[21]));
  sub_100049948((v38 + v34[22]));
  sub_100049948((v38 + v34[23]));
  *(v38 + v34[24]) = v111 == 3;
  v118 = (v38 + v34[25]);
  *v118 = v120;
  v118[1] = v116;
  sub_100049988(a2);
  sub_100049988(v145);
  sub_100049988(v144);
  sub_100049988(v143);
  sub_100049988(v142);
  sub_100049988(v141);
  sub_10001BB44(v140, &unk_1000DD7B0, &qword_1000AC150);
  sub_100049988(v139);
  sub_100049988(v138);
  sub_100049988(v137);
  return sub_10004979C();
}

uint64_t sub_100046C2C(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for ApiRequestMetrics(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v24 - v13;
  v15 = [a3 transactionMetrics];
  sub_100049700();
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = sub_100045EC4(v16, sub_1000835D4);

  if (v17)
  {
    sub_100045F60(v17, v10);
    sub_10004979C();
    v19 = [a2 response];
    if (v19)
    {
      v20 = v19;
      sub_100049744();
      v21 = sub_100003998(&qword_1000DD7A8, &qword_1000AC1C0);
      v22 = objc_allocWithZone(v21);
      sub_100049744();
      v24.receiver = v22;
      v24.super_class = v21;
      v23 = objc_msgSendSuper2(&v24, "init");
      sub_100049488(v7, type metadata accessor for ApiRequestMetrics);
      sub_100046E74(v23);
    }

    return sub_100049488(v14, type metadata accessor for ApiRequestMetrics);
  }

  return result;
}

void sub_100046E74(void *a1)
{
  swift_beginAccess();
  objc_setAssociatedObject(v1, &unk_1000DD690, a1, 1);
  swift_endAccess();
}

id sub_100046F78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMSTaskDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100046FD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMSTaskDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100047030()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1000DD690);
  swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_100003998(&qword_1000DD7A8, &qword_1000AC1C0);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10001BB44(v6, &qword_1000DBD08, &qword_1000AA690);
    return 0;
  }
}

void sub_100047124(void *a1)
{
  if (a1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = qword_1000DBA20;
      v7 = a1;
      if (v4 != -1)
      {
        sub_10001C088(&qword_1000DBA20, v5, v6);
      }

      v8 = type metadata accessor for Logger();
      sub_100007DE8(v8, qword_1000E6D48);
      v9 = v7;
      oslog = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(oslog, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v20 = v12;
        *v11 = 136315138;
        v13 = String._bridgeToObjectiveC()();
        v14 = [v3 valueForHTTPHeaderField:v13];

        if (v14)
        {
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;
        }

        else
        {
          v17 = 0xE400000000000000;
          v15 = 1701736270;
        }

        v18 = sub_1000170D4(v15, v17, &v20);

        *(v11 + 4) = v18;
        _os_log_impl(&_mh_execute_header, oslog, v10, "X-Apple-Jingle-Correlation-Key is %s", v11, 0xCu);
        sub_100008A94(v12);
        sub_10000B008(v12);
        sub_10000B008(v11);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10004732C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v57 = a7;
  v60 = a6;
  v59 = a5;
  v58 = a4;
  sub_100003998(&qword_1000DD720, &qword_1000AA648);
  sub_10000ACFC();
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  v61 = type metadata accessor for ApiAgentError(0);
  sub_10001C2AC();
  __chkstk_darwin(v14);
  sub_10000ADA0();
  v19 = (v18 - v17);
  if (qword_1000DBA20 != -1)
  {
    sub_10001C088(&qword_1000DBA20, v15, v16);
  }

  v20 = type metadata accessor for Logger();
  sub_100007DE8(v20, qword_1000E6D48);
  swift_errorRetain();
  v21 = sub_1000499A0();
  sub_100008B28(v21, v22);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  v25 = sub_1000499A0();
  sub_100008BAC(v25, v26);
  if (!os_log_type_enabled(v23, v24))
  {

    goto LABEL_14;
  }

  v56 = a8;
  v27 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v64 = v55;
  *v27 = 136315394;
  swift_getErrorValue();
  v28 = Error.localizedDescription.getter();
  v30 = sub_1000170D4(v28, v29, &v64);

  *(v27 + 4) = v30;
  *(v27 + 12) = 2080;
  v31 = sub_1000499A0();
  v33 = sub_1000492AC(v31, v32);
  if (v34)
  {
    goto LABEL_12;
  }

  v62 = a2;
  v63 = a3;
  v35 = sub_1000499A0();
  sub_100008B28(v35, v36);
  sub_100003998(&unk_1000DD760, &qword_1000ABFF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    sub_10001BB44(&v65, &qword_1000DD588, &qword_1000AC000);
LABEL_11:
    sub_1000499A0();
    v33 = sub_100049074();
LABEL_12:
    v38 = v33;
    v37 = v34;
    goto LABEL_13;
  }

  v54 = 0;
  sub_10000A8F8(&v65, v68);
  sub_100008614(v68, v69);
  if ((dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter() & 1) == 0)
  {
    sub_100008A94(v68);
    goto LABEL_11;
  }

  sub_100008614(v68, v69);
  dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
  v37 = *(&v65 + 1);
  v38 = v65;
  sub_100008A94(v68);
LABEL_13:
  v39 = sub_1000170D4(v38, v37, &v64);

  *(v27 + 14) = v39;
  _os_log_impl(&_mh_execute_header, v23, v24, "ApiAgent: error parsing data: Map error: %s\nData: %s", v27, 0x16u);
  v40 = v55;
  swift_arrayDestroy();
  sub_10000B008(v40);
  sub_10000B008(v27);

  a8 = v56;
LABEL_14:
  sub_100003998(&qword_1000DD728, &qword_1000AC1B0);
  *v19 = 1;
  sub_10003BC90();
  swift_storeEnumTagMultiPayload();
  v41 = v57[3];
  v42 = v57[4];
  sub_100008614(v57, v41);
  v43 = (*(v42 + 16))(v41, v42);
  sub_10003BC90();
  v44 = type metadata accessor for ApiRequestMetrics(0);
  if (sub_100008B84(v13, 1, v44) == 1)
  {
    sub_10001BB44(v13, &qword_1000DD720, &qword_1000AA648);
    v45 = 0;
  }

  else
  {
    v45 = sub_10009D150();
    sub_100049488(v13, type metadata accessor for ApiRequestMetrics);
  }

  sub_1000498D4();
  sub_1000496B8(v46, v47, &unk_1000AD690);
  v48 = sub_1000499C0();
  sub_1000498B8();
  sub_100049744();
  sub_10000BC8C(v59 + 56, v68);
  sub_100008614(v68, v69);
  if (v45)
  {
    v49 = v45;
  }

  else
  {
    sub_100003998(&qword_1000DBD08, &qword_1000AA690);
    sub_10001DA90();
    v49 = Dictionary.init(dictionaryLiteral:)();
  }

  v62 = v48;

  swift_errorRetain();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_100003998(&unk_1000DD750, &qword_1000AC120);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
  }

  v50 = sub_10009DF9C(v60, v43, v49, &v65);
  v52 = v51;

  sub_10001BB44(&v65, &qword_1000DD548, &qword_1000ABF90);
  sub_10009C660(v50, v52 & 0x101);

  sub_100008A94(v68);

  *a8 = sub_1000499C0();
  sub_1000498B8();
  return sub_10004979C();
}

id sub_10004796C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_100047124(a4);
  sub_10003BC90();
  v9 = sub_100003998(&qword_1000DBD90, &qword_1000AA6D8);
  v10 = v9[7];
  type metadata accessor for URLRequest();
  sub_10001C2AC();
  (*(v11 + 16))(a5 + v10, a3);
  v12 = (a5 + v9[10]);
  *v12 = a1;
  v12[1] = a2;
  *(a5 + v9[8]) = a4;
  *(a5 + v9[9]) = xmmword_1000AA5C0;
  sub_100008B28(a1, a2);

  return a4;
}

uint64_t sub_100047A74(void (*a1)(uint64_t *), void (*a2)(uint64_t *), id *a3, uint64_t a4)
{
  v79 = a2;
  v78 = a1;
  v72 = sub_100003998(&unk_1000DD770, &qword_1000AC1B8);
  sub_10001C2AC();
  sub_10000ACFC();
  __chkstk_darwin(v6);
  v8 = (v67 - v7);
  v71 = type metadata accessor for ApiAgentError(0);
  sub_10001C2AC();
  __chkstk_darwin(v9);
  sub_10000ADA0();
  v12 = v11 - v10;
  v13 = type metadata accessor for URLRequest();
  sub_10000AC48();
  v70 = v14;
  __chkstk_darwin(v15);
  v75 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v73 = v67 - v18;
  v74 = v19;
  __chkstk_darwin(v20);
  v22 = v67 - v21;
  sub_100003998(&qword_1000DC840, &qword_1000AB200);
  sub_10001C2AC();
  sub_10000ACFC();
  __chkstk_darwin(v23);
  v25 = v67 - v24;
  v27 = a3[4];
  v26 = a3[5];
  v76 = a3;
  sub_100008614(a3 + 1, v27);
  v28 = v26[1];
  v77 = a4;
  v28(a4, v27, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10004979C();
    sub_1000498D4();
    sub_1000496B8(v29, v30, &unk_1000AD690);
    v31 = swift_allocError();
    sub_100049744();
    *v8 = v31;
    swift_storeEnumTagMultiPayload();
    v78(v8);
    sub_10001BB44(v8, &unk_1000DD770, &qword_1000AC1B8);
    return sub_100049488(v12, type metadata accessor for ApiAgentError);
  }

  else
  {
    v72 = *&v25[*(sub_100003998(&qword_1000DD780, &qword_1000AB208) + 48)];
    v33 = v70;
    v34 = *(v70 + 32);
    v71 = v70 + 32;
    v69 = v34;
    v34(v22, v25, v13);
    v37 = v13;
    v38 = v33;
    if (qword_1000DBA20 != -1)
    {
      sub_10001C088(&qword_1000DBA20, v35, v36);
    }

    v39 = type metadata accessor for Logger();
    sub_100007DE8(v39, qword_1000E6D48);
    v40 = *(v33 + 16);
    v68 = v22;
    v67[0] = v40;
    v40(v73, v22, v37);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v38;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      __src[0] = v45;
      *v44 = 136315138;
      sub_1000496B8(&qword_1000DD788, &type metadata accessor for URLRequest, &protocol conformance descriptor for URLRequest);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v37;
      v49 = v48;
      v50 = sub_100049954(v43);
      v73 = v51;
      (v51)(v50, v47);
      v52 = sub_1000170D4(v46, v49, __src);
      v37 = v47;

      *(v44 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v41, v42, "Request: %s", v44, 0xCu);
      sub_100008A94(v45);
      sub_10000B008(v45);
      v38 = v43;
      sub_10000B008(v44);
    }

    else
    {

      v53 = sub_100049954(v38);
      v73 = v54;
      (v54)(v53, v37);
    }

    v55 = v79;
    v56 = v76;
    v57 = v72;
    v58 = [*v76 dataTaskPromiseWithRequestPromise:v72];
    sub_100008A38(v56, __src);
    v59 = v75;
    v60 = v68;
    (v67[0])(v75, v68, v37);
    sub_10000BC8C(v77, v81);
    v61 = (*(v38 + 80) + 112) & ~*(v38 + 80);
    v62 = v37;
    v63 = (v74 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    memcpy((v64 + 16), __src, 0x60uLL);
    v69(v64 + v61, v59, v62);
    sub_10000A8F8(v81, v64 + v63);
    v65 = (v64 + ((v63 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v65 = v78;
    v65[1] = v55;
    aBlock[4] = sub_1000495E0;
    aBlock[5] = v64;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001EE24;
    aBlock[3] = &unk_1000D1838;
    v66 = _Block_copy(aBlock);

    [v58 addFinishBlock:v66];
    _Block_release(v66);

    return (v73)(v60, v62);
  }
}

uint64_t sub_1000481A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v88 = a7;
  v89 = a6;
  v85 = a3;
  v86 = a4;
  v90 = type metadata accessor for ApiAgentError(0);
  __chkstk_darwin(v90);
  v83 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100003998(&unk_1000DD770, &qword_1000AC1B8);
  __chkstk_darwin(v87);
  v12 = (&v81 - v11);
  v13 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  __chkstk_darwin(v13 - 8);
  v82 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v81 - v16;
  __chkstk_darwin(v18);
  v20 = &v81 - v19;
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v24 = &v81 - v23;
  v25 = [a1 response];
  v26 = v25;
  v91 = v24;
  if (v25 && (v27 = v25, v28 = sub_100047030(), v27, v28))
  {
    sub_100049744();

    v29 = type metadata accessor for ApiRequestMetrics(0);
    sub_100008E2C(v20, 0, 1, v29);
    sub_10004979C();
    sub_100008E2C(v24, 0, 1, v29);
  }

  else
  {
    v30 = type metadata accessor for ApiRequestMetrics(0);
    v31 = 1;
    sub_100008E2C(v20, 1, 1, v30);
    if (a1)
    {
      v32 = [a1 taskMetrics];
      if (v32)
      {
        v33 = v32;
        v84 = v26;
        v34 = [v32 transactionMetrics];

        sub_100049700();
        v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v36 = sub_100045EC4(v35, sub_1000835D4);

        if (v36)
        {
          v24 = v91;
          sub_100045F60(v36, v91);
          v31 = 0;
        }

        else
        {
          v31 = 1;
          v24 = v91;
        }

        v26 = v84;
      }
    }

    sub_100008E2C(v24, v31, 1, v30);
    if (sub_100008B84(v20, 1, v30) != 1)
    {
      sub_10001BB44(v20, &qword_1000DD720, &qword_1000AA648);
    }
  }

  if (a1)
  {
    v84 = v26;
    v37 = [a1 data];
    v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = a5[3];
    v42 = a5[4];
    sub_100008614(a5, v41);
    v43 = (*(v42 + 16))(v41, v42);
    sub_10003BC90();
    v44 = type metadata accessor for ApiRequestMetrics(0);
    if (sub_100008B84(v17, 1, v44) == 1)
    {
      sub_10001BB44(v17, &qword_1000DD720, &qword_1000AA648);
      v45 = 0;
    }

    else
    {
      v45 = sub_10009D150();
      sub_100049488(v17, type metadata accessor for ApiRequestMetrics);
    }

    sub_10000BC8C(v85 + 56, v96);
    sub_100008614(v96, v97);
    if (v45)
    {
      v53 = v45;
    }

    else
    {
      sub_100003998(&qword_1000DBD08, &qword_1000AA690);
      sub_10001DA90();
      v53 = Dictionary.init(dictionaryLiteral:)();
    }

    v95 = 0;
    v93 = 0u;
    v94 = 0u;

    v54 = v86;
    v55 = sub_10009DF9C(v86, v43, v53, &v93);
    v57 = v56;

    sub_10001BB44(&v93, &qword_1000DD548, &qword_1000ABF90);
    sub_10009C660(v55, v57 & 0x101);

    sub_100008A94(v96);

    v58 = sub_100003998(&qword_1000DBC80, &qword_1000AA640);
    v59 = *(v58 + 48);
    v60 = *(v58 + 64);
    *v12 = v38;
    v12[1] = v40;
    v61 = type metadata accessor for URLRequest();
    (*(*(v61 - 8) + 16))(v12 + v59, v54, v61);
    v62 = v84;
    *(v12 + v60) = v84;
    v63 = v91;
    sub_10003BC90();
    swift_storeEnumTagMultiPayload();
    v64 = v62;
    sub_100008B28(v38, v40);
    v89(v12);
    sub_100008BAC(v38, v40);

    sub_10001BB44(v12, &unk_1000DD770, &qword_1000AC1B8);
    return sub_10001BB44(v63, &qword_1000DD720, &qword_1000AA648);
  }

  if (!a2)
  {
    v46 = v26;
    sub_100003998(&qword_1000DD728, &qword_1000AC1B0);
    v65 = v83;
    *v83 = 0;
    sub_10003BC90();
    swift_storeEnumTagMultiPayload();
LABEL_30:
    sub_100003998(&qword_1000DBD08, &qword_1000AA690);
    sub_10001DA90();
    v67 = Dictionary.init(dictionaryLiteral:)();
    goto LABEL_31;
  }

  swift_errorRetain();
  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  v46 = v26;
  v47 = type metadata accessor for Logger();
  sub_100007DE8(v47, qword_1000E6D48);
  swift_errorRetain();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    swift_errorRetain();
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v50 + 4) = v52;
    *v51 = v52;
    _os_log_impl(&_mh_execute_header, v48, v49, "ApiAgent Error: %@", v50, 0xCu);
    sub_10001BB44(v51, &unk_1000DD790, &unk_1000AB7A0);
  }

  else
  {
  }

  sub_100003998(&qword_1000DD728, &qword_1000AC1B0);
  *v83 = 0;
  sub_10003BC90();
  swift_storeEnumTagMultiPayload();
  v96[0] = a2;
  swift_errorRetain();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  type metadata accessor for AMSError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v65 = v83;
    goto LABEL_30;
  }

  v66 = v93;
  v67 = sub_10009DDF4();

  v65 = v83;
LABEL_31:
  v68 = a5[3];
  v69 = a5[4];
  sub_100008614(a5, v68);
  v70 = (*(v69 + 16))(v68, v69);
  v71 = v82;
  sub_10003BC90();
  v72 = type metadata accessor for ApiRequestMetrics(0);
  if (sub_100008B84(v71, 1, v72) == 1)
  {
    sub_10001BB44(v71, &qword_1000DD720, &qword_1000AA648);
    sub_100003998(&qword_1000DBD08, &qword_1000AA690);
    sub_10001DA90();
    v73 = Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    v73 = sub_10009D150();
    sub_100049488(v71, type metadata accessor for ApiRequestMetrics);
  }

  v74 = sub_100048DAC(v73, v67);
  sub_1000496B8(&qword_1000DD730, type metadata accessor for ApiAgentError, &unk_1000AD690);
  v75 = swift_allocError();
  sub_100049744();
  sub_10000BC8C(v85 + 56, v96);
  sub_100008614(v96, v97);
  v92 = v75;
  swift_errorRetain();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_100003998(&unk_1000DD750, &qword_1000AC120);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v95 = 0;
    v93 = 0u;
    v94 = 0u;
  }

  v76 = sub_10009DF9C(v86, v70, v74, &v93);
  v78 = v77;
  sub_10001BB44(&v93, &qword_1000DD548, &qword_1000ABF90);
  sub_10009C660(v76, v78 & 0x101);

  sub_100008A94(v96);

  v79 = swift_allocError();
  sub_100049744();
  *v12 = v79;
  swift_storeEnumTagMultiPayload();
  v89(v12);

  sub_10001BB44(v12, &unk_1000DD770, &qword_1000AC1B8);
  sub_100049488(v65, type metadata accessor for ApiAgentError);
  v63 = v91;
  return sub_10001BB44(v63, &qword_1000DD720, &qword_1000AA648);
}

uint64_t sub_100048DAC(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_100048E3C(a1, sub_1000A16BC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_100048E3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1000A23BC(v45);
  v41 = v45[0];
  v42 = v45[1];
  v43 = v45[2];
  v44 = v46;
  v34 = a1;

  v33 = a3;

  while (1)
  {
    sub_1000A2084(&v38 + 8);
    if (*(&v40 + 1) == 1)
    {
      sub_10001B8A0(v41);
    }

    v9 = BYTE8(v38);
    v36 = v39;
    v37 = v40;
    v10 = *a5;
    v18 = sub_1000175AC(BYTE8(v38));
    v19 = v10[2];
    v20 = (v11 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v11;
    if (v10[3] >= v21)
    {
      if (a4)
      {
        if (v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_100003998(&qword_1000DD7C0, &unk_1000AC128);
        _NativeDictionary.copy()();
        if (v22)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1000A1BAC(v21, a4 & 1, v12, v13, v14, v15, v16, v17, v33, v34, *v35, *&v35[8], *&v35[16], *&v35[24], v36, *(&v36 + 1), v37, *(&v37 + 1), v38, v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *&v45[0], *(&v45[0] + 1), *&v45[1]);
      v23 = sub_1000175AC(v9);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_18;
      }

      v18 = v23;
      if (v22)
      {
LABEL_10:
        v25 = *a5;
        sub_10003BC90();
        sub_10001BB44(&v36, &qword_1000DBD08, &qword_1000AA690);
        sub_100045358(v35, v25[7] + 32 * v18);
        goto LABEL_14;
      }
    }

    v26 = *a5;
    *(*a5 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    *(v26[6] + v18) = v9;
    v27 = (v26[7] + 32 * v18);
    v28 = v37;
    *v27 = v36;
    v27[1] = v28;
    v29 = v26[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_17;
    }

    v26[2] = v31;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100049074()
{
  sub_10003C278();
  sub_100008B28(v2, v3);
  sub_100049118(v1, v0);
  v4 = static String._fromUTF8Repairing(_:)();

  return v4;
}

uint64_t sub_1000490DC@<X0>(uint64_t *a3@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void *sub_100049118(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x10004929CLL);
      }

      v8 = HIDWORD(a1) - a1;
LABEL_6:
      if (!v8)
      {
        goto LABEL_9;
      }

      v11 = sub_1000173C4(v8, 0);
      v12 = Data._copyContents(initializing:)();
      sub_100008BAC(a1, a2);
      (*(v5 + 8))(v7, v4);
      if (v12 != v8)
      {
        __break(1u);
LABEL_9:
        sub_100008BAC(a1, a2);
        return _swiftEmptyArrayStorage;
      }

      return v11;
    case 2uLL:
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3uLL:
      goto LABEL_9;
    default:
      v8 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_1000492AC(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v4 = a1;
      if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
      {
        goto LABEL_14;
      }

LABEL_9:
      __DataStorage._length.getter();
      return static String._fromUTF8Repairing(_:)();
    case 2uLL:
      v2 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (__DataStorage._bytes.getter() && __OFSUB__(v2, __DataStorage._offset.getter()))
      {
        goto LABEL_13;
      }

      if (!__OFSUB__(v3, v2))
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    default:
      return static String._fromUTF8Repairing(_:)();
  }
}

uint64_t sub_100049488(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10001C2AC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000494E0()
{
  v1 = type metadata accessor for URLRequest();
  sub_10000AC48();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 112) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_100008A94((v0 + 24));
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 72));
  (*(v3 + 8))(v0 + v5, v1);
  sub_100008A94((v0 + v7));

  return _swift_deallocObject(v0, ((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | 7);
}

uint64_t sub_1000495E0(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URLRequest() - 8);
  v6 = (*(v5 + 80) + 112) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v2 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_1000481A8(a1, a2, v2 + 16, v2 + v6, (v2 + v7), v9, v10);
}

uint64_t sub_1000496A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000496B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100049700()
{
  result = qword_1000DD7A0;
  if (!qword_1000DD7A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DD7A0);
  }

  return result;
}

uint64_t sub_100049744()
{
  sub_10003C278();
  v1(0);
  sub_10001C2AC();
  v2 = sub_10001C53C();
  v3(v2);
  return v0;
}

uint64_t sub_10004979C()
{
  sub_10003C278();
  v1(0);
  sub_10001C2AC();
  v2 = sub_10001C53C();
  v3(v2);
  return v0;
}

uint64_t sub_1000497F4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_100049834(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004989C(uint64_t a1)
{

  return sub_100008E2C(a1, 1, 1, v1);
}

void sub_100049904(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_100049910(uint64_t a1, uint64_t a2)
{

  return sub_100008E2C(a1, a2, 1, v2);
}

id sub_100049928(uint64_t a1)
{
  v4 = *(v2 + 2840);

  return [v1 v4];
}

void sub_100049948(void *a1@<X8>)
{
  v3 = *(v1 - 256);
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100049970()
{

  return sub_10003BAC8();
}

uint64_t sub_100049988(uint64_t a1)
{

  return sub_10001BB44(a1, v1, v2);
}

uint64_t sub_1000499C0()
{

  return swift_allocError();
}

uint64_t sub_1000499E0()
{
  type metadata accessor for ContainerConstants();
  v0 = static ContainerConstants.defaultSuiteName.getter();
  v2 = v1;
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = sub_100058E38(v0, v2);
  if (!v4)
  {
    return 0xD000000000000010;
  }

  v5 = v4;
  static ContainerConstants.liveActivitiesTargetAppKey.getter();
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 stringForKey:v6];

  if (!v7)
  {

    return 0xD000000000000010;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v13._countAndFlagsBits = v8;
  v13._object = v10;
  v11 = sub_10004B99C(v13);

  result = sub_10005B274();
  switch(v11)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      return result;
    default:
      return 0xD000000000000010;
  }

  return result;
}