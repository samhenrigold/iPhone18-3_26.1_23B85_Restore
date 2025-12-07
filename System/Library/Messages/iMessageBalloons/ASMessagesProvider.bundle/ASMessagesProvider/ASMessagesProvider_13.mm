void sub_17C368()
{
  v1 = v0;
  v2 = sub_768C60();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton;
  if (!*&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton])
  {
    v7 = [objc_allocWithZone(type metadata accessor for NotifyMeButton()) init];
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, sizeof(v12));
    sub_768C10();
    sub_BDD0(v12);
    sub_BDD0(v13);
    sub_769E70();
    (*(v3 + 8))(v5, v2);
    [v7 addTarget:v1 action:"notifyMeButtonTapped:" forControlEvents:64];
    v8 = v7[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style];
    v7[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style] = 0;
    if (v8)
    {
      v9 = sub_76A950();

      if ((v9 & 1) == 0)
      {
        sub_6990AC();
      }
    }

    else
    {
    }

    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] addSubview:v7];
    v10 = *&v1[v6];
    *&v1[v6] = v7;
    v11 = v7;

    [v1 setNeedsLayout];
  }
}

void sub_17C5AC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButtonPresenter);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButtonPresenter) = a1;
  if (v2)
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v4)
    {
      [v4 invalidate];
      v5 = *(v2 + v3);
    }

    else
    {
      v5 = 0;
    }

    *(v2 + v3) = 0;
  }
}

uint64_t (*sub_17C640(void *a1))()
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButtonPresenter;
  a1[2] = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButtonPresenter;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_17C698;
}

double sub_17C698(void *a1, char a2)
{
  if (a2)
  {

    sub_17C5AC(v2);
  }

  else
  {
    v4 = a1[1];
    v3 = a1[2];
    v5 = *(v4 + v3);
    *(v4 + v3) = *a1;
    if (!v5)
    {
      return result;
    }

    v6 = OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v7 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v5 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(v5 + v6) = 0;
  }

  return result;
}

id sub_17C740(char a1, char a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton];
  if (v4)
  {
    v4[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_isActive] = a1 & 1;
    v6 = v4;
    sub_698E80();
    sub_698F84(a2 & 1);
  }

  return [v3 setNeedsLayout];
}

void sub_17C7C0(char a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    sub_17C368();
  }

  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton];
  if (v5)
  {
    v6 = v5;
    v17 = v6;
    if (a2)
    {
      if ((a1 & 1) == 0)
      {
        if ([v6 isHidden])
        {
          [v17 setAlpha:0.0];
          [v17 setHidden:0];
        }
      }

      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v17;
      v9 = a1 & 1;
      *(v8 + 24) = a1 & 1;
      v22 = sub_17D510;
      v23 = v8;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_23F0CC;
      v21 = &unk_8865D0;
      v10 = _Block_copy(&aBlock);
      v11 = v17;

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v9;
      *(v13 + 32) = v12;
      v22 = sub_17D5C4;
      v23 = v13;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_3D6D80;
      v21 = &unk_886648;
      v14 = _Block_copy(&aBlock);
      v15 = v11;

      [v7 animateWithDuration:v10 animations:v14 completion:0.3];

      _Block_release(v14);
      _Block_release(v10);
    }

    else
    {
      if (a1)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      [v6 setHidden:a1 & 1];
      [v17 setAlpha:v16];
      [v2 setNeedsLayout];
    }
  }
}

void sub_17CA78(int a1, id a2, char a3, uint64_t a4)
{
  [a2 setHidden:a3 & 1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong setNeedsLayout];
  }
}

void sub_17CAE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButtonPresenter);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v3)
    {
      [v3 invalidate];
      v4 = *(v1 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v1 + v2) = 0;
  }
}

id sub_17CC38()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel];
  v3 = [v2 text];
  if (v3)
  {

    [v2 setText:0];
    [v1 setNeedsLayout];
  }

  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_titleLabel];
  v5 = [v4 text];
  if (v5)
  {

    [v4 setText:0];
    [v1 setNeedsLayout];
  }

  sub_17A848(0, 0);
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView];
  v17.value.super.isa = 0;
  v17.is_nil = 0;
  sub_7591D0(v17, v7);
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView];
  if (v8)
  {
    [v8 setHidden:1];
  }

  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView];
  if (v9)
  {
    [v9 setHidden:1];
  }

  v10 = &v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction];
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction];
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction + 8];
  *v10 = 0;
  *(v10 + 1) = 0;
  sub_F704(v11, v12);
  sub_17D2EC();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:v6];
    [v1 setNeedsLayout];
  }

  sub_17C5AC(0);
  v16[0] = 0x3FF0000000000000;
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = 0x3FF0000000000000;
  v16[4] = 0;
  v16[5] = 0;
  [v1 setTransform:v16];
  [v1 setAlpha:1.0];
  return [v1 setHidden:0];
}

uint64_t (*sub_17CEBC(uint64_t **a1))()
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
  v2[4] = sub_17B65C(v2);
  return sub_21028;
}

uint64_t (*sub_17CF40(void *a1))()
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
  v2[4] = sub_17C640(v2);
  return sub_246E0;
}

uint64_t sub_17CFBC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_17D5D4(&qword_947970, v1, type metadata accessor for AppEventCardView, &unk_788B84);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_17D030(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_17D5D4(&qword_947970, v5, type metadata accessor for AppEventCardView, &unk_788B84);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_17D0BC(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v4 = v2;
  *a1 = v2;
  sub_17D5D4(&qword_947970, v3, type metadata accessor for AppEventCardView, &unk_788B84);
  *(v4 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_17D178(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView);
  sub_BE70(0, &qword_93E550, UIView_ptr);
  v5 = v4;
  v6 = sub_76A1C0();

  return v6 & 1;
}

void sub_17D2EC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_17D5D4(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    v2 = [v8 superview];
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView);
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v5 = v4;
      v6 = sub_76A1C0();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v7 = swift_unknownObjectWeakLoadStrong();
      if (!v7)
      {
        return;
      }

      v8 = v7;
      [v7 removeFromSuperview];
    }
  }
}

id sub_17D430()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView);
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  v2 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupTapGestureRecognizer;
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupTapGestureRecognizer);
  if (v3)
  {
    [v3 removeTarget:v0 action:0];
    v4 = *(v0 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v0 + v2) = 0;

  result = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_separatorView);
  if (result)
  {

    return [result setHidden:1];
  }

  return result;
}

uint64_t sub_17D4D8()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_17D510()
{
  v1 = 1.0;
  if (*(v0 + 24))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

double sub_17D534(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_17D54C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_17D584()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_17D5D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_17D61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventCardLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_17D680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventCardLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_17D6E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  v91 = v2;
  v92 = v3;
  __chkstk_darwin(v2);
  v90 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_94BAC0, qword_77E9E0);
  __chkstk_darwin(v5 - 8);
  *&v94 = &v82 - v6;
  v93 = sub_768C60();
  v89 = *(v93 - 1);
  __chkstk_darwin(v93);
  v85 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_760AD0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v82 - v13;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_gradientBlurView] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_separatorView] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupTapGestureRecognizer] = 0;
  v15 = &v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction];
  *v15 = 0;
  v15[1] = 0;
  v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_includeBorderInDarkMode] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButtonPresenter] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_shadowView] = [objc_allocWithZone(sub_758E80()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_75CD70();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_contentView] = v16;
  v17 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] = v17;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_93DB98 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v19 = sub_BE38(v18, qword_99FAC0);
  v20 = *(v18 - 8);
  v87 = *(v20 + 16);
  v87(v14, v19, v18);
  v86 = *(v20 + 56);
  (v86)(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v9 + 104);
  v84 = v9 + 104;
  v22(v11, enum case for DirectionalTextAlignment.none(_:), v8);
  v23 = sub_75BB20();
  v24 = objc_allocWithZone(v23);
  v83 = v8;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_titleLabel] = sub_75BB10();
  if (qword_93DB90 != -1)
  {
    swift_once();
  }

  v25 = sub_BE38(v18, qword_99FAA8);
  v87(v14, v25, v18);
  (v86)(v14, 0, 1, v18);
  v22(v11, v21, v83);
  v26 = objc_allocWithZone(v23);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel] = sub_75BB10();
  v27 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_borderView] = v27;
  v100.receiver = v1;
  v100.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v100, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v29 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_contentView;
  v30 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_contentView];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v31 = v28;
  v32 = v30;
  v33 = v85;
  sub_768C10();
  sub_BDD0(&v96);
  sub_BDD0(&v98);
  sub_769E70();

  v34 = *(v89 + 8);
  v35 = v93;
  v34(v33, v93);
  v89 = v29;
  v36 = *&v28[v29];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v37 = v36;
  sub_768C10();
  sub_BDD0(&v96);
  sub_BDD0(&v98);
  sub_769E70();

  v34(v33, v35);
  ObjCClassFromMetadata = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView;
  v38 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v39 = v38;
  sub_768C10();
  sub_BDD0(&v96);
  sub_BDD0(&v98);
  sub_769E70();

  v34(v33, v35);
  v87 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_titleLabel;
  v40 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_titleLabel];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v41 = v40;
  sub_768C10();
  sub_BDD0(&v96);
  sub_BDD0(&v98);
  sub_769E70();

  v34(v33, v35);
  v86 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel;
  v42 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v43 = v42;
  sub_768C10();
  sub_BDD0(&v96);
  sub_BDD0(&v98);
  sub_769E70();

  v34(v33, v35);
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v31 setClipsToBounds:0];
  v44 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_shadowView;
  v45 = qword_93C578;
  v46 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_shadowView];
  if (v45 != -1)
  {
    swift_once();
  }

  v47 = sub_765080();
  v48 = sub_BE38(v47, qword_99B5C8);
  v49 = *(v47 - 8);
  v50 = v94;
  (*(v49 + 16))(v94, v48, v47);
  (*(v49 + 56))(v50, 0, 1, v47);
  sub_758E60();

  v51 = *&v31[v44];
  sub_758E40();

  v52 = *&v31[v44];
  v53 = v91;
  v54 = v92;
  v55 = *(v92 + 104);
  v56 = v90;
  LODWORD(v94) = enum case for CornerStyle.continuous(_:);
  v93 = v55;
  v55(v90);
  v57 = v52;
  sub_758E70();

  v92 = *(v54 + 8);
  (v92)(v56, v53);
  v58 = *&v31[v44];
  v59 = [v31 traitCollection];
  v60 = [v59 userInterfaceStyle];

  [v58 setHidden:v60 == &dword_0 + 2];
  [v31 addSubview:*&v31[v44]];
  v61 = v89;
  v62 = qword_93C4F8;
  v63 = *&v28[v89];
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = qword_99B400;
  [v63 setBackgroundColor:qword_99B400];

  v65 = *&v28[v61];
  (v93)(v56, v94, v53);
  v66 = v65;
  sub_75CCD0();

  (v92)(v56, v53);
  [v31 addSubview:*&v28[v61]];
  v67 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView;
  [*&v28[v61] addSubview:*&v31[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView]];
  [*&v31[v67] addSubview:*(ObjCClassFromMetadata + v31)];
  v68 = *(v87 + v31);
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v69 = v68;
  v70 = sub_769FD0();
  [v69 setTextColor:v70];

  v71 = *&v86[v31];
  v72 = sub_769FF0();
  [v71 setTextColor:v72];

  v73 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_borderView;
  v74 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_borderView];
  v75 = v64;
  sub_75CD00();

  v76 = *&v31[v73];
  sub_75CD10();

  [*&v31[v73] setUserInteractionEnabled:0];
  [*&v31[v73] setHidden:1];
  v77 = *&v31[v73];
  (v93)(v56, v94, v53);
  v78 = v77;
  sub_75CCD0();

  (v92)(v56, v53);
  [v31 addSubview:*&v31[v73]];
  sub_179950();
  sub_17A1DC();
  sub_BD88(&qword_9477F0, qword_780200);
  v79 = swift_allocObject();
  v94 = xmmword_77B6D0;
  *(v79 + 16) = xmmword_77B6D0;
  *(v79 + 32) = sub_767B80();
  *(v79 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();
  swift_unknownObjectRelease();

  v80 = swift_allocObject();
  *(v80 + 16) = v94;
  *(v80 + 32) = sub_7677C0();
  *(v80 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_769F40();

  swift_unknownObjectRelease();

  return v31;
}

void sub_17E4C8()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_gradientBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupTapGestureRecognizer) = 0;
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_includeBorderInDarkMode) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButtonPresenter) = 0;
  sub_76A840();
  __break(1u);
}

BOOL sub_17E5B4(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction] != 0;
    }

    sub_BE70(0, &qword_93E550, UIView_ptr);
    v8 = v7;
    v9 = v2;
    v10 = sub_76A1C0();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction] != 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_17E73C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return sub_BE140(a2, v5);
}

char *sub_17E84C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = v0;
    v6 = (*(ObjectType + 160))();
    v7 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
    v8 = sub_30712C(v6);
    v9 = *(v0 + v1);
    *(v5 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_17E8E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView);
  v2 = [v0 traitCollection];
  [v0 bounds];
  v4.n128_u64[0] = v3;
  v6.n128_u64[0] = v5;
  v7 = (*(&stru_108.reloff + (swift_isaMask & *v0)))(v2, v4, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v1 setLayoutMargins:{v7, v9, v11, v13}];
  [v0 bounds];
  [v1 sizeThatFits:{v14, v15}];
  v17 = v16;
  [v0 bounds];
  MinX = CGRectGetMinX(v23);
  [v0 bounds];
  MinY = CGRectGetMinY(v24);
  [v0 bounds];
  Width = CGRectGetWidth(v25);

  return [v1 setFrame:{MinX, MinY, Width, v17}];
}

void sub_17EA68()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView);
  [v0 bounds];
  [v3 setFrame:?];
  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView);
  [v1 bounds];
  [v4 setFrame:?];
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView);
  [v1 bounds];
  [v5 setFrame:?];
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer);
  [v1 bounds];
  [v6 setFrame:?];
  v7 = sub_17E84C();
  [v1 bounds];
  [v7 setFrame:?];

  v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverView);
  if (v8)
  {
    v9 = v8;
    v10 = *(sub_765960() + 16);

    [v1 bounds];
    v12 = v11;
    v14 = v13;
    v15 = [v1 window];
    v16 = v15;
    if (v15)
    {
      [v15 bounds];
      v18 = v17;
      v20 = v19;

      v21 = v18;
      v22 = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v23 = (*(ObjectType + 296))(v10, v21, v22, v16 == 0, v12, v14);
    v25 = v24;

    sub_7659A0();
    v37 = v25 * 0.866 + v23 * 0.5 * 0.5;
    CGAffineTransformMakeRotation(&v39, 1.04719755);
    b = v39.b;
    c = v39.c;
    a = v39.a;
    d = v39.d;
    ty = v39.ty;
    tx = v39.tx;
    [v3 bounds];
    sub_7697A0();
    sub_769D50();
    v39.a = a;
    v39.b = b;
    v39.c = c;
    v39.d = d;
    v39.tx = tx;
    v39.ty = ty;
    CGRectApplyAffineTransform(v40, &v39);
    v29 = v9;
    [v29 bounds];
    [v29 setBounds:?];
    [v1 bounds];
    v31 = v30;
    v32 = sub_7659B0();
    v34.n128_u64[0] = v33;
    (*&stru_158.sectname[swift_isaMask & *v1])(v32, v31, v37, v34);
    [v29 setCenter:?];
    v39.a = a;
    v39.b = b;
    v39.c = c;
    v39.d = d;
    v39.tx = tx;
    v39.ty = ty;
    [v29 setTransform:&v39];
  }
}

void sub_17EDF0(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_7652D0();
  __chkstk_darwin(v7 - 8);
  v136 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_765240();
  v133 = *(v9 - 8);
  v134 = v9;
  __chkstk_darwin(v9);
  v132 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v11 - 8);
  v131 = &v131 - v12;
  v13 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v13 - 8);
  v145 = &v131 - v14;
  v15 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v15 - 8);
  v144 = &v131 - v16;
  v17 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v17 - 8);
  v143 = &v131 - v18;
  v19 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v19 - 8);
  v142 = &v131 - v20;
  v21 = sub_BD88(&unk_944E00, &unk_784910);
  __chkstk_darwin(v21 - 8);
  v140 = &v131 - v22;
  v23 = sub_763750();
  v138 = *(v23 - 8);
  __chkstk_darwin(v23);
  v139 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v25 - 8);
  v141 = &v131 - v26;
  v27 = sub_75C100();
  v150 = *(v27 - 8);
  v151 = v27;
  __chkstk_darwin(v27);
  v29 = &v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v149 = &v131 - v31;
  sub_75A110();
  sub_768900();
  v147 = a2;
  sub_768ED0();
  v152 = v155[0];
  type metadata accessor for MediumDiagonalRiverCardDataSource();
  v32 = swift_allocObject();
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0u;
  *(v32 + 48) = 0;
  *(v32 + 56) = 5;
  v148 = v32;
  v153 = a1;
  sub_763F80();
  v34 = v33;
  v35 = ObjectType + 184;
  v36 = *(ObjectType + 184);
  v36();
  v135 = ObjectType;
  v36();
  if (v34)
  {
    sub_75C070();
  }

  sub_75C0A0();
  v37 = v149;
  sub_75C0E0();
  (*(v150 + 16))(v29, v37, v151);
  v38 = sub_BD88(&qword_947AC0, &qword_788DD8);
  v39 = objc_allocWithZone(v38);

  v40 = sub_765950();
  [v40 setHidden:0];
  v41 = v153;
  v42 = sub_763F90();
  if (v42 >> 62)
  {
    v41 = v42;
    v44 = sub_76A860();
    v42 = v41;
    if (v44)
    {
      goto LABEL_5;
    }

LABEL_10:

    v43 = 0;
    goto LABEL_11;
  }

  if (!*(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v42 & 0xC000000000000001) != 0)
  {
    v43 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_57:
      swift_once();
LABEL_30:
      v86 = sub_7666D0();
      v87 = sub_BE38(v86, qword_99E7E8);
      v88 = *(v86 - 8);
      v89 = v131;
      (*(v88 + 16))(v131, v87, v86);
      (*(v88 + 56))(v89, 0, 1, v86);
      sub_75BA40();

      v90 = *(v38 + v35);
      if (v90)
      {
        [v90 setAccessibilityIgnoresInvertColors:1];
      }

      goto LABEL_32;
    }

    v43 = *(v42 + 32);
  }

LABEL_11:
  *(sub_765960() + 24) = v152;

  *(sub_765960() + 48) = v147;

  *(sub_765960() + 16) = v43;
  v146 = v43;

  sub_765990();
  [v40 setHidden:0];
  v45 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverView;
  v154 = v3;
  v46 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverView];
  if (v46)
  {
    v47 = v40;
    v48 = v46;
    v49 = v47;
    v50 = v48;
    LOBYTE(v47) = sub_76A1C0();

    if ((v47 & 1) == 0)
    {
      sub_7659D0();
      [v50 removeFromSuperview];
    }
  }

  else
  {
    v51 = v40;
  }

  v52 = v154;
  v53 = *&v154[v45];
  *&v154[v45] = v40;
  v54 = v40;

  v55 = *&v52[v45];
  v137 = v54;
  if (!v55)
  {

    v55 = v46;
    goto LABEL_21;
  }

  if (v46)
  {
    v56 = v54;
    v57 = v46;
    v58 = v55;
    v59 = sub_76A1C0();

    if (v59)
    {

      v55 = v58;
LABEL_21:
      v60 = v154;
      goto LABEL_25;
    }

    v60 = v154;
    v54 = v56;
  }

  else
  {
    v61 = v55;
    v57 = 0;
    v60 = v154;
  }

  [*&v60[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView] addSubview:v55];

LABEL_25:
  v38 = *&v60[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView];
  [*(v38 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
  v62 = sub_763FC0();
  v63 = v138;
  v64 = *(v138 + 104);
  v64(v139, enum case for OfferButtonPresenterViewAlignment.right(_:), v23);
  v65 = v140;
  v64(v140, enum case for OfferButtonPresenterViewAlignment.left(_:), v23);
  (*(v63 + 56))(v65, 0, 1, v23);
  sub_182444(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v66 = v141;
  sub_760940();
  v67 = sub_BD88(&unk_948740, &unk_784920);
  (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  v68 = sub_758C70();
  v69 = v142;
  (*(*(v68 - 8) + 56))(v142, 1, 1, v68);
  v70 = sub_75BD30();
  v71 = v143;
  (*(*(v70 - 8) + 56))(v143, 1, 1, v70);
  v72 = sub_765870();
  v73 = v144;
  (*(*(v72 - 8) + 56))(v144, 1, 1, v72);
  v74 = sub_BD88(&unk_9457F0, qword_783FD0);
  v75 = v145;
  (*(*(v74 - 8) + 56))(v145, 1, 1, v74);
  sub_4A18A4(v62, v38, v66, v147, 0, 0, v69, v71, v73, v75);
  *(v38 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) = 1;
  sub_BD3C0();
  [(objc_class *)v38 setNeedsLayout];
  sub_BD3C0();

  sub_10A2C(v75, &unk_94AC40, qword_78D7F0);
  sub_10A2C(v73, &unk_9457D0, &unk_785630);
  sub_10A2C(v71, &unk_9457E0, &qword_785640);
  sub_10A2C(v69, &unk_94A780, &unk_788DC0);
  sub_10A2C(v66, &unk_948730, &qword_788DD0);
  v76 = *(v38 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
  if (v76)
  {
    v77 = objc_opt_self();
    v78 = v76;
    v79 = [v77 whiteColor];
    [v78 setTextColor:v79];
  }

  v35 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
  v80 = *(v38 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
  if (v80)
  {
    v81 = objc_opt_self();
    v82 = v80;
    v83 = [v81 whiteColor];
    [v82 setTextColor:v83];

    v84 = *(v38 + v35);
    if (v84)
    {
      v85 = qword_93D548;
      v41 = v84;
      if (v85 == -1)
      {
        goto LABEL_30;
      }

      goto LABEL_57;
    }
  }

LABEL_32:
  if (!v146)
  {
    goto LABEL_45;
  }

  v91 = sub_7596A0();

  if (!(v91 >> 62))
  {
    if (*(&dword_10 + (v91 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_35;
    }

LABEL_44:

    goto LABEL_45;
  }

  if (!sub_76A860())
  {
    goto LABEL_44;
  }

LABEL_35:
  if ((v91 & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v91 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }
  }

  v92 = sub_7651A0();

  if (v92)
  {
    v93 = sub_76A0E0();

    if (v93)
    {
      v94 = 2;
    }

    else
    {
      v94 = 1;
    }

    goto LABEL_46;
  }

LABEL_45:
  v94 = 2;
LABEL_46:
  v95 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v96 = *(v38 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v97 = objc_opt_self();
  v98 = v96;
  v99 = [v97 systemGray5Color];
  v100 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v94];
  v101 = [v99 resolvedColorWithTraitCollection:v100];

  v102 = [v101 colorWithAlphaComponent:0.35];
  sub_759070();

  sub_763FC0();
  v103 = sub_764EE0();

  if (v103)
  {
    (*(v135 + 168))(v155, v104);
    sub_BE0EC(v155);
    v105 = v132;
    sub_765250();
    sub_765210();
    (*(v133 + 8))(v105, v134);
    sub_765330();
    v106 = *(v38 + v95);
    sub_7652E0();
    sub_7591B0();
    [v106 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_396E8();
      sub_76A030();
    }

    sub_759070();

    [*(v38 + v95) setContentMode:1];
    v107 = *(v38 + v95);
    sub_759210();
    sub_182444(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v108 = v107;
    sub_75A050();
  }

  v109 = sub_763FA0();
  if (v109)
  {
    v110 = v109;
    v111 = sub_763FB0();
    v112 = v154;
    v113 = *&v154[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView];
    if (v111)
    {
      v114 = v111;
      [*&v154[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView] setBackgroundColor:v111];
      v115 = [v113 layer];
      [v115 setCompositingFilter:0];

      v116 = *&v112[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView];
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_77B6C0;
      *(v117 + 32) = [v110 colorWithAlphaComponent:0.4];
      *(v117 + 40) = v110;
      *&v116[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v117;
      v118 = v110;

      sub_4AC204();
      sub_4AC060(&off_87DD78);
      v119 = [v116 layer];
      [v119 setCompositingFilter:0];
    }

    else
    {
      v120 = sub_763FA0();
      [v113 setBackgroundColor:v120];

      v121 = [v113 layer];
      [v121 setCompositingFilter:0];

      v122 = *&v154[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView];
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v123 = swift_allocObject();
      *(v123 + 16) = xmmword_77B6C0;
      v124 = [v97 whiteColor];
      v125 = [v124 colorWithAlphaComponent:0.4];

      *(v123 + 32) = v125;
      *(v123 + 40) = [v97 clearColor];
      *&v122[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v123;

      sub_4AC204();
      sub_4AC060(&off_87DDA8);
      v112 = v154;
      v114 = [v122 layer];
      v119 = sub_769210();
      [v114 setCompositingFilter:v119];
    }

    v126 = sub_17E84C();
    v127 = v110;
    v128 = sub_308200(v110);
    v130 = v129;

    sub_3068C8(2, v128, v130);

    [v112 setNeedsLayout];

    (*(v150 + 8))(v149, v151);
  }

  else
  {
    (*(v150 + 8))(v149, v151);
  }
}

uint64_t sub_180178(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    return 0;
  }

  v3 = sub_7596A0();

  if (a1 < 0)
  {
    goto LABEL_10;
  }

  if (v3 >> 62)
  {
    result = sub_76A860();
    if (result > a1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (result <= a1)
  {
LABEL_10:

    return 0;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = sub_76A770();
    goto LABEL_8;
  }

  if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) > a1)
  {
    v5 = *(v3 + 8 * a1 + 32);

LABEL_8:

    return v5;
  }

  __break(1u);
  return result;
}

void sub_180250(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      v9 = a1;
      if ((sub_7650D0() & 1) != 0 && (v10 = [v9 CGImage]) != 0)
      {
        v11 = v10;
        [v9 scale];
        v13 = [objc_allocWithZone(UIImage) initWithCGImage:v11 scale:2 orientation:v12];
      }

      else
      {
        v13 = v9;
      }

      v14 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
      v15 = v13;
      v16 = v14;
      v18.is_nil = (a2 & 1) == 0;
      v18.value.super.isa = v13;
      sub_7591D0(v18, v17);

      v8 = v15;
    }
  }
}

void sub_180388(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
  v5 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
  sub_759190();

  if (*(v2 + 24))
  {
    v6 = *(a1 + v4);
    sub_759210();
    sub_182444(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);

    v7 = v6;
    sub_75A0C0();
  }
}

uint64_t sub_180480()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1804F4()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v1 = sub_7596A0();

  if (v1 >> 62)
  {
    v2 = sub_76A860();
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  return v2;
}

void sub_1805AC(double a1, double a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_180640@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for RiverRowLayoutStyle.screenshots(_:);
  v3 = sub_75E5B0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1806B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_180178(a1);
  *a2 = result;
  return result;
}

id sub_1806DC()
{
  type metadata accessor for BorderedScreenshotView(0);
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_180728()
{
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_77B6C0;
  *(v0 + 32) = [objc_allocWithZone(UIColor) initWithRed:0.768627451 green:0.768627451 blue:0.768627451 alpha:1.0];
  result = [objc_allocWithZone(UIColor) initWithRed:0.129411765 green:0.129411765 blue:0.129411765 alpha:1.0];
  *(v0 + 40) = result;
  qword_947978 = v0;
  return result;
}

char *sub_1807DC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&qword_94BAC0, qword_77E9E0);
  __chkstk_darwin(v10 - 8);
  v12 = v67 - v11 + 16;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v14 = type metadata accessor for GradientView();
  *&v4[v13] = [objc_allocWithZone(v14) init];
  v15 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  *&v4[v15] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverView] = 0;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  *&v4[v16] = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView;
  *&v4[v17] = [objc_allocWithZone(UIView) init];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView;
  *&v4[v18] = [objc_allocWithZone(v14) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView] = 0;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  *&v4[v19] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_isAnimationEnabled] = 1;
  v4[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_isMotionEnabled] = 1;
  v20 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  v68.receiver = v4;
  v68.super_class = v20;
  v21 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  [v21 setClipsToBounds:1];
  [v21 _setContinuousCornerRadius:20.0];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v23 = qword_93C500;
  v24 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView];
  if (v23 != -1)
  {
    swift_once();
  }

  *&v24[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = qword_947978;

  sub_4AC204();

  [v21 addSubview:*&v21[v22]];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  [*&v21[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView] setClipsToBounds:1];
  v26 = [*&v21[v25] layer];
  v27 = sub_769210();
  [v26 setCompositingFilter:v27];

  [*&v21[v25] setAlpha:0.75];
  [v21 addSubview:*&v21[v25]];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  [*&v21[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer] addSubview:*&v21[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView]];
  [*&v21[v28] addSubview:*&v21[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView]];
  v29 = [*&v21[v28] layer];
  v30 = sub_769210();
  [v29 setCompositingFilter:v30];

  [v21 addSubview:*&v21[v28]];
  v31 = sub_17E84C();
  [v21 addSubview:v31];

  v32 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  [*(*&v21[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  v33 = *(ObjectType + 168);
  v34 = *&v21[v32];
  v33(v67);
  v35 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_125A14(v67, v34 + v35);
  swift_endAccess();

  v36 = *(ObjectType + 176);
  v37 = *&v21[v32];
  v36(v67);
  v38 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_125A14(v67, v37 + v38);
  swift_endAccess();

  v39 = qword_93C5A0;
  v40 = *(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_765080();
  v42 = sub_BE38(v41, qword_99B640);
  v43 = *(v41 - 8);
  (*(v43 + 16))(v12, v42, v41);
  (*(v43 + 56))(v12, 0, 1, v41);
  sub_7591C0();

  v44 = *&v21[v32];
  v45 = objc_opt_self();
  v46 = v44;
  sub_3E30CC([v45 whiteColor]);

  v47 = *(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel);
  v48 = [v45 whiteColor];
  [v47 setTextColor:v48];

  v49 = *(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  sub_396E8();
  v50 = v49;
  v51 = sub_769FF0();
  v52 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v53 = [v51 resolvedColorWithTraitCollection:v52];

  [v50 setTextColor:v53];
  v54 = *(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
  v55 = [v45 whiteColor];
  [v54 setTintColor:v55];

  v56 = *(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
  v57 = [v45 whiteColor];
  [v56 setTextColor:v57];

  v58 = *(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkTitleLabel);
  v59 = [v45 whiteColor];
  [v58 setTextColor:v59];

  v60 = *(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkSubtitleLabel);
  v61 = [v45 whiteColor];
  [v60 setTextColor:v61];

  v62 = [*&v21[v32] traitCollection];
  [v62 userInterfaceStyle];

  sub_769240();
  v63 = sub_769210();

  v64 = [*(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) layer];
  [v64 setCompositingFilter:v63];

  [v21 addSubview:*&v21[v32]];
  return v21;
}

void sub_1811B4(uint64_t a1)
{
  v2 = sub_766690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v6 = sub_7596A0();
  if (v6 >> 62)
  {
    v9 = v6;
    v10 = sub_76A860();
    v6 = v9;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }
  }

  v7 = sub_7650D0();
  sub_765260();
  sub_7666A0();
  v8 = (v3 + 8);
  if (v7)
  {
    sub_766660();
  }

  else
  {
    sub_766650();
  }

  (*v8)(v5, v2);
}

double sub_18136C(uint64_t a1, void *a2)
{
  v4 = sub_75D850();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v23[-v9];
  v11 = sub_765560();
  v13 = v12;
  v14 = (*(v2 + 168))(v28, v11);
  (*(v2 + 176))(v27, v14);
  (*(v2 + 312))(a2);
  if (sub_769A00())
  {
    v15 = v27;
  }

  else
  {
    v15 = v28;
  }

  sub_BE140(v15, v23);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v16 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v16 = qword_946938;
  }

  v17 = sub_BE38(v4, v16);
  (*(v5 + 16))(v7, v17, v4);
  (*(v5 + 32))(v10, v7, v4);
  if ((v26 & 1) == 0 && v24 == 0.0 && v25 == 0.0)
  {
    sub_75D800();
    v19 = v18;
    sub_75D800();
    v24 = v19;
    v25 = v20;
    v26 = 0;
  }

  v21 = _s18ASMessagesProvider21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v23, a2, v13);
  (*(v5 + 8))(v10, v4, v21);
  sub_BE0EC(v23);
  sub_BE0EC(v27);
  sub_BE0EC(v28);
  return v13;
}

id sub_181770(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1818C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_7656C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_763FD0();
  sub_182444(&qword_947AB8, &type metadata accessor for MediumAdLockupWithScreenshotsBackground, &protocol conformance descriptor for MediumAdLockupWithScreenshotsBackground);
  sub_75C750();
  v9 = v38[0];
  if (v38[0])
  {
    v10 = sub_763F90();
    v11 = v10;
    if (v10 >> 62)
    {
      if (sub_76A860())
      {
LABEL_4:
        v33 = a2;
        v34 = v5;
        v35 = v6;
        v36 = v9;
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = v3;
          v13 = sub_76A770();
        }

        else
        {
          if (!*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_27;
          }

          v12 = v3;
          v13 = *(v11 + 32);
        }

        v37 = v13;
        v14 = sub_7596A0();

        swift_getKeyPath();
        sub_75C7B0();

        swift_getKeyPath();
        sub_75C7B0();

        v15 = v38[0];
        sub_18136C(v8, v38[0]);
        v17 = v16;

        v18 = v34;
        v19 = *(v35 + 8);
        v19(v8, v34);
        swift_getKeyPath();
        sub_75C7B0();

        sub_765560();
        v21 = v20;
        v19(v8, v18);
        v22 = [objc_opt_self() mainScreen];
        [v22 bounds];
        v24 = v23;
        v26 = v25;

        (*(v12 + 296))(v37, v24, v26, 0, v17, v21);
        if (v14 >> 62)
        {
          v27 = sub_76A860();
          if (v27)
          {
LABEL_9:
            v38[0] = _swiftEmptyArrayStorage;
            sub_76A7C0();
            if ((v27 & 0x8000000000000000) == 0)
            {
              v28 = 0;
              do
              {
                if ((v14 & 0xC000000000000001) != 0)
                {
                  sub_76A770();
                }

                else
                {
                }

                sub_7650D0();
                ++v28;
                sub_765330();

                sub_76A7A0();
                sub_76A7D0();
                sub_76A7E0();
                sub_76A7B0();
              }

              while (v27 != v28);

              v29 = v38[0];
LABEL_21:
              v39 = v29;
              sub_763FC0();
              v30 = sub_764EE0();

              if (!v30)
              {
LABEL_24:
                v32._rawValue = v29;
                sub_75A070(v32);

                return;
              }

              (*(v12 + 176))(v38, v31);
              sub_BE0EC(v38);
              sub_765330();

              sub_769440();
              if (*(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (v39 & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
LABEL_23:
                sub_769500();

                v29 = v39;
                goto LABEL_24;
              }

LABEL_28:
              sub_7694C0();
              goto LABEL_23;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {
          v27 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
          if (v27)
          {
            goto LABEL_9;
          }
        }

        v29 = _swiftEmptyArrayStorage;
        goto LABEL_21;
      }
    }

    else if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }
  }
}

void sub_181DE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v7 - 8);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 16))
  {

    v10 = sub_759690();
  }

  else
  {
    v10 = 0;
  }

  sub_7596B0();
  sub_6C14C(v10, v9);

  sub_4FDA80(v9);
  swift_beginAccess();
  sub_7650D0();
  sub_765330();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
  v12 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
  sub_7652E0();
  sub_7591B0();

  v13 = *(a2 + v11);
  [v13 setContentMode:sub_765140()];

  v14 = *(a2 + v11);
  sub_7591F0();

  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  v15 = sub_7596A0();

  if (!(v15 >> 62))
  {
    if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (!sub_76A860())
  {
LABEL_15:

LABEL_16:
    v18 = 2;
    goto LABEL_17;
  }

LABEL_7:
  if ((v15 & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }
  }

  v16 = sub_7651A0();

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = sub_76A0E0();

  if (v17)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

LABEL_17:
  v19 = *(a2 + v11);
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 systemGray5Color];
  v23 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v18];
  v24 = [v22 resolvedColorWithTraitCollection:v23];

  v25 = [v24 colorWithAlphaComponent:0.35];
  sub_759070();

  if (*(v3 + 24))
  {
    sub_75A110();
    v26 = *(a2 + v11);
    sub_759210();

    v27 = v26;
    sub_75A090();

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = a1;

    sub_75A040();

    sub_10A2C(v30, &unk_9443A0, &unk_77E240);
  }
}

uint64_t sub_18225C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_182294()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1822E4()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v2 = type metadata accessor for GradientView();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverView) = 0;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView;
  *(v0 + v6) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView) = 0;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_isAnimationEnabled) = 1;
  sub_76A840();
  __break(1u);
}

uint64_t sub_182444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1824D8()
{
  v0 = sub_76A920();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7656C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757BE0();
  sub_182798(&qword_947AC8, &type metadata accessor for InAppPurchaseShowcase, &protocol conformance descriptor for InAppPurchaseShowcase);
  result = sub_75C750();
  v9 = v17;
  if (v17)
  {
    v10 = sub_527DE4();
    swift_getKeyPath();
    sub_75C7B0();

    sub_765630();
    v12 = v11;
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    type metadata accessor for InAppPurchaseShowcaseLockupView();
    sub_490F90(v9, v10, v12, v14);
    if (qword_93D0E0 != -1)
    {
      swift_once();
    }

    v15 = sub_766CA0();
    sub_BE38(v15, qword_954EF0);
    sub_766470();
    sub_766700();
    swift_unknownObjectRelease();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_182798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1827E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a4;
  v9 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = sub_7656C0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a3, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_B33C8(v14, v4 + v17, &unk_955AA0, &qword_783ED0);
  swift_endAccess();
  v18 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView);
  sub_1ED18(v4 + v17, v11, &unk_955AA0, &qword_783ED0);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  sub_B33C8(v11, v18 + v19, &unk_955AA0, &qword_783ED0);
  swift_endAccess();
  sub_28026C(a2);
  v20 = [v4 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = sub_765A30();
    if (!v22)
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v22 = sub_76A060();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v24 = &unk_90D000;
  if (sub_765A90())
  {
    *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = 1;
  }

  else
  {
    v25 = [v5 traitCollection];
    v26 = sub_769A00();

    *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = v26 & 1;
    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v27 = OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror;
  if (!*(v5 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror))
  {
    v28 = objc_allocWithZone(type metadata accessor for StoryCardMediaMirrorView());
    v29 = v18;
    v30 = sub_64285C(v29);
    v31 = *(v5 + v27);
    *(v5 + v27) = v30;
    v32 = v30;

    [v32 _setContinuousCornerRadius:*(v5 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaCornerRadius)];
    v33 = [v32 layer];
    [v33 setMaskedCorners:sub_7697E0()];

    v34 = [v5 contentView];
    [v34 insertSubview:v32 belowSubview:v29];

    [v5 setNeedsLayout];
  }

LABEL_10:
  v53 = sub_765B20();
  sub_75B090();
  sub_BD88(&qword_947B48, &qword_789000);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    sub_10A2C(&v50, &qword_947B50, &unk_78A770);
    goto LABEL_17;
  }

  sub_10914(&v50, v54);
  sub_B170(v54, v55);
  v35 = [v5 traitCollection];
  v36 = sub_7618A0();

  if (!v36)
  {
LABEL_16:
    sub_BEB8(v54);
    v24 = &unk_90D000;
LABEL_17:
    v53 = sub_765B20();
    if (swift_dynamicCast())
    {
      sub_10914(&v50, v54);
      sub_B170(v54, v55);
      v41 = [v5 traitCollection];
      v42 = sub_7618B0();

      if (v42)
      {
        sub_B170(v54, v55);
        v43 = sub_761880();
        if (v43)
        {
          v44 = v49;
          sub_184B1C(v42, v43, a1, a2, a3, v49);

          sub_BEB8(v54);
          v40 = v44;
          goto LABEL_25;
        }
      }

      sub_BEB8(v54);
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      sub_10A2C(&v50, &qword_947B50, &unk_78A770);
    }

    v40 = v49;
    goto LABEL_25;
  }

  sub_B170(v54, v55);
  v37 = sub_761880();
  if (!v37)
  {

    goto LABEL_16;
  }

  v38 = v37;
  v39 = v49;
  swift_weakAssign();
  swift_weakAssign();
  sub_185FE4(v36, v38, a1, a2, a3, v39);

  sub_BEB8(v54);
  v40 = v39;
  v24 = &unk_90D000;
LABEL_25:
  v45 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer);
  sub_4BC2E4(a1, a2, a3, v40);
  v46 = [v45 setUserInteractionEnabled:*(v5 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded)];
  (*(&stru_248.offset + (swift_isaMask & *v5)))(v46);
  sub_184980();
  return [v5 v24[463]];
}

void sub_182EB0(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  __chkstk_darwin(v13);
  v17 = &v61 - v16;
  if (a3)
  {

    swift_dynamicCastClass();
  }

  else
  {
    v61 = v15;
    v62 = v14;
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v19 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_B33C8(v17, v4 + v19, &unk_955AA0, &qword_783ED0);
    swift_endAccess();
    v20 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView);
    sub_1ED18(v4 + v19, v12, &unk_955AA0, &qword_783ED0);
    v21 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_pageGrid;
    swift_beginAccess();
    sub_B33C8(v12, v20 + v21, &unk_955AA0, &qword_783ED0);
    swift_endAccess();
    v22 = (*(a2 + 160))(ObjectType, a2);
    v23 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    *(v4 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory) = v22;
    if (v22 == 4)
    {
      v24 = [v4 contentView];
      [v24 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v25 = *(v4 + v23);
    sub_4BDF04(v25);
    *(v20 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_originalSizeCategory) = v25;
    sub_5020F8();
    v26 = (*(a2 + 136))(ObjectType, a2);
    sub_28026C(v26);
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27;
      v29 = *(v27 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_isBackgroundMirroringSupported);
      *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = v29;
      if (v29 == 1 && (v30 = OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror, !*(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror)))
      {
        v52 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView);
        v53 = objc_allocWithZone(type metadata accessor for StoryCardMediaMirrorView());
        v54 = a1;
        v55 = v52;
        v56 = sub_64285C(v55);
        v57 = *(v4 + v30);
        *(v4 + v30) = v56;
        v58 = v56;

        [v58 _setContinuousCornerRadius:*(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaCornerRadius)];
        v59 = [v58 layer];
        [v59 setMaskedCorners:sub_7697E0()];

        v60 = [v4 contentView];
        [v60 insertSubview:v58 belowSubview:v55];

        [v4 setNeedsLayout];
      }

      else
      {
        v31 = a1;
      }

      v32 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground);
      *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground) = v28[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground];
      sub_189120(v32);
      v33 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer];
      sub_4BD964(v33, 0);

      v34 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
      if (v34)
      {
        v35 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
        if (v35)
        {
          v36 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          v37 = v61;
          sub_1ED18(v4 + v36, v61, &unk_955AA0, &qword_783ED0);
          v38 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
          if (*(v4 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
          {
            v38 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
          }

          v39 = *(v4 + *v38);
          v40 = v34;
          v41 = v35;
          sub_6425CC(v40, 0, v37, v39);

          sub_10A2C(v37, &unk_955AA0, &qword_783ED0);
        }
      }

      v42 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView];
      v43 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      v44 = v62;
      sub_1ED18(v4 + v43, v62, &unk_955AA0, &qword_783ED0);
      v45 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      if (*(v4 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
      {
        v45 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      v46 = *(v4 + *v45);
      v47 = v42;
      sub_501450(v47, 0, v44, v46);

      sub_10A2C(v44, &unk_955AA0, &qword_783ED0);
      v48 = [v4 backgroundView];
      if (v48)
      {
        v49 = v48;
        v50 = [v28 backgroundView];
        v51 = [v50 backgroundColor];

        [v49 setBackgroundColor:v51];
      }

      (*(&stru_248.offset + (swift_isaMask & *v4)))();
      [v4 setNeedsLayout];
    }
  }
}

void sub_183554()
{
  sub_281340();
  v1 = [v0 contentView];
  sub_366D68();
  if (v2)
  {
    v3 = sub_769210();
  }

  else
  {
    v3 = 0;
  }

  [v1 setAccessibilityLabel:v3];
}

uint64_t sub_183600@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_955AA0, &qword_783ED0);
}

uint64_t sub_18366C(uint64_t a1)
{
  v3 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v6, &unk_955AA0, &qword_783ED0);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView);
  sub_1ED18(v1 + v6, v5, &unk_955AA0, &qword_783ED0);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  sub_B33C8(v5, v7 + v8, &unk_955AA0, &qword_783ED0);
  return swift_endAccess();
}

void sub_1837B8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isMotionEnabled);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isMotionEnabled) = a1;
  sub_1894C8(v2);
}

void *sub_183804()
{
  result = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton);
  if (result)
  {
    [result alpha];
    return (v2 != 0.0);
  }

  return result;
}

void sub_18383C(char a1)
{
  if (a1)
  {

    sub_1882B0();
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton);
    *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton) = 0;
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];
    }
  }
}

void sub_1838F4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v3 = [v0 contentView];
    [v3 setClipsToBounds:1];
  }

  [v1 setNeedsLayout];
  v4 = v1[v2];
  sub_4BDF04(v4);
  *(*&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView] + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_originalSizeCategory) = v4;
  sub_5020F8();
}

void *sub_1839AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a3;
  v4 = sub_765300();
  __chkstk_darwin(v4 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_765120();
  __chkstk_darwin(v7 - 8);
  v82 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_765360();
  v84 = *(v9 - 8);
  __chkstk_darwin(v9);
  v83 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_947B58, &qword_789008);
  __chkstk_darwin(v11 - 8);
  v77 = &v61 - v12;
  v81 = sub_765240();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v61 - v15;
  v76 = sub_76A920();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_7600F0();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_763B00();
  v70 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v61 - v22;
  v24 = sub_7656C0();
  v87 = *(v24 - 8);
  v88 = v24;
  __chkstk_darwin(v24);
  v85 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v61 - v27;
  sub_765B70();
  sub_18BAC4(&qword_94CAB0, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  result = sub_75C750();
  v30 = v92;
  if (v92)
  {
    v91 = sub_765B20();
    sub_75B090();
    sub_BD88(&qword_947B48, &qword_789000);
    if (swift_dynamicCast())
    {
      v64 = v18;
      v67 = v6;
      v69 = a2;
      sub_10914(v89, &v92);
      type metadata accessor for TodayCardGridTracker();
      sub_768900();
      sub_768ED0();
      v68 = *&v89[0];
      sub_352874();
      v32 = v31;
      v33 = _swiftEmptyArrayStorage;
      *&v89[0] = _swiftEmptyArrayStorage;
      v86 = v30;
      v34 = sub_765A20();
      v66 = v9;
      LODWORD(v65) = v32;
      if (v34)
      {
        swift_getKeyPath();
        sub_75C7B0();

        swift_getKeyPath();
        sub_75C7B0();

        v35 = v91;
        sub_7ED24(v32, v28, v91);
        sub_2A6324(v32);
        sub_765330();

        (*(v87 + 8))(v28, v88);
        sub_769440();
        if (*(&dword_10 + (*&v89[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v89[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();

        v33 = *&v89[0];
      }

      sub_B170(&v92, v93);
      swift_getKeyPath();
      sub_75C7B0();

      v36 = v91;
      v37 = sub_761890();

      if (v37)
      {
        sub_B170(&v92, v93);
        if (sub_761880())
        {
          swift_getKeyPath();
          v38 = v85;
          sub_75C7B0();

          swift_getKeyPath();
          sub_75C7B0();

          v62 = v91;
          v39 = sub_769A20();
          v40 = v65;
          v63 = v39;
          sub_7ED24(v65, v38, v39);
          v41.n128_f64[0] = sub_2A6324(v40);
          v42 = v70;
          v43 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
          v44 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
          if (v40 != 6)
          {
            v44 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
          }

          if (v40 != 4)
          {
            v43 = v44;
          }

          v45 = v64;
          (*(v70 + 104))(v20, *v43, v64, v41);
          (*(v42 + 32))(v23, v20, v45);
          v46 = sub_769470();

          (*(v42 + 8))(v23, v45);
          sub_763AE0();
          if (v47)
          {
            sub_765260();
          }

          v48 = v81;
          v49 = v80;
          v50 = v77;
          v51 = v71;
          sub_763AF0();
          sub_7600C0();
          sub_769DA0();
          sub_769D60();
          v52 = v75;
          v53 = v73;
          v54 = v76;
          (*(v75 + 104))(v73, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v76);
          sub_769D80();
          (*(v52 + 8))(v53, v54);
          (*(v72 + 8))(v51, v74);
          sub_763AD0();
          v55 = *(v49 + 48);
          v56 = v55(v50, 1, v48);
          v65 = v46;
          if (v56 == 1)
          {
            v57 = v79;
            sub_765250();
            if (v55(v50, 1, v48) != 1)
            {
              sub_10A2C(v50, &qword_947B58, &qword_789008);
            }
          }

          else
          {
            v57 = v79;
            (*(v49 + 32))(v79, v50, v48);
          }

          v58 = v83;
          sub_765130();
          v81 = v37;
          sub_765380();
          v59 = v63;
          [v63 displayScale];
          (*(v49 + 16))(v78, v57, v48);
          sub_765340();
          sub_765350();
          sub_75DF50();
          swift_allocObject();
          sub_75DF30();

          (*(v84 + 8))(v58, v66);
          (*(v49 + 8))(v57, v48);
          (*(v87 + 8))(v85, v88);
          sub_769440();
          if (*(&dword_10 + (*&v89[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v89[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_7694C0();
          }

          sub_769500();

          v33 = *&v89[0];
        }

        else
        {
        }
      }

      v60._rawValue = v33;
      sub_75A070(v60);

      return sub_BEB8(&v92);
    }

    else
    {

      v90 = 0;
      memset(v89, 0, sizeof(v89));
      return sub_10A2C(v89, &qword_947B50, &unk_78A770);
    }
  }

  return result;
}

void sub_18465C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_4BDC84(a1, a3);
  sub_5017E8(a1, v3);
}

void sub_1846B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_weakAssign();
  v3 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_F704(v4, v5);
  v6 = (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay);
  if (*v6)
  {
    v7 = v6[1];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v10 = v9(ObjectType, v7);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      swift_getObjectType();
      sub_7633B0();
    }
  }
}

void sub_184810(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_75F4E0();
  }

  swift_weakAssign();
  v3 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_F704(v4, v5);
  v6 = (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay);
  if (*v6)
  {
    v7 = v6[1];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v10 = v9(ObjectType, v7);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      swift_getObjectType();
      sub_7633A0();
    }
  }
}

void sub_184980()
{
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_isBackgroundMirroringSupported] != 1)
  {
    goto LABEL_11;
  }

  v1 = [v0 traitCollection];
  v2 = sub_769A00();

  if ((v2 & 1) == 0)
  {
    if ((v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v4 = [v0 traitCollection];
    v5 = sub_7699E0();

    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    v6 = v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground];
    v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground] = 0;
    goto LABEL_12;
  }

  v3 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v3 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v3] == 4)
  {
    if (!v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
    {
LABEL_10:
      if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] != 4)
      {
        [v0 bounds];
        v7 = CGRectGetWidth(v9) < 405.0 && *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer] + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay) != 0;
        v6 = v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground];
        v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground] = v7;
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground];
  v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground] = 1;
LABEL_12:

  sub_189120(v6);
}

void sub_184B1C(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v157 = a6;
  v168 = a5;
  v169 = a2;
  LODWORD(v166) = a4;
  v9 = sub_BD88(&qword_944440, qword_783EE0);
  __chkstk_darwin(v9 - 8);
  v134 = &v129 - v10;
  v161 = sub_7656C0();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v132 = v11;
  v140 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_7572E0();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v12;
  __chkstk_darwin(v13);
  v141 = &v129 - v14;
  v135 = sub_BD88(&qword_947B70, &unk_789010);
  __chkstk_darwin(v135);
  v136 = &v129 - v15;
  v16 = sub_BD88(&qword_944448, qword_798CC0);
  __chkstk_darwin(v16 - 8);
  v133 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v130 = &v129 - v19;
  __chkstk_darwin(v20);
  v137 = &v129 - v21;
  __chkstk_darwin(v22);
  v138 = &v129 - v23;
  v24 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v24 - 8);
  v156 = &v129 - v25;
  v26 = sub_765300();
  __chkstk_darwin(v26 - 8);
  v162 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_765120();
  v159 = *(v144 - 8);
  __chkstk_darwin(v144);
  v158 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_765360();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_BD88(&qword_947B58, &qword_789008);
  __chkstk_darwin(v30 - 8);
  v32 = &v129 - v31;
  v33 = sub_765240();
  v164 = *(v33 - 8);
  v165 = v33;
  __chkstk_darwin(v33);
  v151 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v129 - v36;
  v150 = sub_76A920();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v146 = &v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_7600F0();
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v40 = &v129 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_763B00();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v129 - v46;
  v48 = sub_765A30();
  if (!v48)
  {
    v49 = sub_7651A0();
    if (!v49)
    {
      goto LABEL_7;
    }

    v163 = a1;
    v50 = v32;
    v51 = v49;
    v52 = [v6 backgroundView];
    if (v52)
    {
      v53 = v52;
      [v52 setBackgroundColor:v51];
    }

    v48 = v51;
    v32 = v50;
  }

LABEL_7:
  v152 = v37;
  v167 = v7;
  v148 = [v7 traitCollection];
  v54 = sub_769A20();
  v55 = v166;
  v163 = v54;
  sub_7ED24(v166, v168, v54);
  v56.n128_f64[0] = sub_2A6324(v55);
  v57 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v58 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v55 != 6)
  {
    v58 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v55 != 4)
  {
    v57 = v58;
  }

  (*(v42 + 104))(v44, *v57, v41, v56);
  (*(v42 + 32))(v47, v44, v41);
  v59 = sub_769470();
  (*(v42 + 8))(v47, v41);
  sub_763AE0();
  if (v60)
  {
    sub_765260();
  }

  v61 = v165;
  sub_763AF0();
  sub_7600C0();
  sub_769DA0();
  sub_769D60();
  v62 = v149;
  v63 = v146;
  v64 = v150;
  (*(v149 + 104))(v146, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v150);
  sub_769D80();
  (*(v62 + 8))(v63, v64);
  (*(v145 + 8))(v40, v147);
  v150 = v59;
  sub_763AD0();
  v65 = v164;
  v66 = *(v164 + 48);
  v67 = v66(v32, 1, v61);
  v68 = v167;
  if (v67 == 1)
  {
    v69 = v152;
    sub_765250();
    v70 = v61;
    if (v66(v32, 1, v61) != 1)
    {
      sub_10A2C(v32, &qword_947B58, &qword_789008);
    }
  }

  else
  {
    v69 = v152;
    (*(v65 + 32))(v152, v32, v61);
    v70 = v61;
  }

  v71 = v153;
  sub_765130();
  sub_765380();
  v72 = v163;
  [v163 displayScale];
  v73 = v164;
  (*(v164 + 16))(v151, v69, v70);
  sub_765340();
  sub_765350();
  sub_75DF50();
  swift_allocObject();
  v74 = sub_75DF30();

  (*(v154 + 8))(v71, v155);
  (*(v73 + 8))(v69, v165);
  v75 = *&v68[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView];
  if (v68[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] == 7)
  {
    v76 = v166;
  }

  else
  {
    v76 = v68[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory];
  }

  sub_75A110();
  sub_768900();
  sub_768ED0();
  v166 = v170;
  v164 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_2487B4(Strong);

  v165 = v75;
  v162 = v74;
  v163 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView;
  v78 = *(v75 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView);
  sub_75DEF0();
  v80 = v79;
  v82 = v81;
  v83 = [*(v78 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_imageView) image];
  v84 = v160;
  v85 = v156;
  v86 = v161;
  v154 = *(v160 + 16);
  (v154)(v156, v168, v161);
  (*(v84 + 56))(v85, 0, 1, v86);
  LODWORD(v155) = v76;
  sub_DDCF4(v83, v80, v82, 0, v169, v85, v76);

  sub_10A2C(v85, &unk_955AA0, &qword_783ED0);
  v87 = *(v78 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isExpanded);
  v157 = v78;
  if (v87)
  {
    v88 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    v89 = v138;
    sub_1ED18(v78 + v88, v138, &qword_944448, qword_798CC0);
    v90 = v137;
    sub_75DF40();
    v91 = v159;
    v92 = v144;
    (*(v159 + 56))(v90, 0, 1, v144);
    v93 = *(v135 + 48);
    v94 = v136;
    sub_1ED18(v89, v136, &qword_944448, qword_798CC0);
    sub_1ED18(v90, v94 + v93, &qword_944448, qword_798CC0);
    v95 = *(v91 + 48);
    if (v95(v94, 1, v92) == 1)
    {
      sub_10A2C(v90, &qword_944448, qword_798CC0);
      sub_10A2C(v89, &qword_944448, qword_798CC0);
      if (v95(v94 + v93, 1, v92) == 1)
      {
        sub_10A2C(v94, &qword_944448, qword_798CC0);
        goto LABEL_29;
      }
    }

    else
    {
      v96 = v130;
      sub_1ED18(v94, v130, &qword_944448, qword_798CC0);
      if (v95(v94 + v93, 1, v92) != 1)
      {
        v125 = v159;
        v126 = v158;
        (*(v159 + 32))(v158, v94 + v93, v92);
        sub_18BAC4(&qword_947B80, &type metadata accessor for Artwork.URLTemplate, &protocol conformance descriptor for Artwork.URLTemplate);
        v127 = sub_7691C0();
        v128 = *(v125 + 8);
        v128(v126, v92);
        sub_10A2C(v137, &qword_944448, qword_798CC0);
        sub_10A2C(v138, &qword_944448, qword_798CC0);
        v128(v96, v92);
        sub_10A2C(v94, &qword_944448, qword_798CC0);
        v78 = v157;
        if (v127)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      sub_10A2C(v137, &qword_944448, qword_798CC0);
      sub_10A2C(v138, &qword_944448, qword_798CC0);
      (*(v159 + 8))(v96, v92);
    }

    sub_10A2C(v94, &qword_947B70, &unk_789010);
    v78 = v157;
  }

LABEL_27:
  if ((*(v78 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isTransitioning) & 1) == 0)
  {
    v97 = v141;
    sub_7572D0();
    v98 = v142;
    v99 = *(v142 + 16);
    v100 = v139;
    v101 = v143;
    v99(v139, v97, v143);
    sub_18BAC4(&qword_947B78, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_76A6E0();
    v102 = swift_allocObject();
    v158 = v102;
    swift_unknownObjectWeakInit();
    v103 = v100;
    v104 = v101;
    v99(v103, v97, v101);
    (v154)(v140, v168, v161);
    v105 = (*(v98 + 80) + 24) & ~*(v98 + 80);
    v106 = (v131 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
    v107 = (v106 + 23) & 0xFFFFFFFFFFFFFFF8;
    v108 = v160;
    v109 = (*(v160 + 80) + v107 + 8) & ~*(v160 + 80);
    v110 = v109 + v132;
    v111 = swift_allocObject();
    *(v111 + 16) = v102;
    v112 = *(v98 + 32);
    v112(v111 + v105, v139, v104);
    v113 = (v111 + v106);
    *v113 = v80;
    v113[1] = v82;
    *(v111 + v107) = v169;
    (*(v108 + 32))(v111 + v109, v140, v161);
    *(v111 + v110) = v155;

    sub_75A040();

    sub_10A2C(&v170, &unk_9443A0, &unk_77E240);

    v114 = v133;
    sub_75DF40();
    (*(v159 + 56))(v114, 0, 1, v144);
    v115 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkTemplate;
    v116 = v157;
    swift_beginAccess();
    v117 = v116;
    sub_B33C8(v114, v116 + v115, &qword_944448, qword_798CC0);
    swift_endAccess();
    v118 = v134;
    v119 = v143;
    v112(v134, v141, v143);
    (*(v142 + 56))(v118, 0, 1, v119);
    v120 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    sub_B33C8(v118, v117 + v120, &qword_944440, qword_783EE0);
    swift_endAccess();
  }

LABEL_29:
  v121 = v165;
  [*&v163[v165] setHidden:0];
  [*(v121 + v164) setHidden:1];

  *(v121 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) = 1;
  v122 = *&v167[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v122)
  {
    v123 = *&v122[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingImageView];
    v124 = v122;
    [v123 setHidden:0];
    [*&v124[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView] setHidden:1];
  }
}

uint64_t sub_185FE4(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v220 = a6;
  v254 = a5;
  v255 = a4;
  v256 = a2;
  v7 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v7 - 8);
  v209 = &v208 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v213 = &v208 - v10;
  v11 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v11 - 8);
  v219 = &v208 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v218 = &v208 - v14;
  v251 = sub_7570A0();
  v15 = *(v251 - 8);
  __chkstk_darwin(v251);
  v212 = &v208 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_BD88(&qword_940A40, &unk_780300);
  __chkstk_darwin(v249);
  v250 = &v208 - v17;
  v18 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v18 - 8);
  v217 = &v208 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v216 = &v208 - v21;
  __chkstk_darwin(v22);
  v258 = &v208 - v23;
  __chkstk_darwin(v24);
  v259 = &v208 - v25;
  v26 = sub_765300();
  __chkstk_darwin(v26 - 8);
  v247 = &v208 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_765120();
  __chkstk_darwin(v28 - 8);
  v244 = &v208 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_765360();
  v246 = *(v248 - 8);
  __chkstk_darwin(v248);
  v245 = &v208 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_BD88(&qword_947B58, &qword_789008);
  __chkstk_darwin(v31 - 8);
  v240 = &v208 - v32;
  v243 = sub_765240();
  v265 = *(v243 - 8);
  __chkstk_darwin(v243);
  v241 = &v208 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v242 = &v208 - v35;
  v239 = sub_76A920();
  v238 = *(v239 - 8);
  __chkstk_darwin(v239);
  v236 = &v208 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_7600F0();
  v235 = *(v237 - 8);
  __chkstk_darwin(v237);
  v234 = &v208 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_763B00();
  v232 = *(v233 - 8);
  __chkstk_darwin(v233);
  v230 = &v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v231 = &v208 - v40;
  v41 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v41 - 8);
  v229 = &v208 - v42;
  v227 = sub_75A6E0();
  v226 = *(v227 - 8);
  __chkstk_darwin(v227);
  v228 = &v208 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_75DC30();
  v252 = *(v253 - 8);
  __chkstk_darwin(v253);
  v268 = &v208 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_BD88(&qword_947B60, &qword_790BB0);
  __chkstk_darwin(v45 - 8);
  v211 = &v208 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v224 = &v208 - v48;
  __chkstk_darwin(v49);
  v215 = &v208 - v50;
  __chkstk_darwin(v51);
  v53 = &v208 - v52;
  v266 = sub_75A6B0();
  v271 = *(v266 - 8);
  __chkstk_darwin(v266);
  v264 = &v208 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v263 = &v208 - v56;
  __chkstk_darwin(v57);
  v210 = &v208 - v58;
  __chkstk_darwin(v59);
  v225 = &v208 - v60;
  __chkstk_darwin(v61);
  v223 = &v208 - v62;
  __chkstk_darwin(v63);
  v222 = &v208 - v64;
  __chkstk_darwin(v65);
  v67 = &v208 - v66;
  __chkstk_darwin(v68);
  v214 = &v208 - v69;
  __chkstk_darwin(v70);
  v72 = &v208 - v71;
  __chkstk_darwin(v73);
  v75 = &v208 - v74;
  __chkstk_darwin(v76);
  v78 = &v208 - v77;
  __chkstk_darwin(v79);
  v81 = &v208 - v80;
  __chkstk_darwin(v82);
  v84 = &v208 - v83;
  v85 = sub_765A30();
  v272 = a1;
  if (v85)
  {
    v86 = v85;
LABEL_3:

    goto LABEL_4;
  }

  sub_764BC0();
  v98 = v15;
  v86 = sub_7651A0();

  if (v86)
  {
    v99 = [v273 backgroundView];
    if (v99)
    {
      v100 = v99;
      [v99 setBackgroundColor:v86];

      v15 = v98;
    }

    goto LABEL_3;
  }

LABEL_4:
  v260 = v15;
  v270 = v67;
  sub_764BA0();
  sub_75A680();
  v87 = v271;
  v88 = v266;
  v269 = *(v271 + 16);
  v257 = v271 + 16;
  v269(v75, v84, v266);
  sub_18BAC4(&qword_9406B8, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  sub_76A530();
  v89 = sub_76A550();
  v267 = v84;
  if (v89)
  {
    v90 = *(v87 + 8);
    v90(v78, v88);
    v90(v81, v88);
    v91 = 1;
  }

  else
  {
    sub_76A560();
    v90 = *(v87 + 8);
    v90(v81, v88);
    (*(v87 + 32))(v53, v78, v88);
    v91 = 0;
  }

  v261 = *(v87 + 56);
  v261(v53, v91, 1, v88);
  sub_10A2C(v53, &qword_947B60, &qword_790BB0);
  v221 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v92 = v273[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4;
  v93 = v270;
  v262 = v90;
  v94 = v222;
  if (v92)
  {
    sub_75A690();
    v269(v75, v267, v88);
    v95 = v214;
    sub_76A530();
    if (sub_76A550())
    {
      v90 = v262;
      v262(v95, v88);
      v90(v72, v88);
      v96 = 1;
      v97 = v215;
    }

    else
    {
      sub_76A560();
      v101 = v271;
      v90 = v262;
      v262(v72, v88);
      v102 = *(v101 + 32);
      v97 = v215;
      v102(v215, v95, v88);
      v96 = 0;
    }

    v261(v97, v96, 1, v88);
    sub_10A2C(v97, &qword_947B60, &qword_790BB0);
  }

  sub_764B60();
  sub_75A680();
  v269(v75, v93, v88);
  v103 = v94;
  v104 = v223;
  sub_76A530();
  if (sub_76A550())
  {
    v90(v104, v88);
    v90(v103, v88);
    v105 = 1;
    v106 = v243;
    v107 = v224;
  }

  else
  {
    sub_76A560();
    v108 = v271;
    v90(v103, v88);
    v109 = *(v108 + 32);
    v107 = v224;
    v109(v224, v104, v88);
    v105 = 0;
    v106 = v243;
  }

  v261(v107, v105, 1, v88);
  sub_10A2C(v107, &qword_947B60, &qword_790BB0);
  v110 = v225;
  if (v273[v221] == 4 && (v273[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
  {
    sub_75A690();
    v269(v75, v270, v88);
    v111 = v210;
    sub_76A530();
    if (sub_76A550())
    {
      v112 = v262;
      v262(v111, v88);
      v112(v110, v88);
      v113 = 1;
      v114 = v211;
    }

    else
    {
      sub_76A560();
      v115 = v271;
      v262(v110, v88);
      v116 = *(v115 + 32);
      v114 = v211;
      v116(v211, v111, v88);
      v113 = 0;
    }

    v261(v114, v113, 1, v88);
    sub_10A2C(v114, &qword_947B60, &qword_790BB0);
  }

  (*(v226 + 104))(v228, enum case for VideoFillMode.scaleAspectFill(_:), v227);
  sub_764BC0();
  sub_765260();
  v117 = v229;
  sub_7666A0();

  v118 = sub_766690();
  (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
  v119 = v269;
  v269(v263, v270, v88);
  v119(v264, v267, v88);
  sub_764B70();
  sub_764B50();
  sub_764BB0();
  sub_75DC10();
  sub_764BC0();
  v269 = [v273 traitCollection];
  v120 = sub_769A20();
  v121 = v255;
  sub_7ED24(v255, v254, v120);
  v122 = v121;
  v123.n128_f64[0] = sub_2A6324(v121);
  v124 = v232;
  v125 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v126 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v122 != 6)
  {
    v126 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v122 != 4)
  {
    v125 = v126;
  }

  v127 = v230;
  v128 = v233;
  (*(v232 + 104))(v230, *v125, v233, v123);
  v129 = v231;
  (*(v124 + 32))(v231, v127, v128);
  v130 = sub_769470();
  (*(v124 + 8))(v129, v128);
  sub_763AE0();
  if (v131)
  {
    sub_765260();
  }

  v132 = v242;
  v133 = v240;
  v134 = v234;
  sub_763AF0();
  sub_7600C0();
  sub_769DA0();
  sub_769D60();
  v135 = v238;
  v136 = v236;
  v137 = v239;
  (*(v238 + 104))(v236, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v239);
  sub_769D80();
  (*(v135 + 8))(v136, v137);
  (*(v235 + 8))(v134, v237);
  sub_763AD0();
  v138 = v265;
  v139 = *(v265 + 48);
  v140 = v139(v133, 1, v106);
  v263 = v130;
  if (v140 == 1)
  {
    sub_765250();
    v141 = v106;
    v142 = v132;
    if (v139(v133, 1, v106) != 1)
    {
      sub_10A2C(v133, &qword_947B58, &qword_789008);
    }
  }

  else
  {
    (*(v138 + 32))(v132, v133, v106);
    v141 = v106;
    v142 = v132;
  }

  v143 = v245;
  sub_765130();
  sub_765380();
  [v120 displayScale];
  v261 = v120;
  v144 = v265;
  (*(v265 + 16))(v241, v142, v141);
  sub_765340();
  sub_765350();
  sub_75DF50();
  swift_allocObject();
  v264 = sub_75DF30();

  (*(v246 + 8))(v143, v248);
  (*(v144 + 8))(v142, v141);
  v145 = *&v273[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView];
  v146 = v259;
  sub_764BD0();
  v147 = v260;
  v148 = *(v260 + 56);
  v149 = 1;
  v150 = v251;
  (v148)(v146, 0, 1, v251);
  v265 = v145;
  v269 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v152 = Strong;
    v153 = v258;
    (*(v147 + 16))(v258, Strong + qword_99A1C8, v150);

    v149 = 0;
    v154 = v250;
  }

  else
  {
    v154 = v250;
    v153 = v258;
  }

  v263 = v148;
  (v148)(v153, v149, 1, v150);
  v155 = *(v249 + 48);
  sub_1ED18(v146, v154, &unk_93FD30, qword_77F240);
  sub_1ED18(v153, v154 + v155, &unk_93FD30, qword_77F240);
  v156 = *(v147 + 48);
  if (v156(v154, 1, v150) == 1)
  {
    sub_10A2C(v153, &unk_93FD30, qword_77F240);
    sub_10A2C(v146, &unk_93FD30, qword_77F240);
    v157 = v156(v154 + v155, 1, v150);
    v158 = v273;
    if (v157 == 1)
    {
      sub_10A2C(v154, &unk_93FD30, qword_77F240);
      goto LABEL_61;
    }

    goto LABEL_43;
  }

  v159 = v216;
  sub_1ED18(v154, v216, &unk_93FD30, qword_77F240);
  if (v156(v154 + v155, 1, v150) == 1)
  {
    sub_10A2C(v258, &unk_93FD30, qword_77F240);
    sub_10A2C(v259, &unk_93FD30, qword_77F240);
    (*(v260 + 8))(v159, v150);
LABEL_43:
    sub_10A2C(v154, &qword_940A40, &unk_780300);
    v160 = v265;
    goto LABEL_44;
  }

  v167 = v260;
  v168 = v212;
  (*(v260 + 32))(v212, v154 + v155, v150);
  sub_18BAC4(&qword_947410, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v169 = sub_7691C0();
  v170 = *(v167 + 8);
  v170(v168, v150);
  sub_10A2C(v258, &unk_93FD30, qword_77F240);
  sub_10A2C(v259, &unk_93FD30, qword_77F240);
  v170(v159, v150);
  sub_10A2C(v154, &unk_93FD30, qword_77F240);
  v158 = v273;
  v160 = v265;
  if ((v169 & 1) == 0)
  {
LABEL_44:
    sub_75C360();
    v265 = sub_768900();
    sub_768ED0();
    v161 = v274;
    sub_764B40();
    v162 = v217;
    sub_764BD0();
    (v263)(v162, 0, 1, v150);
    v163 = v218;
    sub_764B90();
    v164 = v219;
    sub_764B80();
    v165 = type metadata accessor for TodayCardVideoView(0);
    sub_18BAC4(&qword_947B40, type metadata accessor for TodayCardVideoView, &unk_77FEB0);
    v263 = v165;
    v166 = sub_75C340();
    sub_10A2C(v164, &unk_948710, &qword_77FF90);
    sub_10A2C(v163, &unk_948710, &qword_77FF90);
    sub_10A2C(v162, &unk_93FD30, qword_77F240);
    sub_10A2C(&v274, &unk_9443A0, &unk_77E240);
    if (v166)
    {
      if ((v166[qword_99A2C0] & 1) == 0)
      {
        v261 = v161;
        v166[qword_99A2B8] = *(v160 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_originalSizeCategory);
        sub_69D6C();
        swift_unknownObjectWeakAssign();
        v171 = v269;
        v172 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakAssign();
        v173 = v166;
        sub_2487B4(v172);

        v174 = *(v171 + v160);
        v175 = v173;
        sub_764BC0();
        sub_765260();
        v177 = v176;
        v179 = v178;

        v180 = sub_7656C0();
        v181 = *(v180 - 8);
        v182 = v213;
        (*(v181 + 16))(v213, v254, v180);
        (*(v181 + 56))(v182, 0, 1, v180);
        v183 = swift_unknownObjectWeakLoadStrong();
        v272 = v175;
        swift_unknownObjectWeakAssign();
        sub_2487B4(v183);

        v184 = &v174[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkSize];
        *v184 = v177;
        *(v184 + 1) = v179;
        v184[16] = 0;
        v185 = swift_unknownObjectWeakLoadStrong();
        if (v185)
        {
          v186 = v185;
          (*(&stru_B8.offset + (swift_isaMask & *v185)))(v177, v179, 0);
        }

        v187 = v256;
        *&v174[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkLayoutWithMetrics] = v256;

        v188 = swift_unknownObjectWeakLoadStrong();
        if (v188)
        {
          v189 = v188;
          v190 = *&stru_B8.segname[(swift_isaMask & *v188) + 8];
          swift_bridgeObjectRetain_n();
          v190(v187);
          v182 = v213;
        }

        else
        {
        }

        v191 = v209;
        sub_1ED18(v182, v209, &unk_955AA0, &qword_783ED0);
        sub_247CC8(v191);
        v192 = v255;
        v174[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_sizeCategory] = v255;
        v193 = swift_unknownObjectWeakLoadStrong();
        if (v193)
        {
          v194 = v193;
          (*&stru_108.segname[swift_isaMask & *v193])(v192);
        }

        v195 = swift_unknownObjectWeakLoadStrong();
        if (v195)
        {
          v196 = v195;
          v197 = swift_unknownObjectWeakLoadStrong();
          (*(&stru_108.reserved2 + (swift_isaMask & *v196)))(v197, *v184, *(v184 + 1), v184[16], v256, v182, v192);
        }

        [v174 setNeedsLayout];
        v198 = v272;

        sub_10A2C(v182, &unk_955AA0, &qword_783ED0);
        sub_75A110();
        sub_768ED0();
        sub_18BAC4(&qword_947B68, type metadata accessor for TodayCardVideoView, &unk_7AD180);
        sub_75A050();
        [*(v269 + v160) setHidden:0];
        [*(v160 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView) setHidden:1];

        *(v160 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) = 1;
        goto LABEL_60;
      }
    }

LABEL_60:
    v158 = v273;
  }

LABEL_61:
  v199 = *&v158[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v199)
  {
    v200 = *&v199[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingImageView];
    v201 = v199;
    [v200 setHidden:1];
    [*&v201[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView] setHidden:0];
  }

  v202 = swift_unknownObjectWeakLoadStrong();
  v203 = v267;
  v204 = v262;
  if (v202)
  {
    *(v202 + qword_940588 + 8) = &off_8866C0;
    v205 = v202;
    swift_unknownObjectWeakAssign();
  }

  sub_189920();

  (*(v252 + 8))(v268, v253);
  v206 = v266;
  v204(v270, v266);
  return (v204)(v203, v206);
}

void (*sub_188194(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_188208;
}

void sub_188208(id *a1, char a2)
{
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v4 = v5;
    sub_2487B4(Strong);

    Strong = v4;
  }

  else
  {
    sub_2487B4(Strong);
  }
}

void sub_1882B0()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v7 = sub_66DFD8(14.0);
  [v7 addTarget:v0 action:"handleMuteButtonTapped" forControlEvents:64];
  v3 = [v0 contentView];
  [v3 addSubview:v7];

  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton] = v7;
  if (v4)
  {
    v5 = v7;
    [v4 removeFromSuperview];
  }

  else
  {
    v6 = v7;
  }

  [v1 setNeedsLayout];
}

void sub_1883B8(__n128 a1)
{
  v1 = sub_75FC40();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75FC80();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *&Strong[qword_9405B0];
    if (v10)
    {
      v15 = Strong;
      v11 = v10;
      [v11 setMuted:{objc_msgSend(v11, "isMuted") ^ 1}];
      v12 = [v11 isMuted];
      [v15 updateAudioSessionCategoryWithIsAudioOn:v12 ^ 1];
      (*(v6 + 104))(v8, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v5);
      v13 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
      if (!v12)
      {
        v13 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
      }

      (*(v2 + 104))(v4, *v13, v1);
      sub_56D2C(v8, v4);

      (*(v2 + 8))(v4, v1);
      (*(v6 + 8))(v8, v5);
    }

    else
    {
    }
  }
}

uint64_t sub_188654()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_99B408);
  sub_BE38(v0, qword_99B408);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1887B8(uint64_t a1)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CDE0();
  v29 = a1;
  sub_75CE20();
  if (qword_93D528 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99E788);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v26 = v7;
  v9(v5);
  v11 = v3[13];
  v27 = enum case for FontSource.useCase(_:);
  v31 = v11;
  (v11)(v5);
  v30 = sub_766CA0();
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v32);
  v28 = v3[2];
  v23[2] = v3 + 2;
  v28(v12, v5, v2);
  sub_766CB0();
  v25 = v3[1];
  v25(v5, v2);
  sub_75CE50();
  if (qword_93D548 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v6, qword_99E7E8);
  (v9)(v5, v13, v6);
  v23[1] = v10;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v14 = sub_B1B4(v32);
  v15 = v28;
  v28(v14, v5, v2);
  sub_766CB0();
  v16 = v25;
  v25(v5, v2);
  v23[0] = v3 + 1;
  sub_75CEE0();
  v24 = v6;
  (v9)(v5, v26, v6);
  v17 = v27;
  v26 = v3 + 13;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v32);
  v15(v18, v5, v2);
  sub_766CB0();
  v16(v5, v2);
  sub_75CE60();
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v19 = v24;
  v20 = sub_BE38(v24, qword_99E6E0);
  (v9)(v5, v20, v19);
  v31(v5, v17, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v21 = sub_B1B4(v32);
  v28(v21, v5, v2);
  sub_766CB0();
  v16(v5, v2);
  sub_75CEF0();
  return sub_75CE40();
}

char *sub_188CAC(double a1, double a2, double a3, double a4)
{
  v29[1] = swift_getObjectType();
  v9 = sub_7593D0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView;
  type metadata accessor for StoryCardMediaView(0);
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror] = 0;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer;
  v15 = type metadata accessor for TodayCardInfoLayerView(0);
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_weakInit();
  swift_weakInit();
  v4[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaCornerRadius] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_isBackgroundMirroringSupported] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton] = 0;
  v16 = type metadata accessor for StoryCardCollectionViewCell(0);
  v31.receiver = v4;
  v31.super_class = v16;
  v17 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView;
  [v18 addSubview:*&v17[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView]];

  v20 = [v17 contentView];
  v21 = OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer;
  [v20 addSubview:*&v17[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer]];

  *&v17[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaCornerRadius] = 0x4034000000000000;
  (*(v10 + 104))(v12, enum case for CornerStyle.continuous(_:), v9);
  if (v17[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground])
  {
    v22 = 3;
  }

  else
  {
    v22 = -1;
  }

  sub_501278(v12, v22, 20.0);
  (*(v10 + 8))(v12, v9);
  v23 = *&v17[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v23)
  {
    v24 = v23;
    [v24 _setContinuousCornerRadius:20.0];
    v25 = [v24 layer];
    [v25 setMaskedCorners:sub_7697E0()];
  }

  v30.receiver = *&v17[v21];
  v30.super_class = v15;
  objc_msgSendSuper2(&v30, "_setContinuousCornerRadius:", 20.0);
  sub_4BE560();
  [v17 setAccessibilityIgnoresInvertColors:1];
  sub_BD88(&qword_9477F0, qword_780200);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_77B6D0;
  *(v26 + 32) = sub_767B80();
  *(v26 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();
  swift_unknownObjectRelease();

  sub_BE70(0, &qword_941EC8, UITraitCollection_ptr);
  sub_769A40();
  sub_769F40();
  swift_unknownObjectRelease();

  sub_28053C();
  v27 = *(*&v17[v19] + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView);
  sub_DCCD0(v17, &off_8866D8);

  return v17;
}

void sub_189120(char a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground) == (a1 & 1))
  {
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground))
  {
    v3 = 3;
  }

  else
  {
    v3 = -1;
  }

  v4 = v1;
  sub_50117C(v3);
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
  if (*(v4 + v2) == 1)
  {
    if (!v5)
    {
      return;
    }

    v6 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView];
    v7 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isMirroring);
    *(v6 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isMirroring) = 1;
    if (v7)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = swift_unknownObjectWeakLoadStrong();
    v22 = v5;
    sub_69AB3C(Strong);
    swift_unknownObjectWeakAssign();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      if (v9)
      {
        type metadata accessor for VideoView(0);
        v12 = v9;
        v13 = sub_76A1C0();

        if (v13)
        {

          v14 = Strong;
          v9 = v12;
LABEL_28:

          v21 = v9;
          goto LABEL_29;
        }
      }

      else
      {
      }

LABEL_24:
      sub_69B168();

      v14 = Strong;
      goto LABEL_28;
    }

    if (v9)
    {
      goto LABEL_24;
    }

    v9 = Strong;
LABEL_27:
    v14 = v22;
    goto LABEL_28;
  }

  if (!v5)
  {
    return;
  }

  v15 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView];
  v16 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isMirroring);
  *(v15 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isMirroring) = 0;
  if (v16 != 1)
  {
    return;
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  v22 = v5;
  sub_69AB3C(0);
  swift_unknownObjectWeakAssign();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    if (v9)
    {
      type metadata accessor for VideoView(0);
      v19 = v9;
      v20 = sub_76A1C0();

      if (v20)
      {
        v9 = v19;
        goto LABEL_27;
      }
    }

    else
    {
    }

LABEL_26:
    sub_69B168();
    goto LABEL_27;
  }

  if (v9)
  {
    goto LABEL_26;
  }

  v21 = v22;
LABEL_29:
}

void sub_1893A4()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_isTransitioning) = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning);
  sub_4BE8E4();
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView);
  v3 = *(v0 + v1);
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isTransitioning) = v3;
  *(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView) + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isTransitioning) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*&stru_B8.segname[swift_isaMask & *Strong])(v3);
  }
}

void sub_1894C8(char a1)
{
  v2 = a1 & 1;
  v3 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isMotionEnabled] != v2)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = swift_weakLoadStrong();
      if (v12)
      {
        v13 = v12;
        v23 = v1;
        v26 = sub_765B20();
        sub_75B090();
        sub_BD88(&qword_947B48, &qword_789000);
        if (swift_dynamicCast())
        {
          sub_10914(v24, v27);
          sub_B170(v27, v28);
          v14 = [v23 traitCollection];
          v15 = sub_7618A0();

          if (v15)
          {
            v16 = v23;
            if (v23[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
            {
              v17 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
            }

            else
            {
              v17 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
            }

            v18 = v23[*v17];
            if (v18 != 7)
            {
              v19 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
              swift_beginAccess();
              sub_1ED18(&v16[v19], v5, &unk_955AA0, &qword_783ED0);
              if ((*(v7 + 48))(v5, 1, v6) == 1)
              {

                sub_10A2C(v5, &unk_955AA0, &qword_783ED0);
                goto LABEL_12;
              }

              (*(v7 + 32))(v9, v5, v6);
              sub_B170(v27, v28);
              v20 = sub_761880();
              if (v20)
              {
                v21 = v20;
                if (([v23 isHidden] & 1) == 0)
                {
                  sub_185FE4(v15, v21, v13, v18, v9, v11);

                  (*(v7 + 8))(v9, v6);
                  goto LABEL_12;
                }

                (*(v7 + 8))(v9, v6);

                goto LABEL_11;
              }

              (*(v7 + 8))(v9, v6);
            }
          }

LABEL_11:

LABEL_12:
          sub_BEB8(v27);
          return;
        }

        v25 = 0;
        memset(v24, 0, sizeof(v24));
        sub_10A2C(v24, &qword_947B50, &unk_78A770);
      }

      else
      {
      }
    }
  }
}

void sub_189920()
{
  v1 = v0;
  v2 = sub_75C330();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  if ((sub_50D80() & 1) != 0 && !*(v0 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton))
  {
    sub_1882B0();
    v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton);
    if (v10)
    {
LABEL_5:
      v11 = qword_9405B0;
      v12 = *&v25[qword_9405B0];
      v13 = v10;
      if (v12)
      {
        v14 = [v12 isMuted];
      }

      else
      {
        v14 = 0;
      }

      sub_66DC84(v14);
      v15 = 0.0;
      if ((*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
      {
        v16 = *&v25[v11];
        if (v16)
        {
          v17 = v16;
          sub_759A20();

          (*(v3 + 32))(v8, v5, v2);
        }

        else
        {
          (*(v3 + 104))(v8, enum case for VideoPlayerState.unknown(_:), v2);
        }

        if ((*(v3 + 88))(v8, v2) != enum case for VideoPlayerState.playing(_:) || (v15 = 1.0, (sub_50D80() & 1) == 0))
        {
          v15 = 0.0;
        }

        (*(v3 + 8))(v8, v2);
      }

      [v10 alpha];
      if (v19 == v15)
      {
      }

      else
      {
        v20 = objc_opt_self();
        v21 = swift_allocObject();
        *(v21 + 16) = v10;
        *(v21 + 24) = v15;
        aBlock[4] = sub_18B7B8;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23F0CC;
        aBlock[3] = &unk_886790;
        v22 = _Block_copy(aBlock);
        v23 = v10;

        [v20 animateWithDuration:4 delay:v22 options:0 animations:0.15 completion:0.0];

        _Block_release(v22);
      }

      return;
    }
  }

  v18 = v25;
}

void sub_189CD0()
{
  v1 = v0;
  v2 = sub_75C330();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  if ((sub_50D80() & 1) != 0 && !*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton))
  {
    sub_1C83D0();
    v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton);
    if (v10)
    {
LABEL_5:
      v11 = qword_9405B0;
      v12 = *&v25[qword_9405B0];
      v13 = v10;
      if (v12)
      {
        v14 = [v12 isMuted];
      }

      else
      {
        v14 = 0;
      }

      sub_66DC84(v14);
      v15 = 0.0;
      if ((*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
      {
        v16 = *&v25[v11];
        if (v16)
        {
          v17 = v16;
          sub_759A20();

          (*(v3 + 32))(v8, v5, v2);
        }

        else
        {
          (*(v3 + 104))(v8, enum case for VideoPlayerState.unknown(_:), v2);
        }

        if ((*(v3 + 88))(v8, v2) != enum case for VideoPlayerState.playing(_:) || (v15 = 1.0, (sub_50D80() & 1) == 0))
        {
          v15 = 0.0;
        }

        (*(v3 + 8))(v8, v2);
      }

      [v10 alpha];
      if (v19 == v15)
      {
      }

      else
      {
        v20 = objc_opt_self();
        v21 = swift_allocObject();
        *(v21 + 16) = v10;
        *(v21 + 24) = v15;
        aBlock[4] = sub_18BB1C;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23F0CC;
        aBlock[3] = &unk_8867E0;
        v22 = _Block_copy(aBlock);
        v23 = v10;

        [v20 animateWithDuration:4 delay:v22 options:0 animations:0.15 completion:0.0];

        _Block_release(v22);
      }

      return;
    }
  }

  v18 = v25;
}

id sub_18A090()
{
  v1 = v0;
  v2 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_7656C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoryCardCollectionViewCell(0);
  v40.receiver = v0;
  v40.super_class = v9;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  sub_184980();
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground] == 1 && *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer] + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay))
  {
    v10 = [v0 traitCollection];
    if (qword_93C328 != -1)
    {
      swift_once();
    }

    sub_138D34(v10, &xmmword_99A9B0, 1);
    sub_769A00();
    sub_7697D0();
    sub_769A00();
    sub_7697D0();
  }

  else
  {
    v11 = [v0 traitCollection];
    v12 = sub_769A00();

    if (v12)
    {
      v13 = v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] ? &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory : &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      v14 = v1[*v13];
      if (v14 != 7)
      {
        v15 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
        swift_beginAccess();
        sub_1ED18(&v1[v15], v4, &unk_955AA0, &qword_783ED0);
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          sub_10A2C(v4, &unk_955AA0, &qword_783ED0);
        }

        else
        {
          (*(v6 + 32))(v8, v4, v5);
          [v1 bounds];
          CGRectGetHeight(v43);
          v16 = [v1 traitCollection];
          v41.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
          v41.value._rawValue = 0;
          isa = sub_7699C0(v41, v42).super.isa;

          sub_7E8B0(v14, v8, isa);
          (*(v6 + 8))(v8, v5);
        }
      }
    }
  }

  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView];
  [v1 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_7697D0();
  [v18 setFrame:{sub_705B8(v20, v22, v24, v26, v27, v28)}];
  v29 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v29)
  {
    v30 = v29;
    [v1 bounds];
    MinX = CGRectGetMinX(v44);
    [v18 frame];
    MaxY = CGRectGetMaxY(v45);
    [v18 frame];
    Width = CGRectGetWidth(v46);
    [v1 bounds];
    Height = CGRectGetHeight(v47);
    [v18 frame];
    [v30 setFrame:{MinX, MaxY, Width, Height - CGRectGetHeight(v48)}];
  }

  v35 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton];
  if (v35)
  {
    v36 = v35;
    [v1 bounds];
    [v36 setFrame:{CGRectGetMaxX(v49) + -32.0 + -12.0, 12.0, 32.0, 32.0}];
  }

  v37 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer];
  [v1 bounds];
  return [v37 setFrame:?];
}

id sub_18A614()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for StoryCardCollectionViewCell(0);
  objc_msgSendSuper2(&v7, "prepareForReuse");
  swift_weakAssign();
  swift_weakAssign();
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton] = 0;
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = sub_501AE8();
  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v5)
  {
    v3 = [*(*(v5 + OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingImageView) + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_imageView) setImage:0];
  }

  return sub_4BDDB8(v3, v4);
}

uint64_t sub_18A748(void *a1)
{
  sub_B170(a1, a1[3]);
  v2 = sub_767660();
  if (sub_769B40())
  {
    UIContentSizeCategoryExtraExtraExtraLarge;
  }

  sub_10974(a1, a1[3]);
  return sub_767670();
}

uint64_t sub_18A8A0()
{
  sub_BD88(&qword_941C10, &qword_781230);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_77B6D0;
  v2 = [v0 contentView];
  *(v1 + 56) = sub_BE70(0, &qword_93E550, UIView_ptr);
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer];
  *(v1 + 32) = v2;
  v4 = (v3 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay);
  if (*v4 && (v5 = v4[1], ObjectType = swift_getObjectType(), v7 = *(v5 + 144), swift_unknownObjectRetain(), v8 = v7(ObjectType, v5), swift_unknownObjectRelease(), v8))
  {
    v9 = v8;
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  sub_10A4D4(v9);
  return v1;
}

void sub_18AA6C()
{
  swift_weakDestroy();
  swift_weakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton);
}

id sub_18AAEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryCardCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StoryCardCollectionViewCell(uint64_t a1)
{
  result = qword_947B18;
  if (!qword_947B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AC80(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_2487B4(Strong);
}

uint64_t (*sub_18AD10(uint64_t **a1))()
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
  v2[4] = sub_188194(v2);
  return sub_21028;
}

uint64_t sub_18ADA8(uint64_t result, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_18AE18(uint64_t a1, uint64_t a2)
{
  v3 = (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

double sub_18AE64(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

uint64_t sub_18AF24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_18AF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_18AFE4(uint64_t *a1, uint64_t a2))()
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
  swift_getWitnessTable();
  *(v4 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_18B080(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_BE70(0, &qword_93E550, UIView_ptr);
  v5 = v2;
  v6 = sub_76A1C0();

  return v6 & 1;
}

void sub_18B128(uint64_t a1)
{
  if (a1)
  {
    if ((*(&stru_2E8.reserved2 + (swift_isaMask & *v1)))())
    {
      v2 = [v1 backgroundView];
      if (v2)
      {
        v3 = v2;
        [v2 setBackgroundColor:0];
      }
    }
  }
}

uint64_t sub_18B224(uint64_t a1)
{
  result = sub_18BAC4(&qword_947B30, type metadata accessor for StoryCardCollectionViewCell, &unk_78FE6C);
  *(a1 + 8) = result;
  return result;
}

id sub_18B30C(void *a1)
{
  sub_184980();

  return [a1 setNeedsLayout];
}

id sub_18B34C()
{
  v1 = v0;
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28399C();
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  v8 = v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_isExpanded;
  v6[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_isExpanded] = v8;
  [v6 setUserInteractionEnabled:?];
  *(*&v6[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayContainer] + OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isExpanded) = v6[v9];
  [v6 setNeedsLayout];
  [v6 setNeedsDisplay];
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView];
  v11 = v1[v7];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isExpanded;
  *(v10 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isExpanded) = v11;
  v13 = *(v10 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView);
  v13[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isExpanded] = v11;
  [v13 setNeedsLayout];
  *(*(v10 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView) + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_isExpanded) = *(v10 + v12);
  sub_247BF0();
  if (v1[v7])
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 20.0;
  }

  v15 = type metadata accessor for TodayCardInfoLayerView(0);
  v22.receiver = v6;
  v22.super_class = v15;
  objc_msgSendSuper2(&v22, "_setContinuousCornerRadius:", v14);
  sub_4BE560();
  if (v1[v7])
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 20.0;
  }

  *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaCornerRadius] = v16;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground])
  {
    v17 = 3;
  }

  else
  {
    v17 = -1;
  }

  sub_501278(v5, v17, v16);
  (*(v3 + 8))(v5, v2);
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v18)
  {
    v19 = v18;
    [v19 _setContinuousCornerRadius:v16];
    v20 = [v19 layer];
    [v20 setMaskedCorners:sub_7697E0()];
  }

  sub_184980();
  sub_28053C();
  sub_189920();
  return [v1 setNeedsLayout];
}

void sub_18B648()
{
  v1 = v0;
  [v0 setNeedsLayout];
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v5 = v1[*v4];
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory) = v5;
  if (v5 != 7)
  {
    v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayContainer);
    v6[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_sizeCategory] = v5;
    if (v5 == 4)
    {
      v7 = v6[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    [v6 setHidden:v7 & 1];
    *(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsView) + qword_950C78) = v5;
    sub_367E48();
  }

  if (v1[v3])
  {
    v8 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  *(*&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView] + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_sizeCategory) = v1[*v8];
  sub_501F90();
}

uint64_t sub_18B780()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_18B7C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_18B7DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_18B814()
{
  v1 = sub_7572E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 1, v10 | 7);
}

void sub_18B984(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_7572E0() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_7656C0() - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  sub_DD420(a1, *(v4 + v11), *(v4 + v11 + 8), a2, a3, a4, *(v4 + 16), v4 + v10, *(v4 + v12), v4 + v14, *(v4 + v14 + *(v13 + 64)));
}

uint64_t sub_18BAC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 IconArtworkGridLayout.init(metrics:icons:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v3;
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 73) = *(a1 + 73);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 96) = a2;
  return result;
}

uint64_t IconArtworkGridLayout.Metrics.init(iconSize:interItemSpacing:horizontalOffsetPercentage:rotation:preferredGridSize:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  result = sub_34698(a1, a5 + 16);
  *(a5 + 56) = a8;
  *(a5 + 64) = a9;
  *(a5 + 72) = a2;
  *(a5 + 80) = a3;
  *(a5 + 88) = a4 & 1;
  return result;
}

uint64_t LargeGameCenterPlayerLayout.Metrics.aliasTopSpace.setter(__int128 *a1)
{
  sub_BEB8((v1 + 16));

  return sub_34698(a1, v1 + 16);
}

uint64_t IconArtworkGridLayout.Metrics.preferredGridSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 72) = result;
  *(v3 + 80) = a2;
  *(v3 + 88) = a3 & 1;
  return result;
}

uint64_t static IconArtworkGridLayout.totalNumberOfIcons(fitting:using:in:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v11.n128_f64[0] = a3;
  v12.n128_f64[0] = a4;

  return sub_18BF4C(a1, a2, ObjectType, v11, v12, v9, v10);
}

double *static IconArtworkGridLayout.iconFrames(relativeTo:using:in:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  swift_getObjectType();

  return sub_18BF88(a1, a2, a3, a4, a5, a6);
}

uint64_t IconArtworkGridLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_getObjectType();
  result = sub_18BF88(v5, a1, a2, a3, a4, a5);
  v12 = result;
  v13 = *(v5 + 96);
  v14 = *(v13 + 16);
  if (!v14)
  {

    return sub_7664B0();
  }

  v15 = 0;
  v16 = *(result + 16);
  v17 = v13 + 32;
  for (i = result + 56; ; i += 32)
  {
    if (v15 >= v16)
    {
      goto LABEL_3;
    }

    if (v15 >= *(v13 + 16))
    {
      break;
    }

    sub_134D8(v17, v19);
    result = sub_B170(v19, v19[3]);
    if (v15 >= *(v12 + 16))
    {
      goto LABEL_12;
    }

    sub_766530();
    result = sub_BEB8(v19);
LABEL_3:
    ++v15;
    v17 += 40;
    if (v14 == v15)
    {

      return sub_7664B0();
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_18BF4C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v7 = *(sub_18BF88(a1, a2, 0.0, 0.0, a4.n128_f64[0], a5.n128_f64[0]) + 2);

  return v7;
}

double *sub_18BF88(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = sub_76A920();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v178 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = *(a1 + 64);
  CGAffineTransformMakeRotation(&v208, v184);
  v209.origin.x = a5 * -0.5;
  v209.origin.y = a6 * -0.5;
  v209.size.width = a5;
  v209.size.height = a6;
  v210 = CGRectApplyAffineTransform(v209, &v208);
  x = v210.origin.x;
  y = v210.origin.y;
  width = v210.size.width;
  v206 = v210.size.width;
  height = v210.size.height;
  v202 = v210.size.height;
  MinX = CGRectGetMinX(v210);
  v197 = a3;
  v211.origin.x = a3;
  v198 = a4;
  v211.origin.y = a4;
  v211.size.width = a5;
  v211.size.height = a6;
  v199 = a6;
  v205 = MinX + CGRectGetMidX(v211);
  v212.origin.x = x;
  v212.origin.y = y;
  v212.size.width = width;
  v212.size.height = height;
  MinY = CGRectGetMinY(v212);
  v213.origin.x = a3;
  v213.origin.y = a4;
  v213.size.width = a5;
  v20 = a5;
  v213.size.height = a6;
  v204 = MinY + CGRectGetMidY(v213);
  v22 = *a1;
  v21 = *(a1 + 8);
  CGAffineTransformMakeRotation(&v208, v184);
  v214.origin.x = v22 * -0.5;
  v214.origin.y = v21 * -0.5;
  v214.size.width = v22;
  v214.size.height = v21;
  v196 = v21;
  v215 = CGRectApplyAffineTransform(v214, &v208);
  v23 = v215.origin.x;
  v24 = v215.origin.y;
  v25 = v215.size.width;
  v26 = v215.size.height;
  v27 = CGRectGetMinX(v215);
  v216.origin.x = 0.0;
  v216.origin.y = 0.0;
  v216.size.width = v22;
  v216.size.height = v21;
  v201 = v27 + CGRectGetMidX(v216);
  v217.origin.x = v23;
  v217.origin.y = v24;
  v217.size.width = v25;
  v217.size.height = v26;
  v28 = CGRectGetMinY(v217);
  v218.origin.x = 0.0;
  v218.origin.y = 0.0;
  v218.size.width = v22;
  v218.size.height = v21;
  v203 = v28 + CGRectGetMidY(v218);
  v29 = *(a1 + 40);
  sub_B170((a1 + 16), v29);
  sub_33964(v29);
  sub_766700();
  v31 = v30;
  v191 = v30;
  (*(v12 + 8))(v14, v11);
  v32 = *(a1 + 56);
  v194 = v22;
  v33 = v22 + v31;
  v34 = floor(v33 * v32);
  v35 = v197;
  v219.origin.x = v197;
  v36 = v198;
  v219.origin.y = v198;
  v219.size.width = v20;
  v37 = v199;
  v219.size.height = v199;
  MidX = CGRectGetMidX(v219);
  v220.origin.x = v35;
  v220.origin.y = v36;
  v195 = v20;
  v220.size.width = v20;
  v220.size.height = v37;
  MidY = CGRectGetMidY(v220);
  v38 = v184;
  v39 = __sincos_stret(v184);
  v190 = v39.__cosval * v33;
  v189 = v39.__sinval * v33;
  v40 = __sincos_stret(v38 + 3.14159265);
  v193 = v40.__cosval * v33;
  v192 = v40.__sinval * v33;
  v181 = v39.__cosval * v34;
  v180 = v39.__sinval * v34;
  v41 = __sincos_stret(v38 + 1.57079633);
  sinval = v41.__sinval;
  cosval = v41.__cosval;
  v42 = v196 + v191;
  v43 = v201;
  v221.origin.x = v201;
  v44 = v203;
  v221.origin.y = v203;
  v221.size.width = v25;
  v221.size.height = v26;
  v45 = MidX + CGRectGetMidX(v221);
  v222.origin.x = v43;
  v222.origin.y = v44;
  v222.size.width = v25;
  v222.size.height = v26;
  v46 = v45 + CGRectGetWidth(v222) * -0.5;
  v223.origin.x = v43;
  v223.origin.y = v44;
  v223.size.width = v25;
  v223.size.height = v26;
  v47 = MidY + CGRectGetMidY(v223);
  v224.origin.x = v43;
  v224.origin.y = v44;
  v224.size.width = v25;
  v224.size.height = v26;
  v225.origin.y = v47 + CGRectGetHeight(v224) * -0.5;
  v301.origin.x = v205;
  v301.size.width = v206;
  v225.origin.x = v46;
  v301.origin.y = v204;
  v225.size.width = v25;
  v225.size.height = v26;
  v301.size.height = v202;
  v48 = CGRectIntersectsRect(v225, v301);
  v179 = v42;
  MinX = v25;
  v200 = v26;
  if (v48)
  {
    v186 = cosval * v42 + v181;
    v185 = sinval * v42 + v180;
    v49 = _swiftEmptyArrayStorage;
    v50 = 0.5;
    v51 = MidX;
    v52 = MidY;
    v53 = v202;
    v54 = v203;
    v55 = v201;
    do
    {
      cosval = v51;
      v231.origin.x = v55;
      v231.origin.y = v54;
      v231.size.width = v25;
      v231.size.height = v26;
      v58 = v51 + CGRectGetMidX(v231);
      v232.origin.x = v55;
      v232.origin.y = v54;
      v232.size.width = v25;
      v232.size.height = v26;
      v59 = v58 - CGRectGetWidth(v232) * v50;
      v233.origin.x = v55;
      v233.origin.y = v54;
      v233.size.width = v25;
      v233.size.height = v26;
      v191 = v52 + CGRectGetMidY(v233);
      v234.origin.x = v55;
      v234.origin.y = v54;
      v234.size.width = v25;
      v234.size.height = v26;
      v60 = v191 - CGRectGetHeight(v234) * v50;
      v235.origin.x = v59;
      v235.origin.y = v60;
      v235.size.width = v25;
      v235.size.height = v26;
      v303.origin.y = v204;
      v303.origin.x = v205;
      v303.size.width = v206;
      v303.size.height = v53;
      v61 = CGRectIntersectsRect(v235, v303);
      sinval = v52;
      if (v61)
      {
        v191 = cosval;
        v62 = v52;
        do
        {
          v241.origin.x = v59;
          v241.origin.y = v60;
          v241.size.width = v25;
          v241.size.height = v26;
          v305.origin.x = v197;
          v305.origin.y = v198;
          v305.size.width = v195;
          v305.size.height = v199;
          if (CGRectIntersectsRect(v241, v305))
          {
            v242.origin.x = 0.0;
            v242.origin.y = 0.0;
            v72 = v194;
            v242.size.width = v194;
            v73 = v196;
            v242.size.height = v196;
            v74 = CGRectGetMidX(v242);
            v243.origin.x = 0.0;
            v243.origin.y = 0.0;
            v243.size.width = v72;
            v243.size.height = v73;
            v75 = CGRectGetWidth(v243);
            v244.origin.x = 0.0;
            v244.origin.y = 0.0;
            v244.size.width = v72;
            v244.size.height = v73;
            v76 = CGRectGetMidY(v244);
            v245.origin.x = 0.0;
            v245.origin.y = 0.0;
            v245.size.width = v72;
            v245.size.height = v73;
            v77 = CGRectGetHeight(v245);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_7AD2C(0, *(v49 + 2) + 1, 1, v49);
            }

            v79 = *(v49 + 2);
            v78 = *(v49 + 3);
            v64 = v191;
            if (v79 >= v78 >> 1)
            {
              v49 = sub_7AD2C((v78 > 1), v79 + 1, 1, v49);
            }

            v63 = 0.5;
            *(v49 + 2) = v79 + 1;
            v80 = &v49[4 * v79];
            v80[4] = v64 + v74 - v75 * 0.5;
            v80[5] = v62 + v76 - v77 * 0.5;
            v81 = v196;
            v80[6] = v194;
            v80[7] = v81;
          }

          else
          {
            v63 = 0.5;
            v64 = v191;
          }

          v65 = v190 + v64;
          v62 = v189 + v62;
          v26 = v200;
          v66 = v201;
          v236.origin.x = v201;
          v67 = v203;
          v236.origin.y = v203;
          v25 = MinX;
          v236.size.width = MinX;
          v236.size.height = v200;
          v68 = CGRectGetMidX(v236);
          v191 = v65;
          v69 = v65 + v68;
          v237.origin.x = v66;
          v237.origin.y = v67;
          v237.size.width = v25;
          v237.size.height = v26;
          v59 = v69 - CGRectGetWidth(v237) * v63;
          v238.origin.x = v66;
          v238.origin.y = v67;
          v238.size.width = v25;
          v238.size.height = v26;
          v70 = v62 + CGRectGetMidY(v238);
          v239.origin.x = v66;
          v239.origin.y = v67;
          v239.size.width = v25;
          v239.size.height = v26;
          v60 = v70 - CGRectGetHeight(v239) * v63;
          v240.origin.x = v59;
          v240.origin.y = v60;
          v240.size.width = v25;
          v240.size.height = v26;
          v304.origin.y = v204;
          v304.origin.x = v205;
          v304.size.width = v206;
          v304.size.height = v202;
          v71 = CGRectIntersectsRect(v240, v304);
          v52 = sinval;
        }

        while (v71);
      }

      v82 = v193 + cosval;
      v83 = v192 + v52;
      v246.size.height = v200;
      v84 = v201;
      v246.origin.x = v201;
      v85 = v203;
      v246.origin.y = v203;
      v246.size.width = v25;
      v86 = v82 + CGRectGetMidX(v246);
      v247.origin.x = v84;
      v247.origin.y = v85;
      v247.size.width = v25;
      v247.size.height = v200;
      v87 = v86 - CGRectGetWidth(v247) * 0.5;
      v248.origin.x = v84;
      v248.origin.y = v85;
      v248.size.width = v25;
      v248.size.height = v200;
      v88 = v83 + CGRectGetMidY(v248);
      v249.origin.x = v84;
      v249.origin.y = v85;
      v26 = v200;
      v249.size.width = v25;
      v249.size.height = v200;
      v89 = v88 - CGRectGetHeight(v249) * 0.5;
      v250.origin.x = v87;
      v250.origin.y = v89;
      v250.size.width = v25;
      v250.size.height = v26;
      v306.origin.y = v204;
      v306.origin.x = v205;
      v306.size.width = v206;
      v306.size.height = v202;
      if (CGRectIntersectsRect(v250, v306))
      {
        do
        {
          v256.origin.x = v87;
          v256.origin.y = v89;
          v256.size.width = v25;
          v256.size.height = v26;
          v308.origin.x = v197;
          v308.origin.y = v198;
          v308.size.width = v195;
          v308.size.height = v199;
          if (CGRectIntersectsRect(v256, v308))
          {
            v257.origin.x = 0.0;
            v257.origin.y = 0.0;
            v96 = v194;
            v257.size.width = v194;
            v97 = v196;
            v257.size.height = v196;
            v98 = CGRectGetMidX(v257);
            v258.origin.x = 0.0;
            v258.origin.y = 0.0;
            v258.size.width = v96;
            v258.size.height = v97;
            v99 = CGRectGetWidth(v258);
            v259.origin.x = 0.0;
            v259.origin.y = 0.0;
            v259.size.width = v96;
            v259.size.height = v97;
            v191 = CGRectGetMidY(v259);
            v260.origin.x = 0.0;
            v260.origin.y = 0.0;
            v260.size.width = v96;
            v260.size.height = v97;
            v100 = CGRectGetHeight(v260);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_7AD2C(0, *(v49 + 2) + 1, 1, v49);
            }

            v102 = *(v49 + 2);
            v101 = *(v49 + 3);
            if (v102 >= v101 >> 1)
            {
              v49 = sub_7AD2C((v101 > 1), v102 + 1, 1, v49);
            }

            v90 = 0.5;
            v103 = v83 + v191 - v100 * 0.5;
            *(v49 + 2) = v102 + 1;
            v104 = &v49[4 * v102];
            v104[4] = v82 + v98 - v99 * 0.5;
            v104[5] = v103;
            v105 = v196;
            v104[6] = v194;
            v104[7] = v105;
          }

          else
          {
            v90 = 0.5;
          }

          v82 = v193 + v82;
          v83 = v192 + v83;
          v91 = v201;
          v251.origin.x = v201;
          v92 = v203;
          v251.origin.y = v203;
          v251.size.width = v25;
          v93 = v200;
          v251.size.height = v200;
          v94 = v82 + CGRectGetMidX(v251);
          v252.origin.x = v91;
          v252.origin.y = v92;
          v252.size.width = MinX;
          v252.size.height = v93;
          v87 = v94 - CGRectGetWidth(v252) * v90;
          v253.origin.x = v91;
          v253.origin.y = v92;
          v253.size.width = MinX;
          v253.size.height = v93;
          v95 = v83 + CGRectGetMidY(v253);
          v254.origin.x = v91;
          v254.origin.y = v92;
          v26 = v93;
          v25 = MinX;
          v254.size.width = MinX;
          v254.size.height = v26;
          v89 = v95 - CGRectGetHeight(v254) * v90;
          v255.origin.x = v87;
          v255.origin.y = v89;
          v255.size.width = v25;
          v255.size.height = v26;
          v307.origin.y = v204;
          v307.origin.x = v205;
          v307.size.width = v206;
          v307.size.height = v202;
        }

        while (CGRectIntersectsRect(v255, v307));
      }

      v51 = v186 + cosval;
      v52 = v185 + sinval;
      v55 = v201;
      v226.origin.x = v201;
      v54 = v203;
      v226.origin.y = v203;
      v226.size.width = v25;
      v226.size.height = v26;
      v56 = v51 + CGRectGetMidX(v226);
      v227.origin.x = v55;
      v227.origin.y = v54;
      v227.size.width = v25;
      v227.size.height = v26;
      v50 = 0.5;
      v191 = v56 - CGRectGetWidth(v227) * 0.5;
      v228.origin.x = v55;
      v228.origin.y = v54;
      v228.size.width = v25;
      v228.size.height = v26;
      v57 = v52 + CGRectGetMidY(v228);
      v229.origin.x = v55;
      v229.origin.y = v54;
      v229.size.width = v25;
      v229.size.height = v26;
      v230.origin.y = v57 - CGRectGetHeight(v229) * 0.5;
      v230.origin.x = v191;
      v230.size.width = v25;
      v230.size.height = v26;
      v302.origin.y = v204;
      v302.origin.x = v205;
      v302.size.width = v206;
      v53 = v202;
      v302.size.height = v202;
    }

    while (CGRectIntersectsRect(v230, v302));
  }

  else
  {
    v49 = _swiftEmptyArrayStorage;
    v54 = v203;
    v55 = v201;
  }

  v106 = __sincos_stret(v184 + -1.57079633);
  v186 = v106.__cosval * v179 - v181;
  v107 = MidX + v186;
  v185 = v106.__sinval * v179 - v180;
  v108 = MidY + v185;
  v261.origin.x = v55;
  v261.origin.y = v54;
  v261.size.width = v25;
  v261.size.height = v26;
  v109 = CGRectGetMidX(v261);
  sinval = v107;
  v110 = v107 + v109;
  v262.origin.x = v55;
  v262.origin.y = v54;
  v262.size.width = v25;
  v262.size.height = v26;
  v111 = v55;
  v112 = v110 - CGRectGetWidth(v262) * 0.5;
  v263.origin.x = v111;
  v263.origin.y = v54;
  v263.size.width = v25;
  v263.size.height = v26;
  v113 = CGRectGetMidY(v263);
  cosval = v108;
  v114 = v108 + v113;
  v264.origin.x = v111;
  v264.origin.y = v54;
  v264.size.width = v25;
  v264.size.height = v26;
  v265.origin.y = v114 - CGRectGetHeight(v264) * 0.5;
  v309.size.height = v202;
  v265.origin.x = v112;
  v265.size.width = v25;
  v265.size.height = v26;
  v309.origin.y = v204;
  v309.origin.x = v205;
  v309.size.width = v206;
  if (CGRectIntersectsRect(v265, v309))
  {
    v115 = sinval;
    v116 = cosval;
    v117 = v201;
    do
    {
      v271.origin.x = v117;
      v271.origin.y = v54;
      v271.size.width = v25;
      v271.size.height = v26;
      v121 = v115 + CGRectGetMidX(v271);
      v272.origin.x = v117;
      v272.origin.y = v54;
      v272.size.width = v25;
      v272.size.height = v26;
      v122 = v121 - CGRectGetWidth(v272) * 0.5;
      v273.origin.x = v117;
      v273.origin.y = v54;
      v273.size.width = v25;
      v273.size.height = v26;
      v123 = v116 + CGRectGetMidY(v273);
      v274.origin.x = v117;
      v274.origin.y = v54;
      v274.size.width = v25;
      v274.size.height = v26;
      v124 = v123 - CGRectGetHeight(v274) * 0.5;
      v275.origin.x = v122;
      v275.origin.y = v124;
      v275.size.width = v25;
      v275.size.height = v26;
      v311.origin.y = v204;
      v311.origin.x = v205;
      v311.size.width = v206;
      v311.size.height = v202;
      v125 = CGRectIntersectsRect(v275, v311);
      sinval = v115;
      cosval = v116;
      if (v125)
      {
        v191 = v115;
        do
        {
          v281.origin.x = v122;
          v281.origin.y = v124;
          v281.size.width = v25;
          v281.size.height = v26;
          v313.origin.x = v197;
          v313.origin.y = v198;
          v313.size.width = v195;
          v313.size.height = v199;
          if (CGRectIntersectsRect(v281, v313))
          {
            v282.origin.x = 0.0;
            v282.origin.y = 0.0;
            v134 = v194;
            v282.size.width = v194;
            v135 = v196;
            v282.size.height = v196;
            v136 = CGRectGetMidX(v282);
            v283.origin.x = 0.0;
            v283.origin.y = 0.0;
            v283.size.width = v134;
            v283.size.height = v135;
            v137 = CGRectGetWidth(v283);
            v284.origin.x = 0.0;
            v284.origin.y = 0.0;
            v284.size.width = v134;
            v284.size.height = v135;
            v138 = CGRectGetMidY(v284);
            v285.origin.x = 0.0;
            v285.origin.y = 0.0;
            v285.size.width = v134;
            v285.size.height = v135;
            v139 = CGRectGetHeight(v285);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_7AD2C(0, *(v49 + 2) + 1, 1, v49);
            }

            v141 = *(v49 + 2);
            v140 = *(v49 + 3);
            v142 = 0.5;
            v127 = v191;
            if (v141 >= v140 >> 1)
            {
              v147 = sub_7AD2C((v140 > 1), v141 + 1, 1, v49);
              v142 = 0.5;
              v49 = v147;
            }

            v143 = v127 + v136 - v137 * v142;
            v144 = v116 + v138;
            v126 = 0.5;
            *(v49 + 2) = v141 + 1;
            v145 = &v49[4 * v141];
            v145[4] = v143;
            v145[5] = v144 - v139 * 0.5;
            v146 = v196;
            v145[6] = v194;
            v145[7] = v146;
          }

          else
          {
            v126 = 0.5;
            v127 = v191;
          }

          v128 = v190 + v127;
          v116 = v189 + v116;
          v26 = v200;
          v129 = v201;
          v276.origin.x = v201;
          v130 = v203;
          v276.origin.y = v203;
          v25 = MinX;
          v276.size.width = MinX;
          v276.size.height = v200;
          v131 = CGRectGetMidX(v276);
          v191 = v128;
          v132 = v128 + v131;
          v277.origin.x = v129;
          v277.origin.y = v130;
          v277.size.width = v25;
          v277.size.height = v26;
          v122 = v132 - CGRectGetWidth(v277) * v126;
          v278.origin.x = v129;
          v278.origin.y = v130;
          v278.size.width = v25;
          v278.size.height = v26;
          v133 = v116 + CGRectGetMidY(v278);
          v279.origin.x = v129;
          v279.origin.y = v130;
          v279.size.width = v25;
          v279.size.height = v26;
          v124 = v133 - CGRectGetHeight(v279) * v126;
          v280.origin.x = v122;
          v280.origin.y = v124;
          v280.size.width = v25;
          v280.size.height = v26;
          v312.origin.y = v204;
          v312.origin.x = v205;
          v312.size.width = v206;
          v312.size.height = v202;
        }

        while (CGRectIntersectsRect(v280, v312));
      }

      v148 = v193 + sinval;
      v149 = v192 + cosval;
      v150 = v201;
      v286.origin.x = v201;
      v286.origin.y = v203;
      v286.size.width = v25;
      v286.size.height = v26;
      v151 = CGRectGetMidX(v286);
      v191 = v148;
      v152 = v148 + v151;
      v287.origin.x = v150;
      v287.origin.y = v203;
      v287.size.width = v25;
      v287.size.height = v26;
      v153 = v152 - CGRectGetWidth(v287) * 0.5;
      v288.origin.x = v150;
      v288.origin.y = v203;
      v288.size.width = v25;
      v288.size.height = v26;
      v154 = v149 + CGRectGetMidY(v288);
      v289.origin.x = v150;
      v54 = v203;
      v289.origin.y = v203;
      v289.size.width = v25;
      v289.size.height = v26;
      v155 = v154 - CGRectGetHeight(v289) * 0.5;
      v290.origin.x = v153;
      v290.origin.y = v155;
      v290.size.width = v25;
      v290.size.height = v26;
      v314.origin.y = v204;
      v314.origin.x = v205;
      v314.size.width = v206;
      v314.size.height = v202;
      if (CGRectIntersectsRect(v290, v314))
      {
        do
        {
          v296.origin.x = v153;
          v296.origin.y = v155;
          v296.size.width = v25;
          v296.size.height = v26;
          v316.origin.x = v197;
          v316.origin.y = v198;
          v316.size.width = v195;
          v316.size.height = v199;
          if (CGRectIntersectsRect(v296, v316))
          {
            v297.origin.x = 0.0;
            v297.origin.y = 0.0;
            v163 = v194;
            v297.size.width = v194;
            v164 = v196;
            v297.size.height = v196;
            v165 = CGRectGetMidX(v297);
            v298.origin.x = 0.0;
            v298.origin.y = 0.0;
            v298.size.width = v163;
            v298.size.height = v164;
            v166 = CGRectGetWidth(v298);
            v299.origin.x = 0.0;
            v299.origin.y = 0.0;
            v299.size.width = v163;
            v299.size.height = v164;
            v167 = CGRectGetMidY(v299);
            v300.origin.x = 0.0;
            v300.origin.y = 0.0;
            v300.size.width = v163;
            v300.size.height = v164;
            v168 = CGRectGetHeight(v300);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_7AD2C(0, *(v49 + 2) + 1, 1, v49);
            }

            v170 = *(v49 + 2);
            v169 = *(v49 + 3);
            v171 = 0.5;
            v157 = v191;
            if (v170 >= v169 >> 1)
            {
              v176 = sub_7AD2C((v169 > 1), v170 + 1, 1, v49);
              v171 = 0.5;
              v49 = v176;
            }

            v172 = v157 + v165 - v166 * v171;
            v173 = v149 + v167;
            v156 = 0.5;
            *(v49 + 2) = v170 + 1;
            v174 = &v49[4 * v170];
            v174[4] = v172;
            v174[5] = v173 - v168 * 0.5;
            v175 = v196;
            v174[6] = v194;
            v174[7] = v175;
          }

          else
          {
            v156 = 0.5;
            v157 = v191;
          }

          v158 = v193 + v157;
          v149 = v192 + v149;
          v26 = v200;
          v159 = v201;
          v291.origin.x = v201;
          v54 = v203;
          v291.origin.y = v203;
          v25 = MinX;
          v291.size.width = MinX;
          v291.size.height = v200;
          v160 = CGRectGetMidX(v291);
          v191 = v158;
          v161 = v158 + v160;
          v292.origin.x = v159;
          v292.origin.y = v54;
          v292.size.width = v25;
          v292.size.height = v26;
          v153 = v161 - CGRectGetWidth(v292) * v156;
          v293.origin.x = v159;
          v293.origin.y = v54;
          v293.size.width = v25;
          v293.size.height = v26;
          v162 = v149 + CGRectGetMidY(v293);
          v294.origin.x = v159;
          v294.origin.y = v54;
          v294.size.width = v25;
          v294.size.height = v26;
          v155 = v162 - CGRectGetHeight(v294) * v156;
          v295.origin.x = v153;
          v295.origin.y = v155;
          v295.size.width = v25;
          v295.size.height = v26;
          v315.origin.y = v204;
          v315.origin.x = v205;
          v315.size.width = v206;
          v315.size.height = v202;
        }

        while (CGRectIntersectsRect(v295, v315));
      }

      v115 = v186 + sinval;
      v116 = v185 + cosval;
      v117 = v201;
      v266.origin.x = v201;
      v266.origin.y = v54;
      v266.size.width = v25;
      v266.size.height = v26;
      v118 = v115 + CGRectGetMidX(v266);
      v267.origin.x = v117;
      v267.origin.y = v54;
      v267.size.width = v25;
      v267.size.height = v26;
      v119 = v118 - CGRectGetWidth(v267) * 0.5;
      v268.origin.x = v117;
      v268.origin.y = v54;
      v268.size.width = v25;
      v268.size.height = v26;
      v120 = v116 + CGRectGetMidY(v268);
      v269.origin.x = v117;
      v269.origin.y = v54;
      v269.size.width = v25;
      v269.size.height = v26;
      v270.origin.y = v120 - CGRectGetHeight(v269) * 0.5;
      v270.origin.x = v119;
      v270.size.width = v25;
      v270.size.height = v26;
      v310.origin.y = v204;
      v310.origin.x = v205;
      v310.size.width = v206;
      v310.size.height = v202;
    }

    while (CGRectIntersectsRect(v270, v310));
  }

  return v49;
}

__n128 sub_18D298(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_18D2C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18D30C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_18D374(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_18D398(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18D3E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_18D488(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v5 = objc_opt_self();
  sub_396E8();
  v6 = a2();
  v7 = [v5 _effectWithTintColor:v6];

  *a3 = v7;
}

void sub_18D51C(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for PaletteBackgroundView();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_18D570();
}

id sub_18D570()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21PaletteBackgroundView_blurEffectOverride];
  if (!v1)
  {
    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceStyle];

    if (v3 == &dword_0 + 2)
    {
      if (qword_93C518 != -1)
      {
        swift_once();
      }

      v4 = &qword_99B450;
    }

    else
    {
      if (qword_93C510 != -1)
      {
        swift_once();
      }

      v4 = &qword_99B448;
    }

    v1 = *v4;
  }

  return [v0 setEffect:v1];
}

id sub_18D748()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaletteBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_18D7B0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_768C60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView;
  *&v4[v14] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v46.receiver = v4;
  v46.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v15 setClipsToBounds:0];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v20 = OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView;
  v21 = *(*&v15[OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v22 = v21;
  sub_768C10();
  sub_BDD0(&v42);
  sub_BDD0(&v44);
  sub_769E70();

  v23 = *(v11 + 8);
  v23(v13, v10);
  v24 = *(*&v15[v20] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = v24;
  sub_768C10();
  sub_BDD0(&v42);
  sub_BDD0(&v44);
  sub_769E70();

  v23(v13, v10);
  v26 = *(*&v15[v20] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v27 = v26;
  sub_768C10();
  sub_BDD0(&v42);
  sub_BDD0(&v44);
  sub_769E70();

  v23(v13, v10);
  v28 = *(*&v15[v20] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v29 = v28;
  sub_768C10();
  sub_BDD0(&v42);
  sub_BDD0(&v44);
  sub_769E70();

  v23(v13, v10);
  v30 = *&v15[v20];
  v31 = *(v30 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
  if (v31)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = v31;
    sub_768C10();
    sub_BDD0(&v42);
    sub_BDD0(&v44);
    sub_769E70();

    v23(v13, v10);
    v30 = *&v15[v20];
  }

  v33 = *(v30 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
  if (v33)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = v33;
    sub_768C10();
    sub_BDD0(&v42);
    sub_BDD0(&v44);
    sub_769E70();

    v23(v13, v10);
    v30 = *&v15[v20];
  }

  v35 = *(v30 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = v35;
  sub_768C10();
  sub_BDD0(&v42);
  sub_BDD0(&v44);
  sub_769E70();

  v23(v13, v10);
  v37 = *&v15[v20];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v38 = v37;
  sub_768C10();
  sub_BDD0(&v42);
  sub_BDD0(&v44);
  sub_769E70();

  v23(v13, v10);
  v39 = [v15 contentView];
  [v39 setClipsToBounds:0];

  v40 = [v15 contentView];
  [v40 addSubview:*&v15[v20]];

  return v15;
}

double sub_18E068()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_metrics;
  swift_beginAccess();
  return *v1;
}

void sub_18E0C4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759050();

  v6 = *(v3 + v4);
  sub_759210();
  sub_18E204(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  sub_75A0C0();
}

uint64_t sub_18E1AC(uint64_t a1, uint64_t a2)
{
  result = sub_18E204(&qword_947BE8, a2, type metadata accessor for TodayCardSmallLockupCollectionViewCell, &unk_789248);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E204(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_18E24C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselDelegate];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl;
  type metadata accessor for PageControl();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView;
  type metadata accessor for HeroCarouselScrollView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews] = _swiftEmptyArrayStorage;
  v12 = &v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_previousIndex];
  *v12 = 0;
  v12[8] = 1;
  sub_760140();
  v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isAutoScrollEnabled] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollTimer] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_parallaxY] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isRubberbanding] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isUserPagingInteractively] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControlProgress] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isVoiceOverRunning] = UIAccessibilityIsVoiceOverRunning();
  v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isReducedMotionEnabled] = UIAccessibilityIsReduceMotionEnabled();
  v33.receiver = v4;
  v33.super_class = type metadata accessor for HeroCarouselView(0);
  v13 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView;
  *(*&v17[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView] + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pagingDelegate + 8) = &off_8869A0;
  swift_unknownObjectWeakAssign();
  v19 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl;
  [*&v17[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl] setAllowsContinuousInteraction:0];
  [*&v17[v19] setBackgroundStyle:2];
  *(*&v17[v19] + OBJC_IVAR____TtC18ASMessagesProviderP33_7801CE2CD236390AE6FA8ADBE4D2096411PageControl_delegate + 8) = &off_886990;
  swift_unknownObjectWeakAssign();
  [*&v17[v19] setOverrideUserInterfaceStyle:2];
  v20 = *&v17[v19];
  [v20 addTarget:v17 action:"pageControlDidChange" forControlEvents:4096];

  v21 = sub_7653A0();
  v32[3] = v21;
  v32[4] = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v22 = sub_B1B4(v32);
  (*(*(v21 - 8) + 104))(v22, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v21);
  LOBYTE(v21) = sub_765C30();
  sub_BEB8(v32);
  if (v21)
  {
    v23 = [objc_allocWithZone(UIPageControlTimerProgress) initWithPreferredDuration:COERCE_DOUBLE(1)];
    v24 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControlProgress;
    v25 = *&v17[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControlProgress];
    *&v17[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControlProgress] = v23;

    v26 = *&v17[v24];
    if (v26)
    {
      [v26 setDelegate:v17];
      v27 = *&v17[v24];
    }

    else
    {
      v27 = 0;
    }

    [*&v17[v19] setProgress:v27];
    sub_190088();
  }

  [v17 addSubview:*&v17[v18]];
  [v17 addSubview:*&v17[v19]];
  v28 = objc_opt_self();
  v29 = [v28 defaultCenter];
  [v29 addObserver:v17 selector:"reduceMotionStatusDidChange:" name:UIAccessibilityReduceMotionStatusDidChangeNotification object:0];

  v30 = [v28 defaultCenter];
  [v30 addObserver:v17 selector:"voiceOverStatusDidChange:" name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

  return v17;
}

void sub_18E6FC(char a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isAutoScrollEnabled;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isAutoScrollEnabled) = a1;
  v3 = sub_7653A0();
  v12 = v3;
  v4 = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v13 = v4;
  v5 = sub_B1B4(v11);
  v6 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v7 = *(*(v3 - 8) + 104);
  v7(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v3);
  v8 = sub_765C30();
  sub_BEB8(v11);
  if ((v8 & 1) == 0)
  {
    if (*(v1 + v2))
    {
      if (!*(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollTimer))
      {
        sub_18F7B4(0.0);
      }
    }

    else
    {
      v12 = v3;
      v13 = v4;
      v9 = sub_B1B4(v11);
      v7(v9, v6, v3);
      v10 = sub_765C30();
      sub_BEB8(v11);
      if ((v10 & 1) == 0)
      {
        sub_191690(0);
      }
    }
  }
}

void sub_18E850()
{
  v1 = sub_7653A0();
  v10 = v1;
  v2 = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v11 = v2;
  v3 = sub_B1B4(v9);
  v4 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v5 = *(*(v1 - 8) + 104);
  v5(v3, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v1);
  v6 = sub_765C30();
  sub_BEB8(v9);
  if ((v6 & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isRubberbanding) == 1)
    {
      if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollTimer))
      {
        v10 = v1;
        v11 = v2;
        v7 = sub_B1B4(v9);
        v5(v7, v4, v1);
        v8 = sub_765C30();
        sub_BEB8(v9);
        if ((v8 & 1) == 0)
        {
          sub_191690(0);
        }
      }
    }

    else if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isAutoScrollEnabled) == 1 && !*(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollTimer))
    {
      sub_18F7B4(0.0);
    }
  }
}

id sub_18E9CC()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for HeroCarouselView(0);
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView];
  sub_75D650();
  [v1 setFrame:?];
  sub_75D650();
  sub_769D10();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl];
  [v10 sizeThatFits:{v6, v8}];
  v12 = v11;
  v14 = v13;
  v18.origin.x = v3;
  v18.origin.y = v5;
  v18.size.width = v7;
  v18.size.height = v9;
  v15 = CGRectGetMidX(v18) + v12 * -0.5;
  v19.origin.x = v3;
  v19.origin.y = v5;
  v19.size.width = v7;
  v19.size.height = v9;
  return [v10 setFrame:{v15, CGRectGetMaxY(v19) - v14, v12, v14}];
}

id sub_18EB5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView);
  v2 = [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl) currentPage];
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers);
  if (v3 >> 62)
  {
LABEL_17:
    v4 = sub_76A860();
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_76A770();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }
      }

      if (*(v6 + 24) == v2)
      {

        v9 = *(v6 + 32);

        return v9;
      }

      ++v5;
    }

    while (v7 != v4);
  }

  return 0;
}

id sub_18ECA0(unint64_t a1, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews;
  if (v4 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {

    if (!i)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_76A770();
      }

      else
      {
        if (v7 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_38;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v8 removeFromSuperview];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_12:

  *&v26[v5] = a1;

  v11 = a1 >> 62;
  if (a1 >> 62)
  {
    v4 = sub_76A860();
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  swift_bridgeObjectRetain_n();
  if (v4)
  {
    v12 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = sub_76A770();
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v12 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_40;
        }

        v13 = *(a1 + 8 * v12 + 32);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_39;
        }
      }

      v15 = *&v26[v5];
      if (v15 >> 62)
      {
        v24 = v11;
        v18 = v13;
        v16 = sub_76A860();
        v13 = v18;
        v11 = v24;
      }

      else
      {
        v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
      }

      v17 = 32.0;
      if (v16 <= 1)
      {
        v17 = 20.0;
      }

      *&v13[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayBottomInset] = v17;

      ++v12;
    }

    while (v14 != v4);
  }

  v19 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl];
  if (v11)
  {
    v20 = sub_76A860();
  }

  else
  {
    v20 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  [v19 setNumberOfPages:v20];
  v21 = *&v26[v5];
  if (v21 >> 62)
  {
    v22 = sub_76A860();
  }

  else
  {
    v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  }

  [v19 setHidden:v22 < 2];
  sub_543AD0(a1, a2);

  return [v26 setNeedsLayout];
}

double sub_18EF88(int a1, int a2)
{
  v48 = sub_7602A0();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews);
  if (v7 >> 62)
  {
    goto LABEL_33;
  }

  v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
LABEL_3:

  if (v8)
  {
    v9 = 0;
    v54 = v7 & 0xFFFFFFFFFFFFFF8;
    v55 = v7 & 0xC000000000000001;
    v52 = a1 & 1;
    v46 = v5 + 1;
    v49 = a2;
    v50 = a1;
    v51 = v7;
    v53 = v8;
    do
    {
      if (v55)
      {
        v20 = sub_76A770();
      }

      else
      {
        if (v9 >= *(v54 + 16))
        {
          goto LABEL_32;
        }

        v20 = *(v7 + 8 * v9 + 32);
      }

      v5 = v20;
      v21 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v8 = sub_76A860();
        goto LABEL_3;
      }

      v22 = OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_gradientView;
      v23 = *(v20 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_gradientView);
      v24 = v23[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsTopGradient];
      v23[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsTopGradient] = v52;
      if (v24 != (a1 & 1))
      {
        if ((a1 & 1) != 0 || v23[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient] == 1)
        {
          v25 = OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient;
          [*&v23[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient] setHidden:0];
          [v23 bounds];
          sub_41BD4C(v26, v27);
          v29 = v28;
          v30 = *&v23[v25];
          sub_BE70(0, &qword_945820, NSNumber_ptr);

          isa = sub_769450().super.isa;

          [v30 setLocations:isa];

          v32 = *&v23[v25];

          sub_140730(v29);

          v33 = sub_769450().super.isa;
          a1 = v50;

          v34 = v32;
          v7 = v51;
          [v34 setColors:v33];

          v35 = *&v23[v25];
          a2 = v49;
          [v35 setNeedsDisplay];
        }

        else
        {
          [*&v23[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient] setHidden:1];
        }

        [v23 setNeedsLayout];
      }

      v36 = *(v5 + v22);
      if (a2)
      {
        if (!*(v5 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_heroCarouselItem) || (, v37 = sub_75BC00(), , !v37))
        {
          v43 = v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient];
          v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient] = 1;
          if (v43)
          {
            goto LABEL_7;
          }

          goto LABEL_5;
        }

        v38 = v47;
        sub_7602C0();

        v39 = sub_760290();
        (*v46)(v38, v48);
        v40 = v39 ^ 1;
        v7 = v51;
        v41 = v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient];
        v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient] = v40 & 1;
        if (v41 == (v40 & 1))
        {
          goto LABEL_7;
        }
      }

      else
      {
        v40 = 0;
        v42 = v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient];
        v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient] = 0;
        if ((v42 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      if ((v40 & 1) == 0 && !v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsTopGradient])
      {
        [*&v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient] setHidden:1];
        goto LABEL_6;
      }

LABEL_5:
      v10 = OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient;
      [*&v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient] setHidden:0];
      [v36 bounds];
      sub_41BD4C(v11, v12);
      v14 = v13;
      v15 = *&v36[v10];
      sub_BE70(0, &qword_945820, NSNumber_ptr);

      v16 = sub_769450().super.isa;

      [v15 setLocations:v16];

      v17 = *&v36[v10];

      sub_140730(v14);

      v18 = sub_769450().super.isa;
      v7 = v51;

      v19 = v17;
      a1 = v50;
      [v19 setColors:v18];

      [*&v36[v10] setNeedsDisplay];
LABEL_6:
      [v36 setNeedsLayout];
LABEL_7:

      ++v9;
    }

    while (v21 != v53);
  }

  return result;
}

void sub_18F4D8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPageIndex;
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPageIndex);
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl);
  if (v4 >= [v5 currentPage])
  {
    v13 = *(v2 + v3);
    if ([v5 currentPage] >= v13)
    {
      return;
    }

    v14 = sub_7653A0();
    v26 = v14;
    v15 = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
    v27 = v15;
    v16 = sub_B1B4(v25);
    v17 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v18 = *(*(v14 - 8) + 104);
    v18(v16, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v14);
    v19 = sub_765C30();
    sub_BEB8(v25);
    if (v19)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v26 = v14;
    v27 = v15;
    v23 = sub_B1B4(v25);
    v18(v23, v17, v14);
    v24 = sub_765C30();
    sub_BEB8(v25);
    v12 = 0;
    if (v24)
    {
      goto LABEL_9;
    }

LABEL_8:
    v22 = v12;
    sub_191690(0);
    v12 = v22;
    goto LABEL_9;
  }

  v6 = sub_7653A0();
  v26 = v6;
  v7 = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v27 = v7;
  v8 = sub_B1B4(v25);
  v9 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v10 = *(*(v6 - 8) + 104);
  v10(v8, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v6);
  v11 = sub_765C30();
  sub_BEB8(v25);
  if ((v11 & 1) == 0)
  {
    v26 = v6;
    v27 = v7;
    v20 = sub_B1B4(v25);
    v10(v20, v9, v6);
    v21 = sub_765C30();
    sub_BEB8(v25);
    v12 = 1;
    if (v21)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = 1;
LABEL_9:
  sub_543FF8(v12);
}

void sub_18F7B4(double a1)
{
  v3 = sub_768380();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_7683C0();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_7683E0();
  v39 = *(v46 - 8);
  __chkstk_darwin(v46);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v37 - v9;
  v10 = sub_760180();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7653A0();
  v50 = v14;
  v51 = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v15 = sub_B1B4(&aBlock);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v14);
  LOBYTE(v14) = sub_765C30();
  sub_BEB8(&aBlock);
  if ((v14 & 1) == 0 && *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isAutoScrollEnabled) == 1)
  {
    v16 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollConfiguration;
    swift_beginAccess();
    v17 = *(v11 + 16);
    v17(v13, v1 + v16, v10);
    v18 = sub_760150();
    v19 = *(v11 + 8);
    v19(v13, v10);
    if (v18)
    {
      v20 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews);
      if (v20 >> 62)
      {
        if (sub_76A860() < 2)
        {
          return;
        }
      }

      else if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)) < 2)
      {
        return;
      }

      if ((*(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isRubberbanding) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isVoiceOverRunning) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isReducedMotionEnabled) & 1) == 0 && !*(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollTimer))
      {
        v17(v13, v1 + v16, v10);
        sub_760170();
        v22 = v21;
        v19(v13, v10);
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v51 = sub_1918F0;
        v52 = v23;
        aBlock = _NSConcreteStackBlock;
        v48 = 1107296256;
        v49 = sub_123860;
        v50 = &unk_886A58;
        v24 = _Block_copy(&aBlock);
        v25 = objc_opt_self();

        v26 = [v25 timerWithTimeInterval:0 repeats:v24 block:v22];
        _Block_release(v24);

        v27 = v26;
        sub_191690(v26);

        if (a1 <= 0.0)
        {
          v36 = [objc_opt_self() currentRunLoop];
          [v36 addTimer:v27 forMode:NSRunLoopCommonModes];
        }

        else
        {
          sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
          v28 = sub_769970();
          sub_7683D0();
          v29 = v38;
          sub_768450();
          v39 = *(v39 + 8);
          (v39)(v7, v46);
          v30 = swift_allocObject();
          *(v30 + 16) = v27;
          v51 = sub_191930;
          v52 = v30;
          aBlock = _NSConcreteStackBlock;
          v48 = 1107296256;
          v49 = sub_23F0CC;
          v50 = &unk_886AA8;
          v31 = _Block_copy(&aBlock);
          v32 = v27;

          v33 = v40;
          sub_7683A0();
          aBlock = _swiftEmptyArrayStorage;
          sub_191938(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_BD88(&qword_940350, &unk_77F850);
          sub_4C874();
          v34 = v42;
          v35 = v45;
          sub_76A5A0();
          sub_769930();
          _Block_release(v31);

          (*(v44 + 8))(v34, v35);
          (*(v41 + 8))(v33, v43);
          (v39)(v29, v46);
        }
      }
    }
  }
}

void sub_18FF34(void *a1, uint64_t a2)
{
  if ([a1 isValid])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView);

      sub_543FF8(1u);
    }

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      sub_191690(0);
    }
  }
}

void sub_18FFEC(void *a1)
{
  if ([a1 isValid])
  {
    v2 = [objc_opt_self() currentRunLoop];
    [v2 addTimer:a1 forMode:NSRunLoopCommonModes];
  }
}

void sub_190088()
{
  ObjectType = swift_getObjectType();
  v1 = sub_7653A0();
  v10 = v1;
  v11 = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v2 = sub_B1B4(v9);
  (*(*(v1 - 8) + 104))(v2, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v1);
  LOBYTE(v1) = sub_765C30();
  sub_BEB8(v9);
  if (v1)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = ObjectType;
    v11 = sub_1918D0;
    v12 = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_123860;
    v10 = &unk_886A30;
    v5 = _Block_copy(v9);
    v6 = objc_opt_self();

    v7 = [v6 timerWithTimeInterval:1 repeats:v5 block:0.5];
    _Block_release(v5);

    v8 = [objc_opt_self() currentRunLoop];
    [v8 addTimer:v7 forMode:NSRunLoopCommonModes];
  }
}

void sub_1902A8(uint64_t a1, uint64_t a2)
{
  v5 = sub_760180();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [*(Strong + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl) currentPage];

    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = *(v12 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews);
      v14 = v12;

      if ((v13 & 0xC000000000000001) == 0)
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v11 < *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
        {
          v16 = *(v13 + v11 + 4);
LABEL_7:
          v17 = v16;

          v13 = *&v17[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_backgroundView];

          v18 = *(*(*(v13 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
          if (!v18)
          {
            goto LABEL_35;
          }

          type metadata accessor for VideoView(0);
          v19 = swift_dynamicCastClass();
          if (!v19)
          {
            goto LABEL_35;
          }

          v20 = v19;
          v14 = v18;

          v21 = *(v20 + qword_9405B0);
          if (!v21)
          {
            v13 = v14;
            goto LABEL_35;
          }

          v13 = v21;
          v22 = sub_7599C0();
          if (!v22)
          {
LABEL_33:

LABEL_35:
            return;
          }

          v2 = v22;
          [v22 duration];
          Seconds = CMTimeGetSeconds(&time);
          [v2 currentTime];
          v4 = CMTimeGetSeconds(&time);
          if (vabdd_f64(v4, Seconds) > 0.5 || (swift_beginAccess(), (v23 = swift_unknownObjectWeakLoadStrong()) == 0) || (v24 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollConfiguration, v25 = v23, swift_beginAccess(), (*(v6 + 16))(v8, &v25[v24], v5), LOBYTE(v24) = sub_760150(), v25, (*(v6 + 8))(v8, v5), (v24 & 1) == 0) || (swift_beginAccess(), (v15 = swift_unknownObjectWeakLoadStrong()) == 0))
          {
LABEL_26:
            if (v4 / Seconds > 0.0)
            {
              v37 = v4 / Seconds;
            }

            else
            {
              v37 = 0.0;
            }

            swift_beginAccess();
            v38 = swift_unknownObjectWeakLoadStrong();
            if (v38)
            {
              v39 = *(v38 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControlProgress);
              v40 = v38;
              v41 = v39;

              if (v39)
              {
                *&v42 = v37;
                [v41 setCurrentProgress:v42];
              }
            }

            v14 = v2;
            goto LABEL_33;
          }

          v26 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews];
          if (!(v26 >> 62))
          {
            v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
            goto LABEL_17;
          }

LABEL_40:
          v43 = v15;
          v27 = sub_76A860();
          v15 = v43;
LABEL_17:

          if (v27 >= 2)
          {
            swift_beginAccess();
            v28 = swift_unknownObjectWeakLoadStrong();
            if (!v28 || (v29 = v28[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isVoiceOverRunning], v28, (v29 & 1) == 0))
            {
              swift_beginAccess();
              v30 = swift_unknownObjectWeakLoadStrong();
              if (!v30 || (v31 = v30[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isReducedMotionEnabled], v30, (v31 & 1) == 0))
              {
                swift_beginAccess();
                v32 = swift_unknownObjectWeakLoadStrong();
                if (!v32 || (v33 = v32[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isUserPagingInteractively], v32, (v33 & 1) == 0))
                {
                  swift_beginAccess();
                  v34 = swift_unknownObjectWeakLoadStrong();
                  if (v34)
                  {
                    v35 = v34;
                    v36 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView);

                    sub_543FF8(1u);
                  }
                }
              }
            }
          }

          goto LABEL_26;
        }

        __break(1u);
        goto LABEL_40;
      }

      v16 = sub_76A770();
      goto LABEL_7;
    }
  }
}

void sub_1907E8(uint64_t a1, uint64_t a2)
{
  v5 = sub_7599B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_947D10, &qword_7893A8);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v18[-1] - v11;
  v13 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl);
  v14 = [v13 currentPage];
  v15 = v2 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_previousIndex;
  *v15 = v14;
  *(v15 + 8) = 0;
  [v13 setCurrentPage:a2];
  [v13 setNeedsLayout];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  sub_191788(v2 + v16, v19);
  if (v20)
  {
    sub_134D8(v19, v18);
    sub_1917F8(v19);
    sub_B170(v18, v18[3]);
    if (*(a1 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_heroCarouselItem))
    {

      sub_75BBB0();

      (*(v6 + 32))(v12, v8, v5);
    }

    else
    {
      (*(v6 + 104))(v12, enum case for TitleEffect.none(_:), v5);
    }

    (*(v6 + 56))(v12, 0, 1, v5);
    sub_21C8B8(v12);
    sub_BEB8(v18);
  }

  else
  {
    sub_1917F8(v19);
  }

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

uint64_t sub_190A64(uint64_t a1, uint64_t a2, id a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl);
  v8 = [v7 currentPage];
  v9 = v3 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_previousIndex;
  *v9 = v8;
  *(v9 + 8) = 0;
  [v7 setCurrentPage:a3];
  [v7 setNeedsLayout];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  sub_191788(v3 + v10, v25);
  if (!v26)
  {
    return sub_1917F8(v25);
  }

  sub_134D8(v25, v24);
  sub_1917F8(v25);
  sub_B170(v24, v24[3]);
  v11 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers);
  v22 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers;
  v23 = a1;
  if (v11 >> 62)
  {
    goto LABEL_37;
  }

  v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
LABEL_4:

  if (v12)
  {
    v13 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_76A770();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v13 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          v12 = sub_76A860();
          goto LABEL_4;
        }

        v14 = *(v11 + 8 * v13 + 32);

        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_14;
        }
      }

      if (*(v14 + 24) == a3)
      {

        a3 = *(v14 + 32);

        goto LABEL_18;
      }

      ++v13;
    }

    while (v15 != v12);
  }

  a3 = 0;
LABEL_18:
  v17 = *(v23 + v22);
  if (v17 >> 62)
  {
    v11 = sub_76A860();
  }

  else
  {
    v11 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
  }

  if (v11)
  {
    v18 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = sub_76A770();
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v18 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_36;
        }

        v19 = *(v17 + 8 * v18 + 32);

        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      if (*(v19 + 24) == a2)
      {
        break;
      }

      ++v18;
      if (v20 == v11)
      {
        goto LABEL_31;
      }
    }

    v21 = *(v19 + 32);
  }

  else
  {
LABEL_31:

    v21 = 0;
  }

  sub_21EAC4(v3, v21);

  return sub_BEB8(v24);
}

void sub_190E48(uint64_t a1, uint64_t *a2, unsigned int (*a3)(uint64_t))
{
  v5 = *a2;
  v6 = *(v3 + *a2);
  if (v6 != a3(a1))
  {
    *(v3 + v5) = (a3)();
    v7 = sub_7653A0();
    v16 = v7;
    v8 = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
    v17 = v8;
    v9 = sub_B1B4(v15);
    v10 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v11 = *(*(v7 - 8) + 104);
    v11(v9, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v7);
    v12 = sub_765C30();
    sub_BEB8(v15);
    if ((v12 & 1) == 0)
    {
      if (*(v3 + v5) == 1)
      {
        v16 = v7;
        v17 = v8;
        v13 = sub_B1B4(v15);
        v11(v13, v10, v7);
        v14 = sub_765C30();
        sub_BEB8(v15);
        if ((v14 & 1) == 0)
        {
          sub_191690(0);
        }
      }

      else
      {
        sub_18F7B4(0.0);
      }
    }
  }
}

uint64_t sub_190FC4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_756CE0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_756CC0();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t type metadata accessor for HeroCarouselView(uint64_t a1)
{
  result = qword_947CC0;
  if (!qword_947CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1911E8(uint64_t a1)
{
  result = sub_760180();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1912E4(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = a1;
    sub_543FF8(v3);
    swift_unknownObjectRelease();
  }
}

id sub_1914B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_191528()
{
  v1 = v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselDelegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl;
  type metadata accessor for PageControl();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView;
  type metadata accessor for HeroCarouselScrollView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews) = _swiftEmptyArrayStorage;
  v4 = v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_previousIndex;
  *v4 = 0;
  *(v4 + 8) = 1;
  sub_760140();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isAutoScrollEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollTimer) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_parallaxY) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isRubberbanding) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isUserPagingInteractively) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControlProgress) = 0;
  sub_76A840();
  __break(1u);
}

void sub_191690(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollTimer);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollTimer) = a1;
  v4 = sub_7653A0();
  v7[3] = v4;
  v7[4] = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v5 = sub_B1B4(v7);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v4);
  v6 = a1;
  LOBYTE(v4) = sub_765C30();
  sub_BEB8(v7);
  if ((v4 & 1) == 0)
  {
    [v3 invalidate];
  }
}

uint64_t sub_191788(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_94AB10, &qword_7893A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1917F8(uint64_t a1)
{
  v2 = sub_BD88(&unk_94AB10, &qword_7893A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_191860()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_191898()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1918D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1918F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_191938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_191990(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = type metadata accessor for Accessory(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_BD88(&qword_93FF90, qword_77ECE0);
  __chkstk_darwin(v7 - 8);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v31 = &v28 - v10;
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_BD88(&qword_947FE8, &unk_789580);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessory;
  swift_beginAccess();
  v19 = *(v15 + 56);
  v33 = a1;
  sub_1ED18(a1, v17, &qword_93FF90, qword_77ECE0);
  sub_1ED18(v2 + v18, &v17[v19], &qword_93FF90, qword_77ECE0);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_10A2C(v17, &qword_93FF90, qword_77ECE0);
      return;
    }
  }

  else
  {
    sub_1ED18(v17, v13, &qword_93FF90, qword_77ECE0);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      v26 = v29;
      sub_19CDC0(&v17[v19], v29, type metadata accessor for Accessory);
      v27 = sub_4E32FC(v13, v26);
      sub_19CCF0(v26, type metadata accessor for Accessory);
      sub_19CCF0(v13, type metadata accessor for Accessory);
      sub_10A2C(v17, &qword_93FF90, qword_77ECE0);
      if (v27)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_19CCF0(v13, type metadata accessor for Accessory);
  }

  sub_10A2C(v17, &qword_947FE8, &unk_789580);
LABEL_7:
  v21 = v33;
  v22 = v31;
  sub_1ED18(v33, v31, &qword_93FF90, qword_77ECE0);
  swift_beginAccess();
  sub_19CD50(v22, v2 + v18);
  swift_endAccess();
  v23 = v32;
  sub_1ED18(v21, v32, &qword_93FF90, qword_77ECE0);
  if (v20(v23, 1, v4) == 1)
  {
    sub_10A2C(v23, &qword_93FF90, qword_77ECE0);
    sub_191F24(0);
  }

  else
  {
    sub_4E0248(v30);
    v25 = v24;
    sub_19CCF0(v23, type metadata accessor for Accessory);
    sub_191F24(v25);
  }
}

void sub_191DE8(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = sub_760AD0();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *&v4[v11];
  if (v12)
  {
    [v12 removeFromSuperview];
    v13 = *&v4[v11];
  }

  else
  {
    v13 = 0;
  }

  *&v4[v11] = a1;
  v14 = a1;

  if (a1)
  {
    (*(v7 + 104))(v10, enum case for DirectionalTextAlignment.leading(_:), v6);
    sub_75BA90();
    [v4 addSubview:v14];
  }
}

void sub_191F24(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView];
  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      [v5 removeTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }

    v6 = *&v1[v3];
    if (v6)
    {
      [v6 removeFromSuperview];
      v4 = *&v1[v3];
    }

    else
    {
      v4 = 0;
    }
  }

  *&v1[v3] = a1;
  v8 = a1;

  if (a1)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 addTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }

    [v1 addSubview:v8];
  }
}

char *sub_192054(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v119 = sub_760AD0();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v11 - 8);
  v116 = &v99 - v12;
  v115 = sub_75CFE0();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v121 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&qword_9439D8, &qword_799160);
  __chkstk_darwin(v14 - 8);
  v120 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v19 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v19 - 8);
  v111 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v99 - v22;
  v122 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v102 = *(v122 - 8);
  __chkstk_darwin(v122);
  v110 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v106 = &v99 - v25;
  __chkstk_darwin(v26);
  v105 = &v99 - v27;
  v28 = sub_BD88(&unk_948010, qword_789590);
  __chkstk_darwin(v28 - 8);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v99 - v32;
  v113 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v113);
  v108 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v112 = &v99 - v36;
  v37 = sub_768C60();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v99 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = &v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText];
  *v41 = 0;
  v41[1] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView] = 0;
  v42 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessory;
  v43 = type metadata accessor for Accessory(0);
  (*(*(v43 - 8) + 56))(&v5[v42], 1, 1, v43);
  v44 = &v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction];
  *v44 = 0;
  v44[1] = 0;
  v45 = &v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorInset];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v45 = UIEdgeInsetsZero.top;
  v45[1] = left;
  v45[2] = bottom;
  v45[3] = right;
  v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_allowsAccessibilityLayouts] = 1;
  sub_75BB20();
  v49 = sub_75BB00();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel] = v49;
  memset(v125, 0, sizeof(v125));
  memset(v124, 0, sizeof(v124));
  v50 = v49;
  sub_768C30();
  sub_10A2C(v124, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(v125, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  (*(v38 + 8))(v40, v37);
  v51 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorLineView] = v51;
  v109 = v5;
  v52 = &v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabelNumberOfLines];
  *v52 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v52[1] = 0;
  v53 = sub_759810();
  v54 = *(v53 - 8);
  (*(v54 + 56))(v33, 1, 1, v53);
  v55 = sub_75CFD0();
  v100 = *(v55 - 8);
  v56 = *(v100 + 56);
  v103 = v18;
  v101 = v55;
  v56(v18, 1, 1);
  v104 = v33;
  sub_1ED18(v33, v30, &unk_948010, qword_789590);
  if ((*(v54 + 48))(v30, 1, v53) == 1)
  {
    sub_10A2C(v30, &unk_948010, qword_789590);
    v57 = 0;
  }

  else
  {
    v57 = sub_7597B0();
    (*(v54 + 8))(v30, v53);
  }

  v58 = v105;
  sub_5E740C(v57, v105);

  if (qword_93DE38 != -1)
  {
    swift_once();
  }

  v59 = v122;
  v60 = sub_BE38(v122, qword_9A01C0);
  v61 = v107;
  (*(v102 + 56))(v107, 1, 1, v59);
  v62 = v106;
  sub_19CE28(v58, v106, type metadata accessor for TitleHeaderView.TextConfiguration);
  v63 = v110;
  sub_19CE28(v60, v110, type metadata accessor for TitleHeaderView.TextConfiguration);
  v64 = v111;
  sub_1ED18(v61, v111, &qword_9439E0, &unk_787AB0);
  v65 = v103;
  sub_1ED18(v103, v120, &qword_9439D8, &qword_799160);
  v66 = v114;
  v67 = v115;
  (*(v114 + 104))(v121, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v115);
  v102 = sub_BE70(0, &qword_93E540, UIColor_ptr);
  v99 = sub_769FB0();
  sub_10A2C(v65, &qword_9439D8, &qword_799160);
  sub_10A2C(v61, &qword_9439E0, &unk_787AB0);
  sub_19CCF0(v58, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10A2C(v104, &unk_948010, qword_789590);
  v68 = v113;
  v69 = *(v113 + 32);
  v70 = v108;
  sub_19CDC0(v62, v108, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_19CDC0(v63, v70 + v68[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_109C4(v64, v70 + v68[6], &qword_9439E0, &unk_787AB0);
  *(v70 + v68[7]) = 1;
  *(v70 + v69) = 0;
  *(v70 + v68[9]) = 0;
  *(v70 + v68[14]) = 0x4030000000000000;
  *(v70 + v68[12]) = 0;
  *(v70 + v68[13]) = v99;
  v71 = v120;
  (*(v66 + 32))(v70 + v68[11], v121, v67);
  v72 = v100;
  v73 = v101;
  if ((*(v100 + 48))(v71, 1, v101) == 1)
  {
    sub_10A2C(v71, &qword_9439D8, &qword_799160);
    (*(v72 + 104))(v70 + v68[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v73);
  }

  else
  {
    (*(v72 + 32))(v70 + v68[10], v71, v73);
  }

  v74 = v112;
  sub_19CDC0(v70, v112, type metadata accessor for TitleHeaderView.Style);
  v75 = v109;
  sub_19CDC0(v74, v109 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_style, type metadata accessor for TitleHeaderView.Style);
  v76 = type metadata accessor for TitleHeaderView(0);
  v123.receiver = v75;
  v123.super_class = v76;
  v77 = objc_msgSendSuper2(&v123, "initWithFrame:", a1, a2, a3, a4);
  v78 = [v77 layer];
  [v78 setAllowsGroupOpacity:0];

  [v77 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v77 setEdgesInsettingLayoutMarginsFromSafeArea:0];

  v79 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorLineView;
  v80 = *&v77[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorLineView];
  v81 = sub_769FB0();
  [v80 setBackgroundColor:v81];

  [v77 addSubview:*&v77[v79]];
  v82 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel;
  v83 = *&v77[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel];
  v84 = &v77[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_style];
  swift_beginAccess();
  [v83 setTextColor:*&v84[v68[5]]];
  v85 = *&v77[v82];
  v86 = v68[5] + *(v122 + 24);
  v87 = sub_7666D0();
  v88 = v68;
  v89 = *(v87 - 8);
  v90 = &v84[v86];
  v91 = v116;
  (*(v89 + 16))(v116, v90, v87);
  (*(v89 + 56))(v91, 0, 1, v87);
  v92 = v85;
  sub_75BA40();

  v93 = *&v77[v82];
  sub_75BAD0();

  v94 = [*&v77[v82] layer];
  if (*&v84[v88[5] + 16])
  {

    v95 = sub_769210();
  }

  else
  {
    v95 = 0;
  }

  [v94 setCompositingFilter:v95];

  swift_unknownObjectRelease();
  v96 = *&v77[v82];
  (*(v118 + 104))(v117, enum case for DirectionalTextAlignment.leading(_:), v119);
  v97 = v96;
  sub_75BA90();

  [v77 addSubview:*&v77[v82]];
  return v77;
}

void sub_192F94(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText + 8);
  if (a2)
  {
    if (v3)
    {
      v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText) == a1 && v3 == a2;
      if (v4 || (sub_76A950() & 1) != 0)
      {
        return;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel;
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel);
  if (v6)
  {
    [v6 removeFromSuperview];
    v6 = *(v2 + v5);
  }

  *(v2 + v5) = 0;
}

void sub_193028(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_760AD0();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v8 - 8);
  v10 = v45 - v9;
  v50 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v50);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (v45 - v14);
  v16 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v16);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = v45 - v21;
  v23 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText + 8);
  if (v23)
  {
    if (!a2 || (*(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText) == a1 ? (v24 = v23 == a2) : (v24 = 0), !v24 && (v25 = v20, v26 = sub_76A950(), v20 = v25, (v26 & 1) == 0)))
    {
      v49 = v20;
      sub_75BB20();

      v27 = sub_75BB00();
      [v27 setNumberOfLines:1];
      v28 = sub_769210();

      [v27 setText:v28];

      v29 = sub_75BAD0();
      v30 = ((swift_isaMask & *v3) + 448);
      v31 = *&stru_1A8.segname[(swift_isaMask & *v3) + 8];
      (v31)(v29);
      v47 = v18;
      v48 = v12;
      v45[1] = v30;
      v46 = type metadata accessor for TitleHeaderView.TextConfiguration;
      sub_19CE28(v22, v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_19CCF0(v22, type metadata accessor for TitleHeaderView.Style);
      v32 = *v15;
      v45[0] = type metadata accessor for TitleHeaderView.TextConfiguration;
      sub_19CCF0(v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      [v27 setTextColor:v32];

      v31();
      sub_19CE28(v22, v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_19CCF0(v22, type metadata accessor for TitleHeaderView.Style);
      v33 = *(v50 + 24);
      v34 = sub_7666D0();
      v35 = *(v34 - 8);
      (*(v35 + 16))(v10, v15 + v33, v34);
      v36 = v45[0];
      sub_19CCF0(v15, v45[0]);
      (*(v35 + 56))(v10, 0, 1, v34);
      sub_75BA40();
      v37 = [v27 layer];
      v38 = v47;
      v31();
      v39 = v38 + *(v49 + 20);
      v40 = v38;
      v41 = v48;
      sub_19CE28(v39, v48, v46);
      sub_19CCF0(v40, type metadata accessor for TitleHeaderView.Style);
      v42 = *(v41 + 16);

      sub_19CCF0(v41, v36);
      if (v42)
      {
        v43 = sub_769210();
      }

      else
      {
        v43 = 0;
      }

      [v37 setCompositingFilter:v43];

      swift_unknownObjectRelease();
      (*(v52 + 104))(v51, enum case for DirectionalTextAlignment.leading(_:), v53);
      sub_75BA90();
      [v3 addSubview:v27];
      v44 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel);
      *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel) = v27;
    }
  }
}

void sub_1935C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork])
  {
    if (a1)
    {
      sub_765390();
      sub_19CCA8(&qword_947FE0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      swift_retain_n();
      v5 = sub_7691C0();

      if (v5)
      {

        return;
      }
    }

    else
    {
    }

    sub_759210();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_7652E0();
    sub_7591B0();
    [v2 addSubview:v6];

    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView];
    *&v2[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView] = v6;
  }
}

void sub_193768(uint64_t a1, void *a2, uint64_t *a3, __n128 a4)
{
  v6 = v4;
  v7 = *(v4 + *a2);
  if (a1)
  {
    if (v7)
    {
      sub_765390();
      sub_19CCA8(&qword_947FE0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);

      v8 = sub_7691C0();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!v7)
  {
    return;
  }

  v9 = *a3;
  v10 = *(v6 + *a3);
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *(v6 + v9);
  }

  else
  {
    v11 = 0;
  }

  *(v6 + v9) = 0;
}

void sub_193868(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork])
  {
    if (a1)
    {
      sub_765390();
      sub_19CCA8(&qword_947FE0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      swift_retain_n();
      v5 = sub_7691C0();

      if (v5)
      {

        return;
      }
    }

    else
    {
    }

    sub_759210();
    v6 = sub_759020();
    sub_7652E0();
    sub_7591B0();
    [v2 addSubview:v6];

    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView];
    *&v2[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView] = v6;
  }
}

id sub_1939E8(uint64_t a1)
{
  v3 = sub_768C60();
  v88 = *(v3 - 8);
  __chkstk_darwin(v3);
  v87 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v77 - v6;
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v90 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v77 - v12;
  v14 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v14);
  v16 = (&v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = &v1[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_style];
  swift_beginAccess();
  sub_19CE28(v17, v16, type metadata accessor for TitleHeaderView.Style);
  LOBYTE(a1) = sub_19C74C(v16, a1);
  result = sub_19CCF0(v16, type metadata accessor for TitleHeaderView.Style);
  if ((a1 & 1) == 0)
  {
    v77 = v3;
    v78 = v9;
    v19 = v8;
    v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel];
    [v20 setTextColor:*&v17[v14[5]]];
    v21 = v14[5] + *(v19 + 24);
    v22 = sub_7666D0();
    v23 = *(v22 - 8);
    v79 = v7;
    v24 = v23;
    v81 = *(v23 + 16);
    v82 = v23 + 16;
    v81(v13, &v17[v21], v22);
    v25 = *(v24 + 56);
    v83 = v24 + 56;
    v84 = v22;
    v80 = v25;
    v25(v13, 0, 1, v22);
    v26 = v78;
    v27 = v79;
    v89 = v13;
    sub_75BA40();
    [v20 setMinimumScaleFactor:*&v17[v14[5] + *(v19 + 28)]];
    [v20 setAdjustsFontSizeToFitWidth:*&v17[v14[5] + *(v19 + 28)] > 0.0];
    [v1 setBackgroundColor:*&v17[v14[12]]];
    v85 = v19;
    v86 = v1;
    v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel];
    v29 = v19;
    v30 = v90;
    if (v28)
    {
      v31 = v27;
      v32 = *v17;
      v33 = v28;
      [v33 setTextColor:v32];
      v34 = v89;
      v35 = v84;
      v81(v89, &v17[*(v29 + 24)], v84);
      v80(v34, 0, 1, v35);
      sub_75BA40();
      v36 = [v33 layer];
      if (*&v17[v14[5] + 16])
      {

        v37 = sub_769210();
      }

      else
      {
        v37 = 0;
      }

      [v36 setCompositingFilter:v37];

      swift_unknownObjectRelease();
      v30 = v90;
      v29 = v85;
      v27 = v31;
    }

    sub_1ED18(&v17[v14[6]], v27, &qword_9439E0, &unk_787AB0);
    if ((*(v26 + 48))(v27, 1, v29) == 1)
    {
      sub_10A2C(v27, &qword_9439E0, &unk_787AB0);
      v38 = v86;
      v39 = *&v86[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel];
      if (v39)
      {
        [v39 setHidden:1];
      }

      v40 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel];
      if (v40)
      {
        [v40 setHidden:1];
      }
    }

    else
    {
      sub_19CDC0(v27, v30, type metadata accessor for TitleHeaderView.TextConfiguration);
      v41 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel;
      v38 = v86;
      v42 = *&v86[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel];
      v43 = v89;
      if (v42 || (sub_75BB20(), v50 = sub_75BB00(), sub_191DD0(v50), (v51 = *&v38[v41]) != 0) && ([v51 setNumberOfLines:1], (v52 = *&v38[v41]) != 0) && (objc_msgSend(v52, "setLineBreakMode:", 4), (v53 = *&v38[v41]) != 0) && (v93 = 0u, v94 = 0u, v91 = 0u, v92 = 0u, v54 = v53, v55 = v87, sub_768C30(), sub_10A2C(&v91, &unk_93FBD0, &qword_77DFA0), sub_10A2C(&v93, &unk_93FBD0, &qword_77DFA0), sub_769E70(), v54, v38 = v86, (*(v88 + 8))(v55, v77), (v42 = *&v38[v41]) != 0))
      {
        [v42 setTextColor:*v30];
        v44 = *&v38[v41];
        if (v44)
        {
          v45 = v84;
          v81(v43, &v30[*(v85 + 24)], v84);
          v80(v43, 0, 1, v45);
          v46 = v44;
          sub_75BA40();

          v47 = *&v38[v41];
          if (v47)
          {
            v48 = [v47 layer];
            v49 = *(v30 + 2) ? sub_769210() : 0;
            [v48 setCompositingFilter:v49];

            swift_unknownObjectRelease();
            v56 = *&v38[v41];
            if (v56)
            {
              v57 = v56;
              sub_75BAD0();

              v58 = *&v38[v41];
              if (v58)
              {
                [v58 setHidden:0];
              }
            }
          }
        }
      }

      v59 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel;
      v60 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel];
      if (v60 || (sub_75BB20(), v67 = sub_75BB00(), sub_191DDC(v67), (v68 = *&v38[v59]) != 0) && ([v68 setNumberOfLines:1], (v69 = *&v38[v59]) != 0) && (objc_msgSend(v69, "setLineBreakMode:", 4), (v70 = *&v38[v59]) != 0) && (v93 = 0u, v94 = 0u, v91 = 0u, v92 = 0u, v71 = v70, v72 = v87, sub_768C30(), sub_10A2C(&v91, &unk_93FBD0, &qword_77DFA0), sub_10A2C(&v93, &unk_93FBD0, &qword_77DFA0), sub_769E70(), v71, v38 = v86, (*(v88 + 8))(v72, v77), (v60 = *&v38[v59]) != 0))
      {
        [v60 setTextColor:*v30];
        v61 = *&v38[v59];
        if (v61)
        {
          v62 = v84;
          v81(v43, &v30[*(v85 + 24)], v84);
          v80(v43, 0, 1, v62);
          v63 = v61;
          sub_75BA40();

          v64 = *&v38[v59];
          if (v64)
          {
            v65 = [v64 layer];
            v66 = *(v30 + 2) ? sub_769210() : 0;
            [v65 setCompositingFilter:v66];

            swift_unknownObjectRelease();
            v73 = *&v38[v59];
            if (v73)
            {
              v74 = v73;
              sub_75BAD0();

              v75 = *&v38[v59];
              if (v75)
              {
                [v75 setHidden:0];
              }
            }
          }
        }
      }

      sub_19CCF0(v30, type metadata accessor for TitleHeaderView.TextConfiguration);
    }

    v76 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorLineView];
    [v76 setHidden:(v17[v14[7]] & 1) == 0];
    [v76 setBackgroundColor:*&v17[v14[13]]];
    return [v38 setNeedsLayout];
  }

  return result;
}

uint64_t sub_194478@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_style;
  swift_beginAccess();
  return sub_19CE28(v1 + v3, a1, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1944E4(uint64_t a1)
{
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_style;
  swift_beginAccess();
  sub_19CE28(v1 + v6, v5, type metadata accessor for TitleHeaderView.Style);
  swift_beginAccess();
  sub_122760(a1, v1 + v6);
  swift_endAccess();
  sub_1939E8(v5);
  sub_19CCF0(a1, type metadata accessor for TitleHeaderView.Style);
  return sub_19CCF0(v5, type metadata accessor for TitleHeaderView.Style);
}

double sub_1946C0(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for TitleHeaderView.Style(0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView);
  if (v10)
  {
    [v10 frame];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
  }

  v15 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel);
  if (v15 && (v16 = [v15 text]) != 0)
  {
    v17 = v16;
    v49 = sub_769240();
    v50 = v18;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v19 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork);
  v20 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel);

  v21 = [v20 text];
  if (v21)
  {
    v22 = v21;
    v48 = sub_769240();
    v24 = v23;
  }

  else
  {
    v48 = 0;
    v24 = 0;
  }

  v25 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork);
  v26 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel);
  if (!v26)
  {

    goto LABEL_15;
  }

  v27 = [v26 text];
  if (!v27)
  {
LABEL_15:
    v47 = 0;
    v30 = 0;
    goto LABEL_16;
  }

  v28 = v27;
  v47 = sub_769240();
  v30 = v29;

LABEL_16:
  v31 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel);
  if (v31 && (v32 = [v31 text]) != 0)
  {
    v33 = v32;
    v34 = sub_769240();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabelNumberOfLines);

  v38 = v37(v3);

  (*&stru_1A8.segname[(swift_isaMask & *v3) + 8])(v39);
  [v3 layoutMargins];
  sub_39BC6C(v49, v50, v19, v48, v24, v25, v47, v30, a1, a2, v12, v14, v40, v41, v42, v43, v34, v36, v38, v9, 1, v3);
  v45 = v44;

  sub_19CCF0(v9, type metadata accessor for TitleHeaderView.Style);
  return v45;
}

void sub_194B48()
{
  v1 = sub_7664F0();
  v425 = *(v1 - 8);
  v426 = v1;
  __chkstk_darwin(v1);
  v424 = &v400 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v423 = sub_75CFF0();
  v421 = *(v423 - 8);
  __chkstk_darwin(v423);
  v420 = &v400 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75CFE0();
  v415 = *(v4 - 8);
  v416 = v4;
  __chkstk_darwin(v4);
  v417 = &v400 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v422 = sub_75D020();
  v419 = *(v422 - 8);
  __chkstk_darwin(v422);
  v418 = &v400 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v442 = sub_75CFD0();
  v436 = *(v442 - 8);
  __chkstk_darwin(v442);
  v414 = &v400 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v441 = &v400 - v9;
  v10 = sub_75D010();
  v455 = *(v10 - 8);
  v456 = v10;
  __chkstk_darwin(v10);
  v408 = &v400 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v454 = &v400 - v13;
  __chkstk_darwin(v14);
  v453 = &v400 - v15;
  __chkstk_darwin(v16);
  v440 = &v400 - v17;
  v18 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v18 - 8);
  v430 = &v400 - v19;
  v20 = sub_756CB0();
  v434 = *(v20 - 1);
  v435 = v20;
  __chkstk_darwin(v20);
  v433 = &v400 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_7666D0();
  v403 = *(v22 - 8);
  v404 = v22;
  __chkstk_darwin(v22);
  v402 = &v400 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v458 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v429 = *(v458 - 1);
  __chkstk_darwin(v458);
  v457 = &v400 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v438 = &v400 - v26;
  __chkstk_darwin(v27);
  v409 = &v400 - v28;
  __chkstk_darwin(v29);
  v406 = &v400 - v30;
  v427 = sub_BD88(&qword_947FC0, &unk_789570);
  v412 = *(v427 - 8);
  __chkstk_darwin(v427);
  v405 = &v400 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v407 = &v400 - v33;
  __chkstk_darwin(v34);
  v448 = &v400 - v35;
  __chkstk_darwin(v36);
  v452 = &v400 - v37;
  __chkstk_darwin(v38);
  v447 = &v400 - v39;
  __chkstk_darwin(v40);
  v451 = &v400 - v41;
  __chkstk_darwin(v42);
  v439 = &v400 - v43;
  __chkstk_darwin(v44);
  v401 = &v400 - v45;
  __chkstk_darwin(v46);
  v443 = &v400 - v47;
  v48 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v48);
  v413 = &v400 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v411 = &v400 - v51;
  __chkstk_darwin(v52);
  v410 = &v400 - v53;
  __chkstk_darwin(v54);
  v428 = &v400 - v55;
  __chkstk_darwin(v56);
  v400 = &v400 - v57;
  __chkstk_darwin(v58);
  v445 = &v400 - v59;
  __chkstk_darwin(v60);
  v62 = &v400 - v61;
  v432 = sub_7674E0();
  v63 = *(v432 - 1);
  __chkstk_darwin(v432);
  v65 = &v400 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = sub_767510();
  v66 = *(v449 - 1);
  __chkstk_darwin(v449);
  v68 = &v400 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v437 = type metadata accessor for TitleHeaderView(0);
  v497.receiver = v0;
  v497.super_class = v437;
  v69 = objc_msgSendSuper2(&v497, "layoutSubviews");
  v70 = swift_isaMask & *v0;
  v431 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorLineView);
  v71 = v70 + 448;
  v72 = *(v70 + 448);
  (v72)(v69);
  v450 = v48;
  LODWORD(v48) = v62[*(v48 + 32)];
  v446 = v62;
  sub_19CCF0(v62, type metadata accessor for TitleHeaderView.Style);
  v73 = &enum case for Separator.Position.bottom(_:);
  if (!v48)
  {
    v73 = &enum case for Separator.Position.top(_:);
  }

  v74 = v0;
  (*(v63 + 104))(v65, *v73, v432);
  *(&v495 + 1) = sub_766970();
  v496 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v494);
  sub_766960();
  sub_7674F0();
  [v0 bounds];
  sub_7674C0();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  (*(v66 + 8))(v68, v449);
  [v431 setFrame:{v76, v78, v80, v82}];
  v83 = v71;
  v84 = v445;
  v85 = sub_75D650();
  v449 = v72;
  (v72)(v85);
  if (JUScreenClassGetMain() == 1)
  {
    v86 = v450[5];
    if (qword_93DE20 != -1)
    {
      swift_once();
    }

    v87 = sub_BE38(v458, qword_9A0178);
    v88 = sub_19C62C(&v84[v86], v87);
    v89 = v456;
    v90 = v457;
    v91 = v448;
    if (!v88)
    {
      if (qword_93DE28 != -1)
      {
        goto LABEL_172;
      }

      goto LABEL_22;
    }

    sub_19CCF0(v84, type metadata accessor for TitleHeaderView.Style);
  }

  else
  {
    sub_19CCF0(v84, type metadata accessor for TitleHeaderView.Style);
    v89 = v456;
    v90 = v457;
    v91 = v448;
  }

  while (1)
  {
    v92 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel];
    v84 = &protocol witness table for UILabel;
    v444 = v83;
    v445 = v74;
    if (!v92)
    {
      goto LABEL_20;
    }

    v432 = v92;
    v93 = [v432 text];
    if (!v93)
    {
      goto LABEL_19;
    }

    v94 = v93;
    v95 = sub_769240();
    v97 = v96;

    v99 = HIBYTE(v97) & 0xF;
    if ((v97 & 0x2000000000000000) == 0)
    {
      v99 = v95 & 0xFFFFFFFFFFFFLL;
    }

    if (!v99)
    {
LABEL_19:

      v89 = v456;
LABEL_20:
      v437 = *(v455 + 56);
      v113 = (v437)(v443, 1, 1, v89);
      goto LABEL_46;
    }

    v100 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork;
    if (*&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork])
    {

      if (sub_765190())
      {
        sub_BE70(0, &qword_93F900, UIFont_ptr);
        v101 = v446;
        v449();
        v102 = v406;
        sub_19CE28(v101, v406, type metadata accessor for TitleHeaderView.TextConfiguration);
        sub_19CCF0(v101, type metadata accessor for TitleHeaderView.Style);
        v104 = v402;
        v103 = v403;
        v105 = v404;
        (*(v403 + 16))(v402, v102 + *(v458 + 6), v404);
        sub_19CCF0(v102, type metadata accessor for TitleHeaderView.TextConfiguration);
        v106 = v74;
        v107 = [v74 traitCollection];
        v108 = sub_769E10();

        (*(v103 + 8))(v104, v105);
        v109 = *&v106[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView];
        if (v109)
        {
          v110 = objc_opt_self();
          v111 = v109;
          v112 = [v110 configurationWithFont:v108];
          sub_759120();
        }

        v74 = v445;
      }

      else
      {
        v115 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView;
        v116 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView];
        if (v116)
        {
          v117 = *&v74[v100];
          v118 = v446;
          v449();
          v119 = v406;
          sub_19CE28(v118, v406, type metadata accessor for TitleHeaderView.TextConfiguration);

          v120 = v116;
          sub_19CCF0(v118, type metadata accessor for TitleHeaderView.Style);
          sub_6C27B0(v117, v119, v74);

          sub_19CCF0(v119, type metadata accessor for TitleHeaderView.TextConfiguration);
          sub_759170();

          v121 = *&v74[v115];
          if (v121)
          {
            v122 = v121;
            sub_759120();
          }
        }
      }
    }

    v123 = v400;
    (v449)(v98);
    sub_19CE28(v123, v409, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_19CCF0(v123, type metadata accessor for TitleHeaderView.Style);
    v124 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView];
    if (v124)
    {
      v125 = sub_759210();
      v126 = &protocol witness table for UIView;
      v127 = v124;
    }

    else
    {
      v127 = 0;
      v125 = 0;
      v126 = 0;
      *(&v494 + 1) = 0;
      *&v495 = 0;
    }

    *&v494 = v127;
    *(&v495 + 1) = v125;
    v496 = v126;
    v128 = sub_75BB20();
    v493 = &protocol witness table for UILabel;
    v492 = v128;
    v129 = v432;
    v491[0] = v432;
    v490 = 0;
    v488 = 0u;
    v489 = 0u;
    v487 = 0;
    v485 = 0u;
    v486 = 0u;
    sub_1ED18(&v494, v484, &unk_943B10, &qword_77E080);
    v130 = v492;
    v131 = v493;
    v132 = sub_B170(v491, v492);
    v482 = v130;
    v483 = v131[1];
    v133 = sub_B1B4(v481);
    (*(*(v130 - 1) + 16))(v133, v132, v130);
    v134 = v458;
    v135 = v409;
    v136 = *(v409 + *(v458 + 8));
    v479 = &type metadata for Float;
    v480 = &protocol witness table for Float;
    v478 = v136;
    v137 = *(v458 + 9);
    v138 = sub_766CA0();
    v476 = v138;
    v477 = &protocol witness table for StaticDimension;
    v139 = sub_B1B4(v475);
    v140 = *(*(v138 - 8) + 16);
    v140(v139, v135 + v137, v138);
    v141 = *(v134 + 10);
    v473 = v138;
    v474 = &protocol witness table for StaticDimension;
    v142 = sub_B1B4(v472);
    v140(v142, v135 + v141, v138);
    sub_1ED18(&v488, &v466, &qword_9417D0, &unk_780EA0);
    v143 = *(&v467 + 1);
    if (*(&v467 + 1))
    {
      v144 = v468;
      v145 = sub_B170(&v466, *(&v467 + 1));
      *(&v470 + 1) = v143;
      v471 = *(v144 + 8);
      v146 = sub_B1B4(&v469);
      (*(*(v143 - 8) + 16))(v146, v145, v143);
      v147 = v124;
      v148 = v129;
      sub_BEB8(&v466);
    }

    else
    {
      v149 = v124;
      v150 = v129;
      sub_10A2C(&v466, &qword_9417D0, &unk_780EA0);
      v469 = 0u;
      v470 = 0u;
      v471 = 0;
    }

    sub_1ED18(&v485, v463, &qword_9417D0, &unk_780EA0);
    v151 = v464;
    v83 = v444;
    v74 = v445;
    v90 = v457;
    v91 = v448;
    if (v464)
    {
      v152 = v465;
      v153 = sub_B170(v463, v464);
      *(&v467 + 1) = v151;
      v468 = *(v152 + 8);
      v154 = sub_B1B4(&v466);
      (*(*(v151 - 8) + 16))(v154, v153, v151);
      sub_BEB8(v463);
    }

    else
    {
      sub_10A2C(v463, &qword_9417D0, &unk_780EA0);
      v466 = 0u;
      v467 = 0u;
      v468 = 0;
    }

    v155 = v458;
    v156 = v409;
    sub_134D8(v409 + *(v458 + 12), v463);
    sub_134D8(v156 + *(v155 + 13), v462);
    v461 = &protocol witness table for Double;
    v460 = &type metadata for Double;
    v459 = 0x4020000000000000;
    v157 = v401;
    sub_75D000();
    sub_10A2C(&v485, &qword_9417D0, &unk_780EA0);
    sub_10A2C(&v488, &qword_9417D0, &unk_780EA0);
    sub_19CCF0(v156, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_BEB8(v491);
    sub_10A2C(&v494, &unk_943B10, &qword_77E080);
    v89 = v456;
    v437 = *(v455 + 56);
    (v437)(v157, 0, 1, v456);
    sub_109C4(v157, v443, &qword_947FC0, &unk_789570);
    v158 = v432;
    v159 = [v432 font];
    if (!v159)
    {
      goto LABEL_185;
    }

    v160 = v159;
    v161 = [v158 text];
    v84 = &protocol witness table for UILabel;
    if (v161)
    {
      v162 = v161;
      v163 = sub_769240();
      v165 = v164;

      *&v494 = v163;
      *(&v494 + 1) = v165;

      v166 = v433;
      sub_756C90();
      sub_12EC40();
      sub_76A4C0();
      LOBYTE(v162) = v167;
      (v434)[1](v166, v435);

      if (v162)
      {

        v168 = 0;
        v74 = v445;
        v89 = v456;
      }

      else
      {
        [v160 lineHeight];
        v170 = v169;

        v171 = ceil(v170 * 1.3);
        v74 = v445;
        if ((*&v171 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
          return;
        }

        v89 = v456;
        if (v171 <= -9.22337204e18)
        {
          goto LABEL_174;
        }

        if (v171 >= 9.22337204e18)
        {
          goto LABEL_175;
        }

        v168 = v171;
      }
    }

    else
    {

      v168 = 0;
    }

    v172 = v432;
    sub_205E70(v168);

LABEL_46:
    v173 = v428;
    (v449)(v113);
    v174 = v430;
    sub_1ED18(v173 + v450[6], v430, &qword_9439E0, &unk_787AB0);
    sub_19CCF0(v173, type metadata accessor for TitleHeaderView.Style);
    if ((*(v429 + 48))(v174, 1, v458) == 1)
    {
      sub_10A2C(v174, &qword_9439E0, &unk_787AB0);
      (v437)(v439, 1, 1, v89);
      goto LABEL_88;
    }

    sub_19CDC0(v174, v438, type metadata accessor for TitleHeaderView.TextConfiguration);
    v175 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel;
    v176 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel];
    if (v176)
    {
      v177 = [v176 font];
      if (!v177)
      {
        goto LABEL_183;
      }

      v178 = v177;
      v179 = *&v74[v175];
      if (!v179 || (v180 = [v179 text]) == 0)
      {

        v187 = 0;
        v188 = *&v74[v175];
        if (!v188)
        {
          goto LABEL_57;
        }

LABEL_56:
        v189 = v188;
        sub_205E70(v187);

        goto LABEL_57;
      }

      v181 = v180;
      v182 = sub_769240();
      v184 = v183;

      *&v494 = v182;
      *(&v494 + 1) = v184;

      v185 = v433;
      sub_756C90();
      sub_12EC40();
      sub_76A4C0();
      LOBYTE(v181) = v186;
      (v434)[1](v185, v435);

      if (v181)
      {

        v187 = 0;
        v74 = v445;
        v188 = *&v445[v175];
        if (v188)
        {
          goto LABEL_56;
        }
      }

      else
      {
        [v178 lineHeight];
        v228 = v227;

        v229 = ceil(v228 * 1.3);
        v74 = v445;
        if ((*&v229 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_176;
        }

        if (v229 <= -9.22337204e18)
        {
          goto LABEL_178;
        }

        if (v229 >= 9.22337204e18)
        {
          goto LABEL_180;
        }

        v187 = v229;
        v188 = *&v445[v175];
        if (v188)
        {
          goto LABEL_56;
        }
      }
    }

LABEL_57:
    v190 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel;
    v191 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel];
    if (!v191)
    {
      goto LABEL_66;
    }

    v192 = [v191 font];
    if (!v192)
    {
      goto LABEL_184;
    }

    v193 = v192;
    v194 = *&v74[v190];
    if (!v194 || (v195 = [v194 text]) == 0)
    {

      v202 = 0;
      v203 = *&v74[v190];
      if (!v203)
      {
        goto LABEL_66;
      }

LABEL_65:
      v204 = v203;
      sub_205E70(v202);

      goto LABEL_66;
    }

    v196 = v195;
    v197 = sub_769240();
    v199 = v198;

    *&v494 = v197;
    *(&v494 + 1) = v199;

    v200 = v433;
    sub_756C90();
    sub_12EC40();
    sub_76A4C0();
    LOBYTE(v196) = v201;
    (v434)[1](v200, v435);

    if (v196)
    {

      v202 = 0;
      v74 = v445;
      v203 = *&v445[v190];
      if (v203)
      {
        goto LABEL_65;
      }
    }

    else
    {
      [v193 lineHeight];
      v231 = v230;

      v232 = ceil(v231 * 1.3);
      v74 = v445;
      if ((*&v232 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_177;
      }

      if (v232 <= -9.22337204e18)
      {
        goto LABEL_179;
      }

      if (v232 >= 9.22337204e18)
      {
        goto LABEL_181;
      }

      v202 = v232;
      v203 = *&v445[v190];
      if (v203)
      {
        goto LABEL_65;
      }
    }

LABEL_66:
    v205 = *&v74[v175];
    if (!v205)
    {
      sub_19CCF0(v438, type metadata accessor for TitleHeaderView.TextConfiguration);
      v91 = v448;
      goto LABEL_70;
    }

    v206 = v446;
    v449();
    v207 = *(v206 + v450[9]);
    v208 = v205;
    sub_19CCF0(v206, type metadata accessor for TitleHeaderView.Style);
    v91 = v448;
    if (v207 == 2)
    {
      sub_19CCF0(v438, type metadata accessor for TitleHeaderView.TextConfiguration);

LABEL_70:
      (v437)(v439, 1, 1, v456);
      v83 = v444;
      goto LABEL_88;
    }

    v496 = 0;
    v494 = 0u;
    v495 = 0u;
    v209 = sub_75BB20();
    v493 = &protocol witness table for UILabel;
    v492 = v209;
    v491[0] = v208;
    v490 = 0;
    v488 = 0u;
    v489 = 0u;
    v487 = 0;
    v485 = 0u;
    v486 = 0u;
    sub_1ED18(&v494, v484, &unk_943B10, &qword_77E080);
    v210 = v492;
    v211 = v493;
    v212 = sub_B170(v491, v492);
    v482 = v210;
    v483 = v211[1];
    v213 = sub_B1B4(v481);
    (*(*(v210 - 1) + 16))(v213, v212, v210);
    v214 = v458;
    v215 = v438;
    v216 = *&v438[*(v458 + 8)];
    v479 = &type metadata for Float;
    v480 = &protocol witness table for Float;
    v478 = v216;
    v217 = *(v458 + 9);
    v218 = sub_766CA0();
    v476 = v218;
    v477 = &protocol witness table for StaticDimension;
    v219 = sub_B1B4(v475);
    v220 = *(*(v218 - 8) + 16);
    v220(v219, &v215[v217], v218);
    v221 = *(v214 + 10);
    v473 = v218;
    v474 = &protocol witness table for StaticDimension;
    v222 = sub_B1B4(v472);
    v220(v222, &v215[v221], v218);
    sub_1ED18(&v488, &v466, &qword_9417D0, &unk_780EA0);
    v223 = *(&v467 + 1);
    if (*(&v467 + 1))
    {
      v224 = v468;
      v225 = sub_B170(&v466, *(&v467 + 1));
      *(&v470 + 1) = v223;
      v471 = *(v224 + 8);
      v226 = sub_B1B4(&v469);
      (*(*(v223 - 8) + 16))(v226, v225, v223);
      sub_BEB8(&v466);
    }

    else
    {
      sub_10A2C(&v466, &qword_9417D0, &unk_780EA0);
      v469 = 0u;
      v470 = 0u;
      v471 = 0;
    }

    sub_1ED18(&v485, v463, &qword_9417D0, &unk_780EA0);
    v233 = v464;
    v74 = v445;
    v90 = v457;
    if (v464)
    {
      v234 = v465;
      v235 = sub_B170(v463, v464);
      *(&v467 + 1) = v233;
      v468 = *(v234 + 8);
      v236 = sub_B1B4(&v466);
      (*(*(v233 - 8) + 16))(v236, v235, v233);
      sub_BEB8(v463);
    }

    else
    {
      sub_10A2C(v463, &qword_9417D0, &unk_780EA0);
      v466 = 0u;
      v467 = 0u;
      v468 = 0;
    }

    v83 = v444;
    v237 = v458;
    v238 = v438;
    sub_134D8(&v438[*(v458 + 12)], v463);
    sub_134D8(v238 + *(v237 + 13), v462);
    v461 = &protocol witness table for Double;
    v460 = &type metadata for Double;
    v459 = 0x4020000000000000;
    v239 = v439;
    sub_75D000();
    sub_10A2C(&v485, &qword_9417D0, &unk_780EA0);
    sub_10A2C(&v488, &qword_9417D0, &unk_780EA0);
    sub_10A2C(&v494, &unk_943B10, &qword_77E080);
    sub_19CCF0(v238, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_BEB8(v491);
    v437 = *(v455 + 56);
    (v437)(v239, 0, 1, v456);
LABEL_88:
    v240 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel];
    v241 = [v240 font];
    if (!v241)
    {
      goto LABEL_182;
    }

    v89 = v241;
    v242 = [v240 text];
    v438 = v240;
    if (!v242)
    {

      v248 = 0;
      goto LABEL_98;
    }

    v243 = v242;
    v244 = sub_769240();
    v74 = v245;

    *&v494 = v244;
    *(&v494 + 1) = v74;

    v246 = v433;
    sub_756C90();
    sub_12EC40();
    sub_76A4C0();
    v86 = v247;
    (v434)[1](v246, v435);

    if (v86)
    {

      v248 = 0;
      goto LABEL_97;
    }

    [v89 lineHeight];
    v250 = v249;

    v251 = ceil(v250 * 1.3);
    if ((*&v251 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_170;
    }

    if (v251 > -9.22337204e18)
    {
      break;
    }

LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    swift_once();
LABEL_22:
    v114 = sub_BE38(v458, qword_9A0190);
    sub_19C62C(&v84[v86], v114);
    sub_19CCF0(v84, type metadata accessor for TitleHeaderView.Style);
  }

  if (v251 >= 9.22337204e18)
  {
    goto LABEL_171;
  }

  v248 = v251;
LABEL_97:
  v74 = v445;
LABEL_98:
  sub_205E70(v248);
  v252 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork;
  if (*&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork])
  {

    if (sub_765190())
    {
      sub_BE70(0, &qword_93F900, UIFont_ptr);
      v253 = v446;
      v449();
      v254 = v406;
      sub_19CE28(v253 + v450[5], v406, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_19CCF0(v253, type metadata accessor for TitleHeaderView.Style);
      v255 = v402;
      v256 = v403;
      v257 = v404;
      (*(v403 + 16))(v402, v254 + *(v458 + 6), v404);
      sub_19CCF0(v254, type metadata accessor for TitleHeaderView.TextConfiguration);
      v258 = v74;
      v259 = [v74 traitCollection];
      v260 = sub_769E10();

      (*(v256 + 8))(v255, v257);
      v261 = *&v258[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView];
      if (v261)
      {
        v262 = objc_opt_self();
        v263 = v261;
        v264 = [v262 configurationWithFont:v260];
        sub_759120();
      }

      v74 = v445;
      v91 = v448;
      v90 = v457;
    }

    else
    {
      v265 = v90;
      v266 = v74;
      v267 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView;
      v268 = *(v266 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView);
      if (v268)
      {
        v269 = *(v266 + v252);
        v270 = v446;
        v449();
        v271 = v406;
        sub_19CE28(v270 + v450[5], v406, type metadata accessor for TitleHeaderView.TextConfiguration);

        v272 = v268;
        v265 = v457;
        sub_19CCF0(v270, type metadata accessor for TitleHeaderView.Style);
        sub_6C27B0(v269, v271, v266);

        sub_19CCF0(v271, type metadata accessor for TitleHeaderView.TextConfiguration);
        sub_759170();

        v273 = *(v266 + v267);
        if (v273)
        {
          v274 = v273;
          sub_759120();
        }
      }

      v74 = v266;
      v91 = v448;
      v90 = v265;
    }
  }

  v275 = v446;
  v449();
  v276 = *(v275 + v450[9]);
  v277 = sub_19CCF0(v275, type metadata accessor for TitleHeaderView.Style);
  if (v276 == 2)
  {
    v278 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel];
    v277 = v278;
  }

  else
  {
    v278 = 0;
  }

  v279 = v446;
  (v449)(v277);
  v280 = *(v279 + v450[9]);
  v281 = sub_19CCF0(v279, type metadata accessor for TitleHeaderView.Style);
  if (v280 == 2)
  {
    v282 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel];
    v281 = v282;
  }

  else
  {
    v282 = 0;
  }

  v283 = v410;
  (v449)(v281);
  sub_19CE28(v283 + v450[5], v90, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_19CCF0(v283, type metadata accessor for TitleHeaderView.Style);
  v284 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView];
  if (v284)
  {
    v285 = sub_759210();
    v286 = &protocol witness table for UIView;
    v287 = v284;
  }

  else
  {
    v287 = 0;
    v285 = 0;
    v286 = 0;
    *(&v494 + 1) = 0;
    *&v495 = 0;
  }

  v288 = v438;
  *&v494 = v287;
  *(&v495 + 1) = v285;
  v496 = v286;
  v289 = sub_75BB20();
  v493 = &protocol witness table for UILabel;
  v492 = v289;
  v491[0] = v288;
  if (v278)
  {
    v290 = &protocol witness table for UILabel;
    v291 = v278;
    v292 = v289;
  }

  else
  {
    v291 = 0;
    v292 = 0;
    v290 = 0;
    *&v489 = 0;
    *(&v488 + 1) = 0;
  }

  *&v488 = v291;
  *(&v489 + 1) = v292;
  v490 = v290;
  v434 = v282;
  v435 = v278;
  if (v282)
  {
    v293 = &protocol witness table for UILabel;
    v294 = v282;
  }

  else
  {
    v294 = 0;
    v289 = 0;
    v293 = 0;
    *&v486 = 0;
    *(&v485 + 1) = 0;
  }

  *&v485 = v294;
  *(&v486 + 1) = v289;
  v487 = v293;
  sub_1ED18(&v494, v484, &unk_943B10, &qword_77E080);
  v295 = v492;
  v296 = v493;
  v297 = sub_B170(v491, v492);
  v482 = v295;
  v483 = v296[1];
  v298 = sub_B1B4(v481);
  (*(*(v295 - 1) + 16))(v298, v297, v295);
  v300 = v457;
  v299 = v458;
  v301 = *(v457 + *(v458 + 8));
  v479 = &type metadata for Float;
  v480 = &protocol witness table for Float;
  v478 = v301;
  v302 = *(v458 + 9);
  v303 = sub_766CA0();
  v476 = v303;
  v477 = &protocol witness table for StaticDimension;
  v304 = sub_B1B4(v475);
  v305 = *(*(v303 - 8) + 16);
  v305(v304, v300 + v302, v303);
  v306 = *(v299 + 10);
  v473 = v303;
  v474 = &protocol witness table for StaticDimension;
  v307 = sub_B1B4(v472);
  v305(v307, v300 + v306, v303);
  sub_1ED18(&v488, &v466, &qword_9417D0, &unk_780EA0);
  v308 = *(&v467 + 1);
  if (*(&v467 + 1))
  {
    v309 = v468;
    v310 = sub_B170(&v466, *(&v467 + 1));
    *(&v470 + 1) = v308;
    v471 = *(v309 + 8);
    v311 = sub_B1B4(&v469);
    (*(*(v308 - 8) + 16))(v311, v310, v308);
    v312 = v434;
    v313 = v284;
    v314 = v438;
    v315 = v435;
    sub_BEB8(&v466);
  }

  else
  {
    v316 = v434;
    v317 = v284;
    v318 = v438;
    v319 = v435;
    sub_10A2C(&v466, &qword_9417D0, &unk_780EA0);
    v469 = 0u;
    v470 = 0u;
    v471 = 0;
  }

  v320 = v447;
  sub_1ED18(&v485, v463, &qword_9417D0, &unk_780EA0);
  v321 = v464;
  if (v464)
  {
    v322 = v465;
    v323 = sub_B170(v463, v464);
    *(&v467 + 1) = v321;
    v468 = *(v322 + 8);
    v324 = sub_B1B4(&v466);
    (*(*(v321 - 8) + 16))(v324, v323, v321);
    sub_BEB8(v463);
  }

  else
  {
    sub_10A2C(v463, &qword_9417D0, &unk_780EA0);
    v466 = 0u;
    v467 = 0u;
    v468 = 0;
  }

  v326 = v457;
  v325 = v458;
  sub_134D8(v457 + *(v458 + 12), v463);
  sub_134D8(v326 + *(v325 + 13), v462);
  v461 = &protocol witness table for Double;
  v460 = &type metadata for Double;
  v459 = 0x4020000000000000;
  sub_75D000();
  sub_19CCF0(v326, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10A2C(&v485, &qword_9417D0, &unk_780EA0);
  sub_10A2C(&v488, &qword_9417D0, &unk_780EA0);
  sub_BEB8(v491);
  v327 = sub_10A2C(&v494, &unk_943B10, &qword_77E080);
  v328 = v411;
  (v449)(v327);
  v329 = *(v328 + v450[9]);
  sub_19CCF0(v328, type metadata accessor for TitleHeaderView.Style);
  sub_BD88(&qword_947FC8, qword_7A9250);
  v457 = *(v412 + 72);
  v330 = (*(v412 + 80) + 32) & ~*(v412 + 80);
  if (v329)
  {
    v331 = v456;
    if (v329 == 1)
    {
      v332 = v91;
      v333 = v457;
      v438 = swift_allocObject();
      v334 = &v438[v330];
      sub_1ED18(v443, &v438[v330], &qword_947FC0, &unk_789570);
      v335 = v455 + 16;
      (*(v455 + 16))(&v334[v333], v440, v331);
      (v437)(&v334[v333], 0, 1, v331);
      sub_1ED18(v439, &v334[2 * v333], &qword_947FC0, &unk_789570);
      v336 = (v335 + 32);
      v337 = (v335 + 16);
      v458 = _swiftEmptyArrayStorage;
      v338 = 3;
      v453 = v334;
      v339 = v334;
      do
      {
        v340 = v452;
        sub_1ED18(v339, v452, &qword_947FC0, &unk_789570);
        sub_109C4(v340, v332, &qword_947FC0, &unk_789570);
        if ((*v336)(v332, 1, v331) == 1)
        {
          sub_10A2C(v332, &qword_947FC0, &unk_789570);
        }

        else
        {
          v341 = *v337;
          (*v337)(v454, v332, v331);
          v342 = v458;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v342 = sub_7B968(0, *(v342 + 2) + 1, 1, v342);
          }

          v344 = *(v342 + 2);
          v343 = *(v342 + 3);
          if (v344 >= v343 >> 1)
          {
            v342 = sub_7B968((v343 > 1), v344 + 1, 1, v342);
          }

          *(v342 + 2) = v344 + 1;
          v345 = (*(v455 + 80) + 32) & ~*(v455 + 80);
          v458 = v342;
          v331 = v456;
          v341(v342 + v345 + *(v455 + 72) * v344, v454, v456);
          v332 = v448;
        }

        v339 += v457;
        --v338;
      }

      while (v338);
      goto LABEL_149;
    }

    v363 = v457;
    v438 = swift_allocObject();
    v364 = &v438[v330];
    sub_1ED18(v443, &v438[v330], &qword_947FC0, &unk_789570);
    v365 = v455;
    (*(v455 + 16))(v364 + v363, v440, v331);
    (v437)(v364 + v363, 0, 1, v331);
    v366 = v407;
    sub_1ED18(v364, v407, &qword_947FC0, &unk_789570);
    v367 = v405;
    sub_109C4(v366, v405, &qword_947FC0, &unk_789570);
    v368 = *(v365 + 48);
    v369 = (v365 + 32);
    v370 = v368(v367, 1, v331);
    v371 = v331;
    v454 = (v365 + 32);
    if (v370 == 1)
    {
      sub_10A2C(v367, &qword_947FC0, &unk_789570);
      v458 = _swiftEmptyArrayStorage;
    }

    else
    {
      v372 = *v369;
      (*v369)(v408, v367, v371);
      v373 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v373 = sub_7B968(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v375 = *(v373 + 2);
      v374 = *(v373 + 3);
      v458 = v373;
      if (v375 >= v374 >> 1)
      {
        v458 = sub_7B968((v374 > 1), v375 + 1, 1, v458);
      }

      v376 = v458;
      *(v458 + 2) = v375 + 1;
      v377 = v376 + ((*(v455 + 80) + 32) & ~*(v455 + 80)) + *(v455 + 72) * v375;
      v371 = v456;
      v372(v377, v408, v456);
      v367 = v405;
    }

    v378 = v407;
    sub_1ED18(v364 + v457, v407, &qword_947FC0, &unk_789570);
    sub_109C4(v378, v367, &qword_947FC0, &unk_789570);
    if (v368(v367, 1, v371) == 1)
    {
      sub_10A2C(v367, &qword_947FC0, &unk_789570);
      v360 = v441;
      v361 = v442;
      v362 = v436;
    }

    else
    {
      v379 = *v454;
      (*v454)(v408, v367, v371);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v361 = v442;
      v362 = v436;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v458 = sub_7B968(0, *(v458 + 2) + 1, 1, v458);
      }

      v360 = v441;
      v382 = *(v458 + 2);
      v381 = *(v458 + 3);
      if (v382 >= v381 >> 1)
      {
        v458 = sub_7B968((v381 > 1), v382 + 1, 1, v458);
      }

      v383 = v458;
      *(v458 + 2) = v382 + 1;
      v379(v383 + ((*(v455 + 80) + 32) & ~*(v455 + 80)) + *(v455 + 72) * v382, v408, v456);
    }

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v346 = v457;
    v347 = 2 * v457;
    v438 = swift_allocObject();
    v348 = &v438[v330];
    sub_1ED18(v443, &v438[v330], &qword_947FC0, &unk_789570);
    sub_1ED18(v439, &v348[v346], &qword_947FC0, &unk_789570);
    v349 = v456;
    v350 = v455 + 16;
    (*(v455 + 16))(&v348[v347], v440, v456);
    (v437)(&v348[v347], 0, 1, v349);
    v351 = (v350 + 32);
    v352 = (v350 + 16);
    v458 = _swiftEmptyArrayStorage;
    v353 = 3;
    v454 = v348;
    do
    {
      v354 = v451;
      sub_1ED18(v348, v451, &qword_947FC0, &unk_789570);
      sub_109C4(v354, v320, &qword_947FC0, &unk_789570);
      if ((*v351)(v320, 1, v349) == 1)
      {
        sub_10A2C(v320, &qword_947FC0, &unk_789570);
      }

      else
      {
        v355 = *v352;
        (*v352)(v453, v320, v349);
        v356 = v458;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v356 = sub_7B968(0, *(v356 + 2) + 1, 1, v356);
        }

        v358 = *(v356 + 2);
        v357 = *(v356 + 3);
        if (v358 >= v357 >> 1)
        {
          v356 = sub_7B968((v357 > 1), v358 + 1, 1, v356);
        }

        *(v356 + 2) = v358 + 1;
        v349 = v456;
        v359 = (*(v455 + 80) + 32) & ~*(v455 + 80);
        v458 = v356;
        v355(v356 + v359 + *(v455 + 72) * v358, v453, v456);
        v320 = v447;
      }

      v348 += v457;
      --v353;
    }

    while (v353);
LABEL_149:
    swift_setDeallocating();
    swift_arrayDestroy();
    v360 = v441;
    v361 = v442;
    v362 = v436;
  }

  v384 = swift_deallocClassInstance();
  v385 = v445;
  v386 = v446;
  (v449)(v384);
  v387 = *(v362 + 16);
  v387(v360, v386 + v450[10], v361);
  sub_19CCF0(v386, type metadata accessor for TitleHeaderView.Style);
  v388 = *&v385[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView];
  if (v388)
  {
    v389 = sub_BE70(0, &qword_93E550, UIView_ptr);
    v390 = &protocol witness table for UIView;
  }

  else
  {
    v389 = 0;
    v390 = 0;
    *(&v494 + 1) = 0;
    *&v495 = 0;
  }

  *&v494 = v388;
  *(&v495 + 1) = v389;
  v496 = v390;
  v391 = v446;
  v392 = v449;
  v449();
  v393 = v450;
  v394 = *(v391 + v450[14]);
  v395 = v388;
  sub_19CCF0(v391, type metadata accessor for TitleHeaderView.Style);
  v492 = &type metadata for CGFloat;
  v493 = &protocol witness table for CGFloat;
  v491[0] = v394;
  v396 = (v387)(v414, v441, v442);
  v397 = v413;
  (v392)(v396);
  (*(v415 + 16))(v417, v397 + v393[11], v416);
  sub_19CCF0(v397, type metadata accessor for TitleHeaderView.Style);
  (*(v421 + 104))(v420, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v423);
  v398 = v418;
  sub_75CFA0();
  v399 = v424;
  sub_75CFB0();

  (*(v425 + 8))(v399, v426);
  (*(v419 + 8))(v398, v422);
  (*(v436 + 8))(v441, v442);
  (*(v455 + 8))(v440, v456);
  sub_10A2C(v439, &qword_947FC0, &unk_789570);
  sub_10A2C(v443, &qword_947FC0, &unk_789570);
}