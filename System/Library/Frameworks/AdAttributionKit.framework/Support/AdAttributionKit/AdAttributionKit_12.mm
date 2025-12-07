uint64_t sub_100128CA8(uint64_t a1)
{
  v3 = v1[45];
  v2 = v1[46];
  v4 = v1[44];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Encountered error while scheduling follow up postback fetch %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  v11 = v6;
  v13 = v1[45];
  v12 = v1[46];
  v14 = v1[44];

  (*(v13 + 8))(v12, v14);
  swift_willThrow();

  v15 = v1[1];

  return v15();
}

uint64_t sub_100128E9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100128EBC, 0, 0);
}

void sub_100128EBC()
{
  v29 = v0;
  v1 = v0[3];
  if (!v1)
  {
    v8 = 0;
    goto LABEL_72;
  }

  v2 = v0[2];
  v3 = HIBYTE(v1) & 0xF;
  v4 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    goto LABEL_67;
  }

  if ((v1 & 0x1000000000000000) != 0)
  {

    v24 = sub_100148240(v2, v1, 10);
    v26 = v25;

    if (v26)
    {
      goto LABEL_67;
    }

    v8 = v24;
    goto LABEL_72;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v28[0] = v0[2];
    v28[1] = v1 & 0xFFFFFFFFFFFFFFLL;
    if (v2 == 43)
    {
      if (!v3)
      {
LABEL_79:
        __break(1u);
        return;
      }

      if (--v3)
      {
        v8 = 0;
        v17 = v28 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          if (!is_mul_ok(v8, 0xAuLL))
          {
            break;
          }

          v11 = __CFADD__(10 * v8, v18);
          v8 = 10 * v8 + v18;
          if (v11)
          {
            break;
          }

          ++v17;
          if (!--v3)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else if (v2 == 45)
    {
      if (!v3)
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (--v3)
      {
        v8 = 0;
        v12 = v28 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          if (!is_mul_ok(v8, 0xAuLL))
          {
            break;
          }

          v11 = 10 * v8 >= v13;
          v8 = 10 * v8 - v13;
          if (!v11)
          {
            break;
          }

          ++v12;
          if (!--v3)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else if (v3)
    {
      v8 = 0;
      v20 = v28;
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          break;
        }

        if (!is_mul_ok(v8, 0xAuLL))
        {
          break;
        }

        v11 = __CFADD__(10 * v8, v21);
        v8 = 10 * v8 + v21;
        if (v11)
        {
          break;
        }

        ++v20;
        if (!--v3)
        {
          goto LABEL_66;
        }
      }
    }
  }

  else
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      v3 = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v3 = _StringObject.sharedUTF8.getter();
    }

    v6 = *v3;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v14 = v4 - 1;
        if (v4 != 1)
        {
          v8 = 0;
          if (!v3)
          {
            goto LABEL_66;
          }

          v15 = (v3 + 1);
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            if (!is_mul_ok(v8, 0xAuLL))
            {
              break;
            }

            v11 = __CFADD__(10 * v8, v16);
            v8 = 10 * v8 + v16;
            if (v11)
            {
              break;
            }

            ++v15;
            if (!--v14)
            {
LABEL_57:
              LOBYTE(v3) = 0;
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      goto LABEL_78;
    }

    if (v6 == 45)
    {
      if (v4 >= 1)
      {
        v7 = v4 - 1;
        if (v4 != 1)
        {
          v8 = 0;
          if (!v3)
          {
            goto LABEL_66;
          }

          v9 = (v3 + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              break;
            }

            if (!is_mul_ok(v8, 0xAuLL))
            {
              break;
            }

            v11 = 10 * v8 >= v10;
            v8 = 10 * v8 - v10;
            if (!v11)
            {
              break;
            }

            ++v9;
            if (!--v7)
            {
              goto LABEL_57;
            }
          }
        }

        goto LABEL_65;
      }

      __break(1u);
      goto LABEL_77;
    }

    if (v4)
    {
      v8 = 0;
      if (!v3)
      {
        goto LABEL_66;
      }

      while (1)
      {
        v19 = *v3 - 48;
        if (v19 > 9)
        {
          break;
        }

        if (!is_mul_ok(v8, 0xAuLL))
        {
          break;
        }

        v11 = __CFADD__(10 * v8, v19);
        v8 = 10 * v8 + v19;
        if (v11)
        {
          break;
        }

        ++v3;
        if (!--v4)
        {
          goto LABEL_57;
        }
      }
    }
  }

LABEL_65:
  v8 = 0;
  LOBYTE(v3) = 1;
LABEL_66:
  if (v3)
  {
LABEL_67:
    sub_10003FB4C();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
    v23 = v0[1];

    v23();
    return;
  }

LABEL_72:
  v27 = v0[1];

  v27(v8, v1 == 0);
}

uint64_t sub_100129264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for Logger();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_100129328, 0, 0);
}

uint64_t sub_100129328(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[5];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Begin update postback", v8, 2u);
  }

  v10 = v1[6];
  v9 = v1[7];
  v11 = v1[5];

  (*(v10 + 8))(v9, v11);
  v12 = swift_task_alloc();
  v1[8] = v12;
  *v12 = v1;
  v12[1] = sub_10012947C;
  v14 = v1[3];
  v13 = v1[4];

  return sub_10012958C(v14, v13);
}

uint64_t sub_10012947C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10012958C(uint64_t a1, uint64_t a2)
{
  v3[57] = a2;
  v3[58] = v2;
  v3[56] = a1;
  v4 = type metadata accessor for Logger();
  v3[59] = v4;
  v3[60] = *(v4 - 8);
  v3[61] = swift_task_alloc();

  return _swift_task_switch(sub_100129650, 0, 0);
}

uint64_t sub_100129650()
{
  v1 = v0[57];
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = static ConversionType.allCasesSet.getter();
    v1 = v0[57];
  }

  v0[62] = v2;
  v3 = (v1 + *(type metadata accessor for PostbackUpdateData(0) + 36));
  v4 = *v3;
  v0[63] = *v3;
  v5 = v0[58];
  v6 = v0[56];
  if (v3[1])
  {
    v7 = *v5;
    v8 = v5[1];
    v9 = v5[2];
    v10 = swift_allocObject();
    v0[71] = v10;
    *(v10 + 16) = v6;
    *(v10 + 24) = v2;
    v23 = sub_100110084;

    v11 = swift_task_alloc();
    v0[72] = v11;
    *v11 = v0;
    v11[1] = sub_100129C54;
    v12 = sub_10014B0E0;
    v13 = v10;
    v14 = v7;
    v15 = v8;
    v16 = v9;
  }

  else
  {

    v18 = v5[3];
    v17 = v5[4];
    v19 = v5[5];
    v20 = swift_allocObject();
    v0[64] = v20;
    *(v20 + 16) = v6;
    *(v20 + 24) = v4;
    v23 = sub_10010F818;
    v21 = swift_task_alloc();
    v0[65] = v21;
    *v21 = v0;
    v21[1] = sub_100129868;
    v12 = sub_10014B150;
    v13 = v20;
    v14 = v18;
    v15 = v17;
    v16 = v19;
  }

  return v23(v12, v13, v14, v15, v16);
}

uint64_t sub_100129868(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = v1;

  if (v1)
  {
    v4 = sub_10012A450;
  }

  else
  {
    v4 = sub_1001299A0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001299A0()
{
  v1 = v0[63];
  v2 = v0[58];
  v3 = v0[56];
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = swift_allocObject();
  v0[68] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v1;
  v8 = swift_task_alloc();
  v0[69] = v8;
  *v8 = v0;
  v8[1] = sub_100129AAC;

  return sub_100110084(sub_10014B17C, v7, v5, v4, v6);
}

uint64_t sub_100129AAC(uint64_t a1)
{
  v4 = *v2;
  v4[70] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10012A604, 0, 0);
  }

  else
  {

    v5 = v4[66];
    v4[79] = v5;
    v4[78] = a1;
    v6 = swift_task_alloc();
    v4[80] = v6;
    *v6 = v4;
    v6[1] = sub_10012A188;
    v7 = v4[57];

    return sub_10012AB20(v5, v7);
  }
}

uint64_t sub_100129C54(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 584) = a1;
  *(v3 + 592) = v1;

  if (v1)
  {

    v4 = sub_10012A7B8;
  }

  else
  {
    v4 = sub_100129DA4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100129DA4()
{
  v1 = v0[62];
  v2 = v0[58];
  v3 = v0[56];
  v5 = v2[3];
  v4 = v2[4];
  v6 = v2[5];
  v7 = swift_allocObject();
  v0[75] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v1;
  v8 = swift_task_alloc();
  v0[76] = v8;
  *v8 = v0;
  v8[1] = sub_100129EB8;

  return sub_10010FAD4((v0 + 2), sub_10014B10C, v7, v5, v4, v6);
}

uint64_t sub_100129EB8()
{
  *(*v1 + 616) = v0;

  if (v0)
  {

    v2 = sub_10012A96C;
  }

  else
  {
    v2 = sub_100129FE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100129FE8()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  *(v0 + 384) = v2;
  *(v0 + 400) = v1;
  v4 = *(v0 + 112);
  v6 = *(v0 + 128);
  v5 = *(v0 + 144);
  *(v0 + 416) = v6;
  *(v0 + 432) = v5;
  v8 = *(v0 + 32);
  v7 = *(v0 + 48);
  v9 = *(v0 + 16);
  *(v0 + 320) = v8;
  *(v0 + 336) = v7;
  v10 = *(v0 + 48);
  v12 = *(v0 + 64);
  v11 = *(v0 + 80);
  *(v0 + 352) = v12;
  *(v0 + 368) = v11;
  v13 = *(v0 + 16);
  *(v0 + 256) = v4;
  *(v0 + 272) = v6;
  *(v0 + 288) = *(v0 + 144);
  *(v0 + 304) = v13;
  *(v0 + 192) = v10;
  *(v0 + 208) = v12;
  *(v0 + 224) = v3;
  *(v0 + 240) = v2;
  *(v0 + 160) = v9;
  *(v0 + 176) = v8;
  if (sub_10014B138(v0 + 160) != 1)
  {
    v14 = *(v0 + 584);
    if (!*(v14 + 16) || *(v14 + 264) < *(v0 + 256))
    {

      sub_10000CDE0(&qword_10023BC60, &qword_1001BA558);
      v15 = swift_allocObject();
      v16 = *(v0 + 256);
      v17 = *(v0 + 272);
      v18 = *(v0 + 224);
      v15[7] = *(v0 + 240);
      v15[8] = v16;
      v19 = *(v0 + 288);
      v15[9] = v17;
      v15[10] = v19;
      v20 = *(v0 + 192);
      v21 = *(v0 + 208);
      v22 = *(v0 + 160);
      v15[3] = *(v0 + 176);
      v15[4] = v20;
      v15[5] = v21;
      v15[6] = v18;
      v15[1] = xmmword_1001B93B0;
      v15[2] = v22;
      v23 = _swiftEmptyArrayStorage;
      goto LABEL_7;
    }

    sub_10000DAF8(v0 + 304, &qword_10023CBD8, &qword_1001C1840);
  }

  v23 = *(v0 + 584);
  v15 = _swiftEmptyArrayStorage;
LABEL_7:
  *(v0 + 632) = v15;
  *(v0 + 624) = v23;
  v24 = swift_task_alloc();
  *(v0 + 640) = v24;
  *v24 = v0;
  v24[1] = sub_10012A188;
  v25 = *(v0 + 456);

  return sub_10012AB20(v15, v25);
}

uint64_t sub_10012A188()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[81] = v3;
  *v3 = v2;
  v3[1] = sub_10012A318;
  v4 = v1[57];
  v5 = v1[78];

  return sub_10012D9CC(v5, v4);
}

uint64_t sub_10012A318()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10012A450(uint64_t a1)
{
  v3 = v1[60];
  v2 = v1[61];
  v4 = v1[59];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[56];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 134218242;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "updatePostback failed for app %llu with error: %@", v9, 0x16u);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v1[60] + 8))(v1[61], v1[59]);

  v12 = v1[1];

  return v12();
}

uint64_t sub_10012A604(uint64_t a1)
{
  v3 = v1[60];
  v2 = v1[61];
  v4 = v1[59];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[56];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 134218242;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "updatePostback failed for app %llu with error: %@", v9, 0x16u);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v1[60] + 8))(v1[61], v1[59]);

  v12 = v1[1];

  return v12();
}

uint64_t sub_10012A7B8(uint64_t a1)
{
  v3 = v1[60];
  v2 = v1[61];
  v4 = v1[59];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[56];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 134218242;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "updatePostback failed for app %llu with error: %@", v9, 0x16u);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v1[60] + 8))(v1[61], v1[59]);

  v12 = v1[1];

  return v12();
}

uint64_t sub_10012A96C(uint64_t a1)
{
  v3 = v1[60];
  v2 = v1[61];
  v4 = v1[59];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[56];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 134218242;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "updatePostback failed for app %llu with error: %@", v9, 0x16u);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v1[60] + 8))(v1[61], v1[59]);

  v12 = v1[1];

  return v12();
}

uint64_t sub_10012AB20(uint64_t a1, uint64_t a2)
{
  v3[132] = v2;
  v3[131] = a2;
  v3[130] = a1;
  v4 = type metadata accessor for Logger();
  v3[133] = v4;
  v3[134] = *(v4 - 8);
  v3[135] = swift_task_alloc();
  v5 = type metadata accessor for Calendar.Component();
  v3[136] = v5;
  v3[137] = *(v5 - 8);
  v3[138] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[139] = v6;
  v3[140] = *(v6 - 8);
  v3[141] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[142] = v7;
  *v7 = v3;
  v7[1] = sub_10012ACE4;

  return sub_100158594(17);
}

uint64_t sub_10012ACE4(uint64_t a1, char a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 1144) = a1;
  *(v3 + 1300) = a2;

  v4 = swift_task_alloc();
  *(v3 + 1152) = v4;
  *v4 = v6;
  v4[1] = sub_10012AE2C;

  return sub_100158594(18);
}

uint64_t sub_10012AE2C(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 1160) = a1;
  *(v3 + 1301) = a2;

  return _swift_task_switch(sub_10012AF30, 0, 0);
}

uint64_t sub_10012AF30()
{
  v1 = *(v0 + 1040);
  v2 = *(v1 + 16);
  *(v0 + 1168) = v2;
  if (v2)
  {
    *(v0 + 1284) = enum case for Calendar.Component.hour(_:);
    *(v0 + 1176) = 0;
    v3 = *(v0 + 1048);
    v4 = v1;
    if (*(v0 + 1300))
    {
      v5 = 60.0;
    }

    else
    {
      v5 = *(v0 + 1144);
    }

    if (*(v0 + 1301))
    {
      v6 = 2.0;
    }

    else
    {
      v6 = *(v0 + 1160);
    }

    *(v0 + 688) = *(v1 + 32);
    v7 = *(v1 + 96);
    v9 = *(v1 + 48);
    v8 = *(v1 + 64);
    *(v0 + 736) = *(v1 + 80);
    *(v0 + 752) = v7;
    *(v0 + 704) = v9;
    *(v0 + 720) = v8;
    v10 = *(v1 + 160);
    v12 = *(v1 + 112);
    v11 = *(v1 + 128);
    *(v0 + 800) = *(v1 + 144);
    *(v0 + 816) = v10;
    *(v0 + 768) = v12;
    *(v0 + 784) = v11;
    v13 = swift_allocObject();
    *(v0 + 1184) = v13;
    v14 = v4[4];
    v15 = v4[5];
    v16 = v4[6];
    v13[2] = v4[3];
    v13[3] = v14;
    v13[4] = v15;
    v13[5] = v16;
    v17 = v4[8];
    v18 = v4[9];
    v19 = v4[10];
    v13[6] = v4[7];
    v13[7] = v17;
    v13[8] = v18;
    v13[9] = v19;
    v13[1] = v4[2];
    swift_beginAccess();
    sub_100070EEC(v0 + 688, v0 + 832);
    sub_10006FCD8(v3, v5, v6);
    v22 = *(v0 + 1056);
    swift_endAccess();
    v24 = v22[3];
    v23 = v22[4];
    v25 = v22[5];

    *(v0 + 1000) = &type metadata for GhostbackDatabaseStore;
    *(v0 + 1008) = sub_100146E28();
    *(v0 + 976) = v24;
    *(v0 + 984) = v23;
    *(v0 + 992) = v25;

    v26 = v25;
    v27 = swift_task_alloc();
    *(v0 + 1192) = v27;
    v27[2] = v26;
    v27[3] = v0 + 976;
    v27[4] = sub_10014D2E0;
    v27[5] = v13;
    v28 = swift_task_alloc();
    *(v0 + 1200) = v28;
    *v28 = v0;
    v28[1] = sub_10012B934;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v28, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D284, v27, &type metadata for () + 8);
  }

  else
  {

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_10012B934()
{
  v2 = *v1;
  *(*v1 + 1208) = v0;

  if (v0)
  {
    v3 = sub_10012BA64;
  }

  else
  {

    sub_10000DB58((v2 + 976));
    v3 = sub_10012C478;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012BA64()
{
  v95 = v0;

  sub_10000DB58((v0 + 976));
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1064);
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1184);
  v10 = *(v0 + 1080);
  v11 = *(v0 + 1072);
  v12 = *(v0 + 1064);
  if (v8)
  {
    v92 = *(v0 + 1064);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v94[0] = v88;
    *v13 = 136315394;
    v15 = v1;
    v90 = v10;
    v17 = *(v9 + 72);
    v16 = *(v9 + 80);

    v18 = v17;
    v1 = v15;
    v19 = sub_10017AD04(v18, v16, v94);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to update ghostback %s with error: %@", v13, 0x16u);
    sub_10000DAF8(v14, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v88);

    (*(v11 + 8))(v90, v92);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  if (*(v0 + 739))
  {
    v21 = *(v0 + 1168);
    v22 = *(v0 + 1176) + 1;

    if (v22 == v21)
    {

      v70 = *(v0 + 8);

      return v70();
    }

    else
    {
      v23 = *(v0 + 1176);
      *(v0 + 1176) = v23 + 1;
      v24 = *(v0 + 1048);
      if (*(v0 + 1300))
      {
        v25 = 60.0;
      }

      else
      {
        v25 = *(v0 + 1144);
      }

      if (*(v0 + 1301))
      {
        v26 = 2.0;
      }

      else
      {
        v26 = *(v0 + 1160);
      }

      v27 = (*(v0 + 1040) + 144 * v23);
      *(v0 + 688) = v27[11];
      v28 = v27[15];
      v30 = v27[12];
      v29 = v27[13];
      *(v0 + 736) = v27[14];
      *(v0 + 752) = v28;
      *(v0 + 704) = v30;
      *(v0 + 720) = v29;
      v31 = v27[19];
      v33 = v27[16];
      v32 = v27[17];
      *(v0 + 800) = v27[18];
      *(v0 + 816) = v31;
      *(v0 + 768) = v33;
      *(v0 + 784) = v32;
      v34 = swift_allocObject();
      *(v0 + 1184) = v34;
      v35 = v27[13];
      v36 = v27[14];
      v37 = v27[15];
      v34[2] = v27[12];
      v34[3] = v35;
      v34[4] = v36;
      v34[5] = v37;
      v38 = v27[17];
      v39 = v27[18];
      v40 = v27[19];
      v34[6] = v27[16];
      v34[7] = v38;
      v34[8] = v39;
      v34[9] = v40;
      v34[1] = v27[11];
      swift_beginAccess();
      sub_100070EEC(v0 + 688, v0 + 832);
      sub_10006FCD8(v24, v25, v26);
      v71 = *(v0 + 1056);
      swift_endAccess();
      v73 = v71[3];
      v72 = v71[4];
      v74 = v71[5];

      *(v0 + 1000) = &type metadata for GhostbackDatabaseStore;
      *(v0 + 1008) = sub_100146E28();
      *(v0 + 976) = v73;
      *(v0 + 984) = v72;
      *(v0 + 992) = v74;

      v75 = v74;
      v76 = swift_task_alloc();
      *(v0 + 1192) = v76;
      v76[2] = v75;
      v76[3] = v0 + 976;
      v76[4] = sub_10014D2E0;
      v76[5] = v34;
      v77 = swift_task_alloc();
      *(v0 + 1200) = v77;
      *v77 = v0;
      v77[1] = sub_10012B934;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v77, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D284, v76, &type metadata for () + 8);
    }
  }

  else
  {
    v79 = (v0 + 1294);
    v83 = (v0 + 1289);
    v84 = (v0 + 1278);
    v81 = (v0 + 1273);
    v82 = (v0 + 1265);
    v80 = (v0 + 1257);
    v78 = (v0 + 1249);
    swift_errorRetain();
    v41 = sub_1000C7C10(v1);
    v87 = v42;
    v89 = v43;
    v85 = v41;
    v86 = v44;
    *(v0 + 1224) = v1;
    *(v0 + 1216) = 0;
    v93 = *(v0 + 1184);
    v45 = *(v0 + 1284);
    v46 = *(v0 + 1128);
    v47 = *(v0 + 1120);
    v48 = *(v0 + 1112);
    v49 = *(v0 + 1104);
    v50 = *(v0 + 1096);
    v51 = *(v0 + 1088);
    v91 = *(v0 + 1056);
    static Date.now.getter();
    (*(v50 + 104))(v49, v45, v51);
    v52 = sub_100025808(v46, v49);
    v54 = v53;
    (*(v50 + 8))(v49, v51);
    (*(v47 + 8))(v46, v48);
    if (v54)
    {
      v55 = 0;
    }

    else
    {
      v55 = v52;
    }

    v56 = [objc_opt_self() buildVersion];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    *(v0 + 340) = *(v0 + 1252);
    *(v0 + 337) = *v78;
    *(v0 + 354) = *v79;
    *(v0 + 372) = *(v0 + 1260);
    *(v0 + 369) = *v80;
    *(v0 + 387) = *v81;
    *(v0 + 404) = *(v0 + 1268);
    *(v0 + 401) = *v82;
    *(v0 + 427) = *v83;
    *(v0 + 1248) = 1;
    *(v0 + 1256) = 1;
    *(v0 + 1264) = 1;
    *(v0 + 1272) = 1;
    *(v0 + 1288) = 1;
    *(v0 + 18) = *v84;
    *(v0 + 22) = *(v0 + 1282);
    *(v0 + 321) = 33686018;
    *(v0 + 97) = 33686018;
    *(v0 + 113) = *v78;
    *(v0 + 116) = *(v0 + 1252);
    *(v0 + 130) = *v79;
    *(v0 + 134) = *(v0 + 1298);
    *(v0 + 148) = *(v0 + 1260);
    *(v0 + 145) = *v80;
    *(v0 + 385) = 770;
    *(v0 + 161) = 770;
    *(v0 + 167) = *(v0 + 1277);
    *(v0 + 163) = *v81;
    *(v0 + 177) = *v82;
    *(v0 + 180) = *(v0 + 1268);
    *(v0 + 207) = *(v0 + 1293);
    *(v0 + 16) = 517;
    *(v0 + 203) = *v83;
    *(v0 + 240) = 517;
    *(v0 + 246) = *(v0 + 1282);
    *(v0 + 242) = *v84;
    *(v0 + 248) = v85;
    *(v0 + 24) = v85;
    *(v0 + 32) = v87;
    *(v0 + 256) = v87;
    *(v0 + 264) = v89;
    *(v0 + 40) = v89;
    *(v0 + 48) = v86;
    *(v0 + 272) = v86;
    *(v0 + 296) = v55;
    *(v0 + 304) = v57;
    *(v0 + 72) = v55;
    *(v0 + 80) = v57;
    *(v0 + 88) = v59;
    *(v0 + 312) = v59;
    v60 = *(v0 + 1248);
    *(v0 + 112) = v60;
    *(v0 + 336) = v60;
    v61 = *(v0 + 1256);
    *(v0 + 128) = v61;
    *(v0 + 352) = v61;
    *(v0 + 129) = 3;
    *(v0 + 353) = 3;
    *(v0 + 358) = *(v0 + 1298);
    v62 = *(v0 + 1264);
    *(v0 + 144) = v62;
    *(v0 + 368) = v62;
    v63 = *(v0 + 1272);
    *(v0 + 160) = v63;
    *(v0 + 384) = v63;
    *(v0 + 391) = *(v0 + 1277);
    v64 = *(v0 + 1288);
    *(v0 + 176) = v64;
    *(v0 + 400) = v64;
    *(v0 + 200) = 514;
    *(v0 + 424) = 514;
    *(v0 + 202) = 2;
    *(v0 + 426) = 2;
    *(v0 + 431) = *(v0 + 1293);
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 96) = 0;
    *(v0 + 101) = 0;
    *(v0 + 104) = 0;
    *(v0 + 120) = 0;
    *(v0 + 136) = 0;
    *(v0 + 152) = 0;
    *(v0 + 168) = 0;
    *(v0 + 184) = 0;
    *(v0 + 192) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 280) = 0;
    *(v0 + 288) = 0;
    *(v0 + 320) = 0;
    *(v0 + 325) = 0;
    *(v0 + 328) = 0;
    *(v0 + 344) = 0;
    *(v0 + 360) = 0;
    *(v0 + 376) = 0;
    *(v0 + 392) = 0;
    *(v0 + 408) = 0;
    *(v0 + 416) = 0;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    sub_100010568(v0 + 16, v0 + 464);
    sub_10003AE8C(v0 + 240);
    sub_10000DA7C((v91 + 560), *(v91 + 584));
    v65 = *(v93 + 72);
    v66 = *(v93 + 80);
    *(v0 + 1232) = v66;
    v67 = type metadata accessor for SnoutManager(0);

    v68 = swift_task_alloc();
    *(v0 + 1240) = v68;
    *v68 = v0;
    v68[1] = sub_10012CE94;

    return (sub_10016E27C)(v0 + 16, v65, v66, 1, v67, &off_100223858);
  }
}

uint64_t sub_10012C478(uint64_t a1)
{
  v97 = v1;
  if (*(v1 + 739))
  {
    v2 = *(v1 + 1208);
    while (1)
    {
      v11 = *(v1 + 1168);
      v12 = *(v1 + 1176) + 1;

      if (v12 == v11)
      {
        break;
      }

      v13 = *(v1 + 1176);
      *(v1 + 1176) = v13 + 1;
      v14 = *(v1 + 1048);
      if (*(v1 + 1300))
      {
        v15 = 60.0;
      }

      else
      {
        v15 = *(v1 + 1144);
      }

      if (*(v1 + 1301))
      {
        v16 = 2.0;
      }

      else
      {
        v16 = *(v1 + 1160);
      }

      v17 = (*(v1 + 1040) + 144 * v13);
      *(v1 + 688) = v17[11];
      v18 = v17[15];
      v20 = v17[12];
      v19 = v17[13];
      *(v1 + 736) = v17[14];
      *(v1 + 752) = v18;
      *(v1 + 704) = v20;
      *(v1 + 720) = v19;
      v21 = v17[19];
      v23 = v17[16];
      v22 = v17[17];
      *(v1 + 800) = v17[18];
      *(v1 + 816) = v21;
      *(v1 + 768) = v23;
      *(v1 + 784) = v22;
      v24 = swift_allocObject();
      *(v1 + 1184) = v24;
      v25 = v17[13];
      v26 = v17[14];
      v27 = v17[15];
      v24[2] = v17[12];
      v24[3] = v25;
      v24[4] = v26;
      v24[5] = v27;
      v28 = v17[17];
      v29 = v17[18];
      v30 = v17[19];
      v24[6] = v17[16];
      v24[7] = v28;
      v24[8] = v29;
      v24[9] = v30;
      v24[1] = v17[11];
      swift_beginAccess();
      sub_100070EEC(v1 + 688, v1 + 832);
      sub_10006FCD8(v14, v15, v16);
      if (!v2)
      {
        v45 = *(v1 + 1056);
        swift_endAccess();
        v47 = v45[3];
        v46 = v45[4];
        v48 = v45[5];

        *(v1 + 1000) = &type metadata for GhostbackDatabaseStore;
        *(v1 + 1008) = sub_100146E28();
        *(v1 + 976) = v47;
        *(v1 + 984) = v46;
        *(v1 + 992) = v48;

        v49 = v48;
        v50 = swift_task_alloc();
        *(v1 + 1192) = v50;
        v50[2] = v49;
        v50[3] = v1 + 976;
        v50[4] = sub_10014D2E0;
        v50[5] = v24;
        v51 = swift_task_alloc();
        *(v1 + 1200) = v51;
        *v51 = v1;
        v51[1] = sub_10012B934;

        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v51, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D284, v50, &type metadata for () + 8);
      }

      v10 = v2;
      swift_endAccess();
      v31 = *(v1 + 1080);
      v32 = *(v1 + 1072);
      v33 = *(v1 + 1064);
      v34 = Logger.postback.unsafeMutableAddressor();
      (*(v32 + 16))(v31, v34, v33);

      swift_errorRetain();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v1 + 1184);
      v39 = *(v1 + 1080);
      v40 = *(v1 + 1072);
      v41 = *(v1 + 1064);
      if (v37)
      {
        v92 = *(v1 + 1064);
        v3 = swift_slowAlloc();
        v4 = swift_slowAlloc();
        v94 = v10;
        v96[0] = swift_slowAlloc();
        v5 = v96[0];
        *v3 = 136315394;
        v90 = v39;
        v6 = *(v38 + 72);
        v7 = *(v38 + 80);

        v8 = sub_10017AD04(v6, v7, v96);

        *(v3 + 4) = v8;
        *(v3 + 12) = 2112;
        swift_errorRetain();
        v9 = _swift_stdlib_bridgeErrorToNSError();
        *(v3 + 14) = v9;
        *v4 = v9;
        _os_log_impl(&_mh_execute_header, v35, v36, "Failed to update ghostback %s with error: %@", v3, 0x16u);
        sub_10000DAF8(v4, &qword_100239F10, &qword_1001B4FD0);

        sub_10000DB58(v5);
        v10 = v94;

        (*(v40 + 8))(v90, v92);
      }

      else
      {

        (*(v40 + 8))(v39, v41);
      }

      v2 = 0;
      if ((*(v1 + 739) & 1) == 0)
      {
        swift_errorRetain();
        v52 = sub_1000C7C10(v10);
        v93 = v53;
        v95 = v52;
        v91 = v54;
        v89 = v55;
        v42 = 0;
        goto LABEL_23;
      }
    }

    v43 = *(v1 + 8);

    return v43();
  }

  else
  {
    v10 = 0;
    v93 = 0;
    v95 = 0;
    v91 = 0;
    v89 = 0;
    v42 = *(v1 + 1208);
LABEL_23:
    *(v1 + 1224) = v10;
    v82 = (v1 + 1257);
    *(v1 + 1216) = v42;
    v86 = (v1 + 1278);
    v88 = *(v1 + 1184);
    v80 = (v1 + 1249);
    v81 = (v1 + 1294);
    v84 = (v1 + 1265);
    v85 = (v1 + 1289);
    v56 = *(v1 + 1284);
    v57 = *(v1 + 1128);
    v58 = *(v1 + 1120);
    v59 = *(v1 + 1112);
    v60 = *(v1 + 1104);
    v83 = (v1 + 1273);
    v61 = *(v1 + 1096);
    v62 = *(v1 + 1088);
    v87 = *(v1 + 1056);
    static Date.now.getter();
    (*(v61 + 104))(v60, v56, v62);
    v63 = sub_100025808(v57, v60);
    v65 = v64;
    (*(v61 + 8))(v60, v62);
    (*(v58 + 8))(v57, v59);
    if (v65)
    {
      v66 = 0;
    }

    else
    {
      v66 = v63;
    }

    v67 = [objc_opt_self() buildVersion];
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    *(v1 + 340) = *(v1 + 1252);
    *(v1 + 337) = *v80;
    *(v1 + 354) = *v81;
    *(v1 + 372) = *(v1 + 1260);
    *(v1 + 369) = *v82;
    *(v1 + 387) = *v83;
    *(v1 + 404) = *(v1 + 1268);
    *(v1 + 401) = *v84;
    *(v1 + 427) = *v85;
    *(v1 + 1248) = 1;
    *(v1 + 1256) = 1;
    *(v1 + 1264) = 1;
    *(v1 + 1272) = 1;
    *(v1 + 1288) = 1;
    *(v1 + 18) = *v86;
    *(v1 + 22) = *(v1 + 1282);
    *(v1 + 321) = 33686018;
    *(v1 + 97) = 33686018;
    *(v1 + 113) = *v80;
    *(v1 + 116) = *(v1 + 1252);
    *(v1 + 130) = *v81;
    *(v1 + 134) = *(v1 + 1298);
    *(v1 + 148) = *(v1 + 1260);
    *(v1 + 145) = *v82;
    *(v1 + 385) = 770;
    *(v1 + 161) = 770;
    *(v1 + 167) = *(v1 + 1277);
    *(v1 + 163) = *v83;
    *(v1 + 177) = *v84;
    *(v1 + 16) = 517;
    *(v1 + 180) = *(v1 + 1268);
    *(v1 + 207) = *(v1 + 1293);
    *(v1 + 203) = *v85;
    *(v1 + 240) = 517;
    *(v1 + 246) = *(v1 + 1282);
    *(v1 + 242) = *v86;
    *(v1 + 248) = v95;
    *(v1 + 256) = v93;
    *(v1 + 24) = v95;
    *(v1 + 32) = v93;
    *(v1 + 264) = v91;
    *(v1 + 40) = v91;
    *(v1 + 48) = v89;
    *(v1 + 272) = v89;
    *(v1 + 296) = v66;
    *(v1 + 304) = v68;
    *(v1 + 72) = v66;
    *(v1 + 80) = v68;
    *(v1 + 88) = v70;
    *(v1 + 312) = v70;
    v71 = *(v1 + 1248);
    *(v1 + 112) = v71;
    *(v1 + 336) = v71;
    v72 = *(v1 + 1256);
    *(v1 + 128) = v72;
    *(v1 + 352) = v72;
    *(v1 + 129) = 3;
    *(v1 + 353) = 3;
    *(v1 + 358) = *(v1 + 1298);
    v73 = *(v1 + 1264);
    *(v1 + 144) = v73;
    *(v1 + 368) = v73;
    v74 = *(v1 + 1272);
    *(v1 + 160) = v74;
    *(v1 + 384) = v74;
    *(v1 + 391) = *(v1 + 1277);
    v75 = *(v1 + 1288);
    *(v1 + 176) = v75;
    *(v1 + 400) = v75;
    *(v1 + 200) = 514;
    *(v1 + 424) = 514;
    *(v1 + 202) = 2;
    *(v1 + 426) = 2;
    *(v1 + 431) = *(v1 + 1293);
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
    *(v1 + 96) = 0;
    *(v1 + 101) = 0;
    *(v1 + 104) = 0;
    *(v1 + 120) = 0;
    *(v1 + 136) = 0;
    *(v1 + 152) = 0;
    *(v1 + 168) = 0;
    *(v1 + 184) = 0;
    *(v1 + 192) = 0;
    *(v1 + 208) = 0u;
    *(v1 + 224) = 0u;
    *(v1 + 280) = 0;
    *(v1 + 288) = 0;
    *(v1 + 320) = 0;
    *(v1 + 325) = 0;
    *(v1 + 328) = 0;
    *(v1 + 344) = 0;
    *(v1 + 360) = 0;
    *(v1 + 376) = 0;
    *(v1 + 392) = 0;
    *(v1 + 408) = 0;
    *(v1 + 416) = 0;
    *(v1 + 432) = 0u;
    *(v1 + 448) = 0u;
    sub_100010568(v1 + 16, v1 + 464);
    sub_10003AE8C(v1 + 240);
    sub_10000DA7C((v87 + 560), *(v87 + 584));
    v76 = *(v88 + 72);
    v77 = *(v88 + 80);
    *(v1 + 1232) = v77;
    v78 = type metadata accessor for SnoutManager(0);

    v79 = swift_task_alloc();
    *(v1 + 1240) = v79;
    *v79 = v1;
    v79[1] = sub_10012CE94;

    return (sub_10016E27C)(v1 + 16, v76, v77, 1, v78, &off_100223858);
  }
}

uint64_t sub_10012CE94()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10012CFB4, 0, 0);
}

uint64_t sub_10012CFB4()
{
  v99 = v0;
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1176) + 1;

  if (v2 == v1)
  {
LABEL_15:

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    v3 = v0 + 321;
    v82 = (v0 + 1249);
    v83 = (v0 + 1257);
    v84 = (v0 + 1265);
    v85 = (v0 + 1278);
    v86 = (v0 + 1294);
    v87 = (v0 + 1273);
    v88 = (v0 + 1289);
    v4 = *(v0 + 1216);
    v5 = &unk_100220AE8;
    while (1)
    {
      v6 = *(v0 + 1176);
      *(v0 + 1176) = v6 + 1;
      v7 = *(v0 + 1048);
      v8 = (*(v0 + 1300) & 1) != 0 ? 60.0 : *(v0 + 1144);
      v9 = (*(v0 + 1301) & 1) != 0 ? 2.0 : *(v0 + 1160);
      v10 = (*(v0 + 1040) + 144 * v6);
      *(v0 + 688) = v10[11];
      v11 = v10[15];
      v13 = v10[12];
      v12 = v10[13];
      *(v0 + 736) = v10[14];
      *(v0 + 752) = v11;
      *(v0 + 704) = v13;
      *(v0 + 720) = v12;
      v14 = v10[19];
      v16 = v10[16];
      v15 = v10[17];
      *(v0 + 800) = v10[18];
      *(v0 + 816) = v14;
      *(v0 + 768) = v16;
      *(v0 + 784) = v15;
      v17 = swift_allocObject();
      *(v0 + 1184) = v17;
      v18 = v10[13];
      v19 = v10[14];
      v20 = v10[15];
      v17[2] = v10[12];
      v17[3] = v18;
      v17[4] = v19;
      v17[5] = v20;
      v21 = v10[17];
      v22 = v10[18];
      v23 = v10[19];
      v17[6] = v10[16];
      v17[7] = v21;
      v17[8] = v22;
      v17[9] = v23;
      v17[1] = v10[11];
      swift_beginAccess();
      sub_100070EEC(v0 + 688, v0 + 832);
      sub_10006FCD8(v7, v8, v9);
      if (!v4)
      {
        break;
      }

      swift_endAccess();
      v24 = *(v0 + 1080);
      v25 = *(v0 + 1072);
      v26 = *(v0 + 1064);
      v27 = Logger.postback.unsafeMutableAddressor();
      (*(v25 + 16))(v24, v27, v26);

      swift_errorRetain();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 1184);
      v32 = *(v0 + 1080);
      v33 = *(v0 + 1072);
      v34 = *(v0 + 1064);
      if (v30)
      {
        v96 = *(v0 + 1080);
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v98[0] = v92;
        *v35 = 136315394;
        v94 = v34;
        loga = v28;
        v37 = v5;
        v38 = *(v31 + 72);
        v39 = *(v31 + 80);

        v40 = sub_10017AD04(v38, v39, v98);
        v5 = v37;

        *(v35 + 4) = v40;
        *(v35 + 12) = 2112;
        swift_errorRetain();
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 14) = v41;
        *v36 = v41;
        _os_log_impl(&_mh_execute_header, loga, v29, "Failed to update ghostback %s with error: %@", v35, 0x16u);
        sub_10000DAF8(v36, &qword_100239F10, &qword_1001B4FD0);
        v3 = v0 + 321;

        sub_10000DB58(v92);

        (*(v33 + 8))(v96, v94);
      }

      else
      {

        (*(v33 + 8))(v32, v34);
      }

      if ((*(v3 + 418) & 1) == 0)
      {
        swift_errorRetain();
        v53 = sub_1000C7C10(v4);
        log = v54;
        v93 = v55;
        v81 = v53;
        v89 = v56;
        *(v0 + 1224) = v4;
        *(v0 + 1216) = 0;
        v97 = *(v0 + 1184);
        v57 = *(v0 + 1284);
        v58 = *(v0 + 1128);
        v59 = *(v0 + 1120);
        v60 = *(v0 + 1112);
        v61 = *(v0 + 1104);
        v62 = *(v0 + 1096);
        v63 = *(v0 + 1088);
        v95 = *(v0 + 1056);
        static Date.now.getter();
        (*(v62 + 104))(v61, v57, v63);
        v64 = sub_100025808(v58, v61);
        v66 = v65;
        (*(v62 + 8))(v61, v63);
        (*(v59 + 8))(v58, v60);
        if (v66)
        {
          v67 = 0;
        }

        else
        {
          v67 = v64;
        }

        v68 = [objc_opt_self() buildVersion];
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        *(v0 + 340) = *(v0 + 1252);
        *(v0 + 337) = *v82;
        *(v0 + 354) = *v86;
        *(v0 + 372) = *(v0 + 1260);
        *(v0 + 369) = *v83;
        *(v0 + 387) = *v87;
        *(v0 + 404) = *(v0 + 1268);
        *(v0 + 401) = *v84;
        *(v0 + 427) = *v88;
        *(v0 + 1248) = 1;
        *(v0 + 1256) = 1;
        *(v0 + 1264) = 1;
        *(v0 + 1272) = 1;
        *(v0 + 1288) = 1;
        *(v0 + 18) = *v85;
        *(v0 + 22) = *(v0 + 1282);
        *(v0 + 321) = 33686018;
        *(v0 + 97) = 33686018;
        *(v0 + 113) = *v82;
        *(v0 + 116) = *(v0 + 1252);
        *(v0 + 130) = *v86;
        *(v0 + 134) = *(v0 + 1298);
        *(v0 + 148) = *(v0 + 1260);
        *(v0 + 145) = *v83;
        *(v0 + 385) = 770;
        *(v0 + 161) = 770;
        *(v0 + 167) = *(v0 + 1277);
        *(v0 + 163) = *v87;
        *(v0 + 177) = *v84;
        *(v0 + 180) = *(v0 + 1268);
        *(v0 + 207) = *(v0 + 1293);
        *(v0 + 203) = *v88;
        *(v0 + 16) = 517;
        *(v0 + 240) = 517;
        *(v0 + 246) = *(v0 + 1282);
        *(v0 + 242) = *v85;
        *(v0 + 248) = v81;
        *(v0 + 24) = v81;
        *(v0 + 32) = log;
        *(v0 + 256) = log;
        *(v0 + 264) = v93;
        *(v0 + 40) = v93;
        *(v0 + 48) = v89;
        *(v0 + 272) = v89;
        *(v0 + 296) = v67;
        *(v0 + 304) = v69;
        *(v0 + 72) = v67;
        *(v0 + 80) = v69;
        *(v0 + 88) = v71;
        *(v0 + 312) = v71;
        v72 = *(v0 + 1248);
        *(v0 + 112) = v72;
        *(v0 + 336) = v72;
        v73 = *(v0 + 1256);
        *(v0 + 128) = v73;
        *(v0 + 352) = v73;
        *(v0 + 129) = 3;
        *(v0 + 353) = 3;
        *(v0 + 358) = *(v0 + 1298);
        v74 = *(v0 + 1264);
        *(v0 + 144) = v74;
        *(v0 + 368) = v74;
        v75 = *(v0 + 1272);
        *(v0 + 160) = v75;
        *(v0 + 384) = v75;
        *(v0 + 391) = *(v0 + 1277);
        v76 = *(v0 + 1288);
        *(v0 + 176) = v76;
        *(v0 + 400) = v76;
        *(v0 + 200) = 514;
        *(v0 + 424) = 514;
        *(v0 + 202) = 2;
        *(v0 + 426) = 2;
        *(v0 + 431) = *(v0 + 1293);
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 96) = 0;
        *(v0 + 101) = 0;
        *(v0 + 104) = 0;
        *(v0 + 120) = 0;
        *(v0 + 136) = 0;
        *(v0 + 152) = 0;
        *(v0 + 168) = 0;
        *(v0 + 184) = 0;
        *(v0 + 192) = 0;
        *(v0 + 208) = 0u;
        *(v0 + 224) = 0u;
        *(v0 + 280) = 0;
        *(v0 + 288) = 0;
        *(v0 + 320) = 0;
        *(v0 + 325) = 0;
        *(v0 + 328) = 0;
        *(v0 + 344) = 0;
        *(v0 + 360) = 0;
        *(v0 + 376) = 0;
        *(v0 + 392) = 0;
        *(v0 + 408) = 0;
        *(v0 + 416) = 0;
        *(v0 + 432) = 0u;
        *(v0 + 448) = 0u;
        sub_100010568(v0 + 16, v0 + 464);
        sub_10003AE8C(v0 + 240);
        sub_10000DA7C((v95 + 560), *(v95 + 584));
        v77 = *(v97 + 72);
        v78 = *(v97 + 80);
        *(v0 + 1232) = v78;
        v79 = type metadata accessor for SnoutManager(0);

        v80 = swift_task_alloc();
        *(v0 + 1240) = v80;
        *v80 = v0;
        v80[1] = sub_10012CE94;

        return (sub_10016E27C)(v0 + 16, v77, v78, 1, v79, &off_100223858);
      }

      v42 = *(v0 + 1168);
      v43 = *(v0 + 1176) + 1;

      v4 = 0;
      if (v43 == v42)
      {
        goto LABEL_15;
      }
    }

    v46 = *(v0 + 1056);
    swift_endAccess();
    v48 = v46[3];
    v47 = v46[4];
    v49 = v46[5];

    *(v0 + 1000) = &type metadata for GhostbackDatabaseStore;
    *(v0 + 1008) = sub_100146E28();
    *(v0 + 976) = v48;
    *(v0 + 984) = v47;
    *(v0 + 992) = v49;

    v50 = v49;
    v51 = swift_task_alloc();
    *(v0 + 1192) = v51;
    v51[2] = v50;
    v51[3] = v0 + 976;
    v51[4] = sub_10014D2E0;
    v51[5] = v17;
    v52 = swift_task_alloc();
    *(v0 + 1200) = v52;
    *v52 = v0;
    v52[1] = sub_10012B934;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v52, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D284, v51, &type metadata for () + 8);
  }
}

uint64_t sub_10012D9CC(uint64_t a1, uint64_t a2)
{
  v3[297] = v2;
  v3[296] = a2;
  v3[295] = a1;
  v4 = type metadata accessor for Calendar.Component();
  v3[298] = v4;
  v3[299] = *(v4 - 8);
  v3[300] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[301] = v5;
  v3[302] = *(v5 - 8);
  v3[303] = swift_task_alloc();
  v3[304] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[305] = v6;
  v3[306] = *(v6 - 8);
  v3[307] = swift_task_alloc();
  v3[308] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[309] = v7;
  *v7 = v3;
  v7[1] = sub_10012DBA8;

  return sub_100158594(17);
}

uint64_t sub_10012DBA8(uint64_t a1, char a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 2480) = a1;
  *(v3 + 2609) = a2;

  v4 = swift_task_alloc();
  *(v3 + 2488) = v4;
  *v4 = v6;
  v4[1] = sub_10012DCF0;

  return sub_100158594(18);
}

uint64_t sub_10012DCF0(uint64_t a1, char a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 2496) = a1;
  *(v3 + 2610) = a2;

  v4 = swift_task_alloc();
  *(v3 + 2504) = v4;
  *v4 = v6;
  v4[1] = sub_10012DE40;

  return sub_100131720();
}

uint64_t sub_10012DE40(uint64_t a1)
{
  *(*v1 + 2512) = a1;

  return _swift_task_switch(sub_10012DF40, 0, 0);
}

uint64_t sub_10012DF40()
{
  v109 = v0;
  v1 = *(v0 + 2360);
  v2 = [objc_opt_self() sharedScheduler];
  v107[3] = &type metadata for ActivityManager;
  v107[4] = &off_100223E90;
  v3 = swift_allocObject();
  v107[0] = v3;
  v3[5] = &type metadata for BackgroundSystemTaskScheduler;
  v3[6] = &off_100217910;
  v3[2] = v2;
  v108[3] = &type metadata for LaunchServicesRecordFactory;
  v108[4] = &off_10021CBA8;
  sub_1000B8524(v107, v108, v0 + 2184);
  v4 = *(v1 + 16);
  *(v0 + 2520) = v4;
  if (v4)
  {
    v5 = v0 + 1593;
    v93 = (v0 + 601);
    v94 = (v0 + 897);
    v95 = (v0 + 305);
    v96 = (v0 + 1198);
    v97 = (v0 + 1502);
    v98 = (v0 + 1193);
    v99 = (v0 + 1497);
    updated = type metadata accessor for PostbackUpdateData(0);
    v7 = 0;
    *(v0 + 1204) = *(updated + 32);
    *(v0 + 1508) = enum case for Calendar.Component.hour(_:);
    while (1)
    {
      *(v0 + 2528) = v7;
      v8 = *(v0 + 2360) + 296 * v7;
      memcpy((v0 + 312), (v8 + 32), 0x121uLL);
      v9 = swift_allocObject();
      *(v0 + 2536) = v9;
      memcpy(v9 + 16, (v8 + 32), 0x121uLL);
      swift_beginAccess();
      memcpy((v0 + 904), v9 + 16, 0x121uLL);
      if ((*(v0 + 1009) & 1) != 0 && (*(v0 + 1075) & 1) == 0)
      {
        v11 = *(v0 + 1204);
        v12 = *(v0 + 2512);
        v13 = *(v0 + 2368);
        sub_1000B3B24(v0 + 312, v0 + 1208);
        sub_1000B3B24(v0 + 904, v0 + 16);
        v10 = sub_1000B01A8(v13 + v11, v12);
        sub_10003C04C(v0 + 904);
      }

      else
      {
        sub_1000B3B24(v0 + 312, v0 + 608);
        v10 = 0;
      }

      *(v5 + 1018) = v10 & 1;
      v14 = *(v0 + 2456);
      v15 = *(v0 + 2448);
      v16 = *(v0 + 2440);
      swift_beginAccess();
      Date.init(timeIntervalSince1970:)();
      ConversionType.isInstall.getter(v9[120]);
      Date.addingTimeInterval(_:)();
      sub_10014CA00(&qword_10023B530, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v17 = dispatch thunk of static Comparable.< infix(_:_:)();
      v18 = *(v15 + 8);
      *(v0 + 2544) = v18;
      *(v0 + 2552) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v18(v14, v16);
      if ((v17 & 1) == 0)
      {
        break;
      }

      v19 = *(v0 + 2432);
      v20 = *(v0 + 2416);
      v21 = *(v0 + 2408);
      v22 = Logger.postback.unsafeMutableAddressor();
      (*(v20 + 16))(v19, v22, v21);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Postback is past activation window. Not updating.", v25, 2u);
      }

      v26 = *(v0 + 2464);
      v27 = *(v0 + 2440);
      v28 = *(v0 + 2432);
      v29 = *(v0 + 2416);
      v30 = *(v0 + 2408);

      (*(v29 + 8))(v28, v30);
      sub_1000B3D30();
      v31 = swift_allocError();
      *v32 = 5;
      swift_willThrow();
      v18(v26, v27);
      swift_endAccess();
      v33 = *(v0 + 2424);
      v34 = *(v0 + 2416);
      v35 = *(v0 + 2408);
      v36 = Logger.postback.unsafeMutableAddressor();
      (*(v34 + 16))(v33, v36, v35);

      swift_errorRetain();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 2536);
      v41 = *(v0 + 2424);
      v42 = *(v0 + 2416);
      v43 = *(v0 + 2408);
      if (v39)
      {
        v105 = *(v0 + 2408);
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v108[0] = v101;
        *v44 = 136315394;
        v103 = v41;
        v46 = *(v40 + 48);
        v47 = *(v40 + 56);

        v48 = sub_10017AD04(v46, v47, v108);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2112;
        swift_errorRetain();
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 14) = v49;
        *v45 = v49;
        _os_log_impl(&_mh_execute_header, v37, v38, "Failed to update postback %s with error: %@", v44, 0x16u);
        sub_10000DAF8(v45, &qword_100239F10, &qword_1001B4FD0);

        sub_10000DB58(v101);

        (*(v42 + 8))(v103, v105);
      }

      else
      {

        (*(v42 + 8))(v41, v43);
      }

      v5 = v0 + 1593;
      v50 = *(v0 + 2536);
      if (*(v0 + 2611) == 1)
      {
        v100 = v50[16];
        if (v31)
        {
          swift_errorRetain();
          v91 = sub_1000C7C10(v31);
          v104 = v59;
          v106 = v58;
          v102 = v60;
          v50 = *(v0 + 2536);
        }

        else
        {
          v91 = 0;
          v104 = 0;
          v106 = 0;
          v102 = 0;
        }

        *(v0 + 2584) = v31;
        v90 = *(v0 + 2544);
        v68 = *(v0 + 1508);
        v69 = *(v0 + 2456);
        v70 = *(v0 + 2440);
        v71 = *(v0 + 2400);
        v72 = *(v0 + 2392);
        v73 = *(v0 + 2384);
        v92 = *(v0 + 2376);
        static Date.now.getter();
        (*(v72 + 104))(v71, v68, v73);
        v74 = sub_100025808(v69, v71);
        v76 = v75;
        (*(v72 + 8))(v71, v73);
        v90(v69, v70);
        if (v76)
        {
          v77 = 0;
        }

        else
        {
          v77 = v74;
        }

        v78 = [objc_opt_self() buildVersion];
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        *(v0 + 1514) = *v96;
        *(v0 + 1609) = *v95;
        *(v0 + 1626) = *v97;
        *(v0 + 1644) = *(v0 + 604);
        *(v0 + 1641) = *v93;
        *(v0 + 1659) = *v98;
        *(v0 + 1676) = *(v0 + 900);
        *(v0 + 1673) = *v94;
        *(v0 + 1699) = *v99;
        *(v0 + 1738) = *v96;
        *(v0 + 1593) = 33686018;
        *(v0 + 1817) = 33686018;
        *(v0 + 1836) = *(v0 + 308);
        *(v0 + 1833) = *v95;
        *(v0 + 1850) = *v97;
        *(v0 + 1868) = *(v0 + 604);
        *(v0 + 1865) = *v93;
        *(v0 + 1657) = 770;
        *(v0 + 1881) = 770;
        *(v0 + 1883) = *v98;
        *(v0 + 1900) = *(v0 + 900);
        *(v0 + 1897) = *v94;
        *(v0 + 1923) = *v99;
        *(v0 + 1518) = *(v0 + 1202);
        *(v0 + 1612) = *(v0 + 308);
        *(v0 + 1630) = *(v0 + 1506);
        *(v0 + 1663) = *(v0 + 1197);
        *(v0 + 1703) = *(v0 + 1501);
        *(v0 + 1704) = 0u;
        *(v0 + 1720) = 0u;
        *(v0 + 1512) = 517;
        *(v0 + 1736) = 517;
        *(v0 + 1742) = *(v0 + 1202);
        *(v0 + 1520) = v91;
        *(v0 + 1744) = v91;
        *(v0 + 1528) = v106;
        *(v0 + 1752) = v106;
        *(v0 + 1536) = v104;
        *(v0 + 1760) = v104;
        *(v0 + 1544) = v102;
        *(v0 + 1768) = v102;
        *(v0 + 1568) = v77;
        *(v0 + 1792) = v77;
        *(v0 + 1576) = v79;
        *(v0 + 1800) = v79;
        *(v0 + 1584) = v81;
        *(v0 + 1808) = v81;
        *(v0 + 2616) = 1;
        *(v0 + 2624) = 1;
        *(v0 + 2632) = 1;
        *(v0 + 2640) = 1;
        *(v0 + 1597) = 1;
        *(v0 + 1821) = 1;
        *(v0 + 2608) = 0;
        *(v0 + 1600) = v100;
        *(v0 + 1824) = v100;
        *(v0 + 1608) = 0;
        *(v0 + 1832) = 0;
        v82 = *(v0 + 2616);
        *(v0 + 1624) = v82;
        *(v0 + 1848) = v82;
        *(v0 + 1625) = 3;
        *(v0 + 1849) = 3;
        *(v0 + 1854) = *(v0 + 1506);
        v83 = *(v0 + 2624);
        *(v0 + 1640) = v83;
        *(v0 + 1864) = v83;
        v84 = *(v0 + 2632);
        *(v0 + 1656) = v84;
        *(v0 + 1880) = v84;
        *(v0 + 1887) = *(v0 + 1197);
        v85 = *(v0 + 2640);
        *(v0 + 1672) = v85;
        *(v0 + 1896) = v85;
        *(v0 + 1696) = 514;
        *(v0 + 1920) = 514;
        *(v0 + 1698) = 2;
        *(v0 + 1922) = 2;
        *(v0 + 1927) = *(v0 + 1501);
        *(v0 + 1928) = 0u;
        *(v0 + 1944) = 0u;
        *(v0 + 1552) = 0u;
        *(v0 + 1592) = 0;
        *(v0 + 1616) = 0;
        *(v0 + 1632) = 0;
        *(v0 + 1648) = 0;
        *(v0 + 1664) = 0;
        *(v0 + 1680) = 0u;
        *(v0 + 1776) = 0u;
        *(v0 + 1816) = 0;
        *(v0 + 1840) = 0;
        *(v0 + 1856) = 0;
        *(v0 + 1872) = 0;
        *(v0 + 1888) = 0;
        *(v0 + 1904) = 0u;
        sub_100010568(v0 + 1512, v0 + 1960);
        sub_10003AE8C(v0 + 1736);
        sub_10000DA7C((v92 + 560), *(v92 + 584));
        v87 = v50[24];
        v86 = v50[25];
        *(v0 + 2592) = v86;
        v88 = type metadata accessor for SnoutManager(0);

        v89 = swift_task_alloc();
        *(v0 + 2600) = v89;
        *v89 = v0;
        v89[1] = sub_1001308BC;

        return (sub_10016E27C)(v0 + 1512, v87, v86, 1, v88, &off_100223858);
      }

      v51 = *(v0 + 2520);
      v52 = *(v0 + 2528) + 1;

      if (v52 == v51)
      {
        goto LABEL_17;
      }

      v7 = *(v0 + 2528) + 1;
      if (v7 == *(v0 + 2520))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v55 = *(v0 + 2512);
    v56 = *(v0 + 2368);
    v57 = v0 + 2184;
    if (v9[121])
    {
      sub_1000B09EC(v56, v55, v57);
    }

    else
    {
      sub_1000B1054(v56, v55, v57);
    }

    v61 = *(v0 + 2376);
    v18(*(v0 + 2464), *(v0 + 2440));
    swift_endAccess();
    v63 = *v61;
    v62 = v61[1];
    v64 = v61[2];

    *(v0 + 2296) = &type metadata for PostbackDatabaseStore;
    *(v0 + 2304) = sub_1001494B0();
    *(v0 + 2272) = v63;
    *(v0 + 2280) = v62;
    *(v0 + 2288) = v64;

    v65 = v64;
    v66 = swift_task_alloc();
    *(v0 + 2560) = v66;
    v66[2] = v65;
    v66[3] = v0 + 2272;
    v66[4] = sub_10014D2C8;
    v66[5] = v9;
    v67 = swift_task_alloc();
    *(v0 + 2568) = v67;
    *v67 = v0;
    v67[1] = sub_10012ED1C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v67, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D288, v66, &type metadata for () + 8);
  }

  else
  {
LABEL_17:

    sub_10014AA3C(v0 + 2184);

    v53 = *(v0 + 8);

    return v53();
  }
}

uint64_t sub_10012ED1C()
{
  v2 = *v1;
  *(*v1 + 2576) = v0;

  if (v0)
  {
    v3 = sub_10012EE4C;
  }

  else
  {

    sub_10000DB58((v2 + 2272));
    v3 = sub_10012FB78;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012EE4C()
{
  v110 = v0;
  v95 = (v0 + 601);
  v96 = (v0 + 897);
  v97 = (v0 + 305);
  v98 = (v0 + 1198);
  v99 = (v0 + 1502);
  v100 = (v0 + 1193);
  v101 = (v0 + 1497);

  sub_10000DB58((v0 + 2272));
  v1 = *(v0 + 2576);
  while (1)
  {
    v8 = *(v0 + 2424);
    v9 = *(v0 + 2416);
    v10 = *(v0 + 2408);
    v11 = Logger.postback.unsafeMutableAddressor();
    (*(v9 + 16))(v8, v11, v10);

    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 2536);
    v16 = *(v0 + 2424);
    v17 = *(v0 + 2416);
    v18 = *(v0 + 2408);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v105 = v16;
      v107 = v18;
      v109[0] = v103;
      *v19 = 136315394;
      v21 = v1;
      v22 = *(v15 + 48);
      v23 = *(v15 + 56);

      v24 = sub_10017AD04(v22, v23, v109);
      v1 = v21;

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v25;
      *v20 = v25;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to update postback %s with error: %@", v19, 0x16u);
      sub_10000DAF8(v20, &qword_100239F10, &qword_1001B4FD0);

      sub_10000DB58(v103);

      (*(v17 + 8))(v105, v107);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }

    v26 = *(v0 + 2536);
    if (*(v0 + 2611) == 1)
    {
      break;
    }

    v27 = *(v0 + 2520);
    v28 = *(v0 + 2528) + 1;

    if (v28 == v27)
    {

      sub_10014AA3C(v0 + 2184);

      v59 = *(v0 + 8);

      return v59();
    }

    v37 = *(v0 + 2528) + 1;
    if (v37 == *(v0 + 2520))
    {
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    *(v0 + 2528) = v37;
    v38 = *(v0 + 2360) + 296 * v37;
    memcpy((v0 + 312), (v38 + 32), 0x121uLL);
    v39 = swift_allocObject();
    *(v0 + 2536) = v39;
    memcpy(v39 + 16, (v38 + 32), 0x121uLL);
    swift_beginAccess();
    memcpy((v0 + 904), v39 + 16, 0x121uLL);
    if ((*(v0 + 1009) & 1) != 0 && (*(v0 + 1075) & 1) == 0)
    {
      v41 = *(v0 + 1204);
      v42 = *(v0 + 2512);
      v43 = *(v0 + 2368);
      sub_1000B3B24(v0 + 312, v0 + 1208);
      sub_1000B3B24(v0 + 904, v0 + 16);
      v40 = sub_1000B01A8(v43 + v41, v42);
      sub_10003C04C(v0 + 904);
    }

    else
    {
      sub_1000B3B24(v0 + 312, v0 + 608);
      v40 = 0;
    }

    *(v0 + 2611) = v40 & 1;
    v44 = *(v0 + 2456);
    v45 = *(v0 + 2448);
    v46 = *(v0 + 2440);
    swift_beginAccess();
    Date.init(timeIntervalSince1970:)();
    ConversionType.isInstall.getter(v39[120]);
    Date.addingTimeInterval(_:)();
    sub_10014CA00(&qword_10023B530, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v47 = dispatch thunk of static Comparable.< infix(_:_:)();
    v48 = *(v45 + 8);
    *(v0 + 2544) = v48;
    *(v0 + 2552) = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48(v44, v46);
    if ((v47 & 1) == 0)
    {
      v61 = *(v0 + 2512);
      v62 = *(v0 + 2368);
      v63 = v0 + 2184;
      if (v39[121])
      {
        sub_1000B09EC(v62, v61, v63);
      }

      else
      {
        sub_1000B1054(v62, v61, v63);
      }

      v64 = *(v0 + 2376);
      v48(*(v0 + 2464), *(v0 + 2440));
      swift_endAccess();
      v66 = *v64;
      v65 = v64[1];
      v67 = v64[2];

      *(v0 + 2296) = &type metadata for PostbackDatabaseStore;
      *(v0 + 2304) = sub_1001494B0();
      *(v0 + 2272) = v66;
      *(v0 + 2280) = v65;
      *(v0 + 2288) = v67;

      v68 = v67;
      v69 = swift_task_alloc();
      *(v0 + 2560) = v69;
      v69[2] = v68;
      v69[3] = v0 + 2272;
      v69[4] = sub_10014D2C8;
      v69[5] = v39;
      v29 = swift_task_alloc();
      *(v0 + 2568) = v29;
      *v29 = v0;
      v29[1] = sub_10012ED1C;
      v34 = sub_10014D288;
      v33 = 0x80000001001CD620;
      v36 = &type metadata for () + 8;
      v30 = 0;
      v31 = 0;
      v32 = 0xD00000000000001BLL;
      v35 = v69;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    v49 = *(v0 + 2432);
    v50 = *(v0 + 2416);
    v51 = *(v0 + 2408);
    v52 = Logger.postback.unsafeMutableAddressor();
    (*(v50 + 16))(v49, v52, v51);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Postback is past activation window. Not updating.", v55, 2u);
    }

    v2 = *(v0 + 2464);
    v3 = *(v0 + 2440);
    v4 = *(v0 + 2432);
    v5 = *(v0 + 2416);
    v6 = *(v0 + 2408);

    (*(v5 + 8))(v4, v6);
    sub_1000B3D30();
    v1 = swift_allocError();
    *v7 = 5;
    swift_willThrow();
    v48(v2, v3);
    swift_endAccess();
  }

  v102 = v26[16];
  if (v1)
  {
    swift_errorRetain();
    v93 = sub_1000C7C10(v1);
    v106 = v57;
    v108 = v56;
    v104 = v58;
    v26 = *(v0 + 2536);
  }

  else
  {
    v93 = 0;
    v106 = 0;
    v108 = 0;
    v104 = 0;
  }

  *(v0 + 2584) = v1;
  v70 = *(v0 + 2544);
  v71 = *(v0 + 1508);
  v72 = *(v0 + 2456);
  v73 = *(v0 + 2440);
  v74 = *(v0 + 2400);
  v75 = *(v0 + 2392);
  v76 = *(v0 + 2384);
  v94 = *(v0 + 2376);
  static Date.now.getter();
  (*(v75 + 104))(v74, v71, v76);
  v77 = sub_100025808(v72, v74);
  v79 = v78;
  (*(v75 + 8))(v74, v76);
  v70(v72, v73);
  if (v79)
  {
    v80 = 0;
  }

  else
  {
    v80 = v77;
  }

  v81 = [objc_opt_self() buildVersion];
  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;

  *(v0 + 1514) = *v98;
  *(v0 + 1609) = *v97;
  *(v0 + 1626) = *v99;
  *(v0 + 1644) = *(v0 + 604);
  *(v0 + 1641) = *v95;
  *(v0 + 1659) = *v100;
  *(v0 + 1676) = *(v0 + 900);
  *(v0 + 1673) = *v96;
  *(v0 + 1699) = *v101;
  *(v0 + 1738) = *v98;
  *(v0 + 1593) = 33686018;
  *(v0 + 1817) = 33686018;
  *(v0 + 1836) = *(v0 + 308);
  *(v0 + 1833) = *v97;
  *(v0 + 1850) = *v99;
  *(v0 + 1868) = *(v0 + 604);
  *(v0 + 1865) = *v95;
  *(v0 + 1657) = 770;
  *(v0 + 1881) = 770;
  *(v0 + 1883) = *v100;
  *(v0 + 1900) = *(v0 + 900);
  *(v0 + 1897) = *v96;
  *(v0 + 1923) = *v101;
  *(v0 + 1518) = *(v0 + 1202);
  *(v0 + 1612) = *(v0 + 308);
  *(v0 + 1630) = *(v0 + 1506);
  *(v0 + 1663) = *(v0 + 1197);
  *(v0 + 1703) = *(v0 + 1501);
  *(v0 + 1704) = 0u;
  *(v0 + 1720) = 0u;
  *(v0 + 1512) = 517;
  *(v0 + 1736) = 517;
  *(v0 + 1742) = *(v0 + 1202);
  *(v0 + 1520) = v93;
  *(v0 + 1744) = v93;
  *(v0 + 1528) = v108;
  *(v0 + 1752) = v108;
  *(v0 + 1536) = v106;
  *(v0 + 1760) = v106;
  *(v0 + 1544) = v104;
  *(v0 + 1768) = v104;
  *(v0 + 1568) = v80;
  *(v0 + 1792) = v80;
  *(v0 + 1576) = v82;
  *(v0 + 1800) = v82;
  *(v0 + 1584) = v84;
  *(v0 + 1808) = v84;
  *(v0 + 2616) = 1;
  *(v0 + 2624) = 1;
  *(v0 + 2632) = 1;
  *(v0 + 2640) = 1;
  *(v0 + 1597) = 1;
  *(v0 + 1821) = 1;
  *(v0 + 2608) = 0;
  *(v0 + 1600) = v102;
  *(v0 + 1824) = v102;
  *(v0 + 1608) = 0;
  *(v0 + 1832) = 0;
  v85 = *(v0 + 2616);
  *(v0 + 1624) = v85;
  *(v0 + 1848) = v85;
  *(v0 + 1625) = 3;
  *(v0 + 1849) = 3;
  *(v0 + 1854) = *(v0 + 1506);
  v86 = *(v0 + 2624);
  *(v0 + 1640) = v86;
  *(v0 + 1864) = v86;
  v87 = *(v0 + 2632);
  *(v0 + 1656) = v87;
  *(v0 + 1880) = v87;
  *(v0 + 1887) = *(v0 + 1197);
  v88 = *(v0 + 2640);
  *(v0 + 1672) = v88;
  *(v0 + 1896) = v88;
  *(v0 + 1696) = 514;
  *(v0 + 1920) = 514;
  *(v0 + 1698) = 2;
  *(v0 + 1922) = 2;
  *(v0 + 1927) = *(v0 + 1501);
  *(v0 + 1928) = 0u;
  *(v0 + 1944) = 0u;
  *(v0 + 1552) = 0u;
  *(v0 + 1592) = 0;
  *(v0 + 1616) = 0;
  *(v0 + 1632) = 0;
  *(v0 + 1648) = 0;
  *(v0 + 1664) = 0;
  *(v0 + 1680) = 0u;
  *(v0 + 1776) = 0u;
  *(v0 + 1816) = 0;
  *(v0 + 1840) = 0;
  *(v0 + 1856) = 0;
  *(v0 + 1872) = 0;
  *(v0 + 1888) = 0;
  *(v0 + 1904) = 0u;
  sub_100010568(v0 + 1512, v0 + 1960);
  sub_10003AE8C(v0 + 1736);
  sub_10000DA7C((v94 + 560), *(v94 + 584));
  v90 = v26[24];
  v89 = v26[25];
  *(v0 + 2592) = v89;
  v91 = type metadata accessor for SnoutManager(0);

  v92 = swift_task_alloc();
  *(v0 + 2600) = v92;
  *v92 = v0;
  v92[1] = sub_1001308BC;

  return (sub_10016E27C)(v0 + 1512, v90, v89, 1, v91, &off_100223858);
}

uint64_t sub_10012FB78(uint64_t a1)
{
  v112 = v1;
  if (*(v1 + 2611))
  {
    v2 = 0;
    v103 = 0;
    v104 = 0;
    v109 = 0;
    v105 = 0;
    v107 = *(v1 + 2536);
    v94 = v107[16];
    goto LABEL_30;
  }

  do
  {
    v3 = *(v1 + 2520);
    v4 = *(v1 + 2528) + 1;

    if (v4 == v3)
    {

      sub_10014AA3C(v1 + 2184);

      v56 = *(v1 + 8);

      return v56();
    }

    v13 = *(v1 + 2528) + 1;
    if (v13 == *(v1 + 2520))
    {
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    *(v1 + 2528) = v13;
    v14 = *(v1 + 2360) + 296 * v13;
    memcpy((v1 + 312), (v14 + 32), 0x121uLL);
    v15 = swift_allocObject();
    *(v1 + 2536) = v15;
    memcpy(v15 + 16, (v14 + 32), 0x121uLL);
    swift_beginAccess();
    memcpy((v1 + 904), v15 + 16, 0x121uLL);
    if ((*(v1 + 1009) & 1) != 0 && (*(v1 + 1075) & 1) == 0)
    {
      v17 = *(v1 + 1204);
      v18 = *(v1 + 2512);
      v19 = *(v1 + 2368);
      sub_1000B3B24(v1 + 312, v1 + 1208);
      sub_1000B3B24(v1 + 904, v1 + 16);
      v16 = sub_1000B01A8(v19 + v17, v18);
      sub_10003C04C(v1 + 904);
    }

    else
    {
      sub_1000B3B24(v1 + 312, v1 + 608);
      v16 = 0;
    }

    *(v1 + 2611) = v16 & 1;
    v20 = *(v1 + 2456);
    v21 = *(v1 + 2448);
    v22 = *(v1 + 2440);
    swift_beginAccess();
    Date.init(timeIntervalSince1970:)();
    ConversionType.isInstall.getter(v15[120]);
    Date.addingTimeInterval(_:)();
    sub_10014CA00(&qword_10023B530, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v23 = dispatch thunk of static Comparable.< infix(_:_:)();
    v24 = *(v21 + 8);
    *(v1 + 2544) = v24;
    *(v1 + 2552) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v20, v22);
    if ((v23 & 1) == 0)
    {
      v58 = *(v1 + 2512);
      v59 = *(v1 + 2368);
      v60 = v1 + 2184;
      if (v15[121])
      {
        sub_1000B09EC(v59, v58, v60);
      }

      else
      {
        sub_1000B1054(v59, v58, v60);
      }

      v65 = *(v1 + 2376);
      v24(*(v1 + 2464), *(v1 + 2440));
      swift_endAccess();
      v67 = *v65;
      v66 = v65[1];
      v68 = v65[2];

      *(v1 + 2296) = &type metadata for PostbackDatabaseStore;
      *(v1 + 2304) = sub_1001494B0();
      *(v1 + 2272) = v67;
      *(v1 + 2280) = v66;
      *(v1 + 2288) = v68;

      v69 = v68;
      v70 = swift_task_alloc();
      *(v1 + 2560) = v70;
      v70[2] = v69;
      v70[3] = v1 + 2272;
      v70[4] = sub_10014D2C8;
      v70[5] = v15;
      v5 = swift_task_alloc();
      *(v1 + 2568) = v5;
      *v5 = v1;
      v5[1] = sub_10012ED1C;
      v10 = sub_10014D288;
      v9 = 0x80000001001CD620;
      v12 = &type metadata for () + 8;
      v6 = 0;
      v7 = 0;
      v8 = 0xD00000000000001BLL;
      v11 = v70;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v25 = *(v1 + 2432);
    v26 = *(v1 + 2416);
    v27 = *(v1 + 2408);
    v28 = Logger.postback.unsafeMutableAddressor();
    (*(v26 + 16))(v25, v28, v27);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Postback is past activation window. Not updating.", v31, 2u);
    }

    v32 = *(v1 + 2464);
    v33 = *(v1 + 2440);
    v34 = *(v1 + 2432);
    v35 = *(v1 + 2416);
    v36 = *(v1 + 2408);

    (*(v35 + 8))(v34, v36);
    sub_1000B3D30();
    v37 = swift_allocError();
    *v38 = 5;
    swift_willThrow();
    v24(v32, v33);
    swift_endAccess();
    v39 = *(v1 + 2424);
    v40 = *(v1 + 2416);
    v41 = *(v1 + 2408);
    v42 = Logger.postback.unsafeMutableAddressor();
    (*(v40 + 16))(v39, v42, v41);

    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v1 + 2536);
    v47 = *(v1 + 2424);
    v48 = *(v1 + 2416);
    v49 = *(v1 + 2408);
    if (v45)
    {
      v50 = swift_slowAlloc();
      v110 = v47;
      v51 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v108 = v49;
      v111[0] = v106;
      *v50 = 136315394;
      v52 = *(v46 + 48);
      v53 = *(v46 + 56);

      v54 = sub_10017AD04(v52, v53, v111);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2112;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 14) = v55;
      *v51 = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "Failed to update postback %s with error: %@", v50, 0x16u);
      sub_10000DAF8(v51, &qword_100239F10, &qword_1001B4FD0);

      sub_10000DB58(v106);

      (*(v48 + 8))(v110, v108);
    }

    else
    {

      (*(v48 + 8))(v47, v49);
    }
  }

  while ((*(v1 + 2611) & 1) == 0);
  v61 = *(v1 + 2536);
  v94 = v61[16];
  if (v37)
  {
    v2 = v37;
    swift_errorRetain();
    v105 = sub_1000C7C10(v37);
    v103 = v63;
    v104 = v62;
    v109 = v64;
    v61 = *(v1 + 2536);
  }

  else
  {
    v2 = 0;
    v105 = 0;
    v103 = 0;
    v104 = 0;
    v109 = 0;
  }

  v107 = v61;
LABEL_30:
  v96 = (v1 + 305);
  v95 = (v1 + 1198);
  v97 = (v1 + 1502);
  v98 = (v1 + 601);
  v99 = (v1 + 1193);
  v100 = (v1 + 897);
  v101 = (v1 + 1497);
  *(v1 + 2584) = v2;
  v71 = *(v1 + 2544);
  v72 = *(v1 + 1508);
  v73 = *(v1 + 2456);
  v74 = *(v1 + 2440);
  v75 = *(v1 + 2400);
  v76 = *(v1 + 2392);
  v77 = *(v1 + 2384);
  v102 = *(v1 + 2376);
  static Date.now.getter();
  (*(v76 + 104))(v75, v72, v77);
  v78 = sub_100025808(v73, v75);
  v80 = v79;
  (*(v76 + 8))(v75, v77);
  v71(v73, v74);
  if (v80)
  {
    v81 = 0;
  }

  else
  {
    v81 = v78;
  }

  v82 = [objc_opt_self() buildVersion];
  v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v85 = v84;

  *(v1 + 1514) = *v95;
  *(v1 + 1609) = *v96;
  *(v1 + 1626) = *v97;
  *(v1 + 1644) = *(v1 + 604);
  *(v1 + 1641) = *v98;
  *(v1 + 1659) = *v99;
  *(v1 + 1676) = *(v1 + 900);
  *(v1 + 1673) = *v100;
  *(v1 + 1699) = *v101;
  *(v1 + 1738) = *v95;
  *(v1 + 1593) = 33686018;
  *(v1 + 1817) = 33686018;
  *(v1 + 1836) = *(v1 + 308);
  *(v1 + 1833) = *v96;
  *(v1 + 1850) = *v97;
  *(v1 + 1868) = *(v1 + 604);
  *(v1 + 1865) = *v98;
  *(v1 + 1657) = 770;
  *(v1 + 1881) = 770;
  *(v1 + 1883) = *v99;
  *(v1 + 1900) = *(v1 + 900);
  *(v1 + 1897) = *v100;
  *(v1 + 1923) = *v101;
  *(v1 + 1518) = *(v1 + 1202);
  *(v1 + 1612) = *(v1 + 308);
  *(v1 + 1630) = *(v1 + 1506);
  *(v1 + 1663) = *(v1 + 1197);
  *(v1 + 1703) = *(v1 + 1501);
  *(v1 + 1704) = 0u;
  *(v1 + 1720) = 0u;
  *(v1 + 1512) = 517;
  *(v1 + 1736) = 517;
  *(v1 + 1742) = *(v1 + 1202);
  *(v1 + 1520) = v105;
  *(v1 + 1744) = v105;
  *(v1 + 1528) = v104;
  *(v1 + 1752) = v104;
  *(v1 + 1536) = v109;
  *(v1 + 1760) = v109;
  *(v1 + 1544) = v103;
  *(v1 + 1768) = v103;
  *(v1 + 1568) = v81;
  *(v1 + 1792) = v81;
  *(v1 + 1576) = v83;
  *(v1 + 1800) = v83;
  *(v1 + 1584) = v85;
  *(v1 + 1808) = v85;
  *(v1 + 2616) = 1;
  *(v1 + 2624) = 1;
  *(v1 + 2632) = 1;
  *(v1 + 2640) = 1;
  *(v1 + 1597) = 1;
  *(v1 + 1821) = 1;
  *(v1 + 2608) = 0;
  *(v1 + 1600) = v94;
  *(v1 + 1824) = v94;
  *(v1 + 1608) = 0;
  *(v1 + 1832) = 0;
  v86 = *(v1 + 2616);
  *(v1 + 1624) = v86;
  *(v1 + 1848) = v86;
  *(v1 + 1625) = 3;
  *(v1 + 1849) = 3;
  *(v1 + 1854) = *(v1 + 1506);
  v87 = *(v1 + 2624);
  *(v1 + 1640) = v87;
  *(v1 + 1864) = v87;
  v88 = *(v1 + 2632);
  *(v1 + 1656) = v88;
  *(v1 + 1880) = v88;
  *(v1 + 1887) = *(v1 + 1197);
  v89 = *(v1 + 2640);
  *(v1 + 1672) = v89;
  *(v1 + 1896) = v89;
  *(v1 + 1696) = 514;
  *(v1 + 1920) = 514;
  *(v1 + 1698) = 2;
  *(v1 + 1922) = 2;
  *(v1 + 1927) = *(v1 + 1501);
  *(v1 + 1928) = 0u;
  *(v1 + 1944) = 0u;
  *(v1 + 1552) = 0u;
  *(v1 + 1592) = 0;
  *(v1 + 1616) = 0;
  *(v1 + 1632) = 0;
  *(v1 + 1648) = 0;
  *(v1 + 1664) = 0;
  *(v1 + 1680) = 0u;
  *(v1 + 1776) = 0u;
  *(v1 + 1816) = 0;
  *(v1 + 1840) = 0;
  *(v1 + 1856) = 0;
  *(v1 + 1872) = 0;
  *(v1 + 1888) = 0;
  *(v1 + 1904) = 0u;
  sub_100010568(v1 + 1512, v1 + 1960);
  sub_10003AE8C(v1 + 1736);
  sub_10000DA7C((v102 + 560), *(v102 + 584));
  v90 = v107[24];
  v91 = v107[25];
  *(v1 + 2592) = v91;
  v92 = type metadata accessor for SnoutManager(0);

  v93 = swift_task_alloc();
  *(v1 + 2600) = v93;
  *v93 = v1;
  v93[1] = sub_1001308BC;

  return (sub_10016E27C)(v1 + 1512, v90, v91, 1, v92, &off_100223858);
}

uint64_t sub_1001308BC()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 1512);

  return _swift_task_switch(sub_1001309DC, 0, 0);
}

uint64_t sub_1001309DC()
{
  v102 = v0;
  v2 = *(v0 + 2520);
  v3 = (*(v0 + 2528) + 1);

  if (v3 == v2)
  {
LABEL_2:

    sub_10014AA3C(v0 + 2184);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 2528) + 1;
    if (v6 == *(v0 + 2520))
    {
LABEL_20:
      __break(1u);
    }

    else
    {
      v7 = v0 + 1593;
      v87 = (v0 + 601);
      v88 = (v0 + 897);
      v89 = (v0 + 305);
      v90 = (v0 + 1198);
      v91 = (v0 + 1502);
      v92 = (v0 + 1193);
      v93 = (v0 + 1497);
      while (1)
      {
        *(v0 + 2528) = v6;
        v8 = *(v0 + 2360) + 296 * v6;
        memcpy((v0 + 312), (v8 + 32), 0x121uLL);
        v3 = swift_allocObject();
        *(v0 + 2536) = v3;
        memcpy(v3 + 16, (v8 + 32), 0x121uLL);
        swift_beginAccess();
        memcpy((v0 + 904), v3 + 16, 0x121uLL);
        if ((*(v0 + 1009) & 1) != 0 && (*(v0 + 1075) & 1) == 0)
        {
          v10 = *(v0 + 1204);
          v11 = *(v0 + 2512);
          v12 = *(v0 + 2368);
          sub_1000B3B24(v0 + 312, v0 + 1208);
          sub_1000B3B24(v0 + 904, v0 + 16);
          v9 = sub_1000B01A8(v12 + v10, v11);
          sub_10003C04C(v0 + 904);
        }

        else
        {
          sub_1000B3B24(v0 + 312, v0 + 608);
          v9 = 0;
        }

        *(v7 + 1018) = v9 & 1;
        v13 = *(v0 + 2456);
        v14 = *(v0 + 2448);
        v15 = *(v0 + 2440);
        swift_beginAccess();
        Date.init(timeIntervalSince1970:)();
        ConversionType.isInstall.getter(v3[120]);
        Date.addingTimeInterval(_:)();
        sub_10014CA00(&qword_10023B530, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v16 = dispatch thunk of static Comparable.< infix(_:_:)();
        v1 = *(v14 + 8);
        *(v0 + 2544) = v1;
        *(v0 + 2552) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v1(v13, v15);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v17 = *(v0 + 2432);
        v18 = *(v0 + 2416);
        v19 = *(v0 + 2408);
        v20 = Logger.postback.unsafeMutableAddressor();
        (*(v18 + 16))(v17, v20, v19);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v21, v22, "Postback is past activation window. Not updating.", v23, 2u);
        }

        v24 = *(v0 + 2464);
        v25 = *(v0 + 2440);
        v26 = *(v0 + 2432);
        v27 = *(v0 + 2416);
        v28 = *(v0 + 2408);

        (*(v27 + 8))(v26, v28);
        sub_1000B3D30();
        v29 = swift_allocError();
        *v30 = 5;
        swift_willThrow();
        v1(v24, v25);
        swift_endAccess();
        v31 = *(v0 + 2424);
        v32 = *(v0 + 2416);
        v33 = *(v0 + 2408);
        v34 = Logger.postback.unsafeMutableAddressor();
        (*(v32 + 16))(v31, v34, v33);

        swift_errorRetain();
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();

        v37 = os_log_type_enabled(v35, v36);
        v38 = *(v0 + 2536);
        v39 = *(v0 + 2424);
        v40 = *(v0 + 2416);
        v41 = *(v0 + 2408);
        if (v37)
        {
          v99 = *(v0 + 2408);
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v97 = v39;
          v101[0] = v95;
          *v42 = 136315394;
          v44 = *(v38 + 48);
          v1 = *(v38 + 56);

          v45 = sub_10017AD04(v44, v1, v101);

          *(v42 + 4) = v45;
          *(v42 + 12) = 2112;
          swift_errorRetain();
          v46 = _swift_stdlib_bridgeErrorToNSError();
          *(v42 + 14) = v46;
          *v43 = v46;
          _os_log_impl(&_mh_execute_header, v35, v36, "Failed to update postback %s with error: %@", v42, 0x16u);
          sub_10000DAF8(v43, &qword_100239F10, &qword_1001B4FD0);

          sub_10000DB58(v95);

          (*(v40 + 8))(v97, v99);
        }

        else
        {

          (*(v40 + 8))(v39, v41);
        }

        v7 = v0 + 1593;
        v47 = *(v0 + 2536);
        if (*(v0 + 2611) == 1)
        {
          v94 = v47[16];
          if (v29)
          {
            swift_errorRetain();
            v85 = sub_1000C7C10(v29);
            v98 = v53;
            v100 = v52;
            v96 = v54;
            v47 = *(v0 + 2536);
          }

          else
          {
            v85 = 0;
            v98 = 0;
            v100 = 0;
            v96 = 0;
          }

          *(v0 + 2584) = v29;
          v84 = *(v0 + 2544);
          v62 = *(v0 + 1508);
          v63 = *(v0 + 2456);
          v64 = *(v0 + 2440);
          v65 = *(v0 + 2400);
          v66 = *(v0 + 2392);
          v67 = *(v0 + 2384);
          v86 = *(v0 + 2376);
          static Date.now.getter();
          (*(v66 + 104))(v65, v62, v67);
          v68 = sub_100025808(v63, v65);
          v70 = v69;
          (*(v66 + 8))(v65, v67);
          v84(v63, v64);
          if (v70)
          {
            v71 = 0;
          }

          else
          {
            v71 = v68;
          }

          v72 = [objc_opt_self() buildVersion];
          v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v74;

          *(v0 + 1514) = *v90;
          *(v0 + 1609) = *v89;
          *(v0 + 1626) = *v91;
          *(v0 + 1644) = *(v0 + 604);
          *(v0 + 1641) = *v87;
          *(v0 + 1659) = *v92;
          *(v0 + 1676) = *(v0 + 900);
          *(v0 + 1673) = *v88;
          *(v0 + 1699) = *v93;
          *(v0 + 1738) = *v90;
          *(v0 + 1593) = 33686018;
          *(v0 + 1817) = 33686018;
          *(v0 + 1836) = *(v0 + 308);
          *(v0 + 1833) = *v89;
          *(v0 + 1850) = *v91;
          *(v0 + 1868) = *(v0 + 604);
          *(v0 + 1865) = *v87;
          *(v0 + 1657) = 770;
          *(v0 + 1881) = 770;
          *(v0 + 1883) = *v92;
          *(v0 + 1900) = *(v0 + 900);
          *(v0 + 1897) = *v88;
          *(v0 + 1923) = *v93;
          *(v0 + 1518) = *(v0 + 1202);
          *(v0 + 1612) = *(v0 + 308);
          *(v0 + 1630) = *(v0 + 1506);
          *(v0 + 1663) = *(v0 + 1197);
          *(v0 + 1703) = *(v0 + 1501);
          *(v0 + 1704) = 0u;
          *(v0 + 1720) = 0u;
          *(v0 + 1512) = 517;
          *(v0 + 1736) = 517;
          *(v0 + 1742) = *(v0 + 1202);
          *(v0 + 1520) = v85;
          *(v0 + 1744) = v85;
          *(v0 + 1528) = v100;
          *(v0 + 1752) = v100;
          *(v0 + 1536) = v98;
          *(v0 + 1760) = v98;
          *(v0 + 1544) = v96;
          *(v0 + 1768) = v96;
          *(v0 + 1568) = v71;
          *(v0 + 1792) = v71;
          *(v0 + 1576) = v73;
          *(v0 + 1800) = v73;
          *(v0 + 1584) = v75;
          *(v0 + 1808) = v75;
          *(v0 + 2616) = 1;
          *(v0 + 2624) = 1;
          *(v0 + 2632) = 1;
          *(v0 + 2640) = 1;
          *(v0 + 1597) = 1;
          *(v0 + 1821) = 1;
          *(v0 + 2608) = 0;
          *(v0 + 1600) = v94;
          *(v0 + 1824) = v94;
          *(v0 + 1608) = 0;
          *(v0 + 1832) = 0;
          v76 = *(v0 + 2616);
          *(v0 + 1624) = v76;
          *(v0 + 1848) = v76;
          *(v0 + 1625) = 3;
          *(v0 + 1849) = 3;
          *(v0 + 1854) = *(v0 + 1506);
          v77 = *(v0 + 2624);
          *(v0 + 1640) = v77;
          *(v0 + 1864) = v77;
          v78 = *(v0 + 2632);
          *(v0 + 1656) = v78;
          *(v0 + 1880) = v78;
          *(v0 + 1887) = *(v0 + 1197);
          v79 = *(v0 + 2640);
          *(v0 + 1672) = v79;
          *(v0 + 1896) = v79;
          *(v0 + 1696) = 514;
          *(v0 + 1920) = 514;
          *(v0 + 1698) = 2;
          *(v0 + 1922) = 2;
          *(v0 + 1927) = *(v0 + 1501);
          *(v0 + 1928) = 0u;
          *(v0 + 1944) = 0u;
          *(v0 + 1552) = 0u;
          *(v0 + 1592) = 0;
          *(v0 + 1616) = 0;
          *(v0 + 1632) = 0;
          *(v0 + 1648) = 0;
          *(v0 + 1664) = 0;
          *(v0 + 1680) = 0u;
          *(v0 + 1776) = 0u;
          *(v0 + 1816) = 0;
          *(v0 + 1840) = 0;
          *(v0 + 1856) = 0;
          *(v0 + 1872) = 0;
          *(v0 + 1888) = 0;
          *(v0 + 1904) = 0u;
          sub_100010568(v0 + 1512, v0 + 1960);
          sub_10003AE8C(v0 + 1736);
          sub_10000DA7C((v86 + 560), *(v86 + 584));
          v81 = v47[24];
          v80 = v47[25];
          *(v0 + 2592) = v80;
          v82 = type metadata accessor for SnoutManager(0);

          v83 = swift_task_alloc();
          *(v0 + 2600) = v83;
          *v83 = v0;
          v83[1] = sub_1001308BC;

          return (sub_10016E27C)(v0 + 1512, v81, v80, 1, v82, &off_100223858);
        }

        v48 = *(v0 + 2520);
        v3 = (*(v0 + 2528) + 1);

        if (v3 == v48)
        {
          goto LABEL_2;
        }

        v6 = *(v0 + 2528) + 1;
        if (v6 == *(v0 + 2520))
        {
          goto LABEL_20;
        }
      }
    }

    v49 = *(v0 + 2512);
    v50 = *(v0 + 2368);
    v51 = v0 + 2184;
    if (v3[121])
    {
      sub_1000B09EC(v50, v49, v51);
    }

    else
    {
      sub_1000B1054(v50, v49, v51);
    }

    v55 = *(v0 + 2376);
    v1(*(v0 + 2464), *(v0 + 2440));
    swift_endAccess();
    v57 = *v55;
    v56 = v55[1];
    v58 = v55[2];

    *(v0 + 2296) = &type metadata for PostbackDatabaseStore;
    *(v0 + 2304) = sub_1001494B0();
    *(v0 + 2272) = v57;
    *(v0 + 2280) = v56;
    *(v0 + 2288) = v58;

    v59 = v58;
    v60 = swift_task_alloc();
    *(v0 + 2560) = v60;
    v60[2] = v59;
    v60[3] = v0 + 2272;
    v60[4] = sub_10014D2C8;
    v60[5] = v3;
    v61 = swift_task_alloc();
    *(v0 + 2568) = v61;
    *v61 = v0;
    v61[1] = sub_10012ED1C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v61, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D288, v60, &type metadata for () + 8);
  }
}

uint64_t sub_100131720()
{
  v1 = type metadata accessor for Logger();
  v0[9] = v1;
  v0[10] = *(v1 - 8);
  v0[11] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_100131820;

  return sub_100159114(3);
}

uint64_t sub_100131820(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = a2;
  v3[13] = a2;

  return _swift_task_switch(sub_100131928, 0, 0);
}

uint64_t sub_100131928()
{
  v53 = v0;
  v0[5] = 58;
  v1 = v0 + 5;
  v2 = v0[13];
  if (v2)
  {
    v3 = v0[3];
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v0[13];
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  v0[6] = 0xE100000000000000;
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  v7 = sub_100146984(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000E19D8, v5, v3, v4, v6);
  v8 = 0;

  v10 = v7[2];
  if (!v10)
  {
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v11 = 0;
  v12 = -v10;
  v13 = v7 + 7;
  v14 = _swiftEmptyArrayStorage;
  do
  {
    v50 = v14;
    v15 = &v13[4 * v11++];
    v16 = v8;
    while (1)
    {
      if ((v11 - 1) >= v7[2])
      {
        __break(1u);
        return result;
      }

      v17 = *(v15 - 3);
      v18 = *(v15 - 2);
      if (!((v18 ^ v17) >> 14))
      {
        goto LABEL_18;
      }

      v19 = *(v15 - 1);
      v20 = *v15;
      if ((*v15 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v20 & 0x2000000000000000) != 0)
      {
        v51[7] = v19;
        v51[8] = v20 & 0xFFFFFFFFFFFFFFLL;
        v21 = (v1 + 2);
      }

      else if ((v19 & 0x1000000000000000) != 0)
      {
        v21 = (v20 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v49 = *(v15 - 3);
        v27 = *(v15 - 2);
        v28 = *(v15 - 1);
        v21 = _StringObject.sharedUTF8.getter();
        v19 = v28;
        v17 = v49;
        v18 = v27;
      }

      v22 = sub_10014B1E8(v21, v17, v18, v19, v20, 10);
      LOBYTE(v52) = v23 & 1;

      v16 = 0;
      v8 = 0;
      if ((v52 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_18:
      ++v11;
      v15 += 4;
      if (v12 + v11 == 1)
      {
        v14 = v50;
        goto LABEL_30;
      }
    }

    v48 = *(v15 - 2);
    v24 = *(v15 - 3);
    v25 = *(v15 - 1);

    v22 = sub_100148C38(v24, v48, v25, v20, 10);
    LOBYTE(v25) = v26;

    if (v25)
    {
      goto LABEL_18;
    }

    v8 = v16;
LABEL_23:
    v14 = v50;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100089540(0, *(v50 + 2) + 1, 1, v50);
      v14 = result;
    }

    v30 = *(v14 + 2);
    v29 = *(v14 + 3);
    if (v30 >= v29 >> 1)
    {
      result = sub_100089540((v29 > 1), v30 + 1, 1, v14);
      v14 = result;
    }

    *(v14 + 2) = v30 + 1;
    *&v14[8 * v30 + 32] = v22;
    v13 = v7 + 7;
  }

  while (v12 + v11);
LABEL_30:
  v32 = v51[10];
  v31 = v51[11];
  v33 = v51[9];

  v34 = Logger.postback.unsafeMutableAddressor();
  (*(v32 + 16))(v31, v34, v33);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v38 = v51[10];
  v39 = v51[11];
  v40 = v51[9];
  if (v37)
  {
    v41 = swift_slowAlloc();
    v42 = v14;
    v43 = swift_slowAlloc();
    v52 = v43;
    *v41 = 136315138;
    v44 = Array.description.getter();
    v46 = sub_10017AD04(v44, v45, &v52);

    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v35, v36, "Retrieved conversion window thresholds: %s", v41, 0xCu);
    sub_10000DB58(v43);
    v14 = v42;
  }

  (*(v38 + 8))(v39, v40);

  v47 = v51[1];

  return v47(v14);
}

uint64_t sub_100131D80(uint64_t a1)
{
  v2[168] = v1;
  v2[167] = a1;
  v3 = type metadata accessor for Logger();
  v2[169] = v3;
  v2[170] = *(v3 - 8);
  v2[171] = swift_task_alloc();
  v2[172] = swift_task_alloc();
  v2[173] = swift_task_alloc();

  return _swift_task_switch(sub_100131E5C, 0, 0);
}

uint64_t sub_100131E5C(uint64_t a1)
{
  if (*(v1[167] + 50))
  {
    v2 = swift_task_alloc();
    v1[174] = v2;
    *v2 = v1;
    v2[1] = sub_100132020;

    return sub_100131720();
  }

  else
  {
    v4 = v1[173];
    v5 = v1[170];
    v6 = v1[169];
    v7 = Logger.postback.unsafeMutableAddressor();
    (*(v5 + 16))(v4, v7, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v1[173];
    v12 = v1[170];
    v13 = v1[169];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "ghostback unregistered, skipping imprint", v14, 2u);
    }

    (*(v12 + 8))(v11, v13);

    v15 = v1[1];

    return v15();
  }
}

uint64_t sub_100132020(uint64_t a1)
{
  *(*v1 + 1400) = a1;

  return _swift_task_switch(sub_100132120, 0, 0);
}

uint64_t sub_100132120()
{
  v19 = v0;
  v1 = v0[168];
  v2 = v0[167];
  v3 = [objc_opt_self() sharedScheduler];
  v17[3] = &type metadata for ActivityManager;
  v17[4] = &off_100223E90;
  v4 = swift_allocObject();
  v17[0] = v4;
  v4[5] = &type metadata for BackgroundSystemTaskScheduler;
  v4[6] = &off_100217910;
  v4[2] = v3;
  v18[3] = &type metadata for LaunchServicesRecordFactory;
  v18[4] = &off_10021CBA8;
  sub_1000B8524(v17, v18, (v0 + 148));
  v5 = *v1;
  v0[176] = *v1;
  v6 = v1[1];
  v0[177] = v6;
  v7 = v1[2];
  v0[178] = v7;
  v8 = swift_allocObject();
  v0[179] = v8;
  v8[1] = *v2;
  v9 = v2[4];
  v11 = v2[1];
  v10 = v2[2];
  v8[4] = v2[3];
  v8[5] = v9;
  v8[2] = v11;
  v8[3] = v10;
  v12 = v2[8];
  v14 = v2[5];
  v13 = v2[6];
  v8[8] = v2[7];
  v8[9] = v12;
  v8[6] = v14;
  v8[7] = v13;
  sub_100070EEC(v2, (v0 + 76));
  v15 = swift_task_alloc();
  v0[180] = v15;
  *v15 = v0;
  v15[1] = sub_1001322F0;

  return sub_100110084(sub_10014C830, v8, v5, v6, v7);
}

uint64_t sub_1001322F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1448) = a1;
  *(v3 + 1456) = v1;

  if (v1)
  {

    v4 = sub_100133514;
  }

  else
  {

    v4 = sub_100132444;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100132444(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), void *a7, char *a8)
{
  v53 = v8;
  v9 = v8[181];
  v10 = *(v9 + 16);
  v8[183] = v10;
  if (v10)
  {
    v11 = v8[182];
    v8[184] = 0;
    if (*(v9 + 16))
    {
      v12 = v8[175];
      v13 = v8[167];
      memcpy(v8 + 2, (v9 + 32), 0x121uLL);
      v14 = swift_allocObject();
      v8[185] = v14;
      memmove((v14 + 16), (v9 + 32), 0x121uLL);
      swift_beginAccess();
      sub_1000B3B24((v8 + 2), (v8 + 39));
      sub_1000B17E0(v13, v12, (v8 + 148));
      if (v11)
      {
        swift_endAccess();

        v15 = v8[172];
        v16 = v8[170];
        v17 = v8[169];
        v18 = v8[167];
        v19 = Logger.postback.unsafeMutableAddressor();
        (*(v16 + 16))(v15, v19, v17);
        sub_100070EEC(v18, (v8 + 94));
        swift_errorRetain();
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        sub_10003BC20(v18);

        v22 = os_log_type_enabled(v20, v21);
        v23 = v8[172];
        v24 = v8[170];
        v25 = v8[169];
        if (v22)
        {
          v51 = v8[172];
          v26 = v8[167];
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v52 = v29;
          *v27 = 136315394;
          *(v27 + 4) = sub_10017AD04(*(v26 + 56), *(v26 + 64), &v52);
          *(v27 + 12) = 2112;
          swift_errorRetain();
          v30 = _swift_stdlib_bridgeErrorToNSError();
          *(v27 + 14) = v30;
          *v28 = v30;
          _os_log_impl(&_mh_execute_header, v20, v21, "Failed to imprint postbacks for conversion id %s, with error: %@", v27, 0x16u);
          sub_10000DAF8(v28, &qword_100239F10, &qword_1001B4FD0);

          sub_10000DB58(v29);

          (*(v24 + 8))(v51, v25);
        }

        else
        {

          (*(v24 + 8))(v23, v25);
        }

        swift_willThrow();
        sub_10014AA3C((v8 + 148));

        v50 = v8[1];
        goto LABEL_16;
      }

      v45 = v8[178];
      v46 = v8[177];
      v47 = v8[176];
      swift_endAccess();

      v8[162] = &type metadata for PostbackDatabaseStore;
      v8[163] = sub_1001494B0();
      v8[159] = v47;
      v8[160] = v46;
      v8[161] = v45;

      v48 = v45;
      v49 = swift_task_alloc();
      v8[186] = v49;
      v49[2] = v48;
      v49[3] = v8 + 159;
      v49[4] = sub_10014D2C8;
      v49[5] = v14;
      a1 = swift_task_alloc();
      v8[187] = a1;
      *a1 = v8;
      a1[1] = sub_1001329E0;
      a6 = sub_10014D288;
      a5 = 0x80000001001CD620;
      a8 = &type metadata for () + 8;
      a2 = 0;
      a3 = 0;
      a4 = 0xD00000000000001BLL;
      a7 = v49;
    }

    else
    {
      __break(1u);
    }

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v31 = v8[167];

  if ((*(v31 + 74) & 1) == 0)
  {
    sub_10014AA3C((v8 + 148));

    v50 = v8[1];
LABEL_16:

    return v50();
  }

  v32 = v8[167];
  v33 = swift_allocObject();
  v8[189] = v33;
  v33[1] = *v32;
  v34 = v32[4];
  v36 = v32[1];
  v35 = v32[2];
  v33[4] = v32[3];
  v33[5] = v34;
  v33[2] = v36;
  v33[3] = v35;
  v37 = v32[8];
  v39 = v32[5];
  v38 = v32[6];
  v33[8] = v32[7];
  v33[9] = v37;
  v33[6] = v39;
  v33[7] = v38;
  sub_100070EEC(v32, (v8 + 112));
  v40 = swift_task_alloc();
  v8[190] = v40;
  *v40 = v8;
  v40[1] = sub_10013335C;
  v41 = v8[178];
  v42 = v8[177];
  v43 = v8[176];

  return sub_10010EF70(sub_10010EF70, sub_10014C8A8, v33, v43, v42, v41);
}

uint64_t sub_1001329E0()
{
  v2 = *v1;
  *(*v1 + 1504) = v0;

  if (v0)
  {

    v3 = sub_1001330F4;
  }

  else
  {

    sub_10000DB58((v2 + 1272));
    v3 = sub_100132B30;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100132B30()
{
  v56 = v0;
  v1 = v0[184];
  v2 = v0[183];

  if (v1 + 1 != v2)
  {
    v25 = v0[188];
    v26 = v0[184] + 1;
    v0[184] = v26;
    v27 = v0[181];
    if (v26 >= *(v27 + 16))
    {
      __break(1u);
    }

    else
    {
      v28 = v0[175];
      v29 = v0[167];
      v30 = v27 + 296 * v26;
      memcpy(v0 + 2, (v30 + 32), 0x121uLL);
      v31 = swift_allocObject();
      v0[185] = v31;
      memmove((v31 + 16), (v30 + 32), 0x121uLL);
      swift_beginAccess();
      sub_1000B3B24((v0 + 2), (v0 + 39));
      sub_1000B17E0(v29, v28, (v0 + 148));
      if (v25)
      {
        swift_endAccess();

        v32 = v0[172];
        v33 = v0[170];
        v34 = v0[169];
        v35 = v0[167];
        v36 = Logger.postback.unsafeMutableAddressor();
        (*(v33 + 16))(v32, v36, v34);
        sub_100070EEC(v35, (v0 + 94));
        swift_errorRetain();
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        sub_10003BC20(v35);

        v39 = os_log_type_enabled(v37, v38);
        v40 = v0[172];
        v41 = v0[170];
        v42 = v0[169];
        if (v39)
        {
          v54 = v0[172];
          v43 = v0[167];
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v55 = v46;
          *v44 = 136315394;
          *(v44 + 4) = sub_10017AD04(*(v43 + 56), *(v43 + 64), &v55);
          *(v44 + 12) = 2112;
          swift_errorRetain();
          v47 = _swift_stdlib_bridgeErrorToNSError();
          *(v44 + 14) = v47;
          *v45 = v47;
          _os_log_impl(&_mh_execute_header, v37, v38, "Failed to imprint postbacks for conversion id %s, with error: %@", v44, 0x16u);
          sub_10000DAF8(v45, &qword_100239F10, &qword_1001B4FD0);

          sub_10000DB58(v46);

          (*(v41 + 8))(v54, v42);
        }

        else
        {

          (*(v41 + 8))(v40, v42);
        }

        swift_willThrow();
        sub_10014AA3C((v0 + 148));

        v48 = v0[1];
        goto LABEL_16;
      }

      v49 = v0[178];
      v50 = v0[177];
      v51 = v0[176];
      swift_endAccess();

      v0[162] = &type metadata for PostbackDatabaseStore;
      v0[163] = sub_1001494B0();
      v0[159] = v51;
      v0[160] = v50;
      v0[161] = v49;

      v52 = v49;
      v53 = swift_task_alloc();
      v0[186] = v53;
      v53[2] = v52;
      v53[3] = v0 + 159;
      v53[4] = sub_10014D2C8;
      v53[5] = v31;
      v3 = swift_task_alloc();
      v0[187] = v3;
      *v3 = v0;
      v3[1] = sub_1001329E0;
      v8 = sub_10014D288;
      v7 = 0x80000001001CD620;
      v10 = &type metadata for () + 8;
      v4 = 0;
      v5 = 0;
      v6 = 0xD00000000000001BLL;
      v9 = v53;
    }

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = v0[167];

  if (*(v11 + 74))
  {
    v12 = v0[167];
    v13 = swift_allocObject();
    v0[189] = v13;
    v13[1] = *v12;
    v14 = v12[4];
    v16 = v12[1];
    v15 = v12[2];
    v13[4] = v12[3];
    v13[5] = v14;
    v13[2] = v16;
    v13[3] = v15;
    v17 = v12[8];
    v19 = v12[5];
    v18 = v12[6];
    v13[8] = v12[7];
    v13[9] = v17;
    v13[6] = v19;
    v13[7] = v18;
    sub_100070EEC(v12, (v0 + 112));
    v20 = swift_task_alloc();
    v0[190] = v20;
    *v20 = v0;
    v20[1] = sub_10013335C;
    v21 = v0[178];
    v22 = v0[177];
    v23 = v0[176];

    return sub_10010EF70(sub_10010EF70, sub_10014C8A8, v13, v23, v22, v21);
  }

  sub_10014AA3C((v0 + 148));

  v48 = v0[1];
LABEL_16:

  return v48();
}

uint64_t sub_1001330F4()
{
  v21 = v0;

  sub_10000DB58(v0 + 159);

  v1 = v0[172];
  v2 = v0[170];
  v3 = v0[169];
  v4 = v0[167];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v5, v3);
  sub_100070EEC(v4, (v0 + 94));
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  sub_10003BC20(v4);

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[172];
  v10 = v0[170];
  v11 = v0[169];
  if (v8)
  {
    v19 = v0[172];
    v12 = v0[167];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_10017AD04(*(v12 + 56), *(v12 + 64), &v20);
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v16;
    *v14 = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to imprint postbacks for conversion id %s, with error: %@", v13, 0x16u);
    sub_10000DAF8(v14, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v15);

    (*(v10 + 8))(v19, v11);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  swift_willThrow();
  sub_10014AA3C((v0 + 148));

  v17 = v0[1];

  return v17();
}

uint64_t sub_10013335C()
{
  *(*v1 + 1528) = v0;

  if (v0)
  {
    v2 = sub_100133760;
  }

  else
  {
    v2 = sub_100133490;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100133490()
{
  sub_10014AA3C(v0 + 1184);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100133514(uint64_t a1)
{
  v22 = v1;
  v2 = v1[172];
  v3 = v1[170];
  v4 = v1[169];
  v5 = v1[167];
  v6 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v6, v4);
  sub_100070EEC(v5, (v1 + 94));
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_10003BC20(v5);

  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[172];
  v11 = v1[170];
  v12 = v1[169];
  if (v9)
  {
    v20 = v1[172];
    v13 = v1[167];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_10017AD04(*(v13 + 56), *(v13 + 64), &v21);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to imprint postbacks for conversion id %s, with error: %@", v14, 0x16u);
    sub_10000DAF8(v15, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v16);

    (*(v11 + 8))(v20, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  swift_willThrow();
  sub_10014AA3C((v1 + 148));

  v18 = v1[1];

  return v18();
}

uint64_t sub_100133760(uint64_t a1)
{
  v23 = v1;
  v2 = v1[171];
  v3 = v1[170];
  v4 = v1[169];
  v5 = v1[167];
  v6 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v6, v4);
  sub_100070EEC(v5, (v1 + 130));
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_10003BC20(v5);

  if (os_log_type_enabled(v7, v8))
  {
    v21 = v1[171];
    v9 = v1[170];
    v10 = v1[169];
    v11 = v1[167];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_10017AD04(*(v11 + 56), *(v11 + 64), &v22);
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v15;
    *v13 = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to clear unregistered postbacks for completed conversion id %s, with error: %@", v12, 0x16u);
    sub_10000DAF8(v13, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v14);

    (*(v9 + 8))(v21, v10);
  }

  else
  {
    v16 = v1[171];
    v17 = v1[170];
    v18 = v1[169];

    (*(v17 + 8))(v16, v18);
  }

  swift_willThrow();
  sub_10014AA3C((v1 + 148));

  v19 = v1[1];

  return v19();
}

uint64_t sub_1001339CC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  sub_1000E70F0(v8, a1);
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11 = v9;
  result = (*(v6 + 8))(v8, v5);
  *a2 = v11;
  return result;
}

uint64_t sub_100133AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[197] = a4;
  v4[196] = a3;
  v4[195] = a2;
  sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v4[198] = swift_task_alloc();
  v4[199] = swift_task_alloc();

  return _swift_task_switch(sub_100133BA0, 0, 0);
}

uint64_t sub_100133BA0()
{
  v1 = *(v0 + 1568);
  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = **(v0 + 1560);
    v3 = (v1 + 32);
    v4 = type metadata accessor for TaskPriority();
    v5 = *(v4 - 8);
    v24 = *(v5 + 56);
    v23 = (v5 + 48);
    v22 = (v5 + 8);
    do
    {
      v8 = *(v0 + 1592);
      v9 = *(v0 + 1584);
      v10 = *(v0 + 1576);
      memcpy((v0 + 616), v3, 0x121uLL);
      v24(v8, 1, 1, v4);
      sub_10003FD38(v10, v0 + 16);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      memcpy(v11 + 4, (v0 + 616), 0x121uLL);
      memcpy(v11 + 41, (v0 + 16), 0x258uLL);
      sub_100014B50(v8, v9, &qword_100239EE0, &qword_1001B3640);
      v13 = (*v23)(v9, 1, v4);
      v14 = *(v0 + 1584);
      if (v13 == 1)
      {
        sub_1000B3B24(v0 + 616, v0 + 912);
        sub_10000DAF8(v14, &qword_100239EE0, &qword_1001B3640);
        if (*v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1000B3B24(v0 + 616, v0 + 1208);
        TaskPriority.rawValue.getter();
        (*v22)(v14, v4);
        if (*v12)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = dispatch thunk of Actor.unownedExecutor.getter();
          v16 = v17;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_10:
      v18 = swift_allocObject();
      *(v18 + 16) = &unk_1001C1690;
      *(v18 + 24) = v11;

      if (v16 | v15)
      {
        v6 = v0 + 1504;
        *(v0 + 1504) = 0;
        *(v0 + 1512) = 0;
        *(v0 + 1520) = v15;
        *(v0 + 1528) = v16;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 1592);
      *(v0 + 1536) = 1;
      *(v0 + 1544) = v6;
      *(v0 + 1552) = v25;
      swift_task_create();

      sub_10000DAF8(v7, &qword_100239EE0, &qword_1001B3640);
      v3 += 296;
      --v2;
    }

    while (v2);
  }

  v19 = swift_task_alloc();
  *(v0 + 1600) = v19;
  v20 = sub_10000CDE0(&qword_10023D660, &unk_1001C16A0);
  *v19 = v0;
  v19[1] = sub_100133F38;

  return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v20);
}

uint64_t sub_100133F38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100134064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[427] = a5;
  v5[426] = a4;
  v6 = type metadata accessor for Logger();
  v5[428] = v6;
  v5[429] = *(v6 - 8);
  v5[430] = swift_task_alloc();
  v5[431] = swift_task_alloc();
  v5[432] = swift_task_alloc();
  v5[433] = swift_task_alloc();
  v7 = type metadata accessor for Calendar.Component();
  v5[434] = v7;
  v5[435] = *(v7 - 8);
  v5[436] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v5[437] = v8;
  v5[438] = *(v8 - 8);
  v5[439] = swift_task_alloc();

  return _swift_task_switch(sub_100134204, 0, 0);
}

uint64_t sub_100134204()
{
  v1 = v0[427];
  v2 = v0[426];
  v0[440] = v2[22];
  v0[441] = v2[23];
  v3 = v1[26];
  v0[442] = v3;
  v4 = v1[27];
  v0[443] = v4;
  v5 = v1[28];
  v0[444] = v5;
  v6 = v2[4];
  v0[445] = v6;
  v7 = v2[5];
  v0[446] = v7;

  v8 = swift_task_alloc();
  v0[447] = v8;
  *v8 = v0;
  v8[1] = sub_100134300;

  return sub_1000F1318(v6, v7, v3, v4, v5);
}

uint64_t sub_100134300(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 3584) = a1;
  *(v3 + 3837) = a2;

  return _swift_task_switch(sub_100134404, 0, 0);
}

uint64_t sub_100134404(uint64_t a1)
{
  v32 = *(v1 + 3837);
  v2 = *(v1 + 3512);
  v3 = *(v1 + 3504);
  v31 = *(v1 + 3496);
  v4 = *(v1 + 3488);
  v5 = *(v1 + 3480);
  v6 = *(v1 + 3472);
  v35 = *(v1 + 3416);
  v33 = *(v1 + 3584);
  v34 = *(v1 + 3408);
  static Date.now.getter();
  *(v1 + 1604) = enum case for Calendar.Component.hour(_:);
  v7 = *(v5 + 104);
  *(v1 + 3592) = v7;
  *(v1 + 3600) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v4);
  v8 = sub_100025808(v2, v4);
  v10 = v9;
  v11 = *(v5 + 8);
  *(v1 + 3608) = v11;
  *(v1 + 3616) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v4, v6);
  v12 = *(v3 + 8);
  *(v1 + 3624) = v12;
  *(v1 + 3632) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v2, v31);
  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  v14 = objc_opt_self();
  *(v1 + 3640) = v14;
  v15 = [v14 buildVersion];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(v1 + 3856) = 1;
  *(v1 + 3880) = v32 & 1;
  *(v1 + 3888) = 1;
  *(v1 + 3904) = 1;
  *(v1 + 3896) = 1;
  *(v1 + 2280) = 1031;
  *(v1 + 2288) = 0u;
  *(v1 + 2304) = 0u;
  *(v1 + 2320) = 0u;
  *(v1 + 2336) = v13;
  *(v1 + 2344) = v16;
  *(v1 + 2352) = v18;
  *(v1 + 2360) = 0;
  *(v1 + 2361) = 33686018;
  *(v1 + 2365) = 2;
  *(v1 + 2368) = 0;
  *(v1 + 2376) = 1;
  *(v1 + 2384) = v33;
  *(v1 + 2392) = v32 & 1;
  *(v1 + 2393) = 3;
  *(v1 + 2400) = 0;
  v19 = *(v1 + 3888);
  *(v1 + 2408) = v19;
  *(v1 + 2416) = 0;
  v20 = *(v1 + 3904);
  *(v1 + 2424) = v20;
  *(v1 + 2425) = 770;
  *(v1 + 2432) = 0;
  v21 = *(v1 + 3896);
  *(v1 + 2440) = v21;
  *(v1 + 2448) = 0u;
  *(v1 + 2464) = 514;
  *(v1 + 2466) = 2;
  *(v1 + 2472) = 0u;
  *(v1 + 2488) = 0u;
  *(v1 + 2056) = 1031;
  *(v1 + 2096) = 0u;
  *(v1 + 2080) = 0u;
  *(v1 + 2064) = 0u;
  *(v1 + 2112) = v13;
  *(v1 + 2120) = v16;
  *(v1 + 2128) = v18;
  *(v1 + 2136) = 0;
  *(v1 + 2141) = 2;
  *(v1 + 2137) = 33686018;
  *(v1 + 2144) = 0;
  *(v1 + 2152) = 1;
  *(v1 + 2160) = v33;
  *(v1 + 2168) = v32 & 1;
  *(v1 + 2169) = 3;
  *(v1 + 2176) = 0;
  *(v1 + 2184) = v19;
  *(v1 + 2192) = 0;
  *(v1 + 2200) = v20;
  *(v1 + 2201) = 770;
  *(v1 + 2208) = 0;
  *(v1 + 2216) = v21;
  *(v1 + 2224) = 0u;
  *(v1 + 2240) = 514;
  *(v1 + 2242) = 2;
  *(v1 + 2248) = 0u;
  *(v1 + 2264) = 0u;
  sub_100010568(v1 + 2280, v1 + 2504);
  sub_10003AE8C(v1 + 2056);
  v22 = *(v1 + 2456);
  *(v1 + 2888) = *(v1 + 2440);
  *(v1 + 2904) = v22;
  v23 = *(v1 + 2488);
  *(v1 + 2920) = *(v1 + 2472);
  *(v1 + 2936) = v23;
  v24 = *(v1 + 2392);
  *(v1 + 2824) = *(v1 + 2376);
  *(v1 + 2840) = v24;
  v25 = *(v1 + 2424);
  *(v1 + 2856) = *(v1 + 2408);
  *(v1 + 2872) = v25;
  v26 = *(v1 + 2328);
  *(v1 + 2760) = *(v1 + 2312);
  *(v1 + 2776) = v26;
  v27 = *(v1 + 2360);
  *(v1 + 2792) = *(v1 + 2344);
  *(v1 + 2808) = v27;
  v28 = *(v1 + 2296);
  *(v1 + 2728) = *(v1 + 2280);
  *(v1 + 2744) = v28;
  sub_1000C4E28(v34);
  sub_10014A628(v35 + 392, v1 + 312);
  memcpy((v1 + 16), v34, 0x121uLL);
  *(v1 + 400) = &type metadata for HTTP;
  *(v1 + 408) = &off_10021B990;
  sub_1000B3B24(v34, v1 + 1304);
  v29 = swift_task_alloc();
  *(v1 + 3648) = v29;
  *v29 = v1;
  v29[1] = sub_1001347A8;

  return sub_1000C2388();
}

uint64_t sub_1001347A8()
{
  *(*v1 + 3656) = v0;

  if (v0)
  {
    v2 = sub_100134C18;
  }

  else
  {
    v2 = sub_1001348BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001348BC()
{
  v33 = v0;
  sub_10014A684(v0 + 16);
  *(v0 + 3838) = 0;
  v1 = *(v0 + 3464);
  v2 = *(v0 + 3432);
  v3 = *(v0 + 3424);
  v4 = *(v0 + 3408);
  v5 = Logger.postback.unsafeMutableAddressor();
  *(v0 + 3664) = v5;
  v6 = *(v2 + 16);
  *(v0 + 3672) = v6;
  *(v0 + 3680) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  sub_1000B3B24(v4, v0 + 712);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 3408);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 134218242;
    *(v10 + 4) = *(v9 + 64);
    sub_10003C04C(v9);
    *(v10 + 12) = 2080;
    v12 = *(v0 + 3464);
    v13 = *(v0 + 3432);
    v14 = *(v0 + 3424);
    v15 = sub_10017AD04(0x73736563637573, 0xE700000000000000, &v32);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Postback transmission for app %llu completed with result: %s", v10, 0x16u);
    sub_10000DB58(v11);

    v16 = *(v13 + 8);
    v16(v12, v14);
  }

  else
  {
    v17 = *(v0 + 3464);
    v18 = *(v0 + 3432);
    v19 = *(v0 + 3424);
    sub_10003C04C(*(v0 + 3408));

    v16 = *(v18 + 8);
    v16(v17, v19);
  }

  *(v0 + 3688) = v16;
  v20 = *(v0 + 3528);
  sub_10000DA7C((*(v0 + 3416) + 560), *(*(v0 + 3416) + 584));
  v21 = *(v0 + 2904);
  *(v0 + 1768) = *(v0 + 2888);
  *(v0 + 1784) = v21;
  v22 = *(v0 + 2936);
  *(v0 + 1800) = *(v0 + 2920);
  *(v0 + 1816) = v22;
  v23 = *(v0 + 2840);
  *(v0 + 1704) = *(v0 + 2824);
  *(v0 + 1720) = v23;
  v24 = *(v0 + 2872);
  *(v0 + 1736) = *(v0 + 2856);
  *(v0 + 1752) = v24;
  v25 = *(v0 + 2776);
  *(v0 + 1640) = *(v0 + 2760);
  *(v0 + 1656) = v25;
  v26 = *(v0 + 2808);
  *(v0 + 1672) = *(v0 + 2792);
  *(v0 + 1688) = v26;
  v27 = *(v0 + 2744);
  *(v0 + 1608) = *(v0 + 2728);
  *(v0 + 1624) = v27;
  *(v0 + 3696) = &unk_1001C3B20;
  *(v0 + 3704) = &off_100223860 & 0xFFFFFFFFFFFFLL | 0x823E000000000000;
  v28 = type metadata accessor for SnoutManager(0);
  *(v0 + 3712) = v28;
  v29 = swift_task_alloc();
  *(v0 + 3720) = v29;
  *v29 = v0;
  v29[1] = sub_1001352E4;
  v30 = *(v0 + 3520);

  return (sub_10016E27C)(v0 + 1608, v30, v20, 1, v28, &off_100223858);
}

uint64_t sub_100134C18()
{
  v80 = v0;
  v1 = *(v0 + 3656);
  sub_10014A684(v0 + 16);
  *(v0 + 3400) = v1;
  swift_errorRetain();
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 3836) & 1) == 0)
  {
    v27 = *(v0 + 3456);
    v28 = *(v0 + 3432);
    v29 = *(v0 + 3424);

    v30 = Logger.postback.unsafeMutableAddressor();
    (*(v28 + 16))(v27, v30, v29);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Postback has invalid URL, deleting", v33, 2u);
    }

    v34 = *(v0 + 3456);
    v35 = *(v0 + 3432);
    v36 = *(v0 + 3424);

    (*(v35 + 8))(v34, v36);
    sub_1000C33F0();
    v37 = swift_allocError();
    *v38 = 0;
    v39 = sub_1000C7C10(v37);
    v41 = v40;
    v43 = v42;
    v45 = v44;

    *(v0 + 2736) = v39;
    *(v0 + 2744) = v41;

    *(v0 + 2752) = v43;
    *(v0 + 2760) = v45;

    v25 = 0;
    v26 = 2;
    v24 = 1;
  }

  else
  {
    v2 = *(v0 + 3448);
    v3 = *(v0 + 3432);
    v4 = *(v0 + 3424);
    v5 = *(v0 + 3408);

    v6 = Logger.postback.unsafeMutableAddressor();
    (*(v3 + 16))(v2, v6, v4);
    sub_1000B3B24(v5, v0 + 1008);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 3408);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 134218242;
      *(v10 + 4) = *(v9 + 64);
      sub_10003C04C(v9);
      *(v10 + 12) = 2112;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "Postback transmission failed for app: %llu with error: %@", v10, 0x16u);
      sub_10000DAF8(v11, &qword_100239F10, &qword_1001B4FD0);
    }

    else
    {
      sub_10003C04C(*(v0 + 3408));
    }

    v13 = *(v0 + 3656);
    v14 = *(v0 + 3448);
    v15 = *(v0 + 3432);
    v16 = *(v0 + 3424);

    (*(v15 + 8))(v14, v16);
    v17 = sub_1000C7C10(v13);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    *(v0 + 2736) = v17;
    *(v0 + 2744) = v19;

    v24 = 0;
    *(v0 + 2752) = v21;
    *(v0 + 2760) = v23;
    v25 = 1;
    v26 = 1;
  }

  *(v0 + 3839) = v26;
  *(v0 + 3838) = v25;
  v46 = *(v0 + 3464);
  v47 = *(v0 + 3432);
  v48 = *(v0 + 3424);
  v49 = *(v0 + 3408);
  v50 = Logger.postback.unsafeMutableAddressor();
  *(v0 + 3664) = v50;
  v51 = *(v47 + 16);
  *(v0 + 3672) = v51;
  *(v0 + 3680) = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v51(v46, v50, v48);
  sub_1000B3B24(v49, v0 + 712);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = *(v0 + 3408);
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v79 = v56;
    *v55 = 134218242;
    *(v55 + 4) = *(v54 + 64);
    sub_10003C04C(v54);
    *(v55 + 12) = 2080;
    if (v24)
    {
      v57 = 0xD000000000000014;
    }

    else
    {
      v57 = 0x6572756C696166;
    }

    if (v24)
    {
      v58 = 0x80000001001CD670;
    }

    else
    {
      v58 = 0xE700000000000000;
    }

    v59 = *(v0 + 3464);
    v60 = *(v0 + 3432);
    v61 = *(v0 + 3424);
    v62 = sub_10017AD04(v57, v58, &v79);

    *(v55 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v52, v53, "Postback transmission for app %llu completed with result: %s", v55, 0x16u);
    sub_10000DB58(v56);

    v63 = *(v60 + 8);
    v63(v59, v61);
  }

  else
  {
    v64 = *(v0 + 3464);
    v65 = *(v0 + 3432);
    v66 = *(v0 + 3424);
    sub_10003C04C(*(v0 + 3408));

    v63 = *(v65 + 8);
    v63(v64, v66);
  }

  *(v0 + 3688) = v63;
  v67 = *(v0 + 3528);
  sub_10000DA7C((*(v0 + 3416) + 560), *(*(v0 + 3416) + 584));
  v68 = *(v0 + 2904);
  *(v0 + 1768) = *(v0 + 2888);
  *(v0 + 1784) = v68;
  v69 = *(v0 + 2936);
  *(v0 + 1800) = *(v0 + 2920);
  *(v0 + 1816) = v69;
  v70 = *(v0 + 2840);
  *(v0 + 1704) = *(v0 + 2824);
  *(v0 + 1720) = v70;
  v71 = *(v0 + 2872);
  *(v0 + 1736) = *(v0 + 2856);
  *(v0 + 1752) = v71;
  v72 = *(v0 + 2776);
  *(v0 + 1640) = *(v0 + 2760);
  *(v0 + 1656) = v72;
  v73 = *(v0 + 2808);
  *(v0 + 1672) = *(v0 + 2792);
  *(v0 + 1688) = v73;
  v74 = *(v0 + 2744);
  *(v0 + 1608) = *(v0 + 2728);
  *(v0 + 1624) = v74;
  *(v0 + 3696) = &unk_1001C3B20;
  *(v0 + 3704) = &off_100223860 & 0xFFFFFFFFFFFFLL | 0x823E000000000000;
  v75 = type metadata accessor for SnoutManager(0);
  *(v0 + 3712) = v75;
  v76 = swift_task_alloc();
  *(v0 + 3720) = v76;
  *v76 = v0;
  v76[1] = sub_1001352E4;
  v77 = *(v0 + 3520);

  return (sub_10016E27C)(v0 + 1608, v77, v67, 1, v75, &off_100223858);
}

uint64_t sub_1001352E4()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 1608);

  return _swift_task_switch(sub_1001353E8, 0, 0);
}

uint64_t sub_1001353E8()
{
  if (*(v0 + 3838) == 1)
  {
    v16 = *(v0 + 3408);

    v1 = swift_task_alloc();
    *(v0 + 3728) = v1;
    v1[1] = vextq_s8(v16, v16, 8uLL);
    v2 = swift_task_alloc();
    *(v0 + 3736) = v2;
    *v2 = v0;
    v2[1] = sub_1001355DC;
    v3 = *(v0 + 3568);
    v4 = *(v0 + 3560);
    v5 = *(v0 + 3552);
    v6 = *(v0 + 3544);
    v7 = *(v0 + 3536);

    return sub_1000F01F0(v4, v3, 1, &unk_1001C16B8, v1, v7, v6, v5);
  }

  else
  {
    v9 = *(v0 + 3416);
    v10 = *(v0 + 3408);
    v12 = *v9;
    v11 = v9[1];
    v13 = v9[2];
    v14 = swift_allocObject();
    *(v0 + 3752) = v14;
    memcpy((v14 + 16), v10, 0x121uLL);
    sub_1000B3B24(v10, v0 + 416);
    v15 = swift_task_alloc();
    *(v0 + 3760) = v15;
    *v15 = v0;
    v15[1] = sub_1001356F8;

    return sub_10010EF70(sub_10010EF70, sub_10014A6DC, v14, v12, v11, v13);
  }
}

uint64_t sub_1001355DC()
{
  *(*v1 + 3744) = v0;

  if (v0)
  {
    v2 = sub_1001363C4;
  }

  else
  {

    v2 = sub_10014D66C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001356F8()
{
  *(*v1 + 3768) = v0;

  if (v0)
  {

    v2 = sub_100136AB8;
  }

  else
  {
    v2 = sub_100135838;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100135838()
{
  v1 = v0[446];
  v2 = v0[445];
  v3 = swift_allocObject();
  v0[472] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[473] = v4;
  *v4 = v0;
  v4[1] = sub_10013592C;
  v5 = v0[444];
  v6 = v0[443];
  v7 = v0[442];

  return sub_10010E890(sub_10010E890, sub_10014D680, v3, v7, v6, v5);
}

uint64_t sub_10013592C()
{
  *(*v1 + 3792) = v0;

  if (v0)
  {
    v2 = sub_100135B08;
  }

  else
  {
    v2 = sub_100135A5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100135A5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100135B08()
{
  v1 = *(v0 + 3792);
  *(v0 + 3800) = v1;
  (*(v0 + 3672))(*(v0 + 3440), *(v0 + 3664), *(v0 + 3424));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error during cleanup after postback transmission: %@", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  v7 = *(v0 + 3688);
  v8 = *(v0 + 3839);
  v9 = *(v0 + 3440);
  v10 = *(v0 + 3424);

  v7(v9, v10);
  if (v8)
  {
    if (v8 == 2)
    {
      v11 = 0x80000001001CD670;
      v12 = 0xD000000000000014;
    }

    else
    {
      v11 = 0xE700000000000000;
      v12 = 0x6572756C696166;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    v12 = 0x73736563637573;
  }

  v61 = (v0 + 3825);
  v63 = (v0 + 1593);
  v56 = (v0 + 3830);
  v57 = (v0 + 1297);
  v59 = (v0 + 1598);
  v60 = (v0 + 1001);
  v62 = (v0 + 705);
  *(v0 + 3808) = v11;
  v66 = *(v0 + 3696);
  v54 = *(v0 + 3640);
  v53 = *(v0 + 3624);
  v52 = *(v0 + 3608);
  v47 = *(v0 + 3592);
  v46 = *(v0 + 1604);
  v67 = *(v0 + 3528);
  v13 = *(v0 + 3512);
  v51 = *(v0 + 3496);
  v14 = *(v0 + 3488);
  v15 = *(v0 + 3472);
  v64 = *(v0 + 3416);
  v16 = *(v0 + 3408);
  v58 = *(v16 + 104) > 1u;
  sub_1000401C4();
  v17 = swift_allocError();
  *v18 = v1;
  v18[1] = v12;
  v18[2] = v11;
  v55 = *(v16 + 112);
  swift_errorRetain();
  swift_errorRetain();

  swift_errorRetain();
  v19 = sub_1000C7C10(v17);
  v49 = v21;
  v50 = v20;
  v48 = v22;

  static Date.now.getter();
  v47(v14, v46, v15);
  v23 = sub_100025808(v13, v14);
  v25 = v24;
  v52(v14, v15);
  v53(v13, v51);
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v23;
  }

  v27 = [v54 buildVersion];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(v0 + 3824) = 0;
  *(v0 + 3840) = 1;
  *(v0 + 3848) = 1;
  *(v0 + 3864) = 1;
  *(v0 + 3872) = 1;
  *(v0 + 2952) = 773;
  *(v0 + 2954) = *v56;
  *(v0 + 2958) = *(v0 + 3834);
  *(v0 + 2960) = v19;
  *(v0 + 2968) = v50;
  *(v0 + 2976) = v49;
  *(v0 + 2984) = v48;
  *(v0 + 2992) = 0u;
  *(v0 + 3008) = v26;
  *(v0 + 3016) = v28;
  *(v0 + 3024) = v30;
  *(v0 + 3032) = 0;
  *(v0 + 3033) = 33686018;
  *(v0 + 3037) = 1;
  *(v0 + 3040) = v55;
  v31 = *(v0 + 3824);
  *(v0 + 3048) = v31;
  *(v0 + 3049) = *v57;
  *(v0 + 3052) = *(v0 + 1300);
  *(v0 + 3056) = 0;
  v32 = *(v0 + 3840);
  *(v0 + 3064) = v32;
  *(v0 + 3065) = 3;
  *(v0 + 3066) = *v59;
  *(v0 + 3070) = *(v0 + 1602);
  *(v0 + 3072) = 0;
  v33 = *(v0 + 3848);
  *(v0 + 3080) = v33;
  *(v0 + 3081) = *v60;
  *(v0 + 3084) = *(v0 + 1004);
  *(v0 + 3088) = 0;
  v34 = *(v0 + 3864);
  *(v0 + 3096) = v34;
  *(v0 + 3097) = v58;
  *(v0 + 3098) = 3;
  *(v0 + 3099) = *v61;
  *(v0 + 3103) = *(v0 + 3829);
  *(v0 + 3104) = 0;
  v35 = *(v0 + 3872);
  *(v0 + 3112) = v35;
  *(v0 + 3116) = *(v0 + 708);
  *(v0 + 3113) = *v62;
  *(v0 + 3120) = 0u;
  *(v0 + 3136) = 514;
  *(v0 + 3138) = 2;
  *(v0 + 3143) = *(v0 + 1597);
  *(v0 + 3139) = *v63;
  *(v0 + 3144) = 0u;
  *(v0 + 3160) = 0u;
  *(v0 + 1832) = 773;
  *(v0 + 1838) = *(v0 + 3834);
  *(v0 + 1834) = *v56;
  *(v0 + 1840) = v19;
  *(v0 + 1848) = v50;
  *(v0 + 1856) = v49;
  *(v0 + 1864) = v48;
  *(v0 + 1872) = 0u;
  *(v0 + 1888) = v26;
  *(v0 + 1896) = v28;
  *(v0 + 1904) = v30;
  *(v0 + 1912) = 0;
  *(v0 + 1913) = 33686018;
  *(v0 + 1917) = 1;
  *(v0 + 1920) = v55;
  *(v0 + 1928) = v31;
  v36 = *v57;
  *(v0 + 1932) = *(v0 + 1300);
  *(v0 + 1929) = v36;
  *(v0 + 1936) = 0;
  *(v0 + 1944) = v32;
  *(v0 + 1945) = 3;
  v37 = *v59;
  *(v0 + 1950) = *(v0 + 1602);
  *(v0 + 1946) = v37;
  *(v0 + 1952) = 0;
  *(v0 + 1960) = v33;
  v38 = *v60;
  *(v0 + 1964) = *(v0 + 1004);
  *(v0 + 1961) = v38;
  *(v0 + 1968) = 0;
  *(v0 + 1976) = v34;
  *(v0 + 1977) = v58;
  *(v0 + 1978) = 3;
  v39 = *v61;
  *(v0 + 1983) = *(v0 + 3829);
  *(v0 + 1979) = v39;
  *(v0 + 1984) = 0;
  *(v0 + 1992) = v35;
  v40 = *v62;
  *(v0 + 1996) = *(v0 + 708);
  *(v0 + 1993) = v40;
  *(v0 + 2000) = 0u;
  *(v0 + 2016) = 514;
  *(v0 + 2018) = 2;
  v41 = *v63;
  *(v0 + 2023) = *(v0 + 1597);
  *(v0 + 2019) = v41;
  *(v0 + 2024) = 0u;
  *(v0 + 2040) = 0u;
  sub_100010568(v0 + 2952, v0 + 3176);
  sub_10003AE8C(v0 + 1832);
  sub_10000DA7C((v64 + 560), *(v64 + 584));
  v65 = (v66 + *v66);
  v42 = swift_task_alloc();
  *(v0 + 3816) = v42;
  *v42 = v0;
  v42[1] = sub_1001361F4;
  v43 = *(v0 + 3712);
  v44 = *(v0 + 3520);

  return (v65)(v0 + 2952, v44, v67, 1, v43, &off_100223858);
}

uint64_t sub_1001361F4()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 2952);

  return _swift_task_switch(sub_1001362F8, 0, 0);
}

uint64_t sub_1001362F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001363C4()
{

  v1 = *(v0 + 3744);
  *(v0 + 3800) = v1;
  (*(v0 + 3672))(*(v0 + 3440), *(v0 + 3664), *(v0 + 3424));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error during cleanup after postback transmission: %@", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  v7 = *(v0 + 3688);
  v8 = *(v0 + 3839);
  v9 = *(v0 + 3440);
  v10 = *(v0 + 3424);

  v7(v9, v10);
  if (v8)
  {
    if (v8 == 2)
    {
      v11 = 0x80000001001CD670;
      v12 = 0xD000000000000014;
    }

    else
    {
      v11 = 0xE700000000000000;
      v12 = 0x6572756C696166;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    v12 = 0x73736563637573;
  }

  v61 = (v0 + 3825);
  v63 = (v0 + 1593);
  v56 = (v0 + 3830);
  v57 = (v0 + 1297);
  v59 = (v0 + 1598);
  v60 = (v0 + 1001);
  v62 = (v0 + 705);
  *(v0 + 3808) = v11;
  v66 = *(v0 + 3696);
  v54 = *(v0 + 3640);
  v53 = *(v0 + 3624);
  v52 = *(v0 + 3608);
  v47 = *(v0 + 3592);
  v46 = *(v0 + 1604);
  v67 = *(v0 + 3528);
  v13 = *(v0 + 3512);
  v51 = *(v0 + 3496);
  v14 = *(v0 + 3488);
  v15 = *(v0 + 3472);
  v64 = *(v0 + 3416);
  v16 = *(v0 + 3408);
  v58 = *(v16 + 104) > 1u;
  sub_1000401C4();
  v17 = swift_allocError();
  *v18 = v1;
  v18[1] = v12;
  v18[2] = v11;
  v55 = *(v16 + 112);
  swift_errorRetain();
  swift_errorRetain();

  swift_errorRetain();
  v19 = sub_1000C7C10(v17);
  v49 = v21;
  v50 = v20;
  v48 = v22;

  static Date.now.getter();
  v47(v14, v46, v15);
  v23 = sub_100025808(v13, v14);
  v25 = v24;
  v52(v14, v15);
  v53(v13, v51);
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v23;
  }

  v27 = [v54 buildVersion];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(v0 + 3824) = 0;
  *(v0 + 3840) = 1;
  *(v0 + 3848) = 1;
  *(v0 + 3864) = 1;
  *(v0 + 3872) = 1;
  *(v0 + 2952) = 773;
  *(v0 + 2954) = *v56;
  *(v0 + 2958) = *(v0 + 3834);
  *(v0 + 2960) = v19;
  *(v0 + 2968) = v50;
  *(v0 + 2976) = v49;
  *(v0 + 2984) = v48;
  *(v0 + 2992) = 0u;
  *(v0 + 3008) = v26;
  *(v0 + 3016) = v28;
  *(v0 + 3024) = v30;
  *(v0 + 3032) = 0;
  *(v0 + 3033) = 33686018;
  *(v0 + 3037) = 1;
  *(v0 + 3040) = v55;
  v31 = *(v0 + 3824);
  *(v0 + 3048) = v31;
  *(v0 + 3049) = *v57;
  *(v0 + 3052) = *(v0 + 1300);
  *(v0 + 3056) = 0;
  v32 = *(v0 + 3840);
  *(v0 + 3064) = v32;
  *(v0 + 3065) = 3;
  *(v0 + 3066) = *v59;
  *(v0 + 3070) = *(v0 + 1602);
  *(v0 + 3072) = 0;
  v33 = *(v0 + 3848);
  *(v0 + 3080) = v33;
  *(v0 + 3081) = *v60;
  *(v0 + 3084) = *(v0 + 1004);
  *(v0 + 3088) = 0;
  v34 = *(v0 + 3864);
  *(v0 + 3096) = v34;
  *(v0 + 3097) = v58;
  *(v0 + 3098) = 3;
  *(v0 + 3099) = *v61;
  *(v0 + 3103) = *(v0 + 3829);
  *(v0 + 3104) = 0;
  v35 = *(v0 + 3872);
  *(v0 + 3112) = v35;
  *(v0 + 3116) = *(v0 + 708);
  *(v0 + 3113) = *v62;
  *(v0 + 3120) = 0u;
  *(v0 + 3136) = 514;
  *(v0 + 3138) = 2;
  *(v0 + 3143) = *(v0 + 1597);
  *(v0 + 3139) = *v63;
  *(v0 + 3144) = 0u;
  *(v0 + 3160) = 0u;
  *(v0 + 1832) = 773;
  *(v0 + 1838) = *(v0 + 3834);
  *(v0 + 1834) = *v56;
  *(v0 + 1840) = v19;
  *(v0 + 1848) = v50;
  *(v0 + 1856) = v49;
  *(v0 + 1864) = v48;
  *(v0 + 1872) = 0u;
  *(v0 + 1888) = v26;
  *(v0 + 1896) = v28;
  *(v0 + 1904) = v30;
  *(v0 + 1912) = 0;
  *(v0 + 1913) = 33686018;
  *(v0 + 1917) = 1;
  *(v0 + 1920) = v55;
  *(v0 + 1928) = v31;
  v36 = *v57;
  *(v0 + 1932) = *(v0 + 1300);
  *(v0 + 1929) = v36;
  *(v0 + 1936) = 0;
  *(v0 + 1944) = v32;
  *(v0 + 1945) = 3;
  v37 = *v59;
  *(v0 + 1950) = *(v0 + 1602);
  *(v0 + 1946) = v37;
  *(v0 + 1952) = 0;
  *(v0 + 1960) = v33;
  v38 = *v60;
  *(v0 + 1964) = *(v0 + 1004);
  *(v0 + 1961) = v38;
  *(v0 + 1968) = 0;
  *(v0 + 1976) = v34;
  *(v0 + 1977) = v58;
  *(v0 + 1978) = 3;
  v39 = *v61;
  *(v0 + 1983) = *(v0 + 3829);
  *(v0 + 1979) = v39;
  *(v0 + 1984) = 0;
  *(v0 + 1992) = v35;
  v40 = *v62;
  *(v0 + 1996) = *(v0 + 708);
  *(v0 + 1993) = v40;
  *(v0 + 2000) = 0u;
  *(v0 + 2016) = 514;
  *(v0 + 2018) = 2;
  v41 = *v63;
  *(v0 + 2023) = *(v0 + 1597);
  *(v0 + 2019) = v41;
  *(v0 + 2024) = 0u;
  *(v0 + 2040) = 0u;
  sub_100010568(v0 + 2952, v0 + 3176);
  sub_10003AE8C(v0 + 1832);
  sub_10000DA7C((v64 + 560), *(v64 + 584));
  v65 = (v66 + *v66);
  v42 = swift_task_alloc();
  *(v0 + 3816) = v42;
  *v42 = v0;
  v42[1] = sub_1001361F4;
  v43 = *(v0 + 3712);
  v44 = *(v0 + 3520);

  return (v65)(v0 + 2952, v44, v67, 1, v43, &off_100223858);
}

uint64_t sub_100136AB8()
{
  v1 = *(v0 + 3768);
  *(v0 + 3800) = v1;
  (*(v0 + 3672))(*(v0 + 3440), *(v0 + 3664), *(v0 + 3424));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error during cleanup after postback transmission: %@", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  v7 = *(v0 + 3688);
  v8 = *(v0 + 3839);
  v9 = *(v0 + 3440);
  v10 = *(v0 + 3424);

  v7(v9, v10);
  if (v8)
  {
    if (v8 == 2)
    {
      v11 = 0x80000001001CD670;
      v12 = 0xD000000000000014;
    }

    else
    {
      v11 = 0xE700000000000000;
      v12 = 0x6572756C696166;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    v12 = 0x73736563637573;
  }

  v61 = (v0 + 3825);
  v63 = (v0 + 1593);
  v56 = (v0 + 3830);
  v57 = (v0 + 1297);
  v59 = (v0 + 1598);
  v60 = (v0 + 1001);
  v62 = (v0 + 705);
  *(v0 + 3808) = v11;
  v66 = *(v0 + 3696);
  v54 = *(v0 + 3640);
  v53 = *(v0 + 3624);
  v52 = *(v0 + 3608);
  v47 = *(v0 + 3592);
  v46 = *(v0 + 1604);
  v67 = *(v0 + 3528);
  v13 = *(v0 + 3512);
  v51 = *(v0 + 3496);
  v14 = *(v0 + 3488);
  v15 = *(v0 + 3472);
  v64 = *(v0 + 3416);
  v16 = *(v0 + 3408);
  v58 = *(v16 + 104) > 1u;
  sub_1000401C4();
  v17 = swift_allocError();
  *v18 = v1;
  v18[1] = v12;
  v18[2] = v11;
  v55 = *(v16 + 112);
  swift_errorRetain();
  swift_errorRetain();

  swift_errorRetain();
  v19 = sub_1000C7C10(v17);
  v49 = v21;
  v50 = v20;
  v48 = v22;

  static Date.now.getter();
  v47(v14, v46, v15);
  v23 = sub_100025808(v13, v14);
  v25 = v24;
  v52(v14, v15);
  v53(v13, v51);
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v23;
  }

  v27 = [v54 buildVersion];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(v0 + 3824) = 0;
  *(v0 + 3840) = 1;
  *(v0 + 3848) = 1;
  *(v0 + 3864) = 1;
  *(v0 + 3872) = 1;
  *(v0 + 2952) = 773;
  *(v0 + 2954) = *v56;
  *(v0 + 2958) = *(v0 + 3834);
  *(v0 + 2960) = v19;
  *(v0 + 2968) = v50;
  *(v0 + 2976) = v49;
  *(v0 + 2984) = v48;
  *(v0 + 2992) = 0u;
  *(v0 + 3008) = v26;
  *(v0 + 3016) = v28;
  *(v0 + 3024) = v30;
  *(v0 + 3032) = 0;
  *(v0 + 3033) = 33686018;
  *(v0 + 3037) = 1;
  *(v0 + 3040) = v55;
  v31 = *(v0 + 3824);
  *(v0 + 3048) = v31;
  *(v0 + 3049) = *v57;
  *(v0 + 3052) = *(v0 + 1300);
  *(v0 + 3056) = 0;
  v32 = *(v0 + 3840);
  *(v0 + 3064) = v32;
  *(v0 + 3065) = 3;
  *(v0 + 3066) = *v59;
  *(v0 + 3070) = *(v0 + 1602);
  *(v0 + 3072) = 0;
  v33 = *(v0 + 3848);
  *(v0 + 3080) = v33;
  *(v0 + 3081) = *v60;
  *(v0 + 3084) = *(v0 + 1004);
  *(v0 + 3088) = 0;
  v34 = *(v0 + 3864);
  *(v0 + 3096) = v34;
  *(v0 + 3097) = v58;
  *(v0 + 3098) = 3;
  *(v0 + 3099) = *v61;
  *(v0 + 3103) = *(v0 + 3829);
  *(v0 + 3104) = 0;
  v35 = *(v0 + 3872);
  *(v0 + 3112) = v35;
  *(v0 + 3116) = *(v0 + 708);
  *(v0 + 3113) = *v62;
  *(v0 + 3120) = 0u;
  *(v0 + 3136) = 514;
  *(v0 + 3138) = 2;
  *(v0 + 3143) = *(v0 + 1597);
  *(v0 + 3139) = *v63;
  *(v0 + 3144) = 0u;
  *(v0 + 3160) = 0u;
  *(v0 + 1832) = 773;
  *(v0 + 1838) = *(v0 + 3834);
  *(v0 + 1834) = *v56;
  *(v0 + 1840) = v19;
  *(v0 + 1848) = v50;
  *(v0 + 1856) = v49;
  *(v0 + 1864) = v48;
  *(v0 + 1872) = 0u;
  *(v0 + 1888) = v26;
  *(v0 + 1896) = v28;
  *(v0 + 1904) = v30;
  *(v0 + 1912) = 0;
  *(v0 + 1913) = 33686018;
  *(v0 + 1917) = 1;
  *(v0 + 1920) = v55;
  *(v0 + 1928) = v31;
  v36 = *v57;
  *(v0 + 1932) = *(v0 + 1300);
  *(v0 + 1929) = v36;
  *(v0 + 1936) = 0;
  *(v0 + 1944) = v32;
  *(v0 + 1945) = 3;
  v37 = *v59;
  *(v0 + 1950) = *(v0 + 1602);
  *(v0 + 1946) = v37;
  *(v0 + 1952) = 0;
  *(v0 + 1960) = v33;
  v38 = *v60;
  *(v0 + 1964) = *(v0 + 1004);
  *(v0 + 1961) = v38;
  *(v0 + 1968) = 0;
  *(v0 + 1976) = v34;
  *(v0 + 1977) = v58;
  *(v0 + 1978) = 3;
  v39 = *v61;
  *(v0 + 1983) = *(v0 + 3829);
  *(v0 + 1979) = v39;
  *(v0 + 1984) = 0;
  *(v0 + 1992) = v35;
  v40 = *v62;
  *(v0 + 1996) = *(v0 + 708);
  *(v0 + 1993) = v40;
  *(v0 + 2000) = 0u;
  *(v0 + 2016) = 514;
  *(v0 + 2018) = 2;
  v41 = *v63;
  *(v0 + 2023) = *(v0 + 1597);
  *(v0 + 2019) = v41;
  *(v0 + 2024) = 0u;
  *(v0 + 2040) = 0u;
  sub_100010568(v0 + 2952, v0 + 3176);
  sub_10003AE8C(v0 + 1832);
  sub_10000DA7C((v64 + 560), *(v64 + 584));
  v65 = (v66 + *v66);
  v42 = swift_task_alloc();
  *(v0 + 3816) = v42;
  *v42 = v0;
  v42[1] = sub_1001361F4;
  v43 = *(v0 + 3712);
  v44 = *(v0 + 3520);

  return (v65)(v0 + 2952, v44, v67, 1, v43, &off_100223858);
}

uint64_t sub_1001371A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 312) = a1;
  *(v2 + 320) = a2;
  return _swift_task_switch(sub_1001371C4, 0, 0);
}

uint64_t sub_1001371C4()
{
  v1 = v0[39];
  v2 = v0[40];
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  v0[41] = v6;
  memcpy((v6 + 16), v2, 0x121uLL);
  sub_1000B3B24(v2, (v0 + 2));
  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v0;
  v7[1] = sub_1001372DC;

  return sub_10010EF70(sub_10010EF70, sub_10014D568, v6, v4, v3, v5);
}

uint64_t sub_1001372DC()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_10013740C;
  }

  else
  {
    v2 = sub_1000FB99C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100137450(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 1864) = v3;
  *(v4 + 2088) = a3;
  *(v4 + 1856) = a2;
  *(v4 + 1848) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 1872) = v5;
  *(v4 + 1880) = *(v5 - 8);
  *(v4 + 1888) = swift_task_alloc();

  return _swift_task_switch(sub_10013751C, 0, 0);
}

uint64_t sub_10013751C()
{
  v1 = *(v0 + 1864);
  v2 = *(v0 + 1856);
  v3 = *(v0 + 1848);
  sub_1000C7DDC(*(v0 + 2088), 0, (v0 + 464));
  v4 = *(v0 + 480);
  *(v0 + 1896) = *(v0 + 464);
  *(v0 + 1912) = v4;
  *(v0 + 1928) = *(v0 + 496);
  v5 = *(v0 + 648);
  *(v0 + 1040) = *(v0 + 632);
  *(v0 + 1056) = v5;
  *(v0 + 1072) = *(v0 + 664);
  *(v0 + 1088) = *(v0 + 680);
  v6 = *(v0 + 584);
  *(v0 + 976) = *(v0 + 568);
  *(v0 + 992) = v6;
  v7 = *(v0 + 616);
  *(v0 + 1008) = *(v0 + 600);
  *(v0 + 1024) = v7;
  v8 = *(v0 + 520);
  *(v0 + 912) = *(v0 + 504);
  *(v0 + 928) = v8;
  v9 = *(v0 + 552);
  *(v0 + 944) = *(v0 + 536);
  *(v0 + 960) = v9;
  v10 = v1[3];
  *(v0 + 1936) = v10;
  v11 = v1[4];
  *(v0 + 1944) = v11;
  v12 = v1[5];
  *(v0 + 1952) = v12;
  v13 = swift_allocObject();
  *(v0 + 1960) = v13;
  *(v13 + 16) = v3;
  *(v13 + 24) = v2;

  v14 = swift_task_alloc();
  *(v0 + 1968) = v14;
  *v14 = v0;
  v14[1] = sub_1001376B0;

  return sub_10010FAD4(v0 + 1096, sub_10014BAAC, v13, v10, v11, v12);
}

uint64_t sub_1001376B0()
{
  *(*v1 + 1976) = v0;

  if (v0)
  {
    v2 = sub_1001388DC;
  }

  else
  {
    v2 = sub_1001377D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001377D4()
{
  v1 = *(v0 + 1208);
  *(v0 + 1336) = *(v0 + 1192);
  *(v0 + 1352) = v1;
  *(v0 + 1368) = *(v0 + 1224);
  v2 = *(v0 + 1144);
  *(v0 + 1272) = *(v0 + 1128);
  *(v0 + 1288) = v2;
  v3 = *(v0 + 1176);
  *(v0 + 1304) = *(v0 + 1160);
  *(v0 + 1320) = v3;
  v4 = *(v0 + 1112);
  *(v0 + 1240) = *(v0 + 1096);
  *(v0 + 1256) = v4;
  if (sub_10014B138(v0 + 1240) == 1)
  {
    sub_1000401C4();
    v5 = swift_allocError();
    v6[1] = 0;
    v6[2] = 0;
    *v6 = 11;
    swift_willThrow();
    *(v0 + 2072) = v5;
    v7 = *(v0 + 1888);
    v8 = *(v0 + 1880);
    v9 = *(v0 + 1872);
    v10 = Logger.postback.unsafeMutableAddressor();
    (*(v8 + 16))(v7, v10, v9);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Pending postback attribution failed %@", v13, 0xCu);
      sub_10000DAF8(v14, &qword_100239F10, &qword_1001B4FD0);
    }

    v16 = *(v0 + 1888);
    v17 = *(v0 + 1880);
    v18 = *(v0 + 1872);
    v19 = *(v0 + 1864);
    v47 = *(v0 + 1856);
    v48 = *(v0 + 1896);

    *(v0 + 1816) = *(v0 + 488);
    *(v0 + 1832) = *(v0 + 472);
    (*(v17 + 8))(v16, v18);
    v20 = sub_1000C7C10(v5);
    v22 = v21;
    v24 = v23;
    v26 = v25;
    sub_10000DAF8(v0 + 1832, &qword_10023AEA8, &unk_1001B7AD0);
    sub_10000DAF8(v0 + 1816, &qword_10023AEA8, &unk_1001B7AD0);
    sub_10000DA7C((v19 + 560), *(v19 + 584));
    *(v0 + 184) = *(v0 + 1040);
    *(v0 + 200) = *(v0 + 1056);
    *(v0 + 216) = *(v0 + 1072);
    v27 = *(v0 + 992);
    *(v0 + 120) = *(v0 + 976);
    *(v0 + 136) = v27;
    v28 = *(v0 + 1024);
    *(v0 + 152) = *(v0 + 1008);
    *(v0 + 168) = v28;
    v29 = *(v0 + 928);
    *(v0 + 56) = *(v0 + 912);
    *(v0 + 72) = v29;
    v30 = *(v0 + 960);
    *(v0 + 88) = *(v0 + 944);
    *(v0 + 16) = v48;
    *(v0 + 24) = v20;
    *(v0 + 32) = v22;
    *(v0 + 40) = v24;
    *(v0 + 48) = v26;
    *(v0 + 232) = *(v0 + 1088);
    *(v0 + 104) = v30;
    v31 = type metadata accessor for SnoutManager(0);
    v32 = swift_task_alloc();
    *(v0 + 2080) = v32;
    *v32 = v0;
    v32[1] = sub_100138760;
    v33 = *(v0 + 1848);

    return (sub_10016E27C)(v0 + 16, v33, v47, 1, v31, &off_100223858);
  }

  else
  {
    v35 = *(v0 + 1313);
    v36 = *(v0 + 1264);
    v37 = *(v0 + 1272);
    *(v0 + 1984) = v37;
    v38 = *(v0 + 1256);
    v39 = *(v0 + 1352);
    *(v0 + 1480) = *(v0 + 1336);
    *(v0 + 1496) = v39;
    *(v0 + 1512) = *(v0 + 1368);
    v40 = *(v0 + 1288);
    *(v0 + 1416) = *(v0 + 1272);
    *(v0 + 1432) = v40;
    v41 = *(v0 + 1320);
    *(v0 + 1448) = *(v0 + 1304);
    *(v0 + 1464) = v41;
    v42 = *(v0 + 1256);
    *(v0 + 1384) = *(v0 + 1240);
    *(v0 + 1400) = v42;
    v43 = *(v0 + 1312);

    v44 = swift_task_alloc();
    *(v0 + 1992) = v44;
    *v44 = v0;
    v44[1] = sub_100137C94;
    v45 = *(v0 + 1856);
    v46 = *(v0 + 1848);

    return sub_1001399F8(v38, v43, v36, v37, v46, v45, v35);
  }
}

uint64_t sub_100137C94(char a1)
{
  v4 = *v2;
  *(*v2 + 2000) = v1;

  if (v1)
  {
    v5 = *(v4 + 1496);
    *(v4 + 1624) = *(v4 + 1480);
    *(v4 + 1640) = v5;
    *(v4 + 1656) = *(v4 + 1512);
    v6 = *(v4 + 1432);
    *(v4 + 1560) = *(v4 + 1416);
    *(v4 + 1576) = v6;
    v7 = *(v4 + 1464);
    *(v4 + 1592) = *(v4 + 1448);
    *(v4 + 1608) = v7;
    v8 = *(v4 + 1400);
    *(v4 + 1528) = *(v4 + 1384);
    *(v4 + 1544) = v8;
    sub_10003BC20(v4 + 1528);

    v9 = sub_100138C48;
  }

  else
  {

    *(v4 + 2089) = a1 & 1;
    v9 = sub_100137E04;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100137E04()
{
  v1 = (v0 + 1384);
  if (*(v0 + 2089) == 1)
  {
    sub_10006FB24();
    v2 = swift_allocObject();
    v3 = *(v0 + 1496);
    v2[7] = *(v0 + 1480);
    v2[8] = v3;
    v2[9] = *(v0 + 1512);
    v4 = *(v0 + 1432);
    v2[3] = *(v0 + 1416);
    v2[4] = v4;
    v5 = *(v0 + 1464);
    v2[5] = *(v0 + 1448);
    v2[6] = v5;
    v7 = *v1;
    v6 = *(v0 + 1400);
    *(v0 + 2008) = v2;
    v2[1] = v7;
    v2[2] = v6;
    v8 = swift_task_alloc();
    *(v0 + 2016) = v8;
    *v8 = v0;
    v8[1] = sub_100137FDC;

    return (sub_10010E9F0)();
  }

  else
  {
    v10 = *(v0 + 1856);
    v11 = *(v0 + 1496);
    *(v0 + 1768) = *(v0 + 1480);
    *(v0 + 1784) = v11;
    *(v0 + 1800) = *(v0 + 1512);
    v12 = *(v0 + 1432);
    *(v0 + 1704) = *(v0 + 1416);
    *(v0 + 1720) = v12;
    v13 = *(v0 + 1464);
    *(v0 + 1736) = *(v0 + 1448);
    *(v0 + 1752) = v13;
    v14 = *(v0 + 1400);
    *(v0 + 1672) = *v1;
    *(v0 + 1688) = v14;
    sub_10003BC20(v0 + 1672);
    v15 = swift_task_alloc();
    *(v0 + 2056) = v15;
    *v15 = v0;
    v15[1] = sub_1001385E8;
    v16 = *(v0 + 1848);

    return sub_1001260DC(v16, v10, 0);
  }
}

uint64_t sub_100137FDC()
{
  *(*v1 + 2024) = v0;

  if (v0)
  {
    v2 = sub_100138FB4;
  }

  else
  {
    v2 = sub_100138110;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100138110()
{
  v1 = swift_task_alloc();
  *(v0 + 2032) = v1;
  *v1 = v0;
  v1[1] = sub_1001381A0;

  return sub_100128208();
}

uint64_t sub_1001381A0()
{
  *(*v1 + 2040) = v0;

  if (v0)
  {
    v2 = sub_100139320;
  }

  else
  {
    v2 = sub_1001382B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001382B4()
{
  v1 = *(v0 + 1928);
  v2 = *(v0 + 1856);
  v12 = *(v0 + 1912);
  v13 = *(v0 + 1896);
  sub_10000DA7C((*(v0 + 1864) + 560), *(*(v0 + 1864) + 584));
  *(v0 + 256) = v12;
  *(v0 + 240) = v13;
  *(v0 + 272) = v1;
  v3 = *(v0 + 648);
  *(v0 + 408) = *(v0 + 632);
  *(v0 + 424) = v3;
  *(v0 + 440) = *(v0 + 664);
  *(v0 + 456) = *(v0 + 680);
  v4 = *(v0 + 584);
  *(v0 + 344) = *(v0 + 568);
  *(v0 + 360) = v4;
  v5 = *(v0 + 616);
  *(v0 + 376) = *(v0 + 600);
  *(v0 + 392) = v5;
  v6 = *(v0 + 520);
  *(v0 + 280) = *(v0 + 504);
  *(v0 + 296) = v6;
  v7 = *(v0 + 552);
  *(v0 + 312) = *(v0 + 536);
  *(v0 + 328) = v7;
  v8 = type metadata accessor for SnoutManager(0);
  v9 = swift_task_alloc();
  *(v0 + 2048) = v9;
  *v9 = v0;
  v9[1] = sub_100138480;
  v10 = *(v0 + 1848);

  return (sub_10016E27C)(v0 + 240, v10, v2, 1, v8, &off_100223858);
}

uint64_t sub_100138480()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_100138584, 0, 0);
}

uint64_t sub_100138584()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001385E8()
{
  v2 = *v1;
  *(*v1 + 2064) = v0;

  if (v0)
  {
    v3 = sub_10013968C;
  }

  else
  {
    v4 = *(v2 + 1928);
    v5 = *(v2 + 1912);
    *(v2 + 688) = *(v2 + 1896);
    *(v2 + 704) = v5;
    *(v2 + 720) = v4;
    *(v2 + 904) = *(v2 + 680);
    v6 = *(v2 + 648);
    *(v2 + 856) = *(v2 + 632);
    *(v2 + 872) = v6;
    *(v2 + 888) = *(v2 + 664);
    v7 = *(v2 + 584);
    *(v2 + 792) = *(v2 + 568);
    *(v2 + 808) = v7;
    v8 = *(v2 + 616);
    *(v2 + 824) = *(v2 + 600);
    *(v2 + 840) = v8;
    v9 = *(v2 + 520);
    *(v2 + 728) = *(v2 + 504);
    *(v2 + 744) = v9;
    v10 = *(v2 + 552);
    *(v2 + 760) = *(v2 + 536);
    *(v2 + 776) = v10;
    sub_10003AE8C(v2 + 688);
    v3 = sub_100138584;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100138760()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_100138864, 0, 0);
}

uint64_t sub_100138864(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1001388DC(uint64_t a1)
{
  v2 = *(v1 + 1976);
  *(v1 + 2072) = v2;
  v3 = *(v1 + 1888);
  v4 = *(v1 + 1880);
  v5 = *(v1 + 1872);
  v6 = Logger.postback.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Pending postback attribution failed %@", v9, 0xCu);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  v12 = *(v1 + 1888);
  v13 = *(v1 + 1880);
  v14 = *(v1 + 1872);
  v15 = *(v1 + 1864);
  v31 = *(v1 + 1856);
  v32 = *(v1 + 1896);

  *(v1 + 1816) = *(v1 + 488);
  *(v1 + 1832) = *(v1 + 472);
  (*(v13 + 8))(v12, v14);
  v16 = sub_1000C7C10(v2);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_10000DAF8(v1 + 1832, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DAF8(v1 + 1816, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DA7C((v15 + 560), *(v15 + 584));
  *(v1 + 184) = *(v1 + 1040);
  *(v1 + 200) = *(v1 + 1056);
  *(v1 + 216) = *(v1 + 1072);
  v23 = *(v1 + 992);
  *(v1 + 120) = *(v1 + 976);
  *(v1 + 136) = v23;
  v24 = *(v1 + 1024);
  *(v1 + 152) = *(v1 + 1008);
  *(v1 + 168) = v24;
  v25 = *(v1 + 928);
  *(v1 + 56) = *(v1 + 912);
  *(v1 + 72) = v25;
  v26 = *(v1 + 960);
  *(v1 + 88) = *(v1 + 944);
  *(v1 + 16) = v32;
  *(v1 + 24) = v16;
  *(v1 + 32) = v18;
  *(v1 + 40) = v20;
  *(v1 + 48) = v22;
  *(v1 + 232) = *(v1 + 1088);
  *(v1 + 104) = v26;
  v27 = type metadata accessor for SnoutManager(0);
  v28 = swift_task_alloc();
  *(v1 + 2080) = v28;
  *v28 = v1;
  v28[1] = sub_100138760;
  v29 = *(v1 + 1848);

  return (sub_10016E27C)(v1 + 16, v29, v31, 1, v27, &off_100223858);
}

uint64_t sub_100138C48(uint64_t a1)
{
  v2 = *(v1 + 2000);
  *(v1 + 2072) = v2;
  v3 = *(v1 + 1888);
  v4 = *(v1 + 1880);
  v5 = *(v1 + 1872);
  v6 = Logger.postback.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Pending postback attribution failed %@", v9, 0xCu);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  v12 = *(v1 + 1888);
  v13 = *(v1 + 1880);
  v14 = *(v1 + 1872);
  v15 = *(v1 + 1864);
  v31 = *(v1 + 1856);
  v32 = *(v1 + 1896);

  *(v1 + 1816) = *(v1 + 488);
  *(v1 + 1832) = *(v1 + 472);
  (*(v13 + 8))(v12, v14);
  v16 = sub_1000C7C10(v2);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_10000DAF8(v1 + 1832, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DAF8(v1 + 1816, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DA7C((v15 + 560), *(v15 + 584));
  *(v1 + 184) = *(v1 + 1040);
  *(v1 + 200) = *(v1 + 1056);
  *(v1 + 216) = *(v1 + 1072);
  v23 = *(v1 + 992);
  *(v1 + 120) = *(v1 + 976);
  *(v1 + 136) = v23;
  v24 = *(v1 + 1024);
  *(v1 + 152) = *(v1 + 1008);
  *(v1 + 168) = v24;
  v25 = *(v1 + 928);
  *(v1 + 56) = *(v1 + 912);
  *(v1 + 72) = v25;
  v26 = *(v1 + 960);
  *(v1 + 88) = *(v1 + 944);
  *(v1 + 16) = v32;
  *(v1 + 24) = v16;
  *(v1 + 32) = v18;
  *(v1 + 40) = v20;
  *(v1 + 48) = v22;
  *(v1 + 232) = *(v1 + 1088);
  *(v1 + 104) = v26;
  v27 = type metadata accessor for SnoutManager(0);
  v28 = swift_task_alloc();
  *(v1 + 2080) = v28;
  *v28 = v1;
  v28[1] = sub_100138760;
  v29 = *(v1 + 1848);

  return (sub_10016E27C)(v1 + 16, v29, v31, 1, v27, &off_100223858);
}

uint64_t sub_100138FB4(uint64_t a1)
{
  v2 = *(v1 + 2024);
  *(v1 + 2072) = v2;
  v3 = *(v1 + 1888);
  v4 = *(v1 + 1880);
  v5 = *(v1 + 1872);
  v6 = Logger.postback.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Pending postback attribution failed %@", v9, 0xCu);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  v12 = *(v1 + 1888);
  v13 = *(v1 + 1880);
  v14 = *(v1 + 1872);
  v15 = *(v1 + 1864);
  v31 = *(v1 + 1856);
  v32 = *(v1 + 1896);

  *(v1 + 1816) = *(v1 + 488);
  *(v1 + 1832) = *(v1 + 472);
  (*(v13 + 8))(v12, v14);
  v16 = sub_1000C7C10(v2);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_10000DAF8(v1 + 1832, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DAF8(v1 + 1816, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DA7C((v15 + 560), *(v15 + 584));
  *(v1 + 184) = *(v1 + 1040);
  *(v1 + 200) = *(v1 + 1056);
  *(v1 + 216) = *(v1 + 1072);
  v23 = *(v1 + 992);
  *(v1 + 120) = *(v1 + 976);
  *(v1 + 136) = v23;
  v24 = *(v1 + 1024);
  *(v1 + 152) = *(v1 + 1008);
  *(v1 + 168) = v24;
  v25 = *(v1 + 928);
  *(v1 + 56) = *(v1 + 912);
  *(v1 + 72) = v25;
  v26 = *(v1 + 960);
  *(v1 + 88) = *(v1 + 944);
  *(v1 + 16) = v32;
  *(v1 + 24) = v16;
  *(v1 + 32) = v18;
  *(v1 + 40) = v20;
  *(v1 + 48) = v22;
  *(v1 + 232) = *(v1 + 1088);
  *(v1 + 104) = v26;
  v27 = type metadata accessor for SnoutManager(0);
  v28 = swift_task_alloc();
  *(v1 + 2080) = v28;
  *v28 = v1;
  v28[1] = sub_100138760;
  v29 = *(v1 + 1848);

  return (sub_10016E27C)(v1 + 16, v29, v31, 1, v27, &off_100223858);
}

uint64_t sub_100139320(uint64_t a1)
{
  v2 = *(v1 + 2040);
  *(v1 + 2072) = v2;
  v3 = *(v1 + 1888);
  v4 = *(v1 + 1880);
  v5 = *(v1 + 1872);
  v6 = Logger.postback.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Pending postback attribution failed %@", v9, 0xCu);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  v12 = *(v1 + 1888);
  v13 = *(v1 + 1880);
  v14 = *(v1 + 1872);
  v15 = *(v1 + 1864);
  v31 = *(v1 + 1856);
  v32 = *(v1 + 1896);

  *(v1 + 1816) = *(v1 + 488);
  *(v1 + 1832) = *(v1 + 472);
  (*(v13 + 8))(v12, v14);
  v16 = sub_1000C7C10(v2);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_10000DAF8(v1 + 1832, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DAF8(v1 + 1816, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DA7C((v15 + 560), *(v15 + 584));
  *(v1 + 184) = *(v1 + 1040);
  *(v1 + 200) = *(v1 + 1056);
  *(v1 + 216) = *(v1 + 1072);
  v23 = *(v1 + 992);
  *(v1 + 120) = *(v1 + 976);
  *(v1 + 136) = v23;
  v24 = *(v1 + 1024);
  *(v1 + 152) = *(v1 + 1008);
  *(v1 + 168) = v24;
  v25 = *(v1 + 928);
  *(v1 + 56) = *(v1 + 912);
  *(v1 + 72) = v25;
  v26 = *(v1 + 960);
  *(v1 + 88) = *(v1 + 944);
  *(v1 + 16) = v32;
  *(v1 + 24) = v16;
  *(v1 + 32) = v18;
  *(v1 + 40) = v20;
  *(v1 + 48) = v22;
  *(v1 + 232) = *(v1 + 1088);
  *(v1 + 104) = v26;
  v27 = type metadata accessor for SnoutManager(0);
  v28 = swift_task_alloc();
  *(v1 + 2080) = v28;
  *v28 = v1;
  v28[1] = sub_100138760;
  v29 = *(v1 + 1848);

  return (sub_10016E27C)(v1 + 16, v29, v31, 1, v27, &off_100223858);
}

uint64_t sub_10013968C(uint64_t a1)
{
  v2 = *(v1 + 2064);
  *(v1 + 2072) = v2;
  v3 = *(v1 + 1888);
  v4 = *(v1 + 1880);
  v5 = *(v1 + 1872);
  v6 = Logger.postback.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Pending postback attribution failed %@", v9, 0xCu);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  v12 = *(v1 + 1888);
  v13 = *(v1 + 1880);
  v14 = *(v1 + 1872);
  v15 = *(v1 + 1864);
  v31 = *(v1 + 1856);
  v32 = *(v1 + 1896);

  *(v1 + 1816) = *(v1 + 488);
  *(v1 + 1832) = *(v1 + 472);
  (*(v13 + 8))(v12, v14);
  v16 = sub_1000C7C10(v2);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_10000DAF8(v1 + 1832, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DAF8(v1 + 1816, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DA7C((v15 + 560), *(v15 + 584));
  *(v1 + 184) = *(v1 + 1040);
  *(v1 + 200) = *(v1 + 1056);
  *(v1 + 216) = *(v1 + 1072);
  v23 = *(v1 + 992);
  *(v1 + 120) = *(v1 + 976);
  *(v1 + 136) = v23;
  v24 = *(v1 + 1024);
  *(v1 + 152) = *(v1 + 1008);
  *(v1 + 168) = v24;
  v25 = *(v1 + 928);
  *(v1 + 56) = *(v1 + 912);
  *(v1 + 72) = v25;
  v26 = *(v1 + 960);
  *(v1 + 88) = *(v1 + 944);
  *(v1 + 16) = v32;
  *(v1 + 24) = v16;
  *(v1 + 32) = v18;
  *(v1 + 40) = v20;
  *(v1 + 48) = v22;
  *(v1 + 232) = *(v1 + 1088);
  *(v1 + 104) = v26;
  v27 = type metadata accessor for SnoutManager(0);
  v28 = swift_task_alloc();
  *(v1 + 2080) = v28;
  *v28 = v1;
  v28[1] = sub_100138760;
  v29 = *(v1 + 1848);

  return (sub_10016E27C)(v1 + 16, v29, v31, 1, v27, &off_100223858);
}

uint64_t sub_1001399F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 2648) = v7;
  *(v8 + 1817) = a7;
  *(v8 + 2640) = a6;
  *(v8 + 2632) = a5;
  *(v8 + 2624) = a4;
  *(v8 + 2616) = a3;
  *(v8 + 1599) = a2;
  *(v8 + 2608) = a1;
  v9 = type metadata accessor for Calendar.Component();
  *(v8 + 2656) = v9;
  *(v8 + 2664) = *(v9 - 8);
  *(v8 + 2672) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v8 + 2680) = v10;
  *(v8 + 2688) = *(v10 - 8);
  *(v8 + 2696) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 2704) = v11;
  *(v8 + 2712) = *(v11 - 8);
  *(v8 + 2720) = swift_task_alloc();
  *(v8 + 2728) = swift_task_alloc();
  v12 = type metadata accessor for URL.DirectoryHint();
  *(v8 + 2736) = v12;
  *(v8 + 2744) = *(v12 - 8);
  *(v8 + 2752) = swift_task_alloc();
  v13 = type metadata accessor for URL();
  *(v8 + 2760) = v13;
  *(v8 + 2768) = *(v13 - 8);
  *(v8 + 2776) = swift_task_alloc();
  *(v8 + 2784) = swift_task_alloc();
  *(v8 + 2792) = swift_task_alloc();

  return _swift_task_switch(sub_100139C94, 0, 0);
}

uint64_t sub_100139C94()
{
  v1 = *(v0 + 2608);
  if (v1 == 915061776)
  {
    v2 = objc_allocWithZone(LSApplicationRecord);
    v3 = sub_1000BB120(0xD000000000000012, 0x80000001001CB3C0, 0);
    v4 = *(v0 + 2784);
    v5 = *(v0 + 2768);
    v109 = *(v0 + 2760);
    v6 = *(v0 + 2752);
    v7 = *(v0 + 2744);
    v8 = *(v0 + 2736);
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v9 = [v3 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 2544) = 0x696C702E6F666E49;
    *(v0 + 2552) = 0xEA00000000007473;
    (*(v7 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v8);
    sub_10003E5C8();
    URL.appending<A>(path:directoryHint:)();
    (*(v7 + 8))(v6, v8);
    v10 = *(v5 + 8);
    v10(v4, v109);
    v11 = Data.init(contentsOf:options:)();
    v13 = v12;
    v10(*(v0 + 2792), *(v0 + 2760));
    sub_1000BB9AC();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_10001BABC(v11, v13);

    v78 = *(v0 + 2208);
    v79 = *(v0 + 2224);
    v80 = *(v0 + 2225);
    v81 = *(v0 + 2232);
    v82 = *(v0 + 2240);
    v83 = *(v0 + 2256);
    v84 = *(v0 + 2272);
  }

  else
  {
    v14 = objc_allocWithZone(LSApplicationRecord);
    *(v0 + 2592) = 0;
    v15 = [v14 initWithStoreItemIdentifier:v1 error:v0 + 2592];
    v16 = *(v0 + 2592);
    if (!v15)
    {
      v29 = v16;
      v30 = _convertNSErrorToError(_:)();

      swift_willThrow();
      *(v0 + 3032) = v30;
      v31 = *(v0 + 2720);
      v32 = *(v0 + 2712);
      v33 = *(v0 + 2704);
      v34 = Logger.postback.unsafeMutableAddressor();
      (*(v32 + 16))(v31, v34, v33);
      swift_errorRetain();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        swift_errorRetain();
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 4) = v39;
        *v38 = v39;
        _os_log_impl(&_mh_execute_header, v35, v36, "Failed to get advertised app info plist: %@", v37, 0xCu);
        sub_10000DAF8(v38, &qword_100239F10, &qword_1001B4FD0);
      }

      v40 = *(v0 + 2720);
      v107 = (v0 + 1594);
      v108 = (v0 + 1577);
      v41 = *(v0 + 2712);
      v104 = (v0 + 1582);
      v105 = (v0 + 1353);
      v106 = (v0 + 1129);
      v42 = *(v0 + 2704);
      v102 = (v0 + 905);
      v43 = *(v0 + 2696);
      v44 = v35;
      v45 = *(v0 + 2688);
      v46 = *(v0 + 2672);
      v47 = v30;
      v48 = *(v0 + 2664);
      v97 = *(v0 + 2656);
      v98 = *(v0 + 2680);
      v111 = *(v0 + 2648);
      v96 = *(v0 + 2640);
      v49 = *(v0 + 1599);

      (*(v41 + 8))(v40, v42);
      v103 = v49 > 1;
      swift_errorRetain();
      v50 = sub_1000C7C10(v47);
      v100 = v52;
      v101 = v51;
      v99 = v53;
      static Date.now.getter();
      (*(v48 + 104))(v46, enum case for Calendar.Component.hour(_:), v97);
      v54 = sub_100025808(v43, v46);
      LOBYTE(v40) = v55;
      (*(v48 + 8))(v46, v97);
      (*(v45 + 8))(v43, v98);
      if (v40)
      {
        v54 = 0;
      }

      v56 = [objc_opt_self() buildVersion];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      *(v0 + 3056) = 1;
      *(v0 + 3048) = 1;
      *(v0 + 3080) = 1;
      *(v0 + 3072) = 1;
      *(v0 + 240) = 5;
      *(v0 + 3064) = 1;
      *(v0 + 242) = *(v0 + 1588);
      *(v0 + 246) = *(v0 + 1592);
      *(v0 + 248) = v50;
      *(v0 + 256) = v101;
      *(v0 + 264) = v100;
      *(v0 + 272) = v99;
      *(v0 + 280) = 0;
      *(v0 + 288) = 0;
      *(v0 + 296) = v54;
      *(v0 + 304) = v57;
      *(v0 + 312) = v59;
      *(v0 + 320) = 0;
      *(v0 + 321) = 33686018;
      *(v0 + 325) = 0;
      *(v0 + 328) = 0;
      v60 = *(v0 + 3056);
      *(v0 + 336) = v60;
      *(v0 + 337) = *v102;
      *(v0 + 340) = *(v0 + 908);
      *(v0 + 344) = 0;
      v61 = *(v0 + 3048);
      *(v0 + 352) = v61;
      *(v0 + 353) = 3;
      *(v0 + 354) = *v104;
      *(v0 + 358) = *(v0 + 1586);
      *(v0 + 360) = 0;
      v62 = *(v0 + 3080);
      *(v0 + 368) = v62;
      *(v0 + 372) = *(v0 + 1356);
      *(v0 + 369) = *v105;
      *(v0 + 376) = 0;
      v63 = *(v0 + 3072);
      *(v0 + 384) = v63;
      *(v0 + 385) = v103;
      *(v0 + 386) = 3;
      *(v0 + 391) = *(v0 + 1598);
      *(v0 + 387) = *v107;
      *(v0 + 392) = 0;
      v64 = *(v0 + 3064);
      *(v0 + 400) = v64;
      v65 = *v106;
      *(v0 + 404) = *(v0 + 1132);
      *(v0 + 401) = v65;
      *(v0 + 408) = 0;
      *(v0 + 416) = 0;
      *(v0 + 424) = 514;
      *(v0 + 426) = 2;
      v66 = *v108;
      *(v0 + 431) = *(v0 + 1581);
      *(v0 + 427) = v66;
      *(v0 + 16) = 5;
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0u;
      v67 = *(v0 + 1588);
      *(v0 + 22) = *(v0 + 1592);
      *(v0 + 18) = v67;
      *(v0 + 24) = v50;
      *(v0 + 32) = v101;
      *(v0 + 40) = v100;
      *(v0 + 48) = v99;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v54;
      *(v0 + 80) = v57;
      *(v0 + 88) = v59;
      *(v0 + 96) = 0;
      *(v0 + 97) = 33686018;
      *(v0 + 101) = 0;
      *(v0 + 104) = 0;
      *(v0 + 112) = v60;
      v68 = *v102;
      *(v0 + 116) = *(v0 + 908);
      *(v0 + 113) = v68;
      *(v0 + 120) = 0;
      *(v0 + 128) = v61;
      *(v0 + 129) = 3;
      v69 = *v104;
      *(v0 + 134) = *(v0 + 1586);
      *(v0 + 130) = v69;
      *(v0 + 136) = 0;
      *(v0 + 144) = v62;
      v70 = *v105;
      *(v0 + 148) = *(v0 + 1356);
      *(v0 + 145) = v70;
      *(v0 + 152) = 0;
      *(v0 + 160) = v63;
      *(v0 + 161) = v103;
      *(v0 + 162) = 3;
      v71 = *v107;
      *(v0 + 167) = *(v0 + 1598);
      *(v0 + 163) = v71;
      *(v0 + 168) = 0;
      *(v0 + 176) = v64;
      v72 = *v106;
      *(v0 + 180) = *(v0 + 1132);
      *(v0 + 177) = v72;
      *(v0 + 184) = 0;
      *(v0 + 192) = 0;
      *(v0 + 200) = 514;
      *(v0 + 202) = 2;
      v73 = *v108;
      *(v0 + 207) = *(v0 + 1581);
      *(v0 + 203) = v73;
      *(v0 + 208) = 0u;
      *(v0 + 224) = 0u;
      sub_100010568(v0 + 240, v0 + 464);
      sub_10003AE8C(v0 + 16);
      sub_10000DA7C((v111 + 560), *(v111 + 584));
      v74 = type metadata accessor for SnoutManager(0);
      v75 = swift_task_alloc();
      *(v0 + 3040) = v75;
      *v75 = v0;
      v75[1] = sub_10013C62C;
      v76 = *(v0 + 2632);

      return (sub_10016E27C)(v0 + 240, v76, v96, 1, v74, &off_100223858);
    }

    v17 = v15;
    v18 = *(v0 + 2784);
    v19 = *(v0 + 2768);
    v110 = *(v0 + 2760);
    v20 = *(v0 + 2752);
    v21 = *(v0 + 2744);
    v22 = *(v0 + 2736);
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    v23 = v16;
    PropertyListDecoder.init()();
    v24 = [v17 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 2560) = 0x696C702E6F666E49;
    *(v0 + 2568) = 0xEA00000000007473;
    (*(v21 + 104))(v20, enum case for URL.DirectoryHint.inferFromPath(_:), v22);
    sub_10003E5C8();
    URL.appending<A>(path:directoryHint:)();
    (*(v21 + 8))(v20, v22);
    v25 = *(v19 + 8);
    v25(v18, v110);
    v26 = Data.init(contentsOf:options:)();
    v28 = v27;
    v25(*(v0 + 2776), *(v0 + 2760));
    sub_1000BB9AC();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_10001BABC(v26, v28);

    v78 = *(v0 + 2128);
    v79 = *(v0 + 2144);
    v80 = *(v0 + 2145);
    v81 = *(v0 + 2152);
    v82 = *(v0 + 2160);
    v83 = *(v0 + 2176);
    v84 = *(v0 + 2192);
  }

  *(v0 + 2048) = v78;
  *(v0 + 2064) = v79;
  *(v0 + 2065) = v80;
  *(v0 + 2072) = v81;
  *(v0 + 2080) = v82;
  *(v0 + 2096) = v83;
  *(v0 + 2112) = v84;
  *(v0 + 2800) = 0;
  if (*(v0 + 2616) == 0xD000000000000012 && 0x80000001001CB3C0 == *(v0 + 2624) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(v0 + 1599) && *(v0 + 1599) != 1)
    {
    }

    else
    {
      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v85 & 1) == 0)
      {
        v86 = swift_task_alloc();
        *(v0 + 2864) = v86;
        *v86 = v0;
        v86[1] = sub_10013B22C;
        v87 = *(v0 + 2608);

        return sub_1001550F0(v87);
      }
    }
  }

  v88 = *(v0 + 2648);
  v89 = *(v0 + 1817);
  v90 = *(v0 + 2608);
  v91 = v88[6];
  *(v0 + 2808) = v91;
  v92 = v88[7];
  *(v0 + 2816) = v92;
  v93 = v88[8];
  *(v0 + 2824) = v93;
  v94 = swift_allocObject();
  *(v0 + 2832) = v94;
  *(v94 + 16) = v90;
  *(v94 + 24) = v89 & 1;
  v95 = swift_task_alloc();
  *(v0 + 2840) = v95;
  *v95 = v0;
  v95[1] = sub_10013A9DC;

  return sub_10010F4F0(sub_10014D2F8, v94, v91, v92, v93);
}

uint64_t sub_10013A9DC(uint64_t a1)
{
  v3 = *v2;
  v3[356] = a1;
  v3[357] = v1;

  if (v1)
  {

    sub_10000DAF8((v3 + 256), &qword_10023D7A0, &qword_1001C18F8);

    v4 = v3[1];

    return v4(0);
  }

  else
  {

    return _swift_task_switch(sub_10013AC10, 0, 0);
  }
}

uint64_t sub_10013AC10()
{
  v56 = v0;
  if (*(v0 + 2056) == 1)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v6 = *(v0 + 2120);
    v5 = *(v0 + 2112);
    v4 = *(v0 + 2104);
    v3 = *(v0 + 2096);
    v2 = *(v0 + 2088);
    v1 = *(v0 + 2080);
    v7 = *(v0 + 2072);
    sub_1000E198C(v7, v1, v2, v3, v4, v5, v6);
    sub_10000DAF8(v0 + 2048, &qword_10023D7A0, &qword_1001C18F8);
  }

  v8 = *(v0 + 2856);
  v9 = *(v0 + 2848);
  v10 = *(v0 + 2624);
  v11 = *(v0 + 2616);
  *(v0 + 2488) = v7;
  *(v0 + 2496) = v1;
  *(v0 + 2504) = v2;
  v53 = v3;
  *(v0 + 2512) = v3;
  v12 = v4;
  *(v0 + 2520) = v4;
  v13 = v5;
  *(v0 + 2528) = v5;
  v14 = v6;
  *(v0 + 2536) = v6;
  v15 = sub_10004ADEC(v9, *(v0 + 1599), v11, v10, (v0 + 2488));
  if (v8)
  {
    sub_10014BB88(v7, v1, v2, v53, v12, v13, v6);

    v16 = *(v0 + 8);

    return v16(0);
  }

  else
  {
    v18 = v15;

    sub_10014BB88(v7, v1, v2, v53, v12, v13, v14);
    v19 = *(v0 + 2824);
    v20 = *(v0 + 2816);
    v21 = *(v0 + 2808);
    if (*(v18 + 2))
    {
      *(v0 + 2968) = v21;
      *(v0 + 2960) = v20;
      *(v0 + 2952) = v19;
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      *(v0 + 2976) = JSONEncoder.init()();
      *(v0 + 2584) = v18;
      sub_10000CDE0(&qword_10023D7A8, &qword_1001C1900);
      sub_10014BC00();
      v39 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v41 = v40;

      v42 = *(v0 + 2640);
      v43 = *(v0 + 2632);
      v44 = *(v0 + 2608);
      *(v0 + 2288) = 0;
      *(v0 + 2296) = 1;
      *(v0 + 2304) = v39;
      *(v0 + 2312) = v41;
      *(v0 + 2320) = xmmword_1001C15A0;
      *(v0 + 2336) = v44;
      *(v0 + 2344) = v43;
      *(v0 + 2352) = v42;
      v45 = swift_allocObject();
      *(v0 + 2984) = v45;
      v46 = *(v0 + 2304);
      v47 = *(v0 + 2336);
      *(v45 + 48) = *(v0 + 2320);
      *(v45 + 64) = v47;
      *(v45 + 80) = *(v0 + 2352);
      *(v45 + 16) = *(v0 + 2288);
      *(v45 + 32) = v46;

      sub_100072034(v0 + 2288, v0 + 2360);
      v48 = swift_task_alloc();
      *(v0 + 2992) = v48;
      *v48 = v0;
      v48[1] = sub_10013C120;
      v49 = sub_10014BD40;
    }

    else
    {
      v22 = *(v0 + 2728);
      v23 = *(v0 + 2712);
      v24 = *(v0 + 2704);

      v25 = Logger.postback.unsafeMutableAddressor();
      (*(v23 + 16))(v22, v25, v24);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 2728);
      v30 = *(v0 + 2712);
      v31 = *(v0 + 2704);
      if (v28)
      {
        v52 = v20;
        v32 = *(v0 + 2640);
        v33 = v21;
        v34 = *(v0 + 2632);
        v51 = *(v0 + 2728);
        v35 = swift_slowAlloc();
        v54 = v19;
        v36 = swift_slowAlloc();
        v55 = v36;
        *v35 = 136315138;
        v37 = v34;
        v21 = v33;
        v38 = v32;
        v20 = v52;
        *(v35 + 4) = sub_10017AD04(v37, v38, &v55);
        _os_log_impl(&_mh_execute_header, v26, v27, "No eligible impressions found for conversion %s, skipping impression freeze", v35, 0xCu);
        sub_10000DB58(v36);
        v19 = v54;

        (*(v30 + 8))(v51, v31);
      }

      else
      {

        (*(v30 + 8))(v29, v31);
      }

      *(v0 + 1818) = 0;
      v50 = *(v0 + 2608);
      v45 = swift_allocObject();
      *(v0 + 3008) = v45;
      *(v45 + 16) = v50;
      v48 = swift_task_alloc();
      *(v0 + 3016) = v48;
      *v48 = v0;
      v48[1] = sub_10013C3CC;
      v49 = sub_10014BBD4;
    }

    return sub_10010E730(v48, v49, v45, v21, v20, v19);
  }
}

uint64_t sub_10013B22C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2872) = a1;
  *(v3 + 2880) = a2;

  return _swift_task_switch(sub_10013B35C, 0, 0);
}

uint64_t sub_10013B35C()
{
  v1 = *(v0 + 2880);
  if (v1 >> 60 == 15)
  {
    v2 = _swiftEmptyArrayStorage;
    v3 = _swiftEmptyArrayStorage[2];
    if (!v3)
    {
      goto LABEL_31;
    }

LABEL_3:
    v4 = 0;
    v5 = (v0 + 1824);
    v6 = v2 + 4;
    while (1)
    {
      v7 = &v6[28 * v4];
      v8 = v4;
      while (1)
      {
        if (v8 >= v2[2])
        {
          __break(1u);
        }

        v9 = *(v0 + 1817);
        v10 = v7[1];
        *v5 = *v7;
        *(v0 + 1840) = v10;
        v11 = v7[5];
        v13 = v7[2];
        v12 = v7[3];
        *(v0 + 1888) = v7[4];
        *(v0 + 1904) = v11;
        *(v0 + 1856) = v13;
        *(v0 + 1872) = v12;
        v14 = v7[9];
        v16 = v7[6];
        v15 = v7[7];
        *(v0 + 1952) = v7[8];
        *(v0 + 1968) = v14;
        *(v0 + 1920) = v16;
        *(v0 + 1936) = v15;
        v18 = v7[11];
        v17 = v7[12];
        v19 = v7[10];
        *(v0 + 2025) = *(v7 + 201);
        *(v0 + 2000) = v18;
        *(v0 + 2016) = v17;
        *(v0 + 1984) = v19;
        v20 = *(v0 + 2025);
        if (v9)
        {
          if (v20 == 2)
          {
            sub_10000E870(v0 + 1824, v0 + 1136);
            goto LABEL_20;
          }

          if (v20)
          {
            sub_10000E870(v0 + 1824, v0 + 688);
            goto LABEL_19;
          }

          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_10000E870(v0 + 1824, v0 + 912);
          goto LABEL_5;
        }

        if (v20 == 2)
        {
          goto LABEL_7;
        }

        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10000E870(v0 + 1824, v0 + 1600);
LABEL_5:

        if (v21)
        {
          goto LABEL_20;
        }

        sub_10000E8CC(v0 + 1824);
LABEL_7:
        ++v8;
        v7 += 14;
        if (v3 == v8)
        {
          goto LABEL_31;
        }
      }

      sub_10000E870(v0 + 1824, v0 + 1360);
LABEL_19:

LABEL_20:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001470E0(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_1001470E0((v22 > 1), v23 + 1, 1);
      }

      v4 = v8 + 1;
      _swiftEmptyArrayStorage[2] = v23 + 1;
      v24 = &_swiftEmptyArrayStorage[28 * v23];
      v25 = *(v0 + 1840);
      v24[2] = *v5;
      v24[3] = v25;
      v26 = *(v0 + 1856);
      v27 = *(v0 + 1872);
      v28 = *(v0 + 1904);
      v24[6] = *(v0 + 1888);
      v24[7] = v28;
      v24[4] = v26;
      v24[5] = v27;
      v29 = *(v0 + 1920);
      v30 = *(v0 + 1936);
      v31 = *(v0 + 1968);
      v24[10] = *(v0 + 1952);
      v24[11] = v31;
      v24[8] = v29;
      v24[9] = v30;
      v32 = *(v0 + 1984);
      v33 = *(v0 + 2000);
      v34 = *(v0 + 2016);
      *(v24 + 233) = *(v0 + 2025);
      v24[13] = v33;
      v24[14] = v34;
      v24[12] = v32;
      v6 = v2 + 4;
      if (v3 - 1 == v8)
      {
LABEL_31:
        *(v0 + 2888) = _swiftEmptyArrayStorage;
        v41 = *(v0 + 2648);
        v42 = *(v0 + 1817);
        v43 = *(v0 + 2608);

        v44 = v41[6];
        *(v0 + 2896) = v44;
        v45 = v41[7];
        *(v0 + 2904) = v45;
        v46 = v41[8];
        *(v0 + 2912) = v46;
        v47 = swift_allocObject();
        *(v0 + 2920) = v47;
        *(v47 + 16) = v43;
        *(v47 + 24) = v42 & 1;
        v48 = swift_task_alloc();
        *(v0 + 2928) = v48;
        *v48 = v0;
        v48[1] = sub_10013B8CC;

        return sub_10010F4F0(sub_10014BE34, v47, v44, v45, v46);
      }
    }
  }

  v35 = *(v0 + 2872);
  v36 = *(v0 + 2800);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  sub_1000438D8(v35, v1);
  JSONDecoder.init()();
  sub_10000CDE0(&qword_10023D7C0, &qword_1001C1908);
  sub_10014BE88();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (!v36)
  {
    sub_10005CB30(*(v0 + 2872), *(v0 + 2880));

    v2 = *(v0 + 2600);
    v3 = v2[2];
    if (!v3)
    {
      goto LABEL_31;
    }

    goto LABEL_3;
  }

  v37 = *(v0 + 2880);
  v38 = *(v0 + 2872);
  sub_10005CB30(v38, v37);

  sub_10005CB30(v38, v37);
  sub_10000DAF8(v0 + 2048, &qword_10023D7A0, &qword_1001C18F8);

  v39 = *(v0 + 8);

  return v39(0);
}

uint64_t sub_10013B8CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2936) = a1;
  *(v3 + 2944) = v1;

  if (v1)
  {

    sub_10000DAF8(v3 + 2048, &qword_10023D7A0, &qword_1001C18F8);
    v4 = sub_10013CA44;
  }

  else
  {
    v4 = sub_10013BA4C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10013BA4C()
{
  v64 = v0;
  if (*(v0 + 2056) == 1)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v6 = *(v0 + 2120);
    v5 = *(v0 + 2112);
    v4 = *(v0 + 2104);
    v3 = *(v0 + 2096);
    v2 = *(v0 + 2088);
    v1 = *(v0 + 2080);
    v7 = *(v0 + 2072);
    sub_1000E198C(v7, v1, v2, v3, v4, v5, v6);
    sub_10000DAF8(v0 + 2048, &qword_10023D7A0, &qword_1001C18F8);
  }

  v8 = *(v0 + 2944);
  v9 = *(v0 + 2936);
  v10 = *(v0 + 2888);
  v11 = *(v0 + 2624);
  v12 = *(v0 + 2616);
  *(v0 + 2432) = v7;
  *(v0 + 2440) = v1;
  *(v0 + 2448) = v2;
  *(v0 + 2456) = v3;
  *(v0 + 2464) = v4;
  *(v0 + 2472) = v5;
  *(v0 + 2480) = v6;
  v13 = sub_10004B658(v9, v10, *(v0 + 1599), v12, v11, v0 + 2432);
  v59 = v14;
  sub_10005CB30(*(v0 + 2872), *(v0 + 2880));
  if (v8)
  {
    sub_10014BB88(v7, v1, v2, v3, v4, v5, v6);

    v19 = *(v0 + 8);

    return v19(0);
  }

  else
  {

    sub_10014BB88(v7, v1, v2, v3, v4, v5, v6);

    v15 = v59;
    if (*(v13 + 2) || *(v59 + 16))
    {
      v16 = *(v0 + 2896);
      v17 = *(v0 + 2904);
      v18 = *(v0 + 2912);
      *(v0 + 2968) = v16;
      *(v0 + 2960) = v17;
      *(v0 + 2952) = v18;
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      *(v0 + 2976) = JSONEncoder.init()();
      *(v0 + 2584) = v13;
      sub_10000CDE0(&qword_10023D7A8, &qword_1001C1900);
      sub_10014BC00();
      v21 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v23 = v22;

      if (v59)
      {
        *(v0 + 2576) = v59;
        sub_10000CDE0(&qword_10023D7C0, &qword_1001C1908);
        sub_10014BD5C();
        v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v44 = v43;
      }

      else
      {
        v44 = 0xF000000000000000;
      }

      v45 = *(v0 + 2640);
      v46 = *(v0 + 2632);
      v47 = *(v0 + 2608);
      *(v0 + 2288) = 0;
      *(v0 + 2296) = 1;
      *(v0 + 2304) = v21;
      *(v0 + 2312) = v23;
      *(v0 + 2320) = v15;
      *(v0 + 2328) = v44;
      *(v0 + 2336) = v47;
      *(v0 + 2344) = v46;
      *(v0 + 2352) = v45;
      v48 = swift_allocObject();
      *(v0 + 2984) = v48;
      v49 = *(v0 + 2304);
      v50 = *(v0 + 2336);
      *(v48 + 48) = *(v0 + 2320);
      *(v48 + 64) = v50;
      *(v48 + 80) = *(v0 + 2352);
      *(v48 + 16) = *(v0 + 2288);
      *(v48 + 32) = v49;

      sub_100072034(v0 + 2288, v0 + 2360);
      v51 = swift_task_alloc();
      *(v0 + 2992) = v51;
      *v51 = v0;
      v51[1] = sub_10013C120;
      v52 = sub_10014BD40;
      v53 = v48;
      v54 = v16;
      v55 = v17;
      v56 = v18;
    }

    else
    {
      v24 = *(v0 + 2912);
      v62 = *(v0 + 2904);
      v25 = *(v0 + 2896);
      v26 = *(v0 + 2728);
      v27 = *(v0 + 2712);
      v28 = *(v0 + 2704);

      v29 = Logger.postback.unsafeMutableAddressor();
      (*(v27 + 16))(v26, v29, v28);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 2728);
      v34 = *(v0 + 2712);
      v35 = *(v0 + 2704);
      if (v32)
      {
        v61 = v24;
        v36 = *(v0 + 2640);
        v37 = v25;
        v38 = *(v0 + 2632);
        v60 = *(v0 + 2728);
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v63 = v40;
        *v39 = 136315138;
        v41 = v38;
        v25 = v37;
        v42 = v36;
        v24 = v61;
        *(v39 + 4) = sub_10017AD04(v41, v42, &v63);
        _os_log_impl(&_mh_execute_header, v30, v31, "No eligible impressions found for conversion %s, skipping impression freeze", v39, 0xCu);
        sub_10000DB58(v40);

        (*(v34 + 8))(v60, v35);
      }

      else
      {

        (*(v34 + 8))(v33, v35);
      }

      *(v0 + 1818) = 0;
      v57 = *(v0 + 2608);
      v58 = swift_allocObject();
      *(v0 + 3008) = v58;
      *(v58 + 16) = v57;
      v51 = swift_task_alloc();
      *(v0 + 3016) = v51;
      *v51 = v0;
      v51[1] = sub_10013C3CC;
      v52 = sub_10014BBD4;
      v53 = v58;
      v54 = v25;
      v55 = v62;
      v56 = v24;
    }

    return sub_10010E730(v51, v52, v53, v54, v55, v56);
  }
}

uint64_t sub_10013C120()
{
  *(*v1 + 3000) = v0;

  if (v0)
  {
    v2 = sub_10013CB58;
  }

  else
  {
    v2 = sub_10013C280;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013C280()
{
  sub_10003BDD0(v0 + 2288);

  v1 = *(v0 + 2968);
  v2 = *(v0 + 2960);
  v3 = *(v0 + 2952);
  *(v0 + 1818) = 1;
  v4 = *(v0 + 2608);
  v5 = swift_allocObject();
  *(v0 + 3008) = v5;
  *(v5 + 16) = v4;
  v6 = swift_task_alloc();
  *(v0 + 3016) = v6;
  *v6 = v0;
  v6[1] = sub_10013C3CC;

  return sub_10010E730(v6, sub_10014BBD4, v5, v1, v2, v3);
}

uint64_t sub_10013C3CC()
{
  *(*v1 + 3024) = v0;

  if (v0)
  {
    v2 = sub_10013CC74;
  }

  else
  {
    v2 = sub_10013C52C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013C52C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1818);

  return v1(v2);
}

uint64_t sub_10013C62C()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_10013C75C, 0, 0);
}

uint64_t sub_10013C75C()
{

  *(v0 + 2048) = xmmword_1001BC260;
  *(v0 + 2064) = 0u;
  *(v0 + 2080) = 0u;
  *(v0 + 2096) = 0u;
  *(v0 + 2112) = 0u;
  *(v0 + 2800) = 0;
  if (*(v0 + 2616) == 0xD000000000000012 && 0x80000001001CB3C0 == *(v0 + 2624) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(v0 + 1599) && *(v0 + 1599) != 1)
    {
    }

    else
    {
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v1 & 1) == 0)
      {
        v2 = swift_task_alloc();
        *(v0 + 2864) = v2;
        *v2 = v0;
        v2[1] = sub_10013B22C;
        v3 = *(v0 + 2608);

        return sub_1001550F0(v3);
      }
    }
  }

  v5 = *(v0 + 2648);
  v6 = *(v0 + 1817);
  v7 = *(v0 + 2608);
  v8 = v5[6];
  *(v0 + 2808) = v8;
  v9 = v5[7];
  *(v0 + 2816) = v9;
  v10 = v5[8];
  *(v0 + 2824) = v10;
  v11 = swift_allocObject();
  *(v0 + 2832) = v11;
  *(v11 + 16) = v7;
  *(v11 + 24) = v6 & 1;
  v12 = swift_task_alloc();
  *(v0 + 2840) = v12;
  *v12 = v0;
  v12[1] = sub_10013A9DC;

  return sub_10010F4F0(sub_10014D2F8, v11, v8, v9, v10);
}

uint64_t sub_10013CA44()
{
  sub_10005CB30(v0[359], v0[360]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_10013CB58()
{
  sub_10003BDD0(v0 + 2288);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10013CC74()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_10013CD7C(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, id))
{
  v6 = [a1 connection];
  v7 = a3(a2, v6);

  if (!v3)
  {
  }
}

uint64_t sub_10013CDF0(void *a1, _OWORD *a2)
{
  swift_beginAccess();
  v5 = a2[8];
  v13[6] = a2[7];
  v13[7] = v5;
  v13[8] = a2[9];
  v6 = a2[4];
  v13[2] = a2[3];
  v13[3] = v6;
  v7 = a2[6];
  v13[4] = a2[5];
  v13[5] = v7;
  v8 = a2[2];
  v13[0] = a2[1];
  v13[1] = v8;
  sub_100070EEC(v13, v12);
  v9 = [a1 connection];
  v10 = sub_1000EE964(v13, v9);

  if (!v2)
  {
  }

  return sub_10003BC20(v13);
}

uint64_t sub_10013CEC8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  memcpy(__dst, (a2 + 16), 0x121uLL);
  sub_1000B3B24(__dst, v8);
  v5 = [a1 connection];
  v6 = sub_1000ED22C(__dst, v5);

  if (!v2)
  {
  }

  return sub_10003C04C(__dst);
}

void sub_10013CF7C(void *a1, __int128 *a2)
{
  v4 = [a1 connection];
  v5 = sub_1000EE690(a2, v4);

  if (!v2)
  {
  }
}

uint64_t sub_10013CFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[152] = a4;
  v4[151] = a3;
  v4[150] = a2;
  sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v4[153] = swift_task_alloc();
  v4[154] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[155] = v5;
  v4[156] = *(v5 - 8);
  v4[157] = swift_task_alloc();

  return _swift_task_switch(sub_10013D0F4, 0, 0);
}

uint64_t sub_10013D0F4()
{
  v1 = *(v0 + 1208);
  v2 = *(v1 + 16);
  *(v0 + 1264) = v2;
  if (v2)
  {
    v3 = *(v0 + 1216);
    *(v0 + 1272) = **(v0 + 1200);
    v4 = v3[18];
    *(v0 + 1280) = v4;
    v5 = v3[19];
    *(v0 + 1288) = v5;
    v6 = v3[20];
    *(v0 + 1296) = v6;
    *(v0 + 1312) = 0;
    *(v0 + 616) = *(v1 + 32);
    v7 = *(v1 + 48);
    v8 = *(v1 + 64);
    v9 = *(v1 + 96);
    *(v0 + 664) = *(v1 + 80);
    *(v0 + 680) = v9;
    *(v0 + 632) = v7;
    *(v0 + 648) = v8;
    v10 = *(v1 + 112);
    v11 = *(v1 + 128);
    v12 = *(v1 + 160);
    *(v0 + 728) = *(v1 + 144);
    *(v0 + 744) = v12;
    *(v0 + 696) = v10;
    *(v0 + 712) = v11;
    *(v0 + 1320) = *(v0 + 712);
    *(v0 + 1328) = *(v0 + 696);
    *(v0 + 1416) = *(v0 + 704);
    *(v0 + 1417) = *(v0 + 689);
    v13 = *(v0 + 672);
    *(v0 + 1336) = v13;
    v14 = *(v0 + 680);
    *(v0 + 1344) = v14;
    *(v0 + 1352) = *(v0 + 640);
    *(v0 + 1360) = *(v0 + 648);
    *(v0 + 1368) = *(v0 + 632);
    v15 = swift_allocObject();
    *(v0 + 1376) = v15;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v16 = swift_allocObject();
    *(v0 + 1384) = v16;
    *(v16 + 16) = v13;
    *(v16 + 24) = v14;
    swift_bridgeObjectRetain_n();
    sub_100070EEC(v0 + 616, v0 + 760);

    *(v0 + 1104) = &type metadata for ConversionHistoryDatabaseStore;
    *(v0 + 1112) = sub_10014ACC4();
    *(v0 + 1080) = v4;
    *(v0 + 1088) = v5;
    *(v0 + 1096) = v6;

    v17 = v6;
    v18 = swift_task_alloc();
    *(v0 + 1392) = v18;
    v18[2] = v17;
    v18[3] = v0 + 1080;
    v18[4] = sub_1000E1CF0;
    v18[5] = v16;
    v19 = swift_task_alloc();
    *(v0 + 1400) = v19;
    v20 = sub_10000CDE0(&qword_10023B690, &qword_1001B9260);
    *v19 = v0;
    v19[1] = sub_10013D55C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 904, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014D290, v18, v20);
  }

  else
  {
    v21 = swift_task_alloc();
    *(v0 + 1304) = v21;
    v22 = sub_10000CDE0(&qword_10023D660, &unk_1001C16A0);
    *v21 = v0;
    v21[1] = sub_10013D40C;

    return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v22);
  }
}

uint64_t sub_10013D40C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10013D55C()
{
  v2 = *v1;
  *(*v1 + 1408) = v0;

  if (v0)
  {
    v3 = sub_10013DD24;
  }

  else
  {

    sub_10000DB58((v2 + 1080));
    v3 = sub_10013D680;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10013D680()
{
  v1 = (v0 + 616);
  v2 = *(v0 + 936);
  *(v0 + 1040) = *(v0 + 952);
  *(v0 + 1072) = *(v0 + 984);
  *(v0 + 1056) = *(v0 + 968);
  v3 = *(v0 + 920);
  *(v0 + 992) = *(v0 + 904);
  *(v0 + 1008) = v3;
  *(v0 + 1024) = v2;
  if (*(v0 + 1040))
  {
    v4 = *(v0 + 1072);
    v5 = *(v0 + 1064);

    sub_10000DAF8(v0 + 992, &qword_10023B690, &qword_1001B9260);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = *(v0 + 1376);
  swift_beginAccess();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  v7 = *(v0 + 1376);
  v57 = *(v0 + 1368);
  v8 = *(v0 + 1352);
  v54 = *(v0 + 1336);
  v55 = *(v0 + 1416);
  v56 = *(v0 + 1417);
  v53 = *(v0 + 1328);
  v51 = *(v0 + 1360);
  v52 = *(v0 + 1320);
  v9 = *(v0 + 1232);
  v10 = *(v0 + 1224);
  v11 = *(v0 + 1216);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v9, 1, 1, v12);
  sub_10003FD38(v11, v0 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v15 = *(v0 + 728);
  *(v14 + 128) = *(v0 + 712);
  *(v14 + 144) = v15;
  *(v14 + 160) = *(v0 + 744);
  v16 = *(v0 + 664);
  *(v14 + 64) = *(v0 + 648);
  *(v14 + 80) = v16;
  v17 = *(v0 + 696);
  *(v14 + 96) = *(v0 + 680);
  *(v14 + 112) = v17;
  v18 = *(v0 + 632);
  *(v14 + 32) = *v1;
  *(v14 + 48) = v18;
  *(v14 + 176) = v8;
  *(v14 + 184) = v51;
  *(v14 + 192) = v7;
  memcpy((v14 + 200), (v0 + 16), 0x258uLL);
  *(v14 + 800) = v54;
  *(v14 + 816) = v57;
  *(v14 + 824) = v52;
  *(v14 + 832) = v53;
  *(v14 + 840) = v55;
  *(v14 + 841) = v56;
  sub_100014B50(v9, v10, &qword_100239EE0, &qword_1001B3640);
  LODWORD(v10) = (*(v13 + 48))(v10, 1, v12);

  v19 = *(v0 + 1224);
  if (v10 == 1)
  {
    sub_10000DAF8(*(v0 + 1224), &qword_100239EE0, &qword_1001B3640);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v19, v12);
    if (*(v14 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = dispatch thunk of Actor.unownedExecutor.getter();
      v21 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = &unk_1001C1980;
  *(v23 + 24) = v14;

  if (v21 | v20)
  {
    v24 = v0 + 1120;
    *(v0 + 1120) = 0;
    *(v0 + 1128) = 0;
    *(v0 + 1136) = v20;
    *(v0 + 1144) = v21;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v0 + 1272);
  v26 = *(v0 + 1264);
  v27 = *(v0 + 1232);
  v28 = *(v0 + 1312) + 1;
  *(v0 + 1152) = 1;
  *(v0 + 1160) = v24;
  *(v0 + 1168) = v25;
  swift_task_create();

  sub_10000DAF8(v27, &qword_100239EE0, &qword_1001B3640);

  if (v28 == v26)
  {
    v29 = swift_task_alloc();
    *(v0 + 1304) = v29;
    v30 = sub_10000CDE0(&qword_10023D660, &unk_1001C16A0);
    *v29 = v0;
    v29[1] = sub_10013D40C;

    return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v30);
  }

  else
  {
    v31 = *(v0 + 1312);
    *(v0 + 1312) = v31 + 1;
    v32 = *(v0 + 1296);
    v33 = *(v0 + 1288);
    v34 = *(v0 + 1280);
    v35 = (*(v0 + 1208) + 144 * v31);
    v36 = v35[12];
    v37 = v35[13];
    v38 = v35[15];
    *(v0 + 664) = v35[14];
    *(v0 + 680) = v38;
    *(v0 + 632) = v36;
    *(v0 + 648) = v37;
    v39 = v35[16];
    v40 = v35[17];
    v41 = v35[19];
    *(v0 + 728) = v35[18];
    *(v0 + 744) = v41;
    *(v0 + 696) = v39;
    *(v0 + 712) = v40;
    *v1 = v35[11];
    *(v0 + 1320) = *(v0 + 712);
    *(v0 + 1328) = *(v0 + 696);
    *(v0 + 1416) = *(v0 + 704);
    *(v0 + 1417) = *(v0 + 689);
    v42 = *(v0 + 672);
    *(v0 + 1336) = v42;
    v43 = *(v0 + 680);
    *(v0 + 1344) = v43;
    *(v0 + 1352) = *(v0 + 640);
    *(v0 + 1360) = *(v0 + 648);
    *(v0 + 1368) = *(v0 + 632);
    v44 = swift_allocObject();
    *(v0 + 1376) = v44;
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    v45 = swift_allocObject();
    *(v0 + 1384) = v45;
    *(v45 + 16) = v42;
    *(v45 + 24) = v43;
    swift_bridgeObjectRetain_n();
    sub_100070EEC(v0 + 616, v0 + 760);

    *(v0 + 1104) = &type metadata for ConversionHistoryDatabaseStore;
    *(v0 + 1112) = sub_10014ACC4();
    *(v0 + 1080) = v34;
    *(v0 + 1088) = v33;
    *(v0 + 1096) = v32;

    v46 = v32;
    v47 = swift_task_alloc();
    *(v0 + 1392) = v47;
    v47[2] = v46;
    v47[3] = v0 + 1080;
    v47[4] = sub_1000E1CF0;
    v47[5] = v45;
    v48 = swift_task_alloc();
    *(v0 + 1400) = v48;
    v49 = sub_10000CDE0(&qword_10023B690, &qword_1001B9260);
    *v48 = v0;
    v48[1] = sub_10013D55C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 904, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014D290, v47, v49);
  }
}

uint64_t sub_10013DD24()
{
  v1 = (v0 + 616);
  v2 = *(v0 + 1256);
  v3 = *(v0 + 1248);
  v4 = *(v0 + 1240);

  sub_10000DB58((v0 + 1080));
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to retrieve history %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(*(v0 + 1248) + 8))(*(v0 + 1256), *(v0 + 1240));
  v11 = *(v0 + 1376);
  v61 = *(v0 + 1368);
  v12 = *(v0 + 1352);
  v58 = *(v0 + 1336);
  v59 = *(v0 + 1416);
  v60 = *(v0 + 1417);
  v57 = *(v0 + 1328);
  v55 = *(v0 + 1360);
  v56 = *(v0 + 1320);
  v13 = *(v0 + 1232);
  v14 = *(v0 + 1224);
  v15 = *(v0 + 1216);
  v16 = type metadata accessor for TaskPriority();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v13, 1, 1, v16);
  sub_10003FD38(v15, v0 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v19 = *(v0 + 728);
  *(v18 + 128) = *(v0 + 712);
  *(v18 + 144) = v19;
  *(v18 + 160) = *(v0 + 744);
  v20 = *(v0 + 664);
  *(v18 + 64) = *(v0 + 648);
  *(v18 + 80) = v20;
  v21 = *(v0 + 696);
  *(v18 + 96) = *(v0 + 680);
  *(v18 + 112) = v21;
  v22 = *(v0 + 632);
  *(v18 + 32) = *v1;
  *(v18 + 48) = v22;
  *(v18 + 176) = v12;
  *(v18 + 184) = v55;
  *(v18 + 192) = v11;
  memcpy((v18 + 200), (v0 + 16), 0x258uLL);
  *(v18 + 800) = v58;
  *(v18 + 816) = v61;
  *(v18 + 824) = v56;
  *(v18 + 832) = v57;
  *(v18 + 840) = v59;
  *(v18 + 841) = v60;
  sub_100014B50(v13, v14, &qword_100239EE0, &qword_1001B3640);
  LODWORD(v14) = (*(v17 + 48))(v14, 1, v16);

  v23 = *(v0 + 1224);
  if (v14 == 1)
  {
    sub_10000DAF8(*(v0 + 1224), &qword_100239EE0, &qword_1001B3640);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v17 + 8))(v23, v16);
    if (*(v18 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v24 = dispatch thunk of Actor.unownedExecutor.getter();
      v25 = v26;
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }
  }

  v27 = swift_allocObject();
  *(v27 + 16) = &unk_1001C1980;
  *(v27 + 24) = v18;

  if (v25 | v24)
  {
    v28 = v0 + 1120;
    *(v0 + 1120) = 0;
    *(v0 + 1128) = 0;
    *(v0 + 1136) = v24;
    *(v0 + 1144) = v25;
  }

  else
  {
    v28 = 0;
  }

  v29 = *(v0 + 1272);
  v30 = *(v0 + 1264);
  v31 = *(v0 + 1232);
  v32 = *(v0 + 1312) + 1;
  *(v0 + 1152) = 1;
  *(v0 + 1160) = v28;
  *(v0 + 1168) = v29;
  swift_task_create();

  sub_10000DAF8(v31, &qword_100239EE0, &qword_1001B3640);

  if (v32 == v30)
  {
    v33 = swift_task_alloc();
    *(v0 + 1304) = v33;
    v34 = sub_10000CDE0(&qword_10023D660, &unk_1001C16A0);
    *v33 = v0;
    v33[1] = sub_10013D40C;

    return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v34);
  }

  else
  {
    v35 = *(v0 + 1312);
    *(v0 + 1312) = v35 + 1;
    v36 = *(v0 + 1296);
    v37 = *(v0 + 1288);
    v38 = *(v0 + 1280);
    v39 = (*(v0 + 1208) + 144 * v35);
    v40 = v39[12];
    v41 = v39[13];
    v42 = v39[15];
    *(v0 + 664) = v39[14];
    *(v0 + 680) = v42;
    *(v0 + 632) = v40;
    *(v0 + 648) = v41;
    v43 = v39[16];
    v44 = v39[17];
    v45 = v39[19];
    *(v0 + 728) = v39[18];
    *(v0 + 744) = v45;
    *(v0 + 696) = v43;
    *(v0 + 712) = v44;
    *v1 = v39[11];
    *(v0 + 1320) = *(v0 + 712);
    *(v0 + 1328) = *(v0 + 696);
    *(v0 + 1416) = *(v0 + 704);
    *(v0 + 1417) = *(v0 + 689);
    v46 = *(v0 + 672);
    *(v0 + 1336) = v46;
    v47 = *(v0 + 680);
    *(v0 + 1344) = v47;
    *(v0 + 1352) = *(v0 + 640);
    *(v0 + 1360) = *(v0 + 648);
    *(v0 + 1368) = *(v0 + 632);
    v48 = swift_allocObject();
    *(v0 + 1376) = v48;
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    v49 = swift_allocObject();
    *(v0 + 1384) = v49;
    *(v49 + 16) = v46;
    *(v49 + 24) = v47;
    swift_bridgeObjectRetain_n();
    sub_100070EEC(v0 + 616, v0 + 760);

    *(v0 + 1104) = &type metadata for ConversionHistoryDatabaseStore;
    *(v0 + 1112) = sub_10014ACC4();
    *(v0 + 1080) = v38;
    *(v0 + 1088) = v37;
    *(v0 + 1096) = v36;

    v50 = v36;
    v51 = swift_task_alloc();
    *(v0 + 1392) = v51;
    v51[2] = v50;
    v51[3] = v0 + 1080;
    v51[4] = sub_1000E1CF0;
    v51[5] = v49;
    v52 = swift_task_alloc();
    *(v0 + 1400) = v52;
    v53 = sub_10000CDE0(&qword_10023B690, &qword_1001B9260);
    *v52 = v0;
    v52[1] = sub_10013D55C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 904, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014D290, v51, v53);
  }
}

uint64_t sub_10013E494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 6401) = v18;
  *(v8 + 5784) = v16;
  *(v8 + 5768) = v15;
  *(v8 + 5800) = v17;
  *(v8 + 5760) = a8;
  *(v8 + 5752) = a7;
  *(v8 + 5744) = a6;
  *(v8 + 5736) = a5;
  *(v8 + 5728) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 5808) = v9;
  *(v8 + 5816) = *(v9 - 8);
  *(v8 + 5824) = swift_task_alloc();
  *(v8 + 5832) = swift_task_alloc();
  *(v8 + 5840) = swift_task_alloc();
  v10 = sub_10000CDE0(&qword_10023CA20, &unk_1001BE240);
  *(v8 + 5848) = v10;
  *(v8 + 5856) = *(v10 - 8);
  *(v8 + 5864) = swift_task_alloc();
  v11 = type metadata accessor for Calendar.Component();
  *(v8 + 5872) = v11;
  *(v8 + 5880) = *(v11 - 8);
  *(v8 + 5888) = swift_task_alloc();
  v12 = type metadata accessor for Date();
  *(v8 + 5896) = v12;
  *(v8 + 5904) = *(v12 - 8);
  *(v8 + 5912) = swift_task_alloc();

  return _swift_task_switch(sub_10013E6C8, 0, 0);
}

uint64_t sub_10013E6C8()
{
  v47 = (v0 + 506);
  v49 = (v0 + 1002);
  v55 = (v0 + 6369);
  v52 = (v0 + 6395);
  v1 = *(v0 + 5912);
  v2 = *(v0 + 5904);
  v3 = *(v0 + 5896);
  v4 = *(v0 + 5888);
  v5 = *(v0 + 5880);
  v6 = *(v0 + 5872);
  v58 = *(v0 + 5776);
  v56 = *(v0 + 5760);
  v57 = *(v0 + 5768);
  v7 = *(v0 + 5752);
  v53 = *(v0 + 5736);
  v54 = *(v0 + 5744);
  v8 = *(*(v0 + 5728) + 72);
  *(v0 + 6403) = v8;
  v48 = v8 > 1;
  swift_beginAccess();
  v50 = *(v7 + 24);
  v51 = *(v7 + 16);

  static Date.now.getter();
  *(v0 + 5236) = enum case for Calendar.Component.hour(_:);
  v9 = *(v5 + 104);
  *(v0 + 5920) = v9;
  *(v0 + 5928) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v4);
  v10 = sub_100025808(v1, v4);
  v12 = v11;
  v13 = *(v5 + 8);
  *(v0 + 5936) = v13;
  *(v0 + 5944) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v4, v6);
  v14 = *(v2 + 8);
  *(v0 + 5952) = v14;
  *(v0 + 5960) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v1, v3);
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v10;
  }

  v16 = objc_opt_self();
  *(v0 + 5968) = v16;
  v17 = [v16 buildVersion];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v0 + 6416) = 1;
  *(v0 + 6360) = 1;
  *(v0 + 6464) = 1;
  *(v0 + 6448) = 1;
  *(v0 + 6456) = 1;
  *(v0 + 1008) = 1543;
  *(v0 + 1010) = *v47;
  *(v0 + 1014) = *(v0 + 510);
  *(v0 + 1016) = 0u;
  *(v0 + 1032) = 0u;
  *(v0 + 1048) = 0u;
  *(v0 + 1064) = v15;
  *(v0 + 1072) = v18;
  *(v0 + 1080) = v20;
  *(v0 + 1088) = 0;
  *(v0 + 1089) = 33686018;
  *(v0 + 1093) = 2;
  *(v0 + 1096) = 0;
  v21 = *(v0 + 6416);
  *(v0 + 1104) = v21;
  *(v0 + 1105) = *(v0 + 6353);
  *(v0 + 1108) = *(v0 + 6356);
  *(v0 + 1112) = 0;
  v22 = *(v0 + 6360);
  *(v0 + 1120) = v22;
  *(v0 + 1121) = 1;
  *(v0 + 1122) = *v49;
  *(v0 + 1126) = *(v0 + 1006);
  *(v0 + 1128) = 0;
  v23 = *(v0 + 6464);
  *(v0 + 1136) = v23;
  *(v0 + 1140) = *(v0 + 6348);
  *(v0 + 1137) = *(v0 + 6345);
  *(v0 + 1144) = 0;
  v24 = *(v0 + 6448);
  *(v0 + 1152) = v24;
  *(v0 + 1153) = v48;
  *(v0 + 1154) = 3;
  *(v0 + 1159) = *(v0 + 6399);
  *(v0 + 1155) = *v52;
  *(v0 + 1160) = 0;
  v25 = *(v0 + 6456);
  *(v0 + 1168) = v25;
  v26 = *(v0 + 6361);
  *(v0 + 1172) = *(v0 + 6364);
  *(v0 + 1169) = v26;
  *(v0 + 1176) = v53;
  *(v0 + 1184) = v54;
  *(v0 + 1192) = 514;
  *(v0 + 1194) = 2;
  v27 = *v55;
  *(v0 + 1199) = *(v0 + 6373);
  *(v0 + 1195) = v27;
  *(v0 + 1200) = 0u;
  *(v0 + 1216) = v51;
  *(v0 + 1224) = v50;
  *(v0 + 3472) = 1543;
  v28 = *v47;
  *(v0 + 3478) = *(v0 + 510);
  *(v0 + 3474) = v28;
  *(v0 + 3496) = 0u;
  *(v0 + 3512) = 0u;
  *(v0 + 3480) = 0u;
  *(v0 + 3528) = v15;
  *(v0 + 3536) = v18;
  *(v0 + 3544) = v20;
  *(v0 + 3552) = 0;
  *(v0 + 3557) = 2;
  *(v0 + 3553) = 33686018;
  *(v0 + 3560) = 0;
  *(v0 + 3568) = v21;
  v29 = *(v0 + 6353);
  *(v0 + 3572) = *(v0 + 6356);
  *(v0 + 3569) = v29;
  *(v0 + 3576) = 0;
  *(v0 + 3584) = v22;
  *(v0 + 3585) = 1;
  v30 = *v49;
  *(v0 + 3590) = *(v0 + 1006);
  *(v0 + 3586) = v30;
  *(v0 + 3592) = 0;
  *(v0 + 3600) = v23;
  v31 = *(v0 + 6345);
  *(v0 + 3604) = *(v0 + 6348);
  *(v0 + 3601) = v31;
  *(v0 + 3608) = 0;
  *(v0 + 3616) = v24;
  *(v0 + 3617) = v48;
  *(v0 + 3618) = 3;
  v32 = *v52;
  *(v0 + 3623) = *(v0 + 6399);
  *(v0 + 3619) = v32;
  *(v0 + 3624) = 0;
  *(v0 + 3632) = v25;
  v33 = *(v0 + 6361);
  *(v0 + 3636) = *(v0 + 6364);
  *(v0 + 3633) = v33;
  *(v0 + 3640) = v53;
  *(v0 + 3648) = v54;
  *(v0 + 3656) = 514;
  *(v0 + 3658) = 2;
  v34 = *v55;
  *(v0 + 3663) = *(v0 + 6373);
  *(v0 + 3659) = v34;
  *(v0 + 3664) = 0u;
  *(v0 + 3680) = v51;
  *(v0 + 3688) = v50;

  sub_100010568(v0 + 1008, v0 + 3248);
  sub_10003AE8C(v0 + 3472);
  v35 = *(v0 + 1024);
  *(v0 + 5976) = *(v0 + 1008);
  *(v0 + 5992) = v35;
  v36 = *(v0 + 1192);
  *(v0 + 4416) = *(v0 + 1176);
  *(v0 + 4432) = v36;
  *(v0 + 4448) = *(v0 + 1208);
  v37 = *(v0 + 1128);
  *(v0 + 4352) = *(v0 + 1112);
  *(v0 + 4368) = v37;
  v38 = *(v0 + 1160);
  *(v0 + 4384) = *(v0 + 1144);
  *(v0 + 4400) = v38;
  v39 = *(v0 + 1064);
  *(v0 + 4288) = *(v0 + 1048);
  *(v0 + 4304) = v39;
  v40 = *(v0 + 1096);
  *(v0 + 4320) = *(v0 + 1080);
  *(v0 + 6008) = *(v0 + 1040);
  *(v0 + 4464) = *(v0 + 1224);
  *(v0 + 4336) = v40;
  v41 = v56[9];
  v42 = v56[10];
  v43 = v56[11];
  v44 = swift_allocObject();
  *(v0 + 6016) = v44;
  *(v44 + 16) = v57;
  *(v44 + 24) = v58;

  v45 = swift_task_alloc();
  *(v0 + 6024) = v45;
  *v45 = v0;
  v45[1] = sub_10013EC8C;

  return sub_10010FC40(v0 + 4904, sub_10014C4EC, v44, v41, v42, v43);
}

uint64_t sub_10013EC8C()
{
  *(*v1 + 6032) = v0;

  if (v0)
  {
    v2 = sub_100142288;
  }

  else
  {
    v2 = sub_10013EDB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013EDB0()
{
  v59 = v0;
  v1 = *(v0 + 4984);
  *(v0 + 5080) = *(v0 + 4968);
  *(v0 + 5096) = v1;
  *(v0 + 5111) = *(v0 + 4999);
  v3 = *(v0 + 4904);
  v2 = *(v0 + 4920);
  *(v0 + 5016) = v3;
  *(v0 + 5032) = v2;
  v4 = *(v0 + 4952);
  *(v0 + 5048) = *(v0 + 4936);
  *(v0 + 5064) = v4;
  *(v0 + 5648) = v3;
  *(v0 + 5664) = *(v0 + 4920);
  v5 = *(v0 + 5040);
  *(v0 + 6040) = v5;
  v6 = *(v0 + 4952);
  *(v0 + 5456) = *(v0 + 4936);
  *(v0 + 5472) = v6;
  v7 = *(v0 + 4984);
  *(v0 + 5488) = *(v0 + 4968);
  *(v0 + 5504) = v7;
  *(v0 + 6404) = *(v0 + 5112);
  *(v0 + 5234) = *(v0 + 5113);
  if (v5)
  {
    v8 = *(v0 + 5784);
    v9 = *(v0 + 5760);
    v10 = *(v0 + 5728);
    v12 = v9[6];
    v11 = v9[7];
    v13 = v9[8];
    v14 = swift_allocObject();
    *(v0 + 6048) = v14;
    *(v14 + 16) = v8;
    v15 = v10[5];
    v16 = v10[6];
    v17 = v10[7];
    *(v14 + 152) = v10[8];
    *(v14 + 136) = v17;
    *(v14 + 120) = v16;
    *(v14 + 104) = v15;
    v18 = v10[1];
    v19 = v10[2];
    v20 = v10[3];
    *(v14 + 88) = v10[4];
    *(v14 + 72) = v20;
    *(v14 + 56) = v19;
    *(v14 + 40) = v18;
    *(v14 + 24) = *v10;
    sub_100070EEC(v10, v0 + 4760);
    v21 = swift_task_alloc();
    *(v0 + 6056) = v21;
    *v21 = v0;
    v21[1] = sub_10013F26C;

    return sub_100111AC8(v0 + 5312, sub_10014C638, v14, v12, v11, v13);
  }

  else
  {
    sub_10014C5A4();
    v23 = swift_allocError();
    *v24 = 3;
    swift_willThrow();
    *(v0 + 6288) = v23;
    v25 = *(v0 + 5832);
    v26 = *(v0 + 5816);
    v27 = *(v0 + 5808);
    v28 = *(v0 + 5728);
    v29 = Logger.postback.unsafeMutableAddressor();
    (*(v26 + 16))(v25, v29, v27);
    sub_100070EEC(v28, v0 + 4472);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    sub_10003BC20(v28);

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 5832);
    v34 = *(v0 + 5816);
    v35 = *(v0 + 5808);
    if (v32)
    {
      v57 = *(v0 + 5832);
      v36 = *(v0 + 5728);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v58 = v39;
      *v37 = 136315394;
      *(v37 + 4) = sub_10017AD04(*(v36 + 56), *(v36 + 64), &v58);
      *(v37 + 12) = 2112;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v40;
      *v38 = v40;
      _os_log_impl(&_mh_execute_header, v30, v31, "Fetch postback failed for conversion ID: %s, error: %@", v37, 0x16u);
      sub_10000DAF8(v38, &qword_100239F10, &qword_1001B4FD0);

      sub_10000DB58(v39);

      (*(v34 + 8))(v57, v35);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    v41 = *(v0 + 5976);
    v42 = *(v0 + 5760);
    v43 = sub_1000C7C10(v23);
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v50 = sub_10000DA7C((v42 + 560), *(v42 + 584));
    *(v0 + 3024) = v41;
    *(v0 + 3032) = v43;
    *(v0 + 3040) = v45;
    *(v0 + 3048) = v47;
    *(v0 + 3056) = v49;
    v51 = *(v0 + 4432);
    *(v0 + 3192) = *(v0 + 4416);
    *(v0 + 3208) = v51;
    *(v0 + 3224) = *(v0 + 4448);
    *(v0 + 3240) = *(v0 + 4464);
    v52 = *(v0 + 4368);
    *(v0 + 3128) = *(v0 + 4352);
    *(v0 + 3144) = v52;
    v53 = *(v0 + 4400);
    *(v0 + 3160) = *(v0 + 4384);
    *(v0 + 3176) = v53;
    v54 = *(v0 + 4304);
    *(v0 + 3064) = *(v0 + 4288);
    *(v0 + 3080) = v54;
    v55 = *(v0 + 4336);
    *(v0 + 3096) = *(v0 + 4320);
    *(v0 + 3112) = v55;
    v56 = *v50;
    *(v0 + 6296) = *v50;
    swift_errorRetain();

    return _swift_task_switch(sub_100141C90, v56, 0);
  }
}

uint64_t sub_10013F26C()
{
  v2 = *v1;
  *(*v1 + 6064) = v0;

  if (v0)
  {
    sub_10000DAF8(v2 + 5016, &qword_10023AFD8, qword_1001B7F28);
    v3 = sub_100142564;
  }

  else
  {
    v3 = sub_10013F3C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10013F3C0()
{
  v69 = v0;
  v1 = *(v0 + 5328);
  v2 = *(v0 + 5376);
  *(v0 + 5448) = v2;
  v3 = *(v0 + 5360);
  *(v0 + 5416) = *(v0 + 5344);
  *(v0 + 5432) = v3;
  *(v0 + 5384) = *(v0 + 5312);
  *(v0 + 5400) = v1;
  if (!v2)
  {
    v10 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v4 = *(v0 + 5400);
  v5 = *(v0 + 5408);
  if (v5 >> 60 == 15)
  {
    v6 = *(v0 + 5416);
    v7 = *(v0 + 5424);
    v8 = *(v0 + 6064);
    v9 = _swiftEmptyArrayStorage;
  }

  else
  {
    v8 = *(v0 + 6064);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    sub_1000438D8(v4, v5);
    JSONDecoder.init()();
    sub_10000CDE0(&qword_10023D7A8, &qword_1001C1900);
    sub_10014C758();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v8)
    {
      sub_10000DAF8(v0 + 5384, &qword_10023C6E8, &unk_1001BC790);

      sub_10005CB30(v4, v5);
      goto LABEL_12;
    }

    sub_10005CB30(v4, v5);

    v9 = *(v0 + 5720);
    v4 = *(v0 + 5400);
    v5 = *(v0 + 5408);
    v6 = *(v0 + 5416);
    v7 = *(v0 + 5424);
  }

  sub_10014C744(v6, v7);
  sub_100014B50(v0 + 5384, v0 + 5240, &qword_10023C6E8, &unk_1001BC790);
  sub_10005CB30(v4, v5);
  sub_10005CB30(v6, v7);

  if (v7 >> 60 == 15)
  {
    v10 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10000CDE0(&qword_10023D7C0, &qword_1001C1908);
  sub_10014BE88();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (!v8)
  {
    sub_10005CB30(v6, v7);

    v10 = *(v0 + 5696);
LABEL_19:
    v43 = (v0 + 5456);
    v44 = (v0 + 5648);
    *(v0 + 6080) = v9;
    *(v0 + 6072) = v10;
    v45 = *(v0 + 6404);
    if (v45 > 1)
    {
      v54 = *(v0 + 5234);
      v55 = *(v0 + 6040);
      v56 = *(v0 + 5752);
      v57 = *(v0 + 5744);
      v58 = *(v0 + 5736);
      swift_beginAccess();
      v59 = *(v56 + 16);
      v60 = *(v56 + 24);
      *(v0 + 3904) = *v44;
      v61 = *(v0 + 5472);
      *(v0 + 3936) = *v43;
      *(v0 + 3952) = v61;
      v62 = *(v0 + 5504);
      *(v0 + 3968) = *(v0 + 5488);
      *(v0 + 4088) = &type metadata for AMSDogBag;
      *(v0 + 4096) = &off_100222F48;
      *(v0 + 3920) = *(v0 + 5664);
      *(v0 + 3928) = v55;
      *(v0 + 3984) = v62;
      *(v0 + 4000) = 2;
      *(v0 + 4001) = v54;
      *(v0 + 4008) = v9;
      *(v0 + 4016) = v58;
      *(v0 + 4024) = v57;
      *(v0 + 4032) = v59;
      *(v0 + 4040) = v60;
      *(v0 + 4048) = &type metadata for HTTP;
      *(v0 + 4056) = &off_10021B990;

      sub_100014B50(v0 + 5016, v0 + 5128, &qword_10023AFD8, qword_1001B7F28);

      v63 = swift_task_alloc();
      *(v0 + 6104) = v63;
      *v63 = v0;
      v63[1] = sub_100140124;

      return sub_10006E444();
    }

    else
    {
      v67 = *(v0 + 5234);
      v46 = *(v0 + 6040);
      v47 = *(v0 + 5752);
      v48 = *(v0 + 5744);
      v65 = *(v0 + 5736);
      swift_beginAccess();
      v49 = *(v47 + 16);
      v50 = *(v47 + 24);
      *(v0 + 3696) = *v44;
      v51 = *(v0 + 5472);
      *(v0 + 3728) = *v43;
      *(v0 + 3744) = v51;
      v52 = *(v0 + 5504);
      *(v0 + 3760) = *(v0 + 5488);
      *(v0 + 3888) = &type metadata for AMSDogBag;
      *(v0 + 3896) = &off_100222F48;
      *(v0 + 3712) = *(v0 + 5664);
      *(v0 + 3720) = v46;
      *(v0 + 3776) = v52;
      *(v0 + 3792) = v45;
      *(v0 + 3793) = v67;
      *(v0 + 3800) = v9;
      *(v0 + 3808) = v10;
      *(v0 + 3816) = v65;
      *(v0 + 3824) = v48;
      *(v0 + 3832) = v49;
      *(v0 + 3840) = v50;
      *(v0 + 3848) = &type metadata for HTTP;
      *(v0 + 3856) = &off_10021B990;

      v53 = swift_task_alloc();
      *(v0 + 6088) = v53;
      *v53 = v0;
      v53[1] = sub_10013FBE0;

      return sub_10001AC94();
    }
  }

  sub_10000DAF8(v0 + 5384, &qword_10023C6E8, &unk_1001BC790);

  sub_10005CB30(v6, v7);
LABEL_12:
  sub_10000DAF8(v0 + 5016, &qword_10023AFD8, qword_1001B7F28);
  *(v0 + 6288) = v8;
  v11 = *(v0 + 5832);
  v12 = *(v0 + 5816);
  v13 = *(v0 + 5808);
  v14 = *(v0 + 5728);
  v15 = Logger.postback.unsafeMutableAddressor();
  (*(v12 + 16))(v11, v15, v13);
  sub_100070EEC(v14, v0 + 4472);
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  sub_10003BC20(v14);

  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 5832);
  v20 = *(v0 + 5816);
  v21 = *(v0 + 5808);
  if (v18)
  {
    v66 = *(v0 + 5832);
    v22 = *(v0 + 5728);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v68 = v25;
    *v23 = 136315394;
    *(v23 + 4) = sub_10017AD04(*(v22 + 56), *(v22 + 64), &v68);
    *(v23 + 12) = 2112;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v26;
    *v24 = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Fetch postback failed for conversion ID: %s, error: %@", v23, 0x16u);
    sub_10000DAF8(v24, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v25);

    (*(v20 + 8))(v66, v21);
  }

  else
  {

    (*(v20 + 8))(v19, v21);
  }

  v27 = *(v0 + 5976);
  v28 = *(v0 + 5760);
  v29 = sub_1000C7C10(v8);
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = sub_10000DA7C((v28 + 560), *(v28 + 584));
  *(v0 + 3024) = v27;
  *(v0 + 3032) = v29;
  *(v0 + 3040) = v31;
  *(v0 + 3048) = v33;
  *(v0 + 3056) = v35;
  v37 = *(v0 + 4432);
  *(v0 + 3192) = *(v0 + 4416);
  *(v0 + 3208) = v37;
  *(v0 + 3224) = *(v0 + 4448);
  *(v0 + 3240) = *(v0 + 4464);
  v38 = *(v0 + 4368);
  *(v0 + 3128) = *(v0 + 4352);
  *(v0 + 3144) = v38;
  v39 = *(v0 + 4400);
  *(v0 + 3160) = *(v0 + 4384);
  *(v0 + 3176) = v39;
  v40 = *(v0 + 4304);
  *(v0 + 3064) = *(v0 + 4288);
  *(v0 + 3080) = v40;
  v41 = *(v0 + 4336);
  *(v0 + 3096) = *(v0 + 4320);
  *(v0 + 3112) = v41;
  v42 = *v36;
  *(v0 + 6296) = *v36;
  swift_errorRetain();

  return _swift_task_switch(sub_100141C90, v42, 0);
}

uint64_t sub_10013FBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[690] = v4;
  v5[691] = a1;
  v5[692] = a2;
  v5[693] = a3;
  v5[694] = v3;
  v5[762] = v3;

  if (v3)
  {

    v6 = sub_10013FE24;
  }

  else
  {
    v6 = sub_10013FD1C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10013FD1C()
{
  sub_10014C6F0(v0 + 3696);
  v1 = *(v0 + 5544);
  v2 = *(v0 + 6080);
  v3 = *(v0 + 6072);
  *(v0 + 6120) = v1;
  *(v0 + 6128) = *(v0 + 5528);
  v4 = sub_10000E200(v2, v3);
  v6 = v5;

  *(v0 + 6144) = v4;
  *(v0 + 6152) = v6;
  v7 = swift_task_alloc();
  *(v0 + 6160) = v7;
  *v7 = v0;
  v7[1] = sub_10014069C;
  v8 = *(v0 + 5784);
  v9 = *(v0 + 5776);
  v10 = *(v0 + 5768);

  return sub_100143150(v1, v8, v10, v9, v4, v6);
}

uint64_t sub_10013FE24()
{
  v37 = v0;
  sub_10000DAF8(v0 + 5384, &qword_10023C6E8, &unk_1001BC790);
  sub_10014C6F0(v0 + 3696);
  v1 = *(v0 + 6096);
  *(v0 + 6288) = v1;
  v2 = *(v0 + 5832);
  v3 = *(v0 + 5816);
  v4 = *(v0 + 5808);
  v5 = *(v0 + 5728);
  v6 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v6, v4);
  sub_100070EEC(v5, v0 + 4472);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_10003BC20(v5);

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 5832);
  v11 = *(v0 + 5816);
  v12 = *(v0 + 5808);
  if (v9)
  {
    v35 = *(v0 + 5832);
    v13 = *(v0 + 5728);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_10017AD04(*(v13 + 56), *(v13 + 64), &v36);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetch postback failed for conversion ID: %s, error: %@", v14, 0x16u);
    sub_10000DAF8(v15, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v16);

    (*(v11 + 8))(v35, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = *(v0 + 5976);
  v19 = *(v0 + 5760);
  v20 = sub_1000C7C10(v1);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = sub_10000DA7C((v19 + 560), *(v19 + 584));
  *(v0 + 3024) = v18;
  *(v0 + 3032) = v20;
  *(v0 + 3040) = v22;
  *(v0 + 3048) = v24;
  *(v0 + 3056) = v26;
  v28 = *(v0 + 4432);
  *(v0 + 3192) = *(v0 + 4416);
  *(v0 + 3208) = v28;
  *(v0 + 3224) = *(v0 + 4448);
  *(v0 + 3240) = *(v0 + 4464);
  v29 = *(v0 + 4368);
  *(v0 + 3128) = *(v0 + 4352);
  *(v0 + 3144) = v29;
  v30 = *(v0 + 4400);
  *(v0 + 3160) = *(v0 + 4384);
  *(v0 + 3176) = v30;
  v31 = *(v0 + 4304);
  *(v0 + 3064) = *(v0 + 4288);
  *(v0 + 3080) = v31;
  v32 = *(v0 + 4336);
  *(v0 + 3096) = *(v0 + 4320);
  *(v0 + 3112) = v32;
  v33 = *v27;
  *(v0 + 6296) = *v27;
  swift_errorRetain();

  return _swift_task_switch(sub_100141C90, v33, 0);
}

uint64_t sub_100140124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[695] = v4;
  v5[696] = a1;
  v5[697] = a2;
  v5[698] = a3;
  v5[699] = v3;
  v5[764] = v3;

  if (v3)
  {

    v6 = sub_100140380;
  }

  else
  {
    v6 = sub_100140260;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100140260()
{
  sub_10000DAF8(v0 + 5016, &qword_10023AFD8, qword_1001B7F28);
  sub_10014C69C(v0 + 3904);
  v1 = *(v0 + 5584);
  v2 = *(v0 + 6080);
  v3 = *(v0 + 6072);
  *(v0 + 6120) = v1;
  *(v0 + 6128) = *(v0 + 5568);
  v4 = sub_10000E200(v2, v3);
  v6 = v5;

  *(v0 + 6144) = v4;
  *(v0 + 6152) = v6;
  v7 = swift_task_alloc();
  *(v0 + 6160) = v7;
  *v7 = v0;
  v7[1] = sub_10014069C;
  v8 = *(v0 + 5784);
  v9 = *(v0 + 5776);
  v10 = *(v0 + 5768);

  return sub_100143150(v1, v8, v10, v9, v4, v6);
}

uint64_t sub_100140380()
{
  v37 = v0;
  sub_10000DAF8(v0 + 5016, &qword_10023AFD8, qword_1001B7F28);
  sub_10000DAF8(v0 + 5384, &qword_10023C6E8, &unk_1001BC790);
  sub_10014C69C(v0 + 3904);
  v1 = *(v0 + 6112);
  *(v0 + 6288) = v1;
  v2 = *(v0 + 5832);
  v3 = *(v0 + 5816);
  v4 = *(v0 + 5808);
  v5 = *(v0 + 5728);
  v6 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v6, v4);
  sub_100070EEC(v5, v0 + 4472);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_10003BC20(v5);

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 5832);
  v11 = *(v0 + 5816);
  v12 = *(v0 + 5808);
  if (v9)
  {
    v35 = *(v0 + 5832);
    v13 = *(v0 + 5728);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_10017AD04(*(v13 + 56), *(v13 + 64), &v36);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetch postback failed for conversion ID: %s, error: %@", v14, 0x16u);
    sub_10000DAF8(v15, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v16);

    (*(v11 + 8))(v35, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = *(v0 + 5976);
  v19 = *(v0 + 5760);
  v20 = sub_1000C7C10(v1);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = sub_10000DA7C((v19 + 560), *(v19 + 584));
  *(v0 + 3024) = v18;
  *(v0 + 3032) = v20;
  *(v0 + 3040) = v22;
  *(v0 + 3048) = v24;
  *(v0 + 3056) = v26;
  v28 = *(v0 + 4432);
  *(v0 + 3192) = *(v0 + 4416);
  *(v0 + 3208) = v28;
  *(v0 + 3224) = *(v0 + 4448);
  *(v0 + 3240) = *(v0 + 4464);
  v29 = *(v0 + 4368);
  *(v0 + 3128) = *(v0 + 4352);
  *(v0 + 3144) = v29;
  v30 = *(v0 + 4400);
  *(v0 + 3160) = *(v0 + 4384);
  *(v0 + 3176) = v30;
  v31 = *(v0 + 4304);
  *(v0 + 3064) = *(v0 + 4288);
  *(v0 + 3080) = v31;
  v32 = *(v0 + 4336);
  *(v0 + 3096) = *(v0 + 4320);
  *(v0 + 3112) = v32;
  v33 = *v27;
  *(v0 + 6296) = *v27;
  swift_errorRetain();

  return _swift_task_switch(sub_100141C90, v33, 0);
}

uint64_t sub_10014069C()
{

  return _swift_task_switch(sub_1001407B4, 0, 0);
}

uint64_t sub_1001407B4()
{
  v1 = *(v0 + 6008);
  v10 = *(v0 + 5992);
  v11 = *(v0 + 5976);
  v2 = sub_10000DA7C((*(v0 + 5760) + 560), *(*(v0 + 5760) + 584));
  *(v0 + 2368) = v10;
  *(v0 + 2352) = v11;
  *(v0 + 2384) = v1;
  v3 = *(v0 + 4432);
  *(v0 + 2520) = *(v0 + 4416);
  *(v0 + 2536) = v3;
  *(v0 + 2552) = *(v0 + 4448);
  *(v0 + 2568) = *(v0 + 4464);
  v4 = *(v0 + 4368);
  *(v0 + 2456) = *(v0 + 4352);
  *(v0 + 2472) = v4;
  v5 = *(v0 + 4400);
  *(v0 + 2488) = *(v0 + 4384);
  *(v0 + 2504) = v5;
  v6 = *(v0 + 4304);
  *(v0 + 2392) = *(v0 + 4288);
  *(v0 + 2408) = v6;
  v7 = *(v0 + 4336);
  *(v0 + 2424) = *(v0 + 4320);
  *(v0 + 2440) = v7;
  v8 = *v2;
  *(v0 + 6168) = *v2;

  return _swift_task_switch(sub_10014089C, v8, 0);
}

uint64_t sub_10014089C()
{
  v1 = *(v0 + 5864);
  v2 = *(v0 + 5856);
  v3 = *(v0 + 5848);
  v4 = *(v0 + 5776);
  v5 = *(v0 + 5768);
  v6 = *(v0 + 2528);
  *(v0 + 424) = *(v0 + 2512);
  *(v0 + 440) = v6;
  v7 = *(v0 + 2560);
  *(v0 + 456) = *(v0 + 2544);
  *(v0 + 472) = v7;
  v8 = *(v0 + 2464);
  *(v0 + 360) = *(v0 + 2448);
  *(v0 + 376) = v8;
  v9 = *(v0 + 2496);
  *(v0 + 392) = *(v0 + 2480);
  *(v0 + 408) = v9;
  v10 = *(v0 + 2400);
  *(v0 + 296) = *(v0 + 2384);
  *(v0 + 312) = v10;
  v11 = *(v0 + 2432);
  *(v0 + 328) = *(v0 + 2416);
  *(v0 + 344) = v11;
  v12 = *(v0 + 2368);
  *(v0 + 264) = *(v0 + 2352);
  *(v0 + 280) = v12;
  *(v0 + 488) = v5;
  *(v0 + 496) = v4;
  *(v0 + 504) = 257;
  sub_1000E191C(v0 + 264);
  v13 = *(v0 + 472);
  *(v0 + 208) = *(v0 + 456);
  *(v0 + 224) = v13;
  *(v0 + 240) = *(v0 + 488);
  *(v0 + 256) = *(v0 + 504);
  v14 = *(v0 + 408);
  *(v0 + 144) = *(v0 + 392);
  *(v0 + 160) = v14;
  v15 = *(v0 + 440);
  *(v0 + 176) = *(v0 + 424);
  *(v0 + 192) = v15;
  v16 = *(v0 + 344);
  *(v0 + 80) = *(v0 + 328);
  *(v0 + 96) = v16;
  v17 = *(v0 + 376);
  *(v0 + 112) = *(v0 + 360);
  *(v0 + 128) = v17;
  v18 = *(v0 + 280);
  *(v0 + 16) = *(v0 + 264);
  *(v0 + 32) = v18;
  v19 = *(v0 + 312);
  *(v0 + 48) = *(v0 + 296);
  *(v0 + 64) = v19;

  sub_100010568(v0 + 2352, v0 + 2128);
  sub_10000CDE0(&qword_10023CA28, &unk_1001C3B60);
  AsyncStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);
  v20 = *(v0 + 2352);
  v21 = *(v0 + 2392);
  v22 = *(v0 + 2400);
  v31 = *(v0 + 2432);
  v23 = *(v0 + 2435);
  v24 = *(v0 + 2465);
  v32 = *(v0 + 2472);
  v35 = *(v0 + 2537);
  v33 = *(v0 + 2437);
  v34 = *(v0 + 2538);
  v25 = *(v0 + 2552);
  v36 = *(v0 + 2560);
  v37 = *(v0 + 2544);
  v26 = *(v0 + 2568);
  *(v0 + 6424) = *(v0 + 2480);
  *(v0 + 6408) = 1;
  sub_10000CDE0(&qword_10023BCB0, &unk_1001BE250);
  v27 = swift_allocObject();
  *(v0 + 6176) = v27;
  *(v27 + 16) = xmmword_1001B93B0;
  *(v27 + 32) = v20;
  *(v27 + 34) = *(v0 + 258);
  *(v27 + 38) = *(v0 + 262);
  *(v27 + 40) = v21;
  *(v27 + 48) = v22;
  *(v27 + 56) = v31;
  *(v27 + 57) = v23;
  *(v27 + 58) = v24;
  *(v27 + 59) = *(v0 + 6390);
  *(v27 + 63) = *(v0 + 6394);
  *(v27 + 64) = v32;
  *(v27 + 72) = *(v0 + 6424);
  *(v27 + 73) = v33;
  *(v27 + 74) = *(v0 + 754);
  *(v27 + 78) = *(v0 + 758);
  *(v27 + 88) = 0;
  *(v27 + 96) = 0;
  *(v27 + 80) = 0;
  *(v27 + 104) = *(v0 + 6408);
  *(v27 + 105) = v35;
  *(v27 + 106) = v34;
  *(v27 + 107) = *(v0 + 6374);
  *(v27 + 111) = *(v0 + 6378);
  *(v27 + 112) = v37;
  *(v27 + 120) = v25;
  *(v27 + 128) = v36;
  *(v27 + 136) = v26;

  v28 = swift_task_alloc();
  *(v0 + 6184) = v28;
  *v28 = v0;
  v28[1] = sub_100140BEC;
  v29 = *(v0 + 5784);

  return sub_10016D920(v27, v29);
}

uint64_t sub_100140BEC()
{
  v1 = *(*v0 + 6168);

  return _swift_task_switch(sub_100140D18, v1, 0);
}

uint64_t sub_100140D18()
{
  sub_10003AE8C(v0 + 2352);

  return _swift_task_switch(sub_100140D80, 0, 0);
}

uint64_t sub_100140D80()
{
  v1 = (v0 + 6344);
  v45 = *(v0 + 5968);
  v46 = (v0 + 5003);
  v50 = (v0 + 5115);
  v48 = (v0 + 5227);
  v49 = (v0 + 6379);
  v51 = (v0 + 6385);
  v43 = *(v0 + 5944);
  v44 = *(v0 + 5952);
  v42 = *(v0 + 5936);
  v2 = *(v0 + 5920);
  v3 = *(v0 + 5236);
  v4 = *(v0 + 5912);
  v5 = *(v0 + 5896);
  v6 = *(v0 + 5888);
  v7 = *(v0 + 5872);
  v52 = *(v0 + 6401);
  v53 = *(v0 + 6402);
  v47 = *(v0 + 6403) > 1u;
  sub_10000DAF8(v0 + 5384, &qword_10023C6E8, &unk_1001BC790);
  static Date.now.getter();
  v2(v6, v3, v7);
  v8 = sub_100025808(v4, v6);
  v10 = v9;
  v42(v6, v7);
  v44(v4, v5);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v12 = [v45 buildVersion];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *v1 = 1;
  *(v0 + 6352) = 1;
  *(v0 + 6368) = 1;
  *(v0 + 6384) = 1;
  *(v0 + 6400) = 1;
  *(v0 + 1680) = 5;
  *(v0 + 1682) = *(v0 + 5122);
  *(v0 + 1686) = *(v0 + 5126);
  *(v0 + 1688) = 0u;
  *(v0 + 1704) = 0u;
  *(v0 + 1720) = 0u;
  *(v0 + 1736) = v11;
  *(v0 + 1744) = v13;
  *(v0 + 1752) = v15;
  *(v0 + 1760) = 0;
  *(v0 + 1761) = 33686018;
  *(v0 + 1765) = 1;
  *(v0 + 1768) = 0;
  v16 = *v1;
  *(v0 + 1776) = *v1;
  *(v0 + 1777) = *v46;
  *(v0 + 1780) = *(v0 + 5006);
  *(v0 + 1784) = 0;
  v17 = *(v0 + 6352);
  *(v0 + 1792) = v17;
  *(v0 + 1793) = 3;
  *(v0 + 1794) = *(v0 + 5010);
  *(v0 + 1798) = *(v0 + 5014);
  *(v0 + 1800) = 0;
  v18 = *(v0 + 6368);
  *(v0 + 1808) = v18;
  v19 = *v48;
  *(v0 + 1812) = *(v0 + 5230);
  *(v0 + 1809) = v19;
  *(v0 + 1816) = 0;
  v20 = *(v0 + 6384);
  *(v0 + 1824) = v20;
  *(v0 + 1825) = v47;
  *(v0 + 1826) = 3;
  *(v0 + 1831) = *(v0 + 6383);
  *(v0 + 1827) = *v49;
  *(v0 + 1832) = 0;
  LOBYTE(v19) = *(v0 + 6400);
  *(v0 + 1840) = v19;
  *(v0 + 1841) = *v50;
  *(v0 + 1844) = *(v0 + 5118);
  *(v0 + 1848) = 0u;
  *(v0 + 1864) = 514;
  *(v0 + 1866) = 2;
  v21 = *v51;
  *(v0 + 1871) = *(v0 + 6389);
  *(v0 + 1867) = v21;
  *(v0 + 1888) = 0u;
  *(v0 + 1872) = 0u;
  *(v0 + 1904) = 5;
  v22 = *(v0 + 5122);
  *(v0 + 1910) = *(v0 + 5126);
  *(v0 + 1906) = v22;
  *(v0 + 1928) = 0u;
  *(v0 + 1944) = 0u;
  *(v0 + 1912) = 0u;
  *(v0 + 1960) = v11;
  *(v0 + 1968) = v13;
  *(v0 + 1976) = v15;
  *(v0 + 1984) = 0;
  *(v0 + 1985) = 33686018;
  *(v0 + 1989) = 1;
  *(v0 + 1992) = 0;
  *(v0 + 2000) = v16;
  v23 = *v46;
  *(v0 + 2004) = *(v0 + 5006);
  *(v0 + 2001) = v23;
  *(v0 + 2008) = 0;
  *(v0 + 2016) = v17;
  *(v0 + 2017) = 3;
  v24 = *(v0 + 5010);
  *(v0 + 2022) = *(v0 + 5014);
  *(v0 + 2018) = v24;
  *(v0 + 2024) = 0;
  *(v0 + 2032) = v18;
  v25 = *v48;
  *(v0 + 2036) = *(v0 + 5230);
  *(v0 + 2033) = v25;
  *(v0 + 2040) = 0;
  *(v0 + 2048) = v20;
  *(v0 + 2049) = v47;
  *(v0 + 2050) = 3;
  v26 = *v49;
  *(v0 + 2055) = *(v0 + 6383);
  *(v0 + 2051) = v26;
  *(v0 + 2056) = 0;
  *(v0 + 2064) = v19;
  v27 = *v50;
  *(v0 + 2068) = *(v0 + 5118);
  *(v0 + 2065) = v27;
  *(v0 + 2072) = 0u;
  *(v0 + 2088) = 514;
  *(v0 + 2090) = 2;
  v28 = *v51;
  *(v0 + 2095) = *(v0 + 6389);
  *(v0 + 2091) = v28;
  *(v0 + 2112) = 0u;
  *(v0 + 2096) = 0u;
  sub_100010568(v0 + 1680, v0 + 1456);
  sub_10003AE8C(v0 + 1904);
  *(v0 + 6192) = *(v0 + 1680);
  *(v0 + 6208) = *(v0 + 1696);
  *(v0 + 6224) = *(v0 + 1712);
  v29 = *(v0 + 1864);
  *(v0 + 4232) = *(v0 + 1848);
  *(v0 + 4248) = v29;
  *(v0 + 4264) = *(v0 + 1880);
  *(v0 + 4280) = *(v0 + 1896);
  v30 = *(v0 + 1800);
  *(v0 + 4168) = *(v0 + 1784);
  *(v0 + 4184) = v30;
  v31 = *(v0 + 1832);
  *(v0 + 4200) = *(v0 + 1816);
  *(v0 + 4216) = v31;
  v32 = *(v0 + 1736);
  *(v0 + 4104) = *(v0 + 1720);
  *(v0 + 4120) = v32;
  v33 = *(v0 + 1768);
  *(v0 + 4136) = *(v0 + 1752);
  *(v0 + 4152) = v33;
  v34 = swift_task_alloc();
  *(v0 + 6232) = v34;
  *v34 = v0;
  v34[1] = sub_100141264;
  v35 = *(v0 + 6136);
  v36 = *(v0 + 6128);
  v37 = *(v0 + 5800);
  v38 = *(v0 + 5792);
  v39 = *(v0 + 5776);
  v40 = *(v0 + 5768);

  return sub_100145A70(v36, v35, v40, v39, v38, v37, v52 & 1, v53 & 1);
}