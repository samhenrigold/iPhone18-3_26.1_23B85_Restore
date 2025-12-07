uint64_t sub_1000012F0()
{
  v0 = sub_100008CF4();
  sub_100008248(v0, qword_100010720);
  sub_100007D54(v0, qword_100010720);
  return sub_100008CE4();
}

uint64_t sub_100001374(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D4572656764656CLL;
  }

  else
  {
    v3 = 0x656C6C65636E6163;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xEB00000000797470;
  }

  if (*a2)
  {
    v5 = 0x6D4572656764656CLL;
  }

  else
  {
    v5 = 0x656C6C65636E6163;
  }

  if (*a2)
  {
    v6 = 0xEB00000000797470;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008DF4();
  }

  return v8 & 1;
}

uint64_t sub_100001428(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1684107116;
    }

    else
    {
      v4 = 0x7472617473;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x737365636F7270;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x64616F6C7075;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x64656873696E6966;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1684107116;
    }

    else
    {
      v9 = 0x7472617473;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x64616F6C7075;
    if (a2 != 3)
    {
      v6 = 0x64656873696E6966;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x737365636F7270;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_100008DF4();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

Swift::Int sub_100001598()
{
  sub_100008E44();
  sub_100008D34();

  return sub_100008E54();
}

uint64_t sub_100001628(uint64_t a1)
{
  sub_100008D34();
}

Swift::Int sub_1000016A4(uint64_t a1)
{
  sub_100008E44();
  sub_100008D34();

  return sub_100008E54();
}

uint64_t sub_100001730@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10000C798;
  v8._object = v3;
  v5 = sub_100008DE4(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100001790(uint64_t *a1@<X8>)
{
  v2 = 0x656C6C65636E6163;
  if (*v1)
  {
    v2 = 0x6D4572656764656CLL;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xEB00000000797470;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_1000017F8()
{
  sub_100008E44();
  sub_100008D34();

  return sub_100008E54();
}

uint64_t sub_1000018CC(uint64_t a1)
{
  sub_100008D34();
}

Swift::Int sub_10000198C(uint64_t a1)
{
  sub_100008E44();
  sub_100008D34();

  return sub_100008E54();
}

unint64_t sub_100001A5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000069A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100001A8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  v5 = 0xE700000000000000;
  v6 = 0x737365636F7270;
  v7 = 0xE600000000000000;
  v8 = 0x64616F6C7075;
  if (v2 != 3)
  {
    v8 = 0x64656873696E6966;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684107116;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100001B2C(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_100008BD4();
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v2[28] = *(v4 + 64);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v5 = sub_100008BF4();
  v2[32] = v5;
  v2[33] = *(v5 - 8);
  v2[34] = swift_task_alloc();
  v6 = sub_100008C14();
  v2[35] = v6;
  v7 = *(v6 - 8);
  v2[36] = v7;
  v2[37] = *(v7 + 64);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v8 = sub_100008AB4();
  v2[40] = v8;
  v2[41] = *(v8 - 8);
  v2[42] = swift_task_alloc();
  v9 = sub_100008BB4();
  v2[43] = v9;
  v2[44] = *(v9 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v10 = sub_1000088D4();
  v2[47] = v10;
  v2[48] = *(v10 - 8);
  v2[49] = swift_task_alloc();
  sub_100007D0C(&qword_100010068, &qword_100009388);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v11 = sub_100008C74();
  v2[52] = v11;
  v2[53] = *(v11 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v12 = sub_100008904();
  v2[57] = v12;
  v2[58] = *(v12 - 8);
  v2[59] = swift_task_alloc();

  return _swift_task_switch(sub_100001F0C, 0, 0);
}

uint64_t sub_100001F0C()
{
  if (qword_100010110 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = sub_100008CF4();
  *(v0 + 480) = sub_100007D54(v2, qword_100010720);
  v3 = v1;
  v4 = sub_100008CD4();
  v5 = sub_100008D84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_100008188(v8, &qword_100010090, &qword_100009390);
  }

  v11 = *(v0 + 464);
  v10 = *(v0 + 472);
  v12 = *(v0 + 456);

  sub_1000088F4();
  *(v0 + 488) = sub_1000088E4();
  *(v0 + 496) = v13;
  (*(v11 + 8))(v10, v12);
  sub_100008964();
  *(v0 + 504) = sub_100008954();
  *(v0 + 736) = 0;
  sub_100007D8C();
  v15 = sub_100008D54();
  *(v0 + 512) = v15;
  *(v0 + 520) = v14;

  return _swift_task_switch(sub_100002104, v15, v14);
}

uint64_t sub_100002104()
{
  *(v0 + 528) = sub_100007DE4();
  sub_100008944();

  return _swift_task_switch(sub_10000218C, 0, 0);
}

uint64_t sub_10000218C()
{
  v1 = *(v0 + 200);
  *(v0 + 536) = *v1;
  *(v0 + 544) = v1[1];
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = sub_100008D24();
  v4 = [v2 initWithSuiteName:v3];

  if (v4)
  {
    v5 = sub_100008D24();
    [v4 doubleForKey:v5];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  v9 = *(v0 + 440);
  v8 = *(v0 + 448);
  v11 = *(v0 + 424);
  v10 = *(v0 + 432);
  v12 = *(v0 + 416);
  sub_100008C64();
  v13 = *(v11 + 16);
  v13(v9, v8, v12);
  v13(v10, v8, v12);
  v14 = sub_100008CD4();
  v15 = sub_100008D84();
  v16 = os_log_type_enabled(v14, v15);
  v18 = *(v0 + 432);
  v17 = *(v0 + 440);
  v19 = *(v0 + 416);
  v20 = *(v0 + 424);
  if (v16)
  {
    v21 = swift_slowAlloc();
    *v21 = 134218240;
    sub_100008C34();
    v23 = v22;
    v24 = *(v20 + 8);
    v24(v17, v19);
    *(v21 + 4) = v23;
    *(v21 + 12) = 2048;
    sub_100008C24();
    v26 = v25;
    v24(v18, v19);
    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "TelemetryWorker: startTimestamp: %f -- endTimestamp: %f", v21, 0x16u);
  }

  else
  {

    v24 = *(v20 + 8);
    v24(v18, v19);
    v24(v17, v19);
  }

  *(v0 + 552) = v24;
  sub_100008C24();
  if (v27 <= v7)
  {

    v30 = sub_100008CD4();
    v31 = sub_100008DA4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v30, v31, "TelemetryWorker has processed already up to %f. Skipping execution.", v32, 0xCu);
    }

    v33 = *(v0 + 448);
    v34 = *(v0 + 416);

    v35 = objc_allocWithZone(sub_100008994());
    v38 = sub_100008984();

    v24(v33, v34);

    v36 = *(v0 + 8);

    return v36(v38);
  }

  else
  {
    *(v0 + 737) = 1;
    v28 = *(v0 + 520);
    v29 = *(v0 + 512);

    return _swift_task_switch(sub_1000025D8, v29, v28);
  }
}

uint64_t sub_1000025D8()
{
  sub_100008944();

  return _swift_task_switch(sub_100002654, 0, 0);
}

uint64_t sub_100002654()
{
  v2 = v0[50];
  v1 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[47];
  sub_100008C54();
  sub_1000088B4();
  (*(v4 + 8))(v3, v5);
  v6 = *(v4 + 56);
  v0[70] = v6;
  v0[71] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 0, 1, v5);
  sub_100008C44();
  v6(v2, 0, 1, v5);
  v7 = v0[65];
  v8 = v0[64];

  return _swift_task_switch(sub_100002774, v8, v7);
}

uint64_t sub_100002774()
{
  v2 = v0[50];
  v1 = v0[51];
  v0[72] = sub_100008934();
  sub_100008188(v2, &qword_100010068, &qword_100009388);
  sub_100008188(v1, &qword_100010068, &qword_100009388);

  return _swift_task_switch(sub_100002824, 0, 0);
}

uint64_t sub_100002824()
{
  if (*(*(v0 + 576) + 16))
  {
    v1 = sub_100008CD4();
    v2 = sub_100008D84();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Processing 24-hour analytics aggregation", v3, 2u);
    }

    *(v0 + 738) = 2;
    v4 = *(v0 + 520);
    v5 = *(v0 + 512);

    return _swift_task_switch(sub_100002B0C, v5, v4);
  }

  else
  {

    v6 = sub_100008CD4();
    v7 = sub_100008DA4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No events in ledger.", v8, 2u);
    }

    v9 = *(v0 + 552);
    v10 = *(v0 + 448);
    v11 = *(v0 + 416);

    sub_100007E38();
    v12 = objc_allocWithZone(sub_100008994());
    v15 = sub_100008974();

    v9(v10, v11);

    v13 = *(v0 + 8);

    return v13(v15);
  }
}

uint64_t sub_100002B0C()
{
  sub_100008944();

  return _swift_task_switch(sub_100002B88, 0, 0);
}

uint64_t sub_100002B88()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  v4 = enum case for BucketInterval.day(_:);
  v5 = *(v1 + 104);
  v0[73] = v5;
  v0[74] = (v1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v2, v4, v3);

  sub_100008B94();
  sub_100008BA4();
  sub_100008B84();
  v6 = swift_task_alloc();
  v0[75] = v6;
  *v6 = v0;
  v6[1] = sub_100002CA8;
  v7 = v0[72];
  v8 = v0[56];
  v9 = v0[46];

  return processTaskTelemetry(telemetryConfig:telemetryRange:allEvents:)(v9, v8, v7);
}

uint64_t sub_100002CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[14] = v4;
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = a3;
  v5[18] = a4;
  v5[76] = a2;

  return _swift_task_switch(sub_100002DB4, 0, 0);
}

uint64_t sub_100002DB4()
{
  v26 = v0;
  if (*(v0 + 608))
  {
    v1 = *(v0 + 120);
    *(v0 + 616) = vextq_s8(*(v0 + 136), *(v0 + 136), 8uLL);
    *(v0 + 632) = v1;
    *(v0 + 739) = 3;
    v2 = *(v0 + 520);
    v3 = *(v0 + 512);

    return _swift_task_switch(sub_1000030E8, v3, v2);
  }

  else
  {
    v4 = *(v0 + 192);

    v5 = v4;
    v6 = sub_100008CD4();
    v7 = sub_100008D84();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = sub_100008CA4();
      v11 = sub_100006400(v9, v10, &v25);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      v12 = sub_100008CB4();
      v14 = sub_100006400(v12, v13, &v25);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "TaskId: %s, TaskName: %s: asked to stop!", v8, 0x16u);
      swift_arrayDestroy();
    }

    v15 = *(v0 + 552);
    v16 = *(v0 + 448);
    v17 = *(v0 + 416);
    v18 = *(v0 + 368);
    v19 = *(v0 + 344);
    v20 = *(v0 + 352);
    v21 = objc_allocWithZone(sub_100008994());
    v24 = sub_100008984();

    (*(v20 + 8))(v18, v19);
    v15(v16, v17);

    v22 = *(v0 + 8);

    return v22(v24);
  }
}

uint64_t sub_1000030E8()
{
  sub_100008944();

  return _swift_task_switch(sub_100003164, 0, 0);
}

uint64_t sub_100003164()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 200);
  v5 = *(v4 + 40);
  *(v0 + 640) = v5;
  v6 = *(v4 + 32);
  *(v0 + 648) = v6;

  sub_1000069F4(v3, v1, v2, v6, v5);

  v7 = sub_100008CD4();
  v8 = sub_100008D84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Processing 7-day analytics aggregation", v9, 2u);
  }

  *(v0 + 740) = 2;
  v10 = *(v0 + 520);
  v11 = *(v0 + 512);

  return _swift_task_switch(sub_1000032B4, v11, v10);
}

uint64_t sub_1000032B4()
{
  sub_100008944();

  return _swift_task_switch(sub_100003330, 0, 0);
}

uint64_t sub_100003330()
{
  (*(v0 + 584))(*(v0 + 336), enum case for BucketInterval.week(_:), *(v0 + 320));
  sub_100008B84();
  v1 = swift_task_alloc();
  *(v0 + 656) = v1;
  *v1 = v0;
  v1[1] = sub_100003420;
  v2 = *(v0 + 576);
  v3 = *(v0 + 448);
  v4 = *(v0 + 360);

  return processTaskTelemetry(telemetryConfig:telemetryRange:allEvents:)(v4, v3, v2);
}

uint64_t sub_100003420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[19] = v4;
  v5[20] = a1;
  v5[21] = a2;
  v5[22] = a3;
  v5[23] = a4;
  v5[83] = a2;

  return _swift_task_switch(sub_100003548, 0, 0);
}

uint64_t sub_100003548()
{
  v28 = v0;
  if (*(v0 + 664))
  {
    v1 = *(v0 + 176);
    *(v0 + 672) = *(v0 + 184);
    *(v0 + 680) = v1;
    *(v0 + 741) = 3;
    v2 = *(v0 + 520);
    v3 = *(v0 + 512);

    return _swift_task_switch(sub_100003898, v3, v2);
  }

  else
  {
    v4 = *(v0 + 192);

    v5 = v4;
    v6 = sub_100008CD4();
    v7 = sub_100008D84();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = sub_100008CA4();
      v11 = sub_100006400(v9, v10, &v27);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      v12 = sub_100008CB4();
      v14 = sub_100006400(v12, v13, &v27);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "TaskId: %s, TaskName: %s: asked to stop!", v8, 0x16u);
      swift_arrayDestroy();
    }

    v25 = *(v0 + 552);
    v15 = *(v0 + 448);
    v16 = *(v0 + 416);
    v18 = *(v0 + 360);
    v17 = *(v0 + 368);
    v19 = *(v0 + 344);
    v20 = *(v0 + 352);
    v21 = objc_allocWithZone(sub_100008994());
    v26 = sub_100008984();

    v22 = *(v20 + 8);
    v22(v18, v19);
    v22(v17, v19);
    v25(v15, v16);

    v23 = *(v0 + 8);

    return v23(v26);
  }
}

uint64_t sub_100003898()
{
  sub_100008944();

  return _swift_task_switch(sub_100003914, 0, 0);
}

uint64_t sub_100003914()
{
  sub_1000069F4(*(v0 + 664), *(v0 + 680), *(v0 + 672), *(v0 + 648), *(v0 + 640));

  v1 = sub_100008CD4();
  v2 = sub_100008D84();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Processing custom telemetry", v3, 2u);
  }

  *(v0 + 742) = 2;
  v4 = *(v0 + 520);
  v5 = *(v0 + 512);

  return _swift_task_switch(sub_100003A30, v5, v4);
}

uint64_t sub_100003A30()
{
  sub_100008944();

  return _swift_task_switch(sub_100003AAC, 0, 0);
}

uint64_t sub_100003AAC()
{
  v1 = v0[70];
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[47];
  sub_100008C54();
  v1(v2, 0, 1, v4);
  sub_100008C44();
  v1(v3, 0, 1, v4);
  v5 = v0[65];
  v6 = v0[64];

  return _swift_task_switch(sub_100003B68, v6, v5);
}

uint64_t sub_100003B68()
{
  v2 = v0[50];
  v1 = v0[51];
  v0[86] = sub_100008924();
  sub_100008188(v2, &qword_100010068, &qword_100009388);
  sub_100008188(v1, &qword_100010068, &qword_100009388);

  return _swift_task_switch(sub_100003C20, 0, 0);
}

uint64_t sub_100003C20()
{

  v1 = sub_100008CD4();
  v2 = sub_100008D94();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[86];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v1, v2, "Custom Events: %ld", v5, 0xCu);
  }

  else
  {
  }

  v6 = swift_task_alloc();
  v0[87] = v6;
  *v6 = v0;
  v6[1] = sub_100003D64;
  v7 = v0[86];
  v8 = v0[56];

  return processCustomTelemetry(customTelemetryEvents:bucketRange:)(v7, v8);
}

uint64_t sub_100003D64(uint64_t a1)
{
  *(*v1 + 704) = a1;

  return _swift_task_switch(sub_100003E84, 0, 0);
}

uint64_t sub_100003E84()
{
  v27 = v0;
  if (*(v0 + 704))
  {
    *(v0 + 743) = 3;
    v1 = *(v0 + 520);
    v2 = *(v0 + 512);

    return _swift_task_switch(sub_1000041C8, v2, v1);
  }

  else
  {
    v3 = *(v0 + 192);

    v4 = v3;
    v5 = sub_100008CD4();
    v6 = sub_100008D84();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v7 = 136315394;
      v8 = sub_100008CA4();
      v10 = sub_100006400(v8, v9, &v26);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      v11 = sub_100008CB4();
      v13 = sub_100006400(v11, v12, &v26);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "TaskId: %s, TaskName: %s: asked to stop!", v7, 0x16u);
      swift_arrayDestroy();
    }

    v24 = *(v0 + 552);
    v14 = *(v0 + 448);
    v15 = *(v0 + 416);
    v17 = *(v0 + 360);
    v16 = *(v0 + 368);
    v18 = *(v0 + 344);
    v19 = *(v0 + 352);
    v20 = objc_allocWithZone(sub_100008994());
    v25 = sub_100008984();

    v21 = *(v19 + 8);
    v21(v17, v18);
    v21(v16, v18);
    v24(v14, v15);

    v22 = *(v0 + 8);

    return v22(v25);
  }
}

uint64_t sub_1000041C8()
{
  sub_100008944();

  return _swift_task_switch(sub_100004244, 0, 0);
}

uint64_t sub_100004244()
{
  v38 = v0;
  v1 = v0[88];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[36];
    v5 = *(v3 + 16);
    v3 += 16;
    v4 = v5;
    v6 = *(v3 + 64);
    v7 = v1 + ((v6 + 32) & ~v6);
    v8 = v0[33];
    v33 = (v8 + 8);
    v34 = (v8 + 104);
    v32 = *(v3 + 56);
    v31 = enum case for CoreAnalyticsEvents.customEventTelemetry(_:);
    v30 = (v6 + 16) & ~v6;
    v29 = (v3 + 16);
    v28 = (v3 - 8);
    v35 = v5;
    do
    {
      v36 = v2;
      v4(v0[39], v7, v0[35]);
      sub_100008C04();
      v23 = sub_100008CD4();
      v24 = sub_100008D94();
      if (os_log_type_enabled(v23, v24))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v37 = v10;
        *v9 = 136315138;
        sub_100008140(0, &qword_100010088, NSObject_ptr);
        v11 = sub_100008D14();
        v13 = v12;

        v14 = sub_100006400(v11, v13, &v37);

        *(v9 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v23, v24, "CUSTOM EVENT: %s", v9, 0xCu);
        sub_100007F2C(v10);
      }

      else
      {
      }

      v15 = v0[38];
      v16 = v0[39];
      v17 = v0[34];
      v18 = v0[35];
      v19 = v0[32];
      (*v34)(v17, v31, v19);
      sub_100008BE4();
      (*v33)(v17, v19);
      v20 = sub_100008D24();

      v4 = v35;
      v35(v15, v16, v18);
      v21 = swift_allocObject();
      (*v29)(v21 + v30, v15, v18);
      v0[6] = sub_100007EA4;
      v0[7] = v21;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_1000054E8;
      v0[5] = &unk_10000C980;
      v22 = _Block_copy(v0 + 2);

      AnalyticsSendEventLazy();
      _Block_release(v22);

      (*v28)(v16, v18);
      v7 += v32;
      v2 = v36 - 1;
    }

    while (v36 != 1);
  }

  *(v0 + 744) = 2;
  v25 = v0[65];
  v26 = v0[64];

  return _swift_task_switch(sub_100004628, v26, v25);
}

uint64_t sub_100004628()
{
  sub_100008944();

  return _swift_task_switch(sub_1000046A4, 0, 0);
}

uint64_t sub_1000046A4()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[76];
  v5 = sub_100008AC4();
  v0[89] = v5;

  v6 = swift_task_alloc();
  v0[90] = v6;
  *v6 = v0;
  v6[1] = sub_100004798;
  v7 = v0[56];
  v8.n128_u64[0] = v1;

  return processDediscoEvents(dediscoEventMap:telemetryRange:dailyTelemetryResults:)(v5, v7, v4, v2, v3, v8);
}

uint64_t sub_100004798(uint64_t a1)
{
  *(*v1 + 728) = a1;

  return _swift_task_switch(sub_100004914, 0, 0);
}

uint64_t sub_100004914()
{
  v27 = v0;
  if (*(v0 + 728))
  {
    *(v0 + 745) = 3;
    v1 = *(v0 + 520);
    v2 = *(v0 + 512);

    return _swift_task_switch(sub_100004C58, v2, v1);
  }

  else
  {
    v3 = *(v0 + 192);

    v4 = v3;
    v5 = sub_100008CD4();
    v6 = sub_100008D84();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v7 = 136315394;
      v8 = sub_100008CA4();
      v10 = sub_100006400(v8, v9, &v26);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      v11 = sub_100008CB4();
      v13 = sub_100006400(v11, v12, &v26);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "TaskId: %s, TaskName: %s: asked to stop!", v7, 0x16u);
      swift_arrayDestroy();
    }

    v24 = *(v0 + 552);
    v14 = *(v0 + 448);
    v15 = *(v0 + 416);
    v17 = *(v0 + 360);
    v16 = *(v0 + 368);
    v18 = *(v0 + 344);
    v19 = *(v0 + 352);
    v20 = objc_allocWithZone(sub_100008994());
    v25 = sub_100008984();

    v21 = *(v19 + 8);
    v21(v17, v18);
    v21(v16, v18);
    v24(v14, v15);

    v22 = *(v0 + 8);

    return v22(v25);
  }
}

uint64_t sub_100004C58()
{
  sub_100008944();

  return _swift_task_switch(sub_100004CD4, 0, 0);
}

uint64_t sub_100004CD4()
{
  v56 = v0;
  if (os_variant_has_internal_content())
  {
    v1 = v0[91];
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0[27];
      v6 = *(v3 + 16);
      v5 = v3 + 16;
      v4 = v6;
      v7 = *(v5 + 64);
      v8 = v1 + ((v7 + 32) & ~v7);
      v9 = (v5 - 8);
      v10 = v0[33];
      v51 = (v10 + 104);
      v50 = *(v5 + 56);
      v49 = enum case for CoreAnalyticsEvents.dediscoTelemetry(_:);
      v47 = (v7 + 16) & ~v7;
      v48 = (v10 + 8);
      v52 = v6;
      do
      {
        v26 = v0[30];
        v25 = v0[31];
        v27 = v0[26];
        v54 = v8;
        v4(v25);
        (v4)(v26, v25, v27);
        v28 = sub_100008CD4();
        v29 = sub_100008D84();
        v30 = os_log_type_enabled(v28, v29);
        v31 = v0[30];
        v32 = v0[26];
        if (v30)
        {
          v46 = v2;
          v11 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v55 = v45;
          *v11 = 136315138;
          sub_100008BC4();
          sub_100008140(0, &qword_100010088, NSObject_ptr);
          v12 = sub_100008D14();
          v14 = v13;

          v53 = *v9;
          (*v9)(v31, v32);
          v15 = sub_100006400(v12, v14, &v55);

          *(v11 + 4) = v15;
          _os_log_impl(&_mh_execute_header, v28, v29, "DeDisco Result: %s", v11, 0xCu);
          sub_100007F2C(v45);

          v2 = v46;
        }

        else
        {

          v53 = *v9;
          (*v9)(v31, v32);
        }

        v16 = v0[34];
        v18 = v0[31];
        v17 = v0[32];
        v19 = v0[29];
        v20 = v0[26];
        (*v51)(v16, v49, v17);
        sub_100008BE4();
        (*v48)(v16, v17);
        v21 = sub_100008D24();

        v52(v19, v18, v20);
        v22 = swift_allocObject();
        (*(v5 + 16))(v22 + v47, v19, v20);
        v0[12] = sub_100007F00;
        v0[13] = v22;
        v0[8] = _NSConcreteStackBlock;
        v0[9] = 1107296256;
        v0[10] = sub_1000054E8;
        v0[11] = &unk_10000C9D0;
        v23 = _Block_copy(v0 + 8);

        AnalyticsSendEventLazy();
        v24 = v23;
        v4 = v52;
        _Block_release(v24);

        v53(v18, v20);
        v8 = v54 + v50;
        --v2;
        v9 = (v5 - 8);
      }

      while (v2);
    }
  }

  v33 = objc_allocWithZone(NSUserDefaults);
  v34 = sub_100008D24();
  v35 = [v33 initWithSuiteName:v34];

  if (v35)
  {

    v36 = sub_100008CD4();
    v37 = sub_100008D84();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v0[79];
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v36, v37, "Marking lastProcessedTimestamp: %f", v39, 0xCu);
    }

    isa = sub_100008D64().super.super.isa;
    v41 = sub_100008D24();
    [v35 setValue:isa forKey:v41];
  }

  else
  {
  }

  *(v0 + 746) = 4;
  v42 = v0[65];
  v43 = v0[64];

  return _swift_task_switch(sub_1000052B0, v43, v42);
}

uint64_t sub_1000052B0()
{
  sub_100008944();

  return _swift_task_switch(sub_10000532C, 0, 0);
}

uint64_t sub_10000532C()
{
  v11 = v0[69];
  v1 = v0[56];
  v2 = v0[52];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[43];
  v6 = v0[44];
  v7 = objc_allocWithZone(sub_100008994());
  v12 = sub_100008984();

  v8 = *(v6 + 8);
  v8(v4, v5);
  v8(v3, v5);
  v11(v1, v2);

  v9 = v0[1];

  return v9(v12);
}

Class sub_1000054E8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100008140(0, &qword_100010088, NSObject_ptr);
    v4.super.isa = sub_100008D04().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

id sub_100005584(uint64_t a1)
{
  v2 = sub_1000088D4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007D0C(&qword_1000100A8, &qword_100009398);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v50 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100008140(0, &qword_1000100B0, NSNumber_ptr);
  isa = sub_100008DB4(1).super.super.isa;
  sub_1000089C4();
  v10 = *(v3 + 16);
  v10(v5, v9, v2);
  sub_100008188(v9, &qword_1000100A8, &qword_100009398);
  v48 = sub_1000088C4().super.isa;
  v11 = *(v3 + 8);
  v11(v5, v2);
  sub_1000089C4();
  v10(v5, &v9[*(v7 + 44)], v2);
  sub_100008188(v9, &qword_1000100A8, &qword_100009398);
  v46 = sub_1000088C4().super.isa;
  v11(v5, v2);
  sub_100008A74();
  v45 = sub_100008D24();

  sub_100008A84();
  v12 = sub_100008D24();

  sub_100008A34();
  v47 = sub_1000088C4().super.isa;
  v11(v5, v2);
  sub_100008A04();
  v13 = sub_100008D74().super.super.isa;
  sub_1000089D4();
  v14 = sub_100008D74().super.super.isa;
  sub_1000089E4();
  v15 = sub_100008D74().super.super.isa;
  v40 = v15;
  sub_100008A44();
  v16 = sub_100008D64().super.super.isa;
  v41 = v16;
  sub_100008A14();
  v17 = sub_100008D64().super.super.isa;
  v42 = v17;
  sub_100008A64();
  v18 = sub_100008D64().super.super.isa;
  v43 = v18;
  sub_100008A24();
  v19 = sub_100008D64().super.super.isa;
  v44 = v19;
  sub_100008A24();
  v20 = sub_100008D64().super.super.isa;
  v38 = v19;
  v36 = v17;
  v37 = v18;
  v34 = v15;
  v35 = v16;
  v32 = v13;
  v33 = v14;
  v21 = v14;
  v22 = v13;
  v23 = isa;
  v24 = v48;
  v25 = v45;
  v26 = v46;
  v27 = v12;
  v28 = v12;
  v29 = v47;
  v50 = [v50 initWithVersion:isa bucketStart:v48 bucketEnd:v46 taskName:v45 taskState:v28 latestEventTimestamp:v47 countCompleted:v32 countFailed:v33 countDeferred:v34 dailyExecutionLatency:v35 crossExecutionDelay:v36 executionCompletionTime:v37 executionFailureTime:v38 executionDeferralTime:v20];

  v30 = sub_100008A94();
  (*(*(v30 - 8) + 8))(a1, v30);
  return v50;
}

id sub_100005954(uint64_t a1)
{
  v2 = sub_1000088D4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007D0C(&qword_1000100A8, &qword_100009398);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100008140(0, &qword_1000100B0, NSNumber_ptr);
  isa = sub_100008DB4(1).super.super.isa;
  sub_100008AE4();
  v10 = *(v3 + 16);
  v10(v5, v9, v2);
  sub_100008188(v9, &qword_1000100A8, &qword_100009398);
  v24 = sub_1000088C4().super.isa;
  v11 = *(v3 + 8);
  v11(v5, v2);
  sub_100008AE4();
  v10(v5, &v9[*(v7 + 44)], v2);
  sub_100008188(v9, &qword_1000100A8, &qword_100009398);
  v12 = sub_1000088C4().super.isa;
  v11(v5, v2);
  sub_100008AD4();
  v13 = sub_100008D74().super.super.isa;
  sub_100008B34();
  v14 = sub_100008D74().super.super.isa;
  sub_100008B04();
  v15 = sub_100008D74().super.super.isa;
  sub_100008AF4();
  v16 = sub_100008D74().super.super.isa;
  sub_100008B14();
  v17 = sub_100008D74().super.super.isa;
  v18 = isa;
  v19 = v24;
  v20 = [v26 initWithVersion:isa bucketStart:v24 bucketEnd:v12 tasksCount:v13 tasksRun:v14 tasksDeferred:v15 tasksFailed:v16 tasksCompleted:v17];

  v21 = sub_100008B44();
  (*(*(v21 - 8) + 8))(a1, v21);
  return v20;
}

uint64_t sub_100005C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005CE8;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100005CE8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100005DE4(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_100005E8C;

  return sub_100001B2C(a1);
}

uint64_t sub_100005E8C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100005F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_10000606C;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_10000606C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100006160(uint64_t a1)
{
  v2 = sub_1000063AC();

  return MLHostExtension.configuration.getter(a1, v2);
}

double sub_1000061AC@<D0>(_OWORD *a1@<X8>)
{
  sub_100007B78(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100006248();
  sub_100008914();
  return 0;
}

unint64_t sub_100006248()
{
  result = qword_100010058;
  if (!qword_100010058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010058);
  }

  return result;
}

__n128 sub_10000629C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000062B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000062F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000063AC()
{
  result = qword_100010060;
  if (!qword_100010060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010060);
  }

  return result;
}

unint64_t sub_100006400(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000064CC(v11, 0, 0, 1, a1, a2);
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
    sub_1000081E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007F2C(v11);
  return v7;
}

unint64_t sub_1000064CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000065D8(a5, a6);
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
    result = sub_100008DD4();
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

char *sub_1000065D8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100006624(a1, a2);
  sub_100006754(&off_10000C8A8);
  return v3;
}

char *sub_100006624(uint64_t a1, unint64_t a2)
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

  v6 = sub_100006840(v5, 0);
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

  result = sub_100008DD4();
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
        v10 = sub_100008D44();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100006840(v10, 0);
        result = sub_100008DC4();
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

uint64_t sub_100006754(uint64_t result)
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

  result = sub_1000068B4(result, v11, 1, v3);
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

void *sub_100006840(uint64_t a1, uint64_t a2)
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

  sub_100007D0C(&qword_1000100B8, &qword_1000093A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000068B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007D0C(&qword_1000100B8, &qword_1000093A0);
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

unint64_t sub_1000069A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10000C7E8;
  v6._object = a2;
  v4 = sub_100008DE4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

void sub_1000069F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v143 = a5;
  v116 = a3;
  v115 = a2;
  v148 = sub_1000089B4();
  v114 = *(v148 - 8);
  v7 = __chkstk_darwin(v148);
  v151 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v8;
  __chkstk_darwin(v7);
  v144 = &v113 - v9;
  v10 = sub_100008B44();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v141 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v13;
  __chkstk_darwin(v12);
  v140 = (&v113 - v14);
  v121 = sub_100008AB4();
  v15 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_100008BF4();
  v146 = *(v153 - 8);
  __chkstk_darwin(v153);
  v152 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100008A94();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v138 = (&v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v24 = (&v113 - v23);
  v139 = v25;
  __chkstk_darwin(v22);
  v137 = &v113 - v27;
  v28 = *(a1 + 16);
  if (v28)
  {
    v135 = sub_100008140(0, &qword_100010098, BMLighthouseTaskTelemetry_ptr);
    v31 = *(v19 + 16);
    v30 = v19 + 16;
    v29 = v31;
    v32 = *(v30 + 64);
    v33 = a1 + ((v32 + 32) & ~v32);
    v133 = (v146 + 104);
    v132 = (v146 + 8);
    v131 = *(v30 + 56);
    v134 = v32;
    v130 = ((v32 + 16) & ~v32);
    LODWORD(v129) = enum case for CoreAnalyticsEvents.taskStatusTelemetry(_:);
    *&v128 = v30 + 16;
    v127 = &v156;
    v126 = (v30 - 8);
    v118 = (v15 + 8);
    *&v34 = 136315394;
    v117 = v34;
    *&v136 = v10;
    v150 = v11;
    v119 = a4;
    v147 = v31;
    do
    {
      v149 = v28;
      v48 = v137;
      (v29)(v137, v33, v18);
      v49 = sub_100005584(v48);
      [a4 sendEvent:v49];

      v51 = v152;
      v50 = v153;
      (*v133)(v152, v129, v153);
      sub_100008BE4();
      v52 = v51;
      v29 = v147;
      (*v132)(v52, v50);
      v53 = sub_100008D24();

      (v29)(v48, v33, v18);
      v54 = v130;
      v55 = swift_allocObject();
      (*v128)(v54 + v55, v48, v18);
      v158 = sub_100007F90;
      v159 = v55;
      aBlock = _NSConcreteStackBlock;
      v155 = 1107296256;
      v156 = sub_1000054E8;
      v157 = &unk_10000CA20;
      v56 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v56);

      if (qword_100010110 != -1)
      {
        swift_once();
      }

      v57 = sub_100008CF4();
      sub_100007D54(v57, qword_100010720);
      (v29)(v24, v33, v18);
      v58 = v138;
      (v29)(v138, v33, v18);
      v59 = sub_100008CD4();
      v60 = sub_100008D94();
      if (os_log_type_enabled(v59, v60))
      {
        v35 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        aBlock = v125;
        *v35 = v117;
        v36 = v120;
        v124 = v59;
        sub_1000089F4();
        v37 = sub_100008AA4();
        v123 = v60;
        v39 = v38;
        (*v118)(v36, v121);
        v122 = *v126;
        v122(v24, v18);
        v40 = sub_100006400(v37, v39, &aBlock);

        *(v35 + 4) = v40;
        *(v35 + 12) = 2080;
        sub_100008A54();
        sub_100008140(0, &qword_100010088, NSObject_ptr);
        v41 = sub_100008D14();
        v42 = v24;
        v43 = v30;
        v45 = v44;

        v122(v58, v18);
        v46 = sub_100006400(v41, v45, &aBlock);
        v30 = v43;
        v24 = v42;
        v29 = v147;

        *(v35 + 14) = v46;
        v47 = v124;
        _os_log_impl(&_mh_execute_header, v124, v123, "%s Output: %s", v35, 0x16u);
        swift_arrayDestroy();

        a4 = v119;
      }

      else
      {

        v61 = *v126;
        (*v126)(v58, v18);
        v61(v24, v18);
      }

      v11 = v150;
      v33 += v131;
      v28 = v149 - 1;
      v10 = v136;
    }

    while (v149 != 1);
  }

  v62 = v115;
  v63 = *(v115 + 16);
  v64 = v148;
  v65 = v151;
  if (v63)
  {
    v139 = sub_100008140(0, &qword_1000100A0, BMLighthouseDeviceTelemetry_ptr);
    v68 = *(v11 + 2);
    v67 = v11 + 16;
    v66 = v68;
    v69 = v67[64];
    v70 = v62 + ((v69 + 32) & ~v69);
    v137 = (v146 + 104);
    v135 = (v146 + 8);
    v134 = *(v67 + 7);
    v138 = v69;
    v133 = ((v69 + 16) & ~v69);
    LODWORD(v132) = enum case for CoreAnalyticsEvents.deviceStatusTelemetry(_:);
    v131 = (v67 + 16);
    v130 = &v156;
    v129 = (v67 - 8);
    *&v71 = 136315138;
    v128 = v71;
    v150 = v67;
    v147 = v68;
    do
    {
      v149 = v63;
      v78 = v140;
      (v66)(v140, v70, v10);
      v79 = sub_100005954(v78);
      [v143 sendEvent:v79];

      v81 = v152;
      v80 = v153;
      (*v137)(v152, v132, v153);
      sub_100008BE4();
      v82 = v81;
      v66 = v147;
      (*v135)(v82, v80);
      v83 = sub_100008D24();

      (v66)(v78, v70, v10);
      v84 = v133;
      v85 = swift_allocObject();
      (*v131)(&v84[v85], v78, v10);
      v158 = sub_1000080A8;
      v159 = v85;
      aBlock = _NSConcreteStackBlock;
      v155 = 1107296256;
      v156 = sub_1000054E8;
      v157 = &unk_10000CAC0;
      v86 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v86);

      if (qword_100010110 != -1)
      {
        swift_once();
      }

      v87 = sub_100008CF4();
      sub_100007D54(v87, qword_100010720);
      v88 = v141;
      (v66)(v141, v70, v10);
      v89 = sub_100008CD4();
      v90 = sub_100008D94();
      if (os_log_type_enabled(v89, v90))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        aBlock = v73;
        *v72 = v128;
        sub_100008B24();
        sub_100008140(0, &qword_100010088, NSObject_ptr);
        v74 = sub_100008D14();
        v76 = v75;

        (*v129)(v88, v10);
        v77 = sub_100006400(v74, v76, &aBlock);
        v65 = v151;
        v64 = v148;

        *(v72 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v89, v90, "Device Telemetry Output: %s", v72, 0xCu);
        sub_100007F2C(v73);

        v66 = v147;
      }

      else
      {

        (*v129)(v88, v10);
      }

      v70 += v134;
      v63 = v149 - 1;
    }

    while (v149 != 1);
  }

  v91 = *(v116 + 16);
  if (v91)
  {
    v92 = *(v114 + 80);
    v93 = v116 + ((v92 + 32) & ~v92);
    v94 = *(v146 + 104);
    v146 += 104;
    v149 = (v146 - 96);
    v150 = v94;
    v147 = (v114 + 16);
    v95 = *(v114 + 72);
    v141 = v92;
    v142 = (v92 + 16) & ~v92;
    v143 = v95;
    v140 = (v114 + 32);
    LODWORD(v139) = enum case for CoreAnalyticsEvents.pushTaskTelemetry(_:);
    v138 = &v156;
    v137 = (v114 + 8);
    *&v26 = 136315138;
    v136 = v26;
    do
    {
      v103 = v152;
      v102 = v153;
      (v150)(v152, v139, v153);
      sub_100008BE4();
      (*v149)(v103, v102);
      v104 = sub_100008D24();

      v105 = *v147;
      v106 = v144;
      (*v147)(v144, v93, v64);
      v107 = v142;
      v108 = swift_allocObject();
      (*v140)(v108 + v107, v106, v64);
      v158 = sub_100007FD4;
      v159 = v108;
      aBlock = _NSConcreteStackBlock;
      v155 = 1107296256;
      v156 = sub_1000054E8;
      v157 = &unk_10000CA70;
      v109 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v109);

      if (qword_100010110 != -1)
      {
        swift_once();
      }

      v110 = sub_100008CF4();
      sub_100007D54(v110, qword_100010720);
      v105(v65, v93, v64);
      v111 = sub_100008CD4();
      v112 = sub_100008D94();
      if (os_log_type_enabled(v111, v112))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        aBlock = v97;
        *v96 = v136;
        sub_1000089A4();
        sub_100008140(0, &qword_100010088, NSObject_ptr);
        v98 = sub_100008D14();
        v100 = v99;

        (*v137)(v151, v148);
        v101 = sub_100006400(v98, v100, &aBlock);

        *(v96 + 4) = v101;
        _os_log_impl(&_mh_execute_header, v111, v112, "Push Telemetry Output: %s", v96, 0xCu);
        sub_100007F2C(v97);

        v65 = v151;
        v64 = v148;
      }

      else
      {

        (*v137)(v65, v64);
      }

      v93 += v143;
      --v91;
    }

    while (v91);
  }
}

void sub_100007B78(void *a1@<X8>)
{
  v2 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v3 = [v2 Ledger];
  swift_unknownObjectRelease();
  v4 = [v3 TaskTelemetry];
  swift_unknownObjectRelease();
  v5 = [v4 source];

  v6 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v7 = [v6 Ledger];
  swift_unknownObjectRelease();
  v8 = [v7 DeviceTelemetry];
  swift_unknownObjectRelease();
  v9 = [v8 source];

  *a1 = 0xD000000000000010;
  a1[1] = 0x8000000100009620;
  a1[2] = 0xD000000000000017;
  a1[3] = 0x8000000100009640;
  a1[4] = v5;
  a1[5] = v9;
}

uint64_t sub_100007D0C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100007D54(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100007D8C()
{
  result = qword_100010070;
  if (!qword_100010070)
  {
    sub_100008964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010070);
  }

  return result;
}

unint64_t sub_100007DE4()
{
  result = qword_100010078;
  if (!qword_100010078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010078);
  }

  return result;
}

unint64_t sub_100007E38()
{
  result = qword_100010080;
  if (!qword_100010080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010080);
  }

  return result;
}

uint64_t sub_100007ED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007F2C(void *a1)
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

uint64_t sub_100008018(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100008140(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100008188(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100007D0C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000081E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100008248(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for TelemetryError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TelemetryError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TelemetryStates(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TelemetryStates(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100008580()
{
  result = qword_1000100C0;
  if (!qword_1000100C0)
  {
    sub_1000085E4(&qword_1000100C8, &qword_1000093C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C0);
  }

  return result;
}

uint64_t sub_1000085E4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100008630()
{
  result = qword_1000100D0;
  if (!qword_1000100D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D0);
  }

  return result;
}

unint64_t sub_100008688()
{
  result = qword_1000100D8;
  if (!qword_1000100D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D8);
  }

  return result;
}

unint64_t sub_1000086E0()
{
  result = qword_1000100E0;
  if (!qword_1000100E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E0);
  }

  return result;
}

unint64_t sub_100008738()
{
  result = qword_1000100E8;
  if (!qword_1000100E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E8);
  }

  return result;
}

unint64_t sub_100008790()
{
  result = qword_1000100F0;
  if (!qword_1000100F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100F0);
  }

  return result;
}

unint64_t sub_1000087E8()
{
  result = qword_1000100F8;
  if (!qword_1000100F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100F8);
  }

  return result;
}

unint64_t sub_100008840()
{
  result = qword_100010100;
  if (!qword_100010100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010100);
  }

  return result;
}