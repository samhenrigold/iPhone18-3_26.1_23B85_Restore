uint64_t sub_10002E580(uint64_t a1, void *a2)
{
  v4 = sub_100041410();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    sub_1000413D0();
    swift_errorRetain();
    v9 = a2;
    v10 = sub_100041400();
    v11 = sub_100041CE0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412546;
      *(v12 + 4) = v9;
      *v13 = v9;
      *(v12 + 12) = 2112;
      swift_errorRetain();
      v14 = v9;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v15;
      v13[1] = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "%@ composeMessage - insert message error : %@", v12, 0x16u);
      sub_100002D08(&unk_10005CA00, &unk_100045CF0);
      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void sub_10002E784(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100041410();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();
  v9 = a2;
  v10 = sub_100041400();
  v11 = sub_100041CC0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "%@ acceptMessage", v12, 0xCu);
    sub_10000E9F0(v13, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v6 + 8))(v8, v5);
  v15 = sub_10002E250(1);
  aBlock[4] = sub_10002E9C4;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000151F0;
  aBlock[3] = &unk_100057350;
  v16 = _Block_copy(aBlock);
  [a3 sendMessage:v15 completionHandler:v16];
  _Block_release(v16);
}

uint64_t sub_10002E9C4(uint64_t a1)
{
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    sub_1000413D0();
    swift_errorRetain();
    v7 = sub_100041400();
    v8 = sub_100041CE0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "acceptMessage - send message error : %@", v9, 0xCu);
      sub_10000E9F0(v10, &unk_10005CA00, &unk_100045CF0);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_10002EB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100041410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();
  v11 = v3;

  v12 = sub_100041400();
  v13 = sub_100041CC0();

  v14 = os_log_type_enabled(v12, v13);
  v54 = v11;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v53 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v52 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v51 = a2;
    v20 = v19;
    v57[0] = v19;
    *v16 = 138412546;
    *(v16 + 4) = v11;
    *v18 = v11;
    *(v16 + 12) = 2080;
    v21 = v11;
    v22 = sub_100041A90();
    v24 = sub_10003FBD0(v22, v23, v57);

    *(v16 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v12, v13, "%@ Received text input payload to send a friend request: %s", v16, 0x16u);
    sub_10000E9F0(v18, &unk_10005CA00, &unk_100045CF0);
    a3 = v52;

    sub_10000E8A8(v20);
    a2 = v51;

    a1 = v53;
  }

  (*(v8 + 8))(v10, v7);
  if (a2 == 0xD00000000000002CLL && 0x8000000100045030 == a3 || (v25 = sub_100041FC0(), result = 0, (v25 & 1) != 0))
  {
    v27 = OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel;
    v28 = v54;
    v29 = *&v54[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
    if (v29)
    {
      v58 = 0x6F43646E65697266;
      v59 = 0xEA00000000006564;
      v30 = v29;
      sub_100041E90();
      if (*(a1 + 16) && (v31 = sub_1000300E4(v57), (v32 & 1) != 0))
      {
        sub_100012320(*(a1 + 56) + 32 * v31, &v58);
        sub_100030E04(v57);
        v33 = swift_dynamicCast();
        v34 = v55;
        v35 = v56;
        if (!v33)
        {
          v34 = 0;
          v35 = 0;
        }
      }

      else
      {
        sub_100030E04(v57);
        v34 = 0;
        v35 = 0;
      }

      v36 = &v30[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];
      *v36 = v34;
      *(v36 + 1) = v35;

      v37 = *&v28[v27];
      if (v37)
      {
        v58 = 0x7255646E65697266;
        v59 = 0xE90000000000006CLL;
        v38 = v37;
        sub_100041E90();
        if (*(a1 + 16) && (v39 = sub_1000300E4(v57), (v40 & 1) != 0))
        {
          sub_100012320(*(a1 + 56) + 32 * v39, &v58);
          sub_100030E04(v57);
          v41 = swift_dynamicCast();
          v42 = v55;
          v43 = v56;
          if (!v41)
          {
            v42 = 0;
            v43 = 0;
          }
        }

        else
        {
          sub_100030E04(v57);
          v42 = 0;
          v43 = 0;
        }

        v44 = &v38[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendSupportPageURL];
        *v44 = v42;
        *(v44 + 1) = v43;
      }
    }

    v58 = 0xD00000000000001ALL;
    v59 = 0x8000000100045060;
    sub_100041E90();
    if (*(a1 + 16) && (v45 = sub_1000300E4(v57), (v46 & 1) != 0))
    {
      sub_100012320(*(a1 + 56) + 32 * v45, &v58);
      sub_100030E04(v57);
      v47 = swift_dynamicCast();
      v48 = v55;
      v49 = v56;
      if (!v47)
      {
        v48 = 0;
        v49 = 0;
      }
    }

    else
    {
      sub_100030E04(v57);
      v48 = 0;
      v49 = 0;
    }

    qword_10005DA18 = v48;
    qword_10005DA20 = v49;

    sub_10002DFB0();
    return 1;
  }

  return result;
}

void sub_10002F1BC(uint64_t a1, void *a2)
{
  v4 = sub_100041410();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  if (a1)
  {
    sub_1000413D0();
    v11 = a2;
    swift_errorRetain();
    v12 = sub_100041400();
    v13 = sub_100041CE0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = a1;
      v29 = v16;
      *v14 = 138412546;
      *(v14 + 4) = v11;
      *v15 = v11;
      *(v14 + 12) = 2080;
      v17 = v11;
      swift_errorRetain();
      sub_100002D08(&unk_10005CF10, &qword_100047670);
      v18 = sub_100041B40();
      v20 = sub_10003FBD0(v18, v19, &v29);

      *(v14 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "%@ messageActionsViewController - createFriendRequest error: %s", v14, 0x16u);
      sub_10000E9F0(v15, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v16);
    }

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v21 = [objc_allocWithZone(GKReporter) init];
    [v21 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestCreated];

    sub_1000413E0();
    v22 = a2;
    v23 = sub_100041400();
    v24 = sub_100041CC0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "%@ messageActionsViewController - createFriendRequest succeed.", v25, 0xCu);
      sub_10000E9F0(v26, &unk_10005CA00, &unk_100045CF0);
    }

    (*(v5 + 8))(v10, v4);
    sub_10002DFB0();
  }
}

void sub_10002F548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTimeInterval a5)
{
  v12 = 0;
  v6 = sub_100041AF0();
  v7 = sub_100041AF0();
  v8 = GKGameCenterUIFrameworkBundle();
  otherButtonTitle._countAndFlagsBits = 0xE000000000000000;
  v13._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v13._object = 0xE90000000000004ELL;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v9.super.isa = v8;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100041180(v13, v14, v9, v15, 0, otherButtonTitle);

  v10 = sub_100041AF0();

  CFUserNotificationDisplayAlert(a5, 0, 0, 0, 0, v6, v7, v10, 0, 0, &v12);
}

uint64_t sub_10002F684(uint64_t a1)
{
  v2 = sub_1000414D0();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100041570();
}

uint64_t sub_10002F74C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000338DC;

  return v6();
}

uint64_t sub_10002F834(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10002F91C;

  return v7();
}

uint64_t sub_10002F91C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002FA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002D08(&qword_10005DAF0, &qword_100046EE8);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100021B9C(a3, v23 - v10, &qword_10005DAF0, &qword_100046EE8);
  v12 = sub_100041C90();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000E9F0(v11, &qword_10005DAF0, &qword_100046EE8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100041C80();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_100041C50();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_100041B50() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10000E9F0(a3, &qword_10005DAF0, &qword_100046EE8);

    return v21;
  }

LABEL_8:
  sub_10000E9F0(a3, &qword_10005DAF0, &qword_100046EE8);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10002FD0C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002FE04;

  return v6(a1);
}

uint64_t sub_10002FE04()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10002FEFC(uint64_t a1)
{
  sub_100041B20();
  sub_100042000();
  sub_100041B70();
  v2 = sub_100042020();

  return sub_100030128(a1, v2);
}

unint64_t sub_10002FF90(uint64_t a1, uint64_t a2)
{
  sub_100042000();
  sub_100041B70();
  v4 = sub_100042020();

  return sub_10003022C(a1, a2, v4);
}

unint64_t sub_100030008(uint64_t a1)
{
  v2 = sub_100041FF0();

  return sub_1000302E4(a1, v2);
}

unint64_t sub_10003004C(uint64_t a1, uint64_t a2)
{
  sub_1000412F0();
  sub_100033620(&qword_10005DBC0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v3 = sub_100041AA0();

  return sub_100030350(a1, v3);
}

unint64_t sub_1000300E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100041E70(*(v2 + 40));

  return sub_100030510(a1, v4);
}

unint64_t sub_100030128(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_100041B20();
      v8 = v7;
      if (v6 == sub_100041B20() && v8 == v9)
      {
        break;
      }

      v11 = sub_100041FC0();

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

unint64_t sub_10003022C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100041FC0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000302E4(uint64_t a1, uint64_t a2)
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

unint64_t sub_100030350(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1000412F0();
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
      sub_100033620(&qword_10005DBC8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v15 = sub_100041AE0();
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

unint64_t sub_100030510(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100030EB0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100041E80();
      sub_100030E04(v8);
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

uint64_t sub_1000305DC(uint64_t a1)
{
  v2 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  v3 = __chkstk_darwin(v2);
  v5 = &v11 - v4;
  if (qword_10005C508 != -1)
  {
    v10 = v3;
    swift_once();
    v3 = v10;
  }

  v6 = sub_100033330(v3, qword_10005DA00);
  v7 = sub_100041200();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v5, a1, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  swift_beginAccess();
  sub_100033368(v5, v6);
  return swift_endAccess();
}

uint64_t sub_10003074C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100041A10();
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100041A30();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000EA78(0, &qword_10005CA10, OS_dispatch_queue_ptr);
  v14 = sub_100041D50();
  v15 = swift_allocObject();
  v15[2] = 0x403E000000000000;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  aBlock[4] = sub_100033880;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012BD4;
  aBlock[3] = &unk_100057558;
  v16 = _Block_copy(aBlock);

  sub_100041A20();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100033620(&qword_10005CA18, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002D08(&qword_10005CA20, qword_100045D00);
  sub_100003214(&qword_10005CA28, &qword_10005CA20, qword_100045D00, &protocol conformance descriptor for [A]);
  sub_100041E60();
  sub_100041D60();
  _Block_release(v16);

  (*(v19 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v18);
}

void sub_100030A64()
{
  v1 = sub_100041410();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
  if (v5)
  {
    v6 = objc_opt_self();
    v31 = v5;
    v7 = [v6 shared];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 isAddingFriendsRestricted];

      if (v9)
      {
        v10 = [objc_allocWithZone(GKReporter) init];
        [v10 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestRestrictedError];

        v11 = GKGameCenterUIFrameworkBundle();
        v28._countAndFlagsBits = 0xE000000000000000;
        v33._countAndFlagsBits = 0x525F444E45495246;
        v33._object = 0xEE00545345555145;
        v35.value._countAndFlagsBits = 0;
        v35.value._object = 0;
        v12.super.isa = v11;
        v37._countAndFlagsBits = 0;
        v37._object = 0xE000000000000000;
        v13 = sub_100041180(v33, v35, v12, v37, 0, v28);
        v15 = v14;

        v16 = GKGameCenterUIFrameworkBundle();
        v29._countAndFlagsBits = 0xE000000000000000;
        v34._object = 0x8000000100044180;
        v34._countAndFlagsBits = 0xD000000000000027;
        v36.value._countAndFlagsBits = 0;
        v36.value._object = 0;
        v17.super.isa = v16;
        v38._countAndFlagsBits = 0;
        v38._object = 0xE000000000000000;
        v18 = sub_100041180(v34, v36, v17, v38, 0, v29);
        v20 = v19;

        sub_10003074C(v13, v15, v18, v20);

        v21 = v31;
      }

      else
      {
        v30 = v0;
        sub_100018678(v31, v30);

        v21 = v30;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000413D0();
    v22 = v0;
    v23 = sub_100041400();
    v24 = sub_100041CE0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "%@ messageActionsViewController - Expected a playerModel", v25, 0xCu);
      sub_10000E9F0(v26, &unk_10005CA00, &unk_100045CF0);
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_100030E58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100030F0C()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100030F64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10002F91C;

  return sub_10002C410(v2, v3, v4, v5, v6);
}

uint64_t sub_10003102C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000338DC;

  return sub_10002F74C(v2, v3, v4);
}

uint64_t sub_1000310F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100031130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000338DC;

  return sub_10002F834(a1, v4, v5, v6);
}

uint64_t sub_1000311FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031234(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000338DC;

  return sub_10002FD0C(a1, v4);
}

uint64_t sub_1000312EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F91C;

  return sub_10002FD0C(a1, v4);
}

void sub_1000313A4(uint64_t a1, void *a2)
{
  v4 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1000410D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  qword_10005FF58 = a1;
  qword_10005FF60 = a2;

  if (a2)
  {
    v21 = a1;
    v22 = a2;

    sub_1000410C0();
    sub_1000024FC();
    v11 = sub_100041E40();
    v13 = v12;
    (*(v8 + 8))(v10, v7);
    if (v13)
    {

      a1 = v11;
      a2 = v13;
    }

    v21 = 0xD00000000000001FLL;
    v22 = 0x8000000100045120;
    v23._countAndFlagsBits = a1;
    v23._object = a2;
    sub_100041B80(v23);
  }

  v14 = [objc_opt_self() defaultWorkspace];
  if (v14)
  {
    v15 = v14;
    sub_1000411F0();

    v16 = sub_100041200();
    v17 = *(v16 - 8);
    v19 = 0;
    if ((*(v17 + 48))(v6, 1, v16) != 1)
    {
      sub_1000411D0(v18);
      v19 = v20;
      (*(v17 + 8))(v6, v16);
    }

    [v15 openURL:v19];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100031658()
{
  v1 = sub_100041A10();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100041A30();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000EA78(0, &qword_10005CA10, OS_dispatch_queue_ptr);
  v7 = sub_100041D50();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100033830;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012BD4;
  aBlock[3] = &unk_100057508;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_100041A20();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100033620(&qword_10005CA18, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002D08(&qword_10005CA20, qword_100045D00);
  sub_100003214(&qword_10005CA28, &qword_10005CA20, qword_100045D00, &protocol conformance descriptor for [A]);
  sub_100041E60();
  sub_100041D60();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

uint64_t sub_10003194C()
{
  v1 = sub_100029528(0x65746E496E69614DLL, 0xED00006563616672, 0, type metadata accessor for FriendRequestCardViewController, &qword_10005DBA8, &qword_100046FA8);
  v2 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel);
  v3 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel);
  *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel) = v2;
  v4 = v2;

  v5 = (v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_onFetchedUrl);
  v6 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_onFetchedUrl);
  v7 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_onFetchedUrl + 8);
  *v5 = sub_1000338D4;
  v5[1] = 0;
  sub_10000EA50(v6, v7);

  return v1;
}

void sub_100031A30(void *a1, void (**a2)(void, void))
{
  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;

    v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v7, v9}];
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100033794;
    *(v12 + 24) = v11;
    v16[4] = sub_1000337AC;
    v16[5] = v12;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10002AC64;
    v16[3] = &unk_100057440;
    v13 = _Block_copy(v16);
    v14 = a1;

    v15 = [v10 imageWithActions:v13];
    _Block_release(v13);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      (a2)[2](a2, v15);

      return;
    }

    __break(1u);
  }

  _Block_release(a2);
  __break(1u);
}

void sub_100031C24()
{
  v1 = sub_100041410();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = [objc_allocWithZone(GKReporter) init];
  [v8 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestCancelSending];

  if (qword_10005C508 != -1)
  {
    swift_once();
  }

  v9 = sub_100033330(v5, qword_10005DA00);
  v10 = sub_100041200();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  swift_beginAccess();
  sub_100033368(v7, v9);
  swift_endAccess();
  v11 = *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
  if (v11 && *(v11 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState) == 1)
  {
    v12 = v0;
    v13 = v11;
    sub_10001C2BC(v13, v12);
  }

  else
  {
    sub_1000413D0();
    v14 = v0;
    v15 = sub_100041400();
    v16 = sub_100041CE0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "%@ didCancelSending - Expected a playerModel", v17, 0xCu);
      sub_10000E9F0(v18, &unk_10005CA00, &unk_100045CF0);
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_100031F50(uint64_t a1)
{
  v2 = [objc_allocWithZone(CNContactStore) init];
  if (qword_10005C500 != -1)
  {
    swift_once();
  }

  sub_100002D08(&qword_10005CFA0, &qword_1000463C0);
  isa = sub_100041C10().super.isa;
  v14 = 0;
  v4 = [v2 unifiedContactsMatchingPredicate:a1 keysToFetch:isa error:&v14];

  v5 = v14;
  if (!v4)
  {
    v13 = v14;
    sub_1000411C0();

    swift_willThrow();

    return 0;
  }

  sub_10000EA78(0, &qword_10005CFA8, CNContact_ptr);
  v6 = sub_100041C20();
  v7 = v5;

  if (v6 >> 62)
  {
    if (sub_100041F50())
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    return 0;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = sub_100041EC0();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;

  v10 = [v9 givenName];

  v11 = sub_100041B20();
  return v11;
}

void sub_100032178(void *a1)
{
  v3 = sub_100041410();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v80 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v78 - v8;
  __chkstk_darwin(v7);
  v11 = &v78 - v10;
  sub_1000413E0();
  v12 = v1;
  v13 = sub_100041400();
  v14 = sub_100041CC0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v81 = v3;
    v79 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *v17 = v12;
    *(v16 + 12) = 2080;
    v19 = v12;
    *(v16 + 14) = sub_10003FBD0(0xD000000000000020, 0x8000000100045080, aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "%@ %s didStartSending the friend invite.", v16, 0x16u);
    sub_10000E9F0(v17, &unk_10005CA00, &unk_100045CF0);

    sub_10000E8A8(v18);

    a1 = v79;
    v3 = v81;
  }

  v20 = *(v4 + 8);
  v20(v11, v3);
  v21 = [objc_allocWithZone(GKReporter) init];
  [v21 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestSent];

  v22 = qword_10005DA20;
  if (qword_10005DA20)
  {
    v23 = qword_10005DA18;

    sub_1000413E0();

    v24 = sub_100041400();
    v25 = sub_100041CC0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v81 = v3;
      v27 = a1;
      v28 = v26;
      aBlock[0] = swift_slowAlloc();
      *v28 = 136315394;
      *(v28 + 4) = sub_10003FBD0(0xD000000000000020, 0x8000000100045080, aBlock);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_10003FBD0(v23, v22, aBlock);
      _os_log_impl(&_mh_execute_header, v24, v25, "%s - recipientContactIdentifier was provided. Adding %s to the deny list.", v28, 0x16u);
      swift_arrayDestroy();

      a1 = v27;

      v29 = v9;
      v30 = v81;
    }

    else
    {

      v29 = v9;
      v30 = v3;
    }

    v20(v29, v30);
    v47 = [objc_opt_self() proxyForLocalPlayer];
    v48 = [v47 utilityServicePrivate];

    v49 = sub_100041AF0();
    v50 = swift_allocObject();
    *(v50 + 16) = v23;
    *(v50 + 24) = v22;
    aBlock[4] = sub_100033474;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000151F0;
    aBlock[3] = &unk_1000571C0;
    v51 = _Block_copy(aBlock);

    [v48 denyContact:v49 handler:v51];
    _Block_release(v51);
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = [a1 recipientAddresses];
    v32 = sub_100041C20();

    v33 = *(v32 + 16);

    if (v33 == 1)
    {
      v34 = [a1 recipientAddresses];
      v35 = sub_100041C20();

      if (v35[2])
      {
        v37 = v35[4];
        v36 = v35[5];

        v38 = v80;
        sub_1000413E0();
        v39 = sub_100041400();
        v40 = sub_100041CC0();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v81 = v3;
          aBlock[0] = v42;
          v43 = a1;
          v44 = v42;
          *v41 = 136315138;
          *(v41 + 4) = sub_10003FBD0(0xD000000000000020, 0x8000000100045080, aBlock);
          _os_log_impl(&_mh_execute_header, v39, v40, "%s - The recipient was manually provided by the user. Looking up the contacts from its handle.", v41, 0xCu);
          sub_10000E8A8(v44);
          a1 = v43;

          v45 = v80;
          v46 = v81;
        }

        else
        {

          v45 = v38;
          v46 = v3;
        }

        v20(v45, v46);
        type metadata accessor for PlayerModel();
        sub_100014A88(v37, v36);
      }
    }
  }

  v52 = qword_10005DA20;
  if (qword_10005DA20 && (v53 = qword_10005DA18, v54 = objc_opt_self(), sub_100002D08(&qword_10005CF00, &unk_100046F40), v55 = swift_allocObject(), *(v55 + 16) = xmmword_100045AE0, *(v55 + 32) = v53, *(v55 + 40) = v52, , v56 = sub_100041C10().super.isa, , v57 = [v54 predicateForContactsWithIdentifiers:v56], v56, sub_100031F50(v57), v59 = v58, v57, v59))
  {
    v60 = 0;
  }

  else
  {
    v61 = [a1 recipientAddresses];
    v62 = sub_100041C20();

    v63 = *(v62 + 16);

    if (v63 != 1)
    {
      return;
    }

    v64 = [a1 recipientAddresses];
    v65 = sub_100041C20();

    if (!v65[2])
    {

      return;
    }

    v67 = v65[4];
    v66 = v65[5];

    v68 = objc_opt_self();
    sub_100002D08(&qword_10005CF00, &unk_100046F40);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_100045AE0;
    *(v69 + 32) = v67;
    *(v69 + 40) = v66;
    isa = sub_100041C10().super.isa;

    v71 = [v68 predicateForContactsMatchingHandleStrings:isa];

    sub_100031F50(v71);
    if (v72)
    {

      v60 = 0;
    }

    else
    {
      v73 = [a1 recipientAddresses];
      v74 = sub_100041C20();

      if (!*(v74 + 16))
      {

        return;
      }

      v60 = 1;
    }
  }

  v75 = [objc_opt_self() proxyForLocalPlayer];
  v76 = [v75 friendServicePrivate];

  v77 = sub_100041AF0();

  [v76 notifyMessageBasedFriendRequestSentTo:v77 nameKind:v60];
  swift_unknownObjectRelease();
}

uint64_t sub_100032B10(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_100041200();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = sub_100002D08(&qword_10005CA30, &unk_100046380);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v5 = sub_100041410();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  sub_100041C70();
  v3[25] = sub_100041C60();
  v7 = sub_100041C50();

  return _swift_task_switch(sub_100032CE8, v7, v6);
}

uint64_t sub_100032CE8()
{
  v1 = *(v0 + 80);

  sub_1000413E0();
  v2 = v1;
  v3 = sub_100041400();
  v4 = sub_100041CC0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 80);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "%@ Validating the message for sending GC invite.", v6, 0xCu);
    sub_10000E9F0(v7, &unk_10005CA00, &unk_100045CF0);
  }

  v9 = *(v0 + 192);
  v10 = *(v0 + 168);
  v11 = *(v0 + 176);
  v12 = *(v0 + 64);

  v13 = *(v11 + 8);
  v13(v9, v10);
  v14 = [v12 URL];
  v15 = *(v0 + 160);
  v16 = *(v0 + 88);
  v17 = *(v0 + 96);
  if (v14)
  {
    v18 = v14;
    sub_1000411E0();

    (*(v17 + 56))(v15, 0, 1, v16);
    sub_10000E9F0(v15, &qword_10005CA30, &unk_100046380);
    goto LABEL_12;
  }

  v19 = *(v17 + 56);
  v19(*(v0 + 160), 1, 1, *(v0 + 88));
  sub_10000E9F0(v15, &qword_10005CA30, &unk_100046380);
  if (qword_10005C508 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 152);
  v21 = *(v0 + 88);
  v22 = *(v0 + 96);
  v23 = sub_100033330(*(v0 + 128), qword_10005DA00);
  swift_beginAccess();
  sub_100021B9C(v23, v20, &qword_10005CA30, &unk_100046380);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    v37 = *(v0 + 144);
    v38 = *(v0 + 120);
    v39 = *(v0 + 88);
    v40 = *(v0 + 96);
    v41 = *(v0 + 64);
    (*(v40 + 32))(v38, *(v0 + 152), v39);
    sub_1000411D0(v42);
    v44 = v43;
    [v41 setURL:v43];

    v19(v37, 1, 1, v39);
    swift_beginAccess();
    sub_100033368(v37, v23);
    swift_endAccess();
    (*(v40 + 8))(v38, v39);
LABEL_12:
    v45 = [*(v0 + 72) recipientIdentifiers];
    sub_1000412B0();
    v46 = sub_100041C20();

    v47 = *(v46 + 16);

    if (v47 >= 2)
    {
      v48 = [*(v0 + 64) URL];
      if (v48)
      {
        v49 = *(v0 + 136);
        v50 = *(v0 + 104);
        v51 = *(v0 + 112);
        v52 = *(v0 + 88);
        v53 = *(v0 + 96);
        v54 = v48;
        sub_1000411E0();

        (*(v53 + 16))(v50, v51, v52);
        v55 = sub_10001B6B8(v50);
        sub_10001287C(2, v49);
        if ((*(v53 + 48))(v49, 1, v52) == 1)
        {
          v57 = 0;
        }

        else
        {
          v58 = *(v0 + 136);
          v59 = *(v0 + 88);
          v60 = *(v0 + 96);
          sub_1000411D0(v56);
          v57 = v61;
          (*(v60 + 8))(v58, v59);
        }

        v62 = *(v0 + 112);
        v63 = *(v0 + 88);
        v64 = *(v0 + 96);
        [*(v0 + 64) setURL:v57];

        (*(v64 + 8))(v62, v63);
      }
    }

    v67 = 0;
    v68 = 0;
    v36 = 1;
    goto LABEL_19;
  }

  v24 = *(v0 + 80);
  sub_10000E9F0(*(v0 + 152), &qword_10005CA30, &unk_100046380);
  sub_1000413E0();
  v25 = v24;
  v26 = sub_100041400();
  v27 = sub_100041CC0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 80);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v28;
    *v30 = v28;
    v31 = v28;
    _os_log_impl(&_mh_execute_header, v26, v27, "%@ No message URL for sending GC invite", v29, 0xCu);
    sub_10000E9F0(v30, &unk_10005CA00, &unk_100045CF0);
  }

  v32 = *(v0 + 184);
  v33 = *(v0 + 168);

  v13(v32, v33);
  sub_1000413B0();
  v34 = sub_100041390();
  v67 = v35;
  v68 = v34;
  v36 = 0;
LABEL_19:

  v65 = *(v0 + 8);

  return v65(v36, v68, v67);
}

uint64_t sub_100033330(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100033368(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1000333D8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10003343C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10003347C(id result, void *a2, unsigned __int8 a3)
{
  if (a3 <= 8u)
  {
    if (((1 << a3) & 0x17D) != 0)
    {

      return result;
    }

    if (a3 == 1)
    {
      v4 = result;
      result = a2;

      return result;
    }
  }

  return result;
}

void sub_1000334F0(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 8u)
  {
    if (((1 << a3) & 0x17D) != 0)
    {

LABEL_5:

      return;
    }

    if (a3 == 1)
    {

      a1 = a2;

      goto LABEL_5;
    }
  }
}

uint64_t sub_1000335D8(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_100033620(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100033668(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000EA78(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000336AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000336FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003374C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000337DC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100033840()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100033918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D08(&qword_10005DBD0, qword_100046FD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000339F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D08(&qword_10005DBD0, qword_100046FD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FriendInviteCardView(uint64_t a1)
{
  result = qword_10005DC30;
  if (!qword_10005DC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100033B0C(uint64_t a1)
{
  sub_100033B90(319);
  if (v1 <= 0x3F)
  {
    sub_100033BE8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100033B90(uint64_t a1)
{
  if (!qword_10005DC40)
  {
    sub_1000414D0();
    v1 = sub_1000414E0();
    if (!v2)
    {
      atomic_store(v1, &qword_10005DC40);
    }
  }
}

void sub_100033BE8(uint64_t a1)
{
  if (!qword_10005DC48)
  {
    type metadata accessor for FriendInviteCardViewModel(255);
    sub_100037830(&qword_10005DAD8, type metadata accessor for FriendInviteCardViewModel, &unk_1000475E0);
    v1 = sub_100041520();
    if (!v2)
    {
      atomic_store(v1, &qword_10005DC48);
    }
  }
}

uint64_t sub_100033C98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100041610();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D08(&qword_10005DAD0, &qword_1000470B0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100021B9C(v2, &v14 - v9, &qword_10005DAD0, &qword_1000470B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000414D0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100041CF0();
    v13 = sub_100041730();
    sub_1000413F0();

    sub_100041600();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100033E98()
{
  v1 = sub_100002D08(&qword_10005DC78, &qword_100047068);
  __chkstk_darwin(v1);
  v3 = &v43[-v2];
  v4 = sub_100002D08(&qword_10005DC80, &qword_100047070);
  __chkstk_darwin(v4);
  v6 = &v43[-v5];
  v44 = v0;
  sub_100036B88(sub_100037828, v43, &v43[-v5]);
  v7 = sub_100041760();
  sub_1000414B0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = &v6[*(sub_100002D08(&qword_10005DC88, &qword_100047078) + 36)];
  *v16 = v7;
  *(v16 + 1) = v9;
  *(v16 + 2) = v11;
  *(v16 + 3) = v13;
  *(v16 + 4) = v15;
  v16[40] = 0;
  v17 = sub_100041770();
  sub_1000414B0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v6[*(sub_100002D08(&qword_10005DC90, &qword_100047080) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_100041780();
  sub_1000414B0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v6[*(sub_100002D08(&qword_10005DC98, &qword_100047088) + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  sub_100036F6C();
  v37 = sub_1000418E0();
  v38 = sub_100041750();
  v39 = &v6[*(v4 + 36)];
  *v39 = v37;
  v39[8] = v38;
  v40 = enum case for DynamicTypeSize.accessibility2(_:);
  v41 = sub_100041530();
  (*(*(v41 - 8) + 104))(v3, v40, v41);
  sub_100037830(&qword_10005DCA0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_100041AE0();
  if (result)
  {
    sub_100037878();
    sub_100003214(&qword_10005DD08, &qword_10005DC78, &qword_100047068, &protocol conformance descriptor for PartialRangeThrough<A>);
    sub_1000418C0();
    sub_10000E9F0(v3, &qword_10005DC78, &qword_100047068);
    return sub_10000E9F0(v6, &qword_10005DC80, &qword_100047070);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000341E0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v250 = a1;
  v259 = a2;
  v225 = sub_100002D08(&qword_10005DD28, &qword_1000470D0);
  __chkstk_darwin(v225);
  v206 = (&v200 - v2);
  v216 = sub_100002D08(&qword_10005DD30, &qword_1000470D8);
  __chkstk_darwin(v216);
  v221 = (&v200 - v3);
  v258 = sub_100002D08(&qword_10005DD38, &qword_1000470E0);
  __chkstk_darwin(v258);
  v228 = &v200 - v4;
  v220 = sub_100002D08(&qword_10005DD40, &qword_1000470E8);
  __chkstk_darwin(v220);
  v226 = &v200 - v5;
  v243 = sub_100002D08(&qword_10005DD48, &qword_1000470F0);
  __chkstk_darwin(v243);
  v229 = &v200 - v6;
  v223 = sub_100002D08(&qword_10005DD50, &qword_1000470F8);
  __chkstk_darwin(v223);
  v230 = (&v200 - v7);
  v240 = sub_100002D08(&qword_10005DD58, &qword_100047100);
  __chkstk_darwin(v240);
  v242 = &v200 - v8;
  v215 = sub_100002D08(&qword_10005DD60, &qword_100047108);
  __chkstk_darwin(v215);
  v222 = &v200 - v9;
  v241 = sub_100002D08(&qword_10005DD68, &qword_100047110);
  __chkstk_darwin(v241);
  v227 = &v200 - v10;
  v248 = sub_100002D08(&qword_10005DD70, &qword_100047118);
  __chkstk_darwin(v248);
  v244 = (&v200 - v11);
  v217 = sub_100002D08(&qword_10005DD78, &qword_100047120);
  __chkstk_darwin(v217);
  v205 = (&v200 - v12);
  v218 = sub_100002D08(&qword_10005DD80, &qword_100047128);
  __chkstk_darwin(v218);
  v204 = (&v200 - v13);
  v212 = sub_100002D08(&qword_10005DD88, &qword_100047130);
  __chkstk_darwin(v212);
  v214 = &v200 - v14;
  v239 = sub_100002D08(&qword_10005DD90, &qword_100047138);
  __chkstk_darwin(v239);
  v219 = &v200 - v15;
  v16 = type metadata accessor for FriendInviteCardView(0);
  v17 = v16 - 8;
  v231 = *(v16 - 8);
  __chkstk_darwin(v16);
  v232 = v18;
  v233 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_100002D08(&qword_10005DD98, &qword_100047140);
  __chkstk_darwin(v213);
  v203 = (&v200 - v19);
  v234 = sub_100002D08(&qword_10005DDA0, &qword_100047148);
  __chkstk_darwin(v234);
  v224 = (&v200 - v20);
  v254 = sub_100002D08(&qword_10005DDA8, &qword_100047150);
  __chkstk_darwin(v254);
  v256 = &v200 - v21;
  v245 = sub_100002D08(&qword_10005DDB0, &qword_100047158);
  __chkstk_darwin(v245);
  v247 = &v200 - v22;
  v235 = sub_100002D08(&qword_10005DDB8, &qword_100047160);
  __chkstk_darwin(v235);
  v237 = &v200 - v23;
  v209 = sub_100002D08(&qword_10005DDC0, &qword_100047168);
  __chkstk_darwin(v209);
  v210 = &v200 - v24;
  v236 = sub_100002D08(&qword_10005DDC8, &qword_100047170);
  __chkstk_darwin(v236);
  v211 = &v200 - v25;
  v246 = sub_100002D08(&qword_10005DDD0, &qword_100047178);
  __chkstk_darwin(v246);
  v238 = &v200 - v26;
  v255 = sub_100002D08(&qword_10005DDD8, &qword_100047180);
  __chkstk_darwin(v255);
  v249 = &v200 - v27;
  v208 = sub_100002D08(&qword_10005DDE0, &qword_100047188);
  __chkstk_darwin(v208);
  v29 = &v200 - v28;
  v207 = sub_100002D08(&qword_10005DDE8, &qword_100047190);
  v202 = *(v207 - 8);
  v30 = __chkstk_darwin(v207);
  v32 = &v200 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v200 - v33;
  v35 = sub_100002D08(&qword_10005DDF0, &qword_100047198);
  v36 = __chkstk_darwin(v35 - 8);
  v252 = &v200 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v257 = &v200 - v38;
  v253 = sub_100041690();
  v265 = 1;
  sub_10003710C(&v262);
  v272 = *&v263[80];
  v273[0] = *&v263[96];
  *(v273 + 10) = *&v263[106];
  v268 = *&v263[16];
  v269 = *&v263[32];
  v271 = *&v263[64];
  v270 = *&v263[48];
  v266 = v262;
  v267 = *v263;
  v274[6] = *&v263[80];
  v275[0] = *&v263[96];
  *(v275 + 10) = *&v263[106];
  v274[2] = *&v263[16];
  v274[3] = *&v263[32];
  v274[4] = *&v263[48];
  v274[5] = *&v263[64];
  v274[0] = v262;
  v274[1] = *v263;
  sub_100021B9C(&v266, &v260, &qword_10005DDF8, &qword_1000471A0);
  sub_10000E9F0(v274, &qword_10005DDF8, &qword_1000471A0);
  *&v264[87] = v271;
  v39 = v250;
  *&v264[103] = v272;
  *&v264[119] = v273[0];
  *&v264[129] = *(v273 + 10);
  *&v264[23] = v267;
  *&v264[39] = v268;
  *&v264[55] = v269;
  *&v264[71] = v270;
  *&v264[7] = v266;
  v40 = v265;
  v41 = *(v250 + *(v17 + 28) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100041450();

  v42 = v262;
  v251 = v40;
  if (v263[0] <= 4u)
  {
    v43 = *(&v262 + 1);
    if (v263[0] <= 1u)
    {
      v201 = v262;
      if (v263[0])
      {
        v244 = sub_10003CE18(v262);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100041450();

        v167 = v262;
        v168 = v263[0];
        v243 = sub_10003A4E4(v262, *(&v262 + 1), v263[0]);
        v170 = v169;
        sub_1000334F0(v167, *(&v167 + 1), v168);
        v172 = *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
        v171 = *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
        v173 = v233;
        sub_100038234(v39, v233);
        v174 = (*(v231 + 80) + 24) & ~*(v231 + 80);
        v175 = swift_allocObject();
        *(v175 + 16) = v43;
        sub_1000383BC(v173, v175 + v174);
        KeyPath = swift_getKeyPath();
        v177 = v203;
        *v203 = KeyPath;
        sub_100002D08(&qword_10005D358, &qword_100047220);
        swift_storeEnumTagMultiPayload();
        v178 = v213;
        v179 = v177 + *(v213 + 36);
        *v179 = v201;
        *(v179 + 8) = 0;
        v180 = v244;
        *(v179 + 16) = v243;
        *(v179 + 24) = v170;
        *(v179 + 32) = v180;
        *(v179 + 40) = v172;
        *(v179 + 48) = v171;
        *(v179 + 56) = sub_10003894C;
        *(v179 + 64) = v41;
        *(v179 + 72) = sub_100038950;
        *(v179 + 80) = v41;
        v181 = (v177 + *(v178 + 40));
        *v181 = sub_100038774;
        v181[1] = v175;
        sub_100021B9C(v177, v214, &qword_10005DD98, &qword_100047140);
        swift_storeEnumTagMultiPayload();
        sub_100003214(&qword_10005DE40, &qword_10005DD98, &qword_100047140, &unk_100046790);
        sub_100003214(&qword_10005DE48, &qword_10005DD80, &qword_100047128, &unk_100046790);
        swift_retain_n();

        v182 = v43;
        v183 = v219;
        sub_1000416D0();
        sub_100021B9C(v183, v237, &qword_10005DD90, &qword_100047138);
        swift_storeEnumTagMultiPayload();
        sub_100037D98();
        sub_100037E7C();
        v184 = v238;
        sub_1000416D0();
        sub_10000E9F0(v183, &qword_10005DD90, &qword_100047138);
        sub_100021B9C(v184, v247, &qword_10005DDD0, &qword_100047178);
        swift_storeEnumTagMultiPayload();
        sub_100037D0C();
        sub_100037F5C();
        v185 = v249;
        sub_1000416D0();
        sub_10000E9F0(v184, &qword_10005DDD0, &qword_100047178);
        sub_100021B9C(v185, v256, &qword_10005DDD8, &qword_100047180);
        swift_storeEnumTagMultiPayload();
        sub_100037C80();
        sub_100038178();
        v94 = v257;
        sub_1000416D0();

        sub_10000E9F0(v185, &qword_10005DDD8, &qword_100047180);
        v95 = v177;
        v96 = &qword_10005DD98;
        v97 = &qword_100047140;
      }

      else
      {
        v250 = sub_10003CE18(v262);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100041450();

        v79 = v262;
        v80 = v263[0];
        v81 = sub_10003A4E4(v262, *(&v262 + 1), v263[0]);
        v83 = v82;
        sub_1000334F0(v79, *(&v79 + 1), v80);
        v84 = *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
        v85 = *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
        v86 = swift_getKeyPath();
        v87 = v224;
        *v224 = v86;
        sub_100002D08(&qword_10005D358, &qword_100047220);
        swift_storeEnumTagMultiPayload();
        v88 = v234;
        v89 = v87 + *(v234 + 36);
        *v89 = v201;
        *(v89 + 8) = 0;
        *(v89 + 16) = v81;
        *(v89 + 24) = v83;
        *(v89 + 32) = v250;
        *(v89 + 40) = v84;
        *(v89 + 48) = v85;
        *(v89 + 56) = sub_10003894C;
        *(v89 + 64) = v41;
        *(v89 + 72) = sub_100038950;
        *(v89 + 80) = v41;
        v90 = (v87 + *(v88 + 40));
        *v90 = nullsub_1;
        v90[1] = 0;
        sub_100021B9C(v87, v210, &qword_10005DDA0, &qword_100047148);
        swift_storeEnumTagMultiPayload();
        sub_100003214(&qword_10005DE28, &qword_10005DDE0, &qword_100047188, &protocol conformance descriptor for TupleView<A>);
        sub_100003214(&qword_10005DE30, &qword_10005DDA0, &qword_100047148, &unk_100046790);
        swift_retain_n();

        v91 = v211;
        sub_1000416D0();
        sub_100021B9C(v91, v237, &qword_10005DDC8, &qword_100047170);
        swift_storeEnumTagMultiPayload();
        sub_100037D98();
        sub_100037E7C();
        v92 = v238;
        sub_1000416D0();
        sub_10000E9F0(v91, &qword_10005DDC8, &qword_100047170);
        sub_100021B9C(v92, v247, &qword_10005DDD0, &qword_100047178);
        swift_storeEnumTagMultiPayload();
        sub_100037D0C();
        sub_100037F5C();
        v93 = v249;
        sub_1000416D0();
        sub_10000E9F0(v92, &qword_10005DDD0, &qword_100047178);
        sub_100021B9C(v93, v256, &qword_10005DDD8, &qword_100047180);
        swift_storeEnumTagMultiPayload();
        sub_100037C80();
        sub_100038178();
        v94 = v257;
        sub_1000416D0();
        sub_10000E9F0(v93, &qword_10005DDD8, &qword_100047180);
        v95 = v87;
        v96 = &qword_10005DDA0;
        v97 = &qword_100047148;
      }

      goto LABEL_20;
    }

    if (v263[0] == 2)
    {
      v244 = sub_10003CE18(v262);
      swift_getKeyPath();
      swift_getKeyPath();
      v201 = v42;
      sub_100041450();

      v113 = *(&v262 + 1);
      v112 = v262;
      v114 = v263[0];
      v115 = sub_10003A4E4(v262, *(&v262 + 1), v263[0]);
      v117 = v116;
      sub_1000334F0(v112, v113, v114);
      v119 = *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
      v118 = *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
      v120 = v233;
      sub_100038234(v39, v233);
      v121 = (*(v231 + 80) + 24) & ~*(v231 + 80);
      v122 = swift_allocObject();
      *(v122 + 16) = v43;
      sub_1000383BC(v120, v122 + v121);
      v123 = swift_getKeyPath();
      v56 = v204;
      *v204 = v123;
      sub_100002D08(&qword_10005D358, &qword_100047220);
      swift_storeEnumTagMultiPayload();
      v124 = v218;
      v125 = v56 + *(v218 + 36);
      *v125 = v201;
      *(v125 + 8) = 0;
      *(v125 + 16) = v115;
      *(v125 + 24) = v117;
      *(v125 + 32) = v244;
      *(v125 + 40) = v119;
      *(v125 + 48) = v118;
      *(v125 + 56) = sub_10003894C;
      *(v125 + 64) = v41;
      *(v125 + 72) = sub_100038950;
      *(v125 + 80) = v41;
      v126 = (v56 + *(v124 + 40));
      *v126 = sub_1000385B4;
      v126[1] = v122;
      v60 = &qword_10005DD80;
      v61 = &qword_100047128;
      sub_100021B9C(v56, v214, &qword_10005DD80, &qword_100047128);
      swift_storeEnumTagMultiPayload();
      sub_100003214(&qword_10005DE40, &qword_10005DD98, &qword_100047140, &unk_100046790);
      sub_100003214(&qword_10005DE48, &qword_10005DD80, &qword_100047128, &unk_100046790);
      swift_retain_n();

      v127 = v219;
      sub_1000416D0();
      sub_100021B9C(v127, v237, &qword_10005DD90, &qword_100047138);
      swift_storeEnumTagMultiPayload();
      sub_100037D98();
      sub_100037E7C();
      v128 = v238;
      sub_1000416D0();
      sub_10000E9F0(v127, &qword_10005DD90, &qword_100047138);
      v129 = &qword_10005DDD0;
      v130 = &qword_100047178;
      sub_100021B9C(v128, v247, &qword_10005DDD0, &qword_100047178);
    }

    else
    {
      if (v263[0] == 3)
      {
        v239 = sub_10003CE18(v262);
        swift_getKeyPath();
        swift_getKeyPath();
        v44 = v42;
        sub_100041450();

        v45 = v262;
        v46 = v263[0];
        v47 = sub_10003A4E4(v262, *(&v262 + 1), v263[0]);
        v49 = v48;
        sub_1000334F0(v45, *(&v45 + 1), v46);
        v51 = *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
        v50 = *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
        v52 = v233;
        sub_100038234(v39, v233);
        v53 = (*(v231 + 80) + 16) & ~*(v231 + 80);
        v54 = swift_allocObject();
        sub_1000383BC(v52, v54 + v53);
        v55 = swift_getKeyPath();
        v56 = v205;
        *v205 = v55;
        sub_100002D08(&qword_10005D358, &qword_100047220);
        swift_storeEnumTagMultiPayload();
        v57 = v217;
        v58 = v56 + *(v217 + 36);
        *v58 = v44;
        *(v58 + 8) = 257;
        *(v58 + 16) = v47;
        *(v58 + 24) = v49;
        *(v58 + 32) = v239;
        *(v58 + 40) = v51;
        *(v58 + 48) = v50;
        *(v58 + 56) = sub_10003894C;
        *(v58 + 64) = v41;
        *(v58 + 72) = sub_100038950;
        *(v58 + 80) = v41;
        v59 = (v56 + *(v57 + 40));
        *v59 = sub_100038420;
        v59[1] = v54;
        v60 = &qword_10005DD78;
        v61 = &qword_100047120;
        sub_100021B9C(v56, v222, &qword_10005DD78, &qword_100047120);
      }

      else
      {
        v250 = sub_10003CE18(v262);
        swift_getKeyPath();
        swift_getKeyPath();
        v135 = v42;
        sub_100041450();

        v137 = *(&v262 + 1);
        v136 = v262;
        v138 = v263[0];
        v139 = sub_10003A4E4(v262, *(&v262 + 1), v263[0]);
        v141 = v140;
        sub_1000334F0(v136, v137, v138);
        v142 = *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
        v143 = *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
        v144 = swift_getKeyPath();
        v56 = v224;
        *v224 = v144;
        sub_100002D08(&qword_10005D358, &qword_100047220);
        swift_storeEnumTagMultiPayload();
        v145 = v234;
        v146 = v56 + *(v234 + 36);
        *v146 = v135;
        *(v146 + 8) = 257;
        *(v146 + 16) = v139;
        *(v146 + 24) = v141;
        *(v146 + 32) = v250;
        *(v146 + 40) = v142;
        *(v146 + 48) = v143;
        *(v146 + 56) = sub_10003894C;
        *(v146 + 64) = v41;
        *(v146 + 72) = sub_100038950;
        *(v146 + 80) = v41;
        v147 = (v56 + *(v145 + 40));
        *v147 = nullsub_1;
        v147[1] = 0;
        v60 = &qword_10005DDA0;
        v61 = &qword_100047148;
        sub_100021B9C(v56, v222, &qword_10005DDA0, &qword_100047148);
      }

      swift_storeEnumTagMultiPayload();
      sub_100003214(&qword_10005DE60, &qword_10005DD78, &qword_100047120, &unk_100046790);
      sub_100003214(&qword_10005DE30, &qword_10005DDA0, &qword_100047148, &unk_100046790);
      swift_retain_n();

      v62 = v227;
      sub_1000416D0();
      sub_100021B9C(v62, v242, &qword_10005DD68, &qword_100047110);
      swift_storeEnumTagMultiPayload();
      sub_100037FE8();
      sub_1000380C8();
      v128 = v244;
      sub_1000416D0();
      sub_10000E9F0(v62, &qword_10005DD68, &qword_100047110);
      v129 = &qword_10005DD70;
      v130 = &qword_100047118;
      sub_100021B9C(v128, v247, &qword_10005DD70, &qword_100047118);
    }

    swift_storeEnumTagMultiPayload();
    sub_100037D0C();
    sub_100037F5C();
    v76 = v249;
    sub_1000416D0();
    sub_10000E9F0(v128, v129, v130);
    v77 = &qword_10005DDD8;
    v78 = &qword_100047180;
    sub_100021B9C(v76, v256, &qword_10005DDD8, &qword_100047180);
    goto LABEL_19;
  }

  if (v263[0] > 6u)
  {
    if (v263[0] == 7)
    {
      v131 = sub_100013908(v262);
      v132 = v221;
      *v221 = v131;
      v132[1] = v133;
      *(v132 + 16) = v42 == 0;
      v132[3] = sub_100038230;
      v132[4] = v41;
      swift_storeEnumTagMultiPayload();
      sub_100037C2C();
      sub_100003214(&qword_10005DE08, &qword_10005DD28, &qword_1000470D0, &unk_100046790);
      swift_retain_n();

      v134 = v228;
      sub_1000416D0();
      sub_100021B9C(v134, v256, &qword_10005DD38, &qword_1000470E0);
      swift_storeEnumTagMultiPayload();
      sub_100037C80();
      sub_100038178();
      v94 = v257;
      sub_1000416D0();

      v95 = v134;
      v96 = &qword_10005DD38;
      v97 = &qword_1000470E0;
LABEL_20:
      sub_10000E9F0(v95, v96, v97);
LABEL_21:
      v98 = v259;
      goto LABEL_22;
    }

    if (v263[0] != 8)
    {
      sub_1000414F0();
      v158 = v202;
      v159 = *(v202 + 16);
      v160 = v207;
      v159(v32, v34, v207);
      *v29 = 0;
      v29[8] = 1;
      v161 = sub_100002D08(&qword_10005DE90, &qword_100047238);
      v159(&v29[*(v161 + 48)], v32, v160);
      v162 = &v29[*(v161 + 64)];
      *v162 = 0;
      v162[8] = 1;
      v250 = *(v158 + 8);
      (v250)(v32, v160);
      sub_100021B9C(v29, v210, &qword_10005DDE0, &qword_100047188);
      swift_storeEnumTagMultiPayload();
      sub_100003214(&qword_10005DE28, &qword_10005DDE0, &qword_100047188, &protocol conformance descriptor for TupleView<A>);
      sub_100003214(&qword_10005DE30, &qword_10005DDA0, &qword_100047148, &unk_100046790);
      v163 = v211;
      sub_1000416D0();
      sub_100021B9C(v163, v237, &qword_10005DDC8, &qword_100047170);
      swift_storeEnumTagMultiPayload();
      sub_100037D98();
      sub_100037E7C();
      v164 = v238;
      sub_1000416D0();
      sub_10000E9F0(v163, &qword_10005DDC8, &qword_100047170);
      sub_100021B9C(v164, v247, &qword_10005DDD0, &qword_100047178);
      swift_storeEnumTagMultiPayload();
      sub_100037D0C();
      sub_100037F5C();
      v165 = v249;
      sub_1000416D0();
      sub_10000E9F0(v164, &qword_10005DDD0, &qword_100047178);
      sub_100021B9C(v165, v256, &qword_10005DDD8, &qword_100047180);
      swift_storeEnumTagMultiPayload();
      sub_100037C80();
      sub_100038178();
      v166 = v257;
      sub_1000416D0();
      sub_10000E9F0(v165, &qword_10005DDD8, &qword_100047180);
      v94 = v166;
      sub_10000E9F0(v29, &qword_10005DDE0, &qword_100047188);
      (v250)(v34, v207);
      goto LABEL_21;
    }

    v250 = sub_10003CE18(v262);
    swift_getKeyPath();
    swift_getKeyPath();
    v63 = v42;
    sub_100041450();

    v65 = *(&v262 + 1);
    v64 = v262;
    v66 = v263[0];
    v67 = sub_10003A4E4(v262, *(&v262 + 1), v263[0]);
    v69 = v68;
    sub_1000334F0(v64, v65, v66);
    v70 = *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
    v71 = *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
    v72 = swift_getKeyPath();
    v56 = v206;
    *v206 = v72;
    sub_100002D08(&qword_10005D358, &qword_100047220);
    swift_storeEnumTagMultiPayload();
    v73 = v225;
    v74 = v56 + *(v225 + 36);
    *v74 = v63;
    *(v74 + 8) = 1;
    *(v74 + 16) = v67;
    *(v74 + 24) = v69;
    *(v74 + 32) = v250;
    *(v74 + 40) = v70;
    *(v74 + 48) = v71;
    *(v74 + 56) = sub_100037B2C;
    *(v74 + 64) = v41;
    *(v74 + 72) = sub_100037B34;
    *(v74 + 80) = v41;
    v75 = (v56 + *(v73 + 40));
    *v75 = nullsub_1;
    v75[1] = 0;
    v60 = &qword_10005DD28;
    v61 = &qword_1000470D0;
    sub_100021B9C(v56, v221, &qword_10005DD28, &qword_1000470D0);
    swift_storeEnumTagMultiPayload();
    sub_100037C2C();
    sub_100003214(&qword_10005DE08, &qword_10005DD28, &qword_1000470D0, &unk_100046790);
    swift_retain_n();

    v76 = v228;
    sub_1000416D0();
    v77 = &qword_10005DD38;
    v78 = &qword_1000470E0;
    sub_100021B9C(v76, v256, &qword_10005DD38, &qword_1000470E0);
LABEL_19:
    swift_storeEnumTagMultiPayload();
    sub_100037C80();
    sub_100038178();
    v94 = v257;
    sub_1000416D0();
    sub_10000E9F0(v76, v77, v78);
    v95 = v56;
    v96 = v60;
    v97 = v61;
    goto LABEL_20;
  }

  v98 = v259;
  v201 = v262;
  if (v263[0] == 5)
  {
    v250 = sub_10003CE18(v262);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100041450();

    v100 = *(&v262 + 1);
    v99 = v262;
    v101 = v263[0];
    v102 = sub_10003A4E4(v262, *(&v262 + 1), v263[0]);
    v104 = v103;
    sub_1000334F0(v99, v100, v101);
    v105 = *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
    v106 = *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
    v107 = swift_getKeyPath();
    v108 = v230;
    *v230 = v107;
    sub_100002D08(&qword_10005D358, &qword_100047220);
    swift_storeEnumTagMultiPayload();
    v109 = v223;
    v110 = v108 + *(v223 + 36);
    *v110 = v201;
    *(v110 + 8) = 257;
    *(v110 + 16) = v102;
    *(v110 + 24) = v104;
    *(v110 + 32) = v250;
    *(v110 + 40) = v105;
    *(v110 + 48) = v106;
    *(v110 + 56) = sub_10003894C;
    *(v110 + 64) = v41;
    *(v110 + 72) = sub_100038950;
    *(v110 + 80) = v41;
    v111 = (v108 + *(v109 + 40));
    *v111 = sub_100036B74;
  }

  else
  {
    v250 = sub_10003CE18(v262);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100041450();

    v187 = *(&v262 + 1);
    v186 = v262;
    v188 = v263[0];
    v189 = sub_10003A4E4(v262, *(&v262 + 1), v263[0]);
    v191 = v190;
    sub_1000334F0(v186, v187, v188);
    v192 = *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
    v193 = *(v41 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay + 8);
    v194 = swift_getKeyPath();
    v108 = v230;
    *v230 = v194;
    sub_100002D08(&qword_10005D358, &qword_100047220);
    swift_storeEnumTagMultiPayload();
    v195 = v223;
    v196 = v108 + *(v223 + 36);
    *v196 = v201;
    *(v196 + 8) = 257;
    *(v196 + 16) = v189;
    *(v196 + 24) = v191;
    *(v196 + 32) = v250;
    *(v196 + 40) = v192;
    *(v196 + 48) = v193;
    *(v196 + 56) = sub_10003894C;
    *(v196 + 64) = v41;
    *(v196 + 72) = sub_100038950;
    *(v196 + 80) = v41;
    v111 = (v108 + *(v195 + 40));
    *v111 = sub_100036B80;
  }

  v111[1] = 0;
  sub_100021B9C(v108, v226, &qword_10005DD50, &qword_1000470F8);
  swift_storeEnumTagMultiPayload();
  sub_100003214(&qword_10005DE70, &qword_10005DD50, &qword_1000470F8, &unk_100046790);
  swift_retain_n();

  v197 = v229;
  sub_1000416D0();
  sub_100021B9C(v197, v242, &qword_10005DD48, &qword_1000470F0);
  swift_storeEnumTagMultiPayload();
  sub_100037FE8();
  sub_1000380C8();
  v198 = v244;
  sub_1000416D0();
  sub_10000E9F0(v197, &qword_10005DD48, &qword_1000470F0);
  sub_100021B9C(v198, v247, &qword_10005DD70, &qword_100047118);
  swift_storeEnumTagMultiPayload();
  sub_100037D0C();
  sub_100037F5C();
  v199 = v249;
  sub_1000416D0();
  sub_10000E9F0(v198, &qword_10005DD70, &qword_100047118);
  sub_100021B9C(v199, v256, &qword_10005DDD8, &qword_100047180);
  swift_storeEnumTagMultiPayload();
  sub_100037C80();
  sub_100038178();
  v94 = v257;
  sub_1000416D0();
  sub_10000E9F0(v199, &qword_10005DDD8, &qword_100047180);
  sub_10000E9F0(v108, &qword_10005DD50, &qword_1000470F8);
LABEL_22:
  v148 = v252;
  sub_100021B9C(v94, v252, &qword_10005DDF0, &qword_100047198);
  v149 = v253;
  v260 = v253;
  v150 = v251;
  v261[0] = v251;
  *&v261[113] = *&v264[112];
  *&v261[97] = *&v264[96];
  *&v261[129] = *&v264[128];
  v261[145] = v264[144];
  *&v261[33] = *&v264[32];
  *&v261[49] = *&v264[48];
  *&v261[65] = *&v264[64];
  *&v261[81] = *&v264[80];
  *&v261[1] = *v264;
  *&v261[17] = *&v264[16];
  v151 = *&v261[128];
  *(v98 + 128) = *&v261[112];
  *(v98 + 144) = v151;
  *(v98 + 160) = *&v261[144];
  v152 = *&v261[64];
  *(v98 + 64) = *&v261[48];
  *(v98 + 80) = v152;
  v153 = *&v261[96];
  *(v98 + 96) = *&v261[80];
  *(v98 + 112) = v153;
  v154 = *v261;
  *v98 = v260;
  *(v98 + 16) = v154;
  v155 = *&v261[32];
  *(v98 + 32) = *&v261[16];
  *(v98 + 48) = v155;
  v156 = sub_100002D08(&qword_10005DE80, &qword_100047228);
  sub_100021B9C(v148, v98 + *(v156 + 48), &qword_10005DDF0, &qword_100047198);
  sub_100021B9C(&v260, &v262, &qword_10005DE88, &qword_100047230);
  sub_10000E9F0(v94, &qword_10005DDF0, &qword_100047198);
  sub_10000E9F0(v148, &qword_10005DDF0, &qword_100047198);
  *&v263[97] = *&v264[96];
  *&v263[113] = *&v264[112];
  *&v263[129] = *&v264[128];
  *&v263[33] = *&v264[32];
  *&v263[49] = *&v264[48];
  *&v263[65] = *&v264[64];
  *&v263[81] = *&v264[80];
  *&v263[1] = *v264;
  v262 = v149;
  v263[0] = v150;
  v263[145] = v264[144];
  *&v263[17] = *&v264[16];
  return sub_10000E9F0(&v262, &qword_10005DE88, &qword_100047230);
}

id sub_1000369E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + *(type metadata accessor for FriendInviteCardView(0) + 20) + 8);
  *a3 = a1;
  a3[1] = sub_1000387E8;
  a3[2] = v4;

  return a1;
}

int *sub_100036A60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for FriendInviteCardView(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_100041450();

  *a2 = swift_getKeyPath();
  sub_100002D08(&qword_10005D358, &qword_100047220);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for FriendInviteButtonStackView(0);
  v5 = (a2 + result[5]);
  *v5 = sub_1000387F0;
  v5[1] = v3;
  v6 = (a2 + result[6]);
  *v6 = sub_1000387F4;
  v6[1] = v3;
  *(a2 + result[7]) = v7;
  return result;
}

uint64_t sub_100036B88@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a2;
  v23 = a1;
  v24 = a3;
  v3 = sub_100002D08(&qword_10005DCF0, &qword_1000470A0);
  __chkstk_darwin(v3);
  v5 = (v22 - v4);
  v6 = sub_100002D08(&qword_10005DD10, &qword_1000470B8);
  __chkstk_darwin(v6);
  v8 = v22 - v7;
  v9 = sub_100002D08(&qword_10005DCE0, &qword_100047098);
  __chkstk_darwin(v9);
  v11 = v22 - v10;
  v12 = sub_100041310();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v12);
  v16 = sub_100041300();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    *v11 = sub_100041690();
    *(v11 + 1) = 0x4010000000000000;
    v11[16] = 0;
    sub_100002D08(&qword_10005DD20, &qword_1000470C8);
    v23();
    v17 = &qword_10005DCE0;
    v18 = &qword_100047098;
    sub_100021B9C(v11, v8, &qword_10005DCE0, &qword_100047098);
    swift_storeEnumTagMultiPayload();
    sub_100003214(&qword_10005DCD8, &qword_10005DCE0, &qword_100047098, &protocol conformance descriptor for VStack<A>);
    sub_100003214(&qword_10005DCE8, &qword_10005DCF0, &qword_1000470A0, &protocol conformance descriptor for ZStack<A>);
    sub_1000416D0();
    v19 = v11;
  }

  else
  {
    *v5 = sub_1000419D0();
    v5[1] = v20;
    sub_100002D08(&qword_10005DD18, &qword_1000470C0);
    v23();
    v17 = &qword_10005DCF0;
    v18 = &qword_1000470A0;
    sub_100021B9C(v5, v8, &qword_10005DCF0, &qword_1000470A0);
    swift_storeEnumTagMultiPayload();
    sub_100003214(&qword_10005DCD8, &qword_10005DCE0, &qword_100047098, &protocol conformance descriptor for VStack<A>);
    sub_100003214(&qword_10005DCE8, &qword_10005DCF0, &qword_1000470A0, &protocol conformance descriptor for ZStack<A>);
    sub_1000416D0();
    v19 = v5;
  }

  return sub_10000E9F0(v19, v17, v18);
}

id sub_100036F6C()
{
  v0 = sub_1000414D0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  if (sub_1000419C0())
  {
    v7 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_100033C98(v6);
    (*(v1 + 104))(v4, enum case for ColorScheme.dark(_:), v0);
    v8 = sub_1000414C0();
    v9 = *(v1 + 8);
    v9(v4, v0);
    v9(v6, v0);
    v10 = objc_opt_self();
    if (v8)
    {
      v7 = [v10 tertiarySystemGroupedBackgroundColor];
    }

    else
    {
      v7 = [v10 systemGray6Color];
    }
  }

  return v7;
}

uint64_t sub_10003710C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100041310();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100041630();
  LOBYTE(v21[0]) = 1;
  sub_1000373D4(&v23);
  v44 = v27;
  v45 = v28;
  v46 = v29[0];
  v40 = v23;
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v47[0] = v23;
  v47[1] = v24;
  v47[2] = v25;
  v47[3] = v26;
  v47[4] = v27;
  v47[5] = v28;
  v48 = v29[0];
  sub_100021B9C(&v40, v30, &qword_10005DE98, &qword_100047288);
  sub_10000E9F0(v47, &qword_10005DE98, &qword_100047288);
  *&v39[55] = v43;
  *&v39[71] = v44;
  *&v39[87] = v45;
  *&v39[7] = v40;
  *&v39[23] = v41;
  v39[103] = v46;
  *&v39[39] = v42;
  v7 = v21[0];
  (*(v3 + 104))(v5, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v2);
  v8 = sub_100041300();
  (*(v3 + 8))(v5, v2);
  v9 = *&v39[96];
  *(&v22[6] + 1) = *&v39[96];
  v21[0] = v6;
  v21[1] = 0;
  LOBYTE(v22[0]) = v7;
  v10 = *&v39[64];
  *(&v22[5] + 1) = *&v39[80];
  v11 = *&v39[48];
  *(&v22[4] + 1) = *&v39[64];
  v12 = *&v39[32];
  *(&v22[3] + 1) = *&v39[48];
  v13 = *v39;
  *(&v22[1] + 1) = *&v39[16];
  v14 = *&v39[16];
  *(v22 + 1) = *v39;
  *(&v22[2] + 1) = *&v39[32];
  v27 = v22[3];
  v28 = v22[4];
  v29[0] = v22[5];
  *(v29 + 9) = *(&v22[5] + 9);
  v23 = v6;
  v24 = v22[0];
  v25 = v22[1];
  v26 = v22[2];
  v15 = v22[2];
  *(a1 + 32) = v22[1];
  *(a1 + 48) = v15;
  v16 = v24;
  *a1 = v23;
  *(a1 + 16) = v16;
  v17 = v29[1];
  *(a1 + 96) = v29[0];
  *(a1 + 112) = v17;
  v18 = v28;
  *(a1 + 64) = v27;
  *(a1 + 80) = v18;
  v34 = v12;
  v20[127] = v8 & 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = (v8 & 1) == 0;
  *(a1 + 137) = v8 & 1;
  v30[0] = v6;
  v30[1] = 0;
  v31 = v7;
  v33 = v14;
  v32 = v13;
  v38 = v9;
  v37 = *&v39[80];
  v36 = v10;
  v35 = v11;
  sub_100021B9C(v21, v20, &qword_10005DEA0, &qword_100047290);
  return sub_10000E9F0(v30, &qword_10005DEA0, &qword_100047290);
}

void sub_1000373D4(uint64_t a1@<X8>)
{
  v2 = sub_100041310();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100041940();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedTheme];
  if (!v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = v10;
  v12 = [v10 eventIconImage];

  if (!v12)
  {
LABEL_8:
    __break(1u);
    return;
  }

  sub_100041920();
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v13 = sub_100041950();

  (*(v7 + 8))(v9, v6);
  sub_1000419D0();
  sub_100041500();
  v43 = v51;
  v44 = v49;
  v41 = v52;
  v42 = v50;
  v39 = v53;
  v40 = v54;
  (*(v3 + 104))(v5, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v2);
  v14 = sub_100041300();
  (*(v3 + 8))(v5, v2);
  if (v14)
  {
    sub_1000413B0();
    v45 = sub_100041350();
    v46 = v15;
    sub_1000024FC();
    v16 = sub_100041860();
    v18 = v17;
    v20 = v19;
    LODWORD(v45) = sub_100041720();
    v21 = sub_100041830();
    v23 = v22;
    v25 = v24;
    sub_100002550(v16, v18, v20 & 1);

    sub_100041800();
    sub_1000417B0();

    v26 = sub_100041840();
    v28 = v27;
    v38 = v13;
    v30 = v29;
    v32 = v31;

    sub_100002550(v21, v23, v25 & 1);

    v33 = v30 & 1;
    v13 = v38;
    sub_100011D44(v26, v28, v33);
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v33 = 0;
    v32 = 0;
  }

  LOBYTE(v45) = v42;
  v48 = v41;

  sub_100038800(v26, v28, v33, v32);
  sub_100038844(v26, v28, v33, v32);
  v47 = 1;
  v34 = v45;
  v35 = v48;
  v36 = v44;
  *a1 = v13;
  *(a1 + 8) = v36;
  *(a1 + 16) = v34;
  *(a1 + 24) = v43;
  *(a1 + 32) = v35;
  v37 = v40;
  *(a1 + 40) = v39;
  *(a1 + 48) = v37;
  *(a1 + 56) = v26;
  *(a1 + 64) = v28;
  *(a1 + 72) = v33;
  *(a1 + 80) = v32;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  sub_100038844(v26, v28, v33, v32);
}

uint64_t sub_100037830(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100037878()
{
  result = qword_10005DCA8;
  if (!qword_10005DCA8)
  {
    sub_1000025E8(&qword_10005DC80, &qword_100047070);
    sub_1000379BC(&qword_10005DCB0, &qword_10005DC98, &qword_100047088, sub_10003795C);
    sub_100003214(&qword_10005DCF8, &qword_10005DD00, &qword_1000470A8, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DCA8);
  }

  return result;
}

uint64_t sub_1000379BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000025E8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100037A40()
{
  result = qword_10005DCC8;
  if (!qword_10005DCC8)
  {
    sub_1000025E8(&qword_10005DCD0, &qword_100047090);
    sub_100003214(&qword_10005DCD8, &qword_10005DCE0, &qword_100047098, &protocol conformance descriptor for VStack<A>);
    sub_100003214(&qword_10005DCE8, &qword_10005DCF0, &qword_1000470A0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DCC8);
  }

  return result;
}

uint64_t sub_100037B60(uint64_t a1)
{
  v2 = sub_100041680();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100041590();
}

unint64_t sub_100037C2C()
{
  result = qword_10005DE00;
  if (!qword_10005DE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE00);
  }

  return result;
}

unint64_t sub_100037C80()
{
  result = qword_10005DE10;
  if (!qword_10005DE10)
  {
    sub_1000025E8(&qword_10005DDD8, &qword_100047180);
    sub_100037D0C();
    sub_100037F5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE10);
  }

  return result;
}

unint64_t sub_100037D0C()
{
  result = qword_10005DE18;
  if (!qword_10005DE18)
  {
    sub_1000025E8(&qword_10005DDD0, &qword_100047178);
    sub_100037D98();
    sub_100037E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE18);
  }

  return result;
}

unint64_t sub_100037D98()
{
  result = qword_10005DE20;
  if (!qword_10005DE20)
  {
    sub_1000025E8(&qword_10005DDC8, &qword_100047170);
    sub_100003214(&qword_10005DE28, &qword_10005DDE0, &qword_100047188, &protocol conformance descriptor for TupleView<A>);
    sub_100003214(&qword_10005DE30, &qword_10005DDA0, &qword_100047148, &unk_100046790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE20);
  }

  return result;
}

unint64_t sub_100037E7C()
{
  result = qword_10005DE38;
  if (!qword_10005DE38)
  {
    sub_1000025E8(&qword_10005DD90, &qword_100047138);
    sub_100003214(&qword_10005DE40, &qword_10005DD98, &qword_100047140, &unk_100046790);
    sub_100003214(&qword_10005DE48, &qword_10005DD80, &qword_100047128, &unk_100046790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE38);
  }

  return result;
}

unint64_t sub_100037F5C()
{
  result = qword_10005DE50;
  if (!qword_10005DE50)
  {
    sub_1000025E8(&qword_10005DD70, &qword_100047118);
    sub_100037FE8();
    sub_1000380C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE50);
  }

  return result;
}

unint64_t sub_100037FE8()
{
  result = qword_10005DE58;
  if (!qword_10005DE58)
  {
    sub_1000025E8(&qword_10005DD68, &qword_100047110);
    sub_100003214(&qword_10005DE60, &qword_10005DD78, &qword_100047120, &unk_100046790);
    sub_100003214(&qword_10005DE30, &qword_10005DDA0, &qword_100047148, &unk_100046790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE58);
  }

  return result;
}

unint64_t sub_1000380C8()
{
  result = qword_10005DE68;
  if (!qword_10005DE68)
  {
    sub_1000025E8(&qword_10005DD48, &qword_1000470F0);
    sub_100003214(&qword_10005DE70, &qword_10005DD50, &qword_1000470F8, &unk_100046790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE68);
  }

  return result;
}

unint64_t sub_100038178()
{
  result = qword_10005DE78;
  if (!qword_10005DE78)
  {
    sub_1000025E8(&qword_10005DD38, &qword_1000470E0);
    sub_100037C2C();
    sub_100003214(&qword_10005DE08, &qword_10005DD28, &qword_1000470D0, &unk_100046790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE78);
  }

  return result;
}

uint64_t sub_100038234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendInviteCardView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038298()
{
  v1 = *(type metadata accessor for FriendInviteCardView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100002D08(&qword_10005DAD0, &qword_1000470B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000414D0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000383BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendInviteCardView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

int *sub_100038420@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for FriendInviteCardView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100036A60(v4, a1);
}

uint64_t sub_100038490()
{
  v1 = *(type metadata accessor for FriendInviteCardView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  sub_100002D08(&qword_10005DAD0, &qword_1000470B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000414D0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000385B4@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for FriendInviteCardView(0);
  v4 = *(v1 + *(v3 + 20) + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80)) + 8);
  *a1 = *(v1 + 16);
  a1[1] = sub_1000387EC;
  a1[2] = v4;
}

uint64_t sub_100038648()
{
  v1 = *(type metadata accessor for FriendInviteCardView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  sub_100002D08(&qword_10005DAD0, &qword_1000470B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000414D0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_100038774@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for FriendInviteCardView(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1000369E8(v4, v5, a1);
}

uint64_t sub_100038800(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100011D44(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100038844(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100002550(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100038888()
{
  sub_1000025E8(&qword_10005DC80, &qword_100047070);
  sub_1000025E8(&qword_10005DC78, &qword_100047068);
  sub_100037878();
  sub_100003214(&qword_10005DD08, &qword_10005DC78, &qword_100047068, &protocol conformance descriptor for PartialRangeThrough<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t Data.decompress(withAlgorithm:)(char a1, uint64_t a2, uint64_t a3)
{
  sub_100002D08(&qword_10005CFD0, &qword_1000463E0);
  sub_100041230();
  return v4;
}

uint64_t sub_100038A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002D08(&qword_10005CFD0, &qword_1000463E0);
  sub_100041230();
  return v4;
}

const uint8_t *sub_100038A8C@<X0>(const uint8_t *result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, const uint8_t **a5@<X8>)
{
  v6 = dword_100047350[a2];
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v8 = 0;
      goto LABEL_11;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v8 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v8 = BYTE6(a4);
LABEL_11:
    result = sub_100038B2C(COMPRESSION_STREAM_DECODE, v6, result, v8, 0, 0xC000000000000000);
    *a5 = result;
    a5[1] = v11;
    return result;
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v8 = HIDWORD(a3) - a3;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_100038B2C(compression_stream_operation a1, compression_algorithm a2, const uint8_t *a3, int64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 && a4 < 1)
  {
    return 0;
  }

  v13 = swift_slowAlloc();
  v14 = *(v13 + 16);
  *&stream.dst_ptr = *v13;
  stream.src_ptr = v14;
  *&stream.src_size = *(v13 + 24);
  if (compression_stream_init(&stream, a1, a2) == COMPRESSION_STATUS_ERROR)
  {
LABEL_21:
    v12 = 0;
  }

  else
  {
    v15 = 0x10000;
    if (a4 < 0x10000)
    {
      v15 = a4;
    }

    if (v15 <= 64)
    {
      v16 = 64;
    }

    else
    {
      v16 = v15;
    }

    v17 = swift_slowAlloc();
    stream.dst_ptr = v17;
    stream.dst_size = v16;
    stream.src_ptr = a3;
    stream.src_size = a4;
    sub_100038EC0(a5, a6);
    while (1)
    {
      v18 = compression_stream_process(&stream, 1);
      if (v18)
      {
        break;
      }

      if (stream.dst_size)
      {
        goto LABEL_20;
      }

      if (stream.dst_ptr != v17)
      {
        sub_100041220();
      }

      stream.dst_ptr = v17;
      stream.dst_size = v16;
    }

    if (v18 != COMPRESSION_STATUS_END)
    {
LABEL_20:
      sub_10001C268(a5, a6);

      compression_stream_destroy(&stream);
      goto LABEL_21;
    }

    if (stream.dst_ptr != v17)
    {
      sub_100041220();
    }

    v12 = a5;

    compression_stream_destroy(&stream);
  }

  return v12;
}

Swift::Int Data.CompressionAlgorithm.hashValue.getter(unsigned __int8 a1)
{
  sub_100042000();
  sub_100042010(a1);
  return sub_100042020();
}

const uint8_t *sub_100038DA0@<X0>(const uint8_t *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, compression_stream_operation a4@<W3>, const uint8_t **a5@<X8>)
{
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v9 = *(a2 + 16);
    v8 = *(a2 + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a3);
LABEL_11:
    result = sub_100038B2C(a4, COMPRESSION_ZLIB, result, v7, 0, 0xC000000000000000);
    *a5 = result;
    a5[1] = v11;
    return result;
  }

  LODWORD(v7) = HIDWORD(a2) - a2;
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v7 = v7;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

unint64_t sub_100038E5C()
{
  result = qword_10005DEA8;
  if (!qword_10005DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DEA8);
  }

  return result;
}

uint64_t sub_100038EC0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id sub_100038F5C()
{
  v0 = sub_100039898();

  return v0;
}

void sub_100038F90(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100038FEC(a3);
}

id sub_100039000()
{
  v0 = sub_1000398A8();

  return v0;
}

void sub_100039034(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100039090(a3);
}

id sub_1000390A4()
{
  v0 = sub_1000398B8();

  return v0;
}

void sub_1000390D8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100039134(a3);
}

void sub_10003915C()
{
  v1 = *(v0 + qword_10005DEC8);
  *(v0 + qword_10005DEC8) = 0;
}

void sub_100039170(void *a1)
{
  v1 = a1;
  sub_10003915C();
}

id sub_1000391B8(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v8;
  v14 = swift_isaMask;
  *(v8 + qword_10005DEB0) = 0;
  *(v8 + qword_10005DEB8) = 0;
  *(v8 + qword_10005DEC0) = 0;
  *(v8 + qword_10005DEC8) = 0;
  v15 = type metadata accessor for ImageCell(0, *((v14 & v13) + 0x50), *((v14 & v13) + 0x58), a8);
  v17.receiver = v8;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1000392AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = swift_isaMask;
  *(v4 + qword_10005DEB0) = 0;
  *(v4 + qword_10005DEB8) = 0;
  *(v4 + qword_10005DEC0) = 0;
  *(v4 + qword_10005DEC8) = 0;
  v8 = type metadata accessor for ImageCell(0, *((v7 & v6) + 0x50), *((v7 & v6) + 0x58), a4);
  v11.receiver = v4;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

id sub_1000393A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ImageCell(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100039414(uint64_t a1)
{
  v2 = *(a1 + qword_10005DEC8);
}

void sub_100039518(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + qword_10005DEB0);
  *(a1 + qword_10005DEB0) = a3;
  v3 = a3;
}

void sub_100039570(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + qword_10005DEB8);
  *(a1 + qword_10005DEB8) = a3;
  v3 = a3;
}

void sub_1000395C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + qword_10005DEC0);
  *(a1 + qword_10005DEC0) = a3;
  v3 = a3;
}

id sub_100039628(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = (a7)(0, a6);
  return objc_msgSendSuper2(&v12, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1000396B8(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = (a4)(0, a2);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

id sub_10003974C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100039820(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100039914()
{
  type metadata accessor for MessagesViewController();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
  }

  else
  {
    result = [v0 parentViewController];
    if (!result)
    {
      return result;
    }

    v5 = result;
    v2 = sub_100039914();
  }

  return v2;
}

void sub_100039A14()
{
  v1 = v0;
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v60 - v7;
  v9 = type metadata accessor for ActionViewController();
  v62.receiver = v1;
  v62.super_class = v9;
  objc_msgSendSuper2(&v62, "viewDidLoad");
  sub_1000413D0();
  v10 = sub_100041400();
  v11 = sub_100041CD0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Friend Request Card - Local player not authenticated view loaded", v12, 2u);
  }

  v13 = *(v3 + 8);
  v13(v8, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_29;
  }

  v15 = Strong;
  v16 = [Strong layer];

  [v16 setCornerRadius:9.0];
  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v18 = v17;
  v19 = [v17 layer];

  [v19 setMasksToBounds:1];
  if (byte_10005C528 == 3)
  {
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      v22 = GKGameCenterUIFrameworkBundle();
      v58._countAndFlagsBits = 0xE000000000000000;
      v63._object = 0x8000000100045410;
      v63._countAndFlagsBits = 0xD000000000000013;
      v66.value._countAndFlagsBits = 0;
      v66.value._object = 0;
      v23.super.isa = v22;
      v69._countAndFlagsBits = 0;
      v69._object = 0xE000000000000000;
      sub_100041180(v63, v66, v23, v69, 0, v58);

      v24 = sub_100041AF0();

      [v21 setText:v24];

      v25 = swift_unknownObjectWeakLoadStrong();
      if (v25)
      {
        v26 = v25;
        [v25 setHidden:1];

        v27 = sub_100039914();
        if (v27)
        {
          v28 = v27;
          sub_100029704();
          v30 = &v28[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController____lazy_storage___inviteCardHeight];
          v31 = 240.0;
LABEL_20:
          *v30 = v31;
          *(v30 + 8) = 0;
          if (v29 != v31)
          {
            [v28 requestResize];
          }

          goto LABEL_23;
        }

        goto LABEL_23;
      }

      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v32 = [objc_opt_self() shared];
  if (!v32)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v33 = v32;
  v34 = [v32 lockedDown];

  v35 = swift_unknownObjectWeakLoadStrong();
  v36 = v35;
  v61 = v13;
  if (v34)
  {
    if (!v35)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v37 = "PEN_SETTINGS_MESSAGE";
    v38 = 0xD00000000000001BLL;
  }

  else
  {
    if (!v35)
    {
LABEL_36:
      __break(1u);
      return;
    }

    v37 = "T@UIButton,N,W,VactionButton";
    v38 = 0xD000000000000024;
  }

  v39 = GKGameCenterUIFrameworkBundle();
  v58._countAndFlagsBits = 0xE000000000000000;
  v64._object = (v37 | 0x8000000000000000);
  v64._countAndFlagsBits = v38;
  v67.value._countAndFlagsBits = 0;
  v67.value._object = 0;
  v40.super.isa = v39;
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  sub_100041180(v64, v67, v40, v70, 0, v58);

  v41 = sub_100041AF0();

  [v36 setText:v41];

  v42 = swift_unknownObjectWeakLoadStrong();
  if (!v42)
  {
    goto LABEL_33;
  }

  v43 = v42;
  v44 = GKGameCenterUIFrameworkBundle();
  v59._countAndFlagsBits = 0xE000000000000000;
  v65._countAndFlagsBits = 0x53474E4954544553;
  v65._object = 0xEF4E4F545455425FLL;
  v68.value._countAndFlagsBits = 0;
  v68.value._object = 0;
  v45.super.isa = v44;
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  sub_100041180(v65, v68, v45, v71, 0, v59);

  v46 = sub_100041AF0();

  [v43 setTitle:v46 forState:0];

  v47 = swift_unknownObjectWeakLoadStrong();
  if (!v47)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v48 = v47;
  [v47 addTarget:v1 action:"openSettings" forControlEvents:64];

  v49 = sub_100039914();
  v13 = v61;
  if (v49)
  {
    v28 = v49;
    sub_100029704();
    v30 = &v28[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController____lazy_storage___inviteCardHeight];
    v31 = 280.0;
    goto LABEL_20;
  }

LABEL_23:
  v50 = sub_100039914();
  if (v50)
  {
    v51 = v50;
    sub_1000413E0();
    v52 = v51;
    v53 = sub_100041400();
    v54 = sub_100041CC0();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      *(v55 + 4) = v52;
      *v56 = v51;
      v57 = v52;
      _os_log_impl(&_mh_execute_header, v53, v54, "%@ user interface is ready for display", v55, 0xCu);
      sub_10003A3CC(v56);
    }

    v13(v6, v2);
    [v52 setReadyForDisplay];
  }
}

id sub_10003A328(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActionViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10003A3CC(uint64_t a1)
{
  v2 = sub_100002D08(&unk_10005CA00, &unk_100045CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10003A434(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_10000EA78(0, &qword_10005CA38, GKPlayer_ptr);
  v5 = sub_100041C20();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_10003A4E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = sub_100041310();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 <= 4u)
  {
    if (a3 < 3u)
    {
      (*(v5 + 104))(v7, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v4);
      v8 = sub_100041300();
      (*(v5 + 8))(v7, v4);
      if (v8)
      {
        sub_1000413B0();
        return sub_100041380();
      }

      v13 = "FRIEND_REQUEST_CARD_SUBTITLE";
      v14 = GKGameCenterUIFrameworkBundle();
      v15._countAndFlagsBits = 0xD000000000000023;
LABEL_15:
      v18._countAndFlagsBits = 0xE000000000000000;
      v15._object = (v13 | 0x8000000000000000);
      goto LABEL_16;
    }

    if (a3 != 3)
    {
      v10 = "N_INVITE_ACCEPTED";
      v11 = GKGameCenterUIFrameworkBundle();
      goto LABEL_13;
    }

LABEL_10:
    (*(v5 + 104))(v7, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v4);
    v12 = sub_100041300();
    (*(v5 + 8))(v7, v4);
    if (v12)
    {
      sub_1000413B0();
      return sub_100041370();
    }

    v13 = "N_ALREADY_FRIENDS";
    v14 = GKGameCenterUIFrameworkBundle();
    v15._countAndFlagsBits = 0xD00000000000001CLL;
    goto LABEL_15;
  }

  result = 0;
  if (a3 - 7 < 3)
  {
    return result;
  }

  if (a3 != 5)
  {
    goto LABEL_10;
  }

  v10 = "GROUP_INVITE_VIEW_GC_FRIENDS";
  v11 = GKGameCenterUIFrameworkBundle();
LABEL_13:
  v14 = v11;
  v18._countAndFlagsBits = 0xE000000000000000;
  v15._object = (v10 | 0x8000000000000000);
  v15._countAndFlagsBits = 0xD000000000000031;
LABEL_16:
  v20.value._countAndFlagsBits = 0;
  v20.value._object = 0;
  v16.super.isa = v14;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v17 = sub_100041180(v15, v20, v16, v21, 0, v18);

  return v17;
}

uint64_t sub_10003A75C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100041450();

  return v1;
}

uint64_t sub_10003A7D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100041450();

  return v1;
}

uint64_t sub_10003A848(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10003D788();
  }

  return result;
}

void sub_10003A8A0()
{
  if ([objc_opt_self() _gkIsOnline])
  {
    v1 = [objc_opt_self() shared];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 isAddingFriendsRestricted];

      if (v3)
      {
        v4 = [objc_allocWithZone(GKReporter) init];
        [v4 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestRestrictedError];

        v5 = [objc_allocWithZone(GKAPIReporter) init];
        v6 = sub_100041AF0();
        v7 = sub_100041AF0();
        v8 = sub_100041AF0();
        sub_10003D1C0();
        v9 = sub_100041AF0();

        v10 = sub_100041AF0();
        [v5 recordClickWithAction:v6 targetId:v7 targetType:v8 pageId:v9 pageType:v10];

        v11 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert);
        v12 = GKGameCenterUIFrameworkBundle();
        v49._countAndFlagsBits = 0xE000000000000000;
        v54._countAndFlagsBits = 0x525F444E45495246;
        v54._object = 0xEE00545345555145;
        v58.value._countAndFlagsBits = 0;
        v58.value._object = 0;
        v13.super.isa = v12;
        v62._countAndFlagsBits = 0;
        v62._object = 0xE000000000000000;
        v14 = sub_100041180(v54, v58, v13, v62, 0, v49);
        v16 = v15;

        v17 = GKGameCenterUIFrameworkBundle();
        v50._countAndFlagsBits = 0xE000000000000000;
        v55._countAndFlagsBits = 0xD000000000000027;
        v55._object = 0x8000000100044180;
        v59.value._countAndFlagsBits = 0;
        v59.value._object = 0;
        v18.super.isa = v17;
        v63._countAndFlagsBits = 0;
        v63._object = 0xE000000000000000;
        v19 = sub_100041180(v55, v59, v18, v63, 0, v50);
        v21 = v20;

        v11(v14, v16, v19, v21);
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_100041460();
        v38 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_conversation);
        v39 = [v38 recipientAddresses];
        v40 = sub_100041C20();

        if (v40[2])
        {
          v42 = v40[4];
          v41 = v40[5];

          v43 = [v38 recipientAddresses];
          v44 = sub_100041C20();

          v45 = *(v44 + 16);

          v46 = v45 > 1;
        }

        else
        {

          v46 = 0;
          v42 = 0;
          v41 = 0;
        }

        v47 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_playerModel);
        if (v47)
        {

          v48 = v47;
          sub_100012C18(v42, v41, v46, sub_100040570, v0);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v22 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert);
    v23 = GKGameCenterUIFrameworkBundle();
    v49._countAndFlagsBits = 0xE000000000000000;
    v56._countAndFlagsBits = 0xD000000000000016;
    v56._object = 0x8000000100044140;
    v60.value._countAndFlagsBits = 0;
    v60.value._object = 0;
    v24.super.isa = v23;
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    v25 = sub_100041180(v56, v60, v24, v64, 0, v49);
    v27 = v26;

    v28 = GKGameCenterUIFrameworkBundle();
    v51._countAndFlagsBits = 0xE000000000000000;
    v57._countAndFlagsBits = 0xD000000000000018;
    v57._object = 0x8000000100043F40;
    v61.value._countAndFlagsBits = 0;
    v61.value._object = 0;
    v29.super.isa = v28;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    v30 = sub_100041180(v57, v61, v29, v65, 0, v51);
    v32 = v31;

    v22(v25, v27, v30, v32);

    v33 = [objc_allocWithZone(GKAPIReporter) init];
    v34 = sub_100041AF0();
    v35 = sub_100041AF0();
    v36 = sub_100041AF0();
    sub_10003D1C0();
    v37 = sub_100041AF0();

    v52 = sub_100041AF0();
    [v33 recordClickWithAction:v34 targetId:v35 targetType:v36 pageId:v37 pageType:v52];
  }
}

void sub_10003AED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041410();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v54 - v9;
  if (a1)
  {
    v54 = v4;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 0;

    sub_100041460();
    v11 = [objc_allocWithZone(GKReporter) init];
    [v11 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestExpiredError];

    v12 = [objc_allocWithZone(GKAPIReporter) init];
    v13 = sub_100041AF0();
    v14 = sub_100041AF0();
    v15 = sub_100041AF0();
    sub_10003D1C0();
    v16 = sub_100041AF0();

    v17 = sub_100041AF0();
    [v12 recordClickWithAction:v13 targetId:v14 targetType:v15 pageId:v16 pageType:v17];

    sub_1000413D0();
    swift_errorRetain();
    v18 = sub_100041400();
    v19 = sub_100041CE0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v55 = a1;
      aBlock[0] = v21;
      *v20 = 136315138;
      swift_errorRetain();
      sub_100002D08(&unk_10005CF10, &qword_100047670);
      v22 = sub_100041B40();
      v24 = sub_10003FBD0(v22, v23, aBlock);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "acceptButtonPressed - acceptFriendRequest error: %s", v20, 0xCu);
      sub_10000E8A8(v21);
    }

    (*(v5 + 8))(v8, v54);
    v25 = *(a2 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert);
    v26 = GKGameCenterUIFrameworkBundle();
    v52._countAndFlagsBits = 0xE000000000000000;
    v57._countAndFlagsBits = 0x525F444E45495246;
    v57._object = 0xEE00545345555145;
    v59.value._countAndFlagsBits = 0;
    v59.value._object = 0;
    v27.super.isa = v26;
    v61._countAndFlagsBits = 0;
    v61._object = 0xE000000000000000;
    v28 = sub_100041180(v57, v59, v27, v61, 0, v52);
    v30 = v29;

    v31 = GKGameCenterUIFrameworkBundle();
    v53._countAndFlagsBits = 0xE000000000000000;
    v58._countAndFlagsBits = 0xD000000000000024;
    v58._object = 0x8000000100043F90;
    v60.value._countAndFlagsBits = 0;
    v60.value._object = 0;
    v32.super.isa = v31;
    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    v33 = sub_100041180(v58, v60, v32, v62, 0, v53);
    v35 = v34;

    v25(v28, v30, v33, v35);
  }

  else
  {
    v36 = [objc_allocWithZone(GKReporter) init];
    [v36 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestAccepted];

    v37 = [objc_allocWithZone(GKAPIReporter) init];
    v38 = sub_100041AF0();
    v39 = sub_100041AF0();
    v40 = sub_100041AF0();
    sub_10003D1C0();
    v41 = sub_100041AF0();

    v42 = sub_100041AF0();
    [v37 recordClickWithAction:v38 targetId:v39 targetType:v40 pageId:v41 pageType:v42];

    sub_1000413E0();

    v43 = sub_100041400();
    v44 = sub_100041CC0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v55 = a2;
      aBlock[0] = v46;
      *v45 = 136315138;
      type metadata accessor for FriendInviteCardViewModel(0);

      v47 = sub_100041B40();
      v49 = sub_10003FBD0(v47, v48, aBlock);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "%s acceptButtonPressed - acceptFriendRequest succeed", v45, 0xCu);
      sub_10000E8A8(v46);
    }

    (*(v5 + 8))(v10, v4);
    v50 = [objc_opt_self() local];
    aBlock[4] = sub_100040578;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003A434;
    aBlock[3] = &unk_100057898;
    v51 = _Block_copy(aBlock);

    [v50 loadFriendsAsPlayersWithCompletionHandler:v51];
    _Block_release(v51);
  }
}

uint64_t sub_10003B618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100041A10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100041A30();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*(a3 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_conversation) recipientAddresses];
  v13 = sub_100041C20();

  v14 = *(v13 + 16);

  if (v14 == 1)
  {
    return (*(a3 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onAcceptInvite))(v15);
  }

  sub_10000EA78(0, &qword_10005CA10, OS_dispatch_queue_ptr);
  v17 = sub_100041D50();
  aBlock[4] = sub_100040580;
  aBlock[5] = a3;
  v22 = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012BD4;
  aBlock[3] = &unk_1000578C0;
  v18 = _Block_copy(aBlock);
  v21 = v8;
  v19 = v18;

  sub_100041A20();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100040FF0(&qword_10005CA18, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002D08(&qword_10005CA20, qword_100045D00);
  sub_100003214(&qword_10005CA28, &qword_10005CA20, qword_100045D00, &protocol conformance descriptor for [A]);
  sub_100041E60();
  v20 = v22;
  sub_100041D60();
  _Block_release(v19);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v21);
}

void sub_10003B95C()
{
  if ([objc_opt_self() _gkIsOnline])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_100041460();
    v1 = [*(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_conversation) recipientAddresses];
    v2 = sub_100041C20();

    if (v2[2])
    {
      v4 = v2[4];
      v3 = v2[5];
    }

    else
    {
      v4 = 0;
      v3 = 0;
    }

    v21 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_playerModel);
    if (v21)
    {

      v22 = v21;
      sub_1000131E8(v4, v3, sub_100040568, v0);
    }
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert);
    v6 = GKGameCenterUIFrameworkBundle();
    v23._countAndFlagsBits = 0xE000000000000000;
    v27._countAndFlagsBits = 0xD000000000000016;
    v27._object = 0x8000000100044140;
    v29.value._countAndFlagsBits = 0;
    v29.value._object = 0;
    v7.super.isa = v6;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    v8 = sub_100041180(v27, v29, v7, v31, 0, v23);
    v10 = v9;

    v11 = GKGameCenterUIFrameworkBundle();
    v24._countAndFlagsBits = 0xE000000000000000;
    v28._countAndFlagsBits = 0xD000000000000018;
    v28._object = 0x8000000100043F40;
    v30.value._countAndFlagsBits = 0;
    v30.value._object = 0;
    v12.super.isa = v11;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v13 = sub_100041180(v28, v30, v12, v32, 0, v24);
    v15 = v14;

    v5(v8, v10, v13, v15);

    v16 = [objc_allocWithZone(GKAPIReporter) init];
    v17 = sub_100041AF0();
    v18 = sub_100041AF0();
    v19 = sub_100041AF0();
    sub_10003D1C0();
    v20 = sub_100041AF0();

    v25 = sub_100041AF0();
    [v16 recordClickWithAction:v17 targetId:v18 targetType:v19 pageId:v20 pageType:v25];
  }
}

uint64_t sub_10003BCC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041410();
  v56 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v55 - v8;
  v10 = [objc_allocWithZone(GKReporter) init];
  v11 = v10;
  if (a1)
  {
    v55 = v4;
    [v10 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestExpiredError];

    v12 = [objc_allocWithZone(GKAPIReporter) init];
    v13 = sub_100041AF0();
    v14 = sub_100041AF0();
    v15 = sub_100041AF0();
    sub_10003D1C0();
    v16 = sub_100041AF0();

    v17 = sub_100041AF0();
    [v12 recordClickWithAction:v13 targetId:v14 targetType:v15 pageId:v16 pageType:v17];

    sub_1000413D0();

    swift_errorRetain();
    v18 = sub_100041400();
    v19 = sub_100041CE0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v57 = a2;
      v58 = v21;
      *v20 = 136315394;
      type metadata accessor for FriendInviteCardViewModel(0);

      v22 = sub_100041B40();
      v24 = sub_10003FBD0(v22, v23, &v58);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v57 = a1;
      swift_errorRetain();
      sub_100002D08(&unk_10005CF10, &qword_100047670);
      v25 = sub_100041B40();
      v27 = sub_10003FBD0(v25, v26, &v58);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s ignoreAction - ignoreFriendRequest error: %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    (*(v56 + 8))(v7, v55);
    v28 = *(a2 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert);
    v29 = GKGameCenterUIFrameworkBundle();
    v53._countAndFlagsBits = 0xE000000000000000;
    v59._countAndFlagsBits = 0x525F444E45495246;
    v59._object = 0xEE00545345555145;
    v61.value._countAndFlagsBits = 0;
    v61.value._object = 0;
    v30.super.isa = v29;
    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    v31 = sub_100041180(v59, v61, v30, v63, 0, v53);
    v33 = v32;

    v34 = GKGameCenterUIFrameworkBundle();
    v54._countAndFlagsBits = 0xE000000000000000;
    v60._countAndFlagsBits = 0xD000000000000024;
    v60._object = 0x8000000100043F90;
    v62.value._countAndFlagsBits = 0;
    v62.value._object = 0;
    v35.super.isa = v34;
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    v36 = sub_100041180(v60, v62, v35, v64, 0, v54);
    v38 = v37;

    v28(v31, v33, v36, v38);

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v58) = 0;

    return sub_100041460();
  }

  else
  {
    [v10 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestAccepted];

    v40 = [objc_allocWithZone(GKAPIReporter) init];
    v41 = sub_100041AF0();
    v42 = sub_100041AF0();
    v43 = sub_100041AF0();
    sub_10003D1C0();
    v44 = sub_100041AF0();

    v45 = sub_100041AF0();
    [v40 recordClickWithAction:v41 targetId:v42 targetType:v43 pageId:v44 pageType:v45];

    sub_1000413E0();

    v46 = sub_100041400();
    v47 = sub_100041CC0();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v57 = a2;
      v58 = v49;
      *v48 = 136315138;
      type metadata accessor for FriendInviteCardViewModel(0);

      v50 = sub_100041B40();
      v52 = sub_10003FBD0(v50, v51, &v58);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "%s ignoreAction - ignoreFriendRequest succeed", v48, 0xCu);
      sub_10000E8A8(v49);
    }

    return (*(v56 + 8))(v9, v4);
  }
}

void sub_10003C384()
{
  v1 = v0;
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();

  v6 = sub_100041400();
  v7 = sub_100041CC0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v1;
    v20 = v9;
    *v8 = 136315138;
    type metadata accessor for FriendInviteCardViewModel(0);

    v10 = sub_100041B40();
    v12 = sub_10003FBD0(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s retry", v8, 0xCu);
    sub_10000E8A8(v9);
  }

  (*(v3 + 8))(v5, v2);
  v13 = [objc_allocWithZone(GKAPIReporter) init];
  v14 = sub_100041AF0();
  v15 = sub_100041AF0();
  v16 = sub_100041AF0();
  sub_10003D1C0();
  v17 = sub_100041AF0();

  v18 = sub_100041AF0();
  [v13 recordClickWithAction:v14 targetId:v15 targetType:v16 pageId:v17 pageType:v18];

  sub_10003D788();
}

uint64_t sub_10003C630(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100041410();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();

  v10 = sub_100041400();
  v11 = sub_100041CC0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = a1;
    v15 = v14;
    v27 = v3;
    v28 = v14;
    *v13 = 136315138;
    type metadata accessor for FriendInviteCardViewModel(0);

    v16 = sub_100041B40();
    v18 = sub_10003FBD0(v16, v17, &v28);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s present profile", v13, 0xCu);
    sub_10000E8A8(v15);
    a1 = v25;

    a2 = v26;
  }

  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100041450();

  if (((1 << v30) & 0x178) != 0)
  {
    sub_1000334F0(v28, v29, v30);
    goto LABEL_7;
  }

  if (((1 << v30) & 7) == 0)
  {
LABEL_7:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100041450();

    v23 = v30;
    if (v30 <= 2u)
    {
      if (v30 >= 2u)
      {
        v23 = 2;
      }
    }

    else
    {
      if (v30 < 7u)
      {
        sub_1000334F0(v28, v29, v30);
        v19 = [objc_allocWithZone(GKReporter) init];
        v20 = v19;
        v21 = GKReporterDomainImprovedFriendingUIInteractions;
        v22 = &GKReceiverTappedViewPlayerProfileButton;
        goto LABEL_10;
      }

      if (v30 != 8)
      {
        return (*(v3 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentProfile))(a1, a2);
      }
    }

    sub_1000334F0(v28, v29, v23);
    return (*(v3 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentProfile))(a1, a2);
  }

  sub_1000334F0(v28, v29, v30);
  v19 = [objc_allocWithZone(GKReporter) init];
  v20 = v19;
  v21 = GKReporterDomainImprovedFriendingUIInteractions;
  v22 = &GKSenderTappedViewPlayerProfileButton;
LABEL_10:
  [v19 reportEvent:v21 type:*v22];

  return (*(v3 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentProfile))(a1, a2);
}

uint64_t sub_10003C9A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100041410();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();

  v10 = sub_100041400();
  v11 = sub_100041CC0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21 = a1;
    v15 = v14;
    v23 = v3;
    v24 = v14;
    *v13 = 136315138;
    type metadata accessor for FriendInviteCardViewModel(0);

    v16 = sub_100041B40();
    v18 = sub_10003FBD0(v16, v17, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s present friend profile", v13, 0xCu);
    sub_10000E8A8(v15);
    a1 = v21;

    a2 = v22;
  }

  (*(v7 + 8))(v9, v6);
  v19 = [objc_allocWithZone(GKReporter) init];
  [v19 reportEvent:GKReporterDomainImprovedFriendingUIInteractions type:GKViewFriendProfileButtonTapped];

  return (*(v3 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentProfile))(a1, a2);
}

uint64_t sub_10003CBF0()
{
  v1 = v0;
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();

  v6 = sub_100041400();
  v7 = sub_100041CC0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v1;
    v16 = v9;
    *v8 = 136315138;
    type metadata accessor for FriendInviteCardViewModel(0);

    v10 = sub_100041B40();
    v12 = sub_10003FBD0(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s present friend list", v8, 0xCu);
    sub_10000E8A8(v9);
  }

  (*(v3 + 8))(v5, v2);
  v13 = [objc_allocWithZone(GKReporter) init];
  [v13 reportEvent:GKReporterDomainImprovedFriendingUIInteractions type:GKViewFriendListButtonTapped];

  return (*(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentFriendsList))();
}

id *sub_10003CE18(void *a1)
{
  v2 = [a1 internal];
  v3 = [v2 friendsVisibility];

  if (v3)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100002D08(&qword_10005E5F8, qword_1000476C8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100047430;
  [a1 stats];
  v6 = v33;
  v7 = GKGameCenterUIFrameworkBundle();
  v30._countAndFlagsBits = 0xE000000000000000;
  v36._countAndFlagsBits = 0xD00000000000001CLL;
  v36._object = 0x8000000100043EB0;
  v39.value._countAndFlagsBits = 0;
  v39.value._object = 0;
  v8.super.isa = v7;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  sub_100041180(v36, v39, v8, v42, 0, v30);

  sub_100002D08(&qword_10005C9C0, &qword_100045CD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100045AE0;
  [a1 stats];
  v10 = v33;
  *(v9 + 56) = &type metadata for Int;
  *(v9 + 64) = &protocol witness table for Int;
  *(v9 + 32) = v10;
  v11 = sub_100041B30();
  v13 = v12;

  *(v5 + 32) = v6;
  *(v5 + 40) = v11;
  *(v5 + 48) = v13;
  [a1 stats];
  v14 = v35;
  v15 = GKGameCenterUIFrameworkBundle();
  v31._countAndFlagsBits = 0xE000000000000000;
  v37._countAndFlagsBits = 0xD000000000000018;
  v37._object = 0x8000000100043ED0;
  v40.value._countAndFlagsBits = 0;
  v40.value._object = 0;
  v16.super.isa = v15;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  sub_100041180(v37, v40, v16, v43, 0, v31);

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100045AE0;
  [a1 stats];
  v18 = v35;
  *(v17 + 56) = &type metadata for Int;
  *(v17 + 64) = &protocol witness table for Int;
  *(v17 + 32) = v18;
  v19 = sub_100041B30();
  v21 = v20;

  *(v5 + 56) = v14;
  *(v5 + 64) = v19;
  *(v5 + 72) = v21;
  [a1 stats];
  v22 = v34;
  v23 = GKGameCenterUIFrameworkBundle();
  v32._countAndFlagsBits = 0xE000000000000000;
  v38._object = 0x8000000100043EF0;
  v38._countAndFlagsBits = 0xD000000000000011;
  v41.value._countAndFlagsBits = 0;
  v41.value._object = 0;
  v24.super.isa = v23;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  sub_100041180(v38, v41, v24, v44, 0, v32);

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100045AE0;
  [a1 stats];
  v26 = v34;
  *(v25 + 56) = &type metadata for Int;
  *(v25 + 64) = &protocol witness table for Int;
  *(v25 + 32) = v26;
  v27 = sub_100041B30();
  v29 = v28;

  result = v5;
  *(v5 + 80) = v22;
  *(v5 + 88) = v27;
  *(v5 + 96) = v29;
  return result;
}

uint64_t sub_10003D1C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100041450();

  if (v11 <= 4u)
  {
    if (v11 < 3u)
    {
      v1 = 0x7265646E6573;
LABEL_8:
      sub_1000334F0(v9, v10, v11);
      goto LABEL_9;
    }

LABEL_7:
    v1 = 0x6E65697069636572;
    goto LABEL_8;
  }

  if (v11 <= 6u)
  {
    goto LABEL_7;
  }

  v1 = 0x6E65697069636572;
  if (v11 == 8)
  {
    goto LABEL_8;
  }

LABEL_9:
  v2 = [*(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_conversation) recipientAddresses];
  v3 = sub_100041C20();

  v4 = *(v3 + 16);

  v5 = v4 > 1;
  if (v4 <= 1)
  {
    v6 = 0x7564697669646E69;
  }

  else
  {
    v6 = 0x70756F7267;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xEA00000000006C61;
  }

  v12._countAndFlagsBits = 95;
  v12._object = 0xE100000000000000;
  sub_100041B80(v12);
  v13._countAndFlagsBits = v6;
  v13._object = v7;
  sub_100041B80(v13);

  return v1;
}

void sub_10003D358()
{
  v1 = v0;
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();

  v6 = sub_100041400();
  v7 = sub_100041CC0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v1;
    *v8 = 136315394;
    type metadata accessor for FriendInviteCardViewModel(0);

    v9 = sub_100041B40();
    v11 = sub_10003FBD0(v9, v10, &v22);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100041450();

    v12 = sub_100041B40();
    v14 = sub_10003FBD0(v12, v13, &v22);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s state is set to %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v5, v2);
  v15 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_isViewRecordSent;
  if ((v1[OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_isViewRecordSent] & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100041450();

    if (v25 <= 6u)
    {
      if (v25 - 3 >= 4)
      {
        sub_1000334F0(v23, v24, v25);
        v16 = [*&v1[OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_conversation] recipientAddresses];
      }

      else
      {
        sub_1000334F0(v23, v24, v25);

        v16 = [objc_allocWithZone(GKReporter) init];
        [v16 reportEvent:GKReporterDomainImprovedFriendingUIInteractions type:GKFriendInviteViewedByReceiver];
      }

      v17 = [objc_allocWithZone(GKAPIReporter) init];
      sub_10003D1C0();
      v18 = sub_100041AF0();

      v19 = sub_100041AF0();
      v20 = sub_100041AF0();
      [v17 recordPageWithID:v18 pageContext:v19 pageType:v20];

      v1[v15] = 1;
    }

    else if (v25 == 8)
    {
      sub_1000334F0(v23, v24, 8u);
    }
  }
}

void sub_10003D788()
{
  v1 = v0;
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v34 - v7;
  sub_1000413E0();

  v9 = sub_100041400();
  v10 = sub_100041CC0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v1;
    v37[0] = v35;
    *v11 = 136315138;
    type metadata accessor for FriendInviteCardViewModel(0);

    v12 = sub_100041B40();
    v14 = v1;
    v15 = v2;
    v16 = v6;
    v17 = v3;
    v18 = sub_10003FBD0(v12, v13, v37);

    *(v11 + 4) = v18;
    v3 = v17;
    v6 = v16;
    v2 = v15;
    v1 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s loadState", v11, 0xCu);
    sub_10000E8A8(v35);
  }

  v19 = v3[1];
  v19(v8, v2);
  v20 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_playerModel);
  if (v20)
  {
    v21 = *&v20[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8];
    if (v21 && ((v21 & 0x2000000000000000) != 0 ? (v22 = HIBYTE(v21) & 0xF) : (v22 = *&v20[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode] & 0xFFFFFFFFFFFFLL), v22))
    {
      v23 = swift_allocObject();
      *(v23 + 16) = v1;
      *(v23 + 24) = v20;
      v24 = v20;

      v25 = v24;
      sub_1000123C8(sub_1000404DC, v23);
    }

    else
    {
      v26 = v20;
      sub_10003EC08(v26);
    }
  }

  else
  {
    sub_1000413E0();

    v27 = sub_100041400();
    v28 = sub_100041CC0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v1;
      v37[0] = v30;
      *v29 = 136315138;
      type metadata accessor for FriendInviteCardViewModel(0);
      v35 = v3;

      v31 = sub_100041B40();
      v33 = sub_10003FBD0(v31, v32, v37);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s expected a playerModel", v29, 0xCu);
      sub_10000E8A8(v30);
    }

    v19(v6, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v37[0] = 0;
    v37[1] = 0;
    v38 = 7;

    sub_100041460();
    sub_10003D358();
    (*(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay))();
  }
}

void sub_10003DBE0(void **a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = sub_100041410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = objc_opt_self();
    v12 = a1;
    v13 = [v11 unknownPlayer];
    sub_10000EA78(0, &qword_10005CA38, GKPlayer_ptr);
    v14 = sub_100041DB0();

    if (v14)
    {

      goto LABEL_4;
    }

    v29 = a4[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState];
    if (v29 > 2)
    {
      if (v29 - 4 < 2)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        aBlock = a1;
        v78 = 0;
        v30 = 8;
        goto LABEL_15;
      }

      v74 = a3;
      v32 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs;
      swift_beginAccess();
      v33 = *&a4[v32];
      if (v33)
      {
        v34 = *(v33 + 16);
        v71 = v12;

        if (v34)
        {
          v35 = 0;
          v76 = v34;
          v72 = v34 - 1;
          v73 = v33 + 40;
          v75 = _swiftEmptyArrayStorage;
          do
          {
            v36 = (v73 + 16 * v35);
            v37 = v35;
            while (1)
            {
              if (v37 >= *(v33 + 16))
              {
                __break(1u);
                return;
              }

              v39 = *(v36 - 1);
              v38 = *v36;
              v40 = objc_opt_self();

              v41 = [v40 local];
              v42 = [v41 internal];

              v43 = [v42 playerID];
              v44 = sub_100041B20();
              v46 = v45;

              if (v39 == v44 && v38 == v46)
              {
                break;
              }

              v48 = sub_100041FC0();

              if (v48)
              {
                goto LABEL_30;
              }

              ++v37;

              v36 += 2;
              if (v76 == v37)
              {
                goto LABEL_47;
              }
            }

LABEL_30:
            v49 = v75;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v49;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100040178(0, v75[2] + 1, 1);
              v75 = aBlock;
            }

            v52 = v75[2];
            v51 = v75[3];
            if (v52 >= v51 >> 1)
            {
              sub_100040178((v51 > 1), v52 + 1, 1);
              v75 = aBlock;
            }

            v35 = v37 + 1;
            v53 = v75;
            v75[2] = (v52 + 1);
            v54 = &v53[2 * v52];
            v54[4] = v39;
            v54[5] = v38;
          }

          while (v72 != v37);
        }

        else
        {
          v75 = _swiftEmptyArrayStorage;
        }

LABEL_47:

        v66 = v75[2];

        if (v66)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          aBlock = a1;
          v78 = 0;
          LOBYTE(v79) = 5;
          v67 = v71;

          sub_100041460();
          sub_10003D358();

          return;
        }
      }

      else
      {
        v60 = v12;
      }

      v61 = [objc_opt_self() local];
      v68 = swift_allocObject();
      v69 = v74;
      v68[2] = v12;
      v68[3] = v69;
      v68[4] = v12;
      v81 = sub_1000404E8;
      v82 = v68;
      aBlock = _NSConcreteStackBlock;
      v78 = 1107296256;
      v79 = sub_10003A434;
      v80 = &unk_100057820;
      v63 = _Block_copy(&aBlock);
      v64 = v12;
    }

    else
    {
      if (!a4[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState])
      {
        swift_getKeyPath();
        swift_getKeyPath();
        aBlock = a1;
        v78 = 0;
        v30 = 5;
        goto LABEL_15;
      }

      if (v29 == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        aBlock = a1;
        v78 = 0;
        v30 = 6;
LABEL_15:
        LOBYTE(v79) = v30;
        v31 = v12;

        sub_100041460();
LABEL_16:
        sub_10003D358();

        return;
      }

      v55 = a3;
      if (a4[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount + 8])
      {
        v56 = 0;
      }

      else
      {
        v56 = *&a4[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount];
      }

      if (v56 < 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        aBlock = a1;
        v78 = 0;
        LOBYTE(v79) = 0;
        goto LABEL_44;
      }

      v57 = [*(v55 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_conversation) recipientAddresses];
      v58 = sub_100041C20();

      v59 = *(v58 + 16);

      if (v59 >= 2)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        aBlock = a1;
        v78 = v56;
        LOBYTE(v79) = 2;
LABEL_44:
        v31 = v12;

        sub_100041460();
        goto LABEL_16;
      }

      v61 = [objc_opt_self() local];
      v62 = swift_allocObject();
      v62[2] = a4;
      v62[3] = v55;
      v62[4] = v12;
      v81 = sub_100040554;
      v82 = v62;
      aBlock = _NSConcreteStackBlock;
      v78 = 1107296256;
      v79 = sub_10003A434;
      v80 = &unk_100057870;
      v63 = _Block_copy(&aBlock);
      v64 = v12;

      v65 = a4;
    }

    [v61 loadFriendsAsPlayersWithCompletionHandler:v63];

    _Block_release(v63);
    return;
  }

LABEL_4:
  sub_1000413E0();

  v15 = a4;
  v16 = sub_100041400();
  v17 = sub_100041CC0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v76 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    aBlock = v21;
    *v18 = 136315394;
    v83 = a3;
    type metadata accessor for FriendInviteCardViewModel(0);

    v22 = sub_100041B40();
    v24 = sub_10003FBD0(v22, v23, &aBlock);
    v75 = v7;
    v25 = a3;
    v26 = v24;

    *(v18 + 4) = v26;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v15;
    *v20 = v15;
    v27 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s Could not find a valid player using playerModel: %@", v18, 0x16u);
    sub_10000E9F0(v20, &unk_10005CA00, &unk_100045CF0);

    sub_10000E8A8(v21);

    (*(v76 + 8))(v10, v75);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    v25 = a3;
  }

  v28 = v15[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v28;
  v78 = 0;
  LOBYTE(v79) = 7;

  sub_100041460();
  sub_10003D358();
  (*(v25 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay))();
}

void sub_10003E550(unint64_t a1, uint64_t a2, uint64_t a3, char *a4, unint64_t a5)
{
  if (a1 >> 62)
  {
LABEL_24:
    v22 = a3;
    v23 = sub_100041F50();
    a3 = v22;
    v7 = v23;
    if (v23)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v34 = a5;
      a5 = 0;
      v33 = a3;
      v8 = (a3 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname);
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = sub_100041EC0();
        }

        else
        {
          if (a5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v9 = *(a1 + 8 * a5 + 32);
        }

        v10 = v9;
        v11 = (a5 + 1);
        if (__OFADD__(a5, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v12 = v8;
        sub_10000EA78(0, &unk_10005CA40, NSNumber_ptr);
        v13 = [v10 friendBiDirectional];
        isa = sub_100041DA0(1).super.super.isa;
        v15 = sub_100041DB0();

        if (v15)
        {
          v16 = [v10 alias];
          v17 = sub_100041B20();
          v19 = v18;

          v8 = v12;
          v20 = v12[1];
          if (!v20)
          {

            goto LABEL_6;
          }

          if (v17 == *v12 && v20 == v19)
          {

LABEL_18:
            sub_100041EF0();
            sub_100041F10();
            sub_100041F20();
            sub_100041F00();
            goto LABEL_5;
          }

          v21 = sub_100041FC0();

          if (v21)
          {
            goto LABEL_18;
          }
        }

LABEL_5:
        v8 = v12;
LABEL_6:
        ++a5;
        if (v11 == v7)
        {
          a5 = v34;
          a3 = v33;
          if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_32;
        }
      }
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

LABEL_26:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_28;
    }

LABEL_33:
    v28 = a3;

    v29 = *(v28 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayer);
    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = [objc_opt_self() playerFromPlayerID:GKUnknownPlayerID];
    }

    v25 = v30;
    goto LABEL_37;
  }

LABEL_32:
  v26 = a3;
  v27 = sub_100041F50();
  a3 = v26;
  if (!v27)
  {
    goto LABEL_33;
  }

LABEL_28:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v24 = sub_100041EC0();
    goto LABEL_31;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v24 = _swiftEmptyArrayStorage[4];
LABEL_31:
    v25 = v24;

LABEL_37:
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = v25;
    v32 = a5;

    sub_100041460();
    sub_10003D358();

    return;
  }

  __break(1u);
}

void sub_10003E8C8(unint64_t a1, uint64_t a2, void *a3, unint64_t a4, unint64_t a5)
{
  v6 = a1;
  if (a1 >> 62)
  {
LABEL_23:
    v7 = sub_100041F50();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v28 = a5;
      a5 = 0;
      v8 = v6 & 0xC000000000000001;
      v32 = v6 & 0xFFFFFFFFFFFFFF8;
      v29 = v7;
      v30 = v6;
      while (1)
      {
        if (v8)
        {
          v9 = sub_100041EC0();
        }

        else
        {
          if (a5 >= *(v32 + 16))
          {
            goto LABEL_22;
          }

          v9 = *(v6 + 8 * a5 + 32);
        }

        v10 = v9;
        v11 = (a5 + 1);
        if (__OFADD__(a5, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        sub_10000EA78(0, &unk_10005CA40, NSNumber_ptr);
        v12 = [v10 friendBiDirectional];
        isa = sub_100041DA0(1).super.super.isa;
        v14 = sub_100041DB0();

        if (v14)
        {
          break;
        }

LABEL_5:
        ++a5;
        if (v11 == v7)
        {
          a5 = v28;
          if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_27;
        }
      }

      v15 = v8;
      v16 = [v10 internal];
      v17 = [v16 playerID];

      v18 = sub_100041B20();
      v20 = v19;

      v21 = [a3 internal];
      v22 = [v21 playerID];

      v23 = sub_100041B20();
      v25 = v24;

      if (v18 == v23 && v20 == v25)
      {

        v8 = v15;
      }

      else
      {
        v26 = sub_100041FC0();

        v8 = v15;
        if ((v26 & 1) == 0)
        {

          goto LABEL_17;
        }
      }

      sub_100041EF0();
      sub_100041F10();
      sub_100041F20();
      sub_100041F00();
LABEL_17:
      v7 = v29;
      v6 = v30;
      goto LABEL_5;
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

LABEL_25:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
LABEL_27:
    sub_100041F50();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v27 = a5;

  sub_100041460();
  sub_10003D358();
}

uint64_t sub_10003EC08(void *a1)
{
  v2 = v1;
  v4 = sub_100041410();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();

  v8 = sub_100041400();
  v9 = sub_100041CC0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18[0] = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18[1] = v2;
    *&v19 = v12;
    *v11 = 136315138;
    type metadata accessor for FriendInviteCardViewModel(0);

    v13 = sub_100041B40();
    v15 = sub_10003FBD0(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s creating friend request", v11, 0xCu);
    sub_10000E8A8(v12);

    a1 = v18[0];
  }

  (*(v5 + 8))(v7, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = xmmword_100047440;
  v20 = 9;

  sub_100041460();
  sub_10003D358();
  (*(v2 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay))();

  v16 = a1;
  sub_100018B4C(v16, v16, v2);
}

void sub_10003EE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100041410();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_100041200();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 || !*(a2 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8))
  {
LABEL_2:
    sub_1000413E0();

    swift_errorRetain();
    v19 = sub_100041400();
    v20 = sub_100041CC0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41 = a3;
      v42[0] = v22;
      *v21 = 136315394;
      type metadata accessor for FriendInviteCardViewModel(0);

      v23 = sub_100041B40();
      v25 = sub_10003FBD0(v23, v24, v42);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v41 = a1;
      sub_100002D08(&unk_10005CF10, &qword_100047670);
      v26 = sub_100041E10();
      v28 = sub_10003FBD0(v26, v27, v42);

      *(v21 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s failed to create friend request with %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    (*(v39 + 8))(v9, v40);
    v29 = *(a2 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType);
    swift_getKeyPath();
    swift_getKeyPath();
    v42[0] = v29;
    v42[1] = 0;
    v43 = 7;

    sub_100041460();
    sub_10003D358();
    return;
  }

  sub_10001287C(1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000E9F0(v14, &qword_10005CA30, &unk_100046380);
    goto LABEL_2;
  }

  (*(v16 + 32))(v18, v14, v15);
  v30 = [objc_allocWithZone(GKReporter) init];
  [v30 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestCreated];

  sub_1000413E0();

  v31 = sub_100041400();
  v32 = sub_100041CC0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = a3;
    v42[0] = v38;
    *v33 = 136315138;
    type metadata accessor for FriendInviteCardViewModel(0);

    v34 = sub_100041B40();
    v36 = sub_10003FBD0(v34, v35, v42);

    *(v33 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s friend request created", v33, 0xCu);
    sub_10000E8A8(v38);
  }

  (*(v39 + 8))(v11, v40);
  (*(a3 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onMessageUrlCreated))(v18);
  sub_10003D788();
  (*(v16 + 8))(v18, v15);
}

uint64_t sub_10003F424()
{
  v1 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel__state;
  v2 = sub_100002D08(&unk_10005DB48, &qword_100046F98);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel__isProcessingAction;
  v4 = sub_100002D08(&qword_10005DB40, &qword_100046F90);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_10003F584()
{
  sub_10003F424();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for FriendInviteCardViewModel(uint64_t a1)
{
  result = qword_10005E3F8;
  if (!qword_10005E3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003F630(uint64_t a1)
{
  sub_10003F754(319, &qword_10005E408, &type metadata for FriendInviteCardViewModel.State);
  if (v1 <= 0x3F)
  {
    sub_10003F754(319, &unk_10005E410, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10003F754(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_100041470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10003F7A0(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 8)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

__n128 sub_10003F7BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10003F7D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10003F818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10003F85C(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10003F890@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FriendInviteCardViewModel(0);
  result = sub_100041420();
  *a2 = result;
  return result;
}

double sub_10003F8D0@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100041450();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

void sub_10003F95C(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10003347C(v2, v3, v4);
  sub_100041460();
  sub_10003D358();
}

uint64_t sub_10003F9FC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100041450();

  *a2 = v4;
  return result;
}

uint64_t sub_10003FA7C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100041460();
}

uint64_t sub_10003FAF0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_10003FB3C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10003FB74(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10003FBD0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10003FBD0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003FC9C(v11, 0, 0, 1, a1, a2);
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
    sub_100012320(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000E8A8(v11);
  return v7;
}

unint64_t sub_10003FC9C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10003FDA8(a5, a6);
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
    result = sub_100041EE0();
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

id *sub_10003FDA8(uint64_t a1, unint64_t a2)
{
  v3 = sub_10003FDF4(a1, a2);
  sub_10003FF24(&off_1000557F0);
  return v3;
}

id *sub_10003FDF4(uint64_t a1, unint64_t a2)
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

  v6 = sub_100040010(v5, 0);
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

  result = sub_100041EE0();
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
        v10 = sub_100041B90();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100040010(v10, 0);
        result = sub_100041EA0();
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

uint64_t sub_10003FF24(uint64_t result)
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

  result = sub_100040084(result, v11, 1, v3);
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

id *sub_100040010(uint64_t a1, uint64_t a2)
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

  sub_100002D08(&qword_10005E5E8, &unk_100047660);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id *sub_100040084(id *result, int64_t a2, char a3, uint64_t a4)
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

  if (v9)
  {
    sub_100002D08(&qword_10005E5E8, &unk_100047660);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id *sub_100040178(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000401B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_100040198(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000402C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_1000401B8(id *result, int64_t a2, char a3, uint64_t a4)
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

  if (v9)
  {
    sub_100002D08(&qword_10005CF00, &unk_100046F40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_1000402C4(id *result, int64_t a2, char a3, unint64_t a4)
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

  sub_100002D08(&qword_10005E5F0, &qword_1000476C0);
  v10 = *(sub_100041100() - 8);
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
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(sub_100041100() - 8);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10004049C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000404F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004050C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100040584(void *a1, void *a2, int a3)
{
  v74 = a3;
  v72 = a1;
  v73 = a2;
  v3 = sub_100002D08(&qword_10005DB18, &qword_100046F68);
  __chkstk_darwin(v3 - 8);
  v70 = &v60 - v4;
  v5 = sub_100002D08(&qword_10005DB20, &qword_100046F70);
  __chkstk_darwin(v5 - 8);
  v66 = &v60 - v6;
  v7 = sub_100041E00();
  v8 = *(v7 - 8);
  v76 = v7;
  v77 = v8;
  __chkstk_darwin(v7);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002D08(&qword_10005DB28, &qword_100046F78);
  __chkstk_darwin(v10 - 8);
  v61 = &v60 - v11;
  v12 = sub_100041D80();
  v13 = *(v12 - 8);
  v62 = v12;
  v63 = v13;
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002D08(&qword_10005DB30, &qword_100046F80);
  v17 = *(v16 - 8);
  v67 = v16;
  v68 = v17;
  __chkstk_darwin(v16);
  v75 = &v60 - v18;
  v69 = sub_100002D08(&qword_10005DB38, &qword_100046F88);
  v71 = *(v69 - 8);
  __chkstk_darwin(v69);
  v64 = &v60 - v19;
  v20 = sub_100002D08(&qword_10005DB40, &qword_100046F90);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v60 - v22;
  v24 = sub_100002D08(&unk_10005DB48, &qword_100046F98);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v60 - v26;
  v28 = [objc_allocWithZone(MSConversation) init];
  type metadata accessor for FriendInviteCardViewModel(0);
  v29 = swift_allocObject();
  v30 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel__state;
  v78 = 0;
  v79 = 0;
  v80 = 9;
  sub_100041430();
  (*(v25 + 32))(v29 + v30, v27, v24);
  v31 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel__isProcessingAction;
  LOBYTE(v78) = 0;
  sub_100041430();
  (*(v21 + 32))(v29 + v31, v23, v20);
  v32 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_playerModel;
  *(v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_isViewRecordSent) = 0;
  *(v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_refreshObserver) = 0;
  *(v29 + v32) = 0;
  *(v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_conversation) = v28;
  v33 = (v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentProfile);
  *v33 = nullsub_1;
  v33[1] = 0;
  v34 = (v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentFriendsList);
  *v34 = nullsub_1;
  v34[1] = 0;
  v35 = (v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onAcceptInvite);
  *v35 = nullsub_1;
  v35[1] = 0;
  v36 = (v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert);
  *v36 = nullsub_1;
  v36[1] = 0;
  v37 = (v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onMessageUrlCreated);
  *v37 = nullsub_1;
  v37[1] = 0;
  v38 = (v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
  *v38 = nullsub_1;
  v38[1] = 0;
  v60 = v28;
  sub_10003D788();
  v39 = [objc_opt_self() defaultCenter];
  v40 = sub_100041AF0();
  sub_100041D90();

  sub_10000EA78(0, &qword_10005CA10, OS_dispatch_queue_ptr);
  v41 = sub_100041D50();
  v78 = v41;
  v42 = sub_100041D30();
  v43 = v61;
  (*(*(v42 - 8) + 56))(v61, 1, 1, v42);
  sub_100040FF0(&qword_10005DB58, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_100033668(&qword_10005DB60, &qword_10005CA10, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v44 = v43;
  v45 = v62;
  sub_100041490();
  sub_10000E9F0(v44, &qword_10005DB28, &qword_100046F78);
  (*(v63 + 8))(v15, v45);

  v46 = v65;
  sub_100041DF0();
  v47 = v66;
  (*(v77 + 56))(v66, 1, 1, v76);
  v48 = [objc_opt_self() mainRunLoop];
  v78 = v48;
  v49 = sub_100041DE0();
  v50 = v70;
  (*(*(v49 - 8) + 56))(v70, 1, 1, v49);
  sub_10000EA78(0, &qword_10005DB68, NSRunLoop_ptr);
  sub_100003214(&qword_10005DB70, &qword_10005DB30, &qword_100046F80, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  sub_100033668(&qword_10005DB78, &qword_10005DB68, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
  v51 = v64;
  v52 = v47;
  v53 = v67;
  v54 = v75;
  sub_100041480();
  sub_10000E9F0(v50, &qword_10005DB18, &qword_100046F68);
  sub_10000E9F0(v52, &qword_10005DB20, &qword_100046F70);
  (*(v77 + 8))(v46, v76);
  (*(v68 + 8))(v54, v53);

  swift_allocObject();
  swift_weakInit();
  sub_100003214(&qword_10005DB80, &qword_10005DB38, &qword_100046F88, &protocol conformance descriptor for Publishers.Delay<A, B>);
  v55 = v69;
  v56 = sub_1000414A0();

  (*(v71 + 8))(v51, v55);
  *(v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_refreshObserver) = v56;

  *(v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_isViewRecordSent) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  v58 = v72;
  v57 = v73;
  v78 = v72;
  v79 = v73;
  LOBYTE(v55) = v74;
  v80 = v74;

  sub_10003347C(v58, v57, v55);
  sub_100041460();
  sub_10003D358();
  return v29;
}

uint64_t sub_100040FF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100041038()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}