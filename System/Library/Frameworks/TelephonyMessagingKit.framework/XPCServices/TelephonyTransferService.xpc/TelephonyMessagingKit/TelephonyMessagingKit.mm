uint64_t sub_1000014B0()
{
  v0 = sub_10000AA6C();
  sub_100007F98(v0, qword_1000146A8);
  sub_1000060B8(v0, qword_1000146A8);
  return sub_100009B70(0x65636976726553, 0xE700000000000000);
}

Swift::Int sub_10000152C()
{
  v1 = *v0;
  sub_10000AC4C();
  sub_10000AC5C(v1);
  return sub_10000AC6C();
}

Swift::Int sub_1000015A0(uint64_t a1)
{
  v2 = *v1;
  sub_10000AC4C();
  sub_10000AC5C(v2);
  return sub_10000AC6C();
}

uint64_t sub_1000015F4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000160C()
{
  v4[3] = type metadata accessor for FileTransferProvider();
  v4[4] = &off_1000109D0;
  v4[0] = sub_10000993C();
  v4[8] = type metadata accessor for AppAssertionProvider();
  v4[9] = &off_1000109E0;
  v4[5] = sub_10000993C();
  sub_1000016AC(v4, v3);
  v1 = (*(v0 + 128))(v3);
  sub_1000016E4(v4);
  return v1;
}

uint64_t sub_100001714(_OWORD *a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 192) = &_swiftEmptyDictionarySingleton;
  v3 = a1[3];
  *(v2 + 144) = a1[2];
  *(v2 + 160) = v3;
  *(v2 + 176) = a1[4];
  v4 = a1[1];
  *(v2 + 112) = *a1;
  *(v2 + 128) = v4;
  return v2;
}

uint64_t sub_100001774(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = sub_10000A64C();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_100001838, v2, 0);
}

uint64_t sub_100001838()
{
  v1 = *(v0 + 200);
  swift_beginAccess();
  v2 = *(v1 + 192);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 192);

    v4 = sub_100006B50(v3);
    if (v5)
    {
      v6 = *(v0 + 184);
      sub_100007B54(*(v2 + 56) + 40 * v4, v0 + 16);

      sub_1000015F4((v0 + 16), v6);

      v7 = *(v0 + 8);

      return v7();
    }
  }

  v9 = *(v0 + 200);
  v10 = v9[17];
  v11 = v9[18];
  sub_100006BE8(v9 + 14, v10);
  v14 = (*(v11 + 8) + **(v11 + 8));
  v12 = swift_task_alloc();
  *(v0 + 232) = v12;
  *v12 = v0;
  v12[1] = sub_100001A1C;
  v13 = *(v0 + 192);

  return v14(v0 + 56, v13, v10, v11);
}

uint64_t sub_100001A1C()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    v4 = sub_100001C18;
  }

  else
  {
    v4 = sub_100001B48;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100001B48()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 184);
  (*(*(v0 + 216) + 16))(v1, *(v0 + 192), *(v0 + 208));
  sub_100007B54(v0 + 56, v0 + 96);
  swift_beginAccess();
  sub_100001C7C(v0 + 96, v1);
  swift_endAccess();
  sub_1000015F4((v0 + 56), v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100001C18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100001C7C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1000015F4(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_100007418(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_10000A64C();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_100007F38(a1, &qword_100014420, &qword_10000B238);
    sub_100006C2C(a2, v9);
    v7 = sub_10000A64C();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_100007F38(v9, &qword_100014420, &qword_10000B238);
  }

  return result;
}

uint64_t sub_100001D98(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10000A9DC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_100006070(&qword_100014468, &unk_10000B278);
  v3[8] = swift_task_alloc();
  v5 = sub_10000A64C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100001EF0, v2, 0);
}

uint64_t sub_100001EF0()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  (*(v0[6] + 16))(v4, v0[3], v0[5]);
  sub_100008008(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007F38(v0[8], &qword_100014468, &unk_10000B278);
    sub_100007B00();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_1000020A0;
    v9 = v0[11];
    v10 = v0[2];

    return sub_100001774(v10, v9);
  }
}

uint64_t sub_1000020A0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_100002268;
  }

  else
  {
    v4 = sub_1000021CC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000021CC()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100002268()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100002300()
{
  v2 = v0;
  v3 = sub_100006070(&qword_100014440, &qword_10000B248);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  sub_100006070(&qword_100014310, &qword_10000B0A8);
  v6 = sub_10000A89C();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = v2[22];
    v11 = v2[23];
    sub_100006BE8(v2 + 19, v10);
    (*(v11 + 8))(v19, v8, v9, v10, v11);

    if (!v1)
    {
      v13 = v20;
      v14 = v21;
      sub_100006BE8(v19, v20);
      (*(v14 + 8))(v13, v14);
      sub_10000619C();
      v15 = sub_10000AB0C();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      sub_100007B54(v19, v18);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = 0x4024000000000000;
      sub_1000015F4(v18, (v16 + 5));
      sub_100002C70(0, 0, v5, &unk_10000B270, v16);

      return sub_100006294(v19);
    }
  }

  else
  {
    sub_100007B00();
    swift_allocError();
    *v17 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100002548()
{
  v2 = v0;
  v3 = sub_100006070(&qword_100014440, &qword_10000B248);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  sub_100006070(&qword_100014320, &qword_10000B0D0);
  v6 = sub_10000A89C();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = v2[22];
    v11 = v2[23];
    sub_100006BE8(v2 + 19, v10);
    (*(v11 + 8))(v19, v8, v9, v10, v11);

    if (!v1)
    {
      v13 = v20;
      v14 = v21;
      sub_100006BE8(v19, v20);
      (*(v14 + 8))(v13, v14);
      sub_10000638C();
      v15 = sub_10000AB0C();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      sub_100007B54(v19, v18);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = 0x4024000000000000;
      sub_1000015F4(v18, (v16 + 5));
      sub_100002C70(0, 0, v5, &unk_10000B258, v16);

      return sub_100006294(v19);
    }
  }

  else
  {
    sub_100007B00();
    swift_allocError();
    *v17 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100002790(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  v6 = sub_10000AB7C();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100002854, 0, 0);
}

uint64_t sub_100002854()
{
  if (qword_1000146A0 != -1)
  {
    swift_once();
  }

  v1 = sub_10000AA6C();
  sub_1000060B8(v1, qword_1000146A8);
  v2 = sub_10000AA4C();
  v3 = sub_10000AB1C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting %f before releasing assertion", v5, 0xCu);
  }

  v6 = sub_10000AC7C();
  v8 = v7;
  sub_10000ABFC();
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_1000029FC;

  return sub_100005BB8(v6, v8, 0, 0, 1);
}

uint64_t sub_1000029FC()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100002C0C;
  }

  else
  {
    v5 = sub_100002B6C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100002B6C()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006BE8(v1, v2);
  (*(v3 + 16))(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100002C0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100006070(&qword_100014440, &qword_10000B248);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100007C54(a3, v22 - v9);
  v11 = sub_10000AB0C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007F38(v10, &qword_100014440, &qword_10000B248);
  }

  else
  {
    sub_10000AAFC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10000AAEC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10000AABC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100007F38(a3, &qword_100014440, &qword_10000B248);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007F38(a3, &qword_100014440, &qword_10000B248);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100002F0C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_10000A6CC();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = sub_10000A9DC();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_10000A61C();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v6 = sub_10000A88C();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v7 = sub_10000A95C();
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_100003160, v1, 0);
}

uint64_t sub_100003160()
{
  v23 = v0;
  sub_100006070(&qword_100014310, &qword_10000B0A8);
  sub_10000A8BC();
  sub_10000A94C();
  sub_10000A85C();
  sub_10000A84C();
  if (qword_1000146A0 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = sub_10000AA6C();
  v0[27] = sub_1000060B8(v5, qword_1000146A8);
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_10000AA4C();
  v7 = sub_10000AB1C();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[17];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 136315138;
    sub_100007CC4(&qword_100014318, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v13 = sub_10000ABBC();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_1000061C8(v13, v15, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received request to download URL %s", v12, 0xCu);
    sub_100006294(v21);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  v0[28] = v16;
  v18 = swift_task_alloc();
  v0[29] = v18;
  *v18 = v0;
  v18[1] = sub_10000342C;
  v19 = v0[16];

  return sub_100001D98((v0 + 2), v19);
}

uint64_t sub_10000342C()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_100003C48;
  }

  else
  {
    v4 = sub_100003558;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100003558(uint64_t a1)
{
  v2 = sub_10000AA4C();
  v3 = sub_10000AB1C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting download", v4, 2u);
  }

  v5 = v1[23];

  v1[31] = sub_10000A91C();
  v6 = swift_task_alloc();
  v1[32] = v6;
  *(v6 + 16) = v1 + 2;
  *(v6 + 24) = v5;
  v7 = swift_task_alloc();
  v1[33] = v7;
  *v7 = v1;
  v7[1] = sub_1000036B8;
  v8 = v1[13];
  v9 = v1[9];

  return SandboxExtension.withResource<A>(_:)(v8, &unk_10000B0C0, v6, v9);
}

uint64_t sub_1000036B8()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 64);

  if (v0)
  {
    v4 = sub_100003D90;
  }

  else
  {
    v4 = sub_10000381C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10000381C()
{
  v46 = v0;
  v1 = *(v0[10] + 16);
  v1(v0[12], v0[13], v0[9]);
  v2 = sub_10000AA4C();
  v3 = sub_10000AB1C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[12];
  if (v4)
  {
    v6 = v0[10];
    v7 = v0[11];
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45 = v42;
    *v9 = 136315138;
    v1(v7, v5, v8);
    v10 = sub_10000AAAC();
    v12 = v11;
    v44 = *(v6 + 8);
    v44(v5, v8);
    v13 = sub_1000061C8(v10, v12, &v45);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Download completed: %s", v9, 0xCu);
    sub_100006294(v42);
  }

  else
  {
    v14 = v0[9];
    v15 = v0[10];

    v44 = *(v15 + 8);
    v44(v5, v14);
  }

  v16 = v0[34];
  v17 = v0[13];
  v18 = v0[7];
  v19 = swift_task_alloc();
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  sub_100002300();
  v20 = v0[25];
  v43 = v0[26];
  v40 = v0[28];
  v41 = v0[24];
  if (v16)
  {
    v21 = v0[20];
    v22 = v0[17];
    v24 = v0[15];
    v23 = v0[16];
    v25 = v0[14];
    v38 = v0[9];
    v39 = v0[13];

    (*(v24 + 8))(v23, v25);
    v40(v21, v22);
    (*(v20 + 8))(v43, v41);
    v44(v39, v38);
    sub_100006294(v0 + 2);
    (*(v0[22] + 8))(v0[23], v0[21]);
  }

  else
  {
    v27 = v0[22];
    v28 = v0[20];
    v36 = v0[21];
    v37 = v0[23];
    v29 = v0[16];
    v30 = v0[17];
    v31 = v0[14];
    v32 = v0[15];
    v34 = v0[9];
    v35 = v0[13];

    (*(v32 + 8))(v29, v31);
    v40(v28, v30);
    (*(v20 + 8))(v43, v41);
    v44(v35, v34);
    sub_100006294(v0 + 2);
    (*(v27 + 8))(v37, v36);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_100003C48()
{
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  (*(v0[22] + 8))(v0[23], v0[21]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100003D90()
{
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_100006294(v0 + 2);
  (*(v0[22] + 8))(v0[23], v0[21]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100003EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = sub_10000A88C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_10000A6EC();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100004000, 0, 0);
}

uint64_t sub_100004000()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = v5[3];
  v7 = v5[4];
  sub_100006BE8(v5, v6);
  (*(v2 + 16))(v1, v4, v3);
  sub_1000089B0(v1);
  v12 = (*(v7 + 8) + **(v7 + 8));
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_100004180;
  v9 = v0[10];
  v10 = v0[2];

  return v12(v10, v9, v6, v7);
}

uint64_t sub_100004180()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100008000, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100004338(uint64_t a1, uint64_t a2)
{
  v18[0] = a1;
  v18[1] = a2;
  v2 = sub_10000A93C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A6CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A87C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v18 - v15;
  (*(v7 + 16))(v9, v18[0], v6);
  sub_10000874C(v9);
  (*(v11 + 16))(v14, v16, v10);
  sub_10000A92C();
  sub_100006070(&qword_100014310, &qword_10000B0A8);
  sub_10000A8AC();
  (*(v3 + 8))(v5, v2);
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_1000045B0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_10000A67C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = sub_10000A9DC();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_10000A82C();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = sub_10000A90C();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000047B4, v1, 0);
}

uint64_t sub_1000047B4()
{
  v27 = v0;
  sub_100006070(&qword_100014320, &qword_10000B0D0);
  sub_10000A8BC();
  sub_10000A8FC();
  if (qword_1000146A0 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[21];
  v5 = sub_10000AA6C();
  v0[25] = sub_1000060B8(v5, qword_1000146A8);
  v6 = *(v4 + 16);
  v6(v1, v2, v3);
  v7 = sub_10000AA4C();
  v8 = sub_10000AB1C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[23];
  if (v9)
  {
    v11 = v0[21];
    v12 = v0[22];
    v13 = v0[20];
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_10000AAAC();
    v17 = v16;
    v18 = *(v11 + 8);
    v18(v10, v13);
    v19 = sub_1000061C8(v15, v17, &v26);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received request to upload %s", v14, 0xCu);
    sub_100006294(v25);
  }

  else
  {
    v20 = v0[20];
    v21 = v0[21];

    v18 = *(v21 + 8);
    v18(v10, v20);
  }

  v0[26] = v18;
  sub_10000A7DC();
  v22 = swift_task_alloc();
  v0[27] = v22;
  *v22 = v0;
  v22[1] = sub_100004A5C;
  v23 = v0[16];

  return sub_100001D98((v0 + 2), v23);
}

uint64_t sub_100004A5C()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = v2[16];
  v4 = v2[15];
  v5 = v2[14];
  v6 = v2[8];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_10000521C;
  }

  else
  {
    v7 = sub_100004BD8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100004BD8(uint64_t a1)
{
  v2 = sub_10000AA4C();
  v3 = sub_10000AB1C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting upload", v4, 2u);
  }

  v5 = v1[19];

  v1[29] = sub_10000A8CC();
  v6 = swift_task_alloc();
  v1[30] = v6;
  *(v6 + 16) = v1 + 2;
  *(v6 + 24) = v5;
  v7 = swift_task_alloc();
  v1[31] = v7;
  *v7 = v1;
  v7[1] = sub_100004D38;
  v8 = v1[13];
  v9 = v1[9];

  return SandboxExtension.withResource<A>(_:)(v8, &unk_10000B0E0, v6, v9);
}

uint64_t sub_100004D38()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 64);

  if (v0)
  {
    v4 = sub_100005320;
  }

  else
  {
    v4 = sub_100004E9C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100004E9C()
{
  v33 = v0;
  v1 = *(v0[10] + 16);
  v1(v0[12], v0[13], v0[9]);
  v2 = sub_10000AA4C();
  v3 = sub_10000AB1C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[12];
  if (v4)
  {
    v6 = v0[10];
    v7 = v0[11];
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v9 = 136315138;
    v1(v7, v5, v8);
    v10 = sub_10000AAAC();
    v12 = v11;
    v13 = *(v6 + 8);
    v13(v5, v8);
    v14 = sub_1000061C8(v10, v12, &v32);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Upload completed: %s", v9, 0xCu);
    sub_100006294(v31);
  }

  else
  {
    v15 = v0[9];
    v16 = v0[10];

    v13 = *(v16 + 8);
    v13(v5, v15);
  }

  v17 = v0[32];
  v18 = v0[13];
  v19 = v0[7];
  v20 = swift_task_alloc();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  sub_100002548();
  v21 = v0[26];
  if (v17)
  {
    v22 = v0[13];
    v23 = v0[9];
    (v21)(v0[24], v0[20]);

    v13(v22, v23);
    sub_100006294(v0 + 2);
    (*(v0[18] + 8))(v0[19], v0[17]);
  }

  else
  {
    v26 = v0[18];
    v25 = v0[19];
    v27 = v0[17];
    v28 = v0[13];
    v29 = v0[9];
    v21();

    v13(v28, v29);
    sub_100006294(v0 + 2);
    (*(v26 + 8))(v25, v27);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_10000521C()
{
  (*(v0 + 208))(*(v0 + 192), *(v0 + 160));
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005320()
{
  (*(v0 + 208))(*(v0 + 192), *(v0 + 160));
  sub_100006294((v0 + 16));
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000542C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = sub_10000A82C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_10000A69C();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10000554C, 0, 0);
}

uint64_t sub_10000554C()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = v5[3];
  v7 = v5[4];
  sub_100006BE8(v5, v6);
  (*(v2 + 16))(v1, v4, v3);
  sub_10000A458(v1);
  v12 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1000056CC;
  v9 = v0[10];
  v10 = v0[2];

  return v12(v10, v9, v6, v7);
}

uint64_t sub_1000056CC()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100005884, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100005884()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000058F4(uint64_t a1, uint64_t a2)
{
  v18[0] = a1;
  v18[1] = a2;
  v2 = sub_10000A8EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A67C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A81C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v18 - v15;
  (*(v7 + 16))(v9, v18[0], v6);
  sub_100009ED8(v9, v16);
  (*(v11 + 16))(v14, v16, v10);
  sub_10000A8DC();
  sub_100006070(&qword_100014320, &qword_10000B0D0);
  sub_10000A8AC();
  (*(v3 + 8))(v5, v2);
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_100005B6C()
{
  sub_1000016E4(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100005BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_10000AB6C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100005CB8, 0, 0);
}

uint64_t sub_100005CB8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_10000AB7C();
  v5 = sub_100007CC4(&qword_100014450, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_10000ABDC();
  sub_100007CC4(&qword_100014458, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_10000AB8C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100005E48;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100005E48()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100006004, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100006004()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100006070(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000060B8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000060F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008004;

  return sub_100003EE0(a1, v6, v5, v4);
}

unint64_t sub_1000061C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006674(v11, 0, 0, 1, a1, a2);
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
    sub_100007D0C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006294(v11);
  return v7;
}

uint64_t sub_100006294(void *a1)
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

uint64_t sub_1000062E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008004;

  return sub_10000542C(a1, v6, v5, v4);
}

unint64_t sub_1000063BC()
{
  result = qword_100014328;
  if (!qword_100014328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014328);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TelephonyTransferService.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TelephonyTransferService.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1000065AC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000065C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100006610(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_100006674(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100006780(a5, a6);
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
    result = sub_10000AB5C();
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

char *sub_100006780(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000067CC(a1, a2);
  sub_1000068FC(&off_100010778);
  return v3;
}

char *sub_1000067CC(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000069E8(v5, 0);
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

  result = sub_10000AB5C();
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
        v10 = sub_10000AACC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000069E8(v10, 0);
        result = sub_10000AB4C();
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

uint64_t sub_1000068FC(uint64_t result)
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

  result = sub_100006A5C(result, v11, 1, v3);
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

void *sub_1000069E8(uint64_t a1, uint64_t a2)
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

  sub_100006070(&qword_100014460, &unk_10000B330);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100006A5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006070(&qword_100014460, &unk_10000B330);
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

unint64_t sub_100006B50(uint64_t a1)
{
  sub_10000A64C();
  sub_100007CC4(&qword_100014430, &type metadata accessor for SubscriptionID, &protocol conformance descriptor for SubscriptionID);
  v2 = sub_10000AA7C();

  return sub_1000076B8(a1, v2);
}

void *sub_100006BE8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_100006C2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100006B50(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100007878();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_10000A64C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_1000015F4((*(v9 + 56) + 40 * v7), a2);
    sub_1000070F4(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100006D10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10000A64C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100006070(&qword_100014428, &qword_10000B240);
  v38 = v4;
  result = sub_10000ABAC();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_1000015F4((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_100007B54(*(v9 + 56) + 40 * v23, v43);
      }

      sub_100007CC4(&qword_100014430, &type metadata accessor for SubscriptionID, &protocol conformance descriptor for SubscriptionID);
      result = sub_10000AA7C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_1000015F4(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_1000070F4(int64_t a1, uint64_t a2)
{
  v42 = sub_10000A64C();
  v4 = *(v42 - 8);
  result = __chkstk_darwin(v42);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v43 = v6;
    v12 = sub_10000AB3C();
    v13 = v42;
    v6 = v43;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v39 = (v12 + 1) & v11;
    v40 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v41;
      v21 = v14;
      v22 = v15;
      v40(v41, *(v6 + 48) + v17 * v10, v13);
      sub_100007CC4(&qword_100014430, &type metadata accessor for SubscriptionID, &protocol conformance descriptor for SubscriptionID);
      v23 = sub_10000AA7C();
      result = (*v37)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v43;
          v27 = *(v43 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v43;
            v17 = v18;
            v14 = v21;
            v8 = v38;
          }

          else
          {
            v8 = v38;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v43;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 40 * a1;
          v30 = (v28 + 40 * v10);
          if (a1 != v10 || v29 >= v30 + 40)
          {
            v31 = *v30;
            v32 = v30[1];
            *(v29 + 32) = *(v30 + 4);
            *v29 = v31;
            *(v29 + 16) = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v38;
      v17 = v18;
      v6 = v43;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v6 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v35;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_100007418(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10000A64C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100006B50(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_100007878();
      goto LABEL_7;
    }

    sub_100006D10(v17, a3 & 1);
    v23 = sub_100006B50(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1000075F4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_10000ABCC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 40 * v14);
  sub_100006294(v21);

  return sub_1000015F4(a1, v21);
}

uint64_t sub_1000075F4(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10000A64C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1000015F4(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1000076B8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_10000A64C();
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
      sub_100007CC4(&qword_100014438, &type metadata accessor for SubscriptionID, &protocol conformance descriptor for SubscriptionID);
      v15 = sub_10000AA8C();
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

void *sub_100007878()
{
  v1 = v0;
  v29 = sub_10000A64C();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006070(&qword_100014428, &qword_10000B240);
  v3 = *v0;
  v4 = sub_10000AB9C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_100007B54(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = sub_1000015F4(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
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

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
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

unint64_t sub_100007B00()
{
  result = qword_100014448;
  if (!qword_100014448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014448);
  }

  return result;
}

uint64_t sub_100007B54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007BBC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008004;

  return sub_100002790(v2, v3, v4, v5, v0 + 40);
}

uint64_t sub_100007C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006070(&qword_100014440, &qword_10000B248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007CC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100007D0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007D6C()
{
  swift_unknownObjectRelease();
  sub_100006294((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100007DAC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007E44;

  return sub_100002790(v2, v3, v4, v5, v0 + 40);
}

uint64_t sub_100007E44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100007F38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100006070(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_100007F98(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100008008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000A9BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A64C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A9CC();
  v12 = sub_10000A9DC();
  (*(*(v12 - 8) + 8))(a1, v12);
  v13 = (*(v5 + 88))(v7, v4);
  if (v13 == enum case for CellularServiceID.SimSlot.one(_:))
  {
    v14 = &enum case for SubscriptionID.one(_:);
  }

  else
  {
    if (v13 != enum case for CellularServiceID.SimSlot.two(_:))
    {
      (*(v5 + 8))(v7, v4);
      v15 = 1;
      return (*(v9 + 56))(a2, v15, 1, v8);
    }

    v14 = &enum case for SubscriptionID.two(_:);
  }

  (*(v9 + 104))(v11, *v14, v8);
  (*(v9 + 32))(a2, v11, v8);
  v15 = 0;
  return (*(v9 + 56))(a2, v15, 1, v8);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000A99C();
  qword_1000148E8 = sub_10000A98C();
  type metadata accessor for TelephonyTransferService();
  qword_1000148F0 = sub_10000160C();
  sub_10000A95C();
  sub_100008700(&qword_100014470, &type metadata accessor for TransferService.FileDownloadRequest, &protocol conformance descriptor for TransferService.FileDownloadRequest);
  sub_10000A96C();
  sub_10000A90C();
  sub_100008700(&qword_100014478, &type metadata accessor for TransferService.FileUploadRequest, &protocol conformance descriptor for TransferService.FileUploadRequest);
  sub_10000A96C();
  sub_10000A97C();
  dispatch_main();
}

uint64_t sub_1000083AC()
{
  v4 = (*(*qword_1000148F0 + 160) + **(*qword_1000148F0 + 160));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100008748;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_1000084EC()
{
  v4 = (*(*qword_1000148F0 + 168) + **(*qword_1000148F0 + 168));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10000860C;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_10000860C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100008700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000874C(uint64_t a1)
{
  sub_10000A6AC();
  v2 = sub_100006070(&qword_100014480, &qword_10000B298);
  __chkstk_darwin(v2 - 8);
  sub_10000A6BC();
  sub_10000A86C();
  v3 = sub_10000A6CC();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t sub_100008830(uint64_t a1, uint64_t a2)
{
  v7 = (&async function pointer to dispatch thunk of FileTransferController.download(fileRequest:) + async function pointer to dispatch thunk of FileTransferController.download(fileRequest:));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008004;

  return v7(a1, a2);
}

uint64_t sub_1000088F0(uint64_t a1, uint64_t a2)
{
  v7 = (&async function pointer to dispatch thunk of FileTransferController.upload(fileRequest:) + async function pointer to dispatch thunk of FileTransferController.upload(fileRequest:));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007E44;

  return v7(a1, a2);
}

uint64_t sub_1000089B0(uint64_t a1)
{
  v2 = sub_100006070(&qword_100014488, &qword_10000B2C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_10000A61C();
  v6 = __chkstk_darwin(v5 - 8);
  __chkstk_darwin(v6);
  sub_10000A85C();
  sub_10000A83C();
  v7 = sub_10000A74C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_10000A6DC();
  v8 = sub_10000A88C();
  return (*(*(v8 - 8) + 8))(a1, v8);
}

uint64_t sub_100008B34()
{
  v0 = sub_10000AA6C();
  sub_100007F98(v0, qword_1000148F8);
  sub_1000060B8(v0, qword_1000148F8);
  return sub_100009B70(0x6F69747265737341, 0xE90000000000006ELL);
}

uint64_t sub_100008B9C()
{
  v0 = sub_10000AA6C();
  sub_100007F98(v0, qword_1000148D0);
  v1 = sub_1000060B8(v0, qword_1000148D0);
  if (qword_1000148C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000060B8(v0, qword_1000148F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100008C64(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  sub_100008CBC(a1, a2);
  return v4;
}

void *sub_100008CBC(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  if (qword_1000148C8 != -1)
  {
    swift_once();
  }

  v7 = sub_10000AA6C();
  sub_1000060B8(v7, qword_1000148D0);

  v8 = sub_10000AA4C();
  v9 = sub_10000AB1C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1000061C8(a1, a2, &v36);
    _os_log_impl(&_mh_execute_header, v8, v9, "Creating assertion for bundle: %s", v10, 0xCu);
    sub_100006294(v11);
  }

  v12 = sub_10000AA9C();
  v13 = [objc_opt_self() predicateMatchingBundleIdentifier:v12];

  sub_100009694(0, &qword_100014490, RBSProcessHandle_ptr);
  v14 = v13;
  v15 = sub_100009568(v14);
  if (v3)
  {

    swift_errorRetain();
    v16 = sub_10000AA4C();
    v17 = sub_10000AB2C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v18 = 136315394;
      v21 = sub_1000061C8(a1, a2, &v36);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v22;
      *v19 = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to create assertion for %s: %@", v18, 0x16u);
      sub_10000962C(v19);

      sub_100006294(v20);
    }

    else
    {
    }

    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v15;

    v24 = [v23 identity];
    v35 = [objc_opt_self() targetWithProcessIdentity:v24];

    v25 = sub_10000AA9C();
    v26 = sub_10000AA9C();
    v27 = [objc_opt_self() attributeWithDomain:v25 name:v26];

    sub_100006070(&qword_1000144A0, &qword_10000B2E8);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10000B2D0;
    *(v28 + 32) = v27;
    v29 = objc_allocWithZone(RBSAssertion);
    v30 = v27;
    v31 = sub_10000AA9C();
    sub_100009694(0, &qword_1000144A8, RBSAttribute_ptr);
    isa = sub_10000AADC().super.isa;

    v33 = [v29 initWithExplanation:v31 target:v35 attributes:isa];

    *(v4 + 16) = v33;
  }

  return v4;
}

id sub_1000091D0()
{
  v1 = v0;
  if (qword_1000148C8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AA6C();
  sub_1000060B8(v2, qword_1000148D0);
  v3 = sub_10000AA4C();
  v4 = sub_10000AB1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating client assertion", v5, 2u);
  }

  v6 = *(v1 + 16);

  return [v6 invalidate];
}

uint64_t sub_1000092C8()
{
  sub_1000091D0();

  return _swift_deallocClassInstance(v0, 24, 7);
}

void sub_100009304()
{
  v1 = v0;
  if (qword_1000148C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AA6C();
  sub_1000060B8(v2, qword_1000148F8);
  v3 = sub_10000AA4C();
  v4 = sub_10000AB1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Attempting to acquire client assertion", v5, 2u);
  }

  v6 = *(v1 + 16);
  v13 = 0;
  if ([v6 acquireWithError:&v13])
  {
    v7 = qword_1000148C8;
    v8 = v13;
    if (v7 != -1)
    {
      swift_once();
    }

    sub_1000060B8(v2, qword_1000148D0);
    v9 = sub_10000AA4C();
    v10 = sub_10000AB1C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Acquired client assertion", v11, 2u);
    }
  }

  else
  {
    v12 = v13;
    sub_10000A60C();

    swift_willThrow();
  }
}

id sub_100009568(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    sub_10000A60C();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_10000962C(uint64_t a1)
{
  v2 = sub_100006070(&qword_100014498, &qword_10000B2E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009694(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100009700(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = sub_10000A70C();
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000097B0;

  return static FileTransferController.makeController(for:)(a2);
}

uint64_t sub_1000097B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_1000098FC, 0, 0);
  }
}

uint64_t sub_1000098FC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v2[3] = *(v0 + 24);
  v2[4] = &off_1000109A0;
  *v2 = v1;
  return (*(v0 + 8))();
}

uint64_t sub_10000994C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = sub_10000A70C();
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000099FC;

  return static FileTransferController.makeController(for:)(a2);
}

uint64_t sub_1000099FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_100009B6C, 0, 0);
  }
}

uint64_t sub_100009B94@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for AppAssertion();

  result = sub_100008C64(a1, a2);
  if (!v3)
  {
    a3[3] = v7;
    a3[4] = &off_1000109B8;
    *a3 = result;
  }

  return result;
}

uint64_t sub_100009C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = sub_100006070(&qword_100014680, &qword_10000B3F8);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - v4;
  v6 = sub_10000A62C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000A61C();
  __chkstk_darwin(v7 - 8);
  sub_10000A76C();
  v13[0] = sub_10000A77C();
  sub_10000A78C();
  v8 = sub_100006070(&qword_100014480, &qword_10000B298);
  __chkstk_darwin(v8 - 8);
  sub_10000A75C();
  v9 = sub_10000AA3C();
  __chkstk_darwin(v9 - 8);
  sub_10000AA2C();
  sub_10000AA1C();
  sub_10000A79C();
  v10 = sub_10000A9EC();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_10000A9FC();
  v11 = sub_10000A7AC();
  return (*(*(v11 - 8) + 8))(a1, v11);
}

uint64_t sub_100009ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_100006070(&qword_100014688, &qword_10000B400);
  v4 = __chkstk_darwin(v3 - 8);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = &v37 - v6;
  v7 = sub_100006070(&qword_100014690, &qword_10000B408);
  __chkstk_darwin(v7 - 8);
  v41 = &v37 - v8;
  v9 = sub_10000A7AC();
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  v11 = __chkstk_darwin(v9);
  v37 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v15 = sub_10000A73C();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v37 - v20;
  v42 = sub_10000AA0C();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000A63C();
  __chkstk_darwin(v24 - 8);
  sub_10000A65C();
  sub_10000A66C();
  sub_10000A71C();
  v25 = *(v16 + 8);
  v25(v21, v15);
  sub_100009C2C(v14, v23);
  v45 = a1;
  sub_10000A66C();
  v26 = v43;
  sub_10000A72C();
  v27 = v26;
  v28 = v19;
  v29 = v38;
  v25(v28, v15);
  v30 = v44;
  v31 = v41;
  sub_10000A380(v26, v44);
  v32 = v39;
  v33 = 1;
  if ((*(v39 + 48))(v30, 1, v29) != 1)
  {
    (*(v32 + 32))(v14, v30, v29);
    v34 = v37;
    (*(v32 + 16))(v37, v14, v29);
    sub_100009C2C(v34, v31);
    (*(v32 + 8))(v14, v29);
    v33 = 0;
  }

  sub_10000A3F0(v27);
  (*(v40 + 56))(v31, v33, 1, v42);
  sub_10000A80C();
  v35 = sub_10000A67C();
  return (*(*(v35 - 8) + 8))(v45, v35);
}

uint64_t sub_10000A380(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006070(&qword_100014688, &qword_10000B400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A3F0(uint64_t a1)
{
  v2 = sub_100006070(&qword_100014688, &qword_10000B400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A458(uint64_t a1)
{
  v2 = sub_100006070(&qword_100014698, &qword_10000B410);
  __chkstk_darwin(v2 - 8);
  v3 = sub_10000A61C();
  __chkstk_darwin(v3 - 8);
  sub_10000A7FC();
  v4 = sub_100006070(&qword_100014480, &qword_10000B298);
  __chkstk_darwin(v4 - 8);
  sub_10000A7BC();
  v5 = sub_10000A7CC();
  __chkstk_darwin(v5);
  sub_10000A7EC();
  sub_10000A68C();
  v6 = sub_10000A82C();
  return (*(*(v6 - 8) + 8))(a1, v6);
}