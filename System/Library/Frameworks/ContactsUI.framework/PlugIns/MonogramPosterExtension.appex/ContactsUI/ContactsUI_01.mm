void sub_10001AA6C(void *a1)
{
  v2 = v1;
  v4 = sub_1000263C0();
  __chkstk_darwin(v4 - 8);
  v6 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100026390();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v109 = &v100 - v13;
  __chkstk_darwin(v12);
  v15 = &v100 - v14;
  v105 = sub_1000262C0();
  v104 = *(v105 - 1);
  __chkstk_darwin(v105);
  v103 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_logger;
  swift_unknownObjectRetain();
  v106 = v17;
  v18 = sub_100026680();
  v19 = sub_100026B90();
  swift_unknownObjectRelease();
  v20 = os_log_type_enabled(v18, v19);
  v108 = v8;
  v107 = v2;
  v102 = v15;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v112[0] = v101;
    *v21 = 136315138;
    v22 = v6;
    v23 = v11;
    v24 = v7;
    v25 = [a1 description];
    v26 = sub_100026A20();
    v27 = a1;
    v29 = v28;

    v7 = v24;
    v11 = v23;
    v6 = v22;
    v30 = sub_100025380(v26, v29, v112);
    a1 = v27;

    *(v21 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "Loading poster configuration from poster environment: %s", v21, 0xCu);
    sub_10000B7E0(v101);

    v8 = v108;
  }

  v31 = [a1 sourceContents];
  v112[0] = 0;
  v32 = [v31 loadUserInfoWithError:v112];
  swift_unknownObjectRelease();
  v33 = v112[0];
  v34 = v109;
  if (!v32)
  {
    v104 = v6;
    v105 = v11;
    v70 = v112[0];
    sub_1000261D0();

    swift_willThrow();
    swift_errorRetain();
    v71 = v107;
    v72 = sub_100026680();
    v73 = sub_100026BB0();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = v71;
      v76 = swift_slowAlloc();
      v112[0] = v76;
      *v74 = 136315138;
      swift_getErrorValue();
      v77 = sub_100026D70();
      v79 = sub_100025380(v77, v78, v112);

      *(v74 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v72, v73, "Error loading user info from environment: %s", v74, 0xCu);
      sub_10000B7E0(v76);
      v71 = v75;
    }

    type metadata accessor for MonogramPosterColorGenerator();
    sub_10000F330(v104);
    sub_1000262D0();
    v80 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
    swift_beginAccess();
    v81 = v108;
    v82 = v105;
    (*(v108 + 16))(v105, &v71[v80], v7);
    swift_beginAccess();
    (*(v81 + 24))(&v71[v80], v34, v7);
    swift_endAccess();
    sub_10001A438();

    v83 = *(v81 + 8);
    v83(v82, v7);
    v83(v34, v7);
    return;
  }

  v35 = v7;
  v36 = sub_1000269A0();
  v37 = v33;

  v38 = v104;
  v39 = v103;
  v40 = v105;
  (*(v104 + 13))(v103, enum case for MonogramPosterUserInfoKey.dataRepresentation(_:), v105);
  v41 = sub_1000262B0();
  v43 = v42;
  (*(v38 + 8))(v39, v40);
  v110 = v41;
  v111 = v43;
  sub_100026C70();
  if (!*(v36 + 16) || (v44 = sub_100024EFC(v112), (v45 & 1) == 0))
  {

    sub_10002231C(v112);
    v46 = v35;
LABEL_9:
    v52 = v109;
    type metadata accessor for MonogramPosterColorGenerator();
    sub_10000F330(v6);
    sub_1000262D0();
    v53 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
    v54 = v107;
    swift_beginAccess();
    v105 = *(v8 + 16);
    (v105)(v11, &v54[v53], v46);
    swift_beginAccess();
    (*(v8 + 24))(&v54[v53], v52, v46);
    swift_endAccess();
    sub_10001A438();
    v57 = *(v8 + 8);
    v55 = v8 + 8;
    v56 = v57;
    v57(v11, v46);
    v57(v52, v46);
    v58 = v54;
    v59 = sub_100026680();
    v60 = v52;
    v61 = v46;
    v62 = sub_100026B90();

    if (os_log_type_enabled(v59, v62))
    {
      v63 = swift_slowAlloc();
      v108 = v55;
      v64 = v63;
      v65 = swift_slowAlloc();
      v113[0] = v65;
      *v64 = 136315138;
      (v105)(v60, &v54[v53], v61);
      v66 = sub_1000262E0();
      v68 = v67;
      v56(v60, v61);
      v69 = sub_100025380(v66, v68, v113);

      *(v64 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v59, v62, "Creating new poster configuration: %s", v64, 0xCu);
      sub_10000B7E0(v65);
    }

    goto LABEL_11;
  }

  sub_1000223C4(*(v36 + 56) + 32 * v44, v113);
  sub_10002231C(v112);

  v46 = v35;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v105 = v11;
  v47 = v110;
  v48 = v111;
  sub_100026180();
  swift_allocObject();
  v49 = sub_100026170();
  sub_100022440(&qword_100042088, &type metadata accessor for MonogramPosterConfiguration, &protocol conformance descriptor for MonogramPosterConfiguration);
  v50 = v102;
  v104 = v47;
  v103 = v49;
  sub_100026160();
  v51 = v109;
  v101 = v48;
  v84 = v107;
  v85 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
  swift_beginAccess();
  v105 = *(v8 + 16);
  (v105)(v51, &v84[v85], v46);
  swift_beginAccess();
  (*(v8 + 24))(&v84[v85], v50, v46);
  swift_endAccess();
  sub_10001A438();
  v88 = *(v8 + 8);
  v86 = v8 + 8;
  v87 = v88;
  v88(v51, v46);
  v88(v50, v46);
  v89 = v84;
  v90 = sub_100026680();
  v91 = sub_100026B90();

  if (os_log_type_enabled(v90, v91))
  {
    v93 = swift_slowAlloc();
    v108 = v86;
    v94 = v93;
    v95 = swift_slowAlloc();
    v113[0] = v95;
    *v94 = 136315138;
    (v105)(v51, &v84[v85], v46);
    v59 = v90;
    v96 = sub_1000262E0();
    v98 = v97;
    v87(v51, v46);
    v99 = sub_100025380(v96, v98, v113);

    *(v94 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v59, v91, "Did load poster configuration: %s", v94, 0xCu);
    sub_10000B7E0(v95);

    sub_1000221D4(v104, v101);
LABEL_11:

    return;
  }

  sub_1000221D4(v104, v101);
}

double sub_10001B8C4(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100026390();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  sub_100026180();
  swift_allocObject();
  v12 = sub_100026170();
  sub_100022440(&qword_100042088, &type metadata accessor for MonogramPosterConfiguration, &protocol conformance descriptor for MonogramPosterConfiguration);
  sub_100026160();
  if (!v3)
  {
    v30 = v12;
    v13 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
    swift_beginAccess();
    v27 = *(v6 + 16);
    v28 = v6 + 16;
    v27(v9, &a1[v13], v5);
    swift_beginAccess();
    (*(v6 + 24))(&a1[v13], v11, v5);
    swift_endAccess();
    sub_10001A438();
    v14 = *(v6 + 8);
    v14(v9, v5);
    v26 = v14;
    v14(v11, v5);
    v15 = a1;
    v16 = sub_100026680();
    v17 = sub_100026BC0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29[0] = v25;
      *v18 = 136315138;
      v27(v9, &a1[v13], v5);
      v19 = v17;
      v20 = sub_1000262E0();
      v22 = v21;
      v26(v9, v5);
      v23 = sub_100025380(v20, v22, v29);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v19, "Did load poster configuration: %s", v18, 0xCu);
      sub_10000B7E0(v25);
    }
  }

  return result;
}

void sub_10001BC20(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v9 = sub_1000269F0();
    if (a1)
    {
      type metadata accessor for Key(0);
      sub_100022440(&qword_100041F90, type metadata accessor for Key, &unk_100028E48);
      v10.super.isa = sub_100026990().super.isa;
    }

    else
    {
      v10.super.isa = 0;
    }

    [v9 sizeWithAttributes:v10.super.isa];
    a2 = v13;
    a3 = v14;
  }

  v15 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{*&a2, *&a3}];
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1000214EC;
  *(v17 + 24) = v16;
  v20[4] = sub_10002150C;
  v20[5] = v17;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100016EDC;
  v20[3] = &unk_10003A128;
  v18 = _Block_copy(v20);

  [v15 imageWithActions:v18];

  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_10001BE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      swift_beginAccess();
      v7 = sub_100026370();
      v9 = v8;
      swift_endAccess();
      v10 = objc_allocWithZone(type metadata accessor for MonogramInputViewController());
      v11 = sub_100011770(v7, v9);
      *&v11[OBJC_IVAR____TtC23MonogramPosterExtension27MonogramInputViewController_delegate + 8] = &off_10003A048;
      swift_unknownObjectWeakAssign();
      [v11 setModalPresentationStyle:5];
      [v11 setModalTransitionStyle:2];
      [v6 presentViewController:v11 animated:1 completion:0];

      v4 = v11;
    }
  }
}

void sub_10001BFD4()
{
  v1 = v0;
  sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
  swift_beginAccess();
  v2 = sub_100026330();
  swift_endAccess();
  v3._rawValue = v2;
  isa = sub_100026BF0(v3).super.isa;
  v5 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{35.0, 35.0}];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = xmmword_100029C00;
  *(v6 + 40) = 0x403D000000000000;
  *(v6 + 48) = isa;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000217D8;
  *(v7 + 24) = v6;
  v11[4] = sub_100022654;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100016EDC;
  v11[3] = &unk_10003A290;
  v8 = _Block_copy(v11);
  v9 = v1;
  v10 = isa;

  [v5 imageWithActions:v8];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

void sub_10001C1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000263C0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      v43 = v9;
      v40 = a4;
      v41 = a5;
      sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
      swift_beginAccess();
      v16 = sub_100026330();
      swift_endAccess();
      v17._rawValue = v16;
      v18.super.isa = sub_100026BF0(v17).super.isa;
      v42 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
      v19 = sub_1000263D0();
      v20 = *(v19 + 16);
      if (v20)
      {
        isa = v18.super.isa;
        v37 = v15;
        v38 = v13;
        v39 = a3;
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_100026CE0();
        v21 = v43 + 16;
        v43 = *(v43 + 16);
        v22 = *(v21 + 64);
        v35 = v19;
        v23 = v19 + ((v22 + 32) & ~v22);
        v24 = *(v21 + 56);
        do
        {
          (v43)(v11, v23, v8);
          sub_1000263B0();
          (*(v21 - 8))(v11, v8);
          sub_100026CC0();
          sub_100026CF0();
          sub_100026D00();
          sub_100026CD0();
          v23 += v24;
          --v20;
        }

        while (v20);

        v25 = aBlock[0];
        v13 = v38;
        a3 = v39;
        v18.super.isa = isa;
        v15 = v37;
      }

      else
      {

        v25 = _swiftEmptyArrayStorage;
      }

      sub_10001C63C(v25);

      v26 = objc_allocWithZone(PREditorColorPalette);
      v27 = sub_100026B00().super.isa;

      v28 = [v26 initWithColors:v27 localizedName:0 showsColorWell:0];

      v29 = v42;
      [v42 setColorPalette:v28];
      v30 = sub_1000269F0();
      [v29 setPrompt:v30];

      v31 = [objc_allocWithZone(PRPosterColor) initWithColor:v18.super.isa];
      [v29 setSelectedColor:v31];

      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = a3;
      aBlock[4] = sub_100021790;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100013174;
      aBlock[3] = &unk_10003A218;
      v34 = _Block_copy(aBlock);

      [v15 presentColorPickerWithConfiguration:v29 changeHandler:v34];
      _Block_release(v34);

      v13 = v28;
    }
  }
}

id *sub_10001C63C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100026D20();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_10001678C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100026CA0();
        sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10001678C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = (v7 + 1);
        sub_10002154C(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10001678C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = (v11 + 1);
        sub_10002154C(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_10001C838(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100026390();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      sub_100026C00();
      v32 = a1;
      v15 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
      swift_beginAccess();
      v16 = v5[2];
      v16(v10, &v12[v15], v4);
      sub_100026340();
      v31 = v16;
      v16(v8, &v12[v15], v4);
      swift_beginAccess();
      v28 = v5[3];
      v29 = v5 + 3;
      v28(&v12[v15], v10, v4);
      swift_endAccess();
      sub_10001A438();
      v17 = v5[1];
      v17(v8, v4);
      v30 = v17;
      v17(v10, v4);
      v18 = sub_100026BE0();
      v19 = sub_1000263E0();
      if (*(v19 + 16))
      {
        v32 = v14;
        v27 = sub_100024FD4(v18);
        v21 = v20;

        if (v21)
        {
          v22 = *(*(v19 + 56) + 8 * v27);

          sub_100026C00();
          v23 = v31;
          v31(v10, &v12[v15], v4);
          sub_100026360();
          v23(v8, &v12[v15], v4);
          swift_beginAccess();
          v28(&v12[v15], v10, v4);
          swift_endAccess();
          sub_10001A438();

          v24 = v30;
          v30(v8, v4);
          v24(v10, v4);
        }

        else
        {
        }

        v14 = v32;
      }

      else
      {
      }

      sub_100020A90();
      if (!v25)
      {
        __break(1u);
        return;
      }

      v26 = v25;
      sub_10000402C();

      [v14 updateActions];
      v12 = v14;
    }
  }
}

void sub_10001CBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100003598(&qword_100042000, &unk_100029D00);
  __chkstk_darwin(v3 - 8);
  v5 = &v79 - v4;
  v6 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  __chkstk_darwin(v6 - 8);
  v89 = &v79 - v7;
  v8 = sub_100003598(&qword_100041D80, &qword_100029D10);
  v90 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v79 - v13;
  v15 = __chkstk_darwin(v12);
  v88 = &v79 - v16;
  v17 = __chkstk_darwin(v15);
  v87 = &v79 - v18;
  __chkstk_darwin(v17);
  v101 = (&v79 - v19);
  v20 = sub_100026610();
  v91 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v98 = &v79 - v25;
  __chkstk_darwin(v24);
  v27 = (&v79 - v26);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v86 = v14;
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      v92 = v11;
      v32 = [objc_allocWithZone(PREditorContentStylePickerConfiguration) init];
      v99 = sub_100026600();
      sub_100020A90();
      if (v33)
      {
        v34 = [v33 traitCollection];
        v35 = [v34 userInterfaceStyle];

        if (v35 == 2)
        {
          sub_1000264B0();
        }

        else
        {
          sub_1000264C0();
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
LABEL_37:
          v99 = sub_1000205BC(0, *(v99 + 16) + 1, 1, v99, &qword_100042028, &qword_100029D30, &type metadata accessor for GradientDefinition);
        }

        v38 = *(v99 + 16);
        v37 = *(v99 + 24);
        v97 = (v38 + 1);
        v85 = v29;
        v82 = v31;
        v81 = v5;
        v84 = v32;
        v83 = v23;
        if (v38 >= v37 >> 1)
        {
          v99 = sub_1000205BC((v37 > 1), v97, 1, v99, &qword_100042028, &qword_100029D30, &type metadata accessor for GradientDefinition);
        }

        v39 = v99;
        v40 = v97;
        *(v99 + 16) = v97;
        v31 = (v91 + 32);
        v5 = *(v91 + 32);
        v32 = (v39 + ((*(v91 + 80) + 32) & ~*(v91 + 80)));
        v95 = *(v91 + 72);
        v100 = v20;
        (v5)(&v32[v95 * v38], v27, v20);
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_1000167AC(0, v40, 0);
        v23 = 0;
        v27 = 0;
        v102 = aBlock[0];
        v96 = (v31 - 24);
        v41 = v90;
        do
        {
          if (v23 >= *(v99 + 16))
          {
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v29 = v5;
          v42 = v98;
          v43 = v100;
          (*(v31 - 2))(v98, v32, v100);
          sub_10001D714(v42, v101);
          v94 = *v96;
          v94(v42, v43);
          v44 = v102;
          aBlock[0] = v102;
          v46 = *(v102 + 16);
          v45 = *(v102 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_1000167AC((v45 > 1), v46 + 1, 1);
            v41 = v90;
            v44 = aBlock[0];
          }

          ++v23;
          *(v44 + 16) = v46 + 1;
          v47 = (*(v41 + 80) + 32) & ~*(v41 + 80);
          v102 = v44;
          v20 = *(v41 + 72);
          sub_1000215B8(v101, v44 + v47 + v20 * v46);
          v32 += v95;
          v5 = v29;
        }

        while (v97 != v23);
        v48 = *(v102 + 16);
        v49 = _swiftEmptyArrayStorage;
        v80 = v47;
        if (v48)
        {
          aBlock[0] = _swiftEmptyArrayStorage;
          v50 = v102;
          sub_100026CE0();
          v51 = v50 + v47;
          v52 = v86;
          v101 = v5;
          v53 = v88;
          v54 = v87;
          v98 = v31;
          do
          {
            sub_1000161E8(v51, v54, &qword_100041D80, &qword_100029D10);
            sub_1000161E8(v54, v53, &qword_100041D80, &qword_100029D10);
            v55 = *(v93 + 48);
            v56 = *(v53 + v55);
            v101(v52, v53, v100);
            *(v52 + v55) = v56;
            swift_unknownObjectRetain();
            sub_10000C6E0(v52, &qword_100041D80, &qword_100029D10);
            sub_10000C6E0(v54, &qword_100041D80, &qword_100029D10);
            sub_100026CC0();
            sub_100026CF0();
            sub_100026D00();
            sub_100026CD0();
            v51 += v20;
            --v48;
          }

          while (v48);
          v49 = aBlock[0];
          v5 = v101;
        }

        sub_10001DA0C(v49);
        v57 = objc_allocWithZone(PREditorContentStylePalette);
        sub_100003598(&qword_100042008, &qword_100029D18);
        isa = sub_100026B00().super.isa;

        v59 = [v57 initWithContentStyles:isa localizedName:0];

        v32 = v84;
        [v84 setStylePalette:v59];

        [v32 setColorWellDisplayMode:0];
        v29 = v85;
        swift_beginAccess();
        v60 = v89;
        sub_100026300();
        v61 = v100;
        v62 = (*(v91 + 48))(v60, 1, v100);
        v23 = v83;
        if (v62 == 1)
        {

          sub_10000C6E0(v60, &unk_1000422E0, &unk_10002A0F0);
          swift_endAccess();
          v63 = v82;
          goto LABEL_33;
        }

        (v5)(v83, v60, v61);
        swift_endAccess();
        v64 = v102;
        v65 = *(v102 + 16);
        if (v65)
        {
          v31 = 0;
          v66 = v102 + v80;
          v27 = &qword_100029D10;
          while (v31 < *(v64 + 16))
          {
            v5 = v92;
            sub_1000161E8(v66, v92, &qword_100041D80, &qword_100029D10);
            if (sub_100026580())
            {
              v68 = v81;
              sub_1000215B8(v5, v81);
              v67 = 0;
              goto LABEL_29;
            }

            ++v31;
            sub_10000C6E0(v5, &qword_100041D80, &qword_100029D10);
            v66 += v20;
            v64 = v102;
            if (v65 == v31)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_36;
        }

LABEL_27:
        v67 = 1;
        v68 = v81;
LABEL_29:
        v69 = v90;
        v70 = v93;
        (*(v90 + 56))(v68, v67, 1, v93);

        v71 = (*(v69 + 48))(v68, 1, v70);
        v63 = v82;
        v72 = v100;
        v73 = v94;
        if (v71 == 1)
        {
          sub_10000C6E0(v68, &qword_100042000, &unk_100029D00);
          v74 = 0;
        }

        else
        {
          v74 = *(v68 + *(v70 + 48));
          v94(v68, v100);
        }

        [v32 setSelectedStyle:v74];
        swift_unknownObjectRelease();
        v73(v23, v72);
LABEL_33:
        v75 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v76 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v77 = swift_allocObject();
        v77[2] = v75;
        v77[3] = v76;
        v77[4] = v102;
        aBlock[4] = sub_100021670;
        aBlock[5] = v77;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10001E2C8;
        aBlock[3] = &unk_10003A1C8;
        v78 = _Block_copy(aBlock);

        [v63 presentContentStylePickerWithConfiguration:v32 changeHandler:v78];

        _Block_release(v78);
      }

      else
      {
        __break(1u);
        (*v96)(v5, v8);

        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_10001D714(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000264A0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = sub_100026610();
  v11 = *(*(v10 - 8) + 16);
  v30 = a2;
  v11(a2, a1, v10);
  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100029330;
  v31 = a1;
  v13 = sub_1000265E0();
  if (*(v13 + 16))
  {
    sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = *(v5 + 16);
    v15(v9, v13 + v14, v4);

    sub_100026430();
    v27 = v5;
    v28 = v4;
    v16 = *(v5 + 8);
    v16(v9);
    *(v12 + 32) = sub_100026C10();
    v17 = sub_1000265E0();
    v18 = *(v17 + 16);
    if (v18)
    {
      v31 = *(sub_100003598(&qword_100041D80, &qword_100029D10) + 48);
      v19 = v17 + v14;
      v20 = v28;
      v21 = v19 + *(v27 + 72) * (v18 - 1);
      v22 = v29;
      v15(v29, v21, v28);

      sub_100026430();
      (v16)(v22, v20);
      *(v12 + 40) = sub_100026C10();
      v23 = objc_allocWithZone(PRPosterContentGradientStyle);
      isa = sub_100026B00().super.isa;

      v25 = [v23 initWithColors:isa];

      *(v30 + v31) = v25;
      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

id *sub_10001DA0C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_100026D20();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100020798(v3, 0);
  sub_100020820((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_10001DAA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = a1;
  v6 = sub_100026390();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v74 - v11;
  v13 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  __chkstk_darwin(v13 - 8);
  v86 = &v74 - v14;
  v89 = sub_100003598(&qword_100041D80, &qword_100029D10);
  v15 = *(v89 - 8);
  v16 = __chkstk_darwin(v89);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v83 = &v74 - v19;
  v20 = sub_100026610();
  v85 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v84 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v87 = &v74 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v79 = v20;
      v75 = v12;
      v76 = v10;
      v77 = v7;
      v78 = v6;
      v80 = v26;
      v81 = v25;
      v82 = a5;
      v27 = *(a5 + 16);
      if (v27)
      {
        v28 = v82 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v88 = *(v15 + 72);
        v29 = &qword_100041D80;
        v30 = &qword_100029D10;
        while (1)
        {
          v31 = v29;
          v32 = v30;
          sub_1000161E8(v28, v18, v29, v30);
          v33 = [*&v18[*(v89 + 48)] identifier];
          v34 = sub_100026A20();
          v36 = v35;

          v37 = [v90 identifier];
          v38 = sub_100026A20();
          v40 = v39;

          if (v34 == v38 && v36 == v40)
          {
            break;
          }

          v42 = sub_100026D60();

          if (v42)
          {
            goto LABEL_16;
          }

          v29 = v31;
          v30 = v32;
          sub_10000C6E0(v18, v31, v32);
          v28 += v88;
          if (!--v27)
          {
            goto LABEL_11;
          }
        }

LABEL_16:
        v55 = v83;
        sub_1000215B8(v18, v83);
        swift_unknownObjectRelease();
        v56 = v85;
        v57 = v87;
        v58 = v79;
        (*(v85 + 32))(v87, v55, v79);
        v59 = v84;
        sub_1000264C0();
        LOBYTE(v55) = sub_100026580();
        v60 = *(v56 + 8);
        v60(v59, v58);
        if (v55 & 1) != 0 || (sub_1000264B0(), v61 = sub_100026580(), v60(v59, v58), (v61))
        {
          (*(v56 + 56))(v86, 1, 1, v58);
        }

        else
        {
          v62 = v86;
          (*(v56 + 16))(v86, v57, v58);
          (*(v56 + 56))(v62, 0, 1, v58);
        }

        v63 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
        v64 = v81;
        swift_beginAccess();
        v65 = v77;
        v66 = *(v77 + 16);
        v67 = v75;
        v68 = v78;
        v66(v75, &v64[v63], v78);
        sub_100026310();
        v69 = v76;
        v66(v76, &v64[v63], v68);
        swift_beginAccess();
        (*(v65 + 24))(&v64[v63], v67, v68);
        swift_endAccess();
        sub_10001A438();
        v70 = *(v65 + 8);
        v70(v69, v68);
        v70(v67, v68);
        sub_100020A90();
        if (v71)
        {
          v72 = v71;
          sub_10000402C();

          v73 = v80;
          [v80 updateActions];

          v60(v87, v79);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
LABEL_11:
        v43 = v90;
        swift_unknownObjectRetain();
        v44 = v82;

        v45 = v81;
        v46 = sub_100026680();
        v47 = sub_100026BB0();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v92[0] = swift_slowAlloc();
          *v48 = 136315394;
          v91 = v43;
          swift_unknownObjectRetain();
          sub_100003598(&qword_100042008, &qword_100029D18);
          v49 = sub_100026A50();
          v51 = sub_100025380(v49, v50, v92);

          *(v48 + 4) = v51;
          *(v48 + 12) = 2080;
          v91 = v44;

          sub_100003598(&qword_100042010, &qword_100029D20);
          v52 = sub_100026A50();
          v54 = sub_100025380(v52, v53, v92);

          *(v48 + 14) = v54;
          _os_log_impl(&_mh_execute_header, v46, v47, "Failed to find selectedStyle: %s in styles: %s", v48, 0x16u);
          swift_arrayDestroy();
        }
      }
    }

    else
    {
    }
  }
}

double sub_10001E2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  v5 = swift_unknownObjectRetain();
  v4(v5, a3);

  swift_unknownObjectRelease();
  return result;
}

void sub_10001E330(void *a1, char *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v109 = a3;
  v103 = sub_100026200();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  __chkstk_darwin(v13 - 8);
  v115 = &v101 - v14;
  v15 = sub_1000264A0();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v107 = &v101 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v101 - v23;
  __chkstk_darwin(v22);
  v26 = &v101 - v25;
  v27 = sub_100026610();
  v117 = *(v27 - 8);
  v118 = v27;
  v28 = __chkstk_darwin(v27);
  v108 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v101 - v30;
  v116 = a2;
  sub_100020A90();
  if (!v32)
  {
    __break(1u);
LABEL_22:

    __break(1u);
    goto LABEL_23;
  }

  v33 = [v32 traitCollection];
  v34 = [v33 userInterfaceStyle];

  if (v34 == 2)
  {
    sub_1000264B0();
  }

  else
  {
    sub_1000264C0();
  }

  v114 = v24;
  v106 = v19;
  v101 = v12;
  v113 = a1;
  v35 = sub_1000265E0();
  if (!*(v35 + 16))
  {
    goto LABEL_22;
  }

  v36 = sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
  v37 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v38 = *(v16 + 16);
  v38(v26, v35 + v37, v15);

  sub_100026430();
  v112 = v16;
  v39 = *(v16 + 8);
  v39(v26, v15);
  v40 = sub_100026C10();
  v111 = [v40 CGColor];

  v110 = v31;
  v41 = sub_1000265E0();
  v42 = *(v41 + 16);
  if (!v42)
  {
LABEL_23:

    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  v105 = v37;
  v104 = *(v112 + 9);
  v43 = v114;
  v112 = v38;
  v38(v114, v41 + v37 + v104 * (v42 - 1), v15);

  sub_100026430();
  v39(v43, v15);
  v114 = v36;
  v44 = sub_100026C10();
  v45 = [v44 CGColor];

  swift_beginAccess();
  v46 = v115;
  sub_100026300();
  v48 = v117;
  v47 = v118;
  if ((*(v117 + 48))(v46, 1, v118) == 1)
  {
    sub_10000C6E0(v46, &unk_1000422E0, &unk_10002A0F0);
    swift_endAccess();
    v49 = v111;
    v50 = &stru_10003E000;
    goto LABEL_12;
  }

  v116 = v45;
  v51 = v46;
  v52 = v108;
  (*(v48 + 32))(v108, v51, v47);
  swift_endAccess();
  v53 = sub_1000265E0();
  if (!*(v53 + 16))
  {
    goto LABEL_24;
  }

  v54 = v105;
  v55 = v107;
  v56 = v112;
  v112(v107, v53 + v105, v15);

  sub_100026430();
  v39(v55, v15);
  v57 = sub_100026C10();
  v58 = [v57 CGColor];

  v59 = sub_1000265E0();
  v60 = *(v59 + 16);
  if (!v60)
  {
LABEL_25:

    __break(1u);
    return;
  }

  v61 = v59 + v54 + (v60 - 1) * v104;
  v62 = v106;
  v56(v106, v61, v15);

  sub_100026430();
  v39(v62, v15);
  v63 = sub_100026C10();
  v50 = &stru_10003E000;
  v64 = [v63 CGColor];

  (*(v117 + 8))(v52, v118);
  v49 = v58;
  v45 = v64;
LABEL_12:
  v65 = objc_opt_self();
  v66 = [v65 currentEnvironment];
  v67 = [v66 featureFlags];

  LODWORD(v66) = [v67 isFeatureEnabled:6];
  swift_unknownObjectRelease();
  if (!v66 || (v68 = [v65 currentEnvironment], v69 = objc_msgSend(v68, "featureFlags"), v68, LODWORD(v68) = objc_msgSend(v69, "isFeatureEnabled:", 7), swift_unknownObjectRelease(), !v68))
  {
    v91 = v113;
    v92 = [v113 CGContext];
    v93 = [v109 v50[71].type];
    CGContextSetFillColorWithColor(v92, v93);

    v94 = [v91 CGContext];
    CGContextSetLineWidth(v94, a4);

    v95 = [v91 CGContext];
    v96 = [objc_opt_self() systemBackgroundColor];
    v97 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
    v98 = [v96 resolvedColorWithTraitCollection:v97];

    v99 = [v98 v50[71].type];
    CGContextSetStrokeColorWithColor(v95, v99);

    v100 = [v91 CGContext];
    v126.origin.x = a4;
    v126.origin.y = a4;
    v126.size.width = a5;
    v126.size.height = a6;
    CGContextAddEllipseInRect(v100, v126);

    v74.super.isa = [v91 CGContext];
    CGContextDrawPath(v74.super.isa, kCGPathFillStroke);

    goto LABEL_19;
  }

  v70 = [v113 CGContext];
  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_100029330;
  *(v71 + 32) = v49;
  *(v71 + 40) = v45;
  v72 = v49;
  v73 = v45;
  v74.super.isa = sub_100026B00().super.isa;

  DeviceRGB = CGColorGetColorSpace(v72);
  if (!DeviceRGB)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v76 = CGGradientCreateWithColors(DeviceRGB, v74.super.isa, dbl_100039930);
  if (v76)
  {
    v77 = v76;
    v121.origin.x = a4;
    v121.origin.y = a4;
    v121.size.width = a5;
    v121.size.height = a6;
    v78 = CGPathCreateWithEllipseInRect(v121, 0);
    v116 = v73;
    v79 = v78;
    CGContextAddPath(v70, v78);
    v80 = v50;
    v81 = v102;
    v82 = v101;
    v83 = v103;
    (*(v102 + 104))(v101, enum case for CGPathFillRule.winding(_:), v103);
    sub_100026B80();
    (*(v81 + 8))(v82, v83);
    v122.origin.x = a4;
    v122.origin.y = a4;
    v122.size.width = a5;
    v122.size.height = a6;
    MidX = CGRectGetMidX(v122);
    v123.origin.x = a4;
    v123.origin.y = a4;
    v123.size.width = a5;
    v123.size.height = a6;
    MinY = CGRectGetMinY(v123);
    v124.origin.x = a4;
    v124.origin.y = a4;
    v124.size.width = a5;
    v124.size.height = a6;
    v86 = CGRectGetMidX(v124);
    v125.origin.x = a4;
    v125.origin.y = a4;
    v125.size.width = a5;
    v125.size.height = a6;
    v120.y = CGRectGetMaxY(v125);
    v119.x = MidX;
    v119.y = MinY;
    v120.x = v86;
    CGContextDrawLinearGradient(v70, v77, v119, v120, 0);
    CGContextSetLineWidth(v70, a4);
    v87 = [objc_opt_self() systemBackgroundColor];
    v88 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
    v89 = [v87 resolvedColorWithTraitCollection:v88];

    v90 = [v89 v80[71].type];
    CGContextSetStrokeColorWithColor(v70, v90);

    CGContextAddPath(v70, v79);
    CGContextDrawPath(v70, kCGPathStroke);

LABEL_19:
    (*(v117 + 8))(v110, v118);
    return;
  }

  (*(v117 + 8))(v110, v118);
}

void sub_10001EF34(uint64_t a1)
{
  v1 = a1;
  sub_100020A90();
  if (!v2)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v3 = *(v2 + OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView);
  if (v3)
  {
    v4 = [v3 layer];
    if (v4)
    {
      v5 = v4;
      type metadata accessor for BackgroundSimulationLayer(0);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v20 = v6;
        goto LABEL_8;
      }
    }
  }

  v20 = 0;
LABEL_8:
  v7 = sub_100020A34();
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView);
    if (v8)
    {
      v9 = [v8 layer];
      if (v9)
      {
        v10 = v9;
        type metadata accessor for BackgroundSimulationLayer(0);
        v11 = swift_dynamicCastClass();
        if (v11)
        {
          v21 = v11;
LABEL_15:
          for (i = 0; i != 2; ++i)
          {
            v13 = v19[i + 4];
            if (v13)
            {
              v14 = v13;
              sub_100026AF0();
              if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_100026B10();
              }

              sub_100026B30();
            }
          }

          sub_100003598(&qword_100042078, &unk_100029DB0);
          swift_arrayDestroy();
          if (_swiftEmptyArrayStorage >> 62)
          {
            v15 = sub_100026D20();
            if (v15)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v15)
            {
LABEL_23:
              if (v15 >= 1)
              {
                v16 = 0;
                v17 = v1 & 1;
                do
                {
                  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
                  {
                    v18 = sub_100026CA0();
                  }

                  else
                  {
                    v18 = _swiftEmptyArrayStorage[v16 + 4];
                  }

                  ++v16;
                  v18[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_isRenderingPaused] = v17;
                }

                while (v15 != v16);
                goto LABEL_30;
              }

              __break(1u);
              goto LABEL_32;
            }
          }

LABEL_30:

          return;
        }
      }
    }

    v21 = 0;
    goto LABEL_15;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_10001F17C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100026150();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_100026140();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_10001F270(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10001EF34(a3 & 1);
  }
}

id sub_10001F2CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = sub_1000263C0();
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_isIPad;
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v3[v8] = v10 == 1;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_backgroundOrientationAdjustingView] = 0;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_monogramOrientationAdjustingView] = 0;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__backgroundViewController] = 0;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__monogramViewController] = 0;
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_editor] = 0;
  sub_100026690();
  *&v3[OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_extensionLifecycleObservers] = _swiftEmptyArrayStorage;
  type metadata accessor for MonogramPosterColorGenerator();
  sub_10000F330(v7);
  sub_1000262D0();
  v11 = &v3[OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_constants];
  *v11 = xmmword_100029C00;
  *(v11 + 2) = 0x4038000000000000;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t type metadata accessor for MonogramPosterEditor(uint64_t a1)
{
  result = qword_100041F08;
  if (!qword_100041F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001F618(uint64_t a1)
{
  result = sub_1000266A0();
  if (v2 <= 0x3F)
  {
    result = sub_100026390();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_10001F710(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1000269F0();
  if (a6)
  {
    type metadata accessor for Key(0);
    sub_100022440(&qword_100041F90, type metadata accessor for Key, &unk_100028E48);
    v10.super.isa = sub_100026990().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  isa = v10.super.isa;
  [v9 drawInRect:0.0 withAttributes:{0.0, a1, a2}];
}

double sub_10001F874(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void sub_10001F91C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_contentView;
  v4 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_contentView];
  v5 = 0.0;
  if ((a1 - 2) <= 2)
  {
    v5 = dbl_100029E80[a1 - 2];
  }

  CGAffineTransformMakeRotation(&v18, v5);
  [v4 setTransform:&v18];
  v6 = *&v1[v3];
  v7 = sub_10000B874(a1);
  v8 = v6;
  [v1 bounds];
  v10 = v9;
  v12 = v11;
  [v1 bounds];
  if (v7)
  {
    v15 = v12;
  }

  else
  {
    v15 = v10;
  }

  if (v7)
  {
    v14 = v13;
  }

  [v8 setBounds:{0.0, 0.0, v15, v14}];

  v16 = *&v1[v3];
  [v1 bounds];
  MidX = CGRectGetMidX(v19);
  [v1 bounds];
  [v16 setCenter:{MidX, CGRectGetMidY(v20)}];
}

id sub_10001FA94(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DeviceOrientationAdjustingView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 initializeBufferWithCopyOfBuffer for MonogramPosterEditor.Constants(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MonogramPosterEditor.Constants(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MonogramPosterEditor.Constants(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_10001FB6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FBA4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_100024E84(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001FCE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100022614;

  return v6();
}

uint64_t sub_10001FDC8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10001FEB0;

  return v7();
}

uint64_t sub_10001FEB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001FFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003598(&qword_100042038, &qword_100029D38);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000161E8(a3, v23 - v10, &qword_100042038, &qword_100029D38);
  v12 = sub_100026B60();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000C6E0(v11, &qword_100042038, &qword_100029D38);
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

  sub_100026B50();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_100026B40();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_100026A70() + 32;
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

    sub_10000C6E0(a3, &qword_100042038, &qword_100029D38);

    return v21;
  }

LABEL_8:
  sub_10000C6E0(a3, &qword_100042038, &qword_100029D38);
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

uint64_t sub_1000202A0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100020398;

  return v6(a1);
}

uint64_t sub_100020398()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id *sub_1000204B8(id *result, int64_t a2, char a3, uint64_t a4)
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
    sub_100003598(&qword_100041608, &qword_100029DC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

id *sub_1000205BC(id *result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
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

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
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

  sub_100003598(a5, a6);
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
  v17[3] = (2 * ((result - v16) / v15));
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id *sub_100020798(uint64_t a1, uint64_t a2)
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

  sub_100003598(&qword_100040F98, &qword_1000293D0);
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

uint64_t sub_100020820(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100026D20();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100026D20();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000216EC();
          for (i = 0; i != v6; ++i)
          {
            sub_100003598(&qword_100042018, &qword_100029D28);
            v9 = sub_1000209AC(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100003598(&qword_100042008, &qword_100029D18);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000209AC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100026CA0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_100020A2C;
  }

  __break(1u);
  return result;
}

uint64_t sub_100020A34()
{
  v1 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__monogramViewController;
  result = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__monogramViewController);
  if (!result)
  {
    type metadata accessor for MonogramPosterViewController(0);
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    result = *(v0 + v1);
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100020A90()
{
  v1 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__backgroundViewController;
  if (!*(v0 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__backgroundViewController))
  {
    v2 = v0;
    type metadata accessor for MonogramPosterBackgroundViewController(0);
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    v5 = *(v0 + v1);
    if (!v5 || (sub_10000B82C(0, &qword_100041F70, UIColor_ptr), swift_beginAccess(), v6 = v5, v7 = sub_100026330(), swift_endAccess(), v8._rawValue = v7, v9.super.isa = sub_100026BF0(v8).super.isa, v10 = *&v6[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor], *&v6[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor] = v9, v6, v10, (v11 = *(v2 + v1)) == 0) || (swift_beginAccess(), v12 = v11, v13 = sub_100026350(), swift_endAccess(), v14._rawValue = v13, v15.super.isa = sub_100026BF0(v14).super.isa, v16 = *&v12[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor], *&v12[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor] = v15, v12, v16, !*(v2 + v1)))
    {
      __break(1u);
    }
  }
}

void sub_100020BF8(void *a1, void *a2)
{
  if (*(v2 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_isIPad) == 1)
  {
    v5 = *(v2 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_backgroundOrientationAdjustingView);
    if (v5)
    {
      v6 = v5;
      v7 = [a1 deviceOrientation];
      *&v6[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_deviceOrientation] = v7;
      v8 = 0.2;
      if (a2)
      {
        v9 = [a2 animationSettings];
        if (v9)
        {
          v10 = v9;
          [v9 duration];
          v8 = v11;
        }
      }

      v12 = objc_opt_self();
      v13 = swift_allocObject();
      *(v13 + 16) = v6;
      *(v13 + 24) = v7;
      v31 = sub_10002227C;
      v32 = v13;
      v27 = _NSConcreteStackBlock;
      v28 = 1107296256;
      v29 = sub_10001F874;
      v30 = &unk_10003A3A8;
      v14 = _Block_copy(&v27);
      v15 = v6;

      [v12 animateWithDuration:v14 animations:v8];
      _Block_release(v14);
    }

    v16 = *(v2 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_monogramOrientationAdjustingView);
    if (v16)
    {
      v17 = v16;
      v18 = [a1 deviceOrientation];
      *&v17[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_deviceOrientation] = v18;
      v19 = 0.2;
      if (a2)
      {
        v20 = [a2 animationSettings];
        if (v20)
        {
          v21 = v20;
          [v20 duration];
          v19 = v22;
        }
      }

      v23 = objc_opt_self();
      v24 = swift_allocObject();
      *(v24 + 16) = v17;
      *(v24 + 24) = v18;
      v31 = sub_10002261C;
      v32 = v24;
      v27 = _NSConcreteStackBlock;
      v28 = 1107296256;
      v29 = sub_10001F874;
      v30 = &unk_10003A3F8;
      v25 = _Block_copy(&v27);
      v26 = v17;

      [v23 animateWithDuration:v25 animations:v19];
      _Block_release(v25);
    }
  }
}

void sub_100020ED4(void *a1, void *a2)
{
  v3 = v2;
  v5 = sub_100026680();
  v6 = sub_100026B90();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Populating views", v7, 2u);
  }

  sub_100020A90();
  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = [v8 view];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = type metadata accessor for DeviceOrientationAdjustingView();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_deviceOrientation] = 1;
  *&v12[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_contentView] = v10;
  v39.receiver = v12;
  v39.super_class = v11;
  v13 = v10;
  v14 = objc_msgSendSuper2(&v39, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v14 addSubview:v13];

  v15 = [a2 backgroundView];
  [v15 addSubview:v14];

  v16 = [a2 backgroundView];
  sub_100007F74(v16);

  v17 = *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_backgroundOrientationAdjustingView);
  *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_backgroundOrientationAdjustingView) = v14;
  v18 = v14;

  v19 = sub_100020A34();
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = [v19 view];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v20;
  v22 = objc_allocWithZone(v11);
  *&v22[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_deviceOrientation] = 1;
  *&v22[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_contentView] = v21;
  v38.receiver = v22;
  v38.super_class = v11;
  v23 = v21;
  v24 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v24 addSubview:v23];

  v25 = [a2 floatingView];
  [v25 addSubview:v24];

  v26 = [a2 floatingView];
  sub_100007F74(v26);

  v27 = *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_monogramOrientationAdjustingView);
  *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_monogramOrientationAdjustingView) = v24;
  v28 = v24;

  sub_100020A90();
  if (!v29)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v30 = v29;
  v31 = sub_100020A34();
  v32 = &off_100039C98;
  if (!v31)
  {
    v32 = 0;
  }

  *&v30[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_delegate + 8] = v32;
  swift_unknownObjectWeakAssign();

  sub_100020A90();
  if (!v33)
  {
    goto LABEL_18;
  }

  v34 = v33;
  sub_10000402C();

  v35 = sub_100020A34();
  if (v35)
  {
    v36 = v35;
    sub_1000097A4();

    [a1 updateActions];
    return;
  }

LABEL_19:
  __break(1u);
}

unint64_t sub_10002123C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003598(&qword_100042070, &qword_100029DA8);
    v3 = sub_100026D30();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000161E8(v4, v13, &qword_100042068, &qword_100029DA0);
      result = sub_100024EFC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10002154C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_100021378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003598(&qword_100041F98, &unk_100029CF0);
    v3 = sub_100026D30();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000161E8(v4, &v11, &qword_100041F80, &qword_100029CE8);
      v5 = v11;
      result = sub_100024F40(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10002154C(&v12, (v3[7] + 32 * result));
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

uint64_t sub_1000214AC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100021534(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_10002154C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10002155C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000215B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003598(&qword_100041D80, &qword_100029D10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021628()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002167C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000216EC()
{
  result = qword_100042020;
  if (!qword_100042020)
  {
    sub_100003508(&qword_100042018, &qword_100029D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042020);
  }

  return result;
}

uint64_t sub_100021750()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021798()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_1000217EC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100026680();
  v4 = sub_100026B90();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating editor", v5, 2u);
  }

  sub_1000193C0();
  v6 = *(v2 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_editor);
  *(v2 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_editor) = 0;

  v7 = sub_100020A34();
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = [v7 view];
  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  [v8 removeFromSuperview];

  v10 = *(v2 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__monogramViewController);
  *(v2 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__monogramViewController) = 0;

  sub_100020A90();
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = [v11 view];
  if (!v12)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 removeFromSuperview];

  v14 = *(v2 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__backgroundViewController);
  *(v2 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__backgroundViewController) = 0;

  oslog = sub_100026680();
  v15 = sub_100026B90();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v15, "Invalidated editor", v16, 2u);
  }
}

uint64_t sub_1000219D4()
{
  v0 = sub_1000261F0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000269E0();
  __chkstk_darwin(v1 - 8);
  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100029900;
  sub_1000269D0();
  sub_1000261E0();
  sub_100026A30();
  v8 = 0u;
  v9 = 0u;
  v3 = sub_1000269F0();
  v4 = sub_1000269F0();

  v5 = objc_allocWithZone(PREditingLook);
  v6 = [v5 initWithIdentifier:v3 displayName:v4 initialTimeFontConfiguration:0 initialTitleColor:{0, v8, v9}];

  swift_unknownObjectRelease();
  *(v2 + 32) = v6;
  return v2;
}

uint64_t sub_100021C80()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100021CC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001FEB0;

  return sub_1000191A4(v2, v3, v4);
}

uint64_t sub_100021D80()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100022614;

  return sub_10001FCE0(v2, v3, v4);
}

uint64_t sub_100021E40()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100021E80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100022614;

  return sub_10001FDC8(a1, v4, v5, v6);
}

uint64_t sub_100021F4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021F84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100022614;

  return sub_1000202A0(a1, v4);
}

uint64_t sub_10002203C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001FEB0;

  return sub_1000202A0(a1, v4);
}

unint64_t sub_1000220F4()
{
  result = qword_100042048;
  if (!qword_100042048)
  {
    sub_100003508(&qword_100042040, &qword_100029D90);
    sub_100022180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042048);
  }

  return result;
}

unint64_t sub_100022180()
{
  result = qword_100042050;
  if (!qword_100042050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042050);
  }

  return result;
}

double sub_1000221D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_100022228(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000222A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100022370()
{
  result = qword_100042080;
  if (!qword_100042080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042080);
  }

  return result;
}

uint64_t sub_1000223C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100022440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for MonogramPosterEditor.Errors(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MonogramPosterEditor.Errors(_WORD *result, int a2, int a3)
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

unint64_t sub_100022574()
{
  result = qword_100042090;
  if (!qword_100042090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042090);
  }

  return result;
}

Swift::Int sub_100022658(char a1, double a2, float a3)
{
  sub_100026DC0();
  sub_100026890();
  sub_100026DE0(a1 & 1);
  v5 = 0.0;
  if (a3 != 0.0)
  {
    v5 = a3;
  }

  sub_100026DF0(LODWORD(v5));
  return sub_100026E10();
}

BOOL sub_1000226D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  v6 = sub_100026880();
  result = 0;
  if ((v6 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 == v5;
  }

  return result;
}

void sub_100022740(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 12);
  sub_100026890();
  sub_100026DE0(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  sub_100026DF0(LODWORD(v4));
}

Swift::Int sub_1000227A0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 12);
  sub_100026DC0();
  sub_100026890();
  sub_100026DE0(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  sub_100026DF0(LODWORD(v4));
  return sub_100026E10();
}

uint64_t sub_100022818()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  return v1;
}

uint64_t sub_100022894()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC23MonogramPosterExtension18LightAngleObserver__parameters;
  v2 = sub_100003598(&qword_1000421E8, &qword_10002A008);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LightAngleObserver(uint64_t a1)
{
  result = qword_1000420D0;
  if (!qword_1000420D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000229A8(uint64_t a1)
{
  sub_100022A60();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100022A60()
{
  if (!qword_1000420E0)
  {
    v0 = sub_100026730();
    if (!v1)
    {
      atomic_store(v0, &qword_1000420E0);
    }
  }
}

uint64_t getEnumTagSinglePayload for GlassParameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100022B58()
{
  result = qword_1000421E0;
  if (!qword_1000421E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000421E0);
  }

  return result;
}

uint64_t sub_100022BAC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LightAngleObserver(0);
  result = sub_1000266D0();
  *a2 = result;
  return result;
}

double sub_100022BEC@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  result = v4;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;
  return result;
}

uint64_t sub_100022C80(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100026720();
}

void sub_100022D10()
{
  v1 = v0;
  v2 = sub_100026680();
  v3 = sub_100026B90();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v39 = v5;
    *v4 = 136315138;
    sub_100003598(&unk_1000422D0, &qword_10002A0E8);
    v6 = sub_100026A40();
    v8 = sub_100025380(v6, v7, &v39);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Salient Rects found. Setting it to render view: %s", v4, 0xCu);
    sub_10000B7E0(v5);
  }

  v9 = &v1[OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentSalientRect];
  if ((v1[OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentSalientRect + 32] & 1) == 0)
  {
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    v14 = *v9;
    v40.origin.x = *v9;
    v40.origin.y = v11;
    v40.size.width = v12;
    v40.size.height = v13;
    if (!CGRectIsEmpty(v40))
    {
      v22 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
      if (!v22)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v23 = v22;
      v24 = &v22[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect];
      v25 = *&v22[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect];
      v26 = *&v22[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect + 8];
      v27 = *&v22[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect + 16];
      v28 = *&v22[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect + 24];
      v29 = v22[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect + 32];
      *v24 = v10;
      v24[1] = v11;
      v24[2] = v12;
      v24[3] = v13;
      *(v24 + 32) = 0;
      if (v29)
      {
        v30 = v22;
      }

      else
      {
        v31 = v22;
        v41.origin.x = v25;
        v41.origin.y = v26;
        v41.size.width = v27;
        v41.size.height = v28;
        v43.origin.x = v14;
        v43.origin.y = v11;
        v43.size.width = v12;
        v43.size.height = v13;
        if (CGRectEqualToRect(v41, v43))
        {
          goto LABEL_16;
        }
      }

      sub_100008F28();
LABEL_16:

      v19 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
      if (v19)
      {
        v32 = &v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect];
        v33 = *&v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect];
        v34 = *&v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 8];
        v35 = *&v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 16];
        v36 = *&v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 24];
        v37 = v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 32];
        *v32 = v10;
        v32[1] = v11;
        v32[2] = v12;
        v32[3] = v13;
        *(v32 + 32) = 0;
        if ((v37 & 1) == 0)
        {
          v38 = v19;
          v42.origin.x = v33;
          v42.origin.y = v34;
          v42.size.width = v35;
          v42.size.height = v36;
          v44.origin.x = v14;
          v44.origin.y = v11;
          v44.size.width = v12;
          v44.size.height = v13;
          if (CGRectEqualToRect(v42, v44))
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        v38 = v19;
LABEL_19:
        sub_10000402C();
LABEL_20:

        return;
      }

LABEL_26:
      __break(1u);
      return;
    }
  }

  v15 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (!v15)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = &v15[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect];
  v17 = v15[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect + 32];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  if (v17 != 1)
  {
    v18 = v15;
    sub_100008F28();
  }

  v19 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = &v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect];
  v21 = v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 32];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v20[32] = 1;
  if ((v21 & 1) == 0)
  {
    goto LABEL_18;
  }
}

void sub_1000230B8(void *a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectRetain();
  v6 = sub_100026680();
  v7 = sub_100026B90();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v62[0] = v9;
    *v8 = 136315138;
    v10 = [a2 description];
    v11 = sub_100026A20();
    v13 = v12;

    v14 = sub_100025380(v11, v13, v62);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Initializing renderer with poster environment: %s", v8, 0xCu);
    sub_10000B7E0(v9);
  }

  v62[4] = sub_1000237AC;
  v62[5] = 0;
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 1107296256;
  v62[2] = sub_1000237FC;
  v62[3] = &unk_10003A678;
  v15 = _Block_copy(v62);

  [a1 updatePreferences:v15];
  _Block_release(v15);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_31;
  }

  v16 = [a2 deviceOrientation];
  v17 = v3 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentOrientation;
  *v17 = v16;
  *(v17 + 8) = 0;
  v18 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v18)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v19 = v18;
  v20 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  v21 = &off_100039C98;
  if (!v20)
  {
    v21 = 0;
  }

  *&v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_delegate + 8] = v21;
  swift_unknownObjectWeakAssign();

  v22 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v22)
  {
    goto LABEL_32;
  }

  v23 = v22;
  v24 = [a2 isSnapshot];
  v23[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_isSnapshot] = v24;
  v25 = *&v23[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView];
  if (v25)
  {
    v25[OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_isSnapshot] = v24;
    v26 = *&v25[OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_motion];
    if (v26)
    {
      v27 = *(v26 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_isSnapshot);
      *(v26 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_isSnapshot) = v24;
      if (v24 != v27)
      {
        v28 = *(v26 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_motion);
        v29 = v24;
        v30 = v25;

        v31 = &selRef_stopDeviceMotionUpdates;
        if (!v29)
        {
          v31 = &selRef_startDeviceMotionUpdates;
        }

        [v28 *v31];
      }
    }
  }

  v32 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (!v32)
  {
    goto LABEL_33;
  }

  v33 = v32;
  v34 = [a2 isSnapshot];
  v33[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_isSnapshot] = v34;
  sub_1000082D0();

  v35 = [a2 sourceTimeFontConfiguration];
  if (v35)
  {
    v36 = v35;
    v37 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
    if (!v37)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v38 = PRPosterRoleIncomingCall;
    v39 = v37;
    v40 = [v36 effectiveFontForRole:v38];
    sub_10000B57C(v40);
  }

  sub_100023864(a2);
  v41 = [a1 backgroundView];
  v42 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v42)
  {
    goto LABEL_34;
  }

  v43 = [v42 view];
  if (!v43)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v44 = v43;
  [v41 addSubview:v43];

  v45 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v45)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v46 = [v45 view];
  if (!v46)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v47 = v46;
  v48 = [a1 backgroundView];
  sub_100007F74(v48);

  v49 = [a1 floatingView];
  v50 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (!v50)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v51 = [v50 view];
  if (!v51)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v52 = v51;
  [v49 addSubview:v51];

  v53 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v53)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v54 = v53;
  sub_10000402C();

  if (*(v3 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_isIPad) == 1)
  {
    sub_10002427C([a2 deviceOrientation], a1);
LABEL_29:
    [a2 salientContentRectangle];
    v57 = v3 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentSalientRect;
    *v57 = v58;
    *(v57 + 8) = v59;
    *(v57 + 16) = v60;
    *(v57 + 24) = v61;
    *(v57 + 32) = 0;
    sub_100022D10();
    return;
  }

  v55 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (v55)
  {
    v56 = v55;
    sub_100009B64([a2 deviceOrientation]);

    goto LABEL_29;
  }

LABEL_42:
  __break(1u);
}

id sub_1000237AC(void *a1)
{
  [a1 setContentOcclusionRectangleUpdatesRequested:1];

  return [a1 setSalientContentRectangleUpdatesRequested:1];
}

double sub_1000237FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, v6);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_100023864(void *a1)
{
  v2 = v1;
  v4 = sub_1000263C0();
  __chkstk_darwin(v4 - 8);
  v86 = &v82[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100026390();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v82[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v82[-v11];
  v13 = sub_1000262C0();
  v88 = *(v13 - 8);
  v89 = v13;
  __chkstk_darwin(v13);
  v87 = &v82[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_unknownObjectRetain();
  v15 = sub_100026680();
  v16 = sub_100026B90();
  swift_unknownObjectRelease();
  v17 = os_log_type_enabled(v15, v16);
  v90 = v7;
  v85 = v12;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v93[0] = v84;
    *v18 = 136315138;
    v19 = [a1 description];
    v83 = v16;
    v20 = v19;
    v21 = v2;
    v22 = v6;
    v23 = sub_100026A20();
    v24 = v10;
    v26 = v25;

    v27 = v23;
    v6 = v22;
    v2 = v21;
    v28 = sub_100025380(v27, v26, v93);
    v10 = v24;

    *(v18 + 4) = v28;
    v7 = v90;
    _os_log_impl(&_mh_execute_header, v15, v83, "Loading poster configuration from poster environment: %s", v18, 0xCu);
    sub_10000B7E0(v84);
  }

  swift_unknownObjectWeakInit();
  v29 = [a1 contents];
  v93[0] = 0;
  v30 = [v29 loadUserInfoWithError:v93];
  swift_unknownObjectRelease();
  v31 = v93[0];
  if (v30)
  {
    v32 = v6;
    v33 = sub_1000269A0();
    v34 = v31;

    v35 = v88;
    v36 = v89;
    v37 = v87;
    (*(v88 + 104))(v87, enum case for MonogramPosterUserInfoKey.dataRepresentation(_:), v89);
    v38 = sub_1000262B0();
    v40 = v39;
    (*(v35 + 8))(v37, v36);
    v91 = v38;
    v92 = v40;
    sub_100026C70();
    if (*(v33 + 16) && (v41 = sub_100024EFC(v93), (v42 & 1) != 0))
    {
      sub_1000223C4(*(v33 + 56) + 32 * v41, v94);
      sub_10002231C(v93);

      v43 = v32;
      if (swift_dynamicCast())
      {
        v45 = v91;
        v44 = v92;
        sub_100026180();
        swift_allocObject();
        v46 = sub_100026170();
        sub_100026028();
        v47 = v85;
        sub_100026160();
        v87 = v46;
        v88 = v45;
        v89 = v44;
        v86 = v10;
        v69 = OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_configuration;
        swift_beginAccess();
        v70 = v90;
        (*(v90 + 24))(&v2[v69], v47, v32);
        swift_endAccess();
        sub_100024620();
        v71 = *(v70 + 8);
        v71(v47, v32);
        v72 = v2;
        v73 = sub_100026680();
        v74 = sub_100026B90();

        if (os_log_type_enabled(v73, v74))
        {
          v76 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v93[0] = v85;
          *v76 = 136315138;
          v77 = v86;
          (*(v70 + 16))(v86, &v2[v69], v32);
          v78 = sub_1000262E0();
          v80 = v79;
          v71(v77, v32);
          v81 = sub_100025380(v78, v80, v93);

          *(v76 + 4) = v81;
          _os_log_impl(&_mh_execute_header, v73, v74, "Did load poster configuration: %s", v76, 0xCu);
          sub_10000B7E0(v85);
        }

        sub_1000221D4(v88, v89);

        return swift_unknownObjectWeakDestroy();
      }
    }

    else
    {

      sub_10002231C(v93);
      v43 = v32;
    }

    v48 = sub_100026680();
    v49 = sub_100026BB0();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v90;
    if (v50)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Error fetching poster data representation from user info", v52, 2u);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v54 = Strong;
      type metadata accessor for MonogramPosterColorGenerator();
      sub_10000F330(v86);
      sub_1000262D0();
      v55 = OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_configuration;
      swift_beginAccess();
      (*(v51 + 24))(&v54[v55], v10, v43);
      swift_endAccess();
      sub_100024620();

      (*(v51 + 8))(v10, v43);
    }

    return swift_unknownObjectWeakDestroy();
  }

  v56 = v93[0];
  sub_1000261D0();

  swift_willThrow();
  swift_errorRetain();
  v57 = sub_100026680();
  v58 = sub_100026BB0();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = v10;
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v93[0] = v61;
    *v60 = 136315138;
    swift_getErrorValue();
    v62 = sub_100026D70();
    v64 = sub_100025380(v62, v63, v93);

    *(v60 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v57, v58, "Error decoding poster configuration: %s", v60, 0xCu);
    sub_10000B7E0(v61);

    v10 = v59;
  }

  swift_beginAccess();
  v65 = swift_unknownObjectWeakLoadStrong();
  if (!v65)
  {
    swift_unknownObjectWeakDestroy();
  }

  v66 = v65;
  type metadata accessor for MonogramPosterColorGenerator();
  sub_10000F330(v86);
  sub_1000262D0();
  v67 = OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_configuration;
  swift_beginAccess();
  (*(v7 + 24))(&v66[v67], v10, v6);
  swift_endAccess();
  sub_100024620();

  (*(v7 + 8))(v10, v6);
  return swift_unknownObjectWeakDestroy();
}

void sub_10002427C(uint64_t a1, void *a2)
{
  v4 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (v4)
  {
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 floatingView];
      *&v21.a = 0x3FF0000000000000uLL;
      v21.c = 0.0;
      v21.d = 1.0;
      *&v21.tx = 0uLL;
      [v6 setTransform:&v21];
      [v7 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = 0.0;
      if ((a1 - 2) <= 2)
      {
        v16 = dbl_10002A100[a1 - 2];
      }

      CGAffineTransformMakeRotation(&v21, v16);
      [v6 setTransform:&v21];
      [v6 setFrame:{v9, v11, v13, v15}];
      [v7 bounds];
      MidX = CGRectGetMidX(v22);
      [v7 bounds];
      [v6 setCenter:{MidX, CGRectGetMidY(v23)}];
      v18 = sub_100026680();
      v19 = sub_100026B90();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134218240;
        *(v20 + 4) = a1;
        *(v20 + 12) = 2048;
        *(v20 + 14) = v16;
        _os_log_impl(&_mh_execute_header, v18, v19, "Applied transform for orientation: %ld, angle: %f", v20, 0x16u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100024620()
{
  v0 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v40 - v4;
  v6 = sub_100026680();
  v7 = sub_100026B90();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Configuration changed, updating views", v8, 2u);
  }

  v9 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v9)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  sub_1000260DC();
  swift_beginAccess();
  v11 = v10;
  v12 = sub_100026330();
  swift_endAccess();
  v13._rawValue = v12;
  v14.super.isa = sub_100026BF0(v13).super.isa;
  v15 = *&v11[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor];
  *&v11[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor] = v14;

  v16 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  swift_beginAccess();
  v18 = v17;
  v19 = sub_100026350();
  swift_endAccess();
  v20._rawValue = v19;
  v21.super.isa = sub_100026BF0(v20).super.isa;
  v22 = *&v18[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor];
  *&v18[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor] = v21;

  v23 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (!v23)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v24 = v23;
  swift_beginAccess();
  v25 = v24;
  v26 = sub_100026370();
  v28 = v27;
  swift_endAccess();
  v29 = &v25[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString];
  *v29 = v26;
  v29[1] = v28;

  v30 = *&v25[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_hiddenLabel];

  v31 = sub_1000269F0();

  [v30 setText:v31];

  v32 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v32)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v33 = v32;
  swift_beginAccess();
  v34 = v33;
  sub_100026300();
  swift_endAccess();
  v35 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_customGradientDefinition;
  swift_beginAccess();
  sub_10002167C(v5, v34 + v35);
  swift_endAccess();

  v36 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (v36)
  {
    v37 = v36;
    swift_beginAccess();
    v38 = v37;
    sub_100026300();
    swift_endAccess();
    v39 = sub_100026610();
    LOBYTE(v37) = (*(*(v39 - 8) + 48))(v3, 1, v39) == 1;
    sub_100004FE0(v3);
    v38[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsSilhouette] = v37;

    return;
  }

LABEL_13:
  __break(1u);
}

id sub_100024A8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = sub_1000263C0();
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController] = 0;
  *&v2[OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController] = 0;
  *&v2[OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentOcclusionRects] = 0;
  v8 = &v2[OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentSalientRect];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = &v2[OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentOrientation];
  *v9 = 0;
  v9[8] = 1;
  v10 = OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_isIPad;
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  v3[v10] = v12 == 1;
  sub_100026690();
  type metadata accessor for MonogramPosterColorGenerator();
  sub_10000F330(v7);
  sub_1000262D0();
  v14.receiver = v3;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t type metadata accessor for MonogramPosterRenderer(uint64_t a1)
{
  result = qword_1000422B8;
  if (!qword_1000422B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100024D90(uint64_t a1)
{
  result = sub_1000266A0();
  if (v2 <= 0x3F)
  {
    result = sub_100026390();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_100024E84(uint64_t a1, uint64_t a2)
{
  sub_100026DC0();
  sub_100026A90();
  v4 = sub_100026E10();

  return sub_100025040(a1, a2, v4);
}

unint64_t sub_100024EFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100026C50(*(v2 + 40));

  return sub_1000250F8(a1, v4);
}

unint64_t sub_100024F40(uint64_t a1)
{
  sub_100026A20();
  sub_100026DC0();
  sub_100026A90();
  v2 = sub_100026E10();

  return sub_1000251C0(a1, v2);
}

unint64_t sub_100024FD4(uint64_t a1)
{
  sub_100026DC0();
  sub_100025928(v4, a1);
  v2 = sub_100026E10();

  return sub_1000252C4(a1, v2);
}

unint64_t sub_100025040(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100026D60())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000250F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100026080(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100026C60();
      sub_10002231C(v8);
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

unint64_t sub_1000251C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_100026A20();
      v8 = v7;
      if (v6 == sub_100026A20() && v8 == v9)
      {
        break;
      }

      v11 = sub_100026D60();

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

unint64_t sub_1000252C4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *(*(v2 + 48) + 8 * result);
      if (*(v8 + 16) == v7)
      {
        break;
      }

LABEL_3:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v7 && v8 != a1)
    {
      v9 = (v8 + 32);
      v10 = (a1 + 32);
      v11 = *(a1 + 16);
      while (v11)
      {
        if (*v9 != *v10)
        {
          goto LABEL_3;
        }

        ++v9;
        ++v10;
        if (!--v11)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_100025380(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002544C(v11, 0, 0, 1, a1, a2);
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
    sub_1000223C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000B7E0(v11);
  return v7;
}

unint64_t sub_10002544C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100025558(a5, a6);
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
    result = sub_100026CB0();
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

id *sub_100025558(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000255A4(a1, a2);
  sub_1000256D4(&off_100039680);
  return v3;
}

id *sub_1000255A4(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000257C0(v5, 0);
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

  result = sub_100026CB0();
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
        v10 = sub_100026AC0();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000257C0(v10, 0);
        result = sub_100026C90();
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

uint64_t sub_1000256D4(uint64_t result)
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

  result = sub_100025834(result, v11, 1, v3);
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

id *sub_1000257C0(uint64_t a1, uint64_t a2)
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

  sub_100003598(&qword_1000422C8, &qword_10002A0E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id *sub_100025834(id *result, int64_t a2, char a3, uint64_t a4)
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
    sub_100003598(&qword_1000422C8, &qword_10002A0E0);
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

void sub_100025928(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_100026DD0(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 == 0.0)
      {
        v6 = 0.0;
      }

      sub_100026E00(*&v6);
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_100025990(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  result = *(v2 + *a1);
  if (!result)
  {
    a2();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;

    result = *(v2 + v3);
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1000259EC(void *a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectRetain();
  v6 = sub_100026680();
  v7 = sub_100026B90();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315138;
    v10 = [a2 description];
    v11 = sub_100026A20();
    v13 = v12;

    v14 = sub_100025380(v11, v13, &v39);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Updating renderer with poster environment: %s", v8, 0xCu);
    sub_10000B7E0(v9);
  }

  v15 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v15)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = v15;
  v17 = [a2 isSnapshot];
  v16[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_isSnapshot] = v17;
  v18 = *&v16[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView];
  if (v18)
  {
    v18[OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_isSnapshot] = v17;
    v19 = *&v18[OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_motion];
    if (v19)
    {
      v20 = *(v19 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_isSnapshot);
      *(v19 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_isSnapshot) = v17;
      if (v17 != v20)
      {
        v21 = *(v19 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_motion);
        v22 = v17;
        v23 = v18;

        v24 = &selRef_stopDeviceMotionUpdates;
        if (!v22)
        {
          v24 = &selRef_startDeviceMotionUpdates;
        }

        [v21 *v24];
      }
    }
  }

  v25 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (!v25)
  {
    goto LABEL_20;
  }

  v26 = v25;
  v27 = [a2 isSnapshot];
  v26[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_isSnapshot] = v27;
  sub_1000082D0();

  sub_100023864(a2);
  v28 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v28)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v29 = v28;
  sub_10000402C();

  if (*(v3 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_isIPad) == 1)
  {
    sub_10002427C([a2 deviceOrientation], a1);
    v30 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
    if (v30)
    {
      if (*(v30 + OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientModel))
      {

        v31 = [a2 deviceOrientation];
        swift_getKeyPath();
        swift_getKeyPath();
        v39 = v31;
        sub_100026720();
      }

      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v32 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (v32)
  {
    v33 = v32;
    sub_100009B64([a2 deviceOrientation]);

LABEL_18:
    [a2 salientContentRectangle];
    v34 = v3 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentSalientRect;
    *v34 = v35;
    *(v34 + 8) = v36;
    *(v34 + 16) = v37;
    *(v34 + 24) = v38;
    *(v34 + 32) = 0;
    sub_100022D10();
    return;
  }

LABEL_23:
  __break(1u);
}

void sub_100025E18(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100026680();
  v4 = sub_100026B90();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating renderer", v5, 2u);
  }

  v6 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = [v6 view];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  [v7 removeFromSuperview];

  v9 = *(v2 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController);
  *(v2 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController) = 0;

  v10 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = [v10 view];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 removeFromSuperview];

  v13 = *(v2 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController);
  *(v2 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController) = 0;

  oslog = sub_100026680();
  v14 = sub_100026B90();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v14, "Invalidated renderer", v15, 2u);
  }
}

unint64_t sub_100026028()
{
  result = qword_100042088;
  if (!qword_100042088)
  {
    sub_100026390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042088);
  }

  return result;
}

unint64_t sub_1000260DC()
{
  result = qword_100041F70;
  if (!qword_100041F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100041F70);
  }

  return result;
}

uint64_t sub_100026128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}