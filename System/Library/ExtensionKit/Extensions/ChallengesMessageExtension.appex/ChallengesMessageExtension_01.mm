void sub_100019EB4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10004027C();
  v65 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ChallengeInviteInfoLoader(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ChallengeInviteCardView(0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v66 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (&v63 - v18);
  sub_10001E858(a2, v13, type metadata accessor for ChallengeInviteInfoLoader);
  (*(v8 + 16))(v10, a3, v7);
  v20 = swift_allocObject();
  v64 = v3;
  swift_unknownObjectWeakInit();
  v21 = type metadata accessor for ChallengeInviteCardViewModel(0);
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtC26ChallengesMessageExtension28ChallengeInviteCardViewModel__state;
  v24 = type metadata accessor for ChallengeInviteContentCardModel(0);
  (*(*(v24 - 8) + 56))(&v22[v23], 1, 2, v24);

  sub_10003FEBC();
  v25 = *a1;
  v69 = a1[1];
  v26 = v69;
  v70 = v25;
  v68 = a1[2];
  v27 = v68;
  *(v22 + 1) = v25;
  *(v22 + 2) = v26;
  *(v22 + 3) = v27;
  sub_10001E8C0(v13, &v22[OBJC_IVAR____TtC26ChallengesMessageExtension28ChallengeInviteCardViewModel_infoLoader], type metadata accessor for ChallengeInviteInfoLoader);
  (*(v8 + 32))(&v22[OBJC_IVAR____TtC26ChallengesMessageExtension28ChallengeInviteCardViewModel_localPlayerProfile], v10, v65);
  v28 = &v22[OBJC_IVAR____TtC26ChallengesMessageExtension28ChallengeInviteCardViewModel_onLoadedModel];
  *v28 = sub_10001E7CC;
  v28[1] = v20;
  sub_10001E7D4(&v70, v67);
  sub_10001E7D4(&v68, v67);
  sub_10000E06C(&v69, v67, &qword_100054FF0, &unk_1000483C0);

  v29 = (v19 + *(v15 + 28));
  v29[3] = v21;
  v29[4] = &off_100053898;
  *v29 = v22;
  *v19 = swift_getKeyPath();
  sub_1000028DC(&qword_1000555D8, &qword_100048410);
  swift_storeEnumTagMultiPayload();
  v65 = v19;
  sub_10001E858(v19, v66, type metadata accessor for ChallengeInviteCardView);
  v30 = objc_allocWithZone(sub_1000028DC(&qword_1000555E0, &qword_100048418));
  v31 = sub_10004075C();
  v32 = [v31 view];
  if (!v32)
  {
    __break(1u);
    goto LABEL_12;
  }

  v33 = v32;
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = v64;
  [v64 addChildViewController:v31];
  v35 = [v34 view];
  if (!v35)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v36 = v35;
  [v35 addSubview:v33];

  sub_1000028DC(&qword_1000555C8, &qword_1000483D8);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100048310;
  v38 = [v33 topAnchor];
  v39 = [v34 view];
  if (!v39)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v40 = v39;
  v41 = [v39 topAnchor];

  v42 = [v38 constraintEqualToAnchor:v41];
  *(v37 + 32) = v42;
  v43 = [v33 bottomAnchor];
  v44 = [v34 view];
  if (!v44)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v45 = v44;
  v46 = [v44 bottomAnchor];

  v47 = [v43 constraintEqualToAnchor:v46];
  *(v37 + 40) = v47;
  v48 = [v33 leadingAnchor];
  v49 = [v34 view];
  if (!v49)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v50 = v49;
  v51 = [v49 leadingAnchor];

  v52 = [v48 constraintEqualToAnchor:v51];
  *(v37 + 48) = v52;
  v53 = [v33 trailingAnchor];
  v54 = v34;
  v55 = [v34 view];
  if (!v55)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v56 = v55;
  v57 = objc_opt_self();
  v58 = [v56 trailingAnchor];

  v59 = [v53 constraintEqualToAnchor:v58];
  *(v37 + 56) = v59;
  sub_10001E748();
  isa = sub_100040F9C().super.isa;

  [v57 activateConstraints:isa];

  v61 = v31;
  if (!_UISolariumEnabled())
  {
LABEL_10:

    [v31 didMoveToParentViewController:v54];
    sub_10001EBA0(v65, type metadata accessor for ChallengeInviteCardView);
    return;
  }

  v62 = [v31 view];

  if (v62)
  {
    v61 = [objc_opt_self() clearColor];
    [v62 setBackgroundColor:v61];

    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_10001A618(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000028DC(&qword_1000555E8, &qword_100048420);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_10001E858(a1, v5, type metadata accessor for ChallengeInviteContentCardModel);
    v8 = type metadata accessor for ChallengeInviteContentCardModel(0);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = OBJC_IVAR____TtC26ChallengesMessageExtension29ChallengeInviteViewController_cardModel;
    swift_beginAccess();
    sub_10001EC00(v5, v7 + v9, &qword_1000555E8, &qword_100048420);
    swift_endAccess();
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 requestResize];
  }
}

void sub_10001A794()
{
  v1 = v0;
  v2 = objc_allocWithZone(sub_1000028DC(&qword_1000555C0, &qword_1000483D0));
  v3 = sub_10004075C();
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  v32 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addChildViewController:v3];
  v5 = [v1 view];
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  [v5 addSubview:v32];

  sub_1000028DC(&qword_1000555C8, &qword_1000483D8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100048310;
  v8 = [v32 topAnchor];
  v9 = [v1 view];
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  v11 = [v9 topAnchor];

  v12 = [v8 constraintEqualToAnchor:v11];
  *(v7 + 32) = v12;
  v13 = [v32 bottomAnchor];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  v16 = [v14 bottomAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v7 + 40) = v17;
  v18 = [v32 leadingAnchor];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = v19;
  v21 = [v19 leadingAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v7 + 48) = v22;
  v23 = [v32 trailingAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = v24;
  v26 = objc_opt_self();
  v27 = [v25 trailingAnchor];

  v28 = [v23 constraintEqualToAnchor:v27];
  *(v7 + 56) = v28;
  sub_10001E748();
  isa = sub_100040F9C().super.isa;

  [v26 activateConstraints:isa];

  v30 = v3;
  if (_UISolariumEnabled())
  {
    v31 = [v3 view];

    if (v31)
    {
      v30 = [objc_opt_self() clearColor];
      [v31 setBackgroundColor:v30];

      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return;
  }

LABEL_10:

  [v3 didMoveToParentViewController:v1];
}

double sub_10001AB8C(double a1)
{
  v3 = type metadata accessor for ChallengeInviteCardView(0);
  __chkstk_darwin(v3);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000028DC(&qword_1000555E8, &qword_100048420);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for ChallengeInviteContentCardModel(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 300.0)
  {
    a1 = 300.0;
  }

  v16 = OBJC_IVAR____TtC26ChallengesMessageExtension29ChallengeInviteViewController_cardModel;
  swift_beginAccess();
  v31 = v1;
  sub_10000E06C(v1 + v16, v11, &qword_1000555E8, &qword_100048420);
  v30 = *(v13 + 48);
  if (v30(v11, 1, v12) == 1)
  {
    sub_10000A798(v11, &qword_1000555E8, &qword_100048420);
    v17 = 300.0;
  }

  else
  {
    sub_10001E8C0(v11, v15, type metadata accessor for ChallengeInviteContentCardModel);
    v18 = (v5 + *(v3 + 20));
    v18[3] = type metadata accessor for SizingModel(0);
    v18[4] = &off_100053A90;
    v19 = sub_10001E928(v18);
    sub_10001E858(v15, v19, type metadata accessor for ChallengeInviteContentCardModel);
    (*(v13 + 56))(v19, 0, 2, v12);
    *v5 = swift_getKeyPath();
    sub_1000028DC(&qword_1000555D8, &qword_100048410);
    swift_storeEnumTagMultiPayload();
    v20 = objc_allocWithZone(sub_1000028DC(&qword_1000555E0, &qword_100048418));
    v21 = sub_10004075C();
    sub_10004074C();
    v17 = v22;

    sub_10001EBA0(v15, type metadata accessor for ChallengeInviteContentCardModel);
    if (v17 <= 300.0)
    {
      v17 = 300.0;
    }
  }

  sub_10000E06C(v31 + v16, v8, &qword_1000555E8, &qword_100048420);
  v23 = v30(v8, 1, v12);
  sub_10000A798(v8, &qword_1000555E8, &qword_100048420);
  if (qword_100054610 != -1)
  {
    swift_once();
  }

  v24 = sub_10004039C();
  sub_10000A760(v24, qword_100058E28);
  v25 = sub_10004037C();
  v26 = sub_1000410AC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134218496;
    *(v27 + 4) = a1;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v17;
    *(v27 + 22) = 1024;
    *(v27 + 24) = v23 != 1;
    _os_log_impl(&_mh_execute_header, v25, v26, "Return content size of %fx%f. Has model %{BOOL}d", v27, 0x1Cu);
  }

  return a1;
}

id sub_10001B320(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ChallengeInviteViewController(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for ChallengeInviteViewController(uint64_t a1)
{
  result = qword_100055598;
  if (!qword_100055598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001B3E0(uint64_t a1)
{
  sub_10001B470(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10001B470(uint64_t a1)
{
  if (!qword_1000555A8)
  {
    type metadata accessor for ChallengeInviteContentCardModel(255);
    v1 = sub_1000410EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1000555A8);
    }
  }
}

uint64_t sub_10001B4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 0xD00000000000002CLL || 0x8000000100042B90 != a3)
  {
    v4 = sub_10004133C();
    result = 0;
    if ((v4 & 1) == 0)
    {
      return result;
    }
  }

  v29 = 0x676E656C6C616863;
  v30 = 0xEB00000000444965;
  sub_10004118C();
  if (*(a1 + 16) && (v6 = sub_100024B80(&v31), (v7 & 1) != 0))
  {
    sub_100011074(*(a1 + 56) + 32 * v6, v28);
    sub_10001E6DC(&v31);
    if (swift_dynamicCast())
    {
      v9 = v29;
      v8 = v30;
      v29 = 0x4972657469766E69;
      v30 = 0xE900000000000044;
      sub_10004118C();
      if (*(a1 + 16) && (v10 = sub_100024B80(&v31), (v11 & 1) != 0))
      {
        sub_100011074(*(a1 + 56) + 32 * v10, v28);
        sub_10001E6DC(&v31);
        if (swift_dynamicCast())
        {
          v13 = v29;
          v12 = v30;
          v28[0] = 0x4E72657469766E69;
          v28[1] = 0xEB00000000656D61;
          sub_10004118C();
          if (*(a1 + 16) && (v14 = sub_100024B80(&v31), (v15 & 1) != 0))
          {
            sub_100011074(*(a1 + 56) + 32 * v14, v28);
            sub_10001E6DC(&v31);
            v16 = swift_dynamicCast();
            if (v16)
            {
              v17 = v29;
            }

            else
            {
              v17 = 0;
            }

            if (v16)
            {
              v18 = v30;
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            sub_10001E6DC(&v31);
            v17 = 0;
            v18 = 0;
          }

          *&v31 = 0x656D614E656D6167;
          *(&v31 + 1) = 0xE800000000000000;
          sub_10004118C();
          if (*(a1 + 16) && (v23 = sub_100024B80(v28), (v24 & 1) != 0))
          {
            sub_100011074(*(a1 + 56) + 32 * v23, &v29);
            sub_10001E6DC(v28);
            v25 = swift_dynamicCast();
            if (v25)
            {
              v26 = v31;
            }

            else
            {
              v26 = 0;
            }

            if (v25)
            {
              v27 = *(&v31 + 1);
            }

            else
            {
              v27 = 0;
            }
          }

          else
          {
            sub_10001E6DC(v28);
            v26 = 0;
            v27 = 0;
          }

          *&v31 = v9;
          *(&v31 + 1) = v8;
          v32 = 0;
          v33 = 0;
          v34 = v13;
          v35 = v12;
          sub_10001B8E4(&v31, v17, v18, v26, v27);

          return 1;
        }
      }

      else
      {
        sub_10001E6DC(&v31);
      }
    }
  }

  else
  {
    sub_10001E6DC(&v31);
  }

  if (qword_100054610 != -1)
  {
    swift_once();
  }

  v19 = sub_10004039C();
  sub_10000A760(v19, qword_100058E28);
  v20 = sub_10004037C();
  v21 = sub_1000410BC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "_handleTextInputPayload payload is necessary info", v22, 2u);
  }

  return 0;
}

void sub_10001B8E4(__int128 *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = [v6 activeConversation];
  if (v12)
  {
    v20 = v12;
    v13 = sub_10003E3C4(a1, a2, a3, a4, a5, v12);
    if (v13)
    {
      v14 = v13;
      aBlock[4] = sub_10001BB80;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001BD30;
      aBlock[3] = &unk_100053578;
      v15 = _Block_copy(aBlock);
      [v20 insertMessage:v14 completionHandler:v15];
      _Block_release(v15);
    }

    else
    {
      if (qword_100054610 != -1)
      {
        swift_once();
      }

      v16 = sub_10004039C();
      sub_10000A760(v16, qword_100058E28);
      v17 = sub_10004037C();
      v18 = sub_1000410BC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "composeMessage createMessage return nil message", v19, 2u);
      }
    }
  }
}

void sub_10001BB80(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100054610 != -1)
    {
      swift_once();
    }

    v1 = sub_10004039C();
    sub_10000A760(v1, qword_100058E28);
    swift_errorRetain();
    oslog = sub_10004037C();
    v2 = sub_1000410BC();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "composeMessage failed to insert message %@", v3, 0xCu);
      sub_10000A798(v4, &qword_1000555B8, &qword_100048AE0);
    }

    else
    {
    }
  }
}

void sub_10001BD30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10001BF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_10004101C();
  v5[7] = sub_10004100C();
  v7 = sub_100040FDC();

  return _swift_task_switch(sub_10001BFE0, v7, v6);
}

uint64_t sub_10001BFE0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  *(v0 + 64) = _Block_copy(v2);
  if (v1)
  {
    sub_100040E9C();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 72) = v3;
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 16);
  v7 = v5;
  v8 = v4;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_10001C0D8;
  v10 = *(v0 + 16);

  return sub_10001DD14(v10);
}

uint64_t sub_10001C0D8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (a3)
  {

    v11 = sub_100040E6C();
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v6 + 64);
  (v12)[2](v12, a1 & 1, v11);

  _Block_release(v12);

  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_10001C2BC()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001C314()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001C3DC;

  return sub_10001BF40(v2, v3, v4, v5, v6);
}

uint64_t sub_10001C3DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001C4D0(uint64_t a1)
{
  v2 = sub_1000403FC();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_10004057C();
}

uint64_t sub_10001C598(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10001ECD8;

  return v6();
}

uint64_t sub_10001C680()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001ECD8;

  return sub_10001C598(v2, v3, v4);
}

uint64_t sub_10001C740(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10001C3DC;

  return v7();
}

uint64_t sub_10001C82C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001C86C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001ECD8;

  return sub_10001C740(a1, v4, v5, v6);
}

uint64_t sub_10001C938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000028DC(&qword_1000555B0, &qword_100048360);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10000E06C(a3, v23 - v10, &qword_1000555B0, &qword_100048360);
  v12 = sub_10004104C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000A798(v11, &qword_1000555B0, &qword_100048360);
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

  sub_10004103C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_100040FDC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_100040EBC() + 32;
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

    sub_10000A798(a3, &qword_1000555B0, &qword_100048360);

    return v21;
  }

LABEL_8:
  sub_10000A798(a3, &qword_1000555B0, &qword_100048360);
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

uint64_t sub_10001CC34(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001CD2C;

  return v6(a1);
}

uint64_t sub_10001CD2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001CE24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001CE5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001ECD8;

  return sub_10001CC34(a1, v4);
}

uint64_t sub_10001CF14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001C3DC;

  return sub_10001CC34(a1, v4);
}

uint64_t sub_10001CFCC(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_10003FFCC();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_10003FFEC();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  sub_1000028DC(&qword_100055618, &qword_100048458);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  sub_10004101C();
  v2[17] = sub_10004100C();
  v6 = sub_100040FDC();
  v2[18] = v6;
  v2[19] = v5;

  return _swift_task_switch(sub_10001D160, v6, v5);
}

uint64_t sub_10001D160()
{
  sub_10004029C();
  if (qword_100054610 != -1)
  {
    swift_once();
  }

  v1 = sub_10004039C();
  v0[20] = sub_10000A760(v1, qword_100058E28);
  v2 = sub_10004037C();
  v3 = sub_1000410AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing onboarding state..", v4, 2u);
  }

  v5 = v0[5];
  v6 = v0[6];
  sub_100005DE4(v0 + 2, v5);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_10001D2E0;
  v8 = v0[8];

  return dispatch thunk of OnboardingServiceProtocol.refreshOnboarding(for:)(v8, v5, v6);
}

uint64_t sub_10001D2E0()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_10001D858;
  }

  else
  {
    v5 = sub_10001D41C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10001D41C()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = *(v3 + 56);
  v0[23] = v4;
  v0[24] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v5 = sub_10004037C();
  v6 = sub_1000410AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Getting onboarding state..", v7, 2u);
  }

  v8 = v0[5];
  v9 = v0[6];
  sub_100005DE4(v0 + 2, v8);
  v10 = swift_task_alloc();
  v0[25] = v10;
  *v10 = v0;
  v10[1] = sub_10001D578;
  v11 = v0[15];
  v12 = v0[8];

  return dispatch thunk of OnboardingServiceProtocol.describeOnboarding2(for:)(v11, v12, v8, v9);
}

uint64_t sub_10001D578()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_10001DAB4;
  }

  else
  {
    v5 = sub_10001D6B4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10001D6B4()
{
  v1 = v0[23];
  v2 = v0[16];
  v3 = v0[15];
  v4 = v0[12];

  v5 = 1;
  v1(v3, 0, 1, v4);
  sub_10001EC00(v3, v2, &qword_100055618, &qword_100048458);
  v6 = v0[16];
  v7 = v0[12];
  v8 = v0[13];
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    v9 = v0[14];
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    (*(v8 + 16))(v9, v6, v7);
    sub_10003FFDC();
    (*(v8 + 8))(v9, v7);
    v5 = sub_10003FFBC();
    (*(v11 + 8))(v10, v12);
    v6 = v0[16];
  }

  sub_10000A798(v6, &qword_100055618, &qword_100048458);
  sub_100006AC8(v0 + 2);

  v13 = v0[1];

  return v13(v5 & 1);
}

uint64_t sub_10001D858()
{
  swift_errorRetain();
  v1 = sub_10004037C();
  v2 = sub_1000410BC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error refreshing onboarding state for player: %@", v3, 0xCu);
    sub_10000A798(v4, &qword_1000555B8, &qword_100048AE0);
  }

  else
  {
  }

  v6 = v0[16];
  v7 = v0[12];
  v8 = v0[13];
  v9 = *(v8 + 56);
  v0[23] = v9;
  v0[24] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v6, 1, 1, v7);
  v10 = sub_10004037C();
  v11 = sub_1000410AC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Getting onboarding state..", v12, 2u);
  }

  v13 = v0[5];
  v14 = v0[6];
  sub_100005DE4(v0 + 2, v13);
  v15 = swift_task_alloc();
  v0[25] = v15;
  *v15 = v0;
  v15[1] = sub_10001D578;
  v16 = v0[15];
  v17 = v0[8];

  return dispatch thunk of OnboardingServiceProtocol.describeOnboarding2(for:)(v16, v17, v13, v14);
}

uint64_t sub_10001DAB4()
{

  swift_errorRetain();
  v1 = sub_10004037C();
  v2 = sub_1000410BC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error getting onboarding state for player: %@", v3, 0xCu);
    sub_10000A798(v4, &qword_1000555B8, &qword_100048AE0);
  }

  else
  {
  }

  v6 = v0[16];
  v7 = v0[12];
  v8 = v0[13];
  v9 = 1;
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    v10 = v0[14];
    v12 = v0[10];
    v11 = v0[11];
    v13 = v0[9];
    (*(v8 + 16))(v10, v6, v7);
    sub_10003FFDC();
    (*(v8 + 8))(v10, v7);
    v9 = sub_10003FFBC();
    (*(v12 + 8))(v11, v13);
    v6 = v0[16];
  }

  sub_10000A798(v6, &qword_100055618, &qword_100048458);
  sub_100006AC8(v0 + 2);

  v14 = v0[1];

  return v14(v9 & 1);
}

uint64_t sub_10001DD14(uint64_t a1)
{
  v1[16] = a1;
  sub_1000028DC(&qword_100054A38, &unk_100049280);
  v1[17] = swift_task_alloc();
  v2 = sub_10003FE2C();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_10004101C();
  v1[22] = sub_10004100C();
  v4 = sub_100040FDC();
  v1[23] = v4;
  v1[24] = v3;

  return _swift_task_switch(sub_10001DE4C, v4, v3);
}

uint64_t sub_10001DE4C()
{
  v1 = [*(v0 + 128) URL];
  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    v6 = v1;
    sub_10003FE0C();

    (*(v5 + 16))(v2, v3, v4);
    sub_100010770(v2, (v0 + 64));
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    *(v0 + 200) = v8;
    *(v0 + 208) = v7;
    v9 = *(v0 + 96);
    v10 = *(v0 + 104);
    *(v0 + 216) = v9;
    *(v0 + 224) = v10;
    if (v7)
    {
      *(v0 + 112) = *(v0 + 80);

      sub_10000A798(v0 + 112, &qword_100054FF0, &unk_1000483C0);
      v11 = swift_task_alloc();
      *(v0 + 232) = v11;
      *v11 = v0;
      v11[1] = sub_10001E0F0;

      return sub_10003EE9C(v9, v10, v8, v7);
    }

    (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));
  }

  if (qword_100054610 != -1)
  {
    swift_once();
  }

  v13 = sub_10004039C();
  sub_10000A760(v13, qword_100058E28);
  v14 = sub_10004037C();
  v15 = sub_1000410BC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "_validateMessage failed to create payload", v16, 2u);
  }

  v17 = *(v0 + 8);

  return v17(0, 0xD00000000000002FLL, 0x8000000100042B60);
}

uint64_t sub_10001E0F0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = v2;

  if (v2)
  {
    swift_bridgeObjectRelease_n();
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_10001E4E0;
  }

  else
  {
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_10001E250;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10001E250()
{
  v1 = *(v0 + 248);

  if (v1)
  {
    v2 = *(v0 + 240);
    v3 = *(v0 + 248);
    v4 = *(v0 + 216);
    v5 = *(v0 + 224);
    v6 = *(v0 + 208);
    v7 = *(v0 + 144);
    v8 = *(v0 + 152);
    v9 = *(v0 + 136);
    *(v0 + 16) = *(v0 + 200);
    *(v0 + 24) = v6;
    *(v0 + 32) = v2;
    *(v0 + 40) = v3;
    *(v0 + 48) = v4;
    *(v0 + 56) = v5;
    sub_10003E7FC((v0 + 16), v9);

    if ((*(v8 + 48))(v9, 1, v7) == 1)
    {
      v11 = 0;
    }

    else
    {
      v22 = *(v0 + 144);
      v23 = *(v0 + 152);
      v24 = *(v0 + 136);
      sub_10003FDFC(v10);
      v11 = v25;
      (*(v23 + 8))(v24, v22);
    }

    v26 = *(v0 + 168);
    v27 = *(v0 + 144);
    v28 = *(v0 + 152);
    [*(v0 + 128) setURL:v11];

    (*(v28 + 8))(v26, v27);
    v12 = 0;
    v21 = 0;
  }

  else
  {

    if (qword_100054610 != -1)
    {
      swift_once();
    }

    v12 = 0xD00000000000002FLL;
    v13 = sub_10004039C();
    sub_10000A760(v13, qword_100058E28);
    v14 = sub_10004037C();
    v15 = sub_1000410BC();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 168);
    v18 = *(v0 + 144);
    v19 = *(v0 + 152);
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "_validateMessage receive nil invite code", v20, 2u);
    }

    (*(v19 + 8))(v17, v18);
    v21 = 0x8000000100042B60;
  }

  v29 = *(v0 + 8);

  return v29(v1 != 0, v12, v21);
}

uint64_t sub_10001E4E0()
{

  if (qword_100054610 != -1)
  {
    swift_once();
  }

  v1 = sub_10004039C();
  sub_10000A760(v1, qword_100058E28);
  swift_errorRetain();
  v2 = sub_10004037C();
  v3 = sub_1000410BC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "_validateMessage failed to get invite code %@", v4, 0xCu);
    sub_10000A798(v5, &qword_1000555B8, &qword_100048AE0);
  }

  else
  {
  }

  (*(v0[19] + 8))(v0[21], v0[18]);

  v7 = v0[1];

  return v7(0, 0xD00000000000002FLL, 0x8000000100042B60);
}

uint64_t sub_10001E730(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001E748()
{
  result = qword_1000555D0;
  if (!qword_1000555D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000555D0);
  }

  return result;
}

uint64_t sub_10001E794()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001E8C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *sub_10001E928(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001E98C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10001E9E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001ECD8;

  return sub_1000182AC(a1, v4, v5, v6, (v1 + 5));
}

unint64_t sub_10001EAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100055608;
  if (!qword_100055608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055608);
  }

  return result;
}

unint64_t sub_10001EAF8()
{
  result = qword_100055610;
  if (!qword_100055610)
  {
    sub_1000402EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055610);
  }

  return result;
}

void *sub_10001EB50(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_10001EBA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001EC00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000028DC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_10001EC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100055620;
  if (!qword_100055620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055620);
  }

  return result;
}

uint64_t sub_10001ECF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004027C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001EDC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004027C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ChallengeInviteInfoLoader(uint64_t a1)
{
  result = qword_100055680;
  if (!qword_100055680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001EECC(uint64_t a1)
{
  result = sub_10004027C();
  if (v2 <= 0x3F)
  {
    result = sub_10001EF50();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10001EF50()
{
  result = qword_100055690;
  if (!qword_100055690)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100055690);
  }

  return result;
}

uint64_t sub_10001EFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_10004027C();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = *(sub_1000028DC(&qword_1000555F0, &qword_1000485C0) - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v6 = sub_1000028DC(&qword_1000555F8, &unk_100048440);
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();

  return _swift_task_switch(sub_10001F174, 0, 0);
}

uint64_t sub_10001F174(uint64_t a1)
{
  sub_10004024C();
  v2 = sub_10004015C();
  v4 = v3;
  v6 = *(v1 + 160);
  v5 = *(v1 + 168);
  (*(*(v1 + 264) + 8))(*(v1 + 272), *(v1 + 256));
  if (v2 == v6 && v4 == v5)
  {
  }

  else
  {
    v8 = sub_10004133C();

    if ((v8 & 1) == 0)
    {
      v9 = *(v1 + 176);
      v10 = type metadata accessor for ChallengeInviteInfoLoader(0);
      sub_100005DE4((v9 + *(v10 + 20)), *(v9 + *(v10 + 20) + 24));
      sub_10003FF5C();
      v11 = *(v1 + 136);
      v12 = *(v1 + 144);
      sub_100005DE4((v1 + 112), v11);
      sub_1000028DC(&qword_100055600, &qword_100048600);
      v13 = swift_allocObject();
      *(v1 + 280) = v13;
      *(v13 + 16) = xmmword_1000475D0;

      sub_10004014C();
      v14 = swift_task_alloc();
      *(v1 + 288) = v14;
      *v14 = v1;
      v14[1] = sub_10001F498;

      return dispatch thunk of ProfileServiceProtocol.describeProfiles(players:)(v13, v11, v12);
    }
  }

  v15 = *(v1 + 200);
  (*(*(v1 + 192) + 16))(v15, *(v1 + 176), *(v1 + 184));
  sub_100027CFC(v15, (v1 + 16));
  v16 = *(v1 + 152);
  v17 = *(v1 + 48);
  v18 = *(v1 + 56);
  v21 = *(v1 + 16);
  v22 = *(v1 + 32);

  *v16 = v21;
  *(v16 + 16) = v22;
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_10001F498(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v4 = sub_10001F894;
  }

  else
  {

    v4 = sub_10001F5B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001F5B4()
{
  v1 = *(v0 + 296);
  if (!*(v1 + 16))
  {

    goto LABEL_5;
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(*(v0 + 224) + 80);
  sub_10000E06C(v1 + ((v7 + 32) & ~v7), v2, &qword_1000555F0, &qword_1000485C0);

  sub_10001772C(v2, v3, &qword_1000555F0, &qword_1000485C0);
  sub_10000E06C(v3, v4, &qword_1000555F0, &qword_1000485C0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v8 = *(v0 + 232);
    sub_10000A798(*(v0 + 248), &qword_1000555F0, &qword_1000485C0);
    v9 = sub_10000A798(v8, &qword_1000555F0, &qword_1000485C0);
LABEL_5:
    sub_100022D6C(v9, v10, v11);
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    sub_100006AC8((v0 + 112));
LABEL_7:

    v19 = *(v0 + 8);
    goto LABEL_8;
  }

  v13 = *(v0 + 304);
  v14 = *(v0 + 208);
  v15 = *(v0 + 216);
  v16 = *(v0 + 184);
  v17 = *(v0 + 192);
  (*(v17 + 32))(v15, *(v0 + 232), v16);
  (*(v17 + 16))(v14, v15, v16);
  sub_100027CFC(v14, (v0 + 64));
  v18 = *(v0 + 248);
  (*(*(v0 + 192) + 8))(*(v0 + 216), *(v0 + 184));
  sub_10000A798(v18, &qword_1000555F0, &qword_1000485C0);
  sub_100006AC8((v0 + 112));
  if (v13)
  {
    goto LABEL_7;
  }

  v21 = *(v0 + 152);
  v22 = *(v0 + 96);
  v23 = *(v0 + 104);
  v24 = *(v0 + 64);
  v25 = *(v0 + 80);

  *v21 = v24;
  *(v21 + 16) = v25;
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  v19 = *(v0 + 8);
LABEL_8:

  return v19();
}

uint64_t sub_10001F894()
{

  sub_100006AC8((v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001F960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1000400FC();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = sub_10004000C();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = sub_1000028DC(&qword_1000556C0, &qword_100048558);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  sub_1000028DC(&qword_1000556C8, &qword_100048560);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v8 = sub_1000028DC(&qword_1000556D0, &qword_100048568);
  v4[24] = v8;
  v4[25] = *(v8 - 8);
  v4[26] = swift_task_alloc();
  type metadata accessor for GameInfo(0);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v9 = sub_10004003C();
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = *(sub_1000028DC(&qword_1000556D8, &unk_100048570) - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v10 = sub_1000028DC(&qword_1000555F8, &unk_100048440);
  v4[36] = v10;
  v4[37] = *(v10 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v11 = sub_1000028DC(&qword_1000556E0, &qword_100048580);
  v4[42] = v11;
  v4[43] = *(v11 - 8);
  v4[44] = swift_task_alloc();

  return _swift_task_switch(sub_10001FDB0, 0, 0);
}

uint64_t sub_10001FDB0()
{
  v2 = v0[43];
  v1 = v0[44];
  v15 = v0[42];
  v3 = v0[10];
  v4 = type metadata accessor for ChallengeInviteInfoLoader(0);
  sub_100005DE4((v3 + *(v4 + 20)), *(v3 + *(v4 + 20) + 24));
  sub_10003FF3C();

  sub_10004017C();
  v5 = v0[5];
  v6 = v0[6];
  sub_100005DE4(v0 + 2, v5);
  sub_10004024C();
  sub_1000028DC(&qword_1000556E8, &qword_100048588);
  v7 = sub_10003FF7C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v0[45] = v10;
  *(v10 + 16) = xmmword_1000475D0;
  v11 = *(v2 + 16);
  v0[46] = v11;
  v0[47] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v10 + v9, v1, v15);
  (*(v8 + 104))(v10 + v9, enum case for ChallengeFilter.challenge(_:), v7);
  v12 = swift_task_alloc();
  v0[48] = v12;
  *v12 = v0;
  v12[1] = sub_10001FFD8;
  v13 = v0[41];

  return dispatch thunk of ChallengeServiceProtocol.refreshChallenges(player:filters:)(v13, v10, v5, v6);
}

uint64_t sub_10001FFD8()
{
  v2 = *v1;
  v2[49] = v0;

  v3 = v2[41];
  v4 = v2[37];
  v5 = v2[36];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);

    v9 = sub_100022070;
  }

  else
  {
    v2[50] = v7;
    v2[51] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    v9 = sub_100020184;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100020184()
{
  v1 = *(v0 + 368);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 336);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_100005DE4((v0 + 16), v5);
  *(v0 + 416) = sub_1000028DC(&qword_1000556F0, &qword_100048590);
  *(v0 + 424) = *(v3 + 72);
  v7 = *(v3 + 80);
  *(v0 + 616) = v7;
  v8 = (v7 + 32) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 432) = v9;
  *(v9 + 16) = xmmword_1000475D0;
  v1(v9 + v8, v2, v4);
  v10 = swift_task_alloc();
  *(v0 + 440) = v10;
  *v10 = v0;
  v10[1] = sub_1000202C4;

  return dispatch thunk of ChallengeServiceProtocol.describe(challenges:)(v9, v5, v6);
}

uint64_t sub_1000202C4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v4 = sub_1000221F0;
  }

  else
  {
    v4 = sub_100020400;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100020400()
{
  v1 = v0[56];
  if (!*(v1 + 16))
  {

    goto LABEL_5;
  }

  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v0[29];
  v6 = v0[30];
  v7 = *(v0[32] + 80);
  sub_10000E06C(v1 + ((v7 + 32) & ~v7), v2, &qword_1000556D8, &unk_100048570);

  sub_10001772C(v2, v3, &qword_1000556D8, &unk_100048570);
  sub_10000E06C(v3, v4, &qword_1000556D8, &unk_100048570);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v8 = v0[33];
    sub_10000A798(v0[35], &qword_1000556D8, &unk_100048570);
    v9 = sub_10000A798(v8, &qword_1000556D8, &unk_100048570);
LABEL_5:
    v13 = v0[43];
    v12 = v0[44];
    v14 = v0[42];
    sub_100022D6C(v9, v10, v11);
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
    (*(v13 + 8))(v12, v14);
    sub_100006AC8(v0 + 2);

    v16 = v0[1];

    return v16();
  }

  (*(v0[30] + 32))(v0[31], v0[33], v0[29]);
  v18 = sub_10004002C();
  v0[58] = v18;
  v19 = swift_task_alloc();
  v0[59] = v19;
  *v19 = v0;
  v19[1] = sub_100020740;
  v20 = v0[28];
  v21 = v0[26];

  return sub_100022DC0(v20, v21, v18);
}

uint64_t sub_100020740()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_100022370;
  }

  else
  {
    v2 = sub_100020874;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100020874()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100005DE4(v0 + 2, v1);
  sub_1000028DC(&qword_100055700, &qword_1000485A0);
  v3 = sub_1000400BC();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[61] = v6;
  *(v6 + 16) = xmmword_1000475D0;
  sub_10004001C();
  (*(v4 + 104))(v6 + v5, enum case for ChallengeDefinitionFilter.definition(_:), v3);
  v7 = swift_task_alloc();
  v0[62] = v7;
  *v7 = v0;
  v7[1] = sub_100020A10;
  v8 = v0[26];

  return dispatch thunk of ChallengeServiceProtocol.refreshChallengeDefinitions(game:filters:)(v8, v6, v1, v2);
}

uint64_t sub_100020A10()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_10002252C;
  }

  else
  {
    v2 = sub_100020B44;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100020B44()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100005DE4(v0 + 2, v1);
  sub_1000028DC(&qword_100055708, &qword_1000485A8);
  sub_1000028DC(&qword_100055710, &qword_1000485B0);
  v3 = swift_allocObject();
  v0[64] = v3;
  *(v3 + 16) = xmmword_1000475D0;
  sub_10004001C();
  v4 = swift_task_alloc();
  v0[65] = v4;
  *v4 = v0;
  v4[1] = sub_100020CB0;

  return dispatch thunk of ChallengeServiceProtocol.describeChallengeDefinitions(challengeDefinitions:)(v3, v1, v2);
}

uint64_t sub_100020CB0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = v1;

  if (v1)
  {
    v4 = sub_100022710;
  }

  else
  {
    v4 = sub_100020DF0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100020DF0()
{
  v1 = *(v0 + 528);
  if (*(v1 + 16))
  {
    v2 = *(*(v0 + 152) + 80);
    sub_10000E06C(v1 + ((v2 + 32) & ~v2), *(v0 + 184), &qword_1000556C0, &qword_100048558);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);

  (*(v7 + 56))(v4, v3, 1, v6);
  sub_10000E06C(v4, v5, &qword_1000556C8, &qword_100048560);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = *(v0 + 176);
  if (v8 == 1)
  {
    v10 = &qword_1000556C8;
    v11 = &qword_100048560;
LABEL_8:
    v17 = sub_10000A798(v9, v10, v11);
    v18 = *(v0 + 344);
    v41 = *(v0 + 336);
    v42 = *(v0 + 352);
    v19 = *(v0 + 240);
    v38 = *(v0 + 248);
    v39 = *(v0 + 280);
    v21 = *(v0 + 224);
    v20 = *(v0 + 232);
    v22 = *(v0 + 200);
    v23 = *(v0 + 208);
    v24 = *(v0 + 184);
    v25 = *(v0 + 192);
    sub_100022D6C(v17, v26, v27);
    swift_allocError();
    *v28 = 3;
    swift_willThrow();
    sub_10000A798(v24, &qword_1000556C8, &qword_100048560);
    (*(v22 + 8))(v23, v25);
    sub_100023CF0(v21);
    (*(v19 + 8))(v38, v20);
    sub_10000A798(v39, &qword_1000556D8, &unk_100048570);
    (*(v18 + 8))(v42, v41);
    sub_100006AC8((v0 + 16));

    v29 = *(v0 + 8);

    return v29();
  }

  v12 = *(v0 + 160);
  v13 = *(v0 + 168);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  sub_10001772C(v9, v13, &qword_1000556C0, &qword_100048558);
  sub_10000E06C(v13, v12, &qword_1000556C0, &qword_100048558);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    v16 = *(v0 + 160);
    sub_10000A798(*(v0 + 168), &qword_1000556C0, &qword_100048558);
    v9 = v16;
    v10 = &qword_1000556C0;
    v11 = &qword_100048558;
    goto LABEL_8;
  }

  v40 = *(v0 + 368);
  v31 = *(v0 + 352);
  v32 = *(v0 + 336);
  v33 = (*(v0 + 616) + 32) & ~*(v0 + 616);
  (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 160), *(v0 + 120));
  v34 = *(v0 + 40);
  v43 = *(v0 + 48);
  sub_100005DE4((v0 + 16), v34);
  sub_10004024C();
  v35 = swift_allocObject();
  *(v0 + 544) = v35;
  *(v35 + 16) = xmmword_1000475D0;
  v40(v35 + v33, v31, v32);
  v36 = swift_task_alloc();
  *(v0 + 552) = v36;
  *v36 = v0;
  v36[1] = sub_1000212AC;
  v37 = *(v0 + 320);

  return dispatch thunk of ChallengeServiceProtocol.listParticipantStates2(player:challenges:)(v37, v35, v34, v43);
}

uint64_t sub_1000212AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 560) = a1;
  *(v4 + 568) = v1;

  (*(v3 + 400))(*(v3 + 320), *(v3 + 288));

  if (v1)
  {
    v5 = sub_1000228F4;
  }

  else
  {
    v5 = sub_100021444;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100021444()
{
  v23 = v0;
  v1 = v0[70];
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);

    if (v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v2 = &_swiftEmptyArrayStorage;
LABEL_6:
  v3 = v0[71];
  v22 = v2;

  sub_100025E70(&v22);
  if (v3)
  {
  }

  else
  {

    v5 = v22;
    v0[72] = v22;
    v6 = v5[2];
    v7 = &_swiftEmptyArrayStorage;
    if (v6)
    {
      v8 = v0[37];
      v9 = v0[12];
      v22 = &_swiftEmptyArrayStorage;
      sub_100036648(0, v6, 0);
      v7 = v22;
      v10 = *(v9 + 16);
      v9 += 16;
      v11 = v5 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
      v20 = *(v9 + 56);
      v21 = v10;
      v12 = (v9 - 8);
      do
      {
        v13 = v0[14];
        v14 = v0[11];
        v21(v13, v11, v14);
        sub_1000400EC();
        (*v12)(v13, v14);
        v22 = v7;
        v16 = v7[2];
        v15 = v7[3];
        if (v16 >= v15 >> 1)
        {
          sub_100036648((v15 > 1), v16 + 1, 1);
          v7 = v22;
        }

        v17 = v0[39];
        v18 = v0[36];
        v7[2] = v16 + 1;
        (*(v8 + 32))(v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v17, v18);
        v11 += v20;
        --v6;
      }

      while (v6);
    }

    v0[73] = v7;
    v19 = swift_task_alloc();
    v0[74] = v19;
    *v19 = v0;
    v19[1] = sub_1000216C0;

    return sub_100023D4C(v7);
  }
}

uint64_t sub_1000216C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 600) = a1;
  *(v3 + 608) = v1;

  if (v1)
  {

    v4 = sub_100022B30;
  }

  else
  {

    v4 = sub_100021814;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100021814()
{
  v1 = v0[72];
  sub_1000276D4(v0[28], v0[27]);
  result = sub_10003FFFC();
  v81 = result;
  v85 = v3;
  v89 = *(v1 + 16);
  if (v89)
  {
    v4 = 0;
    v91 = v0[75];
    v83 = v0[12];
    v88 = (v83 + 8);
    v5 = v0[76];
    v86 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v6 = v0[72];
      if (v4 >= *(v6 + 16))
      {
        break;
      }

      v7 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v8 = *(v83 + 72);
      v9 = *(v83 + 16);
      v9(v0[13], v6 + v7 + v8 * v4, v0[11]);
      sub_1000400EC();
      v10 = sub_10004015C();
      if (v5)
      {
        v70 = v0[50];
        v87 = v0[43];
        v90 = v0[42];
        v92 = v0[44];
        v50 = v0[38];
        v51 = v0[36];
        v52 = v0[30];
        v82 = v0[31];
        v84 = v0[35];
        v78 = v0[28];
        v80 = v0[29];
        v53 = v0[25];
        v74 = v0[24];
        v76 = v0[26];
        v71 = v0[21];
        v72 = v0[23];
        v54 = v0[16];
        v66 = v0[17];
        v68 = v0[27];
        v55 = v0[15];
        v56 = v0[13];
        v57 = v0[11];

        v70(v50, v51);
        (*v88)(v56, v57);
        sub_100023CF0(v68);
        (*(v54 + 8))(v66, v55);
        sub_10000A798(v71, &qword_1000556C0, &qword_100048558);
        sub_10000A798(v72, &qword_1000556C8, &qword_100048560);
        (*(v53 + 8))(v76, v74);
        sub_100023CF0(v78);
        (*(v52 + 8))(v82, v80);
        sub_10000A798(v84, &qword_1000556D8, &unk_100048570);
        (*(v87 + 8))(v92, v90);

        sub_100006AC8(v0 + 2);

        v49 = v0[1];
        goto LABEL_26;
      }

      v12 = v10;
      v13 = v11;
      ++v4;
      (v0[50])(v0[38], v0[36]);
      if (!*(v91 + 16))
      {

LABEL_9:
        v17 = *v88;
        result = (*v88)(v0[13], v0[11]);
        if (v4 == v89)
        {
          goto LABEL_24;
        }

        v18 = v7 + v8 * v4;
        while (1)
        {
          v19 = v0[72];
          if (v4 >= *(v19 + 16))
          {
            goto LABEL_29;
          }

          v9(v0[13], v19 + v18, v0[11]);
          sub_1000400EC();
          v20 = sub_10004015C();
          v22 = v21;
          (v0[50])(v0[38], v0[36]);
          if (*(v91 + 16))
          {
            v14 = sub_100024AC4(v20, v22);
            v24 = v23;

            if (v24)
            {
              ++v4;
              goto LABEL_17;
            }
          }

          else
          {
          }

          ++v4;
          result = (v17)(v0[13], v0[11]);
          v18 += v8;
          if (v89 == v4)
          {
            goto LABEL_24;
          }
        }
      }

      v14 = sub_100024AC4(v12, v13);
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_17:
      v25 = v0[13];
      v26 = v0[11];
      v27 = (*(v91 + 56) + 48 * v14);
      v28 = v27[1];
      v79 = *v27;
      v30 = v27[2];
      v29 = v27[3];
      v32 = v27[4];
      v31 = v27[5];

      v33 = v29;

      sub_1000400DC();
      v75 = v34;
      v77 = sub_1000400CC();
      v73 = v35;
      (*v88)(v25, v26);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100032B38(0, *(v86 + 2) + 1, 1, v86);
        v86 = result;
      }

      v37 = *(v86 + 2);
      v36 = *(v86 + 3);
      if (v37 >= v36 >> 1)
      {
        result = sub_100032B38((v36 > 1), v37 + 1, 1, v86);
        v86 = result;
      }

      v5 = 0;
      *(v86 + 2) = v37 + 1;
      v38 = &v86[72 * v37];
      v38[32] = (v75 & 1) == 0;
      *(v38 + 9) = *&v93[3];
      *(v38 + 33) = *v93;
      *(v38 + 5) = v79;
      *(v38 + 6) = v28;
      *(v38 + 7) = v30;
      *(v38 + 8) = v33;
      *(v38 + 9) = v32;
      *(v38 + 10) = v31;
      *(v38 + 11) = v77;
      v38[96] = v73 & 1;
      if (v4 == v89)
      {
        goto LABEL_24;
      }
    }

LABEL_29:
    __break(1u);
  }

  else
  {
    v86 = &_swiftEmptyArrayStorage;
LABEL_24:
    v39 = v0[43];
    v67 = v0[42];
    v69 = v0[44];
    v40 = v0[30];
    v63 = v0[31];
    v64 = v0[35];
    v61 = v0[28];
    v62 = v0[29];
    v65 = v0[27];
    v41 = v0[25];
    v59 = v0[24];
    v60 = v0[26];
    v58 = v0[23];
    v42 = v0[21];
    v44 = v0[16];
    v43 = v0[17];
    v45 = v0[15];
    v46 = v0[7];

    (*(v44 + 8))(v43, v45);
    sub_10000A798(v42, &qword_1000556C0, &qword_100048558);
    sub_10000A798(v58, &qword_1000556C8, &qword_100048560);
    (*(v41 + 8))(v60, v59);
    sub_100023CF0(v61);
    (*(v40 + 8))(v63, v62);
    sub_10000A798(v64, &qword_1000556D8, &unk_100048570);
    (*(v39 + 8))(v69, v67);
    sub_100027738(v65, v46);
    v47 = type metadata accessor for ChallengeDetail(0);
    v48 = (v46 + *(v47 + 20));
    *v48 = v81;
    v48[1] = v85;
    *(v46 + *(v47 + 24)) = v86;
    sub_100006AC8(v0 + 2);

    v49 = v0[1];
LABEL_26:

    return v49();
  }

  return result;
}

uint64_t sub_100022070()
{
  (*(v0[43] + 8))(v0[44], v0[42]);
  sub_100006AC8(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000221F0()
{
  (*(v0[43] + 8))(v0[44], v0[42]);
  sub_100006AC8(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100022370()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[35];
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_10000A798(v4, &qword_1000556D8, &unk_100048570);
  (*(v2 + 8))(v1, v3);
  sub_100006AC8(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10002252C()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[35];
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[28];
  v7 = v0[29];
  (*(v0[25] + 8))(v0[26], v0[24]);
  sub_100023CF0(v8);
  (*(v6 + 8))(v5, v7);
  sub_10000A798(v4, &qword_1000556D8, &unk_100048570);
  (*(v2 + 8))(v1, v3);
  sub_100006AC8(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100022710()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[35];
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[28];
  v7 = v0[29];
  (*(v0[25] + 8))(v0[26], v0[24]);
  sub_100023CF0(v8);
  (*(v6 + 8))(v5, v7);
  sub_10000A798(v4, &qword_1000556D8, &unk_100048570);
  (*(v2 + 8))(v1, v3);
  sub_100006AC8(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000228F4()
{
  v1 = v0[43];
  v14 = v0[42];
  v15 = v0[44];
  v2 = v0[30];
  v12 = v0[31];
  v13 = v0[35];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[25];
  v6 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[21];
  (*(v0[16] + 8))(v0[17], v0[15]);
  sub_10000A798(v9, &qword_1000556C0, &qword_100048558);
  sub_10000A798(v8, &qword_1000556C8, &qword_100048560);
  (*(v5 + 8))(v6, v7);
  sub_100023CF0(v4);
  (*(v2 + 8))(v12, v3);
  sub_10000A798(v13, &qword_1000556D8, &unk_100048570);
  (*(v1 + 8))(v15, v14);
  sub_100006AC8(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100022B30()
{
  v1 = v0[43];
  v14 = v0[42];
  v15 = v0[44];
  v2 = v0[30];
  v12 = v0[31];
  v13 = v0[35];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[25];
  v6 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[21];
  (*(v0[16] + 8))(v0[17], v0[15]);
  sub_10000A798(v9, &qword_1000556C0, &qword_100048558);
  sub_10000A798(v8, &qword_1000556C8, &qword_100048560);
  (*(v5 + 8))(v6, v7);
  sub_100023CF0(v4);
  (*(v2 + 8))(v12, v3);
  sub_10000A798(v13, &qword_1000556D8, &unk_100048570);
  (*(v1 + 8))(v15, v14);
  sub_100006AC8(v0 + 2);

  v10 = v0[1];

  return v10();
}

unint64_t sub_100022D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000556F8;
  if (!qword_1000556F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000556F8);
  }

  return result;
}

uint64_t sub_100022DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_10003FEEC();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = sub_10003FF2C();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v7 = sub_1000028DC(&qword_1000556D0, &qword_100048568);
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = sub_1000028DC(&qword_100055728, &qword_1000485D8);
  v4[24] = swift_task_alloc();
  sub_1000028DC(&qword_100055730, &qword_1000485E0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = *(sub_1000028DC(&qword_100055738, &qword_1000485E8) - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_100023080, 0, 0);
}

uint64_t sub_100023080()
{
  v1 = v0[10];
  v2 = type metadata accessor for ChallengeInviteInfoLoader(0);
  sub_100005DE4((v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 24));
  sub_10003FF4C();
  v3 = v0[5];
  v4 = v0[6];
  sub_100005DE4(v0 + 2, v3);
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_100023170;
  v6 = v0[9];

  return dispatch thunk of GameLibraryServiceProtocol.describe(games:)(v6, v3, v4);
}

uint64_t sub_100023170(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_100023BCC;
  }

  else
  {
    v4 = sub_100023284;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100023284()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[26];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[15];
  v7 = v0[16];
  sub_100006AC8(v0 + 2);
  v77 = *(v7 + 56);
  v77(v2, 1, 1, v6);
  v76 = *(v5 + 56);
  result = v76(v3, 1, 1, v4);
  v89 = v1;
  v85 = *(v1 + 16);
  if (!v85)
  {
LABEL_14:

LABEL_16:
    v43 = v0[28];
    v44 = v0[15];
    v45 = v0[16];
    sub_10000E06C(v0[32], v43, &qword_100055738, &qword_1000485E8);
    if ((*(v45 + 48))(v43, 1, v44) == 1)
    {
      v46 = &qword_100055738;
      v47 = &qword_1000485E8;
      v48 = v0[28];
    }

    else
    {
      v49 = v0[25];
      v50 = v0[26];
      v51 = v0[20];
      v52 = v0[21];
      (*(v0[16] + 32))(v0[17], v0[28], v0[15]);
      sub_10000E06C(v50, v49, &qword_100055730, &qword_1000485E0);
      if ((*(v52 + 48))(v49, 1, v51) != 1)
      {
        v61 = v0[32];
        v62 = v0[26];
        v64 = v0[17];
        v63 = v0[18];
        v65 = v0[15];
        v66 = v0[16];
        v67 = v0[7];
        (*(v0[21] + 32))(v0[8], v0[25], v0[20]);
        (*(v66 + 16))(v63, v64, v65);
        sub_10003CA68(v63, v67);
        (*(v66 + 8))(v64, v65);
        sub_10000A798(v62, &qword_100055730, &qword_1000485E0);
        sub_10000A798(v61, &qword_100055738, &qword_1000485E8);
LABEL_23:

        v60 = v0[1];
        goto LABEL_24;
      }

      v53 = v0[25];
      (*(v0[16] + 8))(v0[17], v0[15]);
      v46 = &qword_100055730;
      v47 = &qword_1000485E0;
      v48 = v53;
    }

    v54 = sub_10000A798(v48, v46, v47);
    v55 = v0[32];
    v56 = v0[26];
    sub_100022D6C(v54, v57, v58);
    swift_allocError();
    *v59 = 4;
    swift_willThrow();
    sub_10000A798(v56, &qword_100055730, &qword_1000485E0);
    sub_10000A798(v55, &qword_100055738, &qword_1000485E8);

    v60 = v0[1];
LABEL_24:

    return v60();
  }

  v9 = 0;
  v87 = v0[27];
  v84 = v0[23];
  v10 = v0[16];
  v82 = (v10 + 48);
  v83 = v0[21];
  v78 = (v10 + 32);
  v75 = (v10 + 16);
  v80 = (v10 + 8);
  v81 = (v83 + 8);
  v86 = v0[9];
  v11 = &qword_1000485E8;
  v79 = (v0[12] + 8);
  while (v9 < *(v89 + 16))
  {
    result = sub_10000E06C(v0[34] + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v9, v0[31], &qword_100055738, v11);
    v13 = *(v86 + 16);
    if (v9 == v13)
    {
      v42 = v0[31];

      sub_10000A798(v42, &qword_100055738, &qword_1000485E8);
      goto LABEL_16;
    }

    if (v9 >= v13)
    {
      goto LABEL_28;
    }

    v14 = v0[30];
    v15 = v0[24];
    v16 = v0[22];
    v17 = v0[20];
    v94 = v0[15];
    v18 = v0[9] + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v9;
    v19 = *(v84 + 48);
    sub_10001772C(v0[31], v15, &qword_100055738, v11);
    v91 = *(v83 + 16);
    v91(v15 + v19, v18, v17);
    v20 = *(v83 + 32);
    v20(v16, v15 + v19, v17);
    sub_10001772C(v15, v14, &qword_100055738, v11);
    v21 = *v82;
    if ((*v82)(v14, 1, v94) == 1)
    {
      v12 = v0[30];
      (*v81)(v0[22], v0[20]);
      result = sub_10000A798(v12, &qword_100055738, v11);
    }

    else
    {
      v95 = v20;
      v22 = v0[32];
      v23 = v0[29];
      v24 = v0[15];
      (*v78)(v0[19], v0[30], v24);
      sub_10000E06C(v22, v23, &qword_100055738, v11);
      if (v21(v23, 1, v24) == 1)
      {
        v25 = v0[32];
        v26 = v0[29];
        v27 = v0[26];
        v28 = v0[22];
        v29 = v11;
        v31 = v0[19];
        v30 = v0[20];
        v32 = v0[15];
        sub_10000A798(v27, &qword_100055730, &qword_1000485E0);
        sub_10000A798(v25, &qword_100055738, v29);
        sub_10000A798(v26, &qword_100055738, v29);
        v33 = v31;
        v11 = v29;
        (*v75)(v25, v33, v32);
        v77(v25, 0, 1, v32);
        v91(v27, v28, v30);
        v76(v27, 0, 1, v30);
      }

      else
      {
        sub_10000A798(v0[29], &qword_100055738, v11);
      }

      v34 = v0[13];
      v35 = v0[11];
      sub_10003FEDC();
      sub_10003FEFC();
      sub_1000277B4();
      v36 = sub_10004114C();
      v37 = *v79;
      (*v79)(v34, v35);
      if (v36)
      {
        v68 = v0[26];
        v93 = v0[22];
        v69 = v0[19];
        v90 = v0[32];
        v92 = v0[20];
        v70 = v0[18];
        v72 = v0[14];
        v71 = v0[15];
        v73 = v0[11];
        v74 = v0[7];
        v88 = v0[8];

        (*v75)(v70, v69, v71);
        sub_10003CA68(v70, v74);
        v37(v72, v73);
        (*v80)(v69, v71);
        sub_10000A798(v68, &qword_100055730, &qword_1000485E0);
        sub_10000A798(v90, &qword_100055738, &qword_1000485E8);
        v95(v88, v93, v92);
        goto LABEL_23;
      }

      v38 = v0[22];
      v40 = v0[19];
      v39 = v0[20];
      v41 = v0[15];
      v37(v0[14], v0[11]);
      (*v80)(v40, v41);
      result = (*v81)(v38, v39);
    }

    if (v85 == ++v9)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100023BCC()
{
  sub_100006AC8((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100023CF0(uint64_t a1)
{
  v2 = type metadata accessor for GameInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100023D4C(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_1000028DC(&qword_1000555F8, &unk_100048440);
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v4 = sub_10004027C();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = *(sub_1000028DC(&qword_1000555F0, &qword_1000485C0) - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_100023EF0, 0, 0);
}

uint64_t sub_100023EF0()
{
  v1 = v0[14];
  v2 = type metadata accessor for ChallengeInviteInfoLoader(0);
  sub_100005DE4((v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 24));
  sub_10003FF5C();
  v3 = v0[11];
  v4 = v0[12];
  sub_100005DE4(v0 + 8, v3);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_100023FE0;
  v6 = v0[13];

  return dispatch thunk of ProfileServiceProtocol.describeProfiles(players:)(v6, v3, v4);
}

uint64_t sub_100023FE0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_100024674;
  }

  else
  {
    v4 = sub_1000240F4;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1000240F4()
{
  v1 = *(v0 + 208);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_20:

    sub_100006AC8((v0 + 64));

    v38 = *(v0 + 8);

    v38(_swiftEmptyDictionarySingleton);
    return;
  }

  v3 = 0;
  v4 = *(v0 + 176);
  v5 = *(v0 + 152);
  v52 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v51 = (v5 + 48);
  v49 = (v5 + 32);
  v50 = (*(v0 + 128) + 8);
  v47 = (v5 + 16);
  v48 = (v5 + 8);
  v6 = *(v0 + 216);
  v45 = v4;
  v46 = *(v1 + 16);
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v10 = *(v0 + 144);
    sub_10000E06C(v52 + *(v4 + 72) * v3, v8, &qword_1000555F0, &qword_1000485C0);
    sub_10000E06C(v8, v9, &qword_1000555F0, &qword_1000485C0);
    if ((*v51)(v9, 1, v10) != 1)
    {
      break;
    }

    sub_10000A798(*(v0 + 192), &qword_1000555F0, &qword_1000485C0);
    v7 = (v0 + 184);
LABEL_4:
    ++v3;
    sub_10000A798(*v7, &qword_1000555F0, &qword_1000485C0);
    if (v2 == v3)
    {
      goto LABEL_20;
    }
  }

  (*v49)(*(v0 + 168), *(v0 + 184), *(v0 + 144));
  sub_10004024C();
  v11 = sub_10004015C();
  if (!v6)
  {
    v13 = v11;
    v14 = v12;
    v15 = v1;
    v17 = *(v0 + 160);
    v16 = *(v0 + 168);
    v18 = *(v0 + 144);
    (*v50)(*(v0 + 136), *(v0 + 120));
    (*v47)(v17, v16, v18);
    sub_100027CFC(v17, (v0 + 16));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_100024AC4(v13, v14);
    v22 = _swiftEmptyDictionarySingleton[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_30;
    }

    v26 = v21;
    if (_swiftEmptyDictionarySingleton[3] < v25)
    {
      sub_1000255A0(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_100024AC4(v13, v14);
      if ((v26 & 1) != (v27 & 1))
      {

        sub_10004136C();
        return;
      }

      v1 = v15;
      if ((v26 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_15:
      v28 = (_swiftEmptyDictionarySingleton[7] + 48 * v20);
      v30 = *(v0 + 32);
      v29 = *(v0 + 48);
      *v28 = *(v0 + 16);
      v28[1] = v30;
      v28[2] = v29;

      v4 = v45;
      v2 = v46;
LABEL_19:
      (*v48)(*(v0 + 168), *(v0 + 144));
      v6 = 0;
      v7 = (v0 + 192);
      goto LABEL_4;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v1 = v15;
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v31 = v20;
      sub_100025CC8();
      v20 = v31;
      v1 = v15;
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_17:
    _swiftEmptyDictionarySingleton[(v20 >> 6) + 8] |= 1 << v20;
    v32 = (_swiftEmptyDictionarySingleton[6] + 16 * v20);
    *v32 = v13;
    v32[1] = v14;
    v33 = (_swiftEmptyDictionarySingleton[7] + 48 * v20);
    v34 = *(v0 + 16);
    v35 = *(v0 + 48);
    v33[1] = *(v0 + 32);
    v33[2] = v35;
    *v33 = v34;
    v36 = _swiftEmptyDictionarySingleton[2];
    v24 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    v4 = v45;
    v2 = v46;
    if (v24)
    {
      goto LABEL_31;
    }

    _swiftEmptyDictionarySingleton[2] = v37;
    goto LABEL_19;
  }

  v39 = *(v0 + 192);
  v40 = *(v0 + 168);
  v42 = *(v0 + 136);
  v41 = *(v0 + 144);
  v43 = *(v0 + 120);

  (*v50)(v42, v43);
  (*v48)(v40, v41);
  sub_10000A798(v39, &qword_1000555F0, &qword_1000485C0);

  sub_100006AC8((v0 + 64));

  v44 = *(v0 + 8);

  v44();
}

uint64_t sub_100024674()
{
  sub_100006AC8((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

void sub_10002471C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[1] = a6;
  v19[2] = a7;
  v20 = a1;
  v7 = sub_1000028DC(&qword_100055748, &qword_100048608);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  v11 = [objc_opt_self() proxyForLocalPlayer];
  v12 = [v11 challengeServicePrivate];

  v13 = sub_100040E6C();
  v14 = sub_100040E6C();
  v15 = sub_100040E6C();
  (*(v8 + 16))(v10, v20, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v16, v10, v7);
  aBlock[4] = sub_1000278A0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100024A2C;
  aBlock[3] = &unk_1000536A8;
  v18 = _Block_copy(aBlock);

  [v12 getLeaderboardChallengeInviteStatusWithChallengeID:v13 inviteCode:v14 playerID:v15 completionHandler:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_100024970(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    sub_1000028DC(&qword_100055748, &qword_100048608);
    return sub_100040FEC();
  }

  else
  {
    if (a2)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    if (a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = 0xE000000000000000;
    }

    sub_1000027A4(v4, v5);
    sub_1000028DC(&qword_100055748, &qword_100048608);
    return sub_100040FFC();
  }
}

double sub_100024A2C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_100040E9C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);

  return result;
}

unint64_t sub_100024AC4(uint64_t a1, uint64_t a2)
{
  sub_1000413CC();
  sub_100040EDC();
  v4 = sub_1000413EC();

  return sub_100024BC4(a1, a2, v4);
}

unint64_t sub_100024B3C(uint64_t a1)
{
  v2 = sub_1000413BC();

  return sub_100024C7C(a1, v2);
}

unint64_t sub_100024B80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004116C(*(v2 + 40));

  return sub_100024CE8(a1, v4);
}

unint64_t sub_100024BC4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10004133C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100024C7C(uint64_t a1, uint64_t a2)
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

unint64_t sub_100024CE8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10002794C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10004117C();
      sub_10001E6DC(v8);
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

uint64_t sub_100024DB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000028DC(&qword_1000546F0, &unk_100046B20);
  result = sub_10004121C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      v32 = v22[1];
      v33 = *v22;
      result = sub_1000413BC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 32 * v15);
      *v16 = v33;
      v16[1] = v32;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10002501C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000028DC(&qword_1000546E0, &qword_100046B10);
  v37 = v4;
  result = sub_10004121C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1000413CC();
      sub_100040EDC();
      result = sub_1000413EC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1000252DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000028DC(&qword_1000546D8, &qword_1000485F0);
  v36 = v4;
  v6 = sub_10004121C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_100040E9C();
      sub_1000413CC();
      sub_100040EDC();
      v25 = sub_1000413EC();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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
}

uint64_t sub_1000255A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000028DC(&qword_100055718, &qword_1000485C8);
  v38 = v4;
  result = sub_10004121C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 48 * v21);
      v25 = v24[1];
      v42 = *v24;
      v43 = *v22;
      v26 = v24[3];
      v27 = v24[5];
      v40 = v24[4];
      v41 = v24[2];
      if ((v38 & 1) == 0)
      {
      }

      sub_1000413CC();
      sub_100040EDC();
      result = sub_1000413EC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v43;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 48 * v15);
      *v17 = v42;
      v17[1] = v25;
      v17[2] = v41;
      v17[3] = v26;
      v12 = v39;
      v17[4] = v40;
      v17[5] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_100025898()
{
  v1 = v0;
  sub_1000028DC(&qword_1000546F0, &unk_100046B20);
  v2 = *v0;
  v3 = sub_10004120C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v20[1] = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 32 * v14);
      v18 = *v17;
      v19 = v17[1];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v20 = (*(v4 + 56) + 32 * v14);
      *v20 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1000259F0()
{
  v1 = v0;
  sub_1000028DC(&qword_1000546E0, &qword_100046B10);
  v2 = *v0;
  v3 = sub_10004120C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

id sub_100025B68()
{
  v1 = v0;
  sub_1000028DC(&qword_1000546D8, &qword_1000485F0);
  v2 = *v0;
  v3 = sub_10004120C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_100025CC8()
{
  v1 = v0;
  sub_1000028DC(&qword_100055718, &qword_1000485C8);
  v2 = *v0;
  v3 = sub_10004120C();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[4];
        v28 = v22[5];
        v29 = (*(v4 + 48) + v18);
        *v29 = v21;
        v29[1] = v20;
        v30 = (*(v4 + 56) + v17);
        *v30 = v23;
        v30[1] = v24;
        v30[2] = v25;
        v30[3] = v26;
        v30[4] = v27;
        v30[5] = v28;
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

void sub_100025E70(uint64_t *a1)
{
  v2 = *(sub_1000400FC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10002779C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100025F18(v5);
  *a1 = v3;
}

void sub_100025F18(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_10004131C(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000400FC();
        v6 = sub_100040FBC();
        v6[2] = v5;
      }

      v7 = *(sub_1000400FC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100026308(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100026044(0, v2, 1, a1);
  }
}

void sub_100026044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v53 = sub_1000400FC();
  __chkstk_darwin(v53);
  v47 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v37 - v10;
  v13.n128_f64[0] = __chkstk_darwin(v11);
  v51 = &v37 - v14;
  v39 = a2;
  if (a3 != a2)
  {
    v15 = *a4;
    v17 = *(v12 + 16);
    v16 = v12 + 16;
    v18 = *(v16 + 56);
    v48 = (v16 - 8);
    v49 = v17;
    v50 = v16;
    v45 = (v16 + 16);
    v46 = v15;
    v19 = (v15 + v18 * (a3 - 1));
    v44 = -v18;
    v20 = a1 - a3;
    v38 = v18;
    v21 = v15 + v18 * a3;
LABEL_5:
    v42 = v19;
    v43 = a3;
    v40 = v21;
    v41 = v20;
    v54 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v51;
      v24 = v53;
      v25 = v49;
      (v49)(v51, v21, v53, v13);
      v26 = v52;
      v25(v52, v22, v24);
      v27 = sub_1000400CC();
      v55 = v28;
      v29 = sub_1000400CC();
      if (v30)
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v29;
      }

      v32 = *v48;
      (*v48)(v26, v24);
      v32(v23, v24);
      if ((v55 & 1) != 0 || v27 >= v31)
      {
LABEL_4:
        a3 = v43 + 1;
        v19 = &v42[v38];
        v20 = v41 - 1;
        v21 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v33 = *v45;
      v34 = v47;
      v35 = v53;
      (*v45)(v47, v21, v53);
      swift_arrayInitWithTakeFrontToBack();
      v33(v22, v34, v35);
      v22 += v44;
      v21 += v44;
      if (__CFADD__(v54++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100026308(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v141 = a1;
  v162 = sub_1000400FC();
  v9 = *(v162 - 8);
  __chkstk_darwin(v162);
  v145 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v155 = &v134 - v12;
  __chkstk_darwin(v13);
  v158 = &v134 - v14;
  __chkstk_darwin(v15);
  v157 = &v134 - v16;
  __chkstk_darwin(v17);
  v151 = &v134 - v18;
  __chkstk_darwin(v19);
  v150 = &v134 - v20;
  __chkstk_darwin(v21);
  v138 = &v134 - v22;
  v24.n128_f64[0] = __chkstk_darwin(v23);
  v137 = &v134 - v25;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = &_swiftEmptyArrayStorage;
LABEL_105:
    v5 = *v141;
    if (!*v141)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_107:
      v165 = v28;
      v130 = *(v28 + 2);
      if (v130 >= 2)
      {
        while (*a3)
        {
          v131 = *&v28[16 * v130];
          v132 = *&v28[16 * v130 + 24];
          sub_100026E24((*a3 + *(v9 + 9) * v131), (*a3 + *(v9 + 9) * *&v28[16 * v130 + 16]), (*a3 + *(v9 + 9) * v132), v5);
          if (v6)
          {
            goto LABEL_115;
          }

          if (v132 < v131)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_1000274D8(v28);
          }

          if (v130 - 2 >= *(v28 + 2))
          {
            goto LABEL_131;
          }

          v133 = &v28[16 * v130];
          *v133 = v131;
          *(v133 + 1) = v132;
          v165 = v28;
          sub_10002744C(v130 - 1);
          v28 = v165;
          v130 = *(v165 + 2);
          if (v130 <= 1)
          {
            goto LABEL_115;
          }
        }

        goto LABEL_141;
      }

LABEL_115:

      return;
    }

LABEL_137:
    v28 = sub_1000274D8(v28);
    goto LABEL_107;
  }

  v135 = a4;
  v27 = 0;
  v160 = (v9 + 8);
  v161 = v9 + 16;
  v159 = (v9 + 32);
  v28 = &_swiftEmptyArrayStorage;
  v142 = a3;
  v136 = v9;
  while (1)
  {
    v143 = v28;
    if (v27 + 1 >= v26)
    {
      v44 = v27 + 1;
    }

    else
    {
      v152 = v26;
      v29 = v9;
      v140 = v6;
      v30 = *(v9 + 9);
      v5 = *a3 + v30 * (v27 + 1);
      v164 = *a3;
      v31 = v164;
      v32 = *(v9 + 2);
      v9 = v137;
      v33 = v162;
      v32(v137, v5, v162, v24);
      v34 = v31 + v30 * v27;
      v35 = v138;
      v154 = v32;
      (v32)(v138, v34, v33);
      v36 = sub_1000400CC();
      LODWORD(v163) = v37;
      v38 = sub_1000400CC();
      v40 = 0x7FFFFFFFFFFFFFFFLL;
      if ((v39 & 1) == 0)
      {
        v40 = v38;
      }

      LODWORD(v156) = (v36 < v40) & ~v163;
      v41 = *(v29 + 1);
      v41(v35, v33);
      v153 = v41;
      v41(v9, v33);
      v139 = v27;
      v42 = v27 + 2;
      v163 = v30;
      v43 = v164 + v30 * (v27 + 2);
      while (1)
      {
        v44 = v152;
        if (v152 == v42)
        {
          break;
        }

        v45 = v150;
        v9 = v162;
        v46 = v154;
        v154(v150, v43, v162);
        v47 = v151;
        v46(v151, v5, v9);
        v48 = sub_1000400CC();
        LODWORD(v164) = v49;
        v50 = sub_1000400CC();
        if (v51)
        {
          v52 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = v50;
        }

        v53 = v153;
        (v153)(v47, v9);
        v53(v45, v9);
        ++v42;
        v43 += v163;
        v5 += v163;
        if (v156 == (v164 & 1 | (v48 >= v52)))
        {
          v44 = v42 - 1;
          break;
        }
      }

      v6 = v140;
      a3 = v142;
      v28 = v143;
      v27 = v139;
      if (!v156)
      {
        goto LABEL_28;
      }

      if (v44 < v139)
      {
        goto LABEL_134;
      }

      if (v139 < v44)
      {
        v54 = v163 * (v44 - 1);
        v5 = v44 * v163;
        v152 = v44;
        v55 = v44;
        v56 = v139;
        v57 = v139 * v163;
        do
        {
          if (v56 != --v55)
          {
            v59 = *a3;
            if (!v59)
            {
              goto LABEL_140;
            }

            v60 = *v159;
            (*v159)(v145, v59 + v57, v162);
            if (v57 < v54 || v59 + v57 >= (v59 + v5))
            {
              v58 = v162;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v58 = v162;
              if (v57 != v54)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v60((v59 + v54), v145, v58);
            a3 = v142;
            v28 = v143;
          }

          ++v56;
          v54 -= v163;
          v5 -= v163;
          v57 += v163;
        }

        while (v56 < v55);
        v6 = v140;
        v9 = v136;
        v27 = v139;
        v44 = v152;
      }

      else
      {
LABEL_28:
        v9 = v136;
      }
    }

    v61 = a3[1];
    if (v44 >= v61)
    {
      goto LABEL_39;
    }

    if (__OFSUB__(v44, v27))
    {
      goto LABEL_133;
    }

    if (v44 - v27 >= v135)
    {
LABEL_39:
      v5 = v44;
      if (v44 < v27)
      {
        goto LABEL_132;
      }

      goto LABEL_40;
    }

    if (__OFADD__(v27, v135))
    {
      goto LABEL_135;
    }

    if (v27 + v135 >= v61)
    {
      v5 = a3[1];
    }

    else
    {
      v5 = v27 + v135;
    }

    if (v5 < v27)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    if (v44 == v5)
    {
      goto LABEL_39;
    }

    v140 = v6;
    v108 = *a3;
    v109 = *(v9 + 9);
    v156 = *(v9 + 2);
    v110 = v108 + v109 * (v44 - 1);
    v153 = -v109;
    v139 = v27;
    v111 = v27 - v44;
    v154 = v108;
    v144 = v109;
    v112 = v108 + v44 * v109;
    v113 = v162;
    v146 = v5;
LABEL_92:
    v152 = v44;
    v147 = v112;
    v148 = v111;
    v114 = v112;
    v115 = v111;
    v149 = v110;
    v116 = v110;
LABEL_93:
    v163 = v115;
    v117 = v156;
    v118 = v157;
    (v156)(v157, v114, v113, v24);
    v119 = v158;
    v117(v158, v116, v113);
    v120 = sub_1000400CC();
    LODWORD(v164) = v121;
    v122 = sub_1000400CC();
    v124 = (v123 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v122;
    v125 = *v160;
    (*v160)(v119, v113);
    v125(v118, v113);
    if ((v164 & 1) == 0 && v120 < v124)
    {
      break;
    }

    v113 = v162;
LABEL_91:
    v44 = v152 + 1;
    v110 = &v149[v144];
    v111 = v148 - 1;
    v5 = v146;
    v112 = &v147[v144];
    if (v152 + 1 != v146)
    {
      goto LABEL_92;
    }

    v6 = v140;
    a3 = v142;
    v9 = v136;
    v28 = v143;
    v27 = v139;
    if (v146 < v139)
    {
      goto LABEL_132;
    }

LABEL_40:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1000275D0(0, *(v28 + 2) + 1, 1, v28);
    }

    v63 = *(v28 + 2);
    v62 = *(v28 + 3);
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      v28 = sub_1000275D0((v62 > 1), v63 + 1, 1, v28);
    }

    *(v28 + 2) = v64;
    v65 = &v28[16 * v63];
    *(v65 + 4) = v27;
    *(v65 + 5) = v5;
    v66 = *v141;
    if (!*v141)
    {
      goto LABEL_142;
    }

    v146 = v5;
    if (v63)
    {
      while (2)
      {
        v5 = v64 - 1;
        if (v64 >= 4)
        {
          v71 = &v28[16 * v64 + 32];
          v72 = *(v71 - 64);
          v73 = *(v71 - 56);
          v77 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          if (v77)
          {
            goto LABEL_119;
          }

          v76 = *(v71 - 48);
          v75 = *(v71 - 40);
          v77 = __OFSUB__(v75, v76);
          v69 = v75 - v76;
          v70 = v77;
          if (v77)
          {
            goto LABEL_120;
          }

          v78 = &v28[16 * v64];
          v80 = *v78;
          v79 = *(v78 + 1);
          v77 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v77)
          {
            goto LABEL_122;
          }

          v77 = __OFADD__(v69, v81);
          v82 = v69 + v81;
          if (v77)
          {
            goto LABEL_125;
          }

          if (v82 >= v74)
          {
            v100 = &v28[16 * v5 + 32];
            v102 = *v100;
            v101 = *(v100 + 1);
            v77 = __OFSUB__(v101, v102);
            v103 = v101 - v102;
            if (v77)
            {
              goto LABEL_129;
            }

            if (v69 < v103)
            {
              v5 = v64 - 2;
            }
          }

          else
          {
LABEL_59:
            if (v70)
            {
              goto LABEL_121;
            }

            v83 = &v28[16 * v64];
            v85 = *v83;
            v84 = *(v83 + 1);
            v86 = __OFSUB__(v84, v85);
            v87 = v84 - v85;
            v88 = v86;
            if (v86)
            {
              goto LABEL_124;
            }

            v89 = &v28[16 * v5 + 32];
            v91 = *v89;
            v90 = *(v89 + 1);
            v77 = __OFSUB__(v90, v91);
            v92 = v90 - v91;
            if (v77)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v87, v92))
            {
              goto LABEL_128;
            }

            if (v87 + v92 < v69)
            {
              goto LABEL_73;
            }

            if (v69 < v92)
            {
              v5 = v64 - 2;
            }
          }
        }

        else
        {
          if (v64 == 3)
          {
            v67 = *(v28 + 4);
            v68 = *(v28 + 5);
            v77 = __OFSUB__(v68, v67);
            v69 = v68 - v67;
            v70 = v77;
            goto LABEL_59;
          }

          v93 = &v28[16 * v64];
          v95 = *v93;
          v94 = *(v93 + 1);
          v77 = __OFSUB__(v94, v95);
          v87 = v94 - v95;
          v88 = v77;
LABEL_73:
          if (v88)
          {
            goto LABEL_123;
          }

          v96 = &v28[16 * v5];
          v98 = *(v96 + 4);
          v97 = *(v96 + 5);
          v77 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v77)
          {
            goto LABEL_126;
          }

          if (v99 < v87)
          {
            break;
          }
        }

        v104 = v5 - 1;
        if (v5 - 1 >= v64)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v105 = *&v28[16 * v104 + 32];
        v106 = *&v28[16 * v5 + 40];
        sub_100026E24((*a3 + *(v9 + 9) * v105), (*a3 + *(v9 + 9) * *&v28[16 * v5 + 32]), (*a3 + *(v9 + 9) * v106), v66);
        if (v6)
        {
          goto LABEL_115;
        }

        if (v106 < v105)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1000274D8(v28);
        }

        if (v104 >= *(v28 + 2))
        {
          goto LABEL_118;
        }

        v107 = &v28[16 * v104];
        *(v107 + 4) = v105;
        *(v107 + 5) = v106;
        v165 = v28;
        sub_10002744C(v5);
        v28 = v165;
        v64 = *(v165 + 2);
        if (v64 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v26 = a3[1];
    v27 = v146;
    if (v146 >= v26)
    {
      goto LABEL_105;
    }
  }

  v113 = v162;
  v126 = v163;
  if (v154)
  {
    v127 = *v159;
    v128 = v155;
    (*v159)(v155, v114, v162);
    swift_arrayInitWithTakeFrontToBack();
    v127(v116, v128, v113);
    v116 += v153;
    v114 += v153;
    v129 = __CFADD__(v126, 1);
    v115 = v126 + 1;
    if (v129)
    {
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_100026E24(char *a1, char *a2, char *a3, char *a4)
{
  v74 = sub_1000400FC();
  v8 = *(v74 - 8);
  __chkstk_darwin(v74);
  v69 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v68 = &v60 - v11;
  __chkstk_darwin(v12);
  v71 = &v60 - v13;
  __chkstk_darwin(v14);
  v70 = &v60 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v18 = a2;
  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v19 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v17 != -1)
  {
    v20 = (a2 - a1) / v17;
    v77 = a1;
    v76 = a4;
    if (v20 < v19 / v17)
    {
      v21 = v20 * v17;
      if (a4 < a1 || &a1[v21] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v18 = a2;
LABEL_17:
      v69 = &a4[v21];
      v75 = &a4[v21];
      if (v21 >= 1 && v18 < a3)
      {
        v24 = *(v8 + 16);
        v67 = a3;
        v68 = (v8 + 16);
        v65 = (v8 + 8);
        v66 = v24;
        v64 = v17;
        while (1)
        {
          v25 = v70;
          v73 = v18;
          v26 = v74;
          v27 = v66;
          (v66)(v70);
          v28 = v71;
          v72 = a4;
          v27(v71, a4, v26);
          v29 = sub_1000400CC();
          v31 = v30;
          v32 = sub_1000400CC();
          if (v33)
          {
            v34 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v32;
          }

          v35 = *v65;
          (*v65)(v28, v26);
          v35(v25, v26);
          if ((v31 & 1) == 0 && v29 < v34)
          {
            v36 = v64;
            v37 = &v64[v73];
            if (a1 < v73 || a1 >= v37)
            {
              swift_arrayInitWithTakeFrontToBack();
              v18 = v37;
              a4 = v72;
              v38 = v67;
            }

            else
            {
              a4 = v72;
              v38 = v67;
              if (a1 != v73)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v18 = v37;
            }

            goto LABEL_39;
          }

          v36 = v64;
          a4 = &v64[v72];
          if (a1 < v72 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v18 = v73;
            v38 = v67;
          }

          else
          {
            v18 = v73;
            v38 = v67;
            if (a1 != v72)
            {
              v39 = v73;
              swift_arrayInitWithTakeBackToFront();
              v18 = v39;
              v76 = a4;
              goto LABEL_39;
            }
          }

          v76 = a4;
LABEL_39:
          a1 = &v36[a1];
          v77 = a1;
          if (a4 >= v69 || v18 >= v38)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_68;
    }

    v22 = v19 / v17 * v17;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_44:
        v40 = &a4[v22];
        if (v22 >= 1)
        {
          v64 = (v8 + 8);
          v65 = (v8 + 16);
          v41 = -v17;
          v42 = &a4[v22];
          v72 = a4;
          v63 = a1;
          v66 = -v17;
          while (2)
          {
            while (1)
            {
              v61 = v40;
              v43 = &v18[v41];
              v73 = &v18[v41];
              v67 = v18;
              while (1)
              {
                if (v18 <= a1)
                {
                  v77 = v18;
                  v75 = v61;
                  goto LABEL_68;
                }

                v44 = a3;
                v62 = v40;
                v45 = *v65;
                v46 = v68;
                v71 = &v42[v41];
                v47 = v74;
                (v45)(v68);
                v48 = v69;
                (v45)(v69, v43, v47);
                v70 = sub_1000400CC();
                v50 = v49;
                v51 = sub_1000400CC();
                v53 = (v52 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v51;
                v54 = *v64;
                (*v64)(v48, v47);
                v54(v46, v47);
                if ((v50 & 1) == 0 && v70 < v53)
                {
                  break;
                }

                v56 = v71;
                v55 = v72;
                v40 = v71;
                v41 = v66;
                a3 = &v44[v66];
                if (v44 < v42 || a3 >= v42)
                {
                  swift_arrayInitWithTakeFrontToBack();
                  v43 = v73;
                  a1 = v63;
                }

                else
                {
                  v43 = v73;
                  a1 = v63;
                  if (v44 != v42)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                v42 = v40;
                v18 = v67;
                if (v56 <= v55)
                {
                  goto LABEL_66;
                }
              }

              v41 = v66;
              a3 = &v44[v66];
              v57 = v72;
              if (v44 < v67 || a3 >= v67)
              {
                break;
              }

              v18 = v73;
              v40 = v62;
              a1 = v63;
              if (v44 != v67)
              {
                v58 = v73;
                swift_arrayInitWithTakeBackToFront();
                v18 = v58;
              }

              if (v42 <= v57)
              {
                goto LABEL_66;
              }
            }

            v59 = v73;
            swift_arrayInitWithTakeFrontToBack();
            v18 = v59;
            v40 = v62;
            a1 = v63;
            if (v42 > v57)
            {
              continue;
            }

            break;
          }
        }

LABEL_66:
        v77 = v18;
        v75 = v40;
LABEL_68:
        sub_1000274EC(&v77, &v76, &v75);
        return;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a2;
    goto LABEL_44;
  }

LABEL_71:
  __break(1u);
}

uint64_t sub_10002744C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000274D8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000274EC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1000400FC();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1000275D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000028DC(&qword_100055720, &qword_1000485D0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1000276D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000277B4()
{
  result = qword_100055740;
  if (!qword_100055740)
  {
    sub_10003FEEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055740);
  }

  return result;
}

uint64_t sub_10002780C()
{
  v1 = sub_1000028DC(&qword_100055748, &qword_100048608);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000278A0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000028DC(&qword_100055748, &qword_100048608);

  return sub_100024970(a1, a2, a3);
}

uint64_t sub_100027934(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000279BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100055750;
  if (!qword_100055750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055750);
  }

  return result;
}

id sub_100027A10()
{
  result = [objc_allocWithZone(CNContactStore) init];
  qword_100055758 = result;
  return result;
}

id sub_100027A44()
{
  v0 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
  result = [v0 setStyle:1];
  qword_100055760 = v0;
  return result;
}

uint64_t sub_100027A94(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_1000028DC(&qword_100055780, &qword_1000486E8);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v13 = sub_1000028DC(&qword_100055790, qword_1000494F0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v23 - v15;
  sub_1000285F0(a5, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v17 = sub_10000A798(v12, &qword_100055780, &qword_1000486E8);
    sub_10002859C(v17, v18, v19);
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    v21 = sub_100008C70(a1, a2, a3, a4, 85, 0xE100000000000000);
  }

  else
  {
    v23[0] = a1;
    (*(v14 + 32))(v16, v12, v13);
    v21 = sub_10004013C();
    (*(v14 + 8))(v16, v13);
  }

  return v21;
}

uint64_t sub_100027CFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v81 = a2;
  v4 = sub_1000028DC(&qword_100055768, &qword_1000486D0);
  __chkstk_darwin(v4 - 8);
  v76 = v68 - v5;
  v6 = sub_10003FDCC();
  v77 = *(v6 - 8);
  v78 = v6;
  __chkstk_darwin(v6);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000028DC(&qword_100055770, &qword_1000486D8);
  __chkstk_darwin(v9 - 8);
  v11 = v68 - v10;
  v12 = sub_1000028DC(&qword_100055778, &qword_1000486E0);
  v82 = *(v12 - 8);
  v83 = v12;
  __chkstk_darwin(v12);
  v80 = v68 - v13;
  v14 = sub_1000028DC(&qword_100055780, &qword_1000486E8);
  __chkstk_darwin(v14 - 8);
  v16 = v68 - v15;
  v17 = sub_1000028DC(&qword_1000555F8, &unk_100048440);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v68 - v19;
  v21 = sub_10004026C();
  if (!v22)
  {
    sub_10002859C(v21, 0, v23);
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    v29 = sub_10004027C();
    return (*(*(v29 - 8) + 8))(a1, v29);
  }

  v79 = v21;
  v84 = v22;
  v74 = v8;
  sub_10004024C();
  v24 = sub_10004015C();
  if (v2)
  {

    v26 = sub_10004027C();
    (*(*(v26 - 8) + 8))(a1, v26);
    return (*(v18 + 8))(v20, v17);
  }

  v30 = v24;
  v31 = v25;
  v75 = 0;
  (*(v18 + 8))(v20, v17);
  sub_10004023C();
  v32 = sub_100027A94(v30, v31, v79, v84, v16);
  v73 = v33;
  sub_10000A798(v16, &qword_100055780, &qword_1000486E8);
  sub_10004025C();
  v35 = v82;
  v34 = v83;
  if ((*(v82 + 48))(v11, 1, v83) == 1)
  {
    v36 = sub_10004027C();
    (*(*(v36 - 8) + 8))(a1, v36);
    result = sub_10000A798(v11, &qword_100055770, &qword_1000486D8);
    goto LABEL_10;
  }

  v72 = a1;
  v37 = v80;
  (*(v35 + 32))(v80, v11, v34);
  v38 = v75;
  sub_10004016C();
  if (v38)
  {

    v75 = 0;
LABEL_9:
    v40 = sub_10004027C();
    (*(*(v40 - 8) + 8))(v72, v40);
    result = (*(v35 + 8))(v37, v34);
    goto LABEL_10;
  }

  v75 = 0;
  if (!v39)
  {
    goto LABEL_9;
  }

  v70 = v31;
  v71 = v32;
  v69 = v30;
  if (qword_100054620 != -1)
  {
    swift_once();
  }

  v44 = qword_100055758;
  v45 = sub_100040E6C();

  v46 = [v44 contactForIdentifier:v45];

  if (v46)
  {

    v47 = [v46 namePrefix];
    v84 = sub_100040E9C();
    v79 = v48;

    v49 = [v46 givenName];
    v50 = sub_100040E9C();
    v68[4] = v51;
    v68[5] = v50;

    v52 = [v46 middleName];
    v53 = sub_100040E9C();
    v68[2] = v54;
    v68[3] = v53;

    v55 = [v46 familyName];
    sub_100040E9C();
    v68[1] = v56;

    v57 = [v46 nameSuffix];
    sub_100040E9C();

    v58 = [v46 nickname];
    sub_100040E9C();

    v59 = v77;
    v60 = v78;
    (*(v77 + 56))(v76, 1, 1, v78);
    v61 = v74;
    sub_10003FDAC();
    if (qword_100054628 != -1)
    {
      swift_once();
    }

    v62 = qword_100055760;
    v63 = sub_10003FDBC();
    v64 = [v62 stringFromPersonNameComponents:v63];

    v79 = sub_100040E9C();
    v41 = v65;

    v66 = sub_10004027C();
    (*(*(v66 - 8) + 8))(v72, v66);
    (*(v59 + 8))(v61, v60);
    result = (*(v82 + 8))(v80, v83);
    v30 = v69;
    v31 = v70;
    v32 = v71;
    goto LABEL_11;
  }

  v67 = sub_10004027C();
  (*(*(v67 - 8) + 8))(v72, v67);
  result = (*(v35 + 8))(v80, v34);
  v30 = v69;
  v31 = v70;
  v32 = v71;
LABEL_10:
  v41 = v84;
LABEL_11:
  v42 = v81;
  *v81 = v30;
  v42[1] = v31;
  v43 = v73;
  v42[2] = v32;
  v42[3] = v43;
  v42[4] = v79;
  v42[5] = v41;
  return result;
}

unint64_t sub_10002859C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100055788;
  if (!qword_100055788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055788);
  }

  return result;
}

uint64_t sub_1000285F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028DC(&qword_100055780, &qword_1000486E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100028684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100055798;
  if (!qword_100055798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055798);
  }

  return result;
}

double sub_100028704@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000407FC();
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1000028DC(&qword_1000557B0, &qword_100048878);
  __chkstk_darwin(v53);
  v54 = &v51 - v4;
  v5 = sub_1000028DC(&qword_1000557B8, &unk_100048880);
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin(v5);
  v52 = &v51 - v6;
  v7 = sub_1000028DC(&qword_100054A38, &unk_100049280);
  __chkstk_darwin(v7 - 8);
  v9 = &v51 - v8;
  v10 = sub_10003FE2C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  v17 = sub_1000028DC(&qword_1000557C0, &qword_100048890);
  __chkstk_darwin(v17 - 8);
  v59 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v24 = &v51 - v23;
  if (qword_1000545E8 != -1)
  {
    v20 = swift_once();
  }

  v66 = qword_100058E00;
  v67 = *algn_100058E08;
  sub_10000A550(v20, v21, v22);

  v25 = sub_1000409BC();
  v61 = v26;
  v62 = v25;
  v58 = v27;
  v63 = v28;
  KeyPath = swift_getKeyPath();
  v29 = objc_allocWithZone(LSApplicationRecord);
  v30 = sub_100028EC0(0x6C7070612E6D6F63, 0xEF73656D61672E65, 0);
  if (v30)
  {
  }

  sub_10003FE1C();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000A798(v9, &qword_100054A38, &unk_100049280);
    v31 = 1;
    v33 = v64;
    v32 = v65;
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v13, v16, v10);
    sub_1000028DC(&qword_1000557D0, &unk_1000488D0);
    sub_10002909C();
    v34 = v54;
    sub_10004091C();
    v35 = sub_10004087C();
    sub_1000403DC();
    v36 = v34 + *(v53 + 36);
    *v36 = v35;
    *(v36 + 8) = v37;
    *(v36 + 16) = v38;
    *(v36 + 24) = v39;
    *(v36 + 32) = v40;
    *(v36 + 40) = 0;
    v41 = v55;
    sub_1000407EC();
    sub_100029120();
    sub_1000291D8();
    v42 = v52;
    v43 = v57;
    sub_100040A2C();
    (*(v56 + 8))(v41, v43);
    sub_10000A798(v34, &qword_1000557B0, &qword_100048878);
    (*(v11 + 8))(v16, v10);
    v33 = v64;
    v32 = v65;
    (*(v64 + 32))(v24, v42, v65);
    v31 = 0;
  }

  (*(v33 + 56))(v24, v31, 1, v32);
  v44 = v59;
  sub_100028FA4(v24, v59);
  v46 = v61;
  v45 = v62;
  *a1 = v62;
  *(a1 + 8) = v46;
  v47 = v58 & 1;
  *(a1 + 16) = v58 & 1;
  v48 = KeyPath;
  *(a1 + 24) = v63;
  *(a1 + 32) = v48;
  *(a1 + 40) = 1;
  v49 = sub_1000028DC(&qword_1000557C8, &qword_1000488C8);
  sub_100028FA4(v44, a1 + *(v49 + 48));
  sub_100029014(v45, v46, v47);

  sub_100029024(v24);
  sub_100029024(v44);
  sub_10002908C(v45, v46, v47);

  return result;
}

double sub_100028D84@<D0>(uint64_t a1@<X8>)
{
  if (qword_1000545F0 != -1)
  {
    swift_once();
  }

  v3 = qword_100058E10;
  v2 = *algn_100058E18;

  v4 = sub_10004081C();
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  *(a1 + 32) = v4;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  return result;
}

double sub_100028E30@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_10004073C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_1000028DC(&qword_1000557A0, &qword_100048868);
  sub_100028704(a1 + *(v2 + 44));
  v3 = sub_10004082C();
  v4 = a1 + *(sub_1000028DC(&qword_1000557A8, &qword_100048870) + 36);
  *v4 = v3;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 1;
  return result;
}

id sub_100028EC0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100040E6C();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_10003FDDC();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100028FA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028DC(&qword_1000557C0, &qword_100048890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029014(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100029024(uint64_t a1)
{
  v2 = sub_1000028DC(&qword_1000557C0, &qword_100048890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10002908C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_10002909C()
{
  result = qword_1000557D8;
  if (!qword_1000557D8)
  {
    sub_10000A440(&qword_1000557D0, &unk_1000488D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000557D8);
  }

  return result;
}

unint64_t sub_100029120()
{
  result = qword_1000557E0;
  if (!qword_1000557E0)
  {
    sub_10000A440(&qword_1000557B0, &qword_100048878);
    sub_10000A5A4(&qword_1000557E8, &qword_1000557F0, &qword_1000493A0, &protocol conformance descriptor for Link<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000557E0);
  }

  return result;
}

unint64_t sub_1000291D8()
{
  result = qword_1000557F8;
  if (!qword_1000557F8)
  {
    sub_1000407FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000557F8);
  }

  return result;
}

unint64_t sub_100029234()
{
  result = qword_100055800;
  if (!qword_100055800)
  {
    sub_10000A440(&qword_1000557A8, &qword_100048870);
    sub_10000A5A4(&qword_100055808, &qword_100055810, &qword_1000488E0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055800);
  }

  return result;
}

uint64_t sub_1000292EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000028DC(&qword_1000555B0, &qword_100048360);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000E06C(a3, v25 - v10, &qword_1000555B0, &qword_100048360);
  v12 = sub_10004104C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000A798(v11, &qword_1000555B0, &qword_100048360);
  }

  else
  {
    sub_10004103C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100040FDC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100040EBC() + 32;
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

      sub_10000A798(a3, &qword_1000555B0, &qword_100048360);

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

  sub_10000A798(a3, &qword_1000555B0, &qword_100048360);
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

uint64_t sub_1000295EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000028DC(&qword_1000555B0, &qword_100048360);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000E06C(a3, v25 - v10, &qword_1000555B0, &qword_100048360);
  v12 = sub_10004104C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000A798(v11, &qword_1000555B0, &qword_100048360);
  }

  else
  {
    sub_10004103C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100040FDC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100040EBC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1000028DC(&qword_100055B88, &qword_100048BD8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10000A798(a3, &qword_1000555B0, &qword_100048360);

      return v22;
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

  sub_10000A798(a3, &qword_1000555B0, &qword_100048360);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1000028DC(&qword_100055B88, &qword_100048BD8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100029900@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004069C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000028DC(&qword_1000555D8, &qword_100048410);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10000E06C(v2, &v14 - v9, &qword_1000555D8, &qword_100048410);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000403FC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1000410CC();
    v13 = sub_10004080C();
    sub_10004036C();

    sub_10004068C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100029B00@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = sub_1000028DC(&qword_100055B28, &unk_100048B58);
  v59 = *(v2 - 8);
  v60 = v2;
  __chkstk_darwin(v2);
  v61 = &v51 - v3;
  v4 = sub_1000028DC(&qword_1000546A8, &qword_100046A70);
  __chkstk_darwin(v4);
  v6 = &v51 - v5;
  v7 = sub_1000028DC(&qword_100055B30, &qword_100048B68);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v51 - v9;
  v11 = sub_1000028DC(&qword_100055B38, &qword_100048B70);
  __chkstk_darwin(v11 - 8);
  v13 = &v51 - v12;
  *v13 = sub_10004073C();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = sub_1000028DC(&qword_100055B40, &qword_100048B78);
  sub_10002A408(v1, &v13[*(v14 + 44)]);
  sub_100040C7C();
  sub_10004053C();
  sub_10001772C(v13, v10, &qword_100055B38, &qword_100048B70);
  v15 = &v10[*(v8 + 44)];
  v16 = v71;
  *(v15 + 4) = v70;
  *(v15 + 5) = v16;
  *(v15 + 6) = v72;
  v17 = v67;
  *v15 = v66;
  *(v15 + 1) = v17;
  v18 = v69;
  *(v15 + 2) = v68;
  *(v15 + 3) = v18;
  sub_10002B298();
  v19 = sub_100040A7C();
  v20 = sub_10004082C();
  sub_10001772C(v10, v6, &qword_100055B30, &qword_100048B68);
  v57 = v4;
  v21 = *(v4 + 36);
  v62 = v6;
  v22 = &v6[v21];
  *v22 = v19;
  v22[8] = v20;
  v23 = type metadata accessor for ChallengeInviteCardView(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23 - 8);
  sub_1000333DC(v1, &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChallengeInviteCardView);
  sub_10004101C();
  v26 = sub_10004100C();
  v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = &protocol witness table for MainActor;
  sub_100033A9C(&v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for ChallengeInviteCardView);
  v29 = sub_10004104C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = &v51 - v32;
  sub_10004102C();
  if (sub_10003F7B4(2, 26, 4, 0))
  {
    v53 = sub_1000404BC();
    v54 = &v51;
    v52 = *(v53 - 8);
    __chkstk_darwin(v53);
    v51 = &v51 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    v64 = 0;
    v65 = 0xE000000000000000;
    v56 = &v51;
    sub_1000411AC(17);

    v64 = 0xD000000000000045;
    v65 = 0x8000000100042E40;
    v63 = 39;
    v73._countAndFlagsBits = sub_10004132C();
    sub_100040EEC(v73);

    v36 = v61;
    v55 = &v51;
    v37 = __chkstk_darwin(v35);
    (*(v30 + 16))(&v51 - v32, &v51 - v32, v29, v37);
    v38 = v51;
    sub_1000404AC();
    (*(v30 + 8))(v33, v29);
    sub_10001772C(v62, v36, &qword_1000546A8, &qword_100046A70);
    v39 = sub_1000028DC(&qword_1000546B0, &qword_100046A78);
    (*(v52 + 32))(v36 + *(v39 + 36), v38, v53);
  }

  else
  {
    v40 = sub_1000028DC(&qword_1000546B8, &qword_100046A80);
    v36 = v61;
    v41 = &v61[*(v40 + 36)];
    v42 = sub_10004049C();
    (*(v30 + 32))(&v41[*(v42 + 20)], &v51 - v32, v29);
    *v41 = &unk_100048B90;
    *(v41 + 1) = v28;
    sub_10001772C(v62, v36, &qword_1000546A8, &qword_100046A70);
  }

  v43 = sub_1000028DC(&qword_100055B48, &qword_100048BA0);
  __chkstk_darwin(v43);
  v45 = &v51 - v44;
  if (qword_100054618 != -1)
  {
    swift_once();
  }

  v46 = sub_1000404CC();
  v47 = sub_10000A760(v46, qword_100058E40);
  sub_100033CA0(&qword_100055B50, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_100040DEC();
  if (result)
  {
    (*(*(v46 - 8) + 16))(v45, v47, v46);
    v49 = sub_100033CE8();
    v64 = v57;
    v65 = v49;
    swift_getOpaqueTypeConformance2();
    sub_10000A5A4(&qword_100055B70, &qword_100055B48, &qword_100048BA0, &protocol conformance descriptor for PartialRangeThrough<A>);
    v50 = v60;
    sub_100040A5C();
    sub_10000A798(v45, &qword_100055B48, &qword_100048BA0);
    return (*(v59 + 8))(v36, v50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002A408@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v63 = a1;
  v66 = a2;
  v3 = type metadata accessor for ChallengeInviteCardView(0);
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  __chkstk_darwin(v3);
  v60 = v5;
  v62 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = type metadata accessor for ChallengeInviteCardView.ContentView(0);
  __chkstk_darwin(v61);
  v65 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v64 = &v55[-v8];
  v9 = sub_10004070C();
  __chkstk_darwin(v9 - 8);
  sub_1000406FC();
  v98._countAndFlagsBits = 0;
  v98._object = 0xE000000000000000;
  sub_1000406EC(v98);
  sub_100040B3C();
  sub_1000406CC();

  v99._countAndFlagsBits = 32;
  v99._object = 0xE100000000000000;
  sub_1000406EC(v99);
  if (qword_1000545C8 != -1)
  {
    swift_once();
  }

  sub_1000406DC(xmmword_100058DC0);
  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  sub_1000406EC(v100);
  sub_10004071C();
  v10 = sub_1000409AC();
  v12 = v11;
  v14 = v13;
  sub_1000408FC();
  v15 = sub_10004099C();
  v17 = v16;
  v19 = v18;

  sub_10002908C(v10, v12, v14 & 1);

  LODWORD(v75[0]) = sub_1000407AC();
  v57 = sub_10004097C();
  v68 = v21;
  v69 = v20;
  LOBYTE(v10) = v22;
  sub_10002908C(v15, v17, v19 & 1);

  v67 = sub_10004082C();
  sub_1000403DC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v10 & 1;
  v96 = v10 & 1;
  v56 = v10 & 1;
  v93 = 0;
  sub_100040C8C();
  sub_10004053C();
  *(&v97[3] + 7) = *(&v97[10] + 8);
  *(&v97[4] + 7) = *(&v97[11] + 8);
  *(&v97[5] + 7) = *(&v97[12] + 8);
  *(&v97[6] + 7) = *(&v97[13] + 8);
  *(v97 + 7) = *(&v97[7] + 8);
  *(&v97[1] + 7) = *(&v97[8] + 8);
  *(&v97[2] + 7) = *(&v97[9] + 8);
  v32 = v63;
  v33 = (v63 + *(v58 + 20));
  v34 = v33[3];
  v35 = v33[4];
  sub_100005DE4(v33, v34);
  v36 = v64;
  (*(v35 + 8))(v34, v35);
  v37 = v62;
  sub_1000333DC(v32, v62, type metadata accessor for ChallengeInviteCardView);
  v38 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v39 = swift_allocObject();
  sub_100033A9C(v37, v39 + v38, type metadata accessor for ChallengeInviteCardView);
  v40 = (v36 + *(v61 + 20));
  *v40 = sub_100033F78;
  v40[1] = v39;
  v41 = v65;
  sub_1000333DC(v36, v65, type metadata accessor for ChallengeInviteCardView.ContentView);
  v42 = v57;
  *&v70 = v57;
  *(&v70 + 1) = v69;
  LOBYTE(v71) = v31;
  *(&v71 + 1) = *v95;
  DWORD1(v71) = *&v95[3];
  *(&v71 + 1) = v68;
  LOBYTE(v72) = v67;
  *(&v72 + 1) = *v94;
  DWORD1(v72) = *&v94[3];
  *(&v72 + 1) = v24;
  *&v73 = v26;
  *(&v73 + 1) = v28;
  *&v74[0] = v30;
  BYTE8(v74[0]) = 0;
  *(v74 + 9) = v97[0];
  *(&v74[3] + 9) = v97[3];
  *(&v74[2] + 9) = v97[2];
  *(&v74[1] + 9) = v97[1];
  *(&v74[7] + 1) = *(&v97[6] + 15);
  *(&v74[6] + 9) = v97[6];
  *(&v74[5] + 9) = v97[5];
  *(&v74[4] + 9) = v97[4];
  v43 = v70;
  v44 = v71;
  v45 = v73;
  v46 = v66;
  v66[2] = v72;
  v46[3] = v45;
  *v46 = v43;
  v46[1] = v44;
  v47 = v74[0];
  v48 = v74[1];
  v49 = v74[3];
  v46[6] = v74[2];
  v46[7] = v49;
  v46[4] = v47;
  v46[5] = v48;
  v50 = v74[4];
  v51 = v74[5];
  v52 = v74[7];
  v46[10] = v74[6];
  v46[11] = v52;
  v46[8] = v50;
  v46[9] = v51;
  v53 = sub_1000028DC(&qword_100055B78, &qword_100048BA8);
  sub_1000333DC(v41, v46 + *(v53 + 48), type metadata accessor for ChallengeInviteCardView.ContentView);
  sub_10000E06C(&v70, v75, &qword_100055B80, &qword_100048BB0);
  sub_100033444(v36, type metadata accessor for ChallengeInviteCardView.ContentView);
  sub_100033444(v41, type metadata accessor for ChallengeInviteCardView.ContentView);
  v75[0] = v42;
  v75[1] = v69;
  v76 = v56;
  *v77 = *v95;
  *&v77[3] = *&v95[3];
  v78 = v68;
  v79 = v67;
  *v80 = *v94;
  *&v80[3] = *&v94[3];
  v81 = v24;
  v82 = v26;
  v83 = v28;
  v84 = v30;
  v85 = 0;
  v90 = v97[4];
  v91 = v97[5];
  v92[0] = v97[6];
  *(v92 + 15) = *(&v97[6] + 15);
  v86 = v97[0];
  v87 = v97[1];
  v88 = v97[2];
  v89 = v97[3];
  return sub_10000A798(v75, &qword_100055B80, &qword_100048BB0);
}

uint64_t sub_10002AABC(uint64_t a1, double a2)
{
  v3 = type metadata accessor for ChallengeInviteCardView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000028DC(&qword_1000555B0, &qword_100048360);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_10004104C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1000333DC(a1, v6, type metadata accessor for ChallengeInviteCardView);
  sub_10004101C();
  v11 = sub_10004100C();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_100033A9C(v6, v13 + v12, type metadata accessor for ChallengeInviteCardView);
  sub_1000295EC(0, 0, v9, &unk_100048BC0, v13);
}

uint64_t sub_10002AC9C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v6 = *(type metadata accessor for ChallengeInviteCardView(0) - 8);
  v5[4] = v6;
  v5[5] = *(v6 + 64);
  v5[6] = swift_task_alloc();
  sub_1000028DC(&qword_1000555B0, &qword_100048360);
  v5[7] = swift_task_alloc();
  v5[8] = sub_10004101C();
  v5[9] = sub_10004100C();
  v8 = sub_100040FDC();

  return _swift_task_switch(sub_10002ADD0, v8, v7);
}

uint64_t sub_10002ADD0()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v5 = v0[2];
  v4 = v0[3];

  v6 = sub_10004104C();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  sub_1000333DC(v4, v1, type metadata accessor for ChallengeInviteCardView);
  v7 = sub_10004100C();
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_100033A9C(v1, v9 + v8, type metadata accessor for ChallengeInviteCardView);
  *v5 = sub_1000292EC(0, 0, v2, &unk_100048BF0, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10002AF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_10004101C();
  v4[3] = sub_10004100C();
  v6 = sub_100040FDC();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10002AFE0, v6, v5);
}

uint64_t sub_10002AFE0(double a1)
{
  v2 = *(v1 + 16);
  v3 = (v2 + *(type metadata accessor for ChallengeInviteCardView(0) + 20));
  v4 = v3[3];
  v5 = v3[4];
  sub_100005DE4(v3, v4);
  v8 = (*(v5 + 16) + **(v5 + 16));
  v6 = swift_task_alloc();
  *(v1 + 48) = v6;
  *v6 = v1;
  v6[1] = sub_10002B118;

  return v8(1, v4, v5);
}

uint64_t sub_10002B118()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_10002B238, v3, v2);
}

uint64_t sub_10002B238()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_10002B298()
{
  v0 = sub_1000403FC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  if (sub_100040C5C())
  {
    v7 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_100029900(v6);
    (*(v1 + 104))(v3, enum case for ColorScheme.dark(_:), v0);
    v8 = sub_1000403EC();
    v9 = *(v1 + 8);
    v9(v3, v0);
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

uint64_t sub_10002B438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_10004101C();
  v3[3] = sub_10004100C();
  v5 = sub_100040FDC();
  v3[4] = v5;
  v3[5] = v4;

  return _swift_task_switch(sub_10002B4D0, v5, v4);
}

uint64_t sub_10002B4D0(double a1)
{
  v2 = *(v1 + 16);
  v3 = (v2 + *(type metadata accessor for ChallengeInviteCardView(0) + 20));
  v4 = v3[3];
  v5 = v3[4];
  sub_100005DE4(v3, v4);
  v8 = (*(v5 + 16) + **(v5 + 16));
  v6 = swift_task_alloc();
  *(v1 + 48) = v6;
  *v6 = v1;
  v6[1] = sub_10002B608;

  return v8(0, v4, v5);
}

uint64_t sub_10002B608()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_100034DB4, v3, v2);
}

uint64_t sub_10002B728@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v51 = sub_1000028DC(&qword_100055B90, &qword_100048BF8);
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v46 - v2;
  v61 = sub_1000028DC(&qword_100055B98, &qword_100048C00);
  __chkstk_darwin(v61);
  v49 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = &v46 - v5;
  v57 = type metadata accessor for ChallengeInviteContentCard(0);
  __chkstk_darwin(v57);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChallengeInviteContentCardModel(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1000028DC(&qword_100055BA0, &qword_100048C08);
  __chkstk_darwin(v59);
  v60 = &v46 - v10;
  v55 = sub_1000028DC(&qword_100055BA8, &qword_100048C10);
  __chkstk_darwin(v55);
  v54 = &v46 - v11;
  v58 = sub_1000028DC(&qword_100055BB0, &qword_100048C18);
  __chkstk_darwin(v58);
  v56 = &v46 - v12;
  v13 = sub_1000028DC(&qword_100055BB8, &qword_100048C20);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v46 - v15;
  v53 = sub_1000028DC(&qword_100055BC0, &qword_100048C28);
  __chkstk_darwin(v53);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v46 - v20;
  v22 = type metadata accessor for ChallengeInviteCardState(0);
  __chkstk_darwin(v22 - 8);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000333DC(v1, v24, type metadata accessor for ChallengeInviteCardState);
  v25 = (*(v8 + 48))(v24, 2, v7);
  if (v25)
  {
    if (v25 == 1)
    {
      sub_10004044C();
      sub_100040C7C();
      sub_10004053C();
      (*(v14 + 32))(v18, v16, v13);
      v26 = &v18[*(v53 + 36)];
      v27 = v68;
      *(v26 + 4) = v67;
      *(v26 + 5) = v27;
      *(v26 + 6) = v69;
      v28 = v64;
      *v26 = v63;
      *(v26 + 1) = v28;
      v29 = v66;
      *(v26 + 2) = v65;
      *(v26 + 3) = v29;
      sub_10001772C(v18, v21, &qword_100055BC0, &qword_100048C28);
      sub_10000E06C(v21, v54, &qword_100055BC0, &qword_100048C28);
      swift_storeEnumTagMultiPayload();
      sub_1000345D4();
      sub_100033CA0(&qword_100055C20, type metadata accessor for ChallengeInviteContentCard, &unk_10004930C);
      v30 = v56;
      sub_10004076C();
      sub_10000E06C(v30, v60, &qword_100055BB0, &qword_100048C18);
      swift_storeEnumTagMultiPayload();
      sub_100034518();
      sub_10003468C();
      sub_10004076C();
      sub_10000A798(v30, &qword_100055BB0, &qword_100048C18);
      v31 = v21;
      v32 = &qword_100055BC0;
      v33 = &qword_100048C28;
    }

    else
    {
      __chkstk_darwin(v25);
      sub_1000028DC(&qword_100055BC8, &qword_100048C30);
      sub_1000028DC(&qword_100055BD0, &qword_100048C38);
      sub_1000028DC(&qword_100055BD8, &qword_100048C40);
      sub_1000343A8();
      sub_100034460();
      sub_10000A5A4(&qword_100055C00, &qword_100055BD8, &qword_100048C40, &protocol conformance descriptor for Button<A>);
      v39 = v48;
      sub_10004078C();
      sub_100040C7C();
      sub_10004053C();
      v40 = v49;
      (*(v50 + 32))(v49, v39, v51);
      v41 = (v40 + *(v61 + 36));
      v42 = v68;
      v41[4] = v67;
      v41[5] = v42;
      v41[6] = v69;
      v43 = v64;
      *v41 = v63;
      v41[1] = v43;
      v44 = v66;
      v41[2] = v65;
      v41[3] = v44;
      v45 = v52;
      sub_10001772C(v40, v52, &qword_100055B98, &qword_100048C00);
      sub_10000E06C(v45, v60, &qword_100055B98, &qword_100048C00);
      swift_storeEnumTagMultiPayload();
      sub_100034518();
      sub_10003468C();
      sub_10004076C();
      v31 = v45;
      v32 = &qword_100055B98;
      v33 = &qword_100048C00;
    }

    return sub_10000A798(v31, v32, v33);
  }

  else
  {
    v34 = v46;
    sub_100033A9C(v24, v46, type metadata accessor for ChallengeInviteContentCardModel);
    v35 = v47;
    sub_1000333DC(v34, v47, type metadata accessor for ChallengeInviteContentCardModel);
    v36 = (v35 + *(v57 + 20));
    *v36 = 0u;
    v36[1] = 0u;
    sub_1000333DC(v35, v54, type metadata accessor for ChallengeInviteContentCard);
    swift_storeEnumTagMultiPayload();
    sub_1000345D4();
    sub_100033CA0(&qword_100055C20, type metadata accessor for ChallengeInviteContentCard, &unk_10004930C);
    v37 = v56;
    sub_10004076C();
    sub_10000E06C(v37, v60, &qword_100055BB0, &qword_100048C18);
    swift_storeEnumTagMultiPayload();
    sub_100034518();
    sub_10003468C();
    sub_10004076C();
    sub_10000A798(v37, &qword_100055BB0, &qword_100048C18);
    sub_100033444(v35, type metadata accessor for ChallengeInviteContentCard);
    return sub_100033444(v34, type metadata accessor for ChallengeInviteContentCardModel);
  }
}

uint64_t sub_10002C1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_1000545D0 != -1)
  {
    a1 = swift_once();
  }

  sub_10000A550(a1, a2, a3);

  v5 = sub_1000409BC();
  v7 = v6;
  v9 = v8;
  sub_1000408DC();
  sub_1000408AC();

  v10 = sub_10004099C();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_10002908C(v5, v7, v9 & 1);

  result = swift_getKeyPath();
  *a4 = v10;
  *(a4 + 8) = v12;
  *(a4 + 16) = v14 & 1;
  *(a4 + 24) = v16;
  *(a4 + 32) = result;
  *(a4 + 40) = 1;
  return result;
}

uint64_t sub_10002C320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_1000545D8 != -1)
  {
    a1 = swift_once();
  }

  sub_10000A550(a1, a2, a3);

  v5 = sub_1000409BC();
  v7 = v6;
  v9 = v8;
  sub_10004088C();
  v10 = sub_10004099C();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_10002908C(v5, v7, v9 & 1);

  KeyPath = swift_getKeyPath();
  result = sub_1000407AC();
  *a4 = v10;
  *(a4 + 8) = v12;
  *(a4 + 16) = v14 & 1;
  *(a4 + 24) = v16;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 1;
  *(a4 + 44) = result;
  return result;
}

uint64_t sub_10002C458(uint64_t a1, double a2)
{
  v3 = type metadata accessor for ChallengeInviteCardView.ContentView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_1000333DC(a1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChallengeInviteCardView.ContentView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_100033A9C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ChallengeInviteCardView.ContentView);
  return sub_100040C1C();
}

uint64_t sub_10002C5AC(uint64_t a1)
{
  if (qword_100054610 != -1)
  {
    swift_once();
  }

  v2 = sub_10004039C();
  sub_10000A760(v2, qword_100058E28);
  v3 = sub_10004037C();
  v4 = sub_1000410AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Retrying on loading invite card", v5, 2u);
  }

  v6 = type metadata accessor for ChallengeInviteCardView.ContentView(0);
  return (*(a1 + *(v6 + 20)))();
}

void sub_10002C6A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_1000545E0 != -1)
  {
    a1 = swift_once();
  }

  sub_10000A550(a1, a2, a3);

  v5 = sub_1000409BC();
  v7 = v6;
  v9 = v8;
  sub_100040AAC();
  v10 = sub_10004097C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_10002908C(v5, v7, v9 & 1);

  *a4 = v10;
  *(a4 + 8) = v12;
  *(a4 + 16) = v14 & 1;
  *(a4 + 24) = v16;
}

uint64_t sub_10002C824@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100033CA0(&qword_100055AF8, type metadata accessor for ChallengeInviteCardViewModel, &unk_100048A54);
  sub_10003FEAC();

  v3 = OBJC_IVAR____TtC26ChallengesMessageExtension28ChallengeInviteCardViewModel__state;
  swift_beginAccess();
  return sub_1000333DC(v5 + v3, a1, type metadata accessor for ChallengeInviteCardState);
}

uint64_t sub_10002C900@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100033CA0(&qword_100055AF8, type metadata accessor for ChallengeInviteCardViewModel, &unk_100048A54);
  sub_10003FEAC();

  v4 = OBJC_IVAR____TtC26ChallengesMessageExtension28ChallengeInviteCardViewModel__state;
  swift_beginAccess();
  return sub_1000333DC(v3 + v4, a2, type metadata accessor for ChallengeInviteCardState);
}

uint64_t sub_10002C9DC(uint64_t a1, uint64_t *a2, double a3)
{
  v5 = type metadata accessor for ChallengeInviteCardState(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000333DC(a1, v7, type metadata accessor for ChallengeInviteCardState);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_100033CA0(&qword_100055AF8, type metadata accessor for ChallengeInviteCardViewModel, &unk_100048A54);
  sub_10003FE9C();

  return sub_100033444(v7, type metadata accessor for ChallengeInviteCardState);
}

uint64_t sub_10002CB2C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = OBJC_IVAR____TtC26ChallengesMessageExtension28ChallengeInviteCardViewModel__state;
  swift_beginAccess();
  sub_1000334C0(a2, a1 + v5);
  return swift_endAccess();
}

uint64_t sub_10002CB98(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 160) = a1;
  sub_1000028DC(&qword_1000555B0, &qword_100048360);
  *(v2 + 64) = swift_task_alloc();
  v3 = type metadata accessor for ChallengeInviteContentCardModel(0);
  *(v2 + 72) = v3;
  *(v2 + 80) = *(v3 - 8);
  *(v2 + 88) = swift_task_alloc();
  v4 = *(type metadata accessor for ChallengeInviteCardState(0) - 8);
  *(v2 + 96) = v4;
  *(v2 + 104) = *(v4 + 64);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_10002CD18, 0, 0);
}

uint64_t sub_10002CD18()
{
  if (*(v0 + 160) == 1)
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 56);
    (*(*(v0 + 80) + 56))(v1, 1, 2, *(v0 + 72));
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    *(v0 + 48) = v2;
    sub_100033CA0(&qword_100055AF8, type metadata accessor for ChallengeInviteCardViewModel, &unk_100048A54);
    sub_10003FE9C();

    sub_100033444(v1, type metadata accessor for ChallengeInviteCardState);
  }

  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 56);
  swift_getKeyPath();
  *(v0 + 40) = v8;
  sub_100033CA0(&qword_100055AF8, type metadata accessor for ChallengeInviteCardViewModel, &unk_100048A54);
  sub_10003FEAC();

  v9 = OBJC_IVAR____TtC26ChallengesMessageExtension28ChallengeInviteCardViewModel__state;
  swift_beginAccess();
  sub_1000333DC(v8 + v9, v5, type metadata accessor for ChallengeInviteCardState);
  sub_100033A9C(v5, v4, type metadata accessor for ChallengeInviteCardState);
  v10 = (*(v7 + 48))(v4, 2, v6);
  if (v10 != 2)
  {
    if (v10 == 1)
    {
      v11 = swift_task_alloc();
      *(v0 + 144) = v11;
      *v11 = v0;
      v11[1] = sub_10002D064;
      v12 = *(v0 + 88);

      return sub_10002D6F4(v12);
    }

    sub_100033444(*(v0 + 120), type metadata accessor for ChallengeInviteCardState);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10002D064()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10002D3CC;
  }

  else
  {
    v2 = sub_10002D178;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002D178(double a1)
{
  v2 = v1[14];
  v4 = v1[10];
  v3 = v1[11];
  v5 = v1[9];
  v6 = v1[7];
  sub_1000333DC(v3, v2, type metadata accessor for ChallengeInviteContentCardModel);
  (*(v4 + 56))(v2, 0, 2, v5);
  (*(v6 + OBJC_IVAR____TtC26ChallengesMessageExtension28ChallengeInviteCardViewModel_onLoadedModel))(v3);
  sub_100033444(v3, type metadata accessor for ChallengeInviteContentCardModel);
  v7 = v1[17];
  v8 = v1[14];
  v9 = v1[12];
  v11 = v1[7];
  v10 = v1[8];
  v12 = sub_10004104C();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_1000333DC(v8, v7, type metadata accessor for ChallengeInviteCardState);
  sub_10004101C();

  v13 = sub_10004100C();
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v11;
  sub_100033A9C(v7, v15 + v14, type metadata accessor for ChallengeInviteCardState);
  sub_1000292EC(0, 0, v10, &unk_100048AD8, v15);

  sub_100033444(v1[14], type metadata accessor for ChallengeInviteCardState);

  v16 = v1[1];

  return v16();
}

uint64_t sub_10002D3CC()
{
  if (qword_100054610 != -1)
  {
    swift_once();
  }

  v1 = sub_10004039C();
  sub_10000A760(v1, qword_100058E28);
  swift_errorRetain();
  v2 = sub_10004037C();
  v3 = sub_1000410BC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to load card with error: %@", v4, 0xCu);
    sub_10000A798(v5, &qword_1000555B8, &qword_100048AE0);
  }

  else
  {
  }

  (*(v0[10] + 56))(v0[14], 2, 2, v0[9]);
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[12];
  v11 = v0[7];
  v10 = v0[8];
  v12 = sub_10004104C();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_1000333DC(v8, v7, type metadata accessor for ChallengeInviteCardState);
  sub_10004101C();

  v13 = sub_10004100C();
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v11;
  sub_100033A9C(v7, v15 + v14, type metadata accessor for ChallengeInviteCardState);
  sub_1000292EC(0, 0, v10, &unk_100048AD8, v15);

  sub_100033444(v0[14], type metadata accessor for ChallengeInviteCardState);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10002D6F4(uint64_t a1)
{
  v2[363] = v1;
  v2[357] = a1;
  v2[369] = *v1;
  sub_1000028DC(&qword_1000547F0, &qword_100046E60);
  v2[375] = swift_task_alloc();
  v2[381] = *(type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType(0) - 8);
  v2[387] = swift_task_alloc();
  v2[393] = swift_task_alloc();
  v2[399] = swift_task_alloc();
  v3 = sub_10004027C();
  v2[405] = v3;
  v2[411] = *(v3 - 8);
  v2[417] = swift_task_alloc();
  v2[423] = swift_task_alloc();
  sub_1000028DC(&qword_100054A38, &unk_100049280);
  v2[429] = swift_task_alloc();
  v2[435] = swift_task_alloc();
  v2[441] = type metadata accessor for ChallengeInviteContentCardHeaderKind(0);
  v2[447] = swift_task_alloc();
  v2[453] = swift_task_alloc();
  sub_10003FE8C();
  v2[459] = swift_task_alloc();
  sub_100040E5C();
  v2[465] = swift_task_alloc();
  sub_100040E3C();
  v2[471] = swift_task_alloc();
  v4 = sub_1000028DC(&qword_1000555F8, &unk_100048440);
  v2[477] = v4;
  v2[483] = *(v4 - 8);
  v2[489] = swift_task_alloc();
  v2[495] = type metadata accessor for ChallengeDetail(0);
  v2[501] = swift_task_alloc();
  v2[507] = swift_task_alloc();

  return _swift_task_switch(sub_10002DA3C, 0, 0);
}

uint64_t sub_10002DA3C()
{
  v1 = v0[363];
  v2 = *(v1 + 16);
  v0[513] = v2;
  v3 = *(v1 + 24);
  v0[519] = v3;
  v4 = swift_allocObject();
  v0[525] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;

  swift_asyncLet_begin();

  swift_asyncLet_begin();
  v5 = swift_allocObject();
  v0[531] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 162, v0 + 2041, sub_10002DBC8, v0 + 370);
}

uint64_t sub_10002DBC8()
{
  *(v1 + 4296) = v0;
  if (v0)
  {
    return _swift_task_switch(sub_100030618, 0, 0);
  }

  *(v1 + 2042) = *(v1 + 2041);
  return _swift_asyncLet_get_throwing(v1 + 656, v1 + 2584, sub_10002DC14, v1 + 3152);
}

uint64_t sub_10002DC14()
{
  v1[543] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_100030844, 0, 0);
  }

  else
  {
    v1[549] = v1[323];
    v1[555] = v1[324];
    v1[561] = v1[325];
    v1[562] = v1[326];
    v1[563] = v1[327];
    v1[564] = v1[328];

    v2 = v1[507];

    return _swift_asyncLet_get_throwing(v1 + 2, v2, sub_10002DCFC, v1 + 418);
  }
}

uint64_t sub_10002DCFC()
{
  *(v1 + 4520) = v0;
  if (v0)
  {

    v2 = sub_100030A70;
  }

  else
  {
    v2 = sub_10002DD94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002DD94(double a1)
{
  v308 = v1;
  v2 = *(v1 + 4520);
  v3 = *(v1 + 2904);
  sub_1000333DC(*(v1 + 4056), *(v1 + 4008), type metadata accessor for ChallengeDetail);
  v5 = *(v3 + 48);
  v4 = *(v3 + 56);
  v6 = OBJC_IVAR____TtC26ChallengesMessageExtension28ChallengeInviteCardViewModel_localPlayerProfile;
  sub_10004024C();
  v7 = sub_10004015C();
  *(v1 + 4528) = v2;
  if (v2)
  {
    v9 = *(v1 + 4008);
    (*(*(v1 + 3864) + 8))(*(v1 + 3912), *(v1 + 3816));

    sub_100033444(v9, type metadata accessor for ChallengeDetail);
    v10 = sub_100030C9C;
    v11 = *(v1 + 4056);
    v12 = v1 + 16;
    v13 = v1 + 1936;
    goto LABEL_3;
  }

  v14 = v7;
  v15 = v8;
  (*(*(v1 + 3864) + 8))(*(v1 + 3912), *(v1 + 3816));
  if (v5 == v14 && v4 == v15)
  {
    v302 = 1;
  }

  else
  {
    v302 = sub_10004133C();
  }

  v297 = v4;

  if (qword_100054610 != -1)
  {
    swift_once();
  }

  v16 = sub_10004039C();
  sub_10000A760(v16, qword_100058E28);

  v17 = sub_10004037C();
  v18 = sub_1000410AC();
  if (os_log_type_enabled(v17, v18))
  {
    v292 = v5;
    v19 = *(v1 + 2042);
    v20 = swift_slowAlloc();
    v288 = swift_slowAlloc();
    v307._countAndFlagsBits = v288;
    *v20 = 136315394;
    v21 = 0xEA00000000007470;
    v22 = 0x656363615F6E6163;
    v23 = 0x8000000100041D00;
    v24 = 0xD000000000000017;
    v25 = 0x8000000100041D20;
    v26 = 0xD000000000000012;
    if (v19 != 3)
    {
      v26 = 0x64696C61766E69;
      v25 = 0xE700000000000000;
    }

    if (v19 != 2)
    {
      v24 = v26;
      v23 = v25;
    }

    if (v19)
    {
      v22 = 0xD000000000000010;
      v21 = 0x8000000100041CE0;
    }

    if (v19 <= 1)
    {
      v27 = v22;
    }

    else
    {
      v27 = v24;
    }

    if (v19 <= 1)
    {
      v28 = v21;
    }

    else
    {
      v28 = v23;
    }

    v29 = *(v1 + 4152);
    v30 = *(v1 + 4104);
    v31 = sub_100032E34(v27, v28, &v307._countAndFlagsBits);

    *(v20 + 4) = v31;
    *(v20 + 12) = 2080;
    v32 = sub_100032E34(v30, v29, &v307._countAndFlagsBits);

    *(v20 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v17, v18, "Invite card status is %s for %s", v20, 0x16u);
    swift_arrayDestroy();

    v5 = v292;
  }

  else
  {
  }

  if (*(v1 + 2042) > 2u)
  {
    v51 = *(v1 + 4512);
    v52 = *(v1 + 4504);
    v279 = *(v1 + 4488);
    v285 = *(v1 + 4496);
    v53 = *(v1 + 4008);
    v54 = *(v1 + 3960);
    v55 = *(v1 + 3576);
    v56 = *(v1 + 2904);
    v269 = *(v56 + 40);
    v275 = *(v56 + 32);
    sub_100040E2C();
    v313._countAndFlagsBits = 0;
    v313._object = 0xE000000000000000;
    sub_100040E1C(v313);
    v314._countAndFlagsBits = v52;
    v314._object = v51;
    sub_100040E0C(v314);
    v315._countAndFlagsBits = 0x6E656C6C61684320;
    v315._object = 0xEF756F5920646567;
    sub_100040E1C(v315);
    sub_100040E4C();
    sub_10003FE7C();
    v57 = sub_100040EAC();
    v294 = v58;
    v298 = v57;
    v59 = sub_100004010(*(v53 + *(v54 + 20)), *(v53 + *(v54 + 20) + 8), *v53, *(v53 + 8));
    v290 = v60;
    v61 = *(sub_1000028DC(&qword_100055B00, &qword_100048AD0) + 48);
    v62 = *(type metadata accessor for GameInfo(0) + 20);
    v63 = sub_100040D0C();
    (*(*(v63 - 8) + 16))(v55, v53 + v62, v63);
    sub_1000028DC(&qword_100055B08, &qword_100048B38);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1000475D0;
    *(v64 + 32) = v279;
    *(v64 + 40) = v285;
    *(v55 + v61) = v64;
    swift_storeEnumTagMultiPayload();
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    if ((v302 & 1) == 0)
    {
      v66 = *(v1 + 4512);
      v65 = *(v1 + 4504);
      v68 = v269;
      v67 = v275;
    }

    v69 = *(v1 + 4152);
    v70 = *(v1 + 4104);
    v307._countAndFlagsBits = 0;
    v307._object = 0xE000000000000000;

    sub_1000411AC(36);

    v307._countAndFlagsBits = 0xD000000000000022;
    v307._object = 0x8000000100042D60;
    v316._countAndFlagsBits = v70;
    v316._object = v69;
    sub_100040EEC(v316);
    if (v68)
    {
      strcpy(&v307, "?inviteCode=");
      BYTE5(v307._object) = 0;
      HIWORD(v307._object) = -5120;
      v317._countAndFlagsBits = v67;
      v317._object = v68;
      sub_100040EEC(v317);
      sub_100040EEC(v307);
    }

    if (v66)
    {
      strcpy(&v307, "&inviterName=");
      HIWORD(v307._object) = -4864;
      v318._countAndFlagsBits = v65;
      v318._object = v66;
      sub_100040EEC(v318);
      sub_100040EEC(v307);
    }

    v71 = *(v1 + 4008);
    v72 = *(v1 + 3576);
    v73 = *(v1 + 3432);
    v74 = *(v1 + 2856);
    sub_10003FE1C();

    sub_100033A9C(v72, v74, type metadata accessor for ChallengeInviteContentCardHeaderKind);
    v75 = type metadata accessor for ChallengeInviteContentCardModel(0);
    v76 = (v74 + v75[5]);
    *v76 = v298;
    v76[1] = v294;
    v77 = (v74 + v75[6]);
    *v77 = v59;
    v77[1] = v290;
    sub_10001772C(v73, v74 + v75[7], &qword_100054A38, &unk_100049280);

    sub_100033444(v71, type metadata accessor for ChallengeDetail);
    v10 = sub_1000305A0;
    v11 = *(v1 + 4056);
    v12 = v1 + 16;
    v13 = v1 + 3680;
    goto LABEL_3;
  }

  if (!*(v1 + 2042))
  {
    v78 = *(v1 + 4512);
    v79 = *(v1 + 4504);
    v280 = *(v1 + 4488);
    v286 = *(v1 + 4496);
    v80 = *(v1 + 4008);
    v81 = *(v1 + 3960);
    v82 = *(v1 + 3624);
    v83 = *(v1 + 2904);
    v270 = *(v83 + 40);
    v276 = *(v83 + 32);
    sub_100040E2C();
    v319._countAndFlagsBits = 0;
    v319._object = 0xE000000000000000;
    sub_100040E1C(v319);
    v320._countAndFlagsBits = v79;
    v320._object = v78;
    sub_100040E0C(v320);
    v321._countAndFlagsBits = 0x6E656C6C61684320;
    v321._object = 0xEF756F5920646567;
    sub_100040E1C(v321);
    sub_100040E4C();
    sub_10003FE7C();
    v84 = sub_100040EAC();
    v295 = v85;
    v299 = v84;
    v86 = sub_100004010(*(v80 + *(v81 + 20)), *(v80 + *(v81 + 20) + 8), *v80, *(v80 + 8));
    v291 = v87;
    v88 = *(sub_1000028DC(&qword_100055B00, &qword_100048AD0) + 48);
    v89 = *(type metadata accessor for GameInfo(0) + 20);
    v90 = sub_100040D0C();
    (*(*(v90 - 8) + 16))(v82, v80 + v89, v90);
    sub_1000028DC(&qword_100055B08, &qword_100048B38);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_1000475D0;
    *(v91 + 32) = v280;
    *(v91 + 40) = v286;
    *(v82 + v88) = v91;
    swift_storeEnumTagMultiPayload();
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    if ((v302 & 1) == 0)
    {
      v93 = *(v1 + 4512);
      v92 = *(v1 + 4504);
      v95 = v270;
      v94 = v276;
    }

    v96 = *(v1 + 4152);
    v97 = *(v1 + 4104);
    v307._countAndFlagsBits = 0;
    v307._object = 0xE000000000000000;

    sub_1000411AC(36);

    v307._countAndFlagsBits = 0xD000000000000022;
    v307._object = 0x8000000100042D60;
    v322._countAndFlagsBits = v97;
    v322._object = v96;
    sub_100040EEC(v322);
    if (v95)
    {
      strcpy(&v307, "?inviteCode=");
      BYTE5(v307._object) = 0;
      HIWORD(v307._object) = -5120;
      v323._countAndFlagsBits = v94;
      v323._object = v95;
      sub_100040EEC(v323);
      sub_100040EEC(v307);
    }

    if (v93)
    {
      strcpy(&v307, "&inviterName=");
      HIWORD(v307._object) = -4864;
      v324._countAndFlagsBits = v92;
      v324._object = v93;
      sub_100040EEC(v324);
      sub_100040EEC(v307);
    }

    v98 = *(v1 + 4008);
    v99 = *(v1 + 3624);
    v100 = *(v1 + 3480);
    v101 = *(v1 + 2856);
    sub_10003FE1C();

    sub_100033A9C(v99, v101, type metadata accessor for ChallengeInviteContentCardHeaderKind);
    v102 = type metadata accessor for ChallengeInviteContentCardModel(0);
    v103 = (v101 + v102[5]);
    *v103 = v299;
    v103[1] = v295;
    v104 = (v101 + v102[6]);
    *v104 = v86;
    v104[1] = v291;
    sub_10001772C(v100, v101 + v102[7], &qword_100054A38, &unk_100049280);

    sub_100033444(v98, type metadata accessor for ChallengeDetail);
    v10 = sub_10002FD70;
    v11 = *(v1 + 4056);
    v12 = v1 + 16;
    v13 = v1 + 2272;
    goto LABEL_3;
  }

  if (*(v1 + 2042) != 1)
  {
    v105 = *(v1 + 3336);
    (*(*(v1 + 3288) + 16))(v105, v3 + v6, *(v1 + 3240));
    sub_100027CFC(v105, (v1 + 2488));
    *(v1 + 4544) = 0;
    *(v1 + 2712) = *(v1 + 2488);
    v107 = *(v1 + 2712);
    v108 = *(v1 + 2720);
    if (!sub_10003DEA0(*(v1 + 2712), *(v1 + 2720)))
    {
      v169 = *(v1 + 4496);
      v170 = *(v1 + 4488);
      v171 = *(v1 + 4008);
      v172 = *(v1 + 2856);
      sub_100011514(v1 + 2712);
      *(v1 + 2680) = *(v1 + 2504);
      sub_100011514(v1 + 2680);
      *(v1 + 2696) = *(v1 + 2520);
      sub_100011514(v1 + 2696);
      v173 = *(sub_1000028DC(&qword_100055B00, &qword_100048AD0) + 48);
      v174 = *(type metadata accessor for GameInfo(0) + 20);
      v175 = sub_100040D0C();
      (*(*(v175 - 8) + 16))(v172, v171 + v174, v175);
      sub_1000028DC(&qword_100055B08, &qword_100048B38);
      v176 = swift_allocObject();
      *(v176 + 16) = xmmword_1000475D0;
      *(v176 + 32) = v170;
      *(v176 + 40) = v169;
      *(v172 + v173) = v176;
      swift_storeEnumTagMultiPayload();
      v177 = qword_1000545B8;

      if (v177 != -1)
      {
        swift_once();
      }

      v178 = *(v1 + 4512);
      v179 = *(v1 + 4504);
      v180 = *(v1 + 4008);
      v181 = *(v1 + 2856);
      v305 = qword_100058DA0;
      v300 = *algn_100058DA8;
      v182 = (v180 + *(*(v1 + 3960) + 20));
      v183 = *v182;
      v184 = v182[1];
      v186 = *v180;
      v185 = v180[1];

      v187 = sub_100004950(v179, v178, v183, v184, v186, v185);
      v189 = v188;

      v190 = type metadata accessor for ChallengeInviteContentCardModel(0);
      v191 = v190[7];
      v192 = sub_10003FE2C();
      (*(*(v192 - 8) + 56))(v181 + v191, 1, 1, v192);
      v193 = (v181 + v190[5]);
      *v193 = v305;
      v193[1] = v300;
      v194 = (v181 + v190[6]);
      *v194 = v187;
      v194[1] = v189;
      sub_100033444(v180, type metadata accessor for ChallengeDetail);
      v10 = sub_100030528;
      v11 = *(v1 + 4056);
      v12 = v1 + 16;
      v13 = v1 + 3968;
      goto LABEL_3;
    }

    v303 = v1 + 2712;
    v109 = *(v1 + 4152);
    v110 = *(v1 + 4008);
    v111 = *(v1 + 3960);
    v112 = *(*(v1 + 2904) + 32);
    *(v1 + 2536) = *(v1 + 4104);
    *(v1 + 2544) = v109;
    *(v1 + 2552) = v112;
    *(v1 + 2568) = v5;
    *(v1 + 2576) = v297;
    v113 = *(v110 + *(v111 + 24));
    v114 = *(v113 + 16);
    if (v114)
    {
      v115 = 0;
      v116 = (v1 + 2312);
      v117 = v113 + 32;
      countAndFlagsBits = &_swiftEmptyArrayStorage;
      do
      {
        v119 = (v117 + 72 * v115);
        v120 = v115;
        while (1)
        {
          v121 = *(v113 + 16);
          if (v120 >= v121)
          {
            __break(1u);
            goto LABEL_98;
          }

          v122 = v119[1];
          v123 = v119[2];
          v124 = v119[3];
          *(v1 + 2376) = *(v119 + 64);
          v125 = *v119;
          *(v1 + 2344) = v123;
          *(v1 + 2360) = v124;
          *v116 = v125;
          *(v1 + 2328) = v122;
          if ((*(v1 + 2376) & 1) == 0 && *(v1 + 2368) == 1)
          {
            break;
          }

          ++v120;
          v119 = (v119 + 72);
          if (v114 == v120)
          {
            goto LABEL_72;
          }
        }

        v297 = v117;
        sub_100033B04(v1 + 2312, v1 + 2200);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v307._countAndFlagsBits = countAndFlagsBits;
        v292 = v108;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000366AC(0, countAndFlagsBits[2] + 1, 1);
          countAndFlagsBits = v307._countAndFlagsBits;
        }

        v128 = countAndFlagsBits[2];
        v127 = countAndFlagsBits[3];
        v129 = v128 + 1;
        if (v128 >= v127 >> 1)
        {
          v288 = v114 - 1;
          sub_1000366AC((v127 > 1), v128 + 1, 1);
          v129 = v128 + 1;
          countAndFlagsBits = v307._countAndFlagsBits;
        }

        v115 = v120 + 1;
        countAndFlagsBits[2] = v129;
        v130 = &countAndFlagsBits[9 * v128];
        *(v130 + 2) = *v116;
        v131 = *(v1 + 2328);
        v132 = *(v1 + 2344);
        v133 = *(v1 + 2360);
        *(v130 + 96) = *(v1 + 2376);
        *(v130 + 4) = v132;
        *(v130 + 5) = v133;
        *(v130 + 3) = v131;
        v108 = v292;
        v117 = v297;
      }

      while (v114 - 1 != v120);
    }

    else
    {
      countAndFlagsBits = &_swiftEmptyArrayStorage;
    }

LABEL_72:
    v195 = countAndFlagsBits[2];
    if (!v195)
    {
      v213 = *(v1 + 4496);
      v214 = *(v1 + 4488);
      v215 = *(v1 + 4008);
      v216 = *(v1 + 2856);
      sub_100011514(v303);
      *(v1 + 2792) = *(v1 + 2504);
      sub_100011514(v1 + 2792);
      *(v1 + 2808) = *(v1 + 2520);
      sub_100011514(v1 + 2808);

      v217 = *(sub_1000028DC(&qword_100055B00, &qword_100048AD0) + 48);
      v218 = *(type metadata accessor for GameInfo(0) + 20);
      v219 = sub_100040D0C();
      (*(*(v219 - 8) + 16))(v216, v215 + v218, v219);
      sub_1000028DC(&qword_100055B08, &qword_100048B38);
      v220 = swift_allocObject();
      *(v220 + 16) = xmmword_1000475D0;
      *(v220 + 32) = v214;
      *(v220 + 40) = v213;
      *(v216 + v217) = v220;
      swift_storeEnumTagMultiPayload();
      v221 = qword_1000545A8;

      if (v221 != -1)
      {
        swift_once();
      }

      v222 = *(v1 + 4152);
      v223 = *(v1 + 4104);
      v224 = *(v1 + 4008);
      v225 = *(v1 + 2856);
      v226 = *algn_100058D88;
      v306 = qword_100058D80;
      v227 = *v224;
      v228 = v224[1];

      v229 = sub_1000043B8(v227, v228);
      v231 = v230;
      v307._countAndFlagsBits = 0;
      v307._object = 0xE000000000000000;
      sub_1000411AC(36);

      v307._countAndFlagsBits = 0xD000000000000022;
      v307._object = 0x8000000100042D60;
      v326._countAndFlagsBits = v223;
      v326._object = v222;
      sub_100040EEC(v326);
      v232 = type metadata accessor for ChallengeInviteContentCardModel(0);
      sub_10003FE1C();

      v233 = (v225 + *(v232 + 20));
      *v233 = v306;
      v233[1] = v226;
      v234 = (v225 + *(v232 + 24));
      *v234 = v229;
      v234[1] = v231;
      goto LABEL_96;
    }

    if (v195 != 1)
    {
      v235 = *(v1 + 4008);
      v236 = *(v1 + 2856);
      sub_100011514(v303);
      *(v1 + 2728) = *(v1 + 2504);
      sub_100011514(v1 + 2728);
      *(v1 + 2744) = *(v1 + 2520);
      sub_100011514(v1 + 2744);
      sub_1000318A8(v235, (v1 + 2536), countAndFlagsBits, v236);

LABEL_96:
      sub_100033444(*(v1 + 4008), type metadata accessor for ChallengeDetail);
      v10 = sub_1000304A8;
      v11 = *(v1 + 4056);
      v12 = v1 + 16;
      v13 = v1 + 4208;
      goto LABEL_3;
    }

    v277 = (v1 + 2776);
    v196 = *(v1 + 3048);
    v197 = *(v1 + 3000);
    *(v1 + 2088) = *(countAndFlagsBits + 2);
    v199 = *(countAndFlagsBits + 4);
    v198 = *(countAndFlagsBits + 5);
    v200 = *(countAndFlagsBits + 3);
    *(v1 + 2152) = *(countAndFlagsBits + 96);
    *(v1 + 2120) = v199;
    *(v1 + 2136) = v198;
    *(v1 + 2104) = v200;
    sub_100033B04(v1 + 2088, v1 + 1976);

    v301 = (v1 + 2760);
    *(v1 + 2760) = *(v1 + 2504);
    sub_1000028DC(&qword_100055B10, &unk_100048B40);
    v201 = *(v196 + 72);
    v202 = (*(v196 + 80) + 32) & ~*(v196 + 80);
    v263 = v201;
    v203 = swift_allocObject();
    *(v203 + 16) = xmmword_1000475D0;
    v273 = v203;
    v262 = v202;
    v204 = (v203 + v202);
    v261 = sub_1000028DC(&qword_100055100, &unk_100047CC0);
    v268 = v204 + *(v261 + 48);
    v264 = *(v1 + 2104);
    v266 = *(v1 + 2096);
    v296 = v108;
    v205 = *(v1 + 2112);
    v206 = *(v1 + 2120);
    v283 = *(v1 + 2136);
    v287 = *(v1 + 2128);
    v207 = type metadata accessor for PlayerAvatar.Overlay(0);
    v208 = *(*(v207 - 8) + 56);
    v208(v197, 1, 1, v207);
    v260 = type metadata accessor for PlayerAvatar(0);
    v209 = *(v260 + 20);
    v208(v204 + v209, 1, 1, v207);
    *v204 = v205;
    v204[1] = v206;

    sub_100006CEC(v197, v204 + v209);
    *v268 = 1;
    v268[8] = 0;
    v210 = v266 == v107 && v264 == v296;
    v211 = v210;
    if (v210 || (sub_10004133C() & 1) != 0)
    {
      if ((v107 != *(v1 + 4392) || v296 != *(v1 + 4440)) && (sub_10004133C() & 1) == 0)
      {
        v243 = *(v1 + 4496);
        v244 = *(v1 + 4488);
        v237 = *(v1 + 3096);
        v245 = *(v1 + 3000);
        v239 = v237 + *(v261 + 48);
        v208(v245, 1, 1, v207);
        v246 = *(v260 + 20);
        v208(v237 + v246, 1, 1, v207);
        *v237 = v244;
        v237[1] = v243;

        v241 = v237 + v246;
        v242 = v245;
        goto LABEL_94;
      }

      if (v211)
      {
LABEL_87:
        v212 = v273;
LABEL_95:
        v265._countAndFlagsBits = *(v1 + 4104);
        v265._object = *(v1 + 4152);
        v247 = *(v1 + 4008);
        v248 = *(v1 + 3960);
        v249 = *(v1 + 2856);
        sub_100011514(v303);
        sub_100011514(v301);
        *v277 = *(v1 + 2520);
        sub_100011514(v277);
        *v249 = v212;
        *(v249 + 8) = 0;
        *(v249 + 16) = 256;
        swift_storeEnumTagMultiPayload();
        sub_100040E2C();
        v327._countAndFlagsBits = 0;
        v327._object = 0xE000000000000000;
        sub_100040E1C(v327);
        v328._countAndFlagsBits = v287;
        v328._object = v283;
        sub_100040E0C(v328);
        v329._countAndFlagsBits = 0x2065687420736920;
        v329._object = 0xEF2172656E6E6957;
        sub_100040E1C(v329);
        sub_100040E4C();
        sub_10003FE7C();
        v250 = sub_100040EAC();
        v252 = v251;
        v253 = sub_100004570(v287, v283, *(v247 + *(v248 + 20)), *(v247 + *(v248 + 20) + 8), *v247, *(v247 + 8));
        v255 = v254;
        v307._countAndFlagsBits = 0;
        v307._object = 0xE000000000000000;
        sub_1000411AC(36);

        v307._countAndFlagsBits = 0xD000000000000022;
        v307._object = 0x8000000100042D60;
        sub_100040EEC(v265);
        v256 = type metadata accessor for ChallengeInviteContentCardModel(0);
        sub_10003FE1C();

        sub_100033B60(v1 + 2088);

        v257 = (v249 + *(v256 + 20));
        *v257 = v250;
        v257[1] = v252;
        v258 = (v249 + *(v256 + 24));
        *v258 = v253;
        v258[1] = v255;
        goto LABEL_96;
      }
    }

    if (sub_10004133C())
    {
      goto LABEL_87;
    }

    v237 = *(v1 + 3096);
    v238 = *(v1 + 3000);
    v239 = v237 + *(v261 + 48);
    v208(v238, 1, 1, v207);
    v240 = *(v260 + 20);
    v208(v237 + v240, 1, 1, v207);
    *v237 = *v301;

    v241 = v237 + v240;
    v242 = v238;
LABEL_94:
    sub_100006CEC(v242, v241);
    *v239 = 0;
    v239[8] = 1;
    v212 = sub_100032C5C(1, 2, 1, v273);
    v212[2] = 2;
    sub_100033A9C(v237, v212 + v262 + v263, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
    goto LABEL_95;
  }

  if (v302)
  {
    v33 = *(v1 + 4512);
    v34 = *(v1 + 4504);
    v35 = *(v1 + 4496);
    v278 = *(v1 + 4488);
    v293._countAndFlagsBits = *(v1 + 4104);
    v293._object = *(v1 + 4152);
    v36 = *(v1 + 4008);
    v37 = *(v1 + 3960);
    v38 = *(v1 + 2856);
    sub_100040E2C();
    v310._countAndFlagsBits = 0;
    v310._object = 0xE000000000000000;
    sub_100040E1C(v310);
    v311._countAndFlagsBits = v34;
    v311._object = v33;
    sub_100040E0C(v311);
    v312._countAndFlagsBits = 0x6E656C6C61684320;
    v312._object = 0xEF756F5920646567;
    sub_100040E1C(v312);
    sub_100040E4C();
    sub_10003FE7C();
    v39 = sub_100040EAC();
    v284 = v40;
    v289 = v39;
    v41 = sub_100004010(*(v36 + *(v37 + 20)), *(v36 + *(v37 + 20) + 8), *v36, *(v36 + 8));
    v43 = v42;
    v44 = *(sub_1000028DC(&qword_100055B00, &qword_100048AD0) + 48);
    v45 = *(type metadata accessor for GameInfo(0) + 20);
    v46 = sub_100040D0C();
    (*(*(v46 - 8) + 16))(v38, v36 + v45, v46);
    sub_1000028DC(&qword_100055B08, &qword_100048B38);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1000475D0;
    *(v47 + 32) = v278;
    *(v47 + 40) = v35;
    *(v38 + v44) = v47;
    swift_storeEnumTagMultiPayload();
    v307._countAndFlagsBits = 0;
    v307._object = 0xE000000000000000;

    sub_1000411AC(36);

    v307._countAndFlagsBits = 0xD000000000000022;
    v307._object = 0x8000000100042D60;
    sub_100040EEC(v293);
    v48 = type metadata accessor for ChallengeInviteContentCardModel(0);
    sub_10003FE1C();

    v49 = (v38 + *(v48 + 20));
    *v49 = v289;
    v49[1] = v284;
    v50 = (v38 + *(v48 + 24));
    *v50 = v41;
    v50[1] = v43;
    sub_100033444(v36, type metadata accessor for ChallengeDetail);
    v10 = sub_10002FF78;
    v11 = *(v1 + 4056);
    v12 = v1 + 16;
    v13 = v1 + 2912;
  }

  else
  {
    v106 = *(v1 + 3384);
    (*(*(v1 + 3288) + 16))(v106, v3 + v6, *(v1 + 3240));
    sub_100027CFC(v106, (v1 + 2632));
    *(v1 + 4536) = 0;
    v134 = *(v1 + 4496);
    v135 = *(v1 + 4488);
    v136 = *(v1 + 3192);
    v281 = *(v1 + 3000);
    sub_1000028DC(&qword_100055B08, &qword_100048B38);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000488F0;
    *(inited + 32) = v135;
    *(inited + 40) = v134;
    v138 = *(v1 + 2656);
    v303 = *(v1 + 2648);
    *(inited + 48) = v303;
    *(inited + 56) = v138;
    v297 = v138;
    *(v1 + 2824) = *(v1 + 2632);

    sub_100011514(v1 + 2824);
    *(v1 + 2840) = *(v1 + 2664);
    sub_100011514(v1 + 2840);

    v307._countAndFlagsBits = &_swiftEmptyArrayStorage;
    sub_100036668(0, 2, 0);
    v139 = v307._countAndFlagsBits;
    v267 = *(inited + 40);
    v271 = *(inited + 32);
    v288 = sub_1000028DC(&qword_100055100, &unk_100047CC0);
    v140 = v136 + *(v288 + 48);
    v108 = type metadata accessor for PlayerAvatar.Overlay(0);
    v141 = *(*(v108 - 8) + 56);
    v141(v281, 1, 1, v108);
    v274 = type metadata accessor for PlayerAvatar(0);
    v142 = *(v274 + 20);
    v292 = v141;
    v141(v136 + v142, 1, 1, v108);
    *v136 = v271;
    v136[1] = v267;

    sub_100006CEC(v281, v136 + v142);
    *v140 = 0;
    v140[8] = 1;
    v114 = *(v139 + 16);
    v121 = *(v139 + 24);
    v107 = v114 + 1;
    if (v114 >= v121 >> 1)
    {
LABEL_98:
      sub_100036668((v121 > 1), v107, 1);
      v139 = v307._countAndFlagsBits;
    }

    v143 = *(v1 + 3192);
    v144 = *(v1 + 3144);
    v145 = *(v1 + 3048);
    v146 = *(v1 + 3000);
    *(v139 + 16) = v107;
    v282 = (*(v145 + 80) + 32) & ~*(v145 + 80);
    v272 = *(v145 + 72);
    sub_100033A9C(v143, v139 + v282 + v272 * v114, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);

    v147 = v144 + *(v288 + 48);
    v292(v146, 1, 1, v108);
    v148 = *(v274 + 20);
    v292(v144 + v148, 1, 1, v108);
    *v144 = v303;
    v144[1] = v297;
    sub_100006CEC(v146, v144 + v148);
    *v147 = 0;
    v147[8] = 1;
    v307._countAndFlagsBits = v139;
    v150 = *(v139 + 16);
    v149 = *(v139 + 24);
    if (v150 >= v149 >> 1)
    {
      sub_100036668((v149 > 1), v150 + 1, 1);
      v139 = v307._countAndFlagsBits;
    }

    v151 = *(v1 + 3144);
    v152 = *(v1 + 2856);
    *(v139 + 16) = v150 + 1;
    sub_100033A9C(v151, v139 + v282 + v150 * v272, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
    *v152 = v139;
    *(v152 + 8) = 0;
    *(v152 + 16) = 1;
    swift_storeEnumTagMultiPayload();
    if (qword_1000545A0 != -1)
    {
      swift_once();
    }

    v153 = *(v1 + 4152);
    v154 = *(v1 + 4104);
    v155 = *(v1 + 4008);
    v156 = *(v1 + 2856);
    v157 = *algn_100058D78;
    v304 = qword_100058D70;
    v158 = (v155 + *(*(v1 + 3960) + 20));
    v159 = *v158;
    v160 = v158[1];
    v161 = *v155;
    v162 = v155[1];

    v163 = sub_1000041E4(v159, v160, v161, v162);
    v165 = v164;
    v307._countAndFlagsBits = 0;
    v307._object = 0xE000000000000000;
    sub_1000411AC(36);

    v307._countAndFlagsBits = 0xD000000000000022;
    v307._object = 0x8000000100042D60;
    v325._countAndFlagsBits = v154;
    v325._object = v153;
    sub_100040EEC(v325);
    v166 = type metadata accessor for ChallengeInviteContentCardModel(0);
    sub_10003FE1C();

    v167 = (v156 + *(v166 + 20));
    *v167 = v304;
    v167[1] = v157;
    v168 = (v156 + *(v166 + 24));
    *v168 = v163;
    v168[1] = v165;
    sub_100033444(v155, type metadata accessor for ChallengeDetail);
    v10 = sub_100030220;
    v11 = *(v1 + 4056);
    v12 = v1 + 16;
    v13 = v1 + 4160;
  }

LABEL_3:

  return _swift_asyncLet_finish(v12, v11, v10, v13);
}

uint64_t sub_10002FE08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000300A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100030330()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000306CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000308F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100030B24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100030D30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100030EA8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  type metadata accessor for ChallengeInviteCardState(0);
  v6[5] = swift_task_alloc();
  sub_10004101C();
  v6[6] = sub_10004100C();
  v8 = sub_100040FDC();

  return _swift_task_switch(sub_100030F6C, v8, v7);
}

uint64_t sub_100030F6C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  sub_1000333DC(v2, v1, type metadata accessor for ChallengeInviteCardState);
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v0[2] = v3;
  sub_100033CA0(&qword_100055AF8, type metadata accessor for ChallengeInviteCardViewModel, &unk_100048A54);
  sub_10003FE9C();

  sub_100033444(v1, type metadata accessor for ChallengeInviteCardState);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000310DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000028DC(&qword_1000555F8, &unk_100048440);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000311AC, 0, 0);
}

uint64_t sub_1000311AC(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 40);
  if (v3)
  {
    v4 = *(v2 + 32);
    sub_10004024C();
    v5 = sub_10004015C();
    *(v1 + 72) = v6;
    v9 = v5;
    v10 = v6;
    v11 = *(v1 + 40);
    v12 = *(v1 + 32);
    (*(*(v1 + 56) + 8))(*(v1 + 64), *(v1 + 48));
    v13 = swift_task_alloc();
    *(v1 + 80) = v13;
    v13[2] = v12;
    v13[3] = v11;
    v13[4] = v4;
    v13[5] = v3;
    v13[6] = v9;
    v13[7] = v10;
    v14 = swift_task_alloc();
    *(v1 + 88) = v14;
    *v14 = v1;
    v14[1] = sub_1000313A4;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 104, 0, 0, 0xD00000000000002ELL, 0x8000000100042E10, sub_100033BB4, v13, &type metadata for ChallengeInviteCodeStatus);
  }

  else
  {
    **(v1 + 16) = 0;

    v7 = *(v1 + 8);

    return v7();
  }
}

uint64_t sub_1000313A4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100031538;
  }

  else
  {

    v2 = sub_1000314C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000314C8()
{
  **(v0 + 16) = *(v0 + 104);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100031538()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000315AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return _swift_task_switch(sub_1000315CC, 0, 0);
}

uint64_t sub_1000315CC()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_100031684;

  return sub_10001EFB4(v0 + 16, v2, v3);
}

uint64_t sub_100031684()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1000317B4, 0, 0);
  }
}

uint64_t sub_1000317B4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);
  v1[1] = *(v0 + 32);
  v1[2] = v3;
  *v1 = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1000317E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_10001C3DC;

  return sub_10001F960(a1, a3, a4);
}

void sub_1000318A8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000028DC(&qword_1000547F0, &qword_100046E60);
  __chkstk_darwin(v8 - 8);
  v50 = &v43 - v9;
  v10 = type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType(0);
  v49 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  if (v13 >= 3)
  {
    v14 = 3;
  }

  else
  {
    v14 = *(a3 + 16);
  }

  v15 = &_swiftEmptyArrayStorage;
  if (v13)
  {
    v43 = a1;
    v44 = a2;
    v45 = a4;
    v53 = &_swiftEmptyArrayStorage;
    sub_100036668(0, v14, 0);
    v15 = v53;
    v48 = type metadata accessor for PlayerAvatar.Overlay(0);
    v16 = *(v48 - 8);
    v17 = *(v16 + 56);
    v46 = v16 + 56;
    v47 = v17;
    v18 = (a3 + 64);
    v19 = v50;
    do
    {
      v20 = *v18;
      v51 = *(v18 - 1);
      v52 = v14;
      v21 = &v12[*(sub_1000028DC(&qword_100055100, &unk_100047CC0) + 48)];
      v22 = v48;
      v23 = v15;
      v24 = v47;
      v47(v19, 1, 1, v48);
      v25 = *(type metadata accessor for PlayerAvatar(0) + 20);
      v24(&v12[v25], 1, 1, v22);
      v15 = v23;
      *v12 = v51;
      *(v12 + 1) = v20;

      sub_100006CEC(v19, &v12[v25]);
      *v21 = 0;
      v21[8] = 1;
      v53 = v23;
      v27 = v23[2];
      v26 = v23[3];
      if (v27 >= v26 >> 1)
      {
        sub_100036668((v26 > 1), v27 + 1, 1);
        v15 = v53;
      }

      v15[2] = v27 + 1;
      sub_100033A9C(v12, v15 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v27, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
      v18 += 9;
      v14 = v52 - 1;
    }

    while (v52 != 1);
    a2 = v44;
    a4 = v45;
    a1 = v43;
  }

  *a4 = v15;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  type metadata accessor for ChallengeInviteContentCardHeaderKind(0);
  swift_storeEnumTagMultiPayload();
  if (qword_1000545B0 != -1)
  {
    swift_once();
  }

  v28 = qword_100058D90;
  v29 = *algn_100058D98;
  v30 = (a1 + *(type metadata accessor for ChallengeDetail(0) + 20));
  v31 = *v30;
  v32 = v30[1];
  v33 = *a1;
  v34 = a1[1];

  v35 = sub_10000477C(v31, v32, v33, v34);
  v37 = v36;
  v38 = *a2;
  v39 = a2[1];
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_1000411AC(36);

  v53 = 0xD000000000000022;
  v54 = 0x8000000100042D60;
  v55._countAndFlagsBits = v38;
  v55._object = v39;
  sub_100040EEC(v55);
  v40 = type metadata accessor for ChallengeInviteContentCardModel(0);
  sub_10003FE1C();

  v41 = (a4 + *(v40 + 20));
  *v41 = v28;
  v41[1] = v29;
  v42 = (a4 + *(v40 + 24));
  *v42 = v35;
  v42[1] = v37;
}

uint64_t sub_100031C80()
{

  sub_100033444(v0 + OBJC_IVAR____TtC26ChallengesMessageExtension28ChallengeInviteCardViewModel_infoLoader, type metadata accessor for ChallengeInviteInfoLoader);
  v1 = OBJC_IVAR____TtC26ChallengesMessageExtension28ChallengeInviteCardViewModel_localPlayerProfile;
  v2 = sub_10004027C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100033444(v0 + OBJC_IVAR____TtC26ChallengesMessageExtension28ChallengeInviteCardViewModel__state, type metadata accessor for ChallengeInviteCardState);
  v3 = OBJC_IVAR____TtC26ChallengesMessageExtension28ChallengeInviteCardViewModel___observationRegistrar;
  v4 = sub_10003FECC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t sub_100031E08(uint64_t a1)
{
  result = type metadata accessor for ChallengeInviteInfoLoader(319);
  if (v2 <= 0x3F)
  {
    result = sub_10004027C();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ChallengeInviteCardState(319);
      if (v4 <= 0x3F)
      {
        result = sub_10003FECC();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100031F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeInviteContentCardModel(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100032014(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ChallengeInviteContentCardModel(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100032098(uint64_t a1)
{
  v1 = type metadata accessor for ChallengeInviteContentCardModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_100032104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000028DC(&qword_1000559B8, &unk_100048980);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000321E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000028DC(&qword_1000559B8, &unk_100048980);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1000322F8(uint64_t a1)
{
  if (!qword_100055A28)
  {
    sub_1000403FC();
    v1 = sub_10004040C();
    if (!v2)
    {
      atomic_store(v1, &qword_100055A28);
    }
  }
}

unint64_t sub_100032350()
{
  result = qword_100055A30;
  if (!qword_100055A30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100055A30);
  }

  return result;
}

uint64_t sub_1000323C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChallengeInviteCardState(0);
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

uint64_t sub_100032498(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChallengeInviteCardState(0);
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

uint64_t sub_10003259C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10003262C()
{
  result = qword_100055AC8;
  if (!qword_100055AC8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100055AC8);
  }

  return result;
}

uint64_t sub_1000326B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_100033CA0(&qword_100055AF8, type metadata accessor for ChallengeInviteCardViewModel, &unk_100048A54);
  sub_10003FEAC();

  v4 = OBJC_IVAR____TtC26ChallengesMessageExtension28ChallengeInviteCardViewModel__state;
  swift_beginAccess();
  return sub_1000333DC(v3 + v4, a1, type metadata accessor for ChallengeInviteCardState);
}

uint64_t sub_100032790(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001C3DC;

  return sub_10002CB98(a1);
}

uint64_t sub_100032830()
{
  v1 = *(type metadata accessor for ChallengeInviteCardState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = type metadata accessor for ChallengeInviteContentCardModel(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 2, v6))
  {
    type metadata accessor for ChallengeInviteContentCardHeaderKind(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v7 = sub_100040D0C();
      (*(*(v7 - 8) + 8))(v0 + v3, v7);
      sub_1000028DC(&qword_100055B00, &qword_100048AD0);
    }

    v8 = *(v6 + 28);
    v9 = sub_10003FE2C();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100032A40(uint64_t a1)
{
  v4 = *(type metadata accessor for ChallengeInviteCardState(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001ECD8;

  return sub_100030EA8(v10, a1, v6, v7, v8, v1 + v5);
}

char *sub_100032B38(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000028DC(&qword_100055B20, &qword_100048DE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100032C5C(void *result, int64_t a2, char a3, void *a4)
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000028DC(&qword_100055B10, &unk_100048B40);
  v10 = *(type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType(0) - 8);
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
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType(0) - 8);
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

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_100032E34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100032F00(v11, 0, 0, 1, a1, a2);
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
    sub_100011074(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006AC8(v11);
  return v7;
}

unint64_t sub_100032F00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10003300C(a5, a6);
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
    result = sub_1000411EC();
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

void *sub_10003300C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100033058(a1, a2);
  sub_100033188(&off_100051EA8);
  return v3;
}

void *sub_100033058(uint64_t a1, unint64_t a2)
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

  v6 = sub_100033274(v5, 0);
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

  result = sub_1000411EC();
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
        v10 = sub_100040EFC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100033274(v10, 0);
        result = sub_10004119C();
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

void sub_100033188(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1000332E8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_100033274(uint64_t a1, uint64_t a2)
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

  sub_1000028DC(&qword_100055B18, &qword_100048B50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000332E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000028DC(&qword_100055B18, &qword_100048B50);
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

uint64_t sub_1000333DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100033444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000334C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeInviteCardState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100033524(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001ECD8;

  return sub_10001CC34(a1, v4);
}

uint64_t sub_1000335E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001ECD8;

  return sub_1000310DC(a1, v4, v5, v6);
}

uint64_t sub_100033694(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001ECD8;

  return sub_1000315AC(a1, v1);
}

uint64_t sub_100033730()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100033770(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001C3DC;

  return sub_1000317E0(a1, v4, v5, v6);
}

uint64_t sub_100033824@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004062C();
  *a1 = result;
  return result;
}

uint64_t sub_100033878(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10003396C;

  return v5(v2 + 16);
}

uint64_t sub_10003396C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}