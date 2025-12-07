uint64_t sub_1000014F8@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_100001994(&qword_100010130, &qword_100007D40);
  swift_storeEnumTagMultiPayload();
  sub_1000070B4();
  swift_allocObject();

  v3 = sub_100007004();
  result = type metadata accessor for ManagedAppCell(0);
  v5 = a2 + *(result + 20);
  *v5 = sub_1000019DC;
  *(v5 + 1) = v3;
  v5[16] = 0;
  return result;
}

uint64_t sub_1000015A8()
{
  v0 = type metadata accessor for ManagedAppCell(0);
  v1 = sub_100001860(&qword_100010128, type metadata accessor for ManagedAppCell, &unk_100007B88);

  return MADViewServiceScene.init(content:)(sub_1000014F8, 0, v0, v1);
}

uint64_t sub_10000163C(uint64_t a1)
{
  v2 = sub_10000180C();

  return MADViewServiceExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000016E8();
  sub_100006F34();
  return 0;
}

unint64_t sub_1000016E8()
{
  result = qword_100010108;
  if (!qword_100010108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010108);
  }

  return result;
}

unint64_t sub_100001754()
{
  result = qword_100010110;
  if (!qword_100010110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010110);
  }

  return result;
}

unint64_t sub_10000180C()
{
  result = qword_100010120;
  if (!qword_100010120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010120);
  }

  return result;
}

uint64_t sub_100001860(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000018CC(uint64_t a1)
{
  v2 = sub_100007104();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100007214();
}

uint64_t sub_100001994(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000019E8()
{
  result = qword_100010138;
  if (!qword_100010138)
  {
    sub_100001A4C(&qword_100010140, &qword_1000079C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010138);
  }

  return result;
}

uint64_t sub_100001A4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_100001A94(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001AA4(uint64_t a1, int a2)
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

uint64_t sub_100001AC4(uint64_t result, int a2, int a3)
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

__n128 sub_100001B00(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001B0C(uint64_t a1, int a2)
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

uint64_t sub_100001B2C(uint64_t result, int a2, int a3)
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

void sub_100001B80(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_100001BDC(uint64_t a1)
{
  sub_100001F74(319, &qword_1000101F0, &type metadata accessor for AsyncImagePhase, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_100001F74(319, &qword_1000101F8, &type metadata accessor for URLRequest, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100001FD8();
      if (v3 <= 0x3F)
      {
        sub_100002024();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100001D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001994(&qword_100010160, qword_100007A20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100001994(qword_100010168, &qword_100007D60);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100001E3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100001994(&qword_100010160, qword_100007A20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100001994(qword_100010168, &qword_100007D60);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100001F74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100001FD8()
{
  result = qword_100010200;
  if (!qword_100010200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010200);
  }

  return result;
}

unint64_t sub_100002024()
{
  result = qword_100010208;
  if (!qword_100010208)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100010208);
  }

  return result;
}

uint64_t sub_1000020B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v4 = sub_1000073A4();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = __chkstk_darwin(v4);
  v43 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  v39 = *(v7 + 64);
  __chkstk_darwin(v5);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100007164();
  v9 = *(v37 - 8);
  v10 = __chkstk_darwin(v37);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a1 + 16);
  v42 = *(v35 - 8);
  __chkstk_darwin(v10);
  v34 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001A4C(&qword_100010210, &qword_100007AC8);
  v14 = sub_100007174();
  v41 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v36 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v40 = &v33 - v17;
  v18 = *(v2 + *(a1 + 44));
  sub_100001994(&qword_100010160, qword_100007A20);
  sub_100007334();
  v18(v12);
  (*(v9 + 8))(v12, v37);
  v19 = v38;
  (*(v7 + 16))(v38, v2, a1);
  v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v21 = swift_allocObject();
  v22 = *(a1 + 24);
  v23 = v35;
  *(v21 + 16) = v35;
  *(v21 + 24) = v22;
  (*(v7 + 32))(v21 + v20, v19, a1);
  sub_100001994(qword_100010168, &qword_100007D60);
  sub_100003520();
  v24 = v43;
  sub_100007394();
  v25 = v36;
  v26 = v34;
  sub_1000072C4();

  (*(v44 + 8))(v24, v45);
  (*(v42 + 8))(v26, v23);
  v27 = sub_1000035FC();
  v47 = v22;
  v48 = v27;
  swift_getWitnessTable();
  v29 = v40;
  v28 = v41;
  v30 = *(v41 + 16);
  v30(v40, v25, v14);
  v31 = *(v28 + 8);
  v31(v25, v14);
  v30(v46, v29, v14);
  return (v31)(v29, v14);
}

uint64_t sub_1000025A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_100007164();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  sub_100001994(qword_100010168, &qword_100007D60);
  v3[13] = swift_task_alloc();
  v5 = sub_100006EF4();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  sub_100007384();
  v3[17] = sub_100007374();
  v7 = sub_100007364();
  v3[18] = v7;
  v3[19] = v6;

  return _swift_task_switch(sub_10000273C, v7, v6);
}

uint64_t sub_10000273C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[14];
  v6 = v4[15];
  v7 = v4[13];
  v8 = v4[6];
  v9 = type metadata accessor for CachedAsyncImage(0, v4[7], v4[8], a4);
  sub_100003660(v8 + *(v9 + 36), v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v10 = v4[13];

    sub_1000036D0(v10);

    v11 = v4[1];

    return v11();
  }

  else
  {
    v13 = v4[6];
    (*(v4[15] + 32))(v4[16], v4[13], v4[14]);
    v4[20] = *(v13 + *(v9 + 40));
    v14 = swift_task_alloc();
    v4[21] = v14;
    *v14 = v4;
    v14[1] = sub_1000028D4;
    v15 = v4[16];

    return NSURLSession.data(for:delegate:)(v15, 0);
  }
}

uint64_t sub_1000028D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[22] = a1;
  v6[23] = a2;
  v6[24] = a3;
  v6[25] = v3;

  v7 = v5[19];
  v8 = v5[18];
  if (v3)
  {
    v9 = sub_100002EF8;
  }

  else
  {
    v9 = sub_100002A1C;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100002A1C()
{
  v41 = v0;

  v1 = objc_allocWithZone(UIImage);
  isa = sub_100006F14().super.isa;
  v3 = [v1 initWithData:isa];

  if (v3)
  {
    v4 = v0[20];
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[9];
    v8 = v0[10];
    *v5 = sub_1000072E4();
    (*(v8 + 104))(v5, enum case for AsyncImagePhase.success(_:), v7);
    (*(v8 + 16))(v6, v5, v7);

    sub_100001994(&qword_100010160, qword_100007A20);
    sub_100007344();
    (*(v8 + 8))(v5, v7);
    v9 = [v4 configuration];
    v10 = [v9 URLCache];

    v11 = v0[23];
    v12 = v0[24];
    v13 = v0[22];
    if (v10)
    {
      v14 = objc_allocWithZone(NSCachedURLResponse);
      v15 = v12;
      sub_100003E1C(v13, v11);
      v16 = sub_100006F14().super.isa;
      v17 = [v14 initWithResponse:v15 data:v16];

      sub_100003DC8(v13, v11);
      v18 = sub_100006ED4();
      [v10 storeCachedResponse:v17 forRequest:v18];

      sub_100003DC8(v13, v11);
    }

    else
    {

      sub_100003DC8(v13, v11);
    }

    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  else
  {
    v19 = v0[23];
    v20 = v0[24];
    v21 = v0[22];
    v23 = v0[15];
    v22 = v0[16];
    v24 = v0[14];
    sub_100003D74();
    v25 = swift_allocError();
    swift_willThrow();
    (*(v23 + 8))(v22, v24);

    sub_100003DC8(v21, v19);
    if (qword_1000100F0 != -1)
    {
      swift_once();
    }

    v26 = sub_100006F94();
    sub_100003748(v26, qword_100010808);
    swift_errorRetain();
    v27 = sub_100006F74();
    v28 = sub_1000073C4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = sub_100007414();
      v33 = sub_100003780(v31, v32, &v40);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "CachedAsyncImageError: %s", v29, 0xCu);
      sub_100003D28(v30);
    }

    v35 = v0[11];
    v34 = v0[12];
    v36 = v0[9];
    v37 = v0[10];
    *v34 = v25;
    (*(v37 + 104))(v34, enum case for AsyncImagePhase.failure(_:), v36);
    (*(v37 + 16))(v35, v34, v36);
    sub_100001994(&qword_100010160, qword_100007A20);
    sub_100007344();
    (*(v37 + 8))(v34, v36);
  }

  v38 = v0[1];

  return v38();
}

uint64_t sub_100002EF8()
{
  v20 = v0;
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[15];

  (*(v3 + 8))(v1, v2);
  v4 = v0[25];
  if (qword_1000100F0 != -1)
  {
    swift_once();
  }

  v5 = sub_100006F94();
  sub_100003748(v5, qword_100010808);
  swift_errorRetain();
  v6 = sub_100006F74();
  v7 = sub_1000073C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_100007414();
    v12 = sub_100003780(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "CachedAsyncImageError: %s", v8, 0xCu);
    sub_100003D28(v9);
  }

  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[9];
  v16 = v0[10];
  *v13 = v4;
  (*(v16 + 104))(v13, enum case for AsyncImagePhase.failure(_:), v15);
  (*(v16 + 16))(v14, v13, v15);
  sub_100001994(&qword_100010160, qword_100007A20);
  sub_100007344();
  (*(v16 + 8))(v13, v15);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000031A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CachedAsyncImage(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = v4 + v7;
  v10 = sub_100007164();
  (*(*(v10 - 8) + 8))(v4 + v7, v10);
  sub_100001994(&qword_100010160, qword_100007A20);

  v11 = *(v5 + 36);
  v12 = sub_100006EF4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v4 + v7 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  return _swift_deallocObject(v4, v7 + v8, v6 | 7);
}

uint64_t sub_100003344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for CachedAsyncImage(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_10000342C;

  return sub_1000025A4(v4 + v9, v6, v7);
}

uint64_t sub_10000342C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100003520()
{
  result = qword_100010218;
  if (!qword_100010218)
  {
    sub_100001A4C(qword_100010168, &qword_100007D60);
    sub_1000035A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010218);
  }

  return result;
}

unint64_t sub_1000035A4()
{
  result = qword_100010220;
  if (!qword_100010220)
  {
    sub_100006EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010220);
  }

  return result;
}

unint64_t sub_1000035FC()
{
  result = qword_100010228;
  if (!qword_100010228)
  {
    sub_100001A4C(&qword_100010210, &qword_100007AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010228);
  }

  return result;
}

uint64_t sub_100003660(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001994(qword_100010168, &qword_100007D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000036D0(uint64_t a1)
{
  v2 = sub_100001994(qword_100010168, &qword_100007D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003748(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100003780(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000384C(v11, 0, 0, 1, a1, a2);
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
    sub_100003E70(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003D28(v11);
  return v7;
}

unint64_t sub_10000384C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003958(a5, a6);
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
    result = sub_100007404();
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

char *sub_100003958(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000039A4(a1, a2);
  sub_100003AD4(&off_10000C910);
  return v3;
}

char *sub_1000039A4(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003BC0(v5, 0);
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

  result = sub_100007404();
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
        v10 = sub_100007354();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003BC0(v10, 0);
        result = sub_1000073F4();
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

uint64_t sub_100003AD4(uint64_t result)
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

  result = sub_100003C34(result, v11, 1, v3);
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

void *sub_100003BC0(uint64_t a1, uint64_t a2)
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

  sub_100001994(&qword_100010238, &unk_100007AE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003C34(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001994(&qword_100010238, &unk_100007AE0);
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

uint64_t sub_100003D28(void *a1)
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

unint64_t sub_100003D74()
{
  result = qword_100010230;
  if (!qword_100010230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010230);
  }

  return result;
}

uint64_t sub_100003DC8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100003E1C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100003E70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003F10(uint64_t *a1)
{
  sub_100001A4C(&qword_100010210, &qword_100007AC8);
  sub_100007174();
  sub_1000035FC();
  return swift_getWitnessTable();
}

uint64_t sub_100003F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a2;
  v61 = a3;
  v68 = a1;
  v5 = sub_100001994(&qword_100010160, qword_100007A20);
  __chkstk_darwin(v5 - 8);
  v58 = &v57 - v6;
  v7 = sub_100001994(qword_100010168, &qword_100007D60);
  __chkstk_darwin(v7 - 8);
  v64 = &v57 - v8;
  v9 = sub_100006EF4();
  v62 = *(v9 - 8);
  v63 = v9;
  __chkstk_darwin(v9);
  v66 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001994(&qword_1000103C0, &qword_100007D48);
  __chkstk_darwin(v11 - 8);
  v13 = &v57 - v12;
  v14 = sub_100006F04();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v59 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v57 - v18;
  v20 = sub_100007164();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = [objc_opt_self() defaultSessionConfiguration];
  v67 = [objc_allocWithZone(NSURLCache) init];
  [v24 setURLCache:?];
  v25 = objc_opt_self();
  v65 = v24;
  v26 = [v25 sessionWithConfiguration:v24];
  v27 = sub_100001994(&qword_100010328, &qword_100007BF0);
  *(a4 + v27[10]) = v26;
  v28 = (a4 + v27[11]);
  v29 = v61;
  *v28 = v60;
  v28[1] = v29;
  v30 = *(v21 + 104);
  v60 = v21 + 104;
  v30(v23, enum case for AsyncImagePhase.empty(_:), v20);
  v57 = v23;
  v61 = v20;
  sub_100007324();
  sub_1000067AC(v68, v13, &qword_1000103C0, &qword_100007D48);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v31 = v62;
    v32 = v63;
    sub_100006814(v13, &qword_1000103C0, &qword_100007D48);
    if (qword_1000100F0 != -1)
    {
      swift_once();
    }

    v33 = sub_100006F94();
    sub_100003748(v33, qword_100010808);
    v34 = sub_100006F74();
    v35 = sub_1000073E4();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v31;
    v38 = v66;
    if (v36)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "CachedAsyncImage URL is nil", v39, 2u);
    }

    (*(v31 + 56))(a4 + v27[9], 1, 1, v32);
  }

  else
  {
    (*(v15 + 32))(v19, v13, v14);
    v40 = v27[9];
    (*(v15 + 16))(v59, v19, v14);
    sub_100006EE4();
    (*(v15 + 8))(v19, v14);
    v37 = v62;
    v32 = v63;
    (*(v62 + 56))(a4 + v40, 0, 1, v63);
    v38 = v66;
  }

  v41 = v64;
  sub_1000067AC(a4 + v27[9], v64, qword_100010168, &qword_100007D60);
  v42 = (*(v37 + 48))(v41, 1, v32);
  v43 = v67;
  if (v42 == 1)
  {
    sub_100006814(v68, &qword_1000103C0, &qword_100007D48);

    return sub_100006814(v41, qword_100010168, &qword_100007D60);
  }

  (*(v37 + 32))(v38, v41, v32);
  v45 = sub_100006ED4();
  v46 = [v43 cachedResponseForRequest:v45];

  if (v46)
  {
    v47 = [v46 data];
    v48 = sub_100006F24();
    v50 = v49;

    v51 = objc_allocWithZone(UIImage);
    isa = sub_100006F14().super.isa;
    v53 = [v51 initWithData:isa];

    if (v53)
    {
      v54 = sub_1000072E4();
      sub_100003DC8(v48, v50);
      v55 = v57;
      *v57 = v54;
      v30(v55, enum case for AsyncImagePhase.success(_:), v61);

      v56 = v58;
      sub_100007324();

      sub_100006814(v68, &qword_1000103C0, &qword_100007D48);
      (*(v37 + 8))(v38, v32);
      return sub_100006874(v56, a4);
    }

    sub_100003DC8(v48, v50);
  }

  else
  {
  }

  sub_100006814(v68, &qword_1000103C0, &qword_100007D48);
  return (*(v37 + 8))(v38, v32);
}

uint64_t sub_1000047A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001994(&qword_100010240, qword_100007B50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100004884(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100001994(&qword_100010240, qword_100007B50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for ManagedAppCell(uint64_t a1)
{
  result = qword_1000102A0;
  if (!qword_1000102A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004998(uint64_t a1)
{
  sub_100004A1C(319);
  if (v1 <= 0x3F)
  {
    sub_100004A74(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100004A1C(uint64_t a1)
{
  if (!qword_1000102B0)
  {
    sub_100007104();
    v1 = sub_100007114();
    if (!v2)
    {
      atomic_store(v1, &qword_1000102B0);
    }
  }
}

void sub_100004A74(uint64_t a1)
{
  if (!qword_1000102B8)
  {
    sub_1000070B4();
    sub_100004AD8();
    v1 = sub_100007134();
    if (!v2)
    {
      atomic_store(v1, &qword_1000102B8);
    }
  }
}

unint64_t sub_100004AD8()
{
  result = qword_1000102C0;
  if (!qword_1000102C0)
  {
    sub_1000070B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102C0);
  }

  return result;
}

uint64_t sub_100004B4C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v50 = sub_100007104();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100006FB4();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100006FC4();
  __chkstk_darwin(v3 - 8);
  v41[1] = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100001994(&qword_1000102F0, &qword_100007BD8);
  __chkstk_darwin(v43);
  v42 = v41 - v5;
  type metadata accessor for ManagedAppCell(0);
  sub_1000070B4();
  sub_100004AD8();
  sub_100007124();
  v6 = sub_100007034();
  v8 = v7;

  v67 = &type metadata for String;
  v9 = sub_100005F2C();
  v68 = v9;
  v65 = v6;
  v66 = v8;
  sub_100007124();
  v10 = sub_100007084();
  v12 = v11;

  v63 = &type metadata for String;
  v64 = v9;
  v61 = v10;
  v62 = v12;
  v59 = &type metadata for String;
  v60 = v9;
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_100007124();
  v13 = sub_100007014();
  v15 = v14;

  v55 = &type metadata for String;
  v56 = v9;
  v53 = v13;
  v54 = v15;
  sub_100007124();
  sub_100006FD4();

  sub_100007124();
  sub_100006FE4();

  v52 = v51;
  sub_100001994(&qword_100010300, &qword_100007BE0);
  sub_100005F88();
  v16 = v42;
  sub_100006FA4();
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  sub_100007124();
  swift_weakInit();

  v19 = (v16 + *(sub_100001994(&qword_100010330, &qword_100007C28) + 36));
  *v19 = KeyPath;
  v19[1] = sub_100006100;
  v19[2] = v18;
  v20 = *(sub_100001994(&qword_100010338, &qword_100007C30) + 36);
  v21 = enum case for OfferView.Space.offerButtonParent(_:);
  v22 = sub_1000070F4();
  (*(*(v22 - 8) + 104))(v16 + v20, v21, v22);
  v23 = sub_100007124();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100006108;
  *(v24 + 24) = v23;
  v25 = (v16 + *(v43 + 36));
  *v25 = sub_100005E34;
  v25[1] = 0;
  v25[2] = sub_10000610C;
  v25[3] = v24;
  sub_100007124();
  v26 = v44;
  sub_100007054();

  sub_100006138();
  v27 = v47;
  sub_100007284();
  (*(v45 + 8))(v26, v46);
  sub_100006814(v16, &qword_1000102F0, &qword_100007BD8);
  v28 = swift_getKeyPath();
  v29 = v27 + *(sub_100001994(&qword_100010398, &qword_100007C88) + 36);
  v30 = v27;
  *v29 = v28;
  *(v29 + 8) = 1;
  v31 = swift_getKeyPath();
  sub_100007124();
  LOBYTE(v27) = sub_1000070A4();

  v32 = v30 + *(sub_100001994(&qword_1000103A0, &qword_100007CC0) + 36);
  *v32 = v31;
  *(v32 + 8) = v27 & 1;
  v33 = swift_getKeyPath();
  sub_100007124();
  v34 = (v30 + *(sub_100001994(&qword_1000103A8, &qword_100007CF8) + 36));
  sub_100001994(&qword_1000103B0, &qword_100007D00);
  sub_100007024();

  *v34 = v33;
  sub_1000072D4();
  v35 = v48;
  sub_100006464(v48);
  v36 = sub_100007044();

  (*(v49 + 8))(v35, v50);
  v37 = swift_getKeyPath();
  v65 = v36;
  v38 = sub_100007144();
  result = sub_100001994(&qword_1000103B8, &qword_100007D38);
  v40 = (v30 + *(result + 36));
  *v40 = v37;
  v40[1] = v38;
  return result;
}

uint64_t sub_1000052F0@<X0>(uint64_t a2@<X8>)
{
  v17 = a2;
  v2 = sub_100001994(&qword_1000103C0, &qword_100007D48);
  __chkstk_darwin(v2 - 8);
  v15 = v14 - v3;
  v4 = sub_100001994(&qword_100010328, &qword_100007BF0);
  __chkstk_darwin(v4);
  v16 = v14 - v5;
  v6 = sub_100001994(&qword_1000103C8, &unk_100007D50);
  __chkstk_darwin(v6);
  v8 = v14 - v7;
  type metadata accessor for ManagedAppCell(0);
  sub_1000070B4();
  sub_100004AD8();
  sub_100007124();
  v9 = sub_1000070A4();

  if (v9)
  {
    v18 = 0;
    sub_100007264();
    *v8 = v19;
    swift_storeEnumTagMultiPayload();
    sub_100001994(&qword_100010318, &qword_100007BE8);
    sub_1000068E4(&qword_100010310, &qword_100010318, &qword_100007BE8);
    sub_100006C6C(&qword_100010320, &qword_100010328, &qword_100007BF0, &unk_100007A78);
    return sub_100007264();
  }

  v14[1] = v4;
  sub_100007124();
  v10 = sub_100007094();

  if (v10)
  {
    v20 = 1;
    sub_100007264();
    *v8 = v21;
    swift_storeEnumTagMultiPayload();
    sub_100001994(&qword_100010318, &qword_100007BE8);
    sub_1000068E4(&qword_100010310, &qword_100010318, &qword_100007BE8);
    sub_100006C6C(&qword_100010320, &qword_100010328, &qword_100007BF0, &unk_100007A78);
    return sub_100007264();
  }

  sub_100007124();
  v12 = v15;
  sub_100006FF4();

  v13 = v16;
  sub_100003F88(v12, sub_100005784, 0, v16);
  sub_1000067AC(v13, v8, &qword_100010328, &qword_100007BF0);
  swift_storeEnumTagMultiPayload();
  sub_100001994(&qword_100010318, &qword_100007BE8);
  sub_1000068E4(&qword_100010310, &qword_100010318, &qword_100007BE8);
  sub_100006C6C(&qword_100010320, &qword_100010328, &qword_100007BF0, &unk_100007A78);
  sub_100007264();
  return sub_100006814(v13, &qword_100010328, &qword_100007BF0);
}

uint64_t sub_100005784@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v3 = sub_100006F54();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000072F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007164();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for AsyncImagePhase.success(_:))
  {
    (*(v12 + 96))(v14, v11);
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
    v16 = sub_100007304();
    (*(v8 + 8))(v10, v7);
    v26 = v16;
    LOBYTE(v27) = 0;
    swift_retain_n();
    sub_100007264();
    v26 = v28;
    v27 = v29;

    sub_100001994(&qword_1000103D0, &qword_100007D68);
    sub_1000068E4(&qword_1000103D8, &qword_1000103D0, &qword_100007D68);
    sub_100007264();
  }

  else
  {
    if (v15 == enum case for AsyncImagePhase.failure(_:))
    {
      (*(v12 + 8))(v14, v11);
    }

    else if (v15 != enum case for AsyncImagePhase.empty(_:))
    {
      v26 = 0;
      v27 = 256;
      sub_100001994(&qword_1000103D0, &qword_100007D68);
      sub_1000068E4(&qword_1000103D8, &qword_1000103D0, &qword_100007D68);
      sub_100007264();
      v20 = v28;
      v21 = v29;
      v22 = v30;
      result = (*(v12 + 8))(v14, v11);
      goto LABEL_10;
    }

    if (qword_100010100 != -1)
    {
      swift_once();
    }

    v17 = sub_100003748(v3, qword_100010820);
    (*(v4 + 16))(v6, v17, v3);
    sub_100007314();
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
    v18 = sub_100007304();

    (*(v8 + 8))(v10, v7);
    v26 = v18;
    LOBYTE(v27) = 1;

    sub_100007264();
    v26 = v28;
    v27 = v29;
    sub_100001994(&qword_1000103D0, &qword_100007D68);
    sub_1000068E4(&qword_1000103D8, &qword_1000103D0, &qword_100007D68);
    sub_100007264();
  }

  v20 = v28;
  v21 = v29;
  v22 = v30;
LABEL_10:
  v23 = v25;
  *v25 = v20;
  *(v23 + 8) = v21;
  *(v23 + 9) = v22;
  return result;
}

uint64_t sub_100005D48(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_1000071D4();
}

uint64_t sub_100005DB4(double *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100007064();
  }

  return result;
}

void sub_100005E34(void *a1@<X8>)
{
  sub_100007154();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100005E60(uint64_t a1)
{
  v2 = sub_1000070C4();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000071B4();
}

unint64_t sub_100005F2C()
{
  result = qword_1000102F8;
  if (!qword_1000102F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102F8);
  }

  return result;
}

unint64_t sub_100005F88()
{
  result = qword_100010308;
  if (!qword_100010308)
  {
    sub_100001A4C(&qword_100010300, &qword_100007BE0);
    sub_1000068E4(&qword_100010310, &qword_100010318, &qword_100007BE8);
    sub_100006C6C(&qword_100010320, &qword_100010328, &qword_100007BF0, &unk_100007A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010308);
  }

  return result;
}

uint64_t sub_100006060@<X0>(uint64_t (**a1)(double *a1)@<X8>)
{
  v2 = sub_1000071C4();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_10000677C;
  a1[1] = result;
  return result;
}

uint64_t sub_1000060C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100006138()
{
  result = qword_100010340;
  if (!qword_100010340)
  {
    sub_100001A4C(&qword_1000102F0, &qword_100007BD8);
    sub_1000061F0();
    sub_100006C6C(&qword_100010388, &qword_100010390, &qword_100007C50, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010340);
  }

  return result;
}

unint64_t sub_1000061F0()
{
  result = qword_100010348;
  if (!qword_100010348)
  {
    sub_100001A4C(&qword_100010338, &qword_100007C30);
    sub_1000062A8();
    sub_100006C6C(&qword_100010378, &qword_100010380, &qword_100007C48, &protocol conformance descriptor for _CoordinateSpaceModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010348);
  }

  return result;
}

unint64_t sub_1000062A8()
{
  result = qword_100010350;
  if (!qword_100010350)
  {
    sub_100001A4C(&qword_100010330, &qword_100007C28);
    sub_100006C6C(&qword_100010358, &qword_100010360, &qword_100007C38, &protocol conformance descriptor for ManagedContentView<A>);
    sub_100006C6C(&qword_100010368, &qword_100010370, &qword_100007C40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010350);
  }

  return result;
}

uint64_t sub_10000638C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100007184();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000063E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000071E4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100006464@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100007254();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001994(&qword_100010130, &qword_100007D40);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000067AC(v2, &v14 - v9, &qword_100010130, &qword_100007D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100007104();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1000073D4();
    v13 = sub_100007274();
    sub_100006F64();

    sub_100007244();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100006664(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000066B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007224();
  *a1 = result;
  return result;
}

uint64_t sub_100006708()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006740(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 16);
  *v7 = a1;
  *&v7[1] = a2;
  *&v7[2] = a3;
  *&v7[3] = a4;
  return v5(v7);
}

uint64_t sub_1000067AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001994(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006814(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001994(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006874(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001994(&qword_100010160, qword_100007A20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000068E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001A4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100006950()
{
  result = qword_1000103E0;
  if (!qword_1000103E0)
  {
    sub_100001A4C(&qword_1000103B8, &qword_100007D38);
    sub_100006A08();
    sub_100006C6C(&qword_100010418, &qword_100010420, qword_100007D78, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103E0);
  }

  return result;
}

unint64_t sub_100006A08()
{
  result = qword_1000103E8;
  if (!qword_1000103E8)
  {
    sub_100001A4C(&qword_1000103A8, &qword_100007CF8);
    sub_100006AC0();
    sub_100006C6C(&qword_100010410, &qword_1000103B0, &qword_100007D00, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103E8);
  }

  return result;
}

unint64_t sub_100006AC0()
{
  result = qword_1000103F0;
  if (!qword_1000103F0)
  {
    sub_100001A4C(&qword_1000103A0, &qword_100007CC0);
    sub_100006B78();
    sub_100006C6C(&qword_100010400, &qword_100010408, &qword_100007D70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103F0);
  }

  return result;
}

unint64_t sub_100006B78()
{
  result = qword_1000103F8;
  if (!qword_1000103F8)
  {
    sub_100001A4C(&qword_100010398, &qword_100007C88);
    sub_100001A4C(&qword_1000102F0, &qword_100007BD8);
    sub_100006138();
    swift_getOpaqueTypeConformance2();
    sub_100006C6C(&qword_100010400, &qword_100010408, &qword_100007D70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103F8);
  }

  return result;
}

uint64_t sub_100006C6C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100001A4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006CBC()
{
  v0 = sub_100006F94();
  sub_100006D3C(v0, qword_100010808);
  sub_100003748(v0, qword_100010808);
  return sub_100006F84();
}

uint64_t *sub_100006D3C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_100006DD4()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100010428 = result;
  return result;
}

uint64_t sub_100006E2C()
{
  v0 = sub_100006F54();
  sub_100006D3C(v0, qword_100010820);
  sub_100003748(v0, qword_100010820);
  if (qword_1000100F8 != -1)
  {
    swift_once();
  }

  v1 = qword_100010428;
  return sub_100006F44();
}