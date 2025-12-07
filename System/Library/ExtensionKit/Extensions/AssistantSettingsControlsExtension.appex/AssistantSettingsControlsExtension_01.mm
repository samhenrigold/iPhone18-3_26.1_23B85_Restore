uint64_t sub_100023084(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return sub_100022410(a1, v5, v4);
}

uint64_t sub_100023130@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100027DB4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100023178()
{
  result = qword_10008D8D0;
  if (!qword_10008D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D8D0);
  }

  return result;
}

uint64_t sub_100023230()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  v3 = [v2 isAnnounceNotificationEnabledForPlatform:2];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000232FC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  [v2 setAnnounceNotificationEnabledForPlatform:2 annouceNotificationEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100023398()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F528);
  sub_100003B1C(v0, qword_10008F528);
  return sub_1000651B0();
}

uint64_t sub_1000233FC()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F540);
  v1 = sub_100003B1C(v0, qword_10008F540);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000234BC()
{
  result = swift_getKeyPath();
  qword_10008F558 = result;
  return result;
}

uint64_t sub_1000234E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  sub_100003AD4(&qword_10008CB00, &unk_1000714F0);
  v3[41] = swift_task_alloc();
  sub_100003AD4(&qword_10008CB08, &qword_100073870);
  v3[42] = swift_task_alloc();
  sub_100003AD4(&qword_10008DA20, &qword_100076800);
  v3[43] = swift_task_alloc();
  v4 = sub_100064D30();
  v3[44] = v4;
  v3[45] = *(v4 - 8);
  v3[46] = swift_task_alloc();
  v5 = sub_100003AD4(&qword_10008DA00, &qword_100076780);
  v3[47] = v5;
  v3[48] = *(v5 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();

  return _swift_task_switch(sub_1000236C4, 0, 0);
}

uint64_t sub_1000236C4()
{
  sub_100064D90();
  v1 = *(v0 + 32);
  *(v0 + 64) = *(v0 + 16);
  v2 = *(v0 + 48);
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  v3 = swift_task_alloc();
  *(v0 + 408) = v3;
  v4 = sub_1000267BC();
  *v3 = v0;
  v3[1] = sub_1000237A8;
  v5 = *(v0 + 400);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 64, sub_100029430, 0, &type metadata for AnnounceNotificationEntity, v4);
}

uint64_t sub_1000237A8()
{

  return _swift_task_switch(sub_1000238A4, 0, 0);
}

uint64_t sub_1000238A4()
{
  sub_100064D90();
  v1 = *(v0 + 112);
  *(v0 + 160) = v1;
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  *(v0 + 416) = v1;
  *(v0 + 424) = v2;
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  *(v0 + 432) = v3;
  *(v0 + 440) = v4;
  v6 = *(v0 + 152);
  *(v0 + 448) = v5;
  *(v0 + 456) = v6;
  *(v0 + 168) = v2;
  *(v0 + 176) = v3;
  *(v0 + 184) = v4;
  *(v0 + 192) = v5;
  *(v0 + 200) = v6;
  sub_100064D90();
  *(v0 + 489) = *(v0 + 488);
  if (qword_10008C4D8 != -1)
  {
    swift_once();
  }

  v7 = qword_10008F558;
  *(v0 + 464) = qword_10008F558;

  v8 = swift_task_alloc();
  *(v0 + 472) = v8;
  v9 = sub_1000084D8(&qword_10008D9E8, &qword_10008D9F0, &qword_100076718, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v8 = v0;
  v8[1] = sub_100023A20;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 489, v7, &type metadata for Bool, v9);
}

uint64_t sub_100023A20()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_100029420;
  }

  else
  {
    v2 = sub_100023C10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100023C10()
{
  v10 = v0[49];
  v2 = v0[47];
  v1 = v0[48];
  v11 = v0[50];
  v12 = v0[46];
  v15 = v0[45];
  v17 = v0[44];
  v3 = v0[41];
  v4 = v0[42];
  sub_100064D90();
  v13 = v0[27];
  v5 = v0[28];
  v14 = v0[29];
  v16 = v0[30];
  v18 = v0[31];
  v0[32] = v0[26];
  v0[33] = v13;
  v0[34] = v5;
  v0[35] = v14;
  v0[36] = v16;
  v0[37] = v18;
  v6 = sub_100065100();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_100065140();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_100023178();
  sub_100026B94();
  sub_100064CF0();
  (*(v1 + 16))(v10, v11, v2);
  sub_100064D10();
  sub_100064D40();
  (*(v15 + 8))(v12, v17);

  (*(v1 + 8))(v11, v2);

  v8 = v0[1];

  return v8();
}

void (*sub_100023EF4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

void (*sub_100023F68(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_100024004()
{
  result = qword_10008D8E8;
  if (!qword_10008D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D8E8);
  }

  return result;
}

unint64_t sub_10002405C()
{
  result = qword_10008D8F0;
  if (!qword_10008D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D8F0);
  }

  return result;
}

uint64_t sub_100024158(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return sub_1000234E4(a1, v5, v4);
}

uint64_t sub_100024204@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100028220();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10002424C()
{
  result = qword_10008D8F8;
  if (!qword_10008D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D8F8);
  }

  return result;
}

uint64_t sub_100024304()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  v3 = [v2 isAnnounceNotificationEnabledForPlatform:3];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000243D0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  [v2 setAnnounceNotificationEnabledForPlatform:3 annouceNotificationEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10002446C()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F560);
  sub_100003B1C(v0, qword_10008F560);
  return sub_1000651B0();
}

uint64_t sub_1000244D0()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F578);
  v1 = sub_100003B1C(v0, qword_10008F578);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100024590()
{
  result = swift_getKeyPath();
  qword_10008F590 = result;
  return result;
}

uint64_t sub_1000245B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  sub_100003AD4(&qword_10008CB00, &unk_1000714F0);
  v3[41] = swift_task_alloc();
  sub_100003AD4(&qword_10008CB08, &qword_100073870);
  v3[42] = swift_task_alloc();
  sub_100003AD4(&qword_10008DA18, &qword_1000767C8);
  v3[43] = swift_task_alloc();
  v4 = sub_100064D30();
  v3[44] = v4;
  v3[45] = *(v4 - 8);
  v3[46] = swift_task_alloc();
  v5 = sub_100003AD4(&qword_10008DA00, &qword_100076780);
  v3[47] = v5;
  v3[48] = *(v5 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();

  return _swift_task_switch(sub_100024798, 0, 0);
}

uint64_t sub_100024798()
{
  sub_100064D90();
  v1 = *(v0 + 32);
  *(v0 + 64) = *(v0 + 16);
  v2 = *(v0 + 48);
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  v3 = swift_task_alloc();
  *(v0 + 408) = v3;
  v4 = sub_1000267BC();
  *v3 = v0;
  v3[1] = sub_10002487C;
  v5 = *(v0 + 400);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 64, sub_100029434, 0, &type metadata for AnnounceNotificationEntity, v4);
}

uint64_t sub_10002487C()
{

  return _swift_task_switch(sub_100024978, 0, 0);
}

uint64_t sub_100024978()
{
  sub_100064D90();
  v1 = *(v0 + 112);
  *(v0 + 160) = v1;
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  *(v0 + 416) = v1;
  *(v0 + 424) = v2;
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  *(v0 + 432) = v3;
  *(v0 + 440) = v4;
  v6 = *(v0 + 152);
  *(v0 + 448) = v5;
  *(v0 + 456) = v6;
  *(v0 + 168) = v2;
  *(v0 + 176) = v3;
  *(v0 + 184) = v4;
  *(v0 + 192) = v5;
  *(v0 + 200) = v6;
  sub_100064D90();
  *(v0 + 489) = *(v0 + 488);
  if (qword_10008C4F0 != -1)
  {
    swift_once();
  }

  v7 = qword_10008F590;
  *(v0 + 464) = qword_10008F590;

  v8 = swift_task_alloc();
  *(v0 + 472) = v8;
  v9 = sub_1000084D8(&qword_10008D9E8, &qword_10008D9F0, &qword_100076718, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v8 = v0;
  v8[1] = sub_100024AF4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 489, v7, &type metadata for Bool, v9);
}

uint64_t sub_100024AF4()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_100029420;
  }

  else
  {
    v2 = sub_100024CE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100024CE4()
{
  v10 = v0[49];
  v2 = v0[47];
  v1 = v0[48];
  v11 = v0[50];
  v12 = v0[46];
  v15 = v0[45];
  v17 = v0[44];
  v3 = v0[41];
  v4 = v0[42];
  sub_100064D90();
  v13 = v0[27];
  v5 = v0[28];
  v14 = v0[29];
  v16 = v0[30];
  v18 = v0[31];
  v0[32] = v0[26];
  v0[33] = v13;
  v0[34] = v5;
  v0[35] = v14;
  v0[36] = v16;
  v0[37] = v18;
  v6 = sub_100065100();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_100065140();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_10002424C();
  sub_100026B94();
  sub_100064CF0();
  (*(v1 + 16))(v10, v11, v2);
  sub_100064D10();
  sub_100064D40();
  (*(v15 + 8))(v12, v17);

  (*(v1 + 8))(v11, v2);

  v8 = v0[1];

  return v8();
}

void (*sub_100024FC8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

void (*sub_10002503C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_1000250D8()
{
  result = qword_10008D910;
  if (!qword_10008D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D910);
  }

  return result;
}

unint64_t sub_100025130()
{
  result = qword_10008D918;
  if (!qword_10008D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D918);
  }

  return result;
}

uint64_t sub_10002522C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return sub_1000245B8(a1, v5, v4);
}

uint64_t sub_1000252D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002868C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100025320()
{
  result = qword_10008D920;
  if (!qword_10008D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D920);
  }

  return result;
}

uint64_t sub_1000253D8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  v3 = [v2 isAnnounceNotificationEnabledForPlatform:4];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000254A4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  [v2 setAnnounceNotificationEnabledForPlatform:4 annouceNotificationEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100025540()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F598);
  sub_100003B1C(v0, qword_10008F598);
  return sub_1000651B0();
}

uint64_t sub_1000255A4()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F5B0);
  v1 = sub_100003B1C(v0, qword_10008F5B0);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100025664()
{
  result = swift_getKeyPath();
  qword_10008F5C8 = result;
  return result;
}

uint64_t sub_10002568C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  sub_100003AD4(&qword_10008CB00, &unk_1000714F0);
  v3[41] = swift_task_alloc();
  sub_100003AD4(&qword_10008CB08, &qword_100073870);
  v3[42] = swift_task_alloc();
  sub_100003AD4(&qword_10008D9F8, &qword_100076778);
  v3[43] = swift_task_alloc();
  v4 = sub_100064D30();
  v3[44] = v4;
  v3[45] = *(v4 - 8);
  v3[46] = swift_task_alloc();
  v5 = sub_100003AD4(&qword_10008DA00, &qword_100076780);
  v3[47] = v5;
  v3[48] = *(v5 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();

  return _swift_task_switch(sub_10002586C, 0, 0);
}

uint64_t sub_10002586C()
{
  sub_100064D90();
  v1 = *(v0 + 32);
  *(v0 + 64) = *(v0 + 16);
  v2 = *(v0 + 48);
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  v3 = swift_task_alloc();
  *(v0 + 408) = v3;
  v4 = sub_1000267BC();
  *v3 = v0;
  v3[1] = sub_100025950;
  v5 = *(v0 + 400);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 64, sub_100029438, 0, &type metadata for AnnounceNotificationEntity, v4);
}

uint64_t sub_100025950()
{

  return _swift_task_switch(sub_100025A4C, 0, 0);
}

uint64_t sub_100025A4C()
{
  sub_100064D90();
  v1 = *(v0 + 112);
  *(v0 + 160) = v1;
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  *(v0 + 416) = v1;
  *(v0 + 424) = v2;
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  *(v0 + 432) = v3;
  *(v0 + 440) = v4;
  v6 = *(v0 + 152);
  *(v0 + 448) = v5;
  *(v0 + 456) = v6;
  *(v0 + 168) = v2;
  *(v0 + 176) = v3;
  *(v0 + 184) = v4;
  *(v0 + 192) = v5;
  *(v0 + 200) = v6;
  sub_100064D90();
  *(v0 + 489) = *(v0 + 488);
  if (qword_10008C508 != -1)
  {
    swift_once();
  }

  v7 = qword_10008F5C8;
  *(v0 + 464) = qword_10008F5C8;

  v8 = swift_task_alloc();
  *(v0 + 472) = v8;
  v9 = sub_1000084D8(&qword_10008D9E8, &qword_10008D9F0, &qword_100076718, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v8 = v0;
  v8[1] = sub_100025BC8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 489, v7, &type metadata for Bool, v9);
}

uint64_t sub_100025BC8()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_100029420;
  }

  else
  {
    v2 = sub_100025DB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100025DB8()
{
  v10 = v0[49];
  v2 = v0[47];
  v1 = v0[48];
  v11 = v0[50];
  v12 = v0[46];
  v15 = v0[45];
  v17 = v0[44];
  v3 = v0[41];
  v4 = v0[42];
  sub_100064D90();
  v13 = v0[27];
  v5 = v0[28];
  v14 = v0[29];
  v16 = v0[30];
  v18 = v0[31];
  v0[32] = v0[26];
  v0[33] = v13;
  v0[34] = v5;
  v0[35] = v14;
  v0[36] = v16;
  v0[37] = v18;
  v6 = sub_100065100();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_100065140();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_100025320();
  sub_100026B94();
  sub_100064CF0();
  (*(v1 + 16))(v10, v11, v2);
  sub_100064D10();
  sub_100064D40();
  (*(v15 + 8))(v12, v17);

  (*(v1 + 8))(v11, v2);

  v8 = v0[1];

  return v8();
}

void (*sub_10002609C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

void (*sub_100026110(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

uint64_t sub_1000261A8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

unint64_t sub_100026210()
{
  result = qword_10008D938;
  if (!qword_10008D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D938);
  }

  return result;
}

unint64_t sub_100026268()
{
  result = qword_10008D940;
  if (!qword_10008D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D940);
  }

  return result;
}

uint64_t sub_1000263B8@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  v7 = sub_100003B1C(v6, a2);

  return sub_100008568(v7, a4);
}

uint64_t sub_100026428(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return sub_10002568C(a1, v5, v4);
}

uint64_t sub_1000264D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100028AF8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100026538()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  v3 = [v2 isSpokenNotificationSkipTriggerlessReplyConfirmationEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100026600()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  [v2 setSpokenNotificationSkipTriggerlessReplyConfirmationEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

double sub_100026698@<D0>(_OWORD *a1@<X8>)
{
  sub_100028F64(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

unint64_t sub_1000266D8(void *a1)
{
  a1[1] = sub_100026710();
  a1[2] = sub_100026764();
  result = sub_10001B264();
  a1[3] = result;
  return result;
}

unint64_t sub_100026710()
{
  result = qword_10008D948;
  if (!qword_10008D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D948);
  }

  return result;
}

unint64_t sub_100026764()
{
  result = qword_10008D950;
  if (!qword_10008D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D950);
  }

  return result;
}

unint64_t sub_1000267BC()
{
  result = qword_10008D958;
  if (!qword_10008D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D958);
  }

  return result;
}

unint64_t sub_100026814()
{
  result = qword_10008D960;
  if (!qword_10008D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D960);
  }

  return result;
}

uint64_t sub_100026868(uint64_t a1)
{
  v2 = qword_10008D820;
  v3 = off_10008D828;
  v4 = sub_1000267BC();

  return EntityURLRepresentation.init(_:)(v2, v3, a1, v4);
}

unint64_t sub_1000268E4()
{
  result = qword_10008D968;
  if (!qword_10008D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D968);
  }

  return result;
}

unint64_t sub_10002693C()
{
  result = qword_10008D970;
  if (!qword_10008D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D970);
  }

  return result;
}

uint64_t sub_1000269D4(uint64_t a1)
{
  v2 = sub_10001B264();

  return _UniqueEntityProvider.init(_:)(&unk_100076700, 0, a1, v2);
}

uint64_t sub_100026A74(uint64_t a1)
{
  sub_100026764();
  v2 = sub_100065050();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100026AE4()
{
  result = qword_10008D990;
  if (!qword_10008D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D990);
  }

  return result;
}

unint64_t sub_100026B3C()
{
  result = qword_10008D998;
  if (!qword_10008D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D998);
  }

  return result;
}

unint64_t sub_100026B94()
{
  result = qword_10008D9A0;
  if (!qword_10008D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D9A0);
  }

  return result;
}

unint64_t sub_100026BEC()
{
  result = qword_10008D9A8;
  if (!qword_10008D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D9A8);
  }

  return result;
}

uint64_t sub_100026C40@<X0>(uint64_t *a2@<X8>)
{
  sub_10001B264();
  result = sub_100064D70();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100026CB8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100003B1C(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100026DA4(uint64_t a1)
{
  v2 = sub_1000267BC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100026DF4()
{
  result = qword_10008D9C0;
  if (!qword_10008D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008D9C0);
  }

  return result;
}

uint64_t sub_100026E48@<X0>(uint64_t a1@<X8>)
{
  sub_100065270();
  v2 = sub_100065260();
  sub_100065240();

  return sub_1000294B4(6, a1);
}

uint64_t sub_100026EA0(uint64_t a1)
{
  v2 = sub_100026BEC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_100026F54(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100026F68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100026FB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000270C4()
{
  if (qword_10008C470 != -1)
  {
    swift_once();
  }

  if ([qword_10008F460 assistantIsEnabled])
  {
    v1 = *(v0 + 64);
    sub_100028F64((v0 + 16));
    v2 = *(v0 + 16);
    v3 = *(v0 + 48);
    v1[1] = *(v0 + 32);
    v1[2] = v3;
    *v1 = v2;
  }

  else
  {
    sub_100003BFC();
    swift_allocError();
    *v5 = 0xD00000000000002ELL;
    v5[1] = 0x8000000100065BB0;
    swift_willThrow();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000271DC()
{
  v18 = sub_1000650D0();
  v0 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1000651D0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100003AD4(&qword_10008D9E0, &unk_1000766F0);
  sub_1000651B0();
  (*(v13 + 56))(v11, 1, 1, v12);
  v14 = sub_100064D30();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v18);
  sub_1000267BC();
  return sub_100064DC0();
}

uint64_t sub_1000274DC()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000650D0();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000651D0();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100003AD4(&qword_10008D9E0, &unk_1000766F0);
  sub_1000651B0();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v17 = sub_100064D30();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_1000267BC();
  v23 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 2;
  v20 = sub_1000653E0();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_100064DD0();
  return v23;
}

uint64_t sub_100027948()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000650D0();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000651D0();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100003AD4(&qword_10008D9E0, &unk_1000766F0);
  sub_1000651B0();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v17 = sub_100064D30();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_1000267BC();
  v23 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 2;
  v20 = sub_1000653E0();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_100064DD0();
  return v23;
}

uint64_t sub_100027DB4()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000650D0();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000651D0();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100003AD4(&qword_10008D9E0, &unk_1000766F0);
  sub_1000651B0();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v17 = sub_100064D30();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_1000267BC();
  v23 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 2;
  v20 = sub_1000653E0();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_100064DD0();
  return v23;
}

uint64_t sub_100028220()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000650D0();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000651D0();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100003AD4(&qword_10008D9E0, &unk_1000766F0);
  sub_1000651B0();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v17 = sub_100064D30();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_1000267BC();
  v23 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 2;
  v20 = sub_1000653E0();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_100064DD0();
  return v23;
}

uint64_t sub_10002868C()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000650D0();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000651D0();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100003AD4(&qword_10008D9E0, &unk_1000766F0);
  sub_1000651B0();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v17 = sub_100064D30();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_1000267BC();
  v23 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 2;
  v20 = sub_1000653E0();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_100064DD0();
  return v23;
}

uint64_t sub_100028AF8()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000650D0();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000651D0();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100003AD4(&qword_10008D9E0, &unk_1000766F0);
  sub_1000651B0();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v17 = sub_100064D30();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_1000267BC();
  v23 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 2;
  v20 = sub_1000653E0();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_100064DD0();
  return v23;
}

uint64_t sub_100028F64@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000651D0();
  __chkstk_darwin(v2 - 8);
  sub_100003AD4(&qword_10008D868, qword_100075860);
  sub_1000651B0();
  sub_1000084D8(&qword_10008D9E8, &qword_10008D9F0, &qword_100076718, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v3 = sub_100065180();
  sub_100003AD4(&qword_10008D890, qword_100075A00);
  sub_1000651B0();
  v4 = sub_100065180();
  sub_100003AD4(&qword_10008D8B8, qword_100075BA0);
  sub_1000651B0();
  v5 = sub_100065180();
  sub_100003AD4(&qword_10008D8E0, qword_100075D40);
  sub_1000651B0();
  v6 = sub_100065180();
  sub_100003AD4(&qword_10008D908, qword_100075EE0);
  sub_1000651B0();
  v7 = sub_100065180();
  sub_100003AD4(&qword_10008D930, qword_100076080);
  sub_1000651B0();
  result = sub_100065180();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = result;
  return result;
}

unint64_t sub_100029364()
{
  result = qword_10008DA40;
  if (!qword_10008DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DA40);
  }

  return result;
}

unint64_t sub_1000293B8()
{
  result = qword_10008DA48;
  if (!qword_10008DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DA48);
  }

  return result;
}

uint64_t sub_1000294B4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v42 = sub_1000651C0();
  v3 = *(v42 - 8);
  __chkstk_darwin(v42);
  v43 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100065210();
  __chkstk_darwin(v5 - 8);
  v41 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100065370();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100003AD4(&qword_10008CAE8, &unk_100072340);
  __chkstk_darwin(v8 - 8);
  v50 = v39 - v9;
  v10 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v10 - 8);
  v47 = v39 - v11;
  v12 = sub_1000651D0();
  v13 = *(v12 - 8);
  v44 = v12;
  v45 = v13;
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v17 = v39 - v16;
  __chkstk_darwin(v15);
  v46 = v39 - v18;
  v19 = sub_100064FA0();
  v48 = *(v19 - 8);
  v49 = v19;
  __chkstk_darwin(v19);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100065270();
  v22 = sub_100065260();
  v23 = sub_100065250();

  v24 = (v23 & 1) == 0;
  v25 = v21;
  if (v24)
  {
    v26 = 1769105747;
  }

  else
  {
    v26 = 0xD000000000000019;
  }

  sub_100064F90();
  switch(a1)
  {
    case 1:
    case 3:
    case 4:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      sub_100065360();
      sub_100065200();
      (*(v3 + 104))(v43, enum case for LocalizedStringResource.BundleDescription.main(_:), v42);
      sub_1000651F0();
      v30 = v47;
      sub_1000651B0();
      (*(v45 + 56))(v30, 0, 1, v44);
      goto LABEL_9;
    case 2:
    case 6:
      sub_100065360();
      sub_100065200();
      (*(v3 + 104))(v43, enum case for LocalizedStringResource.BundleDescription.main(_:), v42);
      sub_1000651F0();
      v28 = v47;
      sub_1000651B0();
      (*(v45 + 56))(v28, 0, 1, v44);
      v37 = v48;
      v33 = v49;
      v29 = v50;
      (*(v48 + 16))(v50, v21, v49);
      (*(v37 + 56))(v29, 0, 1, v33);
      sub_1000651B0();
      sub_100064FB0();
      break;
    case 5:
      v39[1] = v26;
      v40 = v21;
      v27 = sub_100065260();
      sub_100065230();

      sub_100065220();
      sub_100065220();
      sub_100065360();
      sub_100065200();
      (*(v3 + 104))(v43, enum case for LocalizedStringResource.BundleDescription.main(_:), v42);
      v33 = v49;
      sub_1000651F0();
      v34 = v45;
      v35 = v44;
      (*(v45 + 16))(v46, v17, v44);
      v36 = v47;
      sub_1000651B0();
      (*(v34 + 56))(v36, 0, 1, v35);
      v37 = v48;
      v38 = v50;
      v25 = v40;
      (*(v48 + 16))(v50, v40, v33);
      (*(v37 + 56))(v38, 0, 1, v33);
      sub_100064FC0();
      (*(v34 + 8))(v17, v35);
      break;
    default:
      sub_1000651B0();
      (*(v45 + 56))(v47, 1, 1, v44);
LABEL_9:
      v37 = v48;
      v33 = v49;
      v31 = v50;
      (*(v48 + 16))(v50, v21, v49);
      (*(v37 + 56))(v31, 0, 1, v33);
      sub_100064FC0();
      break;
  }

  return (*(v37 + 8))(v25, v33);
}

unint64_t sub_100029FD4(char a1)
{
  result = 0x474155474E414C2FLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000027;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x434E554F4E4E412FLL;
      break;
    case 8:
    case 13:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x495F4543494F562FLL;
      break;
    case 11:
      result = 0x59524F545349482FLL;
      break;
    case 12:
      result = 0x4F464E495F594D2FLL;
      break;
    default:
      result = 0xD00000000000002DLL;
      break;
  }

  return result;
}

uint64_t sub_10002A1C0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100029FD4(*a1);
  v5 = v4;
  if (v3 == sub_100029FD4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100065500();
  }

  return v8 & 1;
}

unint64_t sub_10002A24C()
{
  result = qword_10008DAF0;
  if (!qword_10008DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DAF0);
  }

  return result;
}

Swift::Int sub_10002A2A0()
{
  v1 = *v0;
  sub_100065550();
  sub_100029FD4(v1);
  sub_1000653B0();

  return sub_100065560();
}

uint64_t sub_10002A304(uint64_t a1)
{
  sub_100029FD4(*v1);
  sub_1000653B0();
}

Swift::Int sub_10002A358(uint64_t a1)
{
  v2 = *v1;
  sub_100065550();
  sub_100029FD4(v2);
  sub_1000653B0();

  return sub_100065560();
}

unint64_t sub_10002A3B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002A640(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10002A3E8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100029FD4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10002A418()
{
  result = qword_10008DAF8;
  if (!qword_10008DAF8)
  {
    sub_100002BD0(&qword_10008DB00, qword_1000769A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DAF8);
  }

  return result;
}

unint64_t sub_10002A4A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_10002A640(a1, a2);
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriSettingDeepLink(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriSettingDeepLink(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002A640(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100089590;
  v6._object = a2;
  v4 = sub_1000654F0(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002A6B8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100003AD4(&qword_10008D5B8, &unk_10007B4F0);
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = sub_100003AD4(&qword_10008D5C0, &unk_100074600);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100003AD4(&qword_10008D5C8, &unk_10007B560);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = sub_100003AD4(&qword_10008D5D0, &qword_100074610);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  v24 = &v23 - v14;
  swift_getKeyPath();
  sub_100003AD4(&qword_10008D5D8, &qword_100074640);
  sub_10002AC68();
  sub_1000084D8(&qword_10008D5E8, &qword_10008D5D8, &qword_100074640, &protocol conformance descriptor for Label<A, B>);
  sub_100065340();
  sub_1000652D0();
  v15 = sub_1000084D8(&qword_10008D5F0, &qword_10008D5B8, &unk_10007B4F0, &protocol conformance descriptor for ControlToggle<A>);
  sub_100065300();

  (*(v25 + 8))(v3, v1);
  sub_1000652D0();
  v33 = v1;
  v34 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v26;
  sub_1000652E0();

  (*(v27 + 8))(v7, v17);
  v33 = v17;
  v34 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  v20 = v28;
  sub_100065310();
  (*(v29 + 8))(v11, v20);
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1000652F0();
  return (*(v31 + 8))(v19, v21);
}

uint64_t sub_10002ABFC()
{
  v0 = sub_1000652D0();

  return Label<>.init(_:systemImage:)(v0);
}

unint64_t sub_10002AC68()
{
  result = qword_10008DB08;
  if (!qword_10008DB08)
  {
    type metadata accessor for CallHangUpEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DB08);
  }

  return result;
}

uint64_t sub_10002ACC0()
{
  sub_100002BD0(&qword_10008D5D0, &qword_100074610);
  sub_100002BD0(&qword_10008D5C8, &unk_10007B560);
  sub_100002BD0(&qword_10008D5C0, &unk_100074600);
  sub_100002BD0(&qword_10008D5B8, &unk_10007B4F0);
  sub_1000084D8(&qword_10008D5F0, &qword_10008D5B8, &unk_10007B4F0, &protocol conformance descriptor for ControlToggle<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10002AE18()
{
  result = qword_10008DB20;
  if (!qword_10008DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DB20);
  }

  return result;
}

uint64_t type metadata accessor for CallHangUpEntity(uint64_t a1)
{
  result = qword_10008DC70;
  if (!qword_10008DC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002AEB8()
{
  type metadata accessor for CallHangUpEntity(0);
}

uint64_t sub_10002AEEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for CallHangUpEntity(0) + 20));
}

uint64_t sub_10002AF34()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F5D0);
  sub_100003B1C(v0, qword_10008F5D0);
  return sub_1000651B0();
}

uint64_t sub_10002AF98(uint64_t a1)
{
  v2 = type metadata accessor for CallHangUpEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_10002E560(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100064DA0();
  return sub_10002E4BC(a1);
}

void (*sub_10002B028(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_10002B09C()
{
  result = qword_10008DB30;
  if (!qword_10008DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DB30);
  }

  return result;
}

uint64_t sub_10002B0F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002E5C4();
  v5 = sub_10002E478(&qword_10008DBC0, &unk_100076FB8);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10002B17C()
{
  result = qword_10008DB38;
  if (!qword_10008DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DB38);
  }

  return result;
}

unint64_t sub_10002B1D4()
{
  result = qword_10008DB40;
  if (!qword_10008DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DB40);
  }

  return result;
}

uint64_t sub_10002B278(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10002E5C4();
  v6 = sub_10002E618();
  v7 = sub_10002E478(&qword_10008DBC0, &unk_100076FB8);
  *v4 = v2;
  v4[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10002B360@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002DBD0();
  *a1 = result;
  return result;
}

uint64_t sub_10002B388(uint64_t a1)
{
  v2 = sub_10002B09C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10002B3C8()
{
  result = qword_10008DB48;
  if (!qword_10008DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DB48);
  }

  return result;
}

uint64_t sub_10002B460()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000651C0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100065370();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000651D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100065130();
  sub_100003B54(v10, qword_10008F5E8);
  sub_100003B1C(v10, qword_10008F5E8);
  sub_100065360();
  sub_100065200();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000651F0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100065120();
}

uint64_t sub_10002B750()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F600);
  sub_100003B1C(v0, qword_10008F600);
  return sub_1000651B0();
}

uint64_t sub_10002B7B4()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F618);
  v1 = sub_100003B1C(v0, qword_10008F618);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10002B874()
{
  result = swift_getKeyPath();
  qword_10008F630 = result;
  return result;
}

uint64_t sub_10002B89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_100003AD4(&qword_10008CB00, &unk_1000714F0);
  v3[5] = swift_task_alloc();
  sub_100003AD4(&qword_10008CB08, &qword_100073870);
  v3[6] = swift_task_alloc();
  sub_100003AD4(&qword_10008DD00, &qword_1000773A8);
  v3[7] = swift_task_alloc();
  v4 = sub_100064D30();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for CallHangUpEntity(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_100003AD4(&qword_10008DD08, &qword_1000773B0);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10002BAB8, 0, 0);
}

uint64_t sub_10002BAB8()
{
  sub_100064D90();
  v1 = swift_task_alloc();
  v0[18] = v1;
  v2 = sub_10002E478(&qword_10008DB90, &unk_100077020);
  *v1 = v0;
  v1[1] = sub_10002BBA0;
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v4, sub_10002E66C, 0, v5, v2);
}

uint64_t sub_10002BBA0()
{

  return _swift_task_switch(sub_10002BC9C, 0, 0);
}

uint64_t sub_10002BC9C()
{
  sub_100064D90();
  sub_100064D90();
  *(v0 + 177) = *(v0 + 176);
  if (qword_10008C530 != -1)
  {
    swift_once();
  }

  v1 = qword_10008F630;
  *(v0 + 152) = qword_10008F630;

  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  v3 = sub_1000084D8(&qword_10008DCF0, &qword_10008DC88, &qword_100077328, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v2 = v0;
  v2[1] = sub_10002BDEC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 177, v1, &type metadata for Bool, v3);
}

uint64_t sub_10002BDEC()
{
  v2 = *(*v1 + 96);
  *(*v1 + 168) = v0;

  sub_10002E4BC(v2);

  if (v0)
  {
    v3 = sub_1000051E8;
  }

  else
  {
    v3 = sub_10002BF40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002BF40()
{
  v12 = v0[17];
  v2 = v0[14];
  v1 = v0[15];
  v10 = v0[16];
  v11 = v0[13];
  v3 = v0[10];
  v14 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v13 = v0[9];
  sub_100064D90();
  v6 = sub_100065100();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_100065140();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_10002B3C8();
  sub_10002E478(&qword_10008DBA0, &unk_1000771D0);
  sub_100064CF0();
  (*(v1 + 16))(v10, v12, v2);
  sub_100064D10();
  sub_100064D40();
  (*(v13 + 8))(v3, v14);
  sub_10002E4BC(v11);
  (*(v1 + 8))(v12, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10002C1CC()
{
  v0 = sub_100003AD4(&qword_10008DD10, &qword_1000773B8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10008C530 != -1)
  {
    swift_once();
  }

  sub_100064F70();

  type metadata accessor for CallHangUpEntity(0);
  sub_10002E478(&qword_10008DBA0, &unk_1000771D0);
  sub_1000084D8(&qword_10008DD18, &qword_10008DD10, &qword_1000773B8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_100064F60();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10002C364(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_1000054EC;
}

void (*sub_10002C3D8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

uint64_t sub_10002C44C()
{
  if (qword_10008C530 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10002C4AC()
{
  result = qword_10008DB60;
  if (!qword_10008DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DB60);
  }

  return result;
}

unint64_t sub_10002C504()
{
  result = qword_10008DB68;
  if (!qword_10008DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DB68);
  }

  return result;
}

uint64_t sub_10002C630@<X0>(uint64_t a1@<X8>)
{
  if (qword_10008C528 != -1)
  {
    swift_once();
  }

  v2 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  v3 = sub_100003B1C(v2, qword_10008F618);

  return sub_100008568(v3, a1);
}

uint64_t sub_10002C6B4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return sub_10002B89C(a1, v5, v4);
}

uint64_t sub_10002C760@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002DF6C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10002C7A8()
{
  result = qword_10008DB70;
  if (!qword_10008DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DB70);
  }

  return result;
}

uint64_t sub_10002C850()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  v3 = [v2 isCallHangUpEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10002C918()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  [v2 setCallHangUpEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

id sub_10002C9B0()
{
  result = [objc_opt_self() sharedController];
  qword_10008F638 = result;
  return result;
}

uint64_t sub_10002C9EC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10002CA10, 0, 0);
}

uint64_t sub_10002CA10()
{
  if ([*(v0 + 24) assistantIsEnabled] && objc_msgSend(*(v0 + 24), "isVoiceTriggerEnabled"))
  {
    v1 = type metadata accessor for CallHangUpEntity(0);
    v2 = sub_10002E478(&qword_10008DCF8, &unk_100076F9C);
    (*(v2 + 32))(v1, v2);
    v3 = *(v0 + 8);
  }

  else
  {
    sub_100003BFC();
    swift_allocError();
    *v4 = 0xD000000000000055;
    v4[1] = 0x8000000100067B10;
    swift_willThrow();
    v3 = *(v0 + 8);
  }

  return v3();
}

unint64_t sub_10002CB44()
{
  result = qword_10008DB78;
  if (!qword_10008DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DB78);
  }

  return result;
}

uint64_t sub_10002CB98(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10002D454();
  *v4 = v2;
  v4[1] = sub_100002540;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10002CC4C()
{
  result = qword_10008DB80;
  if (!qword_10008DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DB80);
  }

  return result;
}

unint64_t sub_10002CCA4()
{
  result = qword_10008DB88;
  if (!qword_10008DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DB88);
  }

  return result;
}

uint64_t sub_10002CD2C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002D454();
  *v5 = v2;
  v5[1] = sub_100003DDC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10002CDE0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10002D454();
  *v4 = v2;
  v4[1] = sub_100003DBC;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10002CE94()
{
  result = qword_10008DB98;
  if (!qword_10008DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DB98);
  }

  return result;
}

unint64_t sub_10002CF20()
{
  result = qword_10008DBA8;
  if (!qword_10008DBA8)
  {
    sub_100002BD0(&qword_10008DBB0, qword_100076EE0);
    sub_10002E478(&qword_10008DBA0, &unk_1000771D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DBA8);
  }

  return result;
}

uint64_t sub_10002CFC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002CB44();
  *v5 = v2;
  v5[1] = sub_100002CCC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10002D074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000651D0();
  __chkstk_darwin(v4 - 8);
  sub_100065270();
  v5 = sub_100065260();
  sub_100065240();

  sub_1000294B4(9, a2);
  v6 = *(a1 + 20);
  sub_100003AD4(&qword_10008DB58, &qword_100076C40);
  sub_1000651B0();
  sub_1000084D8(&qword_10008DCF0, &qword_10008DC88, &qword_100077328, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  result = sub_100065180();
  *(a2 + v6) = result;
  return result;
}

uint64_t sub_10002D1CC(void *a1)
{
  a1[1] = sub_10002E478(&qword_10008DBB8, &unk_100076FF0);
  a1[2] = sub_10002E478(&qword_10008DBC0, &unk_100076FB8);
  result = sub_10002E478(&qword_10008DB08, &unk_100077078);
  a1[3] = result;
  return result;
}

uint64_t sub_10002D28C(uint64_t a1)
{
  v2 = sub_10002E478(&qword_10008DB90, &unk_100077020);

  return EntityURLRepresentation.init(_:)(0xD00000000000003DLL, 0x8000000100067AD0, a1, v2);
}

uint64_t sub_10002D30C()
{
  v0 = qword_10008DB10;

  return v0;
}

id sub_10002D3E0@<X0>(void *a1@<X8>)
{
  if (qword_10008C538 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_10008F638;
  *a1 = qword_10008F638;

  return v2;
}

unint64_t sub_10002D454()
{
  result = qword_10008DBE0;
  if (!qword_10008DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DBE0);
  }

  return result;
}

uint64_t sub_10002D4A8(uint64_t a1)
{
  sub_10002E478(&qword_10008DBC0, &unk_100076FB8);
  v2 = sub_100065050();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10002D5CC@<X0>(uint64_t *a2@<X8>)
{
  sub_10002E478(&qword_10008DB08, &unk_100077078);
  result = sub_100064D70();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10002D6A4(uint64_t a1)
{
  v2 = sub_10002E478(&qword_10008DB90, &unk_100077020);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10002D740(uint64_t a1)
{
  v2 = sub_10002E478(&qword_10008DBF8, &unk_100077230);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10002D7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100064FD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002D8AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100064FD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10002D964(uint64_t a1)
{
  sub_100064FD0();
  if (v1 <= 0x3F)
  {
    sub_10002D9E8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10002D9E8(uint64_t a1)
{
  if (!qword_10008DC80)
  {
    type metadata accessor for CallHangUpEntity(255);
    sub_100002BD0(&qword_10008DC88, &qword_100077328);
    sub_10002E478(&qword_10008DB90, &unk_100077020);
    sub_1000084D8(&qword_10008DC90, &qword_10008DC88, &qword_100077328, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    sub_10002DAE4();
    v1 = sub_1000651A0();
    if (!v2)
    {
      atomic_store(v1, &qword_10008DC80);
    }
  }
}

unint64_t sub_10002DAE4()
{
  result = qword_10008DC98;
  if (!qword_10008DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DC98);
  }

  return result;
}

uint64_t sub_10002DBD0()
{
  v22 = sub_1000650D0();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = sub_100003AD4(&qword_10008DCE0, &unk_100077370);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000651D0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v21 = sub_100003AD4(&qword_10008DCE8, &unk_100077380);
  sub_1000651B0();
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = type metadata accessor for CallHangUpEntity(0);
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = sub_100064D30();
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 1, 1, v18);
  v19(v6, 1, 1, v18);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v22);
  sub_10002E478(&qword_10008DB90, &unk_100077020);
  return sub_100064DC0();
}

uint64_t sub_10002DF6C()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  __chkstk_darwin(v0 - 8);
  v34 = v26 - v1;
  v35 = sub_1000650D0();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v26 - v9;
  v11 = sub_100003AD4(&qword_10008DCE0, &unk_100077370);
  __chkstk_darwin(v11 - 8);
  v13 = v26 - v12;
  v26[1] = v26 - v12;
  v14 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v14 - 8);
  v16 = v26 - v15;
  v27 = v26 - v15;
  v17 = sub_1000651D0();
  v33 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v31 = sub_100003AD4(&qword_10008DCE8, &unk_100077380);
  sub_1000651B0();
  v32 = *(v18 + 56);
  v32(v16, 1, 1, v17);
  v19 = type metadata accessor for CallHangUpEntity(0);
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = sub_100064D30();
  v21 = *(*(v20 - 8) + 56);
  v21(v10, 1, 1, v20);
  v21(v8, 1, 1, v20);
  v30 = enum case for InputConnectionBehavior.default(_:);
  v22 = *(v2 + 104);
  v28 = v2 + 104;
  v29 = v22;
  v22(v4);
  sub_10002E478(&qword_10008DB90, &unk_100077020);
  v23 = v27;
  v31 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v32(v23, 1, 1, v33);
  v36 = 2;
  v24 = sub_1000653E0();
  (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
  v21(v10, 1, 1, v20);
  v29(v4, v30, v35);
  sub_100064DD0();
  return v31;
}

uint64_t sub_10002E478(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CallHangUpEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002E4BC(uint64_t a1)
{
  v2 = type metadata accessor for CallHangUpEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002E518@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for CallHangUpEntity(0) + 20));
}

uint64_t sub_10002E560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallHangUpEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002E5C4()
{
  result = qword_10008DD20;
  if (!qword_10008DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DD20);
  }

  return result;
}

unint64_t sub_10002E618()
{
  result = qword_10008DD28;
  if (!qword_10008DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DD28);
  }

  return result;
}

uint64_t sub_10002E6C8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100003AD4(&qword_10008D5B8, &unk_10007B4F0);
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = sub_100003AD4(&qword_10008D5C0, &unk_100074600);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100003AD4(&qword_10008D5C8, &unk_10007B560);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = sub_100003AD4(&qword_10008D5D0, &qword_100074610);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  v24 = &v23 - v14;
  swift_getKeyPath();
  sub_100003AD4(&qword_10008D5D8, &qword_100074640);
  sub_10002F29C(&qword_10008CBA8, type metadata accessor for AlwaysPrintSiriResponseEntity, &unk_100071960);
  sub_1000084D8(&qword_10008D5E8, &qword_10008D5D8, &qword_100074640, &protocol conformance descriptor for Label<A, B>);
  sub_100065340();
  sub_1000652D0();
  v15 = sub_1000084D8(&qword_10008D5F0, &qword_10008D5B8, &unk_10007B4F0, &protocol conformance descriptor for ControlToggle<A>);
  sub_100065300();

  (*(v25 + 8))(v3, v1);
  sub_1000652D0();
  v33 = v1;
  v34 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v26;
  sub_1000652E0();

  (*(v27 + 8))(v7, v17);
  v33 = v17;
  v34 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  v20 = v28;
  sub_100065310();
  (*(v29 + 8))(v11, v20);
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1000652F0();
  return (*(v31 + 8))(v19, v21);
}

uint64_t sub_10002EC3C()
{
  v0 = sub_1000652D0();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10002ECBC@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100003AD4(&qword_10008D5B8, &unk_10007B4F0);
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = sub_100003AD4(&qword_10008D5C0, &unk_100074600);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100003AD4(&qword_10008D5C8, &unk_10007B560);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = sub_100003AD4(&qword_10008D5D0, &qword_100074610);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  v24 = &v23 - v14;
  swift_getKeyPath();
  sub_100003AD4(&qword_10008D5D8, &qword_100074640);
  sub_10002F29C(&qword_10008D198, type metadata accessor for AlwaysShowSpeechEntity, &unk_100073560);
  sub_1000084D8(&qword_10008D5E8, &qword_10008D5D8, &qword_100074640, &protocol conformance descriptor for Label<A, B>);
  sub_100065340();
  sub_1000652D0();
  v15 = sub_1000084D8(&qword_10008D5F0, &qword_10008D5B8, &unk_10007B4F0, &protocol conformance descriptor for ControlToggle<A>);
  sub_100065300();

  (*(v25 + 8))(v3, v1);
  sub_1000652D0();
  v33 = v1;
  v34 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v26;
  sub_1000652E0();

  (*(v27 + 8))(v7, v17);
  v33 = v17;
  v34 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  v20 = v28;
  sub_100065310();
  (*(v29 + 8))(v11, v20);
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1000652F0();
  return (*(v31 + 8))(v19, v21);
}

uint64_t sub_10002F230()
{
  v0 = sub_1000652D0();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10002F29C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002F2E4()
{
  sub_100002BD0(&qword_10008D5D0, &qword_100074610);
  sub_100002BD0(&qword_10008D5C8, &unk_10007B560);
  sub_100002BD0(&qword_10008D5C0, &unk_100074600);
  sub_100002BD0(&qword_10008D5B8, &unk_10007B4F0);
  sub_1000084D8(&qword_10008D5F0, &qword_10008D5B8, &unk_10007B4F0, &protocol conformance descriptor for ControlToggle<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002F454(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100003AD4(&qword_10008E150, &qword_100077E98);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100003AD4(&qword_10008E158, &qword_100077EA0);
  __chkstk_darwin(v4);
  sub_10001B664();
  sub_100064EB0();
  v14._countAndFlagsBits = 0x206E65704FLL;
  v14._object = 0xE500000000000000;
  sub_100064EA0(v14);
  swift_getKeyPath();
  sub_10001CAF0();
  sub_100064DE0();

  sub_100064E90();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100064EA0(v15);
  sub_100064EC0();
  v12 = sub_100064E10();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_100064EB0();
  v16._countAndFlagsBits = 0x206E65704FLL;
  v16._object = 0xE500000000000000;
  sub_100064EA0(v16);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_100064EA0(v17);
  sub_100064EC0();
  v7 = sub_100064E10();
  v5(v3, v6);
  sub_100003AD4(&qword_10008E160, &qword_100077EA8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100077520;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_100064E00();

  return v9;
}

uint64_t sub_10002F7F0(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100003AD4(&qword_10008E138, &qword_100077E58);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100003AD4(&qword_10008E140, &qword_100077E60);
  __chkstk_darwin(v4);
  sub_100014404();
  sub_100064EB0();
  v14._countAndFlagsBits = 0x206E65704FLL;
  v14._object = 0xE500000000000000;
  sub_100064EA0(v14);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008D3F0, type metadata accessor for SpokenResponsesEntity, &unk_100073E58);
  sub_100064DE0();

  sub_100064E90();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100064EA0(v15);
  sub_100064EC0();
  v12 = sub_100064E10();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_100064EB0();
  v16._countAndFlagsBits = 0x206E65704FLL;
  v16._object = 0xE500000000000000;
  sub_100064EA0(v16);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_100064EA0(v17);
  sub_100064EC0();
  v7 = sub_100064E10();
  v5(v3, v6);
  sub_100003AD4(&qword_10008E148, &qword_100077E68);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100077520;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_100064E00();

  return v9;
}

uint64_t sub_10002FB54()
{
  v0 = sub_100064E70();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008D3F0, type metadata accessor for SpokenResponsesEntity, &unk_100073E58);
  sub_100064DE0();

  sub_100014404();
  sub_100064E60();
  v4 = sub_100064E50();
  (*(v1 + 8))(v3, v0);
  sub_100003AD4(&qword_10008DDD0, &qword_100077608);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100077530;
  *(v5 + 32) = v4;
  v6 = sub_100064E40();

  return v6;
}

uint64_t sub_10002FD18(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100003AD4(&qword_10008E120, &qword_100077E18);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100003AD4(&qword_10008E128, &qword_100077E20);
  __chkstk_darwin(v4);
  sub_10003EE20();
  sub_100064EB0();
  v14._countAndFlagsBits = 0x206E65704FLL;
  v14._object = 0xE500000000000000;
  sub_100064EA0(v14);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008E118, type metadata accessor for AnnounceCallsEntity, &unk_10007A2A0);
  sub_100064DE0();

  sub_100064E90();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100064EA0(v15);
  sub_100064EC0();
  v12 = sub_100064E10();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_100064EB0();
  v16._countAndFlagsBits = 0x206E65704FLL;
  v16._object = 0xE500000000000000;
  sub_100064EA0(v16);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_100064EA0(v17);
  sub_100064EC0();
  v7 = sub_100064E10();
  v5(v3, v6);
  sub_100003AD4(&qword_10008E130, &qword_100077E28);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100077520;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_100064E00();

  return v9;
}

uint64_t sub_10003007C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v8 = (a5)(0, a2, a3, a4);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v15 - v12;
  sub_10003FA0C(a1, &v15 - v12, a6);
  sub_10003FA0C(v13, v11, a6);
  sub_100064DA0();
  return sub_10003FA74(v13, a6);
}

uint64_t sub_100030158()
{
  v0 = sub_100064E70();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008E118, type metadata accessor for AnnounceCallsEntity, &unk_10007A2A0);
  sub_100064DE0();

  sub_10003EE20();
  sub_100064E60();
  v4 = sub_100064E50();
  (*(v1 + 8))(v3, v0);
  sub_100003AD4(&qword_10008DDD0, &qword_100077608);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100077530;
  *(v5 + 32) = v4;
  v6 = sub_100064E40();

  return v6;
}

uint64_t sub_1000302F8()
{
  v0 = sub_100064E30();
  v1 = sub_100064E30();
  sub_100003AD4(&qword_10008DDD8, &qword_100077610);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100077520;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_100064E20();

  return v3;
}

uint64_t sub_1000303AC(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100003AD4(&qword_10008E100, &qword_100077DD8);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100003AD4(&qword_10008E108, &qword_100077DE0);
  __chkstk_darwin(v4);
  sub_10003EE74();
  sub_100064EB0();
  v14._countAndFlagsBits = 0x206E65704FLL;
  v14._object = 0xE500000000000000;
  sub_100064EA0(v14);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008E0F8, type metadata accessor for AutoSendMessagesEntity, &unk_10007BE18);
  sub_100064DE0();

  sub_100064E90();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100064EA0(v15);
  sub_100064EC0();
  v12 = sub_100064E10();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_100064EB0();
  v16._countAndFlagsBits = 0x206E65704FLL;
  v16._object = 0xE500000000000000;
  sub_100064EA0(v16);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_100064EA0(v17);
  sub_100064EC0();
  v7 = sub_100064E10();
  v5(v3, v6);
  sub_100003AD4(&qword_10008E110, &qword_100077DE8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100077520;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_100064E00();

  return v9;
}

uint64_t sub_100030710()
{
  v0 = sub_100064E70();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008E0F8, type metadata accessor for AutoSendMessagesEntity, &unk_10007BE18);
  sub_100064DE0();

  sub_10003EE74();
  sub_100064E60();
  v4 = sub_100064E50();
  (*(v1 + 8))(v3, v0);
  sub_100003AD4(&qword_10008DDD0, &qword_100077608);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100077530;
  *(v5 + 32) = v4;
  v6 = sub_100064E40();

  return v6;
}

uint64_t sub_1000308B0()
{
  v0 = sub_100064E30();
  v1 = sub_100064E30();
  sub_100003AD4(&qword_10008DDD8, &qword_100077610);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100077520;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_100064E20();

  return v3;
}

uint64_t sub_100030960(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100003AD4(&qword_10008E0E0, &qword_100077D98);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100003AD4(&qword_10008E0E8, &qword_100077DA0);
  __chkstk_darwin(v4);
  sub_10001F830();
  sub_100064EB0();
  v14._countAndFlagsBits = 0x206E65704FLL;
  v14._object = 0xE500000000000000;
  sub_100064EA0(v14);
  swift_getKeyPath();
  sub_100026B94();
  sub_100064DE0();

  sub_100064E90();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100064EA0(v15);
  sub_100064EC0();
  v12 = sub_100064E10();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_100064EB0();
  v16._countAndFlagsBits = 0x206E65704FLL;
  v16._object = 0xE500000000000000;
  sub_100064EA0(v16);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_100064EA0(v17);
  sub_100064EC0();
  v7 = sub_100064E10();
  v5(v3, v6);
  sub_100003AD4(&qword_10008E0F0, &qword_100077DA8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100077520;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_100064E00();

  return v9;
}

uint64_t sub_100030C94(void *a1)
{

  return sub_100064DA0();
}

uint64_t sub_100030D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v7 = sub_100064E70();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_100064DE0();

  a4(v11);
  sub_100064E60();
  v12 = sub_100064E50();
  (*(v8 + 8))(v10, v7);
  sub_100003AD4(&qword_10008DDD0, &qword_100077608);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100077530;
  *(v13 + 32) = v12;
  v14 = sub_100064E40();

  return v14;
}

uint64_t sub_100030EE4()
{
  v0 = sub_100064E30();
  v1 = sub_100064E30();
  sub_100003AD4(&qword_10008DDD8, &qword_100077610);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100077520;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_100064E20();

  return v3;
}

uint64_t sub_100030F94(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100003AD4(&qword_10008E0C8, &qword_100077D58);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100003AD4(&qword_10008E0D0, &qword_100077D60);
  __chkstk_darwin(v4);
  sub_10002B09C();
  sub_100064EB0();
  v14._countAndFlagsBits = 0x206E65704FLL;
  v14._object = 0xE500000000000000;
  sub_100064EA0(v14);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008DBA0, type metadata accessor for CallHangUpEntity, &unk_1000771D0);
  sub_100064DE0();

  sub_100064E90();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100064EA0(v15);
  sub_100064EC0();
  v12 = sub_100064E10();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_100064EB0();
  v16._countAndFlagsBits = 0x206E65704FLL;
  v16._object = 0xE500000000000000;
  sub_100064EA0(v16);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_100064EA0(v17);
  sub_100064EC0();
  v7 = sub_100064E10();
  v5(v3, v6);
  sub_100003AD4(&qword_10008E0D8, &qword_100077D68);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100077520;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_100064E00();

  return v9;
}

uint64_t sub_1000312F8()
{
  v0 = sub_100064E70();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008DBA0, type metadata accessor for CallHangUpEntity, &unk_1000771D0);
  sub_100064DE0();

  sub_10002B09C();
  sub_100064E60();
  v4 = sub_100064E50();
  (*(v1 + 8))(v3, v0);
  sub_100003AD4(&qword_10008DDD0, &qword_100077608);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100077530;
  *(v5 + 32) = v4;
  v6 = sub_100064E40();

  return v6;
}

uint64_t sub_100031498()
{
  v0 = sub_100064E30();
  v1 = sub_100064E30();
  sub_100003AD4(&qword_10008DDD8, &qword_100077610);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100077520;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_100064E20();

  return v3;
}

uint64_t sub_100031548(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100003AD4(&qword_10008E0B0, &qword_100077D18);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100003AD4(&qword_10008E0B8, &qword_100077D20);
  __chkstk_darwin(v4);
  sub_100001A14();
  sub_100064EB0();
  v14._countAndFlagsBits = 0x206E65704FLL;
  v14._object = 0xE500000000000000;
  sub_100064EA0(v14);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008C7A8, type metadata accessor for AssistantLockScreenAccessEntity, &unk_100070A48);
  sub_100064DE0();

  sub_100064E90();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100064EA0(v15);
  sub_100064EC0();
  v12 = sub_100064E10();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_100064EB0();
  v16._countAndFlagsBits = 0x206E65704FLL;
  v16._object = 0xE500000000000000;
  sub_100064EA0(v16);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_100064EA0(v17);
  sub_100064EC0();
  v7 = sub_100064E10();
  v5(v3, v6);
  sub_100003AD4(&qword_10008E0C0, &qword_100077D28);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100077520;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_100064E00();

  return v9;
}

uint64_t sub_1000318AC()
{
  v0 = sub_100064E70();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008C7A8, type metadata accessor for AssistantLockScreenAccessEntity, &unk_100070A48);
  sub_100064DE0();

  sub_100001A14();
  sub_100064E60();
  v4 = sub_100064E50();
  (*(v1 + 8))(v3, v0);
  sub_100003AD4(&qword_10008DDD0, &qword_100077608);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100077530;
  *(v5 + 32) = v4;
  v6 = sub_100064E40();

  return v6;
}

uint64_t sub_100031A4C()
{
  v0 = sub_100064E30();
  sub_100003AD4(&qword_10008DDD8, &qword_100077610);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100077530;
  *(v1 + 32) = v0;
  v2 = sub_100064E20();

  return v2;
}

uint64_t sub_100031AD0(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100003AD4(&qword_10008E098, &qword_100077CD8);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100003AD4(&qword_10008E0A0, &qword_100077CE0);
  __chkstk_darwin(v4);
  sub_10003EEC8();
  sub_100064EB0();
  v14._countAndFlagsBits = 0x206E65704FLL;
  v14._object = 0xE500000000000000;
  sub_100064EA0(v14);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008E090, type metadata accessor for MyInformationEntity, &unk_10007AB38);
  sub_100064DE0();

  sub_100064E90();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100064EA0(v15);
  sub_100064EC0();
  v12 = sub_100064E10();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_100064EB0();
  v16._countAndFlagsBits = 0x206E65704FLL;
  v16._object = 0xE500000000000000;
  sub_100064EA0(v16);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_100064EA0(v17);
  sub_100064EC0();
  v7 = sub_100064E10();
  v5(v3, v6);
  sub_100003AD4(&qword_10008E0A8, &qword_100077CE8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100077520;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_100064E00();

  return v9;
}

uint64_t sub_100031E34()
{
  v0 = sub_100064E70();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008E090, type metadata accessor for MyInformationEntity, &unk_10007AB38);
  sub_100064DE0();

  sub_10003EEC8();
  sub_100064E60();
  v4 = sub_100064E50();
  (*(v1 + 8))(v3, v0);
  sub_100003AD4(&qword_10008DDD0, &qword_100077608);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100077530;
  *(v5 + 32) = v4;
  v6 = sub_100064E40();

  return v6;
}

uint64_t sub_100031FF8(uint64_t a1)
{
  v47 = sub_100003AD4(&qword_10008E078, &qword_100077C98);
  v49 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v32 - v2;
  v3 = sub_100064DF0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003AD4(&qword_10008E080, &qword_100077CA0);
  __chkstk_darwin(v7);
  v8 = sub_10003EF1C();
  sub_100064EB0();
  v50._countAndFlagsBits = 0x206E65704FLL;
  v50._object = 0xE500000000000000;
  sub_100064EA0(v50);
  swift_getKeyPath();
  v48 = sub_10003F9C4(&qword_10008E070, type metadata accessor for AnnounceNotificationForAppEntity, &unk_10007C7D0);
  v45 = a1;
  sub_100064DE0();

  sub_100064E90();

  v51._countAndFlagsBits = 0x20726F4620;
  v51._object = 0xE500000000000000;
  sub_100064EA0(v51);
  v42 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v9 = *(v4 + 104);
  v43 = v4 + 104;
  v44 = v9;
  v10 = v6;
  v11 = v6;
  v12 = v3;
  (v9)(v11);
  sub_100064E80();
  v40 = *(v4 + 8);
  v41 = v4 + 8;
  v13 = v10;
  v40(v10, v12);
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  sub_100064EA0(v52);
  v14 = v46;
  sub_100064EC0();
  v37 = v8;
  v36 = sub_100064E10();
  v39 = *(v49 + 8);
  v49 += 8;
  v39(v14, v47);
  sub_100064EB0();
  v53._countAndFlagsBits = 0x206E65704FLL;
  v53._object = 0xE500000000000000;
  sub_100064EA0(v53);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v54._countAndFlagsBits = 0x20726F4620;
  v54._object = 0xE500000000000000;
  sub_100064EA0(v54);
  v15 = v42;
  v38 = v12;
  v16 = v44;
  v44(v13, v42, v12);
  v33 = v13;
  sub_100064E80();
  v17 = v12;
  v18 = v40;
  v40(v13, v17);
  v55._countAndFlagsBits = 0x676E697474655320;
  v55._object = 0xE900000000000073;
  sub_100064EA0(v55);
  v19 = v46;
  sub_100064EC0();
  v35 = sub_100064E10();
  v39(v19, v47);
  sub_100064EB0();
  v56._countAndFlagsBits = 0x206E65704FLL;
  v56._object = 0xE500000000000000;
  sub_100064EA0(v56);
  v20 = v33;
  v21 = v15;
  v22 = v38;
  v16(v33, v21, v38);
  sub_100064E80();
  v18(v20, v22);
  v57._countAndFlagsBits = 32;
  v57._object = 0xE100000000000000;
  sub_100064EA0(v57);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  sub_100064EA0(v58);
  v23 = v46;
  sub_100064EC0();
  v34 = sub_100064E10();
  v24 = v47;
  v25 = v39;
  v39(v23, v47);
  sub_100064EB0();
  v59._countAndFlagsBits = 0x206E65704FLL;
  v59._object = 0xE500000000000000;
  sub_100064EA0(v59);
  v26 = v38;
  v44(v20, v42, v38);
  sub_100064E80();
  v40(v20, v26);
  v60._countAndFlagsBits = 32;
  v60._object = 0xE100000000000000;
  sub_100064EA0(v60);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v61._countAndFlagsBits = 0x676E697474655320;
  v61._object = 0xE900000000000073;
  sub_100064EA0(v61);
  sub_100064EC0();
  v27 = sub_100064E10();
  v25(v23, v24);
  sub_100003AD4(&qword_10008E088, &qword_100077CA8);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100077540;
  v29 = v35;
  *(v28 + 32) = v36;
  *(v28 + 40) = v29;
  *(v28 + 48) = v34;
  *(v28 + 56) = v27;
  v30 = sub_100064E00();

  return v30;
}

uint64_t sub_100032738()
{
  v0 = sub_100064E70();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008E070, type metadata accessor for AnnounceNotificationForAppEntity, &unk_10007C7D0);
  sub_100064DE0();

  sub_10003EF1C();
  sub_100064E60();
  v4 = sub_100064E50();
  (*(v1 + 8))(v3, v0);
  sub_100003AD4(&qword_10008DDD0, &qword_100077608);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100077530;
  *(v5 + 32) = v4;
  v6 = sub_100064E40();

  return v6;
}

uint64_t sub_1000328D8()
{
  v0 = sub_100064E30();
  v1 = sub_100064E30();
  sub_100003AD4(&qword_10008DDD8, &qword_100077610);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100077520;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_100064E20();

  return v3;
}

uint64_t sub_100032988(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100003AD4(&qword_10008E058, &qword_100077C58);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100003AD4(&qword_10008E060, &qword_100077C60);
  __chkstk_darwin(v4);
  sub_10000B974();
  sub_100064EB0();
  v14._countAndFlagsBits = 0x206E65704FLL;
  v14._object = 0xE500000000000000;
  sub_100064EA0(v14);
  swift_getKeyPath();
  sub_10000C438();
  sub_100064DE0();

  sub_100064E90();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100064EA0(v15);
  sub_100064EC0();
  v12 = sub_100064E10();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_100064EB0();
  v16._countAndFlagsBits = 0x206E65704FLL;
  v16._object = 0xE500000000000000;
  sub_100064EA0(v16);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_100064EA0(v17);
  sub_100064EC0();
  v7 = sub_100064E10();
  v5(v3, v6);
  sub_100003AD4(&qword_10008E068, &qword_100077C68);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100077520;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_100064E00();

  return v9;
}

uint64_t sub_100032D08(uint64_t a1)
{
  v20 = a1;
  v22 = sub_100003AD4(&qword_10008E040, &qword_100077C18);
  v24 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = v16 - v1;
  v23 = sub_100064DF0();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003AD4(&qword_10008E048, &qword_100077C20);
  __chkstk_darwin(v6);
  sub_10003EF70();
  sub_100064EB0();
  v25._countAndFlagsBits = 0x206E65704FLL;
  v25._object = 0xE500000000000000;
  sub_100064EA0(v25);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008E038, type metadata accessor for SiriAppAccessForAppEntity, &unk_1000796C0);
  sub_100064DE0();

  sub_100064E90();

  v26._countAndFlagsBits = 0x20726F6620;
  v26._object = 0xE500000000000000;
  sub_100064EA0(v26);
  v19 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v18 = *(v3 + 104);
  v7 = v23;
  v18(v5);
  sub_100064E80();
  v8 = *(v3 + 8);
  v16[1] = v3 + 8;
  v17 = v8;
  v8(v5, v7);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_100064EA0(v27);
  sub_100064EC0();
  v21 = sub_100064E10();
  v9 = *(v24 + 8);
  v24 += 8;
  v16[0] = v9;
  v10 = v22;
  v9(v2, v22);
  sub_100064EB0();
  v28._countAndFlagsBits = 0x206E65704FLL;
  v28._object = 0xE500000000000000;
  sub_100064EA0(v28);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v29._countAndFlagsBits = 0x20726F6620;
  v29._object = 0xE500000000000000;
  sub_100064EA0(v29);
  v11 = v23;
  (v18)(v5, v19, v23);
  sub_100064E80();
  v17(v5, v11);
  v30._countAndFlagsBits = 0x676E697474655320;
  v30._object = 0xE900000000000073;
  sub_100064EA0(v30);
  sub_100064EC0();
  v12 = sub_100064E10();
  (v16[0])(v2, v10);
  sub_100003AD4(&qword_10008E050, &qword_100077C28);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100077520;
  *(v13 + 32) = v21;
  *(v13 + 40) = v12;
  v14 = sub_100064E00();

  return v14;
}

uint64_t sub_1000331CC()
{
  v0 = sub_100064E70();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008E038, type metadata accessor for SiriAppAccessForAppEntity, &unk_1000796C0);
  sub_100064DE0();

  sub_10003EF70();
  sub_100064E60();
  v4 = sub_100064E50();
  (*(v1 + 8))(v3, v0);
  sub_100003AD4(&qword_10008DDD0, &qword_100077608);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100077530;
  *(v5 + 32) = v4;
  v6 = sub_100064E40();

  return v6;
}

uint64_t sub_10003336C()
{
  v0 = sub_100064E30();
  v1 = sub_100064E30();
  v2 = sub_100064E30();
  sub_100003AD4(&qword_10008DDD8, &qword_100077610);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000738E0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_100064E20();

  return v4;
}

uint64_t sub_10003344C(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100003AD4(&qword_10008E020, &qword_100077BD8);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100003AD4(&qword_10008E028, &qword_100077BE0);
  __chkstk_darwin(v4);
  sub_10003EFC4();
  sub_100064EB0();
  v14._countAndFlagsBits = 0x206E65704FLL;
  v14._object = 0xE500000000000000;
  sub_100064EA0(v14);
  swift_getKeyPath();
  sub_10003F6BC();
  sub_100064DE0();

  sub_100064E90();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100064EA0(v15);
  sub_100064EC0();
  v12 = sub_100064E10();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_100064EB0();
  v16._countAndFlagsBits = 0x206E65704FLL;
  v16._object = 0xE500000000000000;
  sub_100064EA0(v16);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_100064EA0(v17);
  sub_100064EC0();
  v7 = sub_100064E10();
  v5(v3, v6);
  sub_100003AD4(&qword_10008E030, &qword_100077BE8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100077520;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_100064E00();

  return v9;
}

uint64_t sub_100033780(void *a1)
{

  return sub_100064DA0();
}

uint64_t sub_100033828()
{
  v0 = sub_100064E30();
  v1 = sub_100064E30();
  sub_100003AD4(&qword_10008DDD8, &qword_100077610);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100077520;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_100064E20();

  return v3;
}

uint64_t sub_1000338DC(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100003AD4(&qword_10008E000, &qword_100077B98);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100003AD4(&qword_10008E008, &qword_100077BA0);
  __chkstk_darwin(v4);
  sub_1000088BC();
  sub_100064EB0();
  v14._countAndFlagsBits = 0x206E65704FLL;
  v14._object = 0xE500000000000000;
  sub_100064EA0(v14);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008CBF8, type metadata accessor for AlwaysPrintSiriResponseEntity, &unk_100071AB8);
  sub_100064DE0();

  sub_100064E90();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100064EA0(v15);
  sub_100064EC0();
  v12 = sub_100064E10();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_100064EB0();
  v16._countAndFlagsBits = 0x206E65704FLL;
  v16._object = 0xE500000000000000;
  sub_100064EA0(v16);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_100064EA0(v17);
  sub_100064EC0();
  v7 = sub_100064E10();
  v5(v3, v6);
  sub_100003AD4(&qword_10008E010, &qword_100077BA8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100077520;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_100064E00();

  return v9;
}

uint64_t sub_100033C40()
{
  v0 = sub_100064E70();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008CBF8, type metadata accessor for AlwaysPrintSiriResponseEntity, &unk_100071AB8);
  sub_100064DE0();

  sub_1000088BC();
  sub_100064E60();
  v4 = sub_100064E50();
  (*(v1 + 8))(v3, v0);
  sub_100003AD4(&qword_10008DDD0, &qword_100077608);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100077530;
  *(v5 + 32) = v4;
  v6 = sub_100064E40();

  return v6;
}

uint64_t sub_100033DE0()
{
  v0 = sub_100064E30();
  v1 = sub_100064E30();
  sub_100003AD4(&qword_10008DDD8, &qword_100077610);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100077520;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_100064E20();

  return v3;
}

uint64_t sub_100033E90(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100003AD4(&qword_10008DFE8, &qword_100077B58);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100003AD4(&qword_10008DFF0, &qword_100077B60);
  __chkstk_darwin(v4);
  sub_10003F018();
  sub_100064EB0();
  v14._countAndFlagsBits = 0x206E65704FLL;
  v14._object = 0xE500000000000000;
  sub_100064EA0(v14);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008DFE0, type metadata accessor for SiriVoiceEntity, &unk_10007B218);
  sub_100064DE0();

  sub_100064E90();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100064EA0(v15);
  sub_100064EC0();
  v12 = sub_100064E10();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_100064EB0();
  v16._countAndFlagsBits = 0x206E65704FLL;
  v16._object = 0xE500000000000000;
  sub_100064EA0(v16);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_100064EA0(v17);
  sub_100064EC0();
  v7 = sub_100064E10();
  v5(v3, v6);
  sub_100003AD4(&qword_10008DFF8, &qword_100077B68);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100077520;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_100064E00();

  return v9;
}

uint64_t sub_1000341F4()
{
  v0 = sub_100064E70();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008DFE0, type metadata accessor for SiriVoiceEntity, &unk_10007B218);
  sub_100064DE0();

  sub_10003F018();
  sub_100064E60();
  v4 = sub_100064E50();
  (*(v1 + 8))(v3, v0);
  sub_100003AD4(&qword_10008DDD0, &qword_100077608);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100077530;
  *(v5 + 32) = v4;
  v6 = sub_100064E40();

  return v6;
}

uint64_t sub_1000343B0(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100003AD4(&qword_10008DFC8, &qword_100077B18);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100003AD4(&qword_10008DFD0, &qword_100077B20);
  __chkstk_darwin(v4);
  sub_10000D304();
  sub_100064EB0();
  v14._countAndFlagsBits = 0x206E65704FLL;
  v14._object = 0xE500000000000000;
  sub_100064EA0(v14);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008CE88, type metadata accessor for SiriLanguageEntity, &unk_1000728B8);
  sub_100064DE0();

  sub_100064E90();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100064EA0(v15);
  sub_100064EC0();
  v12 = sub_100064E10();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_100064EB0();
  v16._countAndFlagsBits = 0x206E65704FLL;
  v16._object = 0xE500000000000000;
  sub_100064EA0(v16);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_100064EA0(v17);
  sub_100064EC0();
  v7 = sub_100064E10();
  v5(v3, v6);
  sub_100003AD4(&qword_10008DFD8, &qword_100077B28);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100077520;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_100064E00();

  return v9;
}

uint64_t sub_100034714()
{
  v0 = sub_100064E70();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008CE88, type metadata accessor for SiriLanguageEntity, &unk_1000728B8);
  sub_100064DE0();

  sub_10000D304();
  sub_100064E60();
  v4 = sub_100064E50();
  (*(v1 + 8))(v3, v0);
  sub_100003AD4(&qword_10008DDD0, &qword_100077608);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100077530;
  *(v5 + 32) = v4;
  v6 = sub_100064E40();

  return v6;
}

uint64_t sub_1000348D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_100064E30();
  sub_100003AD4(&qword_10008DDD8, &qword_100077610);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100077530;
  *(v3 + 32) = v2;
  v4 = sub_100064E20();

  return v4;
}

uint64_t sub_100034944(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100003AD4(&qword_10008DFB0, &qword_100077AD8);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100003AD4(&qword_10008DFB8, &qword_100077AE0);
  __chkstk_darwin(v4);
  sub_10000EED8();
  sub_100064EB0();
  v14._countAndFlagsBits = 0x206E65704FLL;
  v14._object = 0xE500000000000000;
  sub_100064EA0(v14);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008D018, type metadata accessor for SiriAndDictationHistoryEntity, &unk_100072FA8);
  sub_100064DE0();

  sub_100064E90();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100064EA0(v15);
  sub_100064EC0();
  v12 = sub_100064E10();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_100064EB0();
  v16._countAndFlagsBits = 0x206E65704FLL;
  v16._object = 0xE500000000000000;
  sub_100064EA0(v16);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_100064EA0(v17);
  sub_100064EC0();
  v7 = sub_100064E10();
  v5(v3, v6);
  sub_100003AD4(&qword_10008DFC0, &qword_100077AE8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100077520;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_100064E00();

  return v9;
}

uint64_t sub_100034CA8()
{
  v0 = sub_100064E70();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008D018, type metadata accessor for SiriAndDictationHistoryEntity, &unk_100072FA8);
  sub_100064DE0();

  sub_10000EED8();
  sub_100064E60();
  v4 = sub_100064E50();
  (*(v1 + 8))(v3, v0);
  sub_100003AD4(&qword_10008DDD0, &qword_100077608);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100077530;
  *(v5 + 32) = v4;
  v6 = sub_100064E40();

  return v6;
}

uint64_t sub_100034E48()
{
  v0 = sub_100064E30();
  sub_100003AD4(&qword_10008DDD8, &qword_100077610);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100077530;
  *(v1 + 32) = v0;
  v2 = sub_100064E20();

  return v2;
}

uint64_t sub_100034ECC(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100003AD4(&qword_10008DF98, &qword_100077A98);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100003AD4(&qword_10008DFA0, &qword_100077AA0);
  __chkstk_darwin(v4);
  sub_100010AB4();
  sub_100064EB0();
  v14._countAndFlagsBits = 0x206E65704FLL;
  v14._object = 0xE500000000000000;
  sub_100064EA0(v14);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008D1E8, type metadata accessor for AlwaysShowSpeechEntity, &unk_1000736B8);
  sub_100064DE0();

  sub_100064E90();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100064EA0(v15);
  sub_100064EC0();
  v12 = sub_100064E10();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_100064EB0();
  v16._countAndFlagsBits = 0x206E65704FLL;
  v16._object = 0xE500000000000000;
  sub_100064EA0(v16);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_100064EA0(v17);
  sub_100064EC0();
  v7 = sub_100064E10();
  v5(v3, v6);
  sub_100003AD4(&qword_10008DFA8, &qword_100077AA8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100077520;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_100064E00();

  return v9;
}

uint64_t sub_100035230()
{
  v0 = sub_100064E70();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10003F9C4(&qword_10008D1E8, type metadata accessor for AlwaysShowSpeechEntity, &unk_1000736B8);
  sub_100064DE0();

  sub_100010AB4();
  sub_100064E60();
  v4 = sub_100064E50();
  (*(v1 + 8))(v3, v0);
  sub_100003AD4(&qword_10008DDD0, &qword_100077608);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100077530;
  *(v5 + 32) = v4;
  v6 = sub_100064E40();

  return v6;
}

uint64_t sub_1000353D0()
{
  v0 = sub_100064E30();
  sub_100003AD4(&qword_10008DDD8, &qword_100077610);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100077530;
  *(v1 + 32) = v0;
  v2 = sub_100064E20();

  return v2;
}

uint64_t sub_100035454(uint64_t a1)
{
  v2 = sub_100003AD4(&qword_10008DF80, &qword_100077A58);
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  __chkstk_darwin(v2);
  v5 = v19 - v4;
  v6 = sub_100003AD4(&qword_10008DF88, &qword_100077A60);
  __chkstk_darwin(v6);
  v7 = sub_10003F06C();
  sub_100064EB0();
  v29._countAndFlagsBits = 0xD00000000000001BLL;
  v29._object = 0x8000000100068B00;
  sub_100064EA0(v29);
  swift_getKeyPath();
  v8 = sub_10003F4E0();
  v25 = a1;
  sub_100064DE0();

  sub_100064E90();

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100064EA0(v30);
  sub_100064EC0();
  v24 = sub_100064E10();
  v9 = v27;
  v10 = *(v28 + 8);
  v28 += 8;
  v26 = v10;
  v10(v5, v27);
  sub_100064EB0();
  v31._countAndFlagsBits = 0xD00000000000001ELL;
  v31._object = 0x8000000100068B20;
  sub_100064EA0(v31);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_100064EA0(v32);
  sub_100064EC0();
  v23 = sub_100064E10();
  v26(v5, v9);
  sub_100064EB0();
  v33._countAndFlagsBits = 0x206E727554;
  v33._object = 0xE500000000000000;
  sub_100064EA0(v33);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v34._object = 0x8000000100068B40;
  v34._countAndFlagsBits = 0xD000000000000014;
  sub_100064EA0(v34);
  sub_100064EC0();
  v22 = sub_100064E10();
  v26(v5, v27);
  sub_100064EB0();
  v35._countAndFlagsBits = 0xD000000000000016;
  v35._object = 0x8000000100068B60;
  sub_100064EA0(v35);
  swift_getKeyPath();
  v19[2] = v8;
  sub_100064DE0();

  sub_100064E90();

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_100064EA0(v36);
  sub_100064EC0();
  v19[1] = v7;
  v21 = sub_100064E10();
  v12 = v26;
  v11 = v27;
  v26(v5, v27);
  sub_100064EB0();
  v37._countAndFlagsBits = 0xD000000000000019;
  v37._object = 0x8000000100068B80;
  sub_100064EA0(v37);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_100064EA0(v38);
  sub_100064EC0();
  v20 = sub_100064E10();
  v12(v5, v11);
  sub_100064EB0();
  v39._countAndFlagsBits = 0x206E727554;
  v39._object = 0xE500000000000000;
  sub_100064EA0(v39);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v40._countAndFlagsBits = 0x636E756F6E6E4120;
  v40._object = 0xEF736C6C61432065;
  sub_100064EA0(v40);
  sub_100064EC0();
  v13 = sub_100064E10();
  v12(v5, v27);
  sub_100003AD4(&qword_10008DF90, &qword_100077A68);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100077550;
  v15 = v23;
  *(v14 + 32) = v24;
  *(v14 + 40) = v15;
  v16 = v21;
  *(v14 + 48) = v22;
  *(v14 + 56) = v16;
  *(v14 + 64) = v20;
  *(v14 + 72) = v13;
  v17 = sub_100064E00();

  return v17;
}

uint64_t sub_100035B7C()
{
  v0 = sub_100064E30();
  v1 = sub_100064E30();
  v2 = sub_100064E30();
  v3 = sub_100064E30();
  sub_100003AD4(&qword_10008DDD8, &qword_100077610);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100077540;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_100064E20();

  return v5;
}

uint64_t sub_100035C6C(uint64_t a1)
{
  v24 = sub_100003AD4(&qword_10008DF60, &qword_100077A18);
  v26 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = &v17 - v2;
  v4 = sub_100003AD4(&qword_10008DF68, &qword_100077A20);
  __chkstk_darwin(v4);
  sub_10001FB24();
  sub_100064EB0();
  v27._countAndFlagsBits = 0xD00000000000001DLL;
  v27._object = 0x8000000100068A10;
  sub_100064EA0(v27);
  swift_getKeyPath();
  v5 = sub_10003F410();
  v23 = a1;
  sub_100064DE0();

  sub_100064E90();

  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_100064EA0(v28);
  sub_100064EC0();
  v6 = sub_100064E10();
  v7 = *(v26 + 8);
  v26 += 8;
  v21 = v6;
  v22 = v7;
  v8 = v24;
  v7(v3, v24);
  sub_100064EB0();
  v29._countAndFlagsBits = 0xD000000000000020;
  v29._object = 0x8000000100068A30;
  sub_100064EA0(v29);
  swift_getKeyPath();
  v25 = v5;
  sub_100064DE0();

  sub_100064E90();

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100064EA0(v30);
  sub_100064EC0();
  v20 = sub_100064E10();
  v22(v3, v8);
  sub_100064EB0();
  v31._countAndFlagsBits = 0x206E727554;
  v31._object = 0xE500000000000000;
  sub_100064EA0(v31);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v32._object = 0x8000000100068A60;
  v32._countAndFlagsBits = 0xD000000000000016;
  sub_100064EA0(v32);
  sub_100064EC0();
  v19 = sub_100064E10();
  v9 = v22;
  v22(v3, v24);
  sub_100064EB0();
  v33._countAndFlagsBits = 0xD000000000000022;
  v33._object = 0x8000000100068A80;
  sub_100064EA0(v33);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_100064EA0(v34);
  sub_100064EC0();
  v18 = sub_100064E10();
  v10 = v24;
  v9(v3, v24);
  sub_100064EB0();
  v35._countAndFlagsBits = 0xD000000000000025;
  v35._object = 0x8000000100068AB0;
  sub_100064EA0(v35);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_100064EA0(v36);
  sub_100064EC0();
  v17 = sub_100064E10();
  v9(v3, v10);
  sub_100064EB0();
  v37._countAndFlagsBits = 0x206E727554;
  v37._object = 0xE500000000000000;
  sub_100064EA0(v37);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v38._countAndFlagsBits = 0xD00000000000001BLL;
  v38._object = 0x8000000100068AE0;
  sub_100064EA0(v38);
  sub_100064EC0();
  v11 = sub_100064E10();
  v9(v3, v10);
  sub_100003AD4(&qword_10008DF70, &qword_100077A28);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100077550;
  v13 = v20;
  *(v12 + 32) = v21;
  *(v12 + 40) = v13;
  v14 = v18;
  *(v12 + 48) = v19;
  *(v12 + 56) = v14;
  *(v12 + 64) = v17;
  *(v12 + 72) = v11;
  v15 = sub_100064E00();

  return v15;
}

uint64_t sub_10003637C(uint64_t a1)
{
  v49 = sub_100003AD4(&qword_10008DF48, &qword_1000779D8);
  v55 = *(v49 - 8);
  __chkstk_darwin(v49);
  v3 = &v37 - v2;
  v4 = sub_100064DF0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003AD4(&qword_10008DF50, &qword_1000779E0);
  __chkstk_darwin(v8);
  v9 = sub_10003F0C0();
  sub_100064EB0();
  v56._countAndFlagsBits = 0xD00000000000001ELL;
  v56._object = 0x8000000100068930;
  sub_100064EA0(v56);
  v47 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v10 = *(v5 + 104);
  v51 = v5 + 104;
  v52 = v10;
  v54 = v4;
  (v10)(v7);
  sub_100064E80();
  v11 = *(v5 + 8);
  v50 = v5 + 8;
  v11(v7, v4);
  v46 = v11;
  v57._countAndFlagsBits = 544175136;
  v57._object = 0xE400000000000000;
  sub_100064EA0(v57);
  swift_getKeyPath();
  v53 = sub_10003F410();
  sub_100064DE0();

  sub_100064E90();

  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  sub_100064EA0(v58);
  v45 = v3;
  sub_100064EC0();
  v41 = sub_100064E10();
  v12 = *(v55 + 8);
  v55 += 8;
  v48 = v12;
  v13 = v3;
  v14 = v49;
  v12(v13, v49);
  sub_100064EB0();
  v59._countAndFlagsBits = 0xD000000000000021;
  v59._object = 0x8000000100068950;
  sub_100064EA0(v59);
  v15 = v54;
  v52(v7, v47, v54);
  sub_100064E80();
  v11(v7, v15);
  v60._countAndFlagsBits = 544175136;
  v60._object = 0xE400000000000000;
  sub_100064EA0(v60);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  sub_100064EA0(v61);
  v16 = v45;
  sub_100064EC0();
  v44 = v9;
  v40 = sub_100064E10();
  v48(v16, v14);
  sub_100064EB0();
  v62._countAndFlagsBits = 0x206E727554;
  v62._object = 0xE500000000000000;
  sub_100064EA0(v62);
  swift_getKeyPath();
  v43 = a1;
  sub_100064DE0();

  sub_100064E90();

  v63._object = 0x8000000100068980;
  v63._countAndFlagsBits = 0xD00000000000001BLL;
  sub_100064EA0(v63);
  v42 = v7;
  v17 = v47;
  v18 = v54;
  v19 = v52;
  v52(v7, v47, v54);
  sub_100064E80();
  v20 = v18;
  v21 = v46;
  v46(v7, v20);
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_100064EA0(v64);
  v22 = v45;
  sub_100064EC0();
  v39 = sub_100064E10();
  v48(v22, v49);
  sub_100064EB0();
  v65._countAndFlagsBits = 0xD00000000000001FLL;
  v65._object = 0x80000001000689A0;
  sub_100064EA0(v65);
  v23 = v42;
  v24 = v54;
  v19(v42, v17, v54);
  sub_100064E80();
  v21(v23, v24);
  v66._countAndFlagsBits = 544175136;
  v66._object = 0xE400000000000000;
  sub_100064EA0(v66);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  sub_100064EA0(v67);
  v25 = v45;
  sub_100064EC0();
  v38 = sub_100064E10();
  v27 = v48;
  v26 = v49;
  v48(v25, v49);
  sub_100064EB0();
  v68._countAndFlagsBits = 0xD000000000000022;
  v68._object = 0x80000001000689C0;
  sub_100064EA0(v68);
  v28 = v54;
  v52(v23, v17, v54);
  sub_100064E80();
  v46(v23, v28);
  v69._countAndFlagsBits = 544175136;
  v69._object = 0xE400000000000000;
  sub_100064EA0(v69);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  sub_100064EA0(v70);
  sub_100064EC0();
  v37 = sub_100064E10();
  v27(v25, v26);
  sub_100064EB0();
  v71._countAndFlagsBits = 0x206E727554;
  v71._object = 0xE500000000000000;
  sub_100064EA0(v71);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v72._countAndFlagsBits = 0xD00000000000001CLL;
  v72._object = 0x80000001000689F0;
  sub_100064EA0(v72);
  v29 = v42;
  v30 = v54;
  v52(v42, v47, v54);
  sub_100064E80();
  v46(v29, v30);
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  sub_100064EA0(v73);
  sub_100064EC0();
  v31 = sub_100064E10();
  v27(v25, v49);
  sub_100003AD4(&qword_10008DF58, &qword_1000779E8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100077550;
  v33 = v40;
  *(v32 + 32) = v41;
  *(v32 + 40) = v33;
  v34 = v38;
  *(v32 + 48) = v39;
  *(v32 + 56) = v34;
  *(v32 + 64) = v37;
  *(v32 + 72) = v31;
  v35 = sub_100064E00();

  return v35;
}

uint64_t sub_100036D64(uint64_t a1)
{
  v24 = sub_100003AD4(&qword_10008DF30, &qword_100077998);
  v26 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = &v17 - v2;
  v4 = sub_100003AD4(&qword_10008DF38, &qword_1000779A0);
  __chkstk_darwin(v4);
  sub_10003F114();
  sub_100064EB0();
  v27._countAndFlagsBits = 0xD000000000000023;
  v27._object = 0x8000000100068820;
  sub_100064EA0(v27);
  swift_getKeyPath();
  v5 = sub_10003F410();
  v23 = a1;
  sub_100064DE0();

  sub_100064E90();

  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_100064EA0(v28);
  sub_100064EC0();
  v6 = sub_100064E10();
  v7 = *(v26 + 8);
  v26 += 8;
  v21 = v6;
  v22 = v7;
  v8 = v24;
  v7(v3, v24);
  sub_100064EB0();
  v29._countAndFlagsBits = 0xD000000000000026;
  v29._object = 0x8000000100068850;
  sub_100064EA0(v29);
  swift_getKeyPath();
  v25 = v5;
  sub_100064DE0();

  sub_100064E90();

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100064EA0(v30);
  sub_100064EC0();
  v20 = sub_100064E10();
  v22(v3, v8);
  sub_100064EB0();
  v31._countAndFlagsBits = 0x206E727554;
  v31._object = 0xE500000000000000;
  sub_100064EA0(v31);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v32._object = 0x8000000100068880;
  v32._countAndFlagsBits = 0xD00000000000001CLL;
  sub_100064EA0(v32);
  sub_100064EC0();
  v19 = sub_100064E10();
  v9 = v22;
  v22(v3, v24);
  sub_100064EB0();
  v33._countAndFlagsBits = 0xD000000000000028;
  v33._object = 0x80000001000688A0;
  sub_100064EA0(v33);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_100064EA0(v34);
  sub_100064EC0();
  v18 = sub_100064E10();
  v10 = v24;
  v9(v3, v24);
  sub_100064EB0();
  v35._countAndFlagsBits = 0xD00000000000002BLL;
  v35._object = 0x80000001000688D0;
  sub_100064EA0(v35);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_100064EA0(v36);
  sub_100064EC0();
  v17 = sub_100064E10();
  v9(v3, v10);
  sub_100064EB0();
  v37._countAndFlagsBits = 0x206E727554;
  v37._object = 0xE500000000000000;
  sub_100064EA0(v37);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v38._countAndFlagsBits = 0xD000000000000021;
  v38._object = 0x8000000100068900;
  sub_100064EA0(v38);
  sub_100064EC0();
  v11 = sub_100064E10();
  v9(v3, v10);
  sub_100003AD4(&qword_10008DF40, &qword_1000779A8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100077550;
  v13 = v20;
  *(v12 + 32) = v21;
  *(v12 + 40) = v13;
  v14 = v18;
  *(v12 + 48) = v19;
  *(v12 + 56) = v14;
  *(v12 + 64) = v17;
  *(v12 + 72) = v11;
  v15 = sub_100064E00();

  return v15;
}

uint64_t sub_100037474(uint64_t a1)
{
  v24 = a1;
  v22 = sub_100003AD4(&qword_10008DF18, &qword_100077958);
  v1 = *(v22 - 8);
  __chkstk_darwin(v22);
  v3 = &v16 - v2;
  v4 = sub_100003AD4(&qword_10008DF20, &qword_100077960);
  __chkstk_darwin(v4);
  sub_10003F168();
  sub_100064EB0();
  v26._countAndFlagsBits = 0xD00000000000002FLL;
  v26._object = 0x80000001000686D0;
  sub_100064EA0(v26);
  swift_getKeyPath();
  v25 = sub_10003F410();
  sub_100064DE0();

  sub_100064E90();

  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_100064EA0(v27);
  sub_100064EC0();
  v20 = sub_100064E10();
  v5 = v1 + 8;
  v6 = *(v1 + 8);
  v7 = v22;
  v6(v3, v22);
  v21 = v6;
  v23 = v5;
  sub_100064EB0();
  v28._countAndFlagsBits = 0xD000000000000032;
  v28._object = 0x8000000100068700;
  sub_100064EA0(v28);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100064EA0(v29);
  sub_100064EC0();
  v19 = sub_100064E10();
  v6(v3, v7);
  sub_100064EB0();
  v30._countAndFlagsBits = 0x206E727554;
  v30._object = 0xE500000000000000;
  sub_100064EA0(v30);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v31._object = 0x8000000100068740;
  v31._countAndFlagsBits = 0xD000000000000028;
  sub_100064EA0(v31);
  sub_100064EC0();
  v18 = sub_100064E10();
  v21(v3, v22);
  sub_100064EB0();
  v32._countAndFlagsBits = 0xD000000000000034;
  v32._object = 0x8000000100068770;
  sub_100064EA0(v32);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_100064EA0(v33);
  sub_100064EC0();
  v17 = sub_100064E10();
  v9 = v21;
  v8 = v22;
  v21(v3, v22);
  sub_100064EB0();
  v34._countAndFlagsBits = 0xD000000000000037;
  v34._object = 0x80000001000687B0;
  sub_100064EA0(v34);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_100064EA0(v35);
  sub_100064EC0();
  v16 = sub_100064E10();
  v9(v3, v8);
  sub_100064EB0();
  v36._countAndFlagsBits = 0x206E727554;
  v36._object = 0xE500000000000000;
  sub_100064EA0(v36);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v37._countAndFlagsBits = 0xD00000000000002DLL;
  v37._object = 0x80000001000687F0;
  sub_100064EA0(v37);
  sub_100064EC0();
  v10 = sub_100064E10();
  v9(v3, v8);
  sub_100003AD4(&qword_10008DF28, &qword_100077968);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100077550;
  v12 = v19;
  *(v11 + 32) = v20;
  *(v11 + 40) = v12;
  v13 = v17;
  *(v11 + 48) = v18;
  *(v11 + 56) = v13;
  *(v11 + 64) = v16;
  *(v11 + 72) = v10;
  v14 = sub_100064E00();

  return v14;
}

uint64_t sub_100037B6C(uint64_t a1)
{
  v24 = a1;
  v22 = sub_100003AD4(&qword_10008DF00, &qword_100077918);
  v1 = *(v22 - 8);
  __chkstk_darwin(v22);
  v3 = &v16 - v2;
  v4 = sub_100003AD4(&qword_10008DF08, &qword_100077920);
  __chkstk_darwin(v4);
  sub_10003F1BC();
  sub_100064EB0();
  v26._countAndFlagsBits = 0xD000000000000031;
  v26._object = 0x8000000100068570;
  sub_100064EA0(v26);
  swift_getKeyPath();
  v25 = sub_10003F410();
  sub_100064DE0();

  sub_100064E90();

  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_100064EA0(v27);
  sub_100064EC0();
  v20 = sub_100064E10();
  v5 = v1 + 8;
  v6 = *(v1 + 8);
  v7 = v22;
  v6(v3, v22);
  v21 = v6;
  v23 = v5;
  sub_100064EB0();
  v28._countAndFlagsBits = 0xD000000000000034;
  v28._object = 0x80000001000685B0;
  sub_100064EA0(v28);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100064EA0(v29);
  sub_100064EC0();
  v19 = sub_100064E10();
  v6(v3, v7);
  sub_100064EB0();
  v30._countAndFlagsBits = 0x206E727554;
  v30._object = 0xE500000000000000;
  sub_100064EA0(v30);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v31._object = 0x80000001000685F0;
  v31._countAndFlagsBits = 0xD00000000000002ALL;
  sub_100064EA0(v31);
  sub_100064EC0();
  v18 = sub_100064E10();
  v21(v3, v22);
  sub_100064EB0();
  v32._countAndFlagsBits = 0xD000000000000036;
  v32._object = 0x8000000100068620;
  sub_100064EA0(v32);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_100064EA0(v33);
  sub_100064EC0();
  v17 = sub_100064E10();
  v9 = v21;
  v8 = v22;
  v21(v3, v22);
  sub_100064EB0();
  v34._countAndFlagsBits = 0xD000000000000039;
  v34._object = 0x8000000100068660;
  sub_100064EA0(v34);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_100064EA0(v35);
  sub_100064EC0();
  v16 = sub_100064E10();
  v9(v3, v8);
  sub_100064EB0();
  v36._countAndFlagsBits = 0x206E727554;
  v36._object = 0xE500000000000000;
  sub_100064EA0(v36);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v37._countAndFlagsBits = 0xD00000000000002FLL;
  v37._object = 0x80000001000686A0;
  sub_100064EA0(v37);
  sub_100064EC0();
  v10 = sub_100064E10();
  v9(v3, v8);
  sub_100003AD4(&qword_10008DF10, &qword_100077928);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100077550;
  v12 = v19;
  *(v11 + 32) = v20;
  *(v11 + 40) = v12;
  v13 = v17;
  *(v11 + 48) = v18;
  *(v11 + 56) = v13;
  *(v11 + 64) = v16;
  *(v11 + 72) = v10;
  v14 = sub_100064E00();

  return v14;
}

uint64_t sub_100038264(uint64_t a1)
{
  v24 = a1;
  v22 = sub_100003AD4(&qword_10008DEE8, &qword_1000778D8);
  v1 = *(v22 - 8);
  __chkstk_darwin(v22);
  v3 = &v16 - v2;
  v4 = sub_100003AD4(&qword_10008DEF0, &qword_1000778E0);
  __chkstk_darwin(v4);
  sub_10002B3C8();
  sub_100064EB0();
  v26._countAndFlagsBits = 0xD000000000000014;
  v26._object = 0x80000001000684D0;
  sub_100064EA0(v26);
  swift_getKeyPath();
  v25 = sub_10003F410();
  sub_100064DE0();

  sub_100064E90();

  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_100064EA0(v27);
  sub_100064EC0();
  v20 = sub_100064E10();
  v5 = v1 + 8;
  v6 = *(v1 + 8);
  v7 = v22;
  v6(v3, v22);
  v21 = v6;
  v23 = v5;
  sub_100064EB0();
  v28._countAndFlagsBits = 0xD000000000000017;
  v28._object = 0x80000001000684F0;
  sub_100064EA0(v28);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100064EA0(v29);
  sub_100064EC0();
  v19 = sub_100064E10();
  v6(v3, v7);
  sub_100064EB0();
  v30._countAndFlagsBits = 0x206E727554;
  v30._object = 0xE500000000000000;
  sub_100064EA0(v30);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v31._countAndFlagsBits = 0x6148206C6C614320;
  v31._object = 0xED0000705520676ELL;
  sub_100064EA0(v31);
  sub_100064EC0();
  v18 = sub_100064E10();
  v21(v3, v22);
  sub_100064EB0();
  v32._countAndFlagsBits = 0xD000000000000019;
  v32._object = 0x8000000100068510;
  sub_100064EA0(v32);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_100064EA0(v33);
  sub_100064EC0();
  v17 = sub_100064E10();
  v9 = v21;
  v8 = v22;
  v21(v3, v22);
  sub_100064EB0();
  v34._countAndFlagsBits = 0xD00000000000001CLL;
  v34._object = 0x8000000100068530;
  sub_100064EA0(v34);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_100064EA0(v35);
  sub_100064EC0();
  v16 = sub_100064E10();
  v9(v3, v8);
  sub_100064EB0();
  v36._countAndFlagsBits = 0x206E727554;
  v36._object = 0xE500000000000000;
  sub_100064EA0(v36);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v37._object = 0x8000000100068550;
  v37._countAndFlagsBits = 0xD000000000000012;
  sub_100064EA0(v37);
  sub_100064EC0();
  v10 = sub_100064E10();
  v9(v3, v8);
  sub_100003AD4(&qword_10008DEF8, &qword_1000778E8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100077550;
  v12 = v19;
  *(v11 + 32) = v20;
  *(v11 + 40) = v12;
  v13 = v17;
  *(v11 + 48) = v18;
  *(v11 + 56) = v13;
  *(v11 + 64) = v16;
  *(v11 + 72) = v10;
  v14 = sub_100064E00();

  return v14;
}

uint64_t sub_100038960()
{
  v0 = sub_100003AD4(&qword_10008DED0, &qword_100077898);
  v1 = *(v0 - 8);
  v16 = v0;
  v17 = v1;
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  v4 = sub_100003AD4(&qword_10008DED8, &qword_1000778A0);
  __chkstk_darwin(v4);
  sub_10001B958();
  sub_100064EB0();
  v18._object = 0x8000000100068490;
  v18._countAndFlagsBits = 0xD000000000000014;
  sub_100064EA0(v18);
  swift_getKeyPath();
  sub_10003F410();
  sub_100064DE0();

  sub_100064E90();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_100064EA0(v19);
  sub_100064EC0();
  v15 = sub_100064E10();
  v5 = v16;
  v13 = *(v17 + 8);
  v17 += 8;
  v13(v3, v16);
  sub_100064EB0();
  v20._countAndFlagsBits = 0xD000000000000017;
  v20._object = 0x80000001000684B0;
  sub_100064EA0(v20);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_100064EA0(v21);
  sub_100064EC0();
  v14 = sub_100064E10();
  v6 = v13;
  v13(v3, v5);
  sub_100064EB0();
  v22._countAndFlagsBits = 0x206E727554;
  v22._object = 0xE500000000000000;
  sub_100064EA0(v22);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v23._countAndFlagsBits = 0x6F54206B6C615420;
  v23._object = 0xED00006972695320;
  sub_100064EA0(v23);
  sub_100064EC0();
  v7 = sub_100064E10();
  v6(v3, v16);
  sub_100003AD4(&qword_10008DEE0, &qword_1000778A8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000738E0;
  v9 = v14;
  *(v8 + 32) = v15;
  *(v8 + 40) = v9;
  *(v8 + 48) = v7;
  v10 = sub_100064E00();

  return v10;
}

uint64_t sub_100038DCC(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100003AD4(&qword_10008DEB8, &qword_100077858);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100003AD4(&qword_10008DEC0, &qword_100077860);
  __chkstk_darwin(v4);
  sub_10001476C();
  sub_100064EB0();
  v14._object = 0x8000000100068450;
  v14._countAndFlagsBits = 0xD000000000000016;
  sub_100064EA0(v14);
  swift_getKeyPath();
  sub_1000179C8();
  sub_100064DE0();

  sub_100064E90();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100064EA0(v15);
  sub_100064EC0();
  v12 = sub_100064E10();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_100064EB0();
  v16._countAndFlagsBits = 0xD000000000000019;
  v16._object = 0x8000000100068470;
  sub_100064EA0(v16);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_100064EA0(v17);
  sub_100064EC0();
  v7 = sub_100064E10();
  v5(v3, v6);
  sub_100003AD4(&qword_10008DEC8, &qword_100077868);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100077520;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_100064E00();

  return v9;
}

uint64_t sub_10003914C()
{
  v0 = sub_100064E30();
  v1 = sub_100064E30();
  v2 = sub_100064E30();
  sub_100003AD4(&qword_10008DDD8, &qword_100077610);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000738E0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_100064E20();

  return v4;
}

uint64_t sub_10003921C(uint64_t a1)
{
  v18[2] = a1;
  v20 = sub_100003AD4(&qword_10008DEA0, &qword_100077818);
  v29 = *(v20 - 8);
  __chkstk_darwin(v20);
  v2 = v18 - v1;
  v3 = sub_100064DF0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003AD4(&qword_10008DEA8, &qword_100077820);
  __chkstk_darwin(v7);
  sub_10003F210();
  sub_100064EB0();
  v30._countAndFlagsBits = 0xD000000000000016;
  v30._object = 0x80000001000683B0;
  sub_100064EA0(v30);
  v26 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v8 = *(v4 + 104);
  v27 = v4 + 104;
  v28 = v8;
  v22 = v3;
  v8(v6);
  sub_100064E80();
  v9 = *(v4 + 8);
  v24 = v4 + 8;
  v25 = v9;
  v9(v6, v3);
  v31._countAndFlagsBits = 544175136;
  v31._object = 0xE400000000000000;
  sub_100064EA0(v31);
  swift_getKeyPath();
  v18[1] = sub_10003F410();
  sub_100064DE0();

  sub_100064E90();

  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_100064EA0(v32);
  sub_100064EC0();
  v21 = sub_100064E10();
  v23 = *(v29 + 8);
  v29 += 8;
  v10 = v20;
  v23(v2, v20);
  sub_100064EB0();
  v33._countAndFlagsBits = 0xD000000000000019;
  v33._object = 0x80000001000683D0;
  sub_100064EA0(v33);
  v11 = v22;
  v28(v6, v26, v22);
  sub_100064E80();
  v25(v6, v11);
  v34._countAndFlagsBits = 544175136;
  v34._object = 0xE400000000000000;
  sub_100064EA0(v34);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_100064EA0(v35);
  sub_100064EC0();
  v19 = sub_100064E10();
  v23(v2, v10);
  sub_100064EB0();
  v36._countAndFlagsBits = 0x206E727554;
  v36._object = 0xE500000000000000;
  sub_100064EA0(v36);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v37._object = 0x80000001000683F0;
  v37._countAndFlagsBits = 0xD000000000000013;
  sub_100064EA0(v37);
  v12 = v22;
  v28(v6, v26, v22);
  sub_100064E80();
  v25(v6, v12);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_100064EA0(v38);
  sub_100064EC0();
  v13 = sub_100064E10();
  v23(v2, v10);
  sub_100003AD4(&qword_10008DEB0, &qword_100077828);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000738E0;
  v15 = v19;
  *(v14 + 32) = v21;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_100064E00();

  return v16;
}

uint64_t sub_100039838(uint64_t a1)
{
  v49 = sub_100003AD4(&qword_10008DE88, &qword_1000777D8);
  v55 = *(v49 - 8);
  __chkstk_darwin(v49);
  v3 = &v37 - v2;
  v4 = sub_100064DF0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003AD4(&qword_10008DE90, &qword_1000777E0);
  __chkstk_darwin(v8);
  v9 = sub_10003F264();
  sub_100064EB0();
  v56._countAndFlagsBits = 0xD00000000000002DLL;
  v56._object = 0x8000000100068280;
  sub_100064EA0(v56);
  v47 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v10 = *(v5 + 104);
  v51 = v5 + 104;
  v52 = v10;
  v54 = v4;
  (v10)(v7);
  sub_100064E80();
  v11 = *(v5 + 8);
  v50 = v5 + 8;
  v11(v7, v4);
  v46 = v11;
  v57._countAndFlagsBits = 544175136;
  v57._object = 0xE400000000000000;
  sub_100064EA0(v57);
  swift_getKeyPath();
  v53 = sub_10003F410();
  sub_100064DE0();

  sub_100064E90();

  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  sub_100064EA0(v58);
  v45 = v3;
  sub_100064EC0();
  v41 = sub_100064E10();
  v12 = *(v55 + 8);
  v55 += 8;
  v48 = v12;
  v13 = v3;
  v14 = v49;
  v12(v13, v49);
  sub_100064EB0();
  v59._countAndFlagsBits = 0xD000000000000030;
  v59._object = 0x80000001000682B0;
  sub_100064EA0(v59);
  v15 = v54;
  v52(v7, v47, v54);
  sub_100064E80();
  v11(v7, v15);
  v60._countAndFlagsBits = 544175136;
  v60._object = 0xE400000000000000;
  sub_100064EA0(v60);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  sub_100064EA0(v61);
  v16 = v45;
  sub_100064EC0();
  v44 = v9;
  v40 = sub_100064E10();
  v48(v16, v14);
  sub_100064EB0();
  v62._countAndFlagsBits = 0x206E727554;
  v62._object = 0xE500000000000000;
  sub_100064EA0(v62);
  swift_getKeyPath();
  v43 = a1;
  sub_100064DE0();

  sub_100064E90();

  v63._countAndFlagsBits = 0xD00000000000002ALL;
  v63._object = 0x80000001000682F0;
  sub_100064EA0(v63);
  v42 = v7;
  v17 = v47;
  v18 = v54;
  v19 = v52;
  v52(v7, v47, v54);
  sub_100064E80();
  v20 = v18;
  v21 = v46;
  v46(v7, v20);
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_100064EA0(v64);
  v22 = v45;
  sub_100064EC0();
  v39 = sub_100064E10();
  v48(v22, v49);
  sub_100064EB0();
  v65._countAndFlagsBits = 0xD000000000000028;
  v65._object = 0x8000000100068320;
  sub_100064EA0(v65);
  v23 = v42;
  v24 = v54;
  v19(v42, v17, v54);
  sub_100064E80();
  v21(v23, v24);
  v66._countAndFlagsBits = 544175136;
  v66._object = 0xE400000000000000;
  sub_100064EA0(v66);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  sub_100064EA0(v67);
  v25 = v45;
  sub_100064EC0();
  v38 = sub_100064E10();
  v27 = v48;
  v26 = v49;
  v48(v25, v49);
  sub_100064EB0();
  v68._countAndFlagsBits = 0xD00000000000002BLL;
  v68._object = 0x8000000100068350;
  sub_100064EA0(v68);
  v28 = v54;
  v52(v23, v17, v54);
  sub_100064E80();
  v46(v23, v28);
  v69._countAndFlagsBits = 544175136;
  v69._object = 0xE400000000000000;
  sub_100064EA0(v69);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  sub_100064EA0(v70);
  sub_100064EC0();
  v37 = sub_100064E10();
  v27(v25, v26);
  sub_100064EB0();
  v71._countAndFlagsBits = 0x206E727554;
  v71._object = 0xE500000000000000;
  sub_100064EA0(v71);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v72._object = 0x8000000100068380;
  v72._countAndFlagsBits = 0xD000000000000025;
  sub_100064EA0(v72);
  v29 = v42;
  v30 = v54;
  v52(v42, v47, v54);
  sub_100064E80();
  v46(v29, v30);
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  sub_100064EA0(v73);
  sub_100064EC0();
  v31 = sub_100064E10();
  v27(v25, v49);
  sub_100003AD4(&qword_10008DE98, &qword_1000777E8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100077550;
  v33 = v40;
  *(v32 + 32) = v41;
  *(v32 + 40) = v33;
  v34 = v38;
  *(v32 + 48) = v39;
  *(v32 + 56) = v34;
  *(v32 + 64) = v37;
  *(v32 + 72) = v31;
  v35 = sub_100064E00();

  return v35;
}

uint64_t sub_10003A220(uint64_t a1)
{
  v49 = sub_100003AD4(&qword_10008DE70, &qword_100077798);
  v55 = *(v49 - 8);
  __chkstk_darwin(v49);
  v3 = &v37 - v2;
  v4 = sub_100064DF0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003AD4(&qword_10008DE78, &qword_1000777A0);
  __chkstk_darwin(v8);
  v9 = sub_10003F2B8();
  sub_100064EB0();
  v56._countAndFlagsBits = 0x6767755320746553;
  v56._object = 0xEC00000020747365;
  sub_100064EA0(v56);
  v47 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v10 = *(v5 + 104);
  v51 = v5 + 104;
  v52 = v10;
  v54 = v4;
  (v10)(v7);
  sub_100064E80();
  v11 = *(v5 + 8);
  v50 = v5 + 8;
  v11(v7, v4);
  v46 = v11;
  v57._countAndFlagsBits = 544175136;
  v57._object = 0xE400000000000000;
  sub_100064EA0(v57);
  swift_getKeyPath();
  v53 = sub_10003F410();
  sub_100064DE0();

  sub_100064E90();

  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  sub_100064EA0(v58);
  v45 = v3;
  sub_100064EC0();
  v41 = sub_100064E10();
  v12 = *(v55 + 8);
  v55 += 8;
  v48 = v12;
  v13 = v3;
  v14 = v49;
  v12(v13, v49);
  sub_100064EB0();
  v59._countAndFlagsBits = 0x532065676E616843;
  v59._object = 0xEF20747365676775;
  sub_100064EA0(v59);
  v15 = v54;
  v52(v7, v47, v54);
  sub_100064E80();
  v11(v7, v15);
  v60._countAndFlagsBits = 544175136;
  v60._object = 0xE400000000000000;
  sub_100064EA0(v60);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  sub_100064EA0(v61);
  v16 = v45;
  sub_100064EC0();
  v44 = v9;
  v40 = sub_100064E10();
  v48(v16, v14);
  sub_100064EB0();
  v62._countAndFlagsBits = 0x206E727554;
  v62._object = 0xE500000000000000;
  sub_100064EA0(v62);
  swift_getKeyPath();
  v43 = a1;
  sub_100064DE0();

  sub_100064E90();

  v63._countAndFlagsBits = 0x7473656767755320;
  v63._object = 0xE900000000000020;
  sub_100064EA0(v63);
  v42 = v7;
  v17 = v47;
  v18 = v54;
  v19 = v52;
  v52(v7, v47, v54);
  sub_100064E80();
  v20 = v18;
  v21 = v46;
  v46(v7, v20);
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_100064EA0(v64);
  v22 = v45;
  sub_100064EC0();
  v39 = sub_100064E10();
  v48(v22, v49);
  sub_100064EB0();
  v65._countAndFlagsBits = 0xD000000000000014;
  v65._object = 0x8000000100068220;
  sub_100064EA0(v65);
  v23 = v42;
  v24 = v54;
  v19(v42, v17, v54);
  sub_100064E80();
  v21(v23, v24);
  v66._countAndFlagsBits = 544175136;
  v66._object = 0xE400000000000000;
  sub_100064EA0(v66);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  sub_100064EA0(v67);
  v25 = v45;
  sub_100064EC0();
  v38 = sub_100064E10();
  v27 = v48;
  v26 = v49;
  v48(v25, v49);
  sub_100064EB0();
  v68._countAndFlagsBits = 0xD000000000000017;
  v68._object = 0x8000000100068240;
  sub_100064EA0(v68);
  v28 = v54;
  v52(v23, v17, v54);
  sub_100064E80();
  v46(v23, v28);
  v69._countAndFlagsBits = 544175136;
  v69._object = 0xE400000000000000;
  sub_100064EA0(v69);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  sub_100064EA0(v70);
  sub_100064EC0();
  v37 = sub_100064E10();
  v27(v25, v26);
  sub_100064EB0();
  v71._countAndFlagsBits = 0x206E727554;
  v71._object = 0xE500000000000000;
  sub_100064EA0(v71);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v72._object = 0x8000000100068260;
  v72._countAndFlagsBits = 0xD000000000000011;
  sub_100064EA0(v72);
  v29 = v42;
  v30 = v54;
  v52(v42, v47, v54);
  sub_100064E80();
  v46(v29, v30);
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  sub_100064EA0(v73);
  sub_100064EC0();
  v31 = sub_100064E10();
  v27(v25, v49);
  sub_100003AD4(&qword_10008DE80, &qword_1000777A8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100077550;
  v33 = v40;
  *(v32 + 32) = v41;
  *(v32 + 40) = v33;
  v34 = v38;
  *(v32 + 48) = v39;
  *(v32 + 56) = v34;
  *(v32 + 64) = v37;
  *(v32 + 72) = v31;
  v35 = sub_100064E00();

  return v35;
}

uint64_t sub_10003AC08(uint64_t a1)
{
  v49 = sub_100003AD4(&qword_10008DE70, &qword_100077798);
  v55 = *(v49 - 8);
  __chkstk_darwin(v49);
  v3 = &v37 - v2;
  v4 = sub_100064DF0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003AD4(&qword_10008DE78, &qword_1000777A0);
  __chkstk_darwin(v8);
  v9 = sub_10003F2B8();
  sub_100064EB0();
  v56._countAndFlagsBits = 0xD000000000000021;
  v56._object = 0x8000000100068120;
  sub_100064EA0(v56);
  v47 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v10 = *(v5 + 104);
  v51 = v5 + 104;
  v52 = v10;
  v54 = v4;
  (v10)(v7);
  sub_100064E80();
  v11 = *(v5 + 8);
  v50 = v5 + 8;
  v11(v7, v4);
  v46 = v11;
  v57._countAndFlagsBits = 544175136;
  v57._object = 0xE400000000000000;
  sub_100064EA0(v57);
  swift_getKeyPath();
  v53 = sub_10003F410();
  sub_100064DE0();

  sub_100064E90();

  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  sub_100064EA0(v58);
  v45 = v3;
  sub_100064EC0();
  v41 = sub_100064E10();
  v12 = *(v55 + 8);
  v55 += 8;
  v48 = v12;
  v13 = v3;
  v14 = v49;
  v12(v13, v49);
  sub_100064EB0();
  v59._countAndFlagsBits = 0xD000000000000024;
  v59._object = 0x8000000100068150;
  sub_100064EA0(v59);
  v15 = v54;
  v52(v7, v47, v54);
  sub_100064E80();
  v11(v7, v15);
  v60._countAndFlagsBits = 544175136;
  v60._object = 0xE400000000000000;
  sub_100064EA0(v60);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  sub_100064EA0(v61);
  v16 = v45;
  sub_100064EC0();
  v44 = v9;
  v40 = sub_100064E10();
  v48(v16, v14);
  sub_100064EB0();
  v62._countAndFlagsBits = 0x206E727554;
  v62._object = 0xE500000000000000;
  sub_100064EA0(v62);
  swift_getKeyPath();
  v43 = a1;
  sub_100064DE0();

  sub_100064E90();

  v63._object = 0x8000000100068180;
  v63._countAndFlagsBits = 0xD00000000000001ALL;
  sub_100064EA0(v63);
  v42 = v7;
  v17 = v47;
  v18 = v54;
  v19 = v52;
  v52(v7, v47, v54);
  sub_100064E80();
  v20 = v18;
  v21 = v46;
  v46(v7, v20);
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_100064EA0(v64);
  v22 = v45;
  sub_100064EC0();
  v39 = sub_100064E10();
  v48(v22, v49);
  sub_100064EB0();
  v65._countAndFlagsBits = 0xD000000000000026;
  v65._object = 0x80000001000681A0;
  sub_100064EA0(v65);
  v23 = v42;
  v24 = v54;
  v19(v42, v17, v54);
  sub_100064E80();
  v21(v23, v24);
  v66._countAndFlagsBits = 544175136;
  v66._object = 0xE400000000000000;
  sub_100064EA0(v66);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  sub_100064EA0(v67);
  v25 = v45;
  sub_100064EC0();
  v38 = sub_100064E10();
  v27 = v48;
  v26 = v49;
  v48(v25, v49);
  sub_100064EB0();
  v68._countAndFlagsBits = 0xD000000000000029;
  v68._object = 0x80000001000681D0;
  sub_100064EA0(v68);
  v28 = v54;
  v52(v23, v17, v54);
  sub_100064E80();
  v46(v23, v28);
  v69._countAndFlagsBits = 544175136;
  v69._object = 0xE400000000000000;
  sub_100064EA0(v69);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  sub_100064EA0(v70);
  sub_100064EC0();
  v37 = sub_100064E10();
  v27(v25, v26);
  sub_100064EB0();
  v71._countAndFlagsBits = 0x206E727554;
  v71._object = 0xE500000000000000;
  sub_100064EA0(v71);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v72._countAndFlagsBits = 0xD00000000000001FLL;
  v72._object = 0x8000000100068200;
  sub_100064EA0(v72);
  v29 = v42;
  v30 = v54;
  v52(v42, v47, v54);
  sub_100064E80();
  v46(v29, v30);
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  sub_100064EA0(v73);
  sub_100064EC0();
  v31 = sub_100064E10();
  v27(v25, v49);
  sub_100003AD4(&qword_10008DE80, &qword_1000777A8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100077550;
  v33 = v40;
  *(v32 + 32) = v41;
  *(v32 + 40) = v33;
  v34 = v38;
  *(v32 + 48) = v39;
  *(v32 + 56) = v34;
  *(v32 + 64) = v37;
  *(v32 + 72) = v31;
  v35 = sub_100064E00();

  return v35;
}

uint64_t sub_10003B5AC(uint64_t a1)
{
  v24 = sub_100003AD4(&qword_10008DE58, &qword_100077758);
  v26 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = &v17 - v2;
  v4 = sub_100003AD4(&qword_10008DE60, &qword_100077760);
  __chkstk_darwin(v4);
  sub_10003F30C();
  sub_100064EB0();
  v27._countAndFlagsBits = 0xD00000000000001CLL;
  v27._object = 0x8000000100068040;
  sub_100064EA0(v27);
  swift_getKeyPath();
  v5 = sub_10003F410();
  v23 = a1;
  sub_100064DE0();

  sub_100064E90();

  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_100064EA0(v28);
  sub_100064EC0();
  v6 = sub_100064E10();
  v7 = *(v26 + 8);
  v26 += 8;
  v21 = v6;
  v22 = v7;
  v8 = v24;
  v7(v3, v24);
  sub_100064EB0();
  v29._countAndFlagsBits = 0xD00000000000001FLL;
  v29._object = 0x8000000100068060;
  sub_100064EA0(v29);
  swift_getKeyPath();
  v25 = v5;
  sub_100064DE0();

  sub_100064E90();

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100064EA0(v30);
  sub_100064EC0();
  v20 = sub_100064E10();
  v22(v3, v8);
  sub_100064EB0();
  v31._countAndFlagsBits = 0x206E727554;
  v31._object = 0xE500000000000000;
  sub_100064EA0(v31);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v32._object = 0x8000000100068080;
  v32._countAndFlagsBits = 0xD000000000000015;
  sub_100064EA0(v32);
  sub_100064EC0();
  v19 = sub_100064E10();
  v9 = v22;
  v22(v3, v24);
  sub_100064EB0();
  v33._countAndFlagsBits = 0xD000000000000021;
  v33._object = 0x80000001000680A0;
  sub_100064EA0(v33);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_100064EA0(v34);
  sub_100064EC0();
  v18 = sub_100064E10();
  v10 = v24;
  v9(v3, v24);
  sub_100064EB0();
  v35._countAndFlagsBits = 0xD000000000000024;
  v35._object = 0x80000001000680D0;
  sub_100064EA0(v35);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_100064EA0(v36);
  sub_100064EC0();
  v17 = sub_100064E10();
  v9(v3, v10);
  sub_100064EB0();
  v37._countAndFlagsBits = 0x206E727554;
  v37._object = 0xE500000000000000;
  sub_100064EA0(v37);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v38._countAndFlagsBits = 0xD00000000000001ALL;
  v38._object = 0x8000000100068100;
  sub_100064EA0(v38);
  sub_100064EC0();
  v11 = sub_100064E10();
  v9(v3, v10);
  sub_100003AD4(&qword_10008DE68, &qword_100077768);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100077550;
  v13 = v20;
  *(v12 + 32) = v21;
  *(v12 + 40) = v13;
  v14 = v18;
  *(v12 + 48) = v19;
  *(v12 + 56) = v14;
  *(v12 + 64) = v17;
  *(v12 + 72) = v11;
  v15 = sub_100064E00();

  return v15;
}

uint64_t sub_10003BCC0()
{
  v0 = sub_100003AD4(&qword_10008DE40, &qword_100077718);
  v1 = *(v0 - 8);
  v17 = v0;
  v18 = v1;
  __chkstk_darwin(v0);
  v3 = &v13 - v2;
  v4 = sub_100003AD4(&qword_10008DE48, &qword_100077720);
  __chkstk_darwin(v4);
  sub_10003F360();
  sub_100064EB0();
  v19._countAndFlagsBits = 0xD000000000000020;
  v19._object = 0x8000000100067FC0;
  sub_100064EA0(v19);
  swift_getKeyPath();
  sub_10003F410();
  sub_100064DE0();

  sub_100064E90();

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_100064EA0(v20);
  sub_100064EC0();
  v16 = sub_100064E10();
  v5 = v17;
  v6 = *(v18 + 8);
  v18 += 8;
  v14 = v6;
  v6(v3, v17);
  sub_100064EB0();
  v21._countAndFlagsBits = 0xD000000000000023;
  v21._object = 0x8000000100067FF0;
  sub_100064EA0(v21);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_100064EA0(v22);
  sub_100064EC0();
  v15 = sub_100064E10();
  v7 = v14;
  v14(v3, v5);
  sub_100064EB0();
  v23._countAndFlagsBits = 0x206E727554;
  v23._object = 0xE500000000000000;
  sub_100064EA0(v23);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v24._object = 0x8000000100068020;
  v24._countAndFlagsBits = 0xD000000000000019;
  sub_100064EA0(v24);
  sub_100064EC0();
  v8 = sub_100064E10();
  v7(v3, v17);
  sub_100003AD4(&qword_10008DE50, &qword_100077728);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000738E0;
  v10 = v15;
  *(v9 + 32) = v16;
  *(v9 + 40) = v10;
  *(v9 + 48) = v8;
  v11 = sub_100064E00();

  return v11;
}

uint64_t sub_10003C128()
{
  v0 = sub_100003AD4(&qword_10008DE28, &qword_1000776D8);
  v1 = *(v0 - 8);
  v17 = v0;
  v18 = v1;
  __chkstk_darwin(v0);
  v3 = &v13 - v2;
  v4 = sub_100003AD4(&qword_10008DE30, &qword_1000776E0);
  __chkstk_darwin(v4);
  sub_10003F3B4();
  sub_100064EB0();
  v19._countAndFlagsBits = 0xD000000000000019;
  v19._object = 0x8000000100067F60;
  sub_100064EA0(v19);
  swift_getKeyPath();
  sub_10003F410();
  sub_100064DE0();

  sub_100064E90();

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_100064EA0(v20);
  sub_100064EC0();
  v16 = sub_100064E10();
  v5 = v17;
  v6 = *(v18 + 8);
  v18 += 8;
  v14 = v6;
  v6(v3, v17);
  sub_100064EB0();
  v21._countAndFlagsBits = 0xD00000000000001CLL;
  v21._object = 0x8000000100067F80;
  sub_100064EA0(v21);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_100064EA0(v22);
  sub_100064EC0();
  v15 = sub_100064E10();
  v7 = v14;
  v14(v3, v5);
  sub_100064EB0();
  v23._countAndFlagsBits = 0x206E727554;
  v23._object = 0xE500000000000000;
  sub_100064EA0(v23);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v24._object = 0x8000000100067FA0;
  v24._countAndFlagsBits = 0xD000000000000012;
  sub_100064EA0(v24);
  sub_100064EC0();
  v8 = sub_100064E10();
  v7(v3, v17);
  sub_100003AD4(&qword_10008DE38, &qword_1000776E8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000738E0;
  v10 = v15;
  *(v9 + 32) = v16;
  *(v9 + 40) = v10;
  *(v9 + 48) = v8;
  v11 = sub_100064E00();

  return v11;
}

uint64_t sub_10003C590(uint64_t a1)
{
  v24 = a1;
  v22 = sub_100003AD4(&qword_10008DE10, &qword_100077698);
  v1 = *(v22 - 8);
  __chkstk_darwin(v22);
  v3 = &v16 - v2;
  v4 = sub_100003AD4(&qword_10008DE18, &qword_1000776A0);
  __chkstk_darwin(v4);
  sub_100008BE8();
  sub_100064EB0();
  v26._countAndFlagsBits = 0xD000000000000021;
  v26._object = 0x8000000100067E80;
  sub_100064EA0(v26);
  swift_getKeyPath();
  v25 = sub_10003F410();
  sub_100064DE0();

  sub_100064E90();

  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_100064EA0(v27);
  sub_100064EC0();
  v20 = sub_100064E10();
  v5 = v1 + 8;
  v6 = *(v1 + 8);
  v7 = v22;
  v6(v3, v22);
  v21 = v6;
  v23 = v5;
  sub_100064EB0();
  v28._countAndFlagsBits = 0xD000000000000024;
  v28._object = 0x8000000100067EB0;
  sub_100064EA0(v28);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100064EA0(v29);
  sub_100064EC0();
  v19 = sub_100064E10();
  v6(v3, v7);
  sub_100064EB0();
  v30._countAndFlagsBits = 0x206E727554;
  v30._object = 0xE500000000000000;
  sub_100064EA0(v30);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v31._object = 0x8000000100067EE0;
  v31._countAndFlagsBits = 0xD00000000000001ALL;
  sub_100064EA0(v31);
  sub_100064EC0();
  v18 = sub_100064E10();
  v21(v3, v22);
  sub_100064EB0();
  v32._object = 0x8000000100067F00;
  v32._countAndFlagsBits = 0xD00000000000001ALL;
  sub_100064EA0(v32);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_100064EA0(v33);
  sub_100064EC0();
  v17 = sub_100064E10();
  v9 = v21;
  v8 = v22;
  v21(v3, v22);
  sub_100064EB0();
  v34._countAndFlagsBits = 0xD00000000000001DLL;
  v34._object = 0x8000000100067F20;
  sub_100064EA0(v34);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_100064EA0(v35);
  sub_100064EC0();
  v16 = sub_100064E10();
  v9(v3, v8);
  sub_100064EB0();
  v36._countAndFlagsBits = 0x206E727554;
  v36._object = 0xE500000000000000;
  sub_100064EA0(v36);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v37._countAndFlagsBits = 0xD000000000000013;
  v37._object = 0x8000000100067F40;
  sub_100064EA0(v37);
  sub_100064EC0();
  v10 = sub_100064E10();
  v9(v3, v8);
  sub_100003AD4(&qword_10008DE20, &qword_1000776A8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100077550;
  v12 = v19;
  *(v11 + 32) = v20;
  *(v11 + 40) = v12;
  v13 = v17;
  *(v11 + 48) = v18;
  *(v11 + 56) = v13;
  *(v11 + 64) = v16;
  *(v11 + 72) = v10;
  v14 = sub_100064E00();

  return v14;
}

uint64_t sub_10003CC84()
{
  v0 = sub_100003AD4(&qword_10008DDF8, &qword_100077658);
  v1 = *(v0 - 8);
  v17 = v0;
  v18 = v1;
  __chkstk_darwin(v0);
  v3 = &v13 - v2;
  v4 = sub_100003AD4(&qword_10008DE00, &qword_100077660);
  __chkstk_darwin(v4);
  sub_100010DE0();
  sub_100064EB0();
  v19._countAndFlagsBits = 0xD00000000000001ALL;
  v19._object = 0x8000000100067E20;
  sub_100064EA0(v19);
  swift_getKeyPath();
  sub_10003F410();
  sub_100064DE0();

  sub_100064E90();

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_100064EA0(v20);
  sub_100064EC0();
  v16 = sub_100064E10();
  v5 = v17;
  v6 = *(v18 + 8);
  v18 += 8;
  v14 = v6;
  v6(v3, v17);
  sub_100064EB0();
  v21._countAndFlagsBits = 0xD00000000000001DLL;
  v21._object = 0x8000000100067E40;
  sub_100064EA0(v21);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_100064EA0(v22);
  sub_100064EC0();
  v15 = sub_100064E10();
  v7 = v14;
  v14(v3, v5);
  sub_100064EB0();
  v23._countAndFlagsBits = 0x206E727554;
  v23._object = 0xE500000000000000;
  sub_100064EA0(v23);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v24._object = 0x8000000100067E60;
  v24._countAndFlagsBits = 0xD000000000000013;
  sub_100064EA0(v24);
  sub_100064EC0();
  v8 = sub_100064E10();
  v7(v3, v17);
  sub_100003AD4(&qword_10008DE08, &qword_100077668);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000738E0;
  v10 = v15;
  *(v9 + 32) = v16;
  *(v9 + 40) = v10;
  *(v9 + 48) = v8;
  v11 = sub_100064E00();

  return v11;
}

uint64_t sub_10003D0EC(uint64_t a1)
{
  v49 = sub_100003AD4(&qword_10008DDE0, &qword_100077618);
  v55 = *(v49 - 8);
  __chkstk_darwin(v49);
  v3 = &v37 - v2;
  v4 = sub_100064DF0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003AD4(&qword_10008DDE8, &qword_100077620);
  __chkstk_darwin(v8);
  v9 = sub_100004340();
  sub_100064EB0();
  v56._countAndFlagsBits = 0xD00000000000001FLL;
  v56._object = 0x8000000100067D50;
  sub_100064EA0(v56);
  v47 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v10 = *(v5 + 104);
  v51 = v5 + 104;
  v52 = v10;
  v54 = v4;
  (v10)(v7);
  sub_100064E80();
  v11 = *(v5 + 8);
  v50 = v5 + 8;
  v11(v7, v4);
  v46 = v11;
  v57._countAndFlagsBits = 544175136;
  v57._object = 0xE400000000000000;
  sub_100064EA0(v57);
  swift_getKeyPath();
  v53 = sub_10003F410();
  sub_100064DE0();

  sub_100064E90();

  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  sub_100064EA0(v58);
  v45 = v3;
  sub_100064EC0();
  v41 = sub_100064E10();
  v12 = *(v55 + 8);
  v55 += 8;
  v48 = v12;
  v13 = v3;
  v14 = v49;
  v12(v13, v49);
  sub_100064EB0();
  v59._countAndFlagsBits = 0xD000000000000022;
  v59._object = 0x8000000100067D70;
  sub_100064EA0(v59);
  v15 = v54;
  v52(v7, v47, v54);
  sub_100064E80();
  v11(v7, v15);
  v60._countAndFlagsBits = 544175136;
  v60._object = 0xE400000000000000;
  sub_100064EA0(v60);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  sub_100064EA0(v61);
  v16 = v45;
  sub_100064EC0();
  v44 = v9;
  v40 = sub_100064E10();
  v48(v16, v14);
  sub_100064EB0();
  v62._countAndFlagsBits = 0x206E727554;
  v62._object = 0xE500000000000000;
  sub_100064EA0(v62);
  swift_getKeyPath();
  v43 = a1;
  sub_100064DE0();

  sub_100064E90();

  v63._countAndFlagsBits = 0xD00000000000001CLL;
  v63._object = 0x8000000100067DA0;
  sub_100064EA0(v63);
  v42 = v7;
  v17 = v47;
  v18 = v54;
  v19 = v52;
  v52(v7, v47, v54);
  sub_100064E80();
  v20 = v18;
  v21 = v46;
  v46(v7, v20);
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_100064EA0(v64);
  v22 = v45;
  sub_100064EC0();
  v39 = sub_100064E10();
  v48(v22, v49);
  sub_100064EB0();
  v65._countAndFlagsBits = 0xD00000000000001ALL;
  v65._object = 0x8000000100067DC0;
  sub_100064EA0(v65);
  v23 = v42;
  v24 = v54;
  v19(v42, v17, v54);
  sub_100064E80();
  v21(v23, v24);
  v66._countAndFlagsBits = 544175136;
  v66._object = 0xE400000000000000;
  sub_100064EA0(v66);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  sub_100064EA0(v67);
  v25 = v45;
  sub_100064EC0();
  v38 = sub_100064E10();
  v27 = v48;
  v26 = v49;
  v48(v25, v49);
  sub_100064EB0();
  v68._countAndFlagsBits = 0xD00000000000001DLL;
  v68._object = 0x8000000100067DE0;
  sub_100064EA0(v68);
  v28 = v54;
  v52(v23, v17, v54);
  sub_100064E80();
  v46(v23, v28);
  v69._countAndFlagsBits = 544175136;
  v69._object = 0xE400000000000000;
  sub_100064EA0(v69);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  sub_100064EA0(v70);
  sub_100064EC0();
  v37 = sub_100064E10();
  v27(v25, v26);
  sub_100064EB0();
  v71._countAndFlagsBits = 0x206E727554;
  v71._object = 0xE500000000000000;
  sub_100064EA0(v71);
  swift_getKeyPath();
  sub_100064DE0();

  sub_100064E90();

  v72._object = 0x8000000100067E00;
  v72._countAndFlagsBits = 0xD000000000000017;
  sub_100064EA0(v72);
  v29 = v42;
  v30 = v54;
  v52(v42, v47, v54);
  sub_100064E80();
  v46(v29, v30);
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  sub_100064EA0(v73);
  sub_100064EC0();
  v31 = sub_100064E10();
  v27(v25, v49);
  sub_100003AD4(&qword_10008DDF0, &qword_100077628);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100077550;
  v33 = v40;
  *(v32 + 32) = v41;
  *(v32 + 40) = v33;
  v34 = v38;
  *(v32 + 48) = v39;
  *(v32 + 56) = v34;
  *(v32 + 64) = v37;
  *(v32 + 72) = v31;
  v35 = sub_100064E00();

  return v35;
}

uint64_t sub_10003DAD4()
{
  v0 = sub_100064E30();
  v1 = sub_100064E30();
  sub_100003AD4(&qword_10008DDD8, &qword_100077610);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100077520;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_100064E20();

  return v3;
}

uint64_t sub_10003DB6C()
{
  if (qword_10008C540 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10003DBD8()
{
  v0 = sub_100064EF0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10001D238();
  sub_10001B664();
  sub_100064F00();
  v78 = sub_100064EE0();
  v4 = *(v1 + 8);
  v4(v3, v0);
  v79 = sub_100018408();
  sub_100014404();
  sub_100064F00();
  v77 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_100053D74();
  sub_10003EE20();
  sub_100064F00();
  v76 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_10005E680();
  sub_10003EE74();
  sub_100064F00();
  v75 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_1000271DC();
  sub_10001F830();
  sub_100064F00();
  v74 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_10002DBD0();
  sub_10002B09C();
  sub_100064F00();
  v73 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_100003738();
  sub_100001A14();
  sub_100064F00();
  v72 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_10005612C();
  sub_10003EEC8();
  sub_100064F00();
  v71 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_100064174();
  sub_10003EF1C();
  sub_100064F00();
  v70 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_10000CCE8();
  sub_10000B974();
  sub_100064F00();
  v69 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_10004E840();
  sub_10003EF70();
  sub_100064F00();
  v68 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_1000446AC();
  sub_10003EFC4();
  sub_100064F00();
  v67 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_10000AD58();
  sub_1000088BC();
  sub_100064F00();
  v66 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_100057CC4();
  sub_10003F018();
  sub_100064F00();
  v65 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_10000E76C();
  sub_10000D304();
  sub_100064F00();
  v64 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_100010348();
  sub_10000EED8();
  sub_100064F00();
  v63 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_100012F38();
  sub_100010AB4();
  sub_100064F00();
  v62 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_100054110();
  v80 = v5;
  sub_10003F06C();
  sub_100064F00();
  v61 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_1000274DC();
  v80 = v6;
  sub_10001FB24();
  sub_100064F00();
  v60 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_100064524();
  v80 = v7;
  sub_10003F0C0();
  sub_100064F00();
  v59 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_10005EA30();
  v80 = v8;
  sub_10003F114();
  sub_100064F00();
  v58 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_10005EF58();
  v80 = v9;
  sub_10003F168();
  sub_100064F00();
  v57 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_10005F480();
  v80 = v10;
  sub_10003F1BC();
  sub_100064F00();
  v56 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_10002DF6C();
  v80 = v11;
  sub_10002B3C8();
  sub_100064F00();
  v55 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_10001D530();
  v80 = v12;
  sub_10001B958();
  sub_100064F00();
  v54 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_1000187B8();
  v80 = v13;
  sub_10001476C();
  sub_100064F00();
  v53 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_10004EBF0();
  v80 = v14;
  sub_10003F210();
  sub_100064F00();
  v52 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_10004F118();
  v80 = v15;
  sub_10003F264();
  sub_100064F00();
  v51 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_10004F640();
  v80 = v16;
  sub_10003F2B8();
  sub_100064F00();
  v50 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_10004F640();
  v80 = v17;
  sub_100064F00();
  v49 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_1000449A8();
  v80 = v18;
  sub_10003F30C();
  sub_100064F00();
  v19 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_100044E10();
  v80 = v20;
  sub_10003F360();
  sub_100064F00();
  v21 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_100045278();
  v80 = v22;
  sub_10003F3B4();
  sub_100064F00();
  v23 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_10000B0F4();
  v80 = v24;
  sub_100008BE8();
  sub_100064F00();
  v25 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_1000132D4();
  v80 = v26;
  sub_100010DE0();
  sub_100064F00();
  v27 = sub_100064EE0();
  v4(v3, v0);
  v79 = sub_100007D78();
  v80 = v28;
  sub_100004340();
  sub_100064F00();
  v29 = sub_100064EE0();
  v4(v3, v0);
  sub_100003AD4(&qword_10008DDC0, &qword_1000775D8);
  v30 = swift_allocObject();
  v31 = v77;
  *(v30 + 32) = v78;
  *(v30 + 40) = v31;
  v32 = v75;
  *(v30 + 48) = v76;
  *(v30 + 56) = v32;
  v33 = v73;
  *(v30 + 64) = v74;
  *(v30 + 72) = v33;
  v34 = v71;
  *(v30 + 80) = v72;
  *(v30 + 88) = v34;
  *(v30 + 16) = xmmword_100077560;
  v35 = v69;
  *(v30 + 96) = v70;
  *(v30 + 104) = v35;
  v36 = v67;
  *(v30 + 112) = v68;
  *(v30 + 120) = v36;
  v37 = v65;
  *(v30 + 128) = v66;
  *(v30 + 136) = v37;
  v38 = v63;
  *(v30 + 144) = v64;
  *(v30 + 152) = v38;
  v39 = v61;
  *(v30 + 160) = v62;
  *(v30 + 168) = v39;
  v40 = v59;
  *(v30 + 176) = v60;
  *(v30 + 184) = v40;
  v41 = v57;
  *(v30 + 192) = v58;
  *(v30 + 200) = v41;
  v42 = v55;
  *(v30 + 208) = v56;
  *(v30 + 216) = v42;
  v43 = v53;
  *(v30 + 224) = v54;
  *(v30 + 232) = v43;
  v44 = v51;
  *(v30 + 240) = v52;
  *(v30 + 248) = v44;
  v45 = v49;
  *(v30 + 256) = v50;
  *(v30 + 264) = v45;
  *(v30 + 272) = v19;
  *(v30 + 280) = v21;
  *(v30 + 288) = v23;
  *(v30 + 296) = v25;
  *(v30 + 304) = v27;
  *(v30 + 312) = v29;
  v46 = sub_100064ED0();

  return v46;
}

unint64_t sub_10003EE20()
{
  result = qword_10008DD30;
  if (!qword_10008DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DD30);
  }

  return result;
}

unint64_t sub_10003EE74()
{
  result = qword_10008DD38;
  if (!qword_10008DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DD38);
  }

  return result;
}

unint64_t sub_10003EEC8()
{
  result = qword_10008DD40;
  if (!qword_10008DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DD40);
  }

  return result;
}

unint64_t sub_10003EF1C()
{
  result = qword_10008DD48;
  if (!qword_10008DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DD48);
  }

  return result;
}

unint64_t sub_10003EF70()
{
  result = qword_10008DD50;
  if (!qword_10008DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DD50);
  }

  return result;
}

unint64_t sub_10003EFC4()
{
  result = qword_10008DD58;
  if (!qword_10008DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DD58);
  }

  return result;
}

unint64_t sub_10003F018()
{
  result = qword_10008DD60;
  if (!qword_10008DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DD60);
  }

  return result;
}

unint64_t sub_10003F06C()
{
  result = qword_10008DD68;
  if (!qword_10008DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DD68);
  }

  return result;
}

unint64_t sub_10003F0C0()
{
  result = qword_10008DD70;
  if (!qword_10008DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DD70);
  }

  return result;
}

unint64_t sub_10003F114()
{
  result = qword_10008DD78;
  if (!qword_10008DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DD78);
  }

  return result;
}

unint64_t sub_10003F168()
{
  result = qword_10008DD80;
  if (!qword_10008DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DD80);
  }

  return result;
}

unint64_t sub_10003F1BC()
{
  result = qword_10008DD88;
  if (!qword_10008DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DD88);
  }

  return result;
}

unint64_t sub_10003F210()
{
  result = qword_10008DD90;
  if (!qword_10008DD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DD90);
  }

  return result;
}

unint64_t sub_10003F264()
{
  result = qword_10008DD98;
  if (!qword_10008DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DD98);
  }

  return result;
}

unint64_t sub_10003F2B8()
{
  result = qword_10008DDA0;
  if (!qword_10008DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DDA0);
  }

  return result;
}

unint64_t sub_10003F30C()
{
  result = qword_10008DDA8;
  if (!qword_10008DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DDA8);
  }

  return result;
}

unint64_t sub_10003F360()
{
  result = qword_10008DDB0;
  if (!qword_10008DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DDB0);
  }

  return result;
}

unint64_t sub_10003F3B4()
{
  result = qword_10008DDB8;
  if (!qword_10008DDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DDB8);
  }

  return result;
}

unint64_t sub_10003F410()
{
  result = qword_10008DDC8;
  if (!qword_10008DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DDC8);
  }

  return result;
}

void *sub_10003F46C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100064D90();
  *a1 = v3;
  return result;
}

unint64_t sub_10003F4E0()
{
  result = qword_10008DF78;
  if (!qword_10008DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008DF78);
  }

  return result;
}

double sub_10003F674@<D0>(uint64_t a1@<X8>)
{
  sub_100064D90();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

unint64_t sub_10003F6BC()
{
  result = qword_10008E018;
  if (!qword_10008E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E018);
  }

  return result;
}

double sub_10003F8BC@<D0>(_OWORD *a1@<X8>)
{
  sub_100064D90();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_10003F9C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003FA0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003FA74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_10003FAD4@<X0>(void *a1@<X8>)
{
  result = sub_100064D90();
  *a1 = v3;
  return result;
}

unint64_t sub_10003FC08()
{
  result = qword_10008E168;
  if (!qword_10008E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E168);
  }

  return result;
}

unint64_t sub_10003FC5C()
{
  result = qword_10008E170;
  if (!qword_10008E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E170);
  }

  return result;
}

uint64_t sub_10003FCE8()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F648);
  sub_100003B1C(v0, qword_10008F648);
  return sub_1000651B0();
}

double sub_10003FD4C@<D0>(uint64_t a1@<X8>)
{
  sub_100064D90();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_10003FD90(uint64_t *a1)
{

  sub_100064DA0();
}

void (*sub_10003FE08(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

uint64_t sub_10003FE7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100045940();
  v5 = sub_100044658();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10003FEEC()
{
  result = qword_10008E178;
  if (!qword_10008E178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E178);
  }

  return result;
}

unint64_t sub_10003FF44()
{
  result = qword_10008E180;
  if (!qword_10008E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E180);
  }

  return result;
}

uint64_t sub_10003FFE8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100045940();
  v6 = sub_100045994();
  v7 = sub_100044658();
  *v4 = v2;
  v4[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1000400B4@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1000446AC();
  *a2 = result;
  return result;
}

uint64_t sub_1000400DC(uint64_t a1)
{
  v2 = sub_10003EFC4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

id sub_100040160()
{
  result = [objc_opt_self() sharedController];
  qword_10008F660 = result;
  return result;
}

uint64_t sub_10004019C()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000651C0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100065370();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000651D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100065130();
  sub_100003B54(v10, qword_10008F668);
  sub_100003B1C(v10, qword_10008F668);
  sub_100065360();
  sub_100065200();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000651F0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100065120();
}

uint64_t sub_10004048C()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F680);
  sub_100003B1C(v0, qword_10008F680);
  return sub_1000651B0();
}

uint64_t sub_1000404F0()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F698);
  v1 = sub_100003B1C(v0, qword_10008F698);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000405B0()
{
  result = swift_getKeyPath();
  qword_10008F6B0 = result;
  return result;
}

uint64_t sub_1000405D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_100003AD4(&qword_10008CB00, &unk_1000714F0);
  v3[23] = swift_task_alloc();
  sub_100003AD4(&qword_10008CB08, &qword_100073870);
  v3[24] = swift_task_alloc();
  sub_100003AD4(&qword_10008E2E0, &qword_100078AF0);
  v3[25] = swift_task_alloc();
  v4 = sub_100064D30();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_100003AD4(&qword_10008E2C0, &qword_100078A70);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000407B8, 0, 0);
}

uint64_t sub_1000407B8()
{
  sub_100064D90();
  v1 = *(v0 + 32);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100043A14();
  *v2 = v0;
  v2[1] = sub_10004089C;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1000459F4, 0, &type metadata for SiriAppClipsAccessEntity, v3);
}

uint64_t sub_10004089C()
{

  return _swift_task_switch(sub_100040998, 0, 0);
}

uint64_t sub_100040998()
{
  sub_100064D90();
  v1 = *(v0 + 64);
  *(v0 + 88) = v1;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 288) = v3;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  sub_100064D90();
  *(v0 + 321) = *(v0 + 320);
  if (qword_10008C570 != -1)
  {
    swift_once();
  }

  v4 = qword_10008F6B0;
  *(v0 + 296) = qword_10008F6B0;

  v5 = swift_task_alloc();
  *(v0 + 304) = v5;
  v6 = sub_1000084D8(&qword_10008E2A0, &qword_10008E2A8, &qword_100078A28, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v5 = v0;
  v5[1] = sub_100040B00;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 321, v4, &type metadata for Bool, v6);
}

uint64_t sub_100040B00()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1000459F0;
  }

  else
  {
    v2 = sub_100040C94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100040C94()
{
  v10 = v0[31];
  v11 = v0[32];
  v1 = v0[29];
  v2 = v0[30];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  sub_100064D90();
  v13 = v0[15];
  v5 = v0[16];
  v0[17] = v0[14];
  v0[18] = v13;
  v0[19] = v5;
  v6 = sub_100065100();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_100065140();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_10003F30C();
  sub_10003F6BC();
  sub_100064CF0();
  (*(v2 + 16))(v10, v11, v1);
  sub_100064D10();
  sub_100064D40();
  (*(v14 + 8))(v12, v15);

  (*(v2 + 8))(v11, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100040F48(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_100003AD4(&qword_10008E2C8, &qword_100078A78);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_100064F70();

  sub_10003F6BC();
  sub_1000084D8(&qword_10008E2D0, &qword_10008E2C8, &qword_100078A78, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_100064F60();
  return (*(v5 + 8))(v7, v4);
}

void (*sub_1000410C0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

void (*sub_100041134(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_1000411D0()
{
  result = qword_10008E198;
  if (!qword_10008E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E198);
  }

  return result;
}

unint64_t sub_100041228()
{
  result = qword_10008E1A0;
  if (!qword_10008E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E1A0);
  }

  return result;
}

uint64_t sub_100041324(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return sub_1000405D8(a1, v5, v4);
}

uint64_t sub_1000413D0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1000449A8();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10004147C()
{
  if (qword_10008C550 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = [qword_10008F660 learnFromAppClipsEnabled];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100041548()
{
  if (qword_10008C550 != -1)
  {
    swift_once();
  }

  [qword_10008F660 setLearnFromAppClipsEnabled:*(v0 + 16)];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000415EC()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F6B8);
  sub_100003B1C(v0, qword_10008F6B8);
  return sub_1000651B0();
}

uint64_t sub_100041650()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F6D0);
  v1 = sub_100003B1C(v0, qword_10008F6D0);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100041710()
{
  result = swift_getKeyPath();
  qword_10008F6E8 = result;
  return result;
}

uint64_t sub_100041740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_100003AD4(&qword_10008CB00, &unk_1000714F0);
  v3[23] = swift_task_alloc();
  sub_100003AD4(&qword_10008CB08, &qword_100073870);
  v3[24] = swift_task_alloc();
  sub_100003AD4(&qword_10008E2D8, &qword_100078AB8);
  v3[25] = swift_task_alloc();
  v4 = sub_100064D30();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_100003AD4(&qword_10008E2C0, &qword_100078A70);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100041920, 0, 0);
}

uint64_t sub_100041920()
{
  sub_100064D90();
  v1 = *(v0 + 32);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100043A14();
  *v2 = v0;
  v2[1] = sub_100041A04;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1000459F8, 0, &type metadata for SiriAppClipsAccessEntity, v3);
}

uint64_t sub_100041A04()
{

  return _swift_task_switch(sub_100041B00, 0, 0);
}

uint64_t sub_100041B00()
{
  sub_100064D90();
  v1 = *(v0 + 64);
  *(v0 + 88) = v1;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 288) = v3;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  sub_100064D90();
  *(v0 + 321) = *(v0 + 320);
  if (qword_10008C588 != -1)
  {
    swift_once();
  }

  v4 = qword_10008F6E8;
  *(v0 + 296) = qword_10008F6E8;

  v5 = swift_task_alloc();
  *(v0 + 304) = v5;
  v6 = sub_1000084D8(&qword_10008E2A0, &qword_10008E2A8, &qword_100078A28, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v5 = v0;
  v5[1] = sub_100041C68;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 321, v4, &type metadata for Bool, v6);
}

uint64_t sub_100041C68()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1000459F0;
  }

  else
  {
    v2 = sub_100041DFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100041DFC()
{
  v10 = v0[31];
  v11 = v0[32];
  v1 = v0[29];
  v2 = v0[30];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  sub_100064D90();
  v13 = v0[15];
  v5 = v0[16];
  v0[17] = v0[14];
  v0[18] = v13;
  v0[19] = v5;
  v6 = sub_100065100();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_100065140();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_10003F360();
  sub_10003F6BC();
  sub_100064CF0();
  (*(v2 + 16))(v10, v11, v1);
  sub_100064D10();
  sub_100064D40();
  (*(v14 + 8))(v12, v15);

  (*(v2 + 8))(v11, v1);

  v8 = v0[1];

  return v8();
}

void (*sub_1000420B0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

void (*sub_100042124(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_1000421C0()
{
  result = qword_10008E1B8;
  if (!qword_10008E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E1B8);
  }

  return result;
}

unint64_t sub_100042218()
{
  result = qword_10008E1C0;
  if (!qword_10008E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E1C0);
  }

  return result;
}

uint64_t sub_100042314(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return sub_100041740(a1, v5, v4);
}

uint64_t sub_1000423C0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100044E10();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10004246C()
{
  if (qword_10008C550 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = [qword_10008F660 showInSearchEnabled];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100042538()
{
  if (qword_10008C550 != -1)
  {
    swift_once();
  }

  [qword_10008F660 setShowInSearchEnabled:*(v0 + 16)];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000425DC()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F6F0);
  sub_100003B1C(v0, qword_10008F6F0);
  return sub_1000651B0();
}

uint64_t sub_100042640()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F708);
  v1 = sub_100003B1C(v0, qword_10008F708);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100042700()
{
  result = swift_getKeyPath();
  qword_10008F720 = result;
  return result;
}

uint64_t sub_100042730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_100003AD4(&qword_10008CB00, &unk_1000714F0);
  v3[23] = swift_task_alloc();
  sub_100003AD4(&qword_10008CB08, &qword_100073870);
  v3[24] = swift_task_alloc();
  sub_100003AD4(&qword_10008E2B8, &qword_100078A68);
  v3[25] = swift_task_alloc();
  v4 = sub_100064D30();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = sub_100003AD4(&qword_10008E2C0, &qword_100078A70);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100042910, 0, 0);
}

uint64_t sub_100042910()
{
  sub_100064D90();
  v1 = *(v0 + 32);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_100043A14();
  *v2 = v0;
  v2[1] = sub_1000429F4;
  v4 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v4, v0 + 40, sub_1000459FC, 0, &type metadata for SiriAppClipsAccessEntity, v3);
}

uint64_t sub_1000429F4()
{

  return _swift_task_switch(sub_100042AF0, 0, 0);
}

uint64_t sub_100042AF0()
{
  sub_100064D90();
  v1 = *(v0 + 64);
  *(v0 + 88) = v1;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  *(v0 + 288) = v3;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  sub_100064D90();
  *(v0 + 321) = *(v0 + 320);
  if (qword_10008C5A0 != -1)
  {
    swift_once();
  }

  v4 = qword_10008F720;
  *(v0 + 296) = qword_10008F720;

  v5 = swift_task_alloc();
  *(v0 + 304) = v5;
  v6 = sub_1000084D8(&qword_10008E2A0, &qword_10008E2A8, &qword_100078A28, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v5 = v0;
  v5[1] = sub_100042C58;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 321, v4, &type metadata for Bool, v6);
}

uint64_t sub_100042C58()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_10004307C;
  }

  else
  {
    v2 = sub_100042DEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100042DEC()
{
  v10 = v0[31];
  v11 = v0[32];
  v1 = v0[29];
  v2 = v0[30];
  v12 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  sub_100064D90();
  v13 = v0[15];
  v5 = v0[16];
  v0[17] = v0[14];
  v0[18] = v13;
  v0[19] = v5;
  v6 = sub_100065100();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_100065140();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_10003F3B4();
  sub_10003F6BC();
  sub_100064CF0();
  (*(v2 + 16))(v10, v11, v1);
  sub_100064D10();
  sub_100064D40();
  (*(v14 + 8))(v12, v15);

  (*(v2 + 8))(v11, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10004307C()
{
  (*(v0[30] + 8))(v0[32], v0[29]);

  v1 = v0[1];

  return v1();
}

void (*sub_100043164(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_1000054EC;
}

void (*sub_1000431D8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_100043274()
{
  result = qword_10008E1D8;
  if (!qword_10008E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E1D8);
  }

  return result;
}

unint64_t sub_1000432CC()
{
  result = qword_10008E1E0;
  if (!qword_10008E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E1E0);
  }

  return result;
}

uint64_t sub_10004341C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002CCC;

  return sub_100042730(a1, v5, v4);
}

uint64_t sub_1000434C8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100045278();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_100043510()
{
  result = qword_10008E1E8;
  if (!qword_10008E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E1E8);
  }

  return result;
}

unint64_t sub_100043568()
{
  result = qword_10008E1F0;
  if (!qword_10008E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E1F0);
  }

  return result;
}

uint64_t sub_1000435DC()
{
  if (qword_10008C550 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = [qword_10008F660 suggestAppClipsEnabled];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000436A8()
{
  if (qword_10008C550 != -1)
  {
    swift_once();
  }

  [qword_10008F660 setSuggestAppClipsEnabled:*(v0 + 16)];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004374C()
{
  result = sub_1000456E0();
  qword_10008F728 = result;
  unk_10008F730 = v1;
  qword_10008F738 = v2;
  return result;
}

uint64_t sub_100043794()
{
  if (qword_10008C5A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = unk_10008F730;
  v3 = qword_10008F738;
  *v1 = qword_10008F728;
  v1[1] = v2;
  v1[2] = v3;
  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_100043860()
{
  result = qword_10008E1F8;
  if (!qword_10008E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E1F8);
  }

  return result;
}

uint64_t sub_1000438B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100043D68();
  *v4 = v2;
  v4[1] = sub_100002540;

  return UniqueAppEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100043968()
{
  result = qword_10008E200;
  if (!qword_10008E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E200);
  }

  return result;
}

unint64_t sub_1000439C0()
{
  result = qword_10008E208;
  if (!qword_10008E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E208);
  }

  return result;
}

unint64_t sub_100043A14()
{
  result = qword_10008E210;
  if (!qword_10008E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E210);
  }

  return result;
}

uint64_t sub_100043A68(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100043D68();
  *v5 = v2;
  v5[1] = sub_100003DDC;

  return UniqueAppEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100043B1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100043D68();
  *v4 = v2;
  v4[1] = sub_100003DBC;

  return UniqueAppEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100043BD0()
{
  result = qword_10008E218;
  if (!qword_10008E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E218);
  }

  return result;
}

unint64_t sub_100043C28()
{
  result = qword_10008E220;
  if (!qword_10008E220)
  {
    sub_100002BD0(&qword_10008E228, qword_100078560);
    sub_10003F6BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E220);
  }

  return result;
}

uint64_t sub_100043CAC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100043860();
  *v5 = v2;
  v5[1] = sub_100003DB8;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100043D68()
{
  result = qword_10008E230;
  if (!qword_10008E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E230);
  }

  return result;
}

unint64_t sub_100043DC0()
{
  result = qword_10008E238;
  if (!qword_10008E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E238);
  }

  return result;
}

uint64_t sub_100043E14(uint64_t a1)
{
  v2 = sub_100043A14();

  return EntityURLRepresentation.init(_:)(0xD00000000000004DLL, 0x8000000100068D50, a1, v2);
}

unint64_t sub_100043E80()
{
  result = qword_10008E240;
  if (!qword_10008E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E240);
  }

  return result;
}

unint64_t sub_100043ED8()
{
  result = qword_10008E248;
  if (!qword_10008E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E248);
  }

  return result;
}

uint64_t sub_100043F30(uint64_t a1)
{
  sub_100044658();
  v2 = sub_100065050();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100043FA0()
{
  result = qword_10008E250;
  if (!qword_10008E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E250);
  }

  return result;
}

unint64_t sub_100043FF8()
{
  result = qword_10008E258;
  if (!qword_10008E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E258);
  }

  return result;
}

unint64_t sub_100044054()
{
  result = qword_10008E260;
  if (!qword_10008E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E260);
  }

  return result;
}

uint64_t sub_1000440A8@<X0>(uint64_t *a2@<X8>)
{
  sub_100043568();
  result = sub_100064BC0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100044120@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100003B1C(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_10004420C(uint64_t a1)
{
  v2 = sub_100043A14();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10004425C()
{
  result = qword_10008E278;
  if (!qword_10008E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E278);
  }

  return result;
}

uint64_t sub_1000442B0()
{
  v0 = sub_100003AD4(&qword_10008CAE8, &unk_100072340);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1000651D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_1000651B0();
  (*(v7 + 56))(v5, 1, 1, v6);
  v8 = sub_100064FA0();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_100064FC0();
}

uint64_t sub_100044488(uint64_t a1)
{
  v2 = sub_100044054();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_100044514(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100044528(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100044570(uint64_t result, int a2, int a3)
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

unint64_t sub_100044658()
{
  result = qword_10008E298;
  if (!qword_10008E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E298);
  }

  return result;
}

uint64_t sub_1000446AC()
{
  v17[0] = sub_1000650D0();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_1000651D0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100003AD4(&qword_10008E2B0, &unk_100078A50);
  sub_1000651B0();
  (*(v13 + 56))(v11, 1, 1, v12);
  v14 = sub_100064D30();
  memset(&v17[1], 0, 24);
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_100043A14();
  return sub_100064DC0();
}

uint64_t sub_1000449A8()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  __chkstk_darwin(v0 - 8);
  v28 = v22 - v1;
  v29 = sub_1000650D0();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  v11 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = sub_1000651D0();
  v27 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[0] = sub_100003AD4(&qword_10008E2B0, &unk_100078A50);
  sub_1000651B0();
  v16 = *(v15 + 56);
  v25 = v15 + 56;
  v26 = v16;
  v16(v13, 1, 1, v14);
  v17 = sub_100064D30();
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v24 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v22[1] = v2 + 104;
  v23 = v19;
  v19(v4);
  sub_100043A14();
  v22[0] = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v26(v13, 1, 1, v27);
  LOBYTE(v30) = 2;
  v20 = sub_1000653E0();
  (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v23(v4, v24, v29);
  sub_100064DD0();
  return v22[0];
}

uint64_t sub_100044E10()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  __chkstk_darwin(v0 - 8);
  v28 = v22 - v1;
  v29 = sub_1000650D0();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  v11 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = sub_1000651D0();
  v27 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[0] = sub_100003AD4(&qword_10008E2B0, &unk_100078A50);
  sub_1000651B0();
  v16 = *(v15 + 56);
  v25 = v15 + 56;
  v26 = v16;
  v16(v13, 1, 1, v14);
  v17 = sub_100064D30();
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v24 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v22[1] = v2 + 104;
  v23 = v19;
  v19(v4);
  sub_100043A14();
  v22[0] = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v26(v13, 1, 1, v27);
  LOBYTE(v30) = 2;
  v20 = sub_1000653E0();
  (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v23(v4, v24, v29);
  sub_100064DD0();
  return v22[0];
}

uint64_t sub_100045278()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  __chkstk_darwin(v0 - 8);
  v28 = v22 - v1;
  v29 = sub_1000650D0();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  v11 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = sub_1000651D0();
  v27 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[0] = sub_100003AD4(&qword_10008E2B0, &unk_100078A50);
  sub_1000651B0();
  v16 = *(v15 + 56);
  v25 = v15 + 56;
  v26 = v16;
  v16(v13, 1, 1, v14);
  v17 = sub_100064D30();
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v24 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v22[1] = v2 + 104;
  v23 = v19;
  v19(v4);
  sub_100043A14();
  v22[0] = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v26(v13, 1, 1, v27);
  LOBYTE(v30) = 2;
  v20 = sub_1000653E0();
  (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v23(v4, v24, v29);
  sub_100064DD0();
  return v22[0];
}

uint64_t sub_1000456E0()
{
  v0 = sub_1000651D0();
  __chkstk_darwin(v0 - 8);
  sub_100003AD4(&qword_10008E190, qword_100078040);
  sub_1000651B0();
  sub_1000084D8(&qword_10008E2A0, &qword_10008E2A8, &qword_100078A28, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v1 = sub_100065180();
  sub_100003AD4(&qword_10008E1B0, qword_1000781A0);
  sub_1000651B0();
  sub_100065180();
  sub_100003AD4(&qword_10008E1D0, qword_100078300);
  sub_1000651B0();
  sub_100065180();
  return v1;
}

unint64_t sub_100045940()
{
  result = qword_10008E2E8;
  if (!qword_10008E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E2E8);
  }

  return result;
}

unint64_t sub_100045994()
{
  result = qword_10008E2F0;
  if (!qword_10008E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E2F0);
  }

  return result;
}

uint64_t sub_100045A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_100065020();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v5 = sub_100064D30();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v6 = sub_100003AD4(&qword_10008E308, &qword_100078B38);
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_100045C1C, 0, 0);
}

uint64_t sub_100045C1C()
{
  v1 = objc_opt_self();
  *(v0 + 208) = v1;
  v2 = [v1 sharedController];
  v3 = [v2 assistantIsEnabled];

  if (v3)
  {
    sub_100064D90();
    v4 = *(v0 + 366);
    v5 = [v1 sharedController];
    v6 = v5;
    if (v4 == 1)
    {
      v7 = (v0 + 370);
LABEL_10:
      sub_100064D90();
      [v6 setHardwareButtonAssistant:*v7];

      sub_100064D90();
      v19 = *(v0 + 64);
      *(v0 + 328) = v19;
      *(v0 + 72) = v19;
      if (qword_10008C450 != -1)
      {
        swift_once();
      }

      v20 = qword_10008F410;
      *(v0 + 336) = qword_10008F410;

      v21 = swift_task_alloc();
      *(v0 + 344) = v21;
      v22 = sub_1000084D8(&qword_10008D708, &qword_10008D710, &unk_100078B40, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
      *v21 = v0;
      v21[1] = sub_100046AD0;

      return AppEntity._value<A, B>(for:)(v0 + 362, v20, v22);
    }

    v17 = [v5 isVoiceTriggerEnabled];

    if (v17)
    {
      v7 = (v0 + 369);
      v18 = [v1 sharedController];
LABEL_9:
      v6 = v18;
      goto LABEL_10;
    }

    v24 = *(v0 + 152);
    v23 = *(v0 + 160);
    v25 = *(v0 + 144);
    *(v0 + 32) = *(v0 + 88);
    sub_100046FFC(v23);
    sub_100064D60();
    v26 = *(v24 + 8);
    *(v0 + 216) = v26;
    *(v0 + 224) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v23, v25);
    sub_100065010();
    v27 = swift_task_alloc();
    *(v0 + 232) = v27;
    v12 = sub_10001B958();
    *(v0 + 240) = v12;
    v13 = sub_1000084D8(&qword_10008E310, &qword_10008E308, &qword_100078B38, &protocol conformance descriptor for IntentResultContainer<A, B, C, D>);
    *(v0 + 248) = v13;
    *v27 = v0;
    v27[1] = sub_100046080;
    v14 = *(v0 + 200);
    v15 = *(v0 + 168);
    v16 = *(v0 + 136);
  }

  else
  {
    sub_100064D90();
    if (*(v0 + 360) != 1)
    {
      v7 = (v0 + 361);
      v18 = [v1 sharedController];
      goto LABEL_9;
    }

    v9 = *(v0 + 152);
    v8 = *(v0 + 160);
    v10 = *(v0 + 144);
    *(v0 + 16) = *(v0 + 88);
    sub_10004761C(v8);
    sub_100064D60();
    (*(v9 + 8))(v8, v10);
    sub_100065010();
    v11 = swift_task_alloc();
    *(v0 + 312) = v11;
    v12 = sub_10001B958();
    v13 = sub_1000084D8(&qword_10008E310, &qword_10008E308, &qword_100078B38, &protocol conformance descriptor for IntentResultContainer<A, B, C, D>);
    *v11 = v0;
    v11[1] = sub_100046738;
    v14 = *(v0 + 184);
    v15 = *(v0 + 168);
    v16 = *(v0 + 120);
  }

  return AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)(v14, v16, 1, &type metadata for TalkToSiriEntity.UpdateIntent_value, v15, v12, v13);
}

uint64_t sub_100046080()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 168);
  v6 = *(*v1 + 136);
  v7 = *(*v1 + 112);
  v8 = *(*v1 + 104);
  v2[32] = v0;

  v9 = *(v7 + 8);
  v2[33] = v9;
  v2[34] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v8);
  v10 = *(v4 + 8);
  v2[35] = v10;
  v2[36] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v3, v5);
  if (v0)
  {
    v11 = sub_100046D0C;
  }

  else
  {
    v11 = sub_100046278;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100046278()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 88);
  sub_100047360(v2);
  sub_100064D60();
  v1(v2, v3);
  sub_100065010();
  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  *v4 = v0;
  v4[1] = sub_100046388;
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);
  v9 = *(v0 + 128);

  return AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)(v7, v9, 1, &type metadata for TalkToSiriEntity.UpdateIntent_value, v8, v5, v6);
}

uint64_t sub_100046388()
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 168);
  v6 = *(*v1 + 128);
  v7 = *(*v1 + 104);
  *(*v1 + 304) = v0;

  v3(v6, v7);
  v2(v4, v5);
  if (v0)
  {
    v8 = sub_100046DC8;
  }

  else
  {
    v8 = sub_100046574;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100046574()
{
  v1 = *(v0 + 208);
  v2 = [v1 sharedController];
  sub_100064D90();
  [v2 setHardwareButtonAssistant:*(v0 + 367)];

  v3 = [v1 sharedController];
  sub_100064D90();
  [v3 setAssistantIsEnabled:*(v0 + 368)];

  sub_100064D90();
  v4 = *(v0 + 64);
  *(v0 + 72) = v4;
  *(v0 + 328) = v4;
  if (qword_10008C450 != -1)
  {
    swift_once();
  }

  v5 = qword_10008F410;
  *(v0 + 336) = qword_10008F410;

  v6 = swift_task_alloc();
  *(v0 + 344) = v6;
  v7 = sub_1000084D8(&qword_10008D708, &qword_10008D710, &unk_100078B40, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v6 = v0;
  v6[1] = sub_100046AD0;

  return AppEntity._value<A, B>(for:)(v0 + 362, v5, v7);
}

uint64_t sub_100046738()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  *(*v1 + 320) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_100046E84;
  }

  else
  {
    v8 = sub_10004690C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10004690C()
{
  v1 = *(v0 + 208);
  v2 = [v1 sharedController];
  sub_100064D90();
  [v2 setHardwareButtonAssistant:*(v0 + 364)];

  v3 = [v1 sharedController];
  sub_100064D90();
  [v3 setAssistantIsEnabled:*(v0 + 365)];

  sub_100064D90();
  v4 = *(v0 + 64);
  *(v0 + 72) = v4;
  *(v0 + 328) = v4;
  if (qword_10008C450 != -1)
  {
    swift_once();
  }

  v5 = qword_10008F410;
  *(v0 + 336) = qword_10008F410;

  v6 = swift_task_alloc();
  *(v0 + 344) = v6;
  v7 = sub_1000084D8(&qword_10008D708, &qword_10008D710, &unk_100078B40, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v6 = v0;
  v6[1] = sub_100046AD0;

  return AppEntity._value<A, B>(for:)(v0 + 362, v5, v7);
}

uint64_t sub_100046AD0()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_100046F40;
  }

  else
  {
    v2 = sub_100046C24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100046C24()
{
  *(v0 + 363) = *(v0 + 362);
  sub_10003F410();
  sub_100064D50();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100046D0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100046DC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100046E84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100046F40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100046FFC@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_1000651C0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100065210();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100065370();
  __chkstk_darwin(v6 - 8);
  v22 = sub_1000651D0();
  v20 = *(v22 - 8);
  v7 = v20;
  v8 = __chkstk_darwin(v22);
  v23 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v21 = v19 - v11;
  __chkstk_darwin(v10);
  v13 = v19 - v12;
  sub_100065360();
  v19[1] = "ASSISTANT_LOCK_SCREEN_ACCESS";
  sub_100065200();
  v14 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v15 = *(v2 + 104);
  v15(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v1);
  sub_1000651F0();
  v16 = *(v7 + 16);
  v17 = v22;
  v16(v21, v13, v22);
  sub_100065360();
  sub_100065200();
  v15(v4, v14, v1);
  sub_1000651F0();
  sub_100064D20();
  return (*(v20 + 8))(v13, v17);
}

uint64_t sub_100047360@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v1 = sub_1000651C0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100065210();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100065370();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000651D0();
  v8 = __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  sub_100065360();
  sub_100065200();
  v9 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v10 = *(v2 + 104);
  v10(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v1);
  sub_1000651F0();
  sub_100065360();
  sub_100065200();
  v10(v4, v9, v1);
  sub_1000651F0();
  return sub_100064D20();
}

uint64_t sub_10004761C@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v1 = sub_1000651C0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100065210();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100065370();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000651D0();
  v8 = __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  sub_100065360();
  sub_100065200();
  v9 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v10 = *(v2 + 104);
  v10(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v1);
  sub_1000651F0();
  sub_100065360();
  sub_100065200();
  v10(v4, v9, v1);
  sub_1000651F0();
  return sub_100064D20();
}

unint64_t sub_1000478DC()
{
  result = qword_10008E328;
  if (!qword_10008E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E328);
  }

  return result;
}

uint64_t type metadata accessor for SiriAppAccessForAppEntity(uint64_t a1)
{
  result = qword_10008E4A8;
  if (!qword_10008E4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10004797C(uint64_t a1)
{
  v3 = type metadata accessor for SiriAppAccessForAppEntity(0);
  v43 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_100065490();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v52 = _swiftEmptyArrayStorage;
  sub_100063AAC(0, v6 & ~(v6 >> 63), 0);
  v7 = v52;
  if (v44)
  {
    result = sub_100065450();
  }

  else
  {
    result = sub_100065440();
    v9 = *(a1 + 36);
  }

  v49 = result;
  v50 = v9;
  v51 = v44 != 0;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v11 = a1;
    }

    v39 = a1 + 56;
    v40 = v11;
    v37 = v1;
    v38 = a1 + 64;
    v41 = v6;
    v42 = a1;
    while (v10 < v6)
    {
      if (__OFADD__(v10++, 1))
      {
        goto LABEL_37;
      }

      v47 = v49;
      v45 = v50;
      v46 = v51;
      sub_100063DBC(v49, v50, v51, a1);
      v15 = v14;
      v16 = [v14 bundleId];
      v17 = v5;
      v18 = sub_100065390();
      v20 = v19;

      v21 = [v15 localizedName];
      v22 = sub_100065390();
      v24 = v23;

      sub_100048570(v18, v20, v22, v24, v17);
      v52 = v7;
      v26 = v7[2];
      v25 = v7[3];
      if (v26 >= v25 >> 1)
      {
        sub_100063AAC((v25 > 1), v26 + 1, 1);
        v7 = v52;
      }

      v7[2] = v26 + 1;
      sub_10004E7DC(v17, v7 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v26);
      v5 = v17;
      if (v44)
      {
        a1 = v42;
        result = v47;
        if (!v46)
        {
          goto LABEL_42;
        }

        if (sub_100065460())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v6 = v41;
        sub_100003AD4(&qword_10008CAF8, &qword_1000714E0);
        v12 = sub_100065400();
        sub_1000654B0();
        result = v12(v48, 0);
        if (v10 == v6)
        {
LABEL_34:
          sub_1000084CC(v49, v50, v51);
          return v7;
        }
      }

      else
      {
        a1 = v42;
        result = v47;
        if (v46)
        {
          goto LABEL_43;
        }

        if ((v47 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v27 = 1 << *(v42 + 32);
        if (v47 >= v27)
        {
          goto LABEL_38;
        }

        v28 = v47 >> 6;
        v29 = *(v39 + 8 * (v47 >> 6));
        if (((v29 >> v47) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v42 + 36) != v45)
        {
          goto LABEL_40;
        }

        v30 = v29 & (-2 << (v47 & 0x3F));
        if (v30)
        {
          v27 = __clz(__rbit64(v30)) | v47 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v31 = v28 << 6;
          v32 = v28 + 1;
          v33 = (v38 + 8 * v28);
          while (v32 < (v27 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              result = sub_1000084CC(v47, v45, 0);
              v27 = __clz(__rbit64(v34)) + v31;
              goto LABEL_33;
            }
          }

          result = sub_1000084CC(v47, v45, 0);
        }

LABEL_33:
        v36 = *(a1 + 36);
        v49 = v27;
        v50 = v36;
        v51 = 0;
        v6 = v41;
        if (v10 == v41)
        {
          goto LABEL_34;
        }
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
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}