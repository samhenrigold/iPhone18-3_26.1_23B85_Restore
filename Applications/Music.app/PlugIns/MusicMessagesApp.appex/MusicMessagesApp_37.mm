uint64_t _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV23__derived_struct_equalsySbAJ_AJtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_100006F10(0, &unk_100644F40, NSObject_ptr);
  if (sub_1004DE5FC() & 1) == 0 || (sub_1004DE5FC() & 1) == 0 || ((*(a1 + 16) ^ *(a2 + 16)))
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))))) & 1) != 0 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0 && *(a1 + 64) == *(a2 + 64))
  {
    v5 = *(a1 + 72);
    v6 = *(a2 + 72);
    if (v5 == 1)
    {
      if (v6 == 1)
      {
        return 1;
      }
    }

    else if (v6 != 1)
    {
      v8 = *(a1 + 80);
      v7 = *(a1 + 88);
      v10 = *(a2 + 80);
      v9 = *(a2 + 88);
      v11 = v9;
      v12 = v6;
      v13 = v10;
      LOBYTE(v9) = _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionV23__derived_struct_equalsySbAL_ALtFZ_0(v5, v8, v7, v6, v10, v9);

      if (v9)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

id sub_1003AC540(uint64_t a1)
{
  sub_1004D991C();
  __chkstk_darwin();
  v2 = sub_1004DE66C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004DE6DC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v21 - v10;
  v22 = *(a1 + 72);
  if (v22 == 1)
  {
    v17 = [objc_allocWithZone(UILabel) init];
    v18 = objc_opt_self();
    v14 = v17;
    v19 = [v18 clearColor];
    [v14 setBackgroundColor:v19];

    [v14 setNumberOfLines:1];
    [v14 setAdjustsFontForContentSizeCategory:1];
    [v14 _setWantsContentAwareTypesettingLanguage:1];
    sub_1002CD9FC(a1);
  }

  else
  {
    sub_1004DE6BC();
    sub_1004DE65C();
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v2);
    sub_1004DE67C();
    sub_1004D990C();
    sub_1004DE64C();
    v12 = [objc_opt_self() clearColor];
    v13 = sub_1004DE63C();
    sub_1004D98FC();
    v13(v23, 0);
    sub_100006F10(0, &qword_100644030, UIButton_ptr);
    (*(v7 + 16))(v9, v11, v6);
    v14 = sub_1004DE6EC();
    [v14 setContentHorizontalAlignment:4];
    v15 = [v14 titleLabel];
    if (v15)
    {
      v16 = v15;
      [v15 _setWantsContentAwareTypesettingLanguage:1];
    }

    sub_1002CD9FC(a1);
    (*(v7 + 8))(v11, v6);
  }

  return v14;
}

char *sub_1003AC910(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  v9 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v9 - 8) + 56))(&v4[v8], 1, 1, v9);
  v10 = &v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets];
  v11 = *&UIEdgeInsetsZero.bottom;
  *v10 = *&UIEdgeInsetsZero.top;
  *(v10 + 1) = v11;
  v12 = a2[1];
  *(v4 + 1) = *a2;
  *(v4 + 2) = v12;
  v13 = a2[5];
  *(v4 + 5) = a2[4];
  *(v4 + 6) = v13;
  v14 = a2[3];
  *(v4 + 3) = a2[2];
  *(v4 + 4) = v14;
  v15 = objc_allocWithZone(MarqueeView);
  sub_1002CD9A0(a2, v39);
  v16 = [v15 init];
  *&v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] = v16;
  sub_1002CD9A0(a2, v39);
  v17 = sub_1003AC540(a2);
  v18 = &v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind];
  *v18 = v17;
  v18[8] = v19 & 1;
  v20 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_1003A5ED8(a1, &v4[v20]);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
  [*&v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] setAnimationReferenceView:a3];
  memset(v39, 0, sizeof(v39));
  sub_1003A9E24(v39);
  sub_1003AA9E0();
  v22 = *v18;
  v23 = [v22 superview];
  v24 = *&v4[v21];
  v25 = [v24 contentView];
  v26 = v25;
  if (!v23)
  {
    if (!v25)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (!v25)
  {
    v26 = v23;
LABEL_8:

    goto LABEL_9;
  }

  sub_100006F10(0, &qword_100644F50, UIView_ptr);
  v27 = sub_1004DE5FC();

  if (v27)
  {
    goto LABEL_12;
  }

LABEL_9:
  result = [v24 contentView];
  if (result)
  {
    v29 = result;
    [result addSubview:v22];

    result = [v24 contentView];
    if (result)
    {
      v30 = result;
      [result bounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      [v22 setFrame:{v32, v34, v36, v38}];
      [v22 setAutoresizingMask:18];
      [v24 setViewForContentSize:v22];
LABEL_12:

      sub_10001074C(a1, &qword_100643D10, &qword_100531000);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1003ACC24()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_1003A5E70(v2, v0 + v1, type metadata accessor for NowPlaying.TrackMetadata);
  v3 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes);
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v22 = v6;
  *(&v22 + 1) = v8;
  LOBYTE(v23) = 0;
  BYTE8(v23) = 0;
  *&v24 = 0x4040000000000000;
  *(&v24 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v25 = leading;
  *(&v25 + 1) = bottom;
  *&v26 = trailing;
  v27 = 0uLL;
  *(&v26 + 1) = 1;
  v28[0] = v6;
  v28[1] = v8;
  v29 = 0;
  v30 = 0;
  v31 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v33 = leading;
  v34 = bottom;
  v35 = trailing;
  v37 = 0;
  v38 = 0;
  v36 = 1;
  sub_1002CD9A0(&v22, v45);
  sub_1002CD9FC(v28);
  v12 = v25;
  v4[2] = v24;
  v4[3] = v12;
  v13 = v27;
  v4[4] = v26;
  v4[5] = v13;
  v14 = v23;
  *v4 = v22;
  v4[1] = v14;
  v15 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes);
  v16 = [v5 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v17 = [v7 secondaryLabelColor];
  *&v39 = v16;
  *(&v39 + 1) = v17;
  LOBYTE(v40) = 0;
  BYTE8(v40) = 0;
  *&v41 = 0x4040000000000000;
  *(&v41 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v42 = leading;
  *(&v42 + 1) = bottom;
  *&v43 = trailing;
  v44 = 0uLL;
  *(&v43 + 1) = 1;
  v45[0] = v16;
  v45[1] = v17;
  v46 = 0;
  v47 = 0;
  v48 = 0x4040000000000000;
  v49 = NSDirectionalEdgeInsetsZero.top;
  v50 = leading;
  v51 = bottom;
  v52 = trailing;
  v54 = 0;
  v55 = 0;
  v53 = 1;
  sub_1002CD9A0(&v39, v21);
  sub_1002CD9FC(v45);
  v18 = v42;
  v15[2] = v41;
  v15[3] = v18;
  v19 = v44;
  v15[4] = v43;
  v15[5] = v19;
  v20 = v40;
  *v15 = v39;
  v15[1] = v20;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition) = 0;
  sub_1004DECCC();
  __break(1u);
}

void *sub_1003ACED8(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  if (a2)
  {
  }

  v6[5] = a2;

  for (i = 0; i != 2; ++i)
  {
    if (v6[i + 4])
    {

      sub_1004DD84C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004DD8BC();
      }

      sub_1004DD90C();
    }
  }

  sub_100004CB8(&qword_100644040, &unk_100531428);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

void *sub_1003ACFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  if (a2)
  {
  }

  else
  {
    a3 = 0;
  }

  v7[5] = a3;

  for (i = 0; i != 2; ++i)
  {
    if (v7[i + 4])
    {

      sub_1004DD84C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004DD8BC();
      }

      sub_1004DD90C();
    }
  }

  sub_100004CB8(&qword_100644040, &unk_100531428);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

char *_s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC17transitionContext2to9directionAF010TransitionK0VSgAC0F8MetadataV_AA5GlissO9DirectionOSgtF_0(uint64_t a1)
{
  v2 = v1;
  v102 = a1;
  v101 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v98 = *(v101 - 8);
  __chkstk_darwin();
  v89 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_100004CB8(&qword_100643D28, &qword_100531010);
  __chkstk_darwin();
  v94 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v85 - v5;
  __chkstk_darwin();
  v86 = &v85 - v6;
  sub_100004CB8(&qword_100643D10, &qword_100531000);
  __chkstk_darwin();
  v88 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v85 - v8;
  __chkstk_darwin();
  v85 = &v85 - v9;
  __chkstk_darwin();
  v11 = &v85 - v10;
  sub_100004CB8(&qword_100643D20, &qword_100531008);
  __chkstk_darwin();
  v13 = &v85 - v12;
  v14 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v95 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin();
  v19 = &v85 - v18;
  v20 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v21 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  v103 = &v85 - v18;
  if (v21)
  {
    v22 = *(*v21 + 208);

    v22(v23);
    v19 = v103;

    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      sub_1001DFB0C(v13, v19, type metadata accessor for NowPlaying.TrackMetadata);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14, v17);
  }

  v24 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_1003A5E70(&v2[v24], v19, type metadata accessor for NowPlaying.TrackMetadata);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_10001074C(v13, &qword_100643D20, &qword_100531008);
  }

LABEL_7:
  v25 = *&v2[v20];
  v26 = v102;
  v100 = v14;
  if (!v25 || (v27 = *(*v25 + 424), v28 = type metadata accessor for NowPlaying.TrackTitleStackView(0), v29 = sub_1003ADE4C(&qword_100643D18, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView), , v27(&v106, v2, v28, v29), v19 = v103, , !v106))
  {
    v30 = 0;
    v31 = 0;
    goto LABEL_13;
  }

  v31 = *(&v107 + 1);
  v30 = v107;
  sub_1003AC210(v107);

  sub_1003AC254(v30, v31);
  if (!v30)
  {
LABEL_13:
    v33 = v30;
    v30 = sub_1003A58EC();
    goto LABEL_14;
  }

  v32 = static NowPlaying.TrackMetadata.== infix(_:_:)();

  if (v32)
  {

    goto LABEL_13;
  }

  v33 = v30;
LABEL_14:
  sub_1003A5E70(v26 + *(v100 + 24), v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  (*(v98 + 7))(v11, 0, 1, v101);
  v34 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v35 = *(v34 + 3);
  v108 = *(v34 + 2);
  v109 = v35;
  v36 = *(v34 + 5);
  v110 = *(v34 + 4);
  v111 = v36;
  v37 = *(v34 + 1);
  v106 = *v34;
  v107 = v37;
  type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
  swift_allocObject();
  v38 = v2;
  sub_1002CD9A0(&v106, v105);
  v92 = sub_1003AC910(v11, &v106, v38);

  sub_1002CD9FC(&v106);
  v96 = v33;
  v97 = v31;
  v90 = v11;
  v93 = v30;
  if (!v33)
  {
    goto LABEL_28;
  }

  if (static NowPlaying.TrackMetadata.== infix(_:_:)())
  {

    goto LABEL_28;
  }

  v39 = *(v100 + 28);
  v40 = *(v99 + 48);
  v41 = v86;
  sub_1000108DC(v26 + v39, v86, &qword_100643D10, &qword_100531000);
  sub_1000108DC(&v19[v39], v41 + v40, &qword_100643D10, &qword_100531000);
  v42 = *(v98 + 6);
  v43 = v101;
  if (v42(v41, 1, v101) != 1)
  {
    v46 = v85;
    sub_1000108DC(v41, v85, &qword_100643D10, &qword_100531000);
    if (v42(v41 + v40, 1, v43) != 1)
    {
      v48 = v89;
      sub_1001DFB0C(v41 + v40, v89, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      v49 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
      sub_1001DFB74(v48, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      sub_1001DFB74(v46, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      sub_10001074C(v41, &qword_100643D10, &qword_100531000);
      v45 = v97;
      if (v49)
      {

        goto LABEL_27;
      }

LABEL_23:

      v98 = v45;
      v47 = v100;
      goto LABEL_37;
    }

    sub_1001DFB74(v46, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v45 = v97;
LABEL_22:
    sub_10001074C(v41, &qword_100643D28, &qword_100531010);
    goto LABEL_23;
  }

  v44 = v42(v41 + v40, 1, v43);
  v45 = v97;
  if (v44 != 1)
  {
    goto LABEL_22;
  }

  sub_10001074C(v41, &qword_100643D10, &qword_100531000);
LABEL_27:
  v26 = v102;
  v19 = v103;
LABEL_28:
  v47 = v100;
  v50 = *(v100 + 28);
  v51 = v19;
  v52 = *(v99 + 48);
  v53 = v26 + v50;
  v54 = v91;
  sub_1000108DC(v53, v91, &qword_100643D10, &qword_100531000);
  v55 = &v51[v50];
  v56 = v54;
  sub_1000108DC(v55, v54 + v52, &qword_100643D10, &qword_100531000);
  v42 = *(v98 + 6);
  v57 = v101;
  if (v42(v56, 1, v101) == 1)
  {
    if (v42(v56 + v52, 1, v57) == 1)
    {
      sub_10001074C(v56, &qword_100643D10, &qword_100531000);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v58 = v87;
  sub_1000108DC(v56, v87, &qword_100643D10, &qword_100531000);
  if (v42(v56 + v52, 1, v57) == 1)
  {
    sub_1001DFB74(v58, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v47 = v100;
LABEL_33:
    sub_10001074C(v56, &qword_100643D28, &qword_100531010);
LABEL_36:
    v98 = sub_1003A5C74();
    goto LABEL_37;
  }

  v59 = v56 + v52;
  v60 = v89;
  sub_1001DFB0C(v59, v89, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v61 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  sub_1001DFB74(v60, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1001DFB74(v58, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_10001074C(v56, &qword_100643D10, &qword_100531000);
  v47 = v100;
  if ((v61 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_35:
  if (static NowPlaying.TrackMetadata.== infix(_:_:)())
  {
    goto LABEL_36;
  }

  v98 = 0;
LABEL_37:
  v62 = *(v47 + 28);
  v63 = *(v99 + 48);
  v64 = v94;
  sub_1000108DC(v102 + v62, v94, &qword_100643D10, &qword_100531000);
  sub_1000108DC(&v103[v62], v64 + v63, &qword_100643D10, &qword_100531000);
  v65 = v101;
  if (v42(v64, 1, v101) == 1)
  {
    v66 = v42(v64 + v63, 1, v65);
    v67 = v102;
    if (v66 == 1)
    {
      sub_10001074C(v64, &qword_100643D10, &qword_100531000);
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v68 = v88;
  sub_1000108DC(v64, v88, &qword_100643D10, &qword_100531000);
  if (v42(v64 + v63, 1, v65) == 1)
  {
    sub_1001DFB74(v68, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v67 = v102;
LABEL_42:
    sub_10001074C(v64, &qword_100643D28, &qword_100531010);
LABEL_43:
    v69 = v90;
    sub_1000108DC(v67 + v62, v90, &qword_100643D10, &qword_100531000);
    v70 = &v38[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v71 = *(v70 + 2);
    v72 = *(v70 + 3);
    v73 = *(v70 + 5);
    v105[4] = *(v70 + 4);
    v105[5] = v73;
    v105[3] = v72;
    v74 = *(v70 + 1);
    v105[0] = *v70;
    v105[1] = v74;
    v105[2] = v71;
    swift_allocObject();
    v75 = v38;
    sub_1002CD9A0(v105, &v104);
    sub_1003AC910(v69, v105, v75);

    sub_1002CD9FC(v105);
    goto LABEL_45;
  }

  v76 = v64 + v63;
  v77 = v89;
  sub_1001DFB0C(v76, v89, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v78 = v64;
  v79 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  sub_1001DFB74(v77, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1001DFB74(v68, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_10001074C(v78, &qword_100643D10, &qword_100531000);
  v67 = v102;
  if ((v79 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_45:
  v80 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  v81 = &v38[v80];
  v82 = v95;
  sub_1003A5E70(v81, v95, type metadata accessor for NowPlaying.TrackMetadata);
  v83 = static NowPlaying.TrackMetadata.== infix(_:_:)();
  sub_1003AC254(v96, v97);
  sub_1001DFB74(v82, type metadata accessor for NowPlaying.TrackMetadata);
  sub_1001DFB74(v103, type metadata accessor for NowPlaying.TrackMetadata);
  if (v83)
  {
  }

  return v93;
}

uint64_t sub_1003ADE4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1003ADE94(id result, void *a2, void *a3)
{
  if (result != 1)
  {
    v4 = result;
    v5 = a3;
    v6 = v4;

    return a2;
  }

  return result;
}

uint64_t sub_1003ADF30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  return sub_1003A5E70(v3 + v4, a2, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t sub_1003ADFAC(uint64_t a1)
{
  result = type metadata accessor for NowPlaying.TrackMetadata(319);
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

uint64_t sub_1003AE064(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1003AE0B4(uint64_t a1)
{
  sub_1003AE170(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003AE170(uint64_t a1)
{
  if (!qword_100643E10)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(255);
    v1 = sub_1004DE7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_100643E10);
    }
  }
}

uint64_t sub_1003AE1C8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

__n128 sub_1003AE1EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1003AE208(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1003AE250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003AE2B8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1003AE30C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1003AE37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1003AE3B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1003AE3EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 152))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003AE40C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 152) = v3;
  return result;
}

uint64_t sub_1003AE4A8()
{
  v1 = *(v0 + 88);
  if (v1 != 1)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1003AE510()
{
  result = qword_100644018;
  if (!qword_100644018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644018);
  }

  return result;
}

unint64_t sub_1003AE564()
{
  result = qword_100644020;
  if (!qword_100644020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644020);
  }

  return result;
}

double sub_1003AE5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    return sub_1003AC210(a3);
  }

  return result;
}

double sub_1003AE618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    return sub_1003AC254(a3, a4);
  }

  return result;
}

id PassthroughView.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  if (UIViewIgnoresTouchEvents())
  {
    return 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for PassthroughView();
  v7 = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    sub_10039162C();
    v8 = v7;
    v9 = v3;
    v10 = sub_1004DE5FC();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

id PassthroughView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id PassthroughView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PassthroughView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id PassthroughView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *SymbolButton.__allocating_init(intent:)(uint64_t a1)
{
  v1 = a1;
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v3 = (&v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003AEB30(v1, 2, v3);
  v4 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v5 = sub_1003DBAE0(v3, 0, 0);
  v6 = &v5[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = sub_1003AEE2C;
  v6[1] = 0;
  v9 = v5;
  sub_10000DE74(v7, v8);
  if (v1)
  {
    if (v1 == 1)
    {
      v10 = AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor();
    }

    else
    {
      v10 = AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v10 = AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor();
  }

  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v11, v12, v15, v13, v14);

  return v9;
}

uint64_t sub_1003AEB30@<X0>(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v27 = a2;
  v4 = sub_1004D98EC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (type metadata accessor for SymbolButton.Configuration(0) - 8);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003DBA90(v28);
  v11 = v28[5];
  *(a3 + 64) = v28[4];
  *(a3 + 80) = v11;
  *(a3 + 96) = v28[6];
  v12 = v29;
  v13 = v28[1];
  *a3 = v28[0];
  *(a3 + 16) = v13;
  v14 = v28[3];
  *(a3 + 32) = v28[2];
  *(a3 + 48) = v14;
  *(a3 + 112) = v12;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = UIFontTextStyleSubheadline;
  *(a3 + 144) = UIFontWeightSemibold;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0x3FF0000000000000;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = 1;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 232) = 1;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  v15 = v8[11];
  v16 = sub_1004DE53C();
  (*(*(v16 - 8) + 56))(a3 + v15, 1, 1, v16);
  v17 = a3 + v8[12];
  *(v17 + 48) = 0;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *v17 = 0u;
  v18 = (a3 + v8[13]);
  *v18 = 0;
  v18[1] = 0;
  v18[2] = 1;
  *(a3 + v8[14]) = 0x4010000000000000;
  *(a3 + v8[15]) = vdupq_n_s64(0x4040000000000000uLL);
  v19 = a3 + v8[16];
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v20 = (a3 + v8[17]);
  v21 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v20 = *&NSDirectionalEdgeInsetsZero.top;
  v20[1] = v21;
  v22 = a3 + v8[18];
  *v22 = 1;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(a3 + v8[19]) = 0x3FF0000000000000;
  *(a3 + v8[20]) = 0;
  *(a3 + v8[21]) = 2;
  v23 = UIFontTextStyleSubheadline;
  SymbolButton.Configuration.init()(v10);
  sub_1003AFD20(v10, v26, v27);
  sub_1003B40BC(a3, type metadata accessor for SymbolButton.Configuration);
  sub_1003B4058(v10, a3);
  v24 = [objc_opt_self() currentTraitCollection];
  sub_1004D98CC();
  sub_1003AEE50();
  return (*(v5 + 8))(v7, v4);
}

void sub_1003AEE50()
{
  v1 = v0;
  v2 = sub_1004D98DC();
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 6)
  {
    if (*(v0 + 232) == 1 || (v4 = *(v0 + 256), v4 == 2))
    {
      if (sub_1004D98AC() & 1) != 0 || (sub_1004D988C())
      {
        if (qword_10063D820 != -1)
        {
          swift_once();
        }

        v5 = static UIColor.MusicTint.pressed;
        v6 = *(v1 + 112);
        v7 = static UIColor.MusicTint.pressed;

        *(v1 + 112) = v5;
        *(v1 + 176) = v5;
      }

      else
      {

        *(v0 + 112) = 0;
        *(v0 + 176) = 0;
      }
    }

    else
    {
      v8 = objc_opt_self();
      if (v4)
      {
        v9 = v8;
        v10 = [v8 blackColor];

        *(v0 + 112) = v10;
        v11 = [v9 blackColor];

        *(v0 + 176) = v11;
        [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.05];
        UIView.Border.init(thickness:color:)();
        v13 = v12;
        v15 = v14;
        v17 = v16 & 1;

        *(v0 + 280) = v13;
        *(v0 + 288) = v17;
        *(v0 + 296) = v15;
        LOBYTE(v13) = sub_1004D98AC();
        sub_1002EB3A0();
        v18 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(19, 19, 20, 1.0);
        if (v13)
        {
          v19 = 0x3FD5C28F5C28F5C3;
        }

        else
        {
          v19 = 0x3FD3333333333333;
        }

        sub_1002E009C(*(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224));
        *(v1 + 200) = v19;
        *(v1 + 208) = v18;
      }

      else
      {
        v20 = v8;
        v21 = [v8 whiteColor];

        *(v0 + 112) = v21;
        v22 = [v20 whiteColor];

        *(v0 + 176) = v22;
        [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.05];
        UIView.Border.init(thickness:color:)();
        v24 = v23;
        v26 = v25;
        v28 = v27 & 1;

        *(v0 + 280) = v24;
        *(v0 + 288) = v28;
        *(v0 + 296) = v26;
        v29 = sub_1004D98AC();
        v30 = [v20 whiteColor];
        if (v29)
        {
          v31 = 0x3FD0A3D70A3D70A4;
        }

        else
        {
          v31 = 0x3FCC28F5C28F5C29;
        }

        sub_1002E009C(*(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224));
        *(v1 + 200) = v31;
        *(v1 + 208) = v30;
      }

      *(v1 + 216) = 0;
      *(v1 + 224) = 0;
    }
  }
}

uint64_t SymbolButton.Intent.accessibilityIdentifier.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor();
    }

    else
    {
      v1 = AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v1 = AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor();
  }

  v2 = *v1;

  return v2;
}

void SymbolButton.update(to:)(unsigned int a1)
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = (&v16 - v5);
  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003B2848(v1 + v7, v4);
  if (*(v4 + 29) == 1)
  {
    sub_1003B40BC(v4, type metadata accessor for SymbolButton.Configuration);
    v8 = 2;
  }

  else
  {
    v9 = v4[256];
    sub_1003B40BC(v4, type metadata accessor for SymbolButton.Configuration);
    if (v9 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = (v9 & 1) == 0;
    }
  }

  sub_1003AEB30(a1, v8, v6);
  SymbolButton.setConfiguration(_:animation:updates:)(v6, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_1003B40BC(v6, type metadata accessor for SymbolButton.Configuration);
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor();
    }

    else
    {
      v10 = AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v10 = AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor();
  }

  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];

  type metadata accessor for SymbolButton(0);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v11, v12, v15, v13, v14);
}

uint64_t SymbolButton.materialColor.getter()
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003B2848(v0 + v3, v2);
  if (*(v2 + 29) == 1)
  {
    sub_1003B40BC(v2, type metadata accessor for SymbolButton.Configuration);
    return 2;
  }

  else
  {
    v5 = v2[256];
    sub_1003B40BC(v2, type metadata accessor for SymbolButton.Configuration);
    if (v5 == 2)
    {
      return 2;
    }

    else
    {
      return (v5 & 1) == 0;
    }
  }
}

void SymbolButton.materialColor.setter(char a1)
{
  sub_100004CB8(&qword_100644070, &unk_100531450);
  __chkstk_darwin();
  v4 = &v19 - v3;
  v5 = type metadata accessor for SymbolButton.Configuration(0);
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [v1 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (v11 != 6)
  {
    if (a1 == 2)
    {
      v19 = 0;
      v20 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 1;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 2;
      v25 = 0;
      v26 = 0;
      sub_1003AFBFC(&v21, a1 & 1);
      v15 = v21;
      v19 = v23;
      v20 = v22;
      v12 = v24;
      v13 = v25;
      v14 = v26;
    }

    v16 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_1003B2848(v1 + v16, v9);
    sub_1003B28AC(v9[29], v9[30], v9[31]);
    v17 = v19;
    v18 = v20;
    v9[29] = v15;
    v9[30] = v18;
    v9[31] = v17;
    v9[32] = v12;
    v9[33] = v13;
    v9[34] = v14;
    SymbolButton.setConfiguration(_:animation:updates:)(v9, 0, 0, 0, 1, _swiftEmptyArrayStorage);
    sub_1003B40BC(v9, type metadata accessor for SymbolButton.Configuration);
    (*(v6 + 56))(v4, 1, 1, v5);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v4, 0, 0, 0, 1);
    sub_10001074C(v4, &qword_100644070, &unk_100531450);
  }
}

void (*SymbolButton.materialColor.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  v5 = *(*(type metadata accessor for SymbolButton.Configuration(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 32) = v6;
  v8 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003B2848(v1 + v8, v7);
  if (*(v7 + 232) == 1)
  {
    sub_1003B40BC(v7, type metadata accessor for SymbolButton.Configuration);
    v9 = 2;
  }

  else
  {
    v10 = *(v7 + 256);
    sub_1003B40BC(v7, type metadata accessor for SymbolButton.Configuration);
    if (v10 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = (v10 & 1) == 0;
    }
  }

  *(v4 + 40) = v9;
  return sub_1003AF840;
}

void sub_1003AF840(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  SymbolButton.materialColor.setter(*(*a1 + 40));
  free(v2);

  free(v1);
}

uint64_t SymbolButton.Intent.title.getter(char a1)
{
  sub_1004D83FC();
  __chkstk_darwin();
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_1004DD37C();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v7 = qword_1006734A0;
  sub_1004D838C();
  v8 = sub_1004DD4AC();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t SymbolButton.Intent.symbolName.getter(char a1)
{
  if (!a1)
  {
    return 0x6C69662E79616C70;
  }

  if (a1 == 1)
  {
    return 0x656C6666756873;
  }

  return 0x69732E656C707061;
}

unint64_t SymbolButton.Intent.id.getter(char a1)
{
  result = 0xD000000000000015;
  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return result;
}

uint64_t SymbolButton.Intent.actionDetailsPlayType.getter(char a1)
{
  if (a1 == 1)
  {
    return 0x41656C6666756873;
  }

  else
  {
    return 7105633;
  }
}

uint64_t SymbolButton.Intent.actionType.getter(char a1)
{
  if ((a1 & 0xFE) != 0)
  {
    return 64;
  }

  else
  {
    return 31;
  }
}

unint64_t sub_1003AFBC8@<X0>(unint64_t *a1@<X8>)
{
  result = SymbolButton.Intent.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1003AFBFC(uint64_t a1, char a2)
{
  *(a1 + 24) = (a2 & 1) == 0;
  v3 = [objc_opt_self() effectWithBlurRadius:50.0];

  *a1 = v3;
  v4 = [objc_opt_self() colorEffectSaturate:1.6];

  *(a1 + 8) = v4;
  sub_1004DEAAC(19);

  v5._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v5);

  *(a1 + 32) = 0xD000000000000011;
  *(a1 + 40) = 0x80000001004F7AC0;
}

double sub_1003AFD20(uint64_t a1, char a2, int a3)
{
  v37 = a3;
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v6 = &v36 - v5;
  sub_1003DBA90(&v47);
  v55 = v47;
  v7 = v48;
  v8 = v51;
  sub_10001074C(&v55, &qword_100644AB0, &qword_100531B80);
  v9 = a2;
  v10 = *&aPlayFilshuffle[8 * a2];
  v11 = *&aAppleSil[8 * a2 + 8];
  v54 = v49;
  v12 = UIFontTextStyleSubheadline;
  sub_1003B40BC(&v54, type metadata accessor for TextStyle);
  v13 = *(a1 + 80);
  v44[4] = *(a1 + 64);
  v44[5] = v13;
  v44[6] = *(a1 + 96);
  v45 = *(a1 + 112);
  v14 = *(a1 + 16);
  v44[0] = *a1;
  v44[1] = v14;
  v15 = *(a1 + 48);
  v44[2] = *(a1 + 32);
  v44[3] = v15;
  sub_1003B411C(v44);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v7;
  *(a1 + 24) = v12;
  *(a1 + 32) = v50;
  *(a1 + 48) = 6;
  *(a1 + 56) = v8;
  *(a1 + 64) = xmmword_1005272A0;
  *(a1 + 80) = 1;
  *(a1 + 81) = v52;
  *(a1 + 97) = *v53;
  *(a1 + 112) = *&v53[15];
  v16 = SymbolButton.Intent.title.getter(a2);
  v18 = v17;

  v19 = UIFontTextStyleBody;

  v20 = *(a1 + 136);
  v21 = *(a1 + 168);
  v46[2] = *(a1 + 152);
  v46[3] = v21;
  v46[4] = *(a1 + 184);
  v46[0] = *(a1 + 120);
  v46[1] = v20;
  sub_1003B4170(v46);
  *(a1 + 120) = v16;
  *(a1 + 128) = v18;
  *(a1 + 136) = v19;
  *(a1 + 144) = UIFontWeightSemibold;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3FF0000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v22 = [objc_opt_self() currentTraitCollection];
  v23 = [v22 userInterfaceIdiom];

  if (v23 != 6)
  {
    if (v37 == 2)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 1;
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 2;
      v42 = 0;
      v43 = 0;
      sub_1003AFBFC(&v38, v37 & 1);
      v29 = v38;
      v24 = v39;
      v25 = v40;
      v26 = v41;
      v27 = v42;
      v28 = v43;
    }

    sub_1003B28AC(*(a1 + 232), *(a1 + 240), *(a1 + 248));
    *(a1 + 232) = v29;
    *(a1 + 240) = v24;
    *(a1 + 248) = v25;
    *(a1 + 256) = v26;
    *(a1 + 264) = v27;
    *(a1 + 272) = v28;
  }

  if (qword_10063DB40 != -1)
  {
    swift_once();
  }

  v30 = sub_1004DE53C();
  v31 = sub_100035430(v30, static UIView.Corner.capsule);
  v32 = *(v30 - 8);
  (*(v32 + 16))(v6, v31, v30);
  (*(v32 + 56))(v6, 0, 1, v30);
  v33 = type metadata accessor for SymbolButton.Configuration(0);
  sub_1002DFFEC(v6, a1 + v33[9]);
  *(a1 + v33[12]) = qword_100531BD8[v9];
  *(a1 + v33[13]) = vdupq_n_s64(0x4048000000000000uLL);
  v34 = (a1 + v33[15]);
  result = 0.0;
  *v34 = xmmword_1005272B0;
  v34[1] = xmmword_1005272B0;
  return result;
}

Swift::Int static PlayIntentButtonStack.playShuffle(_:)()
{
  v0 = sub_1002E8A24(&off_1005EBA20);

  return v0;
}

Swift::Int static PlayIntentButtonStack.sing(_:)()
{
  v0 = sub_1002E8A24(&off_1005EBA48);

  return v0;
}

Swift::Int PlayIntentButtonStack.init(_:handler:)(char a1)
{
  sub_100004CB8(&qword_100643128, &qword_1005304C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511DA0;
  *(inited + 32) = a1;
  v3 = sub_1002E8A24(inited);
  swift_setDeallocating();
  return v3;
}

uint64_t PlayIntentButtonStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = sub_1004DAEDC();
  v10 = sub_1004DAEEC();
  sub_1004DAEEC();
  if (sub_1004DAEEC() != v9)
  {
    v10 = sub_1004DAEEC();
  }

  *a4 = v10;
  v11 = sub_100004CB8(&qword_100644078, &qword_100531460);
  return sub_1003B02E8(a1, a2, a3, &a4[*(v11 + 44)]);
}

uint64_t sub_1003B02E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_100004CB8(&qword_100644110, &qword_100531B38);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v22 - v12;
  __chkstk_darwin();
  v15 = &v22 - v14;
  __chkstk_darwin();
  v17 = &v22 - v16;
  sub_1003B0520(0, a1, a2, a3, &v22 - v16);
  sub_1003B0520(1, a1, a2, a3, v15);
  v18 = *(v9 + 16);
  v18(v13, v17, v8);
  v18(v11, v15, v8);
  v18(a4, v13, v8);
  v19 = sub_100004CB8(&qword_100644118, &qword_100531B40);
  v18(&a4[*(v19 + 48)], v11, v8);
  v20 = *(v9 + 8);
  v20(v15, v8);
  v20(v17, v8);
  v20(v11, v8);
  return (v20)(v13, v8);
}

void sub_1003B0520(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a5;
  v51 = sub_100004CB8(&qword_10063FD20, &qword_10052BF38);
  __chkstk_darwin();
  v50 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v48 = &v43[-v10];
  v11 = sub_1004DA25C();
  v57 = *(v11 - 8);
  __chkstk_darwin();
  v56 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v55 = &v43[-v13];
  v49 = sub_100004CB8(&qword_10063FD28, &qword_10052BF40);
  __chkstk_darwin();
  v47 = &v43[-v14];
  v53 = sub_100004CB8(&qword_100644120, &qword_100531B48);
  __chkstk_darwin();
  v16 = &v43[-v15];
  v17 = sub_100004CB8(&qword_100644128, &qword_100531B50);
  __chkstk_darwin();
  v19 = &v43[-v18];
  v54 = v16;
  *v16 = 0x4030000000000000;
  v20 = *(a2 + 16);
  v58 = v21;
  v59 = &v43[-v18];
  if (v20)
  {
    v44 = a1;
    v45 = a3;
    v46 = a4;
    v22 = sub_1003B1CD4(v20, 0);
    v23 = sub_1003B274C(&v60, v22 + 32, v20, a2);
    v24 = a2;
    v25 = v60;
    v26 = v24;

    sub_100010458(v25);
    if (v23 != v20)
    {
      goto LABEL_8;
    }

    v17 = v58;
    v19 = v59;
    a2 = v26;
    a3 = v45;
    a4 = v46;
    LOBYTE(a1) = v44;
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  v60 = v22;
  sub_1003B1D48(&v60);
  v27 = swift_allocObject();
  *(v27 + 16) = a1 & 1;
  *(v27 + 24) = a2;
  *(v27 + 32) = a3;
  *(v27 + 40) = a4;

  sub_100004CB8(&qword_100644130, &qword_100531B58);
  sub_100042B08(&qword_100644138, &qword_100644130, &qword_100531B58, &protocol conformance descriptor for [A]);
  sub_1003B3864();
  sub_1003B3DF4();
  v28 = v54;
  sub_1004DBC2C();
  v29 = *(a2 + 16) < 2uLL;
  sub_100047F38(v28, v19, &qword_100644120, &qword_100531B48);
  v30 = &v19[*(v17 + 36)];
  *v30 = v29;
  v30[1] = 1;
  v31 = v57;
  v32 = *(v57 + 104);
  v33 = v55;
  v32(v55, enum case for DynamicTypeSize.xSmall(_:), v11);
  v34 = v56;
  v32(v56, enum case for DynamicTypeSize.accessibility2(_:), v11);
  sub_1003B3E48(&qword_10063E998, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if (sub_1004DD33C())
  {
    v35 = *(v31 + 32);
    v36 = v48;
    v35(v48, v33, v11);
    v37 = v51;
    v35((v36 + *(v51 + 48)), v34, v11);
    v38 = v50;
    sub_1000108DC(v36, v50, &qword_10063FD20, &qword_10052BF38);
    v39 = *(v37 + 48);
    v40 = v47;
    v35(v47, v38, v11);
    v41 = *(v31 + 8);
    v41(&v38[v39], v11);
    sub_100047F38(v36, v38, &qword_10063FD20, &qword_10052BF38);
    v35((v40 + *(v49 + 36)), &v38[*(v37 + 48)], v11);
    v41(v38, v11);
    sub_1003B3E90();
    sub_100042B08(&qword_10063FE48, &qword_10063FD28, &qword_10052BF40, &protocol conformance descriptor for ClosedRange<A>);
    v42 = v59;
    sub_1004DB4AC();
    sub_10001074C(v40, &qword_10063FD28, &qword_10052BF40);
    sub_10001074C(v42, &qword_100644128, &qword_100531B50);
    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);

  __break(1u);
}

uint64_t PlayIntentButtonWrapper.init(intent:iconOnly:handler:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = swift_getKeyPath();
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 24) = result;
  *(a5 + 32) = 0;
  return result;
}

uint64_t sub_1003B0C08(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, double *a6, double a7)
{
  v41 = a6;
  v40 = a4;
  v39 = a3;
  v38 = a2;
  v37[1] = a1;
  v9 = sub_1004DA04C();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DA11C();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100004CB8(&qword_1006440F0, &qword_100531B30) - 8;
  v18 = __chkstk_darwin();
  v20 = v37 - v19;
  v21 = *(v14 + 16);
  v42 = a5;
  v21(v16, a5, v13, v18);
  sub_1003B3E48(&qword_100644100, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_1004DD6FC();
  v22 = *(v17 + 44);
  sub_1003B3E48(&qword_1006440F8, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_1004DDD3C();
  v23 = 0.0;
  v24 = 0.0;
  if (*&v20[v22] != v44[0])
  {
    v25 = (v10 + 16);
    v26 = (v10 + 8);
    do
    {
      v27 = sub_1004DDE1C();
      (*v25)(v12);
      v27(v44, 0);
      sub_1004DDD4C();
      sub_1004DA40C();
      LOBYTE(v44[0]) = v28 & 1;
      LOBYTE(v43) = v29 & 1;
      sub_1004DA02C();
      v31 = v30;
      v33 = v32;
      (*v26)(v12, v9);
      if (v24 <= v31)
      {
        v24 = v31;
      }

      if (v23 <= v33)
      {
        v23 = v33;
      }

      sub_1004DDD3C();
    }

    while (*&v20[v22] != v44[0]);
  }

  sub_10001074C(v20, &qword_1006440F0, &qword_100531B30);
  sub_1004DDCFC();
  sub_1004DDD3C();
  v34 = sub_1004DDD2C();
  sub_1004DDCFC();
  sub_1004DDD3C();
  result = sub_1004DDD2C();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v36 = v41;
    *v41 = v24;
    v36[1] = v24 * v34 + (result - 1) * a7;
  }

  return result;
}

void (*sub_1003B1138(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1004D9C1C();
  return sub_1002D2FCC;
}

uint64_t sub_1003B11C0@<X0>(_BYTE *a1@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = sub_1004DAEDC();
  v8 = sub_1004DAEEC();
  sub_1004DAEEC();
  if (sub_1004DAEEC() != v7)
  {
    v8 = sub_1004DAEEC();
  }

  *a1 = v8;
  v9 = sub_100004CB8(&qword_100644078, &qword_100531460);
  return sub_1003B02E8(v4, v5, v6, &a1[*(v9 + 44)]);
}

uint64_t EnvironmentValues.playIntentButtonMaterial.getter()
{
  sub_1003B29A4();
  sub_1004DA75C();
  return v1;
}

uint64_t sub_1003B12A4@<X0>(_BYTE *a1@<X8>)
{
  sub_1003B29A4();
  result = sub_1004DA75C();
  *a1 = v3;
  return result;
}

char *PlayIntentButtonWrapper.makeUIView(context:)()
{
  type metadata accessor for SymbolButton(0);
  v1 = SymbolButton.__allocating_init(intent:)(*v0);
  PlayIntentButtonWrapper.updateUIView(_:context:)(v1);
  return v1;
}

uint64_t PlayIntentButtonWrapper.updateUIView(_:context:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1004DA74C();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SymbolButton.update(to:)(*v2);
  v25 = v2[32];
  v10 = *(v2 + 3);
  v24 = v10;
  if (v25 != 1)
  {

    v11 = sub_1004DDF8C();
    v12 = sub_1004DAECC();
    sub_1004D953C(v11, &_mh_execute_header, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_1004DA73C();
    swift_getAtKeyPath();
    sub_10001074C(&v24, &qword_100644088, &unk_100531490);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v10) = v23[40];
  }

  SymbolButton.materialColor.setter(v10);
  v13 = v2[1];
  v14 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003B2848(a1 + v14, v5);
  v5[184] = v13;
  SymbolButton.setConfiguration(_:animation:updates:)(v5, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_1003B40BC(v5, type metadata accessor for SymbolButton.Configuration);
  sub_1003B2848(a1 + v14, v5);
  *(v5 + 24) = 1;
  SymbolButton.setConfiguration(_:animation:updates:)(v5, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_1003B40BC(v5, type metadata accessor for SymbolButton.Configuration);
  v15 = *(v2 + 1);
  v16 = *(v2 + 2);
  v17 = swift_allocObject();
  v18 = *(v2 + 1);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v18;
  *(v17 + 48) = v2[32];
  v19 = (a1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler);
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  *v19 = sub_1003B2A44;
  v19[1] = v17;
  sub_1000108DC(&v24, v23, &qword_100644088, &unk_100531490);
  sub_10000DE64(v15, v16);
  return sub_10000DE74(v20, v21);
}

double PlayIntentButtonWrapper.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, int a3, int a4, id a5)
{
  [a5 intrinsicContentSize];
  if ((a2 & 1) == 0)
  {
    if (result > *&a1)
    {
      v8 = result;
    }

    else
    {
      v8 = *&a1;
    }

    if (*&a1 != INFINITY)
    {
      return v8;
    }
  }

  return result;
}

char *sub_1003B176C()
{
  v3 = *v0;
  type metadata accessor for SymbolButton(0);
  v1 = SymbolButton.__allocating_init(intent:)(v3);
  PlayIntentButtonWrapper.updateUIView(_:context:)(v1);
  return v1;
}

uint64_t sub_1003B17C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003B3CF0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003B182C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003B3CF0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003B1890(uint64_t a1)
{
  sub_1003B3CF0();
  sub_1004DAA7C();
  __break(1u);
}

double View.playIntentButtonMaterial(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1004DB40C();

  return result;
}

uint64_t sub_1003B192C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003B3C6C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.playIntentButtonMaterial.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1003B29A4();
  sub_1004DA75C();
  return sub_1003B19F0;
}

uint64_t static PlayIntentLayoutHelper.Configuration.with(_:)(void (*a1)(unsigned __int16 *))
{
  v2 = 513;
  v3 = 0x4030000000000000;
  a1(&v2);
  return v2;
}

uint64_t PlayIntentLayoutHelper.configuration.setter(uint64_t result, double a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

char *PlayIntentLayoutHelper.init()()
{
  type metadata accessor for SymbolButton(0);
  v0 = SymbolButton.__allocating_init(intent:)(0);
  SymbolButton.__allocating_init(intent:)(1);
  return v0;
}

uint64_t PlayIntentLayoutHelper.layout(in:rect:)(void *a1, double *a2, void *a3, void *a4, uint64_t a5, double a6)
{
  v7 = a5;
  sub_100004CB8(&qword_100642970, &qword_100529AD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511A20;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  v13 = a3;
  v14 = a4;
  _s11MusicCoreUI22PlayIntentLayoutHelperV6layout_2in4rect13configurationySayAA12SymbolButtonCG_So6UIViewCSo6CGRectVSgAC13ConfigurationVtFZ_0(inited, a1, a2, v7, a6);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t PlaybackIntentDescriptor.configure(for:)(unsigned __int8 a1)
{
  v2 = a1;
  v3 = PlaybackIntentDescriptor.intent.getter();
  [v3 setShuffleMode:v2 == 1];
  [v3 setRepeatMode:0];

  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 36)) = v2 == 2;
  return result;
}

id MPCPlaybackIntent.configure(for:)(char a1)
{
  [v1 setShuffleMode:a1 == 1];

  return [v1 setRepeatMode:0];
}

void *sub_1003B1CD4(uint64_t a1, uint64_t a2)
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

  sub_100004CB8(&qword_100643128, &qword_1005304C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_1003B1D48(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10038F27C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_1004DEF7C(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1004DD8EC();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1003B1E80(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_1003B1E80(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_1003B2634(v9);
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_1003B23BC((*a3 + *v79), (*a3 + *v81), (*a3 + v82), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1003B2648(0, *(v9 + 2) + 1, 1, v9);
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v9 = sub_1003B2648((v30 > 1), v31 + 1, 1, v9);
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_1003B23BC((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), (*a3 + v75), v34);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1003B2634(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        sub_1003B25A8(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_1003B23BC(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_1003B25A8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1003B2634(v3);
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

char *sub_1003B2648(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100644178, &unk_100531B70);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1003B274C(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1003B2848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1003B28AC(void *a1, void *a2, void *a3)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_1003B2908@<X0>(_BYTE *a1@<X8>)
{
  sub_1003B29A4();
  result = sub_1004DA75C();
  *a1 = v3;
  return result;
}

unint64_t sub_1003B29A4()
{
  result = qword_100644080;
  if (!qword_100644080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644080);
  }

  return result;
}

uint64_t sub_1003B29F8()
{
  if (*(v0 + 24))
  {
  }

  sub_10036E0E0(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1003B2A44()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1(*(v0 + 16));
  }

  return result;
}

uint64_t sub_1003B2A7C(uint64_t a1, double *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v39 = sub_1004DA1EC();
  v36 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004DA04C();
  v35 = *(v15 - 8);
  __chkstk_darwin();
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004DA11C();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100004CB8(&qword_1006440F0, &qword_100531B30) - 8;
  __chkstk_darwin();
  v24 = &v35 - v23;
  v43.origin.x = a3;
  v43.origin.y = a4;
  v43.size.width = a5;
  v43.size.height = a6;
  CGRectGetWidth(v43);
  v40 = a2;
  sub_1003B3E48(&qword_1006440F8, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_1004DDCFC();
  sub_1004DDD3C();
  v37 = sub_1004DDD2C();
  (*(v19 + 16))(v21, a1, v18);
  sub_1003B3E48(&qword_100644100, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_1004DD6FC();
  v25 = *(v22 + 44);
  sub_1004DDD3C();
  if (*&v24[v25] != v41[0])
  {
    ++v36;
    v37 = (v35 + 2);
    ++v35;
    v26 = a3;
    do
    {
      v27 = sub_1004DDE1C();
      (*v37)(v17);
      v27(v41, 0);
      sub_1004DDD4C();
      v44.origin.x = a3;
      v44.origin.y = a4;
      v44.size.width = a5;
      v44.size.height = a6;
      CGRectGetHeight(v44);
      sub_1004DBE2C();
      LOBYTE(v41[0]) = 0;
      v42 = 0;
      sub_1004DA03C();
      LOBYTE(v41[0]) = 0;
      v42 = 0;
      v28 = v18;
      v29 = v15;
      v30 = v38;
      sub_1004DA01C();
      sub_1004DA1DC();
      v32 = v31;
      v33 = v30;
      v15 = v29;
      v18 = v28;
      (*v36)(v33, v39);
      (*v35)(v17, v15);
      v26 = v26 + v32 + a7;
      sub_1004DDD3C();
    }

    while (*&v24[v25] != v41[0]);
  }

  return sub_10001074C(v24, &qword_1006440F0, &qword_100531B30);
}

void _s11MusicCoreUI22PlayIntentLayoutHelperV6layout_2in4rect13configurationySayAA12SymbolButtonCG_So6UIViewCSo6CGRectVSgAC13ConfigurationVtFZ_0(unint64_t a1, void *a2, double *a3, int a4, double a5)
{
  v76 = a5;
  LODWORD(v74) = a4;
  v5 = a3;
  v81 = a2;
  v8 = *a3;
  v7 = a3[1];
  v10 = a3[2];
  v9 = a3[3];
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004DED5C())
  {
    v14 = 0;
    v15 = a1 & 0xFFFFFFFFFFFFFF8;
    v79 = *&v5;
    v80 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = sub_1004DEB2C();
      }

      else
      {
        if (v14 >= *(v15 + 16))
        {
          goto LABEL_15;
        }

        v16 = *(a1 + 8 * v14 + 32);
      }

      v17 = v16;
      v5 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ([v16 isHidden])
      {
      }

      else
      {
        sub_1004DEB9C();
        sub_1004DEBDC();
        sub_1004DEBEC();
        sub_1004DEBAC();
        v15 = v80;
      }

      ++v14;
      if (v5 == i)
      {
        v18 = v82;
        *&v5 = v79;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_18:
  v19 = v81;
  [v81 bounds];
  v79 = v21;
  v80 = v20;
  v77 = v23;
  v78 = v22;
  v24 = [v19 traitCollection];
  [v24 displayScale];

  v75 = [v19 effectiveUserInterfaceLayoutDirection];
  [v19 layoutMargins];
  v26 = v25;
  Width = v27;
  v30 = v29;
  LODWORD(v31) = v18 < 0 || (v18 & 0x4000000000000000) != 0;
  if (v31 == 1)
  {
    goto LABEL_90;
  }

  v32 = *(v18 + 16);
  v33 = v32 - 1;
  if (!__OFSUB__(v32, 1))
  {
    while (1)
    {
      v72 = v33;
      if (v5[4])
      {
        v8 = sub_10001087C(*&v80, v79, v78, v77, v26, Width);
        v7 = v34;
        v10 = v35;
        v9 = v36;
      }

      if (v31)
      {
        *&v5 = COERCE_DOUBLE(sub_1004DED5C());
      }

      else
      {
        v5 = *(v18 + 16);
      }

      v73 = v32;
      if (*&v5 == 0.0)
      {
        break;
      }

      v37 = 0;
      Width = 0.0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v38 = sub_1004DEB2C();
        }

        else
        {
          if (v37 >= *(v18 + 16))
          {
            goto LABEL_85;
          }

          v38 = *(v18 + 8 * v37 + 32);
        }

        v31 = v38;
        v39 = (v37 + 1);
        if (__OFADD__(v37, 1))
        {
          break;
        }

        v40 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
        swift_beginAccess();
        sub_1003B2848(v31 + v40, v12);
        v12[184] = 0;
        SymbolButton.setConfiguration(_:animation:updates:)(v12, 0, 0, 0, 1, _swiftEmptyArrayStorage);
        sub_1003B40BC(v12, type metadata accessor for SymbolButton.Configuration);
        [v31 intrinsicContentSize];
        v26 = v41;
        sub_1004D873C();
        Width = Width + v42;
        sub_1004D873C();
        v44 = v43;

        ++v37;
        if (v39 == v5)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      v73 = v30;
      v70 = sub_1004DED5C();
      v30 = v73;
      v32 = v70;
      v33 = v70 - 1;
      if (__OFSUB__(v70, 1))
      {
        goto LABEL_92;
      }
    }

    Width = 0.0;
    v44 = 0.0;
LABEL_38:
    v45 = LOBYTE(v74);
    v46 = BYTE1(v74);
    v47 = (v72 & ~(v72 >> 63)) * v76;
    if (BYTE1(v74))
    {
      v48 = v73;
      if (BYTE1(v74) == 1)
      {
        v49 = 0;
        Width = v47 + v44 * v73;
      }

      else
      {
        v83.origin.x = v8;
        v83.origin.y = v7;
        v83.size.width = v10;
        v83.size.height = v9;
        CGRectGetWidth(v83);
        sub_1004D873C();
        v44 = v50;
        v84.origin.x = v8;
        v84.origin.y = v7;
        v84.size.width = v10;
        v84.size.height = v9;
        Width = CGRectGetWidth(v84);
        v49 = 0;
      }
    }

    else
    {
      Width = v47 + Width;
      v49 = 1;
      v44 = 0.0;
      v48 = v73;
    }

    v85.origin.x = v8;
    v85.origin.y = v7;
    v85.size.width = v10;
    v85.size.height = v9;
    v51 = Width - CGRectGetWidth(v85);
    if (v51 < 0.0)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v51;
    }

    if ((v49 & 1) == 0 && v26 > 0.0)
    {
      sub_1004D873C();
      v44 = v44 - v52;
      v86.origin.x = v8;
      v86.origin.y = v7;
      v86.size.width = v10;
      v86.size.height = v9;
      Width = CGRectGetWidth(v86);
    }

    if (v46 != 2 && v45)
    {
      if (v45 != 1)
      {
        v91.origin.x = v8;
        v91.origin.y = v7;
        v91.size.width = v10;
        v91.size.height = v9;
        v8 = CGRectGetMaxX(v91) - Width;
        if (*&v5 != 0.0)
        {
          goto LABEL_54;
        }

LABEL_83:

        return;
      }

      v87.origin.x = v8;
      v87.origin.y = v7;
      v87.size.width = v10;
      v87.size.height = v9;
      CGRectGetWidth(v87);
      sub_1004D871C();
      v8 = v8 + v53;
    }

    if (*&v5 != 0.0)
    {
LABEL_54:
      v31 = 0;
      v54 = v48;
      v55 = 0;
      v56 = v18 & 0xC000000000000001;
      v74 = v26 / v54;
      while (1)
      {
        if (v56)
        {
          v58 = sub_1004DEB2C();
        }

        else
        {
          if (v31 >= *(v18 + 16))
          {
            goto LABEL_87;
          }

          v58 = *(v18 + 8 * v31 + 32);
        }

        v59 = v58;
        v60 = (v31 + 1);
        if (__OFADD__(v31, 1))
        {
          goto LABEL_86;
        }

        v61 = [v58 superview];
        if (!v61 || (v62 = v61, v61, v62 != v81))
        {
          [v81 addSubview:v59];
        }

        v26 = v44;
        if (v49)
        {
          [v59 intrinsicContentSize];
          v64 = v63;
          sub_1004D873C();
          v26 = v64 - v65;
        }

        sub_1004DE3EC();
        [v59 setFrame:?];
        v89.origin.x = v8;
        v89.origin.y = v7;
        v89.size.width = v26;
        v89.size.height = v9;
        CGRectGetWidth(v89);
        v90.origin.x = v8;
        v90.origin.y = v7;
        v90.size.width = v26;
        v90.size.height = v9;
        v10 = CGRectGetWidth(v90);
        if (v55)
        {

          if (v60 == v5)
          {
            if (v73 < 2)
            {
              goto LABEL_83;
            }

LABEL_74:
            v66 = 0;
            while (1)
            {
              if (v56)
              {
                v67 = sub_1004DEB2C();
              }

              else
              {
                if (v66 >= *(v18 + 16))
                {
                  goto LABEL_89;
                }

                v67 = *(v18 + 8 * v66 + 32);
              }

              v31 = v67;
              v68 = (v66 + 1);
              if (__OFADD__(v66, 1))
              {
                goto LABEL_88;
              }

              v69 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
              swift_beginAccess();
              sub_1003B2848(v31 + v69, v12);
              v12[184] = 1;
              SymbolButton.setConfiguration(_:animation:updates:)(v12, 0, 0, 0, 1, _swiftEmptyArrayStorage);

              sub_1003B40BC(v12, type metadata accessor for SymbolButton.Configuration);
              ++v66;
              if (v68 == v5)
              {
                goto LABEL_83;
              }
            }
          }

          v55 = 1;
        }

        else
        {
          [v59 intrinsicContentSize];
          Width = v57;
          v88.origin.x = v8;
          v88.origin.y = v7;
          v88.size.width = v26;
          v88.size.height = v9;
          v26 = CGRectGetWidth(v88);

          v55 = v26 < Width;
          if (v60 == v5)
          {
            if (v26 >= Width || v73 <= 1)
            {
              goto LABEL_83;
            }

            goto LABEL_74;
          }
        }

        v8 = v8 + v10 + v76;
        ++v31;
      }
    }

    goto LABEL_83;
  }

LABEL_92:
  __break(1u);
}

unint64_t sub_1003B3798()
{
  result = qword_100644090;
  if (!qword_100644090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644090);
  }

  return result;
}

unint64_t sub_1003B37F0()
{
  result = qword_100644098;
  if (!qword_100644098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644098);
  }

  return result;
}

unint64_t sub_1003B3864()
{
  result = qword_1006440A0;
  if (!qword_1006440A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006440A0);
  }

  return result;
}

unint64_t sub_1003B38BC()
{
  result = qword_1006440A8;
  if (!qword_1006440A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006440A8);
  }

  return result;
}

unint64_t sub_1003B3914()
{
  result = qword_1006440B0;
  if (!qword_1006440B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006440B0);
  }

  return result;
}

uint64_t sub_1003B3998(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003B39BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_1003B3A18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlayIntentLayoutHelper.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1003B3B48(uint64_t *a1)
{
  sub_100008DE4(&qword_1006440C8, &unk_1005319D0);
  sub_1004DA32C();
  sub_100042B08(&qword_1006440D0, &qword_1006440C8, &unk_1005319D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable();
}

unint64_t sub_1003B3C18()
{
  result = qword_1006440D8;
  if (!qword_1006440D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006440D8);
  }

  return result;
}

unint64_t sub_1003B3C6C()
{
  result = qword_1006440E0;
  if (!qword_1006440E0)
  {
    sub_100008DE4(&qword_1006440E8, &qword_100531B28);
    sub_1003B37F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006440E0);
  }

  return result;
}

unint64_t sub_1003B3CF0()
{
  result = qword_100644108;
  if (!qword_100644108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644108);
  }

  return result;
}

uint64_t sub_1003B3D44()
{

  return swift_deallocObject();
}

double sub_1003B3D84@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = *a1;
  KeyPath = swift_getKeyPath();
  *a2 = v7;
  *(a2 + 1) = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = 0;

  return result;
}

unint64_t sub_1003B3DF4()
{
  result = qword_100644140;
  if (!qword_100644140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644140);
  }

  return result;
}

uint64_t sub_1003B3E48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1003B3E90()
{
  result = qword_100644148;
  if (!qword_100644148)
  {
    sub_100008DE4(&qword_100644128, &qword_100531B50);
    sub_1003B3F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644148);
  }

  return result;
}

unint64_t sub_1003B3F1C()
{
  result = qword_100644150;
  if (!qword_100644150)
  {
    sub_100008DE4(&qword_100644120, &qword_100531B48);
    sub_100042B08(&qword_100644158, &qword_100644160, &qword_100531B60, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_1003B3FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644150);
  }

  return result;
}

unint64_t sub_1003B3FD4()
{
  result = qword_100644168;
  if (!qword_100644168)
  {
    sub_100008DE4(&qword_100644170, &qword_100531B68);
    sub_1003B3864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644168);
  }

  return result;
}

uint64_t sub_1003B4058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B40BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *PlaylistCovers.CarouselItem.pageIndicatorImage.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

__n128 PlaylistCovers.CarouselItem.init(itemType:pageIndicatorImage:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v4 = a1[5];
  v25 = a1[4];
  v26 = v4;
  v5 = a1[7];
  v27 = a1[6];
  v28 = v5;
  v6 = a1[1];
  v22[0] = *a1;
  v22[1] = v6;
  v7 = a1[3];
  v23 = a1[2];
  v24 = v7;
  v13 = v22[0];
  v14 = v6;
  v15 = v23;
  v16 = v7;
  v17 = v25;
  v18 = v4;
  v19 = v27;
  v20 = v5;
  v21 = a2;
  v29 = a2;
  sub_100397618(&v13, v12);
  sub_1003B4380(v22);
  v8 = v20;
  a3[6] = v19;
  a3[7] = v8;
  a3[8].n128_u64[0] = v21;
  v9 = v16;
  a3[2] = v15;
  a3[3] = v9;
  v10 = v18;
  a3[4] = v17;
  a3[5] = v10;
  result = v14;
  *a3 = v13;
  a3[1] = result;
  return result;
}

uint64_t static PlaylistCovers.CarouselItem.CarouselItemType.__derived_enum_equals(_:_:)(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v39 = a1[4];
  v40 = v3;
  v4 = a1[7];
  v41 = a1[6];
  v42 = v4;
  v5 = a1[1];
  v35 = *a1;
  v36 = v5;
  v6 = a1[3];
  v37 = a1[2];
  v38 = v6;
  if (sub_10003555C(&v35) == 1)
  {
    v7 = a2[5];
    v47 = a2[4];
    v48 = v7;
    v8 = a2[7];
    v49 = a2[6];
    v50 = v8;
    v9 = a2[1];
    v43 = *a2;
    v44 = v9;
    v10 = a2[3];
    v45 = a2[2];
    v46 = v10;
    v11 = sub_10003555C(&v43) == 1;
  }

  else
  {
    v47 = v39;
    v48 = v40;
    v49 = v41;
    v50 = v42;
    v43 = v35;
    v44 = v36;
    v45 = v37;
    v46 = v38;
    v12 = *a2;
    v13 = a2[1];
    v14 = a2[3];
    v21 = a2[2];
    v22 = v14;
    v19 = v12;
    v20 = v13;
    v15 = a2[4];
    v16 = a2[5];
    v17 = a2[7];
    v25 = a2[6];
    v26 = v17;
    v23 = v15;
    v24 = v16;
    if (sub_10003555C(&v19) == 1)
    {
      v11 = 0;
    }

    else
    {
      v31 = v23;
      v32 = v24;
      v33 = v25;
      v34 = v26;
      v27 = v19;
      v28 = v20;
      v29 = v21;
      v30 = v22;
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)();
    }
  }

  return v11 & 1;
}

uint64_t sub_1003B44C4(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v45 = a1[4];
  v46 = v3;
  v4 = a1[7];
  v47 = a1[6];
  v48 = v4;
  v5 = a1[1];
  v41 = *a1;
  v42 = v5;
  v6 = a1[3];
  v43 = a1[2];
  v44 = v6;
  if (sub_10003555C(&v41) == 1)
  {
    v7 = a2[5];
    v37 = a2[4];
    v38 = v7;
    v8 = a2[7];
    v39 = a2[6];
    v40 = v8;
    v9 = a2[1];
    v33 = *a2;
    v34 = v9;
    v10 = a2[3];
    v35 = a2[2];
    v36 = v10;
    v11 = sub_10003555C(&v33) == 1;
  }

  else
  {
    v29 = v45;
    v30 = v46;
    v31 = v47;
    v32 = v48;
    v25 = v41;
    v26 = v42;
    v27 = v43;
    v28 = v44;
    v12 = a2[7];
    v23 = a2[6];
    v24 = v12;
    v13 = a2[5];
    v21 = a2[4];
    v22 = v13;
    v14 = a2[3];
    v19 = a2[2];
    v20 = v14;
    v15 = a2[1];
    v17 = *a2;
    v18 = v15;
    if (sub_10003555C(&v17) == 1)
    {
      v11 = 0;
    }

    else
    {
      v37 = v21;
      v38 = v22;
      v39 = v23;
      v40 = v24;
      v33 = v17;
      v34 = v18;
      v35 = v19;
      v36 = v20;
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)();
    }
  }

  return v11 & 1;
}

uint64_t PlaylistCovers.CarouselItem.id.getter()
{
  v1 = v0[5];
  v7[4] = v0[4];
  v7[5] = v1;
  v2 = v0[7];
  v7[6] = v0[6];
  v7[7] = v2;
  v3 = v0[1];
  v7[0] = *v0;
  v7[1] = v3;
  v4 = v0[3];
  v7[2] = v0[2];
  v7[3] = v4;
  if (sub_10003555C(v7) == 1)
  {
    return 0x6369506F746F6850;
  }

  v5 = *(&v7[0] + 1);

  return v5;
}

double PlaylistCovers.CarouselItem.hash(into:)(uint64_t a1)
{
  v2 = v1[5];
  v7[4] = v1[4];
  v7[5] = v2;
  v3 = v1[7];
  v7[6] = v1[6];
  v7[7] = v3;
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  v5 = v1[3];
  v7[2] = v1[2];
  v7[3] = v5;
  if (sub_10003555C(v7) != 1)
  {
  }

  sub_1004DD55C();

  return result;
}

uint64_t static PlaylistCovers.CarouselItem.== infix(_:_:)(_OWORD *a1, __int128 *a2)
{
  v3 = a1[5];
  v19[4] = a1[4];
  v19[5] = v3;
  v4 = a1[7];
  v19[6] = a1[6];
  v19[7] = v4;
  v5 = a1[1];
  v19[0] = *a1;
  v19[1] = v5;
  v6 = a1[3];
  v19[2] = a1[2];
  v19[3] = v6;
  if (sub_10003555C(v19) == 1)
  {
    v7 = a2[5];
    v24 = a2[4];
    v25 = v7;
    v8 = a2[7];
    v26 = a2[6];
    v27 = v8;
    v9 = a2[1];
    v20 = *a2;
    v21 = v9;
    v10 = a2[3];
    v22 = a2[2];
    v23 = v10;
    v11 = sub_10003555C(&v20) == 1;
  }

  else
  {
    v12 = *a2;
    v13 = a2[1];
    v14 = a2[3];
    v22 = a2[2];
    v23 = v14;
    v20 = v12;
    v21 = v13;
    v15 = a2[4];
    v16 = a2[5];
    v17 = a2[7];
    v26 = a2[6];
    v27 = v17;
    v24 = v15;
    v25 = v16;
    if (sub_10003555C(&v20) == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)();
    }
  }

  return v11 & 1;
}

double PlaylistCovers.CarouselItem.cover.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v25 = v1[4];
  v26 = v3;
  v4 = v1[7];
  v27 = v1[6];
  v28 = v4;
  v5 = v1[1];
  v22[0] = *v1;
  v22[1] = v5;
  v6 = v1[3];
  v23 = v1[2];
  v24 = v6;
  v35 = v27;
  v36 = v4;
  v33 = v25;
  v34 = v3;
  v31 = v23;
  v32 = v6;
  v29 = v22[0];
  v30 = v5;
  if (sub_10003555C(&v29) == 1)
  {
    sub_10028ED44(&v37);
  }

  else
  {
    v18 = v33;
    v19 = v34;
    v20 = v35;
    v21 = v36;
    v14 = v29;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    v8 = &v14;
    CFRange.init(_:)(*(&v7 - 1));
    v41 = v18;
    v42 = v19;
    v43 = v20;
    v44 = v21;
    v37 = v14;
    v38 = v15;
    v39 = v16;
    v40 = v17;
  }

  sub_1003B41EC(v22, &v14);
  v9 = v42;
  a1[4] = v41;
  a1[5] = v9;
  v10 = v44;
  a1[6] = v43;
  a1[7] = v10;
  v11 = v38;
  *a1 = v37;
  a1[1] = v11;
  result = *&v39;
  v13 = v40;
  a1[2] = v39;
  a1[3] = v13;
  return result;
}

__n128 static PlaylistCovers.CarouselItem.picker.getter@<Q0>(__n128 *a1@<X8>)
{
  sub_10028ED44(&v9);
  v2 = sub_1004DD3FC();
  v3 = [objc_opt_self() systemImageNamed:v2];

  v26[4] = v13;
  v26[5] = v14;
  v26[6] = v15;
  v26[7] = v16;
  v26[0] = v9;
  v26[1] = v10;
  v26[2] = v11;
  v26[3] = v12;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v3;
  v27 = v3;
  sub_100397618(&v17, v8);
  sub_1003B4380(v26);
  v4 = v24;
  a1[6] = v23;
  a1[7] = v4;
  a1[8].n128_u64[0] = v25;
  v5 = v20;
  a1[2] = v19;
  a1[3] = v5;
  v6 = v22;
  a1[4] = v21;
  a1[5] = v6;
  result = v18;
  *a1 = v17;
  a1[1] = result;
  return result;
}

__n128 static PlaylistCovers.CarouselItem.tracksTiled(image:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1004D83FC();
  __chkstk_darwin();
  v4 = sub_1004DD3EC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v21[-v8];
  v10 = a1;
  sub_1004DD37C();
  (*(v5 + 16))(v7, v9, v4);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v11 = qword_1006734A0;
  sub_1004D838C();
  v12 = sub_1004DD4AC();
  v14 = v13;
  (*(v5 + 8))(v9, v4);
  v15 = AccessibilityIdentifier.playlistEditorMetadataArtwork4Up.unsafeMutableAddressor();
  PlaylistCovers.Cover.init(image:id:accessibilityLabel:accessibilityIdentifier:)(v10, 0x6954736B63617254, 0xEB0000000064656CLL, v12, v14, *v15, v15[1], v15[2], &v22, v15[3]);
  v16.location = &v22;
  CFRange.init(_:)(v16);
  v39[4] = v26;
  v39[5] = v27;
  v39[6] = v28;
  v39[7] = v29;
  v39[0] = v22;
  v39[1] = v23;
  v39[2] = v24;
  v39[3] = v25;
  v30 = v22;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = v29;
  v38 = 0;
  v40 = 0;

  sub_100397618(&v30, v21);
  sub_1003B4380(v39);
  v17 = v37;
  *(a2 + 96) = v36;
  *(a2 + 112) = v17;
  *(a2 + 128) = v38;
  v18 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v18;
  v19 = v35;
  *(a2 + 64) = v34;
  *(a2 + 80) = v19;
  result = v31;
  *a2 = v30;
  *(a2 + 16) = result;
  return result;
}

Swift::Int PlaylistCovers.CarouselItem.hashValue.getter()
{
  sub_1004DF26C();
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v2 = v0[7];
  v6[6] = v0[6];
  v6[7] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = v0[3];
  v6[2] = v0[2];
  v6[3] = v4;
  if (sub_10003555C(v6) != 1)
  {
  }

  sub_1004DD55C();

  return sub_1004DF2BC();
}

void sub_1003B4D88(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  v9[4] = v1[4];
  v9[5] = v3;
  v4 = v1[7];
  v9[6] = v1[6];
  v9[7] = v4;
  v5 = v1[1];
  v9[0] = *v1;
  v9[1] = v5;
  v6 = v1[3];
  v9[2] = v1[2];
  v9[3] = v6;
  if (sub_10003555C(v9) == 1)
  {
    v7 = 0xEB0000000072656BLL;
    v8 = 0x6369506F746F6850;
  }

  else
  {
    v8 = *(&v9[0] + 1);
  }

  *a1 = v8;
  a1[1] = v7;
}

Swift::Int sub_1003B4E0C()
{
  sub_1004DF26C();
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v2 = v0[7];
  v6[6] = v0[6];
  v6[7] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = v0[3];
  v6[2] = v0[2];
  v6[3] = v4;
  if (sub_10003555C(v6) != 1)
  {
  }

  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t static PlaylistCovers.carouselItems(from:playlistTitle:size:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 24) = a1;
  return _swift_task_switch(sub_1003B4EE0, 0, 0);
}

uint64_t sub_1003B4EE0()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = sub_100004CB8(&qword_100644180, &qword_100531BF8);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = v5;
  v7[3] = v2;
  v7[4] = v1;
  v7[5] = v4;
  v7[6] = v3;
  v8 = sub_100004CB8(&qword_100644188, &qword_100531C10);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_1003B501C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v6, v8, 0, 0, &unk_100531C08, v7, v6);
}

uint64_t sub_1003B501C()
{

  return _swift_task_switch(sub_10024A134, 0, 0);
}

uint64_t sub_1003B5134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 1728) = a5;
  *(v7 + 1720) = a4;
  *(v7 + 1712) = a7;
  *(v7 + 1704) = a6;
  *(v7 + 1696) = a3;
  *(v7 + 1688) = a2;
  *(v7 + 1680) = a1;
  sub_100004CB8(&qword_100643620, &qword_10052F9C0);
  *(v7 + 1736) = swift_task_alloc();
  *(v7 + 1744) = swift_task_alloc();
  v8 = sub_100004CB8(&qword_100644198, &qword_100531EA0);
  *(v7 + 1752) = v8;
  *(v7 + 1760) = *(v8 - 8);
  *(v7 + 1768) = swift_task_alloc();

  return _swift_task_switch(sub_1003B525C, 0, 0);
}

uint64_t sub_1003B525C()
{
  v1 = *(v0 + 1696);
  v2 = *(v1 + 16);
  *(v0 + 1776) = v2;
  if (v2)
  {
    v3 = (v0 + 1280);
    v36 = **(v0 + 1688);
    v4 = (v1 + 32);
    v5 = sub_1004DDA8C();
    v6 = *(v5 - 8);
    v35 = *(v6 + 56);
    v34 = (v6 + 48);
    v33 = (v6 + 8);
    while (1)
    {
      v7 = *(v0 + 1744);
      v8 = *(v0 + 1728);
      v9 = *(v0 + 1720);
      v10 = *(v0 + 1712);
      v11 = *(v0 + 1704);
      v13 = v4[1];
      v12 = v4[2];
      v14 = *v4;
      *(v0 + 1328) = *(v4 + 6);
      *(v0 + 1296) = v13;
      *(v0 + 1312) = v12;
      *v3 = v14;
      v35(v7, 1, 1, v5);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      v17 = *(v0 + 1296);
      *(v15 + 32) = *v3;
      *(v15 + 48) = v17;
      *(v15 + 64) = *(v0 + 1312);
      *(v15 + 80) = *(v0 + 1328);
      *(v15 + 88) = v11;
      *(v15 + 96) = v10;
      *(v15 + 104) = v9;
      *(v15 + 112) = v8;
      sub_100245220(v0 + 1280, v0 + 1448);
      sub_100245220(v0 + 1280, v0 + 1504);

      v18 = swift_taskGroup_addPending();
      v19 = *(v0 + 1744);
      if (v18)
      {
        break;
      }

      sub_10001074C(v19, &qword_100643620, &qword_10052F9C0);

      sub_10024527C(v0 + 1280);
LABEL_4:
      v4 = (v4 + 56);
      if (!--v2)
      {
        goto LABEL_14;
      }
    }

    v20 = *(v0 + 1736);
    sub_1003B6518(v19, v20);
    v21 = (*v34)(v20, 1, v5);
    v22 = *(v0 + 1736);
    if (v21 == 1)
    {
      sub_10001074C(*(v0 + 1736), &qword_100643620, &qword_10052F9C0);
      if (*v16)
      {
LABEL_8:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = sub_1004DD9BC();
        v25 = v24;
        swift_unknownObjectRelease();
LABEL_11:
        v26 = swift_allocObject();
        *(v26 + 16) = &unk_100531EB0;
        *(v26 + 24) = v15;

        sub_100004CB8(&qword_100644180, &qword_100531BF8);
        v27 = v25 | v23;
        if (v25 | v23)
        {
          v27 = v0 + 1616;
          *(v0 + 1616) = 0;
          *(v0 + 1624) = 0;
          *(v0 + 1632) = v23;
          *(v0 + 1640) = v25;
        }

        v28 = *(v0 + 1744);
        *(v0 + 1648) = 1;
        *(v0 + 1656) = v27;
        *(v0 + 1664) = v36;
        swift_task_create();

        sub_10024527C(v0 + 1280);
        sub_10001074C(v28, &qword_100643620, &qword_10052F9C0);
        goto LABEL_4;
      }
    }

    else
    {
      sub_1004DDA7C();
      (*v33)(v22, v5);
      if (*v16)
      {
        goto LABEL_8;
      }
    }

    v23 = 0;
    v25 = 0;
    goto LABEL_11;
  }

LABEL_14:
  sub_100004CB8(&qword_100644180, &qword_100531BF8);
  sub_1004DD9FC();
  *(v0 + 1784) = _swiftEmptyDictionarySingleton;
  v29 = sub_1003B64B4();
  v30 = swift_task_alloc();
  *(v0 + 1792) = v30;
  *v30 = v0;
  v30[1] = sub_1003B5678;
  v31 = *(v0 + 1752);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 1088, v31, v29);
}

uint64_t sub_1003B5678()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[221];
    v4 = v2[220];
    v5 = v2[219];

    (*(v4 + 8))(v3, v5);

    v6 = CFRange.init(_:);
  }

  else
  {
    v6 = sub_1003B57D0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003B57D0()
{
  v1 = (v0 + 1088);
  if (*(v0 + 1096))
  {
    v2 = v0 + 424;
    v3 = (v0 + 960);
    v115 = *(v0 + 1784);
    v4 = *(v0 + 1136);
    *(v0 + 1248) = *(v0 + 1120);
    *(v0 + 1264) = v4;
    v5 = *(v0 + 1104);
    v109 = v0 + 1088;
    v110 = v0 + 1216;
    *(v0 + 1216) = *v1;
    *(v0 + 1232) = v5;
    v6 = *(v0 + 1224);
    v7 = *(v0 + 1232);
    v8 = *(v0 + 1240);
    v9 = *(v0 + 1248);
    v10 = *(v0 + 1256);
    v11 = *(v0 + 1264);
    v114 = *(v0 + 1272);
    *(v0 + 1392) = *(v0 + 1216);
    *(v0 + 1400) = v6;
    *(v0 + 1408) = v7;
    *(v0 + 1416) = v8;
    *(v0 + 1424) = v9;
    *(v0 + 1432) = v10;
    *(v0 + 1440) = v11;
    v12 = v6;
    v13 = v7;
    v112 = v8;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v17 = v114;
    v113 = v12;
    v108 = v13;
    v111 = v112;
    v18 = v14;
    v19 = v0 + 1392;
    v107 = v18;
    v20 = v15;
    v21 = v16;
    PlaylistCovers.Cover.init(image:representation:)(v17, (v0 + 1392), v0 + 960);
    v22 = *(v0 + 1040);
    *(v0 + 896) = *(v0 + 1024);
    *(v0 + 912) = v22;
    v23 = *(v0 + 1072);
    *(v0 + 928) = *(v0 + 1056);
    *(v0 + 944) = v23;
    v24 = *(v0 + 976);
    *(v0 + 832) = *(v0 + 960);
    *(v0 + 848) = v24;
    v25 = *(v0 + 1008);
    *(v0 + 864) = *(v0 + 992);
    *(v0 + 880) = v25;
    v26.location = v0 + 832;
    CFRange.init(_:)(v26);
    v27 = *(v0 + 896);
    v28 = *(v0 + 912);
    *(v0 + 352) = v27;
    *(v0 + 368) = v28;
    v29 = *(v0 + 928);
    v30 = *(v0 + 944);
    *(v0 + 384) = v29;
    *(v0 + 400) = v30;
    v31 = *(v0 + 832);
    v32 = *(v0 + 848);
    *(v0 + 288) = v31;
    *(v0 + 304) = v32;
    v33 = *(v0 + 864);
    v34 = *(v0 + 880);
    *(v0 + 320) = v33;
    *(v0 + 336) = v34;
    *(v0 + 424) = v31;
    *(v0 + 440) = v32;
    *(v0 + 456) = v33;
    *(v0 + 472) = v34;
    *(v0 + 488) = v27;
    *(v0 + 504) = v28;
    *(v0 + 520) = v29;
    *(v0 + 536) = v30;
    *(v0 + 552) = 0;
    *(v0 + 416) = 0;
    sub_100397618(v0 + 424, v0 + 560);
    sub_1003B4380(v0 + 288);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 1672) = v115;
    v36 = sub_100395B34(v0 + 1392);
    v38 = *(v115 + 16);
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      LOBYTE(v12) = v37;
      v3 = (v0 + 1672);
      if (*(*(v0 + 1784) + 24) < v41)
      {
        sub_100396434(v41, isUniquelyReferenced_nonNull_native);
        v36 = sub_100395B34(v19);
        if ((v12 & 1) != (v42 & 1))
        {

          return sub_1004DF16C();
        }

LABEL_24:
        if (v12)
        {
LABEL_25:
          v71 = *v3;
          v72 = *(*v3 + 56) + 136 * v36;
          *(v0 + 696) = *v72;
          v73 = *(v72 + 64);
          v75 = *(v72 + 16);
          v74 = *(v72 + 32);
          *(v0 + 744) = *(v72 + 48);
          *(v0 + 760) = v73;
          *(v0 + 712) = v75;
          *(v0 + 728) = v74;
          v77 = *(v72 + 96);
          v76 = *(v72 + 112);
          v78 = *(v72 + 80);
          *(v0 + 824) = *(v72 + 128);
          *(v0 + 792) = v77;
          *(v0 + 808) = v76;
          *(v0 + 776) = v78;
          *v72 = *v2;
          v79 = *(v2 + 16);
          v80 = *(v2 + 32);
          v81 = *(v2 + 64);
          *(v72 + 48) = *(v2 + 48);
          *(v72 + 64) = v81;
          *(v72 + 16) = v79;
          *(v72 + 32) = v80;
          v82 = *(v2 + 80);
          v83 = *(v2 + 96);
          v84 = *(v2 + 112);
          *(v72 + 128) = *(v2 + 128);
          *(v72 + 96) = v83;
          *(v72 + 112) = v84;
          *(v72 + 80) = v82;
          sub_1003B4380(v0 + 696);

          sub_10001074C(v110, &qword_1006441A8, &qword_100531EB8);
          goto LABEL_36;
        }

LABEL_34:
        v71 = *v3;
        *(*v3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
        v89 = v71[6] + 56 * v36;
        v90 = *v19;
        v91 = *(v19 + 16);
        v92 = *(v19 + 32);
        *(v89 + 48) = *(v19 + 48);
        *(v89 + 16) = v91;
        *(v89 + 32) = v92;
        *v89 = v90;
        v93 = v71[7] + 136 * v36;
        *v93 = *v2;
        v94 = *(v2 + 16);
        v95 = *(v2 + 32);
        v96 = *(v2 + 64);
        *(v93 + 48) = *(v2 + 48);
        *(v93 + 64) = v96;
        *(v93 + 16) = v94;
        *(v93 + 32) = v95;
        v97 = *(v2 + 80);
        v98 = *(v2 + 96);
        v99 = *(v2 + 112);
        *(v93 + 128) = *(v2 + 128);
        *(v93 + 96) = v98;
        *(v93 + 112) = v99;
        *(v93 + 80) = v97;

        v100 = sub_10001074C(v110, &qword_1006441A8, &qword_100531EB8);
        v103 = v71[2];
        v40 = __OFADD__(v103, 1);
        v104 = v103 + 1;
        if (v40)
        {
          __break(1u);
          return dispatch thunk of AsyncIteratorProtocol.next()(v100, v101, v102);
        }

        v71[2] = v104;
LABEL_36:
        *(v0 + 1784) = v71;
        v105 = sub_1003B64B4();
        v106 = swift_task_alloc();
        *(v0 + 1792) = v106;
        *v106 = v0;
        v106[1] = sub_1003B5678;
        v101 = *(v0 + 1752);
        v100 = v109;
        v102 = v105;

        return dispatch thunk of AsyncIteratorProtocol.next()(v100, v101, v102);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }
    }

    v87 = v21;
    v88 = v36;
    sub_100397674();
    v36 = v88;
    v21 = v87;
    if (v12)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v44 = *(v0 + 1776);
  (*(*(v0 + 1760) + 8))(*(v0 + 1768), *(v0 + 1752));
  v45 = *(v0 + 1104);
  *(v0 + 1152) = *v1;
  *(v0 + 1168) = v45;
  v46 = *(v0 + 1136);
  *(v0 + 1184) = *(v0 + 1120);
  *(v0 + 1200) = v46;
  v36 = sub_10001074C(v0 + 1152, &qword_1006441A8, &qword_100531EB8);
  if (!v44)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v3 = 0;
  v19 = v0 + 1336;
  v2 = *(v0 + 1784);
  v17 = (*(v0 + 1696) + 32);
  v21 = _swiftEmptyArrayStorage;
  v20 = 56;
  do
  {
    v47 = *(v0 + 1776);
    v48 = &v17[56 * v3];
    v12 = v3;
    while (1)
    {
      if (v12 >= v47)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v49 = *v48;
      v50 = *(v48 + 1);
      v51 = *(v48 + 2);
      *(v0 + 1384) = *(v48 + 6);
      *(v0 + 1352) = v50;
      *(v0 + 1368) = v51;
      *v19 = v49;
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_31;
      }

      if (*(v2 + 16))
      {
        break;
      }

LABEL_11:
      ++v12;
      v48 += 56;
      if (v3 == v47)
      {
        goto LABEL_27;
      }
    }

    sub_100245220(v0 + 1336, v0 + 1560);
    v52 = sub_100395B34(v0 + 1336);
    if ((v53 & 1) == 0)
    {
      v36 = sub_10024527C(v0 + 1336);
      v47 = *(v0 + 1776);
      goto LABEL_11;
    }

    v54 = *(v2 + 56) + 136 * v52;
    *(v0 + 16) = *v54;
    v55 = *(v54 + 16);
    v56 = *(v54 + 32);
    v57 = *(v54 + 64);
    *(v0 + 64) = *(v54 + 48);
    *(v0 + 80) = v57;
    *(v0 + 32) = v55;
    *(v0 + 48) = v56;
    v58 = *(v54 + 80);
    v59 = *(v54 + 96);
    v60 = *(v54 + 112);
    *(v0 + 144) = *(v54 + 128);
    *(v0 + 112) = v59;
    *(v0 + 128) = v60;
    *(v0 + 96) = v58;
    sub_100397618(v0 + 16, v0 + 152);
    sub_10024527C(v0 + 1336);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    if ((v36 & 1) == 0)
    {
      v36 = sub_1003E0A08(0, v21[2] + 1, 1, v21);
      v21 = v36;
    }

    v62 = v21[2];
    v61 = v21[3];
    if (v62 >= v61 >> 1)
    {
      v36 = sub_1003E0A08((v61 > 1), v62 + 1, 1, v21);
      v21 = v36;
    }

    v63 = *(v0 + 1776);
    v21[2] = v62 + 1;
    v64 = &v21[17 * v62];
    *(v64 + 2) = *(v0 + 16);
    v65 = *(v0 + 32);
    v66 = *(v0 + 48);
    v67 = *(v0 + 80);
    *(v64 + 5) = *(v0 + 64);
    *(v64 + 6) = v67;
    *(v64 + 3) = v65;
    *(v64 + 4) = v66;
    v68 = *(v0 + 96);
    v69 = *(v0 + 112);
    v70 = *(v0 + 128);
    v64[20] = *(v0 + 144);
    *(v64 + 8) = v69;
    *(v64 + 9) = v70;
    *(v64 + 7) = v68;
  }

  while (v3 != v63);
LABEL_27:
  v85 = *(v0 + 1680);

  *v85 = v21;

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_1003B5EC4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v10 = *(v2 + 5);
  v9 = *(v2 + 6);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100035C88;

  return sub_1003B5134(a1, a2, v6, v10, v9, v7, v8);
}

unint64_t sub_1003B5FA0()
{
  result = qword_100644190;
  if (!qword_100644190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644190);
  }

  return result;
}

uint64_t sub_1003B5FF4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003B600C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1003B6024(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1003B6058(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
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

uint64_t sub_1003B60B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1003B6138(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003B6188(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1003B61EC(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1003B623C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3;
  *(v8 + 72) = a1;
  *(v8 + 80) = a6;
  return _swift_task_switch(sub_1003B6264, 0, 0);
}

uint64_t sub_1003B6264()
{
  v1 = *(v0 + 13);
  v2 = *(v0 + 14);
  v4 = v0[11];
  v3 = v0[12];
  v6 = *(v0 + 9);
  v5 = *(v0 + 10);
  v7 = *v5;
  v8 = *(v5 + 16);
  v9 = *(v5 + 32);
  *(v6 + 48) = *(v5 + 48);
  *(v6 + 16) = v8;
  *(v6 + 32) = v9;
  *v6 = v7;
  v10 = *(v5 + 8);
  v11 = *(v5 + 48);
  sub_1003B6678();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100245220(v5, (v0 + 2));
  v13 = [ObjCClassFromMetadata preferredFormat];
  static PlaylistCovers.playlistCoverImage(size:backgroundImage:textColor:title:graphicsFormat:)(v10, v11, v1, v2, v13, v4, v3);
  v15 = v14;

  *(v6 + 56) = v15;
  v16 = *(v0 + 1);

  return v16();
}

uint64_t sub_1003B636C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003B63DC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[11];
  v7 = v1[12];
  v8 = *(v1 + 13);
  v9 = *(v1 + 14);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100035B28;

  return sub_1003B623C(a1, v6, v7, v4, v5, (v1 + 4), v8, v9);
}

unint64_t sub_1003B64B4()
{
  result = qword_1006441A0;
  if (!qword_1006441A0)
  {
    sub_100008DE4(&qword_100644198, &qword_100531EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006441A0);
  }

  return result;
}

uint64_t sub_1003B6518(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100643620, &qword_10052F9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B6588()
{

  return swift_deallocObject();
}

uint64_t sub_1003B65C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035B28;

  return sub_10012B324(a1, v4);
}

unint64_t sub_1003B6678()
{
  result = qword_1006441B0;
  if (!qword_1006441B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006441B0);
  }

  return result;
}

void ProgressiveBlur.makeUIView(context:)(double a1, uint64_t a2, char a3)
{
  v5 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
  v6 = type metadata accessor for ProgressiveBlurView();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a1;
  v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a3;
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = 0x3FD3333333333333;
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = v5;
  v8 = v5;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = 1.0;
  v24.size.height = 1.0;
  if (CGRectIsEmpty(v24))
  {
    goto LABEL_5;
  }

  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v9 setScale:1.0];
  [v9 setPreferredRange:2];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v9 format:{0.0, 0.0, 1.0, 1.0}];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 32) = _Q0;
  *(v11 + 48) = a3;
  *(v11 + 56) = 0x3FD3333333333333;
  *(v11 + 64) = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1003B79A4;
  *(v17 + 24) = v11;
  aBlock[4] = sub_100215AE0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001E3C4;
  aBlock[3] = &unk_1005F2108;
  v18 = _Block_copy(aBlock);
  v19 = v8;

  v20 = [v10 imageWithActions:v18];

  _Block_release(v18);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    if (v20)
    {
      v21 = [objc_opt_self() _effectWithVariableBlurRadius:v20 imageMask:a1 scale:1.0];

LABEL_6:
      v22.receiver = v7;
      v22.super_class = v6;
      objc_msgSendSuper2(&v22, "initWithEffect:", v21);

      return;
    }

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void ProgressiveBlurView.__allocating_init(blurRadius:edge:cutoff:interpolation:)(char a1, void *a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a3;
  v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a1;
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = a4;
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = a2;
  v10 = a2;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = 1.0;
  v26.size.height = 1.0;
  if (CGRectIsEmpty(v26))
  {
    goto LABEL_5;
  }

  v11 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v11 setScale:1.0];
  [v11 setPreferredRange:2];
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v11 format:{0.0, 0.0, 1.0, 1.0}];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v13 + 32) = _Q0;
  *(v13 + 48) = a1;
  *(v13 + 56) = a4;
  *(v13 + 64) = v10;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1003B7CF8;
  *(v19 + 24) = v13;
  aBlock[4] = sub_1002486C8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001E3C4;
  aBlock[3] = &unk_1005F2180;
  v20 = _Block_copy(aBlock);
  v21 = v10;

  v22 = [v12 imageWithActions:v20];

  _Block_release(v20);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    if (v22)
    {
      v23 = [objc_opt_self() _effectWithVariableBlurRadius:v22 imageMask:a3 scale:1.0];

LABEL_6:
      v24.receiver = v9;
      v24.super_class = v4;
      objc_msgSendSuper2(&v24, "initWithEffect:", v23);

      return;
    }

LABEL_5:
    v23 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void ProgressiveBlur.updateUIView(_:context:)(uint64_t a1, double a2, uint64_t a3, char a4)
{
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius) = a2;
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge) = a4;
  ProgressiveBlurView.updateEffect()();
}

void sub_1003B6CEC(uint64_t a1)
{
  v2 = *(v1 + 8);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius) = *v1;
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge) = v2;
  ProgressiveBlurView.updateEffect()();
}

uint64_t sub_1003B6D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003B7C28();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003B6D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003B7C28();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003B6DF8(uint64_t a1)
{
  sub_1003B7C28();
  sub_1004DAA7C();
  __break(1u);
}

double sub_1003B6EC8(unsigned __int8 a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = a4();
    }

    else
    {
      v5 = a5();
    }
  }

  else if (a1)
  {
    v5 = a3();
  }

  else
  {
    v5 = a2();
  }

  v6 = v5;
  swift_beginAccess();
  return *v6;
}

void ProgressiveBlurView.init(blurRadius:edge:cutoff:interpolation:)(char a1, void *a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a3;
  v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a1;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = a4;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = a2;
  v8 = a2;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = 1.0;
  v24.size.height = 1.0;
  if (CGRectIsEmpty(v24))
  {
    goto LABEL_5;
  }

  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v9 setScale:1.0];
  [v9 setPreferredRange:2];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v9 format:{0.0, 0.0, 1.0, 1.0}];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 32) = _Q0;
  *(v11 + 48) = a1;
  *(v11 + 56) = a4;
  *(v11 + 64) = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1003B7CF8;
  *(v17 + 24) = v11;
  aBlock[4] = sub_1002486C8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001E3C4;
  aBlock[3] = &unk_1005F21F8;
  v18 = _Block_copy(aBlock);
  v19 = v8;

  v20 = [v10 imageWithActions:v18];

  _Block_release(v18);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    if (v20)
    {
      v21 = [objc_opt_self() _effectWithVariableBlurRadius:v20 imageMask:a3 scale:1.0];

LABEL_6:
      v22.receiver = v4;
      v22.super_class = type metadata accessor for ProgressiveBlurView();
      objc_msgSendSuper2(&v22, "initWithEffect:", v21);

      return;
    }

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

Swift::Void __swiftcall ProgressiveBlurView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ProgressiveBlurView();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  ProgressiveBlurView.updateEffect()();
}

Swift::Void __swiftcall ProgressiveBlurView.updateEffect()()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius];
  v10 = v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge];
  v11 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff];
  v12 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation];
  v21.origin.x = v2;
  v21.origin.y = v4;
  v21.size.width = v6;
  v21.size.height = v8;
  if (CGRectIsEmpty(v21))
  {
    goto LABEL_5;
  }

  v13 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v13 setScale:1.0];
  [v13 setPreferredRange:2];
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v13 format:{v2, v4, v6, v8}];
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v4;
  *(v15 + 32) = v6;
  *(v15 + 40) = v8;
  *(v15 + 48) = v10;
  *(v15 + 56) = v11;
  *(v15 + 64) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1003B7CF8;
  *(v16 + 24) = v15;
  v20[4] = sub_1002486C8;
  v20[5] = v16;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_10001E3C4;
  v20[3] = &unk_1005F2270;
  v17 = _Block_copy(v20);
  v12 = v12;

  v18 = [v14 imageWithActions:v17];

  _Block_release(v17);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    if (v18)
    {
      v19 = [objc_opt_self() _effectWithVariableBlurRadius:v18 imageMask:v9 scale:1.0];

LABEL_6:
      [v0 setEffect:v19];

      return;
    }

LABEL_5:

    v19 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1003B75F0(void *a1, unsigned __int8 a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = [objc_allocWithZone(CAGradientLayer) init];
  [v16 setBounds:{a4, a5, a6, a7}];
  [v16 setStartPoint:{sub_1003B6EC8(a2, CGPoint.topCenter.unsafeMutableAddressor, CGPoint.centerLeft.unsafeMutableAddressor, CGPoint.centerRight.unsafeMutableAddressor, CGPoint.bottomCenter.unsafeMutableAddressor)}];
  [v16 setEndPoint:{sub_1003B6EC8(a2, CGPoint.bottomCenter.unsafeMutableAddressor, CGPoint.centerRight.unsafeMutableAddressor, CGPoint.centerLeft.unsafeMutableAddressor, CGPoint.topCenter.unsafeMutableAddressor)}];
  sub_100004CB8(&qword_10063F4F0, &unk_100532080);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1005126C0;
  v18 = objc_opt_self();
  v19 = [v18 whiteColor];
  v20 = [v19 colorWithAlphaComponent:a8];

  v21 = [v20 CGColor];
  _s3__C7CGColorCMa_0(0);
  v23 = v22;
  *(v17 + 56) = v22;
  *(v17 + 32) = v21;
  v24 = [v18 whiteColor];
  v25 = [v24 colorWithAlphaComponent:0.0];

  v26 = [v25 CGColor];
  *(v17 + 88) = v23;
  *(v17 + 64) = v26;
  isa = sub_1004DD85C().super.isa;

  [v16 setColors:isa];

  sub_100004CB8(&qword_100642970, &qword_100529AD0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100511AB0;
  *(v28 + 32) = a3;
  sub_1003B7C7C();
  v29 = a3;
  v30 = sub_1004DD85C().super.isa;

  [v16 setInterpolations:v30];

  v31 = [a1 CGContext];
  [v16 renderInContext:v31];
}

uint64_t sub_1003B796C()
{

  return swift_deallocObject();
}

double sub_1003B79B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id ProgressiveBlurView.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect:a1];

  return v3;
}

id ProgressiveBlurView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressiveBlurView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1003B7AC4()
{
  result = qword_1006441D8;
  if (!qword_1006441D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006441D8);
  }

  return result;
}

unint64_t sub_1003B7B1C()
{
  result = qword_1006441E0;
  if (!qword_1006441E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006441E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProgressiveBlur(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ProgressiveBlur(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1003B7C28()
{
  result = qword_100644210;
  if (!qword_100644210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644210);
  }

  return result;
}

unint64_t sub_1003B7C7C()
{
  result = qword_100641C88;
  if (!qword_100641C88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100641C88);
  }

  return result;
}

id sub_1003B7EC4(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() effectWithStyle:a2];
  *a3 = result;
  return result;
}

char *QRCodeOverlayViewController.init(qrCode:title:subtitle:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_getObjectType();
  v8 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  *&v6[v8] = [objc_allocWithZone(UIVisualEffectView) init];
  v9 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  *&v6[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *&v6[v10] = [objc_allocWithZone(CAShapeLayer) init];
  v11 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v12 = sub_1004DD3FC();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  v14 = [objc_allocWithZone(UIImageView) initWithImage:v13];
  *&v6[v11] = v14;
  v15 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *&v6[v15] = [objc_allocWithZone(UILabel) init];
  v16 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (qword_10063DA98 != -1)
  {
    swift_once();
  }

  v17 = [objc_opt_self() effectForBlurEffect:qword_100673AA8];
  v18 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v17];

  *&v6[v16] = v18;
  v19 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *&v6[v19] = [objc_allocWithZone(UILabel) init];
  *&v6[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] = 0;
  v20 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *&v6[v20] = [objc_allocWithZone(UIScrollView) init];
  v21 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *&v6[v21] = [objc_allocWithZone(UIView) init];
  *&v6[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager] = 0;
  if (a1[4] == 76)
  {
    QRCode.with(errorCorrectionLevel:)(77, v42);
    v22 = v43;
    if (v43)
    {
      v23 = v44;
      v25 = v42[1];
      v24 = v42[2];
      v26 = v42[0];
    }

    else
    {
      v24 = a1[2];
      v22 = a1[3];
      v26 = *a1;
      v25 = a1[1];
      sub_1003BB5F8(a1, v40);
      v23 = 76;
    }

    v29 = &v6[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    *v29 = v26;
    *(v29 + 1) = v25;
    *(v29 + 2) = v24;
    *(v29 + 3) = v22;
    *(v29 + 4) = v23;
  }

  else
  {
    v27 = &v6[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v28 = *(a1 + 1);
    *v27 = *a1;
    *(v27 + 1) = v28;
    *(v27 + 4) = a1[4];
    sub_1003BB5F8(a1, v42);
  }

  v30 = type metadata accessor for QRCodeOverlayViewController();
  v41.receiver = v6;
  v41.super_class = v30;
  v31 = objc_msgSendSuper2(&v41, "initWithNibName:bundle:", 0, 0);
  v32 = *(v31 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel);
  v33 = v31;
  v34 = v32;
  v35 = sub_1004DD3FC();

  [v34 setText:v35];

  v36 = *(v33 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel);
  v37 = sub_1004DD3FC();

  [v36 setText:v37];

  sub_100004CB8(qword_100640A00, &unk_100532090);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100511DA0;
  *(v38 + 32) = sub_1004D999C();
  *(v38 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_1004DE06C();
  swift_unknownObjectRelease();

  sub_1003BB6D4(a1);

  return v33;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidLoad()()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 3)
  {
    v4 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] text];
    [v1 setTitle:v4];
  }

  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 clearColor];
  [v6 setBackgroundColor:v8];

  v9 = [v1 navigationItem];
  sub_100006F10(0, &qword_10063E8F8, UIBarButtonItem_ptr);
  sub_100006F10(0, &qword_10063E980, UIAction_ptr);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44.value.super.super.isa = sub_1004DE62C();
  v44.is_nil = 0;
  isa = sub_1004DDFDC(UIBarButtonSystemItemDone, v44, v45).super.super.isa;
  [v9 setLeftBarButtonItem:{isa, 0, 0, 0, sub_1003BB760, v10}];

  v12 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"dismissAnimated"];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  v41 = v12;
  [v13 addGestureRecognizer:v12];

  v15 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  v16 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
  v42 = &v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  v17 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 24];
  v18 = *&v16[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v16[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = v17;
  v19 = v17;
  v20 = v16;

  [*&v20[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v19];
  v40 = v15;
  [*&v1[v15] setAlpha:0.0];
  v39 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView] setContentMode:1];
  v21 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel];
  sub_100006F10(0, &qword_100643860, UIFont_ptr);
  v23 = v22;
  v24 = sub_1004DE48C();
  [v23 setFont:v24];

  v25 = *&v1[v21];
  v26 = [v7 whiteColor];
  [v25 setTextColor:v26];

  [*&v1[v21] setTextAlignment:1];
  [*&v1[v21] setNumberOfLines:0];
  [*&v1[v21] setAlpha:0.0];
  [*&v1[v21] setAdjustsFontForContentSizeCategory:1];
  v27 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  v28 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 preferredFontForTextStyle:UIFontTextStyleBody];
  [v30 setFont:v31];

  [*&v1[v27] setTextAlignment:1];
  [*&v1[v27] setNumberOfLines:0];
  [*&v1[v27] setAlpha:0.0];
  [*&v1[v27] setAdjustsFontForContentSizeCategory:1];
  v32 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  v33 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer];
  v34 = [v7 blackColor];
  v35 = [v34 CGColor];

  [v33 setFillColor:v35];
  [*&v1[v32] setFillRule:kCAFillRuleNonZero];
  [*&v1[v32] setCompositingFilter:kCAFilterDestOut];
  if (*(v42 + 4) != 76)
  {
    v36 = [*&v1[v40] layer];
    [v36 addSublayer:*&v1[v32]];

    [*&v1[v40] addSubview:*&v1[v39]];
  }

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    [v37 addSubview:*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView]];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_1003B899C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    QRCodeOverlayViewController.dismissAnimated()();
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v2 = v1;
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v5 = aBlock - v4;
  v6 = type metadata accessor for QRCodeOverlayViewController();
  v45.receiver = v2;
  v45.super_class = v6;
  objc_msgSendSuper2(&v45, "viewIsAppearing:", a1);
  v7 = [objc_allocWithZone(UIView) init];
  v8 = [v2 traitCollection];
  [v8 userInterfaceIdiom];

  sub_1004DE4CC();
  v9 = sub_1004DE53C();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  sub_1004DE54C();
  v10 = [v7 layer];
  [v10 setCornerCurve:kCACornerCurveContinuous];

  [v7 setClipsToBounds:1];
  [v7 setAlpha:0.0];
  v11 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  [v7 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView]];
  v12 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] = v7;
  v13 = v7;

  v14 = [v2 traitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 != 3)
  {
    v32 = objc_opt_self();
    v33 = [v32 whiteColor];
    [v13 setBackgroundColor:v33];

    v34 = [*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView] contentView];
    v35 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
    [v34 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView]];

    v36 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
    [*&v2[v35] addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView]];
    [*&v2[v36] addSubview:v13];
    [*&v2[v36] addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel]];
    v37 = *&v2[v36];
    v38 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
    [v37 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView]];
    v39 = [*&v2[v38] contentView];
    [v39 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel]];

    v40 = *&v2[v11];
    v41 = [v32 blackColor];
    v42 = *&v40[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v40[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v41;
    v43 = v41;

    sub_1003BAD70();
    v30 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView];
    v31 = [v32 blackColor];
    [v30 setTintColor:v31];
    goto LABEL_6;
  }

  v16 = *&v2[v11];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 labelColor];
  v20 = *&v18[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
  *&v18[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v19;
  v21 = v19;

  sub_1003BAD70();
  v22 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView];
  v23 = [v17 labelColor];
  [v22 setTintColor:v23];

  v24 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_1003B8FBC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003BB590;
  aBlock[3] = &unk_1005F23D0;
  v25 = _Block_copy(aBlock);
  v26 = [v24 initWithDynamicProvider:v25];
  _Block_release(v25);

  [v13 setBackgroundColor:v26];

  v27 = [v2 view];
  if (v27)
  {
    v28 = v27;
    [v27 addSubview:v13];

    v29 = [v2 view];
    if (v29)
    {
      v30 = v29;
      v31 = *&v2[v11];
      [v30 addSubview:v31];
LABEL_6:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1003B8FBC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != 2)
  {
    v3 = &selRef_blackColor;
  }

  v4 = [v2 *v3];
  v5 = [v4 colorWithAlphaComponent:0.1];

  return v5;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v13, "viewDidAppear:", a1);
  v3 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager;
  if (*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager])
  {
LABEL_2:
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v12[4] = sub_1003BB780;
    v12[5] = v5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100012680;
    v12[3] = &unk_1005F2420;
    v6 = _Block_copy(v12);
    v7 = v1;

    [v4 animateWithDuration:v6 animations:0.25];
    _Block_release(v6);
    return;
  }

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 window];

    if (v10)
    {
      v11 = [v10 windowScene];

      if (v11)
      {
        type metadata accessor for BrightnessManager();
        swift_allocObject();
        *&v1[v3] = BrightnessManager.init(windowScene:)(v11);
      }
    }

    goto LABEL_2;
  }

  __break(1u);
}

double sub_1003B925C(char *a1)
{
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel] setAlpha:1.0];
  v2 = *&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView];
  v3 = [a1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 3)
  {
    if (qword_10063DAA0 != -1)
    {
      swift_once();
    }

    v5 = &qword_100673AB0;
  }

  else
  {
    if (qword_10063DA98 != -1)
    {
      swift_once();
    }

    v5 = &qword_100673AA8;
  }

  [v2 setEffect:*v5];

  if (*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager])
  {

    BrightnessManager.increaseBrightnessIfNeeded()();
  }

  return result;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v226.receiver = v0;
  v226.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v226, "viewDidLayoutSubviews");
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  v4 = [v1 view];
  v5 = v4;
  if (v3 != 3)
  {
    if (!v4)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    [v4 bounds];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;

    if (qword_10063DA58 != -1)
    {
      swift_once();
    }

    v57 = *&qword_100673A68;
    if (qword_10063DA60 != -1)
    {
      swift_once();
    }

    v58 = *&qword_100673A70;
    v59 = v57 + *&qword_100673A70;
    v60 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
    v229 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v230 = v60;
    v231 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
    sub_1003BB5F8(&v229, &v225);
    if (qword_10063DA70 != -1)
    {
      swift_once();
    }

    v61 = *&qword_100673A80;
    v246.origin.x = v50;
    v246.origin.y = v52;
    v246.size.width = v54;
    v246.size.height = v56;
    Width = CGRectGetWidth(v246);
    v247.origin.x = v50;
    v247.origin.y = v52;
    v247.size.width = v54;
    v247.size.height = v56;
    Height = CGRectGetHeight(v247);
    if (Height >= Width)
    {
      Height = Width;
    }

    v64 = Height - (v59 + v59);
    if (v64 >= v61)
    {
      v65 = v61;
    }

    else
    {
      v65 = v64;
    }

    v66 = [v1 traitCollection];
    [v66 displayScale];
    v68 = v67;

    v70 = QRCode.dotAdjustedWidth(with:scale:)(v69, v65, v68);
    sub_1003BB6D4(&v229);
    v248.origin.x = v50;
    v248.origin.y = v52;
    v248.size.width = v54;
    v248.size.height = v56;
    v71 = CGRectGetWidth(v248);
    v72 = [v1 view];
    if (!v72)
    {
      goto LABEL_57;
    }

    v73 = v72;
    [v72 safeAreaInsets];
    v75 = v74;

    v76 = [v1 view];
    if (!v76)
    {
LABEL_58:
      __break(1u);
      return;
    }

    v77 = v76;
    v224 = v70;
    v78 = v58 + v58 + v70;
    [v76 safeAreaInsets];

    v79 = sub_10001087C(v50, v52, v54, v56, v75, (v71 - v78) * 0.5);
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v219 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] sizeThatFits:{v82, v84}];
    v220 = v86;
    v88 = v87;
    v89 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel] sizeThatFits:{v83, v85}];
    v223 = v91;
    if (qword_10063DA80 != -1)
    {
      v214 = v90;
      swift_once();
      v90 = v214;
    }

    v216 = v78 + *&qword_100673A90;
    v92 = v88 + v78 + *&qword_100673A90;
    if (qword_10063DA88 != -1)
    {
      v215 = v90;
      swift_once();
      v90 = v215;
    }

    v221 = v88;
    v222 = v90;
    v218 = *&qword_100673A98;
    v93 = v90 + v92 + *&qword_100673A98;
    if (qword_10063DA90 != -1)
    {
      swift_once();
    }

    v94 = *&qword_100673AA0;
    v95 = v93 + v94 + v94;
    v249.origin.x = v79;
    v249.origin.y = v81;
    v249.size.width = v83;
    v249.size.height = v85;
    v96 = CGRectGetWidth(v249);
    v97 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView] setFrame:{v79, v81, v83, v85}];
    [*&v1[v97] setContentSize:{v96, v95}];
    v250.origin.x = v79;
    v250.origin.y = v81;
    v250.size.width = v83;
    v250.size.height = v85;
    v98 = CGRectGetHeight(v250);
    v99 = *&v1[v97];
    v100 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView];
    v101 = v99;
    if (v98 >= v95)
    {
      v102 = 0.0;
    }

    else
    {
      v102 = v94;
    }

    sub_1004DE3BC(0.0, v102, v96, v95);
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v110 = v109;

    [v100 setFrame:{v104, v106, v108, v110}];
    v111 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView] bounds];
    v115 = v114;
    v116 = v112;
    v117 = v113;
    v118 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView;
    v119 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
    v217 = v120;
    if (v119)
    {
      v121 = *&v1[v111];
      v122 = v119;
      v123 = v121;
      sub_1004DE3BC(0.0, 0.0, v78, v78);
      v125 = v124;
      v127 = v126;
      v129 = v128;
      v131 = v130;

      [v122 setFrame:{v125, v127, v129, v131}];
      v132 = *&v1[v118];
      v133 = v117 - v216;
      v134 = v216 + v116;
      v135 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
      if (v132)
      {
        v136 = v135;
        [v132 bounds];
LABEL_44:
        v137 = v89;
        v138 = [v1 traitCollection];
        [v138 displayScale];

        sub_1004DE3CC();
        [v136 setFrame:*&v224];

        v139 = *&v1[v219];
        v251.origin.x = v115;
        v251.origin.y = v134;
        v251.size.width = v217;
        v251.size.height = v133;
        MinY = CGRectGetMinY(v251);
        v141 = *&v1[v111];
        sub_1004DE3BC(0.0, MinY, v220, v221);
        v143 = v142;
        v145 = v144;
        v147 = v146;
        v149 = v148;

        [v139 setFrame:{v143, v145, v147, v149}];
        v150 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
        v151 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView];
        v252.origin.x = v115;
        v252.origin.y = v221 + v218 + v134;
        v252.size.width = v217;
        v252.size.height = v133 - (v221 + v218);
        v152 = CGRectGetMinY(v252);
        v153 = *&v1[v111];
        sub_1004DE3BC(0.0, v152, v223, v222);
        v155 = v154;
        v157 = v156;
        v159 = v158;
        v161 = v160;

        [v151 setFrame:{v155, v157, v159, v161}];
        v162 = *&v1[v150];
        v34 = *&v1[v137];
        [v162 bounds];
        goto LABEL_45;
      }
    }

    else
    {
      v133 = v113 - v216;
      v134 = v216 + v112;
      v135 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
    }

    v136 = v135;
    goto LABEL_44;
  }

  if (!v4)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v6 = [v4 safeAreaLayoutGuide];

  [v6 layoutFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (qword_10063DA50 != -1)
  {
    swift_once();
  }

  v15 = *&qword_100673A60;
  if (qword_10063DA68 != -1)
  {
    swift_once();
  }

  v16 = *&qword_100673A78;
  v17 = v15 + *&qword_100673A78;
  v18 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
  v229 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  v230 = v18;
  v231 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
  sub_1003BB5F8(&v229, &v225);
  if (qword_10063DA70 != -1)
  {
    swift_once();
  }

  v19 = *&qword_100673A80;
  v244.origin.x = v8;
  v244.origin.y = v10;
  v244.size.width = v12;
  v244.size.height = v14;
  v20 = CGRectGetWidth(v244);
  v245.origin.x = v8;
  v245.origin.y = v10;
  v245.size.width = v12;
  v245.size.height = v14;
  v21 = CGRectGetHeight(v245);
  if (v21 >= v20)
  {
    v21 = v20;
  }

  v22 = v21 - (v17 + v17);
  if (v22 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v22;
  }

  v24 = [v1 traitCollection];
  [v24 displayScale];
  v26 = v25;

  v28 = QRCode.dotAdjustedWidth(with:scale:)(v27, v23, v26);
  sub_1003BB6D4(&v229);
  v29 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  v30 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
  v31 = [v1 traitCollection];
  [v31 displayScale];

  sub_1004DE3CC();
  [v30 setFrame:*&v28];

  v32 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
  if (v32)
  {
    v33 = *&v1[v29];
    v34 = v32;
    [v33 frame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

    v44 = NSDirectionalEdgeInsets.init(edge:length:)(v43, v16);
    v48 = CGRect.outset(by:for:)(0, v44, v45, v46, v47, v36, v38, v40, v42);
LABEL_45:
    [v34 setFrame:v48];
  }

  v163 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView];
  v164 = [v1 view];
  if (!v164)
  {
    __break(1u);
    goto LABEL_55;
  }

  v165 = v164;
  [v164 bounds];
  v167 = v166;
  v169 = v168;
  v171 = v170;
  v173 = v172;

  [v163 setFrame:{v167, v169, v171, v173}];
  v174 = &v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  if (*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32] != 76)
  {
    v175 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView] frame];
    v176 = CGRectGetWidth(v253) * 0.3;
    if (qword_10063DA78 != -1)
    {
      swift_once();
    }

    v177 = *&qword_100673A88;
    if (*&qword_100673A88 < v176)
    {
      v176 = *&qword_100673A88;
    }

    v178 = *&v1[v175];
    sub_1004DE3BC(0.0, 0.0, v176, v176);
    v180 = v179;
    v182 = v181;
    v184 = v183;
    v186 = v185;

    v187 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView] setFrame:{v180, v182, v184, v186}];
    CGAffineTransformMakeScale(&v225, v176 / v177, v176 / v177);
    a = v225.a;
    b = v225.b;
    c = v225.c;
    d = v225.d;
    tx = v225.tx;
    ty = v225.ty;
    v194 = *(v174 + 1);
    v227[0] = *v174;
    v227[1] = v194;
    v228 = *(v174 + 4);
    sub_100004CB8(&qword_100644290, &qword_1005320A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1005272C0;
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v232.x = 12.0;
    v232.y = 15.0;
    *(inited + 32) = CGPointApplyAffineTransform(v232, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v233.x = 12.0;
    v233.y = 6.0;
    *(inited + 48) = CGPointApplyAffineTransform(v233, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v234.y = 6.0;
    v234.x = 36.0;
    *(inited + 64) = CGPointApplyAffineTransform(v234, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v235.y = 0.0;
    v235.x = 36.0;
    *(inited + 80) = CGPointApplyAffineTransform(v235, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v236.y = 0.0;
    v236.x = 85.0;
    *(inited + 96) = CGPointApplyAffineTransform(v236, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v237.x = 85.0;
    v237.y = 90.0;
    *(inited + 112) = CGPointApplyAffineTransform(v237, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v238.x = 36.0;
    v238.y = 90.0;
    *(inited + 128) = CGPointApplyAffineTransform(v238, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v239.x = 36.0;
    v239.y = 95.0;
    *(inited + 144) = CGPointApplyAffineTransform(v239, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v240.x = 0.0;
    v240.y = 95.0;
    *(inited + 160) = CGPointApplyAffineTransform(v240, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v241.x = 0.0;
    v241.y = 57.0;
    *(inited + 176) = CGPointApplyAffineTransform(v241, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v242.x = 12.0;
    v242.y = 57.0;
    *(inited + 192) = CGPointApplyAffineTransform(v242, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v243.x = 12.0;
    v243.y = 15.0;
    *(inited + 208) = CGPointApplyAffineTransform(v243, &v225);
    v196 = *&v1[v187];
    sub_1003BB5F8(v227, &v225);
    [v196 frame];
    v198 = v197;
    v200 = v199;
    v202 = v201;
    v204 = v203;
    [*&v1[v175] bounds];
    v209 = QRCode.dotAlignedPath(with:in:imageBounds:)(inited, v198, v200, v202, v204, v205, v206, v207, v208);
    sub_1003BB6D4(v227);
    swift_setDeallocating();
    v210 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer] setPath:v209];
    v211 = *&v1[v210];
    v212 = *&v1[v175];
    v213 = v211;
    [v212 bounds];
    [v213 setFrame:?];
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.dismissAnimated()()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v12 = sub_1003BB788;
  v13 = v2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100012680;
  v11 = &unk_1005F2470;
  v3 = _Block_copy(&v8);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v12 = sub_1003BB7C8;
  v13 = v5;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100016298;
  v11 = &unk_1005F24C0;
  v6 = _Block_copy(&v8);
  v7 = v4;

  [v1 animateWithDuration:v3 animations:v6 completion:0.25];
  _Block_release(v6);
  _Block_release(v3);
}

double sub_1003BA520(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView) setEffect:0];
  if (*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager))
  {

    BrightnessManager.resetBrightnessToSystemDefault()();
  }

  return result;
}

char *sub_1003BA7B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = 0;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = 0;
  v10 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v11 = [objc_allocWithZone(UIImageView) init];
  v12 = UIView.forAutolayout.getter();

  *&v5[v10] = v12;
  v13 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *&v5[v13] = [objc_allocWithZone(CALayer) init];
  v14 = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v36.receiver = v5;
  v36.super_class = v14;
  v15 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v17 = *&v15[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView];
  v18 = v15;
  [v18 addSubview:v17];
  v19 = objc_opt_self();
  sub_100004CB8(&qword_100642970, &qword_100529AD0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100511D90;
  v21 = [*&v15[v16] leadingAnchor];
  v22 = [v18 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v20 + 32) = v23;
  v24 = [*&v15[v16] trailingAnchor];
  v25 = [v18 trailingAnchor];

  v26 = [v24 constraintEqualToAnchor:v25];
  *(v20 + 40) = v26;
  v27 = [*&v15[v16] topAnchor];
  v28 = [v18 topAnchor];

  v29 = [v27 constraintEqualToAnchor:v28];
  *(v20 + 48) = v29;
  v30 = [*&v15[v16] bottomAnchor];
  v31 = [v18 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v20 + 56) = v32;
  sub_100006F10(0, qword_10063F500, NSLayoutConstraint_ptr);
  isa = sub_1004DD85C().super.isa;

  [v19 activateConstraints:isa];

  sub_100006F10(0, &unk_100644E00, UITraitCollection_ptr);
  sub_1004DE19C();
  v35[3] = v14;
  v35[0] = v18;
  sub_1004DE56C();
  swift_unknownObjectRelease();

  sub_100008D24(v35);
  return v18;
}

Swift::Void __swiftcall QRCodeOverlayViewController.ContainerView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  sub_100006F10(0, &qword_100644298, CATransaction_ptr);
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  static CATransaction.performWithoutAnimation(_:)(sub_1003BB7E0);
}

void sub_1003BAC3C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView);
  v2 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer);
  [v1 bounds];
  [v2 setFrame:?];
}

void sub_1003BAD70()
{
  v1 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
  if (v1)
  {
    v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
    v3 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];
    v4 = kCAFilterSourceIn;
    v15 = v1;
    [v3 setCompositingFilter:v4];
    v5 = *&v0[v2];
    v6 = [v0 traitCollection];
    v7 = [v15 resolvedColorWithTraitCollection:v6];

    v8 = [v7 CGColor];
    [v5 setBackgroundColor:v8];

    v9 = [*&v0[v2] superlayer];
    if (v9)
    {
      v14 = v9;

      v10 = v14;
    }

    else
    {
      v12 = [*&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] layer];
      v13 = *&v0[v2];
      [v12 addSublayer:v13];

      v10 = v15;
    }
  }

  else
  {
    v11 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];

    [v11 removeFromSuperlayer];
  }
}

id sub_1003BAF9C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *QRCodeOverlayViewController.ImageViewRepresentable.makeUIView(context:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = sub_1004DA74C();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = a4;
  v13 = a4;

  [*&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v13];

  if ((a3 & 1) == 0)
  {
    v14 = sub_1004DDF8C();
    v15 = sub_1004DAECC();
    sub_1004D953C(v14, &_mh_execute_header, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_1004DA73C();
    swift_getAtKeyPath();
    v16 = j__swift_release(a2);
    (*(v8 + 8))(v10, v7, v16);
    a2 = v21[1];
  }

  if (a2)
  {
    sub_100006F10(0, &qword_100641C80, UIColor_ptr);

    v17 = sub_1004DE5AC();
    v18 = *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v17;
    v19 = v17;

    sub_1003BAD70();
  }

  return v11;
}

void QRCodeOverlayViewController.ImageViewRepresentable.updateUIView(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = sub_1004DA74C();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image);
  *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = a5;
  v14 = a5;

  [*(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView) setImage:v14];

  if ((a4 & 1) == 0)
  {
    v15 = sub_1004DDF8C();
    v16 = sub_1004DAECC();
    sub_1004D953C(v15, &_mh_execute_header, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_1004DA73C();
    swift_getAtKeyPath();
    v17 = j__swift_release(a3);
    (*(v10 + 8))(v12, v9, v17);
    a3 = v21[1];
  }

  if (a3)
  {
    sub_100006F10(0, &qword_100641C80, UIColor_ptr);

    v18 = sub_1004DE5AC();
    v19 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor);
    *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = v18;
    v20 = v18;

    sub_1003BAD70();
  }
}

uint64_t sub_1003BB4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003BBC24();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003BB504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003BBC24();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003BB568(uint64_t a1)
{
  sub_1003BBC24();
  sub_1004DAA7C();
  __break(1u);
}

id sub_1003BB590(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_1003BB678(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003BB728()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double sub_1003BB768(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003BB790()
{

  return swift_deallocObject();
}

unint64_t sub_1003BB7F4()
{
  result = qword_1006442A0;
  if (!qword_1006442A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006442A0);
  }

  return result;
}

uint64_t sub_1003BB854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003BB89C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1003BB8EC()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v5 = sub_1004DD3FC();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];
  *(v0 + v4) = v7;
  v8 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *(v0 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (qword_10063DA98 != -1)
  {
    swift_once();
  }

  v10 = [objc_opt_self() effectForBlurEffect:qword_100673AA8];
  v11 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];

  *(v0 + v9) = v11;
  v12 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *(v0 + v12) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) = 0;
  v13 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *(v0 + v13) = [objc_allocWithZone(UIScrollView) init];
  v14 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *(v0 + v14) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager) = 0;
  sub_1004DECCC();
  __break(1u);
}

void sub_1003BBB4C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = 0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = 0;
  v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v3 = [objc_allocWithZone(UIImageView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *(v1 + v5) = [objc_allocWithZone(CALayer) init];
  sub_1004DECCC();
  __break(1u);
}

unint64_t sub_1003BBC24()
{
  result = qword_100644300;
  if (!qword_100644300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644300);
  }

  return result;
}

uint64_t Radiosity.ViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25[0] = v2[8];
  sub_100004CB8(&qword_100640118, &qword_10052F6B0);
  sub_1004DB9EC();
  v6 = v26[0];
  v7 = v3[5];
  v26[4] = v3[4];
  v26[5] = v7;
  v8 = v3[7];
  v26[6] = v3[6];
  v26[7] = v8;
  v9 = v3[1];
  v26[0] = *v3;
  v26[1] = v9;
  v10 = v3[3];
  v26[2] = v3[2];
  v26[3] = v10;
  v11 = sub_100004CB8(&qword_100644308, &qword_100532288);
  *(a2 + *(v11 + 40)) = v6;
  v12 = (a2 + *(v11 + 36));
  v13 = v3[5];
  v12[4] = v3[4];
  v12[5] = v13;
  v14 = v3[7];
  v12[6] = v3[6];
  v12[7] = v14;
  v15 = v3[1];
  *v12 = *v3;
  v12[1] = v15;
  v16 = v3[3];
  v12[2] = v3[2];
  v12[3] = v16;
  v17 = sub_100004CB8(&qword_100644310, &qword_100532290);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  v18 = swift_allocObject();
  v19 = v3[7];
  v18[7] = v3[6];
  v18[8] = v19;
  v18[9] = v3[8];
  v20 = v3[3];
  v18[3] = v3[2];
  v18[4] = v20;
  v21 = v3[5];
  v18[5] = v3[4];
  v18[6] = v21;
  v22 = v3[1];
  v18[1] = *v3;
  v18[2] = v22;
  v23 = (a2 + *(sub_100004CB8(&qword_100644318, &unk_100532298) + 36));
  *v23 = sub_1003BBE48;
  v23[1] = v18;
  sub_1003BBE4C(v26, v25);
  return sub_1003BBE84(v3, v25);
}

uint64_t sub_1003BBEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[7];
  v31 = v2[6];
  v32 = v5;
  v33 = v2[8];
  v6 = v2[3];
  v27 = v2[2];
  v28 = v6;
  v7 = v2[5];
  v29 = v2[4];
  v30 = v7;
  v8 = v2[1];
  v25 = *v2;
  v26 = v8;
  v24[0] = v2[8];
  sub_100004CB8(&qword_100640118, &qword_10052F6B0);
  sub_1004DB9EC();
  v9 = v34[0];
  v34[4] = v29;
  v34[5] = v30;
  v34[6] = v31;
  v34[7] = v32;
  v34[0] = v25;
  v34[1] = v26;
  v34[2] = v27;
  v34[3] = v28;
  v10 = sub_100004CB8(&qword_100644308, &qword_100532288);
  *(a2 + *(v10 + 40)) = v9;
  v11 = (a2 + *(v10 + 36));
  v12 = v30;
  v11[4] = v29;
  v11[5] = v12;
  v13 = v32;
  v11[6] = v31;
  v11[7] = v13;
  v14 = v26;
  *v11 = v25;
  v11[1] = v14;
  v15 = v28;
  v11[2] = v27;
  v11[3] = v15;
  v16 = sub_100004CB8(&qword_100644310, &qword_100532290);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = swift_allocObject();
  v18 = v32;
  v17[7] = v31;
  v17[8] = v18;
  v17[9] = v33;
  v19 = v28;
  v17[3] = v27;
  v17[4] = v19;
  v20 = v30;
  v17[5] = v29;
  v17[6] = v20;
  v21 = v26;
  v17[1] = v25;
  v17[2] = v21;
  v22 = (a2 + *(sub_100004CB8(&qword_100644318, &unk_100532298) + 36));
  *v22 = sub_1003BF47C;
  v22[1] = v17;
  sub_1003BBE4C(v34, v24);
  return sub_1003BBE84(&v25, v24);
}

id Radiosity.UIView.__allocating_init(content:isRadiosityEnabled:specs:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = objc_allocWithZone(v3);
  return Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(a1, v5, a3);
}

uint64_t sub_1003BC0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1003BC170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_1003BC1EC(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1004DAA7C();
  __break(1u);
}

void sub_1003BC23C(char a1)
{
  v2 = a1 & 1;
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  if (v1[v3] != v2)
  {
    if (v1[v3])
    {
      [v1 addSubview:*&v1[qword_100644338]];
      [v1 addSubview:*&v1[qword_100644340]];
    }

    else
    {
      [*&v1[qword_100644338] removeFromSuperview];
      [*&v1[qword_100644340] removeFromSuperview];
    }
  }
}

uint64_t Radiosity.UIView.isRadiosityEnabled.getter()
{
  v1 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void Radiosity.UIView.isRadiosityEnabled.setter(char a1)
{
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1003BC23C(v4);
}

void (*Radiosity.UIView.isRadiosityEnabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_1003BC424;
}

void sub_1003BC424(uint64_t a1)
{
  v1 = *a1;
  Radiosity.UIView.isRadiosityEnabled.setter(*(*a1 + 32));

  free(v1);
}

void sub_1003BC464(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 72);
  if (!v2)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
LABEL_6:
  sub_1003BCC48(v5);
  sub_1003BD2C0();
}

double Radiosity.UIView.specs.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_1003BE3AC(v8);
  sub_1003BBE4C(v8, v7);
  v2 = v12;
  a1[4] = v11;
  a1[5] = v2;
  v3 = v14;
  a1[6] = v13;
  a1[7] = v3;
  v4 = v8[1];
  *a1 = v8[0];
  a1[1] = v4;
  result = *&v9;
  v6 = v10;
  a1[2] = v9;
  a1[3] = v6;
  return result;
}

uint64_t Radiosity.UIView.specs.setter(_OWORD *a1)
{
  sub_1003BE57C(a1);

  return sub_1003BE650(a1);
}

void (*Radiosity.UIView.specs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x320uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 792) = v1;
  v5 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = v5[4];
  v10 = v5[5];
  v11 = v5[7];
  v4[6] = v5[6];
  v4[7] = v11;
  v4[4] = v9;
  v4[5] = v10;
  v12 = v5[7];
  v14 = v5[4];
  v13 = v5[5];
  v4[30] = v5[6];
  v4[31] = v12;
  v4[28] = v14;
  v4[29] = v13;
  v15 = *v5;
  v16 = v5[1];
  v17 = v5[3];
  v4[26] = v5[2];
  v4[27] = v17;
  v4[24] = v15;
  v4[25] = v16;
  sub_1003BBE4C(v4, (v4 + 32));
  return sub_1003BC658;
}

void sub_1003BC658(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 464);
  if (a2)
  {
    v2[12] = v2[28];
    v2[13] = v3;
    v4 = v2[31];
    v2[14] = v2[30];
    v2[15] = v4;
    v5 = v2[25];
    v2[8] = v2[24];
    v2[9] = v5;
    v6 = v2[27];
    v2[10] = v2[26];
    v2[11] = v6;
    sub_1003BBE4C((v2 + 8), (v2 + 40));
    sub_1003BE57C(v2 + 8);
    sub_1003BE650((v2 + 8));
    v7 = v2[29];
    v2[36] = v2[28];
    v2[37] = v7;
    v8 = v2[31];
    v2[38] = v2[30];
    v2[39] = v8;
    v9 = v2[25];
    v2[32] = v2[24];
    v2[33] = v9;
    v10 = v2[27];
    v2[34] = v2[26];
    v2[35] = v10;
    v11 = (v2 + 32);
  }

  else
  {
    v2[20] = v2[28];
    v2[21] = v3;
    v12 = v2[31];
    v2[22] = v2[30];
    v2[23] = v12;
    v13 = v2[25];
    v2[16] = v2[24];
    v2[17] = v13;
    v14 = v2[27];
    v2[18] = v2[26];
    v2[19] = v14;
    sub_1003BE57C(v2 + 16);
    v11 = (v2 + 16);
  }

  sub_1003BE650(v11);

  free(v2);
}

__int128 *Radiosity.Specs.containerDetailHeaderArtwork.unsafeMutableAddressor()
{
  if (qword_10063DAA8 != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.containerDetailHeaderArtwork;
}

id Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = swift_isaMask & *v4;
  *(v4 + direct field offset for Radiosity.UIView.content) = a1;
  v10 = (v4 + direct field offset for Radiosity.UIView.specs);
  v11 = *(a3 + 80);
  v10[4] = *(a3 + 64);
  v10[5] = v11;
  v12 = *(a3 + 112);
  v10[6] = *(a3 + 96);
  v10[7] = v12;
  v13 = *(a3 + 16);
  *v10 = *a3;
  v10[1] = v13;
  v14 = *(a3 + 48);
  v10[2] = *(a3 + 32);
  v10[3] = v14;
  *(v4 + direct field offset for Radiosity.UIView.isRadiosityEnabled) = a2;
  if (*(a3 + 72))
  {
    v15 = objc_allocWithZone(UIView);
    v16 = a1;
    sub_1003BBE4C(a3, v35);
    v17 = [v15 init];
  }

  else
  {
    v18 = objc_allocWithZone(_UIPortalView);
    v19 = a1;
    sub_1003BBE4C(a3, v35);
    v17 = [v18 initWithSourceView:v19];
  }

  v20 = v17;
  *(v4 + qword_100644338) = v17;
  v21 = objc_allocWithZone(_UIPortalView);
  v22 = a1;
  v23 = v20;
  v24 = [v21 initWithSourceView:v22];
  *(v4 + qword_100644340) = v24;
  v27 = type metadata accessor for Radiosity.UIView(0, *(v9 + 80), v25, v26);
  v34.receiver = v4;
  v34.super_class = v27;
  v28 = v24;
  v29 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v29 addSubview:{v22, v34.receiver, v34.super_class}];
  if (a2)
  {
    [v29 addSubview:v23];
    [v29 addSubview:v28];
  }

  [v29 bounds];
  [v22 setFrame:?];
  [v22 setAutoresizingMask:18];

  sub_1003BCC48(0);
  sub_1003BD2C0();
  v30 = [v29 traitCollection];
  v31 = [v30 userInterfaceStyle];

  sub_1003BD7C4(v31);
  sub_100004CB8(qword_100640A00, &unk_100532090);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100511DA0;
  *(v32 + 32) = sub_1004D992C();
  *(v32 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1004DE57C();

  swift_unknownObjectRelease();

  sub_1003BE650(a3);

  return v29;
}

double sub_1003BCB28(void *a1)
{
  v1 = a1;
  Radiosity.UIView.intrinsicContentSize.getter();
  v3 = v2;

  return v3;
}

Swift::Void __swiftcall Radiosity.UIView.layoutSubviews()()
{
  v3 = type metadata accessor for Radiosity.UIView(0, *((swift_isaMask & *v2) + 0x50), v0, v1);
  v4.receiver = v2;
  v4.super_class = v3;
  objc_msgSendSuper2(&v4, "layoutSubviews");
  sub_1003BCC48(0);
  sub_1003BD2C0();
}

void sub_1003BCBEC(void *a1)
{
  v1 = a1;
  Radiosity.UIView.layoutSubviews()();
}

void sub_1003BCC34(uint64_t a1)
{
  v2 = *(v1 + qword_100644338);
  *(v1 + qword_100644338) = a1;
}

void sub_1003BCC48(char a1)
{
  v2 = v1;
  if (a1)
  {
    [*&v1[qword_100644338] removeFromSuperview];
    v3 = &v1[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    if (*(v3 + 9))
    {
      v4 = [objc_allocWithZone(UIView) init];
    }

    else
    {
      v4 = [objc_allocWithZone(_UIPortalView) initWithSourceView:*&v2[direct field offset for Radiosity.UIView.content]];
    }

    v5 = *&v2[qword_100644338];
    *&v2[qword_100644338] = v4;
    v6 = v4;

    v7 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
    swift_beginAccess();
    if (v2[v7] == 1)
    {
      [v2 addSubview:v6];
    }
  }

  v8 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v9 = *(v8 + 5);
  v52 = *(v8 + 4);
  v53 = v9;
  v10 = *(v8 + 7);
  v54 = *(v8 + 6);
  v55 = v10;
  v11 = *(v8 + 1);
  *&v50.a = *v8;
  *&v50.c = v11;
  v12 = *(v8 + 3);
  *&v50.tx = *(v8 + 2);
  v51 = v12;
  sub_1003BBE4C(&v50, &v49);
  [v2 bounds];
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  v49 = v50;
  v59 = CGRectApplyAffineTransform(v58, &v49);
  v17 = v59.origin.x;
  v18 = v59.origin.y;
  v19 = v59.size.width;
  v20 = v59.size.height;
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MinX = CGRectGetMinX(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v46 = CGRectGetWidth(v60);
  v61.origin.x = v17;
  v61.origin.y = v18;
  v61.size.width = v19;
  v61.size.height = v20;
  v45 = CGRectGetWidth(v61);
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v21 = CGRectGetHeight(v62);
  v63.origin.x = v17;
  v63.origin.y = v18;
  v63.size.width = v19;
  v63.size.height = v20;
  v22 = CGRectGetHeight(v63);
  sub_1003BE650(&v50);
  v23 = *&v2[qword_100644338];
  [v2 bounds];
  [v23 setFrame:?];

  v24 = [*&v2[qword_100644338] layer];
  v25 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v24 setShadowColor:*(v25 + 7)];

  v26 = [*&v2[qword_100644338] layer];
  v27 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  LODWORD(v28) = *(v27 + 12);
  [v26 setShadowOpacity:v28];

  v29 = [*&v2[qword_100644338] layer];
  v30 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v29 setShadowRadius:v30[8]];

  v31 = [*&v2[qword_100644338] layer];
  v32 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v57 = *(v32 + 72);
  v33 = v57;
  if (v57)
  {
    v34 = &v2[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    v35 = v34[8];
    v36 = sub_1003BF440(&v57, &v49);
    v37 = v33(v36, MinX + (v46 - v45) * 0.5, v21 - v22, v19, v20, v35);
    v39 = v38;
    sub_1003BE974(&v57);
  }

  else
  {
    v37 = 0;
  }

  [v31 setShadowPath:v37];

  v40 = [*&v2[qword_100644338] layer];
  v41 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v56 = *(v41 + 72);
  v42 = v56;
  if (v56)
  {
    v43 = *(&v56 + 1);
    sub_1003BF440(&v56, v48);
    v44 = sub_1003BD14C(v42, v43, v2);
    sub_1003BE974(&v56);
  }

  else
  {
    v44 = 0;
  }

  [v40 setMask:v44];
}

id sub_1003BD14C(uint64_t (*a1)(uint64_t, double, double, double, double, double), uint64_t a2, char *a3)
{
  v5 = [objc_allocWithZone(CAShapeLayer) init];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 blackColor];
  v9 = [v8 CGColor];

  [v7 setBackgroundColor:v9];
  [a3 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &a3[direct field offset for Radiosity.UIView.specs];
  v19 = swift_beginAccess();
  v20 = a1(v19, v11, v13, v15, v17, *(v18 + 8));
  v22 = v21;

  [v7 setPath:v22];
  [v7 setFillRule:kCAFillRuleEvenOdd];

  return v7;
}

void sub_1003BD2C0()
{
  v1 = v0;
  v2 = &v0[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v46 = *(v2 + 4);
  v47 = v3;
  v4 = *(v2 + 7);
  v48 = *(v2 + 6);
  v49 = v4;
  v5 = *(v2 + 1);
  v42 = *v2;
  v43 = v5;
  v6 = *(v2 + 3);
  v44 = *(v2 + 2);
  v45 = v6;
  sub_1003BBE4C(&v42, &rect[3]);
  [v1 bounds];
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  *&rect[3] = v42;
  *&rect[5] = v43;
  *&rect[7] = v44;
  v51 = CGRectApplyAffineTransform(v50, &rect[3]);
  v11 = v51.origin.x;
  rect[0] = *&v51.origin.x;
  rect[2] = *&v51.origin.y;
  v12 = v51.size.width;
  v13 = v51.size.height;
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  rect[1] = COERCE_ID(CGRectGetMinX(v51));
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v14 = CGRectGetWidth(v52);
  v53.origin.x = v11;
  *&v53.origin.y = rect[2];
  v53.size.width = v12;
  v53.size.height = v13;
  v15 = *&rect[1] + (v14 - CGRectGetWidth(v53)) * 0.5;
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  v16 = CGRectGetHeight(v54);
  *&v55.origin.x = rect[0];
  *&v55.origin.y = rect[2];
  v55.size.width = v12;
  v55.size.height = v13;
  v17 = CGRectGetHeight(v55);
  sub_1003BE650(&v42);
  v18 = *&v1[qword_100644340];
  [v18 setFrame:{v15, v16 - v17, v12, v13}];
  v19 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v20 = *(v19 + 1);
  *&rect[3] = *v19;
  *&rect[5] = v20;
  *&rect[7] = *(v19 + 2);
  [v18 setTransform:&rect[3]];
  rect[2] = [v18 layer];
  sub_100004CB8(&qword_10063F4F0, &unk_100532080);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1005126C0;
  v22 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v23 = *(v22 + 13);

  v24 = [v1 traitCollection];
  v25 = [v24 userInterfaceStyle];

  v26 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v23(v25);
  isa = sub_1004DDB7C().super.super.isa;
  [v26 setValue:isa forKey:kCAFilterInputAmount];

  v28 = sub_1003BF3F4();
  *(v21 + 56) = v28;
  *(v21 + 32) = v26;
  swift_beginAccess();
  v29 = kCAFilterGaussianBlur;
  v30 = objc_allocWithZone(CAFilter);

  v31 = [v30 initWithType:v29];
  v32 = sub_1004DDB7C().super.super.isa;
  [v31 setValue:v32 forKey:kCAFilterInputRadius];

  v33 = sub_1004DD9AC().super.super.isa;
  [v31 setValue:v33 forKey:kCAFilterInputNormalizeEdges];

  *(v21 + 88) = v28;
  *(v21 + 64) = v31;
  v34 = sub_1004DD85C().super.isa;

  [rect[2] setFilters:v34];

  v35 = [v18 layer];
  v36 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v37 = *(v36 + 11);

  v38 = [v1 traitCollection];
  v39 = [v38 userInterfaceStyle];

  LODWORD(v16) = v37(v39);

  LODWORD(v40) = LODWORD(v16);
  [v35 setOpacity:v40];
}

void sub_1003BD7C4(uint64_t a1)
{
  sub_1003BD2C0();
  v3 = [*(v1 + qword_100644338) layer];
  v4 = v3;
  if (a1 == 2)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = -2.0;
  }

  if (a1 == 2)
  {
    v6 = -2.0;
  }

  else
  {
    v6 = -1.0;
  }

  [v3 setZPosition:v5];

  v7 = [*(v1 + qword_100644340) layer];
  [v7 setZPosition:v6];
}

id Radiosity.UIView.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Radiosity.UIView(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1003BD934(uint64_t a1)
{
  v2 = *(a1 + direct field offset for Radiosity.UIView.specs + 80);
  v6[4] = *(a1 + direct field offset for Radiosity.UIView.specs + 64);
  v6[5] = v2;
  v3 = *(a1 + direct field offset for Radiosity.UIView.specs + 112);
  v6[6] = *(a1 + direct field offset for Radiosity.UIView.specs + 96);
  v6[7] = v3;
  v4 = *(a1 + direct field offset for Radiosity.UIView.specs + 16);
  v6[0] = *(a1 + direct field offset for Radiosity.UIView.specs);
  v6[1] = v4;
  v5 = *(a1 + direct field offset for Radiosity.UIView.specs + 48);
  v6[2] = *(a1 + direct field offset for Radiosity.UIView.specs + 32);
  v6[3] = v5;
  sub_1003BE650(v6);
}

__n128 Radiosity.Specs.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 Radiosity.Specs.transform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t Radiosity.Specs.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = v4;
  result = sub_10000DE64(v7, v6);
  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  return result;
}

__n128 Radiosity.Specs.shadow.setter(uint64_t a1)
{
  sub_10000DE74(*(v1 + 72), *(v1 + 80));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  *(v1 + 80) = *(a1 + 32);
  return result;
}

uint64_t SyncedLyricsManager.Configuration.animationDuration.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Whitetail.Binding.configurationBlock.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double Radiosity.Specs.radiosity.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = *(v1 + 96);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;

  return result;
}

__n128 Radiosity.Specs.radiosity.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v4;
  *(v1 + 120) = *(a1 + 32);
  return result;
}

uint64_t View.radiosity(specs:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v13 = a1[7];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  sub_1004DB9DC();
  LOBYTE(v5) = v14[0];
  *(&v5 + 1) = *(&v14[0] + 1);
  sub_1003BBE4C(a1, v14);
  sub_1004DB6EC();
  v14[6] = v12;
  v14[7] = v13;
  v14[8] = v5;
  v14[2] = v8;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v11;
  v14[0] = v6;
  v14[1] = v7;
  return sub_1003BE928(v14);
}

double Radiosity.Specs.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[5];
  v19 = v2[4];
  v20 = v5;
  v6 = v2[7];
  v21 = v2[6];
  v22 = v6;
  v7 = v2[1];
  v15 = *v2;
  v16 = v7;
  v8 = v2[3];
  v17 = v2[2];
  v18 = v8;
  sub_1003BBE4C(v2, &v14);
  a1(&v15);
  v9 = v20;
  a2[4] = v19;
  a2[5] = v9;
  v10 = v22;
  a2[6] = v21;
  a2[7] = v10;
  v11 = v16;
  *a2 = v15;
  a2[1] = v11;
  result = *&v17;
  v13 = v18;
  a2[2] = v17;
  a2[3] = v13;
  return result;
}

__n128 sub_1003BDD3C()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.85, 0.85);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.containerDetailHeaderArtwork = v6;
  *algn_100673AD0 = v5;
  qword_100673AE0 = *&tx;
  unk_100673AE8 = *&ty;
  dword_100673AF0 = 1050253722;
  qword_100673AF8 = v3;
  unk_100673B00 = 0x402E000000000000;
  qword_100673B08 = 0;
  unk_100673B10 = 0;
  qword_100673B18 = sub_1003BDE3C;
  unk_100673B20 = 0;
  qword_100673B28 = sub_1003BDE64;
  unk_100673B30 = 0;
  qword_100673B38 = 0x4040000000000000;
  return result;
}

float sub_1003BDE3C(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0.42;
  }

  else
  {
    return flt_100532674[a1];
  }
}

double sub_1003BDE64(unint64_t a1)
{
  if (a1 > 2)
  {
    return 1.8;
  }

  else
  {
    return dbl_100532680[a1];
  }
}

__n128 sub_1003BDEAC()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.94, 0.94);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.nowPlaying = v6;
  *algn_100673B50 = v5;
  qword_100673B60 = *&tx;
  unk_100673B68 = *&ty;
  dword_100673B70 = 1053609165;
  qword_100673B78 = v3;
  unk_100673B80 = 0x402E000000000000;
  qword_100673B88 = 0;
  unk_100673B90 = 0;
  qword_100673B98 = variable initialization expression of VerticalToggleSlider._maxValue;
  unk_100673BA0 = 0;
  qword_100673BA8 = sub_1003BDFA8;
  unk_100673BB0 = 0;
  qword_100673BB8 = 0x4049000000000000;
  return result;
}

__int128 *Radiosity.Specs.nowPlaying.unsafeMutableAddressor()
{
  if (qword_10063DAB0 != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.nowPlaying;
}

uint64_t sub_1003BE024@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return sub_1003BBE4C(a2, v5);
}

double Radiosity.Specs.pathShadow(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *(v4 + 48);
  v25 = *(v4 + 32);
  v26 = v7;
  v27 = *(v4 + 64);
  v8 = *(v4 + 16);
  v23 = *v4;
  v24 = v8;
  v9 = (v4 + 72);
  v10 = *(v4 + 72);
  v22 = *(v4 + 120);
  v11 = *(v4 + 80);
  v12 = *(v5 + 104);
  v20 = *(v5 + 88);
  v21 = v12;
  if (a3)
  {
    sub_1003BBE4C(v5, v19);
  }

  else
  {
    v28 = *v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a1;
    sub_1003BBE4C(v5, v19);
    sub_1003BE974(&v28);
    v10 = sub_1003BE968;
  }

  v15 = v26;
  *(a4 + 32) = v25;
  *(a4 + 48) = v15;
  v16 = v24;
  *a4 = v23;
  *(a4 + 16) = v16;
  result = *&v20;
  v18 = v21;
  *(a4 + 88) = v20;
  *(a4 + 64) = v27;
  *(a4 + 72) = v10;
  *(a4 + 80) = v11;
  *(a4 + 104) = v18;
  *(a4 + 120) = v22;
  return result;
}

id sub_1003BE194(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = objc_opt_self();
  v14 = [v13 bezierPathWithRoundedRect:a1 byRoundingCorners:a2 cornerRadii:{a3, a4, a5, a7, a7}];
  v15 = [v14 CGPath];

  v16 = [v13 bezierPathWithRoundedRect:a2 cornerRadius:{a3, a4, a5, a7}];
  sub_1004DDF0C();
  v19 = [v13 bezierPathWithRoundedRect:sub_10001087C(a2 cornerRadius:{a3, a4, a5, v17, v18)}];
  CGPathCreateMutable();
  v20 = [v16 CGPath];
  sub_1004DE00C();

  v21 = [v19 CGPath];
  sub_1004DE00C();

  return v15;
}

_BYTE *sub_1003BE350(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result == 1)
  {
    result = a2(&v4);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

__n128 sub_1003BE3AC@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v4;
  v5 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v5;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  result = *(v3 + 32);
  v8 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v8;
  return result;
}

id sub_1003BE414(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1004DA23C();
  v12 = type metadata accessor for Radiosity.UIView(0, v9, v10, v11);
  (*(v6 + 16))(v8, v3, v5);
  v13 = sub_1004DA20C();
  v14 = *(v4 + 36);
  LOBYTE(v4) = *(v3 + *(v4 + 40));
  v15 = *(v3 + v14 + 80);
  v22[4] = *(v3 + v14 + 64);
  v22[5] = v15;
  v16 = *(v3 + v14 + 112);
  v22[6] = *(v3 + v14 + 96);
  v22[7] = v16;
  v17 = *(v3 + v14 + 16);
  v22[0] = *(v3 + v14);
  v22[1] = v17;
  v18 = *(v3 + v14 + 48);
  v22[2] = *(v3 + v14 + 32);
  v22[3] = v18;
  sub_1003BBE4C(v22, v21);
  v19 = objc_allocWithZone(v12);
  return Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(v13, v4, v22);
}

double sub_1003BE57C(_OWORD *a1)
{
  v3 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v4 = v3[5];
  v17 = v3[4];
  v18 = v4;
  v5 = v3[7];
  v19 = v3[6];
  v20 = v5;
  v6 = v3[1];
  v14[0] = *v3;
  v14[1] = v6;
  v7 = v3[3];
  v15 = v3[2];
  v16 = v7;
  v21[0] = v14[0];
  v21[1] = v6;
  v21[2] = v15;
  v21[3] = v7;
  v21[4] = v17;
  v21[5] = v4;
  v21[6] = v19;
  v21[7] = v5;
  v8 = a1[3];
  v3[2] = a1[2];
  v3[3] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  v10 = a1[7];
  v3[6] = a1[6];
  v3[7] = v10;
  v11 = a1[5];
  v3[4] = a1[4];
  v3[5] = v11;
  sub_1003BBE4C(v14, v13);
  sub_1003BBE4C(a1, v13);
  sub_1003BE650(v21);
  sub_1003BC464(v14);
  sub_1003BE650(v14);
  return result;
}

void sub_1003BE6AC(void *a1, uint64_t a2)
{
  v5 = __chkstk_darwin();
  (*(v7 + 16))(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, v5);
  sub_1004DA22C();
  [a1 invalidateIntrinsicContentSize];
  v8 = (v2 + *(a2 + 36));
  v9 = v8[5];
  v14[4] = v8[4];
  v14[5] = v9;
  v10 = v8[7];
  v14[6] = v8[6];
  v14[7] = v10;
  v11 = v8[1];
  v14[0] = *v8;
  v14[1] = v11;
  v12 = v8[3];
  v14[2] = v8[2];
  v14[3] = v12;
  sub_1003BBE4C(v14, v13);
  sub_1003BE57C(v14);
  sub_1003BE650(v14);
  Radiosity.UIView.isRadiosityEnabled.setter(*(v2 + *(a2 + 40)));
}

void sub_1003BE840(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceStyle];

  sub_1003BD7C4(v2);
}

uint64_t sub_1003BE9D0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1003BE9E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1003BEA14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003BEA5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003BEB38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003BEB80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003BEBF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1003BEC38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003BEC90(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003BECE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1003BED34(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_1003BED78()
{
  result = qword_1006443C8;
  if (!qword_1006443C8)
  {
    sub_100008DE4(&qword_100644318, &unk_100532298);
    sub_100042B08(&qword_1006443D0, &qword_100644308, &qword_100532288, &unk_100532618);
    sub_100042B08(&qword_1006443D8, &qword_1006443E0, &qword_100532500, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006443C8);
  }

  return result;
}

uint64_t sub_1003BEE5C(void *a1)
{
  sub_1004DA32C();
  sub_1003BEEC0();
  return swift_getWitnessTable();
}

unint64_t sub_1003BEEC0()
{
  result = qword_1006443E8[0];
  if (!qword_1006443E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006443E8);
  }

  return result;
}

uint64_t sub_1003BEF14(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003BEF9C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * (((v6 + 7) & 0xF8) - 127));
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_1003BF0F0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 120) = 0;
          result = 0.0;
          *(v19 + 104) = 0u;
          *(v19 + 88) = 0u;
          *(v19 + 72) = 0u;
          *(v19 + 56) = 0u;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 56) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

uint64_t sub_1003BF33C()
{
  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1003BF3F4()
{
  result = qword_10063F4F8;
  if (!qword_10063F4F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10063F4F8);
  }

  return result;
}

uint64_t sub_1003BF4A4(uint64_t a1)
{
  sub_1004D9D8C();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_1004DA52C();
}

uint64_t Reactions.StackView.Model.reaction.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

double sub_1003BF630@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1003BF6B4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

uint64_t Reactions.StackView.Model.reaction.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

void (*Reactions.StackView.Model.reaction.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004D9B5C();
  return sub_1001F6F60;
}

uint64_t Reactions.StackView.Model.$reaction.setter(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100644480, &qword_1005326E8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100004CB8(&qword_100644478, &qword_1005326E0);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$reaction.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100004CB8(&qword_100644480, &qword_1005326E8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100004CB8(&qword_100644478, &qword_1005326E0);
  sub_1004D9B3C();
  swift_endAccess();
  return sub_1001F6F64;
}

uint64_t Reactions.StackView.Model.count.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

void sub_1003BFB94(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a2 = v3;
}

uint64_t sub_1003BFC18(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

uint64_t Reactions.StackView.Model.count.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

void (*Reactions.StackView.Model.count.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004D9B5C();
  return sub_1001F6F60;
}

uint64_t Reactions.StackView.Model.$count.setter(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100644498, &qword_100532740);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100004CB8(&qword_100644490, &qword_100532738);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$count.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100004CB8(&qword_100644498, &qword_100532740);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100004CB8(&qword_100644490, &qword_100532738);
  sub_1004D9B3C();
  swift_endAccess();
  return sub_1001F6F64;
}