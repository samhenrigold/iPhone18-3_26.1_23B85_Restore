uint64_t sub_1000169B0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100016A1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016A34(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100016A44()
{

  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension26TranscriptBackgroundEffect_logger;
  v2 = sub_10004166C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TranscriptBackgroundEffect(uint64_t a1)
{
  result = qword_10005E3E8;
  if (!qword_10005E3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016B44(uint64_t a1)
{
  result = sub_10004166C();
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

unint64_t sub_100016C30(uint64_t a1, uint64_t a2)
{
  v3 = [v2 rootNode];
  v4 = sub_1000417CC();
  v5 = [v3 childNodeWithName:v4 recursively:1];

  if (!v5 || (v6 = [v5 presentationObject], v5, sub_100041C9C(), swift_unknownObjectRelease(), sub_100016E94(), (swift_dynamicCast() & 1) == 0) || (v7 = objc_msgSend(v14[0], "parameters"), v14[0], !v7))
  {
    v16 = 0u;
    v17 = 0u;
LABEL_7:
    sub_100016E2C(&v16);
    v10 = 0;
    v11 = 1;
    goto LABEL_8;
  }

  v8 = sub_1000417CC();
  v9 = [v7 objectForKeyedSubscript:v8];

  swift_unknownObjectRelease();
  if (v9)
  {
    sub_100041C9C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v14 = 0u;
    v15 = 0u;
  }

  v16 = *v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    goto LABEL_7;
  }

  v13 = swift_dynamicCast();
  v10 = LODWORD(v14[0]);
  v11 = v13 ^ 1;
  if (!v13)
  {
    v10 = 0;
  }

LABEL_8:
  LOBYTE(v16) = v11;
  return v10 | (v11 << 32);
}

uint64_t sub_100016E2C(uint64_t a1)
{
  v2 = sub_1000054B8(&qword_10005E220, &qword_100044770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100016E94()
{
  result = qword_10005E4A8;
  if (!qword_10005E4A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005E4A8);
  }

  return result;
}

uint64_t sub_100016EE0()
{
  v1 = [v0 assetRegistry];
  v2 = [v1 rootNode];

  v3 = sub_1000417CC();
  v4 = [v2 childNodeWithAssetName:v3];

  if (v4)
  {
    v5 = [v4 asset];

    if (v5)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0;
}

void sub_100016FD4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v134 = a4;
  v137 = sub_10004166C();
  v136 = *(v137 - 8);
  v9 = __chkstk_darwin(v137);
  *&v131 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  *&v135 = &v130 - v12;
  v13 = __chkstk_darwin(v11);
  *&v133 = &v130 - v14;
  __chkstk_darwin(v13);
  *&v132 = &v130 - v15;

  v16 = sub_10004164C();
  v17 = sub_100041ACC();

  if (!os_log_type_enabled(v16, v17))
  {
    v20 = a3;

    if (a2)
    {
      goto LABEL_3;
    }

LABEL_10:
    v35 = sub_10004164C();
    v36 = sub_100041ABC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "synthesizeEvent: Unable to find backing view", v37, 2u);
    }

    goto LABEL_19;
  }

  v18 = swift_slowAlloc();
  *&v130 = a1;
  v19 = v18;
  v138[0] = swift_slowAlloc();
  *v19 = 136315394;
  *(v19 + 4) = sub_10000B1E4(0xD00000000000003BLL, 0x80000001000470A0, v138);
  *(v19 + 12) = 2080;
  v20 = a3;
  v21 = sub_10004179C();
  v23 = sub_10000B1E4(v21, v22, v138);

  *(v19 + 14) = v23;
  _os_log_impl(&_mh_execute_header, v16, v17, "%s %s", v19, 0x16u);
  swift_arrayDestroy();

  a1 = v130;

  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_3:
  v142 = 1701869940;
  v143 = 0xE400000000000000;
  v24 = a2;
  sub_100041CFC();
  if (!*(v20 + 16) || (v25 = v20, v26 = sub_10002C594(v138), (v27 & 1) == 0))
  {
    sub_10000BAB0(v138);
LABEL_14:
    v31 = sub_10004164C();
    v32 = sub_100041ABC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "synthesizeEvent: No event type name received";
      goto LABEL_16;
    }

LABEL_17:

LABEL_18:
LABEL_19:
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  sub_10000B78C(*(v20 + 56) + 32 * v26, v141);
  sub_10000BAB0(v138);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v28 = v142;
  v29 = v143;
  v30 = sub_100024270(v142, v143);
  if (v30 == 7)
  {

    v31 = sub_10004164C();
    v32 = sub_100041ABC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "synthesizeEvent: Unable to parse event type";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  LODWORD(v38) = v30;

  v39 = sub_10004164C();
  v40 = sub_100041ACC();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    LODWORD(v130) = v38;
    v38 = a1;
    v42 = v41;
    v138[0] = swift_slowAlloc();
    *v42 = 136315394;
    v43 = sub_10000B1E4(v28, v29, v138);

    *(v42 + 4) = v43;
    *(v42 + 12) = 2080;
    v44 = sub_10004179C();
    v46 = sub_10000B1E4(v44, v45, v138);

    *(v42 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "synthesizeEvent: Event Received: %s, %s", v42, 0x16u);
    swift_arrayDestroy();

    a1 = v38;
    LOBYTE(v38) = v130;
  }

  else
  {
  }

  if (v38 == 1)
  {

    goto LABEL_32;
  }

  v47 = sub_100041EEC();

  if (v47)
  {
LABEL_32:

    v57 = sub_10004164C();
    v58 = sub_100041AAC();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v138[0] = v60;
      *v59 = 136315138;
      v61 = sub_10004179C();
      v63 = sub_10000B1E4(v61, v62, v138);

      *(v59 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v57, v58, "synthesizeEvent: Ignoring event: %s", v59, 0xCu);
      sub_100005500(v60);
    }

    goto LABEL_18;
  }

  if (v38 <= 1u)
  {
    v64 = a1;
    v65 = v25;
    if (!v38)
    {
      (*(v136 + 16))(v132, v64, v137);
      v66 = type metadata accessor for TranscriptBackgroundTapbackEventHandler(0);
      v67 = v24;
      v68 = swift_allocObject();
      *(v68 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_tapbackAdded) = 1;
      v139 = 0x656D617266;
      v140 = 0xE500000000000000;

      v69 = v67;
      sub_100005408(v134, v138);
      sub_100041CFC();
      if (*(v65 + 16) && (v70 = sub_10002C594(v141), (v71 & 1) != 0))
      {
        sub_10000B78C(*(v65 + 56) + 32 * v70, &v142);
        sub_10000BAB0(v141);
        sub_10000BB04(0, &qword_10005D658, NSValue_ptr);
        if (swift_dynamicCast())
        {
          v72 = v138[0];
          [v138[0] CGRectValue];
          v131 = v73;
          v133 = v74;
          v130 = v75;
          v135 = v76;

          *&v79 = v130;
          *&v78 = v131;
          v77 = 0;
          *(&v78 + 1) = v133;
          *(&v79 + 1) = v135;
LABEL_62:
          v108 = v68 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_frame;
          *v108 = v78;
          *(v108 + 16) = v79;
          *(v108 + 32) = v77;
          v142 = 0x6F6C6C6142736168;
          v143 = 0xEF65706168536E6FLL;
          sub_100041CFC();
          if (*(v65 + 16) && (v109 = sub_10002C594(v138), (v110 & 1) != 0))
          {
            sub_10000B78C(*(v65 + 56) + 32 * v109, v141);
            sub_10000BAB0(v138);
            sub_10000BB04(0, &qword_10005E9B8, NSNumber_ptr);
            if (swift_dynamicCast())
            {
              v111 = v142;
              v112 = [v142 BOOLValue];

LABEL_74:
              *(v68 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_hasBalloonShape) = v112;
              v118 = v132;
              *(v68 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_bubblePath) = sub_10001A358(v65);
              v119 = (v68 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration);
              v120 = v134;
              v121 = v134[5];
              v119[4] = v134[4];
              v119[5] = v121;
              v119[6] = v120[6];
              *(v119 + 110) = *(v120 + 110);
              v122 = v120[1];
              *v119 = *v120;
              v119[1] = v122;
              v123 = v120[3];
              v119[2] = v120[2];
              v119[3] = v123;
              (*(v136 + 32))(v68 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v118, v137);
              *(v68 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v65;
              *(v68 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v69;
              *(a5 + 24) = v66;
              *(a5 + 32) = &off_100055F80;

              *a5 = v68;
              return;
            }
          }

          else
          {
            sub_10000BAB0(v138);
          }

          v112 = 2;
          goto LABEL_74;
        }
      }

      else
      {
        sub_10000BAB0(v141);
      }

      v78 = 0uLL;
      v77 = 1;
      v79 = 0uLL;
      goto LABEL_62;
    }

    v48 = a5;
    (*(v136 + 16))(v133, v64, v137);
    v90 = type metadata accessor for TranscriptBackgroundTapbackEventHandler(0);
    v51 = swift_allocObject();
    *(v51 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_tapbackAdded) = 0;
    v139 = 0x656D617266;
    v140 = 0xE500000000000000;

    v52 = v24;
    sub_100005408(v134, v138);
    sub_100041CFC();
    if (*(v65 + 16) && (v91 = sub_10002C594(v141), (v92 & 1) != 0))
    {
      sub_10000B78C(*(v65 + 56) + 32 * v91, &v142);
      sub_10000BAB0(v141);
      sub_10000BB04(0, &qword_10005D658, NSValue_ptr);
      if (swift_dynamicCast())
      {
        v93 = v138[0];
        [v138[0] CGRectValue];
        v131 = v94;
        v132 = v95;
        v130 = v96;
        v135 = v97;

        *&v100 = v130;
        *&v99 = v131;
        v98 = 0;
        *(&v99 + 1) = v132;
        *(&v100 + 1) = v135;
LABEL_68:
        v113 = v51 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_frame;
        *v113 = v99;
        *(v113 + 16) = v100;
        *(v113 + 32) = v98;
        v142 = 0x6F6C6C6142736168;
        v143 = 0xEF65706168536E6FLL;
        sub_100041CFC();
        if (*(v65 + 16) && (v114 = sub_10002C594(v138), (v115 & 1) != 0))
        {
          sub_10000B78C(*(v65 + 56) + 32 * v114, v141);
          sub_10000BAB0(v138);
          sub_10000BB04(0, &qword_10005E9B8, NSNumber_ptr);
          if (swift_dynamicCast())
          {
            v116 = v142;
            v117 = [v142 BOOLValue];

LABEL_77:
            *(v51 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_hasBalloonShape) = v117;
            v124 = v133;
            *(v51 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_bubblePath) = sub_10001A358(v65);
            v125 = (v51 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration);
            v126 = v134;
            v127 = v134[5];
            v125[4] = v134[4];
            v125[5] = v127;
            v125[6] = v126[6];
            *(v125 + 110) = *(v126 + 110);
            v128 = v126[1];
            *v125 = *v126;
            v125[1] = v128;
            v129 = v126[3];
            v125[2] = v126[2];
            v125[3] = v129;
            (*(v136 + 32))(v51 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v124, v137);
            *(v51 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v65;
            *(v51 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v52;
            v48[3] = v90;
            v48[4] = &off_100055F80;
            goto LABEL_78;
          }
        }

        else
        {
          sub_10000BAB0(v138);
        }

        v117 = 2;
        goto LABEL_77;
      }
    }

    else
    {
      sub_10000BAB0(v141);
    }

    v99 = 0uLL;
    v98 = 1;
    v100 = 0uLL;
    goto LABEL_68;
  }

  if (v38 - 2 >= 3)
  {
    if (v38 == 5)
    {
      v142 = 0x657669746361;
      v143 = 0xE600000000000000;
      sub_100041CFC();
      if (*(v25 + 16))
      {
        v80 = sub_10002C594(v138);
        if (v81)
        {
          sub_10000B78C(*(v25 + 56) + 32 * v80, v141);
          sub_10000BAB0(v138);
          if (swift_dynamicCast())
          {
            v82 = v142;
            v83 = v136;
            v84 = v131;
            v85 = a1;
            v86 = v137;
            (*(v136 + 16))(v131, v85, v137);
            updated = type metadata accessor for TranscriptBackgroundUpdateActiveStateEventHandler(0);
            v88 = swift_allocObject();
            *(v88 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension49TranscriptBackgroundUpdateActiveStateEventHandler_active) = v82;
            (*(v83 + 32))(v88 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v84, v86);
            *(v88 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v25;
            *(v88 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v24;
            v89 = &off_100055F60;
LABEL_56:
            *(a5 + 24) = updated;
            *(a5 + 32) = v89;
            *a5 = v88;

            return;
          }

          goto LABEL_58;
        }
      }
    }

    else
    {
      v142 = 0x6C6C6F7263537369;
      v143 = 0xEB00000000676E69;
      sub_100041CFC();
      if (*(v25 + 16))
      {
        v101 = sub_10002C594(v138);
        if (v102)
        {
          sub_10000B78C(*(v25 + 56) + 32 * v101, v141);
          sub_10000BAB0(v138);
          if (swift_dynamicCast())
          {
            v103 = v142;
            v104 = v136;
            v105 = v131;
            v106 = a1;
            v107 = v137;
            (*(v136 + 16))(v131, v106, v137);
            updated = type metadata accessor for TranscriptBackgroundIsScrollingEventHandler(0);
            v88 = swift_allocObject();
            *(v88 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension43TranscriptBackgroundIsScrollingEventHandler_isScrolling) = v103;
            (*(v104 + 32))(v88 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v105, v107);
            *(v88 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v25;
            *(v88 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v24;
            v89 = &off_100055F50;
            goto LABEL_56;
          }

LABEL_58:
          v31 = sub_10004164C();
          v32 = sub_100041ABC();
          if (!os_log_type_enabled(v31, v32))
          {
            goto LABEL_17;
          }

          v33 = swift_slowAlloc();
          *v33 = 0;
          v34 = "Expected active state";
          goto LABEL_16;
        }
      }
    }

    sub_10000BAB0(v138);
    goto LABEL_58;
  }

  v48 = a5;
  (*(v136 + 16))(v135, a1, v137);
  v49 = v24;
  v50 = type metadata accessor for TranscriptBackgroundKeyboardEventHandler(0);
  v51 = swift_allocObject();
  *(v51 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType) = v38;
  v142 = 0xD000000000000012;
  v143 = 0x8000000100046FB0;
  v52 = v49;
  sub_100041CFC();
  if (!*(v25 + 16) || (v53 = sub_10002C594(v138), (v54 & 1) == 0))
  {
    sub_10000BAB0(v138);
    goto LABEL_36;
  }

  sub_10000B78C(*(v25 + 56) + 32 * v53, v141);
  sub_10000BAB0(v138);
  sub_10000BB04(0, &qword_10005E9B8, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v56 = 0;
    goto LABEL_37;
  }

  v55 = v142;
  v56 = [v142 BOOLValue];

LABEL_37:
  *(v51 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_fromTapbackContext) = v56;
  (*(v136 + 32))(v51 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v135, v137);
  *(v51 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v25;
  *(v51 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v52;
  v48[3] = v50;
  v48[4] = &off_100055F70;

LABEL_78:

  *v48 = v51;
}

uint64_t sub_10001835C(uint64_t a1)
{
  result = sub_10004166C();
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

void sub_10001842C(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_frame);
  if (*(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_frame + 32))
  {
    oslog = sub_10004164C();
    v3 = sub_100041ABC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Unable to determine frame of message bubble";
LABEL_7:
      _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v6 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_hasBalloonShape);
  if (v6 == 2)
  {
    oslog = sub_10004164C();
    v3 = sub_100041ABC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Unable to determine look of message";
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  v7 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_tapbackAdded);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v10 = *v2;
  *(v9 + 40) = v2[1];
  *(v9 + 24) = v10;
  *(v9 + 56) = v6 & 1;
  *(v9 + 64) = a1;

  if (v7)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  sub_10000A758(v11, sub_10001A9C8);
}

void sub_10001862C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  sub_1000188EC(a2, *(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_bubblePath), a4, a5, a6, a7);
  v13 = *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v13);
  v14 = *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
  sub_1000186E8(v14, a1, a4, a5, a6, a7);

  os_unfair_lock_unlock(v13);
}

void sub_1000186E8(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6 = [a1 rootNode];
  v7 = sub_1000417CC();
  v14 = [v6 childNodeWithName:v7 recursively:1];

  if (v14)
  {
    v8 = [v14 parameters];
    if (v8)
    {
      v9 = v8;
      isa = sub_100041C2C().super.isa;
      v11 = sub_1000417CC();

      [v9 setObject:isa forKeyedSubscript:v11];
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v14 = sub_10004164C();
    v12 = sub_100041ABC();
    if (os_log_type_enabled(v14, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v14, v12, "Unable to find parameter node", v13, 2u);
    }
  }
}

void sub_1000188EC(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v8 = *(v6 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
  v9 = *&v8[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager];
  if (v9)
  {
    v11 = a1;

    v16 = sub_10004164C();
    v17 = sub_100041AAC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10000B1E4(*(v7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 32), *(v7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 40), &v32);
      _os_log_impl(&_mh_execute_header, v16, v17, "#%s provideMaskIfNeeded", v18, 0xCu);
      sub_100005500(v19);
    }

    [v8 bounds];
    v21 = v20;
    v23 = v22;
    sub_100010CE0();
    v24 = *(v9 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_asset);
    if (v11)
    {
      v25 = swift_allocObject();
      *(v25 + 16) = v21;
      *(v25 + 24) = v23;
      *(v25 + 32) = a3;
      *(v25 + 40) = a4;
      *(v25 + 48) = a5;
      *(v25 + 56) = a6;
      *(v25 + 64) = a2;
      v26 = a2;
    }

    else
    {
      v30 = swift_allocObject();
      *(v30 + 16) = v21;
      *(v30 + 24) = v23;
      *(v30 + 32) = a3;
      *(v30 + 40) = a4;
      *(v30 + 48) = a5;
      *(v30 + 56) = a6;
      *(v30 + 64) = 1;
    }

    v27 = sub_100010130(sub_10001A9F8, v21, v23);

    [v24 setTexture:v27];
    swift_unknownObjectRelease();
    sub_1000105CC(0.2, v21, v23);
  }

  else
  {
    oslog = sub_10004164C();
    v28 = sub_100041ABC();
    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v28, "Unable to find mask manager", v29, 2u);
    }
  }
}

uint64_t sub_100018C58()
{
  v1 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 80);
  v5[4] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 64);
  v5[5] = v1;
  v6[0] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 96);
  *(v6 + 14) = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 110);
  v2 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 16);
  v5[0] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration);
  v5[1] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 48);
  v5[2] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 32);
  v5[3] = v3;
  return sub_100005464(v5);
}

uint64_t sub_100018CC0()
{
  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger;
  v2 = sub_10004166C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_bubblePath);

  v4 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 80);
  v8[4] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 64);
  v8[5] = v4;
  v9[0] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 96);
  *(v9 + 14) = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 110);
  v5 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration);
  v8[1] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 48);
  v8[2] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 32);
  v8[3] = v6;
  sub_100005464(v8);

  return swift_deallocClassInstance();
}

void sub_100018E8C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType);
  switch(v5)
  {
    case 4:
      v12 = "keyboardWillShow";
      break;
    case 3:
      v12 = "keyboardFrameDidChange";
      break;
    case 2:
      type metadata accessor for KeyboardFrameDidChangeDataUpdate();
      swift_allocObject();

      v7 = sub_100009BF0(v6);
      if (v7)
      {
        v8 = v7;
        v9 = swift_allocObject();
        v9[2] = v1;
        v9[3] = v8;
        v9[4] = a1;
        v9[5] = v4;

        v10 = sub_10001A87C;
        v11 = 3;
LABEL_29:
        sub_10000A758(v11, v10);

        return;
      }

      goto LABEL_33;
    default:
      return;
  }

  v13 = 0x8000000100045FD0;
  if ((v12 | 0x8000000000000000) == 0x8000000100045FD0)
  {
  }

  else
  {
    v14 = sub_100041EEC();

    if ((v14 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  *(*(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp) = 1;
LABEL_12:
  if (v5 == 4)
  {
    v13 = 0x8000000100045FF0;
  }

  if (0x8000000100045FF0 == v13)
  {
  }

  else
  {
    v15 = sub_100041EEC();

    if ((v15 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  *(*(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp) = 0;
LABEL_18:

  v16 = sub_10004164C();
  v17 = sub_100041ACC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_fromTapbackContext);

    _os_log_impl(&_mh_execute_header, v16, v17, "from tapback? %{BOOL}d", v18, 8u);
  }

  else
  {
  }

  if (*(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_fromTapbackContext) != 1)
  {
    type metadata accessor for KeyboardVisibilityDataUpdate();
    swift_allocObject();

    v23 = sub_100009D80(v22);
    if (v23)
    {
      v24 = v23;
      v25 = swift_allocObject();
      v25[2] = v2;
      v25[3] = a1;
      v25[4] = v24;
      v25[5] = v4;

      if (v5 == 4)
      {
        v11 = 5;
      }

      else
      {
        v11 = 4;
      }

      v10 = sub_10001A828;
      goto LABEL_29;
    }

LABEL_33:
    oslog = sub_10004164C();
    v19 = sub_100041ABC();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Missing data for keyboard update";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  oslog = sub_10004164C();
  v19 = sub_100041ACC();
  if (os_log_type_enabled(oslog, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Ignoring keyboard will show since it was from a tapback context menu";
LABEL_35:
    _os_log_impl(&_mh_execute_header, oslog, v19, v21, v20, 2u);
  }

LABEL_36:
}

void sub_100019358(uint64_t a1, double *a2, uint64_t a3)
{
  sub_100019EF8(a1, a2[4], a2[5], a2[6], a2[7]);
  v4 = *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v4);
  v5 = *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
  v6 = [v5 rootNode];
  v7 = sub_1000417CC();
  v8 = [v6 childNodeWithName:v7 recursively:1];

  if (v8)
  {
    sub_1000099FC(v8);
    v9 = [v8 parameters];
    if (v9)
    {
      v10 = v9;
      isa = sub_100041C2C().super.isa;
      v12 = sub_1000417CC();
      [v10 setObject:isa forKeyedSubscript:v12];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = v5;
  }

  os_unfair_lock_unlock(v4);
}

void sub_100019504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v7 = sub_10004168C();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1000416DC();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004167C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000416FC();
  v15 = __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - v19;
  v21 = *(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType);
  v56 = v18;
  v49 = v22;
  if (v21 <= 2 || v21 > 4)
  {
    goto LABEL_7;
  }

  v23 = "keyboardFrameDidChange";
  if (v21 != 3)
  {
    v23 = "keyboardWillShow";
  }

  if (0x8000000100045FD0 == (v23 | 0x8000000000000000))
  {
  }

  else
  {
LABEL_7:
    v24 = sub_100041EEC();

    if ((v24 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  type metadata accessor for KeyboardVisibilityDataUpdate();
  swift_allocObject();

  v26 = sub_100009D80(v25);
  if (v26)
  {
    v27 = v26;
    if (*(v26 + 104))
    {

      goto LABEL_15;
    }

    v28 = *(v26 + 20) * 1000.0;
    if (COERCE_INT(fabs(v28)) > 2139095039)
    {
      __break(1u);
    }

    else if (v28 > -9.2234e18)
    {
      v47 = a3;
      if (v28 < 9.2234e18)
      {
        v29 = *(v26 + 72);
        v44 = *(v26 + 88);
        v45 = v29;
        v30 = v28;
        sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
        v46 = sub_100041B0C();
        sub_1000416EC();
        *v13 = v30;
        (*(v11 + 104))(v13, enum case for DispatchTimeInterval.milliseconds(_:), v10);
        sub_10004170C();
        (*(v11 + 8))(v13, v10);
        v49 = *(v49 + 8);
        (v49)(v17, v56);
        v31 = swift_allocObject();
        swift_weakInit();
        v32 = swift_allocObject();
        *(v32 + 16) = v31;
        v33 = v45;
        *(v32 + 40) = v44;
        *(v32 + 24) = v33;
        *(v32 + 56) = v27;
        *(v32 + 64) = a2;
        *(v32 + 72) = v48;
        aBlock[4] = sub_10001A8C4;
        aBlock[5] = v32;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100028728;
        aBlock[3] = &unk_100056058;
        v34 = _Block_copy(aBlock);

        v35 = v50;
        sub_1000416AC();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_10000B884();
        sub_1000054B8(&unk_10005D640, "B|");
        sub_10000B8DC();
        v36 = v52;
        v37 = v55;
        sub_100041CAC();
        v38 = v46;
        sub_100041AEC();
        _Block_release(v34);

        (*(v54 + 8))(v36, v37);
        (*(v51 + 8))(v35, v53);
        (v49)(v20, v56);
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  v39 = *(a2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v39);
  v40 = *(a2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
  v41 = [v40 rootNode];
  v42 = sub_1000417CC();
  v43 = [v41 childNodeWithName:v42 recursively:1];

  if (v43)
  {
    sub_100009FA8(v43);
  }

  os_unfair_lock_unlock(v39);
}

uint64_t sub_100019C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);

    v17 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a5;
    *(v18 + 32) = a6;
    *(v18 + 40) = a7;
    *(v18 + 48) = a8;
    *(v18 + 56) = a2;
    *(v18 + 64) = a3;
    *(v18 + 72) = a4;

    sub_10000A758(3, sub_10001A93C);
  }

  return result;
}

void sub_100019DAC(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_100019EF8(Strong, a2, a3, a4, a5);
  }

  v13 = *(a7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v13);
  v14 = *(a7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
  v15 = [v14 rootNode];
  v16 = sub_1000417CC();
  v17 = [v15 childNodeWithName:v16 recursively:1];

  if (v17)
  {
    sub_100009FA8(v17);
  }

  os_unfair_lock_unlock(v13);
}

void sub_100019EF8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
  v7 = *&v6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager];
  if (v7)
  {

    [v6 frame];
    v13 = v12;
    v15 = v14;
    sub_100010CE0();
    v16 = *(v7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_asset);
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    *(v17 + 24) = v15;
    *(v17 + 32) = a2;
    *(v17 + 40) = a3;
    *(v17 + 48) = a4;
    *(v17 + 56) = a5;
    *(v17 + 64) = 2;
    v18 = sub_100010130(sub_10001A820, v13, v15);

    [v16 setTexture:v18];
    swift_unknownObjectRelease();
    sub_1000105CC(0.2, v13, v15);
  }

  else
  {
    oslog = sub_10004164C();
    v19 = sub_100041ABC();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v19, "Unable to retrieve mask manager", v20, 2u);
    }
  }
}

uint64_t sub_10001A1E0()
{
  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger;
  v2 = sub_10004166C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_10001A358(uint64_t a1)
{
  sub_100041CFC();
  if (!*(a1 + 16) || (v2 = sub_10002C594(v17), (v3 & 1) == 0))
  {
    sub_10000BAB0(v17);
LABEL_6:
    v4 = sub_10004164C();
    v9 = sub_100041ABC();
    if (os_log_type_enabled(v4, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v9, "Unable to find bubble path from metadata, returning default path", v10, 2u);
    }

    goto LABEL_8;
  }

  sub_10000B78C(*(a1 + 56) + 32 * v2, v18);
  sub_10000BAB0(v17);
  sub_10000BB04(0, &qword_10005E9C0, NSData_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = 0x6150656C62627562;
  sub_10000BB04(0, &qword_10005E9C8, NSKeyedUnarchiver_ptr);
  sub_10000BB04(0, &qword_10005E9D0, UIBezierPath_ptr);
  v5 = sub_1000414DC();
  v7 = v6;
  v8 = sub_100041ADC();
  sub_100014E84(v5, v7);
  v12 = sub_10004164C();
  v13 = sub_100041ACC();
  if (os_log_type_enabled(v12, v13))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Found bubble path, returning corresponding cgPath", v15, 2u);
  }

  if (v8)
  {
    v16 = [v8 CGPath];

    return v16;
  }

LABEL_8:

  return 0;
}

void sub_10001A6BC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension49TranscriptBackgroundUpdateActiveStateEventHandler_active);
    *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_hostAllowsRunning) = v2;
    if (v2)
    {
      v3 = 0x657669746361;
    }

    else
    {
      v3 = 0x6576697463616E69;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }

    v5._countAndFlagsBits = v3;
    v5._object = v4;
    sub_1000418CC(v5);

    sub_100027780(0x2074736F48, 0xE500000000000000);
  }

  if (*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension49TranscriptBackgroundUpdateActiveStateEventHandler_active) == 1)
  {
    sub_10000A758(0, 0);
  }
}

uint64_t sub_10001A7DC()
{
  v1 = *(v0 + 64);
  if ((v1 - 1) >= 2)
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001A834()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001A888()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A8DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001A8F4()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001A988()
{

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10001A9FC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  if (v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = *(v1 + 112);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(v1 + 112) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 < 9.22337204e18)
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v7 = *(v1 + 100);
    v8 = v3;
    v9 = v4;
    v10 = *(v1 + 120);

    *a1 = sub_100021E98(v5, v6);
    *(a1 + 8) = v11;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    *(a1 + 60) = 0;
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_10001AB00()
{
  sub_1000418CC(*v0);
  v2._countAndFlagsBits = 45;
  v2._object = 0xE100000000000000;
  sub_1000418CC(v2);
  v3._countAndFlagsBits = sub_100041EDC();
  sub_1000418CC(v3);

  v4._countAndFlagsBits = 45;
  v4._object = 0xE100000000000000;
  sub_1000418CC(v4);
  v5._countAndFlagsBits = sub_100041EDC();
  sub_1000418CC(v5);

  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  sub_1000418CC(v6);
  sub_100041A3C();
  v7._countAndFlagsBits = 45;
  v7._object = 0xE100000000000000;
  sub_1000418CC(v7);
  sub_100041A3C();
  return 0;
}

uint64_t sub_10001AC30()
{
  if (v0[3])
  {
    v1 = v0[2];
    v2 = v0[3];
  }

  else
  {
    v1 = *v0;
    v2 = v0[1];
  }

  v4._countAndFlagsBits = v1;
  v4._object = v2;
  sub_1000418CC(v4);

  v5._countAndFlagsBits = 45;
  v5._object = 0xE100000000000000;
  sub_1000418CC(v5);
  v6._countAndFlagsBits = sub_100041EDC();
  sub_1000418CC(v6);

  v7._countAndFlagsBits = 45;
  v7._object = 0xE100000000000000;
  sub_1000418CC(v7);
  v8._countAndFlagsBits = sub_100041EDC();
  sub_1000418CC(v8);

  v9._countAndFlagsBits = 45;
  v9._object = 0xE100000000000000;
  sub_1000418CC(v9);
  sub_100041A3C();
  v10._countAndFlagsBits = 45;
  v10._object = 0xE100000000000000;
  sub_1000418CC(v10);
  sub_100041A3C();
  return 0;
}

uint64_t sub_10001AD94()
{
  v1 = *v0;
  if (*(v0 + 60))
  {
    sub_1000418CC(v1);
    v3._countAndFlagsBits = 45;
    v3._object = 0xE100000000000000;
    sub_1000418CC(v3);
    v4._countAndFlagsBits = sub_100041EDC();
    sub_1000418CC(v4);

    v5._countAndFlagsBits = 45;
    v5._object = 0xE100000000000000;
    sub_1000418CC(v5);
    v6._countAndFlagsBits = sub_100041EDC();
    sub_1000418CC(v6);
  }

  else
  {
    sub_1000418CC(v1);
    v8._countAndFlagsBits = 45;
    v8._object = 0xE100000000000000;
    sub_1000418CC(v8);
    v9._countAndFlagsBits = sub_100041EDC();
    sub_1000418CC(v9);

    v10._countAndFlagsBits = 45;
    v10._object = 0xE100000000000000;
    sub_1000418CC(v10);
    v11._countAndFlagsBits = sub_100041EDC();
    sub_1000418CC(v11);

    v12._countAndFlagsBits = 45;
    v12._object = 0xE100000000000000;
    sub_1000418CC(v12);
    sub_100041A3C();
  }

  v7._countAndFlagsBits = 45;
  v7._object = 0xE100000000000000;
  sub_1000418CC(v7);
  sub_100041A3C();
  return 0;
}

Swift::Int sub_10001AF94()
{
  sub_100041F1C();
  sub_10001AB00();
  sub_1000418BC();

  return sub_100041F3C();
}

uint64_t sub_10001AFF0(uint64_t a1)
{
  sub_10001AB00();
  sub_1000418BC();
}

Swift::Int sub_10001B040()
{
  sub_100041F1C();
  sub_10001AB00();
  sub_1000418BC();

  return sub_100041F3C();
}

uint64_t sub_10001B098(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 13) = *(a1 + 45);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 13) = *(a2 + 45);
  return sub_100020E18(v5, v7) & 1;
}

uint64_t sub_10001B0F4()
{
  sub_1000097B0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10001B12C()
{
  type metadata accessor for SnapshotManager(0);
  v0 = swift_allocObject();
  result = sub_10001B3F8();
  qword_100061130 = v0;
  return result;
}

uint64_t sub_10001B16C()
{
  v0 = sub_1000414BC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020EF4(v2, qword_100061138);
  sub_100007D34(v0, qword_100061138);
  v5 = NSTemporaryDirectory();
  sub_1000417FC();

  sub_10004142C();

  sub_10004146C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10001B2AC()
{
  v0 = sub_1000414BC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020EF4(v2, qword_100061150);
  sub_100007D34(v0, qword_100061150);
  if (qword_10005CD40 != -1)
  {
    swift_once();
  }

  v5 = sub_100007D34(v0, qword_100061138);
  (*(v1 + 16))(v4, v5, v0);
  sub_10004146C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10001B3F8()
{
  v1 = v0;
  v2 = sub_10004166C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 24) = &_swiftEmptyDictionarySingleton;
  *(v1 + 32) = swift_slowAlloc();
  sub_10004165C();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension15SnapshotManager_logger, v5, v2);
  sub_10001B71C();
  v6 = sub_10004164C();
  v7 = sub_100041AAC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    if (qword_10005CD40 != -1)
    {
      swift_once();
    }

    v10 = sub_1000414BC();
    sub_100007D34(v10, qword_100061138);
    sub_100021A04(&qword_10005DAE0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v11 = sub_100041EDC();
    v13 = sub_10000B1E4(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "SnapshotManager initialized. folderURL: %s.", v8, 0xCu);
    sub_100005500(v9);
  }

  **(v1 + 32) = 0;
  return v1;
}

void *sub_10001B698(void *a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_10000BB04(0, &qword_10005EBF0, NSObject_ptr);
    v4 = v3;
    v5 = sub_100041C3C();

    return (v5 & 1);
  }

  return result;
}

void sub_10001B71C()
{
  v1 = v0;
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  if ([qword_1000611A0 deleteSnaphotsAtLaunch])
  {
    v2 = objc_opt_self();
    v3 = [v2 defaultManager];
    if (qword_10005CD40 != -1)
    {
      swift_once();
    }

    v4 = sub_1000414BC();
    sub_100007D34(v4, qword_100061138);
    sub_10004140C();
    v5 = sub_1000417CC();

    v6 = [v3 fileExistsAtPath:v5];

    if (v6)
    {
      v7 = [v2 defaultManager];
      sub_10004144C(v8);
      v10 = v9;
      v35 = 0;
      v11 = [v7 removeItemAtURL:v9 error:&v35];

      if (v11)
      {
        v12 = v35;
      }

      else
      {
        v13 = v35;
        sub_1000413EC();

        swift_willThrow();
        v14 = sub_10004164C();
        v15 = sub_100041ABC();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "SnapshotManager: Could not remove snapshot folder", v16, 2u);
        }
      }
    }
  }

  v17 = objc_opt_self();
  v18 = [v17 defaultManager];
  if (qword_10005CD48 != -1)
  {
    swift_once();
  }

  v19 = sub_1000414BC();
  sub_100007D34(v19, qword_100061150);
  sub_10004140C();
  v20 = sub_1000417CC();

  v21 = [v18 fileExistsAtPath:v20];

  if (v21)
  {
    *(v1 + 16) = 1;
  }

  else
  {
    v22 = [v17 defaultManager];
    sub_10004144C(v23);
    v25 = v24;
    v35 = 0;
    v26 = [v22 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&v35];

    v27 = v35;
    if (v26)
    {
      *(v1 + 16) = 1;
      v28 = v27;
      v29 = sub_10004164C();
      v30 = sub_100041A9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "SnapshotManager: Did create snapshot folder", v31, 2u);
      }
    }

    else
    {
      v32 = v35;
      sub_1000413EC();

      swift_willThrow();
      v29 = sub_10004164C();
      v33 = sub_100041ABC();
      if (os_log_type_enabled(v29, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v29, v33, "SnapshotManager: Could not create snapshot folder", v34, 2u);
      }
    }
  }
}

char *sub_10001BBA4(uint64_t a1)
{
  v2 = sub_1000414BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  if (qword_10005CD40 != -1)
  {
    swift_once();
  }

  sub_100007D34(v2, qword_100061138);
  sub_10004144C(v7);
  v9 = v8;
  v39 = 0;
  v10 = [v6 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:0 error:&v39];

  v11 = v39;
  if (!v10)
  {
    v28 = v39;
    sub_1000413EC();

    swift_willThrow();
    swift_errorRetain();
    v29 = sub_10004164C();
    v30 = sub_100041ABC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "SnapshotManager: Could not obtain contents of snapshots folder: %@.", v31, 0xCu);
      sub_100015014(v32, &qword_10005E240, &qword_100043C90);
    }

    else
    {
    }

    return &_swiftEmptyArrayStorage;
  }

  v12 = sub_10004198C();
  v13 = v11;

  v14 = v12;
  v15 = *(v12 + 16);
  if (!v15)
  {

    return &_swiftEmptyArrayStorage;
  }

  v16 = v3 + 16;
  v37 = *(v3 + 16);
  v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v35[1] = v14;
  v18 = v14 + v17;
  v19 = *(v3 + 72);
  v20 = &_swiftEmptyArrayStorage;
  v35[2] = v16;
  v36 = v2;
  v37(v5, v14 + v17, v2);
  while (1)
  {
    sub_100021600(v5, &v39);
    v21 = v40;
    if (v40)
    {
      v22 = v39;
      v23 = v42;
      v44 = v41;
      v38[0] = *v43;
      *(v38 + 9) = *&v43[9];
      if (v39 == *a1 && v40 == *(a1 + 8) || (sub_100041EEC()) && v23 == *(a1 + 32))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100038F24(0, *(v20 + 2) + 1, 1, v20);
        }

        v25 = *(v20 + 2);
        v24 = *(v20 + 3);
        if (v25 >= v24 >> 1)
        {
          v20 = sub_100038F24((v24 > 1), v25 + 1, 1, v20);
        }

        *(v20 + 2) = v25 + 1;
        v26 = &v20[64 * v25];
        *(v26 + 4) = v22;
        *(v26 + 5) = v21;
        *(v26 + 3) = v44;
        *(v26 + 16) = v23;
        v27 = v38[0];
        *(v26 + 77) = *(v38 + 9);
        *(v26 + 68) = v27;
        v2 = v36;
      }

      else
      {
        sub_100015014(&v39, &qword_10005D280, &unk_100044DB0);
      }
    }

    v18 += v19;
    if (!--v15)
    {
      break;
    }

    v37(v5, v18, v2);
  }

  return v20;
}

char *sub_10001C01C(id *a1)
{
  v38 = a1;
  v1 = sub_1000414BC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultManager];
  if (qword_10005CD40 != -1)
  {
    swift_once();
  }

  sub_100007D34(v1, qword_100061138);
  sub_10004144C(v6);
  v8 = v7;
  v39 = 0;
  v9 = [v5 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:0 options:0 error:&v39];

  v10 = v39;
  if (!v9)
  {
    v29 = v39;
    sub_1000413EC();

    swift_willThrow();
    swift_errorRetain();
    v30 = sub_10004164C();
    v31 = sub_100041ABC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "SnapshotManager: Could not obtain contents of snapshots folder: %@.", v32, 0xCu);
      sub_100015014(v33, &qword_10005E240, &qword_100043C90);
    }

    else
    {
    }

    return &_swiftEmptyArrayStorage;
  }

  v11 = sub_10004198C();
  v12 = v10;

  v13 = v11;
  v14 = *(v11 + 16);
  if (!v14)
  {

    return &_swiftEmptyArrayStorage;
  }

  v15 = v2 + 16;
  v16 = *(v2 + 16);
  v17 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v36[1] = v13;
  v18 = v13 + v17;
  v19 = *(v2 + 72);
  v20 = &_swiftEmptyArrayStorage;
  v36[2] = v15;
  v37 = v1;
  v16(v4, v13 + v17, v1);
  while (1)
  {
    sub_100021600(v4, &v39);
    v21 = v40;
    if (v40)
    {
      v22 = v39;
      v43 = v41;
      v44[0] = v42[0];
      *(v44 + 13) = *(v42 + 13);
      v23 = v39 == *v38 && v40 == v38[1];
      if (v23 || (sub_100041EEC() & 1) != 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100038F24(0, *(v20 + 2) + 1, 1, v20);
        }

        v25 = *(v20 + 2);
        v24 = *(v20 + 3);
        if (v25 >= v24 >> 1)
        {
          v20 = sub_100038F24((v24 > 1), v25 + 1, 1, v20);
        }

        *(v20 + 2) = v25 + 1;
        v26 = &v20[64 * v25];
        *(v26 + 4) = v22;
        *(v26 + 5) = v21;
        v27 = v43;
        v28 = v44[0];
        *(v26 + 77) = *(v44 + 13);
        *(v26 + 3) = v27;
        *(v26 + 4) = v28;
        v1 = v37;
      }

      else
      {
        sub_100015014(&v39, &qword_10005D280, &unk_100044DB0);
      }
    }

    v18 += v19;
    if (!--v14)
    {
      break;
    }

    v16(v4, v18, v1);
  }

  return v20;
}

void sub_10001C458(uint64_t a1, void *a2)
{
  v55 = a2;
  v3 = sub_1000414BC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v53 - v8;
  __chkstk_darwin(v7);
  v11 = &v53 - v10;
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  sub_10004148C(1);
  v14 = sub_1000417CC();

  v15 = [v13 fileExistsAtPath:v14];

  if (v15)
  {
    v16 = v3;
    v17 = [v12 defaultManager];
    sub_10004144C(v18);
    v20 = v19;
    v56 = 0;
    v21 = [v17 removeItemAtURL:v19 error:&v56];

    v22 = v56;
    if (v21)
    {
      (*(v4 + 16))(v11, a1, v3);
      v23 = v22;
      v24 = sub_10004164C();
      v25 = sub_100041A9C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v56 = v27;
        *v26 = 136315138;
        sub_100021A04(&qword_10005DAE0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v28 = sub_100041EDC();
        v30 = v29;
        (*(v4 + 8))(v11, v16);
        v31 = sub_10000B1E4(v28, v30, &v56);

        *(v26 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v24, v25, "Removed snapshot at URL: %s", v26, 0xCu);
        sub_100005500(v27);
      }

      else
      {

        (*(v4 + 8))(v11, v16);
      }
    }

    else
    {
      v41 = v56;
      sub_1000413EC();

      swift_willThrow();
      v42 = v54;
      (*(v4 + 16))(v54, a1, v3);
      swift_errorRetain();
      v43 = sub_10004164C();
      v44 = sub_100041ABC();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56 = v55;
        *v45 = 136315394;
        sub_100021A04(&qword_10005DAE0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v47 = sub_100041EDC();
        v48 = v42;
        v50 = v49;
        (*(v4 + 8))(v48, v3);
        v51 = sub_10000B1E4(v47, v50, &v56);

        *(v45 + 4) = v51;
        *(v45 + 12) = 2112;
        swift_errorRetain();
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 14) = v52;
        *v46 = v52;
        _os_log_impl(&_mh_execute_header, v43, v44, "Could not remove snapshot at URL: %s. Error: %@.", v45, 0x16u);
        sub_100015014(v46, &qword_10005E240, &qword_100043C90);

        sub_100005500(v55);
      }

      else
      {

        (*(v4 + 8))(v42, v3);
      }
    }
  }

  else
  {
    (*(v4 + 16))(v9, a1, v3);
    v32 = sub_10004164C();
    v33 = sub_100041ABC();
    v34 = v3;
    if (os_log_type_enabled(v32, v33))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v56 = v36;
      *v35 = 136315138;
      sub_100021A04(&qword_10005DAE0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v37 = sub_100041EDC();
      v39 = v38;
      (*(v4 + 8))(v9, v34);
      v40 = sub_10000B1E4(v37, v39, &v56);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "File doesn't exist. %s", v35, 0xCu);
      sub_100005500(v36);
    }

    else
    {

      (*(v4 + 8))(v9, v3);
    }
  }
}

uint64_t sub_10001CB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[46] = a5;
  v6[47] = a6;
  v6[45] = a4;
  v7 = sub_1000414BC();
  v6[48] = v7;
  v6[49] = *(v7 - 8);
  v6[50] = swift_task_alloc();

  return _swift_task_switch(sub_10001CC20, 0, 0);
}

uint64_t sub_10001CC20()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v27 = sub_10001C01C(*(v0 + 368));
    v1 = *(v27 + 2);
    if (v1)
    {
      v2 = *(v0 + 368);
      v3 = *v2;
      v4 = *(v2 + 1);
      v30 = v2;
      v5 = (v27 + 32);
      v32 = (*(v0 + 392) + 8);
      v28 = v4;
      v29 = *v2;
      while (1)
      {
        v9 = *v5;
        v10 = v5[1];
        v11 = v5[2];
        *(v0 + 61) = *(v5 + 45);
        *(v0 + 32) = v10;
        *(v0 + 48) = v11;
        *(v0 + 16) = v9;
        v12 = *(v0 + 16) == v3 && *(v0 + 24) == v4;
        if (!v12 && (sub_100041EEC() & 1) == 0)
        {
          break;
        }

        if (*(v0 + 48) != v30[8])
        {
          v19 = v0 + 16;
          v20 = v0 + 144;
LABEL_19:
          sub_1000072B8(v19, v20);
LABEL_20:
          v31 = v1;
          if (qword_10005CD40 != -1)
          {
            swift_once();
          }

          v21 = *(v0 + 400);
          v22 = *(v0 + 376);
          v23 = *(v0 + 384);
          sub_100007D34(v23, qword_100061138);
          sub_10001AD94();
          v35._countAndFlagsBits = 0x636965682ELL;
          v35._object = 0xE500000000000000;
          sub_1000418CC(v35);
          sub_10004146C();

          sub_10001C458(v21, v22);
          v24 = *v32;
          (*v32)(v21, v23);
          sub_10001AD94();
          v36._countAndFlagsBits = 0x2E78616D6E696D2DLL;
          v36._object = 0xEB0000000067706ALL;
          sub_1000418CC(v36);
          sub_10004146C();

          sub_10001C458(v21, v22);
          v24(v21, v23);
          if (qword_10005CD48 != -1)
          {
            swift_once();
          }

          v6 = *(v0 + 400);
          v8 = *(v0 + 376);
          v7 = *(v0 + 384);
          sub_100007D34(v7, qword_100061150);
          sub_10001AD94();
          sub_100007314(v0 + 16);
          v34._countAndFlagsBits = 0x2E78616D6E696D2DLL;
          v34._object = 0xEB0000000067706ALL;
          sub_1000418CC(v34);
          sub_10004146C();

          sub_10001C458(v6, v8);
          v24(v6, v7);
          v1 = v31;
          v4 = v28;
          v3 = v29;
          goto LABEL_5;
        }

        v13 = *(v0 + 72);
        if (v13 != 0.0)
        {
          v14 = v30[14];
          if (v13 != v14)
          {
            v15 = *(v0 + 368);
            sub_1000072B8(v0 + 16, v0 + 208);
            sub_1000072B8(v15, v0 + 272);
            v16 = sub_10004164C();
            v17 = sub_100041AAC();
            sub_100007314(v15);
            if (os_log_type_enabled(v16, v17))
            {
              v18 = swift_slowAlloc();
              *v18 = 134218240;
              *(v18 + 4) = v13;
              *(v18 + 12) = 2048;
              *(v18 + 14) = v14;
              _os_log_impl(&_mh_execute_header, v16, v17, "Removing snapshot because time does not match - snapshot.effectTime: %f. viewConfiguration.effectTime: %f", v18, 0x16u);
            }

            goto LABEL_20;
          }
        }

LABEL_5:
        v5 += 4;
        if (!--v1)
        {
          goto LABEL_24;
        }
      }

      v19 = v0 + 16;
      v20 = v0 + 80;
      goto LABEL_19;
    }

LABEL_24:
  }

  v25 = *(v0 + 8);

  return v25();
}

void sub_10001D094(Swift::String *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001BBA4(a1);
  v113 = v5;
  v114 = *(v5 + 2);
  if (v114)
  {
    v6 = 0;
    v7 = 32;
    v2 = &type metadata for DefaultStringInterpolation;
    while (1)
    {
      if (v6 >= *(v5 + 2))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        return;
      }

      v8 = *&v5[v7 + 45];
      v10 = *&v5[v7 + 16];
      v9 = *&v5[v7 + 32];
      v129 = *&v5[v7];
      v130 = v10;
      v131[0] = v9;
      *(v131 + 13) = v8;
      v11 = v129;
      v116 = *(&v10 + 1);
      *&v111 = v10;
      v109 = DWORD1(v9);
      v3 = v9;
      v102 = *(&v131[0] + 1);
      v105 = v8 >> 24;
      v4 = *(&v8 + 1) >> 24;
      v107 = HIBYTE(v8);
      object = 0;
      v125 = 0xE000000000000000;
      sub_1000072B8(&v129, &v126);
      sub_1000418CC(v11);
      v132._countAndFlagsBits = 45;
      v132._object = 0xE100000000000000;
      sub_1000418CC(v132);
      v99 = *(&v131[0] + 1);
      v126._countAndFlagsBits = *(&v131[0] + 1);
      v133._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v133);

      v134._countAndFlagsBits = 45;
      v134._object = 0xE100000000000000;
      sub_1000418CC(v134);
      v98 = *&v131[1];
      v126._countAndFlagsBits = *&v131[1];
      v135._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v135);

      v136._countAndFlagsBits = 45;
      v136._object = 0xE100000000000000;
      sub_1000418CC(v136);
      v12 = v131[0];
      sub_100041A3C();
      v137._countAndFlagsBits = 45;
      v137._object = 0xE100000000000000;
      sub_1000418CC(v137);
      v13 = DWORD2(v131[1]);
      sub_100041A3C();
      v126._countAndFlagsBits = 0;
      v126._object = 0xE000000000000000;
      sub_1000418CC(*a1);
      v138._countAndFlagsBits = 45;
      v138._object = 0xE100000000000000;
      sub_1000418CC(v138);
      object = a1[2]._object;
      v139._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v139);

      v140._countAndFlagsBits = 45;
      v140._object = 0xE100000000000000;
      sub_1000418CC(v140);
      object = a1[3]._countAndFlagsBits;
      v141._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v141);

      v142._countAndFlagsBits = 45;
      v142._object = 0xE100000000000000;
      sub_1000418CC(v142);
      sub_100041A3C();
      v143._countAndFlagsBits = 45;
      v143._object = 0xE100000000000000;
      sub_1000418CC(v143);
      sub_100041A3C();
      if (v126 == __PAIR128__(0xE000000000000000, 0))
      {
        break;
      }

      v14 = sub_100041EEC();

      if (v14)
      {
        goto LABEL_51;
      }

      ++v6;
      sub_100007314(&v129);
      v7 += 64;
      v5 = v113;
      if (v114 == v6)
      {
        goto LABEL_7;
      }
    }

LABEL_51:

    v69 = a1;
    sub_1000072B8(a1, &v126);
    v72 = sub_10004164C();
    v73 = sub_100041AAC();
    sub_100007314(a1);
    LODWORD(v18) = v109;
    LOBYTE(v2) = v107;
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v126._countAndFlagsBits = swift_slowAlloc();
      *v74 = 136315394;
      v75 = sub_10001AC30();
      v77 = sub_10000B1E4(v75, v76, &v126._countAndFlagsBits);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2080;
      v78 = sub_10001AB00();
      v80 = sub_10000B1E4(v78, v79, &v126._countAndFlagsBits);

      *(v74 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v72, v73, "SnapshotManager: perfect match  %s - snapshotID: %s", v74, 0x16u);
      swift_arrayDestroy();
    }

    v67 = BYTE12(v131[1]);
    v66 = *(&v130 + 1);
    v65 = v130;
    *&v68 = v99;
    *(&v68 + 1) = v98;
    *&v81 = v102;
    *(&v81 + 1) = v105;
    v101 = v81;
    countAndFlagsBits = v11._countAndFlagsBits;
    v63 = v116;
    v61 = v11._object;
    goto LABEL_54;
  }

LABEL_7:
  v15 = a1;
  sub_1000072B8(a1, &v129);
  v16 = sub_10004164C();
  v17 = sub_100041AAC();
  sub_100007314(a1);
  v18 = &off_100043000;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v129._countAndFlagsBits = v20;
    *v19 = 136315138;
    v21 = sub_10001AC30();
    v23 = sub_10000B1E4(v21, v22, &v129._countAndFlagsBits);

    *(v19 + 4) = v23;
    v15 = a1;
    _os_log_impl(&_mh_execute_header, v16, v17, "#SnapshotManager: try to match  %s", v19, 0xCu);
    sub_100005500(v20);
  }

  if (!v114)
  {

    countAndFlagsBits = 0;
    v64 = 0;
    v63 = 0;
    LODWORD(v18) = 0;
    v70 = 0;
    v71 = 0;
    LOBYTE(v2) = 0;
    v3 = 0;
    v4 = 0;
LABEL_59:
    v94 = sub_10004164C();
    v95 = sub_100041AAC();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "SnapshotManager: no snapshot found on disk", v96, 2u);
    }

    v93 = 0;
    v92 = a2;
    goto LABEL_62;
  }

  v26 = v15[2]._object;
  v27 = v15[3]._countAndFlagsBits;
  v28 = 0uLL;
  v129 = 0;
  v130 = 0u;
  memset(v131, 0, 29);
  v29 = v113;
  if (*(v113 + 2))
  {
    v30 = 0;
    v31 = v26 / v27;
    v103 = (v26 * v27) >> 64 != (v26 * v27) >> 63;
    v106 = v114 - 1;
    v32 = 32;
    v33 = (v26 * v27);
    do
    {
      v34 = *&v29[v32];
      v35 = *&v29[v32 + 16];
      v36 = *&v29[v32 + 32];
      *&v128[13] = *&v29[v32 + 45];
      v127 = v35;
      *v128 = v36;
      v126 = v34;
      v4 = *&v128[24];
      v118 = *&v128[8];
      v3 = v36;
      v37 = *(&v35 + 1);
      v38 = v35;
      v110 = v34;
      sub_1000072B8(&v126, &object);
      sub_1000072B8(&v126, &object);
      v18 = sub_10004164C();
      v39 = sub_100041AAC();
      sub_100007314(&v126);
      v108 = v38;
      if (os_log_type_enabled(v18, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v123 = v41;
        object = 0;
        *v40 = 136315138;
        v125 = 0xE000000000000000;
        if (v37)
        {
          v42 = v37;
        }

        else
        {
          v42 = v110._object;

          v38 = v110._countAndFlagsBits;
        }

        v144._countAndFlagsBits = v38;
        v144._object = v42;
        sub_1000418CC(v144);

        v145._countAndFlagsBits = 45;
        v145._object = 0xE100000000000000;
        sub_1000418CC(v145);
        v146._countAndFlagsBits = sub_100041EDC();
        sub_1000418CC(v146);

        v147._countAndFlagsBits = 45;
        v147._object = 0xE100000000000000;
        sub_1000418CC(v147);
        v148._countAndFlagsBits = sub_100041EDC();
        sub_1000418CC(v148);

        v149._countAndFlagsBits = 45;
        v149._object = 0xE100000000000000;
        sub_1000418CC(v149);
        sub_100041A3C();
        v150._countAndFlagsBits = 45;
        v150._object = 0xE100000000000000;
        sub_1000418CC(v150);
        sub_100041A3C();
        v44 = sub_10000B1E4(object, v125, &v123);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v18, v39, "SnapshotManager: with  %s", v40, 0xCu);
        sub_100005500(v41);

        v43 = v118;
        v29 = v113;
      }

      else
      {

        v43 = v118;
      }

      v45 = (v43 / *(&v43 + 1)) / v31;
      if (v45 > 1.0)
      {
        v45 = 1.0 / v45;
      }

      if (v45 >= 0.7)
      {
        if ((v43 * *(&v43 + 1)) >> 64 != (v43 * *(&v43 + 1)) >> 63)
        {
          goto LABEL_64;
        }

        if (v103)
        {
          goto LABEL_65;
        }

        if (((v43 * *(&v43 + 1)) / v33) >= 0.8)
        {
          if (v129._object)
          {
            v54 = (*(&v131[0] + 1) / *&v131[1]) / v31;
            if (v54 > 1.0)
            {
              v54 = 1.0 / v54;
            }

            if (v45 >= v54)
            {
              sub_100015014(&v129, &qword_10005D280, &unk_100044DB0);
              v55 = v128[28];
              *&v25 = v108;
              v24 = v110;
              *(&v25 + 1) = v37;
              v28 = v118;
            }

            else
            {
              v112 = v130;
              v3 = v131[0];
              v4 = DWORD2(v131[1]);
              v55 = BYTE12(v131[1]);
              v100 = *(v131 + 8);
              v120 = v129;
              sub_100007314(&v126);
              v25 = v112;
              v24 = v120;
              v28 = v100;
            }

            LOBYTE(v2) = v55 & 1;
          }

          else
          {
            v24 = v126;
            v25 = v127;
            v3 = *v128;
            LODWORD(v18) = *&v128[4];
            v28 = *&v128[8];
            v4 = *&v128[24];
            LOBYTE(v2) = v128[28];
          }

          goto LABEL_44;
        }

        sub_1000072B8(&v126, &object);
        v18 = sub_10004164C();
        v50 = sub_100041AAC();
        sub_100007314(&v126);
        if (os_log_type_enabled(v18, v50))
        {
          v47 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v123 = v51;
          object = 0;
          *v47 = 136315138;
          v125 = 0xE000000000000000;
          v115 = v32;
          v119 = v51;
          if (v37)
          {
            v52 = v37;
            v53 = v108;
          }

          else
          {
            v52 = v110._object;

            v53 = v110._countAndFlagsBits;
          }

          v158._countAndFlagsBits = v53;
          v158._object = v52;
          sub_1000418CC(v158);

          v159._countAndFlagsBits = 45;
          v159._object = 0xE100000000000000;
          sub_1000418CC(v159);
          v160._countAndFlagsBits = sub_100041EDC();
          sub_1000418CC(v160);

          v161._countAndFlagsBits = 45;
          v161._object = 0xE100000000000000;
          sub_1000418CC(v161);
          v162._countAndFlagsBits = sub_100041EDC();
          sub_1000418CC(v162);

          v163._countAndFlagsBits = 45;
          v163._object = 0xE100000000000000;
          sub_1000418CC(v163);
          sub_100041A3C();
          v164._countAndFlagsBits = 45;
          v164._object = 0xE100000000000000;
          sub_1000418CC(v164);
          sub_100041A3C();
          sub_100007314(&v126);
          v60 = sub_10000B1E4(object, v125, &v123);

          *(v47 + 4) = v60;
          v57 = v50;
          v58 = v18;
          v59 = "SnapshotManager: size reject %s";
          goto LABEL_43;
        }
      }

      else
      {
        sub_1000072B8(&v126, &object);
        v18 = sub_10004164C();
        v46 = sub_100041AAC();
        sub_100007314(&v126);
        if (os_log_type_enabled(v18, v46))
        {
          v47 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v123 = v119;
          object = 0;
          *v47 = 136315138;
          v125 = 0xE000000000000000;
          v115 = v32;
          if (v37)
          {
            v48 = v37;
            v49 = v108;
          }

          else
          {
            v48 = v110._object;

            v49 = v110._countAndFlagsBits;
          }

          v151._countAndFlagsBits = v49;
          v151._object = v48;
          sub_1000418CC(v151);

          v152._countAndFlagsBits = 45;
          v152._object = 0xE100000000000000;
          sub_1000418CC(v152);
          v153._countAndFlagsBits = sub_100041EDC();
          sub_1000418CC(v153);

          v154._countAndFlagsBits = 45;
          v154._object = 0xE100000000000000;
          sub_1000418CC(v154);
          v155._countAndFlagsBits = sub_100041EDC();
          sub_1000418CC(v155);

          v156._countAndFlagsBits = 45;
          v156._object = 0xE100000000000000;
          sub_1000418CC(v156);
          sub_100041A3C();
          v157._countAndFlagsBits = 45;
          v157._object = 0xE100000000000000;
          sub_1000418CC(v157);
          sub_100041A3C();
          sub_100007314(&v126);
          v56 = sub_10000B1E4(object, v125, &v123);

          *(v47 + 4) = v56;
          v57 = v46;
          v58 = v18;
          v59 = "SnapshotManager: ratio reject %s";
LABEL_43:
          _os_log_impl(&_mh_execute_header, v58, v57, v59, v47, 0xCu);
          sub_100005500(v119);

          v24 = v129;
          v25 = v130;
          v3 = v131[0];
          LODWORD(v18) = DWORD1(v131[0]);
          v28 = *(v131 + 8);
          v4 = DWORD2(v131[1]);
          LOBYTE(v2) = BYTE12(v131[1]);
          v29 = v113;
          v32 = v115;
          goto LABEL_44;
        }
      }

      sub_100007314(&v126);
      v24 = v129;
      v25 = v130;
      v3 = v131[0];
      LODWORD(v18) = DWORD1(v131[0]);
      v28 = *(v131 + 8);
      v4 = DWORD2(v131[1]);
      LOBYTE(v2) = BYTE12(v131[1]);
LABEL_44:
      if (v106 == v30)
      {
        goto LABEL_47;
      }

      ++v30;
      v129 = v24;
      v130 = v25;
      *&v131[0] = __PAIR64__(v18, v3);
      *(v131 + 8) = v28;
      DWORD2(v131[1]) = v4;
      BYTE12(v131[1]) = v2;
      v32 += 64;
    }

    while (v30 < *(v29 + 2));
  }

  __break(1u);
LABEL_47:
  v101 = v28;
  v121 = v24;
  v111 = v25;

  v61 = v121._object;
  countAndFlagsBits = v121._countAndFlagsBits;
  v63 = *(&v111 + 1);
  v64 = v111;
  if (!v121._object)
  {
    v71 = *(&v101 + 1);
    v70 = v101;
    goto LABEL_59;
  }

  v66 = *(&v111 + 1);
  v65 = v111;
  v12 = v3;
  v13 = v4;
  v67 = v2;
  v68 = v101;
  v69 = a1;
LABEL_54:
  v126._countAndFlagsBits = countAndFlagsBits;
  v126._object = v61;
  v122 = v61;
  *&v127 = v65;
  *(&v127 + 1) = v66;
  *v128 = v12;
  *&v128[8] = v68;
  *&v128[24] = v13;
  v128[28] = v67 & 1;
  v129 = v126;
  v130 = v127;
  v131[0] = *v128;
  *(v131 + 13) = *&v128[13];
  sub_1000072B8(v69, &object);
  sub_1000072B8(&v126, &object);
  v82 = sub_10004164C();
  v83 = sub_100041AAC();
  sub_100007314(v69);
  if (os_log_type_enabled(v82, v83))
  {
    v117 = v63;
    v84 = swift_slowAlloc();
    object = swift_slowAlloc();
    *v84 = 136315394;
    v85 = sub_10001AC30();
    v87 = v86;
    sub_100007314(&v126);
    v88 = sub_10000B1E4(v85, v87, &object);

    *(v84 + 4) = v88;
    *(v84 + 12) = 2080;
    v89 = sub_10001AC30();
    v91 = sub_10000B1E4(v89, v90, &object);

    *(v84 + 14) = v91;
    _os_log_impl(&_mh_execute_header, v82, v83, "SnapshotManager: found usable snapshot on disk: %s. viewConfig: %s", v84, 0x16u);
    swift_arrayDestroy();

    v63 = v117;
  }

  else
  {

    sub_100007314(&v126);
  }

  v71 = *(&v101 + 1);
  v70 = v101;
  v92 = a2;
  v64 = v111;
  v93 = v122;
LABEL_62:
  *v92 = countAndFlagsBits;
  *(v92 + 8) = v93;
  *(v92 + 16) = v64;
  *(v92 + 24) = v63;
  *(v92 + 32) = v3;
  *(v92 + 36) = v18;
  *(v92 + 40) = v70;
  *(v92 + 48) = v71;
  *(v92 + 56) = v4;
  *(v92 + 60) = v2;
}

void sub_10001E1C4(UIImage *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v60 = a7;
  v11 = sub_1000414BC();
  v63 = *(v11 - 8);
  v64 = v11;
  __chkstk_darwin(v11);
  v62 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004166C();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v65 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v56 - v17;
  v19 = [objc_allocWithZone(CIContext) init];
  v20 = UIImageHEICRepresentation(a1);
  if (v20)
  {
    v61 = a6;
    v58 = v14;
    v59 = v13;
    v21 = v20;
    v22 = sub_1000414FC();
    v24 = v23;

    sub_10004150C();
    if (!a4)
    {
LABEL_15:
      if (v61)
      {
        v61(1);
      }

      sub_100014E84(v22, v24);
      goto LABEL_18;
    }

    v57 = a3;
    v46 = a4;
    sub_10004144C(v47);
    v49 = v48;
    DeviceRGB = [v46 colorSpace];
    if (!DeviceRGB)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
    }

    sub_10003331C(&_swiftEmptyArrayStorage);
    type metadata accessor for CIImageRepresentationOption(0);
    sub_100021A04(&qword_10005CFA8, type metadata accessor for CIImageRepresentationOption, &unk_10004402C);
    isa = sub_10004177C().super.isa;

    v67[0] = 0;
    v56 = v19;
    v52 = [v19 writeJPEGRepresentationOfImage:v46 toURL:v49 colorSpace:DeviceRGB options:isa error:v67];

    v53 = v65;
    if (v52)
    {
      v54 = v67[0];

      goto LABEL_15;
    }

    v55 = v67[0];
    sub_1000413EC();

    swift_willThrow();
    sub_100014E84(v22, v24);

    v25 = v63;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v27 = v59;
    v28 = v61;
    v29 = v62;
    v30 = v64;
    if (Strong)
    {
      v31 = v58;
      (*(v58 + 16))(v53, Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension15SnapshotManager_logger, v59);

      (v25[2])(v29, v57, v30);
      swift_errorRetain();
      v32 = v25;
      v33 = sub_10004164C();
      v34 = sub_100041AAC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v66 = v63;
        *v35 = 136315394;
        sub_100021A04(&qword_10005DAE0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        LODWORD(v57) = v34;
        v37 = sub_100041EDC();
        v39 = v38;
        (v32[1])(v29, v30);
        v40 = sub_10000B1E4(v37, v39, &v66);

        *(v35 + 4) = v40;
        *(v35 + 12) = 2112;
        swift_errorRetain();
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 14) = v41;
        *v36 = v41;
        _os_log_impl(&_mh_execute_header, v33, v57, "#SnapshotManager: error saving to path %s: %@", v35, 0x16u);
        sub_100015014(v36, &qword_10005E240, &qword_100043C90);

        sub_100005500(v63);

        v28 = v61;

        (*(v31 + 8))(v65, v59);
      }

      else
      {

        (v32[1])(v29, v30);
        (*(v31 + 8))(v53, v27);
      }
    }

    if (v28)
    {
      v28(0);
    }
  }

  else
  {
    swift_beginAccess();
    v42 = swift_weakLoadStrong();
    if (!v42)
    {
LABEL_18:

      return;
    }

    (*(v14 + 16))(v18, v42 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension15SnapshotManager_logger, v13);

    v43 = sub_10004164C();
    v44 = sub_100041AAC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "#SnapshotManager: snapshot heicData failed", v45, 2u);
    }

    (*(v14 + 8))(v18, v13);
  }
}

uint64_t sub_10001E8F0(char *a1, float *a2, void (*a3)(void), void *a4)
{
  v150 = a1;
  v148 = sub_10004168C();
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v144 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1000416DC();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004169C();
  v141 = *(v10 - 8);
  __chkstk_darwin(v10);
  Strong = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000414BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = (&v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v20 = &v130 - v19;
  v21 = __chkstk_darwin(v18);
  v22 = __chkstk_darwin(v21);
  v153 = &v130 - v23;
  isUniquelyReferenced_nonNull_native = __chkstk_darwin(v22);
  if (*(v4 + 16) != 1)
  {
    if (a3)
    {
      a3(0);
    }

    return 0;
  }

  v137 = v10;
  *&v140 = v26;
  v138 = a4;
  v139 = a3;
  v147 = v4;
  v149 = v14;
  v151 = &v130 - v25;
  if (qword_10005CD40 != -1)
  {
    goto LABEL_57;
  }

LABEL_3:
  v152 = isUniquelyReferenced_nonNull_native;
  sub_100007D34(isUniquelyReferenced_nonNull_native, qword_100061138);
  aBlock = sub_10001AD94();
  v155 = v27;
  v162._countAndFlagsBits = 0x636965682ELL;
  v162._object = 0xE500000000000000;
  sub_1000418CC(v162);
  sub_10004146C();

  v134 = a2;
  aBlock = sub_10001AD94();
  v155 = v28;
  v163._countAndFlagsBits = 0x2E78616D6E696D2DLL;
  v163._object = 0xEB0000000067706ALL;
  sub_1000418CC(v163);
  sub_10004146C();

  v29 = objc_allocWithZone(CIImage);
  result = [v29 initWithImage:v150];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v135 = result;
  v31 = sub_10001FD08(result);
  v32 = v137;
  v136 = v33;
  if ((v31 & 1) == 0)
  {
    v70 = v151;
    v69 = v152;
    if (qword_10005CD48 != -1)
    {
      v129 = v152;
      swift_once();
      v69 = v129;
    }

    sub_100007D34(v69, qword_100061150);
    aBlock = sub_10001AD94();
    v155 = v71;
    v164._countAndFlagsBits = 0x636965682ELL;
    v164._object = 0xE500000000000000;
    sub_1000418CC(v164);
    v72 = v140;
    sub_10004146C();

    v73 = v149;
    (*(v149 + 40))(v70, v72, v152);
    aBlock = sub_10001AD94();
    v155 = v74;
    v165._countAndFlagsBits = 0x2E78616D6E696D2DLL;
    v165._object = 0xEB0000000067706ALL;
    sub_1000418CC(v165);
    sub_10004146C();
    v75 = v152;

    v76 = *(v73 + 8);
    v77 = v153;
    v76(v153, v75);
    (*(v73 + 32))(v77, v72, v75);
    v78 = sub_10004164C();
    v79 = sub_100041AAC();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v161 = v81;
      *v80 = 136315138;
      swift_beginAccess();
      sub_100021A04(&qword_10005DAE0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v82 = sub_100041EDC();
      v84 = sub_10000B1E4(v82, v83, &v161);

      *(v80 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v78, v79, "#SnapshotManager: snapshot didn't pass validation %s", v80, 0xCu);
      sub_100005500(v81);
      v70 = v151;
    }

    if (v139)
    {
      v139(0);

      v85 = v152;
      v76(v153, v152);
    }

    else
    {
      v85 = v152;
      v76(v153, v152);
    }

    v76(v70, v85);
    return 0;
  }

  v34 = *(v149 + 16);
  v131 = v20;
  v35 = v140;
  v133 = v17;
  v36 = v152;
  v34();
  sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
  v37 = v141;
  (v141[13])(Strong, enum case for DispatchQoS.QoSClass.default(_:), v32);
  v132 = sub_100041B2C();
  v37[1](Strong, v32);
  v137 = swift_allocObject();
  swift_weakInit();
  v38 = v131;
  v39 = v35;
  v40 = v36;
  (v34)(v131, v39, v36);
  (v34)(v133, v153, v36);
  v41 = v149;
  v42 = *(v149 + 80);
  v43 = (v42 + 32) & ~v42;
  v44 = (v15 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v42 + v44 + 8) & ~v42;
  v46 = swift_allocObject();
  v17 = v137;
  *(v46 + 16) = v150;
  *(v46 + 24) = v17;
  v47 = *(v41 + 32);
  v47(v46 + v43, v38, v40);
  v48 = v136;
  *(v46 + v44) = v136;
  v47(v46 + v45, v133, v40);
  v49 = (v46 + ((v15 + v45 + 7) & 0xFFFFFFFFFFFFFFF8));
  v50 = v139;
  v51 = v138;
  *v49 = v139;
  v49[1] = v51;
  v158 = sub_1000210BC;
  v159 = v46;
  aBlock = _NSConcreteStackBlock;
  v155 = 1107296256;
  v156 = sub_100028728;
  v157 = &unk_100056208;
  v52 = _Block_copy(&aBlock);
  v15 = v48;
  v141 = v150;

  sub_100021184(v50, v51);
  v53 = v142;
  sub_1000416AC();
  v161 = &_swiftEmptyArrayStorage;
  sub_100021A04(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000054B8(&unk_10005D640, "B|");
  sub_10000B8DC();
  v54 = v144;
  Strong = v148;
  sub_100041CAC();
  v55 = v132;
  sub_100041B1C();
  _Block_release(v52);

  (v146[1])(v54, Strong);
  (*(v143 + 8))(v53, v145);
  v56 = *(v149 + 8);
  v149 += 8;
  (v56)(v140, v152);

  v57 = v147;
  v58 = *(v147 + 32);
  os_unfair_lock_lock(v58);
  swift_beginAccess();
  v59 = *(v57 + 24);
  if (!*(v59 + 16))
  {
    goto LABEL_36;
  }

  v60 = sub_10002C50C(v134);
  if ((v61 & 1) == 0)
  {

LABEL_36:
    os_unfair_lock_unlock(v58);
    goto LABEL_37;
  }

  v20 = *(*(v59 + 56) + 8 * v60);

  os_unfair_lock_unlock(v58);
  if (!v20)
  {
    goto LABEL_37;
  }

  v139 = v56;
  if (v20 >> 62)
  {
    isUniquelyReferenced_nonNull_native = sub_100041DDC();
    v62 = isUniquelyReferenced_nonNull_native;
  }

  else
  {
    v62 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a2 = 0;
  v146 = &_swiftEmptyArrayStorage;
  while (v62 != a2)
  {
    if ((v20 & 0xC000000000000001) == 0)
    {
      if (a2 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v63 = *(v20 + 8 * a2 + 32);

      v17 = (a2 + 1);
      if (!__OFADD__(a2, 1))
      {
        goto LABEL_15;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      v128 = isUniquelyReferenced_nonNull_native;
      swift_once();
      isUniquelyReferenced_nonNull_native = v128;
      goto LABEL_3;
    }

    isUniquelyReferenced_nonNull_native = sub_100041D3C();
    v63 = isUniquelyReferenced_nonNull_native;
    v17 = (a2 + 1);
    if (__OFADD__(a2, 1))
    {
      goto LABEL_55;
    }

LABEL_15:
    Strong = swift_unknownObjectWeakLoadStrong();
    v64 = *(v63 + 24);

    a2 = (a2 + 1);
    if (Strong)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_100039398(0, v146[2] + 1, 1, v146);
        v146 = isUniquelyReferenced_nonNull_native;
      }

      v66 = v146[2];
      v65 = v146[3];
      if (v66 >= v65 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100039398((v65 > 1), v66 + 1, 1, v146);
        v146 = isUniquelyReferenced_nonNull_native;
      }

      v67 = v146;
      v146[2] = v66 + 1;
      v68 = &v67[2 * v66];
      v68[4] = Strong;
      v68[5] = v64;
      a2 = v17;
    }
  }

  v97 = v146;

  v98 = v134;
  sub_1000072B8(v134, &aBlock);
  v99 = sub_10004164C();
  v100 = sub_100041AAC();

  sub_100007314(v98);
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v101 = 136315394;
    sub_1000054B8(&qword_10005EBE0, &qword_100045560);
    v102 = sub_10004199C();
    v104 = sub_10000B1E4(v102, v103, &aBlock);

    *(v101 + 4) = v104;
    *(v101 + 12) = 2080;
    v105 = sub_10001AB00();
    v107 = sub_10000B1E4(v105, v106, &aBlock);

    *(v101 + 14) = v107;
    _os_log_impl(&_mh_execute_header, v99, v100, "SnapshotManager: observers for %s %s", v101, 0x16u);
    swift_arrayDestroy();
  }

  v56 = v139;
  v109 = v97[2];
  if (v109)
  {
    v138 = v15;
    v110 = *(v134 + 1);
    v145 = *v134;
    v144 = v110;
    v111 = *(v134 + 6);
    v143 = *(v134 + 5);
    v142 = v111;
    v112 = 4;
    *&v108 = 136315138;
    v140 = v108;
    while (1)
    {
      v150 = v109;
      v113 = v97[v112];
      aBlock = 0;
      v155 = 0xE000000000000000;
      v114 = v113;
      v166._countAndFlagsBits = v145;
      v166._object = v144;
      sub_1000418CC(v166);
      v167._countAndFlagsBits = 45;
      v167._object = 0xE100000000000000;
      sub_1000418CC(v167);
      v160 = v143;
      v168._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v168);

      v169._countAndFlagsBits = 45;
      v169._object = 0xE100000000000000;
      sub_1000418CC(v169);
      v160 = v142;
      v170._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v170);

      v171._countAndFlagsBits = 45;
      v171._object = 0xE100000000000000;
      sub_1000418CC(v171);
      sub_100041A3C();
      v172._countAndFlagsBits = 45;
      v172._object = 0xE100000000000000;
      sub_1000418CC(v172);
      sub_100041A3C();
      v116 = aBlock;
      v115 = v155;
      v148 = v114;
      v117 = &v114[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration];
      v173 = *&v114[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration];
      v118 = *&v114[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 40];
      v119 = *(v117 + 6);
      aBlock = 0;
      v155 = 0xE000000000000000;
      sub_1000418CC(v173);
      v174._countAndFlagsBits = 45;
      v174._object = 0xE100000000000000;
      sub_1000418CC(v174);
      v160 = v118;
      v175._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v175);

      v176._countAndFlagsBits = 45;
      v176._object = 0xE100000000000000;
      sub_1000418CC(v176);
      v160 = v119;
      v177._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v177);

      v178._countAndFlagsBits = 45;
      v178._object = 0xE100000000000000;
      sub_1000418CC(v178);
      sub_100041A3C();
      v179._countAndFlagsBits = 45;
      v179._object = 0xE100000000000000;
      sub_1000418CC(v179);
      sub_100041A3C();
      if (v116 == aBlock && v115 == v155)
      {
        break;
      }

      v122 = sub_100041EEC();

      v120 = v150;
      v121 = v148;
      if (v122)
      {
        goto LABEL_51;
      }

LABEL_46:

      v112 += 2;
      v109 = v120 - 1;
      v97 = v146;
      if (!v109)
      {

        v15 = v138;
        v56 = v139;
        goto LABEL_37;
      }
    }

    v120 = v150;
    v121 = v148;
LABEL_51:
    v123 = v121;
    v124 = sub_10004164C();
    v125 = sub_100041AAC();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      aBlock = v127;
      *v126 = v140;
      *(v126 + 4) = sub_10000B1E4(*&v123[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_tagID], *&v123[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_tagID + 8], &aBlock);
      _os_log_impl(&_mh_execute_header, v124, v125, "#%s snapshotReader: update image from observer ", v126, 0xCu);
      sub_100005500(v127);
    }

    (*&v123[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_updateBlock])(v141, 0);
    goto LABEL_46;
  }

LABEL_37:
  v86 = sub_10004164C();
  v87 = sub_100041AAC();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v160 = v89;
    *v88 = 136315138;
    v90 = v151;
    swift_beginAccess();
    sub_100021A04(&qword_10005DAE0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v91 = v152;
    v92 = sub_100041EDC();
    v94 = v56;
    v95 = sub_10000B1E4(v92, v93, &v160);

    *(v88 + 4) = v95;
    _os_log_impl(&_mh_execute_header, v86, v87, "#SnapshotManager: saved to path %s", v88, 0xCu);
    sub_100005500(v89);

    v94(v153, v91);
    v94(v90, v91);
  }

  else
  {

    v96 = v152;
    (v56)(v153, v152);
    (v56)(v151, v96);
  }

  return 1;
}

id sub_10001FD08(void *a1)
{
  v1 = sub_100021A4C(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_1000419BC();
  *(v2 + 16) = 8;
  *(v2 + 48) = 0u;
  *(v2 + 32) = 0u;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v4 = [objc_allocWithZone(CIContext) init];
  [v1 extent];
  result = [v4 render:v1 toBitmap:v2 + 32 rowBytes:32 bounds:kCIFormatRGBAf format:DeviceRGB colorSpace:?];
  v6 = *(v2 + 16);
  if (!v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v6 < 3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 == 3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 < 5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v6 == 5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v6 < 7)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v6 != 7)
  {
    v7 = ((*(v2 + 32) + *(v2 + 36)) + *(v2 + 40)) + *(v2 + 44);
    v8 = ((*(v2 + 48) + *(v2 + 52)) + *(v2 + 56)) + *(v2 + 60);
    v9 = vabds_f32(v7, v8);
    v10 = v9 > 0.01;
    v11 = sub_10004164C();
    v12 = sub_100041AAC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109632;
      *(v13 + 4) = v9 > 0.01;
      *(v13 + 8) = 2048;
      *(v13 + 10) = v7;
      *(v13 + 18) = 2048;
      *(v13 + 20) = v8;
      _os_log_impl(&_mh_execute_header, v11, v12, "#SnapshotManager: checkIfValidSnapshot %{BOOL}d v0: %f v1: %f", v13, 0x1Cu);
    }

    return v10;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10001FF54()
{

  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension15SnapshotManager_logger;
  v2 = sub_10004166C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SnapshotManager(uint64_t a1)
{
  result = qword_10005EA08;
  if (!qword_10005EA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002004C(uint64_t a1)
{
  result = sub_10004166C();
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

__n128 sub_100020128(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100020144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 61))
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

uint64_t sub_10002018C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 61) = 1;
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

    *(result + 61) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000201F4()
{
  result = qword_10005EBD8;
  if (!qword_10005EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EBD8);
  }

  return result;
}

unsigned __int8 *sub_100020248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_100021B84();

  result = sub_10004194C();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1000207E0(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_100041D5C();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000207E0(uint64_t a1, unint64_t a2)
{
  v2 = sub_10004195C();
  v6 = sub_100020860(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100020860(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_100041C7C();
    if (!v9 || (v10 = v9, v11 = sub_10000B624(v9, 0), v12 = sub_1000209B8(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1000418AC();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1000418AC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_100041D5C();
LABEL_4:

  return sub_1000418AC();
}

unint64_t sub_1000209B8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100020BD8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_10004191C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_100041D5C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100020BD8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1000418EC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_100020BD8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_10004192C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1000418FC();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_100020C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtof_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_100041D1C();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_100020D4C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_100041D5C();
  }

  result = sub_100021194(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_100020E18(float *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_100041EEC() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = *(a1 + 3);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_20;
    }

    v7 = *(a1 + 2) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_100041EEC() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v6)
  {
LABEL_20:
    v8 = 0;
    return v8 & 1;
  }

  if (a1[8] != *(a2 + 32) || *(a1 + 5) != *(a2 + 40) || *(a1 + 6) != *(a2 + 48) || a1[14] != *(a2 + 56))
  {
    goto LABEL_20;
  }

  v8 = *(a1 + 60) ^ *(a2 + 60) ^ 1;
  return v8 & 1;
}

uint64_t *sub_100020EF4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100020F58()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020F90()
{
  v1 = sub_1000414BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + v6 + 8) & ~v3;
  v8 = (v5 + v7) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);

  v9(v0 + v7, v1);
  if (*(v0 + v8))
  {
  }

  return _swift_deallocObject(v0, v8 + 16, v3 | 7);
}

void sub_1000210BC()
{
  v1 = *(sub_1000414BC() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v2 + v5 + 8) & ~v2;
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + v5);
  v10 = v0 + ((v4 + v6) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_10001E1C4(v7, v8, v0 + v3, v9, v0 + v6, v11, v12);
}

uint64_t sub_10002116C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100021184(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100021194(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100020BD8(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_10004190C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100020BD8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100020BD8(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_10004190C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100021600@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000414BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004145C();
  v8 = sub_10004143C();
  v10 = v9;
  v11 = *(v5 + 8);
  v11(v7, v4);
  v52[0] = v8;
  v52[1] = v10;
  sub_10000EF68();
  v12 = sub_100041C8C();

  v13 = v12[2];
  if (v13 < 4 || v13 > 5)
  {
    v11(a1, v4);

LABEL_18:
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v23 = 0;
    v31 = 0;
    v37 = 0;
    v38 = 0;
LABEL_19:
    *a2 = v34;
    *(a2 + 8) = v35;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = v36;
    *(a2 + 36) = 0;
    *(a2 + 40) = v23;
    *(a2 + 48) = v31;
    *(a2 + 56) = v37;
    *(a2 + 60) = v38;
    return result;
  }

  v51 = a1;

  v15 = sub_10004189C();
  v17 = v16;

  LODWORD(v52[0]) = 0;
  v18 = sub_100020C54(v15, v17, v52);

  if (!v18)
  {
    goto LABEL_17;
  }

  if (v12[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  v19 = v12[8];
  v20 = v12[9];
  if ((v20 ^ v19) < 0x4000)
  {
    goto LABEL_17;
  }

  v48 = v52[0];
  v21 = v12[11];
  v49 = v12[10];
  v50 = v19;
  result = sub_100020D4C(v19, v20, v49, v21, 10);
  if ((v22 & 0x100) != 0)
  {

    v23 = sub_100020248(v50, v20, v49, v21, 10);
    v25 = v24;

    if (v25)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v22)
    {
      goto LABEL_17;
    }

    v23 = result;
  }

  if (v12[2] < 3uLL)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v26 = v12[12];
  v27 = v12[13];
  if ((v27 ^ v26) < 0x4000)
  {
    goto LABEL_17;
  }

  v28 = v12[14];
  v29 = v12[15];
  v49 = v12[13];
  v50 = v26;
  v47 = v28;
  result = sub_100020D4C(v26, v27, v28, v29, 10);
  v46 = 0;
  if ((v30 & 0x100) == 0)
  {
    if ((v30 & 1) == 0)
    {
      v31 = result;
      goto LABEL_20;
    }

LABEL_17:

    result = (v11)(v51, v4);
    goto LABEL_18;
  }

  v31 = sub_100020248(v50, v49, v47, v29, 10);
  v33 = v32;

  if (v33)
  {
    goto LABEL_17;
  }

LABEL_20:
  if (v13 != 5)
  {
    goto LABEL_24;
  }

  if (v12[2] >= 5uLL)
  {
    v39 = v12[21];
    v49 = v12[22];
    v50 = v39;

    v50 = sub_10004189C();
    v41 = v40;

    LODWORD(v52[0]) = 0;
    LOBYTE(v41) = sub_100020C54(v50, v41, v52);

    if (v41)
    {
      v37 = v52[0];
      goto LABEL_25;
    }

LABEL_24:
    v37 = 0;
LABEL_25:
    if (v12[2])
    {
      v38 = v13 != 5;
      v42 = v12[4];
      v49 = v12[5];
      v50 = v42;
      v43 = v12[6];
      v46 = v12[7];
      v47 = v43;

      v34 = sub_10004189C();
      v35 = v44;

      result = (v11)(v51, v4);
      v36 = v48;
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_100021A04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100021A4C(void *a1)
{
  v2 = [objc_opt_self() areaMinMaxFilter];
  [v2 setInputImage:a1];
  [a1 extent];
  v3 = CGRectGetWidth(v10) * 0.5;
  [a1 extent];
  v4 = v3 - CGRectGetWidth(v11) * 0.25;
  [a1 extent];
  v5 = CGRectGetHeight(v12) * 0.5;
  [a1 extent];
  v6 = v5 - CGRectGetHeight(v13) * 0.25;
  [a1 extent];
  v7 = CGRectGetWidth(v14) * 0.5;
  [a1 extent];
  [v2 setExtent:{v4, v6, v7, CGRectGetHeight(v15) * 0.5}];
  v8 = [v2 outputImage];

  return v8;
}

unint64_t sub_100021B84()
{
  result = qword_10005EBE8;
  if (!qword_10005EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EBE8);
  }

  return result;
}

_BYTE *sub_100021BD8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_100021C58(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  sub_1000054B8(&qword_10005F300, &qword_100043C98);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100044DC0;
  v6 = [v2 leadingAnchor];
  v7 = [a1 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [a1 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [v2 topAnchor];
  v13 = [a1 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [v2 bottomAnchor];
  v16 = [a1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_100023860();
  isa = sub_10004197C().super.isa;

  [v4 activateConstraints:isa];
}

uint64_t sub_100021E98(uint64_t a1, uint64_t a2)
{
  v2 = sub_10004185C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004183C();
  v6 = sub_10004180C();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1000413BC();
    swift_allocObject();
    v10 = sub_10004138C();
    v15 = 0x1000000000;
    v16 = v10 | 0x4000000000000000;
    sub_100023548(v6, v8);
    sub_1000230A8(&v15, v6, v8);
    sub_1000235B0(v6, v8);
    v11 = v15;
    v12 = v16;
    v14 = sub_100022348(v15, v16);
    sub_1000054B8(&qword_10005EC10, &qword_100044DE0);
    sub_1000235C4();
    v13 = sub_1000417AC();
    sub_1000235B0(v6, v8);

    sub_100014E84(v11, v12);
    return v13;
  }

  return result;
}

unsigned __int8 *sub_100022074@<X0>(unsigned __int8 *md@<X0>, uint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v8 = md;
  v10 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v10)
    {
      data[0] = a3;
      LOWORD(data[1]) = a4;
      BYTE2(data[1]) = BYTE2(a4);
      BYTE3(data[1]) = BYTE3(a4);
      BYTE4(data[1]) = BYTE4(a4);
      BYTE5(data[1]) = BYTE5(a4);
      if (md)
      {
        md = CC_MD5(data, BYTE6(a4), md);
      }

      v11 = 0;
      goto LABEL_20;
    }

    if (a3 >> 32 >= a3)
    {
      v17 = v5;
      v14 = sub_10004137C();
      if (!v14)
      {
        goto LABEL_16;
      }

      v16 = sub_1000413AC();
      if (!__OFSUB__(a3, v16))
      {
        v14 += a3 - v16;
        goto LABEL_16;
      }

LABEL_24:
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v10 == 2)
  {
    v17 = v5;
    v13 = *(a3 + 16);
    v12 = *(a3 + 24);
    v14 = sub_10004137C();
    if (v14)
    {
      v15 = sub_1000413AC();
      if (__OFSUB__(v13, v15))
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v14 += v13 - v15;
    }

    if (!__OFSUB__(v12, v13))
    {
LABEL_16:
      sub_10004139C();
      md = sub_1000222B4(v14, v8, a3, a4, data);
      if (!v17)
      {
        v11 = data[0];
LABEL_20:
        *a5 = v11;
        return md;
      }

      goto LABEL_25;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  memset(data, 0, 14);
  md = sub_1000222B4(data, md, a3, a4, &v18);
  if (!v5)
  {
    v11 = v18;
    goto LABEL_20;
  }

LABEL_25:

  __break(1u);
  return md;
}

unsigned __int8 *sub_1000222B4@<X0>(unsigned __int8 *result@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X4>, unint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  if (!result || !a2)
  {
    goto LABEL_17;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_15;
    }

    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    v7 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v6)
  {
    LODWORD(v7) = BYTE6(a4);
LABEL_16:
    result = CC_MD5(result, v7, a2);
LABEL_17:
    *a5 = 0;
    return result;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_19;
  }

  v7 = HIDWORD(a3) - a3;
LABEL_12:
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(v7))
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    LODWORD(v7) = 0;
    goto LABEL_16;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

unint64_t *sub_100022348(unint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = &_swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_100022D8C(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_10004137C();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1000413AC();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_10004137C();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1000413AC();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_1000054B8(&unk_10005D9B0, &unk_100044760);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1000445B0;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = sub_10004181C();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_100022D8C((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

id sub_1000226C4(double a1)
{
  *v2.i64 = sub_100022754();
  v3 = a1;
  v9 = v3;
  v10 = v2;
  v8 = 1.0 - v3;
  *v4.i64 = sub_100022754();
  v11 = vaddq_f32(vmulq_n_f32(v10, v8), vmulq_n_f32(v4, v9));
  v5 = sub_1000417CC();
  v6 = sub_100022854(v5, v11);

  return v6;
}

double sub_100022754()
{
  v1 = v0;
  v2 = [v0 CGColor];
  v3 = sub_100041A6C();

  if (!v3)
  {
    goto LABEL_5;
  }

  if (*(v3 + 16) != 4)
  {

LABEL_5:
    v12 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    [v1 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
    v4.f64[0] = v12;
    v5.f64[0] = v10;
    v4.f64[1] = v11;
    v5.f64[1] = v9;
    goto LABEL_6;
  }

  v7 = *(v3 + 32);
  v8 = *(v3 + 48);

  v4 = v7;
  v5 = v8;
LABEL_6:
  *&result = vcvt_hight_f32_f64(vcvt_f32_f64(v4), v5).u64[0];
  return result;
}

id sub_100022854(const __CFString *a1, float32x4_t a2)
{
  v2 = CGColorSpaceCreateWithName(a1);
  if (v2)
  {
    v3 = v2;
    v13[0] = vcvtq_f64_f32(*a2.f32);
    v13[1] = vcvt_hight_f64_f32(a2);
    v4 = CGColorCreate(v2, v13);
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(UIColor) initWithCGColor:v4];

      return v6;
    }
  }

  if (qword_10005CD50 != -1)
  {
    swift_once();
  }

  v8 = sub_10004166C();
  sub_100007D34(v8, qword_10005EBF8);
  v9 = sub_10004164C();
  v10 = sub_100041ABC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "unable to create cgColor in extended linear SRGB", v11, 2u);
  }

  return [objc_allocWithZone(UIColor) initWithRed:a2.f32[0] green:a2.f32[1] blue:a2.f32[2] alpha:a2.f32[3]];
}

uint64_t sub_1000229F4(__n128 a1)
{
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100044400;
  *(v1 + 56) = &type metadata for Float;
  *(v1 + 64) = &protocol witness table for Float;
  *(v1 + 32) = a1.n128_u32[0];
  *(v1 + 96) = &type metadata for Float;
  *(v1 + 104) = &protocol witness table for Float;
  *(v1 + 72) = a1.n128_u32[1];
  *(v1 + 136) = &type metadata for Float;
  *(v1 + 144) = &protocol witness table for Float;
  *(v1 + 112) = a1.n128_u32[2];
  *(v1 + 176) = &type metadata for Float;
  *(v1 + 184) = &protocol witness table for Float;
  *(v1 + 152) = a1.n128_u32[3];

  return sub_10004181C();
}

id sub_100022AB4()
{
  v1 = [v0 CGColor];
  v2 = CGColorGetColorSpace(v1);

  if (v2)
  {
    ExtendedLinearized = CGColorSpaceCreateExtendedLinearized(v2);
    if (ExtendedLinearized)
    {
      v4 = ExtendedLinearized;
      v5 = [v13 CGColor];
      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v4, kCGRenderingIntentDefault, v5, 0);

      if (CopyByMatchingToColorSpace)
      {
        v7 = [objc_allocWithZone(UIColor) initWithCGColor:CopyByMatchingToColorSpace];

        return v7;
      }
    }

    else
    {
      v4 = v2;
    }
  }

  if (qword_10005CD50 != -1)
  {
    swift_once();
  }

  v9 = sub_10004166C();
  sub_100007D34(v9, qword_10005EBF8);
  v10 = sub_10004164C();
  v11 = sub_100041ABC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "cannot convert to extended linear space", v12, 2u);
  }

  return v13;
}

uint64_t sub_100022C7C()
{
  v0 = sub_10004166C();
  sub_100020EF4(v0, qword_10005EBF8);
  sub_100007D34(v0, qword_10005EBF8);
  return sub_10004165C();
}

unint64_t sub_100022D00(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100022D8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100022DCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100022DAC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100022ED8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100022DCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054B8(&qword_10005EC20, &qword_100044DE8);
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

char *sub_100022ED8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054B8(&qword_10005EC30, &qword_100045570);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

unsigned __int8 *sub_100022FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_10004137C();
  if (!result)
  {
    goto LABEL_9;
  }

  v11 = result;
  result = sub_1000413AC();
  v12 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_10004139C();
  result = sub_100022074(&v11[v12], a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return result;
}

unint64_t sub_1000230A8(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v9)
    {
      sub_10002355C(a2, a3);
      sub_10002355C(a2, a3);
      sub_100014E84(v8, v7);
      *&md = v8;
      WORD4(md) = v7;
      BYTE10(md) = BYTE2(v7);
      BYTE11(md) = BYTE3(v7);
      BYTE12(md) = BYTE4(v7);
      BYTE13(md) = BYTE5(v7);
      BYTE14(md) = BYTE6(v7);
      sub_100022074(&md, a2, a3, &v20);
      if (v3)
      {
        v7 = md;
        v10 = DWORD2(md) | ((WORD6(md) | (BYTE14(md) << 16)) << 32);
        sub_100014E84(a2, a3);
        sub_100014E84(a2, a3);
        *a1 = v7;
        a1[1] = v10;
      }

      else
      {
        v7 = v20;
        v16 = md;
        v17 = DWORD2(md) | ((WORD6(md) | (BYTE14(md) << 16)) << 32);
        sub_100014E84(a2, a3);
        sub_100014E84(a2, a3);
        *a1 = v16;
        a1[1] = v17;
      }

      return v7;
    }

    v14 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    sub_10002355C(a2, a3);
    sub_10002355C(a2, a3);
    sub_10002355C(v8, v7);
    sub_100014E84(v8, v7);
    *a1 = xmmword_100044DD0;
    sub_100014E84(0, 0xC000000000000000);
    v15 = v8 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v15 < v8)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (sub_10004137C() && __OFSUB__(v8, sub_1000413AC()))
      {
LABEL_23:
        __break(1u);
      }

      sub_1000413BC();
      swift_allocObject();
      v18 = sub_10004136C();

      v14 = v18;
    }

    if (v15 >= v8)
    {
      sub_10002355C(a2, a3);

      v7 = sub_100022FF4(v8, v8 >> 32, v14, a2, a3);
      sub_100014E84(a2, a3);

      sub_100014E84(a2, a3);
      sub_100014E84(a2, a3);
      *a1 = v8;
      a1[1] = v14 | 0x4000000000000000;
      return v7;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v9 == 2)
  {
    sub_10002355C(a2, a3);
    sub_10002355C(a2, a3);
    sub_10002355C(v8, v7);
    sub_100014E84(v8, v7);
    *&md = v8;
    *(&md + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_100044DD0;
    sub_100014E84(0, 0xC000000000000000);
    sub_1000414CC();
    v11 = *(&md + 1);
    v7 = *(md + 16);
    v12 = *(md + 24);
    sub_10002355C(a2, a3);
    v13 = sub_100022FF4(v7, v12, *(&md + 1), a2, a3);
    if (!v3)
    {
      v7 = v13;
    }

    sub_100014E84(a2, a3);
    sub_100014E84(a2, a3);
    sub_100014E84(a2, a3);
    *a1 = md;
    a1[1] = v11 | 0x8000000000000000;
  }

  else
  {
    *(&md + 7) = 0;
    *&md = 0;
    sub_100022074(&md, a2, a3, &v20);
    if (!v3)
    {
      return v20;
    }
  }

  return v7;
}

uint64_t sub_100023548(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10002355C(result, a2);
  }

  return result;
}

uint64_t sub_10002355C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000235B0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100014E84(result, a2);
  }

  return result;
}

unint64_t sub_1000235C4()
{
  result = qword_10005EC18;
  if (!qword_10005EC18)
  {
    sub_10000B940(&qword_10005EC10, &qword_100044DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EC18);
  }

  return result;
}

id sub_100023628()
{
  v0 = vcvtd_n_f64_u64(sub_100022D00(0x20000000000001uLL), 0x35uLL) + 0.0;
  v1 = vcvtd_n_f64_u64(sub_100022D00(0x20000000000001uLL), 0x35uLL) + 0.0;
  v2 = vcvtd_n_f64_u64(sub_100022D00(0x20000000000001uLL), 0x35uLL) + 0.0;
  v3 = objc_allocWithZone(UIColor);

  return [v3 initWithRed:v0 green:v1 blue:v2 alpha:1.0];
}

uint64_t sub_1000236C0()
{
  sub_10000EF68();
  v0 = sub_100041C8C();
  if (*(v0 + 16) != 4)
  {
  }

  result = sub_100041A4C();
  if (*(v0 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {

    result = sub_100041A4C();
    if (*(v0 + 16) >= 3uLL)
    {

      result = sub_100041A4C();
      if (*(v0 + 16) >= 4uLL)
      {

        return sub_100041A4C();
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_100023860()
{
  result = qword_10005EC28;
  if (!qword_10005EC28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005EC28);
  }

  return result;
}

char *sub_1000238AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = a2 - a1;
  v6 = a2 - a1 + 1;
  v7 = ~(a2 - a1);
  v8 = &_swiftEmptyArrayStorage;
  do
  {
    if (v5 == -1)
    {
      swift_stdlib_random();
      v10 = 0;
    }

    else
    {
      swift_stdlib_random();
      v9 = (0 * v6) >> 64;
      if (v7 % v6)
      {
        do
        {
          swift_stdlib_random();
        }

        while (v7 % v6);
        v9 = (0 * v6) >> 64;
      }

      v10 = v9 + a1;
    }

    v11 = 0;
    v12 = *(v8 + 2);
    while (v12 != v11)
    {
      v13 = &v8[8 * v11++];
      if (*(v13 + 4) == v10)
      {
        goto LABEL_4;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100039294(0, v12 + 1, 1, v8);
    }

    v15 = *(v8 + 2);
    v14 = *(v8 + 3);
    v12 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v8 = sub_100039294((v14 > 1), v15 + 1, 1, v8);
    }

    *(v8 + 2) = v12;
    *&v8[8 * v15 + 32] = v10;
LABEL_4:
    ;
  }

  while (v12 != a3);
  return v8;
}

uint64_t getEnumTagSinglePayload for BackgroundEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100023B84()
{
  result = qword_10005EC38;
  if (!qword_10005EC38)
  {
    sub_10000B940(&qword_10005EC40, qword_100044E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EC38);
  }

  return result;
}

uint64_t sub_100023BE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064656464;
  v3 = 0x416B636162706174;
  v4 = a1;
  v5 = 0xEB00000000676E69;
  if (a1 == 5)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x6C6C6F7263537369;
  }

  if (a1 == 5)
  {
    v5 = 0x8000000100046010;
  }

  v7 = 0x8000000100045FD0;
  if (a1 != 3)
  {
    v7 = 0x8000000100045FF0;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  v8 = 0x526B636162706174;
  v9 = 0xEE006465766F6D65;
  if (a1 != 1)
  {
    v8 = 0xD000000000000016;
    v9 = 0x8000000100045FB0;
  }

  if (!a1)
  {
    v8 = 0x416B636162706174;
    v9 = 0xEC00000064656464;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE006465766F6D65;
        if (v10 != 0x526B636162706174)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0x8000000100045FB0;
        if (v10 != 0xD000000000000016)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x8000000100046010;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0xEB00000000676E69;
        if (v10 != 0x6C6C6F7263537369)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

    if (a2 == 3)
    {
      v2 = 0x8000000100045FD0;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v2 = 0x8000000100045FF0;
    v3 = 0xD000000000000010;
  }

  if (v10 != v3)
  {
LABEL_40:
    v12 = sub_100041EEC();
    goto LABEL_41;
  }

LABEL_37:
  if (v11 != v2)
  {
    goto LABEL_40;
  }

  v12 = 1;
LABEL_41:

  return v12 & 1;
}

Swift::Int sub_100023E04(uint64_t a1, unsigned __int8 a2)
{
  sub_100041F1C();
  sub_1000418BC();

  return sub_100041F3C();
}

uint64_t sub_100023F74(uint64_t a1)
{
  sub_1000418BC();
}

unint64_t sub_1000240C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100024460(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000240F0(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v7 = 0xEC00000064656464;
    v8 = 0xEE006465766F6D65;
    v9 = 0x526B636162706174;
    if (v2 != 1)
    {
      v9 = 0xD000000000000016;
      v8 = 0x8000000100045FB0;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0x416B636162706174;
    }

    if (!v10)
    {
      v7 = v8;
    }

    *a1 = v11;
    a1[1] = v7;
  }

  else
  {
    v3 = 0x8000000100046010;
    v4 = 0xD000000000000011;
    if (v2 != 5)
    {
      v4 = 0x6C6C6F7263537369;
      v3 = 0xEB00000000676E69;
    }

    v5 = 0x8000000100045FD0;
    if (v2 != 3)
    {
      v5 = 0x8000000100045FF0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v6;
    a1[1] = v3;
  }
}

unint64_t sub_10002421C()
{
  result = qword_10005EC48;
  if (!qword_10005EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EC48);
  }

  return result;
}

uint64_t sub_100024270(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  while (1)
  {
    v3 = *(&off_1000554D0 + v2 + 32);
    v4 = sub_10004187C();
    v6 = v5;

    if (v4 == sub_10004187C() && v6 == v7)
    {
      break;
    }

    v8 = sub_100041EEC();

    if (v8)
    {
      return v3;
    }

    if (++v2 == 7)
    {
      return 7;
    }
  }

  return v3;
}

unint64_t sub_100024460(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100055548;
  v6._object = a2;
  v4 = sub_100041E2C(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

__n128 sub_1000244AC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1000244D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 126))
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

uint64_t sub_100024520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 126) = 1;
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

    *(result + 126) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100024594(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000245A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100024604(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100024674(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

__n128 sub_100024720()
{
  sub_1000054B8(&qword_10005ECF0, &unk_100045100);
  v0 = swift_allocObject();
  v0[1] = xmmword_100044F80;
  v1 = [objc_allocWithZone(UIColor) initWithRed:0.788235294 green:0.631372549 blue:0.984313725 alpha:1.0];
  v2 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.466666667 blue:0.0196078431 alpha:1.0];
  *&v3 = sub_100022754();
  v67 = v3;
  *&v4 = sub_100022754();
  v54 = v4;

  v0[2] = v67;
  v0[3] = v54;
  v5 = [objc_allocWithZone(UIColor) initWithRed:0.862745098 green:0.823529412 blue:0.949019608 alpha:1.0];
  v6 = [objc_allocWithZone(UIColor) initWithRed:0.22745098 green:0.694117647 blue:0.925490196 alpha:1.0];
  *&v7 = sub_100022754();
  v68 = v7;
  *&v8 = sub_100022754();
  v55 = v8;

  v0[4] = v68;
  v0[5] = v55;
  v9 = [objc_allocWithZone(UIColor) initWithRed:0.270588235 green:0.0274509804 blue:0.705882353 alpha:1.0];
  v10 = [objc_allocWithZone(UIColor) initWithRed:0.803921569 green:0.0196078431 blue:0.274509804 alpha:1.0];
  *&v11 = sub_100022754();
  v69 = v11;
  *&v12 = sub_100022754();
  v56 = v12;

  v0[6] = v69;
  v0[7] = v56;
  v13 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.11372549 blue:0.0745098039 alpha:1.0];
  v14 = [objc_allocWithZone(UIColor) initWithRed:0.807843137 green:0.239215686 blue:0.882352941 alpha:1.0];
  *&v15 = sub_100022754();
  v70 = v15;
  *&v16 = sub_100022754();
  v57 = v16;

  v0[8] = v70;
  v0[9] = v57;
  v17 = [objc_allocWithZone(UIColor) initWithRed:0.454901961 green:0.6 blue:0.576470588 alpha:1.0];
  v18 = [objc_allocWithZone(UIColor) initWithRed:0.843137255 green:0.941176471 blue:0.031372549 alpha:1.0];
  *&v19 = sub_100022754();
  v71 = v19;
  *&v20 = sub_100022754();
  v58 = v20;

  v0[10] = v71;
  v0[11] = v58;
  v21 = [objc_allocWithZone(UIColor) initWithRed:0.674509804 green:0.807843137 blue:0.882352941 alpha:1.0];
  v22 = [objc_allocWithZone(UIColor) initWithRed:0.949019608 green:0.0588235294 blue:0.0745098039 alpha:1.0];
  *&v23 = sub_100022754();
  v72 = v23;
  *&v24 = sub_100022754();
  v59 = v24;

  v0[12] = v72;
  v0[13] = v59;
  v25 = [objc_allocWithZone(UIColor) initWithRed:0.0352941176 green:0.470588235 blue:1.0 alpha:1.0];
  v26 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.149019608 blue:0.733333333 alpha:1.0];
  *&v27 = sub_100022754();
  v73 = v27;
  *&v28 = sub_100022754();
  v60 = v28;

  v0[14] = v73;
  v0[15] = v60;
  v29 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.152941176 blue:0.0235294118 alpha:1.0];
  v30 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.364705882 blue:0.0352941176 alpha:1.0];
  *&v31 = sub_100022754();
  v74 = v31;
  *&v32 = sub_100022754();
  v61 = v32;

  v0[16] = v74;
  v0[17] = v61;
  v33 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.0392156863 blue:0.694117647 alpha:1.0];
  v34 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.0588235294 blue:0.996078431 alpha:1.0];
  *&v35 = sub_100022754();
  v75 = v35;
  *&v36 = sub_100022754();
  v62 = v36;

  v0[18] = v75;
  v0[19] = v62;
  v37 = [objc_allocWithZone(UIColor) initWithRed:0.0274509804 green:0.498039216 blue:0.117647059 alpha:1.0];
  v38 = [objc_allocWithZone(UIColor) initWithRed:0.325490196 green:0.878431373 blue:0.0352941176 alpha:1.0];
  *&v39 = sub_100022754();
  v76 = v39;
  *&v40 = sub_100022754();
  v63 = v40;

  v0[20] = v76;
  v0[21] = v63;
  v41 = [objc_allocWithZone(UIColor) initWithRed:0.258823529 green:0.317647059 blue:0.376470588 alpha:1.0];
  v42 = [objc_allocWithZone(UIColor) initWithRed:0.549019608 green:0.658823529 blue:0.71372549 alpha:1.0];
  *&v43 = sub_100022754();
  v77 = v43;
  *&v44 = sub_100022754();
  v64 = v44;

  v0[22] = v77;
  v0[23] = v64;
  v45 = [objc_allocWithZone(UIColor) initWithRed:0.0235294118 green:0.031372549 blue:0.0431372549 alpha:1.0];
  v46 = [objc_allocWithZone(UIColor) initWithRed:0.0745098039 green:0.0862745098 blue:0.109803922 alpha:1.0];
  *&v47 = sub_100022754();
  v78 = v47;
  *&v48 = sub_100022754();
  v65 = v48;

  v0[24] = v78;
  v0[25] = v65;
  v49 = [objc_allocWithZone(UIColor) initWithRed:0.0666666667 green:0.0470588235 blue:0.0274509804 alpha:1.0];
  v50 = [objc_allocWithZone(UIColor) initWithRed:0.117647059 green:0.0705882353 blue:0.0549019608 alpha:1.0];
  *&v51 = sub_100022754();
  v79 = v51;
  v52.n128_f64[0] = sub_100022754();
  v66 = v52;

  result = v66;
  v0[26] = v79;
  v0[27] = v66;
  qword_100061170 = v0;
  return result;
}

uint64_t sub_100024EB8()
{
  if (qword_10005CD58 != -1)
  {
    result = swift_once();
  }

  if (*(qword_100061170 + 16))
  {
    v0 = *(qword_100061170 + 48);
    xmmword_100061180 = *(qword_100061170 + 32);
    *algn_100061190 = v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_100024F20(__n128 a1, __n128 a2)
{
  v36 = a1;
  v37 = a2;
  if (qword_10005CD58 != -1)
  {
    swift_once();
  }

  v2 = qword_100061170;
  v3 = *(qword_100061170 + 16);
  v4 = &_swiftEmptyArrayStorage;
  if (v3)
  {
    v44[0] = &_swiftEmptyArrayStorage;
    sub_100022D8C(0, v3, 0);
    v4 = &_swiftEmptyArrayStorage;
    v39 = "riptBackgroundPosterDelegate";
    v5 = (v2 + 48);
    v38 = xmmword_100044360;
    v43 = xmmword_100044400;
    do
    {
      v42 = v3;
      v6 = *v5;
      v40 = *(v5 - 1);
      v41 = v6;
      sub_1000054B8(&unk_10005D9B0, &unk_100044760);
      v7 = swift_allocObject();
      *(v7 + 16) = v38;
      v8 = swift_allocObject();
      *(v8 + 16) = v43;
      *(v8 + 56) = &type metadata for Float;
      *(v8 + 64) = &protocol witness table for Float;
      v9 = v40;
      *(v8 + 32) = v40;
      *(v8 + 96) = &type metadata for Float;
      *(v8 + 104) = &protocol witness table for Float;
      *(v8 + 72) = DWORD1(v9);
      *(v8 + 112) = DWORD2(v9);
      *(v8 + 136) = &type metadata for Float;
      *(v8 + 144) = &protocol witness table for Float;
      *(v8 + 176) = &type metadata for Float;
      *(v8 + 184) = &protocol witness table for Float;
      *(v8 + 152) = HIDWORD(v9);
      v10 = sub_10004181C();
      v12 = v11;
      *(v7 + 56) = &type metadata for String;
      v13 = sub_10000CBA4();
      *(v7 + 64) = v13;
      *(v7 + 32) = v10;
      *(v7 + 40) = v12;
      v14 = swift_allocObject();
      *(v14 + 16) = v43;
      *(v14 + 56) = &type metadata for Float;
      *(v14 + 64) = &protocol witness table for Float;
      v15 = v41;
      *(v14 + 32) = v41;
      *(v14 + 96) = &type metadata for Float;
      *(v14 + 104) = &protocol witness table for Float;
      *(v14 + 72) = DWORD1(v15);
      *(v14 + 112) = DWORD2(v15);
      *(v14 + 136) = &type metadata for Float;
      *(v14 + 144) = &protocol witness table for Float;
      *(v14 + 176) = &type metadata for Float;
      *(v14 + 184) = &protocol witness table for Float;
      *(v14 + 152) = HIDWORD(v15);
      v16 = sub_10004181C();
      *(v7 + 96) = &type metadata for String;
      *(v7 + 104) = v13;
      *(v7 + 72) = v16;
      *(v7 + 80) = v17;
      v18 = sub_10004181C();
      v44[0] = v4;
      v21 = v4[2];
      v20 = v4[3];
      if (v21 >= v20 >> 1)
      {
        v23 = v18;
        v24 = v19;
        sub_100022D8C((v20 > 1), v21 + 1, 1);
        v19 = v24;
        v18 = v23;
        v4 = v44[0];
      }

      v4[2] = v21 + 1;
      v22 = &v4[2 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v19;
      v5 += 2;
      v3 = v42 - 1;
    }

    while (v42 != 1);
  }

  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100044360;
  v26 = sub_1000229F4(v36);
  v28 = v27;
  *(v25 + 56) = &type metadata for String;
  v29 = sub_10000CBA4();
  *(v25 + 64) = v29;
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v30 = sub_1000229F4(v37);
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v29;
  *(v25 + 72) = v30;
  *(v25 + 80) = v31;
  v44[0] = sub_10004181C();
  v44[1] = v32;
  __chkstk_darwin(v44[0]);
  v35[2] = v44;
  v33 = sub_100024674(sub_1000257E4, v35, v4);

  return (v33 & 1) == 0;
}

Swift::Int sub_1000252B0(__n128 a1, __n128 a2)
{
  sub_100041F1C();
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100044360;
  v3 = sub_1000229F4(a1);
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  v6 = sub_10000CBA4();
  *(v2 + 64) = v6;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v7 = sub_1000229F4(a2);
  *(v2 + 96) = &type metadata for String;
  *(v2 + 104) = v6;
  *(v2 + 72) = v7;
  *(v2 + 80) = v8;
  sub_10004181C();
  sub_1000418BC();

  return sub_100041F3C();
}

uint64_t sub_1000253A8(uint64_t a1)
{
  v10 = *v1;
  v11 = v1[1];
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100044360;
  v3 = sub_1000229F4(v10);
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  v6 = sub_10000CBA4();
  *(v2 + 64) = v6;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v7 = sub_1000229F4(v11);
  *(v2 + 96) = &type metadata for String;
  *(v2 + 104) = v6;
  *(v2 + 72) = v7;
  *(v2 + 80) = v8;
  sub_10004181C();
  sub_1000418BC();
}

Swift::Int sub_100025498()
{
  v9 = *v0;
  v10 = v0[1];
  sub_100041F1C();
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100044360;
  v2 = sub_1000229F4(v9);
  v4 = v3;
  *(v1 + 56) = &type metadata for String;
  v5 = sub_10000CBA4();
  *(v1 + 64) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v6 = sub_1000229F4(v10);
  *(v1 + 96) = &type metadata for String;
  *(v1 + 104) = v5;
  *(v1 + 72) = v6;
  *(v1 + 80) = v7;
  sub_10004181C();
  sub_1000418BC();

  return sub_100041F3C();
}

uint64_t sub_1000255B8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_100041EEC() & 1;
  }
}

uint64_t sub_100025610(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vmovn_s32(vceqq_f32(a1, a3)).u32[0];
  if ((v4 & HIWORD(v4) & 1) == 0)
  {
    return 0;
  }

  v5 = 0;
  if (vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(a1, a2, 8uLL), vextq_s8(a3, a4, 8uLL)))))
  {
    v6 = vmovn_s32(vceqq_f32(a2, a4));
    if (v6.i8[4])
    {
      v5 = v6.i8[6];
    }
  }

  return v5 & 1;
}

double sub_10002566C(uint64_t a1, uint64_t a2)
{
  sub_10000EF68();
  v2 = sub_100041C8C();

  if (*(v2 + 16) == 2)
  {

    sub_10004189C();

    sub_1000236C0();
    v5 = v3;

    if (*(v2 + 16) >= 2uLL)
    {

      sub_10004189C();

      sub_1000236C0();

      return v5;
    }

    __break(1u);
    goto LABEL_7;
  }

  if (qword_10005CD60 != -1)
  {
LABEL_7:
    swift_once();
  }

  return *&xmmword_100061180;
}

uint64_t sub_1000257E4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100041EEC() & 1;
  }
}

void sub_10002583C()
{
  if (qword_10005CD58 != -1)
  {
    swift_once();
  }

  v0 = qword_100061170;
  v1 = *(qword_100061170 + 16);
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = sub_1000238AC(0, v1 - 1, 2);
  sub_1000054B8(&qword_10005ECF0, &unk_100045100);
  v3 = swift_allocObject();
  v3[1] = xmmword_100044360;
  v4 = *(v2 + 2);
  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = *(v2 + 4);
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v5 >= *(v0 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = (v0 + 32 + 32 * v5);
  v7 = v6[1];
  v3[2] = *v6;
  v3[3] = v7;
  if (v4 == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = *(v2 + 5);

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v8 < *(v0 + 16))
  {
    v9 = (v0 + 32 + 32 * v8);
    v10 = v9[1];
    v3[4] = *v9;
    v3[5] = v10;
    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_100025960(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004166C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004164C();
  v9 = sub_100041ACC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Instantiating gradient effect", v10, 2u);
  }

  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for GradientEffect(0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = 0;
  (*(v5 + 32))(v11 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension26TranscriptBackgroundEffect_logger, v7, v4);

  return v11;
}

__n128 sub_100025AF4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_100025B14()
{
  result = qword_10005ECF8;
  if (!qword_10005ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ECF8);
  }

  return result;
}

uint64_t sub_100025B68@<X0>(uint64_t *a1@<X8>)
{
  sub_10004175C();
  swift_allocObject();
  sub_10004176C();
  sub_10004172C();
  swift_allocObject();

  sub_10004173C();
  sub_1000054B8(&qword_10005ED38, &qword_100045258);
  sub_1000415AC();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100044360;
  sub_100026260(&qword_10005ED40, &type metadata accessor for PRRenderingConfiguration, &protocol conformance descriptor for PRRenderingConfiguration);

  sub_10004159C();
  sub_100026260(&qword_10005ED48, &type metadata accessor for PREditingConfiguration, &protocol conformance descriptor for PREditingConfiguration);

  sub_10004159C();

  *a1 = v2;
  return result;
}

char *sub_100025D98()
{
  v0 = sub_10004166C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005CD68 != -1)
  {
    swift_once();
  }

  v4 = sub_100007D34(v0, qword_10005ED00);
  (*(v1 + 16))(v3, v4, v0);
  v5 = objc_allocWithZone(type metadata accessor for GradientTranscriptBackgroundPosterController(0));
  return sub_10002B578(v3);
}

uint64_t sub_100025EB4()
{
  v0 = sub_10004166C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005CD68 != -1)
  {
    swift_once();
  }

  v4 = sub_100007D34(v0, qword_10005ED00);
  v5 = *(v1 + 16);
  v5(v3, v4, v0);
  v6 = type metadata accessor for GradientTranscriptBackgroundPosterDelegate(0);
  v7 = objc_allocWithZone(v6);
  v5(&v7[OBJC_IVAR____TtC33GradientBackgroundPosterExtension42GradientTranscriptBackgroundPosterDelegate_logger], v3, v0);
  v10.receiver = v7;
  v10.super_class = v6;
  objc_msgSendSuper2(&v10, "init");
  (*(v1 + 8))(v3, v0);
  sub_1000054B8(&qword_10005ED28, &unk_1000451D0);
  swift_allocObject();
  v9[1] = sub_10004174C();
  sub_100026618(&qword_10005ED30, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_10004160C();
}

uint64_t sub_1000260C0()
{
  v0 = sub_10004166C();
  sub_100020EF4(v0, qword_10005ED00);
  sub_100007D34(v0, qword_10005ED00);
  return sub_10004165C();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000261C4();
  sub_100026618(&qword_10005ED20, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_1000415EC();
  return 0;
}

unint64_t sub_1000261C4()
{
  result = qword_10005ED18;
  if (!qword_10005ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ED18);
  }

  return result;
}

uint64_t sub_100026260(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000262A8()
{
  v0 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  __chkstk_darwin(v0 - 8);
  v2 = &v17[-v1];
  v3 = sub_10004163C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10000F51C(1);
  sub_100041BEC();
  v8 = *(v7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog);
  v9 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v4 + 16))(v6, v7 + v9, v3);
  v10 = v8;
  sub_10004161C();

  (*(v4 + 8))(v6, v3);
  if (qword_10005CD30 != -1)
  {
    swift_once();
  }

  if (qword_10005CD68 != -1)
  {
    swift_once();
  }

  v11 = sub_10004166C();
  v12 = sub_100007D34(v11, qword_10005ED00);
  sub_100011A9C(v12, 0xD000000000000011, 0x8000000100047240);
  if (qword_10005CD78 != -1)
  {
    swift_once();
  }

  v13 = qword_1000611B0;
  v14 = *(v11 - 8);
  (*(v14 + 16))(v2, v12, v11);
  (*(v14 + 56))(v2, 0, 1, v11);
  v15 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension17EffectDataManager_logger;
  swift_beginAccess();
  sub_100014FA4(v2, v13 + v15);
  swift_endAccess();
  return sub_100038BA4();
}

uint64_t sub_100026618(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000B940(&qword_10005ED28, &unk_1000451D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10002666C()
{
  result = sub_10002668C();
  qword_1000611A0 = result;
  return result;
}

id sub_10002668C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_1000417CC();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    sub_1000054B8(&qword_10005ED58, &qword_100045268);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100044400;
    *(inited + 32) = 0x694B726574736F70;
    *(inited + 40) = 0xEF726F7469644574;
    *(inited + 48) = 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD000000000000013;
    *(inited + 88) = 0x8000000100047310;
    *(inited + 96) = 1;
    *(inited + 120) = &type metadata for Bool;
    strcpy((inited + 128), "useVFXSnapshot");
    *(inited + 143) = -18;
    *(inited + 144) = 1;
    *(inited + 168) = &type metadata for Bool;
    *(inited + 176) = 0xD000000000000016;
    *(inited + 184) = 0x80000001000473F0;
    *(inited + 216) = &type metadata for Bool;
    *(inited + 192) = 1;
    sub_100032E74(inited);
    swift_setDeallocating();
    sub_1000054B8(&qword_10005ED60, &unk_100045270);
    swift_arrayDestroy();
    isa = sub_10004177C().super.isa;

    [v2 registerDefaults:isa];

    return v2;
  }

  else
  {
    v6 = [objc_opt_self() standardUserDefaults];

    return v6;
  }
}

id sub_1000270BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v5 = sub_1000417CC();
  v6 = [v4 BOOLForKey:v5];

  return v6;
}

void sub_100027148(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v6 = sub_1000417CC();
  [v7 setBool:a3 forKey:v6];
}

id sub_100027308(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v5 = sub_1000417CC();
  v6 = [v4 integerForKey:v5];

  return v6;
}

void sub_100027390(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v6 = sub_1000417CC();
  [v7 setInteger:a3 forKey:v6];
}

void sub_100027410()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_simulationSpeedManager;
  if (*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_simulationSpeedManager))
  {

    sub_100009678(v3);

    v4 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor;
    if (*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor))
    {

      sub_100014310(v5);

      *(v0 + v2) = 0;

      *(v0 + v4) = 0;

      sub_1000097B0(v0 + 32);
      v6 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_logger;
      v7 = sub_10004166C();
      (*(*(v7 - 8) + 8))(v1 + v6, v7);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100027504()
{
  sub_100027410();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LifecycleManager(uint64_t a1)
{
  result = qword_10005EDB8;
  if (!qword_10005EDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000275B0(uint64_t a1)
{
  result = sub_10004166C();
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

void sub_100027674(uint64_t result)
{
  if ((*(v1 + 16) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_forceAlwaysRunning) & 1) == 0)
  {
    v2 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor);
    if (v2)
    {
      if ((*(v2 + 16) & 1) != 0 || *(v2 + 24) == 3)
      {
        v3 = sub_10004164C();
        v4 = sub_100041A9C();
        if (os_log_type_enabled(v3, v4))
        {
          v5 = swift_slowAlloc();
          *v5 = 0;
          _os_log_impl(&_mh_execute_header, v3, v4, "cannot Resume Running: shouldReduceResourcesUsage", v5, 2u);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100027780(uint64_t a1, unint64_t a2)
{
  sub_100027674(a1);
  if ((v5 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v9 = Strong;
    v16 = *(Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
    if (v16)
    {
      v11 = *(v16 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

      os_unfair_lock_lock(v11);
      v12 = *(v16 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
      v13 = v12;
      v14 = 0;
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v6 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_simulationSpeedManager);
  if (!v6)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed;
  if (*(v7 + 4))
  {
    return;
  }

  if (*v7 <= 0.0)
  {
    return;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = *(v8 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
  if (!v10)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v11 = *(v10 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

  os_unfair_lock_lock(v11);
  v12 = *(v10 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
  v13 = v12;
  v14 = 1;
LABEL_11:
  sub_10003FC50(v12, v14, v9, a1, a2);

  os_unfair_lock_unlock(v11);
  swift_unknownObjectRelease();
}

char *sub_1000278F8(uint64_t a1)
{
  if ((*(v1 + 16) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_forceAlwaysRunning) & 1) == 0)
  {
    v2 = sub_10004164C();
    v3 = sub_100041A9C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Set State to idle", v4, 2u);
    }

    a1 = sub_100027B3C(v5);
  }

  sub_100027674(a1);
  v7 = v6;
  result = swift_unknownObjectWeakLoadStrong();
  v9 = result;
  if (v7)
  {
    if (!result)
    {
      return result;
    }

    v10 = *&result[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

      os_unfair_lock_lock(v11);
      v12 = *(v10 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
      sub_10003FC50(v12, 1, v9, 0x6C616974696E69, 0xE700000000000000);

      os_unfair_lock_unlock(v11);
      swift_unknownObjectRelease();
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (result)
  {
    v13 = *&result[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
    if (!v13)
    {
      goto LABEL_20;
    }

    v14 = *(v13 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

    os_unfair_lock_lock(v14);
    v15 = *(v13 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
    sub_10003FC50(v15, 0, v9, 0x206C616974696E69, 0xEE00636974617473);

    os_unfair_lock_unlock(v14);
    swift_unknownObjectRelease();
  }

  return sub_100027CD8(result);
}

uint64_t sub_100027B3C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10004164C();
  v4 = sub_100041A9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Set Idle State", v5, 2u);
  }

  v6 = *(v2 + 24);
  v7 = *(v6 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

  os_unfair_lock_lock(v7);
  v8 = *(v6 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
  v9 = [v8 rootNode];
  v10 = sub_1000417CC();
  v11 = [v9 childNodeWithName:v10 recursively:1];

  if (v11)
  {
    v12 = sub_1000417CC();
    [v11 setStateNamed:v12];
  }

  os_unfair_lock_unlock(v7);
}

uint64_t sub_100027CD8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10004164C();
  v4 = sub_100041A9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Set Render Static", v5, 2u);
  }

  v6 = *(v2 + 24);
  v7 = *(v6 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

  os_unfair_lock_lock(v7);
  v8 = *(v6 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
  sub_100027DD0(v8);

  os_unfair_lock_unlock(v7);
}

void sub_100027DD0(void *a1)
{
  v1 = [a1 rootNode];
  v2 = sub_1000417CC();
  v3 = [v1 childNodeWithName:v2 recursively:1];

  if (v3)
  {
    v4 = [v3 parameters];

    if (v4)
    {
      isa = sub_1000419DC().super.super.isa;
      v6 = sub_1000417CC();
      [v4 setObject:isa forKeyedSubscript:v6];
      swift_unknownObjectRelease();
    }
  }
}

void *sub_100027F04(uint64_t a1)
{
  v2 = sub_100041CBC();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1000335B8(v2, *(a1 + 36), 0, a1);
  v5 = v4;
  return v4;
}

uint64_t sub_100027F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_10002DE5C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10002C494(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_10002E678();
        v14 = v16;
      }

      result = sub_10002DB30(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_10002806C(float32x4_t a1, float32x4_t a2)
{
  if (qword_10005CD20 != -1)
  {
    swift_once();
  }

  v2 = qword_100061088;
  v11._countAndFlagsBits = 0xE000000000000000;
  v15._countAndFlagsBits = 0x4D4F54535543;
  v15._object = 0xE600000000000000;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v3.super.isa = qword_100061088;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v4 = sub_1000413CC(v15, v16, v3, v18, 0, v11);
  if (qword_10005CD58 != -1)
  {
    swift_once();
  }

  v5 = sub_10002C2B8(qword_100061170, a1, a2);
  if (v6)
  {
    return v4;
  }

  v8 = v5;

  if (__OFADD__(v8, 1))
  {
    __break(1u);
    JUMPOUT(0x100028380);
  }

  switch(v8)
  {
    case 0:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x4F474E414DLL;
      v9._object = 0xE500000000000000;
      goto LABEL_23;
    case 1:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 4539209;
      v9._object = 0xE300000000000000;
      goto LABEL_23;
    case 2:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 1297435728;
      v9._object = 0xE400000000000000;
      goto LABEL_23;
    case 3:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x4145535F50454544;
      v9._object = 0xE800000000000000;
      goto LABEL_23;
    case 4:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x50415F4E45455247;
      v9._object = 0xEB00000000454C50;
      goto LABEL_23;
    case 5:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x595252454843;
      goto LABEL_22;
    case 6:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x5547454C42425542;
      v9._object = 0xE90000000000004DLL;
      goto LABEL_23;
    case 7:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x4E495245474E4154;
      v9._object = 0xE900000000000045;
      goto LABEL_23;
    case 8:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x41544E4547414DLL;
      v9._object = 0xE700000000000000;
      goto LABEL_23;
    case 9:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 1162692940;
      v9._object = 0xE400000000000000;
      goto LABEL_23;
    case 10:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x5245564C4953;
      goto LABEL_22;
    case 11:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x4E4F42524143;
      goto LABEL_22;
    case 12:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x454E4F5453;
      v9._object = 0xE500000000000000;
      goto LABEL_23;
    default:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x4D4F54535543;
LABEL_22:
      v9._object = 0xE600000000000000;
LABEL_23:
      v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v17.value._object = 0xEB00000000656C62;
      v10.super.isa = v2;
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      result = sub_1000413CC(v9, v17, v10, v19, 0, v12);
      break;
  }

  return result;
}

void sub_1000283DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_100028428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000054B8(&qword_10005D9A0, &qword_100044440);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100037A80(a3, v25 - v10, &qword_10005D9A0, &qword_100044440);
  v12 = sub_100041A0C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100015014(v11, &qword_10005D9A0, &qword_100044440);
  }

  else
  {
    sub_1000419FC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000419EC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10004188C() + 32;
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

      sub_100015014(a3, &qword_10005D9A0, &qword_100044440);

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

  sub_100015014(a3, &qword_10005D9A0, &qword_100044440);
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

uint64_t sub_100028728(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100028B18(void *a1)
{
  v2 = v1;
  v3 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  v31[0] = 0;
  v4 = [v3 loadUserInfoWithError:v31];
  swift_unknownObjectRelease();
  v5 = v31[0];
  if (v4)
  {
    v6 = sub_10004178C();
    v7 = v5;

    sub_100041CFC();
    if (*(v6 + 16) && (v8 = sub_10002C594(v31), (v9 & 1) != 0))
    {
      sub_10000B78C(*(v6 + 56) + 32 * v8, v32);
      sub_10000BAB0(v31);

      if (swift_dynamicCast())
      {
        v10 = 0x6D6F74737563;

        v11 = sub_10004164C();
        v12 = sub_100041ACC();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v31[0] = v14;
          *v13 = 136315138;
          *(v13 + 4) = sub_10000B1E4(0x6D6F74737563, 0xE600000000000000, v31);
          v15 = "initialLookIdentifier custom variant: %s";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v11, v12, v15, v13, 0xCu);
          sub_100005500(v14);

          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else
    {

      sub_10000BAB0(v31);
    }
  }

  else
  {
    v16 = v31[0];
    sub_1000413EC();

    swift_willThrow();
  }

  v17 = (*(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager) + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect);
  swift_beginAccess();
  v18 = sub_10000BA6C(v17, v17[3]);
  v29 = *v18;
  v30 = v18[1];
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100044360;
  v20 = sub_1000229F4(v29);
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  v23 = sub_10000CBA4();
  *(v19 + 64) = v23;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v24 = sub_1000229F4(v30);
  *(v19 + 96) = &type metadata for String;
  *(v19 + 104) = v23;
  *(v19 + 72) = v24;
  *(v19 + 80) = v25;
  v10 = sub_10004181C();
  v27 = v26;

  v11 = sub_10004164C();
  v12 = sub_100041ACC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000B1E4(v10, v27, v32);
    v15 = "initialLookIdentifier currentEffect: %s";
    goto LABEL_11;
  }

LABEL_12:

  return v10;
}

void sub_1000290E8(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 CGContext];
  v11 = [a2 CGColor];
  CGContextSetFillColorWithColor(v10, v11);

  v12 = [a1 CGContext];
  CGContextSetLineWidth(v12, a3);

  v13 = [a1 CGContext];
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
  v16 = [v14 resolvedColorWithTraitCollection:v15];

  v17 = [v16 CGColor];
  CGContextSetStrokeColorWithColor(v13, v17);

  v18 = [a1 CGContext];
  v21.origin.x = a3;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGContextAddEllipseInRect(v18, v21);

  v19 = [a1 CGContext];
  CGContextDrawPath(v19, kCGPathFillStroke);
}

void sub_1000292D4(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  if (a1)
  {
    v4 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
    swift_beginAccess();
    sub_10000BA08(v3 + v4, v21);
    sub_1000054B8(&qword_10005F2C8, &qword_100045468);
    if (swift_dynamicCast())
    {
      v5 = v22;
LABEL_6:
      v7 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v5);
      goto LABEL_8;
    }
  }

  else
  {
    v6 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
    swift_beginAccess();
    sub_10000BA08(v3 + v6, v21);
    sub_1000054B8(&qword_10005F2C8, &qword_100045468);
    if (swift_dynamicCast())
    {
      v5 = v23;
      goto LABEL_6;
    }
  }

  v7 = [objc_opt_self() clearColor];
LABEL_8:
  v8 = v7;
  v9 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
  v10 = [objc_allocWithZone(PRPosterColor) initWithColor:v8];
  [v9 setSelectedColor:v10];

  v11 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor;
  v12 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor);
  if (v12)
  {
    v13 = v12;
    v14 = sub_1000417CC();

    v15 = [v13 viewForMenuElementIdentifier:v14];
  }

  else
  {
    v15 = 0;
  }

  [v9 setColorPickerSourceItem:v15];
  swift_unknownObjectRelease();
  v16 = *(v1 + v11);
  if (v16)
  {
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a1 & 1;
    v21[4] = sub_1000379B4;
    v21[5] = v18;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_10000F91C;
    v21[3] = &unk_100056870;
    v19 = _Block_copy(v21);
    v20 = v16;

    [v20 presentColorPickerWithConfiguration:v9 changeHandler:v19];

    _Block_release(v19);
    v8 = v20;
  }

  else
  {
  }
}

void sub_100029658(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1000292D4(a3 & 1);
  }
}

Class sub_1000296CC(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v6 = a3;
  v7 = a1;
  v8 = a4();

  if (v8)
  {
    sub_10000BB04(0, &qword_10005F308, UIMenuElement_ptr);
    v9.super.isa = sub_10004197C().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

void sub_10002976C(void *a1, uint64_t a2, char a3)
{
  v4 = convert(a1);
  v5 = sub_100022AB4();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100029800(v5, a3 & 1);

    v5 = v7;
  }
}

void sub_100029800(void *a1, char a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  v7 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000BA08(v6 + v7, &v59);
  sub_1000054B8(&qword_10005F2C8, &qword_100045468);
  if (swift_dynamicCast())
  {
    v8 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v57);
  }

  else
  {
    v8 = [objc_opt_self() clearColor];
  }

  v9 = v8;
  sub_10000BA08(v6 + v7, &v59);
  if (swift_dynamicCast())
  {
    v10 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v58);
  }

  else
  {
    v10 = [objc_opt_self() clearColor];
  }

  v11 = v10;
  v12 = [a1 colorWithAlphaComponent:1.0];
  if (a2)
  {
    v13.n128_f64[0] = sub_100022754();
    v14 = sub_1000229F4(v13);
    v16 = v15;
    v17.n128_f64[0] = sub_100022754();
    if (v14 == sub_1000229F4(v17) && v16 == v18)
    {

LABEL_14:

      return;
    }

    v25 = sub_100041EEC();

    if (v25)
    {

      return;
    }

    v9 = v12;
  }

  else
  {
    v19.n128_f64[0] = sub_100022754();
    v20 = sub_1000229F4(v19);
    v22 = v21;
    v23.n128_f64[0] = sub_100022754();
    if (v20 == sub_1000229F4(v23) && v22 == v24)
    {

      goto LABEL_14;
    }

    v26 = sub_100041EEC();

    if (v26)
    {

      return;
    }

    v11 = v12;
  }

  sub_10000BA08(v6 + v7, &v59);
  v54 = v12;
  if (swift_dynamicCast())
  {
    v27 = sub_100024F20(v57, v58);
    v28 = v9;
    v29 = v11;
    v30.n128_f64[0] = sub_100022754();
    v56 = v30;
    v31.n128_f64[0] = sub_100022754();
    v55 = v31;

    v53 = v29;
    sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100044360;
    v33 = sub_1000229F4(v56);
    v35 = v34;
    *(v32 + 56) = &type metadata for String;
    v36 = sub_10000CBA4();
    *(v32 + 64) = v36;
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    v37 = sub_1000229F4(v55);
    *(v32 + 96) = &type metadata for String;
    *(v32 + 104) = v36;
    *(v32 + 72) = v37;
    *(v32 + 80) = v38;
    v39 = sub_10004181C();
    v41 = v39;
    v42 = v40;
    if (v27)
    {
      sub_10000BED0(v39, v40);
    }

    v60 = &type metadata for GradientTranscriptBackground;
    v61 = &off_100056488;
    v43 = swift_allocObject();
    *&v59 = v43;
    *(v43 + 16) = v56;
    *(v43 + 32) = v55;
    swift_beginAccess();
    sub_100005500((v6 + v7));
    sub_10000B9F0(&v59, v6 + v7);
    swift_endAccess();
    if (qword_10005CD70 != -1)
    {
      swift_once();
    }

    v44 = qword_1000611A0;
    v45 = sub_1000417CC();
    [v44 setCustomVariant:v45];

    v46 = sub_10004164C();
    v47 = sub_100041ACC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v59 = v49;
      *v48 = 136315138;
      v50 = sub_10000B1E4(v41, v42, &v59);

      *(v48 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v46, v47, "looks saving customVariant: %s", v48, 0xCu);
      sub_100005500(v49);
    }

    else
    {
    }

    v51 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor);
    if (v27)
    {
      [v51 updateActions];
      sub_100031820(v6, v56, v55, 1.0);
    }

    else
    {
      v52 = v51;
      [v52 updateLooksWithoutBuilding];
    }
  }

  else
  {
    sub_100041DCC();
    __break(1u);
  }
}

Class sub_100029ED8(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void), unint64_t *a5, void *a6)
{
  v10 = a3;
  v11 = a1;
  a4();

  sub_10000BB04(0, a5, a6);
  v12.super.isa = sub_10004197C().super.isa;

  return v12.super.isa;
}

uint64_t sub_100029F74(void *a1, void *a2)
{
  swift_unknownObjectRetain_n();
  v5 = v2;
  v6 = sub_10004164C();
  v7 = sub_100041ACC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&aBlock = v9;
    *v8 = 134218754;
    v10 = *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID];

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v67[0] = a2;
    swift_unknownObjectRetain();
    sub_1000054B8(&qword_10005F250, &qword_100045450);
    v11 = sub_10004186C();
    v13 = sub_10000B1E4(v11, v12, &aBlock);

    *(v8 + 14) = v13;
    *(v8 + 22) = 1024;
    LODWORD(v10) = [a2 isPreview];
    swift_unknownObjectRelease();
    *(v8 + 24) = v10;
    swift_unknownObjectRelease();
    *(v8 + 28) = 1024;
    LODWORD(v10) = [a2 isSnapshot];
    swift_unknownObjectRelease();
    *(v8 + 30) = v10;
    swift_unknownObjectRelease();
    _os_log_impl(&_mh_execute_header, v6, v7, "#%ld didInitialize env:%s isPreview: %{BOOL}d isSnapshot: %{BOOL}d", v8, 0x22u);
    sub_100005500(v9);
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  v14 = *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_renderer];
  *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_renderer] = a1;
  v15 = a1;

  v16 = [a2 isPreview];
  v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_isPreview] = v16;
  v17 = [a2 isSnapshot];
  v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_isSnapshotMode] = v17;
  v18 = [v15 backgroundView];
  v19 = *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager];
  sub_10000BB8C([a2 deviceOrientation], 0.0);
  v20 = [a2 contents];
  *&aBlock = 0;
  v21 = [v20 loadUserInfoWithError:&aBlock];
  swift_unknownObjectRelease();
  v22 = aBlock;
  if (v21)
  {
    v58 = v18;
    v23 = sub_10004178C();
    v24 = v22;

    v25 = v5;

    v26 = sub_10004164C();
    v27 = sub_100041ACC();

    if (os_log_type_enabled(v26, v27))
    {
      v56 = v15;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&aBlock = v29;
      *v28 = 134218242;
      *(v28 + 4) = *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID];

      *(v28 + 12) = 2080;
      v30 = sub_10004179C();
      v32 = sub_10000B1E4(v30, v31, &aBlock);

      *(v28 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "#%ld didInitialize userInfo: %s", v28, 0x16u);
      sub_100005500(v29);

      v15 = v56;
    }

    else
    {
    }

    v59 = 0x6D6F74737563;
    v60 = 0xE600000000000000;
    sub_100041CFC();
    v18 = v58;
    if (*(v23 + 16) && (v34 = sub_10002C594(&aBlock), (v35 & 1) != 0))
    {
      sub_10000B78C(*(v23 + 56) + 32 * v34, v67);
      sub_10000BAB0(&aBlock);

      if (swift_dynamicCast())
      {
        *&v36 = sub_10002566C(v59, v60);
        v55 = v37;
        v57 = v36;
        v64 = &type metadata for GradientTranscriptBackground;
        v65 = &off_100056488;
        v38 = swift_allocObject();
        *&aBlock = v38;
        *(v38 + 16) = v57;
        *(v38 + 32) = v55;
        v39 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
        swift_beginAccess();
        sub_100005500((v19 + v39));
        sub_10000B9F0(&aBlock, v19 + v39);
        swift_endAccess();
      }
    }

    else
    {

      sub_10000BAB0(&aBlock);
    }
  }

  else
  {
    v33 = aBlock;
    sub_1000413EC();

    swift_willThrow();
  }

  v40 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000BA08(v19 + v40, v67);
  sub_10000BA08(v67, &aBlock);
  v41 = v5;
  v42 = sub_10004164C();
  v43 = sub_100041ACC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61 = v45;
    *v44 = 134218242;
    *(v44 + 4) = *&v41[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID];

    *(v44 + 12) = 2080;
    sub_10000BA08(&aBlock, &v59);
    sub_1000054B8(&qword_10005F2C8, &qword_100045468);
    v46 = sub_10004186C();
    v48 = v47;
    sub_100005500(&aBlock);
    v49 = sub_10000B1E4(v46, v48, &v61);

    *(v44 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v42, v43, "#%ld didInitialize currentEffect: %s", v44, 0x16u);
    sub_100005500(v45);
  }

  else
  {

    sub_100005500(&aBlock);
  }

  v50 = sub_10000BA6C(v67, v67[3]);
  sub_100032448(v18, v19, *v50, v50[1]);
  v51 = swift_allocObject();
  *(v51 + 16) = 1;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1000371D4;
  *(v52 + 24) = v51;
  v65 = sub_1000371DC;
  v66 = v52;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v63 = sub_10002C42C;
  v64 = &unk_1000566B8;
  v53 = _Block_copy(&aBlock);

  [v15 updatePreferences:v53];

  _Block_release(v53);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
  }

  return sub_100005500(v67);
}

void sub_10002AB6C(void *a1, void *a2, void *a3)
{
  swift_getObjectType();
  v7 = [a2 deviceOrientation];
  v8 = 0.0;
  if (a3)
  {
    v9 = [a3 animationSettings];
    if (v9)
    {
      v10 = v9;
      [v9 duration];
      v8 = v11;
    }
  }

  sub_10000BB8C(v7, v8);
  if ([a2 isSnapshot])
  {
    v12 = sub_10002BA08();
    if (v12)
    {
      v13 = v12;
      if (*(v12 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting))
      {
      }

      else
      {
        v54 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting;
        v14 = a3;
        swift_unknownObjectRetain_n();
        v55 = v3;
        v15 = a1;
        v16 = sub_10004164C();
        v17 = sub_100041ACC();
        v52 = v14;

        v53 = v17;
        if (os_log_type_enabled(v16, v17))
        {
          v57 = v15;
          v18 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *&v60[0] = swift_slowAlloc();
          *v18 = 134219266;
          v19 = *&v55[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID];

          *(v18 + 4) = v19;
          *(v18 + 12) = 2112;
          *(v18 + 14) = v57;
          *v51 = v57;
          *(v18 + 22) = 2080;
          swift_unknownObjectRetain();
          v20 = v57;
          sub_1000054B8(&qword_10005F250, &qword_100045450);
          v21 = sub_10004186C();
          v23 = sub_10000B1E4(v21, v22, v60);

          *(v18 + 24) = v23;
          *(v18 + 32) = 2080;
          v59 = a3;
          v24 = v52;
          sub_1000054B8(&qword_10005F258, &unk_100045458);
          v25 = sub_10004186C();
          v27 = sub_10000B1E4(v25, v26, v60);

          *(v18 + 34) = v27;
          *(v18 + 42) = 1024;
          v28 = [a2 isPreview];
          swift_unknownObjectRelease();
          *(v18 + 44) = v28;
          swift_unknownObjectRelease();
          *(v18 + 48) = 1024;
          v29 = [a2 isSnapshot];
          swift_unknownObjectRelease();
          *(v18 + 50) = v29;
          swift_unknownObjectRelease();
          _os_log_impl(&_mh_execute_header, v16, v53, "#%ld %@ didUpdate env:%s transition: %s isPreview: %{BOOL}d isSnapshot: %{BOOL}d", v18, 0x36u);
          sub_100015014(v51, &qword_10005E240, &qword_100043C90);

          swift_arrayDestroy();

          v15 = v57;

          v30 = v55;
        }

        else
        {

          v30 = v55;
          swift_unknownObjectRelease_n();
        }

        v31 = swift_allocObject();
        v31[2].isa = v13;
        v32 = v13;
        sub_10003C054(sub_100037128, v31);

        LOBYTE(v31) = sub_100015870();

        if ((v31 & 1) != 0 && (*(v13 + v54) & 1) == 0)
        {
          *(v13 + v54) = 1;
          sub_10003EAB0();
        }

        v33 = v30;
        v34 = sub_10004164C();
        v35 = sub_100041ACC();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 134217984;
          *(v36 + 4) = *(v33 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID);

          _os_log_impl(&_mh_execute_header, v34, v35, "#%ld taking assertion snapshot", v36, 0xCu);
        }

        else
        {

          v34 = v33;
        }

        v37 = sub_1000417CC();
        v38 = [v15 extendRenderingSessionForReason:v37];

        v39 = *(v32 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
        if (v39)
        {
          v40 = *(v32 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed + 8);

          v39(v41);
          sub_100016A34(v39, v40);
        }

        v42 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v43 = swift_allocObject();
        *(v43 + 16) = v38;
        *(v43 + 24) = v42;
        v44 = v38;

        sub_10003EC98(sub_1000371BC, v43);
      }
    }
  }

  type metadata accessor for TranscriptBackgroundView(0);
  sub_100008D48(a2, v60);
  if ((v62 & 1) == 0)
  {
    v56 = v60[1];
    v58 = v60[0];
    v45 = v61;
    v46 = sub_10002BA08();
    if (v46)
    {
      v47 = v46;
      if ([*&v46[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView] rendersContinuously] && (v48 = *&v47[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor]) != 0)
      {
        swift_unknownObjectWeakInit();
        v49 = *(v48 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

        os_unfair_lock_lock(v49);
        v50 = *(v48 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
        sub_100008954(v50, &v59, v58, v56, v45);

        os_unfair_lock_unlock(v49);

        swift_unknownObjectWeakDestroy();
      }

      else
      {
      }
    }
  }
}

void *sub_10002B244(void *a1, uint64_t a2)
{
  v3 = sub_10004166C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [objc_msgSend(a1 "assertion")];
  swift_unknownObjectRelease();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    (*(v4 + 16))(v6, result + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_logger, v3);

    v9 = sub_10004164C();
    v10 = sub_100041ACC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = -1;
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = *&Strong[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID];
      }

      *(v12 + 4) = v11;

      _os_log_impl(&_mh_execute_header, v9, v10, "#%ld releasing assertion snapshot", v12, 0xCu);
    }

    else
    {
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

char *sub_10002B578(uint64_t a1)
{
  v3 = sub_10004166C();
  v32 = *(v3 - 8);
  __chkstk_darwin(v3);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004163C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_renderer] = 0;
  *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor] = 0;
  *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_lastProgressValue] = 0;
  v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_isPreview] = 0;
  v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_isSnapshotMode] = 0;
  v9 = sub_10000F51C(1);
  sub_100041BEC();
  v10 = *(v9 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog);
  v11 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v6 + 16))(v8, v9 + v11, v5);
  v12 = v10;
  sub_10004161C();

  (*(v6 + 8))(v8, v5);
  v13 = qword_1000611A8 + 1;
  if (__OFADD__(qword_1000611A8, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

  ++qword_1000611A8;
  v14 = *(v32 + 16);
  v14(&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_logger], a1, v3);
  *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID] = v13;
  v14(v31, a1, v3);
  if (qword_10005CD60 != -1)
  {
LABEL_5:
    swift_once();
  }

  v29 = *algn_100061190;
  v30 = xmmword_100061180;
  v15 = type metadata accessor for TranscriptBackgroundGradientEffectFactory();
  v16 = swift_allocObject();
  v35[3] = &type metadata for GradientTranscriptBackground;
  v35[4] = &off_100056488;
  v17 = swift_allocObject();
  v35[0] = v17;
  v18 = v29;
  *(v17 + 16) = v30;
  *(v17 + 32) = v18;
  v34[3] = v15;
  v34[4] = &off_1000563F8;
  v34[0] = v16;
  type metadata accessor for ViewsManager(0);
  v19 = swift_allocObject();
  v20 = sub_100032E24(v35, &type metadata for GradientTranscriptBackground);
  v21 = sub_100032E24(v34, v15);
  __chkstk_darwin(v21);
  v23 = (&v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = sub_10002EC9C(v31, *v23, v19, *v20, v20[1]);
  sub_100005500(v34);
  sub_100005500(v35);
  *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager] = v25;
  v26 = type metadata accessor for GradientTranscriptBackgroundPosterController(0);
  v33.receiver = v1;
  v33.super_class = v26;
  v27 = objc_msgSendSuper2(&v33, "init");
  (*(v32 + 8))(a1, v3);
  *(*&v27[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager] + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_delegate + 8) = &off_1000564D8;
  swift_unknownObjectWeakAssign();
  return v27;
}

id sub_10002BA08()
{
  v1 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  v2 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {

    v4 = sub_10002C494(0xD000000000000011, 0x80000001000467B0);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      v7 = *(v6 + 16);

      return v7;
    }
  }

  return 0;
}

id sub_10002BACC(uint64_t a1)
{
  v1 = sub_10004164C();
  v2 = sub_100041ACC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_10000B1E4(0xD000000000000018, 0x8000000100046790, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_100005500(v4);
  }

  return sub_10000C6B4(v5);
}

uint64_t sub_10002BC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = sub_10004168C();
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000416DC();
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000416FC();
  v26 = v11;
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v25 - v17;
  sub_10002BACC(v16);
  v19 = *(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_renderer);
  *(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_renderer) = 0;

  sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
  v20 = sub_100041B0C();
  sub_1000416EC();
  sub_10004171C();
  v25 = *(v12 + 8);
  v25(v15, v11);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  aBlock[4] = sub_10003706C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028728;
  aBlock[3] = &unk_1000565C8;
  v22 = _Block_copy(aBlock);

  sub_1000416AC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100037AE8(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000054B8(&unk_10005D640, "B|");
  sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
  v23 = v27;
  sub_100041CAC();
  sub_100041AEC();
  _Block_release(v22);

  (*(v30 + 8))(v7, v23);
  (*(v28 + 8))(v10, v29);
  return (v25)(v18, v26);
}