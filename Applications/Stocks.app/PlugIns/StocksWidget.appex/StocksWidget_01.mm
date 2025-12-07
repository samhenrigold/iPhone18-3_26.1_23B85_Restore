uint64_t sub_10001EEFC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000ECF4;

  return sub_10001EF9C(a1, a2);
}

uint64_t sub_10001EF9C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1000D9CC0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10001F05C, 0, 0);
}

uint64_t sub_10001F05C()
{
  sub_100006C7C(*(v0 + 32), *(*(v0 + 32) + 24));
  *(v0 + 64) = sub_1000D9750();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_10001F128;

  return Promise.resolveAsync()(v0 + 16);
}

uint64_t sub_10001F128()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10001F31C;
  }

  else
  {

    v2 = sub_10001F250;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001F250()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  sub_100006C7C(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_1000D9720();
  sub_1000D9C90();
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10001F31C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001F388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001F440;

  return sub_10001F538(a1, a2, a3, a4);
}

uint64_t sub_10001F440()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001F538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_10002510C(0, &qword_100115360, &type metadata accessor for TimeZone, &type metadata accessor for Optional);
  v4[6] = swift_task_alloc();
  sub_10002510C(0, &qword_100114D80, &type metadata accessor for URL, &type metadata accessor for Optional);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  sub_100023750(0);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v5 = sub_1000D9EC0();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_1000D9090();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v7 = sub_1000D9EB0();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  sub_100024B7C(0);
  v4[21] = swift_task_alloc();
  v8 = sub_1000D95E0();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10001F838, 0, 0);
}

uint64_t sub_10001F838()
{
  v1 = v0[3];
  v3 = v1[3];
  v2 = v1[4];
  sub_100006C7C(v1, v3);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_10001F8F4;
  v5 = v0[24];

  return sub_100002128(v5, v3, v2);
}

uint64_t sub_10001F8F4()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10001FA4C, 0, 0);
}

uint64_t sub_10001FA4C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[13];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v5[3];
  v18 = v5[4];
  sub_100006C7C(v5, v7);
  v8 = *v6;
  v9 = v6[1];
  *v2 = 0x4014000000000000;
  (*(v1 + 104))(v2, enum case for CachePolicy.maxAge(_:), v3);
  sub_1000D9080();
  v10 = enum case for NetworkProxy.none(_:);
  v11 = sub_1000D9EC0();
  (*(*(v11 - 8) + 104))(v4, v10, v11);
  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_10001FBC4;
  v14 = v0[20];
  v13 = v0[21];
  v15 = v0[17];
  v16 = v0[13];

  return QuoteDetailManagerType.fetchQuoteDetail(for:cachePolicy:earliestBeginDate:networkProxy:)(v13, v8, v9, v14, v15, v16, v7, v18);
}

uint64_t sub_10001FBC4()
{
  v2 = *v1;

  v13 = v2[20];
  v3 = v2[19];
  v12 = v2[18];
  v4 = v2[17];
  v5 = v2[15];
  v6 = v2[14];
  v7 = v2[13];
  v8 = v2[12];
  v9 = v2[11];
  if (v0)
  {

    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    (*(v3 + 8))(v13, v12);
    v10 = sub_10001FFC4;
  }

  else
  {
    (*(v8 + 8))(v2[13], v2[11]);
    (*(v5 + 8))(v4, v6);
    (*(v3 + 8))(v13, v12);
    v10 = sub_10001FE44;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10001FE44()
{
  v1 = v0[21];
  v2 = v0[2];
  v3 = sub_1000D93C0();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10001FFC4()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v15 = v0[6];
  v17 = v1;
  v16 = sub_1000D93C0();
  v8 = *(v16 - 8);
  (*(v8 + 56))(v1, 1, 1, v16);
  v9 = *(v2 + 56);
  v9(v4, 1, 1, v3);
  v9(v5, 1, 1, v3);
  v10 = sub_1000D8F30();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 1, 1, v10);
  v11(v6, 1, 1, v10);
  v12 = sub_1000D92D0();
  (*(*(v12 - 8) + 56))(v15, 1, 1, v12);
  sub_1000D9080();
  sub_1000D9310();
  if ((*(v8 + 48))(v17, 1, v16) != 1)
  {
    sub_100024BE4(v0[21], sub_100024B7C);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000202F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for WidgetStock(0);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100020388, 0, 0);
}

uint64_t sub_100020388()
{
  v1 = *(v0 + 32);
  sub_100006C7C(*(v0 + 24), *(*(v0 + 24) + 24));
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_100020454;
  v5 = *(v0 + 56);

  return sub_100020908(v5, v3, v2);
}

uint64_t sub_100020454()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10002075C;
  }

  else
  {
    sub_100023954(0);
    *(v2 + 88) = *(v4 + 48);
    v3 = sub_100020578;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100020578()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  sub_10002337C(*(v0 + 56), v2, type metadata accessor for WidgetStock);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_100020644;
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);

  return sub_100020D38(v2 + v1, v6, v4, v5);
}

uint64_t sub_100020644()
{

  if (v0)
  {

    v1 = sub_100020840;
  }

  else
  {
    v1 = sub_1000207C0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10002075C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000207C0()
{
  sub_100024BE4(*(v0 + 56), type metadata accessor for WidgetStock);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100020840()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  sub_100024BE4(*(v0 + 56), type metadata accessor for WidgetStock);
  sub_100023694(0);
  (*(*(v3 - 8) + 56))(v2 + v1, 1, 1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100020908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10002092C, 0, 0);
}

uint64_t sub_10002092C()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_100024A74(0, &qword_100115350, &type metadata for String);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_1000DDD30;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100020A14;

  return sub_1000AD530(v3);
}

uint64_t sub_100020A14(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100020B68, 0, 0);
  }
}

void sub_100020B68()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = v0[8];
      v6 = v0[3];
      v5 = v0[4];
      v7 = v0[2];
      v8 = *(type metadata accessor for WidgetStock(0) - 8);
      sub_10002337C(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v3, v7, type metadata accessor for WidgetStock);
      if (sub_1000D9B20() == v6 && v9 == v5)
      {

LABEL_12:

        v12 = v0[1];
        goto LABEL_13;
      }

      v11 = sub_1000DC360();

      if (v11)
      {
        goto LABEL_12;
      }

      ++v3;
      sub_100024BE4(v0[2], type metadata accessor for WidgetStock);
      if (v2 == v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    sub_100024AC0();
    swift_allocError();
    swift_willThrow();
    v12 = v0[1];
LABEL_13:

    v12();
  }
}

uint64_t sub_100020D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v5[31] = *(type metadata accessor for HeadlineViewModel(0) - 8);
  v5[32] = swift_task_alloc();
  v6 = sub_1000DB720();
  v5[33] = v6;
  v5[34] = *(v6 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  sub_1000DBC20();
  v5[37] = sub_1000DBC10();
  v8 = sub_1000DBBE0();
  v5[38] = v8;
  v5[39] = v7;

  return _swift_task_switch(sub_100020E98, v8, v7);
}

uint64_t sub_100020E98()
{
  v20 = v0;
  if (sub_100022B1C(*(v0 + 216), *(v0 + 224), *(v0 + 232)))
  {
    if (qword_1001141A8 != -1)
    {
      swift_once();
    }

    sub_100006E20(qword_100128FD8, v0 + 56);
    sub_100006C7C((v0 + 56), *(v0 + 80));
    sub_100002A50(0, &qword_100115348, &protocol descriptor for HeadlineViewModelServiceType);
    result = sub_1000D9F00();
    if (*(v0 + 120))
    {
      v3 = *(v0 + 280);
      v2 = *(v0 + 288);
      v4 = *(v0 + 264);
      v5 = *(v0 + 272);
      sub_100023738((v0 + 96), v0 + 16);
      sub_100006D0C((v0 + 56));
      sub_1000DB7B0();
      (*(v5 + 16))(v3, v2, v4);
      v6 = (*(v5 + 88))(v3, v4);
      v7 = 0;
      v8 = 1;
      if (v6 != enum case for WidgetFamily.systemSmall(_:) && v6 != enum case for WidgetFamily.systemMedium(_:))
      {
        if (v6 == enum case for WidgetFamily.systemLarge(_:))
        {
          v7 = 1;
          v8 = 4;
        }

        else
        {
          v8 = 0;
          v7 = 0;
          if (v6 != enum case for WidgetFamily.accessoryCircular(_:) && v6 != enum case for WidgetFamily.accessoryRectangular(_:) && v6 != enum case for WidgetFamily.accessoryInline(_:))
          {
            return sub_1000DC0D0();
          }
        }
      }

      *(v0 + 320) = v8;
      *(v0 + 352) = v7;
      (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
      sub_100006C7C((v0 + 16), *(v0 + 40));
      v9 = swift_task_alloc();
      *(v0 + 328) = v9;
      *v9 = v0;
      v9[1] = sub_100021314;
      v10 = *(v0 + 232);

      return sub_1000075D8(v10, v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v11 = sub_1000DA350();
    v12 = sub_1000DBDD0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      sub_1000DC4C0();
      v15 = sub_1000848C8(*(v0 + 136), *(v0 + 144), &v19);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Skipping news fetch due to configuration or context. id=%s", v13, 0xCu);
      sub_100006D0C(v14);
    }

    v16 = *(v0 + 208);
    sub_100023694(0);
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);

    v18 = *(v0 + 8);

    return v18();
  }

  return result;
}

uint64_t sub_100021314(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 336) = a1;
  *(v4 + 344) = v1;

  v5 = *(v3 + 312);
  v6 = *(v3 + 304);
  if (v1)
  {
    v7 = sub_1000218D0;
  }

  else
  {
    v7 = sub_100021458;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100021458()
{
  v22 = v1;
  v4 = *(v1 + 352);

  v5 = *(v1 + 336);
  if (v4 == 1)
  {
    v6 = v5[2];
    if (v6 >= *(v1 + 320))
    {
      v20 = *(v1 + 336);
      v7 = 0;
      v5 = *(v1 + 248);
      v8 = *(v1 + 256);
      while (1)
      {
        if (v6 == v7)
        {
          v5 = *(v1 + 336);
          goto LABEL_16;
        }

        if (v7 >= v20[2])
        {
          break;
        }

        v2 = *(v1 + 256);
        v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v10 = v5[9];
        sub_10002337C(*(v1 + 336) + v9 + v10 * v7++, v2, type metadata accessor for HeadlineViewModel);
        v3 = *(v8 + 104);
        v0 = *(v8 + 112);
        sub_100024A30(v3);
        sub_100024BE4(v2, type metadata accessor for HeadlineViewModel);
        if (v3 != 1)
        {
          sub_100010190(v3);
          v11 = sub_1000DA350();
          v12 = sub_1000DBDD0();
          if (!os_log_type_enabled(v11, v12))
          {

            v5 = v20;
            goto LABEL_12;
          }

          v2 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          v21 = v7;
          *v2 = 136315138;
          v5 = v20;
          if (qword_1001140B8 != -1)
          {
            goto LABEL_27;
          }

          while (2)
          {
            sub_1000DC4C0();
            v13 = sub_1000848C8(*(v1 + 184), *(v1 + 192), &v21);

            *(v2 + 4) = v13;
            _os_log_impl(&_mh_execute_header, v11, v12, "Dropping headline because some have thumbnails. id=%s", v2, 0xCu);
            sub_100006D0C(v7);

LABEL_12:
            if (v5[2])
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v5 = *(v1 + 336);
              if (isUniquelyReferenced_nonNull_native)
              {
                v15 = v5[2];
                if (v15)
                {
                  goto LABEL_15;
                }

LABEL_26:
                __break(1u);
LABEL_27:
                swift_once();
                continue;
              }
            }

            else
            {
              __break(1u);
            }

            break;
          }

          v5 = sub_1000242FC(v5);
          v15 = v5[2];
          if (v15)
          {
LABEL_15:
            v16 = v15 - 1;
            sub_100024BE4(v5 + v9 + (v15 - 1) * v10, type metadata accessor for HeadlineViewModel);
            v5[2] = v16;
            goto LABEL_16;
          }

          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_23:
      swift_once();
      goto LABEL_18;
    }
  }

LABEL_16:

  v0 = sub_1000DA350();
  LOBYTE(v3) = sub_1000DBDD0();
  if (!os_log_type_enabled(v0, v3))
  {
    goto LABEL_19;
  }

  v2 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v21 = v7;
  *v2 = 134218242;
  *(v2 + 4) = v5[2];
  *(v2 + 12) = 2080;
  if (qword_1001140B8 != -1)
  {
    goto LABEL_23;
  }

LABEL_18:
  sub_1000DC4C0();
  v17 = sub_1000848C8(*(v1 + 152), *(v1 + 160), &v21);

  *(v2 + 14) = v17;
  _os_log_impl(&_mh_execute_header, v0, v3, "Attempting to create NonEmpty headlines with %ld headlines. id=%s", v2, 0x16u);
  sub_100006D0C(v7);

LABEL_19:

  *(v1 + 200) = v5;
  sub_1000236D0(0);
  sub_100025364(&qword_1001152D0, sub_1000236D0, &protocol conformance descriptor for [A]);
  sub_1000DA240();
  sub_100006D0C((v1 + 16));

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_1000218D0()
{
  v16 = v0;

  swift_errorRetain();
  v1 = sub_1000DA350();
  v2 = sub_1000DBDD0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v3 = 138412546;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v6;
    *v4 = v6;
    *(v3 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v7 = sub_1000848C8(v0[21], v0[22], &v15);

    *(v3 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching headlines failed with error=%@, id=%s", v3, 0x16u);
    sub_100024BE4(v4, sub_1000249FC);

    sub_100006D0C(v5);
  }

  v8 = sub_1000DA350();
  v9 = sub_1000DBDD0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 134218242;
    *(v10 + 4) = _swiftEmptyArrayStorage[2];
    *(v10 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v12 = sub_1000848C8(v0[19], v0[20], &v15);

    *(v10 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to create NonEmpty headlines with %ld headlines. id=%s", v10, 0x16u);
    sub_100006D0C(v11);
  }

  v0[25] = _swiftEmptyArrayStorage;
  sub_1000236D0(0);
  sub_100025364(&qword_1001152D0, sub_1000236D0, &protocol conformance descriptor for [A]);
  sub_1000DA240();
  sub_100006D0C(v0 + 2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100021C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for DetailTimelineEntry(0);
  v11 = swift_task_alloc();
  v8[4] = v11;
  v12 = swift_task_alloc();
  v8[5] = v12;
  *v12 = v8;
  v12[1] = sub_100021D68;

  return sub_1000186A4(v11, a7, a8);
}

uint64_t sub_100021D68()
{

  return _swift_task_switch(sub_100021E64, 0, 0);
}

uint64_t sub_100021E64()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))(v1);
  sub_100024BE4(v1, type metadata accessor for DetailTimelineEntry);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100021EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10002317C(0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002337C(a3, v11, sub_10002317C);
  v12 = sub_1000DBC40();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100024BE4(v11, sub_10002317C);
  }

  else
  {
    sub_1000DBC30();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000DBBE0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000DB9E0() + 32;
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

      sub_100024BE4(a3, sub_10002317C);

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

  sub_100024BE4(a3, sub_10002317C);
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

uint64_t sub_1000221FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v43 = a6;
  v44 = a7;
  v38 = a4;
  v39 = a2;
  v42 = a3;
  v36 = sub_1000DB7D0();
  v10 = *(v36 - 8);
  __chkstk_darwin(v36);
  v40 = v11;
  v46 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000D9970();
  v12 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = v13;
  v45 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DetailTimelineProvider(0);
  v34 = *(v14 - 8);
  v15 = *(v34 + 64);
  __chkstk_darwin(v14 - 8);
  v35 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002317C(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000DA350();
  v20 = sub_1000DBDD0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, a5, v21, 2u);
  }

  v22 = sub_1000DBC40();
  v23 = *(*(v22 - 8) + 56);
  v33 = v18;
  v23(v18, 1, 1, v22);
  v24 = v35;
  sub_10002337C(v7, v35, type metadata accessor for DetailTimelineProvider);
  v25 = v41;
  (*(v12 + 16))(v45, a1, v41);
  v26 = v36;
  (*(v10 + 16))(v46, v39, v36);
  v27 = (*(v34 + 80) + 48) & ~*(v34 + 80);
  v28 = (v15 + *(v12 + 80) + v27) & ~*(v12 + 80);
  v29 = (v37 + *(v10 + 80) + v28) & ~*(v10 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  v31 = v38;
  *(v30 + 4) = v42;
  *(v30 + 5) = v31;
  sub_100024B14(v24, &v30[v27], type metadata accessor for DetailTimelineProvider);
  (*(v12 + 32))(&v30[v28], v45, v25);
  (*(v10 + 32))(&v30[v29], v46, v26);

  sub_100021EF4(0, 0, v33, v44, v30);
}

uint64_t sub_100022614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  sub_1000235CC(0);
  v8[4] = v11;
  v8[5] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[6] = v12;
  v13 = swift_task_alloc();
  v8[7] = v13;
  *v13 = v8;
  v13[1] = sub_10002272C;

  return sub_10001DEE8(v12, a7, a8);
}

uint64_t sub_10002272C()
{

  return _swift_task_switch(sub_100022828, 0, 0);
}

uint64_t sub_100022828()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000228C0@<X0>(uint64_t a1@<X8>)
{
  sub_100024BB0(0);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9950();
  v5 = sub_1000D9870();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  sub_100024BE4(v4, sub_100024BB0);
  v7 = sub_1000DA350();
  v8 = sub_1000DBDD0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v11 = sub_1000848C8(v13[1], v13[2], &v14);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Missing newsDisplayConfiguration on intent, id=%s", v9, 0xCu);
    sub_100006D0C(v10);
  }

  return (*(v6 + 104))(a1, enum case for NewsDisplayConfiguration.afterHours(_:), v5);
}

uint64_t sub_100022B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000D9480();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023704(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000D9870();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DetailTimelineProvider.Configuration(0);
  (*(v13 + 16))(v15, a1 + *(v16 + 20), v12);
  v17 = (*(v13 + 88))(v15, v12);
  if (v17 == enum case for NewsDisplayConfiguration.afterHours(_:))
  {
    v18 = type metadata accessor for WidgetStock(0);
    sub_10002337C(a3 + *(v18 + 20), v11, sub_100023704);
    v19 = sub_1000D9450();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v11, 1, v19) != 1)
    {
      sub_1000D93F0();
      (*(v20 + 8))(v11, v19);
      v21 = sub_1000D9460();
      (*(v6 + 8))(v8, v5);
      return v21 & 1;
    }

    sub_100024BE4(v11, sub_100023704);
    goto LABEL_5;
  }

  if (v17 == enum case for NewsDisplayConfiguration.always(_:))
  {
LABEL_5:
    v21 = 1;
    return v21 & 1;
  }

  if (v17 != enum case for NewsDisplayConfiguration.never(_:))
  {
    (*(v13 + 8))(v15, v12);
  }

  v21 = 0;
  return v21 & 1;
}

uint64_t sub_100022E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001079C;

  return sub_1000186A4(a1, a2, a3);
}

uint64_t sub_100022EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001079C;

  return sub_10001DEE8(a1, a2, a3);
}

uint64_t sub_100023014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000ECF4;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_1000230C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001079C;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_1000231B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DetailTimelineProvider(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000D9970() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1000DB7D0() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1[5];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10000ECF4;

  return sub_100022614(a1, v13, v14, v15, v16, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_10002337C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000233E4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000253B4;

  return v6(a1);
}

uint64_t sub_1000234DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001079C;

  return sub_1000233E4(a1, v4);
}

uint64_t sub_100023594()
{

  return swift_deallocObject();
}

void sub_1000235CC(uint64_t a1)
{
  if (!qword_1001152B0)
  {
    type metadata accessor for DetailTimelineEntry(255);
    sub_100025364(&qword_100115298, type metadata accessor for DetailTimelineEntry, &unk_1000E0AE4);
    v1 = sub_1000DB820();
    if (!v2)
    {
      atomic_store(v1, &qword_1001152B0);
    }
  }
}

uint64_t sub_100023738(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000237B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001079C;

  return sub_100019030(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100023880(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001079C;

  return sub_10001930C(a1, v4, v5, v6);
}

void sub_100023954(uint64_t a1)
{
  if (!qword_100115318)
  {
    type metadata accessor for WidgetStock(255);
    sub_100023660(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100115318);
    }
  }
}

uint64_t sub_1000239C4()
{
  sub_100006D0C((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000239FC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001079C;

  return sub_10001EEFC(a1, v1 + 16);
}

uint64_t sub_100023A98()
{
  v1 = (type metadata accessor for DetailTimelineProvider.Configuration(0) - 8);
  v2 = (*(*v1 + 80) + 96) & ~*(*v1 + 80);
  sub_100006D0C((v0 + 16));
  sub_100006D0C((v0 + 56));

  v3 = v1[7];
  v4 = sub_1000D9870();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_100023B90(uint64_t a1)
{
  v4 = *(type metadata accessor for DetailTimelineProvider.Configuration(0) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000ECF4;

  return sub_10001F388(a1, v1 + 16, v1 + 56, v1 + v5);
}

uint64_t sub_100023C74()
{
  v1 = (type metadata accessor for DetailTimelineProvider.Configuration(0) - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(type metadata accessor for DetailTimelineProvider(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = sub_1000DB7D0();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  sub_100006D0C((v0 + 16));

  v10 = v1[7];
  v11 = sub_1000D9870();
  (*(*(v11 - 8) + 8))(v0 + v2 + v10, v11);
  v12 = sub_1000DA370();
  (*(*(v12 - 8) + 8))(v0 + v5, v12);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_100023E84(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DetailTimelineProvider.Configuration(0) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for DetailTimelineProvider(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1000DB7D0() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10001079C;

  return sub_1000202F0(a1, v1 + 16, v1 + v6, v1 + v9, v1 + v12);
}

void sub_10002404C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_100024A74(0, &qword_100115340, &type metadata for QuoteDetailItem);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 48);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_100024138(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_10002510C(0, &qword_100115378, type metadata accessor for WidgetStock, &type metadata accessor for _ContiguousArrayStorage);
      v7 = *(type metadata accessor for WidgetStock(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for WidgetStock(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_100024310()
{
  sub_100024A40(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = *(*v0 + 16);
  if (v5)
  {
    v6 = v0[1];
    v7 = v0[3];
    v8 = 0;
    v9 = *(sub_1000D9C30() - 8);
    v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      v6(v10);
      v12 = v7(v3);
      sub_100024BE4(v3, sub_100024A40);
      if (v12)
      {
        break;
      }

      ++v8;
      v10 += v11;
      if (v5 == v8)
      {
        return v5;
      }
    }

    return v8;
  }

  return v5;
}

void sub_100024468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  sub_100024A40(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    if (!a2)
    {
      return;
    }

    goto LABEL_6;
  }

  v9 = -a2;
  if (__OFSUB__(0, a2))
  {
LABEL_25:
    __break(1u);
    return;
  }

  if (v9 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_6:
  if (a1 == v20)
  {
    return;
  }

  v10 = *v3;
  v22 = v3[1];
  v11 = v3[3];
  v12 = (a2 > 0) | (a2 >> 63);
  v13 = v10;
  v14 = *(v10 + 16);
  v15 = 1;
  v19 = v9;
  while (2)
  {
    v21 = v15;
    while (1)
    {
      v16 = a1 + v12;
      if (__OFADD__(a1, v12))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (v16 == v14)
      {
        break;
      }

      if (v16 >= v14)
      {
        goto LABEL_21;
      }

      v17 = *(sub_1000D9C30() - 8);
      v22(v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v16);
      v18 = v11(v8);
      sub_100024BE4(v8, sub_100024A40);
      a1 += v12;
      if (v18)
      {
        a1 = v16;
        goto LABEL_15;
      }
    }

    a1 = v14;
LABEL_15:
    if (v21 == v19)
    {
      return;
    }

    if (v21 >= v19)
    {
      goto LABEL_22;
    }

    v15 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (a1 != v20)
    {
      continue;
    }

    break;
  }
}

void *sub_100024678(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v9 = sub_1000D9B40();
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WidgetStock(0);
  v27 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v34 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a5 >> 1;
  v32 = a4;
  v14 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = _swiftEmptyArrayStorage;
  if (!v14)
  {
    return v15;
  }

  v35 = _swiftEmptyArrayStorage;
  sub_10007BC0C(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v15 = v35;
    v25 = v33 + 16;
    v26 = (v33 + 8);
    v24 = v11;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if ((v32 + v16) >= v31 || v16 >= v14)
      {
        goto LABEL_14;
      }

      (*(v33 + 16))(v11, v30 + *(v33 + 72) * (v32 + v16), v9);
      v28(v11);
      if (v6)
      {
        goto LABEL_17;
      }

      v6 = 0;
      v18 = v11;
      v19 = v9;
      (*v26)(v18, v9);
      v35 = v15;
      v21 = v15[2];
      v20 = v15[3];
      if (v21 >= v20 >> 1)
      {
        sub_10007BC0C((v20 > 1), v21 + 1, 1);
        v15 = v35;
      }

      v15[2] = v21 + 1;
      sub_100024B14(v34, v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21, type metadata accessor for WidgetStock);
      ++v16;
      v9 = v19;
      v11 = v24;
      if (v17 == v14)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  (*v26)(v11, v9);

  __break(1u);
  return result;
}

uint64_t sub_100024964(uint64_t a1, uint64_t a2)
{
  sub_10002510C(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100024A30(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_100024A74(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1000DC330();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100024AC0()
{
  result = qword_100115358;
  if (!qword_100115358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115358);
  }

  return result;
}

uint64_t sub_100024B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100024BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100024C44()
{
  v1 = *(type metadata accessor for DetailTimelineProvider(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1000D9970();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_1000DB7D0();
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  swift_unknownObjectRelease();

  v11 = sub_1000DA370();
  (*(*(v11 - 8) + 8))(v0 + v2, v11);
  (*(v5 + 8))(v0 + v6, v4);
  (*(v9 + 8))(v0 + v10, v8);

  return swift_deallocObject();
}

uint64_t sub_100024E40(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DetailTimelineProvider(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000D9970() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1000DB7D0() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1[5];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10001079C;

  return sub_100021C80(a1, v13, v14, v15, v16, v1 + v6, v1 + v9, v1 + v12);
}

void sub_100025044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100025364(a4, a5, &protocol conformance descriptor for [A]);
    v8 = sub_1000DA220();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10002510C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100025184(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000D9870();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100025244(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000D9870();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000252E8(uint64_t a1)
{
  result = sub_1000D9870();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100025364(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1000253B8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000253C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000253E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100025420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100025468(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000254B0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_100025508()
{
  result = qword_1001154B0;
  if (!qword_1001154B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001154B0);
  }

  return result;
}

uint64_t sub_10002555C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a5;
  v25 = a6;
  v10 = sub_1000DA830();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_1000284C8(qword_100115428, &protocol conformance descriptor for LayoutSubviews);
  result = sub_1000DBD30();
  v14 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1000DBB90();
  if (!result)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (v14 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_10;
  }

  v15 = v14 / result;
  if (v14 / result <= a2)
  {
    v15 = a2;
  }

  v23 = v15;
  v28 = a3;
  sub_1000DBBB0();
  swift_getWitnessTable();
  sub_1000DBA70();

  v28 = v29;
  sub_1000DC0F0();
  swift_getWitnessTable();
  sub_1000DBA80();

  v22 = v27;
  v26 = v27;
  (*(v11 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  v18 = v10;
  v19 = a4;
  v20 = v24;
  *(v17 + 24) = v24;
  (*(v11 + 32))(v17 + v16, &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  *(v17 + ((v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = sub_1000288C8;
  v21[5] = v17;
  sub_1000DBF70();
  swift_getWitnessTable();
  sub_1000DC150();
}

uint64_t sub_100025880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000DA830();
  __chkstk_darwin(v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  result = (*(v12 + 16))(v9, a3, v7, v11);
  if ((a1 * a4) >> 64 == (a1 * a4) >> 63)
  {
    sub_1000284C8(qword_100115428, &protocol conformance descriptor for LayoutSubviews);
    sub_1000DBD50();
    return sub_100018248(a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000259D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a3;

  sub_10002555C(a1, a2, a3, a4, a5, &v32);
  v10 = sub_1000DBBB0();
  WitnessTable = swift_getWitnessTable();
  sub_1000DC0F0();
  sub_1000DA830();
  swift_getWitnessTable();
  v12 = sub_1000DC0B0();
  v13 = swift_getWitnessTable();
  sub_1000DC390();

  v33 = v37;
  v32 = v36;
  v34 = v38;
  v26 = a4;
  v27 = a5;
  v21 = a4;
  v22 = a5;
  v23 = sub_100028AEC;
  v24 = &v25;
  v28 = v10;
  v29 = v12;
  v30 = WitnessTable;
  v31 = v13;
  v14 = sub_1000DBFB0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getWitnessTable();
  v18 = sub_100025C58(sub_100028B20, v20, v14, AssociatedTypeWitness, &type metadata for Never, v16, &protocol witness table for Never, v17);

  return v18;
}

uint64_t sub_100025C58(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  __chkstk_darwin(v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v57 = &v42 - v18;
  v19 = sub_1000DBE80();
  v47 = *(v19 - 8);
  v48 = v19;
  __chkstk_darwin(v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v42 - v22;
  __chkstk_darwin(v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v55 = *(a3 - 1);
  __chkstk_darwin(v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  __chkstk_darwin(v62);
  v31 = &v42 - v30;
  v32 = sub_1000DBA60();
  v63 = sub_1000DC090();
  v58 = sub_1000DC0A0();
  sub_1000DC040(v32);
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1000DBA40();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1000DBE90();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      sub_1000DC080();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1000DBE90();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_1000DC080();
      sub_1000DBE90();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_10002634C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  result = sub_1000259D8(a2, a3, a4, a5, a6);
  *a1 = result;
  return result;
}

uint64_t sub_1000263C4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  result = sub_1000DBB90();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v48 = a3;
    v49 = a4;
    v50 = a6;
    v21 = *&a1;
    v52 = a2;
    if ((a2 & 1) == 0)
    {
      v21 = (*&a1 - (result - 1) * a9) / sub_1000DBB90();
    }

    v47 = v21;
    v51 = a1;
    sub_10002555C(a5, a7, a8, a10, a11, &v57);
    v62 = a8;
    sub_1000DBBB0();
    swift_getWitnessTable();
    sub_1000DBCB0();
    v60 = v61;
    swift_getWitnessTable();
    sub_1000DC0F0();
    sub_1000DA830();
    swift_getWitnessTable();
    v22 = sub_1000DC0B0();
    sub_100028708();
    v24 = v23;
    WitnessTable = swift_getWitnessTable();
    v26 = sub_100028760();
    sub_1000DC390();

    v46 = v63;
    v57 = v63;
    v58 = v64;
    v59 = v65;
    __chkstk_darwin(v27);
    v41[6] = a10;
    v41[7] = a11;
    *&v41[8] = a9;
    v41[9] = v28;
    v41[10] = a8;
    *&v41[11] = v47;
    v42 = v52 & 1;
    v43 = v48;
    v44 = v49 & 1;
    v45 = v50;
    __chkstk_darwin(v29);
    v41[2] = sub_100028A3C;
    v41[3] = v30;
    v53 = v22;
    v54 = v24;
    v55 = WitnessTable;
    v56 = v26;
    v31 = sub_1000DBFB0();
    v32 = swift_getWitnessTable();
    v34 = sub_100025C58(sub_100028A8C, v41, v31, &type metadata for Double, &type metadata for Never, v32, &protocol witness table for Never, v33);

    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = *(v34 + 32);
      v37 = v35 - 1;
      if (v37)
      {
        v38 = (v34 + 40);
        do
        {
          v39 = *v38++;
          v40 = v39;
          if (v36 < v39)
          {
            v36 = v40;
          }

          --v37;
        }

        while (v37);
      }
    }
  }

  return result;
}

double sub_100026810(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v21[0] = a1;
  v21[1] = a7;
  v14 = *(a10 - 8);
  __chkstk_darwin(a1);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000DBBC0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1000DBBB0();
  sub_1000DBB60();
  sub_100027EE0(a2, *a9, AssociatedTypeWitness);
  _swift_isClassOrObjCExistentialType();
  v23 = a6 & 1;
  v22 = a8 & 1;
  sub_1000DB4B0();
  v19 = v18;
  (*(v14 + 8))(v16, a10);
  return v19;
}

uint64_t sub_1000269F4(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15)
{
  *&v65 = a7;
  v60 = a3;
  v61 = a6;
  v50 = a4;
  v21 = *(a14 - 8);
  __chkstk_darwin(a1);
  v59 = &v49[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_1000DA830();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v58 = &v49[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10002864C(0, &qword_1001154F0, sub_1000286A0);
  __chkstk_darwin(v26 - 8);
  v28 = &v49[-v27];
  result = sub_1000DBB90();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v30 = *&a1;
    if (a2)
    {
      v30 = 10.0;
    }

    v31 = (v30 - (result - 1) * a13) / result;
    v54 = v31;
    v55 = a15;
    sub_10002555C(a5, v65, a8, a14, a15, &v75);
    v52 = v21;
    v65 = v75;
    v69 = v75;
    v70 = v76;
    v56 = a14;
    v57 = a8;
    v74 = a8;
    sub_1000DBBB0();
    swift_getWitnessTable();
    sub_1000DBCB0();
    v72 = v73;
    swift_getWitnessTable();
    sub_1000DC0F0();
    swift_getWitnessTable();
    v32 = sub_1000DC0B0();
    sub_100028708();
    v34 = v33;
    WitnessTable = swift_getWitnessTable();
    v36 = sub_100028760();
    sub_1000DC390();

    v69 = v66;
    v70 = *&v67[0];
    v71 = *(v67 + 8);
    v64 = v34;
    *&v65 = v32;
    *&v75 = v32;
    *(&v75 + 1) = v34;
    v62 = v36;
    v63 = WitnessTable;
    *&v76 = WitnessTable;
    *(&v76 + 1) = v36;
    sub_1000DBFB0();
    sub_1000DBF80();
    ++v52;
    v53 = (v24 + 32);
    v51 = (v24 + 8);
    v37 = v31 + a13;
    v50 &= 1u;
    v38 = v56;
    while (1)
    {
      *&v66 = v65;
      *(&v66 + 1) = v64;
      *&v67[0] = v63;
      *(&v67[0] + 1) = v62;
      v39 = sub_1000DBFA0();
      sub_1000DBF90();
      sub_1000286A0(0);
      v41 = v40;
      if ((*(*(v40 - 8) + 48))(v28, 1, v40) == 1)
      {
        break;
      }

      v42 = *&v28[*(v41 + 48)];
      v43 = v58;
      (*v53)(v58, v28, v23);
      v44 = v23;
      v45 = v59;
      sub_1000DBBC0();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      sub_1000DBBB0();
      v47 = v61;
      sub_1000DBB60();
      sub_100027EE0(v42, *v47, AssociatedTypeWitness);
      _swift_isClassOrObjCExistentialType();
      LOBYTE(v66) = 0;
      LOBYTE(v69) = v50;
      sub_1000DB4C0();
      v48 = v45;
      v23 = v44;
      (*v52)(v48, v38);
      (*v51)(v43, v44);
      a9 = v37 + a9;
    }

    v67[1] = v77;
    v67[2] = v78;
    v68 = v79;
    v66 = v75;
    v67[0] = v76;
    return (*(*(v39 - 8) + 8))(&v66, v39);
  }

  return result;
}

uint64_t sub_10002701C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1000259D8(a1, *(v3 + 8), *(v3 + 16), *(a2 + 16), *(a2 + 24));
  *a3 = result;
  return result;
}

uint64_t (*sub_1000271B0(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000DA670();
  return sub_100028C28;
}

uint64_t sub_10002723C(void (**a1)(char *), int a2, uint64_t a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, uint64_t a12, void (**a13)(char *, uint64_t, uint64_t, uint64_t), uint64_t (**a14)(char *, char *, uint64_t))
{
  v80 = a14;
  v76 = a13;
  LODWORD(v71) = a4;
  v77 = *&a3;
  LODWORD(v70) = a2;
  v72 = a1;
  sub_100027DF0(0);
  v66 = v21;
  v75 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1000DA7F0();
  v74 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v73 = &v64 - v26;
  sub_10002864C(0, &qword_1001154C8, sub_100027DF0);
  __chkstk_darwin(v27 - 8);
  v79 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v78 = &v64 - v30;
  v64 = &protocol conformance descriptor for LayoutSubviews;
  sub_100027E5C(0, &qword_1001154D0, &qword_1001154D8, &protocol conformance descriptor for LayoutSubviews, &type metadata accessor for EnumeratedSequence);
  __chkstk_darwin(v31 - 8);
  v33 = &v64 - v32;
  sub_100027E5C(0, &qword_1001154E0, &qword_1001154D8, &protocol conformance descriptor for LayoutSubviews, &type metadata accessor for EnumeratedSequence.Iterator);
  v65 = v34 - 8;
  __chkstk_darwin(v34 - 8);
  v36 = &v64 - v35;
  v37 = sub_1000DA830();
  v38 = *(v37 - 8);
  v39 = __chkstk_darwin(v37);
  v41 = &v64 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v38 + 16);
  v42(v41, a5, v37, v39);
  v43 = LOBYTE(v70) & 1;
  LOBYTE(v85) = LOBYTE(v70) & 1;
  LOBYTE(v84[0]) = v71 & 1;
  v70 = a10;
  sub_10002801C(v76, v80, *&v72, v43, v77, v71 & 1, v41, &v85, a10, a11);
  v67 = a6;
  v88.origin.x = a6;
  v68 = a7;
  v88.origin.y = a7;
  v69 = a8;
  v88.size.width = a8;
  v44 = a9;
  v88.size.height = a9;
  v89 = CGRectStandardize(v88);
  x = v89.origin.x;
  y = v89.origin.y;
  (v42)(v33, a5, v37);
  v47 = v66;
  (*(v38 + 32))(v41, v33, v37);
  sub_1000284C8(&qword_1001154D8, v64);
  sub_1000DBA40();
  v71 = *(v65 + 44);
  *&v36[v71] = 0;
  sub_100027E5C(0, &qword_1001154E8, qword_100115428, &protocol conformance descriptor for LayoutSubviews, &type metadata accessor for IndexingIterator);
  v49 = *(v48 + 36);
  sub_1000284C8(qword_100115428, &protocol conformance descriptor for LayoutSubviews);
  v77 = 0.0;
  v72 = (v74 + 2);
  v80 = (v74 + 4);
  v76 = (v75 + 7);
  v75 += 6;
  ++v74;
  while (1)
  {
    sub_1000DBD10();
    if (*&v36[v49] == v84[0])
    {
      v50 = 1;
      v51 = v79;
    }

    else
    {
      v52 = sub_1000DBD70();
      v53 = v73;
      v54 = v82;
      (*v72)(v73);
      v52(v84, 0);
      sub_1000DBD20();
      v55 = *(v47 + 48);
      v56 = v77;
      *v23 = v77;
      result = (*v80)(&v23[v55], v53, v54);
      if (__OFADD__(*&v56, 1))
      {
        goto LABEL_16;
      }

      *&v77 = *&v56 + 1;
      *&v36[v71] = *&v56 + 1;
      v51 = v79;
      sub_10002850C(v23, v79);
      v50 = 0;
    }

    (*v76)(v51, v50, 1, v47);
    v58 = v51;
    v59 = v78;
    sub_100028570(v58, v78);
    if ((*v75)(v59, 1, v47) == 1)
    {
      return sub_1000285F0(v36, &qword_1001154E0, &qword_1001154D8, &protocol conformance descriptor for LayoutSubviews, &type metadata accessor for EnumeratedSequence.Iterator);
    }

    v60 = *v59;
    (*v80)(v81, &v59[*(v47 + 48)], v82);
    v61 = v86;
    v62 = v87;
    v91.origin.x = x;
    v91.origin.y = y;
    v91.size.width = v86;
    v91.size.height = v87;
    CGRectGetMidX(v91);
    v92.origin.x = x;
    v92.origin.y = y;
    v92.size.width = v61;
    v92.size.height = v62;
    CGRectGetMidY(v92);
    sub_1000DB6A0();
    LOBYTE(v84[0]) = 0;
    v83 = 0;
    result = sub_1000DA7D0();
    v63 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v85)
    {
      if (v85 == -1)
      {
        goto LABEL_2;
      }

      v63 %= v85;
    }

    if (v63)
    {
      (*v74)(v81, v82);
      y = y + v62 + a11;
    }

    else
    {
LABEL_2:
      v90.origin.x = v67;
      v90.origin.y = v68;
      v90.size.width = v69;
      v90.size.height = v44;
      y = CGRectGetMinY(v90);
      (*v74)(v81, v82);
      x = x + v61 + v70;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

double sub_100027B3C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = sub_1000DA830();
  v12 = __chkstk_darwin(v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *v5;
  v16 = *(v5 + 1);
  v17 = v5[2];
  v18 = *(v5 + 3);
  (*(v19 + 16))(v14, a5, v12);
  LOBYTE(v22[0]) = a2 & 1;
  v21[0] = a4 & 1;
  sub_10002801C(v15, v17, *&a1, a2 & 1, *&a3, a4 & 1, v14, v22, v16, v18);
  return v22[3];
}

uint64_t (*sub_100027CA4(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000DA670();
  return sub_100027D2C;
}

void sub_100027D30(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_100027D9C()
{
  result = qword_1001154B8;
  if (!qword_1001154B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001154B8);
  }

  return result;
}

void sub_100027DF0(uint64_t a1)
{
  if (!qword_1001154C0)
  {
    sub_1000DA7F0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001154C0);
    }
  }
}

void sub_100027E5C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v10 = sub_1000DA830();
    v11 = sub_1000284C8(a3, a4);
    v12 = a5(a1, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

uint64_t sub_100027EE0(unint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100027F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000DA830();
  sub_1000284C8(qword_100115428, &protocol conformance descriptor for LayoutSubviews);
  sub_1000DBCC0();
  sub_1000DBD10();
  result = sub_1000DBD00();
  if (!a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result == 0x8000000000000000 && a2 == -1)
  {
    goto LABEL_11;
  }

  v6 = result % a2 > 0;
  if (__OFADD__(result / a2, v6))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (result / a2 + v6 <= a3)
  {
    return a3;
  }

  else
  {
    return result / a2 + v6;
  }
}

uint64_t sub_10002801C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, int a4@<W3>, double a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, double *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v51 = a6;
  v54 = a5;
  v55 = a2;
  v56 = a4;
  v52 = a8;
  v15 = sub_1000DA7F0();
  v47 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000DA830();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100027E5C(0, &qword_1001154E8, qword_100115428, &protocol conformance descriptor for LayoutSubviews, &type metadata accessor for IndexingIterator);
  v23 = v22;
  __chkstk_darwin(v22);
  v25 = &v47 - v24;
  v53 = a7;
  result = sub_100027F34(a7, a1, v55);
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (__OFSUB__(result, 1))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v27 = (a1 - 1) * a9;
  v28 = (result - 1) * a10;
  v29 = a1;
  if (v56)
  {
    v30 = a3;
  }

  else
  {
    v30 = (a3 - v27) / a1;
  }

  v31 = v54;
  v49 = result;
  v32 = result;
  v33 = v51;
  if ((v51 & 1) == 0)
  {
    v31 = (v54 - v28) / result;
  }

  v54 = v31;
  v55 = *&v30;
  v34 = *(v19 + 16);
  v34(v21, v53, v18);
  v34(v25, v21, v18);
  v35 = *(v23 + 36);
  sub_1000284C8(qword_100115428, &protocol conformance descriptor for LayoutSubviews);
  sub_1000DBCC0();
  v36 = *(v19 + 8);
  v50 = v19 + 8;
  v48 = v36;
  v36(v21, v18);
  sub_1000DBD10();
  v37 = 0.0;
  v38 = 0.0;
  if (*&v25[v35] != v58[0])
  {
    v39 = (v47 + 16);
    v40 = (v47 + 8);
    do
    {
      v41 = sub_1000DBD70();
      (*v39)(v17);
      v41(v58, 0);
      sub_1000DBD20();
      LOBYTE(v58[0]) = v56 & 1;
      v57 = v33 & 1;
      sub_1000DA7C0();
      v43 = v42;
      v45 = v44;
      (*v40)(v17, v15);
      if (v38 <= v43)
      {
        v38 = v43;
      }

      if (v37 <= v45)
      {
        v37 = v45;
      }

      sub_1000DBD10();
    }

    while (*&v25[v35] != v58[0]);
  }

  v48(v53, v18);
  result = sub_1000285F0(v25, &qword_1001154E8, qword_100115428, &protocol conformance descriptor for LayoutSubviews, &type metadata accessor for IndexingIterator);
  v46 = v52;
  *v52 = v49;
  v46[1] = v38;
  v46[2] = v37;
  v46[3] = v27 + v38 * v29;
  v46[4] = v28 + v37 * v32;
  return result;
}

uint64_t sub_1000284C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000DA830();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002850C(uint64_t a1, uint64_t a2)
{
  sub_100027DF0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028570(uint64_t a1, uint64_t a2)
{
  sub_10002864C(0, &qword_1001154C8, sub_100027DF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000285F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_100027E5C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_10002864C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DBE80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000286A0(uint64_t a1)
{
  if (!qword_1001154F8)
  {
    sub_1000DA830();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001154F8);
    }
  }
}

void sub_100028708()
{
  if (!qword_100115500)
  {
    v0 = sub_1000DBD80();
    if (!v1)
    {
      atomic_store(v0, &qword_100115500);
    }
  }
}

unint64_t sub_100028760()
{
  result = qword_100115508;
  if (!qword_100115508)
  {
    sub_100028708();
    sub_1000287E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115508);
  }

  return result;
}

unint64_t sub_1000287E0()
{
  result = qword_100115510[0];
  if (!qword_100115510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100115510);
  }

  return result;
}

uint64_t sub_100028834()
{
  v1 = sub_1000DA830();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000288C8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000DA830() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100025880(a1, a2, v2 + v6, v7);
}

uint64_t sub_100028990()
{

  return swift_deallocObject();
}

uint64_t sub_1000289C8(char *a1)
{
  v3 = *(v1 + 32);
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

void sub_100028A8C(uint64_t a1@<X0>, double *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_1000286A0(0);
  *a2 = v5(a1, *(a1 + *(v6 + 48)));
}

uint64_t sub_100028B20(uint64_t a1)
{
  v3 = *(v1 + 32);
  sub_1000DA830();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_100028BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_100028C50()
{
  result = sub_100028D64(3);
  qword_100128DB0 = result;
  return result;
}

id sub_100028C84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(NSNumberFormatter) init];
  [v5 setNumberStyle:1];
  [v5 setMinimumFractionDigits:a2];
  [v5 setMaximumFractionDigits:a2];
  result = [v5 setMinimumIntegerDigits:1];
  *a3 = v5;
  return result;
}

id sub_100028D1C()
{
  result = sub_100028D64(2);
  qword_100128DC0 = result;
  return result;
}

id sub_100028D40()
{
  result = sub_100028D64(0);
  qword_100128DC8 = result;
  return result;
}

id sub_100028D64(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSNumberFormatter) init];
  [v2 setNumberStyle:1];
  [v2 setMinimumFractionDigits:a1];
  [v2 setMaximumFractionDigits:a1];
  [v2 setMinimumIntegerDigits:1];
  v3 = sub_1000DB910();
  [v2 setPositivePrefix:v3];

  v4 = sub_1000DB910();
  [v2 setNegativePrefix:v4];

  return v2;
}

uint64_t sub_100028E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v90 = a2;
  v6 = a5;
  v7 = a4;
  v85 = a1;
  sub_100029D48(0, &qword_100115648, &type metadata accessor for Locale.Region, &type metadata accessor for Optional);
  __chkstk_darwin(v10 - 8);
  v86 = &v76 - v11;
  v88 = sub_1000D91A0();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v76 - v15;
  v17 = sub_1000D91C0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v84 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v76 - v21;
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  sub_100029D48(0, &qword_100115650, &type metadata accessor for Locale.LanguageCode, &type metadata accessor for Optional);
  __chkstk_darwin(v26 - 8);
  v28 = &v76 - v27;
  v29 = sub_10002999C(v6, a3, v7, a6);
  v30 = v29;
  if ((v6 & 2) == 0 || !v90)
  {
    v38 = v29;
    goto LABEL_9;
  }

  v31 = *(v18 + 16);
  v80 = OBJC_IVAR____TtC12StocksWidget14PriceFormatter_locale;
  v81 = v31;
  v31(v25, v89 + OBJC_IVAR____TtC12StocksWidget14PriceFormatter_locale, v17);
  v79 = v30;
  sub_1000D91B0();
  v33 = *(v18 + 8);
  v32 = v18 + 8;
  v82 = v17;
  v83 = v33;
  v33(v25, v17);
  sub_1000D9180();
  v87 = *(v87 + 8);
  (v87)(v16, v88);
  v34 = sub_1000D9120();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v28, 1, v34) != 1)
  {
    v77 = sub_1000D9100();
    v78 = v39;
    (*(v35 + 8))(v28, v34);
    v40 = v82;
    v81(v22, v89 + v80, v82);
    sub_1000D91B0();
    v83(v22, v40);
    v28 = v86;
    sub_1000D9190();
    (v87)(v13, v88);
    v41 = sub_1000D9160();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v28, 1, v41) == 1)
    {

      v36 = &qword_100115648;
      v37 = &type metadata accessor for Locale.Region;
      goto LABEL_8;
    }

    v89 = v32;
    v47 = sub_1000D9150();
    v48 = v28;
    v49 = v47;
    v51 = v50;
    (*(v42 + 8))(v48, v41);
    sub_100029D48(0, &qword_100115658, sub_100029CEC, &type metadata accessor for _ContiguousArrayStorage);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000DE440;
    *(inited + 32) = sub_1000DB950();
    v53 = v85;
    *(inited + 40) = v54;
    *(inited + 48) = v53;
    v55 = v90;
    *(inited + 56) = v90;
    *(inited + 64) = sub_1000DB950();
    *(inited + 72) = v56;
    v57 = v78;
    *(inited + 80) = v77;
    *(inited + 88) = v57;
    *(inited + 96) = sub_1000DB950();
    *(inited + 104) = v58;
    *(inited + 112) = v49;
    *(inited + 120) = v51;

    sub_100033B48(inited);
    swift_setDeallocating();
    sub_100029CEC();
    swift_arrayDestroy();
    sub_1000D90E0();

    v59 = v84;
    sub_1000D90F0();
    isa = sub_1000D9130().super.isa;
    v61 = v79;
    [v79 setLocale:isa];

    if (v53 == 7356999 && v55 == 0xE300000000000000 || (sub_1000DC360() & 1) != 0)
    {
      [v61 setNumberStyle:1];
      v62 = [objc_allocWithZone(NSNumber) initWithDouble:a6];
      v63 = [v61 stringFromNumber:v62];

      if (v63)
      {
        v64 = sub_1000DB950();
        v66 = v65;

        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v68 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        v75._countAndFlagsBits = 0x80000001000E8360;
        v91._countAndFlagsBits = 0x402520704247;
        v91._object = 0xE600000000000000;
        v92.value._countAndFlagsBits = 0;
        v92.value._object = 0;
        v69.super.isa = v68;
        v93._countAndFlagsBits = 0;
        v93._object = 0xE000000000000000;
        sub_1000D8E50(v91, v92, v69, v93, 0xD000000000000021, v75);

        sub_100029D48(0, &qword_1001145E0, sub_100029DAC, &type metadata accessor for _ContiguousArrayStorage);
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_1000DDD30;
        *(v70 + 56) = &type metadata for String;
        *(v70 + 64) = sub_100002AAC();
        *(v70 + 32) = v64;
        *(v70 + 40) = v66;
        v45 = sub_1000DB980();

        v71 = v59;
        v72 = v40;
LABEL_21:
        v83(v71, v72);
        return v45;
      }
    }

    else
    {
      [v61 setNumberStyle:2];
      v73 = [objc_allocWithZone(NSNumber) initWithDouble:a6];
      v74 = [v61 stringFromNumber:v73];

      if (v74)
      {
        v45 = sub_1000DB950();

        v71 = v59;
        v72 = v40;
        goto LABEL_21;
      }
    }

    v83(v59, v40);

    return 0;
  }

  v36 = &qword_100115650;
  v37 = &type metadata accessor for Locale.LanguageCode;
LABEL_8:
  sub_100029C7C(v28, v36, v37);
LABEL_9:
  [v30 setNumberStyle:1];
  v43 = [objc_allocWithZone(NSNumber) initWithDouble:a6];
  v44 = [v30 stringFromNumber:v43];

  if (!v44)
  {

    return 0;
  }

  v45 = sub_1000DB950();

  return v45;
}

uint64_t sub_10002981C()
{
  v1 = OBJC_IVAR____TtC12StocksWidget14PriceFormatter_locale;
  v2 = sub_1000D91C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PriceFormatter(uint64_t a1)
{
  result = qword_1001155C0;
  if (!qword_1001155C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002990C(uint64_t a1)
{
  result = sub_1000D91C0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002999C(char a1, uint64_t a2, char a3, double a4)
{
  v5 = fabs(a4);
  if (a4 != 0.0 && v5 < 5.0 && (a1 & 1) == 0)
  {
    if (a3)
    {
      if (qword_100114060 != -1)
      {
        swift_once();
      }

      v10 = &qword_100128DA8;
    }

    else
    {
      if (qword_100114068 != -1)
      {
        swift_once();
      }

      v10 = &qword_100128DB0;
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (!a2)
        {
          goto LABEL_17;
        }

        goto LABEL_38;
      }

      if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v5 < 9.22337204e18)
        {
          if (v5 < 1)
          {
LABEL_17:
            if (qword_100114058 != -1)
            {
              swift_once();
            }

            v10 = &qword_100128DA0;
            return *v10;
          }

          v9 = log10(v5);
          if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v9 > -9.22337204e18)
            {
              if (v9 < 9.22337204e18)
              {
                if (v9 < a2)
                {
                  goto LABEL_17;
                }

LABEL_38:
                if (qword_100114070 == -1)
                {
LABEL_39:
                  v10 = &qword_100128DB8;
                  return *v10;
                }

LABEL_47:
                swift_once();
                goto LABEL_39;
              }

              goto LABEL_52;
            }

            goto LABEL_50;
          }

          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        goto LABEL_45;
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_44;
    }

    if (v5 >= 9.22337204e18)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v5 >= 1)
    {
      v12 = log10(v5);
      if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_49;
      }

      if (v12 <= -9.22337204e18)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v12 >= 9.22337204e18)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (v12 >= a2)
      {
        if (qword_100114080 == -1)
        {
LABEL_41:
          v10 = &qword_100128DC8;
          return *v10;
        }

LABEL_54:
        swift_once();
        goto LABEL_41;
      }
    }

    if (qword_100114078 != -1)
    {
      swift_once();
    }

    v10 = &qword_100128DC0;
  }

  return *v10;
}

uint64_t sub_100029C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_100029D48(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100029CEC()
{
  if (!qword_100115660)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100115660);
    }
  }
}

void sub_100029D48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_100029DAC()
{
  result = qword_1001145E8;
  if (!qword_1001145E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1001145E8);
  }

  return result;
}

uint64_t sub_100029E24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_10002AE54(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100029F18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_10002AE54(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata accessor for MediumDetailContentView(uint64_t a1)
{
  result = qword_1001156C0;
  if (!qword_1001156C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002A038(uint64_t a1)
{
  sub_10002AB88(319, &qword_1001156D0, &type metadata for StockPrice, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10002AB88(319, &unk_1001156D8, &type metadata for ValueChangeTrend, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10002AE54(319, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10002AB88(319, &qword_100115160, &type metadata for QuoteDetailItem, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10002A1C4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10002ABD8(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v51 = *(a1 + 80);
  v10 = *a1;
  v11 = a1[2];
  v12 = a1[3];
  *&v48 = a1[1];
  *(&v48 + 1) = v11;
  v13 = a1[5];
  v49 = a1[4];
  v50 = v10;
  v46 = v13;
  v47 = v12;
  v14 = a1[6];
  v44 = a1[7];
  v45 = v14;
  v15 = a1[8];
  v40 = a1[9];
  v41 = v15;
  v16 = *(a1 + 13);
  v52[0] = *(a1 + 11);
  v52[1] = v16;
  v53[0] = *(a1 + 15);
  *(v53 + 9) = *(a1 + 129);
  v17 = *(a1 + 13);
  v54 = *(a1 + 11);
  v55 = v17;
  v56[0] = *(a1 + 15);
  *(v56 + 9) = *(a1 + 129);
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 1;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;

  v19 = v14;
  v20 = v44;
  v22 = v40;
  v21 = v41;
  sub_10002B054(v19, v44, v41, v40);
  sub_10002B068(v52, v63);
  *v9 = sub_1000DAC80();
  *(v9 + 1) = 0x4040000000000000;
  v9[16] = 0;
  sub_10002B0C4(0);
  sub_10002A564(a1, &v9[*(v23 + 44)]);
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  v26 = &v9[*(v5 + 44)];
  *v26 = v24;
  v26[1] = sub_10002B5D4;
  v26[2] = v25;
  v27 = v43;
  sub_10002B338(v9, v43, sub_10002ABD8);
  LOBYTE(v57[0]) = v51;
  *(&v57[0] + 1) = v50;
  v57[1] = v48;
  *&v58 = v47;
  *(&v58 + 1) = v49;
  *&v59 = v46;
  *(&v59 + 1) = v45;
  *&v60 = v20;
  *(&v60 + 1) = v21;
  *&v61[0] = v22;
  *(v61 + 8) = v54;
  *(&v61[1] + 8) = v55;
  *(&v61[2] + 8) = v56[0];
  *(&v61[3] + 1) = *(v56 + 9);
  v28 = KeyPath;
  *(&v61[4] + 1) = KeyPath;
  *&v62 = sub_10002B050;
  *(&v62 + 1) = v18;
  v29 = v48;
  *a2 = v57[0];
  a2[1] = v29;
  v30 = v58;
  v31 = v59;
  v32 = v61[0];
  a2[4] = v60;
  a2[5] = v32;
  a2[2] = v30;
  a2[3] = v31;
  v33 = v61[1];
  v34 = v61[2];
  v35 = v62;
  a2[9] = v61[4];
  a2[10] = v35;
  v36 = v61[3];
  a2[7] = v34;
  a2[8] = v36;
  a2[6] = v33;
  sub_10002AB08(0);
  sub_10002B338(v27, a2 + *(v37 + 48), sub_10002ABD8);
  sub_10002B15C(v57, v63);
  sub_10002B430(v9, sub_10002ABD8);
  sub_10002B430(v27, sub_10002ABD8);
  v73 = v54;
  v63[0] = v51;
  v64 = v50;
  v65 = v48;
  v66 = v47;
  v67 = v49;
  v68 = v46;
  v69 = v45;
  v70 = v44;
  v71 = v21;
  v72 = v22;
  v74 = v55;
  v75[0] = v56[0];
  *(v75 + 9) = *(v56 + 9);
  v76 = v28;
  v77 = sub_10002B050;
  v78 = v18;
  return sub_10002B1D0(v63);
}

uint64_t sub_10002A564@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for RegularSparklineView(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = sub_1000DAD10();
  v21 = 1;
  sub_10002A83C(a1, &v33);
  v25 = *&v34[32];
  v26 = *&v34[48];
  v27 = *&v34[64];
  v28 = *&v34[80];
  v22 = v33;
  v23 = *v34;
  v24 = *&v34[16];
  v29[0] = v33;
  v29[1] = *v34;
  v29[2] = *&v34[16];
  v29[3] = *&v34[32];
  v29[4] = *&v34[48];
  v29[5] = *&v34[64];
  v30 = *&v34[80];
  sub_10002B23C(&v22, &v31, &qword_100115770, sub_10002AEB8, &type metadata accessor for TupleView);
  sub_10002B2AC(v29);
  *(&v20[3] + 7) = v25;
  *(&v20[4] + 7) = v26;
  *(&v20[5] + 7) = v27;
  *(v20 + 7) = v22;
  *(&v20[1] + 7) = v23;
  *(&v20[6] + 7) = v28;
  *(&v20[2] + 7) = v24;
  v11 = v21;
  v12 = type metadata accessor for MediumDetailContentView(0);
  sub_10002B23C(a1 + *(v12 + 36), v9, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  sub_10002B338(v9, v6, type metadata accessor for RegularSparklineView);
  v31 = v10;
  LOBYTE(v32[0]) = v11;
  *(&v32[1] + 1) = v20[1];
  *(v32 + 1) = v20[0];
  *(&v32[5] + 1) = v20[5];
  *(&v32[4] + 1) = v20[4];
  *(&v32[3] + 1) = v20[3];
  v32[6] = *(&v20[5] + 15);
  *(&v32[2] + 1) = v20[2];
  v13 = v32[2];
  a2[2] = v32[1];
  a2[3] = v13;
  v14 = v32[6];
  a2[6] = v32[5];
  a2[7] = v14;
  v15 = v32[4];
  a2[4] = v32[3];
  a2[5] = v15;
  v16 = v32[0];
  *a2 = v31;
  a2[1] = v16;
  sub_10002AD18(0);
  sub_10002B338(v6, a2 + *(v17 + 48), type metadata accessor for RegularSparklineView);
  sub_10002B3A0(&v31, &v33);
  sub_10002B430(v9, type metadata accessor for RegularSparklineView);
  sub_10002B430(v6, type metadata accessor for RegularSparklineView);
  *&v34[49] = v20[3];
  *&v34[65] = v20[4];
  *&v34[81] = v20[5];
  *&v34[96] = *(&v20[5] + 15);
  *&v34[1] = v20[0];
  *&v34[17] = v20[1];
  v33 = v10;
  v34[0] = v11;
  *&v34[33] = v20[2];
  return sub_10002B490(&v33);
}

uint64_t sub_10002A83C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MediumDetailContentView(0);
  v5 = *(a1 + *(v4 + 40));
  if (*(v5 + 16) <= 3uLL)
  {
  }

  else
  {
    sub_10002404C(*(a1 + *(v4 + 40)), v5 + 32, 0, 7uLL);
    v5 = v6;
  }

  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 1;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 40) = 1;
  *a2 = v5;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = sub_10002B5D4;
  *(a2 + 24) = v8;
  *(a2 + 32) = 0x4010000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = sub_10002B5D4;
  *(a2 + 96) = v14;
  sub_10002B054(v9, v10, v11, v12);

  sub_10002B054(v9, v10, v11, v12);

  sub_10002B52C(v9, v10, v11, v12);
}

uint64_t sub_10002AA28@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1000DAD10();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  sub_10002AA70(0);
  return sub_10002A1C4(v2, (a2 + *(v4 + 44)));
}

void sub_10002AA70(uint64_t a1)
{
  if (!qword_100115720)
  {
    sub_10002AE54(255, &qword_100115728, sub_10002AB08, &type metadata accessor for TupleView);
    v1 = sub_1000DA800();
    if (!v2)
    {
      atomic_store(v1, &qword_100115720);
    }
  }
}

void sub_10002AB08(uint64_t a1)
{
  if (!qword_100115730)
  {
    sub_10002AF50(255, &qword_100115738, &type metadata for SymbolSummaryTicker);
    sub_10002ABD8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100115730);
    }
  }
}

void sub_10002AB88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10002ABD8(uint64_t a1)
{
  if (!qword_100115748)
  {
    sub_10002AC64(255);
    sub_10002AB88(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100115748);
    }
  }
}

void sub_10002AC64(uint64_t a1)
{
  if (!qword_100115750)
  {
    sub_10002AE54(255, &qword_100115758, sub_10002AD18, &type metadata accessor for TupleView);
    sub_10002AFD4(&qword_100115798, &qword_100115758, sub_10002AD18);
    v1 = sub_1000DB4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100115750);
    }
  }
}

void sub_10002AD18(uint64_t a1)
{
  if (!qword_100115760)
  {
    sub_10002ADB4(255, &qword_100115768, &qword_100115770, sub_10002AEB8, &qword_100115790);
    type metadata accessor for RegularSparklineView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100115760);
    }
  }
}

void sub_10002ADB4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_10002AE54(255, a3, a4, &type metadata accessor for TupleView);
    sub_10002AFD4(a5, a3, a4);
    v9 = sub_1000DB540();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10002AE54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10002AEB8(uint64_t a1)
{
  if (!qword_100115778)
  {
    sub_10002AF50(255, &qword_100115780, &type metadata for QuoteDetailsView);
    sub_10002AF50(255, &qword_100115788, &type metadata for LargePriceView);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100115778);
    }
  }
}

void sub_10002AF50(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_10002AB88(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v4 = sub_1000DA930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10002AFD4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_10002AE54(255, a2, a3, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002B054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

void sub_10002B0C4(uint64_t a1)
{
  if (!qword_1001157A0)
  {
    sub_10002AE54(255, &qword_100115758, sub_10002AD18, &type metadata accessor for TupleView);
    v1 = sub_1000DA800();
    if (!v2)
    {
      atomic_store(v1, &qword_1001157A0);
    }
  }
}

uint64_t sub_10002B15C(uint64_t a1, uint64_t a2)
{
  sub_10002AF50(0, &qword_100115738, &type metadata for SymbolSummaryTicker);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B1D0(uint64_t a1)
{
  sub_10002AF50(0, &qword_100115738, &type metadata for SymbolSummaryTicker);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002B23C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_10002AE54(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_10002B2AC(uint64_t a1)
{
  sub_10002AE54(0, &qword_100115770, sub_10002AEB8, &type metadata accessor for TupleView);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002B338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002B3A0(uint64_t a1, uint64_t a2)
{
  sub_10002ADB4(0, &qword_100115768, &qword_100115770, sub_10002AEB8, &qword_100115790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002B490(uint64_t a1)
{
  sub_10002ADB4(0, &qword_100115768, &qword_100115770, sub_10002AEB8, &qword_100115790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002B52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

unint64_t sub_10002B544()
{
  result = qword_1001157A8;
  if (!qword_1001157A8)
  {
    sub_10002ADB4(255, &qword_1001157B0, &qword_100115728, sub_10002AB08, &qword_1001157B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001157A8);
  }

  return result;
}

uint64_t sub_10002B5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_10002B770(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_10002B770(0, &qword_1001157F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void sub_10002B770(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10002B7E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_10002B770(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_10002B770(0, &qword_1001157F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t type metadata accessor for SymbolTrendView(uint64_t a1)
{
  result = qword_100115850;
  if (!qword_100115850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002B9B8(uint64_t a1)
{
  sub_10002D8F8(319, &unk_1001156D8, &type metadata for ValueChangeTrend, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10002B770(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10002B770(319, &qword_1001157F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_10002D8F8(319, &unk_100115860, &type metadata for Bool, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10002BB38(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_1000DB140();
    sub_10002F820(&qword_100115A18, &type metadata accessor for Text.Layout, &protocol conformance descriptor for Text.Layout);
    sub_1000DBCC0();
    sub_1000DBD10();
    sub_1000DBCF0();
    if (v4)
    {
      sub_1000DBD10();
    }

    else
    {
      v6 = v3;
    }

    result = sub_1000DBD10();
    if (v5 >= v6)
    {
      sub_1000DBD60();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002BC88@<X0>(uint64_t a1@<X8>)
{
  sub_1000DA830();
  sub_10002F820(qword_100115428, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_1000DBCC0();
  sub_1000DBD10();
  if (v9[4] == v9[0])
  {
    v2 = sub_1000DA7F0();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_1000DBD70();
    v6 = v5;
    v7 = sub_1000DA7F0();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_10002BE20@<X0>(uint64_t a1@<X8>)
{
  sub_1000DB140();
  sub_10002F820(&qword_100115A18, &type metadata accessor for Text.Layout, &protocol conformance descriptor for Text.Layout);
  sub_1000DBCC0();
  sub_1000DBD10();
  if (v9[4] == v9[0])
  {
    v2 = sub_1000DB130();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_1000DBD70();
    v6 = v5;
    v7 = sub_1000DB130();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_10002BFB8()
{
  if (qword_1001141A8 != -1)
  {
    swift_once();
  }

  sub_100006E20(qword_100128FD8, v3);
  sub_100006C7C(v3, v3[3]);
  sub_10002F2F8();
  result = sub_1000D9F00();
  if (v2)
  {
    sub_100023738(&v1, qword_1001157C0);
    return sub_100006D0C(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002C078()
{
  v1 = sub_1000DAC10();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SymbolTrendView(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1000DBDC0();
    v7 = sub_1000DAED0();
    sub_1000DA330();

    sub_1000DAC00();
    swift_getAtKeyPath();
    sub_10002F3F0(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_10002C1D0()
{
  v1 = sub_1000DAC10();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B770(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = sub_1000DB720();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15 = type metadata accessor for SymbolTrendView(0);
  sub_10002F35C(v0 + *(v15 + 24), v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v9 + 32);
    v16(v14, v7, v8);
  }

  else
  {
    sub_1000DBDC0();
    v17 = sub_1000DAED0();
    v23 = v1;
    v18 = v17;
    sub_1000DA330();

    sub_1000DAC00();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v23);
    v16 = *(v9 + 32);
  }

  v16(v11, v14, v8);
  v19 = (*(v9 + 88))(v11, v8);
  v20 = 1;
  if (v19 != enum case for WidgetFamily.accessoryCircular(_:) && v19 != enum case for WidgetFamily.accessoryRectangular(_:) && v19 != enum case for WidgetFamily.accessoryInline(_:))
  {
    (*(v9 + 8))(v11, v8);
    v20 = sub_10002C078() ^ 1;
  }

  return v20 & 1;
}

uint64_t sub_10002C510@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v3 = sub_1000DA890();
  v129 = *(v3 - 8);
  v130 = v3;
  __chkstk_darwin(v3);
  v128 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002DBD0(0, &qword_100115950, sub_10002DC5C, sub_10002DF4C, &opaque type descriptor for <<opaque return type of View.dynamicTypeSize(_:)>>);
  v146 = v5;
  v132 = *(v5 - 8);
  __chkstk_darwin(v5);
  v131 = &v125 - v6;
  sub_10002DADC(0);
  v147 = v7;
  v134 = *(v7 - 8);
  __chkstk_darwin(v7);
  v133 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002E300(0, &qword_1001159D8, &type metadata accessor for _ConditionalContent.Storage);
  v141 = v9;
  __chkstk_darwin(v9);
  v144 = &v125 - v10;
  sub_10002DBD0(0, &qword_100115900, sub_10002D7E0, sub_10002D948, &opaque type descriptor for <<opaque return type of View.widgetAccentable(_:)>>);
  v143 = v11;
  v127 = *(v11 - 8);
  __chkstk_darwin(v11);
  v126 = &v125 - v12;
  sub_10002E300(0, &qword_1001158F8, &type metadata accessor for _ConditionalContent);
  __chkstk_darwin(v13 - 8);
  v145 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v142 = &v125 - v16;
  v136 = sub_1000DB6F0();
  v17 = *(v136 - 8);
  __chkstk_darwin(v136);
  v19 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v125 - v21;
  sub_10002D6E4(0);
  v24 = v23;
  __chkstk_darwin(v23);
  v26 = (&v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002D664(0);
  v135 = v27;
  __chkstk_darwin(v27);
  v139 = &v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002D5E4(0);
  v138 = v29;
  __chkstk_darwin(v29);
  v140 = &v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v137 = &v125 - v32;
  __chkstk_darwin(v33);
  v149 = &v125 - v34;
  v35 = sub_1000DB3C0();
  v36 = (v26 + *(v24 + 36));
  sub_10002B770(0, &qword_1001158D0, &type metadata accessor for Image.Scale, &type metadata accessor for _EnvironmentKeyWritingModifier);
  v38 = *(v37 + 28);
  v39 = enum case for Image.Scale.small(_:);
  v40 = sub_1000DB410();
  v41 = v36 + v38;
  v42 = a1;
  (*(*(v40 - 8) + 104))(v41, v39, v40);
  *v36 = swift_getKeyPath();
  *v26 = v35;
  type metadata accessor for SymbolTrendView(0);
  sub_10004C514(v22);
  sub_1000DB6E0();
  LOBYTE(v39) = sub_1000DB6D0();
  v43 = *(v17 + 8);
  v44 = v136;
  v43(v19, v136);
  v43(v22, v44);
  if (v39)
  {
    v45 = sub_10002D30C();
  }

  else
  {
    v45 = sub_1000DB360();
  }

  v46 = v45;
  KeyPath = swift_getKeyPath();
  v48 = v139;
  sub_10002F064(v26, v139, sub_10002D6E4);
  v49 = (v48 + *(v135 + 36));
  *v49 = KeyPath;
  v49[1] = v46;
  if (sub_10002C1D0())
  {
    v50 = sub_1000DB090();
  }

  else
  {
    sub_1000DB080();
    sub_1000DAFE0();
    v50 = sub_1000DB010();
  }

  v51 = swift_getKeyPath();
  v52 = v137;
  sub_10002F064(v48, v137, sub_10002D664);
  v53 = (v52 + *(v138 + 36));
  *v53 = v51;
  v53[1] = v50;
  sub_10002F064(v52, v149, sub_10002D5E4);
  if (sub_10002C1D0())
  {
    v54 = *(v42 + 2);
    *&v162 = *(v42 + 1);
    *(&v162 + 1) = v54;
    sub_100017740();

    v55 = sub_1000DB170();
    v57 = v56;
    v59 = v58;
    sub_1000DB090();
    v60 = sub_1000DB100();
    v62 = v61;
    v64 = v63;
    v66 = v65;

    sub_100017794(v55, v57, v59 & 1);

    v67 = swift_getKeyPath();
    v68 = swift_getKeyPath();
    LOBYTE(v162) = v64 & 1;
    LOBYTE(v150) = 0;
    v69 = swift_getKeyPath();
    *&v150 = v60;
    *(&v150 + 1) = v62;
    LOBYTE(v151) = v64 & 1;
    *(&v151 + 1) = v66;
    *&v152 = v67;
    *(&v152 + 1) = 1;
    LOBYTE(v153) = 0;
    *(&v153 + 1) = v68;
    *&v154 = 0x3FEB333333333333;
    *(&v154 + 1) = v69;
    LOBYTE(v155) = 1;
    sub_10002D7E0(0);
    v71 = v70;
    v72 = sub_10002D948();
    v73 = v126;
    sub_1000DB1F0();
    v164 = v152;
    v165 = v153;
    v166 = v154;
    LOBYTE(v167) = v155;
    v162 = v150;
    v163 = v151;
    sub_10002F238(&v162, sub_10002D7E0);
    v74 = v127;
    v75 = v143;
    (*(v127 + 16))(v144, v73, v143);
    swift_storeEnumTagMultiPayload();
    *&v150 = v71;
    *(&v150 + 1) = v72;
    swift_getOpaqueTypeConformance2();
    sub_10002DC5C(255);
    v77 = v76;
    v78 = sub_10002DF4C();
    *&v150 = v77;
    *(&v150 + 1) = v78;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v150 = v146;
    *(&v150 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v80 = v142;
    sub_1000DAD90();
    (*(v74 + 8))(v73, v75);
  }

  else
  {
    v81 = v42;
    v82 = *(v42 + 3);
    v83 = *(v81 + 4);
    *&v162 = v82;
    *(&v162 + 1) = v83;
    sub_100017740();

    v84 = sub_1000DB170();
    v138 = v85;
    v139 = v84;
    v87 = v86;
    v137 = v88;
    v90 = *(v81 + 1);
    v89 = *(v81 + 2);
    if (v90 == v82 && v89 == v83 || (sub_1000DC360() & 1) != 0)
    {
      v136 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
    }

    else
    {
      *&v162 = v90;
      *(&v162 + 1) = v89;

      v136 = sub_1000DB170();
      v91 = v94;
      v93 = v95;
      v92 = v96 & 1;
    }

    v161 = v87 & 1;
    v97 = swift_getKeyPath();
    v98 = v161;
    v173 = 0;
    sub_1000DB080();
    v99 = sub_1000DAF80();

    v100 = swift_getKeyPath();
    v101 = swift_getKeyPath();
    v174 = 0;
    v102 = sub_1000DB360();
    v103 = swift_getKeyPath();
    *&v150 = v139;
    *(&v150 + 1) = v138;
    LOBYTE(v151) = v98;
    *(&v151 + 1) = v137;
    *&v152 = v136;
    *(&v152 + 1) = v91;
    *&v153 = v92;
    *(&v153 + 1) = v93;
    *&v154 = 0;
    *(&v154 + 1) = v97;
    v155 = 0uLL;
    *&v156 = 0;
    BYTE8(v156) = 0;
    *&v157 = v100;
    *(&v157 + 1) = v99;
    *&v158 = v101;
    *(&v158 + 1) = 1;
    LOBYTE(v159) = 0;
    *(&v159 + 1) = v103;
    v160 = v102;
    v105 = v128;
    v104 = v129;
    v106 = v130;
    (*(v129 + 104))(v128, enum case for DynamicTypeSize.large(_:), v130);
    sub_10002DC5C(0);
    v108 = v107;
    v109 = sub_10002DF4C();
    v110 = v131;
    sub_1000DB260();
    (*(v104 + 8))(v105, v106);
    v170 = v158;
    v171 = v159;
    v172 = v160;
    v166 = v154;
    v167 = v155;
    v168 = v156;
    v169 = v157;
    v162 = v150;
    v163 = v151;
    v164 = v152;
    v165 = v153;
    sub_10002F238(&v162, sub_10002DC5C);
    *&v150 = v108;
    *(&v150 + 1) = v109;
    v111 = swift_getOpaqueTypeConformance2();
    v112 = v133;
    v113 = v146;
    sub_1000DB1F0();
    (*(v132 + 8))(v110, v113);
    v114 = v134;
    v115 = v147;
    (*(v134 + 16))(v144, v112, v147);
    swift_storeEnumTagMultiPayload();
    sub_10002D7E0(255);
    v117 = v116;
    v118 = sub_10002D948();
    *&v150 = v117;
    *(&v150 + 1) = v118;
    swift_getOpaqueTypeConformance2();
    *&v150 = v113;
    *(&v150 + 1) = v111;
    swift_getOpaqueTypeConformance2();
    v80 = v142;
    sub_1000DAD90();
    (*(v114 + 8))(v112, v115);
  }

  v119 = v149;
  v120 = v140;
  sub_10002F0DC(v149, v140);
  v121 = v145;
  sub_10002F140(v80, v145);
  v122 = v148;
  sub_10002F0DC(v120, v148);
  sub_10002D558(0);
  sub_10002F140(v121, v122 + *(v123 + 48));
  sub_10002F1C0(v80);
  sub_10002F238(v119, sub_10002D5E4);
  sub_10002F1C0(v121);
  return sub_10002F238(v120, sub_10002D5E4);
}

uint64_t sub_10002D30C()
{
  v1 = *v0;
  if (v1 == 2)
  {
    if (qword_100114088 != -1)
    {
      swift_once();
    }

    v2 = qword_1001157D8;
    v3 = unk_1001157E0;
    sub_100006C7C(qword_1001157C0, qword_1001157D8);
    (*(*(v3 + 16) + 448))(v2);
  }

  else if (v1)
  {
    if (qword_100114088 != -1)
    {
      swift_once();
    }

    v4 = qword_1001157D8;
    v5 = unk_1001157E0;
    sub_100006C7C(qword_1001157C0, qword_1001157D8);
    (*(v5 + 64))(v4, v5);
  }

  else
  {
    if (qword_100114088 != -1)
    {
      swift_once();
    }

    v6 = qword_1001157D8;
    v7 = unk_1001157E0;
    sub_100006C7C(qword_1001157C0, qword_1001157D8);
    (*(v7 + 56))(v6, v7);
  }

  return sub_1000DB390();
}

uint64_t sub_10002D478@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000DAC50();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  sub_10002D4C0(0);
  return sub_10002C510(v1, a1 + *(v3 + 44));
}

void sub_10002D4C0(uint64_t a1)
{
  if (!qword_1001158A0)
  {
    sub_10002B770(255, &qword_1001158A8, sub_10002D558, &type metadata accessor for TupleView);
    v1 = sub_1000DA800();
    if (!v2)
    {
      atomic_store(v1, &qword_1001158A0);
    }
  }
}

void sub_10002D558(uint64_t a1)
{
  if (!qword_1001158B0)
  {
    sub_10002D5E4(255);
    sub_10002E300(255, &qword_1001158F8, &type metadata accessor for _ConditionalContent);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001158B0);
    }
  }
}

void sub_10002D5E4(uint64_t a1)
{
  if (!qword_1001158B8)
  {
    sub_10002D664(255);
    sub_10002D774(255, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_1001158B8);
    }
  }
}

void sub_10002D664(uint64_t a1)
{
  if (!qword_1001158C0)
  {
    sub_10002D6E4(255);
    sub_10002D774(255, &qword_1001158D8, &qword_1001158E0, &type metadata for Color);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_1001158C0);
    }
  }
}

void sub_10002D6E4(uint64_t a1)
{
  if (!qword_1001158C8)
  {
    sub_10002B770(255, &qword_1001158D0, &type metadata accessor for Image.Scale, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_1001158C8);
    }
  }
}

void sub_10002D774(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_10002D8F8(255, a3, a4, &type metadata accessor for Optional);
    v5 = sub_1000DAEA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10002D7E0(uint64_t a1)
{
  if (!qword_100115908)
  {
    sub_10002D86C(255);
    sub_10002D8F8(255, &qword_100115920, &type metadata for Bool, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100115908);
    }
  }
}

void sub_10002D86C(uint64_t a1)
{
  if (!qword_100115910)
  {
    sub_100017444(255);
    sub_10002D8F8(255, &qword_100115918, &type metadata for CGFloat, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100115910);
    }
  }
}

void sub_10002D8F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10002D948()
{
  result = qword_100115928;
  if (!qword_100115928)
  {
    sub_10002D7E0(255);
    sub_10002D9E0();
    sub_10002DA78(&qword_100115940, &qword_100115920, &type metadata for Bool);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115928);
  }

  return result;
}

unint64_t sub_10002D9E0()
{
  result = qword_100115930;
  if (!qword_100115930)
  {
    sub_10002D86C(255);
    sub_1000177AC();
    sub_10002DA78(&qword_100115938, &qword_100115918, &type metadata for CGFloat);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115930);
  }

  return result;
}

uint64_t sub_10002DA78(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002D8F8(255, a2, a3, &type metadata accessor for _EnvironmentKeyWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10002DADC(uint64_t a1)
{
  if (!qword_100115948)
  {
    sub_10002DBD0(255, &qword_100115950, sub_10002DC5C, sub_10002DF4C, &opaque type descriptor for <<opaque return type of View.dynamicTypeSize(_:)>>);
    sub_10002DC5C(255);
    sub_10002DF4C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100115948);
    }
  }
}

void sub_10002DBD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_10002DC5C(uint64_t a1)
{
  if (!qword_100115958)
  {
    sub_10002DCDC(255);
    sub_10002D774(255, &qword_1001158D8, &qword_1001158E0, &type metadata for Color);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100115958);
    }
  }
}

void sub_10002DCDC(uint64_t a1)
{
  if (!qword_100115960)
  {
    sub_10002DD5C(255);
    sub_10002D774(255, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100115960);
    }
  }
}

void sub_10002DD5C(uint64_t a1)
{
  if (!qword_100115968)
  {
    sub_10002DDDC(255);
    sub_10002D774(255, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100115968);
    }
  }
}

void sub_10002DDDC(uint64_t a1)
{
  if (!qword_100115970)
  {
    sub_10002DE3C(255);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100115970);
    }
  }
}

void sub_10002DE3C(uint64_t a1)
{
  if (!qword_100115978)
  {
    sub_10002DE9C(255);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100115978);
    }
  }
}

void sub_10002DE9C(uint64_t a1)
{
  if (!qword_100115980)
  {
    sub_10002DEF8();
    v1 = sub_1000DAE20();
    if (!v2)
    {
      atomic_store(v1, &qword_100115980);
    }
  }
}

unint64_t sub_10002DEF8()
{
  result = qword_100115988;
  if (!qword_100115988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115988);
  }

  return result;
}

unint64_t sub_10002DF4C()
{
  result = qword_100115990;
  if (!qword_100115990)
  {
    sub_10002DC5C(255);
    sub_10002DFEC();
    sub_10002E2B0(&qword_1001159D0, &qword_1001158D8, &qword_1001158E0, &type metadata for Color);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115990);
  }

  return result;
}

unint64_t sub_10002DFEC()
{
  result = qword_100115998;
  if (!qword_100115998)
  {
    sub_10002DCDC(255);
    sub_10002E08C();
    sub_10002E2B0(&qword_100115200, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115998);
  }

  return result;
}

unint64_t sub_10002E08C()
{
  result = qword_1001159A0;
  if (!qword_1001159A0)
  {
    sub_10002DD5C(255);
    sub_10002E12C();
    sub_10002E2B0(&qword_1001159C8, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001159A0);
  }

  return result;
}

unint64_t sub_10002E12C()
{
  result = qword_1001159A8;
  if (!qword_1001159A8)
  {
    sub_10002DDDC(255);
    sub_10002E1AC();
    sub_10002E25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001159A8);
  }

  return result;
}

unint64_t sub_10002E1AC()
{
  result = qword_1001159B0;
  if (!qword_1001159B0)
  {
    sub_10002DE3C(255);
    sub_10002F820(&qword_1001159B8, sub_10002DE9C, &protocol conformance descriptor for _TextRendererViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001159B0);
  }

  return result;
}

unint64_t sub_10002E25C()
{
  result = qword_1001159C0;
  if (!qword_1001159C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001159C0);
  }

  return result;
}

uint64_t sub_10002E2B0(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10002D774(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10002E300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_10002DBD0(255, &qword_100115900, sub_10002D7E0, sub_10002D948, &opaque type descriptor for <<opaque return type of View.widgetAccentable(_:)>>);
    v7 = v6;
    sub_10002DADC(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10002E3B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v80 = a5;
  v81 = a3;
  v78 = a2;
  v83 = a1;
  sub_10002F69C(0, &qword_100115A10, &type metadata accessor for IndexingIterator);
  v77 = v8;
  __chkstk_darwin(v8);
  v10 = &v62 - v9;
  v71 = sub_1000DA910();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v68 = &v62 - v13;
  v67 = sub_1000DAC10();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1000DA8C0();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000DB140();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002F69C(0, &qword_100115A20, &type metadata accessor for Slice);
  v64 = v20;
  __chkstk_darwin(v20);
  v22 = (&v62 - v21);
  sub_10002B770(0, qword_100115A28, &type metadata accessor for Text.Layout.Line, &type metadata accessor for Optional);
  __chkstk_darwin(v23 - 8);
  v75 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v62 - v26;
  v79 = sub_1000DB130();
  v76 = *(v79 - 8);
  __chkstk_darwin(v79);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v30);
  v33 = &v62 - v32;
  v82 = a6;
  if (!a6)
  {
    goto LABEL_7;
  }

  sub_1000178C0(v81, a4, v80 & 1);

  if ((sub_1000DB110() & 1) == 0)
  {
    v36 = v80 & 1;
    v37 = v81;
    v38 = a4;
LABEL_6:
    sub_100017794(v37, v38, v36);

    goto LABEL_7;
  }

  v63 = a4;
  sub_10002BE20(v27);
  v34 = v76;
  v35 = v79;
  if ((*(v76 + 48))(v27, 1, v79) != 1)
  {
    (*(v34 + 32))(v33, v27, v35);
    (*(v17 + 16))(v19, v83, v16);
    v45 = v35;
    sub_10002BB38(1);
    v46 = *v22;
    v47 = v22[1];
    if (*v22 == *&v47)
    {
      sub_10002F7C4(v22, &qword_100115A20, &type metadata accessor for Slice);
      v48 = v75;
      (*(v34 + 56))(v75, 1, 1, v35);
      sub_10002F738(v48);
      v49 = v72;
      sub_1000DA8F0();
      v50 = v33;
      sub_1000DB120();
      v97.width = v84[2];
      v97.height = v84[3] + v84[4];
      sub_1000DA8B0(v97);
      v51 = v65;
      sub_1000DA8A0();
      v52 = v68;
      sub_1000DAA80();
      (*(v66 + 8))(v51, v67);
      v53 = v70;
      v54 = v69;
      v55 = v71;
      (*(v70 + 104))(v69, enum case for LayoutDirection.rightToLeft(_:), v71);
      LOBYTE(v48) = sub_1000DA900();
      v56 = *(v53 + 8);
      v56(v54, v55);
      v56(v52, v55);
      sub_1000DB120();
      if (v48)
      {
        v98.origin.x = v84[6];
        v98.size.width = v84[8];
        v98.origin.y = v84[7] - v85;
        v98.size.height = v85 + v86;
        CGRectGetMinX(v98);
        sub_1000DB120();
      }

      else
      {
        v99.origin.x = v87;
        v99.size.width = v89;
        v99.origin.y = v88 - v90;
        v99.size.height = v90 + v91;
        CGRectGetMinX(v99);
      }

      v60 = v74;
      v61 = v73;
      sub_1000DB120();
      v100.origin.x = v92;
      v100.size.width = v94;
      v100.origin.y = v93 - v95;
      v100.size.height = v95 + v96;
      CGRectGetMinY(v100);
      sub_1000DA8D0();
      sub_100017794(v81, v63, v80 & 1);

      (*(v61 + 8))(v49, v60);
      return (*(v34 + 8))(v50, v79);
    }

    v87 = *v22;
    v92 = v46;
    v93 = v47;
    sub_10002F820(&qword_100115A18, &type metadata accessor for Text.Layout, &protocol conformance descriptor for Text.Layout);
    sub_1000DBCD0();
    v57 = sub_1000DBD70();
    v58 = v76;
    v59 = v75;
    (*(v76 + 16))(v75);
    v57(&v92, 0);
    sub_10002F7C4(v22, &qword_100115A20, &type metadata accessor for Slice);
    (*(v58 + 56))(v59, 0, 1, v45);
    sub_10002F738(v59);
    (*(v58 + 8))(v33, v45);
    v36 = v80 & 1;
    v37 = v81;
    v38 = v63;
    goto LABEL_6;
  }

  sub_100017794(v81, v63, v80 & 1);

  sub_10002F738(v27);
LABEL_7:
  (*(v17 + 16))(v10, v83, v16, v31);
  v39 = *(v77 + 36);
  sub_10002F820(&qword_100115A18, &type metadata accessor for Text.Layout, &protocol conformance descriptor for Text.Layout);
  sub_1000DBCC0();
  sub_1000DBD10();
  v40 = v79;
  if (*&v10[v39] != *&v92)
  {
    v41 = (v76 + 16);
    v42 = (v76 + 8);
    do
    {
      v43 = sub_1000DBD70();
      (*v41)(v29);
      v43(&v92, 0);
      sub_1000DBD20();
      sub_1000DA8E0();
      (*v42)(v29, v40);
      sub_1000DBD10();
    }

    while (*&v10[v39] != *&v92);
  }

  return sub_10002F7C4(v10, &qword_100115A10, &type metadata accessor for IndexingIterator);
}

void (*sub_10002EFC4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1000DA670();
  return sub_100027D30;
}

uint64_t sub_10002F064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002F0DC(uint64_t a1, uint64_t a2)
{
  sub_10002D5E4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F140(uint64_t a1, uint64_t a2)
{
  sub_10002E300(0, &qword_1001158F8, &type metadata accessor for _ConditionalContent);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F1C0(uint64_t a1)
{
  sub_10002E300(0, &qword_1001158F8, &type metadata accessor for _ConditionalContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002F238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002F2A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DAAA0();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10002F2F8()
{
  result = qword_1001159E0;
  if (!qword_1001159E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1001159E0);
  }

  return result;
}

uint64_t sub_10002F35C(uint64_t a1, uint64_t a2)
{
  sub_10002B770(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F3F0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_10002F408(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10002F420(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10002F47C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_10002F528(uint64_t a1)
{
  if (!qword_1001159F8)
  {
    sub_10002B770(255, &qword_1001158A8, sub_10002D558, &type metadata accessor for TupleView);
    sub_10002F5BC();
    v1 = sub_1000DB4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1001159F8);
    }
  }
}

unint64_t sub_10002F5BC()
{
  result = qword_100115A00;
  if (!qword_100115A00)
  {
    sub_10002B770(255, &qword_1001158A8, sub_10002D558, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115A00);
  }

  return result;
}

unint64_t sub_10002F648()
{
  result = qword_100115A08;
  if (!qword_100115A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115A08);
  }

  return result;
}

void sub_10002F69C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1000DB140();
    v7 = sub_10002F820(&qword_100115A18, &type metadata accessor for Text.Layout, &protocol conformance descriptor for Text.Layout);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10002F738(uint64_t a1)
{
  sub_10002B770(0, qword_100115A28, &type metadata accessor for Text.Layout.Line, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002F7C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_10002F69C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10002F820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002F8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v52 = sub_1000DA370();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for OverviewTimelineProvider(0, a1, a2, v7);
  __chkstk_darwin(v55);
  v53 = v49 - v8;
  v9 = type metadata accessor for OverviewWidgetView(255);
  v10 = *(a2 + 8);
  v11 = sub_100031C90(&qword_100115AB0, type metadata accessor for OverviewWidgetView, &unk_1000DFBC4);
  v66 = a1;
  v67 = v9;
  v51 = v9;
  v68 = v10;
  v69 = v11;
  v49[1] = v11;
  v12 = sub_1000DB780();
  v56 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v49 - v13;
  WitnessTable = swift_getWitnessTable();
  v66 = v12;
  v67 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v18 = v49 - v17;
  v66 = v12;
  v67 = WitnessTable;
  v49[2] = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = OpaqueTypeMetadata2;
  v67 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeMetadata2();
  v63 = *(v20 - 8);
  __chkstk_darwin(v20);
  v61 = v49 - v21;
  v66 = OpaqueTypeMetadata2;
  v67 = OpaqueTypeConformance2;
  v54 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v64 = v20;
  v66 = v20;
  v67 = v22;
  v59 = v22;
  v62 = swift_getOpaqueTypeMetadata2();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v58 = v49 - v23;
  if (qword_100114098 != -1)
  {
    swift_once();
  }

  v24 = v52;
  v25 = sub_100015294(v52, qword_100128DF0);
  (*(v50 + 16))(v6, v25, v24);
  sub_10008A2C8(v6, v53);
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  swift_getWitnessTable();
  sub_1000DB770();
  sub_1000DACD0();
  v27 = sub_1000DB160();
  v29 = v28;
  v31 = v30;
  sub_1000DAD50();
  sub_100017794(v27, v29, v31 & 1);

  (*(v56 + 8))(v14, v12);
  sub_1000DACD0();
  v32 = sub_1000DB160();
  v34 = v33;
  LOBYTE(v29) = v35;
  v36 = v61;
  sub_1000DAD30();
  sub_100017794(v32, v34, v29 & 1);

  (*(v57 + 8))(v18, OpaqueTypeMetadata2);
  sub_100032730(0, &qword_100115AB8, &type metadata accessor for WidgetFamily, &type metadata accessor for _ContiguousArrayStorage);
  v37 = sub_1000DB720();
  v38 = *(v37 - 8);
  v39 = *(v38 + 72);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1000DFB00;
  v42 = v41 + v40;
  v43 = *(v38 + 104);
  v43(v42, enum case for WidgetFamily.systemSmall(_:), v37);
  v43(v42 + v39, enum case for WidgetFamily.systemMedium(_:), v37);
  v43(v42 + 2 * v39, enum case for WidgetFamily.systemLarge(_:), v37);
  v43(v42 + 3 * v39, enum case for WidgetFamily.accessoryRectangular(_:), v37);
  v45 = v58;
  v44 = v59;
  v46 = v64;
  sub_1000DAD40();

  (*(v63 + 8))(v36, v46);
  v66 = v46;
  v67 = v44;
  swift_getOpaqueTypeConformance2();
  v47 = v62;
  sub_1000DAD60();
  return (*(v60 + 8))(v45, v47);
}

uint64_t sub_100030144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100032580(a1, a2, type metadata accessor for OverviewTimelineEntry);
  v3 = *(type metadata accessor for OverviewWidgetView(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_100032730(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for OverviewWidgetView(uint64_t a1)
{
  result = qword_100115B18;
  if (!qword_100115B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100030248@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = sub_1000DA890();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000DAE80();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000318E8(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031E08(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031E68(0);
  v15 = v14;
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031EE4(0);
  v39 = v18;
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030784(v2, v9);
  sub_1000DB600();
  sub_1000DA9A0();
  sub_10003238C(v9, v13, sub_1000318E8);
  v22 = &v13[*(v11 + 44)];
  v23 = v55;
  *(v22 + 4) = v54;
  *(v22 + 5) = v23;
  *(v22 + 6) = v56;
  v24 = v51;
  *v22 = v50;
  *(v22 + 1) = v24;
  v25 = v53;
  *(v22 + 2) = v52;
  *(v22 + 3) = v25;
  KeyPath = swift_getKeyPath();
  v27 = &v17[*(v15 + 36)];
  sub_100031EB0(0);
  v29 = *(v28 + 28);
  v30 = enum case for ColorScheme.dark(_:);
  v31 = sub_1000DA6B0();
  (*(*(v31 - 8) + 104))(v27 + v29, v30, v31);
  *v27 = KeyPath;
  sub_10003238C(v13, v17, sub_100031E08);
  sub_1000DAE70();
  sub_1000DB600();
  v32 = sub_100031F84();
  v38 = sub_100032330();
  sub_1000DB290();
  (*(v40 + 8))(v6, v41);
  sub_100032800(v17, sub_100031E68);
  v34 = v43;
  v33 = v44;
  v35 = v42;
  (*(v43 + 104))(v42, enum case for DynamicTypeSize.large(_:), v44);
  v46 = v15;
  v47 = &type metadata for TodayBackgroundView;
  v48 = v32;
  v49 = v38;
  swift_getOpaqueTypeConformance2();
  v36 = v39;
  sub_1000DB260();
  (*(v34 + 8))(v35, v33);
  return (*(v19 + 8))(v21, v36);
}

uint64_t sub_100030784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_1000DA980();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WatchlistOverviewContentView(0);
  __chkstk_darwin(v6);
  v8 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100031D20(0);
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031CD8(0);
  v58 = v11;
  __chkstk_darwin(v11);
  v50 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v56 = &v48 - v14;
  v49 = type metadata accessor for WatchlistOverviewContentViewModel(0);
  __chkstk_darwin(v49);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031B30(0, &qword_100115C30, sub_100031984, sub_100031CD8, &type metadata accessor for _ConditionalContent.Storage);
  v18 = v17;
  __chkstk_darwin(v17);
  v20 = &v48 - v19;
  v21 = type metadata accessor for OverviewTimelineEntry(0);
  __chkstk_darwin(v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100032580(a1, v23, type metadata accessor for OverviewTimelineEntry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = v18;
    sub_1000323F4(0);
    v25 = v23[*(v24 + 80)];
    sub_10003251C(&v23[*(v24 + 48)], v16);
    sub_100032580(v16, v8 + v6[7], type metadata accessor for WatchlistOverviewContentViewModel);
    *v8 = swift_getKeyPath();
    sub_100032730(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
    swift_storeEnumTagMultiPayload();
    v26 = v8 + v6[5];
    *v26 = swift_getKeyPath();
    v26[8] = 0;
    v27 = v8 + v6[6];
    *v27 = swift_getKeyPath();
    *(v27 + 1) = 0;
    *(v27 + 2) = 0;
    *(v27 + 3) = 0;
    v27[32] = 0;
    if (v25 == 1)
    {
      v28 = v5;
      sub_1000DA970();
      v29 = v58;
      v30 = v53;
    }

    else
    {
      *&v72[0] = _swiftEmptyArrayStorage;
      sub_100031C90(&qword_100115C40, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
      sub_1000326FC(0);
      sub_100031C90(&qword_100115C50, sub_1000326FC, &protocol conformance descriptor for [A]);
      v30 = v53;
      sub_1000DBEE0();
      v28 = v5;
      v29 = v58;
    }

    sub_100031C90(&qword_100115BB8, type metadata accessor for WatchlistOverviewContentView, &unk_1000E0270);
    v37 = v51;
    sub_1000DB2F0();
    (*(v52 + 8))(v28, v30);
    sub_100032860(v8, type metadata accessor for WatchlistOverviewContentView);
    v38 = *(v49 + 28);
    KeyPath = swift_getKeyPath();
    v40 = v50;
    v41 = &v50[*(v29 + 36)];
    sub_100031DD4(0);
    v43 = *(v42 + 28);
    v44 = sub_1000D9690();
    (*(*(v44 - 8) + 16))(v41 + v43, &v16[v38], v44);
    *v41 = KeyPath;
    (*(v54 + 32))(v40, v37, v55);
    v45 = v56;
    sub_10003238C(v40, v56, sub_100031CD8);
    sub_10003279C(v45, v20);
    swift_storeEnumTagMultiPayload();
    sub_100031984(0);
    sub_100031C90(&qword_100115C08, sub_100031984, &protocol conformance descriptor for VStack<A>);
    sub_100032220();
    sub_1000DAD90();
    sub_100032800(v45, sub_100031CD8);
    sub_100032860(v16, type metadata accessor for WatchlistOverviewContentViewModel);
  }

  else
  {
    sub_1000328C0(0);
    v32 = *&v23[*(v31 + 64) + 8];
    v56 = sub_1000DAD00();
    v66 = 1;
    sub_100031080(v32, &v60);
    v69 = v62;
    v70 = v63;
    v71[0] = v64[0];
    *(v71 + 9) = *(v64 + 9);
    v67 = v60;
    v68 = v61;
    *(v73 + 9) = *(v64 + 9);
    v72[2] = v62;
    v72[3] = v63;
    v73[0] = v64[0];
    v72[0] = v60;
    v72[1] = v61;
    sub_100032580(&v67, &v59, sub_100031A18);
    sub_100032860(v72, sub_100031A18);

    *(&v65[1] + 7) = v68;
    *(v65 + 7) = v67;
    v65[5] = *(v71 + 9);
    *(&v65[4] + 7) = v71[0];
    *(&v65[3] + 7) = v70;
    *(&v65[2] + 7) = v69;
    v33 = v65[3];
    *(v20 + 49) = v65[2];
    *(v20 + 65) = v33;
    v34 = v65[5];
    *(v20 + 81) = v65[4];
    *(v20 + 97) = v34;
    v35 = v65[1];
    *(v20 + 17) = v65[0];
    v36 = v66;
    *v20 = v56;
    *(v20 + 1) = 0;
    v20[16] = v36;
    *(v20 + 33) = v35;
    swift_storeEnumTagMultiPayload();
    sub_100031984(0);
    sub_100031C90(&qword_100115C08, sub_100031984, &protocol conformance descriptor for VStack<A>);
    sub_100032220();
    sub_1000DAD90();
  }

  v46 = sub_1000D9090();
  return (*(*(v46 - 8) + 8))(v23, v46);
}

uint64_t sub_100031080@<X0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100017740();

  v6 = sub_1000DB170();
  v8 = v7;
  v10 = v9;
  sub_1000DAF70();
  v11 = sub_1000DB100();
  v13 = v12;
  v15 = v14;

  sub_100017794(v6, v8, v10 & 1);

  sub_1000DAFB0();
  v16 = sub_1000DB0D0();
  v48 = v17;
  v49 = v18;
  v44 = v19;
  sub_100017794(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  v46 = sub_1000DADD0();
  if (a4)
  {

    v20 = sub_1000DB170();
    v22 = v21;
    v24 = v23;
    sub_1000DAF60();
    v25 = sub_1000DB100();
    v42 = v16;
    v27 = v26;
    v29 = v28;

    sub_100017794(v20, v22, v24 & 1);

    sub_1000DADE0();
    v30 = sub_1000DB0E0();
    v32 = v31;
    LOBYTE(v20) = v33;
    v35 = v34;
    v36 = v29 & 1;
    v16 = v42;
    sub_100017794(v25, v27, v36);

    v37 = swift_getKeyPath();
    v38 = v20 & 1;
    v39 = v30;
    a4 = v32;
    sub_1000178C0(v30, v32, v20 & 1);
    v43 = v35;

    v40 = 1;
  }

  else
  {
    v39 = 0;
    v38 = 0;
    v43 = 0;
    v37 = 0;
    v40 = 0;
  }

  sub_1000178C0(v16, v48, v44 & 1);

  sub_100032A60(v39, a4, v38, v43, v37);
  sub_100032AB0(v39, a4, v38, v43, v37);
  *a5 = v16;
  *(a5 + 8) = v48;
  *(a5 + 16) = v44 & 1;
  *(a5 + 24) = v49;
  *(a5 + 32) = KeyPath;
  *(a5 + 40) = 1;
  *(a5 + 44) = v46;
  *(a5 + 48) = v39;
  *(a5 + 56) = a4;
  *(a5 + 64) = v38;
  *(a5 + 72) = v43;
  *(a5 + 80) = v37;
  *(a5 + 88) = v40;
  sub_100032AB0(v39, a4, v38, v43, v37);
  sub_100017794(v16, v48, v44 & 1);
}

uint64_t sub_100031414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OverviewTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_100032730(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100031548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for OverviewTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_100032730(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

void sub_100031674(uint64_t a1)
{
  type metadata accessor for OverviewTimelineEntry(319);
  if (v1 <= 0x3F)
  {
    sub_100032730(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100031728(uint64_t *a1)
{
  type metadata accessor for OverviewWidgetView(255);
  sub_100031C90(&qword_100115AB0, type metadata accessor for OverviewWidgetView, &unk_1000DFBC4);
  sub_1000DB780();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_1000318E8(uint64_t a1)
{
  if (!qword_100115B50)
  {
    sub_100031B30(255, &qword_100115B58, sub_100031984, sub_100031CD8, &type metadata accessor for _ConditionalContent);
    v1 = sub_1000DB3A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100115B50);
    }
  }
}

void sub_100031984(uint64_t a1)
{
  if (!qword_100115B60)
  {
    sub_100031A18(255);
    sub_100031C90(&qword_100115BA0, sub_100031A18, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB540();
    if (!v2)
    {
      atomic_store(v1, &qword_100115B60);
    }
  }
}

void sub_100031A4C(uint64_t a1)
{
  if (!qword_100115B70)
  {
    sub_100031B30(255, &qword_100115B78, sub_100031BB4, sub_100031C38, &type metadata accessor for ModifiedContent);
    sub_100032730(255, &qword_100115B98, sub_100031BB4, &type metadata accessor for Optional);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100115B70);
    }
  }
}

void sub_100031B30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_100031BB4(uint64_t a1)
{
  if (!qword_100115B80)
  {
    sub_100032968(255, &qword_100115B88, &type metadata for TextAlignment, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100115B80);
    }
  }
}

void sub_100031C38()
{
  if (!qword_100115B90)
  {
    v0 = sub_1000DAE00();
    if (!v1)
    {
      atomic_store(v0, &qword_100115B90);
    }
  }
}

uint64_t sub_100031C90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100031D20(uint64_t a1)
{
  if (!qword_100115BB0)
  {
    type metadata accessor for WatchlistOverviewContentView(255);
    sub_100031C90(&qword_100115BB8, type metadata accessor for WatchlistOverviewContentView, &unk_1000E0270);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100115BB0);
    }
  }
}

void sub_100031E08(uint64_t a1)
{
  if (!qword_100115BC8)
  {
    sub_1000318E8(255);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100115BC8);
    }
  }
}

void sub_100031EE4(uint64_t a1)
{
  if (!qword_100115BE0)
  {
    sub_100031E68(255);
    sub_100031F84();
    sub_100032330();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100115BE0);
    }
  }
}

unint64_t sub_100031F84()
{
  result = qword_100115BE8;
  if (!qword_100115BE8)
  {
    sub_100031E68(255);
    sub_100032034();
    sub_100031C90(&qword_100115C20, sub_100031EB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115BE8);
  }

  return result;
}

unint64_t sub_100032034()
{
  result = qword_100115BF0;
  if (!qword_100115BF0)
  {
    sub_100031E08(255);
    sub_1000320B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115BF0);
  }

  return result;
}

unint64_t sub_1000320B4()
{
  result = qword_100115BF8;
  if (!qword_100115BF8)
  {
    sub_1000318E8(255);
    sub_10003212C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115BF8);
  }

  return result;
}

unint64_t sub_10003212C()
{
  result = qword_100115C00;
  if (!qword_100115C00)
  {
    sub_100031B30(255, &qword_100115B58, sub_100031984, sub_100031CD8, &type metadata accessor for _ConditionalContent);
    sub_100031C90(&qword_100115C08, sub_100031984, &protocol conformance descriptor for VStack<A>);
    sub_100032220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115C00);
  }

  return result;
}

unint64_t sub_100032220()
{
  result = qword_100115C10;
  if (!qword_100115C10)
  {
    sub_100031CD8(255);
    type metadata accessor for WatchlistOverviewContentView(255);
    sub_100031C90(&qword_100115BB8, type metadata accessor for WatchlistOverviewContentView, &unk_1000E0270);
    swift_getOpaqueTypeConformance2();
    sub_100031C90(&qword_100115C18, sub_100031DD4, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115C10);
  }

  return result;
}

unint64_t sub_100032330()
{
  result = qword_100115C28;
  if (!qword_100115C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115C28);
  }

  return result;
}

uint64_t sub_10003238C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000323F4(uint64_t a1)
{
  if (!qword_100115C38)
  {
    __chkstk_darwin(a1);
    sub_1000D9090();
    type metadata accessor for WatchlistOverviewContentViewModel(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100115C38);
    }
  }
}

uint64_t sub_10003251C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchlistOverviewContentViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000325E8()
{
  sub_1000DAB90();
  sub_100031C90(&qword_100115C68, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_1000DAC20();
  return v1;
}

void *sub_100032664@<X0>(_BYTE *a1@<X8>)
{
  sub_1000DAB90();
  sub_100031C90(&qword_100115C68, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_1000DAC20();
  *a1 = v3;
  return result;
}

void sub_100032730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10003279C(uint64_t a1, uint64_t a2)
{
  sub_100031CD8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032800(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100032860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000328C0(uint64_t a1)
{
  if (!qword_100115C58)
  {
    sub_1000D9090();
    sub_100032968(255, &qword_100115C60, &type metadata for String, &type metadata accessor for Optional);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100115C58);
    }
  }
}

void sub_100032968(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000329B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DAB30();
  *a1 = result;
  return result;
}

uint64_t sub_1000329E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DAB30();
  *a1 = result;
  return result;
}

uint64_t sub_100032A60(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1000178C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100032AB0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_100017794(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100032B00()
{
  sub_100031EE4(255);
  sub_100031E68(255);
  sub_100031F84();
  sub_100032330();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100032BA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100032BC4, 0, 0);
}

uint64_t sub_100032BC4()
{
  sub_100006C7C((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100032C64;

  return sub_10005A770();
}

uint64_t sub_100032C64(uint64_t a1)
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

    return _swift_task_switch(sub_100032DB0, 0, 0);
  }
}

uint64_t sub_100032DD4(id *a1, uint64_t a2)
{
  v3 = [*a1 derivedPersonalizationData];
  if (!v3)
  {
    sub_100033C60(_swiftEmptyArrayStorage, &qword_100115D50, &qword_100115D48, NTPBPersonalizationAggregate_ptr);
    v4 = objc_allocWithZone(FCDerivedPersonalizationData);
    sub_100033ED8(0, &qword_100115D48, NTPBPersonalizationAggregate_ptr);
    isa = sub_1000DB830().super.isa;

    v3 = [v4 initWithAggregates:isa scoringType:0 decayRate:0.0];
  }

  sub_1000DA2E0();
  [objc_allocWithZone(FCReadonlyPersonalizationAggregateStore) initWithGenerator:v3];
  sub_100006E20(a2 + 56, v8);
  swift_unknownObjectRetain();
  v6 = sub_1000DA2D0();

  *(a2 + 96) = v6;
  return swift_unknownObjectRelease();
}

unint64_t sub_100032F48(unint64_t a1)
{
  if (!*(v1 + 96))
  {
    return sub_100033C60(_swiftEmptyArrayStorage, &qword_100115D28, &qword_100115D30, FCFeedPersonalizedItemScoreProfile_ptr);
  }

  if (a1 >> 62)
  {
    sub_100033DC0(0, &qword_100115D20, &protocolRef_FCFeedPersonalizingItem);
    swift_unknownObjectRetain();

    sub_1000DC0E0();
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
    swift_unknownObjectRetain();

    sub_1000DC370();
    sub_100033DC0(0, &qword_100115D20, &protocolRef_FCFeedPersonalizingItem);
    if (!swift_dynamicCastMetatype())
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        v7 = v3 + 32;
        do
        {
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          v7 += 8;
          --v6;
        }

        while (v6);
      }
    }
  }

  swift_getObjectType();
  v4 = sub_1000DBE00();
  swift_unknownObjectRelease();

  return v4;
}

uint64_t sub_1000330D0()
{
  sub_100006D0C((v0 + 16));
  sub_100006D0C((v0 + 56));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10003313C()
{
  sub_100033D58(0);

  sub_1000DA120();

  v0 = sub_1000DA100();
  v1 = sub_1000DA130();

  return v1;
}

unint64_t sub_100033210(uint64_t a1, uint64_t a2)
{
  sub_1000DC420();
  sub_1000DB9F0();
  v4 = sub_1000DC460();

  return sub_100033450(a1, a2, v4);
}

unint64_t sub_100033288(uint64_t a1)
{
  sub_1000D9B40();
  sub_1000349D8(&qword_100115DC0, &type metadata accessor for Stock, &protocol conformance descriptor for Stock);
  v2 = sub_1000DB870();

  return sub_100033508(a1, v2);
}

unint64_t sub_100033320(uint64_t a1)
{
  sub_1000DB950();
  sub_1000DC420();
  sub_1000DB9F0();
  v2 = sub_1000DC460();

  return sub_1000336C8(a1, v2);
}

unint64_t sub_1000333B0(char a1)
{
  sub_1000DC420();
  sub_1000DB9F0();

  v2 = sub_1000DC460();

  return sub_1000337CC(a1 & 1, v2);
}

unint64_t sub_100033450(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000DC360())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100033508(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1000D9B40();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1000349D8(&qword_100115DC8, &type metadata accessor for Stock, &protocol conformance descriptor for Stock);
      v16 = sub_1000DB8D0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1000336C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1000DB950();
      v8 = v7;
      if (v6 == sub_1000DB950() && v8 == v9)
      {
        break;
      }

      v11 = sub_1000DC360();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_1000337CC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x79636176697270;
    }

    else
    {
      v6 = 1953460082;
    }

    if (a1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x79636176697270 : 1953460082;
      v9 = *(*(v2 + 48) + v4) ? 0xE700000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1000DC360();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_100033928(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100034754(0, &qword_100115D68, &type metadata for WidgetSectionConfigRecord.SymbolConfiguration);
    v3 = sub_1000DC130();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100033210(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100033A50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100034038(0, a2, a3);
    v5 = sub_1000DC130();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100033210(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_100033B48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100034754(0, &qword_100115DB8, &type metadata for String);
    v3 = sub_1000DC130();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100033210(v5, v6);
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

unint64_t sub_100033C60(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100033F20(0, a2, a3, a4);
    v6 = sub_1000DC130();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      v11 = v10;
      result = sub_100033210(v8, v9);
      if (v13)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v6[6] + 16 * result);
      *v14 = v8;
      v14[1] = v9;
      *(v6[7] + 8 * result) = v11;
      v15 = v6[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v6[2] = v17;
      if (!--v4)
      {

        return v6;
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

void sub_100033D58(uint64_t a1)
{
  if (!qword_100115D38)
  {
    sub_100033DC0(255, &qword_100115D40, &protocolRef_FCTodayPrivateData);
    v1 = sub_1000DA170();
    if (!v2)
    {
      atomic_store(v1, &qword_100115D38);
    }
  }
}

uint64_t sub_100033DC0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100033E20(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000ECF4;

  return sub_100032BA4(a1, v1);
}

uint64_t sub_100033ED8(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_100033F20(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_100033ED8(255, a3, a4);
    v5 = sub_1000DC140();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100034038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DC140();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10003409C(uint64_t a1)
{
  if (!qword_100115D60)
  {
    sub_1000D9C30();
    v1 = sub_1000DBBB0();
    if (!v2)
    {
      atomic_store(v1, &qword_100115D60);
    }
  }
}

unint64_t sub_1000340F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003492C(0);
    v3 = sub_1000DC130();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100033320(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1000341D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000347AC(0);
    v3 = sub_1000DC130();
    v4 = a1 + 32;

    while (1)
    {
      sub_10003484C(v4, &v11);
      v5 = v11;
      result = sub_100033320(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10003491C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_100034300()
{
  result = qword_100115D90;
  if (!qword_100115D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115D90);
  }

  return result;
}

unint64_t sub_100034380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void))
{
  v27 = a5;
  v28 = a2;
  sub_100034564(0, a2, a3);
  v9 = v8;
  v10 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_100034678(0, a4, a3);
    v14 = sub_1000DC130();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_1000346E8(v16, v12, v28, a3);
      v18 = *v12;
      result = sub_1000333B0(*v12);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v14[6] + result) = v18;
      v22 = v14[7];
      v23 = v27(0);
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, &v12[v15], v23);
      v24 = v14[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v14[2] = v26;
      v16 += v17;
      if (!--v13)
      {

        return v14;
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

void sub_100034564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1000345C8(uint64_t a1)
{
  if (!qword_100115DA0)
  {
    sub_100034624();
    v1 = sub_1000D8B90();
    if (!v2)
    {
      atomic_store(v1, &qword_100115DA0);
    }
  }
}

unint64_t sub_100034624()
{
  result = qword_100115DA8;
  if (!qword_100115DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115DA8);
  }

  return result;
}

void sub_100034678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100034300();
    v4 = sub_1000DC140();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000346E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_100034564(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_100034754(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1000DC140();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000347AC(uint64_t a1)
{
  if (!qword_100115DD0)
  {
    type metadata accessor for AttributeName(255);
    sub_1000349D8(&qword_100114688, type metadata accessor for AttributeName, &unk_1000DE1FC);
    v1 = sub_1000DC140();
    if (!v2)
    {
      atomic_store(v1, &qword_100115DD0);
    }
  }
}

uint64_t sub_10003484C(uint64_t a1, uint64_t a2)
{
  sub_1000348B0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000348B0(uint64_t a1)
{
  if (!qword_100115DE0)
  {
    type metadata accessor for AttributeName(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100115DE0);
    }
  }
}

_OWORD *sub_10003491C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_10003492C(uint64_t a1)
{
  if (!qword_100115DE8)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    sub_1000349D8(&unk_100115DF0, type metadata accessor for TraitKey, &unk_1000DE240);
    v1 = sub_1000DC140();
    if (!v2)
    {
      atomic_store(v1, &qword_100115DE8);
    }
  }
}

uint64_t sub_1000349D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100034ADC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1000DA370();
  sub_1000152CC(v5, a2);
  sub_100015294(v5, a2);
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    sub_1000DB950();
  }

  return sub_1000DA360();
}

uint64_t sub_100034BC4()
{
  sub_100034C20();
  swift_allocObject();
  result = sub_1000DC4B0();
  qword_100128E50 = result;
  return result;
}

void sub_100034C20()
{
  if (!qword_100115E00)
  {
    v0 = sub_1000DC4E0();
    if (!v1)
    {
      atomic_store(v0, &qword_100115E00);
    }
  }
}

uint64_t sub_100034C70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100034CB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100034D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_100036488(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100034E0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    sub_100036488(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata accessor for StockPriceView(uint64_t a1)
{
  result = qword_100115E60;
  if (!qword_100115E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100034F2C(uint64_t a1)
{
  sub_100036018(319, &qword_1001156D0, &type metadata for StockPrice, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100036488(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100036018(319, &unk_100115860, &type metadata for Bool, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100035BE8(319, &qword_1001141F8, &type metadata for Bool, &protocol witness table for Bool, &type metadata accessor for SettingProperty);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000350A8()
{
  v1 = sub_1000DAC10();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for StockPriceView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1000DBDC0();
    v7 = sub_1000DAED0();
    sub_1000DA330();

    sub_1000DAC00();
    swift_getAtKeyPath();
    sub_10002F3F0(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_100035200@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v76 = sub_1000DA9F0();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v72 = &v60 - v5;
  v77 = sub_1000DAA00();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v73 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1000DA890();
  v64 = *(v69 - 8);
  __chkstk_darwin(v69);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000DB720();
  v61 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v60 - v12);
  sub_100035A24(0);
  v68 = v14;
  v67 = *(v14 - 8);
  __chkstk_darwin(v14);
  v66 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035F98(0);
  v65 = v16;
  __chkstk_darwin(v16);
  v70 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  type metadata accessor for StockPriceView(0);
  v79 = v18;
  v22 = v18;
  v23 = v19;
  v24 = v19;
  v25 = v20;
  sub_10002B054(v22, v24, v21, v20);
  sub_1000D9DA0();
  if (v86 == 1)
  {
    sub_10004C4D4(v13);
    v26 = v61;
    (*(v61 + 32))(v10, v13, v8);
    v27 = (*(v26 + 88))(v10, v8);
    v28 = 0;
    if (v27 != enum case for WidgetFamily.accessoryCircular(_:) && v27 != enum case for WidgetFamily.accessoryRectangular(_:) && v27 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v26 + 8))(v10, v8);
      v28 = sub_1000350A8();
    }
  }

  else
  {
    v28 = 0;
  }

  *&v80 = v79;
  v62 = v23;
  *(&v80 + 1) = v23;
  *&v81 = v21;
  *(&v81 + 1) = v25;
  LOBYTE(v86) = v28 & 1;
  *(&v86 + 1) = 0;
  *&v87 = 0;
  BYTE8(v87) = 0;
  v88 = xmmword_1000DFDC0;
  *&v89 = 0xA300000000000000;
  *(&v89 + 1) = 9666786;
  *&v90 = 0xA300000000000000;
  *(&v90 + 1) = 9666786;
  *&v91 = 0xA300000000000000;
  sub_100036068(0);
  sub_100036144();
  sub_10003619C();
  v29 = sub_1000DB150();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  KeyPath = swift_getKeyPath();
  v37 = v33 & 1;
  v93 = v33 & 1;
  v92 = 0;
  v38 = sub_1000DADD0();
  v39 = v2[4];
  v40 = swift_getKeyPath();
  *&v80 = v29;
  *(&v80 + 1) = v31;
  LOBYTE(v81) = v37;
  *(&v81 + 1) = v35;
  *&v82 = 0;
  *(&v82 + 1) = KeyPath;
  v83 = 0uLL;
  *&v84 = 0;
  BYTE8(v84) = 0;
  HIDWORD(v84) = v38;
  *&v85 = v40;
  *(&v85 + 1) = v39;
  v41 = v64;
  v42 = v63;
  v43 = v69;
  (*(v64 + 104))(v63, enum case for DynamicTypeSize.large(_:), v69);
  sub_100035AA8(0);
  sub_100035CA8();

  v44 = v66;
  sub_1000DB260();
  (*(v41 + 8))(v42, v43);
  v88 = v82;
  v89 = v83;
  v90 = v84;
  v91 = v85;
  v86 = v80;
  v87 = v81;
  sub_100036364(&v86);
  v45 = swift_getKeyPath();
  v46 = v70;
  (*(v67 + 32))(v70, v44, v68);
  v47 = v46 + *(v65 + 36);
  *v47 = v45;
  *(v47 + 8) = 1;
  *(v47 + 16) = 0;
  v48 = v71;
  sub_1000DA9E0();
  v49 = v72;
  sub_1000DA9D0();
  v50 = *(v74 + 8);
  v51 = v48;
  v52 = v76;
  v50(v51, v76);
  v53 = v73;
  sub_1000DA9C0();
  v50(v49, v52);
  v54 = swift_getKeyPath();
  sub_1000363F0(0);
  v56 = v78;
  v57 = (v78 + *(v55 + 36));
  sub_100036488(0, &qword_100115F20, &type metadata accessor for ContentTransition, &type metadata accessor for _EnvironmentKeyWritingModifier);
  (*(v75 + 32))(v57 + *(v58 + 28), v53, v77);
  *v57 = v54;
  return sub_1000364EC(v46, v56);
}

void sub_100035A24(uint64_t a1)
{
  if (!qword_100115EA8)
  {
    sub_100035AA8(255);
    sub_100035CA8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100115EA8);
    }
  }
}

void sub_100035AA8(uint64_t a1)
{
  if (!qword_100115EB0)
  {
    sub_100035B28(255);
    sub_100035C3C(255, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100115EB0);
    }
  }
}

void sub_100035B28(uint64_t a1)
{
  if (!qword_100115EB8)
  {
    sub_100035BE8(255, &qword_100115EC0, &type metadata for Text, &type metadata for OverflowIntoTextMarginsModifier, &type metadata accessor for ModifiedContent);
    sub_100035BE8(255, &qword_100115B90, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle, &type metadata accessor for _ForegroundStyleModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100115EB8);
    }
  }
}

void sub_100035BE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_100035C3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_100036018(255, a3, a4, &type metadata accessor for Optional);
    v5 = sub_1000DAEA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100035CA8()
{
  result = qword_100115EC8;
  if (!qword_100115EC8)
  {
    sub_100035AA8(255);
    sub_100035D8C(&qword_100115ED0, sub_100035B28, sub_100035E18, sub_100035EC4);
    sub_100035F48(&qword_1001159C8, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115EC8);
  }

  return result;
}

uint64_t sub_100035D8C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100035E18()
{
  result = qword_100115ED8;
  if (!qword_100115ED8)
  {
    sub_100035BE8(255, &qword_100115EC0, &type metadata for Text, &type metadata for OverflowIntoTextMarginsModifier, &type metadata accessor for ModifiedContent);
    sub_10002E25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115ED8);
  }

  return result;
}

unint64_t sub_100035EC4()
{
  result = qword_100115EE0;
  if (!qword_100115EE0)
  {
    sub_100035BE8(255, &qword_100115B90, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle, &type metadata accessor for _ForegroundStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115EE0);
  }

  return result;
}

uint64_t sub_100035F48(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100035C3C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100035F98(uint64_t a1)
{
  if (!qword_100115EE8)
  {
    sub_100035A24(255);
    sub_100035C3C(255, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100115EE8);
    }
  }
}

void sub_100036018(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100036068(uint64_t a1)
{
  if (!qword_100115EF0)
  {
    v4[0] = &_s17WidgetFormatStyleVN;
    v4[1] = sub_1000360F0();
    v4[2] = &protocol witness table for String;
    v4[3] = &protocol witness table for String;
    v4[4] = &protocol witness table for String;
    v2 = type metadata accessor for NilPlaceholderFormatStyle(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_100115EF0);
    }
  }
}

unint64_t sub_1000360F0()
{
  result = qword_100115EF8;
  if (!qword_100115EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115EF8);
  }

  return result;
}

unint64_t sub_100036144()
{
  result = qword_100115F00;
  if (!qword_100115F00)
  {
    sub_100036068(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F00);
  }

  return result;
}

unint64_t sub_10003619C()
{
  result = qword_100115F08;
  if (!qword_100115F08)
  {
    sub_100036018(255, &qword_1001156D0, &type metadata for StockPrice, &type metadata accessor for Optional);
    sub_100036238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F08);
  }

  return result;
}

unint64_t sub_100036238()
{
  result = qword_100115F10;
  if (!qword_100115F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F10);
  }

  return result;
}

uint64_t sub_100036294(uint64_t a1)
{
  v2 = sub_1000DAA00();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1000DAAF0();
}

uint64_t sub_100036364(uint64_t a1)
{
  sub_100035AA8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000363F0(uint64_t a1)
{
  if (!qword_100115F18)
  {
    sub_100035F98(255);
    sub_100036488(255, &qword_100115F20, &type metadata accessor for ContentTransition, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100115F18);
    }
  }
}

void sub_100036488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000364EC(uint64_t a1, uint64_t a2)
{
  sub_100035F98(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000365AC()
{
  result = qword_100115F30;
  if (!qword_100115F30)
  {
    sub_100035F98(255);
    sub_100035AA8(255);
    sub_100035CA8();
    swift_getOpaqueTypeConformance2();
    sub_100035F48(&qword_100115200, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F30);
  }

  return result;
}

unint64_t sub_10003667C()
{
  result = qword_100115F38;
  if (!qword_100115F38)
  {
    sub_100036488(255, &qword_100115F20, &type metadata accessor for ContentTransition, &type metadata accessor for _EnvironmentKeyWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F38);
  }

  return result;
}

uint64_t sub_10003676C(uint64_t a1, uint64_t a2)
{
  sub_100038310(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003681C(uint64_t a1, uint64_t a2)
{
  sub_100038310(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000368DC(uint64_t a1)
{
  sub_100038310(319, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

double sub_1000369DC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v62 = type metadata accessor for PreparedSparkline(0);
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v70 = (&v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_1000DB310();
  v4 = *(v60 - 8);
  __chkstk_darwin(v60);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038310(0, &qword_1001160F0, &type metadata accessor for Font.Design, &type metadata accessor for Optional);
  __chkstk_darwin(v7 - 8);
  v9 = &v60 - v8;
  sub_100038310(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  __chkstk_darwin(v10 - 8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v60 - v14;
  v16 = type metadata accessor for SparklineView(0);
  __chkstk_darwin(v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v61 = &v60 - v20;
  sub_10003822C(0);
  v69 = v21;
  v67 = *(v21 - 8);
  __chkstk_darwin(v21);
  v65 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038594(0);
  v68 = v23;
  v66 = *(v23 - 8);
  __chkstk_darwin(v23);
  v64 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024964(v2, v15);
  sub_1000DA6D0();
  sub_1000DA6D0();
  v25 = v16[11];
  *&v18[v25] = swift_getKeyPath();
  sub_100038310(0, &qword_100116108, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v26 = v16[12];
  sub_1000DAFD0();
  v27 = sub_1000DAFA0();
  (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
  v28 = sub_1000DB000();
  sub_100038374(v9, &qword_1001160F0, &type metadata accessor for Font.Design);
  *&v18[v26] = v28;
  v29 = v16[13];
  v30 = enum case for Color.RGBColorSpace.sRGB(_:);
  v31 = *(v4 + 104);
  v32 = v60;
  v31(v6, enum case for Color.RGBColorSpace.sRGB(_:), v60);
  *&v18[v29] = sub_1000DB380();
  v33 = &v18[v16[14]];
  sub_1000DA6D0();
  v34 = v79;
  *v33 = v78;
  *(v33 + 1) = v34;
  *(v33 + 4) = v80;
  v35 = v16[15];
  v31(v6, v30, v32);
  v36 = v62;
  *&v18[v35] = sub_1000DB380();
  v37 = v63;
  sub_100024964(v15, v12);
  v38 = *(v37 + 48);
  if (v38(v12, 1, v36) == 1)
  {
    v39 = v70;
    sub_10006F6C4(v70);
    sub_100038374(v15, &qword_100114B60, type metadata accessor for PreparedSparkline);
    v40 = v38(v12, 1, v36) == 1;
    v41 = v39;
    if (!v40)
    {
      sub_100038374(v12, &qword_100114B60, type metadata accessor for PreparedSparkline);
      v41 = v39;
    }
  }

  else
  {
    sub_100038374(v15, &qword_100114B60, type metadata accessor for PreparedSparkline);
    v42 = v12;
    v43 = v70;
    sub_1000383E4(v42, v70, type metadata accessor for PreparedSparkline);
    v41 = v43;
  }

  sub_1000383E4(v41, v18, type metadata accessor for PreparedSparkline);
  v44 = &v18[v16[5]];
  v45 = v73;
  *v44 = v72;
  *(v44 + 1) = v45;
  *(v44 + 4) = v74;
  v46 = &v18[v16[6]];
  v47 = v76;
  *v46 = v75;
  *(v46 + 1) = v47;
  *(v46 + 4) = v77;
  *&v18[v16[7]] = 0x3FF0000000000000;
  v18[v16[8]] = 0;
  v48 = &v18[v16[9]];
  *v48 = 0;
  v48[8] = 3;
  v18[v16[10]] = 1;
  v49 = v61;
  sub_1000383E4(v18, v61, type metadata accessor for SparklineView);
  v50 = sub_1000382B0();
  v51 = v65;
  sub_1000DB190();
  sub_10003844C(v49);
  *&v81 = v16;
  *(&v81 + 1) = v50;
  swift_getOpaqueTypeConformance2();
  v52 = v64;
  v53 = v69;
  sub_1000DB1B0();
  (*(v67 + 8))(v51, v53);
  sub_1000DB600();
  sub_1000DA7A0();
  v54 = v71;
  (*(v66 + 32))(v71, v52, v68);
  sub_100038650(0);
  v56 = (v54 + *(v55 + 36));
  result = *&v81;
  v58 = v82;
  v59 = v83;
  *v56 = v81;
  v56[1] = v58;
  v56[2] = v59;
  return result;
}

uint64_t sub_1000372B4@<X0>(int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v63 = a3;
  v64 = a4;
  v62 = a2;
  v65 = a5;
  v56 = type metadata accessor for PreparedSparkline(0);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v61 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_1000DB310();
  v7 = *(v54 - 8);
  __chkstk_darwin(v54);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038310(0, &qword_1001160F0, &type metadata accessor for Font.Design, &type metadata accessor for Optional);
  __chkstk_darwin(v10 - 8);
  v12 = &v53 - v11;
  sub_100038310(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  __chkstk_darwin(v13 - 8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v53 - v17;
  v19 = type metadata accessor for SparklineView(0);
  __chkstk_darwin(v19);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v55 = &v53 - v23;
  sub_10003822C(0);
  v60 = v24;
  v59 = *(v24 - 8);
  __chkstk_darwin(v24);
  v58 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024964(v5, v18);
  sub_1000DA6D0();
  sub_1000DA6D0();
  v26 = v19[11];
  *&v21[v26] = swift_getKeyPath();
  sub_100038310(0, &qword_100116108, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v27 = v19[12];
  sub_1000DAFD0();
  v28 = sub_1000DAFA0();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  v29 = sub_1000DB000();
  sub_100038374(v12, &qword_1001160F0, &type metadata accessor for Font.Design);
  *&v21[v27] = v29;
  v30 = v19[13];
  v31 = enum case for Color.RGBColorSpace.sRGB(_:);
  v32 = *(v7 + 104);
  v33 = v54;
  v32(v9, enum case for Color.RGBColorSpace.sRGB(_:), v54);
  *&v21[v30] = sub_1000DB380();
  v34 = &v21[v19[14]];
  sub_1000DA6D0();
  v35 = v75;
  *v34 = v74;
  *(v34 + 1) = v35;
  *(v34 + 4) = v76;
  v36 = v19[15];
  v32(v9, v31, v33);
  v37 = v56;
  *&v21[v36] = sub_1000DB380();
  v38 = v57;
  sub_100024964(v18, v15);
  v39 = *(v38 + 48);
  if (v39(v15, 1, v37) == 1)
  {
    v40 = v61;
    sub_10006F6C4(v61);
    sub_100038374(v18, &qword_100114B60, type metadata accessor for PreparedSparkline);
    v41 = v39(v15, 1, v37);
    v42 = v40;
    if (v41 != 1)
    {
      sub_100038374(v15, &qword_100114B60, type metadata accessor for PreparedSparkline);
    }
  }

  else
  {
    sub_100038374(v18, &qword_100114B60, type metadata accessor for PreparedSparkline);
    v42 = v61;
    sub_1000383E4(v15, v61, type metadata accessor for PreparedSparkline);
  }

  sub_1000383E4(v42, v21, type metadata accessor for PreparedSparkline);
  v43 = &v21[v19[5]];
  v44 = v69;
  *v43 = v68;
  *(v43 + 1) = v44;
  *(v43 + 4) = v70;
  v45 = &v21[v19[6]];
  v46 = v72;
  *v45 = v71;
  *(v45 + 1) = v46;
  *(v45 + 4) = v73;
  *&v21[v19[7]] = 0x3FD999999999999ALL;
  v21[v19[8]] = v62;
  v47 = &v21[v19[9]];
  *v47 = 0;
  v47[8] = 3;
  v21[v19[10]] = v63;
  v48 = v55;
  sub_1000383E4(v21, v55, type metadata accessor for SparklineView);
  v49 = sub_1000382B0();
  v50 = v58;
  sub_1000DB190();
  sub_10003844C(v48);
  v66 = v19;
  v67 = v49;
  swift_getOpaqueTypeConformance2();
  v51 = v60;
  sub_1000DB1B0();
  return (*(v59 + 8))(v50, v51);
}

uint64_t sub_100037A78@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v53 = type metadata accessor for PreparedSparkline(0);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v57 = (&v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_1000DB310();
  v3 = *(v50 - 8);
  __chkstk_darwin(v50);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038310(0, &qword_1001160F0, &type metadata accessor for Font.Design, &type metadata accessor for Optional);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  sub_100038310(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v49 - v13;
  v15 = type metadata accessor for SparklineView(0);
  __chkstk_darwin(v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v51 = &v49 - v19;
  sub_10003822C(0);
  v55 = *(v20 - 8);
  v56 = v20;
  __chkstk_darwin(v20);
  v54 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024964(v1, v14);
  sub_1000DA6D0();
  sub_1000DA6D0();
  v22 = v15[11];
  *&v17[v22] = swift_getKeyPath();
  sub_100038310(0, &qword_100116108, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v23 = v15[12];
  sub_1000DAFD0();
  v24 = sub_1000DAFA0();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  v25 = sub_1000DB000();
  sub_100038374(v8, &qword_1001160F0, &type metadata accessor for Font.Design);
  *&v17[v23] = v25;
  v26 = v15[13];
  v27 = enum case for Color.RGBColorSpace.sRGB(_:);
  v28 = *(v3 + 104);
  v29 = v50;
  v28(v5, enum case for Color.RGBColorSpace.sRGB(_:), v50);
  *&v17[v26] = sub_1000DB380();
  v30 = &v17[v15[14]];
  sub_1000DA6D0();
  v31 = v68;
  *v30 = v67;
  *(v30 + 1) = v31;
  *(v30 + 4) = v69;
  v32 = v15[15];
  v28(v5, v27, v29);
  v33 = v52;
  v34 = v53;
  *&v17[v32] = sub_1000DB380();
  sub_100024964(v14, v11);
  v35 = *(v33 + 48);
  if (v35(v11, 1, v34) == 1)
  {
    v36 = v57;
    sub_10006F6C4(v57);
    sub_100038374(v14, &qword_100114B60, type metadata accessor for PreparedSparkline);
    v37 = v35(v11, 1, v34);
    v38 = v36;
    if (v37 != 1)
    {
      sub_100038374(v11, &qword_100114B60, type metadata accessor for PreparedSparkline);
    }
  }

  else
  {
    sub_100038374(v14, &qword_100114B60, type metadata accessor for PreparedSparkline);
    v38 = v57;
    sub_1000383E4(v11, v57, type metadata accessor for PreparedSparkline);
  }

  sub_1000383E4(v38, v17, type metadata accessor for PreparedSparkline);
  v39 = &v17[v15[5]];
  v40 = v62;
  *v39 = v61;
  *(v39 + 1) = v40;
  *(v39 + 4) = v63;
  v41 = &v17[v15[6]];
  v42 = v65;
  *v41 = v64;
  *(v41 + 1) = v42;
  *(v41 + 4) = v66;
  *&v17[v15[7]] = 0x3FD999999999999ALL;
  v17[v15[8]] = 1;
  v43 = &v17[v15[9]];
  *v43 = 0;
  v43[8] = 3;
  v17[v15[10]] = 0;
  v44 = v51;
  sub_1000383E4(v17, v51, type metadata accessor for SparklineView);
  v45 = sub_1000382B0();
  v46 = v54;
  sub_1000DB190();
  sub_10003844C(v44);
  v59 = v15;
  v60 = v45;
  swift_getOpaqueTypeConformance2();
  v47 = v56;
  sub_1000DB1B0();
  return (*(v55 + 8))(v46, v47);
}

void sub_10003822C(uint64_t a1)
{
  if (!qword_1001160F8)
  {
    type metadata accessor for SparklineView(255);
    sub_1000382B0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1001160F8);
    }
  }
}

unint64_t sub_1000382B0()
{
  result = qword_100116100;
  if (!qword_100116100)
  {
    type metadata accessor for SparklineView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116100);
  }

  return result;
}

void sub_100038310(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100038374(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_100038310(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000383E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003844C(uint64_t a1)
{
  v2 = type metadata accessor for SparklineView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000384F0()
{
  sub_10003822C(255);
  type metadata accessor for SparklineView(255);
  sub_1000382B0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_100038594(uint64_t a1)
{
  if (!qword_1001161A0)
  {
    sub_10003822C(255);
    type metadata accessor for SparklineView(255);
    sub_1000382B0();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1001161A0);
    }
  }
}

void sub_100038650(uint64_t a1)
{
  if (!qword_1001161A8)
  {
    sub_100038594(255);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_1001161A8);
    }
  }
}

unint64_t sub_1000386B4()
{
  result = qword_1001161B0;
  if (!qword_1001161B0)
  {
    sub_100038650(255);
    sub_10003822C(255);
    type metadata accessor for SparklineView(255);
    sub_1000382B0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001161B0);
  }

  return result;
}

void sub_1000387B8(void *a1, _BOOL8 a2)
{
  [a1 setSearchBarStyle:2];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v19._countAndFlagsBits = 0x80000001000E86D0;
  v22._countAndFlagsBits = 0x736B636F7453;
  v22._object = 0xE600000000000000;
  v23.value._countAndFlagsBits = 0;
  v23.value._object = 0;
  v7.super.isa = v6;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_1000D8E50(v22, v23, v7, v24, 0xD000000000000027, v19);

  v8 = sub_1000DB910();

  [a1 setPlaceholder:v8];

  v9 = (v2 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v11 = *(v2 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 24);
  v10 = *(v2 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 32);
  sub_100006C7C(v9, v11);
  [a1 setKeyboardAppearance:(*(*(v10 + 8) + 8))(v11)];
  if (a2)
  {
    a2 = [a2 horizontalSizeClass] == 2;
  }

  v12 = v9[3];
  v13 = v9[4];
  sub_100006C7C(v9, v12);
  if ((*(v13 + 32))(v12, v13))
  {

    [a1 setTranslucent:a2];
  }

  else
  {
    v14 = objc_opt_self();
    v15 = [v14 traitCollectionWithUserInterfaceStyle:1];
    sub_10003AEC0();
    v16 = swift_getObjCClassFromMetadata();
    v17 = [v16 appearanceForTraitCollection:v15];
    [v17 setBarStyle:0];
    v18 = [v14 traitCollectionWithUserInterfaceStyle:2];
    v20 = [v16 appearanceForTraitCollection:v18];
    [v20 setBarStyle:1];
  }
}

uint64_t sub_100038A6C(void *a1)
{
  v3 = sub_1000D91C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = v25 - v9;
  v11 = [a1 userInterfaceStyle];
  if (!v11)
  {

    return v1;
  }

  if (v11 == 1)
  {
    v12 = *(v4 + 16);
    v12(v6, v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_locale, v3);
    sub_100006E20(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_systemTheme, v26);
    v1 = swift_allocObject();
    v12((v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_locale), v6, v3);
    v13 = OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme;
    v14 = [objc_opt_self() currentDevice];
    v15 = [v14 userInterfaceIdiom];

    v16 = v15 + 1;
    if ((v15 + 1) <= 6)
    {
      v17 = (v1 + v13);
      if (((1 << v16) & 0x5D) != 0)
      {
        sub_100006E20(v26, v25);
        v17[3] = &type metadata for LightTheme;
        v17[4] = &off_10010B468;
        v18 = swift_allocObject();
        *v17 = v18;
        v19 = a1;
        sub_100085474(v25, a1, v18 + 16);
LABEL_6:
        (*(v4 + 8))(v6, v3);
        v20 = OBJC_IVAR____TtC12StocksWidget10BaseStyler_systemTheme;
LABEL_10:
        sub_100023738(v26, v1 + v20);
        return v1;
      }

      if (v16 == 1)
      {
        sub_100006E20(v26, v25);
        v17[3] = &type metadata for DarkTheme;
        v17[4] = &off_10010A6D8;
        v23 = swift_allocObject();
        *v17 = v23;
        v24 = a1;
        sub_1000673E0(v25, a1, v23 + 16);
        goto LABEL_6;
      }
    }
  }

  else if (v11 == 2)
  {
    v21 = *(v4 + 16);
    v21(v10, v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_locale, v3);
    sub_100006E20(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_systemTheme, v26);
    v1 = swift_allocObject();
    v21((v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_locale), v10, v3);
    sub_1000A5D40(v26, a1, 2u, (v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme));
    (*(v4 + 8))(v10, v3);
    v20 = OBJC_IVAR____TtC12StocksWidget10BaseStyler_systemTheme;
    goto LABEL_10;
  }

  result = sub_1000DC0D0();
  __break(1u);
  return result;
}

uint64_t sub_100038E90()
{
  v1 = OBJC_IVAR____TtC12StocksWidget10BaseStyler_locale;
  v2 = sub_1000D91C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100006D0C((v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme));
  sub_100006D0C((v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_systemTheme));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BaseStyler(uint64_t a1)
{
  result = qword_1001161E8;
  if (!qword_1001161E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100038FA0(uint64_t a1)
{
  result = sub_1000D91C0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003903C()
{
  v1 = *v0;
  v2 = sub_1000D90D0();
  v3 = (v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 24);
  v5 = v3[4];
  sub_100006C7C(v3, v4);
  if (v2)
  {
    return (*(v5 + 200))(v4, v5);
  }

  else
  {
    return (*(v5 + 184))(v4, v5);
  }
}

uint64_t sub_1000390D4()
{
  v1 = *v0;
  v2 = sub_1000D90D0();
  v3 = (v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 24);
  v5 = v3[4];
  sub_100006C7C(v3, v4);
  if (v2)
  {
    return (*(v5 + 184))(v4, v5);
  }

  else
  {
    return (*(v5 + 200))(v4, v5);
  }
}

uint64_t sub_10003916C()
{
  v1 = *v0;
  v2 = sub_1000D90D0();
  v3 = (v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 24);
  v5 = v3[4];
  sub_100006C7C(v3, v4);
  if (v2)
  {
    return (*(v5 + 232))(v4, v5);
  }

  else
  {
    return (*(v5 + 224))(v4, v5);
  }
}

uint64_t sub_100039204()
{
  v1 = *v0;
  v2 = sub_1000D90D0();
  v3 = (v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 24);
  v5 = v3[4];
  sub_100006C7C(v3, v4);
  if (v2)
  {
    return (*(v5 + 224))(v4, v5);
  }

  else
  {
    return (*(v5 + 232))(v4, v5);
  }
}

uint64_t sub_10003929C()
{
  v1 = *v0;
  v2 = sub_1000D90D0();
  v3 = (v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 24);
  v5 = v3[4];
  sub_100006C7C(v3, v4);
  if (v2)
  {
    return (*(v5 + 248))(v4, v5);
  }

  else
  {
    return (*(v5 + 240))(v4, v5);
  }
}

uint64_t sub_100039334()
{
  v1 = *v0;
  v2 = sub_1000D90D0();
  v3 = (v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 24);
  v5 = v3[4];
  sub_100006C7C(v3, v4);
  if (v2)
  {
    return (*(v5 + 240))(v4, v5);
  }

  else
  {
    return (*(v5 + 248))(v4, v5);
  }
}

void sub_1000393F8(void *a1)
{
  v3 = (*v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v4 = v3[3];
  v5 = v3[4];
  sub_100006C7C(v3, v4);
  v6 = (*(v5 + 128))(v4, v5);
  [a1 setTintColor:v6];

  v7 = v3[3];
  v8 = v3[4];
  sub_100006C7C(v3, v7);
  v9 = (*(v8 + 48))(v7, v8);
  [a1 setBackgroundColor:v9];
}

void sub_10003950C(void *a1)
{
  v2 = *v1;
  v3 = [a1 customView];
  if (v3)
  {
    v4 = v3;
    v5 = *(v2 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 24);
    v6 = *(v2 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 32);
    sub_100006C7C((v2 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme), v5);
    v7 = (*(v6 + 128))(v5, v6);
    [v4 setTintColor:v7];
  }
}

uint64_t sub_1000395D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100038A6C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100039600()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 24))(v2, v3) & 1;
}

uint64_t sub_100039664()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 32))(v2, v3) & 1;
}

uint64_t sub_1000396C8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 40))(v2, v3);
}

uint64_t sub_100039728()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 56))(v2, v3);
}

uint64_t sub_100039788()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 64))(v2, v3);
}

uint64_t sub_1000397E8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 72))(v2, v3);
}

uint64_t sub_100039848()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 80))(v2, v3);
}

uint64_t sub_1000398A8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 88))(v2, v3);
}

uint64_t sub_100039908()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 96))(v2, v3);
}

uint64_t sub_100039968()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 104))(v2, v3);
}

uint64_t sub_1000399C8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 112))(v2, v3);
}

uint64_t sub_100039A28()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 120))(v2, v3);
}

uint64_t sub_100039A88()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 128))(v2, v3);
}

uint64_t sub_100039AE8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 136))(v2, v3);
}

uint64_t sub_100039B48()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 144))(v2, v3);
}

uint64_t sub_100039BA8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 152))(v2, v3);
}

uint64_t sub_100039C08()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 160))(v2, v3);
}

uint64_t sub_100039C68()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 168))(v2, v3);
}

uint64_t sub_100039CC8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 176))(v2, v3);
}

uint64_t sub_100039D28()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 184))(v2, v3);
}

uint64_t sub_100039D88()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 192))(v2, v3);
}

uint64_t sub_100039DE8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 200))(v2, v3);
}

uint64_t sub_100039E48()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 208))(v2, v3);
}

uint64_t sub_100039EA8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 216))(v2, v3);
}

uint64_t sub_100039F08()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 224))(v2, v3);
}

uint64_t sub_100039F68()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 232))(v2, v3);
}

uint64_t sub_100039FC8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 240))(v2, v3);
}

uint64_t sub_10003A028()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 248))(v2, v3);
}

uint64_t sub_10003A088()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 264))(v2, v3);
}

uint64_t sub_10003A0E8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 272))(v2, v3);
}

uint64_t sub_10003A148()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 280))(v2, v3);
}

uint64_t sub_10003A1A8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 288))(v2, v3);
}

uint64_t sub_10003A208()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 296))(v2, v3);
}

uint64_t sub_10003A268()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 304))(v2, v3);
}

uint64_t sub_10003A2C8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 312))(v2, v3);
}

uint64_t sub_10003A328()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 320))(v2, v3);
}

uint64_t sub_10003A388()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 328))(v2, v3);
}

uint64_t sub_10003A3E8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 336))(v2, v3);
}

uint64_t sub_10003A448()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 344))(v2, v3);
}

uint64_t sub_10003A4A8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 352))(v2, v3);
}

uint64_t sub_10003A508()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 360))(v2, v3);
}

uint64_t sub_10003A568()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 368))(v2, v3);
}

uint64_t sub_10003A5C8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 376))(v2, v3);
}

uint64_t sub_10003A628()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 384))(v2, v3) & 1;
}

uint64_t sub_10003A68C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 392))(v2, v3);
}

uint64_t sub_10003A6EC()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 400))(v2, v3);
}

uint64_t sub_10003A74C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 408))(v2, v3);
}

uint64_t sub_10003A7AC()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 416))(v2, v3);
}

uint64_t sub_10003A80C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 424))(v2, v3);
}

uint64_t sub_10003A86C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 432))(v2, v3);
}

uint64_t sub_10003A8CC()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 440))(v2, v3);
}

uint64_t sub_10003A92C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 448))(v2, v3);
}

uint64_t sub_10003A98C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 456))(v2, v3);
}

uint64_t sub_10003A9EC()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 464))(v2, v3);
}

uint64_t sub_10003AA4C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 472))(v2, v3);
}

uint64_t sub_10003AAAC()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 480))(v2, v3);
}

uint64_t sub_10003AB0C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 488))(v2, v3);
}

uint64_t sub_10003AB6C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 496))(v2, v3);
}

uint64_t sub_10003ABCC()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 504))(v2, v3);
}

uint64_t sub_10003AC30()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 48))(v2, v3);
}

uint64_t sub_10003AC90()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 520))(v2, v3);
}

uint64_t sub_10003ACF0()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 528))(v2, v3);
}

uint64_t sub_10003AD50()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 536))(v2, v3);
}

uint64_t sub_10003ADB0()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 544))(v2, v3);
}

uint64_t sub_10003AE10()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(*(v3 + 16) + 8))(v2);
}

uint64_t sub_10003AE68()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(*(v3 + 8) + 8))(v2);
}

unint64_t sub_10003AEC0()
{
  result = qword_100116280;
  if (!qword_100116280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100116280);
  }

  return result;
}

uint64_t sub_10003AF0C()
{
  sub_100006D0C((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10003B084()
{
  sub_100006D0C((v0 + 16));

  return swift_deallocObject();
}

void sub_10003B200(uint64_t a1)
{
  v88 = sub_1000DB9A0();
  v3 = *(v88 - 8);
  __chkstk_darwin(v88);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v89 = &v80 - v7;
  v102 = sub_1000D9090();
  v8 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000D8F30();
  v10 = *(v105 - 8);
  __chkstk_darwin(v105);
  v85 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v80 - v13;
  __chkstk_darwin(v14);
  v107 = &v80 - v15;
  v100 = type metadata accessor for DetailTimelineEntry(0);
  v93 = *(v100 - 8);
  __chkstk_darwin(v100);
  v111 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003D8D4(0);
  v18 = v17;
  v19 = *(v17 - 8);
  __chkstk_darwin(v17);
  v92 = (v80.n128_u64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10003F080(0, &qword_100116360, sub_10003D8D4, &type metadata accessor for Optional);
  __chkstk_darwin(v21 - 8);
  v104 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v103 = &v80 - v24;
  sub_1000D9D00();
  sub_10003F0F8(&qword_1001152E8, type metadata accessor for DemoTimelineManager, &unk_1000E01D0);
  v110 = v1;
  sub_1000D9D50();

  if (v113 != 1)
  {
    return;
  }

  v87 = v5;
  v95 = OBJC_IVAR____TtC12StocksWidget19DemoTimelineManager_logger;
  v98 = (v19 + 48);
  v99 = (v19 + 56);
  v25 = *(a1 + 16);
  v97 = (v8 + 8);
  v112 = (v10 + 8);
  v86 = (v3 + 8);
  v84 = (v10 + 16);
  v91 = a1;

  v26 = 0;
  v27.n128_u64[0] = 136446210;
  v80 = v27;
  v27.n128_u64[0] = 138543362;
  v90 = v27;
  v28 = v104;
  v29 = v105;
  v96 = v18;
  v94 = v25;
  while (1)
  {
    if (v26 == v25)
    {
      v30 = 1;
      v31 = v25;
      goto LABEL_11;
    }

    if (v26 >= v25)
    {
      break;
    }

    v32 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_25;
    }

    v33 = v91 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v26;
    v34 = *(v18 + 48);
    v35 = v92;
    *v92 = v26;
    sub_10003D940(v33, v35 + v34);
    sub_10003DA38(v35, v28, sub_10003D8D4);
    v30 = 0;
    v31 = v32;
LABEL_11:
    (*v99)(v28, v30, 1, v18);
    v36 = v103;
    sub_10003D9A4(v28, v103);
    if ((*v98)(v36, 1, v18) == 1)
    {

      return;
    }

    v108 = v31;
    v109 = 0;
    v37 = v111;
    sub_10003DA38(v36 + *(v18 + 48), v111, type metadata accessor for DetailTimelineEntry);
    v38 = v106;
    sub_10003C5AC(v106);
    v39 = (v37 + *(v100 + 20));
    v40 = v39[1];
    v113 = *v39;
    v114 = v40;

    v115._countAndFlagsBits = 95;
    v115._object = 0xE100000000000000;
    sub_1000DBA00(v115);
    v41 = [objc_allocWithZone(NSDateFormatter) init];
    v42 = sub_1000DB910();
    [v41 setDateFormat:v42];

    v43 = v101;
    sub_1000D9050();
    isa = sub_1000D9010().super.isa;
    (*v97)(v43, v102);
    v45 = [v41 stringFromDate:isa];

    v46 = sub_1000DB950();
    v48 = v47;

    v116._countAndFlagsBits = v46;
    v116._object = v48;
    sub_1000DBA00(v116);
    v49 = v107;

    v117._countAndFlagsBits = 0x6E6F736A2ELL;
    v117._object = 0xE500000000000000;
    sub_1000DBA00(v117);
    sub_1000D8EF0();

    v50 = *v112;
    (*v112)(v38, v29);
    sub_1000D8DE0();
    swift_allocObject();
    sub_1000D8DD0();
    sub_10003F0F8(&qword_100116368, type metadata accessor for DetailTimelineEntry, &unk_1000E0A94);
    v51 = v109;
    v52 = sub_1000D8DC0();
    if (v51)
    {

      swift_errorRetain();
      v61 = sub_1000DA350();
      v62 = sub_1000DBDB0();

      v63 = os_log_type_enabled(v61, v62);
      v29 = v105;
      if (v63)
      {
        v64 = swift_slowAlloc();
        v65 = v50;
        v66 = swift_slowAlloc();
        *v64 = v90.n128_u32[0];
        swift_errorRetain();
        v67 = _swift_stdlib_bridgeErrorToNSError();
        *(v64 + 4) = v67;
        *v66 = v67;
        _os_log_impl(&_mh_execute_header, v61, v62, "Failed writing entry to disk. error=%{public}@", v64, 0xCu);
        sub_10003DAFC(v66, &qword_100114B48, sub_100006CC0);

        v65(v107, v29);
      }

      else
      {

        v50(v49, v29);
      }

      sub_10003DAA0(v111);
    }

    else
    {
      v54 = v52;
      v55 = v53;
      v56 = v50;
      sub_1000DB990();
      v57 = sub_1000DB970();
      if (!v58)
      {
        goto LABEL_26;
      }

      v113 = v57;
      v114 = v58;
      v59 = v87;
      sub_1000DB990();
      sub_100017740();
      v60 = v107;
      sub_1000DBEB0();
      (*v86)(v59, v88);

      v68 = *v84;
      v69 = v85;
      v70 = v105;
      (*v84)(v85, v60, v105);
      v71 = sub_1000DA350();
      LODWORD(v109) = sub_1000DBDD0();
      if (os_log_type_enabled(v71, v109))
      {
        v72 = swift_slowAlloc();
        v81 = v72;
        v83 = swift_slowAlloc();
        v113 = v83;
        *v72 = v80.n128_u32[0];
        v82 = v71;
        v73 = v85;
        v68(v106, v85, v70);
        v74 = sub_1000DB9D0();
        v76 = v75;
        v56(v73, v70);
        v77 = sub_1000848C8(v74, v76, &v113);

        v78 = v81;
        *(v81 + 1) = v77;
        v79 = v82;
        _os_log_impl(&_mh_execute_header, v82, v109, "Demo entries to disk: %{public}s.", v78, 0xCu);
        sub_100006D0C(v83);

        sub_10003DB6C(v54, v55);
      }

      else
      {
        sub_10003DB6C(v54, v55);

        v56(v69, v70);
      }

      v56(v60, v70);
      sub_10003DAA0(v111);
      v29 = v70;
    }

    v18 = v96;
    v28 = v104;
    v25 = v94;
    v26 = v108;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}