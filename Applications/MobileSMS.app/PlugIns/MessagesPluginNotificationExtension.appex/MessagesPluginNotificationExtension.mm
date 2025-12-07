void sub_100001BCC(id a1)
{
  v1 = objc_alloc_init(IMTimingCollection);
  [v1 startTimingForKey:@"plugin-notif-imagent-connection"];
  v2 = +[IMDaemonController sharedController];
  [v2 addListenerID:@"MessagesPluginNotificationExtension" capabilities:CKListenerPaginatedChatRegistryCapabilities()];

  v3 = +[IMDaemonController sharedController];
  [v3 blockUntilConnected];

  v4 = +[IMDaemonController sharedController];
  [v4 _setBlocksConnectionAtResume:1];

  [v1 stopTimingForKey:@"plugin-notif-imagent-connection"];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Initialized imagent connection from custom plugin notification %@", &v6, 0xCu);
    }
  }
}

uint64_t sub_1000023D0()
{
  v0 = sub_1000066B4();
  sub_100004614(v0, qword_100010850);
  sub_1000044EC(v0, qword_100010850);
  return sub_1000066A4();
}

id sub_100002450()
{
  result = [objc_allocWithZone(type metadata accessor for AskToNotificationManager()) init];
  qword_100010870 = result;
  return result;
}

uint64_t sub_1000024DC(void *a1, void *a2)
{
  v3 = v2;
  v50 = sub_100005324(&_swiftEmptyArrayStorage);
  v5 = sub_1000067B4();
  isUniquelyReferenced_nonNull_native = sub_1000066C4();

  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_25;
  }

  v7 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = v3;
  if (v7)
  {
    while (1)
    {
      sub_1000067D4();
      if (v7 < 1)
      {
        break;
      }

      v8 = 0;
      v48 = a2;
      v49 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v46 = v7;
      v47 = isUniquelyReferenced_nonNull_native;
      while (1)
      {
        if (v49)
        {
          v11 = sub_100006934();
        }

        else
        {
          v11 = *(isUniquelyReferenced_nonNull_native + 8 * v8 + 32);
        }

        v12 = v11;
        sub_1000067B4();
        objc_allocWithZone(sub_100006724());
        v13 = v12;
        v14 = sub_100006714();
        v15 = sub_100006794();
        v16 = &_swiftEmptyArrayStorage;
        if (v15)
        {
          v16 = v15;
        }

        v51 = v16;
        v17 = v14;
        sub_100006854();
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100006884();
        }

        sub_100006894();

        v18 = v17;
        v19 = a2;
        v20 = sub_1000067A4();
        v21 = v13;
        v22 = sub_1000066D4();
        v24 = v23;
        v3 = v20;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = sub_1000043DC(v22, v24);
        v27 = v50[2];
        v28 = (v25 & 1) == 0;
        v29 = v27 + v28;
        if (__OFADD__(v27, v28))
        {
          break;
        }

        a2 = v25;
        if (v50[3] >= v29)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10000508C();
          }
        }

        else
        {
          sub_100004AFC(v29, isUniquelyReferenced_nonNull_native);
          v30 = sub_1000043DC(v22, v24);
          if ((a2 & 1) != (v31 & 1))
          {
            goto LABEL_28;
          }

          v26 = v30;
        }

        if (a2)
        {
          v9 = v50[7];
          v10 = *(v9 + 8 * v26);
          *(v9 + 8 * v26) = v3;
        }

        else
        {
          v50[(v26 >> 6) + 8] |= 1 << v26;
          v32 = (v50[6] + 16 * v26);
          *v32 = v22;
          v32[1] = v24;
          *(v50[7] + 8 * v26) = v3;
          v33 = v50[2];
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (v34)
          {
            goto LABEL_24;
          }

          v50[2] = v35;

          v10 = v21;
        }

        ++v8;

        isUniquelyReferenced_nonNull_native = v47;
        a2 = v48;
        if (v46 == v8)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v7 = sub_100006954();
      v45 = v3;
      if (!v7)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    result = sub_1000069A4();
    __break(1u);
  }

  else
  {
LABEL_26:

    v36 = [a1 request];
    v37 = [v36 identifier];

    v38 = sub_100006814();
    v40 = v39;

    v41 = OBJC_IVAR___CKAskToNotificationManager_actionIdentifierToResponsePayloadMap;
    swift_beginAccess();
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v52 = *&v45[v41];
    *&v45[v41] = 0x8000000000000000;
    sub_100004DA0(v50, v38, v40, v42);

    *&v45[v41] = v52;
    return swift_endAccess();
  }

  return result;
}

void *sub_1000028C0(void *a1)
{
  v2 = sub_100006784();
  v58 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003BFC(&qword_100010780, &qword_100007440);
  __chkstk_darwin();
  v6 = &v51 - v5;
  v7 = sub_100006684();
  v59 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 request];
  v11 = [v10 content];

  v12 = [v11 userInfo];
  v13 = sub_1000067E4();

  v60 = 0xD000000000000018;
  v61 = 0x8000000100007730;
  sub_100006914();
  if (!*(v13 + 16) || (v14 = sub_100004454(v62), (v15 & 1) == 0))
  {
    sub_100004498(v62);
    goto LABEL_7;
  }

  sub_100004570(*(v13 + 56) + 32 * v14, v63);
  sub_100004498(v62);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_100010848 != -1)
    {
      swift_once();
    }

    v17 = sub_1000066B4();
    sub_1000044EC(v17, qword_100010850);

    v18 = sub_100006694();
    v19 = sub_1000068D4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v62[0] = v21;
      *v20 = 136315138;
      v22 = sub_1000067F4();
      v24 = v23;

      v25 = sub_100003E34(v22, v24, v62);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "User info didn't have URL. userInfo: %s", v20, 0xCu);
      sub_100004524(v21);
    }

    else
    {
    }

    return 0;
  }

  sub_100006674();

  v16 = v59;
  if ((*(v59 + 48))(v6, 1, v7) == 1)
  {
    sub_1000063B8(v6, &qword_100010780, &qword_100007440);
    goto LABEL_7;
  }

  (*(v16 + 32))(v9, v6, v7);
  sub_100006774();
  sub_1000067D4();
  sub_1000045CC(&qword_100010788, &protocol conformance descriptor for ATPayload);
  sub_1000045CC(&qword_100010790, &protocol conformance descriptor for ATPayload);
  sub_100006764();
  v53 = v2;
  v27 = v62[0];
  v28 = sub_1000067C4();
  if (v28)
  {

    if (qword_100010848 != -1)
    {
      swift_once();
    }

    v29 = sub_1000066B4();
    sub_1000044EC(v29, qword_100010850);
    v30 = sub_100006694();
    v31 = sub_1000068D4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Payload for notification not a request. Bailing.", v32, 2u);
    }

    (*(v58 + 8))(v4, v2);
    (*(v59 + 8))(v9, v7);
    return 0;
  }

  sub_1000024DC(a1, v27);
  v62[0] = &_swiftEmptyArrayStorage;
  v33 = sub_1000067B4();
  v34 = sub_1000066C4();

  v35 = v34;
  if (v34 >> 62)
  {
    v49 = sub_100006954();
    v35 = v34;
    v36 = v49;
    if (v49)
    {
      goto LABEL_23;
    }

LABEL_37:
    v48 = &_swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
    goto LABEL_37;
  }

LABEL_23:
  v37 = v35;
  v52 = v27;
  result = objc_opt_self();
  v57 = result;
  if (v36 < 1)
  {
    __break(1u);
    return result;
  }

  v38 = 0;
  v39 = v37;
  v54 = v37 & 0xC000000000000001;
  v55 = v36;
  v56 = v37;
  do
  {
    if (v54)
    {
      v40 = sub_100006934();
    }

    else
    {
      v40 = *(v39 + 8 * v38 + 32);
    }

    v41 = v40;
    sub_1000066F4();
    v42 = sub_1000066E4();
    if (v42 == sub_1000066E4())
    {
      v43 = 3;
    }

    else
    {
      v43 = 1;
    }

    sub_1000066D4();
    sub_100006704();
    v44 = sub_100006804();

    v45 = sub_100006804();

    v46 = [v57 actionWithIdentifier:v44 title:v45 options:v43];

    v47 = v46;
    sub_100006854();
    if (*((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100006884();
    }

    ++v38;
    sub_100006894();

    v39 = v56;
  }

  while (v55 != v38);
  v48 = v62[0];
  v27 = v52;
LABEL_38:

  if (v48 >> 62)
  {
    v50 = sub_100006954();
  }

  else
  {
    v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  (*(v58 + 8))(v4, v53);
  (*(v59 + 8))(v9, v7);
  result = v48;
  if (!v50)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1000033A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1000033C8, 0, 0);
}

uint64_t sub_1000033C8()
{
  sub_100006754();
  swift_allocObject();
  v0[6] = sub_100006744();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100003484;
  v3 = v0[2];
  v2 = v0[3];

  return ATDaemonConnectionManager.sendResponsePayloadViaIDS(_:to:)(v3, v2);
}

uint64_t sub_100003484()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10000360C;
  }

  else
  {
    v2 = sub_100003598;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003598()
{
  (*(v0 + 32))(1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000360C()
{
  if (qword_100010848 != -1)
  {
    swift_once();
  }

  v1 = sub_1000066B4();
  sub_1000044EC(v1, qword_100010850);
  swift_errorRetain();
  v2 = sub_100006694();
  v3 = sub_1000068E4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error sending response payload: %@", v4, 0xCu);
    sub_1000063B8(v5, &qword_100010798, &qword_100007448);
  }

  v7 = *(v0 + 32);

  v7(0);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000037C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100003BFC(&qword_1000107B8, &qword_100007468);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_100006348(a3, v24 - v9);
  v11 = sub_1000068C4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000063B8(v10, &qword_1000107B8, &qword_100007468);
  }

  else
  {
    sub_1000068B4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1000068A4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_100006824() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1000063B8(a3, &qword_1000107B8, &qword_100007468);

      return v22;
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

  sub_1000063B8(a3, &qword_1000107B8, &qword_100007468);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

id sub_100003B94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AskToNotificationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003BFC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003C44(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100003D3C;

  return v6(a1);
}

uint64_t sub_100003D3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100003E34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003F00(v11, 0, 0, 1, a1, a2);
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
    sub_100004570(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004524(v11);
  return v7;
}

unint64_t sub_100003F00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000400C(a5, a6);
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
    result = sub_100006944();
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

char *sub_10000400C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100004058(a1, a2);
  sub_100004188(&off_10000C620);
  return v3;
}

char *sub_100004058(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004274(v5, 0);
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

  result = sub_100006944();
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
        v10 = sub_100006844();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004274(v10, 0);
        result = sub_100006924();
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

uint64_t sub_100004188(uint64_t result)
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

  result = sub_1000042E8(result, v11, 1, v3);
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

void *sub_100004274(uint64_t a1, uint64_t a2)
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

  sub_100003BFC(&qword_1000107A0, &qword_100007450);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000042E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003BFC(&qword_1000107A0, &qword_100007450);
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

unint64_t sub_1000043DC(uint64_t a1, uint64_t a2)
{
  sub_1000069B4();
  sub_100006834();
  v4 = sub_1000069C4();

  return sub_100004678(a1, a2, v4);
}

unint64_t sub_100004454(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000068F4(*(v2 + 40));

  return sub_100004730(a1, v4);
}

uint64_t sub_1000044EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004524(void *a1)
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

uint64_t sub_100004570(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000045CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000067D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_100004614(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100004678(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100006994())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100004730(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000047F8(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100006904();
      sub_100004498(v8);
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

uint64_t sub_100004854(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003BFC(&qword_1000107B0, &qword_100007460);
  v34 = v4;
  result = sub_100006974();
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

      sub_1000069B4();
      sub_100006834();
      result = sub_1000069C4();
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

uint64_t sub_100004AFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003BFC(&qword_1000107A8, &qword_100007458);
  v35 = v4;
  result = sub_100006974();
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

      sub_1000069B4();
      sub_100006834();
      result = sub_1000069C4();
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

uint64_t sub_100004DA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000043DC(a2, a3);
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
      sub_100004854(v16, a4 & 1);
      v11 = sub_1000043DC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1000069A4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100004F1C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_100004F1C()
{
  v1 = v0;
  sub_100003BFC(&qword_1000107B0, &qword_100007460);
  v2 = *v0;
  v3 = sub_100006964();
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

id sub_10000508C()
{
  v1 = v0;
  sub_100003BFC(&qword_1000107A8, &qword_100007458);
  v2 = *v0;
  v3 = sub_100006964();
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

char *sub_1000051F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100005218(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100005218(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003BFC(&qword_1000107C8, &qword_100007498);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100005324(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BFC(&qword_1000107A8, &qword_100007458);
    v3 = sub_100006984();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000043DC(v5, v6);
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

unint64_t sub_100005428(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BFC(&qword_1000107B0, &qword_100007460);
    v3 = sub_100006984();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000043DC(v5, v6);
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

void sub_10000552C(void *a1, uint64_t a2, void (**a3)(void, void))
{
  sub_100003BFC(&qword_1000107B8, &qword_100007468);
  __chkstk_darwin();
  v7 = &v101 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  _Block_copy(a3);
  v9 = [a1 notification];
  v10 = [v9 request];

  v11 = [v10 content];
  v12 = [v11 userInfo];

  v13 = sub_1000067E4();
  v108 = 0xD00000000000001DLL;
  v109 = 0x8000000100007790;
  sub_100006914();
  if (!*(v13 + 16) || (v14 = sub_100004454(v110), (v15 & 1) == 0))
  {

    sub_100004498(v110);
    goto LABEL_21;
  }

  sub_100004570(*(v13 + 56) + 32 * v14, v111);
  sub_100004498(v110);

  if (!swift_dynamicCast())
  {
LABEL_21:
    if (qword_100010848 != -1)
    {
      swift_once();
    }

    v42 = sub_1000066B4();
    sub_1000044EC(v42, qword_100010850);
    v43 = a1;
    v44 = sub_100006694();
    v45 = sub_1000068E4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v110[0] = v47;
      *v46 = 136315138;
      v48 = [v43 notification];
      v49 = [v48 request];

      v50 = [v49 identifier];
      v51 = sub_100006814();
      v53 = v52;

      v54 = sub_100003E34(v51, v53, v110);

      *(v46 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v44, v45, "Missing chat identifier for notification identifier: %s", v46, 0xCu);
      sub_100004524(v47);
    }

    a3[2](a3, 0);
    goto LABEL_26;
  }

  v106 = a3;
  v107 = v8;
  v17 = v108;
  v16 = v109;
  if (qword_100010848 != -1)
  {
    swift_once();
  }

  v18 = sub_1000066B4();
  v19 = sub_1000044EC(v18, qword_100010850);

  v105 = v19;
  v20 = sub_100006694();
  v21 = sub_1000068D4();

  v22 = os_log_type_enabled(v20, v21);
  v104 = a2;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v110[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_100003E34(v17, v16, v110);
    _os_log_impl(&_mh_execute_header, v20, v21, "Creating chat controller for identifier: %s", v23, 0xCu);
    sub_100004524(v24);
  }

  v25 = [objc_opt_self() sharedRegistry];
  v26 = sub_100006804();
  v27 = [v25 existingChatWithChatIdentifier:v26];

  if (!v27)
  {

    v55 = sub_100006694();
    v56 = sub_1000068E4();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v110[0] = v58;
      *v57 = 136315138;
      v59 = sub_100003E34(v17, v16, v110);

      *(v57 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v55, v56, "Couldn't find chat for identifier %s", v57, 0xCu);
      sub_100004524(v58);
    }

    else
    {
    }

    v106[2](v106, 0);
    goto LABEL_26;
  }

  v28 = [v27 participants];
  sub_1000065C0(0, &qword_1000107C0, IMHandle_ptr);
  v29 = sub_100006874();

  if (v29 >> 62)
  {
    v30 = sub_100006954();
    if (v30)
    {
      goto LABEL_11;
    }

LABEL_32:

    v32 = &_swiftEmptyArrayStorage;
    goto LABEL_33;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_32;
  }

LABEL_11:
  v101 = v27;
  v102 = v7;
  v103 = a1;
  v110[0] = &_swiftEmptyArrayStorage;
  sub_1000051F8(0, v30 & ~(v30 >> 63), 0);
  if (v30 < 0)
  {
    __break(1u);
    return;
  }

  v31 = 0;
  v32 = v110[0];
  do
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v33 = sub_100006934();
    }

    else
    {
      v33 = *(v29 + 8 * v31 + 32);
    }

    v34 = v33;
    v35 = [v33 ID];
    v36 = sub_100006814();
    v38 = v37;

    v110[0] = v32;
    v40 = v32[2];
    v39 = v32[3];
    if (v40 >= v39 >> 1)
    {
      sub_1000051F8((v39 > 1), v40 + 1, 1);
      v32 = v110[0];
    }

    ++v31;
    v32[2] = v40 + 1;
    v41 = &v32[2 * v40];
    *(v41 + 4) = v36;
    *(v41 + 5) = v38;
  }

  while (v30 != v31);

  v7 = v102;
  a1 = v103;
  v27 = v101;
LABEL_33:
  if (v32[2])
  {
    v60 = [a1 notification];
    v61 = [v60 request];

    v62 = [v61 identifier];
    v63 = sub_100006814();
    v65 = v64;

    v66 = OBJC_IVAR___CKAskToNotificationManager_actionIdentifierToResponsePayloadMap;
    v67 = v104;
    swift_beginAccess();
    v68 = *(v67 + v66);
    if (*(v68 + 16))
    {

      v69 = sub_1000043DC(v63, v65);
      v71 = v70;

      if (v71)
      {
        v72 = *(*(v68 + 56) + 8 * v69);

        v73 = [a1 actionIdentifier];
        v74 = sub_100006814();
        v76 = v75;

        if (*(v72 + 16))
        {
          v77 = sub_1000043DC(v74, v76);
          v79 = v78;

          if (v79)
          {
            v80 = *(*(v72 + 56) + 8 * v77);

            v81 = sub_1000068C4();
            (*(*(v81 - 8) + 56))(v7, 1, 1, v81);
            v82 = swift_allocObject();
            v82[2] = 0;
            v82[3] = 0;
            v82[4] = v80;
            v82[5] = v32;
            v83 = v107;
            v82[6] = sub_100006144;
            v82[7] = v83;

            sub_1000037C0(0, 0, v7, &unk_100007478, v82);

LABEL_26:

            return;
          }
        }

        else
        {
        }
      }
    }

    v90 = a1;
    v91 = sub_100006694();
    v92 = sub_1000068E4();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v111[0] = v94;
      *v93 = 136315138;
      v95 = [v90 actionIdentifier];
      v96 = sub_100006814();
      v97 = v27;
      v99 = v98;

      v100 = sub_100003E34(v96, v99, v111);
      v27 = v97;

      *(v93 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v91, v92, "responsePayloadMap didn't have response payload for identifier %s", v93, 0xCu);
      sub_100004524(v94);
    }

    v106[2](v106, 0);
  }

  else
  {

    v84 = v27;
    v85 = sub_100006694();
    v86 = sub_1000068E4();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v87 = 138412290;
      *(v87 + 4) = v84;
      *v88 = v27;
      v89 = v84;
      _os_log_impl(&_mh_execute_header, v85, v86, "Recipient addresses was empty for chat %@", v87, 0xCu);
      sub_1000063B8(v88, &qword_100010798, &qword_100007448);
    }

    v106[2](v106, 0);
  }
}

uint64_t sub_10000610C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006158()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000061A8()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100006254;

  return sub_1000033A4(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_100006254()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100006348(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BFC(&qword_1000107B8, &qword_100007468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000063B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003BFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006418()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006450(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000665C;

  return sub_100003C44(a1, v4);
}

uint64_t sub_100006508(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006254;

  return sub_100003C44(a1, v4);
}

uint64_t sub_1000065C0(uint64_t a1, unint64_t *a2, void *a3)
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

void type metadata accessor for UNNotificationContentExtensionResponseOption()
{
  if (!qword_1000107D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000107D8);
    }
  }
}