void sub_100549624()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_preferredImageSizes) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsCalculator) = 0;
  v3 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsUpdateBlock);
  *v3 = 0;
  v3[1] = 0;
  sub_100754644();
  __break(1u);
}

id sub_10054971C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100549890(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    v7 = v2;
    v8 = sub_100753FC4();

    if (v8)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v4 = v9;
        [v9 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v2 addSubview:v10];
  }

  sub_10062FDFC();

  return [v2 setNeedsLayout];
}

uint64_t sub_100549890(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

char *sub_1005498DC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData] = 1;
  type metadata accessor for UpsellBreakoutView(0);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell(0);
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v11 contentView];
  [v13 addSubview:*&v11[OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView]];

  return v11;
}

uint64_t sub_100549B40()
{
  v1 = *(*(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView) + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

double (*sub_100549BBC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(*(v3 + v4) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_100549C64;
}

double sub_100549C64(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + *(a1 + 16));
  v5 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  v6 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  if (a2)
  {
    if (v3)
    {
      sub_10054A76C(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
      v7 = v3;
      v8 = [v7 superview];
      if (v8)
      {
        v9 = v8;
        sub_100009D34();
        v10 = v6;
        v11 = sub_100753FC4();

        if (v11)
        {
          [v7 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v17 = *&v6[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v6[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v3;
    v18 = v3;
    sub_10057A514(v17);

    if (*(*(v4 + v5) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents))
    {
      type metadata accessor for VideoView(0);
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        *(v19 + qword_10093CB38 + 8) = &off_1008690D8;
        swift_unknownObjectWeakAssign();
      }
    }

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_10054A76C(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
      v12 = v3;
      v13 = [v12 superview];
      if (v13)
      {
        v14 = v13;
        sub_100009D34();
        v15 = v6;
        v16 = sub_100753FC4();

        if (v16)
        {
          [v12 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v22 = *&v6[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v6[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v3;
    v23 = v3;
    sub_10057A514(v22);

    if (*(*(v4 + v5) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents))
    {
      type metadata accessor for VideoView(0);
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        *(v24 + qword_10093CB38 + 8) = &off_1008690D8;

        swift_unknownObjectWeakAssign();
      }
    }
  }

  return result;
}

void sub_10054A0BC(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell(0);
  objc_msgSendSuper2(&v16, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView];
    v6 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_parallaxY);
    v7 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer;
    v8 = *(*(v5 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
    v9 = *&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY];
    *&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = v6;
    v10 = a1;
    if (v6 != v9)
    {
      [v8 setNeedsLayout];
    }

    v11 = *(*(*(v5 + v7) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    if (v11)
    {
      type metadata accessor for VideoView(0);
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding);
        v15 = v11;

        *(v13 + qword_10093CB60) = v14;
        v10 = v15;
      }
    }
  }
}

id sub_10054A278()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UpsellBreakoutCollectionViewCell(uint64_t a1)
{
  result = qword_10093DBE0;
  if (!qword_10093DBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10054A350(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_10054A428(uint64_t **a1))()
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
  v2[4] = sub_100549BBC(v2);
  return sub_1000181A8;
}

uint64_t sub_10054A498(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10054A4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10054A558(uint64_t *a1, uint64_t a2))()
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
  *(v4 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_10054A5F4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView) + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  sub_100009D34();
  v6 = v5;
  v7 = sub_100753FC4();

  return v7 & 1;
}

uint64_t sub_10054A76C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10054A80C()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v4 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v4, v0);
  qword_10093DC18 = sub_100752E44();
  unk_10093DC20 = &protocol witness table for OSLogger;
  sub_10000D134(qword_10093DC00);
  return sub_100752E34();
}

uint64_t sub_10054A950(uint64_t a1, uint64_t a2)
{
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v5 = sub_100752DE4();
  sub_100016C60(0, &qword_100939F50, ACAccountStore_ptr);
  sub_100752764();
  sub_100752D34();
  v6 = v11[0];
  sub_10054AAF0(v11[0]);
  sub_10054B970(v2, v11);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  sub_10054B9F8(v11, (v7 + 4));
  v7[5] = a2;
  v8 = sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  swift_retain_n();

  v9 = sub_100753774();
  v11[3] = v8;
  v11[4] = &protocol witness table for OS_dispatch_queue;
  v11[0] = v9;
  sub_100752D64();

  sub_10000C620(v11);
  return v5;
}

id sub_10054AAF0(void *a1)
{
  v2 = sub_1007521E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100752224();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_10093B7C0, qword_1007C7388);
  v10 = sub_100752DE4();
  v11 = [a1 ams_activeiTunesAccount];
  v12 = [v11 ams_DSID];
  if (v12)
  {

    LOBYTE(aBlock[0]) = 1;
    sub_100752DB4();

    return v10;
  }

  v26 = v7;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = [Strong frontmostViewController];

  result = [v14 view];
  if (result)
  {
    v16 = result;
    v17 = [result window];

    if (v17)
    {

      sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
      v25 = sub_100753774();
      v18 = swift_allocObject();
      v18[2] = v11;
      v18[3] = v14;
      v18[4] = v10;
      aBlock[4] = sub_10054BADC;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_10087A820;
      v19 = v14;
      v20 = _Block_copy(aBlock);
      v24 = v11;
      v21 = v19;

      sub_100752204();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10054BB00(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000C518(&unk_10092F750, &qword_1007A6920);
      sub_1000A8054();
      sub_1007543A4();
      v22 = v25;
      sub_100753784();
      _Block_release(v20);

      (*(v3 + 8))(v5, v2);
      (*(v26 + 8))(v9, v6);
    }

    else
    {
      if (qword_100921810 != -1)
      {
        swift_once();
      }

      sub_10000C888(qword_10093DC00, qword_10093DC18);
      sub_10000C518(&qword_100923930, &qword_1007A6B60);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      sub_1007523A4();
      sub_100752CE4();

      sub_10054BA40();
      swift_allocError();
      sub_100752DA4();
    }

    return v10;
  }

  __break(1u);
  return result;
}

void sub_10054B01C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v38 = a1;
  v33 = a3;
  v39 = a2;
  v5 = sub_100752624();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100742CF4();
  v32 = *(v35 - 8);
  __chkstk_darwin(v35);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007493D4();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074A304();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100752614();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v17 - 8);
  v19 = &v30 - v18;
  v20 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v20 - 8);
  v22 = &v30 - v21;
  v23 = sub_10074F4D4();
  v26 = __chkstk_darwin(v23);
  if (*v38 == 1)
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v25 + 104))(&v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.reviewSummaryReportConcern(_:));
    v27 = sub_100741264();
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    v28 = sub_100743FE4();
    (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
    v41 = sub_10074D5B4();
    v40 = v33;

    sub_1007525F4();
    (*(v13 + 104))(v15, enum case for FlowPresentationContext.presentModalFormSheet(_:), v12);
    (*(v30 + 104))(v34, enum case for FlowAnimationBehavior.infer(_:), v31);
    (*(v32 + 104))(v36, enum case for FlowOrigin.inapp(_:), v35);
    sub_100752B44();
    sub_100742CD4();
    swift_allocObject();
    v29 = sub_100742C84();
    sub_10052AD94(v29, 1, v37);
    sub_100752D54();
  }

  else
  {
    (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5, v26);
    sub_100752DB4();
    (*(v6 + 8))(v8, v5);
  }
}

void sub_10054B5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(AMSUIAuthenticateTask) initWithAccount:a1 presentingViewController:a2 options:0];
  v5 = [v4 performAuthentication];
  v12 = sub_10054BB48;
  v13 = a3;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1001A67C4;
  v11 = &unk_10087A848;
  v6 = _Block_copy(&v8);

  [v5 addSuccessBlock:v6];
  _Block_release(v6);
  v12 = sub_10054BB74;
  v13 = a3;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100049748;
  v11 = &unk_10087A870;
  v7 = _Block_copy(&v8);

  [v5 addErrorBlock:v7];
  _Block_release(v7);
}

uint64_t sub_10054B78C(uint64_t a1)
{
  if (qword_100921810 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_10093DC00, qword_10093DC18);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_10000D134(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_100752424();
  sub_1000277BC(v4);
  sub_100752D04();

  LOBYTE(v4[0]) = 0;
  return sub_100752DB4();
}

uint64_t sub_10054B9A8()
{

  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10054BA40()
{
  result = qword_10093DC30;
  if (!qword_10093DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DC30);
  }

  return result;
}

uint64_t sub_10054BA94()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_10054BAE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10054BB00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10054BB90()
{
  result = qword_10093DC38;
  if (!qword_10093DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DC38);
  }

  return result;
}

id sub_10054BBF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_flowLayout;
  v7 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v7 setSectionInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v7 setMinimumInteritemSpacing:0.0];
  [v7 setMinimumLineSpacing:0.0];
  [v7 setScrollDirection:0];
  *(v3 + v6) = v7;
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDataSource) = 0;
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate) = 0;
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_presenter) = a1;
  sub_1007495B4();

  sub_100752754();
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_impressionsCalculator) = v12;
  v8 = *(v3 + v6);

  v9 = sub_10062DFAC(v8, a2);

  sub_10054CC00(&unk_10093DCA0, &unk_1007C973C);
  v10 = v9;
  sub_100748DF4();

  return v10;
}

id sub_10054BD94()
{
  v1 = v0;
  v2 = sub_100752AC4();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchHintsViewController();
  v52.receiver = v0;
  v52.super_class = v5;
  objc_msgSendSuper2(&v52, "viewDidLoad");
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_presenter];
  v7 = type metadata accessor for SearchHintsCollectionViewDataSource();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC22SubscribePageExtension35SearchHintsCollectionViewDataSource_presenter] = v6;
  v51.receiver = v8;
  v51.super_class = v7;

  v9 = objc_msgSendSuper2(&v51, "init");
  v10 = OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDataSource;
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDataSource];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDataSource] = v9;

  v12 = [v1 snapshotPageTraitEnvironment];
  v13 = type metadata accessor for SearchHintsCollectionViewDelegate();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_impressionsCalculator] = 0;
  *&v14[OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_presenter] = v6;

  v15 = [v12 snapshotPageTraitEnvironment];
  *&v14[OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_pageTraits] = v15;
  v50.receiver = v14;
  v50.super_class = v13;
  v16 = objc_msgSendSuper2(&v50, "init");
  swift_unknownObjectRelease();
  v17 = OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate] = v16;
  v19 = v16;

  *&v19[OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_impressionsCalculator] = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_impressionsCalculator];

  v20 = *&v1[v17];
  v21 = v20;
  sub_10062BAF4(v20);
  v22 = *&v1[v10];
  v23 = v22;
  v24 = [v1 collectionView];
  if (v24)
  {
    v25 = v24;
    [v24 setKeyboardDismissMode:1];
  }

  v26 = [v1 collectionView];
  if (v26)
  {
    v27 = v26;
    sub_10000D198();
    v28 = sub_100753E04();
    [v27 setBackgroundColor:v28];
  }

  v29 = [v1 collectionView];
  if (v29)
  {
    v30 = v29;
    [v29 setAlwaysBounceVertical:1];
  }

  v31 = [v1 collectionView];
  if (v31)
  {
    v32 = v31;
    [v31 setAllowsSelection:1];
  }

  v33 = [v1 collectionView];
  if (v33)
  {
    v34 = v33;
    [v33 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  }

  v35 = [v1 collectionView];
  if (v35)
  {
    v36 = v35;
    type metadata accessor for SearchHintCollectionViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1007539D4();
    v38 = sub_100753064();

    [v36 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v38];
  }

  result = [v1 collectionView];
  if (result)
  {
    v40 = result;
    memset(v49, 0, sizeof(v49));
    sub_100752A84();
    sub_10000C8CC(v49, &unk_100923520, &qword_1007A5A70);
    sub_100753C74();

    result = (*(v47 + 8))(v4, v48);
  }

  v41 = *&v1[v17];
  if (v41)
  {
    v42 = v41;
    v43 = [v1 snapshotPageTraitEnvironment];
    v44 = [v1 collectionView];
    v45 = [v43 snapshotPageTraitEnvironment];
    *&v42[OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_pageTraits] = v45;
    swift_unknownObjectRelease();
    if (v44)
    {
      v46 = [v44 collectionViewLayout];
      [v46 invalidateLayout];
    }

    [v44 reloadData];

    swift_unknownObjectRelease();
    return sub_100744314();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10054C2E0(void *a1, __n128 a2, double a3)
{
  v4 = v3;
  v7 = a2.n128_f64[0];
  v23.receiver = v3;
  v23.super_class = type metadata accessor for SearchHintsViewController();
  objc_msgSendSuper2(&v23, "viewWillTransitionToSize:withTransitionCoordinator:", a1, v7, a3);
  v8 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 traitCollection];
    v11 = type metadata accessor for SnapshotPageTraitEnvironment();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
    *v13 = v7;
    v13[1] = a3;
    *&v12[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v10;
    v22.receiver = v12;
    v22.super_class = v11;
    v14 = objc_msgSendSuper2(&v22, "init");
    v15 = [v4 collectionView];
    v16 = [v14 snapshotPageTraitEnvironment];
    *&v9[OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_pageTraits] = v16;
    swift_unknownObjectRelease();
    if (v15)
    {
      v17 = [v15 collectionViewLayout];
      [v17 invalidateLayout];
    }

    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    v21[4] = sub_10054CC78;
    v21[5] = v18;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_1003ED3AC;
    v21[3] = &unk_10087A970;
    v19 = _Block_copy(v21);
    v20 = v15;

    [a1 animateAlongsideTransition:v19 completion:0];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

void sub_10054C58C(uint64_t a1, __n128 a2)
{
  v11.receiver = v2;
  v11.super_class = type metadata accessor for SearchHintsViewController();
  objc_msgSendSuper2(&v11, "traitCollectionDidChange:", a1);
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 snapshotPageTraitEnvironment];
    v7 = [v2 collectionView];
    v8 = [v6 snapshotPageTraitEnvironment];
    *&v5[OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_pageTraits] = v8;
    swift_unknownObjectRelease();
    if (v7)
    {
      v9 = [v7 collectionViewLayout];
      [v9 invalidateLayout];
    }

    [v7 reloadData];

    swift_unknownObjectRelease();
    v10 = [v2 collectionView];
    [v10 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_10054C740(uint64_t a1)
{
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_impressionsCalculator])
  {
    sub_100749574();
  }

  sub_10000C518(&qword_1009366A8, qword_1007BECB8);
  sub_100752754();
  if (v3)
  {
    swift_getObjectType();
    sub_1007529A4();
    swift_unknownObjectRelease();
  }

  v2 = [v1 collectionView];
  [v2 reloadData];
}

double sub_10054C804()
{

  return result;
}

id sub_10054C874(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchHintsViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

BOOL sub_10054C948()
{
  v1 = [v0 parentViewController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_10054C990()
{
  sub_10000C518(&qword_1009366A8, qword_1007BECB8);
  sub_100752754();
  return v1;
}

double sub_10054C9EC@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_presenter);
  a1[3] = sub_100748E04();
  a1[4] = &protocol witness table for SearchHintsPresenter;
  *a1 = v3;

  return result;
}

uint64_t sub_10054CA48(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  v7 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000C8CC(v5, &unk_100923960, &qword_1007A6240);
  }

  sub_1003C0E00(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_10054CC00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchHintsViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10054CC40()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10054CC80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10054CDDC(void *a1)
{
  v3 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v3)
  {
    return;
  }

  v40 = v3;
  v4 = [v3 presentingViewController];
  if (v4)
  {
    v39 = v4;
    v5 = [a1 viewForKey:UITransitionContextFromViewKey];
    if (v5)
    {
      v6 = v5;
      v7 = [a1 containerView];
      v8 = [a1 viewForKey:UITransitionContextToViewKey];
      if (v8)
      {
        [v7 insertSubview:v8 belowSubview:v6];
      }

      [a1 initialFrameForViewController:v40];
      x = v48.origin.x;
      y = v48.origin.y;
      width = v48.size.width;
      height = v48.size.height;
      v13 = CGRectGetWidth(v48) * 0.2;
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v14 = CGRectGetHeight(v49) * 0.2;
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v51 = CGRectInset(v50, v13, v14);
      if (v1[OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionDismissAnimation_destinationRect + 32])
      {
        v15 = v51.origin.x;
        v16 = v51.origin.y;
        v17 = v51.size.width;
        v18 = v51.size.height;
        v19 = v1;
      }

      else
      {
        v19 = v1;
        [v7 convertRect:0 fromView:{*&v1[OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionDismissAnimation_destinationRect], *&v1[OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionDismissAnimation_destinationRect + 8], *&v1[OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionDismissAnimation_destinationRect + 16], *&v1[OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionDismissAnimation_destinationRect + 24]}];
        v15 = v21;
        v16 = v22;
        v17 = v23;
        v18 = v24;
      }

      v25 = [swift_unknownObjectRetain() containerView];
      v26 = [v25 traitCollection];

      LOBYTE(v25) = sub_1007537D4();
      swift_unknownObjectRelease();
      if (v25)
      {
        v27 = 0.62;
      }

      else
      {
        v27 = 0.61;
      }

      v28 = [a1 containerView];
      v29 = [v28 traitCollection];

      LOBYTE(v28) = sub_1007537D4();
      if (v28)
      {
        v30 = 0.8;
      }

      else
      {
        v30 = 0.84;
      }

      v31 = objc_opt_self();
      v32 = swift_allocObject();
      *(v32 + 2) = v19;
      *(v32 + 3) = v6;
      v32[4] = v15;
      v32[5] = v16;
      v32[6] = v17;
      v32[7] = v18;
      v45 = sub_10054D74C;
      v46 = v32;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_1000CF7B0;
      v44 = &unk_10087AA60;
      v33 = _Block_copy(&aBlock);
      v34 = v19;
      v35 = v6;

      v36 = swift_allocObject();
      *(v36 + 16) = a1;
      *(v36 + 24) = v34;
      v45 = sub_100124C08;
      v46 = v36;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_100144DD8;
      v44 = &unk_10087AAB0;
      v37 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v38 = v34;

      [v31 animateWithDuration:129 delay:v33 usingSpringWithDamping:v37 initialSpringVelocity:v27 options:0.0 animations:v30 completion:1.0];

      _Block_release(v37);
      _Block_release(v33);
      return;
    }

    v20 = v39;
  }

  else
  {
    v20 = v40;
  }
}

id sub_10054D264(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  sub_100524128(1);
  result = [a2 setFrame:{a3, a4, a5, a6}];
  if (*(a1 + OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionDismissAnimation_destinationRect + 32) == 1)
  {

    return [a2 setAlpha:0.0];
  }

  return result;
}

void sub_10054D31C(void *a1)
{
  v2 = v1;
  v4 = [a1 viewForKey:UITransitionContextFromViewKey];
  if (v4)
  {
    v5 = v4;
    [v4 setAlpha:1.0];
    v6 = [swift_unknownObjectRetain() containerView];
    v7 = [v6 traitCollection];

    LOBYTE(v6) = sub_1007537D4();
    swift_unknownObjectRelease();
    if (v6)
    {
      v8 = 0.62;
    }

    else
    {
      v8 = 0.61;
    }

    v9 = [a1 containerView];
    v10 = [v9 traitCollection];

    LOBYTE(v9) = sub_1007537D4();
    if (v9)
    {
      v11 = 0.8;
    }

    else
    {
      v11 = 0.84;
    }

    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 24) = v5;
    v24 = sub_10054D6A8;
    v25 = v13;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1000CF7B0;
    v23 = &unk_10087A9C0;
    v14 = _Block_copy(&v20);
    v15 = v2;
    v16 = v5;

    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = v15;
    v24 = sub_100124AA4;
    v25 = v17;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_100144DD8;
    v23 = &unk_10087AA10;
    v18 = _Block_copy(&v20);
    swift_unknownObjectRetain();
    v19 = v15;

    [v12 animateWithDuration:129 delay:v14 usingSpringWithDamping:v18 initialSpringVelocity:v8 options:0.0 animations:v11 completion:1.0];

    _Block_release(v18);
    _Block_release(v14);
  }
}

id sub_10054D610(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TodayTransitionDismissAnimation();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10054D668()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10054D6A8()
{
  v1 = *(v0 + 24);
  sub_100524128(1);

  return [v1 setAlpha:0.0];
}

double sub_10054D6F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10054D70C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10054D7D4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007521E4();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100752224();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v12 = sub_100753774();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_10054EF38;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_10087AB48;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  swift_errorRetain();

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10054EF44(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_1000A8054();
  sub_1007543A4();
  sub_100753784();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_10054DAB8(void *a1, void *a2, uint64_t a3, __n128 a4)
{
  v45 = a3;
  v43 = a2;
  v5 = sub_100748CA4();
  v44 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752CD4();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  v14 = sub_100752404();
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  v16 = sub_100752E44();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = a1;
    v21 = [v20 request];
    if (v21)
    {
      v22 = v21;
      sub_100752764();
      v23 = v47;
      v43 = v20;
      v24 = v45;
      sub_100752D34();
      sub_100016C60(0, &qword_100939F50, ACAccountStore_ptr);
      sub_100752D34();
      v25 = aBlock;
      v26 = v46;
      (*(v46 + 16))(v10, v13, v23);
      sub_100748C94();
      v27 = sub_100748C84();
      (*(v44 + 8))(v7, v5);
      v28 = v25;
      v29 = [v25 ams_activeiTunesAccount];
      [v22 setAccount:v29];

      [v22 setAnonymousMetrics:v27 & 1];
      v30 = v22;
      v31 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v30 bag:sub_100752C94()];

      swift_unknownObjectRelease();
      v32 = [v31 canPresent];
      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      *(v33 + 24) = v24;
      v50 = sub_10054EFCC;
      v51 = v33;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v49 = sub_1005171C8;
      *(&v49 + 1) = &unk_10087AB98;
      v34 = _Block_copy(&aBlock);
      v35 = v31;

      [v32 addFinishBlock:v34];
      _Block_release(v34);

      (*(v26 + 8))(v13, v23);
    }

    else
    {
      if (qword_100921EE0 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v16, qword_100983318);
      sub_10000C518(&qword_100923930, &qword_1007A6B60);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      sub_1007523F4();
      v54._countAndFlagsBits = 0xD000000000000049;
      v54._object = 0x80000001007837A0;
      sub_1007523E4(v54);
      *(&v49 + 1) = sub_100016C60(0, &qword_100927FB8, AMSUserNotificationAuthorizationResult_ptr);
      *&aBlock = v20;
      v41 = v20;
      sub_1007523C4();
      sub_1000277BC(&aBlock);
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      sub_1007523E4(v55);
      sub_100752414();
      sub_100752CE4();
    }
  }

  else
  {
    v36 = v43;
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v37 = sub_10000D0FC(v16, qword_100983318);
    (*(v17 + 16))(v19, v37, v16);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v52._object = 0x800000010076A790;
    v52._countAndFlagsBits = 0xD00000000000003BLL;
    sub_1007523E4(v52);
    aBlock = 0u;
    v49 = 0u;
    sub_1007523C4();
    sub_1000277BC(&aBlock);
    v53._countAndFlagsBits = 0x3A726F727265202CLL;
    v53._object = 0xE900000000000020;
    sub_1007523E4(v53);
    v38 = v36;
    if (v36)
    {
      swift_getErrorValue();
      v38 = sub_1007547C4();
      v40 = &type metadata for String;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      *&v49 = 0;
    }

    *&aBlock = v38;
    *(&aBlock + 1) = v39;
    *(&v49 + 1) = v40;
    sub_1007523C4();
    sub_1000277BC(&aBlock);
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    sub_1007523E4(v56);
    sub_100752414();
    sub_100752CE4();

    (*(v17 + 8))(v19, v16);
  }
}

double sub_10054E2C4(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v45 = a4;
  v39 = a3;
  v6 = sub_100752404();
  __chkstk_darwin(v6 - 8);
  v48 = sub_100742CF4();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1007493D4();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v47 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10074A304();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752614();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - v16;
  v18 = sub_10074F4D4();
  v19 = *(v18 - 8);
  *&v20 = __chkstk_darwin(v18).n128_u64[0];
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = v39;
    v24 = [v39 startEngagement];
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    v53 = sub_100086E24;
    v54 = v25;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v52 = sub_1000E7BD4;
    *(&v52 + 1) = &unk_10087ABE8;
    v26 = _Block_copy(&aBlock);
    v38 = v8;
    v27 = v23;

    [v24 addFinishBlock:v26];
    _Block_release(v26);

    v53 = 0;
    aBlock = 0u;
    v52 = 0u;
    (*(v19 + 104))(v22, enum case for FlowPage.viewController(_:), v18);
    v28 = sub_100741264();
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    v29 = sub_100743FE4();
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    v50 = sub_100016C60(0, &qword_100938B28, AMSUIEngagementTaskViewController_ptr);
    v49 = v27;
    v30 = v27;
    sub_1007525F4();
    (*(v40 + 104))(v44, enum case for FlowPresentationContext.infer(_:), v41);
    (*(v42 + 104))(v47, enum case for FlowAnimationBehavior.infer(_:), v43);
    (*(v46 + 104))(v38, enum case for FlowOrigin.inapp(_:), v48);
    sub_100752B44();
    sub_100742CD4();
    swift_allocObject();
    v31 = sub_100742C84();
    sub_10052AD94(v31, 1, v45);
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v33 = sub_100752E44();
    sub_10000D0FC(v33, qword_100983318);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v56._object = 0x8000000100783850;
    v56._countAndFlagsBits = 0xD000000000000047;
    sub_1007523E4(v56);
    swift_getErrorValue();
    v34 = sub_1007547C4();
    *(&v52 + 1) = &type metadata for String;
    *&aBlock = v34;
    *(&aBlock + 1) = v35;
    sub_1007523C4();
    sub_1000277BC(&aBlock);
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    sub_1007523E4(v57);
    sub_100752414();
    sub_100752CE4();
  }

  else
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v36 = sub_100752E44();
    sub_10000D0FC(v36, qword_100983318);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752CE4();
  }

  return result;
}

uint64_t sub_10054EBF8(uint64_t a1)
{
  v2 = sub_100752624();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v6 = sub_100752E44();
  sub_10000D0FC(v6, qword_100983318);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523A4();
  sub_100752CE4();

  v7 = [objc_opt_self() engagementRequestForFullSheet];
  aBlock[4] = sub_10054EED0;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E7BD4;
  aBlock[3] = &unk_10087AAF8;
  v8 = _Block_copy(aBlock);

  [v7 addFinishBlock:v8];
  _Block_release(v8);
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  (*(v3 + 104))(v5, enum case for ActionOutcome.performed(_:), v2);
  v9 = sub_100752D84();

  return v9;
}

double sub_10054EED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10054EEF0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10054EF44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10054EF8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10054EFD4()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10054F070()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074CD14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007496F4();
  sub_10054F690(&qword_1009242F0, &type metadata accessor for SmallGameCenterPlayer, &protocol conformance descriptor for GameCenterPlayer);
  sub_1007468B4();
  v8 = v43[0];
  if (!v43[0])
  {
    return 0.0;
  }

  v34 = v5;
  if (qword_100920048 != -1)
  {
    swift_once();
  }

  v37 = v4;
  v38 = v3;
  v39 = v1;
  v40 = v0;
  v36 = sub_100750F34();
  swift_allocObject();
  v35 = sub_100750F14();

  sub_100745CC4();
  v9 = sub_100038D38();
  v41 = v8;
  if (qword_100921230 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  sub_10000D0FC(v10, qword_1009813C8);
  swift_getKeyPath();
  sub_100746914();

  v11 = v43[0];
  sub_100753C14();

  v12 = sub_10074F3F4();
  v44 = v12;
  v33 = sub_10054F690(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v45 = v33;
  v13 = sub_10000D134(v43);
  v30[1] = v9;
  v14 = *(v12 - 8);
  v15 = *(v14 + 104);
  v32 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v30[2] = v14 + 104;
  v31 = v15;
  v15(v13);
  sub_10074FC74();
  sub_10000C620(v43);
  sub_10074CD04();
  sub_10074CCE4();
  v16 = *(v34 + 8);
  v17 = v37;
  v16(v7, v37);
  v34 = sub_100745CB4();
  v30[0] = v18;

  if (qword_100921238 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v10, qword_1009813E0);
  swift_getKeyPath();
  sub_100746914();

  v19 = v43[0];
  sub_100753C14();

  v44 = v12;
  v45 = v33;
  v20 = sub_10000D134(v43);
  v31(v20, v32, v12);
  sub_10074FC74();
  sub_10000C620(v43);
  sub_10074CD04();
  sub_10074CCE4();
  v16(v7, v17);
  sub_100053588(&xmmword_10097D0B0, v43);
  v47 = v36;
  v48 = &protocol witness table for LayoutViewPlaceholder;
  v46 = v35;
  sub_10000C824(v52, &v50);
  sub_10000C824(v51, &v49);
  swift_getKeyPath();
  v21 = v38;
  sub_100746914();

  sub_10074F674();
  v23 = v22;
  v25 = v24;
  (*(v39 + 8))(v21, v40);
  swift_getKeyPath();
  sub_100746914();

  v26 = v42;
  swift_getObjectType();
  sub_1001C51C4(v26, v43, v23, v25);
  v28 = v27;

  swift_unknownObjectRelease();
  sub_1000535E4(v43);
  sub_10000C620(v51);
  sub_10000C620(v52);
  return v28;
}

uint64_t sub_10054F690(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10054F6E0(uint64_t a1, uint64_t (*a2)(char *, void, uint64_t, __n128), uint64_t a3, char *a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v255 = a3;
  v254 = a2;
  v18 = sub_10000C518(&qword_100923450, &qword_1007A6568);
  __chkstk_darwin(v18 - 8);
  v226 = &v219 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v219 - v21;
  v23 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v23 - 8);
  v242 = &v219 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v243 = &v219 - v26;
  v27 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v27 - 8);
  v241 = &v219 - v28;
  v29 = sub_100744864();
  __chkstk_darwin(v29 - 8);
  v225 = &v219 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v230 = &v219 - v32;
  __chkstk_darwin(v33);
  v236 = &v219 - v34;
  __chkstk_darwin(v35);
  v235 = &v219 - v36;
  v240 = sub_100744894();
  v239 = *(v240 - 8);
  __chkstk_darwin(v240);
  v229 = &v219 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v234 = &v219 - v39;
  v245 = sub_100747D94();
  v244 = *(v245 - 8);
  __chkstk_darwin(v245);
  v231 = &v219 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v256 = &v219 - v42;
  v224 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v44 = &v219 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10000C518(&unk_100934D80, &qword_1007BC850);
  __chkstk_darwin(v45 - 8);
  v227 = &v219 - v46;
  v238 = sub_1007504F4();
  v237 = *(v238 - 8);
  __chkstk_darwin(v238);
  v253 = &v219 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = sub_100746B04();
  v250 = *(v251 - 8);
  __chkstk_darwin(v251);
  v249 = &v219 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_10074A7F4();
  v265 = *(v269 - 8);
  __chkstk_darwin(v269);
  v252 = &v219 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v268 = &v219 - v51;
  __chkstk_darwin(v52);
  v260 = &v219 - v53;
  v270 = sub_100746A94();
  v54 = *(v270 - 8);
  __chkstk_darwin(v270);
  v221 = &v219 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v228 = &v219 - v57;
  __chkstk_darwin(v58);
  v257 = &v219 - v59;
  __chkstk_darwin(v60);
  v233 = &v219 - v61;
  __chkstk_darwin(v62);
  v263 = &v219 - v63;
  v64 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v64 - 8);
  v222 = &v219 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v259 = &v219 - v67;
  __chkstk_darwin(v68);
  v267 = &v219 - v69;
  v70 = &unk_1007A5C50;
  v71 = sub_10000C518(&unk_100923200, &unk_1007A5C50);
  __chkstk_darwin(v71 - 8);
  v73 = &v219 - v72;
  [v9 setLayoutMargins:{a6, a7, a8, a9}];
  v74 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView];
  *&v74[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = a5;
  [v74 setNeedsLayout];
  v75 = sub_1007469A4();
  (*(*(v75 - 8) + 56))(v73, 1, 1, v75);
  v248 = v74;
  sub_100028DB0(a1, v73, a4);
  sub_10000C8CC(v73, &unk_100923200, &unk_1007A5C50);
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v76 = sub_100753E04();
  [v10 setBackgroundColor:v76];

  v271 = a1;
  v77 = sub_100745DD4();
  if (v77 >> 62)
  {
    v76 = v77;
    v78 = sub_100754664();
    v77 = v76;
  }

  else
  {
    v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = v260;
  if (v78)
  {
    if ((v77 & 0xC000000000000001) != 0)
    {
      v76 = v77;
      v262 = sub_100754574();
    }

    else
    {
      if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_78;
      }

      v76 = v77;
      v262 = *(v77 + 32);
    }
  }

  else
  {

    v262 = 0;
  }

  v247 = v10;
  v73 = *(v10 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView);
  v261 = sub_100745E04();
  v10 = sub_100745DE4();
  v80 = sub_100745E54();
  if (v80 >> 62)
  {
    v76 = v80;
    v81 = sub_100754664();
    v80 = v76;
  }

  else
  {
    v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v258 = a4;
  v266 = v54;
  if (v81)
  {
    if ((v80 & 0xC000000000000001) != 0)
    {
      v264 = sub_100754574();
    }

    else
    {
      if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_80;
      }

      v264 = *(v80 + 32);
    }
  }

  else
  {

    v264 = 0;
  }

  sub_100553194(v267);
  v70 = sub_100745E04();
  v54 = sub_100745DE4();
  v82 = sub_100745DD4();
  if (v82 >> 62)
  {
    v83 = v82;
    v84 = sub_100754664();
    v82 = v83;
    if (v84)
    {
LABEL_19:
      if ((v82 & 0xC000000000000001) == 0)
      {
        if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_82;
        }

        v76 = *(v82 + 32);

        goto LABEL_22;
      }

LABEL_78:
      v76 = sub_100754574();
LABEL_22:

      goto LABEL_27;
    }
  }

  else if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  v76 = 0;
LABEL_27:
  v82 = sub_100745E54();
  if (!(v82 >> 62))
  {
    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

LABEL_34:

    v85 = 0;
    goto LABEL_35;
  }

  v86 = v82;
  v87 = sub_100754664();
  v82 = v86;
  if (!v87)
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v82 & 0xC000000000000001) != 0)
  {
LABEL_80:
    v85 = sub_100754574();
    goto LABEL_32;
  }

  if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v85 = *(v82 + 32);

LABEL_32:

LABEL_35:
  v232 = v22;
  sub_100745E24();
  v88 = sub_10074A7E4();
  v246 = v44;
  if ((v88 & 1) == 0)
  {

    v260 = *(v265 + 8);
    (v260)(v79, v269);
    v95 = v266;
    v76 = v263;
    (*(v266 + 104))(v263, enum case for LockupMediaLayout.DisplayType.none(_:), v270);
    v70 = 0x1008F2000;
    v44 = v262;
    goto LABEL_66;
  }

  v90 = v257;
  if (v54 | v70)
  {
    v96 = v233;
    sub_100750504();

    v260 = *(v265 + 8);
    (v260)(v79, v269);
    v95 = v266;
    v97 = v270;
    (*(v266 + 104))(v96, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v270);
    v76 = v263;
    (*(v95 + 32))(v263, v96, v97);
    v70 = 0x1008F2000;
    v44 = v262;
    v54 = v253;
    goto LABEL_67;
  }

  v91 = sub_100631A30(v76, v85, 0, 1, v89);
  v54 = v91;
  v70 = v91 >> 62;
  if (v91 >> 62)
  {
    goto LABEL_130;
  }

  for (i = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {
    v255 = i;
    if (v76)
    {
      v94 = sub_100743844();
    }

    else
    {
      v94 = 0;
    }

    v98 = sub_100631D8C(v94, v92);

    v220 = v10;
    LODWORD(v219) = v98;
    if (v76)
    {
      v99 = sub_100743844();
    }

    else
    {
      v99 = 0;
    }

    v100 = v265;
    v101 = v227;
    v102 = v269;
    (*(v265 + 16))(v227, v260, v269);
    (*(v100 + 56))(v101, 0, 1, v102);
    HIDWORD(v219) = sub_1006322B4(v99, v101);

    sub_10000C8CC(v101, &unk_100934D80, &qword_1007BC850);
    if (v70)
    {
      v103 = sub_100754664();
    }

    else
    {
      v103 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v220;
    v104 = v228;
    if (!v103)
    {

LABEL_57:
      v108 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
      v109 = v266;
      v110 = v270;
      v254 = *(v266 + 104);
      (v254)(v104, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v270);
      v111 = sub_100746A84();
      v112 = *(v109 + 8);
      v112(v104, v110);
      if (((v255 >= v111) & BYTE4(v219)) != 0 || (v108 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v113 = v270, (v254)(v104, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v270), v114 = sub_100746A84(), v112(v104, v113), ((v255 >= v114) & v219) != 0) || (v108 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v115 = v270, (v254)(v104, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v270), v116 = sub_100746A84(), v112(v104, v115), v255 >= v116))
      {

        v122 = v260;
        v260 = *(v265 + 8);
        (v260)(v122, v269);
      }

      else
      {
        v108 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
        v117 = v270;
        (v254)(v104, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v270);
        v118 = sub_100746A84();

        v112(v104, v117);
        v119 = v260;
        v260 = *(v265 + 8);
        (v260)(v119, v269);
        if (v255 != v118)
        {
          v120 = enum case for LockupMediaLayout.DisplayType.none(_:);
          v107 = v233;
          v121 = v233;
LABEL_64:
          (v254)(v121, v120, v270);
          v95 = v266;
          v70 = &stru_1008F2000;
          v76 = v263;
          v44 = v262;
          v10 = v220;
          goto LABEL_65;
        }
      }

      v107 = v233;
      v121 = v233;
      v120 = v108;
      goto LABEL_64;
    }

    if ((v54 & 0xC000000000000001) != 0)
    {
      sub_100754574();
    }

    else
    {
      if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_152;
      }
    }

    v105 = sub_10074F194();

    if ((v105 & 1) == 0)
    {
      goto LABEL_57;
    }

    v106 = v260;
    v260 = *(v265 + 8);
    (v260)(v106, v269);
    v95 = v266;
    v107 = v233;
    (*(v266 + 104))(v233, enum case for LockupMediaLayout.DisplayType.landscape(_:), v270);
    v70 = 0x1008F2000;
    v76 = v263;
    v44 = v262;
LABEL_65:
    (*(v95 + 32))(v76, v107, v270);
LABEL_66:
    v54 = v253;
    v90 = v257;
LABEL_67:
    sub_100745E24();
    v273[3] = &type metadata for CGFloat;
    v273[4] = &protocol witness table for CGFloat;
    v273[0] = 0x4021000000000000;
    sub_10000C824(v273, v272);
    v123 = *(v95 + 16);
    v123(v90, v76, v270);
    v257 = v123;
    if (v10 | v261)
    {
      goto LABEL_85;
    }

    v82 = sub_100631A30(v44, v264, 0, 1, v124);
    if (v82 >> 62)
    {
      break;
    }

    if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_84;
    }

LABEL_70:
    if ((v82 & 0xC000000000000001) != 0)
    {
      sub_100754574();
      goto LABEL_73;
    }

    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_73:

      sub_10074F2A4();
      sub_100750504();

      goto LABEL_86;
    }

    __break(1u);
LABEL_130:
    ;
  }

LABEL_83:
  v76 = v82;
  v125 = sub_100754664();
  v82 = v76;
  if (v125)
  {
    goto LABEL_70;
  }

LABEL_84:

LABEL_85:
  sub_100750504();
LABEL_86:
  sub_100016B4C(v267, v259, &unk_1009281D0, qword_1007A82B0);
  v126 = v249;
  sub_100746AD4();
  sub_10000C620(v273);
  v127 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  v128 = v250;
  v129 = &v73[v127];
  v130 = v251;
  (*(v250 + 24))(v129, v126, v251);
  swift_endAccess();
  [v73 *(v70 + 824)];
  (*(v128 + 8))(v126, v130);
  if (v44)
  {
    v131 = sub_100743844();
  }

  else
  {
    v131 = 0;
  }

  sub_100743864();
  v132 = v246;
  sub_1002898DC(v131, v246, v133);

  v134 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_1000243DC(v132, &v73[v134]);
  swift_endAccess();
  sub_10062F1F4();
  sub_100024440(v132);
  if (v44)
  {
    v44 = sub_100743844();
  }

  *&v73[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_platform] = v44;

  sub_10062F3F8();

  v135 = v265;
  v136 = v252;
  v137 = v269;
  (*(v265 + 16))(v252, v268, v269);
  v138 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v135 + 24))(&v73[v138], v136, v137);
  swift_endAccess();
  [v73 setNeedsLayout];
  (v260)(v136, v137);
  if (v10)
  {
    v265 = v135 + 8;
    (*(v239 + 104))(v234, enum case for VideoFillMode.scaleAspectFill(_:), v240);

    sub_10074EC14();
    sub_10074F2A4();
    v139 = v259;
    sub_100750504();

    (*(v237 + 56))(v139, 0, 1, v238);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    v140 = v258;
    sub_1007526E4();
    sub_10074EB94();
    v141 = v241;
    sub_10074EC24();
    v142 = sub_100741264();
    (*(*(v142 - 8) + 56))(v141, 0, 1, v142);
    v143 = v243;
    sub_10074EBE4();
    v144 = v242;
    sub_10074EBD4();
    type metadata accessor for VideoView(0);
    sub_100555894(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v145 = v140;
    v146 = sub_1007464A4();
    sub_10000C8CC(v144, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v143, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v141, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(v273, &unk_1009276E0, &unk_1007A5C70);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v148 = Strong;
      v149 = [Strong superview];
      if (!v149)
      {
        goto LABEL_97;
      }

      v150 = v149;
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v151 = v73;
      v152 = sub_100753FC4();

      v145 = v258;
      if (v152)
      {
        v153 = swift_unknownObjectWeakLoadStrong();
        if (v153)
        {
          v148 = v153;
          [v153 removeFromSuperview];
LABEL_97:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v154 = swift_unknownObjectWeakLoadStrong();
    if (v154)
    {
      v155 = v154;
      [v73 addSubview:v154];
    }

    sub_10062FDFC();
    [v73 setNeedsLayout];

    v156 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    v157 = *&v73[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView];
    v158 = v268;
    v159 = v145;
    if (v157)
    {
      [v157 removeFromSuperview];
      v160 = *&v73[v156];
    }

    else
    {
      v160 = 0;
    }

    v170 = v245;
    *&v73[v156] = 0;

    [v73 setNeedsLayout];

    (*(v244 + 8))(v256, v170);
    goto LABEL_145;
  }

  if (!v264)
  {
    goto LABEL_133;
  }

  v161 = sub_10074F794();
  if (v161 >> 62)
  {
    v201 = v161;
    v202 = sub_100754664();
    v161 = v201;
    if (!v202)
    {
      goto LABEL_132;
    }

LABEL_105:
    v220 = 0;
    v265 = v135 + 8;
    if ((v161 & 0xC000000000000001) == 0)
    {
      v162 = v263;
      if (!*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

LABEL_108:

      v163 = v221;
      v164 = v270;
      (v257)(v221, v162, v270);
      v165 = v266;
      v166 = (*(v266 + 88))(v163, v164);
      v167 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
      (*(v165 + 8))(v163, v164);
      if (v166 == v167)
      {
        v168 = 1;
        v169 = v232;
      }

      else
      {
        v171 = sub_10074F784();
        v169 = v232;
        sub_1002898DC(v171, v232, v172);

        v168 = 0;
      }

      v173 = v226;
      v174 = v224;
      v175 = v240;
      v176 = v239;
      v177 = v222;
      v178 = v223;
      (*(v223 + 56))(v169, v168, 1, v224);
      (*(v176 + 104))(v229, enum case for VideoFillMode.scaleAspectFill(_:), v175);
      sub_10074EC14();
      sub_10074F2A4();
      sub_100750504();

      (*(v237 + 56))(v177, 0, 1, v238);
      sub_10074EBB4();
      sub_10074EBF4();
      LODWORD(v259) = sub_10074EBC4();
      sub_10074EBA4();
      sub_10074EC04();
      sub_100016B4C(v169, v173, &qword_100923450, &qword_1007A6568);
      if ((*(v178 + 48))(v173, 1, v174) == 1)
      {
        sub_10000C8CC(v173, &qword_100923450, &qword_1007A6568);
      }

      else
      {
        sub_100024440(v173);
      }

      sub_100747D74();
      sub_1007464C4();
      sub_1007526E4();
      v179 = v273[0];
      sub_10074EB94();
      v180 = v241;
      sub_10074EC24();
      v181 = sub_100741264();
      (*(*(v181 - 8) + 56))(v180, 0, 1, v181);
      v182 = v243;
      sub_10074EBE4();
      v183 = v242;
      sub_10074EBD4();
      type metadata accessor for VideoView(0);
      sub_100555894(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
      v259 = v179;
      v184 = sub_1007464A4();
      sub_10000C8CC(v183, &unk_1009281C0, qword_1007ABBB0);
      sub_10000C8CC(v182, &unk_1009281C0, qword_1007ABBB0);
      sub_10000C8CC(v180, &unk_100923970, &qword_1007A6B90);
      sub_10000C8CC(v273, &unk_1009276E0, &unk_1007A5C70);
      v185 = swift_unknownObjectWeakLoadStrong();
      v186 = v268;
      v187 = v232;
      if (!v185)
      {
        goto LABEL_122;
      }

      v188 = v185;
      v189 = v268;
      v190 = [v185 superview];
      if (v190)
      {
        v191 = v190;
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v192 = v73;
        v193 = sub_100753FC4();

        v187 = v232;
        v186 = v189;
        if ((v193 & 1) == 0)
        {
          goto LABEL_122;
        }

        v194 = swift_unknownObjectWeakLoadStrong();
        if (!v194)
        {
          goto LABEL_122;
        }

        v188 = v194;
        [v194 removeFromSuperview];
      }

LABEL_122:
      swift_unknownObjectWeakAssign();
      v195 = swift_unknownObjectWeakLoadStrong();
      if (v195)
      {
        v196 = v195;
        [v73 addSubview:v195];
      }

      sub_10062FDFC();
      [v73 setNeedsLayout];

      v197 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
      v198 = *&v73[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView];
      v199 = v245;
      v158 = v186;
      if (v198)
      {
        [v198 removeFromSuperview];
        v200 = *&v73[v197];
      }

      else
      {
        v200 = 0;
      }

      *&v73[v197] = 0;

      [v73 setNeedsLayout];

      (*(v244 + 8))(v231, v199);
      sub_10000C8CC(v187, &qword_100923450, &qword_1007A6568);
      v159 = v258;
      goto LABEL_145;
    }

LABEL_152:
    sub_100754574();
    v162 = v263;
    goto LABEL_108;
  }

  if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_105;
  }

LABEL_132:

LABEL_133:
  v203 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
  v204 = *&v73[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView];
  if (v204)
  {
    [v204 removeFromSuperview];
    v205 = *&v73[v203];
  }

  else
  {
    v205 = 0;
  }

  v159 = v258;
  v206 = v268;
  *&v73[v203] = 0;

  [v73 setNeedsLayout];
  v207 = swift_unknownObjectWeakLoadStrong();
  if (v207)
  {
    v208 = v207;
    sub_100555894(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v209 = [v208 superview];
    if (!v209)
    {
      goto LABEL_141;
    }

    v210 = v209;
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    v211 = v73;
    v212 = sub_100753FC4();

    if (v212)
    {
      v213 = swift_unknownObjectWeakLoadStrong();
      if (v213)
      {
        v208 = v213;
        [v213 removeFromSuperview];
LABEL_141:
      }
    }
  }

  swift_unknownObjectWeakAssign();
  v214 = swift_unknownObjectWeakLoadStrong();
  if (v214)
  {
    v215 = v214;
    [v73 addSubview:v214];
  }

  sub_10062FDFC();
  [v73 setNeedsLayout];
  v158 = v206;
LABEL_145:
  [v73 setNeedsLayout];

  (v260)(v158, v269);
  (*(v266 + 8))(v263, v270);
  sub_10000C8CC(v267, &unk_1009281D0, qword_1007A82B0);
  if (sub_10074EED4())
  {
    v216 = sub_100748644();

    v217 = v247;
    if (v216)
    {
      v218 = [objc_opt_self() clearColor];
      [v217 setBackgroundColor:v218];
    }
  }

  else
  {
    v216 = 0;
    v217 = v247;
  }

  [v217 setNeedsLayout];

  [v217 setNeedsLayout];
}

void sub_100551AD0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v182 = a4;
  v9 = sub_10074A7F4();
  v164 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v139[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10000C518(&unk_100923180, &unk_1007A5F40);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v139[-v14];
  v16 = sub_10074A8C4();
  v171 = *(v16 - 8);
  v172 = v16;
  __chkstk_darwin(v16);
  v170 = &v139[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_10074AE04();
  v175 = *(v18 - 8);
  *&v176 = v18;
  __chkstk_darwin(v18);
  v158 = &v139[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_10074CD14();
  v167 = *(v20 - 8);
  v168 = v20;
  __chkstk_darwin(v20);
  v166 = &v139[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1007479B4();
  v179 = *(v22 - 8);
  v180 = v22;
  __chkstk_darwin(v22);
  v165 = &v139[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v178 = &v139[-v25];
  v184 = sub_10074A8A4();
  v177 = *(v184 - 8);
  __chkstk_darwin(v184);
  v169 = &v139[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v183 = &v139[-v28];
  v29 = sub_10000C518(&unk_1009393C0, &qword_1007AEFB0);
  __chkstk_darwin(v29 - 8);
  v159 = &v139[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v181 = &v139[-v32];
  v33 = sub_10074F314();
  __chkstk_darwin(v33 - 8);
  if (*(a2 + 32))
  {
    return;
  }

  v163 = &v139[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v155 = v15;
  v156 = v13;
  v157 = v12;
  v141 = v11;
  v142 = v9;
  v35 = *(a2 + 16);
  v36 = *(a2 + 24);
  v174 = v5;
  v37 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView);
  v38 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v161 = v37;
  v39 = *(v37 + v38);
  if (v39 >> 62)
  {
    v40 = sub_100754664();
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v173 = a1;
  v41 = v174;
  if (v40)
  {
    if (v40 < 1)
    {
      __break(1u);
      goto LABEL_62;
    }

    v42 = a3;

    v43 = 0;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v44 = sub_100754574();
      }

      else
      {
        v44 = *(v39 + v43 + 4);
      }

      v45 = v44;
      ++v43;
      v220[0] = v44;
      type metadata accessor for BorderedScreenshotView(0);
      sub_100555894(&qword_100923470, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
      v46 = v45;
      sub_1007544E4();
      sub_100744264();
      sub_100016994(v221);
      v47 = *&v46[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
      v222.value.super.isa = 0;
      v222.is_nil = 0;
      sub_100743384(v222, v48);
    }

    while (v40 != v43);

    a3 = v42;
    v41 = v174;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v50 = Strong;
    [*(Strong + qword_10093CB50) setImage:0];
    v220[0] = v50;
    type metadata accessor for VideoView(0);
    sub_100555894(&qword_10093DD00, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v51 = v50;
    sub_1007544E4();
    sub_100744264();
    v41 = v174;

    sub_100016994(v221);
  }

  v5 = *(v41 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  v52 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v223.value.super.isa = 0;
  v223.is_nil = 0;
  sub_100743384(v223, v53);

  v54 = *(v5 + v13);
  sub_1007433C4();
  sub_100555894(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v55 = v54;
  v160 = a3;
  sub_100744274();

  if (sub_10074EF24())
  {
    v56 = qword_100920548;
    v39 = *(v5 + v13);
    if (v56 == -1)
    {
LABEL_16:
      v57 = sub_100747064();
      sub_10000D0FC(v57, qword_10097E3A8);
      sub_100746F34();
      [v39 contentMode];
      sub_10074F374();
      sub_10074F324();
      sub_100743364();
      [v39 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();
      v58 = *(v5 + v13);
      sub_100744204();

      goto LABEL_19;
    }

LABEL_62:
    swift_once();
    goto LABEL_16;
  }

LABEL_19:
  v59 = sub_10074EF34();
  v146 = v60;
  v147 = v59;
  v61 = sub_10074EFB4();
  v63 = v62;
  v64 = sub_10074EED4();
  v149 = v61;
  if (v64)
  {
    v65 = sub_100748644();

    v66 = v182;
    v67 = v183;
    v69 = v175;
    v68 = v176;
    v70 = v165;
    if (v65)
    {
      v71 = sub_10074F764();
      v150 = v72;
      v151 = v71;
    }

    else
    {
      v150 = 0;
      v151 = 0;
    }
  }

  else
  {
    v150 = 0;
    v151 = 0;
    v66 = v182;
    v67 = v183;
    v69 = v175;
    v68 = v176;
    v70 = v165;
  }

  v174 = sub_100745DF4();
  v165 = sub_100745E14();
  v73 = sub_100745E34();
  (*(v69 + 56))(v181, 1, 1, v68);
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v74 = v184;
  v75 = sub_10000D0FC(v184, qword_10097E010);
  v76 = v177 + 16;
  v77 = *(v177 + 16);
  v77(v67, v75, v74);
  v78 = sub_100753804();
  v153 = v77;
  v154 = v76;
  v140 = v73;
  v148 = v63;
  if ((v78 & 1) == 0)
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v79 = qword_10093FF58;
    goto LABEL_32;
  }

  if (qword_100921988 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v79 = qword_10093FF40;
LABEL_32:
    v80 = v180;
    v81 = sub_10000D0FC(v180, v79);
    v82 = v179;
    (*(v179 + 16))(v70, v81, v80);
    (*(v82 + 32))(v178, v70, v80);
    v83 = [v66 preferredContentSizeCategory];
    sub_100753924();

    sub_100747964();
    sub_100747994();
    sub_10074A894();
    sub_10074A884();
    v152 = sub_100750F34();
    swift_allocObject();
    v163 = sub_100750F14();
    v84 = objc_opt_self();
    v144 = v84;
    v85 = [v84 preferredFontForTextStyle:UIFontTextStyleBody];
    v86 = sub_10074F3F4();
    v221[3] = v86;
    v162 = sub_100555894(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v221[4] = v162;
    v87 = sub_10000D134(v221);
    v88 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v145 = *(*(v86 - 8) + 104);
    v143 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v145(v87, enum case for Feature.measurement_with_labelplaceholder(_:), v86);
    sub_10074FC74();
    sub_10000C620(v221);
    v89 = v166;
    sub_10074CD04();
    sub_10074CCE4();
    v90 = v168;
    v167 = *(v167 + 8);
    (v167)(v89, v168);
    v91 = [v84 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v220[3] = v86;
    v220[4] = v162;
    v92 = sub_10000D134(v220);
    v93 = v88;
    v94 = v145;
    v145(v92, v93, v86);
    sub_10074FC74();
    sub_10000C620(v220);
    sub_10074CD04();
    sub_10074CCE4();
    v95 = v167;
    (v167)(v89, v90);
    v96 = [v144 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v219[3] = v86;
    v219[4] = v162;
    v97 = sub_10000D134(v219);
    v94(v97, v143, v86);
    sub_10074FC74();
    sub_10000C620(v219);
    sub_10074CD04();
    sub_10074CCE4();
    v95(v89, v90);
    v98 = v174;
    LODWORD(v168) = sub_10001BB7C() & (v98 != 0);
    if (v168 == 1)
    {
      v99 = objc_allocWithZone(sub_100751034());
      v100 = v182;
      v101 = sub_100751024();
      v102 = v159;
      sub_100016B4C(v181, v159, &unk_1009393C0, &qword_1007AEFB0);
      v104 = v175;
      v103 = v176;
      v105 = *(v175 + 48);
      if (v105(v102, 1, v176) == 1)
      {
        v106 = v158;
        _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        v107 = v105(v102, 1, v103);
        v108 = v165;
        if (v107 != 1)
        {
          sub_10000C8CC(v102, &unk_1009393C0, &qword_1007AEFB0);
        }
      }

      else
      {
        v106 = v158;
        (*(v104 + 32))(v158, v102, v103);
        v108 = v165;
      }

      v111 = v101;
      sub_100018CE4(v174, v106, v111, v35, v36);

      (*(v104 + 8))(v106, v103);
      v109 = v152;
      swift_allocObject();
      v110 = sub_100750F04();
    }

    else
    {
      v109 = v152;
      swift_allocObject();
      v110 = sub_100750F14();
      v108 = v165;
    }

    if ((sub_10001BB7C() & (v108 != 0)) == 1)
    {
      v112 = v182;
      sub_100077794(v108, v140 & 1, v35, v36);
      swift_allocObject();
      v113 = sub_100750F04();
    }

    else
    {
      swift_allocObject();
      v113 = sub_100750F14();
      v112 = v182;
    }

    v153(v169, v183, v184);
    v218 = &protocol witness table for LayoutViewPlaceholder;
    v217 = v109;
    v216 = v163;
    v215 = 0;
    *&v213[40] = 0u;
    v214 = 0u;
    sub_10000C824(v221, v213);
    sub_10000C824(v220, &v212);
    v211 = 0;
    v209 = 0u;
    v210 = 0u;
    v208 = 0;
    v206 = 0u;
    v207 = 0u;

    v114 = sub_100750F24();
    v205 = &protocol witness table for LayoutViewPlaceholder;
    v204 = v109;
    v203 = v114;
    v202 = 0;
    v200 = 0u;
    v201 = 0u;
    v199 = 0;
    v197 = 0u;
    v198 = 0u;
    v196 = 0;
    v194 = 0u;
    v195 = 0u;
    v193 = 0;
    v192 = 0u;
    *&v191[40] = 0u;
    sub_10000C824(v219, v191);
    v189 = v109;
    v190 = &protocol witness table for LayoutViewPlaceholder;
    v187 = &protocol witness table for LayoutViewPlaceholder;
    v188 = v110;
    v186 = v109;
    v185 = v113;
    v115 = v170;
    sub_10074A8B4();
    sub_100751034();
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v116 = swift_allocObject();
    v176 = xmmword_1007A5CF0;
    *(v116 + 16) = xmmword_1007A5CF0;
    *(v116 + 32) = v112;
    v117 = v112;
    v118 = sub_100751044();
    sub_100555894(&unk_10092AC80, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v119 = v172;
    sub_100750404();
    v121 = v120;

    (*(v171 + 8))(v115, v119);
    sub_10000C620(v219);
    sub_10000C620(v220);
    sub_10000C620(v221);
    (*(v179 + 8))(v178, v180);
    (*(v177 + 8))(v183, v184);
    sub_10000C8CC(v181, &unk_1009393C0, &qword_1007AEFB0);
    v122 = v155;
    sub_10074DF44();
    v123 = swift_allocObject();
    *(v123 + 16) = v176;
    *(v123 + 32) = v117;
    v124 = v117;
    v125 = sub_100751044();
    sub_10002DDC8(&qword_1009231B0, &unk_100923180, &unk_1007A5F40, &protocol conformance descriptor for <> Conditional<A, B>);
    v126 = v157;
    sub_100750544();
    v128 = v127;

    (*(v156 + 8))(v122, v126);
    v129 = sub_100745E04();
    v70 = sub_100745DE4();
    v130 = sub_100745DD4();
    if (v130 >> 62)
    {
      v132 = v130;
      v133 = sub_100754664();
      v130 = v132;
      v66 = v160;
      if (!v133)
      {
LABEL_50:

        v131 = 0;
        goto LABEL_51;
      }
    }

    else
    {
      v66 = v160;
      if (!*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }
    }

    if ((v130 & 0xC000000000000001) != 0)
    {
      v131 = sub_100754574();
    }

    else
    {
      if (!*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_66;
      }

      v131 = *(v130 + 32);
    }

LABEL_51:
    v134 = sub_100745E54();
    if (!(v134 >> 62))
    {
      if (!*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_53;
    }

    v136 = v134;
    v137 = sub_100754664();
    v134 = v136;
    if (!v137)
    {
      break;
    }

LABEL_53:
    if ((v134 & 0xC000000000000001) != 0)
    {
      v135 = sub_100754574();
      goto LABEL_56;
    }

    if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v135 = *(v134 + 32);

LABEL_56:

      goto LABEL_59;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  v135 = 0;
LABEL_59:
  v138 = v141;
  sub_100745E24();
  sub_1006A541C(v129, v70, v131, v135, v124, v66, v138, v35, v36 - v121 - v128);

  (*(v164 + 8))(v138, v142);
}

id sub_1005530A4(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView];
  if (a1)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 clearColor];
    [v7 setBackgroundColor:v8];
  }

  else
  {
    v9 = v5;
  }

  [v5 setNeedsLayout];

  return [v2 setNeedsLayout];
}

uint64_t sub_100553194@<X0>(uint64_t a2@<X8>)
{
  if (sub_1007537D4())
  {
    v3 = sub_1007504F4();
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a2;
    v7 = 1;
    goto LABEL_19;
  }

  v8 = sub_100753094();
  v10 = v9;
  if (v8 == sub_100753094() && v10 == v11)
  {

    goto LABEL_15;
  }

  v13 = sub_100754754();

  if (v13)
  {
LABEL_15:
    if (qword_100921818 != -1)
    {
      swift_once();
    }

    v21 = sub_1007504F4();
    v22 = v21;
    v23 = qword_100982310;
    goto LABEL_18;
  }

  v14 = sub_100753094();
  v16 = v15;
  if (v14 == sub_100753094() && v16 == v17)
  {
  }

  else
  {
    v19 = sub_100754754();

    if ((v19 & 1) == 0)
    {
      sub_1007504D4();
      v20 = sub_1007504F4();
      v4 = *(*(v20 - 8) + 56);
      v5 = v20;
      v6 = a2;
      v7 = 0;
      goto LABEL_19;
    }
  }

  if (qword_100921820 != -1)
  {
    swift_once();
  }

  v21 = sub_1007504F4();
  v22 = v21;
  v23 = qword_100982328;
LABEL_18:
  v24 = sub_10000D0FC(v21, v23);
  v26 = *(v22 - 8);
  (*(v26 + 16))(a2, v24, v22);
  v4 = *(v26 + 56);
  v6 = a2;
  v7 = 0;
  v5 = v22;
LABEL_19:

  return v4(v6, v7, 1, v5);
}

id sub_100553458(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v4 = a1;
    v5 = a2;
    v6 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor:v6];

    a1 = v4;
    a2 = v5;
  }

  v7 = sub_10002A748(a1, a2);

  return [v3 setNeedsLayout];
}

uint64_t sub_100553528(uint64_t a1, uint64_t (*a2)(char *, void, uint64_t, __n128), uint64_t a3, void *a4, char *a5, int a6)
{
  v7 = v6;
  v79 = a5;
  v72 = a4;
  v70 = a3;
  v71 = a2;
  v10 = sub_1007521E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v77 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100752224();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = COERCE_DOUBLE(sub_1007521D4());
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_100752244();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v63 - v21;
  sub_10000C824(a1, aBlock);
  sub_10000C518(&qword_1009253C0, &unk_1007A8D20);
  sub_100745E64();
  result = swift_dynamicCast();
  if (result)
  {
    v69 = v10;
    v24 = OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView;
    v25 = *(*&v7[OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView] + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView);
    v66 = a6;
    v26 = v81[0];
    v64 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_regularWidthColumnSpacing);
    [v7 layoutMargins];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [v7 setUserInteractionEnabled:0];
    v35 = *&v7[v24];
    v68 = v11;
    [v35 frame];
    v40 = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{v36, v37, v38, v39}];
    v67 = v26;
    v41 = v64;
    v64 = *&v14;
    v42 = v71;
    v65 = v22;
    sub_10054F6E0(v26, v71, v70, v79, v41, v28, v30, v32, v34);
    [v40 layoutIfNeeded];
    [*&v7[v24] frame];
    v81[0] = v43;
    v81[1] = v44;
    v81[2] = v45;
    v81[3] = v46;
    v82 = 0;
    sub_100551AD0(v26, v81, v72, v42);
    v47 = (*&v7[v24] + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_disableAdvertRotation);
    swift_beginAccess();
    v49 = *v47;
    v48 = v47[1];
    sub_10001B5AC(*v47, v48);
    sub_10048862C(v49, v48);
    sub_1000164A8(v49, v48);
    sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
    v72 = sub_100753774();
    sub_100752234();
    v50 = 333;
    if ((v66 & 1) == 0)
    {
      v50 = 0;
    }

    *v17 = v50;
    v51 = v64;
    (*(v15 + 104))(v17, enum case for DispatchTimeInterval.milliseconds(_:), COERCE_DOUBLE(*&v64));
    sub_1007522A4();
    (*(v15 + 8))(v17, COERCE_DOUBLE(*&v51));
    v52 = *(v73 + 8);
    v53 = v74;
    v52(v19, v74);
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    v55[2] = v54;
    v55[3] = v40;
    v55[4] = v79;
    aBlock[4] = sub_100403B70;
    aBlock[5] = v55;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_10087AC60;
    v56 = _Block_copy(aBlock);
    v57 = v40;

    v58 = v75;
    sub_100752204();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100555894(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000C518(&unk_10092F750, &qword_1007A6920);
    sub_10002DDC8(&qword_1009236C0, &unk_10092F750, &qword_1007A6920, &protocol conformance descriptor for [A]);
    v59 = v77;
    v60 = v69;
    sub_1007543A4();
    v61 = v65;
    v62 = v72;
    sub_100753734();
    _Block_release(v56);

    (*(v68 + 8))(v59, v60);
    (*(v76 + 8))(v58, v78);
    return (v52)(v61, v53);
  }

  return result;
}

void sub_100553CDC(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = objc_opt_self();
    v8 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView];
    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = v6;
    v9[4] = a2;
    aBlock[4] = sub_100555888;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100144DD8;
    aBlock[3] = &unk_10087ACB0;
    v10 = _Block_copy(aBlock);
    v11 = v8;

    v12 = v6;
    v13 = a2;

    [v7 transitionFromView:v11 toView:v13 duration:5242880 options:v10 completion:0.666];
    _Block_release(v10);
  }
}

void sub_100553E4C(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  v6 = OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView;
  v7 = *&a3[OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100555894(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
  }

  sub_100555894(&unk_100936AA0, type metadata accessor for AdvertsSearchResultContentView, &unk_1007C2CA0);
  v9 = v7;
  sub_10074B124();

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    sub_100555894(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
  }

  sub_10074B164();

  v11 = *&a3[v6];
  *&a3[v6] = a4;
  v12 = a4;

  [a3 setUserInteractionEnabled:1];
}

uint64_t sub_1005540B4(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11)
{
  v15 = type metadata accessor for AdvertsSearchResultContentView();

  return sub_10055415C(a1, a2, a3, v15, a11);
}

uint64_t sub_10055415C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v144 = a5;
  v145 = a3;
  v177 = a2;
  v6 = sub_10000C518(&unk_100934D80, &qword_1007BC850);
  __chkstk_darwin(v6 - 8);
  v140 = &v139 - v7;
  v142 = sub_100746A94();
  v149 = *(v142 - 8);
  __chkstk_darwin(v142);
  v9 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v139 - v11;
  __chkstk_darwin(v13);
  v143 = &v139 - v14;
  v15 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v15 - 8);
  v150 = &v139 - v16;
  v17 = sub_100754724();
  v147 = *(v17 - 8);
  v148 = v17;
  __chkstk_darwin(v17);
  v146 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10074A7F4();
  v173 = *(v19 - 8);
  v174 = v19;
  __chkstk_darwin(v19);
  v21 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10074A8C4();
  v171 = *(v22 - 8);
  v172 = v22;
  __chkstk_darwin(v22);
  v170 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10074CD14();
  v167 = *(v24 - 8);
  v168 = v24;
  __chkstk_darwin(v24);
  v166 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1007479B4();
  v182 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v139 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v180 = &v139 - v30;
  v183 = sub_10074A8A4();
  v181 = *(v183 - 1);
  __chkstk_darwin(v183);
  v169 = &v139 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v139 - v33;
  sub_100753BA4();
  v36 = v35;
  v38 = v37;
  v39 = sub_10074EF34();
  v156 = v40;
  v157 = v39;
  v41 = sub_10074EFB4();
  v158 = v42;
  v159 = v41;
  if (sub_10074EED4() && (v43 = sub_100748644(), , v43))
  {
    v44 = sub_10074F764();
    v163 = v45;
    v164 = v44;
  }

  else
  {
    v163 = 0;
    v164 = 0;
  }

  sub_100745E34();
  v46 = [v177 traitCollection];
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v47 = v183;
  v48 = sub_10000D0FC(v183, qword_10097E010);
  v160 = *(v181 + 16);
  v161 = v181 + 16;
  v160(v34, v48, v47);
  v49 = sub_100753804();
  v175 = v21;
  v176 = a1;
  v141 = v12;
  v139 = v9;
  if (v49)
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v50 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v50 = qword_10093FF58;
  }

  v51 = sub_10000D0FC(v26, v50);
  v52 = v182;
  (*(v182 + 16))(v28, v51, v26);
  (*(v52 + 32))();
  v53 = [v46 preferredContentSizeCategory];
  sub_100753924();
  v165 = v46;

  sub_100747964();
  sub_100747994();
  v179 = v34;
  sub_10074A894();
  sub_10074A884();
  v54 = sub_100750F34();
  swift_allocObject();
  v155 = sub_100750F14();
  v55 = objc_opt_self();
  v153 = v55;
  v56 = [v55 preferredFontForTextStyle:UIFontTextStyleBody];
  v57 = sub_10074F3F4();
  v220[3] = v57;
  v178 = sub_100555894(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v220[4] = v178;
  v58 = sub_10000D134(v220);
  v59 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v60 = *(v57 - 8);
  v162 = v26;
  v154 = *(v60 + 104);
  v61 = v60 + 104;
  v151 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v154(v58, enum case for Feature.measurement_with_labelplaceholder(_:), v57);
  v152 = v61;
  sub_10074FC74();
  sub_10000C620(v220);
  v62 = v166;
  sub_10074CD04();
  sub_10074CCE4();
  v63 = v168;
  v167 = *(v167 + 8);
  (v167)(v62, v168);
  v64 = [v55 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v219[3] = v57;
  v219[4] = v178;
  v65 = sub_10000D134(v219);
  v66 = v59;
  v67 = v154;
  v154(v65, v66, v57);
  sub_10074FC74();
  sub_10000C620(v219);
  sub_10074CD04();
  sub_10074CCE4();
  v68 = v167;
  (v167)(v62, v63);
  v69 = [v153 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v218[3] = v57;
  v218[4] = v178;
  v70 = sub_10000D134(v218);
  v67(v70, v151, v57);
  sub_10074FC74();
  sub_10000C620(v218);
  sub_10074CD04();
  sub_10074CCE4();
  v68(v62, v63);
  sub_10001BB7C();
  swift_allocObject();
  v71 = sub_100750F14();

  sub_10001BB7C();
  swift_allocObject();
  v72 = sub_100750F14();
  v160(v169, v179, v183);
  v217 = &protocol witness table for LayoutViewPlaceholder;
  v216 = v54;
  v73 = v155;
  v215 = v155;
  v214 = 0;
  *&v212[40] = 0u;
  v213 = 0u;
  sub_10000C824(v220, v212);
  sub_10000C824(v219, &v211);
  v210 = 0;
  v208 = 0u;
  v209 = 0u;
  v207 = 0;
  v205 = 0u;
  v206 = 0u;

  v74 = sub_100750F24();
  v204 = &protocol witness table for LayoutViewPlaceholder;
  v203 = v54;
  v202 = v74;
  v201 = 0;
  v199 = 0u;
  v200 = 0u;
  v198 = 0;
  v196 = 0u;
  v197 = 0u;
  v195 = 0;
  v193 = 0u;
  v194 = 0u;
  v192 = 0;
  v191 = 0u;
  *&v190[40] = 0u;
  sub_10000C824(v218, v190);
  v188 = v54;
  v189 = &protocol witness table for LayoutViewPlaceholder;
  v186 = &protocol witness table for LayoutViewPlaceholder;
  v187 = v71;
  v185 = v54;
  v184 = v72;
  v75 = v170;
  sub_10074A8B4();
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1007A5CF0;
  v77 = v165;
  *(v76 + 32) = v165;
  v78 = v77;
  v79 = sub_100751044();
  sub_100555894(&unk_10092AC80, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v80 = v172;
  sub_100750404();

  (*(v171 + 8))(v75, v80);
  sub_10000C620(v218);
  sub_10000C620(v219);
  sub_10000C620(v220);
  (*(v182 + 8))(v180, v162);
  (*(v181 + 8))(v179, v183);
  v82 = v175;
  v81 = v176;
  sub_100745E24();
  v83 = sub_10074A7E4();
  if ((v83 & 1) == 0 || (sub_100668E0C(v83) & 1) == 0)
  {
    return (*(v173 + 8))(v82, v174);
  }

  if (qword_100921710 != -1)
  {
    swift_once();
  }

  v84 = sub_100750B04();
  sub_10000D0FC(v84, qword_1009820B0);
  v85 = v146;
  sub_1007502D4();
  v86 = v177;
  sub_100750564();
  (*(v147 + 8))(v85, v148);
  v87 = sub_100745E04();
  v88 = sub_100745DE4();
  v89 = sub_100745DD4();
  if (v89 >> 62)
  {
    v91 = v89;
    v92 = sub_100754664();
    v89 = v91;
    if (v92)
    {
      goto LABEL_20;
    }

LABEL_26:

    v73 = 0;
    goto LABEL_27;
  }

  if (!*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v89 & 0xC000000000000001) != 0)
  {
    v73 = sub_100754574();
  }

  else
  {
    if (!*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v73 = *(v89 + 32);
  }

LABEL_27:
  v93 = sub_100745E54();
  if (v93 >> 62)
  {
    v95 = v93;
    v96 = sub_100754664();
    v93 = v95;
    if (v96)
    {
      goto LABEL_29;
    }

LABEL_34:

    v183 = 0;
    goto LABEL_35;
  }

  if (!*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v93 & 0xC000000000000001) != 0)
  {
    v94 = sub_100754574();
  }

  else
  {
    if (!*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v183 = v94;

LABEL_35:
  v97 = [v86 traitCollection];
  sub_100553194(v150);

  v71 = sub_100745E04();
  v72 = sub_100745DE4();
  v98 = sub_100745DD4();
  if (v98 >> 62)
  {
    v99 = v98;
    v100 = sub_100754664();
    v98 = v99;
    if (v100)
    {
LABEL_37:
      if ((v98 & 0xC000000000000001) == 0)
      {
        if (!*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_65;
        }

        v81 = *(v98 + 32);

        goto LABEL_40;
      }

LABEL_61:
      v81 = sub_100754574();
LABEL_40:

      goto LABEL_43;
    }
  }

  else if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  v81 = 0;
LABEL_43:
  v101 = sub_100745E54();
  if (v101 >> 62)
  {
    v104 = v101;
    v105 = sub_100754664();
    v101 = v104;
    v182 = v73;
    if (v105)
    {
LABEL_45:
      if ((v101 & 0xC000000000000001) == 0)
      {
        if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v103 = *(v101 + 32);

LABEL_48:

          goto LABEL_51;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        v179 = sub_100754664();
        if (v81)
        {
          goto LABEL_55;
        }

        goto LABEL_67;
      }

LABEL_63:
      v103 = sub_100754574();
      goto LABEL_48;
    }
  }

  else
  {
    v102 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v182 = v73;
    if (v102)
    {
      goto LABEL_45;
    }
  }

  v103 = 0;
LABEL_51:
  v106 = sub_10074A7E4();
  v181 = v88;
  if ((v106 & 1) == 0)
  {

    v111 = v149;
    v113 = v142;
    v112 = v143;
    (*(v149 + 104))(v143, enum case for LockupMediaLayout.DisplayType.none(_:), v142);
LABEL_88:
    v135 = v183;
    type metadata accessor for LockupMediaView(0);
    v136 = v150;
    v137 = v86;
    v138 = v175;
    sub_1006A6BAC(v87, v181, v182, v135, v150, v112, v137, v175, v36, v38);

    (*(v111 + 8))(v112, v113);
    sub_10000C8CC(v136, &unk_1009281D0, qword_1007A82B0);
    return (*(v173 + 8))(v138, v174);
  }

  if (v72 | v71)
  {
    v114 = v141;
    sub_100750504();

    v111 = v149;
    v113 = v142;
    (*(v149 + 104))(v114, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v142);
    v112 = v143;
    (*(v111 + 32))(v143, v114, v113);
    goto LABEL_88;
  }

  v108 = sub_100631A30(v81, v103, 0, 1, v107);
  v72 = v108;
  v88 = v108 >> 62;
  if (v108 >> 62)
  {
    goto LABEL_66;
  }

  v179 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v81)
  {
LABEL_55:
    v110 = sub_100743844();
    goto LABEL_68;
  }

LABEL_67:
  v110 = 0;
LABEL_68:
  LODWORD(v176) = sub_100631D8C(v110, v109);

  v180 = v87;
  if (v81)
  {
    v115 = sub_100743844();
  }

  else
  {
    v115 = 0;
  }

  v116 = v173;
  v117 = v140;
  v118 = v82;
  v119 = v174;
  (*(v173 + 16))(v140, v118, v174);
  (*(v116 + 56))(v117, 0, 1, v119);
  v120 = sub_1006322B4(v115, v117);

  sub_10000C8CC(v117, &unk_100934D80, &qword_1007BC850);
  if (!v88)
  {
    result = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v87 = v180;
    if (result)
    {
      goto LABEL_73;
    }

LABEL_79:

    goto LABEL_80;
  }

  result = sub_100754664();
  v87 = v180;
  if (!result)
  {
    goto LABEL_79;
  }

LABEL_73:
  if ((v72 & 0xC000000000000001) != 0)
  {
    sub_100754574();
LABEL_76:

    v121 = sub_10074F194();

    if (v121)
    {

      v111 = v149;
      v122 = v141;
      v113 = v142;
      (*(v149 + 104))(v141, enum case for LockupMediaLayout.DisplayType.landscape(_:), v142);
      v112 = v143;
LABEL_87:
      (*(v111 + 32))(v112, v122, v113);
      goto LABEL_88;
    }

LABEL_80:
    v123 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v124 = v149;
    v125 = v139;
    v126 = v142;
    v178 = *(v149 + 104);
    v178(v139, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v142);
    v127 = sub_100746A84();
    v172 = *(v124 + 8);
    v172(v125, v126);
    if (((v179 >= v127) & v120) != 0 || (v123 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v178(v125, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v126), v128 = sub_100746A84(), v129 = v172, v172(v125, v126), ((v179 >= v128) & v176) != 0) || (v123 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v178(v125, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v126), v130 = sub_100746A84(), v129(v125, v126), v179 >= v130))
    {

      v122 = v141;
      v178(v141, v123, v126);
      v86 = v177;
      v113 = v126;
    }

    else
    {
      v131 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v178(v125, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v126);
      v132 = sub_100746A84();

      v129(v125, v126);
      v113 = v126;
      if (v179 == v132)
      {
        v122 = v141;
        v133 = v141;
        v134 = v131;
      }

      else
      {
        v134 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v122 = v141;
        v133 = v141;
      }

      v178(v133, v134, v126);
      v86 = v177;
    }

    v111 = v149;
    v112 = v143;
    v87 = v180;
    goto LABEL_87;
  }

  if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_76;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005557A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005557E0()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_100555828(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100555840()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100555894(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005558E4(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  if ((sub_1007544C4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for StringPreferencesDebugSetting(0);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 56) == v1[7] && *(v2 + 64) == v1[8];
  if (!v3 && (sub_100754754() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_100752644();

  return v4 & 1;
}

uint64_t sub_1005559EC(uint64_t a1, __n128 a2)
{
  sub_1007544D4();

  return sub_100753174();
}

double sub_100555A38()
{

  v1 = OBJC_IVAR____TtC22SubscribePageExtension29StringPreferencesDebugSetting_key;
  v2 = sub_10000C518(&qword_100938718, &unk_1007D8CB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_100555AC4()
{
  sub_100016994(v0 + 16);

  v1 = OBJC_IVAR____TtC22SubscribePageExtension29StringPreferencesDebugSetting_key;
  v2 = sub_10000C518(&qword_100938718, &unk_1007D8CB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StringPreferencesDebugSetting(uint64_t a1)
{
  result = qword_10093DD30;
  if (!qword_10093DD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100555BF8(uint64_t a1)
{
  sub_100555C94();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100555C94()
{
  if (!qword_10093DD40)
  {
    v0 = sub_100752654();
    if (!v1)
    {
      atomic_store(v0, &qword_10093DD40);
    }
  }
}

uint64_t type metadata accessor for ArcadeSeeAllGamesButton(uint64_t a1)
{
  result = qword_10093DE08;
  if (!qword_10093DE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100555D88(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_100750304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[qword_10093DE00];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  *&v1[qword_10093DDF8] = a1;
  v31.receiver = v1;
  v31.super_class = ObjectType;

  v9 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = objc_allocWithZone(UIColor);
  v11 = v9;
  v12 = [v10 initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
  [v11 setTintColor:v12];

  v13 = objc_opt_self();
  v14 = v11;
  v15 = [v13 whiteColor];
  [v14 setBackgroundColor:v15];

  [v14 addTarget:v14 action:"navigateToSeeAllGames" forControlEvents:64];
  v16 = sub_100753064();
  v17 = [objc_opt_self() systemImageNamed:v16];

  [v14 setImage:v17 forState:0];
  if (qword_100920E48 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v19 = sub_10000D0FC(v18, qword_100980828);
  v20 = [v14 traitCollection];
  (*(*(v18 - 8) + 16))(v7, v19, v18);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v30[3] = v4;
  v30[4] = &protocol witness table for FontSource;
  v21 = sub_10000D134(v30);
  (*(v5 + 16))(v21, v7, v4);
  sub_10074FC54();
  v23 = v22;
  (*(v5 + 8))(v7, v4);
  sub_10000C620(v30);
  v24 = floor(v23);
  Main = JUScreenClassGetMain();

  if (Main == 1)
  {
    v24 = v24 + -5.0;
  }

  v26 = [objc_opt_self() configurationWithPointSize:v24];
  [v14 setPreferredSymbolConfiguration:v26 forImageInState:0];

  sub_100747764();
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1007A5A00;
  *(v27 + 32) = sub_1007519E4();
  *(v27 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D24();

  swift_unknownObjectRelease();

  return v14;
}

void sub_100556204()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  [v0 bounds];
  Width = CGRectGetWidth(v9);
  [v0 bounds];
  Height = CGRectGetHeight(v10);
  if (Height >= Width)
  {
    Height = Width;
  }

  v3 = floor(Height * 0.5);
  v4 = [v0 layer];
  [v4 cornerRadius];
  v6 = v5;

  if (vabdd_f64(v6, v3) > COERCE_DOUBLE(1))
  {
    v7 = [v0 layer];
    [v7 setCornerRadius:v3];
  }
}

void sub_100556300(void *a1)
{
  v1 = a1;
  sub_100556204();
}

void sub_100556348(char *a1)
{
  v1 = &a1[qword_10093DE00];
  if (a1[qword_10093DE00 + 16])
  {
    v2 = qword_100920E48;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_100750534();
    v5 = sub_10000D0FC(v4, qword_100980828);
    v6 = [v3 traitCollection];
    sub_10010B3A8(v5, v6, 32.0);
    v8 = v7;

    *v1 = v8;
    *(v1 + 1) = v8;
    v1[16] = 0;
  }
}

void sub_10055642C(char *a1)
{
  v1 = &a1[qword_10093DE00];
  if (a1[qword_10093DE00 + 16])
  {
    v2 = qword_100920E48;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_100750534();
    v5 = sub_10000D0FC(v4, qword_100980828);
    v6 = [v3 traitCollection];
    sub_10010B3A8(v5, v6, 32.0);
    v8 = v7;

    *v1 = v8;
    *(v1 + 1) = v8;
    v1[16] = 0;
  }
}

id sub_100556510()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v0[qword_10093DE00];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  if (qword_100920E48 != -1)
  {
    swift_once();
  }

  v7 = sub_100750534();
  v8 = sub_10000D0FC(v7, qword_100980828);
  v9 = [v0 traitCollection];
  (*(*(v7 - 8) + 16))(v5, v8, v7);
  (*(v3 + 104))(v5, enum case for FontSource.useCase(_:), v2);
  v19[3] = v2;
  v19[4] = &protocol witness table for FontSource;
  v10 = sub_10000D134(v19);
  (*(v3 + 16))(v10, v5, v2);
  sub_10074FC54();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  sub_10000C620(v19);
  v13 = floor(v12);
  Main = JUScreenClassGetMain();

  if (Main == 1)
  {
    v13 = v13 + -5.0;
  }

  v15 = [objc_opt_self() configurationWithPointSize:v13];
  [v0 setPreferredSymbolConfiguration:v15 forImageInState:0];

  v18.receiver = v0;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "invalidateIntrinsicContentSize");
}

void sub_100556790(void *a1)
{
  v1 = a1;
  sub_100556510();
}

uint64_t sub_1005567D8()
{
  v1 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v1 - 8);
  v49 = v37 - v2;
  v3 = sub_100742CF4();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v48 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007493D4();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v45 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074A304();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v44 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100752614();
  __chkstk_darwin(v9 - 8);
  v41 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v11 - 8);
  v40 = v37 - v12;
  v13 = sub_10074F4D4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v17 - 8);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v37 - v21;
  __chkstk_darwin(v23);
  v25 = v37 - v24;
  v26 = *(v0 + qword_10093DDF8);
  sub_100744AC4();
  v37[0] = v26;
  sub_1007526E4();
  v37[1] = v52;
  sub_1007448C4();
  v27 = sub_100741264();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v22, 1, v27) == 1)
  {
    sub_100741254();
    if (v29(v22, 1, v27) != 1)
    {
      sub_10000C8CC(v22, &unk_100923970, &qword_1007A6B90);
    }
  }

  else
  {
    (*(v28 + 32))(v25, v22, v27);
    (*(v28 + 56))(v25, 0, 1, v27);
  }

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  (*(v14 + 104))(v16, enum case for FlowPage.arcadeSeeAllGames(_:), v13);
  sub_1000497C4(v25, v19);
  v30 = sub_100743FE4();
  (*(*(v30 - 8) + 56))(v40, 1, 1, v30);
  v50 = 0u;
  v51 = 0u;
  sub_1007525F4();
  (*(v38 + 104))(v44, enum case for FlowPresentationContext.infer(_:), v39);
  (*(v42 + 104))(v45, enum case for FlowAnimationBehavior.infer(_:), v43);
  (*(v46 + 104))(v48, enum case for FlowOrigin.inapp(_:), v47);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v31 = sub_100742C84();
  v32 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  v33 = v49;
  v34 = v37[0];
  sub_1007526C4();
  v35 = *(v32 - 8);
  if ((*(v35 + 48))(v33, 1, v32) == 1)
  {
    sub_10000C8CC(v25, &unk_100923970, &qword_1007A6B90);

    return sub_10000C8CC(v33, &unk_100923960, &qword_1007A6240);
  }

  else
  {
    sub_1003C1424(v31, 1, v34, v33);

    sub_10000C8CC(v25, &unk_100923970, &qword_1007A6B90);
    return (*(v35 + 8))(v33, v32);
  }
}

void sub_100556F48(void *a1)
{
  v1 = a1;
  sub_1005567D8();
}

uint64_t sub_100556FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1002920B8();
  result = sub_100557258(a1, v7);
  if (result)
  {
    v9 = sub_10074FA74();
    if (!v9)
    {
      v10 = sub_10074F1E4();
      if (!v10)
      {
LABEL_6:
        v13[3] = sub_10074FBB4();
        v13[4] = &protocol witness table for TodayCard;
        v13[0] = a1;
        sub_1007442C4();

        sub_1007526E4();
        (*((swift_isaMask & *v4) + 0xE0))(v13, v12, a3);

        return sub_10000C620(v13);
      }

      v11 = v10;
      [*(v4 + OBJC_IVAR____TtC22SubscribePageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView) setBackgroundColor:v10];
      v9 = v11;
    }

    goto LABEL_6;
  }

  return result;
}

id sub_100557128()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);
  [v1 setImage:0];

  return [v1 setBackgroundColor:0];
}

uint64_t sub_100557184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);
  [v4 setImage:0];
  sub_1001A28CC();
  sub_100558424(&qword_100936440, sub_1001A28CC, &protocol conformance descriptor for NSObject);
  v5 = v4;
  sub_1007544E4();
  sub_100744264();
  return sub_100016994(v7);
}

uint64_t sub_100557258(uint64_t a1, __n128 a2)
{
  if (!a1 || (v3 = v2, v13[0] = sub_10074FB64(), sub_100745204(), sub_10000C518(&qword_1009295D0, &unk_1007B9F70), (swift_dynamicCast() & 1) == 0))
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_8;
  }

  if (!*(&v11 + 1))
  {
LABEL_8:
    sub_10000C8CC(&v10, &qword_1009295D8, &unk_1007AD420);
    return 0;
  }

  sub_100032CCC(&v10, v13);
  sub_10000C888(v13, v14);
  v4 = [v2 traitCollection];
  v5 = sub_10074B8F4();

  v6 = v5;
  if (!v5)
  {
    sub_10000C888(v13, v14);
    v7 = [v3 traitCollection];
    v8 = sub_10074B8E4();

    if (v8)
    {
      v6 = sub_10074EC14();
    }

    else
    {
      v6 = 0;
    }
  }

  sub_10000C620(v13);
  return v6;
}

char *sub_1005573DC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for TodayBrickCollectionViewCellWithBackground(0);
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView;
  v12 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView];
  v13 = v10;
  [v12 setContentMode:4];
  [*&v10[v11] setAccessibilityIgnoresInvertColors:1];
  [*&v13[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView] insertSubview:*&v10[v11] atIndex:0];

  return v13;
}

void sub_10055759C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10074F284();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);

    sub_100747FA4();
    v13 = sub_10074F254();
    (*(v7 + 8))(v9, v6);
    [v12 setContentMode:v13];
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = *(v14 + OBJC_IVAR____TtC22SubscribePageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);

    [v16 setImage:a1];
  }
}

id sub_100557744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayBrickCollectionViewCellWithBackground(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TodayBrickCollectionViewCellWithBackground(uint64_t a1)
{
  result = qword_10093DE80;
  if (!qword_10093DE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005577E0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v4 = sub_10074F284();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007504F4();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100748E94();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_10074F704();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_100037990(v2 + v20, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000C8CC(v15, &unk_100926C40, qword_1007B9FE0);
    return;
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_10000C824(a1, v41);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_10074FBB4();
  if (swift_dynamicCast())
  {
    v32 = v40;
    sub_10000C824(a1, v41);
    if (swift_dynamicCast())
    {
      v22 = v40;
    }

    else
    {
      v22 = 0;
    }

    v23 = sub_100557258(v22, v21);

    if (v23)
    {
      v31 = v2;
      v24 = [v2 traitCollection];
      sub_10028FD28(v24, v12);
      sub_10074F674();
      sub_100748E84();
      sub_1007504C4();
      (*(v33 + 8))(v9, v34);
      sub_10074F294();
      sub_10074F254();
      (*(v37 + 8))(v6, v38);
      v25 = sub_10074F374();

      (*(v35 + 8))(v12, v36);
      v40 = *(v31 + OBJC_IVAR____TtC22SubscribePageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);
      v26 = v40;
      sub_1001A28CC();
      sub_100558424(&qword_100936440, sub_1001A28CC, &protocol conformance descriptor for NSObject);
      v27 = v26;
      sub_1007544E4();
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v25;

      sub_1007441F4();

      sub_10000C8CC(v41, &unk_1009276E0, &unk_1007A5C70);
      (*(v17 + 8))(v19, v16);

      return;
    }

    (*((swift_isaMask & *v2) + 0x120))(v32, v39);
  }

  (*(v17 + 8))(v19, v16);
}

uint64_t sub_100557E08()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100557E40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100557E88(uint64_t a1, uint64_t a2)
{
  v3 = sub_10074F284();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1007504F4();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100748E94();
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10074F704();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074FBB4();
  sub_100558424(&qword_100926C60, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  sub_1007468B4();
  if (v37[0])
  {
    v28 = v9;
    v14 = sub_10074FB64();

    v37[0] = v14;
    sub_100745204();
    sub_10000C518(&qword_1009295D0, &unk_1007B9F70);
    if (swift_dynamicCast())
    {
      if (*(&v35 + 1))
      {
        v25 = v4;
        v26 = v3;
        v27 = a2;
        sub_100032CCC(&v34, v37);
        sub_10000C888(v37, v38);
        swift_getKeyPath();
        sub_100746914();

        v15 = v34;
        v16 = sub_10074B8F4();

        if (!v16)
        {
          sub_10000C888(v37, v38);
          swift_getKeyPath();
          sub_100746914();

          v17 = v34;
          v18 = sub_10074B8E4();

          if (!v18)
          {
            return sub_10000C620(v37);
          }

          sub_10074EC14();
        }

        swift_getKeyPath();
        sub_100746914();

        swift_getKeyPath();
        sub_100746914();

        v19 = v34;
        sub_10028FD28(v34, v11);
        sub_10074F674();
        sub_100748E84();
        sub_1007504C4();
        (*(v30 + 8))(v8, v32);
        sub_10074F294();
        sub_10074F254();
        (*(v25 + 8))(v6, v26);
        v20 = sub_10074F374();

        (*(v33 + 8))(v11, v28);
        (*(v29 + 8))(v13, v31);
        sub_10000C518(&unk_1009231A0, qword_1007A5810);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1007A5CF0;
        *(v21 + 32) = v20;

        v22._rawValue = v21;
        sub_100744224(v22);

        return sub_10000C620(v37);
      }
    }

    else
    {
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
    }
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
  }

  return sub_10000C8CC(&v34, &qword_1009295D8, &unk_1007AD420);
}

uint64_t sub_100558424(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100558478()
{
  result = qword_10093DE90;
  if (!qword_10093DE90)
  {
    type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DE90);
  }

  return result;
}

double sub_1005584D0()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  v4 = sub_100747B94();
  sub_10009CF94(v3, v4);
  v6 = v5;

  (*(v1 + 8))(v3, v0);
  return v6;
}

unint64_t sub_1005585BC()
{
  result = qword_10093DE98;
  if (!qword_10093DE98)
  {
    type metadata accessor for InformationRibbonCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DE98);
  }

  return result;
}

double sub_100558614()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100747C14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746884();
  sub_100747B84();
  sub_10074F674();
  (*(v1 + 8))(v3, v0);
  if (qword_100920A78 != -1)
  {
    swift_once();
  }

  v8 = sub_100749104();
  sub_10000D0FC(v8, qword_10097FD50);
  v9 = sub_100747B94();
  sub_100749044();
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  return v11;
}

double sub_100558814()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  (*(v1 + 8))(v3, v0);
  if (qword_100920A78 != -1)
  {
    swift_once();
  }

  v4 = sub_100749104();
  sub_10000D0FC(v4, qword_10097FD50);
  v5 = sub_100747B94();
  sub_100749044();
  v7 = v6;

  return v7;
}

uint64_t sub_10055897C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a9, double a10)
{
  v27[0] = a1;
  v27[2] = a4;
  v12 = sub_10074F6E4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v27 - v17;
  v19 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = v27 - v21;
  sub_100016B4C(a2, v27 - v21, &unk_10093D6E0, &unk_1007A6080);
  sub_100016B4C(a3, &v22[*(v20 + 56)], &unk_10093D6E0, &unk_1007A6080);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  sub_1007525B4();
  v23 = v27[1];

  v24 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v28)
  {
    v24 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v13 + 104))(v18, *v24, v12);
  if (*(v23 + 16))
  {
    v25 = *(v23 + 17);
    (*(v13 + 16))(v15, v18, v12);
    sub_1004212B0(v25);
  }

  else
  {
    (*(v13 + 16))(v15, v18, v12);
    sub_1004E97E0(0.0);
  }

  sub_10074F6B4();
  (*(v13 + 8))(v18, v12);
  return sub_10000C8CC(v22, &qword_100923228, &unk_1007AB120);
}

uint64_t sub_100558CD0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100558D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  swift_getWitnessTable();

  return sub_100745684();
}

uint64_t sub_100558E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  swift_getWitnessTable();

  return sub_100745674();
}

uint64_t sub_100558F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a13@<D6>, double a14@<D7>, double a15, double a16)
{
  v29[5] = a4;
  v29[6] = a5;
  *&v29[3] = a13;
  *&v29[4] = a14;
  v29[1] = a6;
  v29[2] = a1;
  v19 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v29 - v24;
  v26 = *v16;
  sub_100016B4C(a2, v29 - v24, &unk_10093D6E0, &unk_1007A6080);
  sub_100016B4C(a3, &v25[*(v20 + 56)], &unk_10093D6E0, &unk_1007A6080);
  v29[7] = v26;
  sub_100016B4C(v25, v22, &qword_100923228, &unk_1007AB120);
  v27 = *(v20 + 56);
  type metadata accessor for TopChartsSegmentPageGridProvider();
  sub_100745684();
  sub_10000C8CC(v25, &qword_100923228, &unk_1007AB120);
  sub_10000C8CC(&v22[v27], &unk_10093D6E0, &unk_1007A6080);
  return sub_10000C8CC(v22, &unk_10093D6E0, &unk_1007A6080);
}

double sub_10055914C()
{
  v0 = sub_100747C14();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746884();
  v4 = sub_100559274(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_100559274(uint64_t a1)
{
  v2 = sub_100754724();
  v67 = *(v2 - 8);
  v68 = v2;
  __chkstk_darwin(v2);
  v66 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_10092C060, qword_1007B0A30);
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin(v4);
  v62 = &v52 - v5;
  v58 = sub_10074A7B4();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = &v52 - v8;
  v9 = sub_100750954();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  __chkstk_darwin(v19);
  v21 = &v52 - v20;
  __chkstk_darwin(v22);
  v24 = &v52 - v23;
  __chkstk_darwin(v25);
  v54 = &v52 - v26;
  v60 = sub_100750BD4();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v53 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v28 = sub_100747B94();
  sub_100038D38();
  if (qword_100921488 != -1)
  {
    swift_once();
  }

  v29 = sub_100750534();
  sub_10000D0FC(v29, qword_100981AD0);
  v30 = sub_100753C14();
  sub_100750944();
  v55 = v30;
  sub_100750934();
  v31 = *(v10 + 8);
  v31(v12, v9);
  sub_100750894();
  v31(v15, v9);
  sub_1007508F4();
  v31(v18, v9);
  sub_1007508E4();
  v31(v21, v9);
  sub_100750904();
  v31(v24, v9);
  sub_100750BB4();
  v32 = v53;
  sub_100750BE4();
  v33 = v28;
  if (sub_100753804())
  {
    v34 = v56;
    sub_1001C1510(v28, v56);
  }

  else
  {
    v34 = v56;
    sub_1001C1848();
  }

  (*(v57 + 32))(v61, v34, v58);
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v35 = v60;
  v69[3] = v60;
  v69[4] = &protocol witness table for LabelPlaceholder;
  v36 = sub_10000D134(v69);
  v37 = v59;
  (*(v59 + 16))(v36, v32, v35);
  sub_10074A7D4();
  swift_allocObject();
  *&v70 = sub_10074A7C4();
  sub_100559A3C(&qword_10092C068, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
  v38 = v62;
  sub_100750594();
  swift_getOpaqueTypeConformance2();
  v39 = v64;
  sub_100751254();
  v41 = v40;

  (*(v63 + 8))(v38, v39);
  (*(v37 + 8))(v32, v35);
  sub_10074A764();
  *&v70 = v42;
  sub_100747BA4();
  v43 = v66;
  sub_1007502D4();
  sub_100750564();
  v45 = v44;
  swift_unknownObjectRelease();
  v46 = v68;
  v47 = *(v67 + 8);
  v47(v43, v68);
  sub_10074A774();
  *&v70 = v48;
  sub_100747BA4();
  sub_1007502D4();
  sub_100750564();
  v50 = v49;
  swift_unknownObjectRelease();
  v47(v43, v46);
  return v41 + v45 + v50;
}

uint64_t sub_100559A3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100559A88(void *a1)
{
  if (*v1 == *a1)
  {
    v2 = v1;
    if (sub_1007544C4())
    {
      type metadata accessor for ActionDebugSetting();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v4 = result;
      v5 = *(result + 56) == v2[7] && *(result + 64) == v2[8];
      if (v5 || (sub_100754754() & 1) != 0)
      {
        v6 = v4[10];
        v7 = v2[10];
        if (v6)
        {
          if (!v7 || (v4[9] != v2[9] || v6 != v7) && (sub_100754754() & 1) == 0)
          {
            return 0;
          }

LABEL_16:
          v8 = v4[11];
          if (v8)
          {

            v10 = v8(v9);
            v12 = v11;
            v13 = v2[11];
            if (v13)
            {
              v14 = v10;
              v15 = v13();
              v17 = v16;
              if (v12)
              {
                if (v16)
                {
                  if (v14 != v15 || v12 != v16)
                  {
                    v21 = sub_100754754();

                    return v21 & 1;
                  }

                  goto LABEL_32;
                }

                goto LABEL_28;
              }

LABEL_25:

              if (!v17)
              {
                return 1;
              }

              goto LABEL_29;
            }

            if (v11)
            {
LABEL_28:

LABEL_29:

              return 0;
            }
          }

          else
          {
            v18 = v2[11];

            if (v18)
            {
              v18(v19);
              v17 = v20;
              goto LABEL_25;
            }
          }

LABEL_32:

          return 1;
        }

        if (!v7)
        {
          goto LABEL_16;
        }
      }
    }
  }

  return 0;
}

double sub_100559C98(uint64_t a1, __n128 a2)
{
  sub_1007544D4();
  sub_100753174();
  if (*(v2 + 80))
  {
    sub_100754854(1u);
    v3 = sub_100753174();
    v4 = *(v2 + 88);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_100754854(0);
    v4 = *(v2 + 88);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  v4(v3);
  if (v5)
  {
    sub_100754854(1u);
    sub_100753174();
    goto LABEL_8;
  }

LABEL_7:
  sub_100754854(0);
LABEL_8:

  return result;
}

double sub_100559D84()
{

  sub_1000164A8(*(v0 + 88), *(v0 + 96));

  return result;
}

uint64_t sub_100559DC4()
{
  sub_100016994(v0 + 16);

  sub_1000164A8(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

unint64_t sub_100559E60(uint64_t a1, int *a2)
{
  v3 = sub_10049CD00(a1, a2);
  sub_10055A284();
  sub_100753284();
  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  return v3;
}

void sub_100559EF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for SeparatorSupplementaryView(0);
  if (sub_1007539C4() == a1 && v10 == a2)
  {

    goto LABEL_10;
  }

  v12 = sub_100754754();

  if (v12)
  {
LABEL_10:
    a5[3] = sub_10000C518(&qword_100934200, &unk_1007C8920);
    a5[4] = sub_10036B194();
    sub_10000D134(a5);

    sub_1007539D4();
    sub_10074D744();
    return;
  }

  sub_1004989E4(a1, a2, a3, a4, a5);
}

uint64_t sub_10055A040(uint64_t a1, __n128 a2)
{
  v3 = sub_100747524();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100747564();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - v13;
  (*(v4 + 104))(v6, enum case for ComponentSeparator.Position.top(_:), v3, v12);
  sub_100747534();
  (*(v8 + 16))(v10, v14, v7);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v8 + 24))(a1 + v15, v10, v7);
  swift_endAccess();
  sub_10050F87C();
  v16 = *(v8 + 8);
  v16(v10, v7);
  return (v16)(v14, v7);
}

id sub_10055A284()
{
  v20 = sub_100754724();
  v0 = *(v20 - 8);
  __chkstk_darwin(v20);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007457D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007457C4();
  v7 = objc_opt_self();
  v8 = [v7 fractionalWidthDimension:1.0];
  v9 = sub_100747B94();
  sub_100747554();
  v11 = v10;

  v12 = [v7 absoluteDimension:v11];
  v13 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v12];

  type metadata accessor for SeparatorSupplementaryView(0);
  sub_1007539C4();
  sub_100747BA4();
  sub_1007502D4();
  sub_10022BF6C();
  sub_100750564();
  v15 = v14;
  swift_unknownObjectRelease();
  (*(v0 + 8))(v2, v20);
  v16 = sub_100753064();

  v17 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v13 elementKind:v16 alignment:1 absoluteOffset:{0.0, v15}];

  (*(v4 + 8))(v6, v3);
  return v17;
}

double sub_10055A570(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10000C518(&qword_1009332E8, &unk_1007C9F60);
  sub_100039C50(v4, a3);
  sub_10000D0FC(v4, a3);
  __asm { FMOV            V0.2D, #16.0 }

  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  type metadata accessor for UIEdgeInsets(0);
  sub_100743484();
  return result;
}

uint64_t sub_10055A61C()
{
  v0 = sub_10000C518(&qword_100929350, &unk_1007ACE60);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000C518(&qword_1009332E8, &unk_1007C9F60);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - v3;
  v5 = sub_10074AA24();
  sub_100039C50(v5, qword_100982398);
  sub_10000D0FC(v5, qword_100982398);
  if (qword_100921828 != -1)
  {
    swift_once();
  }

  v6 = sub_10000D0FC(v1, qword_100982368);
  (*(v2 + 16))(v4, v6, v1);
  v8[24] = &type metadata for Double;
  v8[25] = &protocol witness table for Double;
  v8[20] = &protocol witness table for Double;
  v8[21] = 0x4000000000000000;
  v8[19] = &type metadata for Double;
  v8[15] = &protocol witness table for Double;
  v8[16] = 0x4028000000000000;
  v8[14] = &type metadata for Double;
  v8[10] = &protocol witness table for Double;
  v8[11] = 0x4028000000000000;
  v8[9] = &type metadata for Double;
  v8[5] = &protocol witness table for Double;
  v8[6] = 0x406B800000000000;
  v8[4] = &type metadata for Double;
  v8[1] = 0x4066800000000000;
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_10000C518(&qword_100929358, &unk_1007C9F70);
  sub_100743484();
  return sub_10074AA04();
}

char *sub_10055A860(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10000C518(&qword_100932560, qword_1007A7BB0);
  __chkstk_darwin(v10 - 8);
  v71 = &v68 - v11;
  v12 = sub_10074AB44();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v16 - 8);
  v18 = &v68 - v17;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_itemLayoutContext;
  v20 = sub_1007469A4();
  (*(*(v20 - 8) + 56))(&v4[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_shadowView;
  sub_100743034();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_containerView;
  *&v4[v22] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_achievementGroupView] = 0;
  v69 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  if (qword_100921210 != -1)
  {
    swift_once();
  }

  v23 = sub_100750534();
  v24 = sub_10000D0FC(v23, qword_100981368);
  v25 = *(v23 - 8);
  v75 = *(v25 + 16);
  v75(v18, v24, v23);
  v74 = *(v25 + 56);
  v74(v18, 0, 1, v23);
  v26 = enum case for DirectionalTextAlignment.leading(_:);
  v73 = *(v13 + 104);
  v73(v15, enum case for DirectionalTextAlignment.leading(_:), v12);
  v27 = sub_100745C84();
  v72 = v12;
  v28 = v27;
  v29 = objc_allocWithZone(v27);
  *&v4[v69] = sub_100745C74();
  v69 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  if (qword_100921218 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v23, qword_100981380);
  v75(v18, v30, v23);
  v74(v18, 0, 1, v23);
  v73(v15, v26, v72);
  v31 = objc_allocWithZone(v28);
  *&v4[v69] = sub_100745C74();
  v69 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_completedLabel;
  if (qword_100921220 != -1)
  {
    swift_once();
  }

  v32 = sub_10000D0FC(v23, qword_100981398);
  v75(v18, v32, v23);
  v74(v18, 0, 1, v23);
  v73(v15, v26, v72);
  v33 = objc_allocWithZone(v28);
  *&v4[v69] = sub_100745C74();
  if (qword_100921838 != -1)
  {
    swift_once();
  }

  v34 = sub_10074AA24();
  v35 = sub_10000D0FC(v34, qword_100982398);
  (*(*(v34 - 8) + 16))(v5 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_metrics, v35, v34);
  v76.receiver = v5;
  v76.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v76, "initWithFrame:", a1, a2, a3, a4);
  v37 = [v36 contentView];
  [v37 _setContinuousCornerRadius:20.0];

  v38 = [v36 contentView];
  [v38 setClipsToBounds:0];

  v39 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_shadowView;
  v40 = qword_100920508;
  v41 = *&v36[OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_shadowView];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = sub_10074F0C4();
  v43 = sub_10000D0FC(v42, qword_10097E2D8);
  v44 = *(v42 - 8);
  v45 = v71;
  (*(v44 + 16))(v71, v43, v42);
  (*(v44 + 56))(v45, 0, 1, v42);
  sub_100743014();

  [*&v36[v39] _setContinuousCornerRadius:20.0];
  v46 = [v36 contentView];
  [v46 addSubview:*&v36[v39]];

  v47 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_containerView;
  [*&v36[OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_containerView] setClipsToBounds:1];
  v48 = [v36 contentView];
  [v48 addSubview:*&v36[v47]];

  v49 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  v50 = *&v36[OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel];
  sub_10000D198();
  v51 = v50;
  v52 = sub_100753DD4();
  [v51 setTextColor:v52];

  v53 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  v54 = *&v36[OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel];
  v55 = sub_100753DD4();
  [v54 setTextColor:v55];

  v56 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_completedLabel;
  v57 = *&v36[OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_completedLabel];
  v58 = sub_100753DD4();
  [v57 setTextColor:v58];

  [*&v36[v49] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v56] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v53] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v49] _setMinimumFontSize:20.0];
  [*&v36[v56] _setMinimumFontSize:11.0];
  [*&v36[v53] _setMinimumFontSize:11.0];
  v59 = [v36 contentView];
  [v59 addSubview:*&v36[v53]];

  v60 = [v36 contentView];
  [v60 addSubview:*&v36[v49]];

  v61 = [v36 contentView];
  [v61 addSubview:*&v36[v56]];

  v62 = [v36 traitCollection];
  v63 = [v62 userInterfaceStyle];

  if (v63 == 2)
  {
    v64 = sub_100753E34();
  }

  else
  {
    v64 = sub_100753E04();
  }

  v65 = v64;
  [*&v36[v39] setBackgroundColor:v64];

  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1007A5A00;
  *(v66 + 32) = sub_100751624();
  *(v66 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100753D24();

  swift_unknownObjectRelease();

  return v36;
}

void sub_10055B240()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  sub_10000D198();
  if (v3 == 2)
  {
    v4 = sub_100753E34();
  }

  else
  {
    v4 = sub_100753E04();
  }

  v5 = v4;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_shadowView] setBackgroundColor:?];
}

id sub_10055B340()
{
  ObjectType = swift_getObjectType();
  v25 = sub_100750354();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074AA24();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10074AA44();
  v26 = *(v27 - 8);
  *&v9 = __chkstk_darwin(v27).n128_u64[0];
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43.receiver = v0;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, "layoutSubviews", v9);
  v12 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_shadowView];
  [v0 bounds];
  [v12 setFrame:?];
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_containerView];
  [v0 bounds];
  result = [v13 setFrame:?];
  v15 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_achievementGroupView];
  if (v15)
  {
    v16 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_metrics;
    swift_beginAccess();
    (*(v6 + 16))(v8, &v0[v16], v5);
    v41 = sub_100748924();
    v42 = &protocol witness table for UIView;
    v40 = v15;
    v17 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel];
    v38 = sub_100745C84();
    v39 = &protocol witness table for UILabel;
    v36 = &protocol witness table for UILabel;
    v37 = v17;
    v18 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel];
    v35 = v38;
    v33 = &protocol witness table for UILabel;
    v34 = v18;
    v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_completedLabel];
    v32 = v38;
    v31 = v19;
    v30 = 0;
    v29 = 0u;
    v28 = 0u;
    v20 = v15;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    sub_10074AA34();
    [v0 bounds];
    sub_10074A9E4();

    (*(v2 + 8))(v4, v25);
    return (*(v26 + 8))(v11, v27);
  }

  return result;
}

uint64_t type metadata accessor for AchievementSummaryCollectionViewCell(uint64_t a1)
{
  result = qword_10093E248;
  if (!qword_10093E248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10055B894(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    sub_10074AA24();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10055B980()
{
  v29 = sub_10074AB44();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_itemLayoutContext;
  v8 = sub_1007469A4();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_shadowView;
  sub_100743034();
  *(v0 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_containerView;
  *(v0 + v10) = [objc_allocWithZone(UIView) init];
  v30 = v0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_achievementGroupView) = 0;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  if (qword_100921210 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v13 = sub_10000D0FC(v12, qword_100981368);
  v14 = *(v12 - 8);
  v27 = *(v14 + 16);
  v27(v6, v13, v12);
  v26 = *(v14 + 56);
  v26(v6, 0, 1, v12);
  v15 = enum case for DirectionalTextAlignment.leading(_:);
  v16 = *(v1 + 104);
  v28 = v1 + 104;
  v16(v3, enum case for DirectionalTextAlignment.leading(_:), v29);
  v17 = sub_100745C84();
  v18 = objc_allocWithZone(v17);
  *(v30 + v11) = sub_100745C74();
  v19 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  if (qword_100921218 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v12, qword_100981380);
  v27(v6, v20, v12);
  v26(v6, 0, 1, v12);
  v16(v3, v15, v29);
  v21 = objc_allocWithZone(v17);
  *(v30 + v19) = sub_100745C74();
  v22 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_completedLabel;
  if (qword_100921220 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v12, qword_100981398);
  v27(v6, v23, v12);
  v26(v6, 0, 1, v12);
  v16(v3, v15, v29);
  v24 = objc_allocWithZone(v17);
  *(v30 + v22) = sub_100745C74();
  sub_100754644();
  __break(1u);
}

void *sub_10055BE28(uint64_t a1, uint64_t a2)
{
  v2 = sub_10055C0E4(a1, a2);
  if (v2)
  {
    v3 = v2;
    sub_100753284();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
  }

  return _swiftEmptyArrayStorage;
}

double sub_10055BECC@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a3;
  v8 = sub_1007469A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  type metadata accessor for SeparatorSupplementaryView(0);
  if (sub_1007539E4())
  {

    v11 = sub_1007539D4();
    v19[1] = v12;
    v19[2] = v11;
    v13 = swift_allocObject();
    v19[0] = a4;
    v14 = v13;
    swift_weakInit();
    (*(v9 + 16))(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v8);
    v15 = *(v9 + 80);
    v20 = a1;
    v16 = (v15 + 24) & ~v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    (*(v9 + 32))(v17 + v16, v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19[0];
    *(a5 + 24) = sub_10000C518(&qword_100934200, &unk_1007C8920);
    *(a5 + 32) = sub_10036B194();
    sub_10000D134(a5);

    sub_10074D744();
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

id sub_10055C0E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10074F704();
  v83 = *(v4 - 8);
  v84 = v4;
  __chkstk_darwin(v4);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100747524();
  v8 = *(v7 - 8);
  v86 = v7;
  v87 = v8;
  __chkstk_darwin(v7);
  v85 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v77 - v11;
  __chkstk_darwin(v13);
  v15 = &v77 - v14;
  v16 = sub_10000C518(&qword_1009341F0, &qword_1007BB518);
  __chkstk_darwin(v16 - 8);
  v18 = &v77 - v17;
  v19 = sub_100747564();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10055CAD8(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10055D440(v18);
    return 0;
  }

  (*(v20 + 32))(v22, v18, v19);
  if (((*(*v2 + 128))(a1) & 1) == 0)
  {
    (*(v20 + 8))(v22, v19);
    return 0;
  }

  v82 = v22;
  sub_100747544();
  v80 = *(v87 + 88);
  v23 = v80(v15, v86);
  v78 = enum case for ComponentSeparator.Position.bottom(_:);
  v79 = enum case for ComponentSeparator.Position.top(_:);
  if (v23 == enum case for ComponentSeparator.Position.top(_:) || (v24 = v23, v23 == enum case for ComponentSeparator.Position.bottom(_:)))
  {
    v39 = objc_opt_self();
    v40 = [v39 fractionalWidthDimension:1.0];
    swift_getKeyPath();
    sub_100746914();

    v41 = v88;
    sub_100747554();
    v43 = v42;

    v44 = [v39 absoluteDimension:v43];
    v45 = [objc_opt_self() sizeWithWidthDimension:v40 heightDimension:v44];

    v46 = v45;
  }

  else
  {
    v25 = enum case for ComponentSeparator.Position.leading(_:);
    v26 = objc_opt_self();
    v27 = v26;
    if (v24 != v25 && v24 != enum case for ComponentSeparator.Position.trailing(_:))
    {
      v81 = [v26 fractionalWidthDimension:1.0];
      swift_getKeyPath();
      sub_100746914();

      v28 = v88;
      sub_100747554();
      v30 = v29;

      v31 = [v27 absoluteDimension:v30];
      v32 = objc_opt_self();
      v33 = v81;
      v34 = [v32 sizeWithWidthDimension:v81 heightDimension:v31];

      v35 = *(v87 + 8);
      v81 = v34;
      v36 = v15;
      v37 = v86;
      v35(v36, v86);
      goto LABEL_14;
    }

    swift_getKeyPath();
    sub_100746914();

    v47 = v88;
    sub_100747554();
    v49 = v48;

    v50 = [v27 absoluteDimension:v49];
    v51 = [v27 fractionalHeightDimension:1.0];
    v52 = [objc_opt_self() sizeWithWidthDimension:v50 heightDimension:v51];

    v46 = v52;
  }

  v81 = v46;
  v37 = v86;
LABEL_14:
  v53 = v82;
  sub_100747544();
  v54 = v80(v12, v37);
  if (v54 == v79)
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10074F5B4();
    v56 = v55;
    (*(v83 + 8))(v6, v84);
    v57 = [objc_opt_self() layoutAnchorWithEdges:1 absoluteOffset:{0.0, v56 * -0.5}];
  }

  else if (v54 == v78)
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10074F5B4();
    v59 = v58;
    (*(v83 + 8))(v6, v84);
    v57 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, v59 * 0.5}];
  }

  else
  {
    if (v54 != enum case for ComponentSeparator.Position.leading(_:))
    {
      v68 = enum case for ComponentSeparator.Position.trailing(_:);
      v69 = v54;
      swift_getKeyPath();
      sub_100746914();

      v70 = (v83 + 8);
      if (v69 == v68)
      {
        sub_10074F634();
        v72 = v71;
        (*v70)(v6, v84);
        v62 = [objc_opt_self() layoutAnchorWithEdges:8 absoluteOffset:{v72 * 0.5, 0.0}];
        v37 = v86;
      }

      else
      {
        sub_10074F5B4();
        v74 = v73;
        (*v70)(v6, v84);
        v75 = [objc_opt_self() layoutAnchorWithEdges:1 absoluteOffset:{0.0, v74 * -0.5}];
        v76 = *(v87 + 8);
        v62 = v75;
        v37 = v86;
        v76(v12, v86);
      }

      v53 = v82;
      goto LABEL_21;
    }

    swift_getKeyPath();
    sub_100746914();

    sub_10074F634();
    v61 = v60;
    (*(v83 + 8))(v6, v84);
    v57 = [objc_opt_self() layoutAnchorWithEdges:2 absoluteOffset:{v61 * -0.5, 0.0}];
  }

  v62 = v57;
LABEL_21:
  type metadata accessor for SeparatorSupplementaryView(0);
  v63 = v85;
  sub_100747544();
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_1007545F4();
  v90._countAndFlagsBits = 95;
  v90._object = 0xE100000000000000;
  sub_1007531B4(v90);
  v91._countAndFlagsBits = sub_1007539F4();
  sub_1007531B4(v91);

  (*(v87 + 8))(v63, v37);
  v64 = sub_100753064();

  v65 = objc_opt_self();
  v66 = v81;
  v67 = [v65 supplementaryItemWithLayoutSize:v81 elementKind:v64 containerAnchor:v62];

  (*(v20 + 8))(v53, v19);
  return v67;
}

uint64_t sub_10055CAD8@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_10000C518(&qword_1009341F0, &qword_1007BB518);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_10000C888((v3 + 16), *(v3 + 40));
  if (sub_10074D754() && swift_conformsToProtocol2())
  {
    sub_10074DCC4();
    v8 = sub_100747564();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(a3, v7, v8);
      return (*(v9 + 56))(a3, 0, 1, v8);
    }

    sub_10055D440(v7);
  }

  v10 = sub_100747564();
  return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
}

uint64_t sub_10055CCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_10000C518(&qword_1009341F0, &qword_1007BB518);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  v11 = sub_100747564();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v22 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000C824(result + 16, v22);

    sub_10000C888(v22, v22[3]);
    v19 = sub_10074D754();
    result = sub_10000C620(v22);
    if (v19)
    {
      result = swift_conformsToProtocol2();
      if (result)
      {
        sub_10074DCC4();
        if ((*(v12 + 48))(v10, 1, v11) == 1)
        {
          return sub_10055D440(v10);
        }

        else
        {
          (*(v12 + 32))(v17, v10, v11);
          (*(v12 + 16))(v14, v17, v11);
          v20 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_separator;
          swift_beginAccess();
          (*(v12 + 24))(a1 + v20, v14, v11);
          swift_endAccess();
          sub_10050F87C();
          v21 = *(v12 + 8);
          v21(v14, v11);
          return (v21)(v17, v11);
        }
      }
    }
  }

  return result;
}

uint64_t sub_10055CFA8()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  v10 = *(v5 + 8);
  v34 = v5 + 8;
  v35 = v10;
  v10(v9, v4);
  v11 = *(v36 + 16);

  v33 = sub_100746954();
  swift_getKeyPath();
  sub_100746914();

  sub_10074F594();
  v13 = v12;
  v14 = v12;
  v15 = *(v1 + 8);
  v31 = v0;
  result = v15(v3, v0);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v13)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = v11 % v13;
  if (!v17)
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10074F594();
    v19 = v18;
    v20 = v18;
    result = v15(v3, v31);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v19 <= -9.22337204e18)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v19 >= 9.22337204e18)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    v17 = v19;
  }

  v21 = __OFSUB__(v11, v17);
  v22 = v11 - v17;
  if (v21)
  {
    goto LABEL_29;
  }

  v23 = v22 - 1;
  if (__OFSUB__(v22, 1))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  v24 = v35;
  v35(v9, v4);
  v25 = v36;
  result = sub_100746954();
  if (v25 != 1)
  {
    v29 = v23 < result;
LABEL_19:
    v28 = v33;
    goto LABEL_20;
  }

  v26 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_31;
  }

  swift_getKeyPath();
  v27 = v32;
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  v24(v27, v4);
  if (v36 == -1)
  {
    v29 = 1;
    goto LABEL_19;
  }

  v28 = v33;
  if (v36)
  {
    v29 = v26 % v36 == 0;
  }

  else
  {
    v29 = v26 == 0;
  }

LABEL_20:
  if (v11 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v11;
  }

  return v28 != v30 - 1 && !v29;
}

uint64_t sub_10055D440(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009341F0, &qword_1007BB518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10055D4AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10055D4E4()
{
  v1 = sub_1007469A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

double sub_10055D5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v10 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v10 - 8);
  v53 = v44 - v11;
  v51 = sub_10074C3E4();
  v47 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = v44 - v13;
  v14 = sub_10000C518(&unk_1009259B0, &unk_1007B0620);
  __chkstk_darwin(v14 - 8);
  v46 = v44 - v15;
  v16 = sub_10074D734();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  *&v21 = __chkstk_darwin(v20 - 8).n128_u64[0];
  v23 = v44 - v22;
  v24 = [v6 contentView];
  [a6 pageMarginInsets];
  [v24 setLayoutMargins:?];

  v25 = sub_100744BF4();
  v45 = a3;
  if (!v25)
  {
    goto LABEL_7;
  }

  if (v25 >> 62)
  {
    v29 = v25;
    v30 = sub_100754664();
    v25 = v29;
    if (v30)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:

LABEL_7:
    [*&v6[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_8;
  }

LABEL_4:
  v26 = v25;
  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  v27 = v54[0];
  v28 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_iconGridView];
  [*&v7[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:0];
  *(v28 + OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_impressionableArtworks) = v26;

  *(v28 + OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_artworkLoader) = v27;

  sub_10071A850(v26, v27);

LABEL_8:
  v44[1] = *&v7[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_offerButton];
  v31 = sub_100744C34();
  v32 = sub_100744C14();
  v33 = sub_100744C04();
  (*(v17 + 104))(v19, enum case for OfferButtonPresenterViewAlignment.center(_:), v16);
  (*(v17 + 56))(v46, 1, 1, v16);
  sub_10055DF5C(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  sub_10074A9C4();
  v34 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
  (*(*(v34 - 8) + 56))(v23, 0, 1, v34);
  v35 = v47;
  v36 = v51;
  (*(v47 + 104))(v48, enum case for OfferButtonSubtitlePosition.above(_:), v51);
  (*(v35 + 56))(v53, 1, 1, v36);
  sub_10055DF5C(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v37 = v49;
  sub_10074A9C4();
  sub_10015DE40(v31, v32, v33, v23, v37, v45, 0, 0);

  (*(v50 + 8))(v37, v52);
  sub_10005652C(v23);
  sub_10074B294();
  sub_100752764();
  sub_100752D34();
  v38 = v54[0];
  sub_100744C24();
  sub_100744C44();
  v39 = sub_10074B1F4();
  swift_allocObject();
  v40 = v38;
  v41 = sub_10074B1D4();
  sub_10055DF5C(&unk_1009332C8, type metadata accessor for ArcadeShowcaseCollectionViewCell, &unk_1007CA140);
  swift_unknownObjectRetain();
  sub_10074B1E4();
  v54[3] = v39;
  v54[0] = v41;
  v42 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
  swift_beginAccess();

  sub_1001183AC(v54, &v7[v42]);
  swift_endAccess();
  [v7 setNeedsLayout];

  return result;
}

double sub_10055DD58(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel];
  v6 = [v5 text];
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = v6;
  v9 = sub_100753094();
  v11 = v10;

  if (!a2)
  {

    v14 = 0;
    goto LABEL_12;
  }

  if (v9 != a1 || v11 != a2)
  {
    v13 = sub_100754754();

    if (v13)
    {
      return result;
    }

LABEL_10:
    v14 = sub_100753064();
LABEL_12:
    [v5 setText:v14];

    [v5 setHidden:sub_100753114() & 1];

    [v2 setNeedsLayout];
    return result;
  }

  return result;
}

uint64_t sub_10055DF5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10055DFA4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_100743184();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074B294();
  sub_100752764();
  sub_100752D34();
  v14 = v22[1];
  sub_10074B274();
  if (sub_100743154())
  {
    v15 = sub_100744C24();
  }

  else
  {
    v15 = sub_100744C44();
  }

  v17 = v15;
  v18 = v16;
  swift_getObjectType();
  v19.n128_f64[0] = a1;
  v20 = sub_100205448(v17, v18, a7, v19, a2);

  (*(v11 + 8))(v13, v10);
  return v20;
}

id sub_10055E148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100741264();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension23URLActivityItemProvider_shareSheetData] = a1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension23URLActivityItemProvider_artworkLoader] = a2;
  v12 = qword_100921840;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_10093E370;

  sub_1004477E4(a3, v13);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension23URLActivityItemProvider_excludedActivityTypes] = v14;
  sub_100744FE4();
  sub_100741204(v15);
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  v18 = type metadata accessor for URLActivityItemProvider();
  v21.receiver = v4;
  v21.super_class = v18;
  v19 = objc_msgSendSuper2(&v21, "initWithPlaceholderItem:", v17);

  return v19;
}

void sub_10055E518(uint64_t *a1@<X8>)
{
  v3 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = sub_100741264();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 activityType];
  if (!v11)
  {
    a1[3] = v6;
    sub_10000D134(a1);
    sub_100744FE4();
    return;
  }

  v12 = v11;
  sub_10000C518(&unk_10093E480, qword_1007BEDF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  *(inited + 32) = UIActivityTypeAirDrop;
  v14 = UIActivityTypeAirDrop;
  sub_100745014();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_10000C8CC(v5, &unk_100923970, &qword_1007A6B90);
  }

  else
  {
    v18[0] = *(v7 + 32);
    v15 = (v18[0])(v10, v5, v6);
    v19 = v12;
    __chkstk_darwin(v15);
    v18[-2] = &v19;
    v16 = sub_100073BF8(sub_1000748C4, &v18[-4], inited);

    if ((v16 & 1) == 0)
    {
      a1[3] = v6;
      v17 = sub_10000D134(a1);
      (v18[0])(v17, v10, v6);
      goto LABEL_9;
    }

    (*(v7 + 8))(v10, v6);
  }

  a1[3] = v6;
  sub_10000D134(a1);
  sub_100744FE4();
LABEL_9:
}

id sub_10055E840(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for URLActivityItemProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10055E9D8()
{
  v1 = sub_10074F314();
  v120 = *(v1 - 1);
  v121 = v1;
  __chkstk_darwin(v1);
  v119 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10074ED34();
  v116 = *(v3 - 8);
  v117 = v3;
  __chkstk_darwin(v3);
  v115 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_1009295C8, &qword_1007AD3B8);
  __chkstk_darwin(v5 - 8);
  v118 = &v112 - v6;
  v123 = sub_100744FF4();
  v7 = *(v123 - 1);
  __chkstk_darwin(v123);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v10 - 8);
  v12 = &v112 - v11;
  v13 = sub_100741264();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v114 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v112 - v17;
  v124 = [objc_allocWithZone(LPLinkMetadata) init];
  v122 = v0;
  sub_100745014();
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    sub_100744FE4();
    v20 = v19(v12, 1, v13);
    v22 = v13;
    v23 = v14;
    if (v20 != 1)
    {
      sub_10000C8CC(v12, &unk_100923970, &qword_1007A6B90);
    }
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    v22 = v13;
    v23 = v14;
  }

  sub_100741204(v21);
  v25 = v24;
  v28 = *(v23 + 8);
  v26 = (v23 + 8);
  v27 = v28;
  v28(v18, v22);
  v29 = v124;
  [v124 setURL:v25];

  sub_100745004();
  v30 = v123;
  v31 = (*(v7 + 88))(v9, v123);
  if (v31 == enum case for ShareSheetData.Metadata.article(_:))
  {
    (*(v7 + 96))(v9, v30);
    if (sub_10074B754())
    {
      v32 = sub_10074F1E4();
      if (v32)
      {
        v33 = v32;
        v34 = _sSo7UIImageC22SubscribePageExtensionE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(v32);
        v35 = v118;
        if (v34)
        {
          v36 = v34;
          v37 = [objc_allocWithZone(LPImage) initWithPlatformImage:v34];

          v33 = v36;
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
        v35 = v118;
      }

      sub_10074F264();
      v81 = sub_10074F284();
      (*(*(v81 - 8) + 56))(v35, 0, 1, v81);
      sub_10074F354();
      sub_10000C8CC(v35, &qword_1009295C8, &qword_1007AD3B8);
      v82 = objc_allocWithZone(sub_100747F94());
      v83 = sub_100747F84();
      v84 = [objc_allocWithZone(LPImage) initWithItemProvider:v83 properties:0 placeholderImage:v37];
      [v29 setImage:v84];
    }

    sub_10074B744();
    v85 = sub_100753064();

    [v29 setTitle:v85];

    v86 = [objc_allocWithZone(LPAppStoreStoryMetadata) init];
    sub_10074B764();
    if (v87)
    {
LABEL_51:
      v88 = sub_100753064();

LABEL_59:
      [v86 setSubtitle:v88];

      [v29 setSpecialization:v86];

      return v29;
    }

LABEL_58:
    v88 = 0;
    goto LABEL_59;
  }

  if (v31 != enum case for ShareSheetData.Metadata.product(_:))
  {
    if (v31 != enum case for ShareSheetData.Metadata.appEvent(_:))
    {
      (*(v7 + 8))(v9, v30);
      return v29;
    }

    (*(v7 + 96))(v9, v30);
    if (sub_100741834())
    {
      v41 = sub_10074F1E4();
      if (v41)
      {
        v42 = v41;
        v43 = _sSo7UIImageC22SubscribePageExtensionE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(v41);
        if (v43)
        {
          v44 = v43;
          v45 = [objc_allocWithZone(LPImage) initWithPlatformImage:v43];

          v42 = v44;
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {
        v45 = 0;
      }

      sub_10074F364();
      v89 = objc_allocWithZone(sub_100747F94());
      v90 = sub_100747F84();
      v91 = [objc_allocWithZone(LPImage) initWithItemProvider:v90 properties:0 placeholderImage:v45];
      [v29 setImage:v91];
    }

    sub_100741824();
    v92 = sub_100753064();

    [v29 setTitle:v92];

    v86 = [objc_allocWithZone(LPAppStoreStoryMetadata) init];
    sub_100741844();
    if (v93)
    {
      goto LABEL_51;
    }

    goto LABEL_58;
  }

  (*(v7 + 96))(v9, v30);
  v38 = [objc_allocWithZone(LPiTunesMediaSoftwareMetadata) init];
  sub_10074B7B4();
  if (v39)
  {
    v40 = sub_100753064();
  }

  else
  {
    v40 = 0;
  }

  v47 = v116;
  v46 = v117;
  [v38 setStoreFrontIdentifier:v40];

  v48 = v38;
  v49 = v115;
  sub_10074B7E4();
  sub_10074ECF4();
  (*(v47 + 8))(v49, v46);
  v50 = sub_100753064();

  [v48 setStoreIdentifier:v50];

  sub_10074B7D4();
  v51 = sub_100753064();

  [v48 setName:v51];

  sub_10074B804();
  if (v52)
  {
    v53 = sub_100753064();
  }

  else
  {
    v53 = 0;
  }

  [v48 setSubtitle:v53];

  sub_10074B814();
  v112 = v27;
  if (v54)
  {
    v55 = sub_100753064();
  }

  else
  {
    v55 = 0;
  }

  [v48 setGenre:{v55, v112}];

  sub_10074B7C4();
  v56 = sub_10074F1E4();

  v57 = &_s11AppStoreKit7ArtworkCMa_ptr_0;
  v118 = v26;
  v113 = v22;
  v123 = v48;
  if (v56)
  {
    v58 = _sSo7UIImageC22SubscribePageExtensionE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(v56);
    if (v58)
    {
      v59 = [objc_allocWithZone(LPImageProperties) init];
      sub_10074B7C4();
      v60 = v119;
      sub_10074F324();

      v61 = sub_10074F304();
      v62 = v60;
      v57 = &_s11AppStoreKit7ArtworkCMa_ptr_0;
      (v120[1].super.isa)(v62, v121);
      [v59 setType:v61];
      v63 = [objc_allocWithZone(LPImage) initWithPlatformImage:v58 properties:v59];

      v58 = v63;
      v56 = v59;
    }
  }

  else
  {
    v58 = 0;
  }

  sub_10074B7C4();
  sub_10074F374();

  v64 = sub_100747F94();
  v65 = objc_allocWithZone(v64);
  v66 = sub_100747F84();
  v67 = [objc_allocWithZone(v57[311]) init];
  sub_10074B7C4();
  v68 = v119;
  sub_10074F324();

  v69 = sub_10074F304();
  (v120[1].super.isa)(v68, v121);
  [v67 setType:v69];
  v70 = objc_allocWithZone(LPImage);
  v121 = v67;
  v122 = v66;
  v71 = [v70 initWithItemProvider:v66 properties:v67 placeholderImage:v58];
  v72 = v123;
  [v123 setIcon:v71];

  result = sub_10074B7A4();
  if (!result)
  {
    isa = 0;
    v29 = v124;
    goto LABEL_66;
  }

  v74 = result & 0xFFFFFFFFFFFFFF8;
  v29 = v124;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

LABEL_61:

    isa = 0;
    goto LABEL_66;
  }

  v94 = result;
  v95 = sub_100754664();
  result = v94;
  if (!v95)
  {
    goto LABEL_61;
  }

LABEL_35:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_100754574();
  }

  else
  {
    if (!*(v74 + 16))
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }
  }

  v120 = v58;

  v75 = sub_100743854();

  if (!(v75 >> 62))
  {
    v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v76)
    {
      goto LABEL_40;
    }

LABEL_64:

LABEL_65:
    sub_10055FC30();
    isa = sub_100753294().super.isa;

    v58 = v120;
LABEL_66:
    [v72 setScreenshots:isa];

    [v72 setIsMessagesOnlyApp:sub_10074B774() & 1];
    if (sub_10074B794())
    {

      sub_10074F374();
      v96 = objc_allocWithZone(v64);
      v97 = sub_100747F84();
      v98 = v58;
      v99 = [objc_allocWithZone(LPImage) initWithItemProvider:v97 properties:0 placeholderImage:0];
      [v72 setMessagesAppIcon:v99];

      v58 = v98;
    }

    result = sub_10074B7F4();
    if (!result)
    {
      goto LABEL_77;
    }

    v100 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      v109 = result;
      v110 = sub_100754664();
      result = v109;
      v101 = v113;
      if (v110)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v101 = v113;
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_71:
        if ((result & 0xC000000000000001) != 0)
        {
          v102 = v58;
          sub_100754574();
          goto LABEL_74;
        }

        if (*(v100 + 16))
        {
          v102 = v58;

LABEL_74:

          v103 = v114;
          sub_10074EC24();
          v104 = objc_allocWithZone(LPVideo);
          sub_100741204(v105);
          v107 = v106;
          v108 = [v104 initWithStreamingURL:v106 hasAudio:0];

          v112(v103, v101);
          [v72 setPreviewVideo:v108];

          v58 = v102;
LABEL_77:
          v111 = v72;
          [v29 setSpecialization:v111];

          return v29;
        }

        goto LABEL_81;
      }
    }

    goto LABEL_77;
  }

  v76 = sub_100754664();
  if (!v76)
  {
    goto LABEL_64;
  }

LABEL_40:
  v125 = _swiftEmptyArrayStorage;
  result = sub_1007545C4();
  if ((v76 & 0x8000000000000000) == 0)
  {
    v77 = 0;
    do
    {
      if ((v75 & 0xC000000000000001) != 0)
      {
        sub_100754574();
      }

      else
      {
      }

      ++v77;

      sub_10074F374();
      v78 = objc_allocWithZone(v64);
      v79 = sub_100747F84();
      [objc_allocWithZone(LPImage) initWithItemProvider:v79 properties:0 placeholderImage:0];

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
    }

    while (v76 != v77);

    v29 = v124;
    v72 = v123;
    goto LABEL_65;
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_10055FA74(__n128 a1)
{
  v1 = sub_100744FF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745004();
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == enum case for ShareSheetData.Metadata.article(_:))
  {
    (*(v2 + 96))(v4, v1);
    v6 = sub_10074B744();
  }

  else if (v5 == enum case for ShareSheetData.Metadata.product(_:))
  {
    (*(v2 + 96))(v4, v1);
    v6 = sub_10074B7D4();
  }

  else
  {
    if (v5 != enum case for ShareSheetData.Metadata.appEvent(_:))
    {
      (*(v2 + 8))(v4, v1);
      return 0;
    }

    (*(v2 + 96))(v4, v1);
    v6 = sub_100741824();
  }

  v7 = v6;

  return v7;
}

unint64_t sub_10055FC30()
{
  result = qword_10093E478;
  if (!qword_10093E478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093E478);
  }

  return result;
}

double sub_10055FC7C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100743084();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741D44();
  v10 = sub_10074EF34();
  v12 = v11;

  if (v12)
  {
    v26 = a4;
    v27 = v4;
    v28._countAndFlagsBits = 0x465F4E4F5F444441;
    v28._object = 0xEE005050415F524FLL;
    v29._object = 0x8000000100777750;
    v29._countAndFlagsBits = 0xD000000000000031;
    sub_1007458B4(v28, v29);
    sub_10000C518(&unk_100927770, &unk_1007BA6E0);
    v14 = swift_allocObject();
    v25 = xmmword_1007A5A00;
    *(v14 + 16) = xmmword_1007A5A00;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_1000DD048();
    *(v14 + 32) = v10;
    *(v14 + 40) = v12;

    sub_1007530B4();
    v16 = v15;

    v17 = sub_100741D04();
    if (v17)
    {
      v18 = v17;
      sub_10000C518(&qword_100923330, &qword_1007A6340);
      inited = swift_initStackObject();
      v24[1] = v16;
      v20 = inited;
      *(inited + 16) = v25;
      *(inited + 32) = v10;
      v21 = inited + 32;
      *(inited + 40) = v12;
      *(inited + 48) = v18;
      *(inited + 56) = v26;
      (*(v7 + 104))(v9, enum case for StyledText.MediaType.plainText(_:), v6);
      sub_100743094();
      swift_allocObject();

      v22 = sub_100743054();
      sub_10004DF04(v22, 0, v20);

      swift_setDeallocating();
      sub_10055FF7C(v21);
    }

    else
    {

      (*(v7 + 104))(v9, enum case for StyledText.MediaType.plainText(_:), v6);
      sub_100743094();
      swift_allocObject();
      v23 = sub_100743054();
      sub_10004DF04(v23, 0, _swiftEmptyArrayStorage);
    }
  }

  return result;
}

uint64_t sub_10055FF7C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100923338, &qword_1007A6348);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10055FFE8()
{
  type metadata accessor for BundleImage();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10093E490 = result;
  return result;
}

id sub_10056003C(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_100921848 != -1)
  {
    swift_once();
  }

  v6 = qword_10093E490;
  v7 = a3;
  v8 = sub_100753064();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v6 withConfiguration:v7];

  result = v9;
  if (!v9)
  {
    if (qword_100921ED0 != -1)
    {
      swift_once();
    }

    v11 = sub_100752E44();
    sub_10000D0FC(v11, qword_1009832E8);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    v15 = &type metadata for String;
    v13 = a1;
    v14 = a2;

    sub_100752444();
    sub_10000C8CC(&v13, &unk_100923520, &qword_1007A5A70);
    sub_100752D04();

    v12 = objc_allocWithZone(UIImage);
    return [v12 init];
  }

  return result;
}

id sub_10056028C(__n128 a1, uint64_t a2, objc_class *a3)
{
  v23 = a3;
  v3 = sub_10074F164();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_100741264();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074F3C4();
  sub_10074F154();
  (*(v4 + 8))(v6, v3);
  sub_100741254();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000C8CC(v9, &unk_100923970, &qword_1007A6B90);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v14 = sub_100741234();
    if (v15)
    {
      v16 = v15;
      v17 = v14;
      if (sub_10074F1C4())
      {
        v18.value.super.super.isa = v23;
        v19 = sub_10074F1B4(v18);
        v20 = sub_10056003C(v17, v16, v19);

        (*(v11 + 8))(v13, v10);
        return v20;
      }

      (*(v11 + 8))(v13, v10);
    }

    else
    {
      (*(v11 + 8))(v13, v10);
    }
  }

  return 0;
}

UIImage *_sSo7UIImageC22SubscribePageExtensionE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(void *a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  v11.width = 1.0;
  v11.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, v4);
  v5 = UIGraphicsGetCurrentContext();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [a1 CGColor];
    CGContextSetFillColorWithColor(v7, v8);

    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = 1.0;
    v12.size.height = 1.0;
    CGContextFillRect(v7, v12);
  }

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

__n128 sub_100560694(uint64_t a1, uint64_t a2)
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
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1005606C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100560710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100560788(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005607A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

void *sub_1005607F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v5 = v4;
  v117 = a1;
  v126 = a2;
  v8 = sub_1007507B4();
  v127 = *(v8 - 8);
  v128 = v8;
  __chkstk_darwin(v8);
  v122 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v113 - v11;
  __chkstk_darwin(v12);
  v120 = &v113 - v13;
  v130 = sub_100751144();
  v14 = *(v130 - 8);
  __chkstk_darwin(v130);
  v121 = (&v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v132 = (&v113 - v17);
  __chkstk_darwin(v18);
  v131 = (&v113 - v19);
  __chkstk_darwin(v20);
  v22 = (&v113 - v21);
  __chkstk_darwin(v23);
  v25 = (&v113 - v24);
  v133 = sub_100751154();
  v125 = *(v133 - 8);
  __chkstk_darwin(v133);
  v123 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v119 = &v113 - v29;
  v30 = *(v4 + 18);
  v31 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
  v32 = [*&v30[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label] hasContent];
  v124 = v30;
  if (v32 && ([v30 isHidden] & 1) == 0)
  {
    v129 = [*&v30[v31] isHidden];
  }

  else
  {
    v129 = 1;
  }

  v33 = *(v5 + 6);
  v34 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
  if ([*&v33[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label] hasContent] && (objc_msgSend(*&v33[v34], "isHidden") & 1) == 0)
  {
    v35 = [v33 isHidden];
  }

  else
  {
    v35 = 1;
  }

  sub_1000CD5F0((v5 + 104), &v138);
  if (*(&v139 + 1))
  {
    sub_100012160(&v138, v147);
    sub_10000C888(v147, v148);
    sub_100750434();
    v36 = *(v5 + 1);
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = v36;
    v37 = enum case for Resize.Rule.replaced(_:);
    v38 = *(v14 + 13);
    v39 = v130;
    v38(v25, enum case for Resize.Rule.replaced(_:), v130);
    v40 = *(v5 + 2);
    *(v22 + 3) = &type metadata for CGFloat;
    *(v22 + 4) = &protocol witness table for CGFloat;
    *v22 = v40;
    v38(v22, v37, v39);
    v41 = enum case for Resize.Rule.unchanged(_:);
    v38(v131, enum case for Resize.Rule.unchanged(_:), v39);
    v38(v132, v41, v39);
    v42 = v119;
    sub_100751164();
    v43 = v118;
    sub_100750794();
    v44 = v133;
    *(&v139 + 1) = v133;
    *&v140 = &protocol witness table for Resize;
    v45 = sub_10000D134(&v138);
    v46 = v5;
    v47 = v125;
    (*(v125 + 16))(v45, v42, v44);
    v48 = v120;
    sub_1007507A4();
    v49 = v128;
    v50 = *(v127 + 8);
    v50(v43, v128);
    sub_10000C620(&v138);
    v136[0] = v124;
    type metadata accessor for TodayTransitioningLabelView();
    sub_100750434();
    sub_1005618AC(v46, &v138);
    v51 = swift_allocObject();
    v52 = v145;
    *(v51 + 112) = v144;
    *(v51 + 128) = v52;
    *(v51 + 144) = v146[0];
    *(v51 + 153) = *(v146 + 9);
    v53 = v141;
    *(v51 + 48) = v140;
    *(v51 + 64) = v53;
    v54 = v143;
    *(v51 + 80) = v142;
    *(v51 + 96) = v54;
    v55 = v139;
    *(v51 + 16) = v138;
    *(v51 + 32) = v55;
    *(v51 + 169) = v129;
    v56 = v126;
    v126[3] = v49;
    v56[4] = &protocol witness table for VerticalStack;
    sub_10000D134(v56);
    sub_1007507A4();

    sub_10000C620(v137);
    v50(v48, v49);
    (*(v47 + 8))(v42, v44);
    return sub_10000C620(v147);
  }

  sub_1002C9F48(&v138);
  LODWORD(v114) = v35;
  sub_100750794();
  v137[0] = v33;
  v119 = type metadata accessor for TodayTransitioningLabelView();
  sub_100750434();
  *(v25 + 3) = &type metadata for CGFloat;
  *(v25 + 4) = &protocol witness table for CGFloat;
  *v25 = a3;
  v58 = *(v14 + 13);
  v115 = enum case for Resize.Rule.replaced(_:);
  v59 = v130;
  v58(v25);
  v118 = v14;
  v120 = v5;
  v60 = v22;
  v61 = enum case for Resize.Rule.unchanged(_:);
  (v58)(v60, enum case for Resize.Rule.unchanged(_:), v59);
  (v58)(v131, v61, v59);
  v116 = v61;
  v62 = v61;
  v63 = v60;
  (v58)(v132, v62, v59);
  *(&v139 + 1) = v133;
  *&v140 = &protocol witness table for Resize;
  sub_10000D134(&v138);
  sub_100751164();
  v64 = swift_allocObject();
  v65 = v120;
  *(v64 + 16) = v114;
  sub_100750754();

  sub_10000C620(&v138);
  sub_1005618AC(v65, &v138);
  v66 = swift_allocObject();
  v67 = v145;
  v66[7] = v144;
  v66[8] = v67;
  v66[9] = v146[0];
  *(v66 + 153) = *(v146 + 9);
  v68 = v141;
  v66[3] = v140;
  v66[4] = v68;
  v69 = v143;
  v66[5] = v142;
  v66[6] = v69;
  v70 = v139;
  v66[1] = v138;
  v66[2] = v70;
  v71 = v121;
  *v121 = sub_1005618E4;
  v71[1] = v66;
  (v58)(v71, enum case for Resize.Rule.recalculated(_:), v59);
  v72 = v129 | ~*(v65 + 152);
  v114 = *(v65 + 56);
  v147[0] = v114;
  if (v72)
  {
    sub_100750434();
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = a3;
    (v58)(v25, v115, v59);
    v73 = v116;
    (v58)(v63, v116, v59);
    (v58)(v131, v73, v59);
  }

  else
  {
    sub_100750434();
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = a3;
    (v58)(v25, v115, v59);
    (*(v118 + 2))(v63, v71, v59);
    v73 = v116;
    (v58)(v131, v116, v59);
  }

  (v58)(v132, v73, v59);
  v74 = v123;
  sub_100751164();
  v75 = v120;
  v76 = v122;
  v77 = v133;
  if (v120[40])
  {
    v148 = v133;
    v149 = &protocol witness table for Resize;
    v78 = sub_10000D134(v147);
    v79 = v125;
    (*(v125 + 16))(v78, v74, v77);
    sub_1005618AC(v75, &v138);
    v80 = swift_allocObject();
    v81 = v145;
    v80[7] = v144;
    v80[8] = v81;
    v80[9] = v146[0];
    *(v80 + 153) = *(v146 + 9);
    v82 = v141;
    v80[3] = v140;
    v80[4] = v82;
    v83 = v143;
    v80[5] = v142;
    v80[6] = v83;
    v84 = v139;
    v80[1] = v138;
    v80[2] = v84;
    sub_100750754();

    sub_10000C620(v147);
    v85 = v130;
    v86 = v121;
LABEL_21:
    v137[0] = v124;
    sub_100750434();
    sub_1005618AC(v75, &v138);
    v105 = swift_allocObject();
    v106 = v145;
    *(v105 + 112) = v144;
    *(v105 + 128) = v106;
    *(v105 + 144) = v146[0];
    *(v105 + 153) = *(v146 + 9);
    v107 = v141;
    *(v105 + 48) = v140;
    *(v105 + 64) = v107;
    v108 = v143;
    *(v105 + 80) = v142;
    *(v105 + 96) = v108;
    v109 = v139;
    *(v105 + 16) = v138;
    *(v105 + 32) = v109;
    *(v105 + 169) = v129;
    sub_100750754();

    sub_10000C620(v147);
    v110 = v128;
    v111 = v126;
    v126[3] = v128;
    v111[4] = &protocol witness table for VerticalStack;
    v112 = sub_10000D134(v111);
    (*(v127 + 32))(v112, v76, v110);
    (*(v79 + 8))(v123, v77);
    return (*(v118 + 1))(v86, v85);
  }

  v87 = *(v120 + 4);
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1007A5CF0;
  v89 = v117;
  *(v88 + 32) = v117;
  v90 = v89;
  v91 = sub_100751044();
  [v114 measurementsWithFitting:v91 in:{a3, a4}];
  v93 = v92;

  sub_10000C888((v75 + 64), *(v75 + 88));
  result = sub_100750854();
  v86 = v121;
  if (result)
  {
    v94 = result;
    [result lineHeight];
    v96 = v95;

    if (v96 * v87 - v93 < 0.0)
    {
      v97 = 0.0;
    }

    else
    {
      v97 = v96 * v87 - v93;
    }

    v77 = v133;
    *(&v139 + 1) = v133;
    *&v140 = &protocol witness table for Resize;
    v98 = sub_10000D134(&v138);
    v79 = v125;
    (*(v125 + 16))(v98, v123, v77);
    v137[3] = &type metadata for CGFloat;
    v137[4] = &protocol witness table for CGFloat;
    *v137 = v97;
    v99 = sub_1007507D4();
    v136[3] = v99;
    v136[4] = &protocol witness table for ZeroDimension;
    sub_10000D134(v136);
    sub_1007507C4();
    v135[3] = v99;
    v135[4] = &protocol witness table for ZeroDimension;
    sub_10000D134(v135);
    sub_1007507C4();
    v134[3] = v99;
    v134[4] = &protocol witness table for ZeroDimension;
    sub_10000D134(v134);
    sub_1007507C4();
    v148 = sub_1007511A4();
    v149 = &protocol witness table for Margins;
    sub_10000D134(v147);
    sub_1007511B4();
    sub_1005618AC(v75, &v138);
    v100 = swift_allocObject();
    v101 = v145;
    v100[7] = v144;
    v100[8] = v101;
    v100[9] = v146[0];
    *(v100 + 153) = *(v146 + 9);
    v102 = v141;
    v100[3] = v140;
    v100[4] = v102;
    v103 = v143;
    v100[5] = v142;
    v100[6] = v103;
    v104 = v139;
    v100[1] = v138;
    v100[2] = v104;
    sub_100750754();

    sub_10000C620(v147);
    v85 = v130;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_100561610(uint64_t a1, uint64_t *a2)
{
  sub_100750714();
  sub_10000C888(a2 + 8, a2[11]);
  if (sub_100750364())
  {
    [a2[7] isHidden];
  }

  return sub_100750704();
}

double sub_100561714(void *a1, double a2, double a3)
{
  sub_1005607F0(a1, v6, a2, a3);
  sub_10000C888(v6, v6[3]);
  sub_100751254();
  v4 = v3;
  sub_10000C620(v6);
  return v4;
}

uint64_t sub_1005617B8(void *a1, double a2, double a3, double a4, double a5)
{
  sub_1005607F0(a1, v6, a4, a5);
  sub_10000C888(v6, v6[3]);
  sub_100751244();
  return sub_10000C620(v6);
}

__n128 sub_100561854@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_10056192C(uint64_t a1)
{
  sub_10000C620((v1 + 80));
  if (*(v1 + 144))
  {
    sub_10000C620((v1 + 120));
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100561A0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100744E04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_style;
  swift_beginAccess();
  (*(v5 + 24))(&v2[v8], a1, v4);
  swift_endAccess();
  (*(v5 + 16))(v7, &v2[v8], v4);
  v9 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_lineLayer];
  v10 = [*&v2[OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_lineColor] CGColor];
  v11 = [v2 traitCollection];
  v12.super.super.isa = v9;
  v13.super.isa = v11;
  sub_100744DD4(v12, v10, v13);

  v14 = *(v5 + 8);
  v14(v7, v4);
  [v2 setNeedsDisplay];
  return (v14)(a1, v4);
}

char *sub_100561BCC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_itemLayoutContext;
  v12 = sub_1007469A4();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_lineLayer;
  *&v5[v13] = [objc_allocWithZone(CAShapeLayer) init];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_style;
  v15 = enum case for HorizontalRule.Style.solid(_:);
  v16 = sub_100744E04();
  (*(*(v16 - 8) + 104))(&v5[v14], v15, v16);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_lineColor;
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  *&v5[v17] = sub_100753DB4();
  v23.receiver = v5;
  v23.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v20 = [v18 contentView];
  v21 = [v20 layer];

  [v21 addSublayer:*&v18[OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_lineLayer]];
  return v18;
}

void sub_100561F58()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100744E04();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_1007477B4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_lineLayer];
  [v17 setFrame:{v10, v12, v14, v16}];
  v18 = OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_style;
  swift_beginAccess();
  (*(v4 + 16))(v7, &v1[v18], v3);
  v19 = [v1 traitCollection];
  v20 = sub_100744DF4();

  (*(v4 + 8))(v7, v3);
  [v17 setPath:v20];
}

uint64_t sub_1005621A0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100744E04();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v1;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "_dynamicUserInterfaceTraitDidChange", v5);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_style;
  swift_beginAccess();
  (*(v4 + 16))(v7, &v1[v8], v3);
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_lineLayer];
  v10 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_lineColor] CGColor];
  v11 = [v1 traitCollection];
  v12.super.super.isa = v9;
  v13.super.isa = v11;
  sub_100744DD4(v12, v10, v13);

  return (*(v4 + 8))(v7, v3);
}

uint64_t type metadata accessor for HorizontalRuleCollectionViewCell(uint64_t a1)
{
  result = qword_10093E558;
  if (!qword_10093E558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100562460(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    sub_100744E04();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_100562538(void *a1)
{
  v2 = v1;
  v4 = sub_100744E04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_lineColor];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_lineColor] = a1;
  v9 = a1;

  v10 = OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_style;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v2[v10], v4);
  v11 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32HorizontalRuleCollectionViewCell_lineLayer];
  v12 = [v9 CGColor];
  v13 = [v2 traitCollection];
  v14.super.super.isa = v11;
  v15.super.isa = v13;
  sub_100744DD4(v14, v12, v15);

  (*(v5 + 8))(v7, v4);
  return [v2 setNeedsDisplay];
}

char *sub_1005626D0(char *a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_isExpanded] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_videoMirrorView;
  if (qword_100920650 != -1)
  {
    swift_once();
  }

  v14[4] = *&byte_10097E808[64];
  v14[5] = *&byte_10097E808[80];
  v14[6] = *&byte_10097E808[96];
  v14[7] = *&byte_10097E808[112];
  v14[0] = *byte_10097E808;
  v14[1] = *&byte_10097E808[16];
  v14[2] = *&byte_10097E808[32];
  v14[3] = *&byte_10097E808[48];
  v5 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
  *&v1[v4] = sub_1004A8A4C(0, v14, 1.0, 0.0);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_artworkLayoutWithMetrics] = 0;
  v6 = &v1[OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_artworkSize];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_pageGrid;
  v8 = sub_10074F704();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v2[OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_sizeCategory] = 7;
  v2[OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_isMirroring] = 0;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for RevealingVideoMirrorView(0);
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v9 setClipsToBounds:1];
  v10 = &a1[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_mirrorDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v10 + 1) = &off_10087AFF0;
  swift_unknownObjectWeakAssign();
  sub_10020E398(Strong);

  [v9 addSubview:*&v9[OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_videoMirrorView]];
  return v9;
}

double sub_100562940(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_artworkLayoutWithMetrics) = a1;

  return result;
}

uint64_t sub_100562958(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_artworkSize;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

uint64_t sub_100562974(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_pageGrid;
  swift_beginAccess();
  sub_100037710(a1, v1 + v3);
  return swift_endAccess();
}

id sub_100562A40(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_artworkLayoutWithMetrics] = a5;

  sub_100037990(a6, v18);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_pageGrid;
  swift_beginAccess();
  sub_100037710(v18, &v8[v19]);
  swift_endAccess();
  v8[OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_sizeCategory] = a7;
  if ((v8[OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_isMirroring] & 1) != 0 || !a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1004A901C(a1);
    swift_unknownObjectWeakAssign();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      if (Strong)
      {
        type metadata accessor for VideoView(0);
        v23 = Strong;
        v24 = sub_100753FC4();

        if (v24)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    else if (!Strong)
    {
      goto LABEL_12;
    }

    sub_1004A9648();
    v23 = Strong;
LABEL_11:
  }

LABEL_12:
  v25 = &v8[OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_artworkSize];
  *v25 = a2;
  *(v25 + 1) = a3;
  v25[16] = a4 & 1;
  return [v8 setNeedsLayout];
}

void sub_100562C44(__n128 a1)
{
  v2 = sub_10074DAE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v45 - v7;
  v9 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_10074F704();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_artworkLayoutWithMetrics])
  {
    v16 = &v1[OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_artworkSize];
    if ((v1[OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_artworkSize + 16] & 1) == 0)
    {
      v45 = v3;
      v18 = *v16;
      v17 = v16[1];
      v19 = OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_pageGrid;
      swift_beginAccess();
      sub_100037990(&v1[v19], v11);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {
        sub_1000E94F8(v11);
        return;
      }

      (*(v13 + 32))(v15, v11, v12);
      v20 = v1[OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_sizeCategory];
      if (v20 != 7)
      {

        [v1 bounds];
        v47.origin.x = 0.0;
        v47.origin.y = 0.0;
        v47.size.width = 0.0;
        v47.size.height = 0.0;
        if (CGRectEqualToRect(v46, v47))
        {
          (*(v13 + 8))(v15, v12);

          return;
        }

        v21 = v1;
        v22.n128_f64[0] = sub_1006E88C4(v20);
        v23 = v45;
        v24 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
        v25 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
        if (v20 != 6)
        {
          v25 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
        }

        if (v20 != 4)
        {
          v24 = v25;
        }

        (*(v45 + 104))(v5, *v24, v2, v22);
        (*(v23 + 32))(v8, v5, v2);
        v26 = sub_1007532B4();

        (*(v23 + 8))(v8, v2);
        v27 = v21[OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_isExpanded];
        v28 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_videoMirrorView];
        [v21 bounds];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v37 = [v21 traitCollection];
        v38 = sub_1005824A4(v37, v30, v32, v34, v36, v18, v17, v26, v27);
        v40 = v39;
        v42 = v41;
        v44 = v43;

        [v28 setFrame:{v38, v40, v42, v44}];
      }

      (*(v13 + 8))(v15, v12);
    }
  }
}

id sub_1005630BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingVideoMirrorView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingVideoMirrorView(uint64_t a1)
{
  result = qword_10093E5C0;
  if (!qword_10093E5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005631B4(uint64_t a1)
{
  sub_10020F754(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100563288()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_isExpanded) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_videoMirrorView;
  if (qword_100920650 != -1)
  {
    swift_once();
  }

  v7[4] = *&byte_10097E808[64];
  v7[5] = *&byte_10097E808[80];
  v7[6] = *&byte_10097E808[96];
  v7[7] = *&byte_10097E808[112];
  v7[0] = *byte_10097E808;
  v7[1] = *&byte_10097E808[16];
  v7[2] = *&byte_10097E808[32];
  v7[3] = *&byte_10097E808[48];
  v3 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
  *(v0 + v2) = sub_1004A8A4C(0, v7, 1.0, 0.0);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_artworkLayoutWithMetrics) = 0;
  v4 = v0 + OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_artworkSize;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_pageGrid;
  v6 = sub_10074F704();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_isMirroring) = 0;
  sub_100754644();
  __break(1u);
}

void sub_10056341C()
{
  v1 = v0[4];
  [v1 _systemContentInset];
  v3 = v2;
  [v1 contentOffset];
  v5 = v4;
  [v1 contentInset];
  v7 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1006408D0(Strong, v9);
  v11 = v10;

  v12 = v0[5];
  if (v12)
  {
    v13 = v0[6];
    v14 = fmin((v3 + v5 + v7) / (v11 - v3), 1.0);
    if (v14 < 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v14;
    }

    v12(v16, v15, 0.0);
    sub_1000164A8(v12, v13);
  }

  sub_100563518(v1);
}

void sub_100563518(void *a1)
{
  v2 = v1;
  [a1 _systemContentInset];
  v5 = v4;
  [a1 contentOffset];
  v7 = v6;
  [a1 contentInset];
  v9 = v5 + v7 + v8;
  [a1 frame];
  v11 = v10;
  v12 = v2[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  v14.n128_u64[0] = v11;
  sub_100640B0C(Strong, v14);
  v16 = v15;
  v18 = v17;

  if (v9 >= 0.0)
  {
    v19 = -v9;
    if (-v18 - *&v12[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_reflectionOutset] > -v9)
    {
      v19 = -v18 - *&v12[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_reflectionOutset];
    }
  }

  else
  {
    v18 = fabs(v9) + v18;
    v19 = 0.0;
  }

  [v12 setFrame:{0.0, v19, v16, v18}];
  v20 = v9 * 0.28;
  if (v9 * 0.28 < 0.0)
  {
    v20 = 0.0;
  }

  v21 = *(*&v12[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  v22 = *&v21[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY];
  *&v21[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = v20;
  if (v20 != v22)
  {
    [v21 setNeedsLayout];
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  sub_1006408D0(v23, v24);
  v26 = v25;

  v27 = fmin(v9 / (v26 - v5), 1.0);
  if (v27 < 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v27;
  }

  v29 = v2[5];
  if (v29)
  {
    v30 = v2[6];
    v31 = v2[4];

    v32 = [v31 _verticalVelocity];
    v29(v32, v28, v33);
    sub_1000164A8(v29, v30);
  }

  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    v36 = [v34 navigationController];

    if (v36)
    {
      v37 = [v36 navigationBar];

      [v37 _setTitleOpacity:v28];
    }
  }
}

CGFloat sub_10056379C()
{
  v1 = v0;
  v2 = *(v0 + 32);
  [v2 _systemContentInset];
  v4 = v3;
  [v2 contentOffset];
  v6 = v5;
  [v2 contentInset];
  v8 = v4 + v6 + v7;
  [v2 frame];
  v10 = v9;
  v11 = *(v1 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  v13.n128_u64[0] = v10;
  sub_100640B0C(Strong, v13);
  v15 = v14;
  v17 = v16;

  if (v8 >= 0.0)
  {
    v18 = -v8;
    if (-v17 - *(v11 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_reflectionOutset) > -v8)
    {
      v18 = -v17 - *(v11 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_reflectionOutset);
    }
  }

  else
  {
    v17 = fabs(v8) + v17;
    v18 = 0.0;
  }

  v19 = 0;
  v20 = v15;
  v21 = v17;
  return CGRectGetHeight(*(&v18 - 1)) - v4 - *(v11 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentBottomInset);
}

uint64_t sub_1005638C0()
{
  swift_unknownObjectWeakDestroy();

  sub_1000164A8(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

double sub_100563A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v143 = a3;
  v124 = sub_1007455E4();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v121 = &v116 - v6;
  v7 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v7 - 8);
  v136 = &v116 - v8;
  v135 = sub_10074C3E4();
  v130 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v116 - v10;
  v11 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v11 - 8);
  v129 = &v116 - v12;
  v13 = sub_10000C518(&qword_10093F5C0, &qword_1007A9CD0);
  __chkstk_darwin(v13 - 8);
  v128 = &v116 - v14;
  v15 = sub_10074ED34();
  v16 = *(v15 - 8);
  v137 = v15;
  v138 = v16;
  __chkstk_darwin(v15);
  v125 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v144 = &v116 - v19;
  v20 = sub_100742384();
  v139 = *(v20 - 8);
  v140 = v20;
  __chkstk_darwin(v20);
  v126 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v127 = &v116 - v23;
  v24 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v24 - 8);
  v120 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v119 = &v116 - v27;
  v28 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v28 - 8);
  v30 = &v116 - v29;
  v31 = sub_100744864();
  __chkstk_darwin(v31 - 8);
  __chkstk_darwin(v32);
  v33 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v33 - 8);
  v35 = &v116 - v34;
  v36 = sub_100744894();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_100747D94();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v41 = &v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100742914();
  v141 = a1;
  v142 = v42;
  if (sub_100742904())
  {
    (*(v37 + 104))(v39, enum case for VideoFillMode.scaleAspectFill(_:), v36);
    sub_10074EC14();
    sub_10074F2A4();
    sub_100750504();

    v43 = sub_1007504F4();
    (*(*(v43 - 8) + 56))(v35, 0, 1, v43);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    sub_10074EB94();
    sub_10074EC24();
    v44 = sub_100741264();
    (*(*(v44 - 8) + 56))(v30, 0, 1, v44);
    v45 = v119;
    sub_10074EBE4();
    v46 = v120;
    sub_10074EBD4();
    type metadata accessor for VideoView(0);
    sub_100564E40(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v47 = sub_1007464A4();
    sub_10000C8CC(v46, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v45, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v30, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(&v146, &unk_1009276E0, &unk_1007A5C70);
    v48 = v145;
    sub_1004AC7F0();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v50 = Strong;
      v51 = [v48 contentView];
      [v51 addSubview:v50];

      [v48 setNeedsLayout];

      (*(v117 + 8))(v41, v118);
    }

    else
    {
      (*(v117 + 8))(v41, v118);
    }
  }

  v52 = v141;
  v53 = sub_100742904();
  if (v53)
  {
  }

  v54 = v145;
  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v53 == 0;
    v57 = v55;
    [v55 setHidden:v56];
  }

  [v54 setNeedsLayout];
  v58 = v127;
  sub_1007428F4();
  v59 = OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_showcaseType;
  swift_beginAccess();
  v61 = v139;
  v60 = v140;
  v62 = *(v139 + 24);
  v62(&v54[v59], v58, v140);
  swift_endAccess();
  v63 = *&v54[OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_lockupView];
  v64 = v126;
  (*(v61 + 16))(v126, &v54[v59], v60);
  v65 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_type;
  swift_beginAccess();
  v62(&v63[v65], v64, v60);
  swift_endAccess();
  sub_1002A60B8();
  v66 = *(v61 + 8);
  v66(v64, v60);
  [v54 setNeedsLayout];
  v66(v58, v60);
  sub_10074EF34();
  v68 = v67;
  sub_1007428E4();
  v140 = v69;
  v70 = sub_10074EF04();
  v126 = sub_10074EE24();
  v139 = v71;
  v120 = sub_10074EE84();
  v73 = v72;
  sub_10074EF44();
  v74 = sub_1002AB0F8(v52);
  v141 = sub_10074EDF4();
  v75 = *&v63[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_titleLabel];
  v127 = v68;
  if (v68)
  {
    v76 = sub_100753064();
  }

  else
  {
    v76 = 0;
  }

  v77 = v128;
  [v75 setText:v76];

  v78 = *&v63[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_descriptionLabel];
  if (v140)
  {
    v79 = sub_100753064();
  }

  else
  {
    v79 = 0;
  }

  v128 = v73;
  [v78 setText:v79];

  if (v74)
  {
    v80 = enum case for Wordmark.arcade(_:);
    v81 = sub_10074F7B4();
    v82 = *(v81 - 8);
    (*(v82 + 104))(v77, v80, v81);
    (*(v82 + 56))(v77, 0, 1, v81);
    sub_10000D198();
    v83 = sub_100753DD4();
    sub_1002AA120(v77, v83, v84);
  }

  else
  {
    v85 = sub_10074F7B4();
    v86.n128_f64[0] = (*(*(v85 - 8) + 56))(v77, 1, 1, v85);
    sub_1002AA120(v77, 0, v86);
  }

  v87 = v137;
  sub_10000C8CC(v77, &qword_10093F5C0, &qword_1007A9CD0);
  v88 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
  v89 = v129;
  (*(*(v88 - 8) + 56))(v129, 1, 1, v88);
  v90 = v130;
  v91 = v135;
  (*(v130 + 104))(v132, enum case for OfferButtonSubtitlePosition.below(_:), v135);
  (*(v90 + 56))(v136, 1, 1, v91);
  sub_100564E40(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v92 = v131;
  sub_10074A9C4();
  sub_10015DE40(v70, v141, 0, v89, v92, v143, 0, 0);
  (*(v133 + 8))(v92, v134);
  sub_10000C8CC(v89, &unk_100925540, &qword_1007A8140);
  if (v139)
  {
    v93 = v87;
    v94 = v128;
    if (v128)
    {
      v95 = v125;
      (*(v138 + 16))(v125, v144, v93);
      sub_10000C518(&unk_100925780, qword_1007AC630);
      sub_100752764();
      sub_100752D34();
      v96 = v146;
      type metadata accessor for CrossLinkPresenter(0);
      swift_allocObject();
      v97 = v63;
      v98 = v95;
      v99 = &stru_1008F2000;
      v100 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v98, v126, v139, v120, v94, 0, v63, &off_10086F220, v96, *(&v96 + 1));
      v101 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v97[v101] = v100;

      goto LABEL_24;
    }
  }

  else
  {

    v93 = v87;
  }

  v102 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkPresenter;
  swift_beginAccess();
  *&v63[v102] = 0;

  sub_1002AA7C0(0, 0);
  v99 = &stru_1008F2000;
LABEL_24:
  *&v63[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerDisplayProperties] = v70;

  if (v70)
  {

    v103 = v121;
    sub_100749ED4();
    v104 = v123;
    v105 = v122;
    v106 = v124;
    (*(v123 + 104))(v122, enum case for OfferLabelStyle.none(_:), v124);
    sub_100564E40(&qword_100923598, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
    v107 = sub_100753014();
    v108 = *(v104 + 8);
    v108(v105, v106);
    v108(v103, v106);
    if ((v107 & 1) == 0)
    {

      sub_100749F14();
      sub_10000C518(&unk_100925780, qword_1007AC630);
      sub_100752764();
      sub_100752D34();
      sub_100744AC4();
      sub_100752D34();
      sub_100744984();

      v110 = sub_100748304();
      swift_allocObject();
      v111 = sub_1007482E4();
      *(&v147 + 1) = v110;
      *&v146 = v111;
      v112 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerLabelPresenter;
      swift_beginAccess();

      sub_1001183AC(&v146, &v63[v112]);
      swift_endAccess();
      v113 = objc_opt_self();
      v114 = [v113 areAnimationsEnabled];
      [v113 setAnimationsEnabled:0];
      sub_100564E40(&qword_10093E6D8, type metadata accessor for AppShowcaseLockupView, &unk_1007B9DA4);
      swift_unknownObjectRetain();
      sub_1007482F4();
      [v63 layoutIfNeeded];
      [v113 setAnimationsEnabled:v114];

      goto LABEL_29;
    }
  }

  v146 = 0u;
  v147 = 0u;
  v109 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerLabelPresenter;
  swift_beginAccess();
  sub_1001183AC(&v146, &v63[v109]);
  swift_endAccess();
  [v63 v99[51].attr];

LABEL_29:

  (*(v138 + 8))(v144, v93);
  [v145 v99[51].attr];

  return result;
}

uint64_t sub_100564E40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100564E88(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  v67 = a4;
  v62 = a3;
  v60 = sub_1007504F4();
  v4 = *(v60 - 8);
  __chkstk_darwin(v60);
  v66 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = sub_10074F314();
  v6 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v52 = &v40[-v9];
  __chkstk_darwin(v10);
  v51 = &v40[-v11];
  v12 = sub_100742384();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v57 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v40[-v16];
  __chkstk_darwin(v18);
  v56 = &v40[-v19];
  __chkstk_darwin(v20);
  v49 = &v40[-v21];
  v22 = sub_10074EB24();
  v23 = *(v22 + 16);
  v58 = v22 + 32;
  v48 = (v13 + 32);
  v65 = (v13 + 88);
  v64 = enum case for AppShowcaseType.large(_:);
  v47 = enum case for AppShowcaseType.small(_:);
  v41 = enum case for AppShowcaseType.smallAlignedLeft(_:);
  v55 = (v13 + 8);
  v46 = enum case for Artwork.Style.roundedRect(_:);
  v45 = (v6 + 104);
  v44 = (v6 + 8);
  v43 = (v13 + 16);
  v42 = (v4 + 8);
  v59 = v22;

  v24 = 0;
  v50 = v17;
  v61 = v23;
  while (v24 == v23)
  {
    v75 = 0;
    v24 = v23;
    v73 = 0u;
    v74 = 0u;
LABEL_9:
    v71[0] = v73;
    v71[1] = v74;
    v72 = v75;
    if (!*(&v74 + 1))
    {
      swift_bridgeObjectRelease_n();
      return;
    }

    sub_100012160(v71, &v70);
    sub_10000C824(&v70, v68);
    sub_10000C518(&qword_1009242A0, &qword_1007A6400);
    sub_100742924();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v69 = 0;
    }

    sub_10000C620(&v70);
    if (v69)
    {
      v25 = v62;
      [v62 pageMarginInsets];
      [v25 pageMarginInsets];
      sub_100742914();
      v26 = sub_10074EF24();

      if (v26)
      {
        v27 = v49;
        sub_1007428F4();
        v28 = v56;
        (*v48)(v56, v27, v12);
        v29 = (*v65)(v28, v12);
        v63 = v24;
        if (v29 != v64 && v29 != v47 && v29 != v41)
        {
          (*v55)(v56, v12);
        }

        v30 = v52;
        sub_10074F324();
        v31 = v53;
        v32 = v54;
        (*v45)(v53, v46, v54);
        v33 = v51;
        sub_10074F2D4();
        v34 = *v44;
        (*v44)(v31, v32);
        v34(v30, v32);
        sub_10074F2F4();
        sub_10074F374();
        sub_100744214();

        v34(v33, v32);
        v17 = v50;
        v24 = v63;
      }

      if (!sub_100742904())
      {

        goto LABEL_3;
      }

      sub_10074EC14();

      sub_10074F2A4();
      sub_10074F2A4();
      sub_100750504();
      sub_1007428F4();
      v35 = sub_100750454();
      v36 = v57;
      (*v43)(v57, v17, v12);
      v37 = (*v65)(v36, v12);
      if (v37 == v64)
      {
        if (v35)
        {
          goto LABEL_30;
        }

        if (qword_100920D40 == -1)
        {
LABEL_29:
          sub_10000D0FC(v60, qword_100939DE8);
          sub_1007504B4();
LABEL_30:
          (*v55)(v17, v12);
          goto LABEL_31;
        }

LABEL_32:
        swift_once();
        goto LABEL_29;
      }

      if (v37 == v47 || v37 == v41)
      {
        if (qword_100920D40 == -1)
        {
          goto LABEL_29;
        }

        goto LABEL_32;
      }

      v38 = *v55;
      (*v55)(v17, v12);
      v38(v57, v12);
LABEL_31:
      v39 = v66;
      sub_1007504C4();
      sub_10074F374();
      sub_100744214();

      (*v42)(v39, v60);
LABEL_3:
      v23 = v61;
    }
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24 >= *(v59 + 16))
    {
      goto LABEL_35;
    }

    sub_10000C824(v58 + 40 * v24++, &v73);
    goto LABEL_9;
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_1005657DC()
{
  result = qword_100935440;
  if (!qword_100935440)
  {
    sub_10074C6C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100935440);
  }

  return result;
}

uint64_t sub_100565834(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_100742D64();
    v8 = a1;
    sub_10074C6B4();
    sub_100742D04();

    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = a2;
    v10 = sub_1000A7FA0();
    swift_retain_n();

    v13[3] = v10;
    v13[4] = &protocol witness table for OS_dispatch_queue;
    v13[0] = sub_100753774();
    sub_100752D64();

    return sub_10000C620(v13);
  }

  else
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v12 = sub_100752E44();
    sub_10000D0FC(v12, qword_100983318);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752D04();

    sub_10056626C();
    swift_allocError();
    sub_100752DA4();
  }
}

double sub_100565AF4(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v5 = sub_100742CF4();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007493D4();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10074A304();
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752614();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - v13;
  v15 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v15 - 8);
  v17 = &v28 - v16;
  v18 = sub_10074F4D4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = sub_10074C694();
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  (*(v19 + 104))(v21, enum case for FlowPage.gameAchievements(_:), v18);
  v24 = sub_100741264();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  v25 = sub_100743FE4();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  v42 = &type metadata for GameCenterAchievementsPage;
  v40 = v22;
  v41 = v23;
  v29 = v22;

  sub_1007525F4();
  (*(v9 + 104))(v30, enum case for FlowPresentationContext.infer(_:), v31);
  (*(v33 + 104))(v32, enum case for FlowAnimationBehavior.infer(_:), v34);
  (*(v36 + 104))(v35, enum case for FlowOrigin.inapp(_:), v37);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v26 = sub_100742C84();
  sub_10052AD94(v26, 1, v38);
  sub_100752D54();

  return result;
}

uint64_t sub_10056600C(uint64_t a1)
{
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v1 = sub_100752E44();
  sub_10000D0FC(v1, qword_100983318);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523A4();
  sub_100752D04();

  return sub_100752DA4();
}

uint64_t sub_100566164(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v4 = sub_100752DE4();
  sub_100742D64();
  v7[3] = sub_1000A7FA0();
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = sub_100753774();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = a2;

  sub_100742D14();

  sub_10000C620(v7);
  return v4;
}

unint64_t sub_10056626C()
{
  result = qword_10093E6E0;
  if (!qword_10093E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093E6E0);
  }

  return result;
}

unint64_t sub_1005662E8()
{
  result = qword_10093E6E8;
  if (!qword_10093E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093E6E8);
  }

  return result;
}

uint64_t sub_100566340()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlay);
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v2 = v1[1];
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    swift_unknownObjectRetain();
    v5 = v4(ObjectType, v2);
    [v5 removeFromSuperview];
    swift_unknownObjectRelease();
  }

  if (swift_weakLoadStrong())
  {
    v6 = v1[1];
    v7 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind);
    v8 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind + 8);
    v9 = swift_unknownObjectRetain();
    sub_1006CE2EC(v9, v6, v7, v8);

    swift_unknownObjectRelease();
  }

  v10 = v0 + OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind;
  *v10 = 0;
  *(v10 + 8) = 1;
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectRelease();

  return swift_weakAssign();
}

uint64_t sub_100566480()
{
  v1 = &v0[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay];
  swift_unknownObjectRetain();
  sub_10045F99C();
  [v0 setNeedsLayout];
  swift_unknownObjectRelease();
  if (swift_weakLoadStrong())
  {
    v2 = *(v1 + 1);
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayKind];
    v4 = v0[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayKind + 8];
    v5 = swift_unknownObjectRetain();
    sub_1006CE2EC(v5, v2, v3, v4);

    swift_unknownObjectRelease();
  }

  v6 = &v0[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayKind];
  *v6 = 0;
  v6[8] = 1;
  *v1 = 0;
  *(v1 + 1) = 0;
  swift_unknownObjectRelease();

  return swift_weakAssign();
}

id sub_100566590(uint64_t a1, __objc2_prop *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v169 = a4;
  v9 = a2;
  ObjectType = swift_getObjectType();
  v158 = sub_10074A2E4();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v166 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074FB54();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v168 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v170 = &v138 - v15;
  __chkstk_darwin(v16);
  v162 = &v138 - v17;
  v18 = sub_10000C518(&qword_10093E780, &qword_1007D1250);
  __chkstk_darwin(v18 - 8);
  v163 = &v138 - v19;
  v20 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  *&v21 = __chkstk_darwin(v20 - 8).n128_u64[0];
  v23 = &v138 - v22;
  v161 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory;
  v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory] = a2;
  v24 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayContainer];
  v24[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_sizeCategory] = a2;
  v25 = a2;
  if (v9 == 4)
  {
    v26 = v24[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
  }

  else
  {
    v26 = 0;
  }

  [v24 setHidden:{v26 & 1, v21}];
  v27 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsView];
  v27[qword_1009441B8] = v25;
  sub_100679A78();
  v28 = sub_10074F704();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v23, a3, v28);
  (*(v29 + 56))(v23, 0, 1, v28);
  v30 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_100037710(v23, &v5[v30]);
  swift_endAccess();
  v31 = a1;
  v32 = sub_10074FA64();
  if (v32)
  {
    v33 = a1;
    v34 = v169;
    sub_100568D08(v32, v33, v25, a3, v169);

    v35 = a3;
    LODWORD(v36) = v25;
    goto LABEL_73;
  }

  v167 = v25;
  v159 = v27;
  v149 = a3;
  sub_10074FB64();
  v37 = sub_1007451D4();

  v155 = v37;
  v151 = v11;
  v150 = v12;
  if (v37)
  {
    v38 = sub_100184128;
    if (v167 == 4)
    {
      v38 = sub_100046F68;
    }

    v145 = v38;
    v146 = sub_10066891C;
    v39 = sub_100184128;
    if (v167 == 4)
    {
      v39 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    }

    v147 = v39;
  }

  else if (v167 == 4)
  {
    v145 = sub_100046F68;
    v146 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v147 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v147 = sub_100184128;
    v146 = sub_10066891C;
    v145 = sub_100184128;
  }

  v40 = sub_10074FB94();
  v154 = v41;
  v144 = sub_10074FB84();
  v160 = v42;
  v141 = sub_10074FA54();
  v152 = v43;
  v44 = v163;
  sub_10074FAC4();
  v45 = sub_1007497C4();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = sub_10074FAA4();
  v156 = v47;
  sub_10074FB74();
  sub_10074FAE4();
  v48 = sub_10074FBA4();
  v148 = v31;
  v143 = v46;
  if (!v48)
  {
    goto LABEL_22;
  }

  sub_10074A1A4();
  if (!swift_dynamicCastClass())
  {
    sub_10074D454();
    if (swift_dynamicCastClass())
    {
      sub_10074D434();
      goto LABEL_20;
    }

LABEL_22:
    v142 = 0;
    v153 = 0;
    goto LABEL_23;
  }

  sub_10074A194();
LABEL_20:
  v142 = sub_10074EF34();
  v153 = v49;

LABEL_23:
  v50 = v167;
  v51 = v159;
  v159[qword_1009441E8] = v155 & 1;
  v52 = *&v51[qword_1009441D0];
  *(v52 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v53 = *&v51[qword_1009441C8];
  sub_10020D440(v40, v154);
  v54 = sub_10074A2D4();
  v55 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
  v56 = *&v53[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
  if (v50 != 4 || (v54 & 1) != 0)
  {
    v57 = [v56 text];
    if (v57)
    {
      v58 = v57;
      sub_100753094();
    }

    v59 = v159;
    v60 = sub_100753114();
    v61 = v60 & 1;

    if (v61 == [*&v53[v55] isHidden] || (v53[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v53[v55] setHidden:v61];
    }

    else
    {
      if ((v60 & 1) == 0)
      {
        [*&v53[v55] setAlpha:0.0];
        v62 = objc_opt_self();
        [v62 inheritedAnimationDuration];
        v64 = v63;
        v65 = swift_allocObject();
        *(v65 + 16) = v53;
        v175 = sub_100037A70;
        v176 = v65;
        aBlock = _NSConcreteStackBlock;
        v172 = 1107296256;
        v140 = v60;
        v173 = sub_1000CF7B0;
        v174 = &unk_10087B428;
        v139 = _Block_copy(&aBlock);
        v66 = v53;

        v67 = swift_allocObject();
        *(v67 + 16) = v66;
        v175 = sub_100037A7C;
        v176 = v67;
        v59 = v159;
        aBlock = _NSConcreteStackBlock;
        v172 = 1107296256;
        v173 = sub_100144DD8;
        v174 = &unk_10087B478;
        v68 = _Block_copy(&aBlock);
        v69 = v66;
        LOBYTE(v60) = v140;

        v70 = v62;
        v71 = v139;
        [v70 animateWithDuration:0 delay:v139 options:v68 animations:v64 completion:0.0];
        _Block_release(v68);
        _Block_release(v71);
      }

      [*&v53[v55] setHidden:v60 & 1];
      v53[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v53 setNeedsLayout];
    }
  }

  else
  {
    if (([v56 isHidden] & 1) != 0 || (v53[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v53[v55] setHidden:1];
    }

    else
    {
      [*&v53[v55] setHidden:1];
      v53[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v53 setNeedsLayout];
    }

    v59 = v159;
  }

  v72 = &v59[qword_1009441F0];
  *v72 = v145;
  v72[1] = 0;
  v72[2] = v146;
  v72[3] = 0;
  v72[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v72[5] = 0;
  v72[6] = v147;
  v72[7] = 0;
  v72[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v72[9] = 0;
  v72[10] = sub_1000ED848;
  v72[11] = 0;

  sub_100679B2C();
  v73 = v156;
  v74 = v52;
  if (v160)
  {
    if (v155)
    {
      if (v167 != 4)
      {
        sub_10067AF08(v163);
        v75 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
        [*(v52 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label) setAdjustsFontSizeToFitWidth:1];
        [*(v52 + v75) setMinimumScaleFactor:0.75];
        v76 = objc_allocWithZone(NSAttributedString);
        v77 = sub_100753064();
        type metadata accessor for Key(0);
        sub_10056C270(&qword_1009276F0, type metadata accessor for Key, &unk_1007A543C);
        isa = sub_100752F34().super.isa;

        v79 = [v76 initWithString:v77 attributes:isa];

        v74 = v52;
        v80 = *(v52 + v75);
        v59 = v159;
        [v80 setAttributedText:v79];

        goto LABEL_53;
      }
    }

    else if (v167 != 4)
    {
      sub_10067B3FC();
      goto LABEL_45;
    }

    sub_10067B3D8();
LABEL_45:
    LODWORD(v147) = v167 != 4;
    v81 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
    v82 = *(v52 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
    v83 = objc_allocWithZone(NSAttributedString);
    v84 = v82;
    v85 = sub_100753064();
    type metadata accessor for Key(0);
    sub_10056C270(&qword_1009276F0, type metadata accessor for Key, &unk_1007A543C);
    v86 = sub_100752F34().super.isa;
    v74 = v52;

    v87 = [v83 initWithString:v85 attributes:v86];

    [v84 setAttributedText:v87];
    [*(v52 + v81) setAdjustsFontSizeToFitWidth:0];
    [*(v52 + v81) setMinimumScaleFactor:0.0];
    [*(v52 + v81) setAttributedText:0];
    if (v147 & 1 | ((v155 & 1) == 0) || !v153)
    {
      v59 = v159;
      v73 = v156;
      if (v152 && v159[qword_1009441C0] == 4)
      {
        if (v167 == 4)
        {
          sub_10020D538(v144, v160, v141, v152);
        }

        else
        {
          sub_10020D538(v141, v152, v144, v160);
        }
      }

      else
      {
        sub_10020D440(v144, v160);
      }
    }

    else
    {
      sub_10020D440(v142, v153);
      v59 = v159;
      v73 = v156;
    }
  }

LABEL_53:
  v88 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
  v89 = *(v74 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v90 = [v89 text];
  if (v90 || (v90 = [*(v74 + v88) attributedText]) != 0)
  {

    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  v92 = v167;
  [v89 setHidden:v91];

  [v59 setNeedsLayout];
  v93 = *&v59[qword_1009441D8];
  [v93 setImage:0];
  [v93 setHidden:1];
  if (v92 != 4 && (sub_10074A2B4() & 1) == 0 && v73)
  {
    v98 = HIBYTE(v73) & 0xF;
    if ((v73 & 0x2000000000000000) == 0)
    {
      v98 = v143 & 0xFFFFFFFFFFFFLL;
    }

    v97 = v98 == 0;
    v94 = *&v59[qword_1009441E0];
    v95 = &v94[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
    v96 = *&v94[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
    goto LABEL_64;
  }

  v94 = *&v59[qword_1009441E0];
  v95 = &v94[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
  v96 = *&v94[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
  if (v73)
  {
    v97 = 1;
LABEL_64:
    v99 = v96;
    v73 = sub_100753064();
    goto LABEL_66;
  }

  v99 = v96;
  v97 = 1;
LABEL_66:
  [v99 setText:v73];

  if (v97 == [*v95 isHidden] || (v94[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v95 setHidden:v97];
  }

  else
  {
    if (!v97)
    {
      [*v95 setAlpha:0.0];
      v100 = objc_opt_self();
      [v100 inheritedAnimationDuration];
      v102 = v101;
      v103 = swift_allocObject();
      *(v103 + 16) = v94;
      v175 = sub_1000377B8;
      v176 = v103;
      aBlock = _NSConcreteStackBlock;
      v172 = 1107296256;
      v173 = sub_1000CF7B0;
      v174 = &unk_10087B388;
      v104 = _Block_copy(&aBlock);
      v105 = v94;

      v106 = swift_allocObject();
      *(v106 + 16) = v105;
      v175 = sub_1000377D8;
      v176 = v106;
      v59 = v159;
      aBlock = _NSConcreteStackBlock;
      v172 = 1107296256;
      v173 = sub_100144DD8;
      v174 = &unk_10087B3D8;
      v107 = _Block_copy(&aBlock);
      v108 = v105;

      [v100 animateWithDuration:0 delay:v104 options:v107 animations:v102 completion:0.0];
      _Block_release(v107);
      _Block_release(v104);
    }

    [*v95 setHidden:v97];
    v94[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v94 setNeedsLayout];
  }

  v34 = v169;
  v11 = v151;
  v109 = v162;
  sub_10067859C(v162, 1);
  [v59 setNeedsLayout];

  (*(v157 + 8))(v166, v158);
  v12 = v150;
  (*(v150 + 8))(v109, v11);
  sub_10000C8CC(v163, &qword_10093E780, &qword_1007D1250);
  [v5 setNeedsLayout];
  v35 = v149;
  LODWORD(v36) = v167;
  v31 = v148;
LABEL_73:
  sub_1006E8CAC(v31, v35, v36, v34);
  v110 = v168;
  if (*&v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay])
  {
    v111 = v31;
    v112 = v12;
    v113 = v36;
    v36 = v11;
    v114 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay + 8];
    v115 = swift_getObjectType();
    v116 = *(v114 + 16);
    swift_unknownObjectRetain();
    v117 = v116(v115, v114);
    swift_unknownObjectRelease();
    v118 = [v117 layer];

    if (v5[v161] == 6)
    {
      v119 = v5;
      v120 = [v5 traitCollection];
      v121 = sub_100753804();

      if (v121)
      {
        v122 = 12;
      }

      else
      {
        v122 = 15;
      }
    }

    else
    {
      v119 = v5;
      v122 = 12;
    }

    [v118 setMaskedCorners:v122];

    v11 = v36;
    LOBYTE(v36) = v113;
    v12 = v112;
    v5 = v119;
    v31 = v111;
    v110 = v168;
  }

  v164 = v5;
  sub_10074FB74();
  (*(v12 + 104))(v110, enum case for TodayCard.Style.white(_:), v11);
  sub_10056C270(&qword_1009239F0, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
  sub_100753274();
  v123 = v110;
  sub_100753274();
  if (aBlock == v177 && v172 == v178)
  {
    v124 = v31;
    v125 = 1;
  }

  else
  {
    v124 = v31;
    if (sub_100754754())
    {
      v125 = 1;
    }

    else
    {
      v125 = 2;
    }
  }

  v126 = *(v12 + 8);
  v126(v123, v11);
  v126(v170, v11);

  v127 = v164;
  [v164 setOverrideUserInterfaceStyle:v125];
  v128 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v129 = swift_allocObject();
  swift_weakInit();
  v130 = swift_allocObject();
  *(v130 + 16) = v128;
  *(v130 + 24) = v129;
  *(v130 + 32) = v124;
  *(v130 + 40) = v36;
  *(v130 + 48) = ObjectType;
  v131 = &v127[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_protectionUpdateBlock];
  v132 = *&v127[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_protectionUpdateBlock];
  v133 = *&v127[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_protectionUpdateBlock + 8];
  *v131 = sub_10056C1A4;
  v131[1] = v130;

  sub_1000164A8(v132, v133);
  v134 = *v131;
  if (*v131)
  {
    v135 = v131[1];

    (v134)(v136);

    sub_1000164A8(v134, v135);
  }

  else
  {
  }

  return [v127 setNeedsLayout];
}