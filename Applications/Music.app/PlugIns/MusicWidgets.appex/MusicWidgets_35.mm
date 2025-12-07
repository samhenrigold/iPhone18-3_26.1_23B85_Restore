uint64_t sub_1003894F0()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_10038AD34;
  }

  else
  {

    v2 = sub_10038960C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038960C()
{
  v138 = v0;
  v1 = sub_100571938();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v5 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = [objc_opt_self() standardUserDefaults];
      v7 = sub_100572898();
      v8 = [v6 BOOLForKey:v7];

      if (v8 && *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1 && (v9 = String.trim()(), v10 = sub_10038B6F8(544502844, 0xE400000000000000, v9._countAndFlagsBits, v9._object), , (v10 & 1) != 0) && (v11 = *(v0 + 616), v12 = *(v0 + 608), v13 = *(v0 + 600), sub_100572918(), v14 = sub_1005728E8(), v16 = v15, *(v0 + 736) = v14, *(v0 + 744) = v15, (*(v12 + 8))(v11, v13), v16 >> 60 != 15))
      {

        v114 = objc_allocWithZone(MSVLyricsTTMLParser);
        sub_1000F54C8(v14, v16);
        isa = sub_10056C908().super.isa;
        v116 = [v114 initWithTTMLData:isa];
        *(v0 + 752) = v116;

        sub_1000A79FC(v14, v16);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 488;
        *(v0 + 24) = sub_10038A50C;
        v117 = swift_continuation_init();
        *(v0 + 392) = sub_100009DCC(&qword_1006EFBE0, &qword_100599E40);
        *(v0 + 336) = _NSConcreteStackBlock;
        *(v0 + 344) = 1107296256;
        *(v0 + 352) = sub_10038B854;
        *(v0 + 360) = &unk_10069F8A8;
        *(v0 + 368) = v117;
        [v116 parseWithCompletion:v0 + 336];

        return _swift_continuation_await(v0 + 16);
      }

      else
      {
        (*(*(v0 + 632) + 8))(*(v0 + 704), *(v0 + 624));

        v17 = *(v0 + 8);

        return v17(v3, v4, 0);
      }
    }
  }

  if ((sub_100571A58() & 1) == 0)
  {
    v54 = *(v0 + 704);
    v55 = *(v0 + 696);
    v56 = *(v0 + 688);
    v57 = *(v0 + 632);
    v58 = *(v0 + 624);
    v59 = *(v0 + 592);
    v60 = *(v0 + 560);
    v61 = *(v0 + 552);
    v131 = *(v0 + 680);
    v135 = *(v0 + 520);
    v62 = *(v0 + 512);
    v63 = Logger.lyrics.unsafeMutableAddressor();
    (*(v60 + 16))(v59, v63, v61);
    v64 = *(v57 + 16);
    v64(v55, v62, v58);
    v64(v56, v54, v58);
    v64(v131, v62, v58);
    v65 = v135;
    v66 = sub_10056DF68();
    v67 = sub_100573448();

    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 696);
    v70 = *(v0 + 688);
    v136 = *(v0 + 680);
    v71 = *(v0 + 632);
    v72 = *(v0 + 624);
    v73 = *(v0 + 592);
    v74 = *(v0 + 560);
    v75 = *(v0 + 552);
    if (v68)
    {
      v132 = *(v0 + 592);
      v76 = *(v0 + 520);
      v130 = *(v0 + 552);
      v77 = swift_slowAlloc();
      v137[0] = swift_slowAlloc();
      *v77 = 136446978;
      *(v0 + 464) = v76;
      v78 = sub_100572978();
      v126 = v67;
      v80 = sub_10037A2AC(v78, v79, v137);

      *(v77 + 4) = v80;
      *(v77 + 12) = 2082;
      v81 = sub_100571958();
      if (v81)
      {
        v82 = 1702195828;
      }

      else
      {
        v82 = 0x65736C6166;
      }

      if (v81)
      {
        v83 = 0xE400000000000000;
      }

      else
      {
        v83 = 0xE500000000000000;
      }

      loga = v66;
      v84 = *(v71 + 8);
      v84(v69, v72);
      v85 = sub_10037A2AC(v82, v83, v137);

      *(v77 + 14) = v85;
      *(v77 + 22) = 2082;
      *(v0 + 424) = sub_100571938();
      *(v0 + 432) = v86;
      sub_100009DCC(&qword_1006F5C90, &qword_1005A1830);
      v87 = sub_100572978();
      v89 = v88;
      v84(v70, v72);
      v90 = sub_10037A2AC(v87, v89, v137);

      *(v77 + 24) = v90;
      *(v77 + 32) = 2082;
      v91 = sub_100388CD8();
      v93 = v92;
      v84(v136, v72);
      v94 = sub_10037A2AC(v91, v93, v137);

      *(v77 + 34) = v94;
      _os_log_impl(&_mh_execute_header, loga, v126, "Loader<%{public}s> loadLyrics(for:completion:) didn't load lyrics [no lyrics found] song.hasLyrics=false song.hasCustomLyrics=%{public}s song.customLyrics=%{public}s %{public}s", v77, 0x2Au);
      swift_arrayDestroy();

      (*(v74 + 8))(v132, v130);
    }

    else
    {

      v84 = *(v71 + 8);
      v84(v136, v72);
      v84(v70, v72);
      v84(v69, v72);
      (*(v74 + 8))(v73, v75);
    }

    v107 = *(v0 + 704);
    v108 = *(v0 + 624);
    sub_10039198C();
    swift_allocError();
    *v109 = 1;
    swift_willThrow();
    v84(v107, v108);
    goto LABEL_36;
  }

  static ApplicationCapabilities.shared.getter((v0 + 208));
  sub_100108D2C(v0 + 208);
  if ((*(v0 + 218) & 1) == 0)
  {
    v19 = *(v0 + 672);
    v20 = *(v0 + 632);
    v21 = *(v0 + 624);
    v22 = *(v0 + 584);
    v23 = *(v0 + 560);
    v24 = *(v0 + 552);
    v133 = *(v0 + 520);
    v25 = *(v0 + 512);
    v26 = [objc_opt_self() sharedController];
    v27 = [v26 musicSubscriptionStatus];

    static ApplicationCapabilities.shared.getter((v0 + 80));
    sub_100108D2C(v0 + 80);
    v129 = *(v0 + 88);
    v28 = Logger.lyrics.unsafeMutableAddressor();
    (*(v23 + 16))(v22, v28, v24);
    (*(v20 + 16))(v19, v25, v21);
    v29 = v133;
    v30 = v27;
    v31 = sub_10056DF68();
    v32 = sub_100573448();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 672);
    v35 = *(v0 + 632);
    v36 = *(v0 + 624);
    v37 = *(v0 + 584);
    v38 = *(v0 + 560);
    v39 = *(v0 + 552);
    if (v33)
    {
      v128 = v32;
      v40 = *(v0 + 520);
      log = *(v0 + 624);
      v41 = swift_slowAlloc();
      v137[0] = swift_slowAlloc();
      *v41 = 136446978;
      *(v0 + 472) = v40;
      v42 = sub_100572978();
      v134 = v37;
      v127 = v39;
      v44 = sub_10037A2AC(v42, v43, v137);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2082;
      *(v0 + 480) = v30;
      v45 = v30;
      sub_100009DCC(&qword_1006EFBD8, &qword_100599E30);
      v46 = sub_100572978();
      v48 = sub_10037A2AC(v46, v47, v137);

      *(v41 + 14) = v48;
      *(v41 + 22) = 1026;
      *(v41 + 24) = WORD1(v129) & 1;
      *(v41 + 28) = 2082;
      v49 = sub_100388CD8();
      v51 = v50;
      v52 = *(v35 + 8);
      v52(v34, log);
      v53 = sub_10037A2AC(v49, v51, v137);

      *(v41 + 30) = v53;
      _os_log_impl(&_mh_execute_header, v31, v128, "Loader<%{public}s> loadLyrics(for:completion:) didn't load store lyrics [not supported by subscription] subscriptionStatus=%{public}s subscriptionStatus.capabilities.contains(.catalogLyricsViewing)=%{BOOL,public}d %{public}s", v41, 0x26u);
      swift_arrayDestroy();

      (*(v38 + 8))(v134, v127);
    }

    else
    {

      v52 = *(v35 + 8);
      v52(v34, v36);
      (*(v38 + 8))(v37, v39);
    }

    v110 = *(v0 + 704);
    v111 = *(v0 + 624);
    sub_10039198C();
    swift_allocError();
    *v112 = 2;
    swift_willThrow();

    v52(v110, v111);
LABEL_36:

    v113 = *(v0 + 8);

    return v113();
  }

  if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() != 1)
  {
    goto LABEL_29;
  }

  v95 = sub_100571998();
  *(v0 + 768) = v96;
  if (!v96)
  {
    goto LABEL_29;
  }

  v97 = v95;
  v98 = v96;
  v99 = *(v0 + 728);
  sub_100573ED8(30);

  v137[0] = 0xD000000000000017;
  v137[1] = 0x80000001005B8180;
  v140._countAndFlagsBits = v97;
  v140._object = v98;
  sub_100572A98(v140);
  v141._countAndFlagsBits = 0x6C6D74742ELL;
  v141._object = 0xE500000000000000;
  sub_100572A98(v141);
  sub_10056C7B8();

  v100 = sub_10056C8C8();
  *(v0 + 776) = v100;
  *(v0 + 784) = v101;
  if (v99)
  {
    v102 = *(v0 + 544);
    v103 = *(v0 + 536);
    v104 = *(v0 + 528);

    (*(v103 + 8))(v102, v104);
LABEL_29:
    v105 = swift_task_alloc();
    *(v0 + 816) = v105;
    *v105 = v0;
    v105[1] = sub_10038AAA4;
    v106 = *(v0 + 512);

    return sub_10038C638(v106);
  }

  v118 = v100;
  v119 = v101;
  (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  v120 = *LyricsOptionsManager.shared.unsafeMutableAddressor();

  BagProvider.shared.unsafeMutableAddressor();

  v121 = BagProvider.bag.getter();

  (*(*v120 + 120))(v121);

  v122 = swift_task_alloc();
  *(v0 + 792) = v122;
  v122[2] = v118;
  v122[3] = v119;
  v122[4] = v97;
  v122[5] = v98;
  v123 = swift_task_alloc();
  *(v0 + 800) = v123;
  *v123 = v0;
  v123[1] = sub_10038A7D4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 400, 0, 0, 0xD000000000000010, 0x80000001005B81A0, sub_100391A38, v122, &type metadata for LyricsLoader.Result);
}

uint64_t sub_10038A50C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 760) = v1;
  if (v1)
  {
    v2 = sub_10038AE78;
  }

  else
  {
    v2 = sub_10038A61C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038A61C()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[88];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[61];
  type metadata accessor for Lyrics(0);
  swift_allocObject();
  v10 = Lyrics.init(identifier:songInfo:)(0, 0, v7);

  sub_1000A79FC(v3, v2);
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8(v10, 0, 1);
}

uint64_t sub_10038A7D4()
{
  *(*v1 + 808) = v0;

  if (v0)
  {
    v2 = sub_10038B434;
  }

  else
  {
    v2 = sub_10038A924;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038A924()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  sub_10008246C(*(v0 + 776), *(v0 + 784));
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 408);
  v8 = *(v0 + 400);
  v6 = *(v0 + 416);

  v4 = *(v0 + 8);

  return v4(v8, v7, v6);
}

uint64_t sub_10038AAA4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 824) = v1;

  if (v1)
  {
    v5 = sub_10038B5A0;
  }

  else
  {
    *(v4 + 832) = a1;
    v5 = sub_10038ABCC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10038ABCC()
{
  v3 = v0[104];
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1(v3, 0, 1);
}

uint64_t sub_10038AD34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10038AE78(uint64_t a1)
{
  v67 = v1;
  v2 = v1[82];
  v59 = v1[81];
  v61 = v1[88];
  v3 = v1[79];
  v4 = v1[78];
  v5 = v1[71];
  v6 = v1[70];
  v7 = v1[69];
  v63 = v1[80];
  v65 = v1[65];
  v8 = v1[64];
  swift_willThrow();
  v9 = Logger.lyrics.unsafeMutableAddressor();
  (*(v6 + 16))(v5, v9, v7);
  v10 = *(v3 + 16);
  v10(v2, v8, v4);
  v10(v59, v61, v4);
  v10(v63, v8, v4);
  v11 = v65;
  swift_errorRetain();
  v12 = sub_10056DF68();
  v13 = sub_100573448();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v1[95];
    v15 = v1[82];
    v57 = v1[81];
    v58 = v1[80];
    v16 = v1[79];
    v17 = v1[78];
    v60 = v1[70];
    v62 = v1[69];
    v64 = v1[71];
    v18 = v1[65];
    v19 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v19 = 136447234;
    v1[62] = v18;
    v20 = sub_100572978();
    v22 = sub_10037A2AC(v20, v21, v66);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2082;
    v1[63] = v14;
    swift_errorRetain();
    sub_100009DCC(&qword_1006F47F0, &qword_10059F690);
    v23 = sub_100572978();
    v25 = sub_10037A2AC(v23, v24, v66);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2082;
    v26 = sub_100571958();
    if (v26)
    {
      v27 = 1702195828;
    }

    else
    {
      v27 = 0x65736C6166;
    }

    if (v26)
    {
      v28 = 0xE400000000000000;
    }

    else
    {
      v28 = 0xE500000000000000;
    }

    v29 = *(v16 + 8);
    v29(v15, v17);
    v30 = sub_10037A2AC(v27, v28, v66);

    *(v19 + 24) = v30;
    *(v19 + 32) = 2082;
    v1[55] = sub_100571938();
    v1[56] = v31;
    sub_100009DCC(&qword_1006F5C90, &qword_1005A1830);
    v32 = sub_100572978();
    v34 = v33;
    v29(v57, v17);
    v35 = sub_10037A2AC(v32, v34, v66);

    *(v19 + 34) = v35;
    *(v19 + 42) = 2082;
    v36 = sub_100388CD8();
    v38 = v37;
    v29(v58, v17);
    v39 = sub_10037A2AC(v36, v38, v66);

    *(v19 + 44) = v39;
    _os_log_impl(&_mh_execute_header, v12, v13, "Loader<%{public}s> loadLyrics(for:completion:) didn't parse TTML custom lyrics with error=%{public}s song.hasCustomLyrics=%{public}s song.customLyrics=%{public}s %{public}s", v19, 0x34u);
    swift_arrayDestroy();

    (*(v60 + 8))(v64, v62);
  }

  else
  {
    v40 = v1[82];
    v41 = v1[81];
    v42 = v1[80];
    v43 = v1[79];
    v44 = v1[78];
    v45 = v1[71];
    v46 = v12;
    v47 = v1[70];
    v48 = v1[69];

    v29 = *(v43 + 8);
    v29(v42, v44);
    v29(v41, v44);
    v29(v40, v44);
    (*(v47 + 8))(v45, v48);
  }

  v49 = v1[94];
  v50 = v1[93];
  v51 = v1[92];
  v52 = v1[88];
  v53 = v1[78];
  sub_10039198C();
  swift_allocError();
  *v54 = 0;
  swift_willThrow();

  sub_1000A79FC(v51, v50);
  v29(v52, v53);

  v55 = v1[1];

  return v55();
}

uint64_t sub_10038B434()
{
  v1 = v0[88];
  v2 = v0[79];
  v3 = v0[78];
  sub_10008246C(v0[97], v0[98]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10038B5A0()
{
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10038B6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_100572AA8();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_100572AA8();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_100574498();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_100572AA8();
      v7 = v9;
    }

    while (v9);
  }

  sub_100572AA8();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t *sub_10038B854(uint64_t a1, void *a2, void *a3)
{
  result = sub_10000C8CC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100009DCC(&qword_1006F47F0, &qword_10059F690);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10038B92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100009DCC(&qword_1006EFC40, &qword_100599FB8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = aBlock - v11;
  v13 = objc_allocWithZone(MSVLyricsTTMLParser);
  isa = sub_10056C908().super.isa;
  v15 = [v13 initWithTTMLData:isa];

  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v12, v8);
  v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a4;
  v18[1] = a5;
  aBlock[4] = sub_100392F74;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000128FC;
  aBlock[3] = &unk_10069FA18;
  v19 = _Block_copy(aBlock);

  [v15 parseWithCompletion:v19];
  _Block_release(v19);
}

void sub_10038BB50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    type metadata accessor for Lyrics(0);
    swift_allocObject();
    v8 = a1;

    Lyrics.init(identifier:songInfo:)(a4, a5, v8);
    sub_100009DCC(&qword_1006EFC40, &qword_100599FB8);
    sub_100572E98();
  }

  else
  {
    if (!a2)
    {
      sub_10039198C();
      swift_allocError();
      *v9 = 3;
    }

    swift_errorRetain();
    sub_100009DCC(&qword_1006EFC40, &qword_100599FB8);
    sub_100572E88();
  }
}

uint64_t sub_10038BD74()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_10056DE48();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 32), &qword_1006EFBE8, &qword_100599E50);
    sub_10039198C();
    swift_allocError();
    *v5 = 4;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    v8[1] = sub_10038BF04;
    v9 = *(v0 + 56);

    return LyricsLoader.loadLyrics(for:)(v9);
  }
}

uint64_t sub_10038BF04(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = sub_10038C0DC;
  }

  else
  {
    *(v8 + 96) = a3;
    *(v8 + 80) = a2;
    *(v8 + 88) = a1;
    v9 = sub_10038C040;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10038C040()
{
  v1 = *(v0 + 96);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

  v2 = *(v0 + 8);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  return v2(v3, v4, v1 & 1);
}

uint64_t sub_10038C0DC()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

id static LyricsLoader.requiredProperties()()
{
  sub_100009DCC(&qword_1006F44B0, &qword_1005A02D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10057BD80;
  *(v0 + 32) = sub_1005728D8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1005728D8();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1005728D8();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1005728D8();
  *(v0 + 88) = v4;
  sub_100009DCC(&qword_1006EFBF0, &qword_100599E58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100580F90;
  *(inited + 32) = sub_1005728D8();
  *(inited + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10057B510;
  *(v7 + 32) = sub_1005728D8();
  *(v7 + 40) = v8;
  isa = sub_100572D08().super.isa;

  v10 = objc_opt_self();
  v11 = [v10 propertySetWithProperties:isa];

  *(inited + 48) = v11;
  *(inited + 56) = sub_1005728D8();
  *(inited + 64) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057BD80;
  *(v13 + 32) = sub_1005728D8();
  *(v13 + 40) = v14;
  *(v13 + 48) = sub_1005728D8();
  *(v13 + 56) = v15;
  *(v13 + 64) = sub_1005728D8();
  *(v13 + 72) = v16;
  *(v13 + 80) = sub_1005728D8();
  *(v13 + 88) = v17;
  v18 = sub_100572D08().super.isa;

  v19 = [v10 propertySetWithProperties:v18];

  *(inited + 72) = v19;
  *(inited + 80) = sub_1005728D8();
  *(inited + 88) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10057B510;
  *(v21 + 32) = sub_1005728D8();
  *(v21 + 40) = v22;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_10057B510;
  *(v23 + 32) = sub_1005728D8();
  *(v23 + 40) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10057B510;
  *(v25 + 32) = sub_1005728D8();
  *(v25 + 40) = v26;
  v27 = sub_100572D08().super.isa;

  v28 = [v10 propertySetWithProperties:v27];

  *(v23 + 48) = v28;
  sub_100385CBC(v23);
  swift_setDeallocating();
  sub_10001036C(v23 + 32, &qword_1006EFBF8, &qword_100599E60);
  v29 = objc_allocWithZone(MPPropertySet);
  v30 = sub_100572D08().super.isa;

  sub_100392D28();
  v31 = sub_100572688().super.isa;

  v32 = [v29 initWithProperties:v30 relationships:v31];

  *(inited + 96) = v32;
  sub_100385CBC(inited);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006EFBF8, &qword_100599E60);
  swift_arrayDestroy();
  v33 = objc_allocWithZone(MPPropertySet);
  v34 = sub_100572D08().super.isa;

  v35 = sub_100572688().super.isa;

  v36 = [v33 initWithProperties:v34 relationships:v35];

  return v36;
}

uint64_t sub_10038C638(uint64_t a1)
{
  v2[79] = v1;
  v2[78] = a1;
  v3 = sub_100572928();
  v2[80] = v3;
  v2[81] = *(v3 - 8);
  v2[82] = swift_task_alloc();
  v4 = sub_100571A68();
  v2[83] = v4;
  v2[84] = *(v4 - 8);
  v2[85] = swift_task_alloc();
  v5 = sub_10056DF88();
  v2[86] = v5;
  v2[87] = *(v5 - 8);
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v6 = sub_100570DC8();
  v2[96] = v6;
  v2[97] = *(v6 - 8);
  v2[98] = swift_task_alloc();
  v7 = sub_100570D98();
  v2[99] = v7;
  v2[100] = *(v7 - 8);
  v2[101] = swift_task_alloc();
  v8 = sub_10056C258();
  v2[102] = v8;
  v2[103] = *(v8 - 8);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v9 = sub_10056C3A8();
  v2[106] = v9;
  v2[107] = *(v9 - 8);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  sub_100009DCC(&qword_1006EFC48, &qword_100599FC0);
  v2[111] = swift_task_alloc();
  sub_100009DCC(&qword_1006EFC50, &qword_100599FC8);
  v2[112] = swift_task_alloc();
  v10 = sub_10056CC18();
  v2[113] = v10;
  v2[114] = *(v10 - 8);
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  sub_100009DCC(&qword_1006EFC58, &qword_100599FD0);
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v11 = sub_10056CC38();
  v2[123] = v11;
  v2[124] = *(v11 - 8);
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  sub_100009DCC(&qword_1006EFC60, &qword_100599FD8);
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  sub_100009DCC(&qword_1006EF140, &qword_100598890);
  v2[130] = swift_task_alloc();
  v12 = sub_10056C8A8();
  v2[131] = v12;
  v2[132] = *(v12 - 8);
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();

  return _swift_task_switch(sub_10038CC6C, 0, 0);
}

uint64_t sub_10038CC6C(uint64_t a1)
{
  v253 = v1;
  v2 = v1;
  sub_100571998();
  v250 = v1;
  if (!v3)
  {
    v47 = v1[90];
    v48 = v1[87];
    v49 = v1[86];
    v50 = Logger.lyrics.unsafeMutableAddressor();
    (*(v48 + 16))(v47, v50, v49);
    v51 = sub_10056DF68();
    v52 = sub_100573428();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "fetchStoreLyrics: song has no storeID", v53, 2u);
    }

    v54 = v2[90];
    v55 = v2[87];
    v56 = v2[86];

    (*(v55 + 8))(v54, v56);
    sub_10039198C();
    swift_allocError();
    v58 = 2;
    goto LABEL_21;
  }

  BagProvider.shared.unsafeMutableAddressor();

  v4 = BagProvider.bag.getter();
  v1[135] = v4;

  if (!v4)
  {
    v59 = v1[91];
    v60 = v1[87];
    v61 = v1[86];

    v62 = Logger.lyrics.unsafeMutableAddressor();
    (*(v60 + 16))(v59, v62, v61);
    v63 = sub_10056DF68();
    v64 = sub_100573428();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "fetchStoreLyrics: Bag is nil", v65, 2u);
    }

    v66 = v2[91];
    v67 = v2[87];
    v68 = v2[86];

    (*(v67 + 8))(v66, v68);
    sub_10039198C();
    swift_allocError();
    v58 = 3;
LABEL_21:
    *v57 = v58;
    swift_willThrow();
LABEL_27:

    v80 = v250[1];

    return v80();
  }

  v5 = LyricsOptionsManager.shared.unsafeMutableAddressor();
  v6 = *(**v5 + 120);

  v7 = v4;
  v6(v4);

  v8 = [v7 stringForBagKey:ICURLBagKeyCountryCode];
  if (!v8)
  {
LABEL_23:

LABEL_24:
    v69 = v2[92];
    v70 = v2[87];
    v71 = v2[86];
    v72 = Logger.lyrics.unsafeMutableAddressor();
    (*(v70 + 16))(v69, v72, v71);
    v73 = sub_10056DF68();
    v74 = sub_100573428();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "fetchStoreLyrics: Unable to get the domain from the bag", v75, 2u);
    }

    v76 = v2[92];
    v77 = v2[87];
    v78 = v2[86];

    (*(v77 + 8))(v76, v78);
    sub_10039198C();
    swift_allocError();
    *v79 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v9 = v8;
  v10 = sub_1005728D8();
  v12 = v11;

  v13 = [v7 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (!v13 || (v14 = v13, v15 = sub_1005726A8(), v14, sub_100406710(v15), v17 = v16, , !v17))
  {
LABEL_22:

    goto LABEL_23;
  }

  v18 = sub_1005728D8();
  if (!*(v17 + 16))
  {

    goto LABEL_31;
  }

  v20 = sub_100429D94(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_31:

    v2 = v250;
    goto LABEL_24;
  }

  v2 = v250;
  v23 = v250 + 75;
  sub_1000F40D4(*(v17 + 56) + 40 * v20, (v250 + 23));

  sub_100009DCC(&qword_1006EFC68, &qword_100599FE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v24 = *v23;
  if (!*(*v23 + 16) || (v25 = sub_100429D94(0x746C7561666564, 0xE700000000000000), (v26 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_1000F40D4(*(v24 + 56) + 40 * v25, (v250 + 18));

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v245 = v250[132];
  v247 = v250[131];
  v243 = v250[130];
  v27 = v250[62];
  v28 = v250[63];
  sub_100573ED8(49);

  v251 = 0x2F2F3A7370747468;
  v252 = 0xE800000000000000;
  v255._countAndFlagsBits = v27;
  v255._object = v28;
  sub_100572A98(v255);

  v256._countAndFlagsBits = 0x617461632F31762FLL;
  v256._object = 0xEC0000002F676F6CLL;
  sub_100572A98(v256);
  v257._countAndFlagsBits = v10;
  v257._object = v12;
  sub_100572A98(v257);
  v258._countAndFlagsBits = 0x2F73676E6F732FLL;
  v258._object = 0xE700000000000000;
  sub_100572A98(v258);
  v29 = sub_1005713B8();
  v31 = v30;

  v259._countAndFlagsBits = v29;
  v259._object = v31;
  sub_100572A98(v259);

  v260._object = 0x80000001005B8220;
  v260._countAndFlagsBits = 0xD000000000000010;
  sub_100572A98(v260);
  sub_10056C868();
  if ((*(v245 + 48))(v243, 1, v247) == 1)
  {
    v32 = v250[130];
    v33 = v250[93];
    v34 = v250[87];
    v35 = v250[86];

    sub_10001036C(v32, &qword_1006EF140, &qword_100598890);
    v36 = Logger.lyrics.unsafeMutableAddressor();
    (*(v34 + 16))(v33, v36, v35);

    v37 = sub_10056DF68();
    v38 = sub_100573428();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v250[93];
    v41 = v250[87];
    v42 = v250[86];
    if (v39)
    {
      v43 = v250[93];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v251 = v45;
      *v44 = 136446210;
      v46 = sub_10037A2AC(0x2F2F3A7370747468, 0xE800000000000000, &v251);

      *(v44 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "fetchStoreLyrics: Couldn't build URL: %{public}s", v44, 0xCu);
      sub_100010474(v45);

      (*(v41 + 8))(v43, v42);
    }

    else
    {

      (*(v41 + 8))(v40, v42);
    }

    sub_10039198C();
    swift_allocError();
    *v173 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v82 = v250[134];
  v83 = v250[132];
  v84 = v250[131];
  v85 = v250[130];
  v86 = v250[129];
  v87 = v250[124];
  v248 = v250[123];

  (*(v83 + 32))(v82, v85, v84);
  v234 = *(v87 + 56);
  v234(v86, 1, 1, v248);
  v88 = sub_10056CB48();
  v89 = v88;
  v90 = *(v88 + 16);
  if (!v90)
  {
    v228 = 0;
    v229 = _swiftEmptyArrayStorage;
    v242 = _swiftEmptyArrayStorage;
    goto LABEL_84;
  }

  v228 = 0;
  v91 = 0;
  v92 = v250[124];
  v238 = (v92 + 48);
  v233 = (v92 + 16);
  v93 = (v250[114] + 8);
  v94 = (v92 + 8);
  v95 = v88 + 40;
  v236 = -v90;
  v237 = v94;
  v229 = _swiftEmptyArrayStorage;
  v242 = _swiftEmptyArrayStorage;
  v239 = v88;
  v227 = v88 + 40;
  do
  {
    v96 = v95 + 16 * v91;
    v97 = v91 + 1;
    while (1)
    {
      v249 = v97;
      if ((v97 - 1) >= *(v89 + 16))
      {
        __break(1u);
      }

      v100 = v93;
      v101 = v2[129];
      v102 = v2[128];
      v103 = v2[123];
      v246 = v96;

      sub_10056CAF8();
      sub_100393048(v101, v102);
      if ((*v238)(v102, 1, v103) == 1)
      {
        v104 = v2[129];
        v105 = v2[128];
        v106 = v2[126];
        v107 = v2[123];
        sub_10001036C(v104, &qword_1006EFC60, &qword_100599FD8);
        sub_10001036C(v105, &qword_1006EFC60, &qword_100599FD8);
        (*v233)(v104, v106, v107);
        v234(v104, 0, 1, v107);
      }

      else
      {
        sub_10001036C(v2[128], &qword_1006EFC60, &qword_100599FD8);
      }

      v108 = v2[122];
      v109 = v2[119];
      v110 = v2[113];
      sub_10056CC28();
      sub_10056CBE8();
      v244 = *v93;
      (*v93)(v109, v110);
      v111 = sub_10056CB38();
      v112 = *(v111 - 8);
      v241 = *(v112 + 48);
      v240 = v112;
      if (v241(v108, 1, v111) == 1)
      {
        sub_10001036C(v2[122], &qword_1006EFC58, &qword_100599FD0);
      }

      else
      {
        v113 = v2[122];
        v114 = sub_10056CB18();
        v115 = v112;
        v116 = v114;
        v118 = v117;
        (*(v115 + 8))(v113, v111);
        v2[64] = sub_10056CB08();
        v2[65] = v119;
        v2[56] = 45;
        v2[57] = 0xE100000000000000;
        sub_10037AD68();
        LOBYTE(v113) = sub_100573D38();

        if (v113)
        {

          v120 = sub_10056CB08();
          v122 = v121;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v242 = sub_100474884(0, *(v242 + 2) + 1, 1, v242);
          }

          v124 = *(v242 + 2);
          v123 = *(v242 + 3);
          if (v124 >= v123 >> 1)
          {
            v242 = sub_100474884((v123 > 1), v124 + 1, 1, v242);
          }

          *(v242 + 2) = v124 + 1;
          v125 = &v242[16 * v124];
          *(v125 + 4) = v120;
          *(v125 + 5) = v122;
        }

        else
        {
          v126 = v2[112];
          v251 = v116;
          v252 = v118;
          v261._countAndFlagsBits = 45;
          v261._object = 0xE100000000000000;
          sub_100572A98(v261);
          sub_10056CBB8();
          v127 = sub_10056CB88();
          v128 = v2;
          v129 = *(v127 - 8);
          v130 = (*(v129 + 48))(v126, 1, v127);
          v131 = v128[112];
          if (v130 == 1)
          {
            sub_10001036C(v131, &qword_1006EFC50, &qword_100599FC8);
            v132._countAndFlagsBits = sub_1005729B8();
            object = v132._object;
          }

          else
          {
            v134 = sub_10056CB78();
            object = v135;
            (*(v129 + 8))(v131, v127);
            v132._countAndFlagsBits = v134;
          }

          v132._object = object;
          sub_100572A98(v132);

          v136 = v251;
          v137 = v252;
          v2 = v250;
          v93 = v100;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v242 = sub_100474884(0, *(v242 + 2) + 1, 1, v242);
          }

          v139 = *(v242 + 2);
          v138 = *(v242 + 3);
          if (v139 >= v138 >> 1)
          {
            v242 = sub_100474884((v138 > 1), v139 + 1, 1, v242);
          }

          *(v242 + 2) = v139 + 1;
          v140 = &v242[16 * v139];
          *(v140 + 4) = v136;
          *(v140 + 5) = v137;
        }
      }

      *(v2 + 1194) = 6;
      v141 = sub_1003930B8();
      if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v141) & 1) == 0)
      {
        (*v237)(v2[126], v2[123]);
LABEL_63:
        v89 = v239;
LABEL_64:
        v99 = v249;
        goto LABEL_37;
      }

      v235 = v111;
      v142 = v2[118];
      v143 = v2[113];
      v144 = v2[111];
      sub_10056CC28();
      sub_10056CC08();
      v244(v142, v143);
      v145 = sub_10056CBA8();
      v146 = v93;
      v147 = *(v145 - 8);
      if ((*(v147 + 48))(v144, 1, v145) != 1)
      {
        break;
      }

      v98 = v2[111];
      (*v237)(v2[126], v2[123]);
      sub_10001036C(v98, &qword_1006EFC48, &qword_100599FC0);
      v89 = v239;
      v99 = v249;
      v93 = v146;
LABEL_37:
      v96 = v246 + 16;
      v97 = v99 + 1;
      if (v236 + v97 == 1)
      {
        goto LABEL_84;
      }
    }

    v148 = v2[121];
    v149 = v2;
    v150 = v2[117];
    v231 = v149[113];
    v151 = v149[111];
    v230 = sub_10056CB98();
    v232 = v152;
    (*(v147 + 8))(v151, v145);
    sub_10056CC28();
    sub_10056CBE8();
    v244(v150, v231);
    v93 = v146;
    if (v241(v148, 1, v235) == 1)
    {
      v153 = v149[121];
      (*v237)(v149[126], v149[123]);

      sub_10001036C(v153, &qword_1006EFC58, &qword_100599FD0);
      v2 = v149;
      goto LABEL_63;
    }

    v154 = v149[121];
    v155 = sub_10056CB18();
    v157 = v156;
    (*(v240 + 8))(v154, v235);
    v158 = Lyrics.scriptMap.unsafeMutableAddressor();
    v159 = *v158;
    v2 = v149;
    if (*(*v158 + 16))
    {

      v160 = v232;
      v161 = sub_100429D94(v230, v232);
      if (v162)
      {
        v163 = (*(v159 + 56) + 16 * v161);
        v164 = v163[1];
        v230 = *v163;

        v160 = v164;
      }
    }

    else
    {
      v160 = v232;
    }

    v251 = v155;
    v252 = v157;
    v262._countAndFlagsBits = 45;
    v262._object = 0xE100000000000000;
    sub_100572A98(v262);
    v263._countAndFlagsBits = v230;
    v263._object = v160;
    sub_100572A98(v263);
    v165 = v157;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v229 = sub_100474884(0, *(v229 + 2) + 1, 1, v229);
    }

    v167 = *(v229 + 2);
    v166 = *(v229 + 3);
    if (v167 >= v166 >> 1)
    {
      v229 = sub_100474884((v166 > 1), v167 + 1, 1, v229);
    }

    *(v229 + 2) = v167 + 1;
    v168 = &v229[16 * v167];
    *(v168 + 4) = v155;
    *(v168 + 5) = v165;
    v169 = Lyrics.defaultScript.unsafeMutableAddressor();
    v170 = v2[126];
    v171 = v2[123];
    if (v230 != *v169 || v160 != *(v169 + 1))
    {
      v172 = sub_100574498();

      (*v237)(v170, v171);
      v89 = v239;
      if (v172)
      {
        goto LABEL_79;
      }

      goto LABEL_64;
    }

    (*v237)(v170, v171);
    v89 = v239;
LABEL_79:
    v228 = 1;
    v91 = v249;
    v95 = v227;
  }

  while (v236 + v249);
LABEL_84:
  v174 = v2[129];
  v175 = v2[127];
  v176 = v2[124];
  v177 = v2[123];

  sub_100393048(v174, v175);
  if ((*(v176 + 48))(v175, 1, v177) == 1)
  {
    sub_10001036C(v2[127], &qword_1006EFC60, &qword_100599FD8);
  }

  else
  {
    (*(v2[124] + 32))(v2[125], v2[127], v2[123]);
    if ((v228 & 1) != 0 || (v178 = v2[116], v179 = v2[114], v180 = v2[113], v181 = *v5, , sub_10056CC28(), v182 = (*(*v181 + 256))(v178), , v183 = *(v179 + 8), v183(v178, v180), (v182 & 1) == 0))
    {
      (*(v2[124] + 8))(v2[125], v2[123]);
    }

    else
    {
      v184 = v2[120];
      v185 = v2[115];
      v186 = v2[113];
      sub_10056CC28();
      sub_10056CBE8();
      v183(v185, v186);
      v187 = sub_10056CB38();
      v188 = *(v187 - 8);
      if ((*(v188 + 48))(v184, 1, v187) == 1)
      {
        v189 = v2[120];
        (*(v2[124] + 8))(v2[125], v2[123]);
        sub_10001036C(v189, &qword_1006EFC58, &qword_100599FD0);
      }

      else
      {
        v215 = v2[120];
        v216 = sub_10056CB18();
        v218 = v217;
        (*(v188 + 8))(v215, v187);
        v251 = v216;
        v252 = v218;
        v264._countAndFlagsBits = 45;
        v264._object = 0xE100000000000000;
        sub_100572A98(v264);
        v219 = Lyrics.defaultScript.unsafeMutableAddressor();
        v221 = *v219;
        v220 = v219[1];

        v265._countAndFlagsBits = v221;
        v265._object = v220;
        sub_100572A98(v265);

        v223 = v251;
        v222 = v218;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v229 = sub_100474884(0, *(v229 + 2) + 1, 1, v229);
        }

        v225 = *(v229 + 2);
        v224 = *(v229 + 3);
        if (v225 >= v224 >> 1)
        {
          v229 = sub_100474884((v224 > 1), v225 + 1, 1, v229);
        }

        v2 = v250;
        (*(v250[124] + 8))(v250[125], v250[123]);
        *(v229 + 2) = v225 + 1;
        v226 = &v229[16 * v225];
        *(v226 + 4) = v223;
        *(v226 + 5) = v222;
      }
    }
  }

  v2[72] = v242;
  sub_100009DCC(&qword_1006EFC78, &qword_100599FE8);
  sub_10039310C();
  sub_100572798();

  sub_10056C378();

  v190 = sub_100474990(0, 1, 1, _swiftEmptyArrayStorage);
  v192 = *(v190 + 2);
  v191 = *(v190 + 3);
  if (v192 >= v191 >> 1)
  {
    v190 = sub_100474990((v191 > 1), v192 + 1, 1, v190);
  }

  v193 = v2[110];
  v194 = v2[107];
  v195 = v2[106];
  *(v190 + 2) = v192 + 1;
  v197 = *(v194 + 32);
  v194 += 32;
  v196 = v197;
  v198 = (*(v194 + 48) + 32) & ~*(v194 + 48);
  v199 = *(v194 + 40);
  v197(&v190[v198 + v199 * v192], v193, v195);
  *(v2 + 1193) = 6;
  v200 = sub_1003930B8();
  v2[136] = v200;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v200))
  {
    v2[76] = v229;
    sub_100572798();

    sub_10056C378();

    v202 = *(v190 + 2);
    v201 = *(v190 + 3);
    if (v202 >= v201 >> 1)
    {
      v190 = sub_100474990((v201 > 1), v202 + 1, 1, v190);
    }

    v203 = v2[109];
    v204 = v2[106];
    *(v190 + 2) = v202 + 1;
    v196(&v190[v198 + v202 * v199], v203, v204);
    sub_10056C378();
    v206 = *(v190 + 2);
    v205 = *(v190 + 3);
    if (v206 >= v205 >> 1)
    {
      v190 = sub_100474990((v205 > 1), v206 + 1, 1, v190);
    }

    v207 = v2[108];
    v208 = v2[106];
    *(v190 + 2) = v206 + 1;
    v196(&v190[v198 + v206 * v199], v207, v208);
  }

  else
  {
  }

  v209 = v2[105];
  v210 = v2[104];
  v211 = v2[103];
  v212 = v2[102];
  sub_10056C888();

  sub_10056C238();
  (*(v211 + 16))(v210, v209, v212);
  sub_100570D48();
  v213 = swift_task_alloc();
  v2[137] = v213;
  *v213 = v2;
  v213[1] = sub_10038E79C;
  v214 = v2[98];

  return MusicDataRequest.response()(v214);
}

uint64_t sub_10038E79C()
{
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v2 = sub_10038FC8C;
  }

  else
  {
    v2 = sub_10038E8DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038E8DC()
{
  v121 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 696);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v119 = 0x3C726564616F4CLL;
  v120 = 0xE700000000000000;
  *(v0 + 560) = v6;
  v123._countAndFlagsBits = sub_100572978();
  sub_100572A98(v123);

  v124._countAndFlagsBits = 62;
  v124._object = 0xE100000000000000;
  sub_100572A98(v124);
  v8 = v120;
  v107 = v119;
  v9 = Logger.lyrics.unsafeMutableAddressor();
  *(v0 + 1112) = v9;
  v10 = *(v2 + 16);
  *(v0 + 1120) = v10;
  *(v0 + 1128) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v112 = v9;
  v110 = v10;
  v10(v1);
  (*(v4 + 16))(v3, v7, v5);

  v11 = sub_10056DF68();
  v12 = sub_100573448();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 760);
  v15 = *(v0 + 696);
  v115 = *(v0 + 688);
  v16 = *(v0 + 680);
  v17 = *(v0 + 672);
  v18 = *(v0 + 664);
  if (v13)
  {
    v105 = *(v0 + 760);
    v19 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *v19 = 136446466;
    v20 = sub_10037A2AC(v107, v8, &v119);

    *(v19 + 4) = v20;
    *(v19 + 12) = 2082;
    v21 = sub_100388CD8();
    v23 = v22;
    (*(v17 + 8))(v16, v18);
    v24 = sub_10037A2AC(v21, v23, &v119);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s loadLyrics(for:completion:) completed for %{public}s", v19, 0x16u);
    swift_arrayDestroy();

    v25 = *(v15 + 8);
    v25(v105, v115);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    v25 = *(v15 + 8);
    v25(v14, v115);
  }

  *(v0 + 1136) = v25;
  v26 = *(v0 + 1088);
  *(v0 + 1192) = 6;
  v27 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v26);
  if (v27)
  {
    v28 = 0xD000000000000011;
  }

  else
  {
    v28 = 1819112564;
  }

  if (v27)
  {
    v29 = 0x80000001005B8240;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  v30 = objc_opt_self();
  v31 = sub_100570DB8();
  v33 = v32;
  isa = sub_10056C908().super.isa;
  sub_10008246C(v31, v33);
  *(v0 + 536) = 0;
  v35 = [v30 JSONObjectWithData:isa options:0 error:v0 + 536];

  v36 = *(v0 + 536);
  if (!v35)
  {
    v55 = *(v0 + 784);
    v56 = *(v0 + 776);
    v57 = *(v0 + 768);
    v58 = v36;

    sub_10056C728();

    swift_willThrow();
    (*(v56 + 8))(v55, v57);
LABEL_37:
    v73 = *(v0 + 712);
    v74 = *(v0 + 696);
    v75 = *(v0 + 688);
    v76 = Logger.lyrics.unsafeMutableAddressor();
    (*(v74 + 16))(v73, v76, v75);
    swift_errorRetain();
    v77 = sub_10056DF68();
    v78 = sub_100573428();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 138543362;
      swift_errorRetain();
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v79 + 4) = v81;
      *v80 = v81;
      _os_log_impl(&_mh_execute_header, v77, v78, "Data request error: %{public}@", v79, 0xCu);
      sub_10001036C(v80, &qword_1006EF680, &qword_100598E00);
    }

    v106 = *(v0 + 1080);
    v82 = *(v0 + 1056);
    v114 = *(v0 + 1048);
    v118 = *(v0 + 1072);
    v111 = *(v0 + 840);
    v113 = *(v0 + 1032);
    v83 = *(v0 + 824);
    v109 = *(v0 + 816);
    v84 = *(v0 + 808);
    v85 = *(v0 + 800);
    v86 = *(v0 + 792);
    v87 = v77;
    v88 = *(v0 + 712);
    v89 = *(v0 + 696);
    v90 = *(v0 + 688);

    (*(v89 + 8))(v88, v90);
    swift_willThrow();

    (*(v85 + 8))(v84, v86);
    (*(v83 + 8))(v111, v109);
    sub_10001036C(v113, &qword_1006EFC60, &qword_100599FD8);
    (*(v82 + 8))(v118, v114);

    v91 = *(v0 + 8);

    return v91();
  }

  v37 = v36;
  sub_100573D58();
  swift_unknownObjectRelease();
  sub_100009DCC(&qword_1006EFC88, &qword_100599FF0);
  if (swift_dynamicCast())
  {
    v38 = *(v0 + 528);
  }

  else
  {
    v38 = 0;
  }

  if (!v38 || !*(v38 + 16))
  {
    goto LABEL_32;
  }

  v39 = sub_100429D94(1635017060, 0xE400000000000000);
  if ((v40 & 1) == 0)
  {
    goto LABEL_31;
  }

  v41 = v0 + 616;
  sub_100081F38(*(v38 + 56) + 32 * v39, v0 + 384);

  sub_100009DCC(&qword_1006EFC98, &qword_10059A000);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (!*(*v41 + 16))
  {
LABEL_31:

LABEL_32:

    goto LABEL_33;
  }

  sub_100081F38(*v41 + 32, v0 + 224);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v42 = *(v0 + 552);
  if (!*(v42 + 16))
  {
    goto LABEL_44;
  }

  v43 = sub_100429D94(0x7475626972747461, 0xEA00000000007365);
  if ((v44 & 1) == 0)
  {
    goto LABEL_44;
  }

  v45 = (v0 + 568);
  sub_100081F38(*(v42 + 56) + 32 * v43, v0 + 352);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v46 = *v45;
  if (!*(*v45 + 16))
  {
LABEL_44:

    goto LABEL_32;
  }

  v47 = sub_100429D94(v28, v29);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_100081F38(*(v46 + 56) + 32 * v47, v0 + 320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v116 = v25;
  v50 = *(v0 + 656);
  v51 = *(v0 + 648);
  v108 = *(v0 + 640);
  sub_100572918();
  v52 = sub_1005728E8();
  v54 = v53;

  *(v0 + 1144) = v52;
  *(v0 + 1152) = v54;
  (*(v51 + 8))(v50, v108);
  if (v54 >> 60 == 15)
  {
LABEL_27:

LABEL_28:
    v25 = v116;
LABEL_33:
    v110(*(v0 + 752), v112, *(v0 + 688));

    v59 = sub_10056DF68();
    v60 = sub_100573428();

    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 752);
    v63 = *(v0 + 688);
    if (v61)
    {
      v64 = swift_slowAlloc();
      v117 = v25;
      v65 = swift_slowAlloc();
      v119 = v65;
      *v64 = 136446210;
      *(v0 + 544) = v38;
      sub_100009DCC(&qword_1006EFC90, &qword_100599FF8);
      v66 = sub_100572978();
      v68 = sub_10037A2AC(v66, v67, &v119);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, "Invalid response: %{public}s", v64, 0xCu);
      sub_100010474(v65);

      v117(v62, v63);
    }

    else
    {

      v25(v62, v63);
    }

    v69 = *(v0 + 784);
    v70 = *(v0 + 776);
    v71 = *(v0 + 768);
    sub_10039198C();
    swift_allocError();
    *v72 = 1;
    swift_willThrow();
    (*(v70 + 8))(v69, v71);
    goto LABEL_37;
  }

  v25 = v116;
  if (!*(v46 + 16) || (v93 = sub_100429D94(0x6172615079616C70, 0xEA0000000000736DLL), (v94 & 1) == 0))
  {
    sub_1000A79FC(v52, v54);
    goto LABEL_32;
  }

  v95 = v54;
  v96 = (v0 + 584);
  sub_100081F38(*(v46 + 56) + 32 * v93, v0 + 288);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_56;
  }

  v97 = *v96;
  if (!*(*v96 + 16) || (v98 = sub_100429D94(25705, 0xE200000000000000), (v99 & 1) == 0))
  {
    sub_1000A79FC(v52, v95);
    goto LABEL_27;
  }

  sub_100081F38(*(v97 + 56) + 32 * v98, v0 + 256);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:
    sub_1000A79FC(v52, v95);
    goto LABEL_28;
  }

  v100 = *(v0 + 488);
  *(v0 + 1160) = *(v0 + 480);
  *(v0 + 1168) = v100;
  v101 = objc_allocWithZone(MSVLyricsTTMLParser);
  sub_1000F54C8(v52, v95);
  v102 = sub_10056C908().super.isa;
  v103 = [v101 initWithTTMLData:v102];
  *(v0 + 1176) = v103;

  sub_1000A79FC(v52, v95);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 592;
  *(v0 + 24) = sub_10038F788;
  v104 = swift_continuation_init();
  *(v0 + 136) = sub_100009DCC(&qword_1006EFBE0, &qword_100599E40);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10038B854;
  *(v0 + 104) = &unk_10069FA40;
  *(v0 + 112) = v104;
  [v103 parseWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10038F788()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1184) = v1;
  if (v1)
  {

    v2 = sub_1003900D8;
  }

  else
  {
    v2 = sub_10038F8CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038F8CC()
{
  v14 = v0[146];
  v1 = v0[145];
  v18 = v0[147];
  v19 = v0[144];
  v17 = v0[143];
  v23 = v0[134];
  v2 = v0[132];
  v22 = v0[131];
  v20 = v0[135];
  v21 = v0[129];
  v16 = v0[105];
  v3 = v0[103];
  v15 = v0[102];
  v13 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[74];
  type metadata accessor for Lyrics(0);
  swift_allocObject();
  v10 = Lyrics.init(identifier:songInfo:)(v1, v14, v9);

  sub_1000A79FC(v17, v19);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v13, v5);
  (*(v3 + 8))(v16, v15);
  sub_10001036C(v21, &qword_1006EFC60, &qword_100599FD8);
  (*(v2 + 8))(v23, v22);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_10038FC8C(uint64_t a1)
{
  v2 = v1[89];
  v3 = v1[87];
  v4 = v1[86];
  v5 = Logger.lyrics.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_10056DF68();
  v7 = sub_100573428();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Data request error: %{public}@", v8, 0xCu);
    sub_10001036C(v9, &qword_1006EF680, &qword_100598E00);
  }

  v11 = v1[135];
  v12 = v1[132];
  v26 = v1[131];
  v27 = v1[134];
  v24 = v1[105];
  v25 = v1[129];
  v13 = v6;
  v14 = v1[103];
  v23 = v1[102];
  v15 = v1[101];
  v16 = v1[100];
  v17 = v1[99];
  v18 = v1[89];
  v19 = v1[87];
  v20 = v1[86];

  (*(v19 + 8))(v18, v20);
  swift_willThrow();

  (*(v16 + 8))(v15, v17);
  (*(v14 + 8))(v24, v23);
  sub_10001036C(v25, &qword_1006EFC60, &qword_100599FD8);
  (*(v12 + 8))(v27, v26);

  v21 = v1[1];

  return v21();
}

uint64_t sub_1003900D8(uint64_t a1)
{
  v2 = v1[140];
  v3 = v1[139];
  v4 = v1[88];
  v5 = v1[86];
  swift_willThrow();
  v2(v4, v3, v5);
  swift_errorRetain();
  v6 = sub_10056DF68();
  v7 = sub_100573428();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Parsing error: %{public}@", v8, 0xCu);
    sub_10001036C(v9, &qword_1006EF680, &qword_100598E00);
  }

  v11 = v1[147];
  v12 = v1[144];
  v13 = v1[143];
  v14 = v1[142];
  v15 = v1[97];
  v43 = v1[96];
  v45 = v1[98];
  v16 = v1[88];
  v17 = v1[86];

  v14(v16, v17);
  swift_willThrow();

  sub_1000A79FC(v13, v12);
  (*(v15 + 8))(v45, v43);
  v18 = v1[89];
  v19 = v1[87];
  v20 = v1[86];
  v21 = Logger.lyrics.unsafeMutableAddressor();
  (*(v19 + 16))(v18, v21, v20);
  swift_errorRetain();
  v22 = sub_10056DF68();
  v23 = sub_100573428();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138543362;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v26;
    *v25 = v26;
    _os_log_impl(&_mh_execute_header, v22, v23, "Data request error: %{public}@", v24, 0xCu);
    sub_10001036C(v25, &qword_1006EF680, &qword_100598E00);
  }

  v27 = v1[135];
  v28 = v1[132];
  v42 = v1[131];
  v44 = v1[134];
  v40 = v1[105];
  v41 = v1[129];
  v29 = v22;
  v30 = v1[103];
  v39 = v1[102];
  v31 = v1[101];
  v32 = v1[100];
  v33 = v1[99];
  v34 = v1[89];
  v35 = v1[87];
  v36 = v1[86];

  (*(v35 + 8))(v34, v36);
  swift_willThrow();

  (*(v32 + 8))(v31, v33);
  (*(v30 + 8))(v40, v39);
  sub_10001036C(v41, &qword_1006EFC60, &qword_100599FD8);
  (*(v28 + 8))(v44, v42);

  v37 = v1[1];

  return v37();
}

id LyricsLoader.init()()
{
  v1 = OBJC_IVAR___MusicLyricsLoader_operationQueue;
  v2 = [objc_allocWithZone(NSOperationQueue) init];
  [v2 setMaxConcurrentOperationCount:1];
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LyricsLoader();
  return objc_msgSendSuper2(&v4, "init");
}

id LyricsLoader.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LyricsLoader();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(uint64_t a1)
{
  v2 = sub_100571A68();
  v3 = *(v2 - 8);
  v180 = v2;
  v181 = v3;
  __chkstk_darwin();
  v5 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v178 = &v169 - v6;
  __chkstk_darwin();
  v177 = (&v169 - v7);
  __chkstk_darwin();
  v176 = (&v169 - v8);
  __chkstk_darwin();
  v171 = &v169 - v9;
  __chkstk_darwin();
  v170 = &v169 - v10;
  __chkstk_darwin();
  v12 = &v169 - v11;
  __chkstk_darwin();
  v14 = &v169 - v13;
  __chkstk_darwin();
  v173 = (&v169 - v15);
  __chkstk_darwin();
  v172 = &v169 - v16;
  __chkstk_darwin();
  v175 = &v169 - v17;
  __chkstk_darwin();
  v19 = &v169 - v18;
  v20 = sub_10056DF88();
  v21 = *(v20 - 8);
  v183 = v20;
  v184 = v21;
  __chkstk_darwin();
  v23 = &v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v179 = &v169 - v24;
  __chkstk_darwin();
  v174 = &v169 - v25;
  __chkstk_darwin();
  v27 = &v169 - v26;
  __chkstk_darwin();
  v29 = &v169 - v28;
  __chkstk_darwin();
  v31 = &v169 - v30;
  if ((sub_100571A58() & 1) == 0 && (sub_100571958() & 1) == 0)
  {
    v59 = Logger.lyrics.unsafeMutableAddressor();
    v60 = v183;
    v61 = v184;
    (*(v184 + 16))(v23, v59, v183);
    v62 = v180;
    v63 = v181;
    (v181[2])(v5, a1, v180);
    v64 = sub_10056DF68();
    v65 = sub_100573448();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v188[0] = v67;
      *v66 = 136446210;
      v68 = sub_100388CD8();
      v69 = v62;
      v71 = v70;
      (v63[1])(v5, v69);
      v72 = sub_10037A2AC(v68, v71, v188);

      *(v66 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v64, v65, "Loader supportsLyrics=false [hasLyrics and hasCustomLyrics were false] %{public}s", v66, 0xCu);
      sub_100010474(v67);

      (*(v184 + 8))(v23, v183);
    }

    else
    {

      (v63[1])(v5, v62);
      (*(v61 + 8))(v23, v60);
    }

    v143 = 0;
    return v143 & 1;
  }

  v182 = a1;
  BagProvider.shared.unsafeMutableAddressor();

  v32 = BagProvider.bag.getter();

  if (v32)
  {
    if (([objc_opt_self() supportsLyricsForURLBag:v32] & 1) == 0)
    {
      v73 = [v32 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
      v74 = v182;
      v75 = v180;
      if (v73)
      {

        v76 = Logger.lyrics.unsafeMutableAddressor();
        (*(v184 + 16))(v31, v76, v183);
        v77 = v181;
        v78 = v181[2];
        v78(v19, v74, v75);
        v79 = v175;
        v78(v175, v74, v75);
        v80 = sub_10056DF68();
        v81 = sub_100573448();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v179 = v32;
          v83 = v82;
          v178 = swift_slowAlloc();
          *&v188[0] = v178;
          *v83 = 136446466;
          v177 = v80;
          v84 = sub_100571958();
          if (v84)
          {
            v85 = 1702195828;
          }

          else
          {
            v85 = 0x65736C6166;
          }

          LODWORD(v176) = v81;
          v86 = v75;
          if (v84)
          {
            v87 = 0xE400000000000000;
          }

          else
          {
            v87 = 0xE500000000000000;
          }

          v88 = v77[1];
          v88(v19, v86);
          v89 = sub_10037A2AC(v85, v87, v188);

          *(v83 + 4) = v89;
          *(v83 + 12) = 2082;
          v90 = sub_100388CD8();
          v92 = v91;
          v88(v79, v86);
          v93 = sub_10037A2AC(v90, v92, v188);

          *(v83 + 14) = v93;
          v94 = v177;
          _os_log_impl(&_mh_execute_header, v177, v176, "Loader supportsLyrics=%{public}s [no lyrics keys in bag] %{public}s", v83, 0x16u);
          swift_arrayDestroy();

          v32 = v179;
        }

        else
        {

          v164 = v77[1];
          v164(v79, v75);
          v164(v19, v75);
        }

        (*(v184 + 8))(v31, v183);
      }

      else
      {
        v144 = Logger.lyrics.unsafeMutableAddressor();
        (*(v184 + 16))(v29, v144, v183);
        v145 = v181;
        v146 = v181[2];
        v147 = v172;
        v146(v172, v74, v75);
        v148 = v173;
        v146(v173, v74, v75);
        v149 = sub_10056DF68();
        v150 = sub_100573448();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v179 = v32;
          v152 = v151;
          v177 = swift_slowAlloc();
          *&v188[0] = v177;
          *v152 = 136446466;
          v176 = v149;
          v153 = sub_100571958();
          if (v153)
          {
            v154 = 1702195828;
          }

          else
          {
            v154 = 0x65736C6166;
          }

          v178 = v29;
          v155 = v148;
          if (v153)
          {
            v156 = 0xE400000000000000;
          }

          else
          {
            v156 = 0xE500000000000000;
          }

          LODWORD(v175) = v150;
          v157 = v145[1];
          v157(v147, v75);
          v158 = sub_10037A2AC(v154, v156, v188);

          *(v152 + 4) = v158;
          *(v152 + 12) = 2082;
          v159 = sub_100388CD8();
          v161 = v160;
          v157(v155, v75);
          v162 = sub_10037A2AC(v159, v161, v188);

          *(v152 + 14) = v162;
          v163 = v176;
          _os_log_impl(&_mh_execute_header, v176, v175, "Loader supportsLyrics=%{public}s [no musicSubscription key in bag] %{public}s", v152, 0x16u);
          swift_arrayDestroy();

          v32 = v179;

          (*(v184 + 8))(v178, v183);
        }

        else
        {

          v165 = v145[1];
          v165(v148, v75);
          v165(v147, v75);
          (*(v184 + 8))(v29, v183);
        }
      }

      v166 = sub_100571958();

      v143 = v166;
      return v143 & 1;
    }

    v33 = v183;
    v34 = v184;
    v36 = v180;
    v35 = v181;
    v37 = v176;
  }

  else
  {
    v38 = Logger.lyrics.unsafeMutableAddressor();
    v39 = v183;
    (*(v184 + 16))(v27, v38, v183);
    v35 = v181;
    v40 = v182;
    v41 = v181[2];
    v42 = v180;
    v41(v14, v182, v180);
    v41(v12, v40, v42);
    v43 = sub_10056DF68();
    v44 = sub_100573448();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      *&v188[0] = v175;
      *v45 = 136446466;
      v173 = v43;
      v46 = sub_100571958();
      if (v46)
      {
        v47 = 1702195828;
      }

      else
      {
        v47 = 0x65736C6166;
      }

      if (v46)
      {
        v48 = 0xE400000000000000;
      }

      else
      {
        v48 = 0xE500000000000000;
      }

      v49 = v180;
      LODWORD(v172) = v44;
      v50 = v181[1];
      v50(v14, v180);
      v51 = sub_10037A2AC(v47, v48, v188);
      v35 = v181;

      *(v45 + 4) = v51;
      *(v45 + 12) = 2082;
      v52 = sub_100388CD8();
      v54 = v53;
      v50(v12, v49);
      v55 = v183;
      v34 = v184;
      v56 = sub_10037A2AC(v52, v54, v188);

      *(v45 + 14) = v56;
      v57 = v173;
      _os_log_impl(&_mh_execute_header, v173, v172, "Loader supportsLyrics=%{public}s [bag is nil] %{public}s", v45, 0x16u);
      swift_arrayDestroy();

      v58 = v27;
      v33 = v55;
      (*(v34 + 8))(v58, v55);
      v36 = v49;
      v37 = v176;
    }

    else
    {

      v95 = v35[1];
      v96 = v12;
      v36 = v180;
      v95(v96, v180);
      v95(v14, v36);
      v97 = v184;
      (*(v184 + 8))(v27, v39);
      v37 = v176;
      v33 = v39;
      v34 = v97;
    }
  }

  v98 = sub_100571A58();
  v99 = v179;
  v100 = v177;
  if (v98 & 1) != 0 && (static ApplicationCapabilities.shared.getter(v186), v101 = v187, , sub_100108D2C(v186), v102 = sub_1001B4D1C(2u, v101), , (v102))
  {
    static ApplicationCapabilities.shared.getter(v188);
    sub_100108D2C(v188);
    if (BYTE10(v188[0]))
    {
      v143 = 1;
      return v143 & 1;
    }

    v103 = Logger.lyrics.unsafeMutableAddressor();
    v104 = v174;
    (*(v34 + 16))(v174, v103, v33);
    v105 = v35[2];
    v106 = v170;
    v107 = v182;
    v105(v170, v182, v36);
    v108 = v35;
    v109 = v33;
    v110 = v171;
    v105(v171, v107, v36);
    v111 = sub_10056DF68();
    v112 = sub_100573448();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v185 = v181;
      *v113 = 67240450;
      v114 = sub_100571958() & 1;
      v115 = v108[1];
      v115(v106, v36);
      *(v113 + 4) = v114;
      *(v113 + 8) = 2082;
      v116 = sub_100388CD8();
      v117 = v110;
      v118 = v184;
      v120 = v119;
      v115(v117, v36);
      v121 = sub_10037A2AC(v116, v120, &v185);

      *(v113 + 10) = v121;
      _os_log_impl(&_mh_execute_header, v111, v112, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false %{public}s", v113, 0x12u);
      sub_100010474(v181);

      (*(v118 + 8))(v174, v183);
    }

    else
    {
      v168 = v108[1];
      v168(v106, v36);

      v168(v110, v36);
      (*(v184 + 8))(v104, v109);
    }
  }

  else
  {
    v122 = Logger.lyrics.unsafeMutableAddressor();
    (*(v34 + 16))(v99, v122, v33);
    v123 = v35[2];
    v124 = v182;
    v123(v37, v182, v36);
    v125 = v100;
    v123(v100, v124, v36);
    v126 = v178;
    v123(v178, v124, v36);
    v127 = sub_10056DF68();
    v128 = sub_100573448();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v185 = v181;
      *v129 = 67240962;
      LODWORD(v176) = v128;
      v130 = sub_100571958() & 1;
      v131 = v35[1];
      v131(v37, v36);
      *(v129 + 4) = v130;
      v132 = v125;
      v133 = v184;
      *(v129 + 8) = 1026;
      v134 = sub_100571A58() & 1;
      v131(v132, v36);
      *(v129 + 10) = v134;
      *(v129 + 14) = 1026;
      static ApplicationCapabilities.shared.getter(v188);
      v135 = v189;

      sub_100108D2C(v188);
      v136 = sub_1001B4D1C(2u, v135);

      *(v129 + 16) = v136 & 1;
      *(v129 + 20) = 2082;
      v137 = v178;
      v138 = sub_100388CD8();
      v140 = v139;
      v131(v137, v36);
      v141 = sub_10037A2AC(v138, v140, &v185);

      *(v129 + 22) = v141;
      _os_log_impl(&_mh_execute_header, v127, v176, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] song.hasLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d %{public}s", v129, 0x1Eu);
      sub_100010474(v181);

      (*(v133 + 8))(v179, v183);
    }

    else
    {
      v142 = v35[1];
      v142(v125, v36);
      v142(v37, v36);

      v142(v126, v36);
      (*(v184 + 8))(v99, v183);
    }
  }

  v143 = sub_100571958();
  return v143 & 1;
}

unint64_t sub_10039198C()
{
  result = qword_1006EFBC0;
  if (!qword_1006EFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFBC0);
  }

  return result;
}

unint64_t sub_1003919E0()
{
  result = qword_1006EFBD0;
  if (!qword_1006EFBD0)
  {
    sub_100571A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFBD0);
  }

  return result;
}

uint64_t _s11MusicCoreUI12LyricsLoaderC08supportsD03forSbSo11MPModelSongC_tFZ_0(void *a1)
{
  v188 = sub_10056DF88();
  v2 = *(v188 - 8);
  __chkstk_darwin();
  v4 = &v179 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v179 - v5;
  __chkstk_darwin();
  v8 = &v179 - v7;
  __chkstk_darwin();
  v10 = &v179 - v9;
  __chkstk_darwin();
  v12 = &v179 - v11;
  __chkstk_darwin();
  v14 = &v179 - v13;
  *&v15 = __chkstk_darwin().n128_u64[0];
  v17 = &v179 - v16;
  v187 = [a1 lyrics];
  if (v187)
  {
    if ([a1 hasVideo])
    {

      goto LABEL_4;
    }

    v185 = v8;
    v186 = v2;
    v30 = v187;
    v31 = [v187 hasLibraryLyrics];
    if (([v30 hasStoreLyrics] & 1) == 0 && !v31)
    {
      v32 = Logger.lyrics.unsafeMutableAddressor();
      v33 = v186;
      v34 = v188;
      (*(v186 + 16))(v6, v32, v188);
      v35 = a1;
      v36 = v187;
      v37 = sub_10056DF68();
      v38 = sub_100573448();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        *&v192[0] = v187;
        *v39 = 67240962;
        *(v39 + 4) = [v36 hasLibraryLyrics];
        *(v39 + 8) = 1026;
        *(v39 + 10) = [v36 hasStoreLyrics];

        *(v39 + 14) = 2082;
        v40 = [v35 title];
        if (v40)
        {
          v41 = v40;
          v42 = sub_1005728D8();
          v44 = v43;
        }

        else
        {
          v42 = 0;
          v44 = 0;
        }

        *&v194[0] = v42;
        *(&v194[0] + 1) = v44;
        sub_100009DCC(&qword_1006F5C90, &qword_1005A1830);
        v86 = sub_100572978();
        v88 = sub_10037A2AC(v86, v87, v192);

        *(v39 + 16) = v88;
        *(v39 + 24) = 2082;
        v89 = [v35 identifiers];
        v90 = [v89 description];
        v91 = sub_1005728D8();
        v93 = v92;

        v94 = sub_10037A2AC(v91, v93, v192);

        *(v39 + 26) = v94;
        _os_log_impl(&_mh_execute_header, v37, v38, "Loader supportsLyrics=false [no lyrics found] lyrics.hasLibraryLyrics=%{BOOL,public}d lyrics.hasStoreLyrics=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v39, 0x22u);
        swift_arrayDestroy();

        (*(v186 + 8))(v6, v188);
      }

      else
      {

        (*(v33 + 8))(v6, v34);
      }

      return 0;
    }

    v184 = v31;
    BagProvider.shared.unsafeMutableAddressor();

    v45 = BagProvider.bag.getter();

    if (v45)
    {
      v46 = [objc_opt_self() supportsLyricsForURLBag:v45];
      v47 = v186;
      if ((v46 & 1) == 0)
      {
        v185 = v45;
        v73 = [v45 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
        if (v73)
        {

          v74 = Logger.lyrics.unsafeMutableAddressor();
          v75 = v188;
          (*(v47 + 16))(v17, v74, v188);
          v76 = v47;
          v77 = a1;
          v78 = sub_10056DF68();
          v79 = sub_100573448();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            *&v192[0] = v183;
            *v80 = 67240706;
            *(v80 + 4) = v184;
            *(v80 + 8) = 2082;
            v81 = [v77 title];
            if (v81)
            {
              v82 = v81;
              v83 = sub_1005728D8();
              v85 = v84;
            }

            else
            {
              v83 = 0;
              v85 = 0;
            }

            *&v194[0] = v83;
            *(&v194[0] + 1) = v85;
            sub_100009DCC(&qword_1006F5C90, &qword_1005A1830);
            v152 = sub_100572978();
            v154 = sub_10037A2AC(v152, v153, v192);

            *(v80 + 10) = v154;
            *(v80 + 18) = 2082;
            v155 = [v77 identifiers];
            v156 = [v155 description];
            v157 = sub_1005728D8();
            v159 = v158;

            v160 = sub_10037A2AC(v157, v159, v192);

            *(v80 + 20) = v160;
            _os_log_impl(&_mh_execute_header, v78, v79, "Loader supportsLyrics=%{BOOL,public}d [no lyrics keys in bag] song.title=%{public}s song.identifiers=%{public}s", v80, 0x1Cu);
            swift_arrayDestroy();

            (*(v186 + 8))(v17, v188);
            return v184;
          }

          (*(v76 + 8))(v17, v75);
        }

        else
        {
          v95 = Logger.lyrics.unsafeMutableAddressor();
          v96 = v188;
          (*(v47 + 16))(v14, v95, v188);
          v97 = v47;
          v98 = a1;
          v99 = sub_10056DF68();
          v100 = sub_100573448();

          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            *&v192[0] = v183;
            *v101 = 67240706;
            *(v101 + 4) = v184;
            *(v101 + 8) = 2082;
            v102 = [v98 title];
            if (v102)
            {
              v103 = v102;
              v104 = sub_1005728D8();
              v106 = v105;
            }

            else
            {
              v104 = 0;
              v106 = 0;
            }

            *&v194[0] = v104;
            *(&v194[0] + 1) = v106;
            sub_100009DCC(&qword_1006F5C90, &qword_1005A1830);
            v161 = sub_100572978();
            v163 = sub_10037A2AC(v161, v162, v192);

            *(v101 + 10) = v163;
            *(v101 + 18) = 2082;
            v164 = [v98 identifiers];
            v165 = [v164 description];
            v166 = sub_1005728D8();
            v168 = v167;

            v169 = sub_10037A2AC(v166, v168, v192);

            *(v101 + 20) = v169;
            _os_log_impl(&_mh_execute_header, v99, v100, "Loader supportsLyrics=%{BOOL,public}d [no musicSubscription key in bag] song.title=%{public}s song.identifiers=%{public}s", v101, 0x1Cu);
            swift_arrayDestroy();

            (*(v186 + 8))(v14, v188);
            return v184;
          }

          (*(v97 + 8))(v14, v96);
        }

        return v184;
      }

      v48 = v10;

      v49 = v188;
    }

    else
    {
      v60 = Logger.lyrics.unsafeMutableAddressor();
      v47 = v186;
      v49 = v188;
      (*(v186 + 16))(v12, v60, v188);
      v61 = a1;
      v62 = sub_10056DF68();
      v63 = sub_100573448();

      v48 = v10;
      if (os_log_type_enabled(v62, v63))
      {
        v181 = v63;
        v182 = v10;
        v183 = v62;
        v64 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        *&v192[0] = v180;
        *v64 = 67240706;
        *(v64 + 4) = v184;
        v65 = v64;
        *(v64 + 8) = 2082;
        v66 = v61;
        v67 = [v61 title];
        v68 = &selRef_changeItemCommand;
        if (v67)
        {
          v69 = v67;
          v70 = sub_1005728D8();
          v72 = v71;
        }

        else
        {
          v70 = 0;
          v72 = 0;
        }

        *&v194[0] = v70;
        *(&v194[0] + 1) = v72;
        sub_100009DCC(&qword_1006F5C90, &qword_1005A1830);
        v107 = sub_100572978();
        v109 = sub_10037A2AC(v107, v108, v192);

        *(v65 + 10) = v109;
        *(v65 + 18) = 2082;
        v110 = [v66 identifiers];
        v111 = [v110 description];
        v112 = sub_1005728D8();
        v114 = v113;

        v115 = sub_10037A2AC(v112, v114, v192);

        *(v65 + 20) = v115;
        v116 = v183;
        _os_log_impl(&_mh_execute_header, v183, v181, "Loader supportsLyrics=%{BOOL,public}d [bag is nil] song.title=%{public}s song.identifiers=%{public}s", v65, 0x1Cu);
        swift_arrayDestroy();

        v49 = v188;
        (*(v47 + 8))(v12, v188);
        v48 = v182;
LABEL_38:
        if ([v187 v68[142]] && (static ApplicationCapabilities.shared.getter(v192), v117 = v193, , sub_100108D2C(v192), v118 = sub_1001B4D1C(2u, v117), , (v118 & 1) != 0))
        {
          static ApplicationCapabilities.shared.getter(v194);
          sub_100108D2C(v194);
          if (BYTE10(v194[0]))
          {

            return 1;
          }

          v119 = Logger.lyrics.unsafeMutableAddressor();
          (*(v47 + 16))(v48, v119, v49);
          v120 = a1;
          v121 = sub_10056DF68();
          v122 = sub_100573448();

          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            v185 = swift_slowAlloc();
            v191 = v185;
            *v123 = 67240706;
            *(v123 + 4) = v184;
            *(v123 + 8) = 2082;
            v124 = [v120 title];
            if (v124)
            {
              v125 = v124;
              v126 = sub_1005728D8();
              v128 = v127;
            }

            else
            {
              v126 = 0;
              v128 = 0;
            }

            v189 = v126;
            v190 = v128;
            sub_100009DCC(&qword_1006F5C90, &qword_1005A1830);
            v170 = sub_100572978();
            v172 = sub_10037A2AC(v170, v171, &v191);

            *(v123 + 10) = v172;
            *(v123 + 18) = 2082;
            v173 = [v120 identifiers];
            v174 = [v173 description];
            v175 = sub_1005728D8();
            v177 = v176;

            v178 = sub_10037A2AC(v175, v177, &v191);

            *(v123 + 20) = v178;
            _os_log_impl(&_mh_execute_header, v121, v122, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false song.title=%{public}s song.identifiers=%{public}s", v123, 0x1Cu);
            swift_arrayDestroy();

            (*(v186 + 8))(v48, v188);
            return v184;
          }

          (*(v47 + 8))(v48, v49);
        }

        else
        {
          v129 = Logger.lyrics.unsafeMutableAddressor();
          v130 = v185;
          (*(v47 + 16))(v185, v129, v49);
          v131 = a1;
          v132 = v187;
          v133 = sub_10056DF68();
          v134 = sub_100573448();

          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            v187 = swift_slowAlloc();
            v191 = v187;
            *v135 = 67241218;
            *(v135 + 4) = v184;
            *(v135 + 8) = 1026;
            *(v135 + 10) = [v132 v68[142]];

            *(v135 + 14) = 1026;
            static ApplicationCapabilities.shared.getter(v194);
            v136 = v195;

            sub_100108D2C(v194);
            v137 = sub_1001B4D1C(2u, v136);

            *(v135 + 16) = v137 & 1;
            *(v135 + 20) = 2082;
            v138 = [v131 title];
            if (v138)
            {
              v139 = v138;
              v140 = sub_1005728D8();
              v142 = v141;
            }

            else
            {
              v140 = 0;
              v142 = 0;
            }

            v189 = v140;
            v190 = v142;
            sub_100009DCC(&qword_1006F5C90, &qword_1005A1830);
            v143 = sub_100572978();
            v145 = sub_10037A2AC(v143, v144, &v191);

            *(v135 + 22) = v145;
            *(v135 + 30) = 2082;
            v146 = [v131 identifiers];
            v147 = [v146 description];
            v148 = sub_1005728D8();
            v150 = v149;

            v151 = sub_10037A2AC(v148, v150, &v191);

            *(v135 + 32) = v151;
            _os_log_impl(&_mh_execute_header, v133, v134, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] lyrics.hasStoreLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v135, 0x28u);
            swift_arrayDestroy();

            (*(v186 + 8))(v185, v188);
            return v184;
          }

          (*(v47 + 8))(v130, v49);
        }

        return v184;
      }

      (*(v47 + 8))(v12, v49);
    }

    v68 = &selRef_changeItemCommand;
    goto LABEL_38;
  }

LABEL_4:
  v18 = Logger.lyrics.unsafeMutableAddressor();
  v19 = v188;
  (*(v2 + 16))(v4, v18, v188);
  v20 = v2;
  v21 = a1;
  v22 = sub_10056DF68();
  v23 = sub_100573448();

  if (os_log_type_enabled(v22, v23))
  {
    v186 = v20;
    v24 = swift_slowAlloc();
    *&v192[0] = swift_slowAlloc();
    *v24 = 136446466;
    v25 = [v21 title];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1005728D8();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    *&v194[0] = v27;
    *(&v194[0] + 1) = v29;
    sub_100009DCC(&qword_1006F5C90, &qword_1005A1830);
    v50 = sub_100572978();
    v52 = sub_10037A2AC(v50, v51, v192);

    *(v24 + 4) = v52;
    *(v24 + 12) = 2082;
    v53 = [v21 identifiers];
    v54 = [v53 description];
    v55 = sub_1005728D8();
    v57 = v56;

    v58 = sub_10037A2AC(v55, v57, v192);

    *(v24 + 14) = v58;
    _os_log_impl(&_mh_execute_header, v22, v23, "Loader supportsLyrics=false [MPModelLyrics was nil] song.title=%{public}s song.identifiers=%{public}s", v24, 0x16u);
    swift_arrayDestroy();

    (*(v186 + 8))(v4, v188);
  }

  else
  {

    (*(v20 + 8))(v4, v19);
  }

  return 0;
}

unint64_t sub_100392D28()
{
  result = qword_1006EFC00;
  if (!qword_1006EFC00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006EFC00);
  }

  return result;
}

unint64_t sub_100392D9C()
{
  result = qword_1006EFC10;
  if (!qword_1006EFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFC10);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Corner(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100392E10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100392E58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_100392EC8()
{
  v1 = sub_100009DCC(&qword_1006EFC40, &qword_100599FB8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_100392F74(void *a1, uint64_t a2)
{
  v5 = *(sub_100009DCC(&qword_1006EFC40, &qword_100599FB8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_10038BB50(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_100393030(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100393048(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006EFC60, &qword_100599FD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003930B8()
{
  result = qword_1006EFC70;
  if (!qword_1006EFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFC70);
  }

  return result;
}

unint64_t sub_10039310C()
{
  result = qword_1006EFC80;
  if (!qword_1006EFC80)
  {
    sub_100010324(&qword_1006EFC78, &qword_100599FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFC80);
  }

  return result;
}

uint64_t Lyrics.StateManager.__allocating_init()()
{
  v0 = swift_allocObject();
  Lyrics.StateManager.init()();
  return v0;
}

uint64_t Lyrics.StateManager.init()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for Lyrics.StateManager.State(0);
  v4 = v2 + *(v3 + 20);
  v5 = enum case for ScenePhase.inactive(_:);
  v6 = sub_10056E5F8();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v4 + *(v7 + 20)) = 0;
  *(v4 + *(v7 + 24)) = 0;
  v8 = *(v3 + 24);
  v9 = sub_10056CAA8();
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist) = 0;
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v11 = sub_100571A68();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__showTranslationButton) = 0;
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__needsLyricsReset) = 0;
  v12 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  v13 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  v15 = type metadata accessor for Lyrics.Transliteration(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage;
  v17 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = [objc_allocWithZone(type metadata accessor for LyricsLoader()) init];
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask) = 0;
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__optionsObserver) = 0;
  v18 = [objc_allocWithZone(MPCLyricsReportingController) init];
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v18;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  v19 = *LyricsOptionsManager.shared.unsafeMutableAddressor();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *(*v19 + 224);

  v21(sub_10039444C, v20);

  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEE8();

  return v1;
}

uint64_t sub_100393600()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t Lyrics.StateManager.state.setter(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v10 - v5;
  v7 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_1003A0A4C(v1 + v7, v6, type metadata accessor for Lyrics.StateManager.State);
  v8 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(v6, a1);
  sub_1003A0AB4(v6, type metadata accessor for Lyrics.StateManager.State);
  if (v8)
  {
    sub_1003A0A4C(a1, v6, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v1 + v7, v4, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1003A11A0(v6, v1 + v7, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1003945AC(v4);
    sub_1003A0AB4(v4, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0AB4(v6, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_10056CEE8();
  }

  return sub_1003A0AB4(a1, type metadata accessor for Lyrics.StateManager.State);
}

void sub_1003938EC(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 & 1;
  v6 = *a2;
  swift_beginAccess();
  if (*(v4 + v6) == v5)
  {
    *(v4 + v6) = v5;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_10056CEE8();
  }
}

void sub_100393A08(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  type metadata accessor for LyricsLoader();
  v6 = v5;
  v7 = sub_100573A58();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_10056CEE8();
  }
}

void sub_100393B6C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  sub_1000D3B98(0, &qword_1006F02F0, MPCLyricsReportingController_ptr);
  v6 = v5;
  v7 = sub_100573A58();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_10056CEE8();
  }
}

void sub_100393CE0(uint64_t a1, uint64_t a2)
{
  sub_100009DCC(&qword_1006EFD30, &qword_10059A160);
  __chkstk_darwin();
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v44 - v5;
  __chkstk_darwin();
  v8 = &v44 - v7;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_getKeyPath();
    v15 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
    v57 = v14;
    v16 = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    v53 = v15;
    v54 = v16;
    sub_10056CEF8();

    v17 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_1003A0A4C(v14 + v17, v12, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v12, v10, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0AB4(v12, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_1003A0AB4(v10, type metadata accessor for Lyrics.StateManager.State.Loading);
      return;
    }

    v51 = v4;
    v52 = a1;
    v18 = *v10;
    v19 = *(v10 + 1);
    v21 = *(v10 + 2);
    v20 = *(v10 + 3);
    v22 = v10[32];
    v23 = *(sub_100009DCC(&qword_1006EFD18, &qword_10059A0B0) + 48);
    v24 = sub_100571A68();
    v25 = (*(*(v24 - 8) + 8))(&v10[v23], v24);
    if (v22 != 1)
    {

      return;
    }

    v26 = v19;
    v49 = v21;
    v50 = v20;
    v27 = (*v18 + 312);
    v28 = *v27;
    v29 = v27;
    (*v27)(v25);
    v30 = type metadata accessor for Lyrics.Transliteration(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    v47 = v30;
    if ((v32)(v8, 1) == 1)
    {

      sub_1003A1DD4(v18, v26, v49, v50, 1);
      v33 = v8;
    }

    else
    {
      v46 = v31;
      v44 = v29;
      v45 = v28;
      v48 = v18;
      sub_10001036C(v8, &qword_1006EFD30, &qword_10059A160);
      v34 = sub_10045DEE8(3, v52);
      v35 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

      LODWORD(v35) = v35(3) & 1;

      if (v34 == v35)
      {
        sub_1003A1DD4(v48, v26, v49, v50, 1);

        return;
      }

      v52 = v26;
      (*(*v48 + 440))(v36);
      swift_getKeyPath();
      v56 = v14;
      sub_10056CEF8();

      v37 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
      swift_beginAccess();
      sub_10000CC8C(v14 + v37, v6, &qword_1006EFD30, &qword_10059A160);
      v38 = v47;
      v39 = v32(v6, 1, v47);
      sub_10001036C(v6, &qword_1006EFD30, &qword_10059A160);
      v40 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__needsLyricsReset;
      v41 = swift_beginAccess();
      if (*(v14 + v40) == 1)
      {
        *(v14 + v40) = 1;
      }

      else
      {
        swift_getKeyPath();
        __chkstk_darwin();
        *(&v44 - 2) = v14;
        *(&v44 - 8) = 1;
        v55 = v14;
        sub_10056CEE8();
      }

      v42 = v51;
      if (v39 == 1)
      {
        (*(v46 + 56))(v51, 1, 1, v38);
        v43 = v48;
      }

      else
      {
        v43 = v48;
        v45(v41);
      }

      swift_getKeyPath();
      __chkstk_darwin();
      *(&v44 - 2) = v14;
      *(&v44 - 1) = v42;
      v55 = v14;
      sub_10056CEE8();
      sub_1003A1DD4(v43, v52, v49, v50, 1);

      v33 = v42;
    }

    sub_10001036C(v33, &qword_1006EFD30, &qword_10059A160);
  }
}

uint64_t Lyrics.StateManager.State.lyrics.getter()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003A0A4C(v0, v2, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1003A0AB4(v2, type metadata accessor for Lyrics.StateManager.State.Loading);
    return 0;
  }

  v3 = *v2;
  v4 = v2[32];
  v5 = *(sub_100009DCC(&qword_1006EFD18, &qword_10059A0B0) + 48);
  v6 = sub_100571A68();
  (*(*(v6 - 8) + 8))(&v2[v5], v6);
  if ((v4 & 1) == 0)
  {

    return 0;
  }

  return v3;
}

double sub_1003945AC(uint64_t a1)
{
  v2 = v1;
  sub_100009DCC(&qword_1006F0320, &qword_10059A538);
  __chkstk_darwin();
  v5 = &v72[-v4];
  v6 = sub_10056E5F8();
  v85 = *(v6 - 8);
  __chkstk_darwin();
  v84 = &v72[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin();
  v86 = &v72[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100009DCC(&qword_1006EFD30, &qword_10059A160);
  __chkstk_darwin();
  v81 = &v72[-v9];
  sub_100009DCC(&qword_1006EFD28, &qword_10059A130);
  __chkstk_darwin();
  v80 = &v72[-v10];
  v93 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v83 = &v72[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v13 = &v72[-v12];
  v14 = sub_10056DF88();
  v89 = *(v14 - 8);
  v90 = v14;
  __chkstk_darwin();
  v16 = &v72[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v79 = &v72[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v19 = &v72[-v18];
  __chkstk_darwin();
  v21 = &v72[-v20];
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v95[3] = v2;
  v23 = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v82 = v22;
  v87 = v23;
  sub_10056CEF8();

  v24 = v2 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  v91 = v24;
  sub_1003A0A4C(v24, v21, type metadata accessor for Lyrics.StateManager.State);
  v88 = a1;
  LOBYTE(v24) = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(v21, a1);
  sub_1003A0AB4(v21, type metadata accessor for Lyrics.StateManager.State);
  if ((v24 & 1) == 0)
  {
    v76 = v6;
    v77 = v5;
    v26 = Logger.lyrics.unsafeMutableAddressor();
    (*(v89 + 16))(v16, v26, v90);
    sub_1003A0A4C(v88, v19, type metadata accessor for Lyrics.StateManager.State);

    v27 = sub_10056DF68();
    v28 = sub_100573448();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v95[0] = v75;
      *v29 = 136446466;
      sub_1003A0A4C(v19, v21, type metadata accessor for Lyrics.StateManager.State);
      v30 = sub_100572978();
      v74 = v27;
      v31 = v30;
      v73 = v28;
      v33 = v32;
      sub_1003A0AB4(v19, type metadata accessor for Lyrics.StateManager.State);
      v34 = sub_10037A2AC(v31, v33, v95);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2082;
      swift_getKeyPath();
      v94 = v2;
      sub_10056CEF8();

      v35 = v91;
      sub_1003A0A4C(v91, v21, type metadata accessor for Lyrics.StateManager.State);
      v36 = sub_100572978();
      v38 = sub_10037A2AC(v36, v37, v95);

      *(v29 + 14) = v38;
      v39 = v74;
      _os_log_impl(&_mh_execute_header, v74, v73, "[State] changed from %{public}s to %{public}s", v29, 0x16u);
      swift_arrayDestroy();

      (*(v89 + 8))(v16, v90);
    }

    else
    {

      sub_1003A0AB4(v19, type metadata accessor for Lyrics.StateManager.State);
      (*(v89 + 8))(v16, v90);
      v35 = v91;
    }

    swift_getKeyPath();
    v95[0] = v2;
    sub_10056CEF8();

    v40 = v79;
    sub_1003A0A4C(v35, v79, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v40, v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0AB4(v40, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = *v13;
      v42 = v13[32];
      v43 = *(sub_100009DCC(&qword_1006EFD18, &qword_10059A0B0) + 48);
      v44 = sub_100571A68();
      (*(*(v44 - 8) + 8))(&v13[v43], v44);
      if (v42)
      {
        v45 = v83;
        v46 = v81;
        if (v41)
        {
          v47 = *(*v41 + 288);

          v49 = v80;
          v47(v48);

          v50 = type metadata accessor for Lyrics.Translation(0);
          v51 = 1;
          v52 = (*(*(v50 - 8) + 48))(v49, 1, v50);
          sub_10001036C(v49, &qword_1006EFD28, &qword_10059A130);
          if (v52 != 1)
          {
            goto LABEL_17;
          }

          v53 = *(*v41 + 312);

          v53(v54);

          v55 = type metadata accessor for Lyrics.Transliteration(0);
          v51 = 1;
          if ((*(*(v55 - 8) + 48))(v46, 1, v55) != 1)
          {
LABEL_16:
            sub_10001036C(v46, &qword_1006EFD30, &qword_10059A160);
LABEL_17:
            v59 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__showTranslationButton;
            swift_beginAccess();
            if (v51 == *(v2 + v59))
            {
              *(v2 + v59) = v51;
            }

            else
            {
              swift_getKeyPath();
              __chkstk_darwin();
              *&v72[-16] = v2;
              v72[-8] = v51;
              v94 = v2;
              sub_10056CEE8();
            }

            v60 = v77;
            swift_getKeyPath();
            v94 = v2;
            sub_10056CEF8();

            v61 = v91;
            sub_1003A0A4C(v91, v45, type metadata accessor for Lyrics.StateManager.State.Loading);
            swift_getKeyPath();
            v94 = v2;
            sub_10056CEF8();

            v62 = v61 + *(v92 + 20);
            v63 = v86;
            sub_1003A0A4C(v62, v86, type metadata accessor for Lyrics.StateManager.State.Display);
            v65 = v84;
            v64 = v85;
            v66 = v76;
            (*(v85 + 104))(v84, enum case for ScenePhase.active(_:), v76);
            v67 = sub_10056E5E8();
            (*(v64 + 8))(v65, v66);
            if ((v67 & 1) != 0 && v63[*(v78 + 20)] == 1)
            {
              v68 = v63[*(v78 + 24)];
            }

            else
            {
              v68 = 0;
            }

            sub_1003A0AB4(v63, type metadata accessor for Lyrics.StateManager.State.Display);
            sub_1003A23AC(v45, v60);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload == 1)
              {
                sub_1003A1DD4(*v60, *(v60 + 8), *(v60 + 16), *(v60 + 24), *(v60 + 32));
                v70 = *(sub_100009DCC(&qword_1006EFD18, &qword_10059A0B0) + 48);
                v71 = sub_100571A68();
                (*(*(v71 - 8) + 8))(v60 + v70, v71);
                if (v68)
                {
                  goto LABEL_30;
                }
              }
            }

            else
            {
              sub_1003A0AB4(v60, type metadata accessor for Lyrics.StateManager.State.Loading);
            }

            sub_10039E3B4(v88);
LABEL_30:
            sub_10039DA90();

            return result;
          }

LABEL_15:
          v51 = 0;
          goto LABEL_16;
        }

LABEL_14:
        v56 = type metadata accessor for Lyrics.Translation(0);
        v57 = v80;
        (*(*(v56 - 8) + 56))(v80, 1, 1, v56);
        sub_10001036C(v57, &qword_1006EFD28, &qword_10059A130);
        v58 = type metadata accessor for Lyrics.Transliteration(0);
        (*(*(v58 - 8) + 56))(v46, 1, 1, v58);
        goto LABEL_15;
      }

      v45 = v83;
    }

    else
    {
      sub_1003A0AB4(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
      v45 = v83;
    }

    v46 = v81;
    goto LABEL_14;
  }

  return result;
}

void (*sub_1003952B8(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for Lyrics.StateManager.State(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_1003A0A4C(v1 + v8, v7, type metadata accessor for Lyrics.StateManager.State);
  return sub_1003953E0;
}

void sub_1003953E0(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_1003A0A4C(*(*a1 + 12), v6, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v7 + v4, v5, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1003A11A0(v6, v7 + v4, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1003945AC(v5);
    sub_1003A0AB4(v5, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    sub_1003A0A4C(v7 + v4, v6, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1003A11A0(v3, v7 + v4, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1003945AC(v6);
  }

  sub_1003A0AB4(v6, type metadata accessor for Lyrics.StateManager.State);
  sub_1003A0AB4(v3, type metadata accessor for Lyrics.StateManager.State);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t Lyrics.StateManager.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return sub_1003A0A4C(v5 + v3, a1, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_10039562C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return sub_1003A0A4C(v3 + v4, a2, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_100395708(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003A0A4C(a1, v3, type metadata accessor for Lyrics.StateManager.State);
  return Lyrics.StateManager.state.setter(v3);
}

uint64_t sub_1003957A8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v10[-v6];
  sub_1003A0A4C(a2, &v10[-v6], type metadata accessor for Lyrics.StateManager.State);
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_1003A0A4C(a1 + v8, v5, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  sub_1003A11A0(v7, a1 + v8, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  sub_1003945AC(v5);
  sub_1003A0AB4(v5, type metadata accessor for Lyrics.StateManager.State);
  return sub_1003A0AB4(v7, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t (*Lyrics.StateManager.state.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_1003952B8(v4);
  return sub_100395A24;
}

void sub_100395A30()
{
  v1 = v0;
  sub_100009DCC(&qword_1006EFD30, &qword_10059A160);
  __chkstk_darwin();
  v3 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = v46 - v4;
  __chkstk_darwin();
  v6 = v46 - v5;
  __chkstk_darwin();
  v8 = v46 - v7;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v56 = v1;
  v52 = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v53 = v13;
  sub_10056CEF8();

  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (v15)
  {
    v16 = [v15 vocalsControlCommand];
    if (v16)
    {
      v17 = [v16 isActive];
      swift_unknownObjectRelease();
      if (v17)
      {
        swift_getKeyPath();
        v55 = v1;
        sub_10056CEF8();

        v18 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
        swift_beginAccess();
        sub_1003A0A4C(v1 + v18, v12, type metadata accessor for Lyrics.StateManager.State);
        sub_1003A0A4C(v12, v10, type metadata accessor for Lyrics.StateManager.State.Loading);
        sub_1003A0AB4(v12, type metadata accessor for Lyrics.StateManager.State);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v19 = *v10;
          v20 = *(v10 + 1);
          v21 = *(v10 + 3);
          v49 = *(v10 + 2);
          v50 = v21;
          v22 = v10[32];
          v23 = *(sub_100009DCC(&qword_1006EFD18, &qword_10059A0B0) + 48);
          v24 = sub_100571A68();
          v25 = (*(*(v24 - 8) + 8))(&v10[v23], v24);
          if (v22 == 1)
          {
            v48 = v20;
            v26 = (*v19 + 312);
            v47 = *v26;
            v46[1] = v26;
            v47(v25);
            v27 = type metadata accessor for Lyrics.Transliteration(0);
            v28 = *(*(v27 - 8) + 48);
            if (v28(v8, 1, v27) == 1)
            {
              sub_1003A1DD4(v19, v48, v49, v50, 1);
              sub_10001036C(v8, &qword_1006EFD30, &qword_10059A160);
            }

            else
            {
              v46[0] = v19;
              sub_10001036C(v8, &qword_1006EFD30, &qword_10059A160);
              swift_getKeyPath();
              v55 = v1;
              sub_10056CEF8();

              v38 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
              swift_beginAccess();
              sub_10000CC8C(v1 + v38, v6, &qword_1006EFD30, &qword_10059A160);
              v39 = v28(v6, 1, v27);
              v40 = v48;
              if (v39 == 1)
              {
                sub_10001036C(v6, &qword_1006EFD30, &qword_10059A160);
                v41 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

                LOBYTE(v41) = v41(2);

                v44 = v49;
                v43 = v50;
                if ((v41 & 1) == 0)
                {
                  v37 = v51;
                  v45 = v46[0];
                  v47(v42);
                  swift_getKeyPath();
                  __chkstk_darwin();
                  v46[-2] = v1;
                  v46[-1] = v37;
                  v55 = v1;
                  sub_10056CEE8();
                  sub_1003A1DD4(v45, v40, v44, v43, 1);
                  goto LABEL_16;
                }

                sub_1003A1DD4(v46[0], v40, v49, v50, 1);
              }

              else
              {
                sub_1003A1DD4(v46[0], v48, v49, v50, 1);
                sub_10001036C(v6, &qword_1006EFD30, &qword_10059A160);
              }
            }
          }

          else
          {
          }
        }

        else
        {
          sub_1003A0AB4(v10, type metadata accessor for Lyrics.StateManager.State.Loading);
        }
      }
    }
  }

  swift_getKeyPath();
  v55 = v1;
  sub_10056CEF8();

  v29 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  sub_10000CC8C(v1 + v29, v3, &qword_1006EFD30, &qword_10059A160);
  v30 = type metadata accessor for Lyrics.Transliteration(0);
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v3, 1, v30);
  sub_10001036C(v3, &qword_1006EFD30, &qword_10059A160);
  if (v32 != 1)
  {
    v33 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

    LOBYTE(v33) = v33(1);

    if ((v33 & 1) == 0)
    {
      swift_getKeyPath();
      v54 = v1;
      sub_10056CEF8();

      v34 = *(v1 + v14);
      if (!v34 || (v35 = [v34 vocalsControlCommand]) == 0 || (v36 = objc_msgSend(v35, "isActive"), swift_unknownObjectRelease(), (v36 & 1) == 0))
      {
        v37 = v51;
        (*(v31 + 56))(v51, 1, 1, v30);
        swift_getKeyPath();
        __chkstk_darwin();
        v46[-2] = v1;
        v46[-1] = v37;
        v54 = v1;
        sub_10056CEE8();
LABEL_16:

        sub_10001036C(v37, &qword_1006EFD30, &qword_10059A160);
      }
    }
  }
}

void (*sub_10039630C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100396370;
}

void sub_100396370(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100395A30();
  }
}

void *Lyrics.StateManager.tracklist.getter()
{
  swift_getKeyPath();
  v5 = v0;
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id sub_100396468@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void Lyrics.StateManager.tracklist.setter(void *a1)
{
  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_10056CEE8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000D3B98(0, &qword_1006EFD20, MPCPlayerResponseTracklist_ptr);
  v5 = v4;
  v6 = a1;
  v7 = sub_100573A58();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;

  sub_100395A30();
}

void sub_1003966EC(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;

  sub_100395A30();
}

uint64_t (*Lyrics.StateManager.tracklist.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_10039630C(v4);
  return sub_10039689C;
}

double sub_1003968A8(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  sub_100009DCC(&qword_1006F4800, &qword_10059F670);
  __chkstk_darwin();
  v4 = &v30 - v3;
  sub_100009DCC(&qword_1006EFBE8, &qword_100599E50);
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = sub_100571A68();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v30 - v12;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v36 = v2;
  v15 = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v33 = v14;
  v34 = v15;
  sub_10056CEF8();

  v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_10000CC8C(&v2[v16], v8, &qword_1006EFBE8, &qword_100599E50);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    sub_10001036C(v8, &qword_1006EFBE8, &qword_100599E50);
  }

  else
  {
    v30 = v4;
    v18 = *(v10 + 32);
    v18(v13, v8, v9);
    sub_10000CC8C(v32, v6, &qword_1006EFBE8, &qword_100599E50);
    if (v17(v6, 1, v9) == 1)
    {
      (*(v10 + 8))(v13, v9);
      sub_10001036C(v6, &qword_1006EFBE8, &qword_100599E50);
    }

    else
    {
      v19 = v31;
      v18(v31, v6, v9);
      sub_1003A1FD4(&qword_1006F0300, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      if (sub_1005712E8())
      {
        v20 = _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(v13);
        v21 = _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(v19);
        v22 = *(v10 + 8);
        v22(v19, v9);
        v22(v13, v9);
        v4 = v30;
        if (((v20 ^ v21) & 1) == 0)
        {
          return result;
        }

        goto LABEL_10;
      }

      v24 = *(v10 + 8);
      v24(v19, v9);
      v24(v13, v9);
    }

    v4 = v30;
  }

LABEL_10:
  swift_getKeyPath();
  v35 = v2;
  sub_10056CEF8();

  v25 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask;
  if (*&v2[OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask])
  {

    sub_100572FB8();
    if (*&v2[v25])
    {
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v30 - 2) = v2;
      *(&v30 - 1) = 0;
      v35 = v2;
      sub_10056CEE8();
    }
  }

  v26 = sub_100572F48();
  (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
  sub_100572F08();

  v27 = sub_100572EF8();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = &protocol witness table for MainActor;
  v28[4] = v2;
  sub_100396F38(0, 0, v4, &unk_10059A528, v28);

  sub_10039A2FC(v29);

  return result;
}

uint64_t sub_100396E8C()
{
  v0[2] = sub_100572F08();
  v0[3] = sub_100572EF8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10031E56C;

  return sub_10039A734();
}

uint64_t sub_100396F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100009DCC(&qword_1006F4800, &qword_10059F670);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000CC8C(a3, v24 - v9, &qword_1006F4800, &qword_10059F670);
  v11 = sub_100572F48();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001036C(v10, &qword_1006F4800, &qword_10059F670);
  }

  else
  {
    sub_100572F38();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100572E78();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1005729C8() + 32;
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

      sub_10001036C(a3, &qword_1006F4800, &qword_10059F670);

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

  sub_10001036C(a3, &qword_1006F4800, &qword_10059F670);
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

uint64_t sub_100397238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100009DCC(&qword_1006F4800, &qword_10059F670);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000CC8C(a3, v24 - v9, &qword_1006F4800, &qword_10059F670);
  v11 = sub_100572F48();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001036C(v10, &qword_1006F4800, &qword_10059F670);
  }

  else
  {
    sub_100572F38();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100572E78();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1005729C8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_100009DCC(&qword_1006F0308, &qword_10059A4F0);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_10001036C(a3, &qword_1006F4800, &qword_10059F670);

      return v21;
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

  sub_10001036C(a3, &qword_1006F4800, &qword_10059F670);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_100009DCC(&qword_1006F0308, &qword_10059A4F0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10039754C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100009DCC(&qword_1006F4800, &qword_10059F670);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000CC8C(a3, v24 - v9, &qword_1006F4800, &qword_10059F670);
  v11 = sub_100572F48();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001036C(v10, &qword_1006F4800, &qword_10059F670);
  }

  else
  {
    sub_100572F38();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100572E78();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1005729C8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_100009DCC(&unk_1006F2A60, &qword_10059A450);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_10001036C(a3, &qword_1006F4800, &qword_10059F670);

      return v21;
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

  sub_10001036C(a3, &qword_1006F4800, &qword_10059F670);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_100009DCC(&unk_1006F2A60, &qword_10059A450);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void (*sub_100397860(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100009DCC(&qword_1006EFBE8, &qword_100599E50) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_10000CC8C(v1 + v8, v7, &qword_1006EFBE8, &qword_100599E50);
  return sub_100397990;
}

void sub_100397990(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_10000CC8C(*(*a1 + 12), v6, &qword_1006EFBE8, &qword_100599E50);
    sub_10000CC8C(v7 + v4, v5, &qword_1006EFBE8, &qword_100599E50);
    swift_beginAccess();
    sub_1000F64CC(v6, v7 + v4, &qword_1006EFBE8, &qword_100599E50);
    swift_endAccess();
    sub_1003968A8(v5);
    sub_10001036C(v5, &qword_1006EFBE8, &qword_100599E50);
  }

  else
  {
    sub_10000CC8C(v7 + v4, v6, &qword_1006EFBE8, &qword_100599E50);
    swift_beginAccess();
    sub_1000F64CC(v3, v7 + v4, &qword_1006EFBE8, &qword_100599E50);
    swift_endAccess();
    sub_1003968A8(v6);
  }

  sub_10001036C(v6, &qword_1006EFBE8, &qword_100599E50);
  sub_10001036C(v3, &qword_1006EFBE8, &qword_100599E50);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_100397B28(uint64_t a1)
{
  sub_100009DCC(&qword_1006EFBE8, &qword_100599E50);
  __chkstk_darwin();
  v3 = &v5 - v2;
  sub_10000CC8C(a1, &v5 - v2, &qword_1006EFBE8, &qword_100599E50);
  return Lyrics.StateManager.song.setter(v3);
}

uint64_t Lyrics.StateManager.song.setter(uint64_t a1)
{
  sub_100009DCC(&qword_1006EFBE8, &qword_100599E50);
  __chkstk_darwin();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v10 - v5;
  v7 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_10000CC8C(v1 + v7, v6, &qword_1006EFBE8, &qword_100599E50);
  v8 = sub_1003A0BA0(v6, a1);
  sub_10001036C(v6, &qword_1006EFBE8, &qword_100599E50);
  if (v8)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_10056CEE8();
  }

  else
  {
    sub_10000CC8C(a1, v6, &qword_1006EFBE8, &qword_100599E50);
    sub_10000CC8C(v1 + v7, v4, &qword_1006EFBE8, &qword_100599E50);
    swift_beginAccess();
    sub_1000F64CC(v6, v1 + v7, &qword_1006EFBE8, &qword_100599E50);
    swift_endAccess();
    sub_1003968A8(v4);
    sub_10001036C(v4, &qword_1006EFBE8, &qword_100599E50);
    sub_10001036C(v6, &qword_1006EFBE8, &qword_100599E50);
  }

  return sub_10001036C(a1, &qword_1006EFBE8, &qword_100599E50);
}

uint64_t sub_100397E3C(uint64_t a1, uint64_t a2)
{
  sub_100009DCC(&qword_1006EFBE8, &qword_100599E50);
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v10[-v6];
  sub_10000CC8C(a2, &v10[-v6], &qword_1006EFBE8, &qword_100599E50);
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_10000CC8C(a1 + v8, v5, &qword_1006EFBE8, &qword_100599E50);
  swift_beginAccess();
  sub_1000F64CC(v7, a1 + v8, &qword_1006EFBE8, &qword_100599E50);
  swift_endAccess();
  sub_1003968A8(v5);
  sub_10001036C(v5, &qword_1006EFBE8, &qword_100599E50);
  return sub_10001036C(v7, &qword_1006EFBE8, &qword_100599E50);
}

uint64_t (*Lyrics.StateManager.song.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_100397860(v4);
  return sub_1003980D4;
}

uint64_t (*Lyrics.StateManager.showTranslationButton.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_1003980E0(v4);
  return sub_10039828C;
}

uint64_t sub_10039830C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1003983C0@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  v7 = *a3;
  result = swift_beginAccess();
  *a4 = *(v6 + v7);
  return result;
}

uint64_t (*Lyrics.StateManager.needsLyricsReset.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_100398298(v4);
  return sub_1003985C0;
}

uint64_t (*Lyrics.StateManager.currentTranslation.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_1003985CC(v4);
  return sub_1003987B8;
}

uint64_t sub_100398848@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  v10 = *a2;
  swift_beginAccess();
  return sub_10000CC8C(v12 + v10, a5, a3, a4);
}

uint64_t sub_100398928@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  v11 = *a3;
  swift_beginAccess();
  return sub_10000CC8C(v10 + v11, a6, a4, a5);
}

uint64_t sub_100398A3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_1000F64CC(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t (*Lyrics.StateManager.currentTransliteration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_1003987C4(v4);
  return sub_100398BF4;
}

uint64_t sub_100398C84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  sub_100009DCC(a5, a6);
  __chkstk_darwin();
  v13 = &v16[-v12];
  sub_10000CC8C(a1, &v16[-v12], a5, a6);
  v14 = *a2;
  swift_getKeyPath();
  v17 = v14;
  v18 = v13;
  v19 = v14;
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEE8();

  return sub_10001036C(v13, a5, a6);
}

uint64_t sub_100398DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEE8();

  return sub_10001036C(a1, a4, a5);
}

uint64_t (*Lyrics.StateManager.metricsPage.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_100398C00(v4);
  return sub_100399010;
}

void sub_10039901C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_10056CF08();

  free(v3);
}

Swift::Void __swiftcall Lyrics.StateManager.retryLoadingLyrics()()
{
  v1 = v0;
  sub_100009DCC(&qword_1006F4800, &qword_10059F670);
  __chkstk_darwin();
  v3 = &v7 - v2;
  v4 = sub_100572F48();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_100572F08();

  v5 = sub_100572EF8();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v1;
  sub_100396F38(0, 0, v3, &unk_10059A1A0, v6);
}

uint64_t sub_1003991D4()
{
  v0[2] = sub_100572F08();
  v0[3] = sub_100572EF8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10031E380;

  return sub_10039A734();
}

uint64_t sub_100399280()
{
  v1 = sub_10056E5F8();
  v27 = *(v1 - 8);
  v28 = v1;
  __chkstk_darwin();
  v26 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F2E20, &qword_10059E710);
  __chkstk_darwin();
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v25 = type metadata accessor for Lyrics.StateManager.State(0);
  v8 = *(v25 + 24);
  sub_10000CC8C(v0 + v8, v7, &qword_1006F2E20, &qword_10059E710);
  v9 = sub_10056CAA8();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = v7;
  v13 = v0;
  sub_10001036C(v12, &qword_1006F2E20, &qword_10059E710);
  if (v11 == 1)
  {
    sub_1003A0A4C(v0, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1003A1DD4(*v4, *(v4 + 1), *(v4 + 2), *(v4 + 3), v4[32]);
      v14 = *(sub_100009DCC(&qword_1006EFD18, &qword_10059A0B0) + 48);
      v15 = sub_100571A68();
      (*(*(v15 - 8) + 8))(&v4[v14], v15);
      v16 = v26;
      v17 = v0 + *(v25 + 20);
      v19 = v27;
      v18 = v28;
      (*(v27 + 104))(v26, enum case for ScenePhase.active(_:), v28);
      LOBYTE(v14) = sub_10056E5E8();
      (*(v19 + 8))(v16, v18);
      if (v14)
      {
        v20 = type metadata accessor for Lyrics.StateManager.State.Display(0);
        if (*(v17 + *(v20 + 20)) == 1 && *(v17 + *(v20 + 24)) == 1)
        {
          v21 = v24;
          sub_10056CA68();
          (*(v10 + 56))(v21, 0, 1, v9);
          return sub_1003A2188(v21, v13 + v8);
        }
      }
    }

    else
    {
      sub_1003A0AB4(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    }
  }

  sub_10001036C(v13 + v8, &qword_1006F2E20, &qword_10059E710);
  return (*(v10 + 56))(v13 + v8, 1, 1, v9);
}

uint64_t Lyrics.StateManager.State.loading.setter(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v9 - v5;
  sub_1003A0A4C(v1, &v9 - v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1003A11A0(a1, v1, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1003A0A4C(v1, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  v7 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v4, v6);
  sub_1003A0AB4(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((v7 & 1) == 0)
  {
    sub_100399280();
  }

  sub_1003A0AB4(a1, type metadata accessor for Lyrics.StateManager.State.Loading);
  return sub_1003A0AB4(v6, type metadata accessor for Lyrics.StateManager.State.Loading);
}

void (*Lyrics.StateManager.State.loading.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(type metadata accessor for Lyrics.StateManager.State.Loading(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  sub_1003A0A4C(v1, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  return sub_1003998F0;
}

void sub_1003998F0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v4 = v2[3];
    v7 = *v2;
    v6 = v2[1];
    sub_1003A0A4C((*a1)[5], v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0A4C(v7, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A11A0(v5, v7, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0A4C(v7, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    v8 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v4, v6);
    sub_1003A0AB4(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v8 & 1) == 0)
    {
      sub_100399280();
    }

    v10 = v2[4];
    v9 = v2[5];
    v12 = v2[2];
    v11 = v2[3];
    v13 = v2[1];
    sub_1003A0AB4(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    v14 = v13;
    v15 = v9;
  }

  else
  {
    v17 = v2[3];
    v16 = v2[4];
    v18 = *v2;
    sub_1003A0A4C(*v2, v16, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A11A0(v3, v18, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0A4C(v18, v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    v19 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v17, v16);
    sub_1003A0AB4(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v19 & 1) == 0)
    {
      sub_100399280();
    }

    v9 = v2[4];
    v14 = v2[5];
    v12 = v2[2];
    v11 = v2[3];
    v13 = v2[1];
    v15 = v14;
    v10 = v9;
  }

  sub_1003A0AB4(v14, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1003A0AB4(v9, type metadata accessor for Lyrics.StateManager.State.Loading);
  free(v15);
  free(v10);
  free(v11);
  free(v12);
  free(v13);

  free(v2);
}

uint64_t Lyrics.StateManager.State.display.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = *(type metadata accessor for Lyrics.StateManager.State(0) + 20);
  sub_1003A0A4C(v1 + v8, v7, type metadata accessor for Lyrics.StateManager.State.Display);
  sub_1003A11A0(a1, v1 + v8, type metadata accessor for Lyrics.StateManager.State.Display);
  sub_1003A0A4C(v1 + v8, v5, type metadata accessor for Lyrics.StateManager.State.Display);
  if ((sub_10056E5E8() & 1) != 0 && v5[*(v3 + 20)] == v7[*(v3 + 20)])
  {
    v10 = v5[*(v3 + 24)];
    sub_1003A0AB4(v5, type metadata accessor for Lyrics.StateManager.State.Display);
    if (v10 == v7[*(v3 + 24)])
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_1003A0AB4(v5, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  sub_100399280();
LABEL_5:
  sub_1003A0AB4(a1, type metadata accessor for Lyrics.StateManager.State.Display);
  return sub_1003A0AB4(v7, type metadata accessor for Lyrics.StateManager.State.Display);
}

void (*Lyrics.StateManager.State.display.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for Lyrics.StateManager.State.Display(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[2] = v4;
  v6 = type metadata accessor for Lyrics.StateManager.State(0);
  sub_1003A0A4C(v1 + *(v6 + 20), v5, type metadata accessor for Lyrics.StateManager.State.Display);
  return sub_100399D94;
}

void sub_100399D94(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1003A0A4C(*(a1 + 16), v2, type metadata accessor for Lyrics.StateManager.State.Display);
    Lyrics.StateManager.State.display.setter(v2);
    sub_1003A0AB4(v3, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  else
  {
    Lyrics.StateManager.State.display.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t Lyrics.StateManager.State.Loading.lyricsType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003A0A4C(v2, v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  result = swift_getEnumCaseMultiPayload();
  v7 = 0uLL;
  if (!result)
  {
    result = sub_1003A0AB4(v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    v7 = 0uLL;
    goto LABEL_5;
  }

  if (result != 1)
  {
LABEL_5:
    v9 = -1;
    v12 = 0uLL;
    goto LABEL_6;
  }

  v8 = *v5;
  v13 = *(v5 + 1);
  v14 = v8;
  v9 = v5[32];
  v10 = *(sub_100009DCC(&qword_1006EFD18, &qword_10059A0B0) + 48);
  v11 = sub_100571A68();
  result = (*(*(v11 - 8) + 8))(&v5[v10], v11);
  v12 = v13;
  v7 = v14;
LABEL_6:
  *a1 = v7;
  *(a1 + 16) = v12;
  *(a1 + 32) = v9;
  return result;
}

uint64_t Lyrics.StateManager.State.Display.scenePhase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10056E5F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Lyrics.StateManager.State.Display.scenePhase.setter(uint64_t a1)
{
  v3 = sub_10056E5F8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Lyrics.StateManager.State.Display.sceneIsVisible.setter(char a1)
{
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Lyrics.StateManager.State.Display.hasAppeared.setter(char a1)
{
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t static Lyrics.StateManager.State.Display.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_10056E5E8() & 1) != 0 && (v4 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_10039A208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_10056E5E8() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_10039A288(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(v5, v7) & 1;
}

double sub_10039A2FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask;
  if (!*(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_10056CEE8();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_100572F98();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_10039A4A0(uint64_t a1)
{
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();
}

uint64_t sub_10039A544@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  *a4 = *(v6 + *a3);
}

double sub_10039A624(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEE8();

  return result;
}

uint64_t sub_10039A734()
{
  v1[74] = v0;
  sub_100009DCC(&qword_1006EFD30, &qword_10059A160);
  v1[75] = swift_task_alloc();
  sub_100009DCC(&qword_1006EFD28, &qword_10059A130);
  v1[76] = swift_task_alloc();
  v2 = sub_10056DF88();
  v1[77] = v2;
  v1[78] = *(v2 - 8);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  type metadata accessor for Lyrics.StateManager.State(0);
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  sub_100009DCC(&qword_1006EFBE8, &qword_100599E50);
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v3 = sub_100571A68();
  v1[111] = v3;
  v1[112] = *(v3 - 8);
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  sub_100572F08();
  v1[119] = sub_100572EF8();
  v5 = sub_100572E78();
  v1[120] = v5;
  v1[121] = v4;

  return _swift_task_switch(sub_10039AB0C, v5, v4);
}

uint64_t sub_10039AB0C()
{
  v68 = v0;
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[74];
  swift_getKeyPath();
  v0[122] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v0[41] = v4;
  v0[123] = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  v5 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v0[124] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_10000CC8C(v4 + v5, v3, &qword_1006EFBE8, &qword_100599E50);
  v6 = *(v1 + 48);
  v0[125] = v6;
  v0[126] = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v2) == 1)
  {
    v7 = v0[110];
    v8 = v0[98];
    v66 = v0[97];
    v9 = v0[85];
    v10 = v0[74];

    sub_10001036C(v7, &qword_1006EFBE8, &qword_100599E50);
    *v8 = 0;
    *(v8 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[73] = v10;
    sub_10056CEF8();

    v0[69] = v10;
    swift_getKeyPath();
    sub_10056CF18();

    v11 = v10 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_1003A0A4C(v11, v9, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v9, v66, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A11A0(v8, v9, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v9, v66) & 1) == 0)
    {
      sub_100399280();
    }

    v12 = v0[98];
    v13 = v0[90];
    v14 = v0[85];
    v15 = v0[74];
    sub_1003A0AB4(v0[97], type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0AB4(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0A4C(v11, v13, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1003A11A0(v14, v11, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1003945AC(v13);
    sub_1003A0AB4(v13, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0AB4(v14, type metadata accessor for Lyrics.StateManager.State);
    v0[63] = v15;
    swift_getKeyPath();
    sub_10056CF08();

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[118];
    v19 = v0[112];
    v20 = v0[111];
    v21 = v0[110];
    v22 = v0[108];
    v63 = v0[107];
    v23 = v0[91];
    v24 = v0[74];
    v25 = *(v19 + 32);
    v0[127] = v25;
    v0[128] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v25(v18, v21, v20);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[58] = v24;
    sub_10056CEF8();

    v0[55] = v24;
    swift_getKeyPath();
    sub_10056CF18();

    v26 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    v0[129] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_1003A0A4C(v24 + v26, v23, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v23, v63, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A11A0(v22, v23, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v23, v63) & 1) == 0)
    {
      sub_100399280();
    }

    v61 = v0[117];
    v64 = v0[118];
    v27 = v0[112];
    v28 = v0[108];
    v29 = v0[91];
    v30 = v0[90];
    v56 = v0[82];
    v31 = v0[78];
    v57 = v0[77];
    v59 = v0[111];
    v32 = v0[74];
    sub_1003A0AB4(v0[107], type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0AB4(v28, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0A4C(v24 + v26, v30, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1003A11A0(v29, v24 + v26, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1003945AC(v30);
    sub_1003A0AB4(v30, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0AB4(v29, type metadata accessor for Lyrics.StateManager.State);
    v0[52] = v32;
    swift_getKeyPath();
    sub_10056CF08();

    v33 = Logger.lyrics.unsafeMutableAddressor();
    v0[130] = v33;
    v34 = *(v31 + 16);
    v0[131] = v34;
    v0[132] = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v56, v33, v57);
    v35 = *(v27 + 16);
    v0[133] = v35;
    v0[134] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v35(v61, v64, v59);
    v36 = sub_10056DF68();
    v37 = sub_100573448();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[117];
    v40 = v0[112];
    v41 = v0[111];
    v42 = v0[82];
    v43 = v0[78];
    v44 = v0[77];
    if (v38)
    {
      v45 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67 = v65;
      *v45 = 136446210;
      sub_1003A1FD4(&qword_1006F02F8, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v60 = v44;
      v62 = v42;
      v46 = sub_100574408();
      v48 = v47;
      v58 = v37;
      v49 = *(v40 + 8);
      v49(v39, v41);
      v50 = sub_10037A2AC(v46, v48, &v67);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v36, v58, "[State] Loading lyrics song %{public}s", v45, 0xCu);
      sub_100010474(v65);

      v51 = *(v43 + 8);
      v51(v62, v60);
    }

    else
    {

      v49 = *(v40 + 8);
      v49(v39, v41);
      v51 = *(v43 + 8);
      v51(v42, v44);
    }

    v0[136] = v49;
    v0[135] = v51;
    v52 = v0[74];
    swift_getKeyPath();
    v0[50] = v52;
    sub_10056CEF8();

    v53 = *(v52 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
    v0[137] = v53;
    v53;
    v54 = swift_task_alloc();
    v0[138] = v54;
    *v54 = v0;
    v54[1] = sub_10039B5D4;
    v55 = v0[118];

    return LyricsLoader.loadLyrics(for:)(v55);
  }
}

uint64_t sub_10039B5D4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 1112) = a1;
  *(v5 + 1120) = a2;
  *(v5 + 323) = a3;
  *(v5 + 1128) = v3;

  if (v3)
  {
    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = sub_10039CD10;
  }

  else
  {

    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = sub_10039B704;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10039B704()
{
  v163 = v0;

  if (sub_100572FC8())
  {
    v1 = *(v0 + 1120);
    v2 = *(v0 + 1112);
    v3 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    sub_10001B5A4(v2, v1, v3 & 1);
    goto LABEL_36;
  }

  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 888);
  v7 = *(v0 + 872);
  v8 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 424) = v8;
  sub_10056CEF8();

  sub_10000CC8C(v8 + v5, v7, &qword_1006EFBE8, &qword_100599E50);
  if (v4(v7, 1, v6) == 1)
  {
    v9 = *(v0 + 1120);
    v10 = *(v0 + 1112);
    v11 = *(v0 + 872);
    v12 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    sub_10001B5A4(v10, v9, v12 & 1);
    sub_10001036C(v11, &qword_1006EFBE8, &qword_100599E50);
    goto LABEL_36;
  }

  (*(v0 + 1016))(*(v0 + 928), *(v0 + 872), *(v0 + 888));
  sub_1003A1FD4(&qword_1006F0300, &type metadata accessor for Song, &protocol conformance descriptor for Song);
  v13 = sub_1005712E8();
  v14 = *(v0 + 323);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  if ((v13 & 1) == 0)
  {
    v53 = *(v0 + 1088);
    v54 = *(v0 + 944);
    v55 = *(v0 + 928);
    v56 = *(v0 + 888);
    sub_10001B5A4(*(v0 + 1112), *(v0 + 1120), v14 & 1);
    v53(v55, v56);
    v53(v54, v56);
    goto LABEL_36;
  }

  v17 = *(v0 + 1064);
  v18 = *(v0 + 944);
  v19 = *(v0 + 920);
  v20 = *(v0 + 888);
  (*(v0 + 1048))(*(v0 + 648), *(v0 + 1040), *(v0 + 616));
  v17(v19, v18, v20);
  sub_10002AAC4(v16, v15, v14 & 1);
  v21 = sub_10056DF68();
  v22 = sub_100573448();
  sub_10001B5A4(v16, v15, v14 & 1);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 1112);
    v24 = *(v0 + 920);
    v130 = *(v0 + 1088);
    v25 = *(v0 + 888);
    v149 = *(v0 + 648);
    v156 = *(v0 + 1080);
    v134 = *(v0 + 1120);
    v143 = *(v0 + 616);
    v132 = *(v0 + 323);
    v26 = swift_slowAlloc();
    v162[0] = swift_slowAlloc();
    *v26 = 136446466;
    sub_1003A1FD4(&qword_1006F02F8, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    v27 = sub_100574408();
    v29 = v28;
    v130(v24, v25);
    v30 = sub_10037A2AC(v27, v29, v162);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    *(v0 + 304) = v23;
    *(v0 + 312) = v134;
    *(v0 + 320) = v132 & 1;
    sub_10002AAC4(v23, v134, v132 & 1);
    v31 = sub_100572978();
    v33 = sub_10037A2AC(v31, v32, v162);

    *(v26 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v21, v22, "[State] Successfully loaded lyrics for song %{public}s with result %{public}s", v26, 0x16u);
    swift_arrayDestroy();

    v156(v149, v143);
    if ((*(v0 + 323) & 1) == 0)
    {
LABEL_8:
      v34 = *(v0 + 1120);
      v35 = *(v0 + 1112);
      v36 = *(v0 + 1064);
      v150 = *(v0 + 1032);
      v37 = *(v0 + 944);
      v38 = *(v0 + 888);
      v39 = *(v0 + 848);
      v157 = *(v0 + 840);
      v40 = *(v0 + 712);
      v41 = *(v0 + 592);
      v42 = *(sub_100009DCC(&qword_1006EFD18, &qword_10059A0B0) + 48);
      *v39 = v35;
      *(v39 + 8) = v34;
      *(v39 + 16) = _swiftEmptyArrayStorage;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      v36(v39 + v42, v37, v38);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      *(v0 + 568) = v41;

      sub_10056CEF8();

      *(v0 + 576) = v41;
      swift_getKeyPath();
      sub_10056CF18();

      sub_1003A0A4C(v41 + v150, v40, type metadata accessor for Lyrics.StateManager.State);
      sub_1003A0A4C(v40, v157, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1003A11A0(v39, v40, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v40, v157) & 1) == 0)
      {
        sub_100399280();
      }

      v43 = *(v0 + 1088);
      v44 = *(v0 + 1032);
      v151 = *(v0 + 1120);
      v158 = *(v0 + 944);
      v138 = *(v0 + 1112);
      v144 = *(v0 + 928);
      v45 = *(v0 + 888);
      v46 = *(v0 + 848);
      v47 = *(v0 + 720);
      v48 = *(v0 + 712);
      v49 = *(v0 + 592);
      sub_1003A0AB4(*(v0 + 840), type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1003A0AB4(v46, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1003A0A4C(v49 + v44, v47, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      sub_1003A11A0(v48, v49 + v44, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      sub_1003945AC(v47);
      sub_1003A0AB4(v47, type metadata accessor for Lyrics.StateManager.State);
      sub_1003A0AB4(v48, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 336) = v49;
      swift_getKeyPath();
      sub_10056CF08();

      v50 = v138;
      v51 = v151;
      v52 = 0;
LABEL_31:
      sub_10001B5A4(v50, v51, v52);
      v43(v144, v45);
      v43(v158, v45);
      goto LABEL_36;
    }
  }

  else
  {
    v57 = *(v0 + 1088);
    v58 = *(v0 + 1080);
    v59 = *(v0 + 920);
    v60 = *(v0 + 888);
    v61 = *(v0 + 648);
    v62 = *(v0 + 616);

    v57(v59, v60);
    v58(v61, v62);
    if ((*(v0 + 323) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v63 = *(v0 + 1112);
  v64 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 432) = v64;
  sub_10056CEF8();

  v65 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v66 = *(v64 + v65);
  if (v66)
  {
    v67 = v66;
    if ((MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter() & 1) == 0)
    {
      v110 = *(v0 + 1112);
      v133 = *(v0 + 1120);
      v129 = *(v0 + 1064);
      v147 = *(v0 + 1032);
      v111 = *(v0 + 944);
      v112 = *(v0 + 888);
      v113 = *(v0 + 832);
      v154 = *(v0 + 824);
      v161 = v67;
      v114 = *(v0 + 704);
      v115 = *(v0 + 592);
      v116 = *(sub_100009DCC(&qword_1006EFD18, &qword_10059A0B0) + 48);
      v117 = (*(*v63 + 384))();
      v118 = *&v63[OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters];
      *v113 = v117;
      *(v113 + 8) = v119;
      *(v113 + 16) = v118;
      *(v113 + 24) = v110;
      *(v113 + 32) = 0;
      v129(v113 + v116, v111, v112);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      *(v0 + 536) = v115;
      sub_10002AAC4(v110, v133, 1);

      sub_10056CEF8();

      *(v0 + 544) = v115;
      swift_getKeyPath();
      sub_10056CF18();

      sub_1003A0A4C(v115 + v147, v114, type metadata accessor for Lyrics.StateManager.State);
      sub_1003A0A4C(v114, v154, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1003A11A0(v113, v114, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v114, v154) & 1) == 0)
      {
        sub_100399280();
      }

      v120 = *(v0 + 1088);
      v121 = *(v0 + 1032);
      v148 = *(v0 + 1120);
      v155 = *(v0 + 944);
      v137 = *(v0 + 1112);
      v142 = *(v0 + 928);
      v122 = *(v0 + 888);
      v123 = *(v0 + 832);
      v124 = *(v0 + 720);
      v125 = *(v0 + 704);
      v126 = *(v0 + 592);
      sub_1003A0AB4(*(v0 + 824), type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1003A0AB4(v123, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1003A0A4C(v126 + v121, v124, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      sub_1003A11A0(v125, v126 + v121, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      sub_1003945AC(v124);
      sub_1003A0AB4(v124, type metadata accessor for Lyrics.StateManager.State);
      sub_1003A0AB4(v125, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 560) = v126;
      swift_getKeyPath();
      sub_10056CF08();

      sub_10001B5A4(v137, v148, 1);
      v120(v142, v122);
      v120(v155, v122);
      goto LABEL_36;
    }
  }

  v68 = v63;
  if (v63[56] - 1 > 1)
  {
    v95 = *(v0 + 1112);
    v136 = *(v0 + 1120);
    v131 = *(v0 + 1064);
    v152 = *(v0 + 1032);
    v96 = *(v0 + 944);
    v97 = *(v0 + 888);
    v98 = *(v0 + 800);
    v160 = *(v0 + 792);
    v99 = *(v0 + 688);
    v100 = *(v0 + 592);
    v101 = *(sub_100009DCC(&qword_1006EFD18, &qword_10059A0B0) + 48);
    v102 = (*(*v68 + 384))();
    v103 = *&v68[OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters];
    *v98 = v102;
    *(v98 + 8) = v104;
    *(v98 + 16) = v103;
    *(v98 + 24) = v95;
    *(v98 + 32) = 0;
    v131(v98 + v101, v96, v97);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 448) = v100;
    sub_10002AAC4(v95, v136, 1);

    sub_10056CEF8();

    *(v0 + 456) = v100;
    swift_getKeyPath();
    sub_10056CF18();

    sub_1003A0A4C(v100 + v152, v99, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v99, v160, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A11A0(v98, v99, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v99, v160) & 1) == 0)
    {
      sub_100399280();
    }

    v43 = *(v0 + 1088);
    v105 = *(v0 + 1032);
    v153 = *(v0 + 1120);
    v158 = *(v0 + 944);
    v141 = *(v0 + 1112);
    v144 = *(v0 + 928);
    v45 = *(v0 + 888);
    v106 = *(v0 + 800);
    v107 = *(v0 + 720);
    v108 = *(v0 + 688);
    v109 = *(v0 + 592);
    sub_1003A0AB4(*(v0 + 792), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0AB4(v106, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0A4C(v109 + v105, v107, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1003A11A0(v108, v109 + v105, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1003945AC(v107);
    sub_1003A0AB4(v107, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0AB4(v108, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 472) = v109;
    swift_getKeyPath();
    sub_10056CF08();

    v50 = v141;
    v51 = v153;
    v52 = 1;
    goto LABEL_31;
  }

  v69 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

  if (v69(0))
  {
    v70 = *(v0 + 608);
    v71 = *(v0 + 592);
    (*(*v63 + 288))();
    swift_getKeyPath();
    v72 = swift_task_alloc();
    *(v72 + 16) = v71;
    *(v72 + 24) = v70;
    *(v0 + 528) = v71;
    sub_10056CEE8();

    sub_10001036C(v70, &qword_1006EFD28, &qword_10059A130);
  }

  v73 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 480) = v73;
  sub_10056CEF8();

  v74 = *(v64 + v65);
  if (v74 && (v75 = [v74 vocalsControlCommand]) != 0 && (v76 = objc_msgSend(v75, "isActive"), swift_unknownObjectRelease(), v76) && (v69(2) & 1) == 0 || (v69(1) & 1) != 0)
  {
    v77 = *(v0 + 600);
    v78 = *(v0 + 592);
    (*(*v63 + 312))();
    swift_getKeyPath();
    v79 = swift_task_alloc();
    *(v79 + 16) = v78;
    *(v79 + 24) = v77;
    *(v0 + 520) = v78;
    sub_10056CEE8();

    sub_10001036C(v77, &qword_1006EFD30, &qword_10059A160);
  }

  v80 = *(v0 + 1112);
  v81 = *(v0 + 1064);
  v139 = *(v0 + 1032);
  v82 = *(v0 + 944);
  v83 = *(v0 + 888);
  v84 = *(v0 + 816);
  v145 = *(v0 + 808);
  v85 = *(v0 + 696);
  v86 = *(v0 + 592);
  v87 = *(sub_100009DCC(&qword_1006EFD18, &qword_10059A0B0) + 48);
  *v84 = v80;
  *(v84 + 8) = 0;
  *(v84 + 16) = 0;
  *(v84 + 24) = 0;
  *(v84 + 32) = 1;
  v81(v84 + v87, v82, v83);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  *(v0 + 488) = v86;

  sub_10056CEF8();

  *(v0 + 496) = v86;
  swift_getKeyPath();
  sub_10056CF18();

  sub_1003A0A4C(v86 + v139, v85, type metadata accessor for Lyrics.StateManager.State);
  sub_1003A0A4C(v85, v145, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1003A11A0(v84, v85, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v85, v145) & 1) == 0)
  {
    sub_100399280();
  }

  v88 = *(v0 + 1088);
  v89 = *(v0 + 1032);
  v159 = *(v0 + 944);
  v140 = *(v0 + 928);
  v146 = *(v0 + 1120);
  v135 = *(v0 + 1112);
  v90 = *(v0 + 888);
  v91 = *(v0 + 816);
  v92 = *(v0 + 720);
  v93 = *(v0 + 696);
  v94 = *(v0 + 592);
  sub_1003A0AB4(*(v0 + 808), type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1003A0AB4(v91, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1003A0A4C(v94 + v89, v92, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  sub_1003A11A0(v93, v94 + v89, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  sub_1003945AC(v92);
  sub_1003A0AB4(v92, type metadata accessor for Lyrics.StateManager.State);
  sub_1003A0AB4(v93, type metadata accessor for Lyrics.StateManager.State);
  *(v0 + 512) = v94;
  swift_getKeyPath();
  sub_10056CF08();

  sub_10001B5A4(v135, v146, 1);
  v88(v140, v90);
  v88(v159, v90);
LABEL_36:

  v127 = *(v0 + 8);

  return v127();
}

uint64_t sub_10039CD10()
{
  v87 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1096);

  *(v0 + 360) = v1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006F47F0, &qword_10059F690);
  v3 = swift_dynamicCast();
  v77 = *(v0 + 1064);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 944);
  v7 = *(v0 + 888);
  v8 = *(v0 + 616);
  if (v3)
  {
    v9 = *(v0 + 912);
    v10 = *(v0 + 640);

    v74 = *(v0 + 321);
    v4(v10, v5, v8);
    v77(v9, v6, v7);
    v11 = sub_10056DF68();
    v12 = sub_100573448();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 1088);
    v15 = *(v0 + 1080);
    v16 = *(v0 + 912);
    v17 = *(v0 + 888);
    v18 = *(v0 + 640);
    v19 = *(v0 + 616);
    if (v13)
    {
      v78 = *(v0 + 640);
      v20 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v20 = 136446466;
      sub_1003A1FD4(&qword_1006F02F8, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v69 = v19;
      v71 = v15;
      v21 = sub_100574408();
      v23 = v22;
      v14(v16, v17);
      v24 = sub_10037A2AC(v21, v23, v86);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v0 + 322) = v74;
      v25 = sub_100572978();
      v27 = sub_10037A2AC(v25, v26, v86);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v11, v12, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v20, 0x16u);
      swift_arrayDestroy();

      v71(v78, v69);
    }

    else
    {

      v14(v16, v17);
      v15(v18, v19);
    }

    v82 = *(v0 + 1032);
    v42 = *(v0 + 768);
    v43 = *(v0 + 760);
    v44 = *(v0 + 672);
    v45 = *(v0 + 592);
    *v42 = v74;
    *(v42 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 384) = v45;
    sub_10056CEF8();

    *(v0 + 392) = v45;
    swift_getKeyPath();
    sub_10056CF18();

    sub_1003A0A4C(v45 + v82, v44, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v44, v43, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A11A0(v42, v44, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v44, v43) & 1) == 0)
    {
      sub_100399280();
    }

    v46 = *(v0 + 1032);
    v80 = *(v0 + 944);
    v83 = *(v0 + 1088);
    v75 = *(v0 + 888);
    v47 = *(v0 + 768);
    v48 = *(v0 + 720);
    v49 = *(v0 + 672);
    v50 = *(v0 + 592);
    sub_1003A0AB4(*(v0 + 760), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0AB4(v47, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0A4C(v50 + v46, v48, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1003A11A0(v49, v50 + v46, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1003945AC(v48);
    sub_1003A0AB4(v48, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0AB4(v49, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 408) = v50;
    swift_getKeyPath();
    sub_10056CF08();

    v83(v80, v75);
  }

  else
  {
    v28 = *(v0 + 904);
    v29 = *(v0 + 632);

    v4(v29, v5, v8);
    v77(v28, v6, v7);
    swift_errorRetain();
    v30 = sub_10056DF68();
    v31 = sub_100573448();

    if (os_log_type_enabled(v30, v31))
    {
      v68 = *(v0 + 1088);
      v70 = *(v0 + 1128);
      v32 = *(v0 + 904);
      v33 = *(v0 + 888);
      v79 = *(v0 + 632);
      v81 = *(v0 + 1080);
      v72 = *(v0 + 616);
      v34 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v34 = 136446466;
      sub_1003A1FD4(&qword_1006F02F8, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v35 = sub_100574408();
      v37 = v36;
      v68(v32, v33);
      v38 = sub_10037A2AC(v35, v37, v86);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v0 + 376) = v70;
      swift_errorRetain();
      v39 = sub_100572978();
      v41 = sub_10037A2AC(v39, v40, v86);

      *(v34 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v34, 0x16u);
      swift_arrayDestroy();

      v81(v79, v72);
    }

    else
    {
      v51 = *(v0 + 1088);
      v52 = *(v0 + 1080);
      v53 = *(v0 + 904);
      v54 = *(v0 + 888);
      v55 = *(v0 + 632);
      v56 = *(v0 + 616);

      v51(v53, v54);
      v52(v55, v56);
    }

    v84 = *(v0 + 1032);
    v57 = *(v0 + 752);
    v58 = *(v0 + 744);
    v59 = *(v0 + 664);
    v60 = *(v0 + 592);
    *v57 = 1;
    *(v57 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 344) = v60;
    sub_10056CEF8();

    *(v0 + 352) = v60;
    swift_getKeyPath();
    sub_10056CF18();

    sub_1003A0A4C(v60 + v84, v59, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0A4C(v59, v58, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A11A0(v57, v59, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v59, v58) & 1) == 0)
    {
      sub_100399280();
    }

    v85 = *(v0 + 1088);
    v61 = *(v0 + 1032);
    v73 = *(v0 + 888);
    v76 = *(v0 + 944);
    v62 = *(v0 + 752);
    v63 = *(v0 + 720);
    v64 = *(v0 + 664);
    v65 = *(v0 + 592);
    sub_1003A0AB4(*(v0 + 744), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0AB4(v62, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1003A0A4C(v65 + v61, v63, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1003A11A0(v64, v65 + v61, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1003945AC(v63);
    sub_1003A0AB4(v63, type metadata accessor for Lyrics.StateManager.State);
    sub_1003A0AB4(v64, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 368) = v65;
    swift_getKeyPath();
    sub_10056CF08();

    v85(v76, v73);
  }

  v66 = *(v0 + 8);

  return v66();
}

id sub_10039D91C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  v4 = *(v2 + *a2);

  return v4;
}

id sub_10039D9CC@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

uint64_t sub_10039DA90()
{
  v1 = v0;
  sub_100009DCC(&qword_1006EF140, &qword_100598890);
  __chkstk_darwin();
  v48 = &v42[-v2];
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100009DCC(&qword_1006EFD38, &qword_10059A190);
  __chkstk_darwin();
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v42[-v7];
  v9 = type metadata accessor for MetricsEvent.Page(0);
  v49 = *(*(v9 - 8) + 56);
  v49(v8, 1, 1, v9);
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *&v52 = v1;
  sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v50 = v10;
  sub_10056CEF8();

  v11 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_1003A0A4C(v1 + v11, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(v4 + 1);
      v14 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v4[32] != 1)
      {
        sub_1003A1DD4(*v4, v13, v14, v15, 0);
        sub_10001036C(v8, &qword_1006EFD38, &qword_10059A190);
        v19 = sub_10056C8A8();
        v20 = *(*(v19 - 8) + 56);
        goto LABEL_24;
      }

      v44 = *v4;
      v45 = v13;
      v46 = v14;
      v47 = v15;
      swift_getKeyPath();
      *&v52 = v1;
      sub_10056CEF8();

      v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
      swift_beginAccess();
      v17 = *(v1 + v16);
      if (v17 && (v18 = [v17 vocalsControlCommand]) != 0)
      {
        v43 = [v18 isDisabled];
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 1;
      }

      swift_getKeyPath();
      *&v52 = v1;
      sub_10056CEF8();

      v21 = *(v1 + v16);
      if (v21)
      {
        v22 = [v21 playingItem];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 metadataObject];

          if (v24)
          {
            v25 = [v24 innermostModelObject];

            objc_opt_self();
            v26 = swift_dynamicCastObjCClass();
            if (v26)
            {
              v27 = [v26 lyrics];

              if (v27)
              {
                v28 = [v27 hasStoreLyrics];

                v29 = v28 ^ 1;
LABEL_20:
                static ApplicationCapabilities.shared.getter(&v52);
                sub_100108D2C(&v52);
                if (*(v44 + 56))
                {
                  v30 = (v53 == 1) & ~(v43 | v29);
                  if (*(v44 + 56) == 1)
                  {
                    sub_1003A1DD4(v44, v45, v46, v47, 1);
                    sub_10001036C(v8, &qword_1006EFD38, &qword_10059A190);
                    v31 = sub_10056C8A8();
                    v32 = v48;
                    (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
                    v33 = 0x80000001005B83C0;
                    v41 = v30;
                    v34 = v6;
                    v35 = 0xD000000000000010;
                  }

                  else
                  {
                    sub_1003A1DD4(v44, v45, v46, v47, 1);
                    sub_10001036C(v8, &qword_1006EFD38, &qword_10059A190);
                    v37 = sub_10056C8A8();
                    v32 = v48;
                    (*(*(v37 - 8) + 56))(v48, 1, 1, v37);
                    v41 = v30;
                    v35 = 0x795373636972794CLL;
                    v33 = 0xEE00656C62616C6CLL;
                    v34 = v6;
                  }

                  MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v35, v33, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v32, 0, 0, 0, v34, 1, 0, 0, v41);
                  goto LABEL_27;
                }

                sub_1003A1DD4(v44, v45, v46, v47, 1);
                sub_10001036C(v8, &qword_1006EFD38, &qword_10059A190);
                v19 = sub_10056C8A8();
                v20 = *(*(v19 - 8) + 56);
LABEL_24:
                v36 = v48;
                v20(v48, 1, 1, v19);
                MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(0x745373636972794CLL, 0xEC00000063697461, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v36, 0, 0, 0, v6, 1, 0, 0, 2);
LABEL_27:
                v49(v6, 0, 1, v9);
                sub_1003A1ED0(v6, v8);
                v38 = *(sub_100009DCC(&qword_1006EFD18, &qword_10059A0B0) + 48);
                v39 = sub_100571A68();
                (*(*(v39 - 8) + 8))(&v4[v38], v39);
                goto LABEL_28;
              }
            }

            else
            {
            }
          }
        }
      }

      v29 = 1;
      goto LABEL_20;
    }

    sub_10001036C(v8, &qword_1006EFD38, &qword_10059A190);
  }

  else
  {
    sub_10001036C(v8, &qword_1006EFD38, &qword_10059A190);
    sub_1003A0AB4(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  }

  v49(v8, 1, 1, v9);
LABEL_28:
  sub_10000CC8C(v8, v6, &qword_1006EFD38, &qword_10059A190);
  swift_getKeyPath();
  __chkstk_darwin();
  v51 = v1;
  sub_10056CEE8();

  sub_10001036C(v8, &qword_1006EFD38, &qword_10059A190);
  return sub_10001036C(v6, &qword_1006EFD38, &qword_10059A190);
}

uint64_t sub_10039E3B4(uint64_t a1)
{
  sub_100009DCC(&qword_1006F02E8, &qword_10059A460);
  __chkstk_darwin();
  v158 = &v150 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v159 = &v150 - v3;
  sub_100009DCC(&qword_1006EFC58, &qword_100599FD0);
  __chkstk_darwin();
  v5 = &v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v150 - v6;
  sub_100009DCC(&qword_1006EFD30, &qword_10059A160);
  __chkstk_darwin();
  v165 = &v150 - v8;
  sub_100009DCC(&qword_1006EFD28, &qword_10059A130);
  __chkstk_darwin();
  v164 = &v150 - v9;
  sub_100009DCC(&qword_1006EFBE8, &qword_100599E50);
  __chkstk_darwin();
  v163 = &v150 - v10;
  v176 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v177 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v175 = &v150 - v12;
  __chkstk_darwin();
  v161 = &v150 - v13;
  v180 = sub_10056DF88();
  v178 = *(v180 - 8);
  __chkstk_darwin();
  v179 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v167 = &v150 - v15;
  __chkstk_darwin();
  v162 = &v150 - v16;
  sub_100009DCC(&qword_1006F2E20, &qword_10059E710);
  __chkstk_darwin();
  v168 = &v150 - v17;
  v172 = sub_10056CAA8();
  v171 = *(v172 - 8);
  __chkstk_darwin();
  v170 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_10056E5F8();
  v173 = *(v174 - 8);
  __chkstk_darwin();
  v20 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v22 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100571A68();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  sub_1003A0A4C(a1, v22, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1003A0AB4(v22, type metadata accessor for Lyrics.StateManager.State.Loading);
LABEL_11:
    v43 = v180;
    v42 = v178;
LABEL_12:
    v45 = Logger.lyrics.unsafeMutableAddressor();
    v46 = v179;
    (*(v42 + 16))(v179, v45, v43);
    v47 = v177;
    sub_1003A0A4C(v27, v177, type metadata accessor for Lyrics.StateManager.State);
    v48 = sub_10056DF68();
    v49 = sub_100573448();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = v42;
      v52 = swift_slowAlloc();
      v184 = v52;
      *v50 = 136446210;
      sub_1003A0A4C(v47, v175, type metadata accessor for Lyrics.StateManager.State);
      v53 = sub_100572978();
      v55 = v54;
      sub_1003A0AB4(v47, type metadata accessor for Lyrics.StateManager.State);
      v56 = sub_10037A2AC(v53, v55, &v184);

      *(v50 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "Skipping Reporting lyrics for state=%{public}s", v50, 0xCu);
      sub_100010474(v52);

      return (*(v51 + 8))(v179, v180);
    }

    else
    {

      sub_1003A0AB4(v47, type metadata accessor for Lyrics.StateManager.State);
      return (*(v42 + 8))(v46, v43);
    }
  }

  v151 = v7;
  v150 = v5;
  v28 = *(v22 + 1);
  v166 = *v22;
  v160 = v28;
  v29 = *(v22 + 2);
  v30 = *(v22 + 3);
  v31 = v22[32];
  v32 = sub_100009DCC(&qword_1006EFD18, &qword_10059A0B0);
  (*(v24 + 32))(v26, &v22[*(v32 + 48)], v23);
  if ((sub_100571A58() & 1) == 0)
  {
    (*(v24 + 8))(v26, v23);
    sub_1003A1DD4(v166, v160, v29, v30, v31);
    goto LABEL_11;
  }

  v152 = v29;
  v153 = v30;
  v155 = v31;
  v156 = v26;
  v154 = v24;
  v157 = v23;
  v33 = v27 + *(v176 + 20);
  v34 = v173;
  v35 = v174;
  (v173[13])(v20, enum case for ScenePhase.active(_:), v174);
  v36 = sub_10056E5E8();
  v34[1](v20, v35);
  if ((v36 & 1) == 0 || (v37 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(v33 + *(v37 + 20)) != 1) || *(v33 + *(v37 + 24)) != 1)
  {
    v44 = sub_1003A1DD4(v166, v160, v152, v153, v155);
    (*(v154 + 8))(v156, v157, v44);
    goto LABEL_11;
  }

  v38 = v168;
  sub_10000CC8C(v27 + *(v176 + 24), v168, &qword_1006F2E20, &qword_10059E710);
  v39 = v171;
  v40 = v172;
  v41 = (*(v171 + 48))(v38, 1, v172);
  v42 = v178;
  if (v41 == 1)
  {
    (*(v154 + 8))(v156, v157);
    sub_1003A1DD4(v166, v160, v152, v153, v155);
    sub_10001036C(v38, &qword_1006F2E20, &qword_10059E710);
    v43 = v180;
    goto LABEL_12;
  }

  (*(v39 + 32))(v170, v38, v40);
  v58 = Logger.lyrics.unsafeMutableAddressor();
  v59 = *(v42 + 16);
  v60 = v162;
  v174 = v58;
  v61 = v180;
  v173 = v59;
  v168 = v42 + 16;
  (v59)(v162);
  v62 = v161;
  sub_1003A0A4C(v27, v161, type metadata accessor for Lyrics.StateManager.State);
  v63 = sub_10056DF68();
  v64 = sub_100573448();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v184 = v66;
    *v65 = 136446210;
    sub_1003A0A4C(v62, v175, type metadata accessor for Lyrics.StateManager.State);
    v67 = sub_100572978();
    v69 = v68;
    v61 = v180;
    sub_1003A0AB4(v62, type metadata accessor for Lyrics.StateManager.State);
    v70 = v67;
    v42 = v178;
    v71 = sub_10037A2AC(v70, v69, &v184);

    *(v65 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v63, v64, "Reporting lyrics for state=%{public}s", v65, 0xCu);
    sub_100010474(v66);
  }

  else
  {

    sub_1003A0AB4(v62, type metadata accessor for Lyrics.StateManager.State);
  }

  v176 = *(v42 + 8);
  (v176)(v60, v61);
  v72 = v153;
  sub_10056CA28();
  v74 = -v73;
  v75 = [objc_allocWithZone(MPCReportingLyricsViewEvent) init];
  v76 = v154;
  v77 = v163;
  v78 = v157;
  (*(v154 + 16))(v163, v156, v157);
  (*(v76 + 56))(v77, 0, 1, v78);
  sub_100573808();
  swift_getKeyPath();
  v79 = v169;
  v184 = v169;
  v177 = sub_1003A1FD4(&qword_1006EFD10, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_10056CEF8();

  v80 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v81 = *(v79 + v80);
  if (v81)
  {
    v82 = v81;
    v83 = MPCPlayerResponseTracklist.currentPlayEvent.getter();
  }

  else
  {
    v83 = 0;
  }

  [v75 setModelPlayEvent:v83];

  [v75 setVisibleDuration:v74];
  swift_getKeyPath();
  v179 = v75;
  v84 = v169;
  v183[4] = v169;
  sub_10056CEF8();

  v85 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  swift_beginAccess();
  v86 = v164;
  sub_10000CC8C(v84 + v85, v164, &qword_1006EFD28, &qword_10059A130);
  v87 = type metadata accessor for Lyrics.Translation(0);
  v88 = (*(*(v87 - 8) + 48))(v86, 1, v87) != 1;
  sub_10001036C(v86, &qword_1006EFD28, &qword_10059A130);
  [v179 setDisplayTranslationEnabled:v88];
  swift_getKeyPath();
  v183[1] = v84;
  sub_10056CEF8();

  v89 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  v90 = v84 + v89;
  v91 = v165;
  sub_10000CC8C(v90, v165, &qword_1006EFD30, &qword_10059A160);
  v92 = type metadata accessor for Lyrics.Transliteration(0);
  v93 = (*(*(v92 - 8) + 48))(v91, 1, v92) != 1;
  v94 = v179;
  sub_10001036C(v91, &qword_1006EFD30, &qword_10059A160);
  [v94 setDisplayTransliterationEnabled:v93];
  if (v155)
  {
    v95 = v166;
    v96 = v180;
    if (*(v166 + 24))
    {
      sub_1003A1E74(v166, v160, v152, v72, 1);

      v97 = sub_100572898();
    }

    else
    {

      v97 = 0;
    }

    v106 = v159;
    [v179 setLyricsID:v97];

    (*(*v95 + 232))();
    v107 = sub_10056CC18();
    v108 = *(v107 - 8);
    if ((*(v108 + 48))(v106, 1, v107) == 1)
    {
      sub_10001036C(v106, &qword_1006F02E8, &qword_10059A460);
      v109 = 0;
      v110 = v152;
      v111 = v160;
    }

    else
    {
      v112 = v151;
      sub_10056CBE8();
      (*(v108 + 8))(v106, v107);
      v113 = sub_10056CB38();
      v114 = *(v113 - 8);
      if ((*(v114 + 48))(v112, 1, v113) == 1)
      {
        sub_10001036C(v112, &qword_1006EFC58, &qword_100599FD0);
        v109 = 0;
      }

      else
      {
        sub_10056CB18();
        (*(v114 + 8))(v112, v113);
        v109 = sub_100572898();
      }

      v72 = v153;
      v110 = v152;
      v111 = v160;
      v96 = v180;
    }

    v94 = v179;
    [v179 setLanguage:v109];

    v118 = v166;
    [v94 setDisplayType:*(v166 + 56)];
    sub_1003A1DD4(v118, v111, v110, v72, 1);
    v98 = v167;
  }

  else
  {
    v98 = v167;
    v96 = v180;
    if (v72 && v72[3])
    {

      v99 = sub_100572898();
    }

    else
    {

      v99 = 0;
    }

    [v94 setLyricsID:v99];

    if (v72)
    {
      v100 = *(*v72 + 232);

      v102 = v158;
      v100(v101);

      v103 = sub_10056CC18();
      v104 = *(v103 - 8);
      if ((*(v104 + 48))(v102, 1, v103) == 1)
      {
        sub_10001036C(v102, &qword_1006F02E8, &qword_10059A460);
        v105 = 0;
        v98 = v167;
        v96 = v180;
      }

      else
      {
        v115 = v150;
        sub_10056CBE8();
        (*(v104 + 8))(v102, v103);
        v116 = sub_10056CB38();
        v117 = *(v116 - 8);
        if ((*(v117 + 48))(v115, 1, v116) == 1)
        {
          sub_10001036C(v115, &qword_1006EFC58, &qword_100599FD0);
          v105 = 0;
        }

        else
        {
          sub_10056CB18();
          (*(v117 + 8))(v115, v116);
          v105 = sub_100572898();
        }

        v98 = v167;
        v72 = v153;
        v94 = v179;
        v96 = v180;
      }
    }

    else
    {
      v105 = 0;
    }

    [v94 setLanguage:v105];

    [v94 setDisplayType:0];
  }

  v119 = sub_100572898();
  [v94 setFeatureName:v119];

  [v94 setUserPreferenceSyllable:2];
  swift_getKeyPath();
  v120 = v169;
  v181 = v169;
  sub_10056CEF8();

  [*(v120 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) recordLyricsViewEvent:v94];
  (v173)(v98, v174, v96);
  v121 = v94;
  v122 = sub_10056DF68();
  v123 = sub_100573448();

  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    v183[0] = swift_slowAlloc();
    *v124 = 136446978;
    v181 = [v121 displayType];
    type metadata accessor for MPCReportingLyricsViewEventDisplayType(0);
    v125 = sub_100572978();
    v127 = sub_10037A2AC(v125, v126, v183);

    *(v124 + 4) = v127;
    *(v124 + 12) = 2082;
    v128 = [v121 lyricsID];
    if (v128)
    {
      v129 = v128;
      v130 = sub_1005728D8();
      v132 = v131;
    }

    else
    {
      v130 = 0;
      v132 = 0;
    }

    v181 = v130;
    v182 = v132;
    sub_100009DCC(&qword_1006F5C90, &qword_1005A1830);
    v135 = sub_100572978();
    v137 = sub_10037A2AC(v135, v136, v183);

    *(v124 + 14) = v137;
    *(v124 + 22) = 2082;
    [v121 visibleDuration];
    v138 = sub_100573058();
    v140 = sub_10037A2AC(v138, v139, v183);

    *(v124 + 24) = v140;
    *(v124 + 32) = 2082;
    v141 = [v121 modelSong];
    if (v141)
    {
      v142 = v141;
      v143 = [v141 humanDescription];

      v144 = sub_1005728D8();
      v146 = v145;
    }

    else
    {
      v144 = 0;
      v146 = 0;
    }

    v181 = v144;
    v182 = v146;
    v147 = sub_100572978();
    v149 = sub_10037A2AC(v147, v148, v183);

    *(v124 + 34) = v149;
    _os_log_impl(&_mh_execute_header, v122, v123, "Recorded PAF Event of type=%{public}s; id=%{public}s; duration=%{public}ss; song=%{public}s", v124, 0x2Au);
    swift_arrayDestroy();

    sub_1003A1DD4(v166, v160, v152, v153, v155);
    v133 = v167;
    v134 = v180;
  }

  else
  {

    sub_1003A1DD4(v166, v160, v152, v72, v155);
    v133 = v98;
    v134 = v96;
  }

  (v176)(v133, v134);
  (*(v171 + 8))(v170, v172);
  return (*(v154 + 8))(v156, v157);
}

uint64_t Lyrics.StateManager.deinit()
{
  sub_1003A0AB4(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state, type metadata accessor for Lyrics.StateManager.State);

  sub_10001036C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song, &qword_1006EFBE8, &qword_100599E50);
  sub_10001036C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation, &qword_1006EFD28, &qword_10059A130);
  sub_10001036C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration, &qword_1006EFD30, &qword_10059A160);
  sub_10001036C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage, &qword_1006EFD38, &qword_10059A190);

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v2 = sub_10056CF38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Lyrics.StateManager.__deallocating_deinit()
{
  Lyrics.StateManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10039FE3C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1003A250C;

  return v6(a1);
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[4])
  {
    if (*(a2 + 32))
    {
      return *a2 == v3;
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = v3 == *a2 && a1[1] == *(a2 + 8);
  if (!v9 && (sub_100574498() & 1) == 0 || (sub_1003DF5F8(v5, v7) & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    v10 = v6 == v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v6)
  {
    return v11;
  }

  else
  {
    return v8 == 0;
  }
}

BOOL _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO5ErrorO21__derived_enum_equalsySbAL_ALtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        sub_1000D3B98(0, &unk_1006F6120, NSObject_ptr);
        return sub_100573A58() & 1;
      }

      return 0;
    }

    if (a1)
    {
      return a4 == 2 && a3 == 1;
    }

    return a4 == 2 && !a3;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return a3 == a1;
  }
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100571A68();
  v37 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v36 - v7;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v36 - v10;
  sub_100009DCC(&qword_1006F0310, &qword_10059A500);
  __chkstk_darwin();
  v13 = &v36 - v12;
  v15 = &v36 + *(v14 + 56) - v12;
  sub_1003A0A4C(a1, &v36 - v12, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1003A0A4C(a2, v15, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1003A0A4C(v13, v11, type metadata accessor for Lyrics.StateManager.State.Loading);
    v26 = *v11;
    v27 = v11[8];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1003A2228(v26, v27);
      goto LABEL_11;
    }

    v28 = *v15;
    v29 = v15[8];
    if (v27)
    {
      if (v27 == 1)
      {
        if (v29 == 1)
        {
          v30 = *v15;
          sub_1000D3B98(0, &unk_1006F6120, NSObject_ptr);
          v31 = sub_100573A58();
          sub_1003A2228(v30, 1);
          sub_1003A2228(v26, 1);
          if ((v31 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_9;
        }

        sub_1003A2228(v28, v29);
        v28 = v26;
        LOBYTE(v29) = 1;
      }

      else if (v26)
      {
        if (v29 == 2 && v28 == 1)
        {
          goto LABEL_9;
        }
      }

      else if (v29 == 2 && v28 == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v15[8])
    {
      if (v28 != v26)
      {
        goto LABEL_33;
      }

LABEL_9:
      sub_1003A0AB4(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
      v24 = 1;
      return v24 & 1;
    }

    sub_1003A2228(v28, v29);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_10001036C(v13, &qword_1006F0310, &qword_10059A500);
LABEL_34:
    v24 = 0;
    return v24 & 1;
  }

  sub_1003A0A4C(v13, v9, type metadata accessor for Lyrics.StateManager.State.Loading);
  v17 = *(v9 + 1);
  v38[0] = *v9;
  v38[1] = v17;
  v39 = v9[32];
  v18 = *(sub_100009DCC(&qword_1006EFD18, &qword_10059A0B0) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v37 + 8))(&v9[v18], v4);
    sub_1003A21F8(v38);
    goto LABEL_11;
  }

  v19 = *(v15 + 1);
  v40[0] = *v15;
  v40[1] = v19;
  v41 = v15[32];
  v20 = v37;
  v21 = *(v37 + 32);
  v22 = &v9[v18];
  v23 = v36;
  v21(v36, v22, v4);
  v21(v6, &v15[v18], v4);
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(v38, v40) & 1) == 0)
  {
    sub_1003A21F8(v40);
    sub_1003A21F8(v38);
    v32 = *(v20 + 8);
    v32(v6, v4);
    v32(v23, v4);
LABEL_33:
    sub_1003A0AB4(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    goto LABEL_34;
  }

  v24 = sub_1005719F8();
  sub_1003A21F8(v40);
  sub_1003A21F8(v38);
  v25 = *(v20 + 8);
  v25(v6, v4);
  v25(v23, v4);
  sub_1003A0AB4(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
  return v24 & 1;
}

BOOL _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056CAA8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F2E20, &qword_10059E710);
  __chkstk_darwin();
  v9 = &v25 - v8;
  v10 = sub_100009DCC(&qword_1006F3450, &qword_10059EEB0);
  __chkstk_darwin();
  v12 = &v25 - v11;
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v26 = v5;
  v13 = type metadata accessor for Lyrics.StateManager.State(0);
  v14 = *(v13 + 20);
  v15 = a1 + v14;
  v16 = a2 + v14;
  if ((sub_10056E5E8() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  if (*(v15 + *(v17 + 20)) != *(v16 + *(v17 + 20)) || *(v15 + *(v17 + 24)) != *(v16 + *(v17 + 24)))
  {
    return 0;
  }

  v18 = *(v13 + 24);
  v19 = *(v10 + 48);
  sub_10000CC8C(a1 + v18, v12, &qword_1006F2E20, &qword_10059E710);
  sub_10000CC8C(a2 + v18, &v12[v19], &qword_1006F2E20, &qword_10059E710);
  v20 = v26;
  v21 = *(v26 + 48);
  if (v21(v12, 1, v4) == 1)
  {
    if (v21(&v12[v19], 1, v4) == 1)
    {
      sub_10001036C(v12, &qword_1006F2E20, &qword_10059E710);
      return 1;
    }

    goto LABEL_10;
  }

  sub_10000CC8C(v12, v9, &qword_1006F2E20, &qword_10059E710);
  if (v21(&v12[v19], 1, v4) == 1)
  {
    (*(v20 + 8))(v9, v4);
LABEL_10:
    sub_10001036C(v12, &qword_1006F3450, &qword_10059EEB0);
    return 0;
  }

  (*(v20 + 32))(v7, &v12[v19], v4);
  sub_1003A1FD4(&qword_1006F3480, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v23 = sub_1005727E8();
  v24 = *(v20 + 8);
  v24(v7, v4);
  v24(v9, v4);
  sub_10001036C(v12, &qword_1006F2E20, &qword_10059E710);
  return (v23 & 1) != 0;
}

uint64_t sub_1003A0A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003A0AB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1003A0B18(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  Lyrics.StateManager.tracklist.setter(v1);
}

uint64_t sub_1003A0BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100571A68();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006EFBE8, &qword_100599E50);
  __chkstk_darwin();
  v9 = &v19 - v8;
  sub_100009DCC(&qword_1006F0318, &qword_10059A530);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v13 = *(v12 + 56);
  sub_10000CC8C(a1, &v19 - v10, &qword_1006EFBE8, &qword_100599E50);
  sub_10000CC8C(a2, &v11[v13], &qword_1006EFBE8, &qword_100599E50);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_10000CC8C(v11, v9, &qword_1006EFBE8, &qword_100599E50);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v11[v13], v4);
      sub_1003A1FD4(&qword_1006F0300, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v16 = sub_1005727E8();
      v17 = *(v5 + 8);
      v17(v7, v4);
      v17(v9, v4);
      sub_10001036C(v11, &qword_1006EFBE8, &qword_100599E50);
      v15 = v16 ^ 1;
      return v15 & 1;
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
LABEL_6:
    sub_10001036C(v11, &qword_1006F0318, &qword_10059A530);
    v15 = 1;
    return v15 & 1;
  }

  sub_10001036C(v11, &qword_1006EFBE8, &qword_100599E50);
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_1003A10EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CB98;

  return sub_1003991D4();
}

uint64_t sub_1003A11A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1003A1210(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State(319);
  if (v1 <= 0x3F)
  {
    sub_1003A17E4(319, &qword_1006EFD78, &type metadata accessor for Song);
    if (v2 <= 0x3F)
    {
      sub_1003A17E4(319, &qword_1006EFD80, type metadata accessor for Lyrics.Translation);
      if (v3 <= 0x3F)
      {
        sub_1003A17E4(319, &qword_1006EFD88, type metadata accessor for Lyrics.Transliteration);
        if (v4 <= 0x3F)
        {
          sub_1003A17E4(319, &unk_1006EFD90, type metadata accessor for MetricsEvent.Page);
          if (v5 <= 0x3F)
          {
            sub_10056CF38();
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

uint64_t sub_1003A1474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100009DCC(&qword_1006F2E20, &qword_10059E710);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1003A15D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100009DCC(&qword_1006F2E20, &qword_10059E710);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1003A172C(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Lyrics.StateManager.State.Display(319);
    if (v2 <= 0x3F)
    {
      sub_1003A17E4(319, &unk_1006F0168, &type metadata accessor for Date);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003A17E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100573C28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1003A1838(uint64_t a1)
{
  sub_1003A18A4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1003A18A4(uint64_t a1)
{
  if (!qword_1006F0220)
  {
    sub_100571A68();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1006F0220);
    }
  }
}

uint64_t sub_1003A190C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1003A194C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056E5F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1003A1A2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10056E5F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1003A1AE4(uint64_t a1)
{
  result = sub_10056E5F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 initializeWithCopy for HitMyRectButton.HitRectAdjustment(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HitMyRectButton.HitRectAdjustment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HitMyRectButton.HitRectAdjustment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003A1C2C()
{

  return swift_deallocObject();
}

uint64_t sub_1003A1C64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000116F0;

  return sub_10000C500(a1, v4);
}

uint64_t sub_1003A1D1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CB98;

  return sub_10000C500(a1, v4);
}

double sub_1003A1DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }

  return result;
}

double sub_1003A1E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1003A1ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006EFD38, &qword_10059A190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1003A1F40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v2;
  v4 = v2;
}

uint64_t sub_1003A1FD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003A2090()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = v2;
  v4 = v2;
}

uint64_t sub_1003A20D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000116F0;

  return sub_1001BFD70(a1, v4);
}

uint64_t sub_1003A2188(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F2E20, &qword_10059E710);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1003A2228(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t sub_1003A223C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000116F0;

  return sub_10039FE3C(a1, v4);
}

uint64_t sub_1003A22F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  return sub_100396E8C();
}

uint64_t sub_1003A23AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1003A2410(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_1003A2454(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

char *VocalsAttenuationSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  v33.receiver = v4;
  v33.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  v10 = static AccessibilityIdentifier.named(_:)(0xD000000000000017, 0x80000001005B83E0);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v10, v11, v14, v12, v13);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v15 = qword_1006FDF00;
  LOBYTE(v53[0]) = 1;
  *&v36 = 0x6F68706F7263694DLL;
  *(&v36 + 1) = 0xEA0000000000656ELL;
  *&v37 = qword_1006FDF00;
  *(&v37 + 1) = 0x3FF0000000000000;
  v38 = 0;
  v39 = 0;
  v40 = 0x3FF0000000000000;
  v41 = 0;
  *&v42 = 0;
  *(&v42 + 1) = _swiftEmptyArrayStorage;
  v43 = 0;
  v44 = 0;
  v45 = 1;
  v46 = v36;
  v47 = v37;
  v52 = 1;
  v50 = v42;
  v51 = 0u;
  v16 = &v9[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  v48 = 0u;
  v49 = 0x3FF0000000000000uLL;
  swift_beginAccess();
  v17 = *v16;
  v18 = *(v16 + 2);
  v34[1] = *(v16 + 1);
  v34[2] = v18;
  v34[0] = v17;
  v19 = *(v16 + 3);
  v20 = *(v16 + 4);
  v21 = *(v16 + 5);
  v35 = v16[96];
  v34[4] = v20;
  v34[5] = v21;
  v34[3] = v19;
  v23 = *(v16 + 4);
  v22 = *(v16 + 5);
  v24 = *(v16 + 3);
  v54 = v16[96];
  v53[4] = v23;
  v53[5] = v22;
  v53[3] = v24;
  v25 = *v16;
  v26 = *(v16 + 2);
  v53[1] = *(v16 + 1);
  v53[2] = v26;
  v53[0] = v25;
  v27 = v51;
  *(v16 + 4) = v50;
  *(v16 + 5) = v27;
  v16[96] = v52;
  v28 = v47;
  *v16 = v46;
  *(v16 + 1) = v28;
  v29 = v49;
  *(v16 + 2) = v48;
  *(v16 + 3) = v29;
  v30 = v15;
  sub_1003A28BC(v34, v32);
  sub_10037012C(&v36, v32);
  sub_1003A292C(v53);
  sub_10047C390(v34);
  sub_1003A292C(v34);
  sub_1003714B8(&v36);

  return v9;
}

void VocalsAttenuationSlider.accessibilitySliderCurrentPercentageValue.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

uint64_t sub_1003A28BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F0328, &qword_10059A540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A292C(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F0328, &qword_10059A540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003A29B8()
{
  sub_1003A40D4();
  result = sub_10056E8F8();
  static AnyTransition.glowTextReveal = result;
  return result;
}

uint64_t *AnyTransition.glowTextReveal.unsafeMutableAddressor()
{
  if (qword_1006EEAB8 != -1)
  {
    swift_once();
  }

  return &static AnyTransition.glowTextReveal;
}

uint64_t static AnyTransition.glowTextReveal.getter()
{
  if (qword_1006EEAB8 != -1)
  {
    swift_once();
  }
}

uint64_t GlowTextRevealTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (sub_10056ED08())
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = sub_100009DCC(&qword_1006F0358, &qword_10059A580);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = sub_100009DCC(&qword_1006F0360, &qword_10059A588);
  *(a3 + *(result + 36)) = v5;
  return result;
}

double (*GlowTextRevealEffectRenderer.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1003A4128;
}

void GlowTextRevealEffectRenderer.draw(layout:in:)(uint64_t a1, uint64_t *a2, double a3)
{
  v59 = a2;
  v58 = sub_10056EC28();
  v52 = *(v58 - 8);
  __chkstk_darwin();
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100009DCC(&qword_1006F0368, &qword_10059A590);
  v60 = *(v65 - 8);
  __chkstk_darwin();
  v63 = &v45 - v6;
  v67 = sub_10056FEA8();
  v51 = *(v67 - 8);
  __chkstk_darwin();
  v56 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v45 - v8;
  sub_100009DCC(&qword_1006F0370, &qword_10059A598);
  __chkstk_darwin();
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (&v45 - v11);
  v13 = sub_10056FEB8();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F0378, &qword_10059A5A0);
  __chkstk_darwin();
  v18 = &v45 - v17;
  v19 = sub_100009DCC(&qword_1006F0380, &qword_10059A5A8) - 8;
  v20 = __chkstk_darwin();
  v22 = &v45 - v21;
  v20.n128_f64[0] = a3;
  v64 = sub_1003A3388(a1, v20);
  (*(v14 + 16))(v18, a1, v13);
  v23 = v18;
  v24 = v22;
  v25.n128_f64[0] = (*(v14 + 32))(v16, v23, v13);
  sub_1003A3798(&qword_1006F0388, &protocol conformance descriptor for Text.Layout, v25);
  sub_100572B98();
  v46 = *(v19 + 44);
  *&v22[v46] = 0;
  v26 = *(sub_100009DCC(&qword_1006F0390, &qword_10059A5B0) + 36);
  v28 = sub_1003A3798(&qword_1006F0398, &protocol conformance descriptor for Text.Layout, v27);
  v62 = 0;
  v47 = (v51 + 16);
  v66 = (v51 + 32);
  v29 = v60;
  v60 += 6;
  v61 = (v29 + 7);
  v50 = (v52 + 8);
  v49 = (v51 + 8);
  v52 = v26;
  v51 = v28;
  v55 = v12;
  v54 = v13;
  v53 = v10;
  while (1)
  {
    sub_100573208();
    if (*(v24 + v26) == v69[0])
    {
      v30 = 1;
      v31 = v65;
      goto LABEL_6;
    }

    v32 = sub_1005732E8();
    v33 = v48;
    v34 = v67;
    (*v47)(v48);
    v32(v69, 0);
    sub_100573218();
    v31 = v65;
    v35 = v66;
    v36 = *(v65 + 48);
    v38 = v62;
    v37 = v63;
    *v63 = v62;
    (*v35)(&v37[v36], v33, v34);
    if (__OFADD__(v38, 1))
    {
      break;
    }

    v62 = v38 + 1;
    *(v24 + v46) = v38 + 1;
    sub_100019B40(v63, v10, &qword_1006F0368, &qword_10059A590);
    v30 = 0;
LABEL_6:
    (*v61)(v10, v30, 1, v31);
    sub_100019B40(v10, v12, &qword_1006F0370, &qword_10059A598);
    if ((*v60)(v12, 1, v31) == 1)
    {
      sub_1003A37DC(v24);

      return;
    }

    v39 = *v12;
    v40 = v12 + *(v31 + 48);
    v41 = v56;
    (*v66)(v56, v40, v67);
    v69[0] = *v59;
    __chkstk_darwin();
    *(&v45 - 4) = a3;
    v42 = v64;
    *(&v45 - 3) = v41;
    *(&v45 - 2) = v42;
    *(&v45 - 1) = v39;

    sub_10056EBE8();
    v68 = v69[0];
    __chkstk_darwin();
    *(&v45 - 4) = a3;
    *(&v45 - 3) = v41;
    *(&v45 - 2) = v42;
    *(&v45 - 1) = v39;
    v10 = v53;

    sub_10056EBE8();
    v43 = v57;
    sub_10056EC18();
    sub_10056EC58();
    (*v50)(v43, v58);
    sub_10056EBF8();
    sub_10056EBF8();

    v44 = v41;
    v12 = v55;
    (*v49)(v44, v67);
    v26 = v52;
  }

  __break(1u);
}

char *sub_1003A3388(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v34 = sub_10056FEA8();
  v4 = *(v34 - 8);
  __chkstk_darwin();
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056FEB8();
  sub_1003A3798(&qword_1006F0398, &protocol conformance descriptor for Text.Layout, v7);
  v8 = sub_1005731C8();
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v10 = v8;
    v35 = _swiftEmptyArrayStorage;
    sub_1004753E8(0, v8 & ~(v8 >> 63), 0);
    v9 = v35;
    sub_1005731B8();
    if (v10 < 0)
    {
      goto LABEL_24;
    }

    v33 = (v4 + 16);
    do
    {
      v11 = sub_1005732E8();
      v12 = v34;
      (*v33)(v6);
      v11(v41, 0);
      sub_10056FE98();
      v42.origin.x = v36;
      v42.size.width = v38;
      v42.origin.y = v37 - v39;
      v42.size.height = v39 + v40;
      Width = CGRectGetWidth(v42);
      (*(v4 + 8))(v6, v12);
      v35 = v9;
      v14 = a1;
      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        sub_1004753E8((v15 > 1), v16 + 1, 1);
        v9 = v35;
      }

      v9[2] = v16 + 1;
      *&v9[v16 + 4] = Width;
      sub_100573218();
      --v10;
      a1 = v14;
    }

    while (v10);
  }

  v17 = v9[2];
  if (!v17)
  {
    v19 = 0.0;
    goto LABEL_16;
  }

  if (v17 <= 3)
  {
    v18 = 0;
    v19 = 0.0;
LABEL_14:
    v22 = v17 - v18;
    v23 = &v9[v18 + 4];
    do
    {
      v24 = *v23++;
      v19 = v19 + v24;
      --v22;
    }

    while (v22);
    goto LABEL_16;
  }

  v18 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  v20 = (v9 + 6);
  v19 = 0.0;
  v21 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v19 = v19 + *(v20 - 2) + *(v20 - 1) + *v20 + v20[1];
    v20 += 4;
    v21 -= 4;
  }

  while (v21);
  if (v17 != v18)
  {
    goto LABEL_14;
  }

LABEL_16:
  sub_100009DCC(&qword_1006F03D8, &unk_10059B080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B510;
  *(inited + 32) = 0;
  if (v17)
  {
    v26 = 0;
    while (v26 < v9[2])
    {
      v27 = *&v9[v26 + 4];
      v28 = v26 + 1;
      v29 = *(inited + 8 * v26 + 32);
      v30 = *(inited + 24);
      if (v26 + 1 >= v30 >> 1)
      {
        inited = sub_1004749B8((v30 > 1), v26 + 2, 1, inited);
      }

      *(inited + 16) = v26 + 2;
      *(inited + 8 * v26++ + 40) = v27 / v19 + v29;
      if (v17 == v28)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

LABEL_22:

  v41[0] = inited;
  v31 = sub_1003A3970(0, v17, v41, v2);

  return v31;
}

uint64_t sub_1003A3798(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    sub_10056FEB8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003A37DC(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F0380, &qword_10059A5A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003A389C(uint64_t result, uint64_t (*a2)(void, uint64_t, double))
{
  v3 = v2[5];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v2[4];
    if (*(v4 + 16) > v3)
    {
      return a2(v2[3], result, *(v4 + 8 * v3 + 32));
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003A391C()
{
  result = qword_1006F03A0;
  if (!qword_1006F03A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F03A0);
  }

  return result;
}

char *sub_1003A3970(char *result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_18;
  }

  v5 = result;
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    result = sub_1004753C8(0, v4 & ~(v4 >> 63), 0);
    if (a2 < v5 || v4 < 0)
    {
      goto LABEL_19;
    }

    result = _swiftEmptyArrayStorage;
    v9 = v5;
    while (a2 != v9)
    {
      if (v5 < 0)
      {
        goto LABEL_15;
      }

      v10 = *(*a3 + 16);
      if (v9 >= v10)
      {
        goto LABEL_16;
      }

      v11 = v9 + 1;
      if (v9 + 1 >= v10)
      {
        goto LABEL_17;
      }

      v12 = *a3 + 8 * v9;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      v17 = result;
      v16 = *(result + 2);
      v15 = *(result + 3);
      if (v16 >= v15 >> 1)
      {
        sub_1004753C8((v15 > 1), v16 + 1, 1);
        result = v17;
      }

      *(result + 2) = v16 + 1;
      *&result[8 * v16 + 32] = (a4 - v13) / (v14 - v13);
      v9 = v11;
      if (a2 == v11)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

double sub_1003A3B04(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_1003A3B10(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1003A3B3C;
}

double sub_1003A3B3C(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

unint64_t sub_1003A3B74()
{
  result = qword_1006F03A8;
  if (!qword_1006F03A8)
  {
    sub_100010324(&qword_1006F0360, &qword_10059A588);
    sub_100010BC0(&qword_1006F03B0, &qword_1006F0358, &qword_10059A580, &protocol conformance descriptor for PlaceholderContentView<A>);
    sub_100010BC0(&qword_1006F03B8, &qword_1006F03C0, &qword_10059A700, &protocol conformance descriptor for _TextRendererViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F03A8);
  }

  return result;
}

uint64_t sub_1003A3C58(double a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_10056EC48();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F03D0, &unk_10059A710);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10057B500;
  *(v7 + 32) = sub_1005704D8();
  *(v7 + 40) = sub_1005704B8();
  sub_100570968();
  sub_10056FE98();
  sub_10056FE98();
  sub_10056FE98();
  *&v13.origin.x = v9[13];
  *&v13.size.width = v9[15];
  v13.origin.y = *&v9[14] - v10;
  v13.size.height = v10 + v11;
  CGRectInset(v13, -14.0, 0.0);
  sub_10056FD78();
  sub_10056EC38();

  sub_10056EC08();
  sub_1003A4080(v12);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003A3E34(double a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_10056EC48();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F03C8, &qword_10059A708);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10057BD80;
  sub_1005704B8();
  *(v7 + 32) = sub_100570948();
  *(v7 + 40) = v8;
  sub_1005704D8();
  *(v7 + 48) = sub_100570948();
  *(v7 + 56) = v9;
  sub_1005704D8();
  *(v7 + 64) = sub_100570948();
  *(v7 + 72) = v10;
  sub_1005704B8();
  *(v7 + 80) = sub_100570948();
  *(v7 + 88) = v11;
  sub_100570958();
  sub_10056FE98();
  sub_10056FE98();
  sub_10056FE98();
  *&v17.origin.x = v13[13];
  *&v17.size.width = v13[15];
  v17.origin.y = *&v13[14] - v14;
  v17.size.height = v14 + v15;
  CGRectInset(v17, -57.5, 0.0);
  sub_10056FD78();
  sub_10056EC38();

  sub_10056EC08();
  sub_1003A4080(v16);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1003A40D4()
{
  result = qword_1006F03E0;
  if (!qword_1006F03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F03E0);
  }

  return result;
}

double Corner.radius(in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    return *&a1;
  }

  Width = CGRectGetWidth(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  Height = CGRectGetHeight(v14);
  if (Height >= Width)
  {
    Height = Width;
  }

  return Height * 0.5;
}

void Corner.hash(into:)(uint64_t a1, Swift::UInt64 a2, Swift::UInt a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      sub_1005729F8();
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = 0;
      }

      sub_1005746B8(v5);
    }

    else
    {

      sub_1005729F8();
    }
  }

  else
  {
    sub_1005729F8();
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    sub_1005746B8(v7);
    sub_100574688(a3);
  }
}

BOOL static Corner.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return *&a1 == *&a4;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  return *&a1 == *&a4 && a2 == a5;
}

Swift::Int Corner.hashValue.getter(Swift::UInt64 a1, Swift::UInt a2, char a3)
{
  sub_100574678();
  Corner.hash(into:)(v7, a1, a2, a3);
  return sub_1005746C8();
}

Swift::Int sub_1003A435C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_100574678();
  Corner.hash(into:)(v5, v1, v2, v3);
  return sub_1005746C8();
}

Swift::Int sub_1003A43C4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_100574678();
  Corner.hash(into:)(v6, v2, v3, v4);
  return sub_1005746C8();
}

uint64_t sub_1003A441C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v5 = *a1 == v2;
    if (v4 != 1)
    {
      v5 = 0;
    }

    v6 = v3 | *&v2;
    v8 = v4 == 2 && v6 == 0;
    if (*(a1 + 16) == 1)
    {
      return v5;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 8) == v3;
    }

    v11 = v10;
    if (*a1 == *a2)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t static Border.__derived_struct_equals(_:_:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4, double a5, double a6)
{
  v7 = a2;
  v8 = sub_100570478() & (a5 == a6);
  if (v7 == a4)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void Border.hash(into:)(double a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_100570498();
  v6 = 0.0;
  if (a1 != 0.0)
  {
    v6 = a1;
  }

  sub_1005746B8(*&v6);
  sub_100574688(a4);
}

Swift::Int Border.hashValue.getter(uint64_t a1, unsigned __int8 a2, double a3)
{
  sub_100574678();
  sub_100570498();
  v5 = 0.0;
  if (a3 != 0.0)
  {
    v5 = a3;
  }

  sub_1005746B8(*&v5);
  sub_100574688(a2);
  return sub_1005746C8();
}

void sub_1003A45BC(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_100570498();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  sub_1005746B8(*&v4);
  sub_100574688(v3);
}

Swift::Int sub_1003A461C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_100574678();
  sub_100570498();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  sub_1005746B8(*&v4);
  sub_100574688(v3);
  return sub_1005746C8();
}

BOOL sub_1003A469C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = sub_100570478();
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t UIView.Shadow.init(color:opacity:radius:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

void Shadow.hash(into:)(uint64_t a1)
{
  sub_100570498();
  v2 = v1[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1005746B8(*&v2);
  v3 = v1[2];
  v4 = v1[3];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_1005746B8(*&v3);
  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  sub_1005746B8(*&v5);
  v6 = v1[4];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  sub_1005746B8(*&v6);
}

Swift::Int Shadow.hashValue.getter()
{
  sub_100574678();
  Shadow.hash(into:)(v1);
  return sub_1005746C8();
}

Swift::Int sub_1003A4854(uint64_t a1)
{
  sub_100574678();
  Shadow.hash(into:)(v2);
  return sub_1005746C8();
}

BOOL sub_1003A4890(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  v10 = sub_100570478();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t sub_1003A4948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v8 = sub_100009DCC(&qword_1006F0428, &qword_10059AB58);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = sub_100009DCC(&qword_1006F0430, &qword_10059AB60);
  v10 = a2 + *(result + 36);
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = 0;
  *(v10 + 32) = 256;
  return result;
}

uint64_t sub_1003A4A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!*(v2 + 16))
  {
    v6 = 0.5;
    goto LABEL_5;
  }

  v5 = 0.0;
  if (*(v2 + 16) == 1)
  {
    v6 = -0.5;
LABEL_5:
    v5 = *(v2 + 1) * v6;
  }

  v8 = v2[3];
  v7 = v2[4];
  v9 = *(v2 + 40);
  sub_10056E728();

  v10 = sub_1005709E8();
  v12 = v11;
  v13 = sub_1005709E8();
  v15 = v14;
  *&v27 = v8;
  *(&v27 + 1) = v7;
  LOBYTE(v28) = v9;
  *(&v28 + 1) = v5;
  v29 = v24;
  v30 = v25;
  *&v31 = v26;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = v10;
  *&v33 = v12;
  *(&v33 + 1) = v13;
  v34 = v14;
  v16 = sub_100009DCC(&qword_1006F0438, &qword_10059AB68);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = a2 + *(sub_100009DCC(&qword_1006F0440, &qword_10059AB70) + 36);
  v18 = v32;
  *(v17 + 64) = v31;
  *(v17 + 80) = v18;
  *(v17 + 96) = v33;
  *(v17 + 112) = v34;
  v19 = v28;
  *v17 = v27;
  *(v17 + 16) = v19;
  v20 = v30;
  *(v17 + 32) = v29;
  *(v17 + 48) = v20;
  v35[0] = v8;
  v35[1] = v7;
  v36 = v9;
  v37 = v5;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v4;
  v42 = 256;
  v43 = v10;
  v44 = v12;
  v45 = v13;
  v46 = v15;
  sub_10000CC8C(&v27, &v23, &qword_1006F0448, &qword_10059AB78);
  return sub_10001036C(v35, &qword_1006F0448, &qword_10059AB78);
}

uint64_t View.shadow(_:corner:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *v7 = *a1;
  *&v7[8] = *(a1 + 8);
  *&v7[24] = *(a1 + 24);
  *&v7[40] = a2;
  *&v7[48] = a3;
  v7[56] = a4;

  sub_100570328();
  v8[0] = *v7;
  v8[1] = *&v7[16];
  v9[0] = *&v7[32];
  *(v9 + 9) = *&v7[41];
  return sub_1003A67E0(v8);
}

uint64_t sub_1003A4D1C@<X0>(double *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_100009DCC(&qword_1006F0470, &qword_10059ABA0) - 8;
  __chkstk_darwin();
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v34[-v7];
  v9 = *(a1 + 6);
  v37 = *(a1 + 5);
  v35 = *(a1 + 56);
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v13 = *(a1 + 3);
  sub_1003A6ECC(a1, v47);
  v14 = sub_10056FA38();
  sub_10056E598();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v47[0]) = 0;
  v23 = *(v4 + 44);
  v24 = enum case for BlendMode.destinationOut(_:);
  v25 = sub_100570A78();
  (*(*(v25 - 8) + 104))(&v8[v23], v24, v25);
  v26 = v37;
  *v8 = v37;
  *(v8 + 1) = v9;
  v27 = v9;
  v36 = v9;
  LOBYTE(v9) = v35;
  v8[16] = v35;
  *(v8 + 3) = 0;
  sub_10000CC8C(v8, v6, &qword_1006F0470, &qword_10059ABA0);
  *&v40 = v26;
  *(&v40 + 1) = v27;
  LOBYTE(v41) = v9;
  *(&v41 + 1) = *v39;
  HIDWORD(v41) = *&v39[3];
  v42 = 0;
  *&v43 = v10;
  *(&v43 + 1) = v11;
  *&v44 = v12;
  *(&v44 + 1) = v13;
  LOBYTE(v45) = v14;
  *(&v45 + 1) = *v38;
  DWORD1(v45) = *&v38[3];
  *(&v45 + 1) = v16;
  *&v46[0] = v18;
  *(&v46[0] + 1) = v20;
  *&v46[1] = v22;
  BYTE8(v46[1]) = 0;
  v28 = v41;
  *a2 = v40;
  a2[1] = v28;
  v29 = v43;
  v30 = v44;
  *(a2 + 89) = *(v46 + 9);
  v31 = v46[0];
  a2[4] = v45;
  a2[5] = v31;
  a2[2] = v29;
  a2[3] = v30;
  v32 = sub_100009DCC(&qword_1006F0478, &qword_10059ABA8);
  sub_10000CC8C(v6, a2 + *(v32 + 48), &qword_1006F0470, &qword_10059ABA0);
  sub_10000CC8C(&v40, v47, &qword_1006F0480, &qword_10059ABB0);
  sub_10001036C(v8, &qword_1006F0470, &qword_10059ABA0);
  sub_10001036C(v6, &qword_1006F0470, &qword_10059ABA0);
  v47[0] = v37;
  v47[1] = v36;
  v48 = v9;
  *v49 = *v39;
  *&v49[3] = *&v39[3];
  v50 = 0;
  v51 = v10;
  v52 = v11;
  v53 = v12;
  v54 = v13;
  v55 = v14;
  *v56 = *v38;
  *&v56[3] = *&v38[3];
  v57 = v16;
  v58 = v18;
  v59 = v20;
  v60 = v22;
  v61 = 0;
  return sub_10001036C(v47, &qword_1006F0480, &qword_10059ABB0);
}

uint64_t sub_1003A50DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v16[0] = *v2;
  v16[1] = v5;
  v17[0] = v2[2];
  *(v17 + 9) = *(v2 + 41);
  v6 = sub_1005709E8();
  v8 = v7;
  v9 = (a2 + *(sub_100009DCC(&qword_1006F0450, &qword_10059AB80) + 36));
  *v9 = sub_1005709E8();
  v9[1] = v10;
  v11 = sub_100009DCC(&qword_1006F0458, &qword_10059AB88);
  sub_1003A4D1C(v16, (v9 + *(v11 + 44)));
  v12 = (v9 + *(sub_100009DCC(&qword_1006F0460, &qword_10059AB90) + 36));
  *v12 = v6;
  v12[1] = v8;
  v13 = sub_100009DCC(&qword_1006F0468, &qword_10059AB98);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

uint64_t sub_1003A526C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  v3 = sub_10056F5D8();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F0488, &qword_10059ABB8);
  __chkstk_darwin();
  v8 = v17 - v7;
  v9 = *v2;
  v10 = v2[1];
  v11 = *(v2 + 16);
  v12 = *(v2 + 3);
  v14 = v17 + *(v13 + 36) - v7;
  sub_100009DCC(&qword_1006F0490, &qword_10059ABC0);
  sub_10056EE28();
  *v14 = v9;
  *(v14 + 1) = v10;
  v14[16] = v11;
  *(v14 + 3) = -v12;
  v14[32] = 0;
  v15 = sub_100009DCC(&qword_1006F0498, &qword_10059ABC8);
  (*(*(v15 - 8) + 16))(v8, v17[0], v15);
  sub_10056EE48();
  sub_1003A6F04();
  sub_1003A6FE8();
  sub_100570038();
  (*(v4 + 8))(v6, v3);
  return sub_10001036C(v8, &qword_1006F0488, &qword_10059ABB8);
}

void sub_1003A5484(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>, CGFloat a9@<D4>)
{
  LODWORD(v46) = a3;
  v44 = a2;
  *&v45 = a1;
  v47 = a4;
  sub_100009DCC(&qword_1006F0550, qword_10059AD40);
  __chkstk_darwin();
  v15 = &v41 - v14;
  v16 = sub_10056FAE8();
  v41 = *(v16 - 8);
  __chkstk_darwin();
  v17 = sub_10056F348();
  v42 = *(v17 - 8);
  v43 = v17;
  __chkstk_darwin();
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10056F2E8();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100570888();
  __chkstk_darwin();
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10056EDC8();
  v27 = __chkstk_darwin();
  v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v46)
  {
    v31 = v44;
    if (v44 == -1)
    {
      v38 = sub_10056EDD8();
      (*(v21 + 104))(&v29[*(v38 + 20)], enum case for RoundedCornerStyle.continuous(_:), v20);
      v39 = v45;
      *v29 = v45;
      *(v29 + 1) = v39;
      *&v29[*(v26 + 20)] = a9;
      sub_10056EDB8();
      v45 = v48;
      v46 = v49;
      v30 = v50;
      sub_1003A7660(v29, &type metadata accessor for RoundedRectangle._Inset);
    }

    else
    {
      v32 = *&v45;
      v52.origin.x = a5;
      v52.origin.y = a6;
      v52.size.width = a7;
      v52.size.height = a8;
      v53 = CGRectInset(v52, a9, a9);
      v33 = [objc_opt_self() bezierPathWithRoundedRect:v31 byRoundingCorners:v53.origin.x cornerRadii:{v53.origin.y, v53.size.width, v53.size.height, v32, v32}];
      v34 = [v33 CGPath];
      sub_10056FD88();
      v45 = v48;
      v46 = v49;
      v30 = v50;
    }

    goto LABEL_8;
  }

  if (v46 == 1)
  {
    sub_10056FAD8();
    (*(v41 + 56))(v15, 0, 1, v16);
    sub_10056FAC8();
    sub_10001036C(v15, &qword_1006F0550, qword_10059AD40);
    sub_10056F338();
    v51.origin.x = a5;
    v51.origin.y = a6;
    v51.size.width = a7;
    v51.size.height = a8;
    CGRectInset(v51, a9, a9);
    sub_10056F328();
    v45 = v48;
    v46 = v49;
    v30 = v50;
    (*(v42 + 8))(v19, v43);
LABEL_8:
    v37 = v45;
    v36 = v46;
    goto LABEL_9;
  }

  v35 = *(v21 + 104);
  v35(v25, enum case for RoundedCornerStyle.continuous(_:), v20, v27);
  (v35)(v23, enum case for RoundedCornerStyle.circular(_:), v20);
  sub_10056F2D8();
  (*(v21 + 8))(v23, v20);
  sub_1003A7660(v25, &type metadata accessor for Capsule);
  sub_100570878();
  v37 = v48;
  v36 = v49;
  v30 = v50;
LABEL_9:
  v40 = v47;
  *v47 = v37;
  v40[1] = v36;
  *(v40 + 32) = v30;
}

double sub_1003A5A04@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  result = *(v2 + 24) + a2;
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  return result;
}

double sub_1003A5A24@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1003A5484(*v5, *(v5 + 8), *(v5 + 16), v9, a2, a3, a4, a5, *(v5 + 24));
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_1003A5A74(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_10056E528();
  return sub_1003674BC;
}

uint64_t sub_1003A5AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003A75B4();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003A5B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003A75B4();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003A5BC4(uint64_t a1)
{
  v2 = sub_1003A75B4();

  return Shape.body.getter(a1, v2);
}

void sub_1003A5C10()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_1006F03E8 = v1 == 6;
}

uint64_t sub_1003A5C74()
{
  if (qword_1006EEAC0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4008000000000000;
  if (byte_1006F03E8)
  {
    v0 = 0x4018000000000000;
  }

  static Corner.extraSmall = v0;
  unk_1006FE280 = -1;
  byte_1006FE288 = 0;
  return result;
}

uint64_t *Corner.extraSmall.unsafeMutableAddressor()
{
  if (qword_1006EEAC8 != -1)
  {
    swift_once();
  }

  return &static Corner.extraSmall;
}

uint64_t static Corner.extraSmall.getter()
{
  if (qword_1006EEAC8 != -1)
  {
    swift_once();
  }

  return static Corner.extraSmall;
}

uint64_t sub_1003A5D90()
{
  if (qword_1006EEAC0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4014000000000000;
  if (byte_1006F03E8)
  {
    v0 = 0x4020000000000000;
  }

  static Corner.small = v0;
  *algn_1006FE298 = -1;
  byte_1006FE2A0 = 0;
  return result;
}

uint64_t *Corner.small.unsafeMutableAddressor()
{
  if (qword_1006EEAD0 != -1)
  {
    swift_once();
  }

  return &static Corner.small;
}