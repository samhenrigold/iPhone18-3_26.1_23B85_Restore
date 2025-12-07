void sub_10001687C(void *a1, void *a2, uint64_t a3)
{
  v28[1] = a3;
  v6 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  __chkstk_darwin(v6);
  v8 = v28 - v7;
  swift_unknownObjectWeakAssign();
  sub_100016D4C(a1);
  v9 = [a1 currentLook];
  swift_getObjectType();
  sub_10001B214(a2, v9, v3);
  if (qword_10003B910 != -1)
  {
    swift_once();
  }

  v10 = sub_100024B98();
  sub_10000C2CC(v10, qword_10003D268);
  v11 = v3;
  v12 = sub_100024B78();
  v13 = sub_100024DE8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29[0] = v15;
    *v14 = 136315138;
    v16 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_posterData;
    swift_beginAccess();
    sub_10001D704(&v11[v16], v8, &qword_10003C380, qword_100028B40);
    v17 = sub_100024CC8();
    v19 = sub_100010554(v17, v18, v29);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "didUpdate with posterData: %s", v14, 0xCu);
    sub_10000C36C(v15);
  }

  v20 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentViewForLook;
  swift_beginAccess();
  v21 = *&v11[v20];

  v22 = sub_100014B08(v9, v21);

  if (v22)
  {
    v23 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_lastOrientation;
    v24 = *&v11[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_lastOrientation];
    v25 = [objc_msgSend(a1 "environment")];
    swift_unknownObjectRelease();
    if (v24 == v25 || (v26 = [objc_msgSend(a1 "environment")], swift_unknownObjectRelease(), *&v11[v23] = v26, UIAccessibilityIsReduceMotionEnabled()))
    {
      v27 = v9;
      v9 = v22;
    }

    else
    {
      sub_100024AE8();
      v27 = v22;
    }
  }
}

uint64_t sub_100016D4C(uint64_t a1)
{
  v2 = v1;
  v25[1] = a1;
  v3 = sub_10000AB70(&qword_10003C290, &qword_100028DA8);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v25 - v8;
  v10 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v25 - v14;
  sub_10000AB70(&unk_10003C280, &qword_100028CB0);
  v16 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_posterData;
  swift_beginAccess();
  v25[2] = v2;
  v17 = v2 + v16;
  v18 = v3;
  sub_10001D704(v17, v13, &qword_10003C380, qword_100028B40);
  sub_100024A78();
  sub_10000E2AC(v13, &qword_10003C380, qword_100028B40);
  (*(v4 + 16))(v7, v9, v3);
  v19 = (*(v4 + 88))(v7, v3);
  if (v19 == enum case for PosterDataComparisonResult.update<A>(_:) || v19 == enum case for PosterDataComparisonResult.fallback<A>(_:))
  {
    (*(v4 + 96))(v7, v3);
    sub_10000AA4C(v7, v15);
    v20 = type metadata accessor for KaleidoscopePosterData(0);
    (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
  }

  else
  {
    v22 = enum case for PosterDataComparisonResult.equal<A>(_:);
    v23 = v19;
    v24 = type metadata accessor for KaleidoscopePosterData(0);
    (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
    if (v23 != v22)
    {
      (*(v4 + 8))(v7, v18);
    }
  }

  sub_1000170AC(v15);
  (*(v4 + 8))(v9, v18);
  return sub_10000E2AC(v15, &qword_10003C380, qword_100028B40);
}

uint64_t sub_1000170AC(uint64_t a1)
{
  v3 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = type metadata accessor for KaleidoscopePosterData(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D704(a1, v8, &qword_10003C380, qword_100028B40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000E2AC(v8, &qword_10003C380, qword_100028B40);
  }

  sub_10000AA4C(v8, v12);
  sub_10000AA4C(v12, v6);
  (*(v10 + 56))(v6, 0, 1, v9);
  v14 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_posterData;
  swift_beginAccess();
  sub_10001DD0C(v6, v1 + v14, &qword_10003C380, qword_100028B40);
  return swift_endAccess();
}

unint64_t sub_100017344(void *a1)
{
  v2 = v1;
  v4 = sub_10000AB70(&qword_10003B970, qword_100028490);
  __chkstk_darwin(v4 - 8);
  v6 = &v57 - v5;
  v7 = type metadata accessor for KaleidoscopePosterData(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v57 - v11;
  v13 = sub_1000249A8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v16, enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:), v13);
  v17 = sub_100024998();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    return 0xD000000000000010;
  }

  v57 = v10;
  sub_10000AB70(&unk_10003C280, &qword_100028CB0);
  sub_100024A98();
  v18 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_jewelLookNames);

  sub_10000CDE4();
  v19 = sub_100024CE8();
  v20 = v2;
  v22 = v21;

  v60[0] = v19;
  v60[1] = v22;
  __chkstk_darwin(v23);
  *(&v57 - 2) = v60;
  v24 = sub_10001917C(sub_10001DD78, (&v57 - 4), v18);

  *(v20 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_shouldShowAppearanceMenuButton) = v24 & 1;
  *(v20 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_currentlySelectedAppearanceStyle) = *&v12[*(v7 + 20)];
  sub_10001D704(v12, v6, &qword_10003B970, qword_100028490);
  v25 = sub_100024938();
  v26 = *(v25 - 8);
  LODWORD(v22) = (*(v26 + 48))(v6, 1, v25);
  sub_10000E2AC(v6, &qword_10003B970, qword_100028490);
  if (v22 == 1)
  {
    v27 = [objc_msgSend(a1 "environment")];
    swift_unknownObjectRelease();
    v60[0] = 0;
    v28 = [v27 loadUserInfoWithError:v60];
    swift_unknownObjectRelease();
    v29 = v60[0];
    if (!v28)
    {
      v45 = v60[0];
      sub_100024918();

      swift_willThrow();
      if (qword_10003B910 != -1)
      {
        swift_once();
      }

      v46 = sub_100024B98();
      sub_10000C2CC(v46, qword_10003D268);
      v47 = sub_100024B78();
      v48 = sub_100024E08();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Kaleidoscope editor failed to load user info.", v49, 2u);
      }

      v37 = 0;
      v39 = 0xE000000000000000;
      goto LABEL_17;
    }

    v30 = sub_100024C08();
    v31 = v29;

    v58 = 0x746E6169726176;
    v59 = 0xE700000000000000;
    sub_100024EE8();
    if (*(v30 + 16) && (v32 = sub_10001E6E4(v60), (v33 & 1) != 0))
    {
      sub_10001149C(*(v30 + 56) + 32 * v32, v61);
      sub_10001D76C(v60);

      if (swift_dynamicCast())
      {
        v35 = v57;
        v34 = v58;
        (*(v26 + 56))(v57, 1, 1, v25);
        *(v35 + *(v7 + 20)) = 0;
        *(v35 + *(v7 + 24)) = v34;
        sub_10000C5F4();
        v37 = v36;
        v39 = v38;
        sub_10000AB14(v35);
LABEL_17:
        if (qword_10003B910 != -1)
        {
          swift_once();
        }

        v50 = sub_100024B98();
        sub_10000C2CC(v50, qword_10003D268);
        v51 = sub_100024B78();
        v52 = sub_100024DE8();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v60[0] = v54;
          *v53 = 136315138;

          v55 = sub_100010554(v37, v39, v60);

          *(v53 + 4) = v55;
          _os_log_impl(&_mh_execute_header, v51, v52, "Kaleidoscope loaded %s for a new poster.", v53, 0xCu);
          sub_10000C36C(v54);
        }

        sub_100017B5C(v37, v39);
        v44 = v56;

        sub_10000AB14(v12);

        return v44;
      }
    }

    else
    {

      sub_10001D76C(v60);
    }

    v37 = 0;
    v39 = 0xE000000000000000;
    goto LABEL_17;
  }

  sub_10000C5F4();
  sub_100017B5C(v41, v42);
  v44 = v43;

  sub_10000AB14(v12);
  return v44;
}

void sub_100017B5C(uint64_t a1, unint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_26;
  }

  v6 = Strong;
  v7 = sub_10001CE34(Strong);

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_15:

    v2 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_17:

      return;
    }

LABEL_16:
    v30[0] = a1;
    v30[1] = a2;
    __chkstk_darwin(v19);
    v27[2] = v30;
    if (sub_10001917C(sub_10001D6E8, v27, v2))
    {
      goto LABEL_17;
    }

    if (qword_10003B910 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  v8 = sub_100025028();
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v30[0] = _swiftEmptyArrayStorage;
  sub_10000A3C8(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a2;
    v9 = 0;
    v2 = v30[0];
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = sub_100024F48();
      }

      else
      {
        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 identifier];
      v13 = sub_100024C78();
      v15 = v14;

      v30[0] = v2;
      v17 = v2[2];
      v16 = v2[3];
      if (v17 >= v16 >> 1)
      {
        sub_10000A3C8((v16 > 1), v17 + 1, 1);
        v2 = v30[0];
      }

      ++v9;
      v2[2] = v17 + 1;
      v18 = &v2[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
    }

    while (v8 != v9);

    a1 = v28;
    a2 = v29;
    if (!v2[2])
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_24:
  swift_once();
LABEL_19:
  v20 = sub_100024B98();
  sub_10000C2CC(v20, qword_10003D268);

  v21 = sub_100024B78();
  v22 = sub_100024E08();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_100010554(a1, a2, v30);
    *(v23 + 12) = 2080;
    v24 = sub_100024D58();
    v26 = sub_100010554(v24, v25, v30);

    *(v23 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v21, v22, "The initial identifier %s was not found in all looks which consists of %s. Defaulting to first option.", v23, 0x16u);
    swift_arrayDestroy();
  }

  if (v2[2])
  {

    return;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100017F88(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_currentlySelectedAppearanceStyle) = a2;
  v5 = sub_100014C6C(v12);
  v7 = v6;
  v8 = type metadata accessor for KaleidoscopePosterData(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    *(v7 + *(v8 + 20)) = a2;
  }

  (v5)(v12, 0);
  v9 = [a1 currentLook];
  v10 = [a1 environment];
  swift_getObjectType();
  v11 = swift_unknownObjectRetain();
  sub_10001B214(v11, v9, v2);
  swift_unknownObjectRelease_n();
  [a1 updateActions];
}

void *sub_100018134(void *a1)
{
  v2 = v1;
  v4 = sub_100024AC8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000249A8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:), v8);
  v12 = sub_100024998();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_shouldShowAppearanceMenuButton;
  v14 = enum case for PrivateFeatureFlags.catskillDesignTweaks(_:);
  v15 = *(v5 + 104);
  if ((*(v2 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_shouldShowAppearanceMenuButton) & 1) == 0)
  {
    v15(v7, enum case for PrivateFeatureFlags.catskillDesignTweaks(_:), v4);
    v16 = sub_100024AB8();
    (*(v5 + 8))(v7, v4);
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v27 = v13;
  v17 = _swiftEmptyArrayStorage;
  v28 = _swiftEmptyArrayStorage;
  v15(v7, v14, v4);
  v18 = sub_100024AB8();
  (*(v5 + 8))(v7, v4);
  if (v18)
  {
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000147A8(0, &qword_10003C268, UIAction_ptr);
    v20 = sub_100024C68();
    v21 = [objc_opt_self() systemImageNamed:v20];

    sub_100024C68();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v19;

    v24 = sub_100024E88();
    sub_100024D28();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100024D68();
    }

    sub_100024D78();

    v17 = v28;
  }

  if (*(v2 + v27) == 1)
  {
    v25 = [a1 appearanceMenu];
    sub_100024D28();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100024D68();
    }

    sub_100024D78();
    return v28;
  }

  return v17;
}

void sub_1000185A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_100018980(v5);

      v4 = v6;
    }
  }
}

void sub_1000186C8(float a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = Strong;
  v5 = [Strong currentLook];

  v6 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentViewForLook;
  swift_beginAccess();
  v7 = *(v1 + v6);

  v8 = sub_100014B08(v5, v7);

  if (!v8)
  {
    return;
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [v9 currentLook];

  v12 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_animationDriverForLook;
  swift_beginAccess();
  v13 = *(v1 + v12);

  v14 = sub_100014BBC(v11, v13);

  if (v14)
  {
    *(v14 + 80) = a1;
    sub_100011BE4(v14);
  }

  else
  {
  }
}

void sub_100018824(float a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = Strong;
  v5 = [Strong currentLook];

  v6 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentViewForLook;
  swift_beginAccess();
  v7 = *(v1 + v6);

  v8 = sub_100014B08(v5, v7);

  if (!v8)
  {
    return;
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [v9 currentLook];

  v12 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_animationDriverForLook;
  swift_beginAccess();
  v13 = *(v1 + v12);

  v14 = sub_100014BBC(v11, v13);

  if (v14)
  {
    sub_100011D08(a1);
    sub_100011BE4(v14);
  }

  else
  {
  }
}

uint64_t sub_100018980(void *a1)
{
  v2 = v1;
  v4 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v5);
  v9 = v41 - v8 + 16;
  if (qword_10003B910 != -1)
  {
    swift_once();
  }

  v10 = sub_100024B98();
  sub_10000C2CC(v10, qword_10003D268);
  v11 = sub_100024B78();
  v12 = sub_100024DE8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Slider button was tapped.", v13, 2u);
  }

  v14 = [a1 currentLook];
  v15 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_posterDataForLook;
  swift_beginAccess();
  v16 = *&v2[v15];
  if (*(v16 + 16))
  {

    v17 = sub_10001E6A0(v14);
    if (v18)
    {
      v19 = v17;
      v20 = *(v16 + 56);
      v21 = type metadata accessor for KaleidoscopePosterData(0);
      v22 = *(v21 - 8);
      sub_10000AAB0(v20 + *(v22 + 72) * v19, v9);

      (*(v22 + 56))(v9, 0, 1, v21);
      goto LABEL_11;
    }
  }

  else
  {
  }

  v23 = type metadata accessor for KaleidoscopePosterData(0);
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
LABEL_11:
  sub_10001D704(v9, v7, &qword_10003C380, qword_100028B40);
  v24 = objc_allocWithZone(type metadata accessor for PathProgressSliderViewController(0));
  v25 = sub_100022BE8(v7);
  v41[3] = type metadata accessor for KaleidoscopePosterEditor(0);
  v41[4] = &off_100035628;
  v41[0] = v2;
  v26 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_sliderDelegate;
  swift_beginAccess();
  v27 = v2;
  sub_10001DD0C(v41, v25 + v26, &qword_10003C250, &qword_100028D90);
  swift_endAccess();
  v28 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v25];
  v29 = [v28 sheetPresentationController];
  v30 = sub_100024C68();
  sub_1000147A8(0, &qword_10003C258, UISheetPresentationControllerDetent_ptr);
  v31 = v30;
  v32 = sub_100024E58();
  if (v29)
  {
    sub_10000AB70(&qword_10003C260, &unk_100028D98);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100028CE0;
    *(v33 + 32) = v32;
    v34 = v29;
    v35 = v32;
    isa = sub_100024D38().super.isa;

    [v34 setDetents:isa];

    v37 = v34;
    [v37 setLargestUndimmedDetentIdentifier:v31];

    v38 = v37;
    sub_100024E48();
  }

  else
  {
    [0 setLargestUndimmedDetentIdentifier:v31];
    v38 = v31;
  }

  [a1 presentViewController:v28 animated:1 completion:0];
  return sub_10000E2AC(v9, &qword_10003C380, qword_100028B40);
}

id sub_100018E8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KaleidoscopePosterEditor(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for KaleidoscopePosterEditor(uint64_t a1)
{
  result = qword_10003C230;
  if (!qword_10003C230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100018FF4(uint64_t a1)
{
  sub_100011FEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000190E0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_10001917C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_100019228(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_10001E6A0(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_10001A410(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_10001AFFC(&unk_10003C2E0, qword_100028DC8);
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_100024FF8();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_100024FE8();
  v8 = sub_1000194D8(v4, v7);

  v9 = sub_10001E6A0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_10001A410(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_100019384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10001E6A0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10001AC88();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for KaleidoscopePosterData(0);
    v18 = *(v11 - 8);
    sub_10000AA4C(v10 + *(v18 + 72) * v7, a2);
    sub_10001A59C(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for KaleidoscopePosterData(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

Swift::Int sub_1000194D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000AB70(&unk_10003C2E0, qword_100028DC8);
    v2 = sub_100025068();
    v19 = v2;
    sub_100024FD8();
    v3 = sub_100025008();
    if (v3)
    {
      v4 = v3;
      sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000147A8(0, &qword_10003C2D8, CLKUIAtlasBacking_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10001A1B0(v12 + 1, 1, &unk_10003C2E0, qword_100028DC8);
        }

        v2 = v19;
        result = sub_100024E68(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_100025008();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_100019734(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000AB70(&qword_10003C2B8, &qword_100028DB8);
    v2 = sub_100025068();
    v19 = v2;
    sub_100024FD8();
    v3 = sub_100025008();
    if (v3)
    {
      v4 = v3;
      sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for AnimationDriver();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100019F40(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_100024E68(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_100025008();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_100019968(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000AB70(&qword_10003C2C0, &qword_100028DC0);
    v2 = sub_100025068();
    v19 = v2;
    sub_100024FD8();
    v3 = sub_100025008();
    if (v3)
    {
      v4 = v3;
      sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for KaleidoscopeEditorContentView(0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10001A1B0(v12 + 1, 1, &qword_10003C2C0, &qword_100028DC0);
        }

        v2 = v19;
        result = sub_100024E68(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_100025008();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_100019BB4(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_100019BEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100019C34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for KaleidoscopePosterData(0);
  v38 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_10000AB70(&qword_10003C2B0, &qword_100028DB0);
  v39 = v4;
  v9 = sub_100025058();
  v10 = v9;
  if (*(v8 + 16))
  {
    v37 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v38 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v39)
      {
        sub_10000AA4C(v25, v7);
      }

      else
      {
        sub_10000AAB0(v25, v7);
        v26 = v23;
      }

      v27 = sub_100024E68(*(v10 + 40));
      v28 = -1 << *(v10 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      sub_10000AA4C(v7, *(v10 + 56) + v24 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_100019F40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000AB70(&qword_10003C2B8, &qword_100028DB8);
  v6 = sub_100025058();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      v23 = sub_100024E68(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
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
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10001A1B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10000AB70(a3, a4);
  v8 = sub_100025058();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      v26 = sub_100024E68(*(v9 + 40));
      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v34 = 1 << *(v7 + 32);
      if (v34 >= 64)
      {
        bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v34;
      }

      *(v7 + 16) = 0;
    }

    v5 = v35;
  }

  else
  {
  }

  *v5 = v9;
}

void sub_10001A410(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100024EB8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_100024E68(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_10001A59C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100024EB8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_100024E68(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for KaleidoscopePosterData(0) - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

id sub_10001A778(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_10001E6A0(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_10001AC88();
      goto LABEL_7;
    }

    sub_100019C34(v12, a3 & 1);
    v19 = sub_10001E6A0(a2);
    if ((v13 & 1) == (v20 & 1))
    {
      v9 = v19;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);
    result = sub_1000250F8();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = v16 + *(*(type metadata accessor for KaleidoscopePosterData(0) - 8) + 72) * v9;

    return sub_100011544(a1, v17);
  }

LABEL_13:
  sub_10001ABF4(v9, a2, a1, v15);

  return a2;
}

void sub_10001A8DC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10001E6A0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100019F40(v13, a3 & 1);
      v8 = sub_10001E6A0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);
        sub_1000250F8();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_10001AE98();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  v21 = a2;
}

id sub_10001AA58(uint64_t a1, void *a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_10001E6A0(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      sub_10001A1B0(v17, a3 & 1, a4, a5);
      v12 = sub_10001E6A0(a2);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);
        sub_1000250F8();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v20 = v12;
      sub_10001AFFC(a4, a5);
      v12 = v20;
    }
  }

  v22 = *v8;
  if (v18)
  {
    *(v22[7] + 8 * v12) = a1;

    return _objc_release_x1();
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  *(v22[6] + 8 * v12) = a2;
  *(v22[7] + 8 * v12) = a1;
  v23 = v22[2];
  v16 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v24;

  return a2;
}

uint64_t sub_10001ABF4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for KaleidoscopePosterData(0);
  result = sub_10000AA4C(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void sub_10001AC88()
{
  v1 = v0;
  v2 = type metadata accessor for KaleidoscopePosterData(0);
  v25 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AB70(&qword_10003C2B0, &qword_100028DB0);
  v5 = *v0;
  v6 = sub_100025048();
  v7 = v6;
  if (*(v5 + 16))
  {
    v24 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v25 + 72) * v20;
        sub_10000AAB0(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_10000AA4C(v4, *(v7 + 56) + v22);
        v23 = v21;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_10001AE98()
{
  v1 = v0;
  sub_10000AB70(&qword_10003C2B8, &qword_100028DB8);
  v2 = *v0;
  v3 = sub_100025048();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void sub_10001AFFC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000AB70(a1, a2);
  v4 = *v2;
  v5 = sub_100025048();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        v23 = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

uint64_t sub_10001B14C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100025028();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

uint64_t sub_10001B214(void *a1, void *a2, uint64_t a3)
{
  v60 = a3;
  v7 = sub_10000DDA8(a1, *(a3 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_currentlySelectedAppearanceStyle));
  v8 = sub_10000A6CC();
  v9 = v8;
  v10 = v8 & 0xFFFFFFFFFFFFFF8;
  v11 = v8 >> 62;
  if (v8 >> 62)
  {
    goto LABEL_47;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6)
  {
    goto LABEL_3;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  if (v9 < 0)
  {
    v18 = v9;
  }

  else
  {
    v18 = v10;
  }

  if (sub_100025028() < 0)
  {
    goto LABEL_60;
  }

  if (sub_100025028() < 6)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    v55 = v18;
    v56 = v3;
    goto LABEL_20;
  }

  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);

      sub_100024F38(0);
      sub_100024F38(1);
      sub_100024F38(2);
      sub_100024F38(3);
      sub_100024F38(4);
      sub_100024F38(5);
    }

    else
    {
    }

    v59 = v7;
    if (!v11)
    {
      v4 = 0;
      v55 = v9 & 0xFFFFFFFFFFFFFF8;
      v56 = v3;
      v5 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
      v11 = 6;
LABEL_20:
      v57 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_artfileManager;
      v58 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_editorContentViewsForEditingLooks;
      swift_beginAccess();
      v25 = v11 - v4;
      v26 = (v5 + 8 * v4);
      while (1)
      {
        v27 = *v26;
        v28 = [v27 identifier];
        v29 = sub_100024C78();
        v31 = v30;

        v32 = [a2 identifier];
        v33 = sub_100024C78();
        v35 = v34;

        if (v29 == v33 && v31 == v35)
        {
        }

        else
        {
          v37 = sub_1000250D8();

          if ((v37 & 1) == 0)
          {
            v38 = *(v60 + v58);
            if ((v38 & 0xC000000000000001) != 0)
            {
              v39 = v27;

              v40 = sub_100024FF8();

              if (v40)
              {
                v61 = v40;
                type metadata accessor for KaleidoscopeEditorContentView(0);
                swift_dynamicCast();
                v41 = v62;
                goto LABEL_35;
              }

LABEL_36:

LABEL_37:
              v41 = 0;
            }

            else
            {
              if (!*(v38 + 16))
              {
                goto LABEL_37;
              }

              v42 = sub_10001E6A0(v27);
              if ((v43 & 1) == 0)
              {
                goto LABEL_36;
              }

              v41 = *(*(v38 + 56) + 8 * v42);
              v44 = v41;
LABEL_35:
            }

            v45 = v59;
            v46 = sub_100013F1C(v27, v59);
            v47 = sub_100014314(v27, v45);
            if (v41)
            {
              v48 = v41;
              sub_1000115D0(v45, v46, v47);
            }

            else
            {
            }

            goto LABEL_22;
          }
        }

LABEL_22:
        ++v26;
        if (!--v25)
        {
          goto LABEL_44;
        }
      }
    }

    v18 = sub_100025038();
    v5 = v49;
    v4 = v50;
    v52 = v51;

    v11 = v52 >> 1;
    if (v4 == v52 >> 1)
    {
      break;
    }

    if (v4 < (v52 >> 1))
    {
      goto LABEL_61;
    }

    __break(1u);
LABEL_47:
    if (v9 < 0)
    {
      v18 = v9;
    }

    else
    {
      v18 = v10;
    }

    if (sub_100025028() < 0)
    {
      goto LABEL_59;
    }

    if (sub_100025028() < 6)
    {
      goto LABEL_52;
    }

LABEL_3:
    if ((v9 & 0xC000000000000001) != 0)
    {
      sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);

      sub_100024F38(0);
      sub_100024F38(1);
      sub_100024F38(2);
      sub_100024F38(3);
      sub_100024F38(4);
      sub_100024F38(5);
    }

    else
    {
    }

    if (v11)
    {
      v3 = sub_100025038();
      v4 = v14;
      v13 = v15;
      v5 = v16;
    }

    else
    {
      v13 = 0;
      v3 = v9 & 0xFFFFFFFFFFFFFF8;
      v4 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
      v5 = 13;
    }

    v63 = a2;
    __chkstk_darwin(v12);
    v54[2] = &v63;
    v17 = v13;
    v18 = 0;
    sub_10001B898(sub_10001B830, v54, v4, v17, v5);
    if (v19)
    {
      v20 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_editorContentViewsForEditingLooks;
      v21 = v60;
      swift_beginAccess();
      v22 = *(v21 + v20);

      v4 = sub_100014B08(a2, v22);

      v18 = sub_100013F1C(a2, v7);
      v5 = sub_100014314(a2, v7);
      if (v4)
      {
        v23 = v4;
        sub_1000115D0(v7, v18, v5);
      }
    }

    v24 = sub_10000A6CC();
    v9 = v24;
    v10 = v24 & 0xFFFFFFFFFFFFFF8;
    v11 = v24 >> 62;
    if (v24 >> 62)
    {
      goto LABEL_53;
    }

    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 6)
    {
      goto LABEL_58;
    }
  }

LABEL_44:
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void sub_10001B898(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  if (a5 >> 1 != a4)
  {
    if (a4 <= v6)
    {
      v8 = a5 >> 1;
    }

    else
    {
      v8 = a4;
    }

    v9 = v8 - a4;
    v10 = (a3 + 8 * a4);
    v11 = ~a4 + v6;
    while (v9)
    {
      v15 = *v10;
      v12 = v15;
      v13 = a1(&v15);

      if (!v5)
      {
        v14 = v11 != 0;
        --v9;
        ++v10;
        --v11;
        if (v14 & ~v13)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_10001B968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v173 = a3;
  v5 = sub_100024938();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v164 = &v153[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v165 = &v153[-v10];
  v11 = __chkstk_darwin(v9);
  v167 = &v153[-v12];
  __chkstk_darwin(v11);
  v171 = &v153[-v13];
  v14 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  __chkstk_darwin(v14 - 8);
  v16 = &v153[-v15];
  v17 = type metadata accessor for KaleidoscopePosterData(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v163 = &v153[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v166 = &v153[-v22];
  __chkstk_darwin(v21);
  v175 = &v153[-v23];
  v24 = sub_10000AB70(&qword_10003B970, qword_100028490);
  v25 = __chkstk_darwin(v24 - 8);
  v168 = &v153[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v29 = &v153[-v28];
  __chkstk_darwin(v27);
  v31 = &v153[-v30];
  v169 = a1;
  sub_100016D4C(a1);
  v174 = a2;
  v32 = sub_100014C6C(v179);
  v34 = v33;
  v35 = *(v18 + 48);
  v36 = v35(v33, 1, v17);
  v172 = v5;
  v170 = v6;
  if (!v36)
  {
    sub_100024928();
    (*(v6 + 56))(v31, 0, 1, v5);
    sub_10001DD0C(v31, v34, &qword_10003B970, qword_100028490);
  }

  (v32)(v179, 0);
  v37 = v174;
  v38 = sub_100014C6C(v179);
  v40 = v39;
  v41 = v35(v39, 1, v17);
  v42 = v175;
  if (!v41)
  {
    *(v40 + *(v17 + 20)) = *(v37 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_currentlySelectedAppearanceStyle);
  }

  (v38)(v179, 0);
  v43 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_posterData;
  swift_beginAccess();
  sub_10001D704(v37 + v43, v16, &qword_10003C380, qword_100028B40);
  if (v35(v16, 1, v17) != 1)
  {
    sub_10000AA4C(v16, v42);
    sub_10001D704(v42, v29, &qword_10003B970, qword_100028490);
    v47 = v170;
    v48 = *(v170 + 48);
    v49 = v172;
    if (v48(v29, 1, v172) == 1)
    {
      sub_10000AB14(v42);
      v44 = &qword_10003B970;
      v45 = qword_100028490;
      v46 = v29;
      goto LABEL_9;
    }

    v161 = v48;
    v55 = v171;
    v159 = *(v47 + 32);
    v159(v171, v29, v49);
    sub_10001DCC4(&qword_10003C2D0, type metadata accessor for KaleidoscopePosterData, &unk_100028500);
    v56 = sub_100024C28();
    if (!v56)
    {
      (*(v47 + 8))(v55, v49);
      sub_10000AB14(v42);
      goto LABEL_10;
    }

    v57 = v56;
    if (qword_10003B910 != -1)
    {
      swift_once();
    }

    v58 = sub_100024B98();
    v59 = sub_10000C2CC(v58, qword_10003D268);
    v60 = v166;
    sub_10000AAB0(v42, v166);
    v61 = *(v47 + 16);
    v62 = v167;
    v157 = v47 + 16;
    v156 = v61;
    v61(v167, v171, v49);
    v162 = v59;
    v63 = sub_100024B78();
    v64 = sub_100024DE8();
    v65 = os_log_type_enabled(v63, v64);
    v160 = v57;
    v158 = v47 + 32;
    if (v65)
    {
      v66 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v178[0] = v155;
      *v66 = 136315394;
      v154 = v64;
      sub_10000CDE4();
      v67 = sub_100024CE8();
      v69 = v68;

      sub_10000AB14(v60);
      v70 = sub_100010554(v67, v69, v178);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2080;
      sub_10001DCC4(&qword_10003C2A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v71 = sub_1000250C8();
      v72 = v62;
      v74 = v73;
      v167 = *(v47 + 8);
      (v167)(v72, v49);
      v75 = sub_100010554(v71, v74, v178);

      *(v66 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v63, v154, "Poster with look %s generated uuid of %s in the editor", v66, 0x16u);
      swift_arrayDestroy();

      v42 = v175;
    }

    else
    {

      v167 = *(v47 + 8);
      (v167)(v62, v49);
      sub_10000AB14(v60);
    }

    v76 = sub_100024B78();
    v77 = sub_100024DE8();

    v78 = v47;
    if (os_log_type_enabled(v76, v77))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v178[0] = v80;
      *v79 = 136315138;
      v81 = sub_100024C18();
      v83 = sub_100010554(v81, v82, v178);

      *(v79 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v76, v77, "finalizeWithCompletion — will attempt to finalize with userInfo: %s", v79, 0xCu);
      sub_10000C36C(v80);
    }

    v84 = v169;
    v85 = v168;
    sub_10001D704(v42, v168, &qword_10003B970, qword_100028490);
    if (v161(v85, 1, v49) == 1)
    {
      sub_10000E2AC(v85, &qword_10003B970, qword_100028490);
      goto LABEL_36;
    }

    v86 = v165;
    v159(v165, v85, v49);
    v87 = v49;
    v88 = objc_allocWithZone(NSUserDefaults);
    v89 = sub_100024C68();
    v90 = [v88 initWithSuiteName:v89];

    if (v90)
    {
      v91 = [v84 currentLook];
      v92 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentViewForLook;
      v93 = v174;
      swift_beginAccess();
      v94 = *(v93 + v92);

      v95 = sub_100014B08(v91, v94);

      if (v95)
      {
        v96 = *&v95[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_animationDriver];

        if (v96)
        {
          v98 = *(v96 + 80);
          v97 = *(v96 + 88);
          v99 = sub_10001DCC4(&qword_10003C2A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v100 = v165;
          v101 = v172;
          v176 = sub_1000250C8();
          v177 = v102;
          v180._countAndFlagsBits = 0x6F697461746F722DLL;
          v180._object = 0xE90000000000006ELL;
          sub_100024D08(v180);
          v103 = sub_100024C68();

          [v90 setDouble:v103 forKey:v97];

          v174 = v99;
          v176 = sub_1000250C8();
          v177 = v104;
          v181._countAndFlagsBits = 0x736572676F72702DLL;
          v181._object = 0xE900000000000073;
          v42 = v175;
          sub_100024D08(v181);
          v105 = sub_100024C68();

          [v90 setDouble:v105 forKey:v98];

          v106 = v164;
          v156(v164, v100, v101);
          v107 = v163;
          sub_10000AAB0(v42, v163);
          v108 = sub_100024B78();
          v109 = sub_100024DE8();
          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v168 = swift_slowAlloc();
            v176 = v168;
            *v110 = 134218754;
            *(v110 + 4) = v98;
            *(v110 + 12) = 2048;
            *(v110 + 14) = v97;
            *(v110 + 22) = 2080;
            v166 = v108;
            v111 = sub_1000250C8();
            v112 = v106;
            v114 = v113;
            v174 = v78 + 8;
            v115 = v101;
            v116 = v167;
            (v167)(v112, v115);
            v117 = sub_100010554(v111, v114, &v176);

            *(v110 + 24) = v117;
            *(v110 + 32) = 2080;
            v118 = v107;
            sub_10000CDE4();
            v119 = sub_100024CE8();
            v121 = v120;

            sub_10000AB14(v118);
            v122 = sub_100010554(v119, v121, &v176);

            *(v110 + 34) = v122;
            v123 = v166;
            _os_log_impl(&_mh_execute_header, v166, v109, "Path progress of %f and rotation of %f were saved for %s for look %s", v110, 0x2Au);
            swift_arrayDestroy();

            v42 = v175;

            v116(v165, v172);
          }

          else
          {

            sub_10000AB14(v107);
            v152 = v167;
            (v167)(v106, v101);
            v152(v165, v101);
          }

          v84 = v169;
        }

        else
        {
          (v167)(v165, v172);
        }

LABEL_36:
        v126 = [objc_msgSend(v84 "environment")];
        swift_unknownObjectRelease();
        isa = sub_100024BF8().super.isa;

        v176 = 0;
        v128 = [v126 storeUserInfo:isa error:&v176];

        v129 = v176;
        if (v128 && (v130 = v176, v131 = [objc_msgSend(v84 "environment")], swift_unknownObjectRelease(), v176 = 0, v132 = objc_msgSend(v131, "loadUserInfoWithError:", &v176), v131, v129 = v176, v132))
        {
          sub_100024C08();
          v133 = v129;

          v134 = sub_100024B78();
          v135 = sub_100024DE8();

          if (os_log_type_enabled(v134, v135))
          {
            v136 = swift_slowAlloc();
            v137 = swift_slowAlloc();
            v176 = v137;
            *v136 = 136315138;
            v138 = sub_100024C18();
            v140 = v139;

            v141 = sub_100010554(v138, v140, &v176);

            *(v136 + 4) = v141;
            _os_log_impl(&_mh_execute_header, v134, v135, "Successfully stored userInfo: %s", v136, 0xCu);
            sub_10000C36C(v137);
          }

          else
          {
          }
        }

        else
        {
          v142 = v129;
          sub_100024918();

          swift_willThrow();
          swift_errorRetain();
          v143 = sub_100024B78();
          v144 = sub_100024DF8();

          if (os_log_type_enabled(v143, v144))
          {
            v145 = swift_slowAlloc();
            v146 = v42;
            v147 = swift_slowAlloc();
            v176 = v147;
            *v145 = 136315138;
            swift_getErrorValue();
            v148 = sub_100025108();
            v150 = sub_100010554(v148, v149, &v176);

            *(v145 + 4) = v150;
            _os_log_impl(&_mh_execute_header, v143, v144, "Failed to store userInfo in editor.environment.targetConfiguration. %s", v145, 0xCu);
            sub_10000C36C(v147);

            (v167)(v171, v172);
            v151 = v146;
LABEL_46:
            sub_10000AB14(v151);
            return (*(v173 + 16))();
          }
        }

        (v167)(v171, v172);
        v151 = v42;
        goto LABEL_46;
      }

      v124 = v165;
      v125 = v172;
    }

    else
    {
      v124 = v86;
      v125 = v87;
    }

    (v167)(v124, v125);
    goto LABEL_36;
  }

  v44 = &qword_10003C380;
  v45 = qword_100028B40;
  v46 = v16;
LABEL_9:
  sub_10000E2AC(v46, v44, v45);
LABEL_10:
  if (qword_10003B910 != -1)
  {
    swift_once();
  }

  v50 = sub_100024B98();
  sub_10000C2CC(v50, qword_10003D268);
  v51 = sub_100024B78();
  v52 = sub_100024DF8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Unable to finalize; failed to retrieve userInfo", v53, 2u);
  }

  return (*(v173 + 16))();
}

id sub_10001CD0C()
{
  v1 = v0;
  if (qword_10003B910 != -1)
  {
    swift_once();
  }

  v2 = sub_100024B98();
  sub_10000C2CC(v2, qword_10003D268);
  v3 = sub_100024B78();
  v4 = sub_100024DD8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "PosterEditor invalidated", v5, 2u);
  }

  swift_unknownObjectWeakAssign();
  result = *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentView);
  if (result)
  {

    return [result removeFromSuperview];
  }

  return result;
}

void *sub_10001CE34(uint64_t a1)
{
  v1 = sub_10000AB70(&qword_10003B970, qword_100028490);
  __chkstk_darwin(v1 - 8);
  v3 = &v66 - v2;
  v4 = type metadata accessor for KaleidoscopePosterData(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v66 - v8;
  v10 = sub_1000249A8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:), v10);
  v14 = sub_100024998();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    v17 = objc_allocWithZone(PREditingLook);
    v18 = sub_100024C68();
    v19 = sub_100024C68();
    v20 = [v17 initWithIdentifier:v18 displayName:v19];

    sub_10000AB70(&qword_10003C260, &unk_100028D98);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100028CE0;
    *(v15 + 32) = v20;
    return v15;
  }

  v15 = sub_10000A6CC();
  sub_10000AB70(&unk_10003C280, &qword_100028CB0);
  sub_100024A98();
  sub_10001D704(v9, v3, &qword_10003B970, qword_100028490);
  v16 = sub_100024938();
  if ((*(*(v16 - 8) + 48))(v3, 1, v16) == 1)
  {
    sub_10000AB14(v9);
    sub_10000E2AC(v3, &qword_10003B970, qword_100028490);
    return v15;
  }

  sub_10000E2AC(v3, &qword_10003B970, qword_100028490);
  v66 = v7;
  v67 = v15 >> 62;
  v21 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    goto LABEL_41;
  }

  v22 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v68 = v15 & 0xC000000000000001;

  v69 = v15;
  v70 = -v22;
  v23 = 4;
  do
  {
    v24 = v23;
    if (v70 + v23 == 4)
    {

      if (qword_10003B910 != -1)
      {
        swift_once();
      }

      v37 = sub_100024B98();
      sub_10000C2CC(v37, qword_10003D268);
      v38 = v66;
      sub_10000AAB0(v9, v66);
      v39 = sub_100024B78();
      v40 = sub_100024E08();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v41 = 136315394;
        sub_10000C5F4();
        v43 = v42;
        v45 = v44;
        sub_10000AB14(v38);
        v46 = sub_100010554(v43, v45, &v71);
        v15 = v69;

        *(v41 + 4) = v46;
        *(v41 + 12) = 2080;
        sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);

        v47 = sub_100024D58();
        v49 = v48;

        v50 = sub_100010554(v47, v49, &v71);

        *(v41 + 14) = v50;
        _os_log_impl(&_mh_execute_header, v39, v40, "Editing an existing poster, but failed to find a look identifier to replace. Target: %s All Looks: %s", v41, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10000AB14(v38);
      }

      goto LABEL_37;
    }

    v25 = v23 - 4;
    if (v68)
    {
      v26 = sub_100024F48();
    }

    else
    {
      if (v25 >= *(v21 + 16))
      {
        goto LABEL_40;
      }

      v26 = *(v15 + 8 * v23);
    }

    v27 = v26;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      v22 = sub_100025028();
      goto LABEL_7;
    }

    v28 = [v26 displayName];
    v29 = sub_100024C78();
    v31 = v30;

    sub_10000CDE4();
    v32 = sub_100024CE8();
    v34 = v33;

    if (v29 == v32 && v31 == v34)
    {
      v51 = v69;

      v52 = v51;
      goto LABEL_25;
    }

    v36 = sub_1000250D8();

    v23 = v24 + 1;
    v15 = v69;
  }

  while ((v36 & 1) == 0);

  v52 = v15;
LABEL_25:
  sub_10000C5F4();
  sub_10000CDE4();
  sub_100024CE8();

  v53 = objc_allocWithZone(PREditingLook);
  v54 = sub_100024C68();

  v55 = sub_100024C68();

  v56 = [v53 initWithIdentifier:v54 displayName:v55];

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  v15 = v52;
  if (v67 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v15 = sub_10001B14C(v52);
    v21 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  if (v25 >= *(v21 + 16))
  {
    __break(1u);
  }

  else
  {
    v58 = *(v21 + 8 * v24);
    *(v21 + 8 * v24) = v56;

    if (qword_10003B910 == -1)
    {
      goto LABEL_30;
    }
  }

  swift_once();
LABEL_30:
  v59 = sub_100024B98();
  sub_10000C2CC(v59, qword_10003D268);
  v60 = sub_100024B78();
  v61 = sub_100024DE8();
  if (!os_log_type_enabled(v60, v61))
  {
LABEL_35:

LABEL_37:
    sub_10000AB14(v9);
    return v15;
  }

  v62 = swift_slowAlloc();
  result = swift_slowAlloc();
  v64 = result;
  *v62 = 134218242;
  *(v62 + 4) = v25;
  *(v62 + 12) = 2112;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v65 = sub_100024F48();
LABEL_34:
    *(v62 + 14) = v65;
    *v64 = v65;
    _os_log_impl(&_mh_execute_header, v60, v61, "Kaleidoscope loaded all looks, and replaced position %ld with %@ and should be editing an existing poster.", v62, 0x16u);
    sub_10000E2AC(v64, &qword_10003B968, &unk_100028CA0);

    goto LABEL_35;
  }

  if (v25 < *(v21 + 16))
  {
    v65 = *(v15 + 8 * v24);
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001D704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000AB70(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001D7C0(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_jewelLookNames);

  v6 = [a2 displayName];
  v7 = sub_100024C78();
  v9 = v8;

  v49[0] = v7;
  v49[1] = v9;
  v46 = v49;
  LOBYTE(v6) = sub_10001917C(sub_10001DD78, v45, v5);

  *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_shouldShowAppearanceMenuButton) = v6 & 1;
  [a1 updateActions];
  v43 = a1;
  v10 = [a1 environment];
  swift_getObjectType();
  v44 = v2;
  v11 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_currentlySelectedAppearanceStyle);
  v12 = swift_unknownObjectRetain();
  v42 = sub_10000DDA8(v12, v11);
  swift_unknownObjectRelease_n();
  v13 = sub_10000A6CC();
  v14 = v13;
  if (v13 >> 62)
  {
    v15 = sub_100025028();
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
  }

LABEL_3:
  result = sub_1000147A8(0, &qword_10003C298, NSObject_ptr);
  if (v15 >= 1)
  {
    v17 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_editorContentViewsForEditingLooks;
    v18 = v14 & 0xC000000000000001;
    swift_beginAccess();
    v19 = 0;
    v41 = v14;
    v40 = v14 & 0xC000000000000001;
    while (1)
    {
      if (v18)
      {
        v21 = sub_100024F48();
      }

      else
      {
        v21 = *(v14 + 8 * v19 + 32);
      }

      v20 = v21;
      if (sub_100024E78() & 1) != 0 || (v22 = [v43 currentLook], v23 = sub_100024E78(), v22, (v23))
      {
        v24 = *(v44 + v17);
        if ((v24 & 0xC000000000000001) != 0)
        {

          v25 = v20;
          v26 = sub_100024FF8();

          if (v26)
          {
            v47 = v26;
            type metadata accessor for KaleidoscopeEditorContentView(0);
            swift_dynamicCast();
            v27 = v48;
            if (!v48)
            {
              goto LABEL_6;
            }

LABEL_19:
            v30 = sub_100013F1C(v20, v42);
            v31 = sub_100014314(v20, v42);
            v18 = v40;
            sub_1000115D0(v42, v30, v31);

            v14 = v41;
            v20 = v30;
            goto LABEL_6;
          }

LABEL_5:
          v20 = v25;
          goto LABEL_6;
        }

        if (*(v24 + 16))
        {

          v28 = sub_10001E6A0(v20);
          if ((v29 & 1) == 0)
          {
            goto LABEL_30;
          }

          v27 = *(*(v24 + 56) + 8 * v28);

          if (v27)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        v32 = *(v44 + v17);
        if ((v32 & 0xC000000000000001) != 0)
        {
          v25 = v20;

          v33 = sub_100024FF8();

          if (!v33)
          {
            goto LABEL_5;
          }

          v47 = v33;
          type metadata accessor for KaleidoscopeEditorContentView(0);
          swift_dynamicCast();
          v34 = v48;
          if (v48)
          {
            goto LABEL_27;
          }
        }

        else if (*(v32 + 16))
        {

          v35 = sub_10001E6A0(v20);
          if ((v36 & 1) == 0)
          {
LABEL_30:

            goto LABEL_6;
          }

          v34 = *(*(v32 + 56) + 8 * v35);

          if (v34)
          {
LABEL_27:
            v37 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView;
            v38 = *&v34[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView];
            if (v38)
            {
              v39 = v38;
              [v39 removeFromSuperview];
            }

            v20 = *&v34[v37];
            *&v34[v37] = 0;
          }
        }
      }

LABEL_6:
      ++v19;

      if (v15 == v19)
      {
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001DC6C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000250D8() & 1;
  }
}

uint64_t sub_10001DCC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001DD0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000AB70(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

id sub_10001DD94()
{
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster31KaleidoscopeRenderingController_coordinator] = 0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for KaleidoscopeRenderingController();
  v1 = objc_msgSendSuper2(&v9, "init");
  v2 = qword_10003B918;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = sub_100024B98();
  sub_10000C2CC(v4, qword_10003D280);
  v5 = sub_100024B78();
  v6 = sub_100024DD8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "PosterRenderer created", v7, 2u);
  }

  return v3;
}

id sub_10001DECC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KaleidoscopeRenderingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001DF34(void *a1, void *a2)
{
  v42 = a1;
  v3 = type metadata accessor for KaleidoscopePosterData(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = &v40 - v7;
  v8 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v40 - v13;
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v40 = [a2 deviceOrientation];
  v17 = [a2 contents];
  swift_getObjectType();
  sub_10001EBF0(&qword_10003BA18, &unk_100028528);
  sub_10001EBF0(&qword_10003C2D0, &unk_100028500);
  sub_100024E28();
  swift_unknownObjectRelease();
  sub_100012310(v16, v14);
  v18 = v4;
  v19 = *(v4 + 48);
  v20 = v19(v14, 1, v3);
  sub_100012544(v14);
  if (v20 == 1)
  {
    v21 = [a2 contents];
    v47[0] = 0;
    v22 = [v21 loadUserInfoWithError:v47];
    swift_unknownObjectRelease();
    v23 = v47[0];
    if (v22)
    {
      v24 = sub_100024C08();
      v25 = v23;

      v45 = 0x746E6169726176;
      v46 = 0xE700000000000000;
      sub_100024EE8();
      if (*(v24 + 16) && (v26 = sub_10001E6E4(v47), (v27 & 1) != 0))
      {
        sub_10001149C(*(v24 + 56) + 32 * v26, v48);
        sub_10001D76C(v47);

        if (swift_dynamicCast())
        {
          sub_100012544(v16);
          v28 = v45;
          v29 = sub_100024938();
          (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
          *&v16[*(v3 + 20)] = 0;
          *&v16[*(v3 + 24)] = v28;
          (*(v18 + 56))(v16, 0, 1, v3);
        }
      }

      else
      {

        sub_10001D76C(v47);
      }
    }

    else
    {
      v30 = v47[0];
      sub_100024918();

      swift_willThrow();
    }
  }

  sub_100012310(v16, v11);
  if (v19(v11, 1, v3) == 1)
  {
    sub_100012544(v11);
    if (qword_10003B918 != -1)
    {
      swift_once();
    }

    v31 = sub_100024B98();
    sub_10000C2CC(v31, qword_10003D280);
    v32 = sub_100024B78();
    v33 = sub_100024DE8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Kaleidoscope completely failed to load posterData during initialization", v34, 2u);
    }
  }

  else
  {
    v35 = v44;
    sub_10000AA4C(v11, v44);
    v36 = v41;
    sub_10000AAB0(v35, v41);
    type metadata accessor for KaleidoscopeRenderingCoordinator(0);
    swift_allocObject();
    v37 = v42;
    v38 = sub_100021AA8(v37, v36, v40);

    *(v43 + OBJC_IVAR____TtC18KaleidoscopePoster31KaleidoscopeRenderingController_coordinator) = v38;

    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      sub_100024AF8();
      sub_10001ECDC(v37);
    }

    sub_10000AB14(v35);
  }

  return sub_100012544(v16);
}

unint64_t sub_10001E6A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024E68(*(v2 + 40));

  return sub_10001E728(a1, v4);
}

unint64_t sub_10001E6E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024EC8(*(v2 + 40));

  return sub_10001E7EC(a1, v4);
}

unint64_t sub_10001E728(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10001EC90();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100024E78();

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

unint64_t sub_10001E7EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001EC34(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100024ED8();
      sub_10001D76C(v8);
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

double sub_10001E8B4(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1000249A8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:), v5);
  v9 = sub_100024998();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) != 0 && *(v3 + OBJC_IVAR____TtC18KaleidoscopePoster31KaleidoscopeRenderingController_coordinator))
  {

    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      sub_100024AF8();
      sub_10001ECDC(a1);
    }
  }

  return result;
}

double sub_10001EA0C()
{
  v1 = v0;
  v2 = sub_1000249A8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:), v2);
  v6 = sub_100024998();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_10003B918 != -1)
    {
      swift_once();
    }

    v8 = sub_100024B98();
    sub_10000C2CC(v8, qword_10003D280);
    v9 = sub_100024B78();
    v10 = sub_100024DD8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "PosterRenderer invalidate", v11, 2u);
    }

    v12 = OBJC_IVAR____TtC18KaleidoscopePoster31KaleidoscopeRenderingController_coordinator;
    if (*(v1 + OBJC_IVAR____TtC18KaleidoscopePoster31KaleidoscopeRenderingController_coordinator))
    {

      sub_100020F50();
    }

    *(v1 + v12) = 0;
  }

  return result;
}

uint64_t sub_10001EBF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for KaleidoscopePosterData(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001EC90()
{
  result = qword_10003C270;
  if (!qword_10003C270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003C270);
  }

  return result;
}

void sub_10001ECDC(void *a1)
{
  v2 = sub_1000249A8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:), v2);
  v8 = sub_100024998();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v8)
  {
    v7(v5, v6, v2);
    v10 = sub_100024998();
    v9(v5, v2);
    if (v10)
    {
      if (sub_100024DA8())
      {
        sub_10001FB00(a1);
      }

      else
      {
        sub_1000200B8(a1);
      }
    }
  }

  else
  {
    type metadata accessor for KaleidoscopeEmptyView();
    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v12 = [a1 backgroundView];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [v11 setFrame:{v14, v16, v18, v20}];
    v21 = [a1 backgroundView];
    [v21 addSubview:v11];
  }
}

uint64_t sub_10001EF18(uint64_t a1)
{
  v106 = a1;
  v1 = sub_10000AB70(&qword_10003B970, qword_100028490);
  __chkstk_darwin(v1 - 8);
  v99 = &v92 - v2;
  v104 = sub_100024938();
  v100 = *(v104 - 8);
  v3 = __chkstk_darwin(v104);
  v95 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v97 = &v92 - v5;
  v101 = sub_10000AB70(&qword_10003C5C8, &qword_100028E88);
  __chkstk_darwin(v101);
  v102 = &v92 - v6;
  v7 = sub_1000249A8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v12 = __chkstk_darwin(v11 - 8);
  v103 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v98 = &v92 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v92 - v17;
  __chkstk_darwin(v16);
  v20 = &v92 - v19;
  v21 = type metadata accessor for KaleidoscopePosterData(0);
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v94 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v96 = &v92 - v26;
  __chkstk_darwin(v25);
  v28 = &v92 - v27;
  sub_10001D704(v106, v20, &qword_10003C380, qword_100028B40);
  v29 = *(v22 + 48);
  v106 = v21;
  if (v29(v20, 1, v21) == 1)
  {
    return sub_10000E2AC(v20, &qword_10003C380, qword_100028B40);
  }

  sub_10000AA4C(v20, v28);
  (*(v8 + 104))(v10, enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:), v7);
  v31 = sub_100024998();
  (*(v8 + 8))(v10, v7);
  if (v31)
  {
    v32 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_currentPosterData;
    v33 = v105;
    swift_beginAccess();
    v93 = v28;
    sub_10000AAB0(v28, v18);
    v34 = *(v22 + 56);
    v35 = v106;
    v92 = v22 + 56;
    v34(v18, 0, 1, v106);
    v36 = v34;
    v37 = *(v101 + 48);
    v38 = v33 + v32;
    v39 = v102;
    sub_10001D704(v38, v102, &qword_10003C380, qword_100028B40);
    v40 = v39;
    sub_10001D704(v18, &v39[v37], &qword_10003C380, qword_100028B40);
    if (v29(v39, 1, v35) == 1)
    {
      sub_10000E2AC(v18, &qword_10003C380, qword_100028B40);
      v41 = v29(&v39[v37], 1, v35);
      v42 = v104;
      if (v41 == 1)
      {
        sub_10000E2AC(v40, &qword_10003C380, qword_100028B40);
LABEL_24:
        v88 = v93;
        v89 = v103;
        sub_10000AAB0(v93, v103);
        v36(v89, 0, 1, v35);
        v90 = v105;
        swift_beginAccess();
        sub_100021A38(v89, v90 + v32);
        swift_endAccess();
        v91 = *(v90 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_contentView);
        sub_10000F1F4(v88);

        v43 = v88;
        return sub_10000AB14(v43);
      }
    }

    else
    {
      v44 = v98;
      sub_10001D704(v39, v98, &qword_10003C380, qword_100028B40);
      v45 = v29(&v39[v37], 1, v35);
      v42 = v104;
      if (v45 != 1)
      {
        v83 = v40 + v37;
        v84 = v96;
        sub_10000AA4C(v83, v96);
        v85 = v40;
        v86 = sub_10000DE10(v44, v84);
        sub_10000AB14(v84);
        sub_10000E2AC(v18, &qword_10003C380, qword_100028B40);
        sub_10000AB14(v44);
        sub_10000E2AC(v85, &qword_10003C380, qword_100028B40);
        if (v86)
        {
          goto LABEL_24;
        }

LABEL_11:
        v46 = v99;
        sub_10001D704(v93, v99, &qword_10003B970, qword_100028490);
        v47 = v100;
        if ((*(v100 + 48))(v46, 1, v42) == 1)
        {
          sub_10000E2AC(v46, &qword_10003B970, qword_100028490);
        }

        else
        {
          v48 = v97;
          (*(v47 + 32))(v97, v46, v42);
          sub_100020F50();
          v49 = objc_allocWithZone(NSUserDefaults);
          v50 = sub_100024C68();
          v51 = [v49 initWithSuiteName:v50];

          if (v51 && (sub_100022BA0(&qword_10003C2A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v107 = sub_1000250C8(), v108 = v52, v109._countAndFlagsBits = 0x736572676F72702DLL, v109._object = 0xE900000000000073, sub_100024D08(v109), v53 = sub_100024C68(), , [v51 doubleForKey:v53], v55 = v54, v51, v53, v56 = objc_allocWithZone(NSUserDefaults), v57 = sub_100024C68(), v58 = objc_msgSend(v56, "initWithSuiteName:", v57), v57, v58))
          {
            v107 = sub_1000250C8();
            v108 = v59;
            v110._countAndFlagsBits = 0x6F697461746F722DLL;
            v110._object = 0xE90000000000006ELL;
            sub_100024D08(v110);
            v60 = sub_100024C68();

            [v58 doubleForKey:v60];
            v62 = v61;

            v63 = *(v105 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver);
            *(v63 + 80) = v55;
            *(v63 + 88) = v62;
            if (qword_10003B918 != -1)
            {
              swift_once();
            }

            v64 = sub_100024B98();
            sub_10000C2CC(v64, qword_10003D280);
            v65 = v100;
            v66 = v95;
            (*(v100 + 16))(v95, v48, v42);
            v67 = v94;
            sub_10000AAB0(v93, v94);
            v68 = sub_100024B78();
            v69 = sub_100024DE8();
            if (os_log_type_enabled(v68, v69))
            {
              v70 = swift_slowAlloc();
              v104 = v36;
              v71 = v66;
              v72 = v70;
              v101 = swift_slowAlloc();
              v107 = v101;
              *v72 = 136315906;
              LODWORD(v99) = v69;
              v73 = v67;
              v74 = sub_1000250C8();
              v76 = v75;
              v102 = *(v65 + 8);
              v77 = v71;
              v36 = v104;
              (v102)(v77, v42);
              v78 = sub_100010554(v74, v76, &v107);

              *(v72 + 4) = v78;
              *(v72 + 12) = 2080;
              sub_10000CDE4();
              v79 = sub_100024CE8();
              v81 = v80;

              sub_10000AB14(v73);
              v82 = sub_100010554(v79, v81, &v107);

              *(v72 + 14) = v82;
              *(v72 + 22) = 2048;
              *(v72 + 24) = v55;
              *(v72 + 32) = 2048;
              *(v72 + 34) = v62;
              _os_log_impl(&_mh_execute_header, v68, v99, "Poster %s which is look %s loaded path progress of %f and rotation %f in setPosterData", v72, 0x2Au);
              swift_arrayDestroy();

              (v102)(v97, v42);
            }

            else
            {

              sub_10000AB14(v67);
              v87 = *(v65 + 8);
              v87(v66, v42);
              v87(v48, v42);
            }
          }

          else
          {
            (*(v100 + 8))(v48, v42);
            *(*(v105 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver) + 80) = 0;
          }
        }

        v35 = v106;
        goto LABEL_24;
      }

      sub_10000E2AC(v18, &qword_10003C380, qword_100028B40);
      sub_10000AB14(v44);
    }

    sub_10000E2AC(v40, &qword_10003C5C8, &qword_100028E88);
    goto LABEL_11;
  }

  v43 = v28;
  return sub_10000AB14(v43);
}

void sub_10001FB00(void *a1)
{
  v2 = v1;
  v4 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  __chkstk_darwin(v4 - 8);
  v6 = &v50 - v5;
  v7 = type metadata accessor for KaleidoscopePosterData(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v50 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v50 - v12;
  __chkstk_darwin(v11);
  v51 = &v50 - v14;
  v15 = sub_10000AB70(&qword_10003C5C0, &qword_100028E80);
  __chkstk_darwin(v15 - 8);
  v17 = &v50 - v16;
  v18 = a1;
  sub_100024A38();
  v19 = sub_100024A48();
  v20 = (*(*(v19 - 8) + 48))(v17, 1, v19);
  sub_10000E2AC(v17, &qword_10003C5C0, &qword_100028E80);
  if (v20 == 1)
  {
    goto LABEL_4;
  }

  v21 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_currentPosterData;
  swift_beginAccess();
  sub_10001D704(v2 + v21, v6, &qword_10003C380, qword_100028B40);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000E2AC(v6, &qword_10003C380, qword_100028B40);
LABEL_4:
    if (qword_10003B918 != -1)
    {
      swift_once();
    }

    v22 = sub_100024B98();
    sub_10000C2CC(v22, qword_10003D280);
    v23 = sub_100024B78();
    v24 = sub_100024DE8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "The snapshot failed to grab a poster data", v25, 2u);
    }

    return;
  }

  v26 = v51;
  sub_10000AA4C(v6, v51);
  v27 = *(v26 + *(v7 + 20));
  v28 = [v18 environment];
  swift_getObjectType();
  v29 = swift_unknownObjectRetain();
  v30 = sub_10000DDA8(v29, v27);
  swift_unknownObjectRelease_n();
  v31 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_contentView;
  v32 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_contentView);
  v33 = *&v32[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance];
  *&v32[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance] = v30;
  if (v30 != v33)
  {
    v34 = v32;
    sub_10000F310();
    v35 = *&v34[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView];
    if (v35)
    {
      v36 = v35;
      [v36 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
    }
  }

  v37 = *(v2 + v31);
  v38 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver;
  v39 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
  swift_beginAccess();
  sub_10000AAB0(v37 + v39, v13);
  v40 = v37;

  sub_10000F690(v41, v13);

  sub_10000AB14(v13);
  v42 = *(*(v2 + v31) + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
  if (v42)
  {
    [v42 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
  }

  v43 = v50;
  if (qword_10003B918 != -1)
  {
    swift_once();
  }

  v44 = sub_100024B98();
  sub_10000C2CC(v44, qword_10003D280);
  sub_10000AAB0(v26, v43);

  v45 = sub_100024B78();
  v46 = sub_100024DE8();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 134218496;
    v48 = *(v2 + v38);
    *(v47 + 4) = *(v48 + 80);
    *(v47 + 12) = 2048;
    *(v47 + 14) = *(v48 + 88);
    *(v47 + 22) = 2048;
    v49 = *(v43 + *(v7 + 24));
    sub_10000AB14(v43);
    *(v47 + 24) = v49;
    _os_log_impl(&_mh_execute_header, v45, v46, "The snapshot was generated with an animation driver set to %f %f for poster %ld", v47, 0x20u);
  }

  else
  {
    sub_10000AB14(v43);
  }

  sub_10000AB14(v26);
}

uint64_t sub_1000200B8(void *a1)
{
  v2 = v1;
  v98 = a1;
  v3 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  __chkstk_darwin(v3 - 8);
  v86 = &v80 - v4;
  v85 = type metadata accessor for KaleidoscopePosterData(0);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v88 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A28();
  v89 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v80 - v10;
  v12 = sub_100024B68();
  v101 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v87 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v80 - v16;
  __chkstk_darwin(v15);
  v19 = &v80 - v18;
  v20 = [objc_opt_self() mainScreen];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v99 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_contentView;
  [*(v2 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_contentView) bounds];
  v105.origin.x = v29;
  v105.origin.y = v30;
  v105.size.width = v31;
  v105.size.height = v32;
  v104.origin.x = v22;
  v104.origin.y = v24;
  v104.size.width = v26;
  v104.size.height = v28;
  if (!CGRectEqualToRect(v104, v105))
  {
    v33 = *(v2 + v99);
    [v33 setFrame:{v22, v24, v26, v28}];
    [v33 setNeedsLayout];
    [v33 setNeedsDisplay];
    [v33 layoutIfNeeded];
  }

  v34 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_wakeState;
  swift_beginAccess();
  v35 = v101;
  v36 = *(v101 + 16);
  v96 = v34;
  v95 = v101 + 16;
  v94 = v36;
  v36(v19, v2 + v34, v12);
  LOBYTE(v34) = sub_100024B38();
  v100 = *(v35 + 8);
  v101 = v35 + 8;
  v100(v19, v12);
  if (v34 & 1) != 0 || (v37 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_unlockState, swift_beginAccess(), v38 = v89, (*(v89 + 16))(v11, v2 + v37, v6), LOBYTE(v37) = sub_1000249F8(), (*(v38 + 8))(v11, v6), (v37))
  {
    v39 = *(v2 + v99);
    if (v39[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused] == 1)
    {
      v39[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused] = 0;
      v40 = v39;
      sub_10000E948();
    }
  }

  sub_100024DC8();
  sub_100020B04(v17);
  v41 = v17;
  v97 = v12;
  v100(v17, v12);
  sub_100024DB8();
  v42 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_unlockState;
  swift_beginAccess();
  v43 = v89;
  v44 = *(v89 + 16);
  v93 = v89 + 16;
  v92 = v44;
  v44(v11, v2 + v42, v6);
  sub_100022BA0(&qword_10003C5B0, &type metadata accessor for UnlockState, &protocol conformance descriptor for UnlockState);
  v45 = sub_100024C58();
  v46 = *(v43 + 8);
  v83 = v11;
  v91 = v46;
  v90 = v43 + 8;
  v46(v11, v6);
  if ((v45 & 1) == 0)
  {
    swift_beginAccess();
    (*(v43 + 24))(v2 + v42, v9, v6);
    swift_endAccess();
  }

  v47 = v91;
  v91(v9, v6);
  v48 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver;
  v82 = v6;
  v49 = v42;
  v50 = v97;
  v94(v41, v2 + v96, v97);

  sub_100024B48();
  v103 = v51;
  sub_1000219B4();
  sub_100024C38();
  v100(v41, v50);
  sub_10000E784(v102);

  v89 = v48;
  v81 = v49;
  v52 = v2 + v49;
  v53 = v83;
  v54 = v82;
  v92(v83, v52, v82);

  sub_100024A18();
  v103 = v55;
  sub_100024C38();
  v47(v53, v54);
  sub_10000E808(v102);

  sub_10000AB70(&unk_10003C280, &qword_100028CB0);
  v56 = v88;
  v57 = v98;
  sub_100024AA8();
  v58 = v86;
  sub_10000AAB0(v56, v86);
  v59 = v85;
  (*(v84 + 56))(v58, 0, 1, v85);
  sub_10001EF18(v58);
  sub_10000E2AC(v58, &qword_10003C380, qword_100028B40);
  v60 = *(v56 + *(v59 + 20));
  v61 = [v57 environment];
  swift_getObjectType();
  v62 = swift_unknownObjectRetain();
  v63 = sub_10000DDA8(v62, v60);
  swift_unknownObjectRelease_n();
  v64 = v99;
  v65 = *(v2 + v99);
  v66 = *&v65[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance];
  *&v65[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance] = v63;
  if (v63 != v66)
  {
    v67 = v65;
    sub_10000F310();
    v68 = *&v67[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView];
    if (v68)
    {
      v69 = v68;
      [v69 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
    }
  }

  v70 = *(v2 + v64);

  sub_10000F690(v71, v56);

  v72 = v87;
  v73 = v97;
  v94(v87, v2 + v96, v97);
  LOBYTE(v70) = sub_100024B38();
  v100(v72, v73);
  if ((v70 & 1) == 0)
  {
    v92(v53, v2 + v81, v54);
    v74 = sub_1000249F8();
    v91(v53, v54);
    if ((v74 & 1) == 0)
    {
      v75 = *(v2 + v64);
      if ((v75[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused] & 1) == 0)
      {
        v75[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused] = 1;
        v76 = v75;
        sub_10000E948();

        [v98 noteContentSignificantlyChanged];
      }
    }
  }

  v77 = *(v2 + v64);
  if (*(v77 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused) == 1)
  {
    v78 = *(v77 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
    if (v78)
    {
      [v78 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
    }
  }

  sub_100020F50();
  return sub_10000AB14(v56);
}

void sub_100020B04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024B68();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v10 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_wakeState;
  swift_beginAccess();
  v11 = *(v5 + 16);
  v11(v9, v1 + v10, v4);
  sub_100022BA0(&qword_10003C598, &type metadata accessor for WakeState, &protocol conformance descriptor for WakeState);
  v12 = sub_100024C58();
  v33 = *(v5 + 8);
  v33(v9, v4);
  if ((v12 & 1) == 0)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v10, a1, v4);
    swift_endAccess();
    v13 = a1;
    if (qword_10003B918 != -1)
    {
      swift_once();
    }

    v14 = sub_100024B98();
    sub_10000C2CC(v14, qword_10003D280);
    v15 = v34;
    v11(v34, v13, v4);
    v16 = sub_100024B78();
    v17 = sub_100024DD8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v38[0] = swift_slowAlloc();
      v32 = v13;
      v19 = v38[0];
      *v18 = 136315138;
      sub_100022BA0(&qword_10003C5A8, &type metadata accessor for WakeState, &protocol conformance descriptor for WakeState);
      v20 = sub_1000250C8();
      v22 = v21;
      v33(v15, v4);
      v23 = sub_100010554(v20, v22, v38);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Set wake state to %s", v18, 0xCu);
      sub_10000C36C(v19);
    }

    else
    {

      v33(v15, v4);
    }

    v24 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_contentView);
    sub_100024B48();
    v26 = *&v24[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView];
    if (v26)
    {
      v27 = v25;
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        v38[0] = v27;
        sub_100021960();
        v30 = v26;
        sub_100024C48();
        v36 = v37;
        sub_100024C38();
        HIDWORD(v31) = HIDWORD(v35);
        *&v31 = v35;
        [v29 setAplFilterAmount:v31];
      }
    }
  }
}

uint64_t sub_100020F50()
{
  v1 = sub_10000AB70(&qword_10003B970, qword_100028490);
  __chkstk_darwin(v1 - 8);
  v3 = &v52[-v2];
  v4 = sub_100024938();
  v60 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v58 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v59 = &v52[-v7];
  v8 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  __chkstk_darwin(v8 - 8);
  v10 = &v52[-v9];
  v11 = type metadata accessor for KaleidoscopePosterData(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v57 = &v52[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v16 = &v52[-v15];
  v17 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_currentPosterData;
  swift_beginAccess();
  sub_10001D704(v0 + v17, v10, &qword_10003C380, qword_100028B40);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000E2AC(v10, &qword_10003C380, qword_100028B40);
  }

  sub_10000AA4C(v10, v16);
  sub_10001D704(v16, v3, &qword_10003B970, qword_100028490);
  v19 = v60;
  if ((*(v60 + 48))(v3, 1, v4) == 1)
  {
    sub_10000AB14(v16);
    return sub_10000E2AC(v3, &qword_10003B970, qword_100028490);
  }

  v20 = v4;
  v21 = v59;
  (*(v19 + 32))(v59, v3, v20);
  v22 = objc_allocWithZone(NSUserDefaults);
  v23 = sub_100024C68();
  v24 = [v22 initWithSuiteName:v23];

  if (!v24)
  {
    (*(v19 + 8))(v21, v20);
LABEL_12:
    v50 = v16;
    return sub_10000AB14(v50);
  }

  v25 = *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver);
  v27 = *(v25 + 80);
  v26 = *(v25 + 88);
  v28 = sub_100022BA0(&qword_10003C2A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v61 = sub_1000250C8();
  v62 = v29;
  v63._countAndFlagsBits = 0x736572676F72702DLL;
  v63._object = 0xE900000000000073;
  sub_100024D08(v63);
  v30 = sub_100024C68();

  [v24 setDouble:v30 forKey:v27];

  v56 = v28;
  v61 = sub_1000250C8();
  v62 = v31;
  v64._countAndFlagsBits = 0x6F697461746F722DLL;
  v64._object = 0xE90000000000006ELL;
  sub_100024D08(v64);
  v32 = sub_100024C68();

  [v24 setDouble:v32 forKey:v26];

  if (qword_10003B918 != -1)
  {
    swift_once();
  }

  v33 = sub_100024B98();
  sub_10000C2CC(v33, qword_10003D280);
  v34 = v58;
  (*(v19 + 16))(v58, v21, v20);
  v35 = v57;
  sub_10000AAB0(v16, v57);
  v36 = sub_100024B78();
  v37 = sub_100024DE8();
  if (!os_log_type_enabled(v36, v37))
  {

    sub_10000AB14(v35);
    v51 = *(v19 + 8);
    v51(v34, v20);
    v51(v21, v20);
    goto LABEL_12;
  }

  v38 = swift_slowAlloc();
  v55 = v16;
  v39 = v38;
  v54 = swift_slowAlloc();
  v61 = v54;
  *v39 = 136315906;
  v53 = v37;
  v40 = sub_1000250C8();
  v56 = v24;
  v41 = v35;
  v43 = v42;
  v44 = *(v19 + 8);
  v44(v34, v20);
  v45 = sub_100010554(v40, v43, &v61);

  *(v39 + 4) = v45;
  *(v39 + 12) = 2080;
  sub_10000CDE4();
  v46 = sub_100024CE8();
  v48 = v47;

  sub_10000AB14(v41);
  v49 = sub_100010554(v46, v48, &v61);

  *(v39 + 14) = v49;
  *(v39 + 22) = 2048;
  *(v39 + 24) = v27;
  *(v39 + 32) = 2048;
  *(v39 + 34) = v26;
  _os_log_impl(&_mh_execute_header, v36, v53, "Poster %s which is look %s saved path progress of %f and rotation of %f", v39, 0x2Au);
  swift_arrayDestroy();

  v44(v21, v20);
  v50 = v55;
  return sub_10000AB14(v50);
}

uint64_t sub_100021680()
{
  sub_10000E2AC(v0 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_currentPosterData, &qword_10003C380, qword_100028B40);
  v1 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_unlockState;
  v2 = sub_100024A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_wakeState;
  v4 = sub_100024B68();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for KaleidoscopeRenderingCoordinator(uint64_t a1)
{
  result = qword_10003C3E0;
  if (!qword_10003C3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100021810(uint64_t a1)
{
  sub_100011FEC(319);
  if (v1 <= 0x3F)
  {
    sub_100024A28();
    if (v2 <= 0x3F)
    {
      sub_100024B68();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void *sub_100021940(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

unint64_t sub_100021960()
{
  result = qword_10003C5A0;
  if (!qword_10003C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C5A0);
  }

  return result;
}

unint64_t sub_1000219B4()
{
  result = qword_10003C5B8;
  if (!qword_10003C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C5B8);
  }

  return result;
}

uint64_t sub_100021A08@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100021A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021AA8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v156 = a3;
  v7 = sub_10000AB70(&qword_10003B970, qword_100028490);
  __chkstk_darwin(v7 - 8);
  v146 = &v132 - v8;
  v9 = sub_100024938();
  v10 = *(v9 - 8);
  v151 = v9;
  v152 = v10;
  v11 = __chkstk_darwin(v9);
  v135 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v150 = &v132 - v13;
  v145 = sub_100024B68();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_100024A28();
  v141 = *(v142 - 8);
  v15 = __chkstk_darwin(v142);
  v139 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v140 = &v132 - v17;
  v18 = type metadata accessor for KaleidoscopePosterData(0);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v134 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v138 = &v132 - v23;
  __chkstk_darwin(v22);
  v153 = &v132 - v24;
  v25 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  __chkstk_darwin(v25 - 8);
  v27 = &v132 - v26;
  v28 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_currentPosterData;
  v29 = *(v19 + 56);
  v29(v3 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_currentPosterData, 1, 1, v18);
  sub_100024A08();
  sub_100024B58();
  v30 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver;
  sub_10000E8DC();
  *(v4 + v30) = v31;
  v32 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_rotationAnimator;
  sub_100024B28();
  swift_allocObject();
  *(v4 + v32) = sub_100024B18();
  *(v4 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_renderer) = a1;
  *(v4 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_orientation) = v156;
  sub_10000AAB0(a2, v27);
  v149 = v19 + 56;
  v147 = v29;
  v29(v27, 0, 1, v18);
  swift_beginAccess();
  v33 = a1;
  v148 = v27;
  sub_100021A38(v27, v4 + v28);
  swift_endAccess();
  v155 = v18;
  v34 = *(a2 + *(v18 + 20));
  v35 = [v33 environment];
  swift_getObjectType();
  v36 = swift_unknownObjectRetain();
  v137 = sub_10000DDA8(v36, v34);
  swift_unknownObjectRelease_n();
  v154 = v33;
  v37 = [v33 backgroundView];
  [v37 bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v156 = a2;
  v46 = v153;
  sub_10000AAB0(a2, v153);
  v133 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver;
  v47 = *(v4 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver);
  v136 = type metadata accessor for KaleidoscopeContentView(0);
  v48 = objc_allocWithZone(v136);
  *&v48[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v48[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView] = 0;
  v49 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadPathfinderMapTable;
  v50 = objc_allocWithZone(NSMapTable);

  *&v48[v49] = [v50 init];
  *&v48[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_loadedAssets] = &_swiftEmptySetSingleton;
  v51 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterResourceProviderKey;
  *&v48[v51] = [objc_allocWithZone(CLKUIResourceProviderKey) init];
  v52 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lastAppliedPathProgress;
  *&v48[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lastAppliedPathProgress] = 0;
  v53 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier;
  *&v48[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier] = 1063675494;
  v54 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_currentDriver;
  sub_10000E8DC();
  *&v48[v54] = v55;
  v56 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance;
  *&v48[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance] = 0;
  *&v48[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lumaBacking] = 0;
  *&v48[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_chromaBacking] = 0;
  *&v48[v54] = v47;

  v48[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused] = 1;
  sub_10000AAB0(v46, &v48[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData]);
  *&v48[v52] = *(v47 + 80);
  *&v48[v56] = v137;
  v57 = [objc_opt_self() currentDevice];
  v58 = [v57 userInterfaceIdiom];

  v59 = 0.9;
  if (!v58)
  {
    v59 = 1.125;
  }

  *&v48[v53] = v59;
  v159.receiver = v48;
  v159.super_class = v136;
  v60 = objc_msgSendSuper2(&v159, "initWithFrame:", v39, v41, v43, v45);
  sub_10000ED8C();

  sub_10000AB14(v46);
  v61 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_contentView;
  *(v4 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_contentView) = v60;
  if (qword_10003B918 != -1)
  {
    swift_once();
  }

  v153 = v61;
  v62 = sub_100024B98();
  v63 = sub_10000C2CC(v62, qword_10003D280);
  v64 = v138;
  sub_10000AAB0(v156, v138);
  v137 = v63;
  v65 = sub_100024B78();
  v66 = sub_100024DE8();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v157 = v68;
    *v67 = 136315138;
    sub_10000C5F4();
    v160 = v69;
    v161 = v70;
    v162._countAndFlagsBits = 45;
    v162._object = 0xE100000000000000;
    sub_100024D08(v162);
    v71 = *(v64 + *(v155 + 24));
    v72 = v142;
    v73 = v140;
    if (qword_10003B8D8 != -1)
    {
      swift_once();
    }

    v74 = qword_10003D1C8;
    if (qword_10003D1C8 <= v71)
    {
      v74 = v71;
    }

    if (qword_10003D1D0 >= v74)
    {
      v75 = v74;
    }

    else
    {
      v75 = qword_10003D1D0;
    }

    v163._countAndFlagsBits = sub_10000B8CC(v75);
    sub_100024D08(v163);

    v76 = v160;
    v77 = v161;
    sub_10000AB14(v64);
    v78 = sub_100010554(v76, v77, &v157);

    *(v67 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v65, v66, "didInitializeWith posterData: %s", v67, 0xCu);
    sub_10000C36C(v68);

    v79 = v141;
  }

  else
  {

    sub_10000AB14(v64);
    v72 = v142;
    v79 = v141;
    v73 = v140;
  }

  v80 = v154;
  sub_100024DB8();
  v81 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_unlockState;
  swift_beginAccess();
  v82 = v139;
  (*(v79 + 16))(v139, v4 + v81, v72);
  sub_100022BA0(&qword_10003C5B0, &type metadata accessor for UnlockState, &protocol conformance descriptor for UnlockState);
  v83 = sub_100024C58();
  v84 = v73;
  v85 = *(v79 + 8);
  v85(v82, v72);
  v86 = v150;
  if ((v83 & 1) == 0)
  {
    swift_beginAccess();
    (*(v79 + 24))(v4 + v81, v84, v72);
    swift_endAccess();
  }

  v85(v84, v72);
  v87 = v143;
  sub_100024DC8();
  sub_100020B04(v87);
  (*(v144 + 8))(v87, v145);
  v88 = v153;
  v89 = *(v4 + v153);
  sub_100022BA0(&qword_10003C2A0, type metadata accessor for KaleidoscopeContentView, &unk_100028930);

  v90 = v89;
  sub_100024B08();

  [objc_msgSend(v80 "environment")];
  swift_unknownObjectRelease();
  sub_100024AD8();

  v91 = v156;
  v92 = v146;
  sub_10001D704(v156, v146, &qword_10003B970, qword_100028490);
  v94 = v151;
  v93 = v152;
  if ((*(v152 + 48))(v92, 1, v151) == 1)
  {
    sub_10000E2AC(v92, &qword_10003B970, qword_100028490);
  }

  else
  {
    (*(v93 + 32))(v86, v92, v94);
    v95 = objc_allocWithZone(NSUserDefaults);
    v96 = sub_100024C68();
    v97 = [v95 initWithSuiteName:v96];

    if (v97)
    {
      sub_100022BA0(&qword_10003C2A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v157 = sub_1000250C8();
      v158 = v98;
      v164._countAndFlagsBits = 0x736572676F72702DLL;
      v164._object = 0xE900000000000073;
      sub_100024D08(v164);
      v99 = sub_100024C68();

      [v97 doubleForKey:v99];
      v101 = v100;

      v102 = objc_allocWithZone(NSUserDefaults);
      v103 = sub_100024C68();
      v104 = [v102 initWithSuiteName:v103];

      if (v104)
      {
        v157 = sub_1000250C8();
        v158 = v105;
        v165._countAndFlagsBits = 0x6F697461746F722DLL;
        v165._object = 0xE90000000000006ELL;
        sub_100024D08(v165);
        v106 = sub_100024C68();

        [v104 doubleForKey:v106];
        v108 = v107;

        v109 = *(v4 + v133);
        *(v109 + 80) = v101;
        *(v109 + 88) = v108;
        v110 = v152;
        v111 = v135;
        (*(v152 + 16))(v135, v86, v94);
        v91 = v156;
        v112 = v134;
        sub_10000AAB0(v156, v134);
        v113 = sub_100024B78();
        v114 = sub_100024DE8();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = v110;
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          LODWORD(v145) = v114;
          v118 = v111;
          v146 = v117;
          v157 = v117;
          *v116 = 136315906;
          v119 = sub_1000250C8();
          v121 = v120;
          v152 = *(v115 + 8);
          (v152)(v118, v94);
          v122 = sub_100010554(v119, v121, &v157);

          *(v116 + 4) = v122;
          *(v116 + 12) = 2080;
          sub_10000CDE4();
          v123 = sub_100024CE8();
          v124 = v86;
          v126 = v125;

          sub_10000AB14(v112);
          v127 = sub_100010554(v123, v126, &v157);

          *(v116 + 14) = v127;
          *(v116 + 22) = 2048;
          *(v116 + 24) = v101;
          *(v116 + 32) = 2048;
          *(v116 + 34) = v108;
          _os_log_impl(&_mh_execute_header, v113, v145, "Poster %s which is look %s loaded path progress of %f and rotation of %f", v116, 0x2Au);
          swift_arrayDestroy();

          (v152)(v124, v94);
          v91 = v156;
        }

        else
        {

          sub_10000AB14(v112);
          v128 = *(v110 + 8);
          v128(v111, v94);
          v128(v86, v94);
        }
      }

      else
      {
        (*(v152 + 8))(v86, v94);
        v91 = v156;
      }
    }

    else
    {
      (*(v93 + 8))(v86, v94);
    }

    v88 = v153;
    v80 = v154;
  }

  v129 = [v80 backgroundView];
  [v129 addSubview:*(v4 + v88)];

  v130 = v148;
  sub_10000AAB0(v91, v148);
  v147(v130, 0, 1, v155);
  sub_10001EF18(v130);
  sub_10000AB14(v91);
  sub_10000E2AC(v130, &qword_10003C380, qword_100028B40);
  return v4;
}

uint64_t sub_100022BA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100022BE8(uint64_t a1)
{
  v3 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_posterData;
  v7 = type metadata accessor for KaleidoscopePosterData(0);
  v8 = *(v7 - 8);
  (*(v8 + 56))(&v1[v6], 1, 1, v7);
  v9 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathSlider;
  *&v1[v9] = [objc_allocWithZone(UISlider) init];
  v10 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomSlider;
  *&v1[v10] = [objc_allocWithZone(UISlider) init];
  v11 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathValueLabel;
  *&v1[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomValueLabel;
  *&v1[v12] = [objc_allocWithZone(UILabel) init];
  v13 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_backgroundView;
  *&v1[v13] = [objc_allocWithZone(UIView) init];
  v14 = &v1[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_sliderDelegate];
  *(v14 + 4) = 0;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  swift_beginAccess();
  sub_100024454(a1, &v1[v6]);
  swift_endAccess();
  sub_10001D704(a1, v5, &qword_10003C380, qword_100028B40);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_10000E2AC(v5, &qword_10003C380, qword_100028B40);
    v15 = 0;
  }

  else
  {
    v16 = *&v5[*(v7 + 24)];
    if (qword_10003B8D8 != -1)
    {
      swift_once();
    }

    v17 = qword_10003D1C8;
    if (qword_10003D1C8 <= v16)
    {
      v17 = v16;
    }

    if (qword_10003D1D0 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = qword_10003D1D0;
    }

    sub_10000AB14(v5);
    sub_10000BCE0(v18);
  }

  *&v1[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_startingPathProgress] = v15;
  v19 = type metadata accessor for PathProgressSliderViewController(0);
  v23.receiver = v1;
  v23.super_class = v19;
  v20 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  sub_10000E2AC(a1, &qword_10003C380, qword_100028B40);
  return v20;
}

void sub_100022F8C()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for PathProgressSliderViewController(0);
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  [v2 setBackgroundColor:v4];

  sub_1000233EC();
  sub_10002358C();
  sub_10002322C();
  v5 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_backgroundView];
  v6 = [v3 whiteColor];
  [v5 setBackgroundColor:v6];

  [v5 setAlpha:0.5];
  v7 = [v5 layer];
  [v7 setCornerRadius:10.0];

  v8 = [v0 view];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  [v8 addSubview:v5];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  [v10 addSubview:*&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathSlider]];

  v12 = [v0 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  [v12 addSubview:*&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomSlider]];

  v14 = [v0 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  [v14 addSubview:*&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathValueLabel]];

  v16 = [v0 view];
  if (v16)
  {
    v17 = v16;
    [v16 addSubview:*&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomValueLabel]];

    return;
  }

LABEL_13:
  __break(1u);
}

id sub_10002322C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathValueLabel);
  sub_10000AB70(&qword_10003B958, &qword_100028398);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000282A0;
  [*(v0 + OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathSlider) value];
  *(v2 + 56) = &type metadata for Float;
  *(v2 + 64) = &protocol witness table for Float;
  *(v2 + 32) = v3;
  sub_100024C98();
  v4 = sub_100024C68();

  [v1 setText:v4];

  v5 = *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomValueLabel);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000282A0;
  [*(v0 + OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomSlider) value];
  *(v6 + 56) = &type metadata for Float;
  *(v6 + 64) = &protocol witness table for Float;
  *(v6 + 32) = v7;
  sub_100024C98();
  v8 = sub_100024C68();

  [v5 setText:v8];

  [v1 sizeToFit];

  return [v5 sizeToFit];
}

id sub_1000233EC()
{
  v1 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathSlider];
  [v1 setContinuous:1];
  [v1 setMinimumValue:0.0];
  LODWORD(v2) = 1.0;
  [v1 setMaximumValue:v2];
  LODWORD(v3) = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_startingPathProgress];
  [v1 setValue:v3];
  [v1 addTarget:v0 action:"sliderValueDidChangeWithSender:" forControlEvents:4096];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  [result bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  Width = CGRectGetWidth(v26);
  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v27.origin.x = v17;
  v27.origin.y = v19;
  v27.size.width = v21;
  v27.size.height = v23;
  v24 = CGRectGetHeight(v27) * 0.5;

  return [v1 setCenter:{Width * 0.5, v24}];
}

id sub_10002358C()
{
  v1 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomSlider];
  [v1 setContinuous:1];
  LODWORD(v2) = 1050253722;
  [v1 setMinimumValue:v2];
  LODWORD(v3) = 1.5;
  [v1 setMaximumValue:v3];
  LODWORD(v4) = 1063675494;
  [v1 setValue:v4];
  [v1 addTarget:v0 action:"sliderValueDidChangeWithSender:" forControlEvents:4096];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  [result bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  v27.size.height = v14;
  Width = CGRectGetWidth(v27);
  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v16 = result;
  [result bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v28.origin.x = v18;
  v28.origin.y = v20;
  v28.size.width = v22;
  v28.size.height = v24;
  v25 = CGRectGetHeight(v28) * 0.5;

  return [v1 setCenter:{Width * 0.5, v25}];
}

id sub_100023734()
{
  v85.receiver = v0;
  v85.super_class = type metadata accessor for PathProgressSliderViewController(0);
  objc_msgSendSuper2(&v85, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_backgroundView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v86.origin.x = v5;
  v86.origin.y = v7;
  v86.size.width = v9;
  v86.size.height = v11;
  [v1 setBounds:{0.0, 0.0, CGRectGetWidth(v86), 200.0}];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = result;
  [result center];
  v14 = v13;

  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v87.origin.x = v17;
  v87.origin.y = v19;
  v87.size.width = v21;
  v87.size.height = v23;
  Height = CGRectGetHeight(v87);
  [v1 bounds];
  [v1 setCenter:{v14, Height + CGRectGetHeight(v88) * -0.5 + -20.0}];
  v25 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathSlider];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v26 = result;
  [result bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v89.origin.x = v28;
  v89.origin.y = v30;
  v89.size.width = v32;
  v89.size.height = v34;
  [v25 setBounds:{0.0, 0.0, CGRectGetWidth(v89) + -40.0, 50.0}];
  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v35 = result;
  [result bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v90.origin.x = v37;
  v90.origin.y = v39;
  v90.size.width = v41;
  v90.size.height = v43;
  v44 = CGRectGetWidth(v90) * 0.5;
  [v1 frame];
  v46 = v45;
  [v1 bounds];
  [v25 setCenter:{v44, v46 + CGRectGetHeight(v91) / 3.0}];
  v47 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomSlider];
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v48 = result;
  [result bounds];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v92.origin.x = v50;
  v92.origin.y = v52;
  v92.size.width = v54;
  v92.size.height = v56;
  [v47 setBounds:{0.0, 0.0, CGRectGetWidth(v92) + -40.0, 50.0}];
  result = [v0 view];
  if (result)
  {
    v57 = result;
    [result bounds];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v93.origin.x = v59;
    v93.origin.y = v61;
    v93.size.width = v63;
    v93.size.height = v65;
    v66 = CGRectGetWidth(v93) * 0.5;
    [v1 frame];
    v68 = v67;
    [v1 bounds];
    v69 = CGRectGetHeight(v94);
    [v47 setCenter:{v66, v68 + v69 / 3.0 + v69 / 3.0}];
    v70 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathValueLabel];
    [v1 frame];
    v72 = v71;
    [v70 bounds];
    v73 = v72 + CGRectGetWidth(v95) * 0.5 + 8.0;
    [v1 frame];
    v75 = v74;
    [v1 bounds];
    v76 = v75 + CGRectGetHeight(v96);
    [v70 bounds];
    [v70 setCenter:{v73, v76 - CGRectGetHeight(v97) * 0.5 + -8.0}];
    v77 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomValueLabel];
    [v1 frame];
    v79 = v78;
    [v1 bounds];
    v80 = v79 + CGRectGetWidth(v98);
    [v77 bounds];
    v81 = v80 - CGRectGetWidth(v99) * 0.5 + -8.0;
    [v1 frame];
    v83 = v82;
    [v1 bounds];
    v84 = v83 + CGRectGetHeight(v100);
    [v70 bounds];
    return [v77 setCenter:{v81, v84 - CGRectGetHeight(v101) * 0.5 + -8.0}];
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_100023CA0(void *a1)
{
  v2 = v1;
  if (qword_10003B910 != -1)
  {
    swift_once();
  }

  v4 = sub_100024B98();
  sub_10000C2CC(v4, qword_10003D268);
  v5 = a1;
  v6 = sub_100024B78();
  v7 = sub_100024DD8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    [v5 value];
    *(v8 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v6, v7, "Slider changed value to %f", v8, 0xCu);
  }

  sub_1000241E4();
  if (sub_100024E78())
  {
    v10 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_sliderDelegate;
    swift_beginAccess();
    sub_10001D704(v2 + v10, v17, &qword_10003C250, &qword_100028D90);
    if (v18)
    {
      sub_100024230(v17, v15);
      sub_10000E2AC(v17, &qword_10003C250, &qword_100028D90);
      sub_10000E134(v15, v16);
      [v5 value];
      sub_1000186C8(v11 - *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_startingPathProgress));
LABEL_11:
      sub_10000C36C(v15);
      return sub_10002322C();
    }

    goto LABEL_12;
  }

  if (sub_100024E78())
  {
    v12 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_sliderDelegate;
    swift_beginAccess();
    sub_10001D704(v2 + v12, v17, &qword_10003C250, &qword_100028D90);
    if (v18)
    {
      sub_100024230(v17, v15);
      sub_10000E2AC(v17, &qword_10003C250, &qword_100028D90);
      sub_10000E134(v15, v16);
      [v5 value];
      sub_100018824(v13);
      goto LABEL_11;
    }

LABEL_12:
    sub_10000E2AC(v17, &qword_10003C250, &qword_100028D90);
  }

  return sub_10002322C();
}

id sub_100023FEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PathProgressSliderViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PathProgressSliderViewController(uint64_t a1)
{
  result = qword_10003C630;
  if (!qword_10003C630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100024128(uint64_t a1)
{
  sub_100011FEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1000241E4()
{
  result = qword_10003C298;
  if (!qword_10003C298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003C298);
  }

  return result;
}

uint64_t sub_100024230(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1000242BC(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void sub_1000242F4()
{
  v1 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_posterData;
  v2 = type metadata accessor for KaleidoscopePosterData(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathSlider;
  *(v0 + v3) = [objc_allocWithZone(UISlider) init];
  v4 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomSlider;
  *(v0 + v4) = [objc_allocWithZone(UISlider) init];
  v5 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathValueLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomValueLabel;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_backgroundView;
  *(v0 + v7) = [objc_allocWithZone(UIView) init];
  v8 = v0 + OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_sliderDelegate;
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  sub_100025018();
  __break(1u);
}

uint64_t sub_100024454(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100024840(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[kaleidoscope pathfinder cache] insufficent path length %d", v2, 8u);
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}