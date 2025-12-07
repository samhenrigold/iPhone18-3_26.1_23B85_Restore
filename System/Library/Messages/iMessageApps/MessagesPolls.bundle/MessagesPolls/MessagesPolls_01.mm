__int128 *sub_17AAC(__int128 *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (a2)
    {
      v4 = sub_48574();
      *(v4 + 16) = a2;
      v5 = *v2;
      v12 = v2[1];
      v6 = v12;
      v13 = v5;
      *(v4 + 32) = v5;
      *(v4 + 48) = v6;
      *(v4 + 57) = *(v2 + 25);
      v7 = a2 - 1;
      if (a2 != 1)
      {
        v8 = 80;
        do
        {
          v9 = (v4 + v8);
          sub_1C650(&v13, v11);
          sub_6128(&v12, v11, &qword_62B48, &qword_4BA68);
          v10 = v2[1];
          *v9 = *v2;
          v9[1] = v10;
          *(v9 + 25) = *(v2 + 25);

          v8 += 48;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v13 = *result;
      sub_1C6AC(&v13);
      v12 = v2[1];
      sub_60C8(&v12, &qword_62B48, &qword_4BA68);

      return _swiftEmptyArrayStorage;
    }

    return v4;
  }

  return result;
}

void sub_17BDC(void *a1, void *a2)
{
  v3 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v4 = *&v2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  if (!v4)
  {
    __break(1u);
    goto LABEL_42;
  }

  v5 = v2;
  swift_getKeyPath();
  *&v99 = v4;
  v8 = sub_1B304();

  sub_475C4();

  v9 = sub_101E4(a2);
  v11 = v10;

  if (!*&v5[v3])
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  sub_1D3BC(v9, v11);

  v12 = [v5 presentationStyle];
  if ([v5 presentationStyle] != &dword_0 + 2 && v12 != &dword_4)
  {
    if (*&v5[v3])
    {
      swift_retain_n();

      swift_getKeyPath();
      sub_475C4();

      v13 = sub_101E4(a2);
      v15 = v14;

      v99 = xmmword_4B9C0;
      v100 = _swiftEmptyArrayStorage;
      *&v101 = v13;
      *(&v101 + 1) = v15;
      sub_1CCAC(&v99);

      return;
    }

    goto LABEL_43;
  }

  if (!a1)
  {

    return;
  }

  v93 = v11;
  v16 = sub_54A4(&qword_62B68, &qword_4BBB0);
  v92 = v82;
  v17 = *(v16 - 8);
  v91 = *(v17 + 64);
  __chkstk_darwin(v16, v18);
  v94 = v82 - v19;
  v20 = sub_54A4(&qword_62B70, &unk_4BBB8);
  __chkstk_darwin(v20 - 8, v21);
  v23 = v82 - v22;
  if (!*&v5[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking])
  {
    goto LABEL_44;
  }

  v24 = *(v16 + 48);
  v25 = a1;

  v26 = &v23[v24];
  v27 = v25;
  v28 = sub_3A614(v23, v26, v25);
  v82[1] = 0;
  LOBYTE(v25) = v28;

  v23[*(v16 + 64)] = v25;
  v29 = *(v17 + 56);
  v88 = v16;
  v29(v23, 0, 1, v16);
  sub_1C23C(v23, v94);
  v30 = [v27 time];
  v31 = sub_54A4(&qword_62138, &qword_4AC00);
  __chkstk_darwin(v31 - 8, v32);
  v34 = v82 - v33;
  v90 = v8;
  v89 = v3;
  v83 = v27;
  if (v30)
  {
    sub_47544();

    v35 = sub_47564();
    v36 = *(v35 - 8);
    (*(v36 + 56))(v34, 0, 1, v35);
    sub_60C8(v34, &qword_62138, &qword_4AC00);
    *&v99 = 0;
    *(&v99 + 1) = 0xE000000000000000;
    v37 = [v27 time];
    v39 = __chkstk_darwin(v37, v38);
    v41 = v82 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!v39)
    {
LABEL_46:
      __break(1u);
      return;
    }

    sub_47544();

    sub_1C308(&qword_62B78, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v102._countAndFlagsBits = sub_48854();
    sub_48484(v102);

    (*(v36 + 8))(v41, v35);
  }

  else
  {
    v44 = sub_47564();
    (*(*(v44 - 8) + 56))(v34, 1, 1, v44);
    v42 = sub_60C8(v34, &qword_62138, &qword_4AC00);
  }

  v45 = v88;
  v46 = v91;
  __chkstk_darwin(v42, v43);
  v47 = v82 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v48 = v94;
  sub_6128(v94, v47, &qword_62B68, &qword_4BBB0);
  v49 = *(v45 + 48);
  sub_7010(v47, &v99);
  v50 = sub_476A4();
  v51 = *(v50 - 8);
  v87 = *(v51 + 8);
  v88 = v51 + 8;
  v52 = v87(&v47[v49], v50);
  v85 = v82;
  __chkstk_darwin(v52, v53);
  sub_6128(v48, v47, &qword_62B68, &qword_4BBB0);
  v84 = sub_6D28(&v47[*(v45 + 48)]);
  v54 = sub_476F4();
  isa = v54[-1].isa;
  v56 = *(isa + 1);
  v57 = isa + 8;
  v58 = v56(v47, v54);
  __chkstk_darwin(v58, v59);
  v60 = v82 - v86;
  sub_6128(v48, v82 - v86, &qword_62B68, &qword_4BBB0);
  v61 = v50;
  v62 = v60[*(v45 + 64)];
  v87(&v60[*(v45 + 48)], v61);
  v56(v60, v54);
  if (v62 <= 1)
  {
    v63 = &unk_62000;
    v64 = v89;
    goto LABEL_18;
  }

  v63 = &unk_62000;
  v64 = v89;
  if (v62 == 2)
  {
LABEL_18:
    v65 = v84;
    v54 = sub_48874();

    v66 = v54 & 1;
    v67 = *&v5[v64];
    if (v67)
    {
      goto LABEL_19;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    if (v62 == 2)
    {
      v73 = 0xE900000000000075;
      v74 = 0x6E654D20646E6553;
    }

    else
    {
      v73 = 0x8000000000049B50;
      v74 = 0xD000000000000013;
    }

    goto LABEL_35;
  }

  v66 = 1;
  v65 = v84;
  v67 = *&v5[v64];
  if (!v67)
  {
    goto LABEL_30;
  }

LABEL_19:
  swift_getKeyPath();
  v95[2] = v67;

  sub_475C4();

  swift_beginAccess();
  v68 = v100;
  v98 = v100;

  v70 = sub_22E0C(v69, v65, v68);

  if (v70)
  {
    v71 = v70;
  }

  else
  {
  }

  sub_1D100(v71);
  v96 = v101;
  v97 = v99;
  sub_6128(&v97, v95, &qword_62B48, &qword_4BA68);
  sub_6128(&v98, v95, &qword_62150, &qword_4BA60);
  sub_6128(&v96, v95, &qword_62B48, &qword_4BA68);
  sub_1CCAC(&v99);

  if (qword_61CF0 != -1)
  {
    swift_once();
  }

  v72 = sub_47814();
  sub_5ED4(v72, qword_64360);
  v54 = sub_477F4();
  v57 = sub_48604();
  if (!os_log_type_enabled(v54, v57))
  {

    goto LABEL_36;
  }

  v67 = swift_slowAlloc();
  v63 = swift_slowAlloc();
  v95[0] = v63;
  *v67 = 136315394;
  if (v62 > 1)
  {
    goto LABEL_31;
  }

  if (v62)
  {
    v73 = 0xEC0000006E696775;
    v74 = 0x6C5020736C6C6F50;
  }

  else
  {
    v73 = 0xE700000000000000;
    v74 = 0x6E776F6E6B6E55;
  }

LABEL_35:
  v75 = sub_3DD80(v74, v73, v95);

  *(v67 + 4) = v75;
  *(v67 + 12) = 1024;
  *(v67 + 14) = v66;
  _os_log_impl(&dword_0, v54, v57, "Staging source: %s, from keyboard suggestion: %{BOOL}d", v67, 0x12u);
  sub_6020(v63);

LABEL_36:
  v76 = *&v5[v64];
  v77 = v83;
  if (!v76)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  sub_60C8(&v97, &qword_62B48, &qword_4BA68);
  sub_60C8(&v98, &qword_62150, &qword_4BA60);
  sub_60C8(&v96, &qword_62B48, &qword_4BA68);
  v78 = [v77 isFromMe];
  v79 = v78;
  if (v78 == *(v76 + 176))
  {
    sub_60C8(v94, &qword_62B68, &qword_4BBB0);

    *(v76 + 176) = v79;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v81);
    v82[-2] = v76;
    LOBYTE(v82[-1]) = v79;
    v95[0] = v76;
    sub_475B4();

    sub_60C8(v94, &qword_62B68, &qword_4BBB0);
  }
}

uint64_t sub_188D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_485B4();
  v5[3] = sub_485A4();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_18994;

  return sub_18AD0(a5);
}

uint64_t sub_18994()
{

  v1 = sub_48594();

  return _swift_task_switch(sub_1C7E8, v1, v0);
}

uint64_t sub_18AD0(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  sub_485B4();
  v2[21] = sub_485A4();
  v4 = sub_48594();
  v2[22] = v4;
  v2[23] = v3;

  return _swift_task_switch(sub_18B68, v4, v3);
}

uint64_t sub_18B68()
{
  v1 = [*(v0 + 160) presentationStyle];
  if (v1 == &dword_0 + 2)
  {
    v2 = *(*(v0 + 160) + OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel);
    *(v0 + 192) = v2;
    if (v2)
    {
      v3 = *(v0 + 152);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_18D10;
      v4 = swift_continuation_init();
      *(v0 + 136) = sub_54A4(&qword_62BA8, &qword_4BC98);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1B21C;
      *(v0 + 104) = &unk_5EBB8;
      *(v0 + 112) = v4;

      [v3 _requestConversationAvatarsWithSize:v0 + 80 completionHandler:{50.0, 50.0}];
      v1 = (v0 + 16);
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v1);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_18D10()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {

    v3 = *(v1 + 176);
    v4 = *(v1 + 184);
    v5 = sub_18E9C;
  }

  else
  {
    v3 = *(v1 + 176);
    v4 = *(v1 + 184);
    v5 = sub_18E28;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_18E28()
{

  sub_1E024(*(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18E9C()
{

  swift_willThrow();
  if (qword_61CF0 != -1)
  {
    swift_once();
  }

  v1 = sub_47814();
  sub_5ED4(v1, qword_64360);
  v2 = sub_477F4();
  v3 = sub_48624();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Error when attempting to fetch avatar images.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_18FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_485B4();
  v5[3] = sub_485A4();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_19090;

  return sub_18AD0(a5);
}

uint64_t sub_19090()
{

  v1 = sub_48594();

  return _swift_task_switch(sub_191CC, v1, v0);
}

uint64_t sub_191CC()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_19294(uint64_t a1)
{
  v2 = v1;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for MessagesViewController(0);
  objc_msgSendSuper2(&v17, "didBecomeActiveWithConversation:", a1);
  [v2 _balloonMaskEdgeInsets];
  v5 = v4;
  [v2 _balloonMaskEdgeInsets];
  v7 = v6;
  [v2 _balloonMaskEdgeInsets];
  v9 = v8;
  result = [v2 _balloonMaskEdgeInsets];
  v12 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v13 = *&v2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  if (!v13)
  {
    __break(1u);
    return result;
  }

  v14 = v11;

  if (sub_47824())
  {
    v13[15] = v5;
    v13[16] = v7;
    v13[17] = v9;
    v13[18] = v14;

    if (!*&v2[v12])
    {
      return result;
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v16);
    sub_1B304();
    sub_475B4();

    if (!*&v2[v12])
    {
      return result;
    }
  }

  sub_1DCA8();
}

id sub_195BC(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for MessagesViewController(0);
  return objc_msgSendSuper2(&v7, *a4, a3);
}

void sub_19610(void *a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking);
  if (v3)
  {
    v6 = *(v3 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation);
    *(v3 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation) = a2;

    v7 = a2;

    if (qword_61CF0 != -1)
    {
      swift_once();
    }

    v8 = sub_47814();
    sub_5ED4(v8, qword_64360);
    v9 = sub_477F4();
    v10 = sub_48604();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Polls: _didUpdate", v11, 2u);
    }

    sub_17BDC(a1, v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_197D4(double a1, double a2)
{
  v5 = v2;
  v8 = type metadata accessor for ContentView(0);
  v10 = __chkstk_darwin(v8, v9);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v64 - v14;
  v16 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentHost;
  v17 = *&v2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentHost];
  if (!v17)
  {
    __break(1u);
    goto LABEL_33;
  }

  v18 = [v17 view];
  if (!v18)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v19 = v18;
  v3 = [v18 window];

  if (v3)
  {

LABEL_7:
    v21 = *&v5[v16];
    if (!v21)
    {
      goto LABEL_16;
    }

    v22 = [v21 view];
    if (v22)
    {
      v23 = v22;
      [v22 layoutIfNeeded];

      v24 = *&v5[v16];
      if (v24)
      {
        v25 = [v24 view];
        if (v25)
        {
          v26 = v25;
          [v25 sizeThatFits:{a1, a2}];

          if (qword_61CF0 != -1)
          {
            swift_once();
          }

          v27 = sub_47814();
          sub_5ED4(v27, qword_64360);
          v15 = v5;
          v28 = sub_477F4();
          v29 = sub_48604();
          if (!os_log_type_enabled(v28, v29))
          {

            return;
          }

          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v69 = v31;
          *v30 = 136315394;
          v32 = sub_48694();
          v34 = sub_3DD80(v32, v33, &v69);

          *(v30 + 4) = v34;
          *(v30 + 12) = 2048;
          v4 = *&v15[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
          if (v4)
          {
            swift_getKeyPath();
            v68 = v4;
            sub_1B304();

            sub_475C4();

            swift_beginAccess();
            v35 = *(v4 + 25);

            v36 = *(v35 + 16);

            *(v30 + 14) = v36;

            _os_log_impl(&dword_0, v28, v29, "New contentSize: %s. Items: %ld", v30, 0x16u);
            sub_6020(v31);

            return;
          }

          goto LABEL_38;
        }

        goto LABEL_36;
      }

LABEL_16:
      if (qword_61CF0 != -1)
      {
        swift_once();
      }

      v37 = sub_47814();
      sub_5ED4(v37, qword_64360);
      v3 = v5;
      v15 = sub_477F4();
      v38 = sub_48604();
      if (!os_log_type_enabled(v15, v38))
      {

        return;
      }

      v39 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v69 = v4;
      *v39 = 136315394;
      v68 = *&v5[v16];
      v40 = v68;
      sub_54A4(&qword_62B60, &qword_4BBA8);
      v41 = sub_48434();
      v43 = sub_3DD80(v41, v42, &v69);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2048;
      v44 = *&v3[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
      if (v44)
      {
        swift_getKeyPath();
        v68 = v44;
        sub_1B304();

        sub_475C4();

        swift_beginAccess();
        v45 = *(v44 + 25);

        v46 = *(v45 + 16);

        *(v39 + 14) = v46;

        _os_log_impl(&dword_0, v15, v38, "No content size!. Content host: %s. Items: %ld", v39, 0x16u);
        sub_6020(v4);

        return;
      }

      goto LABEL_37;
    }

    goto LABEL_34;
  }

  v67 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v4 = *&v5[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  if (!v4)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:

    __break(1u);
LABEL_38:

    __break(1u);
    goto LABEL_39;
  }

  swift_getKeyPath();
  v68 = v4;
  v3 = sub_1B304();

  v66 = v3;
  sub_475C4();

  v20 = v4[98];

  if (v20)
  {
    goto LABEL_7;
  }

  v47 = v67;
  v48 = *&v5[v67];
  *&v15[*(v8 + 28)] = swift_getKeyPath();
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  *v15 = v48;
  v49 = qword_61CD8;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = xmmword_64238;
  *(v15 + 8) = xmmword_64228;
  *(v15 + 24) = v50;
  v51 = *&qword_64258;
  *(v15 + 40) = xmmword_64248;
  *(v15 + 56) = v51;
  *(v15 + 9) = a1;
  v15[80] = 0;
  sub_1C17C(v15, v12);
  v52 = objc_allocWithZone(sub_54A4(&qword_62B58, &qword_4BBA0));
  v53 = sub_479E4();
  [v53 invalidateIntrinsicContentSize];
  [v53 sizeThatFits:{a1, a2}];
  if (qword_61CF0 != -1)
  {
    swift_once();
  }

  v54 = sub_47814();
  sub_5ED4(v54, qword_64360);
  v4 = v5;
  v55 = sub_477F4();
  v56 = sub_48604();
  if (!os_log_type_enabled(v55, v56))
  {

    goto LABEL_31;
  }

  v57 = swift_slowAlloc();
  v65 = swift_slowAlloc();
  v69 = v65;
  *v57 = 136315394;
  v58 = sub_48694();
  v60 = sub_3DD80(v58, v59, &v69);

  *(v57 + 4) = v60;
  *(v57 + 12) = 2048;
  v61 = *&v5[v47];
  if (v61)
  {
    swift_getKeyPath();
    v68 = v61;

    sub_475C4();

    swift_beginAccess();
    v62 = *(v61 + 25);

    v63 = *(v62 + 16);

    *(v57 + 14) = v63;

    _os_log_impl(&dword_0, v55, v56, "New contentSize from _UIHostingView: %s. Items: %ld", v57, 0x16u);
    sub_6020(v65);

LABEL_31:
    sub_1C1E0(v15);
    return;
  }

LABEL_39:

  __break(1u);
}

id sub_1A120()
{
  result = [v0 activeConversation];
  v2 = result;
  if (!result)
  {
    return (v2 != 0);
  }

  v3 = *&v0[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  if (v3)
  {
    swift_getKeyPath();
    *&v9 = v3;
    sub_1B304();

    sub_475C4();

    sub_101E4(v2);

    v4 = sub_476F4();
    __chkstk_darwin(v4 - 8, v5);
    v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_476D4();
    sub_7010(v7, &v9);
    sub_1A2F8(&v9, 1u, 0);
    v14 = v9;
    sub_60C8(&v14, &qword_62B48, &qword_4BA68);
    v13 = v10;
    sub_60C8(&v13, &qword_62150, &qword_4BA60);
    v12 = v11;
    sub_60C8(&v12, &qword_62B48, &qword_4BA68);

    return (v2 != 0);
  }

  __break(1u);
  return result;
}

id sub_1A2F8(__int128 *a1, unsigned int a2, char a3)
{
  v4 = v3;
  result = [v4 activeConversation];
  if (result)
  {
    v9 = *&v4[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
    if (v9)
    {
      v10 = result;
      v24 = a2;
      swift_getKeyPath();
      *&v28 = v9;
      sub_1B304();
      swift_retain_n();
      sub_475C4();

      v11 = sub_101E4(v10);
      v13 = v12;

      sub_1D3BC(v11, v13);

      if ((a3 & 1) == 0 || (v14 = [v4 activeConversation]) == 0 || (v15 = v14, v16 = objc_msgSend(v14, "selectedMessage"), v15, v17 = objc_msgSend(v16, "session"), v16, !v17))
      {
        v17 = [objc_allocWithZone(MSSession) init];
      }

      v18 = sub_476F4();
      v19 = *(v18 - 8);
      __chkstk_darwin(v18, v20);
      v22 = &v23 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = *a1;
      v27 = *(a1 + 2);
      v26 = *(a1 + 24);
      sub_6128(&v27, v25, &qword_62150, &qword_4BA60);
      sub_6128(&v28, v25, &qword_62B48, &qword_4BA68);
      sub_6128(&v26, v25, &qword_62B48, &qword_4BA68);
      result = sub_6484(a1, v22);
      if (*&v4[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking])
      {

        sub_3BB98(v22, v17, v24);

        return (*(v19 + 8))(v22, v18);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

id sub_1A5DC(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 activeConversation];
  if (result)
  {
    v7 = result;
    v24[0] = sub_476F4();
    v24[1] = v24;
    v8 = *(v24[0] - 8);
    __chkstk_darwin(v24[0], v9);
    v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = *a1;
    v27 = *(a1 + 2);
    v26 = *(a1 + 24);
    sub_6128(&v27, v25, &qword_62150, &qword_4BA60);
    sub_6128(&v28, v25, &qword_62B48, &qword_4BA68);
    sub_6128(&v26, v25, &qword_62B48, &qword_4BA68);
    result = sub_6484(a1, v11);
    v12 = *&v3[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
    if (v12)
    {
      swift_getKeyPath();
      v25[0] = v12;
      sub_1B304();

      sub_475C4();

      v13 = sub_101E4(v7);
      v15 = v14;

      sub_7AD8(v13, v15, a2);

      v16 = sub_476A4();
      v17 = *(v16 - 8);
      __chkstk_darwin(v16, v18);
      v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

      result = sub_68C4(v21, v20);
      if (*&v3[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking])
      {

        v22 = [v7 selectedMessage];
        v23 = [v22 session];

        sub_3BCEC(v11, v20, v23);

        (*(v17 + 8))(v20, v16);
        return (*(v8 + 8))(v11, v24[0]);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1A928(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = [v2 activeConversation];
  if (!v6)
  {
LABEL_17:
    v36 = 0;
    v37 = 0;
    v11 = 0;
    v38 = 0;
    v39 = 0;
LABEL_18:
    *a2 = v36;
    a2[1] = v37;
    a2[2] = v11;
    a2[3] = v38;
    a2[4] = v39;
    return;
  }

  v7 = v6;
  v51 = 0x6C7469546C6C6F70;
  v52 = 0xE900000000000065;
  sub_48774();
  if (!*(a1 + 16) || (v8 = sub_4E3C(&v53), (v9 & 1) == 0))
  {

    sub_5FCC(&v53);
    goto LABEL_17;
  }

  sub_606C(*(a1 + 56) + 32 * v8, v55);
  sub_5FCC(&v53);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v44 = a2;
  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  v42 = v51;
  v43 = v52;
  v47 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v48 = xmmword_4A9C0;
  v45 = a1;
  v46 = v7;
  while (1)
  {
    sub_54A4(&qword_62B50, &qword_4BB60);
    v12 = swift_allocObject();
    *(v12 + 16) = v48;
    *(v12 + 56) = &type metadata for Int;
    *(v12 + 64) = &protocol witness table for Int;
    *(v12 + 32) = v10;
    v56._countAndFlagsBits = sub_48424();
    v53 = 0x6974704F6C6C6F70;
    v54 = 0xEA00000000006E6FLL;
    sub_48484(v56);
    v51 = v53;
    v52 = v54;

    sub_48774();
    if (!*(a1 + 16))
    {
      break;
    }

    v13 = sub_4E3C(&v53);
    if ((v14 & 1) == 0)
    {
      break;
    }

    sub_606C(*(a1 + 56) + 32 * v13, v55);
    sub_5FCC(&v53);
    if ((swift_dynamicCast() & 1) == 0)
    {

      if (!*(v11 + 2))
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    v15 = *&v3[v47];
    if (!v15)
    {
      __break(1u);
      goto LABEL_27;
    }

    v16 = v3;

    swift_getKeyPath();
    v53 = v15;
    sub_1B304();
    sub_475C4();

    v17 = sub_101E4(v7);
    v49 = v18;
    v50 = v17;

    type metadata accessor for PollOptionText();
    v19 = swift_allocObject();
    *(v19 + 16) = [objc_allocWithZone(NSAttributedString) init];
    v20 = objc_allocWithZone(NSAttributedString);

    v21 = sub_483D4();

    v22 = [v20 initWithString:v21];

    v23 = *(v19 + 16);
    *(v19 + 16) = v22;

    v24 = sub_47594();
    v25 = *(v24 - 8);
    __chkstk_darwin(v24, v26);
    v28 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_47584();
    v29 = sub_47574();
    v31 = v30;
    (*(v25 + 8))(v28, v24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10FD8(0, *(v11 + 2) + 1, 1, v11);
    }

    v33 = *(v11 + 2);
    v32 = *(v11 + 3);
    if (v33 >= v32 >> 1)
    {
      v11 = sub_10FD8((v32 > 1), v33 + 1, 1, v11);
    }

    ++v10;
    *(v11 + 2) = v33 + 1;
    v34 = &v11[48 * v33];
    *(v34 + 4) = v29;
    *(v34 + 5) = v31;
    v35 = v49;
    *(v34 + 6) = v50;
    *(v34 + 7) = v35;
    *(v34 + 8) = v19;
    v34[72] = 1;
    a1 = v45;
    v7 = v46;
    v3 = v16;
    if (v10 == 12)
    {
      goto LABEL_21;
    }
  }

  sub_5FCC(&v53);
LABEL_21:
  if (!*(v11 + 2))
  {
LABEL_25:

    v36 = 0;
    v37 = 0;
    v11 = 0;
    v38 = 0;
    v39 = 0;
    a2 = v44;
    goto LABEL_18;
  }

LABEL_22:
  v40 = *&v3[v47];
  if (v40)
  {
    swift_getKeyPath();
    v53 = v40;
    sub_1B304();

    sub_475C4();

    v38 = sub_101E4(v7);
    v39 = v41;

    v37 = v43;
    a2 = v44;
    v36 = v42;
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
}

void sub_1B004(double a1)
{
  v2 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v3 = *(v1 + OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel);
  if (v3)
  {
    swift_getKeyPath();
    sub_1B304();

    sub_475C4();

    v5 = *(v3 + 156);

    v6 = a1;
    if (v5 != v6)
    {
      v7 = *(v1 + v2);
      if (v7)
      {
        if (*(v7 + 156) == v6)
        {
          *(v7 + 156) = v6;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath, v9);

          sub_475B4();
        }
      }
    }
  }
}

uint64_t sub_1B21C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_6190((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_54A4(&qword_62BB0, &qword_4BCA0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_9790();
    **(*(v4 + 64) + 40) = sub_48544();

    return _swift_continuation_throwingResume(v4);
  }
}

unint64_t sub_1B304()
{
  result = qword_62300;
  if (!qword_62300)
  {
    type metadata accessor for PollViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62300);
  }

  return result;
}

uint64_t sub_1B35C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel);
  if (v2)
  {
    v3 = result;
    if (*(v2 + 98) == 1)
    {
      *(v2 + 98) = 1;

      sub_1D84C();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath, v5);
      *&v17 = v2;
      sub_1B304();

      sub_475B4();
    }

    sub_1A928(v3, &v14);
    v6 = v15;
    if (v15)
    {
      v17 = v14;
      v18 = v15;
      v19 = v16;
      *&v22 = 0xD000000000000015;
      *(&v22 + 1) = 0x8000000000049B30;
      sub_48774();
      if (*(v3 + 16) && (v7 = sub_4E3C(v12), (v8 & 1) != 0))
      {
        sub_606C(*(v3 + 56) + 32 * v7, v13);
        sub_5FCC(v12);
        if (swift_dynamicCast())
        {
          if (v11 == 7)
          {
            v9 = 3;
          }

          else
          {
            v9 = 2 * (v11 == 1);
          }

          sub_1A2F8(&v17, v9, 1);
          v13[0] = v17;
          sub_60C8(v13, &qword_62B48, &qword_4BA68);
          *&v22 = v18;
          sub_60C8(&v22, &qword_62150, &qword_4BA60);
          v12[0] = v19;
          sub_60C8(v12, &qword_62B48, &qword_4BA68);
          v10 = 1;
          return v10 & 1;
        }

        v20 = v14;
        sub_60C8(&v20, &qword_62B48, &qword_4BA68);
        v21 = v6;
        sub_60C8(&v21, &qword_62150, &qword_4BA60);
        v22 = v16;
        sub_60C8(&v22, &qword_62B48, &qword_4BA68);
      }

      else
      {
        v20 = v14;
        sub_60C8(&v20, &qword_62B48, &qword_4BA68);
        v21 = v6;
        sub_60C8(&v21, &qword_62150, &qword_4BA60);
        v22 = v16;
        sub_60C8(&v22, &qword_62B48, &qword_4BA68);
        sub_5FCC(v12);
      }
    }

    v10 = sub_1A120();
    return v10 & 1;
  }

  __break(1u);
  return result;
}

void sub_1B6CC(int a1, char *a2, void *aBlock)
{
  v4 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v5 = *&a2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  if (!v5)
  {
LABEL_31:
    _Block_release(aBlock);
    __break(1u);
LABEL_32:
    _Block_release(aBlock);
    __break(1u);
    goto LABEL_33;
  }

  swift_getKeyPath();
  *&v58 = v5;
  v8 = sub_1B304();

  sub_475C4();

  v9 = v5[11];
  if (!v9)
  {

LABEL_29:
    (*(aBlock + 2))(aBlock, 0);
    return;
  }

  v49 = a1;
  v44 = v4;
  v51 = aBlock;
  v52 = a2;
  v48 = v5[10];
  swift_getKeyPath();
  *&v58 = v5;
  v53 = v9;

  v43 = v8;
  sub_475C4();

  swift_beginAccess();
  v50 = v5;
  v10 = v5[25];
  v11 = *(v10 + 16);

  if (v11)
  {
    v12 = 0;
    v13 = v10 + 88;
    v55 = v11;
    v46 = v11 - 1;
    v14 = _swiftEmptyArrayStorage;
    v47 = v10 + 88;
    v56 = v10;
    do
    {
      v54 = v14;
      v15 = (v13 + (v12 << 6));
      while (1)
      {
        if (v12 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v16 = *(v15 - 5);
        v18 = *(v15 - 4);
        v17 = *(v15 - 3);
        v19 = *(v15 - 2);
        v20 = *(v15 - 1);
        v21 = *v15;
        aBlock = (v12 + 1);
        v57 = v17[2];

        swift_retain_n();

        if ([v57 length])
        {
          break;
        }

        v15 += 64;
        ++v12;
        v10 = v56;
        if (v55 == aBlock)
        {
          v14 = v54;
          goto LABEL_18;
        }
      }

      v45 = v12++;
      v57 = v16;

      v14 = v54;
      aBlock = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_10FD8(0, *(v54 + 2) + 1, 1, v54);
      }

      v22 = v19;
      v24 = *(v14 + 2);
      v23 = *(v14 + 3);
      v25 = v57;
      if (v24 >= v23 >> 1)
      {
        v27 = sub_10FD8((v23 > 1), v24 + 1, 1, v14);
        v25 = v57;
        v14 = v27;
      }

      *(v14 + 2) = v24 + 1;
      v26 = &v14[48 * v24];
      *(v26 + 4) = v25;
      *(v26 + 5) = v18;
      *(v26 + 6) = v22;
      *(v26 + 7) = v20;
      *(v26 + 8) = aBlock;
      v26[72] = v21;
      v10 = v56;
      v13 = v47;
    }

    while (v46 != v45);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

LABEL_18:

  if (!*(v14 + 2))
  {

    aBlock = v51;
    goto LABEL_29;
  }

  v28 = v14;
  v29 = [v52 activeConversation];
  aBlock = v51;
  if (!v29)
  {

    goto LABEL_29;
  }

  if (v49)
  {
    goto LABEL_23;
  }

  v30 = *&v52[v44];
  if (v30)
  {
    swift_getKeyPath();
    *&v58 = v30;

    sub_475C4();

    v31 = sub_101E4(v29);
    v33 = v32;

    v34 = sub_10490(v31, v33, v28);

    v28 = v34;
LABEL_23:
    v35 = [v29 selectedMessage];
    v36 = [v35 session];

    if (!v36)
    {
      v36 = [objc_allocWithZone(MSSession) init];
    }

    v37 = sub_476F4();
    v38 = *(v37 - 8);
    __chkstk_darwin(v37, v39);
    v41 = &v43 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = xmmword_4B9C0;
    v59 = v28;
    v60 = v48;
    v61 = v53;

    sub_6484(&v58, v41);
    if (*&v52[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking])
    {

      v42 = sub_39A48(v41, v36, 0, 1);

      (*(aBlock + 2))(aBlock, v42);

      (*(v38 + 8))(v41, v37);
      return;
    }

    goto LABEL_32;
  }

LABEL_33:
  _Block_release(aBlock);
  __break(1u);
}

uint64_t sub_1BC98()
{
  result = [v0 performSendAnimationOnAppear];
  if (!result)
  {
    return result;
  }

  v2 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v3 = *&v0[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  if (!v3)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (*(v3 + 98) == 1)
  {
    *(v3 + 98) = 1;

    sub_1D84C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v5);
    *&v29 = v3;
    sub_1B304();

    sub_475B4();
  }

  v6 = *&v0[v2];
  if (!v6)
  {
    goto LABEL_29;
  }

  v7 = [v0 performSendAnimationOnAppear];
  if (v7 == *(v6 + 97))
  {
    *(v6 + 97) = v7;
  }

  else
  {
    v8 = swift_getKeyPath();
    __chkstk_darwin(v8, v9);
    *&v29 = v6;
    sub_1B304();
    sub_475B4();
  }

  v10 = *&v0[v2];
  if (!v10)
  {
    goto LABEL_30;
  }

  swift_getKeyPath();
  *&v29 = v10;
  sub_1B304();
  swift_retain_n();
  sub_475C4();

  swift_beginAccess();
  v11 = *(v10 + 200);

  v12 = *(v11 + 16);
  if (v12)
  {
    v27 = 0;
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    do
    {
      v15 = (v11 + 32 + (v13 << 6));
      v16 = v13;
      while (1)
      {
        if (v16 >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v17 = *v15;
        v18 = *(v15 + 42);
        v19 = v15[2];
        v30 = v15[1];
        v31[0] = v19;
        *(v31 + 10) = v18;
        v29 = v17;
        v13 = v16 + 1;
        v20 = *(v19 + 16);
        sub_1C0E8(&v29, v28);
        if ([v20 length])
        {
          break;
        }

        result = sub_E8EC(&v29);
        v15 += 4;
        ++v16;
        if (v12 == v13)
        {
          goto LABEL_25;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v32 = v14;
      if ((result & 1) == 0)
      {
        result = sub_220AC(0, v14[2] + 1, 1);
        v14 = v32;
      }

      v22 = v14[2];
      v21 = v14[3];
      if (v22 >= v21 >> 1)
      {
        result = sub_220AC((v21 > 1), v22 + 1, 1);
        v14 = v32;
      }

      v14[2] = v22 + 1;
      v23 = &v14[8 * v22];
      v24 = v29;
      v25 = v30;
      v26 = v31[0];
      *(v23 + 74) = *(v31 + 10);
      v23[3] = v25;
      v23[4] = v26;
      v23[2] = v24;
    }

    while (v12 - 1 != v16);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

LABEL_25:

  sub_1EB40(v14);
}

uint64_t sub_1C17C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E0(uint64_t a1)
{
  v2 = type metadata accessor for ContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C23C(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62B68, &qword_4BBB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C308(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C37C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C43C;

  return sub_18FD4(a1, v4, v5, v7, v6);
}

uint64_t sub_1C43C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C530()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1C578(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C7CC;

  return sub_188D8(a1, v4, v5, v7, v6);
}

uint64_t sub_1C700(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62BB8, &qword_4BCA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
  *a2 = *(v3 + 200);
}

uint64_t sub_1C8A8()
{
  v0 = sub_47814();
  sub_5F0C(v0, qword_64360);
  sub_5ED4(v0, qword_64360);
  return sub_47804();
}

uint64_t sub_1C92C()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1C9A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1CA24(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1B304();
  sub_475B4();
}

uint64_t sub_1CAC4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  sub_1B304();
  sub_475C4();

  v4 = v1[4];
  v3 = v1[5];
  v6 = v1[6];
  v5 = v9[7];
  v7 = v9[8];
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v7;
}

uint64_t sub_1CB60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  v4 = v3[5];
  v6 = v3[6];
  v5 = v3[7];
  v7 = v3[8];
  *a2 = v3[4];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  a2[4] = v7;
}

uint64_t sub_1CBFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = *(a1 + 32);
  v6 = v4[0];
  v7 = v1;
  v8 = *(a1 + 24);
  sub_6128(&v6, v3, &qword_62B48, &qword_4BA68);
  sub_6128(&v7, v3, &qword_62150, &qword_4BA60);
  sub_6128(&v8, v3, &qword_62B48, &qword_4BA68);
  return sub_1CCAC(v4);
}

uint64_t sub_1CCAC(__int128 *a1)
{
  v3 = *(v1 + 48);
  v12[0] = *(v1 + 32);
  v12[1] = v3;
  v13 = *(v1 + 64);
  v14 = v12[0];
  v15 = v3;
  v16 = *(v1 + 56);
  sub_6128(&v14, &v11, &qword_62B48, &qword_4BA68);
  sub_6128(&v15, &v11, &qword_62150, &qword_4BA60);
  sub_6128(&v16, &v11, &qword_62B48, &qword_4BA68);
  v4 = sub_22D40(v12, a1);
  sub_60C8(&v14, &qword_62B48, &qword_4BA68);
  sub_60C8(&v15, &qword_62150, &qword_4BA60);
  sub_60C8(&v16, &qword_62B48, &qword_4BA68);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v6);
    sub_1B304();
    sub_475B4();
    v11 = *a1;
    sub_60C8(&v11, &qword_62B48, &qword_4BA68);
    v10 = *(a1 + 2);
    sub_60C8(&v10, &qword_62150, &qword_4BA60);
    v9 = *(a1 + 24);
    sub_60C8(&v9, &qword_62B48, &qword_4BA68);
  }

  else
  {
    v8 = a1[1];
    *(v1 + 32) = *a1;
    *(v1 + 48) = v8;
    *(v1 + 64) = *(a1 + 4);

    sub_21098();
    return sub_1DCA8();
  }
}

uint64_t sub_1CED8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v8 = *(a2 + 2);
  v6 = *(a2 + 24);
  v7 = v2;
  v3 = a2[1];
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = *(a2 + 4);
  sub_6128(&v7, v5, &qword_62B48, &qword_4BA68);
  sub_6128(&v8, v5, &qword_62150, &qword_4BA60);
  sub_6128(&v6, v5, &qword_62B48, &qword_4BA68);

  sub_21098();
  return sub_1DCA8();
}

uint64_t sub_1CFBC()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
}

uint64_t sub_1D044@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_1D100(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_85F4(v3, a1);

  if (v4)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v7);
    sub_1B304();
    sub_475B4();
  }
}

uint64_t sub_1D218(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
}

uint64_t sub_1D280()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_1D300@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_1D37C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1D3BC(v1, v2);
}

uint64_t sub_1D3BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 80) == a1 && v5 == a2;
      if (v6 || (sub_48874() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v9);
    sub_1B304();
    sub_475B4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_1D4FC()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  return *(v0 + 96);
}

uint64_t sub_1D56C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  *a2 = *(v3 + 96);
  return result;
}

uint64_t sub_1D60C(uint64_t result)
{
  if (*(v1 + 96) == (result & 1))
  {
    *(v1 + 96) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_1B304();
    sub_475B4();
  }

  return result;
}

uint64_t sub_1D6F4()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  return *(v0 + 97);
}

uint64_t sub_1D764(uint64_t result)
{
  if (*(v1 + 97) == (result & 1))
  {
    *(v1 + 97) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_1B304();
    sub_475B4();
  }

  return result;
}

uint64_t sub_1D84C()
{
  v1 = v0;
  swift_getKeyPath();
  *&v24 = v0;
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
  v2 = *(v0 + 200);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = 0;
    v5 = 89;
    while (1)
    {
      swift_getKeyPath();
      *&v24 = v1;
      sub_475C4();

      v6 = *(v1 + 98);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_29988(v2);
        v2 = result;
      }

      if (v4 >= *(v2 + 16))
      {
        break;
      }

      ++v4;
      *(v2 + v5) = v6;
      v5 += 64;
      if (v3 == v4)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_9:
  swift_getKeyPath();
  *&v24 = v1;
  sub_475C4();

  if (*(v1 + 98))
  {
    return sub_1EB40(v2);
  }

  v8 = *(v2 + 16);
  if (!v8)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_24:

    v2 = v10;
    return sub_1EB40(v2);
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_12:
  v11 = (v2 + 32 + (v9 << 6));
  v12 = v9;
  while (v12 < *(v2 + 16))
  {
    v13 = *v11;
    v14 = *(v11 + 42);
    v15 = v11[2];
    v25 = v11[1];
    v26[0] = v15;
    *(v26 + 10) = v14;
    v24 = v13;
    v9 = v12 + 1;
    v16 = *(v15 + 16);
    sub_1C0E8(&v24, v23);
    if ([v16 length])
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v27 = v10;
      if ((result & 1) == 0)
      {
        result = sub_220AC(0, v10[2] + 1, 1);
        v10 = v27;
      }

      v18 = v10[2];
      v17 = v10[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_220AC((v17 > 1), v18 + 1, 1);
        v10 = v27;
      }

      v10[2] = v18 + 1;
      v19 = &v10[8 * v18];
      v20 = v24;
      v21 = v25;
      v22 = v26[0];
      *(v19 + 74) = *(v26 + 10);
      v19[3] = v21;
      v19[4] = v22;
      v19[2] = v20;
      if (v8 - 1 != v12)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    result = sub_E8EC(&v24);
    v11 += 4;
    ++v12;
    if (v8 == v9)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DB04()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  return *(v0 + 98);
}

uint64_t sub_1DB74(char a1)
{
  if (*(v1 + 98) == (a1 & 1))
  {
    *(v1 + 98) = a1 & 1;

    return sub_1D84C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_1B304();
    sub_475B4();
  }
}

uint64_t sub_1DCA8()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  if (*(v0 + 96) == 1)
  {
    swift_getKeyPath();
    sub_475C4();

    if (*(v0 + 97) == 1)
    {
      swift_getKeyPath();
      sub_475C4();

      if (*(v0 + 98) == 1)
      {
        swift_getKeyPath();
        sub_475C4();

        if (*(*(v0 + 48) + 16))
        {
          sub_482F4();
          sub_47994();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1DE1C(uint64_t a1)
{
  if (*(a1 + 98))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v2);
    sub_1B304();
    sub_475B4();
  }

  else
  {
    *(a1 + 98) = 0;
    return sub_1D84C();
  }
}

uint64_t sub_1DF08()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();
}

uint64_t sub_1DF7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  *a2 = *(v3 + 104);
}

uint64_t sub_1E024(unint64_t a1)
{

  v4 = sub_8B24(v3, a1);

  if (v4)
  {
    *(v1 + 104) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v7);
    sub_1B304();
    sub_475B4();
  }
}

double sub_1E148()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  return result;
}

double sub_1E1BC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  *a2 = *(v3 + 112);

  return result;
}

uint64_t sub_1E264(uint64_t a1)
{
  if (*(v1 + 112) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_1B304();
    sub_475B4();
  }
}

double sub_1E368()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  return *(v0 + 120);
}

uint64_t sub_1E3DC(double a1, double a2, double a3, double a4)
{
  result = sub_47824();
  if (result)
  {
    v4[15] = a1;
    v4[16] = a2;
    v4[17] = a3;
    v4[18] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v11);
    sub_1B304();
    sub_475B4();
  }

  return result;
}

double *sub_1E4F4(double *result, double a2, double a3, double a4, double a5)
{
  result[15] = a2;
  result[16] = a3;
  result[17] = a4;
  result[18] = a5;
  return result;
}

float sub_1E500()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  return *(v0 + 156);
}

float sub_1E570@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  result = *(v3 + 156);
  *a2 = result;
  return result;
}

void sub_1E610(float a1)
{
  if (*(v1 + 156) == a1)
  {
    *(v1 + 156) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_1B304();
    sub_475B4();
  }
}

uint64_t sub_1E700()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  v1 = *(v0 + 160);

  return v1;
}

uint64_t sub_1E780@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  v4 = *(v3 + 168);
  *a2 = *(v3 + 160);
  a2[1] = v4;
}

uint64_t sub_1E7FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1E83C(v1, v2);
}

uint64_t sub_1E83C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 160) == a1 && *(v2 + 168) == a2;
  if (v5 || (sub_48874() & 1) != 0)
  {
    *(v2 + 160) = a1;
    *(v2 + 168) = a2;

    swift_getKeyPath();
    sub_1B304();
    sub_475C4();

    swift_beginAccess();

    return sub_1EB40(v6);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v9);
    sub_1B304();
    sub_475B4();
  }
}

uint64_t sub_1E9B0(void *a1, uint64_t a2, uint64_t a3)
{
  a1[20] = a2;
  a1[21] = a3;

  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  swift_beginAccess();

  return sub_1EB40(v3);
}

uint64_t sub_1EA60(uint64_t result)
{
  if (*(v1 + 176) == (result & 1))
  {
    *(v1 + 176) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_1B304();
    sub_475B4();
  }

  return result;
}

uint64_t sub_1EB40(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 200);
  v4 = *(v3 + 16);
  if (v4 == *(a1 + 16))
  {
    if (v4)
    {
      v5 = v3 == a1;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {

      v7 = v4 - 1;
      for (i = 32; ; i += 64)
      {
        v10 = *(v3 + i + 16);
        v9 = *(v3 + i + 32);
        v11 = *(v3 + i);
        *&v21[10] = *(v3 + i + 42);
        v20 = v10;
        *v21 = v9;
        v19 = v11;
        v12 = *(a1 + i + 16);
        v22 = *(a1 + i);
        v23 = v12;
        *v24 = *(a1 + i + 32);
        *&v24[10] = *(a1 + i + 42);
        if (v11 != v22 && (sub_48874() & 1) == 0 || v20 != v23 && (sub_48874() & 1) == 0)
        {
          goto LABEL_21;
        }

        v13 = *(*v21 + 16);
        v14 = *(*v24 + 16);
        sub_1C0E8(&v19, v18);
        sub_1C0E8(&v22, v18);
        if (![v13 isEqualToAttributedString:v14])
        {
          sub_E8EC(&v22);
          sub_E8EC(&v19);
LABEL_21:

          goto LABEL_22;
        }

        if (*&v21[8] == *&v24[8])
        {
          sub_E8EC(&v22);
          sub_E8EC(&v19);
        }

        else
        {
          v15 = sub_48874();
          sub_E8EC(&v22);
          sub_E8EC(&v19);
          if ((v15 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        if (v21[24] != v24[24] || v21[25] != v24[25])
        {
          goto LABEL_21;
        }

        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    *(v1 + 200) = a1;

    return sub_20450();
  }

  else
  {
LABEL_22:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v17);
    *&v22 = v1;
    sub_1B304();
    sub_475B4();
  }
}

uint64_t sub_1EDDC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
  v2 = *(v0[25] + 16);

  v17 = v2;
  if (!v2)
  {
  }

  v4 = 0;
  v5 = 40;
  v18 = result;
  while (1)
  {
    if (v4 >= *(result + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v7 = *(result + v5 - 8);
    v6 = *(result + v5);
    swift_getKeyPath();

    sub_475C4();

    if (v7 == v1[20] && v6 == v1[21])
    {

      if (!v4)
      {
        return result;
      }

      goto LABEL_12;
    }

    v8 = sub_48874();

    if (v8)
    {
      break;
    }

    ++v4;
    v5 += 64;
    result = v18;
    if (v17 == v4)
    {
    }
  }

  if (!v4)
  {
    return result;
  }

LABEL_12:
  swift_getKeyPath();
  sub_475C4();

  v9 = v1[25];
  if (*(v9 + 16) < v4)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v10 = ~v4;
  v11 = v9 + v5;
  while (!__CFADD__(v10++, 1))
  {
    v13 = (v11 - 64);
    v14 = *(v11 - 16);
    v11 -= 64;
    if (v14 == 1)
    {
      v15 = *(v13 - 1);
      v16 = *v13;

      return sub_1E83C(v15, v16);
    }
  }

  return result;
}

uint64_t sub_1F030(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 32); ; i += 4)
  {
    v8 = i[1];
    v20[0] = *i;
    v20[1] = v8;
    v10 = *i;
    v9 = i[1];
    v21[0] = i[2];
    *(v21 + 10) = *(i + 42);
    v17 = v10;
    v18 = v9;
    v19[0] = i[2];
    *(v19 + 10) = *(i + 42);
    sub_1C0E8(v20, &v14);
    v11 = a1(&v17);
    if (v3)
    {
      break;
    }

    v12 = v11;
    v14 = v17;
    v15 = v18;
    v16[0] = v19[0];
    *(v16 + 10) = *(v19 + 10);
    sub_E8EC(&v14);
    if (v12)
    {
      return v6;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  v14 = v17;
  v15 = v18;
  v16[0] = v19[0];
  *(v16 + 10) = *(v19 + 10);
  sub_E8EC(&v14);
  return v6;
}

uint64_t sub_1F150()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
  v19 = v0;
  v1 = *(v0[25] + 16);

  v17 = v1;
  if (!v1)
  {
  }

  v3 = 0;
  v4 = 0;
  v18 = result;
  while (1)
  {
    if (v4 >= *(result + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v20 = v3;
    v6 = *(result + v3 + 32);
    v5 = *(result + v3 + 40);
    swift_getKeyPath();

    sub_475C4();

    if (v6 == v19[20] && v5 == v19[21])
    {
      break;
    }

    v7 = sub_48874();

    if (v7)
    {
      goto LABEL_10;
    }

    ++v4;
    v3 = v20 + 64;
    result = v18;
    if (v17 == v4)
    {
    }
  }

LABEL_10:

  swift_getKeyPath();
  sub_475C4();

  swift_getKeyPath();
  sub_475C4();

  if (v4 + 1 >= *(v19[25] + 16))
  {
    return result;
  }

  swift_getKeyPath();
  sub_475C4();

  v8 = v19[25];
  v9 = *(v8 + 16);
  v10 = v9 > v4;
  v11 = v9 - v4;
  if (!v10)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v12 = (v8 + v20 + 152);
  while (--v11)
  {
    v13 = v12 + 64;
    v14 = *v12;
    v12 += 64;
    if (v14 == 1)
    {
      v15 = *(v13 - 15);
      v16 = *(v13 - 14);

      return sub_1E83C(v15, v16);
    }
  }

  return result;
}

uint64_t sub_1F43C()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  return *(v0 + 176);
}

uint64_t sub_1F4AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  *a2 = *(v3 + 176);
  return result;
}

uint64_t sub_1F554(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  *&v19[0] = v2;
  sub_1B304();
  sub_475C4();

  v6 = *(v2 + 88);
  if (v6)
  {
    v15 = *(v2 + 80);
    v7 = sub_54A4(&qword_62138, &qword_4AC00);
    v16 = &v14;
    __chkstk_darwin(v7 - 8, v8);
    v10 = &v14 - v9;
    v11 = sub_47564();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    swift_getKeyPath();
    *&v19[0] = v2;

    sub_475C4();

    *&v19[0] = v2;
    swift_getKeyPath();
    sub_475E4();

    swift_beginAccess();
    sub_7CC0(a1, a2, v15, v6, v10);
    sub_60C8(v10, &qword_62138, &qword_4AC00);
    swift_endAccess();

    *&v19[0] = v2;
    swift_getKeyPath();
    sub_475D4();

    swift_getKeyPath();
    *&v19[0] = v2;
    sub_475C4();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      *&v19[0] = v2;
      sub_475C4();

      v12 = *(v2 + 48);
      v19[0] = *(v2 + 32);
      v19[1] = v12;
      v20 = *(v2 + 64);
      v21 = v19[0];
      v22 = v12;
      v23 = *(v2 + 56);
      swift_getKeyPath();
      v18 = v2;
      sub_6128(&v21, v17, &qword_62B48, &qword_4BA68);
      sub_6128(&v22, v17, &qword_62150, &qword_4BA60);
      sub_6128(&v23, v17, &qword_62B48, &qword_4BA68);
      sub_475C4();

      v13 = *(v2 + 72);

      sub_1A5DC(v19, v13);

      swift_unknownObjectRelease();
      sub_60C8(&v21, &qword_62B48, &qword_4BA68);
      sub_60C8(&v22, &qword_62150, &qword_4BA60);
      return sub_60C8(&v23, &qword_62B48, &qword_4BA68);
    }
  }

  return result;
}

uint64_t sub_1F8F8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  v4 = *(v1 + 88);
  if (v4 && (v2 == *(v1 + 80) ? (v5 = v4 == v3) : (v5 = 0), v5 || (sub_48874() & 1) != 0) || (swift_getKeyPath(), sub_475C4(), , , v6 = sub_FA3C(v2, v3), , (v6 & 1) != 0))
  {
    if (qword_61CD0 != -1)
    {
      swift_once();
    }

    return sub_47494();
  }

  else
  {
    swift_getKeyPath();
    sub_475C4();

    v8 = sub_F554(v2, v3);
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_54A4(&qword_62B50, &qword_4BB60);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_4A9C0;
      *(v12 + 56) = &type metadata for String;
      *(v12 + 64) = sub_22844();
      *(v12 + 32) = v8;
      *(v12 + 40) = v10;
      if (qword_61CD0 != -1)
      {
        swift_once();
      }

      sub_47494();
      v13 = sub_483E4();

      return v13;
    }

    else
    {

      return 0;
    }
  }
}

unint64_t sub_1FC14(uint64_t a1)
{
  v114 = sub_54A4(&qword_630B8, &qword_4C1A0);
  __chkstk_darwin(v114, v2);
  v113 = (&v101 - v3);
  v112 = sub_54A4(&qword_630C0, &qword_4C1A8);
  __chkstk_darwin(v112, v4);
  v111 = &v101 - v5;
  v6 = type metadata accessor for ViewModelPollVote(0);
  v110 = *(v6 - 8);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v101 - v13;
  __chkstk_darwin(v12, v15);
  v115 = &v101 - v16;
  v109 = sub_54A4(&qword_630C8, &qword_4C1B0);
  v18 = __chkstk_darwin(v109, v17);
  v107 = (&v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v18, v20);
  v106 = &v101 - v22;
  v24 = __chkstk_darwin(v21, v23);
  v103 = (&v101 - v25);
  __chkstk_darwin(v24, v26);
  v102 = &v101 - v27;
  if (*(a1 + 16))
  {
    sub_54A4(&qword_630D0, &qword_4CFA0);
    v28 = sub_48814();
  }

  else
  {
    v28 = &_swiftEmptyDictionarySingleton;
  }

  v29 = sub_54A4(&qword_62B48, &qword_4BA68);
  v30 = a1 + 64;
  v31 = 1 << *(a1 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(a1 + 64);
  v105 = v29;
  v108 = a1;
  v116 = v28;
  v34 = v31 + 63;
  if (v29 == &type metadata for String)
  {
    v68 = v34 >> 6;
    v107 = (v28 + 64);

    v69 = 0;
    v101 = v14;
    while (v33)
    {
      v72 = v69;
LABEL_36:
      v73 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v74 = v73 | (v72 << 6);
      v75 = *(a1 + 56);
      v76 = (*(a1 + 48) + 16 * v74);
      v78 = *v76;
      v77 = v76[1];
      v79 = v109;
      v80 = *(v110 + 72);
      v81 = v102;
      sub_6BEC(v75 + v80 * v74, &v102[*(v109 + 48)]);
      *v81 = v78;
      v81[1] = v77;
      v82 = v103;
      sub_2524C(v81, v103);
      v83 = *(v79 + 48);
      v84 = *(v114 + 48);
      v85 = v82[1];
      v117 = *v82;
      v118 = v85;

      v86 = v113;
      swift_dynamicCast();
      sub_7A64(v82 + v83, v86 + v84);
      v87 = *(v112 + 48);
      v88 = *v86;
      v89 = v86[1];
      v90 = v86 + v84;
      v91 = v111;
      sub_7A64(v90, &v111[v87]);
      v92 = &v91[v87];
      v93 = v115;
      sub_7A64(v92, v115);
      v94 = v101;
      sub_7A64(v93, v101);
      v95 = v116;
      result = sub_4DA8(v88, v89);
      if (v96)
      {
        v70 = (v95[6] + 16 * result);
        *v70 = v88;
        v70[1] = v89;
        v71 = result;

        result = sub_972C(v94, v95[7] + v71 * v80);
      }

      else
      {
        if (v95[2] >= v95[3])
        {
          goto LABEL_45;
        }

        *(v107 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
        v97 = (v95[6] + 16 * result);
        *v97 = v88;
        v97[1] = v89;
        result = sub_7A64(v94, v95[7] + result * v80);
        v98 = v95[2];
        v99 = __OFADD__(v98, 1);
        v100 = v98 + 1;
        if (v99)
        {
          goto LABEL_46;
        }

        v95[2] = v100;
      }

      v69 = v72;
      a1 = v108;
    }

    while (1)
    {
      v72 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v72 >= v68)
      {
        v28 = v116;
LABEL_41:

        return v28;
      }

      v33 = *(v30 + 8 * v72);
      ++v69;
      if (v33)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v35 = v34 >> 6;
    v36 = v28 + 64;

    v38 = 0;
    v104 = v10;
    while (v33)
    {
LABEL_16:
      v42 = __clz(__rbit64(v33)) | (v38 << 6);
      v43 = *(a1 + 56);
      v44 = (*(a1 + 48) + 16 * v42);
      v46 = *v44;
      v45 = v44[1];
      v47 = v109;
      v115 = *(v110 + 72);
      v48 = v106;
      sub_6BEC(v43 + v115 * v42, &v106[*(v109 + 48)]);
      *v48 = v46;
      v48[1] = v45;
      v49 = v48;
      v50 = v107;
      sub_2524C(v49, v107);
      v51 = *(v47 + 48);
      v52 = *(v114 + 48);
      v53 = v50[1];
      v117 = *v50;
      v118 = v53;

      v54 = v113;
      swift_dynamicCast();
      sub_7A64(v50 + v51, v54 + v52);
      v55 = *(v112 + 48);
      v56 = *v54;
      v57 = v54[1];
      v58 = v54 + v52;
      v59 = v111;
      sub_7A64(v58, &v111[v55]);
      v60 = v104;
      sub_7A64(&v59[v55], v104);
      v28 = v116;
      sub_488D4();
      if (v57)
      {
        sub_488F4(1u);
        sub_48464();
      }

      else
      {
        sub_488F4(0);
      }

      result = sub_48904();
      v61 = -1 << v28[32];
      v62 = result & ~v61;
      v63 = v62 >> 6;
      if (((-1 << v62) & ~*&v36[8 * (v62 >> 6)]) == 0)
      {
        v64 = 0;
        v65 = (63 - v61) >> 6;
        while (++v63 != v65 || (v64 & 1) == 0)
        {
          v66 = v63 == v65;
          if (v63 == v65)
          {
            v63 = 0;
          }

          v64 |= v66;
          v67 = *&v36[8 * v63];
          if (v67 != -1)
          {
            v39 = __clz(__rbit64(~v67)) + (v63 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_43;
      }

      v39 = __clz(__rbit64((-1 << v62) & ~*&v36[8 * (v62 >> 6)])) | v62 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v33 &= v33 - 1;
      *&v36[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
      v40 = (*(v28 + 6) + 16 * v39);
      *v40 = v56;
      v40[1] = v57;
      result = sub_7A64(v60, *(v28 + 7) + v39 * v115);
      ++*(v28 + 2);
      a1 = v108;
    }

    while (1)
    {
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v41 >= v35)
      {
        goto LABEL_41;
      }

      v33 = *(v30 + 8 * v41);
      ++v38;
      if (v33)
      {
        v38 = v41;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_2035C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 10) = *(a1 + 42);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 10) = *(a2 + 42);
  return sub_2265C(v5, v7) & 1;
}

uint64_t sub_203B8()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_20450()
{
  v2 = v0;
  swift_getKeyPath();
  v3 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  *&v93 = v0;
  v84 = sub_1B304();
  sub_475C4();

  swift_beginAccess();
  v4 = *(v0 + 200);
  v5 = *(v4 + 16);

  v6 = -v5;
  v7 = -1;
  v8 = 64;
  v83 = v3;
  while (v6 + v7 != -1)
  {
    if (++v7 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_64;
    }

    v1 = v8 + 64;
    v9 = [*(*(v4 + v8) + 16) length];
    v8 = v1;
    if (!v9)
    {

      goto LABEL_18;
    }
  }

  swift_getKeyPath();
  *&v93 = v2;
  sub_475C4();

  if (*(*(v2 + 200) + 16))
  {
    swift_getKeyPath();
    *&v93 = v2;
    sub_475C4();

    if (*(*(v2 + 200) + 16) <= 0xBuLL)
    {
      swift_getKeyPath();
      *&v93 = v2;
      sub_475C4();

      if (*(v2 + 98) == 1)
      {
        swift_getKeyPath();
        *&v93 = v2;
        sub_475C4();

        if ((*(v2 + 97) & 1) == 0)
        {
          v10 = sub_47594();
          v82 = &v73;
          v11 = *(v10 - 8);
          v12 = *(v11 + 64);
          __chkstk_darwin(v10, v13);
          v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
          sub_47584();
          v15 = sub_47574();
          v79 = v16;
          v80 = v15;
          v17 = *(v11 + 8);
          v18 = v17(&v73 - v14, v10);
          v81 = &v73;
          __chkstk_darwin(v18, v19);
          sub_47584();
          v20 = sub_47574();
          v77 = v21;
          v78 = v20;
          v17(&v73 - v14, v10);
          swift_getKeyPath();
          *&v93 = v2;
          sub_475C4();

          if (*(v2 + 88))
          {
            v22 = *(v2 + 80);
            v75 = *(v2 + 88);
            v76 = v22;
          }

          else
          {
            v75 = 0xE000000000000000;
            v76 = 0;
          }

          type metadata accessor for PollOptionText();
          v23 = swift_allocObject();
          v24 = objc_allocWithZone(NSAttributedString);

          *(v23 + 16) = [v24 init];
          swift_getKeyPath();
          *&v93 = v2;
          sub_475C4();

          v6 = *(v2 + 98);
          swift_getKeyPath();
          *&v93 = v2;
          sub_475C4();

          *&v93 = v2;
          swift_getKeyPath();
          sub_475E4();

          swift_beginAccess();
          v25 = *(v2 + 200);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 200) = v25;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v25 = sub_10B44(0, *(v25 + 2) + 1, 1, v25);
            *(v2 + 200) = v25;
          }

          v28 = *(v25 + 2);
          v27 = *(v25 + 3);
          v29 = v28 + 1;
          if (v28 >= v27 >> 1)
          {
            v74 = v28 + 1;
            v72 = sub_10B44((v27 > 1), v28 + 1, 1, v25);
            v29 = v74;
            v25 = v72;
          }

          *(v25 + 2) = v29;
          v30 = &v25[64 * v28];
          v31 = v79;
          *(v30 + 4) = v80;
          *(v30 + 5) = v31;
          v32 = v77;
          *(v30 + 6) = v78;
          *(v30 + 7) = v32;
          v33 = v75;
          v34 = v76;
          *(v30 + 8) = v23;
          *(v30 + 9) = v34;
          *(v30 + 10) = v33;
          v30[88] = 1;
          v30[89] = v6;
          *(v2 + 200) = v25;
          swift_endAccess();
          sub_20450();
          *&v93 = v2;
          swift_getKeyPath();
          sub_475D4();
        }
      }
    }
  }

LABEL_18:
  swift_getKeyPath();
  *&v93 = v2;
  sub_475C4();

  if (*(*(v2 + 200) + 16) < 4uLL)
  {
    goto LABEL_47;
  }

  swift_getKeyPath();
  *&v93 = v2;
  sub_475C4();

  v35 = *(*(v2 + 200) + 16);

  v78 = v36;
  if (v35 >= 2)
  {
    v1 = 0;
    v79 = v36 + 32;
    v80 = v35 - 1;
    v82 = -v35;
    v37 = _swiftEmptyArrayStorage;
LABEL_22:
    v81 = v37;
    v38 = v80;
    if (v1 > v80)
    {
      v38 = v1;
    }

    v7 = -v38;
    v3 = v79 + (v1++ << 6);
    while (v7 + v1 != 1)
    {
      v39 = *v3;
      v40 = *(v3 + 42);
      v41 = *(v3 + 32);
      v94 = *(v3 + 16);
      v95[0] = v41;
      *(v95 + 10) = v40;
      v93 = v39;
      v42 = *(v41 + 16);
      sub_1C0E8(&v93, &v91);
      if ([v42 length] || (v43 = v93, swift_getKeyPath(), v6 = &off_60000, *&v91 = v2, sub_475C4(), , v43 == *(v2 + 160)) || (sub_48874() & 1) != 0)
      {
        v37 = v81;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        *&v85 = v37;
        if ((v44 & 1) == 0)
        {
          sub_220AC(0, v37[2] + 1, 1);
          v37 = v85;
        }

        v46 = v37[2];
        v45 = v37[3];
        if (v46 >= v45 >> 1)
        {
          sub_220AC((v45 > 1), v46 + 1, 1);
          v37 = v85;
        }

        v47 = v82 + v1 + 2;
        v37[2] = v46 + 1;
        v48 = &v37[8 * v46];
        v49 = v93;
        v50 = v94;
        v51 = v95[0];
        *(v48 + 74) = *(v95 + 10);
        *(v48 + 3) = v50;
        *(v48 + 4) = v51;
        *(v48 + 2) = v49;
        if (v47 != 1)
        {
          goto LABEL_22;
        }

        goto LABEL_36;
      }

      sub_E8EC(&v93);
      ++v1;
      v3 += 64;
      if (!(v82 + v1))
      {
        v37 = v81;
        goto LABEL_36;
      }
    }

LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v37 = _swiftEmptyArrayStorage;
LABEL_36:
  swift_unknownObjectRelease();
  v52 = v37[2];
  swift_getKeyPath();
  *&v93 = v2;
  v7 = v37;
  sub_475C4();

  if (v52 == *(*(v2 + 200) + 16) - 1)
  {

    goto LABEL_47;
  }

  v6 = &v87;
  swift_getKeyPath();
  *&v93 = v2;
  sub_475C4();

  v53 = *(v2 + 200);
  v54 = *(v53 + 16);
  if (!v54)
  {
    v89 = 0u;
    memset(v90, 0, 26);
    v88 = 0u;
    goto LABEL_45;
  }

  v55 = (v53 + (v54 << 6));
  v56 = *(v55 - 2);
  v57 = *(v55 - 1);
  v58 = *v55;
  *(v95 + 10) = *(v55 + 10);
  v94 = v57;
  v95[0] = v58;
  v93 = v56;
  memmove(&v88, v55 - 2, 0x3AuLL);
  sub_1C0E8(&v93, &v91);
  v3 = *(&v88 + 1);
  v85 = v89;
  v86[0] = v90[0];
  *(v86 + 10) = *(v90 + 10);
  if (!*(&v88 + 1))
  {
LABEL_45:
    v1 = _swiftEmptyArrayStorage;
    goto LABEL_46;
  }

  v82 = v88;
  v93 = v88;
  v94 = v89;
  v95[0] = v90[0];
  *(v95 + 10) = *(v90 + 10);
  sub_1C0E8(&v93, &v91);
  v1 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_66:
    v1 = sub_10B44(0, *(v1 + 16) + 1, 1, v1);
  }

  v60 = *(v1 + 16);
  v59 = *(v1 + 24);
  if (v60 >= v59 >> 1)
  {
    v1 = sub_10B44((v59 > 1), v60 + 1, 1, v1);
  }

  *(v92 + 10) = *(v86 + 10);
  v91 = v85;
  v92[0] = v86[0];
  *(v1 + 16) = v60 + 1;
  v61 = (v1 + (v60 << 6));
  *(v61 + 4) = v82;
  *(v61 + 5) = v3;
  v62 = v91;
  v63 = v92[0];
  *(v61 + 74) = *(v92 + 10);
  *(v61 + 3) = v62;
  *(v61 + 4) = v63;
  v37 = v7;
LABEL_46:
  sub_60C8(v6 + 32, &qword_63098, &qword_4C028);
  *&v93 = v37;
  sub_21D80(v1);
  sub_1EB40(v93);
LABEL_47:
  swift_getKeyPath();
  *&v93 = v2;
  sub_475C4();

  if (*(v2 + 98) == 1)
  {
    swift_getKeyPath();
    *&v93 = v2;
    sub_475C4();

    if ((*(v2 + 97) & 1) == 0)
    {
      swift_getKeyPath();
      *&v93 = v2;
      sub_475C4();

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v7 = result;
        swift_getKeyPath();
        *&v93 = v2;
        sub_475C4();

        v65 = *(v2 + 200);
        v66 = *(v65 + 16);

        v6 = 0;
        v1 = -v66;
        v3 = -1;
        v67 = 64;
        while (v1 + v3 != -1)
        {
          if (++v3 >= *(v65 + 16))
          {
            goto LABEL_65;
          }

          v68 = v67 + 64;
          v69 = [*(*(v65 + v67) + 16) length] != 0;
          v67 = v68;
          v70 = __OFADD__(v6, v69);
          v6 += v69;
          if (v70)
          {
            __break(1u);
            break;
          }
        }

        if (v6 >= 2)
        {
          v71 = sub_21834();
        }

        else
        {
          v71 = 0;
        }

        if ([v7 presentationStyle] == &dword_4)
        {
          [v7 _setSendingEnabled:v71 & 1];
        }

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_20FA0()
{
  swift_getKeyPath();
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
}

uint64_t sub_21028(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 200) = a2;

  return sub_20450();
}

uint64_t sub_21098()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  *&v69[0] = v0;
  v3 = sub_1B304();
  sub_475C4();

  result = *(v0 + 88);
  if (result)
  {
    v56 = *(v0 + 80);
    v5 = qword_61CF0;
    v57 = result;

    if (v5 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v6 = sub_47814();
      sub_5ED4(v6, qword_64360);
      v7 = sub_477F4();
      v8 = sub_48604();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_0, v7, v8, "UpdateFromPollDefinition", v9, 2u);
      }

      swift_getKeyPath();
      *&v69[0] = v1;
      v61 = v2;
      v60 = v3;
      sub_475C4();

      v62 = v1;
      v10 = *(*(v1 + 48) + 16);

      v59 = v10;
      if (v10)
      {
        v2 = 0;
        v3 = _swiftEmptyArrayStorage;
        v12 = (v11 + 72);
        v58 = v11;
        while (v2 < *(v11 + 16))
        {
          v13 = *(v12 - 4);
          v66 = *(v12 - 5);
          v14 = *(v12 - 2);
          v15 = *(v12 - 1);
          LODWORD(v67) = *v12;
          v16 = *(v12 - 3);
          *&v69[0] = v2;

          v63 = sub_48854();
          v18 = v17;
          if (v14)
          {
            v19 = v16;
          }

          else
          {
            v19 = 0;
          }

          v65 = v19;
          v20 = 0xE000000000000000;
          if (v14)
          {
            v20 = v14;
          }

          v64 = v20;
          swift_getKeyPath();
          v21 = v62;
          *&v69[0] = v62;

          sub_475C4();
          v22 = v3;

          v23 = *(v21 + 98);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_10B44(0, *(v3 + 2) + 1, 1, v3);
          }

          v1 = *(v22 + 2);
          v24 = *(v22 + 3);
          v3 = v22;
          if (v1 >= v24 >> 1)
          {
            v3 = sub_10B44((v24 > 1), v1 + 1, 1, v22);
          }

          ++v2;

          *(v3 + 2) = v1 + 1;
          v25 = &v3[64 * v1];
          *(v25 + 4) = v63;
          *(v25 + 5) = v18;
          *(v25 + 6) = v66;
          *(v25 + 7) = v13;
          v26 = v65;
          *(v25 + 8) = v15;
          *(v25 + 9) = v26;
          *(v25 + 10) = v64;
          v25[88] = v67;
          v12 += 48;
          v25[89] = v23;
          v11 = v58;
          if (v59 == v2)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
      }

      else
      {
        v3 = _swiftEmptyArrayStorage;
LABEL_20:
        v27 = v3;

        swift_getKeyPath();
        v28 = v62;
        *&v69[0] = v62;
        sub_475C4();

        if (*(v28 + 98) == 1)
        {
          swift_getKeyPath();
          *&v69[0] = v28;
          sub_475C4();

          if ((*(v28 + 97) & 1) == 0)
          {
            v37 = *(v3 + 2);
            if (v37 <= 2)
            {
              do
              {
                *&v69[0] = v37;
                v67 = sub_48854();
                v39 = v38;
                v40 = sub_47594();
                v41 = *(v40 - 8);
                __chkstk_darwin(v40, v42);
                v44 = &v56 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
                sub_47584();
                v45 = sub_47574();
                v2 = v46;
                (*(v41 + 8))(v44, v40);
                type metadata accessor for PollOptionText();
                v47 = swift_allocObject();
                v48 = objc_allocWithZone(NSAttributedString);

                *(v47 + 16) = [v48 init];
                swift_getKeyPath();
                v49 = v62;
                *&v69[0] = v62;
                sub_475C4();

                v50 = *(v49 + 98);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v27 = sub_10B44(0, *(v27 + 2) + 1, 1, v27);
                }

                v52 = *(v27 + 2);
                v51 = *(v27 + 3);
                v53 = v27;
                if (v52 >= v51 >> 1)
                {
                  v53 = sub_10B44((v51 > 1), v52 + 1, 1, v27);
                }

                ++v37;
                v27 = v53;
                *(v53 + 2) = v52 + 1;
                v54 = &v53[64 * v52];
                *(v54 + 4) = v67;
                *(v54 + 5) = v39;
                *(v54 + 6) = v45;
                *(v54 + 7) = v2;
                v55 = v56;
                *(v54 + 8) = v47;
                *(v54 + 9) = v55;
                *(v54 + 10) = v57;
                v54[88] = 1;
                v54[89] = v50;
              }

              while (v37 != 3);
            }
          }
        }

        v30 = v62;
        sub_1EB40(v29);
        swift_getKeyPath();
        *&v69[0] = v30;
        sub_475C4();

        swift_beginAccess();
        v31 = *(v30 + 200);
        v32 = *(v31 + 16);

        if (!v32)
        {
LABEL_27:
        }

        v1 = 0;
        v3 = &stru_20;
        while (v1 < *(v31 + 16))
        {
          v33 = *&v3[v31 + 42];
          v34 = *&v3[v31 + 32];
          v35 = *&v3[v31];
          v69[1] = *&v3[v31 + 16];
          v70[0] = v34;
          *(v70 + 10) = v33;
          v69[0] = v35;
          v36 = v35;
          v2 = *(v34 + 16);
          sub_1C0E8(v69, v68);
          if (![v2 length])
          {

            sub_E8EC(v69);
            return sub_1E83C(v36, *(&v36 + 1));
          }

          ++v1;
          sub_E8EC(v69);
          v3 += 64;
          if (v32 == v1)
          {
            goto LABEL_27;
          }
        }
      }

      __break(1u);
LABEL_39:
      swift_once();
    }
  }

  return result;
}

uint64_t sub_21834()
{
  swift_getKeyPath();
  *&v24 = v0;
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
  v1 = *(v0 + 200);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (2)
    {
      v6 = *(v1 + 16);
      v7 = (v1 + 32 + (v4 << 6));
      v8 = v4;
      while (1)
      {
        if (v8 >= v6)
        {
          __break(1u);
LABEL_21:
          __break(1u);
          return result;
        }

        v9 = *v7;
        v10 = v7[1];
        v11 = v7[2];
        *&v26[10] = *(v7 + 42);
        v25 = v10;
        *v26 = v11;
        v24 = v9;
        v4 = v8 + 1;
        if (v26[24])
        {
          break;
        }

        v7 += 4;
        ++v8;
        if (v2 == v4)
        {
          goto LABEL_15;
        }
      }

      sub_1C0E8(&v24, &v23);
      result = swift_isUniquelyReferenced_nonNull_native();
      v27 = v5;
      if ((result & 1) == 0)
      {
        result = sub_220AC(0, v5[2] + 1, 1);
        v5 = v27;
      }

      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_220AC((v12 > 1), v13 + 1, 1);
        v5 = v27;
      }

      v5[2] = v13 + 1;
      v14 = &v5[8 * v13];
      v15 = v24;
      v16 = v25;
      v17 = *v26;
      *(v14 + 74) = *&v26[10];
      v14[3] = v16;
      v14[4] = v17;
      v14[2] = v15;
      if (v2 - 1 != v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  v18 = -v5[2];
  v19 = -1;
  v20 = 64;
  do
  {
    v21 = v18 + v19;
    if (v18 + v19 == -1)
    {
      break;
    }

    if (++v19 >= v5[2])
    {
      goto LABEL_21;
    }

    v22 = v20 + 64;
    result = [*(*(v5 + v20) + 16) length];
    v20 = v22;
  }

  while (!result);

  return v21 != -1;
}

char *sub_21A4C()
{
  sub_621C(v0 + 16);

  sub_621C(v0 + 184);

  v1 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  v2 = sub_47604();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_21B10()
{
  sub_21A4C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for PollViewModel(uint64_t a1)
{
  result = qword_62BF8;
  if (!qword_62BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BBC(uint64_t a1)
{
  result = sub_47604();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 sub_21CBC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21CD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_21D20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_21D80(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10B44(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21E94(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_21FD8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22374(a1, a2, a3, *v3, &qword_626B0, &qword_4C0B0, type metadata accessor for ViewModelPollVote);
  *v3 = result;
  return result;
}

char *sub_2201C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2214C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2203C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22374(a1, a2, a3, *v3, &qword_630A8, &qword_4C0B8, &type metadata accessor for PollOption);
  *v3 = result;
  return result;
}

void *sub_22074(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22374(a1, a2, a3, *v3, &qword_626C0, &qword_4B2A8, &type metadata accessor for PollVote);
  *v3 = result;
  return result;
}

char *sub_220AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22268(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_220CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22374(a1, a2, a3, *v3, &qword_626C8, &qword_4B2B0, &type metadata accessor for URLQueryItem);
  *v3 = result;
  return result;
}

char *sub_22104(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22550(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2214C(char *result, int64_t a2, char a3, char *a4)
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
    sub_54A4(&qword_626B8, &qword_4B2A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22268(char *result, int64_t a2, char a3, char *a4)
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
    sub_54A4(&qword_626A8, &unk_4B290);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22374(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_54A4(a5, a6);
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

char *sub_22550(char *result, int64_t a2, char a3, char *a4)
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
    sub_54A4(&qword_626A0, &qword_4B288);
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

uint64_t sub_2265C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (sub_48874()) && (a1[2] == *(a2 + 16) ? (v5 = a1[3] == *(a2 + 24)) : (v5 = 0), (v5 || (sub_48874()) && [*(a1[4] + 16) isEqualToAttributedString:*(*(a2 + 32) + 16)] && (a1[5] == *(a2 + 40) && a1[6] == *(a2 + 48) || (sub_48874())) && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0)
  {
    v6 = *(a1 + 57) ^ *(a2 + 57) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_22754(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1D3BC(v1, v2);
}

uint64_t sub_227D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1E83C(v1, v2);
}

unint64_t sub_22844()
{
  result = qword_630A0;
  if (!qword_630A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_630A0);
  }

  return result;
}

float sub_22960()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 156) = result;
  return result;
}

__n128 sub_22978()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 120) = result;
  *(v1 + 136) = v3;
  return result;
}

uint64_t sub_22990()
{
  *(*(v0 + 16) + 112) = *(v0 + 24);
}

uint64_t sub_22A1C()
{
  *(*(v0 + 16) + 104) = *(v0 + 24);
}

uint64_t sub_22AF8()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 80) = v0[3];
  *(v1 + 88) = v2;
}

uint64_t sub_22B54(uint64_t a1, uint64_t a2, float a3)
{
  v4 = v3;
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 95) = 0;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0xE000000000000000;
  *(v4 + 176) = 0;
  *(v4 + 192) = 0;
  swift_unknownObjectWeakInit();
  sub_475F4();
  swift_unknownObjectRetain();
  sub_621C(v4 + 16);
  *(v4 + 24) = a2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v4 + 32) = xmmword_4B9C0;
  *(v4 + 48) = _swiftEmptyArrayStorage;
  *(v4 + 56) = xmmword_4B9C0;
  *(v4 + 72) = _swiftEmptyArrayStorage;
  type metadata accessor for PollsContacts();
  swift_allocObject();
  v7 = sub_10128();
  *(v4 + 104) = _swiftEmptyArrayStorage;
  *(v4 + 112) = v7;
  *(v4 + 156) = a3;
  *(v4 + 200) = _swiftEmptyArrayStorage;
  v15[3] = &type metadata for PollsFeatureFlags;
  v15[4] = sub_252BC();
  LOBYTE(a2) = sub_47614();
  sub_6020(v15);
  *(v4 + 152) = a2 & 1;
  sub_21098();
  swift_getKeyPath();
  v15[0] = v4;
  sub_1B304();
  sub_475C4();

  swift_beginAccess();
  v8 = *(v4 + 200) - 32;
  v9 = *(*(v4 + 200) + 16) + 1;
  while (--v9)
  {
    v10 = (v8 + 64);
    v11 = *(v8 + 120);
    v8 += 64;
    if (v11 == 1)
    {
      v12 = *v10;
      v13 = v10[1];

      goto LABEL_6;
    }
  }

  v12 = 0;
  v13 = 0xE000000000000000;
LABEL_6:
  sub_1E83C(v12, v13);
  return v4;
}

uint64_t sub_22D40(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 1;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_48874() & 1) == 0)
    {
      return 1;
    }
  }

  else if (v5)
  {
    return 1;
  }

  if (sub_83AC(a1[2], a2[2]))
  {
    v7 = a1[4];
    v8 = a2[4];
    if (v7)
    {
      if (v8 && (a1[3] == a2[3] && v7 == v8 || (sub_48874() & 1) != 0))
      {
        return 0;
      }
    }

    else if (!v8)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_22E0C(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t), void *a3)
{
  v4 = v3;
  v307 = a3;
  v309 = a2;
  v310 = a1;
  v5 = sub_54A4(&qword_630B0, &unk_4C190);
  v7 = __chkstk_darwin(v5 - 8, v6);
  KeyPath = &v294 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v294 - v12;
  v15 = __chkstk_darwin(v11, v14);
  v321 = &v294 - v16;
  v18 = __chkstk_darwin(v15, v17);
  v328 = &v294 - v19;
  __chkstk_darwin(v18, v20);
  v22 = &v294 - v21;
  v329 = type metadata accessor for ViewModelPollVote(0);
  v23 = *(v329 - 8);
  v25 = __chkstk_darwin(v329, v24);
  v302 = &v294 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25, v27);
  v305 = &v294 - v29;
  v31 = __chkstk_darwin(v28, v30);
  v304 = &v294 - v32;
  v34 = __chkstk_darwin(v31, v33);
  v306 = &v294 - v35;
  v37 = __chkstk_darwin(v34, v36);
  v308 = &v294 - v38;
  v40 = __chkstk_darwin(v37, v39);
  v313 = (&v294 - v41);
  v43 = __chkstk_darwin(v40, v42);
  v315 = (&v294 - v44);
  v46 = __chkstk_darwin(v43, v45);
  v316 = &v294 - v47;
  v49 = __chkstk_darwin(v46, v48);
  v319 = &v294 - v50;
  v52 = __chkstk_darwin(v49, v51);
  v326 = (&v294 - v53);
  v55 = __chkstk_darwin(v52, v54);
  v331 = (&v294 - v56);
  v58 = __chkstk_darwin(v55, v57);
  v325 = (&v294 - v59);
  v61 = __chkstk_darwin(v58, v60);
  *&v314 = &v294 - v62;
  v64 = __chkstk_darwin(v61, v63);
  v330 = (&v294 - v65);
  v67 = __chkstk_darwin(v64, v66);
  v312 = &v294 - v68;
  v70 = __chkstk_darwin(v67, v69);
  v320 = &v294 - v71;
  v73 = __chkstk_darwin(v70, v72);
  v75 = (&v294 - v74);
  v77 = __chkstk_darwin(v73, v76);
  v324 = (&v294 - v78);
  __chkstk_darwin(v77, v79);
  v81 = &v294 - v80;
  swift_getKeyPath();
  v82 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  v336 = v4;
  v332 = sub_1B304();
  v333 = v82;
  sub_475C4();

  if (!*(v4 + 88))
  {
    if (qword_61CF0 != -1)
    {
      swift_once();
    }

    v99 = sub_47814();
    sub_5ED4(v99, qword_64360);
    v100 = sub_477F4();
    v101 = sub_48604();
    if (!os_log_type_enabled(v100, v101))
    {
      goto LABEL_33;
    }

    v102 = swift_slowAlloc();
    *v102 = 0;
    v103 = "mergeResponses: handle not yet set";
    goto LABEL_32;
  }

  if (qword_61CF0 != -1)
  {
    goto LABEL_201;
  }

  while (1)
  {
    v83 = sub_47814();
    v318 = sub_5ED4(v83, qword_64360);
    v84 = sub_477F4();
    v85 = sub_48604();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_0, v84, v85, "mergeResponses", v86, 2u);
    }

    v323 = v310[2];
    if (!v323)
    {
      v100 = sub_477F4();
      v101 = sub_48604();
      if (!os_log_type_enabled(v100, v101))
      {
LABEL_33:

        return 0;
      }

      v102 = swift_slowAlloc();
      *v102 = 0;
      v103 = "mergeResponses: early return, we don't have a local response, replacing";
LABEL_32:
      _os_log_impl(&dword_0, v100, v101, v103, v102, 2u);

      goto LABEL_33;
    }

    v327 = v22;
    v317 = v13;
    v311 = KeyPath;
    v87 = *(v309 + 2);
    v88 = *(v23 + 80);
    v301 = v23;
    v300 = v88;
    v303 = v87;
    if (v87)
    {
      v334 = *(v23 + 72);
      v322 = (v88 + 32) & ~v88;
      v89 = v309 + v322;
      v90 = _swiftEmptyArrayStorage;
      while (1)
      {
        sub_6BEC(v89, v81);
        v92 = *(v81 + 16);
        v93 = *(v81 + 24);
        KeyPath = swift_getKeyPath();
        v335 = v4;

        sub_475C4();

        v94 = *(v4 + 88);
        if (v93)
        {
          if (!v94)
          {

LABEL_20:
            sub_7A64(v81, v324);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v336 = v90;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21FD8(0, v90[2] + 1, 1);
              v90 = v336;
            }

            v98 = v90[2];
            v97 = v90[3];
            if (v98 >= v97 >> 1)
            {
              sub_21FD8((v97 > 1), v98 + 1, 1);
              v90 = v336;
            }

            v90[2] = v98 + 1;
            v91 = v334;
            sub_7A64(v324, v90 + v322 + v98 * v334);
            goto LABEL_10;
          }

          if (v92 == *(v4 + 80) && v93 == v94)
          {
          }

          else
          {
            v95 = sub_48874();

            if ((v95 & 1) == 0)
            {
              goto LABEL_20;
            }
          }
        }

        else if (v94)
        {
          goto LABEL_20;
        }

        sub_6C50(v81);
        v91 = v334;
LABEL_10:
        v89 += v91;
        if (!--v87)
        {
          v298 = v90;
          v23 = v334;
          v104 = v322;
          goto LABEL_35;
        }
      }
    }

    v23 = *(v23 + 72);
    v104 = (v88 + 32) & ~v88;
    v298 = _swiftEmptyArrayStorage;
LABEL_35:
    v13 = 0;
    v322 = v104;
    v22 = v310 + v104;
    v324 = _swiftEmptyArrayStorage;
LABEL_39:
    v106 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      break;
    }

    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    swift_once();
  }

  sub_6BEC(v22, v75);
  v107 = v75[2];
  v81 = v75[3];
  KeyPath = swift_getKeyPath();
  v335 = v4;
  sub_475C4();

  v108 = *(v4 + 88);
  if (v81)
  {
    if (!v108 || (v107 != *(v4 + 80) || v81 != v108) && (sub_48874() & 1) == 0)
    {
LABEL_37:
      sub_6C50(v75);
      goto LABEL_38;
    }
  }

  else if (v108)
  {
    goto LABEL_37;
  }

  if (!v75[1])
  {
    goto LABEL_37;
  }

  sub_7A64(v75, v320);
  v109 = v324;
  v110 = swift_isUniquelyReferenced_nonNull_native();
  v336 = v109;
  if ((v110 & 1) == 0)
  {
    sub_21FD8(0, v109[2] + 1, 1);
    v109 = v336;
  }

  KeyPath = v109[2];
  v111 = v109[3];
  if (KeyPath >= v111 >> 1)
  {
    sub_21FD8((v111 > 1), KeyPath + 1, 1);
    v109 = v336;
  }

  v109[2] = KeyPath + 1;
  v324 = v109;
  sub_7A64(v320, v109 + v322 + KeyPath * v23);
LABEL_38:
  ++v13;
  v22 += v23;
  if (v106 != v323)
  {
    goto LABEL_39;
  }

  v75 = _swiftEmptyArrayStorage;
  v13 = v303;
  if (v303)
  {
    v22 = v309 + v322;
    v112 = v312;
    do
    {
      sub_6BEC(v22, v112);
      v113 = v112[2];
      v81 = v112[3];
      KeyPath = swift_getKeyPath();
      v335 = v4;
      sub_475C4();

      v114 = *(v4 + 88);
      if (v81)
      {
        if (!v114 || (v113 != *(v4 + 80) || v81 != v114) && (sub_48874() & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else if (v114)
      {
        goto LABEL_54;
      }

      if (v112[1])
      {
        sub_7A64(v112, v314);
        v115 = swift_isUniquelyReferenced_nonNull_native();
        v336 = v75;
        if ((v115 & 1) == 0)
        {
          sub_21FD8(0, v75[2] + 1, 1);
          v75 = v336;
        }

        v117 = v75[2];
        v116 = v75[3];
        if (v117 >= v116 >> 1)
        {
          sub_21FD8((v116 > 1), v117 + 1, 1);
          v75 = v336;
        }

        v75[2] = v117 + 1;
        sub_7A64(v314, v75 + v322 + v117 * v23);
        v112 = v312;
        goto LABEL_55;
      }

LABEL_54:
      sub_6C50(v112);
LABEL_55:
      v22 += v23;
      --v13;
    }

    while (v13);
  }

  v118 = sub_1FC14(&_swiftEmptyDictionarySingleton);
  v119 = v324;
  v333 = v324[2];
  v334 = v23;
  if (v333)
  {
    KeyPath = 0;
    v13 = v324 + v322;
    do
    {
      if (KeyPath >= v119[2])
      {
        goto LABEL_195;
      }

      v121 = v330;
      sub_6BEC(v13, v330);
      v23 = *v121;
      v22 = v121[1];
      sub_6BEC(v121, v331);
      v4 = swift_isUniquelyReferenced_nonNull_native();
      v336 = v118;
      v123 = sub_4DA8(v23, v22);
      v124 = v118[2];
      v125 = (v122 & 1) == 0;
      v126 = v124 + v125;
      if (__OFADD__(v124, v125))
      {
        goto LABEL_196;
      }

      v81 = v122;
      if (v118[3] >= v126)
      {
        if (v4)
        {
          v129 = v336;
          if (v122)
          {
            goto LABEL_69;
          }
        }

        else
        {
          sub_4347C();
          v129 = v336;
          if (v81)
          {
            goto LABEL_69;
          }
        }
      }

      else
      {
        sub_42894(v126, v4);
        v127 = sub_4DA8(v23, v22);
        if ((v81 & 1) != (v128 & 1))
        {
LABEL_202:
          sub_54A4(&qword_62B48, &qword_4BA68);
          result = sub_48884();
          __break(1u);
          return result;
        }

        v123 = v127;
        v129 = v336;
        if (v81)
        {
LABEL_69:
          v118 = v129;
          v120 = v334;
          sub_972C(v331, v129[7] + v123 * v334);
          goto LABEL_70;
        }
      }

      v129[(v123 >> 6) + 8] |= 1 << v123;
      v130 = (v129[6] + 16 * v123);
      *v130 = v23;
      v130[1] = v22;
      v4 = v129;
      v120 = v334;
      sub_7A64(v331, v129[7] + v123 * v334);
      v131 = *(v4 + 16);
      v132 = __OFADD__(v131, 1);
      v133 = v131 + 1;
      if (v132)
      {
        goto LABEL_199;
      }

      v118 = v4;
      *(v4 + 16) = v133;

LABEL_70:
      ++KeyPath;
      sub_6C50(v330);
      v13 += v120;
      v119 = v324;
    }

    while (v333 != KeyPath);
  }

  v324 = v118;

  v81 = sub_1FC14(&_swiftEmptyDictionarySingleton);
  v4 = v75[2];
  if (v4)
  {
    v23 = 0;
    v134 = v75 + v322;
    while (1)
    {
      if (v23 >= v75[2])
      {
        goto LABEL_197;
      }

      v136 = v325;
      sub_6BEC(v134, v325);
      v13 = *v136;
      KeyPath = v136[1];
      sub_6BEC(v136, v326);
      v137 = swift_isUniquelyReferenced_nonNull_native();
      v336 = v81;
      v138 = sub_4DA8(v13, KeyPath);
      v140 = *(v81 + 16);
      v141 = (v139 & 1) == 0;
      v132 = __OFADD__(v140, v141);
      v142 = v140 + v141;
      if (v132)
      {
        goto LABEL_198;
      }

      v22 = v139;
      if (*(v81 + 24) < v142)
      {
        break;
      }

      if (v137)
      {
        goto LABEL_93;
      }

      v147 = v138;
      sub_4347C();
      v138 = v147;
      v81 = v336;
      if (v22)
      {
LABEL_85:
        v135 = v334;
        sub_972C(v326, *(v81 + 56) + v138 * v334);
        goto LABEL_86;
      }

LABEL_94:
      *(v81 + 8 * (v138 >> 6) + 64) |= 1 << v138;
      v144 = (*(v81 + 48) + 16 * v138);
      *v144 = v13;
      v144[1] = KeyPath;
      sub_7A64(v326, *(v81 + 56) + v138 * v334);
      v145 = *(v81 + 16);
      v132 = __OFADD__(v145, 1);
      v146 = v145 + 1;
      if (v132)
      {
        goto LABEL_200;
      }

      *(v81 + 16) = v146;

      v135 = v334;
LABEL_86:
      ++v23;
      sub_6C50(v325);
      v134 += v135;
      if (v4 == v23)
      {
        goto LABEL_98;
      }
    }

    sub_42894(v142, v137);
    v138 = sub_4DA8(v13, KeyPath);
    if ((v22 & 1) != (v143 & 1))
    {
      goto LABEL_202;
    }

LABEL_93:
    v81 = v336;
    if (v22)
    {
      goto LABEL_85;
    }

    goto LABEL_94;
  }

LABEL_98:

  v149 = v307;
  v150 = v307[2];
  if (v150)
  {
    v336 = _swiftEmptyArrayStorage;
    sub_22104(0, v150, 0);
    v151 = v336;
    v152 = v149 + 5;
    v153 = v334;
    do
    {
      v155 = *(v152 - 1);
      v154 = *v152;
      v336 = v151;
      v157 = v151[2];
      v156 = v151[3];
      v158 = v157 + 1;

      if (v157 >= v156 >> 1)
      {
        sub_22104((v156 > 1), v157 + 1, 1);
        v151 = v336;
      }

      v151[2] = v158;
      v159 = &v151[2 * v157];
      v159[4] = v155;
      v159[5] = v154;
      v152 += 6;
      --v150;
    }

    while (v150);
    v160 = v327;
    v161 = v329;
LABEL_105:
    v332 = (v301 + 56);
    v320 = (v300 + 32) & ~v300;
    v296 = v151;
    v162 = v151 + 5;
    v326 = _swiftEmptyArrayStorage;
    *&v148 = 136315138;
    v314 = v148;
    v163 = v319;
    v323 = v81;
    v325 = (v301 + 48);
    while (2)
    {
      v164 = v81;
      v165 = *(v162 - 1);
      v166 = *v162;
      v167 = v324;
      if (v324[2])
      {
        swift_bridgeObjectRetain_n();
        v168 = sub_4DA8(v165, v166);
        if (v169)
        {
          sub_6BEC(v167[7] + v153 * v168, v160);
          v170 = v160;
          v171 = *v332;
          v172 = 0;
        }

        else
        {
          v170 = v160;
          v171 = *v332;
          v172 = 1;
        }

        v161 = v329;
        v171(v170, v172, 1, v329);
      }

      else
      {
        v173 = v160;
        v171 = *v332;
        (*v332)(v173, 1, 1, v161);
        swift_bridgeObjectRetain_n();
      }

      v174 = *(v164 + 16);
      v333 = v165;
      v330 = v158;
      v331 = v162;
      if (v174)
      {
        v175 = v164;
        v176 = sub_4DA8(v165, v166);
        v178 = v177;

        if (v178)
        {
          sub_6BEC(*(v175 + 56) + v153 * v176, v328);
          v179 = 0;
        }

        else
        {
          v179 = 1;
        }

        v161 = v329;
      }

      else
      {

        v179 = 1;
      }

      v180 = v328;
      v171(v328, v179, 1, v161);
      v160 = v327;
      v181 = v161;
      v182 = v321;
      sub_6128(v327, v321, &qword_630B0, &unk_4C190);
      v183 = *v325;
      if ((*v325)(v182, 1, v181) != 1)
      {
        sub_7A64(v182, v163);
        v185 = (v183)(v180, 1, v181);
        v184 = v333;
        if (v185 != 1)
        {
          sub_6C50(v163);
          goto LABEL_124;
        }

        v186 = sub_477F4();
        v187 = sub_48604();

        if (os_log_type_enabled(v186, v187))
        {
          v188 = swift_slowAlloc();
          v189 = swift_slowAlloc();
          v336 = v189;
          *v188 = v314;
          v190 = sub_3DD80(v184, v166, &v336);

          *(v188 + 4) = v190;
          v163 = v319;
          _os_log_impl(&dword_0, v186, v187, "mergeResponses: Taking only local vote: %s", v188, 0xCu);
          sub_6020(v189);
          v160 = v327;

          v180 = v328;
        }

        else
        {
        }

        v153 = v334;
        v202 = v330;
        sub_6BEC(v163, v316);
        v210 = swift_isUniquelyReferenced_nonNull_native();
        v81 = v323;
        if ((v210 & 1) == 0)
        {
          v326 = sub_10B1C(0, v326[2] + 1, 1, v326);
        }

        v212 = v326[2];
        v211 = v326[3];
        if (v212 >= v211 >> 1)
        {
          v326 = sub_10B1C((v211 > 1), v212 + 1, 1, v326);
        }

        sub_6C50(v163);
        v213 = v326;
        v326[2] = v212 + 1;
        sub_7A64(v316, v213 + v320 + v153 * v212);
        sub_60C8(v180, &qword_630B0, &unk_4C190);
        sub_60C8(v160, &qword_630B0, &unk_4C190);
        v161 = v329;
        goto LABEL_145;
      }

      sub_60C8(v182, &qword_630B0, &unk_4C190);
      v184 = v333;
LABEL_124:
      if ((v183)(v180, 1, v181) != 1 && (v183)(v160, 1, v181) == 1)
      {

        v191 = sub_477F4();
        v192 = sub_48604();

        if (os_log_type_enabled(v191, v192))
        {
          v193 = swift_slowAlloc();
          v194 = swift_slowAlloc();
          v336 = v194;
          *v193 = v314;
          v195 = sub_3DD80(v184, v166, &v336);

          *(v193 + 4) = v195;
          v163 = v319;
          _os_log_impl(&dword_0, v191, v192, "mergeResponses: ignoring incoming vote: %s", v193, 0xCu);
          sub_6020(v194);
          v160 = v327;

          v180 = v328;
        }

        else
        {
        }

        v153 = v334;
        v202 = v330;
        sub_60C8(v180, &qword_630B0, &unk_4C190);
        sub_60C8(v160, &qword_630B0, &unk_4C190);
        v161 = v329;
LABEL_144:
        v81 = v323;
LABEL_145:
        v214 = v331;
LABEL_146:
        v162 = (v214 + 16);
        v158 = v202 - 1;
        if (!v158)
        {

          goto LABEL_192;
        }

        continue;
      }

      break;
    }

    v196 = v317;
    sub_6128(v160, v317, &qword_630B0, &unk_4C190);
    if ((v183)(v196, 1, v181) == 1)
    {

      sub_60C8(v180, &qword_630B0, &unk_4C190);
      sub_60C8(v160, &qword_630B0, &unk_4C190);
      sub_60C8(v196, &qword_630B0, &unk_4C190);
      v161 = v181;
LABEL_132:
      v153 = v334;
      v202 = v330;
      goto LABEL_144;
    }

    v197 = v315;
    sub_7A64(v196, v315);
    v198 = v311;
    sub_6128(v180, v311, &qword_630B0, &unk_4C190);
    v199 = (v183)(v198, 1, v181);
    v161 = v181;
    if (v199 == 1)
    {
      sub_6C50(v197);

      sub_60C8(v180, &qword_630B0, &unk_4C190);
      v200 = v327;
      sub_60C8(v327, &qword_630B0, &unk_4C190);
      v201 = v198;
      v160 = v200;
      sub_60C8(v201, &qword_630B0, &unk_4C190);
      v163 = v319;
      goto LABEL_132;
    }

    v203 = v313;
    sub_7A64(v198, v313);
    v204 = sub_8D64(v197, v203);
    v202 = v330;
    if (v204)
    {

      v205 = sub_477F4();
      v206 = sub_48604();

      if (os_log_type_enabled(v205, v206))
      {
        v207 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        v336 = v208;
        *v207 = v314;
        v209 = sub_3DD80(v333, v166, &v336);

        *(v207 + 4) = v209;
        _os_log_impl(&dword_0, v205, v206, "mergeResponses: Votes match, taking local vote: %s", v207, 0xCu);
        sub_6020(v208);
        v160 = v327;

        v180 = v328;

        v153 = v334;
      }

      else
      {

        v153 = v334;
        v160 = v327;
      }

      v253 = v315;
      sub_6BEC(v315, v308);
      v254 = swift_isUniquelyReferenced_nonNull_native();
      v255 = v322;
      v81 = v323;
      if ((v254 & 1) == 0)
      {
        v326 = sub_10B1C(0, v326[2] + 1, 1, v326);
      }

      v257 = v326[2];
      v256 = v326[3];
      if (v257 >= v256 >> 1)
      {
        v326 = sub_10B1C((v256 > 1), v257 + 1, 1, v326);
      }

      sub_6C50(v313);
      sub_6C50(v253);
      v258 = v326;
      v326[2] = v257 + 1;
      sub_7A64(v308, v258 + v255 + v153 * v257);
      sub_60C8(v180, &qword_630B0, &unk_4C190);
      sub_60C8(v160, &qword_630B0, &unk_4C190);
      v161 = v329;
      v163 = v319;
      goto LABEL_145;
    }

    v215 = *(v181 + 24);
    v216 = sub_54A4(&qword_62138, &qword_4AC00);
    v307 = &v294;
    v217 = (*(*(v216 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    v312 = *(*(v216 - 8) + 64);
    __chkstk_darwin(v216 - 8, v218);
    v303 = v215;
    sub_6128(&v215[v197], &v294 - v217, &qword_62138, &qword_4AC00);
    v219 = sub_47564();
    v220 = *(v219 - 8);
    v221 = v220[6];
    v310 = v220 + 6;
    v309 = v221;
    LODWORD(v215) = v221(&v294 - v217, 1, v219);
    v222 = sub_60C8(&v294 - v217, &qword_62138, &qword_4AC00);
    if (v215 != 1)
    {
      v307 = &v294;
      __chkstk_darwin(v222, v223);
      sub_6128(v313 + v224, &v294 - v217, &qword_62138, &qword_4AC00);
      v225 = v309(&v294 - v217, 1, v219);
      v222 = sub_60C8(&v294 - v217, &qword_62138, &qword_4AC00);
      if (v225 == 1)
      {

        v226 = sub_477F4();
        v227 = sub_48604();

        if (os_log_type_enabled(v226, v227))
        {
          v228 = swift_slowAlloc();
          v229 = swift_slowAlloc();
          v336 = v229;
          *v228 = v314;
          v230 = sub_3DD80(v333, v166, &v336);

          *(v228 + 4) = v230;
          _os_log_impl(&dword_0, v226, v227, "mergeResponses: Taking local vote because it has a time: %s", v228, 0xCu);
          sub_6020(v229);
        }

        else
        {
        }

        v160 = v327;
        v275 = v328;
        v153 = v334;
        v214 = v331;
        v276 = v315;
        sub_6BEC(v315, v306);
        v277 = swift_isUniquelyReferenced_nonNull_native();
        v81 = v323;
        if ((v277 & 1) == 0)
        {
          v326 = sub_10B1C(0, v326[2] + 1, 1, v326);
        }

        v279 = v326[2];
        v278 = v326[3];
        if (v279 >= v278 >> 1)
        {
          v326 = sub_10B1C((v278 > 1), v279 + 1, 1, v326);
        }

        sub_6C50(v313);
        sub_6C50(v276);
        v280 = v326;
        v326[2] = v279 + 1;
        v281 = v280 + v320 + v153 * v279;
        v282 = &v336;
        goto LABEL_184;
      }
    }

    v307 = v220;
    __chkstk_darwin(v222, v223);
    v297 = v231;
    sub_6128(v313 + v231, &v294 - v217, &qword_62138, &qword_4AC00);
    v232 = v309(&v294 - v217, 1, v219);
    v233 = sub_60C8(&v294 - v217, &qword_62138, &qword_4AC00);
    v163 = v319;
    v235 = v303;
    if (v232 != 1)
    {
      __chkstk_darwin(v233, v234);
      v237 = &v294 - ((v236 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_6128(&v235[v315], v237, &qword_62138, &qword_4AC00);
      v238 = v309(v237, 1, v219);
      v233 = sub_60C8(v237, &qword_62138, &qword_4AC00);
      if (v238 == 1)
      {

        v239 = sub_477F4();
        v240 = sub_48604();

        v241 = os_log_type_enabled(v239, v240);
        v153 = v334;
        if (v241)
        {
          v242 = swift_slowAlloc();
          v243 = swift_slowAlloc();
          v336 = v243;
          *v242 = v314;
          v244 = sub_3DD80(v333, v166, &v336);

          *(v242 + 4) = v244;
          _os_log_impl(&dword_0, v239, v240, "mergeResponses: Taking incoming vote because it has a time: %s", v242, 0xCu);
          sub_6020(v243);
        }

        else
        {
        }

        v160 = v327;
        v275 = v328;
        v214 = v331;
        sub_6BEC(v313, v304);
        v283 = swift_isUniquelyReferenced_nonNull_native();
        v284 = v315;
        v81 = v323;
        if ((v283 & 1) == 0)
        {
          v326 = sub_10B1C(0, v326[2] + 1, 1, v326);
        }

        v286 = v326[2];
        v285 = v326[3];
        if (v286 >= v285 >> 1)
        {
          v326 = sub_10B1C((v285 > 1), v286 + 1, 1, v326);
        }

        sub_6C50(v313);
        sub_6C50(v284);
        v287 = v326;
        v326[2] = v286 + 1;
        v281 = v287 + v320 + v153 * v286;
        v282 = &v334;
LABEL_184:
        sub_7A64(*(v282 - 32), v281);
        sub_60C8(v275, &qword_630B0, &unk_4C190);
        sub_60C8(v160, &qword_630B0, &unk_4C190);
LABEL_191:
        v161 = v329;
        v163 = v319;
        goto LABEL_146;
      }
    }

    v300 = &v294;
    v245 = v307;
    v246 = v307[8];
    v247 = __chkstk_darwin(v233, v234);
    v295 = (v246 + 15) & 0xFFFFFFFFFFFFFFF0;
    v301 = &v294 - v295;
    v299 = &v294;
    __chkstk_darwin(v247, v248);
    v250 = (v249 + 15) & 0xFFFFFFFFFFFFFFF0;
    v251 = v315;
    sub_6128(&v235[v315], &v294 - v250, &qword_62138, &qword_4AC00);
    v252 = v309(&v294 - v250, 1, v219);
    v153 = v334;
    if (v252 == 1)
    {

      sub_6C50(v313);
      sub_6C50(v251);
      sub_60C8(v328, &qword_630B0, &unk_4C190);
      v160 = v327;
      sub_60C8(v327, &qword_630B0, &unk_4C190);
      sub_60C8(&v294 - v250, &qword_62138, &qword_4AC00);
    }

    else
    {
      v259 = v245[4];
      v294 = v245 + 4;
      v260 = v259;
      v261 = (v259)(v301, &v294 - v250, v219);
      v303 = &v294;
      v263 = __chkstk_darwin(v261, v262);
      v264 = &v294 - v295;
      v299 = &v294;
      __chkstk_darwin(v263, v265);
      v266 = &v294 - v250;
      v267 = v313;
      sub_6128(v313 + v297, v266, &qword_62138, &qword_4AC00);
      if (v309(v266, 1, v219) != 1)
      {
        v312 = v219;
        v260(v264, v266, v219);
        if (sub_47524())
        {
          v268 = v315;
        }

        else
        {
          v268 = v267;
        }

        sub_6BEC(v268, v305);

        v269 = sub_477F4();
        v270 = sub_48604();

        v271 = os_log_type_enabled(v269, v270);
        v295 = v264;
        if (v271)
        {
          v272 = swift_slowAlloc();
          v273 = swift_slowAlloc();
          v336 = v273;
          *v272 = v314;
          v274 = sub_3DD80(v333, v166, &v336);

          *(v272 + 4) = v274;
          _os_log_impl(&dword_0, v269, v270, "mergeResponses: Taking the newest vote: %s", v272, 0xCu);
          sub_6020(v273);
        }

        else
        {
        }

        v214 = v331;
        sub_6BEC(v305, v302);
        v288 = swift_isUniquelyReferenced_nonNull_native();
        v81 = v323;
        if ((v288 & 1) == 0)
        {
          v326 = sub_10B1C(0, v326[2] + 1, 1, v326);
        }

        v160 = v327;
        v290 = v326[2];
        v289 = v326[3];
        if (v290 >= v289 >> 1)
        {
          v326 = sub_10B1C((v289 > 1), v290 + 1, 1, v326);
        }

        sub_6C50(v305);
        v291 = v307[1];
        v292 = v312;
        v291(v295, v312);
        v291(v301, v292);
        sub_6C50(v313);
        sub_6C50(v315);
        v293 = v326;
        v326[2] = v290 + 1;
        sub_7A64(v302, v293 + v320 + v153 * v290);
        sub_60C8(v328, &qword_630B0, &unk_4C190);
        sub_60C8(v160, &qword_630B0, &unk_4C190);
        goto LABEL_191;
      }

      (v245[1])(v301, v219);
      sub_6C50(v267);
      sub_6C50(v315);
      sub_60C8(v328, &qword_630B0, &unk_4C190);
      v160 = v327;
      sub_60C8(v327, &qword_630B0, &unk_4C190);
      sub_60C8(v266, &qword_62138, &qword_4AC00);
    }

    v161 = v329;
    v214 = v331;
    v81 = v323;
    goto LABEL_146;
  }

  v151 = _swiftEmptyArrayStorage;
  v158 = _swiftEmptyArrayStorage[2];
  v160 = v327;
  v161 = v329;
  v153 = v334;
  if (v158)
  {
    goto LABEL_105;
  }

  v326 = _swiftEmptyArrayStorage;
LABEL_192:

  v336 = v326;
  sub_21E94(v298, sub_10B1C, type metadata accessor for ViewModelPollVote);
  return v336;
}

uint64_t sub_2524C(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_630C8, &qword_4C1B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_252BC()
{
  result = qword_630D8;
  if (!qword_630D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_630D8);
  }

  return result;
}

uint64_t sub_2533C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_54A4(&qword_63450, &unk_4C4C0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_25418(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_54A4(&qword_63450, &unk_4C4C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ContentView(uint64_t a1)
{
  result = qword_63138;
  if (!qword_63138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25514(uint64_t a1)
{
  sub_25668(319, &unk_63148, type metadata accessor for PollViewModel, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_25618();
    if (v2 <= 0x3F)
    {
      sub_25668(319, &qword_634E0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25618()
{
  if (!qword_622B8)
  {
    v0 = sub_486E4();
    if (!v1)
    {
      atomic_store(v0, &qword_622B8);
    }
  }
}

void sub_25668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_256E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_273B4(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  *a2 = *(v3 + 97);
  return result;
}

uint64_t sub_257B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_273B4(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  *a2 = *(v3 + 98);
  return result;
}

__n128 sub_25888@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_273B4(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  result = *(v3 + 120);
  v5 = *(v3 + 136);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_25960@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_273B4(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 192);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_25A10(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_273B4(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475B4();
}

uint64_t sub_25AE0@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = sub_47D84();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_54A4(&qword_63180, &qword_4C220);
  __chkstk_darwin(v6, v7);
  v9 = v19 - v8;
  v10 = sub_54A4(&qword_63188, &qword_4C228);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v19 - v13;
  *v9 = sub_47C74();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v15 = sub_54A4(&qword_63190, &qword_4C230);
  sub_25E14(&v9[*(v15 + 44)]);
  sub_47D74();
  v16 = sub_EAF0(&qword_63198, &qword_63180, &qword_4C220, &protocol conformance descriptor for VStack<A>);
  sub_47FF4();
  (*(v2 + 8))(v5, v1);
  sub_26BDC(v9);
  if (qword_61CD0 != -1)
  {
    swift_once();
  }

  v19[4] = sub_47494();
  v19[5] = v17;
  v19[2] = v6;
  v19[3] = v16;
  swift_getOpaqueTypeConformance2();
  sub_10330();
  sub_47FC4();

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_25E14@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v60 = sub_54A4(&qword_631A0, &qword_4C238);
  __chkstk_darwin(v60, v1);
  v3 = &v56 - v2;
  v61 = sub_54A4(&qword_631A8, &qword_4C240);
  __chkstk_darwin(v61, v4);
  v6 = &v56 - v5;
  v7 = sub_47D34();
  v59 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_54A4(&qword_631B0, &qword_4C248);
  v58 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v14 = &v56 - v13;
  v15 = sub_54A4(&qword_631B8, &qword_4C250);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v20 = &v56 - v19;
  v21 = *v18;
  if (*v18)
  {
    v57 = v11;
    v58 = v15;
    v59 = v7;
    v56 = v6;
    v22 = *(v18 + 72);
    v23 = *(v18 + 80);
    KeyPath = swift_getKeyPath();
    v25 = type metadata accessor for PollOptionList.PollOptionListView(0);
    *&v3[v25[6]] = KeyPath;
    sub_54A4(&qword_62308, &qword_4AD90);
    swift_storeEnumTagMultiPayload();
    v26 = swift_getKeyPath();
    v27 = swift_getKeyPath();
    type metadata accessor for PollViewModel(0);
    sub_273B4(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
    swift_retain_n();
    sub_48214();
    *&v3[v25[5]] = 0;
    v28 = &v3[v25[7]];
    *v28 = v26;
    v28[8] = 0;
    v29 = &v3[v25[8]];
    *v29 = v27;
    v29[8] = 0;
    v30 = &v3[v25[9]];
    if (qword_61CE0 != -1)
    {
      swift_once();
    }

    v31 = unk_642A0;
    v66 = xmmword_64290;
    v67 = unk_642A0;
    v32 = qword_642B0;
    v68 = qword_642B0;
    v34 = xmmword_64270;
    v33 = *&qword_64280;
    v64 = xmmword_64270;
    v65 = *&qword_64280;
    *(v30 + 2) = xmmword_64290;
    *(v30 + 3) = v31;
    *(v30 + 8) = v32;
    *v30 = v34;
    *(v30 + 1) = v33;
    v35 = &v3[v25[10]];
    *v35 = v22;
    v35[8] = v23;
    sub_2705C(&v64, v63);
    v36 = sub_265C8();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = sub_47E54();
    v44 = &v3[*(sub_54A4(&qword_63200, &qword_4C268) + 36)];
    *v44 = v43;
    *(v44 + 1) = v36;
    *(v44 + 2) = v38;
    *(v44 + 3) = v40;
    *(v44 + 4) = v42;
    v44[40] = 0;
    v45 = &v3[*(sub_54A4(&qword_631F0, &qword_4C260) + 36)];
    *v45 = sub_270B8;
    v45[1] = v21;
    v45[2] = 0;
    v45[3] = 0;
    v46 = &v3[*(sub_54A4(&qword_631E0, &qword_4C258) + 36)];
    *v46 = sub_268A8;
    *(v46 + 1) = 0;
    *(v46 + 2) = sub_270C0;
    *(v46 + 3) = v21;
    v47 = swift_retain_n();
    v48 = sub_26994(v47);
    v49 = sub_47E54();
    v50 = &v3[*(v60 + 36)];
    *v50 = v48;
    v50[8] = v49;
    sub_270C8(v3, v56);
    swift_storeEnumTagMultiPayload();
    sub_26C44();
    v51 = sub_EAF0(&qword_631C0, &qword_631B0, &qword_4C248, &protocol conformance descriptor for ProgressView<A, B>);
    v52 = sub_273B4(&qword_631C8, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    v63[0] = v57;
    v63[1] = v59;
    v63[2] = v51;
    v63[3] = v52;
    swift_getOpaqueTypeConformance2();
    sub_47CC4();

    return sub_27138(v3);
  }

  else
  {
    sub_478B4();
    sub_47D24();
    v54 = sub_EAF0(&qword_631C0, &qword_631B0, &qword_4C248, &protocol conformance descriptor for ProgressView<A, B>);
    v55 = sub_273B4(&qword_631C8, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    sub_47F44();
    (*(v59 + 8))(v10, v7);
    (*(v58 + 8))(v14, v11);
    (*(v16 + 16))(v6, v20, v15);
    swift_storeEnumTagMultiPayload();
    sub_26C44();
    *&v64 = v11;
    *(&v64 + 1) = v7;
    *&v65 = v54;
    *(&v65 + 1) = v55;
    swift_getOpaqueTypeConformance2();
    sub_47CC4();
    return (*(v16 + 8))(v20, v15);
  }
}

double sub_265C8()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0.0;
  }

  v2 = v0;
  swift_getKeyPath();
  sub_273B4(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);

  sub_475C4();

  if (*(v1 + 98) == 1)
  {
    swift_getKeyPath();
    sub_475C4();

    if (*(v1 + 98) != 1)
    {

      return v2[1];
    }

    swift_getKeyPath();
    sub_475C4();

    v3 = *(v1 + 97);

    if ((v3 & 1) == 0)
    {
      return v2[1];
    }
  }

  else
  {
  }

  v4 = v2[5];
  swift_getKeyPath();

  sub_475C4();

  swift_getKeyPath();
  sub_475C4();

  return v4;
}

void *sub_267E8(uint64_t a1)
{
  swift_getKeyPath();
  sub_273B4(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result requestResize];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_268A8@<X0>(void *a1@<X8>)
{
  result = sub_47964();
  *a1 = v3;
  return result;
}

void *sub_268D4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_273B4(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result requestResize];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26994(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    swift_getKeyPath();
    *&v11[0] = v2;
    sub_273B4(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);

    sub_475C4();

    if (*(v2 + 98) != 1 || (swift_getKeyPath(), *&v11[0] = v2, sub_475C4(), , *(v2 + 98) == 1) && (swift_getKeyPath(), *&v11[0] = v2, sub_475C4(), , (*(v2 + 97) & 1) != 0))
    {
      v3 = sub_48074();
    }

    else
    {
      if (qword_61D40 != -1)
      {
        swift_once();
      }

      v3 = qword_643D8;

      sub_48074();
      v5 = sub_47914();

      v11[0] = xmmword_4B4C0;
      v11[1] = xmmword_4B4D0;
      __asm { FMOV            V0.2D, #12.0 }

      v11[2] = _Q0;
      v11[3] = xmmword_4B470;
      v11[4] = xmmword_4B470;
      v11[5] = xmmword_4B4E0;
      v12 = 0x4062C00000000000;
      v13 = v3;
      v14 = v5;
      v15 = xmmword_4B4F0;
      v16 = 0x4034000000000000;

      sub_271CC(v11);
    }

    return v3;
  }

  else
  {

    return sub_48074();
  }
}

uint64_t sub_26BDC(uint64_t a1)
{
  v2 = sub_54A4(&qword_63180, &qword_4C220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26C44()
{
  result = qword_631D0;
  if (!qword_631D0)
  {
    sub_A36C(&qword_631A0, &qword_4C238);
    sub_26CFC();
    sub_EAF0(&qword_63220, &qword_63228, &qword_4C278, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_631D0);
  }

  return result;
}

unint64_t sub_26CFC()
{
  result = qword_631D8;
  if (!qword_631D8)
  {
    sub_A36C(&qword_631E0, &qword_4C258);
    sub_26DB4();
    sub_EAF0(&qword_63210, &qword_63218, &qword_4C270, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_631D8);
  }

  return result;
}

unint64_t sub_26DB4()
{
  result = qword_631E8;
  if (!qword_631E8)
  {
    sub_A36C(&qword_631F0, &qword_4C260);
    sub_26E40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_631E8);
  }

  return result;
}

unint64_t sub_26E40()
{
  result = qword_631F8;
  if (!qword_631F8)
  {
    sub_A36C(&qword_63200, &qword_4C268);
    sub_273B4(&qword_63208, type metadata accessor for PollOptionList.PollOptionListView, &unk_4AD14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_631F8);
  }

  return result;
}

uint64_t sub_26F04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_47B84();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26F34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_47B84();
  *a1 = result & 1;
  return result;
}

uint64_t sub_270C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_631A0, &qword_4C238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27138(uint64_t a1)
{
  v2 = sub_54A4(&qword_631A0, &qword_4C238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27288()
{
  result = qword_63230;
  if (!qword_63230)
  {
    sub_A36C(&qword_63238, &unk_4C3B0);
    sub_A36C(&qword_63180, &qword_4C220);
    sub_EAF0(&qword_63198, &qword_63180, &qword_4C220, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_273B4(&qword_63240, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63230);
  }

  return result;
}

uint64_t sub_273B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PollsFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PollsFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_274E8()
{
  result = qword_63248;
  if (!qword_63248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63248);
  }

  return result;
}

Swift::Int sub_27544()
{
  sub_488D4();
  sub_488E4(0);
  return sub_48904();
}

Swift::Int sub_275B0(uint64_t a1)
{
  sub_488D4();
  sub_488E4(0);
  return sub_48904();
}

uint64_t sub_27618@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_47BF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_54A4(&qword_62308, &qword_4AD90);
  __chkstk_darwin(v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for AdaptiveGlyphSwiftUITextView(0);
  sub_6128(v1 + *(v12 + 76), v11, &qword_62308, &qword_4AD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_47884();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_48634();
    v15 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

id sub_279C8()
{
  v1 = v0;
  type metadata accessor for AdaptiveGlyphTextView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = v1[5];
  v4 = &v2[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderText];
  *v4 = v1[4];
  *(v4 + 1) = v3;

  sub_28A4();

  sub_52F8(v5);

  v6 = objc_opt_self();
  v7 = v2;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor:v8];

  v9 = objc_opt_self();
  v10 = v7;
  v11 = [v9 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v10 setFont:v11];

  [v10 setScrollEnabled:0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_54A4(&qword_63588, &qword_4C5F8);
  sub_47E34();
  *&v10[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_focusDelegate + 8] = &off_5ED18;
  swift_unknownObjectWeakAssign();

  v12 = v1[7];
  if (v12)
  {
    sub_47E34();
    sub_29A00(v10, v1, v20, &off_5ED18, v12);
  }

  [v10 setTextDropDelegate:v12];

  v14 = v1[16];
  v13 = v1[17];
  v15 = type metadata accessor for AdaptiveGlyphSwiftUITextView.TextViewController();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView18TextViewController_textView] = v10;
  v17 = &v16[OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView18TextViewController_viewWillDisappear];
  *v17 = v14;
  *(v17 + 1) = v13;
  v19.receiver = v16;
  v19.super_class = v15;

  return objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0);
}

void sub_27C4C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_47884();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v30 - v11;
  v13 = *(a1 + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView18TextViewController_textView);
  sub_27618(&v30 - v11);
  (*(v5 + 104))(v9, enum case for ColorScheme.dark(_:), v4);
  LOBYTE(a1) = sub_47874();
  v14 = *(v5 + 8);
  v14(v9, v4);
  v14(v12, v4);
  if (a1)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  [v13 setOverrideUserInterfaceStyle:v15];
  v16 = *(v2 + 24);

  sub_52F8(v17);

  v18 = *(v2 + 48);
  [v13 setEditable:v18];
  [v13 setSelectable:v18];
  sub_54A4(&qword_63588, &qword_4C5F8);
  sub_47E34();
  *&v13[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_focusDelegate + 8] = &off_5ED18;
  swift_unknownObjectWeakAssign();

  [v13 setFont:*(v16 + 16)];
  v31 = *v2;
  v32 = *(v2 + 8);
  sub_54A4(&qword_63550, &qword_4C5D8);
  sub_48164();
  v19 = v30;
  v20 = (*(v2 + 200))(v18);
  v21 = sub_40428(v19, v20);

  v22 = v21;
  v23 = [v13 attributedText];
  if (!v23 || (v24 = v23, sub_61D4(0, &qword_63590, NSAttributedString_ptr), v25 = v22, v26 = sub_486C4(), v25, v24, (v26 & 1) == 0))
  {
    if ([v22 length] >= 1)
    {
      [v13 setAttributedText:v22];
    }
  }

  v27 = *(v2 + 40);
  v28 = &v13[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderText];
  *v28 = *(v2 + 32);
  *(v28 + 1) = v27;

  sub_28A4();
  if (*(v2 + 144) == 1 && ([v13 isFirstResponder] & 1) == 0)
  {
    [v13 becomeFirstResponder];
  }

  v29 = *(v2 + 56);
  if (v29)
  {
    sub_47E34();
    sub_29A00(v13, v2, v31, &off_5ED18, v29);
  }

  sub_28028(v13);
}

void *sub_28028(char *a1)
{
  v3 = sub_48344();
  v32 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_48364();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AdaptiveGlyphSwiftUITextView(0);
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  __chkstk_darwin(v11 - 8, v13);
  aBlock = *v1;
  v34 = *(v1 + 8);
  sub_54A4(&qword_63550, &qword_4C5D8);
  sub_48164();
  v14 = *(*&v38 + 16);
  v15 = [v14 length];

  if (!v15)
  {
    a1 = *&a1[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel];
  }

  [a1 sizeThatFits:{*(v1 + 168), 1.79769313e308}];
  v17 = v16;
  v19 = v18;
  v20 = *(v1 + 184);
  v21 = *(v1 + 192);
  aBlock = *(v1 + 176);
  *&v34 = v20;
  *(&v34 + 1) = v21;
  sub_54A4(&qword_63558, &unk_4C5E0);
  result = sub_48164();
  if (v19 != v38)
  {
    sub_61D4(0, &unk_63560, OS_dispatch_queue_ptr);
    v23 = sub_48644();
    sub_295C0(v1, &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v25 = swift_allocObject();
    sub_297BC(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
    v26 = v25 + ((v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v26 = v17;
    *(v26 + 8) = v19;
    v36 = sub_29820;
    v37 = v25;
    aBlock = _NSConcreteStackBlock;
    *&v34 = 1107296256;
    *(&v34 + 1) = sub_28704;
    v35 = &unk_5ED68;
    v27 = _Block_copy(&aBlock);

    sub_48354();
    aBlock = _swiftEmptyArrayStorage;
    sub_298C8(&qword_63570, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_54A4(&qword_63578, &qword_4C5F0);
    sub_29910();
    sub_48744();
    sub_48654();
    _Block_release(v27);

    (*(v32 + 8))(v6, v3);
    return (*(v30 + 8))(v10, v31);
  }

  return result;
}

uint64_t sub_2846C()
{
  sub_2AAA0(v0 + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_284F8(uint64_t a1)
{
  result = type metadata accessor for AdaptiveGlyphSwiftUITextView(319);
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

uint64_t sub_285A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_285E0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = 1.79769313e308;
  }

  else
  {
    v7 = *&a1;
    if (*&a1 == 0.0)
    {
      return 0;
    }
  }

  v9 = *(a5 + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView18TextViewController_textView);
  [v9 sizeThatFits:{a3, a4, v7, 1.79769313e308}];
  if (v10 == 0.0)
  {
    v11 = *&a1;
    if (a2)
    {
      v11 = 1.79769313e308;
    }

    [*&v9[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel] sizeThatFits:v11];
  }

  if (a2)
  {
    return 0x7FEFFFFFFFFFFFFFLL;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_28704(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_28758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __chkstk_darwin(a1 - 8, a2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_295C0(v3, v6);
  type metadata accessor for AdaptiveGlyphSwiftUITextView.Coordinator(0);
  v7 = swift_allocObject();
  result = sub_297BC(v6, v7 + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent);
  *a3 = v7;
  return result;
}

uint64_t sub_2882C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_298C8(&qword_635A0, type metadata accessor for AdaptiveGlyphSwiftUITextView, &unk_4C540);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_288C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_298C8(&qword_635A0, type metadata accessor for AdaptiveGlyphSwiftUITextView, &unk_4C540);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_28954(uint64_t a1)
{
  sub_298C8(&qword_635A0, type metadata accessor for AdaptiveGlyphSwiftUITextView, &unk_4C540);
  sub_47E14();
  __break(1u);
}

void *sub_289AC(char *a1, uint64_t a2)
{

  sub_54A4(&qword_63550, &qword_4C5D8);
  sub_48174();
  return sub_28028(a1);
}

uint64_t sub_28A28(uint64_t a1)
{

  sub_54A4(&qword_63550, &qword_4C5D8);
  return sub_48174();
}

void sub_28A84(void *a1)
{
  type metadata accessor for AdaptiveGlyphTextView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = *(v3 + OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel);
  v6 = a1;
  v7 = v5;
  v8 = [v4 attributedText];
  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  v10 = [v8 length];

  [v7 setHidden:v10 > 0];
  v18 = [v4 markedTextRange];

  if (!v18)
  {
    v11 = v1;
    v12 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_pollOptionText;

    v13 = [v4 attributedText];
    if (v13)
    {
      v14 = v13;
      v15 = sub_40CFC(v13);

      sub_37E64(v15);

      v16 = OBJC_IVAR____TtC13MessagesPollsP33_27DE0C8FC02EA24110766567662B2DB629AdaptiveGlyphTextViewObserver_fieldUpdater;
      swift_beginAccess();
      sub_6128(v11 + v16, v20, &qword_62108, &qword_4AA60);
      if (v21)
      {
        sub_5E70(v20, v19);
        sub_2A960(v20);
        sub_6190(v19, v19[3]);
        v17 = *&v4[v12];
        type metadata accessor for AdaptiveGlyphSwiftUITextView(0);

        sub_289AC(v4, v17);

        sub_6020(v19);
      }

      else
      {

        sub_2A960(v20);
      }

      return;
    }

LABEL_13:
    __break(1u);
    return;
  }
}

unint64_t sub_28DD0(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_487E4();
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_487A4();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_61D4(0, &qword_635B0, UIMenuElement_ptr);
    v8 = sub_486C4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

id sub_29004(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_29134(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_54A4(&qword_63450, &unk_4C4C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 76);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_54A4(&qword_63450, &unk_4C4C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_292B4(uint64_t a1)
{
  sub_29508(319, &qword_634C0, type metadata accessor for PollOptionText, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PollOptionTextTransformer();
    if (v2 <= 0x3F)
    {
      sub_29508(319, &qword_634C8, type metadata accessor for AdaptiveGlyphTextViewObserver, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_29468();
        if (v4 <= 0x3F)
        {
          sub_294B8();
          if (v5 <= 0x3F)
          {
            sub_29508(319, &qword_634E0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_29468()
{
  result = qword_634D0;
  if (!qword_634D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_634D0);
  }

  return result;
}

void sub_294B8()
{
  if (!qword_634D8)
  {
    v0 = sub_481B4();
    if (!v1)
    {
      atomic_store(v0, &qword_634D8);
    }
  }
}

void sub_29508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_295C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdaptiveGlyphSwiftUITextView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29624()
{
  v1 = (type metadata accessor for AdaptiveGlyphSwiftUITextView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[21];
  sub_54A4(&qword_62308, &qword_4AD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_47884();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_297BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdaptiveGlyphSwiftUITextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29820()
{
  v1 = *(type metadata accessor for AdaptiveGlyphSwiftUITextView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_286A8((v0 + v2), v4, v5);
}

double sub_298B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_298C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29910()
{
  result = qword_63580;
  if (!qword_63580)
  {
    sub_A36C(&qword_63578, &qword_4C5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63580);
  }

  return result;
}

uint64_t sub_2999C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_487E4();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

uint64_t sub_29A00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[3] = type metadata accessor for AdaptiveGlyphSwiftUITextView(0);
  v19[4] = &off_5ED00;
  v10 = sub_29B6C(v19);
  sub_295C0(a2, v10);
  sub_5E70(v19, v18);
  v11 = OBJC_IVAR____TtC13MessagesPollsP33_27DE0C8FC02EA24110766567662B2DB629AdaptiveGlyphTextViewObserver_fieldUpdater;
  swift_beginAccess();
  sub_29BD0(v18, a5 + v11);
  swift_endAccess();
  [a1 setDelegate:a5];
  type metadata accessor for AdaptiveGlyphTextView();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    sub_5E70(v19, v18);
    v14 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_adaptiveGlyphDelegate;
    swift_beginAccess();
    v15 = a1;
    sub_29BD0(v18, v13 + v14);
    swift_endAccess();
    *(v13 + OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_focusDelegate + 8) = a4;
    swift_unknownObjectWeakAssign();

    v16 = (a5 + OBJC_IVAR____TtC13MessagesPollsP33_27DE0C8FC02EA24110766567662B2DB629AdaptiveGlyphTextViewObserver_focusDelegate);
    *v16 = a3;
    v16[1] = a4;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
  }

  return sub_6020(v19);
}

uint64_t *sub_29B6C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_29BD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62108, &qword_4AA60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29C40(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_48474() != 1)
  {
    goto LABEL_4;
  }

  v7 = [a1 markedTextRange];
  if (v7)
  {

LABEL_4:
    v8 = 1;
    return v8 & 1;
  }

  v23[0] = a2;
  v23[1] = a3;
  v10 = sub_47384();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_47374();
  sub_10330();
  v15 = 1;
  sub_48704();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  if (a2 != 9 || a3 != 0xE100000000000000)
  {
    v22 = sub_48874();
    v15 = v22;
    if (v17)
    {
      v21 = 0;
      if ((v22 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  v18 = *(v3 + OBJC_IVAR____TtC13MessagesPollsP33_27DE0C8FC02EA24110766567662B2DB629AdaptiveGlyphTextViewObserver_focusDelegate);
  if (v18)
  {
    v19 = *(v18 + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 80);
    v20 = swift_unknownObjectRetain();
    v19(v20);
    swift_unknownObjectRelease();
  }

  v21 = v15;
  if ((v17 & 1) == 0)
  {
    v8 = 0;
  }

  else
  {
LABEL_14:
    v8 = v21 ^ 1;
  }

  return v8 & 1;
}

UIMenuElementSize sub_29E34(void *a1, unint64_t a2)
{
  type metadata accessor for AdaptiveGlyphTextView();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    return 0;
  }

  v46 = v4;
  v44 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_42:
    v5 = sub_487E4();
  }

  else
  {
    v5 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v45 = a1;
  v47 = a2;
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = 0;
  v48 = (a2 & 0xC000000000000001);
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v48)
    {
      v8 = sub_487A4();
    }

    else
    {
      if (v6 >= *(v7 + 16))
      {
        goto LABEL_41;
      }

      v8 = *(a2 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = v11;
    v13 = v9;
    v14 = [v12 identifier];
    v15 = sub_48414();
    a1 = v16;
    if (v15 == sub_48414() && a1 == v17)
    {
      break;
    }

    v19 = sub_48874();

    a2 = v47;
    if (v19)
    {
      goto LABEL_21;
    }

LABEL_6:

    ++v6;
    if (v10 == v5)
    {
      goto LABEL_23;
    }
  }

LABEL_21:
  objc_opt_self();
  isa = swift_dynamicCastObjCClass();
  if (isa)
  {
    goto LABEL_26;
  }

LABEL_23:
  sub_61D4(0, &qword_635B8, UIMenu_ptr);
  if (qword_61CD0 != -1)
  {
    swift_once();
  }

  v22 = sub_47494();
  v24 = v23;
  v25 = sub_483D4();
  v26 = [objc_opt_self() systemImageNamed:{v25, 0xE000000000000000}];

  v52._countAndFlagsBits = v22;
  v52._object = v24;
  v54.value._countAndFlagsBits = 0;
  v54.value._object = 0;
  v50.value.super.isa = v26;
  v50.is_nil = 0;
  v27.value = 0;
  isa = sub_486A4(v52, v54, v50, v27, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v43).super.super.isa;
LABEL_26:
  v49 = isa;
  sub_54A4(&qword_635C0, &unk_4AA88);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_4B170;
  sub_61D4(0, &qword_635C8, UIAction_ptr);
  if (qword_61CD0 != -1)
  {
    swift_once();
  }

  sub_47494();
  *(swift_allocObject() + 16) = v46;
  v29 = v45;
  *(v28 + 32) = sub_486D4();
  sub_47494();
  *(swift_allocObject() + 16) = v46;
  v30 = v29;
  *(v28 + 40) = sub_486D4();
  sub_47494();
  *(swift_allocObject() + 16) = v46;
  v31 = v30;
  *(v28 + 48) = sub_486D4();
  sub_47494();
  *(swift_allocObject() + 16) = v46;
  v32 = v31;
  *(v28 + 56) = sub_486D4();
  sub_61D4(0, &qword_635B0, UIMenuElement_ptr);
  v33 = sub_48534();

  v34 = [v49 menuByReplacingChildren:{v33, 0}];

  v35 = v47;

  v36 = sub_28DD0(v49, v47);
  v38 = v37;
  v39 = v34;
  if (v38)
  {
    sub_48524();
    if (*(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v47 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_48564();
    }

    sub_48584();
    v35 = v47;
LABEL_38:
    sub_61D4(0, &qword_635B8, UIMenu_ptr);
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    v55.value._countAndFlagsBits = 0;
    v55.value._object = 0;
    v51.value.super.isa = 0;
    v51.is_nil = 0;
    v42.value = 0;
    v20 = sub_486A4(v53, v55, v51, v42, 0xFFFFFFFFFFFFFFFFLL, v35, 0).super.super.isa;

    return v20;
  }

  else
  {
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v44 || (result & 1) == 0)
    {
      result = sub_2999C(v47);
      v35 = result;
    }

    if ((v36 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v36 < *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)))
    {
      v41 = *(&stru_20.cmd + 8 * v36 + (v35 & 0xFFFFFFFFFFFFFF8));
      *(&stru_20.cmd + 8 * v36 + (v35 & 0xFFFFFFFFFFFFFF8)) = v39;

      goto LABEL_38;
    }

    __break(1u);
  }

  return result;
}

id sub_2A62C(void *a1)
{
  v29 = sub_477C4();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29 - 8, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_msgSend(a1 "dropSession")];
  swift_unknownObjectRelease();
  sub_61D4(0, &qword_635A8, UIDragItem_ptr);
  v7 = sub_48544();

  if (v7 >> 62)
  {
LABEL_16:
    v8 = sub_487E4();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v27 = v7 & 0xFFFFFFFFFFFFFF8;
      v28 = v7 & 0xC000000000000001;
      v10 = (v2 + 1);
      v2 = &selRef_adaptiveImageGlyphUpdatedWithNotification_;
      v11 = &selRef_adaptiveImageGlyphUpdatedWithNotification_;
      v25 = v8;
      v26 = v7;
      v12 = v29;
      do
      {
        if (v28)
        {
          v13 = sub_487A4();
          v14 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            v23 = [objc_allocWithZone(UITextDropProposal) initWithDropOperation:1];

            return v23;
          }
        }

        else
        {
          if (v9 >= *(v27 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v13 = *(v7 + 8 * v9 + 32);
          v14 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_13;
          }
        }

        v30 = v9;
        v31 = v14;
        v32 = v13;
        v15 = [v13 itemProvider];
        sub_477A4();
        sub_47794();
        v16 = *v10;
        (*v10)(v5, v12);
        v17 = sub_483D4();

        v18 = v11;
        v19 = [v15 v11[75]];

        v7 = v32;
        if (!v19)
        {
          goto LABEL_14;
        }

        v20 = [v7 itemProvider];
        sub_477B4();
        sub_47794();
        v16(v5, v12);
        v21 = sub_483D4();

        v22 = [v20 v18[75]];

        if (v22)
        {
          goto LABEL_14;
        }

        v9 = v30 + 1;
        v7 = v26;
        v11 = v18;
      }

      while (v31 != v25);
    }
  }

  return [objc_allocWithZone(UITextDropProposal) initWithDropOperation:2];
}

uint64_t sub_2A960(uint64_t a1)
{
  v2 = sub_54A4(&qword_62108, &qword_4AA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2A9C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2AAA0(uint64_t a1)
{
  v2 = type metadata accessor for AdaptiveGlyphSwiftUITextView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2AB1C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_54A4(&qword_63630, &unk_4C638);
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
      v13 = sub_54A4(&qword_63450, &unk_4C4C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2AC6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_54A4(&qword_63630, &unk_4C638);
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
      v13 = sub_54A4(&qword_63450, &unk_4C4C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t _s18PollOptionCellViewVMa(uint64_t a1)
{
  result = qword_63690;
  if (!qword_63690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2ADF4(uint64_t a1)
{
  type metadata accessor for PollViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2AFE8(319, &qword_636A0, &type metadata for PollViewModel.TextItem, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_2AF94(319, &unk_636A8, &type metadata accessor for LayoutDirection);
      if (v3 <= 0x3F)
      {
        sub_2AF94(319, &qword_634E0, &type metadata accessor for ColorScheme);
        if (v4 <= 0x3F)
        {
          sub_2AFE8(319, &qword_622A8, &type metadata for Bool, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_2AFE8(319, &qword_622B0, &type metadata for Double, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2AF94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_47894();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2AFE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2B054@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_47BF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_54A4(&qword_62500, &qword_4B000);
  __chkstk_darwin(v8, v9);
  v11 = &v16 - v10;
  v12 = _s18PollOptionCellViewVMa(0);
  sub_6128(v1 + *(v12 + 24), v11, &qword_62500, &qword_4B000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_47A04();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_48634();
    v15 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2B25C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_47BF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_54A4(&qword_62308, &qword_4AD90);
  __chkstk_darwin(v8, v9);
  v11 = &v16 - v10;
  v12 = _s18PollOptionCellViewVMa(0);
  sub_6128(v1 + *(v12 + 28), v11, &qword_62308, &qword_4AD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_47884();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_48634();
    v15 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2B464()
{
  v1 = sub_47BF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(_s18PollOptionCellViewVMa(0) + 32);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_48634();
    v8 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();
    sub_D60C(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_2B5BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v130 = a1;
  v3 = sub_47DA4();
  v127 = *(v3 - 8);
  v128 = v3;
  __chkstk_darwin(v3, v4);
  v126 = v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_47C54();
  v123 = *(v6 - 8);
  v124 = v6;
  __chkstk_darwin(v6, v7);
  v122 = v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_47D84();
  v115 = *(v9 - 8);
  v116 = v9;
  __chkstk_darwin(v9, v10);
  v114 = v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_54A4(&qword_636F0, &qword_4C698);
  __chkstk_darwin(v12, v13);
  v15 = v110 - v14;
  v112 = sub_54A4(&qword_636F8, &qword_4C6A0) - 8;
  __chkstk_darwin(v112, v16);
  v111 = v110 - v17;
  v131 = sub_54A4(&qword_63700, &qword_4C6A8);
  __chkstk_darwin(v131, v18);
  v113 = v110 - v19;
  v20 = sub_54A4(&qword_63708, &qword_4C6B0);
  v119 = *(v20 - 8);
  v120 = v20;
  __chkstk_darwin(v20, v21);
  v118 = v110 - v22;
  v136 = sub_54A4(&qword_63710, &qword_4C6B8);
  v24 = __chkstk_darwin(v136, v23);
  v129 = v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24, v26);
  v121 = v110 - v28;
  v30 = __chkstk_darwin(v27, v29);
  v132 = v110 - v31;
  v33 = __chkstk_darwin(v30, v32);
  v133 = v110 - v34;
  __chkstk_darwin(v33, v35);
  v135 = v110 - v36;
  v37 = *v1;
  swift_getKeyPath();
  v38 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  *&v158 = v37;
  v134 = sub_31810(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  swift_beginAccess();
  v39 = *(v37 + 200);
  v137[2] = v2;

  sub_1F030(sub_323BC, v137, v39);
  v110[3] = v40;

  *v15 = sub_47C14();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v41 = sub_54A4(&qword_63718, &qword_4C6E8);
  sub_2C640(v2, &v15[*(v41 + 44)]);
  v42 = &v15[*(sub_54A4(&qword_63720, &qword_4C6F0) + 36)];
  sub_2DBF0(v42);
  *(v42 + *(sub_54A4(&qword_63728, &qword_4C6F8) + 36)) = 256;
  v43 = *(v2 + *(_s18PollOptionCellViewVMa(0) + 40) + 120);
  v44 = &v15[*(sub_54A4(&qword_63730, &unk_4C700) + 36)];
  v45 = *(sub_47A84() + 20);
  v46 = enum case for RoundedCornerStyle.continuous(_:);
  v47 = sub_47C24();
  (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
  *v44 = v43;
  *(v44 + 1) = v43;
  *&v44[*(sub_54A4(&qword_62390, &qword_4AE78) + 36)] = 256;
  v48 = v38;
  v49 = &v15[*(v12 + 36)];
  v49[32] = 0;
  *v49 = 0u;
  *(v49 + 1) = 0u;
  sub_478C4();
  sub_31390();
  v50 = v111;
  sub_47FA4();
  sub_60C8(v15, &qword_636F0, &qword_4C698);
  swift_getKeyPath();
  *&v158 = v37;
  sub_475C4();

  sub_482D4();
  v51 = sub_482E4();

  v52 = *(v2 + 3);
  v53 = *(v2 + 7);
  v160 = *(v2 + 5);
  v161[0] = v53;
  *(v161 + 10) = *(v2 + 66);
  v158 = *(v2 + 1);
  v159 = v52;
  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v162[0] = v155;
  v162[1] = v156;
  *v163 = v157[0];
  v54 = v50;
  *&v163[10] = *(v157 + 10);
  sub_E8EC(v162);
  v55 = v163[25];
  v56 = &v50[*(v112 + 44)];
  *v56 = v51;
  v56[8] = v55;
  swift_getKeyPath();
  *&v158 = v37;
  sub_475C4();

  v57 = 0;
  if ((*(v37 + 98) & 1) == 0)
  {
    v57 = sub_482D4();
  }

  swift_getKeyPath();
  *&v158 = v37;
  sub_475C4();

  swift_beginAccess();
  v58 = *(v37 + 72);
  v59 = v113;
  sub_315F4(v54, v113);
  v60 = (v59 + *(v131 + 36));
  *v60 = v57;
  v60[1] = v58;
  v61 = *(v2 + 3);
  v62 = *(v2 + 7);
  v160 = *(v2 + 5);
  v161[0] = v62;
  *(v161 + 10) = *(v2 + 66);
  v158 = *(v2 + 1);
  v159 = v61;

  sub_48164();
  v155 = v152;
  v156 = v153;
  v157[0] = v154[0];
  *(v157 + 10) = *(v154 + 10);
  sub_E8EC(&v155);
  v125 = v48;
  v117 = v37;
  v63 = v114;
  if (BYTE9(v157[1]))
  {
    sub_47D74();
  }

  else
  {
    sub_47D64();
  }

  v114 = sub_31664();
  v64 = v118;
  v65 = v131;
  sub_47FF4();
  (*(v115 + 8))(v63, v116);
  sub_60C8(v59, &qword_63700, &qword_4C6A8);
  v66 = *(v2 + 3);
  v67 = *(v2 + 7);
  v160 = *(v2 + 5);
  v161[0] = v67;
  *(v161 + 10) = *(v2 + 66);
  v158 = *(v2 + 1);
  v159 = v66;
  sub_48164();
  v68 = v147[4];

  sub_E8EC(v147);
  v69 = [*(v68 + 16) string];
  v70 = sub_48414();
  v72 = v71;

  *&v150[0] = v70;
  *(&v150[0] + 1) = v72;
  v73 = *(v2 + 3);
  v74 = *(v2 + 7);
  v160 = *(v2 + 5);
  v161[0] = v74;
  *(v161 + 10) = *(v2 + 66);
  v158 = *(v2 + 1);
  v159 = v73;
  sub_48164();
  v148[0] = v152;
  v148[1] = v153;
  v149[0] = v154[0];
  *(v149 + 10) = *(v154 + 10);
  sub_E8EC(v148);
  *&v158 = v65;
  *(&v158 + 1) = v114;
  swift_getOpaqueTypeConformance2();
  v75 = sub_10330();
  v76 = v120;
  v77 = v121;
  sub_47FB4();

  (*(v119 + 8))(v64, v76);
  *&v144 = sub_2E0A4();
  *(&v144 + 1) = v78;
  v79 = *(v2 + 3);
  v80 = *(v2 + 7);
  v160 = *(v2 + 5);
  v161[0] = v80;
  *(v161 + 10) = *(v2 + 66);
  v158 = *(v2 + 1);
  v159 = v79;
  sub_48164();
  v150[0] = v152;
  v150[1] = v153;
  v151[0] = v154[0];
  *(v151 + 10) = *(v154 + 10);
  sub_E8EC(v150);
  v131 = v75;
  sub_47A24();

  sub_60C8(v77, &qword_63710, &qword_4C6B8);
  v81 = *(v2 + 3);
  v82 = *(v2 + 7);
  v160 = *(v2 + 5);
  v161[0] = v82;
  *(v161 + 10) = *(v2 + 66);
  v158 = *(v2 + 1);
  v159 = v81;
  sub_48164();
  v152 = v144;
  v153 = v145;
  v154[0] = v146[0];
  *(v154 + 10) = *(v146 + 10);
  sub_E8EC(&v152);
  if ((BYTE9(v154[1]) & 1) != 0 || (sub_2E4FC() & 1) == 0)
  {
    *&v158 = _swiftEmptyArrayStorage;
    sub_31810(&qword_63798, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    sub_54A4(&qword_637A0, &qword_4C778);
    sub_EAF0(&qword_637A8, &qword_637A0, &qword_4C778, &protocol conformance descriptor for [A]);
    v83 = v122;
    v85 = v124;
    sub_48744();
    v84 = v126;
  }

  else
  {
    v83 = v122;
    sub_47C34();
    v84 = v126;
    v85 = v124;
  }

  v86 = v132;
  sub_47A34();
  (*(v123 + 8))(v83, v85);
  sub_60C8(v86, &qword_63710, &qword_4C6B8);
  if (qword_61CD0 != -1)
  {
    swift_once();
  }

  *&v158 = sub_47494();
  *(&v158 + 1) = v87;
  sub_47F14();
  sub_47DB4();
  v88 = *(v2 + 3);
  v89 = *(v2 + 7);
  v160 = *(v2 + 5);
  v161[0] = v89;
  *(v161 + 10) = *(v2 + 66);
  v158 = *(v2 + 1);
  v159 = v88;
  sub_48164();
  v144 = v141;
  v145 = v142;
  v146[0] = v143[0];
  *(v146 + 10) = *(v143 + 10);
  sub_E8EC(&v144);
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  if ((BYTE9(v146[1]) & 1) == 0)
  {
    *&v158 = sub_2E814();
    *(&v158 + 1) = v94;
    v90 = sub_47F14();
    v91 = v95;
    v93 = v96;
    v92 = v97 & 1;
  }

  v98 = v133;
  sub_47A14();
  sub_31858(v90, v91, v92, v93);
  (*(v127 + 8))(v84, v128);
  sub_60C8(v98, &qword_63710, &qword_4C6B8);
  swift_getKeyPath();
  v99 = v117;
  *&v158 = v117;
  sub_475C4();

  if (*(v99 + 98) == 1 && (swift_getKeyPath(), *&v158 = v99, sub_475C4(), , *(v99 + 97) == 1))
  {
    sub_482A4();
    sub_47904();
    LODWORD(v134) = 0;
    v136 = v158;
    v132 = v160;
    v133 = v159;
    v100 = *(&v160 + 1);
    v140 = 1;
    v139 = BYTE8(v158);
    v138 = BYTE8(v159);
    v101 = 1;
    v102 = BYTE8(v158);
    v103 = BYTE8(v159);
    LOBYTE(v141) = 0;
  }

  else
  {
    v136 = 0;
    v132 = 0;
    v133 = 0;
    v100 = 0;
    v103 = 0;
    v102 = 0;
    v101 = 0;
    LODWORD(v134) = 1;
  }

  v104 = v135;
  v105 = v129;
  sub_6128(v135, v129, &qword_63710, &qword_4C6B8);
  v106 = v130;
  sub_6128(v105, v130, &qword_63710, &qword_4C6B8);
  v107 = v106 + *(sub_54A4(&qword_637B0, &qword_4C780) + 48);
  *v107 = 0;
  *(v107 + 8) = v101;
  *(v107 + 16) = v136;
  *(v107 + 24) = v102;
  v108 = v132;
  *(v107 + 32) = v133;
  *(v107 + 40) = v103;
  *(v107 + 48) = v108;
  *(v107 + 56) = v100;
  *(v107 + 64) = v134;
  sub_60C8(v104, &qword_63710, &qword_4C6B8);
  return sub_60C8(v105, &qword_63710, &qword_4C6B8);
}

uint64_t sub_2C640@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v58 = a2;
  v56 = sub_54A4(&qword_637E0, &qword_4C800);
  v50 = *(v56 - 8);
  __chkstk_darwin(v56, v3);
  v49 = &v47 - v4;
  v52 = sub_54A4(&qword_637E8, &qword_4C808);
  __chkstk_darwin(v52, v5);
  v7 = &v47 - v6;
  v55 = sub_54A4(&qword_637F0, &qword_4C810);
  __chkstk_darwin(v55, v8);
  v48 = &v47 - v9;
  v10 = sub_47A04();
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = &v47 - v17;
  v19 = sub_54A4(&qword_637F8, &qword_4C818);
  v21 = __chkstk_darwin(v19 - 8, v20);
  v57 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v25 = &v47 - v24;
  v26 = *a1;
  swift_getKeyPath();
  v27 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  v59 = v26;
  v28 = sub_31810(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  v53 = v27;
  v51 = v28;
  sub_475C4();

  if ((*(v26 + 98) & 1) != 0 || (sub_2CC80(), sub_47C94(), (sub_47C64() & 1) == 0))
  {
    v54 = 0x100000000;
  }

  else
  {
    v54 = 1;
  }

  sub_2B054(v18);
  (*(v11 + 104))(v15, enum case for LayoutDirection.leftToRight(_:), v10);
  v29 = sub_479F4();
  v30 = *(v11 + 8);
  v30(v15, v10);
  v30(v18, v10);
  if (v29)
  {
    v31 = v48;
    sub_2CEAC(v48);
    sub_6128(v31, v7, &qword_637F0, &qword_4C810);
    swift_storeEnumTagMultiPayload();
    sub_31914();
    v32 = sub_A36C(&qword_63808, &qword_4C820);
    v33 = sub_319DC();
    v59 = v32;
    v60 = v33;
    swift_getOpaqueTypeConformance2();
    sub_47CC4();
    sub_60C8(v31, &qword_637F0, &qword_4C810);
  }

  else
  {
    v34 = v49;
    sub_2CEAC(v49);
    v35 = v50;
    v36 = v56;
    (*(v50 + 16))(v7, v34, v56);
    swift_storeEnumTagMultiPayload();
    sub_31914();
    v37 = sub_A36C(&qword_63808, &qword_4C820);
    v38 = sub_319DC();
    v59 = v37;
    v60 = v38;
    swift_getOpaqueTypeConformance2();
    sub_47CC4();
    (*(v35 + 8))(v34, v36);
  }

  swift_getKeyPath();
  v59 = v26;
  sub_475C4();

  if ((*(v26 + 98) & 1) != 0 || (sub_2CC80(), sub_47C84(), (sub_47C64() & 1) == 0))
  {
    v40 = 0;
    v39 = 1;
  }

  else
  {
    v39 = 0;
    v40 = 1;
  }

  v41 = v57;
  sub_6128(v25, v57, &qword_637F8, &qword_4C818);
  v42 = v58;
  *v58 = 0;
  v43 = BYTE4(v54);
  *(v42 + 8) = v54;
  *(v42 + 9) = v43;
  v44 = sub_54A4(&qword_638C0, &qword_4C878);
  sub_6128(v41, v42 + *(v44 + 48), &qword_637F8, &qword_4C818);
  v45 = v42 + *(v44 + 64);
  *v45 = 0;
  v45[8] = v40;
  v45[9] = v39;
  sub_60C8(v25, &qword_637F8, &qword_4C818);
  return sub_60C8(v41, &qword_637F8, &qword_4C818);
}

uint64_t sub_2CC80()
{
  v1 = sub_47A04();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v14 - v8;
  sub_2B054(&v14 - v8);
  (*(v2 + 104))(v6, enum case for LayoutDirection.leftToRight(_:), v1);
  v10 = sub_479F4();
  v11 = *(v2 + 8);
  v11(v6, v1);
  v11(v9, v1);
  v12 = *v0;
  swift_getKeyPath();
  if (v10)
  {
    v15 = v12;
    sub_31810(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
    sub_475C4();

    if (*(v12 + 176) != 1)
    {
      return sub_47C84();
    }
  }

  else
  {
    v15 = v12;
    sub_31810(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
    sub_475C4();

    if (*(v12 + 176) == 1)
    {
      return sub_47C84();
    }
  }

  return sub_47C94();
}

uint64_t sub_2CEAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v123 = a1;
  v126 = _s18PollOptionCellViewVMa(0);
  v120 = *(v126 - 8);
  __chkstk_darwin(v126, v3);
  v121 = v4;
  v122 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_54A4(&qword_63870, &qword_4C850);
  __chkstk_darwin(v105, v5);
  v125 = (&v103 - v6);
  v106 = sub_54A4(&qword_63860, &qword_4C848);
  __chkstk_darwin(v106, v7);
  v108 = &v103 - v8;
  v107 = sub_54A4(&qword_63850, &qword_4C840);
  __chkstk_darwin(v107, v9);
  v110 = &v103 - v10;
  v109 = sub_54A4(&qword_63840, &qword_4C838);
  __chkstk_darwin(v109, v11);
  v114 = &v103 - v12;
  v113 = sub_54A4(&qword_63830, &qword_4C830);
  __chkstk_darwin(v113, v13);
  v116 = &v103 - v14;
  v115 = sub_54A4(&qword_63820, &qword_4C828);
  __chkstk_darwin(v115, v15);
  v117 = &v103 - v16;
  v118 = sub_54A4(&qword_63808, &qword_4C820);
  __chkstk_darwin(v118, v17);
  v119 = &v103 - v18;
  v19 = *v1;
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  *&v132 = v19;
  v21 = sub_31810(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  swift_beginAccess();
  v22 = *(v19 + 200);
  v127[2] = v2;

  v23 = sub_1F030(sub_31EB4, v127, v22);
  v25 = v24;

  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v23;
  }

  v104 = v26;
  v27 = *(v2 + 24);
  v28 = *(v2 + 56);
  v134 = *(v2 + 40);
  v135[0] = v28;
  *(v135 + 10) = *(v2 + 66);
  v132 = *(v2 + 8);
  v133 = v27;
  v124 = sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v29 = v150[0];
  v30 = v150[1];

  sub_E8EC(v150);
  swift_getKeyPath();
  *&v132 = v19;
  v111 = v21;
  v112 = v20;
  sub_475C4();

  if (v29 == *(v19 + 160) && v30 == *(v19 + 168))
  {
    v31 = 1;
  }

  else
  {
    v31 = sub_48874();
  }

  v32 = v126;
  v33 = *(v2 + *(v126 + 44));
  v34 = *(v2 + 24);
  v35 = *(v2 + 56);
  v134 = *(v2 + 40);
  v135[0] = v35;
  *(v135 + 10) = *(v2 + 66);
  v132 = *(v2 + 8);
  v133 = v34;
  sub_48164();
  v148[0] = v129;
  v148[1] = v130;
  v149[0] = v131[0];
  *(v149 + 10) = *(v131 + 10);
  sub_E8EC(v148);
  v36 = 24;
  if (BYTE9(v149[1]))
  {
    v36 = 56;
  }

  v37 = *(v2 + *(v32 + 40) + v36);
  v38 = *(v2 + 24);
  v39 = *(v2 + 56);
  v134 = *(v2 + 40);
  v135[0] = v39;
  *(v135 + 10) = *(v2 + 66);
  v132 = *(v2 + 8);
  v133 = v38;
  sub_48164();
  v146[0] = v129;
  v146[1] = v130;
  v147[0] = v131[0];
  *(v147 + 10) = *(v131 + 10);
  sub_E8EC(v146);
  v40 = 40;
  v41 = 72;
  if (BYTE9(v147[1]))
  {
    v40 = 72;
  }

  v42 = v33 - v37 - *(v2 + *(v32 + 40) + v40);
  v43 = sub_47C14();
  v44 = v125;
  *v125 = v43;
  v44[1] = 0;
  *(v44 + 16) = 1;
  v45 = sub_54A4(&qword_638C8, &qword_4C8A8);
  sub_2F120(v2, v104, v31 & 1, v44 + *(v45 + 44), v42);
  KeyPath = swift_getKeyPath();
  v47 = (v44 + *(v105 + 36));
  v48 = *(sub_54A4(&qword_63890, &qword_4C860) + 28);
  v49 = enum case for LayoutDirection.leftToRight(_:);
  v50 = sub_47A04();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = KeyPath;
  v51 = *(v2 + 24);
  v52 = *(v2 + 56);
  v134 = *(v2 + 40);
  v135[0] = v52;
  *(v135 + 10) = *(v2 + 66);
  v132 = *(v2 + 8);
  v133 = v51;
  sub_48164();
  v144[0] = v129;
  v144[1] = v130;
  v145[0] = v131[0];
  *(v145 + 10) = *(v131 + 10);
  sub_E8EC(v144);
  if (BYTE9(v145[1]))
  {
    v53 = 64;
    v54 = 48;
    v55 = 56;
  }

  else
  {
    v41 = 40;
    v53 = 32;
    v55 = 24;
    v54 = 16;
  }

  v56 = v2 + *(v126 + 40);
  v57 = *(v56 + v41);
  v58 = *(v56 + v53);
  v59 = *(v56 + v55);
  v60 = *(v56 + v54);
  v61 = sub_47E54();
  v62 = v108;
  sub_E940(v125, v108, &qword_63870, &qword_4C850);
  v63 = v62 + *(v106 + 36);
  *v63 = v61;
  *(v63 + 8) = v60;
  *(v63 + 16) = v59;
  *(v63 + 24) = v58;
  *(v63 + 32) = v57;
  *(v63 + 40) = 0;
  v64 = *(v2 + 24);
  v65 = *(v2 + 56);
  v134 = *(v2 + 40);
  v135[0] = v65;
  *(v135 + 10) = *(v2 + 66);
  v132 = *(v2 + 8);
  v133 = v64;
  sub_48164();
  v142[0] = v129;
  v142[1] = v130;
  v143[0] = v131[0];
  *(v143 + 10) = *(v131 + 10);
  sub_E8EC(v142);
  sub_482A4();
  sub_47A94();
  v66 = v62;
  v67 = v110;
  sub_E940(v66, v110, &qword_63860, &qword_4C848);
  v68 = (v67 + *(v107 + 36));
  v69 = v156;
  v68[4] = v155;
  v68[5] = v69;
  v68[6] = v157;
  v70 = v152;
  *v68 = v151;
  v68[1] = v70;
  v71 = v154;
  v68[2] = v153;
  v68[3] = v71;
  v72 = *(v2 + 24);
  v73 = *(v2 + 56);
  v134 = *(v2 + 40);
  v135[0] = v73;
  *(v135 + 10) = *(v2 + 66);
  v132 = *(v2 + 8);
  v133 = v72;
  sub_48164();
  v140[0] = v129;
  v140[1] = v130;
  v141[0] = v131[0];
  *(v141 + 10) = *(v131 + 10);
  sub_E8EC(v140);
  if ((BYTE9(v141[1]) & 1) == 0)
  {
    v74 = *(v2 + 24);
    v75 = *(v2 + 56);
    v134 = *(v2 + 40);
    v135[0] = v75;
    *(v135 + 10) = *(v2 + 66);
    v132 = *(v2 + 8);
    v133 = v74;
    sub_48164();
    v76 = v130;

    sub_E8EC(&v129);
    sub_3021C(v76, *(&v76 + 1));
  }

  sub_2CC80();
  sub_47C04();
  sub_47904();
  v77 = v114;
  sub_E940(v67, v114, &qword_63850, &qword_4C840);
  v78 = (v77 + *(v109 + 36));
  v79 = v159;
  *v78 = v158;
  v78[1] = v79;
  v78[2] = v160;
  v80 = sub_3055C();
  swift_getKeyPath();
  *&v132 = v19;
  sub_475C4();

  v81 = *(v19 + 98);
  v82 = *(v19 + 152);
  if (qword_61CE8 != -1)
  {
    swift_once();
  }

  v131[4] = xmmword_64318;
  v131[5] = xmmword_64328;
  v131[6] = xmmword_64338;
  v131[0] = xmmword_642D8;
  v131[1] = xmmword_642E8;
  v131[2] = xmmword_642F8;
  v131[3] = xmmword_64308;
  v129 = xmmword_642B8;
  v130 = xmmword_642C8;
  v137 = xmmword_64318;
  v138 = xmmword_64328;
  v139 = xmmword_64338;
  v134 = xmmword_642D8;
  v135[0] = xmmword_642E8;
  v135[1] = xmmword_642F8;
  v136 = xmmword_64308;
  v132 = xmmword_642B8;
  v133 = xmmword_642C8;
  v83 = v77;
  v84 = v116;
  sub_E940(v83, v116, &qword_63840, &qword_4C838);
  v85 = v84 + *(v113 + 36);
  v86 = v138;
  *(v85 + 96) = v137;
  *(v85 + 112) = v86;
  *(v85 + 128) = v139;
  v87 = v135[0];
  *(v85 + 32) = v134;
  *(v85 + 48) = v87;
  v88 = v136;
  *(v85 + 64) = v135[1];
  *(v85 + 80) = v88;
  v89 = v133;
  *v85 = v132;
  *(v85 + 16) = v89;
  *(v85 + 144) = v80;
  *(v85 + 152) = v81;
  *(v85 + 153) = v82;
  v90 = *(v2 + *(v126 + 40) + 112);
  swift_getKeyPath();
  v128[18] = v19;
  sub_E9E8(&v129, v128);
  sub_475C4();

  if (*(v19 + 98))
  {
    v91 = 1.0;
  }

  else
  {
    v91 = 0.0;
  }

  v92 = sub_47E54();
  v93 = v84;
  v94 = v117;
  sub_E940(v93, v117, &qword_63830, &qword_4C830);
  v95 = v94 + *(v115 + 36);
  *v95 = v90;
  *(v95 + 8) = v91;
  *(v95 + 12) = v92;

  sub_47924();
  sub_48324();
  sub_47934();
  v96 = sub_47944();

  v97 = v94;
  v98 = v119;
  sub_E940(v97, v119, &qword_63820, &qword_4C828);
  *(v98 + *(v118 + 36)) = v96;
  v99 = v122;
  sub_31EE4(v2, v122, _s18PollOptionCellViewVMa);
  v100 = (*(v120 + 80) + 16) & ~*(v120 + 80);
  v101 = swift_allocObject();
  sub_32284(v99, v101 + v100, _s18PollOptionCellViewVMa);
  sub_319DC();
  sub_47F74();

  return sub_60C8(v98, &qword_63808, &qword_4C820);
}

void sub_2DBF0(double *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  swift_getKeyPath();
  *&v43 = v4;
  sub_31810(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  if (*(v4 + 98) == 1 && (swift_getKeyPath(), *&v43 = v4, sub_475C4(), , *(v4 + 97) == 1) && (v5 = [objc_opt_self() sharedBehaviors]) != 0)
  {
    v41 = v5;
    swift_getKeyPath();
    *&v43 = v4;
    sub_475C4();

    swift_beginAccess();
    v6 = *(v4 + 200);
    if (v6[2])
    {
      v7 = v6[4];
      v8 = v6[5];
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v20 = *(v1 + 3);
    v21 = *(v1 + 7);
    v45 = *(v1 + 5);
    v46[0] = v21;
    *(v46 + 10) = *(v1 + 66);
    v43 = *(v1 + 1);
    v44 = v20;
    sub_54A4(&qword_624C8, &unk_4AF90);
    sub_48164();
    v23 = v47[0];
    v22 = v47[1];

    sub_E8EC(v47);
    if (v8)
    {
      if (v7 != v23 || v8 != v22)
      {
        sub_48874();
      }
    }

    swift_getKeyPath();
    *&v43 = v4;
    sub_475C4();

    v24 = *(v4 + 200);
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = v24 + (v25 << 6);
      v28 = *(v26 - 32);
      v27 = *(v26 - 24);
    }

    else
    {
      v28 = 0;
      v27 = 0;
    }

    v29 = *(v2 + 3);
    v30 = *(v2 + 7);
    v45 = *(v2 + 5);
    v46[0] = v30;
    *(v46 + 10) = *(v2 + 66);
    v43 = *(v2 + 1);
    v44 = v29;
    sub_48164();
    v32 = v42[0];
    v31 = v42[1];

    sub_E8EC(v42);
    if (v27)
    {
      if (v28 == v32 && v27 == v31)
      {

        v33 = v41;
        [v41 pollsEntryViewCornerRadius];
      }

      else
      {
        sub_48874();

        v33 = v41;
        [v41 pollsEntryViewCornerRadius];
      }
    }

    else
    {

      v33 = v41;
      [v41 pollsEntryViewCornerRadius];
    }

    v34 = *(sub_47CF4() + 20);
    v35 = enum case for RoundedCornerStyle.continuous(_:);
    v36 = sub_47C24();
    (*(*(v36 - 8) + 104))(a1 + v34, v35, v36);
    sub_47CD4();
    v10 = v37;
    v12 = v38;
    v14 = v39;
    v16 = v40;
  }

  else
  {
    sub_47CD4();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = *(sub_47CF4() + 20);
    v18 = enum case for RoundedCornerStyle.continuous(_:);
    v19 = sub_47C24();
    (*(*(v19 - 8) + 104))(a1 + v17, v18, v19);
  }

  *a1 = v10;
  *(a1 + 1) = v12;
  *(a1 + 2) = v14;
  *(a1 + 3) = v16;
}

uint64_t sub_2E0A4()
{
  v1 = type metadata accessor for ViewModelPollVote(0);
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1 - 8, v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = (&v29 - v8);
  v10 = *v0;
  swift_getKeyPath();
  *&v33 = v10;
  sub_31810(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  swift_beginAccess();
  v11 = *(v10 + 72);
  v12 = *(v0 + 3);
  v13 = *(v0 + 7);
  v35 = *(v0 + 5);
  v36[0] = v13;
  *(v36 + 10) = *(v0 + 66);
  v33 = *(v0 + 1);
  v34 = v12;

  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v14 = v39;
  v32 = v38;

  sub_E8EC(v37);
  v15 = *(v11 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = _swiftEmptyArrayStorage;
    v31 = v6;
    v30 = v14;
    while (v16 < *(v11 + 16))
    {
      v18 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v19 = *(v2 + 72);
      sub_31EE4(v11 + v18 + v19 * v16, v9, type metadata accessor for ViewModelPollVote);
      v20 = v9[1];
      if (v20 && (*v9 == v32 ? (v21 = v20 == v14) : (v21 = 0), v21 || (sub_48874() & 1) != 0))
      {
        sub_32284(v9, v6, type metadata accessor for ViewModelPollVote);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v33 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21FD8(0, v17[2] + 1, 1);
          v17 = v33;
        }

        v24 = v17[2];
        v23 = v17[3];
        if (v24 >= v23 >> 1)
        {
          sub_21FD8((v23 > 1), v24 + 1, 1);
          v17 = v33;
        }

        v17[2] = v24 + 1;
        v6 = v31;
        sub_32284(v31, v17 + v18 + v24 * v19, type metadata accessor for ViewModelPollVote);
        v14 = v30;
      }

      else
      {
        sub_6C50(v9);
      }

      if (v15 == ++v16)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_19;
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_18:

  v25 = v17[2];

  sub_54A4(&qword_62B50, &qword_4BB60);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_4A9C0;
  *(v26 + 56) = &type metadata for Int;
  *(v26 + 64) = &protocol witness table for Int;
  *(v26 + 32) = v25;
  if (qword_61CD0 != -1)
  {
    goto LABEL_21;
  }

LABEL_19:
  sub_47494();
  v27 = sub_483E4();

  return v27;
}

uint64_t sub_2E4FC()
{
  v1 = type metadata accessor for ViewModelPollVote(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8, v3);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;
  swift_getKeyPath();
  *&v23 = v6;
  sub_31810(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  swift_beginAccess();
  v7 = v6[9];
  v8 = *(v0 + 24);
  v9 = *(v0 + 56);
  v25 = *(v0 + 40);
  v26[0] = v9;
  *(v26 + 10) = *(v0 + 66);
  v23 = *(v0 + 8);
  v24 = v8;

  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v10 = v29;
  v22 = v28;

  sub_E8EC(v27);
  swift_getKeyPath();
  *&v23 = v6;
  sub_475C4();

  v11 = v6[11];
  if (v11 && (v12 = *(v7 + 16)) != 0)
  {
    v13 = v6[10];
    v14 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

    v16 = 0;
    while (v16 < *(v7 + 16))
    {
      sub_31EE4(v14 + *(v2 + 72) * v16, v5, type metadata accessor for ViewModelPollVote);
      v17 = v5[3];
      if (v17 && (v5[2] == v13 ? (v18 = v17 == v11) : (v18 = 0), (v18 || (sub_48874() & 1) != 0) && (v19 = v5[1]) != 0))
      {
        if (*v5 == v22 && v19 == v10)
        {
          sub_6C50(v5);
LABEL_23:

          return 1;
        }

        v20 = sub_48874();
        result = sub_6C50(v5);
        if (v20)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = sub_6C50(v5);
      }

      if (v12 == ++v16)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return 0;
  }

  return result;
}

uint64_t sub_2E814()
{
  v1 = type metadata accessor for ViewModelPollVote(0);
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1 - 8, v3);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v4, v7);
  v10 = v52 - v9;
  __chkstk_darwin(v8, v11);
  v13 = (v52 - v12);
  v14 = *v0;
  swift_getKeyPath();
  *&v59 = v14;
  sub_31810(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  swift_beginAccess();
  v15 = *(v14 + 72);
  v16 = *(v0 + 3);
  v17 = *(v0 + 7);
  v61 = *(v0 + 5);
  v62[0] = v17;
  *(v62 + 10) = *(v0 + 66);
  v59 = *(v0 + 1);
  v60 = v16;

  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v18 = v65;
  v56 = v64;

  sub_E8EC(v63);
  v57 = *(v15 + 16);
  if (v57)
  {
    v19 = 0;
    v20 = _swiftEmptyArrayStorage;
    v55 = v6;
    v54 = v18;
    while (v19 < *(v15 + 16))
    {
      v21 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v22 = *(v2 + 72);
      sub_31EE4(v15 + v21 + v22 * v19, v13, type metadata accessor for ViewModelPollVote);
      v23 = v13[1];
      if (v23 && (*v13 == v56 ? (v24 = v23 == v18) : (v24 = 0), v24 || (sub_48874() & 1) != 0))
      {
        sub_32284(v13, v6, type metadata accessor for ViewModelPollVote);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v59 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21FD8(0, v20[2] + 1, 1);
          v20 = v59;
        }

        v27 = v20[2];
        v26 = v20[3];
        if (v27 >= v26 >> 1)
        {
          sub_21FD8((v26 > 1), v27 + 1, 1);
          v20 = v59;
        }

        v20[2] = v27 + 1;
        v6 = v55;
        sub_32284(v55, v20 + v21 + v27 * v22, type metadata accessor for ViewModelPollVote);
        v18 = v54;
      }

      else
      {
        sub_6C50(v13);
      }

      if (v57 == ++v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_18:

  v28 = v20[2];
  if (v28)
  {
    v29 = v20 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v30 = *(v2 + 72);
    v31 = _swiftEmptyArrayStorage;
    do
    {
      sub_31EE4(v29, v10, type metadata accessor for ViewModelPollVote);
      v34 = *(v10 + 2);
      v33 = *(v10 + 3);

      sub_6C50(v10);
      if (v33)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_10C50(0, *(v31 + 2) + 1, 1, v31);
        }

        v36 = *(v31 + 2);
        v35 = *(v31 + 3);
        if (v36 >= v35 >> 1)
        {
          v31 = sub_10C50((v35 > 1), v36 + 1, 1, v31);
        }

        *(v31 + 2) = v36 + 1;
        v32 = &v31[16 * v36];
        *(v32 + 4) = v34;
        *(v32 + 5) = v33;
      }

      v29 += v30;
      --v28;
    }

    while (v28);

    if (*(v31 + 2))
    {
      goto LABEL_28;
    }
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_28:
      v58 = v31;
      v55 = sub_54A4(&qword_637B8, &qword_4C7B0);
      v57 = v52;
      v56 = *(v55 - 1);
      __chkstk_darwin(v55, v37);
      v53 = v52 - v38;
      v39 = sub_54A4(&qword_637C0, &qword_4C7B8);
      v54 = v52;
      v40 = *(v39 - 8);
      __chkstk_darwin(v39, v41);
      v43 = v52 - v42;
      (*(v40 + 104))(v52 - v42, enum case for ListFormatStyle.ListType.and<A, B>(_:), v39);
      v44 = sub_54A4(&qword_637C8, &unk_4C7C0);
      v52[1] = v52;
      v45 = *(v44 - 8);
      __chkstk_darwin(v44, v46);
      v48 = v52 - v47;
      (*(v45 + 104))(v52 - v47, enum case for ListFormatStyle.Width.narrow<A, B>(_:), v44);
      sub_54A4(&qword_62690, &qword_4B280);
      sub_EAF0(&qword_637D0, &qword_62690, &qword_4B280, &protocol conformance descriptor for [A]);
      v49 = v53;
      sub_47354();
      (*(v45 + 8))(v48, v44);
      (*(v40 + 8))(v43, v39);
      sub_318B4();
      v50 = v55;
      sub_48514();
      (*(v56 + 8))(v49, v50);

      return v59;
    }
  }

  if (qword_61CD0 != -1)
  {
LABEL_33:
    swift_once();
  }

  return sub_47494();
}