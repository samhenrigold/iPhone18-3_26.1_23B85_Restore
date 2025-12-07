uint64_t sub_100069A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100069B18, 0, 0);
}

uint64_t sub_100069B18()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = sub_10008742C();
  v8 = *(v0 + 24);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = v8;
  *(v5 + 48) = v4;
  *(v5 + 56) = v2;
  swift_unknownObjectRetain();
  sub_100016950(0, 0, v1, &unk_10008CFA0, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100069C58(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *v2;
  v4 = sub_1000861EC();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_100069D44, v2, 0);
}

uint64_t sub_100069D44()
{
  sub_1000877DC(18);

  *(v0 + 112) = sub_10008609C();
  sub_10006E304(&qword_1000AE420, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v4._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v4);

  sub_1000163E0(0xD000000000000010, 0x800000010008FF00);

  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_100069E94;

  return sub_10006C43C();
}

uint64_t sub_100069E94()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_100069FA4, v1, 0);
}

uint64_t sub_100069FA4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  v8 = *(sub_100001EEC(&qword_1000AFF70, &qword_10008D140) + 48);
  (*(*(v2 - 8) + 16))(v1, v7, v2);
  *(v1 + v8) = v5;
  (*(v4 + 104))(v1, enum case for CarrySettings.MessageChannel.Role.noDaemonClient(_:), v3);
  v9 = objc_allocWithZone(sub_10008620C());

  v10 = sub_1000861FC();
  v0[16] = v10;
  v0[17] = sub_100001EEC(&qword_1000AFF08, &unk_10008D0B8);
  v0[5] = v10;
  v11 = v10;
  v12 = sub_10008628C();
  v0[18] = v12;
  *(v6 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client) = v12;

  sub_1000163E0(0xD00000000000001CLL, 0x800000010008FF20);
  v13 = swift_task_alloc();
  v0[19] = v13;
  *v13 = v0;
  v13[1] = sub_10006A16C;

  return CarrySettings.NetworkingClient.prewarm()();
}

uint64_t sub_10006A16C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_10006A4CC;
    v5 = 0;
  }

  else
  {
    sub_100006454(&qword_1000AFF10, &qword_1000AFF08, &unk_10008D0B8, &protocol conformance descriptor for CarrySettings.NetworkingClient<A>);
    v6 = sub_1000873DC();
    v8 = v7;
    v4 = sub_10006A2D4;
    v3 = v6;
    v5 = v8;
  }

  return _swift_task_switch(v4, v3, v5);
}

uint64_t sub_10006A2D4()
{
  v1 = *(v0 + 72);
  *(v0 + 168) = sub_10008627C();

  return _swift_task_switch(sub_10006A344, v1, 0);
}

uint64_t sub_10006A344()
{
  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[10];
  v0[6] = v0[21];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  sub_100001EEC(&qword_1000AFF78, &qword_10008D148);
  sub_100006454(&qword_1000AFF80, &qword_1000AFF78, &qword_10008D148, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10008682C();

  swift_beginAccess();
  sub_10008674C();
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10006A4CC()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006A544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_10008623C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_10008622C();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_10006A664, v3, 0);
}

uint64_t sub_10006A664()
{
  if (*(v0[5] + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_cachedACToken + 8))
  {
    sub_1000863BC();
    swift_allocObject();

    v0[12] = sub_1000863AC();
    v6 = (&async function pointer to dispatch thunk of CarrySettings.LivabilityDataDownloader.getProfileData(forAudience:) + async function pointer to dispatch thunk of CarrySettings.LivabilityDataDownloader.getProfileData(forAudience:));
    v1 = swift_task_alloc();
    v0[13] = v1;
    *v1 = v0;
    v1[1] = sub_10006A7E0;
    v2 = v0[2];

    return v6(v2);
  }

  else
  {
    sub_10000EEA4();
    swift_allocError();
    *v4 = 5;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10006A7E0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[14] = a1;
  v5[15] = a2;
  v5[16] = v2;

  v6 = v4[5];
  if (v2)
  {
    v7 = sub_10006ACDC;
  }

  else
  {
    v7 = sub_10006A918;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10006A918()
{
  v1 = v0[5];
  sub_1000163E0(0xD00000000000001BLL, 0x800000010008FD90);
  v2 = *(v1 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client);
  v0[17] = v2;
  if (v2)
  {
    (*(v0[7] + 16))(v0[8], v0[3], v0[6]);

    sub_1000862DC();
    sub_10008621C();
    v3 = swift_task_alloc();
    v0[18] = v3;
    *v3 = v0;
    v3[1] = sub_10006AAA4;
    v5 = v0[14];
    v4 = v0[15];
    v6 = v0[11];
    v7 = v0[4];

    return CarrySettings.NetworkingClient.installProfile(withData:withContext:on:)(v5, v4, v6, v7);
  }

  else
  {
    sub_100074900(v0[14], v0[15]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10006AAA4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_10006AD54;
  }

  else
  {
    v7 = sub_10006AC50;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10006AC50()
{
  sub_100074900(v0[14], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10006ACDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006AD54()
{
  sub_100074900(v0[14], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10006ADD8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_10008647C();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v5 = sub_100001EEC(&qword_1000AFE58, &qword_10008CF70);
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  sub_1000873FC();
  v2[22] = sub_1000873EC();
  v7 = sub_1000873DC();
  v2[23] = v7;
  v2[24] = v6;

  return _swift_task_switch(sub_10006AFC0, v7, v6);
}

uint64_t sub_10006AFC0()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  *(v0 + 200) = v2;
  if (v2)
  {
    v3 = *(v0 + 152);
    v4 = *(v0 + 112);
    v34 = *(v0 + 104);
    v5 = *(v0 + 88);
    sub_10006F668(0, v2, 0);
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v35 = v3;
    v33 = (v5 + 16);
    v32 = *(v4 + 72);
    do
    {
      v7 = *(v0 + 136);
      v8 = *(v0 + 96);
      v9 = *(v0 + 80);
      sub_10000E4A4(v6, v7, &qword_1000AE5D0, &qword_100089EB0);
      (*v33)(v8, v7, v9);
      v10 = *(v7 + *(v34 + 36));
      *(v0 + 32) = v10;
      sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
      sub_10006CBAC();
      v11 = v10;
      sub_1000862AC();
      sub_10000649C(v7, &qword_1000AE5D0, &qword_100089EB0);
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_10006F668((v12 > 1), v13 + 1, 1);
      }

      v14 = *(v0 + 168);
      v15 = *(v0 + 144);
      _swiftEmptyArrayStorage[2] = v13 + 1;
      (*(v35 + 32))(_swiftEmptyArrayStorage + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v13, v14, v15);
      v6 += v32;
      --v2;
    }

    while (v2);
  }

  *(v0 + 208) = _swiftEmptyArrayStorage;
  v16 = _swiftEmptyArrayStorage[2];
  *(v0 + 216) = v16;
  if (v16)
  {
    v17 = *(v0 + 152);
    v18 = *(v0 + 72);
    v19 = type metadata accessor for CarrySettingsNetworkingSession(0);
    v22 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client;
    *(v0 + 224) = v19;
    *(v0 + 232) = v22;
    v23 = *(v17 + 80);
    *(v0 + 320) = v23;
    *(v0 + 240) = 0;
    *(v0 + 248) = 0;
    if (!_swiftEmptyArrayStorage[2])
    {
      __break(1u);
      return _swift_task_switch(v19, v20, v21);
    }

    v24 = v19;
    (*(v17 + 16))(*(v0 + 160), _swiftEmptyArrayStorage + ((v23 + 32) & ~v23), *(v0 + 144));
    *(v0 + 16) = 0x676E697461647055;
    *(v0 + 24) = 0xE900000000000020;
    sub_100006454(&qword_1000AFE60, &qword_1000AFE58, &qword_10008CF70, &protocol conformance descriptor for CarrySettings.MessageableDevice<A>);
    v37._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v37);

    *(v0 + 40) = v24;
    sub_100001EEC(&qword_1000AE508, &qword_100089C50);
    sub_10008716C();
    v25 = objc_allocWithZone(CULogHandle);
    v26 = sub_10008714C();
    v27 = sub_10008714C();

    v28 = [v25 initWithSubsystem:v26 category:v27];

    v29 = sub_10008714C();

    [v28 ulog:40 message:v29];

    v30 = sub_10006B3D0;
  }

  else
  {
    v18 = *(v0 + 72);

    *(v0 + 280) = 0;
    *(v0 + 288) = v18;
    v30 = sub_10006BB14;
  }

  v19 = v30;
  v20 = v18;
  v21 = 0;

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_10006B3D0()
{
  v0[32] = *(v0[9] + v0[29]);
  v1 = v0[23];
  v2 = v0[24];

  return _swift_task_switch(sub_10006B454, v1, v2);
}

uint64_t sub_10006B454()
{
  if (*(v0 + 256))
  {
    v1 = swift_task_alloc();
    *(v0 + 264) = v1;
    *v1 = v0;
    v1[1] = sub_10006B750;
    v2 = *(v0 + 160);

    return CarrySettings.NetworkingClient.updateModel(for:)(v2);
  }

  v3 = *(v0 + 240);
  v4 = *(v0 + 216);
  v5 = *(v0 + 248) + 1;
  v2 = (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  if (v5 == v4)
  {

    v6 = *(v0 + 72);
    *(v0 + 280) = v3;
    *(v0 + 288) = v6;
    v7 = sub_10006BB14;
  }

  else
  {
    v8 = *(v0 + 248) + 1;
    *(v0 + 240) = v3;
    *(v0 + 248) = v8;
    v9 = *(v0 + 208);
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
      return CarrySettings.NetworkingClient.updateModel(for:)(v2);
    }

    v10 = *(v0 + 224);
    v11 = *(v0 + 72);
    (*(*(v0 + 152) + 16))(*(v0 + 160), v9 + ((*(v0 + 320) + 32) & ~*(v0 + 320)) + *(*(v0 + 152) + 72) * v8, *(v0 + 144));
    *(v0 + 16) = 0x676E697461647055;
    *(v0 + 24) = 0xE900000000000020;
    sub_100006454(&qword_1000AFE60, &qword_1000AFE58, &qword_10008CF70, &protocol conformance descriptor for CarrySettings.MessageableDevice<A>);
    v19._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v19);

    *(v0 + 40) = v10;
    sub_100001EEC(&qword_1000AE508, &qword_100089C50);
    sub_10008716C();
    v12 = objc_allocWithZone(CULogHandle);
    v13 = sub_10008714C();
    v14 = sub_10008714C();

    v15 = [v12 initWithSubsystem:v13 category:v14];

    v16 = sub_10008714C();

    [v15 ulog:40 message:v16];

    v7 = sub_10006B3D0;
    v6 = v11;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10006B750()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {

    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_10006C044;
  }

  else
  {

    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_10006B898;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10006B898()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 216);
  v3 = *(v0 + 248) + 1;
  v4 = (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  if (v3 == v2)
  {

    v5 = *(v0 + 72);
    *(v0 + 280) = v1;
    *(v0 + 288) = v5;
    v4 = sub_10006BB14;
  }

  else
  {
    v7 = *(v0 + 248) + 1;
    *(v0 + 240) = v1;
    *(v0 + 248) = v7;
    v8 = *(v0 + 208);
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
      return _swift_task_switch(v4, v5, v6);
    }

    v9 = *(v0 + 224);
    v10 = *(v0 + 72);
    (*(*(v0 + 152) + 16))(*(v0 + 160), v8 + ((*(v0 + 320) + 32) & ~*(v0 + 320)) + *(*(v0 + 152) + 72) * v7, *(v0 + 144));
    *(v0 + 16) = 0x676E697461647055;
    *(v0 + 24) = 0xE900000000000020;
    sub_100006454(&qword_1000AFE60, &qword_1000AFE58, &qword_10008CF70, &protocol conformance descriptor for CarrySettings.MessageableDevice<A>);
    v18._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v18);

    *(v0 + 40) = v9;
    sub_100001EEC(&qword_1000AE508, &qword_100089C50);
    sub_10008716C();
    v11 = objc_allocWithZone(CULogHandle);
    v12 = sub_10008714C();
    v13 = sub_10008714C();

    v14 = [v11 initWithSubsystem:v12 category:v13];

    v15 = sub_10008714C();

    [v14 ulog:40 message:v15];

    v4 = sub_10006B3D0;
    v5 = v10;
  }

  v6 = 0;

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10006BB14()
{
  v0[37] = *(v0[9] + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devices);
  v1 = v0[23];
  v2 = v0[24];

  return _swift_task_switch(sub_10006BB9C, v1, v2);
}

uint64_t sub_10006BB9C()
{
  v1 = v0[25];
  v2 = sub_100074618(v0[37]);

  v29 = v2;
  if (v1)
  {
    v6 = v0[14];
    v30 = v0[13];
    v7 = v0[8];
    sub_10008787C();
    v8 = 0;
    v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v10 = *(v6 + 72);
    do
    {
      v11 = v0[25];
      v12 = v0[17];
      ++v8;
      sub_10000E4A4(v9, v12, &qword_1000AE5D0, &qword_100089EB0);
      v13 = *(v12 + *(v30 + 36));
      sub_10000649C(v12, &qword_1000AE5D0, &qword_100089EB0);
      sub_10008784C();
      sub_10008788C();
      sub_10008789C();
      v3 = sub_10008785C();
      v9 += v10;
    }

    while (v8 != v11);
    v2 = v29;
  }

  v28 = v2[2];
  if (v28)
  {
    v14 = 0;
    v27 = v0[14];
    v26 = v0[13];
    while (v14 < v2[2])
    {
      v15 = v0[16];
      v16 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v17 = *(v27 + 72);
      sub_10000E4A4(v2 + v16 + v17 * v14, v15, &qword_1000AE5D0, &qword_100089EB0);
      v0[6] = *(v15 + *(v26 + 36));
      v18 = swift_task_alloc();
      *(v18 + 16) = v0 + 6;
      v19 = sub_10006E34C(sub_100074898, v18, _swiftEmptyArrayStorage);

      v20 = v0[16];
      if (v19)
      {
        v3 = sub_10000649C(v20, &qword_1000AE5D0, &qword_100089EB0);
      }

      else
      {
        sub_100036EF8(v20, v0[15], &qword_1000AE5D0, &qword_100089EB0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10006F628(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v22 = _swiftEmptyArrayStorage[2];
        v21 = _swiftEmptyArrayStorage[3];
        if (v22 >= v21 >> 1)
        {
          sub_10006F628((v21 > 1), v22 + 1, 1);
        }

        v23 = v0[15];
        _swiftEmptyArrayStorage[2] = v22 + 1;
        v3 = sub_100036EF8(v23, _swiftEmptyArrayStorage + v16 + v22 * v17, &qword_1000AE5D0, &qword_100089EB0);
      }

      ++v14;
      v2 = v29;
      if (v28 == v14)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    sub_10006F4D0(v24);
    v0[38] = _swiftEmptyArrayStorage;
    v4 = v0[36];
    v3 = sub_10006BEE0;
    v5 = 0;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10006BEE0()
{
  v0[39] = *(v0[9] + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devicesChangedSubject);
  v1 = v0[23];
  v2 = v0[24];

  return _swift_task_switch(sub_10006BF68, v1, v2);
}

uint64_t sub_10006BF68()
{
  v1 = v0[38];

  v0[7] = v1;
  sub_10008677C();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10006C044()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006C118(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    sub_10000649C(a1, &qword_1000AEA68, &unk_10008CFB0);
    sub_1000701A0(a2, v7);
    sub_100036E90(a2);
    return sub_10000649C(v7, &qword_1000AEA68, &unk_10008CFB0);
  }

  else
  {
    sub_100036EF8(a1, v7, &qword_1000AEA60, &qword_10008C930);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_100072F60(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_100036E90(a2);
    *v2 = v6;
  }

  return result;
}

void sub_10006C1E4(uint64_t a1, void *a2)
{
  v5 = sub_100001EEC(&qword_1000AEDC8, &qword_10008C910);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10000649C(a1, &qword_1000AEDC8, &qword_10008C910);
    sub_100070268(a2, v7);

    sub_10000649C(v7, &qword_1000AEDC8, &qword_10008C910);
  }

  else
  {
    sub_100036EF8(a1, v10, &qword_1000AEA70, &unk_10008D060);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_10007308C(v10, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v14;
  }
}

void (*sub_10006C3A0(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;
      swift_unknownObjectRetain();
      v5(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10006C45C()
{
  v1 = v0[5];
  sub_1000163E0(0x6164696C61766E69, 0xEC00000029286574);
  v2 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_tasks;
  swift_beginAccess();
  *(v1 + v2) = &_swiftEmptySetSingleton;

  v3 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_channel;
  v0[6] = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_channel;
  v4 = *(v1 + v3);
  v0[7] = v4;
  if (v4)
  {
    v4;
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_10006C66C;

    return CarrySettings.MessageChannel.invalidate()();
  }

  else
  {
    v6 = v0[5];
    *(v6 + v3) = 0;
    v7 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client;
    v0[9] = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client;
    v8 = *(v6 + v7);
    v0[10] = v8;
    if (v8)
    {

      sub_100001EEC(&qword_1000AFF08, &unk_10008D0B8);
      sub_100006454(&qword_1000AFF10, &qword_1000AFF08, &unk_10008D0B8, &protocol conformance descriptor for CarrySettings.NetworkingClient<A>);
      v10 = sub_1000873DC();

      return _swift_task_switch(sub_10006C8C4, v10, v9);
    }

    else
    {
      *(v0[5] + v7) = 0;
      v11 = v0[1];

      return v11();
    }
  }
}

uint64_t sub_10006C66C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);

  return _swift_task_switch(sub_10006C794, v2, 0);
}

uint64_t sub_10006C794()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = *(v2 + v1);
  *(v2 + v1) = 0;

  v4 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client;
  v0[9] = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client;
  v5 = *(v2 + v4);
  v0[10] = v5;
  if (v5)
  {

    sub_100001EEC(&qword_1000AFF08, &unk_10008D0B8);
    sub_100006454(&qword_1000AFF10, &qword_1000AFF08, &unk_10008D0B8, &protocol conformance descriptor for CarrySettings.NetworkingClient<A>);
    v7 = sub_1000873DC();

    return _swift_task_switch(sub_10006C8C4, v7, v6);
  }

  else
  {
    *(v0[5] + v4) = 0;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10006C8C4()
{
  v1 = *(v0 + 40);
  sub_10008624C();

  return _swift_task_switch(sub_10006C938, v1, 0);
}

uint64_t sub_10006C938()
{
  *(v0[5] + v0[9]) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_10006C9A4()
{
  sub_10000649C(v0 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_cachedAudiences, &qword_1000AE3E0, &unk_100089E60);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10006CA58()
{
  sub_10006C9A4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for CarrySettingsNetworkingSession(uint64_t a1)
{
  result = qword_1000AFC40;
  if (!qword_1000AFC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006CAD8(uint64_t a1)
{
  sub_100015650(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_10006CBAC()
{
  result = qword_1000ADC28;
  if (!qword_1000ADC28)
  {
    sub_100023B40(255, &qword_1000ADC30, COClusterMember_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADC28);
  }

  return result;
}

uint64_t sub_10006CC14()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_cachedAudiences;
  v3 = sub_10008642C();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_cachedACToken);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_channel) = 0;
  *(v1 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_client) = 0;
  *(v1 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_delegates) = &_swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devices) = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devicesChangedSubject;
  sub_100001EEC(&qword_1000ADCB0, &qword_100088838);
  swift_allocObject();
  *(v1 + v5) = sub_10008678C();
  *(v1 + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_tasks) = &_swiftEmptySetSingleton;
  return v1;
}

uint64_t sub_10006CD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return _swift_task_switch(sub_10006CD50, 0, 0);
}

uint64_t sub_10006CD50()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1000606F8;
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);

    return sub_10006CE50(v5, v3, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10006CE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a2;
  v4[11] = v3;
  v4[9] = a1;
  v4[12] = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[13] = AssociatedTypeWitness;
  v4[14] = *(AssociatedTypeWitness - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_10006CF34, v3, 0);
}

uint64_t sub_10006CF34()
{
  v9 = v0;
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 72);
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_1000877DC(18);
  v11._object = 0x800000010008F460;
  v11._countAndFlagsBits = 0xD000000000000010;
  sub_1000871BC(v11);
  *(v0 + 56) = v4;
  sub_1000879EC();
  sub_1000163E0(v7, v8);

  *(v0 + 64) = v4;
  sub_1000877EC();
  swift_getAssociatedConformanceWitness();
  sub_10008799C();
  (*(v2 + 8))(v1, v3);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v0 + 48) = 0;
  swift_beginAccess();
  sub_10006C118(v0 + 40, &v7);
  swift_endAccess();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10006D0DC(__int128 *a1, uint64_t a2)
{
  v4 = sub_10008642C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_10008742C();
  v11 = *(*(v10 - 8) + 56);
  v15 = *a1;
  v11(v9, 1, 1, v10);
  (*(v5 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v12 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v15;
  (*(v5 + 32))(v13 + v12, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  swift_unknownObjectRetain();
  sub_100016C64(0, 0, v9, &unk_10008D0F8, v13);
}

uint64_t sub_10006D2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v12 = (*(a5 + 32) + **(a5 + 32));
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_100002740;

  return v12(a6, ObjectType, a5);
}

uint64_t sub_10006D410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return _swift_task_switch(sub_10006D438, 0, 0);
}

uint64_t sub_10006D438()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_100060C48;
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);

    return sub_10006D538(v5, v3, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10006D538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a2;
  v4[16] = v3;
  v4[14] = a1;
  v4[17] = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[18] = AssociatedTypeWitness;
  v4[19] = *(AssociatedTypeWitness - 8);
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10006D61C, v3, 0);
}

uint64_t sub_10006D61C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[14];
  sub_1000877DC(20);
  v8._object = 0x800000010008F420;
  v8._countAndFlagsBits = 0xD000000000000012;
  sub_1000871BC(v8);
  v0[12] = v4;
  sub_1000879EC();
  sub_1000163E0(0, 0xE000000000000000);

  v0[13] = v4;
  sub_1000877EC();
  swift_getAssociatedConformanceWitness();
  sub_10008799C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  sub_1000701A0((v0 + 2), (v0 + 10));
  sub_100036E90((v0 + 2));
  sub_10000649C((v0 + 10), &qword_1000AEA68, &unk_10008CFB0);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10006D7C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = *a1;
  v9 = sub_10008742C();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_1000873FC();

  v11 = sub_1000873EC();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v8;
  v12[5] = v10;
  v12[6] = a3;

  sub_100016C64(0, 0, v7, &unk_10008D158, v12);
}

uint64_t sub_10006D93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  sub_1000873FC();
  v6[12] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[13] = v8;
  v6[14] = v7;

  return _swift_task_switch(sub_10006D9D8, v8, v7);
}

uint64_t sub_10006D9D8()
{
  v1 = v0[11];
  v0[15] = sub_100074618(v0[9]);
  sub_1000877DC(23);

  sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
  v9._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v9);

  sub_100059920(0xD000000000000015, 0x800000010008FF40, v1, &off_1000A98F0);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_10006DB98;
LABEL_5:

    return _swift_task_switch(v4, v3, 0);
  }

  swift_beginAccess();
  v5 = swift_weakLoadStrong();
  v0[17] = v5;
  if (v5)
  {
    v3 = v5;
    v4 = sub_10006DCEC;
    goto LABEL_5;
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_10006DB98()
{
  *(v0[16] + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devices) = v0[9];

  v1 = v0[13];
  v2 = v0[14];

  return _swift_task_switch(sub_10006DC20, v1, v2);
}

uint64_t sub_10006DC20()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10006DCEC, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_10006DCEC()
{
  v0[18] = *(v0[17] + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devicesChangedSubject);

  v1 = v0[13];
  v2 = v0[14];

  return _swift_task_switch(sub_10006DD68, v1, v2);
}

uint64_t sub_10006DD68()
{
  v1 = v0[15];

  v0[8] = v1;
  sub_10008677C();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10006DE0C()
{
  v0[2] = *(v0[3] + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devicesChangedSubject);
  sub_100001EEC(&qword_1000ADCB0, &qword_100088838);
  sub_100006454(qword_1000ADCB8, &qword_1000ADCB0, &qword_100088838, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v1 = sub_10008680C();
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10006DED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000324C;

  return sub_100067E20(a1, a2, a3);
}

uint64_t sub_10006DFA4()
{

  v2 = sub_100074618(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10006E02C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002740;

  return sub_100068000(a1);
}

uint64_t sub_10006E0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000324C;

  return sub_100069A78(a1, a2, a3);
}

uint64_t sub_10006E16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000324C;

  return sub_10006A544(a1, a2, a3);
}

uint64_t sub_10006E218(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000324C;

  return sub_10006ADD8(a1);
}

uint64_t sub_10006E2AC(uint64_t a1)
{
  result = sub_10006E304(&qword_1000AFE50, type metadata accessor for CarrySettingsNetworkingSession, &unk_10008CF34);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10006E304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006E34C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_10008781C();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_10008793C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10006E474(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = sub_10008781C();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_10008793C();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

unint64_t sub_10006E5B0(uint64_t a1, uint64_t a2)
{
  sub_100087ADC();
  sub_1000871AC();
  v4 = sub_100087AFC();

  return sub_10006E78C(a1, a2, v4);
}

unint64_t sub_10006E628(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10008777C(*(v2 + 40));

  return sub_10006E844(a1, v4);
}

unint64_t sub_10006E66C(uint64_t a1)
{
  sub_10008609C();
  sub_10006E304(&qword_1000AE428, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = sub_10008711C();

  return sub_10006E90C(a1, v2);
}

unint64_t sub_10006E704(uint64_t a1)
{
  v2 = sub_100087ACC();

  return sub_10006EACC(a1, v2);
}

unint64_t sub_10006E748(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10008763C(*(v2 + 40));

  return sub_10006EB38(a1, v4);
}

unint64_t sub_10006E78C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100087A1C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10006E844(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100074A64(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10008778C();
      sub_100036E90(v8);
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

unint64_t sub_10006E90C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_10008609C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10006E304(&qword_1000AE9F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = sub_10008713C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10006EACC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10006EB38(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10008764C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_10006EC0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EEC(&qword_1000AFE98, &qword_10008D018);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10006ED18(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EEC(&qword_1000AFEF8, &qword_10008D860);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_10006EE1C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
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

  sub_100001EEC(&qword_1000AE628, &qword_10008A0C0);
  v10 = *(sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10006F00C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EEC(&qword_1000AE9B8, &unk_10008D020);
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

void *sub_10006F124(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100001EEC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001EEC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10006F258(uint64_t a1, uint64_t a2)
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

  sub_100001EEC(&qword_1000AFE98, &qword_10008D018);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_10006F348(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
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

  sub_100001EEC(a3, a4);
  v10 = *(sub_100001EEC(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
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

void *sub_10006F448(uint64_t a1, uint64_t a2)
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

  sub_100001EEC(qword_1000AE698, &qword_10008A118);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_10006F4D0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10006EE1C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10006F608(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006F894(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10006F628(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006FFB8(a1, a2, a3, *v3, &qword_1000AE628, &qword_10008A0C0, &qword_1000AE5D0, &qword_100089EB0);
  *v3 = result;
  return result;
}

void *sub_10006F668(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006FFB8(a1, a2, a3, *v3, &qword_1000AFE68, &qword_10008CF78, &qword_1000AFE58, &qword_10008CF70);
  *v3 = result;
  return result;
}

char *sub_10006F6A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006F9A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10006F6C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006FB98(a1, a2, a3, *v3, &qword_1000AFF30, &qword_10008D0D8, &qword_1000AFF38, &qword_10008D0E0);
  *v3 = result;
  return result;
}

char *sub_10006F708(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006FA94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10006F728(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006FDDC(a1, a2, a3, *v3, &qword_1000AFF50, &qword_10008D110, type metadata accessor for ProfileListViewModel);
  *v3 = result;
  return result;
}

void *sub_10006F76C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006FB98(a1, a2, a3, *v3, &qword_1000AFF58, &qword_10008D118, &qword_1000AFF60, &unk_10008D120);
  *v3 = result;
  return result;
}

char *sub_10006F7AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006FCCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10006F7CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006FDDC(a1, a2, a3, *v3, &qword_1000AFEF0, &unk_10008D0A0, &type metadata accessor for CarrySettings.LivabilityTrainAudiences);
  *v3 = result;
  return result;
}

void *sub_10006F810(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006FDDC(a1, a2, a3, *v3, &qword_1000AFF00, &qword_10008D0B0, &type metadata accessor for CarrySettings.LivabilityAudience);
  *v3 = result;
  return result;
}

void *sub_10006F854(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006FFB8(a1, a2, a3, *v3, &qword_1000AFEC8, &qword_10008D058, &qword_1000AEA70, &unk_10008D060);
  *v3 = result;
  return result;
}

char *sub_10006F894(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EEC(&qword_1000AFE98, &qword_10008D018);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10006F9A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EEC(&qword_1000AE9B8, &unk_10008D020);
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

char *sub_10006FA94(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EEC(&qword_1000AFF28, &qword_10008D0D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10006FB98(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100001EEC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001EEC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_10006FCCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EEC(&qword_1000AFEA8, &qword_10008D038);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10006FDDC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001EEC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10006FFB8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001EEC(a5, a6);
  v16 = *(sub_100001EEC(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100001EEC(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1000701A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = sub_10006E628(a1);
  v7 = v6;
  if (v6)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10007376C();
      v10 = v11;
    }

    sub_100036E90(*(v10 + 48) + 40 * v8);
    sub_100036EF8(*(v10 + 56) + 8 * v8, a2, &qword_1000AEA60, &qword_10008C930);
    result = sub_100072028(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v7 & 1) == 0;
  return result;
}

uint64_t sub_100070268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10006E748(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100073F84();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
    v18 = *(v11 - 8);
    sub_100036EF8(v10 + *(v18 + 72) * v7, a2, &qword_1000AEA70, &unk_10008D060);
    sub_100072890(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1000703EC(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_10006E748(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_100072C5C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_100074454();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_10008790C();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1000878FC();
  v8 = sub_100070538(v4, v7);

  v9 = sub_10006E748(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_100072C5C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_100070538(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100001EEC(&qword_1000AFF18, &qword_10008D0C8);
    v2 = sub_10008796C();
    v19 = v2;
    sub_1000878EC();
    v3 = sub_10008791C();
    if (v3)
    {
      v4 = v3;
      sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100023B40(0, &qword_1000AFF20, COMessageSession_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100071DC0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_10008763C(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_10008791C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_100070784(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001EEC(&qword_1000AFF90, &qword_10008D168);
  v35 = v4;
  result = sub_10008795C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_100087ADC();
      sub_1000871AC();
      result = sub_100087AFC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100070A28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001EEC(&qword_1000AFE70, &qword_10008CFC0);
  result = sub_10008795C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_100036EF8(*(v5 + 56) + 8 * v22, v35, &qword_1000AEA60, &qword_10008C930);
      }

      else
      {
        sub_100074A64(v23, &v36);
        sub_10000E4A4(*(v5 + 56) + 8 * v22, v35, &qword_1000AEA60, &qword_10008C930);
      }

      result = sub_10008777C(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_100036EF8(v35, *(v7 + 56) + 8 * v15, &qword_1000AEA60, &qword_10008C930);
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v4 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100070D5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v54 = a3;
  v55 = a4;
  v11 = sub_100001EEC(a3, a4);
  v48 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v53 = &v44 - v12;
  v13 = sub_10008609C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v52 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  sub_100001EEC(a5, a6);
  v49 = v10;
  result = sub_10008795C();
  v18 = result;
  if (*(v16 + 16))
  {
    v44 = v6;
    v19 = 0;
    v20 = (v16 + 64);
    v21 = 1 << *(v16 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v16 + 64);
    v24 = (v21 + 63) >> 6;
    v45 = (v14 + 16);
    v46 = v14;
    v50 = (v14 + 32);
    v25 = result + 64;
    v47 = v16;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v19 << 6);
      v31 = *(v16 + 48);
      v51 = *(v14 + 72);
      v32 = v31 + v51 * v30;
      if (v49)
      {
        (*v50)(v52, v32, v13);
        v33 = *(v16 + 56);
        v34 = *(v48 + 72);
        sub_100036EF8(v33 + v34 * v30, v53, v54, v55);
      }

      else
      {
        (*v45)(v52, v32, v13);
        v35 = *(v16 + 56);
        v34 = *(v48 + 72);
        sub_10000E4A4(v35 + v34 * v30, v53, v54, v55);
      }

      sub_10006E304(&qword_1000AE428, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_10008711C();
      v36 = -1 << *(v18 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v25 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v50)((*(v18 + 48) + v51 * v26), v52, v13);
      result = sub_100036EF8(v53, *(v18 + 56) + v34 * v26, v54, v55);
      ++*(v18 + 16);
      v14 = v46;
      v16 = v47;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v9 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v16 + 32);
    v9 = v44;
    if (v43 >= 64)
    {
      bzero(v20, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v43;
    }

    *(v16 + 16) = 0;
  }

LABEL_34:
  *v9 = v18;
  return result;
}

uint64_t sub_1000711D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001EEC(&qword_1000AFF88, &qword_10008D160);
  v34 = v4;
  result = sub_10008795C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_100087ACC();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100071454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001EEC(&qword_1000AFF68, &qword_10008D130);
  v34 = v4;
  result = sub_10008795C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_100087ADC();
      sub_1000871AC();
      result = sub_100087AFC();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000716FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v37 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = *v2;
  sub_100001EEC(&qword_1000AFED0, &qword_10008D070);
  v38 = v4;
  result = sub_10008795C();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_100036EF8(v25, v7, &qword_1000AEA70, &unk_10008D060);
      }

      else
      {
        sub_10000E4A4(v25, v7, &qword_1000AEA70, &unk_10008D060);
        v26 = v23;
      }

      result = sub_10008763C(*(v10 + 40));
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_100036EF8(v7, *(v10 + 56) + v24 * v18, &qword_1000AEA70, &unk_10008D060);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_100071A40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_1000861CC();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100001EEC(&qword_1000AFED8, &qword_10008D078);
  v42 = v4;
  result = sub_10008795C();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_100087ADC();
      sub_1000871AC();
      result = sub_100087AFC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_100071DC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001EEC(&qword_1000AFF18, &qword_10008D0C8);
  result = sub_10008795C();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_10008763C(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100072028(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000876BC() + 1) & ~v5;
    do
    {
      sub_100074A64(*(a2 + 48) + 40 * v6, v21);
      v9 = sub_10008777C(*(a2 + 40));
      result = sub_100036E90(v21);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8 || v3 < v10)
        {
          goto LABEL_5;
        }
      }

      else if (v10 < v8 && v3 < v10)
      {
        goto LABEL_5;
      }

      v13 = *(a2 + 48);
      v14 = v13 + 40 * v3;
      v15 = (v13 + 40 * v6);
      if (v3 != v6 || v14 >= v15 + 40)
      {
        v16 = *v15;
        v17 = v15[1];
        *(v14 + 32) = *(v15 + 4);
        *v14 = v16;
        *(v14 + 16) = v17;
      }

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        sub_100001EEC(&qword_1000AEA60, &qword_10008C930);
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        sub_100001EEC(&qword_1000AEA60, &qword_10008C930);
        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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

unint64_t sub_100072220(int64_t a1, uint64_t a2)
{
  v4 = sub_10008609C();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_1000876BC();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_10006E304(&qword_1000AE428, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = sub_10008711C();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(sub_100001EEC(&qword_1000AEA78, &qword_10008D080) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100072570(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000876BC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_100087ACC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

uint64_t sub_1000726E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000876BC() + 1) & ~v5;
    do
    {
      sub_100087ADC();

      sub_1000871AC();
      v9 = sub_100087AFC();

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
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
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

void sub_100072890(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000876BC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_10008763C(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_100001EEC(&qword_1000AEA70, &unk_10008D060) - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

unint64_t sub_100072A70(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000876BC() + 1) & ~v5;
    while (1)
    {
      sub_100087ADC();

      sub_1000871AC();
      v9 = sub_100087AFC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_1000861CC() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100072C5C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000876BC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_10008763C(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_100072DE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10006E5B0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100070784(v16, a4 & 1);
      v11 = sub_10006E5B0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_100087A5C();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100073600();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_100072F60(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10006E628(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
      return sub_100074CA8(a1, v16[7] + 8 * v10, &qword_1000AEA60, &qword_10008C930);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_10007376C();
    goto LABEL_7;
  }

  sub_100070A28(v13, a3 & 1);
  v18 = sub_10006E628(a2);
  if ((v14 & 1) != (v19 & 1))
  {
LABEL_14:
    result = sub_100087A5C();
    __break(1u);
    return result;
  }

  v10 = v18;
  v16 = *v4;
  if (v14)
  {
    return sub_100074CA8(a1, v16[7] + 8 * v10, &qword_1000AEA60, &qword_10008C930);
  }

LABEL_11:
  sub_100074A64(a2, v20);
  return sub_100073378(v10, v20, a1, v16);
}

id sub_10007308C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_10006E748(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a3 & 1) != 0)
  {
LABEL_7:
    v15 = *v4;
    if (v13)
    {
LABEL_8:
      v16 = v15[7];
      v17 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
      return sub_100074CA8(a1, v16 + *(*(v17 - 8) + 72) * v9, &qword_1000AEA70, &unk_10008D060);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a3 & 1) == 0)
  {
    sub_100073F84();
    goto LABEL_7;
  }

  sub_1000716FC(v12, a3 & 1);
  v19 = sub_10006E748(a2);
  if ((v13 & 1) != (v20 & 1))
  {
LABEL_15:
    sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
    result = sub_100087A5C();
    __break(1u);
    return result;
  }

  v9 = v19;
  v15 = *v4;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100073548(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_100073200(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10006E748(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100071DC0(v13, a3 & 1);
      v8 = sub_10006E748(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100023B40(0, &qword_1000ADC30, COClusterMember_ptr);
        sub_100087A5C();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_100074454();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return _objc_retain_x1();
}

uint64_t sub_100073378(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100036EF8(a3, a4[7] + 8 * a1, &qword_1000AEA60, &qword_10008C930);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_100073408(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10008609C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_100001EEC(&qword_1000AEA78, &qword_10008D080);
  result = sub_100036EF8(a3, v10 + *(*(v11 - 8) + 72) * a1, &qword_1000AEA78, &qword_10008D080);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_100073500(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_100073548(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  result = sub_100036EF8(a3, v7 + *(*(v8 - 8) + 72) * a1, &qword_1000AEA70, &unk_10008D060);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

id sub_100073600()
{
  v1 = v0;
  sub_100001EEC(&qword_1000AFF90, &qword_10008D168);
  v2 = *v0;
  v3 = sub_10008794C();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_10007376C()
{
  v1 = v0;
  sub_100001EEC(&qword_1000AFE70, &qword_10008CFC0);
  v2 = *v0;
  v3 = sub_10008794C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v22 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_100074A64(*(v2 + 48) + 40 * v17, v24);
        v17 *= 8;
        sub_10000E4A4(*(v2 + 56) + v17, v23, &qword_1000AEA60, &qword_10008C930);
        v19 = *(v4 + 48) + v18;
        v20 = v24[0];
        v21 = v24[1];
        *(v19 + 32) = v25;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100036EF8(v23, *(v4 + 56) + v17, &qword_1000AEA60, &qword_10008C930);
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

        v1 = v22;
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

char *sub_10007398C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v49 = a1;
  v50 = a2;
  v8 = sub_100001EEC(a1, a2);
  v48 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v47 = &v38 - v9;
  v46 = sub_10008609C();
  v51 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001EEC(a3, a4);
  v11 = *v4;
  v12 = sub_10008794C();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v39 = v4;
    v40 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v52 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v50;
    v41 = v51 + 32;
    v42 = v51 + 16;
    v43 = v22;
    v44 = v11;
    v24 = v46;
    if (v21)
    {
      do
      {
        v25 = __clz(__rbit64(v21));
        v53 = (v21 - 1) & v21;
LABEL_14:
        v28 = v25 | (v17 << 6);
        v29 = v51;
        v30 = *(v51 + 72) * v28;
        v31 = v45;
        (*(v51 + 16))(v45, *(v11 + 48) + v30, v24);
        v32 = v47;
        v33 = *(v48 + 72) * v28;
        v34 = *(v11 + 56) + v33;
        v35 = v49;
        sub_10000E4A4(v34, v47, v49, v23);
        v36 = v52;
        (*(v29 + 32))(*(v52 + 48) + v30, v31, v24);
        v37 = v35;
        v11 = v44;
        result = sub_100036EF8(v32, *(v36 + 56) + v33, v37, v23);
        v22 = v43;
        v21 = v53;
      }

      while (v53);
    }

    v26 = v17;
    v13 = v52;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v39;
        goto LABEL_18;
      }

      v27 = *(v40 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v53 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v13;
  }

  return result;
}

void *sub_100073CAC()
{
  v1 = v0;
  sub_100001EEC(&qword_1000AFF88, &qword_10008D160);
  v2 = *v0;
  v3 = sub_10008794C();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_100073E14()
{
  v1 = v0;
  sub_100001EEC(&qword_1000AFF68, &qword_10008D130);
  v2 = *v0;
  v3 = sub_10008794C();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

id sub_100073F84()
{
  v1 = v0;
  v2 = sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v28 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v27 = &v24 - v3;
  sub_100001EEC(&qword_1000AFED0, &qword_10008D070);
  v4 = *v0;
  v5 = sub_10008794C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    v13 = *(v4 + 64);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v14 = v12 & v13;
    v15 = (v11 + 63) >> 6;
    if ((v12 & v13) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = v27;
        v22 = *(v28 + 72) * v19;
        sub_10000E4A4(*(v4 + 56) + v22, v27, &qword_1000AEA70, &unk_10008D060);
        v23 = v29;
        *(*(v29 + 48) + 8 * v19) = v20;
        sub_100036EF8(v21, *(v23 + 56) + v22, &qword_1000AEA70, &unk_10008D060);
        result = v20;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_1000741D4()
{
  v1 = v0;
  v35 = sub_1000861CC();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001EEC(&qword_1000AFED8, &qword_10008D078);
  v3 = *v0;
  v4 = sub_10008794C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_100074454()
{
  v1 = v0;
  sub_100001EEC(&qword_1000AFF18, &qword_10008D0C8);
  v2 = *v0;
  v3 = sub_10008794C();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_100074618(uint64_t a1)
{
  v2 = sub_100001EEC(&qword_1000AFE58, &qword_10008CF70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - v4;
  v6 = sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v25 = _swiftEmptyArrayStorage;
    sub_10006F628(0, v9, 0);
    v10 = v25;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v20 = *(v11 + 56);
    v21 = v12;
    v19 = (v11 - 8);
    do
    {
      v14 = v11;
      v21(v5, v13, v2);
      sub_1000862BC();
      sub_1000862CC();
      (*v19)(v5, v2);
      *&v8[*(v23 + 36)] = v24;
      v25 = v10;
      v16 = v10[2];
      v15 = v10[3];
      if (v16 >= v15 >> 1)
      {
        sub_10006F628((v15 > 1), v16 + 1, 1);
        v10 = v25;
      }

      v10[2] = v16 + 1;
      sub_100036EF8(v8, v10 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v16, &qword_1000AE5D0, &qword_100089EB0);
      v13 += v20;
      --v9;
      v11 = v14;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_100074900(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100074954()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100074990(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000324C;

  return sub_10006D410(a1, v6, v7, v9, v8, v4, v5);
}

unint64_t sub_100074AC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001EEC(&qword_1000AFE90, &qword_10008CFF0);
    v3 = sub_10008797C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10006E5B0(v5, v6);
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

uint64_t sub_100074BD4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002740;

  return sub_10006CD28(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_100074CA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001EEC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100074D2C()
{
  v1 = sub_10008642C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100074DF8(uint64_t a1)
{
  v4 = *(sub_10008642C() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000324C;

  return sub_10006D2D8(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100074EFC()
{

  return swift_deallocObject();
}

uint64_t sub_100074F3C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100074F84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000324C;

  return sub_10006D93C(a1, v4, v5, v6, v7, v8);
}

void *sub_10007504C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100001EEC(&qword_1000AFF88, &qword_10008D160);
  v3 = sub_10008797C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_10006E704(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_10006E704(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100075160(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001EEC(&qword_1000AFF98, &qword_10008D170);
    v3 = sub_10008797C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E4A4(v4, &v13, &qword_1000AFFA0, &qword_10008D178);
      v5 = v13;
      v6 = v14;
      result = sub_10006E5B0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100036E80(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100075294()
{
  sub_1000165B4(0xD000000000000048, 0x800000010008FF60);
  v1 = sub_10008714C();
  v2 = [v0 cuValueForEntitlementNoCache:v1];

  if (v2)
  {
    sub_10008769C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_10007553C(v14);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    *&v14[0] = sub_1000755A4();
    sub_100001EEC(&qword_1000AE650, &qword_10008A0D8);
    sub_10008716C();
    v6 = objc_allocWithZone(CULogHandle);
    v7 = sub_10008714C();
    v8 = sub_10008714C();

    v9 = [v6 initWithSubsystem:v7 category:v8];

    v10 = sub_10008714C();
    [v9 ulog:90 message:v10];

    return 0;
  }

  sub_1000877DC(31);

  *&v14[0] = 0x2720646E756F46;
  *(&v14[0] + 1) = 0xE700000000000000;
  if (v11)
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (v11)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v3._object = v4;
  sub_1000871BC(v3);

  v15._countAndFlagsBits = 0xD000000000000013;
  v15._object = 0x8000000100090010;
  sub_1000871BC(v15);
  v16._object = 0x800000010008E1C0;
  v16._countAndFlagsBits = 0xD00000000000002ELL;
  sub_1000871BC(v16);
  v17._countAndFlagsBits = 39;
  v17._object = 0xE100000000000000;
  sub_1000871BC(v17);
  sub_1000165B4(*&v14[0], *(&v14[0] + 1));

  return v11;
}

uint64_t sub_10007553C(uint64_t a1)
{
  v2 = sub_100001EEC(&qword_1000AFFA8, &unk_10008D1A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000755A4()
{
  result = qword_1000AE648;
  if (!qword_1000AE648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AE648);
  }

  return result;
}

uint64_t sub_100075614(uint64_t a1)
{
  v2 = sub_10008609C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v46 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001EEC(&qword_1000AEA58, qword_10008D310);
  v6 = __chkstk_darwin(v5);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v44 = &v38 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 44);
    v41 = v2;
    v42 = v12;
    v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    v43 = (v3 + 16);
    v15 = &_swiftEmptyDictionarySingleton;
    v39 = v3;
    v40 = (v3 + 8);
    while (1)
    {
      v16 = v14;
      v17 = v44;
      sub_10000E4A4(v13, v44, &qword_1000AEA58, qword_10008D310);
      v18 = *v43;
      v19 = v46;
      v20 = v41;
      (*v43)(v46, v17 + v42);
      sub_10000E4A4(v17, v45, &qword_1000AEA58, qword_10008D310);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v15;
      v23 = sub_10006E66C(v19);
      v24 = v15[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (v15[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100073944();
        }
      }

      else
      {
        sub_100070D14(v26, isUniquelyReferenced_nonNull_native);
        v28 = sub_10006E66C(v46);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_18;
        }

        v23 = v28;
      }

      v30 = v20;
      v15 = v47;
      v14 = v16;
      if (v27)
      {
        sub_100074CA8(v45, v47[7] + v23 * v16, &qword_1000AEA58, qword_10008D310);
        (*v40)(v46, v30);
        sub_10000649C(v44, &qword_1000AEA58, qword_10008D310);
      }

      else
      {
        v47[(v23 >> 6) + 8] |= 1 << v23;
        v31 = v39;
        v32 = v46;
        (v18)(v15[6] + *(v39 + 72) * v23, v46, v30);
        sub_100036EF8(v45, v15[7] + v23 * v14, &qword_1000AEA58, qword_10008D310);
        (*(v31 + 8))(v32, v30);
        sub_10000649C(v44, &qword_1000AEA58, qword_10008D310);
        v33 = v15[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_17;
        }

        v15[2] = v35;
      }

      v13 += v14;
      if (!--v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_100087A5C();
    __break(1u);
  }

  else
  {
    v15 = &_swiftEmptyDictionarySingleton;
LABEL_15:
    v36 = v38;
    swift_beginAccess();
    *(v36 + 24) = v15;
  }

  return result;
}

uint64_t sub_100075A00()
{

  return _swift_deallocClassInstance(v0, 41, 7);
}

uint64_t sub_100075A64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v1;
}

uint64_t (*sub_100075AD8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000867CC();
  return sub_100075B7C;
}

void sub_100075B7C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t *sub_100075BE4@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_10006F324(*(*result + 16), 0);
  v6 = *(sub_100001EEC(&qword_1000AEA78, &qword_10008D080) - 8);
  v7 = sub_100036EE4(&v9, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v4, v3);
  v8 = v9;

  result = sub_100023AA8(v8);
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = _swiftEmptyArrayStorage;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_100075CE8(uint64_t a1)
{
  v2 = sub_10008609C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v45 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001EEC(&qword_1000AEA78, &qword_10008D080);
  v6 = __chkstk_darwin(v5);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v43 = &v37 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 36);
    v40 = v2;
    v41 = v12;
    v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    v42 = (v3 + 16);
    v15 = &_swiftEmptyDictionarySingleton;
    v38 = v3;
    v39 = (v3 + 8);
    while (1)
    {
      v16 = v14;
      v17 = v43;
      sub_10000E4A4(v13, v43, &qword_1000AEA78, &qword_10008D080);
      v18 = *v42;
      v19 = v45;
      v20 = v40;
      (*v42)(v45, v17 + v41);
      sub_10000E4A4(v17, v44, &qword_1000AEA78, &qword_10008D080);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v15;
      v23 = sub_10006E66C(v19);
      v24 = v15[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (v15[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100073968();
        }
      }

      else
      {
        sub_100070D38(v26, isUniquelyReferenced_nonNull_native);
        v28 = sub_10006E66C(v45);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_18;
        }

        v23 = v28;
      }

      v30 = v20;
      v15 = v46;
      v14 = v16;
      if (v27)
      {
        sub_100074CA8(v44, v46[7] + v23 * v16, &qword_1000AEA78, &qword_10008D080);
        (*v39)(v45, v30);
        sub_10000649C(v43, &qword_1000AEA78, &qword_10008D080);
      }

      else
      {
        v46[(v23 >> 6) + 8] |= 1 << v23;
        v31 = v38;
        v32 = v45;
        (v18)(v15[6] + *(v38 + 72) * v23, v45, v30);
        sub_100036EF8(v44, v15[7] + v23 * v14, &qword_1000AEA78, &qword_10008D080);
        (*(v31 + 8))(v32, v30);
        sub_10000649C(v43, &qword_1000AEA78, &qword_10008D080);
        v33 = v15[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_17;
        }

        v15[2] = v35;
      }

      v13 += v14;
      if (!--v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_100087A5C();
    __break(1u);
  }

  else
  {
    v15 = &_swiftEmptyDictionarySingleton;
LABEL_15:
    swift_getKeyPath();
    swift_getKeyPath();
    v46 = v15;

    return sub_1000867EC();
  }

  return result;
}

uint64_t sub_1000760F4()
{
  v1 = OBJC_IVAR____TtC16HPSUIViewService34CarrySettingsNetworkingSessionMock__devices;
  v2 = sub_100001EEC(&qword_1000AF068, &qword_10008B590);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for CarrySettingsNetworkingSessionMock(uint64_t a1)
{
  result = qword_1000B01C0;
  if (!qword_1000B01C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100076200(uint64_t a1)
{
  sub_10007629C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10007629C(uint64_t a1)
{
  if (!qword_1000B01D0)
  {
    sub_100003200(&unk_1000B01D8, &qword_10008D278);
    v1 = sub_1000867FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B01D0);
    }
  }
}

uint64_t sub_10007631C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008672C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000763F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10008672C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for EnrollToggle(uint64_t a1)
{
  result = qword_1000B0310;
  if (!qword_1000B0310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000764F8(uint64_t a1)
{
  sub_10005225C();
  if (v1 <= 0x3F)
  {
    sub_10008672C();
    if (v2 <= 0x3F)
    {
      sub_1000522AC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000765B0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for EnrollToggle(0);
  v4 = v3 - 8;
  v64 = *(v3 - 8);
  __chkstk_darwin(v3);
  v65 = v5;
  v66 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100001EEC(&qword_1000B0358, &qword_10008D398);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v67 = v49 - v6;
  v58 = sub_100001EEC(&qword_1000B0360, &qword_10008D3A0);
  __chkstk_darwin(v58);
  v57 = v49 - v7;
  v56 = sub_100001EEC(&qword_1000B0368, &qword_10008D3A8);
  __chkstk_darwin(v56);
  v62 = v49 - v8;
  v72 = sub_100001EEC(&qword_1000B0370, &qword_10008D3B0);
  v9 = __chkstk_darwin(v72);
  v60 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v63 = v49 - v11;
  v68 = sub_100001EEC(&qword_1000B0378, &qword_10008D3B8);
  __chkstk_darwin(v68);
  v69 = v49 - v12;
  v70 = sub_100001EEC(&qword_1000AEB98, &qword_10008AE40);
  v13 = *(v70 - 8);
  __chkstk_darwin(v70);
  v15 = v49 - v14;
  v16 = sub_10008672C();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v49 - v21;
  v23 = *(v4 + 28);
  v24 = v17[2];
  v71 = a1;
  v55 = v23;
  v24(v49 - v21, &a1[v23], v16);
  v54 = v17[11];
  v25 = v54(v22, v16);
  v26 = enum case for BetaEnrollment.State.enrolling(_:);
  if (v25 == enum case for BetaEnrollment.State.enrolling(_:) || v25 == enum case for BetaEnrollment.State.removing(_:))
  {
    sub_10008688C();
    v48 = v70;
    (*(v13 + 16))(v69, v15, v70);
    swift_storeEnumTagMultiPayload();
    sub_100006454(&qword_1000AEBB8, &qword_1000AEB98, &qword_10008AE40, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100077114();
    sub_100086B8C();
    return (*(v13 + 8))(v15, v48);
  }

  else
  {
    v27 = v17[1];
    v50 = enum case for BetaEnrollment.State.removing(_:);
    v49[0] = v27;
    v27(v22, v16);
    v49[3] = sub_100086AFC();
    v49[2] = v28;
    v49[1] = v29;
    v30 = v71;
    v31 = *(v71 + 1);
    v52 = *v71;
    v76 = v52;
    v53 = v31;
    v77 = v31;
    v51 = sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
    sub_100086EAC();
    sub_100086F2C();
    v24(v20, &v30[v55], v16);
    v32 = v54(v20, v16);
    v33 = v32 == v26 || v32 == v50;
    v34 = v33;
    if (!v33)
    {
      (v49[0])(v20, v16);
    }

    KeyPath = swift_getKeyPath();
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    v37 = v57;
    (*(v59 + 32))(v57, v67, v61);
    v38 = (v37 + *(v58 + 36));
    *v38 = KeyPath;
    v38[1] = sub_10003DADC;
    v38[2] = v36;
    v39 = v62;
    sub_100036EF8(v37, v62, &qword_1000B0360, &qword_10008D3A0);
    *(v39 + *(v56 + 36)) = 257;
    LOBYTE(v74) = v52;
    v75 = v53;
    sub_100086E8C();
    LOBYTE(v36) = v76;
    v40 = v66;
    sub_100076E70(v71, v66);
    v41 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v42 = swift_allocObject();
    sub_100076FD4(v40, v42 + v41);
    v43 = v60;
    sub_100036EF8(v39, v60, &qword_1000B0368, &qword_10008D3A8);
    v44 = v43 + *(v72 + 36);
    *v44 = v36;
    *(v44 + 8) = sub_100077038;
    *(v44 + 16) = v42;
    v45 = v43;
    v46 = v63;
    sub_100036EF8(v45, v63, &qword_1000B0370, &qword_10008D3B0);
    sub_1000770A4(v46, v69);
    swift_storeEnumTagMultiPayload();
    sub_100006454(&qword_1000AEBB8, &qword_1000AEB98, &qword_10008AE40, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100077114();
    sub_100086B8C();
    return sub_10007733C(v46);
  }
}

uint64_t sub_100076E04@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_100086B3C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_100001EEC(&qword_1000B0350, &qword_10008D390);
  return sub_1000765B0(v2, a2 + *(v4 + 44));
}

uint64_t sub_100076E70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnrollToggle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100076ED4()
{
  v1 = (type metadata accessor for EnrollToggle(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_10008672C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_100076FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnrollToggle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000770A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000B0370, &qword_10008D3B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100077114()
{
  result = qword_1000B0380;
  if (!qword_1000B0380)
  {
    sub_100003200(&qword_1000B0370, &qword_10008D3B0);
    sub_1000771CC();
    sub_100006454(&qword_1000AFBA0, &qword_1000AFBA8, &unk_10008CBB8, &protocol conformance descriptor for _ValueActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0380);
  }

  return result;
}

unint64_t sub_1000771CC()
{
  result = qword_1000B0388;
  if (!qword_1000B0388)
  {
    sub_100003200(&qword_1000B0368, &qword_10008D3A8);
    sub_100077258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0388);
  }

  return result;
}

unint64_t sub_100077258()
{
  result = qword_1000B0390;
  if (!qword_1000B0390)
  {
    sub_100003200(&qword_1000B0360, &qword_10008D3A0);
    sub_100006454(&qword_1000B0398, &qword_1000B0358, &qword_10008D398, &protocol conformance descriptor for Toggle<A>);
    sub_100006454(&qword_1000B03A0, &qword_1000B03A8, &unk_10008D3F0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0390);
  }

  return result;
}

uint64_t sub_10007733C(uint64_t a1)
{
  v2 = sub_100001EEC(&qword_1000B0370, &qword_10008D3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000773E8(uint64_t a1)
{
  sub_10002B5F8(319, &qword_1000B0488, &qword_1000AE3E0, &unk_100089E60);
  if (v1 <= 0x3F)
  {
    sub_10004A1F0(319, &qword_1000AE8B8, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_10002B5F8(319, &qword_1000AE8A8, &qword_1000AE610, &unk_10008C960);
      if (v3 <= 0x3F)
      {
        sub_10002B5F8(319, &qword_1000B0490, &qword_1000AE5F8, &unk_10008A090);
        if (v4 <= 0x3F)
        {
          sub_10004A1F0(319, &qword_1000AE340, &type metadata for Bool);
          if (v5 <= 0x3F)
          {
            sub_10002B5F8(319, &qword_1000B0498, &qword_1000AE618, &qword_10008A0B0);
            if (v6 <= 0x3F)
            {
              sub_10002B5F8(319, &qword_1000B04A0, &qword_1000AE5E8, &qword_10008A080);
              if (v7 <= 0x3F)
              {
                swift_initClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void *sub_1000776A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000861CC();
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v30 = v7;
    v36 = _swiftEmptyArrayStorage;
    v10 = &v36;
    v11 = v5;
    sub_10008787C();
    v33 = a1 + 64;
    v12 = sub_1000876AC();
    v13 = v11;
    v14 = v12;
    v15 = 0;
    v34 = *(a1 + 36);
    v28 = v11 + 16;
    v29 = (v11 + 8);
    v26 = a1 + 72;
    v27 = v4;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v16 = v14 >> 6;
      if ((*(v33 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      if (v34 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v31 = v15;
      v17 = v13;
      v10 = v30;
      (*(v13 + 16))(v30, *(a1 + 56) + *(v13 + 72) * v14, v4);
      sub_10007BB1C(&v35);
      v32 = v2;
      if (v2)
      {
        goto LABEL_28;
      }

      v18 = a1;
      (*v29)(v10, v4);
      v4 = v35;
      sub_10008784C();
      sub_10008788C();
      sub_10008789C();
      sub_10008785C();
      v10 = (1 << *(a1 + 32));
      if (v14 >= v10)
      {
        goto LABEL_25;
      }

      v19 = *(v33 + 8 * v16);
      if ((v19 & (1 << v14)) == 0)
      {
        goto LABEL_26;
      }

      if (v34 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v20 = v19 & (-2 << (v14 & 0x3F));
      if (v20)
      {
        v10 = (__clz(__rbit64(v20)) | v14 & 0x7FFFFFFFFFFFFFC0);
        v13 = v17;
      }

      else
      {
        v21 = v16 << 6;
        v22 = v16 + 1;
        v23 = (v26 + 8 * v16);
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_100023CC8(v14, v34, 0);
            v13 = v17;
            v10 = (__clz(__rbit64(v24)) + v21);
            goto LABEL_19;
          }
        }

        sub_100023CC8(v14, v34, 0);
        v13 = v17;
LABEL_19:
        a1 = v18;
      }

      v2 = v32;
      v15 = v31 + 1;
      v14 = v10;
      v4 = v27;
      if (v31 + 1 == v8)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    (*v29)(v10, v4);

    __break(1u);
  }

  return result;
}

uint64_t sub_1000779F4(uint64_t a1)
{
  v2 = sub_1000876AC();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1000830D0(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_100077ABC()
{
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0(255, AssociatedTypeWitness, AssociatedConformanceWitness, v2);
  sub_10008739C();

  swift_getWitnessTable();
  v3 = sub_10008722C();

  v6 = v3;

  sub_100081FBC(&v6);

  sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
  sub_100006454(qword_1000AE2B8, &qword_1000AE2B0, &qword_10008D800, &protocol conformance descriptor for [A]);
  v4 = sub_10008712C();

  return v4;
}

uint64_t sub_100077CC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10008614C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001EEC(&qword_1000AE638, &qword_10008A0D0);
  __chkstk_darwin(v6 - 8);
  v8 = v15 - v7;
  sub_10008645C();
  sub_10008611C();
  (*(v3 + 8))(v5, v2);
  v9 = sub_10008639C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_10000649C(v8, &qword_1000AE638, &qword_10008A0D0);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = sub_10008633C();
    v13 = v14;
    result = (*(v10 + 8))(v8, v9);
  }

  *a1 = v12;
  a1[1] = v13;
  return result;
}

uint64_t sub_100077EA8()
{
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0(0, AssociatedTypeWitness, AssociatedConformanceWitness, v2);

  v3 = sub_10008736C();

  return v3;
}

uint64_t sub_100077FCC()
{
  swift_beginAccess();
  swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0(255, AssociatedTypeWitness, AssociatedConformanceWitness, v2);
  sub_10008739C();
  sub_1000860EC();

  swift_getWitnessTable();
  sub_10008722C();

  sub_10008736C();

  return sub_100086AFC();
}

uint64_t sub_10007821C(uint64_t a1)
{
  v2 = sub_10008614C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10008646C();
}

uint64_t sub_100078344(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v3;
}

uint64_t sub_10007840C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

char *sub_1000784CC()
{
  v0 = sub_10008630C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10008632C();
  v58 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v57 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v52 = &v46 - v8;
  __chkstk_darwin(v7);
  v10 = &v46 - v9;
  v11 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - v12;
  v14 = sub_10008642C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100077A84();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000649C(v13, &qword_1000AE3E0, &unk_100089E60);
    return _swiftEmptyArrayStorage;
  }

  v47 = v15;
  v48 = v14;
  (*(v15 + 32))(v17, v13, v14);
  v46 = v17;
  result = sub_10008641C();
  v19 = result;
  v20 = *(result + 2);
  v61 = v4;
  v55 = v20;
  if (!v20)
  {
    v53 = _swiftEmptyArrayStorage;
LABEL_24:

    v33 = v53;
    v34 = v53[2];
    if (v34)
    {
      v63 = _swiftEmptyArrayStorage;
      sub_10006F608(0, v34, 0);
      v35 = v63;
      v62 = *(v58 + 16);
      v36 = v33 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
      v60 = *(v58 + 72);
      v37 = (v58 + 8);
      do
      {
        v38 = v57;
        v39 = v61;
        v62(v57, v36, v61);
        v40 = sub_1000862EC();
        v42 = v41;
        (*v37)(v38, v39);
        v63 = v35;
        v44 = v35[2];
        v43 = v35[3];
        if (v44 >= v43 >> 1)
        {
          sub_10006F608((v43 > 1), v44 + 1, 1);
          v35 = v63;
        }

        v35[2] = v44 + 1;
        v45 = &v35[2 * v44];
        v45[4] = v40;
        v45[5] = v42;
        v36 += v60;
        --v34;
      }

      while (v34);
      (*(v47 + 8))(v46, v48);

      return v35;
    }

    (*(v47 + 8))(v46, v48);
    return _swiftEmptyArrayStorage;
  }

  v21 = 0;
  v54 = v58 + 16;
  v62 = (v1 + 16);
  v22 = (v1 + 8);
  v51 = (v58 + 32);
  v49 = (v58 + 8);
  v53 = _swiftEmptyArrayStorage;
  v56 = v10;
  v50 = result;
  while (v21 < *(v19 + 2))
  {
    v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v59 = *(v58 + 72);
    (*(v58 + 16))(v10, &v19[v60 + v59 * v21], v4);
    result = sub_10008631C();
    if (result)
    {
      v23 = result;
      v24 = 0;
      v25 = *(result + 2);
      while (1)
      {
        if (v25 == v24)
        {

          v10 = v56;
          v4 = v61;
          result = (*v49)(v56, v61);
          goto LABEL_22;
        }

        if (v24 >= *(v23 + 2))
        {
          break;
        }

        (*(v1 + 16))(v3, &v23[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v24], v0);
        if (sub_1000862FC() == 0x646F702D656D6F68 && v27 == 0xE800000000000000)
        {

          (*v22)(v3, v0);
LABEL_16:

          v28 = *v51;
          v4 = v61;
          (*v51)(v52, v56, v61);
          v29 = v53;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v63 = v29;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10006F810(0, v29[2] + 1, 1);
            v29 = v63;
          }

          v32 = v29[2];
          v31 = v29[3];
          if (v32 >= v31 >> 1)
          {
            sub_10006F810((v31 > 1), v32 + 1, 1);
            v29 = v63;
          }

          v29[2] = v32 + 1;
          v53 = v29;
          result = v28(v29 + v60 + v32 * v59, v52, v4);
          v10 = v56;
LABEL_22:
          v19 = v50;
          goto LABEL_6;
        }

        ++v24;
        v26 = sub_100087A1C();

        result = (*v22)(v3, v0);
        if (v26)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      break;
    }

    result = (*v49)(v10, v4);
LABEL_6:
    if (++v21 == v55)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100078BA4()
{
  v1 = v0;
  v40 = *v0;
  v2 = sub_10008632C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001EEC(&qword_1000AE5F8, &unk_10008A090);
  v7 = __chkstk_darwin(v6 - 8);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v11 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  v14 = sub_10008642C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100077A84();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v18 = &qword_1000AE3E0;
    v19 = &unk_100089E60;
    return sub_10000649C(v13, v18, v19);
  }

  v37 = v14;
  v38 = v10;
  v36 = v15;
  (*(v15 + 32))(v17, v13, v14);
  v35 = v17;
  v20 = sub_10008641C();
  v21 = *(v20 + 16);
  if (!v21)
  {
LABEL_8:

    v24 = 1;
    v13 = v38;
LABEL_10:
    (*(v3 + 56))(v13, v24, 1, v2);
    type metadata accessor for CarrySettingsDetailViewModel(0, *(v40 + 80), *(v40 + 88), v25);
    swift_getWitnessTable();
    sub_10008676C();
    sub_10008679C();

    v26 = v39;
    sub_10000E4A4(v13, v39, &qword_1000AE5F8, &unk_10008A090);
    sub_1000793D8(v26);
    v27 = (*(v3 + 48))(v13, 1, v2);
    v29 = v36;
    v28 = v37;
    v30 = v35;
    if (v27 != 1)
    {
      v31 = (v1 + qword_1000B3C30);
      *v31 = 0;
      v31[1] = 0;

      sub_100079A10();
      v32 = (v1 + qword_1000B3C38);
      *v32 = 0;
      v32[1] = 0;

      sub_10007AD7C();
    }

    (*(v29 + 8))(v30, v28);
    v18 = &qword_1000AE5F8;
    v19 = &unk_10008A090;
    return sub_10000649C(v13, v18, v19);
  }

  v22 = 0;
  v23 = (v3 + 8);
  while (v22 < *(v20 + 16))
  {
    (*(v3 + 16))(v5, v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22, v2);
    if (sub_10007906C(v5))
    {

      v13 = v38;
      (*(v3 + 32))(v38, v5, v2);
      v24 = 0;
      goto LABEL_10;
    }

    ++v22;
    (*v23)(v5, v2);
    if (v21 == v22)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  result = (*v23)(v5, v2);
  __break(1u);
  return result;
}

uint64_t sub_10007906C(uint64_t a1)
{
  v1 = sub_1000862EC();
  v3 = v2;
  v4 = sub_10007912C();
  if (v5)
  {
    if (v1 == v4 && v5 == v3)
    {

      return 1;
    }

    else
    {
      v7 = sub_100087A1C();

      return v7 & 1;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10007912C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v1;
}

uint64_t sub_1000791E0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000867EC();
  return sub_100078BA4();
}

uint64_t sub_1000792B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = sub_100001EEC(a4, a5);
  v9 = __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v15 - v12;
  sub_10000E4A4(a1, &v15 - v12, a4, a5);
  sub_10000E4A4(v13, v11, a4, a5);
  sub_1000867AC();
  sub_10000649C(a1, a4, a5);
  return sub_10000649C(v13, a4, a5);
}

uint64_t sub_1000793FC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v10 = *v8;
  v11 = sub_100001EEC(a2, a3);
  __chkstk_darwin(v11 - 8);
  v13 = v17 - v12;
  v18 = *(v10 + 80);
  v14 = v18;
  v15 = *(v10 + 88);
  v19 = v15;
  swift_getKeyPath();
  v17[0] = v14;
  v17[1] = v15;
  swift_getKeyPath();
  sub_10000E4A4(a1, v13, a2, a3);

  sub_1000867EC();
  return sub_10000649C(a1, a2, a3);
}

uint64_t sub_100079564()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v1;
}

uint64_t sub_100079618(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

void *sub_1000796D0()
{
  v33 = sub_10008632C();
  v0 = *(v33 - 8);
  __chkstk_darwin(v33);
  v2 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001EEC(&qword_1000AE5E8, &qword_10008A080);
  __chkstk_darwin(v3 - 8);
  v5 = v26 - v4;
  v6 = sub_1000863FC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B54C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000649C(v5, &qword_1000AE5E8, &qword_10008A080);
    return _swiftEmptyArrayStorage;
  }

  (*(v7 + 32))(v9, v5, v6);
  v10 = sub_1000863DC();
  v11 = *(v10 + 16);
  if (!v11)
  {

    (*(v7 + 8))(v9, v6);
    return _swiftEmptyArrayStorage;
  }

  v27 = v9;
  v28 = v7;
  v29 = v6;
  v34 = _swiftEmptyArrayStorage;
  sub_10006F608(0, v11, 0);
  v12 = v34;
  v14 = *(v0 + 16);
  v13 = v0 + 16;
  v15 = *(v13 + 64);
  v26[1] = v10;
  v16 = v10 + ((v15 + 32) & ~v15);
  v30 = *(v13 + 56);
  v31 = v14;
  v32 = v13;
  v17 = (v13 - 8);
  do
  {
    v18 = v33;
    v31(v2, v16, v33);
    v19 = sub_1000862EC();
    v21 = v20;
    (*v17)(v2, v18);
    v34 = v12;
    v23 = v12[2];
    v22 = v12[3];
    if (v23 >= v22 >> 1)
    {
      sub_10006F608((v22 > 1), v23 + 1, 1);
      v12 = v34;
    }

    v12[2] = v23 + 1;
    v24 = &v12[2 * v23];
    v24[4] = v19;
    v24[5] = v21;
    v16 += v30;
    --v11;
  }

  while (v11);
  (*(v28 + 8))(v27, v29);

  return v12;
}

uint64_t sub_100079A10()
{
  v41 = *v0;
  v1 = sub_10008632C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001EEC(&qword_1000AE5F8, &unk_10008A090);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = sub_100001EEC(&qword_1000AE5E8, &qword_10008A080);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_1000863FC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B54C();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v18 = &qword_1000AE5E8;
    v19 = &qword_10008A080;
    v20 = v13;
    return sub_10000649C(v20, v18, v19);
  }

  v39 = v8;
  v40 = v10;
  v21 = v0;
  v37 = v15;
  v38 = v14;
  (*(v15 + 32))(v17, v13, v14);
  v36 = v17;
  v22 = sub_1000863DC();
  v23 = *(v22 + 16);
  if (!v23)
  {
LABEL_8:

    v26 = 1;
    v27 = v40;
LABEL_10:
    (*(v2 + 56))(v27, v26, 1, v1);
    type metadata accessor for CarrySettingsDetailViewModel(0, *(v41 + 80), *(v41 + 88), v28);
    swift_getWitnessTable();
    sub_10008676C();
    sub_10008679C();

    v29 = v39;
    sub_10000E4A4(v27, v39, &qword_1000AE5F8, &unk_10008A090);
    sub_100079EFC(v29);
    v30 = (*(v2 + 48))(v27, 1, v1);
    v32 = v37;
    v31 = v38;
    v33 = v36;
    if (v30 != 1)
    {
      sub_1000791E0(0, 0);
    }

    (*(v32 + 8))(v33, v31);
    v18 = &qword_1000AE5F8;
    v19 = &unk_10008A090;
    v20 = v27;
    return sub_10000649C(v20, v18, v19);
  }

  v24 = 0;
  v25 = (v2 + 8);
  while (v24 < *(v22 + 16))
  {
    (*(v2 + 16))(v4, v22 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v24, v1);
    if (sub_10007B438(v4, v21, &CarrySettings.LivabilityAudience.purposeName.getter, &qword_1000B3C30))
    {

      v27 = v40;
      (*(v2 + 32))(v40, v4, v1);
      v26 = 0;
      goto LABEL_10;
    }

    ++v24;
    (*v25)(v4, v1);
    if (v23 == v24)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  result = (*v25)(v4, v1);
  __break(1u);
  return result;
}

uint64_t sub_100079F70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v1;
}

uint64_t sub_10007A024(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_10007A0DC()
{
  v1 = qword_1000B3C40;
  swift_beginAccess();
  v12 = *(v0 + v1);
  swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0(255, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  sub_10008739C();

  swift_getWitnessTable();
  v5 = sub_10008722C();

  v6 = sub_100082D20(v5);

  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = sub_10006F258(*(v6 + 16), 0);
  v9 = sub_100037174(&v12, v8 + 4, v7, v6);
  sub_100023AA8(v12);
  if (v9 != v7)
  {
    __break(1u);
LABEL_4:

    v8 = _swiftEmptyArrayStorage;
  }

  v12 = v8;
  sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
  sub_100006454(qword_1000AE2B8, &qword_1000AE2B0, &qword_10008D800, &protocol conformance descriptor for [A]);
  v10 = sub_10008712C();

  return v10;
}

uint64_t sub_10007A38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_100001EEC(a5, a6);
  __chkstk_darwin(v11 - 8);
  v13 = &v15 - v12;
  sub_10000E4A4(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_10007A438()
{
  swift_beginAccess();
  swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0(255, AssociatedTypeWitness, AssociatedConformanceWitness, v2);
  sub_10008739C();

  swift_getWitnessTable();
  v3 = sub_10008722C();

  v5 = 0;
  v23 = v3 + 40;
  v25 = -*(v3 + 16);
  v26 = v3;
  v24 = _swiftEmptyArrayStorage;
LABEL_2:
  v6 = v5 + 1;
  v7 = (v23 + 16 * v5);
  while (v25 + v6 != 1)
  {
    v5 = v6;
    if ((v6 - 1) >= *(v26 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = *(v7 - 1);
    v9 = *v7;
    if (v8 == 0xD000000000000011 && 0x800000010008FC70 == v9)
    {
      v14 = 1;
      goto LABEL_31;
    }

    v11 = sub_100087A1C();
    v13 = v8 == 0xD000000000000011 && 0x800000010008FC90 == v9;
    v14 = 1;
    if ((v11 & 1) != 0 || v13)
    {
      goto LABEL_31;
    }

    v15 = sub_100087A1C();
    v16 = v8 == 0xD000000000000011 && 0x800000010008FCB0 == v9;
    v17 = v16;
    if (v15 & 1) != 0 || v17 || (sub_100087A1C())
    {
      goto LABEL_31;
    }

    if (v8 != 0xD000000000000011 || 0x800000010008FCD0 != v9)
    {
      v6 = v5 + 1;
      v7 += 2;
      result = sub_100087A1C();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    v14 = 0;
LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10006F00C(0, *(v24 + 2) + 1, 1, v24);
      v24 = result;
    }

    v19 = *(v24 + 2);
    v18 = *(v24 + 3);
    if (v19 >= v18 >> 1)
    {
      result = sub_10006F00C((v18 > 1), v19 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = v19 + 1;
    v24[v19 + 32] = v14;
    goto LABEL_2;
  }

  v20 = sub_100028994(v24);
  v22 = v21;

  if (v22)
  {
    return v20;
  }

  else
  {
    return 0xD000000000000010;
  }
}

char *sub_10007A7F8()
{
  v0 = sub_1000863FC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v54 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v47 - v5;
  __chkstk_darwin(v4);
  v56 = &v47 - v7;
  v8 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_10008642C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100077A84();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000649C(v10, &qword_1000AE3E0, &unk_100089E60);
    return _swiftEmptyArrayStorage;
  }

  v48 = v12;
  v49 = v11;
  (*(v12 + 32))(v14, v10, v11);
  v47 = v14;
  v16 = sub_10008640C();
  v17 = _swiftEmptyArrayStorage;
  v53 = *(v16 + 16);
  if (v53)
  {
    v18 = 0;
    v19 = v1;
    v51 = v6;
    v52 = (v1 + 16);
    v50 = (v1 + 8);
    v55 = (v1 + 32);
    while (1)
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = v16;
      v22 = *(v19 + 72);
      (*(v19 + 16))(v56, v16 + v20 + v22 * v18, v0);
      if (sub_1000863CC() == 1397716596 && v23 == 0xE400000000000000)
      {
        break;
      }

      v24 = sub_100087A1C();

      if (v24)
      {
        goto LABEL_12;
      }

      (*v50)(v56, v0);
LABEL_6:
      ++v18;
      v16 = v21;
      if (v53 == v18)
      {
        goto LABEL_18;
      }
    }

LABEL_12:
    v25 = *v55;
    (*v55)(v6, v56, v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10006F7CC(0, *(v17 + 2) + 1, 1);
      v17 = v57;
    }

    v28 = *(v17 + 2);
    v27 = *(v17 + 3);
    if (v28 >= v27 >> 1)
    {
      sub_10006F7CC((v27 > 1), v28 + 1, 1);
      v17 = v57;
    }

    *(v17 + 2) = v28 + 1;
    v29 = &v17[v20 + v28 * v22];
    v6 = v51;
    v25(v29, v51, v0);
    goto LABEL_6;
  }

  v19 = v1;
LABEL_18:

  v30 = *(v17 + 2);
  if (v30)
  {
    v57 = _swiftEmptyArrayStorage;
    sub_10006F608(0, v30, 0);
    v31 = v57;
    v33 = *(v19 + 16);
    v32 = v19 + 16;
    v34 = &v17[(*(v32 + 64) + 32) & ~*(v32 + 64)];
    v55 = *(v32 + 56);
    v56 = v33;
    v52 = v17;
    v53 = (v32 - 8);
    do
    {
      v35 = v54;
      v36 = v32;
      (v56)(v54, v34, v0);
      v37 = sub_1000863EC();
      v39 = v38;
      v40 = v0;
      (*v53)(v35, v0);
      v57 = v31;
      v42 = *(v31 + 2);
      v41 = *(v31 + 3);
      if (v42 >= v41 >> 1)
      {
        sub_10006F608((v41 > 1), v42 + 1, 1);
        v31 = v57;
      }

      *(v31 + 2) = v42 + 1;
      v43 = &v31[16 * v42];
      *(v43 + 4) = v37;
      *(v43 + 5) = v39;
      v34 = v55 + v34;
      --v30;
      v0 = v40;
      v32 = v36;
    }

    while (v30);
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  v57 = v31;

  sub_100081FBC(&v57);
  v45 = v48;
  v44 = v49;
  v46 = v47;

  (*(v45 + 8))(v46, v44);
  return v57;
}

uint64_t sub_10007AD7C()
{
  v1 = *v0;
  v2 = sub_1000863FC();
  v61 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v60 = &v48 - v7;
  __chkstk_darwin(v6);
  v63 = &v48 - v8;
  v9 = sub_100001EEC(&qword_1000AE5E8, &qword_10008A080);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (&v48 - v13);
  v15 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  __chkstk_darwin(v15 - 8);
  v17 = &v48 - v16;
  v18 = sub_10008642C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100077A84();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v22 = &qword_1000AE3E0;
    v23 = &unk_100089E60;
    v24 = v17;
    return sub_10000649C(v24, v22, v23);
  }

  v53 = v1;
  v54 = v5;
  v51 = v18;
  v52 = v12;
  v55 = v14;
  v56 = v0;
  v50 = v19;
  (*(v19 + 32))(v21, v17, v18);
  v49 = v21;
  v25 = sub_10008640C();
  v26 = *(v25 + 16);
  v62 = v2;
  v59 = v26;
  if (v26)
  {
    v27 = 0;
    v57 = (v61 + 8);
    v58 = v61 + 16;
    v28 = (v61 + 32);
    v29 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v27 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v14 = ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v30 = *(v61 + 72);
      (*(v61 + 16))(v63, v14 + v25 + v30 * v27, v2);
      if (sub_1000863CC() == 1397716596 && v31 == 0xE400000000000000)
      {
        break;
      }

      v32 = sub_100087A1C();

      if (v32)
      {
        goto LABEL_12;
      }

      (*v57)(v63, v2);
LABEL_6:
      if (v59 == ++v27)
      {
        goto LABEL_18;
      }
    }

LABEL_12:
    v33 = *v28;
    (*v28)(v60, v63, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10006F7CC(0, v29[2] + 1, 1);
      v29 = v64;
    }

    v36 = v29[2];
    v35 = v29[3];
    if (v36 >= v35 >> 1)
    {
      sub_10006F7CC((v35 > 1), v36 + 1, 1);
      v29 = v64;
    }

    v29[2] = v36 + 1;
    v37 = v14 + v29 + v36 * v30;
    v2 = v62;
    v33(v37, v60, v62);
    goto LABEL_6;
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_18:

  v38 = v29[2];
  v40 = v55;
  v39 = v56;
  v27 = v54;
  if (!v38)
  {
LABEL_23:

    v42 = 1;
    v43 = v62;
LABEL_25:
    v44 = v61;
    (*(v61 + 56))(v40, v42, 1, v43);
    type metadata accessor for CarrySettingsDetailViewModel(0, *(v53 + 80), *(v53 + 88), v45);
    swift_getWitnessTable();
    sub_10008676C();
    sub_10008679C();

    v46 = v52;
    sub_10000E4A4(v40, v52, &qword_1000AE5E8, &qword_10008A080);
    sub_10007B560(v46);
    if ((*(v44 + 48))(v40, 1, v43) != 1)
    {
      sub_1000791E0(0, 0);
    }

    (*(v50 + 8))(v49, v51);
    v22 = &qword_1000AE5E8;
    v23 = &qword_10008A080;
    v24 = v40;
    return sub_10000649C(v24, v22, v23);
  }

  v41 = 0;
  v14 = (v61 + 8);
  while (v41 < v29[2])
  {
    (*(v61 + 16))(v27, v29 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v41, v62);
    if (sub_10007B438(v27, v39, &CarrySettings.LivabilityTrainAudiences.trainName.getter, &qword_1000B3C38))
    {

      v43 = v62;
      (*(v61 + 32))(v40, v27, v62);
      v42 = 0;
      goto LABEL_25;
    }

    ++v41;
    (*v14)(v27, v62);
    if (v38 == v41)
    {
      goto LABEL_23;
    }
  }

LABEL_30:
  __break(1u);

  result = (*v14)(v27, v62);
  __break(1u);
  return result;
}

uint64_t sub_10007B438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v6 = a3();
  v8 = (a2 + *a4);
  v9 = v8[1];
  if (v9)
  {
    if (v6 == *v8 && v9 == v7)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_100087A1C();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_10007B4E8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v5 = (v4 + *a3);
  *v5 = a1;
  v5[1] = a2;

  return a4();
}

uint64_t sub_10007B584()
{
  v1 = v0;
  v2 = *v0;
  v18 = 0xE000000000000000;
  sub_1000877DC(77);
  v19 = 0;
  v20 = 0xE000000000000000;
  v21._object = 0x80000001000903E0;
  v21._countAndFlagsBits = 0xD00000000000002DLL;
  sub_1000871BC(v21);
  v22._countAndFlagsBits = sub_100077ABC();
  sub_1000871BC(v22);

  v23._countAndFlagsBits = 0x20646C696843090ALL;
  v23._object = 0xEF203A746E756F43;
  sub_1000871BC(v23);
  v17 = sub_100077EA8();
  v24._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v24);

  v25._countAndFlagsBits = 0x656369766544090ALL;
  v25._object = 0xEB00000000203A73;
  sub_1000871BC(v25);
  v3 = qword_1000B3C40;
  swift_beginAccess();
  v16 = *(v1 + v3);
  v15[2] = *(v2 + 80);
  v15[3] = *(v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v7 = sub_10008739C();

  WitnessTable = swift_getWitnessTable();
  v10 = sub_100013210(sub_10008462C, v15, v7, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v9);

  v16 = v10;
  sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
  sub_100006454(qword_1000AE2B8, &qword_1000AE2B0, &qword_10008D800, &protocol conformance descriptor for [A]);
  v11 = sub_10008712C();
  v13 = v12;

  v26._countAndFlagsBits = v11;
  v26._object = v13;
  sub_1000871BC(v26);

  return v19;
}

uint64_t sub_10007B858@<X0>(uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  result = sub_100049490();
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_10007B94C@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v18 = a1;
  v5 = sub_10008614C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008645C();
  v9 = sub_10008613C();
  (*(v6 + 8))(v8, v5);
  v10 = sub_1000776A0(v9);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = _s11DeviceModelVMa_0(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  a4[3] = v14;
  a4[4] = &off_1000A8868;
  v15 = sub_10002396C(a4);
  (*(*(v14 - 8) + 16))(v15, v18, v14);
  a4[5] = v10;
  type metadata accessor for ProfileListViewModel(0);
  return sub_10008608C();
}

uint64_t sub_10007BB1C@<X0>(uint64_t *a2@<X8>)
{
  sub_10008619C();
  v2 = sub_10008618C();
  v4 = v3;
  sub_1000861BC();
  type metadata accessor for ProfileViewModel(0);
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  sub_1000867AC();
  swift_endAccess();
  swift_beginAccess();
  sub_1000867AC();
  swift_endAccess();
  swift_beginAccess();
  sub_1000867AC();
  swift_endAccess();
  v6 = (v5 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_profileID);
  *v6 = v2;
  v6[1] = v4;
  swift_beginAccess();
  sub_1000867AC();
  swift_endAccess();
  swift_beginAccess();
  sub_1000867AC();
  result = swift_endAccess();
  *a2 = v5;
  return result;
}

uint64_t sub_10007BD08()
{
  v1[18] = v0;
  v1[19] = *v0;
  sub_100001EEC(&qword_1000AE5D8, &qword_10008A070);
  v1[20] = swift_task_alloc();
  sub_100001EEC(&qword_1000B04D0, &qword_10008D7F0);
  v1[21] = swift_task_alloc();
  v2 = sub_1000860EC();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  sub_1000873FC();
  v1[25] = sub_1000873EC();
  v4 = sub_1000873DC();
  v1[26] = v4;
  v1[27] = v3;

  return _swift_task_switch(sub_10007BE94, v4, v3);
}

uint64_t sub_10007BE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CarrySettingsDetailViewModel(0, *(v4[19] + 80), *(v4[19] + 88), a4);
  v4[28] = v5;
  sub_100059B74(0xD000000000000032, 0x8000000100090340, v5, &off_1000A9B40);
  v6 = [objc_opt_self() sharedInstance];
  v4[29] = v6;
  sub_100078330();
  v7 = sub_10008714C();

  sub_100077FA4();
  v8 = sub_10008714C();

  [v6 setAccountID:v7 password:v8 syncToKeychain:0];

  v4[2] = v4;
  v4[7] = v4 + 32;
  v4[3] = sub_10007C074;
  v9 = swift_continuation_init();
  v4[17] = sub_100001EEC(&qword_1000B04D8, &qword_10008D7F8);
  v4[10] = _NSConcreteStackBlock;
  v4[11] = 1107296256;
  v4[12] = sub_10007C5F0;
  v4[13] = &unk_1000A9C60;
  v4[14] = v9;
  [v6 validateWithCompletionHandler:v4 + 10];

  return _swift_continuation_await(v4 + 2);
}

uint64_t sub_10007C074()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_10007C554;
  }

  else
  {
    v5 = sub_10007C1A4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10007C1A4()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  sub_100059B74(0xD000000000000038, 0x80000001000903A0, v0[28], &off_1000A9B40);
  sub_100078330();
  sub_100077FA4();
  v6 = sub_10008604C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_1000860CC();
  (*(v2 + 16))(v5, v1, v3);
  (*(v2 + 56))(v5, 0, 1, v3);
  v7 = swift_task_alloc();
  v0[31] = v7;
  *v7 = v0;
  v7[1] = sub_10007C348;
  v8 = v0[20];

  return sub_10007DD80(v8);
}

uint64_t sub_10007C348()
{
  v1 = *v0;
  v2 = *(*v0 + 160);

  sub_10000649C(v2, &qword_1000AE5D8, &qword_10008A070);
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);

  return _swift_task_switch(sub_10007C49C, v4, v3);
}

uint64_t sub_10007C49C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10007C554()
{
  v1 = *(v0 + 232);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007C5F0(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100001FB4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10007C6BC()
{
  v1[10] = v0;
  v1[11] = *v0;
  v2 = sub_10008632C();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = sub_10008623C();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  sub_100001EEC(&qword_1000AE5F8, &unk_10008A090);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  sub_1000873FC();
  v1[23] = sub_1000873EC();
  v5 = sub_1000873DC();
  v1[24] = v5;
  v1[25] = v4;

  return _swift_task_switch(sub_10007C89C, v5, v4);
}

uint64_t sub_10007C89C()
{
  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  (*(v6 + 56))(v0[22], 1, 1, v5);
  v7 = *(v3 + 104);
  v7(v2, enum case for CarrySettings.ProfileVariant.unspecified(_:), v4);
  sub_100079EE8();
  v8 = *(v6 + 48);
  v9 = v8(v1, 1, v5);
  sub_10000649C(v1, &qword_1000AE5F8, &unk_10008A090);
  if (v9 == 1)
  {
    v10 = v0[19];
    v11 = v0[12];
    sub_1000793C4();
    v12 = v8(v10, 1, v11);
    sub_10000649C(v10, &qword_1000AE5F8, &unk_10008A090);
    if (v12 == 1)
    {
      goto LABEL_6;
    }

    sub_1000793C4();
    v13 = &enum case for CarrySettings.ProfileVariant.colorAudience(_:);
  }

  else
  {
    sub_100079EE8();
    v13 = &enum case for CarrySettings.ProfileVariant.livabilityTrain(_:);
  }

  v14 = v0[22];
  v15 = v0[20];
  v16 = v0[17];
  v17 = v0[15];
  (*(v0[16] + 8))(v16, v17);
  sub_10000649C(v14, &qword_1000AE5F8, &unk_10008A090);
  sub_1000845A4(v15, v14);
  v7(v16, *v13, v17);
LABEL_6:
  v18 = v0[18];
  v19 = v0[12];
  sub_10000E4A4(v0[22], v18, &qword_1000AE5F8, &unk_10008A090);
  v20 = v8(v18, 1, v19);
  v21 = v0[18];
  if (v20 == 1)
  {
    v22 = v0[22];
    v24 = v0[16];
    v23 = v0[17];
    v25 = v0[15];

    (*(v24 + 8))(v23, v25);
    sub_10000649C(v22, &qword_1000AE5F8, &unk_10008A090);
    sub_10000649C(v21, &qword_1000AE5F8, &unk_10008A090);

    v26 = v0[1];

    return v26();
  }

  else
  {
    v28 = v0[11];
    v29 = v0[10];
    (*(v0[13] + 32))(v0[14], v0[18], v0[12]);
    sub_1000877DC(20);
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    v52._object = 0x8000000100090300;
    v52._countAndFlagsBits = 0xD000000000000012;
    sub_1000871BC(v52);
    sub_1000878DC();
    v30 = v0[5];
    v31 = v0[6];
    v32 = *(v28 + 80);
    v33 = *(v28 + 88);
    v35 = type metadata accessor for CarrySettingsDetailViewModel(0, v32, v33, v34);
    v0[26] = v35;
    sub_100059B74(v30, v31, v35, &off_1000A9B40);

    v0[27] = *(v29 + qword_1000B3C48);
    v36 = qword_1000B3C40;
    swift_beginAccess();
    v0[9] = *(v29 + v36);
    v37 = swift_task_alloc();
    *v37 = v32;
    v37[1] = v33;
    KeyPath = swift_getKeyPath();

    v39 = swift_task_alloc();
    v39[2] = v32;
    v39[3] = v33;
    v39[4] = KeyPath;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    _s11DeviceModelVMa_0(255, AssociatedTypeWitness, AssociatedConformanceWitness, v42);
    v43 = sub_10008739C();
    swift_unknownObjectRetain();

    WitnessTable = swift_getWitnessTable();
    v46 = sub_100013210(sub_10008438C, v39, v43, AssociatedTypeWitness, &type metadata for Never, WitnessTable, &protocol witness table for Never, v45);
    v0[28] = v46;

    v50 = (*(v33 + 88) + **(v33 + 88));
    v47 = swift_task_alloc();
    v0[29] = v47;
    *v47 = v0;
    v47[1] = sub_10007CEAC;
    v48 = v0[17];
    v49 = v0[14];

    return v50(v49, v48, v46, v32, v33);
  }
}

uint64_t sub_10007CEAC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  swift_unknownObjectRelease();
  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_10007D130;
  }

  else
  {
    v5 = sub_10007D01C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10007D01C()
{
  v1 = v0[22];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v7 = v0[13];

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_10000649C(v1, &qword_1000AE5F8, &unk_10008A090);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10007D130()
{
  v1 = v0[26];
  v2 = v0[22];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v10 = v0[15];
  v7 = v0[12];
  v6 = v0[13];

  sub_1000877DC(29);
  v0[7] = 0;
  v0[8] = 0xE000000000000000;
  v12._object = 0x8000000100090320;
  v12._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1000871BC(v12);
  sub_1000878DC();
  sub_100059AE8(90, v0[7], v0[8], v1, &off_1000A9B40);

  swift_willThrow();
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v3, v10);
  sub_10000649C(v2, &qword_1000AE5F8, &unk_10008A090);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10007D2E8()
{
  v1[2] = v0;
  v1[3] = *v0;
  sub_100001EEC(&qword_1000AE5D8, &qword_10008A070);
  v1[4] = swift_task_alloc();
  sub_1000873FC();
  v1[5] = sub_1000873EC();
  v3 = sub_1000873DC();
  v1[6] = v3;
  v1[7] = v2;

  return _swift_task_switch(sub_10007D3E0, v3, v2);
}

uint64_t sub_10007D3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[4];
  v6 = type metadata accessor for CarrySettingsDetailViewModel(0, *(v4[3] + 80), *(v4[3] + 88), a4);
  sub_100059B74(0xD000000000000021, 0x80000001000902D0, v6, &off_1000A9B40);
  v7 = sub_1000860EC();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_task_alloc();
  v4[8] = v8;
  *v8 = v4;
  v8[1] = sub_10007D4F0;
  v9 = v4[4];

  return sub_10007DD80(v9);
}

uint64_t sub_10007D4F0()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_10000649C(v2, &qword_1000AE5D8, &qword_10008A070);
  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return _swift_task_switch(sub_10007D644, v4, v3);
}

uint64_t sub_10007D644()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007D6AC()
{
  v1[8] = v0;
  v1[9] = *v0;
  sub_1000873FC();
  v1[10] = sub_1000873EC();
  v3 = sub_1000873DC();
  v1[11] = v3;
  v1[12] = v2;

  return _swift_task_switch(sub_10007D76C, v3, v2);
}

uint64_t sub_10007D76C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = qword_1000B3C40;
  swift_beginAccess();
  v0[5] = *(v2 + v3);
  v4 = swift_task_alloc();
  v5 = *(v1 + 80);
  *v4 = v5;
  v6 = *(v1 + 88);
  v4[1] = v6;
  KeyPath = swift_getKeyPath();

  v8 = swift_task_alloc();
  v8[2] = v5;
  v8[3] = v6;
  v8[4] = KeyPath;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0(255, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v12 = sub_10008739C();

  WitnessTable = swift_getWitnessTable();
  v15 = sub_100013210(sub_100084B54, v8, v12, AssociatedTypeWitness, &type metadata for Never, WitnessTable, &protocol witness table for Never, v14);
  v0[13] = v15;

  sub_1000877DC(17);
  v23._countAndFlagsBits = 0x20676E6964616F4CLL;
  v23._object = 0xEF206E6F204E5056;
  sub_1000871BC(v23);
  v0[6] = v15;
  v0[14] = sub_10008739C();
  v0[15] = swift_getWitnessTable();
  sub_1000879FC();
  v17 = type metadata accessor for CarrySettingsDetailViewModel(0, v5, v6, v16);
  v0[16] = v17;
  sub_100059B74(0, 0xE000000000000000, v17, &off_1000A9B40);

  v0[17] = *(v2 + qword_1000B3C48);
  v18 = *(v6 + 56);
  swift_unknownObjectRetain();
  v21 = (v18 + *v18);
  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = sub_10007DADC;

  return v21(v15, v5, v6);
}

uint64_t sub_10007DADC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10007DC68;
  }

  else
  {

    swift_unknownObjectRelease();
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10007DC04;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10007DC04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007DC68()
{
  v1 = v0[16];
  v2 = v0[13];

  swift_unknownObjectRelease();
  sub_1000877DC(28);
  v6._object = 0x80000001000902B0;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1000871BC(v6);
  v0[7] = v2;
  sub_1000879FC();

  sub_100059AE8(90, 0, 0xE000000000000000, v1, &off_1000A9B40);

  swift_willThrow();
  v3 = v0[1];

  return v3();
}

uint64_t sub_10007DD80(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = *v1;
  sub_1000873FC();
  v2[17] = sub_1000873EC();
  v4 = sub_1000873DC();
  v2[18] = v4;
  v2[19] = v3;

  return _swift_task_switch(sub_10007DE40, v4, v3);
}

uint64_t sub_10007DE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 120);
  v5 = *(v4 + 128);
  v7 = *(v4 + 112);
  v8 = *(v5 + 80);
  v9 = *(v5 + 88);
  *(v4 + 160) = type metadata accessor for CarrySettingsDetailViewModel(0, v8, v9, a4);
  swift_getWitnessTable();
  sub_10008676C();
  sub_10008679C();

  v10 = qword_1000B3C40;
  *(v4 + 168) = qword_1000B3C40;
  swift_beginAccess();
  *(v4 + 88) = *(v6 + v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0(255, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  *(v4 + 176) = sub_10008739C();
  swift_getWitnessTable();
  sub_10008758C();
  *(v4 + 56) = *(v4 + 40);
  v14 = swift_task_alloc();
  *(v14 + 16) = v6;
  *(v14 + 24) = v7;
  sub_100001EEC(&qword_1000B04B8, &qword_10008D7E8);
  sub_1000844C4();
  sub_10008725C();

  *(v4 + 184) = *(v6 + qword_1000B3C48);
  v15 = *(v6 + v10);
  *(v4 + 192) = v15;
  v16 = *(v9 + 96);
  swift_unknownObjectRetain();

  v19 = (v16 + *v16);
  v17 = swift_task_alloc();
  *(v4 + 200) = v17;
  *v17 = v4;
  v17[1] = sub_10007E128;

  return v19(v15, v8, v9);
}

uint64_t sub_10007E128()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_10007E2AC;
  }

  else
  {

    swift_unknownObjectRelease();
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_10007E24C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10007E24C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007E2AC()
{
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[20];
  v4 = v0[15];

  swift_unknownObjectRelease();
  sub_1000877DC(42);
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  v8._object = 0x8000000100090250;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  sub_1000871BC(v8);
  v0[12] = v1;
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  v9._countAndFlagsBits = 0x736C65646F6D202CLL;
  v9._object = 0xEA0000000000203ALL;
  sub_1000871BC(v9);
  v0[13] = *(v4 + v2);
  swift_getWitnessTable();
  sub_1000879FC();
  sub_100059AE8(60, v0[9], v0[10], v3, &off_1000A9B40);

  v5 = v0[1];

  return v5();
}

void sub_10007E448(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v49 = a3;
  v55 = a1;
  v4 = *a2;
  v5 = sub_100001EEC(&qword_1000AE5D8, &qword_10008A070);
  __chkstk_darwin(v5 - 8);
  v50 = &v43 - v6;
  v7 = sub_100001EEC(&qword_1000AE638, &qword_10008A0D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - v8;
  v10 = sub_10008614C();
  v53 = *(v10 - 1);
  v54 = v10;
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 88);
  v14 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = v13;
  v44 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = _s11DeviceModelVMa_0(0, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - v20;
  v22 = sub_10008639C();
  v52 = *(v22 - 8);
  __chkstk_darwin(v22);
  v51 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v55;
  v25 = qword_1000B3C40;
  swift_beginAccess();
  v55 = a2;
  v46 = v25;

  v26 = v24;
  sub_1000873CC();

  sub_10008645C();
  v47 = v18;
  v48 = v19;
  (*(v19 + 8))(v21, v18);
  sub_10008611C();
  (*(v53 + 8))(v12, v54);
  v27 = v52;
  if ((*(v52 + 48))(v9, 1, v22) == 1)
  {
    sub_10000649C(v9, &qword_1000AE638, &qword_10008A0D0);
    return;
  }

  v28 = v51;
  (*(v27 + 32))(v51, v9, v22);
  v29 = objc_allocWithZone(NSUserDefaults);
  v30 = sub_10008714C();
  v31 = [v29 initWithSuiteName:v30];

  v32 = v28;
  if (v31)
  {
    v33 = v31;
    v34 = sub_10008714C();
    v35 = [v33 BOOLForKey:v34];

    if (v35)
    {
      v37 = type metadata accessor for CarrySettingsDetailViewModel(0, v44, v45, v36);
      sub_100059B74(0xD000000000000037, 0x8000000100090270, v37, &off_1000A9B40);
      sub_10008638C();
LABEL_7:
      sub_10000E4A4(v49, v50, &qword_1000AE5D8, &qword_10008A070);
      v38 = v27;
      v39 = v55;
      v40 = v46;
      swift_beginAccess();
      v54 = v31;
      v41 = v47;
      sub_10008739C();
      sub_10008731C();
      sub_100082A94(v26, *(v39 + v40), v41);
      v42 = sub_10008644C();
      sub_10008610C();
      v42(v56, 0);
      nullsub_1();
      swift_endAccess();

      (*(v38 + 8))(v51, v22);
      return;
    }
  }

  if (sub_10008638C())
  {
    goto LABEL_7;
  }

  (*(v27 + 8))(v32, v22);
}

uint64_t sub_10007EA34()
{
  v1 = qword_1000B03C0;
  v2 = sub_100001EEC(&qword_1000AE608, &unk_10008A0A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1000B03C8;
  v4 = sub_100001EEC(&qword_1000AE9A0, &qword_10008BC70);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + qword_1000B03D0, v4);
  v6 = qword_1000B03D8;
  v7 = sub_100001EEC(&qword_1000AE600, &unk_10008D650);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = qword_1000B03E0;
  v9 = sub_100001EEC(&qword_1000AE5F0, &qword_10008A088);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v11 = qword_1000B03E8;
  v12 = sub_100001EEC(&qword_1000AE3E8, &qword_100089D70);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);

  v10(v0 + qword_1000B03F0, v9);
  v13 = qword_1000B03F8;
  v14 = sub_100001EEC(&qword_1000B04E0, &unk_10008DD10);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);

  v15 = qword_1000B0400;
  v16 = sub_100001EEC(&qword_1000AE5E0, &qword_10008A078);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_10007ED10()
{
  sub_10007EA34();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

Swift::Int sub_10007ED80()
{
  sub_100087ADC();
  sub_100087AEC(v0);
  return sub_100087AFC();
}

uint64_t sub_10007EE14()
{
  v0 = sub_100084494();

  return v0;
}

uint64_t sub_10007EE5C()
{
  v0 = sub_100084480();

  return v0;
}

uint64_t sub_10007EE98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000324C;

  return sub_10007BD08();
}

uint64_t sub_10007EF24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002740;

  return sub_10007C6BC();
}

uint64_t sub_10007EFB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002740;

  return sub_10007D2E8();
}

uint64_t sub_10007F03C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000324C;

  return sub_10007D6AC();
}

uint64_t sub_10007F0C8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for CarrySettingsDetailViewModel(0, *(a1 + 80), *(a1 + 88), a3);
  result = sub_10008676C();
  *a4 = result;
  return result;
}

Swift::Int sub_10007F1F0(uint64_t a1)
{
  sub_100087ADC();
  sub_10007F1C4();
  return sub_100087AFC();
}

uint64_t sub_10007F230@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for CarrySettingsDetailViewModel(0, *(a1 + 80), *(a1 + 88), a3);
  result = sub_1000877FC();
  *a4 = result;
  return result;
}

uint64_t sub_10007F284(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[4] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[5] = result;
  return result;
}

uint64_t sub_10007F320(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + qword_1000B3C50);
  v3 = *(a2 + qword_1000B3C50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return static Array<A>.== infix(_:_:)(v2, v3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_10007F3C4(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_100002238();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_10008781C();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_10008781C();
LABEL_26:
        v17 = v16;
        v18 = sub_10008764C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_10008764C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_10008793C();
  }

  result = sub_10008793C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_10007F604@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100078330();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10007F630(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000783F8(v1, v2);
}

uint64_t sub_10007F6BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100079564();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10007F714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_100001EEC(a5, a6);
  __chkstk_darwin(v11 - 8);
  v13 = &v15 - v12;
  sub_10000E4A4(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_10007F7C0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_100087ADC();
  sub_1000871AC();
  v8 = sub_100087AFC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_100087A1C() & 1) != 0)
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

    sub_100080C7C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10007F910(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_100087ACC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
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
    sub_100080DFC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10007F9F0(Swift::UInt *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_10008773C();

    if (v8)
    {

      sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
    }

    else
    {
      result = sub_10008772C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v19 = sub_10007FE6C(v7, result + 1);
        v20 = *(v19 + 16);
        if (*(v19 + 24) <= v20)
        {
          sub_1000806DC(v20 + 1);
        }

        sub_100080B54(v21, v19);

        *v3 = v19;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    sub_100087ADC();
    sub_100087AEC(a2);
    v10 = sub_100087AFC();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      v14 = qword_1000B3C50;
      while (1)
      {
        v15 = *(*(*(v6 + 48) + 8 * v12) + qword_1000B3C50);
        v16 = *(a2 + v14);

        LOBYTE(v15) = sub_10007F3C4(v15, v16);

        if (v15)
        {
          break;
        }

        v12 = (v12 + 1) & v13;
        if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v12);

      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v2;

      sub_100080F1C(v18, v12, isUniquelyReferenced_nonNull_native);
      *v2 = v24;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_10007FC54(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_10008773C();

    if (v9)
    {

      sub_100002238();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_10008772C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100080078(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_10008092C(v20 + 1);
    }

    v18 = v8;
    sub_100080BF8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100002238();
  v11 = sub_10008763C(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1000810BC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_10008764C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_10007FE6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100001EEC(&qword_1000AE9E0, qword_10008AA08);
    v2 = sub_1000877BC();
    v15 = v2;
    sub_1000876EC();
    for (; sub_10008775C(); ++*(v2 + 16))
    {
      sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_1000806DC(v9 + 1);
        v2 = v15;
      }

      sub_100087ADC();
      sub_100087AEC(v14);
      result = sub_100087AFC();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100080078(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100001EEC(&qword_1000B04B0, &qword_10008D7E0);
    v2 = sub_1000877BC();
    v15 = v2;
    sub_1000876EC();
    if (sub_10008775C())
    {
      sub_100002238();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10008092C(v9 + 1);
        }

        v2 = v15;
        result = sub_10008763C(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_10008775C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100080258(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001EEC(&qword_1000B04A8, &unk_10008D7D0);
  result = sub_1000877AC();
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
      sub_100087ADC();
      sub_1000871AC();
      result = sub_100087AFC();
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

uint64_t sub_1000804B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001EEC(&qword_1000AE9C8, &qword_10008A890);
  result = sub_1000877AC();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_100087ACC();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

uint64_t sub_1000806DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001EEC(&qword_1000AE9E0, qword_10008AA08);
  result = sub_1000877AC();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_100087ADC();
      sub_100087AEC(v17);
      result = sub_100087AFC();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10008092C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001EEC(&qword_1000B04B0, &qword_10008D7E0);
  result = sub_1000877AC();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_10008763C(*(v5 + 40));
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_100080B54(Swift::UInt a1, uint64_t a2)
{
  sub_100087ADC();
  sub_100087AEC(a1);
  sub_100087AFC();
  result = sub_1000876CC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100080BF8(uint64_t a1, void *a2)
{
  sub_10008763C(a2[5]);
  result = sub_1000876CC();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_100080C7C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_100080258(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10008121C();
      goto LABEL_16;
    }

    sub_100081758(v8 + 1);
  }

  v10 = *v4;
  sub_100087ADC();
  sub_1000871AC();
  result = sub_100087AFC();
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

      result = sub_100087A1C();
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
  result = sub_100087A4C();
  __break(1u);
  return result;
}

uint64_t sub_100080DFC(uint64_t result, unint64_t a2, char a3)
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
    sub_1000804B8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100081378();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100081990(v5 + 1);
  }

  v8 = *v3;
  result = sub_100087ACC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v11 + 48) + 8 * a2) = v4;
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
  result = sub_100087A4C();
  __break(1u);
  return result;
}

Swift::UInt sub_100080F1C(Swift::UInt result, Swift::UInt a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000806DC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1000814B8();
      goto LABEL_12;
    }

    sub_100081B80(v6 + 1);
  }

  v8 = *v3;
  sub_100087ADC();
  sub_100087AEC(v5);
  result = sub_100087AFC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = qword_1000B3C50;
    do
    {
      sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
      v12 = *(*(*(v8 + 48) + 8 * a2) + qword_1000B3C50);
      v13 = *(v5 + v11);

      LOBYTE(v12) = sub_10007F3C4(v12, v13);

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v5;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100087A4C();
  __break(1u);
  return result;
}

void sub_1000810BC(unint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10008092C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100081608();
      goto LABEL_12;
    }

    sub_100081DA8(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_10008763C(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100002238();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_10008764C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_100087A4C();
  __break(1u);
}

void *sub_10008121C()
{
  v1 = v0;
  sub_100001EEC(&qword_1000B04A8, &unk_10008D7D0);
  v2 = *v0;
  v3 = sub_10008779C();
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

void *sub_100081378()
{
  v1 = v0;
  sub_100001EEC(&qword_1000AE9C8, &qword_10008A890);
  v2 = *v0;
  v3 = sub_10008779C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void *sub_1000814B8()
{
  v1 = v0;
  sub_100001EEC(&qword_1000AE9E0, qword_10008AA08);
  v2 = *v0;
  v3 = sub_10008779C();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

id sub_100081608()
{
  v1 = v0;
  sub_100001EEC(&qword_1000B04B0, &qword_10008D7E0);
  v2 = *v0;
  v3 = sub_10008779C();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_100081758(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001EEC(&qword_1000B04A8, &unk_10008D7D0);
  result = sub_1000877AC();
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
      sub_100087ADC();

      sub_1000871AC();
      result = sub_100087AFC();
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

uint64_t sub_100081990(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001EEC(&qword_1000AE9C8, &qword_10008A890);
  result = sub_1000877AC();
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_100087ACC();
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
      *(*(v5 + 48) + 8 * v12) = v16;
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

uint64_t sub_100081B80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001EEC(&qword_1000AE9E0, qword_10008AA08);
  result = sub_1000877AC();
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_100087ADC();
      sub_100087AEC(v16);
      result = sub_100087AFC();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
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

        v2 = v1;
        goto LABEL_26;
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

uint64_t sub_100081DA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001EEC(&qword_1000B04B0, &qword_10008D7E0);
  result = sub_1000877AC();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_10008763C(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
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

        v2 = v25;
        goto LABEL_26;
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

Swift::Int sub_100081FBC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100082AE8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100082028(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100082028(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000879BC(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_10008733C();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000821F0(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100082120(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100082120(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_100087A1C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000821F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_100082A80(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1000827CC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_100087A1C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_100087A1C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10006ED18(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10006ED18((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1000827CC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100082A80(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1000829F4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_100087A1C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1000827CC(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_100087A1C() & 1) != 0)
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
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_100087A1C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1000829F4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100082A80(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100082A94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

Swift::UInt sub_100082AFC(Swift::UInt result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_10008774C();
      sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
      swift_dynamicCast();
      return v12;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    result = sub_10008770C();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_10008771C();
    sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
    swift_dynamicCast();
    sub_100087ADC();
    sub_100087AEC(v12);
    v6 = sub_100087AFC();
    v7 = -1 << *(a4 + 32);
    v5 = v6 & ~v7;
    if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v8 = ~v7;
      v9 = qword_1000B3C50;
      do
      {
        v10 = *(*(*(a4 + 48) + 8 * v5) + qword_1000B3C50);
        v11 = *(v12 + v9);

        LOBYTE(v10) = sub_10007F3C4(v10, v11);

        if (v10)
        {
          goto LABEL_16;
        }

        v5 = (v5 + 1) & v8;
      }

      while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
    }

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v5)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }
}

uint64_t sub_100082D20(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000874DC();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10007F7C0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100082DB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000874DC();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10007F910(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100082E2C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_18:
    sub_10008793C();
  }

  sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
  sub_100006454(&qword_1000AE5C0, &qword_1000AE5B8, &unk_10008DD20, &unk_10008D604);
  result = sub_1000874DC();
  v10 = result;
  if (!v2)
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v2)
      {
        v7 = sub_10008781C();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_14:
          __break(1u);
          return v10;
        }
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v7 = *(a1 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_14;
        }
      }

      sub_10007F9F0(&v9, v7);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }
  }

  v5 = result;
  v4 = sub_10008793C();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100082FA0(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100002238();
    sub_100084428();
    result = sub_1000874DC();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_10008781C();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10007FC54(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_10008793C();
  }

  v5 = result;
  v4 = sub_10008793C();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1000830D0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

char *sub_100083124(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  WitnessTable = a2;
  v109 = a1;
  v96 = *v2;
  v4 = sub_100001EEC(&qword_1000AE5E0, &qword_10008A078);
  v107 = *(v4 - 8);
  v108 = v4;
  __chkstk_darwin(v4);
  v110 = v94 - v5;
  v6 = sub_100001EEC(&qword_1000AE5E8, &qword_10008A080);
  __chkstk_darwin(v6 - 8);
  v100 = v94 - v7;
  v104 = sub_100001EEC(&qword_1000AE3E8, &qword_100089D70);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v99 = v94 - v8;
  v9 = sub_100001EEC(&qword_1000AE5F0, &qword_10008A088);
  v105 = *(v9 - 8);
  v106 = v9;
  __chkstk_darwin(v9);
  v98 = v94 - v10;
  v11 = sub_100001EEC(&qword_1000AE5F8, &unk_10008A090);
  __chkstk_darwin(v11 - 8);
  v13 = v94 - v12;
  v14 = sub_100001EEC(&qword_1000AE600, &unk_10008D650);
  v102 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v94 - v15;
  v17 = sub_100001EEC(&qword_1000AE608, &unk_10008A0A0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v94 - v19;
  v21 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  __chkstk_darwin(v21 - 8);
  v23 = v94 - v22;
  v24 = qword_1000B03C0;
  v25 = sub_10008642C();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  v97 = *(v96 + 80);
  v96 = *(v96 + 88);
  sub_1000792B4(v23, v26, v27, &qword_1000AE3E0, &unk_100089E60);
  v94[9] = v18;
  v28 = *(v18 + 32);
  v94[5] = v24;
  v94[10] = v17;
  v28(&v3[v24], v20, v17);
  v29 = qword_1000B03D8;
  v117 = 0;
  v118 = 0;
  sub_100001EEC(&qword_1000AE610, &unk_10008C960);
  sub_1000867AC();
  v30 = v3;
  v31 = *(v102 + 32);
  v94[8] = v29;
  v94[11] = v14;
  v31(&v3[v29], v16, v14);
  v32 = qword_1000B03E0;
  v33 = sub_10008632C();
  v95 = *(*(v33 - 8) + 56);
  v34 = v13;
  (v95)(v13, 1, 1, v33);
  v35 = v98;
  sub_1000792B4(v34, v36, v37, &qword_1000AE5F8, &unk_10008A090);
  v38 = *(v105 + 32);
  v94[7] = v32;
  v39 = v106;
  v38(&v3[v32], v35, v106);
  v40 = qword_1000B03E8;
  LOBYTE(v117) = 1;
  v41 = v99;
  sub_1000867AC();
  v42 = *(v103 + 32);
  v94[6] = v40;
  v42(&v30[v40], v41, v104);
  v43 = &v30[qword_1000B3C30];
  *v43 = 0;
  *(v43 + 1) = 0;
  v94[4] = v43;
  v44 = qword_1000B03F0;
  (v95)(v34, 1, 1, v33);
  sub_1000792B4(v34, v45, v46, &qword_1000AE5F8, &unk_10008A090);
  v99 = v44;
  v47 = v39;
  v48 = v96;
  v38(&v30[v44], v35, v47);
  v49 = v97;
  v50 = &v30[qword_1000B3C38];
  *v50 = 0;
  *(v50 + 1) = 0;
  v95 = v50;
  v51 = qword_1000B0400;
  v52 = sub_1000863FC();
  v53 = v100;
  (*(*(v52 - 8) + 56))(v100, 1, 1, v52);
  v54 = v110;
  sub_1000792B4(v53, v55, v56, &qword_1000AE5E8, &qword_10008A080);
  v57 = *(v107 + 32);
  v100 = v51;
  v57(&v30[v51], v54, v108);
  v94[3] = qword_1000B3C40;
  v58 = v109;
  *&v30[qword_1000B3C40] = v109;
  v98 = qword_1000B3C48;
  v110 = v30;
  *&v30[qword_1000B3C48] = WitnessTable;
  v117 = v58;
  v115 = v49;
  v116 = v48;
  KeyPath = swift_getKeyPath();
  v112 = v49;
  v113 = v48;
  v114 = KeyPath;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0(255, AssociatedTypeWitness, AssociatedConformanceWitness, v62);
  v63 = sub_10008739C();

  swift_unknownObjectRetain();
  WitnessTable = swift_getWitnessTable();
  v65 = sub_100013210(sub_100084B54, v111, v63, AssociatedTypeWitness, &type metadata for Never, WitnessTable, &protocol witness table for Never, v64);

  v94[2] = qword_1000B3C50;
  *&v110[qword_1000B3C50] = v65;
  v117 = v58;
  __chkstk_darwin(v66);
  v94[-2] = v49;
  v94[-1] = v48;
  v67 = swift_getKeyPath();
  v68 = __chkstk_darwin(v67);
  v94[-4] = v49;
  v94[-3] = v48;
  v94[-2] = v68;
  swift_getWitnessTable();
  v69 = sub_10008722C();

  v70 = sub_100082D20(v69);

  if (*(v70 + 16) == 1)
  {
    v71 = sub_1000779F4(v70);
    v73 = v72;

    v74 = v109;
    if (v73)
    {
      goto LABEL_6;
    }
  }

  else
  {

    v74 = v109;
  }

  v71 = 0;
  v73 = 0xE000000000000000;
LABEL_6:
  v75 = qword_1000B03D0;
  swift_beginAccess();
  v119 = v71;
  v120 = v73;
  v94[1] = v75;
  sub_1000867AC();
  v76 = swift_endAccess();
  v117 = v74;
  __chkstk_darwin(v76);
  v94[-2] = v49;
  v94[-1] = v48;
  v77 = swift_getKeyPath();
  v78 = __chkstk_darwin(v77);
  v80 = v79;
  v94[-4] = v79;
  v94[-3] = v48;
  v94[-2] = v78;
  v81 = sub_10008722C();

  v82 = sub_100082D20(v81);

  if (*(v82 + 16) != 1)
  {

    v86 = v80;
LABEL_10:

    v83 = 0;
    v85 = 0xE000000000000000;
    goto LABEL_11;
  }

  v83 = sub_1000779F4(v82);
  v85 = v84;

  v86 = v80;
  if (!v85)
  {
    goto LABEL_10;
  }

LABEL_11:
  v87 = v109;
  swift_beginAccess();
  v119 = v83;
  v120 = v85;
  sub_1000867AC();
  v88 = swift_endAccess();
  v117 = v87;
  __chkstk_darwin(v88);
  v94[-2] = v86;
  v94[-1] = v48;
  v89 = type metadata accessor for ProfileListViewModel(0);
  v91 = sub_100013210(sub_100084408, &v94[-4], v63, v89, &type metadata for Never, WitnessTable, &protocol witness table for Never, v90);

  v92 = v110;
  swift_beginAccess();
  v119 = v91;
  sub_100001EEC(&qword_1000AE618, &qword_10008A0B0);
  sub_1000867AC();
  swift_endAccess();
  return v92;
}

char *sub_10008428C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CarrySettingsDetailViewModel(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_100083124(a1, a2);
}

__n128 sub_100084314(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100084354@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1000860DC();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000843D0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1000860BC();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_100084428()
{
  result = qword_1000AFAB0;
  if (!qword_1000AFAB0)
  {
    sub_100002238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFAB0);
  }

  return result;
}

unint64_t sub_1000844C4()
{
  result = qword_1000B04C0;
  if (!qword_1000B04C0)
  {
    sub_100003200(&qword_1000B04B8, &qword_10008D7E8);
    sub_100084550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B04C0);
  }

  return result;
}

unint64_t sub_100084550()
{
  result = qword_1000B04C8;
  if (!qword_1000B04C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B04C8);
  }

  return result;
}

uint64_t sub_1000845A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AE5F8, &unk_10008A090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000846F8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10008634C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100084778@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008616C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000847B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100079F70();
  *a1 = result;
  return result;
}

uint64_t sub_100084880@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100079564();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100084950@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007912C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10008497C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000791E0(v1, v2);
}

uint64_t sub_1000849C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100078330();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100084A30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100077FA4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100084A74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_100084BCC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100084BE4(uint64_t a1)
{
  if ((*(a1 + 80) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 80) & 3;
  }
}

__n128 sub_100084C00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100084C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v106 = sub_100001EEC(&qword_1000B04F8, &qword_10008DEC0);
  __chkstk_darwin(v106);
  v107 = &v86 - v3;
  v101 = sub_100001EEC(&qword_1000B0500, &qword_10008DEC8);
  __chkstk_darwin(v101);
  v103 = (&v86 - v4);
  v105 = sub_100001EEC(&qword_1000B0508, &qword_10008DED0);
  __chkstk_darwin(v105);
  v104 = &v86 - v5;
  v102 = sub_100001EEC(&qword_1000B0510, &unk_10008DED8);
  __chkstk_darwin(v102);
  v7 = &v86 - v6;
  v8 = sub_100086BCC();
  v95 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001EEC(&qword_1000AEB98, &qword_10008AE40);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v86 - v13;
  v15 = sub_100001EEC(&qword_1000B0518, &qword_10008DEE8);
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  v21 = &v86 - v20;
  v22 = *a1;
  v23 = *(a1 + 8);
  v25 = *(a1 + 16);
  v24 = *(a1 + 24);
  v26 = *(a1 + 32);
  if (*(a1 + 80))
  {
    if (*(a1 + 80) == 1)
    {
      v96 = *(a1 + 16);
      v97 = v22;
      v98 = v26;
      v99 = v24;
      v27 = *(a1 + 40);
      v28 = *(a1 + 48);
      v29 = *(a1 + 56);
      v30 = *(a1 + 64);
      v31 = *(a1 + 72);
      v94 = v27;
      v95 = v31;
      v100 = v23;
      v92 = v30;
      v93 = v29;
      v91 = v28;
      sub_10001FAF0(a1, &v127);
      if (v23)
      {
        v32 = v98;
        sub_100085BF8(v97, v23, v96, v99, v98);
        v90 = v32;

        v33 = sub_100086CBC();
        v88 = v34;
        v89 = v33;
        v36 = v35;
        v87 = v37;
        KeyPath = swift_getKeyPath();
        v39 = sub_100086C3C();
        v40 = swift_getKeyPath();
        v41 = v36 & 1;
        LOBYTE(v127) = v36 & 1;
        v42 = sub_100086E2C();
        v23 = swift_getKeyPath();

        *&v144 = v89;
        *(&v144 + 1) = v88;
        LOBYTE(v145) = v41;
        *(&v145 + 1) = v87;
        *&v146 = KeyPath;
        v30 = v92;
        v29 = v93;
        BYTE8(v146) = 1;
        *&v147 = v40;
        v27 = v94;
        *(&v147 + 1) = v39;
        v28 = v91;
      }

      else
      {
        v42 = 0;
        v144 = 0u;
        v145 = 0u;
        v146 = 0u;
        v147 = 0u;
      }

      *&v148 = v23;
      *(&v148 + 1) = v42;
      v55 = v95;
      if (v28)
      {
        sub_100085BF8(v27, v28, v29, v30, v95);
        v90 = v55;

        v56 = sub_100086CBC();
        v88 = v57;
        v89 = v56;
        v59 = v58;
        v87 = v60;
        v61 = swift_getKeyPath();
        v62 = sub_100086C2C();
        v63 = swift_getKeyPath();
        v64 = v59 & 1;
        LOBYTE(v127) = v59 & 1;
        v65 = sub_100086E2C();
        v66 = swift_getKeyPath();

        *&v139 = v89;
        *(&v139 + 1) = v88;
        LOBYTE(v140) = v64;
        *(&v140 + 1) = v87;
        *&v141 = v61;
        BYTE8(v141) = 1;
        *&v142 = v63;
        *(&v142 + 1) = v62;
      }

      else
      {
        v66 = 0;
        v65 = 0;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
      }

      *&v143 = v66;
      *(&v143 + 1) = v65;
      v122 = v146;
      v123 = v147;
      v120 = v144;
      v121 = v145;
      v137[3] = v142;
      v137[4] = v143;
      v137[1] = v140;
      v137[2] = v141;
      v124 = v148;
      v125[0] = v144;
      v125[3] = v147;
      v125[4] = v148;
      v125[1] = v145;
      v125[2] = v146;
      v112 = v146;
      v113 = v147;
      v110 = v144;
      v111 = v145;
      v126[2] = v141;
      v126[3] = v142;
      v126[0] = v139;
      v126[1] = v140;
      v114 = v148;
      v115 = v139;
      v118 = v142;
      v119 = v143;
      v116 = v140;
      v117 = v141;
      v126[4] = v143;
      v127 = v144;
      v130 = v147;
      v131 = v148;
      v128 = v145;
      v129 = v146;
      v136 = v143;
      v137[0] = v139;
      v134 = v141;
      v135 = v142;
      v132 = v139;
      v133 = v140;
      sub_10000E4A4(&v144, v109, &qword_1000B0540, &qword_10008DEF8);
      sub_10000E4A4(&v139, v109, &qword_1000B0540, &qword_10008DEF8);
      sub_10000E4A4(v125, v109, &qword_1000B0540, &qword_10008DEF8);
      sub_10000E4A4(v126, v109, &qword_1000B0540, &qword_10008DEF8);
      sub_10000649C(v137, &qword_1000B0540, &qword_10008DEF8);
      v138[2] = v122;
      v138[3] = v123;
      v138[4] = v124;
      v138[0] = v120;
      v138[1] = v121;
      sub_10000649C(v138, &qword_1000B0540, &qword_10008DEF8);
      v67 = v117;
      v68 = v103;
      v103[6] = v116;
      v68[7] = v67;
      v69 = v119;
      v68[8] = v118;
      v68[9] = v69;
      v70 = v113;
      v68[2] = v112;
      v68[3] = v70;
      v71 = v115;
      v68[4] = v114;
      v68[5] = v71;
      v72 = v111;
      *v68 = v110;
      v68[1] = v72;
      swift_storeEnumTagMultiPayload();
      sub_10000E4A4(&v127, v109, &qword_1000B0548, &qword_10008DF00);
      sub_100001EEC(&qword_1000B0538, &qword_10008DEF0);
      sub_100006454(&qword_1000B0528, &qword_1000B0510, &unk_10008DED8, &protocol conformance descriptor for TupleView<A>);
      sub_100006454(&qword_1000B0530, &qword_1000B0538, &qword_10008DEF0, &protocol conformance descriptor for TupleView<A>);
      v73 = v104;
      sub_100086B8C();
      sub_10000E4A4(v73, v107, &qword_1000B0508, &qword_10008DED0);
      swift_storeEnumTagMultiPayload();
      sub_100085AC0();
      sub_100086B8C();
      sub_10000649C(&v127, &qword_1000B0548, &qword_10008DF00);
      sub_10000649C(&v139, &qword_1000B0540, &qword_10008DEF8);
      sub_10000649C(&v144, &qword_1000B0540, &qword_10008DEF8);
      sub_100085BA0(v94, v91, v93, v92, v95);
      sub_100085BA0(v97, v100, v96, v99, v98);
      return sub_10000649C(v73, &qword_1000B0508, &qword_10008DED0);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_100085AC0();
      return sub_100086B8C();
    }
  }

  else
  {
    v90 = v19;
    v91 = v18;
    v93 = v17;
    v94 = v7;
    v96 = v25;
    v97 = v22;
    v99 = v24;
    v100 = v23;
    v43 = v21;
    v98 = v26;
    sub_100085BF8(v22, v100, v25, v24, v26);
    sub_10008688C();
    sub_100086BBC();
    sub_100006454(&qword_1000AEBB8, &qword_1000AEB98, &qword_10008AE40, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100085DF4();
    v92 = v43;
    sub_100086CFC();
    (*(v95 + 1))(v10, v8);
    (*(v12 + 8))(v14, v11);
    if (v100)
    {
      sub_10001FAF0(a1, &v127);
      v95 = v98;

      v44 = sub_100086CBC();
      v97 = v45;
      v98 = v44;
      v47 = v46;
      v96 = v48;
      v89 = swift_getKeyPath();
      v49 = sub_100086C2C();
      v50 = swift_getKeyPath();
      v51 = v47 & 1;
      LOBYTE(v127) = v47 & 1;
      v52 = sub_100086E2C();
      v53 = swift_getKeyPath();

      *&v127 = v98;
      *(&v127 + 1) = v97;
      LOBYTE(v128) = v51;
      *(&v128 + 1) = v96;
      *&v129 = v89;
      BYTE8(v129) = 1;
      *&v130 = v50;
      *(&v130 + 1) = v49;
    }

    else
    {
      v53 = 0;
      v52 = 0;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
    }

    *&v131 = v53;
    *(&v131 + 1) = v52;
    v74 = v90;
    v75 = v91;
    v76 = *(v91 + 16);
    v77 = v93;
    (v76)(v90, v92, v93);
    v141 = v129;
    v142 = v130;
    v143 = v131;
    v139 = v127;
    v140 = v128;
    v78 = v94;
    v76();
    v79 = (v78 + *(sub_100001EEC(&qword_1000B0558, &qword_10008DF98) + 48));
    v81 = v142;
    v80 = v143;
    v147 = v142;
    v148 = v143;
    v83 = v140;
    v82 = v141;
    v145 = v140;
    v146 = v141;
    v84 = v139;
    v144 = v139;
    v79[2] = v141;
    v79[3] = v81;
    v79[4] = v80;
    *v79 = v84;
    v79[1] = v83;
    v109[3] = v81;
    v109[4] = v80;
    v109[1] = v83;
    v109[2] = v82;
    v109[0] = v84;
    sub_10000E4A4(&v127, v138, &qword_1000B0540, &qword_10008DEF8);
    sub_10000E4A4(&v144, v138, &qword_1000B0540, &qword_10008DEF8);
    sub_10000649C(v109, &qword_1000B0540, &qword_10008DEF8);
    v100 = *(v75 + 8);
    v100(v74, v77);
    sub_10000E4A4(v78, v103, &qword_1000B0510, &unk_10008DED8);
    swift_storeEnumTagMultiPayload();
    sub_100001EEC(&qword_1000B0538, &qword_10008DEF0);
    sub_100006454(&qword_1000B0528, &qword_1000B0510, &unk_10008DED8, &protocol conformance descriptor for TupleView<A>);
    sub_100006454(&qword_1000B0530, &qword_1000B0538, &qword_10008DEF0, &protocol conformance descriptor for TupleView<A>);
    v85 = v104;
    sub_100086B8C();
    sub_10000E4A4(v85, v107, &qword_1000B0508, &qword_10008DED0);
    swift_storeEnumTagMultiPayload();
    sub_100085AC0();
    sub_100086B8C();
    sub_10000649C(&v127, &qword_1000B0540, &qword_10008DEF8);
    sub_10000E018(a1);
    sub_10000649C(v85, &qword_1000B0508, &qword_10008DED0);
    sub_10000649C(v94, &qword_1000B0510, &unk_10008DED8);
    return (v100)(v92, v93);
  }
}

uint64_t sub_1000859E4@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 48);
  v18[2] = *(v2 + 32);
  v18[3] = v4;
  v18[4] = *(v2 + 64);
  v19 = *(v2 + 80);
  v5 = *(v2 + 16);
  v18[0] = *v2;
  v18[1] = v5;
  *a2 = sub_100086B3C();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v6 = sub_100001EEC(&qword_1000B04E8, &qword_10008DEB0);
  sub_100084C50(v18, a2 + *(v6 + 44));
  v7 = sub_100086BEC();
  sub_10008686C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = sub_100001EEC(&qword_1000B04F0, &qword_10008DEB8);
  v17 = a2 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

unint64_t sub_100085AC0()
{
  result = qword_1000B0520;
  if (!qword_1000B0520)
  {
    sub_100003200(&qword_1000B0508, &qword_10008DED0);
    sub_100006454(&qword_1000B0528, &qword_1000B0510, &unk_10008DED8, &protocol conformance descriptor for TupleView<A>);
    sub_100006454(&qword_1000B0530, &qword_1000B0538, &qword_10008DEF0, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0520);
  }

  return result;
}

void sub_100085BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }
}

void sub_100085BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v5 = a5;
  }
}

uint64_t sub_100085C44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000869CC();
  *a1 = result;
  return result;
}

uint64_t sub_100085C9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100086A0C();
  *a1 = result;
  return result;
}

uint64_t sub_100085CC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100086A0C();
  *a1 = result;
  return result;
}

uint64_t sub_100085D44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100086A2C();
  *a1 = result;
  return result;
}

uint64_t sub_100085D9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000869CC();
  *a1 = result;
  return result;
}

unint64_t sub_100085DF4()
{
  result = qword_1000B0550;
  if (!qword_1000B0550)
  {
    sub_100086BCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0550);
  }

  return result;
}

uint64_t sub_100085E50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 81))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 80);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100085E9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_100085EF8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 80) = a2;
  return result;
}

unint64_t sub_100085F3C()
{
  result = qword_1000B0560;
  if (!qword_1000B0560)
  {
    sub_100003200(&qword_1000B04F0, &qword_10008DEB8);
    sub_100006454(&qword_1000B0568, &unk_1000B0570, "\bc", &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0560);
  }

  return result;
}