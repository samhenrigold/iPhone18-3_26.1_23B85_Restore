void (*sub_100260094(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1002600F8;
}

void sub_1002600F8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_10025F6F0();
  }
}

void sub_10026012C()
{
  v1 = v0;
  v100 = sub_1004BCC74();
  v109 = *(v100 - 8);
  __chkstk_darwin();
  v116 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003ABC(&qword_100608F98, &qword_1004D7848);
  v118 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v93 - v4;
  v111 = sub_100003ABC(&qword_100608FA0, &qword_1004D7850);
  v110 = *(v111 - 8);
  __chkstk_darwin();
  v108 = &v93 - v6;
  v114 = sub_100003ABC(&qword_100608FA8, &qword_1004D7858);
  v113 = *(v114 - 8);
  __chkstk_darwin();
  v112 = &v93 - v7;
  v102 = sub_100003ABC(&qword_100608FB0, &qword_1004D7860);
  v101 = *(v102 - 8);
  __chkstk_darwin();
  v95 = &v93 - v8;
  v9 = sub_100003ABC(&qword_100608FB8, &qword_1004D7868);
  v103 = *(v9 - 8);
  __chkstk_darwin();
  v99 = &v93 - v10;
  v11 = sub_100003ABC(&qword_100608FC0, &qword_1004D7870);
  v106 = *(v11 - 8);
  __chkstk_darwin();
  v105 = &v93 - v12;
  sub_100003ABC(&qword_1006026C0, &qword_1004CB378);
  __chkstk_darwin();
  v115 = &v93 - v13;
  v14 = sub_100003ABC(&qword_1006065D0, &qword_1004D3730);
  v126 = *(v14 - 8);
  __chkstk_darwin();
  v125 = &v93 - v15;
  v120 = sub_100003ABC(&qword_100608FC8, &qword_1004D7878);
  v96 = *(v120 - 1);
  __chkstk_darwin();
  v94 = &v93 - v16;
  v122 = sub_100003ABC(&unk_100608FD0, &unk_1004D7880);
  v98 = *(v122 - 8);
  __chkstk_darwin();
  v97 = &v93 - v17;
  sub_100003ABC(&qword_1006087D8, &qword_1004D72E8);
  __chkstk_darwin();
  v19 = &v93 - v18;
  if (qword_100600120 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v20 = sub_1004B80B4();
    sub_100007084(v20, static Logger.groupActivities);

    v21 = sub_1004B8094();
    v22 = sub_1004BC9A4();

    v23 = os_log_type_enabled(v21, v22);
    v119 = v3;
    v117 = v5;
    v107 = v11;
    v104 = v9;
    v127 = v14;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v131[0] = v25;
      *v24 = 136446210;
      v129[0] = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);

      sub_100003ABC(&unk_100609038, &unk_1004D7890);
      v26 = sub_1004BBF34();
      v28 = sub_100012018(v26, v27, v131);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "📲 Receiving a new session=%{public}s", v24, 0xCu);
      sub_100004C6C(v25);
    }

    v128 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);
    if (v128)
    {
      break;
    }

    v75 = type metadata accessor for GroupActivitiesManager.Activity(0);
    (*(*(v75 - 8) + 56))(v19, 1, 1, v75);
    v76 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    sub_10003F42C(v19, v1 + v76, &qword_1006087D8, &qword_1004D72E8);
    swift_endAccess();
    sub_10025F6F0();
    sub_100007214(v19, &qword_1006087D8, &qword_1004D72E8);
    v77 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions;
    swift_beginAccess();
    v3 = *(v1 + v77);
    if ((v3 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_1004BD324();
      sub_1004B84F4();
      sub_10026ACA4(&qword_1006012E8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      sub_1004BC6A4();
      v19 = v131[0];
      v5 = v131[1];
      v78 = v131[2];
      v9 = v131[3];
      v11 = v131[4];
    }

    else
    {
      v79 = -1 << *(v3 + 32);
      v5 = (v3 + 56);
      v78 = ~v79;
      v80 = -v79;
      if (v80 < 64)
      {
        v81 = ~(-1 << v80);
      }

      else
      {
        v81 = -1;
      }

      v11 = v81 & *(v3 + 56);
      swift_bridgeObjectRetain_n();
      v9 = 0;
      v19 = v3;
    }

    v128 = v78;
    for (i = (v78 + 64) >> 6; v19 < 0; v11 = v85)
    {
      v87 = sub_1004BD354();
      if (!v87)
      {
        goto LABEL_27;
      }

      v129[4] = v87;
      sub_1004B84F4();
      swift_dynamicCast();
      v14 = v9;
      v85 = v11;
      if (!v130)
      {
        goto LABEL_27;
      }

LABEL_25:
      sub_1004B84E4();

      v9 = v14;
    }

    v83 = v9;
    v84 = v11;
    v14 = v9;
    if (v11)
    {
LABEL_21:
      v85 = (v84 - 1) & v84;
      v86 = *(*(v19 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v84)))));

      if (v86)
      {
        goto LABEL_25;
      }

LABEL_27:
      sub_1001A43F8(v19);

      *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = 0;

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004B85A4();

      v88 = v130;
      swift_getKeyPath();
      swift_getKeyPath();
      v130 = 0;

      sub_1004B85B4();
      sub_100257924(v88);
      v89 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      *(v1 + v89) = 0;
      v90 = v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
      v91 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
      v92 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
      *v90 = xmmword_1004C5080;
      *(v90 + 16) = 0;
      sub_10026B368(v91, v92);
      return;
    }

    while (1)
    {
      v14 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      if (v14 >= i)
      {
        goto LABEL_27;
      }

      v84 = *&v5[8 * v14];
      ++v83;
      if (v84)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  sub_1004B74C4();
  v29 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v30 = *(v29 - 8);
  (*(v30 + 56))(v19, 0, 1, v29);
  v31 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
  swift_beginAccess();
  sub_10003F42C(v19, v1 + v31, &qword_1006087D8, &qword_1004D72E8);
  swift_endAccess();
  sub_10025F6F0();
  sub_100007214(v19, &qword_1006087D8, &qword_1004D72E8);
  v32 = sub_100260094(v129);
  v34 = v33;
  if (!(*(v30 + 48))(v33, 1, v29))
  {
    swift_beginAccess();
    sub_10001342C(v1 + 16, v131);
    sub_100047A5C(v131, v34, &qword_1006086B8, &qword_1004D70A8);
  }

  v32(v129, 0);
  v35 = v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  v36 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
  v37 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
  *v35 = xmmword_1004C5080;
  *(v35 + 16) = 0;
  sub_10026B368(v36, v37);
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100003ABC(&qword_1006066D0, &unk_1004CD5D8);
  v38 = v125;
  sub_1004B8574();
  swift_endAccess();
  v121 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_1000206D4(&unk_1006066D8, &qword_1006065D0, &qword_1004D3730, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10026D0B0();
  v39 = v94;
  v40 = v127;
  sub_1004B8634();
  (*(v126 + 8))(v38, v40);
  v127 = sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  v41 = sub_1004BCB44();
  v131[0] = v41;
  v42 = sub_1004BCB24();
  v43 = *(v42 - 8);
  v123 = *(v43 + 56);
  v125 = (v43 + 56);
  v44 = v115;
  v124 = v42;
  v123(v115, 1, 1, v42);
  sub_1000206D4(&unk_100608FE8, &qword_100608FC8, &qword_1004D7878, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v45 = sub_100212C10();
  v46 = v97;
  v47 = v120;
  v126 = v45;
  sub_1004B8614();
  sub_100007214(v44, &qword_1006026C0, &qword_1004CB378);

  (*(v96 + 8))(v39, v47);
  swift_allocObject();
  swift_weakInit();
  v120 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_1000206D4(&qword_100608FF8, &unk_100608FD0, &unk_1004D7880, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v48 = v122;
  sub_1004B8644();

  (*(v98 + 8))(v46, v48);
  v49 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions;
  swift_beginAccess();
  sub_1004B84D4();
  swift_endAccess();

  v50 = v95;
  sub_1004B7454();
  v51 = sub_1004BCB44();
  v131[0] = v51;
  v123(v44, 1, 1, v42);
  sub_1000206D4(&qword_100609000, &qword_100608FB0, &qword_1004D7860, v121);
  v52 = v99;
  v53 = v102;
  sub_1004B8614();
  sub_100007214(v44, &qword_1006026C0, &qword_1004CB378);

  (*(v101 + 8))(v50, v53);
  sub_1000206D4(&qword_100609008, &qword_100608FB8, &qword_1004D7868, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v54 = v105;
  v55 = v104;
  sub_1004B85F4();
  (*(v103 + 8))(v52, v55);
  swift_allocObject();
  swift_weakInit();
  sub_1000206D4(&qword_100609010, &qword_100608FC0, &qword_1004D7870, &protocol conformance descriptor for Publishers.Map<A, B>);
  v56 = v107;
  sub_1004B8644();

  (*(v106 + 8))(v54, v56);
  v122 = v49;
  swift_beginAccess();
  sub_1004B84D4();
  swift_endAccess();

  v57 = v128;
  v58 = v108;
  sub_1004B74A4();
  v59 = sub_1004BCB44();
  v131[0] = v59;
  v60 = v123;
  v123(v44, 1, 1, v124);
  sub_1000206D4(&qword_100609018, &qword_100608FA0, &qword_1004D7850, v121);
  v61 = v112;
  v62 = v111;
  sub_1004B8614();
  sub_100007214(v44, &qword_1006026C0, &qword_1004CB378);

  (*(v110 + 8))(v58, v62);
  v63 = swift_allocObject();
  swift_weakInit();
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v57;
  sub_1000206D4(&unk_100609020, &qword_100608FA8, &qword_1004D7858, v120);

  v65 = v114;
  sub_1004B8644();

  (*(v113 + 8))(v61, v65);
  swift_beginAccess();
  sub_1004B84D4();
  swift_endAccess();

  v121 = objc_opt_self();
  v66 = [v121 defaultCenter];
  v67 = v116;
  sub_1004BCC84();

  v68 = sub_1004BCB44();
  v131[0] = v68;
  v60(v44, 1, 1, v124);
  v114 = sub_10026ACA4(&qword_100605690, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v69 = v117;
  v70 = v100;
  sub_1004B8614();
  sub_100007214(v44, &qword_1006026C0, &qword_1004CB378);

  v113 = *(v109 + 8);
  (v113)(v67, v70);
  swift_allocObject();
  swift_weakInit();
  v120 = sub_1000206D4(&qword_100609030, &qword_100608F98, &qword_1004D7848, v120);
  v71 = v119;
  sub_1004B8644();

  v118 = *(v118 + 8);
  (v118)(v69, v71);
  swift_beginAccess();
  sub_1004B84D4();
  swift_endAccess();

  v72 = [v121 defaultCenter];
  v73 = sub_1004BBE24();
  sub_1004BCC84();

  v74 = sub_1004BCB44();
  v131[0] = v74;
  v123(v44, 1, 1, v124);
  sub_1004B8614();
  sub_100007214(v44, &qword_1006026C0, &qword_1004CB378);

  (v113)(v67, v70);
  swift_allocObject();
  swift_weakInit();
  sub_1004B8644();

  (v118)(v69, v71);
  swift_beginAccess();
  sub_1004B84D4();
  swift_endAccess();
}

double sub_1002618CC(__int128 *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = a1[5];
    v14 = a1[4];
    v15 = v5;
    v6 = a1[7];
    v16 = a1[6];
    v17 = v6;
    v7 = a1[1];
    v10 = *a1;
    v11 = v7;
    v8 = a1[3];
    v12 = a1[2];
    v13 = v8;
    v9 = &v10;
    CFRange.init(_:)(*(&v3 - 1));
    v18[4] = v14;
    v18[5] = v15;
    v18[6] = v16;
    v18[7] = v17;
    v18[0] = v10;
    v18[1] = v11;
    v18[2] = v12;
    v18[3] = v13;
    sub_10026197C(v18);
  }

  return result;
}

void sub_10026197C(unsigned __int8 *a1)
{
  v106 = *a1;
  v2 = a1[1];
  v104 = a1[2];
  LODWORD(v105) = v2;
  v3 = *(a1 + 2);
  v103 = *(a1 + 1);
  v101 = v3;
  v99 = a1[24];
  v100 = *(a1 + 4);
  v4 = *(a1 + 3);
  v108 = *(a1 + 2);
  v98 = v4;
  v5 = *(a1 + 10);
  v6 = *(a1 + 11);
  v7 = a1[96];
  v8 = *(a1 + 13);
  v9 = a1[112];
  v10 = *(a1 + 15);
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v102 = &v98 - v11;
  v12 = *(a1 + 5);
  v129[4] = *(a1 + 4);
  v129[5] = v12;
  v13 = *(a1 + 7);
  v129[6] = *(a1 + 6);
  v129[7] = v13;
  v14 = *(a1 + 1);
  v129[0] = *a1;
  v129[1] = v14;
  v15 = *(a1 + 3);
  v129[2] = *(a1 + 2);
  v129[3] = v15;
  if (sub_10026D1BC(v129) == 1)
  {
    if (qword_1005FFE10 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v16 = v114;
    v17 = v115;
    v18 = v116;
    v19 = v117;
    v20 = v118;
    v21 = v119;
    v23 = v121;
    v22 = v122;
    v24 = v120;
    v25 = v123;
    v6 = v124;
    v7 = v125;
    v8 = v126;
    v9 = v127;
    v10 = v128;
  }

  else
  {
    v16 = v106;
    v24 = v108;
    v18 = v104;
    v17 = v105;
    v19 = v103;
    v20 = v101;
    v21 = v99;
    v22 = v100;
    v25 = v5;
    v23 = v98;
  }

  v108 = v24;
  v26 = v16;
  LODWORD(v101) = v16 & 1;
  v114 = v16 & 1;
  v115 = v17 & 1;
  v116 = v18 & 1;
  v117 = v19;
  v118 = v20;
  v106 = v21 & 1;
  v119 = v21 & 1;
  v120 = v24;
  v121 = v23;
  v122 = v22;
  v123 = v25;
  v124 = v6;
  v125 = v7;
  v126 = v8;
  v127 = v9;
  v128 = v10;
  v27 = 256;
  if (v21)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  sub_1000F2B70(&v114, &v110);
  sub_10000F778(a1, &v110, &qword_100609048, &qword_1004D78A0);
  v29 = v108;
  v30 = sub_1000FE42C(0, v108);
  LODWORD(v29) = sub_1000FE42C(2u, v29);
  v31 = v6;
  sub_100051DEC(&v114);
  v32 = v30;
  v33 = v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  v34 = *(v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
  v35 = *(v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
  v36 = *(v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 16);
  v104 = v29;
  if ((v29 & 1) == 0)
  {
    v27 = 0;
  }

  v37 = v27 & 0xFFFFFFFFFFFFFFFELL | v32 & 1;
  v38 = v28 & 0xFFFE | v26 & 1;
  v103 = v32;
  if (v35 == 1)
  {
    v39 = v31;
    sub_10026B368(v34, 1);
    sub_10026B368(v37, v6);
    goto LABEL_22;
  }

  if ((v32 & 1) != (v34 & 1) || ((v104 ^ ((v34 & 0x100) == 0)) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!v35)
  {
    if (!v6)
    {
      if ((v101 ^ v36))
      {
        goto LABEL_22;
      }

      v42 = v36 & 0x100;
      goto LABEL_56;
    }

LABEL_21:
    v43 = v31;
    goto LABEL_22;
  }

  if (!v6 || (LODWORD(v108) = v36, v105 = sub_100009130(0, &qword_100603568, ICMusicSubscriptionStatus_ptr), v40 = v31, sub_10026D4D8(v34, v35), v41 = sub_1004BCFA4(), v40, sub_10026B368(v34, v35), (v41 & 1) == 0) || ((v101 ^ v108) & 1) != 0)
  {
LABEL_22:
    v44 = *v33;
    v45 = *(v33 + 8);
    *v33 = v37;
    *(v33 + 8) = v6;
    *(v33 + 16) = v38;
    sub_10026B368(v44, v45);
    if (qword_100600120 != -1)
    {
      swift_once();
    }

    v105 = v6;
    v46 = sub_1004B80B4();
    sub_100007084(v46, static Logger.groupActivities);
    v47 = v31;
    v48 = sub_1004B8094();
    v49 = sub_1004BC9A4();
    *&v108 = v47;

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v109 = v51;
      *v50 = 136446210;
      LOBYTE(v110) = v103 & 1;
      HIBYTE(v110) = v104 & 1;
      v111 = v105;
      v112 = v101;
      v52 = v106;
      v113 = v106;
      v53 = v108;
      v54 = sub_1004BBF34();
      v56 = sub_100012018(v54, v55, &v109);

      *(v50 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "🛂 Checking eligibility with context=%{public}s", v50, 0xCu);
      sub_100004C6C(v51);

      if ((v52 & 1) == 0)
      {
LABEL_26:
        v57 = sub_1004B8094();
        v58 = sub_1004BC9A4();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&_mh_execute_header, v57, v58, "🛂 User did not accept GDPR", v59, 2u);
        }

        v60 = sub_1004BC4B4();
        v61 = v102;
        (*(*(v60 - 8) + 56))(v102, 1, 1, v60);
        sub_1004BC474();
        v62 = sub_1004BC464();
        v63 = swift_allocObject();
        *(v63 + 16) = v62;
        *(v63 + 24) = &protocol witness table for MainActor;
        sub_1000FDFC8(0, 0, v61, &unk_1004D78B0, v63);
        goto LABEL_52;
      }
    }

    else
    {

      v52 = v106;
      if ((v106 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v64 = v105;
    if (!v105 || ([v108 capabilities] & 1) == 0)
    {
      if (v103)
      {
        if (v104)
        {
          if (v101)
          {
            if (v64)
            {
              v65 = v108;
              if (([v65 capabilities] & 1) == 0)
              {
                v66 = sub_1004B8094();
                v67 = sub_1004BC9A4();
                if (os_log_type_enabled(v66, v67))
                {
                  v68 = swift_slowAlloc();
                  *v68 = 0;
                  _os_log_impl(&_mh_execute_header, v66, v67, "🛂 User is not a subscriber -> up sell", v68, 2u);
                }

                v69 = sub_1004BC4B4();
                v70 = v102;
                (*(*(v69 - 8) + 56))(v102, 1, 1, v69);
                v71 = swift_allocObject();
                v71[2] = 0;
                v71[3] = 0;
                v71[4] = v107;

                sub_1000FD6BC(0, 0, v70, &unk_1004D78D0, v71);
                sub_100051DEC(&v114);

                goto LABEL_53;
              }

              v64 = v105;
            }

            v91 = v108;
            v88 = sub_1004B8094();
            v92 = sub_1004BC9A4();

            if (!os_log_type_enabled(v88, v92))
            {
              sub_100051DEC(&v114);

              goto LABEL_67;
            }

            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v109 = v94;
            *v93 = 136446210;
            v110 = 257;
            v111 = v64;
            v112 = v101;
            v113 = v52;
            v31 = v91;
            v95 = sub_1004BBF34();
            v97 = sub_100012018(v95, v96, &v109);

            *(v93 + 4) = v97;
            _os_log_impl(&_mh_execute_header, v88, v92, "🛂 Unknown prepare case with=%{public}s", v93, 0xCu);
            sub_100004C6C(v94);

            goto LABEL_64;
          }

          v83 = sub_1004B8094();
          v84 = sub_1004BC9A4();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&_mh_execute_header, v83, v84, "🛂 User is not signed in -> request authentication", v85, 2u);
          }

          v86 = sub_1004BC4B4();
          v77 = v102;
          (*(*(v86 - 8) + 56))(v102, 1, 1, v86);
          v78 = swift_allocObject();
          v78[2] = 0;
          v78[3] = 0;
          v78[4] = v107;

          v79 = &unk_1004D78C0;
LABEL_51:
          sub_1000FD6BC(0, 0, v77, v79, v78);
LABEL_52:
          sub_100051DEC(&v114);

LABEL_53:

          return;
        }

        v80 = sub_1004B8094();
        v81 = sub_1004BC9A4();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&_mh_execute_header, v80, v81, "🛂 Apple Music content disabled", v82, 2u);
        }

        v75 = 1;
      }

      else
      {
        v72 = sub_1004B8094();
        v73 = sub_1004BC9A4();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v72, v73, "🛂 Music services restricted", v74, 2u);
        }

        v75 = 0;
      }

      sub_100266B40(v75);
      sub_100051DEC(&v114);

      return;
    }

    v76 = sub_1004BC4B4();
    v77 = v102;
    (*(*(v76 - 8) + 56))(v102, 1, 1, v76);
    v78 = swift_allocObject();
    v78[2] = 0;
    v78[3] = 0;
    v78[4] = v107;

    v79 = &unk_1004D78E0;
    goto LABEL_51;
  }

  v42 = v108 & 0x100;
LABEL_56:
  if ((v106 ^ (v42 >> 8)))
  {
    goto LABEL_22;
  }

  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v87 = sub_1004B80B4();
  sub_100007084(v87, static Logger.groupActivities);
  v88 = sub_1004B8094();
  v89 = sub_1004BC9A4();
  if (!os_log_type_enabled(v88, v89))
  {
    goto LABEL_65;
  }

  v90 = swift_slowAlloc();
  *v90 = 0;
  _os_log_impl(&_mh_execute_header, v88, v89, "Eligibility context didn't change.", v90, 2u);
LABEL_64:

LABEL_65:
  sub_100051DEC(&v114);

LABEL_67:
}

double sub_1002625E4(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_1004B85B4();
    sub_100257924(v3);
  }

  return result;
}

uint64_t sub_1002626DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v5 = sub_1004B8044();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin();
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004B7FF4();
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin();
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003ABC(&qword_100608698, &qword_1004D7080);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v63 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v13 = &v55 - v12;
  __chkstk_darwin();
  v15 = &v55 - v14;
  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v16 = sub_1004B80B4();
  sub_100007084(v16, static Logger.groupActivities);
  v17 = *(v10 + 16);
  v66 = a1;
  v18 = a1;
  v19 = v17;
  v17(v15, v18, v9);
  v20 = sub_1004B8094();
  v21 = sub_1004BC9A4();
  v22 = os_log_type_enabled(v20, v21);
  v64 = v10;
  v62 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v55 = a2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v26 = v19;
    v27 = v25;
    *&v75[0] = v25;
    *v24 = 136446210;
    v26(v13, v15, v9);
    v28 = sub_1004BBF34();
    v29 = v10;
    v31 = v30;
    (*(v29 + 8))(v15, v9);
    v32 = sub_100012018(v28, v31, v75);

    *(v24 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "📥 Session update with state=%{public}s", v24, 0xCu);
    sub_100004C6C(v27);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v34 = v66;
  if (result)
  {
    v35 = result;
    v36 = v63;
    v62(v63, v66, v9);
    v37 = v64;
    v38 = (*(v64 + 88))(v36, v9);
    if (v38 == enum case for GroupSession.State.invalidated<A>(_:))
    {
      (*(v37 + 96))(v36, v9);
      sub_100262E0C(*v36);
    }

    else if (v38 == enum case for GroupSession.State.waiting<A>(_:))
    {
      sub_10026D1A4(&v67);
      v75[4] = v71;
      v75[5] = v72;
      v75[6] = v73;
      v75[7] = v74;
      v75[0] = v67;
      v75[1] = v68;
      v75[2] = v69;
      v75[3] = v70;
      sub_10026197C(v75);
    }

    else
    {
      if (v38 != enum case for GroupSession.State.joined<A>(_:))
      {
        result = sub_1004BD624();
        __break(1u);
        return result;
      }

      v39 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState;
      v40 = v61;
      if (*(v35 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState))
      {
        v41 = qword_100600758;

        if (v41 != -1)
        {
          swift_once();
        }

        v42 = sub_1004B8034();
        sub_100007084(v42, static OSSignposter.sharePlay);
        v43 = sub_1004B8014();
        sub_1004B8054();
        v44 = sub_1004BCC14();
        if (sub_1004BD134())
        {

          v45 = v56;
          sub_1004B8084();

          v47 = v57;
          v46 = v58;
          if ((*(v57 + 88))(v45, v58) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v48 = "[Error] Interval already ended";
          }

          else
          {
            (*(v47 + 8))(v45, v46);
            v48 = "";
          }

          v49 = swift_slowAlloc();
          *v49 = 0;
          v50 = sub_1004B7FD4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, v44, v50, "JoinSession", v48, v49, 2u);

          v34 = v66;
        }

        (*(v59 + 8))(v40, v60);
        *(v35 + v39) = 0;
      }
    }

    sub_100258238();
    swift_beginAccess();
    sub_10001342C(v35 + 16, &v67);
    v51 = *(&v68 + 1);
    v52 = v69;
    sub_100009178(&v67, *(&v68 + 1));
    v53 = v65;
    v54 = sub_1004B7444();
    (*(v52 + 40))(v53, v34, v54 & 1, v51, v52);

    return sub_100004C6C(&v67);
  }

  return result;
}

double sub_100262E0C(uint64_t a1)
{
  v2 = v1;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v4 = &v16 - v3;
  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v5 = sub_1004B80B4();
  sub_100007084(v5, static Logger.groupActivities);
  swift_errorRetain();
  v6 = sub_1004B8094();
  v7 = sub_1004BC9A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_1004BDB04();
    v12 = sub_100012018(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Session invalidated for reason=%{public}s", v8, 0xCu);
    sub_100004C6C(v9);
  }

  v13 = sub_1004BC4B4();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;

  sub_1000FD6BC(0, 0, v4, &unk_1004D7950, v14);

  return result;
}

uint64_t sub_100263060(uint64_t a1, uint64_t a2)
{
  sub_100003ABC(&qword_100603110, &qword_1004CD2B0);
  __chkstk_darwin();
  v3 = v15 - v2;
  v4 = sub_1004B6CD4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004B65E4();
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v15[1] = sub_1004BBE64();
  v15[2] = v10;
  sub_1004BD3A4();
  if (!*(v9 + 16) || (v11 = sub_100034774(v16), (v12 & 1) == 0))
  {

    sub_10003D090(v16);
LABEL_8:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_9;
  }

  sub_100004DE4(*(v9 + 56) + 32 * v11, &v17);
  sub_10003D090(v16);

  if (!*(&v18 + 1))
  {
LABEL_9:
    sub_100007214(&v17, &qword_100605110, &unk_1004CD280);
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_10;
  }

  v13 = swift_dynamicCast();
  (*(v5 + 56))(v3, v13 ^ 1u, 1, v4);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    goto LABEL_12;
  }

LABEL_10:
  sub_1004B6CC4();
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    sub_100007214(v3, &qword_100603110, &qword_1004CD2B0);
  }

LABEL_12:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100263350(v7);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_100263350(void *a1)
{
  v2 = v1;
  v40 = a1;
  sub_100003ABC(&qword_100603110, &qword_1004CD2B0);
  __chkstk_darwin();
  v39 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v39 - v4;
  v6 = sub_1004B6CD4();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin();
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_1006038C0, qword_1004D72F0);
  __chkstk_darwin();
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v39 - v10;
  v12 = type metadata accessor for Signpost(0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  swift_beginAccess();
  sub_10000F778(v2 + v16, v11, &qword_1006038C0, qword_1004D72F0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100007214(v11, &qword_1006038C0, qword_1004D72F0);
  }

  else
  {
    sub_10026A268(v11, v15, type metadata accessor for Signpost);
    Signpost.end(dso:)(&_mh_execute_header);
    sub_10026A624(v15, type metadata accessor for Signpost);
    (*(v13 + 56))(v9, 1, 1, v12);
    swift_beginAccess();
    sub_100047A5C(v9, v2 + v16, &qword_1006038C0, qword_1004D72F0);
    swift_endAccess();
  }

  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  swift_beginAccess();
  sub_10000F778(v2 + v17, v5, &qword_100603110, &qword_1004CD2B0);
  v19 = v42;
  v18 = v43;
  if ((*(v42 + 48))(v5, 1, v43) != 1)
  {
    (*(v19 + 32))(v41, v5, v18);
    sub_1004B6C04();
    v25 = v24;
    if (qword_100600120 != -1)
    {
      swift_once();
    }

    v26 = sub_1004B80B4();
    sub_100007084(v26, static Logger.groupActivities);
    v27 = sub_1004B8094();
    v28 = sub_1004BC9A4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v27, v28, "endMeasuringInitiationTime: %f", v29, 0xCu);
    }

    if (v25 <= 10.0)
    {
      goto LABEL_19;
    }

    v30 = objc_opt_self();
    v31 = sub_100264A20();
    v32 = sub_1004BBE24();
    v33 = sub_1004BBE24();
    v34 = sub_1004BBE24();
    if (*&v25 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        v44 = v25;
        v40 = v34;
        v35 = v31;
        sub_1004BD934();
        v36 = sub_1004BBE24();

        v37 = v40;
        [v30 snapshotWithDomain:v35 type:v32 subType:v33 context:v40 triggerThresholdValues:v36 events:0 completion:0];

LABEL_19:
        (*(v19 + 8))(v41, v18);
        v38 = v39;
        (*(v19 + 56))(v39, 1, 1, v18);
        swift_beginAccess();
        sub_100047A5C(v38, v2 + v17, &qword_100603110, &qword_1004CD2B0);
        swift_endAccess();
        return;
      }

LABEL_22:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_100007214(v5, &qword_100603110, &qword_1004CD2B0);
  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v20 = sub_1004B80B4();
  sub_100007084(v20, static Logger.groupActivities);
  v21 = sub_1004B8094();
  v22 = sub_1004BC984();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Attempting to endMeasuringInitiationTime but there was no begin time.", v23, 2u);
  }
}

double sub_100263A80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100258238();
  }

  return result;
}

uint64_t GroupActivitiesManager.__allocating_init(coordinator:)(void *a1)
{
  v2 = swift_allocObject();
  GroupActivitiesManager.init(coordinator:)(a1);
  return v2;
}

uint64_t GroupActivitiesManager.init(coordinator:)(void *a1)
{
  v2 = v1;
  v35 = a1;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v36 = &v32 - v3;
  v33 = sub_100003ABC(&qword_100608760, &qword_1004D7210);
  v4 = *(v33 - 8);
  __chkstk_darwin();
  v6 = &v32 - v5;
  v7 = sub_100003ABC(&qword_1006051A8, &qword_1004D8F60);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v32 - v9;
  v11 = sub_100003ABC(&qword_100608398, &qword_1004D6D38);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v32 - v13;
  v34 = xmmword_1004C5080;
  *(v1 + 56) = xmmword_1004C5080;
  *(v1 + 96) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  v15 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__participantsCount;
  *&v37 = 0;
  sub_1004B8564();
  (*(v12 + 32))(v2 + v15, v14, v11);
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__isLoading;
  LOBYTE(v37) = 0;
  sub_1004B8564();
  (*(v8 + 32))(v2 + v16, v10, v7);
  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__reaction;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  sub_100003ABC(&qword_100608750, &qword_1004D71C0);
  sub_1004B8564();
  (*(v4 + 32))(v2 + v17, v6, v33);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount) = 0;
  v18 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionStateObserver;
  sub_1004B7334();
  *(v2 + v18) = sub_1004B7324();
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions) = &_swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress) = 0;
  v19 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
  v20 = type metadata accessor for GroupActivitiesManager.Activity(0);
  (*(*(v20 - 8) + 56))(v2 + v19, 1, 1, v20);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState) = 0;
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  v22 = type metadata accessor for Signpost(0);
  (*(*(v22 - 8) + 56))(v2 + v21, 1, 1, v22);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain) = 0;
  v23 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  v24 = sub_1004B6CD4();
  (*(*(v24 - 8) + 56))(v2 + v23, 1, 1, v24);
  v25 = v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  *v25 = v34;
  *(v25 + 16) = 0;
  v26 = v35;
  sub_10001342C(v35, v2 + 16);
  type metadata accessor for GroupActivitiesManager.State(0);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  *(v2 + 88) = v27;
  v28 = sub_1004BC4B4();
  v29 = v36;
  (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v2;

  sub_1000FD6BC(0, 0, v29, &unk_1004D72E0, v30);

  sub_100004C6C(v26);
  return v2;
}

uint64_t sub_100264070()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000136EC;

  return sub_100264100();
}

uint64_t sub_100264100()
{
  v1[5] = v0;
  v2 = sub_100003ABC(&qword_100608F50, &qword_1004D77E0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_100003ABC(&qword_100608F58, &qword_1004D77E8);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = sub_1004BC474();
  v1[13] = sub_1004BC464();
  v5 = sub_1004BC3E4();
  v1[14] = v5;
  v1[15] = v4;

  return _swift_task_switch(sub_10026426C, v5, v4);
}

uint64_t sub_10026426C(uint64_t a1, uint64_t a2)
{
  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  v2[16] = sub_100007084(v3, static Logger.groupActivities);
  v4 = sub_1004B8094();
  v5 = sub_1004BC9A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "🚦 Initiating group session observer", v6, 2u);
  }

  v8 = v2[7];
  v7 = v2[8];
  v9 = v2[6];

  type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_10026ACA4(&qword_1006086A0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  sub_1004B7524();
  sub_1004B74B4();
  (*(v8 + 8))(v7, v9);
  v10 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v2[17] = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
  v2[18] = v10;
  v2[19] = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v2[20] = sub_1004BC464();
  v11 = sub_1000206D4(&qword_100608F60, &qword_100608F58, &qword_1004D77E8, &protocol conformance descriptor for GroupSession<A>.Sessions.Iterator);
  v12 = swift_task_alloc();
  v2[21] = v12;
  *v12 = v2;
  v12[1] = sub_1002644BC;
  v13 = v2[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v13, v11);
}

uint64_t sub_1002644BC()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004BC3E4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100264994;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004BC3E4();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100264654;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100264654()
{

  v0[23] = v0[2];
  v1 = v0[14];
  v2 = v0[15];

  return _swift_task_switch(sub_1002646C0, v1, v2);
}

uint64_t sub_1002646C0()
{
  v16 = v0;
  v1 = v0[23];
  if (v1)
  {
    v2 = v0[5];
    if (*(v2 + v0[17]) == 1)
    {

      v3 = sub_1004B8094();
      v4 = sub_1004BC9A4();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v15 = v6;
        *v5 = 136446210;
        v0[4] = v1;

        sub_100003ABC(&qword_100608F68, &qword_1004D77F0);
        v7 = sub_1004BBF34();
        v9 = sub_100012018(v7, v8, &v15);

        *(v5 + 4) = v9;
        _os_log_impl(&_mh_execute_header, v3, v4, "leaveCommand in progress, setting pendingSession=%{public}s", v5, 0xCu);
        sub_100004C6C(v6);
      }

      *(v0[5] + v0[19]) = v0[23];
    }

    else
    {
      *(v2 + v0[18]) = v1;
      swift_retain_n();

      sub_10026012C();
    }

    v0[20] = sub_1004BC464();
    v12 = sub_1000206D4(&qword_100608F60, &qword_100608F58, &qword_1004D77E8, &protocol conformance descriptor for GroupSession<A>.Sessions.Iterator);
    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = sub_1002644BC;
    v14 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v14, v12);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100264994()
{
  *(v0 + 24) = *(v0 + 176);
  sub_100003ABC(&qword_100604C30, &qword_1004C8490);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

id sub_100264A20()
{
  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain;
  v2 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain);
  }

  else
  {
    v4 = sub_1004BBE24();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100264A90(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a1[17])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  if (a2[17])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_10026A8F8(v2 | *a1, *(a1 + 1), v3 | a1[16], v4 | *a2, *(a2 + 1), v5 | a2[16]);
}

uint64_t sub_100264AF4(uint64_t a1)
{
  v1[2] = a1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v1[3] = swift_task_alloc();
  v2 = sub_1004B6B04();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_1004BC474();
  v1[7] = sub_1004BC464();
  v4 = sub_1004BC3E4();

  return _swift_task_switch(sub_100264C20, v4, v3);
}

uint64_t sub_100264C20()
{

  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v4 = *(v0 + 24);
    sub_1004B6AC4();
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_100007214(*(v0 + 24), &qword_100600DE0, &unk_1004C66D0);
    }

    else
    {
      v6 = *(v0 + 40);
      v5 = *(v0 + 48);
      v7 = *(v0 + 32);
      (*(v6 + 32))(v5, *(v0 + 24), v7);
      sub_1004B6A44(v8);
      v10 = v9;
      sub_10003C58C(_swiftEmptyArrayStorage);
      isa = sub_1004BBC24().super.isa;

      [v1 openSensitiveURL:v10 withOptions:isa];

      (*(v6 + 8))(v5, v7);
    }
  }

  **(v0 + 16) = v1 == 0;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100264DE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001384C;

  return sub_100264E78();
}

uint64_t sub_100264E78()
{
  v1[25] = v0;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  v1[26] = swift_task_alloc();
  sub_100003ABC(&qword_1006026C0, &qword_1004CB378);
  v1[27] = swift_task_alloc();
  v2 = sub_100003ABC(&unk_100609050, &qword_1004D2B10);
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = sub_100003ABC(&qword_100606FF0, &qword_1004D3FE8);
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v4 = sub_1004B7FF4();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = type metadata accessor for GroupActivitiesManager.Activity(0);
  v1[40] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_100608698, &qword_1004D7080);
  v1[41] = v5;
  v1[42] = *(v5 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = sub_1004BC474();
  v1[46] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v1[47] = v7;
  v1[48] = v6;

  return _swift_task_switch(sub_10026516C, v7, v6);
}

id sub_10026516C()
{
  v70 = v0;
  v1 = *(v0 + 200);
  v2 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  *(v0 + 392) = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v3 = *(v1 + v2);
  *(v0 + 400) = v3;
  if (!v3)
  {
    goto LABEL_24;
  }

  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);

  sub_1004B7494();
  *(v0 + 568) = enum case for GroupSession.State.waiting<A>(_:);
  v8 = *(v7 + 104);
  *(v0 + 408) = v8;
  *(v0 + 416) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v5);
  *(v0 + 424) = sub_10026ACA4(&qword_1006086A0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  v9 = sub_1004B7474();
  v10 = *(v7 + 8);
  *(v0 + 432) = v10;
  *(v0 + 440) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v6);
  v10(v4, v6);
  if (v9)
  {
    if (qword_100600120 != -1)
    {
      swift_once();
    }

    v11 = sub_1004B80B4();
    *(v0 + 448) = sub_100007084(v11, static Logger.groupActivities);
    v12 = sub_1004B8094();
    v13 = sub_1004BC9A4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Attempting to join", v14, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v15 = *(v0 + 572);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 573) = 1;

    sub_1004B85B4();
    sub_100257F58(v15);
    if (*(v1 + v2))
    {
      v16 = *(v0 + 320);

      sub_1004B74C4();

      v17 = *(v16 + 48);
      if (v17)
      {
        v18 = *(v0 + 320);
        v19 = *(v17 + 16);
        *(v0 + 456) = v19;
        v20 = v19;
        sub_10026A624(v18, type metadata accessor for GroupActivitiesManager.Activity);
        v21 = objc_allocWithZone(ICLiveLinkIdentity);
        v22 = swift_allocObject();
        *(v22 + 16) = sub_10026D4E8;
        *(v22 + 24) = v3;
        *(v0 + 48) = sub_100124268;
        *(v0 + 56) = v22;
        *(v0 + 16) = _NSConcreteStackBlock;
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_10011FE68;
        *(v0 + 40) = &unk_1005BC448;
        v23 = _Block_copy((v0 + 16));

        v24 = [v21 initWithBlock:v23];
        *(v0 + 464) = v24;
        _Block_release(v23);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
LABEL_42:
          swift_once();
LABEL_36:
          v49 = sub_1004B8034();
          *(v0 + 480) = sub_100007084(v49, static OSSignposter.sharePlay);
          sub_1004B7FE4();
          v50 = sub_1004B8014();
          v51 = sub_1004BCC24();
          if (sub_1004BD134())
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            v53 = sub_1004B7FD4();
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, v51, v53, "AddIntent", "", v52, 2u);
          }

          v54 = *(v0 + 296);
          v55 = *(v0 + 304);
          v56 = *(v0 + 272);
          v57 = *(v0 + 280);
          v58 = *(v0 + 200);

          v59 = *(v57 + 16);
          *(v0 + 488) = v59;
          *(v0 + 496) = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v59(v54, v55, v56);
          *(v0 + 504) = sub_1004B8074();
          swift_allocObject();
          *(v0 + 512) = sub_1004B8064();
          v60 = *(v57 + 8);
          *(v0 + 520) = v60;
          *(v0 + 528) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v60(v55, v56);
          swift_beginAccess();
          v61 = v58[5];
          v62 = v58[6];
          sub_100009178(v58 + 2, v61);
          v63 = *(v61 - 8);
          v64 = swift_task_alloc();
          *(v0 + 536) = v64;
          (*(v63 + 16))();
          v65 = (*(v62 + 48))(v61, v62);
          *(v0 + 544) = v65;
          (*(v63 + 8))(v64, v61);
          *(v0 + 176) = v58;

          v66 = sub_1004BBF34();
          *(v0 + 88) = &type metadata for Player.CommandIssuerIdentity;
          *(v0 + 96) = &protocol witness table for Player.CommandIssuerIdentity;
          *(v0 + 64) = v66;
          *(v0 + 72) = v67;
          v68 = swift_task_alloc();
          *(v0 + 552) = v68;
          *v68 = v0;
          v68[1] = sub_100265D7C;

          return static SharedListening.addIntent(_:playbackController:issuer:)(isEscapingClosureAtFileLocation, v65, v0 + 64);
        }

        v26 = [objc_opt_self() sharedSessionIntentWithProperties:v20 identity:v24];
        *(v0 + 472) = v26;
        if (v26)
        {
          isEscapingClosureAtFileLocation = v26;
          if (sub_1004B7444() & 1) != 0 && (sub_1004B7414())
          {
            v27 = 20;
          }

          else
          {
            v27 = 10;
          }

          [isEscapingClosureAtFileLocation setActionAfterQueueLoad:v27];

          v36 = sub_1004B8094();
          v37 = sub_1004BC9A4();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v69 = v39;
            *v38 = 67240706;
            *(v38 + 4) = sub_1004B7444() & 1;
            *(v38 + 8) = 1026;
            *(v38 + 10) = sub_1004B7414() & 1;

            *(v38 + 14) = 2082;
            result = MPNSStringFromQueueLoadAction();
            if (!result)
            {
              __break(1u);
              return result;
            }

            v40 = result;
            v41 = sub_1004BBE64();
            v43 = v42;

            v44 = sub_100012018(v41, v43, &v69);

            *(v38 + 16) = v44;
            _os_log_impl(&_mh_execute_header, v36, v37, "Will join session isLocallyInitiated=%{BOOL,public}d\n/ isFirstJoin=%{BOOL,public}d.\n-> actionAfterQueueLoad=%{public}s", v38, 0x18u);
            sub_100004C6C(v39);
          }

          else
          {
          }

          if (qword_100600758 == -1)
          {
            goto LABEL_36;
          }

          goto LABEL_42;
        }

        v45 = sub_1004B8094();
        v46 = sub_1004BC9A4();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "Failed to retrieve shared playback intent", v47, 2u);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1004B85A4();

        v48 = *(v0 + 576);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 577) = 0;

        sub_1004B85B4();
        v33 = v48;
        goto LABEL_23;
      }

      v28 = *(v0 + 320);

      sub_10026A624(v28, type metadata accessor for GroupActivitiesManager.Activity);
    }

    else
    {
    }

    if (qword_100600140 != -1)
    {
      swift_once();
    }

    sub_100007084(v11, static Logger.sharedListening);
    v29 = sub_1004B8094();
    v30 = sub_1004BC984();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Session properties missing in activity", v31, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v32 = *(v0 + 574);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 575) = 0;

    sub_1004B85B4();
    v33 = v32;
LABEL_23:
    sub_100257F58(v33);
    goto LABEL_24;
  }

LABEL_24:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_100265D7C()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = *(v2 + 376);
    v5 = *(v2 + 384);
    v6 = sub_10026689C;
  }

  else
  {
    sub_100007214(v2 + 64, &qword_100601C48, &unk_1004D50E0);

    v4 = *(v2 + 376);
    v5 = *(v2 + 384);
    v6 = sub_100265ED4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100265ED4()
{
  v73 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 392);
  v3 = *(v0 + 200);

  sub_100267CCC(v1);

  v4 = *(v3 + v2);
  if (!v4)
  {
    v45 = 0;
LABEL_14:
    v48 = *(v0 + 464);
    v49 = *(v0 + 472);
    v50 = *(v0 + 456);
    v51 = *(v0 + 200);
    v52 = *(v0 + 208);
    sub_10026AF20();
    v53 = swift_allocError();
    *v54 = v45;
    *(v54 + 8) = 1;

    sub_10025B2E8(v53, 0);

    v55 = sub_1004BC4B4();
    (*(*(v55 - 8) + 56))(v52, 1, 1, v55);

    v56 = sub_1004BC464();
    v57 = swift_allocObject();
    v57[2] = v56;
    v57[3] = &protocol witness table for MainActor;
    v57[4] = v51;
    sub_1000FD6BC(0, 0, v52, &unk_1004D7910, v57);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    LOBYTE(v52) = *(v0 + 580);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 581) = 0;

    sub_1004B85B4();
    v58 = v52;
    goto LABEL_18;
  }

  v5 = *(v0 + 432);
  v67 = *(v0 + 408);
  v6 = *(v0 + 568);
  v8 = *(v0 + 344);
  v7 = *(v0 + 352);
  v9 = *(v0 + 328);

  sub_1004B7494();
  v67(v8, v6, v9);
  v10 = sub_1004B7474();
  v5(v8, v9);
  v5(v7, v9);
  if ((v10 & 1) == 0)
  {
    v46 = *(v0 + 392);
    v47 = *(v0 + 200);

    v45 = *(v47 + v46);
    goto LABEL_14;
  }

  v11 = sub_1004B8094();
  v12 = sub_1004BC9A4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v72 = v14;
    *v13 = 136446210;
    *(v0 + 192) = v4;
    sub_100003ABC(&qword_100608F68, &qword_1004D77F0);
    sub_1000206D4(&qword_1006090C8, &qword_100608F68, &qword_1004D77F0, &protocol conformance descriptor for GroupSession<A>);
    v15 = sub_1004BD934();
    v17 = sub_100012018(v15, v16, &v72);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "🤝 Joining shared session=%{public}s", v13, 0xCu);
    sub_100004C6C(v14);
  }

  sub_1004B7FE4();
  v18 = sub_1004B8014();
  v19 = sub_1004BCC24();
  if (sub_1004BD134())
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_1004B7FD4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v21, "JoinSession", "", v20, 2u);
  }

  v22 = *(v0 + 520);
  v23 = *(v0 + 488);
  v70 = *(v0 + 392);
  v25 = *(v0 + 288);
  v24 = *(v0 + 296);
  v26 = *(v0 + 272);
  v27 = *(v0 + 200);

  v23(v24, v25, v26);
  swift_allocObject();
  v28 = sub_1004B8064();
  v22(v25, v26);
  *(v27 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState) = v28;

  if (*(v27 + v70))
  {

    sub_1004B7464();
  }

  v29 = *(v0 + 200);
  v30 = v29[5];
  v31 = v29[6];
  v32 = sub_100009178(v29 + 2, v30);
  v33 = *(v30 - 8);
  v34 = swift_task_alloc();
  (*(v33 + 16))(v34, v32, v30);
  v35 = (*(v31 + 48))(v30, v31);
  (*(v33 + 8))(v34, v30);
  if (!v35)
  {
    goto LABEL_16;
  }

  v36 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*&v35[v36])
  {

LABEL_16:
    v59 = *(v0 + 464);
    v60 = *(v0 + 472);
    v61 = *(v0 + 456);

    v44 = 0;
    goto LABEL_17;
  }

  v68 = *(v0 + 472);
  v69 = *(v0 + 464);
  v71 = *(v0 + 456);
  v37 = *(v0 + 264);
  v38 = *(v0 + 240);
  v65 = *(v0 + 248);
  v66 = *(v0 + 256);
  v40 = *(v0 + 224);
  v39 = *(v0 + 232);
  v41 = *(v0 + 216);

  swift_beginAccess();
  sub_100003ABC(&qword_100606240, &qword_1004D3170);
  sub_1004B8574();
  swift_endAccess();

  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  v42 = sub_1004BCB44();
  *(v0 + 184) = v42;
  v43 = sub_1004BCB24();
  (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
  sub_1000206D4(&qword_100606720, &unk_100609050, &qword_1004D2B10, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100212C10();
  sub_1004B8614();
  sub_100007214(v41, &qword_1006026C0, &qword_1004CB378);

  (*(v39 + 8))(v38, v40);

  swift_allocObject();
  swift_weakInit();
  sub_1000206D4(&qword_100607000, &qword_100606FF0, &qword_1004D3FE8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v44 = sub_1004B8644();

  (*(v66 + 8))(v37, v65);
LABEL_17:
  *(*(v0 + 200) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = v44;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v62 = *(v0 + 582);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 583) = 0;

  sub_1004B85B4();
  v58 = v62;
LABEL_18:
  sub_100257F58(v58);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_10026689C()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 512);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 456);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);

  sub_100007214(v0 + 64, &qword_100601C48, &unk_1004D50E0);

  sub_100267CCC(v2);

  sub_10025B2E8(v1, 0);
  v8 = sub_1004BC4B4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

  v9 = sub_1004BC464();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v6;
  sub_1000FD6BC(0, 0, v7, &unk_1004D7900, v10);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  LOBYTE(v1) = *(v0 + 578);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 579) = 0;

  sub_1004B85B4();
  sub_100257F58(v1);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100266B40(int a1)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_1004B6D14();
  v3 = *(v35 - 8);
  __chkstk_darwin();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v6 = sub_1004BBE14();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004C50A0;
  sub_1004BBDA4();
  (*(v7 + 16))(v9, v11, v6);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v13 = qword_100617118;
  sub_1004B6DF4();
  v14 = sub_1004BBED4();
  v16 = v15;
  (*(v7 + 8))(v11, v6);

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v17 = sub_1004B6CE4();
  v19 = v18;
  (*(v3 + 8))(v5, v35);
  *(v12 + 32) = v17;
  *(v12 + 40) = v19;
  *(v12 + 48) = v14;
  *(v12 + 56) = v16;
  *(v12 + 64) = 0;
  *(v12 + 72) = &unk_1004D7938;
  *(v12 + 80) = v2;
  v20 = v36;
  sub_100268A60(v36 & 1, &v40);
  v21 = v41;
  if (v41)
  {
    v22 = v40;
    v24 = *(v12 + 16);
    v23 = *(v12 + 24);
    if (v24 >= v23 >> 1)
    {
      v12 = sub_1000183D4((v23 > 1), v24 + 1, 1, v12);
    }

    *(v12 + 16) = v24 + 1;
    v25 = v12 + 56 * v24;
    *(v25 + 32) = v22;
    *(v25 + 40) = v21;
    v26 = v43;
    *(v25 + 48) = v42;
    *(v25 + 64) = v26;
    *(v25 + 80) = v44;
  }

  v27 = sub_100268638(v20 & 1);
  v29 = v28;
  v30 = sub_10026884C(v20 & 1);
  LOBYTE(v37[0]) = 1;
  v45[0] = v27;
  v45[1] = v29;
  v45[2] = v30;
  v45[3] = v31;
  v46 = 0;
  v47 = 0;
  v48 = 1;
  v49 = v12;
  v50 = 0;
  swift_beginAccess();
  sub_10001342C(v2 + 16, v37);
  v32 = v38;
  v33 = v39;
  sub_100009178(v37, v38);
  (*(v33 + 32))(v45, v32, v33);
  sub_100052310(v45);
  return sub_100004C6C(v37);
}

uint64_t sub_100266F70()
{
  v1 = v0[26];
  swift_beginAccess();
  sub_10001342C(v1 + 16, (v0 + 18));
  v2 = v0[21];
  v3 = v0[22];
  sub_100009178(v0 + 18, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_1002670B8;

  return v6(v2, v3);
}

uint64_t sub_1002670B8(char a1)
{
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_1002671B8, 0, 0);
}

uint64_t sub_1002671B8()
{
  sub_100004C6C((v0 + 144));
  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v1 = sub_1004B80B4();
  sub_100007084(v1, static Logger.groupActivities);
  v2 = sub_1004B8094();
  v3 = sub_1004BC9A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 232);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "🛂 User did authenticate=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 232);

  if (v6 == 1)
  {
    v7 = [objc_opt_self() defaultIdentityStore];
    *(v0 + 224) = v7;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100267420;
    v8 = swift_continuation_init();
    *(v0 + 136) = sub_100003ABC(&unk_1006090D0, &unk_1004D7920);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100267560;
    *(v0 + 104) = &unk_1005BC4C0;
    *(v0 + 112) = v8;
    [v7 synchronizeWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    if (*(*(v0 + 208) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
    {

      sub_1004B7484();
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100267420()
{

  return _swift_task_switch(sub_100267500, 0, 0);
}

uint64_t sub_100267500()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100267560(uint64_t a1)
{
  sub_100009178((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

uint64_t sub_1002675B4()
{
  v1 = v0[10];
  swift_beginAccess();
  sub_10001342C(v1 + 16, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_100009178(v0 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1002676FC;

  return v6(v2, v3);
}

uint64_t sub_1002676FC(char a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_1002677FC, 0, 0);
}

uint64_t sub_1002677FC()
{
  v1 = *(v0 + 96);
  sub_100004C6C((v0 + 16));
  if (v1 != 2 && (*(v0 + 96) & 1) == 0)
  {
    if (*(*(v0 + 80) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
    {

      sub_1004B7484();
    }

    if (qword_100600120 != -1)
    {
      swift_once();
    }

    v2 = sub_1004B80B4();
    sub_100007084(v2, static Logger.groupActivities);
    v3 = sub_1004B8094();
    v4 = sub_1004BC9A4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "🛂 User did not complete the subscription flow", v5, 2u);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_100267954(void *a1)
{
  v2 = sub_1004B6D14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004B7544();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B7424();
  sub_1004B7534();
  (*(v7 + 8))(v9, v6);
  v10 = sub_1004B6CE4();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v23._countAndFlagsBits = 0x616C506572616853;
  v23._object = 0xEC0000003D444979;
  if (sub_1004BC0B4(v23))
  {
  }

  else
  {
    strcpy(v22, "SharePlayID=");
    BYTE5(v22[1]) = 0;
    HIWORD(v22[1]) = -5120;
    v24._countAndFlagsBits = v10;
    v24._object = v12;
    sub_1004BC024(v24);
  }

  v13 = sub_1004BBE24();

  [a1 setExternalIdentifier:v13];

  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v14 = sub_1004B80B4();
  sub_100007084(v14, static Logger.groupActivities);

  v15 = sub_1004B8094();
  v16 = sub_1004BC9A4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21 = v18;
    *v17 = 136446210;
    v25._countAndFlagsBits = 0x616C506572616853;
    v25._object = 0xEC0000003D444979;
    if (!sub_1004BC0B4(v25))
    {
      strcpy(v22, "SharePlayID=");
      BYTE5(v22[1]) = 0;
      HIWORD(v22[1]) = -5120;
      v26._countAndFlagsBits = v10;
      v26._object = v12;
      sub_1004BC024(v26);

      v10 = v22[0];
      v12 = v22[1];
    }

    v19 = sub_100012018(v10, v12, &v21);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "externalID identity=%{public}s", v17, 0xCu);
    sub_100004C6C(v18);
  }

  else
  {
  }
}

uint64_t sub_100267CCC(uint64_t a1)
{
  v1 = sub_1004B8044();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004B7FF4();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100600758 != -1)
  {
    swift_once();
  }

  v9 = sub_1004B8034();
  sub_100007084(v9, static OSSignposter.sharePlay);
  v10 = sub_1004B8014();
  sub_1004B8054();
  v11 = sub_1004BCC14();
  if (sub_1004BD134())
  {

    sub_1004B8084();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1004B7FD4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "AddIntent", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100267F58()
{
  v0[2] = sub_1004BC474();
  v0[3] = sub_1004BC464();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100268008;

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

uint64_t sub_100268008()
{

  v1 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001EB474, v1, v0);
}

uint64_t sub_100268144()
{
  v0[2] = sub_1004BC474();
  v0[3] = sub_1004BC464();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002681F4;

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

uint64_t sub_1002681F4()
{

  v1 = sub_1004BC3E4();

  return _swift_task_switch(sub_10026DFDC, v1, v0);
}

void sub_100268330(id *a1, uint64_t a2)
{
  if (!*a1)
  {
    return;
  }

  v16 = *a1;
  if (![v16 isSharedListeningSession])
  {
    goto LABEL_6;
  }

  v2 = [v16 tracklist];
  v15 = [v2 playingItem];

  if (!v15)
  {
    goto LABEL_6;
  }

  if ([v15 isPlaceholder])
  {

LABEL_6:
    v3 = v16;
LABEL_7:

    return;
  }

  v4 = [v15 metadataObject];
  if (!v4)
  {
LABEL_17:

    v3 = v15;
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v4 innermostModelObject];

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

    goto LABEL_17;
  }

  v8 = v7;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9 = sub_100260094(v17);
    v11 = v10;
    v12 = type metadata accessor for GroupActivitiesManager.Activity(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      type metadata accessor for CodableModelObjectIdentity(0, v13);
      v14 = swift_allocObject();
      *(v14 + 16) = v8;
      *(v11 + 56) = v14;
      v6 = v6;
    }

    v9(v17, 0);
  }

  else
  {
  }
}

uint64_t sub_10026858C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session) != 0;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_10005D520;

  return GroupActivitiesManager.leave(performLeaveCommand:)(v1);
}

uint64_t sub_100268638(char a1)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_1004BBDA4();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v7 = qword_100617118;
  sub_1004B6DF4();
  v8 = sub_1004BBED4();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t sub_10026884C(char a1)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_1004BBDA4();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v7 = qword_100617118;
  sub_1004B6DF4();
  v8 = sub_1004BBED4();
  (*(v2 + 8))(v6, v1);
  return v8;
}

void sub_100268A60(int a1@<W0>, uint64_t *a2@<X8>)
{
  v24 = a1;
  v3 = sub_1004B6D14();
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin();
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v21 - v9;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v24)
  {
    sub_1004BBDA4();
    (*(v6 + 16))(v8, v10, v5);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v17 = qword_100617118;
    sub_1004B6DF4();
    v13 = sub_1004BBED4();
    v14 = v18;
    (*(v6 + 8))(v10, v5);
    v19 = v21;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v11 = sub_1004B6CE4();
    v12 = v20;
    (*(v22 + 8))(v19, v23);
    v16 = &unk_1004D7940;
    v15 = 2;
  }

  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v16;
  a2[6] = 0;
}

uint64_t sub_100268D54(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    LSApplicationWorkspace.openMusicSettings()();
  }

  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_100268DDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001384C;

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

char *GroupActivitiesManager.deinit()
{
  sub_100004C6C(v0 + 2);
  sub_10026A684(*(v0 + 7), *(v0 + 8), *(v0 + 9), *(v0 + 10));

  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__participantsCount;
  v2 = sub_100003ABC(&qword_100608398, &qword_1004D6D38);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__isLoading;
  v4 = sub_100003ABC(&qword_1006051A8, &qword_1004D8F60);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__reaction;
  v6 = sub_100003ABC(&qword_100608760, &qword_1004D7210);
  (*(*(v6 - 8) + 8))(&v0[v5], v6);

  sub_100007214(&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity], &qword_1006087D8, &qword_1004D72E8);

  sub_100007214(&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame], &qword_1006038C0, qword_1004D72F0);

  sub_100007214(&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate], &qword_100603110, &qword_1004CD2B0);
  sub_10026B368(*&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext], *&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8]);
  return v0;
}

uint64_t GroupActivitiesManager.__deallocating_deinit()
{
  GroupActivitiesManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1002690D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, static Logger.groupActivities);
  sub_100007084(v2, static Logger.groupActivities);
  sub_100009130(0, &qword_1006090F0, OS_os_log_ptr);
  sub_1004BD164();
  return sub_1004B80C4();
}

uint64_t static Logger.groupActivities.getter@<X0>(uint64_t a2@<X8>)
{
  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  v4 = sub_100007084(v3, static Logger.groupActivities);
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, v4, v3);
}

unint64_t sub_100269220(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1004BC114();
  }

  __break(1u);
  return result;
}

uint64_t sub_10026926C()
{
  if (*v0)
  {
    return 7955819;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_1002692A4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1004BD9C4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1004BD9C4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_100269388(uint64_t a1)
{
  v2 = sub_10026C274();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002693C4(uint64_t a1)
{
  v2 = sub_10026C274();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100269400(void *a1)
{
  v4 = sub_100003ABC(&qword_100608EF0, &qword_1004D77B0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v13 - v6;
  sub_100009178(a1, a1[3]);
  sub_10026C274();
  sub_1004BDC34();
  if (v2)
  {
    type metadata accessor for CodableListeningProperties(0, v8);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = 0;
    sub_1004BD7C4();
    v14 = 1;
    v13[1] = sub_1004BD7C4();
    v10 = sub_1004BBE24();

    v11 = sub_1004BBE24();

    v12 = [objc_opt_self() propertiesWithSessionIdentifier:v10 sessionKey:v11];

    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v12;
  }

  sub_100004C6C(a1);
  return v1;
}

void sub_100269650(void *a1)
{
  v3 = v1;
  v5 = sub_100003ABC(&qword_100608F40, &qword_1004D77C8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12[-v7];
  sub_100009178(a1, a1[3]);
  sub_10026C274();
  sub_1004BDC44();
  v9 = *(v3 + 16);
  v10 = [v9 sessionIdentifier];
  sub_1004BBE64();

  v12[15] = 0;
  sub_1004BD854();
  if (!v2)
  {

    v11 = [v9 sessionKey];
    sub_1004BBE64();

    v12[14] = 1;
    sub_1004BD854();
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002698AC()
{
  if (*v0)
  {
    return 0x616C436C65646F6DLL;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_1002698FC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (sub_1004BD9C4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x616C436C65646F6DLL && a2 == 0xEE00656D614E7373)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1004BD9C4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1002699E4(uint64_t a1)
{
  v2 = sub_10026C2C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100269A20(uint64_t a1)
{
  v2 = sub_10026C2C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100269A5C(void *a1)
{
  v3 = v1;
  v5 = sub_100003ABC(&qword_100608F00, &qword_1004D77B8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - v7;
  sub_100009178(a1, a1[3]);
  sub_10026C2C8();
  sub_1004BDC34();
  if (!v2)
  {
    v35 = 0;
    sub_10026C31C();
    sub_1004BD804();
    v11 = aBlock;
    v10 = v30;
    sub_100009130(0, &unk_100608F18, NSKeyedUnarchiver_ptr);
    sub_100009130(0, &unk_100604280, MPIdentifierSet_ptr);
    v12 = sub_1004BCAC4();
    if (v12)
    {
      v28 = v12;
      LOBYTE(aBlock) = 1;
      sub_1004BD7C4();
      v27 = sub_1004BBE24();

      v15 = v27;
      v26 = NSClassFromString(v27);

      if (v26)
      {
        swift_getObjCClassMetadata();
        sub_100009130(0, &qword_100603540, MPModelObject_ptr);
        v16 = swift_dynamicCastMetatype();
        if (v16)
        {
          if (qword_100600130 != -1)
          {
            v24 = v16;
            swift_once();
            v16 = v24;
          }

          v17 = *(off_100609130 + 2);
          v18 = (off_100609130 + 32);
          while (v17)
          {
            v19 = *v18++;
            --v17;
            if (v19 == v16)
            {
              v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
              v33 = CFRange.init(_:);
              v34 = 0;
              aBlock = _NSConcreteStackBlock;
              v30 = 1107296256;
              v31 = sub_10011FE68;
              v32 = &unk_1005BC240;
              v27 = _Block_copy(&aBlock);
              v21 = v20;
              v22 = v28;
              v26 = [v21 initWithIdentifiers:v28 block:v27];
              sub_100004D90(v11, v10);

              _Block_release(v27);
              (*(v6 + 8))(v8, v5);

              result = swift_isEscapingClosureAtFileLocation();
              if ((result & 1) == 0)
              {
                *(v3 + 16) = v26;
                goto LABEL_6;
              }

              __break(1u);
              return result;
            }
          }
        }
      }

      sub_10026C370();
      swift_allocError();
      *v23 = 1;
      swift_willThrow();
      sub_100004D90(v11, v10);
    }

    else
    {
      sub_10026C370();
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
      sub_100004D90(v11, v10);
    }

    (*(v6 + 8))(v8, v5);
  }

  type metadata accessor for CodableModelObjectIdentity(0, v9);
  swift_deallocPartialClassInstance();
LABEL_6:
  sub_100004C6C(a1);
  return v3;
}

uint64_t sub_100269ED8(void *a1)
{
  v3 = v1;
  v5 = sub_100003ABC(&qword_100608F30, &qword_1004D77C0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20[-v7];
  sub_100009178(a1, a1[3]);
  sub_10026C2C8();
  sub_1004BDC44();
  v9 = objc_opt_self();
  v10 = [*(v3 + 16) identifiers];
  v21[0] = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v21];

  v12 = v21[0];
  if (v11)
  {
    v13 = sub_1004B6B74();
    v15 = v14;

    v21[0] = v13;
    v21[1] = v15;
    v20[7] = 0;
    sub_10026C3DC();
    sub_1004BD894();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = NSStringFromClass(ObjCClassFromMetadata);
      sub_1004BBE64();

      LOBYTE(v21[0]) = 1;
      sub_1004BD854();
      (*(v6 + 8))(v8, v5);
    }

    return sub_100004D90(v13, v15);
  }

  else
  {
    v16 = v12;
    sub_1004B69B4();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10026A1D8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a2(0);
  swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_10026A268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10026A2D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10026A338()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    sub_100004C6C((v0 + v2));
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = sub_1004B6B04();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10026A520(uint64_t a1)
{
  v4 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001384C;

  return sub_10025D574(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10026A624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_10026A684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10026A77C()
{

  sub_10026A7D0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

void sub_10026A7D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    if (!a7)
    {
      goto LABEL_13;
    }

    if (a7 != 1)
    {
      return;
    }

LABEL_12:

    return;
  }

  if (a7 == 2)
  {

    goto LABEL_12;
  }

  if (a7 != 3)
  {
    if (a7 == 4)
    {

      sub_10026A684(a1, a2, a3, a4);
    }

    return;
  }

LABEL_13:
}

double sub_10026A8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10026A8F8(__int16 a1, void *a2, int a3, __int16 a4, void *a5, int a6)
{
  result = 0;
  v8 = a1 ^ a4;
  if (v8 & 0x100) != 0 || (v8)
  {
    return result;
  }

  if (!a2)
  {
    result = 0;
    if (a5 || ((a3 ^ a6) & 1) != 0)
    {
      return result;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  if (!a5)
  {
    return 0;
  }

  v9 = a3;
  v10 = a6;
  sub_100009130(0, &qword_100603568, ICMusicSubscriptionStatus_ptr);
  v13 = a5;
  v14 = a2;
  v15 = sub_1004BCFA4();

  result = 0;
  if (v15)
  {
    LOWORD(a6) = v10;
    LOWORD(a3) = v9;
    if (((v9 ^ v10) & 1) == 0)
    {
      return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
    }
  }

  return result;
}

id _s9MusicCore22GroupActivitiesManagerC8ActivityV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  v5 = *(v2 + 16);
  v6 = v4;
  v7 = [v5 identifiers];
  v8 = [v6 identifiers];
  v9 = [v7 intersectsSet:v8];

  return v9;
}

uint64_t sub_10026AA98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100608F90, &qword_1004D7840);
    v3 = sub_1004BD3E4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1004BDBA4();
      NSDirectionalEdgeInsets.Edge.hash(into:)(v18, v10);
      result = sub_1004BDBF4();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        while (1)
        {
          result = static NSDirectionalEdgeInsets.Edge.__derived_enum_equals(_:_:)(*(*(v3 + 48) + v13), v10);
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10026AC2C()
{
  result = qword_1006086D0;
  if (!qword_1006086D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006086D0);
  }

  return result;
}

uint64_t sub_10026ACA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10026AD10()
{
  result = qword_1006086F8;
  if (!qword_1006086F8)
  {
    sub_100003B68(&qword_1006086F0, &qword_1004D70C0);
    sub_10026ACA4(&qword_100608700, type metadata accessor for CodableListeningProperties, &unk_1004D76E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006086F8);
  }

  return result;
}

unint64_t sub_10026ADC4()
{
  result = qword_100608710;
  if (!qword_100608710)
  {
    sub_100003B68(&qword_100608708, &qword_1004D70C8);
    sub_10026ACA4(&qword_100608718, type metadata accessor for CodableModelObjectIdentity, &unk_1004D76BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100608710);
  }

  return result;
}

unint64_t sub_10026AF20()
{
  result = qword_100608788;
  if (!qword_100608788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100608788);
  }

  return result;
}

uint64_t sub_10026AF7C()
{
  v1 = *(sub_100003ABC(&qword_1006086B0, &qword_1004D70A0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = v0 + v2;
  v4 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {

    v5 = *(v4 + 28);
    v6 = sub_1004B6B04();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10026B11C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_1006086B0, &qword_1004D70A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026B18C(uint64_t a1)
{
  v4 = *(sub_100003ABC(&qword_1006086B0, &qword_1004D70A0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000136EC;

  return sub_10025A918(a1, v6, v1 + v5, v7);
}

uint64_t sub_10026B2B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001384C;

  return sub_100264070();
}

void sub_10026B368(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
  }
}

void sub_10026B4CC(uint64_t a1)
{
  sub_10024EE40(319, &qword_100608468, &type metadata for Int, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_10024EE40(319, &qword_100605D80, &type metadata for Bool, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_10026BAF8(319, &qword_100608828, &qword_100608750, &qword_1004D71C0, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_10026B7B8(319, &unk_100608830, type metadata accessor for GroupActivitiesManager.Activity);
        if (v4 <= 0x3F)
        {
          sub_10026B7B8(319, &qword_100603940, type metadata accessor for Signpost);
          if (v5 <= 0x3F)
          {
            sub_10026B7B8(319, &unk_100608840, &type metadata accessor for Date);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_10026B7B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004BD174();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10026B820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_100003ABC(&qword_1006086B0, &qword_1004D70A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10026B8FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100003ABC(&qword_1006086B0, &qword_1004D70A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10026B9AC(uint64_t a1)
{
  sub_10026BAF8(319, &qword_1006089C0, &qword_1006089C8, &qword_1004D74E0, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10026BB5C(319);
    if (v2 <= 0x3F)
    {
      sub_10026B7B8(319, &qword_1006089E0, type metadata accessor for CodableListeningProperties);
      if (v3 <= 0x3F)
      {
        sub_10026B7B8(319, &qword_1006089E8, type metadata accessor for CodableModelObjectIdentity);
        if (v4 <= 0x3F)
        {
          sub_10026B7B8(319, &unk_1006089F0, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10026BAF8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003B68(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10026BB5C(uint64_t a1)
{
  if (!qword_1006089D0)
  {
    sub_100009130(255, &qword_100605EC8, MPCPlaybackIntent_ptr);
    v1 = sub_1004BD174();
    if (!v2)
    {
      atomic_store(v1, &qword_1006089D0);
    }
  }
}

uint64_t sub_10026BBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10026BCB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10026BD64(uint64_t a1)
{
  sub_10024EE40(319, &qword_1006084E0, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10026B7B8(319, qword_100608AA0, type metadata accessor for CGImage);
    if (v2 <= 0x3F)
    {
      sub_10026B7B8(319, &qword_100602F78, &type metadata accessor for URL);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10026BE7C(uint64_t a1, __n128 a2)
{
  result = sub_1004B7144();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_10026BF18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_10026BF2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
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

uint64_t sub_10026BF88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10026C010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10026C090(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10026C114(uint64_t a1)
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_10026C170()
{
  result = qword_100608ED8;
  if (!qword_100608ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100608ED8);
  }

  return result;
}

unint64_t sub_10026C1C8()
{
  result = qword_100608EE0;
  if (!qword_100608EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100608EE0);
  }

  return result;
}

unint64_t sub_10026C220()
{
  result = qword_100608EE8;
  if (!qword_100608EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100608EE8);
  }

  return result;
}

unint64_t sub_10026C274()
{
  result = qword_100608EF8;
  if (!qword_100608EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100608EF8);
  }

  return result;
}

unint64_t sub_10026C2C8()
{
  result = qword_100608F08;
  if (!qword_100608F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100608F08);
  }

  return result;
}

unint64_t sub_10026C31C()
{
  result = qword_100608F10;
  if (!qword_100608F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100608F10);
  }

  return result;
}

unint64_t sub_10026C370()
{
  result = qword_100608F28;
  if (!qword_100608F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100608F28);
  }

  return result;
}

uint64_t sub_10026C3C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10026C3DC()
{
  result = qword_100608F38;
  if (!qword_100608F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100608F38);
  }

  return result;
}

unint64_t sub_10026C44C()
{
  result = qword_100608F70;
  if (!qword_100608F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100608F70);
  }

  return result;
}

void sub_10026C4A0(void *a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
      }

      return;
    }

LABEL_7:

    return;
  }

  if (a2 == 2)
  {

    return;
  }

  if (a2 == 3)
  {
    goto LABEL_7;
  }
}

uint64_t sub_10026C4D8()
{
  v1 = *(sub_100003ABC(&qword_1006086B0, &qword_1004D70A0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v17 = *(v1 + 64);
  v3 = sub_100003ABC(&unk_100608F80, &qword_1004D7810);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  swift_unknownObjectRelease();
  v7 = v0 + v2;
  v8 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {

    v16 = v6;
    v9 = *(v8 + 28);
    v10 = sub_1004B6B04();
    v11 = *(v10 - 8);
    v15 = v9;
    v12 = v7 + v9;
    v6 = v16;
    if (!(*(v11 + 48))(v12, 1, v10))
    {
      (*(v11 + 8))(v7 + v15, v10);
    }
  }

  v13 = (((v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5;

  (*(v4 + 8))(v0 + v13, v3);

  return swift_deallocObject();
}

uint64_t sub_10026C73C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100003ABC(&qword_1006086B0, &qword_1004D70A0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_100003ABC(&unk_100608F80, &qword_1004D7810) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001384C;

  return sub_10025B898(a1, v10, v11, v1 + v6, v12, v1 + v9, v13);
}

uint64_t sub_10026C8F0()
{
  v1 = *(sub_100003ABC(&qword_1006086B0, &qword_1004D70A0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v12 = *(v1 + 64);
  v3 = sub_100003ABC(&unk_100608F80, &qword_1004D7810);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;
  v7 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v2, 1, v7))
  {

    v8 = *(v7 + 28);
    v9 = sub_1004B6B04();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  (*(v4 + 8))(v0 + ((((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v3);

  return swift_deallocObject();
}

double sub_10026CB38(void *a1)
{
  v3 = *(sub_100003ABC(&qword_1006086B0, &qword_1004D70A0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100003ABC(&unk_100608F80, &qword_1004D7810) - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_10025C088(a1, v1 + v4, v7, v8);
}

uint64_t sub_10026CC34()
{
  v1 = *(sub_100003ABC(&qword_1006086B0, &qword_1004D70A0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v12 = *(v1 + 64);
  v3 = sub_100003ABC(&unk_100608F80, &qword_1004D7810);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  swift_unknownObjectRelease();

  v6 = v0 + v2;
  v7 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v2, 1, v7))
  {

    v8 = *(v7 + 28);
    v9 = sub_1004B6B04();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  (*(v4 + 8))(v0 + ((((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_10026CE84(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100003ABC(&qword_1006086B0, &qword_1004D70A0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_100003ABC(&unk_100608F80, &qword_1004D7810) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001384C;

  return sub_10025C35C(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

double sub_10026D010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

double sub_10026D060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_10026D0B0()
{
  result = qword_100608FE0;
  if (!qword_100608FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100608FE0);
  }

  return result;
}

uint64_t sub_10026D104()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10026D14C()
{

  return swift_deallocObject();
}

double sub_10026D1A4(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10026D1BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10026D1D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10026D20C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return sub_100264AF4(a1);
}

uint64_t sub_10026D2BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_100266F50(a1, v4, v5, v6);
}

uint64_t sub_10026D370(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_100267594(a1, v4, v5, v6);
}

uint64_t sub_10026D424()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001384C;

  return sub_100264DE8();
}

id sub_10026D4D8(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
    return a2;
  }

  return result;
}

uint64_t sub_10026D500()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001384C;

  return sub_100267F58();
}

uint64_t sub_10026D5B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001384C;

  return sub_100268144();
}

uint64_t sub_10026D670()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001384C;

  return sub_100268DDC();
}

uint64_t sub_10026D718(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000136EC;

  return sub_10026856C(a1, v4, v5, v6);
}

uint64_t sub_10026D7CC()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    sub_100004C6C((v0 + v2));
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = sub_1004B6B04();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

double sub_10026D984(void *a1)
{
  v3 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10025F390(a1, v4, v5);
}

uint64_t sub_10026D9F8()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    sub_100004C6C((v0 + v2));
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = sub_1004B6B04();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10026DBC0(uint64_t a1)
{
  v4 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001384C;

  return sub_10025F574(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_10026DCF8()
{
  result = qword_1006090F8;
  if (!qword_1006090F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006090F8);
  }

  return result;
}

unint64_t sub_10026DD50()
{
  result = qword_100609100;
  if (!qword_100609100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609100);
  }

  return result;
}

unint64_t sub_10026DDA8()
{
  result = qword_100609108;
  if (!qword_100609108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609108);
  }

  return result;
}

unint64_t sub_10026DE00()
{
  result = qword_100609110;
  if (!qword_100609110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609110);
  }

  return result;
}

unint64_t sub_10026DE58()
{
  result = qword_100609118;
  if (!qword_100609118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609118);
  }

  return result;
}

unint64_t sub_10026DEB0()
{
  result = qword_100609120;
  if (!qword_100609120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609120);
  }

  return result;
}

unint64_t sub_10026DF08()
{
  result = qword_100609128;
  if (!qword_100609128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609128);
  }

  return result;
}

void MPCPlayerCommandDialog.alert(context:completion:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v86 = a5;
  v85 = a4;
  v90 = a2;
  v91 = a3;
  v89 = a1;
  v80 = a6;
  sub_1004B6E64();
  __chkstk_darwin();
  v7 = sub_1004BBE14();
  v8 = *(v7 - 1);
  __chkstk_darwin();
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v80 - v11;
  v84 = sub_1004B6D14();
  v13 = *(v84 - 8);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v83 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v6;
  v16 = [v6 actions];
  sub_100009130(0, &qword_100609140, MPCPlayerCommandDialogAction_ptr);
  v17 = sub_1004BC2A4();

  if (v17 >> 62)
  {
    v18 = sub_1004BD6A4();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v18)
  {
    sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
    v18 = swift_allocObject();
    *(v18 + 1) = xmmword_1004C50A0;
    sub_1004BBDA4();
    (*(v8 + 16))(v10, v12, v7);
    if (qword_1005FFD30 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_50;
  }

  v7 = [v82 actions];
  v19 = sub_1004BC2A4();

  if (v19 >> 62)
  {
    v8 = sub_1004BD6A4();
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_42:

    v18 = _swiftEmptyArrayStorage;
LABEL_43:
    v74 = [v82 localizedTitle];
    if (v74)
    {
      v75 = v74;
      v68 = sub_1004BBE64();
      v70 = v76;
    }

    else
    {
      v68 = 0;
      v70 = 0;
    }

    v71 = [v82 localizedMessage];
    if (!v71)
    {
      goto LABEL_39;
    }

LABEL_47:
    v77 = v71;
    v72 = sub_1004BBE64();
    v73 = v78;

    goto LABEL_48;
  }

  v8 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_42;
  }

LABEL_6:
  if (v8 >= 1)
  {
    v20 = 0;
    v92 = v19 & 0xC000000000000001;
    v93 = MPCPlayerCommandDialogActionTitlePlayOnlyForMe;
    v18 = _swiftEmptyArrayStorage;
    v81 = (v13 + 8);
    v88 = v19;
    v87 = v8;
    while (1)
    {
      if (v92)
      {
        v21 = sub_1004BD484();
      }

      else
      {
        v21 = *(v19 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = [v21 localizedTitle];
      v24 = sub_1004BBE64();
      v26 = v25;

      if (v24 == sub_1004BBE64() && v26 == v27)
      {
      }

      else
      {
        v29 = sub_1004BD9C4();

        if ((v29 & 1) == 0)
        {
          v95 = v20;
          v30 = [v22 localizedTitle];
          v99 = sub_1004BBE64();
          v32 = v31;

          v33 = [v22 type];
          if (v33 == 2)
          {
            v34 = 1;
          }

          else
          {
            v34 = 2;
          }

          if (v33 == 1)
          {
            v35 = 0;
          }

          else
          {
            v35 = v34;
          }

          v36 = swift_allocObject();
          v37 = v85;
          v36[2] = v22;
          v36[3] = v37;
          v38 = v86;
          v36[4] = v86;
          v39 = v22;
          sub_10002F518(v37, v38);
          v40 = v83;
          _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
          v97 = sub_1004B6CE4();
          v42 = v41;
          (*v81)(v40, v84);

          v43 = v32;

          v44 = v36;

          v96 = &unk_1004D7C58;
          v98 = v35;
          v94 = v35;
          goto LABEL_28;
        }
      }

      sub_100274D7C(v89, v90, v91, &v101);
      v42 = v102;
      if (v102)
      {
        v95 = v20;
        v45 = v106;
        v46 = v107;
        v94 = v105;
        v47 = v104;
        v98 = v105;
        v99 = v103;
        v97 = v101;

        v43 = v47;

        v96 = v45;
        v44 = v46;
        sub_10002F518(v45, v46);
LABEL_28:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1000183D4(0, v18[2] + 1, 1, v18);
        }

        v49 = v18[2];
        v48 = v18[3];
        v50 = v22;
        if (v49 >= v48 >> 1)
        {
          v18 = sub_1000183D4((v48 > 1), v49 + 1, 1, v18);
        }

        v51 = v97;
        v52 = v99;
        v53 = v96;
        sub_100274C70(v97, v42, v99, v43, v98, v96, v44);

        v18[2] = v49 + 1;
        v54 = &v18[7 * v49];
        v54[4] = v51;
        v54[5] = v42;
        v54[6] = v52;
        v54[7] = v43;
        *(v54 + 64) = v94;
        v54[9] = v53;
        v54[10] = v44;
        v19 = v88;
        v8 = v87;
        v20 = v95;
        goto LABEL_9;
      }

LABEL_9:
      if (v8 == ++v20)
      {

        goto LABEL_43;
      }
    }
  }

  __break(1u);
LABEL_50:
  swift_once();
LABEL_35:
  v55 = qword_100617118;
  sub_1004B6DF4();
  v56 = sub_1004BBED4();
  v58 = v57;
  (*(v8 + 8))(v12, v7);
  v59 = swift_allocObject();
  v60 = v85;
  v61 = v86;
  *(v59 + 16) = v85;
  *(v59 + 24) = v61;
  sub_10002F518(v60, v61);
  v62 = v83;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v63 = sub_1004B6CE4();
  v65 = v64;
  (*(v13 + 8))(v62, v84);
  v18[4] = v63;
  v18[5] = v65;
  v18[6] = v56;
  v18[7] = v58;
  *(v18 + 64) = 2;
  v18[9] = &unk_1004D7C68;
  v18[10] = v59;
  v66 = [v82 localizedTitle];
  if (v66)
  {
    v67 = v66;
    v68 = sub_1004BBE64();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0;
  }

  v71 = [v82 localizedMessage];
  if (v71)
  {
    goto LABEL_47;
  }

LABEL_39:
  v72 = 0;
  v73 = 0;
LABEL_48:
  v100 = 1;
  v79 = v80;
  *v80 = v68;
  v79[1] = v70;
  v79[2] = v72;
  v79[3] = v73;
  *(v79 + 32) = 0;
  v79[5] = 0;
  *(v79 + 48) = 1;
  v79[7] = v18;
  v79[8] = 0;
}

BOOL static SharedListening.isMusicItemTypeSupported(_:)(uint64_t a1)
{
  if (qword_100600138 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = (off_100609138 + 32);
  v2 = *(off_100609138 + 2) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 2;
  }

  while (v3 != a1);
  return v2 != 0;
}

uint64_t Logger.sharedListening.unsafeMutableAddressor(uint64_t a1, uint64_t a2)
{
  if (qword_100600140 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();

  return sub_100007084(v2, static Logger.sharedListening);
}

uint64_t *SharedListening.Event.properties.unsafeMutableAddressor()
{
  if (qword_100600128 != -1)
  {
    swift_once();
  }

  return &static SharedListening.Event.properties;
}

double SharedListening.Event.init(_:)@<D0>(uint64_t a1@<X8>, NSObject *a2@<X0>)
{
  sub_100275244(a2, v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t static SharedListening.buildSharedSession(with:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100215F68;

  return sub_100275CF4(a1);
}

uint64_t static SharedListening.buildSharedSession(with:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000136EC;

  return sub_1002763B4(a1, a2, a3, a4);
}

uint64_t SharedListening.Event.Content.title.getter(void *a1, char a2)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v4 = sub_1004BBE14();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v20[-v9];
  if (a2)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = [v11 title];
      if (!v12)
      {
        goto LABEL_9;
      }

LABEL_6:
      v13 = v12;
      v14 = sub_1004BBE64();

      return v14;
    }

    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v12 = [v16 name];
      if (v12)
      {
        goto LABEL_6;
      }
    }

    else
    {
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (!v19)
      {
        v21 = 0;
        v22 = 0xE000000000000000;
        sub_1004BD404(34);

        v21 = 0xD000000000000020;
        v22 = 0x8000000100505640;
        swift_getObjectType();
        v23._countAndFlagsBits = sub_1004BDC84();
        sub_1004BC024(v23);

        result = sub_1004BD624();
        __break(1u);
        return result;
      }

      v12 = [v19 name];
      if (v12)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v12 = [a1 title];
    if (v12)
    {
      goto LABEL_6;
    }
  }

LABEL_9:
  sub_1004BBDA4();
  (*(v5 + 16))(v7, v10, v4);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v17 = qword_100617118;
  sub_1004B6DF4();
  v18 = sub_1004BBED4();
  (*(v5 + 8))(v10, v4);
  return v18;
}

void sub_10026EF2C(void *a1, uint64_t a2)
{
  if (a2 <= 2u)
  {
    if (a2 == 1)
    {
      v16 = a1;
      if (qword_100600120 != -1)
      {
        swift_once();
      }

      v17 = sub_1004B80B4();
      sub_100007084(v17, static Logger.groupActivities);

      oslog = sub_1004B8094();
      v18 = sub_1004BC984();
      sub_10026C4A0(v16, 1u);
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v43 = v20;
        *v19 = 136446210;
        v45 = v16;

        sub_100003ABC(&unk_100609038, &unk_1004D7890);
        v21 = sub_1004BBF04();
        v23 = sub_100012018(v21, v22, &v43);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, oslog, v18, "Cannot joined invalid session=%{public}s", v19, 0xCu);
        sub_100004C6C(v20);

        return;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return;
      }

      v2 = [a1 error];
      if (qword_100600140 != -1)
      {
        swift_once();
      }

      v3 = sub_1004B80B4();
      sub_100007084(v3, static Logger.sharedListening);
      v4 = v2;
      oslog = sub_1004B8094();
      v5 = sub_1004BC984();

      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v45 = v7;
        *v6 = 136446210;
        v43 = v2;
        LOBYTE(v44) = 0;
        v8 = v4;
        v9 = sub_1004BBF04();
        v11 = sub_100012018(v9, v10, &v45);

        *(v6 + 4) = v11;
        _os_log_impl(&_mh_execute_header, oslog, v5, "Creation error %{public}s", v6, 0xCu);
        sub_100004C6C(v7);

        return;
      }
    }

    goto LABEL_42;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      return;
    }

    if (a1 == 2)
    {
      if (qword_100600140 != -1)
      {
        swift_once();
      }

      v41 = sub_1004B80B4();
      sub_100007084(v41, static Logger.sharedListening);
      oslog = sub_1004B8094();
      v13 = sub_1004BC9A4();
      if (!os_log_type_enabled(oslog, v13))
      {
        goto LABEL_42;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Building session failed because the queue is empty";
    }

    else
    {
      if (a1 == 3)
      {
        if (qword_100600140 != -1)
        {
          swift_once();
        }

        v34 = sub_1004B80B4();
        sub_100007084(v34, static Logger.sharedListening);
        oslog = sub_1004B8094();
        v35 = sub_1004BC9A4();
        if (!os_log_type_enabled(oslog, v35))
        {
          goto LABEL_42;
        }

        v36 = swift_slowAlloc();
        *v36 = 67109120;
        *(v36 + 1) = FigOutputMonitorIsScreenProbablyBeingRecorded() != 0;
        v15 = "Presenting not supported content alert (isScreenSharing=%{BOOL}d)";
        v37 = v35;
        v38 = oslog;
        v39 = v36;
        v40 = 8;
LABEL_41:
        _os_log_impl(&_mh_execute_header, v38, v37, v15, v39, v40);

LABEL_42:

        return;
      }

      if (a1 != 4)
      {
        return;
      }

      if (qword_100600140 != -1)
      {
        swift_once();
      }

      v12 = sub_1004B80B4();
      sub_100007084(v12, static Logger.sharedListening);
      oslog = sub_1004B8094();
      v13 = sub_1004BC9A4();
      if (!os_log_type_enabled(oslog, v13))
      {
        goto LABEL_42;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Cannot add intent for the current route.";
    }

    v37 = v13;
    v38 = oslog;
    v39 = v14;
    v40 = 2;
    goto LABEL_41;
  }

  if (a1)
  {
    swift_getErrorValue();
    a1 = sub_1004BDB04();
  }

  else
  {
    v24 = 0;
  }

  v43 = a1;
  v44 = v24;
  sub_100003ABC(&unk_100606160, &qword_1004CAC60);
  v25 = sub_1004BBF04();
  v27 = v26;
  if (qword_100600120 != -1)
  {
    swift_once();
  }

  v28 = sub_1004B80B4();
  sub_100007084(v28, static Logger.groupActivities);

  v29 = sub_1004B8094();
  v30 = sub_1004BC984();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v32;
    *v31 = 136446210;
    v33 = sub_100012018(v25, v27, &v43);

    *(v31 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v29, v30, "Could not add intent to the player: %{public}s", v31, 0xCu);
    sub_100004C6C(v32);
  }

  else
  {
  }
}

void sub_10026F5E8(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v165 = a4;
  v164 = a3;
  v163 = a2;
  v162 = a1;
  v170 = a6;
  v7 = sub_1004B6B04();
  v160 = *(v7 - 8);
  v8 = *(v160 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v10 = (v152 - v9);
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v12 = v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v152 - v13;
  v167 = sub_1004B6D14();
  v15 = *(v167 - 8);
  __chkstk_darwin();
  v166 = v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v168 = v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004BBE14();
  v169 = *(v18 - 8);
  __chkstk_darwin();
  v20 = v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = __chkstk_darwin().n128_u64[0];
  if (a5 == 2)
  {
    v154 = v12;
    v152[1] = v8;
    v153 = v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v155 = v14;
    v158 = v10;
    v159 = v7;
    v24 = v152 - v21;
    v63 = v165;
    v64 = [v165 dialog];
    if (v64)
    {
      v65 = v64;
      MPCPlayerCommandDialog.alert(context:completion:)(v162, v163, v164, 0, 0, &v171);
      v66 = v171;
      v40 = v172;
      v67 = *(&v173 + 1);
      v36 = v173;
      v44 = *(&v174 + 1);
      v68 = v174;
      v69 = v175;
      v43 = v176;
      v45 = v177;

      v42 = v66;
      v48 = v68 & 0xFFFFFFFFFFFFFF00;
      v46 = v69 & 0xFFFFFFFFFFFFFF00;
      v47 = v68;
      v49 = v69;
      v41 = v67;
LABEL_26:
      v23 = v170;
      goto LABEL_27;
    }

    v70 = [v63 error];
    v23 = v170;
    if (v70)
    {
      v171 = v70;
      sub_100003ABC(&qword_100604C30, &qword_1004C8490);
      type metadata accessor for MPCPlayerEnqueueError(0);
      if (swift_dynamicCast())
      {
        v71 = v178;
        v171 = v178;
        sub_1002780B8(&qword_100600F50, type metadata accessor for MPCPlayerEnqueueError, &unk_1004C76DC);
        sub_1004B6964();

        if (v178 == 3)
        {
          goto LABEL_19;
        }
      }
    }

    v161 = v15;
    sub_1004BBDA4();
    v90 = v169;
    v91 = v18;
    v92 = *(v169 + 16);
    v92(v20, v24, v91);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v93 = qword_100617118;
    sub_1004B6DF4();
    v94 = v93;
    v157 = sub_1004BBED4();
    v156 = v95;
    v169 = *(v90 + 8);
    (v169)(v24, v91);
    sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1004C50A0;
    sub_1004BBDA4();
    v92(v20, v24, v91);
    sub_1004B6DF4();
    v96 = sub_1004BBED4();
    v98 = v97;
    (v169)(v24, v91);
    v99 = v166;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v100 = sub_1004B6CE4();
    v102 = v101;
    v103 = *(v161 + 8);
    v161 += 8;
    v103(v99, v167);
    *(v43 + 32) = v100;
    *(v43 + 40) = v102;
    *(v43 + 48) = v96;
    *(v43 + 56) = v98;
    *(v43 + 64) = 2;
    *(v43 + 72) = 0;
    *(v43 + 80) = 0;
    v171 = 0;
    v172 = 0xE000000000000000;
    sub_1004BD404(30);

    v171 = 0xD00000000000001CLL;
    v172 = 0x8000000100505790;
    *&v178 = [v63 error];
    sub_100003ABC(&qword_100607010, &qword_1004D3148);
    v181._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v181);

    v105 = v171;
    v104 = v172;
    v106 = sub_10003D264(_swiftEmptyArrayStorage);
    if (qword_1006006D8 != -1)
    {
      swift_once();
    }

    v23 = v170;
    v107 = v159;
    v108 = v158;
    if (static DeviceCapabilities.isInternalInstall == 1)
    {
      v109 = v105;
      v110 = v155;
      sub_100144204(v109, v104, 0xD000000000000032, 0x80000001004FFE30, _swiftEmptyArrayStorage, v106, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v155, 1u);

      v111 = v154;
      sub_10000F778(v110, v154, &qword_100600DE0, &unk_1004C66D0);
      v112 = v160;
      if ((*(v160 + 48))(v111, 1, v107) == 1)
      {
        sub_100007214(v110, &qword_100600DE0, &unk_1004C66D0);
        v113 = v111;
      }

      else
      {
        v169 = v103;
        v135 = *(v112 + 32);
        v135(v108, v111, v107);
        v136 = v108;
        v137 = [objc_opt_self() sharedApplication];
        sub_1004B6A44(v138);
        v140 = v139;
        v141 = [v137 canOpenURL:v139];

        if (v141)
        {
          v142 = v153;
          (*(v112 + 16))(v153, v136, v107);
          v143 = (*(v112 + 80) + 16) & ~*(v112 + 80);
          v144 = swift_allocObject();
          v135(v144 + v143, v142, v107);
          v145 = v166;
          _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
          v146 = sub_1004B6CE4();
          v148 = v147;
          (v169)(v145, v167);
          (*(v112 + 8))(v136, v107);
          sub_100007214(v155, &qword_100600DE0, &unk_1004C66D0);
          v150 = *(v43 + 16);
          v149 = *(v43 + 24);
          if (v150 >= v149 >> 1)
          {
            v43 = sub_1000183D4((v149 > 1), v150 + 1, 1, v43);
          }

          v36 = v157;
          *(v43 + 16) = v150 + 1;
          v151 = v43 + 56 * v150;
          *(v151 + 32) = v146;
          *(v151 + 40) = v148;
          strcpy((v151 + 48), "File a Radar");
          *(v151 + 61) = 0;
          *(v151 + 62) = -5120;
          *(v151 + 64) = 2;
          *(v151 + 72) = &unk_1004D0880;
          *(v151 + 80) = v144;
          goto LABEL_52;
        }

        (*(v112 + 8))(v136, v107);
        v113 = v155;
      }

      sub_100007214(v113, &qword_100600DE0, &unk_1004C66D0);
    }

    else
    {
    }

    v36 = v157;
LABEL_52:
    v42 = 0;
    v40 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 1;
    v41 = v156;
    goto LABEL_27;
  }

  if (a5 == 3)
  {
    v50 = v166;
    v161 = v15;
    v51 = v152 - v21;
    sub_1004BBDA4();
    v52 = v169;
    v162 = *(v169 + 16);
    (v162)(v20, v51, v18);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v53 = qword_100617118;
    sub_1004B6DF4();
    v165 = v53;
    v164 = sub_1004BBED4();
    v163 = v54;
    v55 = *(v52 + 8);
    v55(v51, v18);
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v169 = sub_1004B6CE4();
    v160 = v56;
    (*(v161 + 8))(v50, v167);
    sub_1004BBDA4();
    v57 = v162;
    (v162)(v20, v51, v18);
    sub_1004B6DF4();
    v58 = v165;
    v59 = sub_1004BBED4();
    v165 = v60;
    v55(v51, v18);
    sub_1004BBDA4();
    v57(v20, v51, v18);
    v42 = v59;
    sub_1004B6DF4();
    v36 = sub_1004BBED4();
    v41 = v61;
    v62 = v18;
    v40 = v165;
    v55(v51, v62);
    sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
    v43 = swift_allocObject();
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    *(v43 + 32) = v169;
    *(v43 + 40) = v160;
    *(v43 + 16) = xmmword_1004C50A0;
    *(v43 + 48) = v164;
    *(v43 + 56) = v163;
    *(v43 + 64) = 2;
    *(v43 + 72) = 0;
    *(v43 + 80) = 0;
    v49 = 1;
    goto LABEL_26;
  }

  v23 = v170;
  if (a5 != 4)
  {
    goto LABEL_10;
  }

  v24 = v152 - v21;
  if (v165 == 2)
  {
    v161 = v15;
    v76 = v152 - v21;
    sub_1004BBDA4();
    v77 = v169;
    v78 = *(v169 + 16);
    v78(v20, v24, v18);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v79 = qword_100617118;
    sub_1004B6DF4();
    v80 = v79;
    v160 = sub_1004BBED4();
    v165 = v81;
    v169 = *(v77 + 8);
    (v169)(v76, v18);
    sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1004C50A0;
    sub_1004BBDA4();
    v78(v20, v76, v18);
    sub_1004B6DF4();
    v82 = sub_1004BBED4();
    v84 = v83;
    v85 = v18;
    v40 = v165;
    (v169)(v76, v85);
    v86 = v166;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v87 = sub_1004B6CE4();
    v89 = v88;
    (*(v161 + 8))(v86, v167);
    v41 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    *(v43 + 32) = v87;
    *(v43 + 40) = v89;
    v42 = v160;
    *(v43 + 48) = v82;
    *(v43 + 56) = v84;
    v36 = 0;
    *(v43 + 64) = 0;
    v49 = 1;
    *(v43 + 72) = 0;
    *(v43 + 80) = 0;
    goto LABEL_26;
  }

  if (v165 != 3)
  {
    if (v165 == 4)
    {
      v161 = v15;
      sub_1004BBDA4();
      v25 = v169;
      v26 = *(v169 + 16);
      v26(v20, v24, v18);
      if (qword_1005FFD30 != -1)
      {
        swift_once();
      }

      v27 = qword_100617118;
      v28 = qword_100617118;
      v159 = v27;
      v29 = v28;
      sub_1004B6DF4();
      v165 = v29;
      v164 = sub_1004BBED4();
      v163 = v30;
      v158 = *(v25 + 8);
      (v158)(v24, v18);
      v31 = v166;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v169 = sub_1004B6CE4();
      v162 = v32;
      (*(v161 + 8))(v31, v167);
      sub_1004BBDA4();
      v26(v20, v24, v18);
      sub_1004B6DF4();
      v33 = v165;
      v160 = sub_1004BBED4();
      v165 = v34;
      v35 = v158;
      (v158)(v24, v18);
      sub_1004BBDA4();
      v26(v20, v24, v18);
      sub_1004B6DF4();
      v36 = sub_1004BBED4();
      v38 = v37;
      v39 = v18;
      v40 = v165;
      (v35)(v24, v39);
      v41 = v38;
      v42 = v160;
      sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
      v43 = swift_allocObject();
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      *(v43 + 32) = v169;
      *(v43 + 40) = v162;
      *(v43 + 16) = xmmword_1004C50A0;
      *(v43 + 48) = v164;
      *(v43 + 56) = v163;
      *(v43 + 64) = 2;
      *(v43 + 72) = 0;
      *(v43 + 80) = 0;
      v49 = 1;
      goto LABEL_27;
    }

LABEL_10:
    v42 = 0;
    v40 = 0;
    v36 = 0;
    v41 = 0;
    v44 = 0;
    v43 = 0;
    v45 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    goto LABEL_27;
  }

LABEL_19:
  v161 = v15;
  IsScreenProbablyBeingRecorded = FigOutputMonitorIsScreenProbablyBeingRecorded();
  v73 = (v169 + 16);
  v152[0] = v18;
  if (IsScreenProbablyBeingRecorded)
  {
    sub_1004BBDA4();
    v74 = *v73;
    (*v73)(v20, v24, v18);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v170 = qword_100617118;
    sub_1004B6DF4();
    v157 = sub_1004BBED4();
    v156 = v75;
    v165 = *(v169 + 8);
    v165(v24, v18);
    v160 = 0;
    v40 = 0;
    FigOutputMonitorIsScreenProbablyBeingRecorded();
  }

  else
  {
    sub_1004BBDA4();
    v114 = v20;
    v115 = *v73;
    (*v73)(v114, v24, v18);
    v159 = v73;
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v116 = qword_100617118;
    sub_1004B6DF4();
    v170 = v116;
    v157 = sub_1004BBED4();
    v156 = v117;
    v118 = *(v169 + 8);
    v118(v24, v18);
    sub_1004BBDA4();
    v115(v114, v24, v18);
    sub_1004B6DF4();
    v158 = v115;
    v20 = v114;
    v160 = sub_1004BBED4();
    v120 = v119;
    v121 = v18;
    v40 = v120;
    v165 = v118;
    v118(v24, v121);
    v74 = v158;
    FigOutputMonitorIsScreenProbablyBeingRecorded();
  }

  sub_1004BBDA4();
  v122 = v24;
  v74(v20, v24, v152[0]);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v123 = v170;
  sub_1004B6DF4();
  v124 = sub_1004BBED4();
  v126 = v125;
  v127 = v161;
  v165(v122, v152[0]);
  v128 = v166;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v129 = sub_1004B6CE4();
  v131 = v130;
  (*(v127 + 8))(v128, v167);
  sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1004C50A0;
  *(v43 + 32) = v129;
  *(v43 + 40) = v131;
  *(v43 + 48) = v124;
  *(v43 + 56) = v126;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v43 + 80) = 0;

  sub_100274D7C(v162, v163, v164, &v171);
  v132 = v172;
  if (v172)
  {
    v133 = v171;
    v178 = v173;
    v179 = v174;
    v180 = v175;
    v43 = sub_1000183D4(1, 2, 1, v43);

    *(v43 + 16) = 2;
    *(v43 + 88) = v133;
    *(v43 + 96) = v132;
    v134 = v179;
    *(v43 + 104) = v178;
    *(v43 + 120) = v134;
    *(v43 + 136) = v180;
  }

  else
  {
  }

  v36 = v157;
  v41 = v156;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 1;
  v42 = v160;
LABEL_27:
  *v23 = v42;
  v23[1] = v40;
  v23[2] = v36;
  v23[3] = v41;
  v23[4] = v48 | v47;
  v23[5] = v44;
  v23[6] = v46 | v49;
  v23[7] = v43;
  v23[8] = v45;
}

uint64_t static SharedListening.addIntent(_:playbackController:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[85] = a3;
  v3[84] = a2;
  v3[83] = a1;
  v3[86] = sub_1004BC474();
  v3[87] = sub_1004BC464();
  v5 = sub_1004BC3E4();
  v3[88] = v5;
  v3[89] = v4;

  return _swift_task_switch(sub_100270F08, v5, v4);
}

uint64_t sub_100270F08()
{
  v22 = v0;
  v1 = qword_100600140;
  v2 = *(v0 + 664);
  if (v1 == -1)
  {
    v3 = v2;
  }

  else
  {
    swift_once();
    v3 = *(v0 + 664);
  }

  v4 = sub_1004B80B4();
  *(v0 + 720) = sub_100007084(v4, static Logger.sharedListening);
  v5 = v3;
  v6 = sub_1004B8094();
  v7 = sub_1004BC9A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 664);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    *(v0 + 592) = v8;
    *(v0 + 600) = 1;
    v11 = v8;
    v12 = sub_1004BBF04();
    v14 = sub_100012018(v12, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Adding the intent to the player with command%{public}s", v9, 0xCu);
    sub_100004C6C(v10);
  }

  if (*(v0 + 672))
  {
    v15 = *(v0 + 664);
    *(v0 + 552) = &type metadata for Player.ReplaceCommand;
    *(v0 + 560) = &protocol witness table for Player.ReplaceCommand;
    *(v0 + 528) = v15;
    *(v0 + 536) = 1;
    v16 = v15;
    *(v0 + 728) = sub_1004BC464();
    v18 = sub_1004BC3E4();
    *(v0 + 736) = v18;
    *(v0 + 744) = v17;

    return _swift_task_switch(sub_100271184, v18, v17);
  }

  else
  {

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100271184()
{
  sub_100003ABC(&unk_100606020, &unk_1004C8190);
  v1 = swift_allocObject();
  v0[94] = v1;
  *(v1 + 16) = xmmword_1004C50A0;
  sub_10001342C((v0 + 66), v1 + 32);
  v0[95] = sub_1004BC464();
  v2 = swift_task_alloc();
  v0[96] = v2;
  *v2 = v0;
  v2[1] = sub_100271284;
  v3 = v0[85];

  return sub_1001E4818(v1, 0x10000, 1, 0, 0, v3);
}

uint64_t sub_100271284(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 784) = v1;

  if (v1)
  {

    v4 = sub_1004BC3E4();
    v6 = v5;
    v7 = sub_100271580;
  }

  else
  {
    v4 = sub_1004BC3E4();
    v6 = v8;
    v7 = sub_100271400;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100271400()
{

  v1 = *(v0 + 744);
  v2 = *(v0 + 736);

  return _swift_task_switch(sub_100271474, v2, v1);
}

uint64_t sub_100271474()
{
  v1 = v0[97];

  if (v1 >> 62)
  {
    v4 = sub_1004BD6A4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_100004C6C(v0 + 66);
    v3 = v0[89];
    v2 = v0[88];
    v6 = sub_100271DA8;
    goto LABEL_9;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1004BD484();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v4, v2, v3);
    }

    v5 = *(v0[97] + 32);
  }

  v0[99] = v5;

  sub_100004C6C(v0 + 66);
  v3 = v0[89];
  v2 = v0[88];
  v6 = sub_1002719AC;
LABEL_9:
  v4 = v6;

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_100271580()
{

  v1 = *(v0 + 744);
  v2 = *(v0 + 736);

  return _swift_task_switch(sub_1002715E8, v2, v1);
}

uint64_t sub_1002715E8()
{

  v1 = *(v0 + 712);
  v2 = *(v0 + 704);

  return _swift_task_switch(sub_100271650, v2, v1);
}

uint64_t sub_100271650()
{
  sub_100004C6C(v0 + 66);
  v0[76] = v0[98];
  swift_errorRetain();
  sub_100003ABC(&qword_100604C30, &qword_1004C8490);
  type metadata accessor for MPCPlayerRequestError(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v1 = v0[77];
  v0[100] = v1;
  v0[78] = v1;
  sub_1002780B8(&unk_100606280, type metadata accessor for MPCPlayerRequestError, &unk_1004C65B0);
  sub_1004B6964();
  if (v0[79] != 1001)
  {

LABEL_9:
    v11 = v0[83];

    swift_willThrow();

    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_1004B69A4();

  v4 = [v3 msv_errorByUnwrappingDomain:MPCErrorDomain];
  v0[101] = v4;

  if (v4)
  {
    swift_getErrorValue();
    if (sub_1004BDB14() == 58)
    {
      v5 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
      v6 = objc_allocWithZone(MPAVRoutingController);
      v7 = sub_1004BBE24();
      v8 = [v6 initWithDataSource:v5 name:v7];
      v0[102] = v8;

      v0[2] = v0;
      v0[7] = v0 + 81;
      v0[3] = sub_100271EC0;
      v9 = swift_continuation_init();
      v10 = sub_100003ABC(&qword_100609148, &qword_1004D7C98);
      v0[103] = v10;
      v0[41] = v10;
      v0[34] = _NSConcreteStackBlock;
      v0[35] = 1107296256;
      v0[36] = sub_100273C88;
      v0[37] = &unk_1005BC7B0;
      v0[38] = v9;
      [v8 getActiveRouteWithTimeout:v0 + 34 completion:2.0];

      return _swift_continuation_await(v0 + 2);
    }
  }

  v13 = v0[83];

  swift_willThrow();

LABEL_10:
  v12 = v0[1];

  return v12();
}

uint64_t sub_1002719AC()
{
  v1 = [*(v0 + 792) error];
  if (!v1)
  {
    v1 = [*(v0 + 792) dialog];
    if (!v1)
    {
      v17 = *(v0 + 792);
      v18 = *(v0 + 664);

      v16 = *(v0 + 8);
      goto LABEL_13;
    }
  }

  v2 = *(v0 + 792);

  sub_10026AF20();
  v3 = swift_allocError();
  *v4 = v2;
  *(v4 + 8) = 2;
  swift_willThrow();

  *(v0 + 608) = v3;
  swift_errorRetain();
  sub_100003ABC(&qword_100604C30, &qword_1004C8490);
  type metadata accessor for MPCPlayerRequestError(0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 616);
    *(v0 + 800) = v5;
    *(v0 + 624) = v5;
    sub_1002780B8(&unk_100606280, type metadata accessor for MPCPlayerRequestError, &unk_1004C65B0);
    sub_1004B6964();
    if (*(v0 + 632) == 1001)
    {

      v6 = v5;
      v7 = sub_1004B69A4();

      v8 = [v7 msv_errorByUnwrappingDomain:MPCErrorDomain];
      *(v0 + 808) = v8;

      if (v8)
      {
        swift_getErrorValue();
        if (sub_1004BDB14() == 58)
        {
          v9 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
          v10 = objc_allocWithZone(MPAVRoutingController);
          v11 = sub_1004BBE24();
          v12 = [v10 initWithDataSource:v9 name:v11];
          *(v0 + 816) = v12;

          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 648;
          *(v0 + 24) = sub_100271EC0;
          v13 = swift_continuation_init();
          v14 = sub_100003ABC(&qword_100609148, &qword_1004D7C98);
          *(v0 + 824) = v14;
          *(v0 + 328) = v14;
          *(v0 + 272) = _NSConcreteStackBlock;
          *(v0 + 280) = 1107296256;
          *(v0 + 288) = sub_100273C88;
          *(v0 + 296) = &unk_1005BC7B0;
          *(v0 + 304) = v13;
          [v12 getActiveRouteWithTimeout:v0 + 272 completion:2.0];

          return _swift_continuation_await(v0 + 16);
        }
      }

      v19 = *(v0 + 664);

      swift_willThrow();

      goto LABEL_12;
    }
  }

  v15 = *(v0 + 664);

  swift_willThrow();

LABEL_12:
  v16 = *(v0 + 8);
LABEL_13:

  return v16();
}

uint64_t sub_100271DA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100271E18()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100271EC0()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);

  return _swift_task_switch(sub_100271FC8, v2, v1);
}

uint64_t sub_100271FC8(uint64_t a1, uint64_t a2)
{
  v3 = v2[81];
  v2[104] = v3;
  v4 = objc_opt_self();
  v2[105] = v4;
  v5 = v3;
  v6 = [v4 systemRoute];
  v7 = v6;
  if (!v3)
  {
    if (!v6)
    {
      goto LABEL_6;
    }

LABEL_10:

LABEL_11:
    v14 = sub_1004B8094();
    v15 = sub_1004BC9A4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "SharedListening requires system route, switching…", v16, 2u);
    }

    v2[10] = v2;
    v2[11] = sub_100272254;
    v17 = swift_continuation_init();
    v18 = sub_100003ABC(&unk_100606750, &unk_1004CCB28);
    v2[106] = v18;
    v2[49] = v18;
    v2[42] = _NSConcreteStackBlock;
    v2[43] = 1107296256;
    v2[44] = sub_1000DB4B0;
    v2[45] = &unk_1005BC7D8;
    v2[46] = v17;
    [v4 setActiveRoute:0 completion:v2 + 42];

    return _swift_continuation_await(v2 + 10);
  }

  if (!v6)
  {
    v7 = v5;
    goto LABEL_10;
  }

  sub_100009130(0, &qword_100607018, MPAVRoute_ptr);
  v8 = sub_1004BCFA4();

  if ((v8 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v9 = v2[102];
  v10 = v2[101];
  v11 = v2[83];

  swift_willThrow();

  v12 = v2[1];

  return v12();
}

uint64_t sub_100272254()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 856) = v2;
  v3 = *(v1 + 712);
  v4 = *(v1 + 704);
  if (v2)
  {
    v5 = sub_100272BEC;
  }

  else
  {
    v5 = sub_100272384;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100272384()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 816);
  v3 = [*(v0 + 840) systemRoute];
  *(v0 + 864) = v3;
  *(v0 + 144) = v0;
  *(v0 + 152) = sub_1002724B4;
  v4 = swift_continuation_init();
  *(v0 + 456) = v1;
  *(v0 + 400) = _NSConcreteStackBlock;
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = sub_1000DB4B0;
  *(v0 + 424) = &unk_1005BC800;
  *(v0 + 432) = v4;
  [v2 selectRoute:v3 operation:0 completion:v0 + 400];

  return _swift_continuation_await(v0 + 144);
}

uint64_t sub_1002724B4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 872) = v2;
  v3 = *(v1 + 712);
  v4 = *(v1 + 704);
  if (v2)
  {
    v5 = sub_100272CA0;
  }

  else
  {
    v5 = sub_1002725E4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002725E4()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);

  *(v0 + 208) = v0;
  *(v0 + 248) = v0 + 656;
  *(v0 + 216) = sub_100272700;
  v3 = swift_continuation_init();
  *(v0 + 520) = v1;
  *(v0 + 464) = _NSConcreteStackBlock;
  *(v0 + 472) = 1107296256;
  *(v0 + 480) = sub_100273C88;
  *(v0 + 488) = &unk_1005BC828;
  *(v0 + 496) = v3;
  [v2 getActiveRouteWithTimeout:v0 + 464 completion:2.0];

  return _swift_continuation_await(v0 + 208);
}

uint64_t sub_100272700()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);

  return _swift_task_switch(sub_100272808, v2, v1);
}

uint64_t sub_100272808()
{
  v1 = *(v0 + 656);
  *(v0 + 880) = v1;
  v2 = v1;
  v3 = sub_1004B8094();
  v4 = sub_1004BC9A4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v1;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "active route=%@", v5, 0xCu);
    sub_100007214(v6, &qword_100602710, &qword_1004CB540);
  }

  v8 = *(v0 + 840);

  v9 = [v8 systemRoute];
  v10 = v9;
  if (!v1)
  {
    v11 = v9;
    if (!v9)
    {
LABEL_12:
      v20 = swift_task_alloc();
      *(v0 + 888) = v20;
      *v20 = v0;
      v20[1] = sub_100272AB0;
      v21 = *(v0 + 680);
      v22 = *(v0 + 672);
      v23 = *(v0 + 664);

      return static SharedListening.addIntent(_:playbackController:issuer:)(v23, v22, v21);
    }

    goto LABEL_8;
  }

  v11 = v2;
  if (!v9)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_100009130(0, &qword_100607018, MPAVRoute_ptr);
  v12 = sub_1004BCFA4();

  if (v12)
  {
    goto LABEL_12;
  }

LABEL_9:
  v13 = *(v0 + 816);
  v14 = *(v0 + 808);
  v15 = *(v0 + 800);
  v16 = *(v0 + 664);

  sub_10026AF20();
  swift_allocError();
  *v17 = 4;
  *(v17 + 8) = 4;
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100272AB0()
{
  v2 = *v1;
  *(*v1 + 896) = v0;

  v3 = *(v2 + 712);
  v4 = *(v2 + 704);
  if (v0)
  {
    v5 = sub_100272D5C;
  }

  else
  {
    v5 = sub_100271E18;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100272BEC()
{
  v1 = v0[104];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[83];

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100272CA0()
{
  v1 = v0[108];
  v2 = v0[104];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[83];

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100272D5C()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);

  v5 = *(v0 + 8);

  return v5();
}

BOOL static SharedListening.isModelObjectTypeSupported(_:)(uint64_t a1)
{
  if (qword_100600130 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *(off_100609130 + 2);
  v2 = (off_100609130 + 32);
  do
  {
    v3 = v1;
    if (v1-- == 0)
    {
      break;
    }

    v5 = *v2++;
  }

  while (v5 != a1);
  return v3 != 0;
}

void __swiftcall SharedListening.Reaction.init(id:emoji:senderID:)(MusicCore::SharedListening::Reaction *__return_ptr retstr, Swift::String_optional id, Swift::String emoji, Swift::String_optional senderID)
{
  object = senderID.value._object;
  countAndFlagsBits = senderID.value._countAndFlagsBits;
  v6 = emoji._object;
  v7 = emoji._countAndFlagsBits;
  v8 = id.value._object;
  v9 = id.value._countAndFlagsBits;
  v11 = sub_1004B6D14();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v8)
  {
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v9 = sub_1004B6CE4();
    v8 = v15;
    (*(v12 + 8))(v14, v11);
  }

  retstr->id._countAndFlagsBits = v9;
  retstr->id._object = v8;
  retstr->emoji._countAndFlagsBits = v7;
  retstr->emoji._object = v6;
  retstr->senderID.value._countAndFlagsBits = countAndFlagsBits;
  retstr->senderID.value._object = object;
}

uint64_t sub_100272FA0()
{
  v1 = 0x696A6F6D65;
  if (*v0 != 1)
  {
    v1 = 0x44497265646E6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100272FEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100277790(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100273014(uint64_t a1)
{
  v2 = sub_10027773C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100273050(uint64_t a1)
{
  v2 = sub_10027773C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SharedListening.Reaction.encode(to:)(void *a1)
{
  v3 = sub_100003ABC(&qword_100609150, &qword_1004D7CA0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8[-v5];
  sub_100009178(a1, a1[3]);
  sub_10027773C();
  sub_1004BDC44();
  v8[15] = 0;
  sub_1004BD854();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1004BD854();
  v8[13] = 2;
  sub_1004BD834();
  return (*(v4 + 8))(v6, v3);
}

void SharedListening.Reaction.hash(into:)(uint64_t a1)
{
  sub_1004BBF84();
  sub_1004BBF84();
  if (*(v1 + 40))
  {
    sub_1004BDBC4(1u);

    sub_1004BBF84();
  }

  else
  {
    sub_1004BDBC4(0);
  }
}

Swift::Int SharedListening.Reaction.hashValue.getter()
{
  sub_1004BDBA4();
  sub_1004BBF84();
  sub_1004BBF84();
  if (*(v0 + 40))
  {
    sub_1004BDBC4(1u);
    sub_1004BBF84();
  }

  else
  {
    sub_1004BDBC4(0);
  }

  return sub_1004BDBF4();
}

double SharedListening.Reaction.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10027789C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

Swift::Int sub_1002733A8()
{
  v1 = *(v0 + 40);
  sub_1004BDBA4();
  sub_1004BBF84();
  sub_1004BBF84();
  if (v1)
  {
    sub_1004BDBC4(1u);
    sub_1004BBF84();
  }

  else
  {
    sub_1004BDBC4(0);
  }

  return sub_1004BDBF4();
}

void sub_100273450(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_1004BBF84();
  sub_1004BBF84();
  if (v2)
  {
    sub_1004BDBC4(1u);

    sub_1004BBF84();
  }

  else
  {
    sub_1004BDBC4(0);
  }
}

Swift::Int sub_1002734EC()
{
  v1 = *(v0 + 40);
  sub_1004BDBA4();
  sub_1004BBF84();
  sub_1004BBF84();
  if (v1)
  {
    sub_1004BDBC4(1u);
    sub_1004BBF84();
  }

  else
  {
    sub_1004BDBC4(0);
  }

  return sub_1004BDBF4();
}

uint64_t sub_100273590(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s9MusicCore15SharedListeningO8ReactionV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8) & 1;
}

void sub_1002735D8()
{
  sub_100003ABC(&qword_100604210, &unk_1004D4030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50B0;
  *(inited + 32) = sub_1004BBE64();
  *(inited + 40) = v1;
  sub_100003ABC(&unk_1006040A0, &unk_1004CF310);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004C50A0;
  *(v2 + 32) = sub_1004BBE64();
  *(v2 + 40) = v3;
  isa = sub_1004BC284().super.isa;

  v5 = objc_opt_self();
  v6 = [v5 propertySetWithProperties:isa];

  *(inited + 48) = v6;
  *(inited + 56) = sub_1004BBE64();
  *(inited + 64) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004C50A0;
  *(v8 + 32) = sub_1004BBE64();
  *(v8 + 40) = v9;
  v10 = sub_1004BC284().super.isa;

  v11 = [v5 propertySetWithProperties:v10];

  *(inited + 72) = v11;
  *(inited + 80) = sub_1004BBE64();
  *(inited + 88) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004C50A0;
  *(v13 + 32) = sub_1004BBE64();
  *(v13 + 40) = v14;
  v15 = sub_1004BC284().super.isa;

  v16 = [v5 propertySetWithProperties:v15];

  *(inited + 96) = v16;
  *(inited + 104) = sub_1004BBE64();
  *(inited + 112) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004C50A0;
  *(v18 + 32) = sub_1004BBE64();
  *(v18 + 40) = v19;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1004C50A0;
  *(v20 + 32) = sub_1004BBE64();
  *(v20 + 40) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1004C50A0;
  *(v22 + 32) = sub_1004BBE64();
  *(v22 + 40) = v23;
  v24 = sub_1004BC284().super.isa;

  v25 = [v5 propertySetWithProperties:v24];

  *(v20 + 48) = v25;
  sub_10003D14C(v20);
  swift_setDeallocating();
  sub_100007214(v20 + 32, &qword_100604218, qword_1004CEE50);
  v26 = objc_allocWithZone(MPPropertySet);
  v27 = sub_1004BC284().super.isa;

  sub_100009130(0, &qword_100605EC0, MPPropertySet_ptr);
  v28 = sub_1004BBC24().super.isa;

  v29 = [v26 initWithProperties:v27 relationships:v28];

  *(inited + 120) = v29;
  sub_10003D14C(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_100604218, qword_1004CEE50);
  swift_arrayDestroy();
  v30 = objc_allocWithZone(MPPropertySet);
  v31 = sub_1004BC284().super.isa;
  v32 = sub_1004BBC24().super.isa;

  v33 = [v30 initWithProperties:v31 relationships:v32];

  static SharedListening.Event.properties = v33;
}

id static SharedListening.Event.properties.getter()
{
  if (qword_100600128 != -1)
  {
    swift_once();
  }

  v1 = static SharedListening.Event.properties;

  return v1;
}

uint64_t sub_100273AC0()
{
  sub_100274BF8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C50D0;
  *(v0 + 32) = sub_100009130(0, &qword_100609188, MPModelAlbum_ptr);
  *(v0 + 40) = sub_100009130(0, &qword_100609190, MPModelSong_ptr);
  *(v0 + 48) = sub_100009130(0, &qword_100602E00, MPModelPlaylist_ptr);
  *(v0 + 56) = sub_100009130(0, qword_100602E08, MPModelRadioStation_ptr);
  result = sub_100009130(0, &qword_100609198, MPModelArtist_ptr);
  *(v0 + 64) = result;
  off_100609130 = v0;
  return result;
}

void *sub_100273BA0()
{
  result = sub_100273BC0();
  off_100609138 = result;
  return result;
}

uint64_t sub_100273BC0()
{
  sub_100003ABC(&qword_1006091D0, &qword_1004D8340);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C5220;
  *(v0 + 32) = sub_1004BB434();
  *(v0 + 40) = &protocol witness table for Album;
  *(v0 + 48) = sub_1004BB384();
  *(v0 + 56) = &protocol witness table for Song;
  *(v0 + 64) = sub_1004BAD04();
  *(v0 + 72) = &protocol witness table for MusicVideo;
  *(v0 + 80) = sub_1004BBA84();
  *(v0 + 88) = &protocol witness table for Playlist;
  *(v0 + 96) = sub_1004BB744();
  *(v0 + 104) = &protocol witness table for Station;
  *(v0 + 112) = sub_1004BB564();
  *(v0 + 120) = &protocol witness table for Artist;
  return v0;
}

uint64_t sub_100273C88(uint64_t a1, void *a2)
{
  **(*(*sub_100009178((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t sub_100273CEC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*sub_100009178((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v5 = a2;
  v5[1] = a3;
  v6 = a2;
  v7 = a3;

  return swift_continuation_resume();
}

uint64_t sub_100273D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_100273E04, 0, 0);
}

uint64_t sub_100273E04()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    *(v0 + 88) = v1;
    *(v0 + 96) = 3;
    v2 = &protocol witness table for Player.ReplaceCommand;
    v3 = &type metadata for Player.ReplaceCommand;
    v22 = v1;
  }

  else
  {
    v22 = 0;
    *(v0 + 88) = 0;
    v2 = &protocol witness table for Player.PlaybackCommand;
    v3 = &type metadata for Player.PlaybackCommand;
  }

  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  *(v0 + 112) = v3;
  *(v0 + 120) = v2;
  v9 = sub_1004BC4B4();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_10001342C(v0 + 88, v0 + 128);
  *(v0 + 168) = *v8;
  *(v0 + 184) = v8[1];
  v10 = *(v8 + 6);
  v21 = *(v8 + 5);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v1;
  *(v11 + 40) = v6;
  *(v11 + 48) = v5;
  *(v11 + 56) = v1 == 0;
  sub_100089BAC((v0 + 128), v11 + 64);
  v12 = *v8;
  v13 = v8[1];
  v14 = v8[2];
  *(v11 + 152) = *(v8 + 6);
  *(v11 + 136) = v14;
  *(v11 + 120) = v13;
  *(v11 + 104) = v12;
  *(v11 + 160) = *v7;
  v15 = *(v7 + 64);
  v17 = *(v7 + 32);
  v16 = *(v7 + 48);
  *(v11 + 176) = *(v7 + 16);
  *(v11 + 192) = v17;
  *(v11 + 208) = v16;
  *(v11 + 224) = v15;

  v18 = v22;

  sub_100013D04(v0 + 168, v0 + 200);
  sub_100013D04(v0 + 184, v0 + 216);
  sub_10002F518(v21, v10);
  sub_10000F778(v7, v0 + 16, &qword_100602B60, &qword_1004D0580);
  sub_1001FA838(0, 0, v4, &unk_1004D8360, v11);

  sub_100004C6C((v0 + 88));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100274040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 152) = v10;
  *(v8 + 160) = v11;
  *(v8 + 136) = a6;
  *(v8 + 144) = a8;
  *(v8 + 192) = a7;
  *(v8 + 128) = a5;
  return _swift_task_switch(sub_100274074, 0, 0);
}

uint64_t sub_100274074()
{
  if (*(v0 + 128))
  {
    v1 = swift_task_alloc();
    *(v0 + 168) = v1;
    *v1 = v0;
    v1[1] = sub_100274284;
    v2 = *(v0 + 192);

    return GroupActivitiesManager.leave(performLeaveCommand:)(v2);
  }

  else if (*(v0 + 136))
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v6 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    v9 = v4[3];
    v10 = v4[5];
    v11 = v4[6];

    sub_10002F518(v10, v11);
    sub_10000F778(v5, v0 + 16, &qword_100602B60, &qword_1004D0580);
    v12 = sub_1001FA588(v6, v7, v8, v9, v10, v11, v5);
    *(v0 + 112) = &type metadata for Alert.ActionCommandIssuingContext;
    *(v0 + 120) = &protocol witness table for Alert.ActionCommandIssuingContext;
    *(v0 + 88) = v12;
    *(v0 + 96) = v13;
    v14 = swift_task_alloc();
    *(v0 + 176) = v14;
    *v14 = v0;
    v14[1] = sub_10027450C;
    v15 = *(v0 + 144);

    return Player.perform(_:options:issuer:)(v15, 0, 0, 0, v0 + 88);
  }

  else
  {
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100274284()
{

  return _swift_task_switch(sub_100274380, 0, 0);
}

uint64_t sub_100274380()
{
  if (v0[17])
  {
    v1 = v0[19];
    v2 = v0[20];
    v3 = *v1;
    v4 = v1[1];
    v5 = v1[2];
    v6 = v1[3];
    v7 = v1[5];
    v8 = v1[6];

    sub_10002F518(v7, v8);
    sub_10000F778(v2, (v0 + 2), &qword_100602B60, &qword_1004D0580);
    v9 = sub_1001FA588(v3, v4, v5, v6, v7, v8, v2);
    v0[14] = &type metadata for Alert.ActionCommandIssuingContext;
    v0[15] = &protocol witness table for Alert.ActionCommandIssuingContext;
    v0[11] = v9;
    v0[12] = v10;
    v11 = swift_task_alloc();
    v0[22] = v11;
    *v11 = v0;
    v11[1] = sub_10027450C;
    v12 = v0[18];

    return Player.perform(_:options:issuer:)(v12, 0, 0, 0, (v0 + 11));
  }

  else
  {
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_10027450C(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100274674, 0, 0);
  }

  else
  {

    sub_100007214(v4 + 88, &qword_100601C48, &unk_1004D50E0);
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100274674()
{
  sub_100007214(v0 + 88, &qword_100601C48, &unk_1004D50E0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002746E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, static Logger.sharedListening);
  sub_100007084(v2, static Logger.sharedListening);
  return sub_1004B80A4();
}

uint64_t static Logger.sharedListening.getter@<X0>(uint64_t a2@<X8>)
{
  if (qword_100600140 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  v4 = sub_100007084(v3, static Logger.sharedListening);
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, v4, v3);
}

uint64_t sub_100274814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100274834, 0, 0);
}

uint64_t sub_100274834()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    v1();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002748E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  return _swift_task_switch(sub_100274904, 0, 0);
}

uint64_t sub_100274904(uint64_t a1, uint64_t a2)
{
  v4 = v2[9];
  v3 = v2[10];
  v5 = v2[8];
  v6 = objc_opt_self();
  v7 = [v5 commandRequest];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v3;
  v2[6] = sub_1002783E8;
  v2[7] = v8;
  v2[2] = _NSConcreteStackBlock;
  v2[3] = 1107296256;
  v2[4] = sub_1001460EC;
  v2[5] = &unk_1005BCD78;
  v9 = _Block_copy(v2 + 2);
  v10 = v5;
  sub_10002F518(v4, v3);

  [v6 performRequest:v7 completion:v9];
  _Block_release(v9);

  v11 = v2[1];

  return v11();
}

uint64_t sub_100274A6C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001384C;

  return sub_1002748E0(a1, a2, v6, v7, v8);
}

void sub_100274B2C(uint64_t a1, id a2, void (*a3)(uint64_t))
{
  if ([a2 type] == 1)
  {
    if (a3)
    {
      v5 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
      (a3)();
    }
  }

  else if (a3)
  {
    a3(a1);
  }
}

uint64_t sub_100274BF8()
{
  v0 = sub_100003ABC(&qword_1006091A0, &qword_1004D8288);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1006091A8;
    v3 = &unk_1004D8290;
  }

  else
  {
    v2 = &qword_100603C50;
    v3 = &unk_1004CB550;
  }

  return sub_100003ABC(v2, v3);
}

void sub_100274C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {

    sub_10003CC4C(a6, a7);
  }
}

uint64_t _s9MusicCore15SharedListeningO8ReactionV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1004BD9C4() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1004BD9C4() & 1) != 0)
    {
      v6 = a1[5];
      v7 = a2[5];
      if (v6)
      {
        if (v7 && (a1[4] == a2[4] && v6 == v7 || (sub_1004BD9C4() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_100274D7C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v35 = a3;
  v36 = a2;
  v6 = sub_1004B6D14();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v10 = sub_1004BBE14();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v32 - v14;
  if (FigOutputMonitorIsScreenProbablyBeingRecorded())
  {
    if (qword_100600140 != -1)
    {
      swift_once();
    }

    v16 = sub_1004B80B4();
    sub_100007084(v16, static Logger.sharedListening);
    v17 = sub_1004B8094();
    v18 = sub_1004BC9A4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Play locally action is NOT available because of screen sharing", v19, 2u);
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v33 = v6;
    v34 = v7;
    sub_1004BBDA4();
    (*(v11 + 16))(v13, v15, v10);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v27 = qword_100617118;
    sub_1004B6DF4();
    v22 = sub_1004BBED4();
    v23 = v28;
    (*(v11 + 8))(v15, v10);
    v26 = swift_allocObject();
    v29 = v36;
    v26[2] = a1;
    v26[3] = v29;
    v26[4] = v35;

    v30 = a1;

    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v20 = sub_1004B6CE4();
    v21 = v31;
    (*(v34 + 8))(v9, v33);
    v25 = &unk_1004D8350;
    v24 = 2;
  }

  *a4 = v20;
  a4[1] = v21;
  a4[2] = v22;
  a4[3] = v23;
  a4[4] = v24;
  a4[5] = v25;
  a4[6] = v26;
}

uint64_t sub_100275154()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100275194(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001384C;

  return sub_100274814(a1, a2, v7, v6);
}

void sub_100275244(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 type];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v28 = [v2 sessionEvent];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 kind];

        if (v30 == 4)
        {

          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 5;
          v12 = 2;
          goto LABEL_83;
        }

        if (v30 == 1)
        {

          v12 = 0;
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 5;
          goto LABEL_83;
        }
      }

      if (qword_100600140 != -1)
      {
        swift_once();
      }

      v38 = sub_1004B80B4();
      sub_100007084(v38, static Logger.sharedListening);
      v20 = v2;
      v2 = sub_1004B8094();
      v21 = sub_1004BC964();

      if (os_log_type_enabled(v2, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v82 = v23;
        *v22 = 136446210;
        v39 = [v20 sessionEvent];
        v40 = v39;
        if (v39)
        {
          v41 = [v39 kind];
        }

        else
        {
          v41 = 0;
        }

        v80 = v41;
        v81 = v40 == 0;
        sub_100003ABC(&qword_1006091C8, &qword_1004D8338);
        v59 = sub_1004BBF04();
        v61 = sub_100012018(v59, v60, &v82);

        *(v22 + 4) = v61;
        v27 = "Unknown session event kind: %{public}s";
        goto LABEL_59;
      }

LABEL_46:

LABEL_47:
LABEL_60:
      v12 = 0;
      goto LABEL_61;
    }

    if (v4 == 2)
    {
      v5 = [v2 playbackEvent];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 kind];

        if (v7 > 2)
        {
          if (v7 == 3)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 1;
            goto LABEL_83;
          }

          if (v7 == 4)
          {
            v42 = [v2 playbackEvent];
            if (v42)
            {
              v43 = v42;
              v44 = [v42 item];

              if (v44)
              {
                v45 = [v44 innermostModelObject];

                objc_opt_self();
                v46 = swift_dynamicCastObjCClass();
                v44 = v46;
                if (v46)
                {
                  v47 = [v46 title];
                  if (v47)
                  {
                    v48 = v47;
                    v12 = sub_1004BBE64();
                    v8 = v49;

                    v9 = 0;
                    v10 = 0;
                    v11 = 2;
                    goto LABEL_83;
                  }
                }

                else
                {
                }
              }
            }

            else
            {
              v44 = 0;
            }

            v12 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 2;
            v8 = 0xE000000000000000;
            goto LABEL_83;
          }
        }

        else
        {
          if (v7 == 1)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 4;
            goto LABEL_83;
          }

          if (v7 == 2)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 3;
LABEL_83:
            *a2 = v12;
            *(a2 + 8) = v8;
            *(a2 + 16) = v9;
            *(a2 + 24) = v10;
            *(a2 + 32) = 0;
            *(a2 + 40) = 0;
            *(a2 + 48) = v11;
            return;
          }
        }
      }

      if (qword_100600140 != -1)
      {
        swift_once();
      }

      v50 = sub_1004B80B4();
      sub_100007084(v50, static Logger.sharedListening);
      v20 = v2;
      v2 = sub_1004B8094();
      v21 = sub_1004BC964();

      if (os_log_type_enabled(v2, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v82 = v23;
        *v22 = 136446210;
        v51 = [v20 playbackEvent];
        v52 = v51;
        if (v51)
        {
          v53 = [v51 kind];
        }

        else
        {
          v53 = 0;
        }

        v80 = v53;
        v81 = v52 == 0;
        sub_100003ABC(&qword_1006091C0, &qword_1004D8330);
        v62 = sub_1004BBF04();
        v64 = sub_100012018(v62, v63, &v82);

        *(v22 + 4) = v64;
        v27 = "Unknown playback event kind: %{public}s";
        goto LABEL_59;
      }

      goto LABEL_46;
    }

LABEL_13:
    if (qword_100600140 != -1)
    {
      swift_once();
    }

    v19 = sub_1004B80B4();
    sub_100007084(v19, static Logger.sharedListening);
    v20 = v2;
    v2 = sub_1004B8094();
    v21 = sub_1004BC964();

    if (os_log_type_enabled(v2, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v80 = v23;
      *v22 = 136446210;
      v82 = [v20 type];
      type metadata accessor for MPCSharedListeningEventType(0);
      v24 = sub_1004BBF04();
      v26 = sub_100012018(v24, v25, &v80);

      *(v22 + 4) = v26;
      v27 = "Unknown event type: %{public}s";
LABEL_59:
      _os_log_impl(&_mh_execute_header, v2, v21, v27, v22, 0xCu);
      sub_100004C6C(v23);

      goto LABEL_60;
    }

    goto LABEL_46;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      v13 = [v2 reactionEvent];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 reactionIdentifier];
        v12 = sub_1004BBE64();
        v8 = v16;

        v17 = [v14 reaction];
        v9 = sub_1004BBE64();
        v10 = v18;

        v11 = 1;
        goto LABEL_83;
      }

      goto LABEL_47;
    }

    goto LABEL_13;
  }

  v31 = [v2 queueEvent];
  if (!v31)
  {
    goto LABEL_81;
  }

  v32 = v31;
  v33 = [v31 kind];

  if (v33 != 1)
  {
    if (v33 != 7)
    {
      if (v33 == 6)
      {
        v34 = [v2 queueEvent];
        if (v34)
        {
          v35 = v34;
          v12 = [v34 playedNowContent];

          if (v12)
          {
            v36 = [v12 startItem];
            v37 = [v36 innermostModelObject];

            objc_opt_self();
            v12 = swift_dynamicCastObjCClass();
            if (v12)
            {
              v8 = 0;
              v9 = 0;
              v10 = 0;
              v11 = 3;
              goto LABEL_83;
            }
          }

          else
          {
          }

LABEL_61:
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = -1;
          goto LABEL_83;
        }

        goto LABEL_47;
      }

      goto LABEL_81;
    }

LABEL_77:
    v71 = [v2 queueEvent];
    if (v71)
    {
      v72 = v71;
      v73 = [v71 contentUpdatedMessage];

      if (v73)
      {
        v74 = [v73 localizedTitle];
        if (v74)
        {
          v75 = v74;
          v12 = sub_1004BBE64();
          v8 = v76;
        }

        else
        {
          v12 = 0;
          v8 = 0;
        }

        v77 = [v73 localizedMessage];
        if (v77)
        {
          v78 = v77;
          v9 = sub_1004BBE64();
          v10 = v79;
        }

        else
        {

          v9 = 0;
          v10 = 0;
        }

        v11 = 4;
        goto LABEL_83;
      }
    }

LABEL_81:

    v12 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 4;
    goto LABEL_82;
  }

  v54 = [v2 queueEvent];
  if (!v54)
  {
    goto LABEL_77;
  }

  v55 = v54;
  v56 = [v54 addedContent];

  if (!v56)
  {
    goto LABEL_77;
  }

  v57 = [v56 container];
  if (v57)
  {
    v58 = v57;
    v12 = [v57 innermostModelObject];

    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_82:
    v8 = 1;
    goto LABEL_83;
  }

  v65 = [v56 items];
  sub_100009130(0, &qword_1006091B8, MPModelGenericObject_ptr);
  v66 = sub_1004BC2A4();

  if (!(v66 >> 62))
  {
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_66;
    }

LABEL_76:

    goto LABEL_77;
  }

  if (!sub_1004BD6A4())
  {
    goto LABEL_76;
  }

LABEL_66:
  if ((v66 & 0xC000000000000001) != 0)
  {
    v67 = sub_1004BD484();
    goto LABEL_69;
  }

  if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v67 = *(v66 + 32);
LABEL_69:
    v68 = v67;

    v69 = [v68 innermostModelObject];

    objc_opt_self();
    v70 = swift_dynamicCastObjCClass();
    if (v70)
    {
      v12 = v70;

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_83;
    }

    goto LABEL_77;
  }

  __break(1u);
}

uint64_t sub_100275D14(uint64_t a1, uint64_t a2)
{
  if (qword_100600140 != -1)
  {
    swift_once();
  }

  v3 = v2[20];
  v4 = sub_1004B80B4();
  v2[21] = sub_100007084(v4, static Logger.sharedListening);
  v5 = v3;
  v6 = sub_1004B8094();
  v7 = sub_1004BC9A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v2[20];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    *(v9 + 4) = v8;
    *v10 = v8;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v6, v7, "🏗 Building session with intent=%{public}@", v9, 0xCu);
    sub_100007214(v10, &qword_100602710, &qword_1004CB540);
  }

  v12 = objc_allocWithZone(ICLiveLinkIdentity);
  v2[14] = CFRange.init(_:);
  v2[15] = 0;
  v2[10] = _NSConcreteStackBlock;
  v2[11] = 1107296256;
  v2[12] = sub_10011FE68;
  v2[13] = &unk_1005BCC88;
  v13 = _Block_copy(v2 + 10);
  v14 = [v12 initWithBlock:v13];
  v2[22] = v14;
  _Block_release(v13);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v16 = v2[20];
    v17 = objc_opt_self();
    v2[2] = v2;
    v2[7] = v2 + 18;
    v2[3] = sub_10027601C;
    v18 = swift_continuation_init();
    v2[17] = sub_100003ABC(&qword_1006091B0, &qword_1004D8328);
    v2[10] = _NSConcreteStackBlock;
    v2[11] = 1107296256;
    v2[12] = sub_100273CEC;
    v2[13] = &unk_1005BCCB0;
    v2[14] = v18;
    [v17 buildSharedSessionIntentWithIntent:v16 identity:v14 extendedStatusCompletion:v2 + 10];
    isEscapingClosureAtFileLocation = (v2 + 2);
  }

  return _swift_continuation_await(isEscapingClosureAtFileLocation);
}

uint64_t sub_10027601C()
{

  return _swift_task_switch(sub_1002760FC, 0, 0);
}

uint64_t sub_1002760FC()
{
  v23 = v0;
  v1 = v0[18];
  v2 = v0[19];
  if (v1 && (v3 = v1, v4 = [v3 sharedListeningProperties], v3, v4))
  {

    v5 = sub_1004B8094();
    v6 = sub_1004BC9A4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "✅ Shared listening intent successfully built", v7, 2u);
    }

    v8 = v0[22];

    v9 = v0[1];

    return v9(v1);
  }

  else
  {
    v11 = v2;
    v12 = sub_1004B8094();
    v13 = sub_1004BC984();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446210;
      v0[10] = [v11 error];
      sub_100003ABC(&qword_100607010, &qword_1004D3148);
      v16 = sub_1004BBF04();
      v18 = sub_100012018(v16, v17, &v22);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "⚠️ Creation error %{public}s", v14, 0xCu);
      sub_100004C6C(v15);
    }

    v19 = v0[22];
    sub_10026AF20();
    swift_allocError();
    *v20 = v11;
    *(v20 + 8) = 2;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1002763B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[42] = a3;
  v4[43] = a4;
  v4[40] = a1;
  v4[41] = a2;
  v4[44] = sub_1004BC474();
  v4[45] = sub_1004BC464();
  v6 = sub_1004BC3E4();
  v4[46] = v6;
  v4[47] = v5;

  return _swift_task_switch(sub_100276454, v6, v5);
}

uint64_t sub_100276454(uint64_t a1, uint64_t a2)
{
  v47 = v2;
  if (qword_100600140 != -1)
  {
    swift_once();
  }

  v3 = *(v2 + 320);
  v4 = sub_1004B80B4();
  *(v2 + 384) = sub_100007084(v4, static Logger.sharedListening);
  v5 = v3;

  v6 = sub_1004B8094();
  v7 = sub_1004BC9A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v2 + 336);
    v45 = *(v2 + 320);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46[0] = v10;
    *v9 = 136446210;
    *(v2 + 272) = v45;
    *(v2 + 288) = v8;
    v11 = v45;

    v12 = sub_1004BBF04();
    v14 = sub_100012018(v12, v13, v46);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "🏗 Building session with command=%{public}s", v9, 0xCu);
    sub_100004C6C(v10);
  }

  v15 = *(v2 + 344);
  if (v15 && (v16 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player, swift_beginAccess(), *(v15 + v16)) && (swift_getKeyPath(), swift_getKeyPath(), , sub_1004B85A4(), , , , (v17 = *(v2 + 296)) != 0) && (v18 = [*(v2 + 296) tracklist], v19 = objc_msgSend(v18, "playingItem"), v17, v18, v19))
  {

    v20 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
    swift_beginAccess();
    if (!*(v15 + v20) || (swift_getKeyPath(), swift_getKeyPath(), , sub_1004B85A4(), , , , (v21 = *(v2 + 304)) == 0) || (v22 = [*(v2 + 304) route], *(v2 + 392) = v22, v21, !v22))
    {
LABEL_14:
      v23 = *(v2 + 336);
      v24 = *(v2 + 320);
      *(v2 + 144) = v24;
      *(v2 + 208) = &type metadata for Player.CommandIssuerIdentity;
      *(v2 + 216) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v2 + 176) = &protocol witness table for Player.BuildSharedSessionCommand;
      *(v2 + 184) = 0x694C646572616853;
      *(v2 + 192) = 0xEF676E696E657473;
      *(v2 + 160) = v23;
      *(v2 + 168) = &type metadata for Player.BuildSharedSessionCommand;
      v25 = v24;

      *(v2 + 416) = sub_1004BC464();
      v27 = sub_1004BC3E4();
      *(v2 + 424) = v27;
      *(v2 + 432) = v26;

      return _swift_task_switch(sub_100276D24, v27, v26);
    }

    if ([v22 isDeviceRoute])
    {

      goto LABEL_14;
    }

    v30 = v22;
    v31 = sub_1004B8094();
    v32 = sub_1004BC9A4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46[0] = v34;
      *v33 = 136446210;
      v35 = v30;
      v36 = [v35 description];
      v37 = sub_1004BBE64();
      v39 = v38;

      v40 = sub_100012018(v37, v39, v46);

      *(v33 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "    Build session command needs to be performed on the system route.\n    Switching from %{public}s) to system route.", v33, 0xCu);
      sub_100004C6C(v34);
    }

    v41 = objc_opt_self();
    v42 = [v41 systemRoute];
    *(v2 + 400) = v42;
    *(v2 + 16) = v2;
    *(v2 + 24) = sub_100276AF0;
    v43 = swift_continuation_init();
    *(v2 + 136) = sub_100003ABC(&unk_100606750, &unk_1004CCB28);
    *(v2 + 80) = _NSConcreteStackBlock;
    *(v2 + 88) = 1107296256;
    *(v2 + 96) = sub_1000DB4B0;
    *(v2 + 104) = &unk_1005BCC60;
    *(v2 + 112) = v43;
    [v41 setActiveRoute:v42 completion:v2 + 80];

    return _swift_continuation_await(v2 + 16);
  }

  else
  {

    sub_10026AF20();
    swift_allocError();
    *v28 = 2;
    *(v28 + 8) = 4;
    swift_willThrow();
    v29 = *(v2 + 8);

    return v29();
  }
}

uint64_t sub_100276AF0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  v3 = *(v1 + 376);
  v4 = *(v1 + 368);
  if (v2)
  {
    v5 = sub_100277690;
  }

  else
  {
    v5 = sub_100276C20;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100276C20()
{
  v1 = *(v0 + 400);

  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  *(v0 + 144) = v3;
  *(v0 + 208) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 216) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 176) = &protocol witness table for Player.BuildSharedSessionCommand;
  *(v0 + 184) = 0x694C646572616853;
  *(v0 + 192) = 0xEF676E696E657473;
  *(v0 + 160) = v2;
  *(v0 + 168) = &type metadata for Player.BuildSharedSessionCommand;
  v4 = v3;

  *(v0 + 416) = sub_1004BC464();
  v6 = sub_1004BC3E4();
  *(v0 + 424) = v6;
  *(v0 + 432) = v5;

  return _swift_task_switch(sub_100276D24, v6, v5);
}

uint64_t sub_100276D24()
{
  sub_100003ABC(&unk_100606020, &unk_1004C8190);
  v1 = swift_allocObject();
  v0[55] = v1;
  *(v1 + 16) = xmmword_1004C50A0;
  sub_10001342C((v0 + 18), v1 + 32);
  v0[56] = sub_1004BC464();
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_100276E20;

  return sub_1001E4818(v1, 0x10000, 1, 0, 0, (v0 + 23));
}

uint64_t sub_100276E20(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {

    v4 = sub_1004BC3E4();
    v6 = v5;
    v7 = sub_100277138;
  }

  else
  {
    v4 = sub_1004BC3E4();
    v6 = v8;
    v7 = sub_100276F98;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100276F98()
{

  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return _swift_task_switch(sub_100277004, v1, v2);
}

uint64_t sub_100277004()
{
  v1 = v0[58];

  if (v1 >> 62)
  {
    v4 = sub_1004BD6A4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_100007214((v0 + 23), &qword_100601C48, &unk_1004D50E0);
    sub_100004C6C(v0 + 18);
    v2 = v0[46];
    v3 = v0[47];
    v6 = sub_10027762C;
    goto LABEL_9;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1004BD484();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v4, v2, v3);
    }

    v5 = *(v0[58] + 32);
  }

  v0[60] = v5;

  sub_100007214((v0 + 23), &qword_100601C48, &unk_1004D50E0);
  sub_100004C6C(v0 + 18);
  v2 = v0[46];
  v3 = v0[47];
  v6 = sub_1002773D8;
LABEL_9:
  v4 = v6;

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_100277138()
{

  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return _swift_task_switch(sub_10027719C, v1, v2);
}

uint64_t sub_10027719C()
{

  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return _swift_task_switch(sub_100277200, v1, v2);
}

uint64_t sub_100277200()
{
  v13 = v0;

  sub_100007214((v0 + 23), &qword_100601C48, &unk_1004D50E0);
  sub_100004C6C(v0 + 18);
  v1 = v0[59];
  swift_errorRetain();
  v2 = sub_1004B8094();
  v3 = sub_1004BC984();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v0[39] = v1;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "⚠️ Building session failed with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  sub_10026AF20();
  swift_allocError();
  *v9 = 3;
  *(v9 + 8) = 4;
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002773D8()
{
  v18 = v0;
  v1 = *(v0 + 480);

  v2 = [v1 error];
  if (v2 || (v2 = [*(v0 + 480) dialog]) != 0)
  {
    v3 = *(v0 + 480);

    sub_10026AF20();
    v4 = swift_allocError();
    *v5 = v3;
    *(v5 + 8) = 2;
    swift_willThrow();

    swift_errorRetain();
    v6 = sub_1004B8094();
    v7 = sub_1004BC984();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      *(v0 + 312) = v4;
      swift_errorRetain();
      sub_100003ABC(&qword_100604C30, &qword_1004C8490);
      v10 = sub_1004BBF04();
      v12 = sub_100012018(v10, v11, &v17);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "⚠️ Building session failed with error=%{public}s", v8, 0xCu);
      sub_100004C6C(v9);
    }

    swift_allocError();
    *v13 = 3;
    *(v13 + 8) = 4;
    swift_willThrow();

    v14 = *(v0 + 8);
  }

  else
  {
    v16 = *(v0 + 480);

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_10027762C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100277690()
{
  v1 = v0[50];
  v2 = v0[49];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

unint64_t sub_10027773C()
{
  result = qword_100609158;
  if (!qword_100609158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609158);
  }

  return result;
}

uint64_t sub_100277790(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1004BD9C4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_1004BD9C4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44497265646E6573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004BD9C4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10027789C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100003ABC(&qword_100609180, &qword_1004D8280);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v19 - v7;
  sub_100009178(a1, a1[3]);
  sub_10027773C();
  sub_1004BDC34();
  if (v2)
  {
    return sub_100004C6C(a1);
  }

  v25 = 0;
  v9 = sub_1004BD7C4();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_1004BD7C4();
  v21 = v12;
  v23 = 2;
  v13 = sub_1004BD7A4();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_100004C6C(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_100277AEC()
{
  result = qword_100609160;
  if (!qword_100609160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609160);
  }

  return result;
}

uint64_t sub_100277B6C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100277B90(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_100277BAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100277BF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_100277C48(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_100277C90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_100277CEC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100277D60(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100277DBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100277E30(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_100277E4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100277E94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100277ED8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_100277F04()
{
  result = qword_100609168;
  if (!qword_100609168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609168);
  }

  return result;
}

unint64_t sub_100277F5C()
{
  result = qword_100609170;
  if (!qword_100609170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609170);
  }

  return result;
}

unint64_t sub_100277FB4()
{
  result = qword_100609178;
  if (!qword_100609178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609178);
  }

  return result;
}

uint64_t sub_100278018(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100278030(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B6B04();
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_1002780B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100278100()
{

  return swift_deallocObject();
}

uint64_t sub_100278148(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000136EC;

  return sub_100273D60(a1, a2, v6, v7, v8);
}

uint64_t sub_100278208()
{
  swift_unknownObjectRelease();

  sub_100004C6C((v0 + 64));

  if (*(v0 + 144))
  {
  }

  if (*(v0 + 216))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1002782A8(uint64_t a1)
{
  v4 = *(v1 + 24);
  v11 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000136EC;

  return sub_100274040(a1, v11, v4, v5, v6, v7, v8, v1 + 64);
}

uint64_t sub_1002783A0()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

unint64_t UnifiedMessages.MLI.State.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6572676F72506E69;
  if (a1 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (!a1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1002784E8()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

double sub_1002785B8(uint64_t a1)
{
  sub_1004BBF84();

  return result;
}

Swift::Int sub_100278674()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

unint64_t sub_100278740@<X0>(Swift::String *a1@<X0>, MusicCore::UnifiedMessages::MLI::State_optional *a2@<X8>)
{
  result = _s9MusicCore15UnifiedMessagesO3MLIV5StateO8rawValueAGSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_100278770(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEA00000000007373;
  v5 = 0x6572676F72506E69;
  if (*v1 != 2)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE900000000000064;
  }

  if (!*v1)
  {
    v3 = 0xD00000000000001ELL;
    v2 = 0x80000001004FC1A0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

MusicCore::UnifiedMessages::GroupDefaultsKey_optional __swiftcall UnifiedMessages.GroupDefaultsKey.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_1005A67F0;
  v6._object = object;
  v3 = sub_1004BD764(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicCore_UnifiedMessages_GroupDefaultsKey_countOfSongsInLibrary;
  }

  else
  {
    v4.value = MusicCore_UnifiedMessages_GroupDefaultsKey_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t UnifiedMessages.GroupDefaultsKey.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_100278978(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "nknown";
  }

  else
  {
    v4 = "countOfPlaylistsInLibrary";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (*a2)
  {
    v7 = "countOfPlaylistsInLibrary";
  }

  else
  {
    v7 = "nknown";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1004BD9C4();
  }

  return v9 & 1;
}

Swift::Int sub_100278A24()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

double sub_100278AA4(uint64_t a1)
{
  sub_1004BBF84();

  return result;
}

Swift::Int sub_100278B10()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

void sub_100278B8C(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005A67F0;
  v7._object = v3;
  v5 = sub_1004BD764(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_100278BEC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1)
  {
    v3 = "countOfPlaylistsInLibrary";
  }

  else
  {
    v3 = "nknown";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t _s9MusicCore15UnifiedMessagesO3MLIV5StateO8rawValueAGSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A6770;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100278C7C()
{
  result = qword_1006091D8;
  if (!qword_1006091D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006091D8);
  }

  return result;
}

unint64_t sub_100278CD4()
{
  result = qword_1006091E0;
  if (!qword_1006091E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006091E0);
  }

  return result;
}

unint64_t sub_100278D68()
{
  result = qword_1006091E8;
  if (!qword_1006091E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006091E8);
  }

  return result;
}

MusicCore::AccessibilityIdentifier __swiftcall AccessibilityIdentifier.init(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v7 = qword_1006091F0;
  v8 = *algn_1006091F8;

  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  sub_1004BC024(v9);

  v10._countAndFlagsBits = countAndFlagsBits;
  v10._object = object;
  sub_1004BC024(v10);

  v3 = v7;
  v4 = v8;
  v5 = countAndFlagsBits;
  v6 = object;
  result.name._object = v6;
  result.name._countAndFlagsBits = v5;
  result.rawValue._object = v4;
  result.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_100278E78(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin();
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    v6 = swift_getTupleTypeMetadata();
  }

  __chkstk_darwin();
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *TupleTypeMetadata++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1004BA854();
}

uint64_t *AccessibilityIdentifier.libraryAlbumsView.unsafeMutableAddressor()
{
  if (qword_100600428 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryAlbumsView;
}

uint64_t *AccessibilityIdentifier.libraryArtistsListView.unsafeMutableAddressor()
{
  if (qword_100600418 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryArtistsListView;
}

uint64_t *AccessibilityIdentifier.librarySongsView.unsafeMutableAddressor()
{
  if (qword_100600470 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.librarySongsView;
}

uint64_t *AccessibilityIdentifier.libraryPlaylistsView.unsafeMutableAddressor()
{
  if (qword_100600468 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryPlaylistsView;
}

uint64_t *AccessibilityIdentifier.libraryGenresView.unsafeMutableAddressor()
{
  if (qword_100600450 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGenresView;
}

uint64_t *AccessibilityIdentifier.libraryRecentlyAddedView.unsafeMutableAddressor()
{
  if (qword_100600410 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryRecentlyAddedView;
}

uint64_t *AccessibilityIdentifier.libraryMadeForYouView.unsafeMutableAddressor()
{
  if (qword_100600458 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMadeForYouView;
}

uint64_t *AccessibilityIdentifier.libraryMusicVideosView.unsafeMutableAddressor()
{
  if (qword_100600460 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMusicVideosView;
}

uint64_t *AccessibilityIdentifier.libraryCompilationsView.unsafeMutableAddressor()
{
  if (qword_100600438 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryCompilationsView;
}

uint64_t *AccessibilityIdentifier.libraryComposersView.unsafeMutableAddressor()
{
  if (qword_100600430 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryComposersView;
}

uint64_t *AccessibilityIdentifier.libraryTVAndMoviesView.unsafeMutableAddressor()
{
  if (qword_100600478 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTVAndMoviesView;
}

uint64_t *AccessibilityIdentifier.libraryDownloadedView.unsafeMutableAddressor()
{
  if (qword_100600440 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryDownloadedView;
}

uint64_t *AccessibilityIdentifier.libraryDownloadingView.unsafeMutableAddressor()
{
  if (qword_100600448 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryDownloadingView;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1.unsafeMutableAddressor()
{
  if (qword_1006005C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2.unsafeMutableAddressor()
{
  if (qword_1006005C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3.unsafeMutableAddressor()
{
  if (qword_1006005D0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4.unsafeMutableAddressor()
{
  if (qword_1006005D8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5.unsafeMutableAddressor()
{
  if (qword_1006005E0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6.unsafeMutableAddressor()
{
  if (qword_1006005E8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6;
}