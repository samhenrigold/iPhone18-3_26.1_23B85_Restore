void sub_1005BB808(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AudiobookNowPlayingMiniTouchView();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  if (_UISolariumEnabled())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      Strong = *&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardVibrancyContainerView];
    }

    v3 = [objc_opt_self() sharedApplication];
    v4 = [v3 userInterfaceLayoutDirection];

    if (v4 == 1)
    {
      [*&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_artworkWrapperView] frame];
      MinX = CGRectGetMinX(v10);
      v6 = Strong;
    }

    else
    {
      [Strong frame];
      MinX = CGRectGetMinX(v11);
      v6 = *&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_artworkWrapperView];
    }

    [v6 frame];
    MaxX = CGRectGetMaxX(v12);
    v8 = *&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleContainer];
    if (MinX - MaxX >= 75.0)
    {
      [v8 setHidden:0];
      [*&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleContainer] setHidden:v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 57]];
    }

    else
    {
      [v8 setHidden:1];
      [*&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleContainer] setHidden:1];
    }
  }
}

uint64_t sub_1005BB9E0()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v20[-v12];
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_1007A22D4(v10, 0, 0, v15, v3, "Accessibility string for a collapsed audiobook playback UI.", 59, 2);
  v18 = v17;
  (*(v1 + 8))(v6, v0);
  result = (*(v8 + 8))(v13, v7);
  qword_100AEC290 = v16;
  *algn_100AEC298 = v18;
  return result;
}

void sub_1005BBE54()
{
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10080B690;
  sub_1005BC0C8();
  v2 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_cachedGroupedLabelsAXElement);
  if (v2)
  {
    *(v1 + 56) = sub_10000A7C4(0, &unk_100AEDDA0, UIAccessibilityElement_ptr);
    *(v1 + 32) = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = v2;
    if (Strong)
    {
      if ([Strong isHidden])
      {
      }

      else
      {
        v20 = sub_10000A7C4(0, &qword_100AD7620, UIView_ptr);
        v19[0] = Strong;
        v1 = sub_10066A640(1, 2, 1, v1);
        *(v1 + 16) = 2;
        sub_1000076D4(v19, v1 + 64);
      }
    }

    v5 = v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state;
    if ((*(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 88) & 1) == 0)
    {
      v6 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardButton);
      v20 = type metadata accessor for NowPlayingTransportButton();
      v19[0] = v6;
      v7 = *(v1 + 16);
      v8 = *(v1 + 24);
      v9 = v6;
      if (v7 >= v8 >> 1)
      {
        v1 = sub_10066A640((v8 > 1), v7 + 1, 1, v1);
      }

      *(v1 + 16) = v7 + 1;
      sub_1000076D4(v19, v1 + 32 * v7 + 32);
    }

    v10 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingButton);
    v11 = type metadata accessor for NowPlayingTransportButton();
    v20 = v11;
    v19[0] = v10;
    v12 = *(v1 + 16);
    v13 = *(v1 + 24);
    v14 = v12 + 1;
    v15 = v10;
    if (v12 >= v13 >> 1)
    {
      v1 = sub_10066A640((v13 > 1), v12 + 1, 1, v1);
    }

    *(v1 + 16) = v14;
    sub_1000076D4(v19, v1 + 32 * v12 + 32);
    if ((*(v5 + 64) & 1) == 0)
    {
      v16 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardButton);
      v20 = v11;
      v19[0] = v16;
      v17 = *(v1 + 24);
      v18 = v16;
      if ((v12 + 2) > (v17 >> 1))
      {
        v1 = sub_10066A640((v17 > 1), v12 + 2, 1, v1);
      }

      *(v1 + 16) = v12 + 2;
      sub_1000076D4(v19, v1 + 32 * v14 + 32);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1005BC0C8()
{
  v1 = v0;
  v120 = sub_100796CF4();
  v2 = *(v120 - 8);
  __chkstk_darwin(v120);
  v122 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v123 = &v116 - v5;
  v6 = sub_1007A21D4();
  v124 = *(v6 - 8);
  v125 = v6;
  __chkstk_darwin(v6);
  v8 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v121 = &v116 - v10;
  v11 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_cachedGroupedLabelsAXElement;
  if (!*(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_cachedGroupedLabelsAXElement))
  {
    v12 = [objc_allocWithZone(UIAccessibilityElement) initWithAccessibilityContainer:v0];
    v13 = *(v0 + v11);
    *(v0 + v11) = v12;
    v14 = v12;

    if (v14)
    {
      v15 = v8;
      v16 = v121;
      sub_1007A2154();
      v17 = v123;
      sub_100796C94();
      v18 = v120;
      v19 = v122;
      (*(v124 + 16))(v15, v16, v125);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      (*(v2 + 16))(v19, v17, v18);
      sub_1007A22D4(v15, 0, 0, v21, v19, "Accessibility hint informing the user how to switch to the full player from the mini player.", 92, 2);
      (*(v2 + 8))(v17, v18);
      v22 = v16;
      v8 = v15;
      (*(v124 + 8))(v22, v125);
      v23 = sub_1007A2214();

      [v14 setAccessibilityHint:v23];
    }
  }

  v119 = v2;
  v24 = v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state;
  v25 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 8);
  v26 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16);

  v27 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  v30 = v29 + 1;
  if (v29 >= v28 >> 1)
  {
    v27 = sub_10000B3D8((v28 > 1), v29 + 1, 1, v27);
  }

  *(v27 + 2) = v30;
  v31 = &v27[16 * v29];
  *(v31 + 4) = v25;
  *(v31 + 5) = v26;
  v32 = *(v24 + 24);
  v33 = *(v24 + 32);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v35 = v11;
    v36 = v24;
    v117 = v8;
    v37 = v1;
    v38 = v35;
    v39 = *(v27 + 3);
    v40 = v29 + 2;

    if ((v29 + 2) > (v39 >> 1))
    {
      v27 = sub_10000B3D8((v39 > 1), v29 + 2, 1, v27);
    }

    v41 = v119;
    *(v27 + 2) = v40;
    v42 = &v27[16 * v30];
    *(v42 + 4) = v32;
    *(v42 + 5) = v33;
    v43 = v38;
    v1 = v37;
    v8 = v117;
    v24 = v36;
    v11 = v43;
    v44 = *(v1 + v43);
    if (v44)
    {
      goto LABEL_12;
    }

LABEL_15:

    goto LABEL_18;
  }

  v41 = v119;
  v44 = *(v1 + v11);
  if (!v44)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (*(v27 + 2))
  {
    aBlock[0] = v27;
    v45 = v44;
    sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
    sub_10000B4E4();
    sub_1007A20B4();

    v46 = sub_1007A2214();
  }

  else
  {
    v45 = v44;

    v46 = 0;
  }

  [v45 setAccessibilityLabel:v46];

LABEL_18:
  [*(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleLabel) accessibilityFrame];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  [*(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleLabel) accessibilityFrame];
  v135.origin.x = v55;
  v135.origin.y = v56;
  v135.size.width = v57;
  v135.size.height = v58;
  v127.origin.x = v48;
  v127.origin.y = v50;
  v127.size.width = v52;
  v127.size.height = v54;
  v128 = CGRectUnion(v127, v135);
  x = v128.origin.x;
  y = v128.origin.y;
  width = v128.size.width;
  height = v128.size.height;
  v63 = sub_1005B7B44();
  [v63 accessibilityFrame];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;

  v129.origin.x = x;
  v129.origin.y = y;
  v129.size.width = width;
  v129.size.height = height;
  v136.origin.x = v65;
  v136.origin.y = v67;
  v136.size.width = v69;
  v136.size.height = v71;
  v130 = CGRectUnion(v129, v136);
  v72 = v130.origin.x;
  v73 = v130.origin.y;
  v74 = v130.size.width;
  v75 = v130.size.height;
  [*(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingButton) accessibilityFrame];
  MinX = CGRectGetMinX(v131);
  if ((*(v24 + 88) & 1) == 0)
  {
    [*(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardButton) accessibilityFrame];
    v77 = CGRectGetMinX(v132);
    if (v77 < MinX)
    {
      MinX = v77;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v79 = Strong;
    if ([Strong isHidden])
    {
    }

    else
    {
      [v79 accessibilityFrame];
      v80 = CGRectGetMinX(v133);

      if (v80 < MinX)
      {
        MinX = v80;
      }
    }
  }

  v81 = MinX - v72;
  v134.origin.x = v72;
  v134.origin.y = v73;
  v134.size.width = v74;
  v134.size.height = v75;
  v82 = CGRectGetHeight(v134);
  [*(v1 + v11) setAccessibilityFrame:{v72, v73, v81, v82}];
  sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_10080B690;
  if (qword_100AD18D0 != -1)
  {
    swift_once();
  }

  v84 = *algn_100AEC298;
  *(v83 + 32) = qword_100AEC290;
  *(v83 + 40) = v84;
  v85 = *(v1 + v11);
  v118 = v11;
  if (v85)
  {

    v86 = [v85 accessibilityLabel];
    if (v86)
    {
      v87 = v86;
      v88 = sub_1007A2254();
      v90 = v89;

      v92 = *(v83 + 16);
      v91 = *(v83 + 24);
      if (v92 >= v91 >> 1)
      {
        v83 = sub_10000B3D8((v91 > 1), v92 + 1, 1, v83);
      }

      *(v83 + 16) = v92 + 1;
      v93 = v83 + 16 * v92;
      *(v93 + 32) = v88;
      *(v93 + 40) = v90;
    }

    v94 = *(v1 + v11);
    if (v94)
    {
      v95 = v94;
      isa = sub_1007A25D4().super.isa;

      [v95 setAccessibilityUserInputLabels:isa];

      goto LABEL_37;
    }
  }

  else
  {
  }

LABEL_37:
  v97 = v121;
  sub_1007A2154();
  v98 = v123;
  sub_100796C94();
  v100 = v124;
  v99 = v125;
  (*(v124 + 16))(v8, v97, v125);
  type metadata accessor for BundleFinder();
  v101 = swift_getObjCClassFromMetadata();
  v102 = [objc_opt_self() bundleForClass:v101];
  v103 = v122;
  v104 = v120;
  (*(v41 + 16))(v122, v98, v120);
  sub_1007A22D4(v8, 0, 0, v102, v103, "Accessibility string for an action that shows a context menu", 60, 2);
  (*(v41 + 8))(v98, v104);
  (*(v100 + 8))(v97, v99);
  v105 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v106 = swift_allocObject();
  *(v106 + 16) = v105;
  *(v106 + 24) = v72;
  *(v106 + 32) = v73;
  *(v106 + 40) = v81;
  *(v106 + 48) = v82;
  v107 = objc_allocWithZone(UIAccessibilityCustomAction);

  v108 = sub_1007A2214();

  aBlock[4] = sub_1005BD710;
  aBlock[5] = v106;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005BD6B8;
  aBlock[3] = &unk_100A24770;
  v109 = _Block_copy(aBlock);
  v110 = [v107 initWithName:v108 actionHandler:v109];

  _Block_release(v109);

  v111 = *(v1 + v118);
  if (v111)
  {
    sub_1001F1160(&unk_100AD8160, &unk_100813160);
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_100811390;
    *(v112 + 32) = v110;
    sub_10000A7C4(0, &qword_100AEC3F0, UIAccessibilityCustomAction_ptr);
    v113 = v111;
    v114 = v110;
    v115 = sub_1007A25D4().super.isa;

    [v113 setAccessibilityCustomActions:v115];
  }
}

id sub_1005BCB84(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v11 = Strong;
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  v13 = [v11 bkaxAccessibilityShowContextMenuAtPoint:{MidX, CGRectGetMidY(v16)}];

  return v13;
}

void sub_1005BD35C()
{
  v1 = [v0 subviews];
  sub_10000A7C4(0, &qword_100AD7620, UIView_ptr);
  v2 = sub_1007A25E4();

  if (v2 >> 62)
  {
    if (sub_1007A38D4())
    {
      goto LABEL_3;
    }

LABEL_8:

    v7 = 0.0;
    goto LABEL_9;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_1007A3784();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;

  v5 = [v4 layer];

  [v5 cornerRadius];
  v7 = v6;

LABEL_9:
  v8 = [v0 layer];
  [v0 bounds];
  v13 = [objc_opt_self() bezierPathWithRoundedRect:v9 cornerRadius:{v10, v11, v12, v7}];
  v14 = [v13 CGPath];

  [v8 setShadowPath:v14];
}

id sub_1005BD65C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1005BD6B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_1005BD728(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE2138, &qword_1008236E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005BD790(uint64_t a1)
{
  v2 = a1;
  v3 = v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state;
  v4 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64);
  v5 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96);
  v18 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80);
  v19 = v5;
  v20 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112);
  v6 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16);
  v17[0] = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state);
  v7 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32);
  v8 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48);
  v17[1] = v6;
  v17[2] = v7;
  v17[3] = v8;
  v17[4] = v4;
  v23[2] = v7;
  v23[3] = v8;
  v23[0] = v17[0];
  v23[1] = v6;
  v24 = v20;
  v23[5] = v18;
  v23[6] = v5;
  v23[4] = v4;
  v9 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v9;
  *(v3 + 112) = *(a1 + 112);
  v10 = *(a1 + 96);
  *(v3 + 80) = *(a1 + 80);
  *(v3 + 96) = v10;
  v11 = *(a1 + 64);
  *(v3 + 48) = *(a1 + 48);
  *(v3 + 64) = v11;
  *(v3 + 32) = *(a1 + 32);
  sub_10038E0AC(v17, v21);
  sub_10038E0AC(v2, v21);
  sub_10038DFDC(v23);
  v12 = *(v3 + 80);
  v21[4] = *(v3 + 64);
  v21[5] = v12;
  v21[6] = *(v3 + 96);
  v22 = *(v3 + 112);
  v13 = *(v3 + 16);
  v21[0] = *v3;
  v21[1] = v13;
  v14 = *(v3 + 48);
  v21[2] = *(v3 + 32);
  v21[3] = v14;
  sub_10038E0AC(v21, v16);
  LOBYTE(v2) = sub_10074E264(v17, v21);
  sub_10038DFDC(v21);
  if ((v2 & 1) == 0)
  {
    sub_1005BACA8();
  }

  return sub_10038DFDC(v17);
}

void sub_1005BD8B0()
{
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_artworkWrapperView;
  *(v0 + v1) = sub_1005B7834();
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView____lazy_storage___artworkImageView) = 0;
  v2 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleContainer;
  v3 = [objc_allocWithZone(MPUMarqueeView) init];
  [v3 setFadeEdgeInsets:{0.0, 10.0, 0.0, 10.0}];
  [v3 setContentGap:24.0];
  [v3 setUserInteractionEnabled:0];
  LODWORD(v4) = 1132068864;
  [v3 setContentCompressionResistancePriority:0 forAxis:v4];
  *(v0 + v2) = v3;
  v5 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleLabel;
  *(v0 + v5) = sub_1005B7FCC();
  v6 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleContainer;
  v7 = [objc_allocWithZone(MPUMarqueeView) init];
  [v7 setFadeEdgeInsets:{0.0, 10.0, 0.0, 10.0}];
  [v7 setContentGap:24.0];
  [v7 setUserInteractionEnabled:0];
  LODWORD(v8) = 1132068864;
  [v7 setContentCompressionResistancePriority:0 forAxis:v8];
  *(v0 + v6) = v7;
  v9 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleLabel;
  *(v0 + v9) = sub_1005B80E8();
  v10 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardButton;
  *(v0 + v10) = sub_1005B81EC();
  v11 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingButton;
  *(v0 + v11) = sub_1005B8380();
  v12 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardButton;
  *(v0 + v12) = sub_1005B8514();
  v13 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_buyButtonGuide;
  *(v0 + v13) = [objc_allocWithZone(UILayoutGuide) init];
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_cachedGroupedLabelsAXElement) = 0;
  sub_1007A38A4();
  __break(1u);
}

uint64_t type metadata accessor for ThemeOptionsContainerViewModifier(uint64_t a1)
{
  result = qword_100AEC450;
  if (!qword_100AEC450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005BDB60(uint64_t a1)
{
  sub_100247C8C(319);
  if (v1 <= 0x3F)
  {
    sub_1002B3658(319);
    if (v2 <= 0x3F)
    {
      sub_1005BDC1C();
      if (v3 <= 0x3F)
      {
        sub_1005BDC80(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1005BDC1C()
{
  result = qword_100AEC460;
  if (!qword_100AEC460)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100AEC460);
  }

  return result;
}

void sub_1005BDC80(uint64_t a1)
{
  if (!qword_100AEC468)
  {
    type metadata accessor for ThemeOptionsContainerViewModel(255);
    sub_1005C08C0(&qword_100AE65A0, type metadata accessor for ThemeOptionsContainerViewModel, &unk_10083A474);
    v1 = sub_10079C054();
    if (!v2)
    {
      atomic_store(v1, &qword_100AEC468);
    }
  }
}

uint64_t sub_1005BDD30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for ThemeOptionsContainerViewModifier(0);
  sub_1005C0D10(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079BC44();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1007A29C4();
    v14 = sub_10079D244();
    sub_10079AB44(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_1005BDF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v78 = a1;
  v94 = a2;
  v87 = sub_100796CF4();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v82 = &v64 - v6;
  v83 = sub_1007A21D4();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v79 = &v64 - v9;
  v10 = type metadata accessor for ThemeOptionsContainerViewModifier(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  OpaqueTypeConformance2 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v64 - v14;
  v16 = sub_1001F1160(&qword_100AEC4A8, &qword_100833378);
  __chkstk_darwin(v16 - 8);
  v65 = &v64 - v17;
  v88 = sub_1001F1160(&qword_100AEC4B0, &qword_100833380);
  v91 = *(v88 - 8);
  __chkstk_darwin(v88);
  v95 = &v64 - v18;
  v19 = sub_1001F1160(&qword_100AEC4B8, &qword_100833388);
  v92 = *(v19 - 8);
  v93 = v19;
  __chkstk_darwin(v19);
  v84 = &v64 - v20;
  v90 = sub_1001F1160(&qword_100AEC4C0, &unk_100833390);
  __chkstk_darwin(v90);
  v89 = &v64 - v21;
  sub_1005C0534(v2, v15);
  v76 = sub_1007A26F4();
  v22 = sub_1007A26E4();
  v23 = *(v11 + 80);
  v77 = (v23 + 32) & ~v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = &protocol witness table for MainActor;
  sub_1005C0CA8(v15, v24 + ((v23 + 32) & ~v23), type metadata accessor for ThemeOptionsContainerViewModifier);
  v25 = sub_1007A26E4();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = &protocol witness table for MainActor;
  sub_1001F1160(&qword_100AEC4C8, &qword_1008333A0);
  sub_10079E204();
  v72 = v3;
  v74 = v15;
  sub_1005C0534(v3, v15);
  v27 = (v23 + 16) & ~v23;
  v73 = v12;
  v28 = swift_allocObject();
  v75 = type metadata accessor for ThemeOptionsContainerViewModifier;
  sub_1005C0CA8(v15, v28 + v27, type metadata accessor for ThemeOptionsContainerViewModifier);
  v29 = OpaqueTypeConformance2;
  sub_1005C0534(v3, OpaqueTypeConformance2);
  v30 = swift_allocObject();
  sub_1005C0CA8(v29, v30 + v27, type metadata accessor for ThemeOptionsContainerViewModifier);
  v68 = sub_1001F1160(&qword_100AEC4D0, &qword_1008333A8);
  v67 = sub_1001F1160(&qword_100AF26C0, &qword_1008333B0);
  v66 = sub_1001F1160(&qword_100AEC4D8, &qword_1008333B8);
  v69 = sub_100005920(&qword_100AEC4E0, &qword_100AEC4D0, &qword_1008333A8, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v70 = sub_100005920(&qword_100AEC4E8, &qword_100AF26C0, &qword_1008333B0, &protocol conformance descriptor for ThemeOptionsModule<A>);
  v31 = sub_1001F1234(&qword_100AEC4F0, &qword_1008333C0);
  v32 = sub_10079CE84();
  v33 = sub_1005C0694();
  v97 = v31;
  v98 = v32;
  v99 = v33;
  v100 = &protocol witness table for PagePresentationSizing;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v65;
  sub_10079DB54();

  sub_100007840(v34, &qword_100AEC4A8, &qword_100833378);
  v35 = v79;
  sub_1007A2154();
  v36 = v82;
  sub_100796C94();
  v37 = v81;
  v38 = v80;
  v39 = v83;
  (*(v81 + 16))(v80, v35, v83);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v42 = v86;
  v43 = v85;
  v44 = v87;
  (*(v86 + 16))(v85, v36, v87);
  v45 = sub_1007A22D4(v38, 0, 0, v41, v43, "Discard theme unsaved changes Title", 35, 2);
  v47 = v46;
  (*(v42 + 8))(v36, v44);
  (*(v37 + 8))(v35, v39);
  v103 = v45;
  v104 = v47;
  v48 = v72;
  v49 = v74;
  sub_1005C0534(v72, v74);
  v50 = sub_1007A26E4();
  v51 = v77;
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  *(v52 + 24) = &protocol witness table for MainActor;
  sub_1005C0CA8(v49, v52 + v51, v75);
  v53 = sub_1007A26E4();
  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  *(v54 + 24) = &protocol witness table for MainActor;
  sub_10079E204();
  v96 = v48;
  sub_1001F1160(&qword_100ADB788, &qword_100819F38);
  v97 = v68;
  v98 = v67;
  v99 = v66;
  v100 = v69;
  v101 = v70;
  v102 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100206ECC();
  v55 = v84;
  sub_100005920(&qword_100ADB7C8, &qword_100ADB788, &qword_100819F38, &protocol conformance descriptor for TupleView<A>);
  v56 = v88;
  v57 = v95;
  sub_10079DB04();

  (*(v91 + 8))(v57, v56);
  v58 = sub_1005BFF74();
  v95 = *v48;
  if (v95)
  {
    v59 = swift_allocObject();
    *(v59 + 16) = v95;
    v60 = v89;
    (*(v92 + 32))(v89, v55, v93);
    v61 = v60 + *(v90 + 36);
    *v61 = v58 & 1;
    *(v61 + 8) = sub_100318740;
    *(v61 + 16) = v59;
    sub_100042D68(v60, v94);
    v62 = v95;

    return v62;
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_1005C08C0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BEAE8()
{
  v1 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v1 - 8);
  v28 = &v26 - v2;
  v3 = sub_1001F1160(&qword_100AE65A8, &qword_10082A450);
  __chkstk_darwin(v3 - 8);
  v5 = (&v26 - v4);
  v6 = sub_1001F1160(&qword_100AF26C0, &qword_1008333B0);
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for ThemeOptionsContainerViewModifier(0);
  v27 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v5);

  v13 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v5, 1, v13) == 1)
  {
    return sub_100007840(v5, &qword_100AE65A8, &qword_10082A450);
  }

  v16 = v29;
  (*(v29 + 16))(v8, v5, v6);
  sub_1005C0D80(v5);
  (*(v16 + 32))(v11, v8, v6);
  if (sub_1007A0874())
  {
    v17 = v29;
    v18 = sub_100664AD8(v30);
    v20 = v19;
    if (!v14(v19, 1, v13))
    {
      *(v20 + *(v13 + 20)) = 1;
    }

    (v18)(v30, 0);
    return (*(v17 + 8))(v11, v6);
  }

  else
  {
    v21 = *sub_10000E3E8((v27 + *(v12 + 28)), *(v27 + *(v12 + 28) + 24));
    v22 = sub_1007A2744();
    v23 = v28;
    (*(*(v22 - 8) + 56))(v28, 1, 1, v22);
    sub_1007A26F4();

    v24 = sub_1007A26E4();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = &protocol witness table for MainActor;
    v25[4] = v21;
    sub_1003457A0(0, 0, v23, &unk_100833428, v25);

    return (*(v29 + 8))(v11, v6);
  }
}

uint64_t sub_1005BEEE4@<X0>(void **a1@<X1>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_10079CE84();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ThemeOptionsView(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1001F1160(&qword_100AEC518, &qword_1008333D0);
  __chkstk_darwin(v26);
  v9 = &v25 - v8;
  v10 = sub_1001F1160(&qword_100AEC508, &qword_1008333C8);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_1001F1160(&qword_100AEC4F0, &qword_1008333C0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  sub_1001F1160(&qword_100AF26C0, &qword_1008333B0);
  sub_1007A0864();
  v16 = *a1;
  if (*a1)
  {
    type metadata accessor for ChromeStyle(0);
    sub_1005C08C0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    v17 = v16;
    v18 = sub_10079B8A4();
    sub_1005C0CA8(v7, v9, type metadata accessor for ThemeOptionsView);
    v19 = &v9[*(v26 + 36)];
    *v19 = v18;
    v19[1] = v16;
    v20 = *(v10 + 36);
    sub_1005BDD30(&v12[v20]);
    v21 = sub_10079BC44();
    (*(*(v21 - 8) + 56))(&v12[v20], 0, 1, v21);
    sub_10020B3C8(v9, v12, &qword_100AEC518, &qword_1008333D0);
    sub_10020B3C8(v12, v15, &qword_100AEC508, &qword_1008333C8);
    v15[*(v13 + 36)] = 1;
    v22 = v27;
    sub_10079C9D4();
    sub_1005C0694();
    v23 = v30;
    sub_10079D914();
    (*(v29 + 8))(v22, v23);
    return sub_100007840(v15, &qword_100AEC4F0, &qword_1008333C0);
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_1005C08C0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BF2F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v89 = a1;
  v83 = a2;
  v2 = type metadata accessor for ThemeOptionsContainerViewModifier(0);
  v78 = *(v2 - 8);
  v88 = *(v78 + 8);
  __chkstk_darwin(v2 - 8);
  v86 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&qword_100ADB858, &unk_10081A090);
  __chkstk_darwin(v4 - 8);
  v85 = v65 - v5;
  v84 = sub_100796CF4();
  v6 = *(v84 - 8);
  __chkstk_darwin(v84);
  v8 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v65 - v10;
  v12 = sub_1007A21D4();
  v90 = *(v12 - 8);
  v13 = v90;
  __chkstk_darwin(v12);
  v15 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v65 - v17;
  v77 = sub_1001F1160(&qword_100ADB860, &qword_100835800);
  v82 = *(v77 - 8);
  __chkstk_darwin(v77);
  v81 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v80 = v65 - v21;
  __chkstk_darwin(v22);
  v79 = v65 - v23;
  __chkstk_darwin(v24);
  v87 = v65 - v25;
  sub_1007A2154();
  sub_100796C94();
  v76 = *(v13 + 16);
  v65[0] = v15;
  v26 = v12;
  v76(v15, v18, v12);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v75 = ObjCClassFromMetadata;
  v74 = objc_opt_self();
  v28 = [v74 bundleForClass:ObjCClassFromMetadata];
  v73 = *(v6 + 16);
  v66 = v8;
  v29 = v84;
  v73(v8, v11, v84);
  v30 = sub_1007A22D4(v15, 0, 0, v28, v8, "Cancel editing Theme button", 27, 2);
  v32 = v31;
  v33 = *(v6 + 8);
  v71 = v6 + 8;
  v72 = v33;
  v33(v11, v29);
  v34 = *(v90 + 8);
  v90 += 8;
  v70 = v34;
  v35 = v26;
  v34(v18, v26);
  v91 = v30;
  v92 = v32;
  v36 = v85;
  sub_10079BB44();
  v68 = sub_10079BB84();
  v37 = *(v68 - 8);
  v67 = *(v37 + 56);
  v69 = v37 + 56;
  v67(v36, 0, 1, v68);
  v38 = v86;
  sub_1005C0534(v89, v86);
  v39 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v40 = swift_allocObject();
  v78 = type metadata accessor for ThemeOptionsContainerViewModifier;
  sub_1005C0CA8(v38, v40 + v39, type metadata accessor for ThemeOptionsContainerViewModifier);
  v65[1] = sub_100206ECC();
  sub_10079E074();
  sub_1007A2154();
  v41 = v11;
  sub_100796C94();
  v42 = v65[0];
  v76(v65[0], v18, v35);
  v43 = [v74 bundleForClass:v75];
  v44 = v66;
  v45 = v41;
  v46 = v41;
  v47 = v84;
  v73(v66, v45, v84);
  v48 = sub_1007A22D4(v42, 0, 0, v43, v44, "Continue editing Theme with unsaved changes Button", 50, 2);
  v50 = v49;
  v72(v46, v47);
  v70(v18, v35);
  v91 = v48;
  v92 = v50;
  v51 = v85;
  sub_10079BB64();
  v67(v51, 0, 1, v68);
  v52 = v86;
  sub_1005C0534(v89, v86);
  v53 = swift_allocObject();
  sub_1005C0CA8(v52, v53 + v39, v78);
  v54 = v79;
  sub_10079E074();
  v55 = v82;
  v56 = *(v82 + 16);
  v57 = v80;
  v58 = v87;
  v59 = v77;
  v56(v80, v87, v77);
  v60 = v81;
  v56(v81, v54, v59);
  v61 = v83;
  v56(v83, v57, v59);
  v62 = sub_1001F1160(&qword_100ADB868, &qword_10081A0A0);
  v56(&v61[*(v62 + 48)], v60, v59);
  v63 = *(v55 + 8);
  v63(v54, v59);
  v63(v58, v59);
  v63(v60, v59);
  return (v63)(v57, v59);
}

double sub_1005BFB54()
{
  v1 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_1001F1160(&qword_100AE65A8, &qword_10082A450);
  __chkstk_darwin(v4 - 8);
  v6 = (&v15 - v5);
  v7 = type metadata accessor for ThemeOptionsContainerViewModifier(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v6);

  v8 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8))
  {
    sub_100007840(v6, &qword_100AE65A8, &qword_10082A450);
  }

  else
  {
    v10 = *(v6 + *(v8 + 20));
    sub_100007840(v6, &qword_100AE65A8, &qword_10082A450);
    if (v10 == 1)
    {
      v11 = *sub_10000E3E8((v0 + *(v7 + 28)), *(v0 + *(v7 + 28) + 24));
      v12 = sub_1007A2744();
      (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
      sub_1007A26F4();

      v13 = sub_1007A26E4();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = &protocol witness table for MainActor;
      v14[4] = v11;
      sub_1003457A0(0, 0, v3, &unk_10082A4B0, v14);
    }
  }

  return result;
}

uint64_t sub_1005BFDC8()
{
  v0 = sub_1001F1160(&qword_100AE65A8, &qword_10082A450);
  __chkstk_darwin(v0 - 8);
  v2 = (v10 - v1);
  type metadata accessor for ThemeOptionsContainerViewModifier(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v2);

  v3 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  v4 = *(*(v3 - 8) + 48);
  if (v4(v2, 1, v3))
  {
    return sub_100007840(v2, &qword_100AE65A8, &qword_10082A450);
  }

  v6 = *(v2 + *(v3 + 20));
  result = sub_100007840(v2, &qword_100AE65A8, &qword_10082A450);
  if (v6 == 1)
  {
    v7 = sub_100664AD8(v10);
    v9 = v8;
    if (!v4(v8, 1, v3))
    {
      v9[*(v3 + 20)] = 0;
    }

    return (v7)(v10, 0);
  }

  return result;
}

uint64_t sub_1005BFF74()
{
  v1 = sub_1001F1160(&qword_100AE65A8, &qword_10082A450);
  __chkstk_darwin(v1 - 8);
  v3 = (&v7 - v2);
  if (*(v0 + *(type metadata accessor for ThemeOptionsContainerViewModifier(0) + 24)) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v3);

  v4 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v3 + *(v4 + 20));
  }

  sub_100007840(v3, &qword_100AE65A8, &qword_10082A450);
  return v5;
}

uint64_t sub_1005C00C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001F1160(&qword_100AE65A8, &qword_10082A450);
  __chkstk_darwin(v3 - 8);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = (&v17 - v7);
  if (*(v1 + *(type metadata accessor for ThemeOptionsContainerViewModifier(0) + 24)) != 1)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v8);

  v9 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v8, 1, v9))
  {
    v11 = v8;
  }

  else
  {
    v12 = *(v8 + *(v9 + 20));
    sub_100007840(v8, &qword_100AE65A8, &qword_10082A450);
    if (v12)
    {
      goto LABEL_6;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v5);

    if (v10(v5, 1, v9) != 1)
    {
      v15 = sub_1001F1160(&qword_100AF26C0, &qword_1008333B0);
      v16 = *(v15 - 8);
      (*(v16 + 16))(a1, v5, v15);
      sub_1005C0D80(v5);
      return (*(v16 + 56))(a1, 0, 1, v15);
    }

    v11 = v5;
  }

  sub_100007840(v11, &qword_100AE65A8, &qword_10082A450);
LABEL_6:
  v13 = sub_1001F1160(&qword_100AF26C0, &qword_1008333B0);
  return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
}

uint64_t sub_1005C03CC@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE65A8, &qword_10082A450);
  __chkstk_darwin(v4 - 8);
  v6 = (&v10 - v5);
  result = type metadata accessor for ThemeOptionsContainerViewModifier(0);
  if (*(a1 + *(result + 24)) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v6);

    v8 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
    if ((*(*(v8 - 8) + 48))(v6, 1, v8))
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v6 + *(v8 + 20));
    }

    result = sub_100007840(v6, &qword_100AE65A8, &qword_10082A450);
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1005C0534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThemeOptionsContainerViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005C0614@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeOptionsContainerViewModifier(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1005BEEE4(v4, a1);
}

unint64_t sub_1005C0694()
{
  result = qword_100AEC4F8;
  if (!qword_100AEC4F8)
  {
    sub_1001F1234(&qword_100AEC4F0, &qword_1008333C0);
    sub_1005C0720();
    sub_100303C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC4F8);
  }

  return result;
}

unint64_t sub_1005C0720()
{
  result = qword_100AEC500;
  if (!qword_100AEC500)
  {
    sub_1001F1234(&qword_100AEC508, &qword_1008333C8);
    sub_1005C07D8();
    sub_100005920(&qword_100AD6CE0, &qword_100ADB270, &unk_10082FE70, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC500);
  }

  return result;
}

unint64_t sub_1005C07D8()
{
  result = qword_100AEC510;
  if (!qword_100AEC510)
  {
    sub_1001F1234(&qword_100AEC518, &qword_1008333D0);
    sub_1005C08C0(&qword_100AEC520, type metadata accessor for ThemeOptionsView, &unk_100819DB8);
    sub_100005920(&qword_100AD1D60, &unk_100ADB260, &unk_10080B750, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC510);
  }

  return result;
}

uint64_t sub_1005C08C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005C0908()
{
  v1 = type metadata accessor for ThemeOptionsContainerViewModifier(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(v1 + 20);
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10079BC44();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_1000074E0((v3 + *(v1 + 28)));

  return swift_deallocObject();
}

uint64_t sub_1005C0A54@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeOptionsContainerViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1005C03CC(v4, a1);
}

uint64_t sub_1005C0AE8()
{
  v1 = type metadata accessor for ThemeOptionsContainerViewModifier(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v3 = *(v1 + 20);
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10079BC44();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1000074E0((v2 + *(v1 + 28)));

  return swift_deallocObject();
}

uint64_t sub_1005C0CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005C0D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005C0D80(uint64_t a1)
{
  v2 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005C0DDC()
{
  result = qword_100AEC528;
  if (!qword_100AEC528)
  {
    sub_1001F1234(&qword_100AEC4C0, &unk_100833390);
    sub_1001F1234(&qword_100AEC4B0, &qword_100833380);
    sub_1001F1234(&qword_100ADB788, &qword_100819F38);
    sub_1001F1234(&qword_100AEC4D0, &qword_1008333A8);
    sub_1001F1234(&qword_100AF26C0, &qword_1008333B0);
    sub_1001F1234(&qword_100AEC4D8, &qword_1008333B8);
    sub_100005920(&qword_100AEC4E0, &qword_100AEC4D0, &qword_1008333A8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100005920(&qword_100AEC4E8, &qword_100AF26C0, &qword_1008333B0, &protocol conformance descriptor for ThemeOptionsModule<A>);
    sub_1001F1234(&qword_100AEC4F0, &qword_1008333C0);
    sub_10079CE84();
    sub_1005C0694();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100206ECC();
    sub_100005920(&qword_100ADB7C8, &qword_100ADB788, &qword_100819F38, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&unk_100ADB7D0, &unk_100AF34F0, &qword_100819F60, &protocol conformance descriptor for _ValueActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC528);
  }

  return result;
}

double sub_1005C1084()
{
  swift_getKeyPath();
  sub_1005C1AAC(&qword_100AE4230, type metadata accessor for BrightnessController, &unk_100833480);
  sub_100797A14();

  return *(v0 + 32);
}

void sub_1005C1124(double a1)
{
  if (*(v1 + 32) == a1)
  {

    sub_1005C1260(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005C1AAC(&qword_100AE4230, type metadata accessor for BrightnessController, &unk_100833480);
    sub_100797A04();
  }
}

id sub_1005C1260(double a1)
{
  *(v1 + 32) = a1;
  swift_getKeyPath();
  sub_1005C1AAC(&qword_100AE4230, type metadata accessor for BrightnessController, &unk_100833480);
  sub_100797A14();

  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  result = [v3 brightness];
  if (v2 != v5)
  {
    swift_getKeyPath();
    sub_100797A14();

    return [v3 setBrightness:*(v1 + 32)];
  }

  return result;
}

void *sub_1005C1378(void *a1)
{
  v2 = v1;
  v4 = sub_1007A2E74();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001F1160(&qword_100AEC600, &qword_1008334C8);
  v8 = *(v19 - 8);
  __chkstk_darwin(v19);
  v10 = &v18 - v9;
  v2[3] = 0;
  _s5Books17REActionMenuStateC22__observationRegistrar33_32ABA65274D463EF405FFF160E47F6ACLL11Observation0nF0Vvpfi_0();
  v2[2] = a1;
  v11 = a1;
  [v11 brightness];
  v2[4] = v12;
  v13 = [objc_opt_self() defaultCenter];
  v14 = v11;
  sub_1007A2E84();

  sub_1005C1AAC(&qword_100AE19E0, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_10079BA24();
  (*(v5 + 8))(v7, v4);
  swift_allocObject();
  swift_weakInit();
  sub_1005C1AFC();
  v15 = v19;
  v16 = sub_10079BB04();

  (*(v8 + 8))(v10, v15);
  v2[3] = v16;

  return v2;
}

void sub_1005C164C(uint64_t a1@<X8>)
{
  sub_100796574();
  if (!v7)
  {
    sub_1000230BC(v6);
    goto LABEL_5;
  }

  sub_1005C1B60();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 1;
    v3 = 0;
    goto LABEL_6;
  }

  [v5 brightness];
  v3 = v2;

  v4 = 0;
LABEL_6:
  *a1 = v3;
  *(a1 + 8) = v4;
}

void sub_1005C16F8(double *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 32) == v2)
    {
      sub_1005C1260(v2);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1005C1AAC(&qword_100AE4230, type metadata accessor for BrightnessController, &unk_100833480);
      sub_100797A04();
    }
  }
}

uint64_t sub_1005C1858()
{

  v1 = OBJC_IVAR____TtC5Books20BrightnessController___observationRegistrar;
  v2 = sub_100797A54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BrightnessController(uint64_t a1)
{
  result = qword_100AEC560;
  if (!qword_100AEC560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005C1958(uint64_t a1, __n128 a2)
{
  result = sub_100797A54();
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

void *sub_1005C1A44()
{
  v0 = [objc_opt_self() mainScreen];
  type metadata accessor for BrightnessController(0);
  swift_allocObject();
  result = sub_1005C1378(v0);
  qword_100B23668 = result;
  return result;
}

uint64_t sub_1005C1AAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1005C1AFC()
{
  result = qword_100AEC608;
  if (!qword_100AEC608)
  {
    sub_1001F1234(&qword_100AEC600, &qword_1008334C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC608);
  }

  return result;
}

unint64_t sub_1005C1B60()
{
  result = qword_100AEC610;
  if (!qword_100AEC610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AEC610);
  }

  return result;
}

double sub_1005C1BE4(uint64_t a1)
{
  *(v1 + 56) = a1;
  if (a1 != 3)
  {
    v2 = a1;
    v3 = *(*(v1 + 16) + 48);

    v4 = sub_10079FE94();
    v6 = v5;
    if (v4 == sub_10079FE94() && v6 == v7)
    {
    }

    else
    {
      v9 = sub_1007A3AB4();

      if ((v9 & 1) == 0)
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_1005C2C54(&qword_100AD9690, type metadata accessor for PageTurnViewModel, &unk_1008200C4);
        sub_100797A04();

        return result;
      }
    }

    *(v3 + 80) = v2;
    sub_1003AC984();
  }

  return result;
}

BOOL sub_1005C1DB0(uint64_t a1)
{
  v3 = sub_1007A0F74();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100AEB380, &qword_100815DD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  if (*(v1 + 56) > 1u)
  {
    if (*(v1 + 56) != 2)
    {
      v12 = sub_100529430(a1);
      return v12 & 1;
    }

LABEL_6:
    v12 = sub_1004176A0(a1);
    return v12 & 1;
  }

  if (!*(v1 + 56))
  {
    goto LABEL_6;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10079F9D4();
  swift_unknownObjectRelease();
  swift_getObjectType();
  sub_1007A0964();
  sub_10079F3E4();
  swift_unknownObjectRelease();

  (*(v4 + 8))(v6, v3);
  v10 = (*(v4 + 48))(v9, 1, v3) != 1;
  sub_1005C2B68(v9);
  return v10;
}

BOOL sub_1005C2024(unsigned __int8 *a1, unsigned __int8 *a2, __n128 a3)
{
  v3 = *a2;
  if (*a1 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  v5 = sub_10079FE94();
  v7 = v6;
  if (v5 != sub_10079FE94() || v7 != v8)
  {
    v10 = sub_1007A3AB4();

    return v10 & 1;
  }

  return 1;
}

double sub_1005C20E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1007A0634();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  if (*(Strong + 56) > 1u)
  {
    if (*(Strong + 56) != 2)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();

        v17 = sub_1007A1A04();
        swift_unknownObjectRelease();
        swift_getObjectType();
        sub_1007A0B64();
      }

      else
      {
      }

      sub_1007A0614();

      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if (!*(Strong + 56))
  {
LABEL_6:
    (*(v6 + 16))(v14, a1, v5);
    goto LABEL_11;
  }

  (*(v6 + 16))(v14, a2, v5);
LABEL_11:
  sub_10079B904();
  sub_1005C2C54(&qword_100AEB780, &type metadata accessor for PageMovementState, &protocol conformance descriptor for PageMovementState);
  v18 = sub_1007A2124();
  v19 = *(v6 + 8);
  v19(v11, v5);
  if ((v18 & 1) == 0)
  {
    v20 = *(v6 + 16);
    v20(v11, v14, v5);
    v20(v8, v11, v5);
    sub_10079B914();
    v19(v11, v5);
  }

  v19(v14, v5);

  return result;
}

void sub_1005C23D4(uint64_t a1, char a2, void (*a3)(uint64_t, void), void (*a4)(uint64_t, void), void (*a5)(uint64_t, void))
{
  if (*(v5 + 56) > 1u)
  {
    if (*(v5 + 56) != 2)
    {
      a3(a1, a2 & 1);
      return;
    }

LABEL_8:
    (a4)(a1, a2 & 1, a3);
    return;
  }

  if (!*(v5 + 56))
  {
    goto LABEL_8;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    a5(a1, a2 & 1);

    swift_unknownObjectRelease();
  }
}

void sub_1005C2484(double a1, double a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v2 = sub_1007A1A04();
    swift_unknownObjectRelease();
    [v2 contentOffset];

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v3 = sub_1007A1A04();
      swift_unknownObjectRelease();
      swift_getObjectType();
      sub_1007A0B74();
    }
  }
}

void sub_1005C259C(char a1, double a2, double a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v3 = sub_1007A1A04();
    swift_unknownObjectRelease();
    [v3 contentOffset];

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v4 = sub_1007A1A04();
      swift_unknownObjectRelease();
      swift_getObjectType();
      sub_1007A0B74();
    }
  }
}

uint64_t sub_1005C26B8()
{

  sub_10002B130(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for PageMovementController.Mode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PageMovementController.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1005C2888(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1005C289C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_1005C2900()
{
  sub_1001F1160(&qword_100AE63D8, &unk_10082E490);
  sub_1005C2BD0();
  return sub_10079BA14();
}

void sub_1005C2B04()
{
  v1 = *(*v0 + 16);
  v4 = *(v1 + 88);
  v2 = (v1 + 88);
  v3 = v4;
  if (v4)
  {
    v5 = *(*(*v0 + 16) + 96);
    *v2 = 0;
    v2[1] = 0;
    v3();

    sub_100007020(v3, v5);
  }
}

uint64_t sub_1005C2B68(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AEB380, &qword_100815DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005C2BD0()
{
  result = qword_100AE63E0;
  if (!qword_100AE63E0)
  {
    sub_1001F1234(&qword_100AE63D8, &unk_10082E490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE63E0);
  }

  return result;
}

uint64_t sub_1005C2C54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1005C2CA0()
{
  result = qword_100AEC6E0;
  if (!qword_100AEC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC6E0);
  }

  return result;
}

unint64_t sub_1005C2CF8()
{
  result = qword_100AEC6E8;
  if (!qword_100AEC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC6E8);
  }

  return result;
}

uint64_t sub_1005C2D84()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B23670);
  v21 = sub_100008B98(v3, qword_100B23670);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_1005C3128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  sub_1007A26F4();
  v3[30] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v3[31] = v5;
  v3[32] = v4;

  return _swift_task_switch(sub_1005C31C4, v5, v4);
}

uint64_t sub_1005C31C4()
{
  sub_100795A94();
  sub_100795DF4();
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_1005C3274;

  return sub_1004F39A0(v0 + 16);
}

uint64_t sub_1005C3274()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = *(v2 + 248);
    v4 = *(v2 + 256);
    v5 = sub_1005C355C;
  }

  else
  {
    sub_1002A411C(v2 + 16);

    swift_unknownObjectRelease();
    *(v2 + 208) = *(v2 + 136);
    sub_100007840(v2 + 208, &qword_100AE6A50, &qword_10082AB30);
    *(v2 + 200) = *(v2 + 144);
    v6 = v2 + 200;
    sub_100007840(v6, &qword_100AE6A50, &qword_10082AB30);
    v3 = *(v6 + 48);
    v4 = *(v6 + 56);
    v5 = sub_1005C33F0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005C33F0()
{

  v1 = [objc_opt_self() delegate];
  v2 = [v1 menuController];

  v3 = sub_1005C99B8();
  if (v3)
  {
    v0[19] = v0[28];
    v4 = v0[29];
    v0[22] = &type metadata for OpenTableOfContentsIntent;
    v0[20] = v4;

    v5 = sub_100699F0C("books_showTableOfContents:", (v0 + 19));
    sub_100007840((v0 + 19), &unk_100AD5B40, &unk_100811300);
    if (v5)
    {
      sub_100795D24();

      v6 = v0[1];
      goto LABEL_6;
    }
  }

  sub_1005C45F0();
  swift_allocError();
  swift_willThrow();
  v6 = v0[1];
LABEL_6:

  return v6();
}

uint64_t sub_1005C355C()
{

  sub_1002A411C(v0 + 16);

  swift_unknownObjectRelease();
  *(v0 + 192) = *(v0 + 136);
  sub_100007840(v0 + 192, &qword_100AE6A50, &qword_10082AB30);
  *(v0 + 184) = *(v0 + 144);
  sub_100007840(v0 + 184, &qword_100AE6A50, &qword_10082AB30);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005C3620@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v20 = sub_1007967F4();
  v1 = *(v20 - 8);
  __chkstk_darwin(v20);
  v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100796CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v19 - v16;
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  (*(v5 + 16))(v7, v10, v4);
  *v3 = type metadata accessor for BundleFinder();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v20);
  sub_100796834();
  (*(v5 + 8))(v10, v4);
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_1005C3908@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD18E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100796814();
  v3 = sub_100008B98(v2, qword_100B23670);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1005C39B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001F1160(&qword_100AEC710, &qword_100833738);
  __chkstk_darwin(v2 - 8);
  v3 = sub_1001F1160(&qword_100AEC718, &qword_100833740);
  __chkstk_darwin(v3);
  sub_1007961D4();
  v5._object = 0x80000001008DF8B0;
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1007961C4(v5);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AEC720, &qword_100833770);
  sub_1007961B4();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_1007961C4(v6);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_1005C3B58(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002812C;

  return sub_1005C3128(a1, v5, v4);
}

uint64_t sub_1005C3C04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005C3C78();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1005C3C2C(uint64_t a1)
{
  v2 = sub_1005C459C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1005C3C78()
{
  v60 = sub_100796274();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v47 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1001F1160(&qword_100AD5CB0, &unk_100811910);
  __chkstk_darwin(v1 - 8);
  v57 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v56 = &v47 - v4;
  v5 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v5 - 8);
  v71 = &v47 - v6;
  v69 = sub_1007967F4();
  v73 = *(v69 - 8);
  __chkstk_darwin(v69);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_100796CF4();
  v9 = *(v50 - 8);
  __chkstk_darwin(v50);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = sub_1007A21D4();
  v48 = v15;
  v72 = *(v15 - 8);
  v16 = v72;
  __chkstk_darwin(v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v47 - v20;
  v52 = sub_100796814();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v53 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v70 = &v47 - v24;
  sub_1001F1160(&qword_100AD57D0, &qword_100823520);
  sub_100795B74();
  v74 = 0u;
  v75 = 0u;
  *&v76 = 0;
  sub_100795B64();
  v55 = sub_100795AA4();
  v54 = sub_1001F1160(&qword_100ADC580, &qword_1008361A0);
  sub_1007A2154();
  sub_100796C94();
  v25 = v16 + 16;
  v26 = *(v16 + 16);
  v68 = v25;
  v47 = v18;
  v26(v18, v21, v15);
  v27 = v26;
  v28 = *(v9 + 16);
  v66 = v9 + 16;
  v67 = v28;
  v29 = v50;
  v28(v11, v14, v50);
  v49 = type metadata accessor for BundleFinder();
  *v8 = v49;
  v65 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v30 = *(v73 + 104);
  v73 += 104;
  v64 = v30;
  v31 = v69;
  v30(v8);
  sub_100796834();
  v32 = *(v9 + 8);
  v62 = v9 + 8;
  v63 = v32;
  v33 = v29;
  v32(v14, v29);
  v34 = *(v72 + 8);
  v72 += 8;
  v61 = v34;
  v35 = v48;
  v34(v21, v48);
  sub_1007A2154();
  v36 = v14;
  sub_100796C94();
  v37 = v47;
  v38 = v27;
  v27(v47, v21, v35);
  v39 = v33;
  v67(v11, v36, v33);
  v40 = v8;
  v41 = v49;
  *v40 = v49;
  v64(v40, v65, v31);
  v42 = v71;
  sub_100796834();
  v63(v36, v39);
  v61(v21, v35);
  (*(v51 + 56))(v42, 0, 1, v52);
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  sub_1007A2154();
  sub_100796C94();
  v38(v37, v21, v35);
  v67(v11, v36, v39);
  *v40 = v41;
  v64(v40, v65, v69);
  sub_100796834();
  v63(v36, v39);
  v61(v21, v35);
  v43 = v56;
  sub_100795CF4();
  v44 = sub_100795CE4();
  v45 = *(*(v44 - 8) + 56);
  v45(v43, 0, 1, v44);
  v45(v57, 1, 1, v44);
  (*(v59 + 104))(v58, enum case for InputConnectionBehavior.default(_:), v60);
  sub_10020E834();
  sub_100795E74();
  return v55;
}

unint64_t sub_1005C459C()
{
  result = qword_100AEC700;
  if (!qword_100AEC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC700);
  }

  return result;
}

unint64_t sub_1005C45F0()
{
  result = qword_100AEC708;
  if (!qword_100AEC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC708);
  }

  return result;
}

unint64_t sub_1005C4658()
{
  result = qword_100AEC728;
  if (!qword_100AEC728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC728);
  }

  return result;
}

uint64_t sub_1005C46DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_1005C46FC, 0, 0);
}

uint64_t sub_1005C46FC()
{
  v1 = v0[19];
  v2 = sub_1007A2214();
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1005C484C;
  v3 = swift_continuation_init();
  v0[17] = sub_1001F1160(&unk_100AD67E0, &qword_1008168C0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100298E88;
  v0[13] = &unk_100A24C58;
  v0[14] = v3;
  [v1 appLaunchCoordinatorOnConditionMask:1 blockID:v2 performBlock:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005C484C()
{

  return _swift_task_switch(sub_1005C492C, 0, 0);
}

uint64_t sub_1005C492C()
{
  v1 = *(v0 + 144);

  *v1 = [objc_opt_self() defaultManager];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005C49E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_1005C4A08, 0, 0);
}

uint64_t sub_1005C4A08()
{
  v1 = v0[19];
  v2 = sub_1007A2214();
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1005C4B58;
  v3 = swift_continuation_init();
  v0[17] = sub_1001F1160(&unk_100AD67E0, &qword_1008168C0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100298E88;
  v0[13] = &unk_100A24C08;
  v0[14] = v3;
  [v1 appLaunchCoordinatorOnConditionMask:1024 blockID:v2 performBlock:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005C4B58()
{

  return _swift_task_switch(sub_1005C4C38, 0, 0);
}

uint64_t sub_1005C4C38()
{
  *(v0 + 168) = objc_opt_self();
  *(v0 + 176) = sub_1007A26F4();
  *(v0 + 184) = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_1005C4CE8, v2, v1);
}

uint64_t sub_1005C4CE8()
{
  v1 = *(v0 + 168);

  *(v0 + 192) = [v1 delegate];

  return _swift_task_switch(sub_1005C4D70, 0, 0);
}

uint64_t sub_1005C4D70(uint64_t a1)
{
  *(v1 + 200) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_1005C4DFC, v3, v2);
}

uint64_t sub_1005C4DFC()
{
  v1 = *(v0 + 192);

  v2 = [v1 objectGraphHost];

  *(v0 + 208) = *&v2[OBJC_IVAR___BKObjectGraphHost_objectGraph];

  return _swift_task_switch(sub_1005C4E9C, 0, 0);
}

uint64_t sub_1005C4EF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_1005C4F10, 0, 0);
}

uint64_t sub_1005C4F10()
{
  v1 = v0[19];
  v2 = sub_1007A2214();
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1005C5060;
  v3 = swift_continuation_init();
  v0[17] = sub_1001F1160(&unk_100AD67E0, &qword_1008168C0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100298E88;
  v0[13] = &unk_100A24BB8;
  v0[14] = v3;
  [v1 appLaunchCoordinatorOnConditionMask:1024 blockID:v2 performBlock:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005C5060()
{

  return _swift_task_switch(sub_1005C5140, 0, 0);
}

uint64_t sub_1005C5140()
{
  v1 = *(v0 + 144);

  *v1 = sub_1005C59C8();
  v2 = *(v0 + 8);

  return v2();
}

void *sub_1005C51E4(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v9 = sub_100798C64();
  __chkstk_darwin(v9 - 8);
  sub_10000E3E8(a1, a1[3]);
  sub_1001F1160(&unk_100AEC7E0, &qword_100833898);
  result = sub_100798CC4();
  if (result)
  {
    v11 = result;
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    sub_1001F1160(a3, a4);
    v13 = swift_allocObject();
    swift_unknownObjectRetain();
    sub_100798C54();
    sub_100798C84();
    swift_allocObject();
    v14 = sub_100798C74();
    swift_unknownObjectRelease();
    v13[4] = v14;
    v13[5] = 0;
    v13[2] = a5;
    v13[3] = v12;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005C5334(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_1005C5354, 0, 0);
}

uint64_t sub_1005C5354()
{
  v1 = v0[19];
  v2 = sub_1007A2214();
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1005C54A4;
  v3 = swift_continuation_init();
  v0[17] = sub_1001F1160(&unk_100AD67E0, &qword_1008168C0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100298E88;
  v0[13] = &unk_100A24B68;
  v0[14] = v3;
  [v1 appLaunchCoordinatorOnConditionMask:1 blockID:v2 performBlock:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005C54A4()
{

  return _swift_task_switch(sub_1005C5584, 0, 0);
}

uint64_t sub_1005C5584()
{
  *(v0 + 168) = objc_opt_self();
  *(v0 + 176) = sub_1007A26F4();
  *(v0 + 184) = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_1005C5634, v2, v1);
}

uint64_t sub_1005C5634()
{
  v1 = *(v0 + 168);

  *(v0 + 192) = [v1 delegate];

  return _swift_task_switch(sub_1005C56BC, 0, 0);
}

uint64_t sub_1005C56BC(uint64_t a1)
{
  *(v1 + 200) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_1005C5748, v3, v2);
}

uint64_t sub_1005C5748()
{
  v1 = *(v0 + 192);

  *(v0 + 208) = [v1 engagementManager];

  return _swift_task_switch(sub_1005C57D0, 0, 0);
}

void sub_1005C57D0()
{
  v1 = v0[26];
  if (v1)
  {
    v2 = v0[18];
    v3 = *&v1[OBJC_IVAR___BKEngagementManager_manager];

    v2[3] = sub_100799A34();
    v2[4] = &off_100A2E6B8;
    *v2 = v3;
    v4 = v0[1];

    v4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005C5880(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009A34;

  return sub_1005C5334(a1, v4);
}

uint64_t sub_1005C5928(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009A34;

  return sub_1005C4EF0(a1, v4);
}

unint64_t sub_1005C59C8()
{
  result = qword_100AEC7F0;
  if (!qword_100AEC7F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AEC7F0);
  }

  return result;
}

uint64_t sub_1005C5A14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002812C;

  return sub_1005C49E8(a1, v4);
}

uint64_t sub_1005C5AB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009A34;

  return sub_1005C46DC(a1, v4);
}

uint64_t sub_1005C5B6C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AEC800);
  sub_100008B98(v0, qword_100AEC800);
  return sub_10079ACD4();
}

uint64_t sub_1005C5BEC()
{
  v0 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v0 - 8);
  v2 = v15 - v1;
  v3 = sub_1007A2E74();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AEC8B0, &qword_100833908);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  v11 = [objc_opt_self() defaultCenter];
  if (qword_100AD19C8 != -1)
  {
    swift_once();
  }

  sub_1007A2E84();

  sub_100017D8C(&qword_100AE19E0, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_10079BA24();
  (*(v4 + 8))(v6, v3);
  sub_100017E74();
  v12 = sub_1007A2D74();
  v15[1] = v12;
  v13 = sub_1007A2D24();
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
  sub_1005C6294();
  sub_100017D8C(&qword_100AE8CA0, sub_100017E74, &protocol conformance descriptor for OS_dispatch_queue);
  sub_10079BAB4();
  sub_100201E64(v2);

  return (*(v8 + 8))(v10, v7);
}

void sub_1005C5F44(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100796594();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100796584();
  if (v8)
  {
    v9 = v8;
    v23 = 0x656C746974;
    v24 = 0xE500000000000000;
    sub_1007A36B4();
    if (*(v9 + 16) && (v10 = sub_10000E2A4(v25), (v11 & 1) != 0))
    {
      sub_100007484(*(v9 + 56) + 32 * v10, v26);
      sub_10002899C(v25);

      if (swift_dynamicCast())
      {
        v12 = v24;
        *a2 = v23;
        a2[1] = v12;
        return;
      }
    }

    else
    {

      sub_10002899C(v25);
    }
  }

  if (qword_100AD18E8 != -1)
  {
    swift_once();
  }

  v13 = sub_10079ACE4();
  sub_100008B98(v13, qword_100AEC800);
  (*(v5 + 16))(v7, a1, v4);
  v14 = sub_10079ACC4();
  v15 = sub_1007A29B4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25[0] = v17;
    *v16 = 136315138;
    sub_100017D8C(&unk_100AEC8C0, &type metadata accessor for Notification, &protocol conformance descriptor for Notification);
    v18 = sub_1007A3A74();
    v20 = v19;
    (*(v5 + 8))(v7, v4);
    v21 = sub_1000070F4(v18, v20, v25);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Unable to extract achievement title from notification %s", v16, 0xCu);
    sub_1000074E0(v17);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  *a2 = 0;
  a2[1] = 0;
}

unint64_t sub_1005C6294()
{
  result = qword_100AEC8B8;
  if (!qword_100AEC8B8)
  {
    sub_1001F1234(&qword_100AEC8B0, &qword_100833908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC8B8);
  }

  return result;
}

id UIColor.isDark.getter()
{
  v1 = objc_opt_self();
  v2 = [v0 CGColor];
  v3 = [v1 isDarkColor:v2];

  return v3;
}

uint64_t sub_1005C63DC()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AEC8D0);
  sub_100008B98(v0, qword_100AEC8D0);
  return sub_10079ACD4();
}

void sub_1005C6460(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (a1)
  {
    if (Strong)
    {
      sub_10000A7C4(0, &qword_100AD5B98, UIWindow_ptr);
      v6 = a1;
      v7 = sub_1007A3184();

      if (v7)
      {
        return;
      }
    }
  }

  else
  {
    if (!Strong)
    {
      return;
    }
  }

  if (qword_100AD18F0 != -1)
  {
    swift_once();
  }

  v8 = sub_10079ACE4();
  sub_100008B98(v8, qword_100AEC8D0);
  v9 = v2;
  v10 = sub_10079ACC4();
  v11 = sub_1007A29A4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      sub_1001F1160(&unk_100AD5090, &unk_100815670);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10080B690;
      *(v16 + 56) = &type metadata for UInt;
      *(v16 + 64) = &protocol witness table for UInt;
      *(v16 + 32) = v15;
      v17 = v15;
      v18 = sub_1007A2284();
      v20 = v19;
    }

    else
    {
      v20 = 0xE300000000000000;
      v18 = 4079420;
    }

    v21 = sub_1000070F4(v18, v20, &v22);

    *(v12 + 4) = v21;
    sub_1000074E0(v13);
  }

  sub_1005CA280();
  sub_1005C9638();
}

void sub_1005C66C4(unsigned __int8 a1)
{
  if (v1[OBJC_IVAR___BKMenuController_mainContentType] != a1)
  {
    if (qword_100AD18F0 != -1)
    {
      swift_once();
    }

    v2 = sub_10079ACE4();
    sub_100008B98(v2, qword_100AEC8D0);
    v3 = v1;
    v4 = sub_10079ACC4();
    v5 = sub_1007A29A4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      v8 = sub_1007A22E4();
      v10 = sub_1000070F4(v8, v9, &v12);

      *(v6 + 4) = v10;
      sub_1000074E0(v7);
    }

    v11 = [objc_opt_self() mainSystem];
    [v11 setNeedsRebuild];
  }
}

void sub_1005C686C(unsigned __int8 a1)
{
  v2 = v1[OBJC_IVAR___BKMenuController_bookshelfType];
  if (a1 == 2)
  {
    if (v2 == 2)
    {
      return;
    }
  }

  else if (v2 != 2 && ((v2 ^ a1) & 1) == 0)
  {
    return;
  }

  if (qword_100AD18F0 != -1)
  {
    swift_once();
  }

  v4 = sub_10079ACE4();
  sub_100008B98(v4, qword_100AEC8D0);
  v5 = v1;
  v6 = sub_10079ACC4();
  v7 = sub_1007A29A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    sub_1001F1160(&qword_100AECA20, &qword_100833C08);
    v10 = sub_1007A22E4();
    v12 = sub_1000070F4(v10, v11, &v14);

    *(v8 + 4) = v12;
    sub_1000074E0(v9);
  }

  v13 = [objc_opt_self() mainSystem];
  [v13 setNeedsRebuild];
}

void sub_1005C6A48()
{
  if ((sub_1004A3CF8() & 1) == 0)
  {
    if (qword_100AD18F0 != -1)
    {
      swift_once();
    }

    v1 = sub_10079ACE4();
    sub_100008B98(v1, qword_100AEC8D0);
    v2 = v0;
    v3 = sub_10079ACC4();
    v4 = sub_1007A29A4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;

      v7 = sub_1007A25F4();
      v9 = v8;

      v10 = sub_1000070F4(v7, v9, &v12);

      *(v5 + 4) = v10;
      sub_1000074E0(v6);
    }

    v11 = [objc_opt_self() mainSystem];
    [v11 setNeedsRebuild];
  }
}

Swift::Int sub_1005C6C38()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  return sub_1007A3C44();
}

uint64_t sub_1005C6CA0(uint64_t a1)
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1005C6CF0(uint64_t a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  return sub_1007A3C44();
}

void sub_1005C6D54()
{
  v1 = v0;
  v2 = OBJC_IVAR___BKMenuController_userCollections;
  if ((sub_1004A3CF8() & 1) == 0)
  {
    if (qword_100AD18F0 != -1)
    {
      swift_once();
    }

    v3 = sub_10079ACE4();
    sub_100008B98(v3, qword_100AEC8D0);
    v4 = v0;
    v5 = sub_10079ACC4();
    v6 = sub_1007A29A4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = *(*&v1[v2] + 16);
    }

    else
    {

      v5 = v4;
    }

    v8 = [objc_opt_self() mainSystem];
    [v8 setNeedsRebuild];
  }
}

Swift::Int sub_1005C6EDC()
{
  v1 = *(v0 + 8);
  sub_1007A3C04();
  if (v1)
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }

  return sub_1007A3C44();
}

void sub_1005C6F4C(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1007A3C24(1u);

    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }
}

Swift::Int sub_1005C6FC4(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1007A3C04();
  if (v2)
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }

  return sub_1007A3C44();
}

uint64_t sub_1005C7030(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1007A3AB4() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

void sub_1005C708C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1005C9244();
  }
}

void sub_1005C70E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1007A2744();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_1007A26F4();
    v8 = v6;
    v9 = sub_1007A26E4();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;
    sub_1003457A0(0, 0, v4, &unk_100833C48, v10);
  }
}

uint64_t sub_1005C7234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1007A26F4();
  *(v4 + 24) = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1005C72CC, v6, v5);
}

uint64_t sub_1005C72CC()
{

  v1.n128_f64[0] = sub_1005C87C4();
  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_1005C7330(void *a1)
{
  v115 = a1;
  v2 = sub_100796CF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v95 - v7;
  v109 = sub_1007A21D4();
  v9 = *(v109 - 8);
  __chkstk_darwin(v109);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v95 - v13;
  if (qword_100AD18F0 != -1)
  {
    swift_once();
  }

  v15 = sub_10079ACE4();
  sub_100008B98(v15, qword_100AEC8D0);
  v16 = v1;
  v17 = sub_10079ACC4();
  v18 = sub_1007A29D4();

  v19 = os_log_type_enabled(v17, v18);
  v114 = v2;
  v110 = v16;
  v111 = v5;
  v116 = v9;
  v108 = v14;
  v112 = v11;
  if (v19)
  {
    LODWORD(v106) = v18;
    *&v107 = v17;
    v20 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    *&v118[0] = v105;
    *v20 = 136316162;
    Strong = swift_unknownObjectWeakLoadStrong();
    v113 = v3;
    if (Strong)
    {

      v22 = 0xE800000000000000;
      v23 = 0x3E776F646E69773CLL;
    }

    else
    {
      v22 = 0xE300000000000000;
      v23 = 7104878;
    }

    v26 = sub_1000070F4(v23, v22, v118);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    LOBYTE(v117) = v16[OBJC_IVAR___BKMenuController_mainContentType];
    v27 = sub_1007A22E4();
    v29 = sub_1000070F4(v27, v28, v118);

    *(v20 + 14) = v29;
    *(v20 + 22) = 2080;
    LOBYTE(v117) = v16[OBJC_IVAR___BKMenuController_bookshelfType];
    sub_1001F1160(&qword_100AECA20, &qword_100833C08);
    v30 = sub_1007A22E4();
    v32 = sub_1000070F4(v30, v31, v118);

    *(v20 + 24) = v32;
    *(v20 + 32) = 2080;
    v33 = *&v16[OBJC_IVAR___BKMenuController_recentlyOpenedAssets];
    v34 = *(v33 + 16);
    v96 = v8;
    if (v34)
    {
      v117 = _swiftEmptyArrayStorage;

      sub_1003BD0CC(0, v34, 0);
      v35 = v117;
      v36 = (v33 + 56);
      do
      {
        v37 = *(v36 - 1);
        v38 = *v36;
        v117 = v35;
        v40 = v35[2];
        v39 = v35[3];

        if (v40 >= v39 >> 1)
        {
          sub_1003BD0CC((v39 > 1), v40 + 1, 1);
          v35 = v117;
        }

        v35[2] = v40 + 1;
        v41 = &v35[2 * v40];
        v41[4] = v37;
        v41[5] = v38;
        v36 += 4;
        --v34;
      }

      while (v34);

      v8 = v96;
      v16 = v110;
    }

    v42 = sub_1007A25F4();
    v44 = v43;

    v45 = sub_1000070F4(v42, v44, v118);

    *(v20 + 34) = v45;
    *(v20 + 42) = 2080;
    v46 = *&v16[OBJC_IVAR___BKMenuController_userCollections];
    v47 = *(v46 + 16);
    if (v47)
    {
      v117 = _swiftEmptyArrayStorage;

      sub_1003BD0CC(0, v47, 0);
      v48 = v117;
      v49 = (v46 + 56);
      do
      {
        v50 = *(v49 - 1);
        v51 = *v49;
        v117 = v48;
        v52 = v48[2];
        v53 = v48[3];

        if (v52 >= v53 >> 1)
        {
          sub_1003BD0CC((v53 > 1), v52 + 1, 1);
          v48 = v117;
        }

        v48[2] = v52 + 1;
        v54 = &v48[2 * v52];
        v54[4] = v50;
        v54[5] = v51;
        v49 += 4;
        --v47;
      }

      while (v47);

      v8 = v96;
    }

    v55 = sub_1007A25F4();
    v57 = v56;

    v58 = sub_1000070F4(v55, v57, v118);

    *(v20 + 44) = v58;
    v59 = v107;
    _os_log_impl(&_mh_execute_header, v107, v106, "Building menu with keyWindow: %s, mainContentType: %s, bookshelfType: %s, recentlyOpenedAssets: %s, userCollections: %s", v20, 0x34u);
    swift_arrayDestroy();

    v25 = v113;
    v24 = v109;
    v5 = v111;
  }

  else
  {

    v24 = v109;
    v25 = v3;
  }

  ObjectType = swift_getObjectType();
  v109 = sub_1001F1160(&unk_100AD8160, &unk_100813160);
  inited = swift_initStackObject();
  v107 = xmmword_100811390;
  *(inited + 16) = xmmword_100811390;
  v97 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  v61 = v108;
  sub_1007A2154();
  sub_100796C94();
  v62 = v8;
  v63 = v116;
  v64 = *(v116 + 16);
  v65 = v5;
  v66 = v112;
  v106 = v116 + 16;
  v105 = v64;
  v64(v112, v61, v24);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v103 = objc_opt_self();
  v104 = ObjCClassFromMetadata;
  v68 = [v103 bundleForClass:ObjCClassFromMetadata];
  v69 = *(v25 + 16);
  v70 = v5;
  v71 = v114;
  v102 = v25 + 16;
  v101 = v69;
  v69(v70, v62, v114);
  sub_1007A22D4(v66, 0, 0, v68, v65, "Books -> Provide Books Fedback", 30, 2);
  v72 = *(v25 + 8);
  v113 = v25 + 8;
  v100 = v72;
  v72(v62, v71);
  v73 = v62;
  v74 = *(v63 + 8);
  v116 = v63 + 8;
  v99 = v74;
  v74(v61, v24);
  v75 = sub_1007A2214();
  v76 = [objc_opt_self() systemImageNamed:v75];

  memset(v118, 0, 32);
  v77 = v115;
  *(inited + 32) = sub_1007A3414();
  sub_10020B6F8(inited, UIMenuPreferences);
  swift_setDeallocating();
  swift_arrayDestroy();
  v78 = v110;
  v79 = *&v110[OBJC_IVAR___BKMenuController_recentlyOpenedAssets];
  v80 = *&v110[OBJC_IVAR___BKMenuController_userCollections];

  sub_1002CCCB4(v77, v79, v80);

  sub_10021A050(v77);
  if (qword_100AD18F8 != -1)
  {
    swift_once();
  }

  v81 = qword_100AEC8E8;
  sub_100426AF0(v77, qword_100AEC8E8);
  ObjectType = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  sub_1007A2154();
  sub_100796C94();
  v82 = v112;
  v105(v112, v61, v24);
  v83 = [v103 bundleForClass:v104];
  v84 = v111;
  v85 = v24;
  v86 = v114;
  v101(v111, v73, v114);
  v87 = sub_1007A22D4(v82, 0, 0, v83, v84, "macOS Menu: Account", 19, 2);
  v89 = v88;
  v100(v73, v86);
  v99(v61, v85);
  v90 = swift_allocObject();
  *(v90 + 16) = v107;
  *(v90 + 32) = sub_10076FC70();
  v120._countAndFlagsBits = v87;
  v120._object = v89;
  v121.value._countAndFlagsBits = 0;
  v121.value._object = 0;
  v119.value.super.isa = 0;
  v119.is_nil = 0;
  v91.value = 0;
  isa = sub_1007A30C4(v120, v121, v119, v91, 0xFFFFFFFFFFFFFFFFLL, v90, v94).super.super.isa;
  [v77 insertSiblingMenu:isa afterMenuForIdentifier:v81];

  sub_100479DCC(v77, v78[OBJC_IVAR___BKMenuController_mainContentType], v78[OBJC_IVAR___BKMenuController_bookshelfType]);
  sub_10066153C(v77);
  return [v77 removeMenuForIdentifier:UIMenuFormat];
}

void sub_1005C7E74(void *a1)
{
  v3 = [*&v1[OBJC_IVAR___BKMenuController_legacyAccountStore] ams_iTunesAccounts];
  sub_10000A7C4(0, &unk_100AECAA0, ACAccount_ptr);
  v4 = sub_1007A25E4();

  if (v4 >> 62)
  {
    v5 = sub_1007A38D4();
    v72 = v1;
    v74 = a1;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_16:

    v7 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v72 = v1;
  v74 = a1;
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_3:
  v75 = _swiftEmptyArrayStorage;
  sub_1003BD818(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  v7 = v75;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = sub_1007A3784();
    }

    else
    {
      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = [v8 username];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1007A2254();
      v14 = v13;
    }

    else
    {

      v12 = 0;
      v14 = 0;
    }

    v75 = v7;
    v16 = v7[2];
    v15 = v7[3];
    if (v16 >= v15 >> 1)
    {
      sub_1003BD818((v15 > 1), v16 + 1, 1);
      v7 = v75;
    }

    ++v6;
    v7[2] = v16 + 1;
    v17 = &v7[2 * v16];
    v17[4] = v12;
    v17[5] = v14;
  }

  while (v5 != v6);

LABEL_17:
  v77 = &_swiftEmptySetSingleton;
  v18 = v7[2];

  if (v18)
  {
    v19 = 0;
    v20 = _swiftEmptyArrayStorage;
    do
    {
      v21 = &v7[2 * v19 + 5];
      v22 = v19;
      while (1)
      {
        if (v22 >= v18)
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v19 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_53;
        }

        v23 = *(v21 - 1);
        v24 = *v21;
        swift_bridgeObjectRetain_n();
        v25 = sub_1006E704C(&v75, v23, v24);

        if (v25)
        {
          break;
        }

        ++v22;
        v21 += 2;
        if (v19 == v18)
        {
          goto LABEL_32;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1003BD818(0, v20[2] + 1, 1);
        v20 = v76;
      }

      v28 = v20[2];
      v27 = v20[3];
      if (v28 >= v27 >> 1)
      {
        sub_1003BD818((v27 > 1), v28 + 1, 1);
        v20 = v76;
      }

      v20[2] = v28 + 1;
      v29 = &v20[2 * v28];
      v29[4] = v23;
      v29[5] = v24;
    }

    while (v19 != v18);
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

LABEL_32:

  type metadata accessor for SidebarViewModel(0);
  swift_allocObject();
  v18 = sub_100659148();
  if (qword_100AD18F0 != -1)
  {
LABEL_54:
    swift_once();
  }

  v30 = sub_10079ACE4();
  sub_100008B98(v30, qword_100AEC8D0);

  v31 = v72;

  v32 = sub_10079ACC4();
  v33 = sub_1007A29D4();

  if (os_log_type_enabled(v32, v33))
  {
    v69 = v33;
    log = v32;
    v34 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v34 = 136315650;
    v77 = v18;

    v35 = sub_1007A22E4();
    v37 = sub_1000070F4(v35, v36, &v75);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    v71 = v31;
    v38 = *&v31[OBJC_IVAR___BKMenuController_userCollections];
    v39 = *(v38 + 16);
    v73 = v34;
    if (v39)
    {
      v68 = v18;
      v77 = _swiftEmptyArrayStorage;

      sub_1003BD0CC(0, v39, 0);
      v40 = v77;
      v41 = (v38 + 56);
      do
      {
        v42 = *(v41 - 1);
        v43 = *v41;
        v77 = v40;
        v44 = v40[2];
        v45 = v40[3];

        if (v44 >= v45 >> 1)
        {
          sub_1003BD0CC((v45 > 1), v44 + 1, 1);
          v40 = v77;
        }

        v40[2] = v44 + 1;
        v46 = &v40[2 * v44];
        v46[4] = v42;
        v46[5] = v43;
        v41 += 4;
        --v39;
      }

      while (v39);

      v18 = v68;
      v34 = v73;
    }

    v48 = sub_1007A25F4();
    v50 = v49;

    v51 = sub_1000070F4(v48, v50, &v75);

    *(v34 + 14) = v51;
    *(v34 + 22) = 2080;
    v52 = v20[2];
    if (v52)
    {
      v77 = _swiftEmptyArrayStorage;
      sub_1003BD0CC(0, v52, 0);
      v53 = v77;
      v54 = v20 + 5;
      v55 = v20 + 5;
      do
      {
        v57 = *v55;
        v55 += 2;
        v56 = v57;
        if (v57)
        {
          v58 = *(v54 - 1);
          v59 = v56;
        }

        else
        {
          v58 = 0;
          v59 = 0xE000000000000000;
        }

        v77 = v53;
        v60 = v53[2];
        v61 = v53[3];

        if (v60 >= v61 >> 1)
        {
          sub_1003BD0CC((v61 > 1), v60 + 1, 1);
          v53 = v77;
        }

        v53[2] = v60 + 1;
        v62 = &v53[2 * v60];
        v62[4] = v58;
        v62[5] = v59;
        v54 = v55;
        --v52;
      }

      while (v52);
      v34 = v73;
    }

    v63 = sub_1007A25F4();
    v65 = v64;

    v66 = sub_1000070F4(v63, v65, &v75);

    *(v34 + 24) = v66;
    _os_log_impl(&_mh_execute_header, log, v69, "Building internal menu with sidebarModel: %s, userCollections: %s, legacyAccounts: %s", v34, 0x20u);
    swift_arrayDestroy();

    v47 = v74;
    v31 = v71;
  }

  else
  {

    v47 = v74;
  }

  v67 = *&v31[OBJC_IVAR___BKMenuController_userCollections];

  sub_10049F170(v47, v18, v67, v20);
}

uint64_t sub_1005C8558(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v23 = &_swiftEmptySetSingleton;

  sub_1005CB8CC(a5, &v23, a1);
  v9 = v8;

  if (*(v9 + 16) != *(a5 + 16))
  {
    v11 = a3(v10);
    if (v12)
    {
      v13 = v12;
      v14 = v11;
      if (qword_100AD18F0 != -1)
      {
        swift_once();
      }

      v15 = sub_10079ACE4();
      sub_100008B98(v15, qword_100AEC8D0);

      v16 = sub_10079ACC4();
      v17 = sub_1007A29C4();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v22 = v19;
        *v18 = 136315138;
        v20 = sub_1000070F4(v14, v13, &v22);

        *(v18 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v16, v17, "%s", v18, 0xCu);
        sub_1000074E0(v19);
      }

      else
      {
      }
    }
  }

  return v9;
}

void sub_1005C874C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

double sub_1005C87C4()
{
  v0 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v0 - 8);
  v38 = &v30 - v1;
  v2 = sub_1001F1160(&unk_100ADFA90, &qword_100833C20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - v4;
  v6 = sub_1001F1160(&qword_100AECA50, &qword_100833C28);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = sub_1001F1160(&qword_100AECA58, &qword_100833C30);
  v14 = *(v13 - 8);
  v34 = v13;
  v35 = v14;
  __chkstk_darwin(v13);
  v31 = &v30 - v15;
  v16 = sub_1001F1160(&unk_100AECA60, &qword_100833C38);
  v17 = *(v16 - 8);
  v36 = v16;
  v37 = v17;
  __chkstk_darwin(v16);
  v32 = &v30 - v18;
  swift_beginAccess();
  sub_1001F1160(&qword_100ADFAB0, &qword_10081FCC0);
  sub_10079B974();
  swift_endAccess();
  sub_1001F1160(&unk_100AECA70, &qword_100818178);
  sub_100005920(&qword_100ADFAB8, &unk_100ADFA90, &qword_100833C20, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10079BA74();
  (*(v3 + 8))(v5, v2);
  sub_10079B7E4();
  v19 = *(v7 + 8);
  v19(v9, v6);
  sub_100005920(&qword_100AECA80, &qword_100AECA50, &qword_100833C28, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1005CB808();
  v20 = v31;
  sub_10079BAF4();
  v19(v12, v6);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v21 = sub_1007A2D74();
  v39 = v21;
  v22 = sub_1007A2D24();
  v23 = v38;
  (*(*(v22 - 8) + 56))(v38, 1, 1, v22);
  sub_100005920(&qword_100AECA90, &qword_100AECA58, &qword_100833C30, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_100017E1C();
  v24 = v32;
  v25 = v34;
  sub_10079BAB4();
  sub_100007840(v23, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v35 + 8))(v20, v25);
  swift_allocObject();
  v26 = v33;
  swift_unknownObjectWeakInit();
  sub_100005920(&qword_100AECA98, &unk_100AECA60, &qword_100833C38, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v27 = v36;
  v28 = sub_10079BB04();

  (*(v37 + 8))(v24, v27);
  *(v26 + OBJC_IVAR___BKMenuController_observeUserCollectionsTask) = v28;

  return result;
}

void sub_1005C8DD4(unint64_t *a1@<X0>, char **a2@<X8>)
{
  v38 = *a1;
  if (*a1 >> 62)
  {
LABEL_25:
    v37 = v38 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_1007A38D4();
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v34 = _swiftEmptyArrayStorage;
      v4 = v38 & 0xC000000000000001;
      v5 = &selRef_clearData;
      p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
      v7 = qword_100AEC8D0;
      v35 = v2;
      while (1)
      {
        v8 = v3;
        while (1)
        {
          if (v4)
          {
            v9 = sub_1007A3784();
          }

          else
          {
            if (v8 >= *(v37 + 16))
            {
              goto LABEL_24;
            }

            v9 = *(v38 + 8 * v8 + 32);
          }

          v10 = v9;
          v3 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          v11 = [v9 v5[61]];
          if (v11)
          {
            break;
          }

          if (p_inst_props[286] != -1)
          {
            swift_once();
          }

          v12 = sub_10079ACE4();
          sub_100008B98(v12, v7);
          v13 = v10;
          v14 = sub_10079ACC4();
          v15 = sub_1007A29B4();

          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            v17 = v5;
            v18 = swift_slowAlloc();
            *v16 = 138412290;
            *(v16 + 4) = v13;
            *v18 = v13;
            v19 = v7;
            v20 = p_inst_props;
            v21 = v13;
            _os_log_impl(&_mh_execute_header, v14, v15, "Collection %@ does not have an ID", v16, 0xCu);
            sub_100007840(v18, &unk_100AD9480, &qword_1008113B0);
            v5 = v17;

            v2 = v35;
            v4 = v38 & 0xC000000000000001;

            v13 = v14;
            v14 = v21;
            p_inst_props = v20;
            v7 = v19;
            v3 = v8 + 1;
          }

          ++v8;
          if (v3 == v2)
          {
            goto LABEL_27;
          }
        }

        v22 = v11;
        v23 = sub_1007A2254();
        v25 = v24;

        v26 = [v10 title];
        if (!v26)
        {
          break;
        }

        v27 = v26;
        v36 = sub_1007A2254();
        v32 = v28;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_10066C484(0, *(v34 + 2) + 1, 1, v34);
        }

        v30 = *(v34 + 2);
        v29 = *(v34 + 3);
        if (v30 >= v29 >> 1)
        {
          v34 = sub_10066C484((v29 > 1), v30 + 1, 1, v34);
        }

        *(v34 + 2) = v30 + 1;
        v31 = &v34[32 * v30];
        *(v31 + 4) = v23;
        *(v31 + 5) = v25;
        *(v31 + 6) = v36;
        *(v31 + 7) = v32;
        if (v3 == v2)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
      return;
    }
  }

  else
  {
    v37 = v38 & 0xFFFFFFFFFFFFFF8;
    v2 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_27:
  *a2 = v34;
}

uint64_t sub_1005C9130@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = sub_1005C8558(sub_10048675C, 0, sub_1005CB8C4, &v4, v5);
  *a2 = result;
  return result;
}

uint64_t sub_1005C9198(uint64_t a1)
{
  sub_1007A3744(99);
  v2._object = 0x80000001008DFD20;
  v2._countAndFlagsBits = 0xD000000000000024;
  sub_1007A23D4(v2);
  v3._countAndFlagsBits = sub_1007A25F4();
  sub_1007A23D4(v3);

  v4._object = 0x80000001008DFCA0;
  v4._countAndFlagsBits = 0x100000000000003DLL;
  sub_1007A23D4(v4);
  return 0;
}

double sub_1005C9244()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v2 - 8);
  v4 = v22 - v3;
  v5 = sub_1001F1160(&qword_100AECA28, &unk_100833C10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - v7;
  sub_1005C9638();
  v9 = [*(v0 + OBJC_IVAR___BKMenuController_sceneManager) primarySceneController];
  v10 = [v9 rootBarCoordinator];

  if (v10)
  {
    ObjectType = swift_getObjectType();
    v12 = sub_100467E5C(ObjectType);
    v22[0] = v5;
    v13 = v12;
    v15 = v14;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v16 = swift_getObjectType();
    v22[3] = v13;
    v17 = (*(v15 + 8))(v16, v15);
    swift_unknownObjectRelease();
    v22[2] = v17;
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v18 = sub_1007A2D74();
    v22[1] = v18;
    v19 = sub_1007A2D24();
    (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
    sub_1001F1160(&unk_100AECA30, &unk_1008130F0);
    sub_100005920(&unk_100ADE5A0, &unk_100AECA30, &unk_1008130F0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_100017E1C();
    sub_10079BAB4();
    sub_100007840(v4, &qword_100AD7EB0, &qword_10080EFD0);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100005920(&unk_100AECA40, &qword_100AECA28, &unk_100833C10, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v20 = v22[0];
    v10 = sub_10079BB04();

    (*(v6 + 8))(v8, v20);
  }

  *(v1 + OBJC_IVAR___BKMenuController_observeSelectedItemTask) = v10;

  return result;
}

void sub_1005C95B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1005CA280();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_1005C9638();
  }
}

void sub_1005C9638()
{
  v1 = [*(v0 + OBJC_IVAR___BKMenuController_sceneManager) primarySceneController];
  v2 = [v1 rootBarCoordinator];

  if (v2)
  {
    v8 = [v2 selectedNavigationController];
    swift_unknownObjectRelease();
    if (*(v0 + OBJC_IVAR___BKMenuController_mainContentType) == 2)
    {
      if (v8)
      {
        v3 = [v8 topViewController];
        if (v3)
        {
          v4 = v3;
          sub_100797294();
          v5 = swift_dynamicCastClass();

          if (v5)
          {
            v6 = 1;
            goto LABEL_11;
          }
        }
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_10;
    }

LABEL_8:
    v6 = 2;
    goto LABEL_11;
  }

  v8 = 0;
  if (*(v0 + OBJC_IVAR___BKMenuController_mainContentType) != 2)
  {
    goto LABEL_8;
  }

LABEL_10:
  v6 = 0;
LABEL_11:
  v7 = *(v0 + OBJC_IVAR___BKMenuController_bookshelfType);
  *(v0 + OBJC_IVAR___BKMenuController_bookshelfType) = v6;
  sub_1005C686C(v7);
}

void sub_1005C977C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1005CA280();
  }
}

void sub_1005C97D0(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR___BKMenuController_appKitBundle))
  {
    [swift_getObjCClassFromMetadata() bringWindowToFront:a1];
  }

  v2 = [*(v1 + OBJC_IVAR___BKMenuController_sceneManager) currentSceneController];
  if (v2)
  {
    v3 = [v2 bk_window];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1005C6460(Strong);
}

void sub_1005C98B4()
{
  v1 = [*(v0 + OBJC_IVAR___BKMenuController_sceneManager) currentSceneController];
  if (v1)
  {
    v2 = [v1 bk_window];
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1005C6460(Strong);
}

uint64_t sub_1005C99B8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
LABEL_3:
    sub_1005C9C18();
    v4 = v3;
    if (!v3 || (v15[0] = v3, sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr), v5 = v4, sub_1001F1160(&qword_100AECA18, &unk_100833BF8), (swift_dynamicCast() & 1) == 0))
    {
      v19 = 0;
      memset(v18, 0, sizeof(v18));
    }

    sub_1005CB744(v18, v15);
    v6 = v16;
    if (v16)
    {
      v7 = v17;
      sub_10000E3E8(v15, v16);
      v8 = (*(v7 + 8))(v6, v7);

      sub_1000074E0(v15);
    }

    else
    {

      sub_100007840(v15, &qword_100AECA10, &qword_100833BF0);
      v8 = 0;
    }

    sub_100007840(v18, &qword_100AECA10, &qword_100833BF0);
    return v8;
  }

  v9 = [*(v0 + OBJC_IVAR___BKMenuController_sceneManager) currentSceneController];
  if (v9)
  {
    v2 = [v9 bk_window];
    swift_unknownObjectRelease();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  if (qword_100AD18F0 != -1)
  {
    swift_once();
  }

  v10 = sub_10079ACE4();
  sub_100008B98(v10, qword_100AEC8D0);
  v11 = sub_10079ACC4();
  v12 = sub_1007A29B4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Cannot find window for actionTarget)", v13, 2u);
  }

  return 0;
}

uint64_t sub_1005C9C18()
{
  v1 = [v0 rootViewController];
  if (!v1)
  {
    goto LABEL_13;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

LABEL_13:
    if (qword_100AD18F0 != -1)
    {
      swift_once();
    }

    v13 = sub_10079ACE4();
    sub_100008B98(v13, qword_100AEC8D0);
    v2 = sub_10079ACC4();
    v14 = sub_1007A29A4();
    if (os_log_type_enabled(v2, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v2, v14, "no root VC", v15, 2u);
    }

    goto LABEL_17;
  }

  v4 = v3;
  v5 = sub_1005CB504();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 contentViewController];
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (qword_100AD18F0 != -1)
        {
          swift_once();
        }

        v9 = sub_10079ACE4();
        sub_100008B98(v9, qword_100AEC8D0);
        v10 = sub_10079ACC4();
        v11 = sub_1007A29A4();
        if (!os_log_type_enabled(v10, v11))
        {
          goto LABEL_11;
        }

        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "content VC is book cover", v12, 2u);
LABEL_10:

LABEL_11:

        return 0;
      }

      type metadata accessor for BookReaderModuleHost(0);
      if (swift_dynamicCastClass())
      {

        return 4;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        return 3;
      }

      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = NSStringFromClass(ObjCClassFromMetadata);
      v32 = sub_1007A2254();
      v34 = v33;

      if (v32 == 0xD000000000000014 && 0x80000001008DFCE0 == v34)
      {

        goto LABEL_44;
      }

      v35 = sub_1007A3AB4();

      if (v35)
      {
LABEL_44:
        v36 = sub_1005CB640();

        if (v36)
        {
          return 5;
        }

        else
        {
          return 6;
        }
      }

      if (qword_100AD18F0 != -1)
      {
        swift_once();
      }

      v37 = sub_10079ACE4();
      sub_100008B98(v37, qword_100AEC8D0);
      v38 = v8;
      v10 = sub_10079ACC4();
      v39 = sub_1007A29B4();

      if (os_log_type_enabled(v10, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v38;
        *v41 = v8;
        v8 = v38;
        _os_log_impl(&_mh_execute_header, v10, v39, "Unrecognized (book?) content view controller: %@", v40, 0xCu);
        sub_100007840(v41, &unk_100AD9480, &qword_1008113B0);

        goto LABEL_10;
      }
    }

    else
    {
      if (qword_100AD18F0 != -1)
      {
        swift_once();
      }

      v27 = sub_10079ACE4();
      sub_100008B98(v27, qword_100AEC8D0);
      v10 = sub_10079ACC4();
      v28 = sub_1007A29A4();
      if (os_log_type_enabled(v10, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v10, v28, "no content VC", v29, 2u);
      }
    }

    return 0;
  }

  v17 = [v0 windowScene];
  if (!v17 || (v18 = v17, v19 = [v17 delegate], v18, !v19))
  {
LABEL_17:

    return 0;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v21 = [v20 sceneController];
  if (!v21 || (v22 = [v21 sceneType], swift_unknownObjectRelease(), v22 != 1) || (v23 = objc_msgSend(v4, "rootViewController"), v24 = objc_msgSend(v23, "bk_rootBarCoordinator"), v23, !v24))
  {
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v25 = [v24 selectedItem];
  swift_unknownObjectRelease();
  if (v25)
  {
    v26 = [v25 isLibraryCollection];

    swift_unknownObjectRelease();
    if (v26)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    swift_unknownObjectRelease();

    return 0;
  }
}

void sub_1005CA280()
{
  v1 = v0;
  v2 = sub_1007A1CC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v40 = &v36 - v7;
  v8 = sub_1007A1C54();
  __chkstk_darwin(v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v10 = Strong, v11 = sub_1005C9C18(), v13 = v12, v10, v13 != 1))
  {
  }

  else
  {
    v11 = 1;
  }

  v14 = OBJC_IVAR___BKMenuController_mainContentType;
  v15 = *(v1 + OBJC_IVAR___BKMenuController_mainContentType);
  *(v1 + OBJC_IVAR___BKMenuController_mainContentType) = v11;
  sub_1005C66C4(v15);
  v16 = OBJC_IVAR___BKMenuController_mainContentTypeRetryCount;
  v17 = *(v1 + OBJC_IVAR___BKMenuController_mainContentTypeRetryCount);
  v18 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (*(v1 + v14))
  {
    v19 = 0;
  }

  else
  {
    v19 = v17 <= 4;
  }

  if (!v19)
  {
    if (qword_100AD18F0 == -1)
    {
LABEL_11:
      v20 = sub_10079ACE4();
      sub_100008B98(v20, qword_100AEC8D0);
      v21 = sub_10079ACC4();
      v22 = sub_1007A29A4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v21, v22, "Determined the window type on attempt %ld.", v23, 0xCu);
      }

      *(v1 + OBJC_IVAR___BKMenuController_retryMainContentTypeTask) = 0;

      v24 = 0;
LABEL_19:
      *(v1 + v16) = v24;
      return;
    }

LABEL_21:
    swift_once();
    goto LABEL_11;
  }

  v39 = OBJC_IVAR___BKMenuController_mainContentTypeRetryCount;
  if (qword_100AD18F0 != -1)
  {
    swift_once();
  }

  v37 = v3;
  v38 = v2;
  v25 = sub_10079ACE4();
  sub_100008B98(v25, qword_100AEC8D0);
  v26 = sub_10079ACC4();
  v27 = sub_1007A29D4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134218240;
    *(v28 + 4) = v18;
    *(v28 + 12) = 2048;
    *(v28 + 14) = 5;
    _os_log_impl(&_mh_execute_header, v26, v27, "Unable to determine the window type right now (attempt %ld of %ld). Will try again in a moment...", v28, 0x16u);
  }

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1005CB730;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A24EC8;
  _Block_copy(aBlock);
  v41 = _swiftEmptyArrayStorage;
  sub_100017DD4(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  sub_1007A1CF4();
  swift_allocObject();
  sub_1007A1CD4();

  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v30 = sub_1007A2D74();
  sub_1007A1CB4();
  v31 = v40;
  sub_1007A1D24();
  v32 = v38;
  v33 = *(v37 + 8);
  v33(v5, v38);
  sub_1007A2D14();

  v33(v31, v32);
  sub_10079B884();
  swift_allocObject();
  *(v1 + OBJC_IVAR___BKMenuController_retryMainContentTypeTask) = sub_10079B894();

  v16 = v39;
  v34 = *(v1 + v39);
  v35 = __OFADD__(v34, 1);
  v24 = v34 + 1;
  if (!v35)
  {
    goto LABEL_19;
  }

  __break(1u);
}

void sub_1005CA838(uint64_t a1)
{
  if (qword_100AD18F0 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AEC8D0);
  v2 = sub_10079ACC4();
  v3 = sub_1007A29A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Timer fired; attempting to determine active window type", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1005CA280();
  }
}

void sub_1005CA948(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (*a1 >> 62)
  {
    goto LABEL_55;
  }

  v4 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
  v59 = v2;
  if (v4)
  {
    v6 = 0;
    v7 = v2 & 0xC000000000000001;
    v57 = _swiftEmptyArrayStorage;
    v58 = v2 & 0xC000000000000001;
    while (1)
    {
      while (1)
      {
        if (v7)
        {
          v8 = sub_1007A3784();
        }

        else
        {
          if (v6 >= *(v3 + 16))
          {
            goto LABEL_52;
          }

          v8 = *(v2 + 8 * v6 + 32);
        }

        v9 = v8;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v4 = sub_1007A38D4();
          goto LABEL_3;
        }

        v60 = v6 + 1;
        v10 = [v8 assetID];
        if (v10)
        {
          break;
        }

LABEL_13:
        if (p_inst_props[286] != -1)
        {
          swift_once();
        }

        v16 = sub_10079ACE4();
        sub_100008B98(v16, qword_100AEC8D0);
        v17 = v9;
        v18 = sub_10079ACC4();
        v19 = sub_1007A29B4();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = p_inst_props;
          v22 = swift_slowAlloc();
          *v20 = 138412290;
          *(v20 + 4) = v17;
          *v22 = v17;
          v23 = v4;
          v24 = v3;
          v25 = v17;
          _os_log_impl(&_mh_execute_header, v18, v19, "Recently-opened asset %@ does not have an ID and/or title", v20, 0xCu);
          sub_100007840(v22, &unk_100AD9480, &qword_1008113B0);
          p_inst_props = v21;
          v2 = v59;

          v17 = v18;
          v18 = v25;
          v3 = v24;
          v4 = v23;
          v7 = v58;
        }

        ++v6;
        if (v60 == v4)
        {
          goto LABEL_25;
        }
      }

      v11 = v10;
      v12 = sub_1007A2254();
      v14 = v13;

      v15 = [v9 title];
      if (!v15)
      {

        goto LABEL_13;
      }

      v26 = v15;
      v27 = sub_1007A2254();
      v55 = v28;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_10066C4A0(0, *(v57 + 2) + 1, 1, v57);
      }

      v30 = *(v57 + 2);
      v29 = *(v57 + 3);
      if (v30 >= v29 >> 1)
      {
        v57 = sub_10066C4A0((v29 > 1), v30 + 1, 1, v57);
      }

      *(v57 + 2) = v30 + 1;
      v31 = &v57[32 * v30];
      *(v31 + 4) = v12;
      *(v31 + 5) = v14;
      *(v31 + 6) = v27;
      *(v31 + 7) = v55;
      v6 = v60;
      if (v60 == v4)
      {
        goto LABEL_25;
      }
    }
  }

  v57 = _swiftEmptyArrayStorage;
LABEL_25:

  v32 = *(v57 + 2);
  if (v32 >= 5)
  {
    v2 = 5;
  }

  else
  {
    v2 = *(v57 + 2);
  }

  v65 = &_swiftEmptySetSingleton;
  v33 = swift_unknownObjectRetain();
  if (v32)
  {
    v34 = 0;
    v35 = v33 + 56;
    v36 = _swiftEmptyArrayStorage;
    v61 = v33 + 56;
LABEL_30:
    v37 = (v35 + 32 * v34);
    v38 = v34;
    while (v38 < v2)
    {
      v34 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_54;
      }

      v3 = *(v37 - 1);
      v39 = *v37;
      v41 = *(v37 - 3);
      v40 = *(v37 - 2);
      swift_bridgeObjectRetain_n();

      v42 = sub_1006E6140(&v62, v41, v40);

      if (v42)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1003BD870(0, v36[2] + 1, 1);
          v36 = v64;
        }

        v45 = v36[2];
        v44 = v36[3];
        if (v45 >= v44 >> 1)
        {
          sub_1003BD870((v44 > 1), v45 + 1, 1);
          v36 = v64;
        }

        v36[2] = v45 + 1;
        v46 = &v36[4 * v45];
        v46[4] = v41;
        v46[5] = v40;
        v46[6] = v3;
        v46[7] = v39;
        v35 = v61;
        if (v34 != v2)
        {
          goto LABEL_30;
        }

        goto LABEL_43;
      }

      ++v38;
      v37 += 4;
      if (v34 == v2)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_53;
  }

  v36 = _swiftEmptyArrayStorage;
LABEL_43:

  if (v36[2] != v2)
  {
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_1007A3744(105);
    v66._object = 0x80000001008DFC70;
    v66._countAndFlagsBits = 0xD00000000000002ALL;
    sub_1007A23D4(v66);
    sub_10000A7C4(0, &unk_100ADE530, BSUIAsset_ptr);
    v67._countAndFlagsBits = sub_1007A25F4();
    sub_1007A23D4(v67);

    v68._object = 0x80000001008DFCA0;
    v68._countAndFlagsBits = 0x100000000000003DLL;
    sub_1007A23D4(v68);
    v48 = v62;
    v47 = v63;
    if (qword_100AD18F0 != -1)
    {
      swift_once();
    }

    v49 = sub_10079ACE4();
    sub_100008B98(v49, qword_100AEC8D0);

    v50 = sub_10079ACC4();
    v51 = sub_1007A29C4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v62 = v53;
      *v52 = 136315138;
      v54 = sub_1000070F4(v48, v47, &v62);

      *(v52 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v50, v51, "%s", v52, 0xCu);
      sub_1000074E0(v53);
    }

    else
    {
    }
  }

  *a2 = v36;
}

double sub_1005CAFD0(uint64_t *a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *a3;
    v10 = *(Strong + *a3);
    *(Strong + v9) = v6;
    v11 = Strong;

    a4(v10);
  }

  return result;
}

id sub_1005CB094()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenuController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for MenuController.MainContentType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MenuController.MainContentType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1005CB338()
{
  result = qword_100AEC9A0;
  if (!qword_100AEC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC9A0);
  }

  return result;
}

unint64_t sub_1005CB390()
{
  result = qword_100AEC9A8;
  if (!qword_100AEC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC9A8);
  }

  return result;
}

unint64_t sub_1005CB3E8()
{
  result = qword_100AEC9B0;
  if (!qword_100AEC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC9B0);
  }

  return result;
}

unint64_t sub_1005CB440()
{
  result = qword_100AEC9B8;
  if (!qword_100AEC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC9B8);
  }

  return result;
}

NSString sub_1005CB4CC()
{
  result = sub_1007A2214();
  qword_100AEC8E8 = result;
  return result;
}

id sub_1005CB504()
{
  result = [v0 rootViewController];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result presentedViewController];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 childViewControllers];

  sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
  v5 = sub_1007A25E4();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:

    return 0;
  }

  result = sub_1007A38D4();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = sub_1007A3784();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1005CB640()
{
  v1 = sub_1007A2214();
  v2 = [v0 valueForKeyPath:v1];

  if (v2)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_100007840(v7, &unk_100AD5B40, &unk_100811300);
    return 0;
  }

  return result;
}

uint64_t sub_1005CB744(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AECA10, &qword_100833BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1005CB808()
{
  result = qword_100AECA88;
  if (!qword_100AECA88)
  {
    sub_1001F1234(&unk_100AECA70, &qword_100818178);
    sub_1005CB440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECA88);
  }

  return result;
}

void sub_1005CB8CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a1 + 56;
    v6 = _swiftEmptyArrayStorage;
    v19 = a1 + 56;
    do
    {
      v20 = v6;
      v7 = (v5 + 32 * v4);
      for (i = v4; ; ++i)
      {
        if (i >= v3)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        v9 = *(v7 - 1);
        v10 = *v7;
        v11 = *(v7 - 3);
        v12 = *(v7 - 2);
        v24[0] = v11;
        v24[1] = v12;
        v24[2] = v9;
        v24[3] = v10;

        a3(v22, v24);
        v13 = sub_1006E6140(v23, v22[0], v22[1]);

        if (v13)
        {
          break;
        }

        v7 += 4;
        if (v4 == v3)
        {
          return;
        }
      }

      v6 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1003BD838(0, v20[2] + 1, 1);
        v6 = v25;
      }

      v5 = v19;
      v16 = v6[2];
      v15 = v6[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        sub_1003BD838((v15 > 1), v16 + 1, 1);
        v17 = v16 + 1;
        v6 = v25;
      }

      v6[2] = v17;
      v18 = &v6[4 * v16];
      v18[4] = v11;
      v18[5] = v12;
      v18[6] = v9;
      v18[7] = v10;
    }

    while (v4 != v3);
  }
}

uint64_t sub_1005CBA84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_1005C7234(a1, v4, v5, v6);
}

unint64_t sub_1005CBB4C()
{
  result = qword_100AECAB8;
  if (!qword_100AECAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECAB8);
  }

  return result;
}

uint64_t sub_1005CBBC8()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AECAC0);
  sub_100008B98(v0, qword_100AECAC0);
  type metadata accessor for AnnotationProviderService(0);
  sub_1001F1160(&qword_100AECD38, &unk_100833FD0);
  sub_1007A22E4();
  return sub_10079ACD4();
}

uint64_t AnnotationProviderService.bookAnnotationEntity.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

void sub_1005CBD24(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v3);

  *a2 = v3;
}

uint64_t sub_1005CBDA4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_10079B9B4();
}

uint64_t AnnotationProviderService.bookAnnotationEntity.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_10079B9B4();
}

void (*AnnotationProviderService.bookAnnotationEntity.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_10079B994();
  return sub_1002E6F80;
}

uint64_t AnnotationProviderService.$bookAnnotationEntity.getter()
{
  swift_beginAccess();
  sub_1001F1160(&qword_100AECAE0, &qword_100833D58);
  sub_10079B974();
  return swift_endAccess();
}

uint64_t AnnotationProviderService.$bookAnnotationEntity.setter(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AECAE8, &unk_100833D60);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_1001F1160(&qword_100AECAE0, &qword_100833D58);
  sub_10079B984();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AnnotationProviderService.$bookAnnotationEntity.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_1001F1160(&qword_100AECAE8, &unk_100833D60);
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

  v9 = OBJC_IVAR____TtC5Books25AnnotationProviderService__bookAnnotationEntity;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1001F1160(&qword_100AECAE0, &qword_100833D58);
  sub_10079B974();
  swift_endAccess();
  return sub_1002E7304;
}

double sub_1005CC24C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = OBJC_IVAR____TtC5Books25AnnotationProviderService_currentHighlightStyle;
  v4 = *a1;
  swift_beginAccess();
  *(v2 + v3) = v4;
  v5 = sub_1007A00E4();
  v7 = v6;
  if (v5 == sub_1007A00E4() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1007A3AB4();

    if ((v10 & 1) == 0)
    {
      sub_1005CD980();
    }
  }

  return result;
}

uint64_t AnnotationProviderService.currentHighlightStyle.getter()
{
  v1 = OBJC_IVAR____TtC5Books25AnnotationProviderService_currentHighlightStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1005CC39C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  sub_1001F1160(a2, a3);
  sub_100005920(a4, a2, a3, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return sub_10079BA14();
}

uint64_t AnnotationProviderService.AnnotationUpgradeEntity.userData.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_1000074E0((v1 + 32));
  sub_1000076D4(a1, v1 + 32);
  return swift_endAccess();
}

uint64_t AnnotationProviderService.AnnotationUpgradeEntity.__allocating_init(uniqueID:userData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1000076D4(a3, v6 + 32);
  return v6;
}

uint64_t AnnotationProviderService.AnnotationUpgradeEntity.init(uniqueID:userData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_1000076D4(a3, v3 + 32);
  return v3;
}

uint64_t AnnotationProviderService.AnnotationUpgradeEntity.deinit()
{

  sub_1000074E0((v0 + 32));
  return v0;
}

uint64_t AnnotationProviderService.AnnotationUpgradeEntity.__deallocating_deinit()
{

  sub_1000074E0((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t AnnotationProviderService.__allocating_init(annotationMOCHost:bookProvider:annotationModifier:engagementManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  v11 = objc_allocWithZone(type metadata accessor for AnnotationProviderService(0));
  ObjectType = swift_getObjectType();
  v13 = swift_getObjectType();
  v14 = swift_getObjectType();
  sub_1005D7990(a1, a2, a4, a5, 0, v11, ObjectType, v14, v13, a3);
  v16 = v15;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v16;
}

uint64_t type metadata accessor for AnnotationProviderService(uint64_t a1)
{
  result = qword_100AECBB8;
  if (!qword_100AECBB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id AnnotationProviderService.highlightAnnotationDetail(for:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = [Strong uiManagedObjectContext], swift_unknownObjectRelease(), v3))
  {
    v4 = objc_opt_self();
    v5 = sub_1007A2214();
    v6 = [v4 predicateForAnnotationWithUUID:v5];

    v7 = sub_1007A2214();
    v8 = [v3 entity:v7 withPredicate:v6];

    if (v8)
    {
      v9 = sub_1007A25E4();

      if (*(v9 + 16))
      {
        sub_100007484(v9 + 32, v17);

        sub_10000A7C4(0, &qword_100AECB40, AEAnnotation_ptr);
        if (swift_dynamicCast())
        {
          v10 = sub_1005CC9A4();

          return v10;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_100AD1900 != -1)
    {
      swift_once();
    }

    v12 = sub_10079ACE4();
    sub_100008B98(v12, qword_100AECAC0);
    v13 = sub_10079ACC4();
    v14 = sub_1007A29B4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "nil annotationProvider", v15, 2u);
    }
  }

  return 0;
}

id sub_1005CC9A4()
{
  v1 = sub_100796BB4();
  __chkstk_darwin(v1 - 8);
  result = [v0 annotationUuid];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = result;
  sub_1007A2254();

  result = [v0 plLocationRangeStart];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  [result integerValue];

  result = [v0 annotationLocation];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = result;
  sub_1007A2254();

  AEAnnotation.normalizedStyle.getter();
  result = [v0 annotationCreationDate];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = result;
  sub_100796B64();

  result = [v0 annotationModificationDate];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = result;
  sub_100796B64();

  v9 = [v0 annotationSelectedText];
  if (!v9)
  {
    goto LABEL_9;
  }

  result = [v0 annotationSelectedText];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = result;
  sub_1007A2254();

LABEL_9:
  v11 = [v0 annotationRepresentativeText];
  if (v11)
  {

    result = [v0 annotationRepresentativeText];
    if (result)
    {
      v12 = result;
      sub_1007A2254();

      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_12:
  v13 = [v0 annotationNote];
  if (!v13)
  {
LABEL_15:
    sub_1007A1A84();
    swift_allocObject();
    return sub_1007A1A74();
  }

  result = [v0 annotationNote];
  if (result)
  {
    v14 = result;
    sub_1007A2254();

    goto LABEL_15;
  }

LABEL_23:
  __break(1u);
  return result;
}

Swift::Void __swiftcall AnnotationProviderService.start()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = [Strong privateUserEditMOC], swift_unknownObjectRelease(), v2))
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    *(v3 + 24) = v2;
    aBlock[4] = sub_1005D7E38;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A25038;
    v4 = _Block_copy(aBlock);
    v5 = v0;
    v6 = v2;

    [v6 performBlock:v4];
    _Block_release(v4);
  }

  else
  {
    if (qword_100AD1900 != -1)
    {
      swift_once();
    }

    v7 = sub_10079ACE4();
    sub_100008B98(v7, qword_100AECAC0);
    oslog = sub_10079ACC4();
    v8 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Unable to start AnnotationProviderService - nil annotationProvider", v9, 2u);
    }
  }
}

void sub_1005CCF00(char *a1, uint64_t a2)
{
  v81 = sub_1001F1160(&qword_100AECD18, &qword_100833F38);
  v78 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v76 - v4;
  v5 = objc_allocWithZone(NSFetchRequest);
  v6 = sub_1007A2214();
  v83 = [v5 initWithEntityName:v6];

  v7 = objc_opt_self();
  v8 = &a1[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity];
  sub_10000E3E8(&a1[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity], *&a1[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity + 24]);
  sub_10079ECA4();
  v9 = sub_1007A2214();

  v10 = [v7 predicateForUserAnnotationsWithAssetID:v9 includingDeleted:0];

  [v83 setPredicate:v10];
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100811390;
  v12 = objc_allocWithZone(NSSortDescriptor);
  v13 = sub_1007A2214();
  v14 = [v12 initWithKey:v13 ascending:1];

  *(v11 + 32) = v14;
  sub_10000A7C4(0, &unk_100AE9A50, NSSortDescriptor_ptr);
  isa = sub_1007A25D4().super.isa;

  [v83 setSortDescriptors:isa];

  [v83 setFetchBatchSize:32];
  v16 = objc_allocWithZone(NSFetchedResultsController);
  v17 = [v16 initWithFetchRequest:v83 managedObjectContext:a2 sectionNameKeyPath:0 cacheName:0];
  v18 = OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationFRC;
  v19 = *&a1[OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationFRC];
  *&a1[OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationFRC] = v17;

  if (*&a1[v18])
  {
    sub_10000E3E8(v8, *(v8 + 3));
    v20 = sub_10079ECD4();
    v21 = sub_1001EF70C(_swiftEmptyArrayStorage);
    v22 = *(v20 + 16);
    v77 = v18;
    v84 = v22;
    v82 = a1;
    if (v22)
    {
      v23 = 0;
      v24 = v20 + 32;
      while (1)
      {
        if (v23 >= *(v20 + 16))
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        sub_100009864(v24, v86);
        sub_10000E3E8(v86, v87);
        v25 = sub_1007A0684();
        sub_10000E3E8(v86, v87);
        sub_1007A0684();
        sub_1007A15B4();
        swift_allocObject();
        v26 = sub_1007A1574();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = v21;
        v29 = sub_1002F9CDC(v25);
        v30 = v21[2];
        v31 = (v28 & 1) == 0;
        v32 = v30 + v31;
        if (__OFADD__(v30, v31))
        {
          goto LABEL_54;
        }

        v33 = v28;
        if (v21[3] >= v32)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v21 = v85;
            if (v28)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1002F2608();
            v21 = v85;
            if (v33)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1003D6718(v32, isUniquelyReferenced_nonNull_native);
          v34 = sub_1002F9CDC(v25);
          if ((v33 & 1) != (v35 & 1))
          {
            sub_1007A3B24();
            __break(1u);
            return;
          }

          v29 = v34;
          v21 = v85;
          if (v33)
          {
LABEL_4:
            *(v21[7] + 8 * v29) = v26;

            goto LABEL_5;
          }
        }

        v21[(v29 >> 6) + 8] |= 1 << v29;
        *(v21[6] + 8 * v29) = v25;
        *(v21[7] + 8 * v29) = v26;
        v36 = v21[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_55;
        }

        v21[2] = v38;
LABEL_5:
        ++v23;
        sub_1000074E0(v86);
        v24 += 40;
        if (v84 == v23)
        {

          a1 = v82;
          v18 = v77;
          goto LABEL_26;
        }
      }
    }

LABEL_26:
    v86[0] = &_swiftEmptySetSingleton;
    v44 = *&a1[v18];
    if (!v44)
    {
      goto LABEL_31;
    }

    v85 = 0;
    if (![v44 performFetch:&v85])
    {
      v51 = v85;
      sub_1007967D4();

      swift_willThrow();
      if (qword_100AD1900 != -1)
      {
        swift_once();
      }

      v52 = sub_10079ACE4();
      sub_100008B98(v52, qword_100AECAC0);
      swift_errorRetain();
      v53 = sub_10079ACC4();
      v54 = sub_1007A29B4();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v85 = v56;
        *v55 = 136315138;
        swift_getErrorValue();
        v57 = sub_1007A3B84();
        v59 = sub_1000070F4(v57, v58, &v85);

        *(v55 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v53, v54, "Unable to fetch annotations: %s", v55, 0xCu);
        sub_1000074E0(v56);
      }

      else
      {
      }

      v76 = 0;
      goto LABEL_38;
    }

    v45 = *&a1[v18];
    v46 = v85;
    if (v45 && (v47 = [v45 fetchedObjects]) != 0)
    {
      v48 = v47;
      sub_10000A7C4(0, &qword_100AECB40, AEAnnotation_ptr);
      v49 = sub_1007A25E4();

      v50 = a1;

      sub_1005D7880(v49, v86, v50, v21);
      v76 = 0;
    }

    else
    {
LABEL_31:
      v76 = 0;
    }

LABEL_38:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v85);

    sub_10079F2B4();

    v60 = v86[0];
    v61 = v86[0] + 56;
    v62 = 1 << *(v86[0] + 32);
    v63 = -1;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    v64 = v63 & *(v86[0] + 56);
    v84 = OBJC_IVAR____TtC5Books25AnnotationProviderService_highlightChangeSubject;
    v65 = (v62 + 63) >> 6;
    v79 = enum case for AnnotationChange.updates<A>(_:);
    v66 = (v78 + 104);
    v67 = (v78 + 8);

    v68 = 0;
    v69 = v80;
    if (v64)
    {
      while (1)
      {
        v70 = v68;
LABEL_46:
        v71 = __clz(__rbit64(v64));
        v64 &= v64 - 1;
        v72 = v81;
        *v69 = *(*(v60 + 48) + ((v70 << 9) | (8 * v71)));
        (*v66)(v69, v79, v72);
        sub_10079B8C4();
        (*v67)(v69, v72);
        if (!v64)
        {
          goto LABEL_42;
        }
      }
    }

    while (1)
    {
LABEL_42:
      v70 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        __break(1u);
        goto LABEL_53;
      }

      if (v70 >= v65)
      {
        break;
      }

      v64 = *(v61 + 8 * v70);
      ++v68;
      if (v64)
      {
        v68 = v70;
        goto LABEL_46;
      }
    }

    v73 = v82;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v85);

    sub_10079B8C4();

    v74 = *&v73[v77];
    if (v74)
    {
      v75 = v74;
      [v75 setDelegate:v73];
    }

    else
    {
    }

    return;
  }

  if (qword_100AD1900 != -1)
  {
LABEL_56:
    swift_once();
  }

  v39 = sub_10079ACE4();
  sub_100008B98(v39, qword_100AECAC0);
  v40 = sub_10079ACC4();
  v41 = sub_1007A29B4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Unable to initialize annotation FRC", v42, 2u);
  }

  v43 = v83;
}

void sub_1005CD980()
{
  swift_beginAccess();
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1007A00E4();
  v3 = v2;
  if (v1 == sub_1007A00E4() && v3 == v4)
  {

    goto LABEL_8;
  }

  v6 = sub_1007A3AB4();

  if (v6)
  {
LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:
  isa = sub_1007A3BD4().super.super.isa;
  v9 = sub_1007A2214();
  [v0 setObject:isa forKey:v9];

  v10 = sub_1007A2214();
  [v0 setBool:v7 forKey:v10];
}

void sub_1005CDB5C(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1001F1160(&qword_100AECD18, &qword_100833F38);
  v66 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = (&v64 - v9);
  v11 = sub_1001F1160(&unk_100AECD20, &unk_100833F40);
  v65 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = (&v64 - v13);
  v15 = [a1 plLocationRangeStart];
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v16 = v15;
  v17 = [v15 integerValue];

  if (*(a2 + 16))
  {
    sub_1002F9CDC(v17);
    if (v18)
    {

      if ((sub_1005CE6EC(a1) & 1) == 0)
      {
        v19 = [a1 annotationType];
        if (v19 == 2)
        {
          v42 = sub_1005CE544();
          v43 = [a1 annotationUuid];
          if (v43)
          {
            v44 = v43;
            v65 = sub_1007A2254();
            v46 = v45;

            v47 = sub_1007A1554();
            v49 = v48;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v67 = *v49;
            *v49 = 0x8000000000000000;
            sub_1002F6324(v42, v65, v46, isUniquelyReferenced_nonNull_native);

            *v49 = v67;
            v47(v68, 0);
            if (a3)
            {
              v65 = v42;
              if (qword_100AD1900 != -1)
              {
                swift_once();
              }

              v51 = sub_10079ACE4();
              sub_100008B98(v51, qword_100AECAC0);
              v52 = v4;
              v53 = v65;

              v54 = sub_10079ACC4();
              v55 = sub_1007A2994();

              if (os_log_type_enabled(v54, v55))
              {
                v56 = swift_slowAlloc();
                v64 = swift_slowAlloc();
                v68[0] = v64;
                *v56 = 136315394;
                v57 = sub_1007A02D4();
                v59 = sub_1000070F4(v57, v58, v68);

                *(v56 + 4) = v59;
                *(v56 + 12) = 2080;
                sub_10000E3E8(&v52[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity], *&v52[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity + 24]);
                v53 = v65;
                v60 = sub_10079ECA4();
                v62 = sub_1000070F4(v60, v61, v68);

                *(v56 + 14) = v62;
                _os_log_impl(&_mh_execute_header, v54, v55, "Creating highlight for annotation:%s in book:%s", v56, 0x16u);
                swift_arrayDestroy();
              }

              *v10 = v53;
              v63 = v66;
              v66[13](v10, enum case for AnnotationChange.insert<A>(_:), v8);

              sub_10079B8C4();
              (*(v63 + 8))(v10, v8);
              swift_getKeyPath();
              swift_getKeyPath();
              sub_10079B9A4(v68);

              goto LABEL_24;
            }

LABEL_25:

            goto LABEL_26;
          }

LABEL_30:
          __break(1u);
          return;
        }

        if (v19 == 1)
        {
          v20 = sub_1005CE3BC();
          v21 = [a1 annotationUuid];
          if (v21)
          {
            v22 = v21;
            v66 = sub_1007A2254();
            v24 = v23;

            v25 = sub_1007A1594();
            v27 = v26;
            v28 = swift_isUniquelyReferenced_nonNull_native();
            v67 = *v27;
            *v27 = 0x8000000000000000;
            sub_1002F6360(v20, v66, v24, v28);

            *v27 = v67;
            v25(v68, 0);
            if (a3)
            {
              v66 = v20;
              if (qword_100AD1900 != -1)
              {
                swift_once();
              }

              v29 = sub_10079ACE4();
              sub_100008B98(v29, qword_100AECAC0);
              v30 = v66;

              v31 = v4;
              v32 = sub_10079ACC4();
              v33 = sub_1007A2994();

              if (os_log_type_enabled(v32, v33))
              {
                v34 = swift_slowAlloc();
                v64 = swift_slowAlloc();
                v68[0] = v64;
                *v34 = 136315394;
                v35 = sub_1007A02D4();
                v37 = sub_1000070F4(v35, v36, v68);

                *(v34 + 4) = v37;
                *(v34 + 12) = 2080;
                sub_10000E3E8(&v31[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity], *&v31[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity + 24]);
                v30 = v66;
                v38 = sub_10079ECA4();
                v40 = sub_1000070F4(v38, v39, v68);

                *(v34 + 14) = v40;
                _os_log_impl(&_mh_execute_header, v32, v33, "Creating bookmark for annotation:%s in book:%s", v34, 0x16u);
                swift_arrayDestroy();
              }

              v41 = v65;
              *v14 = v30;
              (*(v41 + 104))(v14, enum case for AnnotationChange.insert<A>(_:), v11);

              sub_10079B8C4();
              (*(v41 + 8))(v14, v11);
              swift_getKeyPath();
              swift_getKeyPath();
              sub_10079B9A4(v68);

LABEL_24:

              sub_10079B8C4();

LABEL_26:

              return;
            }

            goto LABEL_25;
          }

          goto LABEL_29;
        }
      }
    }
  }
}

id sub_1005CE3BC()
{
  v1 = sub_100796BB4();
  result = [v0 annotationUuid];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  sub_1007A2254();

  result = [v0 plLocationRangeStart];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  [result integerValue];

  result = [v0 annotationLocation];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  sub_1007A2254();

  result = [v0 userModificationDate];
  if (result)
  {
    v6 = result;
    sub_100796B64();

    sub_1007A0324();
    swift_allocObject();
    return sub_1007A0304();
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_1005CE544()
{
  v1 = sub_100796BB4();
  result = [v0 annotationUuid];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  sub_1007A2254();

  result = [v0 plLocationRangeStart];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  [result integerValue];

  result = [v0 annotationLocation];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  sub_1007A2254();

  result = [v0 userModificationDate];
  if (result)
  {
    v6 = result;
    sub_100796B64();

    AEAnnotation.normalizedStyle.getter();
    [v0 annotationHasNote];
    sub_1007A1604();
    swift_allocObject();
    return sub_1007A15F4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1005CE6EC(void *a1)
{
  v2 = [a1 annotationLocation];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1007A2254();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = sub_1007A2404();

      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  v10 = sub_1005CEA40();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1005D2BD8(v10);
    if (v12)
    {
      v13 = v12;
      v14 = v11[2];
      v15 = v11[3];

      v16 = sub_1007A1544();
      sub_1005E9A14(v13, v14, v15);
      v16(v28, 0);
      if (qword_100AD1900 != -1)
      {
        swift_once();
      }

      v17 = sub_10079ACE4();
      sub_100008B98(v17, qword_100AECAC0);

      v18 = v1;
      v19 = sub_10079ACC4();
      v20 = sub_1007A2994();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v28[0] = swift_slowAlloc();
        *v21 = 136315394;
        v22 = v11[2];
        v23 = v11[3];

        v24 = sub_1000070F4(v22, v23, v28);

        *(v21 + 4) = v24;
        *(v21 + 12) = 2080;
        sub_10000E3E8(&v18[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity], *&v18[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity + 24]);
        v25 = sub_10079ECA4();
        v27 = sub_1000070F4(v25, v26, v28);

        *(v21 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v19, v20, "Creating upgrade request for annotation:%s in book:%s", v21, 0x16u);
        swift_arrayDestroy();
      }
    }

    else
    {
    }
  }

  return 1;
}

uint64_t sub_1005CE9A8()
{
  v1 = [v0 annotationLocation];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = sub_1007A2254();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

LABEL_7:
    v8 = 0;
    return v8 & 1;
  }

  v7 = sub_1007A2404();

  v8 = v7 ^ 1;
  return v8 & 1;
}

id sub_1005CEA40()
{
  result = [v0 plUserData];
  if (result)
  {
    v2 = result;
    v3 = sub_1007969D4();
    v5 = v4;

    v6 = objc_opt_self();
    isa = sub_1007969C4().super.isa;
    v24[0] = 0;
    v8 = [v6 propertyListWithData:isa options:0 format:0 error:v24];

    v9 = v24[0];
    if (v8)
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
      result = [v0 annotationUuid];
      if (result)
      {
        v10 = result;
        v11 = sub_1007A2254();
        v13 = v12;
        sub_10000ADCC(v3, v5);

        sub_1000076D4(v25, v24);
        type metadata accessor for AnnotationProviderService.AnnotationUpgradeEntity();
        v14 = swift_allocObject();
        *(v14 + 16) = v11;
        *(v14 + 24) = v13;
        sub_1000076D4(v24, v14 + 32);
        return v14;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v15 = v9;
      sub_1007967D4();

      swift_willThrow();
      if (qword_100AD1900 != -1)
      {
        swift_once();
      }

      v16 = sub_10079ACE4();
      sub_100008B98(v16, qword_100AECAC0);
      swift_errorRetain();
      v17 = sub_10079ACC4();
      v18 = sub_1007A29B4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25[0] = v20;
        *v19 = 136315138;
        swift_getErrorValue();
        v21 = sub_1007A3B84();
        v23 = sub_1000070F4(v21, v22, v25);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "Unable to deserialize user data: %s", v19, 0xCu);
        sub_1000074E0(v20);

        sub_10000ADCC(v3, v5);
      }

      else
      {
        sub_10000ADCC(v3, v5);
      }

      return 0;
    }
  }

  return result;
}

void sub_1005CED48(void *a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AECD18, &qword_100833F38);
  v89 = *(v4 - 8);
  v90 = v4;
  __chkstk_darwin(v4);
  v6 = (&v86 - v5);
  v7 = sub_1001F1160(&unk_100AECD20, &unk_100833F40);
  v91 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = (&v86 - v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v92);

  v10 = [a1 annotationUuid];
  if (!v10)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = v10;
  sub_1007A2254();

  v12 = sub_10079F254();

  if (!v12)
  {
    return;
  }

  v13 = sub_1007A15A4();
  v14 = [a1 annotationUuid];
  if (!v14)
  {
    goto LABEL_33;
  }

  v15 = v14;
  v16 = sub_1007A2254();
  v18 = v17;

  if (*(v13 + 16))
  {
    sub_10000E53C(v16, v18);
    v20 = v19;

    v21 = &selRef_networkReachabilityChangedWithNotification_;
    if (v20)
    {
      if (qword_100AD1900 != -1)
      {
        swift_once();
      }

      v22 = sub_10079ACE4();
      sub_100008B98(v22, qword_100AECAC0);
      v23 = a1;
      v24 = v2;
      v25 = sub_10079ACC4();
      v26 = sub_1007A2994();
      v27 = os_log_type_enabled(v25, v26);
      v90 = v24;
      if (v27)
      {
        v88 = v26;
        v28 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v92[0] = v87;
        *v28 = 136315394;
        v29 = [v23 annotationUuid];
        v89 = v23;

        if (!v29)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v30 = sub_1007A2254();
        v32 = v31;

        v33 = sub_1000070F4(v30, v32, v92);

        *(v28 + 4) = v33;
        *(v28 + 12) = 2080;
        sub_10000E3E8(&v24[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity], *&v24[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity + 24]);
        v34 = sub_10079ECA4();
        v36 = sub_1000070F4(v34, v35, v92);

        *(v28 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v25, v88, "Removing bookmark for annotation:%s in book:%s", v28, 0x16u);
        swift_arrayDestroy();

        v21 = &selRef_networkReachabilityChangedWithNotification_;
        v23 = v89;
      }

      else
      {
      }

      v59 = [v23 v21[359]];
      if (v59)
      {
        v60 = v59;
        v61 = sub_1007A2254();
        v63 = v62;

        v64 = sub_1007A1594();
        sub_1005E9B6C(0, v61, v63);
        v64(v92, 0);
        v65 = [v23 v21[359]];
        if (v65)
        {
          v66 = v65;
          v67 = sub_1007A2254();
          v69 = v68;

          v70 = sub_1007A1584();
          *v9 = v67;
          v9[1] = v69;
          v9[2] = v70;
          v71 = v91;
          (*(v91 + 104))(v9, enum case for AnnotationChange.delete<A>(_:), v7);
          sub_10079B8C4();
          (*(v71 + 8))(v9, v7);
          swift_getKeyPath();
          swift_getKeyPath();
LABEL_29:
          sub_10079B9A4(v92);

          sub_10079B8C4();

          goto LABEL_30;
        }

        goto LABEL_36;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  else
  {

    v21 = &selRef_networkReachabilityChangedWithNotification_;
  }

  v37 = sub_1007A1564();
  v38 = [a1 annotationUuid];
  if (!v38)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v39 = v38;
  v40 = sub_1007A2254();
  v42 = v41;

  if (*(v37 + 16))
  {
    sub_10000E53C(v40, v42);
    v44 = v43;

    if (v44)
    {
      if (qword_100AD1900 != -1)
      {
        swift_once();
      }

      v45 = sub_10079ACE4();
      sub_100008B98(v45, qword_100AECAC0);
      v46 = a1;
      v47 = v2;
      v48 = sub_10079ACC4();
      v49 = sub_1007A2994();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v92[0] = v91;
        *v50 = 136315394;
        v51 = [v46 annotationUuid];

        if (!v51)
        {
LABEL_40:
          __break(1u);
          return;
        }

        v52 = sub_1007A2254();
        v54 = v53;

        v55 = sub_1000070F4(v52, v54, v92);

        *(v50 + 4) = v55;
        *(v50 + 12) = 2080;
        sub_10000E3E8(&v47[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity], *&v47[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity + 24]);
        v56 = sub_10079ECA4();
        v58 = sub_1000070F4(v56, v57, v92);

        *(v50 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v48, v49, "Removing highlight for annotation:%s in book:%s", v50, 0x16u);
        swift_arrayDestroy();

        v21 = &selRef_networkReachabilityChangedWithNotification_;
      }

      else
      {
      }

      v72 = [v46 v21[359]];
      if (v72)
      {
        v73 = v72;
        v74 = sub_1007A2254();
        v76 = v75;

        v77 = sub_1007A1554();
        sub_1005E9BAC(0, v74, v76);
        v77(v92, 0);
        v78 = [v46 v21[359]];
        if (v78)
        {
          v79 = v78;
          v80 = sub_1007A2254();
          v82 = v81;

          v83 = sub_1007A1584();
          *v6 = v80;
          v6[1] = v82;
          v6[2] = v83;
          v85 = v89;
          v84 = v90;
          (*(v89 + 13))(v6, enum case for AnnotationChange.delete<A>(_:), v90);
          sub_10079B8C4();
          v85[1](v6, v84);
          swift_getKeyPath();
          swift_getKeyPath();
          goto LABEL_29;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  else
  {
  }

LABEL_30:
}

void sub_1005CF688(void *a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AECD18, &qword_100833F38);
  v102 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (&v98 - v5);
  v7 = sub_1001F1160(&unk_100AECD20, &unk_100833F40);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v98 - v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v104);

  v11 = [a1 plLocationRangeStart];
  if (!v11)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = v11;
  [v11 integerValue];

  v13 = sub_10079F264();

  if (!v13)
  {
    return;
  }

  v14 = [a1 annotationType];
  if (v14 == 2)
  {
    v40 = [a1 annotationUuid];
    if (v40)
    {
      v41 = v40;
      v42 = sub_1007A2254();
      v44 = v43;

      v45 = sub_1007A1564();
      if (*(v45 + 16))
      {
        v46 = sub_10000E53C(v42, v44);
        v48 = v47;

        if (v48)
        {
          v49 = *(*(v45 + 56) + 8 * v46);

          if (qword_100AD1900 != -1)
          {
            swift_once();
          }

          v50 = sub_10079ACE4();
          sub_100008B98(v50, qword_100AECAC0);
          v51 = a1;
          v52 = v2;
          v53 = sub_10079ACC4();
          v54 = sub_1007A2994();
          v55 = os_log_type_enabled(v53, v54);
          v101 = v52;
          if (v55)
          {
            v99 = v54;
            v100 = v49;
            v56 = v52;
            v57 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v104[0] = v98;
            *v57 = 136315394;
            v58 = [v51 annotationUuid];

            if (!v58)
            {
LABEL_42:
              __break(1u);
              return;
            }

            v59 = sub_1007A2254();
            v61 = v60;

            v62 = sub_1000070F4(v59, v61, v104);

            *(v57 + 4) = v62;
            *(v57 + 12) = 2080;
            sub_10000E3E8(&v56[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity], *&v56[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity + 24]);
            v63 = sub_10079ECA4();
            v65 = sub_1000070F4(v63, v64, v104);

            *(v57 + 14) = v65;
            _os_log_impl(&_mh_execute_header, v53, v99, "Updating highlight for annotation:%s in book:%s", v57, 0x16u);
            swift_arrayDestroy();

            v49 = v100;
          }

          else
          {
          }

          sub_1005CE544();
          sub_1007A15C4();

          v82 = [v51 annotationUuid];
          if (v82)
          {
            v83 = v82;
            v84 = sub_1007A2254();
            v86 = v85;

            v87 = sub_1007A1554();
            v89 = v88;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v103 = *v89;
            *v89 = 0x8000000000000000;
            sub_1002F6324(v49, v84, v86, isUniquelyReferenced_nonNull_native);

            *v89 = v103;
            v87(v104, 0);
            v91 = [v51 annotationUuid];
            if (v91)
            {
              v92 = v91;
              v93 = sub_1007A2254();
              v95 = v94;

              v96 = sub_1007A1584();
              *v6 = v93;
              v6[1] = v95;
              v6[2] = v96;
              v97 = v102;
              (v102)[13](v6, enum case for AnnotationChange.update<A>(_:), v4);
              sub_10079B8C4();
              (v97[1])(v6, v4);
              swift_getKeyPath();
              swift_getKeyPath();
              sub_10079B9A4(v104);

              sub_10079B8C4();

              goto LABEL_31;
            }

            goto LABEL_40;
          }

          goto LABEL_38;
        }

        goto LABEL_22;
      }

LABEL_21:

LABEL_22:

      goto LABEL_32;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v14 == 1)
  {
    v15 = [a1 annotationUuid];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1007A2254();
      v19 = v18;

      v20 = sub_1007A15A4();
      if (*(v20 + 16))
      {
        v21 = sub_10000E53C(v17, v19);
        v23 = v22;

        if (v23)
        {
          v24 = *(*(v20 + 56) + 8 * v21);

          sub_1005CE3BC();
          sub_1007A02C4();

          if (qword_100AD1900 != -1)
          {
            swift_once();
          }

          v25 = sub_10079ACE4();
          sub_100008B98(v25, qword_100AECAC0);
          v26 = a1;
          v27 = v2;
          v28 = sub_10079ACC4();
          v29 = sub_1007A2994();
          v30 = os_log_type_enabled(v28, v29);
          v100 = v27;
          v101 = v24;
          v102 = v26;
          if (v30)
          {
            v99 = v29;
            v31 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v104[0] = v98;
            *v31 = 136315394;
            v32 = [v26 annotationUuid];

            if (!v32)
            {
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            v33 = sub_1007A2254();
            v35 = v34;

            v36 = sub_1000070F4(v33, v35, v104);

            *(v31 + 4) = v36;
            *(v31 + 12) = 2080;
            sub_10000E3E8(&v27[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity], *&v27[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity + 24]);
            v37 = sub_10079ECA4();
            v39 = sub_1000070F4(v37, v38, v104);

            *(v31 + 14) = v39;
            _os_log_impl(&_mh_execute_header, v28, v99, "Updating bookmark for annotation:%s in book:%s", v31, 0x16u);
            swift_arrayDestroy();

            v24 = v101;
            v26 = v102;
          }

          else
          {
          }

          v66 = [v26 annotationUuid];
          if (v66)
          {
            v67 = v66;
            v68 = sub_1007A2254();
            v70 = v69;

            v71 = sub_1007A1594();
            v72 = v24;
            v74 = v73;
            v75 = swift_isUniquelyReferenced_nonNull_native();
            v103 = *v74;
            *v74 = 0x8000000000000000;
            sub_1002F6360(v72, v68, v70, v75);

            *v74 = v103;
            v71(v104, 0);
            v76 = [v102 annotationUuid];
            if (v76)
            {
              v77 = v76;
              v78 = sub_1007A2254();
              v80 = v79;

              v81 = sub_1007A1584();
              *v10 = v78;
              v10[1] = v80;
              v10[2] = v81;
              (*(v8 + 104))(v10, enum case for AnnotationChange.update<A>(_:), v7);
              sub_10079B8C4();
              (*(v8 + 8))(v10, v7);
              swift_getKeyPath();
              swift_getKeyPath();
              sub_10079B9A4(v104);

              sub_10079B8C4();

LABEL_31:

              goto LABEL_32;
            }

            goto LABEL_39;
          }

          goto LABEL_37;
        }

        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_32:
}

Swift::Void __swiftcall AnnotationProviderService.upgrade(annotationCFILocations:)(Swift::OpaquePointer annotationCFILocations)
{
  v3 = *(annotationCFILocations._rawValue + 2);
  if (v3)
  {
    v4 = sub_1005D659C(*(annotationCFILocations._rawValue + 2), 0, &unk_100AE0B30, &qword_10081B480);
    v5 = sub_1005D7258(&v17, v4 + 4, v3, annotationCFILocations._rawValue);
    v6 = v17;

    sub_10004DC54(v6);
    if (v5 != v3)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    if (v4[2])
    {
LABEL_4:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
LABEL_7:
        v12 = *&v1[OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationModifier];
        isa = sub_1007A25D4().super.isa;

        v14 = swift_allocObject();
        v14[2]._rawValue = annotationCFILocations._rawValue;
        v14[3]._rawValue = v1;
        v21 = sub_1005D7E50;
        v22 = v14;
        v17 = _NSConcreteStackBlock;
        v18 = 1107296256;
        v19 = sub_100551914;
        v20 = &unk_100A250D8;
        v15 = _Block_copy(&v17);

        v16 = v1;

        [v12 modifyAnnotationsWithUUIDs:isa type:1 performBlock:v15];
        _Block_release(v15);

        return;
      }

      v8 = [Strong privateUserEditMOC];
      swift_unknownObjectRelease();
      if (v8)
      {
        v9 = swift_allocObject();
        *(v9 + 16) = v1;
        v21 = sub_1005D7E48;
        v22 = v9;
        v17 = _NSConcreteStackBlock;
        v18 = 1107296256;
        v19 = sub_1003323D0;
        v20 = &unk_100A25088;
        v10 = _Block_copy(&v17);
        v11 = v1;

        [v8 performBlock:v10];
        _Block_release(v10);

        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else if (_swiftEmptyArrayStorage[2])
  {
    goto LABEL_4;
  }
}

void sub_1005D03F4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v11);

  v1 = sub_10079F2A4();

  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      do
      {
LABEL_9:
        v4 &= v4 - 1;

        v8 = sub_1007A1544();
        v10 = v9;

        *v10 = _swiftEmptyDictionarySingleton;
        v8(v11, 0);
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
}

void sub_1005D0584(unint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void *a6)
{
  if (a1)
  {
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
    {
      v11 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v12 = sub_1007A3784();
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            goto LABEL_13;
          }

          v12 = *(a1 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v16 = v12;
        sub_1005D068C(&v16, a5, a6);

        ++v11;
        if (v14 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }

LABEL_15:
  if (a3)
  {
    a3();
  }
}

void sub_1005D068C(id *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = [*a1 annotationUuid];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1007A2254();
    v10 = v9;

    if (!*(a2 + 16))
    {

      return;
    }

    v11 = sub_10000E53C(v8, v10);
    v13 = v12;

    if (v13)
    {
      v14 = (*(a2 + 56) + 16 * v11);
      v16 = *v14;
      v15 = v14[1];

      if (sub_1005CE9A8())
      {
        if (qword_100AD1900 != -1)
        {
          swift_once();
        }

        v17 = sub_10079ACE4();
        sub_100008B98(v17, qword_100AECAC0);

        v18 = v5;
        v19 = a3;
        v20 = sub_10079ACC4();
        v21 = sub_1007A29B4();
        if (os_log_type_enabled(v20, v21))
        {
          v33 = v21;
          log = v20;
          v22 = v16;
          v23 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v23 = 136315650;
          v24 = [v18 annotationLocation];

          if (!v24)
          {
            __break(1u);
            return;
          }

          v25 = sub_1007A2254();
          v27 = v26;

          v28 = sub_1000070F4(v25, v27, &v35);

          *(v23 + 4) = v28;
          *(v23 + 12) = 2080;
          *(v23 + 14) = sub_1000070F4(v22, v15, &v35);
          *(v23 + 22) = 2080;
          sub_10000E3E8(&v19[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity], *&v19[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity + 24]);
          v29 = sub_10079ECA4();
          v31 = sub_1000070F4(v29, v30, &v35);

          *(v23 + 24) = v31;
          v20 = log;
          _os_log_impl(&_mh_execute_header, log, v33, "Updating non-empty annotation cfiLocation:%s to:%s in:%s", v23, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
        }
      }

      v32 = sub_1007A2214();

      [v5 setAnnotationLocation:v32];
    }
  }
}

void AnnotationProviderService.bookmark(location:documentOrdinal:pageOffset:eventType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v42 = a3;
  v43 = a1;
  v10 = sub_100796C04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &OBJC_INSTANCE_METHODS__TtP5Books25BKSharedWithYouProviderJS_;
  if (a5)
  {
    if (a5 == 1)
    {
      v41 = a4;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = *&Strong[OBJC_IVAR___BKEngagementManager_eventController];
        v39 = "userQuicklyTurnedSeveralPages";
        v40 = Strong;
        sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10080B690;
        *(inited + 32) = 0x7463617265746E69;
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = 0xEB000000006E6F69;
        *(inited + 48) = 0x6154656C62756F64;
        *(inited + 56) = 0xE900000000000070;
        v18 = v16;
        sub_100019158(inited);
        swift_setDeallocating();
        sub_100007840(inited + 32, &unk_100ADD560, &unk_10080CDC0);
        sub_10079E994();

        v14 = &OBJC_INSTANCE_METHODS__TtP5Books25BKSharedWithYouProviderJS_;
      }

      v19 = swift_unknownObjectWeakLoadStrong();
      a4 = v41;
      if (v19)
      {
        v20 = v19;
        v21 = *(v19 + OBJC_IVAR___BKEngagementManager_manager);
        v22 = sub_1007999E4();

        a4 = v41;
        if (v22)
        {
          type metadata accessor for SessionDonor(0);
          v23 = swift_dynamicCastClass();
          if (v23 && v23[OBJC_IVAR___BKSessionDonor_everUsedDoubleTapToBookmark] != 1)
          {
            v23[OBJC_IVAR___BKSessionDonor_everUsedDoubleTapToBookmark] = 1;
            [v23 propertyDidChange:v23 propertyConfiguration:*&v23[OBJC_IVAR___BKSessionDonor_everUsedDoubleTapToBookmarkAppConfig]];
          }

          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      v24 = swift_unknownObjectWeakLoadStrong();
      if (v24)
      {
        v25 = *&v24[OBJC_IVAR___BKEngagementManager_eventController];
        v41 = a4;
        v40 = v24;
        sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
        v26 = swift_initStackObject();
        *(v26 + 16) = xmmword_10080B690;
        *(v26 + 32) = 0x7463617265746E69;
        *(v26 + 72) = &type metadata for String;
        *(v26 + 40) = 0xEB000000006E6F69;
        *(v26 + 48) = 1970169197;
        *(v26 + 56) = 0xE400000000000000;
        v27 = v25;
        sub_100019158(v26);
        swift_setDeallocating();
        sub_100007840(v26 + 32, &unk_100ADD560, &unk_10080CDC0);
        a4 = v41;
        sub_10079E994();

        v14 = &OBJC_INSTANCE_METHODS__TtP5Books25BKSharedWithYouProviderJS_;
      }
    }
  }

  v28 = *&v6[OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationModifier];
  sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
  v29 = swift_allocObject();
  *(v29 + 16) = *&v14[210].entrysize;
  _s5Books7InfoBarO7MessageC2id10Foundation4UUIDVvpfi_0();
  v30 = sub_100796BC4();
  v32 = v31;
  (*(v11 + 8))(v13, v10);
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  isa = sub_1007A25D4().super.isa;

  v34 = swift_allocObject();
  v35 = v42;
  v34[2] = v6;
  v34[3] = v35;
  v36 = v43;
  v34[4] = a4;
  v34[5] = v36;
  v34[6] = a2;
  aBlock[4] = sub_1005D7E58;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100551914;
  aBlock[3] = &unk_100A25128;
  v37 = _Block_copy(aBlock);
  v38 = v6;

  [v28 modifyAnnotationsWithUUIDs:isa type:1 performBlock:v37];
  _Block_release(v37);
}

void sub_1005D0F10(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v50 = a7;
  v51 = a4;
  v14 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v14 - 8);
  v16 = v48 - v15;
  v17 = sub_100796BB4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v21 - 8);
  v23 = v48 - v22;
  if (a1)
  {
    v48[1] = a8;
    v49 = a3;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v24 = sub_1007A3784();
      goto LABEL_5;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(a1 + 32);
LABEL_5:
      v25 = v24;
      [v24 setAnnotationType:1];
      v26 = [v25 annotationCreationDate];
      if (v26)
      {
        v27 = v26;
        sub_100796B64();

        (*(v18 + 56))(v23, 0, 1, v17);
        sub_100007840(v23, &unk_100ADB5C0, &unk_100816880);
      }

      else
      {
        (*(v18 + 56))(v23, 1, 1, v17);
        sub_100007840(v23, &unk_100ADB5C0, &unk_100816880);
        sub_100796BA4();
        isa = sub_100796AF4().super.isa;
        (*(v18 + 8))(v20, v17);
        [v25 setAnnotationCreationDate:isa];
      }

      sub_100796BA4();
      v38 = sub_100796AF4().super.isa;
      (*(v18 + 8))(v20, v17);
      [v25 setUserModificationDate:v38];

      [v25 setAnnotationCreatorIdentifier:kAEAnnotationCreatorIdentifier_iBooks];
      sub_10000E3E8(&a5[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity], *&a5[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity + 24]);
      sub_10079ECA4();
      v39 = sub_1007A2214();

      [v25 setAnnotationAssetID:v39];

      [v25 setOrdinal:a6];
      v40 = objc_allocWithZone(BKPageLocation);
      v41 = [v40 initWithOrdinal:a6 andOffset:v50];
      [v25 setLocation:v41];

      v42 = sub_1007A2214();
      [v25 setAnnotationLocation:v42];

      v43 = sub_1007A2744();
      (*(*(v43 - 8) + 56))(v16, 1, 1, v43);
      sub_1007A26F4();
      v44 = a5;
      v45 = sub_1007A26E4();
      v46 = swift_allocObject();
      v46[2] = v45;
      v46[3] = &protocol witness table for MainActor;
      v46[4] = v44;
      sub_100345AA0(0, 0, v16, &unk_100833FC8, v46);

      if (v49)
      {
        (v49)(v47);
      }

      return;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_100AD1900 != -1)
  {
LABEL_18:
    swift_once();
  }

  v28 = sub_10079ACE4();
  sub_100008B98(v28, qword_100AECAC0);
  v29 = a5;
  v30 = sub_10079ACC4();
  v31 = sub_1007A29B4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v52 = v33;
    *v32 = 136315138;
    sub_10000E3E8(&v29[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity], *&v29[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity + 24]);
    v34 = sub_10079ECA4();
    v36 = sub_1000070F4(v34, v35, &v52);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "Failed to fetch or create annotation for %s", v32, 0xCu);
    sub_1000074E0(v33);
  }

  if (a3)
  {
    a3();
  }
}

uint64_t sub_1005D14F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for AnalyticsEvent.ReadingEvent(0);
  v4[5] = swift_task_alloc();
  sub_1007A26F4();
  v4[6] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1005D15C0, v6, v5);
}

uint64_t sub_1005D15C0()
{

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 40);
    v3 = enum case for ViewType.bookmark(_:);
    v4 = sub_1007983A4();
    (*(*(v4 - 8) + 104))(v2, v3, v4);
    swift_storeEnumTagMultiPayload();
    sub_1002A1460(v2);

    sub_1005D8258(v2);
  }

  **(v0 + 16) = Strong == 0;

  v5 = *(v0 + 8);

  return v5();
}

Swift::Void __swiftcall AnnotationProviderService.delete(annotations:)(Swift::OpaquePointer annotations)
{
  v2 = v1;
  if (annotations._rawValue >> 62)
  {
    v4 = sub_1007A38D4();
  }

  else
  {
    v4 = *((annotations._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
LABEL_15:
    v20 = *&v1[OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationModifier];
    isa = sub_1007A25D4().super.isa;

    v22 = swift_allocObject();
    *(v22 + 16) = v2;
    v25[4] = sub_1005D7E88;
    v25[5] = v22;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 1107296256;
    v25[2] = sub_100551914;
    v25[3] = &unk_100A25178;
    v23 = _Block_copy(v25);
    v24 = v2;

    [v20 modifyAnnotationsWithUUIDs:isa type:1 performBlock:v23];
    _Block_release(v23);

    return;
  }

  v25[0] = _swiftEmptyArrayStorage;
  sub_1003BD0CC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v25[0];
    if ((annotations._rawValue & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        sub_1007A3784();
        v7 = _s8BookEPUB25HighlightAnnotationEntityC5BooksE14annotationUuidSSvg_0();
        v9 = v8;
        swift_unknownObjectRelease();
        v25[0] = v5;
        v11 = *(v5 + 16);
        v10 = *(v5 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1003BD0CC((v10 > 1), v11 + 1, 1);
          v5 = v25[0];
        }

        ++v6;
        *(v5 + 16) = v11 + 1;
        v12 = v5 + 16 * v11;
        *(v12 + 32) = v7;
        *(v12 + 40) = v9;
      }

      while (v4 != v6);
    }

    else
    {
      v13 = annotations._rawValue + 32;
      do
      {

        v14 = _s8BookEPUB25HighlightAnnotationEntityC5BooksE14annotationUuidSSvg_0();
        v16 = v15;

        v25[0] = v5;
        v18 = *(v5 + 16);
        v17 = *(v5 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1003BD0CC((v17 > 1), v18 + 1, 1);
          v5 = v25[0];
        }

        *(v5 + 16) = v18 + 1;
        v19 = v5 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        v13 += 8;
        --v4;
      }

      while (v4);
    }

    goto LABEL_15;
  }

  __break(1u);
}

Swift::Void __swiftcall AnnotationProviderService.deleteAnnotationsWithUUIDs(_:)(Swift::OpaquePointer a1)
{
  v2 = *&v1[OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationModifier];
  isa = sub_1007A25D4().super.isa;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v7[4] = sub_1005D8898;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100551914;
  v7[3] = &unk_100A251C8;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v2 modifyAnnotationsWithUUIDs:isa type:1 performBlock:v5];
  _Block_release(v5);
}

void sub_1005D1A48(unint64_t a1, uint64_t a2, void (*a3)(__n128), uint64_t a4, void *a5)
{
  v56 = a5;
  v49[1] = a4;
  v50 = a3;
  v6 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v6 - 8);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v55 = v49 - v10;
  __chkstk_darwin(v11);
  v57 = v49 - v12;
  v14.n128_f64[0] = __chkstk_darwin(v13);
  v54 = v49 - v15;
  v58 = a1;
  if (a1)
  {
    v16 = v58 & 0xFFFFFFFFFFFFFF8;
    if (v58 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
    {
      v18 = 0;
      v52 = i;
      v53 = v58 & 0xC000000000000001;
      v51 = v8;
      while (v53)
      {
        v23 = sub_1007A3784();
        v22 = v57;
        v24 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_31;
        }

LABEL_11:
        v59 = v24;
        v60 = v23;
        v25 = [v23 annotationType];
        v26 = sub_1007A2744();
        v27 = *(v26 - 8);
        v28 = (v27 + 48);
        v29 = *(v27 + 56);
        if (v25 == 1)
        {
          v8 = v16;
          v30 = v54;
          v29(v54, 1, 1, v26);
          sub_1007A26F4();
          v31 = v56;
          v32 = sub_1007A26E4();
          v33 = swift_allocObject();
          v33[2] = v32;
          v33[3] = &protocol witness table for MainActor;
          v33[4] = v31;
          sub_1005D85B8(v30, v22);
          LODWORD(v32) = (*v28)(v22, 1, v26);

          if (v32 == 1)
          {
            sub_100007840(v22, &qword_100AD67D0, &qword_100814660);
          }

          else
          {
            sub_1007A2734();
            (*(v27 + 8))(v22, v26);
          }

          v39 = v33[2];
          swift_unknownObjectRetain();

          v16 = v8;
          if (v39)
          {
            swift_getObjectType();
            v40 = sub_1007A2694();
            v42 = v41;
            swift_unknownObjectRelease();
          }

          else
          {
            v40 = 0;
            v42 = 0;
          }

          sub_100007840(v54, &qword_100AD67D0, &qword_100814660);
          v47 = swift_allocObject();
          *(v47 + 16) = &unk_100833FB0;
          *(v47 + 24) = v33;
          sub_1001F1160(&qword_100ADD528, &qword_100833FA0);
          if (v42 | v40)
          {
            v61 = 0;
            v62 = 0;
            v63 = v40;
            v64 = v42;
          }

          v19 = v52;
          v21 = v59;
          v20 = v60;
        }

        else
        {
          v34 = v55;
          v29(v55, 1, 1, v26);
          sub_1007A26F4();
          v35 = v56;
          v36 = sub_1007A26E4();
          v37 = swift_allocObject();
          v37[2] = v36;
          v37[3] = &protocol witness table for MainActor;
          v37[4] = v35;
          v38 = v51;
          sub_1005D85B8(v34, v51);
          LODWORD(v36) = (*v28)(v38, 1, v26);

          if (v36 == 1)
          {
            sub_100007840(v38, &qword_100AD67D0, &qword_100814660);
          }

          else
          {
            sub_1007A2734();
            (*(v27 + 8))(v38, v26);
          }

          v43 = v37[2];
          swift_unknownObjectRetain();

          if (v43)
          {
            swift_getObjectType();
            v44 = sub_1007A2694();
            v46 = v45;
            swift_unknownObjectRelease();
          }

          else
          {
            v44 = 0;
            v46 = 0;
          }

          sub_100007840(v55, &qword_100AD67D0, &qword_100814660);
          v48 = swift_allocObject();
          *(v48 + 16) = &unk_100833F90;
          *(v48 + 24) = v37;
          sub_1001F1160(&qword_100ADD528, &qword_100833FA0);
          if (v46 | v44)
          {
            v65 = 0;
            v66 = 0;
            v67 = v44;
            v68 = v46;
          }

          v19 = v52;
          v21 = v59;
          v20 = v60;
        }

        swift_task_create();

        [v20 setAnnotationDeleted:1];

        ++v18;
        if (v21 == v19)
        {
          goto LABEL_34;
        }
      }

      v22 = v57;
      if (v18 >= *(v16 + 16))
      {
        goto LABEL_32;
      }

      v23 = *(v58 + 8 * v18 + 32);
      v24 = v18 + 1;
      if (!__OFADD__(v18, 1))
      {
        goto LABEL_11;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }
  }

LABEL_34:
  if (v50)
  {
    v50(v14);
  }
}

uint64_t sub_1005D203C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for AnalyticsEvent.ReadingEvent(0);
  v4[5] = swift_task_alloc();
  sub_1007A26F4();
  v4[6] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1005D2104, v6, v5);
}

uint64_t sub_1005D2104()
{

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 40);
    v3 = enum case for ViewType.bookmark(_:);
    v4 = sub_1007983A4();
    (*(*(v4 - 8) + 104))(v2, v3, v4);
    swift_storeEnumTagMultiPayload();
    sub_1002A1460(v2);

    sub_1005D8258(v2);
  }

  **(v0 + 16) = Strong == 0;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1005D2214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for AnalyticsEvent.ReadingEvent(0);
  v4[5] = swift_task_alloc();
  sub_1007A26F4();
  v4[6] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1005D22DC, v6, v5);
}

uint64_t sub_1005D22DC()
{

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 40);
    v3 = enum case for ViewType.highlights(_:);
    v4 = sub_1007983A4();
    (*(*(v4 - 8) + 104))(v2, v3, v4);
    swift_storeEnumTagMultiPayload();
    sub_1002A1460(v2);

    sub_1005D8258(v2);
  }

  **(v0 + 16) = Strong == 0;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t AnnotationProviderService.deleteAssociatedNotesFromAnnotationsWithUUIDs(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_1007A26F4();
  v2[5] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_1005D2488, v4, v3);
}

uint64_t sub_1005D2488()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v0[9] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v0[10] = v5;
  v0[11] = v4;

  return _swift_task_switch(sub_1005D2534, v5, v4);
}

uint64_t sub_1005D2534(uint64_t a1)
{
  v2 = v1[4].i64[0];
  v7 = v1[1];
  v3 = sub_1007A26E4();
  v1[6].i64[0] = v3;
  v4 = swift_task_alloc();
  v1[6].i64[1] = v4;
  v4[1] = vextq_s8(v7, v7, 8uLL);
  v4[2].i32[0] = 1;
  v4[2].i64[1] = sub_1005D7E90;
  v4[3].i64[0] = v2;
  v5 = swift_task_alloc();
  v1[7].i64[0] = v5;
  *v5 = v1;
  v5[1] = sub_1005D2670;

  return withCheckedContinuation<A>(isolation:function:_:)(v5, v3, &protocol witness table for MainActor, 0xD000000000000027, 0x80000001008DFE60, sub_1005D7E98, v4, &type metadata for () + 8);
}

uint64_t sub_1005D2670()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1005D27D0, v3, v2);
}

uint64_t sub_1005D27D0()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_10022C3F4, v1, v2);
}

void sub_1005D283C(unint64_t a1, void *a2)
{
  v4 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:
    v11 = sub_1007A2744();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_1007A26F4();
    v12 = a2;
    v13 = sub_1007A26E4();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v12;
    sub_100345AA0(0, 0, v6, &unk_100833F80, v14);

    return;
  }

  v7 = sub_1007A38D4();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = sub_1007A3784();
      }

      else
      {
        v9 = *(a1 + 8 * i + 32);
      }

      v10 = v9;
      [v9 setAnnotationNote:0];
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1005D2A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for AnalyticsEvent.ReadingEvent(0);
  v4[5] = swift_task_alloc();
  sub_1007A26F4();
  v4[6] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1005D2AC8, v6, v5);
}

uint64_t sub_1005D2AC8()
{

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 40);
    v3 = enum case for ViewType.notes(_:);
    v4 = sub_1007983A4();
    (*(*(v4 - 8) + 104))(v2, v3, v4);
    swift_storeEnumTagMultiPayload();
    sub_1002A1460(v2);

    sub_1005D8258(v2);
  }

  **(v0 + 16) = Strong == 0;

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_1005D2BD8(uint64_t a1)
{
  v3 = sub_100013740(_swiftEmptyArrayStorage);
  swift_beginAccess();
  sub_100007484(a1 + 32, v29);
  sub_1001F1160(&unk_100AEF1B0, &qword_10081EB10);
  if (swift_dynamicCast())
  {

    v4 = objc_opt_self();
    isa = sub_1007A2024().super.isa;

    v6 = [v4 deserializeLocationFromDictionary:isa];

    if (v6)
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29[0] = v27;
    v29[1] = v28;
    if (*(&v28 + 1))
    {
      sub_10000A7C4(0, &qword_100AECD08, BKEpubLocation_ptr);
      if (swift_dynamicCast())
      {
        v7 = v26;
        v8 = [v26 jsonObject];
        if (v8)
        {
          v9 = v8;
          v3 = sub_1007A2044();

          return v3;
        }

        if (qword_100AD1900 != -1)
        {
          swift_once();
        }

        v17 = sub_10079ACE4();
        sub_100008B98(v17, qword_100AECAC0);

        v18 = v1;
        v19 = sub_10079ACC4();
        v20 = sub_1007A29B4();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *&v29[0] = swift_slowAlloc();
          *v21 = 136315394;
          *(v21 + 4) = sub_1000070F4(*(a1 + 16), *(a1 + 24), v29);
          *(v21 + 12) = 2080;
          sub_10000E3E8(&v18[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity], *&v18[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity + 24]);
          v22 = sub_10079ECA4();
          v24 = sub_1000070F4(v22, v23, v29);

          *(v21 + 14) = v24;
          _os_log_impl(&_mh_execute_header, v19, v20, "Failed to json Encode annotation:%s in book: %s", v21, 0x16u);
          swift_arrayDestroy();
        }

LABEL_19:
        return 0;
      }
    }

    else
    {
      sub_100007840(v29, &unk_100AD5B40, &unk_100811300);
    }

    if (qword_100AD1900 != -1)
    {
      swift_once();
    }

    v10 = sub_10079ACE4();
    sub_100008B98(v10, qword_100AECAC0);

    v11 = v1;
    v7 = sub_10079ACC4();
    v12 = sub_1007A29B4();

    if (os_log_type_enabled(v7, v12))
    {
      v13 = swift_slowAlloc();
      *&v29[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_1000070F4(*(a1 + 16), *(a1 + 24), v29);
      *(v13 + 12) = 2080;
      sub_10000E3E8(&v11[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity], *&v11[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity + 24]);
      v14 = sub_10079ECA4();
      v16 = sub_1000070F4(v14, v15, v29);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v7, v12, "Failed to deserialize BKEpubLocation from plUserData for annotation:%s in book: %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_19;
  }

  return v3;
}

id AnnotationProviderService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnnotationProviderService(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005D3288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  sub_1001F1160(a4, a5);
  sub_100005920(a6, a4, a5, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return sub_10079BA14();
}

uint64_t sub_1005D3344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a8;
  v10 = a7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1005D3444;

  return AnnotationProviderService.highlight(location:selectedText:representativeText:style:mergeWithExisting:updateCurrentHighlightStyle:)(a1, a2, a3, a4, a5, a6, v10, v9);
}

uint64_t sub_1005D3444(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t AnnotationProviderService.highlight(location:selectedText:representativeText:style:mergeWithExisting:updateCurrentHighlightStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v9 + 128) = a6;
  *(v9 + 136) = v8;
  *(v9 + 314) = v16;
  *(v9 + 313) = a8;
  *(v9 + 312) = a7;
  *(v9 + 112) = a4;
  *(v9 + 120) = a5;
  *(v9 + 96) = a2;
  *(v9 + 104) = a3;
  *(v9 + 88) = a1;
  v10 = sub_100796C04();
  *(v9 + 144) = v10;
  *(v9 + 152) = *(v10 - 8);
  *(v9 + 160) = swift_task_alloc();
  sub_1001F1160(&unk_100AECB60, qword_100833D88);
  *(v9 + 168) = swift_task_alloc();
  v11 = sub_1007A18B4();
  *(v9 + 176) = v11;
  *(v9 + 184) = *(v11 - 8);
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = sub_1007A26F4();
  *(v9 + 208) = sub_1007A26E4();
  v13 = sub_1007A2694();
  *(v9 + 216) = v13;
  *(v9 + 224) = v12;

  return _swift_task_switch(sub_1005D36F4, v13, v12);
}

uint64_t sub_1005D36F4()
{
  v45 = v0;
  v1 = sub_1007A23F4();
  if (v2)
  {

    if (qword_100AD1900 != -1)
    {
      swift_once();
    }

    v3 = sub_10079ACE4();
    sub_100008B98(v3, qword_100AECAC0);

    v4 = sub_10079ACC4();
    v5 = sub_1007A29B4();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 88);
      v6 = *(v0 + 96);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v44 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000070F4(v7, v6, &v44);
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to create highlight: cannot determine document ordinal for cfi '%s'", v8, 0xCu);
      sub_1000074E0(v9);
    }

    v10 = *(v0 + 8);

    return v10(0, 0);
  }

  v12 = v1;
  v13 = *(v0 + 312);
  if (v13 == 6)
  {
    v14 = *(v0 + 136);
    v15 = OBJC_IVAR____TtC5Books25AnnotationProviderService_currentHighlightStyle;
    swift_beginAccess();
    LOBYTE(v13) = *(v14 + v15);
  }

  v42 = v13;
  *(v0 + 315) = v13;
  v43 = v12;
  if (*(v0 + 313) != 1)
  {
    goto LABEL_17;
  }

  v16 = *(v0 + 176);
  v17 = *(v0 + 184);
  v18 = *(v0 + 168);
  sub_1005D415C(*(v0 + 88), *(v0 + 96), v12, v18);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_100007840(*(v0 + 168), &unk_100AECB60, qword_100833D88);
LABEL_17:
    v28 = *(v0 + 152);
    v27 = *(v0 + 160);
    v29 = *(v0 + 144);
    sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10080B690;

    _s5Books7InfoBarO7MessageC2id10Foundation4UUIDVvpfi_0();
    v30 = sub_100796BC4();
    v32 = v31;
    (*(v28 + 8))(v27, v29);
    *(v26 + 32) = v30;
    *(v26 + 40) = v32;
    v23 = *(v0 + 88);
    v25 = *(v0 + 96);
    goto LABEL_18;
  }

  (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
  *(v0 + 80) = sub_1007A1884();
  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  sub_100005920(&qword_100AD6800, &unk_100AD61F0, &qword_10080FEF0, &protocol conformance descriptor for [A]);
  v19 = sub_1007A28A4();

  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v22 = *(v0 + 176);
  if ((v19 & 1) == 0)
  {
    (*(v21 + 8))(*(v0 + 192), *(v0 + 176));
    goto LABEL_17;
  }

  v23 = sub_1007A18A4();
  v25 = v24;
  v26 = sub_1007A1884();
  (*(v21 + 8))(v20, v22);
LABEL_18:
  *(v0 + 232) = v26;
  v33 = *(v0 + 128);
  v34 = *(v0 + 136);
  v36 = *(v0 + 112);
  v35 = *(v0 + 120);
  v37 = *(v0 + 104);
  v38 = swift_allocObject();
  *(v0 + 240) = v38;
  *(v38 + 16) = v26;
  *(v38 + 24) = v34;
  *(v38 + 32) = v23;
  *(v38 + 40) = v25;
  *(v38 + 48) = v37;
  *(v38 + 56) = v36;
  *(v38 + 64) = v35;
  *(v38 + 72) = v33;
  *(v38 + 80) = v42;
  *(v38 + 88) = v43;

  v39 = v34;

  *(v0 + 248) = sub_1007A26E4();
  v41 = sub_1007A2694();
  *(v0 + 256) = v41;
  *(v0 + 264) = v40;

  return _swift_task_switch(sub_1005D3B90, v41, v40);
}

uint64_t sub_1005D3B90(uint64_t a1)
{
  v3 = v1[29];
  v2 = v1[30];
  v4 = v1[17];
  v5 = sub_1007A26E4();
  v1[34] = v5;
  v6 = swift_task_alloc();
  v1[35] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = 1;
  *(v6 + 40) = sub_1005D7EB0;
  *(v6 + 48) = v2;
  v7 = swift_task_alloc();
  v1[36] = v7;
  v8 = sub_1001F1160(&qword_100AD4F30, &unk_100816940);
  *v7 = v1;
  v7[1] = sub_1005D3CD4;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 8, v5, &protocol witness table for MainActor, 0xD000000000000027, 0x80000001008DFE60, sub_1005D7EF4, v6, v8);
}

uint64_t sub_1005D3CD4()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return _swift_task_switch(sub_1005D3E58, v3, v2);
}

uint64_t sub_1005D3E58()
{

  *(v0 + 296) = *(v0 + 64);
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return _swift_task_switch(sub_1005D3ED0, v1, v2);
}

uint64_t sub_1005D3ED0()
{
  v1 = *(v0 + 314);

  if (v1 == 1)
  {
    v2 = *(v0 + 136);
    v3 = OBJC_IVAR____TtC5Books25AnnotationProviderService_currentHighlightStyle;
    v4 = *(v0 + 315);
    swift_beginAccess();
    *(v2 + v3) = v4;
    v5 = sub_1007A00E4();
    v7 = v6;
    if (v5 == sub_1007A00E4() && v7 == v8)
    {
    }

    else
    {
      v10 = sub_1007A3AB4();

      if ((v10 & 1) == 0)
      {
        sub_1005CD980();
      }
    }
  }

  v11 = *(v0 + 296);
  v12 = *(v0 + 304);

  v13 = *(v0 + 8);

  return v13(v11, v12);
}

uint64_t AnnotationProviderService.determineOverlap(cfi:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1007A23F4();
  if (v7)
  {
    v8 = sub_1007A18B4();
    v9 = *(*(v8 - 8) + 56);

    return v9(a3, 1, 1, v8);
  }

  else
  {

    return sub_1005D415C(a1, a2, v6, a3);
  }
}

uint64_t sub_1005D40C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002812C;

  return AnnotationProviderService.deleteAssociatedNotesFromAnnotationsWithUUIDs(_:)(a1);
}

uint64_t sub_1005D415C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_allocWithZone(BKEpubCFILocation);

  v9 = sub_1007A2214();

  v30 = 0;
  v10 = [v8 initWithCFI:v9 error:&v30];

  v11 = v30;
  if (!v10)
  {
    v16 = v30;
    sub_1007967D4();

    swift_willThrow();
    if (qword_100AD1900 != -1)
    {
      swift_once();
    }

    v17 = sub_10079ACE4();
    sub_100008B98(v17, qword_100AECAC0);

    swift_errorRetain();
    v18 = sub_10079ACC4();
    v19 = sub_1007A29B4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v20 = 136315394;
      *(v20 + 4) = sub_1000070F4(a1, a2, &v30);
      *(v20 + 12) = 2112;
      v23 = sub_1007967C4();
      *(v20 + 14) = v23;
      *v21 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unable to determine highlight overlap: Failed to convert cfi (%s) into BKEpubCFILocation. %@", v20, 0x16u);
      sub_100007840(v21, &unk_100AD9480, &qword_1008113B0);

      sub_1000074E0(v22);
    }

    else
    {
    }

    goto LABEL_14;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v11;
  sub_10079B9A4(&v30);

  v13 = sub_10079F264();

  if (!v13)
  {
    if (qword_100AD1900 != -1)
    {
      swift_once();
    }

    v24 = sub_10079ACE4();
    sub_100008B98(v24, qword_100AECAC0);
    v25 = sub_10079ACC4();
    v26 = sub_1007A29B4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to determine highlight overlap: no document for ordinal %ld", v27, 0xCu);
    }

LABEL_14:
    v15 = 1;
    goto LABEL_15;
  }

  v14 = sub_1007A1564();

  sub_1005D51DC(v10, a3, v14);
  v15 = 0;
LABEL_15:
  v28 = sub_1007A18B4();
  return (*(*(v28 - 8) + 56))(a4, v15, 1, v28);
}

void sub_1005D457C(unint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, char a10, uint64_t a11)
{
  v27 = a6;
  v28 = a7;
  v26 = a5;
  v16 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v16 - 8);
  v18 = &v25 - v17;
  v19 = sub_1007A2744();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1007A26F4();
  v20 = a2;
  v21 = sub_1007A26E4();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v20;
  sub_100345AA0(0, 0, v18, &unk_100833F60, v22);

  sub_1005D48E8(a1, a3, a4, v26, v27, v28, a9, a10, a11);
  *a8 = v23;
  a8[1] = v24;
}

uint64_t sub_1005D4710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for AnalyticsEvent.ReadingEvent(0);
  v4[5] = swift_task_alloc();
  sub_1007A26F4();
  v4[6] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1005D47D8, v6, v5);
}

uint64_t sub_1005D47D8()
{

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 40);
    v3 = enum case for ViewType.highlights(_:);
    v4 = sub_1007983A4();
    (*(*(v4 - 8) + 104))(v2, v3, v4);
    swift_storeEnumTagMultiPayload();
    sub_1002A1460(v2);

    sub_1005D8258(v2);
  }

  **(v0 + 16) = Strong == 0;

  v5 = *(v0 + 8);

  return v5();
}

void sub_1005D48E8(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v68 = a4;
  v69 = a5;
  v70 = a2;
  v71 = a3;
  v14 = sub_100796BB4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v18 - 8);
  v20 = v65 - v19;
  sub_1005D503C(a1, v74);
  v21 = v74[0];
  if (!v74[0])
  {
    if (qword_100AD1900 != -1)
    {
      swift_once();
    }

    v27 = sub_10079ACE4();
    sub_100008B98(v27, qword_100AECAC0);
    v28 = sub_10079ACC4();
    v29 = sub_1007A29B4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to merge highlight: We didn't get any annotations back", v30, 2u);
    }

    return;
  }

  v65[1] = a6;
  v65[2] = a7;
  v22 = v74[1];
  v23 = v74[2];
  v66 = v74[4];
  v67 = v74[3];
  if (![v74[0] annotationType])
  {
    [v21 setAnnotationType:2];
  }

  v24 = [v21 annotationAssetID];
  if (!v24)
  {
    v65[0] = v17;
    sub_10000E3E8((v9 + OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity), *(v9 + OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity + 24));
    v17 = v65[0];
    sub_10079ECA4();
    v24 = sub_1007A2214();

    [v21 setAnnotationAssetID:v24];
  }

  v25 = [v21 annotationCreatorIdentifier];
  v26 = v21;
  if (v25)
  {
  }

  else
  {
    [v21 setAnnotationCreatorIdentifier:kAEAnnotationCreatorIdentifier_iBooks];
  }

  v31 = v71;
  v32 = [v26 annotationCreationDate];
  if (v32)
  {
    v33 = v32;
    sub_100796B64();

    (*(v15 + 56))(v20, 0, 1, v14);
    sub_100007840(v20, &unk_100ADB5C0, &unk_100816880);
  }

  else
  {
    (*(v15 + 56))(v20, 1, 1, v14);
    sub_100007840(v20, &unk_100ADB5C0, &unk_100816880);
    sub_100796BA4();
    isa = sub_100796AF4().super.isa;
    (*(v15 + 8))(v17, v14);
    [v26 setAnnotationCreationDate:isa];
  }

  v35 = [v26 annotationLocation];
  v71 = v26;
  if (!v35)
  {
    goto LABEL_22;
  }

  v36 = v35;
  v37 = sub_1007A2254();
  v39 = v38;

  if (v37 != v70 || v39 != v31)
  {
    v40 = sub_1007A3AB4();

    v26 = v71;
    if (v40)
    {
      goto LABEL_23;
    }

LABEL_22:
    [v26 setOrdinal:a9];
    v41 = sub_1007A2214();
    [v26 setAnnotationLocation:v41];

    v42 = sub_1007A2214();
    [v26 setAnnotationSelectedText:v42];

    v43 = sub_1007A2214();
    [v26 setAnnotationRepresentativeText:v43];

    goto LABEL_23;
  }

  v26 = v71;
LABEL_23:
  [v26 setAnnotationStyle:dword_100833FEC[a8]];
  sub_100796BA4();
  v44 = sub_100796AF4().super.isa;
  (*(v15 + 8))(v17, v14);
  [v26 setUserModificationDate:v44];

  v45 = v67;
  v46 = (v66 >> 1) - v67;
  if ((v66 >> 1) == v67)
  {
    goto LABEL_37;
  }

  if ((v66 >> 1) <= v67)
  {
    __break(1u);
    return;
  }

  v70 = v22;
  swift_unknownObjectRetain();
  v47 = &selRef_keyboardWillShow_;
  v48 = &selRef_setSafeAreaInsets_;
  v49 = &v23[8 * v45];
  do
  {
    v51 = *v49;
    v52 = [v51 v47[56]];
    if (v52)
    {
      v53 = v52;
      v54 = sub_1007A2254();
      v56 = v55;

      v72 = v54;
      v73 = v56;
      sub_1002060B4();
      if ((sub_1007A28A4() & 1) == 0)
      {
        goto LABEL_29;
      }

      v57 = [v26 v47[56]];
      if (v57)
      {
        v58 = v48;
        v59 = v57;
        v60 = sub_1007A2254();
        v62 = v61;

        v72 = v60;
        v73 = v62;
        if (sub_1007A28A4())
        {
          v72 = v60;
          v73 = v62;
          v75._countAndFlagsBits = 2570;
          v75._object = 0xE200000000000000;
          sub_1007A23D4(v75);
          v76._countAndFlagsBits = v54;
          v76._object = v56;
          sub_1007A23D4(v76);
          v50 = sub_1007A2214();

          v26 = v71;
          v48 = v58;
          v47 = &selRef_keyboardWillShow_;
          goto LABEL_28;
        }

        v26 = v71;
        v48 = v58;
        v47 = &selRef_keyboardWillShow_;
      }

      v50 = sub_1007A2214();
LABEL_28:
      [v26 setAnnotationNote:v50];

LABEL_29:
    }

    [v51 v48[143]];

    ++v49;
    --v46;
  }

  while (v46);
  swift_unknownObjectRelease();
LABEL_37:
  v63 = [v26 annotationUuid];
  if (v63)
  {
    v64 = v63;
    sub_1007A2254();
  }

  swift_unknownObjectRelease();
}

unint64_t sub_1005D503C@<X0>(unint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  v4 = result >> 62;
  if (!(result >> 62))
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_21:
    v6 = 0;
    result = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_22;
  }

  result = sub_1007A38D4();
  v5 = result;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    result = *(v2 + 32);
    v6 = result;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = sub_1007A3784();
  v6 = result;
  if (v5 < 0)
  {
    goto LABEL_24;
  }

LABEL_6:
  if (v4)
  {
    result = sub_1007A38D4();
    if (result >= 1)
    {
      result = sub_1007A38D4();
      goto LABEL_11;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_26;
  }

LABEL_11:
  if (result >= v5)
  {
    if ((v2 & 0xC000000000000001) == 0 || v5 == 1)
    {

      if (!v4)
      {
LABEL_17:
        result = v2 & 0xFFFFFFFFFFFFFF8;
        v9 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
        v10 = 1;
        v11 = (2 * v5) | 1;
LABEL_22:
        *a2 = v6;
        a2[1] = result;
        a2[2] = v9;
        a2[3] = v10;
        a2[4] = v11;
        return result;
      }
    }

    else
    {
      sub_10000A7C4(0, &qword_100AECB40, AEAnnotation_ptr);

      v7 = 1;
      do
      {
        v8 = v7 + 1;
        sub_1007A3774(v7);
        v7 = v8;
      }

      while (v5 != v8);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    result = sub_1007A38E4();
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}