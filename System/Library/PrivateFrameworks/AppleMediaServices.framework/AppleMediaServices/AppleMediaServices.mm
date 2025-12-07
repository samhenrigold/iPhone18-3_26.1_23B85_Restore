id sub_100002614()
{
  if (qword_1002DA598 != -1)
  {
    swift_once();
  }

  v1 = qword_100310610;

  return v1;
}

uint64_t sub_100002670(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  sub_1000062AC();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = sub_1000050CC();

  return sub_100004754(v10, v11);
}

uint64_t sub_100002750()
{
  sub_100007F3C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v1[1] = sub_100013D70;
  v3 = sub_10000DFBC();

  return v4(v3);
}

uint64_t sub_100002840@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_1000028BC@<X0>(char a3@<W8>)
{
  *(v3 + 56) = a3;

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

void sub_100002900()
{

  sub_10011DE50();
}

uint64_t sub_100002934(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static Log.tsDataSync.getter();
}

uint64_t sub_1000029A4()
{
}

void sub_1000029C8()
{

  sub_100005DB0();
}

uint64_t sub_1000029E8()
{

  return sub_10014FE48();
}

void sub_100002A38(void *a1@<X8>)
{
  v3 = *(v1 - 256);
  *a1 = v2;
  a1[1] = v3;
}

void *sub_100002A44(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__src, ...)
{
  va_start(va, __src);

  return memcpy(va, __src, 0x48uLL);
}

uint64_t sub_100002AA4()
{
  *(v1 - 192) = v0;
  *(v1 - 184) = 0;
  return v1 - 264;
}

uint64_t sub_100002AE0()
{

  return swift_allocObject();
}

uint64_t sub_100002B00(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100013EAC;

  return v6(a1);
}

uint64_t sub_100002BF8()
{
  sub_10000DB4C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v1[1] = sub_100013D70;
  v3 = sub_10000DFBC();

  return v4(v3);
}

uint64_t sub_100002CCC()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_100002CE8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000C6A64;

  return v7();
}

void *sub_100002EBC(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x51uLL);
}

__n128 sub_100002EE0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 176);
  *a1 = *(v1 - 192);
  *(a1 + 16) = v2;
  result = *(v1 - 160);
  v4 = *(v1 - 144);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100002F10()
{
  sub_1000D354C();
  sub_10000DB4C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v1[1] = sub_100013D70;
  sub_1000D32C8();
  sub_10000AD14();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100002FC8(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

NSString sub_100002FFC()
{

  return String._bridgeToObjectiveC()();
}

void sub_1000031D4(uint64_t a1@<X8>)
{
  *(v3 - 256) = v2;
  *(v3 - 296) = a1;
  *(v3 - 288) = v1;
}

void sub_1000031F0()
{
  *(v0 + 328) = 0;
  *(v0 + 336) = 0;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v1 - 72) = 0;
}

unint64_t sub_10000325C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

void sub_1000032CC()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 704);
  *(v0 + 138) = *(v1 + 16);
  *(v0 + 1048) = *(v1 + 24);
  *(v0 + 1056) = *(v1 + 32);
  *(v0 + 1064) = v2[24];
  v3 = v2[25];
  *(v0 + 1072) = v3;
  *(v0 + 1080) = v2[22];
  *(v0 + 1088) = v2[23];
  *(v0 + 1096) = *(v3 + 8);
  *(v0 + 1104) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x96B9000000000000;
}

uint64_t sub_100003338(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
}

uint64_t sub_10000336C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static Log.tsDataSync.getter();
}

uint64_t sub_1000033A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

uint64_t sub_1000033D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100013D70;

  return v6();
}

uint64_t sub_1000034C0()
{
  sub_100007F3C();
  sub_10000D41C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v3 = sub_10000B9E4(v1);

  return v4(v3);
}

uint64_t sub_100003568()
{
  v0[307] = v1;
  v0[304] = *(v2 - 128);
  v0[305] = *(v2 - 112);
}

uint64_t sub_1000035E4(_OWORD *a1)
{
  sub_1001514B8(a1, v1);
}

void sub_100003624()
{
}

uint64_t sub_10000363C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
  v3[4] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_100013A64;

  return sub_1000042B0();
}

void *sub_100003758@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *result = v2;
  result[1] = a2;
  return result;
}

void sub_1000037F8(unint64_t a1@<X8>)
{

  sub_1001070B0(a1 > 1, v1, 1);
}

uint64_t sub_100003828()
{

  return sub_10003CD48(v0, v1, v2);
}

uint64_t sub_10000389C(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1000038EC(uint64_t a1)
{

  return sub_100004E24(a1, v1, v2);
}

uint64_t sub_100003934(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100003974(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000039E8(uint64_t result)
{
  v1[89] = result;
  v1[86] = v2;
  v1[82] = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100003AE0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100003B58@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v2 + v1, v4 + a1, v5, v3);
}

uint64_t sub_100003B88()
{
}

uint64_t sub_100003C48(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_100003C6C(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 8);
  return result;
}

uint64_t sub_100003C84()
{
  v7 = v5 + *(v0 + 24);
  v8 = v4 + *(v3 + 24);

  return sub_10003D178(v7, v8, v1, v2);
}

uint64_t sub_100003CBC(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100003CDC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100003D48@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v4 + a1, v3 + a1, v1, v2);
}

uint64_t sub_100003D68()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100003DC0()
{

  return static LogInterpolation.prefix(_:_:)();
}

void sub_100003DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{

  sub_100147074(v56, &a56);
}

uint64_t sub_100003E14(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_100003E6C()
{
  v0[28] = v0[30];

  return sub_100007914(v0 + 25);
}

__n128 sub_100003E88()
{
  v2 = *(v0 + 16);
  *(v1 - 112) = *v0;
  *(v1 - 96) = v2;
  result = *(v0 + 32);
  *(v1 - 80) = result;
  return result;
}

void sub_100003ED0(uint64_t a1)
{
  *(v1 + 1944) = a1;
}

uint64_t sub_100003F40(uint64_t a1)
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100003FA8()
{

  return swift_task_alloc();
}

uint64_t sub_100003FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002728(a1, a2, a3, v3);

  return sub_1000BA2CC(v4 - 176, v4 - 240);
}

uint64_t sub_10000401C()
{

  return DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
}

void sub_100004044()
{
  v3 = (v2 + v1[15]);
  *v3 = 0;
  v3[1] = 0;
  *(v2 + v1[16]) = 0;
  *(v2 + v1[17]) = 0;
  *(v2 + v1[18]) = v0;
}

uint64_t sub_100004088(uint64_t a1, uint64_t a2)
{

  return sub_10003D1E4();
}

unint64_t sub_1000040A0()
{

  return sub_10000DA08();
}

void *sub_1000040C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);

  return memcpy(va, (v52 + 16), 0x51uLL);
}

uint64_t sub_100004118(void *a1)
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

uint64_t sub_1000041AC()
{
  sub_100004118((v0 + 16));
}

uint64_t sub_1000041F8@<X0>(uint64_t a1@<X8>)
{

  return sub_1000D31EC(v5 + a1, v4 + v1, v2, v3);
}

uint64_t sub_100004218(uint64_t a1)
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_10000426C()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_100004288@<X0>(uint64_t a1@<X8>)
{

  return sub_1001AC540(0xD000000000000017, (a1 - 32) | 0x8000000000000000, 2);
}

uint64_t sub_1000042B0()
{
  sub_100004194();
  v1[30] = v2;
  v1[31] = v0;
  v1[32] = swift_getObjectType();
  v3 = type metadata accessor for AccountDataState(0);
  sub_100003B78(v3);
  v1[33] = v4;
  v1[34] = sub_100003FA8();
  v5 = sub_100099DF4(&qword_1002DB970, &qword_100232F30);
  v1[35] = v5;
  sub_100003B78(v5);
  v1[36] = v6;
  v1[37] = sub_1000D3604();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v7 = type metadata accessor for AccountIdentity();
  v1[40] = v7;
  sub_100003B78(v7);
  v1[41] = v8;
  v1[42] = sub_1000D3604();
  v1[43] = swift_task_alloc();
  v9 = type metadata accessor for AccountIdentity.DSID();
  v1[44] = v9;
  sub_100003B78(v9);
  v1[45] = v10;
  v1[46] = sub_100003FA8();
  v11 = type metadata accessor for Log();
  v1[47] = v11;
  sub_100003B78(v11);
  v1[48] = v12;
  v1[49] = sub_100003FA8();
  v13 = sub_10000EF80();

  return _swift_task_switch(v13);
}

uint64_t sub_1000044BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_100004608()
{

  return swift_unknownObjectRelease();
}

__n128 sub_100004698(__n128 *a1)
{
  result = *(v1 - 368);
  a1[1] = result;
  return result;
}

void sub_1000046C8(unint64_t a1@<X8>)
{

  sub_100107170(a1 > 1, v1, 1);
}

void *sub_1000046EC(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x62uLL);
}

uint64_t sub_100004754(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  v5 = sub_1000030B8(v4);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_100002728(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_10023FCA0;
  v10[5] = v9;
  sub_1001A4288(0, 0, v7, &unk_10023FCB0, v10);
}

uint64_t sub_1000048AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100099DF4(a3, a4);
}

uint64_t sub_10000495C@<X0>(uint64_t a4@<X8>)
{
  *(v4 - 80) = a4;

  return static Log.tsDataSync.getter();
}

uint64_t sub_100004994()
{

  return swift_getErrorValue();
}

uint64_t sub_100004B3C()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100004C34(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t sub_100004CCC()
{
  v2 = *(v0 + 152);
  v3 = *(v0 + 248);

  return sub_100179634(v3, v2);
}

uint64_t sub_100004D40()
{
  v2 = *(v0 + 208);
  v3 = *(v0 + 312);

  return sub_10019A170(v3, v2);
}

uint64_t sub_100004E24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100099DF4(a2, a3);
  sub_10000307C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100004E7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100099DF4(a2, a3);
  sub_10000B7EC();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100004EE8(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100004F04()
{

  sub_100013524();
}

uint64_t sub_100004F24()
{

  return sub_10000601C(v1, v0 - 80);
}

uint64_t sub_100004F40()
{
}

uint64_t sub_100004F7C(void x0_0, void x1_0, void a3, void a4, void a5, void a6, void a7, void a8, uint64_t a2)
{

  return sub_10003D1E4();
}

void sub_100004FC8()
{

  Hasher._combine(_:)(0);
}

uint64_t sub_100004FF8()
{
}

uint64_t sub_100005014()
{

  return static LogInterpolation.prefix(_:_:)();
}

__n128 sub_10000504C(__n128 *a1)
{
  result = *(v1 - 272);
  a1[1] = result;
  *(v1 - 120) = *(v1 - 280);
  return result;
}

BOOL sub_1000050F4()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v0);
}

uint64_t sub_100005170()
{

  return swift_allocObject();
}

uint64_t *sub_100005190()
{
  v0[64] = v0[70];

  return sub_100007914(v0 + 61);
}

uint64_t sub_1000051BC@<X0>(uint64_t a1@<X8>)
{
  v1[335] = a1;
  v1[332] = *(v3 - 88);
  v1[333] = v2;
}

uint64_t sub_1000051F8()
{

  return swift_task_create();
}

uint64_t sub_10000529C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_10014F648();
}

double sub_1000052D4@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  if (result == 0.0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100005300@<X0>(uint64_t a1@<X8>)
{
  v3 = (a1 + 48 * v1);
  sub_100004118(v3);
  sub_100122C8C((v2 - 248), v3);
}

uint64_t sub_10000543C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return swift_getErrorValue();
}

uint64_t sub_100005460(uint64_t a1)
{

  return sub_100004E24(a1, v1, v2);
}

uint64_t sub_100005478()
{
  v2 = v0[31];
  v1 = v0[32];
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  sub_10000A1F0();
  v4 = sub_1000D3384();
  v0[22] = v2;
  *(v4 + 16) = xmmword_1002329D0;
  v0[25] = v1;
  v5 = v2;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = v0[48];
  v8 = v0[49];
  v68 = v0[47];
  v10 = v0[30];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v0 + 22);
  LogInterpolation.init(stringLiteral:)();
  v0[29] = sub_100099DF4(&qword_1002DBBE8, &qword_100232F38);
  v0[26] = v10;

  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E7C((v0 + 26), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  (*(v9 + 8))(v8, v68);
  sub_100006034();
  v11 = _swiftEmptyArrayStorage;
  v64 = Dictionary.init(dictionaryLiteral:)();
  result = sub_100005DA8(v10);
  if (!result)
  {
LABEL_25:
    v0[51] = v11;
    v0[52] = v64;
    v0[50] = v64;
    v56 = swift_task_alloc();
    v0[53] = v56;
    *v56 = v0;
    v56[1] = sub_100011088;
    sub_1000D3590();

    return sub_100008590();
  }

  if (result < 1)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v13 = 0;
  v70 = v0 + 2;
  v14 = (v0 + 7);
  v63 = v0 + 17;
  v15 = v0[30];
  v67 = v15 & 0xC000000000000001;
  v69 = v0 + 12;
  v16 = v0[41];
  v65 = result;
  v66 = (v0[45] + 8);
  v62 = v15 + 32;
  v59 = v16 + 16;
  v60 = v16;
  v61 = (v16 + 8);
  while (1)
  {
    v71 = v11;
    if (v67)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v62 + 8 * v13);
    }

    v18 = v17;
    v19 = v0[46];
    v20 = v0[44];
    v21 = [v17 dsid];
    [v21 unsignedLongLongValue];

    AccountIdentity.DSID.init(_:)();
    sub_100005DB0();
    (*v66)(v19, v20);
    if (v0[10])
    {
      sub_10000601C(v14, v70);
      sub_100007974(v70, v69);
      v11 = v71;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000079D4();
        v11 = v54;
      }

      v22 = v11[2];
      if (v22 >= v11[3] >> 1)
      {
        sub_1000079D4();
        v11 = v55;
      }

      sub_100004118(v70);
      v23 = v0[15];
      v24 = sub_100008494(v69, v23);
      v25 = *(v23 - 8);
      v26 = sub_100003FA8();
      (*(v25 + 16))(v26, v24, v23);
      v0[20] = type metadata accessor for AMPAccount(0);
      v0[21] = &off_1002B4510;
      v27 = sub_100007914(v63);
      sub_10000853C(v26, v27);
      v11[2] = v22 + 1;
      sub_10000601C(v63, &v11[5 * v22 + 4]);
      sub_100004118(v69);

      goto LABEL_24;
    }

    v28 = v0[38];
    v29 = v0[39];
    sub_100004E7C(v14, &qword_1002DB958, &qword_100232B60);
    v30 = v18;
    AccountIdentity.init(amsAccountID:)();
    v31 = String._bridgeToObjectiveC()();
    v32 = String._bridgeToObjectiveC()();
    v33 = AMSError();

    *v29 = v33;
    swift_storeEnumTagMultiPayload();
    sub_1000D3234(v29, v28, &qword_1002DB970, &qword_100232F30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_10000DA08();
    v36 = *(v64 + 16);
    v37 = (v35 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v39 = result;
    v40 = v35;
    sub_100099DF4(&qword_1002DBBF0, &unk_100232F40);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v38))
    {
      break;
    }

LABEL_19:
    if (v40)
    {
      sub_1000D3560();
      sub_1000D317C(v43, v44);
    }

    else
    {
      v45 = v0[43];
      v46 = v0[40];
      v47 = v0[38];
      *(v64 + 8 * (v39 >> 6) + 64) |= 1 << v39;
      (*(v60 + 16))(*(v64 + 48) + *(v60 + 72) * v39, v45, v46);
      sub_1000D3560();
      result = sub_1000D3234(v47, v48, &qword_1002DB970, &qword_100232F30);
      v49 = *(v64 + 16);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_32;
      }

      *(v64 + 16) = v51;
    }

    v52 = v0[43];
    v53 = v0[40];

    (*v61)(v52, v53);
    v11 = v71;
LABEL_24:
    ++v13;
    v14 = (v0 + 7);
    if (v65 == v13)
    {
      goto LABEL_25;
    }
  }

  v41 = sub_10000DA08();
  if ((v40 & 1) == (v42 & 1))
  {
    v39 = v41;
    goto LABEL_19;
  }

  sub_1000D3590();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100005BE8()
{

  return Hasher.init(_seed:)();
}

void sub_100005C20()
{

  Hasher._combine(_:)(1u);
}

uint64_t sub_100005C38@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v3 + a1, v2 + v1, v5, v4);
}

void sub_100005CA0()
{
  *(v2 + 16) = v0;
  v5 = v2 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
}

void sub_100005D20(int a1@<W8>)
{
  v1[84] = a1;
  v1[86] = a1;
  v1[88] = a1;
}

void sub_100005D30()
{

  sub_10013C578();
}

NSString sub_100005D64()
{
  *(v1 + 1960) = *v0;
  *(v1 + 1968) = v0[1];

  return String._bridgeToObjectiveC()();
}

void sub_100005DB0()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  type metadata accessor for Log();
  sub_100003724();
  __chkstk_darwin(v4);
  sub_10000306C();
  sub_10000608C(v1);
  if (v11)
  {
    sub_10000601C(&v10, v3);
  }

  else
  {
    sub_100004E7C(&v10, &qword_1002DB958, &qword_100232B60);
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_1000D33A8();
    v5 = type metadata accessor for LogInterpolation();
    sub_100003B78(v5);
    sub_10000AA9C();
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    v6 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v11 = type metadata accessor for AccountIdentity.DSID();
    sub_100007914(&v10);
    sub_10000B7EC();
    (*(v7 + 16))();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E7C(&v10, &unk_1002DFC10, &qword_10022E6D0);
    Log.error(_:)();

    v8 = sub_1000048DC();
    v9(v8);
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
  }

  sub_1000027F8();
}

uint64_t sub_10000601C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100006034()
{
  result = qword_1002DE9E0;
  if (!qword_1002DE9E0)
  {
    v3 = type metadata accessor for AccountIdentity();
    result = swift_getWitnessTable(&protocol conformance descriptor for AccountIdentity, v3, v0, v1);
    atomic_store(result, &qword_1002DE9E0);
  }

  return result;
}

uint64_t sub_10000608C(uint64_t a1)
{
  sub_10000309C();
  v3 = type metadata accessor for AccountIdentity.DSID();
  sub_100003724();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000306C();
  v9 = v8 - v7;
  v10 = sub_100099DF4(&qword_1002DA6C0, &unk_100232C60);
  __chkstk_darwin(v10 - 8);
  sub_10000308C();
  v13 = v11 - v12;
  v15 = __chkstk_darwin(v14);
  v17 = &v23 - v16;
  (*(v5 + 16))(v9, a1, v3, v15);
  sub_100006378();
  v18 = sub_1000049C0();
  sub_100007518(v18, v19);
  v20 = type metadata accessor for AMPAccount(0);
  if (sub_100004DFC(v13, 1, v20) == 1)
  {
    sub_100004E24(v17, &qword_1002DA6C0, &unk_100232C60);
    result = sub_100004E24(v13, &qword_1002DA6C0, &unk_100232C60);
    *v1 = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0;
  }

  else
  {
    *(v1 + 24) = v20;
    *(v1 + 32) = &off_1002B4510;
    v22 = sub_100007914(v1);
    sub_100007078(v13, v22);
    return sub_100004E24(v17, &qword_1002DA6C0, &unk_100232C60);
  }

  return result;
}

uint64_t sub_100006260()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10000628C@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v4 + a1, v3 + v1, v2, v5);
}

uint64_t sub_1000062BC(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_100006320()
{

  return swift_continuation_init();
}

uint64_t sub_100006354()
{

  return LogInterpolation.init(stringLiteral:)();
}

void sub_100006378()
{
  sub_100004168();
  v3 = v2;
  sub_10000309C();
  v4 = type metadata accessor for AccountIdentity.DSID();
  sub_100003724();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000306C();
  v8 = sub_10000B96C();
  sub_10000307C();
  __chkstk_darwin(v9);
  sub_10000306C();
  v12 = v11 - v10;
  v13 = [objc_opt_self() ams_sharedAccountStore];
  AccountIdentity.DSID.value.getter();
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v15 = [v13 ams_iTunesAccountWithDSID:isa];

  if (v15)
  {
    sub_10009B9E4(v15);
    if (v16)
    {
      *(v12 + *(v8 + 20)) = v15;
      (*(v6 + 16))(v1, v3, v4);
      AccountIdentity.init(altDSID:dsid:)();
      v17 = sub_100003748();
      v18(v17);
      sub_100007078(v12, v0);
      sub_100002728(v0, 0, 1, v8);
      sub_1000027F8();
      return;
    }

    v21 = sub_100003748();
    v22(v21);
  }

  else
  {
    v19 = sub_100003748();
    v20(v19);
  }

  sub_100007AC8();
  sub_1000027F8();

  sub_100002728(v23, v24, v25, v26);
}

uint64_t sub_1000065DC()
{

  return URL.append<A>(component:directoryHint:)();
}

uint64_t sub_1000066EC@<X0>(uint64_t a1@<X8>)
{

  return sub_100002728(v1 + a1, 1, 1, v2);
}

uint64_t sub_100006744(uint64_t a1, void *a2)
{
  *a2 = 0xD00000000000002CLL;
  a2[1] = v2;

  return swift_willThrow();
}

void sub_10000678C()
{
  *v1 = v0;
  v1[7] = 0;
  v1[10] = 0;
}

uint64_t sub_1000067C0(uint64_t result)
{
  v1[113] = result;
  v1[110] = v2;
  v1[106] = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10000682C()
{
  v0[2] = 0u;
  v0[3] = 0u;
  *v0 = 0u;
  v0[1] = 0u;
  return v1 + 8;
}

id sub_100006844(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_100006868()
{

  return sub_1001A4830(v0, type metadata accessor for TSDataSyncExternalEvent);
}

void sub_1000068B0(uint64_t a1, const char *a2)
{

  xpc_dictionary_set_BOOL(v2, a2, 1);
}

void *sub_1000068E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *result = v2;
  result[1] = a2;
  return result;
}

uint64_t sub_1000068F4()
{

  return Substring.init(_:)(48, 0xE100000000000000);
}

uint64_t sub_100006960(uint64_t a1, uint64_t a2)
{

  return sub_100012C2C(v2, a2, v3, v4);
}

uint64_t sub_10000697C()
{
  v2 = *(v0 - 360);

  return sub_1000D65DC(v2, type metadata accessor for TSDataSyncDatasetState);
}

id sub_100006A28(uint64_t a1)
{
  v5 = *(v3 + 552);

  return [v1 v5];
}

uint64_t sub_100006AB4(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100006B24(uint64_t result)
{
  v1[73] = result;
  v1[70] = v2;
  v1[66] = _NSConcreteStackBlock;
  return result;
}

BOOL sub_100006B48(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

uint64_t sub_100006B68()
{

  return sub_100179CB8(v0);
}

uint64_t sub_100006BD0()
{
}

uint64_t sub_100006BF8(__n128 a1, __n128 a2)
{
  v4 = (v3 - 144);
  *v4 = a1;
  v4[1] = a2;
  sub_10000C4FC((v2 + 32), *(v2 + 56));
}

id sub_100006C9C(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_100006CCC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100006D94(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0xD000000000000012;
  a1[2].n128_u64[1] = v3;
  v6 = *(v2 + 8);

  return sub_100125BF0(v4, v6);
}

uint64_t sub_100006DF0@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v2 + a1, v1 + a1, v3, v4);
}

void sub_100006E30(unint64_t a1@<X8>)
{

  sub_10000B654(a1 > 1, v1, 1, v2);
}

uint64_t sub_100006E54(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void sub_100006EA8()
{
  v2 = *(v0 + 16) + 1;

  sub_100107110(0, v2, 1);
}

uint64_t sub_100006F30(uint64_t result)
{
  v1[97] = result;
  v1[94] = v2;
  v1[90] = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100007010()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t type metadata accessor for AMPAccount(uint64_t a1)
{
  result = qword_1002DA728;
  if (!qword_1002DA728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMPAccount(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000070F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccountIdentity();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100002728(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000071A4()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void sub_100007204()
{
  *(v3 + v2[10]) = v0;
  *(v3 + v2[11]) = v6;
  *(v3 + v2[12]) = *(v1 + 240);
  *(v3 + v2[13]) = v4;
  *(v3 + v2[14]) = v5;
}

uint64_t sub_100007288(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void sub_10000731C()
{
  v2 = *(v0 + 16) + 1;

  sub_10000B654(0, v2, 1, v0);
}

uint64_t sub_100007340@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v4 + v1, v3 + a1, v5, v2);
}

uint64_t sub_100007360(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

BOOL sub_1000073A0()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

void sub_1000073C0()
{

  sub_10013C2FC();
}

uint64_t sub_1000074A8()
{

  return swift_getErrorValue();
}

uint64_t sub_100007518(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DA6C0, &unk_100232C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000075F8@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v5 + a1, v4 + v1, v2, v3);
}

uint64_t sub_100007698()
{
}

void sub_1000076C8()
{
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v1 - 72) = 0;
}

uint64_t sub_1000076DC(uint64_t a1)
{

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t sub_1000076F8()
{

  return type metadata accessor for AccountIdentity();
}

uint64_t sub_100007728()
{
  v2 = *(v0 - 184);
  v3 = *(v0 - 72);

  return sub_100002728(v2, 1, 1, v3);
}

void *sub_10000776C(void *a1)
{

  return memcpy(a1, v1, 0x62uLL);
}

uint64_t sub_1000077AC()
{

  return sub_10018B1D8();
}

uint64_t sub_100007800(uint64_t a1)
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

uint64_t sub_100007820()
{

  return sub_10014416C(v0, v1 - 248);
}

uint64_t sub_10000783C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_100007868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccountIdentity();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100004DFC(a1, a2, v6);
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

uint64_t *sub_100007914(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100007974(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_10000B7EC();
  (*v3)(a2);
  return a2;
}

void sub_1000079D4()
{
  sub_1000076BC();
  if (v4)
  {
    sub_100006D74();
    if (v5 != v6)
    {
      sub_100007310();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  sub_1000066AC();
  if (v3)
  {
    v7 = sub_100099DF4(&qword_1002DBBE0, &qword_100232E80);
    v8 = sub_10000EE6C(v7);
    sub_10000BAE0(v8);
    sub_10000A5C0(v9);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v3 != v0 || &v0[5 * v2 + 4] <= v3 + 4)
    {
      v11 = sub_10000B80C();
      memmove(v11, v12, v13);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100099DF4(&qword_1002DD530, &qword_100238258);
    sub_10000B80C();
    swift_arrayInitWithCopy();
  }
}

void sub_100007AD8(unint64_t a1@<X8>)
{

  sub_10000B654(a1 > 1, v2, 1, v1);
}

uint64_t sub_100007B44()
{

  return sub_1000AEFB0(v0, type metadata accessor for TSDataSyncConfigScheduleAction);
}

uint64_t sub_100007C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[6] = a1;
  v2[9] = a2;
  v2[10] = v4;
  v2[11] = v3;

  return sub_100125E0C();
}

void *sub_100007C9C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *result = v2;
  result[1] = a2;
  return result;
}

uint64_t sub_100007CB0(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100007D58(unint64_t *a1, uint64_t a2)
{

  return sub_100163640(a1, a2, &protocol conformance descriptor for <> Set<A>);
}

uint64_t sub_100007D7C(uint64_t result)
{
  v1[105] = result;
  v1[102] = v2;
  v1[98] = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100007DB8(uint64_t a1)
{
  *(a1 + 8) = sub_10018584C;
  v3 = *(v1 + 664);
  *(v2 + 16) = *(v1 + 1072);
  return v3;
}

uint64_t sub_100007E54()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_100007F60(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_10000801C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

void sub_100008060()
{
  v2 = *(v0 + 16) + 1;

  sub_10000B654(0, v2, 1, v0);
}

void sub_1000080AC(unint64_t a1@<X8>)
{

  sub_100107110(a1 > 1, v1, 1);
}

uint64_t sub_100008134(uint64_t result)
{
  v1[81] = result;
  v1[78] = v2;
  v1[74] = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100008208()
{

  return swift_allocObject();
}

uint64_t sub_100008260@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v4 + v1, v2 + a1, v3, v5);
}

uint64_t sub_100008290()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_1000082E0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_100008304(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100008380()
{
  v5 = *(v3 - 264);

  return DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)(v2, v1, 0, 1, v0, 0, v5, 0);
}

void sub_1000083E8(uint64_t a1@<X8>)
{
  v1[60] = sub_1001701F4;
  v1[61] = a1;
  v1[62] = v2;
}

uint64_t sub_100008400()
{

  return sub_100177204();
}

uint64_t sub_100008478()
{

  return sub_10014416C(v0, v1 - 248);
}

uint64_t sub_100008494(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1000084E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v4(v3);
  sub_10000307C();
  v5 = sub_1000050CC();
  v6(v5);
  return a2;
}

uint64_t sub_10000853C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v4(v3);
  sub_100003BF0();
  v5 = sub_1000050CC();
  v6(v5);
  return a2;
}

uint64_t sub_100008590()
{
  sub_100004194();
  v1[34] = v2;
  v1[35] = v0;
  v1[36] = swift_getObjectType();
  v3 = type metadata accessor for AccountIdentity();
  v1[37] = v3;
  sub_100003B78(v3);
  v1[38] = v4;
  v1[39] = sub_100003FA8();
  v5 = type metadata accessor for Date();
  v1[40] = v5;
  sub_100003B78(v5);
  v1[41] = v6;
  v1[42] = sub_100003FA8();
  v7 = type metadata accessor for AccountDataState(0);
  v1[43] = v7;
  sub_100003B78(v7);
  v1[44] = v8;
  v1[45] = sub_1000D3604();
  v1[46] = swift_task_alloc();
  v9 = type metadata accessor for Log();
  v1[47] = v9;
  sub_100003B78(v9);
  v1[48] = v10;
  v1[49] = sub_1000D3604();
  v1[50] = swift_task_alloc();
  v11 = sub_10000EF80();

  return _swift_task_switch(v11);
}

uint64_t sub_100008754()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100008798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  v13 = *(v12 + 280);
  v14 = *(v12 + 288);
  static Log.accountsDataSync.getter();
  *(v12 + 408) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v15 = type metadata accessor for LogInterpolation();
  sub_100003B78(v15);
  *(v12 + 416) = *(v16 + 72);
  *(v12 + 528) = *(v17 + 80);
  v18 = sub_1000D3384();
  *(v12 + 104) = v13;
  *(v18 + 16) = xmmword_1002329D0;
  *(v12 + 128) = v14;
  v19 = v13;
  v20 = AMSLogKey();
  if (v20)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100008A8C();
  }

  else
  {
    sub_1000D339C();
  }

  v22 = *(v12 + 400);
  v23 = *(v12 + 384);
  v33 = *(v12 + 376);
  v24 = *(v12 + 272);
  sub_100008754();

  sub_100004118((v12 + 104));
  LogInterpolation.init(stringLiteral:)();
  *(v12 + 160) = sub_100099DF4(&qword_1002DBBD0, &qword_100232E58);
  *(v12 + 136) = v24;

  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E7C(v12 + 136, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v25 = *(v23 + 8);
  *(v12 + 424) = v25;
  *(v12 + 432) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v22, v33);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  *(v12 + 440) = qword_1003106E8;
  sub_100002860();
  sub_100008F38(0xD000000000000010, v26);
  sub_100006034();
  *(v12 + 448) = Dictionary.init(dictionaryLiteral:)();
  swift_task_alloc();
  sub_10000DEA0();
  *(v12 + 456) = v27;
  *v27 = v28;
  sub_10000BFD4(v27);
  sub_100003128();

  return sub_10000ACF8(v29, v30);
}

__n128 sub_100008A50@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 32);
  *(v1 + 240) = *(a1 + 16);
  *(v1 + 256) = v2;
  result = *(a1 + 48);
  *(v1 + 272) = result;
  return result;
}

uint64_t sub_100008ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100008B54(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void *sub_100008BC0()
{
  *(v0 + 128) = v2;
  *(v0 + 136) = v3;

  return memcpy((v1 + 16), (v4 - 192), 0x62uLL);
}

uint64_t sub_100008BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _NativeDictionary._delete(at:)();
}

uint64_t sub_100008C18()
{
}

void sub_100008C3C()
{

  Hasher._combine(_:)(0);
}

uint64_t sub_100008C54()
{

  return sub_100004E24(v2 + 2432, v0, v1);
}

void *sub_100008CAC(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x73uLL);
}

uint64_t sub_100008CD8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for TSDataSyncDatasetGroupAccessActor(0);
}

uint64_t sub_100008CF0()
{

  return swift_getErrorValue();
}

uint64_t sub_100008D0C(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_100008D34@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v3 + v1, v2 + a1, v4, v5);
}

uint64_t sub_100008DC0(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void sub_100008DE0(unint64_t a1@<X8>)
{

  sub_10000B654(a1 > 1, v2, 1, v1);
}

uint64_t sub_100008E30()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v14 = *(v0 + 120);
  v12 = *(v0 + 104);
  v13 = *(v0 + 112);
  v11 = *(v0 + 88);

  return sub_10014E7B4(v2, v3, v4, v5, v6, v7, v8, v9, v11, *(&v11 + 1), v12, v13, v14);
}

uint64_t sub_100008E74()
{
  *(v0 + 120) = v1;
  *(v0 + 88) = sub_10016C560;

  return swift_continuation_init();
}

uint64_t sub_100008EA8()
{

  return sub_100177204();
}

uint64_t sub_100008F00()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100008F20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t sub_100008F38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *&v2[OBJC_IVAR___AMSLiveTransactionStore_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = ObjectType;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100009D98;
  *(v9 + 24) = v8;
  v13[4] = sub_100009DA4;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100009DCC;
  v13[3] = &unk_1002BBEF0;
  v10 = _Block_copy(v13);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000090F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000091A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000091B4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v94 = a4;
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v87 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v79 - v11;
  v13 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for Log();
  v91 = *(v14 - 8);
  v92 = v14;
  __chkstk_darwin(v14);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v20 = &v79 - v19;
  __chkstk_darwin(v21);
  v24 = &v79 - v23;
  v25 = a1[OBJC_IVAR___AMSLiveTransactionStore_isShuttingDown];
  v95 = a2;
  v93 = a3;
  if (v25 == 1)
  {
    static Log.accountsDaemon.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    v99 = v94;
    v97 = a1;
    v26 = a1;
    v27 = AMSLogKey();
    if (v27)
    {
      v28 = v27;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v97);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v46._countAndFlagsBits = 0xD000000000000043;
    v46._object = 0x80000001002763D0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v46);
    v99 = &type metadata for String;
    v97 = v95;
    v98 = v93;

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100009DF4(&v97);
    v47._countAndFlagsBits = 41;
    v47._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v47);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    return (*(v91 + 8))(v24, v92);
  }

  else
  {
    v85 = v22;
    v89 = v8;
    v90 = v7;
    v29 = *&a1[OBJC_IVAR___AMSLiveTransactionStore_transactionSet];
    v30 = String._bridgeToObjectiveC()();
    [v29 addObject:v30];

    v31 = OBJC_IVAR___AMSLiveTransactionStore_signposter;
    String._bridgeToObjectiveC()();
    v86 = v31;
    OSSignposter.logHandle.getter();
    v88 = v12;
    OSSignpostID.init(log:object:)();
    v32 = String._bridgeToObjectiveC()();
    v33 = [v29 countForObject:v32];

    if (v33 == 1)
    {
      static Log.accountsDaemon.getter();
      v34 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
      v35 = *(type metadata accessor for LogInterpolation() - 8);
      v36 = *(v35 + 72);
      v37 = *(v35 + 80);
      v38 = (v37 + 32) & ~v37;
      v83 = v34;
      v84 = v36;
      v80 = v38 + 2 * v36;
      v81 = v37;
      v39 = swift_allocObject();
      v79 = xmmword_1002329F0;
      *(v39 + 16) = xmmword_1002329F0;
      v82 = v38;
      v99 = v94;
      v97 = a1;
      v40 = a1;
      v41 = AMSLogKey();
      if (v41)
      {
        v42 = v41;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100004118(&v97);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v49._countAndFlagsBits = 0xD000000000000016;
      v49._object = 0x8000000100276350;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v49);
      v99 = &type metadata for String;
      v50 = v93;
      v97 = v95;
      v98 = v93;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009DF4(&v97);
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v51);
      v52 = v50;
      LogInterpolation.init(stringInterpolation:)();
      Log.info(_:)();

      v91 = *(v91 + 8);
      (v91)(v20, v92);

      v53 = OSSignposter.logHandle.getter();
      v54 = static os_signpost_type_t.begin.getter();

      if (OS_os_log.signpostsEnabled.getter())
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v97 = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_100009E5C(v95, v52, &v97);
        v57 = v88;
        v58 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, v54, v58, "Transaction", "%s", v55, 0xCu);
        sub_100004118(v56);

        v60 = v89;
        v59 = v90;
      }

      else
      {

        v60 = v89;
        v59 = v90;
        v57 = v88;
      }

      v61 = v94;
      (*(v60 + 16))(v87, v57, v59);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      OSSignpostIntervalState.init(id:isOpen:)();
      v62 = OBJC_IVAR___AMSLiveTransactionStore_transactionSignpostStateStore;
      swift_beginAccess();
      v63 = sub_10000A07C(v95, v52, *&v40[v62]);
      swift_endAccess();
      if (v63)
      {

        static Log.accountsDaemon.getter();
        *(swift_allocObject() + 16) = v79;
        v99 = v61;
        v97 = v40;
        v64 = v40;
        v65 = AMSLogKey();
        if (v65)
        {
          v66 = v65;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100004118(&v97);
        LogInterpolation.init(stringLiteral:)();
        v74 = v85;
        Log.fault(_:)();

        (v91)(v74, v92);
        v52 = v93;
      }

      v75 = v95;
      String.utf8CString.getter();
      v76 = os_transaction_create();

      v77 = OBJC_IVAR___AMSLiveTransactionStore_transactionStore;
      swift_beginAccess();
      if (v76)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v96 = *&v40[v77];
        sub_10000A0CC();
        *&v40[v77] = v96;
      }

      else
      {
        sub_1001AE7B8(v75, v52);
        swift_unknownObjectRelease();
      }

      v78 = v88;
      swift_endAccess();
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v96 = *&v40[v62];
      sub_10000A6A8();
      *&v40[v62] = v96;
      swift_endAccess();

      return (*(v89 + 8))(v78, v90);
    }

    else
    {
      static Log.accountsDaemon.getter();
      sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
      type metadata accessor for LogInterpolation();
      *(swift_allocObject() + 16) = xmmword_1002329F0;
      v99 = v94;
      v97 = a1;
      v43 = a1;
      v44 = AMSLogKey();
      if (v44)
      {
        v45 = v44;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100004118(&v97);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v67._object = 0x8000000100276330;
      v67._countAndFlagsBits = 0xD000000000000014;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v67);
      v99 = &type metadata for String;
      v97 = v95;
      v98 = v93;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009DF4(&v97);
      v68._countAndFlagsBits = 0;
      v68._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v68);
      LogInterpolation.init(stringInterpolation:)();
      Log.info(_:)();

      (*(v91 + 8))(v16, v92);
      v69 = OSSignposter.logHandle.getter();
      v70 = static os_signpost_type_t.event.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        v72 = v88;
        v73 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v69, v70, v73, "Transaction", "Transaction joined", v71, 2u);

        return (*(v89 + 8))(v72, v90);
      }

      else
      {

        return (*(v89 + 8))(v88, v90);
      }
    }
  }
}

uint64_t sub_100009DF4(uint64_t a1)
{
  v2 = sub_100099DF4(&unk_1002DFC10, &qword_10022E6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100009E5C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100009F7C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100009F20(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100004118(v11);
  return v7;
}

uint64_t sub_100009F20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100009F7C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1001ADEA4(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t sub_10000A07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_10014EB30(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000A0CC()
{
  sub_100002EA8();
  sub_100003994();
  sub_100004C1C();
  sub_10000BCF4(v4, v5, v6);
  sub_100006768();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_1001514E8();
  sub_100099DF4(&unk_1002DE9D0, &unk_10023B930);
  if (sub_1000073A0())
  {
    sub_100004C1C();
    sub_100151560(v8, v9, v10);
    sub_10000775C();
    if (!v12)
    {
      goto LABEL_14;
    }

    v3 = v11;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    sub_10015150C();

    return swift_unknownObjectRelease();
  }

  else
  {
    v15 = sub_1000083B8();
    sub_10000A8B8(v15, v16, v17, v18, v19);
    sub_10015150C();
  }
}

uint64_t sub_10000A1CC(uint64_t a1, uint64_t a2, ...)
{

  return String.hash(into:)();
}

uint64_t sub_10000A1FC()
{
}

unint64_t sub_10000A274()
{

  return sub_1000ED168();
}

uint64_t sub_10000A28C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_10014A87C(a8, v10, a3, a4, v11, a6, a7, a8, a9, a10);
}

void sub_10000A2C0(uint64_t a1@<X8>)
{
  *(v1 + 8 * (v2 >> 6) + 64) |= 1 << v2;
  v4 = (*(v1 + 48) + 16 * v2);
  *v4 = a1;
  v4[1] = v3;
}

uint64_t sub_10000A2F4()
{
  *(v0 - 232) = *(v0 - 376);
  *(v0 - 256) = *(v0 - 72);
}

uint64_t sub_10000A318@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 1112) = a1;
  v4 = (v1 + (a1 << 6));
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  *(v2 + 121) = *(v4 + 73);
  *(v2 + 96) = v6;
  *(v2 + 112) = v7;
  *(v2 + 80) = v5;

  return sub_1000BA2CC(v2 + 80, v2 + 144);
}

uint64_t sub_10000A350(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v3 = sub_10000A874();

  return a3(v3);
}

unint64_t sub_10000A3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10000A484(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

void sub_10000A4A4()
{
  *(v2 + v1[11]) = v5;
  *(v2 + v1[12]) = *(v0 + 240);
  *(v2 + v1[13]) = v3;
  *(v2 + v1[14]) = v4;
}

uint64_t sub_10000A4D0()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_10000A554(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_10000A574()
{
}

void sub_10000A5E4()
{
  v3 = *(v0 + 32);
  *(v2 - 104) = *(v1 + 32);
  *(v2 - 96) = v3;
}

uint64_t sub_10000A600(void *a1)
{
  sub_10000C4FC(a1, v1);

  return dispatch thunk of Encoder.userInfo.getter();
}

uint64_t sub_10000A6A8()
{
  sub_100002EA8();
  sub_100003994();
  sub_100004C1C();
  sub_10000BCF4(v4, v5, v6);
  sub_100006768();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_1001514E8();
  sub_100099DF4(&unk_1002DFFE0, &unk_100240480);
  if (sub_1000073A0())
  {
    sub_100004C1C();
    sub_100151560(v8, v9, v10);
    sub_10000775C();
    if (!v12)
    {
      goto LABEL_14;
    }

    v3 = v11;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    sub_10015150C();
  }

  else
  {
    v15 = sub_1000083B8();
    sub_10000A8B8(v15, v16, v17, v18, v19);
    sub_10015150C();
  }
}

uint64_t sub_10000A7DC()
{

  return static LogInterpolation.prefix(_:_:)();
}

__n128 sub_10000A880()
{
  *v0 = 0u;
  v0[1] = 0u;
  return v1[110];
}

unint64_t sub_10000A8B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10000A988()
{
  _Block_release(*(v0 + 24));

  v1 = sub_1000062AC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000A9C8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000AA10()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000AA6C@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v4 + v1, v3 + a1, v2, v5);
}

void sub_10000AAAC()
{

  sub_1001070D0(0, v0, 0);
}

void sub_10000AB10(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_10013BC44();
}

uint64_t sub_10000AB74()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_10000ABC8(unint64_t *a1, uint64_t a2)
{

  return sub_10015C37C(a1, a2, &protocol conformance descriptor for <A> [A]);
}

uint64_t sub_10000AC2C()
{
  sub_100004118(*(v0 - 192));
  sub_100004118(*(v0 - 184));
  sub_100004118(*(v0 - 208));
  v1 = *(v0 - 200);

  return sub_100004118(v1);
}

uint64_t sub_10000AC68@<X0>(uint64_t a1@<X8>)
{
  **(v1 + 248) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000ACB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 992) = v3;

  return static Log.tsDataSync.getter();
}

uint64_t sub_10000ACF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_100007620(sub_10000B170);
}

uint64_t sub_10000AD28()
{

  return swift_dynamicCast();
}

uint64_t sub_10000AD48(uint64_t a1)
{

  return dispatch thunk of Hashable.hash(into:)();
}

BOOL sub_10000AD84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15);
}

uint64_t sub_10000ADA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{
  *(a1 + 16) = a19;
  *(v22 - 80) = a1;
  *(v19 + 584) = v21;
  *(v19 + 560) = v20;
}

uint64_t sub_10000AE5C()
{

  return swift_dynamicCast();
}

void sub_10000AE90()
{

  sub_10011DE50();
}

uint64_t sub_10000AEC4()
{

  return static LogInterpolation.prefix(_:_:)();
}

void sub_10000AEF8(double a1)
{
  if (a1 == 0.0)
  {
    a1 = v2;
  }

  Hasher._combine(_:)(*&a1);
}

void sub_10000AFB4(void *a1@<X8>)
{
  v2 = *(v1 - 664);
  *a1 = *(v1 - 736);
  a1[1] = v2;
}

void sub_10000AFE0()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

uint64_t sub_10000AFF8()
{
}

uint64_t sub_10000B03C()
{

  return Calendar.component(_:from:)(v0, v1);
}

void sub_10000B11C()
{

  sub_1000E0484();
}

uint64_t sub_10000B170()
{
  sub_100004194();
  *(v0 + 80) = sub_10000B20C();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD88;
  v2 = sub_1000D32C8();

  return SendableBag.cachedCodableDictionary(for:)(v2);
}

uint64_t sub_10000B20C()
{
  type metadata accessor for BagValueType();
  sub_100003724();
  __chkstk_darwin(v2);
  sub_1000045F0();
  sub_100013BFC();
  *v0 = 0xD000000000000012;
  v0[1] = v3;
  v4 = sub_10000B874();
  v5(v4);
  sub_10000B654(0, 1, 1, _swiftEmptyArrayStorage);
  sub_10000D05C();
  if (v7)
  {
    sub_100008DE0(v6);
    v1 = v11;
  }

  v8 = sub_100006A64();
  v9(v8);
  return v1;
}

__n128 sub_10000B3FC()
{
  v3 = *(v2 - 96);
  v4 = *(v2 - 88);
  v5 = *(v2 - 128);
  *(v2 - 160) = *(v2 - 112);
  *(v2 - 144) = v5;
  sub_100004118(v0);
  v7 = *(v2 - 160);
  result = *(v2 - 144);
  *v1 = result;
  *(v1 + 16) = v7;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

void *sub_10000B440()
{
  v2 = *(v0 + 56);

  return sub_10000C4FC((v0 + 32), v2);
}

uint64_t sub_10000B478(unint64_t *a1, uint64_t a2)
{

  return sub_100163640(a1, a2, &protocol conformance descriptor for <> Set<A>);
}

uint64_t sub_10000B49C()
{
  *(v0 + 440) = v1;
  *(v0 + 408) = sub_10016ACC8;

  return swift_continuation_init();
}

void sub_10000B50C()
{

  sub_100107170(0, v0, 0);
}

uint64_t sub_10000B52C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static Log.tsDataSync.getter();
}

void sub_10000B558(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    sub_100006D74();
    if (v13 != v14)
    {
      sub_100007310();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_10000B690(v15, v12, a5, a6, a7);
  v17 = *(a8(0) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_10013CC70(a4 + v18, v15, &v16[v18], a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_10000B690(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

  sub_10000F090(a1, a2, a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (&result[-v10] != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = v5;
      v11[3] = 2 * (&result[-v10] / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10000B780(unint64_t a1@<X8>)
{

  sub_10000B654(a1 > 1, v2, 1, v1);
}

uint64_t sub_10000B840()
{

  return String.lowercased()()._countAndFlagsBits;
}

uint64_t sub_10000B894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>)
{

  return sub_10014E7B4(a1, a2, a3, a4, a5, a6, a7, a8, a10.n128_i64[0], a10.n128_i64[1], a9, v10, v11);
}

uint64_t sub_10000B8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v16 - 40) = 0;
  *(v16 - 32) = 0;
  *(v16 - 48) = 0;
  *(v16 - 24) = 0;

  return sub_100161A40(va, &a9);
}

uint64_t sub_10000B8D4()
{
  *(v0 + 376) = v1;
  *(v0 + 344) = sub_10016B504;

  return swift_continuation_init();
}

uint64_t sub_10000B918()
{
}

uint64_t sub_10000B938()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_10000B96C()
{

  return type metadata accessor for AMPAccount(0);
}

void sub_10000B988(unint64_t a1@<X8>)
{

  sub_10000B654(a1 > 1, v2, 1, v1);
}

uint64_t sub_10000BA2C(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void sub_10000BA98(unint64_t a1@<X8>)
{

  sub_10000B654(a1 > 1, v2, 1, v1);
}

uint64_t sub_10000BACC()
{
  result = *(v1 + 8);
  *(v0 + *(v2 + 24)) = v3;
  return result;
}

uint64_t sub_10000BB1C()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000BB3C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v14 = *(v0 + 128);
  v12 = *(v0 + 112);
  v13 = *(v0 + 120);
  v11 = *(v0 + 96);

  return sub_10014E7B4(v2, v3, v4, v5, v6, v7, v8, v9, v11, *(&v11 + 1), v12, v13, v14);
}

uint64_t sub_10000BBA8(uint64_t a1)
{

  return sub_10018B1D8();
}

uint64_t sub_10000BC2C(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_10000BC50(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

uint64_t sub_10000BC68(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10000BCB8()
{

  return String.hash(into:)();
}

uint64_t sub_10000BCF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{

  return sub_10000A350(a2, v3, a3);
}

NSString sub_10000BD1C()
{
  *(v1 + 1832) = *v0;
  *(v1 + 1840) = v0[1];

  return String._bridgeToObjectiveC()();
}

uint64_t sub_10000BD3C()
{
  v3 = *(v0 + 1000);
  *(v1 - 88) = *(v0 + 992);
  *(v1 - 80) = v3;

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000BD88()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_10000452C();
  *v6 = v5;
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  sub_10000381C();

  return _swift_task_switch(v9);
}

uint64_t sub_10000BED8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_10000BEF4()
{

  return sub_1000ED254();
}

uint64_t sub_10000BF58@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_10000BF7C@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v5 + v1, v4 + a1, v3, v2);
}

void *sub_10000BF9C@<X0>(const void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = (v2 + (v3 | (16 * a2)));
  v4[380] = *v6;
  v4[381] = v6[1];

  return memcpy(v4 + 51, a1, 0x148uLL);
}

__n128 sub_10000BFF8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 344) + a1;
  v3 = *(v2 + 16);
  *(v1 - 176) = *v2;
  *(v1 - 160) = v3;
  *(v1 - 144) = *(v2 + 32);
  result = *(v2 + 41);
  *(v1 - 135) = result;
  return result;
}

uint64_t sub_10000C0D0(uint64_t result)
{
  *(v1 + 520) = result;
  *(v1 + 464) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10000C108()
{

  return sub_10018B234();
}

void *sub_10000C144()
{

  return sub_100148604(v0, v1 + v2, v3);
}

uint64_t sub_10000C164()
{
  sub_100007F3C();
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  sub_10000C1F4(v1, (v0 + 16));

  if (v2)
  {
    sub_100002E08();
  }

  else
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 16);
    v6 = *(v0 + 48);
    v4[1] = *(v0 + 32);
    v4[2] = v6;
    *v4 = v5;
    sub_100003844();
  }

  return v3();
}

uint64_t sub_10000C1F4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *&v14[0] = 0;
  v4 = [objc_opt_self() dataWithJSONObject:a1 options:0 error:v14];
  v5 = *&v14[0];
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = type metadata accessor for JSONDecoder();
    sub_10018C398(v9);
    JSONDecoder.init()();
    sub_10000C344();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_10000D170(v6, v8);

    if (!v2)
    {
      v11 = v14[1];
      v12 = v14[2];
      *a2 = v14[0];
      a2[1] = v11;
      a2[2] = v12;
    }
  }

  else
  {
    v13 = v5;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

unint64_t sub_10000C344()
{
  result = qword_1002DF740;
  if (!qword_1002DF740)
  {
    result = swift_getWitnessTable("U\\\a", &unk_1002B8798, v0, v1);
    atomic_store(result, &qword_1002DF740);
  }

  return result;
}

double sub_10000C398(void *a1)
{
  v3 = sub_100099DF4(&qword_1002DDDE0, &qword_100239580);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v4);
  sub_10000F05C();
  v5 = sub_10000C540();
  sub_1000082E0(&unk_1002B8830, v6, v5);
  if (v1)
  {
    sub_100004118(a1);
  }

  else
  {
    sub_10000C594();
    sub_10000C660(&unk_1002B88A8, v7);
    v8 = sub_10000AB64();
    v9(v8, v3);
    *&result = sub_10000B3FC().n128_u64[0];
  }

  return result;
}

double sub_10000C4B8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_10000C398(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

void *sub_10000C4FC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000C540()
{
  result = qword_1002DDDE8;
  if (!qword_1002DDDE8)
  {
    result = swift_getWitnessTable("1Z\a", &unk_1002B8830, v0, v1);
    atomic_store(result, &qword_1002DDDE8);
  }

  return result;
}

unint64_t sub_10000C594()
{
  result = qword_1002DDDF0;
  if (!qword_1002DDDF0)
  {
    result = swift_getWitnessTable(byte_1002397C8, &unk_1002B88A8, v0, v1);
    atomic_store(result, &qword_1002DDDF0);
  }

  return result;
}

uint64_t sub_10000C5F8()
{
  *(v0 - 232) = *(v0 - 376);
  *(v0 - 256) = *(v0 - 312);
}

uint64_t sub_10000C660(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_10000C6E0()
{
  *(v1 - 88) = *(v0 + 264);

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000C778()
{

  return static LogInterpolation.prefix(_:_:)();
}

_BYTE *sub_10000C7F0(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10000C88CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000C8BC(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return _s12amsaccountsd4AvroC20schemaEncodingOption33_E75BE20988CE4C068FC731DDC06586E6LLAA0b6SchemadE0Ovpfi_0();
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

double sub_10000C908(void *a1)
{
  v3 = sub_100099DF4(&qword_1002DDE38, &qword_100239840);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v4);
  sub_10000F05C();
  v5 = sub_10000CA6C();
  sub_1000082E0(&unk_1002B8940, v6, v5);
  if (v1)
  {
    sub_100004118(a1);
  }

  else
  {
    sub_10000CAC0();
    sub_10000C660(&unk_1002B89B8, v7);
    v8 = sub_10000AB64();
    v9(v8, v3);
    *&result = sub_10000B3FC().n128_u64[0];
  }

  return result;
}

double sub_10000CA28@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_10000C908(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_10000CA6C()
{
  result = qword_1002DDE40;
  if (!qword_1002DDE40)
  {
    result = swift_getWitnessTable(byte_100239A88, &unk_1002B8940, v0, v1);
    atomic_store(result, &qword_1002DDE40);
  }

  return result;
}

unint64_t sub_10000CAC0()
{
  result = qword_1002DDE48;
  if (!qword_1002DDE48)
  {
    result = swift_getWitnessTable("IW\a", &unk_1002B89B8, v0, v1);
    atomic_store(result, &qword_1002DDE48);
  }

  return result;
}

uint64_t sub_10000CB34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100099DF4(&qword_1002DDE90, &qword_100239AD8);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v6);
  sub_10000F05C();
  v7 = sub_10000CD50();
  sub_1000082E0(&unk_1002B8A60, v8, v7);
  if (v2)
  {
    return sub_100004118(a1);
  }

  v23 = 0;
  v9 = sub_1000076DC(&v23);
  v22 = 1;
  v10 = sub_1000076DC(&v22);
  v21 = 2;
  v17 = sub_1000076DC(&v21);
  v20 = 3;
  v16 = sub_1000076DC(&v20);
  v19 = 4;
  v15 = sub_1000076DC(&v19);
  v18 = 5;
  v11 = sub_1000076DC(&v18);
  v12 = sub_10000AB64();
  v13(v12, v5);
  result = sub_100004118(a1);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v17;
  a2[3] = v16;
  a2[4] = v15;
  a2[5] = v11;
  return result;
}

double sub_10000CD0C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10000CB34(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_10000CD50()
{
  result = qword_1002DDE98;
  if (!qword_1002DDE98)
  {
    result = swift_getWitnessTable(byte_100239C40, &unk_1002B8A60, v0, v1);
    atomic_store(result, &qword_1002DDE98);
  }

  return result;
}

unint64_t sub_10000CDB8(char a1)
{
  result = 0xD000000000000020;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_10000CE7C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x10000CF48);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void sub_10000CF90()
{
  *(v3 - 512) = v2;
  *(v3 - 504) = v1;
  *(v3 - 496) = v0;
}

__n128 sub_10000CFD8()
{
  v2 = *(v1 - 680);
  *v0 = *(v1 - 760);
  *(v0 + 8) = v2;
  result = *(v1 - 128);
  v4 = *(v1 - 112);
  *(v0 + 16) = result;
  *(v0 + 32) = v4;
  return result;
}

uint64_t sub_10000D014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_10000D07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v61 = a60;

  return sub_100008494(&a57, v61);
}

uint64_t sub_10000D098@<X0>(__int16 a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, __int16 a42)
{
  a42 = a1;

  return sub_10014EA0C(&a30, &a17);
}

__n128 sub_10000D0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __n128 a20)
{
  *v20 = a17;
  v20[1] = a18;
  result = a20;
  v20[2] = a20;
  return result;
}

uint64_t sub_10000D0C8()
{
  *(v0 + 184) = v1;
  *(v0 + 152) = sub_10016BD3C;

  return swift_continuation_init();
}

uint64_t sub_10000D0FC()
{

  return sub_100177204();
}

uint64_t sub_10000D128()
{

  return sub_100197878();
}

uint64_t sub_10000D150(uint64_t a1)
{

  return QueryType.upsertMany(_:)(v2, v1, a1);
}

uint64_t sub_10000D170(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_10000D1C8()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_10000452C();
  *v4 = v3;
  v5 = *v1;
  sub_100004504();
  *v6 = v5;
  *(v3 + 464) = v0;

  if (v0)
  {
  }

  sub_10000381C();

  return _swift_task_switch(v7);
}

uint64_t sub_10000D2CC()
{
  sub_100002E38();
  v1 = v0[34];
  v2 = *(v1 + 16);
  v3 = v0[56];
  v0[60] = 0;
  v0[61] = v3;
  v0[59] = v2;
  if (!v2)
  {
    sub_100003024();
    v9 = sub_10000A520();
    sub_1001AC540(v9, v10, v11);

    sub_1000D3518();
    sub_1000D34C8();

    __asm { BRAA            X2, X16 }
  }

  sub_100007974(v1 + 32, (v0 + 8));
  swift_task_alloc();
  sub_10000DEA0();
  v0[62] = v4;
  *v4 = v5;
  sub_100013FB8(v4);
  sub_1000D34C8();

  return sub_10000D3F0(v6);
}

uint64_t sub_10000D3F0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100007620(sub_10000D5CC);
}

uint64_t sub_10000D494()
{

  return swift_allocObject();
}

uint64_t sub_10000D528(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

void sub_10000D580()
{
  *(v4 - 176) = v2;
  *(v4 - 168) = v0;
  *(v4 - 160) = *(v4 - 296);
  *(v4 - 152) = v1;
  v5 = *(v4 - 272);
  *(v4 - 144) = v3;
  *(v4 - 136) = v5;
}

uint64_t sub_10000D5CC()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics;
  v0[4] = *(v1 + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_accountDataActors);
  v0[5] = v2;
  v0[6] = *(v1 + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_bag);
  return sub_100007620(sub_10000D60C);
}

uint64_t sub_10000D60C()
{
  sub_100007F3C();
  sub_10000D68C(*(v0 + 16), *(v0 + 24) + *(v0 + 40), *(v0 + 48));
  sub_1000D3518();

  return v1();
}

uint64_t sub_10000D68C(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v34 = a3;
  v7 = type metadata accessor for AccountIdentity();
  sub_100003724();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v16 = sub_10000C4FC(a1, a1[3]);
  v33 = *(v9 + 16);
  v33(v15, v16, v7);
  swift_beginAccess();
  v17 = *(v3 + 112);
  if (*(v17 + 16))
  {

    v18 = sub_10000DA08();
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);
      v21 = *(v9 + 8);

      v21(v15, v7);

      return v20;
    }
  }

  v32 = v12;
  v31 = *(v9 + 8);
  v31(v15, v7);
  sub_100007974(a1, v39);
  sub_100007974(a2, v38);
  type metadata accessor for LiveTransactionStore(0);
  sub_100003F9C();
  v22 = type metadata accessor for DeviceDetails();
  v23 = [objc_allocWithZone(AMSDefaults) init];
  v36 = sub_100003AE0(0, &qword_1002DBBB8, AMSDefaults_ptr);
  v37 = &protocol witness table for AMSDefaults;
  v35[0] = v23;
  type metadata accessor for AccountDataAccessActor(0);
  v20 = swift_allocObject();
  v24 = v34;
  v25 = v40;
  sub_1000BC050(v39, v38, &type metadata for AccountDataNetworking, &off_1002B62F8, &type metadata for AccountDataFileSystemStore, &off_1002B6330, &type metadata for AccountDataSyncDASScheduler, &off_1002B63E0, &type metadata for AccountDataUpdateDarwinNotifier, &off_1002B6418, &type metadata for AccountsFrameworkFinder, &off_1002B44E0, v17, &off_1002BBE38, v22, &protocol witness table for DeviceDetails, v35, v24, v30, v31, v32, v33, v34, v35[0], v35[1], v35[2], v36, v37, v38[0], v38[1]);
  if (!v25)
  {
    v20 = v26;
    v27 = sub_10000C4FC(a1, a1[3]);
    v28 = v32;
    v33(v32, v27, v7);
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v38[0] = *(v4 + 112);
    sub_10014F8C8();
    *(v4 + 112) = v38[0];
    v31(v28, v7);
    swift_endAccess();
  }

  return v20;
}

unint64_t sub_10000DA08()
{
  sub_100005150();
  type metadata accessor for AccountIdentity();
  sub_10000DADC(&qword_1002DE9E0, 255, &type metadata accessor for AccountIdentity);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v0 = sub_100004938();

  return sub_10000DC8C(v0, v1);
}

uint64_t sub_10000DA94(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000DADC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    v5 = sub_100004938();
    result = swift_getWitnessTable(v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000DB20()
{

  return String.hash(into:)();
}

uint64_t sub_10000DB58()
{

  return swift_allocObject();
}

uint64_t sub_10000DB74()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0xE000000000000000;
}

uint64_t sub_10000DBA8()
{

  return swift_unknownObjectRelease();
}

unint64_t sub_10000DBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_100147074(a1, a2);
}

void sub_10000DBE4()
{
  v0[2] = v1;
  v0[9] = 0;
  v0[12] = 0;
}

uint64_t sub_10000DBF4(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

NSString sub_10000DC1C()
{
  *(v1 + 1800) = *v0;
  *(v1 + 1808) = v0[1];

  return String._bridgeToObjectiveC()();
}

unint64_t sub_10000DC8C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = type metadata accessor for AccountIdentity();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4, v6);
    sub_10000DADC(&qword_1002DE9E8, 255, &type metadata accessor for AccountIdentity);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10000DEAC@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 120) = a1;
  *(v2 - 112) = v1;

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_10000DED8()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_10000DF30()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

void *sub_10000DF44(void *a1)
{

  return memcpy(a1, v1, 0x62uLL);
}

uint64_t sub_10000DF5C()
{
  *(v0 + 128) = 0;

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t sub_10000DFCC()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_10000452C();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 504) = v5;
  *(v3 + 512) = v0;

  if (v0)
  {
  }

  sub_10000381C();

  return _swift_task_switch(v6);
}

uint64_t sub_10000E0D8()
{
  sub_100004194();
  static Date.now.getter();
  v0 = sub_10000AA8C();

  return _swift_task_switch(v0);
}

void sub_10000E138()
{
  sub_100004868();
  v141 = v1;
  v143 = v2;
  v4 = v3;
  v134 = type metadata accessor for Date();
  sub_100003724();
  v132 = v5;
  __chkstk_darwin(v6);
  v129 = v7;
  v131 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  sub_1000030B8(v8);
  sub_100003774();
  __chkstk_darwin(v9);
  sub_100003018();
  v130 = v10;
  v11 = sub_100099DF4(&qword_1002DB940, &qword_100232B48);
  sub_1000030B8(v11);
  sub_100003774();
  __chkstk_darwin(v12);
  sub_100003018();
  v125 = v13;
  v14 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v15 = sub_1000030B8(v14);
  __chkstk_darwin(v15);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v16);
  sub_10000D478();
  sub_100008280(v17);
  v18 = type metadata accessor for LogInterpolation.StringInterpolation();
  v19 = sub_1000030B8(v18);
  __chkstk_darwin(v19);
  sub_1000037D4();
  sub_100005238();
  __chkstk_darwin(v20);
  sub_10000D478();
  sub_100008280(v21);
  v128 = type metadata accessor for Log();
  sub_100003724();
  v127 = v22;
  __chkstk_darwin(v23);
  sub_1000030E4();
  v140 = v24;
  v25 = sub_100013FAC();
  v26 = type metadata accessor for AccountDataState(v25);
  sub_10000307C();
  __chkstk_darwin(v27);
  sub_10000306C();
  v30 = v29 - v28;
  v31 = type metadata accessor for CachedServerDataSyncTaskScheduleInput(0);
  v32 = (v31 - 8);
  __chkstk_darwin(v31);
  sub_10000306C();
  v35 = (v34 - v33);
  v36 = (v0 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_account);
  v123 = v0;
  v37 = v0 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100007F24();
  v142 = v37;
  sub_1000C6B44(v37, v30);
  v39 = *v4;
  v38 = v4[1];
  v40 = v4[2];
  v139 = v4[3];
  v42 = v4[4];
  v41 = v4[5];
  v135 = v38;
  v136 = v42;
  v133 = v4;
  v137 = v40;
  v138 = v41;
  v43 = sub_10000C4FC(v36, v36[3]);
  v44 = sub_10000F2C8(v43);
  v46 = v45;
  v47 = sub_10000C4FC(v36, v36[3]);
  v48 = v32[7];
  type metadata accessor for AccountIdentity();
  sub_10000307C();
  v50 = *(v49 + 16);
  v122 = v51;
  v121 = v50;
  v120 = v49 + 16;
  (v50)(v35 + v48, v47);
  sub_1000C68A8(v30 + v26[5], v35 + v32[15], &qword_1002DA970, &qword_1002318B0);
  sub_10000628C(v26[6]);
  sub_10000628C(v26[9]);
  sub_10000628C(v26[11]);
  v52 = *(v30 + v26[12]);
  sub_1000C68A8(v30 + v26[13], v35 + v32[20], &qword_1002DB940, &qword_100232B48);
  LODWORD(v48) = *(v30 + v26[8]);
  sub_100004A2C();
  sub_100010478();
  *v35 = v44;
  v35[1] = v46;
  *(v35 + v32[8]) = v39;
  *(v35 + v32[9]) = v135;
  v53 = v136;
  *(v35 + v32[10]) = v137;
  *(v35 + v32[11]) = v53;
  *(v35 + v32[12]) = 8;
  v54 = v139;
  *(v35 + v32[13]) = v138;
  *(v35 + v32[14]) = v54;
  *(v35 + v32[19]) = v52;
  *(v35 + v32[21]) = v48 != 3;
  v55 = sub_1000104CC(v35, v143);
  if (v55 != 11)
  {
    v56 = v55;
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100002834();
    v57 = type metadata accessor for LogInterpolation();
    sub_100003B78(v57);
    sub_10000A1F0();
    v60 = v59 & ~v58;
    v138 = v61;
    sub_1000C71C8();
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1002329E0;
    v136 = v62;
    v139 = v62 + v60;
    *(&v145 + 1) = type metadata accessor for AccountDataAccessActor(0);
    v63 = v123;
    *&v144 = v123;

    v64 = AMSLogKey();
    if (v64)
    {
      v65 = v64;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v144);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v66._countAndFlagsBits = 0xD00000000000001ALL;
    v66._object = 0x8000000100272D80;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v66);
    *(&v145 + 1) = &type metadata for CachedServerDataSyncTrigger;
    LODWORD(v137) = v56;
    LOBYTE(v144) = v56;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    v67 = sub_100010F78();
    sub_100004E24(v67, v68, v69);
    v70._countAndFlagsBits = sub_10000BEA8();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v70);
    LogInterpolation.init(stringInterpolation:)();
    v71 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID;
    v72 = v122;
    *(&v145 + 1) = v122;
    v73 = sub_100007914(&v144);
    v74 = v63;
    v121(v73, v63 + v71, v72);
    static LogInterpolation.traceableSensitive(_:)();
    v75 = sub_100010F78();
    sub_100004E24(v75, v76, v77);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100002860();
    v78._countAndFlagsBits = 0xD000000000000010;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v78);
    v79 = v142;
    v80 = *(v142 + v26[12]);
    *(&v145 + 1) = &type metadata for UInt;
    *&v144 = v80;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    v81 = sub_100010F78();
    v82 = v79;
    sub_100004E24(v81, v83, v84);
    v85._countAndFlagsBits = sub_100002E14();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v85);
    v86 = v124;
    sub_1000C68A8(v79 + v26[6], v124, &qword_1002DA970, &qword_1002318B0);
    v87 = sub_100013DDC();
    v88 = v134;
    if (sub_100004DFC(v87, v89, v134) == 1)
    {
      sub_100004E24(v86, &qword_1002DA970, &qword_1002318B0);
      v144 = 0u;
      v145 = 0u;
      v90 = v132;
    }

    else
    {
      *(&v145 + 1) = v88;
      sub_100007914(&v144);
      v90 = v132;
      sub_1000C7258();
      v91();
    }

    sub_1000C73EC();
    sub_100004E24(&v144, &unk_1002DFC10, &qword_10022E6D0);
    v92._countAndFlagsBits = sub_1000C6F80();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v92);
    v93 = v125;
    sub_1000C68A8(v82 + v26[13], v125, &qword_1002DB940, &qword_100232B48);
    v94 = type metadata accessor for CachedServerDataSyncAttempt(0);
    if (sub_100004DFC(v93, 1, v94) == 1)
    {
      sub_100004E24(v93, &qword_1002DB940, &qword_100232B48);
      v144 = 0u;
      v145 = 0u;
    }

    else
    {
      *(&v145 + 1) = v94;
      sub_100007914(&v144);
      v95 = sub_100005C58();
      sub_1000084E4(v95, v96);
    }

    v97 = v126;
    sub_1000C73EC();
    sub_100004E24(&v144, &unk_1002DFC10, &qword_10022E6D0);
    v98._countAndFlagsBits = sub_1000C6EE8();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v98);
    v99 = *(v82 + v26[8]);
    if (v99 == 3)
    {
      v100 = 0;
      v144 = 0uLL;
      *&v145 = 0;
    }

    else
    {
      LOWORD(v144) = v99;
      v100 = &type metadata for AccountDataChange;
    }

    *(&v145 + 1) = v100;
    sub_1000C73EC();
    sub_100004E24(&v144, &unk_1002DFC10, &qword_10022E6D0);
    v101._countAndFlagsBits = sub_1000C6F9C();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v101);
    sub_1000C68A8(v82 + v26[5], v97, &qword_1002DA970, &qword_1002318B0);
    v102 = sub_100013DDC();
    if (sub_100004DFC(v102, v103, v88) == 1)
    {
      sub_100004E24(v97, &qword_1002DA970, &qword_1002318B0);
      v144 = 0u;
      v145 = 0u;
    }

    else
    {
      *(&v145 + 1) = v88;
      sub_100007914(&v144);
      sub_1000C7258();
      v104();
    }

    v105 = v140;
    sub_1000C73EC();
    sub_100004E24(&v144, &unk_1002DFC10, &qword_10022E6D0);
    v106._countAndFlagsBits = sub_10000286C();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v106);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    (*(v127 + 8))(v105, v128);
    type metadata accessor for TaskPriority();
    v107 = v130;
    sub_100007B78();
    sub_100002728(v108, v109, v110, v111);
    v112 = v131;
    (*(v90 + 16))(v131, v143, v88);
    sub_1000C6E1C();
    v115 = sub_1000C6B9C(v113, v114, a1_5);
    v116 = (*(v90 + 80) + 96) & ~*(v90 + 80);
    v117 = swift_allocObject();
    *(v117 + 16) = v74;
    *(v117 + 24) = v115;
    *(v117 + 32) = v74;
    *(v117 + 40) = v137;
    v118 = v133;
    v119 = *(v133 + 1);
    *(v117 + 48) = *v133;
    *(v117 + 64) = v119;
    *(v117 + 80) = *(v118 + 2);
    (*(v90 + 32))(v117 + v116, v112, v88);
    swift_retain_n();
    sub_10013ABD4(0, 0, v107, &unk_100232B80, v117);
  }

  sub_100006C84();
  sub_100010478();
  sub_100007F24();
  sub_1000C6B44(v142, v141);
  sub_100005074();
}

uint64_t sub_10000EC20()
{
  v1 = type metadata accessor for Date();
  sub_100003724();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 96) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10000ECE0()
{
  sub_100007F3C();
  v1 = v0[64];
  sub_10000E138();
  v0[65] = v1;
  (*(v0[41] + 8))(v0[42], v0[40]);
  if (v1)
  {
  }

  sub_10000381C();

  return _swift_task_switch(v2);
}

void sub_10000EDA8()
{
  *(v2 + v1[13]) = v3;
  *(v2 + v1[14]) = v4;
  *(v2 + v1[17]) = v0;
}

uint64_t sub_10000EE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_10000EE6C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_10000EE88@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    return a2;
  }

  else
  {
    return v2;
  }
}

void sub_10000EE9C()
{
  *(v2 - 264) = *(v2 - 280);
  v3 = *(v2 - 296);
  *(v2 - 256) = v0;
  *(v2 - 248) = v3;
  v4 = *(v2 - 288);
  *(v2 - 240) = v1;
  *(v2 - 232) = v4;
}

uint64_t sub_10000EF90()
{

  return static LogInterpolation.prefix(_:_:)();
}

void sub_10000EFC4()
{
  v1 = 61;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

__n128 sub_10000EFE0()
{
  result = *(v1 + 32);
  *(v0 + 176) = *(v1 + 16);
  *(v0 + 192) = result;
  *(v0 + 201) = *(v1 + 41);
  *(v0 + 160) = *v1;
  return result;
}

uint64_t sub_10000F03C()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10000F090(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100099DF4(a3, a4);
}

uint64_t sub_10000F0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 - 160);

  return DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)(a1, a2, 0, 1, a5, 0, v7, 0);
}

__n128 sub_10000F0DC(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20)
{
  result = a20;
  a1[1] = a20;
  return result;
}

uint64_t sub_10000F13C()
{

  return dispatch thunk of MetricsActivity.complete<A>(with:)();
}

uint64_t sub_10000F1A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v4(v3);
  sub_100003BF0();
  v5 = sub_1000050CC();
  v6(v5);
  return a2;
}

uint64_t sub_10000F1F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 328))
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

uint64_t sub_10000F234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000F2C8(uint64_t a1)
{
  v2 = type metadata accessor for AMPAccount(0);
  v8 = v2;
  v9 = &off_1002B4510;
  sub_100007914(v7);
  sub_100005C78();
  sub_10000F1A0(a1, v3);
  v4 = sub_10000C4FC(v7, v8);
  v5._countAndFlagsBits = sub_10000F454(v4, [*(v4 + *(v2 + 20)) ams_isSandboxAccount]);
  String.append(_:)(v5);

  sub_1000102EC(0xD000000000000027, 0x80000001002732A0);
  sub_100004118(v7);
  return sub_1000050CC();
}

void sub_10000F420()
{
  v3 = *(v2 + *(v0 + 24));
  *(v1 + 1032) = v3;
  *(v1 + 1040) = *(v3 + 16);
}

uint64_t sub_10000F454(uint64_t a1, char a2)
{
  v3 = type metadata accessor for AccountIdentity.DSID();
  sub_100003724();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AccountIdentity.dsid.getter();
  v9 = AccountIdentity.DSID.value.getter();
  (*(v5 + 8))(v8, v3);
  v15 = v9;
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  v12 = v11;
  if (a2)
  {
    v15 = v10;
    v16 = v11;

    v13._countAndFlagsBits = 0x786F62646E61732ELL;
    v13._object = 0xE800000000000000;
    String.append(_:)(v13);

    v10 = v15;
    v12 = v16;
  }

  sub_10000F598(v10, v12);

  return sub_100007198();
}

void sub_10000F598(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SHA512();
  sub_100003724();
  *&v44 = v5;
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA512Digest();
  sub_100003724();
  v43 = v10;
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v40 - v15;

  sub_10000F99C(a1, a2);
  sub_10000FFF0(&qword_1002DA5E8, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  dispatch thunk of HashFunction.init()();
  v17 = sub_100003060();
  sub_10000FF98(v17, v18);
  v19 = sub_100003060();
  sub_10001010C(v19, v20, v8);
  v21 = sub_100003060();
  sub_10000D170(v21, v22);
  dispatch thunk of HashFunction.finalize()();
  (*(v44 + 8))(v8, v4);
  v23 = sub_100003060();
  sub_10000D170(v23, v24);
  v25 = *(v43 + 16);
  v41 = v16;
  v25(v13, v16, v9);
  sub_10000FFF0(&qword_1002DA5F0, &type metadata accessor for SHA512Digest, &protocol conformance descriptor for SHA512Digest);
  v42 = v9;
  dispatch thunk of Sequence.makeIterator()();
  v26 = v45;
  v27 = v46;
  v28 = v45[2];
  v29 = _swiftEmptyArrayStorage;
  if (v46 == v28)
  {
LABEL_2:

    v45 = v29;
    sub_100099DF4(&qword_1002DA600, &qword_10022E490);
    sub_100010288();
    BidirectionalCollection<>.joined(separator:)();

    (*(v43 + 8))(v41, v42);
  }

  else
  {
    v44 = xmmword_10022E400;
    v30 = v46;
    while ((v27 & 0x8000000000000000) == 0)
    {
      if (v30 >= v26[2])
      {
        goto LABEL_13;
      }

      v31 = *(v26 + v30 + 32);
      sub_100099DF4(&qword_1002DA5F8, &qword_10022E488);
      v32 = swift_allocObject();
      *(v32 + 16) = v44;
      *(v32 + 56) = &type metadata for UInt8;
      *(v32 + 64) = &protocol witness table for UInt8;
      *(v32 + 32) = v31;
      v33 = String.init(format:_:)();
      v35 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000101B8();
        v29 = v38;
      }

      v36 = v29[2];
      if (v36 >= v29[3] >> 1)
      {
        sub_1000101B8();
        v29 = v39;
      }

      ++v30;
      v29[2] = v36 + 1;
      v37 = &v29[2 * v36];
      v37[4] = v33;
      v37[5] = v35;
      if (v28 == v30)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_10000F99C(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v47[0] = a1;
  v47[1] = a2;
  *&v50 = a1;
  *(&v50 + 1) = a2;

  sub_100099DF4(&qword_1002DA610, &qword_10022E498);
  if (swift_dynamicCast())
  {
    sub_10000601C(v48, &v51);
    sub_10000C4FC(&v51, v52);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v48[0] = v50;
    sub_100004118(&v51);
    goto LABEL_56;
  }

  v49 = 0;
  memset(v48, 0, sizeof(v48));
  sub_10000FE68(v48);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v48[0] = a1;
    *(&v48[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v48;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter();
  }

  sub_10000FED0(v5, v6, &v51);
  v7 = *(&v51 + 1);
  v8 = v51;
  if (*(&v51 + 1) >> 60 != 15)
  {
    v48[0] = v51;
    goto LABEL_56;
  }

LABEL_9:
  *&v48[0] = Data._Representation.init(count:)();
  *(&v48[0] + 1) = v9;
  __chkstk_darwin(*&v48[0]);
  v42[2] = v47;
  v10 = sub_10009A02C(sub_10009A784, v42);
  v12 = *(&v48[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v48[0]);
  switch(*(&v48[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v48[0]) - LODWORD(v48[0]);
      if (__OFSUB__(DWORD1(v48[0]), v48[0]))
      {
        goto LABEL_63;
      }

      v19 = v19;
LABEL_19:
      if (v11 == v19)
      {
        goto LABEL_20;
      }

      if (v12 == 2)
      {
        v18 = *(*&v48[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v48[0] >> 32;
      }

      goto LABEL_53;
    case 2:
      v21 = *(*&v48[0] + 16);
      v20 = *(*&v48[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_15:
      if (v11)
      {
        v18 = 0;
LABEL_53:
        if (v18 < v11)
        {
          __break(1u);
LABEL_63:
          __break(1u);
        }

        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_55;
      }

LABEL_20:
      v42[4] = v4;
      v43 = v8;
      v44 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      v45 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v46 = v15 & 0xFFFFFFFFFFFFFFLL;
      *(&v50 + 7) = 0;
      *&v50 = 0;
      break;
    case 3:
      goto LABEL_15;
    default:
      v19 = BYTE14(v48[0]);
      goto LABEL_19;
  }

  while (4 * v24 != v17 >> 14)
  {
    v4 = v17 & 0xC;
    v27 = v17;
    if (v4 == v26)
    {
      v31 = sub_100003738();
      v27 = sub_10009A610(v31, v32, v33);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      String.UTF8View._foreignCount()();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_9;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v51 = v13;
      *(&v51 + 1) = v46;
      v30 = *(&v51 + v28);
    }

    else
    {
      v29 = v45;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = _StringObject.sharedUTF8.getter();
      }

      v30 = *(v29 + v28);
    }

    if (v4 == v26)
    {
      v34 = sub_100003738();
      v17 = sub_10009A610(v34, v35, v36);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_38:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_43;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_59;
    }

    sub_100003738();
    v17 = String.UTF8View._foreignIndex(after:)();
LABEL_43:
    *(&v50 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_58;
    }

    if (v23 == 14)
    {
      sub_100007588();
      Data._Representation.append(contentsOf:)();
      LOBYTE(v23) = 0;
    }
  }

  if (!v23)
  {

    sub_10009A7A0(v43, v44);
    goto LABEL_56;
  }

  sub_100007588();
  Data._Representation.append(contentsOf:)();
  sub_10009A7A0(v43, v44);
LABEL_55:

LABEL_56:
  v37 = sub_100007198();
  sub_10000FF98(v37, v38);

  v39 = sub_100007198();
  sub_10000D170(v39, v40);
  return sub_100007198();
}

uint64_t sub_10000FE68(uint64_t a1)
{
  v2 = sub_100099DF4(&qword_1002DA618, &qword_10022E4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000FED0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = Data.InlineData.init(_:)();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_10000FF98(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_10000FFF0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010038(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SHA512();
  sub_10000FFF0(&qword_1002DA5E8, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_10001010C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v8;
LABEL_9:
      result = sub_10009A66C(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return result;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
      goto LABEL_9;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_100010038(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x1000101A8);
      }

      return result;
  }
}

void sub_1000101B8()
{
  sub_1000076BC();
  if (v4)
  {
    sub_100006D74();
    if (v5 != v6)
    {
      sub_100007310();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  sub_1000066AC();
  if (v3)
  {
    v7 = sub_100099DF4(&qword_1002DD538, &unk_100238260);
    v8 = sub_100003CDC(v7);
    j__malloc_size(v8);
    sub_100007C48();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = sub_10000C078();
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

unint64_t sub_100010288()
{
  result = qword_1002DA608;
  if (!qword_1002DA608)
  {
    v3 = sub_10009A468(&qword_1002DA600, &qword_10022E490);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1002DA608);
  }

  return result;
}

uint64_t sub_1000102EC(uint64_t a1, uint64_t a2)
{
  v3 = *(String.utf8CString.getter() + 16);

  if (v3 < 0x81)
  {
    return a1;
  }

  v4 = String.count.getter();
  v5 = 0;
  if (String.count.getter())
  {
LABEL_9:

    return v5;
  }

  if (v4 >= 127)
  {
    v4 = 127;
  }

  while (1)
  {
    String.index(_:offsetBy:)();
    String.subscript.getter();
    v6 = static String._fromSubstring(_:)();

    v7 = *(String.utf8CString.getter() + 16);

    if (__OFSUB__(v4--, 1))
    {
      break;
    }

    if (v7 <= 0x80)
    {
      v5 = v6;
    }

    if (String.count.getter())
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100010438(uint64_t a1)
{

  return sub_100002728(v1, 1, 1, a1);
}

uint64_t sub_100010458(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 24) = v3;
}

uint64_t sub_100010478()
{
  v1 = sub_100002834();
  v2(v1);
  sub_10000307C();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1000104CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100099DF4(&qword_1002DB940, &qword_100232B48);
  sub_1000030B8(v5);
  sub_100003774();
  __chkstk_darwin(v6);
  v7 = sub_10000737C();
  v8 = type metadata accessor for CachedServerDataSyncAttempt(v7);
  sub_10000307C();
  __chkstk_darwin(v9);
  sub_10000306C();
  v12 = (v11 - v10);
  v13 = type metadata accessor for CachedServerDataSyncTaskScheduleInput(0);
  sub_100010660(a1 + v13[18], v2, &qword_1002DB940, &qword_100232B48);
  if (sub_100004DFC(v2, 1, v8) == 1)
  {
    sub_100004E24(v2, &qword_1002DB940, &qword_100232B48);
    if (*(a1 + v13[19]))
    {
      return 2;
    }

    else if (*(a1 + v13[17]))
    {
      return 3;
    }

    else if (sub_10001074C(a1 + v13[13], a2))
    {
      return 1;
    }

    else
    {
      return 11;
    }
  }

  else
  {
    sub_100137E40(v2, v12);
    v14 = *v12;
    sub_10013AB78(v12);
  }

  return v14;
}

uint64_t sub_100010660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100099DF4(a3, a4);
  sub_100003BF0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000106D0(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 245)
  {
    v3 = *a1;
    if (v3 >= 0xB)
    {
      return v3 - 10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for Date();
    v6 = sub_100003F68(*(a3 + 20));

    return sub_100004DFC(v6, v7, v8);
  }
}

uint64_t sub_10001074C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v4);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_10000737C();
  v6 = type metadata accessor for Date();
  sub_100003724();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10000306C();
  v12 = v11 - v10;
  sub_100010660(a1, v2, &qword_1002DA970, &qword_1002318B0);
  if (sub_100004DFC(v2, 1, v6) == 1)
  {
    sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
    v13 = 1;
  }

  else
  {
    (*(v8 + 32))(v12, v2, v6);
    sub_1000108D8();
    v14 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v8 + 8))(v12, v6);
    v13 = v14 ^ 1;
  }

  return v13 & 1;
}

unint64_t sub_1000108D8()
{
  result = qword_1002DB968;
  if (!qword_1002DB968)
  {
    v3 = type metadata accessor for Date();
    result = swift_getWitnessTable(&protocol conformance descriptor for Date, v3, v0, v1);
    atomic_store(result, &qword_1002DB968);
  }

  return result;
}

uint64_t sub_100010960()
{
  v6 = *(v0 + 336);
  sub_100002728(*(v0 + 384) + v1, 0, 1, v4);
  v7 = *(*(v5 - 72) + 44);
  v8 = *(v0 + 384) + v7;

  return sub_1000C68A8(v6 + v7, v8, v3, v2);
}

uint64_t sub_100010A34()
{
  sub_100002E38();
  v1 = v0[61];
  v3 = v0[45];
  v2 = v0[46];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];
  v7 = sub_10000C4FC(v0 + 8, v0[11]);
  v8 = *(v5 + 16);
  v8(v4, v7, v6);
  sub_10000BC88();
  sub_10000F1A0(v2, v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[33] = v1;
  result = sub_10000DA08();
  v12 = *(v1 + 16);
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = result;
  v16 = v11;
  sub_100099DF4(&qword_1002DBBD8, &qword_100232E78);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v14))
  {
    v17 = sub_10000DA08();
    if ((v16 & 1) != (v18 & 1))
    {
      sub_1000D34C8();

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v15 = v17;
  }

  v20 = v0[33];
  v21 = v0[45];
  if ((v16 & 1) == 0)
  {
    v23 = v0[38];
    v22 = v0[39];
    v24 = v0[37];
    v20[(v15 >> 6) + 8] |= 1 << v15;
    v8(v20[6] + *(v23 + 72) * v15, v22, v24);
    sub_100010D8C();
    result = sub_10000853C(v21, v25);
    v26 = v20[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (!v27)
    {
      v20[2] = v28;
      goto LABEL_12;
    }

LABEL_20:
    __break(1u);
    return result;
  }

  sub_1000D2C8C(v0[45], v20[7] + *(v0[44] + 72) * v15);
LABEL_12:
  v29 = v0[46];
  v31 = v0[38];
  v30 = v0[39];
  v32 = v0[37];

  (*(v31 + 8))(v30, v32);
  sub_100010EFC(v29);
  sub_100004118(v0 + 8);
  v33 = v0[59];
  v34 = v0[60] + 1;
  v0[60] = v34;
  v0[61] = v20;
  if (v34 == v33)
  {
    sub_100003024();
    v35 = sub_10000A520();
    sub_1001AC540(v35, v36, v37);

    sub_1000D3518();
    sub_1000D34C8();

    __asm { BRAA            X2, X16 }
  }

  sub_100007974(v0[34] + 40 * v34 + 32, (v0 + 8));
  swift_task_alloc();
  sub_10000DEA0();
  v0[62] = v40;
  *v40 = v41;
  sub_100013FB8(v40);
  sub_1000D34C8();

  return sub_10000D3F0(v42);
}

uint64_t sub_100010D2C@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v3 + v1, v4 + a1, v5, v2);
}

uint64_t sub_100010D4C(uint64_t a1, uint64_t a2)
{

  return sub_1000B9E6C();
}

uint64_t sub_100010D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{
  *(a1 + 16) = a17;
  *(v19 + 2648) = v18;
  *(v19 + 2624) = v17;
}

uint64_t sub_100010DEC(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

void sub_100010E50()
{

  sub_10013C578();
}

NSString sub_100010E90()
{
  *(v1 + 1992) = *v0;
  *(v1 + 2000) = v0[1];

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100010EFC(uint64_t a1)
{
  v2 = type metadata accessor for AccountDataState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010F58(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_100010FA8()
{
}

uint64_t sub_100010FD0()
{

  return type metadata accessor for AutoBugCaptureReport();
}

uint64_t sub_100010FEC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011034(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_10009A468(a2, a3);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011088()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_10000452C();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 432) = v5;
  *(v3 + 440) = v0;

  if (v0)
  {
  }

  sub_10000381C();

  return _swift_task_switch(v6);
}

void *sub_10001119C()
{
  v36 = v0;
  v1 = v0[54];
  v2 = v0[41];
  v29 = v0[36];
  sub_100099DF4(&qword_1002DB9A8, &qword_100232BB8);
  result = static _DictionaryStorage.copy(original:)();
  v4 = result;
  v5 = 0;
  v6 = v1 + 64;
  v30 = v2;
  v7 = 1 << *(v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v1 + 64);
  v10 = (v7 + 63) >> 6;
  v28 = result + 8;
  v31 = result;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v33 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = v32[40];
      v16 = v32[37];
      v17 = v32[34];
      v34 = v32[42];
      v18 = *(v30 + 72) * v14;
      (*(v30 + 16))();
      sub_10000BC88();
      sub_10000F1A0(v19, v17);
      sub_100010D8C();
      sub_10000853C(v17, v16);
      swift_storeEnumTagMultiPayload();
      *(v28 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v4 = v31;
      (*(v30 + 32))(v31[6] + v18, v34, v15);
      result = sub_1000D3234(v16, v31[7] + *(v29 + 72) * v14, &qword_1002DB970, &qword_100232F30);
      v20 = v31[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v31[2] = v22;
      v9 = v33;
      if (!v33)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v33 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    v23 = v32[50];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v23;
    sub_100011544(v4, sub_100011E28, 0, isUniquelyReferenced_nonNull_native, &v35);

    v25 = v35;
    sub_100003AE0(0, &qword_1002DBBF8, AMSAccountCachedServerDataResponse_ptr);
    v26 = sub_1000122F4(v25);

    sub_1000D3518();

    return v27(v26);
  }

  return result;
}

uint64_t sub_1000114E8()
{
  sub_100002FBC();
  sub_100099DF4(v1, v2);
  sub_10000B7EC();
  v3 = sub_1000050CC();
  v4(v3);
  return v0;
}

uint64_t sub_100011544(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v41 = a4;
  v9 = &qword_1002DB970;
  v10 = sub_100099DF4(&qword_1002DB970, &qword_100232F30);
  v40 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v49 = v38 - v11;
  v42 = type metadata accessor for AccountIdentity();
  v12 = *(v42 - 8);
  __chkstk_darwin(v42);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100099DF4(&qword_1002DBC08, &qword_100232F60);
  __chkstk_darwin(v15 - 8);
  v17 = v38 - v16;
  sub_100011968(a1, a2, a3, v47);
  v43 = v47[0];
  v44 = v47[1];
  v45 = v47[2];
  v46 = v48;
  v39 = v12;
  v18 = (v12 + 32);
  v38[2] = a1;

  v38[1] = a3;

  while (1)
  {
    sub_1000119A4(v17);
    v19 = sub_100099DF4(&qword_1002DBC00, &qword_100232F58);
    if (sub_100004DFC(v17, 1, v19) == 1)
    {
      goto LABEL_14;
    }

    v20 = *(v19 + 48);
    v21 = *v18;
    (*v18)(v14, v17, v42);
    v22 = v9;
    sub_1000D3234(&v17[v20], v49, v9, &qword_100232F30);
    v23 = *a5;
    v25 = sub_10000DA08();
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if (v41)
      {
        if (v24)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_100099DF4(&qword_1002DBBF0, &unk_100232F40);
        _NativeDictionary.copy()();
        if (v29)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      sub_100011EA4(v28, v41 & 1);
      v30 = sub_10000DA08();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_17;
      }

      v25 = v30;
      if (v29)
      {
LABEL_13:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001ELL, 0x80000001002735D0, "amsaccountsd/CachedServerDataService.swift", 42, 2, 132);
        __break(1u);
LABEL_14:
        sub_1000122EC(v43);
      }
    }

    v32 = *a5;
    *(*a5 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v21((v32[6] + *(v39 + 72) * v25), v14, v42);
    v33 = v32[7] + *(v40 + 72) * v25;
    v9 = v22;
    sub_1000D3234(v49, v33, v22, &qword_100232F30);
    v34 = v32[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_16;
    }

    v32[2] = v36;
    v41 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100011968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_1000119A4(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = sub_100099DF4(&qword_1002DB990, &qword_100232F50);
  __chkstk_darwin(v2);
  v4 = &v39 - v3;
  v5 = sub_100099DF4(&qword_1002DB970, &qword_100232F30);
  v43 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for AccountIdentity();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100099DF4(&qword_1002DB978, &qword_100232BA0);
  __chkstk_darwin(v12 - 8);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = __chkstk_darwin(v14);
  v17 = &v39 - v16;
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v40 = v4;
  v44 = v20;
  if (v22)
  {
    v42 = v17;
    v23 = v21;
LABEL_7:
    v41 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v23 << 6);
    v25 = v11;
    v26 = v18;
    (*(v9 + 16))(v25, *(v18 + 48) + *(v9 + 72) * v24, v8, v15);
    sub_1000D31EC(*(v26 + 56) + *(v43 + 72) * v24, v7, &qword_1002DB970, &qword_100232F30);
    v27 = v7;
    v28 = *(v2 + 48);
    v17 = v42;
    (*(v9 + 32))();
    v29 = v41;
    sub_1000D3234(v27, &v17[v28], &qword_1002DB970, &qword_100232F30);
    v30 = 0;
LABEL_8:
    v31 = 1;
    sub_100002728(v17, v30, 1, v2);
    *v1 = v26;
    v1[1] = v19;
    v1[2] = v44;
    v1[3] = v21;
    v1[4] = v29;
    v32 = v1[5];
    v33 = v17;
    v34 = v45;
    sub_1000D3234(v33, v45, &qword_1002DB978, &qword_100232BA0);
    v35 = sub_100004DFC(v34, 1, v2);
    v36 = v46;
    if (v35 != 1)
    {
      v37 = v40;
      sub_1000D3234(v34, v40, &qword_1002DB990, &qword_100232F50);
      v32(v37);
      sub_100004E7C(v37, &qword_1002DB990, &qword_100232F50);
      v31 = 0;
    }

    v38 = sub_100099DF4(&qword_1002DBC00, &qword_100232F58);
    sub_100002728(v36, v31, 1, v38);
  }

  else
  {
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= ((v20 + 64) >> 6))
      {
        v29 = 0;
        v30 = 1;
        v26 = v18;
        goto LABEL_8;
      }

      v22 = *(v19 + 8 * v23);
      ++v21;
      if (v22)
      {
        v42 = v17;
        v21 = v23;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100011D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AccountIdentity();
  (*(*(v8 - 8) + 16))(a1, a3, v8);
  return sub_1000D31EC(a4, a2, &qword_1002DB970, &qword_100232F30);
}

uint64_t sub_100011E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_100099DF4(&qword_1002DB990, &qword_100232F50) + 48);
  v5 = a2 + *(sub_100099DF4(&qword_1002DBC00, &qword_100232F58) + 48);

  return sub_100011D9C(a2, v5, a1, a1 + v4);
}

uint64_t sub_100011EA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_100099DF4(&qword_1002DB970, &qword_100232F30);
  v44 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v49 = v41 - v6;
  v7 = type metadata accessor for AccountIdentity();
  sub_100003724();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000030E4();
  v48 = v11;
  v12 = *v2;
  sub_100099DF4(&qword_1002DB9A8, &qword_100232BB8);
  v45 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (!*(v12 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v14;
    return result;
  }

  v41[0] = v2;
  v15 = 0;
  v16 = (v12 + 64);
  v17 = 1 << *(v12 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v12 + 64);
  v20 = (v17 + 63) >> 6;
  v41[1] = v9 + 16;
  v42 = v9;
  v46 = (v9 + 32);
  v21 = result + 64;
  v43 = v12;
  if (!v19)
  {
LABEL_7:
    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v23 = v16[v15];
      ++v22;
      if (v23)
      {
        v19 = (v23 - 1) & v23;
        goto LABEL_12;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41[0];
      goto LABEL_33;
    }

    v40 = 1 << *(v12 + 32);
    v3 = v41[0];
    if (v40 >= 64)
    {
      sub_1000EA578(0, (v40 + 63) >> 6, v16);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v12 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v19 &= v19 - 1;
LABEL_12:
    v47 = *(v9 + 72);
    if (v45)
    {
      v24 = sub_10000B9D0();
      v25(v24);
      v26 = sub_100007BB8();
      sub_100012CF4(v26, v27, &qword_1002DB970, &qword_100232F30);
    }

    else
    {
      v28 = sub_10000B9D0();
      v29(v28);
      v30 = sub_100007BB8();
      sub_10003D178(v30, v31, &qword_1002DB970, &qword_100232F30);
    }

    sub_10001391C(&qword_1002DE9E0, &type metadata accessor for AccountIdentity, &protocol conformance descriptor for AccountIdentity);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v32 = -1 << *(v14 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
    {
      break;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v21 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    (*v46)(*(v14 + 48) + v47 * v35, v48, v7);
    result = sub_100012CF4(v49, *(v14 + 56) + v12 * v35, &qword_1002DB970, &qword_100232F30);
    ++*(v14 + 16);
    v9 = v42;
    v12 = v43;
    if (!v19)
    {
      goto LABEL_7;
    }
  }

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
    v39 = *(v21 + 8 * v34);
    if (v39 != -1)
    {
      v35 = __clz(__rbit64(~v39)) + (v34 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

id sub_1000122F4(uint64_t a1)
{
  v94 = a1;
  v1 = type metadata accessor for AccountDataState(0);
  __chkstk_darwin(v1 - 8);
  sub_1000030E4();
  v100 = v2;
  v99 = sub_100099DF4(&qword_1002DB970, &qword_100232F30);
  sub_100003724();
  v93 = v3;
  __chkstk_darwin(v4);
  sub_10000308C();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = v90 - v9;
  __chkstk_darwin(v11);
  v92 = v90 - v12;
  v112 = type metadata accessor for AccountIdentity();
  sub_100003724();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10000308C();
  v110 = v16 - v17;
  __chkstk_darwin(v18);
  v103 = v90 - v19;
  v20 = sub_100099DF4(&qword_1002DB978, &qword_100232BA0);
  __chkstk_darwin(v20 - 8);
  sub_10000308C();
  v102 = v21 - v22;
  __chkstk_darwin(v23);
  v25 = v90 - v24;
  v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v27 = sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
  v28 = sub_100003AE0(0, &qword_1002DB980, AMSAccountCachedServerDataAccountResult_ptr);
  v29 = sub_100012BC4();
  v30 = v26;
  Dictionary.init(dictionaryLiteral:)();
  v108 = v28;
  v109 = v27;
  v107 = v29;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v30 setAllAccountResults:isa];

  v111 = v30;
  v32 = 0;
  v34 = v94 + 64;
  v33 = *(v94 + 64);
  v35 = 1 << *(v94 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v33;
  v38 = (v35 + 63) >> 6;
  v90[3] = v14 + 16;
  v105 = (v14 + 32);
  v90[2] = "During read, found reason ";
  v90[1] = "No account data found";
  v91 = v14;
  v95 = (v14 + 8);
  v96 = v38;
  v97 = v94 + 64;
  v98 = v7;
  v104 = v10;
  v101 = v25;
  if ((v36 & v33) != 0)
  {
    while (1)
    {
      v39 = v32;
LABEL_10:
      v41 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v42 = v41 | (v39 << 6);
      v43 = v94;
      v44 = v91;
      v45 = v112;
      (*(v91 + 16))(v103, *(v94 + 48) + *(v91 + 72) * v42, v112);
      v46 = v92;
      sub_10003D178(*(v43 + 56) + *(v93 + 72) * v42, v92, &qword_1002DB970, &qword_100232F30);
      v47 = sub_100099DF4(&qword_1002DB990, &qword_100232F50);
      v48 = *(v47 + 48);
      v49 = *(v44 + 32);
      v40 = v102;
      v49(v102, v103, v45);
      sub_100012CF4(v46, v40 + v48, &qword_1002DB970, &qword_100232F30);
      sub_100002728(v40, 0, 1, v47);
      v10 = v104;
LABEL_11:
      v50 = v40;
      v51 = v101;
      sub_100012CF4(v50, v101, &qword_1002DB978, &qword_100232BA0);
      v52 = sub_100099DF4(&qword_1002DB990, &qword_100232F50);
      if (sub_100004DFC(v51, 1, v52) == 1)
      {
        break;
      }

      v53 = *(v52 + 48);
      (*v105)(v110, v51, v112);
      sub_100012CF4(v51 + v53, v10, &qword_1002DB970, &qword_100232F30);
      v54 = AccountIdentity.amsAccountIdentity()();
      v55 = [objc_allocWithZone(AMSAccountCachedServerDataAccountResult) init];
      v56 = v10;
      v57 = v98;
      sub_10003D178(v56, v98, &qword_1002DB970, &qword_100232F30);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v58 = _convertErrorToNSError(_:)();
        [v55 setError:v58];
      }

      else
      {
        v59 = v100;
        sub_100012D9C(v57, v100);
        v60 = sub_100012E00(v59);
        if (v60)
        {
          v61 = v60;
          [v55 setFields:v60];
        }

        else
        {
          v63 = String._bridgeToObjectiveC()();
          v64 = String._bridgeToObjectiveC()();
          v61 = AMSError();

          v65 = _convertErrorToNSError(_:)();
          [v55 setError:v65];
        }

        sub_100010EFC(v100);
      }

      v66 = v54;
      v67 = v55;
      v68 = [v111 allAccountResults];
      v69 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v106 = v67;
      if ((v69 & 0xC000000000000001) != 0)
      {
        if (v69 >= 0)
        {
          v69 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v70 = __CocoaDictionary.count.getter();
        if (__OFADD__(v70, 1))
        {
          goto LABEL_38;
        }

        v69 = sub_1000C7C70(v69, v70 + 1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = v69;
      v72 = sub_100013964();
      v74 = *(v69 + 16);
      v75 = (v73 & 1) == 0;
      v76 = v74 + v75;
      if (__OFADD__(v74, v75))
      {
        goto LABEL_37;
      }

      v77 = v72;
      v78 = v73;
      sub_100099DF4(&qword_1002DB998, &qword_100232BA8);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v76))
      {
        v79 = sub_100013964();
        v10 = v104;
        if ((v78 & 1) != (v80 & 1))
        {
          goto LABEL_40;
        }

        v77 = v79;
      }

      else
      {
        v10 = v104;
      }

      v81 = v106;
      v82 = v113;
      if (v78)
      {
        v83 = v113[7];
        v84 = *(v83 + 8 * v77);
        *(v83 + 8 * v77) = v106;
      }

      else
      {
        v113[(v77 >> 6) + 8] |= 1 << v77;
        *(v82[6] + 8 * v77) = v66;
        *(v82[7] + 8 * v77) = v81;
        v85 = v82[2];
        v86 = __OFADD__(v85, 1);
        v87 = v85 + 1;
        if (v86)
        {
          goto LABEL_39;
        }

        v82[2] = v87;
      }

      v88 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v111 setAllAccountResults:v88];

      sub_100004E24(v10, &qword_1002DB970, &qword_100232F30);
      (*v95)(v110, v112);
      v38 = v96;
      v34 = v97;
      if (!v37)
      {
        goto LABEL_5;
      }
    }

    return v111;
  }

  else
  {
LABEL_5:
    v40 = v102;
    while (1)
    {
      v39 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v39 >= v38)
      {
        v62 = sub_100099DF4(&qword_1002DB990, &qword_100232F50);
        sub_100002728(v40, 1, 1, v62);
        v37 = 0;
        goto LABEL_11;
      }

      v37 = *(v34 + 8 * v39);
      ++v32;
      if (v37)
      {
        v32 = v39;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_100012BC4()
{
  result = qword_1002DB988;
  if (!qword_1002DB988)
  {
    v3 = sub_100003AE0(255, &qword_1002DEA60, AMSAccountIdentity_ptr);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v3, v0, v1);
    atomic_store(result, &qword_1002DB988);
  }

  return result;
}

uint64_t sub_100012C2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100099DF4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100012C94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100099DF4(a3, a4);
  sub_10000307C();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100012CF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000048AC(a1, a2, a3, a4);
  sub_10000307C();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_100012D44()
{
  sub_100002FBC();
  sub_100099DF4(v1, v2);
  sub_10000307C();
  v3 = sub_1000050CC();
  v4(v3);
  return v0;
}

uint64_t sub_100012D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountDataState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100012E00(char *a1)
{
  v2 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v2 - 8);
  v4 = v42 - v3;
  v5 = type metadata accessor for Date();
  sub_100003724();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000308C();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = v42 - v13;
  memcpy(v78, a1, sizeof(v78));
  v15 = type metadata accessor for AccountDataState(0);
  sub_100013524();
  memcpy(v61, v60, sizeof(v61));
  v16 = 0;
  if (sub_100013900(v61) != 1)
  {
    v42[2] = v61[1];
    v42[3] = v61[0];
    v77 = BYTE1(v61[3]);
    v42[1] = v61[4];
    v17 = v61[5];
    v43 = v61[2];
    v44 = v61[8];
    v45 = v61[7];
    v46 = v61[10];
    v75 = BYTE1(v61[11]);
    v76 = v61[11];
    v73 = BYTE3(v61[11]);
    v74 = BYTE2(v61[11]);
    v47 = v61[9];
    v48 = v61[12];
    v71 = BYTE1(v61[13]);
    v72 = v61[13];
    v69 = BYTE3(v61[13]);
    v70 = BYTE2(v61[13]);
    v67 = BYTE5(v61[13]);
    v68 = BYTE4(v61[13]);
    v50 = v61[15];
    v51 = v61[14];
    v52 = v61[17];
    v53 = v61[16];
    v54 = v61[19];
    v55 = v61[18];
    v66 = v61[20];
    v49 = BYTE1(v61[20]);
    v56 = v61[22];
    v57 = v61[21];
    v42[0] = v61[29];
    v64 = BYTE1(v61[30]);
    v65 = v61[30];
    v63 = v61[33];
    v58 = v61[35];
    v59 = v61[34];
    v62 = BYTE1(v61[39]);
    v18 = v61[40];
    sub_10003D178(&a1[*(v15 + 20)], v4, &qword_1002DA970, &qword_1002318B0);
    if (sub_100004DFC(v4, 1, v5) == 1)
    {
      sub_100004E24(v60, &qword_1002DB920, &qword_100238870);
      v19 = &qword_1002DA970;
      v20 = &qword_1002318B0;
      v21 = v4;
LABEL_6:
      sub_100004E24(v21, v19, v20);
      return 0;
    }

    (*(v7 + 32))(v14, v4, v5);
    static Date.distantPast.getter();
    sub_10001391C(&qword_1002E27C0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *(v7 + 8);
    v23(v11, v5);
    if (v22)
    {
      v23(v14, v5);
      v19 = &qword_1002DB920;
      v20 = &qword_100238870;
      v21 = v60;
      goto LABEL_6;
    }

    v24 = v18;
    v16 = [objc_allocWithZone(AMSAccountCachedServerDataFields) init];
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_100006C9C(isa, "setExpiration:");

    v26 = String._bridgeToObjectiveC()();
    sub_100006C9C(v26, "setAcAccountName:");

    [v16 setAccountFlagsVersion:v43];
    v27 = [v16 setAutoPlayEnabled:v77];
    if (v17)
    {

      v28 = String._bridgeToObjectiveC()();
    }

    else
    {
      v28 = 0;
    }

    sub_100006C9C(v27, "setCombinedStoreFrontID:");

    v29 = String._bridgeToObjectiveC()();
    sub_100006C9C(v29, "setCreditBalance:");

    v30 = String._bridgeToObjectiveC()();
    sub_100006C9C(v30, "setFirstName:");

    [v16 setHasAgreedToAppClipTerms:v76];
    [v16 setHasAgreedToTerms:v75];
    [v16 setHasSubscriptionFamilySharingEnabled:v74];
    [v16 setHasHardwareWatchOffer:v73];
    [v16 setIdentityLastVerified:v48];
    [v16 setIsAskToBuy:v72];
    [v16 setIsDisabledAccount:v71];
    [v16 setIsInBadCredit:v70];
    [v16 setIsInFamily:v69];
    [v16 setIsManagedAccount:v67];
    [v16 setIsRestrictedAccount:v66];
    v31 = [v16 setIsInRestrictedRegion:v68];
    if (v49 == 2)
    {
      v32 = 0;
    }

    else
    {
      v31 = [objc_allocWithZone(NSNumber) initWithBool:v49 & 1];
      v32 = v31;
    }

    sub_100006C9C(v31, "setIsU18OrCountrysEquivalent:");

    v33 = String._bridgeToObjectiveC()();
    sub_100006C9C(v33, "setIsoCountryCode:");

    v34 = String._bridgeToObjectiveC()();
    sub_100006C9C(v34, "setIso2CountryCode:");

    v35 = String._bridgeToObjectiveC()();
    sub_100006C9C(v35, "setIso3CountryCode:");

    v36 = String._bridgeToObjectiveC()();
    sub_100006C9C(v36, "setLastName:");

    if (v65)
    {
      v38 = 0;
    }

    else
    {
      v39 = objc_allocWithZone(NSNumber);
      v37 = [v39 initWithUnsignedLongLong:v42[0]];
      v38 = v37;
    }

    sub_100006C9C(v37, "setOneAccountLinkedDSID:");

    [v16 setPersonalization:v64];
    [v16 setRetailDemo:v63];
    v40 = String._bridgeToObjectiveC()();
    sub_100006C9C(v40, "setStorefrontId:");

    [v16 setUnderThirteen:v62];
    [v16 setVerifiedExpirationDate:v24];
    sub_100004E24(v60, &qword_1002DB920, &qword_100238870);
    v23(v14, v5);
  }

  return v16;
}

void sub_100013524()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_10012EC60(v14);
  if (sub_100013900(v14) != 1)
  {
    v61 = v16;
    v60 = v23;
    v59 = v24;
    v6.i32[0] = v28;
    v7 = vmovl_u8(v6).u64[0];
    if (v3 == 3 || v3 == 2)
    {
      v9 = v1;
      if (v1 == 3 || v1 == 2)
      {
        v11 = v61;
      }

      else
      {
        v11 = v1;
      }

      if (v3 == 3)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = v3;
    }

    v12 = HIBYTE(v3);
    if (v12 != 2)
    {
LABEL_22:
      *&__src[16] = v14[2];
      __src[24] = v15;
      __src[25] = v11 & 1;
      *&__src[32] = v17;
      *&__src[72] = v21;
      __src[88] = v60;
      __src[89] = v59;
      __src[90] = v25 & 1;
      __src[91] = v26 & 1;
      *&__src[96] = v27;
      __src[108] = v29 & 1;
      __src[109] = v30 & 1;
      *&__src[112] = v31;
      *&__src[128] = v33;
      *&__src[144] = v35;
      __src[160] = v37 & 1;
      __src[161] = v38;
      *&__src[168] = v39;
      *&__src[184] = v41;
      __src[208] = v43 & 1;
      *&__src[216] = v44;
      *&__src[192] = v42;
      *&__src[224] = v45;
      __src[240] = v46 & 1;
      __src[241] = v12 & 1;
      *&__src[248] = v48;
      __src[264] = v50 & 1;
      *&__src[272] = v51;
      *&__src[288] = v53;
      *&__src[304] = v55;
      __src[312] = v56 & 1;
      __src[313] = v57 & 1;
      *&__src[320] = v58;
      *__src = v14[0];
      *&__src[8] = v14[1];
      *&__src[64] = v20;
      *&__src[40] = v18;
      *&__src[48] = v19;
      *&__src[80] = v22;
      *&__src[104] = vuzp1_s8((v7 & 0xFF01FF01FF01FF01), (v7 & 0xFF01FF01FF01FF01)).u32[0];
      *&__src[120] = v32;
      *&__src[136] = v34;
      *&__src[152] = v36;
      *&__src[176] = v40;
      *&__src[256] = v49;
      *&__src[280] = v52;
      *&__src[296] = v54;
      PIScheduledRotationConfiguration.rotationInterval.getter();
      memcpy(__dst, __src, 0x148uLL);

      goto LABEL_23;
    }

    v9 = v1;
LABEL_17:
    if (v9 == 3)
    {
      LOBYTE(v12) = v47;
    }

    else if (HIBYTE(v1) == 2)
    {
      LOBYTE(v12) = v47;
    }

    else
    {
      LOBYTE(v12) = HIBYTE(v1);
    }

    goto LABEL_22;
  }

  sub_10012EC60(__dst);
LABEL_23:
  memcpy(v5, __dst, 0x148uLL);
  sub_1000027F8();
}

uint64_t sub_100013900(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10001391C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100013964()
{
  NSObject._rawHashValue(seed:)(*(v0 + 40));
  v1 = sub_100004938();

  return sub_1000139A4(v1, v2);
}

unint64_t sub_1000139A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_100150E84();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100013A64()
{
  sub_10000DB4C();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 16);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;

  v9 = *(v5 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = sub_100008D64();
    v12(v11, 0, v10);

    _Block_release(v9);
  }

  else
  {
    v13 = sub_100008D64();
    v14(v13, v4, 0);
    _Block_release(v9);
  }

  sub_1000D33F4();

  return v15();
}

uint64_t sub_100013C08@<X0>(uint64_t a1@<X8>)
{

  return sub_10003D178(v5 + v1, v4 + a1, v3, v2);
}

void sub_100013C28()
{
  v1 = 0x63636120726F6620;
  v2 = 0xED00003A746E756FLL;

  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v1);
}

__n128 sub_100013C64@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 160);
  *a1 = *(v1 - 176);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 - 144);
  result = *(v1 - 135);
  *(a1 + 41) = result;
  return result;
}

void sub_100013CD0(uint64_t a1, uint64_t a2)
{

  sub_10013C2FC();
}

uint64_t sub_100013CE8()
{
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_10016CD84;

  return swift_continuation_init();
}

uint64_t sub_100013D34@<X0>(uint64_t a1@<X8>)
{
  sub_10000C4FC((a1 + 136), v1);

  return dispatch thunk of MetricsQueue.enqueue(event:)();
}

NSString sub_100013D74()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100013E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(a6 + 56) + 16 * v8);
  result = v9[1];
  *v9 = v7;
  v9[1] = v6;
  return result;
}

_OWORD *sub_100013E54()
{

  return sub_10018AED4(v0, v2, 0x636F4C726F727265, 0xED00006E6F697461, v1, (v3 + 24));
}

uint64_t sub_100013EAC()
{
  sub_100004194();
  sub_1000030F8();
  v1 = *v0;
  sub_100004504();
  *v2 = v1;

  sub_100003844();

  return v3();
}

uint64_t sub_100014034()
{

  return sub_10014EB30(0x63617073656D616ELL, 0xE900000000000065);
}

uint64_t sub_100014074(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_1000140E4()
{

  return swift_allocObject();
}

uint64_t sub_1000141C0()
{
  _Block_release(*(v0 + 32));

  v1 = sub_10000F3C0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100014208()
{
  sub_1000D354C();
  sub_10000DB4C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  sub_100003BD8(v1);
  sub_10000AD14();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000142A8(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = type metadata accessor for Date();
  v4[3] = v7;
  v4[4] = *(v7 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = _Block_copy(a3);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[7] = v8;
  a4;
  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_1000149D4;

  return sub_1000143FC();
}

uint64_t sub_1000143FC()
{
  sub_100004194();
  v1[32] = v2;
  v1[33] = v0;
  v1[30] = v3;
  v1[31] = v4;
  v1[34] = swift_getObjectType();
  v5 = type metadata accessor for MetricsEvent();
  v1[35] = v5;
  sub_100003B78(v5);
  v1[36] = v6;
  v1[37] = sub_100003FA8();
  v7 = type metadata accessor for Date();
  v1[38] = v7;
  sub_100003B78(v7);
  v1[39] = v8;
  v1[40] = sub_100003FA8();
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v9);
  v1[41] = sub_100003FA8();
  v10 = type metadata accessor for Log();
  v1[42] = v10;
  sub_100003B78(v10);
  v1[43] = v11;
  v1[44] = sub_100003FA8();
  v12 = sub_10000EF80();

  return _swift_task_switch(v12);
}

void sub_100014568(uint64_t a1)
{
  v2 = v1;
  v4 = v1[33];
  v3 = v1[34];
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v5 = type metadata accessor for LogInterpolation();
  sub_100003B78(v5);
  sub_10000A1F0();
  v6 = sub_1000D3384();
  v1[18] = v4;
  *(v6 + 16) = xmmword_1002329F0;
  v1[21] = v3;
  v7 = v4;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v23 = v1[44];
  v25 = v1[43];
  v26 = v1[42];
  v10 = v1[39];
  v27 = v1[40];
  v11 = v1[38];
  v28 = v1[37];
  v29 = v1[36];
  v30 = v1[35];
  v24 = v1[33];
  v22 = v1[32];
  v13 = v1[30];
  v12 = v2[31];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v2 + 18);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD000000000000024;
  v14._object = 0x8000000100273200;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  v2[25] = v11;
  v15 = sub_100007914(v2 + 22);
  (*(v10 + 16))(v15, v13, v11);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C((v2 + 22), &unk_1002DFC10, &qword_10022E6D0);
  v16._countAndFlagsBits = 0x20726F6620;
  v16._object = 0xE500000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  v2[29] = &type metadata for String;
  v2[26] = v12;
  v2[27] = v22;

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C((v2 + 26), &unk_1002DFC10, &qword_10022E6D0);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  LogInterpolation.init(stringInterpolation:)();
  Log.debug(_:)();

  (*(v25 + 8))(v23, v26);
  v18 = (v24 + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics);
  static Date.now.getter();
  sub_100099DF4(&qword_1002DBBC0, &unk_100232E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002329F0;
  *(inited + 32) = 0x656C6174537369;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = static Date.< infix(_:_:)() & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 7368801;
  *(inited + 120) = &type metadata for String;
  *(inited + 88) = 0xE300000000000000;
  *(inited + 96) = v12;
  *(inited + 104) = v22;

  sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
  Dictionary.init(dictionaryLiteral:)();
  static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

  sub_10000C4FC(v18, v18[3]);
  dispatch thunk of MetricsQueue.enqueue(event:)();
  (*(v29 + 8))(v28, v30);
  (*(v10 + 8))(v27, v11);

  sub_1000D3590();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000149D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  v14 = v12;
  v15 = *v13;
  v16 = *v13;
  sub_100004504();
  *v17 = v16;
  v18 = v15[5];
  v19 = v15[4];
  v20 = v15[3];
  v21 = v15[2];
  *v17 = *v13;

  (*(v19 + 8))(v18, v20);

  if (v14)
  {
    v22 = _convertErrorToNSError(_:)();

    v23 = sub_100008D64();
    v24(v23, v22);
  }

  else
  {
    v25 = sub_100008D64();
    v26(v25, 0);
  }

  _Block_release(v16[6]);

  sub_1000D33F4();
  sub_100003128();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

void sub_100014BA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AMSSetLogKey();
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);

  if (string)
  {
    string = [[NSString alloc] initWithUTF8String:string];
  }

  v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543874;
    v28 = v8;
    v29 = 2114;
    v30 = v9;
    v31 = 2114;
    v32 = string;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received a Darwin notification. notification = %{public}@", buf, 0x20u);
  }

  if ([string isEqualToString:@"com.apple.ams.provision-biometrics"])
  {
    [*(a1 + 32) _handleBiometricsProvisioningNotification];
    goto LABEL_12;
  }

  if (([string isEqualToString:@"AppleLanguagePreferencesChangedNotification"] & 1) != 0 || objc_msgSend(string, "isEqualToString:", @"com.apple.language.changed"))
  {
    [*(a1 + 32) _handleDeviceLanguageChangeNotification:0];
    goto LABEL_12;
  }

  if (([string isEqualToString:@"com.apple.StoreServices.SSAccountStore.activeaccountchanged"] & 1) != 0 || objc_msgSend(string, "isEqualToString:", @"com.apple.AppleMediaServices.activeicloudaccountchanged"))
  {
    [*(a1 + 32) _handleAccountChange];
    goto LABEL_12;
  }

  v10 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
  v11 = [NSString stringWithUTF8String:"com.apple.mobile.keybagd.lock_status"];
  v12 = [string isEqualToString:v11];

  if (v12)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100052EB4;
    block[3] = &unk_1002B04C0;
    block[4] = *(a1 + 32);
    if (qword_1002E31D8 != -1)
    {
      dispatch_once(&qword_1002E31D8, block);
    }

    goto LABEL_12;
  }

  if ([string isEqualToString:AMSAccountCachedServerDataUpdatedNotification])
  {
    [*(a1 + 32) _handleCachedDataUpdate];
    goto LABEL_12;
  }

  if ([string isEqualToString:@"com.apple.AppleMediaServices.eligibilityoverridechanged"])
  {
LABEL_39:
    [*(a1 + 32) _updateRegulatoryEligibility];
    goto LABEL_12;
  }

  if ([string isEqualToString:@"com.apple.os-eligibility-domain.input-needed"])
  {
    v13 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = AMSLogKey();
      v16 = objc_opt_class();
      v17 = v16;
      if (v15)
      {
        v10 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v17, v10];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v16];
      }
      v18 = ;
      *buf = 138543362;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Eligibility engine is requesting input.", buf, 0xCu);
      if (v15)
      {

        v18 = v10;
      }
    }

    goto LABEL_39;
  }

  if ([string isEqualToString:@"com.apple.ams.privateListeningChanged"])
  {
    v19 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = AMSLogKey();
      *buf = 138543618;
      v28 = v21;
      v29 = 2114;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Private listening setting changed.", buf, 0x16u);
    }

    v23 = [[AMSDRefreshMultiUserOptions alloc] initWithReason:@"Private listening setting changed."];
    [(AMSDRefreshMultiUserOptions *)v23 setShouldUseCloudData:0];
    v24 = +[AMSDMultiUserController sharedController];
    v25 = [v24 refreshWithOptions:v23];
  }

LABEL_12:
}

uint64_t sub_100015280(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*a1);
  }

  sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000071F8();
  if (*(v6 + 84) == a2)
  {
    v7 = *(a3 + 24);
  }

  else
  {
    type metadata accessor for Date();
    v7 = *(a3 + 28);
  }

  v8 = sub_100003F68(v7);

  return sub_100004DFC(v8, v9, v10);
}

void sub_100015344()
{
  sub_100002FBC();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    sub_1000071F8();
    if (*(v6 + 84) == v5)
    {
      v7 = *(v4 + 24);
    }

    else
    {
      type metadata accessor for Date();
      v7 = *(v4 + 28);
    }

    v8 = sub_100003F68(v7);

    sub_100002728(v8, v9, v0, v10);
  }
}

uint64_t sub_10001540C()
{
  sub_100002FBC();
  v2 = type metadata accessor for AccountIdentity();

  return sub_100004DFC(v1, v0, v2);
}

uint64_t sub_100015450()
{
  sub_100002FBC();
  v2 = type metadata accessor for AccountIdentity();

  return sub_100002728(v1, v0, v0, v2);
}

uint64_t sub_100015498(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*(a1 + 8));
  }

  sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000071F8();
  if (*(v6 + 84) == a2)
  {
    v7 = a3[5];
  }

  else
  {
    type metadata accessor for Date();
    sub_1000071F8();
    if (*(v8 + 84) == a2)
    {
      v7 = a3[7];
    }

    else
    {
      type metadata accessor for AccountIdentity();
      v7 = a3[8];
    }
  }

  v9 = sub_100003F68(v7);

  return sub_100004DFC(v9, v10, v11);
}

void sub_10001559C()
{
  sub_100002FBC();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    sub_1000071F8();
    if (*(v6 + 84) == v5)
    {
      v7 = v4[5];
    }

    else
    {
      type metadata accessor for Date();
      sub_1000071F8();
      if (*(v8 + 84) == v5)
      {
        v7 = v4[7];
      }

      else
      {
        type metadata accessor for AccountIdentity();
        v7 = v4[8];
      }
    }

    v9 = sub_100003F68(v7);

    sub_100002728(v9, v10, v0, v11);
  }
}

uint64_t sub_1000158DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*(a1 + 8));
  }

  sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000071F8();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 40);
  }

  else
  {
    v9 = type metadata accessor for Date();
    v10 = *(a3 + 48);
  }

  return sub_100004DFC(a1 + v10, a2, v9);
}

uint64_t sub_1000159A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    sub_1000071F8();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 40);
    }

    else
    {
      v10 = type metadata accessor for Date();
      v11 = *(a4 + 48);
    }

    return sub_100002728(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_100015A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Date();
  sub_1000071F8();
  if (*(v7 + 84) != a2)
  {
    return sub_100002840(*(a1 + *(a3 + 20) + 8));
  }

  return sub_100004DFC(a1, a2, v6);
}

void sub_100015B14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Date();
  sub_1000071F8();
  if (*(v9 + 84) == a3)
  {

    sub_100002728(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_100015BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DB1C0, &unk_100231900);
  v5 = sub_100004DFC(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100015C10(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100099DF4(&qword_1002DB1C0, &unk_100231900);

  return sub_100002728(a1, v5, a3, v6);
}

uint64_t sub_100015CA8(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*a1);
  }

  if (*(*(sub_100099DF4(&qword_1002DA970, &qword_1002318B0) - 8) + 84) == a2)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    type metadata accessor for Date();
    v5 = *(a3 + 28);
  }

  v6 = sub_100003F68(v5);

  return sub_100004DFC(v6, v7, v8);
}

void sub_100015D70()
{
  sub_10000ADF4();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(sub_100099DF4(&qword_1002DA970, &qword_1002318B0) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      type metadata accessor for Date();
      v8 = *(v5 + 28);
    }

    v9 = sub_100003F68(v8);

    sub_100002728(v9, v10, v0, v11);
  }
}

uint64_t sub_100015E34(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*(a1 + 8));
  }

  type metadata accessor for URL();
  v5 = sub_100003F68(*(a3 + 20));

  return sub_100004DFC(v5, v6, v7);
}

void sub_100015EAC()
{
  sub_10000ADF4();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for URL();
    v5 = sub_100003F68(*(v4 + 20));

    sub_100002728(v5, v6, v0, v7);
  }
}

uint64_t sub_1000160BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 20);

    return sub_100004DFC(v9, a2, v8);
  }
}

uint64_t sub_100016144(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 20);

    return sub_100002728(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000161C4()
{
  v1 = type metadata accessor for AccountDataServerRequest(0);
  sub_100003B78(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for Date();
  sub_100003724();
  v9 = v8;
  v10 = *(v8 + 80);
  v12 = *(v11 + 64);
  swift_unknownObjectRelease();

  type metadata accessor for AccountIdentity.DSID();
  sub_10000307C();
  (*(v13 + 8))(v0 + v4);
  v14 = (((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + 48) & ~v10;
  (*(v9 + 8))(v0 + v14, v7);

  return _swift_deallocObject(v0, v14 + v12, v3 | v10 | 7);
}

uint64_t sub_10001632C()
{
  v1 = type metadata accessor for AccountIdentity();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000163C4()
{
  swift_unknownObjectRelease();

  v1 = sub_10000F3C0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100016408()
{
  _Block_release(*(v0 + 24));

  v1 = sub_1000062AC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10001644C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*(a1 + 24));
  }

  sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000071F8();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
  }

  else
  {
    type metadata accessor for Date();
    sub_1000071F8();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[7];
    }

    else
    {
      v9 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
      v10 = a3[10];
    }
  }

  return sub_100004DFC(a1 + v10, a2, v9);
}

uint64_t sub_100016554(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    sub_1000071F8();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      type metadata accessor for Date();
      sub_1000071F8();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
        v11 = a4[10];
      }
    }

    return sub_100002728(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1000169E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000168AC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100016A50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000C62C();
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(v6);
  sub_1000071F8();
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1000F832C();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return sub_100002840(*(v4 + a3[5]));
    }

    type metadata accessor for AccountIdentity();
    sub_1000071F8();
    if (*(v12 + 84) == v3)
    {
      v9 = v11;
      v13 = a3[7];
    }

    else
    {
      sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
      sub_1000071F8();
      if (*(v15 + 84) == v3)
      {
        v9 = v14;
        v13 = a3[13];
      }

      else
      {
        v9 = type metadata accessor for URL();
        v13 = a3[15];
      }
    }

    v8 = v4 + v13;
  }

  return sub_100004DFC(v8, v3, v9);
}

void sub_100016B90()
{
  sub_10000AAE4();
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  sub_1000071F8();
  if (*(v4 + 84) == v3)
  {
    sub_1000F8320();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 20)) = (v0 - 1);
      return;
    }

    type metadata accessor for AccountIdentity();
    sub_1000071F8();
    if (*(v5 + 84) != v3)
    {
      sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
      sub_1000071F8();
      if (*(v6 + 84) != v3)
      {
        type metadata accessor for URL();
      }
    }
  }

  sub_10000A828();

  sub_100002728(v7, v8, v9, v10);
}

uint64_t sub_100016CD0(unint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*a1);
  }

  sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v4 = sub_1000F8314();

  return sub_100004DFC(v4, a2, v5);
}

void *sub_100016D54(void *result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    sub_1000F8314();
    sub_10000A828();

    return sub_100002728(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_100016DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C62C();
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(v6);
  sub_1000071F8();
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1000F832C();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return sub_100002840(*(v4 + *(a3 + 20)));
    }

    v9 = type metadata accessor for URL();
    v8 = v4 + *(a3 + 36);
  }

  return sub_100004DFC(v8, v3, v9);
}

void sub_100016E8C()
{
  sub_10000AAE4();
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  sub_1000071F8();
  if (*(v4 + 84) == v3)
  {
    sub_1000F8320();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 20)) = (v0 - 1);
      return;
    }

    type metadata accessor for URL();
  }

  sub_10000A828();

  sub_100002728(v5, v6, v7, v8);
}

uint64_t sub_100016F40(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000071F8();
  if (*(v6 + 84) == a2)
  {
    v7 = sub_1000F832C();
  }

  else
  {
    type metadata accessor for Date();
    sub_1000071F8();
    if (*(v10 + 84) == a2)
    {
      v8 = v9;
      v11 = a3[5];
    }

    else
    {
      sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
      sub_1000071F8();
      if (*(v13 + 84) != a2)
      {
        return sub_100002840(*(a1 + a3[9] + 8));
      }

      v8 = v12;
      v11 = a3[8];
    }

    v7 = a1 + v11;
  }

  return sub_100004DFC(v7, a2, v8);
}

void sub_100017078()
{
  sub_10000AAE4();
  sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000071F8();
  if (*(v4 + 84) == v3)
  {
    sub_1000F8320();
  }

  else
  {
    type metadata accessor for Date();
    sub_1000071F8();
    if (*(v5 + 84) != v3)
    {
      sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
      sub_1000071F8();
      if (*(v6 + 84) != v3)
      {
        *(v1 + *(v2 + 36) + 8) = (v0 - 1);
        return;
      }
    }
  }

  sub_10000A828();

  sub_100002728(v7, v8, v9, v10);
}

uint64_t sub_1000171A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000071F8();
  if (*(v6 + 84) == a2)
  {
    v7 = sub_1000F832C();
  }

  else
  {
    type metadata accessor for Date();
    sub_1000071F8();
    if (*(v9 + 84) != a2)
    {
      return sub_100002840(*(a1 + *(a3 + 32) + 8));
    }

    v7 = sub_1000F8314();
  }

  return sub_100004DFC(v7, a2, v8);
}

void sub_100017290()
{
  sub_10000AAE4();
  sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000071F8();
  if (*(v4 + 84) == v3)
  {
    sub_1000F8320();
  }

  else
  {
    type metadata accessor for Date();
    sub_1000071F8();
    if (*(v5 + 84) != v3)
    {
      *(v1 + *(v2 + 32) + 8) = (v0 - 1);
      return;
    }

    sub_1000F8314();
  }

  sub_10000A828();

  sub_100002728(v6, v7, v8, v9);
}

uint64_t sub_100017370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000C62C();
  type metadata accessor for Date();
  sub_1000071F8();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1000F832C();
  }

  else
  {
    type metadata accessor for AccountIdentity();
    sub_1000071F8();
    if (*(v9 + 84) != v3)
    {
      return sub_100002840(*(v4 + *(a3 + 32)));
    }

    v7 = sub_1000F8314();
  }

  return sub_100004DFC(v7, v3, v8);
}

void sub_100017440()
{
  sub_10000AAE4();
  type metadata accessor for Date();
  sub_1000071F8();
  if (*(v4 + 84) == v3)
  {
    sub_1000F8320();
  }

  else
  {
    type metadata accessor for AccountIdentity();
    sub_1000071F8();
    if (*(v5 + 84) != v3)
    {
      *(v1 + *(v2 + 32)) = (v0 - 1);
      return;
    }

    sub_1000F8314();
  }

  sub_10000A828();

  sub_100002728(v6, v7, v8, v9);
}

uint64_t sub_1000175B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002FBC();
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  sub_1000071F8();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return sub_100002840(*(v4 + *(a3 + 20)));
    }

    v8 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    v9 = v4 + *(a3 + 24);
  }

  return sub_100004DFC(v9, v3, v8);
}

void sub_100017680()
{
  v4 = sub_10011846C();
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(v4);
  sub_1000071F8();
  if (*(v5 + 84) != v3)
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 20)) = (v0 - 1);
      return;
    }

    sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  }

  sub_10000A828();

  sub_100002728(v6, v7, v8, v9);
}

uint64_t sub_100017740(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*(a1 + 8));
  }

  sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000071F8();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[8];
  }

  else
  {
    type metadata accessor for Date();
    sub_1000071F8();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[9];
    }

    else
    {
      v9 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
      v10 = a3[20];
    }
  }

  return sub_100004DFC(a1 + v10, a2, v9);
}

void sub_100017854()
{
  sub_100002FBC();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v3 = v2;
    sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    sub_1000071F8();
    if (*(v4 + 84) != v3)
    {
      type metadata accessor for Date();
      sub_1000071F8();
      if (*(v5 + 84) != v3)
      {
        sub_100099DF4(&qword_1002DCC10, &unk_100238220);
      }
    }

    sub_10000A828();

    sub_100002728(v6, v7, v8, v9);
  }
}

uint64_t sub_100017968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002834();
  type metadata accessor for Date();
  sub_1000071F8();
  if (*(v6 + 84) != a2)
  {
    return sub_100002840(*(v3 + *(a3 + 32) + 8));
  }

  v7 = sub_100008A44();

  return sub_100004DFC(v7, a2, v8);
}

void sub_100017A00()
{
  sub_10011846C();
  type metadata accessor for Date();
  sub_1000071F8();
  if (*(v4 + 84) == v3)
  {
    sub_10000A828();

    sub_100002728(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 32) + 8) = (v0 - 1);
  }
}

uint64_t sub_100017A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    v10 = a1 + *(a3 + 40);

    return sub_100004DFC(v10, a2, v9);
  }
}

void sub_100017B34()
{
  sub_100002FBC();
  if (v2 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    sub_10000A828();

    sub_100002728(v3, v4, v5, v6);
  }
}

uint64_t sub_100017BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*(a1 + 8));
  }

  v7 = type metadata accessor for AccountIdentity();
  v8 = a1 + *(a3 + 32);

  return sub_100004DFC(v8, a2, v7);
}

void sub_100017C34()
{
  sub_100002FBC();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    type metadata accessor for AccountIdentity();
    sub_10000A828();

    sub_100002728(v3, v4, v5, v6);
  }
}

uint64_t sub_100017E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002FBC();
  type metadata accessor for TSDataSyncTriggerEvent(0);
  sub_1000071F8();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = v4 + *(a3 + 20);
  }

  return sub_100004DFC(v9, v3, v8);
}

uint64_t sub_100017EBC()
{
  v1 = sub_10011846C();
  type metadata accessor for TSDataSyncTriggerEvent(v1);
  sub_1000071F8();
  if (*(v2 + 84) != v0)
  {
    type metadata accessor for Date();
  }

  sub_10000A828();

  return sub_100002728(v3, v4, v5, v6);
}

uint64_t sub_100018064(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
      v10 = *(a3 + 24);
    }

    return sub_100004DFC(a1 + v10, a2, v9);
  }
}

uint64_t sub_100018130(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
      v10 = *(a4 + 24);
    }

    return sub_100002728(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_100018234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10001838C(uint64_t a1, int a2, int *a3)
{
  if (a2 == 2147483646)
  {
    sub_10012ECB8();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    sub_1000071F8();
    if (*(v8 + 84) == a2)
    {
      v9 = a3[5];
    }

    else
    {
      type metadata accessor for Date();
      sub_1000071F8();
      if (*(v10 + 84) == a2)
      {
        v9 = a3[7];
      }

      else
      {
        sub_100099DF4(&qword_1002DB940, &qword_100232B48);
        v9 = a3[13];
      }
    }

    v11 = sub_100003F68(v9);

    return sub_100004DFC(v11, v12, v13);
  }
}

void sub_1000184A8()
{
  sub_100002FBC();
  if (v2 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v3;
    v5 = v2;
    sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    sub_1000071F8();
    if (*(v6 + 84) == v5)
    {
      v7 = v4[5];
    }

    else
    {
      type metadata accessor for Date();
      sub_1000071F8();
      if (*(v8 + 84) == v5)
      {
        v7 = v4[7];
      }

      else
      {
        sub_100099DF4(&qword_1002DB940, &qword_100232B48);
        v7 = v4[13];
      }
    }

    v9 = sub_100003F68(v7);

    sub_100002728(v9, v10, v0, v11);
  }
}

uint64_t sub_1000186A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002834();
  type metadata accessor for AccountIdentity.DSID();
  sub_1000071F8();
  if (*(v6 + 84) == a2)
  {
    v7 = sub_100008A44();

    return sub_100004DFC(v7, a2, v8);
  }

  else
  {
    v10 = *(v3 + *(a3 + 24));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_100018760(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100002FBC();
  type metadata accessor for AccountIdentity.DSID();
  sub_1000071F8();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_1000F8344();

    sub_100002728(v9, v10, v4, v11);
  }

  else
  {
    *(v5 + *(a4 + 24)) = v4 + 2;
  }
}

uint64_t sub_1000187FC()
{
  sub_100002FBC();
  type metadata accessor for AccountIdentity.DSID();
  v0 = sub_1000F8344();

  return sub_100004DFC(v0, v1, v2);
}

uint64_t sub_10001883C()
{
  sub_100002FBC();
  type metadata accessor for AccountIdentity.DSID();
  v1 = sub_1000F8344();

  return sub_100002728(v1, v2, v0, v3);
}

uint64_t sub_100018880()
{
  sub_100002FBC();
  sub_100099DF4(&qword_1002DDA10, &qword_100238900);
  v0 = sub_1000F8344();
  v3 = sub_100004DFC(v0, v1, v2);
  if (v3 >= 2)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000188CC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100099DF4(&qword_1002DDA10, &qword_100238900);

  return sub_100002728(a1, v5, a3, v6);
}

uint64_t sub_100018934(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    sub_10012ECB8();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for Date();
    v6 = sub_100003F68(*(a3 + 20));

    return sub_100004DFC(v6, v7, v8);
  }
}

void sub_1000189AC()
{
  sub_100002FBC();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for Date();
    v5 = sub_100003F68(*(v4 + 20));

    sub_100002728(v5, v6, v0, v7);
  }
}

uint64_t sub_100018AC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 20);

    return sub_100004DFC(v9, a2, v8);
  }
}

uint64_t sub_100018B50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 20);

    return sub_100002728(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100018C38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return _s12amsaccountsd4AvroC20schemaEncodingOption33_E75BE20988CE4C068FC731DDC06586E6LLAA0b6SchemadE0Ovpfi_0();
  }
}

uint64_t sub_100018C54(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

void sub_100018C8C()
{
  sub_100002FBC();
  if (v3 == 245)
  {
    *v1 = v0 + 10;
  }

  else
  {
    v4 = v2;
    type metadata accessor for Date();
    v5 = sub_100003F68(*(v4 + 20));

    sub_100002728(v5, v6, v0, v7);
  }
}

uint64_t sub_100018DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002FBC();
  type metadata accessor for AccountIdentity();
  sub_1000071F8();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    type metadata accessor for Date();
    sub_1000071F8();
    if (*(v11 + 84) != v3)
    {
      return sub_100002840(*(v4 + *(a3 + 32) + 8));
    }

    v8 = v10;
    v9 = v4 + *(a3 + 20);
  }

  return sub_100004DFC(v9, v3, v8);
}

void sub_100018EB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100002FBC();
  type metadata accessor for AccountIdentity();
  sub_1000071F8();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    type metadata accessor for Date();
    sub_1000071F8();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 32) + 8) = (v4 - 1);
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 20);
  }

  sub_100002728(v11, v4, v4, v10);
}

uint64_t sub_100018F9C(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100002840(*(a1 + 8));
  }

  type metadata accessor for AccountIdentity();
  sub_1000071F8();
  if (*(v6 + 84) == a2)
  {
    v7 = a3[5];
  }

  else
  {
    sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
    sub_1000071F8();
    if (*(v8 + 84) == a2)
    {
      v7 = a3[13];
    }

    else
    {
      sub_100099DF4(&qword_1002DB940, &qword_100232B48);
      v7 = a3[18];
    }
  }

  v9 = sub_100003F68(v7);

  return sub_100004DFC(v9, v10, v11);
}

void sub_1000190AC()
{
  sub_100002FBC();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    type metadata accessor for AccountIdentity();
    sub_1000071F8();
    if (*(v6 + 84) == v5)
    {
      v7 = v4[5];
    }

    else
    {
      sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
      sub_1000071F8();
      if (*(v8 + 84) == v5)
      {
        v7 = v4[13];
      }

      else
      {
        sub_100099DF4(&qword_1002DB940, &qword_100232B48);
        v7 = v4[18];
      }
    }

    v9 = sub_100003F68(v7);

    sub_100002728(v9, v10, v0, v11);
  }
}

uint64_t sub_100019244()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

char *sub_10001928C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100004BC4(a3, result);
  }

  return result;
}

char *sub_1000192B0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_100004BC4(a3, result);
  }

  return result;
}

uint64_t sub_1000192D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001930C()
{
  _Block_release(*(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001936C()
{
  sub_100004BD4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000193A0()
{
  _Block_release(*(v0 + 16));
  sub_100004BD4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100019498()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000194D0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019510()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019548()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100019590()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100019660()
{

  sub_100008E30();

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_1000196E0()
{

  sub_100008E30();
  v1 = *(v0 + 184);
  v2 = *(v0 + 208);
  v3 = v1 >> 8 != 0xFFFFFFFF || v2 > 1;
  if (v3 || (*(v0 + 224) & 0xFCFE) != 0)
  {
    sub_10014E7B4(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), v1, *(v0 + 192), *(v0 + 200), v2, *(v0 + 216), *(v0 + 224));
  }

  sub_10000B894(*(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 312), *(v0 + 296));

  return _swift_deallocObject(v0, 368, 7);
}

uint64_t sub_1000197A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

_OWORD *sub_1000197D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100019A54()
{

  sub_1000140AC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100019B5C()
{
  sub_10014E7B4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return _swift_deallocObject(v0, 114, 7);
}

uint64_t sub_100019C18()
{

  sub_100004650();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100019C74()
{

  sub_100004650();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100019EE8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100019F34()
{

  sub_100004650();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100019F90()
{

  sub_100004650();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100019FEC()
{

  sub_10000BB3C();

  return _swift_deallocObject(v0, 194, 7);
}

uint64_t sub_10001A404()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001A444()
{
  v1 = type metadata accessor for TSDataSyncConfigServerRequest(0);
  sub_100003B78(v1);
  v3 = *(v2 + 80);
  v5 = (v3 + 40) & ~v3;
  v6 = (((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 199) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for Date();
  sub_100003724();
  v9 = v8;
  v10 = *(v8 + 80);
  v12 = *(v11 + 64);
  swift_unknownObjectRelease();

  type metadata accessor for AccountIdentity();
  sub_10000307C();
  (*(v13 + 8))(v0 + v5);

  if (*(v0 + v6 + 8))
  {
  }

  v14 = (v6 + v10 + 64) & ~v10;
  (*(v9 + 8))(v0 + v14, v7);

  return _swift_deallocObject(v0, v14 + v12, v3 | v10 | 7);
}

uint64_t sub_10001A634()
{

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10001A67C()
{

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_10001A6CC()
{
  v1 = (type metadata accessor for TSDataSyncDatasetGroupIdentifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[10];
  type metadata accessor for AccountIdentity();
  sub_10000307C();
  (*(v6 + 8))(v0 + v3 + v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001A7D0()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001A820()
{
  v1 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  sub_100003B78(v1);
  v35 = *(v2 + 80);
  v3 = (v35 + 40) & ~v35;
  v5 = *(v4 + 64);
  v6 = type metadata accessor for TSDataSyncDeviceState(0);
  v34 = *(*(v6 - 1) + 80);
  v7 = (v3 + v5 + v34) & ~v34;
  v8 = *(*(v6 - 1) + 64);
  v9 = type metadata accessor for Date();
  sub_100003724();
  v11 = v10;
  v12 = *(v10 + 80);
  v33 = *(v13 + 64);
  swift_unknownObjectRelease();

  v14 = v0 + v3;

  v15 = *(type metadata accessor for TSDataSyncDatasetGroupIdentifier(0) + 32);
  type metadata accessor for AccountIdentity();
  sub_10000307C();
  (*(v16 + 8))(v14 + v15);
  v17 = *(type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0) + 20);
  type metadata accessor for URL();
  sub_10000307C();
  (*(v18 + 8))(v14 + v17);

  v19 = v0 + v7;

  v20 = v6[6];
  v21 = sub_100004DFC(v0 + v7 + v20, 1, v9);
  v22 = *(v11 + 8);
  if (!v21)
  {
    v22(v19 + v20, v9);
  }

  v23 = v8 + v7;
  v22(v19 + v6[7], v9);
  v24 = v6[8];
  if (!sub_100197D2C())
  {
    v22(v19 + v24, v9);
  }

  v25 = v23 + 7;
  v26 = v6[9];
  if (!sub_100197D2C())
  {
    v22(v19 + v26, v9);
  }

  v27 = v25 & 0xFFFFFFFFFFFFFFF8;
  v28 = v6[15];
  if (!sub_100197D2C())
  {
    v22(v19 + v28, v9);
  }

  v29 = v6[16];
  if (!sub_100004DFC(v19 + v29, 1, v9))
  {
    v22(v19 + v29, v9);
  }

  v30 = (v27 + 199) & 0xFFFFFFFFFFFFFFF8;

  if (*(v19 + v6[18] + 8) != 1)
  {
  }

  if (*(v0 + v30 + 8))
  {
  }

  v31 = (v30 + v12 + 64) & ~v12;
  v22(v0 + v31, v9);

  return _swift_deallocObject(v0, v31 + v33, v35 | v34 | v12 | 7);
}

uint64_t sub_10001AC88()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_10001ACD0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100099DF4(&qword_1002DFB30, &qword_10023FC78);
  }

  else
  {
    return &type metadata for ()[1];
  }
}

uint64_t sub_10001AD04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001AD3C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001AD80()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001AE00()
{
  v1 = sub_100099DF4(&unk_1002DFC00, &qword_10023FEF0);
  sub_100003724();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 16, v4 | 7);
}

uint64_t sub_10001AF98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AFD0()
{

  return _swift_deallocObject(v0, 84, 7);
}

uint64_t sub_10001B008()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10001B154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  __asm { BRAA            X8, X17 }
}