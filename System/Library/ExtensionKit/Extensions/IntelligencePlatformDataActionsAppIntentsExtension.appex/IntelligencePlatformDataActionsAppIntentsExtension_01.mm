void sub_10001DF28()
{
  v2 = v0[23];
  *(v1 - 192) = v0[24];
  *(v1 - 184) = v2;
  v4 = v0[18];
  v3 = v0[19];
  *(v1 - 176) = v0[22];
  *(v1 - 168) = v3;
  v5 = v0[15];
  *(v1 - 160) = v4;
  *(v1 - 152) = v5;
  v7 = v0[8];
  v6 = v0[9];
  *(v1 - 144) = v0[12];
  *(v1 - 136) = v6;
  v8 = v0[5];
  *(v1 - 128) = v7;
  *(v1 - 120) = v8;
}

uint64_t sub_10001DF64()
{

  return swift_slowAlloc();
}

uint64_t sub_10001E0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v14 - 88) = *(v13 + 272);

  return sub_10002DA90();
}

void sub_10001E104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_100022F08();
}

uint64_t sub_10001E124()
{

  return swift_beginAccess();
}

uint64_t sub_10001E144(uint64_t a1)
{
}

uint64_t sub_10001E1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  return AppDisplayInfo.init(displayName:artworkData:artworkURL:)(v24, v22, a21, v21, v23);
}

uint64_t sub_10001E22C()
{

  return sub_100004D84(v0, v1, v2);
}

uint64_t sub_10001E248(uint64_t a1)
{
}

uint64_t sub_10001E26C(uint64_t a1, uint64_t a2)
{

  return sub_10000E05C(v2, v3, a1, a2);
}

uint64_t sub_10001E288()
{

  return swift_arrayDestroy();
}

uint64_t sub_10001E2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v14 + 4) = v13;
  *(v14 + 12) = 2080;

  return sub_10002DD30();
}

void sub_10001E338(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_10001E358()
{

  return swift_slowAlloc();
}

uint64_t DeviceActivityDeviceAppEntity.isAllDevices.getter()
{
  type metadata accessor for DeviceActivityDeviceAppEntity(0);
  sub_100021554();
  sub_10002D270();
  return v1;
}

uint64_t type metadata accessor for DeviceActivityDeviceAppEntity(uint64_t a1)
{
  result = qword_10003C8D8;
  if (!qword_10003C8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeviceActivityDeviceAppEntity.init(device:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v26 = sub_10002D930();
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  sub_100002C9C();
  v7 = v6 - v5;
  v8 = sub_10002D740();
  v9 = sub_100002CD8(v8);
  __chkstk_darwin(v9);
  sub_100002C9C();
  v10 = type metadata accessor for DeviceActivityDeviceAppEntity(0);
  v11 = v10[7];
  sub_100001A7C(&qword_10003C108, &unk_10002F390);
  sub_10002D730();
  *&a2[v11] = sub_10002D300();
  v12 = v10[8];
  sub_100001A7C(&qword_10003C110, &unk_10002E440);
  sub_100021528();
  sub_10002D730();
  *&a2[v12] = sub_10002D320();
  sub_10002DB80();
  v13 = v10[6];
  v14 = sub_10002DB90();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&a2[v13], a1, v14);
  v27 = sub_10002DB60();
  v28 = v16;
  sub_10002DB80();
  v17 = sub_10002D920();
  v19 = v18;
  (*(v4 + 8))(v7, v26);
  v29._countAndFlagsBits = v17;
  v29._object = v19;
  sub_10002DC90(v29);

  *a2 = v27;
  *(a2 + 1) = v28;
  sub_10002DB70();
  sub_10002D280();
  v20 = sub_10002DB60();
  v22 = v21;
  if (v20 != sub_10002DB40() || v22 != v23)
  {
    sub_10002DE10();
  }

  sub_10002D280();
  return (*(v15 + 8))(a1, v14);
}

uint64_t DeviceActivityDeviceAppEntity.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeviceActivityDeviceAppEntity.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeviceActivityDeviceAppEntity.user.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeviceActivityDeviceAppEntity(0) + 20);
  sub_10002D930();
  sub_100006D2C();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t DeviceActivityDeviceAppEntity.user.setter()
{
  v2 = sub_100021548();
  v3 = *(type metadata accessor for DeviceActivityDeviceAppEntity(v2) + 20);
  sub_10002D930();
  sub_100006D2C();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*DeviceActivityDeviceAppEntity.user.modify())()
{
  v0 = sub_100021548();
  type metadata accessor for DeviceActivityDeviceAppEntity(v0);
  return static DeviceActivityDeviceAppEntity.defaultQuery.getter;
}

uint64_t DeviceActivityDeviceAppEntity.device.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeviceActivityDeviceAppEntity(0) + 24);
  sub_10002DB90();
  sub_100006D2C();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t DeviceActivityDeviceAppEntity.device.setter()
{
  v2 = sub_100021548();
  v3 = *(type metadata accessor for DeviceActivityDeviceAppEntity(v2) + 24);
  sub_10002DB90();
  sub_100006D2C();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*DeviceActivityDeviceAppEntity.device.modify())()
{
  v0 = sub_100021548();
  type metadata accessor for DeviceActivityDeviceAppEntity(v0);
  return static DeviceActivityDeviceAppEntity.defaultQuery.getter;
}

uint64_t sub_10001E9D0()
{
  v0 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_10002D740();
  __chkstk_darwin(v3);
  v4 = sub_10002D620();
  sub_100004480(v4, static DeviceActivityDeviceAppEntity.typeDisplayRepresentation);
  sub_100004448(v4, static DeviceActivityDeviceAppEntity.typeDisplayRepresentation);
  sub_10002D730();
  sub_100001AC4(v2, 1, 1, v3);
  return sub_10002D610();
}

uint64_t DeviceActivityDeviceAppEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_10003C0D8 != -1)
  {
    sub_100021508(&qword_10003C0D8);
  }

  v0 = sub_10002D620();

  return sub_100004448(v0, static DeviceActivityDeviceAppEntity.typeDisplayRepresentation);
}

uint64_t static DeviceActivityDeviceAppEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C0D8 != -1)
  {
    sub_100021508(&qword_10003C0D8);
  }

  v2 = sub_10002D620();
  v3 = sub_100004448(v2, static DeviceActivityDeviceAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DeviceActivityDeviceAppEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_10003C0D8 != -1)
  {
    sub_100021508(&qword_10003C0D8);
  }

  v2 = sub_10002D620();
  v3 = sub_100004448(v2, static DeviceActivityDeviceAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DeviceActivityDeviceAppEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_10003C0D8 != -1)
  {
    sub_100021508(&qword_10003C0D8);
  }

  v1 = sub_10002D620();
  sub_100004448(v1, static DeviceActivityDeviceAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t DeviceActivityDeviceAppEntity.name.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DeviceActivityDeviceAppEntity(0);
  sub_100021560();
  return sub_10002D280();
}

uint64_t (*DeviceActivityDeviceAppEntity.name.modify(uint64_t *a1))()
{
  v2 = sub_10001EE94(0x28uLL);
  *a1 = v2;
  type metadata accessor for DeviceActivityDeviceAppEntity(0);
  sub_100021560();
  v2[4] = sub_10002D260();
  return sub_1000214F4;
}

uint64_t DeviceActivityDeviceAppEntity.$name.getter()
{
  type metadata accessor for DeviceActivityDeviceAppEntity(0);
  sub_100021560();
  return sub_10002D290();
}

uint64_t DeviceActivityDeviceAppEntity.isAllDevices.setter(char a1)
{
  type metadata accessor for DeviceActivityDeviceAppEntity(0);
  sub_100021554();
  return sub_10002D280();
}

void *sub_10001EE94(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t (*DeviceActivityDeviceAppEntity.isAllDevices.modify(void *a1))()
{
  v2 = sub_10001EE94(0x28uLL);
  *a1 = v2;
  type metadata accessor for DeviceActivityDeviceAppEntity(0);
  sub_100021554();
  v2[4] = sub_10002D260();
  return sub_10001EF34;
}

void sub_10001EF38(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t DeviceActivityDeviceAppEntity.$isAllDevices.getter()
{
  type metadata accessor for DeviceActivityDeviceAppEntity(0);
  sub_100021554();
  return sub_10002D290();
}

uint64_t DeviceActivityDeviceAppEntity.displayRepresentation.getter()
{
  v0 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  v1 = sub_100002CD8(v0);
  __chkstk_darwin(v1);
  v3 = &v12 - v2;
  v4 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v5 = sub_100002CD8(v4);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = sub_10002D740();
  sub_100006D2C();
  __chkstk_darwin(v9);
  sub_100002C9C();
  type metadata accessor for DeviceActivityDeviceAppEntity(0);
  sub_100021554();
  sub_10002D270();
  if (v12 == 1)
  {
    sub_100021528();
  }

  else
  {
    sub_10002D270();
  }

  sub_10002D730();
  sub_100001AC4(v7, 1, 1, v8);
  v10 = sub_10002D4E0();
  sub_100001AC4(v3, 1, 1, v10);
  return sub_10002D500();
}

uint64_t sub_10001F150()
{
  type metadata accessor for DeviceActivityDeviceAppEntity(0);
  sub_100021560();
  sub_10002D270();
  return v1;
}

uint64_t sub_10001F18C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10001F19C@<X0>(uint64_t a1@<X8>)
{
  v2 = DeviceActivityDeviceAppEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = sub_10002D620();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_10001F218(uint64_t a1)
{
  v2 = sub_100020FD0(&qword_10003C540, &protocol conformance descriptor for DeviceActivityDeviceAppEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001F284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000214F0;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10001F348(uint64_t a1)
{
  v2 = sub_100020FD0(&qword_10003C840, &protocol conformance descriptor for DeviceActivityDeviceAppEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t DeviceActivityDeviceAppEntityQuery.entities(for:)()
{
  sub_10001DFE4();
  v0[4] = v1;
  v0[5] = *(type metadata accessor for DeviceActivityDeviceAppEntity(0) - 8);
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10001F4A0;

  return sub_10001F7F8();
}

uint64_t sub_10001F4A0()
{
  sub_10001E220();
  v2 = *v1;
  *(v4 + 72) = v3;
  *(v4 + 80) = v0;

  if (v0)
  {

    v5 = *(v2 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10001F5F4, 0, 0);
  }
}

void sub_10001F5F4()
{
  v1 = 0;
  v14 = v0[7];
  v2 = v0[5];
  v15 = v0[9];
  v3 = *(v15 + 16);
  while (v3 != v1)
  {
    if (v1 >= *(v15 + 16))
    {
      __break(1u);
      return;
    }

    v4 = v0[7];
    v5 = v0[4];
    v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v7 = *(v2 + 72);
    sub_10001FC38(v0[9] + v6 + v7 * v1, v4);
    v8 = *(v14 + 8);
    v0[2] = *v4;
    v0[3] = v8;
    v9 = swift_task_alloc();
    *(v9 + 16) = v0 + 2;
    LOBYTE(v5) = sub_100020B78(sub_100020C54, v9, v5);

    if (v5)
    {
      sub_10000BB18(v0[7], v0[6]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100020388(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_100020388((v10 > 1), v11 + 1, 1);
      }

      ++v1;
      v12 = v0[6];
      _swiftEmptyArrayStorage[2] = v11 + 1;
      sub_10000BB18(v12, _swiftEmptyArrayStorage + v6 + v11 * v7);
    }

    else
    {
      sub_10002149C();
      ++v1;
    }
  }

  v13 = v0[1];

  v13(_swiftEmptyArrayStorage);
}

uint64_t sub_10001F7F8()
{
  sub_10001DFE4();
  v1 = sub_100001A7C(&qword_10003C510, &qword_10002EF10);
  sub_100002CD8(v1);
  v0[2] = swift_task_alloc();
  v2 = type metadata accessor for DataActionUtils.AppUsageDeviceCollectionProvider(0);
  sub_100002CD8(v2);
  v0[3] = swift_task_alloc();
  v3 = sub_100001A7C(&qword_10003C630, qword_10002F110);
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v0[6] = swift_task_alloc();

  return _swift_task_switch(sub_10001F918, 0, 0);
}

uint64_t sub_10001F918()
{
  sub_10001DFE4();
  v1 = *(v0 + 16);
  v2 = sub_10002D900();
  sub_100001AC4(v1, 1, 1, v2);
  sub_10001DDA0(v1);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_10001F9D8;

  return sub_10000E2E0();
}

uint64_t sub_10001F9D8()
{
  sub_10001DFE4();
  sub_10001E220();
  v2 = *v1;
  sub_10001DF00();
  *v3 = v2;
  *(v4 + 64) = v0;

  sub_10002149C();
  if (v0)
  {
    v5 = sub_10001FBC4;
  }

  else
  {
    v5 = sub_10001FB0C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001FB0C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_10002D490();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_10001FBC4()
{
  sub_10001DFE4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001FC38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceActivityDeviceAppEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DeviceActivityDeviceAppEntityQuery.suggestedEntities()()
{
  sub_10001DFE4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100021504;

  return sub_10001F7F8();
}

uint64_t sub_10001FD24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100021504;

  return DeviceActivityDeviceAppEntityQuery.entities(for:)();
}

uint64_t sub_10001FDB8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001FE48;

  return DeviceActivityDeviceAppEntityQuery.suggestedEntities()();
}

uint64_t sub_10001FE48(uint64_t a1)
{
  sub_10001E220();
  v5 = v4;
  v6 = *v2;
  sub_10001DF00();
  *v7 = v6;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_10001FF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002000C;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10002000C()
{
  sub_10001DFE4();
  v3 = v2;
  sub_10001E220();
  v4 = *v1;
  sub_10001DF00();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1000200FC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100020D14();
  *v5 = v2;
  v5[1] = sub_1000201B0;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000201B0()
{
  sub_10001DFE4();
  sub_10001E220();
  v1 = *v0;
  sub_10001DF00();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100020294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000201B0;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

char *sub_100020348(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000203E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100020368(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000204E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100020388(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000206B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000203A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100020868(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000203C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100020A34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000203E8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100001A7C(&qword_10003C938, &qword_10002F970);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_10001B20C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1000204E8(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001A7C(&qword_10003C930, "2\x1B");
  v10 = *(sub_100001A7C(&qword_10003C710, &unk_10002F780) - 8);
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
  v15 = *(sub_100001A7C(&qword_10003C710, &unk_10002F780) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10001B22C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1000206B4(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001A7C(&qword_10003C950, &qword_10002F7A8);
  v10 = *(type metadata accessor for DeviceActivityDeviceAppEntity(0) - 8);
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
  v15 = *(type metadata accessor for DeviceActivityDeviceAppEntity(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10001B240(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_100020868(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001A7C(&qword_10003C940, &unk_10002F790);
  v10 = *(sub_100001A7C(&qword_10003C780, &unk_10002F360) - 8);
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
  v15 = *(sub_100001A7C(&qword_10003C780, &unk_10002F360) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10001B374(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100020A34(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100001A7C(&qword_10003C948, &qword_10002F7A0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_10001B354((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100020B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_10002DE10() & 1;
  }
}

BOOL sub_100020B78(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

unint64_t sub_100020D14()
{
  result = qword_10003C828;
  if (!qword_10003C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C828);
  }

  return result;
}

unint64_t sub_100020E54()
{
  result = qword_10003C848;
  if (!qword_10003C848)
  {
    sub_100002A98(&qword_10003C850, &qword_10002F528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C848);
  }

  return result;
}

unint64_t sub_100020EF0()
{
  result = qword_10003C860;
  if (!qword_10003C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C860);
  }

  return result;
}

unint64_t sub_100020F48()
{
  result = qword_10003C868;
  if (!qword_10003C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C868);
  }

  return result;
}

uint64_t sub_100020FD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DeviceActivityDeviceAppEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100021018()
{
  result = qword_10003C870;
  if (!qword_10003C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C870);
  }

  return result;
}

unint64_t sub_100021070()
{
  result = qword_10003C878;
  if (!qword_10003C878)
  {
    sub_100002A98(&qword_10003C728, &qword_10002F310);
    sub_100020FD0(&qword_10003C620, &protocol conformance descriptor for DeviceActivityDeviceAppEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C878);
  }

  return result;
}

uint64_t sub_100021124(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10002D930();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_10002DB90();
      v10 = *(a3 + 24);
    }

    return sub_1000040D4(a1 + v10, a2, v9);
  }
}

uint64_t sub_100021204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_10002D930();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_10002DB90();
      v10 = *(a4 + 24);
    }

    return sub_100001AC4(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_1000212CC(uint64_t a1)
{
  sub_10002D930();
  if (v1 <= 0x3F)
  {
    sub_10002DB90();
    if (v2 <= 0x3F)
    {
      sub_1000213D8(319, &qword_10003C428, sub_1000069D0, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_1000213D8(319, &qword_10003C8E8, sub_100021438, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000213D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_10002D330();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100021438()
{
  result = qword_10003C8F0;
  if (!qword_10003C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C8F0);
  }

  return result;
}

uint64_t sub_10002149C()
{
  v1 = sub_100021548();
  v2(v1);
  sub_100006D2C();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_100021508(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10002156C()
{
  v0 = sub_10002D740();
  sub_100004480(v0, static FindSportsEvents.title);
  sub_100004448(v0, static FindSportsEvents.title);
  return sub_10002D730();
}

uint64_t FindSportsEvents.title.unsafeMutableAddressor()
{
  if (qword_10003C0E0 != -1)
  {
    sub_100024054(&qword_10003C0E0);
  }

  v0 = sub_10002D740();

  return sub_100004448(v0, static FindSportsEvents.title);
}

uint64_t static FindSportsEvents.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C0E0 != -1)
  {
    sub_100024054(&qword_10003C0E0);
  }

  v2 = sub_10002D740();
  v3 = sub_100004448(v2, static FindSportsEvents.title);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static FindSportsEvents.title.setter(uint64_t a1)
{
  if (qword_10003C0E0 != -1)
  {
    sub_100024054(&qword_10003C0E0);
  }

  v2 = sub_10002D740();
  v3 = sub_100004448(v2, static FindSportsEvents.title);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static FindSportsEvents.title.modify(uint64_t a1))(uint64_t)
{
  if (qword_10003C0E0 != -1)
  {
    sub_100024054(&qword_10003C0E0);
  }

  v1 = sub_10002D740();
  sub_100004448(v1, static FindSportsEvents.title);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t static FindSportsEvents.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  static FindSportsEvents.isDiscoverable = a1;
  return result;
}

uint64_t FindSportsEvents.init()()
{
  v0 = sub_10002D5C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  sub_100002C9C();
  v4 = v3 - v2;
  v5 = sub_100001A7C(&qword_10003C118, &unk_10002EF20);
  v6 = sub_100002CD8(v5);
  v7 = __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v18 - v10;
  v12 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v13 = sub_100002CD8(v12);
  __chkstk_darwin(v13);
  v15 = v18 - v14;
  sub_10002D740();
  sub_100006D2C();
  __chkstk_darwin(v16);
  sub_100002C9C();
  sub_100001A7C(&qword_10003C120, &qword_10002E450);
  sub_10002D730();
  sub_100002CE4(v15);
  sub_10002D1F0();
  memset(v18, 0, sizeof(v18));
  sub_100002CE4(v11);
  sub_100002CE4(v9);
  (*(v1 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v0);
  sub_100002310();
  return sub_10002D3B0();
}

uint64_t static FindSportsEvents.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v3 = sub_100002CD8(v2);
  v4 = __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = sub_10002D740();
  sub_100006D2C();
  __chkstk_darwin(v10);
  sub_100002C9C();
  sub_10002D730();
  sub_100001AC4(v8, 1, 1, v9);
  sub_10002D730();
  sub_100001AC4(v6, 0, 1, v9);
  sub_10002D420();
  v11 = sub_10002D410();
  return sub_100001AC4(a1, 0, 1, v11);
}

uint64_t static FindSportsEvents.parameterSummary.getter()
{
  v0 = sub_100001A7C(&qword_10003C960, &qword_10002F7C8);
  v1 = sub_100002CD8(v0);
  __chkstk_darwin(v1);
  sub_100001A7C(&qword_10003C968, &qword_10002F7D0);
  sub_100006D2C();
  __chkstk_darwin(v2);
  sub_100021EA4();
  sub_10002D5A0();
  sub_10002D590();
  swift_getKeyPath();
  sub_100001A7C(&qword_10003C978, &qword_10002F800);
  sub_10002D580();

  sub_10002D590();
  sub_10002D5B0();
  return sub_10002D560();
}

unint64_t sub_100021EA4()
{
  result = qword_10003C970;
  if (!qword_10003C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C970);
  }

  return result;
}

uint64_t sub_100021F1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = FindSportsEvents.$sportsTeamAppEntity.getter(*a1);
  *a2 = result;
  return result;
}

uint64_t FindSportsEvents.sportsTeamAppEntity.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_10002D370();
}

void (*FindSportsEvents.sportsTeamAppEntity.modify(void *a1))(void *a1)
{
  v2 = sub_10001EE94(0x28uLL);
  *a1 = v2;
  v2[4] = sub_10002D350();
  return sub_10001EF38;
}

uint64_t FindSportsEvents.perform()(uint64_t a1, uint64_t a2)
{
  v2[33] = a1;
  v2[34] = a2;
  v3 = sub_10002D8D0();
  v2[35] = v3;
  sub_10000C028(v3);
  v2[36] = v4;
  v2[37] = sub_10000C3DC();
  v5 = sub_10002D9F0();
  v2[38] = v5;
  sub_10000C028(v5);
  v2[39] = v6;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v7 = sub_10002DA50();
  v2[42] = v7;
  sub_10000C028(v7);
  v2[43] = v8;
  v2[44] = sub_10000C3DC();
  v9 = sub_100001A7C(&qword_10003C980, &qword_10002F810);
  sub_100002CD8(v9);
  v2[45] = sub_10000C3DC();
  v10 = sub_10002D990();
  v2[46] = v10;
  sub_10000C028(v10);
  v2[47] = v11;
  v2[48] = sub_10000C3DC();
  v12 = sub_10002D8C0();
  v2[49] = v12;
  sub_10000C028(v12);
  v2[50] = v13;
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();

  return _swift_task_switch(sub_1000222B4, 0, 0);
}

uint64_t sub_1000222B4(uint64_t a1)
{
  v50 = v1;
  sub_10002D880();

  v2 = sub_10002D8B0();
  v3 = sub_10002DD10();

  if (os_log_type_enabled(v2, v3))
  {
    v44 = v1[50];
    v45 = v1[49];
    v46 = v1[53];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v49[0] = v5;
    *v4 = 136643075;
    sub_10002D360();
    sub_10002D270();

    v6 = sub_1000237CC(v1[27], v1[28], v49);

    *(v4 + 4) = v6;
    *(v4 + 12) = 2085;
    sub_10002D360();
    sub_10002D270();

    v7 = sub_1000237CC(v1[29], v1[30], v49);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "SportsEventsAppIntent selected team: [%{sensitive}s, %{sensitive}s]", v4, 0x16u);
    swift_arrayDestroy();
    sub_10001E144(v5);
    sub_10001E144(v4);

    v8 = *(v44 + 8);
    v8(v46, v45);
  }

  else
  {
    v9 = v1[53];
    v10 = v1[49];
    v11 = v1[50];

    v8 = *(v11 + 8);
    v8(v9, v10);
  }

  v13 = v1[45];
  v12 = v1[46];
  sub_10002D360();
  sub_100022C58(v1[11]);

  if (sub_1000040D4(v13, 1, v12) == 1)
  {
    sub_100006BA4(v1[45], &qword_10003C980, &qword_10002F810);
    sub_10002D880();

    v14 = sub_10002D8B0();
    v15 = sub_10002DD20();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v1[52];
    v18 = v1[49];
    if (v16)
    {
      v47 = v1[52];
      v19 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v49[0] = v43;
      *v19 = 136642819;
      sub_10002D360();
      v20 = sub_100022E94(v1[15]);
      v22 = v21;

      v23 = sub_1000237CC(v20, v22, v49);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "SportsEventsAppIntent: failed to convert SportsTeamAppEntity entity to SportsTeam: %{sensitive}s", v19, 0xCu);
      sub_10001C6CC(v43);
      sub_10001E144(v43);
      sub_10001E144(v19);

      v8(v47, v18);
    }

    else
    {

      v8(v17, v18);
    }

    sub_10002D130();
    sub_100023890(&qword_10003C988, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
    swift_allocError();
    sub_10002D120();
    swift_willThrow();

    v38 = v1[1];
  }

  else
  {
    (*(v1[47] + 32))(v1[48], v1[45], v1[46]);
    sub_10002DA40();
    v24 = sub_10002DA30();
    (*(v1[43] + 8))(v1[44], v1[42]);
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = v1[39];
      v29 = *(v26 + 16);
      v27 = v26 + 16;
      v28 = v29;
      sub_10002418C();
      v31 = v24 + v30;
      v48 = *(v27 + 56);
      v32 = _swiftEmptyArrayStorage;
      do
      {
        v34 = v1[40];
        v33 = v1[41];
        v35 = v1[38];
        v28(v33, v31, v35);
        v28(v34, v33, v35);
        SportsEventAppEntity.init(sportsEvent:)(v34);
        (*(v27 - 8))(v33, v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_100023254(0, *(v32 + 2) + 1, 1, v32);
        }

        v37 = *(v32 + 2);
        v36 = *(v32 + 3);
        if (v37 >= v36 >> 1)
        {
          v32 = sub_100023254((v36 > 1), v37 + 1, 1, v32);
        }

        *(v32 + 2) = v37 + 1;
        memcpy(&v32[72 * v37 + 32], v1 + 2, 0x48uLL);
        v31 += v48;
        --v25;
      }

      while (v25);
    }

    else
    {

      v32 = _swiftEmptyArrayStorage;
    }

    v40 = v1[47];
    v41 = v1[48];
    v42 = v1[46];
    v1[32] = v32;
    sub_100001A7C(&qword_10003C998, &unk_10002F828);
    sub_100023D84();
    sub_10002D250();
    (*(v40 + 8))(v41, v42);

    v38 = v1[1];
  }

  return v38();
}

uint64_t sub_100022C58(uint64_t a1)
{
  sub_10002D270();
  sub_10002D270();
  sub_10002D270();
  sub_10002D270();
  return sub_10002D950();
}

uint64_t sub_100022D0C@<X0>(uint64_t a1@<X8>)
{
  Sports = FindSportsEvents.title.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = sub_10002D740();
  return (*(*(v3 - 8) + 16))(a1, Sports, v3);
}

uint64_t sub_100022D90(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003EBC;

  return FindSportsEvents.perform()(a1, v4);
}

uint64_t sub_100022E30@<X0>(uint64_t *a1@<X8>)
{
  result = FindSportsEvents.init()();
  *a1 = result;
  return result;
}

uint64_t sub_100022E58(uint64_t a1)
{
  v2 = sub_100021EA4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100022E94(uint64_t a1)
{
  sub_10002D270();
  v4._countAndFlagsBits = 8250;
  v4._object = 0xE200000000000000;
  sub_10002DC90(v4);
  sub_10002D270();
  sub_10002DC90(v2);

  return v3;
}

void sub_100022F08()
{
  sub_100024100();
  if (v3)
  {
    sub_100024130();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_100024120();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1000236D8(*(v0 + 16), v4, &qword_10003C9E0, &qword_10002F978, type metadata accessor for AppUsageResultEntity);
  type metadata accessor for AppUsageResultEntity(0);
  sub_10002418C();
  if (v1)
  {
    v8 = sub_100024110(v7);
    sub_10001B1F4(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000240C4();
  }
}

void sub_100022FE4()
{
  sub_100024140();
  if ((v4 & 1) == 0 || (sub_1000240A4(), v5 == v6))
  {
LABEL_6:
    sub_100024094();
    if (v3)
    {
      sub_100001A7C(&qword_10003C750, &qword_10002F328);
      v7 = sub_100024174();
      sub_10002414C(v7);
      sub_1000240B4(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_100024074();
        sub_10001B20C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v3 + 4, (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  sub_100024168();
  if (!v5)
  {
    sub_100024084();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_10002309C()
{
  sub_100024100();
  if (v3)
  {
    sub_100024130();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_100024120();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1000236D8(*(v0 + 16), v4, &qword_10003C950, &qword_10002F7A8, type metadata accessor for DeviceActivityDeviceAppEntity);
  type metadata accessor for DeviceActivityDeviceAppEntity(0);
  sub_10002418C();
  if (v1)
  {
    v8 = sub_100024110(v7);
    sub_10001B240(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000240C4();
  }
}

void sub_100023178()
{
  sub_100024100();
  if (v3)
  {
    sub_100024130();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_100024120();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1000236D8(*(v0 + 16), v4, &qword_10003C758, &qword_10002F330, &type metadata accessor for Device);
  sub_10002DB90();
  sub_10002418C();
  if (v1)
  {
    v8 = sub_100024110(v7);
    sub_10001B258(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000240C4();
  }
}

char *sub_100023254(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100001A7C(&qword_10003CA08, &qword_10002F9A8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_10001B32C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_10002335C()
{
  sub_100024140();
  if ((v3 & 1) == 0 || (sub_1000240A4(), v4 == v5))
  {
LABEL_6:
    sub_100024094();
    if (v2)
    {
      sub_100001A7C(&qword_10003C938, &qword_10002F970);
      v9 = sub_100024174();
      sub_10002414C(v9);
      sub_1000240B4(v10);
      if (v1)
      {
LABEL_8:
        v11 = sub_100024074();
        sub_10001B20C(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_1000240E4(v6, v7, v8, &type metadata for String);
    goto LABEL_11;
  }

  sub_100024168();
  if (!v4)
  {
    sub_100024084();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_100023410()
{
  sub_100024140();
  if ((v3 & 1) == 0 || (sub_1000240A4(), v4 == v5))
  {
LABEL_6:
    sub_100024094();
    if (v2)
    {
      sub_100001A7C(&qword_10003C948, &qword_10002F7A0);
      v9 = sub_100024174();
      sub_10002414C(v9);
      sub_1000240B4(v10);
      if (v1)
      {
LABEL_8:
        v11 = sub_100024074();
        sub_10001B354(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_1000240E4(v6, v7, v8, &type metadata for SportsTeamAppEntity);
    goto LABEL_11;
  }

  sub_100024168();
  if (!v4)
  {
    sub_100024084();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1000234C4()
{
  sub_100024140();
  if ((v3 & 1) == 0 || (sub_1000240A4(), v4 == v5))
  {
LABEL_6:
    sub_100024094();
    if (v2)
    {
      sub_100001A7C(&qword_10003C9F8, &qword_10002F990);
      v6 = sub_100024174();
      sub_10002414C(v6);
      sub_1000240B4(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_100024074();
        sub_10001B354(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_100001A7C(&qword_10003CA00, &unk_10002F998);
    sub_1000240E4(v11, v12, v13, v11);
    goto LABEL_11;
  }

  sub_100024168();
  if (!v4)
  {
    sub_100024084();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_100023588()
{
  sub_100024140();
  if ((v4 & 1) == 0 || (sub_1000240A4(), v5 == v6))
  {
LABEL_6:
    sub_100024094();
    if (v3)
    {
      sub_100001A7C(&qword_10003C9E8, &qword_10002F980);
      v7 = swift_allocObject();
      sub_10002414C(v7);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v8 / 24);
      if (v1)
      {
LABEL_8:
        v9 = sub_100024074();
        sub_10001B458(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_100001A7C(&qword_10003C9F0, &qword_10002F988);
    sub_1000240E4(v12, v13, v14, v12);
    goto LABEL_11;
  }

  sub_100024168();
  if (!v5)
  {
    sub_100024084();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_100023664(uint64_t a1, uint64_t a2)
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

  sub_100001A7C(&qword_10003C938, &qword_10002F970);
  v4 = sub_100024174();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_1000236D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

  sub_100001A7C(a3, a4);
  v8 = a5(0);
  sub_10000C028(v8);
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

unint64_t sub_1000237CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000238D8(v11, 0, 0, 1, a1, a2);
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
    sub_100023FF4(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_10001C6CC(v11);
  return v7;
}

uint64_t sub_100023890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000238D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000239D8(a5, a6);
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
    result = sub_10002DDB0();
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

void *sub_1000239D8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100023A24(a1, a2);
  sub_100023B3C(&off_100039A30);
  return v3;
}

void *sub_100023A24(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_10002DCA0())
  {
    result = sub_100023C20(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10002DDA0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_10002DDB0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100023B3C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100023C90(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100023C20(uint64_t a1, uint64_t a2)
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

  sub_100001A7C(&qword_10003CA10, &unk_10002F9B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100023C90(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A7C(&qword_10003CA10, &unk_10002F9B0);
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

unint64_t sub_100023D84()
{
  result = qword_10003C9A0;
  if (!qword_10003C9A0)
  {
    sub_100002A98(&qword_10003C998, &unk_10002F828);
    sub_100023E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C9A0);
  }

  return result;
}

unint64_t sub_100023E08()
{
  result = qword_10003C9A8;
  if (!qword_10003C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C9A8);
  }

  return result;
}

unint64_t sub_100023E60()
{
  result = qword_10003C9B0;
  if (!qword_10003C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C9B0);
  }

  return result;
}

unint64_t sub_100023EB8()
{
  result = qword_10003C9B8;
  if (!qword_10003C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C9B8);
  }

  return result;
}

uint64_t sub_100023FF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100024054(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000240C4()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1000240E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_100024174()
{

  return swift_allocObject();
}

uint64_t sub_100024198(uint64_t a1)
{
  v2 = sub_1000242E8();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100024240();
  sub_10002D870();
  return 0;
}

unint64_t sub_100024240()
{
  result = qword_10003CA18;
  if (!qword_10003CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA18);
  }

  return result;
}

unint64_t sub_1000242E8()
{
  result = qword_10003CA20;
  if (!qword_10003CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA20);
  }

  return result;
}

void SportsEventAppEntity.init(sportsEvent:)(uint64_t a1)
{
  sub_100026FFC();
  v2 = v1;
  v125 = v3;
  v137 = sub_10002D7E0();
  sub_100004534();
  v139 = v4;
  __chkstk_darwin(v5);
  sub_100004560();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v136 = v119 - v10;
  v11 = sub_100001A7C(&qword_10003C980, &qword_10002F810);
  v12 = sub_100002CD8(v11);
  __chkstk_darwin(v12);
  sub_100004560();
  sub_100006D1C();
  __chkstk_darwin(v13);
  sub_100006D1C();
  v15 = __chkstk_darwin(v14);
  v17 = v119 - v16;
  __chkstk_darwin(v15);
  v126 = v119 - v18;
  v19 = sub_10002D990();
  sub_100004534();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_100004560();
  sub_100006D1C();
  __chkstk_darwin(v23);
  sub_100006D1C();
  __chkstk_darwin(v24);
  v146 = v119 - v25;
  v26 = sub_10002D740();
  v27 = sub_100002CD8(v26);
  __chkstk_darwin(v27);
  sub_100002C9C();
  sub_100001A7C(&qword_10003C130, &qword_10002E458);
  sub_100002310();
  v28 = sub_10002D2B0();
  sub_100001A7C(&qword_10003C138, &qword_10002E460);
  v29 = sub_100026E44();
  sub_100026F34(v29);
  v135 = sub_10002D2A0();
  v30 = sub_100026E8C();
  sub_100026F34(v30);
  v31 = v21;
  v134 = sub_10002D2A0();
  sub_100001A7C(&qword_10003C140, &qword_10002E468);
  sub_100026E2C();
  sub_10002D730();
  v133 = sub_10002D2F0();
  sub_100026E78();
  sub_10002D730();
  v132 = sub_10002D2F0();
  sub_100001A7C(&qword_10003C108, &unk_10002F390);
  v124 = sub_10002D310();
  v123 = sub_10002D310();
  v122 = sub_10002D9A0();
  v121 = v32;
  v33 = sub_10002D9B0();
  v34 = *(v33 + 16);
  v130 = v31;
  v140 = v2;
  v138 = v28;
  v131 = v8;
  if (v34)
  {
    v120 = v17;
    v36 = *(v31 + 16);
    v35 = v31 + 16;
    v144 = v36;
    v37 = (*(v35 + 64) + 32) & ~*(v35 + 64);
    v119[1] = v33;
    v38 = v33 + v37;
    v142 = *(v35 + 56);
    v143 = v35;
    v141 = (v35 - 8);
    v39 = _swiftEmptyArrayStorage;
    v145 = v19;
    do
    {
      v40 = v146;
      v41 = v144;
      v144(v146, v38, v19);
      v42 = v147;
      v41(v147, v40, v19);
      v43 = SportsTeamAppEntity.init(sportsTeam:)(v42);
      v45 = v44;
      v47 = v46;
      v49 = v48;
      (*v141)(v40, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100026ECC();
        sub_100023410();
        v39 = v53;
      }

      v51 = v39[2];
      v50 = v39[3];
      if (v51 >= v50 >> 1)
      {
        sub_100026EA0(v50);
        sub_100023410();
        v39 = v54;
      }

      v39[2] = v51 + 1;
      v52 = &v39[4 * v51];
      v52[4] = v43;
      v52[5] = v45;
      v52[6] = v47;
      v52[7] = v49;
      v38 += v142;
      --v34;
      v19 = v145;
    }

    while (v34);

    v8 = v131;
    v55 = v130;
    v17 = v120;
  }

  else
  {
    v55 = v31;

    v39 = _swiftEmptyArrayStorage;
  }

  v150 = v39;
  sub_10002D280();
  v56 = v126;
  sub_10002D9D0();
  sub_1000267A8(v56, v17);
  v57 = sub_1000040D4(v17, 1, v19);
  v58 = v129;
  if (v57 == 1)
  {
    sub_100026818(v56);
    v59 = v19;
    sub_100026F88();
  }

  else
  {
    v60 = v147;
    (*(v55 + 32))(v147, v17, v19);
    v61 = v56;
    v56 = v127;
    (*(v55 + 16))(v127, v60, v19);
    SportsTeamAppEntity.init(sportsTeam:)(v56);
    v59 = v19;
    sub_100026F4C();
    (*(v62 + 8))(v60, v19);
    sub_100026818(v61);
  }

  v150 = v19;
  v151 = v56;
  v152 = v55;
  v153 = v39;
  v63 = sub_100026E18();
  sub_100026880(v63, v64, v65, v66);
  sub_10002D280();
  v67 = sub_100026E18();
  sub_1000268E0(v67, v68, v69, v70);
  sub_10002D9C0();
  v71 = v128;
  sub_1000267A8(v58, v128);
  if (sub_1000040D4(v71, 1, v59) == 1)
  {
    sub_100026818(v58);
    sub_100026F88();
  }

  else
  {
    v72 = v130;
    v73 = v147;
    (*(v130 + 32))(v147, v71, v59);
    v74 = v127;
    (*(v72 + 16))(v127, v73, v59);
    SportsTeamAppEntity.init(sportsTeam:)(v74);
    sub_100026F4C();
    v8 = v131;
    (*(v72 + 8))(v73, v59);
    sub_100026818(v58);
  }

  v150 = v19;
  v151 = v56;
  v152 = v55;
  v153 = v39;
  v75 = sub_100026E18();
  sub_100026880(v75, v76, v77, v78);
  sub_10002D280();
  v79 = sub_100026E18();
  sub_1000268E0(v79, v80, v81, v82);
  v83 = v136;
  sub_10002D9E0();
  v84 = v139;
  v85 = *(v139 + 16);
  v86 = v137;
  v85(v8, v83, v137);
  sub_10002D280();
  v87 = *(v84 + 8);
  v88 = sub_100026FC4();
  v87(v88);
  sub_10002D270();
  sub_10002D7A0();
  (v87)(v8, v86);
  v85(v8, v83, v86);
  sub_10002D280();
  v89 = sub_100026FC4();
  v139 = v84 + 8;
  v87(v89);
  sub_10002D270();
  v90 = 0;
  v91 = v150;
  v92 = v150[2];
  v93 = v150 + 7;
  v94 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v92 == v90)
    {

      v150 = v94;
      sub_100001A7C(&qword_10003CA28, &qword_10002FA78);
      sub_100026E5C();
      sub_100003CE8(v102, v103, &qword_10002FA78, v104);
      sub_100026F04();
      v105 = sub_10002DBE0();
      v107 = v106;

      v150 = v105;
      v151 = v107;
      v108 = v124;
      sub_10002D280();
      sub_10002D270();
      sub_100026EDC();
      v109 = [objc_allocWithZone(NSDateFormatter) init];
      [v109 setDateStyle:2];
      [v109 setTimeStyle:1];
      v110 = v136;
      v111 = v133;
      sub_10002D270();
      isa = sub_10002D7B0().super.isa;
      (v87)(v110, v137);
      v113 = [v109 stringFromDate:isa];

      v114 = sub_10002DC20();
      v116 = v115;

      v159._countAndFlagsBits = v114;
      v159._object = v116;
      sub_10002DC90(v159);

      v117 = v123;
      sub_10002D280();
      v118 = sub_10002D9F0();
      (*(*(v118 - 8) + 8))(v140, v118);
      v149[0] = v122;
      v149[1] = v121;
      v149[2] = v138;
      v149[3] = v135;
      v149[4] = v134;
      v149[5] = v111;
      v149[6] = v132;
      v149[7] = v108;
      v149[8] = v117;
      v150 = v122;
      v151 = v121;
      v152 = v138;
      v153 = v135;
      v154 = v134;
      v155 = v111;
      v156 = v132;
      v157 = v108;
      v158 = v117;
      sub_100026940(v149, &v148);
      sub_100026978(&v150);
      memcpy(v125, v149, 0x48uLL);
      sub_100026FE4();
      return;
    }

    if (v90 >= v91[2])
    {
      break;
    }

    sub_10002D270();

    v95 = v150;
    v96 = v151;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100026ECC();
      sub_10002335C();
      v94 = v100;
    }

    v98 = v94[2];
    v97 = v94[3];
    if (v98 >= v97 >> 1)
    {
      sub_100026EA0(v97);
      sub_10002335C();
      v94 = v101;
    }

    v94[2] = v98 + 1;
    v99 = &v94[2 * v98];
    v99[4] = v95;
    v99[5] = v96;
    v93 += 4;
    ++v90;
  }

  __break(1u);
}

uint64_t sub_100024EB0()
{
  v0 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_10002D740();
  __chkstk_darwin(v3);
  v4 = sub_10002D620();
  sub_100004480(v4, static SportsEventAppEntity.typeDisplayRepresentation);
  sub_100004448(v4, static SportsEventAppEntity.typeDisplayRepresentation);
  sub_10002D730();
  sub_100001AC4(v2, 1, 1, v3);
  return sub_10002D610();
}

uint64_t SportsEventAppEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_10003C0E8 != -1)
  {
    sub_100026DF8(&qword_10003C0E8);
  }

  v0 = sub_10002D620();

  return sub_100004448(v0, static SportsEventAppEntity.typeDisplayRepresentation);
}

uint64_t static SportsEventAppEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C0E8 != -1)
  {
    sub_100026DF8(&qword_10003C0E8);
  }

  v2 = sub_10002D620();
  v3 = sub_100004448(v2, static SportsEventAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SportsEventAppEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_10003C0E8 != -1)
  {
    sub_100026DF8(&qword_10003C0E8);
  }

  v2 = sub_10002D620();
  v3 = sub_100004448(v2, static SportsEventAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SportsEventAppEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_10003C0E8 != -1)
  {
    sub_100026DF8(&qword_10003C0E8);
  }

  v1 = sub_10002D620();
  sub_100004448(v1, static SportsEventAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*SportsEventAppEntity.teams.modify())()
{
  v1 = sub_100026EC0();
  v2 = sub_10001EE94(v1);
  sub_100026EB4(v2);
  *(v0 + 32) = sub_10002D260();
  return sub_1000214F4;
}

uint64_t SportsEventAppEntity.homeTeam.setter()
{
  sub_100026FB0();
  sub_100026880(v2, v3, v4, v5);
  sub_10002D280();
  v6 = sub_100026FC4();
  return sub_1000268E0(v6, v7, v1, v0);
}

uint64_t (*SportsEventAppEntity.homeTeam.modify())()
{
  v1 = sub_100026EC0();
  v2 = sub_10001EE94(v1);
  sub_100026EB4(v2);
  *(v0 + 32) = sub_10002D260();
  return sub_1000214F4;
}

uint64_t SportsEventAppEntity.awayTeam.setter()
{
  sub_100026FB0();
  sub_100026880(v2, v3, v4, v5);
  sub_10002D280();
  v6 = sub_100026FC4();
  return sub_1000268E0(v6, v7, v1, v0);
}

uint64_t (*SportsEventAppEntity.awayTeam.modify())()
{
  v1 = sub_100026EC0();
  v2 = sub_10001EE94(v1);
  sub_100026EB4(v2);
  *(v0 + 32) = sub_10002D260();
  return sub_1000214F4;
}

uint64_t SportsEventAppEntity.startTime.setter(uint64_t a1)
{
  v2 = sub_10002D7E0();
  sub_100004534();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100002C9C();
  v6 = sub_100026F1C();
  v7(v6);
  sub_10002D280();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*SportsEventAppEntity.startTime.modify())()
{
  v1 = sub_100026EC0();
  v2 = sub_10001EE94(v1);
  sub_100026EB4(v2);
  *(v0 + 32) = sub_10002D260();
  return sub_1000214F4;
}

uint64_t SportsEventAppEntity.endTime.setter(uint64_t a1)
{
  v2 = sub_10002D7E0();
  sub_100004534();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100002C9C();
  v6 = sub_100026F1C();
  v7(v6);
  sub_10002D280();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*SportsEventAppEntity.endTime.modify())()
{
  v1 = sub_100026EC0();
  v2 = sub_10001EE94(v1);
  sub_100026EB4(v2);
  *(v0 + 32) = sub_10002D260();
  return sub_1000214F4;
}

uint64_t (*SportsEventAppEntity.title.modify())()
{
  v1 = sub_100026EC0();
  v2 = sub_10001EE94(v1);
  sub_100026EB4(v2);
  *(v0 + 32) = sub_10002D260();
  return sub_1000214F4;
}

uint64_t (*SportsEventAppEntity.description.modify())()
{
  v1 = sub_100026EC0();
  v2 = sub_10001EE94(v1);
  sub_100026EB4(v2);
  *(v0 + 32) = sub_10002D260();
  return sub_10001EF34;
}

void SportsEventAppEntity.init()(uint64_t a1, uint64_t a2)
{
  sub_100026FFC();
  v28 = v2;
  v3 = sub_10002D7E0();
  sub_100004534();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100004560();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = sub_10002D740();
  v14 = sub_100002CD8(v13);
  __chkstk_darwin(v14);
  sub_100002C9C();
  sub_100001A7C(&qword_10003C130, &qword_10002E458);
  sub_100002310();
  v23 = sub_10002D2B0();
  sub_100001A7C(&qword_10003C138, &qword_10002E460);
  v15 = sub_100026E44();
  sub_100026F34(v15);
  v27 = sub_10002D2A0();
  v16 = sub_100026E8C();
  sub_100026F34(v16);
  v26 = sub_10002D2A0();
  sub_100001A7C(&qword_10003C140, &qword_10002E468);
  sub_100026E2C();
  sub_10002D730();
  v22 = sub_10002D2F0();
  sub_100026E78();
  sub_10002D730();
  v25 = sub_10002D2F0();
  sub_100001A7C(&qword_10003C108, &unk_10002F390);
  v24 = sub_10002D310();
  v17 = sub_10002D310();
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_10002D280();
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_10002D280();
  v31 = _swiftEmptyArrayStorage;
  sub_10002D280();
  sub_10002D7D0();
  v18 = *(v5 + 16);
  v18(v9, v12, v3);
  sub_10002D280();
  v19 = *(v5 + 8);
  v19(v12, v3);
  sub_10002D7D0();
  v18(v9, v12, v3);
  v20 = v25;
  sub_10002D280();
  v19(v12, v3);
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  v30[2] = v23;
  v30[3] = v27;
  v30[4] = v26;
  v30[5] = v22;
  v30[6] = v20;
  v30[7] = v24;
  v30[8] = v17;
  v31 = 0;
  v32 = 0xE000000000000000;
  v33 = v23;
  v34 = v27;
  v35 = v26;
  v36 = v22;
  v37 = v20;
  v38 = v24;
  v39 = v17;
  sub_100026940(v30, &v29);
  sub_100026978(&v31);
  memcpy(v28, v30, 0x48uLL);
  sub_100026FE4();
}

void SportsEventAppEntity.init(id:name:teams:homeTeam:awayTeam:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100026FFC();
  v120 = v26;
  v119 = v27;
  v117 = v28;
  v110 = v29;
  v107 = v30;
  v106 = v31;
  v108 = v32;
  v118 = a26;
  v116 = a25;
  v114 = a24;
  v113 = a23;
  v111 = a22;
  v115 = a21;
  v112 = sub_10002D7E0();
  sub_100004534();
  v34 = v33;
  __chkstk_darwin(v35);
  sub_100004560();
  v38 = (v36 - v37);
  __chkstk_darwin(v39);
  v41 = &v99 - v40;
  v42 = sub_10002D740();
  v43 = sub_100002CD8(v42);
  __chkstk_darwin(v43);
  sub_100002C9C();

  sub_100001A7C(&qword_10003C130, &qword_10002E458);
  sub_100002310();
  v109 = sub_10002D2B0();
  sub_100001A7C(&qword_10003C138, &qword_10002E460);
  v44 = sub_100026E44();
  sub_100026F34(v44);
  v45 = sub_10002D2A0();
  v46 = sub_100026E8C();
  sub_100026F34(v46);
  v47 = sub_10002D2A0();
  sub_100001A7C(&qword_10003C140, &qword_10002E468);
  sub_100026E2C();
  sub_10002D730();
  v48 = sub_10002D2F0();
  sub_100026E78();
  sub_10002D730();
  v49 = sub_10002D2F0();
  sub_100001A7C(&qword_10003C108, &unk_10002F390);
  v101 = sub_10002D310();
  v100 = sub_10002D310();
  v123 = v110;
  sub_10002D280();
  v123 = sub_100026F9C();
  v124 = v50;
  sub_100026F74();
  v125 = v51;
  v126 = v52;
  sub_100026880(v53, v54, v51, v52);
  v105 = v45;
  sub_10002D280();
  v123 = sub_100026FD0();
  v124 = v55;
  sub_100026F60();
  v125 = v56;
  v126 = v57;
  v58 = v112;
  sub_100026880(v59, v60, v56, v57);
  v104 = v47;
  sub_10002D280();
  v61 = *(v34 + 16);
  v61(v41, v118, v58);
  v61(v38, v41, v58);
  v103 = v48;
  sub_10002D280();
  v62 = *(v34 + 8);
  v62(v41, v58);
  sub_10002D7A0();
  v61(v38, v41, v58);
  v102 = v49;
  sub_10002D280();
  v110 = v34 + 8;
  v99 = v62;
  v62(v41, v58);
  v63 = v109;
  sub_10002D270();
  v64 = 0;
  v65 = v123;
  v66 = *(v123 + 16);
  v67 = v123 + 56;
  v68 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v66 == v64)
    {

      v123 = v68;
      sub_100001A7C(&qword_10003CA28, &qword_10002FA78);
      sub_100026E5C();
      sub_100003CE8(v76, v77, &qword_10002FA78, v78);
      sub_100026F04();
      v79 = sub_10002DBE0();
      v81 = v80;

      v123 = v79;
      v124 = v81;
      v82 = v101;
      sub_10002D280();
      sub_10002D270();
      sub_100026EDC();
      v83 = [objc_allocWithZone(NSDateFormatter) init];
      [v83 setDateStyle:2];
      [v83 setTimeStyle:1];
      v84 = v118;
      isa = sub_10002D7B0().super.isa;
      v86 = [v83 stringFromDate:isa];

      v87 = sub_10002DC20();
      v89 = v88;

      v132._countAndFlagsBits = v87;
      v132._object = v89;
      sub_10002DC90(v132);

      v90 = v100;
      sub_10002D280();
      sub_100026FD0();
      sub_100026F60();
      sub_1000268E0(v91, v92, v93, v94);
      sub_100026F9C();
      sub_100026F74();
      sub_1000268E0(v95, v96, v97, v98);
      v99(v84, v112);
      v122[0] = v106;
      v122[1] = v107;
      v122[2] = v63;
      v122[3] = v105;
      v122[4] = v104;
      v122[5] = v103;
      v122[6] = v102;
      v122[7] = v82;
      v122[8] = v90;
      v123 = v106;
      v124 = v107;
      v125 = v63;
      v126 = v105;
      v127 = v104;
      v128 = v103;
      v129 = v102;
      v130 = v82;
      v131 = v90;
      sub_100026940(v122, &v121);
      sub_100026978(&v123);
      memcpy(v108, v122, 0x48uLL);
      sub_100026FE4();
      return;
    }

    if (v64 >= *(v65 + 16))
    {
      break;
    }

    sub_10002D270();

    v69 = v123;
    v70 = v124;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100026ECC();
      sub_10002335C();
      v68 = v74;
    }

    v72 = v68[2];
    v71 = v68[3];
    if (v72 >= v71 >> 1)
    {
      sub_100026EA0(v71);
      sub_10002335C();
      v68 = v75;
    }

    v68[2] = v72 + 1;
    v73 = &v68[2 * v72];
    v73[4] = v69;
    v73[5] = v70;
    v67 += 32;
    ++v64;
  }

  __break(1u);
}

uint64_t sub_1000265B8(uint64_t a1)
{
  v2 = sub_100026D9C();

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_100026604@<X0>(uint64_t a1@<X8>)
{
  v2 = SportsEventAppEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = sub_10002D620();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_100026680(uint64_t a1)
{
  v2 = sub_1000269AC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000266D0(uint64_t a1)
{
  v2 = sub_100026C04();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

void sub_10002671C()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100023410();
    *v0 = v3;
  }
}

void sub_100026768(uint64_t result)
{
  if (result + 1 > *(*v1 + 24) >> 1)
  {
    sub_100023410();
    *v1 = v2;
  }
}

uint64_t sub_1000267A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A7C(&qword_10003C980, &qword_10002F810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026818(uint64_t a1)
{
  v2 = sub_100001A7C(&qword_10003C980, &qword_10002F810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100026880(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000268E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000269AC()
{
  result = qword_10003CA38;
  if (!qword_10003CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA38);
  }

  return result;
}

unint64_t sub_100026A04()
{
  result = qword_10003CA40;
  if (!qword_10003CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA40);
  }

  return result;
}

unint64_t sub_100026A5C()
{
  result = qword_10003CA48;
  if (!qword_10003CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA48);
  }

  return result;
}

unint64_t sub_100026AB4()
{
  result = qword_10003CA50;
  if (!qword_10003CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA50);
  }

  return result;
}

unint64_t sub_100026B50()
{
  result = qword_10003CA68;
  if (!qword_10003CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA68);
  }

  return result;
}

unint64_t sub_100026BA8()
{
  result = qword_10003CA70;
  if (!qword_10003CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA70);
  }

  return result;
}

unint64_t sub_100026C04()
{
  result = qword_10003CA78;
  if (!qword_10003CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA78);
  }

  return result;
}

unint64_t sub_100026CA0()
{
  result = qword_10003CA90;
  if (!qword_10003CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA90);
  }

  return result;
}

uint64_t sub_100026CFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100026D3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100026D9C()
{
  result = qword_10003CA98;
  if (!qword_10003CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA98);
  }

  return result;
}

uint64_t sub_100026DF8(uint64_t a1)
{

  return swift_once();
}

void sub_100026EDC()
{
  v2 = *(v0 - 152);
  *(v0 - 160) = *(v0 - 160);
  *(v0 - 152) = v2;
  v3._countAndFlagsBits = 2113568;
  v3._object = 0xE300000000000000;

  sub_10002DC90(v3);
}

uint64_t sub_100026F34(uint64_t a1)
{

  return sub_10002D730();
}

uint64_t SportsTeamAppEntityProtocol.toSportsTeam()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  v2 = sub_10002A168();
  v3(v2);
  v4 = sub_10002A168();
  v5(v4);
  v6 = sub_10002A168();
  v7(v6);

  return sub_10002D950();
}

uint64_t SportsTeamAppEntity.init(sportsTeam:)(uint64_t a1)
{
  sub_100001A7C(&qword_10003C108, &unk_10002F390);
  v2 = sub_10002D310();

  sub_10002D310();

  sub_10002D310();

  sub_10002D310();

  sub_10002D960();
  sub_10002A134();
  sub_10002D280();
  sub_10002D970();
  sub_10002A134();
  sub_10002D280();
  sub_10002D980();
  sub_10002A134();
  sub_10002D280();
  sub_10002D940();
  sub_10002A134();
  sub_10002D280();
  v3 = sub_10002D990();
  (*(*(v3 - 8) + 8))(a1, v3);

  return v2;
}

uint64_t sub_1000272A4()
{
  v0 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_10002D740();
  __chkstk_darwin(v6);
  sub_10002D270();
  v7 = sub_10002D780();
  v9 = v8;

  sub_10002D270();
  sub_10002D730();
  sub_100001AC4(v5, 1, 1, v6);
  if (v9 >> 60 == 15)
  {
    v10 = sub_10002D4E0();
    sub_100001AC4(v2, 1, 1, v10);
    return sub_10002D500();
  }

  else
  {
    sub_100027DDC(v7, v9);
    sub_10002D4D0();
    v12 = sub_10002D4E0();
    sub_100001AC4(v2, 0, 1, v12);
    sub_10002D500();
    return sub_10001DC38(v7, v9);
  }
}

uint64_t SportsTeamAppEntityProtocol.displayRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  __chkstk_darwin(v5 - 8);
  v7 = v18 - v6;
  v8 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  __chkstk_darwin(v8 - 8);
  v9 = sub_10002D740();
  __chkstk_darwin(v9);
  (*(a2 + 96))(a1, a2);
  v10 = sub_10002D780();
  v12 = v11;

  v13 = sub_10002A174();
  v14(v13);
  sub_10002D730();
  sub_10002A188();
  if (v12 >> 60 == 15)
  {
    v15 = sub_10002D4E0();
    sub_100001AC4(v7, 1, 1, v15);
    return sub_10002A1A8();
  }

  else
  {
    sub_100027DDC(v10, v12);
    sub_10002D4D0();
    v17 = sub_10002D4E0();
    sub_100001AC4(v7, 0, 1, v17);
    sub_10002A1A8();
    return sub_10001DC38(v10, v12);
  }
}

uint64_t SportsTeamAppEntityProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 48))();
  v6._countAndFlagsBits = 8250;
  v6._object = 0xE200000000000000;
  sub_10002DC90(v6);
  v7._countAndFlagsBits = (*(a2 + 72))(a1, a2);
  sub_10002DC90(v7);

  return v5;
}

uint64_t sub_1000277AC()
{
  v0 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_10002D740();
  __chkstk_darwin(v3);
  v4 = sub_10002D620();
  sub_100004480(v4, static SportsTeamAppEntity.typeDisplayRepresentation);
  sub_100004448(v4, static SportsTeamAppEntity.typeDisplayRepresentation);
  sub_10002D730();
  sub_100001AC4(v2, 1, 1, v3);
  return sub_10002D610();
}

uint64_t SportsTeamAppEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_10003C0F0 != -1)
  {
    sub_10002A104(&qword_10003C0F0);
  }

  v0 = sub_10002D620();

  return sub_100004448(v0, static SportsTeamAppEntity.typeDisplayRepresentation);
}

uint64_t static SportsTeamAppEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C0F0 != -1)
  {
    sub_10002A104(&qword_10003C0F0);
  }

  v2 = sub_10002D620();
  v3 = sub_100004448(v2, static SportsTeamAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SportsTeamAppEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_10003C0F0 != -1)
  {
    sub_10002A104(&qword_10003C0F0);
  }

  v2 = sub_10002D620();
  sub_100004448(v2, static SportsTeamAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v3 = *(v2 - 8);
  v4 = sub_10002A168();
  v5(v4);
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*static SportsTeamAppEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_10003C0F0 != -1)
  {
    sub_10002A104(&qword_10003C0F0);
  }

  v1 = sub_10002D620();
  sub_100004448(v1, static SportsTeamAppEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*SportsTeamAppEntity.id.modify())()
{
  v1 = sub_100026EC0();
  v2 = sub_10001EE94(v1);
  *(v0 + 32) = sub_10002A1C8(v2);
  return sub_1000214F4;
}

uint64_t (*SportsTeamAppEntity.name.modify())()
{
  v1 = sub_100026EC0();
  v2 = sub_10001EE94(v1);
  *(v0 + 32) = sub_10002A1C8(v2);
  return sub_1000214F4;
}

uint64_t (*SportsTeamAppEntity.league.modify())()
{
  v1 = sub_100026EC0();
  v2 = sub_10001EE94(v1);
  *(v0 + 32) = sub_10002A1C8(v2);
  return sub_1000214F4;
}

uint64_t sub_100027DDC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t (*SportsTeamAppEntity.imageData.modify())()
{
  v1 = sub_100026EC0();
  v2 = sub_10001EE94(v1);
  *(v0 + 32) = sub_10002A1C8(v2);
  return sub_10001EF34;
}

uint64_t (*sub_100027EBC(void *a1))()
{
  v2 = sub_10001EE94(0x28uLL);
  *a1 = v2;
  v2[4] = sub_10002D260();
  return sub_1000214F4;
}

uint64_t (*sub_100027F2C(void *a1))()
{
  v2 = sub_10001EE94(0x28uLL);
  *a1 = v2;
  v2[4] = sub_10002D260();
  return sub_1000214F4;
}

uint64_t (*sub_100027F9C(void *a1))()
{
  v2 = sub_10001EE94(0x28uLL);
  *a1 = v2;
  v2[4] = sub_10002D260();
  return sub_1000214F4;
}

uint64_t (*sub_10002800C(void *a1))()
{
  v2 = sub_10001EE94(0x28uLL);
  *a1 = v2;
  v2[4] = sub_10002D260();
  return sub_1000214F4;
}

uint64_t sub_10002806C@<X0>(uint64_t *a1@<X8>)
{
  result = SportsTeamAppEntity.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000280A4@<X0>(uint64_t a1@<X8>)
{
  v2 = SportsTeamAppEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = sub_10002D620();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_100028120(uint64_t a1)
{
  v2 = sub_100002310();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100028178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002A0F0;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10002823C(uint64_t a1)
{
  v2 = sub_100029DEC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t SportsTeamAppEntityQuery.entities(for:)()
{
  sub_10001DFE4();
  v0[2] = v1;
  v2 = sub_10002DA50();
  v0[3] = v2;
  sub_10000C028(v2);
  v0[4] = v3;
  v0[5] = swift_task_alloc();
  sub_100001A7C(&qword_10003C980, &qword_10002F810);
  v0[6] = swift_task_alloc();
  v4 = sub_10002D990();
  v0[7] = v4;
  sub_10000C028(v4);
  v0[8] = v5;
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v6 = sub_10002D8C0();
  v0[11] = v6;
  sub_10000C028(v6);
  v0[12] = v7;
  v0[13] = swift_task_alloc();

  return _swift_task_switch(sub_100028428, 0, 0);
}

void sub_100028428(uint64_t a1)
{
  v62 = v1;
  sub_10002D880();

  v2 = sub_10002D8B0();
  v3 = sub_10002DD10();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[12];
  v5 = v1[13];
  v7 = v1[11];
  v57 = v1;
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v61 = v9;
    *v8 = 136380675;
    v10 = sub_10002DCD0();
    v12 = sub_1000237CC(v10, v11, &v61);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "SportsEventsAppIntent entities(for teamIds: %{private}s)", v8, 0xCu);
    sub_10001C6CC(v9);
  }

  (*(v6 + 8))(v5, v7);
  v13 = 0;
  v14 = v1[8];
  v15 = v1[2];
  v16 = *(v15 + 16);
  v59 = (v1[4] + 8);
  v55 = (v14 + 16);
  v56 = (v14 + 32);
  v54 = (v14 + 8);
  v17 = v15 + 40;
  v58 = _swiftEmptyArrayStorage;
  v53 = v15 + 40;
LABEL_4:
  v18 = v17 + 16 * v13;
  while (v16 != v13)
  {
    if (v13 >= v16)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    if (__OFADD__(v13, 1))
    {
      goto LABEL_29;
    }

    v20 = v1[6];
    v19 = v1[7];
    v21 = v1[5];
    v22 = v1[3];

    sub_10002DA40();
    sub_10002DA20();
    (*v59)(v21, v22);
    if (sub_1000040D4(v20, 1, v19) != 1)
    {
      v24 = v1[9];
      v25 = v1[10];
      v26 = v1[7];
      (*v56)(v25, v1[6], v26);
      (*v55)(v24, v25, v26);
      v27 = SportsTeamAppEntity.init(sportsTeam:)(v24);
      v29 = v28;
      v31 = v30;
      v33 = v32;

      (*v54)(v25, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000234C4();
        v58 = v36;
      }

      v17 = v53;
      v34 = v58[2];
      if (v34 >= v58[3] >> 1)
      {
        sub_1000234C4();
        v58 = v37;
      }

      ++v13;
      v58[2] = v34 + 1;
      v35 = &v58[4 * v34];
      v35[4] = v27;
      v35[5] = v29;
      v35[6] = v31;
      v35[7] = v33;
      v1 = v57;
      goto LABEL_4;
    }

    v23 = v1[6];

    sub_100026818(v23);
    ++v13;
    v18 += 16;
  }

  v38 = 0;
  v39 = v58[2];
  v40 = v58 + 4;
  v41 = _swiftEmptyArrayStorage;
LABEL_16:
  v42 = &v40[4 * v38];
  while (v39 != v38)
  {
    if (v38 >= v58[2])
    {
      goto LABEL_30;
    }

    ++v38;
    v43 = v42 + 4;
    v44 = *v42;
    v42 += 4;
    if (v44)
    {
      v45 = *(v43 - 3);
      v46 = *(v43 - 2);
      v47 = *(v43 - 1);

      v60 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100023410();
        v41 = v50;
      }

      v48 = v41[2];
      if (v48 >= v41[3] >> 1)
      {
        sub_100023410();
        v41 = v51;
      }

      v41[2] = v48 + 1;
      v49 = &v41[4 * v48];
      v49[4] = v44;
      v49[5] = v45;
      v49[6] = v46;
      v49[7] = v47;
      v1 = v57;
      v40 = v60;
      goto LABEL_16;
    }
  }

  v52 = v1[1];

  v52(v41);
}

uint64_t SportsTeamAppEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return sub_10002A124();
}

void *sub_1000288FC()
{
  result = sub_100028BBC();
  v2 = 0;
  v25 = -result[2];
  v23 = _swiftEmptyArrayStorage;
  v3 = &type metadata for String;
  v24 = result;
LABEL_2:
  v4 = v2 + 1;
  while (v25 + v4 != 1)
  {
    if ((v4 - 1) >= result[2])
    {
      __break(1u);
      return result;
    }

    v5 = v3;
    v26 = v4;
    v6 = &result[4 * v4];
    v27 = *v6;
    v28 = v6[1];

    sub_10002D270();
    v7 = sub_10002DC70();
    v9 = v8;

    v0[2] = v7;
    v0[3] = v9;
    v0[4] = sub_10002DC70();
    v0[5] = v10;
    sub_100029AAC();
    v11 = sub_10002A140();

    if (v11 & 1) != 0 || (sub_10002D270(), v12 = sub_10002DC70(), v14 = v13, , v0[2] = v12, v0[3] = v14, v3 = v5, sub_10002A168(), v0[4] = sub_10002DC70(), v0[5] = v15, v16 = sub_10002A140(), , , (v16))
    {
      v17 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000203C8(0, v23[2] + 1, 1);
        v17 = v23;
      }

      v19 = v17[2];
      v18 = v17[3];
      if (v19 >= v18 >> 1)
      {
        sub_1000203C8((v18 > 1), v19 + 1, 1);
        v17 = v23;
      }

      v17[2] = v19 + 1;
      v23 = v17;
      v20 = &v17[4 * v19];
      *(v20 + 2) = v27;
      *(v20 + 3) = v28;
      result = v24;
      v2 = v26;
      goto LABEL_2;
    }

    v4 = v26 + 1;
    result = v24;
  }

  v21 = v0[6];

  sub_100028E90(v23, v21);

  sub_10000C354();

  return v22();
}

void *sub_100028BBC()
{
  v37 = sub_10002D990();
  v0 = *(v37 - 8);
  v1 = __chkstk_darwin(v37);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v35 = &v30 - v3;
  v4 = sub_10002DA50();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002DA40();
  v8 = sub_10002DA10();
  (*(v5 + 8))(v7, v4);
  v9 = *(v8 + 16);
  if (v9)
  {
    v11 = *(v0 + 16);
    v10 = v0 + 16;
    v12 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v32 = *(v10 + 56);
    v33 = v11;
    v30 = v8;
    v31 = (v10 - 8);
    v13 = _swiftEmptyArrayStorage;
    v34 = v10;
    do
    {
      v14 = v35;
      v15 = v37;
      v16 = v33;
      v33(v35, v12, v37);
      v17 = v36;
      v16(v36, v14, v15);
      v18 = SportsTeamAppEntity.init(sportsTeam:)(v17);
      v20 = v19;
      v22 = v21;
      v24 = v23;
      (*v31)(v14, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100023410();
        v13 = v27;
      }

      v25 = v13[2];
      if (v25 >= v13[3] >> 1)
      {
        sub_100023410();
        v13 = v28;
      }

      v13[2] = v25 + 1;
      v26 = &v13[4 * v25];
      v26[4] = v18;
      v26[5] = v20;
      v26[6] = v22;
      v26[7] = v24;
      v12 += v32;
      --v9;
    }

    while (v9);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v13;
}

void sub_100028E90(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38[1] = a2;
  v39 = sub_10002D740();
  __chkstk_darwin(v39);
  v46 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100001A7C(&qword_10003C780, &unk_10002F360);
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v5 = v38 - v4;
  v6 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  __chkstk_darwin(v6 - 8);
  v40 = v38 - v7;
  v8 = _swiftEmptyArrayStorage;
  v44 = *(a1 + 16);
  if (v44)
  {
    v9 = 0;
    v43 = a1 + 32;
    v41 = xmmword_10002F0C0;
    v42 = v5;
    while (2)
    {
      v10 = (v43 + 32 * v9);
      v11 = v10[1];
      v51 = *v10;
      v52 = v11;
      v12 = v8[2];
      v49 = v51;
      v50 = v9 + 1;

      v48 = *(&v51 + 1);

      v13 = 0;
      for (i = 0; ; ++i)
      {
        if (v12 == i)
        {
          sub_10002D270();
          v19 = v53;
          v20 = v54;
          sub_100001A7C(&qword_10003C948, &qword_10002F7A0);
          v21 = swift_allocObject();
          v22 = v52;
          v21[1] = v41;
          v21[2] = v51;
          v21[3] = v22;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100023588();
            v8 = v30;
          }

          v9 = v50;
          v23 = v8[2];
          if (v23 >= v8[3] >> 1)
          {
            sub_100023588();
            v8 = v31;
          }

          v8[2] = v23 + 1;
          v24 = &v8[3 * v23];
          v24[4] = v19;
          v24[5] = v20;
          v24[6] = v21;
          v5 = v42;
          goto LABEL_22;
        }

        if (i >= v8[2])
        {
          __break(1u);
          goto LABEL_31;
        }

        v16 = v8[v13 + 4];
        v15 = v8[v13 + 5];

        sub_10002D270();
        if (v16 == v53 && v15 == v54)
        {
          break;
        }

        v18 = sub_10002DE10();

        if (v18)
        {
          goto LABEL_18;
        }

        v13 += 3;
      }

LABEL_18:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10002A0DC();
        v8 = v29;
      }

      v5 = v42;
      if (i >= v8[2])
      {
        goto LABEL_32;
      }

      sub_10002671C();
      v25 = *(v8[v13 + 6] + 16);
      sub_100026768(v25);
      v26 = v8[v13 + 6];
      *(v26 + 16) = v25 + 1;
      v27 = v26 + 32 * v25;
      v28 = v52;
      *(v27 + 32) = v51;
      *(v27 + 48) = v28;
      v9 = v50;
LABEL_22:
      if (v9 != v44)
      {
        continue;
      }

      break;
    }
  }

  sub_100001AC4(v40, 1, 1, v39);
  v32 = v8[2];
  if (v32)
  {
    v53 = _swiftEmptyArrayStorage;
    sub_1000203A8(0, v32, 0);
    v33 = 0;
    v34 = v53;
    *&v52 = v47 + 32;
    v35 = v8 + 6;
    while (v33 < v8[2])
    {
      swift_bridgeObjectRetain_n();

      sub_10002D730();
      sub_100029D94();

      sub_10002D440();

      v53 = v34;
      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        sub_1000203A8((v36 > 1), v37 + 1, 1);
        v34 = v53;
      }

      ++v33;
      v34[2] = v37 + 1;
      (*(v47 + 32))(v34 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v37, v5, v45);
      v35 += 3;
      if (v32 == v33)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_29:

    sub_100029D94();
    sub_10002D480();
  }
}

uint64_t sub_100029460()
{
  sub_10001DFE4();
  v1 = *(v0 + 16);
  v2 = sub_100028BBC();
  sub_100028E90(v2, v1);

  sub_10000C354();

  return v3();
}

uint64_t sub_1000294D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100029580;

  return SportsTeamAppEntityQuery.entities(matching:)(a1, a2, a3);
}

uint64_t sub_100029580()
{
  sub_10001DFE4();
  v1 = *v0;
  sub_10001DF00();
  *v2 = v1;

  sub_10000C354();

  return v3();
}

uint64_t sub_100029664()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002A100;

  return SportsTeamAppEntityQuery.entities(for:)();
}

uint64_t sub_1000296F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002A0F0;

  return SportsTeamAppEntityQuery.suggestedEntities()(a1);
}

uint64_t sub_100029790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100029850;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100029850()
{
  sub_10001DFE4();
  v3 = v2;
  v4 = *v1;
  sub_10001DF00();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_100029944(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100029C8C();
  *v5 = v2;
  v5[1] = sub_10002A0F0;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000299F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100029580;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100029AAC()
{
  result = qword_10003CAA0;
  if (!qword_10003CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAA0);
  }

  return result;
}

unint64_t sub_100029B00(uint64_t a1)
{
  *(a1 + 8) = sub_100002310();
  result = sub_100029B30();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100029B30()
{
  result = qword_10003CAA8;
  if (!qword_10003CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAA8);
  }

  return result;
}

unint64_t sub_100029B88()
{
  result = qword_10003CAB0;
  if (!qword_10003CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAB0);
  }

  return result;
}

unint64_t sub_100029BE0()
{
  result = qword_10003CAB8;
  if (!qword_10003CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAB8);
  }

  return result;
}

unint64_t sub_100029C38()
{
  result = qword_10003CAC0;
  if (!qword_10003CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAC0);
  }

  return result;
}

unint64_t sub_100029C8C()
{
  result = qword_10003CAC8;
  if (!qword_10003CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAC8);
  }

  return result;
}

unint64_t sub_100029CE4()
{
  result = qword_10003CAD0;
  if (!qword_10003CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAD0);
  }

  return result;
}

unint64_t sub_100029D3C()
{
  result = qword_10003CAD8;
  if (!qword_10003CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAD8);
  }

  return result;
}

unint64_t sub_100029D94()
{
  result = qword_10003CAE0;
  if (!qword_10003CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAE0);
  }

  return result;
}

unint64_t sub_100029DEC()
{
  result = qword_10003CAE8;
  if (!qword_10003CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAE8);
  }

  return result;
}

unint64_t sub_100029E88()
{
  result = qword_10003CB00;
  if (!qword_10003CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB00);
  }

  return result;
}

unint64_t sub_100029EE4()
{
  result = qword_10003CB08;
  if (!qword_10003CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB08);
  }

  return result;
}

unint64_t sub_100029F3C()
{
  result = qword_10003CB10;
  if (!qword_10003CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB10);
  }

  return result;
}

unint64_t sub_100029F98()
{
  result = qword_10003CB18;
  if (!qword_10003CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB18);
  }

  return result;
}

__n128 sub_10002A030(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002A03C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10002A07C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10002A104(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10002A140()
{

  return StringProtocol.contains<A>(_:)(v0 + 32, v1, v1, v2, v2);
}

uint64_t sub_10002A188()
{

  return sub_100001AC4(v0, 1, 1, v1);
}

uint64_t sub_10002A1A8()
{

  return sub_10002D500();
}

uint64_t sub_10002A1C8(uint64_t a1)
{
  *v1 = a1;

  return sub_10002D260();
}

uint64_t sub_10002A1E0(unsigned __int8 a1, char a2)
{
  v2 = 0x7961646F74;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7961646F74;
  switch(v4)
  {
    case 1:
      v5 = 0x6164726574736579;
      v3 = 0xE900000000000079;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v6 = 1936287860;
      goto LABEL_6;
    case 3:
      v3 = 0xE800000000000000;
      v6 = 1953718636;
LABEL_6:
      v5 = v6 | 0x6B65655700000000;
      break;
    case 4:
      v5 = 0x746E6F4D73696874;
      v3 = 0xE900000000000068;
      break;
    case 5:
      v5 = 0x6569666963657073;
      v3 = 0xEC00000079614464;
      break;
    case 6:
      v5 = 0x6565777465426E69;
      v3 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6164726574736579;
      v7 = 0xE900000000000079;
      break;
    case 2:
      v7 = 0xE800000000000000;
      v8 = 1936287860;
      goto LABEL_14;
    case 3:
      v7 = 0xE800000000000000;
      v8 = 1953718636;
LABEL_14:
      v2 = v8 | 0x6B65655700000000;
      break;
    case 4:
      v2 = 0x746E6F4D73696874;
      v7 = 0xE900000000000068;
      break;
    case 5:
      v2 = 0x6569666963657073;
      v7 = 0xEC00000079614464;
      break;
    case 6:
      v2 = 0x6565777465426E69;
      v7 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_10002DE10();
  }

  return v10 & 1;
}

uint64_t sub_10002A420(char a1, char a2)
{
  v2 = 7105633;
  if (a1)
  {
    sub_10002CA00();
    if (v3)
    {
      v5 = 7368801;
    }

    else
    {
      v5 = 0x65746973626577;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7105633;
  }

  if (a2)
  {
    sub_10002CA00();
    if (v7)
    {
      v2 = 7368801;
    }

    else
    {
      v2 = 0x65746973626577;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE700000000000000;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10002DE10();
  }

  return v11 & 1;
}

Swift::Int sub_10002A50C(uint64_t a1)
{
  v1 = a1;
  sub_10002DE40();
  TemporalOptions.rawValue.getter(v1);
  sub_10002DC80();

  return sub_10002DE50();
}

uint64_t sub_10002A570(uint64_t a1, char a2)
{
  sub_10002DC80();
}

uint64_t sub_10002A6A0(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_10002CA00();
  }

  sub_10002DC80();
}

Swift::Int sub_10002A718(uint64_t a1, char a2)
{
  sub_10002DE40();
  if (a2)
  {
    sub_10002CA00();
  }

  sub_10002DC80();

  return sub_10002DE50();
}

Swift::Int sub_10002A7A4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_10002DE40();
  TemporalOptions.rawValue.getter(v2);
  sub_10002DC80();

  return sub_10002DE50();
}

void sub_10002A804()
{
  sub_100026FFC();
  v32 = v0;
  v2 = v1;
  sub_10002D850();
  sub_100004534();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100002C9C();
  sub_10002D7E0();
  sub_100004534();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100004560();
  v10 = __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v31 - v14;
  v31 = v13;
  switch(v2)
  {
    case 0:
      sub_10002D830();
      sub_10002D7F0();
      v16 = *(v4 + 8);
      v17 = sub_10002C960();
      v16(v17);
      sub_10002AB58();
      sub_10002D830();
      sub_10002D7F0();
      v18 = sub_10002C960();
      v16(v18);
      goto LABEL_7;
    case 1:
      sub_10002C9F4();
      sub_10002BD68();
      sub_10002D830();
      sub_10002D7F0();
      v23 = *(v4 + 8);
      v24 = sub_10002C960();
      v23(v24);
      (*(v7 + 8))(v15, v31);
      sub_10002D830();
      sub_10002D7F0();
      v25 = sub_10002C960();
      v23(v25);
      v21 = v32;
      goto LABEL_8;
    case 2:
      sub_10002C9F4();
      sub_10002BF78();
      goto LABEL_6;
    case 3:
      sub_10002C9F4();
      sub_10002D7A0();
      goto LABEL_6;
    case 4:
      sub_10002C9F4();
      sub_10002C284();
LABEL_6:
      sub_10002AB58();
      sub_10002D830();
      sub_10002D7F0();
      v19 = sub_10002C960();
      v20(v19);
LABEL_7:
      (*(v7 + 8))(v12, v31);
      v21 = v32;
LABEL_8:
      sub_10002D6D0();
      v22 = sub_10002D6F0();
      sub_100001AC4(v21, 0, 1, v22);
      sub_100026FE4();
      break;
    default:
      sub_10002D6F0();
      sub_100026FE4();

      sub_100001AC4(v26, v27, v28, v29);
      break;
  }
}

void sub_10002AB58()
{
  sub_100026FFC();
  v3 = v2;
  v4 = sub_10002D840();
  sub_100004534();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100002C9C();
  sub_10002C9D0();
  sub_10002D850();
  sub_100004534();
  __chkstk_darwin(v8);
  sub_100002C9C();
  v11 = v10 - v9;
  v12 = sub_100001A7C(&qword_10003C570, &qword_10002EF70);
  sub_100002CD8(v12);
  sub_10000457C();
  v14 = __chkstk_darwin(v13);
  sub_10002C994(v14);
  v15 = sub_10002C9E0();
  v16(v15);
  sub_10002D820();
  (*(v6 + 8))(v0, v4);
  v17 = sub_10002C960();
  v18(v17);
  v19 = sub_10002D7E0();
  sub_10002C96C(v19);
  if (v20)
  {
    sub_10002BD00(v1);
    sub_10002C920();
    sub_10002C950();
    sub_10002C9B4(v22, v23, v24, 28, v25, v26);
    __break(1u);
  }

  else
  {
    sub_10000C404();
    (*(v21 + 32))(v3, v1, v11);
    sub_100026FE4();
  }
}

IntelligencePlatformDataActionsAppIntentsExtension::TemporalOptions_optional __swiftcall TemporalOptions.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v5._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_100039A58;
  v5._object = object;
  v3 = sub_10002DDF0(v2, v5);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t TemporalOptions.rawValue.getter(char a1)
{
  result = 0x7961646F74;
  switch(a1)
  {
    case 1:
      result = 0x6164726574736579;
      break;
    case 2:
      v3 = 1936287860;
      goto LABEL_6;
    case 3:
      v3 = 1953718636;
LABEL_6:
      result = v3 | 0x6B65655700000000;
      break;
    case 4:
      result = 0x746E6F4D73696874;
      break;
    case 5:
      result = 0x6569666963657073;
      break;
    case 6:
      result = 0x6565777465426E69;
      break;
    default:
      return result;
  }

  return result;
}

IntelligencePlatformDataActionsAppIntentsExtension::TemporalOptions_optional sub_10002AED4@<W0>(Swift::String *a1@<X0>, IntelligencePlatformDataActionsAppIntentsExtension::TemporalOptions_optional *a2@<X8>)
{
  result.value = TemporalOptions.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_10002AF04@<X0>(uint64_t *a1@<X8>)
{
  result = TemporalOptions.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static TemporalOptions.typeDisplayRepresentation.getter()
{
  v0 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  sub_100002CD8(v0);
  sub_10000457C();
  __chkstk_darwin(v1);
  v3 = &v6 - v2;
  v4 = sub_10002D740();
  __chkstk_darwin(v4);
  sub_100002C9C();
  sub_10002D730();
  sub_100001AC4(v3, 1, 1, v4);
  return sub_10002D610();
}

uint64_t sub_10002B0D0()
{
  v0 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - v1;
  v3 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  __chkstk_darwin(v3 - 8);
  v5 = v14 - v4;
  v6 = sub_10002D740();
  __chkstk_darwin(v6);
  sub_100001A7C(&qword_10003CBB0, &qword_100030558);
  v7 = *(sub_100001A7C(&qword_10003CBB8, &qword_100030560) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v14[1] = v10;
  *(v10 + 16) = xmmword_100030210;
  v11 = v10 + v9;
  *(v10 + v9) = 0;
  sub_10002D730();
  sub_100001AC4(v5, 1, 1, v6);
  v12 = sub_10002D4E0();
  sub_100001AC4(v2, 1, 1, v12);
  sub_10002D500();
  *(v11 + v8) = 1;
  sub_10002D730();
  sub_100001AC4(v5, 1, 1, v6);
  sub_100001AC4(v2, 1, 1, v12);
  sub_10002D500();
  *(v11 + 2 * v8) = 2;
  sub_10002D730();
  sub_100001AC4(v5, 1, 1, v6);
  sub_100001AC4(v2, 1, 1, v12);
  sub_10002D500();
  *(v11 + 3 * v8) = 3;
  sub_10002D730();
  sub_100001AC4(v5, 1, 1, v6);
  sub_100001AC4(v2, 1, 1, v12);
  sub_10002D500();
  *(v11 + 4 * v8) = 4;
  sub_10002D730();
  sub_100001AC4(v5, 1, 1, v6);
  sub_100001AC4(v2, 1, 1, v12);
  sub_10002D500();
  *(v11 + 5 * v8) = 5;
  sub_10002D730();
  sub_100001AC4(v5, 1, 1, v6);
  sub_100001AC4(v2, 1, 1, v12);
  sub_10002D500();
  *(v11 + 6 * v8) = 6;
  sub_10002D730();
  sub_100001AC4(v5, 1, 1, v6);
  sub_100001AC4(v2, 1, 1, v12);
  sub_10002D500();
  sub_10002D510();
  sub_10002BA2C();
  result = sub_10002DBB0();
  static TemporalOptions.caseDisplayRepresentations = result;
  return result;
}

uint64_t *TemporalOptions.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_10003C0F8 != -1)
  {
    sub_10002C930(&qword_10003C0F8);
  }

  return &static TemporalOptions.caseDisplayRepresentations;
}

uint64_t static TemporalOptions.caseDisplayRepresentations.getter()
{
  if (qword_10003C0F8 != -1)
  {
    sub_10002C930(&qword_10003C0F8);
  }
}

unint64_t sub_10002B670()
{
  result = qword_10003CB30;
  if (!qword_10003CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB30);
  }

  return result;
}

unint64_t sub_10002B6C8()
{
  result = qword_10003CB38;
  if (!qword_10003CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB38);
  }

  return result;
}

unint64_t sub_10002B720()
{
  result = qword_10003CB40;
  if (!qword_10003CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB40);
  }

  return result;
}

unint64_t sub_10002B778()
{
  result = qword_10003CB48;
  if (!qword_10003CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB48);
  }

  return result;
}

unint64_t sub_10002B7D0()
{
  result = qword_10003CB50;
  if (!qword_10003CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB50);
  }

  return result;
}

unint64_t sub_10002B828()
{
  result = qword_10003CB58;
  if (!qword_10003CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB58);
  }

  return result;
}

unint64_t sub_10002B884()
{
  result = qword_10003CB60;
  if (!qword_10003CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB60);
  }

  return result;
}

uint64_t sub_10002B92C(uint64_t a1)
{
  v2 = sub_10000BA10();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10002B97C()
{
  result = qword_10003CB68;
  if (!qword_10003CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB68);
  }

  return result;
}

unint64_t sub_10002B9D4()
{
  result = qword_10003CB70;
  if (!qword_10003CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB70);
  }

  return result;
}

unint64_t sub_10002BA2C()
{
  result = qword_10003CB78;
  if (!qword_10003CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB78);
  }

  return result;
}

uint64_t sub_10002BA80()
{
  TemporalOptions.caseDisplayRepresentations.unsafeMutableAddressor();
}

uint64_t sub_10002BAB0(uint64_t a1)
{
  v2 = sub_10002B884();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10002BB00()
{
  result = qword_10003CB80;
  if (!qword_10003CB80)
  {
    sub_100002A98(&qword_10003CB88, &qword_1000304D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TemporalOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
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

_BYTE *storeEnumTagSinglePayload for TemporalOptions(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
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
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x10002BCC8);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10002BD00(uint64_t a1)
{
  v2 = sub_100001A7C(&qword_10003C570, &qword_10002EF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10002BD68()
{
  sub_100026FFC();
  v3 = v2;
  v4 = sub_10002D840();
  sub_100004534();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100002C9C();
  sub_10002C9D0();
  sub_10002D850();
  sub_100004534();
  __chkstk_darwin(v8);
  sub_100002C9C();
  v11 = v10 - v9;
  v12 = sub_100001A7C(&qword_10003C570, &qword_10002EF70);
  sub_100002CD8(v12);
  sub_10000457C();
  v14 = __chkstk_darwin(v13);
  sub_10002C994(v14);
  v15 = sub_10002C9E0();
  v16(v15);
  sub_10002D820();
  (*(v6 + 8))(v0, v4);
  v17 = sub_10002C960();
  v18(v17);
  v19 = sub_10002D7E0();
  sub_10002C96C(v19);
  if (v20)
  {
    sub_10002BD00(v1);
    sub_10002C920();
    sub_10002C950();
    sub_10002C9B4(v22, v23, v24, 32, v25, v26);
    __break(1u);
  }

  else
  {
    sub_10000C404();
    (*(v21 + 32))(v3, v1, v11);
    sub_100026FE4();
  }
}

void sub_10002BF78()
{
  sub_100026FFC();
  v35 = v1;
  sub_10002D7E0();
  sub_100004534();
  v33 = v3;
  v34 = v2;
  __chkstk_darwin(v2);
  sub_100002C9C();
  sub_10002C9D0();
  v4 = sub_10002D840();
  v32 = v4;
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  sub_100002C9C();
  v8 = v7 - v6;
  v9 = sub_10002D850();
  sub_100004534();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100004560();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  v19 = sub_100001A7C(&qword_10003C570, &qword_10002EF70);
  sub_100002CD8(v19);
  sub_10000457C();
  __chkstk_darwin(v20);
  v22 = &v32 - v21;
  sub_10002D830();
  (*(v5 + 104))(v8, enum case for Calendar.Component.weekOfYear(_:), v4);
  sub_10002D830();
  sub_10002D7F0();
  v23 = *(v11 + 8);
  v23(v15, v9);
  sub_10002D820();
  v24 = v33;
  v25 = v0;
  v26 = v34;
  (*(v33 + 8))(v25, v34);
  (*(v5 + 8))(v8, v32);
  v23(v18, v9);
  if (sub_1000040D4(v22, 1, v26) == 1)
  {
    sub_10002BD00(v22);
    sub_10002C920();
    v32 = 58;
    sub_10002C950();
    sub_10002C9B4(v27, v28, v29, 37, v30, v31);
    __break(1u);
  }

  else
  {
    (*(v24 + 32))(v35, v22, v26);
    sub_100026FE4();
  }
}

void sub_10002C284()
{
  sub_100026FFC();
  v41 = v0;
  v44 = v2;
  sub_10002D700();
  sub_100004534();
  v42 = v4;
  v43 = v3;
  __chkstk_darwin(v3);
  sub_100002C9C();
  v39 = v6 - v5;
  v40 = sub_10002D850();
  sub_100004534();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100004560();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  v16 = sub_100001A7C(&qword_10003C570, &qword_10002EF70);
  sub_100002CD8(v16);
  sub_10000457C();
  v18 = __chkstk_darwin(v17);
  sub_10002C994(v18);
  sub_10002D830();
  sub_100001A7C(&qword_10003CB90, &qword_100030540);
  v19 = sub_10002D840();
  sub_100004534();
  v21 = v20;
  v23 = *(v22 + 72);
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10002F0D0;
  v26 = v25 + v24;
  v27 = *(v21 + 104);
  v27(v26, enum case for Calendar.Component.year(_:), v19);
  v27(v26 + v23, enum case for Calendar.Component.month(_:), v19);
  sub_10002C5B8(v25);
  v28 = v39;
  sub_10002D800();

  v29 = *(v8 + 8);
  v30 = v40;
  v29(v12, v40);
  sub_10002D810();
  (*(v42 + 8))(v28, v43);
  v29(v15, v30);
  v31 = sub_10002D7E0();
  sub_10002C96C(v31);
  if (v32)
  {
    sub_10002BD00(v1);
    sub_10002C920();
    v39 = 65;
    sub_10002C950();
    sub_10002C9B4(v34, v35, v36, 38, v37, v38);
    __break(1u);
  }

  else
  {
    sub_10000C404();
    (*(v33 + 32))(v44, v1, v15);
    sub_100026FE4();
  }
}

_BYTE *sub_10002C5B8(uint64_t a1)
{
  v2 = sub_10002D840();
  v32 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_100001A7C(&qword_10003CB98, &unk_100030548);
  result = sub_10002DD90();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_10002C8D4(&qword_10003CBA0, &protocol conformance descriptor for Calendar.Component);
    v14 = sub_10002DBD0();
    v15 = ~(-1 << v8[32]);
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *&v35[8 * v17];
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 6) + v16 * v12, v2);
      sub_10002C8D4(&qword_10003CBA8, &protocol conformance descriptor for Calendar.Component);
      v21 = sub_10002DC00();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *&v35[8 * v17] = v19 | v18;
    result = (*v28)(*(v8 + 6) + v16 * v12, v23, v2);
    v24 = *(v8 + 2);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 2) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10002C8D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10002D840();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002C930(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10002C994(uint64_t a1)
{

  return sub_10002D830();
}

uint64_t sub_10002C9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return _assertionFailure(_:_:file:line:flags:)(a1, a2, a3, v7, a5, a6, 72, 2);
}

uint64_t sub_10002CA0C(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return sub_10002A124();
}

uint64_t sub_10002CA20()
{
  v1 = [objc_opt_self() sharedCache];
  v0[21] = v1;
  v2 = sub_10002DC10();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10002CB84;
  v3 = swift_continuation_init();
  v0[17] = sub_100001A7C(&qword_10003CBC0, &qword_100030580);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10002D048;
  v0[13] = &unk_100039F20;
  v0[14] = v3;
  [v1 imageForBundleIdentifier:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002CB84()
{

  return _swift_task_switch(sub_10002CC64, 0, 0);
}

uint64_t sub_10002CC64()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  v3 = UIImagePNGRepresentation(v2);
  if (v3)
  {
    v4 = v3;
    v5 = sub_10002D790();
    v7 = v6;
  }

  else
  {

    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = *(v0 + 8);

  return v8(v5, v7);
}

uint64_t sub_10002CD18(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_10002A124();
}

uint64_t sub_10002CD2C()
{
  v1 = sub_10002DC10();
  if ([v1 length])
  {
    v2 = objc_opt_new();
    [v2 setScheme:@"https"];
    [v2 setHost:v1];
    v3 = [v2 URL];
    v4 = [v3 _lp_highLevelDomain];
    v5 = [v2 host];
    v6 = [v2 URL];
    v7 = v4;
    v8 = v5;
    v9 = v6;
    if ([v7 length])
    {
      v10 = [v7 substringToIndex:1];
      v11 = [v10 uppercaseString];
    }

    else
    {
      v13 = [v8 substringToIndex:1];
      v11 = [v13 uppercaseString];

      v10 = &_os_log_default;
      v14 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002D0E0(v0 + 16, v9, v8);
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to extract high level domain for URL: %@. Creating initial for host instead: %@", (v0 + 16), 0x16u);
      }
    }
  }

  else
  {
    v9 = &_os_log_default;
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D0CC(v0 + 16, v1);
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Web domain name must have at least one character for monogram: %@", (v0 + 16), 0xCu);
    }

    v11 = 0;
  }

  v15 = v11;
  if (v15)
  {
    v16 = [objc_opt_self() sharedCache];
    v17 = [objc_opt_self() currentTraitCollection];
    v18 = [v17 userInterfaceStyle];

    v19 = [v16 monogramImageForInitial:v15 useDarkColors:v18 == 2];
    v20 = UIImagePNGRepresentation(v19);
    if (v20)
    {
      v21 = v20;
      v22 = sub_10002D790();
      v24 = v23;

      goto LABEL_15;
    }
  }

  v22 = 0;
  v24 = 0xF000000000000000;
LABEL_15:
  v25 = *(v0 + 8);

  return v25(v22, v24);
}

uint64_t sub_10002D048(uint64_t a1, void *a2)
{
  v3 = *sub_10001B498((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_10002D0AC(v3, v4);
}

double sub_10002D0CC(uint64_t a1, uint64_t a2)
{
  *&result = 138412290;
  *a1 = 138412290;
  *(a1 + 4) = a2;
  return result;
}

double sub_10002D0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 138412546;
  *a1 = 138412546;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  return result;
}