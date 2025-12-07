uint64_t sub_100018A3C(uint64_t *a1, double a2)
{
  v2 = sub_100030284();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000306F4();
  v8 = v7;
  if (v6 == sub_1000306F4() && v8 == v9)
  {
    goto LABEL_14;
  }

  v11 = sub_100030D44();

  if ((v11 & 1) == 0)
  {
    v13 = sub_1000306F4();
    v15 = v14;
    if (v13 == sub_1000306F4() && v15 == v16)
    {
    }

    else
    {
      v18 = sub_100030D44();

      if ((v18 & 1) == 0)
      {
        v19 = sub_1000306F4();
        v21 = v20;
        if (v19 == sub_1000306F4() && v21 == v22)
        {
LABEL_14:

          v12 = 1;
          return v12 & 1;
        }

        v25 = sub_100030D44();

        if (v25)
        {
          goto LABEL_6;
        }

        v26 = sub_1000306F4();
        v28 = v27;
        if (v26 == sub_1000306F4() && v28 == v29)
        {
LABEL_22:

LABEL_24:
          v12 = 0;
          return v12 & 1;
        }

        v30 = sub_100030D44();

        if (v30)
        {
          goto LABEL_24;
        }

        v31 = sub_1000306F4();
        v33 = v32;
        if (v31 == sub_1000306F4() && v33 == v34)
        {
        }

        else
        {
          v35 = sub_100030D44();

          if ((v35 & 1) == 0)
          {
            v36 = sub_1000306F4();
            v38 = v37;
            if (v36 != sub_1000306F4() || v38 != v39)
            {
              v40 = sub_100030D44();

              if (v40)
              {
                goto LABEL_24;
              }

              v41 = sub_1000306F4();
              v43 = v42;
              if (v41 != sub_1000306F4() || v43 != v44)
              {
                sub_100030D44();
              }
            }

            goto LABEL_22;
          }
        }

        sub_100030274();
LABEL_17:
        sub_10001B2E8(v23);
        v12 = sub_100030AC4();
        (*(v3 + 8))(v5, v2);
        return v12 & 1;
      }
    }

    sub_100030264();
    goto LABEL_17;
  }

LABEL_6:
  v12 = 1;
  return v12 & 1;
}

id sub_100018E60(void *a1, double a2)
{
  v3 = sub_10002FE54();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008944(&qword_1000423B0, &qword_100034340);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = a1;
  sub_100030464();
  v11 = sub_100030454();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_100008BB8(v9, &qword_1000423B0, &qword_100034340);
    v13 = 0;
  }

  else
  {
    sub_100030444();
    (*(v12 + 8))(v9, v11);
    sub_10002FE34();
    v13 = v14;
    (*(v4 + 8))(v6, v3);
  }

  sub_1000308F4();
  if (v13)
  {
    v15 = sub_1000306C4();
  }

  else
  {
    v15 = 0;
  }

  sub_100030324();
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = sub_1000306C4();

  v18 = [v16 initWithIdentifier:v15 displayString:v17];

  v19 = sub_10001A1B8(v10);
  if (v19)
  {
    v20 = v19;
    [v18 setDisplayImage:v19];
  }

  return v18;
}

void sub_100019110(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1000304B4();
  v50 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v51 = &v37 - v11;
  v12 = sub_1000304E4();
  v41 = *(v12 - 8);
  v42 = v12;
  __chkstk_darwin(v12);
  v40 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000304C4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == enum case for REMAccountsListDataView.Model.AccountChild.list(_:))
  {
    (*(v15 + 96))(v18, v14);
    v20 = *v18;
    sub_100008944(&unk_100041EB0, &unk_1000340E0);
    v21 = swift_allocObject();
    *(v21 + 1) = xmmword_100033D00;
    v22 = sub_1000196A4(v20);
LABEL_5:
    v21[4] = v22;

LABEL_6:
    *a3 = v21;
    return;
  }

  if (v19 == enum case for REMAccountsListDataView.Model.AccountChild.customSmartList(_:))
  {
    (*(v15 + 96))(v18, v14);
    v20 = *v18;
    sub_100008944(&unk_100041EB0, &unk_1000340E0);
    v21 = swift_allocObject();
    *(v21 + 1) = xmmword_100033D00;
    v22 = sub_1000199E8(v20);
    goto LABEL_5;
  }

  if (v19 == enum case for REMAccountsListDataView.Model.AccountChild.group(_:))
  {
    (*(v15 + 96))(v18, v14);
    v23 = v41;
    v24 = v40;
    v25 = v42;
    (*(v41 + 32))();
    v26 = sub_1000304D4();
    v27 = *(v26 + 16);
    if (!v27)
    {

      (*(v23 + 8))(v24, v25);
      v21 = _swiftEmptyArrayStorage;
      goto LABEL_6;
    }

    v47 = a2;
    v38 = a3;
    v39 = v3;
    v52 = _swiftEmptyArrayStorage;
    v48 = v27;
    sub_100030BF4();
    v28 = 0;
    v29 = *(v50 + 80);
    v49 = v26;
    v46 = v26 + ((v29 + 32) & ~v29);
    v45 = v50 + 88;
    v44 = enum case for REMAccountsListDataView.Model.GroupChild.list(_:);
    v43 = enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:);
    v30 = (v50 + 96);
    v31 = (v50 + 8);
    while (v28 < *(v49 + 16))
    {
      v33 = v50;
      v34 = v51;
      v35 = *(v50 + 16);
      v35(v51, v46 + *(v50 + 72) * v28, v7);
      v35(v9, v34, v7);
      v36 = (*(v33 + 88))(v9, v7);
      if (v36 == v44)
      {
        (*v30)(v9, v7);
        v32 = *v9;
        sub_1000196A4(*v9);
      }

      else
      {
        if (v36 != v43)
        {
          goto LABEL_19;
        }

        (*v30)(v9, v7);
        v32 = *v9;
        sub_1000199E8(*v9);
      }

      ++v28;

      (*v31)(v51, v7);
      sub_100030BD4();
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
      if (v48 == v28)
      {
        (*(v41 + 8))(v40, v42);

        v21 = v52;
        a3 = v38;
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_19:
    sub_100030D34();
    __break(1u);
  }

  sub_100030D34();
  __break(1u);
}

id sub_1000196A4(void *a1)
{
  v2 = sub_1000300A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002FE54();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 objectID];
  v12 = [v11 urlRepresentation];

  sub_10002FE44();
  sub_10002FE34();
  (*(v7 + 8))(v10, v6);
  v13 = [a1 displayName];
  if (!v13)
  {
    sub_1000306F4();
    v13 = sub_1000306C4();
  }

  sub_100030324();
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = sub_1000306C4();

  v16 = [v14 initWithIdentifier:v15 displayString:v13];

  v17 = [a1 appearanceContext];
  v18 = [v17 badge];

  v19 = [a1 color];
  (*(v3 + 104))(v5, enum case for TTRListBadgeView.Shape.round(_:), v2);
  v20 = sub_10001A340(v18, v19, v5);

  (*(v3 + 8))(v5, v2);
  if (v20)
  {
    [v16 setDisplayImage:v20];
  }

  v21 = v16;
  v22 = [a1 sharingStatusText];
  [v21 setSubtitleString:v22];

  return v21;
}

id sub_1000199E8(void *a1)
{
  v2 = sub_1000300A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002FE54();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 objectID];
  v12 = [v11 urlRepresentation];

  sub_10002FE44();
  sub_10002FE34();
  (*(v7 + 8))(v10, v6);
  v13 = [a1 name];
  if (!v13)
  {
    sub_1000306F4();
    v13 = sub_1000306C4();
  }

  sub_100030324();
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = sub_1000306C4();

  v16 = [v14 initWithIdentifier:v15 displayString:v13];

  v17 = [a1 customContext];
  v18 = [v17 badge];
  v19 = [v17 color];

  sub_100030094();
  v20 = sub_10001A340(v18, v19, v5);

  (*(v3 + 8))(v5, v2);
  if (v20)
  {
    [v16 setDisplayImage:v20];
  }

  [v16 setSubtitleString:0];
  return v16;
}

uint64_t sub_100019CE8(uint64_t a1, uint64_t (*a2)(void, uint64_t))
{
  if (qword_100041AF0 != -1)
  {
    swift_once();
  }

  v4 = sub_100030664();
  sub_1000089D8(v4, qword_100042350);
  swift_errorRetain();
  v5 = sub_100030654();
  v6 = sub_100030864();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_100030D64();
    v11 = sub_10002B88C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Widget provideListOptions failed error %s", v7, 0xCu);
    sub_100008D70(v8);
  }

  return a2(0, a1);
}

id sub_100019F54(void *a1)
{
  v2 = v1;
  if (qword_100041AF0 != -1)
  {
    swift_once();
  }

  v4 = sub_100030664();
  sub_1000089D8(v4, qword_100042350);
  v5 = a1;
  v6 = sub_100030654();
  v7 = sub_100030884();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_1000306F4();
    v14 = v13;

    v15 = sub_10002B88C(v12, v14, &v23);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Widget defaultList {intent: %s}", v8, 0xCu);
    sub_100008D70(v9);
  }

  v16 = *(v2 + OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_dataSource + 24);
  v17 = *(v2 + OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_dataSource + 32);
  sub_100008A10((v2 + OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_dataSource), v16);
  v18 = (*(v17 + 72))(v16, v17);
  if (!v18)
  {
    return sub_100018E60(REMSmartListTypeToday, v19);
  }

  v20 = v18;
  v21 = sub_1000196A4(v18);

  return v21;
}

uint64_t sub_10001A1B8(void *a1)
{
  v2 = v1;
  v13 = 0;
  sub_10001AB2C();
  v4 = sub_100030904();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v2;
  v5[4] = &v13;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10001AD2C;
  *(v6 + 24) = v5;
  aBlock[4] = sub_10001B610;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A914;
  aBlock[3] = &unk_10003D8E8;
  v7 = _Block_copy(aBlock);
  v8 = a1;
  v9 = v2;

  dispatch_sync(v4, v7);

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

uint64_t sub_10001A340(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000300A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v23 = 0;
  sub_10001AB2C();
  v11 = sub_100030904();
  (*(v9 + 16))(&aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v4;
  *(v13 + 3) = a1;
  *(v13 + 4) = a2;
  (*(v9 + 32))(&v13[v12], &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *&v13[(v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = &v23;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10001AC58;
  *(v14 + 24) = v13;
  aBlock[4] = sub_10001ACEC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A914;
  aBlock[3] = &unk_10003D870;
  v15 = _Block_copy(aBlock);
  v16 = a2;

  v17 = v4;
  v18 = a1;

  dispatch_sync(v11, v15);

  _Block_release(v15);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v20 = v23;

    return v20;
  }

  return result;
}

void sub_10001A5AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void **a5)
{
  v31 = a5;
  v32 = a4;
  v7 = sub_1000300A4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002FFF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(sub_1000300E4()) initWithFrame:{0.0, 0.0, 32.0, 32.0}];
  if (!a2)
  {
    goto LABEL_7;
  }

  v16 = [a2 emoji];
  if (!v16)
  {
    v20 = [a2 emblem];
    if (v20)
    {
      v21 = v20;
      sub_100030914();

      goto LABEL_8;
    }

LABEL_7:
    sub_100030914();
LABEL_8:
    sub_1000300C4();
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v17 = v16;
  sub_1000306F4();
  v30 = v11;

  v11 = v30;
  sub_1000300B4();
  sub_100030084();
  if (!a3)
  {
LABEL_4:
    sub_100030004();
    v18 = v15;
    sub_10002FFD4();
    v19 = sub_10002FFE4();
    (*(v12 + 8))(v14, v11);
    goto LABEL_10;
  }

LABEL_9:
  v22 = v15;
  v19 = sub_100030A74();
LABEL_10:
  [v15 setTintColor:v19];

  (*(v8 + 16))(v10, v32, v7);
  sub_1000300D4();
  sub_100030A04();
  [v15 layoutIfNeeded];
  v23 = sub_1000309F4();
  if (v23)
  {
    v24 = v23;
    v25 = [objc_opt_self() imageWithUIImage:v23];
    v26 = v31;
    v27 = *v31;
    *v31 = v25;

    if (*v26)
    {
      v28 = *v26;
      [v28 _setRenderingMode:1];
    }

    v15 = v24;
  }
}

void sub_10001A93C(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = sub_1000308E4();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1000308D4();
    if (v6)
    {
      v7 = v6;
      v8 = [objc_allocWithZone(sub_1000300E4()) initWithFrame:{0.0, 0.0, 32.0, 32.0}];
      v15 = v5;
      sub_1000300C4();
      [v8 setTintColor:v7];
      v9 = sub_1000309F4();
      if (v9)
      {
        v10 = v9;
        v11 = [objc_opt_self() imageWithUIImage:v9];
        v12 = *a3;
        *a3 = v11;

        if (*a3)
        {
          v13 = *a3;
          [v13 _setRenderingMode:1];
        }
      }

      else
      {
        v10 = v15;
        v15 = v8;
      }

      v14 = v15;
    }

    else
    {
      v14 = v5;
    }
  }
}

unint64_t sub_10001AB2C()
{
  result = qword_1000421C0;
  if (!qword_1000421C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000421C0);
  }

  return result;
}

uint64_t sub_10001AB78()
{
  v1 = sub_1000300A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10001AC58()
{
  v1 = *(sub_1000300A4() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  sub_10001A5AC(v3, v4, v6, v0 + v2, v5);
}

uint64_t sub_10001AD14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001AD48()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AD88()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001ADE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001AE18(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_100008944(&qword_1000423C0, &qword_100034358);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_10001AE88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008944(&qword_1000420D0, &unk_1000341E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001AF18()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001AF58(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v34 = *(a1 + 16);
  if (!v34)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = 0;
  v7 = *(sub_1000304C4() - 8);
  v33 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v8 = _swiftEmptyArrayStorage;
  v32 = *(v7 + 72);
  while (1)
  {
    v10 = v4;
    sub_100019110(v33 + v32 * v6, a2, &v39);
    if (v4)
    {

      return v8;
    }

    v11 = v39;
    v12 = v39 >> 62;
    if (v39 >> 62)
    {
      v13 = sub_100030CE4();
    }

    else
    {
      v13 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      v30 = sub_100030CE4();
      v16 = v30 + v13;
      if (__OFADD__(v30, v13))
      {
LABEL_33:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 + v13;
      if (__OFADD__(v15, v13))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v37 = v13;
    if (result)
    {
      if (!v14)
      {
        v17 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_100030CE4();
      goto LABEL_16;
    }

    if (v14)
    {
      goto LABEL_15;
    }

LABEL_16:
    result = sub_100030BB4();
    v8 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v12)
    {
      break;
    }

    v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v19 >> 1) - v18) < v37)
    {
      goto LABEL_38;
    }

    v36 = v8;
    v22 = v17 + 8 * v18 + 32;
    v31 = v17;
    if (v12)
    {
      if (v20 < 1)
      {
        goto LABEL_40;
      }

      sub_10001B284();
      for (i = 0; i != v20; ++i)
      {
        sub_100008944(&qword_1000423D8, &qword_100034378);
        v24 = sub_10002C184(v38, i, v11);
        v26 = *v25;
        (v24)(v38, 0);
        *(v22 + 8 * i) = v26;
      }
    }

    else
    {
      sub_100030324();
      swift_arrayInitWithCopy();
    }

    v4 = v10;
    v8 = v36;
    if (v37 >= 1)
    {
      v27 = *(v31 + 16);
      v28 = __OFADD__(v27, v37);
      v29 = v27 + v37;
      if (v28)
      {
        goto LABEL_39;
      }

      *(v31 + 16) = v29;
    }

LABEL_4:
    if (++v6 == v34)
    {
      return v8;
    }
  }

  v21 = v17;
  result = sub_100030CE4();
  v17 = v21;
  v20 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v37 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_10001B284()
{
  result = qword_1000423E0;
  if (!qword_1000423E0)
  {
    sub_100008C7C(&qword_1000423D8, &qword_100034378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000423E0);
  }

  return result;
}

unint64_t sub_10001B2E8(double a1)
{
  result = qword_1000423E8;
  if (!qword_1000423E8)
  {
    sub_100030284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000423E8);
  }

  return result;
}

void sub_10001B340(void *a1, uint64_t a2)
{
  sub_1000305A4();
  v4 = sub_100030594();
  v5 = [a1 list];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 identifier];
  }

  else
  {
    v7 = 0;
  }

  [v4 setList:v7];

  if (qword_100041AF0 != -1)
  {
    swift_once();
  }

  v8 = sub_100030664();
  sub_1000089D8(v8, qword_100042350);
  v9 = a1;
  v25 = v4;
  v10 = sub_100030654();
  v11 = sub_100030884();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = v9;
    v14 = [v13 description];
    v15 = sub_1000306F4();
    v17 = v16;

    v18 = sub_10002B88C(v15, v17, &v26);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    v19 = v25;
    v20 = [v19 description];
    v21 = sub_1000306F4();
    v23 = v22;

    v24 = sub_10002B88C(v21, v23, &v26);

    *(v12 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v10, v11, "Widget handle {intent: %s, response: %s}", v12, 0x16u);
    swift_arrayDestroy();
  }

  (*(a2 + 16))(a2, v25);
}

uint64_t sub_10001B624()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_1000423F0);
  v1 = sub_1000089D8(v0, qword_1000423F0);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10001B6EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_1000303D4();
  v6 = sub_1000303B4();
  v52 = v5;
  sub_100008944(&qword_100041F50, &qword_100034118);
  sub_10002FF24();
  sub_100026AD0();
  sub_100026928(&qword_1000426B8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v7 = sub_100030764();

  v8 = v7 >> 62;
  if (v7 >> 62)
  {
    v9 = sub_100030CE4();
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  if (v6 >> 62)
  {
    goto LABEL_54;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_55:

    if (qword_100041AF8 == -1)
    {
      goto LABEL_56;
    }

    goto LABEL_61;
  }

  while (1)
  {
LABEL_5:
    if (v8)
    {
      v10 = sub_100030CE4();
      if (!v9)
      {
        break;
      }
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        break;
      }
    }

    if (v10 != 1)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = sub_100030BA4();
LABEL_13:
      v12 = v11;

      sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
      v13 = v12;
      v14 = sub_100030814();
      if (qword_100041AF8 != -1)
      {
        swift_once();
      }

      v15 = sub_100030664();
      sub_1000089D8(v15, qword_1000423F0);
      isa = v13;
      v17 = v14;
      v18 = sub_100030654();
      v19 = sub_100030884();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412546;
        v22 = [(objc_class *)isa objectID];
        *(v20 + 4) = v22;
        *(v20 + 12) = 2112;
        *(v20 + 14) = v17;
        *v21 = v22;
        v21[1] = v17;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v18, v19, "Got one REMList(%@) matches the name {result: .success(%@)}", v20, 0x16u);
        sub_100008944(&unk_100041BF0, &unk_100033DB0);
        swift_arrayDestroy();
      }

LABEL_28:

      sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
      v34 = [swift_getObjCClassFromMetadata() successWithResolvedTaskList:v17];

LABEL_50:
      goto LABEL_51;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v7 + 32);
      goto LABEL_13;
    }

    __break(1u);
LABEL_54:
    if (!sub_100030CE4())
    {
      goto LABEL_55;
    }
  }

  if (v6 >> 62)
  {
    if (sub_100030CE4() != 1)
    {
      goto LABEL_34;
    }

    if (sub_100030CE4())
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
LABEL_34:

    if (v10)
    {
      v52 = _swiftEmptyArrayStorage;
      sub_100030BF4();
      if (v10 < 0)
      {
        __break(1u);
        return;
      }

      sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
      v35 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          sub_100030BA4();
        }

        else
        {
          v36 = *(v7 + 8 * v35 + 32);
        }

        ++v35;
        sub_100030814();
        sub_100030BD4();
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
      }

      while (v10 != v35);
    }

    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v37 = sub_100030664();
    sub_1000089D8(v37, qword_1000423F0);

    v38 = sub_100030654();
    v39 = sub_100030884();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v52 = v41;
      *v40 = 134218242;
      if (v8)
      {
        v42 = sub_100030CE4();
      }

      else
      {
        v42 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v40 + 4) = v42;

      *(v40 + 12) = 2080;
      sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
      v43 = sub_1000307A4();
      v45 = sub_10002B88C(v43, v44, &v52);

      *(v40 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "Got %ld REMList matches the name {result: .disambiguation(%s)}", v40, 0x16u);
      sub_100008D70(v41);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    isa = sub_100030784().super.isa;

    v34 = [ObjCClassFromMetadata disambiguationWithTaskListsToDisambiguate:isa];
    goto LABEL_50;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_34;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

LABEL_21:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = sub_100030BA4();
    goto LABEL_24;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v6 + 32);
LABEL_24:
    v25 = v24;

    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    v26 = v25;
    v27 = sub_1000307F4();
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v28 = sub_100030664();
    sub_1000089D8(v28, qword_1000423F0);
    isa = v26;
    v17 = v27;
    v18 = sub_100030654();
    v29 = sub_100030884();

    if (os_log_type_enabled(v18, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412546;
      v32 = [(objc_class *)isa objectID];
      *(v30 + 4) = v32;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v17;
      *v31 = v32;
      v31[1] = v17;
      v33 = v17;
      _os_log_impl(&_mh_execute_header, v18, v29, "Found REMSmartList matching the name {objectID: %@, result: .success(%@)}", v30, 0x16u);
      sub_100008944(&unk_100041BF0, &unk_100033DB0);
      swift_arrayDestroy();
    }

    goto LABEL_28;
  }

  __break(1u);
LABEL_61:
  swift_once();
LABEL_56:
  v48 = sub_100030664();
  sub_1000089D8(v48, qword_1000423F0);
  v49 = sub_100030654();
  v50 = sub_100030884();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "No REMList or REMSmartList matches the name, prompt for creation {result: .confirmationRequired(.listShouldBeCreated)}", v51, 2u);
  }

  v34 = [objc_opt_self() confirmationRequiredWithTaskListToConfirm:a2 forReason:1];
LABEL_51:
  v47 = v34;
  a3();
}

void sub_10001C0C0(id *a1)
{
  v1 = [*a1 remObjectID];
  v2 = [v1 uuid];

  sub_10002FF14();
}

void sub_10001C138(unint64_t a1, uint64_t a2, uint64_t a3, id a4, uint64_t a5, void (*a6)(void))
{
  v8 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_30:
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v52 = sub_100030664();
    sub_1000089D8(v52, qword_1000423F0);

    v53 = sub_100030654();
    v54 = sub_100030884();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v55 = 136315650;
      sub_100008D28(0, &qword_100042658, INPerson_ptr);
      v56 = sub_1000307A4();
      v58 = sub_10002B88C(v56, v57, &v67);

      *(v55 + 4) = v58;
      *(v55 + 12) = 2080;
      v59 = sub_1000307A4();
      v61 = sub_10002B88C(v59, v60, &v67);

      *(v55 + 14) = v61;
      *(v55 + 22) = 2080;
      v62 = sub_1000307A4();
      v64 = sub_10002B88C(v62, v63, &v67);

      *(v55 + 24) = v64;
      _os_log_impl(&_mh_execute_header, v53, v54, "No list shared with the specified .targetTaskListMembers {targetTaskListMembers: %s, emails: %s, phones: %s, result: .disambiguateDueToNoDefaultList}", v55, 0x20u);
      swift_arrayDestroy();
    }

    v27 = sub_10001CAEC();
    goto LABEL_35;
  }

  if (!sub_100030CE4())
  {
    goto LABEL_30;
  }

  v9 = sub_100030CE4();
LABEL_3:
  if (!v9)
  {
LABEL_19:
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v33 = sub_100030664();
    sub_1000089D8(v33, qword_1000423F0);

    v34 = sub_100030654();
    v35 = sub_100030884();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v36 = 134219010;
      if (v8)
      {
        v37 = sub_100030CE4();
      }

      else
      {
        v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v36 + 4) = v37;

      *(v36 + 12) = 2080;
      sub_100008D28(0, &qword_100042658, INPerson_ptr);
      v38 = sub_1000307A4();
      v40 = sub_10002B88C(v38, v39, &v67);

      *(v36 + 14) = v40;
      *(v36 + 22) = 2080;
      v41 = sub_1000307A4();
      v43 = sub_10002B88C(v41, v42, &v67);

      *(v36 + 24) = v43;
      *(v36 + 32) = 2080;
      v44 = sub_1000307A4();
      v46 = sub_10002B88C(v44, v45, &v67);

      *(v36 + 34) = v46;
      *(v36 + 42) = 2080;
      sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
      v47 = sub_1000307A4();
      v49 = sub_10002B88C(v47, v48, &v67);

      *(v36 + 44) = v49;
      _os_log_impl(&_mh_execute_header, v34, v35, "Got %ld REMList matching .targetTaskListMembers {targetTaskListMembers: %s, emails: %s, phones: %s, result: .disambiguation(%s)}", v36, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    isa = sub_100030784().super.isa;

    v27 = [ObjCClassFromMetadata disambiguationWithTaskListsToDisambiguate:isa];

    goto LABEL_35;
  }

  if (v9 == 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      sub_100030BA4();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v10 = *(a1 + 32);
    }

    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    v9 = sub_100030814();
    if (qword_100041AF8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

  v67 = _swiftEmptyArrayStorage;
  sub_100030BF4();
  if ((v9 & 0x8000000000000000) == 0)
  {
    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v28 = 0;
      do
      {
        v29 = v28 + 1;
        sub_100030BA4();
        sub_100030814();
        sub_100030BD4();
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
        v28 = v29;
      }

      while (v9 != v29);
    }

    else
    {
      v30 = (a1 + 32);
      do
      {
        v31 = *v30++;
        v32 = v31;
        sub_100030814();
        sub_100030BD4();
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
        --v9;
      }

      while (v9);
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_40:
  swift_once();
LABEL_9:
  v11 = sub_100030664();
  sub_1000089D8(v11, qword_1000423F0);

  v12 = v9;
  v13 = sub_100030654();
  v14 = sub_100030884();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v15 = 136315906;
    sub_100008D28(0, &qword_100042658, INPerson_ptr);
    v17 = sub_1000307A4();
    v65 = a6;
    v19 = sub_10002B88C(v17, v18, &v67);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = sub_1000307A4();
    v22 = sub_10002B88C(v20, v21, &v67);

    *(v15 + 14) = v22;
    *(v15 + 22) = 2080;
    v23 = sub_1000307A4();
    v25 = sub_10002B88C(v23, v24, &v67);
    a6 = v65;

    *(v15 + 24) = v25;
    *(v15 + 32) = 2112;
    *(v15 + 34) = v12;
    *v16 = v12;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Found exactly 1 list matching .targetTaskListMembers, using that. {targetTaskListMembers: %s, emails: %s, phones: %s, result: .success(%@)}", v15, 0x2Au);
    sub_100008BB8(v16, &unk_100041BF0, &unk_100033DB0);

    swift_arrayDestroy();
  }

  sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
  v27 = [swift_getObjCClassFromMetadata() successWithResolvedTaskList:v12];

LABEL_35:
  v66 = v27;
  a6();
}

id sub_10001CAEC()
{
  v1 = sub_100008944(&qword_100041BB0, &unk_1000340A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v4);
  v7 = &v59 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_store);
  v60 = 0;
  v9 = [v8 fetchEligibleDefaultListsWithError:{&v60, v5}];
  v10 = v60;
  if (!v9)
  {
    v17 = v60;
    sub_10002FE24();

    swift_willThrow();
    goto LABEL_42;
  }

  v11 = v9;
  v59 = v8;
  sub_100008D28(0, &qword_100041F48, REMList_ptr);
  v12 = sub_100030794();
  v13 = v10;

  if (!(v12 >> 62))
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_13:

    v12 = _swiftEmptyArrayStorage;
LABEL_14:
    if (v12 >> 62)
    {
      if (sub_100030CE4())
      {
        v18 = sub_100030CE4();
LABEL_16:
        if (v18 != 1)
        {
          if (qword_100041AF8 != -1)
          {
            swift_once();
          }

          v25 = sub_100030664();
          sub_1000089D8(v25, qword_1000423F0);

          v26 = sub_100030654();
          v27 = sub_100030884();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 134217984;
            if (v12 >> 62)
            {
              v29 = sub_100030CE4();
            }

            else
            {
              v29 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v28 + 4) = v29;

            _os_log_impl(&_mh_execute_header, v26, v27, "Disambiguating with some lists {count: %ld}", v28, 0xCu);
          }

          else
          {
          }

          sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
          isa = sub_100030784().super.isa;

          v32 = [ObjCClassFromMetadata disambiguationWithTaskListsToDisambiguate:isa];

          return v32;
        }

        if (qword_100041AF8 == -1)
        {
          goto LABEL_18;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_16;
      }
    }

    v61._countAndFlagsBits = 0x7265646E696D6552;
    v62._object = 0x80000001000350C0;
    v61._object = 0xE900000000000073;
    v62._countAndFlagsBits = 0xD00000000000006ALL;
    sub_1000301E4(v61, v62);
    v33 = sub_100030724();

    v34 = sub_10002FE04();
    v35 = *(v34 - 8);
    v36 = *(v35 + 56);
    v36(v7, 1, 1, v34);
    v36(v3, 1, 1, v34);
    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    v37.super.isa = sub_100030784().super.isa;
    v38 = *(v35 + 48);
    v39 = 0;
    if (v38(v7, 1, v34) != 1)
    {
      v39 = sub_10002FD94().super.isa;
      (*(v35 + 8))(v7, v34);
    }

    if (v38(v3, 1, v34) == 1)
    {
      v40 = 0;
    }

    else
    {
      v40 = sub_10002FD94().super.isa;
      (*(v35 + 8))(v3, v34);
    }

    v12 = [objc_allocWithZone(INTaskList) initWithTitle:v33 tasks:v37.super.isa groupName:0 createdDateComponents:v39 modifiedDateComponents:v40 identifier:0];

    v60 = 0;
    v41 = [v59 fetchDefaultAccountWithError:&v60];
    v3 = v41;
    if (!v60)
    {
      if (!v41)
      {
        if (qword_100041AF8 != -1)
        {
          swift_once();
        }

        v55 = sub_100030664();
        sub_1000089D8(v55, qword_1000423F0);
        v56 = sub_100030654();
        v57 = sub_100030864();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v56, v57, "No lists found in fetchEligibleDefaultLists and no default account available. Responding with .success so that we can fail the user in handle() with .failureRequiringAppLaunch. {result: .success}", v58, 2u);
        }

        sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
        v32 = [swift_getObjCClassFromMetadata() successWithResolvedTaskList:v12];

        return v32;
      }

      if (qword_100041AF8 == -1)
      {
        goto LABEL_50;
      }

      goto LABEL_63;
    }

    v60;

    swift_willThrow();
LABEL_42:
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v42 = sub_100030664();
    sub_1000089D8(v42, qword_1000423F0);
    swift_errorRetain();
    v43 = sub_100030654();
    v44 = sub_100030864();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v60 = v46;
      *v45 = 136315138;
      swift_getErrorValue();
      v47 = sub_100030D64();
      v49 = sub_10002B88C(v47, v48, &v60);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "Error trying to retrieve eligible default lists {error: %s}", v45, 0xCu);
      sub_100008D70(v46);
    }

    sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
    v24 = [swift_getObjCClassFromMetadata() unsupported];

    return v24;
  }

  v14 = sub_100030CE4();
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_4:
  v60 = _swiftEmptyArrayStorage;
  sub_100030BF4();
  if ((v14 & 0x8000000000000000) == 0)
  {
    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    v15 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        sub_100030BA4();
      }

      else
      {
        v16 = *(v12 + 8 * v15 + 32);
      }

      ++v15;
      sub_100030814();
      sub_100030BD4();
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
    }

    while (v14 != v15);

    v12 = v60;
    goto LABEL_14;
  }

  __break(1u);
LABEL_60:
  swift_once();
LABEL_18:
  v19 = sub_100030664();
  sub_1000089D8(v19, qword_1000423F0);
  v20 = sub_100030654();
  v21 = sub_100030884();
  if (os_log_type_enabled(v20, v21))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Got exactly 1 list from fetchEligibleDefaultLists, using that. {result: .confirmationRequired}", v3, 2u);
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v22 = sub_100030BA4();
    goto LABEL_23;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v12 + 32);
LABEL_23:
    v23 = v22;

    sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
    v24 = [swift_getObjCClassFromMetadata() confirmationRequiredWithTaskListToConfirm:v23];

    return v24;
  }

  __break(1u);
LABEL_63:
  swift_once();
LABEL_50:
  v51 = sub_100030664();
  sub_1000089D8(v51, qword_1000423F0);
  v52 = sub_100030654();
  v53 = sub_100030884();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "No lists found in fetchEligibleDefaultLists(), prompt for creation {result: .confirmationRequired(.listShouldBeCreated)}", v54, 2u);
  }

  v32 = [objc_opt_self() confirmationRequiredWithTaskListToConfirm:v12 forReason:1];
  return v32;
}

void sub_10001D5A8(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100041AF8 != -1)
  {
    swift_once();
  }

  v6 = sub_100030664();
  sub_1000089D8(v6, qword_1000423F0);
  v7 = a1;
  v8 = sub_100030654();
  v9 = sub_100030884();

  if (os_log_type_enabled(v8, v9))
  {
    v24 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    v12 = [v7 taskTitles];
    if (v12)
    {
      v13 = v12;
      sub_100008D28(0, &unk_100042590, INSpeakableString_ptr);
      sub_100030794();
    }

    sub_100008944(&qword_100042588, &unk_1000344C0);
    v15 = sub_100030A94();
    v17 = v16;

    v18 = sub_10002B88C(v15, v17, &v25);

    *(v10 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "SiriKit asked for resolving task titles {taskTitles: %s}", v10, 0xCu);
    sub_100008D70(v11);

    a2 = v24;
  }

  else
  {
  }

  __chkstk_darwin(v14);
  sub_100008944(&unk_100042570, &unk_1000344A8);
  swift_allocObject();
  sub_100030624();
  v19 = sub_1000305B4();
  sub_100008944(&qword_100041C00, &qword_100033DC0);
  sub_1000305F4();

  *(swift_allocObject() + 16) = v7;
  v20 = v7;
  v21 = sub_1000305B4();
  sub_100008944(&qword_100042580, &qword_1000344B8);
  sub_1000305F4();

  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;

  v23 = sub_1000305B4();
  sub_1000305F4();
}

uint64_t sub_10001D954@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100008944(&unk_1000425B0, &qword_1000344D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  if (*a1)
  {
    sub_1000308C4();
    v10 = sub_1000308B4();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v10 = sub_1000308B4();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  sub_100008B50(v9, v6, &unk_1000425B0, &qword_1000344D8);
  sub_1000308B4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_100008BB8(v9, &unk_1000425B0, &qword_1000344D8);
    result = sub_100008BB8(v6, &unk_1000425B0, &qword_1000344D8);
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v13 = sub_1000308A4();
    v15 = v14;
    sub_100008BB8(v9, &unk_1000425B0, &qword_1000344D8);
    *a2 = v13;
    a2[1] = v15;
    return (*(v11 + 8))(v6, v10);
  }

  return result;
}

id sub_10001DB88@<X0>(id a1@<X1>, uint64_t *a2@<X0>, char *a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = [a1 taskTitles];
  v43 = a3;
  if (!v6)
  {
    a3 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v7 = v6;
  sub_100008D28(0, &unk_100042590, INSpeakableString_ptr);
  v8 = sub_100030794();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_21:

    a3 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v9 = sub_100030CE4();
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_4:
  sub_100021424(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v41 = v5;
  v42 = v4;
  v10 = 0;
  a3 = _swiftEmptyArrayStorage;
  v11 = v8;
  v44 = v8 & 0xC000000000000001;
  v12 = v8;
  v13 = v9;
  do
  {
    if (v44)
    {
      v14 = sub_100030BA4();
    }

    else
    {
      v14 = *(v11 + 8 * v10 + 32);
    }

    v15 = v14;
    v16 = [v14 spokenPhrase];
    v17 = sub_1000306F4();
    v19 = v18;

    v21 = _swiftEmptyArrayStorage[2];
    v20 = _swiftEmptyArrayStorage[3];
    if (v21 >= v20 >> 1)
    {
      sub_100021424((v20 > 1), v21 + 1, 1);
    }

    ++v10;
    _swiftEmptyArrayStorage[2] = v21 + 1;
    v22 = &_swiftEmptyArrayStorage[2 * v21];
    v22[4] = v17;
    v22[5] = v19;
    v11 = v12;
  }

  while (v13 != v10);

  v5 = v41;
  v4 = v42;
  if (v41)
  {
LABEL_15:
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_23:
      if (qword_100041AF8 != -1)
      {
        swift_once();
      }

      v26 = sub_100030664();
      sub_1000089D8(v26, qword_1000423F0);
      v27 = sub_100030654();
      v28 = sub_100030884();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Resolved taskTitles {result: .success}", v29, 2u);
      }

      v30 = *(a3 + 2);
      if (v30)
      {
        sub_100030BF4();
        v31 = objc_opt_self();
        v32 = a3 + 40;
        do
        {

          v33 = sub_100030724();
          v34 = [v31 successWithResolvedString:v33];

          sub_100030BD4();
          sub_100030C04();
          sub_100030C14();
          sub_100030BE4();
          v32 += 2;
          --v30;
        }

        while (v30);
      }

      v36 = _swiftEmptyArrayStorage;
      goto LABEL_37;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_17:
      v24 = *(a3 + 2);
      v23 = *(a3 + 3);
      if (v24 >= v23 >> 1)
      {
        a3 = sub_10002B4F4((v23 > 1), v24 + 1, 1, a3);
      }

      *(a3 + 2) = v24 + 1;
      v25 = &a3[16 * v24];
      *(v25 + 4) = v4;
      *(v25 + 5) = v5;
      goto LABEL_23;
    }

LABEL_39:
    a3 = sub_10002B4F4(0, 1, 1, a3);
    goto LABEL_17;
  }

LABEL_22:
  if (_swiftEmptyArrayStorage[2])
  {
    goto LABEL_23;
  }

  if (qword_100041AF8 != -1)
  {
    swift_once();
  }

  v37 = sub_100030664();
  sub_1000089D8(v37, qword_1000423F0);
  v38 = sub_100030654();
  v39 = sub_100030884();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "userTitles has 0 elements {result: .needsValue}", v40, 2u);
  }

  sub_100008944(&unk_100041EB0, &unk_1000340E0);
  v36 = swift_allocObject();
  *(v36 + 1) = xmmword_100033D00;
  sub_100008D28(0, &qword_1000425A0, INSpeakableStringResolutionResult_ptr);
  result = [swift_getObjCClassFromMetadata() needsValue];
  v36[4] = result;
LABEL_37:
  *v43 = v36;
  return result;
}

void sub_10001E164(uint64_t a1, uint64_t a2)
{
  sub_100008D28(0, &qword_1000425A0, INSpeakableStringResolutionResult_ptr);
  isa = sub_100030784().super.isa;
  (*(a2 + 16))(a2, isa);
}

id sub_10001E210(void *a1)
{
  v2 = v1;
  v3 = [a1 targetTaskList];
  if (!v3 || (v4 = v3, v5 = sub_1000307E4(), v4, !v5))
  {
    v6 = sub_1000218FC(*(v2 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_store));
    if (!v6)
    {
      return 0;
    }

LABEL_6:
    v7 = [v6 capabilities];

    return v7;
  }

  v6 = [v5 account];

  if (v6)
  {
    goto LABEL_6;
  }

  return 0;
}

void sub_10001E2D8(void *a1, void (*a2)(void))
{
  if (*a1)
  {
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v3 = sub_100030664();
    sub_1000089D8(v3, qword_1000423F0);
    v4 = sub_100030654();
    v5 = sub_100030884();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Got userActivity {result: .success(.currentActivity)", v6, 2u);
    }

    v7 = [objc_opt_self() successWithResolvedTaskReference:1];
  }

  else
  {
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v8 = sub_100030664();
    sub_1000089D8(v8, qword_1000423F0);
    v9 = sub_100030654();
    v10 = sub_100030884();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Got nil userActivity {result: .notRequired}", v11, 2u);
    }

    sub_100008D28(0, &qword_100042668, INTaskReferenceResolutionResult_ptr);
    v7 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v12 = v7;
  a2();
}

void sub_10001E4DC(uint64_t a1, void (*a2)(void))
{
  if (qword_100041AF8 != -1)
  {
    swift_once();
  }

  v3 = sub_100030664();
  sub_1000089D8(v3, qword_1000423F0);
  swift_errorRetain();
  v4 = sub_100030654();
  v5 = sub_100030864();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_100030D64();
    v10 = sub_10002B88C(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Got error userActivity. {result: .notRequired, error: %s}", v6, 0xCu);
    sub_100008D70(v7);
  }

  sub_100008D28(0, &qword_100042668, INTaskReferenceResolutionResult_ptr);
  v11 = [swift_getObjCClassFromMetadata() notRequired];
  a2();
}

void sub_10001E6C8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_10001E770(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v10 = a3;
  v9 = a1;
  a5(v10, v9, v8);
  _Block_release(v8);

  _Block_release(v8);
}

void sub_10001E804(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    *(a2 + 16) = v2;
    v5 = v2;
  }
}

uint64_t sub_10001E868(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v30 = sub_1000308B4();
  v9 = *(v30 - 8);
  __chkstk_darwin(v30);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100008944(&qword_100042600, &qword_1000344F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v29 - v13;
  v15 = *a1;
  result = swift_projectBox();
  if (v15)
  {
    v17 = result;
    v29 = v5;
    v18 = objc_allocWithZone(REMUserActivity);
    v19 = v15;
    v20 = [v18 initWithUserActivity:v19];
    v21 = 1;
    swift_beginAccess();
    v22 = *(a2 + 16);
    *(a2 + 16) = v20;

    v23 = [v19 webpageURL];
    if (v23)
    {
      v24 = v23;
      sub_10002FE44();

      v21 = 0;
    }

    v25 = sub_10002FE54();
    (*(*(v25 - 8) + 56))(v14, v21, 1, v25);
    swift_beginAccess();
    sub_100026970(v14, v17);
    sub_1000308C4();
    v26 = sub_100030894();
    v28 = v27;

    (*(v9 + 8))(v11, v30);
    swift_beginAccess();
    *(a4 + 16) = v26;
    *(a4 + 24) = v28;
  }

  return result;
}

void sub_10001EAE0(double a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void (*a17)(id))
{
  v60 = swift_projectBox();
  v19 = swift_projectBox();
  v20 = *(a3 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_store);
  v21 = objc_allocWithZone(REMSaveRequest);
  a4;
  v22 = [v21 initWithStore:v20];
  sub_100030024();
  v23 = v22;
  sub_1000300F4();
  v66 = v78;
  v67 = 0;
  v68 = a6;
  v69 = a7;
  v70 = v60;
  v71 = a9;
  v72 = a10 + 16;
  v73 = a11 + 16;
  v74 = v19;
  v75 = a13 + 16;
  v76 = a14 + 16;
  v77 = a15;
  v24 = sub_1000281C8(sub_1000268E0, v65, a5);
  v78 = 0;
  v25 = [v23 saveSynchronouslyWithError:&v78];
  v26 = v78;
  if (v25)
  {
    sub_100030074();
    v27 = v26;
    sub_100030064();
    sub_100030054();

    if (v24 >> 62)
    {
      v28 = sub_100030CE4();
      v59 = v23;
      if (v28)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v59 = v23;
      if (v28)
      {
LABEL_4:
        v78 = _swiftEmptyArrayStorage;
        sub_100030BF4();
        if (v28 < 0)
        {
          __break(1u);
        }

        sub_100008D28(0, &unk_100041E90, INTask_ptr);
        v29 = 0;
        do
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            sub_100030BA4();
          }

          else
          {
            v30 = *(v24 + 8 * v29 + 32);
          }

          ++v29;
          sub_1000309C4();
          sub_100030BD4();
          sub_100030C04();
          sub_100030C14();
          sub_100030BE4();
        }

        while (v28 != v29);
      }
    }

    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v41 = sub_100030664();
    sub_1000089D8(v41, qword_1000423F0);

    v42 = sub_100030654();
    v43 = sub_100030884();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v78 = v45;
      *v44 = 136315138;
      sub_100008D28(0, &unk_100041E90, INTask_ptr);
      v46 = sub_1000307A4();
      v48 = sub_10002B88C(v46, v47, &v78);

      *(v44 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "insertedTasks: %s", v44, 0xCu);
      sub_100008D70(v45);
    }

    v49 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:3 userActivity:0];
    [v49 setModifiedTaskList:a16];
    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    isa = sub_100030784().super.isa;

    [v49 setAddedTasks:isa];

    v78 = a15;
    v51 = sub_100030A14();
    sub_100008D28(0, &qword_1000425E8, INAddTasksIntent_ptr);
    v52 = sub_1000302B4();

    [v49 setWarnings:v52];
    v53 = v49;
    v54 = sub_100030654();
    v55 = sub_100030884();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      *(v56 + 4) = v53;
      *v57 = v53;
      v58 = v53;
      _os_log_impl(&_mh_execute_header, v54, v55, "successfully handled intent {result: %@}", v56, 0xCu);
      sub_100008BB8(v57, &unk_100041BF0, &unk_100033DB0);
    }

    a17(v53);

    return;
  }

  v31 = v78;

  sub_10002FE24();

  swift_willThrow();
  if (qword_100041AF8 != -1)
  {
    swift_once();
  }

  v32 = sub_100030664();
  sub_1000089D8(v32, qword_1000423F0);
  swift_errorRetain();
  v33 = sub_100030654();
  v34 = sub_100030864();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v78 = v36;
    *v35 = 136446210;
    swift_getErrorValue();
    v37 = sub_100030D74();
    v39 = sub_10002B88C(v37, v38, &v78);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "Error saving saveRequest {error: %{public}s}", v35, 0xCu);
    sub_100008D70(v36);
  }

  v40 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:4 userActivity:0];
  (a17)();
}

void sub_10001F288(void **a1@<X0>, void *a2@<X2>, void *a3@<X3>, void *a4@<X4>, void (*a5)(void, void)@<X5>, void (*a6)(char *, uint64_t)@<X6>, void **a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t *a11, id *a12, id a13)
{
  v199 = a7;
  v189 = a6;
  v196 = a5;
  v204 = a8;
  v194 = sub_10002FEE4();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v192 = v183 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100008944(&qword_100042600, &qword_1000344F0);
  __chkstk_darwin(v18 - 8);
  v191 = v183 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v200 = (v183 - v21);
  v203 = sub_10002FE54();
  v202 = *(v203 - 8);
  __chkstk_darwin(v203);
  v209 = (v183 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v201 = v183 - v24;
  v25 = sub_100008944(&qword_1000425D0, &qword_100034098);
  __chkstk_darwin(v25 - 8);
  v188 = v183 - v26;
  v198 = sub_100030234();
  v195 = *(v198 - 8);
  __chkstk_darwin(v198);
  v184 = v183 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v185 = v183 - v29;
  __chkstk_darwin(v30);
  v190 = v183 - v31;
  v32 = sub_100008944(&qword_100041BB0, &unk_1000340A0);
  __chkstk_darwin(v32 - 8);
  v187 = v183 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = v183 - v35;
  v37 = sub_10002FE04();
  v38 = *(v37 - 8);
  v207 = v37;
  v208 = v38;
  __chkstk_darwin(v37);
  v186 = v183 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v205 = (v183 - v41);
  v42 = *a1;
  v43 = sub_100030014();
  sub_1000301D4();
  sub_100026928(&unk_100042628, &type metadata accessor for TTRReminderEditor, &protocol conformance descriptor for TTRReminderEditor);
  v44 = v43;
  v45 = a2;
  v206 = v44;
  sub_1000301F4();
  v46 = v211[3];
  v47 = [v42 spokenPhrase];
  if (!v47)
  {
    sub_1000306F4();
    v47 = sub_1000306C4();
  }

  v48 = [objc_allocWithZone(NSAttributedString) initWithString:v47];

  v49.super.isa = v48;
  v214.value._countAndFlagsBits = 0;
  v214.value._object = 0;
  sub_100030194(v49, v214, 1);

  v211[8] = v46;
  if (a3)
  {
    v50 = qword_100041AF8;
    v51 = a3;
    if (v50 != -1)
    {
      swift_once();
    }

    v52 = sub_100030664();
    sub_1000089D8(v52, qword_1000423F0);
    v53 = v51;
    v54 = sub_100030654();
    v55 = sub_100030884();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      *(v56 + 4) = v53;
      *v57 = a3;
      v58 = v53;
      _os_log_impl(&_mh_execute_header, v54, v55, "setting locationTrigger {locationTrigger: %@}", v56, 0xCu);
      sub_100008BB8(v57, &unk_100041BF0, &unk_100033DB0);
    }

    v59 = v53;
    sub_100030144();
  }

  v60 = &selRef_imageWithUIImage_;
  if (a4)
  {
    v61 = qword_100041AF8;
    v62 = a4;
    if (v61 != -1)
    {
      swift_once();
    }

    v63 = sub_100030664();
    sub_1000089D8(v63, qword_1000423F0);
    v64 = v62;
    v65 = sub_100030654();
    v66 = sub_100030884();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      *(v67 + 4) = v64;
      *v68 = a4;
      v69 = v64;
      _os_log_impl(&_mh_execute_header, v65, v66, "setting vehicleTrigger {vehicleTrigger: %@}", v67, 0xCu);
      sub_100008BB8(v68, &unk_100041BF0, &unk_100033DB0);
    }

    v70 = v64;
    sub_100030134();
  }

  v197 = a9;
  v71 = v196;
  swift_beginAccess();
  sub_100008B50(v71, v36, &qword_100041BB0, &unk_1000340A0);
  v72 = v207;
  v73 = v208;
  if ((v208[6])(v36, 1, v207) == 1)
  {
    sub_100008BB8(v36, &qword_100041BB0, &unk_1000340A0);
    v74 = v209;
  }

  else
  {
    v75 = v205;
    (v73[4])(v205, v36, v72);
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v76 = sub_100030664();
    v77 = sub_1000089D8(v76, qword_1000423F0);
    v78 = v73[2];
    v79 = v186;
    v78(v186, v75, v72);
    v183[1] = v77;
    v80 = sub_100030654();
    v81 = sub_100030884();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = v79;
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v211[0] = v84;
      *v83 = 136315138;
      sub_100026928(&qword_100042638, &type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
      v85 = sub_100030D14();
      v87 = v86;
      v88 = v82;
      v72 = v207;
      v196 = v208[1];
      v196(v88, v207);
      v89 = sub_10002B88C(v85, v87, v211);

      *(v83 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v80, v81, "setting dueDateComponents {dueDateComponents: %s}", v83, 0xCu);
      sub_100008D70(v84);
      v73 = v208;
    }

    else
    {

      v196 = v73[1];
      v196(v79, v72);
    }

    v74 = v209;
    v90 = v198;
    v91 = v187;
    v92 = v205;
    v78(v187, v205, v72);
    (v73[7])(v91, 0, 1, v72);
    sub_100030164();
    sub_100008BB8(v91, &qword_100041BB0, &unk_1000340A0);
    v93 = v188;
    sub_100008B50(v189, v188, &qword_1000425D0, &qword_100034098);
    v94 = v195;
    if ((*(v195 + 48))(v93, 1, v90) == 1)
    {
      v196(v92, v72);
      sub_100008BB8(v93, &qword_1000425D0, &qword_100034098);
    }

    else
    {
      v95 = v190;
      (*(v94 + 32))(v190, v93, v90);
      v96 = v185;
      v207 = *(v94 + 16);
      v207(v185, v95, v90);
      v97 = sub_100030654();
      v98 = sub_100030884();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v211[0] = v100;
        *v99 = 136315138;
        v207(v184, v96, v198);
        v101 = sub_100030704();
        v103 = v102;
        v189 = *(v195 + 8);
        v189(v96, v198);
        v104 = sub_10002B88C(v101, v103, v211);

        *(v99 + 4) = v104;
        v74 = v209;
        _os_log_impl(&_mh_execute_header, v97, v98, "setting recurrenceRule {recurrenceRule: %s}", v99, 0xCu);
        sub_100008D70(v100);
        v94 = v195;

        v90 = v198;
      }

      else
      {

        v189 = *(v94 + 8);
        v189(v96, v90);
      }

      sub_100008944(&qword_100041E70, &unk_1000340C8);
      v105 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v106 = swift_allocObject();
      v106[1] = xmmword_100033CF0;
      v107 = v190;
      v207(v106 + v105, v190, v90);
      v212.value._rawValue = v106;
      v212.is_nil = 0;
      sub_100030154(v212, v108);

      v189(v107, v90);
      v196(v205, v72);
    }

    v60 = &selRef_imageWithUIImage_;
  }

  v109 = v199;
  swift_beginAccess();
  v110 = *v109;
  if (v110)
  {
    v111 = qword_100041AF8;
    v112 = v110;
    if (v111 != -1)
    {
      swift_once();
    }

    v113 = sub_100030664();
    sub_1000089D8(v113, qword_1000423F0);
    v114 = v112;
    v115 = sub_100030654();
    v116 = sub_100030884();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *v117 = 138412290;
      *(v117 + 4) = v114;
      *v118 = v110;
      v119 = v114;
      _os_log_impl(&_mh_execute_header, v115, v116, "setting contactRepresentation {contactRepresentation: %@}", v117, 0xCu);
      sub_100008BB8(v118, &unk_100041BF0, &unk_100033DB0);

      v74 = v209;
    }

    v120 = v114;
    sub_100030124();
  }

  v121 = a11;
  v122 = v197;
  swift_beginAccess();
  v123 = *v122;
  if (*v122)
  {
    v124 = qword_100041AF8;
    v125 = v123;
    if (v124 != -1)
    {
      swift_once();
    }

    v126 = sub_100030664();
    sub_1000089D8(v126, qword_1000423F0);
    v127 = v125;
    v128 = sub_100030654();
    v129 = sub_100030884();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *v130 = 138412290;
      *(v130 + 4) = v127;
      *v131 = v123;
      v132 = v127;
      _os_log_impl(&_mh_execute_header, v128, v129, "setting userActivity {remUserActivity: %@}", v130, 0xCu);
      sub_100008BB8(v131, &unk_100041BF0, &unk_100033DB0);
      v60 = &selRef_imageWithUIImage_;
    }

    v133 = v127;
    sub_100030114();

    v74 = v209;
  }

  v209 = a12;
  swift_beginAccess();
  v134 = v200;
  sub_100008B50(a10, v200, &qword_100042600, &qword_1000344F0);
  v135 = v202;
  v136 = v203;
  if ((*(v202 + 48))(v134, 1, v203) == 1)
  {
    sub_100008BB8(v134, &qword_100042600, &qword_1000344F0);
  }

  else
  {
    v208 = a11;
    v137 = v201;
    (*(v135 + 32))(v201, v134, v136);
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v138 = sub_100030664();
    sub_1000089D8(v138, qword_1000423F0);
    v207 = *(v135 + 16);
    v207(v74, v137, v136);
    v139 = sub_100030654();
    v140 = sub_100030884();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v200 = v141;
      v205 = swift_slowAlloc();
      v210 = v205;
      *v141 = 136315138;
      v142 = sub_10002FE34();
      v144 = v143;
      v145 = v74;
      v146 = *(v135 + 8);
      v146(v145, v136);
      v147 = sub_10002B88C(v142, v144, &v210);
      v60 = &selRef_imageWithUIImage_;

      v148 = v200;
      *(v200 + 1) = v147;
      _os_log_impl(&_mh_execute_header, v139, v140, "setting URL attachment {userActivityURL: %s}", v148, 0xCu);
      sub_100008D70(v205);
    }

    else
    {

      v149 = v74;
      v146 = *(v135 + 8);
      v146(v149, v136);
    }

    v150 = v191;
    v151 = v201;
    v207(v191, v201, v136);
    (*(v135 + 56))(v150, 0, 1, v136);
    sub_100030174();
    sub_100008BB8(v150, &qword_100042600, &qword_1000344F0);
    v146(v151, v136);
    v121 = v208;
  }

  swift_beginAccess();
  if (v121[1])
  {
    v152 = v60[351];

    if (v152 != -1)
    {
      swift_once();
    }

    v153 = sub_100030664();
    sub_1000089D8(v153, qword_1000423F0);
    v154 = sub_100030654();
    v155 = sub_100030884();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      *v156 = 0;
      _os_log_impl(&_mh_execute_header, v154, v155, "setting notes", v156, 2u);
    }

    v157 = objc_allocWithZone(NSAttributedString);
    v158 = sub_1000306C4();

    v159 = [v157 initWithString:v158];

    v213.value.super.isa = v159;
    sub_100030184(v213);
  }

  v160 = v209;
  swift_beginAccess();
  v161 = v206;
  if (*v160)
  {
    v162 = v60[351];
    v163 = *v160;
    if (v162 != -1)
    {
      swift_once();
    }

    v164 = sub_100030664();
    sub_1000089D8(v164, qword_1000423F0);
    v165 = sub_100030654();
    v166 = sub_100030884();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&_mh_execute_header, v165, v166, "setting custom smart list filters", v167, 2u);
      v161 = v206;
    }

    v168 = v192;
    sub_10002FED4();
    sub_1000301A4();

    (*(v193 + 8))(v168, v194);
  }

  v169 = [v161 accountCapabilities];
  v170 = [v169 supportsFlagged];

  if (!v170)
  {
    goto LABEL_68;
  }

  v171 = [a13 priority];
  if (!v171)
  {
    goto LABEL_68;
  }

  if (v171 == 1)
  {
    v172 = 0;
LABEL_67:
    sub_1000301C4(v172);
LABEL_68:
    if (v60[351] != -1)
    {
      swift_once();
    }

    v173 = sub_100030664();
    sub_1000089D8(v173, qword_1000423F0);
    v174 = v161;
    v175 = sub_100030654();
    v176 = sub_100030884();

    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      *v177 = 138543362;
      v179 = [v174 objectID];
      *(v177 + 4) = v179;
      *v178 = v179;
      _os_log_impl(&_mh_execute_header, v175, v176, "Inserting reminder: {objectID: %{public}@}", v177, 0xCu);
      sub_100008BB8(v178, &unk_100041BF0, &unk_100033DB0);
    }

    *v204 = v174;
    return;
  }

  if (v171 == 2)
  {
    v172 = 1;
    goto LABEL_67;
  }

  if (v60[351] != -1)
  {
    swift_once();
  }

  v180 = sub_100030664();
  sub_1000089D8(v180, qword_1000423F0);
  v181 = sub_1000216C8(_swiftEmptyArrayStorage);
  v182 = sub_1000216C8(_swiftEmptyArrayStorage);
  sub_100026B5C("unknown priority", 16, 2, v181, v182);
  __break(1u);
}

void sub_100020B18(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_100020BAC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = [a5 taskReference];
  if (!v13)
  {

    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v16 = sub_100030664();
    sub_1000089D8(v16, qword_1000423F0);
    v17 = sub_100030654();
    v18 = sub_100030854();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_15;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = ".taskReference is .unknown. {resolve: nil}";
    goto LABEL_14;
  }

  if (v13 != 1)
  {

    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v21 = sub_100030664();
    sub_1000089D8(v21, qword_1000423F0);
    v17 = sub_100030654();
    v18 = sub_100030864();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_15;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = ".taskReference is an unhandled enum. {resolve: nil}";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v17, v18, v20, v19, 2u);

LABEL_15:

    v22 = 0;
    return a1(&v22);
  }

  sub_100008A10((a6 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_userActivityProvider), *(a6 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_userActivityProvider + 24));
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = sub_10000D764;
  v14[5] = v12;

  sub_1000302E4();
}

uint64_t sub_100020E54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(void))
{
  if (!a2)
  {
    return (a5)(a1, 0, a3, a4);
  }

  swift_errorRetain();
  a3(a2);
}

uint64_t sub_100020ECC(void *a1)
{
  v2 = [a1 contactEventTrigger];
  if (v2 && (v3 = v2, v4 = [v2 triggerContact], v3, v4))
  {
    sub_100008A10((v1 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_contactRepresentationResolver), *(v1 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_contactRepresentationResolver + 24));
    v5 = v4;
    v6 = sub_100027EBC(v5);

    return v6;
  }

  else
  {
    sub_100008944(&qword_100041E68, &qword_1000340C0);
    swift_allocObject();
    return sub_100030614();
  }
}

id sub_100020FF8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTRAddTasksIntentHandler();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000210FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021150()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000211BC(uint64_t a1, uint64_t a2)
{
  sub_100030D84();
  sub_100030734();
  v4 = sub_100030D94();

  return sub_100021278(a1, a2, v4);
}

unint64_t sub_100021234(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100030A54(*(v2 + 40));

  return sub_100021330(a1, v4);
}

unint64_t sub_100021278(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100030D44())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100021330(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100030A64();

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

void *sub_100021404(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100021444(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100021424(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002156C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100021444(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100008944(&qword_1000426C0, &unk_100034550);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for REMSmartListType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10002156C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008944(&qword_1000425A8, &qword_1000344D0);
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

uint64_t sub_10002167C()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1000216C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008944(&qword_100042648, &qword_100034518);
    v3 = sub_100030CF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008B50(v4, &v13, &unk_1000425F0, &qword_1000340B0);
      v5 = v13;
      v6 = v14;
      result = sub_1000211BC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000269E0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000217F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008944(&qword_100042640, &qword_100034510);
    v3 = sub_100030CF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000211BC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

id sub_1000218FC(void *a1)
{
  v13 = 0;
  result = [a1 fetchDefaultAccountWithError:&v13];
  if (v13)
  {
    v2 = result;
    v3 = v13;

    swift_willThrow();
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v4 = sub_100030664();
    sub_1000089D8(v4, qword_1000423F0);
    v5 = v3;
    v6 = sub_100030654();
    v7 = sub_100030864();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_100030D64();
      v12 = sub_10002B88C(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unable to determine default account {error: %s}", v8, 0xCu);
      sub_100008D70(v9);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_100021AE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000307D4();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10000E420(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_100021B78(char *a1, char *a2, char *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_100041AF8 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v7 = sub_100030664();
    sub_1000089D8(v7, qword_1000423F0);
    v8 = a1;
    v9 = sub_100030654();
    v10 = sub_100030884();

    v82 = v6;
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = a3;
      v13 = swift_slowAlloc();
      v86 = v13;
      *v11 = 136315138;
      v85 = [v8 targetTaskList];
      sub_100008944(&unk_1000426A0, &unk_100034540);
      v14 = sub_100030A94();
      v16 = v15;

      v17 = sub_10002B88C(v14, v16, &v86);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "SiriKit asked for resolving tasklist {targetTaskList: %s}", v11, 0xCu);
      sub_100008D70(v13);
      a3 = v12;
    }

    v18 = [v8 targetTaskList];
    if (v18)
    {
      v19 = v18;
      v20 = &a2[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_dataSource];
      v21 = *&a2[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_dataSource + 24];
      v22 = *&a2[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_dataSource + 32];
      sub_100008A10(v20, v21);
      sub_100008944(&unk_100041EB0, &unk_1000340E0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100033D00;
      *(v23 + 32) = v19;
      v24 = swift_allocObject();
      v24[2] = v19;
      v24[3] = sub_10000B8D4;
      v24[4] = v82;
      v25 = *(v22 + 40);
      v26 = v19;

      v25(v23, sub_100026AC4, v24, v21, v22);

LABEL_6:

      return;
    }

    v27 = [v8 targetTaskListMembers];
    if (!v27)
    {
      goto LABEL_67;
    }

    a1 = v27;
    sub_100008D28(0, &qword_100042658, INPerson_ptr);
    v6 = sub_100030794();

    if (!(v6 >> 62))
    {
      v28 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        break;
      }

      goto LABEL_10;
    }

    v28 = sub_100030CE4();
    if (!v28)
    {
      break;
    }

LABEL_10:
    v81 = a2;
    v29 = 0;
    a2 = (v6 & 0xC000000000000001);
    v84 = v6 & 0xFFFFFFFFFFFFFF8;
    v30 = _swiftEmptyArrayStorage;
    do
    {
      if (a2)
      {
        v31 = sub_100030BA4();
      }

      else
      {
        if (v29 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v31 = *(v6 + 8 * v29 + 32);
      }

      a1 = v31;
      a3 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v32 = sub_100030A24();

      a1 = *(v32 + 16);
      v33 = *(v30 + 2);
      v34 = &a1[v33];
      if (__OFADD__(v33, a1))
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v34 <= *(v30 + 3) >> 1)
      {
        if (*(v32 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v33 <= v34)
        {
          v36 = &a1[v33];
        }

        else
        {
          v36 = v33;
        }

        v30 = sub_10002B4F4(isUniquelyReferenced_nonNull_native, v36, 1, v30);
        if (*(v32 + 16))
        {
LABEL_26:
          if ((*(v30 + 3) >> 1) - *(v30 + 2) < a1)
          {
            goto LABEL_60;
          }

          swift_arrayInitWithCopy();

          if (a1)
          {
            v37 = *(v30 + 2);
            v38 = __OFADD__(v37, a1);
            v39 = &a1[v37];
            if (v38)
            {
              goto LABEL_62;
            }

            *(v30 + 2) = v39;
          }

          goto LABEL_12;
        }
      }

      if (a1)
      {
        goto LABEL_55;
      }

LABEL_12:
      ++v29;
    }

    while (a3 != v28);
    v40 = 0;
    v41 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (a2)
      {
        v42 = sub_100030BA4();
      }

      else
      {
        if (v40 >= *(v84 + 16))
        {
          goto LABEL_57;
        }

        v42 = *(v6 + 8 * v40 + 32);
      }

      a1 = v42;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      v83 = (v40 + 1);
      v43 = v30;
      v44 = a2;
      a2 = v28;
      v45 = v6;
      a3 = sub_100030A34();

      a1 = *(a3 + 2);
      v46 = *(v41 + 2);
      v6 = &a1[v46];
      if (__OFADD__(v46, a1))
      {
        goto LABEL_58;
      }

      v47 = swift_isUniquelyReferenced_nonNull_native();
      if (!v47 || v6 > *(v41 + 3) >> 1)
      {
        if (v46 <= v6)
        {
          v48 = &a1[v46];
        }

        else
        {
          v48 = v46;
        }

        v41 = sub_10002B4F4(v47, v48, 1, v41);
      }

      v6 = v45;
      v28 = a2;
      if (*(a3 + 2))
      {
        if ((*(v41 + 3) >> 1) - *(v41 + 2) < a1)
        {
          goto LABEL_61;
        }

        a2 = v44;
        swift_arrayInitWithCopy();

        v30 = v43;
        if (a1)
        {
          v49 = *(v41 + 2);
          v38 = __OFADD__(v49, a1);
          v50 = &a1[v49];
          if (v38)
          {
            goto LABEL_63;
          }

          *(v41 + 2) = v50;
        }
      }

      else
      {

        a2 = v44;
        v30 = v43;
        if (a1)
        {
          goto LABEL_59;
        }
      }

      ++v40;
      if (v83 == v28)
      {
        v51 = *&v81[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_dataSource + 24];
        v52 = *&v81[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_dataSource + 32];
        sub_100008A10(&v81[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_dataSource], v51);

        v54 = sub_100021AE0(v53);

        v56 = v41;
        v57 = v6;
        v58 = sub_100021AE0(v55);

        v59 = swift_allocObject();
        v59[2] = v57;
        v59[3] = v30;
        v59[4] = v56;
        v59[5] = v81;
        v59[6] = sub_10000B8D4;
        v59[7] = v82;
        v60 = *(v52 + 56);

        v61 = v81;
        v60(v54, v58, sub_100026A74, v59, v51, v52);

        goto LABEL_6;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

LABEL_67:
  v62 = *&a2[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_store];
  v86 = 0;
  v63 = [v62 fetchDefaultListWithError:{&v86, v81}];
  v64 = v63;
  if (v86)
  {
    v65 = v86;

    swift_willThrow();
LABEL_69:
    v66 = sub_100030654();
    v67 = sub_100030884();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "No .targetTaskList and unable to get defaultList. {result: .disambiguateDueToNoDefaultList}", v68, 2u);
    }

    v69 = sub_10001CAEC();
    (*(a3 + 2))(a3, v69);

    return;
  }

  if (!v63)
  {
    goto LABEL_69;
  }

  sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
  v70 = v64;
  v71 = sub_100030814();
  v72 = v70;
  v73 = v71;
  v74 = sub_100030654();
  v75 = sub_100030884();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v76 = 138412546;
    v78 = [v72 objectID];
    *(v76 + 4) = v78;
    *(v76 + 12) = 2112;
    *(v76 + 14) = v73;
    *v77 = v78;
    v77[1] = v73;
    v79 = v73;
    _os_log_impl(&_mh_execute_header, v74, v75, "Using defaultList {objectID: %@, result: .success(%@)}", v76, 0x16u);
    sub_100008944(&unk_100041BF0, &unk_100033DB0);
    swift_arrayDestroy();
  }

  a2[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_didNotSpecifyTargetList] = 1;
  sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
  v80 = [swift_getObjCClassFromMetadata() successWithResolvedTaskList:v73];
  (*(a3 + 2))(a3, v80);
}

void sub_100022540(void *a1, uint64_t a2)
{
  if (qword_100041AF8 != -1)
  {
    swift_once();
  }

  v4 = sub_100030664();
  sub_1000089D8(v4, qword_1000423F0);
  v5 = a1;
  v6 = sub_100030654();
  v7 = sub_100030884();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v97 = v9;
    *v8 = 136315138;
    v95 = [v5 spatialEventTrigger];
    sub_100008944(&qword_100042698, &qword_100034538);
    v10 = sub_100030A94();
    v12 = v11;

    v13 = sub_10002B88C(v10, v12, &v97);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "SiriKit asked for resolving spatial event trigger {spatialEventTrigger: %s}", v8, 0xCu);
    sub_100008D70(v9);
  }

  v14 = [v5 spatialEventTrigger];
  if (!v14)
  {
    v25 = sub_100030654();
    v26 = sub_100030884();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, ".spatialEventTrigger is nil {result: .notRequired}", v27, 2u);
    }

    sub_100008D28(0, &qword_100042670, INSpatialEventTriggerResolutionResult_ptr);
    v24 = [swift_getObjCClassFromMetadata() notRequired];
    (*(a2 + 16))(a2, v24);
    goto LABEL_68;
  }

  v15 = v14;
  if (![v14 event])
  {
    v28 = sub_100030654();
    v29 = sub_100030864();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "spatialEventTrigger.event must not be .unknown {result: .unsupported}", v30, 2u);
    }

    sub_100008D28(0, &qword_100042670, INSpatialEventTriggerResolutionResult_ptr);
    v24 = [swift_getObjCClassFromMetadata() unsupported];
    (*(a2 + 16))(a2, v24);

    goto LABEL_68;
  }

  v16 = [v15 mobileSpace];
  v17 = v15;
  v18 = sub_100030654();
  v19 = sub_100030884();

  v20 = os_log_type_enabled(v18, v19);
  if (v16 == 1)
  {
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v17;
      *v22 = v15;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "Resolved vehicle trigger {result: .success, spatialEventTrigger: %@}", v21, 0xCu);
      sub_100008BB8(v22, &unk_100041BF0, &unk_100033DB0);
    }

    v24 = [objc_opt_self() successWithResolvedSpatialEventTrigger:v17];
    (*(a2 + 16))(a2, v24);
LABEL_67:

    goto LABEL_68;
  }

  v94 = a2;
  if (v20)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v97 = v32;
    *v31 = 136315138;
    v33 = [v17 suggestedValues];
    if (v33)
    {
      v34 = v33;
      sub_100008D28(0, &qword_100042680, CLPlacemark_ptr);
      sub_100030794();
    }

    sub_100008944(&qword_100042690, &qword_100034530);
    v35 = sub_100030A94();
    v37 = v36;

    v38 = sub_10002B88C(v35, v37, &v97);

    *(v31 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v18, v19, "suggestedValues: %s", v31, 0xCu);
    sub_100008D70(v32);

    a2 = v94;
  }

  else
  {
  }

  v39 = [v17 suggestedValues];
  if (v39)
  {
    v40 = v39;
    sub_100008D28(0, &qword_100042680, CLPlacemark_ptr);
    v41 = sub_100030794();
  }

  else
  {
    v41 = _swiftEmptyArrayStorage;
  }

  v42 = v41 >> 62;
  if (!(v41 >> 62))
  {
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_50:

    v63 = sub_100030654();
    v64 = sub_100030884();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "fallback to spatialEventTrigger.placemark instead because placemark count is 0 {count: 0}", v65, 2u);
    }

    v66 = [v17 placemark];
    if (!v66)
    {
      v81 = sub_100030654();
      v82 = sub_100030864();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v81, v82, "spatialEventTrigger.placemark == nil. Siri is messed up. Ignoring. {result: .notRequired}", v83, 2u);
      }

      sub_100008D28(0, &qword_100042670, INSpatialEventTriggerResolutionResult_ptr);
      v61 = [swift_getObjCClassFromMetadata() notRequired];
      v62 = *(a2 + 16);
      goto LABEL_62;
    }

    v44 = [v17 placemark];
LABEL_54:
    v67 = [v44 region];
    if (v67)
    {
      v68 = v67;
      objc_opt_self();
      v69 = swift_dynamicCastObjCClass();
      if (v69)
      {
        v70 = v69;
        v71 = a2;
        v17 = v17;
        v72 = v68;
        v73 = sub_100030654();
        v74 = sub_100030884();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          *v75 = 138412546;
          *(v75 + 4) = v70;
          *(v75 + 12) = 2112;
          *(v75 + 14) = v17;
          *v76 = v70;
          v76[1] = v15;
          v77 = v17;
          v78 = v72;
          _os_log_impl(&_mh_execute_header, v73, v74, "Resolved circularRegion {circularRegion: %@, result: .success(%@)}", v75, 0x16u);
          sub_100008944(&unk_100041BF0, &unk_100033DB0);
          swift_arrayDestroy();
        }

        v24 = v44;
        v79 = [objc_allocWithZone(INSpatialEventTrigger) initWithPlacemark:v24 event:{objc_msgSend(v17, "event")}];

        v80 = [objc_opt_self() successWithResolvedSpatialEventTrigger:v79];
        (*(v71 + 16))(v71, v80);

        goto LABEL_67;
      }
    }

    v24 = v44;
    v84 = sub_100030654();
    v85 = sub_100030864();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v97 = v87;
      *v86 = 136315138;
      v96 = [v24 region];
      sub_100008944(&qword_100042688, &qword_100034528);
      v88 = sub_100030A94();
      v89 = a2;
      v91 = v90;

      v92 = sub_10002B88C(v88, v91, &v97);
      a2 = v89;

      *(v86 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v84, v85, "Got a placemark with a CLRegion that is not a CLCircularRegion {region: %s, result: unsupported}", v86, 0xCu);
      sub_100008D70(v87);
    }

    sub_100008D28(0, &qword_100042670, INSpatialEventTriggerResolutionResult_ptr);
    v93 = [swift_getObjCClassFromMetadata() unsupported];
    (*(a2 + 16))(a2, v93);

    goto LABEL_67;
  }

  if (!sub_100030CE4())
  {
    goto LABEL_50;
  }

LABEL_27:
  if ((v41 & 0xC000000000000001) != 0)
  {
    v43 = sub_100030BA4();
  }

  else
  {
    if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_71;
    }

    v43 = *(v41 + 32);
  }

  v44 = v43;
  if (!v42)
  {
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

  if (sub_100030CE4() == 1)
  {
LABEL_43:

    v56 = sub_100030654();
    v57 = sub_100030884();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Using the only suggestedValue because placemarks.count is 1 {count: 1}", v58, 2u);
    }

    a2 = v94;
    goto LABEL_54;
  }

LABEL_32:

  v45 = sub_100030654();
  v46 = sub_100030884();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v97 = v48;
    *v47 = 136315138;
    sub_100008D28(0, &qword_100042680, CLPlacemark_ptr);
    v49 = sub_1000307A4();
    v51 = sub_10002B88C(v49, v50, &v97);

    *(v47 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v45, v46, "Disambiguate suggestedValues {result: .disambiguation, placemarks: %s}", v47, 0xCu);
    sub_100008D70(v48);
  }

  if (!v42)
  {
    v52 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_36;
    }

LABEL_48:

    v59 = objc_opt_self();
    sub_100008D28(0, &qword_100042678, INSpatialEventTrigger_ptr);
    isa = sub_100030784().super.isa;

    v61 = [v59 disambiguationWithSpatialEventTriggersToDisambiguate:isa];

    v62 = *(v94 + 16);
LABEL_62:
    v62();

    v24 = v17;
LABEL_68:

    return;
  }

  v52 = sub_100030CE4();
  if (!v52)
  {
    goto LABEL_48;
  }

LABEL_36:
  v97 = _swiftEmptyArrayStorage;
  sub_100030BF4();
  if ((v52 & 0x8000000000000000) == 0)
  {
    v53 = 0;
    do
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v54 = sub_100030BA4();
      }

      else
      {
        v54 = *(v41 + 8 * v53 + 32);
      }

      v55 = v54;
      ++v53;
      [objc_allocWithZone(INSpatialEventTrigger) initWithPlacemark:v54 event:{objc_msgSend(v17, "event")}];

      sub_100030BD4();
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
    }

    while (v52 != v53);
    goto LABEL_48;
  }

LABEL_71:
  __break(1u);
}

void sub_100023384(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  if (qword_100041AF8 != -1)
  {
    swift_once();
  }

  v6 = sub_100030664();
  sub_1000089D8(v6, qword_1000423F0);
  v7 = a1;
  v8 = sub_100030654();
  v9 = sub_100030884();

  if (os_log_type_enabled(v8, v9))
  {
    v29 = v5;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    [v7 taskReference];
    type metadata accessor for INTaskReference(0);
    v12 = sub_100030704();
    v14 = sub_10002B88C(v12, v13, &v30);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "SiriKit asked for resolving task reference {taskReference: %s}", v10, 0xCu);
    sub_100008D70(v11);

    v5 = v29;
  }

  if ([v7 taskReference] != 1)
  {
    v22 = sub_100030654();
    v23 = sub_100030884();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "userActivity not requested {result: .notRequired}", v24, 2u);
    }

    sub_100008D28(0, &qword_100042668, INTaskReferenceResolutionResult_ptr);
    v25 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_15;
  }

  v15 = sub_10001E210(v7);
  if (v15)
  {
    v16 = v15;
    v17 = [v15 supportsReminderActions];

    if ((v17 & 1) == 0)
    {
      v26 = sub_100030654();
      v27 = sub_100030864();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Target list account doesn't support userActivity. {result: .unsupported()}", v28, 2u);
      }

      sub_100008D28(0, &qword_100042668, INTaskReferenceResolutionResult_ptr);
      v25 = [swift_getObjCClassFromMetadata() unsupported];
LABEL_15:
      v21 = v25;
      (a3)[2](a3, v21);
      goto LABEL_16;
    }
  }

  __chkstk_darwin(v15);
  sub_100008944(&unk_100042570, &unk_1000344A8);
  swift_allocObject();
  sub_100030624();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10000B8D4;
  *(v18 + 24) = v5;

  v19 = sub_1000305B4();
  sub_1000305F4();

  v20 = swift_allocObject();
  *(v20 + 16) = sub_10000B8D4;
  *(v20 + 24) = v5;

  v21 = sub_1000305B4();
  sub_100030604();

LABEL_16:
}

void sub_100023854(void *a1, uint64_t a2)
{
  if (qword_100041AF8 != -1)
  {
    swift_once();
  }

  v4 = sub_100030664();
  sub_1000089D8(v4, qword_1000423F0);
  v5 = a1;
  v6 = sub_100030654();
  v7 = sub_100030884();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    v10 = [v5 targetTaskListMembers];
    if (v10)
    {
      v11 = v10;
      sub_100008D28(0, &qword_100042658, INPerson_ptr);
      v12 = sub_100030794();
    }

    else
    {
      v12 = 0;
    }

    v29 = v12;
    sub_100008944(&qword_100042660, &qword_100034520);
    v13 = sub_100030704();
    v15 = sub_10002B88C(v13, v14, &v30);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "SiriKit asked for resolving target task list members {targetTaskListMembers: %s}", v8, 0xCu);
    sub_100008D70(v9);
  }

  v16 = [v5 targetTaskListMembers];
  if (!v16)
  {
    sub_100008D28(0, &qword_100042650, INPersonResolutionResult_ptr);
    v25 = [swift_getObjCClassFromMetadata() notRequired];
    sub_100008944(&unk_100041EB0, &unk_1000340E0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100033D00;
    *(v26 + 32) = v25;
    v27 = v25;
    v28.super.isa = sub_100030784().super.isa;
    (*(a2 + 16))(a2, v28.super.isa);

LABEL_21:

    return;
  }

  v17 = v16;
  sub_100008D28(0, &qword_100042658, INPerson_ptr);
  v18 = sub_100030794();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_11;
    }

LABEL_20:

    sub_100008D28(0, &qword_100042650, INPersonResolutionResult_ptr);
    v28.super.isa = sub_100030784().super.isa;
    (*(a2 + 16))(a2, v28.super.isa);
    goto LABEL_21;
  }

  v19 = sub_100030CE4();
  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_11:
  v30 = _swiftEmptyArrayStorage;
  sub_100030BF4();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = objc_opt_self();
    v21 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = sub_100030BA4();
      }

      else
      {
        v22 = *(v18 + 8 * v21 + 32);
      }

      v23 = v22;
      ++v21;
      v24 = [v20 successWithResolvedPerson:{v22, v29}];

      sub_100030BD4();
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
    }

    while (v19 != v21);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_100023C68(void *a1, void *a2, void (**a3)(void, void))
{
  v286 = a2;
  v268 = sub_10002FFC4();
  v267 = *(v268 - 8);
  __chkstk_darwin(v268);
  v266 = &v252 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = sub_10002FE04();
  v273 = *(v274 - 8);
  __chkstk_darwin(v274);
  v272 = &v252 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_10002FEE4();
  v270 = *(v271 - 8);
  __chkstk_darwin(v271);
  v269 = &v252 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = sub_100030304();
  v276 = *(v277 - 8);
  __chkstk_darwin(v277);
  v275 = &v252 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100008944(&qword_1000425D0, &qword_100034098);
  v278 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v280 = &v252 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = v10;
  __chkstk_darwin(v11);
  v282 = &v252 - v12;
  v13 = sub_100008944(&qword_1000425D8, &unk_1000344E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v252 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v252 - v17;
  v285 = sub_10002FF24();
  v284 = *(v285 - 1);
  __chkstk_darwin(v285);
  v283 = (&v252 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v281 = &v252 - v21;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  _Block_copy(a3);
  if (qword_100041AF8 != -1)
  {
    swift_once();
  }

  v23 = sub_100030664();
  sub_1000089D8(v23, qword_1000423F0);
  sub_100008944(&qword_1000425E0, &unk_100033D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100033CF0;
  *(inited + 32) = 0x746E65746E69;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = sub_100008D28(0, &qword_1000425E8, INAddTasksIntent_ptr);
  *(inited + 48) = a1;
  v25 = a1;
  v26 = sub_1000216C8(inited);
  swift_setDeallocating();
  sub_100008BB8(inited + 32, &unk_1000425F0, &qword_1000340B0);
  sub_100026D38("Add task via Siri {intent: %@}", 30, 2, v26);

  v27 = v25;
  v28 = sub_100030654();
  v29 = sub_100030884();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = a3;
    v32 = v22;
    v33 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v33 = v27;
    v34 = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "SiriKit asked for handling intent {intent: %@}", v30, 0xCu);
    sub_100008BB8(v33, &unk_100041BF0, &unk_100033DB0);
    v22 = v32;
    a3 = v31;
  }

  v35 = [v27 taskTitles];
  if (!v35)
  {
    v72 = sub_100030654();
    v73 = sub_100030864();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "intent.taskTitles is nil - should have resolved it in previous calls. {result: .failure}", v74, 2u);
LABEL_24:
    }

LABEL_25:

    v81 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:4 userActivity:0];
    (a3)[2](a3, v81);

    return;
  }

  v36 = v35;
  sub_100008D28(0, &unk_100042590, INSpeakableString_ptr);
  v37 = sub_100030794();

  v38 = [v27 targetTaskList];
  if (!v38)
  {

    v75 = v27;
    v72 = sub_100030654();
    v76 = sub_100030864();

    if (os_log_type_enabled(v72, v76))
    {
      v77 = swift_slowAlloc();
      v78 = a3;
      v79 = swift_slowAlloc();
      *v77 = 138412290;
      *(v77 + 4) = v75;
      *v79 = v75;
      v80 = v75;
      _os_log_impl(&_mh_execute_header, v72, v76, "Unexpected nil .targetTaskList from intent. {intent: %@, result: .failure}", v77, 0xCu);
      sub_100008BB8(v79, &unk_100041BF0, &unk_100033DB0);
      a3 = v78;

      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v39 = v38;
  v263 = v37;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  v265 = v39;
  v41 = sub_100030804();
  v264 = v40;
  if (!v42)
  {
    goto LABEL_13;
  }

  if (v41)
  {
    sub_10002FEF4();
    v43 = v284;
    v44 = v285;
    if ((v284)[6](v18, 1, v285) == 1)
    {
      sub_100008BB8(v18, &qword_1000425D8, &unk_1000344E0);
      goto LABEL_11;
    }

    (v43)[4](v281, v18, v44);
    v115 = objc_opt_self();
    isa = sub_10002FF04().super.isa;
    v117 = [v115 objectIDWithUUID:isa];

    v118 = *(v286 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_store);
    v290 = 0;
    v259 = v118;
    v119 = [v118 fetchCustomSmartListWithObjectID:v117 error:&v290];
    if (!v119)
    {
      v261 = a3;
      v181 = v290;

      v141 = sub_10002FE24();

      swift_willThrow();
      goto LABEL_59;
    }

    v120 = v119;
    v260 = v117;
    v121 = v290;
    v122 = [v120 customContext];
    if (v122)
    {
      v123 = v122;
      v258 = v120;
      v124 = sub_100030974();

      if (v124)
      {
        v256 = v124;
        v261 = a3;
        v125 = v260;
        v126 = sub_100030654();
        v257 = v126;
        v127 = sub_100030884();

        v128 = os_log_type_enabled(v126, v127);
        v129 = v264;
        if (v128)
        {
          v130 = swift_slowAlloc();
          v262 = v22;
          v131 = v130;
          v132 = swift_slowAlloc();
          *v131 = 138543362;
          *(v131 + 4) = v125;
          *v132 = v125;
          v133 = v125;
          v134 = v132;
          v135 = v133;
          _os_log_impl(&_mh_execute_header, v257, v127, "Successfully fetched custom smart list {smartListID: %{public}@}", v131, 0xCu);
          sub_100008BB8(v134, &unk_100041BF0, &unk_100033DB0);
          v125 = v133;

          v22 = v262;
        }

        v136 = *(v129 + 16);
        v137 = v256;
        *(v129 + 16) = v256;
        v138 = v137;

        v290 = 0;
        v139 = [v259 fetchDefaultListWithError:&v290];
        if (v290)
        {
          v140 = v290;

          swift_willThrow();
          v290 = v140;
          v141 = v140;
          sub_100008944(&qword_100042610, &unk_100034500);
          sub_100008D28(0, &qword_100042618, NSError_ptr);
          if (swift_dynamicCast())
          {
            v286 = v138;

            v142 = v288;
            v143 = v125;
            v144 = v142;
            v145 = sub_100030654();
            v146 = sub_100030864();

            if (os_log_type_enabled(v145, v146))
            {
              v147 = swift_slowAlloc();
              v148 = swift_slowAlloc();
              v283 = swift_slowAlloc();
              v289 = v283;
              *v147 = 138543618;
              *(v147 + 4) = v143;
              *v148 = v143;
              *(v147 + 12) = 2082;
              v287 = v144;
              sub_100026878();
              v149 = v143;
              v150 = sub_100030D74();
              v152 = sub_10002B88C(v150, v151, &v289);

              *(v147 + 14) = v152;
              _os_log_impl(&_mh_execute_header, v145, v146, "Smart List found and unable to fetch default list. {result: .failure, smartListID: %{public}@, error: %{public}s}", v147, 0x16u);
              sub_100008BB8(v148, &unk_100041BF0, &unk_100033DB0);

              sub_100008D70(v283);
            }

            v153 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:4 userActivity:0];
            (v261)[2](v261, v153);

LABEL_62:
            (v284[1])(v281, v285);
            goto LABEL_63;
          }

          v117 = v260;
LABEL_59:
          v290 = v141;
          sub_100008944(&qword_100042610, &unk_100034500);
          sub_100008D28(0, &qword_100042618, NSError_ptr);
          swift_dynamicCast();
          v182 = v288;
          v183 = v117;
          v184 = v182;
          v185 = sub_100030654();
          v186 = sub_100030864();

          if (os_log_type_enabled(v185, v186))
          {
            v187 = swift_slowAlloc();
            v188 = swift_slowAlloc();
            v286 = swift_slowAlloc();
            v287 = v184;
            v289 = v286;
            *v187 = 138543618;
            *(v187 + 4) = v183;
            *v188 = v183;
            *(v187 + 12) = 2082;
            sub_100026878();
            v189 = v183;
            v190 = sub_100030D74();
            v192 = sub_10002B88C(v190, v191, &v289);

            *(v187 + 14) = v192;
            _os_log_impl(&_mh_execute_header, v185, v186, "Error fetching smart list. {listID: %{public}@, error: %{public}s}", v187, 0x16u);
            sub_100008BB8(v188, &unk_100041BF0, &unk_100033DB0);

            sub_100008D70(v286);
          }

          v193 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:4 userActivity:0];
          (v261)[2](v261, v193);

          goto LABEL_62;
        }

        (v284[1])(v281, v285);

        a3 = v261;
        if (v139)
        {
          v237 = v139;

          v63 = v237;
          v170 = v63;
          v47 = v286;
LABEL_52:
          v171 = [v63 isGroup];

          if (v171)
          {

            v172 = v63;
            v173 = sub_100030654();
            v174 = sub_100030864();

            if (os_log_type_enabled(v173, v174))
            {
              v175 = v170;
              v176 = swift_slowAlloc();
              v177 = a3;
              v178 = swift_slowAlloc();
              *v176 = 138543362;
              v179 = [v172 objectID];
              *(v176 + 4) = v179;
              *v178 = v179;
              _os_log_impl(&_mh_execute_header, v173, v174, "Fetched list is a Group, can't add reminder to groups. {result: .failure, listID: %{public}@}", v176, 0xCu);
              sub_100008BB8(v178, &unk_100041BF0, &unk_100033DB0);
              a3 = v177;

              v170 = v175;
            }

            v180 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:4 userActivity:0];
            (a3)[2](a3, v180);

            return;
          }

          v281 = v63;
          if ([v27 spatialEventTrigger])
          {
            sub_100008D28(0, &qword_100041E78, REMAlarmLocationTrigger_ptr);
            v284 = sub_100030964();
          }

          else
          {
            v284 = 0;
          }

          if ([v27 spatialEventTrigger])
          {
            sub_100008D28(0, &unk_100041E80, REMAlarmVehicleTrigger_ptr);
            v256 = sub_100030954();
          }

          else
          {
            v256 = 0;
          }

          sub_100008944(&qword_100041BB0, &unk_1000340A0);
          v285 = swift_allocBox();
          v195 = v194;
          v196 = [v27 temporalEventTrigger];
          v253 = v195;
          if (v196)
          {
            v197 = v196;
            sub_100030934();
          }

          else
          {
            (*(v273 + 56))(v195, 1, 1, v274);
          }

          v198 = [v27 temporalEventTrigger];
          v262 = v22;
          v257 = v170;
          if (v198)
          {
            sub_10000B82C(v47 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_timeProvider, &v290);
            sub_100030224();
          }

          else
          {
            v199 = sub_100030234();
            (*(*(v199 - 8) + 56))(v282, 1, 1, v199);
          }

          v200 = swift_allocObject();
          v200[2] = 0;
          v201 = sub_100020ECC(v27);
          v202 = swift_allocObject();
          *(v202 + 16) = 0;
          __chkstk_darwin(v202);
          *(&v252 - 2) = v27;
          *(&v252 - 1) = v47;
          sub_100008944(&unk_100042570, &unk_1000344A8);
          swift_allocObject();
          v258 = sub_100030624();
          sub_100008944(&qword_100042600, &qword_1000344F0);
          v203 = swift_allocBox();
          v205 = v204;
          v206 = sub_10002FE54();
          (*(*(v206 - 8) + 56))(v205, 1, 1, v206);
          v207 = swift_allocObject();
          *(v207 + 16) = 0;
          *(v207 + 24) = 0;
          v254 = sub_100008944(&qword_100042608, &qword_1000344F8);
          sub_100008944(&unk_100041EB0, &unk_1000340E0);
          v208 = swift_allocObject();
          *(v208 + 16) = xmmword_1000343B0;

          v209 = sub_1000305B4();
          v255 = v201;
          v210 = sub_1000305F4();
          v283 = v200;

          *(v208 + 32) = v210;
          v211 = swift_allocObject();
          v211[2] = v202;
          v211[3] = v203;
          v211[4] = v207;
          v261 = v202;

          v260 = v203;

          v259 = v207;

          v212 = sub_1000305B4();
          v213 = sub_1000305F4();

          *(v208 + 40) = v213;
          v254 = sub_1000305C4();

          v214 = v276;
          v215 = v275;
          v216 = v277;
          (*(v276 + 104))(v275, enum case for REMFeatureFlags.siriDefaultTime(_:), v277);
          LOBYTE(v207) = sub_1000302F4();
          (*(v214 + 8))(v215, v216);
          if ((v207 & 1) != 0 && *(v286 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_didNotSpecifyTargetList) == 1)
          {
            v217 = [v27 temporalEventTrigger];
            if (v217 || (v217 = [v27 spatialEventTrigger]) != 0 || (v217 = objc_msgSend(v27, "contactEventTrigger")) != 0)
            {
            }

            else
            {
              sub_100008A10((v286 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_timeProvider), *(v286 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_timeProvider + 24));
              v238 = v269;
              sub_100030034();
              v239 = objc_opt_self();
              v240 = sub_10002FE94().super.isa;
              v241 = v266;
              sub_10002FFA4();
              v242 = sub_10002FFB4().super.isa;
              (*(v267 + 8))(v241, v268);
              v243 = [v239 rem_dateComponentsWithDate:v240 timeZone:v242 isAllDay:0];

              v244 = v272;
              sub_10002FDA4();

              v245 = sub_10002FDB4();
              if (v246)
              {
                _Block_release(a3);
                __break(1u);
                return;
              }

              v247 = v245;
              v248 = objc_opt_self();
              [v248 nextThirdsHour:{objc_msgSend(v248, "nextThirdsHourFromHour:", v247)}];
              sub_10002FDC4();
              sub_10002FDD4();
              sub_10002FDE4();
              (*(v270 + 8))(v238, v271);
              v249 = v253;
              sub_100008BB8(v253, &qword_100041BB0, &unk_1000340A0);
              v250 = v273;
              v251 = v274;
              (*(v273 + 32))(v249, v244, v274);
              (*(v250 + 56))(v249, 0, 1, v251);
            }
          }

          sub_100008B50(v282, v280, &qword_1000425D0, &qword_100034098);
          v278 = (*(v278 + 80) + 64) & ~*(v278 + 80);
          v277 = (v279 + v278 + 7) & 0xFFFFFFFFFFFFFFF8;
          v218 = (v277 + 15) & 0xFFFFFFFFFFFFFFF8;
          v219 = (v218 + 15) & 0xFFFFFFFFFFFFFFF8;
          v220 = (v219 + 15) & 0xFFFFFFFFFFFFFFF8;
          v279 = (v220 + 15) & 0xFFFFFFFFFFFFFFF8;
          v221 = (v279 + 15) & 0xFFFFFFFFFFFFFFF8;
          v222 = (v221 + 15) & 0xFFFFFFFFFFFFFFF8;
          v223 = swift_allocObject();
          v224 = v281;
          v223[2] = v286;
          v223[3] = v224;
          v225 = v284;
          v223[4] = v263;
          v223[5] = v225;
          v226 = v256;
          v227 = v285;
          v223[6] = v256;
          v223[7] = v227;
          sub_1000266D4(v280, v223 + v278);
          *(v223 + v277) = v283;
          *(v223 + v218) = v261;
          *(v223 + v219) = v260;
          *(v223 + v220) = v259;
          v228 = (v223 + ((v222 + 15) & 0xFFFFFFFFFFFFFFF8));
          *(v223 + v279) = v264;
          *(v223 + v221) = v27;
          v229 = v265;
          *(v223 + v222) = v265;
          v230 = v262;
          *v228 = sub_1000089C4;
          v228[1] = v230;
          v280 = v226;

          v231 = v229;

          v232 = v27;
          v233 = v281;

          v234 = v286;
          v235 = v284;
          v236 = sub_1000305B4();
          sub_1000305F4();

          sub_100008BB8(v282, &qword_1000425D0, &qword_100034098);

LABEL_81:

          return;
        }
      }

      else
      {
        (v284[1])(v281, v285);
      }
    }

    else
    {
      (v284[1])(v281, v285);
    }
  }

LABEL_11:
  sub_10002FEF4();

  v45 = v284;
  v46 = v285;
  if ((v284)[6](v15, 1, v285) != 1)
  {
    (v45)[4](v283, v15, v46);
    v92 = objc_opt_self();
    v93 = sub_10002FF04().super.isa;
    v94 = [v92 objectIDWithUUID:v93];

    v47 = v286;
    v95 = *(v286 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_store);
    v290 = 0;
    v96 = [v95 fetchListWithObjectID:v94 error:&v290];
    v97 = v290;
    if (v96)
    {
      v98 = v96;
      v99 = v97;
      v100 = sub_100030654();
      v101 = sub_100030884();

      v102 = os_log_type_enabled(v100, v101);
      v281 = v98;
      if (v102)
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v103 = 138543362;
        v105 = [v98 objectID];
        *(v103 + 4) = v105;
        *v104 = v105;
        _os_log_impl(&_mh_execute_header, v100, v101, "Successfully fetched list {listID: %{public}@}", v103, 0xCu);
        sub_100008BB8(v104, &unk_100041BF0, &unk_100033DB0);
        v47 = v286;

        v45 = v284;

        v106 = v94;
      }

      else
      {
        v106 = v100;
        v100 = v94;
      }

      (v45[1])(v283, v285);
      v170 = 0;
      v63 = v281;
      goto LABEL_52;
    }

    v261 = a3;
    v154 = v290;

    v155 = sub_10002FE24();

    swift_willThrow();
    v290 = v155;
    sub_100008944(&qword_100042610, &unk_100034500);
    sub_100008D28(0, &qword_100042618, NSError_ptr);
    swift_dynamicCast();
    v156 = v288;
    v157 = v94;
    v158 = v156;
    v159 = sub_100030654();
    v160 = sub_100030864();

    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v262 = v22;
      v164 = v163;
      v289 = v163;
      *v161 = 138543618;
      *(v161 + 4) = v157;
      *v162 = v157;
      *(v161 + 12) = 2082;
      v287 = v158;
      sub_100026878();
      v286 = v158;
      v165 = v157;
      v166 = sub_100030D74();
      v168 = sub_10002B88C(v166, v167, &v289);

      *(v161 + 14) = v168;
      v158 = v286;
      _os_log_impl(&_mh_execute_header, v159, v160, "Unable to fetch list. {result: .failure, listID: %{public}@, error: %{public}s}", v161, 0x16u);
      sub_100008BB8(v162, &unk_100041BF0, &unk_100033DB0);

      sub_100008D70(v164);
    }

    v169 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:4 userActivity:0];
    (v261)[2](v261, v169);

    (v284[1])(v283, v285);
LABEL_63:

    goto LABEL_81;
  }

  sub_100008BB8(v15, &qword_1000425D8, &unk_1000344E0);
LABEL_13:
  v262 = v22;
  v47 = v286;
  v48 = *(v286 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_store);
  v49 = sub_1000218FC(v48);
  if (v49)
  {
    v50 = v49;
    v51 = [v265 title];
    v52 = [v51 spokenPhrase];

    if (!v52)
    {
      sub_1000306F4();
      v52 = sub_1000306C4();
    }

    v53 = [objc_allocWithZone(REMSaveRequest) initWithStore:v48];
    v285 = [v53 updateAccount:v50];
    v54 = [v53 addListWithName:v52 toAccountChangeItem:?];

    v290 = 0;
    v55 = [v53 saveSynchronouslyWithError:&v290];
    v56 = v290;
    if (!v55 || (v57 = v290, v58 = [v54 objectID], v290 = 0, v59 = objc_msgSend(v48, "fetchListWithObjectID:error:", v58, &v290), v58, v56 = v290, !v59))
    {
      v82 = v56;

      sub_10002FE24();

      swift_willThrow();
      v83 = v50;
      v84 = v54;
      v85 = sub_100030654();
      v86 = sub_100030864();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *v87 = 138543618;
        v89 = [v84 objectID];
        *(v87 + 4) = v89;
        *(v87 + 12) = 2112;
        *(v87 + 14) = v83;
        *v88 = v89;
        v88[1] = v50;
        v90 = v83;
        _os_log_impl(&_mh_execute_header, v85, v86, "Error creating new list. {listID: %{public}@, account: %@, result: .failure}", v87, 0x16u);
        sub_100008944(&unk_100041BF0, &unk_100033DB0);
        swift_arrayDestroy();
      }

      v91 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:4 userActivity:0];
      (a3)[2](a3, v91);

      goto LABEL_81;
    }

    v283 = v54;
    v60 = v59;
    v61 = v56;
    v62 = v50;
    v63 = v60;
    v64 = sub_100030654();
    v65 = sub_100030884();

    v284 = v64;
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v281 = v63;
      v68 = v67;
      *v66 = 138543618;
      v69 = [v281 objectID];
      *(v66 + 4) = v69;
      *(v66 + 12) = 2112;
      *(v66 + 14) = v62;
      *v68 = v69;
      v68[1] = v50;
      v70 = v62;
      v71 = v284;
      _os_log_impl(&_mh_execute_header, v284, v65, "Successfully created new list {listID: %{public}@, account: %@}", v66, 0x16u);
      sub_100008944(&unk_100041BF0, &unk_100033DB0);
      swift_arrayDestroy();
      v63 = v281;

      v47 = v286;
    }

    else
    {
    }

    v170 = 0;
    v22 = v262;
    goto LABEL_52;
  }

  v107 = v27;
  v108 = sub_100030654();
  v109 = sub_100030864();

  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = a3;
    v112 = swift_slowAlloc();
    *v110 = 138412290;
    *(v110 + 4) = v107;
    *v112 = v107;
    v113 = v107;
    _os_log_impl(&_mh_execute_header, v108, v109, "Unable to create list because there is no default account. {intent: %@, result: .failureRequiringAppLaunch}", v110, 0xCu);
    sub_100008BB8(v112, &unk_100041BF0, &unk_100033DB0);
    a3 = v111;
  }

  v114 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:5 userActivity:0];
  (a3)[2](a3, v114);
}

uint64_t sub_100026400()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100026438()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002648C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000264F4()
{
  v1 = *(sub_100008944(&qword_1000425D0, &qword_100034098) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_100030234();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (((((((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1000266D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008944(&qword_1000425D0, &qword_100034098);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100026744(uint64_t a1)
{
  v3 = *(sub_100008944(&qword_1000425D0, &qword_100034098) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_10001EAE0(v10, a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + v9), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_100026878()
{
  result = qword_100042620;
  if (!qword_100042620)
  {
    sub_100008D28(255, &qword_100042618, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042620);
  }

  return result;
}

uint64_t sub_100026928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100026970(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008944(&qword_100042600, &qword_1000344F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1000269E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100026A1C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100026A84()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100026AD0()
{
  result = qword_1000426B0;
  if (!qword_1000426B0)
  {
    sub_100008C7C(&qword_100041F50, &qword_100034118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000426B0);
  }

  return result;
}

void sub_100026B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;

  v7 = sub_100030654();
  v8 = sub_100030874();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v9 = 136446722;
    v10 = sub_100030B94();
    v12 = sub_10002B88C(v10, v11, &v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = sub_100030694();
    v15 = v5;
    v16 = sub_10002B88C(v13, v14, &v20);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2082;
    v17 = sub_100030694();
    v19 = sub_10002B88C(v17, v18, &v20);
    v5 = v15;

    *(v9 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s; UserInfo=%s; PublicUserInfo=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  if (v5)
  {
    goto LABEL_6;
  }

  if (a1)
  {
    rdi_os_crash();
LABEL_6:
    __break(1u);
  }

  __break(1u);
}

void sub_100026D38(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  sub_100030314();
  sub_100030644();
  sub_100008944(&qword_1000426C8, &qword_100034598);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100033CF0;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_100030B94();
  v5 = sub_1000306C4();

  *(inited + 48) = v5;
  sub_1000217F8(inited);
  swift_setDeallocating();
  sub_1000270A0(inited + 32);
  sub_100030634();

  if (qword_100041B00 != -1)
  {
    swift_once();
  }

  v6 = sub_100030664();
  sub_1000089D8(v6, qword_100042D20);

  v7 = sub_100030654();
  v8 = sub_100030884();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136446466;
    v10 = sub_100030B94();
    v12 = sub_10002B88C(v10, v11, &v16);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = sub_100030694();
    v15 = sub_10002B88C(v13, v14, &v16);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s; UserInfo=%s", v9, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10002702C(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = sub_100030664();
  sub_100008CC4(v5, a2);
  sub_1000089D8(v5, a2);
  v6 = [objc_opt_self() *a3];
  return sub_100030674();
}

uint64_t sub_1000270A0(uint64_t a1)
{
  v2 = sub_100008944(&qword_1000426D0, &unk_1000345A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027108()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_1000426D8);
  v1 = sub_1000089D8(v0, qword_1000426D8);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100027208(void *a1, uint64_t a2, void (**a3)(void, void), void *a4, void *a5, unint64_t *a6)
{
  v54 = a4;
  v55 = a2;
  v10 = sub_100008944(&qword_1000426F0, "r");
  __chkstk_darwin(v10);
  v56 = (v52 - v11);
  if (qword_100041B20 != -1)
  {
    swift_once();
  }

  v12 = sub_100030664();
  v13 = sub_1000089D8(v12, qword_1000426D8);
  v14 = a1;
  v15 = sub_100030654();
  v16 = sub_100030884();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v53 = a3;
    v52[0] = v18;
    v58 = v18;
    *v17 = 136315138;
    v19 = [v14 temporalEventTrigger];
    v52[1] = v13;
    v20 = a6;
    v21 = a5;
    v22 = v19;
    v57 = v19;
    sub_100008944(&qword_100042700, &unk_1000346B0);
    v23 = sub_100030A94();
    v25 = v24;

    a5 = v21;
    a6 = v20;
    v26 = sub_10002B88C(v23, v25, &v58);

    *(v17 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "SiriKit asked for resolving temporalEventTrigger {temporalEventTrigger: %s}", v17, 0xCu);
    sub_100008D70(v52[0]);
    a3 = v53;
  }

  v27 = v56;
  v28 = [v14 temporalEventTrigger];
  if (!v28)
  {
    v36 = sub_100030654();
    v37 = sub_100030884();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, ".temporalEventTrigger is nil {result: .notRequired}", v38, 2u);
    }

    sub_100008D28(0, a6, a5);
    v29 = [swift_getObjCClassFromMetadata() notRequired];
    (a3)[2](a3, v29);
    goto LABEL_27;
  }

  v29 = v28;
  sub_100030944();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v39 = *v27;
    v40 = sub_100030654();
    v41 = sub_100030884();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = v39;
      *v43 = v39;
      v44 = v39;
      _os_log_impl(&_mh_execute_header, v40, v41, ".temporalEventTrigger resolved to a valid date {result: .success(with: %@)}", v42, 0xCu);
      sub_1000169BC(v43);
    }

    sub_100008D28(0, a6, a5);
    v45 = [swift_getObjCClassFromMetadata() successWithResolvedTemporalEventTrigger:v39];
    (a3)[2](a3, v45);

    goto LABEL_26;
  }

  v30 = sub_100030924();
  v31 = (*(*(v30 - 8) + 88))(v27, v30);
  if (v31 == enum case for INTemporalEventTrigger.ValidationError.timeInPast(_:))
  {
    v32 = sub_100030654();
    v33 = sub_100030884();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, ".temporalEventTrigger would create a due date in the past {result: .unsupported(.timeInPast)}", v34, 2u);
    }

    v35 = [objc_opt_self() unsupportedForReason:1];
LABEL_25:
    v45 = v35;
    (a3)[2](a3, v45);
LABEL_26:

LABEL_27:
    return;
  }

  if (v31 == enum case for INTemporalEventTrigger.ValidationError.invalidRecurrence(_:))
  {
    v46 = sub_100030654();
    v47 = sub_100030884();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, ".temporalEventTrigger.recurrenceRule is not supported {result: .unsupported(.invalidRecurrence)}", v48, 2u);
    }

    v35 = [objc_opt_self() unsupportedForReason:2];
    goto LABEL_25;
  }

  if (v31 == enum case for INTemporalEventTrigger.ValidationError.noDate(_:))
  {
    v49 = sub_100030654();
    v50 = sub_100030884();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, ".temporalEventTrigger could not be converted into a dueDate, ignoring it {result: .notRequired}", v51, 2u);
    }

    sub_100008D28(0, a6, a5);
    v35 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_25;
  }

  _Block_release(a3);
  sub_100030D34();
  __break(1u);
}

uint64_t sub_1000278B4()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100042710);
  v1 = sub_1000089D8(v0, qword_100042710);
  if (qword_100041B08 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D38);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10002797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, void *a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v14 = a5(v13);
  v15 = swift_allocObject();
  v15[2] = sub_10000D764;
  v15[3] = v12;
  v15[4] = a7;
  v15[5] = a5;
  v15[6] = a6;
  v18[4] = sub_100027E1C;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100027E2C;
  v18[3] = &unk_10003DD90;
  v16 = _Block_copy(v18);
  v17 = a7;

  [v14 requestAccessForEntityType:0 completionHandler:v16];
  _Block_release(v16);
}

uint64_t sub_100027AC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100027AFC(char a1, uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100041B28 != -1)
    {
      swift_once();
    }

    v7 = sub_100030664();
    sub_1000089D8(v7, qword_100042710);
    swift_errorRetain();
    v8 = sub_100030654();
    v9 = sub_100030864();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = sub_100030D64();
      v14 = sub_10002B88C(v12, v13, &v21);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error requesting permission for CNContactStore {error: %s}", v10, 0xCu);
      sub_100008D70(v11);
    }

    a3(0);
  }

  else if (a1)
  {
    v15 = a6();
    v20 = sub_100030A44();

    a3(v20);
  }

  else
  {
    if (qword_100041B28 != -1)
    {
      swift_once();
    }

    v16 = sub_100030664();
    sub_1000089D8(v16, qword_100042710);
    v17 = sub_100030654();
    v18 = sub_100030864();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Permission not granted for accessing CNContactStore {granted: false}", v19, 2u);
    }

    a3(0);
  }
}

uint64_t sub_100027DD4()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100027E2C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100027EA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100027EBC(uint64_t a1)
{
  sub_100008944(&qword_100041E68, &qword_1000340C0);
  swift_allocObject();
  return sub_100030624();
}

void *_s25RemindersIntentsExtension32TTRContactRepresentationResolverVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for TTRContactRepresentationResolver(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

_OWORD *assignWithTake for TTRContactRepresentationResolver(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRContactRepresentationResolver(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TTRContactRepresentationResolver(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_100028084(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_100030BF4();
    v9 = *(sub_100030354() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_100030BD4();
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1000281C8(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100030CE4())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v15 = _swiftEmptyArrayStorage;
    sub_100030BF4();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = sub_100030BA4();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_100030BD4();
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

void sub_100028370(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5, uint64_t a6)
{
  v11[2] = &v12;
  v8 = sub_100028084(a4, v11, a1);
  sub_100008944(&qword_100042858, &qword_100034790);
  v11[3] = v8;
  sub_100008944(&qword_100042860, &unk_100034798);
  sub_10002C39C();
  sub_1000305D4();

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  v10 = sub_1000305B4();
  sub_1000305F4();
}

uint64_t sub_10002848C()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100042728);
  v1 = sub_1000089D8(v0, qword_100042728);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100028554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100030354();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9.n128_f64[0] = __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v24 = v5;
    v25 = a2;
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v27 = enum case for REMSearchCriterion.listID(_:);
    v16 = (v13 - 8);
    v17 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v26 = *(v13 + 56);
    while (1)
    {
      v14(v11, v17, v4, v9);
      (v14)(v7, v11, v4);
      v18 = (*(v13 + 72))(v7, v4);
      if (v18 == v27)
      {
        break;
      }

      v19 = *v16;
      (*v16)(v7, v4);
      v19(v11, v4);
      v17 += v26;
      if (!--v12)
      {
        v20 = 1;
        v5 = v24;
        a2 = v25;
        return (*(v5 + 56))(a2, v20, 1, v4);
      }
    }

    v5 = v24;
    (*(v24 + 96))(v7, v4);

    v21 = *(sub_100008944(&qword_100041C30, &qword_100033DD8) + 48);
    v22 = sub_100030344();
    (*(*(v22 - 8) + 8))(v7 + v21, v22);
    a2 = v25;
    (*(v5 + 32))(v25, v11, v4);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  return (*(v5 + 56))(a2, v20, 1, v4);
}

void sub_1000287D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (sub_10002CA2C(a1))
  {
    if (qword_100041B30 != -1)
    {
      swift_once();
    }

    v8 = sub_100030664();
    sub_1000089D8(v8, qword_100042728);

    v9 = sub_100030654();
    v10 = sub_100030884();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31 = v12;
      *v11 = 136315138;
      sub_100030354();
      v13 = sub_1000307A4();
      v15 = sub_10002B88C(v13, v14, &v31);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Querying Spotlight for reminders {criteria: %s}", v11, 0xCu);
      sub_100008D70(v12);
    }

    sub_100030254();
    sub_100008944(&qword_100042870, &qword_1000347A8);
    v16 = sub_100030374();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100033CF0;
    (*(v17 + 104))(v19 + v18, enum case for REMSearchableItemType.reminder(_:), v16);
    sub_100008D28(0, &qword_1000421C0, OS_dispatch_queue_ptr);
    v20 = sub_100030904();
    sub_100030244();

    v21 = swift_allocObject();
    v21[2] = a1;
    v21[3] = v4;
    v21[4] = a2;
    v21[5] = a3;

    v22 = sub_1000305B4();
    sub_1000305F4();

    v23 = swift_allocObject();
    v23[2] = a1;
    v23[3] = a2;
    v23[4] = a3;

    v30 = sub_1000305B4();
    sub_100030604();
  }

  else
  {
    if (qword_100041B30 != -1)
    {
      swift_once();
    }

    v24 = sub_100030664();
    sub_1000089D8(v24, qword_100042728);
    v25 = sub_100030654();
    v26 = sub_100030884();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Criteria does not contain a text search, using fallback data source", v27, 2u);
    }

    v28 = v4[7];
    v29 = v4[8];
    sub_100008A10(v4 + 4, v28);
    (*(v29 + 24))(a1, a2, a3, v28, v29);
  }
}

uint64_t sub_100028C74(uint64_t *a1, unint64_t a2, void *a3, void (*a4)(uint64_t), unint64_t a5)
{
  v6 = v5;
  v93 = a4;
  v10 = sub_100030344();
  v88 = *(v10 - 1);
  __chkstk_darwin(v10);
  v85 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v87 = &v83 - v13;
  __chkstk_darwin(v14);
  v98 = &v83 - v15;
  v16 = sub_100008944(&qword_100041BB8, &qword_100033D80);
  __chkstk_darwin(v16 - 8);
  v18 = &v83 - v17;
  v97 = sub_100030354();
  v100 = *(v97 - 8);
  __chkstk_darwin(v97);
  v90 = (&v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v92 = &v83 - v21;

  v23 = sub_10002BFB4(v22);

  if (qword_100041B30 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v24 = sub_100030664();
    v25 = sub_1000089D8(v24, qword_100042728);

    v91 = v25;
    v26 = sub_100030654();
    v27 = sub_100030884();

    v28 = os_log_type_enabled(v26, v27);
    v99 = v10;
    v94 = a3;
    v95 = a2;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v29 = 134218498;
      v86 = v6;
      v89 = a5;
      if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
      {
        v30 = sub_100030CE4();
      }

      else
      {
        v30 = *(v23 + 16);
      }

      *(v29 + 4) = v30;

      *(v29 + 12) = 2080;
      v31 = sub_1000307A4();
      v33 = sub_10002B88C(v31, v32, &v101);

      *(v29 + 14) = v33;
      *(v29 + 22) = 2080;
      sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
      v34 = sub_1000307A4();
      v36 = sub_10002B88C(v34, v35, &v101);

      *(v29 + 24) = v36;
      _os_log_impl(&_mh_execute_header, v26, v27, "Got %ld reminders from Spotlight {criteria: %s, reminderIDs: %s}", v29, 0x20u);
      swift_arrayDestroy();

      v6 = v86;
      a5 = v89;
      a3 = v94;
      v10 = v99;
    }

    else
    {
    }

    v37 = a3[2];
    sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
    isa = sub_100030784().super.isa;

    v101 = 0;
    v39 = [v37 fetchRemindersWithObjectIDs:isa error:&v101];

    v40 = v101;
    if (!v39)
    {
      v45 = v101;
      sub_10002FE24();

      return swift_willThrow();
    }

    sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
    sub_100012784();
    v41 = sub_100030684();
    v42 = v40;

    v23 = sub_10002BE34(v41);

    v43 = v95;
    sub_100028554(v95, v18);
    a3 = v100;
    v44 = v97;
    if ((*(v100 + 48))(v18, 1, v97) == 1)
    {
      sub_10002CD00(v18);
      goto LABEL_40;
    }

    v47 = v92;
    (a3[4])();
    v48 = v90;
    (a3[2])(v90, v47, v44);
    if ((a3[11])(v48, v44) != enum case for REMSearchCriterion.listID(_:))
    {
      v63 = a3[1];
      v63(v47, v44);
      v63(v48, v44);
      goto LABEL_40;
    }

    v89 = a5;
    (a3[12])(v48, v44);
    v96 = *v48;
    v49 = sub_100008944(&qword_100041C30, &qword_100033DD8);
    v50 = v48;
    v51 = v88;
    v18 = v98;
    (v88[4])(v98, v50 + *(v49 + 48), v10);
    v52 = v87;
    (v51[13])(v87, enum case for REMSearchCriterion.Inclusion.includeForSiri(_:), v10);
    v53 = sub_100030334();
    v54 = v51[1];
    v90 = (v51 + 1);
    v87 = v54;
    (v54)(v52, v10);
    if ((v53 & 1) == 0)
    {
      break;
    }

    v55 = sub_100030654();
    v56 = sub_100030884();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Criteria had list id, filtering further", v57, 2u);
    }

    v86 = v6;

    v101 = _swiftEmptyArrayStorage;
    if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
    {
      v58 = sub_100030CE4();
      if (!v58)
      {
LABEL_39:

        (v87)(v18, v10);
        (a3[1])(v92, v97);
        v23 = v101;
        a5 = v89;
        v43 = v95;
        goto LABEL_40;
      }
    }

    else
    {
      v58 = *(v23 + 16);
      if (!v58)
      {
        goto LABEL_39;
      }
    }

    a2 = 0;
    a5 = v23 & 0xC000000000000001;
    while (1)
    {
      if (a5)
      {
        v60 = sub_100030BA4();
      }

      else
      {
        if (a2 >= *(v23 + 16))
        {
          goto LABEL_35;
        }

        v60 = *(v23 + 8 * a2 + 32);
      }

      v10 = v60;
      a3 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      sub_100008D28(0, &qword_100042888, NSObject_ptr);
      v6 = [v10 list];
      v61 = [v6 objectID];

      v62 = sub_100030A64();
      if (v62)
      {
        sub_100030BD4();
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
      }

      else
      {
      }

      v18 = v98;
      v10 = v99;
      ++a2;
      v59 = a3 == v58;
      a3 = v100;
      if (v59)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

  v64 = v85;
  (v51[2])(v85, v18, v10);
  v65 = sub_100030654();
  v66 = sub_100030874();
  v67 = os_log_type_enabled(v65, v66);
  a5 = v89;
  if (v67)
  {
    v68 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v101 = v88;
    *v68 = 136315138;
    sub_10002CD68();
    v84 = v65;
    v69 = sub_100030D14();
    v71 = v70;
    v72 = v64;
    v73 = v87;
    (v87)(v72, v10);
    v74 = sub_10002B88C(v69, v71, &v101);

    *(v68 + 4) = v74;
    v75 = v84;
    _os_log_impl(&_mh_execute_header, v84, v66, "Called with %s, but should only be .includeForSiri in TTRIntentsHandlerSpotlightDataSource.", v68, 0xCu);
    sub_100008D70(v88);

    v43 = v95;

    (v73)(v98, v99);
  }

  else
  {

    v76 = v87;
    (v87)(v64, v10);
    (v76)(v18, v10);
  }

  (*(v100 + 8))(v92, v97);
LABEL_40:
  if (v23 >> 62)
  {
    if (sub_100030CE4())
    {
      goto LABEL_42;
    }
  }

  else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_42:
    v93(v23);
  }

  v77 = v43;

  v78 = sub_100030654();
  v79 = sub_100030884();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&_mh_execute_header, v78, v79, "Consulting fallbackDataSource since Spotlight result is empty.", v80, 2u);
  }

  v81 = v94[7];
  v82 = v94[8];
  sub_100008A10(v94 + 4, v81);
  return (*(v82 + 24))(v77, v93, a5, v81, v82);
}

uint64_t sub_1000297F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  if (qword_100041B30 != -1)
  {
    swift_once();
  }

  v4 = sub_100030664();
  sub_1000089D8(v4, qword_100042728);

  swift_errorRetain();
  v5 = sub_100030654();
  v6 = sub_100030864();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    sub_100030354();
    v8 = sub_1000307A4();
    v10 = sub_10002B88C(v8, v9, &v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v11 = sub_100030D64();
    v13 = sub_10002B88C(v11, v12, &v15);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error matching reminders from Spotlight {criteria: %s, error: %s}", v7, 0x16u);
    swift_arrayDestroy();
  }

  return a3(_swiftEmptyArrayStorage);
}

void sub_1000299E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) < 2uLL)
  {
    v9 = v3;
    if (qword_100041B30 != -1)
    {
      swift_once();
    }

    v10 = sub_100030664();
    sub_1000089D8(v10, qword_100042728);

    v11 = sub_100030654();
    v12 = sub_100030884();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 136315138;
      sub_100030354();
      v15 = sub_1000307A4();
      v17 = sub_10002B88C(v15, v16, &v27);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Querying Spotlight for lists {criteria: %s}", v13, 0xCu);
      sub_100008D70(v14);
    }

    sub_100030254();
    sub_100008944(&qword_100042870, &qword_1000347A8);
    v18 = sub_100030374();
    v19 = *(v18 - 8);
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100033CF0;
    (*(v19 + 104))(v21 + v20, enum case for REMSearchableItemType.list(_:), v18);
    sub_100008D28(0, &qword_1000421C0, OS_dispatch_queue_ptr);
    v22 = sub_100030904();
    sub_100030244();

    v23 = swift_allocObject();
    v23[2] = a1;
    v23[3] = v9;
    v23[4] = a2;
    v23[5] = a3;

    v24 = sub_1000305B4();
    sub_1000305F4();

    v25 = swift_allocObject();
    v25[2] = a1;
    v25[3] = a2;
    v25[4] = a3;

    v26 = sub_1000305B4();
    sub_100030604();
  }

  else
  {
    v7 = swift_allocObject();
    v7[2] = a2;
    v7[3] = a3;
    v7[4] = a1;

    sub_100028370(v8, sub_10002C5C4, v7, sub_10002C368, &unk_10003DF08, sub_10002C438);
  }
}

uint64_t sub_100029E30(unint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v8 = sub_1000303E4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D8E0(a5, a1);

  sub_1000303C4();
  a3(v11);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100029F40(uint64_t *a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v48 = a3;
  v9 = sub_1000303E4();
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_10002BFB4(v11);

  if (qword_100041B30 != -1)
  {
    swift_once();
  }

  v13 = sub_100030664();
  v14 = sub_1000089D8(v13, qword_100042728);

  v44 = v14;
  v15 = sub_100030654();
  v16 = sub_100030884();

  if (os_log_type_enabled(v15, v16))
  {
    v42 = a4;
    v17 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v17 = 134218498;
    v43 = a5;
    v41 = v5;
    if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
    {
      v18 = sub_100030CE4();
    }

    else
    {
      v18 = *(v12 + 16);
    }

    *(v17 + 4) = v18;

    *(v17 + 12) = 2080;
    sub_100030354();
    v19 = a2;
    v20 = sub_1000307A4();
    v22 = sub_10002B88C(v20, v21, &v49);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2080;
    sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
    v23 = sub_1000307A4();
    v25 = sub_10002B88C(v23, v24, &v49);

    *(v17 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "Got %ld lists from Spotlight {criteria: %s, listIDs: %s}", v17, 0x20u);
    swift_arrayDestroy();

    a4 = v42;
    a5 = v43;
  }

  else
  {
    v19 = a2;
  }

  v26 = v48[2];
  sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
  isa = sub_100030784().super.isa;

  v49 = 0;
  v28 = [v26 fetchListsWithObjectIDs:isa error:&v49];

  v29 = v49;
  if (v28)
  {
    sub_100008D28(0, &qword_100041F48, REMList_ptr);
    sub_100012784();
    v30 = sub_100030684();
    v31 = v29;

    if ((v30 & 0xC000000000000001) != 0)
    {
      v32 = v19;
      if (sub_100030C84())
      {
LABEL_12:
        sub_10002BEF4(v30);

        v33 = v45;
        sub_1000303C4();
        a4(v33);
        return (*(v46 + 8))(v33, v47);
      }
    }

    else
    {
      v32 = v19;
      if (*(v30 + 16))
      {
        goto LABEL_12;
      }
    }

    v36 = sub_100030654();
    v37 = sub_100030884();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Consulting fallbackDataSource for CSL or non-Spotlight-indexed list", v38, 2u);
    }

    v39 = v48[7];
    v40 = v48[8];
    sub_100008A10(v48 + 4, v39);
    return (*(v40 + 32))(v32, a4, a5, v39, v40);
  }

  else
  {
    v35 = v49;
    sub_10002FE24();

    return swift_willThrow();
  }
}

uint64_t sub_10002A450(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v6 = sub_1000303E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100041B30 != -1)
  {
    swift_once();
  }

  v10 = sub_100030664();
  sub_1000089D8(v10, qword_100042728);

  swift_errorRetain();
  v11 = sub_100030654();
  v12 = sub_100030864();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23[1] = a4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24 = a3;
    v25 = v15;
    *v14 = 136315394;
    sub_100030354();
    v16 = sub_1000307A4();
    v18 = sub_10002B88C(v16, v17, &v25);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v19 = sub_100030D64();
    v21 = sub_10002B88C(v19, v20, &v25);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "Error matching lists from Spotlight {criteria: %s, error: %s}", v14, 0x16u);
    swift_arrayDestroy();
    a3 = v24;
  }

  sub_1000303C4();
  a3(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10002A6F0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = sub_100030354();
  v62 = *(v66 - 8);
  __chkstk_darwin(v66);
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v49 - v8);
  result = swift_allocObject();
  v67 = result;
  v68 = _swiftEmptyArrayStorage;
  *(result + 16) = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = sub_100030CE4();
    v11 = result;
    v50 = a2;
    v51 = a3;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_31:
    v43 = _swiftEmptyArrayStorage;
    v44 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
      goto LABEL_32;
    }

LABEL_29:
    v45 = swift_allocObject();
    v46 = v51;
    v45[2] = v52;
    v45[3] = a1;
    v45[4] = v50;
    v45[5] = v46;
    v45[6] = v44;
    v45[7] = v67;

    sub_100028370(v43, sub_10002C174, v45, sub_10002C368, &unk_10003DF08, sub_10002C438);
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v50 = a2;
  v51 = a3;
  if (!v11)
  {
    goto LABEL_31;
  }

LABEL_3:
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = a1 & 0xC000000000000001;
    v58 = enum case for REMStringMatchingStyle.prefix(_:);
    v57 = enum case for REMSearchCriterion.textualField(_:);
    v63 = v62 + 32;
    v64 = (v62 + 104);
    v55 = 0x8000000100034940;
    v54 = enum case for REMSearchableListType.grocery(_:);
    v65 = _swiftEmptyArrayStorage;
    v53 = enum case for REMSearchCriterion.listType(_:);
    v60 = v11;
    v61 = a1;
    v59 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v13)
      {
        v14 = sub_100030BA4();
      }

      else
      {
        v14 = *(a1 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = sub_100030834();
      if (v16)
      {

        v17 = v15;
        sub_100030774();
        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000307B4();
        }

        sub_1000307C4();

        v65 = v68;
      }

      else
      {
        v18 = [v15 title];
        v19 = [v18 spokenPhrase];

        v20 = sub_1000306F4();
        v22 = v21;

        v23 = *(sub_100008944(&qword_100041BE8, &qword_100034130) + 48);
        *v9 = v20;
        v9[1] = v22;
        v24 = sub_100030474();
        (*(*(v24 - 8) + 104))(v9 + v23, v58, v24);
        v25 = *v64;
        (*v64)(v9, v57, v66);
        v26 = *(v67 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_10002B628(0, *(v26 + 2) + 1, 1, v26, &qword_100041C28, &qword_100033DD0, &type metadata accessor for REMSearchCriterion);
          *(v67 + 16) = v26;
        }

        v28 = *(v26 + 2);
        v27 = *(v26 + 3);
        if (v28 >= v27 >> 1)
        {
          v26 = sub_10002B628((v27 > 1), v28 + 1, 1, v26, &qword_100041C28, &qword_100033DD0, &type metadata accessor for REMSearchCriterion);
        }

        *(v26 + 2) = v28 + 1;
        v29 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v30 = *(v62 + 72);
        v31 = *(v62 + 32);
        v31(&v26[v29 + v30 * v28], v9, v66);
        *(v67 + 16) = v26;
        v32 = [v15 title];
        v33 = [v32 vocabularyIdentifier];

        if (v33)
        {
          v34 = sub_1000306F4();
          v36 = v35;

          if (v34 == 0xD000000000000011 && v55 == v36)
          {

LABEL_23:
            v38 = sub_100030394();
            v39 = v56;
            (*(*(v38 - 8) + 104))(v56, v54, v38);
            v25(v39, v53, v66);
            v40 = *(v67 + 16);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_10002B628(0, *(v40 + 2) + 1, 1, v40, &qword_100041C28, &qword_100033DD0, &type metadata accessor for REMSearchCriterion);
              *(v67 + 16) = v40;
            }

            v42 = *(v40 + 2);
            v41 = *(v40 + 3);
            v13 = v59;
            if (v42 >= v41 >> 1)
            {
              v40 = sub_10002B628((v41 > 1), v42 + 1, 1, v40, &qword_100041C28, &qword_100033DD0, &type metadata accessor for REMSearchCriterion);
              *(v67 + 16) = v40;
            }

            *(v40 + 2) = v42 + 1;
            v31(&v40[v29 + v42 * v30], v56, v66);
            *(v67 + 16) = v40;
            v11 = v60;
            a1 = v61;
            goto LABEL_6;
          }

          v37 = sub_100030D44();

          if (v37)
          {
            goto LABEL_23;
          }
        }

        v11 = v60;
        a1 = v61;
        v13 = v59;
      }

LABEL_6:
      if (v11 == ++v12)
      {
        v43 = *(v67 + 16);
        v44 = v65;
        if (v43[2])
        {
          goto LABEL_29;
        }

LABEL_32:

        v47 = v52[7];
        v48 = v52[8];
        sub_100008A10(v52 + 4, v47);
        (*(v48 + 40))(a1, v50, v51, v47, v48);
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002AE5C(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >> 62)
  {
    v19 = a4;
    v20 = a3;
    v21 = sub_100030CE4();
    a3 = v20;
    a4 = v19;
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_3:
    if (a2 >> 62)
    {
      v22 = a4;
      v23 = a3;
      v24 = sub_100030CE4();
      a3 = v23;
      a4 = v22;
      if (v24)
      {
        goto LABEL_5;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    v25 = a6;
    v26 = a3[7];
    v27 = a3[8];
    v28 = a4;
    sub_100008A10(a3 + 4, v26);
    return (*(v27 + 40))(v28, a5, v25, v26, v27);
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

LABEL_5:
  v14 = a3[7];
  v15 = a3[8];
  sub_100008A10(a3 + 4, v14);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a8;
  v16[4] = a2;
  v16[5] = a5;
  v16[6] = a6;
  v17 = *(v15 + 40);

  v17(a7, sub_10002C540, v16, v14, v15);
}

uint64_t sub_10002B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v17 = a5;
  v7 = sub_1000303E4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000303D4();
  v19[0] = a2;

  sub_10000CEBC(v11);
  v12 = v19[0];
  swift_beginAccess();

  sub_10000D8E0(v13, v12);

  v14 = sub_1000303B4();
  v18 = a4;

  sub_10000CEA4(v14);
  sub_1000303C4();
  v17(v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10002B1D4()
{
  sub_100008D70((v0 + 32));

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_10002B240(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 64);
  sub_100008A10((*v1 + 32), v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_10002B30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 56);
  v10 = *(*v4 + 64);
  sub_100008A10((*v4 + 32), v9);
  return (*(v10 + 56))(a1, a2, a3, a4, v9, v10);
}

uint64_t sub_10002B394()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  sub_100008A10((*v0 + 32), v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t sub_10002B3EC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 64);
  sub_100008A10((*v2 + 32), v5);
  return (*(v6 + 80))(a1, a2, v5, v6);
}

uint64_t sub_10002B45C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 64);
  sub_100008A10((*v2 + 32), v5);
  return (*(v6 + 88))(a1, a2, v5, v6);
}

char *sub_10002B4F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008944(&qword_1000425A8, &qword_1000344D0);
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

void *sub_10002B628(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100008944(a5, a6);
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

void *sub_10002B804(uint64_t a1, uint64_t a2)
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

  sub_100008944(&unk_100041EB0, &unk_1000340E0);
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

unint64_t sub_10002B88C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002B958(v11, 0, 0, 1, a1, a2);
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
    sub_10002C5D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008D70(v11);
  return v7;
}

unint64_t sub_10002B958(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10002BA64(a5, a6);
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
    result = sub_100030BC4();
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

void *sub_10002BA64(uint64_t a1, unint64_t a2)
{
  v3 = sub_10002BAB0(a1, a2);
  sub_10002BBE0(&off_10003D2A0);
  return v3;
}

void *sub_10002BAB0(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10002BCCC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100030BC4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100030744();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10002BCCC(v10, 0);
        result = sub_100030B84();
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

uint64_t sub_10002BBE0(uint64_t result)
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

  result = sub_10002BD40(result, v11, 1, v3);
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

void *sub_10002BCCC(uint64_t a1, uint64_t a2)
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

  sub_100008944(&qword_100042878, &qword_1000347B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10002BD40(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008944(&qword_100042878, &qword_1000347B0);
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

void *sub_10002BE34(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_100030C84();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_10002B804(v2, 0);

    v1 = sub_10002C62C(&v5, v3 + 4, v2, v1, &unk_100041EC0, REMReminder_ptr);
    sub_10002C828(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_10002BEF4(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_100030C84();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_10002B804(v2, 0);

    v1 = sub_10002C62C(&v5, v3 + 4, v2, v1, &qword_100041F48, REMList_ptr);
    sub_10002C828(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_10002BFB4(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_100030C84();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_10002B804(v2, 0);

    v1 = sub_10002C830(&v5, v3 + 4, v2, v1);
    sub_10002C828(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void (*sub_10002C064(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100030BA4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10002CE68;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C0E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C11C()
{

  return _swift_deallocObject(v0, 64, 7);
}

void (*sub_10002C184(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100030BA4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10002C204;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C20C@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  sub_100008944(&qword_100041C28, &qword_100033DD0);
  v6 = sub_100030354();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100033CF0;
  (*(v7 + 16))(v9 + v8, a1, v6);
  sub_100008944(&qword_100042858, &qword_100034790);
  swift_allocObject();
  v10 = sub_100030624();

  *a4 = v10;
  return result;
}

unint64_t sub_10002C39C()
{
  result = qword_100042868;
  if (!qword_100042868)
  {
    sub_100008C7C(&qword_100042860, &unk_100034798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042868);
  }

  return result;
}

uint64_t sub_10002C400()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002C454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  sub_1000299E4(a6, sub_100012824, v9);
}

uint64_t sub_10002C4F0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002C584()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002C5D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002C62C(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4;
  v9 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v20 = -1 << *(v6 + 32);
    v10 = v6 + 64;
    v11 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v12 = v22 & *(v6 + 64);
    v26 = v11;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v17 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_100030C34();
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = result | 0x8000000000000000;
  v26 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v17 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v27 = a3;
  a3 = 0;
  v13 = 0;
  v14 = (v11 + 64) >> 6;
  v15 = 1;
  while (1)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      if (!sub_100030CB4())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      sub_100008D28(0, a5, a6);
      swift_dynamicCast();
      result = v28;
      v17 = v13;
      if (!v28)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v16 = v13;
    if (!v12)
    {
      break;
    }

    v17 = v13;
LABEL_13:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    result = *(*(v6 + 56) + ((v17 << 9) | (8 * v18)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v27;
    if (v15 == v27)
    {
LABEL_31:
      v17 = v13;
      goto LABEL_32;
    }

    ++a2;
    a3 = v15;
    if (__OFADD__(v15++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v17 >= v14)
    {
      break;
    }

    v12 = *(v10 + 8 * v17);
    ++v16;
    if (v12)
    {
      v13 = v17;
      goto LABEL_13;
    }
  }

  v12 = 0;
  if (v14 <= v13 + 1)
  {
    v23 = v13 + 1;
  }

  else
  {
    v23 = v14;
  }

  v17 = v23 - 1;
LABEL_32:
  *v9 = v6;
  v9[1] = v10;
  v9[2] = v26;
  v9[3] = v17;
  v9[4] = v12;
  return a3;
}

uint64_t sub_10002C830(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_100030C34();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_100030CC4())
      {
        goto LABEL_31;
      }

      sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

uint64_t sub_10002CA2C(uint64_t a1)
{
  v2 = sub_100030354();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  v19 = v3;
  v12 = *(v3 + 16);
  v11 = v3 + 16;
  v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
  v20 = *(v11 + 56);
  v21 = v12;
  v14 = enum case for REMSearchCriterion.textualField(_:);
  while (1)
  {
    v21(v9, v13, v2, v7);
    (*(v11 + 16))(v5, v9, v2);
    if ((*(v11 + 72))(v5, v2) == v14)
    {
      break;
    }

    (*(v11 - 8))(v5, v2);
    v13 += v20;
    if (!--v10)
    {
      return 0;
    }
  }

  (*(v19 + 96))(v5, v2);

  v16 = *(sub_100008944(&qword_100041BE8, &qword_100034130) + 48);
  v17 = sub_100030474();
  (*(*(v17 - 8) + 8))(&v5[v16], v17);
  return 1;
}

uint64_t sub_10002CC4C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002CCB4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002CD00(uint64_t a1)
{
  v2 = sub_100008944(&qword_100041BB8, &qword_100033D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002CD68()
{
  result = qword_100042880;
  if (!qword_100042880)
  {
    sub_100030344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042880);
  }

  return result;
}

uint64_t sub_10002CDF4(void (*a1)(char *), uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *v5;

  sub_10001238C(v6, v7, a1, a2);
}

uint64_t sub_10002CE84(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = sub_100030BA4();
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
      v13 = sub_100030CE4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10002CFAC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = swift_allocObject();
  *(v32 + 16) = _swiftEmptyArrayStorage;
  result = swift_allocObject();
  v5 = result;
  *(result + 16) = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = sub_100030CE4();
    v6 = result;
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return result;
  }

  v7 = 0;
  v8 = a1 & 0xC000000000000001;
  v9 = _swiftEmptyArrayStorage;
  v33 = v5;
  v34 = a1 & 0xC000000000000001;
  do
  {
    if (v8)
    {
      v11 = sub_100030BA4();
    }

    else
    {
      v11 = *(a1 + 8 * v7 + 32);
    }

    v12 = v11;
    v13 = sub_1000309A4();
    if (v13)
    {
      v10 = v13;
      sub_100030774();
      if (*((*(v32 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v32 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000307B4();
        v8 = v34;
      }

      sub_1000307C4();
    }

    else
    {
      v14 = a1;
      v15 = [v12 title];
      v16 = [v15 spokenPhrase];

      v17 = sub_1000306F4();
      v19 = v18;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 16) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_10002B4F4(0, *(v9 + 2) + 1, 1, v9);
        *(v5 + 16) = v9;
      }

      v22 = *(v9 + 2);
      v21 = *(v9 + 3);
      if (v22 >= v21 >> 1)
      {
        v9 = sub_10002B4F4((v21 > 1), v22 + 1, 1, v9);
      }

      *(v9 + 2) = v22 + 1;
      v23 = &v9[16 * v22];
      *(v23 + 4) = v17;
      *(v23 + 5) = v19;
      v5 = v33;
      *(v33 + 16) = v9;
      a1 = v14;
      v8 = v34;
    }

    ++v7;
  }

  while (v6 != v7);
LABEL_19:
  v24 = swift_allocObject();
  v24[2] = v32;
  v24[3] = v5;
  v24[4] = a2;
  v24[5] = a3;
  v25 = v31[6];
  v26 = v31[7];
  sub_100008A10(v31 + 3, v25);
  v27 = swift_allocObject();
  v27[2] = v31;
  v27[3] = sub_10002E3F4;
  v27[4] = v24;
  v28 = *(v26 + 8);

  v28(sub_100013C68, v27, v25, v26);
}

uint64_t sub_10002D30C()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100042898);
  v1 = sub_1000089D8(v0, qword_100042898);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10002D3D4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10002D488;
  v6[3] = &unk_10003E110;
  v4 = _Block_copy(v6);

  [v3 getDeliveredNotificationsWithCompletionHandler:v4];
  _Block_release(v4);
}

uint64_t sub_10002D488(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100008D28(0, &qword_100042960, UNNotification_ptr);
  v3 = sub_100030794();

  v2(v3);
}

uint64_t sub_10002D50C(unint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v66 = a4;
  v67 = a3;
  v65 = a2;
  v5 = sub_100008944(&qword_100042958, &unk_100034850);
  __chkstk_darwin(v5 - 8);
  v7 = &v58 - v6;
  v8 = sub_100030434();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v58 - v13;
  v15 = sub_100008944(&unk_100041BC0, &qword_100033D88);
  __chkstk_darwin(v15 - 8);
  v17 = &v58 - v16;
  v88 = sub_100030584();
  v77 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v76 = &v58 - v20;
  if (a1 >> 62)
  {
LABEL_34:
    v21 = sub_100030CE4();
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_3:
      v78 = v11;
      v79 = v14;
      v11 = 0;
      v85 = a1 & 0xFFFFFFFFFFFFFF8;
      v86 = a1 & 0xC000000000000001;
      v82 = (v9 + 48);
      v74 = (v9 + 16);
      v75 = (v9 + 32);
      v73 = (v9 + 88);
      v72 = enum case for RDUserNotificationType.reminderAlarm(_:);
      v70 = enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:);
      v68 = enum case for RDUserNotificationType.caldavSharedList(_:);
      v64 = enum case for RDUserNotificationType.assignmentNotification(_:);
      v63 = enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:);
      v62 = enum case for RDUserNotificationType.dueDateDeltaAlarm(_:);
      v71 = (v9 + 8);
      v81 = (v77 + 56);
      v69 = (v9 + 96);
      v22 = (v77 + 32);
      v80 = (v77 + 48);
      v61 = enum case for RDUserNotificationType.todayNotification(_:);
      v60 = enum case for RDUserNotificationType.todayNotificationBadge(_:);
      v59 = enum case for RDUserNotificationType.beforeFirstUnlock(_:);
      v89 = _swiftEmptyArrayStorage;
      v83 = v21;
      v84 = a1;
      while (1)
      {
        if (v86)
        {
          v23 = sub_100030BA4();
        }

        else
        {
          if (v11 >= *(v85 + 16))
          {
            goto LABEL_33;
          }

          v23 = *(a1 + 8 * v11 + 32);
        }

        a1 = v23;
        v24 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v25 = [v23 request];
        v26 = [v25 content];

        v27 = v26;
        sub_100030424();
        if ((*v82)(v7, 1, v8) == 1)
        {
          break;
        }

        v14 = v79;
        (*v75)(v79, v7, v8);
        v28 = v78;
        (*v74)(v78, v14, v8);
        v29 = (*v73)(v28, v8);
        if (v29 != v72)
        {
          if (v29 == v70 || v29 == v68 || v29 == v64 || v29 == v63 || v29 == v62)
          {
            v14 = v71;
            v31 = *v71;
            (*v71)(v79, v8);

            v31(v78, v8);
          }

          else
          {
            if (v29 != v61 && v29 != v60 && v29 != v59)
            {
              result = sub_100030D34();
              __break(1u);
              return result;
            }

            (*v71)(v79, v8);
          }

          goto LABEL_20;
        }

        (*v71)(v14, v8);

        (*v69)(v28, v8);
        v9 = v88;
        (*v22)(v17, v28, v88);
        v30 = 0;
LABEL_21:
        (*v81)(v17, v30, 1, v9);

        if ((*v80)(v17, 1, v9) == 1)
        {
          sub_100008BB8(v17, &unk_100041BC0, &qword_100033D88);
        }

        else
        {
          v32 = *v22;
          v14 = v76;
          (*v22)(v76, v17, v9);
          v32(v87, v14, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v89 = sub_10002B600(0, *(v89 + 2) + 1, 1, v89);
          }

          v34 = *(v89 + 2);
          v33 = *(v89 + 3);
          v9 = v34 + 1;
          if (v34 >= v33 >> 1)
          {
            v89 = sub_10002B600((v33 > 1), v34 + 1, 1, v89);
          }

          v35 = v88;
          v36 = v89;
          *(v89 + 2) = v9;
          v32(&v36[((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v34], v87, v35);
        }

        ++v11;
        a1 = v84;
        if (v24 == v83)
        {
          goto LABEL_36;
        }
      }

      sub_100008BB8(v7, &qword_100042958, &unk_100034850);
LABEL_20:
      v30 = 1;
      v9 = v88;
      goto LABEL_21;
    }
  }

  v89 = _swiftEmptyArrayStorage;
LABEL_36:
  v37 = v89;
  v38 = sub_100030A84();
  v39 = v38;
  v40 = v38 >> 62;
  if (v38 >> 62)
  {
    v41 = sub_100030CE4();
  }

  else
  {
    v41 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v41 != *(v37 + 2))
  {
    if (qword_100041B38 != -1)
    {
      swift_once();
    }

    v42 = sub_100030664();
    sub_1000089D8(v42, qword_100042898);

    v43 = sub_100030654();
    v44 = sub_100030864();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134218240;
      if (v40)
      {
        v46 = sub_100030CE4();
      }

      else
      {
        v46 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v45 + 4) = v46;

      *(v45 + 12) = 2048;
      *(v45 + 14) = *(v37 + 2);

      _os_log_impl(&_mh_execute_header, v43, v44, "Unable to fetch some reminders. reminders count doesn't match with reminderIDs count. {notificationIdentifiers.count: %ld, reminders.count: %ld}", v45, 0x16u);
    }

    else
    {
    }
  }

  if (qword_100041B38 != -1)
  {
    swift_once();
  }

  v47 = sub_100030664();
  sub_1000089D8(v47, qword_100042898);

  v48 = sub_100030654();
  v49 = sub_100030884();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v90[0] = v51;
    *v50 = 134218242;
    if (v40)
    {
      v52 = sub_100030CE4();
    }

    else
    {
      v52 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v50 + 4) = v52;

    *(v50 + 12) = 2080;
    v53 = sub_1000307A4();
    v55 = v54;

    v56 = sub_10002B88C(v53, v55, v90);

    *(v50 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v48, v49, "Retrieved %ld reminders from notification center {notificationIdentifiers: %s}", v50, 0x16u);
    sub_100008D70(v51);
  }

  else
  {
  }

  v67(v39);
}

uint64_t sub_10002E0FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  v8 = sub_10002E440(v7, (a2 + 16), (a3 + 16));

  if (qword_100041B38 != -1)
  {
    swift_once();
  }

  v9 = sub_100030664();
  sub_1000089D8(v9, qword_100042898);

  v10 = sub_100030654();
  v11 = sub_100030884();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 134218242;
    if (v8 >> 62)
    {
      v14 = sub_100030CE4();
    }

    else
    {
      v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 4) = v14;

    *(v12 + 12) = 2080;
    sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
    v15 = sub_1000307A4();
    v17 = sub_10002B88C(v15, v16, &v19);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Got %ld matchingReminders matching searchTerms {matchingReminders: %s}", v12, 0x16u);
    sub_100008D70(v13);
  }

  else
  {
  }

  a4(v8);
}

uint64_t sub_10002E310()
{
  sub_100008D70((v0 + 24));

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_10002E374()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E3AC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002E400()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_10002E440(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v28 = a3;
  v6 = a1;
  v36 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100030CE4())
  {
    swift_beginAccess();
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v8 = 0;
    v31 = v6 & 0xFFFFFFFFFFFFFF8;
    v32 = v6 & 0xC000000000000001;
    v30 = v6 + 32;
    v26 = v6;
    v27 = a2;
    v25 = i;
    while (1)
    {
      if (v32)
      {
        v9 = sub_100030BA4();
      }

      else
      {
        if (v8 >= *(v31 + 16))
        {
          goto LABEL_27;
        }

        v9 = *(v30 + 8 * v8);
      }

      v34 = v9;
      v10 = __OFADD__(v8, 1);
      v11 = v8 + 1;
      if (v10)
      {
        break;
      }

      v33 = v11;
      v12 = *a2;

      v13 = [v34 objectID];
      v35 = v13;
      __chkstk_darwin(v13);
      v24[2] = &v35;
      v14 = sub_10002CE84(sub_10002E748, v24, v12);

      if (v14)
      {
LABEL_5:
        sub_100030BD4();
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
      }

      else
      {
        v15 = *v28;
        v16 = *(*v28 + 16);
        if (v16)
        {
          v29 = v4;

          v6 = 0;
          v17 = (v15 + 40);
          v4 = v34;
          while (v6 < *(v15 + 16))
          {
            v18 = *(v17 - 1);
            v19 = *v17;

            v20 = [v4 titleAsString];
            if (v20)
            {
              v21 = v20;
              sub_1000306F4();
              a2 = v22;

              v37._countAndFlagsBits = v18;
              v37._object = v19;
              v4 = v34;
              LOBYTE(v21) = sub_100030714(v37);

              if (v21)
              {

                v4 = v29;
                v6 = v26;
                a2 = v27;
                i = v25;
                goto LABEL_5;
              }
            }

            else
            {
            }

            ++v6;
            v17 += 2;
            if (v16 == v6)
            {

              v4 = v29;
              v6 = v26;
              a2 = v27;
              i = v25;
              goto LABEL_6;
            }
          }

          __break(1u);
          break;
        }
      }

LABEL_6:
      v8 = v33;
      if (v33 == i)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10002E7B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002E7CC()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100042968);
  v1 = sub_1000089D8(v0, qword_100042968);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10002E894(void *a1, uint64_t a2, void (**a3)(uint64_t, id))
{
  if (qword_100041B40 != -1)
  {
    swift_once();
  }

  v6 = sub_100030664();
  sub_1000089D8(v6, qword_100042968);
  v7 = a1;
  v8 = sub_100030654();
  v9 = sub_100030884();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = a3;
    v12 = swift_slowAlloc();
    v68 = v12;
    *v10 = 136315138;
    v3 = [v7 contactEventTrigger];
    sub_100008944(&qword_100042990, "V");
    v13 = sub_100030A94();
    v15 = v14;

    v16 = sub_10002B88C(v13, v15, &v68);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "SiriKit asked for resolving contactEventTrigger {contactEventTrigger: %s}", v10, 0xCu);
    sub_100008D70(v12);
    a3 = v11;
  }

  v17 = [v7 contactEventTrigger];
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = v17;
  v19 = [v17 triggerContact];
  if (!v19)
  {

LABEL_17:
    v33 = sub_100030654();
    v34 = sub_100030884();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Got nil contactEventTrigger. {result: .notRequired}", v35, 2u);
    }

    sub_100008D28(0, &qword_100042998, INSetTaskAttributeContactEventTriggerResolutionResult_ptr);
    v18 = [swift_getObjCClassFromMetadata() notRequired];
    a3[2](a3, v18);
    goto LABEL_20;
  }

  v20 = v19;
  v21 = [v7 targetTask];
  if (!v21 || (v22 = v21, v23 = sub_1000309B4(), v22, !v23) || (v24 = [v23 account], v25 = objc_msgSend(v24, "capabilities"), v24, v23, !v25))
  {
    v29 = sub_100030654();
    v30 = sub_100030864();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to lookup capabilities. Ignoring contactEventTrigger. {result: .notRequired}", v31, 2u);
    }

    sub_100008D28(0, &qword_100042998, INSetTaskAttributeContactEventTriggerResolutionResult_ptr);
    v32 = [swift_getObjCClassFromMetadata() notRequired];
    a3[2](a3, v32);

    v18 = v32;
    goto LABEL_20;
  }

  if (![v25 supportsPersonTrigger])
  {
    v36 = sub_100030654();
    v37 = sub_100030884();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Reminder account doesn't support contactTrigger. {result: .unsupported(.accountDoesNotSupport)}", v38, 2u);
    }

    v39 = [objc_opt_self() unsupportedForReason:1];
    a3[2](a3, v39);

    v18 = v39;
    goto LABEL_20;
  }

  v26 = [v20 contactIdentifier];
  if (v26)
  {

    sub_100008944(&unk_100041EB0, &unk_1000340E0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100033D00;
    *(v27 + 32) = v20;
    v28 = v20;
  }

  else
  {
    v40 = [v20 alternatives];
    if (v40)
    {
      v41 = v40;
      sub_100008D28(0, &qword_100042658, INPerson_ptr);
      v27 = sub_100030794();
    }

    else
    {
      v27 = _swiftEmptyArrayStorage;
    }
  }

  if (v27 >> 62)
  {
    v42 = sub_100030CE4();
    if (v42)
    {
      goto LABEL_29;
    }

LABEL_37:

    v46 = _swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v42 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v42)
  {
    goto LABEL_37;
  }

LABEL_29:
  v66 = a3;
  v68 = _swiftEmptyArrayStorage;
  sub_100030BF4();
  if (v42 < 0)
  {
    __break(1u);
LABEL_61:
    v65 = sub_100030BA4();
LABEL_57:
    v55.super.isa = v65;

    sub_100008D28(0, &qword_100042998, INSetTaskAttributeContactEventTriggerResolutionResult_ptr);
    v56 = [swift_getObjCClassFromMetadata() successWithResolvedContactEventTrigger:v55.super.isa];
    goto LABEL_58;
  }

  v43 = 0;
  do
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v44 = sub_100030BA4();
    }

    else
    {
      v44 = *(v27 + 8 * v43 + 32);
    }

    v45 = v44;
    ++v43;
    [objc_allocWithZone(INContactEventTrigger) initWithTriggerContact:v44];

    sub_100030BD4();
    v3 = v68[2];
    sub_100030C04();
    sub_100030C14();
    sub_100030BE4();
  }

  while (v42 != v43);

  v46 = v68;
  a3 = v66;
LABEL_38:
  if (v46 >> 62)
  {
    v47 = sub_100030CE4();
    if (v47 >= 2)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47 >= 2)
    {
LABEL_40:

      v48 = sub_100030654();
      v49 = sub_100030884();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v68 = v67;
        *v50 = 136315138;
        sub_100008D28(0, &qword_100042988, INContactEventTrigger_ptr);
        v51 = sub_1000307A4();
        v53 = sub_10002B88C(v51, v52, &v68);

        *(v50 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v48, v49, "Got >1 triggersToChoose {result: .disambiguation(%s)}", v50, 0xCu);
        sub_100008D70(v67);
      }

      sub_100008D28(0, &qword_100042998, INSetTaskAttributeContactEventTriggerResolutionResult_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_100008D28(0, &qword_100042988, INContactEventTrigger_ptr);
      v55.super.isa = sub_100030784().super.isa;

      v56 = [ObjCClassFromMetadata disambiguationWithContactEventTriggersToDisambiguate:v55.super.isa];
LABEL_58:
      v64 = v56;

LABEL_59:
      a3[2](a3, v64);

LABEL_20:
      return;
    }
  }

  if (v47 != 1)
  {

    v61 = sub_100030654();
    v62 = sub_100030884();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Got 0 triggersToChoose {result: .unsupported}", v63, 2u);
    }

    sub_100008D28(0, &qword_100042998, INSetTaskAttributeContactEventTriggerResolutionResult_ptr);
    v64 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_59;
  }

  v57 = sub_100030654();
  v58 = sub_100030884();

  if (!os_log_type_enabled(v57, v58))
  {

    v59 = v46 & 0xC000000000000001;
    goto LABEL_54;
  }

  v3 = v25;
  v25 = v20;
  v20 = a3;
  v42 = swift_slowAlloc();
  a3 = swift_slowAlloc();
  *v42 = 138412290;
  v59 = v46 & 0xC000000000000001;
  if ((v46 & 0xC000000000000001) != 0)
  {
    goto LABEL_63;
  }

  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v46 + 32); ; i = sub_100030BA4())
    {
      *(v42 + 4) = i;
      *a3 = i;
      _os_log_impl(&_mh_execute_header, v57, v58, "Got 1 triggersToChoose {result: .success(%@)}", v42, 0xCu);
      sub_1000169BC(a3);

      a3 = v20;
      v20 = v25;
      v25 = v3;
LABEL_54:
      if (v59)
      {
        break;
      }

      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v65 = *(v46 + 32);
        goto LABEL_57;
      }

      __break(1u);
LABEL_63:
      ;
    }

    goto LABEL_61;
  }

  __break(1u);
}

void sub_10002F344(void *a1, uint64_t a2, void (**a3)(uint64_t, id))
{
  if (qword_100041B40 != -1)
  {
    swift_once();
  }

  v6 = sub_100030664();
  sub_1000089D8(v6, qword_100042968);
  v7 = a1;
  v8 = sub_100030654();
  v9 = sub_100030884();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = a3;
    v12 = swift_slowAlloc();
    v65 = v12;
    *v10 = 136315138;
    v3 = [v7 contactEventTrigger];
    sub_100008944(&qword_100042990, "V");
    v13 = sub_100030A94();
    v15 = v14;

    v16 = sub_10002B88C(v13, v15, &v65);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "SiriKit asked for resolving contactEventTrigger {contactEventTrigger: %s}", v10, 0xCu);
    sub_100008D70(v12);
    a3 = v11;
  }

  v17 = [v7 contactEventTrigger];
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = v17;
  v19 = [v17 triggerContact];
  if (!v19)
  {

LABEL_12:
    v26 = sub_100030654();
    v27 = sub_100030884();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Got nil contactEventTrigger. {result: .notRequired}", v28, 2u);
    }

    sub_100008D28(0, &qword_100042980, INAddTasksContactEventTriggerResolutionResult_ptr);
    v18 = [swift_getObjCClassFromMetadata() notRequired];
    a3[2](a3, v18);
    goto LABEL_15;
  }

  v20 = v19;
  v21 = sub_10001E210(v7);
  if (!v21)
  {
    v29 = sub_100030654();
    v30 = sub_100030864();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to lookup capabilities. Ignoring contactEventTrigger. {result: .notRequired}", v31, 2u);
    }

    sub_100008D28(0, &qword_100042980, INAddTasksContactEventTriggerResolutionResult_ptr);
    v32 = [swift_getObjCClassFromMetadata() notRequired];
    a3[2](a3, v32);

    v18 = v32;
    goto LABEL_15;
  }

  v22 = v21;
  if (([v21 supportsPersonTrigger] & 1) == 0)
  {
    v33 = sub_100030654();
    v34 = sub_100030884();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Reminder account doesn't support contactTrigger. {result: .unsupported(.accountDoesNotSupport)}", v35, 2u);
    }

    v36 = [objc_opt_self() unsupportedForReason:1];
    a3[2](a3, v36);

    v18 = v36;
    goto LABEL_15;
  }

  v23 = [v20 contactIdentifier];
  if (v23)
  {

    sub_100008944(&unk_100041EB0, &unk_1000340E0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100033D00;
    *(v24 + 32) = v20;
    v25 = v20;
  }

  else
  {
    v37 = [v20 alternatives];
    if (v37)
    {
      v38 = v37;
      sub_100008D28(0, &qword_100042658, INPerson_ptr);
      v24 = sub_100030794();
    }

    else
    {
      v24 = _swiftEmptyArrayStorage;
    }
  }

  if (v24 >> 62)
  {
    v39 = sub_100030CE4();
    if (v39)
    {
      goto LABEL_27;
    }

LABEL_35:

    v43 = _swiftEmptyArrayStorage;
    goto LABEL_36;
  }

  v39 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
    goto LABEL_35;
  }

LABEL_27:
  v63 = a3;
  v65 = _swiftEmptyArrayStorage;
  sub_100030BF4();
  if (v39 < 0)
  {
    __break(1u);
LABEL_59:
    v62 = sub_100030BA4();
LABEL_55:
    v52.super.isa = v62;

    sub_100008D28(0, &qword_100042980, INAddTasksContactEventTriggerResolutionResult_ptr);
    v53 = [swift_getObjCClassFromMetadata() successWithResolvedContactEventTrigger:v52.super.isa];
    goto LABEL_56;
  }

  v40 = 0;
  do
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v41 = sub_100030BA4();
    }

    else
    {
      v41 = *(v24 + 8 * v40 + 32);
    }

    v42 = v41;
    ++v40;
    [objc_allocWithZone(INContactEventTrigger) initWithTriggerContact:v41];

    sub_100030BD4();
    v3 = v65[2];
    sub_100030C04();
    sub_100030C14();
    sub_100030BE4();
  }

  while (v39 != v40);

  v43 = v65;
  a3 = v63;
LABEL_36:
  if (v43 >> 62)
  {
    v44 = sub_100030CE4();
    if (v44 >= 2)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44 >= 2)
    {
LABEL_38:

      v45 = sub_100030654();
      v46 = sub_100030884();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v65 = v64;
        *v47 = 136315138;
        sub_100008D28(0, &qword_100042988, INContactEventTrigger_ptr);
        v48 = sub_1000307A4();
        v50 = sub_10002B88C(v48, v49, &v65);

        *(v47 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v45, v46, "Got >1 triggersToChoose {result: .disambiguation(%s)}", v47, 0xCu);
        sub_100008D70(v64);
      }

      sub_100008D28(0, &qword_100042980, INAddTasksContactEventTriggerResolutionResult_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_100008D28(0, &qword_100042988, INContactEventTrigger_ptr);
      v52.super.isa = sub_100030784().super.isa;

      v53 = [ObjCClassFromMetadata disambiguationWithContactEventTriggersToDisambiguate:v52.super.isa];
LABEL_56:
      v61 = v53;

LABEL_57:
      a3[2](a3, v61);

LABEL_15:
      return;
    }
  }

  if (v44 != 1)
  {

    v58 = sub_100030654();
    v59 = sub_100030884();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Got 0 triggersToChoose {result: .unsupported}", v60, 2u);
    }

    sub_100008D28(0, &qword_100042980, INAddTasksContactEventTriggerResolutionResult_ptr);
    v61 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_57;
  }

  v54 = sub_100030654();
  v55 = sub_100030884();

  if (!os_log_type_enabled(v54, v55))
  {

    v56 = v43 & 0xC000000000000001;
    goto LABEL_52;
  }

  v3 = v22;
  v22 = v20;
  v20 = a3;
  v39 = swift_slowAlloc();
  a3 = swift_slowAlloc();
  *v39 = 138412290;
  v56 = v43 & 0xC000000000000001;
  if ((v43 & 0xC000000000000001) != 0)
  {
    goto LABEL_61;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v43 + 32); ; i = sub_100030BA4())
    {
      *(v39 + 4) = i;
      *a3 = i;
      _os_log_impl(&_mh_execute_header, v54, v55, "Got 1 triggersToChoose {result: .success(%@)}", v39, 0xCu);
      sub_1000169BC(a3);

      a3 = v20;
      v20 = v22;
      v22 = v3;
LABEL_52:
      if (v56)
      {
        break;
      }

      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v62 = *(v43 + 32);
        goto LABEL_55;
      }

      __break(1u);
LABEL_61:
      ;
    }

    goto LABEL_59;
  }

  __break(1u);
  sub_10002FD74();
}