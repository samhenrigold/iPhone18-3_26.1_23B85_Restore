void sub_100001C3C(id a1)
{
  v1 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = [v1 getActivePairedDevice];

  v2 = [v5 objectForKeyedSubscript:NRDevicePropertySystemVersion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = qword_1000621F8;
  qword_1000621F8 = v3;
}

id sub_100001F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = a7;
  if (!a5)
  {
    v10 = 0;
    if (!a7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = sub_10004491C();
  if (v8)
  {
LABEL_3:
    v8 = sub_10004491C();
  }

LABEL_4:
  v11 = sub_10004491C();
  v12 = [v7 ams_accountWithAltDSID:v10 DSID:a3 username:v8 accountTypeIdentifier:v11];

  return v12;
}

id variable initialization expression of AccountsWrapper.accessLock()
{
  v0 = objc_allocWithZone(NSLock);

  return [v0 init];
}

NSString sub_1000020B4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10000249C(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1000020E8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10004491C();

  *a2 = v3;
  return result;
}

uint64_t sub_100002130@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000215C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100002160(uint64_t a1)
{
  v2 = sub_100002328(&qword_100060028, &unk_100046480);
  v3 = sub_100002328(&qword_100060030, &unk_1000463D4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000021F8(uint64_t a1, uint64_t a2)
{
  sub_10004494C();
  sub_1000449BC();
}

void sub_100002274(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100002328(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000023A4(uint64_t a1, id *a2)
{
  result = sub_10004492C();
  *a2 = 0;
  return result;
}

uint64_t sub_10000241C(uint64_t a1, id *a2)
{
  v3 = sub_10004493C();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_10000249C(uint64_t a1)
{
  sub_10004494C();
  v1 = sub_10004491C();

  return v1;
}

uint64_t sub_1000024D4(uint64_t a1)
{
  sub_10004494C();
  v1 = sub_1000449FC();

  return v1;
}

id sub_1000025F0()
{
  v1 = [v0 ams_DSID];

  return v1;
}

uint64_t sub_100002694()
{
  v1 = [v0 ams_isBundleOwner];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

uint64_t sub_10000296C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_10004494C();

  return v4;
}

void *sub_1000029CC(void *a1)
{
  v2 = sub_100044ADC();
  v3 = sub_100003450(v2);
  if (v3)
  {
    sub_100002A8C(v3);
  }

  v4 = sub_100044ADC();
  v5 = sub_100003450(v4);
  if (v5)
  {
    v6 = sub_100002BA0(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

unint64_t *sub_100002A8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_100002E34(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1000034B8(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100002E34((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_100002BA0(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_100044C8C();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_1000034B8(v3, v5);
    sub_100003560();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_100044C6C();
    sub_100044C9C();
    sub_100044CAC();
    sub_100044C7C();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

unint64_t *sub_100002CDC(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 16);
  v16 = _swiftEmptyArrayStorage;
  a2(0, v8, 0);
  v9 = _swiftEmptyArrayStorage;
  v10 = a1 + 32;
  if (v8)
  {
    while (1)
    {
      sub_1000034B8(v10, v15);
      sub_100003514(a3, a4);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v16 = v9;
      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        a2(v11 > 1, v12 + 1, 1);
        v9 = v16;
      }

      v9[2] = v12 + 1;
      v9[v12 + 4] = v14;
      v10 += 32;
      if (!--v8)
      {
        return v9;
      }
    }

    return 0;
  }

  return v9;
}

void *sub_100002E08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000029CC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

char *sub_100002E34(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100002F14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100002E54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000301C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100002E74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100003228(a1, a2, a3, *v3, &qword_100060058, &unk_100046550, &qword_100060050, &qword_1000469B0);
  *v3 = result;
  return result;
}

char *sub_100002EB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100003134(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100002ED4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100003228(a1, a2, a3, *v3, &qword_100060068, &qword_100046560, &qword_100060060, "lZ");
  *v3 = result;
  return result;
}

char *sub_100002F14(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003514(&qword_100060038, &qword_100046538);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000301C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003514(&qword_100060048, &unk_100046540);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100003134(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003514(&qword_100060070, &qword_100046568);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

void *sub_100003228(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100003514(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 8);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || &a4[v14 + 4] <= v16 + 4)
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003514(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_100003388(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = sub_100003664();

    return _swift_arrayInitWithTakeFrontToBack(v10);
  }

  else if (a3 != a1)
  {
    v9 = sub_100003664();

    return _swift_arrayInitWithTakeBackToFront(v9);
  }

  return result;
}

uint64_t sub_100003450(void *a1)
{
  v2 = [a1 toArray];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_100044A1C();

  return v3;
}

uint64_t sub_1000034B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003514(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003560()
{
  result = qword_100060040;
  if (!qword_100060040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100060040);
  }

  return result;
}

__n128 sub_1000035A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000035B0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100003604(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

id sub_100003678(void *a1, uint64_t a2)
{
  result = [objc_opt_self() valueWithNewObjectInContext:a1];
  if (result)
  {
    v5 = result;
    sub_10000477C(0, &unk_100060830, ASDApp_ptr);
    isa = sub_100044A0C().super.isa;
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    v14 = sub_100003948;
    v15 = v7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100004280;
    v13 = &unk_100059A50;
    v8 = _Block_copy(v12);

    v9 = [(objc_class *)isa ams_mapWithTransformIgnoresNil:v8];
    _Block_release(v8);

    v10 = sub_100044A1C();
    sub_10000477C(0, &qword_100060800, JSValue_ptr);
    v13 = sub_100003514(&qword_100060078, &unk_1000465D0);
    v12[0] = v10;

    v11 = a1;
    result = sub_100028F50(v12, a1);
    if (result)
    {

      sub_100044AEC();
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100003868(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  sub_1000034B8(a1, v6);
  sub_10000477C(0, &unk_100060830, ASDApp_ptr);
  swift_dynamicCast();
  v4 = sub_100003950(v5);
  a3[3] = sub_100003514(&qword_100060050, &qword_1000469B0);

  *a3 = v4;
}

uint64_t sub_100003910()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003950(void *a1)
{
  v2 = sub_100003514(&qword_100060080, &qword_1000465E0);
  v3 = __chkstk_darwin(v2 - 8);
  v68 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v68 - v5;
  sub_100003514(&qword_100060088, &qword_1000465E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000465C0;
  *(inited + 32) = 0x6449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  v8 = [a1 bundleID];
  v9 = sub_10004494C();
  v11 = v10;

  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  v12 = sub_1000448FC();
  v13 = sub_10000296C(a1, &selRef_bundleShortVersion);
  if (v14)
  {
    *(&v72 + 1) = &type metadata for String;
    *&v71 = v13;
    *(&v71 + 1) = v14;
    sub_10000476C(&v71, v70);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v12;
    sub_100004498(v70, 0xD000000000000012, 0x8000000100048C60, isUniquelyReferenced_nonNull_native);
    v12 = v69;
  }

  else
  {
    v16 = sub_100006DFC(0xD000000000000012, 0x8000000100048C60);
    if (v17)
    {
      v18 = v16;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      *&v70[0] = v12;
      v20 = *(v12 + 24);
      sub_100003514(&qword_100060090, qword_1000465F8);
      sub_100044CBC(v19, v20);
      v12 = *&v70[0];

      sub_10000476C((*(v12 + 56) + 32 * v18), &v71);
      sub_100044CCC();
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
    }

    sub_10000470C(&v71, &qword_100061D00, &qword_1000465F0);
  }

  v21 = sub_10000296C(a1, &selRef_bundleVersion);
  if (v22)
  {
    *(&v72 + 1) = &type metadata for String;
    *&v71 = v21;
    *(&v71 + 1) = v22;
    sub_10000476C(&v71, v70);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v12;
    sub_100004498(v70, 0x6556656C646E7562, 0xED00006E6F697372, v23);
    v12 = v69;
  }

  else
  {
    v24 = sub_100006DFC(0x6556656C646E7562, 0xED00006E6F697372);
    if (v25)
    {
      v26 = v24;
      v27 = swift_isUniquelyReferenced_nonNull_native();
      *&v70[0] = v12;
      v28 = *(v12 + 24);
      sub_100003514(&qword_100060090, qword_1000465F8);
      sub_100044CBC(v27, v28);
      v12 = *&v70[0];

      sub_10000476C((*(v12 + 56) + 32 * v26), &v71);
      sub_100044CCC();
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
    }

    sub_10000470C(&v71, &qword_100061D00, &qword_1000465F0);
  }

  v29 = [a1 installError];
  if (v29)
  {
    v30 = v29;
    swift_getErrorValue();
    v31 = sub_100044DDC();
    v33 = v32;
    *(&v72 + 1) = &type metadata for String;

    *&v71 = v31;
    *(&v71 + 1) = v33;
    sub_10000476C(&v71, v70);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v12;
    sub_100004498(v70, 0x456C6C6174736E69, 0xEC000000726F7272, v34);
    v12 = v69;
  }

  else
  {
    v35 = sub_100006DFC(0x456C6C6174736E69, 0xEC000000726F7272);
    if (v36)
    {
      v37 = v35;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      *&v70[0] = v12;
      v39 = *(v12 + 24);
      sub_100003514(&qword_100060090, qword_1000465F8);
      sub_100044CBC(v38, v39);
      v12 = *&v70[0];

      sub_10000476C((*(v12 + 56) + 32 * v37), &v71);
      sub_100044CCC();
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
    }

    sub_10000470C(&v71, &qword_100061D00, &qword_1000465F0);
  }

  v40 = v68;
  v41 = [a1 installID];
  if (v41)
  {
    v42 = v41;
    sub_100043BFC();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = sub_100043C1C();
  sub_10000464C(v40, v43, 1, v44);
  sub_100004674(v40, v6);
  if (sub_1000046E4(v6, 1, v44) == 1)
  {
    sub_10000470C(v6, &qword_100060080, &qword_1000465E0);
    v45 = sub_100006DFC(0x496C6C6174736E69, 0xE900000000000044);
    if (v46)
    {
      v47 = v45;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      *&v70[0] = v12;
      v49 = *(v12 + 24);
      sub_100003514(&qword_100060090, qword_1000465F8);
      sub_100044CBC(v48, v49);
      v12 = *&v70[0];

      sub_10000476C((*(v12 + 56) + 32 * v47), &v71);
      sub_100044CCC();
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
    }

    sub_10000470C(&v71, &qword_100061D00, &qword_1000465F0);
  }

  else
  {
    v50 = sub_100043BEC();
    *(&v72 + 1) = &type metadata for String;
    *&v71 = v50;
    *(&v71 + 1) = v51;
    (*(*(v44 - 8) + 8))(v6, v44);
    sub_10000476C(&v71, v70);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v12;
    sub_100004498(v70, 0x496C6C6174736E69, 0xE900000000000044, v52);
    v12 = v69;
  }

  v53 = [a1 isInstalled];
  *(&v72 + 1) = &type metadata for Bool;
  LOBYTE(v71) = v53;
  sub_10000476C(&v71, v70);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v12;
  sub_100004498(v70, 0x6C6174736E497369, 0xEB0000000064656CLL, v54);
  v55 = v69;
  v56 = [a1 storeItemID];
  *(&v72 + 1) = &type metadata for Int64;
  *&v71 = v56;
  sub_10000476C(&v71, v70);
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v55;
  sub_100004498(v70, 0x65744965726F7473, 0xEB0000000044496DLL, v57);
  v58 = v69;
  v59 = [a1 storeFront];
  if (v59)
  {
    v60 = v59;
    *(&v72 + 1) = sub_10000477C(0, &qword_100060040, NSNumber_ptr);
    *&v71 = v60;
    sub_10000476C(&v71, v70);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v58;
    sub_100004498(v70, 0x6F724665726F7473, 0xEA0000000000746ELL, v61);
    return v69;
  }

  else
  {
    v62 = sub_100006DFC(0x6F724665726F7473, 0xEA0000000000746ELL);
    if (v63)
    {
      v64 = v62;
      v65 = swift_isUniquelyReferenced_nonNull_native();
      *&v70[0] = v58;
      v66 = *(v58 + 24);
      sub_100003514(&qword_100060090, qword_1000465F8);
      sub_100044CBC(v65, v66);
      v58 = *&v70[0];

      sub_10000476C((*(v58 + 56) + 32 * v64), &v71);
      sub_100044CCC();
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
    }

    sub_10000470C(&v71, &qword_100061D00, &qword_1000465F0);
  }

  return v58;
}

id sub_100004280(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v13[3] = swift_getObjectType();
  v13[0] = a2;

  swift_unknownObjectRetain();
  v3(v11, v13);

  v4 = v12;
  if (v12)
  {
    v5 = sub_100004454(v11, v12);
    v6 = *(v4 - 8);
    __chkstk_darwin(v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_100044D9C();
    (*(v6 + 8))(v8, v4);
    sub_100004408(v11);
  }

  else
  {
    v9 = 0;
  }

  sub_100004408(v13);

  return v9;
}

uint64_t sub_1000043F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004408(void *a1)
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

void *sub_100004454(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_100004498(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100006DFC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100003514(&qword_100060090, qword_1000465F8);
  if (!sub_100044CBC(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_100006DFC(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_100044DCC();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = (v20[7] + 32 * v16);
    sub_100004408(v21);

    return sub_10000476C(a1, v21);
  }

  else
  {
    sub_1000045E0(v16, a2, a3, a1, v20);
  }
}

_OWORD *sub_1000045E0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000476C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_100004674(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003514(&qword_100060080, &qword_1000465E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000470C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003514(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_10000476C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000477C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000047BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v21[0] = a1;
  v11 = sub_100044B3C();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v21 - v14;
  v16 = *(a4 - 8);
  __chkstk_darwin(v13);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a2, v11);
  if (sub_1000046E4(v15, 1, a4) == 1)
  {
    (*(v12 + 8))(v15, v11);
    a6[3] = a3;
    a6[4] = a5;
    v19 = sub_1000049E0(a6);
    return (*(*(a3 - 8) + 16))(v19, v21[1], a3);
  }

  else
  {
    (*(v16 + 32))(v18, v15, a4);
    sub_10004457C();
    return (*(v16 + 8))(v18, a4);
  }
}

uint64_t *sub_1000049E0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

id sub_100004A40()
{
  if (*v0)
  {
    v1 = *v0;
    result = [v1 accountStore];
    if (result)
    {
      sub_10004487C();
      swift_allocObject();
      v3 = sub_10004488C();

      return v3;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v4 = objc_opt_self();
    v5 = [v4 ams_sharedAccountStoreForClient:*(v0 + *(type metadata accessor for BaseBootstrap(0) + 24))];
    sub_10004487C();
    swift_allocObject();
    return sub_10004488C();
  }

  return result;
}

uint64_t sub_100004B1C()
{
  v1 = v0;
  v2 = type metadata accessor for BaseBootstrap(0);
  v3 = v2 - 8;
  v23 = *(v2 - 8);
  v22 = *(v23 + 64);
  __chkstk_darwin(v2);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000443CC();
  sub_1000443AC();
  v5 = v33;
  v6 = v34;
  sub_100004454(v32, v33);
  v7 = sub_10000477C(0, &qword_100061EF0, ACAccount_ptr);
  v30[0] = *v1;
  v8 = v30[0];
  v9 = v30[0];
  sub_1000047BC(v7, v30, v5, v7, v6, v31);
  sub_100004454(v31, v31[3]);
  sub_10004487C();
  v29[0] = sub_100004A40();
  sub_10004457C();

  sub_100004454(v30, v30[3]);
  type metadata accessor for DynamicAccountsStore();
  v10 = sub_100004A40();
  swift_allocObject();
  v28[0] = DynamicAccountsStore.init(accountStore:account:)(v10, v8);
  sub_10004457C();

  sub_100004454(v29, v29[3]);
  sub_10004461C();
  sub_10004457C();
  sub_100004454(v28, v28[3]);
  sub_10000477C(0, &unk_100061F00, AMSProcessInfo_ptr);
  v26[0] = *(v1 + *(v3 + 32));
  v11 = v26[0];
  sub_10004457C();
  sub_100004454(v27, v27[3]);
  v12 = (v1 + *(v3 + 36));
  v14 = *v12;
  v13 = v12[1];
  v25[0] = v14;
  v25[1] = v13;
  sub_10004457C();
  sub_100004454(v26, v26[3]);
  sub_10004458C();
  sub_100004454(v25, v25[3]);
  sub_10000477C(0, &qword_100060190, AMSURLSession_ptr);
  v15 = v21;
  sub_100005550(v1, v21);
  v16 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  sub_1000056C8(v15, v17 + v16);
  sub_10004456C();

  sub_100004454(v24, v24[3]);
  v18 = sub_10004454C();
  sub_100004408(v24);
  sub_100004408(v25);
  sub_100004408(v26);
  sub_100004408(v27);
  sub_100004408(v28);
  sub_100004408(v29);
  sub_100004408(v30);
  sub_100004408(v31);
  sub_100004408(v32);
  return v18;
}

uint64_t sub_100004F70@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v17 = a2;
  v18 = a4;
  v5 = sub_10004419C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10004461C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000477C(0, &qword_100060190, AMSURLSession_ptr);
  sub_1000443CC();
  sub_10004462C();
  v13 = (a3 + *(type metadata accessor for BaseBootstrap(0) + 28));
  v14 = v13[1];
  *v8 = *v13;
  v8[1] = v14;
  v8[2] = 0;
  v8[3] = 0;
  (*(v6 + 104))(v8, enum case for JetEngineBootstrap.URLProtocolHandler.media(_:), v5);

  v15 = sub_100044A6C();
  (*(v6 + 8))(v8, v5);
  result = (*(v10 + 8))(v12, v9);
  *v18 = v15;
  return result;
}

void *AccountsWrapper.account.getter()
{
  v1 = *(v0 + 16);
  [v1 lock];
  v2 = *(v0 + 24);
  v3 = v2;
  [v1 unlock];
  return v2;
}

void AccountsWrapper.account.setter(void *a1)
{
  v3 = *(v1 + 16);
  [v3 lock];
  v4 = *(v1 + 24);
  *(v1 + 24) = a1;
  v5 = a1;

  [v3 unlock];
}

void (*AccountsWrapper.account.modify(void **a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = AccountsWrapper.account.getter();
  return sub_1000052A0;
}

void sub_1000052A0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    AccountsWrapper.account.setter(v2);
  }

  else
  {
    AccountsWrapper.account.setter(*a1);
  }
}

uint64_t DynamicAccountsStore.accountStore.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t DynamicAccountsStore.__allocating_init(accountStore:account:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DynamicAccountsStore.init(accountStore:account:)(a1, a2);
  return v4;
}

void *DynamicAccountsStore.init(accountStore:account:)(uint64_t a1, uint64_t a2)
{
  v2[2] = [objc_allocWithZone(NSLock) init];
  v2[3] = a2;
  v2[4] = a1;
  return v2;
}

uint64_t DynamicAccountsStore.__deallocating_deinit()
{
  DynamicAccountsStore.deinit();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t type metadata accessor for BaseBootstrap(uint64_t a1)
{
  result = qword_1000601F0;
  if (!qword_1000601F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaseBootstrap(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000055B4()
{
  v1 = (type metadata accessor for BaseBootstrap(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_10004461C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000056C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaseBootstrap(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000057C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004461C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_1000046E4(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100005884(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004461C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_10000464C(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_100005930(uint64_t a1)
{
  sub_1000059E4(319);
  if (v1 <= 0x3F)
  {
    sub_10004461C();
    if (v2 <= 0x3F)
    {
      sub_10000477C(319, &unk_100061F00, AMSProcessInfo_ptr);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000059E4(uint64_t a1)
{
  if (!qword_100060200)
  {
    sub_10000477C(255, &qword_100061EF0, ACAccount_ptr);
    v1 = sub_100044B3C();
    if (!v2)
    {
      atomic_store(v1, &qword_100060200);
    }
  }
}

void *DynamicAccountsStore.account.getter()
{
  v1 = sub_100043DBC();
  sub_1000061E8();
  v3 = v2;
  __chkstk_darwin(v4);
  v14 = sub_1000061CC();
  [v14 lock];
  if (qword_10005FF30 != -1)
  {
    sub_1000061AC(&qword_10005FF30);
  }

  v5 = sub_1000060A4(v1, qword_100065200);
  (*(v3 + 16))(v0, v5, v1);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046690;
  v16 = type metadata accessor for DynamicAccountsStore();
  v15[0] = v0;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v15);
  v16 = &type metadata for UnsafeMutableRawPointer;
  v15[0] = v0;
  sub_100043D0C();
  sub_100006100(v15);
  sub_100043CFC();
  v8 = *(v0 + 24);
  if (v8)
  {
    v9 = sub_100006168();
  }

  else
  {
    v9 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  v15[0] = v8;
  v16 = v9;
  v10 = v8;
  sub_100043D0C();
  sub_100006100(v15);
  sub_100043D7C();

  (*(v3 + 8))(v0, v1);
  v11 = *(v0 + 24);
  v12 = v11;
  [v14 unlock];
  return v11;
}

void DynamicAccountsStore.account.setter(void *a1)
{
  v2 = v1;
  v4 = sub_100043DBC();
  sub_1000061E8();
  v6 = v5;
  __chkstk_darwin(v7);
  v16 = sub_1000061CC();
  [v16 lock];
  if (qword_10005FF30 != -1)
  {
    sub_1000061AC(&qword_10005FF30);
  }

  v8 = sub_1000060A4(v4, qword_100065200);
  (*(v6 + 16))(v1, v8, v4);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046690;
  v18 = type metadata accessor for DynamicAccountsStore();
  v17[0] = v1;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v17);
  v18 = &type metadata for UnsafeMutableRawPointer;
  v17[0] = v1;
  sub_100043D0C();
  sub_100006100(v17);
  sub_100043CFC();
  if (a1)
  {
    v11 = sub_100006168();
    v12 = a1;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v17[1] = 0;
    v17[2] = 0;
  }

  v17[0] = v12;
  v18 = v11;
  v13 = a1;
  sub_100043D0C();
  sub_100006100(v17);
  sub_100043D7C();

  (*(v6 + 8))(v1, v4);
  v14 = *(v1 + 24);
  *(v2 + 24) = a1;
  v15 = v13;

  [v16 unlock];
}

void (*DynamicAccountsStore.account.modify(void **a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = DynamicAccountsStore.account.getter();
  return sub_10000603C;
}

void sub_10000603C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    DynamicAccountsStore.account.setter(v2);
  }

  else
  {
    DynamicAccountsStore.account.setter(*a1);
  }
}

uint64_t sub_1000060A4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006100(uint64_t a1)
{
  v2 = sub_100003514(&qword_100061D00, &qword_1000465F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100006168()
{
  result = qword_100061EF0;
  if (!qword_100061EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100061EF0);
  }

  return result;
}

uint64_t sub_1000061AC(uint64_t a1)
{

  return swift_once();
}

id sub_1000061FC(void *a1, void *a2)
{
  result = [objc_opt_self() valueWithNewObjectInContext:a1];
  if (!result)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = sub_100006458(a2);
  if (v6)
  {
    v7 = v6;
    if (*(v6 + 16))
    {
      sub_10000477C(0, &qword_100060800, JSValue_ptr);
      v17 = sub_100003514(&qword_100060338, qword_1000466E8);
      v16[0] = v7;
      v8 = a1;

      result = sub_100028F50(v16, a1);
      if (!result)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      sub_100044AEC();
    }

    else
    {
    }
  }

  v9 = sub_1000064C4(a2);
  if (!v9)
  {
LABEL_12:
    v12 = [a2 request];
    if (!v12)
    {
      return v5;
    }

    v13 = v12;
    sub_10000477C(0, &qword_100060800, JSValue_ptr);
    v17 = sub_10000477C(0, &qword_100060330, AMSEngagementRequest_ptr);
    v16[0] = v13;
    v14 = a1;
    v15 = v13;
    result = sub_100028F50(v16, a1);
    if (result)
    {
      sub_100044AEC();

      return v5;
    }

    goto LABEL_17;
  }

  v10 = v9;
  if (!*(v9 + 16))
  {

    goto LABEL_12;
  }

  sub_10000477C(0, &qword_100060800, JSValue_ptr);
  v17 = sub_100003514(&qword_100060060, "lZ");
  v16[0] = v10;
  v11 = a1;

  result = sub_100028F50(v16, a1);
  if (result)
  {

    sub_100044AEC();
    goto LABEL_12;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_100006458(void *a1)
{
  v1 = [a1 actions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100003514(&qword_100060060, "lZ");
  v3 = sub_100044A1C();

  return v3;
}

uint64_t sub_1000064C4(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1000448EC();

  return v3;
}

uint64_t sub_100006530(void *a1)
{
  v3 = sub_100044ADC();
  v4 = sub_100006644(v3);
  if (v4)
  {
    v1 = v4;
  }

  else
  {
    sub_100044ADC();
    sub_1000446CC();
    sub_1000066BC();
    swift_allocError();
    sub_10004469C();
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_100006618@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100006530(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100006644(void *a1)
{
  v2 = [a1 toDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1000448EC();

  return v3;
}

unint64_t sub_1000066BC()
{
  result = qword_1000607F0;
  if (!qword_1000607F0)
  {
    sub_1000446CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000607F0);
  }

  return result;
}

uint64_t sub_100006724(void *a1)
{
  v3 = sub_1000074B8();
  v4 = sub_100003450(v3);
  if (!v4 || (v5 = sub_100002C8C(v4), , !v5))
  {
    sub_1000074B8();
    sub_1000446CC();
    v22 = sub_1000066BC();
    sub_100007498(v22);
LABEL_18:
    sub_10004469C();
    swift_willThrow();

    return v1;
  }

  v6 = sub_100044ADC();
  v1 = sub_100044ACC();
  v8 = v7;

  if (!v8)
  {

    sub_100044ADC();
    sub_1000446CC();
    v23 = sub_1000066BC();
    sub_100007498(v23);
    goto LABEL_18;
  }

  v9 = v5[2];
  if (!v9)
  {

    return v1;
  }

  v25 = v1;
  v29 = _swiftEmptyArrayStorage;
  result = sub_100002E54(0, v9, 0);
  v1 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (v1 < v5[2])
  {
    v12 = v11;
    v13 = v5[v1 + 4];
    v14 = *(v13 + 16);

    if (!v14)
    {
      goto LABEL_24;
    }

    v15 = sub_100006DFC(0x6E656D6563616C70, 0xE900000000000074);
    if ((v16 & 1) == 0)
    {
      goto LABEL_24;
    }

    sub_1000034B8(*(v13 + 56) + 32 * v15, v28);
    if (!swift_dynamicCast())
    {
      goto LABEL_24;
    }

    if (!*(v13 + 16) || (v17 = sub_100006DFC(0x747865746E6F63, 0xE700000000000000), (v18 & 1) == 0) || (sub_1000034B8(*(v13 + 56) + 32 * v17, v28), sub_100003514(&qword_100060050, &qword_1000469B0), (swift_dynamicCast() & 1) == 0))
    {

LABEL_24:
      sub_1000446CC();
      v24 = sub_1000066BC();
      sub_100007498(v24);
      sub_10004467C();
      swift_willThrow();

      return v1;
    }

    v11 = v12;
    v29 = v12;
    v20 = v12[2];
    v19 = v12[3];
    if (v20 >= v19 >> 1)
    {
      result = sub_100002E54((v19 > 1), v20 + 1, 1);
      v11 = v29;
    }

    ++v1;
    v11[2] = v20 + 1;
    v21 = &v11[3 * v20];
    v21[4] = v26;
    v21[5] = v26;
    v21[6] = v27;
    if (v9 == v1)
    {

      return v25;
    }
  }

  __break(1u);
  return result;
}

id sub_100006B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    sub_100044C8C();
    v7 = (a3 + 48);
    do
    {
      v9 = *(v7 - 2);
      v8 = *(v7 - 1);
      v10 = *v7;
      v7 += 3;

      v11 = sub_100036C60(v9);
      v12 = objc_allocWithZone(AMSEngagementPlacementInfo);
      sub_100006C94(v8, v10, v11);

      sub_100044C6C();
      sub_100044C9C();
      sub_100044CAC();
      sub_100044C7C();
      --v5;
    }

    while (v5);
  }

  objc_allocWithZone(AMSEngagementMessageEvent);

  return sub_100006D34(a1, a2, _swiftEmptyArrayStorage);
}

uint64_t sub_100006C64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100006724(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

id sub_100006C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10004491C();

  if (a3)
  {
    v6.super.isa = sub_1000448DC().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithPlacement:v5 context:v6.super.isa];

  return v7;
}

id sub_100006D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004491C();

  sub_100007320();
  isa = sub_100044A0C().super.isa;

  v6 = [v3 initWithServiceType:v4 placementInfo:isa];

  return v6;
}

unint64_t sub_100006DB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100044BDC(*(v2 + 40));

  return sub_100006F08(a1, v4);
}

unint64_t sub_100006DFC(uint64_t a1, uint64_t a2)
{
  sub_100044E3C();
  sub_1000449BC();
  v4 = sub_100044E5C();

  return sub_100006FCC(a1, a2, v4);
}

unint64_t sub_100006E74(uint64_t a1)
{
  sub_10004494C();
  sub_100044E3C();
  sub_1000449BC();
  v2 = sub_100044E5C();

  return sub_100007080(a1, v2);
}

unint64_t sub_100006F08(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100007270(*(v2 + 48) + 40 * i, v7);
    v5 = sub_100044BEC();
    sub_1000072CC(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100006FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_100044DAC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100007080(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_10004494C();
    v7 = v6;
    if (v5 == sub_10004494C() && v7 == v8)
    {

      return i;
    }

    v10 = sub_100044DAC();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

Swift::Int sub_100007178(uint64_t a1, uint64_t a2)
{
  sub_10004494C();
  sub_100044E3C();
  sub_1000449BC();
  v2 = sub_100044E5C();

  return v2;
}

uint64_t sub_1000071EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_10004494C();
  v4 = v3;
  if (v2 == sub_10004494C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100044DAC();
  }

  return v7 & 1;
}

unint64_t sub_100007320()
{
  result = qword_100060340;
  if (!qword_100060340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100060340);
  }

  return result;
}

__n128 sub_100007364(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100007378(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000073B8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100007408(uint64_t a1, int a2)
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

uint64_t sub_100007448(uint64_t result, int a2, int a3)
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

uint64_t sub_100007498(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_1000074B8()
{

  return sub_100044ADC();
}

id sub_1000074D8(void *a1, void *a2)
{
  result = [objc_opt_self() valueWithNewObjectInContext:a1];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  sub_10000477C(0, &qword_100060800, JSValue_ptr);
  v6 = [a2 serviceType];
  v7 = sub_10004494C();
  v9 = v8;

  ObjectType = &type metadata for String;
  v24[0] = v7;
  v24[1] = v9;
  v10 = a1;
  result = sub_100028F50(v24, a1);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v10;
  sub_100044AEC();
  v11 = [a2 dictionaryRepresentation];
  sub_100003514(&qword_100060350, &unk_100046850);
  v12 = sub_1000448EC();

  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v13 = sub_100043DBC();
  sub_1000060A4(v13, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046830;
  ObjectType = &type metadata for EngagementMessageAction;
  v24[0] = a2;
  v14 = a2;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v24);
  sub_100043CFC();
  ObjectType = sub_100003514(&qword_100060358, &unk_100046860);
  v24[0] = v12;

  sub_100043D0C();
  sub_100006100(v24);
  sub_100043D9C();

  v17 = sub_100030724(0xD000000000000011, 0x8000000100048D30, v12);
  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = v17;
  ObjectType = swift_getObjectType();
  v24[0] = v18;
  v19 = v23;
  swift_unknownObjectRetain();
  result = sub_100028F50(v24, a1);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100044AEC();
  swift_unknownObjectRelease();
LABEL_10:
  v20 = sub_100030724(0x6E656D6563616C70, 0xEA00000000007374, v12);
  if (!v20)
  {

    return v5;
  }

  v21 = v20;
  ObjectType = swift_getObjectType();
  v24[0] = v21;
  v22 = v23;
  swift_unknownObjectRetain();
  result = sub_100028F50(v24, a1);
  if (result)
  {

    sub_100044AEC();
    swift_unknownObjectRelease();
    return v5;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_100007944(void *a1, void *a2)
{
  result = [objc_opt_self() valueWithNewObjectInContext:a1];
  if (!result)
  {
    goto LABEL_15;
  }

  v5 = result;
  v6 = sub_100007B0C(a2);
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = sub_100026E4C(v6);
  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    goto LABEL_11;
  }

  v10 = v8;
  v15[0] = _swiftEmptyArrayStorage;
  result = sub_100044C8C();
  if (v10 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = 0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = sub_100044C5C();
    }

    else
    {
      v12 = *(v7 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    sub_1000074D8(a1, v12);

    sub_100044C6C();
    sub_100044C9C();
    sub_100044CAC();
    sub_100044C7C();
  }

  while (v10 != v11);
  v9 = v15[0];
LABEL_11:
  sub_10000477C(0, &qword_100060800, JSValue_ptr);
  v15[3] = sub_100003514(&qword_100060348, &unk_100046840);
  v15[0] = v9;

  v14 = a1;
  result = sub_100028F50(v15, a1);
  if (result)
  {

    sub_100044AEC();
    return v5;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100007B0C(void *a1)
{
  v1 = [a1 messageActions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_10000477C(0, &qword_100060360, AMSEngagementMessageEventServiceResponse_ptr);
  v3 = sub_100044A1C();

  return v3;
}

uint64_t sub_100007B8C()
{
  v1 = sub_100043B7C();
  sub_1000061E8();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100008530();
  sub_1000084CC(v5, qword_100060368);
  v6 = sub_1000060A4(v1, qword_100060368);
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 temporaryDirectory];

  sub_100043B3C();
  return (*(v3 + 32))(v6, v0, v1);
}

uint64_t sub_100007CA4()
{
  v0 = sub_100043B7C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000084CC(v2, qword_100060380);
  sub_1000060A4(v0, qword_100060380);
  v5 = [objc_opt_self() defaultManager];
  v6 = [v5 temporaryDirectory];

  sub_100043B3C();
  sub_100043B0C();
  return (*(v1 + 8))(v4, v0);
}

id sub_100007DEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100043B7C();
  sub_1000061E8();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100008530();
  sub_100008170();
  sub_1000082D4();
  v7 = [objc_opt_self() defaultManager];
  sub_100043AFC(v8);
  v10 = v9;
  v18[0] = 0;
  v11 = [v7 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:v18];

  v16 = v18[0];
  if (v11)
  {
    (*(v5 + 32))(a1, v1, v3);
    sub_10000464C(a1, 0, 1, v3);

    return v16;
  }

  else
  {
    v13 = v18[0];
    sub_100043AAC();

    swift_willThrow();
    (*(v5 + 8))(v1, v3);
    if (qword_10005FF30 != -1)
    {
      swift_once();
    }

    v14 = sub_100043DBC();
    sub_1000060A4(v14, qword_100065200);
    sub_100003514(&qword_100061CF0, &unk_1000466A0);
    sub_100043D4C();
    *(swift_allocObject() + 16) = xmmword_1000468F0;
    sub_100043CFC();
    swift_getErrorValue();
    v18[3] = v17;
    v15 = sub_1000049E0(v18);
    (*(*(v17 - 1) + 16))(v15);
    sub_100043D0C();
    sub_100006100(v18);
    sub_100043D8C();

    return sub_10000464C(a1, 1, 1, v3);
  }
}

id sub_100008170()
{
  v0 = [objc_opt_self() defaultManager];
  if (qword_10005FF08 != -1)
  {
    swift_once();
  }

  v1 = sub_100043B7C();
  sub_1000060A4(v1, qword_100060380);
  sub_100043AFC(v2);
  v4 = v3;
  v9 = 0;
  v5 = [v0 removeItemAtURL:v3 error:&v9];

  v6 = v9;
  if (v5)
  {

    return v6;
  }

  else
  {
    v8 = v9;
    sub_100043AAC();

    swift_willThrow();
  }
}

uint64_t sub_1000082D4()
{
  v0 = sub_100043B7C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100043C1C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100043C0C();
  sub_100043BEC();
  (*(v5 + 8))(v7, v4);
  if (qword_10005FF08 != -1)
  {
    swift_once();
  }

  sub_1000060A4(v0, qword_100060380);
  sub_100043B0C();

  sub_100043B1C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t *sub_1000084CC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100008548(uint64_t a1)
{
  v2 = sub_100003514(&qword_100060488, &unk_100046970);
  __chkstk_darwin(v2 - 8);
  v4 = &v41 - v3;
  v48 = sub_100043B7C();
  v5 = __chkstk_darwin(v48);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v41 - v8;
  v10 = a1 + 64;
  v9 = *(a1 + 64);
  v45 = &_swiftEmptyDictionarySingleton;
  v50 = &_swiftEmptyDictionarySingleton;
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  v41 = v7;
  v43 = (v7 + 32);
  v49 = a1;

  v16 = 0;
  v47 = v4;
  while (1)
  {
    v17 = v16;
    if (!v13)
    {
      break;
    }

LABEL_9:
    v46 = *(*(v49 + 48) + 8 * (__clz(__rbit64(v13)) | (v16 << 6)));
    v18 = objc_opt_self();

    v19 = [v18 defaultManager];
    v20 = sub_10004491C();
    v21 = [v19 fileExistsAtPath:v20];

    if (v21)
    {
      v22 = v47;
      sub_100043AEC();
      v23 = 0;
    }

    else
    {
      v23 = 1;
      v22 = v47;
    }

    v13 &= v13 - 1;
    v24 = v48;
    sub_10000464C(v22, v23, 1, v48);

    if (sub_1000046E4(v22, 1, v24) == 1)
    {
      result = sub_10000AC5C(v22, &qword_100060488, &unk_100046970);
    }

    else
    {
      v25 = v42;
      v26 = *v43;
      v27 = v48;
      (*v43)(v42, v22, v48);
      v26(v44, v25, v27);
      v28 = v45[2];
      if (v45[3] <= v28)
      {
        sub_10000A75C(v28 + 1, 1);
      }

      v29 = v50;
      v30 = v46;
      result = sub_100044E2C();
      v31 = (v29 + 8);
      v45 = v29;
      v32 = -1 << *(v29 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~v29[(v33 >> 6) + 8]) == 0)
      {
        v36 = 0;
        v37 = (63 - v32) >> 6;
        while (++v34 != v37 || (v36 & 1) == 0)
        {
          v38 = v34 == v37;
          if (v34 == v37)
          {
            v34 = 0;
          }

          v36 |= v38;
          v39 = *&v31[8 * v34];
          if (v39 != -1)
          {
            v35 = __clz(__rbit64(~v39)) + (v34 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v35 = __clz(__rbit64((-1 << v33) & ~v29[(v33 >> 6) + 8])) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *&v31[(v35 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v35;
      v40 = v45;
      *(v45[6] + 8 * v35) = v30;
      result = (v26)(v40[7] + *(v41 + 72) * v35, v44, v48);
      ++v40[2];
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return v45;
    }

    v13 = *(v10 + 8 * v16);
    ++v17;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

Swift::Int sub_1000089B8(unsigned __int8 a1)
{
  sub_100044E3C();
  sub_100044E4C(a1);
  return sub_100044E5C();
}

Swift::Int sub_100008A1C(uint64_t a1)
{
  v2 = *v1;
  sub_100044E3C();
  sub_100044E4C(v2);
  return sub_100044E5C();
}

uint64_t sub_100008AA0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v130 = a4;
  v114 = a3;
  v112 = a2;
  v135 = a1;
  sub_100003514(&qword_100060458, &qword_100046940);
  sub_1000061E8();
  v127 = v6;
  v128 = v5;
  sub_10000AF08();
  __chkstk_darwin(v7);
  sub_10000AF20();
  v126 = v8;
  v134 = sub_1000442BC();
  sub_1000061E8();
  v123 = v9;
  __chkstk_darwin(v10);
  sub_10000AF40();
  sub_10000AF14(v11);
  v133 = sub_100003514(&qword_100060460, &qword_100046948);
  sub_1000061E8();
  v125 = v12;
  sub_10000AF08();
  __chkstk_darwin(v13);
  sub_10000AF20();
  v124 = v14;
  v121 = sub_100003514(&qword_100060468, &qword_100046950);
  sub_1000061E8();
  v120 = v15;
  sub_10000AF08();
  __chkstk_darwin(v16);
  sub_10000AF20();
  sub_10000AF14(v17);
  v117 = sub_100003514(&qword_100060470, &qword_100046958);
  sub_1000061E8();
  v116 = v18;
  sub_10000AF08();
  __chkstk_darwin(v19);
  sub_10000AF20();
  sub_10000AF14(v20);
  v110 = sub_10004408C();
  sub_1000061E8();
  v109 = v21;
  __chkstk_darwin(v22);
  sub_10000AF40();
  sub_10000AF14(v23);
  v131 = sub_100003514(&qword_100060478, &qword_100046960);
  sub_1000061E8();
  v113 = v24;
  sub_10000AF08();
  __chkstk_darwin(v25);
  sub_10000AF20();
  sub_10000AF14(v26);
  v107 = sub_100003514(&qword_100060480, &qword_100046968);
  sub_1000061E8();
  v106 = v27;
  sub_10000AF08();
  __chkstk_darwin(v28);
  sub_10000AF20();
  sub_10000AF14(v29);
  sub_100003514(&qword_100060488, &unk_100046970);
  sub_10000AF08();
  __chkstk_darwin(v30);
  v32 = &v100 - v31;
  v33 = sub_100043B7C();
  sub_1000061E8();
  v35 = v34;
  v37 = __chkstk_darwin(v36);
  v132 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v136 = &v100 - v40;
  v118 = v41;
  __chkstk_darwin(v39);
  v137 = &v100 - v42;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v43 = sub_100043DBC();
  sub_1000060A4(v43, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046830;
  v139 = type metadata accessor for JetpackLoader();
  v138 = v4;
  v129 = v4;

  v44 = AMSLogKey();
  if (v44)
  {
    v45 = v44;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(&v138);
  sub_100043CFC();
  v139 = v33;
  v46 = sub_1000049E0(&v138);
  v47 = v35;
  v48 = *(v35 + 16);
  v48(v46, v135, v33);
  sub_100043D0C();
  sub_10000AC5C(&v138, &qword_100061D00, &qword_1000465F0);
  sub_100043D9C();

  sub_10000477C(0, &qword_100060490, JSVirtualMachine_ptr);
  sub_1000443CC();
  sub_10004462C();
  v49 = v138;
  if (qword_10005FF00 != -1)
  {
    swift_once();
  }

  v50 = sub_1000060A4(v33, qword_100060368);
  v51 = v137;
  v48(v137, v50, v33);
  sub_100007DEC(v32);
  if (sub_1000046E4(v32, 1, v33) == 1)
  {
    sub_10000AC5C(v32, &qword_100060488, &unk_100046970);
    sub_100003514(&qword_100060498, "xV");
    sub_10000A530();
    swift_allocError();
    *v52 = 1;
    v53 = sub_1000447AC();

    (*(v47 + 8))(v51, v33);
  }

  else
  {
    v54 = *(v47 + 32);
    v101 = v47 + 32;
    v103 = v54;
    v54(v136, v32, v33);
    v102 = v49;
    v55 = v112;
    v56 = v114;
    v57 = sub_1000304EC(v112, v114);
    v58 = sub_10003045C(v55, v56);
    v59 = v105;
    v60 = v135;
    sub_10004486C();
    v61 = v111;
    v114 = v57;
    v104 = v58;
    sub_10004431C();
    sub_10000AAE4(&qword_1000604A8, &qword_100060480, &qword_100046968, &protocol conformance descriptor for PipelineEntryTask<A>);
    v62 = v107;
    v63 = sub_10004429C();
    v100 = v63;
    v112 = v47;
    v64 = *(v113 + 8);
    v64(v61, v131);
    (*(v106 + 8))(v59, v62);
    v141 = v63;
    v48(v132, v60, v33);
    sub_10000A5CC();
    sub_100044BFC();
    v65 = sub_10000477C(0, &qword_1000604B8, OS_dispatch_queue_ptr);
    v107 = v48;
    v66 = v109;
    v67 = v108;
    v68 = v110;
    (*(v109 + 104))(v108, enum case for DispatchQoS.QoSClass.default(_:), v110);
    v113 = v65;
    v69 = sub_100044A8C();
    (*(v66 + 8))(v67, v68);
    sub_10004433C();

    sub_1000072CC(&v138);
    sub_10000AF54();
    v130 = &protocol conformance descriptor for MapPipelineTask<A, B>;
    sub_10000AAE4(&qword_1000604C8, &qword_1000604C0, &qword_100046980, &protocol conformance descriptor for MapPipelineTask<A, B>);
    v70 = sub_10004429C();
    v64(v61, v131);

    v138 = v70;
    v71 = sub_1000448FC();
    sub_100008548(v71);

    sub_100008A70();
    sub_1000442CC();
    v72 = v115;
    sub_10004432C();

    v73 = sub_10004429C();
    (*(v116 + 8))(v72, v117);

    v138 = v73;
    v74 = v119;
    sub_1000442DC();
    sub_100003514(&qword_1000604D0, &qword_100046988);
    v75 = v130;
    sub_10000AAE4(&qword_1000604D8, &qword_1000604D0, &qword_100046988, v130);
    v76 = sub_10004429C();
    v131 = v76;
    (*(v120 + 8))(v74, v121);

    v138 = v76;
    v77 = v123;
    v78 = v122;
    v79 = v134;
    (*(v123 + 104))(v122, enum case for JetpackBundle.Resource.source(_:), v134);
    v80 = v124;
    sub_10004430C();
    (*(v77 + 8))(v78, v79);
    v81 = sub_10000AF54();
    v82 = sub_10000AAE4(&qword_1000604E8, &qword_1000604E0, &qword_100046990, v75);
    v123 = v81;
    v122 = v82;
    v83 = sub_10004429C();
    v125 = *(v125 + 8);
    (v125)(v80, v133);
    v138 = v83;
    v84 = v132;
    v107(v132, v135, v33);
    v85 = (*(v101 + 48) + 16) & ~*(v101 + 48);
    v86 = (v118 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
    v87 = swift_allocObject();
    v103(v87 + v85, v84, v33);
    v88 = v102;
    *(v87 + v86) = v102;
    v135 = v88;
    sub_100003514(&qword_1000604F0, &qword_100046998);
    sub_100003514(&qword_1000604F8, &qword_1000469A0);
    sub_10000AAE4(&qword_100060500, &qword_1000604F0, &qword_100046998, v130);
    v132 = sub_10004428C();

    v138 = v131;
    if (qword_10005FF10 != -1)
    {
      swift_once();
    }

    sub_1000060A4(v134, qword_100060398);
    sub_10004430C();
    v89 = sub_10004429C();
    (v125)(v80, v133);
    v138 = v89;
    v90 = sub_10004427C();

    v138 = v90;
    sub_10000AF54();
    sub_100003514(&qword_100060050, &qword_1000469B0);
    sub_10000AAE4(&qword_100060510, &qword_100060508, &qword_1000469A8, &protocol conformance descriptor for MapPipelineTask<A, B>);
    v91 = sub_10004428C();

    v138 = v91;
    v92 = v126;
    sub_1000442DC();
    sub_100003514(&qword_100060518, &qword_1000469B8);
    sub_10000AAE4(&qword_100060520, &qword_100060518, &qword_1000469B8, &protocol conformance descriptor for MapPipelineTask<A, B>);
    sub_10004429C();
    (*(v127 + 8))(v92, v128);

    sub_10004441C();
    sub_10004441C();
    v93 = sub_1000448FC();
    v94 = sub_100044A7C();
    v95 = swift_allocObject();
    *(v95 + 16) = v93;
    sub_10000E34C(sub_10000AADC, v95, v94);

    sub_10000AF54();
    sub_10000AAE4(&qword_100060530, &qword_100060528, &unk_1000469C0, &protocol conformance descriptor for Promise<A>);
    sub_10004477C();
    v96 = swift_allocObject();
    v97 = v129;
    *(v96 + 16) = sub_10000AB2C;
    *(v96 + 24) = v97;
    v139 = sub_10004448C();
    v140 = &protocol witness table for SyncTaskScheduler;
    sub_1000049E0(&v138);

    sub_10004447C();
    v53 = sub_10004476C();

    v98 = *(v112 + 8);
    v98(v136, v33);
    v98(v137, v33);
    sub_100004408(&v138);
  }

  return v53;
}

void *sub_100009D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v21 = a3;
  v7 = sub_100003514(&qword_100060488, &unk_100046970);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_100043B7C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = *(v11 + 16);
  v15(&v20 - v16, a1, v10);
  v15(v14, a2, v10);
  sub_10000464C(v9, 1, 1, v10);
  a4[3] = sub_10004443C();
  a4[4] = &protocol witness table for JSBytecodeSource;
  sub_1000049E0(a4);
  v17 = v21;
  v18 = v22;
  result = sub_10004442C();
  if (v18)
  {
    return sub_10000ACB0(a4);
  }

  return result;
}

uint64_t sub_100009F20(uint64_t a1)
{
  result = sub_100043B8C();
  if (!v1)
  {
    sub_100003514(&qword_100060540, &qword_1000469D0);
    return sub_1000447BC();
  }

  return result;
}

uint64_t sub_100009F90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100003514(&qword_100060538, &qword_100046D20);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_10004420C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AC04(*a1, a1[1]);
  result = sub_1000441DC();
  if (!v2)
  {
    sub_1000441CC();
    v13 = sub_10004437C();
    if (sub_1000046E4(v7, 1, v13) == 1)
    {
      sub_10000AC5C(v7, &qword_100060538, &qword_100046D20);
    }

    else
    {
      v14 = sub_10004436C();
      (*(*(v13 - 8) + 8))(v7, v13);
      if (v14)
      {
        result = (*(v9 + 8))(v11, v8);
        *a2 = v14;
        return result;
      }
    }

    sub_10000A530();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_10000A1D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v8 = sub_100043DBC();
  sub_1000060A4(v8, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046830;
  v16 = type metadata accessor for JetpackLoader();
  v15[0] = a3;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v15);
  sub_100043CFC();
  v11 = a1[3];
  v12 = sub_100004454(a1, v11);
  v16 = v11;
  v13 = sub_1000049E0(v15);
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  sub_100043D0C();
  sub_10000AC5C(v15, &qword_100061D00, &qword_1000465F0);
  sub_100043D9C();

  sub_10000ABA0(a1, a4);
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0;
  *(a4 + 40) = a2;
}

uint64_t sub_10000A494()
{
  v0 = sub_1000442BC();
  sub_1000084CC(v0, qword_100060398);
  v1 = sub_1000060A4(v0, qword_100060398);
  *v1 = xmmword_100046900;
  v1[1] = xmmword_100046910;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

unint64_t sub_10000A530()
{
  result = qword_1000604A0;
  if (!qword_1000604A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000604A0);
  }

  return result;
}

uint64_t sub_10000A584(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000A5CC()
{
  result = qword_1000604B0;
  if (!qword_1000604B0)
  {
    sub_100043B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000604B0);
  }

  return result;
}

uint64_t sub_10000A624()
{
  sub_100043B7C();
  sub_10000AF2C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

void *sub_10000A6B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_100043B7C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_100009D44(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_10000A75C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_100043B7C();
  v5 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100003514(&qword_100060548, &qword_1000469D8);
  v37 = v4;
  result = sub_100044CEC();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v9;
    return result;
  }

  v34 = v3;
  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v35 = (v5 + 16);
  v36 = v5;
  v16 = (v5 + 32);
  v17 = result + 64;
  if (!v14)
  {
LABEL_7:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      sub_100026E98(0, (v33 + 63) >> 6, v7 + 64);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v21 = v18 | (v10 << 6);
    v22 = *(*(v7 + 48) + 8 * v21);
    v23 = *(v5 + 72);
    v24 = *(v7 + 56) + v23 * v21;
    if (v37)
    {
      (*v16)(v38, v24, v39);
    }

    else
    {
      (*v35)(v38, v24, v39);
    }

    result = sub_100044E2C();
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v9 + 48) + 8 * v28) = v22;
    result = (*v16)(*(v9 + 56) + v23 * v28, v38, v39);
    ++*(v9 + 16);
    v5 = v36;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10000AAA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AAE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000A584(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000AB34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000ABA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000AC04(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_10000AC5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100003514(a2, a3);
  sub_10000AF2C();
  (*(v4 + 8))(a1);
  return a1;
}

void *sub_10000ACB0(void *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    return _swift_slowDealloc(*result, *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)), *(v1 + 80) | 7);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JetpackLoader.LoadError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for JetpackLoader.LoadError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10000AE64);
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

unint64_t sub_10000AEB4()
{
  result = qword_100060550;
  if (!qword_100060550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060550);
  }

  return result;
}

uint64_t sub_10000AF54()
{

  return sub_100003514(v0, v1);
}

uint64_t sub_10000AF7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_100044DAC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_10000B024()
{
  sub_100044E3C();
  sub_100044E4C(0);
  return sub_100044E5C();
}

Swift::Int sub_10000B098(uint64_t a1)
{
  sub_100044E3C();
  sub_100044E4C(0);
  return sub_100044E5C();
}

uint64_t sub_10000B0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000AF7C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10000B124@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000AFF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000B150(uint64_t a1)
{
  v2 = sub_10000B47C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000B18C(uint64_t a1)
{
  v2 = sub_10000B47C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000B1C8(void *a1, uint64_t a2)
{
  v3 = sub_100003514(&qword_100060568, &qword_100046B30);
  sub_1000061E8();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_100004454(a1, a1[3]);
  sub_10000B47C();
  sub_100044E7C();
  sub_100044D7C();
  return (*(v5 + 8))(v8, v3);
}

void *sub_10000B2EC(void *a1)
{
  v3 = sub_100003514(&qword_100060558, &qword_100046B28);
  sub_1000061E8();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = sub_100004454(a1, a1[3]);
  sub_10000B47C();
  sub_100044E6C();
  if (!v1)
  {
    v9 = sub_100044D3C();
    (*(v5 + 8))(v8, v3);
  }

  sub_100004408(a1);
  return v9;
}

void *sub_10000B434@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10000B2EC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10000B47C()
{
  result = qword_100060560;
  if (!qword_100060560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060560);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JetpackMetadata.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for JetpackMetadata.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10000B5C0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10000B604()
{
  result = qword_100060570;
  if (!qword_100060570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060570);
  }

  return result;
}

unint64_t sub_10000B65C()
{
  result = qword_100060578;
  if (!qword_100060578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060578);
  }

  return result;
}

unint64_t sub_10000B6B4()
{
  result = qword_100060580;
  if (!qword_100060580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060580);
  }

  return result;
}

uint64_t sub_10000B708(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v40 = a1;
  v41 = sub_10004461C();
  sub_1000061E8();
  v39 = v5;
  v42 = *(v6 + 64);
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v9;
  v38 = sub_100043B7C();
  sub_1000061E8();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v36 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003514(&qword_100060700, &qword_100046D28);
  sub_1000061E8();
  v17 = v16;
  sub_10000AF08();
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  v21 = sub_10004491C();
  sub_1000445DC();

  v22 = sub_1000445FC();
  (*(v17 + 8))(v20, v15);
  v23 = v38;
  (*(v11 + 16))(&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v38);
  v24 = v39;
  v25 = v9;
  v26 = v41;
  (*(v39 + 16))(v25, a2, v41);
  v27 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v28 = v24;
  v29 = (v13 + *(v24 + 80) + v27) & ~*(v24 + 80);
  v30 = (v42 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v22;
  *(v31 + 24) = 1;
  *(v31 + 32) = v43;
  (*(v11 + 32))(v31 + v27, v36, v23);
  (*(v28 + 32))(v31 + v29, v37, v26);
  v32 = v44;
  v33 = v45;
  *(v31 + v30) = v44;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v33;
  v34 = v32;

  return sub_100038260(&unk_100046D38, v31);
}

uint64_t sub_10000BA30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 97) = a3;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  v9 = swift_task_alloc();
  *(v8 + 64) = v9;
  *v9 = v8;
  v9[1] = sub_10000BADC;

  return Promise.then()(v8 + 96);
}

uint64_t sub_10000BADC()
{
  sub_10000EAD4();
  v2 = *v1;
  sub_10000EAE0();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_10000BDB8;
  }

  else
  {
    v4 = sub_10000BBE8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000BBE8()
{
  sub_10000EAD4();
  v1 = *(v0 + 97);
  if (*(v0 + 96) != 2)
  {
    v1 = *(v0 + 96);
  }

  *(v0 + 72) = sub_10000BEA8(*(v0 + 32), *(v0 + 40), *(v0 + 48), v1 & 1, *(v0 + 56));
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v3 = sub_10000EAAC(v2);

  return Promise.then()(v3);
}

uint64_t sub_10000BC88()
{
  sub_10000EAD4();
  v2 = *v1;
  sub_10000EAE0();
  *v3 = v2;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10000BE48, 0, 0);
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_10000BDB8()
{
  sub_10000EAD4();
  *(v0 + 72) = sub_10000BEA8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 97), *(v0 + 56));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v2 = sub_10000EAAC(v1);

  return Promise.then()(v2);
}

uint64_t sub_10000BE48()
{
  sub_10000EAD4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000BEA8(void (*a1)(uint64_t *, id, uint64_t), uint64_t a2, void *a3, int a4, void *a5)
{
  v103 = a5;
  v108 = a4;
  v86 = a3;
  v105 = a2;
  v106 = a1;
  sub_100003514(&qword_100060650, &qword_100046C88);
  sub_1000061E8();
  v99 = v7;
  v100 = v6;
  sub_10000AF08();
  __chkstk_darwin(v8);
  sub_10000AF20();
  v98 = v9;
  sub_100003514(&qword_100060658, &qword_100046C90);
  sub_1000061E8();
  v96 = v11;
  v97 = v10;
  sub_10000AF08();
  __chkstk_darwin(v12);
  sub_10000AF20();
  sub_10000AF14(v13);
  v94 = sub_100003514(&qword_100060660, &unk_100046C98);
  sub_1000061E8();
  v93 = v14;
  sub_10000AF08();
  __chkstk_darwin(v15);
  sub_10000AF20();
  sub_10000AF14(v16);
  v89 = sub_10004408C();
  sub_1000061E8();
  v88 = v17;
  __chkstk_darwin(v18);
  sub_10000AF14(v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = sub_100003514(&qword_100060478, &qword_100046960);
  sub_1000061E8();
  v91 = v20;
  sub_10000AF08();
  __chkstk_darwin(v21);
  sub_10000AF20();
  sub_10000AF14(v22);
  v83 = sub_100003514(&qword_100060480, &qword_100046968);
  sub_1000061E8();
  v82 = v23;
  sub_10000AF08();
  __chkstk_darwin(v24);
  sub_10000AF20();
  sub_10000AF14(v25);
  sub_100003514(&qword_100060488, &unk_100046970);
  sub_10000AF08();
  __chkstk_darwin(v26);
  v28 = v79 - v27;
  v29 = sub_100043B7C();
  sub_1000061E8();
  v110 = v30;
  __chkstk_darwin(v31);
  sub_10000AF14(v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __chkstk_darwin(v33);
  v107 = v79 - v35;
  v84 = v36;
  __chkstk_darwin(v34);
  v109 = v79 - v37;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v38 = sub_100043DBC();
  v102 = sub_1000060A4(v38, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v39 = sub_100043D4C();
  sub_10000EA9C(v39);
  *(swift_allocObject() + 16) = xmmword_100046C50;
  v112 = type metadata accessor for JetpackV2Loader();
  v111 = v5;
  v101 = v5;

  v40 = AMSLogKey();
  if (v40)
  {
    v41 = v40;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(&v111);
  sub_100043CFC();
  v112 = v29;
  v42 = sub_1000049E0(&v111);
  v43 = *(v110 + 16);
  v43(v42, v106, v29);
  sub_100043D0C();
  sub_10000AC5C(&v111, &qword_100061D00, &qword_1000465F0);
  sub_100043CFC();
  v112 = &type metadata for Bool;
  LOBYTE(v111) = v108 & 1;
  sub_100043D0C();
  sub_10000AC5C(&v111, &qword_100061D00, &qword_1000465F0);
  sub_100043D9C();

  sub_10000477C(0, &qword_100060490, JSVirtualMachine_ptr);
  sub_1000443CC();
  sub_10004462C();
  v44 = v111;
  if (qword_10005FF00 != -1)
  {
    swift_once();
  }

  v45 = sub_1000060A4(v29, qword_100060368);
  v46 = v109;
  v43(v109, v45, v29);
  sub_100007DEC(v28);
  if (sub_1000046E4(v28, 1, v29) == 1)
  {
    sub_10000AC5C(v28, &qword_100060488, &unk_100046970);
    sub_100003514(&qword_100060498, "xV");
    sub_10000DD94();
    swift_allocError();
    *v47 = 1;
    v48 = sub_1000447AC();

    (*(v110 + 8))(v46, v29);
  }

  else
  {
    v49 = *(v110 + 32);
    v79[1] = v110 + 32;
    v80 = v49;
    v49(v107, v28, v29);
    v50 = v105;
    v51 = v86;
    v102 = sub_1000304EC(v105, v86);
    v103 = sub_10003045C(v50, v51);
    v52 = v81;
    v53 = v106;
    sub_10004486C();
    v54 = v90;
    sub_10004431C();
    sub_10000AAE4(&qword_1000604A8, &qword_100060480, &qword_100046968, &protocol conformance descriptor for PipelineEntryTask<A>);
    v86 = v44;
    v55 = v83;
    v56 = sub_10004429C();
    v79[0] = v56;
    v91 = *(v91 + 8);
    (v91)(v54, v104);
    (*(v82 + 8))(v52, v55);
    v114 = v56;
    v57 = v87;
    v43(v87, v53, v29);
    sub_10000A5CC();
    sub_100044BFC();
    sub_10000477C(0, &qword_1000604B8, OS_dispatch_queue_ptr);
    v58 = v88;
    v59 = *(v88 + 104);
    v106 = v43;
    v60 = v85;
    v61 = v89;
    v59(v85, enum case for DispatchQoS.QoSClass.default(_:), v89);
    v62 = sub_100044A8C();
    (*(v58 + 8))(v60, v61);
    sub_10004433C();

    sub_1000072CC(&v111);
    sub_100003514(&qword_1000604C0, &qword_100046980);
    v89 = &protocol conformance descriptor for MapPipelineTask<A, B>;
    sub_10000AAE4(&qword_1000604C8, &qword_1000604C0, &qword_100046980, &protocol conformance descriptor for MapPipelineTask<A, B>);
    v63 = sub_10004429C();
    (v91)(v54, v104);

    v111 = v63;
    LOBYTE(v51) = sub_100008A70();
    v106(v57, v107, v29);
    v64 = (*(v110 + 80) + 16) & ~*(v110 + 80);
    v65 = v64 + v84;
    v66 = swift_allocObject();
    v80(v66 + v64, v57, v29);
    *(v66 + v65) = v51 & 1;
    sub_10004410C();
    v67 = v92;
    sub_1000442EC();
    v68 = sub_10004429C();
    (*(v93 + 8))(v67, v94);

    v111 = v68;
    v69 = v95;
    sub_1000442DC();
    sub_100003514(&qword_100060670, &unk_100046CA8);
    v70 = v89;
    sub_10000AAE4(&qword_100060678, &qword_100060670, &unk_100046CA8, v89);
    v71 = sub_10004429C();
    (*(v96 + 8))(v69, v97);

    v111 = v71;
    v72 = swift_allocObject();
    v73 = v86;
    *(v72 + 16) = v86;
    v106 = v73;
    sub_100003514(&qword_1000604F8, &qword_1000469A0);
    v74 = v98;
    sub_1000442FC();
    sub_100003514(&qword_100060680, &unk_100046CB8);
    sub_10000AAE4(&qword_100060688, &qword_100060680, &unk_100046CB8, v70);
    v104 = sub_10004429C();
    (*(v99 + 8))(v74, v100);
    LOBYTE(v66) = v108;
    sub_10000CD90(v108 & 1, v71);
    sub_10000D56C(v66 & 1, v71, v105);
    sub_10004441C();
    sub_100003514(&qword_100060528, &unk_1000469C0);
    sub_10000AAE4(&qword_100060530, &qword_100060528, &unk_1000469C0, &protocol conformance descriptor for Promise<A>);
    sub_10004477C();
    sub_100003514(&qword_100060690, &qword_100046CC8);
    sub_10000AAE4(&qword_100060698, &qword_100060690, &qword_100046CC8, &protocol conformance descriptor for Promise<A>);
    sub_10004477C();

    v75 = swift_allocObject();
    v76 = v101;
    *(v75 + 16) = sub_10000DF44;
    *(v75 + 24) = v76;
    v112 = sub_10004448C();
    v113 = &protocol witness table for SyncTaskScheduler;
    sub_1000049E0(&v111);

    sub_10004447C();
    v48 = sub_10004476C();

    v77 = *(v110 + 8);
    v77(v107, v29);
    v77(v109, v29);
    sub_100004408(&v111);
  }

  return v48;
}

uint64_t sub_10000CD90(char a1, uint64_t a2)
{
  v4 = sub_100003514(&qword_100060458, &qword_100046940);
  v30 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = &v28 - v5;
  v6 = sub_10004417C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003514(&qword_1000606E8, &qword_100046D10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  if (a1)
  {
    sub_100003514(&qword_100060528, &unk_1000469C0);
    v31 = sub_1000448FC();
    return sub_1000447BC();
  }

  else
  {
    v28 = v4;
    v31 = a2;
    if (qword_10005FF18 != -1)
    {
      swift_once();
    }

    v15 = sub_1000060A4(v6, qword_100060588);
    sub_10000DD94();
    v16 = swift_allocError();
    *v17 = 3;
    (*(v7 + 16))(&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v6);
    v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    (*(v7 + 32))(v20 + v18, v9, v6);
    *(v20 + v19) = v16;
    sub_10004410C();
    sub_1000442FC();
    sub_100003514(&qword_100060680, &unk_100046CB8);
    sub_10000AAE4(&qword_100060688, &qword_100060680, &unk_100046CB8, &protocol conformance descriptor for MapPipelineTask<A, B>);
    v21 = sub_10004429C();
    (*(v11 + 8))(v13, v10);
    v31 = v21;
    sub_100003514(&qword_1000606F0, &qword_100046D18);
    sub_100003514(&qword_100060050, &qword_1000469B0);
    sub_10000AAE4(&qword_1000606F8, &qword_1000606F0, &qword_100046D18, &protocol conformance descriptor for MapPipelineTask<A, B>);
    v22 = sub_10004428C();

    v31 = v22;
    v23 = v29;
    sub_1000442DC();
    sub_100003514(&qword_100060518, &qword_1000469B8);
    sub_10000AAE4(&qword_100060520, &qword_100060518, &qword_1000469B8, &protocol conformance descriptor for MapPipelineTask<A, B>);
    sub_10004429C();
    (*(v30 + 8))(v23, v28);

    sub_10004441C();

    v24 = sub_1000448FC();
    sub_10000477C(0, &qword_1000604B8, OS_dispatch_queue_ptr);
    v25 = sub_100044A7C();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v14 = sub_10000E34C(sub_10000AADC, v26, v25);
  }

  return v14;
}

uint64_t sub_10000D324@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100003514(&qword_100060538, &qword_100046D20);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_10004420C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AC04(*a1, a1[1]);
  result = sub_1000441DC();
  if (!v2)
  {
    sub_1000441CC();
    v13 = sub_10004437C();
    if (sub_1000046E4(v7, 1, v13) == 1)
    {
      sub_10000AC5C(v7, &qword_100060538, &qword_100046D20);
    }

    else
    {
      v14 = sub_10004436C();
      (*(*(v13 - 8) + 8))(v7, v13);
      if (v14)
      {
        result = (*(v9 + 8))(v11, v8);
        *a2 = v14;
        return result;
      }
    }

    sub_10000DD94();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_10000D56C(char a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v5 = sub_100003514(&qword_1000606B0, &qword_100046CE0);
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_10004461C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_100003514(&qword_1000606B8, &qword_100046CE8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  if (a1)
  {
    *&v25 = a2;
    (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v8);
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = swift_allocObject();
    (*(v9 + 32))(v16 + v15, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    sub_10004410C();
    sub_100003514(&qword_1000606C0, &qword_100046CF0);
    sub_1000442EC();
    sub_100003514(&qword_100060680, &unk_100046CB8);
    sub_10000AAE4(&qword_100060688, &qword_100060680, &unk_100046CB8, &protocol conformance descriptor for MapPipelineTask<A, B>);
    v17 = sub_10004429C();
    (*(v12 + 8))(v14, v11);
    *&v25 = v17;
    sub_1000442DC();
    sub_100003514(&qword_1000606C8, &qword_100046CF8);
    sub_10000AAE4(&qword_1000606D0, &qword_1000606C8, &qword_100046CF8, &protocol conformance descriptor for MapPipelineTask<A, B>);
    v18 = sub_10004429C();
    (*(v22 + 8))(v7, v23);

    *&v25 = v18;
    sub_100003514(&qword_1000606D8, &unk_100046D00);
    sub_100003514(&qword_1000606A8, &unk_100047000);
    sub_10000AAE4(&qword_1000606E0, &qword_1000606D8, &unk_100046D00, &protocol conformance descriptor for MapPipelineTask<A, B>);
    sub_10004428C();

    v19 = sub_10004441C();
  }

  else
  {
    sub_100003514(&qword_100060690, &qword_100046CC8);
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    return sub_1000447BC();
  }

  return v19;
}

uint64_t sub_10000D9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_10000ABA0(a1, v22);
  v23 = a2;
  sub_10000DFD4(v22, &v17, &qword_1000606A0, &unk_100046CD0);

  sub_10000DFBC(&v17, v20);
  sub_10000DFD4(v22, &v17, &qword_1000606A0, &unk_100046CD0);
  v9 = v19;
  sub_100004408(&v17);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v10 = sub_100043DBC();
  sub_1000060A4(v10, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046830;
  v18 = type metadata accessor for JetpackV2Loader();
  *&v17 = a4;

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(&v17);
  sub_100043CFC();
  v13 = v21;
  v14 = sub_100004454(v20, v21);
  v18 = v13;
  v15 = sub_1000049E0(&v17);
  (*(*(v13 - 8) + 16))(v15, v14, v13);
  sub_100043D0C();
  sub_10000AC5C(&v17, &qword_100061D00, &qword_1000465F0);
  sub_100043D9C();

  sub_10000AC5C(v22, &qword_1000606A0, &unk_100046CD0);
  sub_10000ABA0(v20, a5);
  sub_10000DFD4(a3, a5 + 48, &qword_1000606A8, &unk_100047000);
  *(a5 + 40) = v9;
  return sub_100004408(v20);
}

uint64_t sub_10000DD30()
{
  v0 = sub_10004417C();
  sub_1000084CC(v0, qword_100060588);
  sub_1000060A4(v0, qword_100060588);
  return sub_10004418C();
}

unint64_t sub_10000DD94()
{
  result = qword_100060668;
  if (!qword_100060668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060668);
  }

  return result;
}

uint64_t sub_10000DDE8()
{
  sub_100043B7C();
  sub_10000AF2C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64) + v3;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 1, v2 | 7);
}

uint64_t sub_10000DE68(uint64_t a1)
{
  v3 = sub_100043B7C();
  sub_10000EA9C(v3);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_1000383C0(a1, v6, v7);
}

uint64_t sub_10000DEF0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DF4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DFBC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000DFD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003514(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000E03C()
{
  sub_10004461C();
  sub_10000AF2C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000E0B8(uint64_t a1)
{
  v3 = *(sub_10004461C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000388A4(a1, v4);
}

uint64_t sub_10000E128()
{
  sub_10004417C();
  sub_10000AF2C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10000E1B8@<X0>(uint64_t *x8_0@<X8>)
{
  v3 = sub_10004417C();
  sub_10000EA9C(v3);
  return sub_1000386D4(x8_0);
}

uint64_t sub_10000E28C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  a3(&v4, a1);
  sub_1000447EC();
}

uint64_t sub_10000E2E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = MetricsContext.overlay.getter(a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000E30C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E34C(uint64_t a1, uint64_t a2, void *a3)
{
  v10[3] = sub_10000477C(0, &qword_1000604B8, OS_dispatch_queue_ptr);
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = a3;
  v6 = a3;
  v7 = sub_10004482C();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  swift_retain_n();

  sub_10004478C();

  sub_100004408(v10);
  return v7;
}

uint64_t sub_10000E484()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E4D0()
{
  v1 = sub_100043B7C();
  sub_1000061E8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_10004461C();
  sub_1000061E8();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = v4 | v13;
  v16 = (*(v12 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return _swift_deallocObject(v0, ((v16 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v15 | 7);
}

uint64_t sub_10000E634(uint64_t a1)
{
  v3 = v2;
  v5 = sub_100043B7C();
  sub_10000EA9C(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_10004461C();
  sub_10000EA9C(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = (*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = *(v1 + 32);
  v18 = *(v1 + v14);
  v19 = *(v1 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_10000E7D0;

  return sub_10000BA30(a1, v15, v16, v17, v1 + v7, v1 + v12, v18, v19);
}

uint64_t sub_10000E7D0()
{
  sub_10000EAD4();
  v1 = *v0;
  sub_10000EAE0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t getEnumTagSinglePayload for JetpackV2Loader.LoadError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for JetpackV2Loader.LoadError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x10000EA0CLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10000EA48()
{
  result = qword_100060708;
  if (!qword_100060708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060708);
  }

  return result;
}

uint64_t sub_10000EAF0()
{
  sub_100004454(v0, v0[3]);
  v1 = sub_10000F2AC();
  if (v2(v1))
  {
    return 0x73656E755469;
  }

  sub_100004454(v0, v0[3]);
  v4 = sub_10000F2AC();
  if (v5(v4))
  {
    return 0x64756F6C4369;
  }

  sub_100004454(v0, v0[3]);
  v6 = sub_10000F2AC();
  if (v7(v6))
  {
    return 1936548969;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

id sub_10000EBEC(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  result = [v4 valueWithNewObjectInContext:a1];
  if (!result)
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = result;
  sub_10000F1E8();
  v7 = sub_10000F20C();
  result = [v4 valueWithBool:v8(v7) & 1 inContext:a1];
  if (!result)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_100044AEC();
  sub_10000F1E8();
  v9 = sub_10000F20C();
  v10(v9);
  if (v11)
  {
    sub_10000F260();
    sub_10000F244();

    result = sub_10000F228(v12, v13, v14, v15, v16, v17, v18, v19, v109);
    if (!result)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    sub_10000F21C();

    sub_100044AEC();
  }

  sub_10000F1E8();
  v20 = sub_10000F20C();
  v21(v20);
  if (v22)
  {
    sub_10000F260();
    sub_10000F244();

    result = sub_10000F228(v23, v24, v25, v26, v27, v28, v29, v30, v109);
    if (!result)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    sub_10000F21C();

    sub_100044AEC();
  }

  sub_10000F1E8();
  v31 = sub_10000F20C();
  v33 = v32(v31);
  if (v33)
  {
    v34 = v33;
    v35 = [v33 stringValue];

    sub_10004494C();
    sub_10000F0F4();
    sub_10000F244();

    result = sub_10000F228(v36, v37, v38, v39, v40, v41, v42, v43, v109);
    if (!result)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    sub_10000F21C();

    sub_100044AEC();
  }

  sub_10000F1E8();
  v44 = sub_10000F20C();
  v45(v44);
  if (v46)
  {
    sub_10000F260();
    sub_10000F244();

    result = sub_10000F228(v47, v48, v49, v50, v51, v52, v53, v54, v109);
    if (!result)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    sub_10000F21C();

    sub_100044AEC();
  }

  sub_10000F1E8();
  v55 = sub_10000F20C();
  v56(v55);
  if (v57)
  {
    sub_10000F260();
    sub_10000F244();

    result = sub_10000F228(v58, v59, v60, v61, v62, v63, v64, v65, v109);
    if (!result)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    sub_10000F21C();

    sub_10000F2E0(v66, 0x614E7473616CLL);
  }

  sub_10000F1E8();
  v67 = sub_10000F20C();
  v68(v67);
  if (v69)
  {
    sub_10000F260();
    sub_10000F244();

    result = sub_10000F228(v70, v71, v72, v73, v74, v75, v76, v77, v109);
    if (!result)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    sub_10000F21C();

    sub_100044AEC();
  }

  sub_10000F0F4();
  v110 = sub_10000EAF0();
  v78 = a1;
  result = sub_10000F228(v78, v79, v80, v81, v82, v83, v84, v85, v110);
  if (!result)
  {
    goto LABEL_33;
  }

  sub_100044AEC();
  v86 = v2[3];
  v87 = v2[4];
  sub_100004454(v2, v86);
  v88 = (*(v87 + 88))(v86, v87);
  if (v89)
  {
    v111 = v88;
    v90 = v78;

    result = sub_10000F228(v91, v92, v93, v94, v95, v96, v97, v98, v111);
    if (!result)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    sub_10000F2E0(v99, 0x616E72657375);
  }

  sub_10000F2BC();
  v100 = sub_10000F29C();
  v102 = v101(v100);
  if (v102 == 2)
  {
LABEL_28:
    sub_10000F2BC();
    v103 = sub_10000F29C();
    v105 = v104(v103);
    result = sub_10000F27C(v105);
    if (result)
    {
      sub_100044AEC();
      sub_10000F2BC();
      v106 = sub_10000F29C();
      v108 = v107(v106);
      result = sub_10000F27C(v108);
      if (result)
      {
        sub_100044AEC();
        return v6;
      }

      goto LABEL_35;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  result = sub_10000F27C(v102);
  if (result)
  {
    sub_100044AEC();
    goto LABEL_28;
  }

LABEL_43:
  __break(1u);
  return result;
}

unint64_t sub_10000F0F4()
{
  result = qword_100060800;
  if (!qword_100060800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100060800);
  }

  return result;
}

__n128 sub_10000F138(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000F14C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10000F18C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10000F228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_100028F50(&a9, v9);
}

id sub_10000F244()
{

  return v0;
}

unint64_t sub_10000F260()
{

  return sub_10000F0F4();
}

id sub_10000F27C(char a1)
{
  v5 = *(v3 + 1896);

  return [v1 v5];
}

uint64_t sub_10000F2E0(uint64_t a1, uint64_t a2)
{

  return sub_100044AEC();
}

id sub_10000F300(void *a1)
{
  if ([a1 isUndefined])
  {
    return 0;
  }

  v1 = sub_100044ADC();
  v2 = sub_100044ACC();
  v4 = v3;

  if (!v4)
  {
    return 0;
  }

  v5 = sub_100044ADC();
  v6 = sub_100044ABC();

  if (v6 == 2)
  {

    return 0;
  }

  v8 = v2 == 0x73656E755469 && v4 == 0xE600000000000000;
  if (v8 || (sub_100044DAC() & 1) != 0)
  {

    v9 = v6 & 1;
  }

  else
  {
    v27 = v2 == 0x64756F6C4369 && v4 == 0xE600000000000000;
    if (v27 || (sub_100044DAC() & 1) != 0)
    {

      v9 = 2;
    }

    else
    {
      if (v2 == 1936548969 && v4 == 0xE400000000000000)
      {
      }

      else
      {
        v29 = sub_100044DAC();

        if ((v29 & 1) == 0)
        {
          return 0;
        }
      }

      v9 = 3;
    }
  }

  v10 = [objc_allocWithZone(NSNumberFormatter) init];
  v11 = sub_100044ADC();
  sub_100044ACC();
  v13 = v12;

  if (v13)
  {
    v14 = sub_10004491C();

    v15 = [v10 numberFromString:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_100044ADC();
  v17 = sub_100044ACC();
  v19 = v18;

  v20 = sub_100044ADC();
  v21 = sub_100044ACC();
  v23 = v22;

  v24 = sub_10000200C(v9);
  v26 = sub_100001F44(v24, v25, v15, v17, v19, v21, v23);

  return v26;
}

id sub_10000F5EC(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC16UtilityExtension15JSAccountObject_dynamicAccountsStore] = a1;
  *&v2[OBJC_IVAR____TtC16UtilityExtension15JSAccountObject_clientInfo] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for JSAccountObject();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_10000F67C()
{
  v0 = DynamicAccountsStore.account.getter();
  v1 = sub_100010960(v0);

  return v1;
}

uint64_t sub_10000F700()
{
  v1 = objc_opt_self();
  v2 = [*(v0 + OBJC_IVAR____TtC16UtilityExtension15JSAccountObject_clientInfo) accountMediaType];
  v3 = [v1 ams_sharedAccountStoreForMediaType:v2];

  v4 = [v3 ams_localiTunesAccount];
  v5 = sub_100010960(v4);

  return v5;
}

uint64_t sub_10000F83C()
{
  v0 = sub_10000F870();
  v1 = sub_100010960(v0);

  return v1;
}

uint64_t sub_10000F91C(SEL *a1)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 *a1];

  v4 = sub_100010960(v3);
  return v4;
}

uint64_t sub_10000F9D0()
{
  v0 = sub_10000FA04();
  v1 = sub_100010960(v0);

  return v1;
}

id sub_10000FA10(SEL *a1)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 *a1];

  return v3;
}

uint64_t sub_10000FA70(uint64_t a1, uint64_t a2)
{
  sub_10000477C(0, &qword_100060748, JSContext_ptr);
  v2 = sub_100044B1C();
  v3 = sub_100044B2C();

  return v3;
}

char *sub_10000FAFC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v69 = a3;
  v6 = sub_1000448BC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000444AC();
  v10 = sub_10004449C();
  if (v10)
  {
    v11 = v10;
    v60 = sub_10000F870();
    v58 = sub_10000FA04();
    v12 = [objc_opt_self() ams_sharedAccountStore];
    v13 = sub_100044ACC();
    v61 = v14;
    if (v14)
    {
      v56 = v13;
      v57 = v12;
      v52 = a1;
      v53 = a4;
      v54 = v9;
      v46 = v7;
      v47 = v6;
      v55 = v11;
      if (qword_10005FF30 != -1)
      {
        swift_once();
      }

      v15 = sub_100043DBC();
      v16 = sub_1000060A4(v15, qword_100065200);
      v17 = sub_100003514(&qword_100061CF0, &unk_1000466A0);
      v18 = *(*(sub_100043D4C() - 8) + 72);
      v49 = 3 * v18;
      v50 = v17;
      v19 = swift_allocObject();
      v48 = xmmword_100046830;
      *(v19 + 16) = xmmword_100046830;
      v20 = AMSSetLogKeyIfNeeded();
      sub_10004494C();

      sub_100043D1C();

      sub_100043CFC();
      __src[3] = &type metadata for String;
      __src[0] = v56;
      __src[1] = v61;

      sub_100043D0C();
      sub_100006100(__src);
      v51 = v16;
      sub_100043D9C();

      v21 = v57;
      v22 = sub_10000F300(v69);
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v25 = v60;
        if (!v60)
        {
          v25 = v58;
          if (!v58)
          {

            sub_1000446CC();
            sub_1000066BC();
            swift_allocError();
            sub_10004467C();
            swift_willThrow();

            return v21;
          }
        }

        v24 = v25;
      }

      v69 = (2 * v18);
      *(swift_allocObject() + 16) = v48;
      v26 = v23;
      v27 = AMSSetLogKeyIfNeeded();
      sub_10004494C();

      sub_100043D1C();

      sub_100043CFC();
      v28 = sub_10000477C(0, &qword_100061EF0, ACAccount_ptr);
      __src[3] = v28;
      __src[0] = v24;
      v29 = v24;
      sub_100043D3C();
      sub_100006100(__src);
      sub_100043D9C();

      v30 = objc_opt_self();
      v31 = v56;
      v32 = v61;
      v33 = sub_10004491C();
      v34 = [v30 acknowledgementNeededForPrivacyIdentifier:v33 account:v29];

      __src[3] = v28;
      __src[4] = &off_100059928;
      __src[0] = v29;
      v35 = sub_100010C08(v29);
      if (v35 && (v36 = sub_100030774(v31, v32, v35), , v36))
      {
        v37 = [v36 integerValue];

        v38 = 0;
        v29 = v58;
      }

      else
      {

        v37 = 0;
        v38 = 1;
      }

      v39 = v59;
      v40 = v54;
      v41 = v53;

      sub_10000ABA0(__src, v63);
      v64 = v31;
      v65 = v32;
      v66 = v37;
      v67 = v38;
      v68 = v34;
      sub_100004408(__src);
      sub_100010C88(v63, __src);
      v42 = swift_allocObject();
      memcpy(v42 + 2, __src, 0x42uLL);
      v43 = v55;
      v42[11] = v41;
      v42[12] = v43;
      v21 = v52;
      v44 = v41;

      sub_10004489C();
      if (v39)
      {
        sub_100010D54(v63);
      }

      else
      {
        v21 = sub_1000448AC();

        (*(v46 + 8))(v40, v47);
        sub_100010D54(v63);
      }
    }

    else
    {
      v21 = "hout active JS worker thread";
      sub_1000446CC();
      sub_1000066BC();
      swift_allocError();
      sub_10004467C();
      swift_willThrow();
    }
  }

  else
  {
    v21 = "iTunesStoreLocal";
    sub_1000446CC();
    sub_1000066BC();
    swift_allocError();
    sub_10004467C();
    swift_willThrow();
  }

  return v21;
}

uint64_t sub_100010320(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v18 = a6;
  v10 = sub_1000441BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100003514(&unk_100060750, &qword_100046E88);
  sub_100010C88(a4, v19);
  sub_1000447BC();
  (*(v11 + 16))(&v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v13 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  (*(v11 + 32))(v14 + v13, &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v19[3] = sub_1000444AC();
  v19[4] = &protocol witness table for RunLoopWorkerThread;
  v19[0] = v18;
  v15 = a5;
  v16 = a1;

  sub_10004478C();

  return sub_100004408(v19);
}

void sub_100010518(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v6 = sub_100043DBC();
  sub_1000060A4(v6, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046830;
  v14 = type metadata accessor for JSAccountObject();
  v13[0] = a2;
  a2;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v13);
  sub_100043CFC();
  v14 = &type metadata for JSAccountPrivacyAcknowledgementState;
  v13[0] = swift_allocObject();
  sub_100010C88(a1, v13[0] + 16);
  sub_100043D0C();
  sub_100006100(v13);
  sub_100043D9C();

  sub_100003514(&qword_100060820, &unk_100046E90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000465C0;
  v10 = sub_100010F88(a4);
  *(v9 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v9 + 32) = v10;
  v11 = sub_1000441AC();
}

uint64_t sub_100010960(uint64_t a1)
{
  sub_10000477C(0, &qword_100060748, JSContext_ptr);
  v1 = sub_100044B1C();
  v2 = sub_100044B2C();

  return v2;
}

id sub_1000109D8(void *a1, void *a2)
{
  if (a2)
  {
    v7[3] = sub_10000477C(0, &qword_100061EF0, ACAccount_ptr);
    v7[4] = &off_100059928;
    v7[0] = a2;
    v4 = a2;
    v5 = sub_10000EBEC(a1);
    sub_100010B94(v7);
    return v5;
  }

  result = [objc_opt_self() valueWithUndefinedInContext:a1];
  v5 = result;
  if (result)
  {
    return v5;
  }

  __break(1u);
  return result;
}

id sub_100010AD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSAccountObject();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100010C08(void *a1)
{
  v1 = [a1 ams_privacyAcknowledgement];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_10000477C(0, &qword_100060040, NSNumber_ptr);
  v3 = sub_1000448EC();

  return v3;
}

uint64_t sub_100010CE4()
{
  sub_100004408((v0 + 16));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100010DA8()
{
  v1 = sub_1000441BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100010E80(uint64_t a1)
{
  v3 = *(sub_1000441BC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100010518(a1, v5, v1 + v4, v6);
}

uint64_t sub_100010F20()
{
  sub_100004408((v0 + 16));

  return _swift_deallocObject(v0, 82, 7);
}

id sub_100010F88(void *a1)
{
  v3 = objc_opt_self();
  result = [v3 valueWithNewObjectInContext:a1];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  sub_10000EBEC(a1);
  sub_100044AEC();
  sub_10000F0F4();
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v11 = &type metadata for String;
  v9 = v7;
  v10 = v6;

  v8 = a1;
  result = sub_100028F50(&v9, a1);
  if (!result)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100044AEC();
  if (*(v1 + 64))
  {
    goto LABEL_6;
  }

  result = [v3 valueWithDouble:v8 inContext:{*(v1 + 56), v9, v10}];
  if (result)
  {
    sub_100044AEC();
LABEL_6:
    result = [v3 valueWithBool:*(v1 + 65) inContext:{v8, v9, v10}];
    if (result)
    {
      sub_100044AEC();
      return v5;
    }

    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_100011134(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_100011174(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000111DC()
{
  sub_10000477C(0, &qword_100060748, JSContext_ptr);
  v0 = sub_100044B1C();
  v1 = sub_100044B2C();

  return v1;
}

uint64_t sub_100011244()
{
  sub_1000444AC();
  v0 = sub_10004449C();
  sub_1000446CC();
  sub_1000066BC();
  swift_allocError();
  sub_10004467C();
  if (!v0)
  {
    return swift_willThrow();
  }

  swift_willThrow();
}

const char *sub_1000113A4(void *a1, void *a2, void *a3)
{
  v7 = sub_1000448BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000444AC();
  v11 = sub_10004449C();
  if (v11)
  {
    v12 = v11;
    v38 = v3;
    v34 = a1;
    v35 = v10;
    v31 = v8;
    v32 = v7;
    if (qword_10005FF30 != -1)
    {
      swift_once();
    }

    v13 = sub_100043DBC();
    v14 = sub_1000060A4(v13, qword_100065200);
    sub_100003514(&qword_100061CF0, &unk_1000466A0);
    sub_100043D4C();
    *(swift_allocObject() + 16) = xmmword_100046830;
    Object = type metadata accessor for JSAppQueryObject();
    v36[0] = a2;
    v33 = a2;
    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      sub_10004494C();
    }

    sub_100043D2C();

    sub_100004408(v36);
    sub_100043CFC();
    Object = sub_10000477C(0, &qword_100060800, JSValue_ptr);
    v36[0] = a3;
    v17 = a3;
    sub_100043D0C();
    sub_100006100(v36);
    sub_100043D9C();

    v18 = v17;
    v19 = v38;
    sub_1000029CC(v18);
    if (!v19)
    {
      v22 = v20;
      if (v20)
      {

        sub_10000477C(0, &qword_100060810, ASDAppQuery_ptr);
        v23 = sub_100011850(v22);
        v24 = swift_allocObject();
        v25 = v33;
        v24[2] = v23;
        v24[3] = v25;
        v24[4] = v12;
        v26 = v25;
        v27 = v34;
        v28 = v23;

        v29 = v35;
        sub_10004489C();
        v14 = sub_1000448AC();

        (*(v31 + 8))(v29, v32);
        return v14;
      }

      v14 = sub_1000446CC();
      sub_1000066BC();
      swift_allocError();
      sub_10004467C();
      swift_willThrow();
    }
  }

  else
  {
    v14 = "iTunesStoreLocal";
    sub_1000446CC();
    sub_1000066BC();
    swift_allocError();
    sub_10004467C();
    swift_willThrow();
  }

  return v14;
}

id sub_100011850(uint64_t a1)
{
  isa = sub_100044A0C().super.isa;

  v2 = [swift_getObjCClassFromMetadata() queryForBundleIDs:isa];

  return v2;
}

uint64_t sub_1000118BC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v38 = a6;
  v35 = a5;
  v36 = a3;
  v32 = a1;
  v9 = sub_1000441BC();
  v10 = *(v9 - 8);
  v34 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003514(&qword_100060818, &unk_100046F68);
  v13 = sub_10004482C();
  v41 = sub_100013410;
  v42 = v13;
  v37 = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011BD4;
  v40 = &unk_10005A208;
  v14 = _Block_copy(aBlock);

  [a4 executeQueryWithResultHandler:v14];
  _Block_release(v14);
  v31 = *(v10 + 16);
  v31(v12, a2, v9);
  v15 = *(v10 + 80);
  v16 = v10;
  v17 = v34;
  v18 = swift_allocObject();
  v33 = v18;
  v19 = v35;
  *(v18 + 16) = v35;
  *(v18 + 24) = a1;
  v20 = *(v16 + 32);
  v20(v18 + ((v15 + 32) & ~v15), v12, v9);
  v31(v12, v36, v9);
  v21 = (v15 + 24) & ~v15;
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v19;
  *(v23 + 16) = v19;
  v20(v23 + v21, v12, v9);
  v25 = v32;
  *(v23 + v22) = v32;
  v40 = sub_1000444AC();
  v41 = &protocol witness table for RunLoopWorkerThread;
  aBlock[0] = v38;
  v26 = v24;
  v27 = v25;
  v28 = v26;
  v29 = v27;

  sub_10004478C();

  return sub_100004408(aBlock);
}

uint64_t sub_100011BD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10000477C(0, &unk_100060830, ASDApp_ptr);
    v4 = sub_100044A1C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_100011CF0(uint64_t a1, uint64_t a2)
{
  sub_10000477C(0, &qword_100060748, JSContext_ptr);
  v2 = sub_100044B1C();
  v3 = sub_100044B2C();

  return v3;
}

const char *sub_100011D68(void *a1, void *a2, void *a3)
{
  v7 = sub_1000448BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000444AC();
  v11 = sub_10004449C();
  if (v11)
  {
    v12 = v11;
    v38 = v3;
    v34 = a1;
    v35 = v10;
    v31 = v8;
    v32 = v7;
    if (qword_10005FF30 != -1)
    {
      swift_once();
    }

    v13 = sub_100043DBC();
    v14 = sub_1000060A4(v13, qword_100065200);
    sub_100003514(&qword_100061CF0, &unk_1000466A0);
    sub_100043D4C();
    *(swift_allocObject() + 16) = xmmword_100046830;
    Object = type metadata accessor for JSAppQueryObject();
    v36[0] = a2;
    v33 = a2;
    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      sub_10004494C();
    }

    sub_100043D2C();

    sub_100004408(v36);
    sub_100043CFC();
    Object = sub_10000477C(0, &qword_100060800, JSValue_ptr);
    v36[0] = a3;
    v17 = a3;
    sub_100043D0C();
    sub_100006100(v36);
    sub_100043D9C();

    v18 = v17;
    v19 = v38;
    v20 = sub_1000029CC(v18);
    if (!v19)
    {
      v22 = v20;
      if (v20)
      {

        sub_10000477C(0, &qword_100060810, ASDAppQuery_ptr);
        v23 = sub_10001221C(v22);
        v24 = swift_allocObject();
        v25 = v33;
        v24[2] = v23;
        v24[3] = v25;
        v24[4] = v12;
        v26 = v25;
        v27 = v34;
        v28 = v23;

        v29 = v35;
        sub_10004489C();
        v14 = sub_1000448AC();

        (*(v31 + 8))(v29, v32);
        return v14;
      }

      v14 = sub_1000446CC();
      sub_1000066BC();
      swift_allocError();
      sub_10004467C();
      swift_willThrow();
    }
  }

  else
  {
    v14 = "iTunesStoreLocal";
    sub_1000446CC();
    sub_1000066BC();
    swift_allocError();
    sub_10004467C();
    swift_willThrow();
  }

  return v14;
}

id sub_10001221C(uint64_t a1)
{
  sub_10000477C(0, &qword_100060040, NSNumber_ptr);
  isa = sub_100044A0C().super.isa;

  v2 = [swift_getObjCClassFromMetadata() queryForStoreItemIDs:isa];

  return v2;
}

uint64_t sub_1000122A0(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v38 = a6;
  v35 = a5;
  v36 = a3;
  v32 = a1;
  v9 = sub_1000441BC();
  v10 = *(v9 - 8);
  v34 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003514(&qword_100060818, &unk_100046F68);
  v13 = sub_10004482C();
  v41 = sub_1000130B4;
  v42 = v13;
  v37 = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011BD4;
  v40 = &unk_10005A168;
  v14 = _Block_copy(aBlock);

  [a4 executeQueryWithResultHandler:v14];
  _Block_release(v14);
  v31 = *(v10 + 16);
  v31(v12, a2, v9);
  v15 = *(v10 + 80);
  v16 = v10;
  v17 = v34;
  v18 = swift_allocObject();
  v33 = v18;
  v19 = v35;
  *(v18 + 16) = v35;
  *(v18 + 24) = a1;
  v20 = *(v16 + 32);
  v20(v18 + ((v15 + 32) & ~v15), v12, v9);
  v31(v12, v36, v9);
  v21 = (v15 + 24) & ~v15;
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v19;
  *(v23 + 16) = v19;
  v20(v23 + v21, v12, v9);
  v25 = v32;
  *(v23 + v22) = v32;
  v40 = sub_1000444AC();
  v41 = &protocol witness table for RunLoopWorkerThread;
  aBlock[0] = v38;
  v26 = v24;
  v27 = v25;
  v28 = v26;
  v29 = v27;

  sub_10004478C();

  return sub_100004408(aBlock);
}

void sub_1000125B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    v2 = sub_10004491C();
    swift_getErrorValue();
    sub_100044DDC();
    v3 = sub_10004491C();

    v4 = AMSError();

    sub_1000447CC();
  }

  else if (a1)
  {
    sub_1000447EC();
  }

  else
  {
    v5 = sub_10004491C();
    v6 = AMSError();

    sub_1000447CC();
  }
}

void sub_100012728(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  if (qword_10005FF30 != -1)
  {
    sub_1000061AC(&qword_10005FF30);
  }

  v5 = sub_100043DBC();
  sub_1000060A4(v5, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100013414();
  v6 = sub_100043D4C();
  sub_10000EA9C(v6);
  *(swift_allocObject() + 16) = xmmword_100046830;
  Object = type metadata accessor for JSAppQueryObject();
  v14[0] = a2;
  a2;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v14);
  sub_100043CFC();
  Object = sub_100003514(&qword_100060828, &qword_100046F78);
  v14[0] = v4;

  sub_100043D0C();
  sub_100006100(v14);
  sub_100043D9C();

  v9 = sub_100003678(a3, v4);
  sub_100003514(&qword_100060820, &unk_100046E90);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000465C0;
  *(v10 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v10 + 32) = v9;
  v11 = v9;
  v12 = sub_1000441AC();
}

void sub_100012AE0(uint64_t a1, void *a2, uint64_t a3, objc_class *a4)
{
  v31 = a4;
  v32 = a3;
  sub_1000446CC();
  sub_1000061E8();
  v29 = v8;
  v30 = v7;
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005FF30 != -1)
  {
    sub_1000061AC(&qword_10005FF30);
  }

  v11 = sub_100043DBC();
  v33 = sub_1000060A4(v11, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100013414();
  v12 = sub_100043D4C();
  sub_10000EA9C(v12);
  v27 = 3 * *(v13 + 72);
  v28 = v4;
  v14 = swift_allocObject();
  v26 = xmmword_100046830;
  *(v14 + 16) = xmmword_100046830;
  Object = type metadata accessor for JSAppQueryObject();
  v37 = Object;
  v36[0] = a2;
  v24 = a2;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v36);
  sub_100043CFC();
  swift_getErrorValue();
  v17 = v34;
  v18 = v35;
  v37 = v35;
  v19 = sub_1000049E0(v36);
  (*(*(v18 - 8) + 16))(v19, v17, v18);
  sub_100043D0C();
  sub_100006100(v36);
  sub_100043D8C();

  sub_100003514(&qword_100060820, &unk_100046E90);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000465C0;
  swift_errorRetain();
  sub_100018B54(a1);
  v21.super.isa = v31;
  isa = sub_1000446AC(v21).super.isa;
  (*(v29 + 8))(v10, v30);
  *(v20 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v20 + 32) = isa;
  v23 = sub_1000441AC();
}

id sub_100012FC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSAppQueryObject();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10001301C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSAppQueryObject();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000130D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001310C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013178()
{
  v1 = sub_1000441BC();
  sub_1000061E8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

void sub_100013238(uint64_t a1)
{
  sub_100013414();
  sub_1000441BC();
  sub_100012728(v1, *(v2 + 16), *(v2 + 24));
}

uint64_t sub_1000132A0()
{
  v1 = sub_1000441BC();
  sub_1000061E8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

void sub_10001336C(uint64_t a1)
{
  sub_100013414();
  v3 = sub_1000441BC();
  sub_10000EA9C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  sub_100012AE0(v1, *(v2 + 16), v2 + v8, *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_100013420(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC16UtilityExtension14JSClientObject_clientInfo] = a1;
  v6 = &v5[OBJC_IVAR____TtC16UtilityExtension14JSClientObject_mediaClient];
  *v6 = a2;
  *(v6 + 1) = a3;
  v7 = &v5[OBJC_IVAR____TtC16UtilityExtension14JSClientObject_metricsContext];
  *v7 = a4;
  *(v7 + 1) = a5;
  v9.receiver = v5;
  v9.super_class = type metadata accessor for JSClientObject();
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_10001353C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16UtilityExtension14JSClientObject_mediaClient);

  return v1;
}

id sub_100013618(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_10004491C();

  return v5;
}

uint64_t sub_100013694(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC16UtilityExtension14JSClientObject_clientInfo) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_10004494C();

  return v4;
}

id sub_100013744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSClientObject();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100013800(uint64_t a1)
{
  v2 = sub_10004472C();
  v3 = sub_1000161BC(v2);
  __chkstk_darwin(v3);
  v149 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1000446DC();
  v179 = *(v170 - 8);
  v161 = v179;
  __chkstk_darwin(v170);
  sub_1000161A8();
  sub_1000160E4();
  __chkstk_darwin(v5);
  sub_1000160E4();
  __chkstk_darwin(v6);
  v139 = (&v139 - v7);
  v8 = sub_100003514(&qword_100060488, &unk_100046970);
  v9 = sub_1000161BC(v8);
  __chkstk_darwin(v9);
  v154 = &v139 - v10;
  v11 = sub_100043B7C();
  sub_1000061E8();
  v158 = v12;
  __chkstk_darwin(v13);
  v156 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004461C();
  sub_1000061E8();
  v157 = v16;
  __chkstk_darwin(v17);
  sub_1000161A8();
  sub_1000160E4();
  __chkstk_darwin(v18);
  v167 = &v139 - v19;
  type metadata accessor for DynamicAccountsStore();
  sub_1000443CC();
  sub_10004462C();
  v20 = v177[0];
  v143 = DynamicAccountsStore.account.getter();
  v168 = v15;
  sub_10004462C();
  v21 = sub_10000477C(0, &unk_100061F00, AMSProcessInfo_ptr);
  sub_100016040(v21);
  v162 = v177[0];
  sub_100016040(&type metadata for JSSourcePackage);
  v22 = sub_10000477C(0, &qword_100060490, JSVirtualMachine_ptr);
  sub_100016040(v22);
  v147 = v173;
  sub_100016040(&type metadata for MediaClient);
  v165 = v173;
  v169 = v174;
  sub_100016040(&type metadata for MetricsContext);
  LODWORD(v145) = v173;
  v140 = v174;
  v159 = v11;
  sub_10004462C();
  v23 = type metadata accessor for URLSessionHandler();
  v151 = a1;
  sub_100016040(v23);
  v142 = v173;
  sub_100003514(&qword_1000609B8, &qword_100046FF8);
  v24 = *(v179 + 72);
  v25 = v161;
  v26 = (*(v161 + 80) + 32) & ~*(v161 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100046F90;
  v160 = v26;
  v146 = v27;
  v28 = v27 + v26;
  v164 = (v27 + v26);
  sub_10000ABA0(v177, v27 + v26);
  v29 = *(v25 + 104);
  v30 = v170;
  (v29)(v28, enum case for JSStack.Prerequisite.source(_:), v170);
  v31 = (v28 + v24);
  v32 = objc_allocWithZone(type metadata accessor for JSAccountObject());
  v166 = v20;

  v33 = v162;
  v34 = sub_10000F5EC(v20, v33);
  *v31 = 0x746E756F636361;
  v31[1] = 0xE700000000000000;
  v31[2] = v34;
  v35 = v31;
  v36 = enum case for JSStack.Prerequisite.globalObject(_:);
  LODWORD(v162) = enum case for JSStack.Prerequisite.globalObject(_:);
  v163 = v25 + 104;
  v29(v35);
  v37 = v164;
  v38 = [objc_allocWithZone(type metadata accessor for JSAppQueryObject()) init];
  v39 = sub_10001605C(v38, 0x7972657551707061);
  (v29)(v39, v36, v30);
  v40 = &v37[3 * v24];
  v41 = v37;
  v42 = objc_allocWithZone(type metadata accessor for JSClientObject());
  v43 = v33;
  v141 = v43;
  v44 = v169;

  v45 = sub_100013420(v43, v165, v44, v145, v140);
  *v40 = 0x746E65696C63;
  *(v40 + 1) = 0xE600000000000000;
  *(v40 + 2) = v45;
  v46 = v162;
  (v29)(v40, v162, v30);
  v47 = &v41[4 * v24];
  v48 = [objc_allocWithZone(type metadata accessor for JSDeviceObject()) init];
  *v47 = 0x656369766564;
  *(v47 + 1) = 0xE600000000000000;
  *(v47 + 2) = v48;
  (v29)(v47, v46, v30);
  v49 = &v41[5 * v24];
  v50 = [objc_allocWithZone(type metadata accessor for JSFeatureFlagObject()) init];
  *v49 = 0x65727574616566;
  *(v49 + 1) = 0xE700000000000000;
  *(v49 + 2) = v50;
  (v29)(v49, v46, v30);
  v51 = v177[5];
  v52 = type metadata accessor for JSLocalizationObject();
  v53 = objc_allocWithZone(v52);
  *&v53[OBJC_IVAR____TtC16UtilityExtension20JSLocalizationObject_localizations] = v51;
  v176.receiver = v53;
  v176.super_class = v52;

  v54 = objc_msgSendSuper2(&v176, "init");
  v55 = sub_10001605C(v54, 0x617A696C61636F6CLL);
  (v29)(v55, v46, v30);
  v56 = [objc_allocWithZone(type metadata accessor for JSLogObject()) init];
  v57 = sub_10001605C(v56, 6778732);
  (v29)(v57, v46, v30);
  v153 = v29;
  v58 = &v41[8 * v24];
  v179 = v24;
  v59 = v154;
  v60 = v159;
  (*(v158 + 16))(v154, v156, v159);
  sub_10000464C(v59, 0, 1, v60);
  v61 = objc_allocWithZone(type metadata accessor for JSServiceObject());
  v62 = sub_100028C68(v59);
  *v58 = 0x65636976726573;
  *(v58 + 1) = 0xE700000000000000;
  *(v58 + 2) = v62;
  (v29)(v58, v46, v30);
  v63 = &v41[9 * v24];
  v64 = *(v157 + 16);
  v154 = (v157 + 16);
  v65 = v144;
  v66 = v167;
  v67 = v168;
  v64(v144, v167, v168);
  v140 = v64;
  v68 = objc_allocWithZone(type metadata accessor for JSMarketingObject(0));
  v69 = v143;
  v145 = v143;
  v70 = v141;
  v71 = v169;

  v72 = v165;
  v73 = sub_10001F144(v69, v65, v70, v165, v71);
  *v63 = 0x6E6974656B72616DLL;
  *(v63 + 1) = 0xE900000000000067;
  *(v63 + 2) = v73;
  v153(v63, v162, v170);
  v74 = &v164[10 * v179];
  v64(v65, v66, v67);
  v75 = objc_allocWithZone(type metadata accessor for JSMediaAPIObject(0));
  v76 = v166;
  swift_retain_n();
  v77 = v70;
  v143 = v77;
  v78 = v169;

  v79 = v142;
  v80 = sub_100020F8C(v76, v65, v77, v72, v78, v79);
  *v74 = 0x495041616964656DLL;
  *(v74 + 1) = 0xE800000000000000;
  *(v74 + 2) = v80;
  v81 = v74;
  v82 = v162;
  v83 = v170;
  v84 = v153;
  v153(v81, v162, v170);
  v85 = v164;
  v86 = v179;
  v87 = [objc_allocWithZone(type metadata accessor for JSEngagementObject()) init];
  v88 = sub_10001605C(v87, 0x656D656761676E65);
  v84(v88, v82, v83);
  v89 = &v85[12 * v86];
  v90 = v82;
  v140(v65, v167, v168);
  v91 = objc_allocWithZone(type metadata accessor for JSNetworkObject(0));
  v92 = v143;
  v93 = v79;
  v164 = v92;
  v94 = v169;
  v169 = v93;
  v95 = sub_100023E44(v166, v65, v92, v165, v94, v93);
  *v89 = 0x6B726F7774656ELL;
  *(v89 + 1) = 0xE700000000000000;
  *(v89 + 2) = v95;
  v96 = v89;
  v97 = v170;
  v98 = v84;
  v99 = v90;
  v84(v96, v90, v170);
  sub_100015BD4(v178, &v171);
  if (v172)
  {
    sub_10000DFBC(&v171, &v173);
    sub_100004454(&v173, v175);
    v100 = sub_1000448CC();
    v101 = v139;
    *v139 = 0x657A696C61636F6CLL;
    v101[1] = 0xE900000000000072;
    v101[2] = v100;
    v84(v101, v90, v97);
    v102 = v146;
    v104 = v146[2];
    v103 = v146[3];
    if (v104 >= v103 >> 1)
    {
      v135 = sub_1000161DC(v103);
      v102 = sub_100015D94(v135, v136, v137, v138);
    }

    v105 = v148;
    v102[2] = v104 + 1;
    v106 = v102;
    (*(v161 + 32))(v102 + v160 + v104 * v179, v101, v97);
    sub_100004408(&v173);
  }

  else
  {
    sub_10000470C(&v171, &qword_1000606A8, &unk_100047000);
    v105 = v148;
    v106 = v146;
  }

  v107 = [objc_allocWithZone(type metadata accessor for JSExternalAuthenticatorObject()) init];
  *v105 = 0xD000000000000015;
  v105[1] = 0x80000001000496B0;
  v105[2] = v107;
  v98(v105, v99, v97);
  v109 = v106[2];
  v108 = v106[3];
  if (v109 >= v108 >> 1)
  {
    v132 = sub_1000161DC(v108);
    v106 = sub_100015D94(v132, v133, v134, v106);
  }

  v106[2] = v109 + 1;
  sub_1000161C8();
  v112 = *(v161 + 32);
  v112(v110 + v109 * v111, v105, v97);
  v113 = [objc_allocWithZone(type metadata accessor for JSSessionAuthenticatorObject()) init];
  v114 = v155;
  *v155 = 0xD000000000000014;
  v114[1] = 0x80000001000496D0;
  v114[2] = v113;
  v98(v114, v99, v97);
  v116 = v106[2];
  v115 = v106[3];
  if (v116 >= v115 >> 1)
  {
    v106 = sub_100015D94((v115 > 1), v116 + 1, 1, v106);
  }

  v106[2] = v116 + 1;
  sub_1000161C8();
  v112(v117 + v116 * v118, v155, v97);
  sub_10004475C();

  v119 = v147;
  sub_10004471C();
  v120 = v150;
  v121 = sub_10004473C();
  if (v120)
  {

    v122 = sub_10001608C();
    v123(v122);
    sub_100015C44(v177);
    v124 = sub_10001606C();
    v125(v124);
    type metadata accessor for JSDataProvider();
    v126 = v152;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v126 = v152;
    *(v152 + 16) = v121;

    sub_1000446EC();

    if (deviceIsRunningInternalBuild())
    {
      sub_1000446FC();
    }

    v127 = sub_10001608C();
    v128(v127);
    sub_100015C44(v177);
    v129 = sub_10001606C();
    v130(v129);
  }

  return v126;
}

void sub_1000147B8(void *a1, uint64_t a2)
{
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v4 = sub_100043DBC();
  sub_1000060A4(v4, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v9[3] = type metadata accessor for JSDataProvider();
  v9[0] = a2;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v9);
  sub_100043CFC();
  sub_100043D9C();

  v7 = [a1 virtualMachine];
  if (v7)
  {
    v8 = v7;
    [v7 shrinkFootprintWhenIdle];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000149A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[74] = a4;
  v4[73] = a3;
  v4[72] = a2;
  v4[71] = a1;
  v5 = sub_100003514(&qword_100060990, &unk_100046FC8);
  sub_1000161BC(v5);
  v4[75] = sub_100016134();
  v6 = sub_1000446CC();
  v4[76] = v6;
  sub_10000EA9C(v6);
  v4[77] = v7;
  v4[78] = sub_100016134();
  v8 = sub_100003514(&qword_100060538, &qword_100046D20);
  sub_1000161BC(v8);
  v4[79] = sub_100016134();
  v9 = sub_10004426C();
  v4[80] = v9;
  sub_10000EA9C(v9);
  v4[81] = v10;
  v4[82] = sub_100016134();
  v11 = sub_100003514(&qword_100060998, &qword_100046FD8);
  v4[83] = v11;
  sub_10000EA9C(v11);
  v4[84] = v12;
  v4[85] = sub_100016134();
  v13 = sub_10004420C();
  v4[86] = v13;
  sub_10000EA9C(v13);
  v4[87] = v14;
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v15 = sub_1000443FC();
  v4[90] = v15;
  sub_10000EA9C(v15);
  v4[91] = v16;
  v4[92] = sub_100016134();
  v17 = sub_10004435C();
  v4[93] = v17;
  sub_10000EA9C(v17);
  v4[94] = v18;
  v4[95] = sub_100016134();

  return _swift_task_switch(sub_100014C7C, 0, 0);
}

uint64_t sub_100014C7C()
{
  v1 = v0[74];
  v2 = v0[72];
  v0[51] = type metadata accessor for JSServiceRequest(0);
  v0[52] = sub_100015B8C(&qword_1000609A0, type metadata accessor for JSServiceRequest, &protocol conformance descriptor for JSServiceRequest);
  v3 = sub_1000049E0(v0 + 48);
  sub_100015B28(v2, v3);
  v0[96] = *(v1 + 16);
  v4 = v0[51];
  v5 = v0[52];
  v6 = sub_100004454(v0 + 48, v4);
  v0[45] = v4;
  v0[46] = *(v5 + 8);
  v0[47] = *(v5 + 16);
  v7 = sub_1000049E0(v0 + 42);
  (*(*(v4 - 8) + 16))(v7, v6, v4);
  sub_10004440C();
  v8 = swift_task_alloc();
  v0[97] = v8;
  *v8 = v0;
  v8[1] = sub_100014E44;
  v9 = v0[95];
  v10 = v0[92];
  v11 = v0[90];
  v12 = v0[73];

  return JSStack.dispatch<A>(_:objectGraph:)(v9, v10, v12, v11, &protocol witness table for JSRequestIntent);
}

uint64_t sub_100014E44()
{
  v2 = *v1;
  *(*v1 + 784) = v0;

  (*(v2[91] + 8))(v2[92], v2[90]);
  if (v0)
  {
    v3 = sub_100015730;
  }

  else
  {
    v3 = sub_100014FD8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100014FD8()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  v68 = *(v0 + 688);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = *(v0 + 664);
  v7 = *(v0 + 632);
  sub_10004434C();
  sub_1000442AC();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 16))(v2, v1, v68);
  sub_10004425C();
  sub_1000441CC();
  v8 = sub_10004437C();
  v9 = sub_1000046E4(v7, 1, v8);
  v10 = *(v0 + 632);
  if (v9 == 1)
  {
    sub_10000470C(*(v0 + 632), &qword_100060538, &qword_100046D20);
LABEL_6:
    v27 = [objc_allocWithZone(NSError) init];
    goto LABEL_7;
  }

  v11 = sub_10004436C();
  (*(*(v8 - 8) + 8))(v10, v8);
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = objc_opt_self();
  isa = sub_1000448DC().super.isa;

  *(v0 + 560) = 0;
  v14 = [v12 dataWithJSONObject:isa options:0 error:v0 + 560];

  v15 = *(v0 + 560);
  if (v14)
  {
    v66 = *(v0 + 760);
    v16 = *(v0 + 752);
    v64 = *(v0 + 712);
    v65 = *(v0 + 744);
    v63 = *(v0 + 704);
    v17 = *(v0 + 696);
    v18 = *(v0 + 688);
    v19 = *(v0 + 656);
    v20 = *(v0 + 648);
    v21 = *(v0 + 640);
    v22 = *(v0 + 568);
    v62 = sub_100043BAC();
    v24 = v23;

    (*(v20 + 8))(v19, v21);
    v25 = *(v17 + 8);
    v25(v63, v18);
    *v22 = v62;
    v22[1] = v24;
    v25(v64, v18);
    (*(v16 + 8))(v66, v65);
    sub_10004470C();
    sub_100004408((v0 + 384));

    v26 = *(v0 + 8);
    goto LABEL_23;
  }

  v61 = v15;
  v27 = sub_100043AAC();

LABEL_7:
  swift_willThrow();
  v28 = *(v0 + 760);
  v29 = *(v0 + 752);
  v30 = *(v0 + 744);
  v31 = *(v0 + 712);
  v32 = *(v0 + 704);
  v33 = *(v0 + 696);
  v34 = *(v0 + 688);
  (*(*(v0 + 648) + 8))(*(v0 + 656), *(v0 + 640));
  v35 = *(v33 + 8);
  v35(v32, v34);
  v35(v31, v34);
  (*(v29 + 8))(v28, v30);
  v36 = *(v0 + 608);
  *(v0 + 552) = v27;
  swift_errorRetain();
  v37 = sub_100003514(&qword_1000609A8, &qword_100046FE0);
  if (sub_100016170(v37))
  {
    v38 = *(v0 + 624);
    v39 = *(v0 + 616);
    sub_1000160F4();
    v40 = sub_100016194();
    v41(v40);
    sub_100015FFC();
    v44 = sub_100015B8C(v42, v43, &protocol conformance descriptor for JSError);
    sub_1000161FC(v44);
    (*(v39 + 16))(v45, v38, v31);
    v67 = sub_100043A9C();
    sub_100003514(&qword_1000609B0, &unk_100046FE8);
    inited = swift_initStackObject();
    sub_1000160C8(inited, xmmword_100046690);
    sub_100044BFC();
    v47 = sub_10004466C();
    if (v48)
    {
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = 0x6E776F6E6B6E75;
      *(inited + 80) = 0xE700000000000000;
    }

    else
    {
      *(v0 + 448) = &type metadata for Int;
      *(v0 + 424) = v47;
      sub_10000476C((v0 + 424), (inited + 72));
    }

    sub_10001611C();
    sub_100044BFC();
    v49 = sub_10004465C();
    if (v50)
    {
      *(inited + 168) = &type metadata for String;
      *(inited + 144) = 0x6E776F6E6B6E75;
      *(inited + 152) = 0xE700000000000000;
    }

    else
    {
      *(v0 + 480) = &type metadata for Int;
      *(v0 + 456) = v49;
      sub_10000476C((v0 + 456), (inited + 144));
    }

    v51 = *(v0 + 624);
    v52 = *(v0 + 616);
    sub_1000160AC();
    *(v0 + 528) = 0xE700000000000000;
    sub_10001621C();
    v53 = sub_10004468C();
    sub_100015FB4(v53, v54);
    v55 = sub_1000446BC();
    *(inited + 312) = &type metadata for String;
    if (v56)
    {
      v57 = v55;
    }

    else
    {
      v57 = 0x6E776F6E6B6E75;
    }

    if (v56)
    {
      v58 = v56;
    }

    else
    {
      v58 = 0xE700000000000000;
    }

    *(inited + 288) = v57;
    *(inited + 296) = v58;
    sub_1000161F0();
    sub_1000448FC();
    sub_1000161F0();
    v59 = sub_1000448DC().super.isa;

    [v67 ams_errorByAddingUserInfo:v59];

    swift_willThrow();

    (*(v52 + 8))(v51, &type metadata for String);
  }

  else
  {
    sub_10001614C();
    sub_10000470C(v36, &qword_100060990, &unk_100046FC8);
    swift_willThrow();
  }

  sub_100016014();
  sub_10004470C();
  sub_100004408((v0 + 384));

  v26 = *(v0 + 8);
LABEL_23:

  return v26();
}

uint64_t sub_100015730()
{
  v2 = *(v0 + 608);
  *(v0 + 552) = *(v0 + 784);
  swift_errorRetain();
  v3 = sub_100003514(&qword_1000609A8, &qword_100046FE0);
  if (sub_100016170(v3))
  {
    v4 = *(v0 + 624);
    v5 = *(v0 + 616);
    sub_1000160F4();
    v6 = sub_100016194();
    v7(v6);
    sub_100015FFC();
    v10 = sub_100015B8C(v8, v9, &protocol conformance descriptor for JSError);
    sub_1000161FC(v10);
    (*(v5 + 16))(v11, v4, v1);
    v12 = sub_100043A9C();
    sub_100003514(&qword_1000609B0, &unk_100046FE8);
    inited = swift_initStackObject();
    sub_1000160C8(inited, xmmword_100046690);
    sub_100044BFC();
    v14 = sub_10004466C();
    if (v15)
    {
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = 0x6E776F6E6B6E75;
      *(inited + 80) = 0xE700000000000000;
    }

    else
    {
      *(v0 + 448) = &type metadata for Int;
      *(v0 + 424) = v14;
      sub_10000476C((v0 + 424), (inited + 72));
    }

    sub_10001611C();
    sub_100044BFC();
    v16 = sub_10004465C();
    if (v17)
    {
      *(inited + 168) = &type metadata for String;
      *(inited + 144) = 0x6E776F6E6B6E75;
      *(inited + 152) = 0xE700000000000000;
    }

    else
    {
      *(v0 + 480) = &type metadata for Int;
      *(v0 + 456) = v16;
      sub_10000476C((v0 + 456), (inited + 144));
    }

    v18 = *(v0 + 624);
    v19 = *(v0 + 616);
    sub_1000160AC();
    *(v0 + 528) = 0xE700000000000000;
    sub_10001621C();
    v20 = sub_10004468C();
    sub_100015FB4(v20, v21);
    v22 = sub_1000446BC();
    *(inited + 312) = &type metadata for String;
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0x6E776F6E6B6E75;
    }

    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xE700000000000000;
    }

    *(inited + 288) = v24;
    *(inited + 296) = v25;
    sub_1000161F0();
    sub_1000448FC();
    sub_1000161F0();
    isa = sub_1000448DC().super.isa;

    [v12 ams_errorByAddingUserInfo:isa];

    swift_willThrow();

    (*(v19 + 8))(v18, &type metadata for String);
  }

  else
  {
    sub_10001614C();
    sub_10000470C(v2, &qword_100060990, &unk_100046FC8);
    swift_willThrow();
  }

  sub_100016014();
  sub_10004470C();
  sub_100004408((v0 + 384));

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100015ACC()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100015B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSServiceRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015B8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100015BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003514(&qword_1000606A8, &unk_100047000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100015CA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

  sub_100003514(a3, a4);
  v8 = a5(0);
  sub_10000EA9C(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100015D94(void *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_100015CA0(v9, a2, &qword_1000609B8, &qword_100046FF8, &type metadata accessor for JSStack.Prerequisite);
  v11 = *(sub_1000446DC() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_100003358(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100015EA4(void *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_100015CA0(v9, a2, &qword_1000609C0, &unk_100047010, type metadata accessor for JSSourceInfo);
  v11 = *(type metadata accessor for JSSourceInfo(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_100003370(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100015FB4(uint64_t a1, uint64_t a2)
{
  v3[30] = v4;
  v3[27] = a1;
  v3[28] = a2;
  *(v2 + 536) = 0x5255656372756F73;
  *(v2 + 544) = 0xE90000000000004CLL;

  return sub_100044BFC();
}

uint64_t sub_100016040(uint64_t a1)
{

  return sub_10004462C();
}

void *sub_10001605C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *v3 = a2;
  v3[1] = v2;
  v3[2] = a1;
  return v3;
}

__n128 *sub_1000160C8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 + 488) = 0x6E6D756C6F63;
  *(v2 + 496) = 0xE600000000000000;
  return result;
}

uint64_t sub_1000160F4()
{
  v2 = *(v0 + 600);
  v3 = *(v0 + 608);

  return sub_10000464C(v2, 0, 1, v3);
}

uint64_t sub_100016134()
{

  return swift_task_alloc();
}

uint64_t sub_10001614C()
{
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);

  return sub_10000464C(v3, 1, 1, v2);
}

uint64_t sub_100016170(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_1000161FC(uint64_t a1)
{

  return swift_allocError();
}

void *sub_10001621C()
{

  return sub_100044BFC();
}

uint64_t sub_100016254()
{
  if (deviceIsRunningInternalBuild())
  {
    return 0x6C616E7265746E69;
  }

  if (deviceIsRunningSeedBuild())
  {
    return 1684366707;
  }

  return 0x72656D6F74737563;
}

id sub_1000162D8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_10004491C();

  return v5;
}

uint64_t sub_100016348()
{
  v0 = objc_opt_self();
  v1 = sub_100016620(v0);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100016420()
{
  v0 = objc_opt_self();
  result = sub_10000296C(v0, &selRef_modelPartNumber);
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000164A4(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = sub_10004494C();

  return v2;
}

uint64_t sub_10001651C()
{
  v0 = objc_opt_self();
  result = sub_10000296C(v0, &selRef_serialNumber);
  if (!v2)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

id sub_100016570(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSDeviceObject();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1000165C8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSDeviceObject();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100016620(void *a1)
{
  v1 = [a1 carrierNames];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100044A1C();

  return v3;
}

const char *sub_100016690(void *a1, void *a2, void *a3)
{
  v7 = sub_1000448BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000444AC();
  v12 = sub_10004449C();
  if (v12)
  {
    v13 = v12;
    v14 = sub_100006530(a2);
    if (v3)
    {
    }

    else
    {
      v29 = v14;
      v32 = a1;
      v25 = v8;
      v26 = v7;
      if (qword_10005FF30 != -1)
      {
        swift_once();
      }

      v15 = sub_100043DBC();
      v28 = sub_1000060A4(v15, qword_100065200);
      sub_100003514(&qword_100061CF0, &unk_1000466A0);
      sub_100043D4C();
      *(swift_allocObject() + 16) = xmmword_100046830;
      v31 = type metadata accessor for JSEngagementObject();
      v30[0] = a3;
      v27 = a3;
      v16 = AMSLogKey();
      if (v16)
      {
        v17 = v16;
        sub_10004494C();
      }

      sub_100043D2C();

      sub_100004408(v30);
      sub_100043CFC();
      v31 = &type metadata for EngagementEvent;
      v18 = v29;
      v30[0] = v29;

      sub_100043D0C();
      sub_100006100(v30);
      sub_100043D9C();

      v19 = swift_allocObject();
      v20 = v27;
      v19[2] = v18;
      v19[3] = v20;
      v19[4] = v13;
      v21 = v20;
      v22 = v32;

      sub_10004489C();
      v11 = sub_1000448AC();

      (*(v25 + 8))(v10, v26);
    }
  }

  else
  {
    v11 = "iTunesStoreLocal";
    sub_1000446CC();
    sub_1000066BC();
    swift_allocError();
    sub_10004467C();
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_100016A60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v39 = a6;
  v35 = a5;
  v36 = a3;
  v33 = a2;
  v31 = a1;
  v7 = sub_1000441BC();
  v8 = *(v7 - 8);
  v32 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(AMSEngagement) init];
  v38 = v11;
  isa = sub_1000448DC().super.isa;
  v13 = [v11 enqueueData:isa];

  sub_100003514(&qword_100060A20, "Vg");
  v37 = v13;
  v34 = sub_10004481C();
  v30 = *(v8 + 16);
  v30(v10, v33, v7);
  v14 = *(v8 + 80);
  v15 = v8;
  v16 = v32;
  v17 = swift_allocObject();
  v33 = v17;
  v18 = v35;
  *(v17 + 16) = v35;
  *(v17 + 24) = a1;
  v19 = *(v15 + 32);
  v29 = v10;
  v19(v17 + ((v14 + 32) & ~v14), v10, v7);
  v30(v10, v36, v7);
  v20 = (v14 + 24) & ~v14;
  v21 = swift_allocObject();
  v22 = v18;
  *(v21 + 16) = v18;
  v19(v21 + v20, v29, v7);
  v23 = v31;
  *(v21 + ((v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
  v40[3] = sub_1000444AC();
  v40[4] = &protocol witness table for RunLoopWorkerThread;
  v40[0] = v39;
  v24 = v22;
  v25 = v23;
  v26 = v24;
  v27 = v25;

  sub_10004478C();

  return sub_100004408(v40);
}

void sub_100016D64(void **a1, void *a2, void *a3)
{
  v12 = *a1;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v4 = sub_100043DBC();
  sub_1000060A4(v4, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v14[3] = type metadata accessor for JSEngagementObject();
  v14[0] = a2;
  a2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v14);
  sub_100043CFC();
  sub_100043D9C();

  v7 = v12;
  v8 = sub_1000061FC(a3, v7);
  sub_100003514(&qword_100060820, &unk_100046E90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000465C0;
  *(v9 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v9 + 32) = v8;
  v10 = v8;
  v11 = sub_1000441AC();
}

void sub_100017118(uint64_t a1, void *a2, uint64_t a3, objc_class *a4)
{
  v28 = a4;
  v29 = a3;
  v6 = sub_1000446CC();
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v9 = sub_100043DBC();
  v30 = sub_1000060A4(v9, qword_100065200);
  v10 = sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v24 = 3 * *(*(sub_100043D4C() - 8) + 72);
  v25 = v10;
  v11 = swift_allocObject();
  v23 = xmmword_100046830;
  *(v11 + 16) = xmmword_100046830;
  v22 = type metadata accessor for JSEngagementObject();
  v34 = v22;
  v33[0] = a2;
  v21 = a2;
  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v33);
  sub_100043CFC();
  swift_getErrorValue();
  v14 = v31;
  v15 = v32;
  v34 = v32;
  v16 = sub_1000049E0(v33);
  (*(*(v15 - 8) + 16))(v16, v14, v15);
  sub_100043D0C();
  sub_100006100(v33);
  sub_100043D8C();

  sub_100003514(&qword_100060820, &unk_100046E90);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000465C0;
  swift_errorRetain();
  sub_100018B54(a1);
  v18.super.isa = v28;
  isa = sub_1000446AC(v18).super.isa;
  (*(v26 + 8))(v8, v27);
  *(v17 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v17 + 32) = isa;
  v20 = sub_1000441AC();
}

uint64_t sub_100017640(uint64_t a1, uint64_t a2)
{
  sub_10000477C(0, &qword_100060748, JSContext_ptr);
  v2 = sub_100044B1C();
  v3 = sub_100044B2C();

  return v3;
}

const char *sub_1000176B8(void *a1, void *a2, void *a3)
{
  v7 = sub_1000448BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000444AC();
  v12 = sub_10004449C();
  if (v12)
  {
    v13 = v12;
    v14 = sub_100006724(a2);
    if (v3)
    {
    }

    else
    {
      v33 = v16;
      v34 = v15;
      v35 = v14;
      v38 = a1;
      v29 = v8;
      v30 = v7;
      if (qword_10005FF30 != -1)
      {
        swift_once();
      }

      v17 = sub_100043DBC();
      v32 = sub_1000060A4(v17, qword_100065200);
      sub_100003514(&qword_100061CF0, &unk_1000466A0);
      sub_100043D4C();
      *(swift_allocObject() + 16) = xmmword_100046830;
      v37 = type metadata accessor for JSEngagementObject();
      v36[0] = a3;
      v31 = a3;
      v18 = AMSLogKey();
      if (v18)
      {
        v19 = v18;
        sub_10004494C();
      }

      sub_100043D2C();

      sub_100004408(v36);
      sub_100043CFC();
      v21 = v34;
      v20 = v35;
      v36[0] = v35;
      v36[1] = v34;
      v22 = v33;
      v36[2] = v33;
      v37 = &type metadata for EngagementMessageEvent;

      sub_100043D0C();
      sub_100006100(v36);
      sub_100043D9C();

      v23 = swift_allocObject();
      v23[2] = v20;
      v23[3] = v21;
      v24 = v31;
      v23[4] = v22;
      v23[5] = v24;
      v23[6] = v13;
      v25 = v24;
      v26 = v38;

      sub_10004489C();
      v11 = sub_1000448AC();

      (*(v29 + 8))(v10, v30);
    }
  }

  else
  {
    v11 = "iTunesStoreLocal";
    sub_1000446CC();
    sub_1000066BC();
    swift_allocError();
    sub_10004467C();
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_100017A9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v42 = a8;
  v36 = a2;
  v37 = a7;
  v39 = a3;
  v44 = a1;
  v11 = sub_1000441BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v35 = v13;
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(AMSEngagement) init];
  v41 = v15;
  v16 = sub_100006B30(a4, a5, a6);
  v17 = [v15 enqueueMessageEvent:v16];

  sub_100003514(&qword_100060A18, "8g");
  v40 = v17;
  v38 = sub_10004481C();
  v18 = *(v12 + 16);
  v18(v14, v36, v11);
  v19 = *(v12 + 80);
  v20 = swift_allocObject();
  v36 = v20;
  v21 = v37;
  v22 = v44;
  *(v20 + 16) = v37;
  *(v20 + 24) = v22;
  v23 = *(v12 + 32);
  v34 = v14;
  v23(v20 + ((v19 + 32) & ~v19), v14, v11);
  v18(v14, v39, v11);
  v24 = (v19 + 24) & ~v19;
  v25 = (v35 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  v23(v26 + v24, v34, v11);
  v27 = v44;
  *(v26 + v25) = v44;
  v43[3] = sub_1000444AC();
  v43[4] = &protocol witness table for RunLoopWorkerThread;
  v43[0] = v42;
  v28 = v21;
  v29 = v27;
  v30 = v28;
  v31 = v29;

  sub_10004478C();

  return sub_100004408(v43);
}

void sub_100017D88(void **a1, void *a2, void *a3)
{
  v12 = *a1;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v4 = sub_100043DBC();
  sub_1000060A4(v4, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v14[3] = type metadata accessor for JSEngagementObject();
  v14[0] = a2;
  a2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v14);
  sub_100043CFC();
  sub_100043D9C();

  v7 = v12;
  v8 = sub_100007944(a3, v7);
  sub_100003514(&qword_100060820, &unk_100046E90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000465C0;
  *(v9 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v9 + 32) = v8;
  v10 = v8;
  v11 = sub_1000441AC();
}

void sub_100018138(uint64_t a1, void *a2, uint64_t a3, objc_class *a4)
{
  v28 = a4;
  v29 = a3;
  v6 = sub_1000446CC();
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v9 = sub_100043DBC();
  v30 = sub_1000060A4(v9, qword_100065200);
  v10 = sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v24 = 3 * *(*(sub_100043D4C() - 8) + 72);
  v25 = v10;
  v11 = swift_allocObject();
  v23 = xmmword_100046830;
  *(v11 + 16) = xmmword_100046830;
  v22 = type metadata accessor for JSEngagementObject();
  v34 = v22;
  v33[0] = a2;
  v21 = a2;
  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v33);
  sub_100043CFC();
  swift_getErrorValue();
  v14 = v31;
  v15 = v32;
  v34 = v32;
  v16 = sub_1000049E0(v33);
  (*(*(v15 - 8) + 16))(v16, v14, v15);
  sub_100043D0C();
  sub_100006100(v33);
  sub_100043D8C();

  sub_100003514(&qword_100060820, &unk_100046E90);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000465C0;
  swift_errorRetain();
  sub_100018B54(a1);
  v18.super.isa = v28;
  isa = sub_1000446AC(v18).super.isa;
  (*(v26 + 8))(v8, v27);
  *(v17 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v17 + 32) = isa;
  v20 = sub_1000441AC();
}

id sub_100018648(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSEngagementObject();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1000186A0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSEngagementObject();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100018714()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000187D4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100018840()
{
  sub_1000441BC();
  sub_100018B3C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v1 + v5, v0);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_100018914(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1000441BC() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_1000189A0()
{
  sub_1000441BC();
  sub_100018B3C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v0);

  return _swift_deallocObject(v1, v7 + 8, v4 | 7);
}

uint64_t sub_100018A80(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_1000441BC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v6, v2 + v5, v7);
}

uint64_t sub_100018B54(uint64_t a1)
{
  v2 = sub_100003514(&qword_100060990, &unk_100046FC8);
  __chkstk_darwin(v2 - 8);
  v4 = v12 - v3;
  v5 = sub_1000446CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[7] = a1;
  swift_errorRetain();
  sub_100003514(&qword_1000609A8, &qword_100046FE0);
  if (swift_dynamicCast())
  {
    sub_10000464C(v4, 0, 1, v5);
    (*(v6 + 32))(v8, v4, v5);
    v9 = sub_10004468C();
    v12[1] = v10;
    v12[2] = v9;
    v12[0] = sub_10004465C();
    sub_10004466C();
    sub_1000446BC();
    sub_10004463C();
    sub_10004467C();

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_10000464C(v4, 1, 1, v5);
    sub_100018DBC(v4);
    swift_getErrorValue();
    sub_100044DDC();
    sub_10004467C();
  }
}

uint64_t sub_100018DBC(uint64_t a1)
{
  v2 = sub_100003514(&qword_100060990, &unk_100046FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_100018E5C(char a1)
{
  sub_100044E3C();
  sub_100044E4C(a1 & 1);
  return sub_100044E5C();
}

uint64_t sub_100018F28()
{
  sub_100043C4C();
  sub_100004454(v2, v2[3]);
  v0 = sub_100043C5C();
  sub_100004408(v2);
  return v0;
}

uint64_t sub_100018FAC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v36 = a3;
  v37 = a5;
  v38 = a1;
  v7 = sub_1000441BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = sub_100003514(&qword_100060A50, &unk_100047080);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v35 = &v33 - v14;
  v16 = sub_100044A5C();
  sub_10000464C(v15, 1, 1, v16);
  v17 = *(v8 + 16);
  v33 = v7;
  v17(v12, a2, v7);
  v17(&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v7);
  v18 = *(v8 + 80);
  v19 = (v18 + 48) & ~v18;
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v18 + v20 + 8) & ~v18;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a4;
  v23 = a4;
  v24 = v37;
  *(v22 + 5) = v37;
  v25 = *(v8 + 32);
  v26 = &v22[v19];
  v27 = v33;
  v25(v26, v12, v33);
  v28 = v38;
  *&v22[v20] = v38;
  v25(&v22[v21], v34, v27);
  v29 = v23;
  v30 = v24;
  v31 = v28;
  sub_10002AFB8(0, 0, v35, &unk_1000470E8, v22);
}

uint64_t sub_100019214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  v9 = sub_1000446CC();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  type metadata accessor for ExternalAuthenticatorBillingPlanResponse(0);
  v8[24] = swift_task_alloc();
  v10 = sub_100043E1C();
  v8[25] = v10;
  v8[26] = *(v10 - 8);
  v8[27] = swift_task_alloc();
  v11 = sub_10004402C();
  v8[28] = v11;
  v8[29] = *(v11 - 8);
  v8[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000193C0, 0, 0);
}

uint64_t sub_1000193C0()
{
  sub_10001D904();
  if (qword_10005FF30 != -1)
  {
    sub_10001D6F8();
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_100043DBC();
  sub_1000060A4(v2, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100013414();
  v3 = sub_100043D4C();
  sub_10000EA9C(v3);
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v0[15] = type metadata accessor for JSExternalAuthenticatorObject();
  v0[12] = v1;
  v4 = v1;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_10004494C();
  }

  v7 = v0[30];
  v8 = v0[17];
  sub_10001D788();
  sub_100043D2C();

  sub_100004408(v0 + 12);
  sub_100043CFC();
  sub_100043D9C();

  sub_100019CFC(v8, v7);
  v9 = swift_task_alloc();
  v0[31] = v9;
  *v9 = v0;
  v9[1] = sub_100019738;
  sub_10001D944();

  return ExternalPartnerAuthenticator.retrieveLatestBillingPlan()(v10);
}

uint64_t sub_100019738()
{
  sub_10001D8AC();
  *v3 = v2;
  v4 = *v1;
  sub_10001D8AC();
  *v5 = v4;
  *(v6 + 256) = v0;

  if (v0)
  {
    v7 = sub_100019B68;
  }

  else
  {
    v7 = sub_100019844;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100019844()
{
  v1 = v0[32];
  (*(v0[26] + 16))(v0[24], v0[27], v0[25]);
  v2 = sub_100003514(&qword_100060820, &unk_100046E90);
  v3 = sub_10001D83C(v2);
  v4 = sub_10001D930(v3, xmmword_1000465C0);
  sub_10001D998(v4, v5);
  if (v1)
  {
    v6 = v0[27];
    v7 = v0[25];
    v8 = v0[26];
    sub_10001D6E0();
    sub_10001D370();
    (*(v8 + 8))(v6, v7);
    v9 = sub_10001D7F8();
    v10(v9);
    sub_10001D854();
    v16 = v0[19];
    v17 = sub_100003514(&qword_100060820, &unk_100046E90);
    v18 = sub_10001D83C(v17);
    sub_10001D7D8(v18, v19, v20, v21, v22, v23, v24, v25, v36);
    v26 = sub_10001D77C();
    sub_100018B54(v26);
    sub_10001D760();
    if (v16)
    {

      v27 = sub_10001D6B8();
      v28(v27);
      sub_10001D854();
      sub_10001D804();

      sub_10001D71C();
      goto LABEL_8;
    }

    v29 = sub_10001D6B8();
    v30(v29);
    sub_10001D67C();
    sub_10001D72C();
    sub_10001D788();
    v31();
  }

  else
  {
    v11 = v0[26];
    sub_10001D960();
    sub_10001D754();
    (*(v12 + 16))();
    sub_100004408(v0 + 7);
    v13 = sub_1000441AC();
    v14 = v0[27];
    v15 = v0[25];

    sub_10001D6E0();
    sub_10001D370();
    (*(v11 + 8))(v14, v15);
    v33 = sub_10001D7F8();
    v34(v33);
  }

  sub_10001D804();

  sub_10001D70C();
LABEL_8:

  return v32();
}

uint64_t sub_100019B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001D8EC();
  sub_10001D7CC();
  (*(v10[29] + 8))(v10[30], v10[28]);
  v11 = v10[19];
  v12 = sub_100003514(&qword_100060820, &unk_100046E90);
  v13 = sub_10001D83C(v12);
  sub_10001D894(v13, xmmword_1000465C0);
  v14 = sub_10001D77C();
  sub_100018B54(v14);
  sub_10001D760();
  if (v11)
  {

    v15 = sub_10001D6B8();
    v16(v15);
    sub_10001D854();
    sub_10001D804();

    sub_10001D71C();
  }

  else
  {
    v17 = sub_10001D6B8();
    v18(v17);
    sub_10001D67C();
    sub_10001D72C();
    sub_10001D788();
    v19();

    sub_10001D804();

    sub_10001D70C();
  }

  sub_10001D86C();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_100019CFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_100003514(&qword_100060A58, &qword_1000470A8);
  v4 = sub_1000161BC(v3);
  v5 = __chkstk_darwin(v4);
  v64 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v59 - v7;
  v8 = sub_100003514(&qword_100060A60, &qword_1000470B0);
  v9 = sub_1000161BC(v8);
  __chkstk_darwin(v9);
  v67 = &v59 - v10;
  v11 = sub_100043C9C();
  sub_1000061E8();
  v68 = v12;
  __chkstk_darwin(v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003514(&qword_100060A68, &qword_1000470B8);
  v17 = sub_1000161BC(v16);
  __chkstk_darwin(v17);
  v19 = &v59 - v18;
  v20 = sub_100003514(&qword_100060A70, &qword_1000470C0);
  v21 = sub_1000161BC(v20);
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  v24 = sub_100043C7C();
  sub_1000061E8();
  v26 = v25;
  v28 = __chkstk_darwin(v27);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v59 - v31;
  v33 = a1;
  v34 = v70;
  sub_10001C704(v33, v69);
  if (v34)
  {

LABEL_8:
    if (qword_10005FF30 != -1)
    {
      sub_10001D6F8();
      swift_once();
    }

    v44 = sub_100043DBC();
    sub_1000060A4(v44, qword_100065200);
    sub_100003514(&qword_100061CF0, &unk_1000466A0);
    sub_100013414();
    v45 = sub_100043D4C();
    sub_10000EA9C(v45);
    *(swift_allocObject() + 16) = xmmword_1000468F0;
    v46 = AMSSetLogKeyIfNeeded();
    sub_10004494C();

    type metadata accessor for JSExternalAuthenticatorObject();
    sub_100043D1C();

    sub_100043CFC();
    sub_100043D8C();

    sub_10001CC20();
    swift_allocError();
    *v47 = 0;
    return swift_willThrow();
  }

  v70 = v30;
  v60 = v32;
  v61 = v26;
  v59 = v15;
  v62 = v69[0];
  v63 = v23;
  if (v69[3])
  {

    v35 = v11;
    sub_100043C3C();
    v36 = sub_100043C2C();
    sub_10000464C(v19, 0, 1, v36);
    v37 = v24;
  }

  else
  {
    v38 = sub_100043C2C();
    sub_10000464C(v19, 1, 1, v38);

    v37 = v24;
    v35 = v11;
  }

  v39 = v70;
  v40 = v63;

  sub_100043C6C();
  sub_10000464C(v40, 0, 1, v37);
  v42 = v60;
  v41 = v61;
  (*(v61 + 32))(v60, v40, v37);
  (*(v41 + 16))(v39, v42, v37);
  v43 = v67;
  sub_100043C8C();
  if (sub_1000046E4(v43, 1, v35) == 1)
  {
    (*(v41 + 8))(v42, v37);
    sub_10001CC74(v69);
    sub_10001D0C8(v43, &qword_100060A60, &qword_1000470B0);
    goto LABEL_8;
  }

  v49 = v59;
  (*(v68 + 32))(v59, v43, v35);
  if (v69[6])
  {

    sub_10001CC74(v69);
    v50 = v66;
    sub_100043FCC();
  }

  else
  {
    sub_10001CC74(v69);
    v50 = v66;
    sub_100043FDC();
  }

  v52 = v64;
  v51 = v65;
  sub_10001D064(v50, v64, &qword_100060A58, &qword_1000470A8);
  v53 = sub_10004402C();
  if (sub_1000046E4(v52, 1, v53) == 1)
  {
    sub_10001D0C8(v52, &qword_100060A58, &qword_1000470A8);
    if (qword_10005FF30 != -1)
    {
      sub_10001D6F8();
      swift_once();
    }

    v54 = sub_100043DBC();
    sub_1000060A4(v54, qword_100065200);
    sub_100003514(&qword_100061CF0, &unk_1000466A0);
    sub_100013414();
    v55 = sub_100043D4C();
    sub_10000EA9C(v55);
    *(swift_allocObject() + 16) = xmmword_1000468F0;
    v56 = AMSSetLogKeyIfNeeded();
    sub_10004494C();

    type metadata accessor for JSExternalAuthenticatorObject();
    sub_100043D1C();

    sub_100043CFC();
    sub_100043D8C();

    sub_10001CC20();
    swift_allocError();
    *v57 = 1;
    swift_willThrow();
    sub_10001D0C8(v66, &qword_100060A58, &qword_1000470A8);
    (*(v68 + 8))(v59, v35);
    return (*(v61 + 8))(v60, v37);
  }

  else
  {
    sub_10001D0C8(v50, &qword_100060A58, &qword_1000470A8);
    (*(v68 + 8))(v49, v35);
    (*(v61 + 8))(v60, v37);
    sub_10001D754();
    return (*(v58 + 32))(v51, v52, v53);
  }
}

char *sub_10001A65C(void *a1, void *a2, void *a3)
{
  v38 = a3;
  v36 = a1;
  v4 = type metadata accessor for ExternalAuthenticatorCredentialsResponse(0);
  __chkstk_darwin(v4 - 8);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100043E7C();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003514(&qword_100060A80, &qword_1000470D8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  v14 = sub_10004402C();
  v33 = *(v14 - 8);
  v34 = v14;
  __chkstk_darwin(v14);
  v41 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v35 = v6;
  v37 = v13;
  v16 = sub_100043DBC();
  sub_1000060A4(v16, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v40[3] = type metadata accessor for JSExternalAuthenticatorObject();
  v40[0] = a2;
  v17 = a2;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v40);
  sub_100043CFC();
  sub_100043D9C();

  v20 = v41;
  v21 = v39;
  sub_100019CFC(v38, v41);
  if (v21)
  {
    return v11;
  }

  v22 = v37;
  sub_100043FEC();
  sub_10001D064(v22, v11, &qword_100060A80, &qword_1000470D8);
  v23 = v35;
  if (sub_1000046E4(v11, 1, v35) != 1)
  {
    v26 = v31;
    v25 = v32;
    (*(v32 + 32))(v31, v11, v23);
    (*(v25 + 16))(v30, v26, v23);
    v27 = v36;
    sub_10001DC58(v36, v40);
    sub_10000477C(0, &qword_100060800, JSValue_ptr);
    sub_10001D370();
    v28 = v27;
    v11 = sub_100044A9C();
    (*(v25 + 8))(v26, v23);
    goto LABEL_9;
  }

  sub_10001D0C8(v11, &qword_100060A80, &qword_1000470D8);
  result = [objc_opt_self() valueWithUndefinedInContext:v36];
  if (result)
  {
    v11 = result;
LABEL_9:
    sub_10001D0C8(v22, &qword_100060A80, &qword_1000470D8);
    (*(v33 + 8))(v20, v34);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001AC78(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v41 = a1;
  v40 = a5;
  v38 = a3;
  v36 = a2;
  v39 = sub_1000441BC();
  v6 = *(v39 - 8);
  v7 = __chkstk_darwin(v39);
  v43 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v8;
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v11 = sub_100003514(&qword_100060A50, &unk_100047080);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - v12;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v14 = sub_100043DBC();
  v35 = sub_1000060A4(v14, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v42[3] = type metadata accessor for JSExternalAuthenticatorObject();
  v42[0] = a4;
  v15 = a4;
  v16 = AMSLogKey();
  if (v16)
  {
    v17 = v16;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v42);
  sub_100043CFC();
  sub_100043D9C();

  v18 = sub_100044A5C();
  v34 = v13;
  sub_10000464C(v13, 1, 1, v18);
  v19 = v6;
  v20 = *(v6 + 16);
  v21 = v39;
  v20(v10, v36, v39);
  v20(v43, v38, v21);
  v22 = *(v19 + 80);
  v23 = (v22 + 40) & ~v22;
  v24 = (v37 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v22 + v24 + 8) & ~v22;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v27 = v40;
  *(v26 + 4) = v40;
  v28 = *(v19 + 32);
  v28(&v26[v23], v10, v21);
  v29 = v41;
  *&v26[v24] = v41;
  v28(&v26[v25], v43, v21);
  v30 = v27;
  v31 = v29;
  sub_10002AFB8(0, 0, v34, &unk_1000470D0, v26);
}

uint64_t sub_10001B054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = sub_1000446CC();
  v7[16] = v8;
  v7[17] = *(v8 - 8);
  v7[18] = swift_task_alloc();
  type metadata accessor for ExternalAuthenticatorUserInfoResponse(0);
  v7[19] = swift_task_alloc();
  v9 = sub_10004402C();
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v10 = sub_10004407C();
  v7[23] = v10;
  v7[24] = *(v10 - 8);
  v7[25] = swift_task_alloc();

  return _swift_task_switch(sub_10001B1FC, 0, 0);
}

uint64_t sub_10001B1FC()
{
  sub_10001D8EC();
  sub_10001D7CC();
  type metadata accessor for JSExternalAuthenticatorObject();
  v1 = sub_10001D77C();
  sub_100019CFC(v1, v2);
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_10001B410;
  sub_10001D7C0();
  sub_10001D86C();

  return ExternalPartnerAuthenticator.retrieveUserInfo()(v4);
}

uint64_t sub_10001B410(uint64_t a1)
{
  v3 = *v2;
  sub_10001D8AC();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 216) = v1;

  (*(v3[21] + 8))(v3[22], v3[20]);
  if (v1)
  {
    v6 = sub_10001B838;
  }

  else
  {
    v6 = sub_10001B574;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10001B574()
{
  sub_10001D904();
  v1 = v0[27];
  (*(v0[24] + 16))(v0[19], v0[25], v0[23]);
  v2 = sub_100003514(&qword_100060820, &unk_100046E90);
  v3 = sub_10001D83C(v2);
  v4 = sub_10001D930(v3, xmmword_1000465C0);
  sub_10001DFA0(v4, v5);
  if (v1)
  {
    sub_10001D6C8();
    sub_10001D370();
    v6 = sub_10001D7F8();
    v7(v6);
    sub_10001D854();
    v9 = v0[14];
    v10 = sub_100003514(&qword_100060820, &unk_100046E90);
    v11 = sub_10001D83C(v10);
    sub_10001D7D8(v11, v12, v13, v14, v15, v16, v17, v18, v29);
    v19 = sub_10001D77C();
    sub_100018B54(v19);
    sub_10001D760();
    if (v9)
    {

      v20 = sub_10001D6B8();
      v21(v20);
      sub_10001D854();
      sub_10001D7C0();

      sub_10001D71C();
      goto LABEL_8;
    }

    v22 = sub_10001D6B8();
    v23(v22);
    sub_10001D67C();
    sub_10001D72C();
    sub_10001D788();
    v24();
  }

  else
  {
    sub_10001D924();
    sub_10001D960();
    sub_10001D754();
    (*(v8 + 16))();
    sub_100004408(v0 + 7);

    sub_10001D6C8();
    sub_10001D370();
    v26 = sub_10001D7F8();
    v27(v26);
  }

  sub_10001D7C0();

  sub_10001D70C();
LABEL_8:

  return v25();
}

uint64_t sub_10001B838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001D8EC();
  sub_10001D7CC();
  v11 = *(v10 + 112);
  v12 = sub_100003514(&qword_100060820, &unk_100046E90);
  v13 = sub_10001D83C(v12);
  sub_10001D894(v13, xmmword_1000465C0);
  v14 = sub_10001D77C();
  sub_100018B54(v14);
  sub_10001D760();
  if (v11)
  {

    v15 = sub_10001D6B8();
    v16(v15);
    sub_10001D854();
    sub_10001D7C0();

    sub_10001D71C();
  }

  else
  {
    v17 = sub_10001D6B8();
    v18(v17);
    sub_10001D67C();
    sub_10001D72C();
    sub_10001D788();
    v19();

    sub_10001D7C0();

    sub_10001D70C();
  }

  sub_10001D86C();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_10001BA2C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_1000448BC();
  sub_1000061E8();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  sub_10004489C();
  if (!v5)
  {
    v6 = sub_1000448AC();
    (*(v12 + 8))(v15, v10);
  }

  return v6;
}

uint64_t sub_10001BB68(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v42 = a5;
  v43 = a1;
  v39 = a3;
  v37 = a2;
  v40 = sub_1000441BC();
  v38 = *(v40 - 8);
  v6 = *(v38 + 64);
  v7 = __chkstk_darwin(v40);
  v41 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = sub_100003514(&qword_100060A50, &unk_100047080);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v13 = sub_100043DBC();
  v36 = sub_1000060A4(v13, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v44[3] = type metadata accessor for JSExternalAuthenticatorObject();
  v44[0] = a4;
  v14 = a4;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v44);
  sub_100043CFC();
  sub_100043D9C();

  v17 = sub_100044A5C();
  v35 = v12;
  sub_10000464C(v12, 1, 1, v17);
  v18 = v38;
  v19 = *(v38 + 16);
  v34 = v9;
  v20 = v9;
  v21 = v40;
  v19(v20, v37, v40);
  v22 = v41;
  v19(v41, v39, v21);
  v23 = *(v18 + 80);
  v24 = (v23 + 40) & ~v23;
  v25 = (v6 + v23 + v24) & ~v23;
  v26 = (v6 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v42;
  *(v27 + 4) = v42;
  v29 = *(v18 + 32);
  v29(&v27[v24], v34, v21);
  v29(&v27[v25], v22, v21);
  v30 = v43;
  *&v27[v26] = v43;
  v31 = v28;
  v32 = v30;
  sub_10002AFB8(0, 0, v35, &unk_100047098, v27);
}

uint64_t sub_10001BF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_1000446CC();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v9 = sub_10004402C();
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();

  return _swift_task_switch(sub_10001C068, 0, 0);
}

uint64_t sub_10001C068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001D8EC();
  sub_10001D7CC();
  type metadata accessor for JSExternalAuthenticatorObject();
  v11 = sub_10001D77C();
  sub_100019CFC(v11, v12);
  v13 = swift_task_alloc();
  *(v10 + 136) = v13;
  *v13 = v10;
  v13[1] = sub_10001C244;
  sub_10001D86C();

  return ExternalPartnerAuthenticator.signOut()(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_10001C244(uint64_t a1)
{
  v3 = *v2;
  sub_10001D8AC();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 144) = v1;

  (*(v3[15] + 8))(v3[16], v3[14]);
  if (v1)
  {
    v6 = sub_10001C55C;
  }

  else
  {
    v6 = sub_10001C3A8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10001C3A8()
{
  sub_10001D904();
  v1 = *(v0 + 144);
  v2 = sub_100003514(&qword_100060820, &unk_100046E90);
  v3 = sub_10001D83C(v2);
  *(v3 + 16) = xmmword_1000465C0;
  *(v3 + 56) = &type metadata for Bool;
  *(v3 + 32) = 1;
  v4 = sub_1000441AC();
  if (v1)
  {

    sub_10001D924();
    v5 = sub_100003514(&qword_100060820, &unk_100046E90);
    v6 = sub_10001D83C(v5);
    sub_10001D7D8(v6, v7, v8, v9, v10, v11, v12, v13, xmmword_1000465C0);
    v14 = sub_10001D77C();
    sub_100018B54(v14);
    sub_10001D760();

    v15 = sub_10001D6B8();
    v16(v15);
    sub_10001D854();
    sub_10001D8B8();

    sub_10001D71C();
  }

  else
  {

    sub_10001D8B8();

    sub_10001D70C();
  }

  return v17();
}

uint64_t sub_10001C55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001D8EC();
  sub_10001D7CC();
  sub_10001D924();
  v11 = sub_100003514(&qword_100060820, &unk_100046E90);
  v12 = sub_10001D83C(v11);
  sub_10001D894(v12, xmmword_1000465C0);
  v13 = sub_10001D77C();
  sub_100018B54(v13);
  sub_10001D760();
  if (v10)
  {

    v14 = sub_10001D6B8();
    v15(v14);
    sub_10001D854();
    sub_10001D8B8();

    sub_10001D71C();
  }

  else
  {
    v16 = sub_10001D6B8();
    v17(v16);
    sub_10001D67C();
    sub_10001D72C();
    sub_10001D788();
    v18();

    sub_10001D8B8();

    sub_10001D70C();
  }

  sub_10001D86C();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

void sub_10001C704(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100044ADC();
  v5 = sub_10001CCA4(v4);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = sub_100044ADC();
    v20 = sub_10001CCA4(v9);
    v19 = v10;
    v11 = sub_100044ADC();
    v12 = sub_100006644(v11);
    if (v12)
    {
      v13 = sub_100023B70(v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_100044ADC();
    v15 = [v14 toString];

    if (v15)
    {
      v16 = sub_10004494C();
      v18 = v17;
    }

    else
    {

      v16 = 0;
      v18 = 0;
    }

    *a2 = v7;
    a2[1] = v8;
    a2[2] = v20;
    a2[3] = v19;
    a2[4] = v13;
    a2[5] = v16;
    a2[6] = v18;
  }

  else
  {
    __break(1u);
  }
}

id sub_10001C87C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSExternalAuthenticatorObject();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_10001C8D4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSExternalAuthenticatorObject();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10001C964()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10001C9C0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001C704(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_10001CA10()
{
  v1 = sub_1000441BC();
  sub_1000061E8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = (v7 + v4 + v5) & ~v4;
  v9 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v10 = *(v3 + 8);
  v10(v0 + v5, v1);
  v10(v0 + v8, v1);

  return _swift_deallocObject(v0, v9 + 8, v4 | 7);
}

uint64_t sub_10001CB0C()
{
  sub_10001D7CC();
  v1 = sub_10001D8D0();
  sub_10000EA9C(v1);
  v4 = *(v0 + ((*(v3 + 64) + ((*(v3 + 64) + *(v2 + 80) + ((*(v2 + 80) + 40) & ~*(v2 + 80))) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  v6 = sub_10001D884(v5);
  *v6 = v7;
  v6[1] = sub_10001D670;
  v8 = sub_10001D73C();

  return sub_10001BF48(v8, v9, v10, v11, v12, v13, v4);
}

unint64_t sub_10001CC20()
{
  result = qword_100060A78;
  if (!qword_100060A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060A78);
  }

  return result;
}

uint64_t sub_10001CCA4(void *a1)
{
  v2 = [a1 toString];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10004494C();

  return v3;
}

uint64_t sub_10001CD68()
{
  v3 = sub_1000441BC();
  sub_1000061E8();
  v5 = v4;
  v6 = *(v4 + 80);
  v8 = *(v7 + 64);
  sub_10001D810();

  v9 = *(v5 + 8);
  v9(v0 + ((v6 + 40) & ~v6), v3);

  v9(v0 + v2, v3);

  return _swift_deallocObject(v0, v2 + v8, v6 | 7);
}

uint64_t sub_10001CE50()
{
  sub_10001D7CC();
  v1 = sub_10001D8D0();
  sub_10000EA9C(v1);
  sub_10001D910();
  v3 = *(v0 + v2);
  v4 = swift_task_alloc();
  v5 = sub_10001D884(v4);
  *v5 = v6;
  v5[1] = sub_10001CF58;
  v7 = sub_10001D73C();

  return sub_10001B054(v7, v8, v9, v10, v11, v3, v12);
}

uint64_t sub_10001CF58()
{
  v1 = *v0;
  sub_10001D8AC();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10001D064(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100003514(a3, a4);
  sub_10001D754();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10001D0C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100003514(a2, a3);
  sub_10001D754();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10001D178()
{
  v3 = sub_1000441BC();
  sub_1000061E8();
  v5 = v4;
  v6 = *(v4 + 80);
  v8 = *(v7 + 64);
  sub_10001D810();

  v9 = *(v5 + 8);
  v9(v0 + ((v6 + 48) & ~v6), v3);

  v9(v0 + v2, v3);

  return _swift_deallocObject(v0, v2 + v8, v6 | 7);
}

uint64_t sub_10001D268()
{
  sub_10001D904();
  v0 = sub_10001D8D0();
  sub_10000EA9C(v0);
  sub_10001D910();
  v1 = swift_task_alloc();
  v2 = sub_10001D884(v1);
  *v2 = v3;
  v2[1] = sub_10001D670;
  sub_10001D73C();
  sub_10001D944();

  return sub_100019214(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10001D370()
{
  v1 = sub_100013414();
  v2(v1);
  sub_10001D754();
  (*(v3 + 8))(v0);
  return v0;
}

__n128 sub_10001D3C8(uint64_t a1, uint64_t a2)
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

uint64_t sub_10001D3E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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