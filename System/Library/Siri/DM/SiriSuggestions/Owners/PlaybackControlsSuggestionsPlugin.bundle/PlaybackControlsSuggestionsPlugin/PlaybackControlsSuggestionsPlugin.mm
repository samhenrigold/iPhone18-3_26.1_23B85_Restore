uint64_t sub_12D0()
{
  sub_40FC();
  swift_allocObject();
  result = sub_410C();
  qword_C4A0 = result;
  return result;
}

uint64_t sub_1328(uint64_t a1, uint64_t a2)
{
  v3[43] = a2;
  v3[44] = v2;
  v3[42] = a1;
  v4 = sub_40CC();
  v3[45] = v4;
  v3[46] = *(v4 - 8);
  v3[47] = swift_task_alloc();

  return _swift_task_switch(sub_13EC, 0, 0);
}

uint64_t sub_13EC()
{
  v1 = v0[46];
  sub_2558(&qword_C128, &qword_4568);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_4450;
  *(inited + 32) = 0x45442D6564;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0x55412D6E65;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 64) = 0x41432D6E65;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = 0x42472D6E65;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = 0x4E492D6E65;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 112) = 0x53552D6E65;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = 0x53452D7365;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = 0x584D2D7365;
  *(inited + 152) = 0xE500000000000000;
  *(inited + 160) = 0x53552D7365;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 176) = 0x52462D7266;
  *(inited + 184) = 0xE500000000000000;
  *(inited + 192) = 0x504A2D616ALL;
  *(inited + 200) = 0xE500000000000000;
  *(inited + 208) = 0x4E432D687ALL;
  *(inited + 216) = 0xE500000000000000;
  *(inited + 224) = 0x4B482D687ALL;
  *(inited + 232) = 0xE500000000000000;
  sub_31D0(0, 13, 0);
  for (i = 0; i != 208; i += 16)
  {

    sub_40BC();
    v5 = *(&_swiftEmptyArrayStorage + 2);
    v4 = *(&_swiftEmptyArrayStorage + 3);
    if (v5 >= v4 >> 1)
    {
      sub_31D0((v4 > 1), v5 + 1, 1);
    }

    v0[48] = &_swiftEmptyArrayStorage;
    v6 = v0[47];
    v7 = v0[45];
    *(&_swiftEmptyArrayStorage + 2) = v5 + 1;
    (*(v1 + 32))(&_swiftEmptyArrayStorage + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v5, v6, v7);
  }

  swift_setDeallocating();
  sub_318C();
  sub_2558(&qword_C130, &qword_4570);
  v8 = sub_40EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v0[49] = v12;
  *(v12 + 16) = xmmword_4460;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v12 + v11, enum case for DeviceType.iPhone(_:), v8);
  v14(v13 + v10, enum case for DeviceType.iPad(_:), v8);
  v14(v13 + 2 * v10, enum case for DeviceType.watch(_:), v8);
  v14(v13 + 3 * v10, enum case for DeviceType.pod(_:), v8);
  v14(v13 + 4 * v10, enum case for DeviceType.mac(_:), v8);
  v14(v13 + 5 * v10, enum case for DeviceType.homepod(_:), v8);
  v14(v13 + 6 * v10, enum case for DeviceType.appleTV(_:), v8);
  v14(v13 + 7 * v10, enum case for DeviceType.carPlay(_:), v8);
  if (qword_C1A0 != -1)
  {
    swift_once();
  }

  v15 = v0[42];
  v16 = qword_C4A0;
  v0[35] = sub_40FC();
  v0[36] = sub_3D58(&qword_C138, &type metadata accessor for DomainOwner, &protocol conformance descriptor for DomainOwner);
  v0[32] = v16;

  v19 = (v15 + *v15);
  v17 = swift_task_alloc();
  v0[50] = v17;
  *v17 = v0;
  v17[1] = sub_1910;

  return v19(v0 + 32);
}

uint64_t sub_1910(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 408) = a1;

  sub_32BC((v2 + 256));

  return _swift_task_switch(sub_1A18, 0, 0);
}

uint64_t sub_1A18()
{
  v0 = 0;
  do
  {
    v1 = *(&off_83D8 + v0 + 32);
    sub_423C(30);

    v2 = 0xE500000000000000;
    v3._countAndFlagsBits = 0x6573756150;
    switch(v1)
    {
      case 0:
        v3._countAndFlagsBits = 0x77726F4674736146;
        v2 = 0xEB00000000647261;
        break;
      case 1:
        v2 = 0xE400000000000000;
        v3._countAndFlagsBits = 1954047310;
        break;
      case 2:
        v2 = 0xE800000000000000;
        v3._countAndFlagsBits = 0x676E6F537478654ELL;
        break;
      case 3:
        break;
      case 4:
        v3._countAndFlagsBits = 0x6968546573756150;
        v2 = 0xED0000676E6F5373;
        break;
      case 5:
        v2 = 0xE600000000000000;
        v3._countAndFlagsBits = 0x646E69776552;
        break;
      case 6:
        v2 = 0xE400000000000000;
        v3._countAndFlagsBits = 1885956947;
        break;
      case 7:
        v3._countAndFlagsBits = 0x7369685470696B53;
        v2 = 0xEC000000676E6F53;
        break;
      case 8:
        v2 = 0xE400000000000000;
        v3._countAndFlagsBits = 1886352467;
        break;
      default:
        JUMPOUT(0);
    }

    v4 = *(v9 + 352);
    ++v0;
    v10 = *(v9 + 384);
    v3._object = v2;
    sub_422C(v3);

    v5 = swift_task_alloc();
    *(v5 + 16) = v1;
    *(v5 + 24) = v10;
    *(v5 + 40) = v4;
    sub_419C();
  }

  while (v0 != 9);

  sub_41AC();
  sub_2558(&qword_C140, &qword_4578);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_4470;
  sub_31FC((v9 + 296), v6 + 32);

  v7 = *(v9 + 8);

  return v7(v6);
}

uint64_t sub_1E3C(char a1)
{
  result = 0x77726F4674736146;
  switch(a1)
  {
    case 1:
      result = 1954047310;
      break;
    case 2:
      result = 0x676E6F537478654ELL;
      break;
    case 3:
      result = 0x6573756150;
      break;
    case 4:
      result = 0x6968546573756150;
      break;
    case 5:
      result = 0x646E69776552;
      break;
    case 6:
      result = 1885956947;
      break;
    case 7:
      result = 0x7369685470696B53;
      break;
    case 8:
      result = 1886352467;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_3214(a1, v36);
  v5 = v37;
  v17 = v38;
  sub_3278(v36, v37);
  if (qword_C490 != -1)
  {
    swift_once();
  }

  sub_22E8(a2, qword_C498);
  v34 = v5;
  v35 = v17;
  sub_3DA0(v33);
  sub_40DC();

  v6 = v35.n128_i64[1];
  sub_3278(v33, v34);
  v31 = sub_40B0();
  v32 = v6;
  sub_3DA0(v30);
  sub_415C();
  v7 = v32;
  sub_3278(v30, v31.n128_i64[0]);
  v28 = sub_40B0();
  v29 = v7;
  sub_3DA0(v27);
  sub_414C();
  v8 = v29;
  v17 = v28;
  sub_3278(v27, v28.n128_i64[0]);
  sub_1E3C(a2);
  v25 = v17;
  v26 = v8;
  sub_3DA0(v24);
  sub_416C();

  v9 = v26;
  sub_3278(v24, v25.n128_i64[0]);
  v22 = sub_40B0();
  v23 = v9;
  sub_3DA0(v21);
  sub_418C();
  v10 = v23;
  v17 = v22;
  sub_3278(v21, v22.n128_i64[0]);
  v19 = sub_40B0();
  v20 = v10;
  sub_3DA0(v18);
  sub_413C();
  v11 = v19.n128_u64[0];
  v12 = sub_3278(v18, v19.n128_i64[0]);
  v13 = *(v11 - 8);
  __chkstk_darwin(v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_417C();
  (*(v13 + 8))(v15, v11);
  sub_32BC(v18);
  sub_32BC(v21);
  sub_32BC(v24);
  sub_32BC(v27);
  sub_32BC(v30);
  sub_32BC(v33);
  return sub_32BC(v36);
}

uint64_t sub_22E8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_358C(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2370(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6C7070612E6D6F63;
  }
}

uint64_t sub_23B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_245C;

  return sub_1328(a1, a2);
}

uint64_t sub_245C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2558(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25A0(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000647261;
  v3 = 0x77726F4674736146;
  v4 = a1;
  v5 = 0x77726F4674736146;
  v6 = 0xEB00000000647261;
  switch(v4)
  {
    case 1:
      v6 = 0xE400000000000000;
      v5 = 1954047310;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v5 = 0x676E6F537478654ELL;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x6573756150;
      break;
    case 4:
      v5 = 0x6968546573756150;
      v6 = 0xED0000676E6F5373;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v5 = 0x646E69776552;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v5 = 1885956947;
      break;
    case 7:
      v5 = 0x7369685470696B53;
      v6 = 0xEC000000676E6F53;
      break;
    case 8:
      v6 = 0xE400000000000000;
      v5 = 1886352467;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE400000000000000;
      v3 = 1954047310;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x676E6F537478654ELL;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x6573756150;
      break;
    case 4:
      v3 = 0x6968546573756150;
      v2 = 0xED0000676E6F5373;
      break;
    case 5:
      v2 = 0xE600000000000000;
      v3 = 0x646E69776552;
      break;
    case 6:
      v2 = 0xE400000000000000;
      v3 = 1885956947;
      break;
    case 7:
      v3 = 0x7369685470696B53;
      v2 = 0xEC000000676E6F53;
      break;
    case 8:
      v2 = 0xE400000000000000;
      v3 = 1886352467;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_428C();
  }

  return v8 & 1;
}

Swift::Int sub_2814(char a1)
{
  sub_429C();
  sub_1E3C(a1);
  sub_421C();

  return sub_42AC();
}

uint64_t sub_2878(uint64_t a1, char a2)
{
  sub_421C();
}

Swift::Int sub_29C8(uint64_t a1, char a2)
{
  sub_429C();
  sub_1E3C(a2);
  sub_421C();

  return sub_42AC();
}

unint64_t sub_2A28(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_8408;
  v6._object = a2;
  v4 = sub_427C(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_2A80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2A28(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2AB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2B04()
{
  sub_41FC();
  v0 = sub_411C();
  v5[3] = v0;
  sub_4090();
  v5[4] = sub_3D58(v1, v2, &protocol conformance descriptor for CoreSignalTypes);
  v3 = sub_3DA0(v5);
  (*(*(v0 - 8) + 104))(v3, enum case for CoreSignalTypes.app(_:), v0);
  result = sub_41CC();
  qword_C438 = result;
  return result;
}

uint64_t sub_2BE4()
{
  sub_41FC();
  v0 = sub_411C();
  v5[3] = v0;
  sub_4090();
  v5[4] = sub_3D58(v1, v2, &protocol conformance descriptor for CoreSignalTypes);
  v3 = sub_3DA0(v5);
  (*(*(v0 - 8) + 104))(v3, enum case for CoreSignalTypes.app(_:), v0);
  result = sub_41CC();
  qword_C448 = result;
  return result;
}

uint64_t sub_2CBC()
{
  sub_41FC();
  result = sub_41DC();
  qword_C458 = result;
  return result;
}

uint64_t sub_2CF0()
{
  sub_41FC();
  result = sub_41EC();
  qword_C468 = result;
  return result;
}

uint64_t sub_2D24()
{
  sub_41FC();
  result = sub_41BC();
  qword_C478 = result;
  return result;
}

uint64_t sub_2D58()
{
  sub_2558(&qword_C150, &qword_4588);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_4480;
  if (qword_C450 != -1)
  {
    swift_once();
  }

  v1 = qword_C460;
  *(v0 + 32) = qword_C458;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_C470;
  *(v0 + 40) = qword_C468;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_C478;
  qword_C488 = v0;
}

uint64_t sub_2E70()
{
  sub_2558(&qword_C148, &qword_4580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_4490;
  *(inited + 32) = 0;
  if (qword_C480 != -1)
  {
    swift_once();
  }

  v1 = qword_C488;
  sub_2558(&qword_C150, &qword_4588);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_44A0;
  v3 = qword_C430;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_C440;
  *(v2 + 32) = qword_C438;

  if (v4 != -1)
  {
    swift_once();
  }

  *(v2 + 40) = qword_C448;

  sub_3918(v2);
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_44B0;
  v6 = qword_C438;
  *(v5 + 32) = qword_C438;
  *(inited + 56) = v5;
  *(inited + 64) = 2;
  v7 = qword_C488;
  *(inited + 72) = qword_C488;
  *(inited + 80) = 3;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_44A0;
  v9 = qword_C448;
  *(v8 + 32) = v6;
  *(v8 + 40) = v9;
  *(inited + 88) = v8;
  *(inited + 96) = 4;
  *(inited + 104) = v7;
  *(inited + 112) = 5;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_44A0;
  *(v10 + 32) = v6;
  *(v10 + 40) = v9;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_3918(v10);
  *(inited + 120) = v7;
  *(inited + 128) = 6;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_44B0;
  v12 = qword_C438;
  *(v11 + 32) = qword_C438;
  *(inited + 136) = v11;
  *(inited + 144) = 7;
  v13 = qword_C488;
  *(inited + 152) = qword_C488;
  *(inited + 160) = 8;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_44B0;
  *(v14 + 32) = v12;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_3918(v14);
  *(inited + 168) = v13;
  sub_2558(&qword_C158, &qword_4590);
  sub_39C4();
  result = sub_420C();
  qword_C498 = result;
  return result;
}

uint64_t sub_318C()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

void *sub_31D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_3304(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_31FC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_3214(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_3278(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_32BC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return sub_40A8(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *sub_3304(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_2558(&qword_C178, &qword_4598);
  v10 = *(sub_40CC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_40CC() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_34B8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_34B8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_40CC(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_40CC();

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_358C(uint64_t a1)
{
  v1 = a1;
  sub_429C();
  sub_1E3C(v1);
  sub_421C();

  v2 = sub_42AC();

  return sub_3614(v1, v2);
}

unint64_t sub_3614(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEB00000000647261;
      v8 = 0x77726F4674736146;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE400000000000000;
          v8 = 1954047310;
          break;
        case 2:
          v7 = 0xE800000000000000;
          v8 = 0x676E6F537478654ELL;
          break;
        case 3:
          v7 = 0xE500000000000000;
          v8 = 0x6573756150;
          break;
        case 4:
          v8 = 0x6968546573756150;
          v7 = 0xED0000676E6F5373;
          break;
        case 5:
          v7 = 0xE600000000000000;
          v8 = 0x646E69776552;
          break;
        case 6:
          v7 = 0xE400000000000000;
          v8 = 1885956947;
          break;
        case 7:
          v8 = 0x7369685470696B53;
          v7 = 0xEC000000676E6F53;
          break;
        case 8:
          v7 = 0xE400000000000000;
          v8 = 1886352467;
          break;
        default:
          break;
      }

      v9 = 0x77726F4674736146;
      v10 = 0xEB00000000647261;
      switch(a1)
      {
        case 1:
          v10 = 0xE400000000000000;
          v9 = 1954047310;
          break;
        case 2:
          v10 = 0xE800000000000000;
          v9 = 0x676E6F537478654ELL;
          break;
        case 3:
          v10 = 0xE500000000000000;
          v9 = 0x6573756150;
          break;
        case 4:
          v9 = 0x6968546573756150;
          v10 = 0xED0000676E6F5373;
          break;
        case 5:
          v10 = 0xE600000000000000;
          v9 = 0x646E69776552;
          break;
        case 6:
          v10 = 0xE400000000000000;
          v9 = 1885956947;
          break;
        case 7:
          v9 = 0x7369685470696B53;
          v10 = 0xEC000000676E6F53;
          break;
        case 8:
          v10 = 0xE400000000000000;
          v9 = 1886352467;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_428C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_3918(unint64_t a1)
{
  v3 = sub_3A18(a1);
  v4 = sub_3A18(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_3A6C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_3B0C(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_39C4()
{
  result = qword_C160;
  if (!qword_C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C160);
  }

  return result;
}

uint64_t sub_3A18(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_426C();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

unint64_t sub_3A48(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_3A6C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
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

  sub_426C();
LABEL_9:
  result = sub_425C();
  *v2 = result;
  return result;
}

uint64_t sub_3B0C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_426C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_3A18(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_41FC();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_3FE4(&qword_C168, &qword_C158, &qword_4590);
        for (i = 0; i != v7; ++i)
        {
          sub_2558(&qword_C158, &qword_4590);
          v9 = sub_3C80(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_3C80(uint64_t *a1, unint64_t a2, uint64_t a3))(void)
{
  v6 = sub_3A3C(a3);
  sub_3A48(a2, v6, a3);
  if (v6)
  {
  }

  else
  {
    v7 = sub_424C();
  }

  *a1 = v7;
  return sub_3D0C;
}

uint64_t sub_3D10(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3D58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_3DA0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for PlaybackControlsSuggestion(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PlaybackControlsSuggestion(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x3F68);
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

uint64_t sub_3FE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_3D10(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_403C()
{
  result = qword_C190;
  if (!qword_C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C190);
  }

  return result;
}