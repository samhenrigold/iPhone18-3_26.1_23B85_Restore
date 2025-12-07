int main(int argc, const char **argv, const char **envp)
{
  qword_100025920 = [objc_allocWithZone(type metadata accessor for MessageFilterManager()) init];
  qword_100025928 = [objc_opt_self() serviceListener];
  [qword_100025928 setDelegate:qword_100025920];
  [qword_100025928 resume];
  exit(1);
}

uint64_t sub_1000014A8(uint64_t a1)
{
  v2 = sub_100001DA4(&qword_100024D18, type metadata accessor for ILMessageFilterError, &unk_100018BF0);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100001514(uint64_t a1)
{
  v2 = sub_100001DA4(&qword_100024D18, type metadata accessor for ILMessageFilterError, &unk_100018BF0);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100001584(uint64_t a1)
{
  v2 = sub_100001DA4(&qword_100024D50, type metadata accessor for ILMessageFilterError, &unk_100018C34);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100001600(uint64_t a1)
{
  v2 = sub_100001DA4(&qword_100024D58, type metadata accessor for ILMessageFilterPrivateError, &unk_100018AB8);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000166C(uint64_t a1)
{
  v2 = sub_100001DA4(&qword_100024D58, type metadata accessor for ILMessageFilterPrivateError, &unk_100018AB8);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000016D8(uint64_t a1)
{
  v2 = sub_100001DA4(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100001754(uint64_t a1)
{
  v2 = sub_100001DA4(&qword_100024D50, type metadata accessor for ILMessageFilterError, &unk_100018C34);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000017C0(uint64_t a1)
{
  v2 = sub_100001DA4(&qword_100024D50, type metadata accessor for ILMessageFilterError, &unk_100018C34);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000182C(void *a1, uint64_t a2)
{
  v4 = sub_100001DA4(&qword_100024D50, type metadata accessor for ILMessageFilterError, &unk_100018C34);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000018E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DA4(&qword_100024D50, type metadata accessor for ILMessageFilterError, &unk_100018C34);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

void *sub_100001960@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000198C(uint64_t a1)
{
  v2 = sub_100001DA4(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000019F8(uint64_t a1)
{
  v2 = sub_100001DA4(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100001A64(void *a1, uint64_t a2)
{
  v4 = sub_100001DA4(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100001AF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DA4(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100001B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000181B4();
  sub_100017F94();
  return sub_1000181C4();
}

uint64_t sub_100001BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001DA4(&qword_100024D50, type metadata accessor for ILMessageFilterError, &unk_100018C34);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100001C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001DA4(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100001DA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100001FFC()
{
  result = qword_100024D40;
  if (!qword_100024D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024D40);
  }

  return result;
}

void sub_100002214(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100002364()
{
  sub_1000023C4();
  result = sub_100018094();
  qword_100025930 = result;
  return result;
}

unint64_t sub_1000023C4()
{
  result = qword_100024D98;
  if (!qword_100024D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100024D98);
  }

  return result;
}

void sub_100002410(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a8;
  v43 = a7;
  v42 = a6;
  v49 = a4;
  v50 = a5;
  v51 = a2;
  v52 = a3;
  v9 = sub_100017EC4();
  v41 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100017DD4();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v13 = qword_100025930;
  sub_100003024(&qword_100024E40, &unk_100019180);
  v14 = swift_allocObject();
  v48 = xmmword_100018EA0;
  *(v14 + 16) = xmmword_100018EA0;
  sub_10000306C(a1, aBlock);
  sub_100003024(&qword_100024E48, &qword_100018F50);
  v15 = sub_100017FE4();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  v18 = sub_1000030D0();
  *(v14 + 64) = v18;
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  v19 = sub_100018034();
  sub_100017F14("Performing request: %@", 22, 2, &_mh_execute_header, v13, v19, v14);

  sub_10000306C(a1, aBlock);
  sub_100003024(&qword_100024E50, &qword_100018F58);
  if (swift_dynamicCast())
  {
    sub_1000034C8(v54, v56);
    v20 = sub_10000C604(v56, v49, v50);
    if (v21 >> 60 == 15)
    {
      v22 = sub_100018024();
      sub_100017F14("Failed to create JSON data", 26, 2, &_mh_execute_header, v13, v22, &_swiftEmptyArrayStorage);
      type metadata accessor for ILMessageFilterError(0);
      *&v54[0] = 1;
      sub_100003360(&_swiftEmptyArrayStorage);
      sub_100003470();
      sub_100017E44();
      v23 = aBlock[0];
      v51(0, aBlock[0]);
    }

    else
    {
      v29 = v20;
      v30 = v21;
      (*(v41 + 16))(v11, v42, v9);
      v31 = v45;
      sub_100017DA4();
      sub_100017D84();
      v58._countAndFlagsBits = 0x2D746E65746E6F43;
      v58._object = 0xEC00000065707954;
      v57.value._object = 0x8000000100019B40;
      v57.value._countAndFlagsBits = 0xD00000000000001FLL;
      sub_100017DC4(v57, v58);
      sub_10000352C(v29, v30);
      sub_100017DB4();
      v32 = [objc_opt_self() ephemeralSessionConfiguration];
      v33 = sub_100017FA4();
      [v32 set_sourceApplicationBundleIdentifier:v33];

      v34 = [objc_opt_self() sessionWithConfiguration:v32];
      v35 = sub_100017D94();
      v36 = swift_allocObject();
      v37 = v52;
      *(v36 + 16) = v51;
      *(v36 + 24) = v37;
      aBlock[4] = sub_1000035B8;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002F00;
      aBlock[3] = &unk_100020A18;
      v38 = _Block_copy(aBlock);

      v39 = [v34 dataTaskWithRequest:v35 completionHandler:v38];
      _Block_release(v38);

      [v39 resume];
      [v34 finishTasksAndInvalidate];

      sub_1000035D8(v29, v30);
      (*(v46 + 8))(v31, v47);
    }

    sub_1000034E0(v56);
  }

  else
  {
    v55 = 0;
    memset(v54, 0, sizeof(v54));
    sub_1000036A4(v54, &qword_100024E58, &unk_100018F60);
    v24 = sub_100018024();
    v25 = swift_allocObject();
    *(v25 + 16) = v48;
    sub_10000306C(a1, aBlock);
    v26 = sub_100017FE4();
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = v18;
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
    sub_100017F14("Request %@ is not JSON-encodable", 32, 2, &_mh_execute_header, v13, v24, v25);

    type metadata accessor for ILMessageFilterError(0);
    v56[0] = 1;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100003470();
    sub_100017E44();
    v28 = aBlock[0];
    v51(0, aBlock[0]);
  }
}

void sub_100002AC8(uint64_t a1, unint64_t a2, void *a3, void *a4, void (*a5)(id, void *))
{
  if (!a3 || ((objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) != 0) ? (v11 = a2 >> 60 == 15) : (v11 = 1), v11))
  {
    if (a4)
    {
      swift_errorRetain();
      if (qword_100024C80 != -1)
      {
        swift_once();
      }

      v12 = qword_100025930;
      v13 = sub_100018024();
      sub_100003024(&qword_100024E40, &unk_100019180);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_100018EA0;
      swift_errorRetain();
      sub_100003024(&qword_100024E60, &unk_100019270);
      v15 = sub_100017FC4();
      v17 = v16;
      *(v14 + 56) = &type metadata for String;
      *(v14 + 64) = sub_1000030D0();
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      sub_100017F14("Unexpected response and/or data to HTTP request: %@", 51, 2, &_mh_execute_header, v12, v13, v14);

      type metadata accessor for ILMessageFilterError(0);
      sub_100003024(&qword_100024E68, &unk_100018F70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100018EA0;
      *(inited + 32) = sub_100017FB4();
      *(inited + 40) = v19;
      swift_getErrorValue();
      *(inited + 72) = v30;
      v20 = sub_100003640((inited + 48));
      (*(*(v30 - 8) + 16))(v20);
      sub_100003360(inited);
      swift_setDeallocating();
      sub_1000036A4(inited + 32, &qword_100025830, &qword_100019620);
      sub_100003470();
      sub_100017E44();
      a5(0, a4);
    }

    else
    {
      if (qword_100024C80 != -1)
      {
        swift_once();
      }

      v27 = qword_100025930;
      v28 = sub_100018024();
      sub_100017F14("Unexpected response and/or data to HTTP request", 47, 2, &_mh_execute_header, v27, v28, &_swiftEmptyArrayStorage);
      type metadata accessor for ILMessageFilterError(0);
      sub_100003360(&_swiftEmptyArrayStorage);
      sub_100003470();
      sub_100017E44();
      (a5)(0);
    }
  }

  else
  {
    v21 = v10;
    v22 = objc_allocWithZone(ILNetworkResponse);
    v23 = a3;
    sub_100003704(a1, a2);
    v29 = v23;
    sub_100003704(a1, a2);
    isa = sub_100017ED4().super.isa;
    v25 = [v22 initWithURLResponse:v21 data:isa];

    sub_1000035D8(a1, a2);
    v26 = v25;
    a5(v25, a4);

    sub_1000035D8(a1, a2);
  }
}

uint64_t sub_100002F00(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_100017EE4();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1000035D8(v6, v10);
}

uint64_t sub_100002FC8()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100003024(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000306C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000030D0()
{
  result = qword_100025810;
  if (!qword_100025810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025810);
  }

  return result;
}

unint64_t sub_100003124(uint64_t a1, uint64_t a2)
{
  sub_1000181B4();
  sub_100017FF4();
  v4 = sub_1000181C4();

  return sub_1000031E0(a1, a2, v4);
}

unint64_t sub_10000319C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000180D4(*(v2 + 40));

  return sub_100003298(a1, v4);
}

unint64_t sub_1000031E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100018164())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100003298(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100003798(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000180E4();
      sub_1000037F4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100003360(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003024(&qword_100024E70, &unk_100018F80);
    v3 = sub_100018144();
    v4 = a1 + 32;

    while (1)
    {
      sub_100003718(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100003124(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100003788(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100003470()
{
  result = qword_100024D50;
  if (!qword_100024D50)
  {
    type metadata accessor for ILMessageFilterError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024D50);
  }

  return result;
}

uint64_t sub_1000034C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000034E0(void *a1)
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

uint64_t sub_10000352C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100003580()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000035C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000035D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000035EC(a1, a2);
  }

  return a1;
}

uint64_t sub_1000035EC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t *sub_100003640(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000036A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003024(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003704(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000352C(result, a2);
  }

  return result;
}

uint64_t sub_100003718(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003024(&qword_100025830, &qword_100019620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100003788(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

BOOL sub_100003848(void *a1)
{
  v1 = a1;
  v26 = 0;
  v2 = [objc_opt_self() serviceDetailsWithServiceSpecifier:a1 error:&v26];
  v3 = v26;
  if (v2)
  {
    v4 = v2;
    sub_100003C34(0, qword_100024E88, _SWCServiceDetails_ptr);
    v5 = sub_100018014();
    v6 = v3;

    if (qword_100024C80 != -1)
    {
LABEL_20:
      swift_once();
    }

    v7 = qword_100025930;
    sub_100003024(&qword_100024E40, &unk_100019180);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100018EA0;
    *(v8 + 56) = sub_100003C34(0, &qword_100024E78, _SWCServiceSpecifier_ptr);
    *(v8 + 64) = sub_100003BCC();
    *(v8 + 32) = v1;
    v9 = v1;
    v10 = sub_100018034();
    sub_100017F14("Got SWC details for specifier %@", 32, 2, &_mh_execute_header, v7, v10, v8);

    if (v5 >> 62)
    {
      v1 = sub_100018114();
    }

    else
    {
      v1 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    do
    {
      v12 = v1 != v11;
      if (v1 == v11)
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v13 = sub_100018104();
      }

      else
      {
        if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v13 = *(v5 + 8 * v11 + 32);
      }

      v14 = v13;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v15 = [v13 isApproved];

      ++v11;
    }

    while (!v15);
  }

  else
  {
    v16 = v26;
    v17 = sub_100017E64();

    swift_willThrow();
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v18 = qword_100025930;
    sub_100003024(&qword_100024E40, &unk_100019180);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100018F90;
    *(v19 + 56) = sub_100003C34(0, &qword_100024E78, _SWCServiceSpecifier_ptr);
    *(v19 + 64) = sub_100003BCC();
    *(v19 + 32) = v1;
    v26 = v17;
    v20 = v1;
    swift_errorRetain();
    sub_100003024(&qword_100024E60, &unk_100019270);
    v21 = sub_100017FE4();
    v23 = v22;
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = sub_1000030D0();
    *(v19 + 72) = v21;
    *(v19 + 80) = v23;
    v24 = sub_100018034();
    sub_100017F14("Failed to get SWC details for specifier %@: %@", 46, 2, &_mh_execute_header, v18, v24, v19);

    v12 = 0;
  }

  return v12;
}

unint64_t sub_100003BCC()
{
  result = qword_100024E80;
  if (!qword_100024E80)
  {
    sub_100003C34(255, &qword_100024E78, _SWCServiceSpecifier_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024E80);
  }

  return result;
}

uint64_t sub_100003C34(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100003CF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for NetworkOperation();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  a2[3] = v3;
  a2[4] = &off_1000209E0;
  *a2 = v4;

  return _objc_retain_x1();
}

void sub_100003D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(BOOL))
{
  v6 = _SWCServiceTypeMessageFiltering;
  v7 = objc_allocWithZone(_SWCServiceSpecifier);
  v8 = v6;

  v9 = sub_100017FA4();

  v10 = sub_100017FA4();

  v12 = [v7 initWithServiceType:v8 applicationIdentifier:v9 domain:v10];

  v11 = sub_100003848(v12);
  a5(v11);
}

uint64_t sub_100003E6C(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v4 = a4;
  if (!a1)
  {
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v27 = qword_100025930;
    v26 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100018F90;
    sub_10000306C(a3, &v29);
    sub_100003024(&qword_100024E48, &qword_100018F50);
    v9 = sub_100017FE4();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    v12 = sub_1000030D0();
    *(v8 + 64) = v12;
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    v29 = a2;
    swift_errorRetain();
    sub_100003024(&qword_1000258A0, &qword_100019190);
    v13 = sub_100017FE4();
    *(v8 + 96) = &type metadata for String;
    *(v8 + 104) = v12;
    *(v8 + 72) = v13;
    *(v8 + 80) = v14;
    sub_100017F14("Error deferring request %@ to network: %@", 41, 2, &_mh_execute_header, v27, v26, v8);

    v4 = a4;
  }

  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v15 = qword_100025930;
  sub_100003024(&qword_100024E40, &unk_100019180);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100018F90;
  v29 = a1;
  v17 = a1;
  sub_100003024(&qword_100025010, qword_100019198);
  v18 = sub_100017FE4();
  v20 = v19;
  *(v16 + 56) = &type metadata for String;
  v21 = sub_1000030D0();
  *(v16 + 64) = v21;
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  v29 = a2;
  swift_errorRetain();
  sub_100003024(&qword_1000258A0, &qword_100019190);
  v22 = sub_100017FE4();
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v21;
  *(v16 + 72) = v22;
  *(v16 + 80) = v23;
  v24 = sub_100018034();
  sub_100017F14("Passing back network response %@ error %@", 41, 2, &_mh_execute_header, v15, v24, v16);

  return v4(a1, a2);
}

uint64_t sub_100004120()
{
  sub_1000034E0((v0 + 24));

  return v0;
}

uint64_t sub_1000041A8()
{
  sub_100004120();

  return _swift_deallocClassInstance(v0, 168, 7);
}

uint64_t sub_10000423C()
{
  sub_100004884(*(v0 + 16), *(v0 + 24));

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10000428C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000042C8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000042EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000042F8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100004348(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

void *sub_1000043A0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

__n128 sub_1000043D8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1000043F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10000443C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1000044A0(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_100014054();
  if (!v5)
  {
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v24 = qword_100025930;
    v25 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100018EA0;
    *(v26 + 56) = sub_100004778();
    *(v26 + 64) = sub_1000047C4();
    *(v26 + 32) = a1;
    v23 = a1;
    sub_100017F14("Unable to determine containing app identifier for NSExtension %@", 64, 2, &_mh_execute_header, v24, v25, v26);
    goto LABEL_13;
  }

  v6 = v4;
  v7 = v5;
  v8 = sub_1000143E0();
  if (!v8 || (v9 = v8, v10 = [v8 bundleIdentifier], v9, !v10))
  {

    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v20 = qword_100025930;
    v21 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100018EA0;
    *(v22 + 56) = sub_100004778();
    *(v22 + 64) = sub_1000047C4();
    *(v22 + 32) = a1;
    v23 = a1;
    sub_100017F14("Unable to determine containing app bundle identifier for NSExtension %@", 71, 2, &_mh_execute_header, v20, v21, v22);
LABEL_13:

    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    goto LABEL_16;
  }

  v11 = sub_100017FB4();
  v13 = v12;

  v14 = sub_1000143E0();
  if (v14 && (v15 = v14, v16 = [v14 bundleVersion], v15, v16))
  {
    v17 = sub_100017FB4();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v32 = sub_100014188();
  v34 = v33;

  *&v36 = v6;
  *(&v36 + 1) = v7;
  *&v37 = v11;
  *(&v37 + 1) = v13;
  *&v38 = v17;
  *(&v38 + 1) = v19;
  *&v39 = v32;
  *(&v39 + 1) = v34;
  v40 = 0uLL;
  v41[0] = v6;
  v41[1] = v7;
  v41[2] = v11;
  v41[3] = v13;
  v41[4] = v17;
  v41[5] = v19;
  v41[6] = v32;
  v41[7] = v34;
  v41[8] = 0;
  v41[9] = 0;
  sub_10000481C(&v36, &v35);
  sub_100004854(v41);
  v27 = v36;
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v31 = v40;
LABEL_16:
  *a2 = v27;
  a2[1] = v28;
  a2[2] = v29;
  a2[3] = v30;
  a2[4] = v31;
}

unint64_t sub_100004778()
{
  result = qword_100025018;
  if (!qword_100025018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100025018);
  }

  return result;
}

unint64_t sub_1000047C4()
{
  result = qword_100025020;
  if (!qword_100025020)
  {
    sub_100004778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025020);
  }

  return result;
}

uint64_t sub_100004884(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000048C8(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v7 = qword_100025930;
  sub_100003024(&qword_100024E40, &unk_100019180);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100018EA0;
  *(v8 + 56) = sub_100003C34(0, &qword_100025180, ILMessageFilterQueryRequest_ptr);
  *(v8 + 64) = sub_100005C7C();
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_100018034();
  sub_100017F14("Performing request: %@", 22, 2, &_mh_execute_header, v7, v10, v8);

  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a2;
  v11[4] = a3;

  sub_10000CA8C(sub_100005D24, v11);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v3;
  v12[5] = v9;
  v13 = v9;

  sub_10000CE40(sub_100005D78, v12);
}

uint64_t sub_100004A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100017F24();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100017F44();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = *(a2 + 16);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  aBlock[4] = sub_100006540;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008EC8;
  aBlock[3] = &unk_100020E88;
  v17 = _Block_copy(aBlock);
  swift_errorRetain();

  sub_100017F34();
  v19[1] = &_swiftEmptyArrayStorage;
  sub_1000061A0(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003024(&unk_100025890, &unk_1000198E0);
  sub_1000063F4();
  sub_1000180B4();
  sub_100018064();
  _Block_release(v17);
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
}

uint64_t sub_100004D40(void *a1, uint64_t a2, void (*a3)(void *, void *))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v5 = qword_100025930;
    v6 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100018EA0;
    swift_errorRetain();
    sub_100003024(&qword_100024E60, &unk_100019270);
    v8 = sub_100017FE4();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_1000030D0();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_100017F14("Error during extension request: %@", 34, 2, &_mh_execute_header, v5, v6, v7);
  }

  v11 = *(a2 + 176);
  if (!v11)
  {
    swift_errorRetain();
    v11 = a1;
  }

  swift_errorRetain();
  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v12 = qword_100025930;
  sub_100003024(&qword_100024E40, &unk_100019180);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100018F90;
  v14 = *(a2 + 168);
  sub_100003024(&qword_1000251A8, "^(");
  v15 = sub_100017FE4();
  v17 = v16;
  *(v13 + 56) = &type metadata for String;
  v18 = sub_1000030D0();
  *(v13 + 64) = v18;
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  swift_errorRetain();
  sub_100003024(&qword_1000258A0, &qword_100019190);
  v19 = sub_100017FE4();
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v18;
  *(v13 + 72) = v19;
  *(v13 + 80) = v20;
  v21 = sub_100018034();
  sub_100017F14("Calling completion with response: %@ error: %@", 46, 2, &_mh_execute_header, v12, v21, v13);

  v22 = *(a2 + 168);
  v23 = v22;
  a3(v22, v11);
}

void sub_100004FEC(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, void *a6)
{
  v10 = swift_allocObject();
  sub_100005DBC(a1, &v28);
  if (v29)
  {
    sub_1000034C8(&v28, v10 + 16);
    v11 = swift_allocObject();
    *(v11 + 16) = a5;
    *(v11 + 24) = a6;
    v12 = *(v10 + 40);
    v13 = *(v10 + 48);
    sub_10000628C(v10 + 16, v12);
    v14 = *(v13 + 16);

    v15 = a6;
    v14(sub_100006228, v11, v12, v13);
    sub_10000306C(v10 + 16, &v28);
    v16 = v29;
    v17 = v30;
    sub_1000062DC(&v28, v29);
    v18 = swift_allocObject();
    v18[2] = a5;
    v18[3] = v15;
    v18[4] = v10;
    v19 = *(v17 + 32);

    v20 = v15;

    v19(v20, sub_100006368, v18, v16, v17);

    sub_1000034E0(&v28);
  }

  else
  {
    sub_100005E2C(&v28);
    swift_deallocUninitializedObject();
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v21 = qword_100025930;
    v22 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100018EA0;
    sub_100005DBC(a1, &v28);
    sub_100003024(&qword_100025188, "6)");
    v24 = sub_100017FE4();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_1000030D0();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_100017F14("hostContext %@ is not convertible to expected type", 50, 2, &_mh_execute_header, v21, v22, v23);

    type metadata accessor for ILMessageFilterPrivateError(0);
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_1000061A0(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);
    sub_100017E44();
    v27 = v28;
    a3(0, v28);
  }
}

uint64_t sub_100005328(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_100017F24();
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100017F44();
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a3 + 16);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a4;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a5;
  aBlock[4] = sub_1000063CC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008EC8;
  aBlock[3] = &unk_100020DE8;
  v17 = _Block_copy(aBlock);
  v18 = a1;
  v19 = a4;
  swift_errorRetain();

  sub_100017F34();
  v24 = &_swiftEmptyArrayStorage;
  sub_1000061A0(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003024(&unk_100025890, &unk_1000198E0);
  sub_1000063F4();
  sub_1000180B4();
  sub_100018064();
  _Block_release(v17);
  (*(v23 + 8))(v12, v10);
  (*(v13 + 8))(v15, v22);
}

uint64_t sub_100005600(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = qword_100024C80;
    v10 = a1;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = qword_100025930;
    sub_100003024(&qword_100024E40, &unk_100019180);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100018EA0;
    v31[0] = v10;
    sub_100003C34(0, &qword_1000251A0, ILMessageFilterQueryResponse_ptr);
    v13 = v10;
    v14 = sub_100017FE4();
    v16 = v15;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_1000030D0();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    v17 = sub_100018034();
    sub_100017F14("Received response: %@", 21, 2, &_mh_execute_header, v11, v17, v12, v31[0]);
  }

  else
  {
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v19 = qword_100025930;
    v20 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100018F90;
    *(v21 + 56) = sub_100003C34(0, &qword_100025180, ILMessageFilterQueryRequest_ptr);
    *(v21 + 64) = sub_100005C7C();
    *(v21 + 32) = a2;
    v31[0] = a3;
    v22 = a2;
    swift_errorRetain();
    sub_100003024(&qword_1000258A0, &qword_100019190);
    v23 = sub_100017FE4();
    v25 = v24;
    *(v21 + 96) = &type metadata for String;
    *(v21 + 104) = sub_1000030D0();
    *(v21 + 72) = v23;
    *(v21 + 80) = v25;
    sub_100017F14("Error handling request %@: %@", 29, 2, &_mh_execute_header, v19, v20, v21, v31[0]);

    v13 = 0;
  }

  v26 = *(a4 + 168);
  *(a4 + 168) = a1;
  v27 = v13;

  *(a4 + 176) = a3;
  swift_errorRetain();

  swift_beginAccess();
  sub_10000306C(a5 + 16, v31);
  v28 = v32;
  v29 = v33;
  sub_1000062DC(v31, v32);
  (*(v29 + 40))(v28, v29);
  return sub_1000034E0(v31);
}

uint64_t sub_1000058F8()
{
}

uint64_t sub_100005928()
{
  sub_1000034E0((v0 + 24));

  v1 = *(v0 + 168);

  return _swift_deallocClassInstance(v0, 184, 7);
}

void sub_1000059E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10000F9F0;
    v5[3] = &unk_100020ED8;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setDeferQueryRequestToNetwork:v4];
  _Block_release(v4);
}

uint64_t sub_100005A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100005B50;
  v8[3] = &unk_100020EB0;
  v6 = _Block_copy(v8);

  [v5 handleQueryRequest:a1 completion:v6];
  _Block_release(v6);
}

void sub_100005B50(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t type metadata accessor for QueryRequestOperation(uint64_t a1)
{
  result = qword_100025050;
  if (!qword_100025050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100005C7C()
{
  result = qword_100025870;
  if (!qword_100025870)
  {
    sub_100003C34(255, &qword_100025180, ILMessageFilterQueryRequest_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025870);
  }

  return result;
}

uint64_t sub_100005CE4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100005D30()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100005D84()
{
  sub_1000034E0((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100005DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003024(&qword_100025188, "6)");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005E2C(uint64_t a1)
{
  v2 = sub_100003024(&qword_100025188, "6)");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005E94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100017F24();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100017F44();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = sub_100003C34(0, &qword_100025180, ILMessageFilterQueryRequest_ptr);
  v24[4] = &off_100021D38;
  v24[0] = a1;
  v19 = *(a4 + 16);
  sub_10000306C(v24, v23);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a2;
  v15[4] = a3;
  sub_1000034C8(v23, (v15 + 5));
  aBlock[4] = sub_1000064E8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008EC8;
  aBlock[3] = &unk_100020E38;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  sub_100017F34();
  v21 = &_swiftEmptyArrayStorage;
  sub_1000061A0(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003024(&unk_100025890, &unk_1000198E0);
  sub_1000063F4();
  sub_1000180B4();
  sub_100018064();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);

  return sub_1000034E0(v24);
}

uint64_t sub_1000061A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000061E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100006228(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  sub_100005E94(v6, a1, a2, v5);
}

uint64_t sub_10000628C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *sub_1000062DC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100006320()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006374()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000063DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000063F4()
{
  result = qword_100025198;
  if (!qword_100025198)
  {
    sub_100006458(&unk_100025890, &unk_1000198E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025198);
  }

  return result;
}

uint64_t sub_100006458(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000064A0()
{

  sub_1000034E0((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000064F8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100006570(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100017F54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 56);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = sub_100017F64();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    swift_beginAccess();
    sub_100008F78(v3 + 16, &v27);
    if (v28)
    {
      sub_1000034C8(&v27, v29);
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = v30;
      v15 = v31;
      sub_10000628C(v29, v30);
      (*(v15 + 16))(sub_100009020, v13, v14, v15);
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = v30;
      v18 = v31;
      sub_10000628C(v29, v30);
      (*(v18 + 40))(sub_100009028, v16, v17, v18);
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = v30;
      v21 = v31;
      sub_10000628C(v29, v30);
      (*(v21 + 64))(sub_100009030, v19, v20, v21);
      v22 = v30;
      v23 = v31;
      sub_1000062DC(v29, v30);
      v24 = swift_allocObject();
      v24[2] = v3;
      v24[3] = a1;
      v24[4] = a2;
      v25 = *(v23 + 80);

      v25(&_swiftEmptyArrayStorage, sub_100009078, v24, v22, v23);

      return sub_1000034E0(v29);
    }

    else
    {
      return sub_1000036A4(&v27, &unk_100025800, qword_100019388);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000068BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100017F24();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100017F44();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16[1] = *(result + 56);
    v13 = result;
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v13;
    aBlock[4] = sub_10000959C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008EC8;
    aBlock[3] = &unk_100021188;
    v15 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    sub_100017F34();
    v16[2] = &_swiftEmptyArrayStorage;
    sub_1000061A0(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003024(&unk_100025890, &unk_1000198E0);
    sub_1000063F4();
    sub_1000180B4();
    sub_100018064();
    _Block_release(v15);
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_100006B9C(uint64_t a1, uint64_t a2)
{
  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v4 = qword_100025930;
  sub_100003024(&qword_100024E40, &unk_100019180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100018EA0;
  *&v16 = a1;
  swift_unknownObjectRetain();
  sub_100003024(&qword_100025270, &qword_1000193B0);
  v6 = sub_100017FE4();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000030D0();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v9 = sub_100018034();
  sub_100017F14("Request with requestIdentifier %@ completed", 43, 2, &_mh_execute_header, v4, v9, v5);

  swift_beginAccess();
  sub_100008F78(a2 + 16, &v16);
  v10 = *(&v17 + 1);
  result = sub_1000036A4(&v16, &unk_100025800, qword_100019388);
  if (v10)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    swift_beginAccess();
    sub_1000090FC(&v16, a2 + 16);
    swift_endAccess();
    v12 = *(a2 + 64);
    if (v12)
    {
      v13 = *(a2 + 72);

      v12(0);
      sub_100004884(v12, v13);
      v14 = *(a2 + 64);
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    return sub_100004884(v14, v15);
  }

  return result;
}

uint64_t sub_100006D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100017F24();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100017F44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17[1] = *(result + 56);
    v14 = result;
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = v14;
    aBlock[4] = sub_100009550;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008EC8;
    aBlock[3] = &unk_100021138;
    v16 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    swift_errorRetain();

    sub_100017F34();
    v17[2] = &_swiftEmptyArrayStorage;
    sub_1000061A0(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003024(&unk_100025890, &unk_1000198E0);
    sub_1000063F4();
    sub_1000180B4();
    sub_100018064();
    _Block_release(v16);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_10000706C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v5 = qword_100025930;
  sub_100003024(&qword_100024E40, &unk_100019180);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018F90;
  swift_unknownObjectRetain();
  sub_100003024(&qword_100025270, &qword_1000193B0);
  v7 = sub_100017FE4();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_1000030D0();
  *(v6 + 64) = v10;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *&v20 = a2;
  swift_errorRetain();
  sub_100003024(&qword_1000258A0, &qword_100019190);
  v11 = sub_100017FE4();
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 72) = v11;
  *(v6 + 80) = v12;
  v13 = sub_100018034();
  sub_100017F14("Request with requestIdentifier %@ was cancelled. Error: %@", 58, 2, &_mh_execute_header, v5, v13, v6);

  swift_beginAccess();
  sub_100008F78(a3 + 16, &v20);
  v14 = *(&v21 + 1);
  result = sub_1000036A4(&v20, &unk_100025800, qword_100019388);
  if (v14)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    swift_beginAccess();
    sub_1000090FC(&v20, a3 + 16);
    swift_endAccess();
    v16 = *(a3 + 64);
    if (v16)
    {
      v17 = *(a3 + 72);

      v16(a2);
      sub_100004884(v16, v17);
      v18 = *(a3 + 64);
    }

    else
    {
      v18 = 0;
    }

    v19 = *(a3 + 72);
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    return sub_100004884(v18, v19);
  }

  return result;
}

uint64_t sub_100007294(uint64_t a1, uint64_t a2)
{
  v3 = sub_100017F24();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100017F44();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15[1] = *(result + 56);
    v12 = result;
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v12;
    aBlock[4] = sub_100009500;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008EC8;
    aBlock[3] = &unk_1000210E8;
    v14 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    sub_100017F34();
    v15[2] = &_swiftEmptyArrayStorage;
    sub_1000061A0(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003024(&unk_100025890, &unk_1000198E0);
    sub_1000063F4();
    sub_1000180B4();
    sub_100018064();
    _Block_release(v14);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_100007574(uint64_t a1, uint64_t a2)
{
  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v4 = qword_100025930;
  v5 = sub_100018024();
  sub_100003024(&qword_100024E40, &unk_100019180);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018EA0;
  *&v17 = a1;
  swift_unknownObjectRetain();
  sub_100003024(&qword_100025270, &qword_1000193B0);
  v7 = sub_100017FE4();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000030D0();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_100017F14("Request with requestIdentifier %@ was interrupted", 49, 2, &_mh_execute_header, v4, v5, v6);

  swift_beginAccess();
  sub_100008F78(a2 + 16, &v17);
  v10 = *(&v18 + 1);
  result = sub_1000036A4(&v17, &unk_100025800, qword_100019388);
  if (v10)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    swift_beginAccess();
    sub_1000090FC(&v17, a2 + 16);
    swift_endAccess();
    v12 = *(a2 + 64);
    if (v12)
    {
      v13 = *(a2 + 72);
      type metadata accessor for ILMessageFilterPrivateError(0);
      sub_1000094EC(v12, v13);
      sub_100003360(&_swiftEmptyArrayStorage);
      sub_1000061A0(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);
      sub_100017E44();
      v14 = v17;
      v12(v17);
      sub_100004884(v12, v13);

      v15 = *(a2 + 64);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    return sub_100004884(v15, v16);
  }

  return result;
}

uint64_t sub_1000077D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100017F24();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100017F44();
  v14 = *(v21 - 8);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(a3 + 56);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a2;
  v17[5] = a1;
  v17[6] = a3;
  aBlock[4] = sub_1000090D4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008EC8;
  aBlock[3] = &unk_100021020;
  v18 = _Block_copy(aBlock);

  swift_errorRetain();
  swift_unknownObjectRetain();

  sub_100017F34();
  v22 = &_swiftEmptyArrayStorage;
  sub_1000061A0(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003024(&unk_100025890, &unk_1000198E0);
  sub_1000063F4();
  sub_1000180B4();
  sub_100018064();
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_100007AAC(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v8 = swift_unknownObjectRetain();
    v9 = sub_100007C7C(v8);
    v11 = v10;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
  }

  else
  {
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v12 = qword_100025930;
    v13 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100018EA0;
    swift_errorRetain();
    sub_100003024(&qword_1000258A0, &qword_100019190);
    v15 = sub_100017FE4();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_1000030D0();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_100017F14("NSExtension failed to begin. Error: %@", 38, 2, &_mh_execute_header, v12, v13, v14);

    v20 = 0;
    memset(v19, 0, sizeof(v19));
    swift_beginAccess();
    sub_1000090FC(v19, a5 + 16);
    swift_endAccess();
    v9 = 0;
    v11 = 0;
  }

  a1(v9, v11, a3);
  return swift_unknownObjectRelease_n();
}

uint64_t sub_100007C7C(uint64_t a1)
{
  v3 = sub_100003024(&qword_100025260, &qword_1000193A0);
  __chkstk_darwin(v3 - 8);
  v5 = v32 - v4;
  v6 = sub_100017F04();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  v8 = __chkstk_darwin(v6);
  v34 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v32 - v9;
  v11 = sub_100017F54();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v1 + 56);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = sub_100017F64();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    swift_beginAccess();
    sub_100008F78(v1 + 16, &v36);
    if (v37)
    {
      sub_1000034C8(&v36, v38);
      *&v36 = a1;
      swift_unknownObjectRetain();
      sub_100003024(&qword_100025268, &qword_1000193A8);
      v18 = swift_dynamicCast();
      v19 = v35;
      v20 = *(v35 + 56);
      if (v18)
      {
        v32[1] = v1;
        v20(v5, 0, 1, v6);
        v21 = *(v19 + 32);
        v21(v10, v5, v6);
        v22 = v39;
        v23 = v40;
        sub_1000062DC(v38, v39);
        v25 = (*(v23 + 88))(v10, v22, v23);
        if (v25)
        {
          v33 = v24;
          v32[0] = swift_getObjectType();
          v26 = swift_allocObject();
          swift_weakInit();
          v27 = v34;
          (*(v19 + 16))(v34, v10, v6);
          v28 = v19;
          v29 = (*(v19 + 80) + 24) & ~*(v19 + 80);
          v30 = swift_allocObject();
          *(v30 + 16) = v26;
          v21((v30 + v29), v27, v6);
          v31 = *(v33 + 16);

          v31(sub_100009230, v30, v32[0], v33);
          (*(v28 + 8))(v10, v6);
        }

        else
        {
          (*(v19 + 8))(v10, v6);
        }

        sub_1000034E0(v38);
      }

      else
      {
        v20(v5, 1, 1, v6);
        sub_1000036A4(v5, &qword_100025260, &qword_1000193A0);
        sub_1000034E0(v38);
        return 0;
      }
    }

    else
    {
      sub_1000036A4(&v36, &unk_100025800, qword_100019388);
      return 0;
    }

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008110(uint64_t a1, uint64_t a2)
{
  v3 = sub_100017F24();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100017F44();
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100017F04();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(result + 56);
    v21[0] = v3;
    v21[1] = v14;
    v15 = result;
    (*(v11 + 16))(v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v16 = v4;
    v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v18 = swift_allocObject();
    (*(v11 + 32))(v18 + v17, v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    *(v18 + ((v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
    aBlock[4] = sub_100009330;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008EC8;
    aBlock[3] = &unk_100021098;
    v19 = _Block_copy(aBlock);

    sub_100017F34();
    v24 = &_swiftEmptyArrayStorage;
    sub_1000061A0(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003024(&unk_100025890, &unk_1000198E0);
    sub_1000063F4();
    v20 = v21[0];
    sub_1000180B4();
    sub_100018064();
    _Block_release(v19);
    (*(v16 + 8))(v6, v20);
    (*(v22 + 8))(v9, v23);
  }

  return result;
}

uint64_t sub_1000084BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017F04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v8 = qword_100025930;
  v9 = sub_100018024();
  sub_100003024(&qword_100024E40, &unk_100019180);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100018EA0;
  (*(v5 + 16))(v7, a1, v4);
  v11 = sub_100017FE4();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_1000030D0();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_100017F14("Auxiliary connection for request with UUID %@ was invalidated", 61, 2, &_mh_execute_header, v8, v9, v10);

  swift_beginAccess();
  sub_100008F78(a2 + 16, &v22);
  v14 = *(&v23 + 1);
  result = sub_1000036A4(&v22, &unk_100025800, qword_100019388);
  if (v14)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    swift_beginAccess();
    sub_1000090FC(&v22, a2 + 16);
    swift_endAccess();
    v16 = *(a2 + 64);
    if (v16)
    {
      v17 = *(a2 + 72);
      type metadata accessor for ILMessageFilterPrivateError(0);
      v21[1] = 3;
      sub_1000094EC(v16, v17);
      sub_100003360(&_swiftEmptyArrayStorage);
      sub_1000061A0(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);
      sub_100017E44();
      v18 = v22;
      v16(v22);
      sub_100004884(v16, v17);

      v19 = *(a2 + 64);
    }

    else
    {
      v19 = 0;
    }

    v20 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    return sub_100004884(v19, v20);
  }

  return result;
}

uint64_t sub_10000879C()
{
  sub_1000036A4(v0 + 16, &unk_100025800, qword_100019388);

  sub_100004884(*(v0 + 64), *(v0 + 72));

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_1000087F4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 72);
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  return sub_100004884(v4, v5);
}

void sub_10000880C(unint64_t a1, void *a2, uint64_t a3)
{
  sub_1000088FC(a1);
  v6.super.isa = sub_100018004().super.isa;

  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100009728;
    v7[3] = &unk_1000211D8;
    a2 = _Block_copy(v7);
  }

  [v3 beginExtensionRequestWithInputItems:v6.super.isa completion:a2];
  _Block_release(a2);
}

char *sub_1000088FC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100018114();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_1000093BC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100018104();
        sub_10000968C();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1000093BC((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100003788(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10000968C();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1000093BC((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100003788(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_100008AC8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100008B74;
    v5[3] = &unk_100021250;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setRequestCompletionBlock:v4];
  _Block_release(v4);
}

uint64_t sub_100008B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = sub_100018014();
  }

  else
  {
    v4 = 0;
  }

  v5 = swift_unknownObjectRetain();
  v3(v5, v4);

  swift_unknownObjectRelease();
}

void sub_100008C04(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100009728;
    v5[3] = &unk_100021228;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setRequestCancellationBlock:v4];
  _Block_release(v4);
}

uint64_t sub_100008CB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_100008D34(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100008DE0;
    v5[3] = &unk_100021200;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setRequestInterruptionBlock:v4];
  _Block_release(v4);
}

uint64_t sub_100008DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_100008E64()
{
  v1 = *v0;
  isa = sub_100017EF4().super.isa;
  v3 = [v1 _extensionContextForUUID:isa];

  return v3;
}

uint64_t sub_100008EC8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100008F0C(void *a1, uint64_t a2)
{
  sub_1000095A4(a1, a2);

  return sub_100004884(a1, a2);
}

uint64_t sub_100008F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003024(&unk_100025800, qword_100019388);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008FE8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009038()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100009084()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000090E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000090FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003024(&unk_100025800, qword_100019388);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000916C()
{
  v1 = sub_100017F04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100009230()
{
  v1 = *(sub_100017F04() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100008110(v2, v3);
}

uint64_t sub_100009294()
{
  v1 = sub_100017F04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100009330()
{
  v1 = *(sub_100017F04() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000084BC(v0 + v2, v3);
}

char *sub_1000093BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000093DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000093DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003024(&qword_100025280, &qword_1000193B8);
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

uint64_t sub_1000094EC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100009508()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000955C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000095A4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 _auxiliaryConnection];
  if (v6)
  {
    v7 = v6;
    if (a1)
    {
      v8[4] = a1;
      v8[5] = a2;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_100008EC8;
      v8[3] = &unk_1000211B0;
      a1 = _Block_copy(v8);
    }

    [v7 setInvalidationHandler:a1];
    _Block_release(a1);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10000968C()
{
  result = qword_100025278;
  if (!qword_100025278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100025278);
  }

  return result;
}

uint64_t sub_10000972C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v7 = qword_100025930;
  sub_100003024(&qword_100024E40, &unk_100019180);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100018EA0;
  *(v8 + 56) = sub_10000A95C();
  *(v8 + 64) = sub_10000AFC0(&unk_100025860, sub_10000A95C, &protocol conformance descriptor for NSObject);
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_100018034();
  sub_100017F14("Performing request: %@", 22, 2, &_mh_execute_header, v7, v10, v8);

  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a2;
  v11[4] = a3;

  sub_10000CAB4(sub_10000A9E8, v11);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v3;
  v12[5] = v9;
  v13 = v9;

  sub_10000CE68(sub_10000AA3C, v12);
}

uint64_t sub_100009900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100017F24();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100017F44();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = *(a2 + 16);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  aBlock[4] = sub_10000B0A8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008EC8;
  aBlock[3] = &unk_100021438;
  v17 = _Block_copy(aBlock);
  swift_errorRetain();

  sub_100017F34();
  v19[1] = &_swiftEmptyArrayStorage;
  sub_10000AFC0(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003024(&unk_100025890, &unk_1000198E0);
  sub_1000063F4();
  sub_1000180B4();
  sub_100018064();
  _Block_release(v17);
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
}

uint64_t sub_100009BC4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v3 = a3;
  if (a1)
  {
    swift_errorRetain();
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v6 = qword_100025930;
    v7 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100018EA0;
    swift_errorRetain();
    sub_100003024(&qword_100024E60, &unk_100019270);
    v9 = sub_100017FE4();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_1000030D0();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    sub_100017F14("Error during extension request: %@", 34, 2, &_mh_execute_header, v6, v7, v8);

    v3 = a3;
  }

  v12 = *(a2 + 168);
  if (!v12)
  {
    swift_errorRetain();
    v12 = a1;
  }

  swift_errorRetain();
  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v13 = qword_100025930;
  sub_100003024(&qword_100024E40, &unk_100019180);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100018EA0;
  swift_errorRetain();
  sub_100003024(&qword_1000258A0, &qword_100019190);
  v15 = sub_100017FE4();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_1000030D0();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  v18 = sub_100018034();
  sub_100017F14("Calling completion with error: %@", 33, 2, &_mh_execute_header, v13, v18, v14);

  v3(v12);
}

void sub_100009E40(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void *a6)
{
  v10 = swift_allocObject();
  sub_10000AA80(a1, &v28);
  if (v29)
  {
    sub_1000034C8(&v28, v10 + 16);
    v11 = swift_allocObject();
    *(v11 + 16) = a5;
    *(v11 + 24) = a6;
    v12 = *(v10 + 40);
    v13 = *(v10 + 48);
    sub_10000628C(v10 + 16, v12);
    v14 = *(v13 + 16);

    v15 = a6;
    v14(sub_10000AE94, v11, v12, v13);
    sub_10000306C(v10 + 16, &v28);
    v16 = v29;
    v17 = v30;
    sub_1000062DC(&v28, v29);
    v18 = swift_allocObject();
    v18[2] = a5;
    v18[3] = v15;
    v18[4] = v10;
    v19 = *(v17 + 32);

    v20 = v15;

    v19(v20, sub_10000AF40, v18, v16, v17);

    sub_1000034E0(&v28);
  }

  else
  {
    sub_10000AAF0(&v28);
    swift_deallocUninitializedObject();
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v21 = qword_100025930;
    v22 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100018EA0;
    sub_10000AA80(a1, &v28);
    sub_100003024(&qword_1000253E0, "b)");
    v24 = sub_100017FE4();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_1000030D0();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_100017F14("hostContext %@ is not convertible to expected type", 50, 2, &_mh_execute_header, v21, v22, v23);

    type metadata accessor for ILMessageFilterPrivateError(0);
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_10000AFC0(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);
    sub_100017E44();
    v27 = v28;
    a3(v28);
  }
}

uint64_t sub_10000A178(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_100017F24();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100017F44();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(a2 + 16);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a3;
  v15[4] = a2;
  v15[5] = a4;
  aBlock[4] = sub_10000AF9C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008EC8;
  aBlock[3] = &unk_100021398;
  v16 = _Block_copy(aBlock);
  swift_errorRetain();
  v17 = a3;

  sub_100017F34();
  v21 = &_swiftEmptyArrayStorage;
  sub_10000AFC0(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003024(&unk_100025890, &unk_1000198E0);
  sub_1000063F4();
  sub_1000180B4();
  sub_100018064();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_10000A440(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v8 = qword_100025930;
    v9 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100018F90;
    *(v10 + 56) = sub_10000A95C();
    *(v10 + 64) = sub_10000AFC0(&unk_100025860, sub_10000A95C, &protocol conformance descriptor for NSObject);
    *(v10 + 32) = a2;
    v18[0] = a1;
    swift_errorRetain();
    v11 = a2;
    sub_100003024(&qword_100024E60, &unk_100019270);
    v12 = sub_100017FE4();
    v14 = v13;
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = sub_1000030D0();
    *(v10 + 72) = v12;
    *(v10 + 80) = v14;
    sub_100017F14("Error handling request %@: %@", 29, 2, &_mh_execute_header, v8, v9, v10, v18[0]);
  }

  *(a3 + 168) = a1;
  swift_errorRetain();

  swift_beginAccess();
  sub_10000306C(a4 + 16, v18);
  v15 = v19;
  v16 = v20;
  sub_1000062DC(v18, v19);
  (*(v16 + 40))(v15, v16);
  return sub_1000034E0(v18);
}

uint64_t sub_10000A650()
{
  sub_1000034E0((v0 + 24));

  return _swift_deallocClassInstance(v0, 176, 7);
}

void sub_10000A6F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10000F9F0;
    v5[3] = &unk_100021488;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setDeferReportRequestToNetwork:v4];
  _Block_release(v4);
}

uint64_t sub_10000A7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10000A860;
  v8[3] = &unk_100021460;
  v6 = _Block_copy(v8);

  [v5 handleReportRequest:a1 completion:v6];
  _Block_release(v6);
}

void sub_10000A860(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t type metadata accessor for ReportRequestOperation(uint64_t a1)
{
  result = qword_1000252B0;
  if (!qword_1000252B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000A95C()
{
  result = qword_1000253D8;
  if (!qword_1000253D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000253D8);
  }

  return result;
}

uint64_t sub_10000A9A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A9F4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000AA48()
{
  sub_1000034E0((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000AA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003024(&qword_1000253E0, "b)");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AAF0(uint64_t a1)
{
  v2 = sub_100003024(&qword_1000253E0, "b)");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000AB58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100017F24();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100017F44();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = sub_10000A95C();
  v24[4] = &off_100021D78;
  v24[0] = a1;
  v19 = *(a4 + 16);
  sub_10000306C(v24, v23);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a2;
  v15[4] = a3;
  sub_1000034C8(v23, (v15 + 5));
  aBlock[4] = sub_10000B050;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008EC8;
  aBlock[3] = &unk_1000213E8;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  sub_100017F34();
  v21 = &_swiftEmptyArrayStorage;
  sub_10000AFC0(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003024(&unk_100025890, &unk_1000198E0);
  sub_1000063F4();
  sub_1000180B4();
  sub_100018064();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);

  return sub_1000034E0(v24);
}

uint64_t sub_10000AE54()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10000AE94(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  sub_10000AB58(v6, a1, a2, v5);
}

uint64_t sub_10000AEF8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000AF4C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000AFA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000AFC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000B008()
{

  sub_1000034E0((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10000B060()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000B0E4(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a2 + 8) + 8))(a1);
  v3 = sub_10000B130(v2);

  return v3;
}

uint64_t sub_10000B130(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003024(&qword_1000254A8, &unk_100019640);
    v2 = sub_100018144();
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000CA2C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100003788(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100003788(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100003788(v31, v32);
    result = sub_1000180D4(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
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
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100003788(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_10000B464()
{
  v1 = [*v0 jsonDictionary];
  if (v1)
  {
    v2 = v1;
    v3 = sub_100017F84();

    return v3;
  }

  else
  {

    return sub_100003360(&_swiftEmptyArrayStorage);
  }
}

double sub_10000B514@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100003124(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000C1D4();
      v10 = v12;
    }

    sub_100003788((*(v10 + 56) + 32 * v8), a3);
    sub_10000BB30(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_10000B5B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003024(&qword_100024E70, &unk_100018F80);
  v33 = v4;
  result = sub_100018134();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100003788(v24, v34);
      }

      else
      {
        sub_10000CA2C(v24, v34);
      }

      sub_1000181B4();
      sub_100017FF4();
      result = sub_1000181C4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100003788(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10000B870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003024(&qword_1000254A0, &qword_100019638);
  v37 = v4;
  result = sub_100018134();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1000181B4();
      sub_100017FF4();
      result = sub_1000181C4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10000BB30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000180C4() + 1) & ~v5;
    do
    {
      sub_1000181B4();

      sub_100017FF4();
      v10 = sub_1000181C4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000BCE0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000180C4() + 1) & ~v5;
    do
    {
      sub_1000181B4();

      sub_100017FF4();
      v9 = sub_1000181C4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_10000BE90(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100003124(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10000C1D4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000B5B8(v16, a4 & 1);
    v11 = sub_100003124(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_100018174();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_1000034E0(v22);

    return sub_100003788(a1, v22);
  }

  else
  {
    sub_10000C168(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_10000BFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100003124(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10000B870(v18, a5 & 1);
      v13 = sub_100003124(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_100018174();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10000C378();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

_OWORD *sub_10000C168(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100003788(a4, (a5[7] + 32 * a1));
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

void *sub_10000C1D4()
{
  v1 = v0;
  sub_100003024(&qword_100024E70, &unk_100018F80);
  v2 = *v0;
  v3 = sub_100018124();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000CA2C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100003788(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10000C378()
{
  v1 = v0;
  sub_100003024(&qword_1000254A0, &qword_100019638);
  v2 = *v0;
  v3 = sub_100018124();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10000C4F0(uint64_t a1, uint64_t a2)
{
  v10 = &_swiftEmptyDictionarySingleton;
  if (a2)
  {
    v7 = &type metadata for String;
    *&v6 = a1;
    *(&v6 + 1) = a2;
    sub_100003788(&v6, &v8);
    v2 = v9;
  }

  else
  {
    v3 = [objc_allocWithZone(NSNull) init];
    v2 = sub_10000C978();
    v9 = v2;
    *&v8 = v3;
  }

  if (v2)
  {
    sub_100003788(&v8, &v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000BE90(&v6, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    return &_swiftEmptyDictionarySingleton;
  }

  else
  {

    sub_10000C9C4(&v8);
    sub_10000B514(0x6E6F6973726576, 0xE700000000000000, &v6);
    sub_10000C9C4(&v6);
    return v10;
  }
}

uint64_t sub_10000C604(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100003024(&qword_100024E68, &unk_100018F70);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6E6F69737265765FLL;
  *(inited + 16) = xmmword_100019490;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 1;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = 7368801;
  *(inited + 88) = 0xE300000000000000;
  v7 = sub_10000C4F0(a2, a3);
  *(inited + 120) = sub_100003024(&qword_100025480, &qword_100019610);
  *(inited + 96) = v7;
  v8 = a1[3];
  v9 = a1[4];
  sub_1000062DC(a1, v8);
  *(inited + 128) = (*(v9 + 16))(v8, v9);
  *(inited + 136) = v10;
  v11 = a1[3];
  v12 = a1[4];
  sub_1000062DC(a1, v11);
  v13 = (*(v12 + 24))(v11, v12);
  *(inited + 168) = sub_100003024(&qword_100025488, &qword_100019618);
  *(inited + 144) = v13;
  sub_100003360(inited);
  swift_setDeallocating();
  sub_100003024(&qword_100025830, &qword_100019620);
  swift_arrayDestroy();
  v14 = objc_opt_self();
  isa = sub_100017F74().super.isa;

  v28 = 0;
  v16 = [v14 dataWithJSONObject:isa options:0 error:&v28];

  v17 = v28;
  if (v16)
  {
    v18 = sub_100017EE4();
  }

  else
  {
    v19 = v17;
    v20 = sub_100017E64();

    swift_willThrow();
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v21 = qword_100025930;
    v22 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100018EA0;
    v28 = v20;
    swift_errorRetain();
    sub_100003024(&qword_100024E60, &unk_100019270);
    v24 = sub_100017FC4();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_1000030D0();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_100017F14("JSON serialization of the query request failed: %@", 50, 2, &_mh_execute_header, v21, v22, v23);

    return 0;
  }

  return v18;
}

unint64_t sub_10000C978()
{
  result = qword_100025490;
  if (!qword_100025490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100025490);
  }

  return result;
}

uint64_t sub_10000C9C4(uint64_t a1)
{
  v2 = sub_100003024(&qword_100025498, &unk_100019628);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000CA2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000CADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[0] = a5;
  v9 = sub_100017F24();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100017F44();
  v13 = *(v20 - 8);
  __chkstk_darwin(v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v5 + 16);
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008EC8;
  aBlock[3] = v19[0];
  v17 = _Block_copy(aBlock);

  sub_1000094EC(a1, a2);
  sub_100017F34();
  v21 = &_swiftEmptyArrayStorage;
  sub_100011214(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003024(&unk_100025890, &unk_1000198E0);
  sub_1000063F4();
  sub_1000180B4();
  sub_100018064();
  _Block_release(v17);
  sub_100004884(a1, a2);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v20);
}

uint64_t sub_10000CD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  sub_10000628C(a1 + 24, v6);
  v8 = *(v7 + 16);
  sub_1000094EC(a2, a3);
  v8(a2, a3, v6, v7);
  return swift_endAccess();
}

uint64_t sub_10000CE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a5;
  v7 = v5;
  v10 = sub_100017F24();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100017F44();
  v14 = *(v21 - 8);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v7 + 16);
  v17 = swift_allocObject();
  v17[2] = v7;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008EC8;
  aBlock[3] = v20[0];
  v18 = _Block_copy(aBlock);

  sub_100017F34();
  v22 = &_swiftEmptyArrayStorage;
  sub_100011214(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003024(&unk_100025890, &unk_1000198E0);
  sub_1000063F4();
  sub_1000180B4();
  sub_100018064();
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_10000D13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v9 = qword_100025930;
  sub_100003024(&qword_100024E40, &unk_100019180);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100018EA0;
  swift_beginAccess();
  sub_10000306C(a1 + 24, v18);
  sub_10000306C(v18, v17);
  sub_100003024(&qword_100025610, " #");
  v11 = sub_100017FE4();
  v13 = v12;
  sub_1000034E0(v18);
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_1000030D0();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v14 = sub_100018034();
  sub_100017F14("Attempting to launch extension request: %@", 42, 2, &_mh_execute_header, v9, v14, v10);

  sub_10000306C(a1 + 24, v18);
  sub_1000062DC(v18, v18[3]);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  sub_100006570(a5, v15);

  return sub_1000034E0(v18);
}

uint64_t sub_10000D300(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, void))
{
  v17 = a1;
  v18 = a2;
  swift_unknownObjectRetain();
  sub_100003024(&qword_100025618, &qword_100019718);
  sub_100003024(&qword_100025650, &unk_100019750);
  if (swift_dynamicCast())
  {
    sub_1000034C8(v15, v19);
    sub_10000306C(v19, v15);
    a4(v15, 0);
    sub_1000036A4(v15, &qword_100025188, "6)");
    return sub_1000034E0(v19);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_1000036A4(v15, &qword_100025188, "6)");
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v8 = qword_100025930;
    v9 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100018EA0;
    *&v19[0] = a1;
    *(&v19[0] + 1) = a2;
    swift_unknownObjectRetain();
    v11 = sub_100017FE4();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1000030D0();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100017F14("hostContext %@ is not convertible to expected type", 50, 2, &_mh_execute_header, v8, v9, v10);

    v20 = 0;
    memset(v19, 0, sizeof(v19));
    type metadata accessor for ILMessageFilterPrivateError(0);
    v17 = 0;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100011214(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);
    sub_100017E44();
    v14 = *&v15[0];
    a4(v19, *&v15[0]);

    return sub_1000036A4(v19, &qword_100025188, "6)");
  }
}

uint64_t sub_10000D594(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, void))
{
  v17 = a1;
  v18 = a2;
  swift_unknownObjectRetain();
  sub_100003024(&qword_100025618, &qword_100019718);
  sub_100003024(&qword_100025648, &unk_100019740);
  if (swift_dynamicCast())
  {
    sub_1000034C8(v15, v19);
    sub_10000306C(v19, v15);
    a4(v15, 0);
    sub_1000036A4(v15, &qword_1000253E0, "b)");
    return sub_1000034E0(v19);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_1000036A4(v15, &qword_1000253E0, "b)");
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v8 = qword_100025930;
    v9 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100018EA0;
    *&v19[0] = a1;
    *(&v19[0] + 1) = a2;
    swift_unknownObjectRetain();
    v11 = sub_100017FE4();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1000030D0();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100017F14("hostContext %@ is not convertible to expected type", 50, 2, &_mh_execute_header, v8, v9, v10);

    v20 = 0;
    memset(v19, 0, sizeof(v19));
    type metadata accessor for ILMessageFilterPrivateError(0);
    v17 = 0;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100011214(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);
    sub_100017E44();
    v14 = *&v15[0];
    a4(v19, *&v15[0]);

    return sub_1000036A4(v19, &qword_1000253E0, "b)");
  }
}

uint64_t sub_10000D828(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, void))
{
  v17 = a1;
  v18 = a2;
  swift_unknownObjectRetain();
  sub_100003024(&qword_100025618, &qword_100019718);
  sub_100003024(&qword_100025620, &qword_100019720);
  if (swift_dynamicCast())
  {
    sub_1000034C8(v15, v19);
    sub_10000306C(v19, v15);
    a4(v15, 0);
    sub_1000036A4(v15, &qword_100025628, &qword_100019728);
    return sub_1000034E0(v19);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_1000036A4(v15, &qword_100025628, &qword_100019728);
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v8 = qword_100025930;
    v9 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100018EA0;
    *&v19[0] = a1;
    *(&v19[0] + 1) = a2;
    swift_unknownObjectRetain();
    v11 = sub_100017FE4();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1000030D0();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100017F14("hostContext %@ is not convertible to expected type", 50, 2, &_mh_execute_header, v8, v9, v10);

    v20 = 0;
    memset(v19, 0, sizeof(v19));
    type metadata accessor for ILMessageFilterPrivateError(0);
    v17 = 0;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100011214(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);
    sub_100017E44();
    v14 = *&v15[0];
    a4(v19, *&v15[0]);

    return sub_1000036A4(v19, &qword_100025628, &qword_100019728);
  }
}

void sub_10000DAFC(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a5;
  v69 = a6;
  v67 = a4;
  v70 = a2;
  v71 = a3;
  __chkstk_darwin(v7 - 8);
  v9 = &v54 - v8;
  v10 = sub_100017EC4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = __chkstk_darwin(v13);
  v16 = &v54 - v15;
  __chkstk_darwin(v14);
  v18 = &v54 - v17;
  sub_10000FB0C(v9);
  v65 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v18;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_8:
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v43 = qword_100025930;
    v44 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100018EA0;
    v46 = *(a1 + 80);
    v47 = *(a1 + 112);
    v79 = *(a1 + 96);
    v80 = v47;
    v48 = *(a1 + 112);
    v81 = *(a1 + 128);
    v49 = *(a1 + 80);
    v78[0] = *(a1 + 64);
    v78[1] = v49;
    v75 = v79;
    v76 = v48;
    v77 = *(a1 + 128);
    v73 = v78[0];
    v74 = v46;
    sub_10000481C(v78, v72);
    v50 = sub_100017FE4();
    v52 = v51;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = sub_1000030D0();
    *(v45 + 32) = v50;
    *(v45 + 40) = v52;
    sub_100017F14("No network URL found for extension %@", 37, 2, &_mh_execute_header, v43, v44, v45);

    type metadata accessor for ILMessageFilterError(0);
    v72[0] = 2;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100011214(&qword_100024D50, type metadata accessor for ILMessageFilterError, &unk_100018C34);
    sub_100017E44();
    v53 = v73;
    v70(0, v73);

    return;
  }

  v19 = v11;
  v20 = v10;
  v21 = v11 + 32;
  v22 = *(v11 + 32);
  (v22)(v16, v9, v20);
  v23 = sub_100017E94();
  if (!v24)
  {
    (*(v11 + 8))(v16, v20);
    goto LABEL_8;
  }

  v25 = v24;
  v64 = v23;
  v26 = v22;
  v27 = v66;
  v62 = v26;
  v26();
  v28 = qword_100024C80;

  v63 = v25;
  v61 = v21;
  if (v28 != -1)
  {
    swift_once();
  }

  v60 = qword_100025930;
  sub_100003024(&qword_100024E40, &unk_100019180);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100018EA0;
  v56 = *(v19 + 16);
  v30 = v65;
  v56(v65, v27, v20);
  v31 = sub_100017FE4();
  v59 = v19;
  v55 = v20;
  v33 = v32;
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = sub_1000030D0();
  *(v29 + 32) = v31;
  *(v29 + 40) = v33;
  v34 = sub_100018034();
  sub_100017F14("Using URL %@ for network request", 32, 2, &_mh_execute_header, v60, v34, v29);

  v60 = *(a1 + 152);
  v35 = *(a1 + 64);
  v57 = *(a1 + 72);
  v58 = v35;
  sub_10000306C(v67, v78);
  v36 = v55;
  v56(v30, v66, v55);
  v37 = (*(v19 + 80) + 96) & ~*(v19 + 80);
  v38 = swift_allocObject();
  v39 = v63;
  v40 = v64;
  v38[2] = a1;
  v38[3] = v40;
  v41 = v70;
  v42 = v71;
  v38[4] = v39;
  v38[5] = v41;
  v38[6] = v42;
  sub_1000034C8(v78, (v38 + 7));
  (v62)(v38 + v37, v30, v36);

  v60(v58, v57, v40, v39, v69, v38);

  (*(v59 + 8))(v66, v36);
}

void sub_10000E21C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v45 = a7;
  v46 = a8;
  v47 = a3;
  v48 = a4;
  v15 = sub_100017F24();
  v52 = *(v15 - 8);
  __chkstk_darwin(v15);
  v50 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100017F44();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100017EC4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  if (a1)
  {
    v44 = a11;
    v43 = a10;
    v42 = a9;
    v22 = a2;
    v48 = *(a2 + 16);
    sub_10000306C(v45, v55);
    (*(v20 + 16))(&v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v46, v19);
    v23 = *(v20 + 80);
    v47 = v15;
    v24 = a6;
    v25 = (v23 + 80) & ~v23;
    v26 = swift_allocObject();
    *(v26 + 2) = v22;
    *(v26 + 3) = a5;
    *(v26 + 4) = v24;
    sub_1000034C8(v55, (v26 + 40));
    (*(v20 + 32))(&v26[v25], &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
    aBlock[4] = v43;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008EC8;
    aBlock[3] = v44;
    v27 = _Block_copy(aBlock);

    sub_100017F34();
    v53 = &_swiftEmptyArrayStorage;
    sub_100011214(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003024(&unk_100025890, &unk_1000198E0);
    sub_1000063F4();
    v28 = v50;
    v29 = v47;
    sub_1000180B4();
    sub_100018064();
    _Block_release(v27);
    (*(v52 + 8))(v28, v29);
    (*(v49 + 8))(v18, v51);
  }

  else
  {
    v30 = a2;
    v31 = a5;
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v32 = qword_100025930;
    v33 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100018F90;
    v35 = v30;
    v36 = *(v30 + 64);
    v37 = *(v35 + 72);
    *(v34 + 56) = &type metadata for String;
    v38 = sub_1000030D0();
    *(v34 + 32) = v36;
    *(v34 + 40) = v37;
    *(v34 + 96) = &type metadata for String;
    *(v34 + 104) = v38;
    v39 = v47;
    v40 = v48;
    *(v34 + 64) = v38;
    *(v34 + 72) = v39;
    *(v34 + 80) = v40;

    sub_100017F14("Extension's containing app (appID %@) unauthorized to defer requests to host %@", 79, 2, &_mh_execute_header, v32, v33, v34);

    type metadata accessor for ILMessageFilterError(0);
    *&v55[0] = 3;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100011214(&qword_100024D50, type metadata accessor for ILMessageFilterError, &unk_100018C34);
    sub_100017E44();
    v41 = aBlock[0];
    v31(0, aBlock[0]);
  }
}

void sub_10000E76C(void *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a3;
  v9 = sub_100017F24();
  v47 = *(v9 - 8);
  __chkstk_darwin(v9);
  v49 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100017F44();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100017EC4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[18];
  v18 = *(v17 + 16);
  if (v18)
  {
    v43 = a2;
    v19 = v18;
    v44 = v18;
    v20 = *(v17 + 24);
    v42 = v12;
    v46 = v20;

    v45 = v9;
    v19(v56, v21);
    v22 = sub_1000062DC(v56, v56[3]);
    v23 = a1[11];
    v41 = a1[10];
    v40 = v23;
    v24 = a1[13];
    v39 = a1[12];
    sub_10000306C(a4, v55);
    v25 = swift_allocObject();
    sub_1000034C8(v55, v25 + 16);
    v26 = v51;
    *(v25 + 56) = v43;
    *(v25 + 64) = v26;
    v43 = *(*v22 + 16);
    sub_10000306C(a4, v54);
    (*(v14 + 16))(&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13);
    v27 = (*(v14 + 80) + 88) & ~*(v14 + 80);
    v28 = (v15 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    sub_1000034C8(v54, (v29 + 16));
    *(v29 + 7) = sub_100011FB8;
    *(v29 + 8) = v25;
    *(v29 + 9) = v39;
    *(v29 + 10) = v24;
    (*(v14 + 32))(&v29[v27], v16, v13);
    v30 = &v29[v28];
    v31 = v40;
    *v30 = v41;
    *(v30 + 1) = v31;
    aBlock[4] = sub_100011FDC;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008EC8;
    aBlock[3] = &unk_100021C08;
    v32 = _Block_copy(aBlock);

    v33 = v42;
    sub_100017F34();
    v52 = &_swiftEmptyArrayStorage;
    sub_100011214(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003024(&unk_100025890, &unk_1000198E0);
    sub_1000063F4();
    v34 = v49;
    v35 = v45;
    sub_1000180B4();
    sub_100018064();
    _Block_release(v32);
    sub_100004884(v44, v46);

    (*(v47 + 8))(v34, v35);
    (*(v48 + 8))(v33, v50);

    sub_1000034E0(v56);
  }

  else
  {
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v36 = qword_100025930;
    v37 = sub_100018024();
    sub_100017F14("Extension is no longer eligible to defer request to network", 59, 2, &_mh_execute_header, v36, v37, &_swiftEmptyArrayStorage);
    type metadata accessor for ILMessageFilterError(0);
    v56[0] = 5;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100011214(&qword_100024D50, type metadata accessor for ILMessageFilterError, &unk_100018C34);
    sub_100017E44();
    v38 = aBlock[0];
    a2(0, aBlock[0]);
  }
}

void sub_10000ED98(void *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a3;
  v9 = sub_100017F24();
  v47 = *(v9 - 8);
  __chkstk_darwin(v9);
  v49 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100017F44();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100017EC4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[18];
  v18 = *(v17 + 16);
  if (v18)
  {
    v43 = a2;
    v19 = v18;
    v44 = v18;
    v20 = *(v17 + 24);
    v42 = v12;
    v46 = v20;

    v45 = v9;
    v19(v56, v21);
    v22 = sub_1000062DC(v56, v56[3]);
    v23 = a1[11];
    v41 = a1[10];
    v40 = v23;
    v24 = a1[13];
    v39 = a1[12];
    sub_10000306C(a4, v55);
    v25 = swift_allocObject();
    sub_1000034C8(v55, v25 + 16);
    v26 = v51;
    *(v25 + 56) = v43;
    *(v25 + 64) = v26;
    v43 = *(*v22 + 16);
    sub_10000306C(a4, v54);
    (*(v14 + 16))(&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13);
    v27 = (*(v14 + 80) + 88) & ~*(v14 + 80);
    v28 = (v15 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    sub_1000034C8(v54, (v29 + 16));
    *(v29 + 7) = sub_100011FB8;
    *(v29 + 8) = v25;
    *(v29 + 9) = v39;
    *(v29 + 10) = v24;
    (*(v14 + 32))(&v29[v27], v16, v13);
    v30 = &v29[v28];
    v31 = v40;
    *v30 = v41;
    *(v30 + 1) = v31;
    aBlock[4] = sub_100011FDC;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008EC8;
    aBlock[3] = &unk_100021A50;
    v32 = _Block_copy(aBlock);

    v33 = v42;
    sub_100017F34();
    v52 = &_swiftEmptyArrayStorage;
    sub_100011214(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003024(&unk_100025890, &unk_1000198E0);
    sub_1000063F4();
    v34 = v49;
    v35 = v45;
    sub_1000180B4();
    sub_100018064();
    _Block_release(v32);
    sub_100004884(v44, v46);

    (*(v47 + 8))(v34, v35);
    (*(v48 + 8))(v33, v50);

    sub_1000034E0(v56);
  }

  else
  {
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v36 = qword_100025930;
    v37 = sub_100018024();
    sub_100017F14("Extension is no longer eligible to defer request to network", 59, 2, &_mh_execute_header, v36, v37, &_swiftEmptyArrayStorage);
    type metadata accessor for ILMessageFilterError(0);
    v56[0] = 5;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100011214(&qword_100024D50, type metadata accessor for ILMessageFilterError, &unk_100018C34);
    sub_100017E44();
    v38 = aBlock[0];
    a2(0, aBlock[0]);
  }
}

void sub_10000F3C4(void *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a3;
  v9 = sub_100017F24();
  v47 = *(v9 - 8);
  __chkstk_darwin(v9);
  v49 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100017F44();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100017EC4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[18];
  v18 = *(v17 + 16);
  if (v18)
  {
    v43 = a2;
    v19 = v18;
    v44 = v18;
    v20 = *(v17 + 24);
    v42 = v12;
    v46 = v20;

    v45 = v9;
    v19(v56, v21);
    v22 = sub_1000062DC(v56, v56[3]);
    v23 = a1[11];
    v41 = a1[10];
    v40 = v23;
    v24 = a1[13];
    v39 = a1[12];
    sub_10000306C(a4, v55);
    v25 = swift_allocObject();
    sub_1000034C8(v55, v25 + 16);
    v26 = v51;
    *(v25 + 56) = v43;
    *(v25 + 64) = v26;
    v43 = *(*v22 + 16);
    sub_10000306C(a4, v54);
    (*(v14 + 16))(&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13);
    v27 = (*(v14 + 80) + 88) & ~*(v14 + 80);
    v28 = (v15 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    sub_1000034C8(v54, (v29 + 16));
    *(v29 + 7) = sub_100011840;
    *(v29 + 8) = v25;
    *(v29 + 9) = v39;
    *(v29 + 10) = v24;
    (*(v14 + 32))(&v29[v27], v16, v13);
    v30 = &v29[v28];
    v31 = v40;
    *v30 = v41;
    *(v30 + 1) = v31;
    aBlock[4] = sub_10001184C;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008EC8;
    aBlock[3] = &unk_100021848;
    v32 = _Block_copy(aBlock);

    v33 = v42;
    sub_100017F34();
    v52 = &_swiftEmptyArrayStorage;
    sub_100011214(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003024(&unk_100025890, &unk_1000198E0);
    sub_1000063F4();
    v34 = v49;
    v35 = v45;
    sub_1000180B4();
    sub_100018064();
    _Block_release(v32);
    sub_100004884(v44, v46);

    (*(v47 + 8))(v34, v35);
    (*(v48 + 8))(v33, v50);

    sub_1000034E0(v56);
  }

  else
  {
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v36 = qword_100025930;
    v37 = sub_100018024();
    sub_100017F14("Extension is no longer eligible to defer request to network", 59, 2, &_mh_execute_header, v36, v37, &_swiftEmptyArrayStorage);
    type metadata accessor for ILMessageFilterError(0);
    v56[0] = 5;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100011214(&qword_100024D50, type metadata accessor for ILMessageFilterError, &unk_100018C34);
    sub_100017E44();
    v38 = aBlock[0];
    a2(0, aBlock[0]);
  }
}

uint64_t sub_10000F9F0(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_100011F70, v4);
}

void sub_10000FA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_100017E54();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_10000FB0C@<X0>(uint64_t a2@<X8>)
{
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_100017EC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v10)
  {
    return (*(v7 + 56))(a2, 1, 1, v6);
  }

  sub_100017EB4();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    type metadata accessor for ILMessageFilterError(0);
    v21 = 2;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100011214(&qword_100024D50, type metadata accessor for ILMessageFilterError, &unk_100018C34);
    sub_100017E44();
    return swift_willThrow();
  }

  v12 = *(v7 + 32);
  v12(v9, v5, v6);
  sub_100017EA4();
  if (!v13)
  {
    goto LABEL_11;
  }

  v20 = v12;
  v14 = sub_100017FD4();
  v16 = v15;

  if (v14 == 0x7370747468 && v16 == 0xE500000000000000)
  {

    v19 = v20;
  }

  else
  {
    v18 = sub_100018164();

    v19 = v20;
    if ((v18 & 1) == 0)
    {
LABEL_11:
      type metadata accessor for ILMessageFilterError(0);
      v21 = 2;
      sub_100003360(&_swiftEmptyArrayStorage);
      sub_100011214(&qword_100024D50, type metadata accessor for ILMessageFilterError, &unk_100018C34);
      sub_100017E44();
      swift_willThrow();
      return (*(v7 + 8))(v9, v6);
    }
  }

  v19(a2, v9, v6);
  return (*(v7 + 56))(a2, 0, 1, v6);
}

uint64_t sub_10000FE74(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v7 = qword_100025930;
  sub_100003024(&qword_100024E40, &unk_100019180);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100018EA0;
  *(v8 + 56) = sub_100003C34(0, &unk_1000257C0, ILMessageFilterCapabilitiesQueryRequest_ptr);
  *(v8 + 64) = sub_1000110F4();
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_100018034();
  sub_100017F14("Performing request: %@", 22, 2, &_mh_execute_header, v7, v10, v8);

  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a2;
  v11[4] = a3;

  sub_10000CADC(sub_100011160, v11, &unk_100021880, sub_100011850, &unk_100021898);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v3;
  v12[5] = v9;
  v13 = v9;

  sub_10000CE90(sub_1000111B4, v12, &unk_100021600, sub_1000111C0, &unk_100021618);
}

uint64_t sub_100010070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100017F24();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100017F44();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = *(a2 + 16);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  aBlock[4] = sub_1000118B8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008EC8;
  aBlock[3] = &unk_1000218E8;
  v17 = _Block_copy(aBlock);
  swift_errorRetain();

  sub_100017F34();
  v19[1] = &_swiftEmptyArrayStorage;
  sub_100011214(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003024(&unk_100025890, &unk_1000198E0);
  sub_1000063F4();
  sub_1000180B4();
  sub_100018064();
  _Block_release(v17);
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
}

uint64_t sub_100010334(void *a1, uint64_t a2, void (*a3)(void *, void *))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v5 = qword_100025930;
    v6 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100018EA0;
    swift_errorRetain();
    sub_100003024(&qword_100024E60, &unk_100019270);
    v8 = sub_100017FE4();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_1000030D0();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_100017F14("Error during extension request: %@", 34, 2, &_mh_execute_header, v5, v6, v7);
  }

  v11 = *(a2 + 176);
  if (!v11)
  {
    swift_errorRetain();
    v11 = a1;
  }

  swift_errorRetain();
  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v12 = qword_100025930;
  sub_100003024(&qword_100024E40, &unk_100019180);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100018F90;
  v14 = *(a2 + 168);
  sub_100003024(&qword_100025640, &unk_100019730);
  v15 = sub_100017FE4();
  v17 = v16;
  *(v13 + 56) = &type metadata for String;
  v18 = sub_1000030D0();
  *(v13 + 64) = v18;
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  swift_errorRetain();
  sub_100003024(&qword_1000258A0, &qword_100019190);
  v19 = sub_100017FE4();
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v18;
  *(v13 + 72) = v19;
  *(v13 + 80) = v20;
  v21 = sub_100018034();
  sub_100017F14("Calling completion with response: %@ error: %@", 46, 2, &_mh_execute_header, v12, v21, v13);

  v22 = *(a2 + 168);
  v23 = v22;
  a3(v22, v11);
}

void sub_1000105E0(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, void *a6)
{
  v10 = swift_allocObject();
  sub_1000115A8(a1, &v28);
  if (v29)
  {
    sub_1000034C8(&v28, v10 + 16);
    v11 = swift_allocObject();
    *(v11 + 16) = a5;
    *(v11 + 24) = a6;
    v12 = *(v10 + 40);
    v13 = *(v10 + 48);
    sub_10000628C(v10 + 16, v12);
    v14 = *(v13 + 16);

    v15 = a6;
    v14(sub_100011658, v11, v12, v13);
    sub_10000306C(v10 + 16, &v28);
    v16 = v29;
    v17 = v30;
    sub_1000062DC(&v28, v29);
    v18 = swift_allocObject();
    v18[2] = a5;
    v18[3] = v15;
    v18[4] = v10;
    v19 = *(v17 + 32);

    v20 = v15;

    v19(v20, sub_100011704, v18, v16, v17);

    sub_1000034E0(&v28);
  }

  else
  {
    sub_1000036A4(&v28, &qword_100025628, &qword_100019728);
    swift_deallocUninitializedObject();
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v21 = qword_100025930;
    v22 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100018EA0;
    sub_1000115A8(a1, &v28);
    sub_100003024(&qword_100025628, &qword_100019728);
    v24 = sub_100017FE4();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_1000030D0();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_100017F14("hostContext %@ is not convertible to expected type", 50, 2, &_mh_execute_header, v21, v22, v23);

    type metadata accessor for ILMessageFilterPrivateError(0);
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100011214(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);
    sub_100017E44();
    v27 = v28;
    a3(0, v28);
  }
}

uint64_t sub_10001092C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_100017F24();
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100017F44();
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a3 + 16);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a4;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a5;
  aBlock[4] = sub_100011768;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008EC8;
  aBlock[3] = &unk_100021708;
  v17 = _Block_copy(aBlock);
  v18 = a1;
  v19 = a4;
  swift_errorRetain();

  sub_100017F34();
  v24 = &_swiftEmptyArrayStorage;
  sub_100011214(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003024(&unk_100025890, &unk_1000198E0);
  sub_1000063F4();
  sub_1000180B4();
  sub_100018064();
  _Block_release(v17);
  (*(v23 + 8))(v12, v10);
  (*(v13 + 8))(v15, v22);
}

uint64_t sub_100010C04(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = qword_100024C80;
    v10 = a1;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = qword_100025930;
    sub_100003024(&qword_100024E40, &unk_100019180);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100018EA0;
    v31[0] = v10;
    sub_100003C34(0, &qword_100025630, ILMessageFilterCapabilitiesQueryResponse_ptr);
    v13 = v10;
    v14 = sub_100017FE4();
    v16 = v15;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_1000030D0();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    v17 = sub_100018034();
    sub_100017F14("Received response: %@", 21, 2, &_mh_execute_header, v11, v17, v12, v31[0]);
  }

  else
  {
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v19 = qword_100025930;
    v20 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100018F90;
    *(v21 + 56) = sub_100003C34(0, &unk_1000257C0, ILMessageFilterCapabilitiesQueryRequest_ptr);
    *(v21 + 64) = sub_1000110F4();
    *(v21 + 32) = a2;
    v31[0] = a3;
    v22 = a2;
    swift_errorRetain();
    sub_100003024(&qword_1000258A0, &qword_100019190);
    v23 = sub_100017FE4();
    v25 = v24;
    *(v21 + 96) = &type metadata for String;
    *(v21 + 104) = sub_1000030D0();
    *(v21 + 72) = v23;
    *(v21 + 80) = v25;
    sub_100017F14("Error handling request %@: %@", 29, 2, &_mh_execute_header, v19, v20, v21, v31[0]);

    v13 = 0;
  }

  v26 = *(a4 + 168);
  *(a4 + 168) = a1;
  v27 = v13;

  *(a4 + 176) = a3;
  swift_errorRetain();

  swift_beginAccess();
  sub_10000306C(a5 + 16, v31);
  v28 = v32;
  v29 = v33;
  sub_1000062DC(v31, v32);
  (*(v29 + 40))(v28, v29);
  return sub_1000034E0(v31);
}

void sub_100010EFC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10000F9F0;
    v5[3] = &unk_100021CA8;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setDeferQueryRequestToNetwork:v4];
  _Block_release(v4);
}

uint64_t sub_100010FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100005B50;
  v8[3] = &unk_100021C80;
  v6 = _Block_copy(v8);

  [v5 handleCapabilitiesQueryRequest:a1 completion:v6];
  _Block_release(v6);
}

uint64_t type metadata accessor for CapabilitiesQueryRequestOperation(uint64_t a1)
{
  result = qword_1000254D8;
  if (!qword_1000254D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000110F4()
{
  result = qword_100025608;
  if (!qword_100025608)
  {
    sub_100003C34(255, &unk_1000257C0, ILMessageFilterCapabilitiesQueryRequest_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025608);
  }

  return result;
}

uint64_t sub_10001116C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000111FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011214(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100011264(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100017F24();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100017F44();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = sub_100003C34(0, &unk_1000257C0, ILMessageFilterCapabilitiesQueryRequest_ptr);
  v24[4] = &off_100021CF8;
  v24[0] = a1;
  v19 = *(a4 + 16);
  sub_10000306C(v24, v23);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a2;
  v15[4] = a3;
  sub_1000034C8(v23, (v15 + 5));
  aBlock[4] = sub_1000117C0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008EC8;
  aBlock[3] = &unk_100021758;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  sub_100017F34();
  v21 = &_swiftEmptyArrayStorage;
  sub_100011214(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003024(&unk_100025890, &unk_1000198E0);
  sub_1000063F4();
  sub_1000180B4();
  sub_100018064();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);

  return sub_1000034E0(v24);
}

uint64_t sub_100011570()
{
  sub_1000034E0((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000115A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003024(&qword_100025628, &qword_100019728);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011618()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100011658(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  sub_100011264(v6, a1, a2, v5);
}

uint64_t sub_1000116BC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100011710()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100011778()
{

  sub_1000034E0((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100011870()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000119F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100011A6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011AB0()
{
  v1 = sub_100017EC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);

  sub_1000034E0((v0 + 56));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100011BB8()
{
  v1 = sub_100017EC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);

  sub_1000034E0((v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100011CA4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, void *, char *))
{
  v2 = *(sub_100017EC4() - 8);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1 + ((*(v2 + 80) + 80) & ~*(v2 + 80));

  return a1(v3, v4, v5, v1 + 5, v6);
}

uint64_t sub_100011D28()
{
  sub_1000034E0((v0 + 16));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100011D68()
{
  v1 = sub_100017EC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1000034E0((v0 + 16));

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_100011E54()
{
  v1 = *(sub_100017EC4() - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[10];
  v7 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_100002410((v0 + 2), v3, v4, v5, v6, v0 + v2, v8, v9);
}

uint64_t sub_100011EF0()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100011F38()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_10000BFE0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_100003124(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_10000C378();
        v16 = v18;
      }

      result = sub_10000BCE0(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

void *sub_10001214C(uint64_t a1, uint64_t a2)
{
  v19 = &_swiftEmptyDictionarySingleton;
  v4 = (*(a2 + 16))();
  if (v5)
  {
    v16 = &type metadata for String;
    *&v15 = v4;
    *(&v15 + 1) = v5;
    sub_100003788(&v15, &v17);
    v6 = v18;
  }

  else
  {
    v7 = [objc_allocWithZone(NSNull) init];
    v6 = sub_10000C978();
    v18 = v6;
    *&v17 = v7;
  }

  if (v6)
  {
    sub_100003788(&v17, &v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000BE90(&v15, 0x7265646E6573, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v19 = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    sub_10000C9C4(&v17);
    sub_10000B514(0x7265646E6573, 0xE600000000000000, &v15);
    sub_10000C9C4(&v15);
  }

  v9 = (*(a2 + 24))(a1, a2);
  if (v10)
  {
    sub_100012044(v9, v10, 1954047348, 0xE400000000000000);
    v18 = sub_100003024(&qword_100025658, &unk_1000198A0);
    *&v17 = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    v14 = [objc_allocWithZone(NSNull) init];
    v18 = sub_10000C978();
    *&v17 = v14;
  }

  sub_100003788(&v17, &v15);
  v11 = v19;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_10000BE90(&v15, 0x6567617373656DLL, 0xE700000000000000, v12);
  return v11;
}

uint64_t sub_1000123AC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_100017FB4();

  return v6;
}

id sub_100012424(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_100014054();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_1000143E0();
    if (v10)
    {
      v11 = v10;
      v12 = [v10 bundleVersion];

      if (v12)
      {
        v13 = sub_100017FB4();
        v15 = v14;

        v16 = &v3[OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_applicationIdentifier];
        *v16 = v8;
        v16[1] = v9;
        v17 = &v3[OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_applicationVersion];
        *v17 = v13;
        v17[1] = v15;
        *&v3[OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_queue] = a2;
        *&v3[OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_nsExtension] = a1;
        v18 = &v3[OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_urlHostAuthorizationCheck];
        *v18 = sub_100012650;
        v18[1] = 0;
        v19 = swift_allocObject();
        *(v19 + 16) = a2;
        sub_100003024(&qword_1000256B8, &qword_1000198F0);
        v20 = swift_allocObject();
        *(v20 + 16) = 0;
        *(v20 + 24) = 0;
        v21 = swift_allocObject();
        swift_weakInit();
        v22 = swift_allocObject();
        v22[2] = v21;
        v22[3] = sub_100013FC0;
        v22[4] = v19;
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        *(v20 + 16) = sub_100014040;
        *(v20 + 24) = v22;
        v25 = a2;
        v26 = a1;
        sub_100011FFC(v23, v24);
        *&v3[OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_networkOperationGenerator] = v20;
        v29.receiver = v3;
        v29.super_class = type metadata accessor for ReportClassificationOperation();
        v27 = objc_msgSendSuper2(&v29, "init");

        return v27;
      }
    }
  }

  else
  {
  }

  type metadata accessor for ReportClassificationOperation();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_100012650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(BOOL))
{
  v6 = _SWCServiceTypeSpamReporting;
  v7 = objc_allocWithZone(_SWCServiceSpecifier);
  v8 = v6;

  v9 = sub_100017FA4();

  v10 = sub_100017FA4();

  v12 = [v7 initWithServiceType:v8 applicationIdentifier:v9 domain:v10];

  v11 = sub_100003848(v12);
  a5(v11);
}

void sub_10001275C(char *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v60 = a2;
  v61 = a3;
  __chkstk_darwin(v5 - 8);
  v7 = &v48 - v6;
  v8 = sub_100017EC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = __chkstk_darwin(v11);
  v14 = &v48 - v13;
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  v59 = *&a1[OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_nsExtension];
  sub_1000142B4();
  sub_10000FAF4(v7);
  v57 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v16;

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100013AF8(v7);
LABEL_8:
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v39 = qword_100025930;
    v40 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100018EA0;
    v42 = v59;
    *&v62[0] = v59;
    sub_100004778();
    v43 = v42;
    v44 = sub_100017FE4();
    v46 = v45;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = sub_1000030D0();
    *(v41 + 32) = v44;
    *(v41 + 40) = v46;
    sub_100017F14("No network URL found for extension %@", 37, 2, &_mh_execute_header, v39, v40, v41);

    type metadata accessor for ILMessageFilterError(0);
    v63[0] = 2;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100013E14(&qword_100024D50, type metadata accessor for ILMessageFilterError, &unk_100018C34);
    sub_100017E44();
    v47 = *&v62[0];
    v60(0, *&v62[0]);

    return;
  }

  v18 = v7;
  v19 = *(v9 + 32);
  v19(v14, v18, v8);
  v20 = sub_100017E94();
  if (!v21)
  {
    (*(v9 + 8))(v14, v8);
    goto LABEL_8;
  }

  v22 = v21;
  v59 = v20;
  v23 = v17;
  v19(v17, v14, v8);
  v56 = v19;
  v24 = qword_100024C80;

  v54 = v22;
  v55 = v9 + 32;
  if (v24 != -1)
  {
    swift_once();
  }

  v52 = qword_100025930;
  sub_100003024(&qword_100024E40, &unk_100019180);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100018EA0;
  v51 = v9;
  v49 = *(v9 + 16);
  v26 = v57;
  v49(v57, v23, v8);
  v27 = sub_100017FE4();
  v28 = v23;
  v53 = v23;
  v30 = v29;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_1000030D0();
  *(v25 + 32) = v27;
  *(v25 + 40) = v30;
  v31 = sub_100018034();
  sub_100017F14("Using URL %@ for network request", 32, 2, &_mh_execute_header, v52, v31, v25);

  v52 = *&a1[OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_urlHostAuthorizationCheck];
  v32 = *&a1[OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_applicationIdentifier + 8];
  v50 = *&a1[OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_applicationIdentifier];
  sub_10000306C(v58, v62);
  v49(v26, v28, v8);
  v33 = (*(v9 + 80) + 96) & ~*(v9 + 80);
  v34 = swift_allocObject();
  v36 = v59;
  v35 = v60;
  *(v34 + 2) = a1;
  *(v34 + 3) = v36;
  v37 = v54;
  *(v34 + 4) = v54;
  *(v34 + 5) = v35;
  *(v34 + 6) = v61;
  sub_10000656C(v62, (v34 + 56));
  v56(&v34[v33], v26, v8);

  v38 = a1;

  v52(v50, v32, v36, v37, sub_100013C3C, v34);

  (*(v51 + 8))(v53, v8);
}

void sub_100012E68(char a1, char *a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a8;
  v39 = a3;
  v44 = a5;
  v45 = a6;
  v40 = a4;
  v11 = sub_100017F24();
  v43 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100017F44();
  v41 = *(v14 - 8);
  v42 = v14;
  __chkstk_darwin(v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100017EC4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v40 = *&a2[OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_queue];
    sub_10000306C(a7, v48);
    (*(v18 + 16))(&v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v17);
    v21 = (*(v18 + 80) + 80) & ~*(v18 + 80);
    v22 = swift_allocObject();
    v23 = v44;
    v24 = v45;
    *(v22 + 2) = a2;
    *(v22 + 3) = v23;
    *(v22 + 4) = v24;
    sub_10000656C(v48, (v22 + 40));
    (*(v18 + 32))(&v22[v21], v20, v17);
    aBlock[4] = sub_100013D90;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008EC8;
    aBlock[3] = &unk_100021DD8;
    v25 = _Block_copy(aBlock);
    v26 = a2;

    sub_100017F34();
    v46 = &_swiftEmptyArrayStorage;
    sub_100013E14(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003024(&unk_100025890, &unk_1000198E0);
    sub_1000063F4();
    sub_1000180B4();
    sub_100018064();
    _Block_release(v25);
    (*(v43 + 8))(v13, v11);
    (*(v41 + 8))(v16, v42);
  }

  else
  {
    v27 = v44;
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v28 = qword_100025930;
    v29 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100018F90;
    v32 = *&a2[OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_applicationIdentifier];
    v31 = *&a2[OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_applicationIdentifier + 8];
    *(v30 + 56) = &type metadata for String;
    v33 = sub_1000030D0();
    *(v30 + 32) = v32;
    *(v30 + 40) = v31;
    *(v30 + 96) = &type metadata for String;
    *(v30 + 104) = v33;
    v34 = v39;
    v35 = v40;
    *(v30 + 64) = v33;
    *(v30 + 72) = v34;
    *(v30 + 80) = v35;

    sub_100017F14("Extension's containing app (appID %@) unauthorized to defer requests to host %@", 79, 2, &_mh_execute_header, v28, v29, v30);

    type metadata accessor for ILMessageFilterError(0);
    *&v48[0] = 3;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100013E14(&qword_100024D50, type metadata accessor for ILMessageFilterError, &unk_100018C34);
    sub_100017E44();
    v36 = aBlock[0];
    v27(0, aBlock[0]);
  }
}

void sub_10001338C(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a3;
  v9 = sub_100017F24();
  v48 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100017F44();
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v49 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100017EC4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_networkOperationGenerator);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 24);
    v42 = a2;
    v20 = a4;
    v21 = v18;
    v45 = v18;
    v39 = a5;
    v46 = v19;

    v44 = v9;
    v21(v56, v22);
    v23 = sub_1000062DC(v56, v56[3]);
    v24 = *(a1 + OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_applicationIdentifier + 8);
    v41 = *(a1 + OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_applicationIdentifier);
    v40 = *(a1 + OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_applicationVersion);
    v43 = v11;
    v25 = *(a1 + OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_applicationVersion + 8);
    sub_10000306C(v20, v55);
    v26 = swift_allocObject();
    sub_10000656C(v55, v26 + 16);
    v27 = v51;
    *(v26 + 56) = v42;
    *(v26 + 64) = v27;
    v42 = *(*v23 + 16);
    sub_10000306C(v20, v54);
    (*(v14 + 16))(&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v13);
    v28 = (*(v14 + 80) + 88) & ~*(v14 + 80);
    v29 = (v15 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    sub_10000656C(v54, (v30 + 16));
    *(v30 + 7) = sub_100011840;
    *(v30 + 8) = v26;
    *(v30 + 9) = v40;
    *(v30 + 10) = v25;
    (*(v14 + 32))(&v30[v28], v16, v13);
    v31 = &v30[v29];
    *v31 = v41;
    *(v31 + 1) = v24;
    aBlock[4] = sub_100011E54;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008EC8;
    aBlock[3] = &unk_100021E50;
    v32 = _Block_copy(aBlock);

    v33 = v49;
    sub_100017F34();
    v52 = &_swiftEmptyArrayStorage;
    sub_100013E14(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003024(&unk_100025890, &unk_1000198E0);
    sub_1000063F4();
    v34 = v43;
    v35 = v44;
    sub_1000180B4();
    sub_100018064();
    _Block_release(v32);
    sub_100011FFC(v45, v46);

    (*(v48 + 8))(v34, v35);
    (*(v50 + 8))(v33, v47);

    sub_1000034E0(v56);
  }

  else
  {
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v36 = qword_100025930;
    v37 = sub_100018024();
    sub_100017F14("Extension is no longer eligible to defer request to network", 59, 2, &_mh_execute_header, v36, v37, &_swiftEmptyArrayStorage);
    type metadata accessor for ILMessageFilterError(0);
    v56[0] = 5;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100013E14(&qword_100024D50, type metadata accessor for ILMessageFilterError, &unk_100018C34);
    sub_100017E44();
    v38 = aBlock[0];
    a2(0, aBlock[0]);
  }
}

id sub_100013A08(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ReportClassificationOperation();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100013AF8(uint64_t a1)
{
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013B60()
{
  v1 = sub_100017EC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);

  sub_1000034E0((v0 + 56));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100013C3C(char a1)
{
  v3 = *(sub_100017EC4() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 96) & ~*(v3 + 80));

  sub_100012E68(a1, v4, v5, v6, v7, v8, (v1 + 7), v9);
}

uint64_t sub_100013CBC()
{
  v1 = sub_100017EC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);

  sub_1000034E0((v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100013D90()
{
  v1 = *(sub_100017EC4() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 80) & ~*(v1 + 80));

  sub_10001338C(v2, v3, v4, (v0 + 5), v5);
}

uint64_t sub_100013DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013E14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100013E5C()
{
  sub_1000034E0((v0 + 16));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100013E9C()
{
  v1 = sub_100017EC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1000034E0((v0 + 16));

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100013F88()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013FC8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014000()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100014054()
{
  v0 = sub_1000143E0();
  if (!v0)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_10000C9C4(&v8);
    return 0;
  }

  v1 = v0;
  v2 = [v0 entitlements];

  v3 = sub_100017FA4();
  sub_100014890();
  v4 = [v2 objectForKey:v3 ofClass:swift_getObjCClassFromMetadata()];

  if (v4)
  {
    sub_1000180A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

id sub_100014188()
{
  result = [v0 attributes];
  if (result)
  {
    v2 = result;
    v3 = sub_100017F84();

    v8[0] = 0xD000000000000022;
    v8[1] = 0x800000010001A5B0;
    sub_1000180F4();
    if (*(v3 + 16) && (v4 = sub_10000319C(v7), (v5 & 1) != 0))
    {
      sub_10000CA2C(*(v3 + 56) + 32 * v4, v8);
      sub_1000037F4(v7);

      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      sub_1000037F4(v7);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000142B4()
{
  result = [v0 attributes];
  if (result)
  {
    v2 = result;
    v3 = sub_100017F84();

    v8[0] = 0xD000000000000031;
    v8[1] = 0x800000010001A650;
    sub_1000180F4();
    if (*(v3 + 16) && (v4 = sub_10000319C(v7), (v5 & 1) != 0))
    {
      sub_10000CA2C(*(v3 + 56) + 32 * v4, v8);
      sub_1000037F4(v7);

      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      sub_1000037F4(v7);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000143E0()
{
  v1 = v0;
  v2 = sub_100017EC4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v18 - v9;
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  result = [v1 _plugIn];
  if (result)
  {
    v14 = [result containingUrl];
    if (v14)
    {
      v15 = v14;
      sub_100017E84();

      (*(v3 + 32))(v12, v10, v2);
      (*(v3 + 16))(v7, v12, v2);
      v16 = objc_allocWithZone(LSApplicationRecord);
      v17 = sub_10001473C(v7, 0);
      (*(v3 + 8))(v12, v2);
      swift_unknownObjectRelease();
      return v17;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_10001473C(uint64_t a1, char a2)
{
  v3 = v2;
  sub_100017E74(__stack_chk_guard);
  v7 = v6;
  v16 = 0;
  v8 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = sub_100017EC4();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v16;
    sub_100017E64();

    swift_willThrow();
    v14 = sub_100017EC4();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v8;
}

unint64_t sub_100014890()
{
  result = qword_1000256C0;
  if (!qword_1000256C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000256C0);
  }

  return result;
}

uint64_t sub_1000148DC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100014988(char a1, void *a2, uint64_t a3, uint64_t a4)
{

  v8 = sub_100017FA4();
  v9 = [a2 valueForEntitlement:v8];

  if (v9)
  {
    sub_1000180A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    sub_100003024(&unk_100025850, &unk_100019990);
    if (swift_dynamicCast())
    {

      if (a1)
      {
        if (a1 == 1)
        {
          v11 = 0x8000000100019A50;
          v12 = 0xD000000000000011;
        }

        else
        {
          v11 = 0xE600000000000000;
          v12 = 0x74726F706572;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        v12 = 0x7972657571;
      }

      *&v21[0] = v12;
      *(&v21[0] + 1) = v11;
      __chkstk_darwin(v10);
      v18[2] = v21;
      v16 = sub_1000148DC(sub_100017A10, v18, v18[5]);

      return v16 & 1;
    }
  }

  else
  {
    sub_10000C9C4(v21);
  }

  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v13 = qword_100025930;
  v14 = sub_100018024();
  sub_100003024(&qword_100024E40, &unk_100019180);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100018EA0;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_1000030D0();
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  sub_100017F14("Entitlement value for %@ is not an Array of Strings", 51, 2, &_mh_execute_header, v13, v14, v15);

  v16 = 0;
  return v16 & 1;
}

uint64_t sub_100014C04(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 16);
    v4 = *(Strong + 24);
    *(Strong + 16) = 0;
    *(Strong + 24) = 0;
    sub_100011FFC(v5, v4);
  }

  return a2(Strong);
}

id sub_100014CC8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100014DC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x8000000100019A50;
  v5 = 0xE600000000000000;
  if (v2 == 1)
  {
    v5 = 0x8000000100019A50;
  }

  else
  {
    v3 = 0x74726F706572;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x7972657571;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x74726F706572;
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7972657571;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100018164();
  }

  return v11 & 1;
}

Swift::Int sub_100014EB8()
{
  sub_1000181B4();
  sub_100017FF4();

  return sub_1000181C4();
}

uint64_t sub_100014F58(uint64_t a1)
{
  sub_100017FF4();
}

Swift::Int sub_100014FE4()
{
  sub_1000181B4();
  sub_100017FF4();

  return sub_1000181C4();
}

unint64_t sub_100015080@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100015A6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000150B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x8000000100019A50;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x74726F706572;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972657571;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10001510C(void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v3 = qword_100025930;
    v4 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100018EA0;
    swift_errorRetain();
    sub_100003024(&qword_1000258A0, &qword_100019190);
    v6 = sub_100017FE4();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1000030D0();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    sub_100017F14("Error reporting to network: %@", 30, 2, &_mh_execute_header, v3, v4, v5);
  }

  else if (a1)
  {
    v11 = qword_100024C80;
    v12 = a1;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = qword_100025930;
    sub_100003024(&qword_100024E40, &unk_100019180);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100018F90;
    *(v14 + 56) = sub_100003C34(0, &qword_100025878, ILClassificationReportRequest_ptr);
    *(v14 + 64) = sub_1000179C0(&unk_100025880, &qword_100025878, ILClassificationReportRequest_ptr);
    *(v14 + 32) = a3;
    *(v14 + 96) = sub_100003C34(0, &qword_1000258A8, ILNetworkResponse_ptr);
    *(v14 + 104) = sub_1000179C0(&qword_1000258B0, &qword_1000258A8, ILNetworkResponse_ptr);
    *(v14 + 72) = v12;
    v15 = v12;
    v16 = a3;
    v17 = sub_100018034();
    sub_100017F14("classification report request: response: %@", 43, 2, &_mh_execute_header, v13, v17, v14);
  }

  else
  {
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v18 = qword_100025930;
    v19 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100018EA0;
    sub_100003024(&qword_1000258A0, &qword_100019190);
    v21 = sub_100017FE4();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_1000030D0();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    sub_100017F14("No response from network", 24, 2, &_mh_execute_header, v18, v19, v20);
  }
}

void sub_100015500(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_100017E54();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_10001557C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_10001560C(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a4 + 48) = type metadata accessor for ExtensionRequest();
  *(a4 + 56) = &off_100020F80;
  *(a4 + 16) = a3;
  *(a4 + 24) = a1;
  v14 = a2[3];
  *(a4 + 96) = a2[2];
  *(a4 + 112) = v14;
  *(a4 + 128) = a2[4];
  v15 = a2[1];
  *(a4 + 64) = *a2;
  *(a4 + 80) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  sub_100003024(&qword_1000256B8, &qword_1000198F0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a7;
  v19[4] = v16;
  v20 = *(v17 + 16);
  v21 = *(v17 + 24);
  *(v17 + 16) = a8;
  *(v17 + 24) = v19;
  v22 = a3;
  sub_100011FFC(v20, v21);
  *(a4 + 144) = v17;
  *(a4 + 152) = sub_100003D60;
  *(a4 + 160) = 0;
  return a4;
}

uint64_t sub_100015740(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = sub_100017F24();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100017F44();
  v12 = *(v21 - 8);
  __chkstk_darwin(v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[3] = sub_100003C34(0, &qword_100025878, ILClassificationReportRequest_ptr);
  v25[4] = &off_100021560;
  v25[0] = a1;
  v20 = *&a4[OBJC_IVAR____TtC38com_apple_IdentityLookup_MessageFilter29ReportClassificationOperation_queue];
  sub_10000306C(v25, v24);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a2;
  v15[4] = a3;
  sub_1000034C8(v24, (v15 + 5));
  aBlock[4] = sub_100017B18;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008EC8;
  aBlock[3] = &unk_1000220E8;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  v18 = a4;

  sub_100017F34();
  v22 = &_swiftEmptyArrayStorage;
  sub_100017940(&qword_100025190, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003024(&unk_100025890, &unk_1000198E0);
  sub_100017B40(&qword_100025198, &unk_100025890, &unk_1000198E0);
  sub_1000180B4();
  sub_100018064();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v21);

  return sub_1000034E0(v25);
}

unint64_t sub_100015A6C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000208E8;
  v6._object = a2;
  v4 = sub_100018154(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100015AB8(char a1)
{
  result = [objc_opt_self() currentConnection];
  if (result)
  {
    v3 = result;
    if (sub_100014988(a1, result, 0xD000000000000027, 0x800000010001A810))
    {

      return 1;
    }

    else
    {
      if (qword_100024C80 != -1)
      {
        swift_once();
      }

      v4 = qword_100025930;
      v5 = sub_100018024();
      sub_100003024(&qword_100024E40, &unk_100019180);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100018F90;
      *(v6 + 56) = sub_100003C34(0, &qword_100025838, NSXPCConnection_ptr);
      *(v6 + 64) = sub_1000179C0(&unk_100025840, &qword_100025838, NSXPCConnection_ptr);
      *(v6 + 32) = v3;
      v7 = v3;
      v8 = sub_100017FE4();
      v10 = v9;
      *(v6 + 96) = &type metadata for String;
      *(v6 + 104) = sub_1000030D0();
      *(v6 + 72) = v8;
      *(v6 + 80) = v10;
      sub_100017F14("Connection %@ is not entitled for capability %@", 47, 2, &_mh_execute_header, v4, v5, v6);

      return 0;
    }
  }

  return result;
}

id sub_100015C78(uint64_t a1, uint64_t a2)
{

  v4 = sub_100017FA4();

  v24 = 0;
  v5 = [objc_opt_self() extensionWithIdentifier:v4 error:&v24];

  if (v5)
  {
    v6 = qword_100024C80;
    v7 = v24;
    v8 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v9 = qword_100025930;
    sub_100003024(&qword_100024E40, &unk_100019180);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100018EA0;
    v24 = v5;
    sub_100003024(&unk_100025820, &unk_100019980);
    v11 = sub_100017FE4();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1000030D0();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    v14 = sub_100018034();
    sub_100017F14("Got NSExtension %@", 18, 2, &_mh_execute_header, v9, v14, v10);
  }

  else
  {
    v15 = v24;
    v16 = sub_100017E64();

    swift_willThrow();
    if (qword_100024C80 != -1)
    {
      swift_once();
    }

    v17 = qword_100025930;
    v18 = sub_100018024();
    sub_100003024(&qword_100024E40, &unk_100019180);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100018F90;
    *(v19 + 56) = &type metadata for String;
    v20 = sub_1000030D0();
    *(v19 + 64) = v20;
    *(v19 + 32) = a1;
    *(v19 + 40) = a2;
    v24 = v16;

    swift_errorRetain();
    sub_100003024(&qword_100024E60, &unk_100019270);
    v21 = sub_100017FE4();
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = v20;
    *(v19 + 72) = v21;
    *(v19 + 80) = v22;
    sub_100017F14("Error retrieving NSExtension with identifier %@: %@", 51, 2, &_mh_execute_header, v17, v18, v19);

    v5 = 0;
  }

  return v5;
}

void sub_100015F50(void *a1)
{
  v2 = sub_100018054();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100018044();
  __chkstk_darwin(v6);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100017F44();
  __chkstk_darwin(v8 - 8);
  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v9 = qword_100025930;
  sub_100003024(&qword_100024E40, &unk_100019180);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100018EA0;
  *(v10 + 56) = sub_100003C34(0, &qword_100025878, ILClassificationReportRequest_ptr);
  *(v10 + 64) = sub_1000179C0(&unk_100025880, &qword_100025878, ILClassificationReportRequest_ptr);
  *(v10 + 32) = a1;
  v11 = a1;
  v12 = sub_100018034();
  sub_100017F14("classification report request: %@", 33, 2, &_mh_execute_header, v9, v12, v10);

  v13 = [v11 extensionIdentifier];
  v14 = sub_100017FB4();
  v16 = v15;

  v17 = sub_100015C78(v14, v16);

  if (v17)
  {
    v28 = v11;
    v18 = sub_100003C34(0, &qword_1000257D8, OS_dispatch_queue_ptr);
    v19 = v5;
    v29 = "eport request: %@";
    v30 = v18;
    v20 = v17;
    sub_100017F34();
    v32 = &_swiftEmptyArrayStorage;
    sub_100017940(&qword_1000257E0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100003024(&qword_1000257E8, &unk_100019970);
    sub_100017B40(&unk_1000257F0, &qword_1000257E8, &unk_100019970);
    sub_1000180B4();
    (*(v3 + 104))(v19, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
    v21 = sub_100018074();
    v22 = objc_allocWithZone(type metadata accessor for ReportClassificationOperation());
    v23 = sub_100012424(v20, v21);
    if (v23)
    {
      v24 = v23;
      v25 = swift_allocObject();
      v26 = v28;
      *(v25 + 16) = v28;
      sub_100015740(v26, sub_100017AC8, v25, v24);
    }
  }
}

void sub_100016370(void *a1, void (**a2)(void, void, void))
{
  v4 = sub_100018054();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100018044();
  __chkstk_darwin(v6);
  v7 = sub_100017F44();
  __chkstk_darwin(v7 - 8);
  v37 = swift_allocObject();
  *(v37 + 16) = a2;
  _Block_copy(a2);
  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v8 = qword_100025930;
  sub_100003024(&qword_100024E40, &unk_100019180);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100018EA0;
  *(v9 + 56) = sub_100003C34(0, &qword_100025180, ILMessageFilterQueryRequest_ptr);
  *(v9 + 64) = sub_1000179C0(&qword_100025870, &qword_100025180, ILMessageFilterQueryRequest_ptr);
  *(v9 + 32) = a1;
  v10 = a1;
  v11 = sub_100018034();
  sub_100017F14("query: %@", 9, 2, &_mh_execute_header, v8, v11, v9);

  if (sub_100015AB8(0))
  {
    v12 = [v10 extensionIdentifier];
    v13 = sub_100017FB4();
    v15 = v14;

    v16 = sub_100015C78(v13, v15);

    if (v16)
    {
      v17 = v16;
      sub_1000044A0(v17, v42);
      if (*(&v42[0] + 1))
      {
        v43[0] = v42[0];
        v43[1] = v42[1];
        v43[2] = v42[2];
        v43[3] = v42[3];
        v43[4] = v42[4];
        v32 = sub_100003C34(0, &qword_1000257D8, OS_dispatch_queue_ptr);
        v33 = v10;
        sub_100017F34();
        *&v39 = &_swiftEmptyArrayStorage;
        sub_100017940(&qword_1000257E0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
        sub_100003024(&qword_1000257E8, &unk_100019970);
        sub_100017B40(&unk_1000257F0, &qword_1000257E8, &unk_100019970);
        sub_1000180B4();
        (*(v35 + 104))(v34, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v36);
        v18 = sub_100018074();
        v40 = sub_100003C34(0, &qword_100025018, NSExtension_ptr);
        v41 = &off_100020F00;
        *&v39 = v17;
        v19 = type metadata accessor for ExtensionRequest();
        v20 = swift_allocObject();
        *(v20 + 32) = 0u;
        *(v20 + 48) = 0;
        *(v20 + 16) = 0u;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        sub_1000034C8(&v39, v38);
        swift_beginAccess();
        v21 = v17;
        v22 = v18;
        sub_1000090FC(v38, v20 + 16);
        swift_endAccess();
        *(v20 + 56) = v22;
        v40 = v19;
        v41 = &off_100020F80;
        *&v39 = v20;
        type metadata accessor for QueryRequestOperation(0);
        v23 = swift_allocObject();
        v24 = sub_10000628C(&v39, v19);
        __chkstk_darwin(v24);
        v26 = (&v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v27 + 16))(v26);
        v28 = *v26;
        *(v23 + 168) = 0;
        *(v23 + 176) = 0;
        v29 = v22;

        sub_10001560C(v28, v43, v29, v23, &unk_100022058, &unk_100022080, sub_100017D80, sub_100017D7C);
        sub_1000034E0(&v39);
        sub_1000048C8(v33, sub_100017AAC, v37);

        return;
      }
    }

    type metadata accessor for ILMessageFilterPrivateError(0);
    *&v39 = 2;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100017940(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);
  }

  else
  {
    type metadata accessor for ILMessageFilterPrivateError(0);
    *&v42[0] = 1;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100017940(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);
  }

  sub_100017E44();
  v30 = *&v43[0];
  v31 = sub_100017E54();
  (a2)[2](a2, 0, v31);
}

void sub_100016AA4(void *a1, void (**a2)(void, void))
{
  v4 = sub_100018054();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100018044();
  __chkstk_darwin(v6);
  v7 = sub_100017F44();
  __chkstk_darwin(v7 - 8);
  v37 = swift_allocObject();
  *(v37 + 16) = a2;
  _Block_copy(a2);
  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v8 = qword_100025930;
  sub_100003024(&qword_100024E40, &unk_100019180);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100018EA0;
  *(v9 + 56) = sub_100003C34(0, &qword_1000253D8, ILMessageFilterReportRequest_ptr);
  *(v9 + 64) = sub_1000179C0(&unk_100025860, &qword_1000253D8, ILMessageFilterReportRequest_ptr);
  *(v9 + 32) = a1;
  v10 = a1;
  v11 = sub_100018034();
  sub_100017F14("report: %@", 10, 2, &_mh_execute_header, v8, v11, v9);

  if (sub_100015AB8(2))
  {
    v12 = [v10 extensionIdentifier];
    v13 = sub_100017FB4();
    v15 = v14;

    v16 = sub_100015C78(v13, v15);

    if (v16)
    {
      v17 = v16;
      sub_1000044A0(v17, v42);
      if (*(&v42[0] + 1))
      {
        v43[0] = v42[0];
        v43[1] = v42[1];
        v43[2] = v42[2];
        v43[3] = v42[3];
        v43[4] = v42[4];
        v32 = sub_100003C34(0, &qword_1000257D8, OS_dispatch_queue_ptr);
        v33 = v10;
        sub_100017F34();
        *&v39 = &_swiftEmptyArrayStorage;
        sub_100017940(&qword_1000257E0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
        sub_100003024(&qword_1000257E8, &unk_100019970);
        sub_100017B40(&unk_1000257F0, &qword_1000257E8, &unk_100019970);
        sub_1000180B4();
        (*(v35 + 104))(v34, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v36);
        v18 = sub_100018074();
        v40 = sub_100003C34(0, &qword_100025018, NSExtension_ptr);
        v41 = &off_100020F00;
        *&v39 = v17;
        v19 = type metadata accessor for ExtensionRequest();
        v20 = swift_allocObject();
        *(v20 + 32) = 0u;
        *(v20 + 48) = 0;
        *(v20 + 16) = 0u;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        sub_1000034C8(&v39, v38);
        swift_beginAccess();
        v21 = v17;
        v22 = v18;
        sub_1000090FC(v38, v20 + 16);
        swift_endAccess();
        *(v20 + 56) = v22;
        v40 = v19;
        v41 = &off_100020F80;
        *&v39 = v20;
        type metadata accessor for ReportRequestOperation(0);
        v23 = swift_allocObject();
        v24 = sub_10000628C(&v39, v19);
        __chkstk_darwin(v24);
        v26 = (&v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v27 + 16))(v26);
        v28 = *v26;
        *(v23 + 168) = 0;
        v29 = v22;

        sub_10001560C(v28, v43, v29, v23, &unk_100021FE0, &unk_100022008, sub_100017D80, sub_100017D7C);
        sub_1000034E0(&v39);
        sub_10000972C(v33, sub_100017A68, v37);

        return;
      }
    }

    type metadata accessor for ILMessageFilterPrivateError(0);
    *&v39 = 2;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100017940(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);
  }

  else
  {
    type metadata accessor for ILMessageFilterPrivateError(0);
    *&v42[0] = 1;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100017940(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);
  }

  sub_100017E44();
  v30 = *&v43[0];
  v31 = sub_100017E54();
  (a2)[2](a2, v31);
}

void sub_1000171D4(void *a1, void (**a2)(void, void, void))
{
  v4 = sub_100018054();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100018044();
  __chkstk_darwin(v6);
  v7 = sub_100017F44();
  __chkstk_darwin(v7 - 8);
  v37 = swift_allocObject();
  *(v37 + 16) = a2;
  _Block_copy(a2);
  if (qword_100024C80 != -1)
  {
    swift_once();
  }

  v8 = qword_100025930;
  sub_100003024(&qword_100024E40, &unk_100019180);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100018EA0;
  *(v9 + 56) = sub_100003C34(0, &unk_1000257C0, ILMessageFilterCapabilitiesQueryRequest_ptr);
  *(v9 + 64) = sub_1000179C0(&qword_100025608, &unk_1000257C0, ILMessageFilterCapabilitiesQueryRequest_ptr);
  *(v9 + 32) = a1;
  v10 = a1;
  v11 = sub_100018034();
  sub_100017F14("capabilities query: %@", 22, 2, &_mh_execute_header, v8, v11, v9);

  if (sub_100015AB8(0))
  {
    v12 = [v10 extensionIdentifier];
    v13 = sub_100017FB4();
    v15 = v14;

    v16 = sub_100015C78(v13, v15);

    if (v16)
    {
      v17 = v16;
      sub_1000044A0(v17, v42);
      if (*(&v42[0] + 1))
      {
        v43[0] = v42[0];
        v43[1] = v42[1];
        v43[2] = v42[2];
        v43[3] = v42[3];
        v43[4] = v42[4];
        v32 = sub_100003C34(0, &qword_1000257D8, OS_dispatch_queue_ptr);
        v33 = v10;
        sub_100017F34();
        *&v39 = &_swiftEmptyArrayStorage;
        sub_100017940(&qword_1000257E0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
        sub_100003024(&qword_1000257E8, &unk_100019970);
        sub_100017B40(&unk_1000257F0, &qword_1000257E8, &unk_100019970);
        sub_1000180B4();
        (*(v35 + 104))(v34, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v36);
        v18 = sub_100018074();
        v40 = sub_100003C34(0, &qword_100025018, NSExtension_ptr);
        v41 = &off_100020F00;
        *&v39 = v17;
        v19 = type metadata accessor for ExtensionRequest();
        v20 = swift_allocObject();
        *(v20 + 32) = 0u;
        *(v20 + 48) = 0;
        *(v20 + 16) = 0u;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        sub_1000034C8(&v39, v38);
        swift_beginAccess();
        v21 = v17;
        v22 = v18;
        sub_1000090FC(v38, v20 + 16);
        swift_endAccess();
        *(v20 + 56) = v22;
        v40 = v19;
        v41 = &off_100020F80;
        *&v39 = v20;
        type metadata accessor for CapabilitiesQueryRequestOperation(0);
        v23 = swift_allocObject();
        v24 = sub_10000628C(&v39, v19);
        __chkstk_darwin(v24);
        v26 = (&v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v27 + 16))(v26);
        v28 = *v26;
        *(v23 + 168) = 0;
        *(v23 + 176) = 0;
        v29 = v22;

        sub_10001560C(v28, v43, v29, v23, &unk_100021F40, &unk_100021F90, sub_100013FC0, sub_100014040);
        sub_1000034E0(&v39);
        sub_10000FE74(v33, sub_100017D78, v37);

        return;
      }
    }

    type metadata accessor for ILMessageFilterPrivateError(0);
    *&v39 = 2;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100017940(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);
  }

  else
  {
    type metadata accessor for ILMessageFilterPrivateError(0);
    *&v42[0] = 1;
    sub_100003360(&_swiftEmptyArrayStorage);
    sub_100017940(&qword_1000257D0, type metadata accessor for ILMessageFilterPrivateError, &unk_100018D44);
  }

  sub_100017E44();
  v30 = *&v43[0];
  v31 = sub_100017E54();
  (a2)[2](a2, 0, v31);
}

uint64_t sub_100017908()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100017988()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000179C0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003C34(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100017A10(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100018164() & 1;
  }
}

uint64_t sub_100017A70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017AD0()
{

  sub_1000034E0((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100017B28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017B40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006458(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageFilterManager.EntitlementCapability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageFilterManager.EntitlementCapability(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100017D08()
{
  result = qword_1000258B8;
  if (!qword_1000258B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000258B8);
  }

  return result;
}