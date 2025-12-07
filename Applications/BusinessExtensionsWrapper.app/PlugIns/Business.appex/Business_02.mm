uint64_t sub_10002F9BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_100006910(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return sub_10000E784(v10, &unk_1000F1DF0, &qword_1000B18F0);
}

uint64_t sub_10002FACC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v55 = a1;
  v56 = a2;
  v57 = a3;
  v4 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v53 - v8;
  v10 = sub_1000AB6EC();
  v59 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v53 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = &v53 - v13;
  v14 = [objc_allocWithZone(UIPrintPageRenderer) init];
  v15 = *(v3 + OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview);
  if (!v15)
  {
LABEL_23:
    __break(1u);
  }

  v16 = [v15 viewPrintFormatter];
  [v14 addPrintFormatter:v16 startingAtPageAtIndex:0];

  v17 = [objc_allocWithZone(NSMutableData) init];
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = 595.0;
  v61.size.height = 842.0;
  v62 = CGRectInset(v61, 0.0, 0.0);
  x = v62.origin.x;
  y = v62.origin.y;
  width = v62.size.width;
  height = v62.size.height;
  v22 = objc_opt_self();
  v23 = [v22 valueWithCGRect:{0.0, 0.0, 595.0, 842.0}];
  v24 = sub_1000AC02C();
  [v14 setValue:v23 forKey:v24];

  v25 = [v22 valueWithCGRect:{x, y, width, height}];
  v26 = sub_1000AC02C();
  [v14 setValue:v25 forKey:v26];

  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v63.size.width = 0.0;
  v63.size.height = 0.0;
  UIGraphicsBeginPDFContextToData(v17, v63, 0);
  v27 = [v14 numberOfPages];
  v28 = v27 - 1;
  if (v27 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v29 = v59;
  v30 = 1;
  while (1)
  {
    UIGraphicsBeginPDFPage();
    PDFContextBounds = UIGraphicsGetPDFContextBounds();
    [v14 drawPageAtIndex:v30 - 1 inRect:{PDFContextBounds.origin.x, PDFContextBounds.origin.y, PDFContextBounds.size.width, PDFContextBounds.size.height}];
    if (!v28)
    {
      break;
    }

    --v28;
    if (__OFADD__(v30++, 1))
    {
      __break(1u);
      break;
    }
  }

  v54 = v17;
  UIGraphicsEndPDFContext();
  v32 = sub_1000AC02C();
  v33 = [v32 lastPathComponent];

  if (!v33)
  {
    sub_1000AC06C();
    v33 = sub_1000AC02C();
  }

  v34 = NSTemporaryDirectory();
  if (!v34)
  {
    sub_1000AC06C();
    v34 = sub_1000AC02C();
  }

  v35 = [objc_allocWithZone(NSURL) initFileURLWithPath:v34];

  v36 = [v35 URLByAppendingPathComponent:v33];
  if (v36)
  {
    sub_1000AB6AC();

    v37 = *(v29 + 56);
    v37(v7, 0, 1, v10);
  }

  else
  {
    v37 = *(v29 + 56);
    v37(v7, 1, 1, v10);
  }

  v38 = v58;
  sub_10000E7E4(v7, v9);
  if ((*(v29 + 48))(v9, 1, v10) == 1)
  {

    sub_10000E784(v9, &unk_1000F06A0, &unk_1000B0450);
LABEL_20:
    v50 = 1;
    v49 = v57;
    return (v37)(v49, v50, 1, v10);
  }

  v39 = v53;
  sub_1000AB69C();
  v40 = *(v29 + 8);
  v40(v9, v10);
  v41 = *(v29 + 32);
  v41(v38, v39, v10);
  sub_1000AB67C(v42);
  v44 = v43;
  v60 = 0;
  v45 = v54;
  v46 = [(NSMutableData *)v54 writeToURL:v43 options:1 error:&v60];

  if (!v46)
  {
    v51 = v60;
    sub_1000AB63C();

    swift_willThrow();
    v40(v58, v10);

    goto LABEL_20;
  }

  v47 = v60;

  v48 = v57;
  v41(v57, v58, v10);
  v49 = v48;
  v50 = 0;
  return (v37)(v49, v50, 1, v10);
}

id sub_1000301BC(void *a1)
{
  v3 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_scrollview;
  *&v1[v3] = [objc_allocWithZone(UIScrollView) init];
  v4 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_footerToolbar;
  *&v1[v4] = [objc_allocWithZone(UIToolbar) init];
  v5 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_toolbarBorder;
  *&v1[v5] = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_shareButtonItem;
  v7 = type metadata accessor for IMBHTMLContentViewController();
  v8 = objc_allocWithZone(UIBarButtonItem);
  v13 = v7;
  sub_10000413C(&unk_1000F06C0, &qword_1000B43E0);
  v9 = [v8 initWithBarButtonSystemItem:9 target:sub_1000AC7CC() action:"shareButtonTapped:"];
  swift_unknownObjectRelease();
  *&v1[v6] = v9;
  *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview] = 0;
  *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_headerView] = 0;
  *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_contentHeaderView] = 0;
  *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webviewHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_content] = 0;
  v12.receiver = v1;
  v12.super_class = v7;
  v10 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);

  if (v10)
  {
  }

  return v10;
}

double sub_100030374()
{

  return result;
}

id sub_100030424(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IMBHTMLContentViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100030538()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1000AC02C();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v7[4] = sub_100030950;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10002F9BC;
    v7[3] = &unk_1000DB810;
    v5 = _Block_copy(v7);
    v6 = v0;

    [v2 evaluateJavaScript:v3 completionHandler:v5];
    _Block_release(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003065C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1000AB57C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000AB6EC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 navigationType])
  {
    v17 = [a1 request];
    sub_1000AB54C();

    sub_1000AB56C();
    (*(v10 + 8))(v12, v9);
    if ((*(v14 + 48))(v8, 1, v13) != 1)
    {
      (*(v14 + 32))(v16, v8, v13);
      sub_1000058D0((a2 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_urlHelper), *(a2 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_urlHelper + 24));
      sub_10004E400(v16, 1, 0, 0);
      (*(a3 + 16))(a3, 0);
      return (*(v14 + 8))(v16, v13);
    }

    sub_10000E784(v8, &unk_1000F06A0, &unk_1000B0450);
  }

  return (*(a3 + 16))(a3, 1);
}

uint64_t sub_100030918()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100030958(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t *sub_100030970(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000309E4()
{
  if (*v0)
  {
    return 0x7265646E6573;
  }

  else
  {
    return 0x6E65697069636572;
  }
}

unint64_t sub_100030A24()
{
  result = qword_1000F06E0;
  if (!qword_1000F06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06E0);
  }

  return result;
}

id sub_100030A78(void *a1)
{
  *&v1[OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_messagesAppProxy + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_bubbleView];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_conversation] = a1;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for IMBTranscriptEmptyMessageViewController();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  v6 = qword_1000EEE80;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1000FC008;
  v9 = sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000AF0E0;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = NSStringFromClass(ObjCClassFromMetadata);
  v13 = sub_1000AC06C();
  v15 = v14;

  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10000587C();
  *(v10 + 32) = v13;
  *(v10 + 40) = v15;
  sub_1000ABA5C("Created a %@ for message: nil", 29, 2, &_mh_execute_header, v8, v9, v10, v17.receiver, v17.super_class);

  return v7;
}

void sub_100030C9C()
{
  v1 = v0;
  v2 = type metadata accessor for URLHelper(0);
  __chkstk_darwin(v2);
  v4 = &v28[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IMBTranscriptEmptyMessageViewController();
  v31.receiver = v1;
  v31.super_class = v5;
  objc_msgSendSuper2(&v31, "viewDidLoad");
  v6 = BCBubbleViewStyleIcon;
  sub_10004EA70(v4);
  v29 = v2;
  v30 = &off_1000DCB20;
  v7 = sub_100030970(v28);
  sub_10001E764(v4, v7);
  v8 = objc_allocWithZone(type metadata accessor for IMBBubbleView());
  v9 = sub_1000315C0(v28, v29);
  __chkstk_darwin(v9);
  v11 = &v28[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_10003F008(0, v6, v11, v8);

  sub_10001E7C8(v4);
  sub_10000E738(v28);
  v14 = [objc_opt_self() defaultBubbleTitleFor:0];
  v15 = sub_1000AC06C();
  v17 = v16;

  v18 = (v13 + OBJC_IVAR____TtC8Business13IMBBubbleView_title);
  *v18 = v15;
  v18[1] = v17;

  sub_1000A9FF0();
  [v13 setUserInteractionEnabled:0];
  *(v13 + OBJC_IVAR____TtC8Business13IMBBubbleView_delegate + 8) = &off_1000DB8C8;
  swift_unknownObjectWeakAssign();
  v19 = *(v13 + OBJC_IVAR____TtC8Business13IMBBubbleView_image);
  *(v13 + OBJC_IVAR____TtC8Business13IMBBubbleView_image) = 0;

  sub_1000AA2B0();
  v20 = &v1[OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_bubbleView];
  v21 = *&v1[OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_bubbleView];
  *v20 = v13;
  *(v20 + 1) = &off_1000DE0A0;
  v22 = v13;

  v23 = [v1 view];
  if (v23)
  {
    v24 = v23;
    [v23 addSubview:v22];

    v25 = [v1 view];
    if (v25)
    {
      v26 = v25;
      sub_1000155F4(v25);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_100030FFC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBTranscriptEmptyMessageViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1000310B0(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_bubbleView);
  if (v5)
  {
    v6 = *(v2 + OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_bubbleView + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v9 = *(v8 + 16);
    v10 = v5;
    a1 = v9(ObjectType, v8, a1, a2);
  }

  return a1;
}

uint64_t sub_100031184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v8 = qword_1000FC008;
  v9 = sub_1000AC2BC();

  return sub_1000ABA5C(a5, a6, 2, &_mh_execute_header, v8, v9, _swiftEmptyArrayStorage);
}

id sub_100031220()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = [Strong activeConversation];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_100031280@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_1000AC8EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000413C(&qword_1000F0728, &unk_1000B1A10);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v23 = v1;
  sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000AF0F0;
  strcpy((v9 + 32), "conversation");
  *(v9 + 45) = 0;
  *(v9 + 46) = -5120;
  v10 = *&v1[OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_conversation];
  v11 = sub_100031574();
  *(v9 + 48) = v10;
  *(v9 + 72) = v11;
  *(v9 + 80) = 0xD000000000000010;
  *(v9 + 88) = 0x80000001000B8300;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    ObjectType = swift_getObjectType();
    *&v21 = v13;
    sub_100006910(&v21, (v9 + 96));
  }

  else
  {
    *(v9 + 120) = &type metadata for String;
    *(v9 + 96) = 7104878;
    *(v9 + 104) = 0xE300000000000000;
  }

  v14 = enum case for Mirror.DisplayStyle.class(_:);
  v15 = sub_1000AC8DC();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v8, v14, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  type metadata accessor for IMBTranscriptEmptyMessageViewController();
  v17 = v1;
  v18 = v10;
  return sub_1000AC8FC();
}

unint64_t sub_100031574()
{
  result = qword_1000F0730;
  if (!qword_1000F0730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000F0730);
  }

  return result;
}

uint64_t sub_1000315C0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

id sub_100031620(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000AB6EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Endpoint(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Request(0);
  __chkstk_darwin(v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC8Business10HttpClient_httpSuccessCodeMin] = 200;
  *&v2[OBJC_IVAR____TtC8Business10HttpClient_httpSuccessCodeMax] = 299;
  v30 = OBJC_IVAR____TtC8Business10HttpClient_reachability;
  *&v2[OBJC_IVAR____TtC8Business10HttpClient_reachability] = 0;
  sub_10002A0C8(a1, &v2[OBJC_IVAR____TtC8Business10HttpClient_endpoint]);
  v32 = a1;
  sub_10002A0C8(a1, v10);
  v14 = *v10;
  v15 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v16 = *(v11 + 20);
  v17 = *(v5 + 32);
  v31 = v4;
  v17(&v13[v16], v10 + v15, v4);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v18 = qword_1000FC008;
  v19 = sub_1000AC2BC();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000AF0E0;
  *(v20 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v20 + 64) = sub_100011970();
  *(v20 + 32) = v14;

  sub_1000ABA5C("Creating network request with parameters %@", 43, 2, &_mh_execute_header, v18, v19, v20);

  *v13 = 1;
  *&v13[*(v11 + 24)] = v14;
  v21 = &v13[v16];
  v22 = v31;
  (*(v5 + 16))(v7, v21, v31);
  sub_10003634C(v13, type metadata accessor for Request);
  sub_1000AB64C();
  (*(v5 + 8))(v7, v22);
  v23 = sub_1000AC10C();

  v24 = SCNetworkReachabilityCreateWithName(0, (v23 + 32));

  v25 = 0;
  if (v24)
  {
    type metadata accessor for Reachability();
    swift_allocObject();
    v25 = Reachability.init(networkReachability:)(v24);
  }

  *&v2[v30] = v25;

  v26 = type metadata accessor for HttpClient(0);
  v33.receiver = v2;
  v33.super_class = v26;
  v27 = objc_msgSendSuper2(&v33, "init");
  sub_10003634C(v32, type metadata accessor for Endpoint);
  return v27;
}

void sub_1000319F8(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, uint64_t))
{
  if (a3)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = a3;
      if ([v12 statusCode] < 200 || objc_msgSend(v12, "statusCode") >= 300)
      {
        v62 = a6;
        if (qword_1000EEE80 != -1)
        {
          swift_once();
        }

        v14 = qword_1000FC008;
        v15 = sub_1000AC2BC();
        sub_10000413C(&qword_1000F0060, &unk_1000B0470);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1000AF0E0;
        [v12 statusCode];
        sub_100036424();
        v17 = sub_1000AC46C();
        v19 = v18;
        *(v16 + 56) = &type metadata for String;
        *(v16 + 64) = sub_10000587C();
        *(v16 + 32) = v17;
        *(v16 + 40) = v19;
        sub_1000ABA5C("BusinessChat: HttpRequest Error: request returned with status code: %@", 70, 2, &_mh_execute_header, v14, v15, v16);

        sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000AF0E0;
        *(inited + 32) = sub_1000AC06C();
        *(inited + 40) = v21;
        sub_1000AC58C(25);

        *&v64[0] = [v12 statusCode];
        v66._countAndFlagsBits = sub_1000AC78C();
        sub_1000AC12C(v66);

        *(inited + 72) = &type metadata for String;
        *(inited + 48) = 0xD000000000000017;
        *(inited + 56) = 0x80000001000B87D0;
        sub_10004FE58(inited);
        swift_setDeallocating();
        sub_1000362E4(inited + 32);
        v22 = objc_allocWithZone(NSError);
        v23 = sub_1000AC02C();
        isa = sub_1000ABFAC().super.isa;

        v25 = [v22 initWithDomain:v23 code:500 userInfo:isa];

        v26 = v25;
        v62(v25, 1);

        return;
      }
    }
  }

  if (a4)
  {
    swift_errorRetain();
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v27 = qword_1000FC008;
    v28 = sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v30 = sub_1000AC7FC();
    v32 = v31;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_10000587C();
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    sub_1000ABA5C("BusinessChat: Error in session data task: %@", 44, 2, &_mh_execute_header, v27, v28, v29);

    swift_errorRetain();
    a6(a4, 1);
  }

  else if (a2 >> 60 == 15)
  {
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_1000AF0E0;
    *(v33 + 32) = sub_1000AC06C();
    *(v33 + 72) = &type metadata for String;
    *(v33 + 40) = v34;
    *(v33 + 48) = 0xD00000000000001ALL;
    *(v33 + 56) = 0x80000001000B8640;
    sub_10004FE58(v33);
    swift_setDeallocating();
    sub_1000362E4(v33 + 32);
    v35 = objc_allocWithZone(NSError);
    v36 = sub_1000AC02C();
    v37 = sub_1000ABFAC().super.isa;

    v38 = [v35 initWithDomain:v36 code:0 userInfo:v37];

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v39 = qword_1000FC008;
    v40 = sub_1000AC2AC();
    sub_1000ABA5C("BusinessChat: Error in session data task: Empty data in url response", 68, 2, &_mh_execute_header, v39, v40, _swiftEmptyArrayStorage);
    v41 = v38;
    a6(v38, 1);
  }

  else
  {
    sub_1000363D0(a1, a2);
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v42 = qword_1000FC008;
    v43 = sub_1000AC2BC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1000AF0E0;
    *&v65[0] = a3;
    v45 = a3;
    sub_10000413C(&qword_1000F07B0, &qword_1000B1AE8);
    v46 = sub_1000AC0CC();
    v48 = v47;
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = sub_10000587C();
    *(v44 + 32) = v46;
    *(v44 + 40) = v48;
    sub_1000ABA5C("BusinessChat: Server Response: %@", 33, 2, &_mh_execute_header, v42, v43, v44);

    v49 = objc_opt_self();
    v50 = sub_1000AB72C().super.isa;
    v63 = 0;
    v51 = [v49 JSONObjectWithData:v50 options:4 error:&v63];

    v52 = v63;
    if (v51)
    {
      sub_1000AC47C();
      swift_unknownObjectRelease();
      sub_100006910(v64, v65);
      sub_1000068B4(v65, v64);
      sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
      if (swift_dynamicCast())
      {
        a6(v63, 0);
        sub_10000E950(a1, a2);

        sub_10000E738(v65);
        return;
      }

      sub_10000E738(v65);
    }

    else
    {
      v53 = v52;
      sub_1000AB63C();

      swift_willThrow();
    }

    v54 = sub_1000AC2AC();
    sub_1000ABA5C("BusinessChat: Error creating dictionary from JSON", 49, 2, &_mh_execute_header, v42, v54, _swiftEmptyArrayStorage);
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    v55 = swift_initStackObject();
    *(v55 + 16) = xmmword_1000AF0E0;
    *(v55 + 32) = sub_1000AC06C();
    *(v55 + 72) = &type metadata for String;
    *(v55 + 40) = v56;
    *(v55 + 48) = 0xD00000000000002ALL;
    *(v55 + 56) = 0x80000001000B8720;
    sub_10004FE58(v55);
    swift_setDeallocating();
    sub_1000362E4(v55 + 32);
    v57 = objc_allocWithZone(NSError);
    v58 = sub_1000AC02C();
    v59 = sub_1000ABFAC().super.isa;

    v60 = [v57 initWithDomain:v58 code:0 userInfo:v59];

    v61 = v60;
    a6(v60, 1);
    sub_10000E950(a1, a2);
  }
}

double sub_1000323BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1000AB73C();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_10000E950(v6, v10);

  return result;
}

uint64_t type metadata accessor for HttpClient(uint64_t a1)
{
  result = qword_1000F0770;
  if (!qword_1000F0770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100032584(uint64_t a1)
{
  v3[4] = &value witness table for Builtin.Int64 + 64;
  v3[5] = &value witness table for Builtin.Int64 + 64;
  result = sub_1000AB6EC();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v3[6] = v3;
    v3[7] = "\b";
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_10003269C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1000326F8(char *a1, void (*a2)(id), uint64_t a3)
{
  v6 = type metadata accessor for Request(0);
  __chkstk_darwin(v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Endpoint(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v55 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = *&a1[OBJC_IVAR____TtC8Business10HttpClient_reachability];
  if (!v16 || (v17 = *(v16 + 48)) == 0)
  {
    sub_10002A2D0(a2, a3);
LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v18 = qword_1000FC008;
    v19 = sub_1000AC2BC();
    sub_1000ABA5C("BusinessChat: the network is not reachable", 42, 2, &_mh_execute_header, v18, v19, _swiftEmptyArrayStorage);
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v21;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x80000001000B8560;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_1000362E4(inited + 32);
    v22 = objc_allocWithZone(NSError);
    v23 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v25 = [v22 initWithDomain:v23 code:0 userInfo:isa];

    if (a2)
    {
      v26 = v25;
      a2(v25);

      v25 = v26;
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  flags[0] = 0;
  sub_10002A2D0(a2, a3);

  if (!SCNetworkReachabilityGetFlags(v17, flags) || (flags[0] & 2) == 0 || (v27 = *(v16 + 48)) != 0 && (flags[0] = 0, SCNetworkReachabilityGetFlags(v27, flags)) && (~flags[0] & 5) == 0)
  {

    goto LABEL_7;
  }

  v57 = a1;
  sub_10002A0C8(&a1[OBJC_IVAR____TtC8Business10HttpClient_endpoint], v14);
  sub_10002A0C8(v14, v12);
  v59 = *v12;
  v28 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v29 = *(v6 + 20);
  v30 = sub_1000AB6EC();
  (*(*(v30 - 8) + 32))(&v8[v29], &v12[v28], v30);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v31 = qword_1000FC008;
  v58 = sub_1000AC2BC();
  v56 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v32 = swift_allocObject();
  v55 = xmmword_1000AF0E0;
  *(v32 + 16) = xmmword_1000AF0E0;
  *(v32 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v32 + 64) = sub_100011970();
  v33 = v59;
  *(v32 + 32) = v59;

  sub_1000ABA5C("Creating network request with parameters %@", 43, 2, &_mh_execute_header, v31, v58, v32);

  sub_10003634C(v14, type metadata accessor for Endpoint);
  *v8 = 1;
  *&v8[*(v6 + 24)] = v33;
  v34 = sub_100089A28();
  sub_10003634C(v8, type metadata accessor for Request);
  if (!v34)
  {
    v42 = objc_allocWithZone(NSError);
    v43 = sub_1000AC02C();
    v25 = [v42 initWithDomain:v43 code:1 userInfo:0];

    v44 = sub_1000AC2AC();
    sub_1000ABA5C("BusinessChat: Error creating url request", 40, 2, &_mh_execute_header, v31, v44, _swiftEmptyArrayStorage);
    if (a2)
    {
      v45 = v25;
      a2(v25);

      v25 = v45;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v35 = sub_1000AC2BC();
  v36 = swift_allocObject();
  *(v36 + 16) = v55;
  v37 = [v34 HTTPBody];
  if (v37)
  {
    v38 = v37;
    v39 = sub_1000AB73C();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0xF000000000000000;
  }

  v46 = v57;
  *flags = v39;
  v61 = v41;
  sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
  v47 = sub_1000AC0CC();
  v49 = v48;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = sub_10000587C();
  *(v36 + 32) = v47;
  *(v36 + 40) = v49;
  sub_1000ABA5C("BusinessChat: Client URL Request: %@", 36, 2, &_mh_execute_header, v31, v35, v36);

  v50 = [objc_opt_self() ephemeralSessionConfiguration];
  v51 = [objc_opt_self() sessionWithConfiguration:v50];

  v52 = swift_allocObject();
  v52[2] = v46;
  v52[3] = sub_100036524;
  v52[4] = v15;
  v64 = sub_100036F78;
  v65 = v52;
  *flags = _NSConcreteStackBlock;
  v61 = 1107296256;
  v62 = sub_1000323BC;
  v63 = &unk_1000DBBF8;
  v53 = _Block_copy(flags);
  v54 = v46;

  v25 = [v51 dataTaskWithRequest:v34 completionHandler:v53];
  _Block_release(v53);
  [v25 resume];

LABEL_12:
}

void sub_100032F2C(char *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Request(0);
  __chkstk_darwin(v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Endpoint(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v57 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = *&a1[OBJC_IVAR____TtC8Business10HttpClient_reachability];
  if (!v16 || (v17 = *(v16 + 48)) == 0)
  {

    v19 = a3;
    goto LABEL_7;
  }

  flags[0] = 0;

  v18 = a3;

  if (!SCNetworkReachabilityGetFlags(v17, flags) || (flags[0] & 2) == 0 || (v30 = *(v16 + 48)) != 0 && (flags[0] = 0, SCNetworkReachabilityGetFlags(v30, flags)) && (~flags[0] & 5) == 0)
  {

LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v20 = qword_1000FC008;
    v21 = sub_1000AC2BC();
    sub_1000ABA5C("BusinessChat: the network is not reachable", 42, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v23;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x80000001000B8560;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_1000362E4(inited + 32);
    v24 = objc_allocWithZone(NSError);
    v25 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v27 = [v24 initWithDomain:v25 code:0 userInfo:isa];

    v28 = v27;
    sub_100022F90(v28);
    goto LABEL_10;
  }

  v58 = v18;
  sub_10002A0C8(&a1[OBJC_IVAR____TtC8Business10HttpClient_endpoint], v14);
  sub_10002A0C8(v14, v12);
  v31 = *v12;
  v32 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v33 = *(v6 + 20);
  v34 = sub_1000AB6EC();
  (*(*(v34 - 8) + 32))(&v8[v33], &v12[v32], v34);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v35 = qword_1000FC008;
  v36 = sub_1000AC2BC();
  v60 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v37 = swift_allocObject();
  v59 = xmmword_1000AF0E0;
  *(v37 + 16) = xmmword_1000AF0E0;
  *(v37 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v37 + 64) = sub_100011970();
  *(v37 + 32) = v31;

  v61 = v35;
  sub_1000ABA5C("Creating network request with parameters %@", 43, 2, &_mh_execute_header, v35, v36, v37);

  sub_10003634C(v14, type metadata accessor for Endpoint);
  *v8 = 1;
  *&v8[*(v6 + 24)] = v31;
  v38 = sub_100089A28();
  sub_10003634C(v8, type metadata accessor for Request);
  if (!v38)
  {
    v46 = objc_allocWithZone(NSError);
    v47 = sub_1000AC02C();
    v48 = [v46 initWithDomain:v47 code:1 userInfo:0];

    v49 = sub_1000AC2AC();
    sub_1000ABA5C("BusinessChat: Error creating url request", 40, 2, &_mh_execute_header, v61, v49, _swiftEmptyArrayStorage);
    v28 = v48;
    sub_100022F90(v28);

LABEL_10:

    v29 = v28;
    goto LABEL_11;
  }

  v39 = v61;
  LODWORD(v58) = sub_1000AC2BC();
  v40 = swift_allocObject();
  *(v40 + 16) = v59;
  v41 = [v38 HTTPBody];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1000AB73C();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0xF000000000000000;
  }

  *flags = v43;
  v63 = v45;
  sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
  v50 = sub_1000AC0CC();
  v52 = v51;
  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = sub_10000587C();
  *(v40 + 32) = v50;
  *(v40 + 40) = v52;
  sub_1000ABA5C("BusinessChat: Client URL Request: %@", 36, 2, &_mh_execute_header, v39, v58, v40);

  v53 = [objc_opt_self() ephemeralSessionConfiguration];
  v28 = [objc_opt_self() sessionWithConfiguration:v53];

  v54 = swift_allocObject();
  v54[2] = a1;
  v54[3] = sub_100036570;
  v54[4] = v15;
  v66 = sub_100036F78;
  v67 = v54;
  *flags = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_1000323BC;
  v65 = &unk_1000DBC70;
  v55 = _Block_copy(flags);
  v56 = a1;

  v29 = [v28 dataTaskWithRequest:v38 completionHandler:v55];
  _Block_release(v55);
  [v29 resume];

LABEL_11:
}

void sub_100033720(char *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Request(0);
  __chkstk_darwin(v8);
  v10 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Endpoint(0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v63 - v15;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v18 = *&a1[OBJC_IVAR____TtC8Business10HttpClient_reachability];
  if (!v18 || (v66 = a1, (v19 = *(v18 + 48)) == 0))
  {
    v21 = a2;

    v22 = a4;
    goto LABEL_7;
  }

  flags[0] = 0;
  v65 = a2;

  v20 = a4;

  if (!SCNetworkReachabilityGetFlags(v19, flags) || (flags[0] & 2) == 0 || (v33 = *(v18 + 48), v34 = v66, v33) && (flags[0] = 0, SCNetworkReachabilityGetFlags(v33, flags)) && (~flags[0] & 5) == 0)
  {

LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v23 = qword_1000FC008;
    v24 = sub_1000AC2BC();
    sub_1000ABA5C("BusinessChat: the network is not reachable", 42, 2, &_mh_execute_header, v23, v24, _swiftEmptyArrayStorage);
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v26;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x80000001000B8560;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_1000362E4(inited + 32);
    v27 = objc_allocWithZone(NSError);
    v28 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v30 = [v27 initWithDomain:v28 code:0 userInfo:isa];

    v31 = v30;
    [a2 invalidate];
    sub_100022F90(v31);
    goto LABEL_10;
  }

  v63[1] = v20;
  sub_10002A0C8(&v34[OBJC_IVAR____TtC8Business10HttpClient_endpoint], v16);
  sub_10002A0C8(v16, v14);
  v35 = *v14;
  v36 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v37 = *(v8 + 20);
  v38 = sub_1000AB6EC();
  (*(*(v38 - 8) + 32))(&v10[v37], &v14[v36], v38);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v39 = qword_1000FC008;
  v40 = sub_1000AC2BC();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v41 = swift_allocObject();
  v64 = xmmword_1000AF0E0;
  *(v41 + 16) = xmmword_1000AF0E0;
  *(v41 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v41 + 64) = sub_100011970();
  *(v41 + 32) = v35;

  sub_1000ABA5C("Creating network request with parameters %@", 43, 2, &_mh_execute_header, v39, v40, v41);

  sub_10003634C(v16, type metadata accessor for Endpoint);
  *v10 = 1;
  *&v10[*(v8 + 24)] = v35;
  v42 = sub_100089A28();
  sub_10003634C(v10, type metadata accessor for Request);
  if (!v42)
  {
    v51 = objc_allocWithZone(NSError);
    v52 = sub_1000AC02C();
    v53 = [v51 initWithDomain:v52 code:1 userInfo:0];

    v54 = sub_1000AC2AC();
    sub_1000ABA5C("BusinessChat: Error creating url request", 40, 2, &_mh_execute_header, v39, v54, _swiftEmptyArrayStorage);
    v31 = v53;
    [v65 invalidate];
    sub_100022F90(v31);

LABEL_10:

    v32 = v31;
    goto LABEL_11;
  }

  v43 = v39;
  v44 = sub_1000AC2BC();
  v45 = swift_allocObject();
  *(v45 + 16) = v64;
  v46 = [v42 HTTPBody];
  if (v46)
  {
    v47 = v46;
    v48 = sub_1000AB73C();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0xF000000000000000;
  }

  *flags = v48;
  v68 = v50;
  sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
  v55 = sub_1000AC0CC();
  v57 = v56;
  *(v45 + 56) = &type metadata for String;
  *(v45 + 64) = sub_10000587C();
  *(v45 + 32) = v55;
  *(v45 + 40) = v57;
  sub_1000ABA5C("BusinessChat: Client URL Request: %@", 36, 2, &_mh_execute_header, v43, v44, v45);

  v58 = [objc_opt_self() ephemeralSessionConfiguration];
  v31 = [objc_opt_self() sessionWithConfiguration:v58];

  v59 = swift_allocObject();
  v60 = v66;
  v59[2] = v66;
  v59[3] = sub_1000364D4;
  v59[4] = v17;
  v71 = sub_100036F78;
  v72 = v59;
  *flags = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_1000323BC;
  v70 = &unk_1000DBB80;
  v61 = _Block_copy(flags);
  v62 = v60;

  v32 = [v31 dataTaskWithRequest:v42 completionHandler:v61];
  _Block_release(v61);
  [v32 resume];

LABEL_11:
}

void sub_100033F50(char *a1, void *a2, void *a3, const void *a4)
{
  v8 = type metadata accessor for Request(0);
  __chkstk_darwin(v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Endpoint(0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v64 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = sub_1000362CC;
  v18[4] = v17;
  v18[5] = a3;
  v69 = a1;
  v70 = v17;
  v19 = *&a1[OBJC_IVAR____TtC8Business10HttpClient_reachability];
  if (!v19 || (v20 = *(v19 + 48)) == 0)
  {
    _Block_copy(a4);
    _Block_copy(a4);
    v21 = a2;

    v22 = a3;
    goto LABEL_7;
  }

  flags[0] = 0;
  _Block_copy(a4);
  _Block_copy(a4);
  v68 = a2;

  v67 = a3;

  if (!SCNetworkReachabilityGetFlags(v20, flags) || (flags[0] & 2) == 0 || (v33 = *(v19 + 48)) != 0 && (flags[0] = 0, SCNetworkReachabilityGetFlags(v33, flags)) && (~flags[0] & 5) == 0)
  {

LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v23 = qword_1000FC008;
    v24 = sub_1000AC2BC();
    sub_1000ABA5C("BusinessChat: the network is not reachable", 42, 2, &_mh_execute_header, v23, v24, _swiftEmptyArrayStorage);
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v26;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x80000001000B8560;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_1000362E4(inited + 32);
    v27 = objc_allocWithZone(NSError);
    v28 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v30 = [v27 initWithDomain:v28 code:0 userInfo:isa];

    _Block_copy(a4);
    v31 = v30;
    sub_100028104(v30, 1, a2, a3, a4);
    _Block_release(a4);

    goto LABEL_10;
  }

  sub_10002A0C8(&v69[OBJC_IVAR____TtC8Business10HttpClient_endpoint], v16);
  sub_10002A0C8(v16, v14);
  v34 = *v14;
  v35 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v36 = *(v8 + 20);
  v37 = sub_1000AB6EC();
  (*(*(v37 - 8) + 32))(&v10[v36], &v14[v35], v37);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v38 = qword_1000FC008;
  v39 = sub_1000AC2BC();
  v65 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v40 = swift_allocObject();
  v64 = xmmword_1000AF0E0;
  *(v40 + 16) = xmmword_1000AF0E0;
  *(v40 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v40 + 64) = sub_100011970();
  *(v40 + 32) = v34;

  v66 = v38;
  sub_1000ABA5C("Creating network request with parameters %@", 43, 2, &_mh_execute_header, v38, v39, v40);

  sub_10003634C(v16, type metadata accessor for Endpoint);
  *v10 = 1;
  *&v10[*(v8 + 24)] = v34;
  v41 = sub_100089A28();
  sub_10003634C(v10, type metadata accessor for Request);
  if (!v41)
  {
    v50 = objc_allocWithZone(NSError);
    v51 = sub_1000AC02C();
    v52 = [v50 initWithDomain:v51 code:1 userInfo:0];

    v53 = sub_1000AC2AC();
    sub_1000ABA5C("BusinessChat: Error creating url request", 40, 2, &_mh_execute_header, v66, v53, _swiftEmptyArrayStorage);
    _Block_copy(a4);
    v31 = v52;
    v54 = v52;
    v55 = v68;
    sub_100028104(v54, 1, v68, v67, a4);
    _Block_release(a4);

LABEL_10:

    v32 = v31;
    goto LABEL_11;
  }

  v42 = v66;
  v43 = sub_1000AC2BC();
  v44 = swift_allocObject();
  *(v44 + 16) = v64;
  v45 = [v41 HTTPBody];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1000AB73C();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xF000000000000000;
  }

  *flags = v47;
  v72 = v49;
  sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
  v56 = sub_1000AC0CC();
  v58 = v57;
  *(v44 + 56) = &type metadata for String;
  *(v44 + 64) = sub_10000587C();
  *(v44 + 32) = v56;
  *(v44 + 40) = v58;
  sub_1000ABA5C("BusinessChat: Client URL Request: %@", 36, 2, &_mh_execute_header, v42, v43, v44);

  v59 = [objc_opt_self() ephemeralSessionConfiguration];
  v31 = [objc_opt_self() sessionWithConfiguration:v59];

  v60 = swift_allocObject();
  v61 = v69;
  v60[2] = v69;
  v60[3] = sub_100036488;
  v60[4] = v18;
  v75 = sub_100036F78;
  v76 = v60;
  *flags = _NSConcreteStackBlock;
  v72 = 1107296256;
  v73 = sub_1000323BC;
  v74 = &unk_1000DBB08;
  v62 = _Block_copy(flags);
  v63 = v61;

  v32 = [v31 dataTaskWithRequest:v41 completionHandler:v62];
  _Block_release(v62);
  [v32 resume];

LABEL_11:

  _Block_release(a4);
}

void sub_10003483C(char *a1, void *a2, void (*a3)(id), uint64_t a4, void *a5)
{
  v10 = type metadata accessor for Request(0);
  __chkstk_darwin(v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Endpoint(0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v63 - v17;
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v68 = a1;
  v69 = a3;
  v19[4] = a4;
  v19[5] = a5;
  v20 = *&a1[OBJC_IVAR____TtC8Business10HttpClient_reachability];
  if (!v20 || (v21 = *(v20 + 48)) == 0)
  {
    v22 = a2;

    v23 = a5;
    goto LABEL_7;
  }

  flags[0] = 0;
  v67 = a2;

  v66 = a5;

  if (!SCNetworkReachabilityGetFlags(v21, flags) || (flags[0] & 2) == 0 || (v34 = *(v20 + 48)) != 0 && (flags[0] = 0, SCNetworkReachabilityGetFlags(v34, flags)) && (~flags[0] & 5) == 0)
  {

LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v24 = qword_1000FC008;
    v25 = sub_1000AC2BC();
    sub_1000ABA5C("BusinessChat: the network is not reachable", 42, 2, &_mh_execute_header, v24, v25, _swiftEmptyArrayStorage);
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v27;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x80000001000B8560;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_1000362E4(inited + 32);
    v28 = objc_allocWithZone(NSError);
    v29 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v31 = [v28 initWithDomain:v29 code:0 userInfo:isa];

    v32 = v31;
    sub_100025F78(v31, 1, a2, v69, a4, a5);
    goto LABEL_10;
  }

  sub_10002A0C8(&v68[OBJC_IVAR____TtC8Business10HttpClient_endpoint], v18);
  sub_10002A0C8(v18, v16);
  v35 = *v16;
  v36 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v37 = *(v10 + 20);
  v38 = sub_1000AB6EC();
  (*(*(v38 - 8) + 32))(&v12[v37], &v16[v36], v38);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v39 = qword_1000FC008;
  v40 = sub_1000AC2BC();
  v64 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v41 = swift_allocObject();
  v63 = xmmword_1000AF0E0;
  *(v41 + 16) = xmmword_1000AF0E0;
  *(v41 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v41 + 64) = sub_100011970();
  *(v41 + 32) = v35;

  v65 = v39;
  sub_1000ABA5C("Creating network request with parameters %@", 43, 2, &_mh_execute_header, v39, v40, v41);

  sub_10003634C(v18, type metadata accessor for Endpoint);
  *v12 = 1;
  *&v12[*(v10 + 24)] = v35;
  v42 = sub_100089A28();
  sub_10003634C(v12, type metadata accessor for Request);
  if (!v42)
  {
    v51 = objc_allocWithZone(NSError);
    v52 = sub_1000AC02C();
    v53 = [v51 initWithDomain:v52 code:1 userInfo:0];

    v54 = sub_1000AC2AC();
    sub_1000ABA5C("BusinessChat: Error creating url request", 40, 2, &_mh_execute_header, v65, v54, _swiftEmptyArrayStorage);
    v32 = v53;
    sub_100025F78(v53, 1, v67, v69, a4, v66);

LABEL_10:

    v33 = v32;
    goto LABEL_11;
  }

  v43 = v65;
  v44 = sub_1000AC2BC();
  v45 = swift_allocObject();
  *(v45 + 16) = v63;
  v46 = [v42 HTTPBody];
  if (v46)
  {
    v47 = v46;
    v48 = sub_1000AB73C();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0xF000000000000000;
  }

  *flags = v48;
  v71 = v50;
  sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
  v55 = sub_1000AC0CC();
  v57 = v56;
  *(v45 + 56) = &type metadata for String;
  *(v45 + 64) = sub_10000587C();
  *(v45 + 32) = v55;
  *(v45 + 40) = v57;
  sub_1000ABA5C("BusinessChat: Client URL Request: %@", 36, 2, &_mh_execute_header, v43, v44, v45);

  v58 = [objc_opt_self() ephemeralSessionConfiguration];
  v32 = [objc_opt_self() sessionWithConfiguration:v58];

  v59 = swift_allocObject();
  v60 = v68;
  v59[2] = v68;
  v59[3] = sub_100036FA4;
  v59[4] = v19;
  v74 = sub_100036F78;
  v75 = v59;
  *flags = _NSConcreteStackBlock;
  v71 = 1107296256;
  v72 = sub_1000323BC;
  v73 = &unk_1000DBDD8;
  v61 = _Block_copy(flags);
  v62 = v60;

  v33 = [v32 dataTaskWithRequest:v42 completionHandler:v61];
  _Block_release(v61);
  [v33 resume];

LABEL_11:
}

void sub_100035084(char *a1, void *a2, const void *a3)
{
  v6 = type metadata accessor for Request(0);
  __chkstk_darwin(v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Endpoint(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v60 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = sub_1000362CC;
  v16[4] = v15;
  v17 = *&a1[OBJC_IVAR____TtC8Business10HttpClient_reachability];
  if (!v17 || (v66 = a1, (v18 = *(v17 + 48)) == 0))
  {
    _Block_copy(a3);
    _Block_copy(a3);
    v19 = a2;

    goto LABEL_7;
  }

  flags[0] = 0;
  _Block_copy(a3);
  _Block_copy(a3);
  v65 = a2;

  if (!SCNetworkReachabilityGetFlags(v18, flags) || (flags[0] & 2) == 0 || (v30 = *(v17 + 48), v31 = v66, v30) && (flags[0] = 0, SCNetworkReachabilityGetFlags(v30, flags)) && (~flags[0] & 5) == 0)
  {

LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v20 = qword_1000FC008;
    v21 = sub_1000AC2BC();
    sub_1000ABA5C("BusinessChat: the network is not reachable", 42, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v23;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x80000001000B8560;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_1000362E4(inited + 32);
    v24 = objc_allocWithZone(NSError);
    v25 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v27 = [v24 initWithDomain:v25 code:0 userInfo:isa];

    _Block_copy(a3);
    v28 = v27;
    sub_1000288B8(v27, 1, a2, a3);
    _Block_release(a3);

    goto LABEL_10;
  }

  sub_10002A0C8(&v31[OBJC_IVAR____TtC8Business10HttpClient_endpoint], v14);
  sub_10002A0C8(v14, v12);
  v63 = *v12;
  v32 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v33 = *(v6 + 20);
  v34 = sub_1000AB6EC();
  (*(*(v34 - 8) + 32))(&v8[v33], &v12[v32], v34);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v35 = qword_1000FC008;
  v62 = sub_1000AC2BC();
  v61 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v36 = swift_allocObject();
  v60 = xmmword_1000AF0E0;
  *(v36 + 16) = xmmword_1000AF0E0;
  *(v36 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v36 + 64) = sub_100011970();
  v37 = v63;
  *(v36 + 32) = v63;

  v64 = v35;
  sub_1000ABA5C("Creating network request with parameters %@", 43, 2, &_mh_execute_header, v35, v62, v36);

  sub_10003634C(v14, type metadata accessor for Endpoint);
  *v8 = 1;
  *&v8[*(v6 + 24)] = v37;
  v38 = sub_100089A28();
  sub_10003634C(v8, type metadata accessor for Request);
  if (!v38)
  {
    v46 = objc_allocWithZone(NSError);
    v47 = sub_1000AC02C();
    v48 = [v46 initWithDomain:v47 code:1 userInfo:0];

    v49 = sub_1000AC2AC();
    sub_1000ABA5C("BusinessChat: Error creating url request", 40, 2, &_mh_execute_header, v64, v49, _swiftEmptyArrayStorage);
    _Block_copy(a3);
    v28 = v48;
    v50 = v48;
    v51 = v65;
    sub_1000288B8(v50, 1, v65, a3);
    _Block_release(a3);

LABEL_10:

    v29 = v28;
    goto LABEL_11;
  }

  v39 = sub_1000AC2BC();
  v40 = swift_allocObject();
  *(v40 + 16) = v60;
  v41 = [v38 HTTPBody];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1000AB73C();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0xF000000000000000;
  }

  *flags = v43;
  v68 = v45;
  sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
  v52 = sub_1000AC0CC();
  v54 = v53;
  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = sub_10000587C();
  *(v40 + 32) = v52;
  *(v40 + 40) = v54;
  sub_1000ABA5C("BusinessChat: Client URL Request: %@", 36, 2, &_mh_execute_header, v64, v39, v40);

  v55 = [objc_opt_self() ephemeralSessionConfiguration];
  v28 = [objc_opt_self() sessionWithConfiguration:v55];

  v56 = swift_allocObject();
  v57 = v66;
  v56[2] = v66;
  v56[3] = sub_100036478;
  v56[4] = v16;
  v71 = sub_100036F78;
  v72 = v56;
  *flags = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_1000323BC;
  v70 = &unk_1000DBA68;
  v58 = _Block_copy(flags);
  v59 = v57;

  v29 = [v28 dataTaskWithRequest:v38 completionHandler:v58];
  _Block_release(v58);
  [v29 resume];

LABEL_11:

  _Block_release(a3);
}

void sub_1000359DC(char *a1, void *a2, const void *a3)
{
  v6 = type metadata accessor for Request(0);
  __chkstk_darwin(v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Endpoint(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v60 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = sub_1000362CC;
  v16[4] = v15;
  v17 = *&a1[OBJC_IVAR____TtC8Business10HttpClient_reachability];
  if (!v17 || (v66 = a1, (v18 = *(v17 + 48)) == 0))
  {
    _Block_copy(a3);
    _Block_copy(a3);
    v19 = a2;

    goto LABEL_7;
  }

  flags[0] = 0;
  _Block_copy(a3);
  _Block_copy(a3);
  v65 = a2;

  if (!SCNetworkReachabilityGetFlags(v18, flags) || (flags[0] & 2) == 0 || (v30 = *(v17 + 48), v31 = v66, v30) && (flags[0] = 0, SCNetworkReachabilityGetFlags(v30, flags)) && (~flags[0] & 5) == 0)
  {

LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v20 = qword_1000FC008;
    v21 = sub_1000AC2BC();
    sub_1000ABA5C("BusinessChat: the network is not reachable", 42, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v23;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x80000001000B8560;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_1000362E4(inited + 32);
    v24 = objc_allocWithZone(NSError);
    v25 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v27 = [v24 initWithDomain:v25 code:0 userInfo:isa];

    _Block_copy(a3);
    v28 = v27;
    sub_10002921C(v27, 1, a2, a3);
    _Block_release(a3);

    goto LABEL_10;
  }

  sub_10002A0C8(&v31[OBJC_IVAR____TtC8Business10HttpClient_endpoint], v14);
  sub_10002A0C8(v14, v12);
  v63 = *v12;
  v32 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v33 = *(v6 + 20);
  v34 = sub_1000AB6EC();
  (*(*(v34 - 8) + 32))(&v8[v33], &v12[v32], v34);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v35 = qword_1000FC008;
  v62 = sub_1000AC2BC();
  v61 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v36 = swift_allocObject();
  v60 = xmmword_1000AF0E0;
  *(v36 + 16) = xmmword_1000AF0E0;
  *(v36 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v36 + 64) = sub_100011970();
  v37 = v63;
  *(v36 + 32) = v63;

  v64 = v35;
  sub_1000ABA5C("Creating network request with parameters %@", 43, 2, &_mh_execute_header, v35, v62, v36);

  sub_10003634C(v14, type metadata accessor for Endpoint);
  *v8 = 1;
  *&v8[*(v6 + 24)] = v37;
  v38 = sub_100089A28();
  sub_10003634C(v8, type metadata accessor for Request);
  if (!v38)
  {
    v46 = objc_allocWithZone(NSError);
    v47 = sub_1000AC02C();
    v48 = [v46 initWithDomain:v47 code:1 userInfo:0];

    v49 = sub_1000AC2AC();
    sub_1000ABA5C("BusinessChat: Error creating url request", 40, 2, &_mh_execute_header, v64, v49, _swiftEmptyArrayStorage);
    _Block_copy(a3);
    v28 = v48;
    v50 = v48;
    v51 = v65;
    sub_10002921C(v50, 1, v65, a3);
    _Block_release(a3);

LABEL_10:

    v29 = v28;
    goto LABEL_11;
  }

  v39 = sub_1000AC2BC();
  v40 = swift_allocObject();
  *(v40 + 16) = v60;
  v41 = [v38 HTTPBody];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1000AB73C();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0xF000000000000000;
  }

  *flags = v43;
  v68 = v45;
  sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
  v52 = sub_1000AC0CC();
  v54 = v53;
  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = sub_10000587C();
  *(v40 + 32) = v52;
  *(v40 + 40) = v54;
  sub_1000ABA5C("BusinessChat: Client URL Request: %@", 36, 2, &_mh_execute_header, v64, v39, v40);

  v55 = [objc_opt_self() ephemeralSessionConfiguration];
  v28 = [objc_opt_self() sessionWithConfiguration:v55];

  v56 = swift_allocObject();
  v57 = v66;
  v56[2] = v66;
  v56[3] = sub_1000362D4;
  v56[4] = v16;
  v71 = sub_1000363AC;
  v72 = v56;
  *flags = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_1000323BC;
  v70 = &unk_1000DB9C8;
  v58 = _Block_copy(flags);
  v59 = v57;

  v29 = [v28 dataTaskWithRequest:v38 completionHandler:v58];
  _Block_release(v58);
  [v29 resume];

LABEL_11:

  _Block_release(a3);
}

uint64_t sub_100036294()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000362E4(uint64_t a1)
{
  v2 = sub_10000413C(&qword_1000F0250, &qword_1000B1540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003634C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1000363B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_1000363D0(uint64_t a1, unint64_t a2)
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

unint64_t sub_100036424()
{
  result = qword_1000F07B8;
  if (!qword_1000F07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F07B8);
  }

  return result;
}

uint64_t sub_10003648C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000364E4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036530()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10003661C(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t, void *, uint64_t, uint64_t), uint64_t a7, uint64_t a8, void *a9, void (*a10)(id, uint64_t, void *, uint64_t, uint64_t))
{
  v74 = a7;
  v75 = a8;
  v76 = a6;
  v14 = type metadata accessor for Request(0);
  __chkstk_darwin(v14);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Endpoint(0);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v67 - v21;
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = a4;
  v24 = *&a1[OBJC_IVAR____TtC8Business10HttpClient_reachability];
  if (!v24 || (v73 = a1, (v25 = *(v24 + 48)) == 0))
  {
    v26 = a2;

    goto LABEL_7;
  }

  flags[0] = 0;
  v72 = a2;

  if (!SCNetworkReachabilityGetFlags(v25, flags) || (flags[0] & 2) == 0 || (v37 = *(v24 + 48), v38 = v73, v37) && (flags[0] = 0, SCNetworkReachabilityGetFlags(v37, flags)) && (~flags[0] & 5) == 0)
  {

LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v27 = qword_1000FC008;
    v28 = sub_1000AC2BC();
    sub_1000ABA5C("BusinessChat: the network is not reachable", 42, 2, &_mh_execute_header, v27, v28, _swiftEmptyArrayStorage);
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v30;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x80000001000B8560;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_1000362E4(inited + 32);
    v31 = objc_allocWithZone(NSError);
    v32 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v34 = [v31 initWithDomain:v32 code:0 userInfo:isa];

    v35 = v34;
    v76(v34, 1, a2, a3, a4);
    goto LABEL_10;
  }

  sub_10002A0C8(&v38[OBJC_IVAR____TtC8Business10HttpClient_endpoint], v22);
  sub_10002A0C8(v22, v20);
  v70 = *v20;
  v39 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
  v40 = *(v14 + 20);
  v41 = sub_1000AB6EC();
  (*(*(v41 - 8) + 32))(&v16[v40], &v20[v39], v41);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v42 = qword_1000FC008;
  v69 = sub_1000AC2BC();
  v68 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v43 = swift_allocObject();
  v67 = xmmword_1000AF0E0;
  *(v43 + 16) = xmmword_1000AF0E0;
  *(v43 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v43 + 64) = sub_100011970();
  v44 = v70;
  *(v43 + 32) = v70;

  v71 = v42;
  sub_1000ABA5C("Creating network request with parameters %@", 43, 2, &_mh_execute_header, v42, v69, v43);

  sub_10003634C(v22, type metadata accessor for Endpoint);
  *v16 = 1;
  *&v16[*(v14 + 24)] = v44;
  v45 = sub_100089A28();
  sub_10003634C(v16, type metadata accessor for Request);
  if (!v45)
  {
    v54 = objc_allocWithZone(NSError);
    v55 = sub_1000AC02C();
    v56 = [v54 initWithDomain:v55 code:1 userInfo:0];

    v57 = sub_1000AC2AC();
    sub_1000ABA5C("BusinessChat: Error creating url request", 40, 2, &_mh_execute_header, v71, v57, _swiftEmptyArrayStorage);
    v35 = v56;
    v76(v56, 1, v72, a3, a4);

LABEL_10:

    v36 = v35;
    goto LABEL_11;
  }

  v46 = v71;
  v76 = a10;
  v72 = a9;
  v47 = sub_1000AC2BC();
  v48 = swift_allocObject();
  *(v48 + 16) = v67;
  v49 = [v45 HTTPBody];
  if (v49)
  {
    v50 = v49;
    v51 = sub_1000AB73C();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0xF000000000000000;
  }

  *flags = v51;
  v78 = v53;
  sub_10000413C(&qword_1000F07A8, &qword_1000B1AE0);
  v58 = sub_1000AC0CC();
  v60 = v59;
  *(v48 + 56) = &type metadata for String;
  *(v48 + 64) = sub_10000587C();
  *(v48 + 32) = v58;
  *(v48 + 40) = v60;
  sub_1000ABA5C("BusinessChat: Client URL Request: %@", 36, 2, &_mh_execute_header, v46, v47, v48);

  v61 = [objc_opt_self() ephemeralSessionConfiguration];
  v35 = [objc_opt_self() sessionWithConfiguration:v61];

  v62 = swift_allocObject();
  v63 = v73;
  v64 = v75;
  v62[2] = v73;
  v62[3] = v64;
  v62[4] = v23;
  v81 = v72;
  v82 = v62;
  *flags = _NSConcreteStackBlock;
  v78 = 1107296256;
  v79 = sub_1000323BC;
  v80 = v76;
  v65 = _Block_copy(flags);
  v66 = v63;

  v36 = [v35 dataTaskWithRequest:v45 completionHandler:v65];
  _Block_release(v65);
  [v36 resume];

LABEL_11:
}

uint64_t sub_100036E80()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100036EDC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100036FA8(int a1)
{
  v147 = a1;
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v2 - 8);
  v146 = &v136 - v3;
  v149 = sub_1000AB60C();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v145 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1000AB5CC();
  v142 = *(v143 - 8);
  v5 = __chkstk_darwin(v143);
  v138 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v137 = &v136 - v8;
  v9 = __chkstk_darwin(v7);
  v140 = &v136 - v10;
  __chkstk_darwin(v9);
  v139 = &v136 - v11;
  *&v150 = 0;
  v12 = sub_1000AC0BC();
  __chkstk_darwin(v12 - 8);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v13 = qword_1000FC008;
  v14 = sub_1000AC28C();
  v154 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000AF0F0;
  v157 = *(v1 + 32);
  v16 = v157;
  v17 = sub_1000AC06C();
  v19 = v18;
  *(v15 + 56) = &type metadata for String;
  v20 = sub_10000587C();
  *(v15 + 64) = v20;
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  *&aBlock = *(v1 + 24);
  v152 = aBlock;
  v21 = aBlock;
  sub_10000413C(&qword_1000F07C0, &qword_1000B1C00);
  v22 = sub_1000AC0CC();
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v20;
  v136 = v20;
  *(v15 + 72) = v22;
  *(v15 + 80) = v23;
  v144 = v13;
  sub_1000ABA5C("IMBReply: Send reply for type: %@ info: %@", 42, 2, &_mh_execute_header, v13, v14, v15);

  v24 = *v1;
  v151 = v1;
  v25 = *(v1 + 40);
  v26 = v16;
  v27 = [v24 receivedMessage];
  v28 = objc_allocWithZone(BCMessage);
  v141 = v21;
  v29 = [v28 initFromOriginalMessage:v24 rootKey:v26 rootObject:v25 receivedMessage:v27 replyMessage:v21];

  sub_100038540(&v157);
  v30 = [v24 receivedMessage];
  v153 = v29;
  if (v30)
  {
    v31 = v30;
    v32 = [v30 dictionaryValue];

    sub_1000ABFBC();
    v33 = objc_opt_self();
    isa = sub_1000ABFAC().super.isa;
    *&aBlock = 0;
    v35 = [v33 dataWithJSONObject:isa options:1 error:&aBlock];

    v36 = aBlock;
    if (v35)
    {
      v37 = sub_1000AB73C();
      v39 = v38;

      sub_1000AC0AC();
      result = sub_1000AC08C();
      if (!v41)
      {
        __break(1u);
        goto LABEL_46;
      }

      v42 = sub_1000AB6FC();
      v44 = v43;
      sub_10000E964(v37, v39);
      sub_1000AC0AC();
      v45 = sub_1000AC08C();
      sub_1000863A8(v45, v46);
      v48 = v47;

      sub_10000E964(v42, v44);

      if (v48)
      {
        sub_1000AC06C();
        v49 = v139;
        sub_1000AB5BC();

        (*(v142 + 16))(v140, v49, v143);
        v50 = sub_100038C90(0, 1, 1, _swiftEmptyArrayStorage, &qword_1000F07D0, &qword_1000B1AF0, &type metadata accessor for URLQueryItem);
        v52 = v50[2];
        v51 = v50[3];
        if (v52 >= v51 >> 1)
        {
          v50 = sub_100038C90((v51 > 1), v52 + 1, 1, v50, &qword_1000F07D0, &qword_1000B1AF0, &type metadata accessor for URLQueryItem);
        }

        v29 = v153;
        v53 = v142;
        v54 = v143;
        (*(v142 + 8))(v139, v143);
        v50[2] = v52 + 1;
        (*(v53 + 32))(v50 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v52, v140, v54);
      }

      else
      {
        v50 = _swiftEmptyArrayStorage;
        v29 = v153;
      }
    }

    else
    {
      v55 = v36;
      sub_1000AB63C();

      swift_willThrow();
      sub_10000413C(&qword_1000F06D0, &unk_1000B06D0);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1000AF0E0;
      swift_getErrorValue();
      v57 = sub_1000AC7FC();
      *(v56 + 56) = &type metadata for String;
      *(v56 + 32) = v57;
      *(v56 + 40) = v58;
      sub_1000AC84C();

      *&v150 = 0;
      v50 = _swiftEmptyArrayStorage;
      v29 = v153;
    }
  }

  else
  {
    v50 = _swiftEmptyArrayStorage;
  }

  if (!v152)
  {
    v77 = v145;
    v78 = v144;
    goto LABEL_26;
  }

  v59 = [v141 dictionaryValue];
  sub_1000ABFBC();

  v60 = objc_opt_self();
  v61 = sub_1000ABFAC().super.isa;
  *&aBlock = 0;
  v62 = [v60 dataWithJSONObject:v61 options:1 error:&aBlock];

  v63 = aBlock;
  if (v62)
  {
    v64 = sub_1000AB73C();
    v66 = v65;

    sub_1000AC0AC();
    result = sub_1000AC08C();
    if (v67)
    {

      v68 = sub_1000AB6FC();
      v70 = v69;
      sub_10000E964(v64, v66);
      sub_1000AC0AC();
      v71 = sub_1000AC08C();
      sub_1000863A8(v71, v72);
      v74 = v73;

      sub_10000E964(v68, v70);

      v29 = v153;
      if (v74)
      {
        sub_1000AC06C();
        v75 = v137;
        sub_1000AB5BC();

        (*(v142 + 16))(v138, v75, v143);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = v145;
        v78 = v144;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = sub_100038C90(0, v50[2] + 1, 1, v50, &qword_1000F07D0, &qword_1000B1AF0, &type metadata accessor for URLQueryItem);
        }

        v79 = v24;
        v81 = v50[2];
        v80 = v50[3];
        if (v81 >= v80 >> 1)
        {
          v82 = sub_100038C90((v80 > 1), v81 + 1, 1, v50, &qword_1000F07D0, &qword_1000B1AF0, &type metadata accessor for URLQueryItem);
        }

        else
        {
          v82 = v50;
        }

        v83 = v142;
        v84 = v143;
        (*(v142 + 8))(v137, v143);
        v82[2] = v81 + 1;
        (*(v83 + 32))(v82 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v81, v138, v84);
        v24 = v79;
        v29 = v153;
        goto LABEL_26;
      }

      v77 = v145;
      goto LABEL_25;
    }

LABEL_46:
    __break(1u);
    return result;
  }

  v85 = v63;
  sub_1000AB63C();

  swift_willThrow();
  sub_10000413C(&qword_1000F06D0, &unk_1000B06D0);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1000AF0E0;
  swift_getErrorValue();
  v87 = sub_1000AC7FC();
  *(v86 + 56) = &type metadata for String;
  *(v86 + 32) = v87;
  *(v86 + 40) = v88;
  sub_1000AC84C();

  v77 = v145;
  v29 = v153;
LABEL_25:
  v78 = v144;
LABEL_26:
  v89 = [v29 dictionaryValue];
  v90 = sub_1000ABFBC();

  v156 = v90;
  v91 = swift_allocObject();
  v150 = xmmword_1000AF0E0;
  *(v91 + 16) = xmmword_1000AF0E0;

  v93 = sub_100039CFC(v92);

  *(v91 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *(v91 + 64) = sub_100011970();
  *(v91 + 32) = v93;
  v94 = sub_1000AC2BC();
  sub_1000ABA5C("IMBReply: dataPayloadDictionary %@", 34, 2, &_mh_execute_header, v78, v94, v91);

  v95 = sub_1000AC06C();
  v97 = v96;
  v98 = [v24 imageStore];
  if (v98 && (v99 = v98, v100 = [v98 rawArray], v99, v100))
  {
    v101 = sub_1000AC19C();

    v161 = sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
    *&aBlock = v101;
    sub_100006910(&aBlock, &v158);
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v155 = v90;
    sub_10003A3E8(&v158, v95, v97, v102);

    v156 = v155;
  }

  else
  {
    sub_100039E5C(v95, v97, &aBlock);

    sub_10000E784(&aBlock, &unk_1000F1DF0, &qword_1000B18F0);
  }

  v103 = v151;
  v104 = *(v151 + 8);
  v105 = objc_opt_self();
  v106 = v104;
  v107 = sub_1000ABFAC().super.isa;

  *&aBlock = 0;
  v108 = [v105 dataWithJSONObject:v107 options:1 error:&aBlock];

  v109 = aBlock;
  if (v108)
  {
    v110 = sub_1000AB73C();
    v112 = v111;

    v113 = sub_1000AB72C().super.isa;
    sub_10000E964(v110, v112);
    [v106 set_data:v113];
  }

  else
  {
    v114 = v109;
    sub_1000AB63C();

    swift_willThrow();
    sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
    v115 = sub_1000AC3FC();
    v116 = sub_1000AC2AC();
    v117 = swift_allocObject();
    *(v117 + 16) = v150;
    swift_getErrorValue();
    v118 = sub_1000AC7FC();
    v119 = v136;
    *(v117 + 56) = &type metadata for String;
    *(v117 + 64) = v119;
    *(v117 + 32) = v118;
    *(v117 + 40) = v120;
    sub_1000ABA5C("MSMessage data will be empty, failed to serialize json: %@", 58, 2, &_mh_execute_header, v115, v116, v117);

    v103 = v151;
  }

  v121 = v149;
  v122 = v148;
  sub_1000AB5FC();
  sub_1000AB5DC();
  v123 = v146;
  sub_1000AB5EC();
  v124 = sub_1000AB6EC();
  v125 = *(v124 - 8);
  v127 = 0;
  if ((*(v125 + 48))(v123, 1, v124) != 1)
  {
    sub_1000AB67C(v126);
    v127 = v128;
    (*(v125 + 8))(v123, v124);
  }

  [v106 setURL:v127];

  [v106 setRequiresValidation:1];
  v129 = [v106 summaryText];
  if (!v129)
  {
    if (!v152 || (v129 = [v141 title]) == 0)
    {
      v129 = 0;
    }

    [v106 setSummaryText:v129];
  }

  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v130 = sub_1000AC3FC();
  v131 = sub_1000AC2BC();
  v132 = swift_allocObject();
  *(v132 + 16) = v150;
  *(v132 + 56) = sub_100005A24(0, &qword_1000F07C8, MSMessage_ptr);
  *(v132 + 64) = sub_100039F00();
  *(v132 + 32) = v106;
  sub_1000ABA5C("IMBReply: Sending reply MSMessage to business: %@", 49, 2, &_mh_execute_header, v130, v131, v132);

  v133 = *(v103 + 16);
  if (v147)
  {
    v162 = sub_10003838C;
    v163 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v160 = sub_10003839C;
    v161 = &unk_1000DBE28;
    v134 = _Block_copy(&aBlock);
    [v133 sendMessage:v106 completionHandler:v134];
    _Block_release(v134);
  }

  else
  {
    v162 = sub_100038408;
    v163 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v160 = sub_10003839C;
    v161 = &unk_1000DBE00;
    v135 = _Block_copy(&aBlock);
    [v133 insertMessage:v106 completionHandler:v135];

    _Block_release(v135);
  }

  return (*(v122 + 8))(v77, v121);
}

uint64_t sub_1000382BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100006910(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_10003A3E8(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_10000E784(a1, &unk_1000F1DF0, &qword_1000B18F0);
    sub_100039E5C(a2, a3, v9);

    return sub_10000E784(v9, &unk_1000F1DF0, &qword_1000B18F0);
  }

  return result;
}

void sub_10003839C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100038418(uint64_t result, const char *a2, uint64_t a3, ...)
{
  if (result)
  {
    sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
    swift_errorRetain();
    v5 = sub_1000AC3FC();
    v6 = sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v8 = sub_1000AC7FC();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_10000587C();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_1000ABA5C(a2, a3, 2, &_mh_execute_header, v5, v6, v7);
  }

  return result;
}

uint64_t sub_100038540(uint64_t a1)
{
  type metadata accessor for BCMessageRootKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10003859C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000413C(&qword_1000F0840, &qword_1000B1B40);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000386A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000413C(&qword_1000F07E8, &qword_1000B1B00);
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

void *sub_1000387AC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000413C(&qword_1000F0808, &qword_1000B1B20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000388E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000413C(&unk_1000F0230, &unk_1000B1530);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100038A14(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000413C(&qword_1000F07F8, &qword_1000B1B10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000413C(&qword_1000F07E0, &qword_1000B54D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100038B5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000413C(&qword_1000F0820, &qword_1000B1B30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100038C90(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
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

  sub_10000413C(a5, a6);
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
  v17[3] = 2 * ((result - v16) / v15);
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

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_100038E6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000413C(&qword_1000F07D8, &qword_1000B1AF8);
  v34 = v4;
  v6 = sub_1000AC67C();
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
        sub_100006910(v24, v35);
      }

      else
      {
        sub_1000068B4(v24, v35);
      }

      sub_1000AC87C();
      sub_1000AC11C();
      v25 = sub_1000AC8CC();
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
      sub_100006910(v35, (*(v7 + 56) + 32 * v15));
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

void sub_100039138(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000AB97C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_10000413C(&qword_1000F0830, &qword_1000B3400);
  v41 = v4;
  v9 = sub_1000AC67C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v45 = v5;
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
    v38 = (v6 + 16);
    v39 = v8;
    v40 = v6;
    v43 = (v6 + 32);
    v17 = v9 + 64;
    v18 = v42;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v44 = *(v40 + 72);
      v25 = v24 + v44 * v23;
      if (v41)
      {
        (*v43)(v18, v25, v45);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v38)(v18, v25, v45);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      sub_10003B718();
      v27 = sub_1000ABFFC();
      v28 = -1 << *(v10 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v18 = v42;
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
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v18 = v42;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v43)((*(v10 + 48) + v44 * v19), v18, v45);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void sub_1000394E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000413C(&qword_1000F0810, &qword_1000B1B28);
  v36 = v4;
  v6 = sub_1000AC67C();
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

      sub_1000AC87C();
      sub_1000AC11C();
      v26 = sub_1000AC8CC();
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

void sub_10003979C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10000413C(a3, a4);
  v37 = v6;
  v8 = sub_1000AC67C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      sub_1000AC87C();
      sub_1000AC11C();
      v27 = sub_1000AC8CC();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_100039A3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000413C(&qword_1000F07F0, &qword_1000B1B08);
  v38 = v4;
  v6 = sub_1000AC67C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_1000AC87C();
      sub_1000AC11C();
      v28 = sub_1000AC8CC();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

unint64_t *sub_100039CFC(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_10003B240(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_10003B44C(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

double sub_100039E5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_10004F0CC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10003A9B0();
      v10 = v12;
    }

    sub_100006910((*(v10 + 56) + 32 * v8), a3);
    sub_100039F80(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_100039F00()
{
  result = qword_1000F23B0;
  if (!qword_1000F23B0)
  {
    sub_100005A24(255, &qword_1000F07C8, MSMessage_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F23B0);
  }

  return result;
}

double sub_100039F68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100039F80(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000AC4BC() + 1) & ~v5;
    do
    {
      sub_1000AC87C();

      sub_1000AC11C();
      v10 = sub_1000AC8CC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10003A130(int64_t a1, uint64_t a2)
{
  v4 = sub_1000AB97C();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1000AC4BC();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      sub_10003B718();
      v21 = sub_1000ABFFC();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v38 * a1;
          v26 = v25 + v18 + v38;
          v27 = v38 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v38 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_10003A3E8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10004F0CC(a2, a3);
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
      sub_10003A9B0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100038E6C(v16, a4 & 1);
    v11 = sub_10004F0CC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1000AC7EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000E738(v22);

    return sub_100006910(a1, v22);
  }

  else
  {
    sub_10003A88C(v11, a2, a3, a1, v21);
  }
}

void sub_10003A538(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000AB97C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10004F218(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10003AB68();
      goto LABEL_7;
    }

    sub_100039138(v17, a3 & 1);
    v21 = sub_10004F218(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_10003A8F8(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1000AC7EC();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_10003A704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10004F0CC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100039A3C(v18, a5 & 1);
      v13 = sub_10004F0CC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1000AC7EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10003B0C8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

_OWORD *sub_10003A88C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100006910(a4, (a5[7] + 32 * a1));
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

uint64_t sub_10003A8F8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000AB97C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_10003A9B0()
{
  v1 = v0;
  sub_10000413C(&qword_1000F07D8, &qword_1000B1AF8);
  v2 = *v0;
  v3 = sub_1000AC66C();
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
        sub_1000068B4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100006910(v25, (*(v4 + 56) + v22));
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

void sub_10003AB68()
{
  v1 = v0;
  v33 = sub_1000AB97C();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000413C(&qword_1000F0830, &qword_1000B3400);
  v3 = *v0;
  v4 = sub_1000AC66C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_10003ADE8()
{
  v1 = v0;
  sub_10000413C(&qword_1000F0810, &qword_1000B1B28);
  v2 = *v0;
  v3 = sub_1000AC66C();
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

void sub_10003AF68(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000413C(a1, a2);
  v4 = *v2;
  v5 = sub_1000AC66C();
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

void sub_10003B0C8()
{
  v1 = v0;
  sub_10000413C(&qword_1000F07F0, &qword_1000B1B08);
  v2 = *v0;
  v3 = sub_1000AC66C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

unint64_t *sub_10003B240(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v22 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v26[5] = BCMessageDataImagesKey;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_1000068B4(*(a3 + 56) + 32 * v13, v26);
    v24[0] = v15;
    v24[1] = v16;
    sub_1000068B4(v26, &v25);
    if (v15 == sub_1000AC06C() && v16 == v17)
    {
      swift_bridgeObjectRetain_n();

      sub_10000E784(v24, &qword_1000F07E0, &qword_1000B54D0);
      sub_10000E738(v26);
    }

    else
    {
      v19 = sub_1000AC7AC();
      swift_bridgeObjectRetain_n();

      sub_10000E784(v24, &qword_1000F07E0, &qword_1000B54D0);
      sub_10000E738(v26);

      if ((v19 & 1) == 0)
      {
        *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
          return sub_10003B4C4(v22, a2, v23, a3);
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_10003B4C4(v22, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10003B44C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_10003B240(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_10003B4C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000413C(&qword_1000F07D8, &qword_1000B1AF8);
  result = sub_1000AC68C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1000068B4(v17 + 32 * v16, v33);
    sub_100006910(v33, v32);
    sub_1000AC87C();

    sub_1000AC11C();
    result = sub_1000AC8CC();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_100006910(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_10003B718()
{
  result = qword_1000F0828;
  if (!qword_1000F0828)
  {
    sub_1000AB97C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0828);
  }

  return result;
}

void *sub_10003B778(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = [a1 combinedDictionary];
  if (!v10)
  {
    goto LABEL_37;
  }

  v11 = v10;
  v12 = sub_1000ABFBC();

  v13 = sub_1000AC06C();
  if (!*(v12 + 16))
  {

    goto LABEL_7;
  }

  v15 = sub_10004F0CC(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_7:
    v67 = 0u;
    v68 = 0u;
    sub_10000E784(&v67, &unk_1000F1DF0, &qword_1000B18F0);
    goto LABEL_8;
  }

  sub_1000068B4(*(v12 + 56) + 32 * v15, &v67);
  sub_10000E784(&v67, &unk_1000F1DF0, &qword_1000B18F0);
  if ([v5 isFromMe])
  {

LABEL_19:
    type metadata accessor for IMBListRequest();
    swift_allocObject();

    return sub_100086AEC(v45, a3);
  }

LABEL_8:
  v18 = sub_1000AC06C();
  if (*(v12 + 16))
  {
    v20 = sub_10004F0CC(v18, v19);
    v22 = v21;

    if (v22)
    {
      sub_1000068B4(*(v12 + 56) + 32 * v20, &v67);

      sub_10000E784(&v67, &unk_1000F1DF0, &qword_1000B18F0);
      type metadata accessor for IMBContent(0);
      swift_allocObject();

      return sub_1000508A0(v23);
    }
  }

  else
  {
  }

  v67 = 0u;
  v68 = 0u;
  sub_10000E784(&v67, &unk_1000F1DF0, &qword_1000B18F0);
  v25 = sub_1000AC06C();
  if (*(v12 + 16))
  {
    v27 = sub_10004F0CC(v25, v26);
    v29 = v28;

    if (v29)
    {
      sub_1000068B4(*(v12 + 56) + 32 * v27, &v67);

      sub_10000E784(&v67, &unk_1000F1DF0, &qword_1000B18F0);
      v30 = type metadata accessor for PaymentAuthorizationViewController();
      v31 = swift_allocObject();
      *(&v68 + 1) = v30;
      v69 = &off_1000DD9C8;
      *&v67 = v31;
      type metadata accessor for IMBPaymentRequest(0);
      v32 = swift_allocObject();
      v33 = sub_1000315C0(&v67, v30);
      __chkstk_darwin(v33);
      v35 = (&v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v36 + 16))(v35);
      v37 = *v35;

      v39 = sub_10003C484(v38, v37, v32);
      sub_10000E738(&v67);
      return v39;
    }
  }

  else
  {
  }

  v67 = 0u;
  v68 = 0u;
  sub_10000E784(&v67, &unk_1000F1DF0, &qword_1000B18F0);
  v40 = sub_1000AC06C();
  if (*(v12 + 16))
  {
    v42 = sub_10004F0CC(v40, v41);
    v44 = v43;

    if (v44)
    {
      sub_1000068B4(*(v12 + 56) + 32 * v42, &v67);

      sub_10000E784(&v67, &unk_1000F1DF0, &qword_1000B18F0);
      goto LABEL_19;
    }
  }

  else
  {
  }

  v67 = 0u;
  v68 = 0u;
  sub_10000E784(&v67, &unk_1000F1DF0, &qword_1000B18F0);
  v46 = sub_1000AC06C();
  if (*(v12 + 16))
  {
    v48 = sub_10004F0CC(v46, v47);
    v50 = v49;

    if (v50)
    {
      sub_1000068B4(*(v12 + 56) + 32 * v48, &v67);
      sub_10000E784(&v67, &unk_1000F1DF0, &qword_1000B18F0);
      if ([v5 isFromMe])
      {

LABEL_30:
        type metadata accessor for IMBProposedEvent();
        swift_allocObject();

        return sub_10000F8B4(v56, a3);
      }

      goto LABEL_27;
    }
  }

  else
  {
  }

  v67 = 0u;
  v68 = 0u;
  sub_10000E784(&v67, &unk_1000F1DF0, &qword_1000B18F0);
LABEL_27:
  v51 = sub_1000AC06C();
  if (*(v12 + 16))
  {
    v53 = sub_10004F0CC(v51, v52);
    v55 = v54;

    if (v55)
    {
      sub_1000068B4(*(v12 + 56) + 32 * v53, &v67);

      sub_10000E784(&v67, &unk_1000F1DF0, &qword_1000B18F0);
      goto LABEL_30;
    }
  }

  else
  {
  }

  v67 = 0u;
  v68 = 0u;
  sub_10000E784(&v67, &unk_1000F1DF0, &qword_1000B18F0);
  v57 = sub_1000AC06C();
  if (*(v12 + 16))
  {
    v59 = sub_10004F0CC(v57, v58);
    v61 = v60;

    if (v61)
    {
      sub_1000068B4(*(v12 + 56) + 32 * v59, &v67);

      sub_10000E784(&v67, &unk_1000F1DF0, &qword_1000B18F0);
      type metadata accessor for IMBJITAppKitData();
      v62 = swift_allocObject();
      *(v62 + 16) = a2;

      return v62;
    }
  }

  else
  {
  }

  v67 = 0u;
  v68 = 0u;
  sub_10000E784(&v67, &unk_1000F1DF0, &qword_1000B18F0);
LABEL_37:
  v63.super.isa = sub_1000ABFAC().super.isa;
  if (a3)
  {
    sub_10003C438();
    v64.super.isa = sub_1000ABFAC().super.isa;
  }

  else
  {
    v64.super.isa = 0;
  }

  v65 = type metadata accessor for IMBMessage();
  v70.receiver = v5;
  v70.super_class = v65;
  v66 = objc_msgSendSuper2(&v70, "makeRootObjectWithMessageData:dictionary:imageDictionary:version:", a1, v63.super.isa, v64.super.isa, a4);

  return v66;
}

id sub_10003BF6C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v27 = a6;
  v26 = a4;
  v12 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1000AB72C().super.isa;
  }

  sub_10003C3C8(a3, v14);
  v16 = sub_1000AB6EC();
  v17 = *(v16 - 8);
  v19 = 0;
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    sub_1000AB67C(v18);
    v19 = v20;
    (*(v17 + 8))(v14, v16);
  }

  if (a5)
  {
    v21 = sub_1000AC02C();
  }

  else
  {
    v21 = 0;
  }

  v22 = type metadata accessor for IMBMessage();
  v28.receiver = v7;
  v28.super_class = v22;
  v23 = objc_msgSendSuper2(&v28, "initWithData:url:messageGUID:isFromMe:", isa, v19, v21, v27 & 1, v26);

  v24 = v23;
  sub_10000E950(a1, a2);
  sub_10000E784(a3, &unk_1000F06A0, &unk_1000B0450);
  if (v24)
  {
  }

  return v24;
}

id sub_10003C370(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBMessage();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10003C3C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003C438()
{
  result = qword_1000F0870;
  if (!qword_1000F0870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000F0870);
  }

  return result;
}

uint64_t sub_10003C484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[3] = type metadata accessor for PaymentAuthorizationViewController();
  v14[4] = &off_1000DD9C8;
  v14[0] = a2;
  v6 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_orderTrackingUrl;
  v7 = sub_1000AB6EC();
  v8 = *(*(v7 - 8) + 56);
  v8(a3 + v6, 1, 1, v7);
  v8(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl, 1, 1, v7);
  v8(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentMethodUpdateUrl, 1, 1, v7);
  v8(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingContactUpdateUrl, 1, 1, v7);
  v8(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingMethodUpdateUrl, 1, 1, v7);
  v8(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_fallbackUrl, 1, 1, v7);
  v8(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_productUrl, 1, 1, v7);
  *(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantCapabilities) = 0;
  *(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_supportedNetworks) = 0;
  *(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_sessionDictionary) = 0;
  *(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_selectedShippingMethod) = 0;
  v9 = a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate;
  v11 = sub_1000AB7EC();
  (*(*(v11 - 8) + 56))(a3 + v10, 1, 1, v11);
  *(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_errors) = _swiftEmptyArrayStorage;
  *(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest) = 0;
  *(a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_session) = 0;
  sub_10000E6D4(v14, a3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentAuthorizationController);
  v12 = sub_10004DA74(a1);

  sub_10000692C(v12);

  sub_10000E738(v14);
  return a3;
}

void sub_10003C7E0()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for IMBTranscriptMessageViewController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_pluginBubbleContext];
  v2 = *&v1[OBJC_IVAR____TtC8Business19PluginBubbleContext_conversation];
  v3 = sub_10003F7AC(v1, v0);
  v5 = v4;

  if ((v5 & 0x8000000000000000) == 0)
  {
    sub_10003C970(v3, v5);
LABEL_6:

    return;
  }

  v6 = v3;
  [v0 addChildViewController:v6];
  v7 = [v6 view];
  if (v7)
  {
    v8 = v7;
    swift_getObjectType();
    v9 = swift_conformsToProtocol2();
    if (v9)
    {
      sub_10003C970(v8, v9);

      [v6 didMoveToParentViewController:v0];
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10003C970(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *(a2 + 24);
  v8 = swift_unknownObjectRetain();
  v7(v8, &off_1000DBE68, ObjectType, a2);
  v9 = &v3[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_bubbleView];
  v10 = *&v3[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_bubbleView];
  *v9 = a1;
  *(v9 + 1) = a2;
  v11 = a1;

  v12 = [v3 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = v12;
  [v12 addSubview:v11];

  v14 = [v3 view];
  if (!v14)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v15 = v14;
  sub_1000155F4(v14);
}

double sub_10003CA74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  type metadata accessor for QuickReplyResponse();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3 & 1;
  *(v10 + 40) = a4;

  sub_10003EEAC(a5, v10);

  return result;
}

uint64_t sub_10003CB04()
{
  v1 = sub_10002CE60();
  v2 = *(v0 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_pluginBubbleContext);
  v3 = v1;
  v4 = OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage;
  v5 = [*(v2 + OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage) type];
  if (v3 == 2)
  {
    if ((v5 - 1) < 2)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  else if (v5 == 5 && [*(v2 + v4) rootObject])
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    if (v7)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 1;
  }
}

id sub_10003CC04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBTranscriptMessageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10003CCE8(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_bubbleView);
  if (v5)
  {
    v6 = *(v2 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_bubbleView + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v9 = *(v8 + 16);
    v10 = v5;
    a1 = v9(ObjectType, v8, a1, a2);
  }

  return a1;
}

void *sub_10003CD94()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result requestResize];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10003CDF4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = [Strong activeConversation];
  swift_unknownObjectRelease();
  return v1;
}

void sub_10003CE54()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_authvc);
  *(v0 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_authvc) = 0;
}

void sub_10003CE68(uint64_t a1)
{
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v1 = sub_1000AC3FC();
  v2 = sub_1000AC2BC();
  sub_1000ABA5C("BusinessChat: IMBTranscriptMessageViewController BCApplePayManagerDelegate paymentRequestDidUpdate", 98, 2, &_mh_execute_header, v1, v2, _swiftEmptyArrayStorage);

  type metadata accessor for IMBApplePayManager();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6 && *(v6 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState + 8) != 1)
    {
      v22 = *(v6 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState);
      sub_10000413C(&qword_1000F0060, &unk_1000B0470);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1000AF0E0;
      v24 = sub_10005FCE8(v22);
      v26 = v25;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = sub_10000587C();
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      swift_unknownObjectRetain();
      v27 = sub_1000AC3FC();
      v28 = sub_1000AC2BC();
      sub_1000ABA5C("BusinessChat: Returned apple pay status = %@", 44, 2, &_mh_execute_header, v27, v28, v23);

      if (v22 == 3)
      {
        goto LABEL_15;
      }

      v6 = *(v4 + v5);
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    if (*(v6 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState + 8))
    {
      goto LABEL_29;
    }

    v7 = *(v6 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState);
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000AF0E0;
    v9 = sub_10005FCE8(v7);
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_10000587C();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    v12 = sub_1000AC3FC();
    v13 = sub_1000AC2BC();
    sub_1000ABA5C("BusinessChat: Returned apple pay status = %@", 44, 2, &_mh_execute_header, v12, v13, v8);

    if (v7 == 4)
    {
      goto LABEL_15;
    }

    v6 = *(v4 + v5);
    if (v6)
    {
LABEL_29:
      if (*(v6 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState + 8))
      {
        goto LABEL_17;
      }

      v14 = *(v6 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState);
      sub_10000413C(&qword_1000F0060, &unk_1000B0470);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1000AF0E0;
      v16 = sub_10005FCE8(v14);
      v18 = v17;
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = sub_10000587C();
      *(v15 + 32) = v16;
      *(v15 + 40) = v18;
      v19 = sub_1000AC3FC();
      v20 = sub_1000AC2BC();
      sub_1000ABA5C("BusinessChat: Returned apple pay status = %@", 44, 2, &_mh_execute_header, v19, v20, v15);

      if (v14 != 7)
      {
        goto LABEL_17;
      }

LABEL_15:
      v29 = sub_1000AC3FC();
      v30 = sub_1000AC2BC();
      sub_1000ABA5C("BusinessChat: BCApplePayManagerDelegate sending back message", 60, 2, &_mh_execute_header, v29, v30, _swiftEmptyArrayStorage);

      sub_10003D48C(v4);
LABEL_26:
      swift_unknownObjectRelease();
      return;
    }

LABEL_17:
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1000AF0E0;
    v32 = *(v4 + v5);
    if (v32 && (v33 = v32 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState, *(v33 + 8) != 1))
    {
      v35 = *v33;
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1000AF0E0;
      v37 = sub_10005FCE8(v35);
      v39 = v38;
      *(v36 + 56) = &type metadata for String;
      *(v36 + 64) = sub_10000587C();
      *(v36 + 32) = v37;
      *(v36 + 40) = v39;
      v40 = sub_1000AC3FC();
      v41 = sub_1000AC2BC();
      sub_1000ABA5C("BusinessChat: Returned apple pay status = %@", 44, 2, &_mh_execute_header, v40, v41, v36);

      v34 = v35;
    }

    else
    {
      v34 = 1;
    }

    v42 = sub_10005FCE8(v34);
    v44 = v43;
    *(v31 + 56) = &type metadata for String;
    v45 = sub_10000587C();
    *(v31 + 64) = v45;
    *(v31 + 32) = v42;
    *(v31 + 40) = v44;
    v46 = sub_1000AC3FC();
    v47 = sub_1000AC2BC();
    sub_1000ABA5C("BusinessChat: BCApplePayManagerDelegate updating view with state %@", 67, 2, &_mh_execute_header, v46, v47, v31);

    v48 = *(*(v4 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel) + 56);
    v49 = *(v4 + v5);
    if (v49 && (v50 = v49 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState, *(v50 + 8) != 1))
    {
      v52 = *v50;
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1000AF0E0;
      v54 = sub_10005FCE8(v52);
      *(v53 + 56) = &type metadata for String;
      *(v53 + 64) = v45;
      *(v53 + 32) = v54;
      *(v53 + 40) = v55;

      v56 = v48;
      v57 = sub_1000AC3FC();
      v58 = sub_1000AC2BC();
      sub_1000ABA5C("BusinessChat: Returned apple pay status = %@", 44, 2, &_mh_execute_header, v57, v58, v53);
    }

    else
    {

      v51 = v48;
    }

    sub_100041D18();

    goto LABEL_26;
  }

  v59 = sub_1000AC3FC();
  v21 = sub_1000AC2BC();
  sub_1000ABA5C("BusinessChat: BCApplePayManagerDelegate applePayManager is not IMBApplePayManager", 81, 2, &_mh_execute_header, v59, v21, _swiftEmptyArrayStorage);
}

void sub_10003D48C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  if (*(a1 + v3))
  {
    v4 = *(v1 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_pluginBubbleContext);
    v50 = OBJC_IVAR____TtC8Business19PluginBubbleContext_conversation;
    v5 = *(v4 + OBJC_IVAR____TtC8Business19PluginBubbleContext_conversation);

    v6 = [v5 selectedMessage];
    v7 = [v6 session];

    if (!v7)
    {
      v7 = [objc_allocWithZone(MSSession) init];
    }

    v49 = v7;
    v51 = [objc_allocWithZone(MSMessage) initWithSession:v7];
    v52 = [objc_allocWithZone(MSMessageTemplateLayout) init];
    v8 = OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage;
    v9 = [*(v4 + OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage) receivedMessage];
    if (v9 && (v10 = v9, v11 = [v9 imageIdentifier], v10, v11))
    {
      sub_1000AC06C();
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [*(v4 + v8) receivedMessage];
    if (v14 && (v15 = v14, v16 = [v14 imageDescription], v15, v16))
    {
      sub_1000AC06C();
      v47 = v17;
    }

    else
    {
      v47 = 0;
    }

    v18 = [*(v4 + v8) receivedMessage];
    if (v18)
    {
      v19 = v18;
      v46 = [v18 style];
    }

    else
    {
      v46 = BCBubbleViewStyleIcon;
    }

    v20 = [*(a1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_imbMessage) replyMessage];
    if (v20 && (v21 = v20, v22 = [v20 title], v21, v22))
    {
      sub_1000AC06C();

      v23 = *(a1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel);
    }

    else
    {
      v23 = *(a1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel);
    }

    v25 = *(v23 + 80);
    v24 = *(v23 + 88);
    v26 = *(v4 + v8);

    v27 = [v26 receivedMessage];
    v48 = v8;
    if (v27)
    {
      v28 = v27;
      v29 = [v27 image];
    }

    else
    {
      v29 = 0;
    }

    [v52 setImage:v29];

    v30 = sub_1000AC02C();
    [v52 setCaption:v30];

    v31 = sub_1000AC02C();
    [v52 setSubcaption:v31];

    v55._countAndFlagsBits = 32;
    v55._object = 0xE100000000000000;
    sub_1000AC12C(v55);

    v56._countAndFlagsBits = v25;
    v56._object = v24;
    sub_1000AC12C(v56);

    v32 = sub_1000AC02C();

    [v51 setAccessibilityLabel:v32];

    v33 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v52];
    [v51 setLayout:v33];

    v34 = v46;
    v35 = sub_1000AC02C();

    v36 = sub_1000AC02C();

    if (v13)
    {
      v37 = sub_1000AC02C();
    }

    else
    {
      v37 = 0;
    }

    if (v47)
    {
      v38 = sub_1000AC02C();
    }

    else
    {
      v38 = 0;
    }

    v39 = [objc_allocWithZone(BCMessageInfo) initWithTitle:v35 subtitle:v36 style:v34 alternateTitle:0 imageIdentifier:v37 imageDescription:v38];

    v40 = BCMessageRootPaymentKey;
    v53 = *(v4 + v48);
    v54 = *(v4 + v50);

    v41 = v53;
    v42 = v51;
    v43 = v54;
    v44 = v39;
    v45 = v40;
    sub_100036FA8(1);
  }
}

void sub_10003DAC8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_bubbleView);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_bubbleView + 8);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 40);
    v5 = v1;
    v4(ObjectType, v2);
  }
}

uint64_t sub_10003DB74@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = sub_1000AC8EC();
  v2 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000413C(&qword_1000F0728, &unk_1000B1A10);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v28 = v1;
  sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000B0620;
  v9 = *&v1[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_pluginBubbleContext];
  strcpy((v8 + 32), "conversation");
  *(v8 + 45) = 0;
  *(v8 + 46) = -5120;
  v10 = *(v9 + OBJC_IVAR____TtC8Business19PluginBubbleContext_conversation);
  v11 = sub_100005A24(0, &qword_1000F0730, MSConversation_ptr);
  *(v8 + 48) = v10;
  *(v8 + 72) = v11;
  *(v8 + 80) = 0x6567617373656DLL;
  *(v8 + 88) = 0xE700000000000000;
  v12 = *(v9 + OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage);
  v13 = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
  *(v8 + 96) = v12;
  *(v8 + 120) = v13;
  *(v8 + 128) = 0xD000000000000010;
  *(v8 + 136) = 0x80000001000B8300;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    ObjectType = swift_getObjectType();
    *&v26 = v15;
    sub_100006910(&v26, (v8 + 144));
  }

  else
  {
    *(v8 + 168) = &type metadata for String;
    *(v8 + 144) = 7104878;
    *(v8 + 152) = 0xE300000000000000;
  }

  v16 = enum case for Mirror.DisplayStyle.class(_:);
  v17 = sub_1000AC8DC();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v7, v16, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  (*(v2 + 104))(v4, enum case for Mirror.AncestorRepresentation.generated(_:), v24);
  type metadata accessor for IMBTranscriptMessageViewController();
  v19 = v1;
  v20 = v10;
  v21 = v12;
  return sub_1000AC8FC();
}

uint64_t sub_10003DED4(uint64_t a1)
{
  sub_10000E66C(a1, v3, &qword_1000F0918, &unk_1000B1C60);
  sub_10000E66C(v3, &v2, &qword_1000F0918, &unk_1000B1C60);
  sub_100042340();
  sub_1000ABD0C();
  return sub_10000E784(v3, &qword_1000F0918, &unk_1000B1C60);
}

void sub_10003DF64(uint64_t a1, void *a2, char *a3)
{
  v6 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v109 - v10;
  v122 = sub_1000AB7EC();
  v123 = *(v122 - 8);
  __chkstk_darwin(v122);
  v113 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  v14 = __chkstk_darwin(v13 - 8);
  v121 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v116 = &v109 - v16;
  v17 = sub_1000AB5AC();
  v115 = *(v17 - 8);
  __chkstk_darwin(v17);
  v114 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128[3] = type metadata accessor for HttpClientFactory();
  v128[4] = &off_1000DB930;
  v128[0] = a1;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest] = 0;
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_tryAgainAuthorizationStatus] = 1000;
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayTryAgainTimer] = 0;
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_authorizePaymentRetryTimer] = 0;
  v20 = &a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentExpireTimer] = 0;
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController] = 0;
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_window] = 0;
  v118 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v21 = swift_allocObject();
  v117 = xmmword_1000AF0E0;
  *(v21 + 16) = xmmword_1000AF0E0;
  *(v21 + 56) = &type metadata for String;
  v119 = sub_10000587C();
  *(v21 + 64) = v119;
  *(v21 + 32) = 0xD000000000000020;
  *(v21 + 40) = 0x80000001000B8FF0;
  v120 = sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v22 = sub_1000AC3FC();
  v23 = sub_1000AC2BC();
  sub_1000ABA5C("BusinessChat: IMBApplePayManager %@", 35, 2, &_mh_execute_header, v22, v23, v21);

  sub_10000E6D4(v128, &a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_httpClientFactory]);
  v24 = type metadata accessor for IMBMessage();
  v25 = swift_dynamicCastClass();
  v26 = (&stru_1000E5FF8 + 8);
  if (v25)
  {
    v27 = v25;
    v28 = a2;
  }

  else
  {
    v29 = [a2 messageData];
    v112 = v17;
    if (v29 && (v30 = v29, v31 = [v29 data], v30, v31))
    {
      v32 = sub_1000AB73C();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0xF000000000000000;
    }

    v35 = [a2 messageData];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 url];

      if (v37)
      {
        sub_1000AB6AC();

        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      p_attr = &stru_1000E5FF8.attr;
      v41 = sub_1000AB6EC();
      (*(*(v41 - 8) + 56))(v9, v38, 1, v41);
      sub_10000E7E4(v9, v11);
    }

    else
    {
      v39 = sub_1000AB6EC();
      (*(*(v39 - 8) + 56))(v11, 1, 1, v39);
      p_attr = (&stru_1000E5FF8 + 8);
    }

    v42 = [a2 messageGUID];
    if (v42)
    {
      v43 = v42;
      v110 = sub_1000AC06C();
      v45 = v44;
    }

    else
    {
      v110 = 0;
      v45 = 0;
    }

    v46 = v11;
    v111 = [a2 p_attr[210]];
    if (v34 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = sub_1000AB72C().super.isa;
      sub_10000E950(v32, v34);
    }

    v48 = sub_1000AB6EC();
    v49 = *(v48 - 8);
    v50 = v46;
    v51 = (*(v49 + 48))(v46, 1, v48);
    v53 = 0;
    if (v51 != 1)
    {
      sub_1000AB67C(v52);
      v53 = v54;
      (*(v49 + 8))(v50, v48);
    }

    if (v45)
    {
      v55 = sub_1000AC02C();
    }

    else
    {
      v55 = 0;
    }

    v17 = v112;
    v56 = objc_allocWithZone(v24);
    v27 = [v56 initWithData:isa url:v53 messageGUID:v55 isFromMe:v111];

    v26 = &stru_1000E5FF8.attr;
    if (!v27)
    {
      __break(1u);
      return;
    }
  }

  v57 = v27;
  if ([v57 rootObject])
  {
    type metadata accessor for IMBPaymentRequest(0);
    v58 = swift_dynamicCastClass();
    if (v58)
    {
      v59 = v58;
      swift_beginAccess();
      *&a3[v19] = v59;

      goto LABEL_32;
    }

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  *&a3[v19] = 0;

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v60 = qword_1000FC008;
  v61 = sub_1000AC2AC();
  sub_1000ABA5C("BusinessChat: IMBPaymentRequest is nil", 38, 2, &_mh_execute_header, v60, v61, _swiftEmptyArrayStorage);
LABEL_32:
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbMessage] = v57;
  v62 = type metadata accessor for IMBNetworkBody();
  v63 = objc_allocWithZone(v62);
  *&v63[OBJC_IVAR____TtC8Business14IMBNetworkBody__body] = _swiftEmptyDictionarySingleton;
  *&v63[OBJC_IVAR____TtC8Business14IMBNetworkBody_message] = a2;
  v127.receiver = v63;
  v127.super_class = v62;
  v64 = a2;
  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody] = objc_msgSendSuper2(&v127, "init");
  if (![v64 v26[210]])
  {
    v65 = [v64 receivedMessage];
    if (v65)
    {
      goto LABEL_36;
    }

LABEL_41:
    v69 = 0;
    v71 = 0;
LABEL_42:
    swift_beginAccess();
    v77 = *&a3[v19];
    if (v77)
    {
      v78 = v77 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
      *v78 = 1;
      *(v78 + 8) = 0;
    }

    goto LABEL_44;
  }

  v65 = [v64 replyMessage];
  if (!v65)
  {
    goto LABEL_41;
  }

LABEL_36:
  v66 = v65;
  v67 = [v65 title];

  if (!v67)
  {
    goto LABEL_41;
  }

  v68 = v64;
  v69 = sub_1000AC06C();
  v71 = v70;

  v125 = v69;
  v126 = v71;
  v72 = v114;
  sub_1000AB59C();
  sub_10002BD70();
  v73 = sub_1000AC43C();
  v75 = v74;
  (*(v115 + 8))(v72, v17);

  v76 = HIBYTE(v75) & 0xF;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v76 = v73 & 0xFFFFFFFFFFFFLL;
  }

  v64 = v68;
  if (!v76)
  {
    goto LABEL_42;
  }

LABEL_44:
  v79 = 7104878;
  swift_beginAccess();
  type metadata accessor for IMBApplePayViewModel();
  swift_allocObject();

  *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel] = sub_10008A500(v80, v69, v71);
  v81 = type metadata accessor for IMBApplePayManager();
  v124.receiver = a3;
  v124.super_class = v81;
  v82 = objc_msgSendSuper2(&v124, "init");
  v83 = *&v82[OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel];
  v84 = v82;

  sub_100026E1C(v57, v83);

  v85 = swift_allocObject();
  *(v85 + 16) = v117;
  v86 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v87 = *&v84[v86];
  v88 = v122;
  if (v87)
  {
    v89 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate;
    swift_beginAccess();
    v90 = v87 + v89;
    v91 = v116;
    sub_10000E66C(v90, v116, &qword_1000F0270, &unk_1000B0480);
    v92 = v123;
    if (!(*(v123 + 48))(v91, 1, v88))
    {
      v118 = v57;
      v95 = v64;
      v96 = v113;
      (*(v92 + 16))(v113, v91, v88);
      sub_10000E784(v91, &qword_1000F0270, &unk_1000B0480);
      v97 = v92;
      v98 = sub_1000AB75C();
      v94 = v99;
      (*(v97 + 8))(v96, v88);
      v100 = v119;
      *(v85 + 56) = &type metadata for String;
      *(v85 + 64) = v100;
      if (v94)
      {
        v79 = v98;
      }

      else
      {
        v94 = 0xE300000000000000;
      }

      v64 = v95;
      v57 = v118;
      goto LABEL_52;
    }

    sub_10000E784(v91, &qword_1000F0270, &unk_1000B0480);
  }

  v93 = v119;
  *(v85 + 56) = &type metadata for String;
  *(v85 + 64) = v93;
  v94 = 0xE300000000000000;
LABEL_52:
  *(v85 + 32) = v79;
  *(v85 + 40) = v94;
  v101 = sub_1000AC3FC();
  v102 = sub_1000AC2BC();
  sub_1000ABA5C("BusinessChat: paymentExpirationDate = %@", 40, 2, &_mh_execute_header, v101, v102, v85);

  swift_beginAccess();
  v103 = *&v84[v86];
  if (!v103)
  {
    sub_10000E738(v128);
    swift_endAccess();

    v106 = v121;
    (*(v123 + 56))(v121, 1, 1, v88);
    goto LABEL_56;
  }

  swift_endAccess();
  v104 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate;
  swift_beginAccess();
  v105 = v103 + v104;
  v106 = v121;
  sub_10000E66C(v105, v121, &qword_1000F0270, &unk_1000B0480);
  if ((*(v123 + 48))(v106, 1, v88) == 1)
  {
    sub_10000E738(v128);

LABEL_56:
    sub_10000E784(v106, &qword_1000F0270, &unk_1000B0480);
    return;
  }

  sub_10000E784(v106, &qword_1000F0270, &unk_1000B0480);
  v107 = sub_1000AC3FC();
  v108 = sub_1000AC2BC();
  sub_1000ABA5C("BusinessChat: IMBApplePaymanager starting timer in init", 55, 2, &_mh_execute_header, v107, v108, _swiftEmptyArrayStorage);

  sub_100021A0C();
  sub_10000E738(v128);
}

id sub_10003ED58(uint64_t a1)
{
  v2 = type metadata accessor for PluginBubbleContext();
  v14[3] = v2;
  v14[4] = &off_1000DAEB0;
  v14[0] = a1;
  v3 = type metadata accessor for BIABubbleViewController();
  v4 = objc_allocWithZone(v3);
  v5 = sub_1000315C0(v14, v2);
  __chkstk_darwin(v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v13[3] = v2;
  v13[4] = &off_1000DAEB0;
  v13[0] = v9;
  sub_10000E6D4(v13, v4 + OBJC_IVAR____TtC8Business23BIABubbleViewController_context);
  v12.receiver = v4;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", 0, 0);
  sub_10000E738(v13);
  sub_10000E738(v14);
  return v10;
}

uint64_t sub_10003EEAC(void *a1, void *a2)
{
  v15 = type metadata accessor for PluginBubbleContext();
  v16 = &off_1000DAEB0;
  v14[0]._object = a1;
  sub_1000058D0(&v14[0]._object, v15);
  v4 = BCMessageRootQuickReplyKey;
  v5 = a1;
  v6 = [a2 dictionaryValue];
  v7 = sub_1000ABFBC();

  v8 = [objc_opt_self() mainBundle];
  v14[0]._countAndFlagsBits = 0xE000000000000000;
  v17._object = 0x80000001000B90C0;
  v17._countAndFlagsBits = 0xD000000000000015;
  v18.value._countAndFlagsBits = 0;
  v18.value._object = 0;
  v9.super.isa = v8;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v10 = sub_1000AB61C(v17, v18, v9, v19, 0, v14[0]);
  v12 = v11;

  sub_1000164C4(v4, v7, v10, v12);

  return sub_10000E738(&v14[0]._object);
}

void *sub_10003F008(char a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v46[3] = type metadata accessor for URLHelper(0);
  v46[4] = &off_1000DCB20;
  v8 = sub_100030970(v46);
  sub_100042394(a3, v8, type metadata accessor for URLHelper);
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_touchDelay] = 0x4000000000000000;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = BCBubbleViewStyleIcon;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_style] = BCBubbleViewStyleIcon;
  a4[OBJC_IVAR____TtC8Business13IMBBubbleView_type] = 0;
  v10 = OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel;
  v11 = objc_allocWithZone(UILabel);
  v12 = v9;
  *&a4[v10] = [v11 init];
  v13 = OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel;
  *&a4[v13] = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer;
  *&a4[v14] = [objc_allocWithZone(UIView) init];
  v15 = OBJC_IVAR____TtC8Business13IMBBubbleView_informationView;
  *&a4[v15] = [objc_allocWithZone(UIView) init];
  v16 = OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground;
  *&a4[v16] = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC8Business13IMBBubbleView_imageView;
  *&a4[v17] = [objc_allocWithZone(UIImageView) init];
  v18 = OBJC_IVAR____TtC8Business13IMBBubbleView_defaultColor;
  if (qword_1000EEDA8 != -1)
  {
    swift_once();
  }

  v19 = qword_1000FBED8;
  *&a4[v18] = qword_1000FBED8;
  v20 = OBJC_IVAR____TtC8Business13IMBBubbleView_highlightColor;
  v21 = qword_1000EEDB0;
  v22 = v19;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = qword_1000FBEE0;
  *&a4[v20] = qword_1000FBEE0;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewHeightConstraint] = 0;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewWidthConstraint] = 0;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_labelWidthConstraint] = 0;
  v24 = &a4[OBJC_IVAR____TtC8Business13IMBBubbleView_touch];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = &a4[OBJC_IVAR____TtC8Business13IMBBubbleView_touchTimestamp];
  *v25 = 0;
  v25[8] = 1;
  a4[OBJC_IVAR____TtC8Business13IMBBubbleView_useAlternateTapTarget] = 0;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerFirstConstraintsIconSmall] = _swiftEmptyArrayStorage;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewFirstConstraintsIconSmall] = _swiftEmptyArrayStorage;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_largeLabelContainerConstraints] = _swiftEmptyArrayStorage;
  v26 = OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewSpacingConstraint;
  v27 = objc_allocWithZone(NSLayoutConstraint);
  v28 = v23;
  *&a4[v26] = [v27 init];
  v29 = OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerWidthConstraint;
  *&a4[v29] = [objc_allocWithZone(NSLayoutConstraint) init];
  v30 = OBJC_IVAR____TtC8Business13IMBBubbleView_labelRightConstraint;
  *&a4[v30] = [objc_allocWithZone(NSLayoutConstraint) init];
  v31 = OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabelWidthConstraint;
  *&a4[v31] = [objc_allocWithZone(NSLayoutConstraint) init];
  v32 = OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabelWidthConstraint;
  *&a4[v32] = [objc_allocWithZone(NSLayoutConstraint) init];
  v33 = OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabelHeightConstraint;
  *&a4[v33] = [objc_allocWithZone(NSLayoutConstraint) init];
  v34 = OBJC_IVAR____TtC8Business13IMBBubbleView_widthConstraint;
  *&a4[v34] = [objc_allocWithZone(NSLayoutConstraint) init];
  v35 = OBJC_IVAR____TtC8Business13IMBBubbleView_heightConstraint;
  *&a4[v35] = [objc_allocWithZone(NSLayoutConstraint) init];
  v36 = &a4[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
  *v36 = 0;
  v36[1] = 0;
  v37 = &a4[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle];
  *v37 = 0;
  v37[1] = 0;
  *&a4[OBJC_IVAR____TtC8Business13IMBBubbleView_image] = 0;
  sub_10000E6D4(v46, &a4[OBJC_IVAR____TtC8Business13IMBBubbleView_urlHelper]);
  v45.receiver = a4;
  v45.super_class = type metadata accessor for IMBBubbleView();
  v38 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v38[OBJC_IVAR____TtC8Business13IMBBubbleView_type] = a1 & 1;
  v39 = *&v38[OBJC_IVAR____TtC8Business13IMBBubbleView_style];
  *&v38[OBJC_IVAR____TtC8Business13IMBBubbleView_style] = a2;
  v40 = v38;
  v41 = a2;

  v42 = (*((swift_isaMask & *v40) + 0x398))();
  v43 = (*((swift_isaMask & *v40) + 0x3A0))(v42);
  sub_10007B870(v43);

  sub_10000E738(v46);
  return v40;
}

void *sub_10003F560(uint64_t a1, char a2, void *a3)
{
  v6 = type metadata accessor for URLHelper(0);
  __chkstk_darwin(v6);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004EA70(v8);
  v26 = v6;
  v27 = &off_1000DCB20;
  v9 = sub_100030970(v25);
  sub_100042164(v8, v9, type metadata accessor for URLHelper);
  v10 = objc_allocWithZone(type metadata accessor for IMBBubbleView());
  v11 = sub_1000315C0(v25, v26);
  __chkstk_darwin(v11);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = a3;
  v16 = sub_10003F008(a2 & 1, v15, v13, v10);

  sub_100042290(v8, type metadata accessor for URLHelper);
  sub_10000E738(v25);
  v17 = [objc_opt_self() defaultBubbleTitleFor:a1];
  v18 = sub_1000AC06C();
  v20 = v19;

  v21 = (v16 + OBJC_IVAR____TtC8Business13IMBBubbleView_title);
  *v21 = v18;
  v21[1] = v20;

  sub_1000A9FF0();
  [v16 setUserInteractionEnabled:0];
  v22 = *(v16 + OBJC_IVAR____TtC8Business13IMBBubbleView_image);
  *(v16 + OBJC_IVAR____TtC8Business13IMBBubbleView_image) = 0;

  sub_1000AA2B0();
  return v16;
}

_BYTE *sub_10003F7AC(char *a1, uint64_t a2)
{
  v268 = a2;
  v261 = type metadata accessor for BIABubbleViewModel(0);
  v259 = *(v261 - 8);
  __chkstk_darwin(v261);
  v262 = (&v251 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v260 = type metadata accessor for BIAPayload(0);
  __chkstk_darwin(v260);
  v263 = &v251 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  __chkstk_darwin(v5 - 8);
  v7 = &v251 - v6;
  v8 = type metadata accessor for URLHelper(0);
  __chkstk_darwin(v8);
  v10 = &v251 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v11 - 8);
  v13 = &v251 - v12;
  v264 = a1;
  v14 = *&a1[OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage];
  v15 = [v14 isFromMe];
  v16 = &selRef_replyMessage;
  if (!v15)
  {
    v16 = &selRef_receivedMessage;
  }

  v17 = [v14 *v16];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 style];
  }

  else
  {
    v18 = 0;
    v19 = BCBubbleViewStyleIcon;
  }

  v20 = v19;
  if (![v14 isVersionSupported])
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v46 = qword_1000FC008;
    v47 = sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1000AF0E0;
    *(v48 + 56) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
    *(v48 + 64) = sub_1000420C4();
    *(v48 + 32) = v14;
    v49 = v14;
    sub_1000ABA5C("IMBTranscriptMessageViewController: Payload version not supported: %@, created unsupported message bubble", 105, 2, &_mh_execute_header, v46, v47, v48);

    v50 = sub_10003F560(v49, v15, v20);

    return v50;
  }

  v270 = v20;
  v21 = [v14 rootKey];
  v269 = v15;
  if (!v21)
  {
    sub_1000AC06C();
    v22 = sub_1000AC02C();

    v21 = v22;
  }

  v252 = v7;
  v254 = v8;
  v255 = v10;
  v265 = v14;
  v23 = qword_1000EEE80;
  v24 = v21;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_1000FC008;
  v26 = sub_1000AC29C();
  v257 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000B14C0;
  v28 = sub_1000AC06C();
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  v31 = sub_10000587C();
  v32 = v31;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v33 = v269 == 0;
  v34 = 0x6E65697069636572;
  if (v269)
  {
    v34 = 0x7265646E6573;
  }

  v35 = 0xE900000000000074;
  *(v27 + 96) = &type metadata for String;
  *(v27 + 104) = v31;
  if (!v33)
  {
    v35 = 0xE600000000000000;
  }

  *(v27 + 64) = v31;
  *(v27 + 72) = v34;
  *(v27 + 80) = v35;
  v36 = sub_1000AC06C();
  *(v27 + 136) = &type metadata for String;
  *(v27 + 144) = v32;
  *(v27 + 112) = v36;
  *(v27 + 120) = v37;
  v272[0] = v18;
  v267 = v24;
  v266 = v18;
  sub_10000413C(&qword_1000F07C0, &qword_1000B1C00);
  v38 = sub_1000AC0CC();
  *(v27 + 176) = &type metadata for String;
  *(v27 + 184) = v32;
  v253 = v32;
  *(v27 + 152) = v38;
  *(v27 + 160) = v39;
  v258 = v25;
  sub_1000ABA5C("IMBTranscriptMessageViewController: Creating bubbleView for message with rootKey: %@, type: %@, style: %@ messageInfo: %@", 121, 2, &_mh_execute_header, v25, v26, v27);

  v40 = sub_1000AC06C();
  v42 = v41;
  v256 = v24;
  if (v40 == sub_1000AC06C() && v42 == v43)
  {
    v44 = v267;

    v45 = v265;
    goto LABEL_23;
  }

  v251 = v18;
  v51 = sub_1000AC7AC();
  v52 = v267;

  v45 = v265;
  if (v51)
  {

    v44 = v52;
LABEL_23:
    v53 = type metadata accessor for HttpClientFactory();
    v54 = [objc_allocWithZone(v53) init];
    v273 = v53;
    v274 = &off_1000DB930;
    v272[0] = v54;
    v55 = objc_allocWithZone(type metadata accessor for IMBApplePayManager());
    v56 = sub_1000315C0(v272, v273);
    __chkstk_darwin(v56);
    v58 = (&v251 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v59 + 16))(v58);
    v60 = *v58;
    v61 = v45;
    sub_10003DF64(v60, v61, v55);
    v63 = v62;
    sub_10000E738(v272);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v64 = objc_allocWithZone(type metadata accessor for ApplePayBubbleView());
    v65 = v61;
    v66 = v270;
    v67 = v63;
    v50 = sub_10005C9F0(v269, v66, v65, v67);
    v68 = *&v50[OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayManager];
    v69 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v70 = *(v68 + v69);
    if (v70)
    {
      v71 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_productUrl;
      swift_beginAccess();
      sub_10000E66C(v70 + v71, v13, &unk_1000F06A0, &unk_1000B0450);
      v72 = sub_1000AB6EC();
      if ((*(*(v72 - 8) + 48))(v13, 1, v72) != 1)
      {
        sub_10000E784(v13, &unk_1000F06A0, &unk_1000B0450);
        v50[OBJC_IVAR____TtC8Business13IMBBubbleView_useAlternateTapTarget] = 1;
LABEL_28:
        v74 = sub_1000AC2BC();
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_1000AF0E0;
        *(v75 + 56) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
        *(v75 + 64) = sub_1000420C4();
        *(v75 + 32) = v65;
        v76 = v65;
        sub_1000ABA5C("IMBTranscriptMessageViewController: ApplePay bubble created for message: %@", 75, 2, &_mh_execute_header, v258, v74, v75);

LABEL_29:
LABEL_39:

        return v50;
      }
    }

    else
    {
      v73 = sub_1000AB6EC();
      (*(*(v73 - 8) + 56))(v13, 1, 1, v73);
    }

    sub_10000E784(v13, &unk_1000F06A0, &unk_1000B0450);
    goto LABEL_28;
  }

  v77 = sub_1000AC06C();
  v79 = v78;
  if (v77 == sub_1000AC06C() && v79 == v80)
  {
    v81 = v267;

    v82 = v269;
LABEL_35:
    v84 = objc_allocWithZone(type metadata accessor for IMBAuthenticationBubbleView());
    v85 = v45;
    v86 = v270;
    v50 = sub_100092C88(v82, v86, v85);
    v87 = sub_1000AC2BC();
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_1000AF0E0;
    *(v88 + 56) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
    *(v88 + 64) = sub_1000420C4();
    *(v88 + 32) = v85;
    v89 = v85;
    sub_1000ABA5C("IMBTranscriptMessageViewController: auth bubble created for message: %@", 71, 2, &_mh_execute_header, v258, v87, v88);
LABEL_36:

LABEL_37:

LABEL_38:
    goto LABEL_39;
  }

  v83 = sub_1000AC7AC();

  v82 = v269;
  if (v83)
  {
    v81 = v267;

    goto LABEL_35;
  }

  v91 = sub_1000AC06C();
  v93 = v92;
  if (v91 == sub_1000AC06C() && v93 == v94)
  {
    v81 = v267;

LABEL_46:
    v96 = objc_allocWithZone(type metadata accessor for IMBInternalAuthenticationBubbleView());
    v97 = v45;
    v86 = v270;
    v50 = sub_1000056A8(v82, v86, v97);

    v98 = sub_1000AC2BC();
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_1000AF0E0;
    *(v99 + 56) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
    *(v99 + 64) = sub_1000420C4();
    *(v99 + 32) = v97;
    v100 = v97;
    sub_1000ABA5C("IMBTranscriptMessageViewController: internal auth bubble created for message: %@", 80, 2, &_mh_execute_header, v258, v98, v99);
    goto LABEL_36;
  }

  v95 = sub_1000AC7AC();

  if (v95)
  {
    v81 = v267;

    goto LABEL_46;
  }

  v101 = sub_1000AC06C();
  v103 = v102;
  if (v101 == sub_1000AC06C() && v103 == v104)
  {
    goto LABEL_49;
  }

  v105 = sub_1000AC7AC();

  if (v105)
  {
    goto LABEL_51;
  }

  v109 = sub_1000AC06C();
  v111 = v110;
  if (v109 == sub_1000AC06C() && v111 == v112)
  {
LABEL_49:
    v81 = v267;

LABEL_52:
    v106 = sub_1000AC2AC();
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_1000AF0E0;
    *(v107 + 56) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
    *(v107 + 64) = sub_1000420C4();
    *(v107 + 32) = v45;
    v108 = v45;
    sub_1000ABA5C("IMBTranscriptMessageViewController: Message rootkey was missing or invalid in message: %@, created error bubble", 111, 2, &_mh_execute_header, v258, v106, v107);

    v86 = v270;
    v50 = sub_10003F560(v108, v82, v270);
    goto LABEL_37;
  }

  v113 = sub_1000AC7AC();

  if (v113)
  {
LABEL_51:
    v81 = v267;

    goto LABEL_52;
  }

  v114 = sub_1000AC06C();
  v116 = v115;
  if (v114 == sub_1000AC06C() && v116 == v117)
  {
    v118 = v267;

    v119 = v270;
LABEL_61:
    v121 = v45;
    v122 = sub_100096FFC(v121);
    if (v122)
    {
      v125 = v122;
      v126 = v123;
      v127 = v124;
      if ([v121 isFromMe])
      {
        v128 = objc_allocWithZone(type metadata accessor for QuickReplyFromMeBubbleView());
        v50 = sub_10007ACA8(v125, v126, v127 & 1);
      }

      else
      {
        v149 = swift_allocObject();
        v150 = v264;
        *(v149 + 16) = v264;
        v151 = objc_allocWithZone(type metadata accessor for QuickReplyToMeBubbleView());
        v152 = v150;
        v119 = v270;
        v50 = sub_10000E9B8(v125, v126, v127 & 1, sub_100042334, v149);
      }

      v153 = sub_1000AC2BC();
      v154 = swift_allocObject();
      *(v154 + 16) = xmmword_1000AF0E0;
      *(v154 + 56) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
      *(v154 + 64) = sub_1000420C4();
      *(v154 + 32) = v121;
      v155 = v121;
      sub_1000ABA5C("IMBTranscriptMessageViewController: quick reply bubble created for message: %@", 78, 2, &_mh_execute_header, v258, v153, v154);

      return v50;
    }

    v66 = v119;
    v129 = v255;
    sub_10004EA70(v255);
    v273 = v254;
    v274 = &off_1000DCB20;
    v130 = sub_100030970(v272);
    sub_100042164(v129, v130, type metadata accessor for URLHelper);
    v131 = objc_allocWithZone(type metadata accessor for IMBBubbleView());
    v132 = sub_1000315C0(v272, v273);
    __chkstk_darwin(v132);
    v134 = &v251 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v135 + 16))(v134);
    v50 = sub_10003F008(v82, v66, v134, v131);

    sub_100042290(v129, type metadata accessor for URLHelper);
    sub_10000E738(v272);
    v136 = [objc_opt_self() defaultBubbleTitleFor:v121];
    v137 = sub_1000AC06C();
    v139 = v138;

    v140 = &v50[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
    *v140 = v137;
    v140[1] = v139;

    sub_1000A9FF0();
    [v50 setUserInteractionEnabled:0];
    v141 = *&v50[OBJC_IVAR____TtC8Business13IMBBubbleView_image];
    *&v50[OBJC_IVAR____TtC8Business13IMBBubbleView_image] = 0;

    sub_1000AA2B0();
    v142 = sub_1000AC2AC();
    v143 = swift_allocObject();
    *(v143 + 16) = xmmword_1000AF0E0;
    *(v143 + 56) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
    *(v143 + 64) = sub_1000420C4();
    *(v143 + 32) = v121;
    v144 = v121;
    sub_1000ABA5C("IMBTranscriptMessageViewController: Failed to construct model from message: %@, created error bubble", 100, 2, &_mh_execute_header, v258, v142, v143);

    goto LABEL_29;
  }

  v120 = sub_1000AC7AC();

  v119 = v270;
  if (v120)
  {
    v118 = v267;

    goto LABEL_61;
  }

  v145 = sub_1000AC06C();
  v147 = v146;
  if (v145 == sub_1000AC06C() && v147 == v148)
  {
  }

  else
  {
    v156 = sub_1000AC7AC();

    if ((v156 & 1) == 0)
    {
      v160 = sub_1000AC06C();
      v162 = v161;
      if (v160 == sub_1000AC06C() && v162 == v163)
      {
      }

      else
      {
        v189 = sub_1000AC7AC();

        if ((v189 & 1) == 0)
        {
LABEL_100:
          v86 = v270;
          v212 = v255;
          sub_10004EA70(v255);
          v273 = v254;
          v274 = &off_1000DCB20;
          v213 = sub_100030970(v272);
          sub_100042164(v212, v213, type metadata accessor for URLHelper);
          v214 = objc_allocWithZone(type metadata accessor for IMBBubbleView());
          v215 = sub_1000315C0(v272, v273);
          __chkstk_darwin(v215);
          v217 = &v251 - ((v216 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v218 + 16))(v217);
          v50 = sub_10003F008(v269, v86, v217, v214);

          sub_100042290(v212, type metadata accessor for URLHelper);
          sub_10000E738(v272);
          if (!v251 || (v219 = [v266 alternateTitle]) == 0 && (v219 = objc_msgSend(v266, "title")) == 0)
          {
            v219 = [objc_opt_self() defaultBubbleTitleFor:v265];
          }

          v220 = v219;
          v221 = sub_1000AC06C();
          v223 = v222;

          v224 = &v50[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
          *v224 = v221;
          v224[1] = v223;

          sub_1000A9FF0();
          if (v251 && (v225 = [v266 subtitle]) != 0)
          {
            v226 = v225;
            v227 = sub_1000AC06C();
            v229 = v228;
          }

          else
          {
            v227 = 0;
            v229 = 0;
          }

          v230 = &v50[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle];
          *v230 = v227;
          v230[1] = v229;

          v231 = *&v50[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel];
          if (v229)
          {

            v232 = sub_1000AC02C();
          }

          else
          {
            v232 = 0;
          }

          [v231 setText:v232];

          if (v251)
          {
            v233 = [v266 image];
          }

          else
          {
            v233 = 0;
          }

          v234 = OBJC_IVAR____TtC8Business13IMBBubbleView_image;
          v235 = *&v50[OBJC_IVAR____TtC8Business13IMBBubbleView_image];
          *&v50[OBJC_IVAR____TtC8Business13IMBBubbleView_image] = v233;
          v236 = v233;

          sub_1000AA2B0();
          v237 = *&v50[v234];
          if (v237)
          {
            v238 = v237;
            if (!v251 || (v239 = [v266 imageDescription]) == 0)
            {
              v239 = 0;
            }

            [v238 setAccessibilityLabel:v239];
          }

          v240 = sub_1000AC2AC();
          v241 = swift_allocObject();
          *(v241 + 16) = xmmword_1000AF0F0;
          v242 = sub_1000AC06C();
          v244 = v243;
          v245 = v267;

          v246 = v253;
          *(v241 + 56) = &type metadata for String;
          *(v241 + 64) = v246;
          *(v241 + 32) = v242;
          *(v241 + 40) = v244;
          *(v241 + 96) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
          *(v241 + 104) = sub_1000420C4();
          v247 = v265;
          *(v241 + 72) = v265;
          v248 = v247;
          sub_1000ABA5C("IMBTranscriptMessageViewController: Unhandled rootkey: %@ in message: %@, created default bubble", 96, 2, &_mh_execute_header, v258, v240, v241);

          goto LABEL_38;
        }
      }

      sub_10005E984(v265);
      v191 = v190;
      v193 = v192;
      v195 = v194;
      v196 = objc_allocWithZone(type metadata accessor for IMBJITAppKitBubbleView());
      v50 = sub_100084660(v269, v270, v191, v193, v195);

      goto LABEL_39;
    }
  }

  v157 = v263;
  if ([v45 isFromMe])
  {
    type metadata accessor for BIAReplyPayload();
    swift_allocObject();
    v164 = sub_100020C5C(v45);

    v165 = *(v164 + 32);
    v166 = *(v164 + 40);
    v167 = *(v164 + 48);
    v168 = *(v164 + 56);
    v169 = *(v164 + 64);

    v273 = type metadata accessor for PluginBubbleContext();
    v274 = &off_1000DAEB0;
    v272[0] = v264;
    v170 = v264;

    v171 = sub_10002C2C8(v165, v166, v167, v168, v169);

    KeyPath = swift_getKeyPath();
    sub_10000E6D4(v272, v276);
    v275[0] = v171;
    v275[1] = KeyPath;
    sub_10000E738(v272);
    if (qword_1000EEDD0 != -1)
    {
      swift_once();
    }

    v173 = qword_1000FBF00;
    v174 = sub_1000ABE9C();
    v175 = sub_10000413C(&qword_1000F08F8, &qword_1000B1C38);
    v176 = objc_allocWithZone(v175);
    v177 = v176 + *((swift_isaMask & *v176) + 0x60);
    sub_10000E66C(v275, v177, &qword_1000F0900, &qword_1000B1C40);
    *(v177 + 56) = v174;
    sub_10000E66C(v177, v272, &qword_1000F0908, &qword_1000B1C48);
    v178 = objc_allocWithZone(sub_10000413C(&qword_1000F0910, &unk_1000B1C50));

    *(v176 + *((swift_isaMask & *v176) + 0x68)) = sub_1000ABD7C();
    v271.receiver = v176;
    v271.super_class = v175;
    v50 = objc_msgSendSuper2(&v271, "initWithNibName:bundle:", 0, 0);

    sub_10000E784(v275, &qword_1000F0900, &qword_1000B1C40);

    return v50;
  }

  v50 = sub_10003ED58(v264);
  result = [v50 view];
  if (result)
  {
    v158 = result;
    type metadata accessor for BIABubbleView(0);
    v159 = swift_dynamicCastClassUnconditional();
    sub_100016A58(v265, v157);
    v179 = v262;
    *v262 = 0;
    v179[1] = 0;
    v180 = v157[7];
    v179[2] = v157[6];
    v179[3] = v180;
    v181 = v157[9];
    v179[4] = v157[8];
    v179[5] = v181;
    sub_100042164(v157 + *(v260 + 36), v179 + *(v261 + 32), type metadata accessor for BIABubbleViewModelUserInteractionParadigm);
    if (v157[3])
    {

      v182 = sub_1000AB71C();
      if (v183 >> 60 == 15 || (v184 = v182, v185 = v183, v186 = objc_allocWithZone(UIImage), isa = sub_1000AB72C().super.isa, v188 = [v186 initWithData:isa], isa, sub_10000E950(v184, v185), !v188))
      {
        v197 = 0;
LABEL_95:

        sub_10004223C();
        swift_allocError();
        *v205 = v197;
        swift_willThrow();

        sub_100042290(v157, type metadata accessor for BIAPayload);
        sub_100042290(v262, type metadata accessor for BIABubbleViewModel);
        if (qword_1000EEE90 != -1)
        {
          swift_once();
        }

        v206 = sub_1000ABA8C();
        sub_10004212C(v206, qword_1000FC018);
        swift_errorRetain();
        v207 = sub_1000ABA6C();
        v208 = sub_1000AC2AC();

        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          v210 = swift_slowAlloc();
          *v209 = 138412290;
          swift_errorRetain();
          v211 = _swift_stdlib_bridgeErrorToNSError();
          *(v209 + 4) = v211;
          *v210 = v211;
          _os_log_impl(&_mh_execute_header, v207, v208, "IMBTranscriptMessageViewController: error creating BIA bubble: %@", v209, 0xCu);
          sub_10000E784(v210, &qword_1000F08E8, &qword_1000B1C08);
        }

        else
        {
        }

        goto LABEL_100;
      }

      v262[1] = v188;
    }

    else
    {
    }

    if (!v157[5])
    {

      sub_100042290(v157, type metadata accessor for BIAPayload);
      goto LABEL_121;
    }

    v198 = sub_1000AB71C();
    if (v199 >> 60 != 15)
    {
      v200 = v198;
      v201 = v199;
      v202 = objc_allocWithZone(UIImage);
      v203 = sub_1000AB72C().super.isa;
      v204 = [v202 initWithData:v203];

      sub_10000E950(v200, v201);
      if (v204)
      {

        sub_100042290(v157, type metadata accessor for BIAPayload);
        *v262 = v204;
LABEL_121:
        v249 = v252;
        sub_100042394(v262, v252, type metadata accessor for BIABubbleViewModel);
        (*(v259 + 56))(v249, 0, 1, v261);
        v250 = OBJC_IVAR____TtC8Business13BIABubbleView_viewModel;
        swift_beginAccess();
        sub_1000421CC(v249, v159 + v250);
        swift_endAccess();
        sub_1000598D0();

        sub_10000E784(v249, &qword_1000F08E0, &unk_1000B4690);
        return v50;
      }
    }

    v197 = 1;
    goto LABEL_95;
  }

  __break(1u);
  return result;
}

void *sub_1000417B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_pluginBubbleContext);
  v2 = OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage;
  v3 = [*(v1 + OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage) rootKey];
  v4 = sub_1000AC06C();
  v6 = v5;

  LODWORD(v3) = [*(v1 + v2) isFromMe];
  v7 = sub_1000AC06C();
  v9 = v8;
  v10 = [*(v1 + v2) version];
  v19 = v4;
  if (v3)
  {
    v21._countAndFlagsBits = 46;
    v21._object = 0xE100000000000000;
    sub_1000AC12C(v21);
    v22._countAndFlagsBits = 0x6465696C706572;
    v22._object = 0xE700000000000000;
    sub_1000AC12C(v22);
  }

  v23._countAndFlagsBits = 46;
  v23._object = 0xE100000000000000;
  sub_1000AC12C(v23);
  v24._countAndFlagsBits = v7;
  v24._object = v9;
  sub_1000AC12C(v24);

  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000AF0E0;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_10000587C();
  *(v11 + 32) = v19;
  *(v11 + 40) = v6;
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);

  v12 = sub_1000AC3FC();
  v13 = sub_1000AC2BC();
  sub_1000ABA5C("BusinessChat: Logging Message App Extension event: %@", 53, 2, &_mh_execute_header, v12, v13, v11);

  if (qword_1000EEE98 != -1)
  {
    swift_once();
  }

  v14 = qword_1000FC030;
  v15 = sub_1000AC02C();

  [v14 mt_log_icloud_messages_apps_businessframework:v15 version:v10];

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v16 = qword_1000FC008;
  v17 = sub_1000AC2BC();
  sub_1000ABA5C("Bubble open logged in aggregate", 31, 2, &_mh_execute_header, v16, v17, _swiftEmptyArrayStorage);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result requestPresentationStyle:sub_10003CB04()];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_100041AC0()
{
  v1 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_1000AB6EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(*(v0 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_pluginBubbleContext) + OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage) rootObject])
  {
    type metadata accessor for IMBPaymentRequest(0);
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_productUrl;
      v10 = v8;
      swift_beginAccess();
      sub_10000E66C(v10 + v9, v3, &unk_1000F06A0, &unk_1000B0450);
      if ((*(v5 + 48))(v3, 1, v4) != 1)
      {
        (*(v5 + 32))(v7, v3, v4);
        sub_1000058D0((v0 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_urlHelper), *(v0 + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_urlHelper + 24));
        sub_10004E400(v7, 0, 0, 0);
        swift_unknownObjectRelease();
        return (*(v5 + 8))(v7, v4);
      }

      swift_unknownObjectRelease();
      sub_10000E784(v3, &unk_1000F06A0, &unk_1000B0450);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return sub_1000417B8();
}

uint64_t sub_100041D18()
{
  v1 = sub_1000ABF3C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000ABF6C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
  v9 = sub_1000AC32C();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100041FE4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023BE0;
  aBlock[3] = &unk_1000DBED8;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_1000ABF5C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100042004();
  sub_10000413C(&unk_1000F1E00, &unk_1000B1BF0);
  sub_10004205C();
  sub_1000AC49C();
  sub_1000AC33C();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100041FAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100041FEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100042004()
{
  result = qword_1000F08D0;
  if (!qword_1000F08D0)
  {
    sub_1000ABF3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08D0);
  }

  return result;
}

unint64_t sub_10004205C()
{
  result = qword_1000F08D8;
  if (!qword_1000F08D8)
  {
    sub_1000041E8(&unk_1000F1E00, &unk_1000B1BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08D8);
  }

  return result;
}

unint64_t sub_1000420C4()
{
  result = qword_1000F23A0;
  if (!qword_1000F23A0)
  {
    sub_100005A24(255, &qword_1000EF020, BCMessage_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F23A0);
  }

  return result;
}

uint64_t sub_10004212C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100042164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000421CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004223C()
{
  result = qword_1000F08F0;
  if (!qword_1000F08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08F0);
  }

  return result;
}

uint64_t sub_100042290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100042340()
{
  result = qword_1000F0920;
  if (!qword_1000F0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0920);
  }

  return result;
}

uint64_t sub_100042394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_100042518()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business27IMBAuthenticationHeaderView_messageLabel];
  v2 = [objc_opt_self() mainBundle];
  v7._countAndFlagsBits = 0xE000000000000000;
  v9._object = 0x80000001000B9160;
  v9._countAndFlagsBits = 0xD00000000000001DLL;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v3.super.isa = v2;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_1000AB61C(v9, v10, v3, v11, 0, v7);

  v4 = sub_1000AC02C();

  [v1 setText:v4];

  v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v1 setFont:v5];

  [v1 setNumberOfLines:0];
  [v1 setTextAlignment:1];

  return [v0 addSubview:v1];
}

void sub_100042684()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Business27IMBAuthenticationHeaderView_messageLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000B04D0;
  v5 = [v2 topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:8.0];

  *(v4 + 32) = v7;
  v8 = [v2 bottomAnchor];
  v9 = [v1 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:8.0];

  *(v4 + 40) = v10;
  v11 = [v2 leadingAnchor];
  v12 = [v1 layoutMarginsGuide];
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13];
  *(v4 + 48) = v14;
  v15 = [v2 trailingAnchor];
  v16 = [v1 layoutMarginsGuide];
  v17 = [v16 trailingAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  *(v4 + 56) = v18;
  sub_10000F840();
  isa = sub_1000AC18C().super.isa;

  [v3 activateConstraints:isa];
}

id sub_100042958()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBAuthenticationHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000429C0()
{
  if (*v0)
  {
    return 0x326E6F6974706FLL;
  }

  else
  {
    return 0x316E6F6974706FLL;
  }
}

uint64_t sub_1000429F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x316E6F6974706FLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1000AC7AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x326E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000AC7AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100042AD0(uint64_t a1)
{
  v2 = sub_100043754();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042B0C(uint64_t a1)
{
  v2 = sub_100043754();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100042B48()
{
  v1 = 1701736302;
  v2 = 0x736E6F6974706FLL;
  if (*v0 != 2)
  {
    v2 = 0x68437972616E6962;
  }

  if (*v0)
  {
    v1 = 0x656C676E6973;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100042BC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000457C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100042BE8(uint64_t a1)
{
  v2 = sub_1000436E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042C24(uint64_t a1)
{
  v2 = sub_1000436E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100042C60(uint64_t a1)
{
  v2 = sub_10004395C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042C9C(uint64_t a1)
{
  v2 = sub_10004395C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100042CD8()
{
  if (*v0)
  {
    return 0x736E6F69746361;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_100042D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1000AC7AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000AC7AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100042DE8(uint64_t a1)
{
  v2 = sub_10004380C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042E24(uint64_t a1)
{
  v2 = sub_10004380C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100042E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000AC7AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100042EF8(uint64_t a1)
{
  v2 = sub_1000438B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042F34(uint64_t a1)
{
  v2 = sub_1000438B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BIAUserInteractionParadigm.encode(to:)(void *a1)
{
  v2 = v1;
  *&v53 = sub_10000413C(&qword_1000F0958, &qword_1000B1C90);
  *&v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  *&v51 = &v43 - v4;
  v5 = sub_10000413C(&qword_1000F0960, &qword_1000B1C98);
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = &v43 - v6;
  v7 = sub_10000413C(&qword_1000F0968, &qword_1000B1CA0);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = &v43 - v8;
  v9 = sub_10000413C(&qword_1000F0970, &qword_1000B1CA8);
  v44 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  v12 = sub_10000413C(&qword_1000F0978, &qword_1000B1CB0);
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  sub_1000058D0(a1, a1[3]);
  sub_1000436E4();
  v54 = v14;
  sub_1000AC91C();
  v15 = v2[7];
  v73[6] = v2[6];
  v73[7] = v15;
  v16 = v2[9];
  v73[8] = v2[8];
  v73[9] = v16;
  v17 = v2[3];
  v73[2] = v2[2];
  v73[3] = v17;
  v18 = v2[5];
  v73[4] = v2[4];
  v73[5] = v18;
  v19 = v2[1];
  v73[0] = *v2;
  v73[1] = v19;
  v20 = sub_100043738(v73);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v29 = sub_1000437FC(v73);
      v69 = v29[6];
      v70 = v29[7];
      v71 = v29[8];
      v72 = v29[9];
      v65 = v29[2];
      v66 = v29[3];
      v67 = v29[4];
      v68 = v29[5];
      v63 = *v29;
      v64 = v29[1];
      LOBYTE(v58) = 3;
      sub_100043754();
      v30 = v51;
      v31 = v56;
      v32 = v54;
      sub_1000AC72C();
      v60 = v65;
      v61 = v66;
      v62 = v67;
      v58 = v63;
      v59 = v64;
      v57 = 0;
      sub_1000437A8();
      v33 = v53;
      v34 = v74;
      sub_1000AC75C();
      if (!v34)
      {
        v60 = v70;
        v61 = v71;
        v62 = v72;
        v58 = v68;
        v59 = v69;
        v57 = 1;
        sub_1000AC75C();
      }

      (*(v52 + 8))(v30, v33);
      return (*(v55 + 8))(v32, v31);
    }

    else
    {
      LOBYTE(v63) = 0;
      sub_10004395C();
      v41 = v56;
      v42 = v54;
      sub_1000AC72C();
      (*(v44 + 8))(v11, v9);
      return (*(v55 + 8))(v42, v41);
    }
  }

  else if (v20)
  {
    v35 = *(sub_1000437FC(v73) + 16);
    LOBYTE(v63) = 2;
    sub_10004380C();
    v36 = v48;
    v37 = v56;
    v38 = v54;
    sub_1000AC72C();
    LOBYTE(v63) = 0;
    v39 = v50;
    v40 = v74;
    sub_1000AC74C();
    if (!v40)
    {
      *&v63 = v35;
      LOBYTE(v58) = 1;
      sub_10000413C(&qword_1000F09A0, &qword_1000B1CB8);
      sub_1000491D8(&qword_1000F09A8, sub_100043860, &protocol conformance descriptor for <A> [A]);
      sub_1000AC75C();
    }

    (*(v49 + 8))(v36, v39);
    return (*(v55 + 8))(v38, v37);
  }

  else
  {
    v21 = sub_1000437FC(v73);
    v53 = *(v21 + 32);
    v22 = *(v21 + 48);
    LOBYTE(v63) = 1;
    sub_1000438B4();
    v23 = *v21;
    v51 = *(v21 + 16);
    v52 = v23;
    v24 = v45;
    v25 = v56;
    v26 = v54;
    sub_1000AC72C();
    v63 = v52;
    v64 = v51;
    v65 = v53;
    *&v66 = v22;
    sub_100043908();
    v27 = v47;
    sub_1000AC75C();
    (*(v46 + 8))(v24, v27);
    return (*(v55 + 8))(v26, v25);
  }
}

unint64_t sub_1000436E4()
{
  result = qword_1000F0980;
  if (!qword_1000F0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0980);
  }

  return result;
}

uint64_t sub_100043738(uint64_t a1)
{
  if (((*(a1 + 120) >> 61) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return (*(a1 + 120) >> 61) & 3;
  }
}

unint64_t sub_100043754()
{
  result = qword_1000F0988;
  if (!qword_1000F0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0988);
  }

  return result;
}

unint64_t sub_1000437A8()
{
  result = qword_1000F0990;
  if (!qword_1000F0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0990);
  }

  return result;
}

unint64_t sub_10004380C()
{
  result = qword_1000F0998;
  if (!qword_1000F0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0998);
  }

  return result;
}

unint64_t sub_100043860()
{
  result = qword_1000F09B0;
  if (!qword_1000F09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F09B0);
  }

  return result;
}

unint64_t sub_1000438B4()
{
  result = qword_1000F09B8;
  if (!qword_1000F09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F09B8);
  }

  return result;
}

unint64_t sub_100043908()
{
  result = qword_1000F09C0;
  if (!qword_1000F09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F09C0);
  }

  return result;
}

unint64_t sub_10004395C()
{
  result = qword_1000F09C8;
  if (!qword_1000F09C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F09C8);
  }

  return result;
}

double BIAUserInteractionParadigm.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_10004592C(a2, v10);
  if (!v2)
  {
    v5 = v10[7];
    a1[6] = v10[6];
    a1[7] = v5;
    v6 = v10[9];
    a1[8] = v10[8];
    a1[9] = v6;
    v7 = v10[3];
    a1[2] = v10[2];
    a1[3] = v7;
    v8 = v10[5];
    a1[4] = v10[4];
    a1[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a1 = v10[0];
    a1[1] = v9;
  }

  return result;
}

uint64_t sub_100043A0C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_100043A40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

Swift::Int sub_100043A84()
{
  sub_1000AC87C();
  sub_1000AC11C();
  return sub_1000AC8CC();
}

Swift::Int sub_100043AE8()
{
  sub_1000AC87C();
  sub_1000AC11C();
  return sub_1000AC8CC();
}

uint64_t sub_100043B34@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000DA610;
  v7._object = v3;
  v5 = sub_1000AC6AC(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100043BB4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000DA648;
  v8._object = a2;
  v6 = sub_1000AC6AC(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100043C0C(uint64_t a1)
{
  v2 = sub_1000465F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100043C48(uint64_t a1)
{
  v2 = sub_1000465F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double BIAUserAction.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10004636C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_100043CD4()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_100043D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1000AC7AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000B6E70 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000AC7AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100043DF0(uint64_t a1)
{
  v2 = sub_1000465A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100043E2C(uint64_t a1)
{
  v2 = sub_1000465A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100043E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000AC7AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100043EF4(uint64_t a1)
{
  v2 = sub_1000466A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100043F30(uint64_t a1)
{
  v2 = sub_1000466A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BIAUserAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_10000413C(&qword_1000F09D0, &qword_1000B1CC0);
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v21 = &v20 - v5;
  v6 = sub_10000413C(&qword_1000F09D8, &qword_1000B1CC8);
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_10000413C(&qword_1000F09E0, &qword_1000B1CD0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  sub_1000058D0(a1, a1[3]);
  sub_1000465A4();
  sub_1000AC91C();
  v14 = *v2;
  v13 = v2[1];
  if (((*(v2 + 17) | ((*(v2 + 21) | (*(v2 + 23) << 16)) << 32)) & 0x8000000000000000) != 0)
  {
    v15 = *(v2 + 16);
    v16 = v2[5];
    v24 = v2[6];
    v20 = *(v2 + 3);
    LOBYTE(v25) = 1;
    sub_1000465F8();
    v17 = v21;
    sub_1000AC72C();
    v25 = v14;
    v26 = v13;
    v27 = v15 & 1;
    v28 = v20;
    v29 = v16;
    v30 = v24;
    sub_10004664C();
    v18 = v23;
    sub_1000AC75C();
    (*(v22 + 8))(v17, v18);
  }

  else
  {
    LOBYTE(v25) = 0;
    sub_1000466A0();
    sub_1000AC72C();
    sub_1000AC74C();
    (*(v24 + 8))(v8, v6);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000442CC(uint64_t a1)
{
  v2 = sub_1000466F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044308(uint64_t a1)
{
  v2 = sub_1000466F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100044344(uint64_t a1)
{
  v2 = sub_100046748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044380(uint64_t a1)
{
  v2 = sub_100046748();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000443BC(uint64_t a1)
{
  v2 = sub_10004679C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000443F8(uint64_t a1)
{
  v2 = sub_10004679C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BIADeterminateResponseType.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_10000413C(&qword_1000F0A08, &qword_1000B1CD8);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_10000413C(&qword_1000F0A10, &qword_1000B1CE0);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_10000413C(&qword_1000F0A18, &qword_1000B1CE8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_1000058D0(a1, a1[3]);
  sub_1000466F4();
  sub_1000AC91C();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_100046748();
    sub_1000AC72C();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_10004679C();
    sub_1000AC72C();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

Swift::Int BIADeterminateResponseType.hashValue.getter(char a1)
{
  sub_1000AC87C();
  sub_1000AC88C(a1 & 1);
  return sub_1000AC8CC();
}

uint64_t sub_10004478C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000467F0(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t BIADeterminateResponse.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BIADeterminateResponse.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t BIADeterminateResponse.subtitle.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_100044870()
{
  v1 = 25705;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x656C746974627573;
  }

  if (*v0)
  {
    v1 = 1701869940;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000448D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100046CD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100044908(uint64_t a1)
{
  v2 = sub_100046C2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044944(uint64_t a1)
{
  v2 = sub_100046C2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BIADeterminateResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000413C(&qword_1000F0A38, &qword_1000B1CF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000058D0(a1, a1[3]);
  sub_100046C2C();
  sub_1000AC91C();
  v10[15] = 0;
  sub_1000AC74C();
  if (!v2)
  {
    v10[14] = *(v3 + 16);
    v10[13] = 1;
    sub_100046C80();
    sub_1000AC75C();
    v10[12] = 2;
    sub_1000AC74C();
    v10[11] = 3;
    sub_1000AC74C();
  }

  return (*(v6 + 8))(v8, v5);
}

double BIADeterminateResponse.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100046E2C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t BIALabeledUserAction.imageName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_100044BF0()
{
  v1 = 0x6D614E6567616D69;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_100044C48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000471E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100044C70(uint64_t a1)
{
  v2 = sub_10004712C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044CAC(uint64_t a1)
{
  v2 = sub_10004712C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BIALabeledUserAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000413C(&qword_1000F0A50, &qword_1000B1CF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7 - 8];
  sub_1000058D0(a1, a1[3]);
  sub_10004712C();
  sub_1000AC91C();
  LOBYTE(v15) = 0;
  sub_1000AC74C();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_1000AC74C();
    v10 = *(v3 + 48);
    v19[0] = *(v3 + 32);
    v19[1] = v10;
    v12 = *(v3 + 32);
    v11 = *(v3 + 48);
    v19[2] = *(v3 + 64);
    v20 = *(v3 + 80);
    v15 = v12;
    v16 = v11;
    v17 = *(v3 + 64);
    v18 = *(v3 + 80);
    v21 = 2;
    sub_1000470F4(v19, v14);
    sub_100043908();
    sub_1000AC75C();
    sub_100047180(v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v18);
  }

  return (*(v6 + 8))(v8, v5);
}

double BIALabeledUserAction.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100047300(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t BIABinaryChoiceRole.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7972616D697270;
  }

  if (a1 == 1)
  {
    return 0x7261646E6F636573;
  }

  return 0x7463757274736564;
}

uint64_t sub_100044FF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7261646E6F636573;
  v4 = 0xE900000000000079;
  if (v2 != 1)
  {
    v3 = 0x7463757274736564;
    v4 = 0xEB00000000657669;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7972616D697270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7261646E6F636573;
  v8 = 0xE900000000000079;
  if (*a2 != 1)
  {
    v7 = 0x7463757274736564;
    v8 = 0xEB00000000657669;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7972616D697270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000AC7AC();
  }

  return v11 & 1;
}

Swift::Int sub_100045110()
{
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_1000451C0(uint64_t a1)
{
  sub_1000AC11C();
}

Swift::Int sub_10004525C()
{
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

unint64_t sub_100045308@<X0>(Swift::String *a1@<X0>, Business::BIABinaryChoiceRole_optional *a2@<X8>)
{
  result = _s8Business19BIABinaryChoiceRoleO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_100045338(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000079;
  v5 = 0x7261646E6F636573;
  if (v2 != 1)
  {
    v5 = 0x7463757274736564;
    v4 = 0xEB00000000657669;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972616D697270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100045460()
{
  v1 = 1701605234;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1000454AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10004776C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000454D4(uint64_t a1)
{
  v2 = sub_1000476C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100045510(uint64_t a1)
{
  v2 = sub_1000476C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BIABinaryChoiceButton.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000413C(&qword_1000F0A60, &qword_1000B1D00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7 - 8];
  sub_1000058D0(a1, a1[3]);
  sub_1000476C4();
  sub_1000AC91C();
  LOBYTE(v14) = 0;
  sub_1000AC74C();
  if (!v2)
  {
    LOBYTE(v14) = *(v3 + 16);
    v13[0] = 1;
    sub_100047718();
    sub_1000AC75C();
    v9 = *(v3 + 40);
    v18[0] = *(v3 + 24);
    v18[1] = v9;
    v18[2] = *(v3 + 56);
    v19 = *(v3 + 72);
    v10 = *(v3 + 40);
    v14 = *(v3 + 24);
    v15 = v10;
    v16 = *(v3 + 56);
    v17 = *(v3 + 72);
    v20 = 2;
    sub_1000470F4(v18, v13);
    sub_100043908();
    sub_1000AC75C();
    sub_100047180(v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17);
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 BIABinaryChoiceButton.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10004787C(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1000457C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000AC7AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C676E6973 && a2 == 0xE600000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x68437972616E6962 && a2 == 0xEC0000006563696FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000AC7AC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_10004592C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v56 = a2;
  v53 = sub_10000413C(&qword_1000F0C20, &qword_1000B3308);
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v58 = &v48 - v3;
  v50 = sub_10000413C(&qword_1000F0C28, &qword_1000B3310);
  v54 = *(v50 - 8);
  __chkstk_darwin(v50);
  v57 = &v48 - v4;
  v5 = sub_10000413C(&qword_1000F0C30, &qword_1000B3318);
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  v8 = sub_10000413C(&qword_1000F0C38, &qword_1000B3320);
  v49 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v48 - v9;
  v11 = sub_10000413C(&qword_1000F0C40, &qword_1000B3328);
  v59 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  v14 = a1[3];
  v61 = a1;
  sub_1000058D0(a1, v14);
  sub_1000436E4();
  v15 = v60;
  sub_1000AC90C();
  if (v15)
  {
    goto LABEL_10;
  }

  v60 = 0;
  v48 = v8;
  v17 = v57;
  v16 = v58;
  v18 = sub_1000AC71C();
  v19 = v18;
  v20 = *(v18 + 16);
  if (!v20 || ((v21 = *(v18 + 32), v20 == 1) ? (v22 = v21 == 4) : (v22 = 1), v22))
  {
    v23 = sub_1000AC5DC();
    swift_allocError();
    v25 = v24;
    sub_10000413C(&qword_1000EFD48, &qword_1000B0BA0);
    *v25 = &type metadata for BIAUserInteractionParadigm;
    sub_1000AC6CC();
    sub_1000AC5CC();
    (*(*(v23 - 8) + 104))(v25, enum case for DecodingError.typeMismatch(_:), v23);
    swift_willThrow();
    (*(v59 + 8))(v13, v11);
LABEL_9:
    swift_unknownObjectRelease();
LABEL_10:
    sub_10000E738(v61);
    return result;
  }

  if (*(v18 + 32) > 1u)
  {
    if (v21 == 2)
    {
      LOBYTE(v72) = 2;
      sub_10004380C();
      v28 = v60;
      sub_1000AC6BC();
      v29 = v56;
      if (!v28)
      {
        v60 = v19;
        LOBYTE(v72) = 0;
        v30 = v17;
        v31 = v50;
        v32 = sub_1000AC6FC();
        v41 = v40;
        v58 = v32;
        sub_10000413C(&qword_1000F09A0, &qword_1000B1CB8);
        LOBYTE(v92) = 1;
        sub_1000491D8(&qword_1000F0C50, sub_100049250, &protocol conformance descriptor for <A> [A]);
        sub_1000AC70C();
        (*(v54 + 8))(v30, v31);
        (*(v59 + 8))(v13, v11);
        swift_unknownObjectRelease();
        *&v72 = v58;
        *(&v72 + 1) = v41;
        *&v73 = v62;
        sub_1000492A4(&v72);
LABEL_24:
        v103 = v78;
        v104 = v79;
        v105 = v80;
        v106 = v81;
        v99 = v74;
        v100 = v75;
        v101 = v76;
        v102 = v77;
        v97 = v72;
        v98 = v73;
        goto LABEL_25;
      }
    }

    else
    {
      LOBYTE(v72) = 3;
      sub_100043754();
      v36 = v16;
      v37 = v60;
      sub_1000AC6BC();
      v29 = v56;
      if (!v37)
      {
        v60 = v19;
        v108 = 0;
        v38 = sub_100049164();
        v39 = v53;
        v57 = v38;
        sub_1000AC70C();
        v89 = v94;
        v90 = v95;
        v91 = v96;
        v87 = v92;
        v88 = v93;
        v107 = 1;
        sub_1000AC70C();
        v42 = (v59 + 8);
        (*(v55 + 8))(v36, v39);
        (*v42)(v13, v11);
        swift_unknownObjectRelease();
        v68 = v83;
        v69 = v84;
        v70 = v85;
        v71 = v86;
        v64 = v89;
        v65 = v90;
        v66 = v91;
        v67 = v82;
        v62 = v87;
        v63 = v88;
        v72 = v87;
        v73 = v88;
        v76 = v91;
        v77 = v82;
        v74 = v89;
        v75 = v90;
        v80 = v85;
        v81 = v86;
        v78 = v83;
        v79 = v84;
        sub_1000491B8(&v72);
        goto LABEL_24;
      }
    }

LABEL_21:
    (*(v59 + 8))(v13, v11);
    goto LABEL_9;
  }

  if (*(v18 + 32))
  {
    LOBYTE(v72) = 1;
    sub_1000438B4();
    v33 = v60;
    sub_1000AC6BC();
    if (!v33)
    {
      sub_100048F98();
      v34 = v52;
      sub_1000AC70C();
      v35 = v59;
      (*(v51 + 8))(v7, v34);
      (*(v35 + 8))(v13, v11);
      swift_unknownObjectRelease();
      v72 = v62;
      v73 = v63;
      v74 = v64;
      *&v75 = v65;
      sub_1000492C4(&v72);
      v103 = v78;
      v104 = v79;
      v105 = v80;
      v106 = v81;
      v99 = v74;
      v100 = v75;
      v101 = v76;
      v102 = v77;
      v97 = v72;
      v98 = v73;
      v29 = v56;
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  LOBYTE(v72) = 0;
  sub_10004395C();
  v27 = v60;
  sub_1000AC6BC();
  if (v27)
  {
    (*(v59 + 8))(v13, v11);
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  (*(v49 + 8))(v10, v48);
  (*(v59 + 8))(v13, v11);
  swift_unknownObjectRelease();
  sub_1000492E0(&v97);
  v29 = v56;
LABEL_25:
  sub_10000E738(v61);
  v43 = v104;
  v29[6] = v103;
  v29[7] = v43;
  v44 = v106;
  v29[8] = v105;
  v29[9] = v44;
  v45 = v100;
  v29[2] = v99;
  v29[3] = v45;
  v46 = v102;
  v29[4] = v101;
  v29[5] = v46;
  result = *&v97;
  v47 = v98;
  *v29 = v97;
  v29[1] = v47;
  return result;
}

uint64_t sub_10004636C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000413C(&qword_1000F0C10, &qword_1000B3300);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_1000058D0(a1, a1[3]);
  sub_1000465A4();
  sub_1000AC90C();
  if (v2)
  {
    return sub_10000E738(a1);
  }

  v31 = 1;
  sub_100049110();
  sub_1000AC6EC();
  v10 = v25;
  if (v25)
  {
    v11 = v28;
    v22 = v29;
    v23 = v27;
    v12 = v26;
    v21 = v24;
    v13 = v8;
    v14 = v30;
    (*(v6 + 8))(v13, v5);
    v15 = v11;
    v16 = v12 & 1 | 0x8000000000000000;
    v17 = v21;
    v18 = v22;
  }

  else
  {
    LOBYTE(v24) = 0;
    v17 = sub_1000AC6FC();
    v10 = v20;
    (*(v6 + 8))(v8, v5);
    v16 = 0;
    v23 = 0;
    v15 = 0;
    v18 = 0;
    v14 = 0;
  }

  result = sub_10000E738(a1);
  *a2 = v17;
  a2[1] = v10;
  v19 = v23;
  a2[2] = v16;
  a2[3] = v19;
  a2[4] = v15;
  a2[5] = v18;
  a2[6] = v14;
  return result;
}

unint64_t sub_1000465A4()
{
  result = qword_1000F09E8;
  if (!qword_1000F09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F09E8);
  }

  return result;
}

unint64_t sub_1000465F8()
{
  result = qword_1000F09F0;
  if (!qword_1000F09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F09F0);
  }

  return result;
}

unint64_t sub_10004664C()
{
  result = qword_1000F09F8;
  if (!qword_1000F09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F09F8);
  }

  return result;
}

unint64_t sub_1000466A0()
{
  result = qword_1000F0A00;
  if (!qword_1000F0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A00);
  }

  return result;
}

unint64_t sub_1000466F4()
{
  result = qword_1000F0A20;
  if (!qword_1000F0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A20);
  }

  return result;
}

unint64_t sub_100046748()
{
  result = qword_1000F0A28;
  if (!qword_1000F0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A28);
  }

  return result;
}

unint64_t sub_10004679C()
{
  result = qword_1000F0A30;
  if (!qword_1000F0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A30);
  }

  return result;
}

uint64_t sub_1000467F0(void *a1)
{
  v24 = sub_10000413C(&qword_1000F0BF8, &qword_1000B32E0);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_10000413C(&qword_1000F0C00, &qword_1000B32E8);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_10000413C(&qword_1000F0C08, &unk_1000B32F0);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_1000058D0(a1, a1[3]);
  sub_1000466F4();
  v10 = v26;
  sub_1000AC90C();
  if (v10)
  {
    return sub_10000E738(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_1000AC71C();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_1000AC5DC();
    swift_allocError();
    v18 = v17;
    sub_10000413C(&qword_1000EFD48, &qword_1000B0BA0);
    *v18 = &type metadata for BIADeterminateResponseType;
    sub_1000AC6CC();
    sub_1000AC5CC();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_10000E738(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_100046748();
    sub_1000AC6BC();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_10004679C();
    sub_1000AC6BC();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_10000E738(v26);
  return v27;
}

unint64_t sub_100046C2C()
{
  result = qword_1000F0A40;
  if (!qword_1000F0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A40);
  }

  return result;
}

unint64_t sub_100046C80()
{
  result = qword_1000F0A48;
  if (!qword_1000F0A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A48);
  }

  return result;
}

uint64_t sub_100046CD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1000AC7AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000AC7AC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100046E2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000413C(&qword_1000F0BE8, &qword_1000B32D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_1000058D0(a1, a1[3]);
  sub_100046C2C();
  sub_1000AC90C();
  if (v2)
  {
    return sub_10000E738(a1);
  }

  v28 = 0;
  v9 = sub_1000AC6FC();
  v11 = v10;
  v23 = v9;
  v26 = 1;
  sub_1000490BC();
  sub_1000AC70C();
  v12 = v27;
  v25 = 2;
  v13 = sub_1000AC6FC();
  HIDWORD(v20) = v12;
  v21 = v13;
  v22 = v14;
  v24 = 3;
  v15 = sub_1000AC6FC();
  v17 = v16;
  (*(v6 + 8))(v8, v5);

  v18 = v22;

  sub_10000E738(a1);

  *a2 = v23;
  *(a2 + 8) = v11;
  *(a2 + 16) = BYTE4(v20);
  *(a2 + 24) = v21;
  *(a2 + 32) = v18;
  *(a2 + 40) = v15;
  *(a2 + 48) = v17;
  return result;
}

unint64_t sub_10004712C()
{
  result = qword_1000F0A58;
  if (!qword_1000F0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A58);
  }

  return result;
}