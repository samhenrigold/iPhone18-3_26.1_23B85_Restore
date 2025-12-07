uint64_t sub_1008C4034(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 592) = v2;

  if (v2)
  {
    v7 = v6[48];
    v8 = sub_1008C4170;
  }

  else
  {
    v6[76] = a2;
    v6[75] = a1;
    v7 = v6[48];
    v8 = sub_1008C4264;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1008C4170()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1008C4264()
{
  v1 = Data.hexString.getter();
  v3 = v2;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = MobileGestalt_copy_productType_obj();

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_21;
  }

  v10 = result;
  v11 = MobileGestalt_copy_buildVersion_obj();

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  static Date.trustedNow.getter(v0[63]);
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_22;
  }

  v15 = result;
  v16 = MobileGestalt_copy_productVersion_obj();

  if (v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v18;
    v41 = v17;
  }

  else
  {
    v40 = 0xE000000000000000;
    v41 = 0;
  }

  v19 = [objc_opt_self() currentDevice];
  v43 = v12;
  v44 = v9;
  v42 = v14;
  if (v19 && (v20 = v19, v21 = [v19 uniqueDeviceIdentifier], v20, v21))
  {
    v22 = v7;
    v23 = v1;
    v24 = v3;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v22 = v7;
    v23 = v1;
    v24 = v3;
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  v28 = v0[65];
  v29 = v0[63];
  v30 = v0[64];
  v31 = v0[61];
  v32 = v0[62];
  v33 = v0[59];
  v34 = v0[60];
  *v28 = 2;
  *(v28 + 8) = v23;
  *(v28 + 16) = v24;
  *(v28 + 24) = 1;
  *(v28 + 32) = v22;
  *(v28 + 40) = v44;
  *(v28 + 48) = v43;
  *(v28 + 56) = v42;
  (*(v32 + 32))(v28 + v30[9], v29, v31);
  v35 = (v28 + v30[10]);
  *v35 = v41;
  v35[1] = v40;
  *(v28 + v30[11]) = 1;
  v36 = (v28 + v30[12]);
  *v36 = v25;
  v36[1] = v27;
  *(v28 + v30[13]) = 0;
  v37 = (v28 + v30[14]);
  *v37 = 7105633;
  v37[1] = 0xE300000000000000;
  sub_1008CCF78(v28, &v34[*(v33 + 20)], type metadata accessor for FindMyServiceDeviceListClientContext);
  *v34 = 1;
  v0[15] = v33;
  v0[16] = sub_1008CD500(&qword_1016AD2E0, type metadata accessor for FindMyServiceDeviceListPayload, &unk_101396948);
  v38 = sub_1000280DC(v0 + 12);
  sub_1008CCF78(v34, v38, type metadata accessor for FindMyServiceDeviceListPayload);
  v39 = swift_task_alloc();
  v0[77] = v39;
  *v39 = v0;
  v39[1] = sub_1008C45D8;

  return sub_100282B80((v0 + 12));
}

uint64_t sub_1008C45D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[78] = a1;
  v5[79] = a2;
  v5[80] = a3;
  v5[81] = v3;

  if (v3)
  {
    v6 = v5[48];

    return _swift_task_switch(sub_1008C4A9C, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v5[82] = v7;
    *v7 = v5;
    v7[1] = sub_1008C4750;

    return daemon.getter();
  }
}

uint64_t sub_1008C4750(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[83] = a1;

  v4 = swift_task_alloc();
  v2[84] = v4;
  v5 = type metadata accessor for AccountService();
  v2[85] = v5;
  v6 = sub_1008CD500(&qword_101697890, type metadata accessor for AccountService, &unk_10139AEB0);
  v2[86] = v6;
  *v4 = v3;
  v4[1] = sub_1008C490C;
  v7 = v2[70];
  v8 = v2[69];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1008C490C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[87] = a1;
  v3[88] = v1;

  if (v1)
  {
    v5 = v3[48];

    return _swift_task_switch(sub_1008C4D0C, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[89] = v6;
    *v6 = v4;
    v6[1] = sub_1008C4BE0;
    v7 = v3[58];

    return sub_100300A9C(v7);
  }
}

uint64_t sub_1008C4A9C()
{
  v1 = v0[65];
  v2 = v0[60];
  sub_100016590(v0[75], v0[76]);

  sub_1008CCEA8(v2, type metadata accessor for FindMyServiceDeviceListPayload);
  sub_1008CCEA8(v1, type metadata accessor for FindMyServiceDeviceListClientContext);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1008C4BE0()
{
  v2 = *v1;
  *(*v1 + 720) = v0;

  v3 = *(v2 + 384);
  if (v0)
  {
    v4 = sub_1008C530C;
  }

  else
  {
    v4 = sub_1008C4E80;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1008C4D0C()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[65];
  v6 = v0[60];

  sub_100016590(v4, v3);

  sub_100006654(v2, v1);

  sub_1008CCEA8(v6, type metadata accessor for FindMyServiceDeviceListPayload);
  sub_1008CCEA8(v5, type metadata accessor for FindMyServiceDeviceListClientContext);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1008C4E80()
{
  v1 = v0[57];
  v2 = v0[58];
  v3 = v0[56];

  sub_1008CCF78(v2, v1, type metadata accessor for SearchpartyAccount);
  v0[91] = v1[2];
  v0[92] = v1[3];
  v0[93] = v1[4];
  v0[94] = v1[5];

  sub_1008CCEA8(v1, type metadata accessor for SearchpartyAccount);
  sub_1008CCF78(v2, v3, type metadata accessor for SearchpartyAccount);
  v4 = swift_task_alloc();
  v0[95] = v4;
  *v4 = v0;
  v4[1] = sub_1008C4FAC;

  return daemon.getter();
}

uint64_t sub_1008C4FAC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[96] = a1;

  v4 = swift_task_alloc();
  v2[97] = v4;
  *v4 = v3;
  v4[1] = sub_1008C5138;
  v5 = v2[86];
  v6 = v2[85];
  v7 = v2[70];
  v8 = v2[69];

  return ActorServiceDaemon.getService<A>()(v8, v6, v7, v5);
}

uint64_t sub_1008C5138(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[98] = a1;
  v3[99] = v1;

  if (v1)
  {
    v5 = v3[56];
    v6 = v3[48];

    sub_1008CCEA8(v5, type metadata accessor for SearchpartyAccount);

    return _swift_task_switch(sub_1008C55DC, v6, 0);
  }

  else
  {

    v7 = swift_task_alloc();
    v3[100] = v7;
    *v7 = v4;
    v7[1] = sub_1008C5480;

    return sub_1002FFDE0((v3 + 2));
  }
}

uint64_t sub_1008C530C()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[65];
  v6 = v0[60];

  sub_100016590(v4, v3);

  sub_100006654(v2, v1);

  sub_1008CCEA8(v6, type metadata accessor for FindMyServiceDeviceListPayload);
  sub_1008CCEA8(v5, type metadata accessor for FindMyServiceDeviceListClientContext);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1008C5480()
{
  v2 = *v1;
  *(*v1 + 808) = v0;

  if (v0)
  {
    v3 = *(v2 + 448);
    v4 = *(v2 + 384);

    sub_1008CCEA8(v3, type metadata accessor for SearchpartyAccount);
    v5 = sub_1008C5B00;
    v6 = v4;
  }

  else
  {
    v6 = *(v2 + 384);
    v5 = sub_1008C5760;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1008C55DC()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[65];
  v4 = v0[60];
  v5 = v0[58];
  sub_100016590(v0[75], v0[76]);

  sub_100006654(v2, v1);

  sub_1008CCEA8(v5, type metadata accessor for SearchpartyAccount);
  sub_1008CCEA8(v4, type metadata accessor for FindMyServiceDeviceListPayload);
  sub_1008CCEA8(v3, type metadata accessor for FindMyServiceDeviceListClientContext);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1008C5760()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v15 = *(v0 + 728);
  v3 = *(v0 + 640);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  v7 = *(v0 + 440);
  v6 = *(v0 + 448);
  v8 = *(v0 + 432);

  sub_1010A403C(v6, (v0 + 16), v7);
  type metadata accessor for ServerInteractionController();
  *(v0 + 816) = ServerInteractionController.__allocating_init(bundleIdentifier:)();
  *(v0 + 160) = v8;
  *(v0 + 168) = sub_1008CD500(&qword_1016AD2D0, type metadata accessor for FindMyServiceDeviceListEndpoint, &unk_101401700);
  v9 = sub_1000280DC((v0 + 136));
  sub_1008CCF78(v7, v9, type metadata accessor for FindMyServiceDeviceListEndpoint);
  *(v0 + 200) = &type metadata for FindMyServiceDeviceListRequest;
  v10 = sub_100283B9C();
  *(v0 + 176) = v5;
  *(v0 + 208) = v10;
  *(v0 + 184) = v4;
  *(v0 + 192) = v3;
  *(v0 + 240) = &type metadata for SearchpartyCredential;
  *(v0 + 248) = sub_100132C84();
  v11 = swift_allocObject();
  *(v0 + 216) = v11;
  *(v11 + 16) = v15;
  *(v11 + 32) = v2;
  *(v11 + 40) = v1;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  sub_10002E98C(v5, v4);
  v16 = (&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:));

  v12 = swift_task_alloc();
  *(v0 + 824) = v12;
  *v12 = v0;
  v12[1] = sub_1008C598C;
  v13 = *(v0 + 424);

  return v16(v13, v0 + 136, v0 + 176, v0 + 216, v0 + 256);
}

uint64_t sub_1008C598C()
{
  v2 = *v1;
  *(*v1 + 832) = v0;

  if (v0)
  {
    v3 = v2[48];
    sub_10000B3A8((v2 + 32), &qword_1016978B0, &qword_1013A3960);
    v4 = sub_1008C685C;
  }

  else
  {
    v3 = v2[48];
    sub_10000B3A8((v2 + 32), &qword_1016978B0, &qword_1013A3960);
    sub_10000B3A8((v2 + 27), &qword_1016978B8, &qword_1013C35C0);
    sub_100007BAC(v2 + 22);
    sub_100007BAC(v2 + 17);
    v4 = sub_1008C5C8C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1008C5B00()
{

  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[65];
  v4 = v0[60];
  v5 = v0[58];
  sub_100016590(v0[75], v0[76]);

  sub_100006654(v2, v1);

  sub_1008CCEA8(v5, type metadata accessor for SearchpartyAccount);
  sub_1008CCEA8(v4, type metadata accessor for FindMyServiceDeviceListPayload);
  sub_1008CCEA8(v3, type metadata accessor for FindMyServiceDeviceListClientContext);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1008C5C8C()
{
  v1 = v0[104];
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v2 = Response.body.getter();
  v4 = v3;
  sub_1008CCE2C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v5 = v0[78];
    v6 = v0[76];
    v7 = v0[75];
    v34 = v0[60];
    v35 = v0[65];
    v33 = v0[58];
    v32 = v0[55];
    v8 = v0[52];
    v30 = v0[79];
    v31 = v0[53];
    v29 = v0[51];
    sub_100016590(v2, v4);

    sub_100016590(v7, v6);

    sub_100006654(v5, v30);

    (*(v8 + 8))(v31, v29);
    sub_1008CCEA8(v32, type metadata accessor for FindMyServiceDeviceListEndpoint);
    sub_1008CCEA8(v33, type metadata accessor for SearchpartyAccount);
    sub_1008CCEA8(v34, type metadata accessor for FindMyServiceDeviceListPayload);
    sub_1008CCEA8(v35, type metadata accessor for FindMyServiceDeviceListClientContext);

    v9 = v0[1];

    return v9();
  }

  sub_100016590(v2, v4);

  v11 = v0[38];
  v0[105] = v0[37];
  v0[106] = v11;
  v12 = v0[39];
  v13 = v0[40];
  v0[107] = v12;
  v0[108] = v13;
  v14 = v0[41];
  v0[109] = v14;
  if (v14 == 1)
  {
    v15 = 0;
    v16 = 0;
LABEL_13:
    *(v0[48] + OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_isDevicesFetched) = 1;
    sub_1008CCE80(v11, v12, v13, v14);
    v27 = swift_task_alloc();
    v0[112] = v27;
    *v27 = v0;
    v27[1] = sub_1008C63D4;
    v28 = v0[105];

    return sub_1008CBA6C(v28, v16, v15);
  }

  v15 = v14;
  v16 = v13;
  if (v12)
  {
    goto LABEL_13;
  }

  v17 = v0[61];
  v18 = v0[62];
  v19 = v0[50];
  v20 = v0[48];
  Date.init(timeIntervalSince1970:)();
  (*(v18 + 56))(v19, 0, 1, v17);
  v21 = OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_subscriptionTTL;
  swift_beginAccess();
  sub_1008CCF08(v19, v20 + v21);
  swift_endAccess();
  v22 = *(v20 + 144);
  v0[110] = v22;
  if (!v22)
  {
    v25 = v0[49];
    v26 = type metadata accessor for XPCActivity.State();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
    sub_10000B3A8(v25, &unk_10169BA88, &qword_101395670);
    v14 = v0[109];
    v13 = v0[108];
    v12 = v0[107];
    v11 = v0[106];
    v15 = v14;
    v16 = v13;
    goto LABEL_13;
  }

  v36 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

  v23 = swift_task_alloc();
  v0[111] = v23;
  *v23 = v0;
  v23[1] = sub_1008C6174;
  v24 = v0[49];

  return v36(v24);
}

uint64_t sub_1008C6174()
{
  v1 = *(*v0 + 384);

  return _swift_task_switch(sub_1008C62A0, v1, 0);
}

uint64_t sub_1008C62A0()
{
  v1 = v0[49];
  v2 = type metadata accessor for XPCActivity.State();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_10000B3A8(v1, &unk_10169BA88, &qword_101395670);
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[107];
  v6 = v0[106];
  *(v0[48] + OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_isDevicesFetched) = 1;
  sub_1008CCE80(v6, v5, v4, v3);
  v7 = swift_task_alloc();
  v0[112] = v7;
  *v7 = v0;
  v7[1] = sub_1008C63D4;
  v8 = v0[105];

  return sub_1008CBA6C(v8, v4, v3);
}

uint64_t sub_1008C63D4()
{
  v1 = *(*v0 + 872);
  v2 = *(*v0 + 864);
  v3 = *(*v0 + 856);
  v4 = *(*v0 + 848);
  v5 = *(*v0 + 384);

  sub_1008CCE94(v4, v3, v2, v1);

  sub_1008CCE94(v4, v3, v2, v1);

  return _swift_task_switch(sub_1008C6588, v5, 0);
}

uint64_t sub_1008C6588()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[76];
  v4 = v0[75];
  v13 = v0[65];
  v11 = v0[58];
  v12 = v0[60];
  v10 = v0[55];
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[51];

  sub_100016590(v4, v3);

  sub_100006654(v2, v1);

  (*(v6 + 8))(v5, v7);
  sub_1008CCEA8(v10, type metadata accessor for FindMyServiceDeviceListEndpoint);
  sub_1008CCEA8(v11, type metadata accessor for SearchpartyAccount);
  sub_1008CCEA8(v12, type metadata accessor for FindMyServiceDeviceListPayload);
  sub_1008CCEA8(v13, type metadata accessor for FindMyServiceDeviceListClientContext);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1008C6768()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008C685C()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[76];
  v4 = v0[75];
  v10 = v0[65];
  v5 = v0[60];
  v6 = v0[58];
  v7 = v0[55];

  sub_100016590(v4, v3);

  sub_100006654(v2, v1);

  sub_1008CCEA8(v7, type metadata accessor for FindMyServiceDeviceListEndpoint);
  sub_1008CCEA8(v6, type metadata accessor for SearchpartyAccount);
  sub_1008CCEA8(v5, type metadata accessor for FindMyServiceDeviceListPayload);
  sub_1008CCEA8(v10, type metadata accessor for FindMyServiceDeviceListClientContext);
  sub_10000B3A8((v0 + 27), &qword_1016978B8, &qword_1013C35C0);
  sub_100007BAC(v0 + 22);
  sub_100007BAC(v0 + 17);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1008C6A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[170] = v4;
  v5[169] = a4;
  v5[168] = a3;
  v5[167] = a2;
  v5[166] = a1;
  v6 = type metadata accessor for Response();
  v5[171] = v6;
  v5[172] = *(v6 - 8);
  v5[173] = swift_task_alloc();
  v5[174] = type metadata accessor for FindMyServiceDeviceListFilterPayload(0);
  v5[175] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[176] = v7;
  v5[177] = *(v7 - 8);
  v5[178] = swift_task_alloc();
  v5[179] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AF930, &unk_1013C35B0);
  v5[180] = swift_task_alloc();
  v5[181] = swift_task_alloc();
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  v5[182] = MyServiceDevice;
  v5[183] = *(MyServiceDevice - 8);
  v5[184] = swift_task_alloc();
  v5[185] = swift_task_alloc();
  v5[186] = swift_task_alloc();
  v5[187] = swift_task_alloc();
  v5[188] = swift_task_alloc();
  v5[189] = type metadata accessor for FindMyServiceDeviceListEndpoint(0);
  v5[190] = swift_task_alloc();
  type metadata accessor for SearchpartyAccount(0);
  v5[191] = swift_task_alloc();
  v5[192] = swift_task_alloc();
  v5[193] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v5[194] = v9;
  v5[195] = *(v9 - 8);
  v5[196] = swift_task_alloc();
  v5[197] = type metadata accessor for FindMyServiceDeviceListClientContext(0);
  v5[198] = swift_task_alloc();

  return _swift_task_switch(sub_1008C6D74, v4, 0);
}

uint64_t sub_1008C6D74()
{
  v1 = *(v0[166] + 16);
  v0[199] = v1;
  if (v1 || *(v0[167] + 16))
  {
    v2 = swift_task_alloc();
    v0[200] = v2;
    *v2 = v0;
    v2[1] = sub_1008C7018;

    return daemon.getter();
  }

  else
  {
    if (qword_101694848 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B078);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Cannot fetch filtered devices with empty filter.", v6, 2u);
    }

    v7 = v0[1];

    return v7(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1008C7018(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[201] = a1;

  v3 = swift_task_alloc();
  v2[202] = v3;
  v4 = type metadata accessor for Daemon();
  v2[203] = v4;
  v5 = type metadata accessor for APSNotificationService();
  v6 = sub_1008CD500(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[204] = v6;
  v7 = sub_1008CD500(&qword_101698D40, type metadata accessor for APSNotificationService, &unk_1013EB9A0);
  *v3 = v9;
  v3[1] = sub_1008C71F8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1008C71F8(uint64_t a1)
{
  v4 = *v2;
  v4[205] = a1;
  v4[206] = v1;

  if (v1)
  {
    v5 = v4[170];
    v6 = sub_1008CACCC;
  }

  else
  {

    v6 = sub_1008C7334;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1008C7334()
{
  v1 = v0[205];
  swift_beginAccess();
  v2 = *(v1 + 192);
  if (*(v2 + 16))
  {

    v3 = sub_100771D58(0xD000000000000029, 0x8000000101363EC0);
    if (v4)
    {
      v5 = (*(v2 + 56) + 16 * v3);
      v6 = *v5;
      v7 = v5[1];
      sub_100017D5C(*v5, v7);

      v0[210] = v7;
      v0[209] = v6;
      v8 = v0[170];

      return _swift_task_switch(sub_1008C7740, v8, 0);
    }
  }

  v9 = swift_task_alloc();
  v0[207] = v9;
  *v9 = v0;
  v9[1] = sub_1008C74A0;

  return sub_100E7DE18(0xD000000000000029, 0x8000000101363EC0, 500000000000000000, 0);
}

uint64_t sub_1008C74A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 1664) = v2;

  if (v2)
  {
    v7 = v6[170];
    v8 = sub_1008C75DC;
  }

  else
  {
    v6[210] = a2;
    v6[209] = a1;
    v7 = v6[170];
    v8 = sub_1008C7740;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1008C75DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008C7740()
{
  v1 = Data.hexString.getter();
  v3 = v2;
  v4 = MobileGestalt_get_current_device();
  if (!v4)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return daemon.getter();
  }

  v5 = v4;
  v6 = MobileGestalt_copy_productType_obj();

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = MobileGestalt_get_current_device();
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = v10;
  v12 = MobileGestalt_copy_buildVersion_obj();

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  static Date.trustedNow.getter(v0[196]);
  v16 = MobileGestalt_get_current_device();
  if (!v16)
  {
    goto LABEL_22;
  }

  v17 = v16;
  v18 = MobileGestalt_copy_productVersion_obj();

  v44 = v15;
  if (v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v20;
    v43 = v19;
  }

  else
  {
    v42 = 0xE000000000000000;
    v43 = 0;
  }

  v21 = v13;
  v22 = v9;
  v23 = [objc_opt_self() currentDevice];
  v24 = v7;
  v25 = v1;
  if (v23 && (v26 = v23, v27 = [v23 uniqueDeviceIdentifier], v26, v27))
  {
    v28 = v3;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v28 = v3;
    v29 = 0;
    v31 = 0xE000000000000000;
  }

  v32 = v0[198];
  v33 = v0[197];
  v34 = v0[196];
  v35 = v0[195];
  v36 = v0[194];
  *v32 = 2;
  *(v32 + 8) = v25;
  *(v32 + 16) = v28;
  *(v32 + 24) = 1;
  *(v32 + 32) = v24;
  *(v32 + 40) = v22;
  *(v32 + 48) = v21;
  *(v32 + 56) = v44;
  (*(v35 + 32))(v32 + v33[9], v34, v36);
  v37 = (v32 + v33[10]);
  *v37 = v43;
  v37[1] = v42;
  *(v32 + v33[11]) = 1;
  v38 = (v32 + v33[12]);
  *v38 = v29;
  v38[1] = v31;
  *(v32 + v33[13]) = 0;
  v39 = (v32 + v33[14]);
  *v39 = 7105633;
  v39[1] = 0xE300000000000000;
  v40 = swift_task_alloc();
  v0[211] = v40;
  *v40 = v0;
  v40[1] = sub_1008C7A0C;

  return daemon.getter();
}

uint64_t sub_1008C7A0C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[212] = a1;

  v4 = swift_task_alloc();
  v2[213] = v4;
  v5 = type metadata accessor for AccountService();
  v2[214] = v5;
  v6 = sub_1008CD500(&qword_101697890, type metadata accessor for AccountService, &unk_10139AEB0);
  v2[215] = v6;
  *v4 = v3;
  v4[1] = sub_1008C7BC8;
  v7 = v2[204];
  v8 = v2[203];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1008C7BC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[216] = a1;
  v3[217] = v1;

  if (v1)
  {
    v5 = v3[170];

    return _swift_task_switch(sub_1008C7E84, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[218] = v6;
    *v6 = v4;
    v6[1] = sub_1008C7D58;
    v7 = v3[193];

    return sub_100300A9C(v7);
  }
}

uint64_t sub_1008C7D58()
{
  v2 = *v1;
  *(*v1 + 1752) = v0;

  v3 = *(v2 + 1360);
  if (v0)
  {
    v4 = sub_1008C8440;
  }

  else
  {
    v4 = sub_1008C8028;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1008C7E84()
{
  v1 = v0[210];
  v2 = v0[209];
  v3 = v0[198];

  sub_100016590(v2, v1);

  sub_1008CCEA8(v3, type metadata accessor for FindMyServiceDeviceListClientContext);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1008C8028()
{
  v1 = v0[193];
  v2 = v0[192];

  v0[220] = *(v1 + 16);
  v0[221] = *(v1 + 24);
  sub_1008CCF78(v1, v2, type metadata accessor for SearchpartyAccount);
  v3 = swift_task_alloc();
  v0[222] = v3;
  *v3 = v0;
  v3[1] = sub_1008C80F8;

  return daemon.getter();
}

uint64_t sub_1008C80F8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[223] = a1;

  v4 = swift_task_alloc();
  v2[224] = v4;
  *v4 = v3;
  v4[1] = sub_1008C8284;
  v5 = v2[215];
  v6 = v2[214];
  v7 = v2[204];
  v8 = v2[203];

  return ActorServiceDaemon.getService<A>()(v8, v6, v7, v5);
}

uint64_t sub_1008C8284(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[225] = a1;
  v3[226] = v1;

  if (v1)
  {
    v5 = v3[170];
    sub_1008CCEA8(v3[192], type metadata accessor for SearchpartyAccount);

    return _swift_task_switch(sub_1008C8720, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[227] = v6;
    *v6 = v4;
    v6[1] = sub_1008C85E4;

    return sub_1002FFDE0((v3 + 116));
  }
}

uint64_t sub_1008C8440()
{
  v1 = v0[210];
  v2 = v0[209];
  v3 = v0[198];

  sub_100016590(v2, v1);

  sub_1008CCEA8(v3, type metadata accessor for FindMyServiceDeviceListClientContext);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1008C85E4()
{
  v2 = *v1;
  *(*v1 + 1824) = v0;

  if (v0)
  {
    v3 = *(v2 + 1360);
    sub_1008CCEA8(*(v2 + 1536), type metadata accessor for SearchpartyAccount);
    v4 = sub_1008C91AC;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1360);
    v4 = sub_1008C88D4;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1008C8720()
{
  v1 = v0[198];
  v2 = v0[193];
  sub_100016590(v0[209], v0[210]);

  sub_1008CCEA8(v1, type metadata accessor for FindMyServiceDeviceListClientContext);
  sub_1008CCEA8(v2, type metadata accessor for SearchpartyAccount);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1008C88D4()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1544);
  v3 = *(v0 + 1536);
  v4 = *(v0 + 1528);
  v5 = *(v0 + 1520);

  sub_1010A403C(v3, (v0 + 928), v5);
  sub_1008CCF78(v2, v4, type metadata accessor for SearchpartyAccount);
  *(v0 + 1832) = v4[2];
  *(v0 + 1840) = v4[3];
  *(v0 + 1848) = v4[4];
  *(v0 + 1856) = v4[5];

  sub_1008CCEA8(v4, type metadata accessor for SearchpartyAccount);
  type metadata accessor for ServerInteractionController();
  *(v0 + 1864) = ServerInteractionController.__allocating_init(bundleIdentifier:)();
  v6 = _swiftEmptyArrayStorage;
  *(v0 + 1320) = _swiftEmptyArrayStorage;
  if (v1)
  {
    v7 = 0;
    v8 = *(v0 + 1768);
    v9 = (*(v0 + 1328) + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100A5DB5C(0, *(v6 + 2) + 1, 1, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_100A5DB5C((v12 > 1), v13 + 1, 1, v6);
      }

      ++v7;
      v14 = *(v0 + 1760);
      v15 = *(v0 + 1592);
      v16 = *(v0 + 1352);
      v17 = *(v0 + 1344);
      *(v6 + 2) = v13 + 1;
      v18 = &v6[64 * v13];
      *(v18 + 4) = v14;
      *(v18 + 5) = v8;
      *(v18 + 6) = v17;
      *(v18 + 7) = v16;
      *(v18 + 8) = v10;
      *(v18 + 9) = v11;
      v9 += 2;
      *(v18 + 10) = 0;
      *(v18 + 11) = 0;
    }

    while (v7 != v15);
  }

  v19 = *(v0 + 1336);
  v20 = *(v19 + 16);
  *(v0 + 1872) = v20;
  if (v20)
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1464);
    v71 = (*(v0 + 1416) + 8);
    v72 = *(*(v0 + 1360) + 128);
    v69 = (v22 + 56);
    v66 = v22;
    v67 = (v22 + 48);
    v74 = *(v0 + 1824);
    v23 = (v19 + 40);
    v70 = _swiftEmptyArrayStorage;
    while (1)
    {
      v25 = *(v23 - 1);
      v24 = *v23;

      v76 = v24;
      v26 = String.utf8Data.getter();
      v28 = v27;
      *(v0 + 1272) = v26;
      *(v0 + 1280) = v27;
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      sub_100016590(v26, v28);
      if (v72)
      {
        v73 = v25;
        v29 = *(v0 + 1448);
        v30 = *(v0 + 1432);
        v31 = *(v0 + 1424);
        v32 = getuid();
        sub_1000294F0(v32);
        sub_10072FCA8(v31, v30, v29);
        if (v74)
        {
          v75 = *(v0 + 1456);
          v68 = *(v0 + 1448);
          v33 = *(v0 + 1432);
          v34 = *(v0 + 1424);
          v35 = v20;
          v36 = *(v0 + 1408);

          v37 = v21;
          v38 = *v71;
          (*v71)(v34, v36);
          v39 = v36;
          v20 = v35;
          v38(v33, v39);
          v21 = v37;
          (*v69)(v68, 1, 1, v75);
          v74 = 0;
          v40 = *(v0 + 1448);
          v25 = v73;
          goto LABEL_16;
        }

        v43 = *(v0 + 1432);
        v44 = *(v0 + 1408);
        v45 = *v71;
        (*v71)(*(v0 + 1424), v44);
        v45(v43, v44);
        v74 = 0;
        v25 = v73;
      }

      else
      {
        v41 = *(v0 + 1456);
        v42 = *(v0 + 1448);
        (*v71)(*(v0 + 1432), *(v0 + 1408));
        (*v69)(v42, 1, 1, v41);
      }

      v40 = *(v0 + 1448);
      if ((*v67)(v40, 1, *(v0 + 1456)) != 1)
      {
        v46 = *(v0 + 1504);
        v47 = *(v0 + 1496);
        sub_1008CCD18(v40, v46);
        sub_1008CCF78(v46, v47, type metadata accessor for FindMyServiceDevice);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_100A5DA10(0, v70[2] + 1, 1, v70);
        }

        v49 = v70[2];
        v48 = v70[3];
        if (v49 >= v48 >> 1)
        {
          v70 = sub_100A5DA10((v48 > 1), v49 + 1, 1, v70);
        }

        v50 = *(v0 + 1496);
        sub_1008CCEA8(*(v0 + 1504), type metadata accessor for FindMyServiceDevice);
        v70[2] = v49 + 1;
        sub_1008CCD18(v50, v70 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v49);
        goto LABEL_22;
      }

LABEL_16:
      sub_10000B3A8(v40, &unk_1016AF930, &unk_1013C35B0);
LABEL_22:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100A5DB5C(0, *(v6 + 2) + 1, 1, v6);
      }

      v52 = *(v6 + 2);
      v51 = *(v6 + 3);
      if (v52 >= v51 >> 1)
      {
        v6 = sub_100A5DB5C((v51 > 1), v52 + 1, 1, v6);
      }

      v53 = *(v0 + 1760);
      v54 = *(v0 + 1352);
      v55 = *(v0 + 1344);
      *(v6 + 2) = v52 + 1;
      v56 = &v6[64 * v52];
      *(v56 + 4) = v53;
      *(v56 + 5) = v21;
      *(v56 + 6) = v55;
      *(v56 + 7) = v54;
      *(v56 + 8) = 0;
      *(v56 + 9) = 0;
      v23 += 2;
      *(v56 + 10) = v25;
      *(v56 + 11) = v76;
      if (!--v20)
      {
        goto LABEL_30;
      }
    }
  }

  if (*(v6 + 2))
  {
    v70 = _swiftEmptyArrayStorage;
LABEL_30:
    *(v0 + 1880) = v70;
    v57 = *(v0 + 1400);
    v58 = *(v0 + 1392);
    sub_1008CCF78(*(v0 + 1584), v57 + *(v58 + 24), type metadata accessor for FindMyServiceDeviceListClientContext);
    *v57 = v6;
    *(v57 + 8) = 0;
    *(v0 + 1032) = v58;
    *(v0 + 1040) = sub_1008CD500(&qword_1016AD2C8, type metadata accessor for FindMyServiceDeviceListFilterPayload, &unk_101396994);
    v59 = sub_1000280DC((v0 + 1008));
    sub_1008CCF78(v57, v59, type metadata accessor for FindMyServiceDeviceListFilterPayload);
    v60 = swift_task_alloc();
    *(v0 + 1888) = v60;
    *v60 = v0;
    v60[1] = sub_1008C9368;

    return sub_100282B80(v0 + 1008);
  }

  else
  {
    v62 = *(v0 + 1584);
    v63 = *(v0 + 1544);
    v64 = *(v0 + 1520);
    sub_100016590(*(v0 + 1672), *(v0 + 1680));

    sub_1008CCEA8(v64, type metadata accessor for FindMyServiceDeviceListEndpoint);
    sub_1008CCEA8(v62, type metadata accessor for FindMyServiceDeviceListClientContext);

    sub_1008CCEA8(v63, type metadata accessor for SearchpartyAccount);

    v65 = *(v0 + 8);

    return v65(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1008C91AC()
{

  v1 = v0[198];
  v2 = v0[193];
  sub_100016590(v0[209], v0[210]);

  sub_1008CCEA8(v1, type metadata accessor for FindMyServiceDeviceListClientContext);
  sub_1008CCEA8(v2, type metadata accessor for SearchpartyAccount);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1008C9368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[237] = a1;
  v5[238] = a2;
  v5[239] = a3;
  v5[240] = v3;

  if (v3)
  {
    v6 = v5[170];

    v7 = sub_1008C97FC;
    v8 = v6;
  }

  else
  {
    v8 = v5[170];
    v7 = sub_1008C94A8;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1008C94A8()
{
  v1 = *(v0 + 1912);
  v2 = *(v0 + 1904);
  v3 = *(v0 + 1896);
  v4 = *(v0 + 1856);
  v5 = *(v0 + 1848);
  v12 = *(v0 + 1832);
  v6 = *(v0 + 1520);
  *(v0 + 1072) = *(v0 + 1512);
  *(v0 + 1080) = sub_1008CD500(&qword_1016AD2D0, type metadata accessor for FindMyServiceDeviceListEndpoint, &unk_101401700);
  v7 = sub_1000280DC((v0 + 1048));
  sub_1008CCF78(v6, v7, type metadata accessor for FindMyServiceDeviceListEndpoint);
  *(v0 + 1112) = &type metadata for FindMyServiceDeviceListRequest;
  *(v0 + 1120) = sub_100283B9C();
  *(v0 + 1088) = v3;
  *(v0 + 1096) = v2;
  *(v0 + 1104) = v1;
  *(v0 + 1152) = &type metadata for SearchpartyCredential;
  *(v0 + 1160) = sub_100132C84();
  v8 = swift_allocObject();
  *(v0 + 1128) = v8;
  *(v8 + 16) = v12;
  *(v8 + 32) = v5;
  *(v8 + 40) = v4;
  *(v0 + 1168) = 0u;
  *(v0 + 1184) = 0u;
  *(v0 + 1200) = 0;
  sub_10002E98C(v3, v2);
  v13 = (&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:));

  v9 = swift_task_alloc();
  *(v0 + 1928) = v9;
  *v9 = v0;
  v9[1] = sub_1008C9688;
  v10 = *(v0 + 1384);

  return v13(v10, v0 + 1048, v0 + 1088, v0 + 1128, v0 + 1168);
}

uint64_t sub_1008C9688()
{
  v2 = *v1;
  *(*v1 + 1936) = v0;

  if (v0)
  {
    v3 = v2[170];
    sub_10000B3A8((v2 + 146), &qword_1016978B0, &qword_1013A3960);
    v4 = sub_1008CAE30;
  }

  else
  {
    v3 = v2[170];
    sub_10000B3A8((v2 + 146), &qword_1016978B0, &qword_1013A3960);
    sub_10000B3A8((v2 + 141), &qword_1016978B8, &qword_1013C35C0);
    sub_100007BAC(v2 + 136);
    sub_100007BAC(v2 + 131);
    v4 = sub_1008C9C6C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1008C97FC()
{
  v24 = v0;
  sub_1008CCEA8(v0[175], type metadata accessor for FindMyServiceDeviceListFilterPayload);
  if (qword_101694848 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B078);
  swift_errorRetain();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[198];
  v6 = v0[190];
  if (v4)
  {
    v19 = v0[209];
    v20 = v0[210];
    v21 = v0[198];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v7 = 138543874;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2080;
    v10 = Array.description.getter();
    v12 = sub_1000136BC(v10, v11, &v23);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2080;
    v13 = Array.description.getter();
    v15 = sub_1000136BC(v13, v14, &v23);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch devices: %{public}@ for serialNumbers: %s, findMyIds: %s.", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    sub_100016590(v19, v20);

    sub_1008CCEA8(v6, type metadata accessor for FindMyServiceDeviceListEndpoint);
    v16 = v21;
  }

  else
  {
    sub_100016590(v0[209], v0[210]);

    sub_1008CCEA8(v6, type metadata accessor for FindMyServiceDeviceListEndpoint);
    v16 = v5;
  }

  sub_1008CCEA8(v16, type metadata accessor for FindMyServiceDeviceListClientContext);
  sub_1008CCEA8(v0[193], type metadata accessor for SearchpartyAccount);
  v22 = v0[235];

  v17 = v0[1];

  return v17(v22);
}

uint64_t sub_1008C9C6C()
{
  v91 = v0;
  v1 = v0[242];
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v2 = Response.body.getter();
  v4 = v3;
  sub_1008CCE2C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v5 = v0[238];
    v6 = v0[237];
    v83 = v0[175];
    v7 = v0[173];
    v8 = v0[172];
    v9 = v0[171];
    sub_100016590(v2, v4);

    sub_100006654(v6, v5);

    (*(v8 + 8))(v7, v9);
    sub_1008CCEA8(v83, type metadata accessor for FindMyServiceDeviceListFilterPayload);
    if (qword_101694848 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177B078);
    swift_errorRetain();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[198];
    v15 = v0[190];
    if (v13)
    {
      v74 = v0[209];
      v76 = v0[210];
      v84 = v0[198];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v90[0] = swift_slowAlloc();
      *v16 = 138543874;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      *(v16 + 12) = 2080;
      v19 = Array.description.getter();
      v21 = sub_1000136BC(v19, v20, v90);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2080;
      v22 = Array.description.getter();
      v24 = sub_1000136BC(v22, v23, v90);

      *(v16 + 24) = v24;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to fetch devices: %{public}@ for serialNumbers: %s, findMyIds: %s.", v16, 0x20u);
      sub_10000B3A8(v17, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

      sub_100016590(v74, v76);

      sub_1008CCEA8(v15, type metadata accessor for FindMyServiceDeviceListEndpoint);
      v25 = v84;
    }

    else
    {
      sub_100016590(v0[209], v0[210]);

      sub_1008CCEA8(v15, type metadata accessor for FindMyServiceDeviceListEndpoint);
      v25 = v14;
    }

    sub_1008CCEA8(v25, type metadata accessor for FindMyServiceDeviceListClientContext);
    sub_1008CCEA8(v0[193], type metadata accessor for SearchpartyAccount);
    v59 = v0[235];
    goto LABEL_41;
  }

  sub_100016590(v2, v4);

  v26 = v0[151];
  v27 = v0[152];
  v0[243] = v27;
  v28 = v0[153];
  v0[244] = v28;
  v29 = v0[154];
  v0[245] = v29;
  v30 = v0[155];
  v0[246] = v30;
  v31 = *(v26 + 16);
  if (!v31)
  {
    v78 = v0[238];
    v63 = v27;
    v64 = v0[210];
    v65 = v29;
    v66 = v0[209];
    v67 = v28;
    v70 = v0[237];
    v86 = v0[198];
    v89 = v0[193];
    v80 = v0[175];
    v82 = v0[190];
    v68 = v0[172];
    v72 = v0[171];
    v73 = v0[173];
    v69 = v30;

    sub_100016590(v66, v64);

    sub_1008CCE94(v63, v67, v65, v69);

    sub_100006654(v70, v78);

    (*(v68 + 8))(v73, v72);
    sub_1008CCEA8(v80, type metadata accessor for FindMyServiceDeviceListFilterPayload);
    sub_1008CCEA8(v82, type metadata accessor for FindMyServiceDeviceListEndpoint);
    sub_1008CCEA8(v86, type metadata accessor for FindMyServiceDeviceListClientContext);
    sub_1008CCEA8(v89, type metadata accessor for SearchpartyAccount);
    v59 = _swiftEmptyArrayStorage;
LABEL_41:
    v88 = v59;

    v60 = v0[1];

    return v60(v88);
  }

  if (v30 == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = v29;
  }

  v79 = v30;
  if (v30 == 1)
  {
    v30 = 0;
  }

  v81 = v30;
  v85 = v32;
  v71 = v0[183];

  v33 = 32;
  v87 = _swiftEmptyArrayStorage;
  v75 = v28;
  v77 = _swiftEmptyArrayStorage;
  do
  {
    v34 = v0[180];
    memcpy(v0 + 2, (v26 + v33), 0x129uLL);
    sub_100840D50((v0 + 2), (v0 + 40));
    sub_100840D50((v0 + 2), (v0 + 78));
    v35 = v29;
    sub_1008CCE80(v27, v28, v29, v79);
    sub_1008CB2E4((v0 + 2), v81, v34);
    v36 = v26;
    v37 = v27;
    v38 = v0[199];
    v39 = v0[186];
    v40 = v0[180];
    (*(v71 + 56))(v40, 0, 1, v0[182]);
    sub_1008CCD18(v40, v39);
    if (v38)
    {
      v41 = v0[7];
      if (v41)
      {
        v42 = v0[166];
        v43 = v0[6];

        sub_100840D88((v0 + 2));
        v0[163] = v43;
        v0[164] = v41;
        v44 = swift_task_alloc();
        *(v44 + 16) = v0 + 163;
        LOBYTE(v42) = sub_1002EB538(sub_1008CD5F0, v44, v42);

        v45 = v0[186];
        if (v42)
        {
          sub_1008CCF78(v45, v0[185], type metadata accessor for FindMyServiceDevice);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = sub_100A5DA10(0, v77[2] + 1, 1, v77);
          }

          v47 = v77[2];
          v46 = v77[3];
          if (v47 >= v46 >> 1)
          {
            v77 = sub_100A5DA10((v46 > 1), v47 + 1, 1, v77);
          }

          v48 = v0[185];
          sub_1008CCEA8(v0[186], type metadata accessor for FindMyServiceDevice);
          v77[2] = v47 + 1;
          sub_1008CCD18(v48, v77 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v47);
        }

        else
        {
          sub_1008CCEA8(v45, type metadata accessor for FindMyServiceDevice);
        }

        goto LABEL_38;
      }
    }

    if (!v0[234])
    {
      sub_1008CCEA8(v0[186], type metadata accessor for FindMyServiceDevice);
      sub_100840D88((v0 + 2));
LABEL_38:
      v27 = v37;
      v26 = v36;
      v28 = v75;
      goto LABEL_13;
    }

    v49 = v0[5];
    if (!v49)
    {
      v58 = v0[186];
      sub_100840D88((v0 + 2));
      sub_1008CCEA8(v58, type metadata accessor for FindMyServiceDevice);
      goto LABEL_38;
    }

    v50 = v0[167];
    v0[161] = v0[4];
    v0[162] = v49;
    v51 = swift_task_alloc();
    *(v51 + 16) = v0 + 161;

    LOBYTE(v50) = sub_1002EB538(sub_1007D491C, v51, v50);

    v52 = v0[186];
    if ((v50 & 1) == 0)
    {
      sub_1008CCEA8(v52, type metadata accessor for FindMyServiceDevice);
      sub_100840D88((v0 + 2));
      goto LABEL_38;
    }

    sub_1008CCF78(v52, v0[184], type metadata accessor for FindMyServiceDevice);
    v27 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = sub_100A5DA10(0, v77[2] + 1, 1, v77);
    }

    v26 = v36;
    v28 = v75;
    v54 = v77[2];
    v53 = v77[3];
    if (v54 >= v53 >> 1)
    {
      v77 = sub_100A5DA10((v53 > 1), v54 + 1, 1, v77);
    }

    v55 = v0[184];
    v77[2] = v54 + 1;
    sub_1008CCD18(v55, v77 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v54);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = sub_100A5DA38(0, *(v87 + 2) + 1, 1, v87);
    }

    v57 = *(v87 + 2);
    v56 = *(v87 + 3);
    if (v57 >= v56 >> 1)
    {
      v87 = sub_100A5DA38((v56 > 1), v57 + 1, 1, v87);
    }

    sub_1008CCEA8(v0[186], type metadata accessor for FindMyServiceDevice);
    *(v87 + 2) = v57 + 1;
    memcpy(&v87[304 * v57 + 32], v0 + 2, 0x129uLL);
LABEL_13:
    v29 = v35;
    v0[247] = v87;
    v33 += 304;
    --v31;
  }

  while (v31);

  sub_10039A0D0(v77);

  v62 = swift_task_alloc();
  v0[248] = v62;
  *v62 = v0;
  v62[1] = sub_1008CA8DC;

  return sub_1008CBA6C(v87, v85, v81);
}

uint64_t sub_1008CA8DC()
{
  v1 = *(*v0 + 1968);
  v2 = *(*v0 + 1960);
  v3 = *(*v0 + 1952);
  v4 = *(*v0 + 1944);
  v5 = *(*v0 + 1360);

  sub_1008CCE94(v4, v3, v2, v1);

  return _swift_task_switch(sub_1008CAA7C, v5, 0);
}

uint64_t sub_1008CAA7C()
{
  v1 = v0[238];
  v2 = v0[237];
  v10 = v0[198];
  v11 = v0[193];
  v9 = v0[190];
  v3 = v0[175];
  v4 = v0[173];
  v5 = v0[172];
  v6 = v0[171];
  sub_100016590(v0[209], v0[210]);

  sub_100006654(v2, v1);

  (*(v5 + 8))(v4, v6);
  sub_1008CCEA8(v3, type metadata accessor for FindMyServiceDeviceListFilterPayload);
  sub_1008CCEA8(v9, type metadata accessor for FindMyServiceDeviceListEndpoint);
  sub_1008CCEA8(v10, type metadata accessor for FindMyServiceDeviceListClientContext);
  sub_1008CCEA8(v11, type metadata accessor for SearchpartyAccount);
  v12 = v0[165];

  v7 = v0[1];

  return v7(v12);
}

uint64_t sub_1008CACCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008CAE30()
{
  v25 = v0;
  v1 = v0[175];
  sub_100006654(v0[237], v0[238]);

  sub_1008CCEA8(v1, type metadata accessor for FindMyServiceDeviceListFilterPayload);
  sub_10000B3A8((v0 + 141), &qword_1016978B8, &qword_1013C35C0);
  sub_100007BAC(v0 + 136);
  sub_100007BAC(v0 + 131);
  if (qword_101694848 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B078);
  swift_errorRetain();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[198];
  v7 = v0[190];
  if (v5)
  {
    v20 = v0[209];
    v21 = v0[210];
    v22 = v0[198];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v8 = 138543874;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    *(v8 + 12) = 2080;
    v11 = Array.description.getter();
    v13 = sub_1000136BC(v11, v12, &v24);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2080;
    v14 = Array.description.getter();
    v16 = sub_1000136BC(v14, v15, &v24);

    *(v8 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch devices: %{public}@ for serialNumbers: %s, findMyIds: %s.", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    sub_100016590(v20, v21);

    sub_1008CCEA8(v7, type metadata accessor for FindMyServiceDeviceListEndpoint);
    v17 = v22;
  }

  else
  {
    sub_100016590(v0[209], v0[210]);

    sub_1008CCEA8(v7, type metadata accessor for FindMyServiceDeviceListEndpoint);
    v17 = v6;
  }

  sub_1008CCEA8(v17, type metadata accessor for FindMyServiceDeviceListClientContext);
  sub_1008CCEA8(v0[193], type metadata accessor for SearchpartyAccount);
  v23 = v0[235];

  v18 = v0[1];

  return v18(v23);
}

uint64_t sub_1008CB2E4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 8))
  {

    UUID.init(uuidString:)();
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  }

  v59[0] = *(a1 + 16);
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  *(a4 + MyServiceDevice[5]) = *(a1 + 16);
  v9 = *(a1 + 40);
  v10 = (a4 + MyServiceDevice[6]);
  *v10 = *(a1 + 32);
  v10[1] = v9;
  if (*(&v59[0] + 1))
  {
    sub_1000D2A70(v59, v51, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(v59, v51, &qword_1016A0AC0, &unk_1013926A0);

    v11 = String.utf8Data.getter();
    v13 = v12;
    sub_10000B3A8(v59, &qword_1016A0AC0, &unk_1013926A0);
    goto LABEL_8;
  }

  if (v9)
  {
    swift_bridgeObjectRetain_n();
    v11 = String.utf8Data.getter();
    v13 = v14;

LABEL_8:
    v51[0] = v11;
    v51[1] = v13;
    v50 = v13;
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    v58 = *(a1 + 48);
    *(a4 + MyServiceDevice[8]) = v58;
    v15 = *(a1 + 64);
    v16 = *(a1 + 72);
    sub_1008CCDD0(&v58, v51);

    v60._countAndFlagsBits = v15;
    v60._object = v16;
    v17 = sub_1008BEAAC(v60);
    if (v17 == 4)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    *(a4 + MyServiceDevice[9]) = v18;
    v19 = *(a1 + 80);
    v56 = *(a1 + 96);
    v20 = v56;
    v57 = v19;
    *(a4 + MyServiceDevice[10]) = v19;
    *(a4 + MyServiceDevice[11]) = v20;
    v21 = *(a1 + 112);
    v54 = *(a1 + 128);
    v55 = v21;
    *(a4 + MyServiceDevice[12]) = v21;
    v22 = *(a1 + 144);
    *(a4 + MyServiceDevice[13]) = *(a1 + 128);
    *(a4 + MyServiceDevice[14]) = *(a1 + 144);
    v23 = a4 + MyServiceDevice[15];
    *v23 = *(a1 + 160);
    *(v23 + 8) = *(a1 + 168);
    v52 = *(a1 + 176);
    v53 = v22;
    v24 = *(&v52 + 1);
    if (*(&v52 + 1))
    {
      v25 = v52;
      sub_1000D2A70(&v57, v51, &qword_1016A0AC0, &unk_1013926A0);
      sub_1008CCDD0(&v56, v51);
      sub_1008CCDD0(&v55, v51);
      sub_1008CCDD0(&v54, v51);
      sub_1008CCDD0(&v53, v51);
      sub_1000D2A70(&v52, v51, &qword_1016A0AC0, &unk_1013926A0);
      v61._countAndFlagsBits = v25;
      v61._object = v24;
      *(a4 + MyServiceDevice[16]) = sub_1008BEAF8(v61);
    }

    else
    {
      *(a4 + MyServiceDevice[16]) = 4;
      sub_1000D2A70(&v57, v51, &qword_1016A0AC0, &unk_1013926A0);
      sub_1008CCDD0(&v56, v51);
      sub_1008CCDD0(&v55, v51);
      sub_1008CCDD0(&v54, v51);
      sub_1008CCDD0(&v53, v51);
    }

    *(a4 + MyServiceDevice[17]) = *(a1 + 192);
    *(a4 + MyServiceDevice[18]) = *(a1 + 193);
    *(a4 + MyServiceDevice[19]) = *(a1 + 194);
    v26 = *(a1 + 208);
    v27 = (a4 + MyServiceDevice[20]);
    *v27 = *(a1 + 200);
    v27[1] = v26;
    *(a4 + MyServiceDevice[21]) = *(a1 + 216);
    v28 = MyServiceDevice[22];
    if (*(a1 + 248))
    {
      v29 = type metadata accessor for Date();
      (*(*(v29 - 8) + 56))(a4 + v28, 1, 1, v29);
    }

    else
    {

      Date.init(timeIntervalSince1970:)();
      v30 = type metadata accessor for Date();
      (*(*(v30 - 8) + 56))(a4 + v28, 0, 1, v30);
    }

    *(a4 + MyServiceDevice[25]) = *(a1 + 281);
    v31 = MyServiceDevice[23];
    if (*(a1 + 264))
    {
      v32 = type metadata accessor for Date();
      (*(*(v32 - 8) + 56))(a4 + v31, 1, 1, v32);
    }

    else
    {
      Date.init(timeIntervalSince1970:)();
      v33 = type metadata accessor for Date();
      (*(*(v33 - 8) + 56))(a4 + v31, 0, 1, v33);
    }

    v34 = MyServiceDevice[24];
    if (*(a1 + 280))
    {
      v35 = type metadata accessor for Date();
      (*(*(v35 - 8) + 56))(a4 + v34, 1, 1, v35);
    }

    else
    {
      Date.init(timeIntervalSince1970:)();
      v36 = type metadata accessor for Date();
      (*(*(v36 - 8) + 56))(a4 + v34, 0, 1, v36);
    }

    if (a3)
    {
      URL.init(string:)();
    }

    else
    {
      v37 = MyServiceDevice[31];
      v38 = type metadata accessor for URL();
      (*(*(v38 - 8) + 56))(a4 + v37, 1, 1, v38);
    }

    v39 = *(a1 + 232);
    v40 = (a4 + MyServiceDevice[26]);
    *v40 = *(a1 + 224);
    v40[1] = v39;
    v41 = *(a1 + 288);
    if (!v41)
    {
      *(a4 + MyServiceDevice[27]) = 0;
      *(a4 + MyServiceDevice[28]) = 0;

      goto LABEL_40;
    }

    v42 = *(v41 + 16);

    if (v42 && (v43 = sub_100771D58(4476499, 0xE300000000000000), (v44 & 1) != 0))
    {
      *(a4 + MyServiceDevice[27]) = *(*(v41 + 56) + v43);
      if (!*(v41 + 16))
      {
        goto LABEL_35;
      }
    }

    else
    {
      *(a4 + MyServiceDevice[27]) = 0;
      if (!*(v41 + 16))
      {
        goto LABEL_35;
      }
    }

    v45 = sub_100771D58(5460816, 0xE300000000000000);
    if (v46)
    {
      *(a4 + MyServiceDevice[28]) = *(*(v41 + 56) + v45);
      if (!*(v41 + 16))
      {
        goto LABEL_38;
      }

LABEL_36:
      v47 = sub_100771D58(4998482, 0xE300000000000000);
      if (v48)
      {
        LOBYTE(v41) = *(*(v41 + 56) + v47);
LABEL_40:
        sub_100016590(v11, v50);
        result = sub_100840D88(a1);
        *(a4 + MyServiceDevice[29]) = v41;
        *(a4 + MyServiceDevice[30]) = *(a1 + 296);
        return result;
      }

LABEL_38:
      LOBYTE(v41) = 0;
      goto LABEL_40;
    }

LABEL_35:
    *(a4 + MyServiceDevice[28]) = 0;
    if (!*(v41 + 16))
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  sub_100840D88(a1);
  sub_1008CCD7C();
  swift_allocError();
  swift_willThrow();
  return sub_10000B3A8(a4, &qword_1016980D0, &unk_10138F3B0);
}

uint64_t sub_1008CBA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[157] = v3;
  v4[156] = a3;
  v4[155] = a2;
  v4[154] = a1;
  v5 = type metadata accessor for UUID();
  v4[158] = v5;
  v4[159] = *(v5 - 8);
  v4[160] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4[161] = swift_task_alloc();
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  v4[162] = MyServiceDevice;
  v4[163] = *(MyServiceDevice - 8);
  v4[164] = swift_task_alloc();
  v4[165] = swift_task_alloc();
  v4[166] = swift_task_alloc();
  v4[167] = swift_task_alloc();

  return _swift_task_switch(sub_1008CBBF0, v3, 0);
}

uint64_t sub_1008CBBF0()
{
  v48 = v0;
  v1 = v0[154];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = v0[159];
    v44 = (v4 + 48);
    v42 = (v4 + 8);
    v5 = _swiftEmptyArrayStorage;
    v45 = v0[163];
    v43 = v0[162];
    do
    {
      v6 = v0[167];
      v7 = v0[156];
      memcpy(v0 + 2, v3, 0x129uLL);
      sub_100840D50((v0 + 2), (v0 + 40));
      sub_100840D50((v0 + 2), (v0 + 78));

      sub_1008CB2E4((v0 + 2), v7, v6);
      sub_100840D88((v0 + 2));
      if (qword_101694848 != -1)
      {
        swift_once();
      }

      v8 = v0[167];
      v9 = v0[166];
      v10 = v0[165];
      v11 = type metadata accessor for Logger();
      sub_1000076D4(v11, qword_10177B078);
      sub_1008CCF78(v8, v9, type metadata accessor for FindMyServiceDevice);
      sub_1008CCF78(v8, v10, type metadata accessor for FindMyServiceDevice);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      v14 = os_log_type_enabled(v12, v13);
      v15 = v0[166];
      if (v14)
      {
        v46 = v5;
        v16 = v0[161];
        v17 = v0[158];
        v18 = swift_slowAlloc();
        v47[0] = swift_slowAlloc();
        *v18 = 136315394;
        sub_1000D2A70(v15, v16, &qword_1016980D0, &unk_10138F3B0);
        if ((*v44)(v16, 1, v17) == 1)
        {
          sub_10000B3A8(v0[161], &qword_1016980D0, &unk_10138F3B0);
          v19 = 0xE400000000000000;
          v20 = 1162760014;
        }

        else
        {
          v22 = v0[158];
          v23 = v0[161];
          v20 = UUID.uuidString.getter();
          v19 = v24;
          (*v42)(v23, v22);
        }

        v25 = v0[165];
        sub_1008CCEA8(v0[166], type metadata accessor for FindMyServiceDevice);
        v26 = sub_1000136BC(v20, v19, v47);

        *(v18 + 4) = v26;
        *(v18 + 12) = 2080;
        v27 = (v25 + *(v43 + 32));
        v29 = *v27;
        v28 = v27[1];

        sub_1008CCEA8(v25, type metadata accessor for FindMyServiceDevice);
        v30 = sub_1000136BC(v29, v28, v47);

        *(v18 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v12, v13, "Download got beacon %s, name: %s", v18, 0x16u);
        swift_arrayDestroy();

        v5 = v46;
      }

      else
      {
        v21 = v0[165];

        sub_1008CCEA8(v21, type metadata accessor for FindMyServiceDevice);
        sub_1008CCEA8(v15, type metadata accessor for FindMyServiceDevice);
      }

      sub_1008CCF78(v0[167], v0[164], type metadata accessor for FindMyServiceDevice);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100A5DA10(0, v5[2] + 1, 1, v5);
      }

      v32 = v5[2];
      v31 = v5[3];
      if (v32 >= v31 >> 1)
      {
        v5 = sub_100A5DA10((v31 > 1), v32 + 1, 1, v5);
      }

      v33 = v0[164];
      sub_1008CCEA8(v0[167], type metadata accessor for FindMyServiceDevice);
      v5[2] = v32 + 1;
      sub_1008CCD18(v33, v5 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v32);
      v3 += 304;
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v0[168] = v5;
  v34 = v0[157];
  v35 = *(v34 + 128);
  if (v35)
  {
    v36 = *(v34 + 136);
    v37 = getuid();
    sub_1000294F0(v37);
    v38 = swift_task_alloc();
    v0[169] = v38;
    *v38 = v0;
    v38[1] = sub_1008CC398;
    v39 = v0[160];

    return sub_10072B87C(v5, v39, v35, v36);
  }

  else
  {

    v41 = v0[1];

    return v41();
  }
}

uint64_t sub_1008CC398()
{
  v2 = *v1;
  v2[170] = v0;

  if (v0)
  {
    v3 = v2[157];
    (*(v2[159] + 8))(v2[160], v2[158]);

    return _swift_task_switch(sub_1008CC57C, v3, 0);
  }

  else
  {
    (*(v2[159] + 8))(v2[160], v2[158]);

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1008CC57C()
{
  if (qword_101694848 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B078);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to update devices: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008CC764()
{

  sub_1008CD548(*(v0 + 128), *(v0 + 136));

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_subscriptionTTL, &unk_101696900, &unk_10138B1E0);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for FindMyServiceDeviceStoreService(uint64_t a1)
{
  result = qword_1016AD110;
  if (!qword_1016AD110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008CC820(uint64_t a1)
{
  sub_100157BAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1008CC8E4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  MyServiceDeviceStoreService = type metadata accessor for FindMyServiceDeviceStoreService(0);
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(MyServiceDeviceStoreService, a2);
}

uint64_t sub_1008CC990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  MyServiceDeviceStoreService = type metadata accessor for FindMyServiceDeviceStoreService(0);
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, MyServiceDeviceStoreService, a4);
}

uint64_t sub_1008CCA58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1008BF9A8();
}

uint64_t sub_1008CCAE4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  MyServiceDeviceStoreService = type metadata accessor for FindMyServiceDeviceStoreService(0);
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(MyServiceDeviceStoreService, a2);
}

uint64_t sub_1008CCB90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1008BF374();
}

uint64_t sub_1008CCC1C()
{
  type metadata accessor for FindMyServiceDeviceStoreService(0);
  sub_1008CD500(&unk_1016B1140, type metadata accessor for FindMyServiceDeviceStoreService, &unk_1013C3520);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1008CCD18(uint64_t a1, uint64_t a2)
{
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  (*(*(MyServiceDevice - 8) + 32))(a2, a1, MyServiceDevice);
  return a2;
}

unint64_t sub_1008CCD7C()
{
  result = qword_1016AD2C0;
  if (!qword_1016AD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD2C0);
  }

  return result;
}

unint64_t sub_1008CCE2C()
{
  result = qword_1016AD2D8;
  if (!qword_1016AD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD2D8);
  }

  return result;
}

double sub_1008CCE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_1008CCE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_1008CCEA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1008CCF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008CCF78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008CCFE0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_10096005C(v2, v3, v4);
}

uint64_t sub_1008CD088(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 40);
}

uint64_t sub_1008CD0E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100961328(v2, v3, v4);
}

uint64_t sub_1008CD190(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_100016590(a2, a3);
  }

  return result;
}

uint64_t sub_1008CD1D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1008BF558();
}

uint64_t sub_1008CD274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1008BF5E8();
}

uint64_t sub_1008CD310(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_1008BF678(a1, v1);
}

uint64_t sub_1008CD3AC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014650;

  return sub_1008BFD94(a1, a2, v2);
}

uint64_t sub_1008CD458(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_1008C05B8(a1, a2, v2);
}

uint64_t sub_1008CD500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1008CD548(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1008CD59C()
{
  result = qword_1016AD2F8;
  if (!qword_1016AD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD2F8);
  }

  return result;
}

Swift::Int sub_1008CD654()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1013C39D4[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1008CD6DC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1013C39D4[v2]);
  return Hasher._finalize()();
}

uint64_t sub_1008CD728@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008CDCE0(*a1);
  *a2 = result;
  return result;
}

unsigned int *sub_1008CD82C@<X0>(unsigned int *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1008CD944()
{
  result = qword_1016AD300;
  if (!qword_1016AD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD300);
  }

  return result;
}

unint64_t sub_1008CD998()
{
  result = qword_1016AD308;
  if (!qword_1016AD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD308);
  }

  return result;
}

unint64_t sub_1008CD9EC()
{
  result = qword_1016AD310;
  if (!qword_1016AD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD310);
  }

  return result;
}

unint64_t sub_1008CDA74()
{
  result = qword_1016AD328;
  if (!qword_1016AD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD328);
  }

  return result;
}

uint64_t sub_1008CDB08(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1008CDB5C()
{
  result = qword_1016AD330;
  if (!qword_1016AD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD330);
  }

  return result;
}

unint64_t sub_1008CDBB0()
{
  result = qword_1016AD338;
  if (!qword_1016AD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD338);
  }

  return result;
}

unint64_t sub_1008CDC04()
{
  result = qword_1016AD340;
  if (!qword_1016AD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD340);
  }

  return result;
}

unint64_t sub_1008CDC8C()
{
  result = qword_1016AD358;
  if (!qword_1016AD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD358);
  }

  return result;
}

uint64_t sub_1008CDCE0(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return 14;
  }

  else
  {
    return byte_1013C3A0C[a1];
  }
}

unint64_t sub_1008CDD10(unsigned __int8 a1)
{
  v1 = 0x73736563637573;
  v2 = 0x6C69617641746F6ELL;
  if (a1 != 3)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (a1 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (a1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (a1 <= 1u)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x756C615677617228;
  v6._object = 0xEA00000000003A65;
  String.append(_:)(v6);

  return v3;
}

unint64_t sub_1008CDF34()
{
  result = qword_1016AD360;
  if (!qword_1016AD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD360);
  }

  return result;
}

unint64_t sub_1008CDF88(uint64_t a1, unint64_t a2)
{
  sub_1000E0A3C();
  v4 = DataProtocol.intValue.getter();
  sub_100016590(a1, a2);
  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1008CDFF4()
{
  result = qword_1016AD368;
  if (!qword_1016AD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD368);
  }

  return result;
}

uint64_t sub_1008CE048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1008D2528(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t Database.openOrScheduleOpenAfterFirstUnlockIfNeeded(logger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v27 = &v24 - v8;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v25 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  v15 = *(v10 + 16);
  v26 = a1;
  v16 = a1;
  v17 = a2;
  v15(&v24 - v13, v16, v9);
  if (((*(a3 + 56))(a2, a3) & 1) != 0 && static Database.beforeFirstUnlock.getter())
  {
    (*(v10 + 8))(v14, v9);
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v27, 1, 1, v18);
    v19 = v25;
    v15(v25, v26, v9);
    v20 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v21 = swift_allocObject();
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    *(v21 + 4) = v17;
    *(v21 + 5) = a3;
    (*(v10 + 32))(&v21[v20], v19, v9);
    *&v21[(v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8] = v3;
    swift_unknownObjectRetain();
    v22 = v27;
    sub_1008CE048(0, 0, v27, &unk_1013C3B60, v21);

    return sub_10000B3A8(v22, &qword_101698C00, &qword_10138B570);
  }

  else
  {
    sub_1008D0834(v3, v14, a2, a3);
    return (*(v10 + 8))(v14, v9);
  }
}

Swift::Int64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database._test_raw_scalar_sql_query(_:)(Swift::String a1)
{
  v4 = v2;
  v5 = v1;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v10[0] = 0x7365547265646E75;
  v10[1] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v11 != 1)
  {
    return 0;
  }

  if (((*(v4 + 56))(v5, v4) & 1) != 0 && static Database.beforeFirstUnlock.getter())
  {
    sub_10020223C();
    swift_allocError();
    v7 = 4;
LABEL_14:
    *v6 = v7;
    *(v6 + 4) = 1;
    return swift_willThrow();
  }

  if (!Database.readConnection.getter(v5, v4))
  {
    sub_10020223C();
    swift_allocError();
    v7 = 2;
    goto LABEL_14;
  }

  Connection.scalar(_:_:)();
  if (!v3)
  {
    if (v10[3])
    {
      sub_1000BC4D4(&qword_1016AD378, &unk_1013C3B70);
      if (swift_dynamicCast())
      {

        return v11;
      }
    }

    else
    {
      sub_10000B3A8(v10, &qword_1016AD370, &qword_1013C3B68);
    }

    sub_10020223C();
    swift_allocError();
    *v9 = 0;
    *(v9 + 4) = 1;
    swift_willThrow();
  }
}

uint64_t Database.writeConnection.getter(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 24))() & 1) == 0)
  {
    return 0;
  }

  result = (*(a2 + 16))(a1, a2);
  if (result)
  {
    v5 = *(result + 24);

    return v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.reset()()
{
  v3 = v1;
  v4 = v0;
  (*(v1 + 96))();
  if (!v2)
  {
    (*(v3 + 80))(v4, v3);
  }
}

{
  Database.reset()();
}

uint64_t Database.readConnection.getter(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 24))() & 1) == 0)
  {
    return 0;
  }

  result = (*(a2 + 16))(a1, a2);
  if (result)
  {
    v5 = *(result + 16);

    return v5;
  }

  return result;
}

uint64_t static Database.establishConnection(logger:temporary:)(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v91 = a1;
  v7 = type metadata accessor for Connection.Location();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v97 = (&v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v13 = (&v88 - v12);
  __chkstk_darwin(v11);
  v15 = &v88 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v101 = v16;
  v102 = v17;
  v18 = __chkstk_darwin(v16);
  v92 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v21 = __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v22 = *(a4 + 72);
  v103 = &v88 - v23;
  v99 = v24;
  v100 = v25;
  v22();
  v93 = a2;
  v95 = a4;
  v96 = v8;
  v94 = a3;
  if (a2)
  {
    v90 = *(v8 + 104);
    v90(v15, enum case for Connection.Location.temporary(_:), v7);
    type metadata accessor for ConnectionPair();
    swift_allocObject();
    v26 = v98;
    v27 = ConnectionPair.init(_:readonly:key:)(v15, 0, 0, 0xF000000000000000);
    v28 = v26;
    if (!v26)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *v13 = URL.path.getter();
    v13[1] = v29;
    v30 = *(v8 + 104);
    v30(v13, enum case for Connection.Location.uri(_:), v7);
    v31 = v98;
    v32 = (*(a4 + 64))(a3, a4);
    v98 = v33;
    v28 = v31;
    if (!v31)
    {
      v62 = v32;
      type metadata accessor for ConnectionPair();
      swift_allocObject();
      v27 = ConnectionPair.init(_:readonly:key:)(v13, 0, v62, v98);
LABEL_14:
      v63 = v27;
      v64 = *(v102 + 8);
      v102 += 8;
      v54 = v99;
      goto LABEL_26;
    }

    v90 = v30;
    (*(v8 + 8))(v13, v7);
  }

  v98 = 0;
  v34 = v28;
  v35 = v97;
  v36 = [objc_opt_self() defaultManager];
  v37 = v92;
  (*(v102 + 16))(v92, v103, v101);
  swift_errorRetain();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v89 = v36;
    v42 = v41;
    v43 = swift_slowAlloc();
    v91 = v34;
    v44 = v43;
    v104 = v43;
    *v40 = 136446466;
    sub_1000248F0(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v37;
    v47 = v7;
    v48 = v35;
    v50 = v49;
    v97 = *(v102 + 8);
    (v97)(v46, v101);
    v51 = sub_1000136BC(v45, v50, &v104);
    v35 = v48;
    v7 = v47;

    *(v40 + 4) = v51;
    *(v40 + 12) = 2114;
    v52 = _convertErrorToNSError(_:)();
    *(v40 + 14) = v52;
    *v42 = v52;
    _os_log_impl(&_mh_execute_header, v38, v39, "Unable to open %{public}s: %{public}@", v40, 0x16u);
    sub_10000B3A8(v42, &qword_10169BB30, &unk_10138B3C0);
    v36 = v89;

    sub_100007BAC(v44);
  }

  else
  {

    v97 = *(v102 + 8);
    (v97)(v37, v101);
  }

  v53 = v99;
  if (v93)
  {
    v54 = v99;
  }

  else
  {
    v55 = v7;
    v56 = v35;
    URL._bridgeToObjectiveC()(v93);
    v58 = v57;
    v104 = 0;
    v59 = [v36 removeItemAtURL:v57 error:&v104];

    if (v59)
    {
      v60 = v104;
    }

    else
    {
      v65 = v104;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v98 = 0;
    }

    URL._bridgeToObjectiveC()(v61);
    v67 = v66;
    v104 = 0;
    v68 = [v36 removeItemAtURL:v66 error:&v104];

    if (v68)
    {
      v69 = v104;
    }

    else
    {
      v71 = v104;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v98 = 0;
    }

    URL._bridgeToObjectiveC()(v70);
    v73 = v72;
    v104 = 0;
    v74 = [v36 removeItemAtURL:v72 error:&v104];

    v54 = v53;
    if (!v74)
    {
      v77 = v104;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v76 = 0;
      v35 = v56;
      v7 = v55;
      goto LABEL_23;
    }

    v75 = v104;
    v35 = v56;
    v7 = v55;
  }

  v76 = v98;
LABEL_23:
  *v35 = URL.path.getter();
  v35[1] = v78;
  v79 = v96;
  v90(v35, enum case for Connection.Location.uri(_:), v7);
  v80 = (*(v95 + 64))();
  if (v76)
  {

    (*(v79 + 8))(v35, v7);
    v84 = v97;
    v85 = v101;
    (v97)(v100, v101);
    (v84)(v54, v85);
    return (v84)(v103, v85);
  }

  v82 = v80;
  v83 = v81;
  type metadata accessor for ConnectionPair();
  swift_allocObject();
  v63 = ConnectionPair.init(_:readonly:key:)(v35, 0, v82, v83);

  v102 += 8;
  v64 = v97;
LABEL_26:
  v87 = v101;
  (v64)(v100, v101);
  (v64)(v54, v87);
  (v64)(v103, v87);
  return v63;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.startup()()
{
  v4 = v2;
  v5 = v1;
  v6 = v0;
  if (((*(v1 + 56))() & 1) != 0 && static Database.beforeFirstUnlock.getter())
  {
    sub_10020223C();
    swift_allocError();
    v8 = 4;
LABEL_6:
    *v7 = v8;
    *(v7 + 4) = 1;
    swift_willThrow();
    return;
  }

  v9 = *(v5 + 16);
  if (v9(v6, v5))
  {

    sub_10020223C();
    swift_allocError();
    v8 = 3;
    goto LABEL_6;
  }

  (*(v5 + 112))(v6, v5);
  if (!v3)
  {
    v10 = v9(v6, v5);
    if (!v10)
    {
      sub_10020223C();
      swift_allocError();
      v8 = 2;
      goto LABEL_6;
    }

    v11 = *(v10 + 24);

    v12._countAndFlagsBits = 0xD000000000000019;
    v12._object = 0x8000000101363F90;
    Connection.execute(_:)(v12);
    if (v13 || (Database.optimize()(), (v15 = v14) != 0))
    {
LABEL_40:

      return;
    }

    Connection.handle.getter();
    _sqlite3_maintain_load_factor();
    v64 = Connection.userVersion.getter();
    v16 = *(v5 + 40);
    if (v16(v6, v5) < v64)
    {
      v15 = v16;
      if (qword_101694A38 == -1)
      {
LABEL_14:
        v17 = type metadata accessor for Logger();
        sub_1000076D4(v17, qword_10177B590);
        swift_unknownObjectRetain_n();
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          loga = swift_slowAlloc();
          v67 = loga;
          *v20 = 136446722;
          v69 = v4;
          v58 = v19;
          v21 = dispatch thunk of CustomStringConvertible.description.getter();
          v23 = sub_1000136BC(v21, v22, &v67);

          *(v20 + 4) = v23;
          *(v20 + 12) = 1024;
          *(v20 + 14) = v64;
          *(v20 + 18) = 1024;
          v24 = v15(v6, v5);
          swift_unknownObjectRelease();
          *(v20 + 20) = v24;
          swift_unknownObjectRelease();
          _os_log_impl(&_mh_execute_header, v18, v58, "%{public}s Schema too new! (%d) -- expected <= %d", v20, 0x18u);
          sub_100007BAC(loga);
        }

        else
        {

          swift_unknownObjectRelease_n();
        }

        sub_10020223C();
        swift_allocError();
        *v43 = v64;
        *(v43 + 4) = 0;
        swift_willThrow();
        goto LABEL_40;
      }

LABEL_43:
      swift_once();
      goto LABEL_14;
    }

    if (v64 >= v16(v6, v5))
    {
      if (qword_101694A38 == -1)
      {
LABEL_35:
        v44 = type metadata accessor for Logger();
        sub_1000076D4(v44, qword_10177B590);
        swift_unknownObjectRetain_n();
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v66 = v46;
          v47 = v16;
          v48 = swift_slowAlloc();
          logc = swift_slowAlloc();
          v67 = logc;
          *v48 = 136446466;
          v69 = v4;
          v59 = v45;
          v49 = dispatch thunk of CustomStringConvertible.description.getter();
          v51 = sub_1000136BC(v49, v50, &v67);

          *(v48 + 4) = v51;
          *(v48 + 12) = 1024;
          v52 = v47(v6, v5);
          swift_unknownObjectRelease();
          *(v48 + 14) = v52;
          swift_unknownObjectRelease();
          _os_log_impl(&_mh_execute_header, v59, v66, "%{public}s is available. [schema version %d]", v48, 0x12u);
          sub_100007BAC(logc);

          goto LABEL_39;
        }

LABEL_38:
        swift_unknownObjectRelease_n();
        goto LABEL_39;
      }
    }

    else
    {
      v25 = v16(v6, v5);
      if (v25 >= v64)
      {
        v54 = v16;
        if (v64 != v25)
        {
          if (qword_101694A38 != -1)
          {
            v53 = v25;
            swift_once();
            v25 = v53;
          }

          v57 = *(v5 + 88);
          v56 = v25;
          while (v64 < v25)
          {
            v26 = (v64 + 1);
            v27 = type metadata accessor for Logger();
            sub_1000076D4(v27, qword_10177B590);
            swift_unknownObjectRetain();
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.default.getter();
            log = v28;
            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v67 = v55;
              *v30 = 136446722;
              v69 = v4;
              v31 = dispatch thunk of CustomStringConvertible.description.getter();
              v33 = v32;
              swift_unknownObjectRelease();
              v34 = sub_1000136BC(v31, v33, &v67);
              v26 = (v64 + 1);

              *(v30 + 4) = v34;
              *(v30 + 12) = 1024;
              *(v30 + 14) = v64;
              *(v30 + 18) = 1024;
              *(v30 + 20) = v64 + 1;
              _os_log_impl(&_mh_execute_header, log, v29, "%{public}s migrating schema %d -> %d", v30, 0x18u);
              sub_100007BAC(v55);
            }

            else
            {
              swift_unknownObjectRelease();
            }

            v57(v64, v26, v11, v6, v5);
            v67 = 0;
            v68 = 0xE000000000000000;
            _StringGuts.grow(_:)(24);

            v67 = 0xD000000000000016;
            v68 = 0x8000000101363FB0;
            LODWORD(v69) = v26;
            v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v35);

            Connection.run(_:_:)();

            v64 = v26;
            v25 = v56;
            if (v56 == v26)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
          goto LABEL_43;
        }

LABEL_28:
        sub_1008D1D3C(v6, v5);
        if (qword_101694A38 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_1000076D4(v36, qword_10177B590);
        swift_unknownObjectRetain_n();
        v37 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v65))
        {
          v38 = swift_slowAlloc();
          logb = swift_slowAlloc();
          v67 = logb;
          *v38 = 136446466;
          v69 = v4;
          v39 = dispatch thunk of CustomStringConvertible.description.getter();
          v41 = sub_1000136BC(v39, v40, &v67);

          *(v38 + 4) = v41;
          *(v38 + 12) = 1024;
          v42 = v54(v6, v5);
          swift_unknownObjectRelease();
          *(v38 + 14) = v42;
          swift_unknownObjectRelease();
          _os_log_impl(&_mh_execute_header, v37, v65, "%{public}s is available. [schema version %d]", v38, 0x12u);
          sub_100007BAC(logb);

LABEL_39:
          (*(v5 + 120))(v6, v5);
          goto LABEL_40;
        }

        goto LABEL_38;
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_35;
  }
}

{
  Database.startup()();
}

uint64_t Database.description.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16))())
  {
    _StringGuts.grow(_:)(22);

    v2._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v2);

    v3._countAndFlagsBits = 8250;
    v3._object = 0xE200000000000000;
    String.append(_:)(v3);
    v4._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v4);

    v5._countAndFlagsBits = 0x206574694C515320;
    v5._object = 0xE900000000000076;
    String.append(_:)(v5);
    v6._countAndFlagsBits = 0x302E31352E33;
    v6._object = 0xE600000000000000;
    String.append(_:)(v6);
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8._countAndFlagsBits = Connection.description.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 62;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
  }

  else
  {
    _StringGuts.grow(_:)(34);

    v10._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 8250;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 0x206574694C515320;
    v13._object = 0xE900000000000076;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 0x302E31352E33;
    v14._object = 0xE600000000000000;
    String.append(_:)(v14);
    v15._object = 0x8000000101363FD0;
    v15._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v15);
  }

  return 60;
}

uint64_t Connection.init(_:readonly:key:)(char *a1, int a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v15 = *(v8 + 8);
  v15(v10, v7);
  v25[0] = 0;
  LODWORD(v10) = [v11 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v25];

  if (v10)
  {
    v16 = a3;
    v17 = a4;
    v18 = v25[0];
    URL.path.getter();
    v19 = v24;
    v20 = Connection.__allocating_init(_:readonly:)();
    if (v19)
    {
      v15(a1, v7);
      sub_100006654(v16, a4);
    }

    else
    {
      a4 = v20;
      if (v17 >> 60 == 15)
      {
        v15(a1, v7);
      }

      else
      {

        sub_10002E98C(v16, v17);
        sub_1008D2180(v16, v17, a4, v16, v17, &sqlite3_key_v2, &sqlite3_key_v2);
        sub_100006654(v16, v17);
        Connection.scalar(_:_:)();
        sub_100006654(v16, v17);
        v15(a1, v7);
        sub_10000B3A8(v25, &qword_1016AD370, &qword_1013C3B68);
      }
    }
  }

  else
  {
    v21 = v25[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100006654(a3, a4);
    v15(a1, v7);
  }

  return a4;
}

BOOL static Database.beforeFirstUnlock.getter()
{
  v0 = type metadata accessor for SystemInfo.DeviceLockState();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v9 - v5;
  static SystemInfo.lockState.getter();
  (*(v1 + 104))(v4, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v0);
  sub_1000248F0(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v7(v6, v0);
  return v9[1] == v9[0];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.optimize()()
{
  v2 = v1;
  v3 = v0;
  if (((*(v1 + 56))() & 1) != 0 && static Database.beforeFirstUnlock.getter())
  {
    v4 = 4;
  }

  else
  {
    if ((*(v2 + 16))(v3, v2))
    {

      v5._object = 0x8000000101364020;
      v5._countAndFlagsBits = 0xD000000000000010;
      Connection.execute(_:)(v5);

      return;
    }

    v4 = 2;
  }

  sub_10020223C();
  swift_allocError();
  *v6 = v4;
  *(v6 + 4) = 1;
  swift_willThrow();
}

void *Connection.userVersion.getter()
{
  result = Connection.scalar(_:_:)();
  if (!v0)
  {
    if (v4)
    {
      sub_1000BC4D4(&qword_1016AD378, &unk_1013C3B70);
      if (swift_dynamicCast())
      {
        result = v5;
        if (v5 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v5 <= 0x7FFFFFFF)
        {
          return result;
        }

        __break(1u);
        return result;
      }
    }

    else
    {
      sub_10000B3A8(v3, &qword_1016AD370, &qword_1013C3B68);
    }

    sub_10020223C();
    swift_allocError();
    *v2 = 0;
    *(v2 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Connection.update(userVersion:)(Swift::Int32 userVersion)
{
  _StringGuts.grow(_:)(24);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  Connection.run(_:_:)();

  if (!v1)
  {
  }
}

uint64_t sub_1008D09B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = type metadata accessor for Logger();
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v7[9] = *(v9 + 64);
  v7[10] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[11] = v10;
  *v10 = v7;
  v10[1] = sub_1008D0AB4;

  return daemon.getter();
}

uint64_t sub_1008D0AB4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v6 = sub_1000248F0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000248F0(&qword_10169BD10, &type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  *v3 = v9;
  v3[1] = sub_1008D0C90;

  return ActorServiceDaemon.getService<A>()(v4, UnlockService, v6, v7);
}

uint64_t sub_1008D0C90(uint64_t a1)
{
  *(*v2 + 112) = a1;

  if (v1)
  {

    v3 = sub_1008D0DE0;
  }

  else
  {

    v3 = sub_1008D0EF8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1008D0DE0()
{
  if (qword_101694A38 != -1)
  {
    swift_once();
  }

  sub_1000076D4(*(v0 + 56), qword_10177B590);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to get FirstUnlockService", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1008D0EF8()
{
  v13 = v0;
  swift_unknownObjectRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[4];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    v6 = CustomStringConvertible.typeDescription.getter();
    v8 = sub_1000136BC(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Waiting for first unlock to open encrypted SQLite database for %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v11 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_1008D10A8;

  return v11();
}

uint64_t sub_1008D10A8()
{

  return _swift_task_switch(sub_1008D11A4, 0, 0);
}

uint64_t sub_1008D11A4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  type metadata accessor for Transaction();
  v10 = *(v0 + 40);
  (*(v3 + 16))(v1, v5, v2);
  v6 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v10;
  *(v7 + 32) = v4;
  (*(v3 + 32))(v7 + v6, v1, v2);
  swift_unknownObjectRetain();
  static Transaction.asyncTask(name:block:)();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1008D12FC(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(type metadata accessor for Logger() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014650;

  return sub_1008D09B8(a1, v8, v9, v1 + v7, v10, v5, v4);
}

uint64_t sub_1008D1430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1008D1454, 0, 0);
}

uint64_t sub_1008D1454()
{
  v12 = v0;
  (*(v0[6] + 80))(v0[5]);
  swift_unknownObjectRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[3];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[2] = v3;
    v6 = CustomStringConvertible.typeDescription.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "SQLite database for %s opened successfully after device unlock.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v9 = v0[1];

  return v9();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.incrementalVacuum()()
{
  v2 = v1;
  v3 = v0;
  if (((*(v1 + 56))() & 1) != 0 && static Database.beforeFirstUnlock.getter())
  {
    v4 = 4;
  }

  else
  {
    if ((*(v2 + 16))(v3, v2))
    {

      v5._object = 0x8000000101364060;
      v5._countAndFlagsBits = 0xD00000000000001ALL;
      Connection.execute(_:)(v5);

      return;
    }

    v4 = 2;
  }

  sub_10020223C();
  swift_allocError();
  *v6 = v4;
  *(v6 + 4) = 1;
  swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.checkpoint(mode:)(searchpartyd::DatabaseCheckpointMode mode)
{
  v3 = v2;
  v4 = v1;
  if (((*(v2 + 56))() & 1) != 0 && static Database.beforeFirstUnlock.getter())
  {
    v6 = 4;
LABEL_11:
    sub_10020223C();
    swift_allocError();
    *v12 = v6;
    *(v12 + 4) = 1;
    swift_willThrow();
    return;
  }

  if (!(*(v3 + 16))(v4, v3))
  {
    v6 = 2;
    goto LABEL_11;
  }

  *pnLog = 0;
  v7 = Connection.handle.getter();
  sqlite3_wal_checkpoint_v2(v7, "main", mode, &pnLog[1], pnLog);
  if (qword_101694948 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177B350);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    swift_beginAccess();
    *(v11 + 4) = pnLog[0];
    *(v11 + 8) = 1024;
    swift_beginAccess();
    *(v11 + 10) = pnLog[1];
    _os_log_impl(&_mh_execute_header, v9, v10, "Checkpointed %d/%d", v11, 0xEu);
  }
}

uint64_t Connection.rekey(key:)(uint64_t a1, unint64_t a2)
{

  sub_100017D5C(a1, a2);
  v6 = sub_1008D2180(a1, a2, v2, a1, a2, &sqlite3_rekey_v2, &sqlite3_rekey_v2);
  sub_100016590(a1, a2);
  Connection.scalar(_:_:)();
  if (!v3)
  {
    sub_10000B3A8(v8, &qword_1016AD370, &qword_1013C3B68);
  }

  return v6;
}

uint64_t sub_1008D1AEC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B590);
  sub_1000076D4(v0, qword_10177B590);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1008D1BDC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1000136BC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1008D1C38(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_101699368, &unk_1013B34B0);
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

_BYTE **sub_1008D1D2C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1008D1D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLResourceValues();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = [objc_opt_self() defaultManager];
  (*(a2 + 72))(v16, v14, v11, a1, a2);
  URLResourceValues.init()();
  URLResourceValues.isExcludedFromBackup.setter();
  URL.path.getter();
  v18 = String._bridgeToObjectiveC()();

  LODWORD(a1) = [v17 fileExistsAtPath:v18];

  if (a1)
  {
    v19 = v29;
    URL.setResourceValues(_:)();
    if (v19)
    {
      goto LABEL_9;
    }

    v29 = 0;
  }

  URL.path.getter();
  v20 = String._bridgeToObjectiveC()();

  v21 = [v17 fileExistsAtPath:v20];

  if (v21)
  {
    v22 = v29;
    URL.setResourceValues(_:)();
    if (v22)
    {
      goto LABEL_9;
    }

    v29 = 0;
  }

  URL.path.getter();
  v23 = String._bridgeToObjectiveC()();

  v24 = [v17 fileExistsAtPath:v23];

  if (v24)
  {
    URL.setResourceValues(_:)();
  }

LABEL_9:

  (*(v27 + 8))(v6, v28);
  v25 = *(v8 + 8);
  v25(v11, v7);
  v25(v14, v7);
  return (v25)(v16, v7);
}

uint64_t sub_1008D2080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t, const char *, uint64_t, uint64_t))
{
  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v13 = a1 - result + v11;
  }

  else
  {
    v13 = 0;
  }

  __DataStorage._length.getter();
  result = Connection.handle.getter();
  v14 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = BYTE6(a5);
      return a6(result, "main", v13, v15);
    }

    goto LABEL_13;
  }

  if (v14 != 2)
  {
LABEL_16:
    v15 = 0;
    return a6(result, "main", v13, v15);
  }

  v17 = *(a4 + 16);
  v16 = *(a4 + 24);
  v15 = v16 - v17;
  if (!__OFSUB__(v16, v17))
  {
    if (v15 >= 0xFFFFFFFF80000000)
    {
      if (v15 <= 0x7FFFFFFF)
      {
        return a6(result, "main", v13, v15);
      }

      __break(1u);
LABEL_13:
      v15 = (HIDWORD(a4) - a4);
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
        return a6(result, "main", v13, v15);
      }

      __break(1u);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1008D2180(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t, const char *, uint64_t, uint64_t), uint64_t (*a7)(uint64_t, const char *, void *, uint64_t))
{
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    goto LABEL_8;
  }

  if (v10)
  {
    if (a1 <= a1 >> 32)
    {
      v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = a1;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_33;
  }

  v11 = a4;
  v21[0] = a1;
  LOWORD(v21[1]) = a2;
  BYTE2(v21[1]) = BYTE2(a2);
  BYTE3(v21[1]) = BYTE3(a2);
  BYTE4(v21[1]) = BYTE4(a2);
  BYTE5(v21[1]) = BYTE5(a2);
  a1 = Connection.handle.getter();
  v12 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v12 != 2)
    {
LABEL_29:
      a4 = 0;
      goto LABEL_30;
    }

    v17 = *(v11 + 16);
    v16 = *(v11 + 24);
    a4 = v16 - v17;
    if (__OFSUB__(v16, v17))
    {
      goto LABEL_35;
    }

    if (a4 >= 0xFFFFFFFF80000000)
    {
      LODWORD(v15) = 0x7FFFFFFF;
      if (a4 <= 0x7FFFFFFF)
      {
        goto LABEL_30;
      }

      __break(1u);
LABEL_21:
      a4 = 0;
      if (v15 != 2)
      {
        goto LABEL_30;
      }

      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      a4 = v18 - v19;
      if (__OFSUB__(v18, v19))
      {
LABEL_36:
        __break(1u);
      }

      if (a4 >= 0xFFFFFFFF80000000)
      {
        if (a4 <= 0x7FFFFFFF)
        {
          goto LABEL_30;
        }

        __break(1u);
LABEL_26:
        a4 = (HIDWORD(v11) - v11);
        if (!__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_30;
        }

        __break(1u);
        goto LABEL_29;
      }

      goto LABEL_34;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v12)
  {
LABEL_15:
    a4 = BYTE6(a5);
LABEL_30:
    v14 = a7(a1, "main", v21, a4);

    return v14;
  }

  v10 = HIDWORD(v11);
  a4 = (HIDWORD(v11) - v11);
  if (!__OFSUB__(HIDWORD(v11), v11))
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_8:
  if (v10 != 2)
  {
    v11 = a4;
    memset(v21, 0, 14);
    a1 = Connection.handle.getter();
    v15 = a5 >> 62;
    if ((a5 >> 62) <= 1)
    {
      if (!v15)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }

    goto LABEL_21;
  }

  a1 = *(a1 + 16);
  v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
LABEL_12:
  v14 = sub_1008D2080(a1, v13, a3, a4, a5, a6);

  return v14;
}

unint64_t sub_1008D23C4()
{
  result = qword_1016AD380;
  if (!qword_1016AD380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD380);
  }

  return result;
}

unint64_t sub_1008D241C()
{
  result = qword_1016AD388;
  if (!qword_1016AD388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD388);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DatabaseError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1008D24DC(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008D24F8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_1008D2528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008D2598()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(type metadata accessor for Logger() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1008D1430(v6, v0 + v5, v2, v3);
}

uint64_t sub_1008D26E0()
{
  v1 = v0[2];
  swift_defaultActor_initialize();
  v1[14] = 0xD00000000000001ALL;
  v1[15] = 0x80000001013C3D10;
  v1[18] = _swiftEmptyDictionarySingleton;
  sub_1000BC4D4(&unk_1016AD690, &qword_1013C4058);
  swift_allocObject();
  v1[19] = AsyncStreamProvider.init()();
  v2 = [objc_opt_self() sharedInstance];
  v0[3] = v2;
  if (v2)
  {
    v3 = v0[2];
    *(v3 + 128) = v2;
    v4 = v2;
    v5 = objc_allocWithZone(type metadata accessor for AccessoryDelegateTrampoline());
    v6 = v4;
    *(v3 + 136) = [v5 init];

    return _swift_task_switch(sub_1008D2930, v3, 0);
  }

  else
  {
    if (qword_101694A40 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177B5A8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "ACCConnectionInfo.sharedInstance() returned nil!", v10, 2u);
    }

    type metadata accessor for AccessoryConnectionService();
    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();
    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_1008D2930()
{
  swift_weakAssign();
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1008D29AC@<X0>(uint64_t a1@<X8>)
{
  v46[1] = a1;
  v2 = type metadata accessor for AccessoryConnectionService.Event(0);
  v59 = *(v2 - 8);
  v60 = v2;
  __chkstk_darwin(v2);
  v69 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_1016AD630, &qword_1013C3FD0);
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = v46 - v5;
  v6 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v6 - 8);
  v68 = v46 - v7;
  v67 = type metadata accessor for UUID();
  v8 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000BC4D4(&qword_1016AD688, &qword_1013C4048);
  v10 = __chkstk_darwin(v54);
  v53 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v46 - v12;
  swift_beginAccess();
  v46[0] = v1;
  v14 = *(v1 + 144);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v49 = v8 + 16;
  v48 = v8 + 32;
  v55 = v8;
  v47 = (v8 + 8);
  v61 = v14;
  result = swift_bridgeObjectRetain_n();
  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v51 = v15;
  v50 = v19;
  for (i = v13; v18; v19 = v50)
  {
    v65 = v22;
LABEL_9:
    v24 = __clz(__rbit64(v18)) | (v21 << 6);
    v25 = v61;
    v26 = v55;
    v27 = *(v61 + 48) + *(v55 + 72) * v24;
    v64 = *(v55 + 16);
    v28 = v67;
    v64(v13, v27, v67);
    v29 = *(v25 + 56) + *(v57 + 72) * v24;
    v30 = v54;
    sub_1000D2A70(v29, &v13[*(v54 + 48)], &qword_1016AD630, &qword_1013C3FD0);
    v31 = v13;
    v32 = v53;
    sub_1000D2A70(v31, v53, &qword_1016AD688, &qword_1013C4048);
    v33 = (v32 + *(v30 + 48));
    v34 = v33[1];
    v62 = *v33;
    v63 = v34;
    v35 = *(v58 + 64);
    v36 = v56;
    sub_1000E18CC(&v33[v35], &v56[v35]);
    v37 = v66;
    (*(v26 + 32))(v66, v32, v28);
    v38 = v68;
    sub_1000E18CC(&v36[v35], v68);
    v39 = sub_1000BC4D4(&qword_1016AD680, &qword_1013C4040);
    v40 = v39[12];
    v41 = v39[16];
    v42 = v39[20];
    v43 = v69;
    v64(v69, v37, v28);
    *(v43 + v40) = v62;
    sub_1000D2A70(v38, v43 + v41, &qword_1016A40D0, &unk_10138BE70);
    *(v43 + v42) = v63;
    swift_storeEnumTagMultiPayload();
    v22 = v65;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_100A5E250(0, v22[2] + 1, 1, v22);
    }

    v45 = v22[2];
    v44 = v22[3];
    v15 = v51;
    v13 = i;
    if (v45 >= v44 >> 1)
    {
      v22 = sub_100A5E250((v44 > 1), v45 + 1, 1, v22);
    }

    v18 &= v18 - 1;
    sub_10000B3A8(v68, &qword_1016A40D0, &unk_10138BE70);
    (*v47)(v66, v67);
    sub_10000B3A8(v13, &qword_1016AD688, &qword_1013C4048);
    v22[2] = v45 + 1;
    result = sub_1008D8340(v69, v22 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v45);
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      AsyncStreamProvider.stream(initialEvents:)();
    }

    v18 = *(v15 + 8 * v23);
    ++v21;
    if (v18)
    {
      v65 = v22;
      v21 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1008D2FBC()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1008D3038(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AccessoryConnectionService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_1008D30E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AccessoryConnectionService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_1008D31A4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AccessoryConnectionService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_1008D326C()
{
  [*(*(v0 + 16) + 128) registerDelegate:*(*(v0 + 16) + 136)];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008D32DC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AccessoryConnectionService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_1008D3384()
{
  type metadata accessor for AccessoryConnectionService();
  sub_1008D7F84(&unk_1016AD620, v0, type metadata accessor for AccessoryConnectionService, &unk_1013C3F20);
  return ActorServiceProtocol.description.getter();
}

Swift::Int sub_1008D3410()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1013C4064[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1008D3498(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1013C4064[v2]);
  return Hasher._finalize()();
}

uint64_t sub_1008D34E4@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008D69BC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1008D3528()
{
  v1 = 0x6E776F6E6B6E752ELL;
  v2 = 0x6465737361702ELL;
  if (*v0 != 2)
  {
    v2 = 0x74756F656D69742ELL;
  }

  if (*v0)
  {
    v1 = 0x64656C6961662ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1008D35A4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B5C0);
  sub_1000076D4(v0, qword_10177B5C0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1008D3624(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016998D8, &qword_101392028);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for AccessoryConnectionService.Event(0);
  __chkstk_darwin(v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v7;
  v16 = *(v7 + 16);
  v16(v15, a1, v6);
  v32 = v15;
  swift_storeEnumTagMultiPayload();
  v16(v12, a1, v6);
  v17 = sub_1000BC4D4(&qword_1016AD630, &qword_1013C3FD0);
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  swift_beginAccess();
  v33 = v1;
  sub_1001E01B8(v5, v12);
  swift_endAccess();
  if (qword_101694A40 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177B5A8);
  v16(v10, a1, v6);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34[0] = v22;
    *v21 = 136446210;
    sub_1008D7F84(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v31 + 8))(v10, v6);
    v26 = sub_1000136BC(v23, v25, v34);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Accessory detached: %{public}s", v21, 0xCu);
    sub_100007BAC(v22);
  }

  else
  {

    (*(v31 + 8))(v10, v6);
  }

  v27 = type metadata accessor for Transaction();
  __chkstk_darwin(v27);
  v28 = v32;
  *(&v30 - 2) = v33;
  *(&v30 - 1) = v28;
  static Transaction.named<A>(_:with:)();
  return sub_1008D7F28(v28);
}

uint64_t sub_1008D3A94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v124 = a1;
  v5 = type metadata accessor for MACAddress();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v109 - v10;
  v118 = type metadata accessor for AccessoryConnectionService.Event(0);
  __chkstk_darwin(v118);
  v121 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016998D8, &qword_101392028);
  __chkstk_darwin(v13 - 8);
  v115 = &v109 - v14;
  v15 = type metadata accessor for UUID();
  v122 = *(v15 - 8);
  v123 = v15;
  v16 = __chkstk_darwin(v15);
  v112 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v109 - v19;
  __chkstk_darwin(v18);
  v111 = &v109 - v21;
  v110 = sub_1000BC4D4(&qword_1016AD630, &qword_1013C3FD0);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v23 = &v109 - v22;
  v24 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v25 = __chkstk_darwin(v24 - 8);
  v117 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v109 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v109 - v31;
  __chkstk_darwin(v30);
  v125 = &v109 - v33;
  v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v127 = v34;
  AnyHashable.init<A>(_:)();
  v35 = *(a2 + 16);
  v120 = v6;
  v114 = v9;
  v113 = v20;
  if (!v35 || (v36 = sub_100771E5C(&v128), (v37 & 1) == 0))
  {
    sub_100476E48(&v128);
LABEL_6:
    v39 = 0;
    v40 = 1;
    goto LABEL_7;
  }

  sub_100013894(*(a2 + 56) + 32 * v36, v130);
  sub_100476E48(&v128);
  sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  if (!swift_dynamicCast())
  {
    v6 = v120;
    goto LABEL_6;
  }

  v38 = v126;
  v128 = 0;
  v129 = 1;
  static Int._conditionallyBridgeFromObjectiveC(_:result:)();

  v39 = v128;
  v40 = v129;
  v6 = v120;
LABEL_7:
  v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v127 = v41;
  AnyHashable.init<A>(_:)();
  v42 = *(a2 + 16);
  v119 = v3;
  if (!v42 || (v43 = sub_100771E5C(&v128), (v44 & 1) == 0))
  {
    sub_100476E48(&v128);
    goto LABEL_14;
  }

  sub_100013894(*(a2 + 56) + 32 * v43, v130);
  sub_100476E48(&v128);
  sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
  sub_100008BB8(0, &qword_1016AD648, NSData_ptr);
  if (!swift_dynamicCast())
  {
LABEL_14:
    v46 = 1;
    goto LABEL_15;
  }

  v45 = v126;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  MACAddress.init(data:type:)();
  v6 = v120;
  if ((*(v120 + 48))(v32, 1, v5) == 1)
  {
    sub_10000B3A8(v32, &qword_1016A40D0, &unk_10138BE70);
    v46 = 1;
  }

  else
  {
    (*(v6 + 32))(v125, v32, v5);
    v46 = 0;
  }

  v3 = v119;
LABEL_15:
  result = (*(v6 + 56))(v125, v46, 1, v5);
  v116 = v11;
  v48 = v124;
  if (v40)
  {
    v49 = 0;
    LODWORD(v39) = 0;
    goto LABEL_22;
  }

  if ((v39 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  if (!HIDWORD(v39))
  {
    if ((v39 - 1) > 2)
    {
      v49 = 0;
    }

    else
    {
      v49 = v39;
    }

LABEL_22:
    v50 = v5;
    swift_beginAccess();
    v51 = *(v3 + 144);
    if (*(v51 + 16))
    {

      v52 = sub_1000210EC(v48);
      if (v53)
      {
        v54 = v109;
        sub_1000D2A70(*(v51 + 56) + *(v109 + 72) * v52, v23, &qword_1016AD630, &qword_1013C3FD0);

        v55 = *v23;
        v56 = v110;
        sub_1000E18CC(&v23[*(v110 + 64)], v29);
        v57 = v111;
        (*(v122 + 16))(v111, v48, v123);
        v58 = *(v56 + 64);
        v59 = v115;
        *v115 = v55;
        *(v59 + 1) = v49;
        sub_1000D2A70(v29, v59 + v58, &qword_1016A40D0, &unk_10138BE70);
        (*(v54 + 56))(v59, 0, 1, v56);
        swift_beginAccess();
        sub_1001E01B8(v59, v57);
        swift_endAccess();
        v48 = v124;
        sub_10000B3A8(v29, &qword_1016A40D0, &unk_10138BE70);
      }

      else
      {
      }
    }

    LODWORD(v115) = v49;
    v60 = sub_1000BC4D4(&unk_1016AD638, &qword_1013C3FD8);
    v61 = *(v60 + 48);
    v62 = v121;
    v3 = *(v122 + 16);
    (v3)(v121, v48, v123);
    v63 = &v62[v61];
    v64 = v125;
    sub_1000D2A70(v125, v63, &qword_1016A40D0, &unk_10138BE70);
    if (v39 >= 4)
    {
      v65 = 0;
    }

    else
    {
      v65 = v39;
    }

    v62[*(v60 + 64)] = v65;
    swift_storeEnumTagMultiPayload();
    v66 = v117;
    sub_1000D2A70(v64, v117, &qword_1016A40D0, &unk_10138BE70);
    v67 = v120;
    v68 = v50;
    if ((*(v120 + 48))(v66, 1, v50) != 1)
    {
      v85 = v116;
      (*(v67 + 32))(v116, v66, v50);
      if (qword_101694A40 != -1)
      {
        swift_once();
      }

      v86 = type metadata accessor for Logger();
      sub_1000076D4(v86, qword_10177B5A8);
      v87 = v113;
      v88 = v123;
      (v3)(v113, v124, v123);
      v89 = v114;
      (*(v67 + 16))(v114, v85, v68);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v130[0] = swift_slowAlloc();
        *v92 = 136446722;
        sub_1008D7F84(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = v94;
        (*(v122 + 8))(v87, v88);
        v96 = sub_1000136BC(v93, v95, v130);

        *(v92 + 4) = v96;
        *(v92 + 12) = 2082;
        if (v115 > 1u)
        {
          if (v115 == 2)
          {
            v98 = 0xE700000000000000;
            v97 = 0x6465737361702ELL;
          }

          else
          {
            v98 = 0xE800000000000000;
            v97 = 0x74756F656D69742ELL;
          }
        }

        else if (v115)
        {
          v98 = 0xE700000000000000;
          v97 = 0x64656C6961662ELL;
        }

        else
        {
          v97 = 0x6E776F6E6B6E752ELL;
          v98 = 0xE800000000000000;
        }

        v82 = v119;
        v101 = sub_1000136BC(v97, v98, v130);

        *(v92 + 14) = v101;
        *(v92 + 22) = 2082;
        sub_1008D7F84(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
        v102 = dispatch thunk of CustomStringConvertible.description.getter();
        v104 = v103;
        v105 = *(v120 + 8);
        v105(v89, v68);
        v106 = sub_1000136BC(v102, v104, v130);

        *(v92 + 24) = v106;
        _os_log_impl(&_mh_execute_header, v90, v91, "Accessory property changed: %{public}s authStatus: %{public}s macAddress: %{public}s", v92, 0x20u);
        swift_arrayDestroy();

        v105(v116, v68);
        goto LABEL_56;
      }

      v99 = *(v67 + 8);
      v99(v89, v68);
      (*(v122 + 8))(v87, v88);
      v99(v85, v68);
      goto LABEL_43;
    }

    sub_10000B3A8(v66, &qword_1016A40D0, &unk_10138BE70);
    if (qword_101694A40 == -1)
    {
LABEL_31:
      v69 = type metadata accessor for Logger();
      sub_1000076D4(v69, qword_10177B5A8);
      v70 = v112;
      v71 = v123;
      (v3)(v112, v124, v123);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();
      v74 = os_log_type_enabled(v72, v73);
      v75 = v115;
      if (v74)
      {
        v76 = swift_slowAlloc();
        v130[0] = swift_slowAlloc();
        *v76 = 136446466;
        sub_1008D7F84(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v77 = dispatch thunk of CustomStringConvertible.description.getter();
        v79 = v78;
        (*(v122 + 8))(v70, v71);
        v80 = sub_1000136BC(v77, v79, v130);

        *(v76 + 4) = v80;
        *(v76 + 12) = 2082;
        v81 = v75;
        v82 = v119;
        if (v81 > 1)
        {
          if (v81 == 2)
          {
            v84 = 0xE700000000000000;
            v83 = 0x6465737361702ELL;
          }

          else
          {
            v84 = 0xE800000000000000;
            v83 = 0x74756F656D69742ELL;
          }
        }

        else if (v81)
        {
          v84 = 0xE700000000000000;
          v83 = 0x64656C6961662ELL;
        }

        else
        {
          v83 = 0x6E776F6E6B6E752ELL;
          v84 = 0xE800000000000000;
        }

        v100 = sub_1000136BC(v83, v84, v130);

        *(v76 + 14) = v100;
        _os_log_impl(&_mh_execute_header, v72, v73, "Accessory attached: %{public}s authStatus: %{public}s macAddress: nil)", v76, 0x16u);
        swift_arrayDestroy();

        goto LABEL_56;
      }

      (*(v122 + 8))(v70, v71);
LABEL_43:
      v82 = v119;
LABEL_56:
      v107 = type metadata accessor for Transaction();
      __chkstk_darwin(v107);
      v108 = v121;
      *(&v109 - 2) = v82;
      *(&v109 - 1) = v108;
      static Transaction.named<A>(_:with:)();
      sub_10000B3A8(v125, &qword_1016A40D0, &unk_10138BE70);
      return sub_1008D7F28(v108);
    }

LABEL_58:
    swift_once();
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008D49EC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100044B3C(v3, a2);
  v4 = sub_1000076D4(v3, a2);
  if (qword_101694A48 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v3, qword_10177B5C0);
  v6 = *(*(v3 - 8) + 16);

  return v6(v4, v5, v3);
}

uint64_t sub_1008D4AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v29 = result;
      UUID.init(uuidString:)();
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {

        return sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        v19 = *(v12 + 32);
        v19(v17, v10, v11);
        v20 = sub_1008D6A44(a3);
        v21 = v31;
        if (v31)
        {
          v28 = v20;
          v30 = sub_1008D78EC(v30);
          v27 = sub_1008D78EC(v21);
          v31 = *(v5 + OBJC_IVAR____TtC12searchpartydP33_8DF307D51982B56654A13C398BADC9D727AccessoryDelegateTrampoline_workItemQueue);
          (*(v12 + 16))(v15, v17, v11);
          v22 = (*(v12 + 80) + 24) & ~*(v12 + 80);
          v23 = v22 + v13;
          v24 = (v22 + v13) & 0xFFFFFFFFFFFFFFF8;
          v26 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
          v25 = swift_allocObject();
          *(v25 + 16) = v29;
          v19((v25 + v22), v15, v11);
          *(v25 + v23) = v28;
          *(v25 + v24 + 8) = v30;
          *(v25 + v26) = v27;

          dispatch thunk of WorkItemQueue.enqueue(_:)();

          return (*(v12 + 8))(v17, v11);
        }

        else
        {
          (*(v12 + 8))(v17, v11);
        }
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1008D4E04(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_1008D4E2C, 0, 0);
}

uint64_t sub_1008D4E2C()
{
  v1 = *(v0 + 64);
  type metadata accessor for Transaction();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1008D4F28;

  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_1008D4F28()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(Database.await(state:), 0, 0);
  }
}

uint64_t sub_1008D5064(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 64) = a4;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  return _swift_task_switch(sub_1008D508C, 0, 0);
}

uint64_t sub_1008D508C()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_10069586C(v0[4]);
  v0[6] = v3;
  sub_10069586C(v1);
  v0[7] = v4;

  return _swift_task_switch(sub_1008D5108, v2, 0);
}

uint64_t sub_1008D5108()
{
  sub_1008D6A54(*(v0 + 24), *(v0 + 64), *(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008D528C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v14 = result;
      UUID.init(uuidString:)();
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        return sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        v18 = *(v7 + 32);
        v18(v12, v5, v6);
        (*(v7 + 16))(v10, v12, v6);
        v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        v18((v16 + v15), v10, v6);

        dispatch thunk of WorkItemQueue.enqueue(_:)();

        return (*(v7 + 8))(v12, v6);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1008D5550(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1008D5570, 0, 0);
}

uint64_t sub_1008D5570()
{
  type metadata accessor for Transaction();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1008D5658;

  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_1008D5658()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(j___s12searchpartyd8DatabasePAAE5await5stateyAA0B5StateO_tYaKF, 0, 0);
  }
}

uint64_t sub_1008D5794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1008D57B0, a2, 0);
}

uint64_t sub_1008D57B0()
{
  sub_1008D3624(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008D5888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v24 - v14;
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v27 = result;
      UUID.init(uuidString:)();
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {

        return sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        v17 = *(v10 + 32);
        v17(v15, v8, v9);
        if (a3)
        {
          v18 = sub_1008D78EC(a3);
          v19 = *(v3 + OBJC_IVAR____TtC12searchpartydP33_8DF307D51982B56654A13C398BADC9D727AccessoryDelegateTrampoline_workItemQueue);
          v25 = v18;
          v26 = v19;
          (*(v10 + 16))(v13, v15, v9);
          v20 = (*(v10 + 80) + 24) & ~*(v10 + 80);
          v21 = v17;
          v22 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
          v23 = swift_allocObject();
          *(v23 + 16) = v27;
          v21(v23 + v20, v13, v9);
          *(v23 + v22) = v25;

          dispatch thunk of WorkItemQueue.enqueue(_:)();

          return (*(v10 + 8))(v15, v9);
        }

        else
        {
          (*(v10 + 8))(v15, v9);
        }
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1008D5B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1008D5BC0, 0, 0);
}

uint64_t sub_1008D5BC0()
{
  v1 = *(v0 + 32);
  type metadata accessor for Transaction();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1008D5CB8;

  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_1008D5CB8()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(j___s12searchpartyd8DatabasePAAE5await5stateyAA0B5StateO_tYaKF, 0, 0);
  }
}

uint64_t sub_1008D5DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return _swift_task_switch(sub_1008D5E18, 0, 0);
}

uint64_t sub_1008D5E18()
{
  v1 = v0[2];
  sub_10069586C(v0[4]);
  v0[5] = v2;

  return _swift_task_switch(sub_1008D5E88, v1, 0);
}

uint64_t sub_1008D5E88()
{
  sub_1008D3A94(v0[3], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t type metadata accessor for AccessoryConnectionService.Event(uint64_t a1)
{
  result = qword_1016AD5A8;
  if (!qword_1016AD5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008D61F4(uint64_t a1)
{
  sub_1008D627C(319);
  if (v1 <= 0x3F)
  {
    sub_1008D63B0(319);
    if (v2 <= 0x3F)
    {
      sub_1008D6438();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1008D627C(uint64_t a1)
{
  if (!qword_1016AD5B8)
  {
    __chkstk_darwin(a1);
    type metadata accessor for UUID();
    sub_1000BC580(&qword_1016A40D0, &unk_10138BE70);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1016AD5B8);
    }
  }
}

void sub_1008D63B0(uint64_t a1)
{
  if (!qword_1016AD5C8)
  {
    type metadata accessor for UUID();
    sub_1000BC580(&qword_1016A40D0, &unk_10138BE70);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1016AD5C8);
    }
  }
}

void sub_1008D6438()
{
  if (!qword_1016AD5D0)
  {
    v0 = type metadata accessor for UUID();
    if (!v1)
    {
      atomic_store(v0, &qword_1016AD5D0);
    }
  }
}

unint64_t sub_1008D64A4()
{
  result = qword_1016AD600;
  if (!qword_1016AD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD600);
  }

  return result;
}

unint64_t sub_1008D64FC()
{
  result = qword_1016AD608;
  if (!qword_1016AD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD608);
  }

  return result;
}

uint64_t sub_1008D65E0(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_1000D2A70(a1 + 32, &v46, &unk_1016AD670, &unk_1013C3FF0);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_1001E6224(v48, v43);
  v9 = *a3;
  v10 = sub_100771D58(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_100FECAA8(v15, a2 & 1);
    v10 = sub_100771D58(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_101008208();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v49 = v18;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_100007BAC(v43);
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_1001E6224(v43, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_1000D2A70(v25, &v46, &unk_1016AD670, &unk_1013C3FF0);
      v28 = v46;
      v27 = v47;
      v44 = v46;
      v45 = v47;
      sub_1001E6224(v48, v43);
      v29 = *a3;
      v30 = sub_100771D58(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_100FECAA8(v34, 1);
        v30 = sub_100771D58(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_1001E6224(v43, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  _StringGuts.grow(_:)(30);
  v41._object = 0x8000000101360AB0;
  v41._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v41);
  _print_unlocked<A, B>(_:_:)();
  v42._countAndFlagsBits = 39;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1008D69BC(uint64_t result)
{
  if (result > 4)
  {
    if (result <= 9)
    {
      return result;
    }

    if (result == 0xFFFF)
    {
      return 10;
    }

    return 11;
  }

  if (result < 0)
  {
    return 11;
  }

  return result;
}

uint64_t sub_1008D6A44(uint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  else
  {
    return result;
  }
}

void sub_1008D6A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v112 = a2;
  v115 = a1;
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = &v101 - v11;
  v12 = sub_1000BC4D4(&qword_1016998D8, &qword_101392028);
  __chkstk_darwin(v12 - 8);
  v14 = &v101 - v13;
  v15 = type metadata accessor for UUID();
  v116 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v103 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v104 = &v101 - v19;
  __chkstk_darwin(v18);
  v110 = &v101 - v20;
  v108 = type metadata accessor for AccessoryConnectionService.Event(0);
  __chkstk_darwin(v108);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v24 = __chkstk_darwin(v23 - 8);
  v109 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v101 - v27;
  __chkstk_darwin(v26);
  v117 = &v101 - v29;
  v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v119 = v30;
  AnyHashable.init<A>(_:)();
  v31 = *(a3 + 16);
  v113 = v7;
  if (!v31 || (v32 = sub_100771E5C(&v120), (v33 & 1) == 0))
  {
    sub_100476E48(&v120);
LABEL_7:
    v35 = 0;
    goto LABEL_8;
  }

  sub_100013894(*(a3 + 56) + 32 * v32, v122);
  sub_100476E48(&v120);
  sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  if (!swift_dynamicCast())
  {
    v7 = v113;
    goto LABEL_7;
  }

  v34 = v118;
  v120 = 0;
  v121 = 1;
  static Int._conditionallyBridgeFromObjectiveC(_:result:)();

  if (v121)
  {
    v35 = 0;
    v7 = v113;
    goto LABEL_8;
  }

  v35 = v120;
  v7 = v113;
  if ((v120 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(v120))
    {
      __break(1u);
      goto LABEL_42;
    }

LABEL_8:
    v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v119 = v36;
    AnyHashable.init<A>(_:)();
    v37 = *(a3 + 16);
    v114 = v4;
    v102 = v10;
    v107 = v14;
    if (!v37 || (v38 = sub_100771E5C(&v120), (v39 & 1) == 0))
    {
      v41 = v6;
      v42 = v22;
      sub_100476E48(&v120);
      goto LABEL_14;
    }

    sub_100013894(*(a3 + 56) + 32 * v38, v122);
    sub_100476E48(&v120);
    sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
    sub_100008BB8(0, &qword_1016AD648, NSData_ptr);
    if (!swift_dynamicCast())
    {
      v41 = v6;
      v42 = v22;
      goto LABEL_14;
    }

    v40 = v118;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    MACAddress.init(data:type:)();
    v7 = v113;
    if ((*(v113 + 48))(v28, 1, v6) == 1)
    {
      v41 = v6;
      v42 = v22;
      sub_10000B3A8(v28, &qword_1016A40D0, &unk_10138BE70);
LABEL_14:
      v43 = 1;
      goto LABEL_15;
    }

LABEL_42:
    v42 = v22;
    v41 = v6;
    (*(v7 + 32))(v117, v28, v6);
    v43 = 0;
LABEL_15:
    v44 = *(v7 + 56);
    v45 = v117;
    v46 = v41;
    v44(v117, v43, 1, v41);
    if (v35 >= 4)
    {
      v47 = 0;
    }

    else
    {
      v47 = v35;
    }

    v48 = sub_1000BC4D4(&qword_1016AD680, &qword_1013C4040);
    v49 = v48[12];
    v50 = v48[16];
    v111 = v46;
    v106 = v48[20];
    v51 = v115;
    v52 = *(v116 + 16);
    v52(v42, v115, v15);
    v53 = v112;
    v42[v49] = v112;
    sub_1000D2A70(v45, &v42[v50], &qword_1016A40D0, &unk_10138BE70);
    v42[v106] = v47;
    v54 = v111;
    v106 = v42;
    swift_storeEnumTagMultiPayload();
    v55 = v110;
    v52(v110, v51, v15);
    v56 = sub_1000BC4D4(&qword_1016AD630, &qword_1013C3FD0);
    v57 = *(v56 + 64);
    v58 = v107;
    *v107 = v53;
    LODWORD(v108) = v47;
    *(v58 + 1) = v47;
    v59 = v117;
    sub_1000D2A70(v117, v58 + v57, &qword_1016A40D0, &unk_10138BE70);
    (*(*(v56 - 8) + 56))(v58, 0, 1, v56);
    swift_beginAccess();
    sub_1001E01B8(v58, v55);
    swift_endAccess();
    v60 = v109;
    v61 = v113;
    sub_1000D2A70(v59, v109, &qword_1016A40D0, &unk_10138BE70);
    if ((*(v61 + 48))(v60, 1, v54) == 1)
    {
      sub_10000B3A8(v60, &qword_1016A40D0, &unk_10138BE70);
      if (qword_101694A40 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      sub_1000076D4(v62, qword_10177B5A8);
      v63 = v103;
      v52(v103, v115, v15);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        *v66 = 136446722;
        sub_1008D7F84(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        (*(v116 + 8))(v63, v15);
        v70 = sub_1000136BC(v67, v69, &v120);

        *(v66 + 4) = v70;
        v71 = dword_1013C4064[v112];
        *(v66 + 12) = 1024;
        *(v66 + 14) = v71;
        *(v66 + 18) = 2082;
        if (v108 > 1u)
        {
          if (v108 == 2)
          {
            v73 = 0xE700000000000000;
            v72 = 0x6465737361702ELL;
          }

          else
          {
            v73 = 0xE800000000000000;
            v72 = 0x74756F656D69742ELL;
          }
        }

        else if (v108)
        {
          v73 = 0xE700000000000000;
          v72 = 0x64656C6961662ELL;
        }

        else
        {
          v72 = 0x6E776F6E6B6E752ELL;
          v73 = 0xE800000000000000;
        }

        v90 = sub_1000136BC(v72, v73, &v120);

        *(v66 + 20) = v90;
        _os_log_impl(&_mh_execute_header, v64, v65, "Accessory attached: %{public}s type: %u authStatus: %{public}s macAddress: nil)", v66, 0x1Cu);
        swift_arrayDestroy();
      }

      else
      {

        (*(v116 + 8))(v63, v15);
      }
    }

    else
    {
      v74 = v105;
      (*(v61 + 32))(v105, v60, v54);
      if (qword_101694A40 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_1000076D4(v75, qword_10177B5A8);
      v76 = v104;
      v52(v104, v115, v15);
      v77 = v102;
      (*(v61 + 16))(v102, v74, v54);
      v78 = v54;
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        *v81 = 136446978;
        sub_1008D7F84(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v82 = dispatch thunk of CustomStringConvertible.description.getter();
        v84 = v83;
        (*(v116 + 8))(v76, v15);
        v85 = sub_1000136BC(v82, v84, &v120);

        *(v81 + 4) = v85;
        v86 = dword_1013C4064[v112];
        *(v81 + 12) = 1024;
        *(v81 + 14) = v86;
        *(v81 + 18) = 2082;
        if (v108 > 1u)
        {
          if (v108 == 2)
          {
            v88 = 0xE700000000000000;
            v87 = 0x6465737361702ELL;
          }

          else
          {
            v88 = 0xE800000000000000;
            v87 = 0x74756F656D69742ELL;
          }
        }

        else if (v108)
        {
          v88 = 0xE700000000000000;
          v87 = 0x64656C6961662ELL;
        }

        else
        {
          v87 = 0x6E776F6E6B6E752ELL;
          v88 = 0xE800000000000000;
        }

        v93 = sub_1000136BC(v87, v88, &v120);

        *(v81 + 20) = v93;
        *(v81 + 28) = 2082;
        sub_1008D7F84(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
        v94 = v111;
        v95 = dispatch thunk of CustomStringConvertible.description.getter();
        v97 = v96;
        v98 = *(v113 + 8);
        v98(v77, v94);
        v99 = sub_1000136BC(v95, v97, &v120);

        *(v81 + 30) = v99;
        _os_log_impl(&_mh_execute_header, v79, v80, "Accessory attached: %{public}s type: %u authStatus: %{public}s macAddress: %{public}s", v81, 0x26u);
        swift_arrayDestroy();

        v98(v105, v94);
        v92 = v106;
        v91 = v114;
        goto LABEL_50;
      }

      v89 = *(v61 + 8);
      v89(v77, v78);
      (*(v116 + 8))(v76, v15);
      v89(v74, v78);
    }

    v91 = v114;
    v92 = v106;
LABEL_50:
    v100 = type metadata accessor for Transaction();
    __chkstk_darwin(v100);
    *(&v101 - 2) = v91;
    *(&v101 - 1) = v92;
    static Transaction.named<A>(_:with:)();
    sub_10000B3A8(v117, &qword_1016A40D0, &unk_10138BE70);
    sub_1008D7F28(v92);
    return;
  }

  __break(1u);
}

uint64_t sub_1008D78EC(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;

  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5)) | (v7 << 6);
    sub_100476DEC(*(v1 + 48) + 40 * v10, v40);
    sub_100013894(*(v1 + 56) + 32 * v10, v41);
    sub_100476DEC(v40, &v33);
    if (swift_dynamicCast())
    {
      v37 = v36;
      v11 = v42;
      v12 = sub_1000035D0(v41, v42);
      *(&v39 + 1) = v11;
      v13 = sub_1000280DC(&v38);
      (*(*(v11 - 8) + 16))(v13, v12, v11);
    }

    else
    {
      if (qword_101694A50 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_1016AD390);
      sub_100476DEC(v40, &v33);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *&v36 = v18;
        *v17 = 136446210;
        v19 = AnyHashable.description.getter();
        v32 = v8;
        v21 = v20;
        sub_100476E48(&v33);
        v22 = sub_1000136BC(v19, v21, &v36);
        v8 = v32;

        *(v17 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v15, v16, "Dropping non-String metadata key: %{public}s", v17, 0xCu);
        sub_100007BAC(v18);

        v1 = v31;
      }

      else
      {

        sub_100476E48(&v33);
      }

      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
    }

    v5 &= v5 - 1;
    sub_10000B3A8(v40, &unk_1016A0AF0, &unk_1013A48A0);
    if (*(&v37 + 1))
    {
      v33 = v37;
      v34 = v38;
      v35 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100A5CDE8(0, v8[2] + 1, 1, v8);
      }

      v24 = v8[2];
      v23 = v8[3];
      if (v24 >= v23 >> 1)
      {
        v8 = sub_100A5CDE8((v23 > 1), v24 + 1, 1, v8);
      }

      v8[2] = v24 + 1;
      v25 = &v8[6 * v24];
      v26 = v33;
      v27 = v35;
      v25[3] = v34;
      v25[4] = v27;
      v25[2] = v26;
    }

    else
    {
      sub_10000B3A8(&v37, &unk_1016AD660, &unk_1013C3FE0);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_1000BC4D4(&qword_1016A0B08, &unk_1013C5390);
    v28 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v28 = _swiftEmptyDictionarySingleton;
  }

  v40[0] = v28;

  sub_1008D65E0(v29, 1, v40);

  return v40[0];
}

uint64_t sub_1008D7D38()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1008D5B9C(v4, v0 + v3, v5);
}

uint64_t sub_1008D7E40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1008D5DF4(a1, v4, v5, v6);
}

uint64_t sub_1008D7F28(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryConnectionService.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1008D7F84(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1008D7FCC()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1008D5550(v4, v0 + v3);
}

uint64_t sub_1008D80A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1008D5794(a1, v5, v4);
}

uint64_t sub_1008D8150()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + 16);
  v6 = *(v0 + (v4 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = *(v0 + (((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + v4);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014650;

  return sub_1008D4E04(v5, v0 + v3, v8, v6, v7);
}

uint64_t sub_1008D8278(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_1008D5064(a1, v4, v5, v8, v6, v7);
}

uint64_t sub_1008D8340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryConnectionService.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FamilyCryptoKeysV2(uint64_t a1)
{
  result = qword_1016AD6F8;
  if (!qword_1016AD6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008D8430(uint64_t a1)
{
  result = type metadata accessor for DateInterval();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1008D84B4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AD750, &qword_1013C4100);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_1008D8CBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for FamilyCryptoKeysV2(0);
    LOBYTE(v14) = 1;
    type metadata accessor for DateInterval();
    sub_1008D8DD0(&qword_1016AD758, &protocol conformance descriptor for DateInterval);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 2;
    sub_100017D5C(v14, v11);
    sub_10049E410();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1008D86B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for DateInterval();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000BC4D4(&qword_1016AD738, &qword_1013C40F8);
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v20 - v7;
  v9 = type metadata accessor for FamilyCryptoKeysV2(0);
  __chkstk_darwin(v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000035D0(a1, a1[3]);
  sub_1008D8CBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v22 = a1;
  v13 = v24;
  v12 = v25;
  v14 = v26;
  LOBYTE(v28) = 0;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v11;
  *v11 = v15;
  LOBYTE(v28) = 1;
  sub_1008D8DD0(&qword_1016AD748, &protocol conformance descriptor for DateInterval);
  v16 = v6;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v12 + 32);
  v18 = v21;
  v20 = *(v9 + 20);
  v17(v21 + v20, v16, v14);
  v29 = 2;
  sub_10049E3BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v8, v27);
  *(v18 + *(v9 + 24)) = v28;
  sub_1008D8D10(v18, v23);
  sub_100007BAC(v22);
  return sub_1008D8D74(v18);
}

uint64_t sub_1008D8A2C(char *a1, char *a2)
{
  if (qword_1013C4258[*a1] == qword_1013C4258[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_1008D8A94()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1008D8AF0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1008D8B30(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1008D8B88@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008D8F2C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1008D8BEC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1008D8F2C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1008D8C14(uint64_t a1)
{
  v2 = sub_1008D8CBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008D8C50(uint64_t a1)
{
  v2 = sub_1008D8CBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1008D8CBC()
{
  result = qword_1016AD740;
  if (!qword_1016AD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD740);
  }

  return result;
}

uint64_t sub_1008D8D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyCryptoKeysV2(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008D8D74(uint64_t a1)
{
  v2 = type metadata accessor for FamilyCryptoKeysV2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1008D8DD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DateInterval();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1008D8E28()
{
  result = qword_1016AD760;
  if (!qword_1016AD760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD760);
  }

  return result;
}

unint64_t sub_1008D8E80()
{
  result = qword_1016AD768;
  if (!qword_1016AD768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD768);
  }

  return result;
}

unint64_t sub_1008D8ED8()
{
  result = qword_1016AD770;
  if (!qword_1016AD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD770);
  }

  return result;
}

unint64_t sub_1008D8F2C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160ADA0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1008D8F78(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14 = a4;
  v8 = sub_1000BC4D4(&qword_1016AD850, &qword_1013C44B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_1000035D0(a1, a1[3]);
  sub_1008DA104();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v17 = 0;
  sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
  sub_1008DA158(&qword_1016AD858, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = a3;
    v16 = v14;
    v17 = 1;
    sub_100017D5C(a3, v14);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1008D9160(void *a1, uint64_t a2, double a3)
{
  v6 = sub_1000BC4D4(&qword_1016AD870, &qword_1013C44D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_1000035D0(a1, a1[3]);
  sub_1008DA3D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v11[1] = a2;
    v12 = 1;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_1008DA424(&qword_10169C9F8, sub_1000E3190, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1008D9328(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AD820, &qword_1013C44A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_1008D9DB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for UUID();
  sub_1008D9E0C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for NFCTapRequestContent(0);
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(v9 + 32));
    v11[15] = 4;
    sub_1008D9E64();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1008D955C()
{
  if (*v0)
  {
    return 2036625250;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1008D9594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000101364300 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1008D967C(uint64_t a1)
{
  v2 = sub_1008DA104();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008D96B8(uint64_t a1)
{
  v2 = sub_1008DA104();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008D96F4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1008D9EB8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1008D9744()
{
  if (*v0)
  {
    return 7562345;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_1008D977C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1008D9860(uint64_t a1)
{
  v2 = sub_1008DA3D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008D989C(uint64_t a1)
{
  v2 = sub_1008DA3D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1008D98D8@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_1008DA1C4(a2);
  if (!v2)
  {
    *a1 = v5;
    a1[1] = result;
  }

  return result;
}

uint64_t sub_1008D9928()
{
  v1 = *v0;
  v2 = 0x646975756162;
  v3 = 0x644970696863;
  v4 = 0x754E6C6169726573;
  if (v1 != 3)
  {
    v4 = 0x6269726373627573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1684628325;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1008D99C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1008DA7E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1008D99E8(uint64_t a1)
{
  v2 = sub_1008D9DB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008D9A24(uint64_t a1)
{
  v2 = sub_1008D9DB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_1008D9A78(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = MobileGestalt_copy_productType_obj();

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_11;
  }

  v7 = result;
  v8 = MobileGestalt_copy_productVersion_obj();

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = [objc_opt_self() processInfo];
  v13 = [v12 processName];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15._countAndFlagsBits = 47;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 32;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v4;
  v18._object = v6;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 47;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = v9;
  v20._object = v11;
  String.append(_:)(v20);

  return v14;
}

uint64_t type metadata accessor for NFCTapRequestContent(uint64_t a1)
{
  result = qword_1016AD7D0;
  if (!qword_1016AD7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008D9CC8(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1008D9D58();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1008D9D58()
{
  if (!qword_1016AD7E0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016AD7E0);
    }
  }
}

unint64_t sub_1008D9DB8()
{
  result = qword_1016AD828;
  if (!qword_1016AD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD828);
  }

  return result;
}

unint64_t sub_1008D9E0C()
{
  result = qword_101698330;
  if (!qword_101698330)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698330);
  }

  return result;
}

unint64_t sub_1008D9E64()
{
  result = qword_1016AD830;
  if (!qword_1016AD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD830);
  }

  return result;
}

uint64_t sub_1008D9EB8(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AD838, &qword_1013C44A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = a1[3];
  sub_1000035D0(a1, v7);
  sub_1008DA104();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
    v14 = 0;
    sub_1008DA158(&qword_1016AD848, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v12;
    v14 = 1;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v9 = v12;
    v10 = v13;

    sub_100017D5C(v9, v10);
    sub_100007BAC(a1);

    sub_100016590(v9, v10);
  }

  return v7;
}

unint64_t sub_1008DA104()
{
  result = qword_1016AD840;
  if (!qword_1016AD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD840);
  }

  return result;
}

uint64_t sub_1008DA158(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_101698DD8, &qword_1013C44B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1008DA1C4(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AD860, &unk_1013C44C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_1008DA3D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    v11 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    v10 = 1;
    sub_1008DA424(&qword_10169F5A0, sub_1000E307C, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100007BAC(a1);
  }

  return v7;
}

unint64_t sub_1008DA3D0()
{
  result = qword_1016AD868;
  if (!qword_1016AD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD868);
  }

  return result;
}

uint64_t sub_1008DA424(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_101699EB8, &qword_101398AA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1008DA4D0()
{
  result = qword_1016AD878;
  if (!qword_1016AD878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD878);
  }

  return result;
}

unint64_t sub_1008DA528()
{
  result = qword_1016AD880;
  if (!qword_1016AD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD880);
  }

  return result;
}

unint64_t sub_1008DA580()
{
  result = qword_1016AD888;
  if (!qword_1016AD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD888);
  }

  return result;
}

unint64_t sub_1008DA5D8()
{
  result = qword_1016AD890;
  if (!qword_1016AD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD890);
  }

  return result;
}

unint64_t sub_1008DA630()
{
  result = qword_1016AD898;
  if (!qword_1016AD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD898);
  }

  return result;
}

unint64_t sub_1008DA688()
{
  result = qword_1016AD8A0;
  if (!qword_1016AD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD8A0);
  }

  return result;
}

unint64_t sub_1008DA6E0()
{
  result = qword_1016AD8A8;
  if (!qword_1016AD8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD8A8);
  }

  return result;
}

unint64_t sub_1008DA738()
{
  result = qword_1016AD8B0;
  if (!qword_1016AD8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD8B0);
  }

  return result;
}

unint64_t sub_1008DA790()
{
  result = qword_1016AD8B8;
  if (!qword_1016AD8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD8B8);
  }

  return result;
}

uint64_t sub_1008DA7E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646975756162 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684628325 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1008DA998(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (2)
  {
    v5 = *(&off_101607B50 + v4++ + 32);
    v6 = 0xEB0000000070756FLL;
    v7 = 0x72476E6F63616542;
    switch(v5)
    {
      case 1:
        v6 = 0x800000010134BC40;
        if (a1 == 0xD000000000000012)
        {
          goto LABEL_35;
        }

        goto LABEL_36;
      case 2:
        goto LABEL_34;
      case 3:
        v11 = 0x526572616853;
        goto LABEL_25;
      case 4:
        v6 = 0x800000010134BC20;
        if (a1 != 0xD000000000000012)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 5:
        v6 = 0x80000001013643C0;
        if (a1 != 0xD000000000000015)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 6:
        v6 = 0x80000001013643A0;
        if (a1 != 0xD000000000000017)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 7:
        v11 = 0x52687361654CLL;
LABEL_25:
        v6 = 0xEB0000000064726FLL;
        if ((v11 & 0xFFFFFFFFFFFFLL | 0x6365000000000000) != a1)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 8:
        v6 = 0xEC0000006E6F6974;
        if (a1 != 0x61636F4C65666153)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 9:
        v9 = 0x65646F4D74736F4CLL;
        v10 = 0x64726F636552;
        goto LABEL_17;
      case 10:
        v7 = 0xD000000000000012;
        v6 = 0x8000000101364380;
LABEL_34:
        if (v7 == a1)
        {
          goto LABEL_35;
        }

        goto LABEL_36;
      case 11:
        v6 = 0x8000000101364360;
        if (a1 != 0xD000000000000014)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 12:
        v9 = 0x65655072656E774FLL;
        v10 = 0x747375725472;
LABEL_17:
        v6 = v10 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v9 != a1)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 13:
        v6 = 0xEF74737572547265;
        if (a1 != 0x65507265626D654DLL)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 14:
        v6 = 0x8000000101364340;
        if (a1 != 0xD000000000000012)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 15:
        v6 = 0x8000000101364320;
        if (a1 != 0xD000000000000013)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 16:
        v6 = 0x8000000101351330;
        if (a1 != 0xD000000000000013)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      default:
        if (qword_101694E70 != -1)
        {
          swift_once();
        }

        v8 = qword_10177C060;
        v6 = *algn_10177C068;

        if (v8 != a1)
        {
          goto LABEL_36;
        }

LABEL_35:
        if (v6 == a2)
        {

          return v5;
        }

LABEL_36:
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          return v5;
        }

        if (v4 != 17)
        {
          continue;
        }

        return 17;
    }
  }
}

uint64_t sub_1008DAD28@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      if (qword_101695470 != -1)
      {
        swift_once();
      }

      v3 = qword_10177CD50;
      break;
    case 2:
      if (qword_1016947B8 != -1)
      {
        swift_once();
      }

      v3 = qword_10177AEF8;
      break;
    case 3:
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      v3 = qword_10177A518;
      break;
    case 4:
      if (qword_101694EB0 != -1)
      {
        swift_once();
      }

      v3 = qword_10177C0C0;
      break;
    case 5:
      if (qword_1016947A0 != -1)
      {
        swift_once();
      }

      v3 = qword_10177AEC8;
      break;
    case 6:
      if (qword_101694E08 != -1)
      {
        swift_once();
      }

      v3 = qword_10177BF38;
      break;
    case 7:
      if (qword_1016954B8 != -1)
      {
        swift_once();
      }

      v3 = qword_10177CDB8;
      break;
    case 8:
      if (qword_101694F88 != -1)
      {
        swift_once();
      }

      v3 = qword_10177C268;
      break;
    case 9:
      if (qword_101694EF8 != -1)
      {
        swift_once();
      }

      v3 = qword_10177C140;
      break;
    case 10:
      if (qword_101694460 != -1)
      {
        swift_once();
      }

      v3 = qword_10177A500;
      break;
    case 11:
      if (qword_101695268 != -1)
      {
        swift_once();
      }

      v3 = qword_10177C680;
      break;
    case 12:
      if (qword_101694568 != -1)
      {
        swift_once();
      }

      v3 = qword_10177A918;
      break;
    case 13:
      if (qword_101694F30 != -1)
      {
        swift_once();
      }

      v3 = qword_10177C1D0;
      break;
    case 14:
      if (qword_101694EB8 != -1)
      {
        swift_once();
      }

      v3 = qword_10177C0D8;
      break;
    case 15:
      if (qword_101694680 != -1)
      {
        swift_once();
      }

      v3 = qword_10177AC60;
      break;
    case 16:
      if (qword_101694E90 != -1)
      {
        swift_once();
      }

      v3 = qword_10177C090;
      break;
    default:
      if (qword_101694E78 != -1)
      {
        swift_once();
      }

      v3 = qword_10177C070;
      break;
  }

  v4 = type metadata accessor for URL();
  v5 = sub_1000076D4(v4, v3);
  v6 = *(*(v4 - 8) + 16);

  return v6(a2, v5, v4);
}

uint64_t sub_1008DB1C0(uint64_t a1, uint64_t a2)
{
  v2[41] = a1;
  v2[42] = a2;
  v3 = type metadata accessor for HashAlgorithm();
  v2[43] = v3;
  v2[44] = *(v3 - 8);
  v2[45] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[46] = v4;
  v2[47] = *(v4 - 8);
  v2[48] = swift_task_alloc();

  return _swift_task_switch(sub_1008DB2DC, 0, 0);
}

void sub_1008DB2DC()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  v8 = *(v0 + 368);
  v9 = *(v0 + 328);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  *(v0 + 312) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  *(v0 + 320) = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v24 = v14;
  v25 = sub_100EB2DF0();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v25, v27, 0x6567412D72657355, 0xEA0000000000746ELL, v28);
  *(v0 + 392) = v24;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v0 + 400) = JSONEncoder.init()();
  *(v0 + 16) = *v9;
  v29 = v9[4];
  v31 = v9[1];
  v30 = v9[2];
  *(v0 + 64) = v9[3];
  *(v0 + 80) = v29;
  *(v0 + 32) = v31;
  *(v0 + 48) = v30;
  sub_1008DC318();
  v32 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 408) = 0;
  *(v0 + 416) = v32;
  *(v0 + 424) = v33;
  sub_100017D5C(v32, v33);
  v34 = swift_task_alloc();
  *(v0 + 432) = v34;
  *v34 = v0;
  v34[1] = sub_1008DB790;

  sub_100EA5FA4();
}

uint64_t sub_1008DB790(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = a2;

  return _swift_task_switch(sub_1008DB890, 0, 0);
}

uint64_t sub_1008DB890()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  v5 = *(v0 + 344);
  *(v0 + 296) = v2;
  *(v0 + 304) = v1;
  *(v0 + 280) = &type metadata for Data;
  *(v0 + 288) = &protocol witness table for Data;
  *(v0 + 256) = *(v0 + 416);
  v6 = sub_1000035D0((v0 + 256), &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v7, v8, v0 + 296);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 256));
  v9 = *(v0 + 304);
  *(v0 + 456) = *(v0 + 296);
  *(v0 + 464) = v9;
  (*(v4 + 104))(v3, enum case for HashAlgorithm.sha256(_:), v5);
  v10 = Data.hash(algorithm:)();
  v12 = v11;
  *(v0 + 472) = v10;
  *(v0 + 480) = v11;
  (*(v4 + 8))(v3, v5);
  v13 = swift_task_alloc();
  *(v0 + 488) = v13;
  *v13 = v0;
  v13[1] = sub_1008DBA2C;
  v14 = *(v0 + 336);

  return sub_100EA87F4(v10, v12, v14);
}

uint64_t sub_1008DBA2C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 496) = v1;

  if (v1)
  {
    v5 = sub_1008DBF20;
  }

  else
  {
    v6 = v4[59];
    v7 = v4[60];
    v4[63] = a1;
    sub_100016590(v6, v7);
    v5 = sub_1008DBB5C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1008DBB5C()
{
  v48 = v0;
  v1 = v0[63];
  v3 = v0[57];
  v2 = v0[58];
  v4 = v0[49];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v47);

  sub_100016590(v3, v2);
  v6 = v47;
  v7 = static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_17:
    v42 = v7;
    swift_once();
    v7 = v42;
  }

  v44 = qword_10177C410;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10177C410, "Unpair header:", 14, 2, _swiftEmptyArrayStorage);
  v8 = v6 + 8;
  v9 = -1;
  v10 = -1 << *(v6 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & v6[8];
  v12 = (63 - v10) >> 6;
  v45 = v6;

  for (i = 0; v11; v7 = )
  {
    v14 = i;
    v15 = v45;
LABEL_11:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (v14 << 10) | (16 * v16);
    v18 = v15[7];
    v19 = (v15[6] + v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = (v18 + v17);
    v23 = v22[1];
    v46 = *v22;

    v24 = static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10138BBE0;
    v6 = &type metadata for String;
    *(v25 + 56) = &type metadata for String;
    v26 = sub_100008C00();
    *(v25 + 32) = v20;
    *(v25 + 40) = v21;
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v26;
    *(v25 + 64) = v26;
    *(v25 + 72) = v46;
    *(v25 + 80) = v23;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v44, "%@: %@", 6, 2, v25);
  }

  v15 = v45;
  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = v8[v14];
    ++i;
    if (v11)
    {
      i = v14;
      goto LABEL_11;
    }
  }

  v27 = *(v43 + 416);
  v28 = *(v43 + 424);
  v29 = *(v43 + 328);

  v30 = static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_101385D80;
  *(v43 + 176) = *v29;
  v32 = v29[4];
  v34 = v29[1];
  v33 = v29[2];
  *(v43 + 224) = v29[3];
  *(v43 + 240) = v32;
  *(v43 + 192) = v34;
  *(v43 + 208) = v33;
  v35 = String.init<A>(describing:)();
  v37 = v36;
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_100008C00();
  *(v31 + 32) = v35;
  *(v31 + 40) = v37;
  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v44, "Unpair body %@", 14, 2, v31);

  sub_100017D5C(v27, v28);

  sub_100016590(v27, v28);
  v39 = *(v43 + 416);
  v38 = *(v43 + 424);

  v40 = *(v43 + 8);

  return v40(v45, v39, v38);
}

uint64_t sub_1008DBF20()
{
  v1 = v0[57];
  v2 = v0[58];
  sub_100016590(v0[59], v0[60]);
  sub_100016590(v1, v2);
  v3 = static os_log_type_t.error.getter();
  v4 = &qword_101695000;
  if (qword_1016950C8 != -1)
  {
LABEL_19:
    v39 = v3;
    swift_once();
    v3 = v39;
  }

  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_10177C410, "Failed to generate BAA certs", 28, 2, _swiftEmptyArrayStorage);

  v41 = v0;
  v0 = v0[49];
  v5 = static os_log_type_t.debug.getter();
  if (*(v4 + 200) != -1)
  {
    v40 = v5;
    swift_once();
    v5 = v40;
  }

  v42 = qword_10177C410;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, qword_10177C410, "Unpair header:", 14, 2, _swiftEmptyArrayStorage);
  v6 = v0 + 8;
  v7 = -1;
  v8 = -1 << *(v0 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v4 = v7 & v0[8];
  v9 = (63 - v8) >> 6;
  v43 = v0;

  for (i = 0; v4; v3 = )
  {
    v11 = i;
    v12 = v43;
LABEL_13:
    v13 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v14 = (v11 << 10) | (16 * v13);
    v15 = v12[7];
    v16 = (v12[6] + v14);
    v17 = *v16;
    v18 = v16[1];
    v19 = (v15 + v14);
    v20 = v19[1];
    v44 = *v19;

    v21 = static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10138BBE0;
    v0 = &type metadata for String;
    *(v22 + 56) = &type metadata for String;
    v23 = sub_100008C00();
    *(v22 + 32) = v17;
    *(v22 + 40) = v18;
    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v23;
    *(v22 + 64) = v23;
    *(v22 + 72) = v44;
    *(v22 + 80) = v20;
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v42, "%@: %@", 6, 2, v22);
  }

  v12 = v43;
  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v11 >= v9)
    {
      break;
    }

    v4 = v6[v11];
    ++i;
    if (v4)
    {
      i = v11;
      goto LABEL_13;
    }
  }

  v24 = v41[52];
  v25 = v41[53];
  v26 = v41[41];

  v27 = static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_101385D80;
  *(v41 + 11) = *v26;
  v29 = v26[4];
  v31 = v26[1];
  v30 = v26[2];
  *(v41 + 14) = v26[3];
  *(v41 + 15) = v29;
  *(v41 + 12) = v31;
  *(v41 + 13) = v30;
  v32 = String.init<A>(describing:)();
  v34 = v33;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_100008C00();
  *(v28 + 32) = v32;
  *(v28 + 40) = v34;
  os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v42, "Unpair body %@", 14, 2, v28);

  sub_100017D5C(v24, v25);

  sub_100016590(v24, v25);
  v36 = v41[52];
  v35 = v41[53];

  v37 = v41[1];

  return v37(v43, v36, v35);
}

unint64_t sub_1008DC318()
{
  result = qword_1016AD8C0;
  if (!qword_1016AD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD8C0);
  }

  return result;
}

uint64_t sub_1008DC37C()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B5D8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Registering leech scanner.", v8, 2u);
  }

  type metadata accessor for Transaction();
  static Transaction.asyncTask(name:block:)();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;

  sub_1008CE048(0, 0, v4, &unk_1013C4990, v10);

  return sub_10000B3A8(v4, &qword_101698C00, &qword_10138B570);
}

uint64_t sub_1008DC594()
{
  v1[7] = v0;
  v2 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1008DC654, 0, 0);
}

uint64_t sub_1008DC654()
{
  if (**(v0 + 56))
  {

    v1 = *(v0 + 8);

    return v1(0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_1008DC730;

    return daemon.getter();
  }
}

uint64_t sub_1008DC730(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019588(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_1008DC90C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1008DC90C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1008DCDC8, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[16] = v5;
    *v5 = v4;
    v5[1] = sub_1008DCA94;

    return sub_10098F598();
  }
}

uint64_t sub_1008DCA94(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_1008DCE3C;
  }

  else
  {
    v4 = sub_1008DCBA8;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1008DCBA8()
{
  v1 = 0;
  v2 = v0[17];
  v4 = v0[8];
  v3 = v0[9];
  v5 = *(v2 + 16);
  v6 = enum case for Feature.FindMy.spPlaySoundAll(_:);
  while (1)
  {
    v7 = v1;
    if (v5 == v1)
    {
LABEL_6:

      goto LABEL_8;
    }

    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v8 = v0[10];
    sub_10002963C(v0[17] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1, v8, type metadata accessor for KeyGenerationBeaconInfo);
    if (*(v8 + *(v4 + 28)))
    {
      break;
    }

    v9 = v0[10];
    ++v1;
    My = type metadata accessor for Feature.FindMy();
    v0[5] = My;
    v0[6] = sub_100019588(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v11 = sub_1000280DC(v0 + 2);
    (*(*(My - 8) + 104))(v11, v6, My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_10001F210(v9, type metadata accessor for KeyGenerationBeaconInfo);
    sub_100007BAC(v0 + 2);
    if (My)
    {
      goto LABEL_6;
    }
  }

  v12 = v0[10];

  sub_10001F210(v12, type metadata accessor for KeyGenerationBeaconInfo);
LABEL_8:

  v13 = v0[1];

  v13(v5 != v7);
}

uint64_t sub_1008DCDC8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1008DCE3C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1008DCEB0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B5D8);
  sub_1000076D4(v0, qword_10177B5D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1008DCF30()
{
  *(v0 + 48) = sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  *(v0 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1008DCFCC, 0, 0);
}

uint64_t sub_1008DCFCC()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 64) = sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, ">> Update leech scanner state.", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1008DD11C;

  return daemon.getter();
}

uint64_t sub_1008DD11C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[10] = a1;

  v3 = swift_task_alloc();
  v2[11] = v3;
  v4 = type metadata accessor for Daemon();
  v2[12] = v4;
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[13] = v6;
  v7 = sub_100019588(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_1008DD2FC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1008DD2FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 112) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1008DD4A8, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 120) = v5;
    *v5 = v4;
    v5[1] = sub_1008DD580;

    return daemon.getter();
  }
}

uint64_t sub_1008DD4A8(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Leech scanner cannot update. Missing BeaconKeyService.", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1008DD580(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 128) = a1;

  v5 = swift_task_alloc();
  *(v3 + 136) = v5;
  v6 = type metadata accessor for FinderStateObserver(0);
  v7 = sub_100019588(&unk_1016B1000, type metadata accessor for FinderStateObserver, &unk_1013BF148);
  *v5 = v4;
  v5[1] = sub_1008DD734;
  v8 = *(v2 + 104);
  v9 = *(v2 + 96);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1008DD734(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1008DE750;
  }

  else
  {

    *(v4 + 144) = a1;
    v5 = sub_1008DD888;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1008DD888()
{
  v1 = *(v0 + 144);
  if (v1)
  {

    v2 = sub_1008DDB54;
    v3 = v1;
    v4 = 0;

    return _swift_task_switch(v2, v3, v4);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  sub_100EB3A04(0xD000000000000019, 0x8000000101364440, qword_10177C218);
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return _swift_task_switch(v2, v3, v4);
    }

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "Leech state override: %llu.", v8, 0xCu);
    }
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v9, v10, "Posting com.apple.SPOwner.SPCBLeechScanner Darwin notification state: %llu.", v11, 0xCu);
  }

  static DarwinNotification.setValue(name:value:)();
  static DarwinNotification.post(name:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "<< Update leech scanner state.", v14, 2u);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1008DDB54()
{
  v1 = v0[18];
  v2 = sub_100019588(&qword_101696CC8, type metadata accessor for FinderStateObserver, &unk_1013BF1A8);
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_1008DDC64;
  v4 = v0[18];
  v6 = v0[6];
  v5 = v0[7];

  return withCheckedContinuation<A>(isolation:function:_:)(v5, v1, v2, 0x6E4965746174735FLL, 0xEC00000029286F66, sub_1000DFF14, v4, v6);
}

uint64_t sub_1008DDC64()
{

  return _swift_task_switch(sub_1008DDD7C, 0, 0);
}

void sub_1008DDD7C()
{
  v1 = v0[7];
  v2 = type metadata accessor for FinderStateInfo(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_101696C40, &unk_1013B8520);
    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    sub_100EB3A04(0xD000000000000019, 0x8000000101364440, qword_10177C218);
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
      if (v3 < 0)
      {
        __break(1u);
        return;
      }

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 134217984;
        *(v9 + 4) = v5;
        _os_log_impl(&_mh_execute_header, v7, v8, "Leech state override: %llu.", v9, 0xCu);
      }
    }

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v10, v11, "Posting com.apple.SPOwner.SPCBLeechScanner Darwin notification state: %llu.", v12, 0xCu);
    }

    static DarwinNotification.setValue(name:value:)();
    static DarwinNotification.post(name:)();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "<< Update leech scanner state.", v15, 2u);
    }

    v16 = v0[1];

    v16();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_1008DE0DC;

    sub_1008DC594();
  }
}

uint64_t sub_1008DE0DC(char a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_1008DE528;
  }

  else
  {
    *(v4 + 176) = a1 & 1;
    v5 = sub_1008DE208;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_1008DE208()
{
  v1 = *(v0 + 176);
  sub_10001F210(*(v0 + 56), type metadata accessor for FinderStateInfo);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  sub_100EB3A04(0xD000000000000019, 0x8000000101364440, qword_10177C218);
  if ((v3 & 1) == 0)
  {
    v7 = v2;
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    v4 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v8))
    {
      goto LABEL_13;
    }

    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v4, v8, "Leech state override: %llu.", v9, 0xCu);
    goto LABEL_10;
  }

  if (v1)
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      v7 = 1;
      goto LABEL_13;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Enabling leech scanner.", v6, 2u);
    v7 = 1;
LABEL_10:

LABEL_13:

    goto LABEL_14;
  }

  v7 = 0;
LABEL_14:
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v10, v11, "Posting com.apple.SPOwner.SPCBLeechScanner Darwin notification state: %llu.", v12, 0xCu);
  }

  static DarwinNotification.setValue(name:value:)();
  static DarwinNotification.post(name:)();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "<< Update leech scanner state.", v15, 2u);
  }

  v16 = *(v0 + 8);

  v16();
}

uint64_t sub_1008DE528()
{
  v15 = v0;
  v1 = *(v0 + 56);

  sub_10001F210(v1, type metadata accessor for FinderStateInfo);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_1000136BC(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to post com.apple.SPOwner.SPCBLeechScanner. error: %{public}s.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "<< Update leech scanner state.", v11, 2u);
  }

  v12 = *(v0 + 8);

  return v12();
}

void sub_1008DE750()
{
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  sub_100EB3A04(0xD000000000000019, 0x8000000101364440, qword_10177C218);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
    if (v1 < 0)
    {
      __break(1u);
      return;
    }

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "Leech state override: %llu.", v6, 0xCu);
    }
  }

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v7, v8, "Posting com.apple.SPOwner.SPCBLeechScanner Darwin notification state: %llu.", v9, 0xCu);
  }

  static DarwinNotification.setValue(name:value:)();
  static DarwinNotification.post(name:)();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "<< Update leech scanner state.", v12, 2u);
  }

  v13 = *(v0 + 8);

  v13();
}

uint64_t sub_1008DE9CC()
{
  v1 = sub_1000BC4D4(&qword_1016AD8C8, &qword_1013C4968);
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v2 = sub_1000BC4D4(&qword_1016AD8D0, &qword_1013C4970);
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_1016AD8D8, &unk_1013C4978);
  v0[9] = v3;
  v0[10] = *(v3 - 8);
  v0[11] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1008DEB94;

  return daemon.getter();
}

uint64_t sub_1008DEB94(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019588(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_1008DED70;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1008DED70(uint64_t a1)
{
  *(*v2 + 120) = a1;

  if (v1)
  {

    v3 = sub_1008DEEC0;
  }

  else
  {

    v3 = sub_1008DEFF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1008DEEC0()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Advertisement cache observation storing cannot register. Missing BeaconKeyService.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1008DEFF4()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Key service updates registered to advertisement cache observation storing.", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v10 = v0[4];

  (*(v10 + 104))(v8, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v9);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  (*(v6 + 8))(v5, v7);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_1008DF204;
  v12 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v12);
}

uint64_t sub_1008DF204()
{

  return _swift_task_switch(sub_1008DF300, 0, 0);
}

uint64_t sub_1008DF300()
{
  if (v0[2])
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Key service updated. Updating leech scanner.", v3, 2u);
    }

    type metadata accessor for Transaction();
    static Transaction.asyncTask(name:block:)();
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_1008DF204;
    v5 = v0[9];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v5);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1008DF4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v4[3] = v5;
  v4[4] = *(v5 + 64);
  v4[5] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016AD8E0, &qword_1013C4998);
  v4[6] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016AD8E8, &qword_1013C49A0);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016AD8F0, &qword_1013C49A8);
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();
  v8 = sub_1000BC4D4(qword_1016AD8F8, &unk_1013C49B0);
  v4[13] = v8;
  v4[14] = *(v8 - 8);
  v4[15] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[16] = v9;
  *v9 = v4;
  v9[1] = sub_1008DF744;

  return daemon.getter();
}

uint64_t sub_1008DF744(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 136) = a1;

  v3 = swift_task_alloc();
  *(v2 + 144) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LeechScanningService();
  v6 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019588(&unk_1016B1170, type metadata accessor for LeechScanningService, &unk_101392F68);
  *v3 = v9;
  v3[1] = sub_1008DF920;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1008DF920(uint64_t a1)
{
  *(*v2 + 152) = a1;

  if (v1)
  {

    v3 = sub_1008DFA70;
  }

  else
  {

    v3 = sub_1008DFBB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1008DFA70()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Leech scanner cannot register. Missing LeechScanningService.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1008DFBB8()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Leech scanner registered for stream.", v4, 2u);
  }

  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
  v10 = v0[8];

  v0[20] = sub_1000BC4D4(&qword_101699CF0, &qword_101393000);
  (*(v10 + 104))(v8, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v9);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  (*(v6 + 8))(v5, v7);
  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_1008DFDDC;
  v12 = v0[13];
  v13 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v13, 0, 0, v12);
}

uint64_t sub_1008DFDDC()
{

  return _swift_task_switch(sub_1008DFED8, 0, 0);
}

uint64_t sub_1008DFED8()
{
  v1 = v0[20];
  v2 = v0[6];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) == 1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[5];
    v6 = v0[2];
    v7 = v0[3];

    v8 = *(v1 + 48);
    type metadata accessor for Transaction();
    sub_100018118(v2 + v8, v5, type metadata accessor for DiscoveredObject);
    v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    sub_100018118(v5, v10 + v9, type metadata accessor for DiscoveredObject);

    static Transaction.asyncTask(name:block:)();

    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = sub_1008DFDDC;
    v12 = v0[13];
    v13 = v0[6];

    return AsyncStream.Iterator.next(isolation:)(v13, 0, 0, v12);
  }
}

uint64_t sub_1008E012C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v2[9] = type metadata accessor for ObservedAdvertisement(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for DiscoveredObject(0);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v3 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1008E032C, 0, 0);
}

uint64_t sub_1008E032C()
{
  v1 = (v0[8] + *(v0[15] + 36));
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_1008E03E8;
  v5 = v0[30];

  return sub_10001A7EC(v5, v3, v2);
}

uint64_t sub_1008E03E8()
{

  return _swift_task_switch(sub_1008E04E4, 0, 0);
}

uint64_t sub_1008E04E4()
{
  v112 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  sub_1000D2A70(*(v0 + 240), v1, &unk_1016C1120, &qword_1013C49D0);
  v4 = *(v3 + 48);
  *(v0 + 256) = v4;
  *(v0 + 264) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = *(v0 + 232);
  if (v5 == 1)
  {
    sub_10000B3A8(v6, &unk_1016C1120, &qword_1013C49D0);
    v7 = *(v0 + 256);
    v8 = *(v0 + 224);
    v9 = *(v0 + 152);
    sub_1000D2A70(*(v0 + 240), v8, &unk_1016C1120, &qword_1013C49D0);
    v10 = v7(v8, 1, v9);
    v11 = *(v0 + 224);
    if (v10 == 1)
    {
      sub_10000B3A8(v11, &unk_1016C1120, &qword_1013C49D0);
      if (qword_101694A58 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 136);
      v13 = *(v0 + 64);
      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_10177B5D8);
      sub_10002963C(v13, v12, type metadata accessor for DiscoveredObject);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 240);
      v19 = *(v0 + 136);
      if (v17)
      {
        v20 = *(v0 + 120);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v111 = v22;
        *v21 = 136446210;
        v23 = sub_10001904C(*(v19 + *(v20 + 36)), *(v19 + *(v20 + 36) + 8));
        v25 = v24;
        sub_10001F210(v19, type metadata accessor for DiscoveredObject);
        v26 = sub_1000136BC(v23, v25, &v111);

        *(v21 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v15, v16, "Leech did not reconcile advertisement %{public}s)!", v21, 0xCu);
        sub_100007BAC(v22);

        sub_10000B3A8(v18, &unk_1016C1120, &qword_1013C49D0);
      }

      else
      {

        sub_10000B3A8(v18, &unk_1016C1120, &qword_1013C49D0);
        sub_10001F210(v19, type metadata accessor for DiscoveredObject);
      }

      v78 = *(v0 + 8);

      return v78();
    }

    else
    {
      v31 = *(v0 + 192);
      v30 = *(v0 + 200);
      v32 = *(v0 + 184);
      v108 = v31;
      v110 = *(v0 + 152);
      v34 = *(v0 + 120);
      v33 = *(v0 + 128);
      v35 = *(v0 + 112);
      v36 = *(v0 + 64);
      v37 = *(v0 + 72);
      sub_100018118(v11, v30, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_10002963C(v36, v33, type metadata accessor for DiscoveredObject);
      sub_10002963C(v30, v31, type metadata accessor for BeaconKeyManager.IndexInformation);
      *v35 = 0;
      *(v35 + 8) = 513;
      v38 = (v33 + v34[9]);
      v39 = *v38;
      v40 = v38[1];
      *(v35 + 16) = *v38;
      *(v35 + 24) = v40;
      *(v35 + 32) = *(v33 + v34[11]);
      *(v35 + 33) = *(v33 + v34[12]);
      v41 = (v33 + v34[13]);
      v42 = *v41;
      LOBYTE(v41) = v41[1];
      *(v35 + 34) = v42;
      *(v35 + 35) = v41;
      *(v35 + 36) = *(v33 + v34[15]);
      v43 = v34[7];
      v44 = v37[11];
      v45 = type metadata accessor for Date();
      (*(*(v45 - 8) + 16))(v35 + v44, v33 + v43, v45);
      *(v35 + v37[14]) = 0;
      v46 = v37[12];
      v47 = type metadata accessor for ObservedAdvertisement.Location(0);
      (*(*(v47 - 8) + 56))(v35 + v46, 1, 1, v47);
      v48 = v35 + v37[13];
      sub_10002963C(v108, v32, type metadata accessor for BeaconKeyManager.IndexInformation);
      v107 = type metadata accessor for UUID();
      (*(*(v107 - 8) + 16))(v48, v32);
      v49 = (v32 + *(v110 + 20));
      v51 = v49[3];
      v50 = v49[4];
      sub_1000035D0(v49, v51);
      sub_100029784(v39, v40);
      LOBYTE(v39) = sub_10002BD40(v51, v50);
      v52 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
      *(v48 + *(v52 + 20)) = v39 & 1;
      sub_1000035D0(v49, v49[3]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_10001F210(v108, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_10001F210(v33, type metadata accessor for DiscoveredObject);
      sub_10001F210(v32, type metadata accessor for BeaconKeyManager.IndexInformation);
      *(v48 + *(v52 + 24)) = *(v0 + 40);
      (*(*(v52 - 8) + 56))(v48, 0, 1, v52);
      if (qword_101694A58 != -1)
      {
        swift_once();
      }

      v53 = *(v0 + 200);
      v54 = *(v0 + 176);
      v109 = *(v0 + 168);
      v56 = *(v0 + 104);
      v55 = *(v0 + 112);
      v58 = *(v0 + 88);
      v57 = *(v0 + 96);
      v59 = *(v0 + 80);
      v60 = type metadata accessor for Logger();
      *(v0 + 280) = sub_1000076D4(v60, qword_10177B5D8);
      sub_10002963C(v55, v56, type metadata accessor for ObservedAdvertisement);
      sub_10002963C(v55, v57, type metadata accessor for ObservedAdvertisement);
      sub_10002963C(v55, v58, type metadata accessor for ObservedAdvertisement);
      sub_10002963C(v55, v59, type metadata accessor for ObservedAdvertisement);
      sub_10002963C(v53, v54, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_10002963C(v53, v109, type metadata accessor for BeaconKeyManager.IndexInformation);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v64 = *(v0 + 96);
        v63 = *(v0 + 104);
        v65 = *(v0 + 88);
        v66 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *v66 = 141559811;
        *(v66 + 4) = 1752392040;
        *(v66 + 12) = 2081;
        v67 = sub_10001904C(*(v63 + 16), *(v63 + 24));
        v69 = v68;
        sub_10001F210(v63, type metadata accessor for ObservedAdvertisement);
        v70 = sub_1000136BC(v67, v69, &v111);

        *(v66 + 14) = v70;
        *(v66 + 22) = 2082;
        v71 = sub_10001993C(*(v64 + 32) & 0xB);
        v72 = sub_100019E48(v71 & 0x10101FF);
        v74 = v73;
        sub_10001F210(v64, type metadata accessor for ObservedAdvertisement);
        v75 = sub_1000136BC(v72, v74, &v111);

        *(v66 + 24) = v75;
        *(v66 + 32) = 2082;
        if (*(v65 + 35))
        {
          v76 = 0xE400000000000000;
          v77 = 1701736302;
        }

        else
        {
          *(v0 + 304) = *(*(v0 + 88) + 34);
          sub_1000198E8();
          v85 = FixedWidthInteger.data.getter();
          v87 = v86;
          v77 = Data.hexString.getter();
          v76 = v88;
          sub_100016590(v85, v87);
        }

        v89 = *(v0 + 168);
        v90 = *(v0 + 176);
        v91 = *(v0 + 80);
        sub_10001F210(*(v0 + 88), type metadata accessor for ObservedAdvertisement);
        v92 = sub_1000136BC(v77, v76, &v111);

        *(v66 + 34) = v92;
        *(v66 + 42) = 2082;
        v93 = sub_100018DE0(*(v91 + 32));
        v95 = v94;
        sub_10001F210(v91, type metadata accessor for ObservedAdvertisement);
        v96 = sub_1000136BC(v93, v95, &v111);

        *(v66 + 44) = v96;
        *(v66 + 52) = 2080;
        sub_1000035D0((v90 + *(v110 + 20)), *(v90 + *(v110 + 20) + 24));
        v97 = dispatch thunk of CustomStringConvertible.description.getter();
        v99 = v98;
        sub_10001F210(v90, type metadata accessor for BeaconKeyManager.IndexInformation);
        v100 = sub_1000136BC(v97, v99, &v111);

        *(v66 + 54) = v100;
        *(v66 + 62) = 2160;
        *(v66 + 64) = 1752392040;
        *(v66 + 72) = 2081;
        sub_100019588(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v101 = dispatch thunk of CustomStringConvertible.description.getter();
        v103 = v102;
        sub_10001F210(v89, type metadata accessor for BeaconKeyManager.IndexInformation);
        v104 = sub_1000136BC(v101, v103, &v111);

        *(v66 + 74) = v104;
        _os_log_impl(&_mh_execute_header, v61, v62, "Leech Reconciled advertisement %{private,mask.hash}s, multiPart: %{public}s, hint: %{public}s, Type18: %{public}s,\nindex: %s, beacon: %{private,mask.hash}s.", v66, 0x52u);
        swift_arrayDestroy();
      }

      else
      {
        v79 = *(v0 + 168);
        v80 = *(v0 + 176);
        v82 = *(v0 + 96);
        v81 = *(v0 + 104);
        v84 = *(v0 + 80);
        v83 = *(v0 + 88);

        sub_10001F210(v79, type metadata accessor for BeaconKeyManager.IndexInformation);
        sub_10001F210(v84, type metadata accessor for ObservedAdvertisement);
        sub_10001F210(v83, type metadata accessor for ObservedAdvertisement);
        sub_10001F210(v82, type metadata accessor for ObservedAdvertisement);
        sub_10001F210(v81, type metadata accessor for ObservedAdvertisement);
        sub_10001F210(v80, type metadata accessor for BeaconKeyManager.IndexInformation);
      }

      v105 = swift_task_alloc();
      *(v0 + 288) = v105;
      *v105 = v0;
      v105[1] = sub_1008E2114;
      v106 = *(v0 + 112);

      return sub_10002DC2C(v106);
    }
  }

  else
  {
    sub_100018118(v6, *(v0 + 216), type metadata accessor for BeaconKeyManager.IndexInformation);
    v27 = swift_task_alloc();
    *(v0 + 272) = v27;
    *v27 = v0;
    v27[1] = sub_1008E1170;
    v28 = *(v0 + 216);

    return sub_10002B558(v28);
  }
}