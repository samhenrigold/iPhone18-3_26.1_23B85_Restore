uint64_t sub_100001944()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v6 = *(v1 + 80);
  v5[2] = v6;
  v7 = *(v1 + 88);
  v5[3] = v7;
  v5[4] = v4;

  return PrimitiveAppExtensionScene.init<A>(id:content:onConnection:)(v2, v3, sub_100003810, v0, sub_100003850, v5, v6, v7);
}

uint64_t sub_100001A54(uint64_t *a1)
{
  v1 = *(*a1 + 80);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v11 - v7;
  (*(v6 + 32))();
  sub_10000FC00();
  v9 = *(v2 + 8);
  v9(v5, v1);
  sub_10000FC00();
  return (v9)(v8, v1);
}

BOOL sub_100001BB0(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___MKRemoteUIAccessoryPlaceCardExtensionInterface];
    [a1 setExportedInterface:v4];

    [a1 setExportedObject:Strong];
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v5 = sub_10000FD24();
    sub_10000362C(v5, qword_10001DFE8);
    v6 = sub_10000FD04();
    v7 = sub_1000101B4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "extn full-accessory scene connection resume", v8, 2u);
    }

    [a1 resume];
    v9 = objc_allocWithZone(GEOApplicationAuditToken);

    sub_100003C68([v9 initWithNSXPCConnection:a1]);
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v10 = sub_10000FD24();
    sub_10000362C(v10, qword_10001DFE8);
    v11 = sub_10000FD04();
    v12 = sub_1000101B4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "extn full-accessory scene connection: self unavailable", v13, 2u);
    }
  }

  return Strong != 0;
}

uint64_t sub_100001E34(void *a1, int a2, uint64_t a3)
{
  v21 = a3;
  v20 = a2;
  v5 = *v3;
  v6 = sub_100010104();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_100010124();
  v10 = *(v22 - 8);
  __chkstk_darwin(v22);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100003458();
  v13 = sub_1000101D4();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = *(v5 + 80);
  *(v15 + 24) = *(v5 + 88);
  *(v15 + 32) = v14;
  *(v15 + 40) = a1;
  *(v15 + 48) = v20;
  *(v15 + 56) = v21;
  aBlock[4] = sub_1000037B0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_100018E88;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000036AC(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v16);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v22);
}

void sub_10000215C(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v9 = sub_10000FD24();
    sub_10000362C(v9, qword_10001DFE8);
    v10 = a2;
    v11 = sub_10000FD04();
    v12 = sub_1000101A4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32 = v14;
      *v13 = 136380675;
      v31 = v10;
      if (a2)
      {
        v29 = a3;
        v30 = a4;
        v15 = v10;
        v16 = [v15 name];
        if (v16)
        {
          v17 = v16;
          v18 = sub_100010144();
          v20 = v19;
        }

        else
        {

          v18 = 0;
          v20 = 0xE000000000000000;
        }

        a4 = v30;
        a3 = v29;
      }

      else
      {
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v25 = sub_10000F280(v18, v20, &v32);

      *(v13 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v11, v12, "extn full-accessory scene configure with item: %{private}s", v13, 0xCu);
      sub_1000037C4(v14);

      v10 = v31;
    }

    else
    {
    }

    LOBYTE(v32) = 0;
    sub_100004020(a3);

    v26 = *(v8 + 48);
    if ((*(v26 + 56) & 1) != 0 || *(v26 + 48) != a4)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v32 = v26;
      sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel, &unk_100010C24);

      sub_10000FC54();
    }

    else
    {
      *(v26 + 56) = 0;
    }

    v28 = v10;

    sub_100003A08(a2);
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v21 = sub_10000FD24();
    sub_10000362C(v21, qword_10001DFE8);
    v22 = sub_10000FD04();
    v23 = sub_1000101C4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "extn full-accessory scene configure without self", v24, 2u);
    }
  }
}

uint64_t sub_100002568(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v8 = a3;

  sub_100001E34(a3, a4, a5);
}

uint64_t sub_1000025E0(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *v3;
  v8 = sub_100010104();
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100010124();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003458();
  v14 = sub_1000101D4();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = *(v7 + 80);
  *(v16 + 24) = *(v7 + 88);
  *(v16 + 32) = v15;
  *(v16 + 40) = a3;
  *(v16 + 48) = a1;
  *(v16 + 56) = a2;
  aBlock[4] = sub_100003734;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_100018E38;
  v17 = _Block_copy(aBlock);

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000036AC(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v17);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_10000290C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v5 = sub_10000FD24();
    sub_10000362C(v5, qword_10001DFE8);
    v6 = sub_10000FD04();
    v7 = sub_1000101B4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a4;
      _os_log_impl(&_mh_execute_header, v6, v7, "extn full-accessory fetchPreferredContentSize for %f", v8, 0xCu);
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel, &unk_100010C24);

    sub_10000FC54();
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v10 = sub_10000FD24();
    sub_10000362C(v10, qword_10001DFE8);
    v11 = sub_10000FD04();
    v12 = sub_1000101C4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "extn full-accessory fetchPreferredContentSize without self", v13, 2u);
    }
  }
}

uint64_t sub_100002BEC(uint64_t a1, int a2, void *aBlock, double a4)
{
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_1000025E0(sub_100003894, v6, a4);
}

uint64_t sub_100002C8C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_100010104();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100010124();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003458();
  v11 = sub_1000101D4();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = *(v3 + 80);
  v13[3] = *(v3 + 88);
  v13[4] = v12;
  v13[5] = a1;
  aBlock[4] = sub_100003514;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_100018DE8;
  v14 = _Block_copy(aBlock);

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000036AC(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

void sub_100002F94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 48);
    if ((*(v4 + 56) & 1) != 0 || *(v4 + 48) != a2)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel, &unk_100010C24);

      sub_10000FC54();
    }

    else
    {

      *(v4 + 48) = a2;
      *(v4 + 56) = 0;
    }
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v6 = sub_10000FD24();
    sub_10000362C(v6, qword_10001DFE8);
    v7 = sub_10000FD04();
    v8 = sub_1000101C4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "extn full-accessory scene update interface style without self", v9, 2u);
    }
  }
}

uint64_t sub_1000031D0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_100002C8C(a3);
}

void *sub_100003214()
{

  return v0;
}

uint64_t sub_100003244()
{
  sub_100003214();

  return _swift_deallocClassInstance(v0, 56, 7);
}

__n128 sub_100003290(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000032A0(uint64_t a1, int a2)
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

uint64_t sub_1000032C0(uint64_t result, int a2, int a3)
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

void sub_100003324(uint64_t a1, unint64_t *a2, uint64_t a3)
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

_DWORD *sub_1000033AC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_1000033C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000341C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100003458()
{
  result = qword_10001C860;
  if (!qword_10001C860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C860);
  }

  return result;
}

uint64_t sub_1000034A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000034DC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100003520(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003538(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003580()
{
  result = qword_10001C878;
  if (!qword_10001C878)
  {
    sub_1000035E4(&qword_10001C870, &qword_1000110F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C878);
  }

  return result;
}

uint64_t sub_1000035E4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000362C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000036AC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000036F4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100003770()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000037C4(void *a1)
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

uint64_t sub_100003818()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000385C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100003908()
{
  swift_getKeyPath();
  sub_100004BC4();
  sub_10000FC64();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_100003980@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100004BC4();
  sub_10000FC64();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_100003A08(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100004BC4();
    sub_10000FC54();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000058B4(0, &qword_10001CB60, MKMapItem_ptr);
  v5 = v4;
  v6 = a1;
  v7 = sub_1000101F4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

void *sub_100003B68()
{
  swift_getKeyPath();
  sub_100004BC4();
  sub_10000FC64();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_100003BE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100004BC4();
  sub_10000FC64();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_100003C68(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100004BC4();
    sub_10000FC54();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000058B4(0, &qword_10001CB58, GEOApplicationAuditToken_ptr);
  v5 = v4;
  v6 = a1;
  v7 = sub_1000101F4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

uint64_t sub_100003DC8()
{
  swift_getKeyPath();
  sub_100004BC4();
  sub_10000FC64();

  return *(v0 + 32);
}

uint64_t sub_100003E38(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100004BC4();
    sub_10000FC54();
  }

  return result;
}

unint64_t sub_100003F20()
{
  swift_getKeyPath();
  sub_100004BC4();
  sub_10000FC64();

  return *(v0 + 36) | (*(v0 + 40) << 32);
}

uint64_t sub_100003FA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100004BC4();
  sub_10000FC64();

  v5 = *(v3 + 40);
  *a2 = *(v3 + 36);
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_100004020(uint64_t result)
{
  if ((*(v1 + 40) & 1) == 0)
  {
    if ((result & 0x100000000) != 0 || *(v1 + 36) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 36) = result;
    *(v1 + 40) = BYTE4(result) & 1;
    return result;
  }

  if ((result & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100004BC4();
  sub_10000FC54();
}

uint64_t sub_100004124()
{
  swift_getKeyPath();
  sub_100004BC4();
  sub_10000FC64();

  return *(v0 + 48);
}

uint64_t sub_100004198(uint64_t result, char a2)
{
  if ((*(v2 + 56) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 48) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 48) = result;
    *(v2 + 56) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100004BC4();
  sub_10000FC54();
}

uint64_t sub_10000429C(uint64_t result, uint64_t a2, char a3)
{
  *(result + 48) = a2;
  *(result + 56) = a3 & 1;
  return result;
}

id sub_1000042AC()
{
  v1 = v0;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [result userInterfaceIdiom];

    if (v4 == 3 && ((swift_getKeyPath(), sub_100004BC4(), sub_10000FC64(), , (*(v1 + 40) & 1) != 0) || *(v1 + 36) != 3) && ((swift_getKeyPath(), sub_10000FC64(), , (*(v1 + 56) & 1) != 0) || *(v1 + 48) != 2))
    {
      swift_getKeyPath();
      sub_10000FC64();

      return *(v1 + 48);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100004408()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100004BC4();
  sub_10000FC64();

  v1 = *(v0 + 64);
  sub_100004B9C(v1, *(v3 + 72), *(v3 + 80));
  return v1;
}

uint64_t sub_100004498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[8];
  v5 = a1[9];
  v6 = a1[10];
  a1[8] = a2;
  a1[9] = a3;
  a1[10] = a4;
  sub_100004B9C(a2, a3, a4);
  return sub_100004BAC(v4, v5, v6);
}

uint64_t sub_1000044F4()
{
  sub_100004BAC(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  v1 = OBJC_IVAR____TtC10MKRemoteUI22FullPlaceCardViewModel___observationRegistrar;
  v2 = sub_10000FC84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for FullPlaceCardViewModel(uint64_t a1)
{
  result = qword_10001C920;
  if (!qword_10001C920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004600(uint64_t a1)
{
  result = sub_10000FC84();
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

double sub_1000046C4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  swift_getKeyPath();
  *&v8 = a1;
  sub_100004BC4();
  sub_10000FC64();

  v4 = a1[2];
  if (v4)
  {
    swift_getKeyPath();
    *&v8 = a1;
    v5 = v4;
    sub_10000FC64();

    v6 = a1[3];
    if (v6)
    {
      swift_getKeyPath();
      v6;
      sub_10000FC64();

      swift_getKeyPath();
      *&v8 = a1;
      sub_10000FC64();

      sub_100004B9C(a1[8], a1[9], a1[10]);
      sub_1000042AC();
    }

    else
    {
    }
  }

  sub_100005928();
  sub_10000597C();
  sub_10000FF04();
  *a2 = v8;
  a2[1] = v9;
  a2[2] = *v10;
  result = *&v10[10];
  *(a2 + 42) = *&v10[10];
  return result;
}

double sub_1000048C8@<D0>(uint64_t a1@<X8>)
{
  sub_1000046C4(*v1, v8);
  v3 = sub_10000FDA4();
  v4 = sub_10000FFB4();
  v5 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  return result;
}

id sub_100004920(void *a1, char a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = [objc_allocWithZone(MUPlaceViewControllerConfiguration) init];
  [v9 setOptions:{objc_msgSend(v9, "options") | 0x8000000000}];
  [v9 setDeveloperPlaceCardAuditToken:a3];
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithConfiguration:", v9);
  [v10 setOptions:{objc_msgSend(v10, "options") & 0xFFFFFFFFFFFFFFFELL | a2 & 1}];
  [v10 setMapItem:a1];

  return v10;
}

id sub_100004A94()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100004AF0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100004B04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100004B4C(uint64_t result, int a2, int a3)
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

uint64_t sub_100004B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100004BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_100004BC4()
{
  result = qword_10001C880;
  if (!qword_10001C880)
  {
    type metadata accessor for FullPlaceCardViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C880);
  }

  return result;
}

id sub_100004C1C()
{
  v1 = v0;
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000FD24();
  sub_10000362C(v2, qword_10001DFE8);
  v3 = *v0;
  v4 = *(v0 + 8);
  v28 = *(v0 + 24);
  v29 = *(v0 + 40);
  v5 = v3;
  v6 = v4;
  sub_100005EF4(&v28, v27);
  v7 = sub_10000FD04();
  v8 = sub_1000101A4();

  sub_100005F64(&v28);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27[0] = v10;
    *v9 = 136380675;
    if (v3)
    {
      v26 = v6;
      v11 = v5;
      v12 = [v11 name];
      if (v12)
      {
        v13 = v12;
        v25 = sub_100010144();
        v15 = v14;

        v16 = v25;
      }

      else
      {

        v16 = 0;
        v15 = 0xE000000000000000;
      }

      v6 = v26;
    }

    else
    {
      v15 = 0xE300000000000000;
      v16 = 7104878;
    }

    v17 = sub_10000F280(v16, v15, v27);

    *(v9 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "extn full representable make (map item: %{private}s)", v9, 0xCu);
    sub_1000037C4(v10);
  }

  v18 = *(v1 + 16);
  objc_allocWithZone(type metadata accessor for FullPlaceCardViewController());
  v19 = v5;
  result = sub_100004920(v3, v18, v6);
  if ((*(v1 + 56) & 1) == 0)
  {
    v21 = *(v1 + 48);
    v22 = result;
    result = [result view];
    if (result)
    {
      v23 = result;
      if (v21 == 1)
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      [result setOverrideUserInterfaceStyle:v24];

      return v22;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100004E9C(void *a1)
{
  v2 = v1;
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v4 = sub_10000FD24();
  sub_10000362C(v4, qword_10001DFE8);
  v5 = *v1;
  v6 = v1[1];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = *v2;
  v11 = v6;
  sub_100004B9C(v7, v8, v9);
  v12 = sub_10000FD04();
  v13 = sub_1000101A4();
  v47 = v11;

  v14 = v10;
  v48 = v7;
  sub_100004BAC(v7, v8, v9);
  if (os_log_type_enabled(v12, v13))
  {
    v45 = v13;
    v46 = a1;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136380675;
    if (v5)
    {
      v44 = v14;
      v17 = v14;
      v18 = [v17 name];
      if (v18)
      {
        v19 = v18;
        v20 = sub_100010144();
        v22 = v21;
      }

      else
      {

        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v14 = v44;
    }

    else
    {
      v22 = 0xE300000000000000;
      v20 = 7104878;
    }

    v23 = sub_10000F280(v20, v22, aBlock);

    *(v15 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v12, v45, "extn full representable update (map item: %{private}s)", v15, 0xCu);
    sub_1000037C4(v16);

    a1 = v46;
  }

  else
  {
  }

  [a1 setMapItem:{v14, v44}];
  [a1 setOptions:{objc_msgSend(a1, "options") & 0xFFFFFFFFFFFFFFFELL | *(v2 + 16)}];
  if (v8)
  {
    sub_100004B9C(v48, v8, v9);

    v24 = sub_10000FD04();
    v25 = sub_1000101A4();
    sub_100004BAC(v48, v8, v9);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v24, v25, "extn full representable update contentSizeQuery %f", v26, 0xCu);
    }

    LODWORD(v27) = 1148846080;
    LODWORD(v28) = 1112014848;
    v8([a1 _systemLayoutSizeFittingSize:*&v48 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v27, v28}]);
    sub_100004BAC(v48, v8, v9);
    sub_100004BAC(v48, v8, v9);
  }

  if ((v2[7] & 1) == 0)
  {
    v29 = v14;
    v30 = v2[6];
    v31 = [a1 view];
    if (!v31)
    {
      __break(1u);
      goto LABEL_26;
    }

    v32 = v31;
    if (v30 == 1)
    {
      v33 = 2;
    }

    else
    {
      v33 = 1;
    }

    v34 = [v31 overrideUserInterfaceStyle];

    if (v33 != v34)
    {
      v35 = [a1 view];
      if (v35)
      {
        v36 = v35;
        v37 = objc_opt_self();
        v38 = swift_allocObject();
        v39 = *(v2 + 1);
        *(v38 + 24) = *v2;
        *(v38 + 16) = a1;
        *(v38 + 40) = v39;
        *(v38 + 56) = *(v2 + 2);
        *(v38 + 65) = *(v2 + 41);
        aBlock[4] = sub_100005ED0;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000DBC0;
        aBlock[3] = &unk_100019080;
        v40 = _Block_copy(aBlock);
        v41 = v29;
        v42 = v47;
        sub_100004B9C(v48, v8, v9);
        v43 = a1;

        [v37 transitionWithView:v36 duration:5242880 options:v40 animations:0 completion:0.2];
        _Block_release(v40);

        return;
      }

LABEL_26:
      __break(1u);
    }
  }
}

void sub_1000053AC(void *a1, uint64_t a2)
{
  v3 = [a1 view];
  if (v3)
  {
    if ((*(a2 + 56) & 1) != 0 || *(a2 + 48) != 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    v5 = v3;
    [v3 setOverrideUserInterfaceStyle:v4];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100005504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005BEC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100005568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005BEC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000055CC(uint64_t a1)
{
  sub_100005BEC();
  sub_10000FF74();
  __break(1u);
}

uint64_t sub_100005654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005C40();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000056B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005C40();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000571C(uint64_t a1)
{
  sub_100005C40();
  sub_10000FED4();
  __break(1u);
}

void sub_100005790()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v2;
}

void sub_1000057A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 28);
  *(v1 + 36) = *(v0 + 24);
  *(v1 + 40) = v2;
}

void sub_1000057E0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100003C68(v1);
}

void sub_100005810()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

void sub_10000584C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100003A08(v1);
}

void sub_10000587C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_1000058B4(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_100005928()
{
  result = qword_10001CB68;
  if (!qword_10001CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB68);
  }

  return result;
}

unint64_t sub_10000597C()
{
  result = qword_10001CB70;
  if (!qword_10001CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB70);
  }

  return result;
}

uint64_t sub_1000059E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000059F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100005A14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_100005A5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100005AC0()
{
  result = qword_10001CB78;
  if (!qword_10001CB78)
  {
    sub_1000035E4(&qword_10001CB80, &qword_100010E50);
    sub_100005B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB78);
  }

  return result;
}

unint64_t sub_100005B4C()
{
  result = qword_10001CB88;
  if (!qword_10001CB88)
  {
    sub_1000035E4(&qword_10001CB90, &qword_100010E58);
    sub_100005928();
    sub_10000597C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB88);
  }

  return result;
}

unint64_t sub_100005BEC()
{
  result = qword_10001CB98;
  if (!qword_10001CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB98);
  }

  return result;
}

unint64_t sub_100005C40()
{
  result = qword_10001CBA0;
  if (!qword_10001CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CBA0);
  }

  return result;
}

id sub_100005C94()
{
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000FD24();
  sub_10000362C(v0, qword_10001DFE8);
  v1 = sub_10000FD04();
  v2 = sub_1000101A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "extn full representable make loading view", v3, 2u);
  }

  v4 = objc_allocWithZone(MKFullDeveloperPlaceCardLoadingView);

  return [v4 init];
}

void sub_100005D90()
{
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000FD24();
  sub_10000362C(v0, qword_10001DFE8);
  oslog = sub_10000FD04();
  v1 = sub_1000101A4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "extn full representable update loading view", v2, 2u);
  }
}

uint64_t sub_100005E78()
{
  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 81, 7);
}

double sub_100005EDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100005EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003538(&qword_10001CBA8, &qword_100011008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005F64(uint64_t a1)
{
  v2 = sub_100003538(&qword_10001CBA8, &qword_100011008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006030@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel, &unk_100010C24);
  sub_10000FC64();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_100006100@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel, &unk_100010C24);
  sub_10000FC64();

  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1000061E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel, &unk_100010C24);
  sub_10000FC64();

  v4 = v3[8];
  v5 = v3[9];
  v6 = v3[10];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_100004B9C(v4, v5, v6);
}

uint64_t sub_100006298(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel, &unk_100010C24);
  sub_10000FC54();
}

uint64_t sub_100006378()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v6 = *(v1 + 80);
  v5[2] = v6;
  v7 = *(v1 + 88);
  v5[3] = v7;
  v5[4] = v4;

  return PrimitiveAppExtensionScene.init<A>(id:content:onConnection:)(v2, v3, sub_100007FE8, v0, sub_100008028, v5, v6, v7);
}

uint64_t sub_100006488(uint64_t *a1)
{
  v1 = *(*a1 + 80);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v11 - v7;
  (*(v6 + 32))();
  sub_10000FC00();
  v9 = *(v2 + 8);
  v9(v5, v1);
  sub_10000FC00();
  return (v9)(v8, v1);
}

BOOL sub_1000065E4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___MKRemoteUIStandAlonePlaceCardExtensionInterface];
    [a1 setExportedInterface:v4];

    [a1 setExportedObject:Strong];
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v5 = sub_10000FD24();
    sub_10000362C(v5, qword_10001DFE8);
    v6 = sub_10000FD04();
    v7 = sub_1000101B4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "extn stand-alone scene connection resume", v8, 2u);
    }

    [a1 resume];
    v9 = objc_allocWithZone(GEOApplicationAuditToken);

    sub_100003C68([v9 initWithNSXPCConnection:a1]);
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v10 = sub_10000FD24();
    sub_10000362C(v10, qword_10001DFE8);
    v11 = sub_10000FD04();
    v12 = sub_1000101B4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "extn stand-alone scene connection: self unavailable", v13, 2u);
    }
  }

  return Strong != 0;
}

uint64_t sub_100006868(void *a1, int a2, int a3, uint64_t a4)
{
  v24 = a4;
  v22 = a2;
  v23 = a3;
  v6 = *v4;
  v7 = sub_100010104();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100010124();
  v11 = *(v25 - 8);
  __chkstk_darwin(v25);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003458();
  v14 = sub_1000101D4();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = *(v6 + 80);
  *(v16 + 24) = *(v6 + 88);
  *(v16 + 32) = v15;
  *(v16 + 40) = a1;
  v17 = v23;
  *(v16 + 48) = v22;
  *(v16 + 52) = v17;
  *(v16 + 56) = v24;
  aBlock[4] = sub_100007F84;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_100019260;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000036AC(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v18);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v25);
}

void sub_100006B94(uint64_t a1, void *a2, char a3, unsigned int a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v35 = a5;
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v11 = sub_10000FD24();
    sub_10000362C(v11, qword_10001DFE8);
    v12 = a2;
    v13 = sub_10000FD04();
    v14 = sub_1000101A4();

    if (os_log_type_enabled(v13, v14))
    {
      v34 = a3;
      v15 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v15 = 136380675;
      if (a2)
      {
        v32 = a4;
        v16 = v12;
        v17 = [v16 name];
        if (v17)
        {
          v18 = v17;
          v19 = sub_100010144();
          v21 = v20;
        }

        else
        {

          v19 = 0;
          v21 = 0xE000000000000000;
        }

        a4 = v32;
      }

      else
      {
        v21 = 0xE300000000000000;
        v19 = 7104878;
      }

      v26 = sub_10000F280(v19, v21, &v36);

      *(v15 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v13, v14, "extn stand-alone scene configure with item: %{private}s", v15, 0xCu);
      sub_1000037C4(v33);

      a3 = v34;
    }

    else
    {
    }

    v27 = v12;

    sub_100003A08(a2);

    v28 = *(v10 + 48);
    if (*(v28 + 32) == (a3 & 1))
    {
      *(v28 + 32) = a3 & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v36 = v28;
      sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel, &unk_100010C24);

      sub_10000FC54();
    }

    LOBYTE(v36) = 0;
    sub_100004020(a4);

    v30 = *(v10 + 48);
    if ((*(v30 + 56) & 1) != 0 || *(v30 + 48) != v35)
    {
      v31 = swift_getKeyPath();
      __chkstk_darwin(v31);
      v36 = v30;
      sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel, &unk_100010C24);

      sub_10000FC54();
    }

    else
    {

      *(v30 + 48) = v35;
      *(v30 + 56) = 0;
    }
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v22 = sub_10000FD24();
    sub_10000362C(v22, qword_10001DFE8);
    v23 = sub_10000FD04();
    v24 = sub_1000101C4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "extn stand-alone scene configure without self", v25, 2u);
    }
  }
}

uint64_t sub_1000070AC(uint64_t a1, uint64_t a2, void *a3, int a4, int a5, uint64_t a6)
{
  v10 = a3;

  sub_100006868(a3, a4, a5, a6);
}

uint64_t sub_10000712C(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *v3;
  v8 = sub_100010104();
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100010124();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003458();
  v14 = sub_1000101D4();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = *(v7 + 80);
  *(v16 + 24) = *(v7 + 88);
  *(v16 + 32) = v15;
  *(v16 + 40) = a3;
  *(v16 + 48) = a1;
  *(v16 + 56) = a2;
  aBlock[4] = sub_100007F28;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_100019210;
  v17 = _Block_copy(aBlock);

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000036AC(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v17);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_100007458(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v5 = sub_10000FD24();
    sub_10000362C(v5, qword_10001DFE8);
    v6 = sub_10000FD04();
    v7 = sub_1000101B4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a4;
      _os_log_impl(&_mh_execute_header, v6, v7, "extn stand-alone fetchPreferredContentSize for %f", v8, 0xCu);
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel, &unk_100010C24);

    sub_10000FC54();
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v10 = sub_10000FD24();
    sub_10000362C(v10, qword_10001DFE8);
    v11 = sub_10000FD04();
    v12 = sub_1000101C4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "extn stand-alone fetchPreferredContentSize without self", v13, 2u);
    }
  }
}

uint64_t sub_100007738(uint64_t a1, int a2, void *aBlock, double a4)
{
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_10000712C(sub_100003894, v6, a4);
}

uint64_t sub_1000077D8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_100010104();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100010124();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003458();
  v11 = sub_1000101D4();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = *(v3 + 80);
  v13[3] = *(v3 + 88);
  v13[4] = v12;
  v13[5] = a1;
  aBlock[4] = sub_100007E8C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_1000191C0;
  v14 = _Block_copy(aBlock);

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000036AC(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

void sub_100007AE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 48);
    if ((*(v4 + 56) & 1) != 0 || *(v4 + 48) != a2)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1000036AC(&qword_10001C880, type metadata accessor for FullPlaceCardViewModel, &unk_100010C24);

      sub_10000FC54();
    }

    else
    {

      *(v4 + 48) = a2;
      *(v4 + 56) = 0;
    }
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v6 = sub_10000FD24();
    sub_10000362C(v6, qword_10001DFE8);
    v7 = sub_10000FD04();
    v8 = sub_1000101C4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "extn stand-alone scene update interface style without self", v9, 2u);
    }
  }
}

uint64_t sub_100007D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1000077D8(a3);
}

uint64_t sub_100007DE0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100007E1C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007E54()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_100007E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100007EE8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100007F44()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100007FF0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008034()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1000080A0(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  v6 = v4;
  v4[2] = sub_100010144();
  v4[3] = v9;
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000FD24();
  sub_10000362C(v10, qword_10001DFE8);
  v11 = sub_10000FD04();
  v12 = sub_1000101A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a4, v13, 2u);
  }

  type metadata accessor for FullPlaceCardViewModel(0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 1;
  *(v14 + 36) = 0;
  *(v14 + 40) = 1;
  *(v14 + 48) = 0;
  *(v14 + 56) = 1;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  *(v14 + 64) = 0;
  sub_10000FC74();
  v6[5] = a2;
  v6[6] = v14;
  v6[4] = a1;
  return v6;
}

double sub_1000081F8@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 48);

  return result;
}

uint64_t sub_100008204()
{
  v0 = sub_100003538(&qword_10001CCC8, &qword_1000111E8);
  v1 = sub_10000899C(&qword_10001CCD0, &qword_10001CCC8, &qword_1000111E8, &unk_1000112D4);

  return AppExtensionSceneConfiguration.init<A>(_:)(sub_1000088DC, 0, v0, v1);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100008308();
  sub_10000FCF4();
  return 0;
}

unint64_t sub_100008308()
{
  result = qword_10001CC90;
  if (!qword_10001CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CC90);
  }

  return result;
}

unint64_t sub_100008388(uint64_t a1)
{
  result = sub_100008308();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000083B4()
{
  result = qword_10001CCC0;
  if (!qword_10001CCC0)
  {
    sub_10000FCA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CCC0);
  }

  return result;
}

uint64_t sub_10000840C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003538(&qword_10001CCF0, &qword_100011208);
  sub_10000FCE4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100011170;

  sub_100003538(&qword_10001CCD8, &qword_1000111F0);
  sub_10000899C(&qword_10001CCF8, &qword_10001CCD8, &qword_1000111F0, &unk_100011090);
  sub_10000FCD4();

  sub_100003538(&qword_10001CCE0, &qword_1000111F8);
  sub_10000899C(&qword_10001CD00, &qword_10001CCE0, &qword_1000111F8, &unk_100010A4C);
  sub_10000FCD4();

  sub_100003538(&qword_10001CCE8, &qword_100011200);
  sub_10000899C(&qword_10001CD08, &qword_10001CCE8, &qword_100011200, &unk_100011930);
  sub_10000FCD4();
  return v3;
}

void *sub_100008630(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[2] = sub_100010144();
  v2[3] = v6;
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v7 = sub_10000FD24();
  sub_10000362C(v7, qword_10001DFE8);
  v8 = sub_10000FD04();
  v9 = sub_1000101A4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "extn compact-accessory scene init", v10, 2u);
  }

  type metadata accessor for CompactPlaceCardViewModel(0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 28) = 1;
  *(v11 + 32) = 0;
  *(v11 + 40) = 1;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 1;
  sub_10000FC74();
  v3[5] = a2;
  v3[6] = v11;
  v3[4] = a1;
  return v3;
}

uint64_t (*sub_100008788@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>))@<X0>(uint64_t *a1@<X8>)
{
  sub_100003538(&qword_10001CCD8, &qword_1000111F0);
  swift_allocObject();
  v2 = sub_1000080A0(sub_1000089E4, 0, &MKRemoteUIStandAlonePlaceCardSceneID, "extn stand-alone scene init");
  sub_100003538(&qword_10001CCE0, &qword_1000111F8);
  swift_allocObject();

  v3 = sub_1000080A0(sub_1000089E4, 0, &MKRemoteUIFullAccessoryPlaceCardSceneID, "extn full-accessory scene init");
  sub_100003538(&qword_10001CCE8, &qword_100011200);
  swift_allocObject();
  v4 = sub_100008630(sub_1000089E4, 0);

  result = swift_allocObject();
  *(result + 2) = v2;
  *(result + 3) = v3;
  *(result + 4) = v4;
  *a1 = sub_100008928;
  a1[1] = result;
  return result;
}

uint64_t sub_1000088E0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008928@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000840C(v1[2], v1[3], v1[4]);
  *a1 = result;
  return result;
}

uint64_t sub_10000899C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000035E4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000089F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100008A40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100008A88(uint64_t result, int a2, int a3)
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

uint64_t sub_100008ADC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100008B9C()
{
  v0 = sub_10000FD24();
  sub_100008C18(v0, qword_10001DFE8);
  sub_10000362C(v0, qword_10001DFE8);
  return sub_10000FD14();
}

uint64_t *sub_100008C18(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void *sub_100008C7C()
{
  swift_getKeyPath();
  sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel, &unk_1000113F8);
  sub_10000FC64();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_100008D24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel, &unk_1000113F8);
  sub_10000FC64();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_100008DDC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel, &unk_1000113F8);
    sub_10000FC54();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000058B4(0, &qword_10001CB60, MKMapItem_ptr);
  v5 = v4;
  v6 = a1;
  v7 = sub_1000101F4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

unint64_t sub_100008F6C()
{
  swift_getKeyPath();
  sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel, &unk_1000113F8);
  sub_10000FC64();

  return *(v0 + 24) | (*(v0 + 28) << 32);
}

uint64_t sub_10000901C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel, &unk_1000113F8);
  sub_10000FC64();

  v5 = *(v3 + 28);
  *a2 = *(v3 + 24);
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1000090CC(uint64_t result)
{
  if ((*(v1 + 28) & 1) == 0)
  {
    if ((result & 0x100000000) != 0 || *(v1 + 24) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 24) = result;
    *(v1 + 28) = BYTE4(result) & 1;
    return result;
  }

  if ((result & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel, &unk_1000113F8);
  sub_10000FC54();
}

uint64_t sub_100009200()
{
  swift_getKeyPath();
  sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel, &unk_1000113F8);
  sub_10000FC64();

  return *(v0 + 32);
}

uint64_t sub_1000092A4(uint64_t result, char a2)
{
  if ((*(v2 + 40) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 32) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 32) = result;
    *(v2 + 40) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel, &unk_1000113F8);
  sub_10000FC54();
}

uint64_t sub_1000093D8(uint64_t result, uint64_t a2, char a3)
{
  *(result + 32) = a2;
  *(result + 40) = a3 & 1;
  return result;
}

id sub_1000093E8()
{
  v1 = v0;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [result userInterfaceIdiom];

    if (v4 == 3 && ((swift_getKeyPath(), sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel, &unk_1000113F8), sub_10000FC64(), , (*(v1 + 28) & 1) != 0) || *(v1 + 24) != 3) && ((swift_getKeyPath(), sub_10000FC64(), , (*(v1 + 40) & 1) != 0) || *(v1 + 32) != 2))
    {
      swift_getKeyPath();
      sub_10000FC64();

      return *(v1 + 32);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100009574()
{
  v1 = *(v0 + 48);
  if (v1 && (*(v0 + 80) & 1) == 0)
  {
    v2 = *(v0 + 56);
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = qword_10001C7C0;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_10000FD24();
    sub_10000362C(v6, qword_10001DFE8);
    v7 = sub_10000FD04();
    v8 = sub_1000101A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "extn compact contentSizeReply", v9, 2u);
    }

    v1(v4, v3);

    sub_100009884(v1, v2);
  }
}

uint64_t sub_1000096C0()
{
  sub_100009884(*(v0 + 48), *(v0 + 56));
  v1 = OBJC_IVAR____TtC10MKRemoteUI25CompactPlaceCardViewModel___observationRegistrar;
  v2 = sub_10000FC84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for CompactPlaceCardViewModel(uint64_t a1)
{
  result = qword_10001CDC8;
  if (!qword_10001CDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000097C0(uint64_t a1)
{
  result = sub_10000FC84();
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

uint64_t sub_100009884(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_100009894@<X0>(double a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v36 = sub_100003538(&qword_10001CF78, &qword_100011518);
  __chkstk_darwin(v36);
  v4 = &v31 - v3;
  v5 = sub_10000FD44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003538(&qword_10001CF80, &qword_100011520);
  v10 = __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v15 = sub_1000093E8();
  if (v16)
  {
    sub_100009C34(a1, &v39);
    v17 = v41;
    v18 = v42;
    v19 = sub_10000FDA4();
    v20 = sub_10000FFB4();
    v21 = v39;
    v22 = v40;
    LOBYTE(v39) = v18;
    *v4 = v21;
    *(v4 + 1) = v22;
    *(v4 + 4) = v17;
    v4[40] = v18;
    *(v4 + 6) = v19;
    v4[56] = v20;
    swift_storeEnumTagMultiPayload();
    sub_100003538(&qword_10001CF88, &qword_100011528);
    sub_10000C418();
    sub_10000C4D0();
    return sub_10000FF04();
  }

  else
  {
    v24 = v15;
    sub_100009C34(a1, &v39);
    v34 = v41;
    v25 = v42;
    v35 = sub_10000FDA4();
    v33 = sub_10000FFB4();
    v31 = v40;
    v32 = v39;
    KeyPath = swift_getKeyPath();
    v27 = &enum case for ColorScheme.dark(_:);
    if (v24 != 1)
    {
      v27 = &enum case for ColorScheme.light(_:);
    }

    (*(v6 + 104))(v8, *v27, v5);
    v38 = v25;
    v28 = &v12[*(v9 + 36)];
    v29 = sub_100003538(&qword_10001CFE8, &qword_100011548);
    (*(v6 + 32))(v28 + *(v29 + 28), v8, v5);
    *v28 = KeyPath;
    v30 = v31;
    *v12 = v32;
    *(v12 + 1) = v30;
    *(v12 + 4) = v34;
    v12[40] = v38;
    *(v12 + 41) = v39;
    *(v12 + 11) = *(&v39 + 3);
    *(v12 + 6) = v35;
    v12[56] = v33;
    sub_10000C770(v12, v14);
    sub_10000C7E0(v14, v4);
    swift_storeEnumTagMultiPayload();
    sub_100003538(&qword_10001CF88, &qword_100011528);
    sub_10000C418();
    sub_10000C4D0();
    sub_10000FF04();
    return sub_10000DA50(v14, &qword_10001CF80, &qword_100011520);
  }
}

double sub_100009C34@<D0>(double a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  *&v7 = a1;
  sub_10000CC18(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel, &unk_1000113F8);
  sub_10000FC64();

  v4 = *(*&a1 + 16);
  if (v4)
  {
    v5 = v4;
  }

  sub_100003538(&qword_10001CFB8, &qword_100011538);
  sub_10000C5E8();
  sub_10000C6F4();
  sub_10000FF04();
  result = a1;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  return result;
}

uint64_t sub_100009D8C(uint64_t a1)
{
  v2 = sub_10000FD44();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10000FDE4();
}

void sub_100009E54(void *a1@<X8>)
{
  sub_10000FD94();
  *a1 = v2;
  a1[1] = v3;
}

void sub_100009E80(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000FD24();
  sub_10000362C(v5, qword_10001DFE8);
  v6 = sub_10000FD04();
  v7 = sub_1000101A4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    type metadata accessor for CGSize(0);
    v10 = sub_100010164();
    v12 = sub_10000F280(v10, v11, &v13);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "extn compact onGeometryChange %s", v8, 0xCu);
    sub_1000037C4(v9);
  }

  *(a2 + 64) = v3;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  sub_100009574();
}

uint64_t sub_10000A000()
{
  v1 = [v0 _geoAddress];
  if (v1)
  {
    v2 = v1;
    if ([v1 hasStructuredAddress])
    {
      v3 = [v2 structuredAddress];
      if (v3)
      {
        v4 = v3;
        if ([v3 hasFullThoroughfare])
        {
          v5 = [v4 fullThoroughfare];
          if (v5)
          {
            v6 = v5;
            v7 = sub_100010144();

            goto LABEL_13;
          }

          v8 = v4;
        }

        else
        {
          v8 = v2;
          v2 = v4;
        }
      }
    }
  }

  v9 = [v0 _shortAddress];
  if (!v9)
  {
    return 0;
  }

  v2 = v9;
  v7 = sub_100010144();
LABEL_13:

  return v7;
}

id sub_10000A120()
{
  result = [v0 _geoMapItem];
  if (!result)
  {
    goto LABEL_31;
  }

  v2 = [result _enclosingPlace];
  swift_unknownObjectRelease();
  if (!v2)
  {
LABEL_11:
    v11 = [v0 _firstLocalizedCategoryName];
    if (v11)
    {
      v12 = v11;
      v13 = sub_100010144();
      v15 = v14;

      v16 = sub_10000C858(0, 1, 1, &_swiftEmptyArrayStorage);
      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_10000C858((v17 > 1), v18 + 1, 1, v16);
      }

      *(v16 + 2) = v18 + 1;
      v19 = &v16[32 * v18];
      *(v19 + 4) = v13;
      *(v19 + 5) = v15;
      v19[48] = 0;
      *(v19 + 7) = &_swiftEmptyArrayStorage;
      v20 = sub_10000A000();
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    }

LABEL_16:
    v16 = &_swiftEmptyArrayStorage;
    v20 = sub_10000A000();
    if (!v21)
    {
LABEL_28:
      v34 = sub_10000D204(v16);

      return v34;
    }

LABEL_23:
    v29 = v20;
    v30 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_10000C858(0, *(v16 + 2) + 1, 1, v16);
    }

    v32 = *(v16 + 2);
    v31 = *(v16 + 3);
    if (v32 >= v31 >> 1)
    {
      v16 = sub_10000C858((v31 > 1), v32 + 1, 1, v16);
    }

    *(v16 + 2) = v32 + 1;
    v33 = &v16[32 * v32];
    *(v33 + 4) = v29;
    *(v33 + 5) = v30;
    v33[48] = 0;
    *(v33 + 7) = &_swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v3 = [v2 containmentTextTemplate];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v5 = [objc_allocWithZone(GEOComposedString) initWithGeoFormattedString:v4];
  v6 = [v5 stringResultWithOptions:0];
  v7 = [v6 styleReplacementResults];
  sub_1000058B4(0, &qword_10001D0C8, GEOComposedStringStyleReplacementResult_ptr);
  v8 = sub_100010194();

  if (v8 >> 62)
  {
    if (sub_100010244())
    {
      goto LABEL_6;
    }

LABEL_19:

    v10 = [v6 string];
    goto LABEL_20;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((v8 & 0xC000000000000001) != 0)
  {
    sub_100010224();
    swift_unknownObjectRelease();

LABEL_8:
    v10 = [v0 _firstLocalizedCategoryName];
    if (!v10)
    {

      swift_unknownObjectRelease();
      goto LABEL_16;
    }

LABEL_20:
    v22 = v10;
    v23 = sub_100010144();
    v25 = v24;

    v16 = sub_10000C858(0, 1, 1, &_swiftEmptyArrayStorage);
    v27 = *(v16 + 2);
    v26 = *(v16 + 3);
    if (v27 >= v26 >> 1)
    {
      v16 = sub_10000C858((v26 > 1), v27 + 1, 1, v16);
    }

    swift_unknownObjectRelease();
    *(v16 + 2) = v27 + 1;
    v28 = &v16[32 * v27];
    *(v28 + 4) = v23;
    *(v28 + 5) = v25;
    v28[48] = 0;
    *(v28 + 7) = &_swiftEmptyArrayStorage;
    v20 = sub_10000A000();
    if (!v21)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v9)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

id sub_10000A524()
{
  v1 = v0;
  if (![v0 _hasBusinessHours])
  {
    goto LABEL_8;
  }

  v2 = [v0 searchResultsHoursWithConciseStyle:1 openAt:0];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v2 localizedOperatingHours];
  if (!v4)
  {

LABEL_8:
    v9 = &_swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_100010144();
  v8 = v7;

  v9 = sub_10000C858(0, 1, 1, &_swiftEmptyArrayStorage);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_10000C858((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[32 * v11];
  *(v12 + 4) = v6;
  *(v12 + 5) = v8;
  v12[48] = 0;
  *(v12 + 7) = &_swiftEmptyArrayStorage;
LABEL_9:
  result = [v1 _geoMapItem];
  if (result)
  {
    v14 = [result _hasAppleRatings];
    swift_unknownObjectRelease();
    if (v14)
    {
      v15 = objc_opt_self();
      v16 = [v15 ratingSymbolName];
      sub_100010144();

      sub_1000100D4();
      v17 = sub_100010064();
      v19 = v18;
      LOBYTE(v16) = v20;
      v21 = sub_100010034();
      v23 = v22;
      v25 = v24;
      sub_10000CDC4(v17, v19, v16 & 1);

      v26 = [v15 compactUserRecommendedRatingSummaryStringForMapItem:v1];
      sub_100010144();

      v27 = sub_100010034();
      v29 = v28;
      v31 = v30;
      v33 = v32;

      sub_10000CDC4(v21, v23, v25 & 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10000C858(0, *(v9 + 2) + 1, 1, v9);
      }

      v35 = *(v9 + 2);
      v34 = *(v9 + 3);
      if (v35 >= v34 >> 1)
      {
        v9 = sub_10000C858((v34 > 1), v35 + 1, 1, v9);
      }

      *(v9 + 2) = v35 + 1;
      v36 = &v9[32 * v35];
      *(v36 + 4) = v27;
      *(v36 + 5) = v29;
      v36[48] = v31 & 1;
      *(v36 + 7) = v33;
    }

    v37 = sub_10000D204(v9);

    return v37;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10000A85C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 _attribution];
  if (!v3)
  {
LABEL_10:
    v39 = sub_100003538(&qword_10001D038, &qword_100011750);
    v40 = *(*(v39 - 8) + 56);

    return v40(a1, 1, 1, v39);
  }

  v4 = v3;
  if (![v4 requiresAttributionInDeveloperPlaceCard] || (v5 = objc_msgSend(v4, "attributionURLs")) == 0 || (v6 = v5, v7 = sub_100010194(), v6, v8 = sub_10000AE64(v7), , !v8))
  {

    goto LABEL_10;
  }

  v53 = v8;
  v54 = a1;
  v9 = [objc_opt_self() developerPlaceCardCompactAttributionFormatString];
  sub_100010144();
  sub_100003538(&qword_10001D0A8, &qword_100011780);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100011320;
  result = [v4 providerName];
  if (result)
  {
    v12 = result;

    v13 = sub_100010144();
    v15 = v14;

    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_10000CF44();
    *(v10 + 32) = v13;
    *(v10 + 40) = v15;
    sub_100010154();

    v16 = sub_100010034();
    v18 = v17;
    v20 = v19;

    sub_1000100D4();
    v21 = sub_100010064();
    v23 = v22;
    v25 = v24;
    v50 = sub_100010034();
    v51 = v26;
    v49 = v27;
    v52 = v28;
    sub_10000CDC4(v21, v23, v25 & 1);

    sub_10000CDC4(v16, v18, v20 & 1);

    v29 = v53;
    isa = sub_100010184().super.isa;
    v31 = [objc_opt_self() punchoutOptionsForURLStrings:isa withAttribution:v4];

    if (v31)
    {
      if ([v31 strategy] == 1)
      {

        v32 = swift_allocObject();
        v53 = v48;
        *(v32 + 16) = v31;
        __chkstk_darwin(v32);
        v33 = v50;
        v34 = v51;
        v35 = v49 & 1;
        v36 = v31;
        sub_100003538(&qword_10001D060, &qword_100011768);
        sub_10000CB38();
        v37 = v54;
        sub_1000100E4();

        sub_10000CDC4(v33, v34, v35);

        v38 = sub_100003538(&qword_10001D038, &qword_100011750);
        return (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
      }
    }

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    v48[1] = v48;
    *(v42 + 16) = v41;
    *(v42 + 24) = v29;
    __chkstk_darwin(v42);
    v43 = v50;
    v44 = v51;
    v45 = v49 & 1;

    sub_100003538(&qword_10001D060, &qword_100011768);
    sub_10000CB38();
    v46 = v54;
    sub_1000100E4();

    sub_10000CDC4(v43, v44, v45);

    v47 = sub_100003538(&qword_10001D038, &qword_100011750);
    return (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t *sub_10000AE64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  sub_10000D078(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10000D098(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10000D078((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_10000AF78(void *a1)
{
  v2 = sub_10000FC44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = [a1 urlToOpen];
    sub_10000FC34();

    sub_10000FC24(v9);
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    v12 = [a1 appBundleIdentifier];
    if (!v12)
    {
      sub_100010144();
      v12 = sub_100010134();
    }

    [v7 openURL:v11 bundleIdentifier:v12 completionHandler:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_10000B0FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong _attribution];

    if (v4)
    {
      v5 = objc_opt_self();
      isa = sub_100010184().super.isa;
      [v5 launchAttributionURLs:isa withAttribution:v4 completionHandler:0];
    }
  }
}

uint64_t sub_10000B1BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v122 = a2;
  v121 = sub_100003538(&qword_10001D018, &qword_100011730);
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v109 - v3;
  v130 = sub_100003538(&qword_10001D020, &qword_100011738);
  v129 = *(v130 - 8);
  v4 = __chkstk_darwin(v130);
  v128 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v127 = &v109 - v6;
  v118 = sub_10000FDC4();
  v137 = *(v118 - 8);
  __chkstk_darwin(v118);
  v136 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_100003538(&qword_10001D028, &qword_100011740);
  v117 = *(v132 - 8);
  __chkstk_darwin(v132);
  v110 = &v109 - v8;
  v9 = sub_100003538(&qword_10001D030, &qword_100011748);
  __chkstk_darwin(v9 - 8);
  v111 = &v109 - v10;
  v114 = sub_100003538(&qword_10001D038, &qword_100011750);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v109 = &v109 - v11;
  v12 = sub_100003538(&qword_10001D040, &qword_100011758);
  v13 = __chkstk_darwin(v12 - 8);
  v126 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v125 = &v109 - v15;
  v16 = [a1 name];
  if (v16)
  {
    v17 = v16;
    v18 = sub_100010144();
    v134 = a1;
    v20 = v19;

    v143 = v18;
    v144 = v20;
    sub_10000CEF0();
    v21 = sub_100010054();
    v23 = v22;
    LOBYTE(v20) = v24;
    sub_10000FFD4();
    v25 = sub_100010044();
    v27 = v26;
    v29 = v28;

    sub_10000CDC4(v21, v23, v20 & 1);

    sub_10000FFF4();
    v30 = sub_100010014();
    v32 = v31;
    v34 = v33;
    sub_10000CDC4(v25, v27, v29 & 1);

    v35 = [objc_opt_self() labelColor];
    v143 = sub_1000100C4();
    v36 = sub_100010024();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = v32;
    a1 = v134;
    sub_10000CDC4(v30, v43, v34 & 1);

    v138 = v36;
    v139 = v38;
    v133 = v40 & 1;
    sub_10000CD14(v36, v38, v40 & 1);
    v135 = v42;
  }

  else
  {
    v138 = 0;
    v139 = 0;
    v133 = 0;
    v135 = 0;
  }

  v44 = sub_10000A120();
  v134 = v47;
  if (v47)
  {
    v48 = v44;
    v49 = v45;
    v50 = v46;
    v51 = [objc_opt_self() labelColor];
    v52 = sub_1000100C4();
    v116 = v50 & 1;
    v124 = v48;
    v115 = v49;
    sub_10000CD14(v48, v49, v50 & 1);

    v112 = v52;
  }

  else
  {
    v124 = 0;
    v115 = 0;
    v116 = 0;
    v112 = 0;
  }

  v54 = v136;
  v53 = v137;
  v55 = v132;
  v56 = sub_10000A524();
  v59 = v118;
  v123 = v60;
  if (v60)
  {
    v61 = v56;
    v62 = v57;
    v63 = v58;
    v64 = [objc_opt_self() labelColor];
    v65 = sub_1000100C4();
    v136 = (v63 & 1);
    sub_10000CD14(v61, v62, v63 & 1);

    v137 = v65;
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v136 = 0;
    v137 = 0;
  }

  v131 = v62;
  v132 = v61;
  v66 = v111;
  sub_10000A85C(v111);
  v67 = v113;
  v68 = v114;
  if ((*(v113 + 48))(v66, 1, v114) == 1)
  {
    sub_10000DA50(v66, &qword_10001D030, &qword_100011748);
    v69 = 1;
    v70 = v125;
  }

  else
  {
    v71 = v109;
    (*(v67 + 32))(v109, v66, v68);
    sub_10000FDB4();
    sub_10000899C(&qword_10001D098, &qword_10001D038, &qword_100011750, &protocol conformance descriptor for Button<A>);
    v72 = v67;
    sub_10000CC18(&qword_10001D088, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v73 = v110;
    sub_1000100A4();
    (*(v53 + 8))(v54, v59);
    v74 = [objc_opt_self() secondaryLabelColor];
    v75 = sub_1000100C4();
    (*(v72 + 8))(v71, v68);
    *(v73 + *(v55 + 36)) = v75;
    v70 = v125;
    sub_10000CE80(v73, v125);
    v69 = 0;
  }

  (*(v117 + 56))(v70, v69, 1, v55);
  sub_1000100F4();
  sub_10000FD84();
  v117 = v143;
  v114 = v145;
  v113 = v147;
  v111 = v148;
  v142 = 1;
  v141 = v144;
  v140 = v146;
  *(swift_allocObject() + 16) = a1;
  v76 = a1;
  sub_100003538(&qword_10001D048, &qword_100011760);
  sub_10000CA80();
  v77 = v119;
  sub_1000100E4();
  sub_10000FDB4();
  sub_10000899C(&qword_10001D080, &qword_10001D018, &qword_100011730, &protocol conformance descriptor for Button<A>);
  sub_10000CC18(&qword_10001D088, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v78 = v127;
  v79 = v70;
  v80 = v121;
  sub_1000100A4();
  (*(v53 + 8))(v54, v59);
  (*(v120 + 8))(v77, v80);
  v81 = v126;
  sub_10000CC60(v79, v126);
  LODWORD(v119) = v142;
  LODWORD(v120) = v141;
  LODWORD(v121) = v140;
  v82 = *(v129 + 16);
  v83 = v128;
  v84 = v130;
  v82(v128, v78, v130);
  v85 = v122;
  v86 = v139;
  *v122 = v138;
  v85[1] = v86;
  v87 = v135;
  v85[2] = v133;
  v85[3] = v87;
  v88 = v115;
  v85[4] = v124;
  v85[5] = v88;
  v89 = v116;
  v90 = v134;
  v85[6] = v116;
  v85[7] = v90;
  v91 = v112;
  v93 = v131;
  v92 = v132;
  v85[8] = v112;
  v85[9] = v92;
  v94 = v136;
  v85[10] = v93;
  v85[11] = v94;
  v95 = v137;
  v85[12] = v123;
  v85[13] = v95;
  v96 = sub_100003538(&qword_10001D090, &qword_100011778);
  sub_10000CC60(v81, v85 + v96[20]);
  v97 = v85 + v96[24];
  *v97 = 0;
  v97[8] = v119;
  *(v97 + 2) = v117;
  v97[24] = v120;
  *(v97 + 4) = v114;
  v97[40] = v121;
  v98 = v111;
  *(v97 + 6) = v113;
  *(v97 + 7) = v98;
  v82(v85 + v96[28], v83, v84);
  sub_10000CCD0(v138, v139, v133, v135);
  v99 = v124;
  v100 = v134;
  sub_10000CD24(v124, v88, v89, v134, v91);
  v102 = v131;
  v101 = v132;
  LOBYTE(v85) = v136;
  v103 = v137;
  v104 = v123;
  sub_10000CD24(v132, v131, v136, v123, v137);
  sub_10000CD74(v101, v102, v85, v104, v103);
  sub_10000CD74(v99, v88, v89, v100, v91);
  LOBYTE(v103) = v133;
  v105 = v135;
  sub_10000CDD4(v138, v139, v133, v135);
  v106 = *(v129 + 8);
  v107 = v130;
  v106(v127, v130);
  sub_10000CE18(v125);
  v106(v128, v107);
  sub_10000CE18(v126);
  sub_10000CD74(v132, v131, v136, v104, v137);
  sub_10000CD74(v99, v88, v89, v134, v91);
  return sub_10000CDD4(v138, v139, v103, v105);
}

uint64_t sub_10000BF14@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() developerPlaceCardOpenInMapsText];
  v3 = sub_100010144();
  v5 = v4;

  v6 = [objc_opt_self() systemBlueColor];
  result = sub_1000100C4();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10000BFA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_10000FE34();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_100003538(&qword_10001D000, &qword_100011718);
  sub_10000B1BC(v3, (a1 + *(v4 + 44)));
  LOBYTE(v3) = sub_10000FFC4();
  sub_10000FD34();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1 + *(sub_100003538(&qword_10001D008, &qword_100011720) + 36);
  *v13 = v3;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  LOBYTE(v3) = sub_10000FFA4();
  sub_10000FD34();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = sub_100003538(&qword_10001D010, &qword_100011728);
  v23 = a1 + *(result + 36);
  *v23 = v3;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_10000C0CC(uint64_t a1)
{
  v2 = sub_100003538(&qword_10001D0F8, &qword_100011820);
  __chkstk_darwin(v2);
  v4 = &v12 - v3;
  KeyPath = swift_getKeyPath();
  v6 = sub_100003538(&qword_10001D100, &qword_100011858);
  (*(*(v6 - 8) + 16))(v4, a1, v6);
  v7 = &v4[*(sub_100003538(&qword_10001D108, &qword_100011860) + 36)];
  *v7 = KeyPath;
  v7[8] = 0;
  v8 = sub_100010004();
  v9 = swift_getKeyPath();
  v10 = &v4[*(v2 + 36)];
  *v10 = v9;
  v10[1] = v8;
  sub_10000FFE4();
  sub_10000D8B4();
  sub_100010094();
  return sub_10000DA50(v4, &qword_10001D0F8, &qword_100011820);
}

uint64_t sub_10000C248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000D45C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000C2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000D45C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000C310(uint64_t a1)
{
  sub_10000D45C();
  sub_10000FED4();
  __break(1u);
}

void sub_10000C384()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 24);
  *(v1 + 40) = v2;
}

void sub_10000C398()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 28);
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 28) = v2;
}

void sub_10000C3BC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100008DDC(v1);
}

unint64_t sub_10000C418()
{
  result = qword_10001CF90;
  if (!qword_10001CF90)
  {
    sub_1000035E4(&qword_10001CF80, &qword_100011520);
    sub_10000C4D0();
    sub_10000899C(&qword_10001CFE0, &qword_10001CFE8, &qword_100011548, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CF90);
  }

  return result;
}

unint64_t sub_10000C4D0()
{
  result = qword_10001CF98;
  if (!qword_10001CF98)
  {
    sub_1000035E4(&qword_10001CF88, &qword_100011528);
    sub_10000C55C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CF98);
  }

  return result;
}

unint64_t sub_10000C55C()
{
  result = qword_10001CFA0;
  if (!qword_10001CFA0)
  {
    sub_1000035E4(&qword_10001CFA8, &qword_100011530);
    sub_10000C5E8();
    sub_10000C6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFA0);
  }

  return result;
}

unint64_t sub_10000C5E8()
{
  result = qword_10001CFB0;
  if (!qword_10001CFB0)
  {
    sub_1000035E4(&qword_10001CFB8, &qword_100011538);
    sub_10000C6A0();
    sub_10000899C(&qword_10001CFC8, &qword_10001CFD0, &qword_100011540, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFB0);
  }

  return result;
}

unint64_t sub_10000C6A0()
{
  result = qword_10001CFC0;
  if (!qword_10001CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFC0);
  }

  return result;
}

unint64_t sub_10000C6F4()
{
  result = qword_10001CFD8;
  if (!qword_10001CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFD8);
  }

  return result;
}

uint64_t sub_10000C770(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003538(&qword_10001CF80, &qword_100011520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C7E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003538(&qword_10001CF80, &qword_100011520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_10000C858(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003538(&qword_10001D0C0, &unk_100011790);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_10000C988()
{
  result = qword_10001CFF0;
  if (!qword_10001CFF0)
  {
    sub_1000035E4(&qword_10001CFF8, &qword_1000115E0);
    sub_10000C418();
    sub_10000C4D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFF0);
  }

  return result;
}

uint64_t sub_10000CA34()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000CA80()
{
  result = qword_10001D050;
  if (!qword_10001D050)
  {
    sub_1000035E4(&qword_10001D048, &qword_100011760);
    sub_10000CB38();
    sub_10000899C(&qword_10001D070, &qword_10001D078, &qword_100011770, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D050);
  }

  return result;
}

unint64_t sub_10000CB38()
{
  result = qword_10001D058;
  if (!qword_10001D058)
  {
    sub_1000035E4(&qword_10001D060, &qword_100011768);
    sub_10000CBC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D058);
  }

  return result;
}

unint64_t sub_10000CBC4()
{
  result = qword_10001D068;
  if (!qword_10001D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D068);
  }

  return result;
}

uint64_t sub_10000CC18(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000CC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003538(&qword_10001D040, &qword_100011758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CCD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000CD14(result, a2, a3 & 1);
  }

  return result;
}

void sub_10000CD14(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_10000CD24(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_10000CD14(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10000CD74(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_10000CDC4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10000CDC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000CDD4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000CDC4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10000CE18(uint64_t a1)
{
  v2 = sub_100003538(&qword_10001D040, &qword_100011758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000CE80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003538(&qword_10001D028, &qword_100011740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000CEF0()
{
  result = qword_10001D0A0;
  if (!qword_10001D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D0A0);
  }

  return result;
}

unint64_t sub_10000CF44()
{
  result = qword_10001D0B0;
  if (!qword_10001D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D0B0);
  }

  return result;
}

uint64_t sub_10000CF98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CFD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D024@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_10000CD14(v2, v3, v4);
}

char *sub_10000D078(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D0F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10000D098(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_10000D0F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003538(&qword_10001D0B8, &qword_100011788);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000D204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_10000CD14(v3, v4, v5);

  sub_10000CD14(v3, v4, v5);

  v26 = v3;
  v25 = v5;
  v6 = v1 - 1;
  if (v1 != 1)
  {
    v7 = a1 + 88;
    v8 = v4;
    v9 = v25;
    v10 = v3;
    do
    {
      v29 = v9;
      v32 = v6;
      v11 = *(v7 - 8);
      v13 = *(v7 - 24);
      v12 = *(v7 - 16);
      v30 = v13;
      v31 = v12;
      v14 = objc_opt_self();
      sub_10000CD14(v13, v12, v11);

      v15 = [v14 interpunctDelimeter];
      sub_100010144();

      v16 = sub_100010034();
      v18 = v17;
      v20 = v19;

      v21 = sub_100010034();
      v27 = v22;
      v28 = v21;
      LOBYTE(v12) = v23;
      sub_10000CDC4(v16, v18, v20 & 1);

      sub_10000CDC4(v10, v8, v29 & 1);

      v3 = v28;
      sub_10000CDC4(v30, v31, v11);

      v7 += 32;
      v9 = v12;
      v8 = v27;
      v10 = v28;
      v6 = v32 - 1;
    }

    while (v32 != 1);
  }

  sub_10000CDC4(v26, v4, v25);

  return v3;
}

unint64_t sub_10000D45C()
{
  result = qword_10001D0D0;
  if (!qword_10001D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D0D0);
  }

  return result;
}

id sub_10000D4B0()
{
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000FD24();
  sub_10000362C(v0, qword_10001DFE8);
  v1 = sub_10000FD04();
  v2 = sub_1000101A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "extn compact representable make loading view", v3, 2u);
  }

  v4 = objc_allocWithZone(MKCompactDeveloperPlaceCardLoadingView);

  return [v4 init];
}

void sub_10000D5AC()
{
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000FD24();
  sub_10000362C(v0, qword_10001DFE8);
  oslog = sub_10000FD04();
  v1 = sub_1000101A4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "extn compact representable update loading view", v2, 2u);
  }
}

unint64_t sub_10000D6A8()
{
  result = qword_10001D0D8;
  if (!qword_10001D0D8)
  {
    sub_1000035E4(&qword_10001D010, &qword_100011728);
    sub_10000D734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D0D8);
  }

  return result;
}

unint64_t sub_10000D734()
{
  result = qword_10001D0E0;
  if (!qword_10001D0E0)
  {
    sub_1000035E4(&qword_10001D008, &qword_100011720);
    sub_10000899C(&qword_10001D0E8, &qword_10001D0F0, &qword_1000117C8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D0E0);
  }

  return result;
}

uint64_t sub_10000D808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000FDF4();
  *a1 = result;
  return result;
}

uint64_t sub_10000D85C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000FE14();
  *a1 = result;
  return result;
}

unint64_t sub_10000D8B4()
{
  result = qword_10001D110;
  if (!qword_10001D110)
  {
    sub_1000035E4(&qword_10001D0F8, &qword_100011820);
    sub_10000D96C();
    sub_10000899C(&qword_10001D138, &unk_10001D140, &unk_1000118A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D110);
  }

  return result;
}

unint64_t sub_10000D96C()
{
  result = qword_10001D118;
  if (!qword_10001D118)
  {
    sub_1000035E4(&qword_10001D108, &qword_100011860);
    sub_10000899C(&qword_10001D120, &qword_10001D100, &qword_100011858, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_10000899C(&qword_10001D128, &qword_10001D130, &qword_100011898, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D118);
  }

  return result;
}

uint64_t sub_10000DA50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003538(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000DAB0()
{
  sub_1000035E4(&qword_10001D0F8, &qword_100011820);
  sub_10000D8B4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000DBC0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000DC10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000F1E4(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel, &unk_1000113F8);
  sub_10000FC64();

  v5 = *(v3 + 40);
  *a2 = *(v3 + 32);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_10000DCF4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  swift_retain_n();

  return PrimitiveAppExtensionScene.init<A>(id:content:onConnection:)(v1, v2, sub_10000F828, v0, sub_10000F830, v0, v3, v4);
}

uint64_t sub_10000DDBC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(*a1 + 80);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v14 - v9;
  (*(v8 + 32))();
  v11 = *(v4 + 16);
  v11(v10, v7, v3);
  v12 = *(v4 + 8);
  v12(v7, v3);
  v11(a2, v10, v3);
  return (v12)(v10, v3);
}

uint64_t sub_10000DF0C(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___MKRemoteUIAccessoryPlaceCardExtensionInterface];
  [a1 setExportedInterface:v4];

  [a1 setExportedObject:a2];
  if (qword_10001C7C0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000FD24();
  sub_10000362C(v5, qword_10001DFE8);
  v6 = sub_10000FD04();
  v7 = sub_1000101B4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "extn compact-accessory scene connection resume", v8, 2u);
  }

  [a1 resume];
  return 1;
}

uint64_t sub_10000E05C(void *a1, int a2, uint64_t a3)
{
  v21 = a3;
  v20 = a2;
  v5 = *v3;
  v6 = sub_100010104();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_100010124();
  v10 = *(v22 - 8);
  __chkstk_darwin(v22);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100003458();
  v13 = sub_1000101D4();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = *(v5 + 80);
  *(v15 + 24) = *(v5 + 88);
  *(v15 + 32) = v14;
  *(v15 + 40) = a1;
  *(v15 + 48) = v20;
  *(v15 + 56) = v21;
  aBlock[4] = sub_10000F26C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_100019640;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000F1E4(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v16);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v22);
}

void sub_10000E384(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v9 = sub_10000FD24();
    sub_10000362C(v9, qword_10001DFE8);
    v10 = a2;
    v11 = sub_10000FD04();
    v12 = sub_1000101A4();

    if (os_log_type_enabled(v11, v12))
    {
      v30 = a3;
      v13 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v13 = 136380675;
      if (a2)
      {
        v28 = a4;
        v14 = v10;
        v15 = [v14 name];
        if (v15)
        {
          v16 = v15;
          v17 = sub_100010144();
          v19 = v18;
        }

        else
        {

          v17 = 0;
          v19 = 0xE000000000000000;
        }

        a4 = v28;
      }

      else
      {
        v19 = 0xE300000000000000;
        v17 = 7104878;
      }

      v24 = sub_10000F280(v17, v19, &v31);

      *(v13 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v11, v12, "extn compact-accessory scene configure with item: %{private}s", v13, 0xCu);
      sub_1000037C4(v29);

      a3 = v30;
    }

    else
    {
    }

    v25 = v10;

    sub_100008DDC(a2);

    LOBYTE(v31) = 0;
    sub_1000090CC(a3);

    v26 = *(v8 + 48);
    if ((*(v26 + 40) & 1) != 0 || *(v26 + 32) != a4)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v31 = v26;
      sub_10000F1E4(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel, &unk_1000113F8);

      sub_10000FC54();
    }

    else
    {

      *(v26 + 32) = a4;
      *(v26 + 40) = 0;
    }
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v20 = sub_10000FD24();
    sub_10000362C(v20, qword_10001DFE8);
    v21 = sub_10000FD04();
    v22 = sub_1000101C4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "extn compact-accessory scene configure without self", v23, 2u);
    }
  }
}

uint64_t sub_10000E7A8(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v8 = a3;

  sub_10000E05C(a3, a4, a5);
}

void sub_10000E820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v7 = sub_10000FD24();
    sub_10000362C(v7, qword_10001DFE8);
    v8 = sub_10000FD04();
    v9 = sub_1000101B4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "extn compact-accessory fetchPreferredContentSize", v10, 2u);
    }

    v11 = *(v6 + 48);
    v12 = *(v11 + 48);
    v13 = *(v11 + 56);
    *(v11 + 48) = a2;
    *(v11 + 56) = a3;

    sub_100009884(v12, v13);
    sub_100009574();
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v14 = sub_10000FD24();
    sub_10000362C(v14, qword_10001DFE8);
    v15 = sub_10000FD04();
    v16 = sub_1000101C4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "extn compact-accessory fetchPreferredContentSize without self", v17, 2u);
    }
  }
}

uint64_t sub_10000EA24(uint64_t a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_10000F880(sub_10000F870, v4);
}

uint64_t sub_10000EAB4(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_100010104();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100010124();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003458();
  v11 = sub_1000101D4();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = *(v3 + 80);
  v13[3] = *(v3 + 88);
  v13[4] = v12;
  v13[5] = a1;
  aBlock[4] = sub_10000F168;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_1000195F0;
  v14 = _Block_copy(aBlock);

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000F1E4(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

void sub_10000EDBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 48);
    if ((*(v4 + 40) & 1) != 0 || *(v4 + 32) != a2)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10000F1E4(&qword_10001D230, type metadata accessor for CompactPlaceCardViewModel, &unk_1000113F8);

      sub_10000FC54();
    }

    else
    {

      *(v4 + 32) = a2;
      *(v4 + 40) = 0;
    }
  }

  else
  {
    if (qword_10001C7C0 != -1)
    {
      swift_once();
    }

    v6 = sub_10000FD24();
    sub_10000362C(v6, qword_10001DFE8);
    v7 = sub_10000FD04();
    v8 = sub_1000101C4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "extn compact-accessory scene update interface style without self", v9, 2u);
    }
  }
}

uint64_t sub_10000EFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_10000EAB4(a3);
}

uint64_t sub_10000F0BC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000F0F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F130()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_10000F174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10000F1E4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F22C()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10000F280(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000F34C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000D098(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000037C4(v11);
  return v7;
}

unint64_t sub_10000F34C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000F458(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_100010234();
    a6 = v11;
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

char *sub_10000F458(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000F4A4(a1, a2);
  sub_10000F5D4(&off_100018BE0);
  return v3;
}

char *sub_10000F4A4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000F6C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100010234();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100010174();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000F6C0(v10, 0);
        result = sub_100010214();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000F5D4(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000F734(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000F6C0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100003538(&qword_10001D238, qword_1000119C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000F734(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003538(&qword_10001D238, qword_1000119C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_10000F838()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F880(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_100010104();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100010124();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003458();
  v12 = sub_1000101D4();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = *(v5 + 80);
  v14[3] = *(v5 + 88);
  v14[4] = v13;
  v14[5] = a1;
  v14[6] = a2;
  aBlock[4] = sub_10000FBDC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DBC0;
  aBlock[3] = &unk_1000196B8;
  v15 = _Block_copy(aBlock);

  sub_100010114();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000F1E4(&qword_10001C868, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003538(&qword_10001C870, &qword_1000110F0);
  sub_100003580();
  sub_100010204();
  sub_1000101E4();
  _Block_release(v15);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_10000FB9C()
{

  return _swift_deallocObject(v0, 56, 7);
}