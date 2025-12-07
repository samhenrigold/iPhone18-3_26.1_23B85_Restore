void sub_10004F958(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10004FA34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1000EBE64();
  [a3 setNaturalLanguageQuery:v4];
}

uint64_t sub_10004FAB0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10004FB08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10004FB20()
{
  result = qword_1001315F0;
  if (!qword_1001315F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001315F0);
  }

  return result;
}

unint64_t sub_10004FB74()
{
  result = qword_1001315F8;
  if (!qword_1001315F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001315F8);
  }

  return result;
}

uint64_t sub_10004FBB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004FC28(uint64_t a1)
{
  v2 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004FC90(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10004FCB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004FD08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10004FD64(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_10004FDBC()
{
  v0 = sub_1000E9F64();
  sub_10004B338(v0, qword_100145BB0);
  sub_100008CB8(v0, qword_100145BB0);
  return sub_1000E9F54();
}

uint64_t sub_10004FEE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1000E9F64();
  sub_10004B338(v5, a2);
  sub_100008CB8(v5, a2);
  return sub_1000E9F54();
}

double sub_10004FF7C()
{
  v1 = sub_1000E94B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008DA8((v0 + 16), *(v0 + 40));
  sub_1000E9804();
  sub_1000E9494();
  v6 = v5;
  (*(v2 + 8))(v4, v1);
  return v6;
}

double sub_100050078@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_100051C1C((v1 + 10), &v5, &qword_100131600, &qword_1000F2330);
  if (*(&v6 + 1) == 1)
  {
    sub_10000D3A8(&v5, &qword_100131600, &qword_1000F2330);
    sub_100050158(v1, a1);
    sub_100051C1C(a1, &v5, &qword_1001316D8, &qword_1000F2428);
    swift_beginAccess();
    sub_100051C84(&v5, (v1 + 10));
    swift_endAccess();
  }

  else
  {
    result = *&v5;
    v4 = v6;
    *a1 = v5;
    *(a1 + 16) = v4;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_100050158@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000E9F64();
  v5 = __chkstk_darwin(v4);
  (a1[15])(v9, v5);
  sub_1000E9304();
  sub_1000E92F4();
  sub_1000E9274();
  sub_1000E92E4();

  sub_100008DA8(v9, v9[3]);
  sub_1000E94F4();
  if (v8 == 1)
  {
    sub_1000E9274();
    sub_100051DE4(&qword_1001316E0, v6, type metadata accessor for LocalSearchRequestManager, &protocol conformance descriptor for LocalSearchRequestManager);
    sub_1000E9314();
  }

  sub_100051D3C(v9, a2);
  return sub_100009068(v9);
}

BOOL sub_1000504B8()
{
  v0 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_1000E8604();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  sub_1000E99D4();
  if (sub_100005B30(v2, 1, v3) == 1)
  {
    sub_10000D3A8(v2, &qword_10012F048, &qword_1000EEF30);
    return 1;
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    v11 = sub_10004FF7C();
    sub_1000E8AE4();
    sub_1000E8544();
    v13 = v12;
    v14 = *(v4 + 8);
    v14(v7, v3);
    v14(v9, v3);
    return v11 <= v13;
  }
}

uint64_t LocalSearchRequestManager.__allocating_init(service:store:appConfigurationManager:queue:)(uint64_t a1)
{
  sub_100051E6C(a1);
  v1 = sub_100051E48();

  return sub_100051644(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t LocalSearchRequestManager.init(service:store:appConfigurationManager:queue:)(uint64_t a1)
{
  sub_100051E6C(a1);
  v1 = sub_100051E48();

  return sub_1000516D4(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t LocalSearchRequestManager.performLocalSearch(with:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  sub_1000E9A84();

  v6 = sub_1000E9CC4();

  return v6;
}

uint64_t sub_100050868(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  __chkstk_darwin(v8 - 8);
  v10 = v25 - v9;
  v11 = sub_1000E9A84();
  v28 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v27 = v25 - v15;
  sub_1000E9304();
  sub_1000E92F4();
  sub_1000E9284();
  sub_1000E92E4();

  if (v32[0])
  {
    goto LABEL_9;
  }

  v26 = v11;
  v29 = a2;
  sub_100050078(v32);
  if (!v33)
  {
    sub_10000D3A8(v32, &qword_1001316D8, &qword_1000F2428);
    sub_1000028A0(v10, 1, 1, v26);
    goto LABEL_8;
  }

  sub_100051D3C(v32, v30);
  sub_10000D3A8(v32, &qword_1001316D8, &qword_1000F2428);
  v25[1] = v7;
  sub_100008DA8(v30, v31);
  sub_1000E94D4();
  sub_100009068(v30);
  v16 = v26;
  if (sub_100005B30(v10, 1, v26) == 1)
  {
LABEL_8:
    sub_10000D3A8(v10, &qword_100130440, &qword_1000F0BE0);
    a2 = v29;
    goto LABEL_9;
  }

  v17 = v27;
  v18 = v28;
  (*(v28 + 32))(v27, v10, v16);
  if (!sub_1000504B8())
  {
    (*(v18 + 16))(v14, v17, v16);
    sub_100002A10(&qword_100131548, &qword_1000F21F0);
    swift_allocObject();
    v23 = sub_1000E9C94();
    (*(v18 + 8))(v17, v16);
    return v23;
  }

  v19 = sub_100050078(v32);
  if (v33)
  {
    sub_100051D3C(v32, v30);
    sub_10000D3A8(v32, &qword_1001316D8, &qword_1000F2428);
    sub_100008DA8(v30, v31);
    sub_1000E94E4();
    (*(v18 + 8))(v17, v16);
    sub_100009068(v30);
  }

  else
  {
    (*(v18 + 8))(v17, v16, v19);
    sub_10000D3A8(v32, &qword_1001316D8, &qword_1000F2428);
  }

  a2 = v29;
LABEL_9:
  v20 = a1[8];
  ObjectType = swift_getObjectType();
  (*(v20 + 8))(a2, a3, ObjectType, v20);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;

  v23 = sub_1000E9C74();

  return v23;
}

uint64_t LocalSearchRequestManager.performLocalSearch(with:calloutTitle:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v7[5] = v3;
  sub_1000E9A84();

  v8 = a1;

  v9 = sub_1000E9CC4();

  return v9;
}

uint64_t sub_100050E44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v32 = *a5;
  v9 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_1000E9A84();
  v30 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v29 = &v29 - v16;
  sub_1000E9304();
  sub_1000E92F4();
  sub_1000E9284();
  sub_1000E92E4();

  if (v35[0])
  {
    goto LABEL_11;
  }

  v31 = a1;
  sub_100050078(v35);
  if (!v36)
  {
    sub_10000D3A8(v35, &qword_1001316D8, &qword_1000F2428);
    sub_1000028A0(v11, 1, 1, v12);
    goto LABEL_8;
  }

  sub_100051D3C(v35, v33);
  sub_10000D3A8(v35, &qword_1001316D8, &qword_1000F2428);
  sub_100008DA8(v33, v34);
  v17 = v12;
  sub_1000E94D4();
  sub_100009068(v33);
  if (sub_100005B30(v11, 1, v12) == 1)
  {
LABEL_8:
    v21 = &qword_100130440;
    v22 = &qword_1000F0BE0;
    v23 = v11;
LABEL_9:
    sub_10000D3A8(v23, v21, v22);
    goto LABEL_10;
  }

  v19 = v29;
  v18 = v30;
  (*(v30 + 32))(v29, v11, v17);
  if (!sub_1000504B8())
  {
    (*(v18 + 16))(v15, v19, v17);
    sub_100002A10(&qword_100131548, &qword_1000F21F0);
    swift_allocObject();
    v27 = sub_1000E9C94();
    (*(v18 + 8))(v19, v17);
    return v27;
  }

  v20 = sub_100050078(v35);
  if (!v36)
  {
    (*(v18 + 8))(v19, v17, v20);
    v21 = &qword_1001316D8;
    v22 = &qword_1000F2428;
    v23 = v35;
    goto LABEL_9;
  }

  sub_100051D3C(v35, v33);
  sub_10000D3A8(v35, &qword_1001316D8, &qword_1000F2428);
  sub_100008DA8(v33, v34);
  sub_1000E94E4();
  (*(v18 + 8))(v19, v17);
  sub_100009068(v33);
LABEL_10:
  a1 = v31;
LABEL_11:
  v24 = a3[8];
  ObjectType = swift_getObjectType();
  (*(v24 + 16))(a4, a1, a2, ObjectType, v24);
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;

  v27 = sub_1000E9C74();

  return v27;
}

uint64_t sub_1000512C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1000E9A84();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050078(v12);
  if (v13)
  {
    sub_100051D3C(v12, v11);
    sub_10000D3A8(v12, &qword_1001316D8, &qword_1000F2428);
    v14 = v4;
    sub_100008DA8(v11, v11[3]);
    sub_1000E94C4();
    sub_100009068(v11);
  }

  else
  {
    sub_10000D3A8(v12, &qword_1001316D8, &qword_1000F2428);
  }

  (*(v7 + 16))(v9, a1, v6);
  sub_100002A10(&qword_100131548, &qword_1000F21F0);
  swift_allocObject();
  return sub_1000E9C94();
}

uint64_t LocalSearchRequestManager.deinit()
{
  sub_100009068((v0 + 16));
  swift_unknownObjectRelease();

  sub_10000D3A8(v0 + 80, &qword_100131600, &qword_1000F2330);

  return v0;
}

uint64_t LocalSearchRequestManager.__deallocating_deinit()
{
  LocalSearchRequestManager.deinit();

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_100051644(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();

  return sub_1000516D4(a1, a2, a3, a4, a5, v15, a7, a8);
}

uint64_t sub_1000516D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a2;
  v27 = a8;
  v24 = a4;
  v25 = a1;
  v11 = sub_1000EC254();
  v22 = *(v11 - 8);
  v23 = v11;
  __chkstk_darwin(v11);
  v21 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = sub_1000EC244();
  __chkstk_darwin(v20[0]);
  v20[1] = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000EAC94();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1000E9BE4();
  __chkstk_darwin(v15);
  v28 = &_swiftEmptyArrayStorage;
  sub_100051DE4(&qword_10012EC08, 255, &type metadata accessor for PromiseDeduperFlags, &protocol conformance descriptor for PromiseDeduperFlags);
  sub_100002A10(&qword_10012EC10, &unk_1000EEAF0);
  sub_100031CA4(&qword_10012EC18, &qword_10012EC10, &unk_1000EEAF0);
  sub_1000EC3C4();
  sub_100002A10(&qword_10012EC20, &unk_1000F2430);
  swift_allocObject();
  *(a6 + 72) = sub_1000E9B94();
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = 0;
  *(a6 + 104) = xmmword_1000EEAE0;
  v16 = v24;
  v17 = v26;
  v18 = v27;
  *(a6 + 56) = v25;
  *(a6 + 64) = v18;
  *(a6 + 120) = v17;
  *(a6 + 128) = a3;
  sub_100051D3C(v16, a6 + 16);
  if (!a5)
  {
    sub_100051DA0();

    sub_1000EAC64();
    v28 = &_swiftEmptyArrayStorage;
    sub_100051DE4(&qword_1001316F0, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100002A10(&qword_1001316F8, &qword_1000F4BA0);
    sub_100031CA4(&qword_100131700, &qword_1001316F8, &qword_1000F4BA0);
    sub_1000EC3C4();
    (*(v22 + 104))(v21, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
    a5 = sub_1000EC274();
  }

  sub_100009068(v16);
  *(a6 + 136) = a5;
  return a6;
}

uint64_t sub_100051ABC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100051B1C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100051C1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002A10(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100051C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100131600, &qword_1000F2330);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100051D04()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100051D3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100051DA0()
{
  result = qword_1001316E8;
  if (!qword_1001316E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001316E8);
  }

  return result;
}

uint64_t sub_100051DE4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100051E6C(uint64_t a1)
{

  return swift_getObjectType();
}

uint64_t sub_100051F40@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_1000EABC4();
  a2[1] = v4;
  v5 = a2 + *(sub_100002A10(&qword_100131798, &qword_1000F24C0) + 44);
  *v5 = sub_1000EA3D4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = sub_100002A10(&qword_1001317A0, &qword_1000F24C8);
  return sub_100051FB4(v2, &v5[*(v6 + 44)]);
}

uint64_t sub_100051FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v65 = sub_100002A10(&qword_1001317A8, &qword_1000F24D0);
  __chkstk_darwin(v65);
  v4 = &v55 - v3;
  v5 = sub_1000EAFC4();
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin(v5);
  v63 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1000EB674();
  v62 = *(v59 - 8);
  __chkstk_darwin(v59);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SmallConditionDescriptionView(0);
  __chkstk_darwin(v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100002A10(&qword_1001317B0, &qword_1000F24D8);
  __chkstk_darwin(v64);
  v13 = &v55 - v12;
  v14 = sub_100002A10(&qword_1001317B8, &qword_1000F24E0);
  v15 = __chkstk_darwin(v14 - 8);
  v67 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v55 - v17;
  v19 = sub_100002A10(&qword_1001317C0, &qword_1000F24E8);
  v20 = v19 - 8;
  v21 = __chkstk_darwin(v19);
  v66 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v55 - v23;
  *v24 = sub_1000EA534();
  v25 = sub_100002A10(&qword_1001317C8, &qword_1000F24F0);
  sub_1000526B0(a1, &v24[*(v25 + 44)]);
  v26 = sub_1000EA574();
  sub_1000E9F74();
  v27 = &v24[*(v20 + 44)];
  *v27 = v26;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  v32 = sub_1000EB944();
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    v36 = sub_1000EBA54();
    (*(*(v36 - 8) + 16))(v11, a1, v36);
    v37 = sub_1000EB944();
    v38 = &v11[*(v9 + 20)];
    *v38 = v37;
    v38[1] = v39;
    sub_10005307C(v11, v4, type metadata accessor for SmallConditionDescriptionView);
    swift_storeEnumTagMultiPayload();
    sub_100052F44();
    sub_100055198(&qword_1001317D8, type metadata accessor for SmallConditionDescriptionView, &unk_1000F2660);
    sub_1000EA4A4();
    sub_1000530D4(v11, type metadata accessor for SmallConditionDescriptionView);
  }

  else
  {
    v56 = v13;
    v57 = v4;
    v41 = v62;
    v40 = v63;
    v58 = v18;
    if (sub_1000EBA04())
    {
      v42 = sub_1000EBA54();
      (*(*(v42 - 8) + 16))(v11, a1, v42);
      sub_1000EB934();
      sub_1000EB664();
      (*(v41 + 8))(v8, v59);
      v43 = sub_1000EAF74();
      v45 = v44;
      (*(v60 + 8))(v40, v61);
      v46 = &v11[*(v9 + 20)];
      *v46 = v43;
      v46[1] = v45;
      v47 = v56;
      sub_100052FF8(v11, v56);
      v48 = 0;
    }

    else
    {
      v48 = 1;
      v47 = v56;
    }

    sub_1000028A0(v47, v48, 1, v9);
    sub_1000553B8(v47, v57, &qword_1001317B0, &qword_1000F24D8);
    swift_storeEnumTagMultiPayload();
    sub_100052F44();
    sub_100055198(&qword_1001317D8, type metadata accessor for SmallConditionDescriptionView, &unk_1000F2660);
    v18 = v58;
    sub_1000EA4A4();
    sub_100008E48(v47, &qword_1001317B0, &qword_1000F24D8);
  }

  v49 = v66;
  sub_1000553B8(v24, v66, &qword_1001317C0, &qword_1000F24E8);
  v50 = v67;
  sub_1000553B8(v18, v67, &qword_1001317B8, &qword_1000F24E0);
  v51 = v68;
  sub_1000553B8(v49, v68, &qword_1001317C0, &qword_1000F24E8);
  v52 = sub_100002A10(&qword_1001317E0, &qword_1000F24F8);
  sub_1000553B8(v50, v51 + *(v52 + 48), &qword_1001317B8, &qword_1000F24E0);
  v53 = v51 + *(v52 + 64);
  *v53 = 0;
  *(v53 + 8) = 1;
  sub_100008E48(v18, &qword_1001317B8, &qword_1000F24E0);
  sub_100008E48(v24, &qword_1001317C0, &qword_1000F24E8);
  sub_100008E48(v50, &qword_1001317B8, &qword_1000F24E0);
  return sub_100008E48(v49, &qword_1001317C0, &qword_1000F24E8);
}

uint64_t sub_1000526B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SmallLocationView(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100002A10(&qword_1001317E8, &qword_1000F2500);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  *v15 = sub_1000EA2E4();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = sub_100002A10(&qword_1001317F0, &qword_1000F2508);
  sub_1000528E8(a1, &v15[*(v16 + 44)]);
  v17 = sub_1000EBA54();
  (*(*(v17 - 8) + 16))(v9, a1, v17);
  sub_1000553B8(v15, v13, &qword_1001317E8, &qword_1000F2500);
  sub_10005307C(v9, v7, type metadata accessor for SmallLocationView);
  sub_1000553B8(v13, a2, &qword_1001317E8, &qword_1000F2500);
  v18 = sub_100002A10(&qword_1001317F8, &qword_1000F2510);
  sub_10005307C(v7, a2 + *(v18 + 48), type metadata accessor for SmallLocationView);
  sub_1000530D4(v9, type metadata accessor for SmallLocationView);
  sub_100008E48(v15, &qword_1001317E8, &qword_1000F2500);
  sub_1000530D4(v7, type metadata accessor for SmallLocationView);
  return sub_100008E48(v13, &qword_1001317E8, &qword_1000F2500);
}

uint64_t sub_1000528E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_1000EBC34();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v49 - v7;
  v9 = sub_100002A10(&qword_100131800, &qword_1000F2518);
  __chkstk_darwin(v9 - 8);
  v58 = &v49 - v10;
  v11 = sub_1000EAFC4();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin(v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000EB674();
  KeyPath = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100002A10(&qword_100131808, &qword_1000F2520);
  v17 = __chkstk_darwin(v53);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = (&v49 - v20);
  __chkstk_darwin(v19);
  v55 = &v49 - v22;
  v23 = type metadata accessor for SmallLocationView(0);
  v24 = __chkstk_darwin(v23 - 8);
  v54 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v49 - v26;
  v28 = sub_1000EBA54();
  (*(*(v28 - 8) + 16))(v27, a1, v28);
  sub_1000EB9C4();
  if (!v29)
  {
    sub_1000EB934();
    sub_1000EB664();
    (*(KeyPath + 8))(v16, v14);
    sub_1000EAF84();
    (*(v51 + 8))(v13, v52);
  }

  v52 = sub_1000EAA24();
  v51 = sub_1000EA9C4();
  KeyPath = swift_getKeyPath();
  v30 = sub_1000EBA44();
  v31 = swift_getKeyPath();
  sub_100053BC0(&qword_10012EEB0, &qword_1000EFC90, type metadata accessor for SmallCurrentObservationView, &type metadata accessor for WidgetRenderingMode, v8);
  sub_1000EBC24();
  v32 = sub_1000EBBF4();
  v33 = v57;
  v34 = *(v56 + 8);
  v34(v6, v57);
  v34(v8, v33);
  v35 = v58;
  if (v32)
  {
    sub_1000EA404();
  }

  else
  {
    sub_1000EA3F4();
  }

  v36 = sub_1000EA414();
  sub_1000028A0(v35, 0, 1, v36);
  v37 = swift_getKeyPath();
  v38 = (v21 + *(v53 + 36));
  v39 = sub_100002A10(&qword_100131810, &qword_1000F25B8);
  sub_100055B1C(v35, v38 + *(v39 + 28), &qword_100131800, &qword_1000F2518);
  *v38 = v37;
  v41 = KeyPath;
  v40 = v51;
  *v21 = v52;
  v21[1] = v41;
  v21[2] = v40;
  v21[3] = v31;
  v21[4] = v30;
  v42 = v55;
  sub_100055B1C(v21, v55, &qword_100131808, &qword_1000F2520);
  v43 = v54;
  sub_10005307C(v27, v54, type metadata accessor for SmallLocationView);
  v44 = v59;
  sub_1000553B8(v42, v59, &qword_100131808, &qword_1000F2520);
  v45 = v60;
  sub_10005307C(v43, v60, type metadata accessor for SmallLocationView);
  v46 = sub_100002A10(&qword_100131818, &unk_1000F25C0);
  v47 = v45 + *(v46 + 48);
  *v47 = 0x4010000000000000;
  *(v47 + 8) = 0;
  sub_1000553B8(v44, v45 + *(v46 + 64), &qword_100131808, &qword_1000F2520);
  sub_100008E48(v42, &qword_100131808, &qword_1000F2520);
  sub_1000530D4(v27, type metadata accessor for SmallLocationView);
  sub_100008E48(v44, &qword_100131808, &qword_1000F2520);
  return sub_1000530D4(v43, type metadata accessor for SmallLocationView);
}

unint64_t sub_100052F44()
{
  result = qword_1001317D0;
  if (!qword_1001317D0)
  {
    sub_100002ABC(&qword_1001317B0, &qword_1000F24D8);
    sub_100055198(&qword_1001317D8, type metadata accessor for SmallConditionDescriptionView, &unk_1000F2660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001317D0);
  }

  return result;
}

uint64_t sub_100052FF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallConditionDescriptionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005307C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100026C1C();
  v4 = sub_100019AC0();
  v5(v4);
  return a2;
}

uint64_t sub_1000530D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000069E4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10005312C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1000EA3D4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100002A10(&qword_100131950, &qword_1000F2718);
  return sub_10005317C(v2, a2 + *(v4 + 44));
}

uint64_t sub_10005317C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v19[0] = sub_100002A10(&qword_100131958, &qword_1000F2720);
  __chkstk_darwin(v19[0]);
  v4 = v19 - v3;
  v5 = sub_100002A10(&qword_100131960, &qword_1000F2728);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = type metadata accessor for SmallLocationText(0);
  __chkstk_darwin(v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000EB994();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EB9B4();
  v15 = sub_1000EB984();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    *v4 = sub_1000EA2E4();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v16 = sub_100002A10(&qword_100131978, &qword_1000F2730);
    sub_10005359C(a1, v15, &v4[*(v16 + 44)]);
    sub_1000553B8(v4, v7, &qword_100131958, &qword_1000F2720);
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_100131968, &qword_100131958, &qword_1000F2720, &protocol conformance descriptor for HStack<A>);
    sub_100055198(&qword_100131970, type metadata accessor for SmallLocationText, &unk_1000F2840);
    sub_1000EA4A4();

    return sub_100008E48(v4, &qword_100131958, &qword_1000F2720);
  }

  else
  {
    v18 = sub_1000EBA54();
    (*(*(v18 - 8) + 16))(v10, a1, v18);
    *&v10[*(v8 + 20)] = swift_getKeyPath();
    sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
    swift_storeEnumTagMultiPayload();
    sub_10005307C(v10, v7, type metadata accessor for SmallLocationText);
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_100131968, &qword_100131958, &qword_1000F2720, &protocol conformance descriptor for HStack<A>);
    sub_100055198(&qword_100131970, type metadata accessor for SmallLocationText, &unk_1000F2840);
    sub_1000EA4A4();
    return sub_1000530D4(v10, type metadata accessor for SmallLocationText);
  }
}

uint64_t sub_10005359C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = sub_1000EB994();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100002A10(&qword_100131980, &qword_1000F2738);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = &v41 - v9;
  v46 = sub_100002A10(&qword_100131988, &qword_1000F2740);
  v10 = __chkstk_darwin(v46);
  v57 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v47 = &v41 - v13;
  __chkstk_darwin(v12);
  v54 = &v41 - v14;
  v15 = type metadata accessor for SmallLocationText(0);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v53 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v41 - v19;
  v21 = sub_1000EBA54();
  (*(*(v21 - 8) + 16))(v20, a1, v21);
  *&v20[*(v16 + 28)] = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  v49 = v20;
  swift_storeEnumTagMultiPayload();
  sub_1000EABC4();
  sub_1000E9FC4();
  v45 = v65;
  v44 = v67;
  v43 = v69;
  v42 = v70;
  v73 = 1;
  v72 = v66;
  v71 = v68;
  v22 = sub_1000EA9C4();
  KeyPath = swift_getKeyPath();

  v24 = sub_1000EBA44();
  v25 = swift_getKeyPath();
  v51 = a2;
  v60 = a2;
  v61 = KeyPath;
  v62 = v22;
  v63 = v25;
  v64 = v24;
  v59 = a1;
  sub_1000EB9B4();
  LOBYTE(a2) = sub_1000EB974();
  v26 = *(v6 + 8);
  v55 = v6 + 8;
  v56 = v5;
  v26(v8, v5);
  if (a2)
  {
    sub_1000EBA14();
  }

  sub_100002A10(&qword_100131990, &qword_1000F2748);
  sub_1000551E0();
  v27 = v48;
  sub_1000EA874();

  sub_1000EB9B4();
  v28 = v47;
  v29 = &v47[*(v46 + 36)];
  sub_100002A10(&qword_1001319B0, &qword_1000F2EF0);
  sub_1000EB964();
  v26(v8, v56);
  *v29 = swift_getKeyPath();
  (*(v50 + 32))(v28, v27, v52);
  v30 = v54;
  sub_100055358(v28, v54);
  v31 = v49;
  v32 = v53;
  sub_10005307C(v49, v53, type metadata accessor for SmallLocationText);
  v33 = v73;
  v34 = v72;
  LOBYTE(v27) = v71;
  v35 = v57;
  sub_1000553B8(v30, v57, &qword_100131988, &qword_1000F2740);
  v36 = v58;
  sub_10005307C(v32, v58, type metadata accessor for SmallLocationText);
  v37 = sub_100002A10(&qword_1001319B8, &unk_1000F27A0);
  v38 = v36 + *(v37 + 48);
  *v38 = 0;
  *(v38 + 8) = v33;
  *(v38 + 16) = v45;
  *(v38 + 24) = v34;
  *(v38 + 32) = v44;
  *(v38 + 40) = v27;
  v39 = v42;
  *(v38 + 48) = v43;
  *(v38 + 56) = v39;
  sub_1000553B8(v35, v36 + *(v37 + 64), &qword_100131988, &qword_1000F2740);
  sub_100008E48(v30, &qword_100131988, &qword_1000F2740);
  sub_1000530D4(v31, type metadata accessor for SmallLocationText);
  sub_100008E48(v35, &qword_100131988, &qword_1000F2740);
  return sub_1000530D4(v32, type metadata accessor for SmallLocationText);
}

uint64_t sub_100053BC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v23 = a5;
  v11 = sub_1000EA2C4();
  sub_1000090D4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100040480();
  sub_100002A10(a1, a2);
  sub_1000069E4();
  __chkstk_darwin(v15);
  v17 = &v22 - v16;
  v18 = a3(0);
  sub_1000553B8(v5 + *(v18 + 20), v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a4(0);
    sub_100026C1C();
    return (*(v19 + 32))(v23, v17);
  }

  else
  {
    sub_1000EC1A4();
    v21 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v13 + 8))(v6, v11);
  }
}

double sub_100053DA8@<D0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = sub_1000EA694();
  v35 = *(v1 - 8);
  v36 = v1;
  __chkstk_darwin(v1);
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000E9A84();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EBA34();
  v7 = sub_1000E9A44();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  *&v37 = v7;
  *(&v37 + 1) = v9;
  sub_100005898();
  v10 = sub_1000EA814();
  v12 = v11;
  LOBYTE(v6) = v13;
  sub_1000EA9C4();
  v14 = sub_1000EA784();
  v16 = v15;
  v18 = v17;

  sub_1000058EC(v10, v12, v6 & 1);

  sub_1000EB954();
  v19 = sub_1000EA7D4();
  v21 = v20;
  LOBYTE(v9) = v22;

  sub_1000058EC(v14, v16, v18 & 1);

  sub_1000EBA14();
  v23 = sub_1000EA714();
  v25 = v24;
  LOBYTE(v14) = v26;
  v28 = v27;
  sub_1000058EC(v19, v21, v9 & 1);

  sub_1000EB954();
  v29 = v34;
  sub_100053BC0(&qword_10012F6E8, &unk_1000F06A0, type metadata accessor for SmallLocationText, &type metadata accessor for Font.Context, v34);
  sub_1000EA594();

  (*(v35 + 8))(v29, v36);
  sub_1000EABC4();
  sub_1000E9FC4();
  v30 = v33;
  *v33 = v23;
  v30[1] = v25;
  *(v30 + 16) = v14 & 1;
  v30[3] = v28;
  v31 = v38;
  *(v30 + 2) = v37;
  *(v30 + 3) = v31;
  result = *&v39;
  *(v30 + 4) = v39;
  return result;
}

uint64_t sub_1000540FC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SmallConditionDescription(0);
  v5 = v4[6];
  v6 = sub_1000EBA54();
  (*(*(v6 - 8) + 16))(&a1[v5], v2, v6);
  v7 = (v2 + *(type metadata accessor for SmallConditionDescriptionView(0) + 20));
  v9 = *v7;
  v8 = v7[1];
  *a1 = swift_getKeyPath();
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  swift_storeEnumTagMultiPayload();
  *&a1[v4[5]] = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  v10 = &a1[v4[7]];
  *v10 = v9;
  *(v10 + 1) = v8;
}

uint64_t sub_10005421C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000EA2C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000553B8(v2, &v14 - v9, &qword_10012EEB0, &qword_1000EFC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000EBC34();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1000EC1A4();
    v13 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100054420@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v2 = sub_1000EBC34();
  v79 = *(v2 - 8);
  v80 = v2;
  v3 = __chkstk_darwin(v2);
  v78 = &v67[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v77 = &v67[-v5];
  v6 = sub_100002A10(&qword_100131800, &qword_1000F2518);
  __chkstk_darwin(v6 - 8);
  v81 = &v67[-v7];
  v8 = sub_1000EA694();
  v74 = *(v8 - 8);
  v75 = v8;
  __chkstk_darwin(v8);
  v73 = &v67[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = sub_1000EA6A4();
  v10 = *(v72 - 8);
  __chkstk_darwin(v72);
  v12 = &v67[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = sub_100002A10(&qword_100131B00, &qword_1000F2890);
  __chkstk_darwin(v76);
  v14 = &v67[-v13];
  v15 = type metadata accessor for SmallConditionDescription(0);
  v16 = (v1 + *(v15 + 28));
  v17 = v16[1];
  v84 = *v16;
  v85 = v17;
  sub_100005898();

  v18 = sub_1000EA814();
  v20 = v19;
  v22 = v21;
  sub_1000EA9C4();
  v71 = sub_1000EA784();
  v70 = v23;
  v68 = v24;
  KeyPath = v25;

  sub_1000058EC(v18, v20, v22 & 1);

  v83 = *(v15 + 24);
  sub_1000EB9D4();
  v26 = v72;
  (*(v10 + 104))(v12, enum case for Font.Leading.tight(_:), v72);
  sub_1000EA6D4();

  (*(v10 + 8))(v12, v26);
  LOBYTE(v15) = v68;
  v27 = v71;
  v28 = v70;
  v29 = sub_1000EA7D4();
  v31 = v30;
  LOBYTE(v18) = v32;

  sub_1000058EC(v27, v28, v15 & 1);

  sub_1000EA654();
  v72 = sub_1000EA714();
  v71 = v33;
  v68 = v34;
  v70 = v35;
  sub_1000058EC(v29, v31, v18 & 1);

  KeyPath = swift_getKeyPath();
  sub_1000EBA44();
  v36 = v73;
  sub_100053BC0(&qword_10012F6E8, &unk_1000F06A0, type metadata accessor for SmallConditionDescription, &type metadata accessor for Font.Context, v73);
  sub_1000EA5A4();
  v38 = v37;

  v39 = v75;
  v40 = *(v74 + 8);
  v40(v36, v75);
  sub_1000EBA44();
  sub_100053BC0(&qword_10012F6E8, &unk_1000F06A0, type metadata accessor for SmallConditionDescription, &type metadata accessor for Font.Context, v36);
  sub_1000EA5A4();
  v42 = v41;

  v40(v36, v39);
  v83 = swift_getKeyPath();
  v43 = v68 & 1;
  v86 = v68 & 1;
  v44 = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
  v45 = swift_getKeyPath();
  LOBYTE(v84) = 0;
  v46 = v77;
  sub_10005421C(v77);
  v47 = v78;
  sub_1000EBC24();
  v48 = sub_1000EBBF4();
  v49 = v80;
  v50 = *(v79 + 8);
  v50(v47, v80);
  v50(v46, v49);
  v51 = v81;
  if (v48)
  {
    sub_1000EA404();
  }

  else
  {
    sub_1000EA3F4();
  }

  if (v44)
  {
    v52 = 2;
  }

  else
  {
    v52 = 3;
  }

  v53 = sub_1000EA414();
  sub_1000028A0(v51, 0, 1, v53);
  v54 = swift_getKeyPath();
  v55 = &v14[*(v76 + 36)];
  v56 = sub_100002A10(&qword_100131810, &qword_1000F25B8);
  sub_100055B1C(v51, v55 + *(v56 + 28), &qword_100131800, &qword_1000F2518);
  *v55 = v54;
  v57 = v71;
  *v14 = v72;
  *(v14 + 1) = v57;
  v14[16] = v43;
  v58 = KeyPath;
  *(v14 + 3) = v70;
  *(v14 + 4) = v58;
  v14[40] = 0;
  *(v14 + 6) = v83;
  *(v14 + 7) = (v38 + -1.0) / v42;
  *(v14 + 8) = v45;
  *(v14 + 9) = v52;
  v14[80] = 0;
  v59 = swift_getKeyPath();
  v60 = sub_100002A10(&qword_100131B08, &qword_1000F2958);
  v61 = v82;
  v62 = (v82 + *(v60 + 36));
  v63 = *(sub_100002A10(&qword_100131B10, &unk_1000F2960) + 28);
  v64 = enum case for ColorSchemeContrast.standard(_:);
  v65 = sub_1000EA3A4();
  (*(*(v65 - 8) + 104))(v62 + v63, v64, v65);
  *v62 = v59;
  return sub_100055B1C(v14, v61, &qword_100131B00, &qword_1000F2890);
}

uint64_t sub_100054BEC(uint64_t a1)
{
  sub_1000EA3A4();
  sub_1000090D4();
  __chkstk_darwin(v3);
  sub_100040480();
  (*(v4 + 16))(v1, a1);
  return sub_1000EA1D4();
}

uint64_t sub_100054C9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000EA134();
  *a1 = result;
  return result;
}

uint64_t sub_100054CC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000EA134();
  *a1 = result;
  return result;
}

uint64_t sub_100054D50(uint64_t a1)
{
  v2 = sub_100002A10(&qword_100131800, &qword_1000F2518);
  __chkstk_darwin(v2 - 8);
  sub_1000553B8(a1, &v5 - v3, &qword_100131800, &qword_1000F2518);
  return sub_1000EA1B4();
}

uint64_t sub_100054E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000EBA54();
  sub_100006A04();
  if (*(v7 + 84) != a2)
  {
    return sub_100055EEC(a1 + *(a3 + 20));
  }

  return sub_100005B30(a1, a2, v6);
}

void sub_100054EC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100055ED0();
  sub_100006A04();
  if (*(v8 + 84) == a3)
  {
    sub_100055F10();
    sub_100055F04();

    sub_1000028A0(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = (v4 - 1);
  }
}

uint64_t sub_100054F54(uint64_t a1)
{
  result = sub_1000EBA54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100054FDC()
{
  v2 = sub_100055ED0();

  return sub_100005B30(v1, v0, v2);
}

uint64_t sub_10005502C()
{
  sub_100055ED0();
  sub_100055F10();
  sub_100055F04();

  return sub_1000028A0(v0, v1, v2, v3);
}

uint64_t sub_100055064(uint64_t a1)
{
  result = sub_1000EBA54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100055198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000551E0()
{
  result = qword_100131998;
  if (!qword_100131998)
  {
    sub_100002ABC(&qword_100131990, &qword_1000F2748);
    sub_100055298();
    sub_100006988(&qword_10012FA60, &qword_10012FA68, &unk_1000F2760, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131998);
  }

  return result;
}

unint64_t sub_100055298()
{
  result = qword_1001319A0;
  if (!qword_1001319A0)
  {
    sub_100002ABC(&qword_1001319A8, &unk_1000F2750);
    sub_100006988(&qword_10012FA90, &qword_10012FA98, &unk_1000F2ED0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001319A0);
  }

  return result;
}

uint64_t sub_100055358(uint64_t a1, uint64_t a2)
{
  sub_100002A10(&qword_100131988, &qword_1000F2740);
  sub_100026C1C();
  v3 = sub_100019AC0();
  v4(v3);
  return a2;
}

uint64_t sub_1000553B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100006A38(a1, a2, a3, a4);
  sub_100026C1C();
  v5 = sub_100019AC0();
  v6(v5);
  return v4;
}

uint64_t sub_100055414(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100002A10(&qword_10012ED98, &unk_1000F2440);
  sub_100006A04();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_100002A10(&qword_10012FE50, &qword_1000F0720);
    sub_100006A04();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_1000EBA54();
      sub_100006A04();
      if (*(v14 + 84) != a2)
      {
        return sub_100055EEC(a1 + a3[7]);
      }

      v8 = v13;
      v12 = a3[6];
    }

    v9 = a1 + v12;
  }

  return sub_100005B30(v9, a2, v8);
}

void sub_100055560(uint64_t a1, int a2, int a3, int *a4)
{
  sub_100002A10(&qword_10012ED98, &unk_1000F2440);
  sub_100006A04();
  if (*(v8 + 84) == a3)
  {
    sub_100055F10();
  }

  else
  {
    sub_100002A10(&qword_10012FE50, &qword_1000F0720);
    sub_100006A04();
    if (*(v9 + 84) != a3)
    {
      sub_1000EBA54();
      sub_100006A04();
      if (*(v10 + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return;
      }
    }
  }

  sub_100055F04();

  sub_1000028A0(v11, v12, v13, v14);
}

void sub_10005569C(uint64_t a1)
{
  sub_100055778(319, &qword_10012EE28, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    sub_100055778(319, &unk_10012FEC0, &type metadata accessor for Font.Context);
    if (v2 <= 0x3F)
    {
      sub_1000EBA54();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100055778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000E9F94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000557F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_100055ED0();
  sub_100006A04();
  if (*(v11 + 84) == v5)
  {
    v12 = v10;
    v13 = v6;
  }

  else
  {
    v12 = sub_100002A10(a4, a5);
    v13 = v6 + *(a3 + 20);
  }

  return sub_100005B30(v13, v5, v12);
}

uint64_t sub_1000558BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_100055ED0();
  sub_100006A04();
  if (*(v9 + 84) == a3)
  {
    sub_100055F10();
  }

  else
  {
    sub_100002A10(a5, a6);
  }

  sub_100055F04();

  return sub_1000028A0(v10, v11, v12, v13);
}

void sub_10005597C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1000EBA54();
  if (v7 <= 0x3F)
  {
    sub_100055778(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100055B1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100006A38(a1, a2, a3, a4);
  sub_100026C1C();
  v5 = sub_100019AC0();
  v6(v5);
  return v4;
}

unint64_t sub_100055B68()
{
  result = qword_100131B18;
  if (!qword_100131B18)
  {
    sub_100002ABC(&qword_10012EF70, &qword_1000EEE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131B18);
  }

  return result;
}

unint64_t sub_100055BF0()
{
  result = qword_100131B20;
  if (!qword_100131B20)
  {
    sub_100002ABC(&qword_100131B08, &qword_1000F2958);
    sub_100055CA8();
    sub_100006988(&qword_100131B78, &qword_100131B10, &unk_1000F2960, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131B20);
  }

  return result;
}

unint64_t sub_100055CA8()
{
  result = qword_100131B28;
  if (!qword_100131B28)
  {
    sub_100002ABC(&qword_100131B00, &qword_1000F2890);
    sub_100055D60();
    sub_100006988(&qword_100131B70, &qword_100131810, &qword_1000F25B8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131B28);
  }

  return result;
}

unint64_t sub_100055D60()
{
  result = qword_100131B30;
  if (!qword_100131B30)
  {
    sub_100002ABC(&qword_100131B38, &qword_1000F2970);
    sub_100055E18();
    sub_100006988(&qword_100131B60, &qword_100131B68, &qword_1000F2998, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131B30);
  }

  return result;
}

unint64_t sub_100055E18()
{
  result = qword_100131B40;
  if (!qword_100131B40)
  {
    sub_100002ABC(&qword_100131B48, &qword_1000F2978);
    sub_10004E0BC();
    sub_100006988(&qword_100131B50, &qword_100131B58, &qword_1000F2990, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131B40);
  }

  return result;
}

uint64_t sub_100055ED0()
{

  return sub_1000EBA54();
}

uint64_t sub_100055EEC@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100055F30(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for CurrentObservationViewModelFactory(0);
  sub_100006A04();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return sub_100005B30(v9, a2, v8);
  }

  sub_1000EB744();
  sub_100006A04();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[6];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  sub_1000EBB44();
  sub_100006A04();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[7];
    goto LABEL_12;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = type metadata accessor for EventViewModelFactory(0);
    v12 = a3[10];
    goto LABEL_12;
  }

  v15 = *(a1 + a3[8] + 24);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void sub_100056094(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for CurrentObservationViewModelFactory(0);
  sub_100006A04();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1000EB744();
    sub_100006A04();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      sub_1000EBB44();
      sub_100006A04();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[8] + 24) = (a2 - 1);
          return;
        }

        v10 = type metadata accessor for EventViewModelFactory(0);
        v14 = a4[10];
      }
    }

    v11 = a1 + v14;
  }

  sub_1000028A0(v11, a2, a2, v10);
}

uint64_t type metadata accessor for AggregateWeatherViewModelFactory(uint64_t a1)
{
  result = qword_100131BD8;
  if (!qword_100131BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005622C(uint64_t a1)
{
  result = type metadata accessor for CurrentObservationViewModelFactory(319);
  if (v2 <= 0x3F)
  {
    result = sub_1000EB744();
    if (v3 <= 0x3F)
    {
      result = sub_1000EBB44();
      if (v4 <= 0x3F)
      {
        result = sub_100056348(319, &qword_100131BE8, &protocol descriptor for NextHourPrecipitationChartViewModelFactoryType);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for EventViewModelFactory(319);
          if (v6 <= 0x3F)
          {
            result = sub_100056348(319, &unk_100131BF0, &protocol descriptor for AppConfigurationManagerType);
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100056348(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10005639C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v117 = a3;
  v118 = a1;
  v120 = sub_1000E8524();
  sub_1000090D4();
  v122 = v6;
  __chkstk_darwin(v7);
  sub_10000D45C();
  sub_10000D408();
  v9 = __chkstk_darwin(v8);
  v11 = v102 - v10;
  __chkstk_darwin(v9);
  sub_10000D4D0();
  v124 = v12;
  sub_10004B6F4();
  __chkstk_darwin(v13);
  sub_10000D56C();
  v125 = v14;
  sub_10000921C();
  v109 = sub_1000E89F4();
  sub_1000090D4();
  v108 = v15;
  __chkstk_darwin(v16);
  sub_10004B3F0();
  v107 = v17;
  v18 = sub_100002A10(&qword_100130EC8, &qword_1000F1670);
  __chkstk_darwin(v18 - 8);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v19);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v20);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v21);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v22);
  sub_10000D56C();
  v111 = v23;
  sub_10000921C();
  v134 = sub_1000E9A84();
  sub_1000090D4();
  v132 = v24;
  __chkstk_darwin(v25);
  sub_10004B3F0();
  v131 = v26;
  sub_10000921C();
  v104 = sub_1000E8634();
  sub_1000090D4();
  v103 = v27;
  __chkstk_darwin(v28);
  sub_10004B3F0();
  v128 = v29;
  v30 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  __chkstk_darwin(v30 - 8);
  sub_10000D45C();
  v130 = v31;
  sub_10004B6F4();
  __chkstk_darwin(v32);
  sub_10000D56C();
  v121 = v33;
  sub_10000921C();
  v123 = sub_1000EB674();
  sub_1000090D4();
  v136 = v34;
  __chkstk_darwin(v35);
  sub_10000D45C();
  v127 = v36;
  sub_10004B6F4();
  __chkstk_darwin(v37);
  sub_10000D56C();
  v135 = v38;
  v39 = sub_100002A10(&qword_100130EE0, &qword_1000F1690);
  __chkstk_darwin(v39 - 8);
  sub_10000D45C();
  v126 = v40;
  sub_10004B6F4();
  __chkstk_darwin(v41);
  sub_10000D56C();
  v133 = v42;
  sub_10000921C();
  v43 = sub_1000E8784();
  sub_1000090D4();
  v45 = v44;
  v47 = __chkstk_darwin(v46);
  v49 = v102 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v47);
  v52 = v102 - v51;
  __chkstk_darwin(v50);
  v54 = v102 - v53;
  v119 = a2;
  sub_1000E9A74();
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v55 = sub_1000E9F64();
  v56 = sub_100008CB8(v55, qword_100145C10);
  v57 = *(v45 + 16);
  v129 = v54;
  v57(v52, v54, v43);
  v102[1] = v56;
  v58 = sub_1000E9F44();
  v59 = sub_1000EC1B4();
  v60 = os_log_type_enabled(v58, v59);
  v113 = v11;
  v106 = v43;
  v105 = v45;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v102[0] = a4;
    v63 = v62;
    v137 = v62;
    *v61 = 136446210;
    v57(v49, v52, v43);
    v64 = sub_1000EBEF4();
    v66 = v65;
    v67 = sub_1000573F4();
    v68(v67);
    v69 = sub_1000E2E18(v64, v66, &v137);

    *(v61 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v58, v59, "Building aggregate weather data model. - timeZone: %{public}s", v61, 0xCu);
    sub_100009068(v63);
    a4 = v102[0];
  }

  else
  {

    v70 = sub_1000573F4();
    v71(v70);
  }

  v72 = v133;
  v73 = v118;
  sub_1000433B8(v133);
  v74 = v135;
  sub_100091F30(v73, v129, v117, v135);
  type metadata accessor for AggregateWeatherViewModelFactory(0);
  sub_1000573D4();
  v117 = sub_1000EBB24();
  sub_1000573D4();
  v102[0] = sub_1000EB724();
  v75 = v121;
  v76 = v119;
  sub_100056F94(v119, v121);
  v77 = sub_1000573D4();
  v79 = sub_1000094A0(v77, v78, 0);
  v80 = sub_10000F10C(v73);
  v82 = v81;
  sub_1000E8624();
  (*(v132 + 16))(v131, v76, v134);
  v83 = v123;
  (*(v136 + 16))(v127, v74, v123);
  sub_1000068F4(v72, v126, &qword_100130EE0, &qword_1000F1690);
  sub_1000068F4(v75, v130, &qword_1001309D8, &qword_1000F10F0);
  v84 = v116;
  sub_1000E8514();
  v85 = v120;
  result = sub_10005740C(v84, 1);
  if (v87)
  {
    __break(1u);
    goto LABEL_14;
  }

  LODWORD(v118) = v82;
  v119 = v80;
  v88 = *(v122 + 32);
  v88(v125, v84, v85);
  sub_1000573E4();
  v89 = v114;
  sub_1000E8514();
  result = sub_10005740C(v89, 1);
  v90 = v115;
  if (v87)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v91 = v79;
  v88(v124, v89, v85);
  sub_1000573E4();
  sub_1000E8514();
  result = sub_10005740C(v90, 1);
  if (v87)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v88(v113, v90, v85);
  sub_1000573E4();
  v92 = v112;
  sub_1000E8514();
  result = sub_10005740C(v92, 1);
  if (v87)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v88(v110, v92, v85);
  v93 = v107;
  sub_1000E89D4();
  v94 = v111;
  sub_1000E89E4();
  (*(v108 + 8))(v93, v109);
  sub_1000028A0(v94, 0, 1, v85);
  v95 = type metadata accessor for AggregateWeatherViewModel(0);
  v96 = v95[14];
  v97 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
  sub_1000028A0(a4 + v96, 1, 1, v97);
  (*(v103 + 32))(a4, v128, v104);
  (*(v132 + 32))(a4 + v95[5], v131, v134);
  (*(v136 + 32))(a4 + v95[6], v127, v83);
  *(a4 + v95[7]) = v117;
  *(a4 + v95[8]) = v102[0];
  sub_1000068A4(v126, a4 + v95[9], &qword_100130EE0, &qword_1000F1690);
  sub_1000068A4(v130, a4 + v95[10], &qword_1001309D8, &qword_1000F10F0);
  *(a4 + v95[11]) = v91;
  v98 = a4 + v95[12];
  *v98 = v119;
  *(v98 + 8) = v118;
  sub_1000068A4(v94, a4 + v95[13], &qword_100130EC8, &qword_1000F1670);
  v99 = sub_1000E9F44();
  v100 = sub_1000EC1B4();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    *v101 = 0;
    _os_log_impl(&_mh_execute_header, v99, v100, "Built aggregate weather data model.", v101, 2u);
  }

  sub_100008E48(v75, &qword_1001309D8, &qword_1000F10F0);
  (*(v136 + 8))(v135, v83);
  sub_100008E48(v133, &qword_100130EE0, &qword_1000F1690);
  return (v102[2])(v129, v106);
}

uint64_t sub_100056F94@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v32 = a1;
  v35 = a2;
  v2 = sub_1000E8604();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000EBAC4();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000E90D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002A10(&qword_10012F108, &qword_1000EEF10);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - v13;
  v15 = sub_100002A10(&qword_10012F110, &qword_1000EEF18);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v28 - v17;
  sub_1000E8CB4();
  if (sub_100005B30(v14, 1, v15) == 1)
  {
    sub_100008E48(v14, &qword_10012F108, &qword_1000EEF10);
LABEL_6:
    v25 = 1;
    v24 = v35;
    goto LABEL_7;
  }

  (*(v16 + 32))(v18, v14, v15);
  (*(v9 + 104))(v11, enum case for PrecipitationRelevancyWindow.default(_:), v8);
  v19 = sub_1000E91C4();
  (*(v9 + 8))(v11, v8);
  if ((v19 & 1) == 0)
  {
    (*(v16 + 8))(v18, v15);
    goto LABEL_6;
  }

  v20 = (v29 + *(type metadata accessor for AggregateWeatherViewModelFactory(0) + 32));
  v21 = v20[3];
  v29 = v20[4];
  sub_100008DA8(v20, v21);
  v22 = v30;
  v23 = v31;
  (*(v30 + 104))(v7, enum case for NextHourPrecipitationChartPlacement.component(_:), v31);
  sub_1000E85F4();
  v24 = v35;
  sub_1000EBBB4();
  (*(v33 + 8))(v4, v34);
  (*(v22 + 8))(v7, v23);
  (*(v16 + 8))(v18, v15);
  v25 = 0;
LABEL_7:
  v26 = sub_1000EBAF4();
  return sub_1000028A0(v24, v25, 1, v26);
}

uint64_t sub_1000573F4()
{
  result = v1;
  *(v2 - 384) = *(v0 + 8);
  return result;
}

uint64_t sub_10005743C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ForecastEntry(0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100005B30(v8, a2, v7);
}

uint64_t sub_1000574F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ForecastEntry(0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_1000028A0(v10, a2, a2, v9);
}

uint64_t type metadata accessor for MoonContentView(uint64_t a1)
{
  result = qword_100131C90;
  if (!qword_100131C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100057610@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000EA2C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  sub_1000069E4();
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10000EBC4(v2, &v14 - v9, &qword_10012F230, &qword_1000EEFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000EBC44();
    sub_1000069E4();
    return (*(v11 + 32))(a1, v10);
  }

  else
  {
    sub_1000EC1A4();
    v13 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100057808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v38 = sub_100002A10(&qword_100131CC8, &qword_1000F2A30);
  __chkstk_darwin(v38);
  v39 = &v34 - v3;
  v48 = sub_100002A10(&qword_100131CD0, &qword_1000F2A38);
  __chkstk_darwin(v48);
  v42 = &v34 - v4;
  v43 = sub_1000EB074();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100002A10(&qword_100131CD8, &qword_1000F2A40);
  __chkstk_darwin(v47);
  v44 = &v34 - v6;
  v37 = sub_100002A10(&qword_100131CE0, &qword_1000F2A48);
  __chkstk_darwin(v37);
  v8 = &v34 - v7;
  v46 = sub_100002A10(&qword_100131CE8, &qword_1000F2A50);
  __chkstk_darwin(v46);
  v10 = &v34 - v9;
  v11 = sub_1000EB474();
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000EB494();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000EBC44();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v35 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v34 - v22;
  v45 = a1;
  sub_100057610(&v34 - v22);
  v36 = v19;
  v24 = v23;
  v25 = v18;
  v26 = (*(v19 + 88))(v24, v18);
  if (v26 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1000EC3E4(64);
    v52._countAndFlagsBits = 0xD000000000000021;
    v52._object = 0x80000001000FB1A0;
    sub_1000EBF44(v52);
    v32 = v35;
    sub_100057610(v35);
    sub_100058194(&qword_10012F208, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v53._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v53);

    (*(v36 + 8))(v32, v25);
    v54._object = 0x80000001000FC6D0;
    v54._countAndFlagsBits = 0xD00000000000001DLL;
    sub_1000EBF44(v54);
LABEL_9:
    result = sub_1000EC464();
    __break(1u);
    return result;
  }

  if (v26 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    type metadata accessor for MoonContentView(0);
    sub_10000D5A4(v13);
    sub_1000EB484();
    (*(v15 + 16))(v8, v17, v14);
    swift_storeEnumTagMultiPayload();
    sub_100058194(&qword_100131D00, &type metadata accessor for MoonRectangularContentView, &protocol conformance descriptor for MoonRectangularContentView);
    sub_1000EA4A4();
    sub_10000EBC4(v10, v44, &qword_100131CE8, &qword_1000F2A50);
    swift_storeEnumTagMultiPayload();
    sub_1000580D8();
    sub_1000581DC();
    sub_1000EA4A4();
    sub_100008E48(v10, &qword_100131CE8, &qword_1000F2A50);
    return (*(v15 + 8))(v17, v14);
  }

  if (v26 != enum case for WidgetFamily.accessoryInline(_:))
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1000EC3E4(65);
    v55._countAndFlagsBits = 0xD000000000000022;
    v55._object = 0x80000001000FB150;
    sub_1000EBF44(v55);
    v33 = v35;
    sub_100057610(v35);
    sub_100058194(&qword_10012F208, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v56._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v56);

    (*(v36 + 8))(v33, v25);
    v57._object = 0x80000001000FC6D0;
    v57._countAndFlagsBits = 0xD00000000000001DLL;
    sub_1000EBF44(v57);
    goto LABEL_9;
  }

  type metadata accessor for MoonContentView(0);
  sub_10000D5A4(v13);
  v28 = v40;
  sub_1000EB064();
  v29 = v41;
  v30 = v43;
  (*(v41 + 16))(v39, v28, v43);
  swift_storeEnumTagMultiPayload();
  sub_100058194(&qword_100131CF0, &type metadata accessor for MoonInlineContentView, &protocol conformance descriptor for MoonInlineContentView);
  v31 = v42;
  sub_1000EA4A4();
  sub_10000EBC4(v31, v44, &qword_100131CD0, &qword_1000F2A38);
  swift_storeEnumTagMultiPayload();
  sub_1000580D8();
  sub_1000581DC();
  sub_1000EA4A4();
  sub_100008E48(v31, &qword_100131CD0, &qword_1000F2A38);
  return (*(v29 + 8))(v28, v30);
}

unint64_t sub_1000580D8()
{
  result = qword_100131CF8;
  if (!qword_100131CF8)
  {
    sub_100002ABC(&qword_100131CE8, &qword_1000F2A50);
    sub_100058194(&qword_100131D00, &type metadata accessor for MoonRectangularContentView, &protocol conformance descriptor for MoonRectangularContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131CF8);
  }

  return result;
}

uint64_t sub_100058194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000581DC()
{
  result = qword_100131D08;
  if (!qword_100131D08)
  {
    sub_100002ABC(&qword_100131CD0, &qword_1000F2A38);
    sub_100058194(&qword_100131CF0, &type metadata accessor for MoonInlineContentView, &protocol conformance descriptor for MoonInlineContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131D08);
  }

  return result;
}

unint64_t sub_10005829C()
{
  result = qword_100131D10;
  if (!qword_100131D10)
  {
    sub_100002ABC(&qword_100131D18, &qword_1000F2A58);
    sub_100058320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131D10);
  }

  return result;
}

unint64_t sub_100058320()
{
  result = qword_100131D20;
  if (!qword_100131D20)
  {
    sub_100002ABC(&qword_100131D28, &unk_1000F2A60);
    sub_1000580D8();
    sub_1000581DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131D20);
  }

  return result;
}

uint64_t sub_1000583C0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1000E8634();
  sub_100006A04();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_1000E8604();
    sub_100006A04();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_1000E8E84();
      sub_100006A04();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[7];
      }

      else
      {
        v8 = sub_1000E8F64();
        v12 = a3[8];
      }
    }

    v9 = a1 + v12;
  }

  return sub_100005B30(v9, a2, v8);
}

uint64_t sub_1000584EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1000E8634();
  sub_100006A04();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1000E8604();
    sub_100006A04();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_1000E8E84();
      sub_100006A04();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        v10 = sub_1000E8F64();
        v14 = a4[8];
      }
    }

    v11 = a1 + v14;
  }

  return sub_1000028A0(v11, a2, a2, v10);
}

uint64_t type metadata accessor for AirQualityViewModel(uint64_t a1)
{
  result = qword_100131D88;
  if (!qword_100131D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100058658(uint64_t a1)
{
  result = sub_1000E8634();
  if (v2 <= 0x3F)
  {
    result = sub_1000E8604();
    if (v3 <= 0x3F)
    {
      result = sub_1000E8E84();
      if (v4 <= 0x3F)
      {
        result = sub_1000E8F64();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100058714(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
        if (v8 || (sub_1000EC5D4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000014 && 0x80000001000FC6F0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1000EC5D4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1000588BC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 0x7865646E69;
      break;
    case 3:
      result = 0x656C616373;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100058954(uint64_t a1, uint64_t a2)
{
  if ((sub_1000E8614() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AirQualityViewModel(0);
  if ((sub_1000E85A4() & 1) == 0 || *(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)) || (sub_1000E8E74() & 1) == 0)
  {
    return 0;
  }

  return sub_1000E8F54();
}

uint64_t sub_100058A00(void *a1)
{
  v3 = v1;
  v5 = sub_100002A10(&qword_100131DD0, &qword_1000F2B38);
  sub_1000090D4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v24[-v9];
  sub_100008DA8(a1, a1[3]);
  sub_1000593FC();
  sub_1000EC6A4();
  v24[15] = 0;
  sub_1000E8634();
  sub_1000597AC();
  sub_100059450(v11, v12, &protocol conformance descriptor for UUID);
  sub_1000597C4(v3);
  if (!v2)
  {
    v13 = type metadata accessor for AirQualityViewModel(0);
    v14 = v13[5];
    v24[14] = 1;
    sub_1000E8604();
    sub_100059764();
    sub_100059450(v15, v16, &protocol conformance descriptor for Date);
    sub_1000597C4(v3 + v14);
    v24[13] = 2;
    sub_1000EC584();
    v17 = v13[7];
    v24[12] = 3;
    sub_1000E8E84();
    sub_100059794();
    sub_100059450(v18, v19, &protocol conformance descriptor for AirQualityScale);
    sub_1000597C4(v3 + v17);
    v20 = v13[8];
    v24[11] = 4;
    sub_1000E8F64();
    sub_10005977C();
    sub_100059450(v21, v22, &protocol conformance descriptor for AirQualityScaleCategory);
    sub_1000597C4(v3 + v20);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100058C8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v54 = sub_1000E8F64();
  sub_1000090D4();
  v52 = v3;
  __chkstk_darwin(v4);
  sub_100006A10();
  v55 = v6 - v5;
  v63 = sub_1000E8E84();
  sub_1000090D4();
  v57 = v7;
  __chkstk_darwin(v8);
  sub_100006A10();
  v56 = v10 - v9;
  v61 = sub_1000E8604();
  sub_1000090D4();
  v58 = v11;
  __chkstk_darwin(v12);
  sub_100006A10();
  v15 = v14 - v13;
  v16 = sub_1000E8634();
  sub_1000090D4();
  v59 = v17;
  __chkstk_darwin(v18);
  sub_100006A10();
  v62 = v20 - v19;
  v65 = sub_100002A10(&qword_100131DF0, &qword_1000F2B40);
  sub_1000090D4();
  v60 = v21;
  __chkstk_darwin(v22);
  v24 = &v51 - v23;
  v25 = type metadata accessor for AirQualityViewModel(0);
  __chkstk_darwin(v25);
  sub_100006A10();
  v28 = v27 - v26;
  sub_100008DA8(a1, a1[3]);
  sub_1000593FC();
  v64 = v24;
  v29 = v66;
  sub_1000EC694();
  if (v29)
  {
    return sub_100009068(a1);
  }

  v30 = v15;
  v31 = v61;
  v51 = v25;
  v66 = v28;
  v32 = v63;
  v71 = 0;
  sub_1000597AC();
  sub_100059450(v33, v34, &protocol conformance descriptor for UUID);
  v35 = v62;
  sub_1000EC514();
  (*(v59 + 32))(v66, v35, v16);
  v70 = 1;
  sub_100059764();
  sub_100059450(v36, v37, &protocol conformance descriptor for Date);
  v38 = v30;
  v39 = v31;
  sub_1000597F0();
  v40 = v51;
  (*(v58 + 32))(v66 + *(v51 + 20), v38, v39);
  v69 = 2;
  v62 = 0;
  *(v66 + *(v40 + 24)) = sub_1000EC504();
  v68 = 3;
  sub_100059794();
  sub_100059450(v41, v42, &protocol conformance descriptor for AirQualityScale);
  v43 = v56;
  sub_1000EC514();
  (*(v57 + 32))(v66 + *(v40 + 28), v43, v32);
  v67 = 4;
  sub_10005977C();
  sub_100059450(v44, v45, &protocol conformance descriptor for AirQualityScaleCategory);
  v46 = v54;
  sub_1000597F0();
  v47 = sub_1000597E4();
  v48(v47);
  v49 = v66;
  (*(v52 + 32))(v66 + *(v51 + 32), v55, v46);
  sub_100059498(v49, v53);
  sub_100009068(a1);
  return sub_1000594FC(v49);
}

uint64_t sub_1000592B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100058714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000592E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000588B4();
  *a1 = result;
  return result;
}

uint64_t sub_100059308(uint64_t a1)
{
  v2 = sub_1000593FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100059344(uint64_t a1)
{
  v2 = sub_1000593FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000593FC()
{
  result = qword_100131DD8;
  if (!qword_100131DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131DD8);
  }

  return result;
}

uint64_t sub_100059450(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100059498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQualityViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000594FC(uint64_t a1)
{
  v2 = type metadata accessor for AirQualityViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AirQualityViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100059624);
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

unint64_t sub_100059660()
{
  result = qword_100131E08;
  if (!qword_100131E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131E08);
  }

  return result;
}

unint64_t sub_1000596B8()
{
  result = qword_100131E10;
  if (!qword_100131E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131E10);
  }

  return result;
}

unint64_t sub_100059710()
{
  result = qword_100131E18;
  if (!qword_100131E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131E18);
  }

  return result;
}

uint64_t sub_1000597C4(uint64_t a1)
{

  return sub_1000EC594();
}

void *sub_1000597F0()
{

  return sub_1000EC514();
}

uint64_t sub_100059810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = sub_100002A10(&qword_100131E20, &qword_1000F2CD8);
  sub_1000090D4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  sub_100002A10(&qword_100131E28, &qword_1000F2CE0);
  sub_1000090D4();
  v51 = v11;
  v52 = v12;
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  sub_100002A10(&qword_100131E30, &unk_1000F2CE8);
  sub_1000090D4();
  v53 = v15;
  v54 = v16;
  __chkstk_darwin(v15);
  v50 = &v49 - v17;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v56 = sub_1000D88B8(0, a1, a2);
  type metadata accessor for WindContentView(0);
  sub_100059E34(&qword_100131E38, type metadata accessor for WindContentView, &unk_1000F9978);
  sub_100059E34(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider, &unk_1000FAB40);
  sub_1000EBCD4();
  v18 = sub_1000EA354();
  v22 = sub_100015CA8(v18, v19, v20, v21);
  v24 = v23;
  LOBYTE(a1) = v25;
  v26 = sub_100059E7C();
  sub_1000EA474();
  sub_1000058EC(v22, v24, a1 & 1);

  (*(v7 + 8))(v10, v5);
  v27 = sub_1000EA354();
  v31 = sub_100015CA8(v27, v28, v29, v30);
  v33 = v32;
  LOBYTE(v10) = v34;
  v56 = v5;
  v57 = v26;
  sub_100015C78();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v50;
  v36 = v51;
  sub_1000EA444();
  sub_1000058EC(v31, v33, v10 & 1);

  (*(v52 + 8))(v14, v36);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v38 = sub_1000EBC44();
  sub_1000090D4();
  v40 = v39;
  v42 = *(v41 + 72);
  v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1000F03E0;
  v45 = v44 + v43;
  v46 = *(v40 + 104);
  v46(v45, enum case for WidgetFamily.accessoryCircular(_:), v38);
  v46(v45 + v42, enum case for WidgetFamily.accessoryInline(_:), v38);
  v56 = v36;
  v57 = OpaqueTypeConformance2;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v47 = v53;
  sub_1000EA454();

  return (*(v54 + 8))(v37, v47);
}

uint64_t sub_100059D38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for WindContentView(0);
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_100059DFC@<X0>(void *a1@<X8>)
{
  result = sub_100059DB4();
  *a1 = 0xD000000000000023;
  a1[1] = v3;
  return result;
}

uint64_t sub_100059E34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100059E7C()
{
  result = qword_100131E40;
  if (!qword_100131E40)
  {
    sub_100002ABC(&qword_100131E20, &qword_1000F2CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131E40);
  }

  return result;
}

uint64_t sub_100059EE4()
{
  sub_100002ABC(&qword_100131E30, &unk_1000F2CE8);
  sub_100002ABC(&qword_100131E28, &qword_1000F2CE0);
  sub_100002ABC(&qword_100131E20, &qword_1000F2CD8);
  sub_100059E7C();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100059FC0(uint64_t a1, unsigned int *a2)
{
  v42 = a2;
  v46 = a1;
  sub_1000E8734();
  sub_1000090D4();
  v43 = v3;
  v44 = v2;
  __chkstk_darwin(v2);
  sub_100006A10();
  v41 = v5 - v4;
  v6 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - v7;
  v47 = sub_1000E8604();
  sub_1000090D4();
  v40 = v9;
  __chkstk_darwin(v10);
  sub_100006A10();
  v45 = v12 - v11;
  v13 = sub_1000E8784();
  sub_1000090D4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100006A10();
  v19 = v18 - v17;
  v20 = sub_100002A10(&qword_100131E48, &qword_1000F2D28);
  __chkstk_darwin(v20 - 8);
  v22 = &v40 - v21;
  v23 = sub_1000E8754();
  sub_1000090D4();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_100006A10();
  v29 = v28 - v27;
  sub_1000E83D4();
  if (sub_100005B30(v22, 1, v23) == 1)
  {
    v30 = &qword_100131E48;
    v31 = &qword_1000F2D28;
    v32 = v22;
  }

  else
  {
    (*(v25 + 32))(v29, v22, v23);
    (*(v15 + 16))(v19, v46, v13);
    sub_1000E8724();
    sub_1000E83C4();
    v33 = v47;
    if (sub_100005B30(v8, 1, v47) != 1)
    {
      v35 = v40;
      (*(v40 + 32))(v45, v8, v33);
      v36 = v43;
      v37 = v41;
      v38 = v44;
      (*(v43 + 104))(v41, *v42, v44);
      v34 = sub_1000E8744();
      (*(v36 + 8))(v37, v38);
      (*(v35 + 8))(v45, v33);
      (*(v25 + 8))(v29, v23);
      return v34;
    }

    (*(v25 + 8))(v29, v23);
    v30 = &qword_10012F048;
    v31 = &qword_1000EEF30;
    v32 = v8;
  }

  sub_10000D3A8(v32, v30, v31);
  return 0;
}

uint64_t sub_10005A408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForecastEntry(0);

  return sub_100005B30(a1, a2, v4);
}

uint64_t sub_10005A464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForecastEntry(0);

  return sub_1000028A0(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PrecipitationChartView(uint64_t a1)
{
  result = qword_100131EA8;
  if (!qword_100131EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005A4FC(uint64_t a1)
{
  result = type metadata accessor for ForecastEntry(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10005A584@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v41 = sub_1000EA4E4();
  sub_1000090D4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002A10(&qword_100131F50, &qword_1000F2F28);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  sub_100002A10(&qword_100131F58, &qword_1000F2F30);
  sub_1000090D4();
  v42 = v13;
  v43 = v12;
  sub_100009204();
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v44 = sub_100002A10(&qword_100131F60, &qword_1000F2F38);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v20 = sub_1000E9F64();
  sub_100008CB8(v20, qword_100145C10);
  v21 = sub_1000E9F44();
  v22 = sub_1000EC1B4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Precipitation chart rendering", v23, 2u);
  }

  *v11 = sub_1000EA3D4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v24 = sub_100002A10(&qword_100131F68, &qword_1000F2F40);
  sub_10005AA14(v2, &v11[*(v24 + 44)]);
  sub_1000EA4C4();
  v40 = v2;
  v25 = sub_100006988(&qword_100131F70, &qword_100131F50, &qword_1000F2F28, &protocol conformance descriptor for VStack<A>);
  sub_1000EA914();
  (*(v4 + 8))(v7, v41);
  sub_100008E48(v11, &qword_100131F50, &qword_1000F2F28);
  sub_1000EA354();
  v26 = sub_1000EA7F4();
  v28 = v27;
  v30 = v29;
  v46 = v8;
  v47 = v25;
  swift_getOpaqueTypeConformance2();
  v31 = v43;
  sub_1000EA884();
  sub_1000058EC(v26, v28, v30 & 1);

  (*(v42 + 8))(v16, v31);
  v32 = v40 + *(type metadata accessor for ForecastEntry(0) + 24);
  v33 = *(v32 + 40);
  v46 = *(v32 + 32);
  v47 = v33;
  sub_100005898();

  v34 = sub_1000EA814();
  v36 = v35;
  LOBYTE(v28) = v37;
  sub_1000EA034();
  sub_1000058EC(v34, v36, v28 & 1);

  return sub_100008E48(v19, &qword_100131F60, &qword_1000F2F38);
}

uint64_t sub_10005AA14@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v96 = a1;
  v102 = a2;
  v2 = sub_100002A10(&qword_100131F78, &qword_1000F2F48);
  __chkstk_darwin(v2 - 8);
  v86 = &v83 - v3;
  v101 = sub_100002A10(&qword_100131F80, &qword_1000F2F50);
  __chkstk_darwin(v101);
  v87 = &v83 - v4;
  v5 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  __chkstk_darwin(v5 - 8);
  v90 = &v83 - v6;
  v91 = sub_1000EBAF4();
  v85 = *(v91 - 8);
  v7 = __chkstk_darwin(v91);
  v83 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v84 = &v83 - v9;
  v10 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  __chkstk_darwin(v10 - 8);
  v95 = &v83 - v11;
  v88 = type metadata accessor for AggregateWeatherViewModel(0);
  __chkstk_darwin(v88);
  v89 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002A10(&qword_100131F88, &unk_1000F2F58);
  v14 = __chkstk_darwin(v13 - 8);
  v100 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v104 = &v83 - v16;
  v94 = sub_100002A10(&qword_10012F6B0, &unk_1000EFB80);
  __chkstk_darwin(v94);
  v103 = &v83 - v17;
  v99 = sub_100002A10(&qword_100131F90, &qword_1000F2F68);
  v98 = *(v99 - 8);
  v18 = __chkstk_darwin(v99);
  v97 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v105 = &v83 - v20;
  sub_1000EA354();
  v21 = sub_1000EA7F4();
  v23 = v22;
  v25 = v24;
  v26 = [objc_opt_self() whiteColor];
  v27 = [v26 colorWithAlphaComponent:0.5];

  sub_1000EAA14();
  v28 = sub_1000EA784();
  v30 = v29;
  v32 = v31;

  sub_1000058EC(v21, v23, v25 & 1);

  sub_1000EA6E4();
  v33 = sub_1000EA7D4();
  v35 = v34;
  v37 = v36;

  v38 = v30;
  v39 = v103;
  sub_1000058EC(v28, v38, v32 & 1);

  sub_1000EA664();
  v40 = sub_1000EA714();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_1000058EC(v33, v35, v37 & 1);

  v106 = v40;
  v107 = v42;
  v47 = v44 & 1;
  LOBYTE(v108) = v44 & 1;
  v109 = v46;
  v48 = enum case for DynamicTypeSize.large(_:);
  v49 = sub_1000E9FF4();
  (*(*(v49 - 8) + 104))(v39, v48, v49);
  sub_10005C21C(&qword_10012F6F0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_1000EBE24();
  if (result)
  {
    sub_100006988(&qword_10012F6C0, &qword_10012F6B0, &unk_1000EFB80, &protocol conformance descriptor for PartialRangeThrough<A>);
    v51 = v105;
    sub_1000EA8B4();
    sub_100008E48(v39, &qword_10012F6B0, &unk_1000EFB80);
    sub_1000058EC(v40, v42, v47);

    sub_1000EABC4();
    sub_1000E9FC4();
    v103 = v106;
    v94 = v108;
    v93 = v110;
    v92 = v111;
    v117 = 1;
    v116 = v107;
    v115 = v109;
    v52 = v95;
    sub_10000FB4C(v95);
    v53 = type metadata accessor for WeatherDataViewModel(0);
    v54 = v51;
    if (sub_100005B30(v52, 1, v53) == 1)
    {
      sub_100008E48(v52, &qword_10012F038, &qword_1000F0F90);
      v55 = 1;
      v56 = v101;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v56 = v101;
      if (EnumCaseMultiPayload)
      {
        sub_10000DBCC(v52, type metadata accessor for WeatherDataViewModel);
      }

      else
      {
        v58 = v89;
        sub_10001D31C(v52, v89);
        v59 = v90;
        sub_10000EBC4(v58 + *(v88 + 40), v90, &qword_1001309D8, &qword_1000F10F0);
        v60 = v91;
        if (sub_100005B30(v59, 1, v91) != 1)
        {
          v74 = v85;
          v75 = v84;
          (*(v85 + 32))(v84, v59, v60);
          (*(v74 + 16))(v83, v75, v60);
          v112 = 0u;
          v113 = 0u;
          v114 = 0;
          v76 = sub_100002A10(&qword_100131FA0, &qword_1000F2F78);
          sub_1000028A0(v86, 1, 1, v76);
          v77 = v87;
          sub_1000EB894();
          (*(v74 + 8))(v75, v60);
          sub_10000DBCC(v58, type metadata accessor for AggregateWeatherViewModel);
          KeyPath = swift_getKeyPath();
          v79 = (v77 + *(v56 + 36));
          v80 = *(sub_100002A10(&qword_100131FA8, &qword_1000F2FB0) + 28);
          v81 = enum case for ColorScheme.dark(_:);
          v82 = sub_1000E9F84();
          (*(*(v82 - 8) + 104))(v79 + v80, v81, v82);
          *v79 = KeyPath;
          sub_10005C28C(v77, v104);
          v55 = 0;
          goto LABEL_9;
        }

        sub_10000DBCC(v58, type metadata accessor for AggregateWeatherViewModel);
        sub_100008E48(v59, &qword_1001309D8, &qword_1000F10F0);
      }

      v55 = 1;
    }

LABEL_9:
    v61 = v104;
    sub_1000028A0(v104, v55, 1, v56);
    v62 = v98;
    v63 = *(v98 + 16);
    v64 = v97;
    v65 = v99;
    v63(v97, v54, v99);
    v66 = v117;
    v67 = v116;
    LODWORD(v101) = v115;
    v68 = v100;
    sub_10000EBC4(v61, v100, &qword_100131F88, &unk_1000F2F58);
    v69 = v102;
    v63(v102, v64, v65);
    v70 = sub_100002A10(&qword_100131F98, &qword_1000F2F70);
    v71 = &v69[*(v70 + 48)];
    *v71 = 0;
    v71[8] = v66;
    *(v71 + 2) = v103;
    v71[24] = v67;
    *(v71 + 4) = v94;
    v71[40] = v101;
    v72 = v92;
    *(v71 + 6) = v93;
    *(v71 + 7) = v72;
    sub_10000EBC4(v68, &v69[*(v70 + 64)], &qword_100131F88, &unk_1000F2F58);
    sub_100008E48(v61, &qword_100131F88, &unk_1000F2F58);
    v73 = *(v62 + 8);
    v73(v105, v65);
    sub_100008E48(v68, &qword_100131F88, &unk_1000F2F58);
    return (v73)(v64, v65);
  }

  __break(1u);
  return result;
}

uint64_t sub_10005B5B8(uint64_t a1)
{
  v2 = sub_1000E9F84();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000EA114();
}

uint64_t sub_10005B6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v33 = a3;
  v9 = sub_100002A10(&qword_100131F30, &qword_1000F2EE0);
  __chkstk_darwin(v9);
  v11 = v32 - v10;
  v12 = sub_100002A10(&qword_100131F28, &qword_1000F2EC8);
  v34 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v32 - v13;
  v35 = sub_100002A10(&qword_100131F18, &qword_1000F2EC0);
  v15 = __chkstk_darwin(v35);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v32 - v19;
  if (a4)
  {
    v32[1] = a5;
    __chkstk_darwin(v18);
    v32[-4] = a1;
    v32[-3] = a2;
    v32[0] = a2;
    sub_100002A10(&qword_100131F38, &qword_1000F2EE8);
    sub_10005C15C();
    sub_1000EAA74();
    sub_1000EA354();
    v31 = 2;
    v30 = 100;
    v21 = sub_1000EA7F4();
    v23 = v22;
    v33 = v9;
    v25 = v24;
    sub_100006988(&qword_100131F20, &qword_100131F28, &qword_1000F2EC8, &protocol conformance descriptor for Label<A, B>);
    sub_1000EA8C4();
    sub_1000058EC(v21, v23, v25 & 1);

    (*(v34 + 8))(v14, v12);
    v36 = a1;
    v37 = v32[0];
    sub_100005898();
    sub_1000EA064();
    sub_100008E48(v17, &qword_100131F18, &qword_1000F2EC0);
    sub_10000EBC4(v20, v11, &qword_100131F18, &qword_1000F2EC0);
    swift_storeEnumTagMultiPayload();
    sub_10005C064();
    sub_1000EA4A4();
    return sub_100008E48(v20, &qword_100131F18, &qword_1000F2EC0);
  }

  else
  {
    v36 = a1;
    v37 = a2;
    sub_100005898();

    *v11 = sub_1000EA814();
    *(v11 + 1) = v27;
    v11[16] = v28 & 1;
    *(v11 + 3) = v29;
    swift_storeEnumTagMultiPayload();
    sub_10005C064();
    return sub_1000EA4A4();
  }
}

uint64_t sub_10005BB04@<X0>(uint64_t a3@<X8>)
{
  sub_100005898();

  result = sub_1000EA814();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10005BB70@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000EAA24();
  v3 = a1 + *(sub_100002A10(&qword_100131F38, &qword_1000F2EE8) + 36);
  v4 = *(sub_100002A10(&qword_1001319B0, &qword_1000F2EF0) + 28);
  v5 = enum case for Image.Scale.small(_:);
  v6 = sub_1000EAA64();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

uint64_t sub_10005BC50(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1000EA6A4();
  sub_1000090D4();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002A10(&qword_100131EE0, &qword_1000F2E48);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  sub_10005B6A0(a1, a2, a3, a4, &v25 - v16);
  v18 = sub_1000EA9C4();
  KeyPath = swift_getKeyPath();
  v20 = &v17[*(sub_100002A10(&qword_100131EE8, &qword_1000F2E80) + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  (*(v10 + 104))(v13, enum case for Font.Leading.tight(_:), v8);
  v21 = sub_1000EA6D4();
  (*(v10 + 8))(v13, v8);
  v22 = swift_getKeyPath();
  v23 = &v17[*(v14 + 36)];
  *v23 = v22;
  v23[1] = v21;
  sub_10005BE68();
  sub_1000EA894();
  return sub_100008E48(v17, &qword_100131EE0, &qword_1000F2E48);
}

unint64_t sub_10005BE68()
{
  result = qword_100131EF0;
  if (!qword_100131EF0)
  {
    sub_100002ABC(&qword_100131EE0, &qword_1000F2E48);
    sub_10005BF20();
    sub_100006988(&qword_10012FA60, &qword_10012FA68, &unk_1000F2760, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131EF0);
  }

  return result;
}

unint64_t sub_10005BF20()
{
  result = qword_100131EF8;
  if (!qword_100131EF8)
  {
    sub_100002ABC(&qword_100131EE8, &qword_1000F2E80);
    sub_10005BFD8();
    sub_100006988(&qword_10012FA90, &qword_10012FA98, &unk_1000F2ED0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131EF8);
  }

  return result;
}

unint64_t sub_10005BFD8()
{
  result = qword_100131F00;
  if (!qword_100131F00)
  {
    sub_100002ABC(&qword_100131F08, &qword_1000F2EB8);
    sub_10005C064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131F00);
  }

  return result;
}

unint64_t sub_10005C064()
{
  result = qword_100131F10;
  if (!qword_100131F10)
  {
    sub_100002ABC(&qword_100131F18, &qword_1000F2EC0);
    sub_100006988(&qword_100131F20, &qword_100131F28, &qword_1000F2EC8, &protocol conformance descriptor for Label<A, B>);
    sub_10005C21C(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131F10);
  }

  return result;
}

unint64_t sub_10005C15C()
{
  result = qword_100131F40;
  if (!qword_100131F40)
  {
    sub_100002ABC(&qword_100131F38, &qword_1000F2EE8);
    sub_100006988(&qword_100131F48, &qword_1001319B0, &qword_1000F2EF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131F40);
  }

  return result;
}

uint64_t sub_10005C21C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005C28C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100131F80, &qword_1000F2F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005C300()
{
  result = qword_100131FB0;
  if (!qword_100131FB0)
  {
    sub_100002ABC(&qword_100131FB8, &qword_1000F2FB8);
    sub_10005BE68();
    sub_10005C21C(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131FB0);
  }

  return result;
}

unint64_t sub_10005C3C0()
{
  result = qword_100131FC0;
  if (!qword_100131FC0)
  {
    sub_100002ABC(&qword_100131F60, &qword_1000F2F38);
    sub_100002ABC(&qword_100131F50, &qword_1000F2F28);
    sub_100006988(&qword_100131F70, &qword_100131F50, &qword_1000F2F28, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_10005C21C(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131FC0);
  }

  return result;
}

uint64_t sub_10005C560()
{
  v0 = sub_1000E93C4();
  sub_1000090D4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for WidgetNames.DataDense(_:), v0);
  v6 = sub_1000E93B4();
  (*(v2 + 8))(v5, v0);
  return v6;
}

uint64_t sub_10005C67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  sub_100002A10(&qword_100131FC8, &qword_1000F3038);
  sub_1000090D4();
  v56 = v5;
  v57 = v6;
  sub_100009204();
  __chkstk_darwin(v7);
  v9 = &v56 - v8;
  v60 = sub_100002A10(&qword_100131FD0, &qword_1000F3040);
  sub_1000090D4();
  v62 = v10;
  sub_100009204();
  __chkstk_darwin(v11);
  v13 = &v56 - v12;
  sub_100002A10(&qword_100131FD8, &qword_1000F3048);
  sub_1000090D4();
  v63 = v14;
  v64 = v15;
  sub_100009204();
  __chkstk_darwin(v16);
  v58 = &v56 - v17;
  sub_100002A10(&qword_100131FE0, &qword_1000F3050);
  sub_1000090D4();
  v65 = v18;
  v66 = v19;
  sub_100009204();
  __chkstk_darwin(v20);
  v61 = &v56 - v21;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v22 = sub_1000D88B8(5, a1, a2);
  type metadata accessor for WeatherIntent();
  v68 = v22;
  v59 = v22;
  type metadata accessor for DataDenseContentView(0);
  sub_10005D1CC(&qword_100131FE8, type metadata accessor for DataDenseContentView, &unk_1000F3838);
  sub_10005D1CC(&qword_10012F6C8, type metadata accessor for WeatherTimelineProvider, &unk_1000FAAC8);

  sub_1000EBCC4();
  v23 = sub_1000EA354();
  v27 = sub_100015CA8(v23, v24, v25, v26);
  v29 = v28;
  v31 = v30;
  v32 = sub_10005CE48();
  v33 = v56;
  sub_1000EA474();
  sub_1000058EC(v27, v29, v31 & 1);

  (*(v57 + 8))(v9, v33);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v34 = sub_1000EBC44();
  sub_1000090D4();
  v36 = v35;
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1000EFAD0;
  (*(v36 + 104))(v38 + v37, enum case for WidgetFamily.systemSmall(_:), v34);
  v68 = v33;
  v69 = v32;
  sub_100015C78();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v58;
  v41 = v60;
  sub_1000EA454();

  v42 = v41;
  (*(v62 + 8))(v13, v41);
  v43 = sub_1000EA354();
  v47 = sub_100015CA8(v43, v44, v45, v46);
  v49 = v48;
  LOBYTE(v37) = v50;
  v68 = v42;
  v69 = OpaqueTypeConformance2;
  sub_100015C48();
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v61;
  v53 = v63;
  sub_1000EA444();
  sub_1000058EC(v47, v49, v37 & 1);

  (*(v64 + 8))(v40, v53);
  v68 = v53;
  v69 = v51;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v54 = v65;
  sub_1000EA494();

  return (*(v66 + 8))(v52, v54);
}

uint64_t sub_10005CC7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for DataDenseContentView(0);
  sub_1000159C8(a1, a2 + v4[9]);
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[5]) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E0, &unk_1000FA260);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *(a2 + v4[7]) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[8]) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = KeyPath;
  v6[8] = 0;
  v7 = v4[10];
  v8 = [objc_opt_self() mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  result = sub_100002750(v10, v12);
  *(a2 + v7) = result;
  return result;
}

uint64_t sub_10005CE18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005C560();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10005CE48()
{
  result = qword_100131FF0;
  if (!qword_100131FF0)
  {
    sub_100002ABC(&qword_100131FC8, &qword_1000F3038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131FF0);
  }

  return result;
}

uint64_t sub_10005CFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_10005D068()
{
  sub_1000EA264();
  sub_10005D1CC(&qword_100131FF8, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_1000EA2D4();
  return v1;
}

uint64_t sub_10005D0E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10005D068();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10005D114@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10005D068();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10005D1CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005D214()
{
  v0 = sub_100002ABC(&qword_100131FE0, &qword_1000F3050);
  v1 = sub_100002ABC(&qword_100131FD8, &qword_1000F3048);
  v2 = sub_100002ABC(&qword_100131FD0, &qword_1000F3040);
  v3 = sub_100002ABC(&qword_100131FC8, &qword_1000F3038);
  sub_10005CE48();
  sub_100015C78();
  sub_100015CC8(v4, v5, v6, v7, v8, v9, v10, v11, v3);
  sub_100015C48();
  sub_100015CC8(v12, v13, v14, v15, v16, v17, v18, v19, v2);
  sub_100015C60();
  v35 = sub_100015CC8(v20, v21, v22, v23, v24, v25, v26, v27, v1);
  return sub_100015CC8(v35, &opaque type descriptor for <<opaque return type of WidgetConfiguration.enableContentMarginsForFirstParty(_:)>>, v28, v29, v30, v31, v32, v33, v0);
}

uint64_t sub_10005D2E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001000FCAB0 == a2;
  if (v4 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x63736544676E6F6CLL && a2 == 0xEF6E6F6974706972;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001000FCAD0 == a2;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7645657669746361 && a2 == 0xEB00000000746E65;
        if (v8 || (sub_1000EC5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001000FCAF0 == a2;
          if (v9 || (sub_1000EC5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C6174537369 && a2 == 0xE700000000000000;
            if (v10 || (sub_1000EC5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x80000001000FCB10 == a2;
              if (v11 || (sub_1000EC5D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1802398060 && a2 == 0xE400000000000000;
                if (v12 || (sub_1000EC5D4() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000011 && 0x80000001000FCB30 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1000EC5D4();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_10005D5BC(char a1)
{
  result = 0x63736544676E6F6CLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0x7645657669746361;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x656C6174537369;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 1802398060;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_10005D700(uint64_t a1, uint64_t a2)
{
  v6 = sub_1000E8524();
  sub_1000090D4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002A10(&qword_100130EC8, &qword_1000F1670);
  sub_100009204();
  __chkstk_darwin(v12);
  sub_100060440();
  v13 = sub_100002A10(&qword_100130ED0, &unk_1000F1678);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v14);
  sub_100013D48();
  v15 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v15 && (sub_1000EC5D4() & 1) == 0)
  {
    goto LABEL_29;
  }

  v16 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v16 && (sub_1000EC5D4() & 1) == 0)
  {
    goto LABEL_29;
  }

  v17 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v17 && (sub_1000EC5D4() & 1) == 0 || !static ActiveEvent.__derived_struct_equals(_:_:)(*(a1 + 48), *(a2 + 48)) || *(a1 + 50) != *(a2 + 50) || *(a1 + 51) != *(a2 + 51) || *(a1 + 52) != *(a2 + 52))
  {
    goto LABEL_29;
  }

  v18 = type metadata accessor for WidgetContext(0);
  v19 = *(v18 + 44);
  v20 = *(v13 + 48);
  sub_10005FA90(a1 + v19, v2);
  sub_10005FA90(a2 + v19, v2 + v20);
  sub_1000199F0(v2);
  if (v15)
  {
    sub_1000199F0(v2 + v20);
    if (v15)
    {
      sub_100008E48(v2, &qword_100130EC8, &qword_1000F1670);
LABEL_32:
      v28 = *(v18 + 48);
      v29 = *(a1 + v28 + 8);
      v30 = *(a2 + v28 + 8);
      v24 = sub_1000EAB74() & (v29 ^ v30 ^ 1);
      return v24 & 1;
    }

    goto LABEL_28;
  }

  sub_10005FA90(v2, v3);
  sub_1000199F0(v2 + v20);
  if (v21)
  {
    v22 = sub_100060428();
    v23(v22, v6);
LABEL_28:
    sub_100008E48(v2, &qword_100130ED0, &unk_1000F1678);
    goto LABEL_29;
  }

  (*(v8 + 32))(v11, v2 + v20, v6);
  sub_10005FD80(&qword_100130EF0, &protocol conformance descriptor for URL);
  v26 = sub_1000EBE24();
  v27 = *(v8 + 8);
  v27(v11, v6);
  v27(v3, v6);
  sub_100008E48(v2, &qword_100130EC8, &qword_1000F1670);
  if (v26)
  {
    goto LABEL_32;
  }

LABEL_29:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_10005DA50(void *a1)
{
  sub_100002A10(&qword_100132168, &qword_1000F35F8);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v3);
  sub_10006040C(a1);
  sub_10005FB00();
  sub_100060434();
  sub_1000EC6A4();
  sub_100019A80();
  sub_1000EC564();
  if (!v1)
  {
    sub_100019A80();
    sub_1000EC564();
    sub_100019A80();
    sub_1000EC564();
    sub_10005FD2C();
    sub_1000603F0();
    sub_1000EC594();
    sub_1000603F0();
    sub_1000EC574();
    sub_1000603F0();
    sub_1000EC574();
    sub_1000603F0();
    sub_1000EC574();
    type metadata accessor for WidgetContext(0);
    sub_1000E8524();
    sub_10005FD80(&qword_100130F88, &protocol conformance descriptor for URL);
    sub_100019A80();
    sub_1000EC554();
    sub_10005FDC4();
    sub_1000603F0();
    sub_1000EC594();
  }

  v4 = sub_100060450();
  return v5(v4);
}

void sub_10005DCF4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_100002A10(&qword_100130EC8, &qword_1000F1670);
  sub_100009204();
  __chkstk_darwin(v5);
  sub_100013D48();
  sub_100002A10(&qword_100132148, &qword_1000F35F0);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v6);
  v22 = type metadata accessor for WidgetContext(0);
  sub_1000069E4();
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v23 = a1;
  sub_100008DA8(a1, v10);
  sub_10005FB00();
  sub_1000EC694();
  if (v2)
  {
    sub_100009068(v23);
  }

  else
  {
    v11 = v3;
    v12 = v21;
    LOBYTE(v24) = 0;
    sub_100060400();
    *v9 = sub_1000EC4E4();
    *(v9 + 1) = v13;
    sub_1000603C8(1);
    *(v9 + 2) = sub_1000EC4E4();
    *(v9 + 3) = v14;
    sub_1000603C8(2);
    *(v9 + 4) = sub_1000EC4E4();
    *(v9 + 5) = v15;
    v26 = 3;
    sub_10005FB54();
    sub_100060400();
    sub_1000EC514();
    *(v9 + 24) = v24;
    sub_1000603C8(4);
    v9[50] = sub_1000EC4F4() & 1;
    sub_1000603C8(5);
    v9[51] = sub_1000EC4F4() & 1;
    sub_1000603C8(6);
    v9[52] = sub_1000EC4F4() & 1;
    sub_1000E8524();
    LOBYTE(v24) = 7;
    sub_10005FD80(&qword_100131000, &protocol conformance descriptor for URL);
    sub_100060400();
    sub_1000EC4D4();
    sub_10005FBA8(v11, &v9[*(v22 + 44)]);
    v26 = 8;
    sub_10005FC18();
    sub_100060400();
    sub_1000EC514();
    v16 = sub_1000603E0();
    v17(v16);
    v18 = v25;
    v19 = &v9[*(v22 + 48)];
    *v19 = v24;
    v19[8] = v18;
    sub_10005FC6C(v9, v12);
    sub_100009068(v23);
    sub_10005FCD0(v9);
  }
}

uint64_t sub_10005E18C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656964617267 && a2 == 0xE800000000000000;
  if (v4 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F43776F4C7369 && a2 == 0xED00007473617274)
  {

    return 1;
  }

  else
  {
    v7 = sub_1000EC5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10005E25C(char a1)
{
  if (a1)
  {
    return 0x6E6F43776F4C7369;
  }

  else
  {
    return 0x746E656964617267;
  }
}

uint64_t sub_10005E2D8(void *a1, uint64_t a2, char a3)
{
  v6 = sub_100002A10(&qword_100132198, &qword_1000F3608);
  sub_1000090D4();
  v8 = v7;
  sub_100009204();
  __chkstk_darwin(v9);
  sub_100013D48();
  sub_100008DA8(a1, a1[3]);
  sub_10005FE18();
  sub_1000EC6A4();
  sub_10005FEC0();
  sub_1000EC594();
  if (!v3)
  {
    sub_1000EC574();
  }

  return (*(v8 + 8))(v4, v6);
}

uint64_t sub_10005E444(void *a1)
{
  v3 = sub_100002A10(&qword_100132180, &qword_1000F3600);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v4);
  sub_100060440();
  v5 = a1[3];
  sub_10006040C(a1);
  sub_10005FE18();
  sub_100060434();
  sub_1000EC694();
  if (!v1)
  {
    sub_10005FE6C();
    sub_1000EC514();
    v5 = v9;
    sub_1000EC4F4();
    v7 = sub_100060428();
    v8(v7, v3);
  }

  sub_100009068(a1);
  return v5;
}

uint64_t sub_10005E5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005D2E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005E60C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10005D5B4();
  *a1 = result;
  return result;
}

uint64_t sub_10005E634(uint64_t a1)
{
  v2 = sub_10005FB00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E670(uint64_t a1)
{
  v2 = sub_10005FB00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005E6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005E18C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005E710(uint64_t a1)
{
  v2 = sub_10005FE18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E74C(uint64_t a1)
{
  v2 = sub_10005FE18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005E7A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10005E444(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t Gradient.init(from:)(void *a1)
{
  sub_100002A10(&qword_100132000, &qword_1000F3140);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v4);
  sub_100013D48();
  sub_10006040C(a1);
  sub_10005E998();
  sub_100060434();
  sub_1000EC694();
  if (!v2)
  {
    sub_100002A10(&qword_100132010, &qword_1000F3148);
    sub_10005EBA0(&qword_100132018, sub_10005E9EC, &protocol conformance descriptor for <A> [A]);
    sub_1000EC514();
    v1 = sub_1000EAB94();
    v6 = sub_100060460();
    v7(v6);
  }

  sub_100009068(a1);
  return v1;
}

unint64_t sub_10005E998()
{
  result = qword_100132008;
  if (!qword_100132008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132008);
  }

  return result;
}

unint64_t sub_10005E9EC()
{
  result = qword_100132020;
  if (!qword_100132020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132020);
  }

  return result;
}

uint64_t Gradient.encode(to:)(void *a1, uint64_t a2)
{
  sub_100002A10(&qword_100132028, &qword_1000F3150);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v3);
  sub_100013D48();
  sub_10006040C(a1);
  sub_10005E998();
  sub_100060434();
  sub_1000EC6A4();
  sub_100002A10(&qword_100132010, &qword_1000F3148);
  sub_10005EBA0(&qword_100132030, sub_10005EC18, &protocol conformance descriptor for <A> [A]);
  sub_1000EC594();
  v4 = sub_100060460();
  return v5(v4);
}

uint64_t sub_10005EBA0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002ABC(&qword_100132010, &qword_1000F3148);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005EC18()
{
  result = qword_100132038;
  if (!qword_100132038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132038);
  }

  return result;
}

BOOL sub_10005EC6C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100125020;
  v6._object = a2;
  v4 = sub_1000EC494(v3, v6);

  return v4 != 0;
}

BOOL sub_10005ECD4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005EC6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10005ED08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005ECB4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_10005ED34@<W0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005EC6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005ED60(uint64_t a1)
{
  v2 = sub_10005E998();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005ED9C(uint64_t a1)
{
  v2 = sub_10005E998();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005EDD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Gradient.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

double Gradient.Stop.init(from:)(void *a1)
{
  v4 = sub_100002A10(&qword_100132040, &qword_1000F3158);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v5);
  sub_100060440();
  sub_10006040C(a1);
  sub_10005EFEC();
  sub_100060434();
  sub_1000EC694();
  if (!v1)
  {
    v6 = sub_1000EC4E4();
    sub_10000ED38(v6, v7);
    sub_10005F040();
    sub_1000EC514();
    sub_1000EAB84();
    v2 = v9;
    v10 = sub_100060428();
    v11(v10, v4);
  }

  sub_100009068(a1);
  return v2;
}

unint64_t sub_10005EFEC()
{
  result = qword_100132048;
  if (!qword_100132048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132048);
  }

  return result;
}

unint64_t sub_10005F040()
{
  result = qword_100132050;
  if (!qword_100132050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132050);
  }

  return result;
}

void Gradient.Stop.encode(to:)(void *a1, uint64_t a2, double a3)
{
  sub_100002A10(&qword_100132058, &qword_1000F3160);
  sub_1000090D4();
  sub_100009204();
  __chkstk_darwin(v5);
  sub_10006040C(a1);
  sub_10005EFEC();
  sub_100060434();
  sub_1000EC6A4();
  sub_1000EA984();
  sub_100019A80();
  sub_1000EC564();
  if (v3)
  {
    v6 = sub_100060450();
    v7(v6);
  }

  else
  {

    sub_10005F214();
    sub_1000603F0();
    sub_1000EC594();
    v8 = sub_100060450();
    v9(v8);
  }
}

unint64_t sub_10005F214()
{
  result = qword_100132060;
  if (!qword_100132060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132060);
  }

  return result;
}

uint64_t sub_10005F268(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_100125058;
  v7._object = a2;
  v4 = sub_1000EC494(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005F2BC(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 7890280;
  }
}

uint64_t sub_10005F310@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005F268(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10005F340@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005F2BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10005F374@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005F268(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005F39C(uint64_t a1)
{
  v2 = sub_10005EFEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005F3D8(uint64_t a1)
{
  v2 = sub_10005EFEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10005F414(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = Gradient.Stop.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

_BYTE *_s10CodingKeysOwst_0(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10005F510);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10005F54C()
{
  result = qword_100132068;
  if (!qword_100132068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132068);
  }

  return result;
}

unint64_t sub_10005F5A4()
{
  result = qword_100132070;
  if (!qword_100132070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132070);
  }

  return result;
}

unint64_t sub_10005F5FC()
{
  result = qword_100132078;
  if (!qword_100132078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132078);
  }

  return result;
}

unint64_t sub_10005F654()
{
  result = qword_100132080;
  if (!qword_100132080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132080);
  }

  return result;
}

unint64_t sub_10005F6AC()
{
  result = qword_100132088;
  if (!qword_100132088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132088);
  }

  return result;
}

unint64_t sub_10005F704()
{
  result = qword_100132090;
  if (!qword_100132090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132090);
  }

  return result;
}

uint64_t sub_10005F76C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002A10(&qword_100130EC8, &qword_1000F1670);
    v9 = a1 + *(a3 + 44);

    return sub_100005B30(v9, a2, v8);
  }
}

uint64_t sub_10005F814(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002A10(&qword_100130EC8, &qword_1000F1670);
    v8 = v5 + *(a4 + 44);

    return sub_1000028A0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for WidgetContext(uint64_t a1)
{
  result = qword_1001320F0;
  if (!qword_1001320F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005F8EC(uint64_t a1)
{
  sub_10005F994(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10005F994(uint64_t a1)
{
  if (!qword_1001310C8)
  {
    sub_1000E8524();
    v1 = sub_1000EC364();
    if (!v2)
    {
      atomic_store(v1, &qword_1001310C8);
    }
  }
}

uint64_t sub_10005F9EC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10005FA00(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_10005FA40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005FA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100130EC8, &qword_1000F1670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005FB00()
{
  result = qword_100132150;
  if (!qword_100132150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132150);
  }

  return result;
}

unint64_t sub_10005FB54()
{
  result = qword_100132158;
  if (!qword_100132158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132158);
  }

  return result;
}

uint64_t sub_10005FBA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100130EC8, &qword_1000F1670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005FC18()
{
  result = qword_100132160;
  if (!qword_100132160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132160);
  }

  return result;
}

uint64_t sub_10005FC6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005FCD0(uint64_t a1)
{
  v2 = type metadata accessor for WidgetContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10005FD2C()
{
  result = qword_100132170;
  if (!qword_100132170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132170);
  }

  return result;
}

uint64_t sub_10005FD80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000E8524();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005FDC4()
{
  result = qword_100132178;
  if (!qword_100132178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132178);
  }

  return result;
}

unint64_t sub_10005FE18()
{
  result = qword_100132188;
  if (!qword_100132188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132188);
  }

  return result;
}

unint64_t sub_10005FE6C()
{
  result = qword_100132190;
  if (!qword_100132190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132190);
  }

  return result;
}

unint64_t sub_10005FEC0()
{
  result = qword_1001321A0;
  if (!qword_1001321A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001321A0);
  }

  return result;
}

_BYTE *sub_10005FF1C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10005FFE8);
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

uint64_t getEnumTagSinglePayload for WidgetContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WidgetContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x100060174);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000601B0()
{
  result = qword_1001321A8;
  if (!qword_1001321A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001321A8);
  }

  return result;
}

unint64_t sub_100060208()
{
  result = qword_1001321B0;
  if (!qword_1001321B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001321B0);
  }

  return result;
}

unint64_t sub_100060260()
{
  result = qword_1001321B8;
  if (!qword_1001321B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001321B8);
  }

  return result;
}

unint64_t sub_1000602B8()
{
  result = qword_1001321C0;
  if (!qword_1001321C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001321C0);
  }

  return result;
}

unint64_t sub_100060310()
{
  result = qword_1001321C8;
  if (!qword_1001321C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001321C8);
  }

  return result;
}

unint64_t sub_100060368()
{
  result = qword_1001321D0;
  if (!qword_1001321D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001321D0);
  }

  return result;
}

uint64_t sub_100060484(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  sub_100006A04();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_100002A10(&qword_100130570, &qword_1000F0D48);
    sub_100006A04();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      if (a2 == 254)
      {
        v14 = *(a1 + a3[6] + 8);
        if (v14 > 1)
        {
          return (v14 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      sub_100002A10(&qword_10012FE50, &qword_1000F0720);
      sub_100006A04();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v12 = a3[7];
      }

      else
      {
        sub_100002A10(&qword_10012ED98, &unk_1000F2440);
        sub_100006A04();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v12 = a3[8];
        }

        else
        {
          v8 = type metadata accessor for ForecastEntry(0);
          v12 = a3[9];
        }
      }
    }

    v9 = a1 + v12;
  }

  return sub_100005B30(v9, a2, v8);
}

void sub_100060650(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  sub_100006A04();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_100002A10(&qword_100130570, &qword_1000F0D48);
    sub_100006A04();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 254)
      {
        *(a1 + a4[6] + 8) = -a2;
        return;
      }

      sub_100002A10(&qword_10012FE50, &qword_1000F0720);
      sub_100006A04();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        sub_100002A10(&qword_10012ED98, &unk_1000F2440);
        sub_100006A04();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[8];
        }

        else
        {
          v10 = type metadata accessor for ForecastEntry(0);
          v14 = a4[9];
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_1000028A0(v11, a2, a2, v10);
}

uint64_t type metadata accessor for DataDenseContentView(uint64_t a1)
{
  result = qword_100132230;
  if (!qword_100132230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100060854(uint64_t a1)
{
  sub_1000609B0(319, &qword_10012F1B0, &type metadata accessor for WidgetFamily);
  if (v1 <= 0x3F)
  {
    sub_1000609B0(319, &qword_1001305E0, &type metadata accessor for ContentSizeCategory);
    if (v2 <= 0x3F)
    {
      sub_100005F48();
      if (v3 <= 0x3F)
      {
        sub_1000609B0(319, &unk_10012FEC0, &type metadata accessor for Font.Context);
        if (v4 <= 0x3F)
        {
          sub_1000609B0(319, &qword_10012EE28, &type metadata accessor for WidgetRenderingMode);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ForecastEntry(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000609B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000E9F94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100060A44()
{
  sub_100006A58();
  v1 = sub_1000405C8();
  sub_1000090D4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100040480();
  sub_1000637E4();
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v5);
  sub_100019AE8();
  sub_100025FE0();
  if (sub_1000637FC() == 1)
  {
    sub_1000EBC44();
    sub_100026C1C();
    v6 = sub_1000637D8();
    v7(v6);
  }

  else
  {
    sub_1000EC1A4();
    v8 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    (*(v3 + 8))(v0, v1);
  }

  sub_100006A20();
}

void sub_100060BDC()
{
  sub_100006A58();
  sub_1000405C8();
  sub_1000090D4();
  __chkstk_darwin(v0);
  sub_100040480();
  sub_1000637E4();
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v1);
  sub_100019AE8();
  type metadata accessor for DataDenseContentView(0);
  sub_1000637B8();
  if (sub_1000637FC() == 1)
  {
    sub_1000EA3B4();
    sub_100026C1C();
    v2 = sub_1000637D8();
  }

  else
  {
    sub_1000EC1A4();
    v4 = sub_1000EA524();
    sub_100040528(v4, &_mh_execute_header, v5, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v6, v7, &_swiftEmptyArrayStorage);

    sub_1000EA2B4();
    sub_100040588();

    v2 = sub_100040568();
  }

  v3(v2);
  sub_100006A20();
}

uint64_t sub_100060D48()
{
  v1 = sub_1000EA2C4();
  sub_1000090D4();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0 + *(type metadata accessor for DataDenseContentView(0) + 24);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1000EC1A4();
    v9 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v8, 0);
    (*(v3 + 8))(v6, v1);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

void sub_100060E94()
{
  sub_100006A58();
  sub_1000405C8();
  sub_1000090D4();
  __chkstk_darwin(v0);
  sub_100040480();
  sub_1000637E4();
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v1);
  sub_100019AE8();
  type metadata accessor for DataDenseContentView(0);
  sub_1000637B8();
  if (sub_1000637FC() == 1)
  {
    sub_1000EA694();
    sub_100026C1C();
    v2 = sub_1000637D8();
  }

  else
  {
    sub_1000EC1A4();
    v4 = sub_1000EA524();
    sub_100040528(v4, &_mh_execute_header, v5, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v6, v7, &_swiftEmptyArrayStorage);

    sub_1000EA2B4();
    sub_100040588();

    v2 = sub_100040568();
  }

  v3(v2);
  sub_100006A20();
}

void sub_100061000()
{
  sub_100006A58();
  sub_1000405C8();
  sub_1000090D4();
  __chkstk_darwin(v0);
  sub_100040480();
  sub_1000637E4();
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v1);
  sub_100019AE8();
  type metadata accessor for DataDenseContentView(0);
  sub_1000637B8();
  if (sub_1000637FC() == 1)
  {
    sub_1000EBC34();
    sub_100026C1C();
    v2 = sub_1000637D8();
  }

  else
  {
    sub_1000EC1A4();
    v4 = sub_1000EA524();
    sub_100040528(v4, &_mh_execute_header, v5, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v6, v7, &_swiftEmptyArrayStorage);

    sub_1000EA2B4();
    sub_100040588();

    v2 = sub_100040568();
  }

  v3(v2);
  sub_100006A20();
}

uint64_t sub_10006116C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v40 = a1;
  v41 = a2;
  v45 = a4;
  v5 = sub_1000EBA54();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EA3B4();
  __chkstk_darwin(v7 - 8);
  v38 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000EBC44();
  __chkstk_darwin(v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v12);
  v13 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = type metadata accessor for AggregateWeatherViewModel(0);
  __chkstk_darwin(v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DataDenseContentView(0);
  v20 = v4 + *(v19 + 36);
  v21 = type metadata accessor for ForecastEntry(0);
  sub_100063480();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000634D4();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = type metadata accessor for WeatherDataViewModel(0);
  sub_1000028A0(v15, v22, 1, v23);
  if (sub_100005B30(v15, 1, v23) == 1)
  {
    sub_100008E48(v15, &qword_10012F038, &qword_1000F0F90);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000634D4();
      sub_100060A44();
      v28 = v38;
      sub_100060BDC();
      v29 = *(v4 + *(v19 + 40));
      v30 = sub_100060D48();
      type metadata accessor for CurrentObservationViewAttributesFactory(0);
      swift_allocObject();
      sub_10007469C(v11, v28, v29, v30 & 1);
      v31 = v42;
      sub_100073028(v18, v20 + *(v21 + 24), &v18[*(v16 + 20)], v40, v41, *(v20 + *(v21 + 24) + 50), *(v20 + *(v21 + 24) + 51), *(v20 + *(v21 + 24) + 52), v42, 1u, v39 & 1, 1u);
      v33 = v43;
      v32 = v44;
      v34 = v45;
      (*(v43 + 16))(v45, v31, v44);
      v35 = &v18[*(v16 + 48)];
      v46 = *v35;
      v47 = *(v35 + 4);
      v36 = type metadata accessor for DataDenseViewAttributes(0);
      sub_100076750(v18, 1u, v34 + *(v36 + 24));

      (*(v33 + 8))(v31, v32);
      sub_100063528(v18, type metadata accessor for AggregateWeatherViewModel);
      v37 = v34 + *(v36 + 20);
      *v37 = v46;
      *(v37 + 8) = v47;
      v25 = v34;
      v26 = 0;
      v24 = v36;
      return sub_1000028A0(v25, v26, 1, v24);
    }

    sub_100063528(v15, type metadata accessor for WeatherDataViewModel);
  }

  v24 = type metadata accessor for DataDenseViewAttributes(0);
  v25 = v45;
  v26 = 1;
  return sub_1000028A0(v25, v26, 1, v24);
}

void *sub_100061654@<X0>(void *a1@<X8>)
{
  v3 = sub_1000EA694();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = __src - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EA3B4();
  __chkstk_darwin(v7 - 8);
  v9 = __src - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000EBC44();
  __chkstk_darwin(v10 - 8);
  v12 = __src - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100061858(v1);
  sub_100060A44();
  sub_100060BDC();
  v14 = *(v1 + *(type metadata accessor for DataDenseContentView(0) + 40));
  v15 = sub_100060D48();
  type metadata accessor for ErrorViewAttributesFactory(0);
  swift_allocObject();
  sub_10007653C(v12, v9, v14, v15 & 1);
  sub_100060E94();
  sub_10007628C(v13, __src);

  (*(v4 + 8))(v6, v3);
  return memcpy(a1, __src, 0x50uLL);
}

uint64_t sub_100061858(uint64_t a1)
{
  v1 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataDenseContentView(0);
  type metadata accessor for ForecastEntry(0);
  sub_100063480();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v3;
  }

  sub_100063528(v3, type metadata accessor for ForecastEntry.Model);
  return 3;
}

double sub_100061948@<D0>(char *a1@<X8>)
{
  memcpy(a1, v1, 0x50uLL);
  v3 = *(type metadata accessor for ErrorView(0) + 20);
  *&a1[v3] = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  sub_100063704(v1, &v7);
  v4 = sub_1000EA564();
  v5 = &a1[*(sub_100002A10(&qword_100130AA8, &qword_1000F12E0) + 36)];
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  v5[40] = 1;
  return result;
}

void sub_100061A54()
{
  sub_100006A58();
  v1 = v0;
  v32 = v2;
  v33 = sub_1000EA504();
  sub_1000090D4();
  v31 = v3;
  __chkstk_darwin(v4);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002A10(&qword_100132280, &qword_1000F3888);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v7);
  v9 = (&v26 - v8);
  v29 = sub_100002A10(&qword_100132288, &qword_1000F3890);
  sub_1000090D4();
  v30 = v10;
  sub_100009204();
  __chkstk_darwin(v11);
  v27 = &v26 - v12;
  *v9 = sub_1000EABD4();
  v9[1] = v13;
  sub_100002A10(&qword_100132290, &qword_1000F3898);
  sub_100061DFC(v1);
  sub_1000EABA4();
  v36 = v1;
  v35 = v1;
  v14 = sub_100002A10(&qword_100132298, &qword_1000F38A0);
  v15 = sub_100002A10(&qword_1001322A0, &qword_1000F38A8);
  sub_1000404D0();
  v18 = sub_100006988(v16, &qword_100132280, &qword_1000F3888, v17);
  v19 = sub_10006328C();
  v20 = sub_100063344();
  sub_1000EA954();
  sub_100008E48(v9, &qword_100132280, &qword_1000F3888);
  v21 = v28;
  sub_1000EA4F4();
  v34 = v1;
  sub_1000EABC4();
  type metadata accessor for BackgroundView(0);
  v37 = v6;
  v38 = &type metadata for Solarium;
  v39 = v14;
  v40 = v15;
  v41 = v18;
  v42 = &protocol witness table for Solarium;
  v43 = v19;
  v44 = v20;
  sub_1000637A0();
  swift_getOpaqueTypeConformance2();
  sub_100063788();
  sub_100063740(v22, v23, &unk_1000F1290);
  v24 = v29;
  v25 = v27;
  sub_1000EA904();
  (*(v31 + 8))(v21, v33);
  (*(v30 + 8))(v25, v24);
  sub_100006A20();
}

uint64_t sub_100061DFC(uint64_t a1)
{
  v2 = sub_100002A10(&qword_1001322C8, &qword_1000F3928);
  __chkstk_darwin(v2);
  v4 = &__src[-v3];
  v5 = sub_100002A10(&qword_1001322D0, &qword_1000F3930);
  __chkstk_darwin(v5);
  v7 = &__src[-v6];
  v8 = sub_100002A10(&qword_1001322D8, &qword_1000F3938);
  __chkstk_darwin(v8 - 8);
  v10 = &__src[-v9];
  v11 = type metadata accessor for DataDenseViewAttributes(0);
  __chkstk_darwin(v11);
  v13 = &__src[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1 + *(type metadata accessor for DataDenseContentView(0) + 36);
  v15 = type metadata accessor for ForecastEntry(0);
  sub_10006116C(*(v14 + *(v15 + 24)), *(v14 + *(v15 + 24) + 8), 1, v10);
  if (sub_100005B30(v10, 1, v11) == 1)
  {
    sub_100008E48(v10, &qword_1001322D8, &qword_1000F3938);
    sub_100061654(__src);
    memcpy(v7, __src, 0x50uLL);
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_1001322E0, &qword_1001322C8, &qword_1000F3928, &protocol conformance descriptor for VStack<A>);
    sub_10006342C();
    return sub_1000EA4A4();
  }

  else
  {
    sub_1000634D4();
    *v4 = sub_1000EA3D4();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v17 = sub_100002A10(&qword_1001322F0, &qword_1000F3940);
    sub_100062170(v13, &v4[*(v17 + 44)]);
    sub_100025FE0();
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_1001322E0, &qword_1001322C8, &qword_1000F3928, &protocol conformance descriptor for VStack<A>);
    sub_10006342C();
    sub_1000EA4A4();
    sub_100008E48(v4, &qword_1001322C8, &qword_1000F3928);
    return sub_100063528(v13, type metadata accessor for DataDenseViewAttributes);
  }
}

uint64_t sub_100062170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v48 = a2;
  v46 = type metadata accessor for DataDenseTableView(0) - 8;
  v3 = __chkstk_darwin(v46);
  v47 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v45 = &v37 - v5;
  v6 = sub_1000E9A84();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000EA4E4();
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002A10(&qword_1001322F8, &qword_1000F3948);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = sub_100002A10(&qword_100132300, &qword_1000F3950);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  v42 = sub_100002A10(&qword_100132308, &qword_1000F3958);
  v17 = __chkstk_darwin(v42);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v40 = &v37 - v20;
  *v12 = sub_1000EA3C4();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v21 = sub_100002A10(&qword_100132310, &unk_1000F3960);
  sub_1000627AC(a1, &v12[*(v21 + 44)]);
  sub_1000EA4C4();
  v22 = sub_100006988(&qword_100132318, &qword_1001322F8, &qword_1000F3948, &protocol conformance descriptor for VStack<A>);
  sub_1000EA914();
  (*(v38 + 8))(v9, v41);
  sub_100008E48(v12, &qword_1001322F8, &qword_1000F3948);
  v49 = v10;
  v50 = v22;
  swift_getOpaqueTypeConformance2();
  sub_1000EA934();
  (*(v14 + 8))(v16, v13);
  sub_100002A10(&qword_100130558, &qword_1000F0D00);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000EFAD0;
  v24 = v39;
  v25 = v37;
  sub_1000EBA34();
  v26 = sub_1000E9A44();
  v28 = v27;
  (*(v43 + 8))(v24, v44);
  *(v23 + 32) = v26;
  *(v23 + 40) = v28;
  sub_100005898();
  v29 = v40;
  sub_1000EA074();

  sub_100008E48(v19, &qword_100132308, &qword_1000F3958);
  v30 = v45;
  sub_100063480();
  v31 = *(type metadata accessor for DataDenseViewAttributes(0) + 24);
  v32 = v46;
  v33 = *(v46 + 28);
  v34 = sub_1000EB504();
  (*(*(v34 - 8) + 16))(v30 + v33, v25 + v31, v34);
  *(v30 + *(v32 + 32)) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  sub_100025FE0();
  v35 = v47;
  sub_100063480();
  sub_100025FE0();
  sub_100002A10(&qword_100132320, &qword_1000F3970);
  sub_100063480();
  sub_100063528(v30, type metadata accessor for DataDenseTableView);
  sub_100008E48(v29, &qword_100132308, &qword_1000F3958);
  sub_100063528(v35, type metadata accessor for DataDenseTableView);
  return sub_100008E48(v19, &qword_100132308, &qword_1000F3958);
}

uint64_t sub_1000627AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v47 = sub_1000EB014();
  v37 = *(v47 - 8);
  v3 = v37;
  v4 = __chkstk_darwin(v47);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v34 - v6;
  v7 = sub_1000EBA54();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000EAF14();
  v40 = *(v11 - 8);
  v12 = v40;
  v13 = __chkstk_darwin(v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v18 = *(v8 + 16);
  v18(v10, a1, v7);
  v39 = v17;
  sub_1000EAF04();
  sub_1000EABC4();
  sub_1000E9FC4();
  v43 = v51;
  v44 = v49;
  v41 = v54;
  v42 = v53;
  v57 = 1;
  v56 = v50;
  v55 = v52;
  v18(v10, a1, v7);
  v19 = v48;
  sub_1000EB004();
  v20 = *(v12 + 16);
  v38 = v15;
  v20(v15, v17, v11);
  LOBYTE(v7) = v57;
  v35 = v56;
  v36 = v55;
  v21 = *(v3 + 16);
  v22 = v45;
  v23 = v19;
  v24 = v47;
  v21(v45, v23, v47);
  v25 = v46;
  v26 = v15;
  v27 = v11;
  v20(v46, v26, v11);
  v28 = sub_100002A10(&qword_100132328, &qword_1000F3978);
  v29 = &v25[*(v28 + 48)];
  *v29 = 0;
  v29[8] = v7;
  *(v29 + 2) = v44;
  v29[24] = v35;
  *(v29 + 4) = v43;
  v29[40] = v36;
  v30 = v41;
  *(v29 + 6) = v42;
  *(v29 + 7) = v30;
  v21(&v25[*(v28 + 64)], v22, v24);
  v31 = *(v37 + 8);
  v31(v48, v24);
  v32 = *(v40 + 8);
  v32(v39, v27);
  v31(v22, v24);
  return (v32)(v38, v27);
}

uint64_t sub_100062BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v27 = a3;
  v4 = sub_100002A10(&qword_1001322C0, &unk_1000F3918);
  __chkstk_darwin(v4);
  v25 = sub_100002A10(&qword_1001322A0, &qword_1000F38A8);
  __chkstk_darwin(v25);
  v24 = &v24 - v5;
  v6 = sub_1000EBC34();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = a2;
  if ((sub_100060D48() & 1) != 0 && (v14 = v6, v15 = v13 + *(type metadata accessor for DataDenseContentView(0) + 36), v16 = *(type metadata accessor for ForecastEntry(0) + 24), *(v15 + v16 + *(type metadata accessor for WidgetContext(0) + 48) + 8) == 1) && (v17 = v14, sub_100061000(), sub_1000EBC14(), sub_100063740(&qword_100130698, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode), v18 = sub_1000EBE24(), v19 = *(v7 + 8), v19(v10, v17), v19(v12, v17), (v18 & 1) == 0))
  {
    sub_1000EA9A4();
    v21 = sub_1000EA9D4();

    v22 = v24;
    sub_100025FE0();
    v23 = v22 + *(v25 + 36);
    *v23 = v21;
    *(v23 + 8) = xmmword_1000F0D30;
    *(v23 + 24) = 0x4000000000000000;
    sub_100025FE0();
    swift_storeEnumTagMultiPayload();
    sub_100002A10(&qword_100132280, &qword_1000F3888);
    sub_100063344();
    sub_100006988(&qword_1001322A8, &qword_100132280, &qword_1000F3888, &protocol conformance descriptor for ZStack<A>);
    sub_1000EA4A4();
    return sub_100008E48(v22, &qword_1001322A0, &qword_1000F38A8);
  }

  else
  {
    sub_100025FE0();
    swift_storeEnumTagMultiPayload();
    sub_100002A10(&qword_100132280, &qword_1000F3888);
    sub_100063344();
    sub_100006988(&qword_1001322A8, &qword_100132280, &qword_1000F3888, &protocol conformance descriptor for ZStack<A>);
    return sub_1000EA4A4();
  }
}

double sub_100062FC4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((sub_100060D48() & 1) != 0 && (v4 = a1 + *(type metadata accessor for DataDenseContentView(0) + 36), v5 = *(type metadata accessor for ForecastEntry(0) + 24), *(v4 + v5 + *(type metadata accessor for WidgetContext(0) + 48) + 8) == 1))
  {
    sub_1000EA9A4();
    v6 = sub_1000EA9D4();
  }

  else
  {
    v6 = sub_1000EA9B4();
  }

  sub_100025FE0();
  v7 = a2 + *(sub_100002A10(&qword_1001322A0, &qword_1000F38A8) + 36);
  *v7 = v6;
  result = 5.0;
  *(v7 + 8) = xmmword_1000F0D30;
  *(v7 + 24) = 0x4000000000000000;
  return result;
}

uint64_t sub_1000630B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ForecastEntry.Model(0);
  __chkstk_darwin(v4);
  v5 = a1 + *(type metadata accessor for DataDenseContentView(0) + 36);
  v6 = *(type metadata accessor for ForecastEntry(0) + 24);
  v7 = (v5 + v6 + *(type metadata accessor for WidgetContext(0) + 48));
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = type metadata accessor for BackgroundView(0);
  v11 = v10[5];
  sub_100063480();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000634D4();
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = type metadata accessor for WeatherDataViewModel(0);
  sub_1000028A0(a2 + v11, v12, 1, v13);
  *a2 = v8;
  *(a2 + 8) = v9;
  v14 = v10[6];
  *(a2 + v14) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v10[7];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
}

unint64_t sub_10006328C()
{
  result = qword_1001322B0;
  if (!qword_1001322B0)
  {
    sub_100002ABC(&qword_100132298, &qword_1000F38A0);
    sub_100063344();
    sub_100006988(&qword_1001322A8, &qword_100132280, &qword_1000F3888, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001322B0);
  }

  return result;
}

unint64_t sub_100063344()
{
  result = qword_1001322B8;
  if (!qword_1001322B8)
  {
    sub_100002ABC(&qword_1001322A0, &qword_1000F38A8);
    sub_100006988(&qword_1001322A8, &qword_100132280, &qword_1000F3888, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001322B8);
  }

  return result;
}

unint64_t sub_10006342C()
{
  result = qword_1001322E8;
  if (!qword_1001322E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001322E8);
  }

  return result;
}

uint64_t sub_100063480()
{
  sub_100026C9C();
  v1(0);
  sub_100026C1C();
  v2 = sub_100019AC0();
  v3(v2);
  return v0;
}

uint64_t sub_1000634D4()
{
  sub_100026C9C();
  v1(0);
  sub_100026C1C();
  v2 = sub_100019AC0();
  v3(v2);
  return v0;
}

uint64_t sub_100063528(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000069E4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100063590()
{
  sub_100002ABC(&qword_100132288, &qword_1000F3890);
  type metadata accessor for BackgroundView(255);
  sub_100002ABC(&qword_100132280, &qword_1000F3888);
  sub_100002ABC(&qword_100132298, &qword_1000F38A0);
  sub_100002ABC(&qword_1001322A0, &qword_1000F38A8);
  sub_1000404D0();
  sub_100006988(v0, &qword_100132280, &qword_1000F3888, v1);
  sub_10006328C();
  sub_100063344();
  sub_1000637A0();
  swift_getOpaqueTypeConformance2();
  sub_100063788();
  sub_100063740(v2, v3, &unk_1000F1290);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100063740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000637B8()
{

  return sub_100025FE0();
}

uint64_t sub_1000637E4()
{

  return sub_100002A10(v0, v1);
}

uint64_t sub_1000637FC()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100063828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentObservationViewModelFactory(0);

  return sub_100005B30(a1, a2, v4);
}

uint64_t sub_100063884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentObservationViewModelFactory(0);

  return sub_1000028A0(a1, a2, a2, v4);
}

uint64_t type metadata accessor for InstantWeatherViewModelFactory(uint64_t a1)
{
  result = qword_100132388;
  if (!qword_100132388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006391C(uint64_t a1)
{
  result = type metadata accessor for CurrentObservationViewModelFactory(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100063988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v51 = a3;
  v4 = sub_1000EB674();
  sub_1000090D4();
  v6 = v5;
  __chkstk_darwin(v7);
  v54 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000E8784();
  sub_1000090D4();
  v11 = v10;
  v13 = __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v45 - v17;
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  v50 = a2;
  sub_1000E9A74();
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v21 = sub_1000E9F64();
  v22 = sub_100008CB8(v21, qword_100145C10);
  v23 = *(v11 + 16);
  v52 = v20;
  v23(v18, v20, v9);
  v48 = v22;
  v24 = sub_1000E9F44();
  v25 = sub_1000EC1B4();
  v26 = os_log_type_enabled(v24, v25);
  v53 = v11;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v46 = v6;
    v28 = v27;
    v29 = swift_slowAlloc();
    v47 = v4;
    v30 = v29;
    v55 = v29;
    *v28 = 136446210;
    v23(v15, v18, v9);
    v31 = sub_1000EBEF4();
    v33 = v32;
    v34 = *(v11 + 8);
    v34(v18, v9);
    v35 = sub_1000E2E18(v31, v33, &v55);

    *(v28 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "Building instant weather data model. - timeZone: %{public}s", v28, 0xCu);
    sub_100009068(v30);
    v4 = v47;

    v6 = v46;
  }

  else
  {

    v34 = *(v11 + 8);
    v34(v18, v9);
  }

  v36 = v54;
  sub_100094574(v54);
  v37 = v51;
  sub_1000E8624();
  v38 = type metadata accessor for InstantWeatherViewModel(0);
  v39 = *(v38 + 20);
  v40 = sub_1000E9A84();
  (*(*(v40 - 8) + 16))(v37 + v39, v50, v40);
  (*(v6 + 16))(v37 + *(v38 + 24), v36, v4);
  v41 = sub_1000E9F44();
  v42 = sub_1000EC1B4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Built instant weather data model.", v43, 2u);
  }

  (*(v6 + 8))(v36, v4);
  return (v34)(v52, v9);
}

uint64_t sub_100063DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x457972616D697270 && a2 == 0xEC000000746E6576;
  if (v4 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEE00746E65764579)
  {

    return 1;
  }

  else
  {
    v7 = sub_1000EC5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100063EB0(char a1)
{
  if (a1)
  {
    return 0x7261646E6F636573;
  }

  else
  {
    return 0x457972616D697270;
  }
}

uint64_t sub_100063F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100063DDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100063F2C(uint64_t a1)
{
  v2 = sub_100064118();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063F68(uint64_t a1)
{
  v2 = sub_100064118();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ActiveEvent.encode(to:)(void *a1, __int16 a2)
{
  v5 = sub_100002A10(&qword_1001323C0, &qword_1000F3B10);
  sub_1000090D4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  sub_100008DA8(a1, a1[3]);
  sub_100064118();
  sub_1000EC6A4();
  v14 = a2;
  v13[1] = 0;
  sub_100018F3C();
  sub_10006472C(&v14);
  if (!v2)
  {
    v13[0] = HIBYTE(a2);
    v12[12] = 1;
    sub_10006472C(v13);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_100064118()
{
  result = qword_1001323C8;
  if (!qword_1001323C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001323C8);
  }

  return result;
}

uint64_t ActiveEvent.init(from:)(void *a1)
{
  v3 = sub_100002A10(&qword_1001323D0, &qword_1000F3B18);
  sub_1000090D4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_100008DA8(a1, a1[3]);
  sub_100064118();
  sub_1000EC694();
  if (v1)
  {
    return sub_100009068(a1);
  }

  v12[14] = 0;
  sub_10001902C();
  sub_100064708();
  v9 = v12[15];
  v12[12] = 1;
  sub_100064708();
  (*(v5 + 8))(v8, v3);
  v10 = v12[13];
  sub_100009068(a1);
  return v9 | (v10 << 8);
}

uint64_t sub_100064318@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  result = ActiveEvent.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActiveEvent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 65286 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65286 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65287;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ActiveEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65286 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65286 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 16) + 1;
    *result = a2 - 250;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000644C4);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActiveEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000645C8);
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

unint64_t sub_100064604()
{
  result = qword_1001323D8;
  if (!qword_1001323D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001323D8);
  }

  return result;
}

unint64_t sub_10006465C()
{
  result = qword_1001323E0;
  if (!qword_1001323E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001323E0);
  }

  return result;
}

unint64_t sub_1000646B4()
{
  result = qword_1001323E8;
  if (!qword_1001323E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001323E8);
  }

  return result;
}

void *sub_100064708()
{

  return sub_1000EC514();
}

uint64_t sub_10006472C(uint64_t a1)
{

  return sub_1000EC594();
}

uint64_t sub_10006476C(uint64_t a1)
{
  result = sub_1000E9A84();
  if (v2 <= 0x3F)
  {
    result = sub_1000E8604();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_100064870()
{
  sub_100006A58();
  v1 = v0;
  v29 = v2;
  v4 = v3;
  v32 = v5;
  v33 = v6;
  v8 = v7;
  sub_1000E8784();
  sub_1000090D4();
  v30 = v10;
  v31 = v9;
  __chkstk_darwin(v9);
  sub_100006A10();
  v13 = v12 - v11;
  v28 = sub_1000E8604();
  sub_1000090D4();
  v15 = v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v28 - v20;
  v22 = qword_100132418;
  sub_1000E90C4();
  swift_allocObject();
  *&v0[v22] = sub_1000E90B4();
  *&v0[qword_100132428] = 0x40F5180000000000;
  *&v0[qword_100132430] = 0x40AC200000000000;
  v23 = qword_1001323F0;
  v24 = sub_1000E9A84();
  v25 = *(v24 - 8);
  (*(v25 + 16))(&v1[v23], v32, v24);
  *&v1[qword_1001323F8] = v8;
  sub_10006B078(v33, &v1[qword_100132400]);
  sub_10006B078(v4, &v1[qword_100132408]);
  v1[qword_100132410] = v29;

  sub_1000E85B4();
  sub_1000E9A74();
  sub_1000E8534();
  (*(v30 + 8))(v13, v31);
  v26 = v28;
  (*(v15 + 8))(v19, v28);
  (*(v15 + 32))(&v1[qword_100132420], v21, v26);
  v27 = type metadata accessor for WeatherDataOperation(0);
  v34.receiver = v1;
  v34.super_class = v27;
  objc_msgSendSuper2(&v34, "init");

  sub_100009068(v4);
  sub_100009068(v33);
  (*(v25 + 8))(v32, v24);
  sub_100006A20();
}

uint64_t sub_100064B70(uint64_t a1, uint64_t a2)
{
  v101 = a2;
  v102 = a1;
  v3 = sub_1000E94B4();
  sub_1000090D4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100006A10();
  v9 = v8 - v7;
  v95 = sub_1000E8A84();
  sub_1000090D4();
  v100 = v10;
  __chkstk_darwin(v11);
  sub_10006BCFC();
  v104 = v12;
  v90 = v13;
  __chkstk_darwin(v14);
  sub_10000D56C();
  v105 = v15;
  v16 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  sub_100009210(v16);
  sub_100009204();
  __chkstk_darwin(v17);
  v19 = &v79 - v18;
  v93 = sub_1000E9004();
  sub_1000090D4();
  v99 = v20;
  __chkstk_darwin(v21);
  sub_10006BCFC();
  v97 = v23;
  v98 = v22;
  __chkstk_darwin(v24);
  sub_10000D56C();
  v103 = v25;
  v96 = v2;
  sub_1000E99B4();
  v27 = v26;
  sub_1000E99B4();
  v29 = [objc_allocWithZone(CLLocation) initWithLatitude:v27 longitude:v28];
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  v92 = v30;
  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C(&qword_10012EB38);
  }

  v31 = sub_1000E9F64();
  sub_100008CB8(v31, qword_100145C10);
  v32 = v29;
  v33 = sub_1000E9F44();
  v34 = sub_1000EC1B4();
  v94 = v32;

  if (os_log_type_enabled(v33, v34))
  {
    v35 = sub_1000327F4();
    v36 = sub_10006BC88();
    *v35 = 141558275;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2113;
    v37 = v94;
    *(v35 + 14) = v94;
    *v36 = v37;
    v38 = v37;
    _os_log_impl(&_mh_execute_header, v33, v34, "About to fetch weather data; location=%{private,mask.hash}@", v35, 0x16u);
    sub_100008E48(v36, &qword_1001325D0, &unk_1000F3D80);
    sub_100009194(v36);
    sub_100009194(v35);
  }

  v39 = v96;
  sub_1000E9A74();
  sub_1000E8784();
  sub_10000D554();
  sub_1000028A0(v40, v41, v42, v43);
  v44 = v103;
  sub_1000E9014();
  sub_100008E48(v19, &qword_1001304C8, &qword_1000F3D70);
  v45 = v39;
  sub_100008DA8((v39 + qword_100132400), *(v39 + qword_100132400 + 24));
  sub_1000E9804();
  sub_1000E9484();
  (*(v5 + 8))(v9, v3);
  v46 = v105;
  v47 = sub_1000E8A74();
  __chkstk_darwin(v47);
  *(&v79 - 2) = v45;
  sub_100002A10(&qword_1001325C8, &qword_1000F3D78);
  v86 = sub_1000E9CD4();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = v100;
  v50 = *(v100 + 16);
  v89 = v100 + 16;
  v91 = v50;
  v51 = v95;
  v50(v104, v46, v95);
  v52 = v99;
  v53 = *(v99 + 16);
  v87 = v99 + 16;
  v88 = v53;
  v54 = v93;
  v53(v98, v44, v93);
  v55 = *(v49 + 80);
  v56 = (v55 + 56) & ~v55;
  v57 = *(v52 + 80);
  v58 = v52;
  v85 = v56;
  v80 = (v90 + v57 + v56) & ~v57;
  v90 = v55 | v57;
  v59 = swift_allocObject();
  v61 = v101;
  v60 = v102;
  *(v59 + 2) = v48;
  *(v59 + 3) = v60;
  v62 = v92;
  *(v59 + 4) = v61;
  *(v59 + 5) = v62;
  v63 = v94;
  *(v59 + 6) = v94;
  v64 = *(v49 + 32);
  v82 = v49 + 32;
  v84 = v64;
  v64(&v59[v56], v104, v51);
  v83 = *(v58 + 32);
  v65 = v80;
  v66 = v98;
  v83(&v59[v80], v98, v54);
  v81 = v63;

  v67 = sub_1000E9C44();
  v94 = sub_1000E9C64();

  v68 = swift_allocObject();
  v86 = v68;
  swift_unknownObjectWeakInit();
  v69 = v95;
  v91(v104, v105, v95);
  v70 = v54;
  v88(v66, v103, v54);
  v71 = v65;
  v72 = swift_allocObject();
  v73 = v102;
  *(v72 + 2) = v68;
  *(v72 + 3) = v73;
  v74 = v81;
  *(v72 + 4) = v101;
  *(v72 + 5) = v74;
  *(v72 + 6) = v62;
  sub_10006BBD4();
  v75();
  v83(&v72[v71], v66, v70);
  v76 = v74;

  v77 = sub_1000E9C44();
  sub_1000E9C84();

  (*(v100 + 8))(v105, v69);
  (*(v99 + 8))(v103, v70);
}

uint64_t sub_100065390(uint64_t a1)
{
  sub_100008DA8((a1 + qword_100132408), *(a1 + qword_100132408 + 24));
  sub_1000E9824();
  v1 = sub_1000E9C54();

  return v1;
}

double sub_100065410(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = a8;
  v66 = a6;
  v67 = a7;
  v68 = a5;
  v71 = a3;
  v72 = a4;
  v9 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  __chkstk_darwin(v9);
  v11 = (&v62 - v10);
  v12 = sub_1000E9F64();
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v62 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v62 - v20;
  __chkstk_darwin(v19);
  v23 = &v62 - v22;
  v25 = *a1;
  v24 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v64 = Strong;
    if (v24)
    {
      if (v24 != 1)
      {
        v48 = v68;
        swift_beginAccess();
        *(v48 + 16) = v25;
        *(v48 + 24) = v24;

        v49 = v18;
        sub_1000E9F34();
        sub_10006B5A4(v25, v24);
        v50 = v27;
        v51 = sub_1000E9F44();
        v52 = sub_1000EC1B4();
        sub_10006B5B8(v25, v24);

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v73[0] = swift_slowAlloc();
          *v53 = 141558787;
          *(v53 + 4) = 1752392040;
          v63 = v49;
          *(v53 + 12) = 2081;
          *(v53 + 14) = sub_1000E2E18(v25, v24, v73);
          *(v53 + 22) = 2160;
          *(v53 + 24) = 1752392040;
          *(v53 + 32) = 2081;
          sub_1000E9A84();
          sub_10006B5CC(&qword_1001325E8, &type metadata accessor for Location, &protocol conformance descriptor for Location);
          v54 = sub_1000EC5B4();
          v56 = sub_1000E2E18(v54, v55, v73);

          *(v53 + 34) = v56;
          _os_log_impl(&_mh_execute_header, v51, v52, "resolved countryCode=%{private,mask.hash}s for location=%{private,mask.hash}s", v53, 0x2Au);
          swift_arrayDestroy();

          (*(v69 + 8))(v63, v70);
        }

        else
        {

          (*(v69 + 8))(v49, v70);
        }

        v46 = v71;
        v45 = v72;
        v47 = v65;
        v33 = v66;
        v32 = v67;
        v28 = v68;
        goto LABEL_18;
      }

      v28 = v68;
      swift_beginAccess();
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;

      sub_1000E9F34();
      v29 = sub_1000E9F44();
      v30 = sub_1000EC1B4();
      v31 = os_log_type_enabled(v29, v30);
      v33 = v66;
      v32 = v67;
      if (v31)
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "countryCode = nil", v34, 2u);
      }

      (*(v69 + 8))(v21, v70);
    }

    else
    {
      v28 = v68;
      swift_beginAccess();
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;

      sub_1000E9F34();
      v41 = sub_1000E9F44();
      v42 = sub_1000EC1B4();
      v43 = os_log_type_enabled(v41, v42);
      v33 = v66;
      v32 = v67;
      if (v43)
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "countryCode unresolvable", v44, 2u);
      }

      (*(v69 + 8))(v15, v70);
    }

    v46 = v71;
    v45 = v72;
    v47 = v65;
LABEL_18:
    swift_beginAccess();
    v58 = *(v28 + 16);
    v57 = *(v28 + 24);

    v59 = v45;
    v60 = v64;
    sub_100065E6C(v33, v58, v57, v32, v47, v46, v59, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73[0]);

    return result;
  }

  sub_1000E9F34();
  v35 = sub_1000E9F44();
  v36 = sub_1000EC1B4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "countryCode unresolvable; object was released", v37, 2u);
  }

  (*(v69 + 8))(v23, v70);
  sub_10006B550();
  v38 = swift_allocError();
  *v39 = 0;
  *v11 = v38;
  swift_storeEnumTagMultiPayload();
  v71(v11);
  sub_100008E48(v11, &qword_1001325D8, &unk_1000FABC0);
  return result;
}

void sub_100065A94(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a7;
  v46 = a8;
  v43 = a6;
  v44 = a5;
  v47 = a3;
  v41 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  __chkstk_darwin(v41);
  v42 = (&v39 - v9);
  v10 = sub_1000E9F64();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  sub_1000E9F34();
  swift_errorRetain();
  v17 = sub_1000E9F44();
  v18 = sub_1000EC194();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v39 = v11;
    v22 = v21;
    v51[0] = v21;
    *v20 = 136380675;
    swift_getErrorValue();
    v23 = sub_1000EC614();
    v25 = sub_1000E2E18(v23, v24, v51);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Error resolving the country code, using a nil country code; error=%{private}s", v20, 0xCu);
    sub_100009068(v22);
    v11 = v39;

    a4 = v40;
  }

  v26 = *(v11 + 8);
  v26(v16, v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v29 = v43;
    swift_beginAccess();
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_100065E6C(v44, v30, v31, v45, v46, v47, a4, v32, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  }

  else
  {
    sub_1000E9F34();
    v33 = sub_1000E9F44();
    v34 = sub_1000EC1B4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "cannot fetch weather; object was released", v35, 2u);
    }

    v26(v14, v10);
    sub_10006B550();
    v36 = swift_allocError();
    *v37 = 0;
    v38 = v42;
    *v42 = v36;
    swift_storeEnumTagMultiPayload();
    v47(v38);
    sub_100008E48(v38, &qword_1001325D8, &unk_1000FABC0);
  }
}

void sub_100065E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A58();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v179 = v25;
  v180 = v26;
  v178 = v27;
  v186 = v29;
  v187 = v28;
  v181 = v30;
  v182 = v31;
  v32 = sub_1000E9004();
  v33 = sub_10006BB10(v32, &v190);
  v157 = v34;
  __chkstk_darwin(v33);
  v155 = v35;
  v171 = v154 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000921C();
  sub_1000E89C4();
  sub_1000090D4();
  v173 = v37;
  v174 = v36;
  __chkstk_darwin(v36);
  sub_10004B3F0();
  v172 = v38;
  sub_10000921C();
  v39 = sub_1000E8384();
  v40 = sub_10006BB10(v39, &v189);
  v156 = v41;
  __chkstk_darwin(v40);
  sub_10004B3F0();
  v170 = v42;
  sub_10000921C();
  v43 = sub_1000E8604();
  v44 = sub_10006BB10(v43, &a18);
  v167 = v45;
  __chkstk_darwin(v44);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v46);
  sub_10000D56C();
  sub_10000D4C4(v47);
  v48 = sub_100002A10(&qword_100132600, &qword_1000F3DA0);
  sub_10006BB10(v48, &v185);
  v154[10] = v49;
  sub_100009204();
  __chkstk_darwin(v50);
  sub_10000D58C();
  sub_10000D4C4(v51);
  v52 = sub_100002A10(&qword_100132608, &qword_1000F3DA8);
  sub_10006BB10(v52, &v182);
  v154[7] = v53;
  sub_100009204();
  __chkstk_darwin(v54);
  sub_10000D58C();
  sub_10000D4C4(v55);
  v56 = sub_100002A10(&qword_100132610, &qword_1000F3DB0);
  sub_10006BB10(v56, &v179);
  v154[4] = v57;
  sub_100009204();
  __chkstk_darwin(v58);
  sub_10000D58C();
  sub_10000D4C4(v59);
  v60 = sub_100002A10(&qword_100132618, &qword_1000F3DB8);
  sub_10006BB10(v60, &a17);
  v166 = v61;
  sub_100009204();
  __chkstk_darwin(v62);
  sub_10000D58C();
  v177 = v63;
  v64 = sub_100002A10(&qword_100132638, &unk_1000F54C0);
  sub_10006BB10(v64, &a14);
  v164 = v65;
  sub_100009204();
  __chkstk_darwin(v66);
  sub_10000D58C();
  v176 = v67;
  v68 = sub_100002A10(&qword_100132620, &unk_1000F3DC0);
  sub_10006BB10(v68, &v176);
  v154[0] = v69;
  sub_100009204();
  __chkstk_darwin(v70);
  sub_10000D58C();
  sub_10000D4C4(v71);
  v72 = sub_100002A10(&qword_100132628, &unk_1000F54D0);
  sub_10006BB10(v72, &a11);
  v162 = v73;
  sub_100009204();
  __chkstk_darwin(v74);
  sub_10000D58C();
  v175 = v75;
  v76 = sub_100002A10(&qword_100132640, &unk_1000F3DE0);
  sub_100009210(v76);
  sub_100009204();
  __chkstk_darwin(v77);
  sub_10000D58C();
  v185 = v78;
  sub_10000921C();
  sub_1000E94B4();
  sub_1000090D4();
  v183 = v80;
  v184 = v79;
  __chkstk_darwin(v79);
  sub_100006A10();
  v83 = v82 - v81;
  sub_1000E8A14();
  sub_1000069E4();
  __chkstk_darwin(v84);
  sub_100006A10();
  v85 = sub_100002A10(&qword_100132648, &qword_1000F54A0);
  sub_100009210(v85);
  sub_100009204();
  __chkstk_darwin(v86);
  sub_10006BC48();
  v87 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  sub_100009210(v87);
  sub_100009204();
  __chkstk_darwin(v88);
  sub_1000E8A64();
  sub_1000090D4();
  v188 = v90;
  v189 = v89;
  v92 = *(v91 + 64);
  __chkstk_darwin(v89);
  sub_10000D4C4(v154 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v93);
  v95 = v154 - v94;

  sub_1000E9A74();
  sub_1000E8784();
  sub_10000D554();
  sub_1000028A0(v96, v97, v98, v99);
  v100 = sub_1000E8A84();
  sub_1000069E4();
  (*(v101 + 16))(v21, v186, v100);
  sub_10000D554();
  sub_1000028A0(v102, v103, v104, v100);
  v190 = &_swiftEmptyArrayStorage;
  sub_10006BB5C();
  sub_10006B5CC(v105, v106, &protocol conformance descriptor for WeatherServiceCaching.Options);
  sub_100002A10(&qword_100132660, &qword_1000F3DF8);
  sub_10006B614();
  sub_1000EC3C4();
  sub_100008DA8(&v24[qword_100132400], *&v24[qword_100132400 + 24]);
  v107 = v95;
  v108 = v24;
  sub_1000E9804();
  sub_1000E9454();
  (*(v183 + 8))(v83, v184);
  v109 = sub_1000E8A44();
  sub_1000028A0(v185, 1, 1, v109);
  sub_1000E8A54();
  switch(v24[qword_100132410])
  {
    case 1:
    case 2:
    case 4:
      goto LABEL_7;
    case 3:
      v146 = v175;
      sub_1000E8FE4();
      v147 = v176;
      sub_1000E8FC4();
      v148 = v177;
      sub_1000E8FA4();
      v149 = swift_allocObject();
      v150 = v179;
      v149[2] = v108;
      v149[3] = v150;
      v149[4] = v180;
      sub_1000E88D4();
      v151 = v108;

      sub_100002A10(&qword_100132670, &unk_1000F54E0);
      sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
      sub_1000E8B84();

      sub_10006BB44();
      v152(v148, v168);
      sub_10006BB44();
      v153(v147, v165);
      sub_10006BB44();
      v129 = v146;
      goto LABEL_5;
    case 5:
      v186 = *&v24[qword_1001323F8];
      sub_1000E8FE4();
      sub_1000E8FF4();
      sub_1000E8FC4();
      sub_1000E8FA4();
      v131 = v154[3];
      sub_1000E8F94();
      sub_10006BC7C();
      sub_1000E8FD4();
      v132 = v154[9];
      sub_1000E8FB4();
      v133 = swift_allocObject();
      v134 = v179;
      v133[2] = v24;
      v133[3] = v134;
      v187 = v107;
      v133[4] = v180;
      sub_1000E88D4();
      v135 = v24;

      sub_100002A10(&qword_10012F108, &qword_1000EEF10);
      sub_100002A10(&qword_100132670, &unk_1000F54E0);
      sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
      sub_100002A10(&qword_10012F260, &unk_1000EF030);
      sub_100002A10(&qword_10012F0F8, &qword_1000EEF00);
      sub_100002A10(&qword_100132678, &qword_1000F54F0);
      v107 = v187;
      v136 = v175;
      v137 = v176;
      v138 = v161;
      v139 = v177;
      sub_1000E8B94();

      sub_10006BB44();
      v140(v132, v154[11]);
      sub_10006BB44();
      v141(v21, v154[8]);
      sub_10006BB44();
      v142(v131, v154[5]);
      sub_10006BB44();
      v143(v139, v168);
      sub_10006BB44();
      v144(v137, v165);
      sub_10006BB44();
      v145(v138, v154[2]);
      sub_10006BB44();
      v129 = v136;
LABEL_5:
      v130 = &a11;
      goto LABEL_6;
    default:
      v110 = v163;
      sub_1000E85B4();
      sub_10006BBD4();
      (*(v111 + 16))(v154[1], v110, v169);
      sub_1000E8374();
      v186 = *&v24[qword_1001323F8];
      *v172 = 10;
      (*(v173 + 104))();
      sub_10006BC7C();
      v113 = v159;
      (*(v112 + 16))(v171, v178, v159);
      v114 = v188;
      (*(v188 + 16))(v160, v95, v189);
      v115 = (*(v21 + 80) + 48) & ~*(v21 + 80);
      v116 = *(v114 + 80);
      v187 = v95;
      v117 = (v155 + v116 + v115) & ~v116;
      v118 = swift_allocObject();
      v119 = v179;
      v120 = v180;
      *(v118 + 2) = v108;
      *(v118 + 3) = v119;
      v121 = v181;
      *(v118 + 4) = v120;
      *(v118 + 5) = v121;
      (*(v21 + 32))(&v118[v115], v171, v113);
      v122 = &v118[v117];
      v107 = v187;
      (*(v114 + 32))(v122, v160, v189);
      v123 = v108;

      v124 = v121;
      v125 = v170;
      v126 = v172;
      sub_1000E8B74();

      (*(v173 + 8))(v126, v174);
      sub_10006BB44();
      v127(v125, v158);
      sub_10006BB44();
      v129 = v163;
      v130 = &a18;
LABEL_6:
      v128(v129, *(v130 - 32));
LABEL_7:
      (*(v188 + 8))(v107, v189);
      sub_100006A20();
      return;
  }
}

uint64_t sub_100066D48(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v57 = a3;
  v58 = a4;
  v55 = a2;
  v56 = a1;
  v59 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  __chkstk_darwin(v59);
  v60 = (&v45 - v4);
  v51 = type metadata accessor for WeatherDataOperationResult(0);
  __chkstk_darwin(v51);
  v54 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000E8CD4();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_100132680, &qword_1000F3E10);
  v10 = __chkstk_darwin(v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v45 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v45 - v17;
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  v21 = sub_100002A10(&qword_100132688, &qword_1000F3E18);
  __chkstk_darwin(v21);
  v23 = &v45 - v22;
  sub_1000068F4(v56, &v45 - v22, &qword_100132688, &qword_1000F3E18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100008E48(v23, &qword_100132688, &qword_1000F3E18);
    sub_10006B550();
    v24 = swift_allocError();
    *v25 = 0;
    v26 = v60;
    *v60 = v24;
    swift_storeEnumTagMultiPayload();
    v57(v26);
    v27 = &qword_1001325D8;
    v28 = &unk_1000FABC0;
    v29 = v26;
  }

  else
  {
    sub_1000068A4(v23, v20, &qword_100132680, &qword_1000F3E10);
    v50 = v20;
    sub_1000068F4(v20, v18, &qword_100132680, &qword_1000F3E10);
    v56 = *(v9 + 48);
    v49 = *(v9 + 64);
    sub_1000068F4(v20, v15, &qword_100132680, &qword_1000F3E10);
    v47 = *(v9 + 64);
    sub_1000068F4(v20, v12, &qword_100132680, &qword_1000F3E10);
    v30 = *(v9 + 48);
    v48 = v8;
    sub_1000E8C44();
    v31 = sub_100002A10(&qword_100132670, &unk_1000F54E0);
    v46 = *(*(v31 - 8) + 8);
    v46(&v12[v30], v31);
    v32 = sub_1000E88D4();
    v33 = *(*(v32 - 8) + 8);
    v33(v12, v32);
    v34 = sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
    v35 = *(*(v34 - 8) + 8);
    v35(&v15[v47], v34);
    v33(v15, v32);
    v35(&v18[v49], v34);
    v46(&v18[v56], v31);
    v37 = v52;
    v36 = v53;
    v38 = v54;
    v39 = v48;
    (*(v52 + 16))(v54, v48, v53);
    type metadata accessor for WeatherDataOperationResult.Data(0);
    swift_storeEnumTagMultiPayload();
    v40 = qword_1001323F0;
    v41 = *(v51 + 20);
    v42 = sub_1000E9A84();
    (*(*(v42 - 8) + 16))(v38 + v41, v55 + v40, v42);
    v43 = v60;
    sub_10006B8A8(v38, v60);
    swift_storeEnumTagMultiPayload();
    v57(v43);
    sub_100008E48(v43, &qword_1001325D8, &unk_1000FABC0);
    sub_10006B90C(v38);
    (*(v37 + 8))(v39, v36);
    v29 = v50;
    v27 = &qword_100132680;
    v28 = &qword_1000F3E10;
  }

  return sub_100008E48(v29, v27, v28);
}

uint64_t sub_100067340(uint64_t a1, char a2, char *a3, void (*a4)(void), uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v76 = a8;
  v59 = a6;
  v77 = a5;
  v58 = a1;
  v11 = sub_100002A10(&qword_100132600, &qword_1000F3DA0);
  v75 = *(v11 - 8);
  __chkstk_darwin(v11);
  v72 = v55 - v12;
  v13 = sub_100002A10(&qword_100132608, &qword_1000F3DA8);
  v73 = *(v13 - 8);
  v74 = v13;
  __chkstk_darwin(v13);
  v69 = v55 - v14;
  v15 = sub_100002A10(&qword_100132610, &qword_1000F3DB0);
  v70 = *(v15 - 8);
  v71 = v15;
  __chkstk_darwin(v15);
  v68 = v55 - v16;
  v17 = sub_100002A10(&qword_100132618, &qword_1000F3DB8);
  v66 = *(v17 - 8);
  v67 = v17;
  __chkstk_darwin(v17);
  v80 = v55 - v18;
  v19 = sub_100002A10(&qword_100132638, &unk_1000F54C0);
  v64 = *(v19 - 8);
  v65 = v19;
  __chkstk_darwin(v19);
  v79 = v55 - v20;
  v21 = sub_100002A10(&qword_100132620, &unk_1000F3DC0);
  v62 = *(v21 - 8);
  v63 = v21;
  __chkstk_darwin(v21);
  v78 = v55 - v22;
  v23 = sub_100002A10(&qword_100132628, &unk_1000F54D0);
  v60 = *(v23 - 8);
  v61 = v23;
  __chkstk_darwin(v23);
  v25 = v55 - v24;
  v26 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  __chkstk_darwin(v26);
  v28 = v55 - v27;
  v29 = type metadata accessor for WeatherDataOperationResult(0);
  __chkstk_darwin(v29);
  v31 = (v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v57 = a4;
    v32 = v77;
    if (qword_10012EB38 != -1)
    {
      swift_once();
    }

    v58 = v11;
    v33 = sub_1000E9F64();
    sub_100008CB8(v33, qword_100145C10);
    v34 = v59;
    v35 = sub_1000E9F44();
    v36 = sub_1000EC194();

    v37 = a3;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 141558275;
      *(v38 + 4) = 1752392040;
      *(v38 + 12) = 2113;
      *(v38 + 14) = v34;
      *v39 = v34;
      v40 = v34;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to interpolate, falling back to aggregate fetch from WDS; location=%{private,mask.hash}@", v38, 0x16u);
      sub_100008E48(v39, &qword_1001325D0, &unk_1000F3D80);
    }

    v59 = *&a3[qword_1001323F8];
    v56 = v25;
    sub_1000E8FE4();
    sub_1000E8FF4();
    sub_1000E8FC4();
    sub_1000E8FA4();
    v55[1] = v34;
    v41 = v68;
    sub_1000E8F94();
    v42 = v69;
    sub_1000E8FD4();
    v43 = v72;
    sub_1000E8FB4();
    v44 = swift_allocObject();
    v45 = v57;
    v44[2] = v37;
    v44[3] = v45;
    v44[4] = v32;
    sub_1000E88D4();
    v46 = v37;

    sub_100002A10(&qword_10012F108, &qword_1000EEF10);
    sub_100002A10(&qword_100132670, &unk_1000F54E0);
    sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
    sub_100002A10(&qword_10012F260, &unk_1000EF030);
    sub_100002A10(&qword_10012F0F8, &qword_1000EEF00);
    sub_100002A10(&qword_100132678, &qword_1000F54F0);
    v47 = v56;
    v48 = v78;
    v49 = v79;
    v50 = v80;
    sub_1000E8B94();

    (*(v75 + 8))(v43, v58);
    (*(v73 + 8))(v42, v74);
    (*(v70 + 8))(v41, v71);
    (*(v66 + 8))(v50, v67);
    (*(v64 + 8))(v49, v65);
    (*(v62 + 8))(v48, v63);
    return (*(v60 + 8))(v47, v61);
  }

  else
  {
    *v31 = v58;
    type metadata accessor for WeatherDataOperationResult.Data(0);
    swift_storeEnumTagMultiPayload();
    v52 = qword_1001323F0;
    v53 = *(v29 + 20);
    v54 = sub_1000E9A84();
    (*(*(v54 - 8) + 16))(v31 + v53, &a3[v52], v54);
    sub_10006B8A8(v31, v28);
    swift_storeEnumTagMultiPayload();

    a4(v28);
    sub_100008E48(v28, &qword_1001325D8, &unk_1000FABC0);
    return sub_10006B90C(v31);
  }
}

void sub_100067C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A58();
  a19 = v21;
  a20 = v22;
  v159 = v23;
  v160 = v24;
  v157 = v26;
  v158 = v25;
  v162 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v27);
  sub_10000D58C();
  v163 = v28;
  v29 = sub_10000921C();
  v153 = type metadata accessor for WeatherDataOperationResult(v29);
  sub_1000069E4();
  __chkstk_darwin(v30);
  sub_10004B3F0();
  v156 = v31;
  sub_10000921C();
  sub_1000E8CD4();
  sub_1000090D4();
  v154 = v33;
  v155 = v32;
  __chkstk_darwin(v32);
  sub_10004B3F0();
  v161 = v34;
  v35 = sub_100002A10(&qword_1001325F0, &qword_1000F3D90);
  sub_1000069E4();
  v37 = __chkstk_darwin(v36);
  v39 = &v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v37);
  v42 = &v129 - v41;
  __chkstk_darwin(v40);
  sub_10000D4D0();
  v152 = v43;
  sub_10004B6F4();
  __chkstk_darwin(v44);
  sub_10000D4D0();
  v46 = v45;
  sub_10004B6F4();
  __chkstk_darwin(v47);
  sub_10000D4D0();
  v164 = v48;
  sub_10004B6F4();
  __chkstk_darwin(v49);
  sub_10000D4D0();
  v165 = v50;
  sub_10004B6F4();
  __chkstk_darwin(v51);
  sub_10000D4D0();
  v53 = v52;
  sub_10004B6F4();
  __chkstk_darwin(v54);
  sub_10000D56C();
  v56 = v55;
  sub_100002A10(&qword_1001325F8, &qword_1000F3D98);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v57);
  sub_10006BC48();
  sub_1000068F4(v158, v20, &qword_1001325F8, &qword_1000F3D98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100008E48(v20, &qword_1001325F8, &qword_1000F3D98);
    sub_10006B550();
    v58 = swift_allocError();
    *v59 = 0;
    v60 = v163;
    *v163 = v58;
    swift_storeEnumTagMultiPayload();
    v159(v60);
    v61 = &qword_1001325D8;
    v62 = &unk_1000FABC0;
    v63 = v60;
  }

  else
  {
    sub_1000068A4(v20, v56, &qword_1001325F0, &qword_1000F3D90);
    v151 = v53;
    sub_10006BCA0(v56, v53);
    v64 = v35[12];
    v147 = v35[16];
    v148 = v64;
    v65 = v35[20];
    v145 = v35[24];
    v146 = v65;
    sub_10006BBFC(v35[28]);
    sub_10006BCA0(v56, v165);
    v158 = v35[12];
    sub_10006BCF0(v35[16]);
    v143 = v66;
    v142 = v35[24];
    sub_10006BBFC(v35[28]);
    sub_10006BCA0(v56, v164);
    sub_10006BC64(v35[12]);
    v150 = v67;
    v141 = v35[20];
    v140 = v35[24];
    sub_10006BBFC(v35[28]);
    sub_10006BCA0(v56, v46);
    sub_10006BC64(v35[12]);
    sub_10006BCF0(v68);
    v149 = v69;
    v139 = v35[24];
    v138 = v35[28];
    v136 = v46;

    v70 = v152;
    sub_10006BCA0(v56, v152);
    sub_10006BC64(v35[12]);
    sub_10006BCF0(v71);
    v137 = v72;
    sub_10006BBFC(v35[28]);
    v144 = v56;
    sub_1000068F4(v56, v42, &qword_1001325F0, &qword_1000F3D90);
    sub_10006BC64(v35[12]);
    sub_10006BCF0(v73);
    v135 = v74;
    v134 = v35[24];

    sub_1000068F4(v56, v39, &qword_1001325F0, &qword_1000F3D90);
    sub_10006BC64(v35[12]);
    v132 = v75;
    v76 = v35[20];
    v77 = v35[24];
    v78 = v35[28];
    sub_1000E8C54();
    sub_100008E48(&v39[v78], &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(&v39[v77], &qword_10012F260, &unk_1000EF030);
    v79 = sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
    sub_1000069E4();
    v81 = *(v80 + 8);
    v158 = v80 + 8;
    v81(&v39[v76], v79);
    v82 = sub_100002A10(&qword_100132670, &unk_1000F54E0);
    sub_1000069E4();
    v150 = *(v83 + 8);
    v84 = v83 + 8;
    v149 = v82;
    v150(&v39[v132], v82);
    sub_100008E48(v133 + v39, &qword_10012F108, &qword_1000EEF10);
    v85 = sub_1000E88D4();
    sub_1000069E4();
    v87 = *(v86 + 8);
    v87(v39, v85);
    v133 = v87;
    v88 = sub_10006BD1C(&v154);
    sub_100008E48(v88, &qword_10012F260, &unk_1000EF030);
    v89 = sub_10006BD1C(&v155);
    v129 = v79;
    v81(v89, v79);
    v130 = v81;
    v90 = sub_10006BD1C(&v156);
    v91 = v82;
    v92 = v150;
    v150(v90, v91);
    v93 = sub_10006BD1C(&v157);
    sub_100008E48(v93, &qword_10012F108, &qword_1000EEF10);
    v87(v42, v85);
    v94 = sub_10006BD28(&v159);
    sub_100008E48(v94, &qword_10012F0F8, &qword_1000EEF00);
    v95 = sub_10006BD28(&v160);
    v81(v95, v79);
    v96 = sub_10006BD28(&v161);
    v97 = v149;
    v131 = v84;
    v92(v96, v149);
    v98 = v92;
    v99 = sub_10006BD28(&v162);
    sub_100008E48(v99, &qword_10012F108, &qword_1000EEF10);
    v100 = v133;
    v133(v70, v85);
    v101 = v136;
    sub_100008E48(v136 + v138, &qword_10012F0F8, &qword_1000EEF00);
    v102 = sub_10006BB50(&v164);
    sub_100008E48(v102, &qword_10012F260, &unk_1000EF030);
    v103 = sub_10006BB50(&v165);
    v98(v103, v97);
    v104 = sub_10006BB50(&v166);
    sub_100008E48(v104, &qword_10012F108, &qword_1000EEF10);
    v100(v101, v85);
    v105 = v164;
    v106 = sub_10006BB50(&a9);
    sub_100008E48(v106, &qword_10012F0F8, &qword_1000EEF00);
    v107 = sub_10006BB50(&a10);
    sub_100008E48(v107, &qword_10012F260, &unk_1000EF030);
    v108 = sub_10006BB50(&a11);
    v109 = v129;
    v110 = v130;
    v130(v108, v129);
    v111 = sub_10006BB50(&a12);
    sub_100008E48(v111, &qword_10012F108, &qword_1000EEF10);
    v100(v105, v85);
    v112 = v165;
    v113 = sub_10006BB50(&a13);
    sub_100008E48(v113, &qword_10012F0F8, &qword_1000EEF00);
    v114 = sub_10006BB50(&a14);
    sub_100008E48(v114, &qword_10012F260, &unk_1000EF030);
    v115 = sub_10006BB50(&a15);
    v110(v115, v109);
    v116 = sub_10006BB50(&a16);
    v117 = v149;
    v118 = v150;
    v150(v116, v149);
    v100(v112, v85);
    v119 = v151;
    v120 = sub_10006BB50(&a17);
    sub_100008E48(v120, &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(v119 + v145, &qword_10012F260, &unk_1000EF030);
    v110(v119 + v146, v109);
    v118(v119 + v147, v117);
    sub_100008E48(v119 + v148, &qword_10012F108, &qword_1000EEF10);
    v122 = v154;
    v121 = v155;
    v123 = v156;
    v124 = v161;
    (*(v154 + 16))(v156, v161, v155);
    type metadata accessor for WeatherDataOperationResult.Data(0);
    swift_storeEnumTagMultiPayload();
    v125 = qword_1001323F0;
    v126 = *(v153 + 20);
    sub_1000E9A84();
    sub_1000069E4();
    (*(v127 + 16))(v123 + v126, v157 + v125);
    v128 = v163;
    sub_10006B8A8(v123, v163);
    swift_storeEnumTagMultiPayload();
    v159(v128);
    sub_100008E48(v128, &qword_1001325D8, &unk_1000FABC0);
    sub_10006B90C(v123);
    (*(v122 + 8))(v124, v121);
    v63 = v144;
    v61 = &qword_1001325F0;
    v62 = &qword_1000F3D90;
  }

  sub_100008E48(v63, v61, v62);
  sub_100006A20();
}

uint64_t sub_100068728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v361 = a2;
  v6 = sub_1000E8CD4();
  v7 = sub_10006BB10(v6, &v378);
  v350 = v8;
  __chkstk_darwin(v7);
  sub_10004B3F0();
  sub_10000D4C4(v9);
  v348 = sub_100002A10(&qword_1001325F0, &qword_1000F3D90);
  sub_1000069E4();
  __chkstk_darwin(v10);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v11);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v12);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v13);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v14);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v15);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v16);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v17);
  sub_10000D56C();
  sub_10000D4C4(v18);
  v417 = sub_100002A10(&qword_1001325F8, &qword_1000F3D98);
  sub_1000069E4();
  __chkstk_darwin(v19);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v20);
  sub_10000D56C();
  sub_10000D4C4(v21);
  v22 = sub_100002A10(&qword_100132600, &qword_1000F3DA0);
  sub_10006BB10(v22, &v434);
  v414 = v23;
  sub_100009204();
  __chkstk_darwin(v24);
  sub_10000D58C();
  sub_10000D4C4(v25);
  v26 = sub_100002A10(&qword_100132608, &qword_1000F3DA8);
  sub_10006BB10(v26, &v432);
  v413 = v27;
  sub_100009204();
  __chkstk_darwin(v28);
  sub_10000D58C();
  sub_10000D4C4(v29);
  v30 = sub_100002A10(&qword_100132610, &qword_1000F3DB0);
  sub_10006BB10(v30, &v430);
  v412 = v31;
  sub_100009204();
  __chkstk_darwin(v32);
  sub_10000D58C();
  sub_10000D4C4(v33);
  v34 = sub_100002A10(&qword_100132618, &qword_1000F3DB8);
  sub_10006BB10(v34, &v428);
  v411 = v35;
  sub_100009204();
  __chkstk_darwin(v36);
  sub_10000D58C();
  sub_10000D4C4(v37);
  v38 = sub_100002A10(&qword_100132620, &unk_1000F3DC0);
  sub_10006BB10(v38, &v426);
  v410 = v39;
  sub_100009204();
  __chkstk_darwin(v40);
  sub_10000D58C();
  v409 = v41;
  v42 = sub_100002A10(&qword_100132628, &unk_1000F54D0);
  sub_10006BB10(v42, &v425);
  v408 = v43;
  sub_100009204();
  __chkstk_darwin(v44);
  sub_10000D58C();
  v407 = v45;
  v46 = sub_100002A10(&qword_100132630, &unk_1000F3DD0);
  v47 = sub_100009210(v46);
  __chkstk_darwin(v47);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v48);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v49);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v50);
  sub_10000D56C();
  sub_10000D4C4(v51);
  v52 = sub_1000E8A94();
  v53 = sub_10006BB10(v52, &v424);
  v406 = v54;
  __chkstk_darwin(v53);
  sub_10004B3F0();
  sub_10000D4C4(v55);
  v56 = sub_100002A10(&qword_100132638, &unk_1000F54C0);
  v57 = sub_10006BB10(v56, &v435);
  v368 = v58;
  __chkstk_darwin(v57);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v59);
  sub_10000D56C();
  v424 = v60;
  sub_10000921C();
  v423 = sub_1000E8604();
  sub_1000090D4();
  v390 = v61;
  __chkstk_darwin(v62);
  sub_10000D45C();
  v422 = v63;
  sub_10004B6F4();
  __chkstk_darwin(v64);
  sub_10000D56C();
  v415 = v65;
  sub_10000921C();
  v66 = sub_1000E9004();
  v67 = sub_10006BB10(v66, &v391);
  v359 = v68;
  __chkstk_darwin(v67);
  sub_10004B3F0();
  v419 = v69;
  v70 = sub_100002A10(&qword_100132640, &unk_1000F3DE0);
  sub_100009210(v70);
  sub_100009204();
  __chkstk_darwin(v71);
  sub_10000D58C();
  sub_10000D4C4(v72);
  v73 = sub_1000E8A14();
  v74 = sub_10006BB10(v73, &v418);
  v387 = v75;
  __chkstk_darwin(v74);
  sub_100006A10();
  v76 = sub_100002A10(&qword_100132648, &qword_1000F54A0);
  sub_100009210(v76);
  sub_100009204();
  __chkstk_darwin(v77);
  v79 = &v346 - v78;
  v80 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  sub_100009210(v80);
  sub_100009204();
  __chkstk_darwin(v81);
  sub_10006BC48();
  v82 = sub_1000E8A64();
  v83 = sub_10006BB10(v82, &v389);
  v357 = v84;
  __chkstk_darwin(v83);
  sub_10004B3F0();
  v418 = v85;
  sub_10000921C();
  v421 = sub_1000E94B4();
  sub_1000090D4();
  v87 = v86;
  __chkstk_darwin(v88);
  sub_100006A10();
  v91 = v90 - v89;
  v92 = sub_1000E8A84();
  v93 = sub_10006BB10(v92, &v394);
  v363 = v94;
  __chkstk_darwin(v93);
  sub_10004B3F0();
  sub_10000D4C4(v95);
  sub_1000E99B4();
  v97 = v96;
  v420 = a1;
  sub_1000E99B4();
  v99 = [objc_allocWithZone(CLLocation) initWithLatitude:v97 longitude:v98];
  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C(&qword_10012EB38);
  }

  v100 = sub_1000E9F64();
  v101 = sub_100008CB8(v100, qword_100145C10);
  v102 = v99;
  v416 = v101;
  v103 = sub_1000E9F44();
  v104 = sub_1000EC1B4();
  v405 = v102;

  if (os_log_type_enabled(v103, v104))
  {
    v105 = sub_1000327F4();
    v106 = sub_10006BC88();
    sub_10006BB28(7.2225e-34);
    sub_10006BBD4();
    *(v105 + 14) = v107;
    *v108 = v107;
    v109 = v107;
    _os_log_impl(&_mh_execute_header, v103, v104, "About to retrieve cached weather data; location=%{private,mask.hash}@", v105, 0x16u);
    sub_100008E48(v106, &qword_1001325D0, &unk_1000F3D80);
    sub_100009194(v106);
    sub_10006BBAC();
  }

  v110 = (v4 + qword_100132400);
  sub_100008DA8((v4 + qword_100132400), *(v4 + qword_100132400 + 24));
  sub_1000E9804();
  sub_1000E9484();
  v111 = *(v87 + 8);
  v386 = v87 + 8;
  v111(v91, v421);
  sub_1000E8A74();
  v112 = WCCountryCodeEstimate();
  v362 = v4;
  if (v112)
  {
    v113 = v112;
    v385 = sub_1000EBE84();
    v384 = v114;
  }

  else
  {
    v385 = 0;
    v384 = 0;
  }

  sub_1000E9A74();
  v115 = sub_1000E8784();
  sub_10000D554();
  sub_1000028A0(v116, v117, v118, v115);
  v119 = v364;
  (*(v363 + 16))(v79, v365, v364);
  sub_10000D554();
  sub_1000028A0(v120, v121, v122, v119);
  sub_100002A10(&qword_100132650, &qword_1000F3DF0);
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_1000EFAD0;
  sub_1000E8A04();
  v425 = v123;
  sub_10006BB5C();
  sub_10006B5CC(v124, v125, &protocol conformance descriptor for WeatherServiceCaching.Options);
  sub_100002A10(&qword_100132660, &qword_1000F3DF8);
  sub_10006B614();
  sub_1000EC3C4();
  sub_100008DA8(v110, v110[3]);
  sub_1000E9804();
  sub_1000E9454();
  v111(v91, v421);
  v126 = sub_1000E8A44();
  sub_1000028A0(v389, 1, 1, v126);
  sub_1000E8A54();
  v127 = v362;
  sub_1000E9A74();
  sub_10000D554();
  sub_1000028A0(v128, v129, v130, v115);
  sub_1000E9014();
  sub_100008E48(v3, &qword_1001304C8, &qword_1000F3D70);
  switch(*(v127 + qword_100132410))
  {
    case 1:
    case 2:
    case 4:
      sub_10006BBD4();

      goto LABEL_29;
    default:
      v347 = *(v127 + qword_100132410);
      v131 = v390[2];
      v384 = v390 + 2;
      v383 = v131;
      v131(v415, v127 + qword_100132420, v423);
      sub_10006BBD4();
      v133 = v132;
      v134 = sub_1000E9F44();
      v135 = sub_1000EC1B4();

      v136 = os_log_type_enabled(v134, v135);
      v405 = v133;
      if (v136)
      {
        v137 = sub_1000327F4();
        v138 = sub_10006BC88();
        *v137 = 141558275;
        *(v137 + 4) = 1752392040;
        *(v137 + 12) = 2113;
        *(v137 + 14) = v133;
        *v138 = v133;
        v139 = v133;
        _os_log_impl(&_mh_execute_header, v134, v135, "Attempting to retrieve cached weather data; location=%{private,mask.hash}@", v137, 0x16u);
        sub_100008E48(v138, &qword_1001325D0, &unk_1000F3D80);
        sub_10006BBAC();
        sub_100009194(v137);
      }

      sub_10006BC7C();
      v141 = *(v140 + 104);
      v142 = v392;
      LODWORD(v382) = v143;
      v144 = v393;
      v381 = v140 + 104;
      v380 = v141;
      v141(v392);
      sub_1000E8AF4();
      v145 = *(v3 + 8);
      v406 = v3 + 8;
      v379 = v145;
      v145(v142, v144);
      v389 = *(v127 + qword_1001323F8);
      sub_1000E8FE4();
      sub_1000E8FF4();
      v146 = v396;
      sub_1000E8FA4();
      v147 = v398;
      sub_1000E8F94();
      v148 = v400;
      sub_1000E8FD4();
      v149 = v402;
      sub_1000E8FB4();
      v150 = sub_1000E88D4();
      v151 = sub_100002A10(&qword_10012F108, &qword_1000EEF10);
      v152 = sub_100002A10(&qword_100132670, &unk_1000F54E0);
      v153 = sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
      v154 = sub_100002A10(&qword_10012F260, &unk_1000EF030);
      v155 = sub_100002A10(&qword_10012F0F8, &qword_1000EEF00);
      v375 = sub_100002A10(&qword_100132678, &qword_1000F54F0);
      v376 = v155;
      v377 = v154;
      v387 = v153;
      v388 = v152;
      v378 = v151;
      v386 = v150;
      v156 = v367;
      v157 = v407;
      v158 = v409;
      sub_1000E8BB4();
      v159 = *(v414 + 8);
      v414 += 8;
      v374 = v159;
      v159(v149, v403);
      v160 = *(v413 + 8);
      v413 += 8;
      v373 = v160;
      v160(v148, v401);
      v161 = *(v412 + 8);
      v412 += 8;
      v372 = v161;
      v161(v147, v399);
      v162 = *(v411 + 8);
      v411 += 8;
      v371 = v162;
      v162(v146, v397);
      v163 = *(v410 + 8);
      v410 += 8;
      v370 = v163;
      v163(v158, v395);
      v164 = *(v408 + 8);
      v408 += 8;
      v369 = v164;
      v165 = (v164)(v157, v394);
      v166 = 0;
      v167 = (v390 + 1);
      v390 = v368 + 1;
      v368 += 4;
      v165.n128_u64[0] = 134218499;
      v366 = v165;
      v168 = v156;
      v385 = v167;
      v169 = v398;
      while (1)
      {
        sub_10006BD10();
        sub_1000068F4(v170, v171, &qword_100132630, &unk_1000F3DD0);
        v172 = sub_100005B30(v156, 1, v417);
        sub_100008E48(v156, &qword_100132630, &unk_1000F3DD0);
        v173 = v405;
        if (v172 != 1 || v166 == 19)
        {
          break;
        }

        v174 = v422;
        v175 = v415;
        sub_1000E8594();
        v176 = v423;
        v421 = *v167;
        (v421)(v175, v423);
        v383(v175, v174, v176);
        v177 = v166 + 1;
        v178 = v392;
        v179 = v393;
        v380(v392, v382, v393);
        v180 = v391;
        sub_1000E8AF4();
        v379(v178, v179);
        v181 = v424;
        v182 = v404;
        (*v390)(v424, v404);
        (*v368)(v181, v180, v182);
        v183 = v173;
        v184 = sub_1000E9F44();
        v185 = sub_1000EC1B4();

        if (os_log_type_enabled(v184, v185))
        {
          v186 = swift_slowAlloc();
          v187 = sub_10006BC88();
          *v186 = v366.n128_u32[0];
          *(v186 + 4) = v177;
          *(v186 + 12) = 2160;
          *(v186 + 14) = 1752392040;
          *(v186 + 22) = 2113;
          *(v186 + 24) = v183;
          *v187 = v173;
          v188 = v183;
          _os_log_impl(&_mh_execute_header, v184, v185, "Cache retrieval attempt #%ld; location=%{private,mask.hash}@", v186, 0x20u);
          sub_100008E48(v187, &qword_1001325D0, &unk_1000F3D80);
          sub_100009194(v187);
          v168 = v367;
          sub_100009194(v186);
        }

        v189 = v407;
        sub_1000E8FE4();
        v156 = v409;
        sub_1000E8FF4();
        v420 = v177;
        v190 = v168;
        v191 = v396;
        sub_1000E8FA4();
        sub_1000E8F94();
        v192 = v400;
        sub_1000E8FD4();
        v193 = v402;
        sub_1000E8FB4();
        sub_10006BC7C();
        sub_1000E8BB4();
        v374(v193, v403);
        v373(v192, v401);
        v372(v169, v399);
        v194 = v191;
        v168 = v190;
        v371(v194, v397);
        v370(v156, v395);
        v369(v189, v394);
        v167 = v385;
        (v421)(v422, v423);
        sub_100008E48(v190, &qword_100132630, &unk_1000F3DD0);
        sub_1000068A4(v173, v190, &qword_100132630, &unk_1000F3DD0);
        v166 = v420;
      }

      sub_10006BD10();
      sub_1000068F4(v195, v196, v197, v198);
      v199 = sub_100005B30(v156, 1, v417);
      v200 = v356;
      if (v199 == 1)
      {
        sub_100008E48(v156, &qword_100132630, &unk_1000F3DD0);
        v201 = v173;
        v202 = sub_1000E9F44();
        v203 = sub_1000EC194();

        if (os_log_type_enabled(v202, v203))
        {
          v204 = sub_1000327F4();
          v205 = sub_10006BC88();
          sub_10006BB28(7.2225e-34);
          *(v204 + 14) = v201;
          *v206 = v173;
          v207 = v201;
          _os_log_impl(&_mh_execute_header, v202, v203, "Aborting: NO cached weather data found; location=%{private,mask.hash}@,", v204, 0x16u);
          sub_100008E48(v205, &qword_1001325D0, &unk_1000F3D80);
          sub_100009194(v205);
          sub_10006BBAC();
        }

        goto LABEL_28;
      }

      sub_1000068A4(v156, v356, &qword_1001325F8, &qword_1000F3D98);
      v209 = v173;
      v210 = sub_1000E9F44();
      v211 = sub_1000EC1B4();

      if (os_log_type_enabled(v210, v211))
      {
        v212 = swift_slowAlloc();
        v213 = sub_10006BC88();
        *v212 = v366.n128_u32[0];
        *(v212 + 4) = v166;
        *(v212 + 12) = 2160;
        *(v212 + 14) = 1752392040;
        *(v212 + 22) = 2113;
        *(v212 + 24) = v209;
        *v213 = v173;
        v214 = v209;
        _os_log_impl(&_mh_execute_header, v210, v211, "Successfully retrieved for cached weather after %ld iteration; location=%{private,mask.hash}@", v212, 0x20u);
        sub_100008E48(v213, &qword_1001325D0, &unk_1000F3D80);
        sub_100009194(v213);
        sub_10006BBAC();
      }

      sub_10006BD10();
      sub_1000068F4(v215, v216, v217, v218);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v219 = v209;
        swift_errorRetain();
        v220 = sub_1000E9F44();
        v221 = sub_1000EC194();

        if (os_log_type_enabled(v220, v221))
        {
          v222 = swift_slowAlloc();
          v223 = swift_slowAlloc();
          sub_10006BB28(7.2226e-34);
          *(v222 + 14) = v219;
          *v224 = v173;
          *(v222 + 22) = 2112;
          v225 = v219;
          swift_errorRetain();
          v226 = _swift_stdlib_bridgeErrorToNSError();
          *(v222 + 24) = v226;
          *(v223 + 8) = v226;
          _os_log_impl(&_mh_execute_header, v220, v221, "Aborting: unexpected error while fetching cached weather data; location=%{private,mask.hash}@, error=%@", v222, 0x20u);
          sub_100002A10(&qword_1001325D0, &unk_1000F3D80);
          swift_arrayDestroy();
          sub_100009194(v223);
          sub_10006BBAC();
        }

        sub_100008E48(v200, &qword_1001325F8, &qword_1000F3D98);
LABEL_28:
        sub_100008E48(v367, &qword_100132630, &unk_1000F3DD0);
        v227 = sub_10006BBE0();
        v228(v227);
        (*v167)(v415, v423);
LABEL_29:
        sub_10006BB44();
        v229(v419, v360);
        sub_10006BB44();
        v230(v418, v358);
        sub_10006BB44();
        v232 = v365;
        v233 = &v394;
        goto LABEL_30;
      }

      sub_10006BD10();
      sub_10006BBC8();
      sub_1000068A4(v239, v240, v241, v242);
      sub_10006BBC8();
      sub_1000068F4(v243, v244, v245, v246);
      v247 = v348;
      v248 = v348[12];
      v421 = v348[16];
      v422 = v248;
      v420 = v348[20];
      v249 = v348[24];
      v416 = v348[28];
      v417 = v249;

      sub_10006BBC8();
      sub_1000068F4(v250, v251, v252, v253);
      v392 = v247[12];
      v254 = v247[16];
      v413 = v247[20];
      v414 = v254;
      v255 = v247[24];
      v411 = v247[28];
      v412 = v255;

      sub_10006BBC8();
      sub_1000068F4(v256, v257, v258, v259);
      v410 = v247[12];
      v389 = v247[16];
      v260 = v247[20];
      v408 = v247[24];
      v409 = v260;
      v407 = v247[28];

      sub_10006BBC8();
      sub_1000068F4(v261, v262, v263, v264);
      sub_10006BCE4(v247[12]);
      sub_10006BCD8(v265);
      sub_10006BCCC(v266);
      v405 = v267;
      v403 = v247[28];

      sub_10006BBC8();
      sub_1000068F4(v268, v269, v270, v271);
      sub_10006BCE4(v247[12]);
      sub_10006BCD8(v272);
      sub_10006BCCC(v273);
      v382 = v274;
      v399 = v247[28];

      sub_10006BBC8();
      sub_1000068F4(v275, v276, v277, v278);
      sub_10006BCE4(v247[12]);
      sub_10006BCD8(v279);
      sub_10006BCCC(v280);
      v395 = v281;

      v282 = v209;
      v283 = v349;
      sub_1000068F4(v156, v349, &qword_1001325F0, &qword_1000F3D90);
      sub_10006BCE4(v247[12]);
      sub_10006BCD8(v284);
      sub_10006BCCC(v285);
      v391 = v286;
      v384 = v247[28];
      sub_1000E8C54();

      sub_100008E48(v156, &qword_1001325F0, &qword_1000F3D90);
      sub_100008E48(v200, &qword_1001325F8, &qword_1000F3D98);
      sub_100008E48(v367, &qword_100132630, &unk_1000F3DD0);
      v287 = sub_10006BBE0();
      v288(v287);
      (*v385)(v415, v423);
      sub_10006BB44();
      v289(v419, v360);
      sub_10006BB44();
      v290(v418, v358);
      sub_10006BB44();
      v291(v365, v364);
      v292 = sub_10006BC70(&v414);
      sub_100008E48(v292, v293, v294);
      v295 = sub_10006BC70(&v421);
      sub_100008E48(v295, v296, v297);
      v298 = v387;
      sub_1000326A0();
      v300 = *(v299 + 8);
      v424 = v299 + 8;
      v301 = sub_10006BC70(&v422);
      v300(v301, v298);
      v302 = v300;
      v303 = v388;
      sub_1000326A0();
      v305 = *(v304 + 8);
      v306 = v304 + 8;
      v307 = sub_10006BC70(&v424);
      v305(v307, v303);
      v423 = v306;
      v308 = sub_10006BC70(&v425);
      sub_100008E48(v308, v309, v310);
      sub_10006BC7C();
      sub_1000326A0();
      v312 = *(v311 + 8);
      v313 = v311 + 8;
      v312(v283, v247);
      v415 = v312;
      v314 = sub_10006BB74(&v426);
      sub_100008E48(v314, &qword_10012F260, &unk_1000EF030);
      v315 = sub_10006BB74(&v427);
      v302(v315, v298);
      v418 = v302;
      v316 = sub_10006BB74(&v428);
      v305(v316, v303);
      v317 = sub_10006BB74(&v429);
      sub_100008E48(v317, &qword_10012F108, &qword_1000EEF10);
      v318 = sub_10006BC58();
      (v312)(v318);
      sub_100008E48(v351 + v399, &qword_10012F0F8, &qword_1000EEF00);
      v319 = sub_10006BB74(&v431);
      v302(v319, v298);
      v320 = sub_10006BB74(&v432);
      v321 = v388;
      v419 = v305;
      v305(v320, v388);
      v322 = sub_10006BB74(&v433);
      sub_100008E48(v322, &qword_10012F108, &qword_1000EEF10);
      v323 = sub_10006BC58();
      v324 = v415;
      (v415)(v323);
      v325 = sub_10006BB74(&v434);
      sub_100008E48(v325, &qword_10012F0F8, &qword_1000EEF00);
      v326 = sub_10006BB74(&v436);
      sub_100008E48(v326, &qword_10012F260, &unk_1000EF030);
      v327 = sub_10006BB74(&v437);
      v305(v327, v321);
      v328 = sub_10006BB74(&v438);
      sub_100008E48(v328, &qword_10012F108, &qword_1000EEF10);
      v329 = sub_10006BC58();
      v324(v329);
      v330 = v353;
      sub_100008E48(v353 + v407, &qword_10012F0F8, &qword_1000EEF00);
      sub_100008E48(v330 + v408, &qword_10012F260, &unk_1000EF030);
      v331 = v387;
      v332 = v418;
      v418(v330 + v409, v387);
      sub_100008E48(v330 + v410, &qword_10012F108, &qword_1000EEF10);
      v333 = sub_10006BC58();
      v324(v333);
      v334 = v354;
      sub_100008E48(v354 + v411, &qword_10012F0F8, &qword_1000EEF00);
      sub_100008E48(v334 + v412, &qword_10012F260, &unk_1000EF030);
      v332(v334 + v413, v331);
      v335 = v388;
      v336 = v419;
      v419(v334 + v414, v388);
      v337 = sub_10006BC58();
      v324(v337);
      v338 = v355;
      sub_100008E48(v355 + v416, &qword_10012F0F8, &qword_1000EEF00);
      sub_100008E48(v338 + v417, &qword_10012F260, &unk_1000EF030);
      v332(v338 + v420, v331);
      v336(v338 + v421, v335);
      sub_100008E48(v338 + v422, &qword_10012F108, &qword_1000EEF10);
      v339 = v362;
      if (((1 << v347) & 0x16) != 0)
      {
        sub_10006BB44();
        v232 = v352;
        v233 = &v378;
LABEL_30:
        v231(v232, *(v233 - 32));
        v234 = type metadata accessor for WeatherDataOperationResult(0);
        v235 = v361;
        v236 = 1;
        v237 = 1;
        return sub_1000028A0(v235, v236, v237, v234);
      }

      v340 = sub_10006BB80();
      v341(v340);
      type metadata accessor for WeatherDataOperationResult.Data(0);
      swift_storeEnumTagMultiPayload();
      v342 = qword_1001323F0;
      v343 = type metadata accessor for WeatherDataOperationResult(0);
      v344 = *(v343 + 20);
      sub_1000E9A84();
      sub_1000069E4();
      (*(v345 + 16))(v313 + v344, v339 + v342);
      sub_10000D554();
      v234 = v343;
      return sub_1000028A0(v235, v236, v237, v234);
  }
}

uint64_t sub_10006AB74()
{
  v1 = qword_1001323F0;
  sub_1000E9A84();
  sub_1000069E4();
  (*(v2 + 8))(v0 + v1);

  sub_100009068((v0 + qword_100132400));
  sub_100009068((v0 + qword_100132408));

  v3 = qword_100132420;
  sub_1000E8604();
  sub_1000069E4();
  v5 = *(v4 + 8);

  return v5(v0 + v3);
}

id sub_10006AC4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherDataOperation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006AC84(uint64_t a1)
{
  v2 = qword_1001323F0;
  sub_1000E9A84();
  sub_1000069E4();
  (*(v3 + 8))(a1 + v2);

  sub_100009068((a1 + qword_100132400));
  sub_100009068((a1 + qword_100132408));

  v4 = qword_100132420;
  sub_1000E8604();
  sub_1000069E4();
  v6 = *(v5 + 8);

  return v6(a1 + v4);
}

uint64_t sub_10006AD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WeatherDataOperationResult.Data(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_1000E9A84();
    v8 = a1 + *(a3 + 20);
  }

  return sub_100005B30(v8, a2, v7);
}

uint64_t sub_10006AE50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WeatherDataOperationResult.Data(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_1000E9A84();
    v10 = a1 + *(a4 + 20);
  }

  return sub_1000028A0(v10, a2, a2, v9);
}

uint64_t sub_10006AF14(uint64_t a1)
{
  result = type metadata accessor for WeatherDataOperationResult.Data(319);
  if (v2 <= 0x3F)
  {
    result = sub_1000E9A84();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006AF98(uint64_t a1)
{
  v1 = sub_1000E8CD4();
  if (v2 <= 0x3F)
  {
    sub_10006B020(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_10006B020(uint64_t a1)
{
  if (!qword_100132598)
  {
    sub_1000E89B4();
    v1 = sub_1000EC034();
    if (!v2)
    {
      atomic_store(v1, &qword_100132598);
    }
  }
}

uint64_t sub_10006B078(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_1000326A0();
  (*v3)(a2);
  return a2;
}

uint64_t sub_10006B0D8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006B12C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10006B164()
{
  sub_100006A58();
  sub_1000E8A84();
  sub_1000090D4();
  sub_1000E9004();
  sub_1000090D4();

  v1 = sub_10006BC38();
  v2(v1);
  v3 = sub_10006BC28();
  v4(v3);
  sub_10006BC18();
  sub_100006A20();

  return _swift_deallocObject(v5);
}

double sub_10006B28C(uint64_t *a1)
{
  v3 = sub_1000E8A84();
  sub_100032590(v3);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = sub_1000E9004();
  sub_100009210(v6);
  sub_10006BCB8();
  return sub_100065410(a1, v8, v9, v10, v11, v12, v1 + v5, v1 + v7);
}

uint64_t sub_10006B360()
{
  sub_100006A58();
  sub_1000E8A84();
  sub_1000090D4();
  sub_1000E9004();
  sub_1000090D4();

  v1 = sub_10006BC38();
  v2(v1);
  v3 = sub_10006BC28();
  v4(v3);
  sub_10006BC18();
  sub_100006A20();

  return _swift_deallocObject(v5);
}

void sub_10006B488(uint64_t a1)
{
  v3 = sub_1000E8A84();
  sub_100032590(v3);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = sub_1000E9004();
  sub_100009210(v6);
  sub_10006BCB8();

  sub_100065A94(a1, v7, v8, v9, v10, v11, v1 + v5, v1 + v12);
}

unint64_t sub_10006B550()
{
  result = qword_1001325E0;
  if (!qword_1001325E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001325E0);
  }

  return result;
}

uint64_t sub_10006B5A4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double sub_10006B5B8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10006B5CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10006B614()
{
  result = qword_100132668;
  if (!qword_100132668)
  {
    sub_100002ABC(&qword_100132660, &qword_1000F3DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132668);
  }

  return result;
}

uint64_t sub_10006B678()
{
  sub_100006A58();
  sub_1000E9004();
  sub_1000090D4();
  sub_1000E8A64();
  sub_1000090D4();

  v1 = sub_10006BC38();
  v2(v1);
  v3 = sub_10006BC28();
  v4(v3);
  sub_10006BC18();
  sub_100006A20();

  return _swift_deallocObject(v5);
}

uint64_t sub_10006B798(uint64_t a1, char a2)
{
  v5 = sub_1000E9004();
  sub_100032590(v5);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_1000E8A64();
  sub_100009210(v10);
  v12 = v2[2];
  v13 = v2[3];
  v14 = v2[4];
  v15 = v2[5];
  v16 = v2 + ((v7 + v9 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_100067340(a1, a2 & 1, v12, v13, v14, v15, v2 + v7, v16);
}

uint64_t sub_10006B8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataOperationResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006B90C(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataOperationResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006B968()
{

  return _swift_deallocObject(v0);
}

_BYTE *storeEnumTagSinglePayload for WeatherDataOperationError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10006BA74);
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

unint64_t sub_10006BAB0()
{
  result = qword_100132690;
  if (!qword_100132690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132690);
  }

  return result;
}

void sub_10006BB28(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2113;
}

uint64_t sub_10006BBAC()
{
}

double sub_10006BBFC@<D0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;

  return result;
}

uint64_t sub_10006BC88()
{

  return swift_slowAlloc();
}

uint64_t sub_10006BCA0(uint64_t a1, uint64_t a2)
{

  return sub_1000068F4(a1, a2, v2, v3);
}

uint64_t sub_10006BD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AdaptiveConditionsComplicationDataStatus(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100005B30(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10006BE08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AdaptiveConditionsComplicationDataStatus(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000028A0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AdaptiveConditionsRectangularContentView(uint64_t a1)
{
  result = qword_1001326F0;
  if (!qword_1001326F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006BEFC(uint64_t a1)
{
  result = type metadata accessor for AdaptiveConditionsComplicationDataStatus(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ConditionsEvaluationManager();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006BF9C()
{
  v1 = sub_1000EA4E4();
  sub_1000090D4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100006A10();
  v7 = v6 - v5;
  sub_100002A10(&qword_100132728, &qword_1000F3F80);
  sub_1000069E4();
  sub_100009204();
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  *v10 = sub_1000EA2E4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_100002A10(&qword_100132730, &qword_1000F3F88);
  sub_10006C12C(v0, &v10[*(v11 + 44)]);
  sub_1000EA4C4();
  sub_100072F98();
  sub_100006988(v12, &qword_100132728, &qword_1000F3F80, v13);
  sub_1000EA914();
  (*(v3 + 8))(v7, v1);
  return sub_100008E48(v10, &qword_100132728, &qword_1000F3F80);
}