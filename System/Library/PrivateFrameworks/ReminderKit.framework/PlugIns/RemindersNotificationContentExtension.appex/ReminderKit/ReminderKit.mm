dispatch_workloop_t rd_dispatch_workloop_create(const char *a1)
{
  v1 = dispatch_workloop_create(a1);

  return v1;
}

uint64_t sub_100001598()
{
  v0 = sub_100004730();
  sub_100001608(v0, qword_10000CAD0);
  sub_10000166C(v0, qword_10000CAD0);
  v1 = [objc_opt_self() ui];
  return sub_100004740();
}

uint64_t *sub_100001608(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000166C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000016A4()
{
  v0 = sub_100004730();
  sub_100001608(v0, qword_10000C880);
  v1 = sub_10000166C(v0, qword_10000C880);
  if (qword_10000C850 != -1)
  {
    swift_once();
  }

  v2 = sub_10000166C(v0, qword_10000CAD0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000018D4()
{
  v1 = v0;
  if (qword_10000C858 != -1)
  {
    swift_once();
  }

  v2 = sub_100004730();
  sub_10000166C(v2, qword_10000C880);
  v3 = sub_100004720();
  v4 = sub_1000047F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ContentExtension viewDidLoad", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for RDNotificationViewController();
  return objc_msgSendSuper2(&v7, "viewDidLoad");
}

void sub_100001A18(__objc2_prot_list *a1)
{
  v2 = v1;
  v172 = sub_100004690();
  v171 = *(v172 - 8);
  __chkstk_darwin(v172);
  v169 = &v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1000046D0();
  v168 = *(v170 - 8);
  __chkstk_darwin(v170);
  v165 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_100004670();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v164 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_1000046F0();
  v174 = *(v186 - 8);
  v7 = __chkstk_darwin(v186);
  v163 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v185 = &v155 - v9;
  v179 = sub_100004700();
  v177 = *(v179 - 8);
  __chkstk_darwin(v179);
  v178 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003604(&qword_10000C950, "B\n");
  __chkstk_darwin(v11 - 8);
  v13 = &v155 - v12;
  v14 = sub_100004710();
  v184 = *(v14 - 1);
  v15 = __chkstk_darwin(v14);
  v180 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v19 = &v155 - v18;
  if (qword_10000C858 != -1)
  {
LABEL_84:
    swift_once();
  }

  v182 = v19;
  v20 = sub_100004730();
  v183 = sub_10000166C(v20, qword_10000C880);
  v21 = sub_100004720();
  v22 = sub_1000047F0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "ContentExtension didReceiveNotification", v23, 2u);
  }

  v24 = [(__objc2_prot_list *)a1 request];
  v25 = [v24 content];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v28 = sub_100004790();
    [v27 setText:v28];
  }

  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    v31 = [v25 title];
    if (!v31)
    {
      sub_1000047A0();
      v31 = sub_100004790();
    }

    [v30 setText:v31];
  }

  v32 = swift_unknownObjectWeakLoadStrong();
  if (v32)
  {
    v33 = v32;
    v34 = sub_100004790();
    [v33 setText:v34];
  }

  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    v37 = [v25 body];
    if (!v37)
    {
      sub_1000047A0();
      v37 = sub_100004790();
    }

    [v36 setText:v37];
  }

  v38 = swift_unknownObjectWeakLoadStrong();
  if (!v38)
  {
    goto LABEL_88;
  }

  v39 = v38;
  a1 = &RDNotificationViewController;
  [v38 setConstant:0.0];

  v40 = swift_unknownObjectWeakLoadStrong();
  if (!v40)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v41 = v40;
  v42 = v2;
  [v40 setConstant:0.0];

  v2 = OBJC_IVAR____TtC37RemindersNotificationContentExtension28RDNotificationViewController_appLinkButton;
  v181 = v42;
  v43 = swift_unknownObjectWeakLoadStrong();
  if (!v43)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v44 = v43;
  [v43 setHidden:1];

  sub_100004860();
  v45 = v184;
  if ((*(v184 + 48))(v13, 1, v14) == 1)
  {
    sub_10000364C(v13);
    v46 = v25;
    v47 = sub_100004720();
    v48 = sub_100004800();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v188 = v50;
      *v49 = 136315138;
      v51 = [v46 categoryIdentifier];
      v52 = sub_1000047A0();
      v54 = v53;

      v55 = sub_1000036B4(v52, v54, &v188);

      *(v49 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v47, v48, "Expect a non-nil notificationIdentifier in notification. {categoryIdentifier: %s}", v49, 0xCu);
      sub_100003C5C(v50);
    }

    else
    {
    }

    return;
  }

  v162 = v25;
  (*(v45 + 32))(v182, v13, v14);
  v161 = [objc_allocWithZone(REMStore) init];
  v160 = sub_100004890();
  v56 = [v160 userActivity];
  if (v56)
  {
    v57 = v181;
    v58 = *&v181[OBJC_IVAR____TtC37RemindersNotificationContentExtension28RDNotificationViewController_notificationUserActivity];
    *&v181[OBJC_IVAR____TtC37RemindersNotificationContentExtension28RDNotificationViewController_notificationUserActivity] = v56;
    v59 = v56;

    v60 = [v57 traitCollection];
    [v60 displayScale];
    v62 = v61;

    v63 = v177;
    v64 = v178;
    v65 = v179;
    (*(v177 + 104))(v178, enum case for REMApplicationIconFormat.notificationLongLook(_:), v179);
    v180 = v59;
    v66 = sub_100004810();
    (*(v63 + 8))(v64, v65);
    if (v66)
    {

      v67 = [objc_allocWithZone(UIImage) initWithCGImage:v66 scale:0 orientation:v62];
      v68 = swift_unknownObjectWeakLoadStrong();
      if (!v68)
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v69 = v68;
      [v68 setImage:v67 forState:0];

      v70 = swift_unknownObjectWeakLoadStrong();
      if (!v70)
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v71 = v70;
      [v70 setConstant:8.0];

      v72 = swift_unknownObjectWeakLoadStrong();
      if (!v72)
      {
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      v73 = v72;
      [v72 setConstant:34.0];

      v74 = swift_unknownObjectWeakLoadStrong();
      if (!v74)
      {
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v75 = v74;
      [v74 setHidden:0];
    }

    else
    {
      v76 = swift_unknownObjectWeakLoadStrong();
      if (!v76)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v77 = v76;
      [v76 setConstant:0.0];

      v78 = swift_unknownObjectWeakLoadStrong();
      if (!v78)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v79 = v78;
      [v78 setConstant:0.0];

      v80 = swift_unknownObjectWeakLoadStrong();
      if (!v80)
      {
LABEL_97:
        __break(1u);
        return;
      }

      v75 = v80;
      [v80 setHidden:1];
    }
  }

  v81 = v181;
  v82 = [v181 extensionContext];
  v180 = v14;
  if (v82)
  {
    v83 = v82;
    v84 = [v82 notificationActions];

    v157 = sub_100003CA8();
    v85 = sub_1000047E0();

    v158 = v85 >> 62;
    v86 = v85 & 0xFFFFFFFFFFFFFF8;
    if (v85 >> 62)
    {
      v19 = sub_100004920();
    }

    else
    {
      v19 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v179 = v85 & 0xC000000000000001;
    v176 = enum case for RDUserNotificationAction.snoozeToNextThirds(_:);
    v175 = (v174 + 104);
    v177 = v174 + 8;

    v178 = -v19;
    v13 = 4;
    v174 = v85 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v178 + v13 == 4)
      {
        swift_bridgeObjectRelease_n();
        v81 = v181;
        goto LABEL_54;
      }

      if (v179)
      {
        v87 = v13 - 4;
        v88 = v85;
        v89 = sub_1000048F0();
      }

      else
      {
        if ((v13 - 4) >= *(v86 + 16))
        {
          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        v87 = v13 - 4;
        v88 = v85;
        v89 = *(v85 + 8 * v13);
      }

      v90 = v89;
      v91 = [v89 identifier];
      v92 = sub_1000047A0();
      a1 = v93;

      v19 = v185;
      v94 = v186;
      v173 = *v175;
      v173(v185, v176, v186);
      v95 = sub_1000046E0();
      v97 = v96;
      v98 = v94;
      v2 = *v177;
      (*v177)(v19, v98);
      if (v92 == v95 && a1 == v97)
      {
        break;
      }

      v100 = sub_100004930();

      if (v100)
      {
        goto LABEL_59;
      }

      ++v13;
      v101 = __OFADD__(v87, 1);
      v14 = v180;
      v85 = v88;
      v86 = v174;
      if (v101)
      {
        goto LABEL_83;
      }
    }

LABEL_59:

    v159 = v88;
    v156 = v87;
    if (v179)
    {
      v111 = sub_1000048F0();
      goto LABEL_63;
    }

    if (v87 >= *(v174 + 16))
    {
      __break(1u);
    }

    else
    {
      v111 = *(v88 + 8 * v13);
LABEL_63:
      v112 = v111;
      v113 = v165;
      sub_1000046B0();
      sub_100003604(&qword_10000C968, &qword_100005040);
      v114 = sub_1000046C0();
      v115 = *(v114 - 8);
      v116 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_100004FD0;
      (*(v115 + 104))(v117 + v116, enum case for Calendar.Component.hour(_:), v114);
      sub_100003D58(v117);
      swift_setDeallocating();
      (*(v115 + 8))(v117 + v116, v114);
      swift_deallocClassInstance();
      v118 = v169;
      sub_100004680();
      v119 = v164;
      sub_1000046A0();

      (*(v171 + 8))(v118, v172);
      (*(v168 + 8))(v113, v170);
      v120 = sub_100004660();
      LOBYTE(v114) = v121;
      (*(v166 + 8))(v119, v167);
      if (v114)
      {
        v120 = 0;
      }

      [objc_opt_self() nextThirdsHourFromHour:v120];
      v122 = sub_100004870();
      v124 = v123;
      v125 = sub_100004880();
      v126 = [v112 title];
      v127 = sub_1000047A0();
      v129 = v128;

      if (v127 == v122 && v129 == v124)
      {

        v130 = v162;
        goto LABEL_69;
      }

      v185 = v125;
      v131 = sub_100004930();

      v130 = v162;
      if (v131)
      {
LABEL_69:
        (*(v184 + 8))(v182, v180);

        v132 = v161;
        goto LABEL_70;
      }

      v183 = v112;
      v137 = v163;
      v138 = v186;
      v173(v163, v176, v186);
      sub_1000046E0();
      (v2)(v137, v138);
      v139 = sub_100004790();

      v140 = [objc_opt_self() iconWithSystemImageName:v139];

      v141 = sub_100004790();

      v142 = sub_100004790();

      v143 = [objc_opt_self() actionWithIdentifier:v141 title:v142 options:0 icon:v140];

      v144 = v143;
      v145 = v159;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v158 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        v148 = sub_100003CF4(v145) & 0xFFFFFFFFFFFFFF8;
        v147 = v181;
      }

      else
      {
        v147 = v181;
        v148 = v174;
      }

      v149 = v180;
      v150 = v182;
      if (v156 < *(v148 + 16))
      {
        v151 = *(v148 + 8 * v13);
        *(v148 + 8 * v13) = v144;

        v152 = [v147 extensionContext];
        if (v152)
        {
          v153 = v152;
          isa = sub_1000047D0().super.isa;
          [v153 setNotificationActions:isa];

          (*(v184 + 8))(v150, v149);
        }

        else
        {
          (*(v184 + 8))(v150, v149);

          v132 = v161;
          v112 = v183;
LABEL_70:
        }

        return;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

LABEL_54:
  v102 = v81;
  v103 = sub_100004720();
  v104 = sub_100004800();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v188 = v106;
    *v105 = 136315138;
    v107 = [v102 extensionContext];
    if (v107)
    {
      v108 = v107;
      v109 = [v107 notificationActions];

      sub_100003CA8();
      v110 = sub_1000047E0();
    }

    else
    {
      v110 = 0;
    }

    v187 = v110;
    sub_100003604(&qword_10000C958, "B\n");
    v133 = sub_1000048A0();
    v135 = v134;

    v136 = sub_1000036B4(v133, v135, &v188);

    *(v105 + 4) = v136;
    _os_log_impl(&_mh_execute_header, v103, v104, "Cannot find notification action(s) to patch {actions: %s}", v105, 0xCu);
    sub_100003C5C(v106);

    (*(v184 + 8))(v182, v180);
  }

  else
  {

    (*(v184 + 8))(v182, v14);
  }
}

void sub_100003140()
{
  v1 = v0;
  if (qword_10000C858 != -1)
  {
    swift_once();
  }

  v2 = sub_100004730();
  sub_10000166C(v2, qword_10000C880);
  v3 = sub_100004720();
  v4 = sub_1000047F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ContentExtension didTapAppLinkButton", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC37RemindersNotificationContentExtension28RDNotificationViewController_notificationUserActivity);
  if (v6)
  {
    v7 = v6;
    sub_100004820();
  }
}

id sub_1000032CC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC37RemindersNotificationContentExtension28RDNotificationViewController_notificationUserActivity] = 0;
  if (a2)
  {
    v6 = sub_100004790();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for RDNotificationViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id sub_100003428(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC37RemindersNotificationContentExtension28RDNotificationViewController_notificationUserActivity] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RDNotificationViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100003520(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RDNotificationViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100003604(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000364C(uint64_t a1)
{
  v2 = sub_100003604(&qword_10000C950, "B\n");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000036B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003780(v11, 0, 0, 1, a1, a2);
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
    sub_100004094(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003C5C(v11);
  return v7;
}

unint64_t sub_100003780(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000388C(a5, a6);
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
    result = sub_100004910();
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

char *sub_10000388C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000038D8(a1, a2);
  sub_100003A08(&off_1000084E0);
  return v3;
}

char *sub_1000038D8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003AF4(v5, 0);
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

  result = sub_100004910();
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
        v10 = sub_1000047C0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003AF4(v10, 0);
        result = sub_1000048E0();
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

uint64_t sub_100003A08(uint64_t result)
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

  result = sub_100003B68(result, v11, 1, v3);
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

void *sub_100003AF4(uint64_t a1, uint64_t a2)
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

  sub_100003604(&qword_10000C988, &unk_100005050);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003B68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003604(&qword_10000C988, &unk_100005050);
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

uint64_t sub_100003C5C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100003CA8()
{
  result = qword_10000C960;
  if (!qword_10000C960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C960);
  }

  return result;
}

uint64_t sub_100003CF4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100004920();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

void *sub_100003D58(uint64_t a1)
{
  v2 = sub_1000046C0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100003604(&qword_10000C970, &qword_100005048);
    v9 = sub_1000048D0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100004050(&qword_10000C978, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_100004770();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100004050(&qword_10000C980, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_100004780();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100004050(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000046C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004094(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_100004170(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

id sub_100004214(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RDDispatchQueue_ObjC();
  return objc_msgSendSuper2(&v4, "dealloc");
}

dispatch_workloop_t sub_10000426C()
{
  result = rd_dispatch_workloop_create("com.apple.remindd.xpc.default");
  qword_10000CAE8 = result;
  return result;
}

uint64_t sub_10000429C()
{
  v0 = sub_100004840();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004830();
  __chkstk_darwin(v4);
  v5 = sub_100004760();
  __chkstk_darwin(v5 - 8);
  sub_1000044E0();
  sub_100004750();
  v8[1] = &_swiftEmptyArrayStorage;
  sub_10000452C();
  sub_100003604(&qword_10000CAC0, "F\n");
  sub_100004584();
  sub_1000048C0();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  if (qword_10000C870 != -1)
  {
    swift_once();
  }

  v6 = qword_10000CAF8;
  result = sub_100004850();
  qword_10000CAF0 = result;
  return result;
}

unint64_t sub_1000044E0()
{
  result = qword_10000CAB0;
  if (!qword_10000CAB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000CAB0);
  }

  return result;
}

unint64_t sub_10000452C()
{
  result = qword_10000CAB8;
  if (!qword_10000CAB8)
  {
    sub_100004830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CAB8);
  }

  return result;
}

unint64_t sub_100004584()
{
  result = qword_10000CAC8;
  if (!qword_10000CAC8)
  {
    sub_1000045E8(&qword_10000CAC0, "F\n");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CAC8);
  }

  return result;
}

uint64_t sub_1000045E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

dispatch_workloop_t sub_100004630()
{
  result = rd_dispatch_workloop_create("com.apple.remindd.discretionary");
  qword_10000CAF8 = result;
  return result;
}