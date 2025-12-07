uint64_t sub_10001D770(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RequestMessageViewController();
  objc_msgSendSuper2(&v5, "willResignActiveWithConversation:", a1);
  v1[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive] = 0;
  v3 = *&v1[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_messageDetailsLoader];
  if (*(v3 + 128))
  {
    sub_100026B04();

    sub_10000274C(&qword_100039848, &qword_100028370);
    sub_1000272C4();
  }

  *(v3 + 128) = 0;

  return sub_1000192F4();
}

void sub_10001D8A4(uint64_t a1)
{
  v3 = sub_100026834();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v55 - v8;
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = sub_10000274C(&qword_100039830, &qword_100028358);
  __chkstk_darwin(v12 - 8);
  v14 = &v55 - v13;
  v15 = sub_100026B04();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v55 - v20;
  v22 = type metadata accessor for RequestMessageViewController();
  v63.receiver = v1;
  v63.super_class = v22;
  objc_msgSendSuper2(&v63, "didTransitionToPresentationStyle:", a1);
  v23 = [v1 activeConversation];
  if (v23)
  {
    v24 = v23;
    sub_10001A40C(v23, v14);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_100006B20(v14, &qword_100039830, &qword_100028358);
      sub_100026894();
      v25 = v1;
      v26 = sub_100026824();
      v27 = sub_100027304();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = v24;
        v29 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v29 = 136315394;
        v30 = *&v25[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
        v31 = *&v25[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

        v32 = sub_100005F78(v30, v31, &v62);

        *(v29 + 4) = v32;
        *(v29 + 12) = 2080;
        *(v29 + 14) = sub_100005F78(0xD000000000000012, 0x8000000100029EA0, &v62);
        _os_log_impl(&_mh_execute_header, v26, v27, "%s %s - failed to load from cache", v29, 0x16u);
        swift_arrayDestroy();

        v24 = v28;
      }

      (*(v60 + 8))(v9, v61);
      sub_100019110();
    }

    else
    {
      v59 = v24;
      (*(v16 + 32))(v21, v14, v15);
      sub_100026894();
      (*(v16 + 16))(v19, v21, v15);
      v42 = v1;
      v43 = sub_100026824();
      v44 = sub_100027304();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v62 = v57;
        *v45 = 136315650;
        v56 = v44;
        v58 = v42;
        v46 = *&v42[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
        v47 = *&v42[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8];

        v48 = sub_100005F78(v46, v47, &v62);

        *(v45 + 4) = v48;
        v55 = v43;
        *(v45 + 12) = 2080;
        *(v45 + 14) = sub_100005F78(0xD000000000000012, 0x8000000100029EA0, &v62);
        *(v45 + 22) = 2080;
        v49 = sub_100026AF4();
        v51 = v50;
        v52 = *(v16 + 8);
        v52(v19, v15);
        v53 = sub_100005F78(v49, v51, &v62);

        *(v45 + 24) = v53;
        v54 = v55;
        _os_log_impl(&_mh_execute_header, v55, v56, "%s %s - %s loaded from cache", v45, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v52 = *(v16 + 8);
        v52(v19, v15);
      }

      (*(v60 + 8))(v11, v61);
      sub_10001C8D4(v21);

      v52(v21, v15);
    }
  }

  else
  {
    sub_100026894();
    v33 = v1;
    v34 = sub_100026824();
    v35 = sub_100027314();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v62 = v37;
      *v36 = 136315138;
      v38 = &v33[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
      v39 = *&v33[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
      v40 = *(v38 + 1);

      v41 = sub_100005F78(v39, v40, &v62);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s expected an active converstation, confused!", v36, 0xCu);
      sub_100006044(v37);
    }

    (*(v60 + 8))(v6, v61);
  }
}

id sub_10001E004(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_1000267E4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v4[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
  sub_1000267D4();
  v12 = sub_1000267C4();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  *v11 = v12;
  v11[1] = v14;
  v4[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive] = 0;
  *&v4[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubble] = 0;
  v15 = &v4[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_eventNotifier];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  *&v4[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubbleDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_initialLoadError] = 0;
  v16 = OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_messageDetailsLoader;
  if (qword_100039070 != -1)
  {
    swift_once();
  }

  v18 = *(qword_10003A710 + 16);
  v17 = *(qword_10003A710 + 24);
  v29 = sub_100026BB4();
  v30 = &protocol witness table for MessageDetailsCache;
  *&v28 = v18;
  v26 = sub_100026BD4();
  v27 = &protocol witness table for ResolvedFamilyCache;
  *&v25 = v17;
  type metadata accessor for MessageDetailsLoader();
  v19 = swift_allocObject();
  v19[3] = 0;
  swift_unknownObjectWeakInit();
  v19[5] = 0;
  swift_unknownObjectWeakInit();
  v19[16] = 0;
  sub_10001518C(&v28, (v19 + 6));
  sub_10001518C(&v25, (v19 + 11));
  *&v4[v16] = v19;

  if (a2)
  {
    v20 = sub_100027124();
  }

  else
  {
    v20 = 0;
  }

  v21 = type metadata accessor for RequestMessageViewController();
  v24.receiver = v4;
  v24.super_class = v21;
  v22 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", v20, a3);

  return v22;
}

id sub_10001E2FC(void *a1)
{
  v2 = v1;
  v4 = sub_1000267E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
  sub_1000267D4();
  v9 = sub_1000267C4();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  *v8 = v9;
  v8[1] = v11;
  v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive] = 0;
  *&v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubble] = 0;
  v12 = &v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_eventNotifier];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubbleDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_initialLoadError] = 0;
  v13 = OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_messageDetailsLoader;
  if (qword_100039070 != -1)
  {
    swift_once();
  }

  v15 = *(qword_10003A710 + 16);
  v14 = *(qword_10003A710 + 24);
  v25 = sub_100026BB4();
  v26 = &protocol witness table for MessageDetailsCache;
  *&v24 = v15;
  v22 = sub_100026BD4();
  v23 = &protocol witness table for ResolvedFamilyCache;
  *&v21 = v14;
  type metadata accessor for MessageDetailsLoader();
  v16 = swift_allocObject();
  v16[3] = 0;
  swift_unknownObjectWeakInit();
  v16[5] = 0;
  swift_unknownObjectWeakInit();
  v16[16] = 0;
  sub_10001518C(&v24, (v16 + 6));
  sub_10001518C(&v21, (v16 + 11));
  *&v2[v13] = v16;
  v17 = type metadata accessor for RequestMessageViewController();
  v20.receiver = v2;
  v20.super_class = v17;

  v18 = objc_msgSendSuper2(&v20, "initWithCoder:", a1);

  if (v18)
  {
  }

  return v18;
}

id sub_10001E588(char a1)
{
  v2 = v1;
  v4 = sub_1000267E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
  sub_1000267D4();
  v9 = sub_1000267C4();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  *v8 = v9;
  v8[1] = v11;
  v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive] = 0;
  *&v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubble] = 0;
  v12 = &v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_eventNotifier];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_bubbleDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_initialLoadError] = 0;
  v13 = OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_messageDetailsLoader;
  if (qword_100039070 != -1)
  {
    swift_once();
  }

  v15 = *(qword_10003A710 + 16);
  v14 = *(qword_10003A710 + 24);
  v24 = sub_100026BB4();
  v25 = &protocol witness table for MessageDetailsCache;
  *&v23 = v15;
  v21 = sub_100026BD4();
  v22 = &protocol witness table for ResolvedFamilyCache;
  *&v20 = v14;
  type metadata accessor for MessageDetailsLoader();
  v16 = swift_allocObject();
  v16[3] = 0;
  swift_unknownObjectWeakInit();
  v16[5] = 0;
  swift_unknownObjectWeakInit();
  v16[16] = 0;
  sub_10001518C(&v23, (v16 + 6));
  sub_10001518C(&v20, (v16 + 11));
  *&v2[v13] = v16;
  v17 = type metadata accessor for RequestMessageViewController();
  v19.receiver = v2;
  v19.super_class = v17;

  return objc_msgSendSuper2(&v19, "initWithShouldBeSheetPresentationControllerDelegate:", a1 & 1);
}

uint64_t sub_10001E81C()
{
  v1[2] = v0;
  v2 = sub_100026834();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_100027274();
  v1[7] = sub_100027264();
  v4 = sub_100027244();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(sub_10001E91C, v4, v3);
}

uint64_t sub_10001E91C()
{
  v31 = v0;
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_isBubbleActive) == 1)
  {
    v2 = [*(v0 + 16) activeConversation];
    *(v0 + 80) = v2;
    if (v2)
    {
      v3 = v2;
      v4 = swift_task_alloc();
      *(v0 + 88) = v4;
      *v4 = v0;
      v4[1] = sub_10001EC44;

      return sub_100019418(v3);
    }

    v21 = *(v0 + 16);

    sub_100026894();
    v22 = v21;
    v7 = sub_100026824();
    v8 = sub_100027314();

    v23 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 48);
    v12 = *(v0 + 24);
    v11 = *(v0 + 32);
    if (v23)
    {
      v24 = *(v0 + 16);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *v14 = 136315138;
      v25 = v24 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID;
      v26 = *(v24 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID);
      v27 = *(v25 + 8);

      v28 = sub_100005F78(v26, v27, &v30);

      *(v14 + 4) = v28;
      v20 = "%s conversation is nil";
      goto LABEL_10;
    }
  }

  else
  {

    sub_100026894();
    v6 = v1;
    v7 = sub_100026824();
    v8 = sub_100027304();

    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 32);
    v10 = *(v0 + 40);
    v12 = *(v0 + 24);
    if (v9)
    {
      v13 = *(v0 + 16);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *v14 = 136315138;
      v16 = v13 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID;
      v17 = *(v13 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID);
      v18 = *(v16 + 8);

      v19 = sub_100005F78(v17, v18, &v30);

      *(v14 + 4) = v19;
      v20 = "%s has been deactivated prior to notify!";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, v8, v20, v14, 0xCu);
      sub_100006044(v15);
    }
  }

  (*(v11 + 8))(v10, v12);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10001EC44()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10001ED64, v3, v2);
}

uint64_t sub_10001ED64()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001EDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_100026834();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_100027274();
  v4[6] = sub_100027264();
  v7 = sub_100027244();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_10001EED0, v7, v6);
}

uint64_t sub_10001EED0(uint64_t a1)
{
  v20 = v1;
  v2 = v1[2];
  sub_100026894();
  v3 = v2;
  v4 = sub_100026824();
  v5 = sub_100027304();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = v10 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID;
    v14 = *(v10 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID);
    v15 = *(v13 + 8);

    v16 = sub_100005F78(v14, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s responding to event notify)", v11, 0xCu);
    sub_100006044(v12);
  }

  (*(v8 + 8))(v7, v9);
  v17 = swift_task_alloc();
  v1[9] = v17;
  *v17 = v1;
  v17[1] = sub_10001F098;

  return sub_10001E81C();
}

uint64_t sub_10001F098()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10001F1B8, v3, v2);
}

uint64_t sub_10001F1B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001F220()
{
  v1 = sub_10000274C(&qword_1000391C8, &qword_100028010);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  sub_100027284();
  v4 = sub_1000272A4();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  sub_100027274();
  v5 = v0;
  v6 = sub_100027264();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  sub_100003824(0, 0, v3, &unk_100028888, v7);
}

uint64_t sub_10001F34C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F38C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100006E48;

  return sub_10001EDDC(a1, v4, v5, v6);
}

uint64_t sub_10001F440(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100026834();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_100026734();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v2[11] = *(v5 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_10000274C(&qword_1000391C8, &qword_100028010);
  v2[14] = swift_task_alloc();
  v2[15] = sub_100027274();
  v2[16] = sub_100027264();
  v7 = sub_100027244();
  v2[17] = v7;
  v2[18] = v6;

  return _swift_task_switch(sub_10001F5E0, v7, v6);
}

uint64_t sub_10001F5E0()
{
  v44 = v0;
  if (sub_100026914())
  {
    v1 = v0[14];
    v2 = v0[13];
    v3 = v0[10];
    v4 = v0[9];
    v5 = v0[4];
    v6 = v0[5];
    sub_100027284();
    v7 = sub_1000272A4();
    (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
    (*(v3 + 16))(v2, v5, v4);
    v8 = v6;
    v9 = sub_100027264();
    v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v11 = swift_allocObject();
    *(v11 + 2) = v9;
    *(v11 + 3) = &protocol witness table for MainActor;
    *(v11 + 4) = v8;
    (*(v3 + 32))(&v11[v10], v2, v4);
    v12 = sub_100003B78(0, 0, v1, &unk_1000288E0, v11);
    v0[19] = v12;
    v13 = swift_task_alloc();
    v0[20] = v13;
    v14 = sub_10000274C(&qword_100039308, &qword_100028080);
    *v13 = v0;
    v13[1] = sub_10001FA58;

    return Task<>.value.getter(v0 + 2, v12, v14);
  }

  else
  {
    v15 = v0[12];
    v16 = v0[9];
    v17 = v0[10];
    v18 = v0[4];
    v19 = v0[5];

    sub_100026894();
    (*(v17 + 16))(v15, v18, v16);
    v20 = v19;
    v21 = sub_100026824();
    v22 = sub_100027314();

    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[12];
    v26 = v0[9];
    v25 = v0[10];
    v28 = v0[7];
    v27 = v0[8];
    v29 = v0[6];
    if (v23)
    {
      v42 = v0[8];
      v30 = v0[5];
      v41 = v0[6];
      v31 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v31 = 136315394;
      v33 = *(v30 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID);
      v32 = *(v30 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8);

      v34 = sub_100005F78(v33, v32, &v43);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      sub_100020ED4(&qword_100039338, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v35 = sub_100027464();
      v37 = v36;
      (*(v25 + 8))(v24, v26);
      v38 = sub_100005F78(v35, v37, &v43);

      *(v31 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s - %s not in trusted list", v31, 0x16u);
      swift_arrayDestroy();

      (*(v28 + 8))(v42, v41);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
      (*(v28 + 8))(v27, v29);
    }

    v39 = v0[1];

    return v39(0, 0xF000000000000000);
  }
}

uint64_t sub_10001FA58()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_10001FB78, v3, v2);
}

uint64_t sub_10001FB78()
{

  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_10001FC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_100026734();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_100026834();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  sub_100027274();
  v5[11] = sub_100027264();
  v9 = sub_100027244();

  return _swift_task_switch(sub_10001FD7C, v9, v8);
}

uint64_t sub_10001FD7C()
{
  v33 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];

  sub_100026894();
  (*(v2 + 16))(v1, v4, v3);
  v6 = v5;
  v7 = sub_100026824();
  v8 = sub_100027304();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[7];
  v13 = v0[8];
  v15 = v0[5];
  v14 = v0[6];
  if (v9)
  {
    v31 = v0[10];
    v16 = v0[3];
    v30 = v0[8];
    v17 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v17 = 136315394;
    v19 = *(v16 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID);
    v18 = *(v16 + OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID + 8);

    v20 = sub_100005F78(v19, v18, v32);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v21 = sub_1000266D4();
    v23 = v22;
    (*(v14 + 8))(v12, v15);
    v24 = sub_100005F78(v21, v23, v32);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s - Fetching %s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v31, v30);
  }

  else
  {

    (*(v14 + 8))(v12, v15);
    (*(v11 + 8))(v10, v13);
  }

  v25 = sub_100026744();
  v26 = v0[2];
  *v26 = v25;
  v26[1] = v27;

  v28 = v0[1];

  return v28();
}

void sub_10002000C(void *a1)
{
  v3 = sub_100026834();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v1 view];
    if (v9)
    {
      v48 = v9;
      v10 = [v1 childViewControllers];
      sub_100019050(0, &qword_100039D50, UIViewController_ptr);
      v11 = sub_100027234();

      sub_100020C40(v11);

      [v1 addChildViewController:a1];
      v12 = [v1 view];
      if (v12)
      {
        v13 = v12;
        v14 = objc_opt_self();
        v15 = [v14 clearColor];
        [v13 setBackgroundColor:v15];

        v16 = [v14 clearColor];
        [v8 setBackgroundColor:v16];

        v17 = [v1 view];
        if (v17)
        {
          v18 = v17;
          [v17 insertSubview:v8 atIndex:0];

          [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
          v19 = objc_opt_self();
          sub_10000274C(&qword_100039D58, &qword_100028898);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_100028810;
          v21 = [v8 leadingAnchor];
          v22 = [v48 safeAreaLayoutGuide];
          v23 = [v22 leadingAnchor];

          v24 = [v21 constraintEqualToAnchor:v23];
          *(v20 + 32) = v24;
          v25 = [v8 trailingAnchor];
          v26 = [v48 safeAreaLayoutGuide];
          v27 = [v26 trailingAnchor];

          v28 = [v25 constraintEqualToAnchor:v27];
          *(v20 + 40) = v28;
          v29 = [v8 topAnchor];
          v30 = [v48 safeAreaLayoutGuide];
          v31 = [v30 topAnchor];

          v32 = [v29 constraintEqualToAnchor:v31];
          *(v20 + 48) = v32;
          v33 = [v8 bottomAnchor];
          v34 = [v48 safeAreaLayoutGuide];
          v35 = [v34 bottomAnchor];

          v36 = [v33 constraintEqualToAnchor:v35];
          *(v20 + 56) = v36;
          sub_100019050(0, &qword_100039D60, NSLayoutConstraint_ptr);
          isa = sub_100027224().super.isa;

          [v19 activateConstraints:isa];

          [a1 didMoveToParentViewController:v1];
          [v8 setMinimumContentSizeCategory:UIContentSizeCategorySmall];
          [v8 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
          [v1 requestResize];

          v38 = v48;

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  sub_100026894();
  v39 = v1;
  v40 = sub_100026824();
  v41 = sub_100027314();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v49 = v43;
    *v42 = 136315138;
    v44 = &v39[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
    v45 = *&v39[OBJC_IVAR____TtC24PeopleMessagesScreenTime28RequestMessageViewController_uniqueID];
    v46 = *(v44 + 1);

    v47 = sub_100005F78(v45, v46, &v49);

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s missing views", v42, 0xCu);
    sub_100006044(v43);
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t sub_100020654(uint64_t a1)
{
  v2 = sub_10000274C(&qword_100039D68, &qword_1000288A0);
  __chkstk_darwin(v2 - 8);
  v50 = &v43 - v3;
  v4 = sub_10000274C(&qword_100039328, &qword_1000280A8);
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v45 = &v43 - v5;
  v6 = sub_1000267B4();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = __chkstk_darwin(v6);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v47 = &v43 - v10;
  __chkstk_darwin(v9);
  v46 = &v43 - v11;
  v12 = sub_1000269B4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = sub_10000274C(&qword_100039830, &qword_100028358);
  __chkstk_darwin(v19 - 8);
  v21 = &v43 - v20;
  v22 = sub_100026B04();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v26;
  sub_1000061E4(a1, v21, &qword_100039830, &qword_100028358);
  if ((*(v23 + 48))(v21, 1, v27) == 1)
  {
    sub_100006B20(v21, &qword_100039830, &qword_100028358);
LABEL_5:
    v30 = 1;
    return v30 & 1;
  }

  (*(v23 + 32))(v25, v21, v27);
  sub_100026A94();
  (*(v13 + 104))(v16, enum case for MessageDetails.EventStatus.purged(_:), v12);
  sub_100020ED4(&qword_100039740, &type metadata accessor for MessageDetails.EventStatus, &protocol conformance descriptor for MessageDetails.EventStatus);
  v28 = sub_100027114();
  v29 = *(v13 + 8);
  v29(v16, v12);
  v29(v18, v12);
  if (v28)
  {
    (*(v23 + 8))(v25, v27);
    goto LABEL_5;
  }

  v31 = v27;
  v32 = v46;
  sub_1000267A4();
  v33 = v47;
  sub_100026A44();
  v34 = v50;
  sub_100026A64();
  v36 = v48;
  v35 = v49;
  if ((*(v48 + 48))(v34, 1, v49) == 1)
  {
    sub_100006B20(v34, &qword_100039D68, &qword_1000288A0);
    v38 = v51;
    v37 = v52;
  }

  else
  {
    v39 = v45;
    (*(v36 + 32))(v45, v34, v35);
    v40 = v44;
    sub_100026794();
    (*(v36 + 8))(v39, v35);
    v38 = v51;
    v37 = v52;
    (*(v51 + 8))(v33, v52);
    (*(v38 + 32))(v33, v40, v37);
  }

  v30 = sub_100026784();
  v41 = *(v38 + 8);
  v41(v33, v37);
  v41(v32, v37);
  (*(v23 + 8))(v25, v31);
  return v30 & 1;
}

void sub_100020C40(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100027434())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_1000273C4();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v4 willMoveToParentViewController:0];
      v7 = [v5 view];
      [v7 removeFromSuperview];

      [v5 removeFromParentViewController];
      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_100020D5C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100020DA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100006E48;

  return sub_10001D124(a1, v4, v5, v7, v6);
}

uint64_t sub_100020E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020ED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100020F1C()
{
  v1 = sub_100026734();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100020FE8(uint64_t a1)
{
  v4 = *(sub_100026734() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003730;

  return sub_10001FC28(a1, v6, v7, v8, v1 + v5);
}

void sub_1000210F0()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_100039D78 = v1 == 5;
}

uint64_t sub_100021154()
{
  result = sub_100026E54();
  qword_10003A750 = result;
  return result;
}

uint64_t sub_100021174()
{
  if (qword_100039088 != -1)
  {
    result = swift_once();
  }

  v0 = 28.0;
  if (byte_100039D78)
  {
    v0 = 22.0;
  }

  qword_10003A758 = *&v0;
  return result;
}

uint64_t sub_100021218(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_100026F64();
  *a3 = result;
  return result;
}

uint64_t sub_100021260()
{
  qword_10003A778 = sub_1000270C4();
  result = sub_1000270D4();
  qword_10003A780 = result;
  return result;
}

uint64_t sub_100021294()
{
  if (qword_100039088 != -1)
  {
    result = swift_once();
  }

  v0 = 60.0;
  if (byte_100039D78)
  {
    v0 = 48.0;
  }

  qword_10003A788 = *&v0;
  return result;
}

uint64_t sub_100021304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v65 = a7;
  v66 = a8;
  v62 = a6;
  v63 = a5;
  v64 = a4;
  v56 = sub_100027074();
  v57 = v13;
  LOBYTE(v55) = 1;
  v54 = 0;
  sub_100026C64();
  *&v112[55] = v117;
  *&v112[71] = v118;
  *&v112[87] = v119;
  *&v112[103] = v120;
  *&v112[7] = v114;
  *&v112[23] = v115;
  v113 = 1;
  *&v112[39] = v116;
  *&v89 = a1;
  *(&v89 + 1) = a2;
  sub_100014A80();

  v14 = sub_100026EF4();
  v67 = v15;
  v68 = v14;
  v17 = v16;
  v69 = v18;
  KeyPath = swift_getKeyPath();
  if (qword_100039090 != -1)
  {
    swift_once();
  }

  v19 = qword_10003A750;
  v74 = swift_getKeyPath();
  v72 = v17 & 1;
  LOBYTE(v89) = v17 & 1;
  LOBYTE(v78) = 0;
  v73 = swift_getKeyPath();
  v76 = v19;

  v71 = sub_100026F94();
  v70 = sub_100026E04();
  v57 = v63;
  v56 = v64;
  LOBYTE(v55) = 1;
  v54 = 0;
  v20 = sub_100026C64();
  *&v111[55] = v124;
  *&v111[71] = v125;
  *&v111[87] = v126;
  *&v111[103] = v127;
  *&v111[7] = v121;
  *&v111[23] = v122;
  *&v111[39] = v123;
  v21 = a3;
  v22 = v66;
  if (v65 && v66)
  {
    v63 = &v58;
    v64 = a3;
    *&v89 = v62;
    *(&v89 + 1) = v65;
    __chkstk_darwin(v20);
    v56 = &v89;

    v23 = sub_100024C2C(sub_100024CF0, &v54, &off_1000352C0);

    if (v23)
    {
      sub_100026FF4();
    }

    else
    {
      sub_100026FD4();
    }

    v24 = v76;
    v65 = sub_100026F04();
    v62 = v26;
    v63 = v25;
    v28 = v27;
    v61 = swift_getKeyPath();
    v60 = swift_getKeyPath();
    v29 = v28 & 1;
    LOBYTE(v78) = v28 & 1;
    LOBYTE(v87[0]) = 0;
    v59 = swift_getKeyPath();

    v58 = sub_100026F94();
    v30 = sub_100026E04();
    sub_100027094();
    sub_100026C34();

    *&v77[23] = v129;
    *&v77[7] = v128;
    *&v77[39] = v130;
    *&v95[1] = *v77;
    *&v89 = v65;
    *(&v89 + 1) = v63;
    LOBYTE(v90) = v29;
    *(&v90 + 1) = v62;
    *&v91 = v61;
    *(&v91 + 1) = 1;
    LOBYTE(v92) = 0;
    *(&v92 + 1) = v60;
    *&v93 = v24;
    *(&v93 + 1) = v59;
    *&v94 = v22;
    *(&v94 + 1) = v58;
    v95[0] = v30;
    *&v95[17] = *&v77[16];
    *&v95[33] = *&v77[32];
    *&v95[48] = *(&v130 + 1);
    nullsub_1();
    v105 = *v95;
    v106 = *&v95[16];
    v107 = *&v95[32];
    v108 = *&v95[48];
    v101 = v91;
    v102 = v92;
    v103 = v93;
    v104 = v94;
    v99 = v89;
    v100 = v90;
    v21 = v64;
  }

  else
  {
    sub_100014E34(&v99);
  }

  sub_100027074();
  sub_100026C64();
  *&v97[55] = v131[3];
  *&v97[71] = v131[4];
  *&v97[87] = v131[5];
  *&v97[103] = v131[6];
  *&v97[7] = v131[0];
  *&v97[23] = v131[1];
  *&v97[39] = v131[2];
  v87[0] = v99;
  v87[1] = v100;
  v31 = v102;
  v32 = v103;
  v87[4] = v103;
  v87[5] = v104;
  v33 = v101;
  v35 = v99;
  v34 = v100;
  v87[2] = v101;
  v87[3] = v102;
  v36 = v106;
  v87[8] = v107;
  v37 = v105;
  v38 = v104;
  v87[6] = v105;
  v87[7] = v106;
  v39 = v67;
  v40 = v68;
  *&v78 = v68;
  *(&v78 + 1) = v67;
  LOBYTE(v79) = v72;
  *(&v79 + 1) = *v110;
  DWORD1(v79) = *&v110[3];
  v41 = v69;
  *(&v79 + 1) = v69;
  *&v80 = KeyPath;
  *(&v80 + 1) = 1;
  LOBYTE(v81) = 0;
  *(&v81 + 1) = *v109;
  DWORD1(v81) = *&v109[3];
  *(&v81 + 1) = v74;
  *&v82 = v76;
  *(&v82 + 1) = v73;
  *&v83 = v21;
  *(&v83 + 1) = v71;
  v84[0] = v70;
  *&v84[65] = *&v111[64];
  *&v84[81] = *&v111[80];
  *&v84[97] = *&v111[96];
  *&v84[1] = *v111;
  *&v84[17] = *&v111[16];
  *&v84[33] = *&v111[32];
  *&v84[49] = *&v111[48];
  v85[1] = v100;
  v85[0] = v99;
  v85[4] = v103;
  v85[5] = v104;
  v85[2] = v101;
  v85[3] = v102;
  v85[7] = v106;
  v85[8] = v107;
  v85[6] = v105;
  *(a9 + 73) = *&v112[64];
  *(a9 + 89) = *&v112[80];
  *(a9 + 105) = *&v112[96];
  *(a9 + 9) = *v112;
  *(a9 + 25) = *&v112[16];
  *(a9 + 41) = *&v112[32];
  *(a9 + 57) = *&v112[48];
  v42 = v79;
  *(a9 + 128) = v78;
  *(a9 + 144) = v42;
  v43 = v83;
  *(a9 + 192) = v82;
  *(a9 + 208) = v43;
  v44 = v81;
  *(a9 + 160) = v80;
  *(a9 + 176) = v44;
  v45 = *&v84[48];
  *(a9 + 256) = *&v84[32];
  *(a9 + 272) = v45;
  v46 = *&v84[16];
  *(a9 + 224) = *v84;
  *(a9 + 240) = v46;
  v47 = *&v84[96];
  v48 = *&v84[64];
  *(a9 + 304) = *&v84[80];
  *(a9 + 320) = v47;
  *(a9 + 288) = v48;
  *(a9 + 440) = v37;
  *(a9 + 456) = v36;
  *(a9 + 472) = v107;
  *(a9 + 376) = v33;
  *(a9 + 392) = v31;
  v98 = 1;
  v88 = v108;
  *&v84[112] = *&v111[111];
  v86 = v108;
  *a9 = 0;
  *(a9 + 8) = 1;
  *(a9 + 120) = *&v112[111];
  *(a9 + 336) = *&v84[112];
  v49 = v108;
  *(a9 + 408) = v32;
  *(a9 + 424) = v38;
  *(a9 + 344) = v35;
  *(a9 + 360) = v34;
  *(a9 + 488) = v49;
  *(a9 + 496) = 0;
  *(a9 + 504) = 1;
  v50 = *&v97[80];
  *(a9 + 569) = *&v97[64];
  *(a9 + 585) = v50;
  *(a9 + 601) = *&v97[96];
  *(a9 + 616) = *&v97[111];
  v51 = *&v97[16];
  *(a9 + 505) = *v97;
  *(a9 + 521) = v51;
  v52 = *&v97[48];
  *(a9 + 537) = *&v97[32];
  *(a9 + 553) = v52;
  sub_1000061E4(&v78, &v89, &qword_100039B38, &unk_1000289B0);
  sub_1000061E4(v85, &v89, &qword_100039B40, &qword_1000285F0);
  sub_100006B20(v87, &qword_100039B40, &qword_1000285F0);
  *&v95[65] = *&v111[64];
  *&v95[81] = *&v111[80];
  *v96 = *&v111[96];
  *&v95[1] = *v111;
  *&v95[17] = *&v111[16];
  *&v95[33] = *&v111[32];
  *&v89 = v40;
  *(&v89 + 1) = v39;
  LOBYTE(v90) = v72;
  *(&v90 + 1) = *v110;
  DWORD1(v90) = *&v110[3];
  *(&v90 + 1) = v41;
  *&v91 = KeyPath;
  *(&v91 + 1) = 1;
  LOBYTE(v92) = 0;
  *(&v92 + 1) = *v109;
  DWORD1(v92) = *&v109[3];
  *(&v92 + 1) = v74;
  *&v93 = v76;
  *(&v93 + 1) = v73;
  *&v94 = v21;
  *(&v94 + 1) = v71;
  v95[0] = v70;
  *&v96[15] = *&v111[111];
  *&v95[49] = *&v111[48];
  return sub_100006B20(&v89, &qword_100039B38, &unk_1000289B0);
}

uint64_t sub_100021BD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v83 = sub_10000274C(&qword_100039E10, &qword_100028D10);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v74 = (&v72 - v4);
  v5 = sub_10000274C(&qword_100039E18, &qword_100028D18);
  v6 = __chkstk_darwin(v5 - 8);
  v85 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v84 = &v72 - v8;
  v9 = sub_100026FE4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10000274C(&qword_100039E20, &qword_100028D20);
  __chkstk_darwin(v76);
  v14 = &v72 - v13;
  v78 = sub_10000274C(&qword_100039E28, &qword_100028D28);
  __chkstk_darwin(v78);
  v16 = &v72 - v15;
  v81 = sub_10000274C(&qword_100039E30, &qword_100028D30);
  v80 = *(v81 - 8);
  v17 = __chkstk_darwin(v81);
  v79 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v77 = &v72 - v19;
  v20 = sub_100026F74();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100039088 != -1)
  {
    swift_once();
  }

  v24 = *(v2 + 64);
  v72 = byte_100039D78;
  v25 = 15.0;
  if (byte_100039D78)
  {
    v25 = 8.0;
  }

  v73 = v24;
  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = 4.0;
  }

  (*(v21 + 104))(v23, enum case for Color.RGBColorSpace.sRGBLinear(_:), v20);
  v86 = sub_100026FB4();
  sub_10000274C(&qword_100039E38, &qword_100028D38);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100028210;
  v28 = *(v2 + 40);
  *(v27 + 32) = *(v2 + 32);
  *(v27 + 40) = v28;

  sub_100027034();
  sub_1000270B4();
  sub_1000270A4();
  sub_100026C44();
  *a1 = sub_100026D24();
  *(a1 + 8) = 0;
  v29 = 1;
  *(a1 + 16) = 1;
  v30 = (a1 + *(sub_10000274C(&qword_100039E40, &unk_100028D40) + 44));
  *v30 = sub_100027074();
  v30[1] = v31;
  v75 = v30;
  v32 = *v2;
  sub_100026FC4();
  (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
  v33 = sub_100027014();

  (*(v10 + 8))(v12, v9);
  sub_100027074();
  sub_100026C34();
  v89 = 1;
  *&v88[6] = v91;
  *&v88[22] = v92;
  *&v88[38] = v93;
  v34 = &v14[*(v76 + 36)];
  v35 = *(sub_100026C54() + 20);
  v36 = enum case for RoundedCornerStyle.continuous(_:);
  v37 = sub_100026D34();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = v26;
  v34[1] = v26;
  *(v34 + *(sub_10000274C(&qword_100039B08, &unk_100028540) + 36)) = 256;
  v38 = *&v88[16];
  *(v14 + 18) = *v88;
  *v14 = v33;
  *(v14 + 1) = 0;
  *(v14 + 8) = 1;
  *(v14 + 34) = v38;
  *(v14 + 50) = *&v88[32];
  *(v14 + 8) = *&v88[46];
  v39 = sub_100026F94();
  LOBYTE(v36) = sub_100026E04();
  sub_100010C0C(v14, v16, &qword_100039E20, &qword_100028D20);
  v40 = &v16[*(v78 + 36)];
  *v40 = v39;
  v40[8] = v36;
  v41 = swift_allocObject();
  v42 = *(v2 + 48);
  *(v41 + 48) = *(v2 + 32);
  *(v41 + 64) = v42;
  *(v41 + 80) = *(v2 + 64);
  v43 = *(v2 + 16);
  *(v41 + 16) = *v2;
  *(v41 + 32) = v43;
  sub_100014FAC(v2, v87);
  sub_100025608(&qword_100039E48, &qword_100039E28, &qword_100028D28, sub_100025198);
  v44 = v77;
  sub_100026F34();

  sub_100006B20(v16, &qword_100039E28, &qword_100028D28);
  v45 = sub_1000271D4();
  if (v46)
  {
    v47 = v45;
    v48 = v46;
    v49 = v44;
    if (v72)
    {
      v50 = 19.0;
    }

    else
    {
      v50 = 25.0;
    }

    v51 = 40.0;
    if (v72)
    {
      v51 = 31.0;
    }

    if (v73)
    {
      v52 = v50;
    }

    else
    {
      v52 = v51;
    }

    v53 = sub_100027074();
    v54 = v74;
    *v74 = v53;
    *(v54 + 8) = v55;
    v56 = sub_10000274C(&qword_100039E88, &qword_100028D78);
    sub_10002260C(v47, v48, v90, v86, v2, v54 + *(v56 + 44));

    v57 = v83;
    v58 = (v54 + *(v83 + 36));
    *v58 = v50;
    v58[1] = v52;
    v59 = v84;
    sub_100010C0C(v54, v84, &qword_100039E10, &qword_100028D10);
    v29 = 0;
  }

  else
  {
    v49 = v44;
    v59 = v84;
    v57 = v83;
  }

  (*(v82 + 56))(v59, v29, 1, v57);
  v60 = sub_10000274C(&qword_100039E78, &qword_100028D68);
  v61 = v75 + *(v60 + 44);
  v62 = v80;
  v63 = *(v80 + 16);
  v64 = v79;
  v65 = v49;
  v66 = v49;
  v67 = v81;
  v63(v79, v66, v81);
  v68 = v85;
  sub_1000061E4(v59, v85, &qword_100039E18, &qword_100028D18);
  v63(v61, v64, v67);
  v69 = sub_10000274C(&qword_100039E80, &qword_100028D70);
  sub_1000061E4(v68, &v61[*(v69 + 48)], &qword_100039E18, &qword_100028D18);
  sub_100006B20(v59, &qword_100039E18, &qword_100028D18);
  v70 = *(v62 + 8);
  v70(v65, v67);
  sub_100006B20(v68, &qword_100039E18, &qword_100028D18);
  v70(v64, v67);
  sub_100025360(v90);
}

uint64_t sub_10002260C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v93 = a5;
  v97 = a4;
  *&v91 = a3;
  v103 = a6;
  v102 = sub_10000274C(&qword_100039E90, &qword_100028D80);
  __chkstk_darwin(v102);
  v96 = &v90 - v8;
  v94 = sub_10000274C(&qword_100039E98, &qword_100028D88);
  v9 = __chkstk_darwin(v94);
  v95 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v90 - v11;
  v99 = sub_10000274C(&qword_100039EA0, &qword_100028D90);
  __chkstk_darwin(v99);
  v101 = &v90 - v13;
  v100 = sub_10000274C(&qword_100039EA8, &qword_100028D98);
  __chkstk_darwin(v100);
  v15 = &v90 - v14;
  v98 = sub_100026FE4();
  v16 = *(v98 - 8);
  __chkstk_darwin(v98);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000274C(&qword_100039EB0, &qword_100028DA0);
  v20 = __chkstk_darwin(v19);
  v92 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v90 - v23;
  v104 = a1;
  if (a1 == v25 && a2 == v22 || (sub_100027474() & 1) != 0)
  {
    v26 = sub_100026FA4();
    sub_100027074();
    sub_100026C34();
    *&v106[6] = v132;
    *&v106[22] = v133;
    *&v106[38] = v134;
    v27 = &v12[*(sub_10000274C(&qword_100039EE0, &qword_100028DC0) + 36)];
    v28 = *(sub_100026C54() + 20);
    v29 = enum case for RoundedCornerStyle.continuous(_:);
    v30 = sub_100026D34();
    (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
    __asm { FMOV            V0.2D, #4.5 }

    *v27 = _Q0;
    *&v27[*(sub_10000274C(&qword_100039B08, &unk_100028540) + 36)] = 256;
    v36 = *v106;
    *(v12 + 26) = *&v106[16];
    *(v12 + 42) = *&v106[32];
    *v12 = v26;
    *(v12 + 4) = 256;
    *(v12 + 7) = *&v106[46];
    *(v12 + 10) = v36;
    v37 = &v12[*(v94 + 36)];
    v38 = v97;
    *v37 = v97;
    *(v37 + 8) = xmmword_100028910;
    *(v37 + 3) = 0x4000000000000000;
    *&v123 = v104;
    *(&v123 + 1) = a2;
    __chkstk_darwin(v38);
    *(&v90 - 2) = &v123;

    LOBYTE(v26) = sub_100024C2C(sub_1000257C8, (&v90 - 2), &off_1000352C0);

    if (v26)
    {
      sub_100026FF4();
    }

    else
    {
      sub_100026FD4();
    }

    v39 = v98;
    (*(v16 + 104))(v18, enum case for Image.ResizingMode.stretch(_:), v98);
    v40 = sub_100027014();

    (*(v16 + 8))(v18, v39);
    sub_100027074();
    sub_100026C34();
    v130 = 1;
    *&v105[6] = v135;
    *&v105[22] = v136;
    *&v105[38] = v137;
    v41 = sub_100026F84();
    KeyPath = swift_getKeyPath();
    v114 = v40;
    LOWORD(v115[0]) = 1;
    *(v115 + 2) = *v105;
    *(&v115[1] + 2) = *&v105[16];
    *(&v115[2] + 2) = *&v105[32];
    *&v115[3] = *&v105[46];
    *(&v115[3] + 1) = KeyPath;
    v116 = v41;
    v43 = v95;
    sub_1000061E4(v12, v95, &qword_100039E98, &qword_100028D88);
    v110 = v115[1];
    v111 = v115[2];
    v112 = v115[3];
    v113 = v116;
    v108 = v114;
    v109 = v115[0];
    v44 = v96;
    sub_1000061E4(v43, v96, &qword_100039E98, &qword_100028D88);
    v45 = v44 + *(sub_10000274C(&qword_100039EE8, &qword_100028DC8) + 48);
    v47 = v111;
    v46 = v112;
    v48 = v113;
    v122 = v113;
    v50 = v110;
    v49 = v111;
    v52 = v109;
    v51 = v110;
    v120 = v111;
    v121 = v112;
    *(v45 + 32) = v110;
    *(v45 + 48) = v49;
    *(v45 + 64) = v46;
    v54 = v108;
    v53 = v109;
    v55 = v108;
    v117 = v108;
    v118 = v109;
    v119 = v51;
    *(v45 + 80) = v48;
    *v45 = v54;
    *(v45 + 16) = v53;
    v125 = v50;
    v126 = v47;
    v127 = v112;
    v128 = v113;
    v123 = v55;
    v124 = v52;
    sub_1000061E4(&v114, v107, &qword_100039EC8, &qword_100028DB8);
    sub_1000061E4(&v117, v107, &qword_100039EC8, &qword_100028DB8);
    sub_100006B20(&v123, &qword_100039EC8, &qword_100028DB8);
    sub_100006B20(v43, &qword_100039E98, &qword_100028D88);
    sub_1000061E4(v44, v101, &qword_100039E90, &qword_100028D80);
    swift_storeEnumTagMultiPayload();
    sub_100014A38(&qword_100039ED0, &qword_100039EA8, &qword_100028D98, &protocol conformance descriptor for TupleView<A>);
    sub_100014A38(&qword_100039ED8, &qword_100039E90, &qword_100028D80, &protocol conformance descriptor for TupleView<A>);
    sub_100026D94();
    sub_100006B20(&v114, &qword_100039EC8, &qword_100028DB8);
    sub_100006B20(v44, &qword_100039E90, &qword_100028D80);
    v56 = v12;
    v57 = &qword_100039E98;
    v58 = &qword_100028D88;
  }

  else
  {
    v95 = a2;
    v96 = v15;
    v59 = v91;
    v94 = *v91;

    sub_100027074();
    sub_100026C34();
    *&v131[6] = v132;
    *&v131[22] = v133;
    *&v131[38] = v134;
    v60 = &v24[*(sub_10000274C(&qword_100039EB8, &qword_100028DA8) + 36)];
    v61 = *(sub_100026C54() + 20);
    v62 = enum case for RoundedCornerStyle.continuous(_:);
    v63 = sub_100026D34();
    v64 = *(*(v63 - 8) + 104);
    v65 = *(v59 + 24);
    v90 = *(v59 + 8);
    v91 = v65;
    v66 = v95;
    v64(&v60[v61], v62, v63);
    __asm { FMOV            V0.2D, #4.5 }

    *v60 = _Q0;
    *&v60[*(sub_10000274C(&qword_100039B08, &unk_100028540) + 36)] = 256;
    *v24 = v94;
    v68 = v90;
    *(v24 + 24) = v91;
    *(v24 + 8) = v68;
    *(v24 + 20) = 256;
    *(v24 + 42) = *v131;
    *(v24 + 58) = *&v131[16];
    *(v24 + 74) = *&v131[32];
    *(v24 + 11) = *&v131[46];
    v69 = &v24[*(v19 + 36)];
    v70 = v97;
    *v69 = v97;
    *(v69 + 8) = xmmword_100028910;
    *(v69 + 3) = 0x4000000000000000;
    *&v123 = v104;
    *(&v123 + 1) = v66;
    __chkstk_darwin(v70);
    *(&v90 - 2) = &v123;

    v71 = sub_100024C2C(sub_1000257C8, (&v90 - 2), &off_1000352C0);

    if (v71)
    {
      sub_100026FF4();
    }

    else
    {
      sub_100026FD4();
    }

    v72 = v96;
    v73 = v98;
    (*(v16 + 104))(v18, enum case for Image.ResizingMode.stretch(_:), v98);
    v74 = sub_100027014();

    (*(v16 + 8))(v18, v73);
    sub_100027074();
    sub_100026C34();
    v130 = 1;
    *&v129[6] = v135;
    *&v129[22] = v136;
    *&v129[38] = v137;
    v75 = *(v93 + 24);
    v76 = swift_getKeyPath();
    v114 = v74;
    LOWORD(v115[0]) = 1;
    *(v115 + 2) = *v129;
    *(&v115[1] + 2) = *&v129[16];
    *(&v115[2] + 2) = *&v129[32];
    *&v115[3] = *&v129[46];
    *(&v115[3] + 1) = v76;
    v116 = v75;
    v77 = v92;
    sub_1000061E4(v24, v92, &qword_100039EB0, &qword_100028DA0);
    v110 = v115[1];
    v111 = v115[2];
    v112 = v115[3];
    v113 = v116;
    v108 = v114;
    v109 = v115[0];
    sub_1000061E4(v77, v72, &qword_100039EB0, &qword_100028DA0);
    v78 = v72 + *(sub_10000274C(&qword_100039EC0, &qword_100028DB0) + 48);
    v80 = v111;
    v79 = v112;
    v81 = v113;
    v122 = v113;
    v83 = v110;
    v82 = v111;
    v85 = v109;
    v84 = v110;
    v120 = v111;
    v121 = v112;
    *(v78 + 32) = v110;
    *(v78 + 48) = v82;
    *(v78 + 64) = v79;
    v87 = v108;
    v86 = v109;
    v88 = v108;
    v117 = v108;
    v118 = v109;
    v119 = v84;
    *(v78 + 80) = v81;
    *v78 = v87;
    *(v78 + 16) = v86;
    v125 = v83;
    v126 = v80;
    v127 = v112;
    v128 = v113;
    v123 = v88;
    v124 = v85;

    sub_1000061E4(&v114, v107, &qword_100039EC8, &qword_100028DB8);
    sub_1000061E4(&v117, v107, &qword_100039EC8, &qword_100028DB8);
    sub_100006B20(&v123, &qword_100039EC8, &qword_100028DB8);
    sub_100006B20(v77, &qword_100039EB0, &qword_100028DA0);
    sub_1000061E4(v72, v101, &qword_100039EA8, &qword_100028D98);
    swift_storeEnumTagMultiPayload();
    sub_100014A38(&qword_100039ED0, &qword_100039EA8, &qword_100028D98, &protocol conformance descriptor for TupleView<A>);
    sub_100014A38(&qword_100039ED8, &qword_100039E90, &qword_100028D80, &protocol conformance descriptor for TupleView<A>);
    sub_100026D94();
    sub_100006B20(&v114, &qword_100039EC8, &qword_100028DB8);
    sub_100006B20(v72, &qword_100039EA8, &qword_100028D98);
    v56 = v24;
    v57 = &qword_100039EB0;
    v58 = &qword_100028DA0;
  }

  return sub_100006B20(v56, v57, v58);
}

double sub_100023310@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100026E84();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v44 = a1;
  *(&v44 + 1) = a2;
  sub_100014A80();

  v10 = sub_100026EF4();
  v39 = v11;
  v40 = v12;
  v14 = v13;
  if (qword_100039088 != -1)
  {
    swift_once();
  }

  if (byte_100039D78 == 1)
  {
    sub_100026E64();
  }

  else
  {
    sub_100026E54();
  }

  sub_100026E74();

  (*(v7 + 104))(v9, enum case for Font.Leading.tight(_:), v6);
  sub_100026E94();

  (*(v7 + 8))(v9, v6);
  v15 = v10;
  v16 = v39;
  v17 = sub_100026EE4();
  v19 = v18;
  v21 = v20;
  v38[1] = v22;

  sub_100024FF8(v15, v16, v14 & 1);

  if (qword_1000390A0 != -1)
  {
    swift_once();
  }

  v23 = sub_100026ED4();
  v39 = v24;
  v40 = v23;
  v26 = v25;
  v28 = v27;
  sub_100024FF8(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v30 = sub_100026F94();
  v31 = sub_100026E04();
  v42 = v26 & 1;
  v41 = 0;
  v32 = swift_getKeyPath();
  sub_100027044();
  sub_100026C64();
  *&v43[55] = v47;
  *&v43[71] = v48;
  *&v43[87] = v49;
  *&v43[103] = v50;
  *&v43[7] = v44;
  *&v43[23] = v45;
  *&v43[39] = v46;
  v33 = *&v43[80];
  *(a3 + 145) = *&v43[64];
  *(a3 + 161) = v33;
  *(a3 + 177) = *&v43[96];
  v34 = *&v43[16];
  *(a3 + 81) = *v43;
  *(a3 + 97) = v34;
  result = *&v43[32];
  v36 = *&v43[48];
  *(a3 + 113) = *&v43[32];
  v37 = v39;
  *a3 = v40;
  *(a3 + 8) = v37;
  *(a3 + 16) = v26 & 1;
  *(a3 + 24) = v28;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 2;
  *(a3 + 48) = 0;
  *(a3 + 56) = v30;
  *(a3 + 64) = v31;
  *(a3 + 72) = v32;
  *(a3 + 80) = 1;
  *(a3 + 192) = *&v43[111];
  *(a3 + 129) = v36;
  return result;
}

uint64_t sub_1000236DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100026E84();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[2] = a1;
  v30[3] = a2;
  sub_100014A80();

  v10 = sub_100026EF4();
  v12 = v11;
  v14 = v13;
  if (qword_100039088 != -1)
  {
    swift_once();
  }

  if (byte_100039D78 == 1)
  {
    sub_100026E64();
  }

  else
  {
    sub_100026EB4();
  }

  (*(v7 + 104))(v9, enum case for Font.Leading.tight(_:), v6);
  sub_100026E94();

  (*(v7 + 8))(v9, v6);
  v15 = sub_100026EE4();
  v17 = v16;
  v19 = v18;

  sub_100024FF8(v10, v12, v14 & 1);

  if (qword_1000390A0 != -1)
  {
    swift_once();
  }

  v20 = sub_100026ED4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_100024FF8(v15, v17, v19 & 1);

  v27 = sub_100026F94();
  v28 = sub_100026E04();
  result = swift_getKeyPath();
  *a3 = v20;
  *(a3 + 8) = v22;
  *(a3 + 16) = v24 & 1;
  *(a3 + 24) = v26;
  *(a3 + 32) = v27;
  *(a3 + 40) = v28;
  *(a3 + 48) = result;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  return result;
}

double sub_10002397C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000236DC(a1, a2, v10);
  sub_100027044();
  sub_100026C64();
  v4 = v18;
  *(a3 + 128) = v17;
  *(a3 + 144) = v4;
  *(a3 + 160) = v19;
  *(a3 + 176) = v20;
  v5 = v14;
  *(a3 + 64) = v13;
  *(a3 + 80) = v5;
  v6 = v16;
  *(a3 + 96) = v15;
  *(a3 + 112) = v6;
  v7 = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a3 + 32) = v11;
  *(a3 + 48) = v9;
  return result;
}

double sub_100023A48@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = sub_100026D24();
  v28 = 1;
  sub_10002397C(v4, v5, &v15);
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v41[8] = v23;
  v41[9] = v24;
  v41[10] = v25;
  v41[4] = v19;
  v41[5] = v20;
  v41[6] = v21;
  v41[7] = v22;
  v41[0] = v15;
  v41[1] = v16;
  v40 = v26;
  v42 = v26;
  v41[2] = v17;
  v41[3] = v18;
  sub_1000061E4(&v29, v14, &qword_100039E08, &qword_100028CD8);
  sub_100006B20(v41, &qword_100039E08, &qword_100028CD8);
  *(&v27[8] + 7) = v37;
  *(&v27[9] + 7) = v38;
  *(&v27[10] + 7) = v39;
  *(&v27[11] + 7) = v40;
  *(&v27[4] + 7) = v33;
  *(&v27[5] + 7) = v34;
  *(&v27[6] + 7) = v35;
  *(&v27[7] + 7) = v36;
  *(v27 + 7) = v29;
  *(&v27[1] + 7) = v30;
  *(&v27[2] + 7) = v31;
  *(&v27[3] + 7) = v32;
  v7 = v27[9];
  *(a2 + 145) = v27[8];
  *(a2 + 161) = v7;
  *(a2 + 177) = v27[10];
  *(a2 + 192) = *(&v27[10] + 15);
  v8 = v27[5];
  *(a2 + 81) = v27[4];
  *(a2 + 97) = v8;
  v9 = v27[7];
  *(a2 + 113) = v27[6];
  *(a2 + 129) = v9;
  v10 = v27[1];
  *(a2 + 17) = v27[0];
  *(a2 + 33) = v10;
  result = *&v27[2];
  v12 = v27[3];
  *(a2 + 49) = v27[2];
  v13 = v28;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = v13;
  *(a2 + 65) = v12;
  return result;
}

uint64_t sub_100023C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_100027004();
  v83 = *(v12 - 8);
  v84 = v12;
  __chkstk_darwin(v12);
  v77 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000274C(&qword_100039DE0, &qword_100028C78);
  __chkstk_darwin(v14);
  v82 = (&v73 - v15);
  v80 = sub_10000274C(&qword_100039DE8, &qword_100028C80);
  __chkstk_darwin(v80);
  v81 = &v73 - v16;
  v90 = sub_10000274C(&qword_100039DF0, &qword_100028C88);
  v87 = *(v90 - 8);
  v17 = __chkstk_darwin(v90);
  v79 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v78 = &v73 - v19;
  v20 = sub_10000274C(&qword_100039DF8, &qword_100028C90);
  v21 = __chkstk_darwin(v20 - 8);
  v88 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v86 = &v73 - v24;
  v89 = a5;
  if (a2)
  {
    v74 = a3;
    v75 = a4;
    v76 = a6;
    v25 = v14;
    v91 = a1;
    v92 = a2;
    sub_100014A80();

    v26 = sub_100026EF4();
    v28 = v27;
    v30 = v29;
    sub_100026EB4();
    v31 = sub_100026EE4();
    v33 = v32;
    v35 = v34;

    sub_100024FF8(v26, v28, v30 & 1);

    if (qword_1000390A0 != -1)
    {
      swift_once();
    }

    v36 = sub_100026ED4();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_100024FF8(v31, v33, v35 & 1);

    v43 = v40 & 1;
    v85 = v36;
    sub_10002504C(v36, v38, v40 & 1);

    a5 = v89;
    v14 = v25;
    a4 = v75;
    a6 = v76;
    a3 = v74;
    v44 = v90;
    if (!v75)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v85 = 0;
    v38 = 0;
    v43 = 0;
    v42 = 0;
    v44 = v90;
    if (!a4)
    {
LABEL_10:
      v47 = 1;
      v48 = v86;
      goto LABEL_18;
    }
  }

  if (!a5)
  {
    goto LABEL_10;
  }

  v76 = &v73;
  v91 = a3;
  v92 = a4;
  __chkstk_darwin(v23);
  *(&v73 - 2) = &v91;

  v45 = sub_100024C2C(sub_1000257C8, (&v73 - 4), &off_1000352C0);

  if (v45)
  {
    v46 = sub_100026FF4();
  }

  else
  {
    v46 = sub_100026FD4();
  }

  v76 = v46;
  if (qword_100039088 != -1)
  {
    swift_once();
  }

  v50 = v83;
  v49 = v84;
  if (byte_100039D78)
  {
    v51 = &enum case for Image.Scale.medium(_:);
  }

  else
  {
    v51 = &enum case for Image.Scale.small(_:);
  }

  v52 = v77;
  (*(v83 + 104))(v77, *v51, v84);
  KeyPath = swift_getKeyPath();
  v54 = *(v14 + 36);
  v55 = v82;
  v56 = (v82 + v54);
  v57 = sub_10000274C(&qword_100039B18, &qword_100028CD0);
  (*(v50 + 32))(v56 + *(v57 + 28), v52, v49);
  *v56 = KeyPath;
  *v55 = v76;
  v58 = sub_100026EA4();
  v59 = swift_getKeyPath();
  v60 = v81;
  sub_100010C0C(v55, v81, &qword_100039DE0, &qword_100028C78);
  v61 = (v60 + *(v80 + 36));
  *v61 = v59;
  v61[1] = v58;
  v62 = swift_getKeyPath();
  v63 = v79;
  sub_100010C0C(v60, v79, &qword_100039DE8, &qword_100028C80);
  v64 = v89;
  v44 = v90;
  v65 = (v63 + *(v90 + 36));
  *v65 = v62;
  v65[1] = v64;
  v66 = v63;
  v67 = v78;
  sub_100010C0C(v66, v78, &qword_100039DF0, &qword_100028C88);
  v68 = v67;
  v48 = v86;
  sub_100010C0C(v68, v86, &qword_100039DF0, &qword_100028C88);
  v47 = 0;
LABEL_18:
  (*(v87 + 56))(v48, v47, 1, v44);
  v69 = v88;
  sub_1000061E4(v48, v88, &qword_100039DF8, &qword_100028C90);
  v70 = v85;
  *a6 = v85;
  a6[1] = v38;
  a6[2] = v43;
  a6[3] = v42;
  v71 = sub_10000274C(&qword_100039E00, &qword_100028C98);
  sub_1000061E4(v69, a6 + *(v71 + 48), &qword_100039DF8, &qword_100028C90);
  sub_100025008(v70, v38, v43, v42);
  sub_10002505C(v70, v38, v43, v42);
  sub_100006B20(v48, &qword_100039DF8, &qword_100028C90);
  sub_100006B20(v69, &qword_100039DF8, &qword_100028C90);
  return sub_10002505C(v70, v38, v43, v42);
}

uint64_t sub_100024370@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = sub_10000274C(&qword_100039D88, &qword_100028C20);
  v4 = __chkstk_darwin(v3 - 8);
  v95 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v96 = (&v80 - v6);
  v7 = sub_10000274C(&qword_100039D90, &qword_100028C28);
  v8 = __chkstk_darwin(v7 - 8);
  v92 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v97 = (&v80 - v10);
  v91 = sub_10000274C(&qword_100039D98, &qword_100028C30);
  v11 = __chkstk_darwin(v91);
  v94 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = (&v80 - v13);
  if (qword_1000390B0 != -1)
  {
    swift_once();
  }

  v14 = qword_10003A770;
  sub_100027074();
  sub_100026C64();
  *&v117[27] = *&v117[83];
  *&v117[35] = *&v117[91];
  *&v117[43] = *&v117[99];
  *&v117[51] = *&v117[107];
  *&v117[3] = *&v117[59];
  *&v117[11] = *&v117[67];
  *&v117[19] = *&v117[75];
  v15 = qword_100039088;
  v93 = v14;

  if (v15 != -1)
  {
    swift_once();
  }

  sub_100027074();
  sub_100026C34();
  v89 = v120;
  v90 = v118;
  v87 = v123;
  v88 = v122;
  v116 = 1;
  v115 = v119;
  v114 = v121;
  v16 = sub_100026D24();
  v17 = v98;
  *v98 = v16;
  v17[1] = 0;
  *(v17 + 16) = 1;
  v18 = *a1;
  v19 = a1[1];
  v20 = a1[3];
  v22 = a1[4];
  v21 = a1[5];
  v23 = a1[6];
  v24 = sub_100026D54();
  v25 = v97;
  *v97 = v24;
  v25[1] = 0;
  *(v25 + 16) = 0;
  v26 = sub_100026D24();
  v27 = v96;
  *v96 = v26;
  v27[1] = 0x4000000000000000;
  *(v27 + 16) = 0;
  v28 = sub_10000274C(&qword_100039DA0, &qword_100028C38);
  sub_100023C40(v18, v19, v22, v21, v23, (v27 + *(v28 + 44)));
  if (v20 && (v29 = sub_1000271D4(), v30))
  {
    v106 = v29;
    *v107 = v30;
    sub_100014A80();
    v31 = sub_100026EF4();
    v33 = v32;
    v35 = v34;
    sub_100026EA4();
    v83 = sub_100026EE4();
    v37 = v36;
    v39 = v38;
    v85 = v40;

    sub_100024FF8(v31, v33, v35 & 1);

    KeyPath = swift_getKeyPath();
    if (qword_1000390A8 != -1)
    {
      swift_once();
    }

    v41 = qword_10003A768;
    v42 = swift_getKeyPath();
    LOBYTE(v106) = v39 & 1;
    LOBYTE(v105[0]) = 0;
    v43 = v39 & 1;
    v81 = v42;
    v82 = 0;

    v44 = 2;
    v45 = v83;
    v46 = v37;
  }

  else
  {
    v45 = 0;
    v46 = 0;
    KeyPath = 0;
    v85 = 0;
    v44 = 0;
    v81 = 0;
    v82 = 0;
    v41 = 0;
    v43 = 0;
  }

  v47 = sub_10000274C(&qword_100039DA8, &qword_100028C40);
  v83 = v98 + *(v47 + 44);
  v48 = sub_10000274C(&qword_100039DB0, &qword_100028C48);
  v49 = v97 + *(v48 + 44);
  v50 = v95;
  sub_1000061E4(v96, v95, &qword_100039D88, &qword_100028C20);
  sub_1000061E4(v50, v49, &qword_100039D88, &qword_100028C20);
  v51 = v49 + *(sub_10000274C(&qword_100039DB8, &qword_100028C50) + 48);
  *&v99 = v45;
  *(&v99 + 1) = v46;
  v53 = KeyPath;
  v52 = v85;
  *&v100 = v43;
  *(&v100 + 1) = v85;
  *&v101 = KeyPath;
  *(&v101 + 1) = v44;
  v54 = v81;
  v55 = v82;
  *&v102 = v82;
  *(&v102 + 1) = v81;
  v103 = v41;
  *(v51 + 64) = v41;
  v56 = v100;
  *v51 = v99;
  *(v51 + 16) = v56;
  v57 = v102;
  *(v51 + 32) = v101;
  *(v51 + 48) = v57;
  v58 = v41;
  v59 = v54;
  sub_1000061E4(&v99, &v106, &qword_100039DC0, &qword_100028C58);
  sub_100006B20(v96, &qword_100039D88, &qword_100028C20);
  v104[0] = v45;
  v104[1] = v46;
  v104[2] = v43;
  v104[3] = v52;
  v104[4] = v53;
  v104[5] = v44;
  v104[6] = v55;
  v104[7] = v59;
  v104[8] = v58;
  sub_100006B20(v104, &qword_100039DC0, &qword_100028C58);
  sub_100006B20(v95, &qword_100039D88, &qword_100028C20);
  v60 = v97;
  v61 = v92;
  sub_1000061E4(v97, v92, &qword_100039D90, &qword_100028C28);
  v62 = v83;
  sub_1000061E4(v61, v83, &qword_100039D90, &qword_100028C28);
  v63 = v62 + *(sub_10000274C(&qword_100039DC8, &qword_100028C60) + 48);
  *v63 = 0;
  *(v63 + 8) = 1;
  sub_100006B20(v60, &qword_100039D90, &qword_100028C28);
  sub_100006B20(v61, &qword_100039D90, &qword_100028C28);
  v64 = sub_100026F94();
  v65 = sub_100026E04();
  v66 = v98;
  v67 = v98 + *(v91 + 36);
  *v67 = v64;
  v67[8] = v65;
  LOBYTE(v53) = v116;
  LOBYTE(v55) = v115;
  v68 = v114;
  v69 = v94;
  sub_1000061E4(v66, v94, &qword_100039D98, &qword_100028C30);
  v70 = v93;
  *&v105[0] = v93;
  WORD4(v105[0]) = 256;
  *(v105 + 10) = *v117;
  *(&v105[1] + 10) = *&v117[8];
  *(&v105[5] + 10) = *&v117[40];
  *(&v105[4] + 10) = *&v117[32];
  *(&v105[6] + 10) = *&v117[48];
  *(&v105[7] + 1) = *&v117[55];
  *(&v105[2] + 10) = *&v117[16];
  *(&v105[3] + 10) = *&v117[24];
  v71 = v105[5];
  v72 = v86;
  *(v86 + 64) = v105[4];
  *(v72 + 80) = v71;
  v73 = v105[7];
  *(v72 + 96) = v105[6];
  *(v72 + 112) = v73;
  v74 = v105[1];
  *v72 = v105[0];
  *(v72 + 16) = v74;
  v75 = v105[3];
  *(v72 + 32) = v105[2];
  *(v72 + 48) = v75;
  *(v72 + 128) = 0;
  *(v72 + 136) = v53;
  v76 = v89;
  *(v72 + 144) = v90;
  *(v72 + 152) = v55;
  *(v72 + 160) = v76;
  *(v72 + 168) = v68;
  v77 = v87;
  *(v72 + 176) = v88;
  *(v72 + 184) = v77;
  v78 = sub_10000274C(&qword_100039DD0, &qword_100028C68);
  sub_1000061E4(v69, v72 + *(v78 + 64), &qword_100039D98, &qword_100028C30);
  sub_1000061E4(v105, &v106, &qword_100039DD8, &qword_100028C70);
  sub_100006B20(v98, &qword_100039D98, &qword_100028C30);
  sub_100006B20(v69, &qword_100039D98, &qword_100028C30);
  v111 = *&v117[32];
  v112 = *&v117[40];
  *v113 = *&v117[48];
  *&v107[2] = *v117;
  v108 = *&v117[8];
  v109 = *&v117[16];
  v106 = v70;
  *v107 = 256;
  *&v113[14] = *&v117[55];
  v110 = *&v117[24];
  return sub_100006B20(&v106, &qword_100039DD8, &qword_100028C70);
}

uint64_t sub_100024BBC@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v7[2] = *(v2 + 32);
  v8 = *(v2 + 48);
  *a2 = sub_100026D44();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = sub_10000274C(&qword_100039D80, &qword_100028C18);
  return sub_100024370(v7, a2 + *(v5 + 44));
}

uint64_t sub_100024C2C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100024D20(uint64_t a1, int a2)
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

uint64_t sub_100024D6C(uint64_t result, int a2, int a3)
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

uint64_t sub_100024DB8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100024DD0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100024DF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_100024E3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100024EA0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100024EBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100024F18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100024FF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100025008(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10002504C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10002504C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10002505C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100024FF8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000250A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100026CB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100025100()
{

  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_100025168()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_100025198()
{
  result = qword_100039E50;
  if (!qword_100039E50)
  {
    sub_1000144E4(&qword_100039E20, &qword_100028D20);
    sub_100025250();
    sub_100014A38(&qword_100039B00, &qword_100039B08, &unk_100028540, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039E50);
  }

  return result;
}

unint64_t sub_100025250()
{
  result = qword_100039E58;
  if (!qword_100039E58)
  {
    sub_1000144E4(&qword_100039E60, &qword_100028D50);
    sub_1000252DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039E58);
  }

  return result;
}

unint64_t sub_1000252DC()
{
  result = qword_100039E68;
  if (!qword_100039E68)
  {
    sub_1000144E4(&qword_100039E70, &qword_100028D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039E68);
  }

  return result;
}

uint64_t sub_1000253B4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100027474() & 1;
  }
}

unint64_t sub_100025498()
{
  result = qword_100039F10;
  if (!qword_100039F10)
  {
    sub_1000144E4(&qword_100039F18, &qword_100028DE0);
    sub_100025524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F10);
  }

  return result;
}

unint64_t sub_100025524()
{
  result = qword_100039F20;
  if (!qword_100039F20)
  {
    sub_1000144E4(&qword_100039F28, &qword_100028DE8);
    sub_100025608(&qword_100039F30, &qword_100039F38, &qword_100028DF0, sub_1000256B8);
    sub_100014A38(&qword_100039F60, &qword_100039F68, &qword_100028E08, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F20);
  }

  return result;
}

uint64_t sub_100025608(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000144E4(a2, a3);
    a4();
    sub_100014A38(&qword_100039AF0, &qword_100039AF8, &qword_100028D60, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000256B8()
{
  result = qword_100039F40;
  if (!qword_100039F40)
  {
    sub_1000144E4(&qword_100039F48, &qword_100028DF8);
    sub_100014A38(&qword_100039F50, &qword_100039F58, &qword_100028E00, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F40);
  }

  return result;
}

uint64_t sub_1000257E4(uint64_t a1)
{
  v2 = sub_100026834();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_100026734();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100025A70(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100002814(v8);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_1000024CC();
  sub_100026894();
  v14 = sub_100026824();
  v15 = sub_100027304();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "pushToSettings", v16, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100025A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100026B04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100026834();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v40 = &v39 - v12;
  v13 = sub_10000274C(&qword_100039188, &qword_100027DE8);
  __chkstk_darwin(v13 - 8);
  v15 = &v39 - v14;
  v16 = sub_100026AC4();
  if ((v17 & 1) != 0 || (v18 = v16, sub_100026AF4(), v41 = a2, v19 = sub_1000271D4(), v21 = v20, a2 = v41, , !v21))
  {
    sub_100026894();
    v29 = v4;
    (*(v5 + 16))(v7, a1, v4);
    v30 = sub_100026824();
    v31 = sub_100027314();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136315138;
      v34 = sub_100026A54();
      v41 = a2;
      v36 = v35;
      (*(v5 + 8))(v7, v29);
      v37 = sub_100005F78(v34, v36, &v44);
      a2 = v41;

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Invalid details %s", v32, 0xCu);
      sub_100006044(v33);
    }

    else
    {

      (*(v5 + 8))(v7, v29);
    }

    (*(v42 + 8))(v11, v43);
    v38 = sub_100026734();
    return (*(*(v38 - 8) + 56))(a2, 1, 1, v38);
  }

  else
  {
    type metadata accessor for PeopleMessagesURLHandler();
    swift_initStackObject();
    sub_100001A50(v18, v19, v15, v21);

    v22 = sub_100026734();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v15, 1, v22) == 1)
    {
      sub_100002814(v15);
      v24 = v40;
      sub_100026894();
      v25 = sub_100026824();
      v26 = sub_100027314();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Unable to build punch out url", v27, 2u);
        a2 = v41;
      }

      (*(v42 + 8))(v24, v43);
      return (*(v23 + 56))(a2, 1, 1, v22);
    }

    else
    {
      (*(v23 + 32))(a2, v15, v22);
      return (*(v23 + 56))(a2, 0, 1, v22);
    }
  }
}

uint64_t sub_100025F70(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = sub_100026B04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000268B4();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100026834();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v42 - v14;
  __chkstk_darwin(v13);
  v17 = &v42 - v16;
  sub_100026AF4();
  sub_1000271D4();
  v19 = v18;

  if (v19)
  {
    sub_100026894();
    v20 = sub_100026824();
    v21 = sub_100027304();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v20, v21, "Responding to askForTime %ld", v22, 0xCu);
    }

    v23 = v48;
    v24 = *(v47 + 8);
    v24(v17, v48);
    v25 = [objc_allocWithZone(STAskClient) init];
    sub_1000268E4();
    sub_1000268A4();
    v26 = sub_100027124();

    v49 = 0;
    v27 = [v25 respondToAskForTimeRequestWithIdentifier:v26 answer:v46 error:&v49];

    if (v27)
    {
      v37 = v49;
      sub_1000268A4();

      sub_1000268D4();
      v39 = v43;
      v38 = v44;
      v40 = v45;
      (*(v44 + 104))(v43, enum case for PeopleAnalytics.MessageRequestBubbleSource.screenTime(_:), v45);
      sub_1000268C4();

      return (*(v38 + 8))(v39, v40);
    }

    else
    {
      v36 = v49;
      sub_1000266B4();

      swift_willThrow();
      sub_100026894();
      swift_errorRetain();
      sub_100026814();

      return (v24)(v12, v23);
    }
  }

  else
  {
    sub_100026894();
    (*(v4 + 16))(v6, a1, v3);
    v28 = sub_100026824();
    v29 = sub_100027314();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v49 = v31;
      *v30 = 136315138;
      v32 = sub_100026A54();
      v34 = v33;
      (*(v4 + 8))(v6, v3);
      v35 = sub_100005F78(v32, v34, &v49);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Invalid details %s", v30, 0xCu);
      sub_100006044(v31);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    return (*(v47 + 8))(v15, v48);
  }
}