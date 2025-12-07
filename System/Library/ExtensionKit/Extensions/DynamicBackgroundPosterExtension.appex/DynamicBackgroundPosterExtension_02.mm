void sub_100031208(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(v8, a4);

  swift_unknownObjectRelease();
}

void sub_10003159C(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager];
  swift_getObjectType();
  v9 = [a2 deviceOrientation];
  v10 = 0.0;
  if (a3)
  {
    v11 = [a3 animationSettings];
    if (v11)
    {
      v12 = v11;
      [v11 duration];
      v10 = v13;
    }
  }

  sub_100010FE4(v9, v10);
  if ([a2 isSnapshot])
  {
    v14 = sub_100032974();
    if (v14)
    {
      if (*(v14 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting))
      {
      }

      else
      {
        v53 = v14;
        v56 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting;
        v15 = a3;
        swift_unknownObjectRetain_n();
        v54 = v4;
        v16 = a1;
        v17 = sub_10004CEDC();
        v18 = sub_10004D39C();

        v52 = v18;
        log = v17;
        if (os_log_type_enabled(v17, v18))
        {
          v58 = v16;
          v19 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *&v63[0] = swift_slowAlloc();
          *v19 = 134219266;
          v20 = v54;
          v21 = *&v54[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID];

          *(v19 + 4) = v21;
          *(v19 + 12) = 2112;
          *(v19 + 14) = v58;
          *v51 = v58;
          *(v19 + 22) = 2080;
          swift_unknownObjectRetain();
          v22 = v58;
          sub_10000CC1C(&qword_100070A48, &qword_100051750);
          v23 = sub_10004D0FC();
          v25 = sub_10000C618(v23, v24, v63);

          *(v19 + 24) = v25;
          *(v19 + 32) = 2080;
          v60[0] = a3;
          v26 = v15;
          sub_10000CC1C(&unk_100070A50, qword_100051758);
          v27 = sub_10004D0FC();
          v29 = sub_10000C618(v27, v28, v63);

          *(v19 + 34) = v29;
          *(v19 + 42) = 1024;
          LODWORD(v25) = [a2 isPreview];
          swift_unknownObjectRelease();
          *(v19 + 44) = v25;
          swift_unknownObjectRelease();
          *(v19 + 48) = 1024;
          LODWORD(v25) = [a2 isSnapshot];
          swift_unknownObjectRelease();
          *(v19 + 50) = v25;
          swift_unknownObjectRelease();
          _os_log_impl(&_mh_execute_header, log, v52, "#%ld %@ didUpdate env:%s transition: %s isPreview: %{BOOL}d isSnapshot: %{BOOL}d", v19, 0x36u);
          sub_100024DC8(v51, &qword_1000703F0, &qword_100050B90);

          swift_arrayDestroy();

          v16 = v58;
        }

        else
        {

          v20 = v54;
          swift_unknownObjectRelease_n();
        }

        v30 = v20;
        v31 = sub_10004CEDC();
        v32 = sub_10004D39C();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 134217984;
          *(v33 + 4) = *(v30 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID);

          _os_log_impl(&_mh_execute_header, v31, v32, "#%ld taking assertion snapshot", v33, 0xCu);
        }

        else
        {

          v31 = v30;
        }

        v34 = swift_allocObject();
        v34[2].isa = v53;
        v35 = v53;
        sub_10002A5FC(sub_10003E128, v34);

        LOBYTE(v34) = sub_10001F534();

        if ((v34 & 1) != 0 && (*(v53 + v56) & 1) == 0)
        {
          *(v53 + v56) = 1;
          sub_10002D0B8();
        }

        v36 = sub_10004D05C();
        v37 = [v16 extendRenderingSessionForReason:v36];

        v38 = *(v35 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
        if (v38)
        {
          v39 = *(v35 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed + 8);

          v38(v40);
          sub_100020718(v38, v39);
        }

        v41 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v42 = swift_allocObject();
        *(v42 + 16) = v37;
        *(v42 + 24) = v41;
        v43 = v37;

        sub_10002D2A0(sub_10003E1BC, v42);
      }
    }
  }

  v44 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v8 + v44, v63);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (swift_dynamicCast())
  {
    if (v62 == 3)
    {

      type metadata accessor for TranscriptBackgroundView(0);
      sub_100018394(a2, v63);
      if ((v65 & 1) == 0)
      {
        v57 = v63[1];
        v59 = v63[0];
        v45 = v64;
        v46 = sub_100032974();
        if (v46)
        {
          v47 = v46;
          if ([*&v46[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView] rendersContinuously] && (v48 = *&v47[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor]) != 0)
          {
            swift_unknownObjectWeakInit();
            v49 = *(v48 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

            os_unfair_lock_lock(v49);
            v50 = *(v48 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
            sub_100017FA0(v50, v60, v59, v57, v45);

            os_unfair_lock_unlock(v49);

            swift_unknownObjectWeakDestroy();
          }

          else
          {
          }
        }
      }
    }

    else
    {
      sub_100010F08(v60[0], v60[1], v61, v62);
    }
  }

  else
  {
    sub_10004D66C();
    __break(1u);
  }
}

void *sub_100031D54(void *a1, uint64_t a2)
{
  v3 = sub_10004CEFC();
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
    (*(v4 + 16))(v6, result + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_logger, v3);

    v9 = sub_10004CEDC();
    v10 = sub_10004D39C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = -1;
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = *&Strong[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID];
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

char *sub_100032100(uint64_t a1)
{
  v35 = a1;
  v2 = sub_10004CEFC();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = __chkstk_darwin(v2);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v32 - v5;
  v7 = sub_10004CECC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID;
  *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID] = 0;
  v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_isPreview] = 0;
  *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_lastProgressValue] = 0;
  *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_renderer] = 0;
  *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor] = 0;
  v12 = &v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType];
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = 0;
  v12[24] = -1;
  v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_isSnapshotMode] = 0;
  *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_glitterParametersObservation] = &_swiftEmptyArrayStorage;
  v13 = sub_100028178(0);
  sub_10004D4BC();
  v14 = *(v13 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog);
  v15 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v8 + 16))(v10, v13 + v15, v7);
  v16 = v14;
  sub_10004CEAC();

  result = (*(v8 + 8))(v10, v7);
  v18 = qword_100073130 + 1;
  if (__OFADD__(qword_100073130, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  ++qword_100073130;
  *&v1[v11] = v18;
  v19 = v33;
  v20 = v34;
  v21 = *(v33 + 16);
  v22 = v35;
  v21(&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_logger], v35, v34);
  v21(v6, v22, v20);
  type metadata accessor for TranscriptBackgroundDynamicEffectFactory();
  v23 = swift_allocObject();
  *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager] = sub_10003930C(v6, 49, 0xE100000000000000, 0, 0, v23);
  v24 = type metadata accessor for DynamicTranscriptBackgroundPosterController(0);
  v37.receiver = v1;
  v37.super_class = v24;
  v25 = objc_msgSendSuper2(&v37, "init");
  *(*&v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager] + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_delegate + 8) = &off_1000669B8;
  result = swift_unknownObjectWeakAssign();
  if (__OFADD__(qword_100073128, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  ++qword_100073128;
  v21(v36, &v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_logger], v20);
  v26 = v25;
  v27 = sub_10004CEDC();
  v28 = sub_10004D36C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v19;
    v30 = swift_slowAlloc();
    *v30 = 134218240;
    *(v30 + 4) = *&v26[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID];

    *(v30 + 12) = 2048;
    *(v30 + 14) = qword_100073128;
    _os_log_impl(&_mh_execute_header, v27, v28, "#%ld controllerAliveCount %ld", v30, 0x16u);
    v19 = v29;
  }

  else
  {
  }

  v31 = *(v19 + 8);
  v31(v22, v20);
  v31(v36, v20);
  return v26;
}

id sub_100032590()
{
  v1 = sub_10004CEFC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_glitterParametersObservation] = &_swiftEmptyArrayStorage;

  if (__OFSUB__(qword_100073128, 1))
  {
    __break(1u);
  }

  else
  {
    --qword_100073128;
    (*(v2 + 16))(v4, &v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_logger], v1);
    v6 = v0;
    v7 = sub_10004CEDC();
    v8 = sub_10004D36C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 134218498;
      *(v9 + 4) = *&v6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID];

      *(v9 + 12) = 2080;
      v11 = (*&v6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager] + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect);
      swift_beginAccess();
      v12 = sub_10000CF8C(v11, v11[3]);
      v13 = sub_10003EA74(*v12, v12[2], *(v12 + 24));
      v15 = sub_10000C618(v13, v14, &v18);

      *(v9 + 14) = v15;
      *(v9 + 22) = 2048;
      *(v9 + 24) = qword_100073128;
      _os_log_impl(&_mh_execute_header, v7, v8, "#%ld deinit %s deinit controllerAliveCount %ld", v9, 0x20u);
      sub_10000CF40(v10);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
    v16 = type metadata accessor for DynamicTranscriptBackgroundPosterController(0);
    v19.receiver = v6;
    v19.super_class = v16;
    return objc_msgSendSuper2(&v19, "dealloc");
  }

  return result;
}

uint64_t type metadata accessor for DynamicTranscriptBackgroundPosterController(uint64_t a1)
{
  result = qword_1000709F0;
  if (!qword_1000709F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100032974()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {

    v4 = sub_10003310C(0xD000000000000011, 0x80000001000535A0);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      v7 = *(v6 + 16);

      return v7;
    }
  }

  return 0;
}

id sub_100032A38(uint64_t a1)
{
  v1 = sub_10004CEDC();
  v2 = sub_10004D39C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_10000C618(0xD000000000000018, 0x8000000100053580, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000CF40(v4);
  }

  return sub_100011884(v5);
}

uint64_t sub_100032CEC(uint64_t a1)
{
  result = sub_10004CEFC();
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

uint64_t sub_100032DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000CC1C(&qword_10006EA80, &qword_100050680);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10003E9EC(a3, v25 - v10, &qword_10006EA80, &qword_100050680);
  v12 = sub_10004D2BC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100024DC8(v11, &qword_10006EA80, &qword_100050680);
  }

  else
  {
    sub_10004D2AC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10004D29C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10004D11C() + 32;
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

      sub_100024DC8(a3, &qword_10006EA80, &qword_100050680);

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

  sub_100024DC8(a3, &qword_10006EA80, &qword_100050680);
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

unint64_t sub_1000330C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004D5CC(*(v2 + 40));

  return sub_100033350(a1, v4);
}

unint64_t sub_10003310C(uint64_t a1, uint64_t a2)
{
  sub_10004D7BC();
  sub_10004D14C();
  v4 = sub_10004D7DC();

  return sub_100033418(a1, a2, v4);
}

unint64_t sub_100033184(uint64_t a1)
{
  sub_10004D7BC();
  type metadata accessor for CFString(0);
  sub_10003E038(&unk_100070B80, type metadata accessor for CFString, &unk_100050450);
  sub_10004CE5C();
  v2 = sub_10004D7DC();

  return sub_1000334D0(a1, v2);
}

unint64_t sub_100033238(float *a1)
{
  sub_10004D7BC();
  sub_100042698();
  sub_10004D14C();

  v2 = sub_10004D7DC();

  return sub_1000335DC(a1, v2);
}

unint64_t sub_1000332C0(uint64_t a1)
{
  sub_10004D08C();
  sub_10004D7BC();
  sub_10004D14C();
  v2 = sub_10004D7DC();

  return sub_10003374C(a1, v2);
}

unint64_t sub_100033350(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10003E094(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10004D5DC();
      sub_10000CFD0(v8);
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

unint64_t sub_100033418(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10004D74C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000334D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10003E038(&unk_100070B80, type metadata accessor for CFString, &unk_100050450);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10004CE4C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000335DC(float *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v22 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v6 = *a1;
    v7 = *(a1 + 1);
    v8 = *(v2 + 48);
    do
    {
      v9 = v8 + (v4 << 6);
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
      v12 = *(v9 + 32);
      v14 = *(v9 + 40);
      v13 = *(v9 + 48);
      v15 = *(v9 + 56);
      v16 = *(v9 + 60);
      v17 = *v9 == v6 && *(v9 + 8) == v7;
      if (!v17 && (sub_10004D74C() & 1) == 0)
      {
        goto LABEL_4;
      }

      v18 = *(a1 + 3);
      if (v10)
      {
        if (!v18)
        {
          goto LABEL_4;
        }

        v19 = v11 == *(a1 + 2) && v10 == v18;
        if (!v19 && (sub_10004D74C() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v18)
      {
        goto LABEL_4;
      }

      if (v12 == a1[8] && v14 == *(a1 + 5) && v13 == *(a1 + 6) && v15 == a1[14] && v16 == (a1[15] & 1))
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v21;
    }

    while (((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10003374C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_10004D08C();
      v8 = v7;
      if (v6 == sub_10004D08C() && v8 == v9)
      {
        break;
      }

      v11 = sub_10004D74C();

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

void sub_100033850(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000CC1C(&unk_100070A20, &qword_100051738);
  v34 = v4;
  v6 = sub_10004D69C();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_100010F88(v24, v35);
      }

      else
      {
        sub_10000C7F0(v24, v35);
      }

      sub_10004D7BC();
      sub_10004D14C();
      v25 = sub_10004D7DC();
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_100010F88(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_100033B08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000CC1C(&qword_100070B68, &qword_1000517F8);
  v49 = v4;
  v6 = sub_10004D69C();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v48 = v5;
    v46 = v2;
    v47 = v13;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v20 = (v12 - 1) & v12;
LABEL_15:
      v23 = v19 | (v8 << 6);
      v52 = v20;
      if (v49)
      {
        v24 = *(v5 + 56);
        v25 = *(v5 + 48) + (v23 << 6);
        v26 = *v25;
        v27 = *(v25 + 8);
        v51 = *(v25 + 16);
        v50 = *(v25 + 24);
        v28 = *(v25 + 32);
        v30 = *(v25 + 40);
        v29 = *(v25 + 48);
        v31 = *(v25 + 56);
        v53 = *(v25 + 60);
        v54 = *(v24 + 8 * v23);
      }

      else
      {
        v32 = (*(v5 + 48) + (v23 << 6));
        v33 = *v32;
        v34 = v32[1];
        v35 = v32[2];
        *&v56[13] = *(v32 + 45);
        v55[1] = v34;
        *v56 = v35;
        v55[0] = v33;
        v36 = *(*(v5 + 56) + 8 * v23);
        v53 = v56[28];
        v31 = *&v56[24];
        v30 = *(&v35 + 1);
        v29 = *&v56[16];
        v28 = v35;
        v50 = *(&v34 + 1);
        v51 = v34;
        v27 = *(&v33 + 1);
        v26 = v33;
        sub_1000131F8(v55, v57);
        v54 = v36;
      }

      sub_10004D7BC();
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      v58._countAndFlagsBits = v26;
      v58._object = v27;
      sub_10004D16C(v58);
      v59._countAndFlagsBits = 45;
      v59._object = 0xE100000000000000;
      sub_10004D16C(v59);
      v60._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v60);

      v61._countAndFlagsBits = 45;
      v61._object = 0xE100000000000000;
      sub_10004D16C(v61);
      v62._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v62);

      v63._countAndFlagsBits = 45;
      v63._object = 0xE100000000000000;
      sub_10004D16C(v63);
      sub_10004D2EC();
      v64._countAndFlagsBits = 45;
      v64._object = 0xE100000000000000;
      sub_10004D16C(v64);
      sub_10004D2EC();
      sub_10004D14C();

      v37 = sub_10004D7DC();
      v38 = -1 << *(v7 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v14 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v17 = v27;
        v16 = v26;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v14 + 8 * v40);
          if (v44 != -1)
          {
            v15 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v39) & ~*(v14 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v17 = v27;
      v16 = v26;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = *(v7 + 48) + (v15 << 6);
      *v18 = v16;
      *(v18 + 8) = v17;
      *(v18 + 16) = v51;
      *(v18 + 24) = v50;
      *(v18 + 32) = v28;
      v12 = v52;
      *(v18 + 40) = v30;
      *(v18 + 48) = v29;
      *(v18 + 56) = v31;
      *(v18 + 60) = v53;
      *(*(v7 + 56) + 8 * v15) = v54;
      ++*(v7 + 16);
      v13 = v47;
      v5 = v48;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v19 = __clz(__rbit64(v22));
        v20 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_34;
    }

    v45 = 1 << *(v5 + 32);
    v3 = v46;
    if (v45 >= 64)
    {
      bzero(v9, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v45;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_100033F60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000CC1C(&qword_100070A08, &qword_100051720);
  v35 = v4;
  v6 = sub_10004D69C();
  v7 = v6;
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
    v14 = v6 + 64;
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
      }

      sub_10004D7BC();
      sub_10004D14C();
      v25 = sub_10004D7DC();
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
}

void sub_100034208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000CC1C(&qword_100070A00, &qword_100051718);
  v36 = v4;
  v6 = sub_10004D69C();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_10004D7BC();
      sub_10004D14C();
      v26 = sub_10004D7DC();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1000344AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000CC1C(&unk_10006EA90, &qword_1000506D8);
  v6 = sub_10004D69C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_100010F88((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_10003E094(v23, &v37);
        sub_10000C7F0(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_10004D5CC(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_100010F88(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

_OWORD *sub_100034764(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003310C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100034F58();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100033850(v16, a4 & 1);
    v11 = sub_10003310C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_10004D75C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000CF40(v22);

    return sub_100010F88(a1, v22);
  }

  else
  {
    sub_100034E70(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1000348B4(uint64_t a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100033238(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100033B08(v14, a3 & 1);
      v9 = sub_100033238(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_10004D75C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1000350FC();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v21 = (v19[6] + (v9 << 6));
    v22 = *a2;
    v23 = a2[1];
    v24 = a2[2];
    *(v21 + 45) = *(a2 + 45);
    v21[1] = v23;
    v21[2] = v24;
    *v21 = v22;
    *(v19[7] + 8 * v9) = a1;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return sub_1000131F8(a2, &v27);
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_100034A30(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003310C(a2, a3);
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
      sub_100033F60(v16, a4 & 1);
      v11 = sub_10003310C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_10004D75C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1000352A0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_100034BAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003310C(a2, a3);
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
      sub_100034208(v16, a4 & 1);
      v11 = sub_10003310C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_10004D75C();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100035410();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

_OWORD *sub_100034D24(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000330C8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10003557C();
      goto LABEL_7;
    }

    sub_1000344AC(v13, a3 & 1);
    v19 = sub_1000330C8(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10003E094(a2, v21);
      return sub_100034EDC(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_10004D75C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000CF40(v17);

  return sub_100010F88(a1, v17);
}

_OWORD *sub_100034E70(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100010F88(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_100034EDC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100010F88(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void sub_100034F58()
{
  v1 = v0;
  sub_10000CC1C(&unk_100070A20, &qword_100051738);
  v2 = *v0;
  v3 = sub_10004D68C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v22 = 32 * v17;
        sub_10000C7F0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100010F88(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1000350FC()
{
  v1 = v0;
  sub_10000CC1C(&qword_100070B68, &qword_1000517F8);
  v2 = *v0;
  v3 = sub_10004D68C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = v18[1];
        v19 = v18[2];
        v21 = *v18;
        *&v25[13] = *(v18 + 45);
        v24[1] = v20;
        *v25 = v19;
        v24[0] = v21;
        v22 = *(*(v2 + 56) + 8 * v17);
        memmove((*(v4 + 48) + (v17 << 6)), v18, 0x3DuLL);
        *(*(v4 + 56) + 8 * v17) = v22;
        sub_1000131F8(v24, &v23);
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
}

void sub_1000352A0()
{
  v1 = v0;
  sub_10000CC1C(&qword_100070A08, &qword_100051720);
  v2 = *v0;
  v3 = sub_10004D68C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void sub_100035410()
{
  v1 = v0;
  sub_10000CC1C(&qword_100070A00, &qword_100051718);
  v2 = *v0;
  v3 = sub_10004D68C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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

        v22 = v20;
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
}

void sub_10003557C()
{
  v1 = v0;
  sub_10000CC1C(&unk_10006EA90, &qword_1000506D8);
  v2 = *v0;
  v3 = sub_10004D68C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 40 * v17;
        sub_10003E094(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000C7F0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_100010F88(v22, (*(v4 + 56) + v17));
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
}

uint64_t sub_100035720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v24 = &type metadata for EffectType;
  v25 = &off_100066D68;
  v14 = swift_allocObject();
  *&v23 = v14;
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  v21 = type metadata accessor for TranscriptBackgroundDynamicEffectFactory();
  v22 = &off_100066D78;
  *&v20 = a6;
  *(a7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  *(a7 + v15) = sub_10003A008(&_swiftEmptyArrayStorage);
  v16 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
  *(a7 + v16) = sub_10003A10C(&_swiftEmptyArrayStorage);
  *(a7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) = 0;
  v17 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_logger;
  v18 = sub_10004CEFC();
  (*(*(v18 - 8) + 32))(a7 + v17, a1, v18);
  sub_10000CEC4(&v23, a7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect);
  sub_10000CEC4(&v20, a7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_factory);
  return a7;
}

double sub_1000358A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v7 = a4;
  v43[3] = &type metadata for EffectType;
  v43[4] = &off_100066D68;
  v12 = swift_allocObject();
  v43[0] = v12;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = v7;
  sub_10000CEDC(v43, &v33);
  sub_10003E214(a1, a2, a3, v7);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (swift_dynamicCast())
  {
    countAndFlagsBits = v40._countAndFlagsBits;
    object = v40._object;
    v15 = v41;
    v16 = v42;
    if (v42 > 1u)
    {
      if (v42 == 2)
      {
        *(&v32 + 1) = 0xE600000000000000;
        v17 = 0x61726F727541;
      }

      else
      {
        *(&v32 + 1) = 0xE700000000000000;
        v17 = 0x72657474696C47;
      }
    }

    else if (v42)
    {
      *(&v32 + 1) = 0xE600000000000000;
      v17 = 0x7364756F6C63;
    }

    else
    {
      *(&v32 + 1) = 0xE500000000000000;
      v17 = 0x6E6165634FLL;
    }

    *&v32 = v17;
    v18 = sub_10003F828(v40, v41, v42);
    v30 = v19;
    v31 = v18;
    *&v33 = *(a5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID);
    *&v44 = sub_10004D73C();
    *(&v44 + 1) = v20;
    v51._countAndFlagsBits = 95;
    v51._object = 0xE100000000000000;
    sub_10004D16C(v51);
    v52._countAndFlagsBits = countAndFlagsBits;
    v52._object = object;
    v53._countAndFlagsBits = sub_10003EA74(v52, v15, v16);
    sub_10004D16C(v53);

    v21 = v44;
    v28 = *(a5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_isPreview);
    v29 = *(a5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_isSnapshotMode);
    v22 = *(a5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor);
    v23 = dword_100051810[v16];
    sub_100010F08(countAndFlagsBits, object, v15, v16);
    LOBYTE(v40._countAndFlagsBits) = 1;
    v33 = v32;
    *&v34 = v31;
    *(&v34 + 1) = v30;
    v35 = v21;
    *&v36 = 0;
    BYTE8(v36) = 1;
    *&v37 = 0;
    BYTE8(v37) = 0;
    BYTE9(v37) = v16 == 3;
    v38 = vdupq_n_s64(0x1EuLL);
    v39[0] = v29;
    v39[1] = v28;
    v39[2] = v22 != 0;
    *&v39[4] = v23;
    *&v39[8] = 0;
    *&v39[16] = 0;
    *&v39[22] = 0;
    nullsub_1();
    v48 = v37;
    v49 = v38;
    v50[0] = *v39;
    *(v50 + 14) = *&v39[14];
    v44 = v33;
    v45 = v34;
    v46 = v35;
    v47 = v36;
  }

  else
  {
    sub_10003E9D0(&v44);
  }

  sub_10000CF40(v43);
  v24 = v49;
  a6[4] = v48;
  a6[5] = v24;
  a6[6] = v50[0];
  *(a6 + 110) = *(v50 + 14);
  v25 = v45;
  *a6 = v44;
  a6[1] = v25;
  result = *&v46;
  v27 = v47;
  a6[2] = v46;
  a6[3] = v27;
  return result;
}

id sub_100035BC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v24[3] = &type metadata for EffectType;
  v24[4] = &off_100066D68;
  v10 = swift_allocObject();
  v24[0] = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = v6;
  sub_10003E214(a1, a2, a3, v6);
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  if ([qword_1000730A8 posterKitEditor])
  {
    v11 = sub_10000CF8C(v24, &type metadata for EffectType);
    v12 = sub_10003EA74(*v11, v11[2], *(v11 + 24));
    v14 = v13;
    v15 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
    swift_beginAccess();
    v16 = *(a5 + v15);
    if (!*(v16 + 16) || (, v17 = sub_10003310C(v12, v14), v19 = v18, , (v19 & 1) == 0))
    {

      v22 = 0;
      goto LABEL_10;
    }

    v20 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    swift_beginAccess();

    v20 = sub_10002FC7C(v21);
  }

  v22 = v20;

LABEL_10:
  sub_10000CF40(v24);
  return v22;
}

BOOL sub_100035D90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v31 = &type metadata for EffectType;
  v32 = &off_100066D68;
  v10 = swift_allocObject();
  v30[0] = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = (a5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect);
    swift_beginAccess();
    v14 = sub_10000CF8C(v13, v13[3]);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = *(v14 + 24);
    sub_10003E214(a1, a2, a3, v6);
    v33._countAndFlagsBits = v15;
    v33._object = v16;
    v19 = sub_10003EA74(v33, v17, v18);
    v21 = v20;
    v22 = sub_10000CF8C(v30, v31);
    if (v19 == sub_10003EA74(*v22, v22[2], *(v22 + 24)) && v21 == v23)
    {

      goto LABEL_11;
    }

    v25 = sub_10004D74C();

    if (v25)
    {

LABEL_11:
      v26 = 1;
      goto LABEL_12;
    }

    if (qword_10006E0A8 != -1)
    {
      swift_once();
    }

    if (([qword_1000730A8 posterKitEditor] & 1) == 0)
    {
      v28 = sub_10000CF8C(v13, v13[3]);
      v29 = sub_10000CF8C(v30, v31);
      v26 = sub_10003A4FC(*v28, v28[1], v28[2], *(v28 + 24), *v29, v29[1], v29[2], *(v29 + 24));

      goto LABEL_12;
    }
  }

  else
  {
    sub_10003E214(a1, a2, a3, v6);
  }

  v26 = 0;
LABEL_12:
  sub_10000CF40(v30);
  return v26;
}

uint64_t sub_100035FE8(NSString a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, double a8)
{
  LOBYTE(v10) = a6;
  v11 = a5;
  v53[3] = &type metadata for EffectType;
  v53[4] = &off_100066D68;
  v16 = swift_allocObject();
  v53[0] = v16;
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = v11;
  sub_10000CEDC(v53, v52);
  sub_10003E214(a2, a3, a4, v11);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (!swift_dynamicCast())
  {
    return sub_10000CF40(v53);
  }

  v17 = v48;
  v18 = objc_opt_self();
  [v18 begin];
  if (v51 <= 1u)
  {
    if (v51)
    {
      sub_10001998C(a1, v48, v49, v50, 1, v10 & 1);
      goto LABEL_39;
    }

    v23 = [a1 rootNode];
    a1 = sub_10004D05C();
    v10 = [v23 childNodeWithName:a1];

    if (!v10)
    {
      goto LABEL_39;
    }

    if (!__OFSUB__(sub_10003F3A8(v48, v49, v50, 0), 1))
    {
      v24 = [v10 parameters];
      if (v24)
      {
        v25 = v24;
        isa = sub_10004D32C().super.super.isa;
        v27 = sub_10004D05C();
        [v25 setObject:isa forKeyedSubscript:v27];
        swift_unknownObjectRelease();
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_42;
  }

  if (v51 == 2)
  {
    sub_100013F84(a1, v48, v49, v50, 2, a8);
    goto LABEL_39;
  }

  if (v51 != 3)
  {
LABEL_39:
    [v18 commit];
    [v18 flush];
    sub_100010F08(v17, v49, v50, v51);
    return sub_10000CF40(v53);
  }

  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  v19 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType;
  v47 = v48;
  if ([qword_1000730A8 enableFantasy])
  {
    v46 = sub_10003F3A8(v48, v49, v50, 3);
    v20 = sub_10004A040(v48, v49, v50, 3u);
    if (!(v20 >> 62))
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_12;
    }

LABEL_42:
    v21 = sub_10004D67C();
LABEL_12:

    v17 = v47;
    v22 = v46 == v21;
    v19 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType;
    if (v22)
    {
      sub_10001CAE8(1, a1, v10 & 1);
      goto LABEL_39;
    }
  }

  v28 = *(a7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v29 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  v44 = v29;
  v45 = v28;
  sub_10000CEDC(v28 + v29, v52);
  if (!swift_dynamicCast())
  {
    goto LABEL_45;
  }

  v30 = v50;
  v31 = v51;
  if (v51 == 3)
  {
    if ([v19[21] enableFantasy])
    {
      v43 = sub_10003F3A8(v48, v49, v50, 3);
      v32 = sub_10004A040(v48, v49, v50, 3u);
      if (v32 >> 62)
      {
        v42 = sub_10004D67C();
      }

      else
      {
        v42 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_100010F08(v48, v49, v50, 3u);

      v17 = v47;
      if (v43 == v42)
      {
LABEL_35:
        v36 = sub_10001A820(v17, v49, v50, 3);
        v37 = sub_10001A9EC(v17, v49, v50, 3);
        sub_10001CD0C(a1);
        sub_10001CAE8(0, a1, v10 & 1);

LABEL_38:
        goto LABEL_39;
      }

      goto LABEL_30;
    }

    v31 = 3;
    v30 = v50;
  }

  sub_100010F08(v48, v49, v30, v31);
  v17 = v47;
LABEL_30:
  if ([v19[21] enableFantasy])
  {
    v33 = sub_10003F3A8(v17, v49, v50, 3);
    v34 = sub_10004A040(v17, v49, v50, 3u);
    if (v34 >> 62)
    {
      v35 = sub_10004D67C();
      v17 = v47;
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v33 == v35;
    v19 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType;
    if (v22)
    {
      goto LABEL_35;
    }
  }

  if ([v19[21] posterKitEditor])
  {
    goto LABEL_35;
  }

  sub_10000CEDC(v45 + v44, v52);
  if (swift_dynamicCast())
  {
    v38 = sub_10001A820(v48, v49, v50, v51);
    sub_100010F08(v48, v49, v50, v51);
    v39 = sub_10001A820(v47, v49, v50, 3);
    v40 = sub_10004B3BC(a8);
    v37 = sub_10001ABDC();
    sub_10001CD0C(a1);

    v17 = v47;
    goto LABEL_38;
  }

LABEL_45:
  result = sub_10004D66C();
  __break(1u);
  return result;
}

void sub_1000366C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v152 = a5;
  v137 = a4;
  v155 = a2;
  v157 = a1;
  v8 = sub_10000CC1C(&qword_10006EA80, &qword_100050680);
  __chkstk_darwin(v8 - 8);
  v142 = &v127 - v9;
  v10 = sub_10004CF1C();
  v139 = *(v10 - 8);
  v140 = v10;
  __chkstk_darwin(v10);
  v138 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10004CD3C();
  v141 = *(v144 - 8);
  v12 = __chkstk_darwin(v144);
  v136 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v13;
  __chkstk_darwin(v12);
  v143 = &v127 - v14;
  v156 = sub_10004CEFC();
  v159 = *(v156 - 8);
  v15 = __chkstk_darwin(v156);
  v151 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v150 = &v127 - v17;
  v154 = sub_10004CECC();
  v158 = *(v154 - 8);
  __chkstk_darwin(v154);
  v153 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10004D3CC();
  v148 = *(v19 - 8);
  v149 = v19;
  __chkstk_darwin(v19);
  v147 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10004D4CC();
  __chkstk_darwin(v21);
  v146 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10004CF6C();
  v134 = *(v23 - 8);
  v135 = v23;
  __chkstk_darwin(v23);
  v25 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165[3] = type metadata accessor for TranscriptBackgroundDynamicEffectFactory();
  v165[4] = &off_100066D78;
  v165[0] = a3;
  v26 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
  *&a6[v26] = [objc_allocWithZone(VFXView) init];
  *&a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager] = 0;
  *&a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager] = 0;
  *&a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect] = 0;
  v27 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
  type metadata accessor for WorldLoadingReceivedEventsHolder();
  v28 = swift_allocObject();
  v29 = swift_slowAlloc();
  *&a6[v27] = v28;
  *(v28 + 16) = v29;
  *&a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor] = 0;
  a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot] = 1;
  *(v28 + 24) = 0;
  v30 = &a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime];
  v30[4] = 1;
  *v30 = 0;
  *&a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation] = 0;
  *(v28 + 32) = &_swiftEmptyArrayStorage;
  a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp] = 0;
  a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isScrolling] = 0;
  v145 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingQueue;
  sub_10000D024(0, &unk_100070360, OS_dispatch_queue_serial_ptr);
  sub_10004CF4C();
  *&v162 = &_swiftEmptyArrayStorage;
  sub_10003E038(&unk_100070AC0, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_10000CC1C(&unk_100070370, "dd");
  sub_1000249FC(&qword_100070AD0, &unk_100070370, "dd");
  sub_10004D57C();
  (*(v148 + 104))(v147, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v149);
  v132 = v25;
  *&a6[v145] = sub_10004D4DC();
  v31 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lock;
  v32 = swift_slowAlloc();
  v149 = v31;
  *&a6[v31] = v32;
  a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_inView] = 0;
  a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady] = 0;
  a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated] = 0;
  *&a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_frameCounter] = 0;
  a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented] = 0;
  a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting] = 0;
  v33 = &a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed];
  *v33 = 0;
  v33[1] = 0;
  if (qword_10006E0B0 != -1)
  {
    swift_once();
  }

  v34 = qword_1000730B0;
  sub_10004D4BC();
  v145 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog;
  v35 = *(v34 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog);
  v36 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  v37 = v158;
  v38 = *(v158 + 16);
  v130 = v158 + 16;
  v131 = v36;
  v146 = v34;
  v39 = v34 + v36;
  v41 = v153;
  v40 = v154;
  v129 = v38;
  v38(v153, v39, v154);
  v42 = v35;
  sub_10004CEAC();

  v44 = *(v37 + 8);
  v43 = v37 + 8;
  v128 = v44;
  v44(v41, v40);
  v45 = v159 + 16;
  v46 = *(v159 + 16);
  v48 = v156;
  v47 = v157;
  (v46)(&a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger], v157, v156);
  v49 = &a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
  v50 = v155;
  v51 = *(v155 + 48);
  *(v49 + 2) = *(v155 + 32);
  *(v49 + 3) = v51;
  v52 = *(v50 + 16);
  *v49 = *v50;
  *(v49 + 1) = v52;
  *(v49 + 110) = *(v50 + 110);
  v53 = *(v50 + 96);
  *(v49 + 5) = *(v50 + 80);
  *(v49 + 6) = v53;
  *(v49 + 4) = *(v50 + 64);
  sub_10000CEDC(v165, &a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_factory]);
  v54 = v150;
  v147 = v46;
  v148 = v45;
  (v46)(v150, v47, v48);
  type metadata accessor for SnapshotWriter(0);
  swift_allocObject();
  sub_10000CDAC(v50, &v162);
  sub_10000CDAC(v50, &v162);
  *&a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter] = sub_10001F348(v50, v54);
  **&a6[v149] = 0;
  v55 = v159;
  if (__OFADD__(qword_1000730B8, 1))
  {
    __break(1u);
  }

  else
  {
    v158 = v43;
    ++qword_1000730B8;
    if (qword_10006E0A0 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  sub_100021DB4();
  v56 = *(v49 + 13);
  v57 = *(v49 + 14);
  v58 = type metadata accessor for TranscriptBackgroundView(0);
  v161.receiver = a6;
  v161.super_class = v58;
  v59 = objc_msgSendSuper2(&v161, "initWithFrame:", 0.0, 0.0, v56, v57);
  [v59 setAlpha:0.0];
  [v59 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_10000CDAC(v50, &v162);
  v60 = v47;
  v61 = sub_10004CEDC();
  v62 = sub_10004D39C();
  sub_10000CE08(v50);
  v63 = v55;
  if (os_log_type_enabled(v61, v62))
  {
    v64 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *&v162 = v149;
    *v64 = 136316162;
    v150 = v59;
    v66 = *(v50 + 32);
    v65 = *(v50 + 40);

    v67 = sub_10000C618(v66, v65, &v162);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    *(v64 + 14) = sub_10000C618(0xD00000000000002FLL, 0x8000000100054F10, &v162);
    *(v64 + 22) = 2080;
    v68 = v63;
    v69 = v50;
    v70 = *v50;
    v71 = *(v50 + 8);

    v72 = sub_10000C618(v70, v71, &v162);
    v50 = v69;
    v63 = v68;

    *(v64 + 24) = v72;
    *(v64 + 32) = 2080;

    v73 = v66;
    v48 = v156;
    v74 = sub_10000C618(v73, v65, &v162);
    v59 = v150;
    v60 = v157;

    *(v64 + 34) = v74;
    *(v64 + 42) = 2048;
    *(v64 + 44) = qword_1000730B8;
    _os_log_impl(&_mh_execute_header, v61, v62, "#%s %s %s %s live count %ld", v64, 0x34u);
    swift_arrayDestroy();
  }

  v75 = v151;
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  if ([qword_1000730A8 nullMode])
  {
    (*(v63 + 8))(v60, v48);

    sub_10000CE08(v50);
LABEL_23:
    sub_10000CF40(v165);
    return;
  }

  v76 = *(v50 + 64);
  v166[0] = *(v50 + 48);
  v166[1] = v76;
  v166[2] = *(v50 + 80);
  sub_10002AF24(v166);

  v77 = sub_10001F534();

  if (!v77)
  {
    (v147)(v75, &v59[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger], v48);
    v109 = v59;
    v110 = sub_10004CEDC();
    v111 = sub_10004D39C();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v150 = v59;
      v113 = v112;
      v114 = swift_slowAlloc();
      *&v162 = v114;
      *v113 = 136315138;
      v115 = &v109[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v116 = v60;
      v117 = v63;
      v118 = *&v109[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v119 = *(v115 + 5);

      v120 = sub_10000C618(v118, v119, &v162);
      v63 = v117;
      v60 = v116;

      *(v113 + 4) = v120;
      _os_log_impl(&_mh_execute_header, v110, v111, "#%s No need to go live", v113, 0xCu);
      sub_10000CF40(v114);

      v50 = v155;

      (*(v63 + 8))(v151, v48);
    }

    else
    {

      (*(v63 + 8))(v75, v48);
    }

    goto LABEL_17;
  }

  v78 = [objc_opt_self() mainBundle];
  v79 = sub_10004D05C();
  v80 = sub_10004D05C();
  v81 = [v78 URLForResource:v79 withExtension:v80];

  if (v81)
  {
    v82 = v143;
    sub_10004CCFC();

    sub_10004D4AC();
    v83 = *&v146[v145];
    v85 = v153;
    v84 = v154;
    v129(v153, &v146[v131], v154);
    v86 = v83;
    sub_10004CEAC();

    v128(v85, v84);
    v88 = *&v59[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v87 = *&v59[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];
    v158 = *&v59[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingQueue];
    v89 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v90 = v141;
    v91 = v136;
    v92 = v144;
    (*(v141 + 16))(v136, v82, v144);
    v93 = *(v90 + 80);
    v150 = v59;
    v94 = (v93 + 40) & ~v93;
    v95 = (v133 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
    v96 = swift_allocObject();
    *(v96 + 2) = v89;
    *(v96 + 3) = v88;
    *(v96 + 4) = v87;
    (*(v90 + 32))(&v96[v94], v91, v92);
    v97 = &v96[v95];
    v98 = v152;
    *v97 = v137;
    v97[1] = v98;
    *&v164[0] = sub_10003E734;
    *(&v164[0] + 1) = v96;
    *&v162 = _NSConcreteStackBlock;
    *(&v162 + 1) = 1107296256;
    *&v163 = sub_10002FBD0;
    *(&v163 + 1) = &unk_100066C60;
    v99 = _Block_copy(&v162);

    v100 = v132;
    sub_10004CF3C();
    v160 = &_swiftEmptyArrayStorage;
    sub_10003E038(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
    sub_1000249FC(&qword_1000708B0, &unk_10006E3D0, &qword_100050620);
    v101 = v138;
    v102 = v140;
    sub_10004D57C();
    sub_10004D3EC();
    _Block_release(v99);
    v103 = v102;
    v104 = v150;
    (*(v139 + 8))(v101, v103);
    (*(v134 + 8))(v100, v135);

    v105 = qword_1000730A8;
    *&v162 = qword_1000730A8;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v106 = v105;
    v107 = sub_10004CC7C();

    (*(v90 + 8))(v143, v144);

    v108 = *&v104[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation];
    *&v104[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation] = v107;

    v48 = v156;
    v60 = v157;
    v50 = v155;
    v63 = v159;
LABEL_17:
    if (qword_10006E0B8 != -1)
    {
      swift_once();
    }

    v121 = qword_100073150;
    sub_1000427C8(&v162);
    if (*(v121 + 16) == 1)
    {
      v122 = sub_10004D2BC();
      v123 = v142;
      (*(*(v122 - 8) + 56))(v142, 1, 1, v122);
      v124 = swift_allocObject();
      swift_weakInit();
      v125 = swift_allocObject();
      *(v125 + 16) = 0;
      *(v125 + 24) = 0;
      *(v125 + 32) = v124;
      v126 = v163;
      *(v125 + 40) = v162;
      *(v125 + 56) = v126;
      *(v125 + 72) = v164[0];
      *(v125 + 85) = *(v164 + 13);
      *(v125 + 104) = v121;

      sub_100032DC8(0, 0, v123, &unk_100051770, v125);
    }

    else
    {
      sub_100013254(&v162);
    }

    sub_10000CE08(v50);
    (*(v63 + 8))(v60, v48);
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_100037A34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v40 = &type metadata for EffectType;
  v41 = &off_100066D68;
  v10 = swift_allocObject();
  v39[0] = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = v6;
  v11 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v12 = *(a5 + v11);
  if (*(v12 + 16))
  {
    sub_10003E214(a1, a2, a3, v6);

    v13 = sub_10003310C(0xD000000000000010, 0x80000001000535C0);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      swift_beginAccess();
      v16 = sub_10000CF8C((v15 + 24), *(v15 + 48));
      v17 = sub_10003EA74(*v16, v16[2], *(v16 + 24));
      v19 = v18;
      v20 = sub_10000CF8C(v39, v40);
      if (v17 == sub_10003EA74(*v20, v20[2], *(v20 + 24)) && v19 == v21)
      {
      }

      else
      {
        v23 = sub_10004D74C();

        if ((v23 & 1) == 0)
        {
LABEL_21:

          return sub_10000CF40(v39);
        }
      }

      v24 = *(a5 + v11);
      if (*(v24 + 16))
      {

        v25 = sub_10003310C(0xD000000000000011, 0x80000001000535A0);
        if (v26)
        {
          v27 = *(*(v24 + 56) + 8 * v25);

          v28 = sub_10004CEDC();
          v29 = sub_10004D39C();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            _os_log_impl(&_mh_execute_header, v28, v29, "swap current and target", v30, 2u);
          }

          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v37 = *(a5 + v11);
          *(a5 + v11) = 0x8000000000000000;
          sub_100034A30(v15, 0xD000000000000011, 0x80000001000535A0, isUniquelyReferenced_nonNull_native);
          *(a5 + v11) = v37;

          v32 = swift_isUniquelyReferenced_nonNull_native();
          v38 = *(a5 + v11);
          *(a5 + v11) = 0x8000000000000000;
          sub_100034A30(v27, 0xD000000000000010, 0x80000001000535C0, v32);
          *(a5 + v11) = v38;
          swift_endAccess();
          v33 = [*(v15 + 16) superview];
          if (v33)
          {
            v34 = v33;
            v35 = *(v15 + 16);
            [v34 bringSubviewToFront:v35];
          }

          else
          {
          }
        }

        else
        {
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    sub_10003E214(a1, a2, a3, v6);
  }

  return sub_10000CF40(v39);
}

uint64_t sub_100037E00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, double a8)
{
  v11 = a4;
  v101 = &type metadata for EffectType;
  v102 = &off_100066D68;
  v15 = swift_allocObject();
  v100[0] = v15;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = v11;
  v16 = sub_10000CF8C(v100, &type metadata for EffectType);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = *(v16 + 24);
  sub_10003E214(a1, a2, a3, v11);
  v21 = v18;
  v22 = a7;
  v23 = sub_100035BC4(v17, v21, v19, v20, a7);
  if (!v23)
  {
    sub_10000CEDC(v100, &v112);
    v42 = sub_10004CEDC();
    v43 = sub_10004D39C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v105 = v45;
      *v44 = 136315138;
      v46 = sub_10000CF8C(&v112, *(&v113 + 1));
      v47 = sub_10003EA74(*v46, v46[2], *(v46 + 24));
      v49 = v48;
      sub_10000CF40(&v112);
      v50 = sub_10000C618(v47, v49, &v105);

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "placeholderViewByEffect missing for effectType: %s", v44, 0xCu);
      sub_10000CF40(v45);
    }

    else
    {

      sub_10000CF40(&v112);
    }

    return sub_10000CF40(v100);
  }

  v24 = v23;
  v25 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v26 = *(a7 + v25);
  if (!*(v26 + 16))
  {
    goto LABEL_18;
  }

  v27 = sub_10003310C(a5, a6);
  if ((v28 & 1) == 0)
  {

LABEL_18:

    v51 = sub_10004CEDC();
    v52 = sub_10004D39C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v112 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_10000C618(a5, a6, &v112);
      _os_log_impl(&_mh_execute_header, v51, v52, "effectView missing for key: %s", v53, 0xCu);
      sub_10000CF40(v54);
    }

    return sub_10000CF40(v100);
  }

  v29 = *(*(v26 + 56) + 8 * v27);

  v99 = 0;
  v30 = *(v29 + 16);
  sub_10001EA04(v30, &v99);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_14:

    return sub_10000CF40(v100);
  }

  v32 = Strong;
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  p_attr = &stru_10006AFF8.attr;
  if ([qword_1000730A8 posterKitEditor])
  {
    swift_beginAccess();
    v34 = sub_10000CF8C((v29 + 24), *(v29 + 48));
    v35 = sub_10003EA74(*v34, v34[2], *(v34 + 24));
    v37 = v36;
    v38 = sub_10000CF8C(v100, v101);
    if (v35 == sub_10003EA74(*v38, v38[2], *(v38 + 24)) && v37 == v39)
    {

      return sub_10000CF40(v100);
    }

    v41 = sub_10004D74C();

    p_attr = (&stru_10006AFF8 + 8);
    if (v41)
    {

      goto LABEL_14;
    }
  }

  if ([qword_1000730A8 p_attr[74]])
  {
    [*(v29 + 16) setAlpha:0.0];
  }

  else
  {
    v56 = (v22 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect);
    swift_beginAccess();
    v57 = sub_10000CF8C(v56, v56[3]);
    v58 = sub_10000CF8C(v100, v101);
    v99 = !sub_10003A4FC(*v57, v57[1], v57[2], *(v57 + 24), *v58, v58[1], v58[2], *(v58 + 24));
  }

  v59 = *(*(v29 + 16) + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
  if (v59)
  {
    swift_weakInit();
    v60 = *(v59 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

    os_unfair_lock_lock(v60);
    v82 = *(v59 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
    swift_beginAccess();
    v61 = swift_weakLoadStrong();
    if (v61)
    {
      v62 = v61;
      v79 = v60;
      v80 = v32;
      v78 = v99;
      v63 = sub_10000CF8C(v100, v101);
      v65 = *v63;
      v64 = v63[1];
      v66 = v63[2];
      v67 = *(v63 + 24);
      v68 = swift_unknownObjectWeakLoadStrong();
      if (v68)
      {
        v69 = v68;
        v83 = v82;
        sub_100035FE8(v83, v65, v64, v66, v67, v78, v69, a8);
        if (!sub_100035D90(v65, v64, v66, v67, v62))
        {
          sub_100011418(a8);
        }
      }

      v32 = v80;
      v60 = v79;
    }

    os_unfair_lock_unlock(v60);

    swift_weakDestroy();
  }

  if (([qword_1000730A8 posterKitEditor] & 1) != 0 || a8 == 1.0)
  {
    swift_beginAccess();
    sub_10003E314((v29 + 24), v100);
    swift_endAccess();
    v70 = swift_unknownObjectWeakLoadStrong();
    if (v70 && (v71 = v70, v72 = sub_10000CF8C(v100, v101), sub_1000358A4(*v72, v72[1], v72[2], *(v72 + 24), v71, v103), v71, v109 = v103[4], v110 = v103[5], *v111 = v104[0], *&v111[14] = *(v104 + 14), v105 = v103[0], v106 = v103[1], v107 = v103[2], v108 = v103[3], sub_10003E278(&v105) != 1))
    {
      v96 = v109;
      v97 = v110;
      v98 = *v111;
      v92 = v105;
      v93 = v106;
      v94 = v107;
      v95 = v108;
      v90 = *&v111[24];
      v91 = *&v111[28];
      [*&v24[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_contentView] bounds];
      v74 = v73;
      v76 = v75;
      v77 = [qword_1000730A8 posterKitEditor];
      v116 = v96;
      v117 = v97;
      v118 = v98;
      v112 = v92;
      v113 = v93;
      v114 = v94;
      v115 = v95;
      v119 = v74;
      v120 = v76;
      v122 = v91;
      v121 = v90;
      sub_100028734(&v112, v77);

      v84[4] = v96;
      v84[5] = v97;
      v85 = v98;
      v84[0] = v92;
      v84[1] = v93;
      v84[2] = v94;
      v84[3] = v95;
      v86 = v74;
      v87 = v76;
      v89 = v91;
      v88 = v90;
      sub_10000CE08(v84);
    }

    else
    {
    }
  }

  else
  {
  }

  return sub_10000CF40(v100);
}

uint64_t sub_100038660(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = a4;
  v12 = sub_10004CEFC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v105[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v147 = &type metadata for EffectType;
  v148 = &off_100066D68;
  v16 = swift_allocObject();
  v146[0] = v16;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v112 = v13;
    *&v113 = v12;
    v114 = v15;
    v115 = Strong;
    v18 = (a5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect);
    swift_beginAccess();
    v19 = sub_10000CF8C(v18, v18[3]);
    v21 = *v19;
    v20 = v19[1];
    v22 = v19[2];
    v23 = *(v19 + 24);
    sub_10003E214(a1, a2, a3, v8);
    v159._countAndFlagsBits = v21;
    v159._object = v20;
    v24 = sub_10003EA74(v159, v22, v23);
    v26 = v25;
    v27 = sub_10000CF8C(v146, v147);
    if (v24 == sub_10003EA74(*v27, v27[2], *(v27 + 24)) && v26 == v28)
    {
      v30 = 1;
    }

    else
    {
      v30 = sub_10004D74C();
    }

    v31 = sub_10000CF8C(v146, v147);
    v32 = sub_100035D90(*v31, v31[1], v31[2], *(v31 + 24), a5);
    if ((v30 & 1) != 0 && a6 == 1.0)
    {
      v33 = sub_10000CF8C(v146, v147);
      sub_100037A34(*v33, v33[1], v33[2], *(v33 + 24), a5);
    }

    if (v32)
    {
      v34 = 0xD000000000000011;
    }

    else
    {
      v34 = 0xD000000000000010;
    }

    if (v32)
    {
      v35 = "cleanupBackgroundViews()";
    }

    else
    {
      v35 = "currentEffectView";
    }

    v36 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_effectViewByEffect;
    swift_beginAccess();
    if (*(*(a5 + v36) + 16) && (, sub_10003310C(v34, v35 | 0x8000000000000000), v38 = v37, , (v38 & 1) != 0))
    {
      if (a6 != -1.0)
      {
        v39 = sub_10000CF8C(v146, v147);
        sub_100037E00(*v39, v39[1], v39[2], *(v39 + 24), v34, v35 | 0x8000000000000000, a5, a6);
      }
    }

    else
    {
      v40 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_logger;

      v41 = sub_10004CEDC();
      v42 = sub_10004D39C();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v153[0] = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_10000C618(v34, v35 | 0x8000000000000000, v153);
        _os_log_impl(&_mh_execute_header, v41, v42, " effectViewByEffect[%s] == nil", v43, 0xCu);
        sub_10000CF40(v44);
      }

      v45 = v115;
      v46 = sub_10000CF8C(v146, v147);
      v47 = sub_100035BC4(*v46, v46[1], v46[2], *(v46 + 24), a5);
      if (v47)
      {
        v48 = v47;
        v49 = sub_10000CF8C(v146, v147);
        sub_1000358A4(*v49, v49[1], v49[2], *(v49 + 24), v45, v149);
        if (sub_10003E278(v149) == 1)
        {
        }

        else
        {
          v110 = v36;
          v143 = v149[4];
          v144 = v149[5];
          v145 = v150;
          v139 = v149[0];
          v140 = v149[1];
          v141 = v149[2];
          v142 = v149[3];
          v137 = v151;
          v138 = v152;
          [*&v48[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_contentView] bounds];
          v51 = v50;
          v53 = v52;
          sub_10000CEDC(v146, v136);

          v54 = v48;
          v108 = v40;
          v55 = sub_10004CEDC();
          v56 = sub_10004D39C();
          v111 = v54;

          v57 = os_log_type_enabled(v55, v56);
          v109 = v34;
          if (v57)
          {
            v58 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            *&v153[0] = v107;
            *v58 = 136315650;
            *(v58 + 4) = sub_10000C618(v34, v35 | 0x8000000000000000, v153);
            v106 = v56;
            *(v58 + 12) = 2080;
            v59 = sub_10000CF8C(v136, v136[3]);
            v60 = sub_10003EA74(*v59, v59[2], *(v59 + 24));
            v62 = v61;
            sub_10000CF40(v136);
            v63 = sub_10000C618(v60, v62, v153);

            *(v58 + 14) = v63;
            *(v58 + 22) = 2080;
            v64 = v111;
            v65 = [v64 description];
            v66 = sub_10004D08C();
            v68 = v67;

            v69 = sub_10000C618(v66, v68, v153);

            *(v58 + 24) = v69;
            _os_log_impl(&_mh_execute_header, v55, v106, "creating view for %s %s placeholder: %s", v58, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            sub_10000CF40(v136);
          }

          (*(v112 + 16))(v114, a5 + v108, v113);
          v153[4] = v143;
          v153[5] = v144;
          v154 = v145;
          v153[0] = v139;
          v153[1] = v140;
          v153[2] = v141;
          v153[3] = v142;
          v155 = v51;
          v156 = v53;
          v158 = v138;
          v157 = v137;
          sub_10000CEDC(a5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_factory, v122);
          v70 = swift_allocObject();
          swift_weakInit();
          sub_10000CEDC(v146, &v119);
          v71 = swift_allocObject();
          *(v71 + 16) = v70;
          sub_10000CEC4(&v119, v71 + 24);
          v72 = sub_10003A914(v122, v123);
          *&v113 = v105;
          __chkstk_darwin(v72);
          v74 = &v105[-((v73 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v75 + 16))(v74);
          v76 = *v74;
          v117 = type metadata accessor for TranscriptBackgroundDynamicEffectFactory();
          v118 = &off_100066D78;
          v116[0] = v76;
          v77 = objc_allocWithZone(type metadata accessor for TranscriptBackgroundView(0));
          v78 = sub_10003A914(v116, v117);
          __chkstk_darwin(v78);
          v80 = &v105[-((v79 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v81 + 16))(v80);
          v82 = *v80;
          sub_10000CDAC(v153, &v125);

          sub_1000366C0(v114, v153, v82, sub_10003E308, v71, v77);
          v84 = v83;
          sub_10000CF40(v116);
          sub_10000CF40(v122);

          [v84 setTranslatesAutoresizingMaskIntoConstraints:0];
          sub_10000CEDC(v146, &v125);
          v85 = sub_10003A914(&v125, *(&v126 + 1));
          v114 = v105;
          __chkstk_darwin(v85);
          v87 = &v105[-((v86 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v88 + 16))(v87);
          v113 = *v87;
          v89 = *(v87 + 2);
          LOBYTE(v87) = v87[24];
          v123 = &type metadata for EffectType;
          v124 = &off_100066D68;
          v90 = swift_allocObject();
          v122[0] = v90;
          *(v90 + 16) = v113;
          *(v90 + 32) = v89;
          *(v90 + 40) = v87;
          type metadata accessor for ViewsManager.EffectView();
          v91 = swift_allocObject();
          v92 = sub_10003A914(v122, &type metadata for EffectType);
          __chkstk_darwin(v92);
          v94 = &v105[-((v93 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v95 + 16))(v94);
          v113 = *v94;
          v96 = *(v94 + 2);
          LOBYTE(v94) = v94[24];
          v120 = &type metadata for EffectType;
          v121 = &off_100066D68;
          v97 = swift_allocObject();
          *&v119 = v97;
          *(v97 + 16) = v113;
          *(v97 + 32) = v96;
          *(v97 + 40) = v94;
          *(v91 + 16) = v84;
          sub_10000CEC4(&v119, v91 + 24);

          v98 = v84;
          sub_10000CF40(v122);
          sub_10000CF40(&v125);
          v99 = v110;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v122[0] = *(a5 + v99);
          *(a5 + v99) = 0x8000000000000000;
          v101 = v91;
          v102 = v109;
          sub_100034A30(v101, v109, v35 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);

          *(a5 + v99) = v122[0];
          swift_endAccess();
          v103 = sub_10000CF8C(v146, v147);
          sub_100037E00(*v103, v103[1], v103[2], *(v103 + 24), v102, v35 | 0x8000000000000000, a5, 1.0);

          v128 = v142;
          v129 = v143;
          v130 = v144;
          v125 = v139;
          v131 = v145;
          v126 = v140;
          v127 = v141;
          v132 = v51;
          v133 = v53;
          v135 = v138;
          v134 = v137;
          sub_10000CE08(&v125);
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_10003E214(a1, a2, a3, v8);
  }

  return sub_10000CF40(v146);
}

uint64_t sub_10003930C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v26[3] = &type metadata for EffectType;
  v26[4] = &off_100066D68;
  v12 = swift_allocObject();
  v26[0] = v12;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v13 = type metadata accessor for TranscriptBackgroundDynamicEffectFactory();
  v25[3] = v13;
  v25[4] = &off_100066D78;
  v25[0] = a6;
  type metadata accessor for ViewsManager(0);
  v14 = swift_allocObject();
  v15 = sub_10003A914(v26, &type metadata for EffectType);
  __chkstk_darwin(v15);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = sub_10003A914(v25, v13);
  __chkstk_darwin(v19);
  v21 = (v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = sub_100035720(a1, *v17, *(v17 + 1), *(v17 + 2), v17[24], *v21, v14);
  sub_10000CF40(v25);
  sub_10000CF40(v26);
  return v23;
}

uint64_t sub_100039528(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v12 = sub_10004CEFC();
  v87 = *(v12 - 8);
  v88 = v12;
  __chkstk_darwin(v12);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = &type metadata for EffectType;
  v112 = &off_100066D68;
  v15 = swift_allocObject();
  v110[0] = v15;
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = v7;
  v16 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_logger;
  sub_10000CEDC(v110, &v122);
  sub_10003E214(a2, a3, a4, v7);
  v17 = a1;
  v18 = sub_10004CEDC();
  v19 = sub_10004D39C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *&v115 = v84;
    *v20 = 136315650;
    *(v20 + 4) = sub_10000C618(0xD000000000000035, 0x8000000100054EB0, &v115);
    v85 = v14;
    *(v20 + 12) = 2080;
    v21 = sub_10000CF8C(&v122, *(&v123 + 1));
    v22 = sub_10003EA74(*v21, v21[2], *(v21 + 24));
    v86 = v16;
    v23 = v22;
    v25 = v24;
    sub_10000CF40(&v122);
    v26 = sub_10000C618(v23, v25, &v115);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2080;
    v27 = v17;
    v28 = [v27 description];
    v29 = a6;
    v30 = v17;
    v31 = sub_10004D08C();
    v33 = v32;

    v16 = v86;
    v34 = v31;
    v17 = v30;
    a6 = v29;
    v35 = sub_10000C618(v34, v33, &v115);
    v14 = v85;

    *(v20 + 24) = v35;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s for %s parentView: %s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000CF40(&v122);
  }

  [v17 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = sub_10000CF8C(v110, v111);
  v45 = sub_100035BC4(*v44, v44[1], v44[2], *(v44 + 24), a6);
  if (v45)
  {
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v47 = Strong, v48 = sub_10000CF8C(v110, v111), sub_1000358A4(*v48, v48[1], v48[2], *(v48 + 24), v47, v113), v47, v119 = v113[4], v120 = v113[5], v121[0] = v114[0], *(v121 + 14) = *(v114 + 14), v115 = v113[0], v116 = v113[1], v117 = v113[2], v118 = v113[3], sub_10003E278(&v115) == 1))
    {
      result = sub_10004D66C();
      __break(1u);
      return result;
    }

    v49 = v17;
    v107 = v119;
    v108 = v120;
    v109 = *&v121[0];
    v103 = v115;
    v104 = v116;
    v105 = v117;
    v106 = v118;
    v101 = DWORD2(v121[1]);
    v102 = WORD6(v121[1]);
    (*(v87 + 16))(v14, a6 + v16, v88);
    v126 = v107;
    v127 = v108;
    v128 = v109;
    v122 = v103;
    v123 = v104;
    v124 = v105;
    v125 = v106;
    v129 = v41;
    v130 = v43;
    v132 = v102;
    v131 = v101;
    v50 = objc_allocWithZone(type metadata accessor for PlaceholderView(0));
    sub_10000CDAC(&v122, &v90);
    v51 = sub_10001EFC8(v14, &v122);
    sub_10000CE08(&v122);
    v52 = *(a6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_pkDeviceOrientation);
    v53 = *&v51[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation];
    *&v51[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation] = v52;
    if (v53 != v52)
    {
      sub_10001E314();
    }

    v54 = v51;
    [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
    v55 = [objc_opt_self() blackColor];
    [v54 setBackgroundColor:v55];

    v56 = sub_10000CF8C(v110, v111);
    v57 = sub_10003EA74(*v56, v56[2], *(v56 + 24));
    v59 = v58;
    v60 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
    swift_beginAccess();
    v61 = v54;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = *(a6 + v60);
    *(a6 + v60) = 0x8000000000000000;
    sub_100034BAC(v61, v57, v59, isUniquelyReferenced_nonNull_native);

    *(a6 + v60) = v89;
    swift_endAccess();

    v94 = v107;
    v95 = v108;
    v96 = v109;
    v90 = v103;
    v91 = v104;
    v92 = v105;
    v93 = v106;
    v97 = v41;
    v98 = v43;
    v100 = v102;
    v99 = v101;
    sub_10000CE08(&v90);
    v17 = v49;
  }

  v63 = sub_10000CF8C(v110, v111);
  v64 = sub_100035BC4(*v63, v63[1], v63[2], *(v63 + 24), a6);
  if (v64)
  {
    v65 = v64;
    [v64 setFrame:{v37, v39, v41, v43}];
    sub_10000CEDC(v110, &v90);
    v66 = v65;
    v67 = sub_10004CEDC();
    v68 = sub_10004D39C();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v88 = v17;
      v70 = v69;
      v87 = swift_slowAlloc();
      *&v103 = v87;
      *v70 = 136315394;
      v71 = sub_10000CF8C(&v90, *(&v91 + 1));
      v72 = sub_10003EA74(*v71, v71[2], *(v71 + 24));
      v74 = v73;
      sub_10000CF40(&v90);
      v75 = sub_10000C618(v72, v74, &v103);

      *(v70 + 4) = v75;
      *(v70 + 12) = 2080;
      v76 = v66;
      v77 = [v76 description];
      v78 = sub_10004D08C();
      v80 = v79;

      v81 = sub_10000C618(v78, v80, &v103);

      *(v70 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v67, v68, "getting placeholder for %s placeholder: %s", v70, 0x16u);
      swift_arrayDestroy();

      v17 = v88;
    }

    else
    {

      sub_10000CF40(&v90);
    }

    [v17 addSubview:v66];
    sub_10004AEDC(v66);
    v82 = sub_10000CF8C(v110, v111);
    sub_100038660(*v82, v82[1], v82[2], *(v82 + 24), a6, -1.0);
  }

  return sub_10000CF40(v110);
}

unint64_t sub_100039DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CC1C(&unk_100070A20, &qword_100051738);
    v3 = sub_10004D6AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_10003E9EC(v4, &v13, &qword_1000704A8, &unk_100051740);
      v5 = v13;
      v6 = v14;
      result = sub_10003310C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100010F88(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_100039EE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CC1C(&unk_100070B70, &unk_100051800);
    v3 = sub_10004D6AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_10003E9EC(v4, &v11, &qword_10006E9D8, &unk_100050638);
      v5 = v11;
      result = sub_100033184(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100010F88(&v12, (v3[7] + 32 * result));
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

unint64_t sub_10003A008(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CC1C(&qword_100070A08, &qword_100051720);
    v3 = sub_10004D6AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10003310C(v5, v6);
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

unint64_t sub_10003A10C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CC1C(&qword_100070A00, &qword_100051718);
    v3 = sub_10004D6AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10003310C(v5, v6);
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

unint64_t sub_10003A234(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CC1C(&unk_10006EA90, &qword_1000506D8);
    v3 = sub_10004D6AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_10003E9EC(v4, v13, &qword_100070AF8, &unk_1000517E0);
      result = sub_1000330C8(v13);
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
      result = sub_100010F88(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10003A394(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_10000CC1C(a2, a3);
    v9 = sub_10004D6AC();
    v10 = a1 + 32;

    while (1)
    {
      sub_10003E9EC(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_1000332C0(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_100010F88(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

uint64_t sub_10003A4AC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

BOOL sub_10003A4FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8 = a8;
  v12 = a4;
  v51[3] = &type metadata for EffectType;
  v51[4] = &off_100066D68;
  v16 = swift_allocObject();
  v51[0] = v16;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = v12;
  v50[3] = &type metadata for EffectType;
  v50[4] = &off_100066D68;
  v17 = swift_allocObject();
  v50[0] = v17;
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  *(v17 + 32) = a7;
  *(v17 + 40) = v8;
  sub_10000CEDC(v51, v49);
  sub_10003E214(a1, a2, a3, v12);
  sub_10003E214(a5, a6, a7, v8);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (!swift_dynamicCast())
  {
    v22 = 0;
    goto LABEL_31;
  }

  sub_10000CEDC(v50, v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = v45;
    v24 = v46;
    v25 = v47;
    v26 = v48;
LABEL_13:
    sub_100010F08(v23, v24, v25, v26);
    v22 = 0;
    goto LABEL_31;
  }

  if (v48 <= 1u)
  {
    v18 = v45;
    v19 = v46;
    v20 = v47;
    if (!v48)
    {
      v21 = 0;
LABEL_10:
      sub_100010F08(v18, v19, v20, v21);
      v27 = v45;
      v28 = v46;
      v29 = v47;
      v30 = v48;
LABEL_30:
      sub_100010F08(v27, v28, v29, v30);
      v22 = 1;
      goto LABEL_31;
    }

    v31 = 1;
    goto LABEL_12;
  }

  if (v48 == 2)
  {
    v18 = v45;
    v19 = v46;
    v20 = v47;
    v21 = 2;
    goto LABEL_10;
  }

  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  v32 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType;
  if ([qword_1000730A8 enableFantasy])
  {
    v33 = sub_10003F3A8(v45, v46, v47, 3);
    v34 = sub_10004A040(v45, v46, v47, 3u);
    v35 = v34 >> 62 ? sub_10004D67C() : *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v36 = v33 == v35;
    v32 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType;
    if (v36)
    {
      v18 = v45;
      v19 = v46;
      v20 = v47;
      v31 = 3;
LABEL_12:
      sub_100010F08(v18, v19, v20, v31);
      v23 = v45;
      v24 = v46;
      v25 = v47;
      v26 = v48;
      goto LABEL_13;
    }
  }

  if (v48 != 3)
  {
    v40 = v45;
    v41 = v46;
    v42 = v47;
    v43 = v48;
LABEL_29:
    sub_100010F08(v40, v41, v42, v43);
    v27 = v45;
    v28 = v46;
    v29 = v47;
    v30 = 3;
    goto LABEL_30;
  }

  if (([v32[21] enableFantasy] & 1) == 0)
  {
    v40 = v45;
    v41 = v46;
    v42 = v47;
    v43 = 3;
    goto LABEL_29;
  }

  v37 = sub_10003F3A8(v45, v46, v47, 3);
  v38 = sub_10004A040(v45, v46, v47, 3u);
  if (v38 >> 62)
  {
    v39 = sub_10004D67C();
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_100010F08(v45, v46, v47, 3u);
  sub_100010F08(v45, v46, v47, 3u);

  v22 = v37 != v39;
LABEL_31:
  sub_10000CF40(v51);
  sub_10000CF40(v50);
  return v22;
}

uint64_t sub_10003A8D4()
{
  sub_100010F08(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10003A914(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_10003A964(void *a1, double a2)
{
  if (a2 >= 2.22044605e-16)
  {
    *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_lastProgressValue) = a2;
    v6 = [a1 identifier];
    v7 = sub_10004D08C();
    v9 = v8;

    v10 = sub_10004ACBC(v7, v9);
    v12 = v11;
    v14 = v13;
    v16 = v15;

    sub_100038660(v10, v12, v14, v16, *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager), a2);

    sub_100010F08(v10, v12, v14, v16);
  }

  else
  {
    oslog = sub_10004CEDC();
    v4 = sub_10004D39C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = a2;
      _os_log_impl(&_mh_execute_header, oslog, v4, "didTransitionTo discard progress change %f", v5, 0xCu);
    }
  }
}

void sub_10003AC0C(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_10004CEDC();
  v5 = sub_10004D39C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v36 = v7;
    *v6 = 136315138;
    v8 = [v3 identifier];
    v9 = sub_10004D08C();
    v11 = v10;

    v12 = sub_10000C618(v9, v11, &v36);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "didFinishTransitionTo look: %s", v6, 0xCu);
    sub_10000CF40(v7);
  }

  v13 = [v3 identifier];
  v14 = sub_10004D08C();
  v16 = v15;

  v17 = sub_10004ACBC(v14, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_10003E214(v17, v19, v21, v23);
  v24 = sub_10004CEDC();
  v25 = sub_10004D39C();
  sub_100010F08(v17, v19, v21, v23);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v36 = v27;
    *v26 = 136315138;
    v39._countAndFlagsBits = v17;
    v39._object = v19;
    v28 = sub_10003EA74(v39, v21, v23);
    v30 = sub_10000C618(v28, v29, &v36);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "didFinishTransitionTo effectType: %s", v26, 0xCu);
    sub_10000CF40(v27);
  }

  v31 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v37 = &type metadata for EffectType;
  v38 = &off_100066D68;
  v32 = swift_allocObject();
  *&v36 = v32;
  *(v32 + 16) = v17;
  *(v32 + 24) = v19;
  *(v32 + 32) = v21;
  *(v32 + 40) = v23;
  v33 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10003E214(v17, v19, v21, v23);
  sub_10000CF40((v31 + v33));
  sub_10000CEC4(&v36, v31 + v33);
  swift_endAccess();
  sub_10003E214(v17, v19, v21, v23);
  sub_100038660(v17, v19, v21, v23, v31, 1.0);
  sub_100010F08(v17, v19, v21, v23);
  v34 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor;
  [*(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor) updateActions];
  v35 = *(v2 + v34);
  [v35 updateLuminanceValuesForLooks];
  sub_100010F08(v17, v19, v21, v23);
}

void sub_10003B010(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10004CEDC();
  v4 = sub_10004D39C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10000C618(0xD000000000000017, 0x8000000100055020, &v14);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000CF40(v6);
  }

  sub_100032A38(v7);
  v8 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor);
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor) = 0;

  v9 = v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType;
  v10 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType);
  v11 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType + 8);
  v12 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType + 16);
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  v13 = *(v9 + 24);
  *(v9 + 24) = -1;

  sub_10003E080(v10, v11, v12, v13);
}

uint64_t sub_10003B16C(void *a1, uint64_t a2, void (**a3)(void))
{
  v6 = sub_10004CEDC();
  v7 = sub_10004D39C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v57[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10000C618(0xD000000000000021, 0x8000000100054FD0, v57);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000CF40(v9);
  }

  v52 = sub_10003A234(&_swiftEmptyArrayStorage);
  v10 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  v57[0] = 0;
  v11 = [v10 loadUserInfoWithError:v57];
  swift_unknownObjectRelease();
  v12 = v57[0];
  if (v11)
  {
    v13 = sub_10004D01C();
    v14 = v12;

    v52 = v13;
    v15 = sub_10004CEDC();
    v16 = sub_10004D39C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v50 = a3;
      v18 = swift_slowAlloc();
      v57[0] = v18;
      *v17 = 136315138;

      v19 = sub_10004D02C();
      v21 = v20;

      v22 = sub_10000C618(v19, v21, v57);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "loading userInfo... %s", v17, 0xCu);
      sub_10000CF40(v18);
      a3 = v50;
    }
  }

  else
  {
    v23 = v57[0];
    sub_10004CC6C();

    swift_willThrow();
  }

  v24 = *(a2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v25 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v24 + v25, v57);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (swift_dynamicCast())
  {
    v26 = v53;
    v27 = v54;
    v28 = v55;
    v29 = v56;
    swift_beginAccess();
    sub_10003F6FC(&v52, v53, v54, v55, v56);
    swift_endAccess();
    sub_100010F08(v26, v27, v28, v29);
    v30 = sub_10004CEDC();
    v31 = sub_10004D39C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v57[0] = v33;
      *v32 = 136315138;
      v51 = a1;
      v34 = a3;

      v35 = sub_10004D02C();
      v37 = v36;

      v38 = sub_10000C618(v35, v37, v57);

      *(v32 + 4) = v38;
      a3 = v34;
      a1 = v51;
      _os_log_impl(&_mh_execute_header, v30, v31, "saving userInfo... %s", v32, 0xCu);
      sub_10000CF40(v33);
    }

    v39 = [objc_msgSend(a1 "environment")];
    swift_unknownObjectRelease();

    isa = sub_10004D00C().super.isa;

    v57[0] = 0;
    v41 = [v39 storeUserInfo:isa error:v57];

    if (v41)
    {
      v42 = v57[0];
    }

    else
    {
      v43 = v57[0];
      sub_10004CC6C();

      swift_willThrow();
      swift_errorRetain();
      v44 = sub_10004CEDC();
      v45 = sub_10004D38C();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        swift_errorRetain();
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v48;
        *v47 = v48;
        _os_log_impl(&_mh_execute_header, v44, v45, "Error saving userInfo %@", v46, 0xCu);
        sub_100024DC8(v47, &qword_1000703F0, &qword_100050B90);
      }

      else
      {
      }
    }

    a3[2](a3);
  }

  else
  {
    _Block_release(a3);
    result = sub_10004D66C();
    __break(1u);
  }

  return result;
}

void sub_10003B8B8(uint64_t a1)
{
  oslog = sub_10004CEDC();
  v1 = sub_10004D39C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_10000C618(0xD000000000000020, 0x8000000100054FA0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000CF40(v3);
  }
}

void sub_10003B9C4(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  swift_getObjectType();
  v6 = [a1 deviceOrientation];
  v7 = 0.0;
  if (a2)
  {
    v8 = [a2 animationSettings];
    if (v8)
    {
      v9 = v8;
      [v8 duration];
      v7 = v10;
    }
  }

  sub_100010FE4(v6, v7);
  v11 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v5 + v11, v23);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (swift_dynamicCast())
  {
    if (v22 == 3)
    {

      type metadata accessor for TranscriptBackgroundView(0);
      sub_100018394(a1, v23);
      if ((v25 & 1) == 0)
      {
        v18 = v23[1];
        v19 = v23[0];
        v12 = v24;
        v13 = sub_100032974();
        if (v13)
        {
          v14 = v13;
          if ([*&v13[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView] rendersContinuously] && (v15 = *&v14[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor]) != 0)
          {
            swift_unknownObjectWeakInit();
            v16 = *(v15 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

            os_unfair_lock_lock(v16);
            v17 = *(v15 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
            sub_100017FA0(v17, v20, v19, v18, v12);

            os_unfair_lock_unlock(v16);

            swift_unknownObjectWeakDestroy();
          }

          else
          {
          }
        }
      }
    }

    else
    {
      sub_100010F08(v20[0], v20[1], v21, v22);
    }
  }

  else
  {
    sub_10004D66C();
    __break(1u);
  }
}

char *sub_10003BC3C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10004CEDC();
  v4 = sub_10004D39C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v58 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10000C618(0x6F6628736B6F6F6CLL, 0xEB00000000293A72, &v58);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000CF40(v6);
  }

  v7 = (v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType);
  v8 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType + 24);
  if (v8 == 255)
  {
    v35 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
    v36 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
    swift_beginAccess();
    sub_10000CEDC(v35 + v36, &v58);
    sub_10000CC1C(&qword_100070A40, &unk_100050920);
    if (!swift_dynamicCast())
    {
      result = sub_10004D66C();
      __break(1u);
      return result;
    }

    v19 = sub_10004A040(v53, v55, v56, v57);
    sub_100010F08(v53, v55, v56, v57);
  }

  else
  {
    v10 = *v7;
    v9 = v7[1];
    v11 = v7[2];
    sub_10003E214(*v7, v9, v11, *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType + 24));
    sub_10003E214(v10, v9, v11, v8);
    v12 = sub_10004CEDC();
    v13 = sub_10004D39C();
    sub_10003E080(v10, v9, v11, v8);
    if (os_log_type_enabled(v12, v13))
    {
      v51 = v2;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v58 = v15;
      *v14 = 136315138;
      v60._countAndFlagsBits = v10;
      v60._object = v9;
      v16 = sub_10003EA74(v60, v11, v8);
      v18 = sub_10000C618(v16, v17, &v58);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "initialEffectType: %s", v14, 0xCu);
      sub_10000CF40(v15);

      v2 = v51;
    }

    v19 = sub_10004A040(v10, v9, v11, v8);
    v54 = v19;
    if (v8 == 3)
    {
      sub_10003E214(v10, v9, v11, 3u);

      if (qword_10006E0A8 != -1)
      {
        swift_once();
      }

      v20 = [qword_1000730A8 customGlitterVariant];
      if (v20)
      {
        v21 = v20;
        sub_10004D08C();
        v23 = v22;

        sub_10004C820();
        v52 = v24;

        v25 = sub_10004D05C();
        v26 = sub_10004B21C(v25, v52);

        v27 = sub_10004A040(v10, v9, v11, 3u);
        if (v27 >> 62)
        {
          v28 = sub_10004D67C();
        }

        else
        {
          v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (__OFADD__(v28, 1))
        {
          __break(1u);
        }

        else
        {
          v58 = v28 + 1;
          v2 = sub_10004D73C();
          v23 = v29;
          v58 = 0x5F72657474696C67;
          v59 = 0xE800000000000000;
          v26 = v26;
          v61._countAndFlagsBits = v2;
          v61._object = v23;
          sub_10004D16C(v61);
          if (qword_10006E090 == -1)
          {
LABEL_14:
            v30.super.isa = qword_100073028;
            v50._countAndFlagsBits = 0xE000000000000000;
            v62._countAndFlagsBits = 0x52455454494C47;
            v65.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v65.value._object = 0xEB00000000656C62;
            v62._object = 0xE700000000000000;
            v66._countAndFlagsBits = 0;
            v66._object = 0xE000000000000000;
            v58 = sub_10004CC4C(v62, v65, v30, v66, 0, v50);
            v59 = v31;
            v63._countAndFlagsBits = 32;
            v63._object = 0xE100000000000000;
            sub_10004D16C(v63);
            v64._countAndFlagsBits = v2;
            v64._object = v23;
            sub_10004D16C(v64);
            v32 = objc_allocWithZone(PREditingLook);
            v33 = sub_10004D05C();

            v34 = sub_10004D05C();

            [v32 initWithIdentifier:v33 displayName:v34];

            sub_10004D21C();
            if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_10004D25C();
            }

            sub_10004D27C();

            sub_10003E080(v10, v9, v11, 3u);
            v19 = v54;
            goto LABEL_22;
          }
        }

        swift_once();
        goto LABEL_14;
      }

      v37 = v10;
      v38 = v9;
      v39 = v11;
      v40 = 3;
    }

    else
    {
      v37 = v10;
      v38 = v9;
      v39 = v11;
      v40 = v8;
    }

    sub_10003E080(v37, v38, v39, v40);
  }

LABEL_22:
  v41 = sub_10004CEDC();
  v42 = sub_10004D39C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v58 = v44;
    *v43 = 136315138;
    sub_10000D024(0, &unk_100070AE8, PREditingLook_ptr);

    v45 = sub_10004D24C();
    v47 = v46;

    v48 = sub_10000C618(v45, v47, &v58);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v41, v42, "looks : %s", v43, 0xCu);
    sub_10000CF40(v44);
  }

  return v19;
}

uint64_t sub_10003C3DC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10004CEDC();
  v4 = sub_10004D39C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10000C618(0xD00000000000001BLL, 0x8000000100054F80, v14);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000CF40(v6);
  }

  v7 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v8 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v7 + v8, v14);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (swift_dynamicCast())
  {
    v9 = sub_10003EA74(v11, v12, v13);
    sub_100010F08(v11._countAndFlagsBits, v11._object, v12, v13);
    return v9;
  }

  else
  {
    result = sub_10004D66C();
    __break(1u);
  }

  return result;
}

double sub_10003C5E4(void *a1)
{
  v1 = [a1 identifier];
  v2 = sub_10004D08C();
  v4 = v3;

  v5 = sub_10004ACBC(v2, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  sub_10003E214(v5, v7, v9, v11);
  v12 = sub_10004CEDC();
  v13 = sub_10004D39C();
  sub_100010F08(v5, v7, v9, v11);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315394;
    v21._countAndFlagsBits = v5;
    v21._object = v7;
    v16 = sub_10003EA74(v21, v9, v11);
    v18 = sub_10000C618(v16, v17, &v20);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = 0x3FC999999999999ALL;
    _os_log_impl(&_mh_execute_header, v12, v13, "effectType: %s luminance: %f", v14, 0x16u);
    sub_10000CF40(v15);

    sub_100010F08(v5, v7, v9, v11);
  }

  else
  {

    sub_100010F08(v5, v7, v9, v11);
  }

  return 0.2;
}

void sub_10003C8F4(void *a1, void *a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10004CEDC();
  v6 = sub_10004D39C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10000C618(0xD00000000000001CLL, 0x8000000100054F60, v38);
    *(v7 + 12) = 2080;
    v8 = [v4 identifier];
    v9 = sub_10004D08C();
    v10 = v3;
    v12 = v11;

    v13 = sub_10000C618(v9, v12, v38);
    v3 = v10;

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s for look %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = [v4 identifier];
  v15 = sub_10004D08C();
  v17 = v16;

  v18 = sub_10004ACBC(v15, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_10003E214(v18, v20, v22, v24);
  v25 = sub_10004CEDC();
  v26 = sub_10004D39C();
  sub_100010F08(v18, v20, v22, v24);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v27 = 136315394;
    v40._countAndFlagsBits = v18;
    v40._object = v20;
    v28 = sub_10003EA74(v40, v22, v24);
    v30 = v3;
    v31 = sub_10000C618(v28, v29, v38);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v41._countAndFlagsBits = v18;
    v41._object = v20;
    v32 = sub_10003F828(v41, v22, v24);
    v34 = sub_10000C618(v32, v33, v38);

    *(v27 + 14) = v34;
    v3 = v30;
    _os_log_impl(&_mh_execute_header, v25, v26, "setupBackgroundViewIfNecessaryInView for look %s - %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  v35 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v36 = [a1 backgroundView];
  sub_100039528(v36, v18, v20, v22, v24, v35);

  sub_100010F08(v18, v20, v22, v24);
}

uint64_t sub_10003CDD0()
{
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D39C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID);

    _os_log_impl(&_mh_execute_header, v2, v3, "#%ld shouldAttemptSnapshotForHandle", v4, 0xCu);
  }

  else
  {

    v2 = v1;
  }

  return 1;
}

void sub_10003CEA0()
{
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D39C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID);

    _os_log_impl(&_mh_execute_header, v2, v3, "#%ld completedSnapshotForHandle", v4, 0xCu);
  }

  else
  {

    v2 = v1;
  }

  v5 = sub_100032974();
  if (v5)
  {
    v8 = v5;

    v6 = sub_10001F534();

    v7 = v8;
    if (v6 && *(v8 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting) == 1)
    {
      *(v8 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting) = 0;
      sub_10002D0B8();
      v7 = v8;
    }
  }
}

void sub_10003CFFC(uint64_t a1)
{
  v2 = sub_100032974();
  if (v2)
  {
    v3 = v2;

    v4 = sub_10001F534();

    if (v4 && v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting] == 1)
    {
      v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting] = 0;
      sub_10002D0B8();
    }
  }

  v5 = v1;
  swift_errorRetain();
  oslog = sub_10004CEDC();
  v6 = sub_10004D39C();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 134218242;
    *(v7 + 4) = *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID);

    *(v7 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, oslog, v6, "#%ld failedToSnapshotWithError %@", v7, 0x16u);
    sub_100024DC8(v8, &qword_1000703F0, &qword_100050B90);

    v10 = oslog;
  }

  else
  {

    v10 = v5;
  }
}

void sub_10003D1B8(void *a1)
{
  v1 = a1;
  oslog = sub_10004CEDC();
  v2 = sub_10004D39C();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = [v1 type];
    type metadata accessor for PRRenderingTransitionType(0);
    v5 = sub_10004D0FC();
    v7 = sub_10000C618(v5, v6, &v12);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    [v1 phase];
    type metadata accessor for PRRenderingTransitionPhase(0);
    v8 = sub_10004D0FC();
    v10 = sub_10000C618(v8, v9, &v12);

    *(v3 + 14) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v2, "transitionState %s %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10003D37C(void *a1)
{
  v2 = [a1 type];
  v3 = sub_10004D08C();
  v5 = v4;
  if (v3 == sub_10004D08C() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_10004D74C();

    if ((v8 & 1) == 0)
    {
      oslog = sub_10004CEDC();
      v9 = sub_10004D38C();
      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v9, "Unhandled event type", v10, 2u);
      }

      return;
    }
  }

  v11 = sub_100032974();
  if (v11)
  {
    v12 = v11;
    v13 = [a1 metadata];
    v14 = sub_10004D01C();

    sub_10000AEEC(v14);
  }
}

void sub_10003D56C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10004CEDC();
  v4 = sub_10004D39C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10000C618(0xD000000000000019, 0x8000000100054DD0, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000CF40(v6);
  }

  sub_100032A38(v7);
  v8 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_renderer);
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_renderer) = 0;
}

uint64_t sub_10003D69C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10004CF1C();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004CF6C();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10004CF8C();
  v10 = *(v37 - 8);
  v11 = __chkstk_darwin(v37);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = sub_10004CEDC();
  v17 = sub_10004D39C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = a2;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v18 = 136315138;
    *(v18 + 4) = sub_10000C618(0xD000000000000024, 0x8000000100054DA0, aBlock);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s", v18, 0xCu);
    sub_10000CF40(v20);
    a2 = v19;
  }

  sub_100032A38(v21);
  v22 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_renderer);
  *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_renderer) = 0;

  sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
  v23 = sub_10004D3DC();
  sub_10004CF7C();
  sub_10004CFAC();
  v30 = *(v10 + 8);
  v30(v13, v37);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  aBlock[4] = sub_10003DFF8;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002FBD0;
  aBlock[3] = &unk_100066A58;
  v25 = _Block_copy(aBlock);

  v26 = v31;
  sub_10004CF3C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10003E038(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
  sub_1000249FC(&qword_1000708B0, &unk_10006E3D0, &qword_100050620);
  v27 = v32;
  v28 = v36;
  sub_10004D57C();
  sub_10004D3BC();
  _Block_release(v25);

  (*(v35 + 8))(v27, v28);
  (*(v33 + 8))(v26, v34);
  return (v30)(v15, v37);
}

void sub_10003DB70(void *a1)
{
  v1 = [a1 knownContexts];
  sub_10000D024(0, &qword_100070A30, PRPosterSnapshotContext_ptr);
  sub_10003DF40();
  v2 = sub_10004D30C();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10004D5AC();
    sub_10004D31C();
    v3 = v51;
    v4 = v52;
    v5 = v53;
    v6 = v54;
    v7 = v55;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
    v3 = v2;
  }

  v11 = (v5 + 64) >> 6;
  v12 = a1;
  v49 = v3;
  while (v3 < 0)
  {
    if (!sub_10004D5BC())
    {
      goto LABEL_25;
    }

    swift_dynamicCast();
    v18 = v50;
    v16 = v6;
    v17 = v7;
    if (!v50)
    {
      goto LABEL_25;
    }

LABEL_19:
    v19 = [v18 interfaceOrientation];
    v20 = [v12 inflightContext];
    v21 = [v20 interfaceOrientation];

    if (v19 == v21)
    {
      [v18 canvasBounds];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = [v12 inflightContext];
      [v30 canvasBounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v56.origin.x = v23;
      v56.origin.y = v25;
      v56.size.width = v27;
      v56.size.height = v29;
      v57.origin.x = v32;
      v57.origin.y = v34;
      v57.size.width = v36;
      v57.size.height = v38;
      if (CGRectEqualToRect(v56, v57))
      {
        v39 = [v18 snapshotDefinitionIdentifier];
        v47 = sub_10004D08C();
        v41 = v40;

        v42 = [v12 inflightContext];
        v43 = [v42 snapshotDefinitionIdentifier];

        v44 = sub_10004D08C();
        v46 = v45;

        if (v47 == v44 && v41 == v46)
        {

LABEL_24:
          v3 = v49;
LABEL_25:
          sub_10003DFA8(v3);

          return;
        }

        v13 = sub_10004D74C();

        v12 = a1;
        if (v13)
        {
          goto LABEL_24;
        }
      }
    }

    v6 = v16;
    v7 = v17;
    v3 = v49;
  }

  v14 = v6;
  v15 = v7;
  v16 = v6;
  if (v7)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v3 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      goto LABEL_25;
    }

    v15 = *(v4 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

unint64_t sub_10003DF40()
{
  result = qword_100070A38;
  if (!qword_100070A38)
  {
    sub_10000D024(255, &qword_100070A30, PRPosterSnapshotContext_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070A38);
  }

  return result;
}

uint64_t sub_10003DFB0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E020(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003E038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10003E080(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    sub_100010F08(a1, a2, a3, a4);
  }
}

uint64_t sub_10003E0F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E144()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E17C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10003E214(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 < 3u)
  {

LABEL_4:

    return;
  }

  if (a4 == 3)
  {
    v5 = a3;

    goto LABEL_4;
  }
}

uint64_t sub_10003E278(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10003E290()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E2C8()
{

  sub_10000CF40((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

double sub_10003E314(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v2 = a1[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v11 = *(v10 + 24);

        v11();
      }
    }

    else
    {
      a1[3] = v3;
      a1[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        (*(v4 + 32))(v15);
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(a1, a2, v3);
        }

        (*(v4 + 8))(v15, v2);
      }
    }
  }

  return result;
}

uint64_t sub_10003E530()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10003E588(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000FC14;

  return sub_1000447F8(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_10003E650()
{
  v1 = sub_10004CD3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_10003E734()
{
  v1 = *(sub_10004CD3C() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 1);

  sub_10002B0B0(v3, v4, v5, v0 + v2, v7, v8);
}

id sub_10003E7D8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 metalCapture];
  *a2 = result;
  return result;
}

uint64_t sub_10003E828(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100010FA0;

  return sub_10001043C(a1, v4);
}

uint64_t sub_10003E8E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E918(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000FC14;

  return sub_10001043C(a1, v4);
}

double sub_10003E9D0(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 110) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10003E9EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000CC1C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10003EA74(Swift::String a1, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      v3 = 0x5F72657474696C67;
      goto LABEL_9;
    }

    v4 = 0x61726F727561;
    goto LABEL_7;
  }

  if (a4)
  {
    v4 = 0x7364756F6C63;
LABEL_7:
    v3 = v4 & 0xFFFFFFFFFFFFLL | 0x5F000000000000;
    goto LABEL_9;
  }

  v3 = 0x5F6E6165636FLL;
LABEL_9:
  v6 = v3;
  sub_10004D16C(a1);
  return v6;
}

uint64_t sub_10003EB10(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a1 == 49 && a2 == 0xE100000000000000 || (sub_10004D74C() & 1) != 0)
      {
        if (qword_10006E090 != -1)
        {
          swift_once();
        }

        v6.super.isa = qword_100073028;
        v12._countAndFlagsBits = 0xE000000000000000;
        v8._countAndFlagsBits = 1263752516;
      }

      else if (a1 == 50 && a2 == 0xE100000000000000 || (sub_10004D74C() & 1) != 0)
      {
        if (qword_10006E090 != -1)
        {
          swift_once();
        }

        v6.super.isa = qword_100073028;
        v12._countAndFlagsBits = 0xE000000000000000;
        v8._countAndFlagsBits = 1163542856;
      }

      else
      {
        if (a1 == 51 && a2 == 0xE100000000000000 || (sub_10004D74C() & 1) != 0)
        {
          if (qword_10006E090 != -1)
          {
            swift_once();
          }

          v6.super.isa = qword_100073028;
          v12._countAndFlagsBits = 0xE000000000000000;
          v8._countAndFlagsBits = 0x5445534E5553;
          v8._object = 0xE600000000000000;
          goto LABEL_24;
        }

        if (a1 == 52 && a2 == 0xE100000000000000 || (sub_10004D74C() & 1) != 0)
        {
          if (qword_10006E090 != -1)
          {
            swift_once();
          }

          v6.super.isa = qword_100073028;
          v12._countAndFlagsBits = 0xE000000000000000;
          v8._countAndFlagsBits = 0x5241454C43;
          v8._object = 0xE500000000000000;
          goto LABEL_24;
        }

        if (a1 == 53 && a2 == 0xE100000000000000 || (sub_10004D74C() & 1) != 0)
        {
          if (qword_10006E090 != -1)
          {
            swift_once();
          }

          v6.super.isa = qword_100073028;
          v12._countAndFlagsBits = 0xE000000000000000;
          v8._countAndFlagsBits = 0x455349524E5553;
          v8._object = 0xE700000000000000;
          goto LABEL_24;
        }

        if ((a1 != 54 || a2 != 0xE100000000000000) && (sub_10004D74C() & 1) == 0)
        {
          if (qword_10006E090 != -1)
          {
            swift_once();
          }

          v6.super.isa = qword_100073028;
          v12._countAndFlagsBits = 0xE000000000000000;
          v8._countAndFlagsBits = 0x5344554F4C43;
          v8._object = 0xE600000000000000;
          goto LABEL_24;
        }

        if (qword_10006E090 != -1)
        {
          swift_once();
        }

        v6.super.isa = qword_100073028;
        v12._countAndFlagsBits = 0xE000000000000000;
        v8._countAndFlagsBits = 1314341188;
      }

      goto LABEL_23;
    }

    if (a1 == 49 && a2 == 0xE100000000000000 || (sub_10004D74C() & 1) != 0)
    {
      if (qword_10006E090 != -1)
      {
        swift_once();
      }

      v6.super.isa = qword_100073028;
      v12._countAndFlagsBits = 0xE000000000000000;
      v8._countAndFlagsBits = 0x544847494CLL;
      v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v7.value._object = 0xEB00000000656C62;
      v8._object = 0xE500000000000000;
      goto LABEL_25;
    }

    if (a1 == 50 && a2 == 0xE100000000000000 || (sub_10004D74C() & 1) != 0)
    {
      if (qword_10006E090 != -1)
      {
        swift_once();
      }

      v6.super.isa = qword_100073028;
      v12._countAndFlagsBits = 0xE000000000000000;
      v8._countAndFlagsBits = 1263681860;
LABEL_23:
      v8._object = 0xE400000000000000;
      goto LABEL_24;
    }

    if (qword_10006E090 != -1)
    {
      swift_once();
    }

    v6.super.isa = qword_100073028;
    v12._countAndFlagsBits = 0xE000000000000000;
    v9 = 1095058255;
    goto LABEL_16;
  }

  if (a4 == 2)
  {
    if ((a1 != 49 || a2 != 0xE100000000000000) && (sub_10004D74C() & 1) == 0)
    {
      if (a1 == 50 && a2 == 0xE100000000000000 || (sub_10004D74C() & 1) != 0)
      {
        if (qword_10006E090 != -1)
        {
          swift_once();
        }

        v6.super.isa = qword_100073028;
        v12._countAndFlagsBits = 0xE000000000000000;
        v8._countAndFlagsBits = 0x454C50525550;
        v8._object = 0xE600000000000000;
        goto LABEL_24;
      }

      if ((a1 != 51 || a2 != 0xE100000000000000) && (sub_10004D74C() & 1) == 0)
      {
        if (qword_10006E090 != -1)
        {
          swift_once();
        }

        v6.super.isa = qword_100073028;
        v12._countAndFlagsBits = 0xE000000000000000;
        v8._countAndFlagsBits = 0x41524F525541;
        v8._object = 0xE600000000000000;
        goto LABEL_24;
      }

      if (qword_10006E090 != -1)
      {
        swift_once();
      }

      v6.super.isa = qword_100073028;
      v12._countAndFlagsBits = 0xE000000000000000;
      v8._countAndFlagsBits = 1263421776;
      goto LABEL_23;
    }

    if (qword_10006E090 != -1)
    {
      swift_once();
    }

    v6.super.isa = qword_100073028;
    v12._countAndFlagsBits = 0xE000000000000000;
    v9 = 1162170951;
LABEL_16:
    v8._countAndFlagsBits = v9 & 0xFFFF0000FFFFFFFFLL | 0x4E00000000;
    v8._object = 0xE500000000000000;
LABEL_24:
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
LABEL_25:
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    return sub_10004CC4C(v8, v7, v6, v18, 0, v12);
  }

  if (qword_10006E090 != -1)
  {
    swift_once();
  }

  v11.super.isa = qword_100073028;
  v12._countAndFlagsBits = 0xE000000000000000;
  v14._countAndFlagsBits = 0x52455454494C47;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEB00000000656C62;
  v14._object = 0xE700000000000000;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v13 = sub_10004CC4C(v14, v17, v11, v19, 0, v12);
  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  sub_10004D16C(v15);
  v16._countAndFlagsBits = a1;
  v16._object = a2;
  sub_10004D16C(v16);
  return v13;
}

uint64_t sub_10003F30C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100010F88(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_100034D24(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_10000CFD0(a2);
    *v2 = v6;
  }

  else
  {
    sub_1000196A8(a1);
    sub_10004002C(a2, v7);
    sub_10000CFD0(a2);
    return sub_1000196A8(v7);
  }

  return result;
}

uint64_t sub_10003F3A8(uint64_t result, unint64_t a2, void *a3, char a4)
{
  v5 = result;
  if (a4 != 1)
  {

    result = sub_10003F920(v5, a2);
    if (v14)
    {
      return -1;
    }

    return result;
  }

  v6 = HIBYTE(a2) & 0xF;
  v7 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return -1;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    sub_10003E214(result, a2, a3, 1u);
    v31 = sub_100040420(v5, a2, 10);
    v33 = v32;
    sub_100010F08(v5, a2, a3, 1u);
    if (v33)
    {
      return -1;
    }

    return v31;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v34[0] = result;
    v34[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (!v6)
      {
LABEL_74:
        __break(1u);
        return result;
      }

      if (--v6)
      {
        result = 0;
        v22 = v34 + 1;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * result;
          if ((result * 10) >> 64 != (10 * result) >> 63)
          {
            break;
          }

          result = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v6)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else if (result == 45)
    {
      if (!v6)
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      if (--v6)
      {
        result = 0;
        v15 = v34 + 1;
        while (1)
        {
          v16 = *v15 - 48;
          if (v16 > 9)
          {
            break;
          }

          v17 = 10 * result;
          if ((result * 10) >> 64 != (10 * result) >> 63)
          {
            break;
          }

          result = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          ++v15;
          if (!--v6)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else if (v6)
    {
      result = 0;
      v27 = v34;
      while (1)
      {
        v28 = *v27 - 48;
        if (v28 > 9)
        {
          break;
        }

        v29 = 10 * result;
        if ((result * 10) >> 64 != (10 * result) >> 63)
        {
          break;
        }

        result = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          break;
        }

        ++v27;
        if (!--v6)
        {
          goto LABEL_66;
        }
      }
    }
  }

  else
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v6 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_10004D64C();
      v6 = result;
    }

    v9 = *v6;
    if (v9 == 43)
    {
      if (v7 >= 1)
      {
        v18 = v7 - 1;
        if (v7 != 1)
        {
          result = 0;
          if (!v6)
          {
            goto LABEL_66;
          }

          v19 = (v6 + 1);
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            v21 = 10 * result;
            if ((result * 10) >> 64 != (10 * result) >> 63)
            {
              break;
            }

            result = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              break;
            }

            ++v19;
            if (!--v18)
            {
LABEL_57:
              LOBYTE(v6) = 0;
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      goto LABEL_73;
    }

    if (v9 == 45)
    {
      if (v7 >= 1)
      {
        v10 = v7 - 1;
        if (v7 != 1)
        {
          result = 0;
          if (!v6)
          {
            goto LABEL_66;
          }

          v11 = (v6 + 1);
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * result;
            if ((result * 10) >> 64 != (10 * result) >> 63)
            {
              break;
            }

            result = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v10)
            {
              goto LABEL_57;
            }
          }
        }

        goto LABEL_65;
      }

      __break(1u);
      goto LABEL_72;
    }

    if (v7)
    {
      result = 0;
      if (!v6)
      {
        goto LABEL_66;
      }

      while (1)
      {
        v25 = *v6 - 48;
        if (v25 > 9)
        {
          break;
        }

        v26 = 10 * result;
        if ((result * 10) >> 64 != (10 * result) >> 63)
        {
          break;
        }

        result = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          break;
        }

        ++v6;
        if (!--v7)
        {
          goto LABEL_57;
        }
      }
    }
  }

LABEL_65:
  result = 0;
  LOBYTE(v6) = 1;
LABEL_66:
  v35 = v6;
  if (v6)
  {
    return -1;
  }

  return result;
}

void sub_10003F6FC(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned __int8 a5)
{
  v9 = a5;
  sub_10004D5EC();
  v21._countAndFlagsBits = a2;
  v21._object = a3;
  v19 = &type metadata for String;
  v17 = sub_10003EA74(v21, v10, a5);
  v18 = v11;
  sub_10003F30C(&v17, v20);
  if (v9 == 3)
  {
    v12 = a4;
    if (a4)
    {
      v13 = v12;
      v17 = 0x6F436D6F74737563;
      v18 = 0xEB00000000726F6CLL;
      sub_10004D5EC();
      v14.n128_f64[0] = sub_10004B11C();
      v15 = sub_10004B44C(v14);
      v19 = &type metadata for String;
      v17 = v15;
      v18 = v16;
      sub_10003F30C(&v17, v20);
    }
  }
}

uint64_t sub_10003F828(Swift::String a1, void *a3, unsigned __int8 a4)
{
  v4 = a4;
  result = sub_10003EA74(a1, a3, a4);
  v9 = result;
  if (v4 == 3)
  {
    v6 = result;
    v7 = a3;
    result = v6;
    if (a3)
    {
      v8.n128_f64[0] = sub_10004B11C();
      v10._countAndFlagsBits = sub_10004B44C(v8);
      sub_10004D16C(v10);

      v11._countAndFlagsBits = 95;
      v11._object = 0xE100000000000000;
      sub_10004D16C(v11);

      return v9;
    }
  }

  return result;
}

uint64_t sub_10003F8D4()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_10003F920(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_10004D64C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100040420(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10003FC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  v16._countAndFlagsBits = *a1;
  v16._object = v3;
  v8 = sub_10003EA74(v16, a3, v6);
  v10 = v9;
  v17._countAndFlagsBits = v4;
  v17._object = v5;
  if (v8 == sub_10003EA74(v17, v11, v7) && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_10004D74C();
  }

  return v14 & 1;
}

Swift::Int sub_10003FCC8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  sub_10004D7BC();
  v6._countAndFlagsBits = v1;
  v6._object = v2;
  sub_10003EA74(v6, v4, v3);
  sub_10004D14C();

  return sub_10004D7DC();
}

uint64_t sub_10003FD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10003EA74(*v3, a3, *(v3 + 24));
  sub_10004D14C();
}

Swift::Int sub_10003FD98()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  sub_10004D7BC();
  v6._countAndFlagsBits = v1;
  v6._object = v2;
  sub_10003EA74(v6, v4, v3);
  sub_10004D14C();

  return sub_10004D7DC();
}

Swift::Int sub_10003FE14()
{
  sub_10004D7BC();
  sub_10004D7CC(0);
  return sub_10004D7DC();
}

Swift::Int sub_10003FE80()
{
  sub_10004D7BC();
  sub_10004D7CC(0);
  return sub_10004D7DC();
}

__n128 sub_10003FF18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10003FF2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10003FF74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_10003FFD8()
{
  result = qword_100070C90;
  if (!qword_100070C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C90);
  }

  return result;
}

double sub_10004002C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000330C8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10003557C();
      v9 = v11;
    }

    sub_10000CFD0(*(v9 + 48) + 40 * v7);
    sub_100010F88((*(v9 + 56) + 32 * v7), a2);
    sub_1000400D0(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1000400D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10004D59C() + 1) & ~v5;
    do
    {
      sub_10003E094(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_10004D5CC(*(a2 + 40));
      result = sub_10000CFD0(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100040274(int64_t a1, uint64_t *a2)
{
  v5 = sub_10004D15C();
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v6 + 3) >> 1, v11 < v8))
  {
    if (v7 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v7;
    }

    v6 = sub_100048358(isUniquelyReferenced_nonNull_native, v12, 1, v6);
    v11 = *(v6 + 3) >> 1;
  }

  v13 = *(v6 + 2);
  v14 = (v11 - v13);
  v15 = sub_1000409AC(&v29, &v6[16 * v13 + 32], v11 - v13, a1, a2);
  if (v15 < v9)
  {
    goto LABEL_15;
  }

  if (v15 >= 1)
  {
    v16 = *(v6 + 2);
    v17 = __OFADD__(v16, v15);
    v18 = v15 + v16;
    if (v17)
    {
      __break(1u);
LABEL_29:
      *(v6 + 2) = a1;
LABEL_30:
      v2 = a2;
      goto LABEL_13;
    }

    *(v6 + 2) = v18;
  }

  if (v15 == v14)
  {
LABEL_16:
    a2 = v2;
    a1 = *(v6 + 2);
    v20 = sub_10004D17C();
    if (v21)
    {
      while (1)
      {
        v22 = *(v6 + 3);
        v23 = v22 >> 1;
        if ((v22 >> 1) < a1 + 1)
        {
          v26 = v20;
          v27 = v21;
          v28 = sub_100048358((v22 > 1), a1 + 1, 1, v6);
          v21 = v27;
          v6 = v28;
          v20 = v26;
          v23 = *(v6 + 3) >> 1;
        }

        if (a1 <= v23)
        {
          v24 = v23;
        }

        else
        {
          v24 = a1;
        }

        v25 = &v6[16 * a1 + 40];
        while (v24 != a1)
        {
          *(v25 - 1) = v20;
          *v25 = v21;
          ++a1;
          v20 = sub_10004D17C();
          v25 += 16;
          if (!v21)
          {
            goto LABEL_29;
          }
        }

        *(v6 + 2) = v24;
        a1 = v24;
      }
    }

    goto LABEL_30;
  }

LABEL_13:

  *v2 = v6;
  return result;
}

unsigned __int8 *sub_100040420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_10004D1FC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000486A4(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_10004D64C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

__n128 *sub_1000409AC(__n128 *result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  v16.n128_u64[0] = 0;
  v16.n128_u64[1] = v6;
  v7.n128_u64[0] = 0;
  v7.n128_u64[1] = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    v5->n128_u64[0] = a4;
    v5->n128_u64[1] = a5;
    v5[1] = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_10004D17C();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100040A74(uint64_t result, void *a2, unint64_t a3, unint64_t a4)
{
  v5 = a3;
  v6 = HIBYTE(a4) & 0xF;
  v7 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_65;
  }

  if ((a4 & 0x1000000000000000) != 0)
  {
    v33 = result;
    v34 = a2;

    v11 = sub_100040420(v5, a4, 10);
    v36 = v35;

    a2 = v34;
    if (v36)
    {
      goto LABEL_65;
    }

    result = v33;
    if (v11 < 1)
    {
      goto LABEL_65;
    }

LABEL_64:
    if (v11 <= 6)
    {
      if (result == 0x6E6165636FLL && a2 == 0xE500000000000000 || (v31 = result, v32 = a2, (sub_10004D74C() & 1) != 0) || v31 == 0x7364756F6C63 && v32 == 0xE600000000000000 || (sub_10004D74C() & 1) != 0 || v31 == 0x72657474696C67 && v32 == 0xE700000000000000 || (sub_10004D74C() & 1) != 0 || v31 == 0x61726F727561 && v32 == 0xE600000000000000 || (sub_10004D74C() & 1) != 0)
      {

        return v5;
      }

      v40 = 0;
      v41 = 0xE000000000000000;
      sub_10004D61C(24);

      v40 = 0xD000000000000013;
      v41 = 0x80000001000550D0;
      v44._countAndFlagsBits = v31;
      v44._object = v32;
      sub_10004D16C(v44);

      v45._countAndFlagsBits = 32;
      v45._object = 0xE100000000000000;
      sub_10004D16C(v45);
LABEL_66:
      v43._countAndFlagsBits = v5;
      v43._object = a4;
      sub_10004D16C(v43);

      v29 = v40;
      v5 = v41;
      sub_100042418();
      swift_allocError();
      *v30 = v29;
      v30[1] = v5;
      swift_willThrow();
      return v5;
    }

LABEL_65:

    v40 = 0;
    v41 = 0xE000000000000000;
    sub_10004D61C(18);

    v40 = 0xD000000000000010;
    v41 = 0x80000001000550F0;
    goto LABEL_66;
  }

  if ((a4 & 0x2000000000000000) == 0)
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v37 = result;
      v38 = a2;
      v9 = sub_10004D64C();
      result = v37;
      v7 = v39;
      a2 = v38;
    }

    v10 = *v9;
    if (v10 == 43)
    {
      if (v7 >= 1)
      {
        if (--v7)
        {
          v11 = 0;
          if (v9)
          {
            v18 = v9 + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_61;
              }

              v11 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++v18;
              if (!--v7)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_91;
    }

    if (v10 != 45)
    {
      if (v7)
      {
        v11 = 0;
        if (v9)
        {
          while (1)
          {
            v24 = *v9 - 48;
            if (v24 > 9)
            {
              goto LABEL_61;
            }

            v25 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_61;
            }

            v11 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v7)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v11 = 0;
      LOBYTE(v7) = 1;
      goto LABEL_62;
    }

    if (v7 >= 1)
    {
      if (--v7)
      {
        v11 = 0;
        if (v9)
        {
          v12 = v9 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_61;
            }

            v14 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_61;
            }

            v11 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_61;
            }

            ++v12;
            if (!--v7)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v7) = 0;
LABEL_62:
        v42 = v7;
        if ((v7 & 1) != 0 || v11 < 1)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v40 = a3;
  v41 = a4 & 0xFFFFFFFFFFFFFFLL;
  if (a3 != 43)
  {
    if (a3 != 45)
    {
      if (v6)
      {
        v11 = 0;
        v26 = &v40;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v28 + v27;
          if (__OFADD__(v28, v27))
          {
            break;
          }

          v26 = (v26 + 1);
          if (!--v6)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v6)
    {
      v7 = v6 - 1;
      if (v6 != 1)
      {
        v11 = 0;
        v15 = &v40 + 1;
        while (1)
        {
          v16 = *v15 - 48;
          if (v16 > 9)
          {
            break;
          }

          v17 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          ++v15;
          if (!--v7)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_90;
  }

  if (v6)
  {
    v7 = v6 - 1;
    if (v6 != 1)
    {
      v11 = 0;
      v21 = &v40 + 1;
      while (1)
      {
        v22 = *v21 - 48;
        if (v22 > 9)
        {
          break;
        }

        v23 = 10 * v11;
        if ((v11 * 10) >> 64 != (10 * v11) >> 63)
        {
          break;
        }

        v11 = v23 + v22;
        if (__OFADD__(v23, v22))
        {
          break;
        }

        ++v21;
        if (!--v7)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_92:
  __break(1u);
  return result;
}

uint64_t sub_10004100C(uint64_t a1, void *a2)
{
  sub_100018B44();
  v4 = sub_10004D55C();
  v5 = *(v4 + 16);
  if (v5 == 1)
  {

    if (a1 == 0x6E6165636FLL && a2 == 0xE500000000000000 || (sub_10004D74C() & 1) != 0 || a1 == 0x61726F727561 && a2 == 0xE600000000000000 || (sub_10004D74C() & 1) != 0 || a1 == 0x72657474696C67 && a2 == 0xE700000000000000 || (sub_10004D74C() & 1) != 0 || a1 == 0x7364756F6C63 && a2 == 0xE600000000000000 || (sub_10004D74C() & 1) != 0)
    {

      return 49;
    }

    goto LABEL_11;
  }

  if (v5 != 2)
  {

LABEL_11:
    sub_10004D61C(21);

    v14._countAndFlagsBits = a1;
    v14._object = a2;
    sub_10004D16C(v14);

    sub_100042418();
    swift_allocError();
    *v13 = 0xD000000000000013;
    v13[1] = 0x80000001000550D0;
    return swift_willThrow();
  }

  if (*(v4 + 16))
  {

    v7 = sub_10004D12C();
    v9 = v8;

    if (*(v4 + 16) >= 2uLL)
    {

      v10 = sub_10004D12C();
      v12 = v11;

      return sub_100040A74(v7, v9, v10, v12);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100041324()
{
  v0 = sub_10004100C(0x7364756F6C63, 0xE600000000000000);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_10004A040(v0, v1, v3, v5);
  sub_100010F08(v0, v2, v4, v6);
  if (v7 >> 62)
  {
    v8 = sub_10004D67C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = sub_10004100C(0x61726F727561, 0xE600000000000000);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_10004A040(v9, v10, v12, v14);
  sub_100010F08(v9, v11, v13, v15);
  if (v16 >> 62)
  {
    v17 = sub_10004D67C();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = sub_10004100C(0x72657474696C67, 0xE700000000000000);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_10004A040(v18, v19, v21, v23);
  sub_100010F08(v18, v20, v22, v24);
  if (v25 >> 62)
  {
    v26 = sub_10004D67C();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v114 = v26;
  v27 = sub_10004100C(0x6E6165636FLL, 0xE500000000000000);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = sub_10004A040(v27, v28, v30, v32);
  sub_100010F08(v27, v29, v31, v33);
  if (v34 >> 62)
  {
    v35 = sub_10004D67C();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 < 1)
  {
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v113 = v35;
  v37 = sub_10004C0B0(1, v8, 2);
  v116[0] = &_swiftEmptyArrayStorage;
  v38 = *(v37 + 2);
  if (v38)
  {
    v39 = 32;
    do
    {
      v117 = *&v37[v39];
      v40 = sub_10004D73C();
      sub_100040274(v40, v41);
      v39 += 8;
      --v38;
    }

    while (v38);

    v42 = v116[0];
  }

  else
  {

    v42 = &_swiftEmptyArrayStorage;
  }

  v43 = v42[2];
  if (v43)
  {
    v116[0] = &_swiftEmptyArrayStorage;
    sub_10004BDDC(0, v43, 0);
    v44 = &_swiftEmptyArrayStorage;
    v45 = v42 + 5;
    do
    {
      v47 = *(v45 - 1);
      v46 = *v45;
      v116[0] = v44;
      v49 = v44[2];
      v48 = v44[3];

      if (v49 >= v48 >> 1)
      {
        sub_10004BDDC((v48 > 1), v49 + 1, 1);
        v44 = v116[0];
      }

      v44[2] = v49 + 1;
      v50 = &v44[2 * v49];
      v50[4] = v47;
      v50[5] = v46;
      v45 += 2;
      --v43;
    }

    while (v43);
  }

  else
  {

    v44 = &_swiftEmptyArrayStorage;
  }

  if (v17 < 1)
  {
    goto LABEL_81;
  }

  v51 = sub_10004C0B0(1, v17, 2);
  v116[0] = &_swiftEmptyArrayStorage;
  v52 = *(v51 + 2);
  if (v52)
  {
    v53 = 32;
    do
    {
      v117 = *&v51[v53];
      v54 = sub_10004D73C();
      sub_100040274(v54, v55);
      v53 += 8;
      --v52;
    }

    while (v52);

    v56 = v116[0];
  }

  else
  {

    v56 = &_swiftEmptyArrayStorage;
  }

  v57 = v56[2];
  if (v57)
  {
    v116[0] = &_swiftEmptyArrayStorage;
    sub_10004BDDC(0, v57, 0);
    v58 = &_swiftEmptyArrayStorage;
    v59 = v56 + 5;
    do
    {
      v61 = *(v59 - 1);
      v60 = *v59;
      v116[0] = v58;
      v63 = v58[2];
      v62 = v58[3];

      if (v63 >= v62 >> 1)
      {
        sub_10004BDDC((v62 > 1), v63 + 1, 1);
        v58 = v116[0];
      }

      v58[2] = v63 + 1;
      v64 = &v58[2 * v63];
      v64[4] = v61;
      v64[5] = v60;
      v59 += 2;
      --v57;
    }

    while (v57);
  }

  else
  {

    v58 = &_swiftEmptyArrayStorage;
  }

  if (v114 < 1)
  {
    goto LABEL_82;
  }

  v65 = sub_10004C0B0(1, v114, 2);
  v116[0] = &_swiftEmptyArrayStorage;
  v66 = *(v65 + 2);
  if (v66)
  {
    v67 = 32;
    do
    {
      v117 = *&v65[v67];
      v68 = sub_10004D73C();
      sub_100040274(v68, v69);
      v67 += 8;
      --v66;
    }

    while (v66);

    v70 = v116[0];
  }

  else
  {

    v70 = &_swiftEmptyArrayStorage;
  }

  v71 = v70[2];
  if (v71)
  {
    v116[0] = &_swiftEmptyArrayStorage;
    sub_10004BDDC(0, v71, 0);
    v72 = &_swiftEmptyArrayStorage;
    v73 = v70 + 5;
    do
    {
      v75 = *(v73 - 1);
      v74 = *v73;
      v116[0] = v72;
      v77 = v72[2];
      v76 = v72[3];

      if (v77 >= v76 >> 1)
      {
        sub_10004BDDC((v76 > 1), v77 + 1, 1);
        v72 = v116[0];
      }

      v72[2] = v77 + 1;
      v78 = &v72[2 * v77];
      v78[4] = v75;
      v78[5] = v74;
      v73 += 2;
      --v71;
    }

    while (v71);
  }

  else
  {

    v72 = &_swiftEmptyArrayStorage;
  }

  if (v113 < 1)
  {
    goto LABEL_83;
  }

  v79 = sub_10004C0B0(1, v113, 2);
  v116[0] = &_swiftEmptyArrayStorage;
  v80 = *(v79 + 2);
  if (v80)
  {
    v81 = 32;
    do
    {
      v117 = *&v79[v81];
      v82 = sub_10004D73C();
      sub_100040274(v82, v83);
      v81 += 8;
      --v80;
    }

    while (v80);

    v84 = v116[0];
  }

  else
  {

    v84 = &_swiftEmptyArrayStorage;
  }

  v85 = v84[2];
  v115 = v44;
  if (v85)
  {
    v116[0] = &_swiftEmptyArrayStorage;
    sub_10004BDDC(0, v85, 0);
    v86 = &_swiftEmptyArrayStorage;
    v87 = v84 + 5;
    do
    {
      v89 = *(v87 - 1);
      v88 = *v87;
      v116[0] = v86;
      v91 = v86[2];
      v90 = v86[3];

      if (v91 >= v90 >> 1)
      {
        sub_10004BDDC((v90 > 1), v91 + 1, 1);
        v86 = v116[0];
      }

      v86[2] = v91 + 1;
      v92 = &v86[2 * v91];
      v92[4] = v89;
      v92[5] = v88;
      v87 += 2;
      --v85;
    }

    while (v85);

    v44 = v115;
  }

  else
  {

    v86 = &_swiftEmptyArrayStorage;
  }

  v116[3] = &type metadata for FeatureFlags;
  v116[4] = sub_10004246C();
  v93 = sub_10004CE3C();
  sub_10000CF40(v116);
  if ((v93 & 1) == 0)
  {

    sub_10000CC1C(&qword_100070CA8, &qword_100051C70);
    result = swift_allocObject();
    *(result + 16) = xmmword_100051820;
    if (v44[2])
    {
      v105 = v44[5];
      *(result + 32) = v44[4];
      *(result + 40) = v105;
      *(result + 48) = 0;
      *(result + 56) = 1;
      if (v86[2])
      {
        v106 = result;
        v107 = v86[4];
        v108 = v86[5];

        *(v106 + 64) = v107;
        *(v106 + 72) = v108;
        *(v106 + 80) = 0;
        *(v106 + 88) = 0;
        if (v58[2])
        {
          result = v58[5];
          *(v106 + 96) = v58[4];
          *(v106 + 104) = result;
          *(v106 + 112) = 0;
          *(v106 + 120) = 2;
          if (v115[2] >= 2uLL)
          {
            v109 = v115[6];
            v110 = v115[7];

            *(v106 + 128) = v109;
            *(v106 + 136) = v110;
            *(v106 + 144) = 0;
            *(v106 + 152) = 1;
            if (v58[2] >= 2uLL)
            {
              v112 = v58[6];
              v111 = v58[7];

              result = v106;
              *(v106 + 160) = v112;
              *(v106 + 168) = v111;
              *(v106 + 176) = 0;
              *(v106 + 184) = 2;
              return result;
            }

            goto LABEL_93;
          }

          goto LABEL_91;
        }

        goto LABEL_89;
      }

      goto LABEL_87;
    }

    goto LABEL_85;
  }

  sub_10000CC1C(&qword_100070CA8, &qword_100051C70);
  result = swift_allocObject();
  *(result + 16) = xmmword_100051830;
  if (!v44[2])
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v94 = v44[5];
  *(result + 32) = v44[4];
  *(result + 40) = v94;
  *(result + 48) = 0;
  *(result + 56) = 1;
  if (!v86[2])
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v95 = result;
  v96 = v86[4];
  v97 = v86[5];

  *(v95 + 64) = v96;
  *(v95 + 72) = v97;
  *(v95 + 80) = 0;
  *(v95 + 88) = 0;
  if (!v58[2])
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  result = v58[5];
  *(v95 + 96) = v58[4];
  *(v95 + 104) = result;
  *(v95 + 112) = 0;
  *(v95 + 120) = 2;
  if (!v72[2])
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v98 = v72[5];
  *(v95 + 128) = v72[4];
  *(v95 + 136) = v98;
  *(v95 + 144) = 0;
  *(v95 + 152) = 3;
  if (v115[2] < 2uLL)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v99 = v115[6];
  v100 = v115[7];

  *(v95 + 160) = v99;
  *(v95 + 168) = v100;
  *(v95 + 176) = 0;
  *(v95 + 184) = 1;
  if (v58[2] >= 2uLL)
  {
    v102 = v58[6];
    v101 = v58[7];

    *(v95 + 192) = v102;
    *(v95 + 200) = v101;
    *(v95 + 208) = 0;
    *(v95 + 216) = 2;
    if (v72[2] >= 2uLL)
    {
      v104 = v72[6];
      v103 = v72[7];

      result = v95;
      *(v95 + 224) = v104;
      *(v95 + 232) = v103;
      *(v95 + 240) = 0;
      *(v95 + 248) = 3;
      return result;
    }

    goto LABEL_95;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_100041D04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v38 = sub_10004CEFC();
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_10004100C(a1, a2);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v36 = v9;
  v37 = v7;
  sub_10003E214(v10, v11, v13, v15);
  v17 = sub_10004CEDC();
  v18 = sub_10004D39C();
  sub_100010F08(v10, v12, v14, v16);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44 = v35;
    *v19 = 136315138;
    v40 = v10;
    v41 = v12;
    v42 = v14;
    v43 = v16;
    sub_10003E214(v10, v12, v14, v16);
    v20 = sub_10004D0FC();
    v22 = sub_10000C618(v20, v21, &v44);

    *(v19 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "Instantiating effect of type: %s", v19, 0xCu);
    sub_10000CF40(v35);
  }

  v24 = v36;
  v23 = v37;
  if (v16 > 1u)
  {
    if (v16 == 2)
    {
      sub_100010F08(v10, v12, v14, 2u);
      v30 = a4;
      v26 = v38;
      (*(v23 + 16))(v24, v30, v38);
      type metadata accessor for AuroraEffect(0);
    }

    else
    {
      sub_100010F08(v10, v12, v14, 3u);
      v32 = a4;
      v26 = v38;
      (*(v23 + 16))(v24, v32, v38);
      type metadata accessor for GlitterEffect(0);
    }

    v27 = swift_allocObject();
    v28 = v27;
  }

  else
  {
    if (v16)
    {
      sub_100010F08(v10, v12, v14, 1u);
      v31 = a4;
      v26 = v38;
      (*(v23 + 16))(v24, v31, v38);
      type metadata accessor for CloudsEffect(0);
      v27 = swift_allocObject();
      v28 = v27;
      *(v27 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12CloudsEffect_rgEffects) = 0;
      v29 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12CloudsEffect_rgIdle;
    }

    else
    {
      sub_100010F08(v10, v12, v14, 0);
      v25 = a4;
      v26 = v38;
      (*(v23 + 16))(v24, v25, v38);
      type metadata accessor for OceanEffect(0);
      v27 = swift_allocObject();
      v28 = v27;
      *(v27 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgEffects) = 0;
      v29 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgIdle;
    }

    *(v27 + *v29) = 0;
  }

  *(v27 + 16) = v39;
  *(v27 + 24) = 0;
  (*(v23 + 32))(v27 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger, v24, v26);

  return v28;
}

uint64_t sub_100042188(uint64_t a1)
{
  sub_10004D5EC();
  if (!*(a1 + 16) || (v4 = sub_1000330C8(v19), (v5 & 1) == 0))
  {

    sub_10000CFD0(v19);
LABEL_7:
    sub_100042418();
    swift_allocError();
    *v10 = 0xD00000000000002ALL;
    v10[1] = 0x80000001000550A0;
    goto LABEL_8;
  }

  sub_10000C7F0(*(a1 + 56) + 32 * v4, v20);
  sub_10000CFD0(v19);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = sub_10004100C(0x696669746E656469, 0xEA00000000007265);
  if (!v1)
  {
    v2 = v6;
    v12 = v7;
    v13 = v8;
    if (v9 == 3)
    {

      sub_10004D5EC();
      if (*(a1 + 16) && (v14 = sub_1000330C8(v19), (v15 & 1) != 0))
      {
        sub_10000C7F0(*(a1 + 56) + 32 * v14, v20);
        sub_10000CFD0(v19);

        if (swift_dynamicCast())
        {
          sub_10004C820();
          v18 = v16;
          v17 = sub_10004D05C();
          sub_10004B21C(v17, v18);

          sub_100010F08(v2, v12, v13, 3u);
          return v2;
        }
      }

      else
      {

        sub_10000CFD0(v19);
      }
    }

    return v2;
  }

LABEL_8:
  swift_willThrow();
  return v2;
}

unint64_t sub_100042418()
{
  result = qword_100070C98;
  if (!qword_100070C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C98);
  }

  return result;
}

unint64_t sub_10004246C()
{
  result = qword_100070CA0;
  if (!qword_100070CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070CA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FeatureFlags(_WORD *result, int a2, int a3)
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

uint64_t sub_1000425A8(uint64_t a1, int a2)
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

uint64_t sub_1000425F0(uint64_t result, int a2, int a3)
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

unint64_t sub_100042644()
{
  result = qword_100070CB0;
  if (!qword_100070CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070CB0);
  }

  return result;
}

uint64_t sub_100042698()
{
  sub_10004D16C(*v0);
  v2._countAndFlagsBits = 45;
  v2._object = 0xE100000000000000;
  sub_10004D16C(v2);
  v3._countAndFlagsBits = sub_10004D73C();
  sub_10004D16C(v3);

  v4._countAndFlagsBits = 45;
  v4._object = 0xE100000000000000;
  sub_10004D16C(v4);
  v5._countAndFlagsBits = sub_10004D73C();
  sub_10004D16C(v5);

  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  sub_10004D16C(v6);
  sub_10004D2EC();
  v7._countAndFlagsBits = 45;
  v7._object = 0xE100000000000000;
  sub_10004D16C(v7);
  sub_10004D2EC();
  return 0;
}

void sub_1000427C8(uint64_t a1@<X8>)
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

    *a1 = sub_10004B888(v5, v6);
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

uint64_t sub_1000428CC()
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
  sub_10004D16C(v4);

  v5._countAndFlagsBits = 45;
  v5._object = 0xE100000000000000;
  sub_10004D16C(v5);
  v6._countAndFlagsBits = sub_10004D73C();
  sub_10004D16C(v6);

  v7._countAndFlagsBits = 45;
  v7._object = 0xE100000000000000;
  sub_10004D16C(v7);
  v8._countAndFlagsBits = sub_10004D73C();
  sub_10004D16C(v8);

  v9._countAndFlagsBits = 45;
  v9._object = 0xE100000000000000;
  sub_10004D16C(v9);
  sub_10004D2EC();
  v10._countAndFlagsBits = 45;
  v10._object = 0xE100000000000000;
  sub_10004D16C(v10);
  sub_10004D2EC();
  return 0;
}

uint64_t sub_100042A30()
{
  v1 = *v0;
  if (*(v0 + 60))
  {
    sub_10004D16C(v1);
    v3._countAndFlagsBits = 45;
    v3._object = 0xE100000000000000;
    sub_10004D16C(v3);
    v4._countAndFlagsBits = sub_10004D73C();
    sub_10004D16C(v4);

    v5._countAndFlagsBits = 45;
    v5._object = 0xE100000000000000;
    sub_10004D16C(v5);
    v6._countAndFlagsBits = sub_10004D73C();
    sub_10004D16C(v6);
  }

  else
  {
    sub_10004D16C(v1);
    v8._countAndFlagsBits = 45;
    v8._object = 0xE100000000000000;
    sub_10004D16C(v8);
    v9._countAndFlagsBits = sub_10004D73C();
    sub_10004D16C(v9);

    v10._countAndFlagsBits = 45;
    v10._object = 0xE100000000000000;
    sub_10004D16C(v10);
    v11._countAndFlagsBits = sub_10004D73C();
    sub_10004D16C(v11);

    v12._countAndFlagsBits = 45;
    v12._object = 0xE100000000000000;
    sub_10004D16C(v12);
    sub_10004D2EC();
  }

  v7._countAndFlagsBits = 45;
  v7._object = 0xE100000000000000;
  sub_10004D16C(v7);
  sub_10004D2EC();
  return 0;
}

Swift::Int sub_100042C30()
{
  sub_10004D7BC();
  sub_100042698();
  sub_10004D14C();

  return sub_10004D7DC();
}

uint64_t sub_100042C8C(uint64_t a1)
{
  sub_100042698();
  sub_10004D14C();
}

Swift::Int sub_100042CDC()
{
  sub_10004D7BC();
  sub_100042698();
  sub_10004D14C();

  return sub_10004D7DC();
}

uint64_t sub_100042D34(_OWORD *a1, _OWORD *a2)
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
  return sub_100049274(v5, v7) & 1;
}

uint64_t sub_100042D90()
{
  sub_100011DCC(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100042DC8()
{
  type metadata accessor for SnapshotManager(0);
  v0 = swift_allocObject();
  result = sub_100043094();
  qword_100073150 = v0;
  return result;
}

uint64_t sub_100042E08()
{
  v0 = sub_10004CD3C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A538(v2, qword_100073158);
  sub_1000132A8(v0, qword_100073158);
  v5 = NSTemporaryDirectory();
  sub_10004D08C();

  sub_10004CCAC();

  sub_10004CCEC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100042F48()
{
  v0 = sub_10004CD3C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A538(v2, qword_100073170);
  sub_1000132A8(v0, qword_100073170);
  if (qword_10006E0C0 != -1)
  {
    swift_once();
  }

  v5 = sub_1000132A8(v0, qword_100073158);
  (*(v1 + 16))(v4, v5, v0);
  sub_10004CCEC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100043094()
{
  v1 = v0;
  v2 = sub_10004CEFC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 24) = &_swiftEmptyDictionarySingleton;
  *(v1 + 32) = swift_slowAlloc();
  sub_10004CEEC();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15SnapshotManager_logger, v5, v2);
  sub_1000433B8();
  v6 = sub_10004CEDC();
  v7 = sub_10004D37C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    if (qword_10006E0C0 != -1)
    {
      swift_once();
    }

    v10 = sub_10004CD3C();
    sub_1000132A8(v10, qword_100073158);
    sub_10004957C(&qword_10006F440, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v11 = sub_10004D73C();
    v13 = sub_10000C618(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "SnapshotManager initialized. folderURL: %s.", v8, 0xCu);
    sub_10000CF40(v9);
  }

  **(v1 + 32) = 0;
  return v1;
}

void *sub_100043334(void *a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_10000D024(0, &qword_100070EF8, NSObject_ptr);
    v4 = v3;
    v5 = sub_10004D50C();

    return (v5 & 1);
  }

  return result;
}

void sub_1000433B8()
{
  v1 = v0;
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  if ([qword_1000730A8 deleteSnaphotsAtLaunch])
  {
    v2 = objc_opt_self();
    v3 = [v2 defaultManager];
    if (qword_10006E0C0 != -1)
    {
      swift_once();
    }

    v4 = sub_10004CD3C();
    sub_1000132A8(v4, qword_100073158);
    sub_10004CC8C();
    v5 = sub_10004D05C();

    v6 = [v3 fileExistsAtPath:v5];

    if (v6)
    {
      v7 = [v2 defaultManager];
      sub_10004CCCC(v8);
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
        sub_10004CC6C();

        swift_willThrow();
        v14 = sub_10004CEDC();
        v15 = sub_10004D38C();
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
  if (qword_10006E0C8 != -1)
  {
    swift_once();
  }

  v19 = sub_10004CD3C();
  sub_1000132A8(v19, qword_100073170);
  sub_10004CC8C();
  v20 = sub_10004D05C();

  v21 = [v18 fileExistsAtPath:v20];

  if (v21)
  {
    *(v1 + 16) = 1;
  }

  else
  {
    v22 = [v17 defaultManager];
    sub_10004CCCC(v23);
    v25 = v24;
    v35 = 0;
    v26 = [v22 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&v35];

    v27 = v35;
    if (v26)
    {
      *(v1 + 16) = 1;
      v28 = v27;
      v29 = sub_10004CEDC();
      v30 = sub_10004D36C();
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
      sub_10004CC6C();

      swift_willThrow();
      v29 = sub_10004CEDC();
      v33 = sub_10004D38C();
      if (os_log_type_enabled(v29, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v29, v33, "SnapshotManager: Could not create snapshot folder", v34, 2u);
      }
    }
  }
}