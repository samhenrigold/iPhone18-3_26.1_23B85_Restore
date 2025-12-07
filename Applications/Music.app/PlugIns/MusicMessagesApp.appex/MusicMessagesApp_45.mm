void sub_1004531E4(uint64_t a1)
{
  v2 = [*(a1 + 32) token];
  [*(a1 + 32) fittingSize];
  v4 = v3;
  v6 = v5;
  [*(a1 + 32) destinationScale];
  v8 = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1004532E0;
  v10[3] = &unk_1005FDC78;
  v9 = *(a1 + 40);
  v11 = *(a1 + 32);
  v13 = v4;
  v14 = v6;
  v12 = *(a1 + 48);
  [v9 _monogramImageForToken:v2 fittingSize:v10 scale:v4 completionHandler:{v6, v8}];
}

void sub_1004532E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 visualIdenticalityIdentifier];
  v6 = [MPArtworkRepresentation representationForVisualIdentity:v5 withSize:v4 image:*(a1 + 48), *(a1 + 56)];

  (*(*(a1 + 40) + 16))();
}

id sub_1004537D0()
{
  result = sub_1004537F0();
  qword_100674240 = result;
  return result;
}

id sub_1004537F0()
{
  v0 = sub_1004D809C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(sub_100004CB8(&qword_100648D28, &unk_100537C40) - 8);
  __chkstk_darwin();
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v48 - v5;
  __chkstk_darwin();
  v8 = &v48 - v7;
  __chkstk_darwin();
  v55 = &v48 - v9;
  __chkstk_darwin();
  v11 = &v48 - v10;
  v54 = sub_100455434(_swiftEmptyArrayStorage);
  sub_100004CB8(&qword_100648D30, &qword_1005388B0);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v56 = *(v3 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100511A40;
  v58 = v12;
  v51 = v13;
  v14 = v13 + v12;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = [v16 resourceURL];

  if (v17)
  {
    sub_1004D802C();

    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 0;
  }

  else
  {
    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 1;
  }

  v57 = v18;
  v18(v19, v20, 1, v0);
  sub_100455164(v11, v14);
  type metadata accessor for BundleFinder();
  v21 = [v15 bundleForClass:swift_getObjCClassFromMetadata()];
  v22 = [v21 resourceURL];

  if (v22)
  {
    v23 = v55;
    sub_1004D802C();

    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v55;
  }

  v25 = (v1 + 56);
  v26 = v57;
  v57(v23, v24, 1, v0);
  v49 = v1;
  v27 = v56;
  sub_100455164(v23, v14 + v56);
  v28 = [v15 mainBundle];
  v29 = [v28 bundleURL];

  sub_1004D802C();
  v55 = v25;
  v26(v14 + 2 * v27, 0, 1, v0);
  v59 = v54;
  sub_10045FA18(v51);
  v30 = v59;
  v31 = v59[2];
  v32 = v53;
  if (v31)
  {
    v33 = 0;
    v34 = v58 + v59;
    v58 = (v49 + 6);
    v54 = (v49 + 1);
    v49 += 4;
    v50 = "F0E546A8DF70B34912BundleFinder";
    v51 = v31;
    while (v33 < v30[2])
    {
      sub_1004551D4(v34, v6);
      v35 = *v58;
      if ((*v58)(v6, 1, v0) == 1)
      {
        sub_100455244(v6);
        v36 = 1;
      }

      else
      {
        sub_1004D7FFC();
        (*v54)(v6, v0);
        v36 = 0;
      }

      v57(v8, v36, 1, v0);
      sub_1004551D4(v8, v32);
      if (v35(v32, 1, v0) == 1)
      {
        sub_100455244(v8);
      }

      else
      {
        v37 = v30;
        v38 = v8;
        v39 = v6;
        v40 = v52;
        (*v49)(v52, v32, v0);
        v41 = objc_allocWithZone(NSBundle);
        sub_1004D7FDC(v42);
        v44 = v43;
        v45 = [v41 initWithURL:v43];

        v32 = v53;
        v46 = v40;
        v6 = v39;
        v8 = v38;
        v30 = v37;
        v31 = v51;
        (*v54)(v46, v0);
        sub_100455244(v8);
        if (v45)
        {

          return v45;
        }
      }

      ++v33;
      v34 += v56;
      if (v31 == v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

uint64_t variable initialization expression of LyricsOptionsManager.observers()
{
  v0 = type metadata accessor for LyricsOptionsManager.Observer();

  return WeakArray.init(_:)(_swiftEmptyArrayStorage, v0);
}

void variable initialization expression of SyncedLyricsViewController.Specs.selectedLinePosition(uint64_t a1@<X8>)
{
  *a1 = 0x4028000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

unint64_t sub_100453F24()
{
  result = qword_10064AC60;
  if (!qword_10064AC60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10064AC60);
  }

  return result;
}

id sub_10045402C(double *a1, double a2)
{
  v2 = [objc_opt_self() systemFontOfSize:a2 weight:*a1];

  return v2;
}

id variable initialization expression of SyncedLyricsViewController.Specs.automaticallyCreatedDisclaimerFont()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];

  return v0;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedUpcomingTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.35];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.85];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100455430;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1003BB590;
  v12[3] = &unk_1005FE2D0;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.deselectedTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100455430;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1003BB590;
  v12[3] = &unk_1005FE320;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedBackgroundVocalsTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.35];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.85];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100455430;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1003BB590;
  v12[3] = &unk_1005FE370;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedUpcomingBackgroundVocalsTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.65];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100455430;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1003BB590;
  v12[3] = &unk_1005FE3C0;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.deselectedScrollTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.4];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100455430;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1003BB590;
  v12[3] = &unk_1005FE410;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id sub_1004549E4(SEL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  v9 = [v7 *a1];
  v10 = objc_allocWithZone(UIColor);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  v17[4] = a3;
  v17[5] = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1003BB590;
  v17[3] = a4;
  v12 = _Block_copy(v17);
  v13 = v9;
  v14 = v8;

  v15 = [v10 initWithDynamicProvider:v12];

  _Block_release(v12);
  return v15;
}

id variable initialization expression of SyncedLyricsViewController.Specs.lineProgressionBackgroundVocalsGradientColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 tintColor];
  v4 = [v3 colorWithAlphaComponent:0.175];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_100455430;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1003BB590;
  v12[3] = &unk_1005FE4B0;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

CGFloat sub_100454CCC@<D0>(_OWORD *a1@<X8>, CGFloat a2@<D0>)
{
  CGAffineTransformMakeScale(&v6, a2, a2);
  result = v6.a;
  v4 = *&v6.c;
  v5 = *&v6.tx;
  *a1 = *&v6.a;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

id variable initialization expression of SyncedLyricsViewController.Specs.highlightViewBackgroundColor()
{
  v0 = objc_allocWithZone(UIColor);

  return [v0 initWithWhite:1.0 alpha:0.08];
}

double variable initialization expression of SyncedLyricsViewController.Specs.lineChangeSpringTimingParametersValues()
{
  v0 = Int.seconds.getter(1);
  Int.seconds.getter(100);
  Int.seconds.getter(18);
  return v0;
}

uint64_t sub_100454DC8()
{

  return swift_deallocObject();
}

double sub_100454E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id variable initialization expression of SyncedLyricsViewController.tapFeedbackGenerator()
{
  v0 = objc_allocWithZone(UISelectionFeedbackGenerator);

  return [v0 init];
}

uint64_t sub_100454F08@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id sub_100454F94(void (*a1)(void))
{
  a1(0);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

uint64_t sub_100454FD8(uint64_t a1)
{
  sub_10045533C(&qword_10064AC70, &unk_100537DD0);
  sub_10045533C(&qword_100648D60, &unk_100537D24);

  return sub_1004DEE0C();
}

__n128 sub_100455094(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_1004550B8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_1004550D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100455164(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100648D28, &unk_100537C40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004551D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100648D28, &unk_100537C40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100455244(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100648D28, &unk_100537C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10045533C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s3__C3KeyVMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100455434(uint64_t a1)
{
  v2 = sub_1004D809C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100004CB8(&qword_100648D28, &unk_100537C40);
  v6 = *(v19 - 8);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_100463948(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_100463948((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_100455164(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void *sub_100455668(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_1004639A8(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_10046DD7C(v8, v5, type metadata accessor for Lyrics.TextLine);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_1004639A8((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &protocol witness table for Lyrics.TextLine;
      v12 = sub_1000357EC(&v14);
      sub_10046DD7C(v5, v12, type metadata accessor for Lyrics.TextLine);
      v7[2] = v11 + 1;
      sub_100035850(&v14, &v7[5 * v11 + 4]);
      sub_10046DDE4(v5, type metadata accessor for Lyrics.TextLine);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void TimedElement.timeRange.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  if (v4 > (*(a2 + 16))(a1, a2))
  {
    __break(1u);
  }
}

uint64_t sub_100455914()
{
  v0 = sub_10048F8C8(&off_1005FDDA8);
  result = swift_arrayDestroy();
  static Lyrics.chineseLanguages = v0;
  return result;
}

uint64_t *Lyrics.chineseLanguages.unsafeMutableAddressor()
{
  if (qword_100648B98 != -1)
  {
    swift_once();
  }

  return &static Lyrics.chineseLanguages;
}

uint64_t sub_100455A68()
{
  v0 = sub_100468AD8(&off_1005FDDE8);
  sub_100004CB8(&qword_100649548, &qword_100538A40);
  result = swift_arrayDestroy();
  static Lyrics.scriptMap = v0;
  return result;
}

uint64_t *Lyrics.scriptMap.unsafeMutableAddressor()
{
  if (qword_100648BA0 != -1)
  {
    swift_once();
  }

  return &static Lyrics.scriptMap;
}

double Lyrics.Word.startTime.getter()
{
  v1 = *(v0 + 32);
  if (*(v1 + 16))
  {
    return *(v1 + 32);
  }

  else
  {
    return 0.0;
  }
}

double Lyrics.Word.endTime.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v1 + 56 * v2 - 16);
  }

  else
  {
    return 0.0;
  }
}

double Lyrics.Word.Emphasis.factor.getter(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 0.0;
  }

  return result;
}

BOOL static Lyrics.Word.Emphasis.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return *&a1 == *&a3;
}

void Lyrics.Word.Emphasis.hash(into:)(uint64_t a1, Swift::UInt64 a2, char a3)
{
  if (a3)
  {
    sub_1004DF27C(0);
  }

  else
  {
    sub_1004DF27C(1uLL);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = 0;
    }

    sub_1004DF2AC(v4);
  }
}

Swift::Int Lyrics.Word.Emphasis.hashValue.getter(Swift::UInt64 a1, char a2)
{
  sub_1004DF26C();
  if (a2)
  {
    sub_1004DF27C(0);
  }

  else
  {
    sub_1004DF27C(1uLL);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    sub_1004DF2AC(v4);
  }

  return sub_1004DF2BC();
}

void sub_100455CA8()
{
  if (*(v0 + 8))
  {
    sub_1004DF27C(0);
  }

  else
  {
    v1 = *v0;
    sub_1004DF27C(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    sub_1004DF2AC(v2);
  }
}

Swift::Int sub_100455CF8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004DF26C();
  if (v2)
  {
    sub_1004DF27C(0);
  }

  else
  {
    sub_1004DF27C(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    sub_1004DF2AC(v3);
  }

  return sub_1004DF2BC();
}

BOOL sub_100455D64(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_100455DA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 80);
    for (i = a2 + 40; *(v3 - 6) == *(i - 8) && *(v3 - 5) == *i; i += 56)
    {
      v7 = *(v3 - 2);
      v6 = *(v3 - 1);
      v8 = *v3;
      v10 = *(i + 24);
      v9 = *(i + 32);
      v11 = *(i + 40);
      if (*(v3 - 4) == *(i + 8) && *(v3 - 3) == *(i + 16))
      {
        result = 0;
      }

      else
      {
        v13 = sub_1004DF08C();
        result = 0;
        if ((v13 & 1) == 0)
        {
          return result;
        }
      }

      if (v7 != v10 || v6 != v9 || *&v8 != v11)
      {
        return result;
      }

      v3 += 7;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void Lyrics.Word.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  sub_1004DF2AC(*&v4);
  v5 = *(v2 + 8);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_1004DF2AC(*&v5);
  sub_1004DD55C();
  sub_10046894C(a1, *(v2 + 32));
  if (*(v2 + 48))
  {
    sub_1004DF27C(0);
  }

  else
  {
    v6 = *(v2 + 40);
    sub_1004DF27C(1uLL);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    sub_1004DF2AC(v7);
  }
}

Swift::Int Lyrics.Word.hashValue.getter()
{
  sub_1004DF26C();
  Lyrics.Word.hash(into:)(v1);
  return sub_1004DF2BC();
}

Swift::Int sub_100455F78()
{
  sub_1004DF26C();
  Lyrics.Word.hash(into:)(v1);
  return sub_1004DF2BC();
}

uint64_t sub_100455FB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7LyricsX0A0C4WordV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

void Lyrics.Syllable.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1004DF2AC(*&v2);
  v3 = *(v1 + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_1004DF2AC(*&v3);
  sub_1004DD55C();
  v4 = *(v1 + 40);
  sub_1004DF27C(*(v1 + 32));
  sub_1004DF27C(v4);
  sub_1004DF27C(*(v1 + 48));
}

Swift::Int Lyrics.Syllable.hashValue.getter()
{
  sub_1004DF26C();
  Lyrics.Syllable.hash(into:)(v1);
  return sub_1004DF2BC();
}

Swift::Int sub_1004560E4()
{
  sub_1004DF26C();
  Lyrics.Syllable.hash(into:)(v1);
  return sub_1004DF2BC();
}

BOOL sub_100456120(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7LyricsX0A0C8SyllableV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

double Lyrics.TextLine.backgroundVocals.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for Lyrics.TextLine(0);
  (*(v1 + *(v3 + 72)))(v7);
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

uint64_t Lyrics.TextLine.backgroundText.getter()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  (*(v0 + *(v1 + 72)))(v4);
  if (!v4[3])
  {
    return 0;
  }

  v2 = v4[2];

  sub_10001074C(v4, &qword_100648D80, &qword_100537EA0);
  return v2;
}

double Lyrics.TextLine.capabilities.getter()
{
  type metadata accessor for Lyrics.TextLine(0);

  return result;
}

uint64_t Lyrics.TextLine.translationKey.getter()
{
  v1 = *(v0 + *(type metadata accessor for Lyrics.TextLine(0) + 52));

  return v1;
}

uint64_t Lyrics.TextLine.debugDescription.getter()
{
  sub_1004DEAAC(54);
  v3._object = 0x80000001004FABC0;
  v3._countAndFlagsBits = 0xD000000000000014;
  sub_1004DD5FC(v3);
  v4._countAndFlagsBits = sub_1004DEFFC();
  sub_1004DD5FC(v4);

  v5._countAndFlagsBits = 0x6954747261747320;
  v5._object = 0xEB000000003D656DLL;
  sub_1004DD5FC(v5);
  sub_1004DDBAC();
  v6._countAndFlagsBits = 0x656D6954646E6520;
  v6._object = 0xE90000000000003DLL;
  sub_1004DD5FC(v6);
  sub_1004DDBAC();
  v7._countAndFlagsBits = 0x3D7478657420;
  v7._object = 0xE600000000000000;
  sub_1004DD5FC(v7);
  v1 = type metadata accessor for Lyrics.TextLine(0);
  v8._countAndFlagsBits = (*(v0 + *(v1 + 64)))();
  sub_1004DD5FC(v8);

  return 0;
}

uint64_t Lyrics.TextLine.textAlignment.getter()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  if ((*(v0 + *(v1 + 56)))())
  {
    if ((*(v0 + *(v1 + 32)) & 1) == 0)
    {
      return 2;
    }
  }

  else if (*(v0 + *(v1 + 32)))
  {
    return 2;
  }

  return 0;
}

uint64_t Lyrics.TextLine.init(lineIndex:startTime:endTime:primaryVocalsStartTime:primaryVocalsEndTime:isFirstLineOfParagraph:language:translationKey:agentAlignment:capabilities:localizedLyricsDirectionProvider:localizedDirectionProvider:localizedTextProvider:localizedWordsProvider:localizedBackgroundVocalsProvider:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v31 = type metadata accessor for Lyrics.TextLine(0);
  v32 = v31[7];
  v33 = sub_1004D83DC();
  (*(*(v33 - 8) + 56))(a9 + v32, 1, 1, v33);
  *(a9 + 16) = a1;
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + v31[10]) = a12;
  *(a9 + v31[11]) = a13;
  *(a9 + v31[12]) = a2;
  result = sub_1000107AC(a3, a9 + v32, &qword_100648D88, &qword_100537EA8);
  v35 = (a9 + v31[13]);
  *v35 = a4;
  v35[1] = a5;
  *(a9 + v31[8]) = a6 & 1;
  *(a9 + v31[9]) = a7;
  v36 = (a9 + v31[14]);
  *v36 = a8;
  v36[1] = a14;
  v37 = (a9 + v31[15]);
  *v37 = a15;
  v37[1] = a16;
  v38 = (a9 + v31[16]);
  *v38 = a17;
  v38[1] = a18;
  v39 = (a9 + v31[17]);
  *v39 = a19;
  v39[1] = a20;
  v40 = (a9 + v31[18]);
  *v40 = a21;
  v40[1] = a22;
  return result;
}

double Lyrics.TextLine.hash(into:)(uint64_t a1)
{
  sub_1004DF27C(*(v1 + 16));
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1004DF2AC(*&v2);
  v3 = *(v1 + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_1004DF2AC(*&v3);
  v4 = type metadata accessor for Lyrics.TextLine(0);
  (*(v1 + *(v4 + 64)))();
  sub_1004DD55C();

  return result;
}

Swift::Int Lyrics.TextLine.hashValue.getter()
{
  sub_1004DF26C();
  Lyrics.TextLine.hash(into:)(v1);
  return sub_1004DF2BC();
}

uint64_t sub_1004569BC(uint64_t a1)
{
  if ((*(v1 + *(a1 + 56)))())
  {
    if (*(v1 + *(a1 + 32)))
    {
      return 0;
    }
  }

  else if ((*(v1 + *(a1 + 32)) & 1) == 0)
  {
    return 0;
  }

  return 2;
}

Swift::Int sub_100456A50()
{
  sub_1004DF26C();
  Lyrics.TextLine.hash(into:)(v1);
  return sub_1004DF2BC();
}

uint64_t Lyrics.InstrumentalLine.textAlignment.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t Lyrics.InstrumentalLine.debugDescription.getter(double a1, double a2)
{
  sub_1004DEAAC(54);
  v3._object = 0x80000001004FABE0;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  sub_1004DD5FC(v3);
  v4._countAndFlagsBits = sub_1004DEFFC();
  sub_1004DD5FC(v4);

  v5._countAndFlagsBits = 0x6954747261747320;
  v5._object = 0xEB000000003D656DLL;
  sub_1004DD5FC(v5);
  sub_1004DDBAC();
  v6._countAndFlagsBits = 0x656D6954646E6520;
  v6._object = 0xE90000000000003DLL;
  sub_1004DD5FC(v6);
  sub_1004DDBAC();
  return 0;
}

uint64_t Lyrics.SongwritersLine.textAlignment.getter()
{
  if (*(v0 + 24))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t Lyrics.SongwritersLine.debugDescription.getter()
{
  sub_1004DEAAC(68);
  v1._object = 0x80000001004FAC00;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1004DD5FC(v1);
  v2._countAndFlagsBits = sub_1004DEFFC();
  sub_1004DD5FC(v2);

  v3._countAndFlagsBits = 0x6954747261747320;
  v3._object = 0xEB000000003D656DLL;
  sub_1004DD5FC(v3);
  sub_1004DDBAC();
  v4._countAndFlagsBits = 0x656D6954646E6520;
  v4._object = 0xE90000000000003DLL;
  sub_1004DD5FC(v4);
  sub_1004DDBAC();
  v5._countAndFlagsBits = 0x697277676E6F7320;
  v5._object = 0xED00003D73726574;
  sub_1004DD5FC(v5);
  v6._countAndFlagsBits = sub_1004DD88C();
  sub_1004DD5FC(v6);

  return 0;
}

double sub_100456DC0@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v5 = (a1 + *(type metadata accessor for Lyrics.TextLine(0) + 52));
  v6 = v5[1];
  if (v6 && (v7 = *v5, v8 = *(v2 + *(type metadata accessor for Lyrics.Translation(0) + 32)), *(v8 + 16)) && (v9 = sub_100028F80(v7, v6), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + 88 * v9);
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[6];
    if (v14)
    {
      v15 = v11[5];
    }

    else
    {
      v15 = 0;
    }

    v19 = type metadata accessor for Lyrics.Translation.Line(0);
    v20 = *(v19 + 24);
    v21 = sub_1004D83DC();
    (*(*(v21 - 8) + 16))(&a2[v20], v3, v21);
    *a2 = v13;
    *(a2 + 1) = v12;
    *(a2 + 2) = v15;
    *(a2 + 3) = v14;
    (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
  }

  else
  {
    v16 = type metadata accessor for Lyrics.Translation.Line(0);
    v17 = *(*(v16 - 8) + 56);

    v17(a2, 1, 1, v16);
  }

  return result;
}

uint64_t _s7LyricsX0A0C11TranslationV8language10Foundation6LocaleV8LanguageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004D83DC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100456FF4(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t sub_100457060@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Lyrics.Transliteration(0);
  v93 = *(v6 - 8);
  v7 = *(v93 + 64);
  __chkstk_darwin();
  v94 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100648D88, &qword_100537EA8);
  __chkstk_darwin();
  v9 = &v80 - v8;
  v10 = type metadata accessor for Lyrics.TextLine(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin();
  v13 = __chkstk_darwin();
  v15 = &v80 - v14;
  v17 = (a1 + *(v16 + 52));
  v18 = v17[1];
  if (v18)
  {
    v19 = *(v3 + *(v6 + 28));
    if (*(v19 + 16))
    {
      v90 = *v17;
      v92 = v12;
      v89 = v18;
      v20 = sub_100028F80(v90, v18);
      v12 = v92;
      if (v21)
      {
        v80 = v3;
        v91 = v9;
        v22 = *(v19 + 56) + 88 * v20;
        v24 = *(v22 + 32);
        v23 = *(v22 + 48);
        v25 = *(v22 + 64);
        v101 = *(v22 + 80);
        v100 = v25;
        v26 = *(v22 + 16);
        v96 = *v22;
        v97 = v26;
        v98 = v24;
        v99 = v23;
        v27 = *(a1 + v10[17]);
        v28 = sub_10046F9B4(&v96, v95);
        v29 = v27(v28);
        v30 = *(v29 + 16);
        v83 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v30)
        {
          v31 = *(v29 + 32);

          v32 = v91;
          if (!*(v97 + 16) || v31 != *(v97 + 32))
          {
            goto LABEL_12;
          }
        }

        else
        {

          v32 = v91;
          if (*(v97 + 16))
          {
LABEL_12:
            if (qword_100648BC0 != -1)
            {
              swift_once();
            }

            v35 = sub_1004D966C();
            sub_100035430(v35, static Logger.lyrics);
            sub_10046DD7C(a1, v15, type metadata accessor for Lyrics.TextLine);
            v36 = sub_1004D964C();
            v37 = sub_1004DDF7C();
            if (os_log_type_enabled(v36, v37))
            {
              LODWORD(v88) = v37;
              v38 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v95[0] = v87;
              v39 = v38;
              *v38 = 136446210;
              v40 = &v15[v10[13]];
              v41 = v40[1];
              if (v41)
              {
                v86 = *v40;
                v42 = v41;
              }

              else
              {
                v42 = 0xE300000000000000;
                v86 = 7104878;
              }

              sub_10046DDE4(v15, type metadata accessor for Lyrics.TextLine);
              v43 = sub_1004633D0(v86, v42, v95);

              *(v39 + 1) = v43;
              _os_log_impl(&_mh_execute_header, v36, v88, "DEGENERATE TRANSLITERATION DATA start time of original line %{public}s and transliterated line do not match.", v39, 0xCu);
              sub_100008D24(v87);
            }

            else
            {

              sub_10046DDE4(v15, type metadata accessor for Lyrics.TextLine);
            }
          }
        }

        v88 = a1[2];
        v44 = *(a1 + v10[10]);
        v45 = *a1;
        v46 = a1[1];
        v47 = *(a1 + v10[11]);
        LODWORD(v86) = *(a1 + v10[12]);
        v48 = sub_1004D83DC();
        v49 = *(v48 - 8);
        v50 = *(v49 + 16);
        v51 = v80;
        v81 = v48;
        v50(v32, v80, v48);
        v82 = *(v49 + 56);
        v82(v32, 0, 1, v48);
        v52 = v10[9];
        LODWORD(v87) = *(a1 + v10[8]);
        v85 = *(a1 + v52);
        v53 = v83;
        sub_10046DD7C(a1, v83, type metadata accessor for Lyrics.TextLine);
        v54 = (*(v92 + 80) + 16) & ~*(v92 + 80);
        v84 = swift_allocObject();
        sub_10046E230(v53, v84 + v54, type metadata accessor for Lyrics.TextLine);
        v55 = v94;
        sub_10046DD7C(v51, v94, type metadata accessor for Lyrics.Transliteration);
        v56 = (*(v93 + 80) + 16) & ~*(v93 + 80);
        v57 = swift_allocObject();
        sub_10046E230(v55, v57 + v56, type metadata accessor for Lyrics.Transliteration);
        v58 = swift_allocObject();
        v59 = v99;
        v60 = v100;
        *(v58 + 48) = v98;
        *(v58 + 64) = v59;
        *(v58 + 80) = v60;
        *(v58 + 96) = v101;
        v61 = v97;
        *(v58 + 16) = v96;
        *(v58 + 32) = v61;
        v62 = swift_allocObject();
        v63 = v99;
        v64 = v100;
        *(v62 + 48) = v98;
        *(v62 + 64) = v63;
        *(v62 + 80) = v64;
        *(v62 + 96) = v101;
        v65 = v97;
        *(v62 + 16) = v96;
        *(v62 + 32) = v65;
        v66 = swift_allocObject();
        v67 = v99;
        v68 = v100;
        *(v66 + 48) = v98;
        *(v66 + 64) = v67;
        *(v66 + 80) = v68;
        *(v66 + 96) = v101;
        v69 = v97;
        *(v66 + 16) = v96;
        *(v66 + 32) = v69;
        v70 = v10[7];
        v82(a2 + v70, 1, 1, v81);
        a2[2] = v88;
        *a2 = v45;
        a2[1] = v46;
        *(a2 + v10[10]) = v44;
        *(a2 + v10[11]) = v47;
        *(a2 + v10[12]) = v86;
        sub_10046F9B4(&v96, v95);
        sub_10046F9B4(&v96, v95);
        v71 = v89;

        v72 = v85;

        sub_1000107AC(v91, a2 + v70, &qword_100648D88, &qword_100537EA8);
        v73 = (a2 + v10[13]);
        *v73 = v90;
        v73[1] = v71;
        *(a2 + v10[8]) = v87;
        *(a2 + v10[9]) = v72;
        v74 = (a2 + v10[14]);
        v75 = v84;
        *v74 = sub_10046FB84;
        v74[1] = v75;
        v76 = (a2 + v10[15]);
        *v76 = sub_10046FCEC;
        v76[1] = v57;
        v77 = (a2 + v10[16]);
        *v77 = Alert.message.getter;
        v77[1] = v58;
        v78 = (a2 + v10[17]);
        *v78 = Library.Menu.Request.excludedIdentifiers.getter;
        v78[1] = v62;
        v79 = (a2 + v10[18]);
        *v79 = sub_10046FDA8;
        v79[1] = v66;
        return (*(v92 + 56))(a2, 0, 1, v10);
      }
    }
  }

  v33 = *(v12 + 56);

  return v33(a2, 1, 1, v10, v13);
}

uint64_t Logger.lyrics.unsafeMutableAddressor()
{
  if (qword_100648BC0 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();

  return sub_100035430(v0, static Logger.lyrics);
}

uint64_t static Lyrics.useSpacesAsWordDelimiter(for:)(uint64_t a1)
{
  v2 = sub_1004D83DC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100648D88, &qword_100537EA8);
  __chkstk_darwin();
  v7 = &v28 - v6;
  sub_100004CB8(&qword_100648D90, &unk_100537EB0);
  __chkstk_darwin();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v28 - v10;
  sub_1000108DC(a1, v7, &qword_100648D88, &qword_100537EA8);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v12 = &qword_100648D88;
    v13 = &qword_100537EA8;
    v14 = v7;
LABEL_7:
    sub_10001074C(v14, v12, v13);
    v22 = 1;
    return v22 & 1;
  }

  sub_1004D83AC();
  v15 = *(v3 + 8);
  v15(v7, v2);
  v16 = sub_1004D82FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v11, 1, v16) == 1)
  {
    v12 = &qword_100648D90;
    v13 = &unk_100537EB0;
    v14 = v11;
    goto LABEL_7;
  }

  v29 = v15;
  sub_1004D82DC();
  v28 = v19;
  v20 = v11;
  v21 = *(v17 + 8);
  v21(v20, v16);
  sub_1004D839C();
  sub_1004D83AC();
  v29(v5, v2);
  if (v18(v9, 1, v16) == 1)
  {
    v12 = &qword_100648D90;
    v13 = &unk_100537EB0;
    v14 = v9;
    goto LABEL_7;
  }

  v24 = sub_1004D82DC();
  v26 = v25;
  v21(v9, v16);
  if (qword_100648BA8 != -1)
  {
    swift_once();
  }

  v27 = sub_1001206A4(v24, v26, qword_100674258);

  v22 = v27 ^ 1;
  return v22 & 1;
}

uint64_t Lyrics.currentLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v2 = type metadata accessor for Lyrics.Translation(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_10064A830, &qword_100539D50);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = sub_1004D83DC();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000108DC(v1 + v12, v7, &qword_10064A830, &qword_100539D50);
  if ((*(v3 + 48))(v7, 1, v2))
  {
    sub_10001074C(v7, &qword_10064A830, &qword_100539D50);
    return sub_1000108DC(v1 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, v15, &qword_100648D88, &qword_100537EA8);
  }

  else
  {
    sub_10046DD7C(v7, v5, type metadata accessor for Lyrics.Translation);
    sub_10001074C(v7, &qword_10064A830, &qword_100539D50);
    (*(v9 + 16))(v11, v5, v8);
    sub_10046DDE4(v5, type metadata accessor for Lyrics.Translation);
    v14 = v15;
    (*(v9 + 32))(v15, v11, v8);
    return (*(v9 + 56))(v14, 0, 1, v8);
  }
}

uint64_t sub_100458138@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1000108DC(v4 + v8, a4, a2, a3);
}

uint64_t sub_1004581C0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_1000107AC(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t Lyrics.staticText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  if (*(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_100458440(v0);
    v2 = v3;
    *v1 = v3;
    v1[1] = v4;
  }

  return v2;
}

void sub_100458440(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 32);
  v35 = 0;
  v36 = 0xE000000000000000;
  v28 = *(v5 + 16);
  if (v28)
  {
    v6 = 0;
    v27 = v5 + 32;
    v24 = v5;
    while (v6 < *(v5 + 16))
    {
      v9 = *(v27 + 8 * v6);
      v7 = v35;
      v8 = v36;
      v33 = v35;
      v34 = v36;
      v10 = *(v9 + 16);
      if (v10)
      {
        v29 = v9;
        v30 = v6;
        v11 = &v4[*(v26 + 64)];
        v12 = &v4[*(v26 + 72)];
        v13 = v9 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
        v31 = *(v25 + 72);

        do
        {
          v17 = sub_10046DD7C(v13, v4, type metadata accessor for Lyrics.TextLine);
          v18 = v33 & 0xFFFFFFFFFFFFLL;
          if ((v34 & 0x2000000000000000) != 0)
          {
            v18 = HIBYTE(v34) & 0xF;
          }

          if (v18)
          {
            v43._countAndFlagsBits = 10;
            v43._object = 0xE100000000000000;
            sub_1004DD5FC(v43);
          }

          v19 = (*v11)(v17);
          v21 = v20;
          (*v12)(v37);
          v22 = v38;
          if (v38)
          {
            v14 = v37[2];

            sub_10001074C(v37, &qword_100648D80, &qword_100537EA0);
            v32._countAndFlagsBits = 40;
            v32._object = 0xE100000000000000;

            v40._countAndFlagsBits = v14;
            v40._object = v22;
            sub_1004DD5FC(v40);
            v41._countAndFlagsBits = 41;
            v41._object = 0xE100000000000000;
            sub_1004DD5FC(v41);
            swift_bridgeObjectRelease_n();
            countAndFlagsBits = v32._countAndFlagsBits;
            object = v32._object;
          }

          else
          {
            countAndFlagsBits = 0;
            object = 0xE000000000000000;
          }

          v32._countAndFlagsBits = v19;
          v32._object = v21;

          v42._countAndFlagsBits = countAndFlagsBits;
          v42._object = object;
          sub_1004DD5FC(v42);

          sub_1004DD5FC(v32);

          sub_10046DDE4(v4, type metadata accessor for Lyrics.TextLine);
          v13 += v31;
          --v10;
        }

        while (v10);
        v7 = v33;
        v8 = v34;
        v5 = v24;
        v6 = v30;
      }

      else
      {
      }

      ++v6;
      v35 = v7;
      v36 = v8;
      v39._countAndFlagsBits = 10;
      v39._object = 0xE100000000000000;
      sub_1004DD5FC(v39);

      if (v6 == v28)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    String.trim()();
  }
}

double Lyrics.staticText.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v3 = a1;
  v3[1] = a2;

  return result;
}

uint64_t (*Lyrics.staticText.modify(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = Lyrics.staticText.getter();
  a1[1] = v3;
  return sub_1004587C0;
}

double sub_1004587C0(void *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v2 = *a1;
  v2[1] = v1;

  return result;
}

uint64_t Lyrics.alignment(for:default:)(void *a1, uint64_t a2, char a3)
{
  if (!*(v3 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) && (a3 & 1) == 0)
  {
    return a2;
  }

  v4 = a1[3];
  v5 = a1[4];
  sub_100008C70(a1, v4);
  return (*(v5 + 24))(v4, v5);
}

uint64_t sub_100458898(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v4 = type metadata accessor for Lyrics.TextLine(0);
    v5 = (*(a1 + *(v4 + 64)))();
    v7 = v6;
    if (v5 == (*(a2 + *(v4 + 64)))() && v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_1004DF08C();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_100458980@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Lyrics.TextLine(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_10046DD7C(v12, v10, type metadata accessor for Lyrics.TextLine);
      v14 = a1(v10);
      if (v3)
      {
        return sub_10046DDE4(v10, type metadata accessor for Lyrics.TextLine);
      }

      if (v14)
      {
        break;
      }

      sub_10046DDE4(v10, type metadata accessor for Lyrics.TextLine);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_10046E230(v10, v18, type metadata accessor for Lyrics.TextLine);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_100458B5C()
{
  v0 = sub_10048F8C8(&off_1005FDE98);
  result = swift_arrayDestroy();
  qword_100674258 = v0;
  return result;
}

void Lyrics.AudioAttribute.hash(into:)(double a1)
{
  sub_1004DF27C(0);
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  sub_1004DF2AC(*&v2);
}

Swift::Int Lyrics.AudioAttribute.hashValue.getter(double a1)
{
  sub_1004DF26C();
  sub_1004DF27C(0);
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  sub_1004DF2AC(*&v2);
  return sub_1004DF2BC();
}

Swift::Int sub_100458C74()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_1004DF2AC(*&v2);
  return sub_1004DF2BC();
}

void sub_100458CDC()
{
  v1 = *v0;
  sub_1004DF27C(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_1004DF2AC(*&v2);
}

Swift::Int sub_100458D28()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_1004DF2AC(*&v2);
  return sub_1004DF2BC();
}

double Lyrics.spatialOffset.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
  if (v4)
  {
    v5 = __clz(__rbit64(v4));
    return *(*(v1 + 48) + 8 * v5);
  }

  else
  {
    v6 = ((v2 + 63) >> 6) - 1;
    v7 = (v1 + 64);
    while (v6)
    {
      v9 = *v7++;
      v8 = v9;
      --v6;
      v4 -= 64;
      if (v9)
      {
        v5 = __clz(__rbit64(v8)) - v4;
        return *(*(v1 + 48) + 8 * v5);
      }
    }

    return 0.0;
  }
}

uint64_t Lyrics.__allocating_init(identifier:songInfo:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  Lyrics.init(identifier:songInfo:)(a1, a2, a3);
  return v6;
}

void *Lyrics.init(identifier:songInfo:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v686 = a3;
  v636 = a2;
  v633 = a1;
  v680 = *v3;
  sub_100004CB8(&qword_100648DA8, &qword_100537EC8);
  __chkstk_darwin();
  v611 = v605 - v5;
  sub_100004CB8(&qword_100648D90, &unk_100537EB0);
  __chkstk_darwin();
  v628 = v605 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v613 = v605 - v7;
  __chkstk_darwin();
  v615 = v605 - v8;
  v632 = sub_100004CB8(&qword_100648DB0, &qword_100537ED0);
  __chkstk_darwin();
  v631 = v605 - v9;
  sub_100004CB8(&qword_100648DB8, &qword_100537ED8);
  __chkstk_darwin();
  v618 = v605 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v637 = v605 - v11;
  __chkstk_darwin();
  v644 = v605 - v12;
  sub_100004CB8(&qword_100648D98, &qword_100537EC0);
  __chkstk_darwin();
  v627 = v605 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v626 = v605 - v14;
  __chkstk_darwin();
  v642 = v605 - v15;
  __chkstk_darwin();
  v661 = v605 - v16;
  __chkstk_darwin();
  v670 = v605 - v17;
  sub_100004CB8(&qword_10064A830, &qword_100539D50);
  __chkstk_darwin();
  v623 = v605 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v622 = v605 - v19;
  __chkstk_darwin();
  v621 = v605 - v20;
  v700 = type metadata accessor for Lyrics.TextLine(0);
  v689 = *(v700 - 8);
  __chkstk_darwin();
  v692 = v605 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v691 = v605 - v22;
  __chkstk_darwin();
  v704 = (v605 - v23);
  __chkstk_darwin();
  v679 = v605 - v24;
  __chkstk_darwin();
  v672 = v605 - v25;
  v26 = type metadata accessor for Lyrics.Transliteration(0);
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v662 = v605 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v635 = (v605 - v29);
  __chkstk_darwin();
  v688 = v605 - v30;
  __chkstk_darwin();
  v687 = v605 - v31;
  v32 = type metadata accessor for Lyrics.Translation(0);
  v33 = *(v32 - 8);
  __chkstk_darwin();
  v638 = v605 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v652 = v605 - v35;
  __chkstk_darwin();
  v639 = (v605 - v36);
  __chkstk_darwin();
  v690 = v605 - v37;
  __chkstk_darwin();
  v694 = v605 - v38;
  sub_100004CB8(&qword_100648DC0, &qword_100537EE0);
  __chkstk_darwin();
  v630 = v605 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v609 = v605 - v40;
  __chkstk_darwin();
  v651 = v605 - v41;
  __chkstk_darwin();
  v663 = v605 - v42;
  __chkstk_darwin();
  v685 = v605 - v43;
  v701 = sub_1004D83FC();
  v697 = *(v701 - 8);
  __chkstk_darwin();
  v614 = v605 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v654 = v605 - v45;
  __chkstk_darwin();
  v703 = v605 - v46;
  __chkstk_darwin();
  v693 = (v605 - v47);
  v705 = sub_1004D83DC();
  v640 = *(v705 - 8);
  __chkstk_darwin();
  v625 = v605 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v608 = v605 - v49;
  __chkstk_darwin();
  v612 = v605 - v50;
  __chkstk_darwin();
  v669 = v605 - v51;
  __chkstk_darwin();
  v668 = v605 - v52;
  __chkstk_darwin();
  v698 = v605 - v53;
  __chkstk_darwin();
  v653 = v605 - v54;
  __chkstk_darwin();
  v699 = v605 - v55;
  __chkstk_darwin();
  v682 = v605 - v56;
  __chkstk_darwin();
  v643 = v605 - v57;
  __chkstk_darwin();
  v681 = v605 - v58;
  __chkstk_darwin();
  v684 = v605 - v59;
  sub_100004CB8(&qword_100648D88, &qword_100537EA8);
  __chkstk_darwin();
  v61 = v605 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin();
  v64 = v605 - v63;
  v666 = v33;
  v65 = *(v33 + 56);
  v634 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  v65(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation, 1, 1, v32, v62);
  v667 = v27;
  v66 = *(v27 + 56);
  v607 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  v66(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration, 1, 1, v26);
  v659 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation;
  v67 = v32;
  v68 = v705;
  v664 = v67;
  v619 = v65;
  v620 = v33 + 56;
  (v65)(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation, 1, 1);
  v610 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
  v66(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration, 1, 1, v26);
  v624 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration;
  v66(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration, 1, 1, v26);
  v647 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
  v695 = v26;
  v671 = v27 + 56;
  v665 = v66;
  v66(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration, 1, 1, v26);
  v69 = (v4 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v69 = 0;
  v69[1] = 0;
  v629 = v69;
  v70 = v636;
  *(v4 + 16) = v633;
  *(v4 + 24) = v70;
  v71 = *(v640 + 7);
  v71(v64, 1, 1, v68);

  v72 = [v686 language];
  if (v72)
  {
    v73 = v72;
    sub_1004DD43C();

    sub_1004D839C();
    v71(v61, 0, 1, v68);
    sub_1000107AC(v61, v64, &qword_100648D88, &qword_100537EA8);
  }

  else
  {
    sub_10001074C(v64, &qword_100648D88, &qword_100537EA8);
    v71(v64, 1, 1, v68);
  }

  v74 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage;
  v646 = v64;
  sub_1000108DC(v64, v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, &qword_100648D88, &qword_100537EA8);
  v75 = v686;
  [v686 leadingSilence];
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_leadingSilence) = v76;
  v77 = [v75 songwriters];
  v78 = sub_100006F10(0, &qword_100648DD8, MSVLyricsSongWriter_ptr);
  v79 = sub_1004DD87C();

  if (v79 >> 62)
  {
    v80 = sub_1004DED5C();
  }

  else
  {
    v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v81 = _swiftEmptyArrayStorage;
  v702 = v4;
  v616 = v78;
  v606 = v74;
  if (v80)
  {
    v82 = v79;
    *&v706 = _swiftEmptyArrayStorage;
    sub_100463968(0, v80 & ~(v80 >> 63), 0);
    if (v80 < 0)
    {
      __break(1u);
      goto LABEL_54;
    }

    v83 = 0;
    v84 = v706;
    v85 = v82;
    v696 = (v82 & 0xC000000000000001);
    v86 = v80;
    do
    {
      if (v696)
      {
        v87 = sub_1004DEB2C();
      }

      else
      {
        v87 = *(v85 + 8 * v83 + 32);
      }

      v88 = v87;
      v89 = [v87 name];
      v90 = sub_1004DD43C();
      v92 = v91;

      *&v706 = v84;
      v94 = v84[2];
      v93 = v84[3];
      if (v94 >= v93 >> 1)
      {
        sub_100463968((v93 > 1), v94 + 1, 1);
        v84 = v706;
      }

      ++v83;
      v84[2] = v94 + 1;
      v95 = &v84[2 * v94];
      v95[4] = v90;
      v95[5] = v92;
      v4 = v702;
      v85 = v82;
    }

    while (v86 != v83);

    v81 = _swiftEmptyArrayStorage;
  }

  else
  {

    v84 = _swiftEmptyArrayStorage;
  }

  v96 = OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters;
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters) = v84;
  v80 = v686;
  v97 = [v686 audioAttributes];
  v82 = v693;
  v605[2] = v96;
  if (v97)
  {
    v98 = v97;
    if ([v97 isSpatialRole])
    {
      [v98 lyricsOffset];
      v100 = v99;

      sub_100004CB8(&qword_100648E40, &unk_100537F00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100511DA0;
      *(inited + 32) = v100;
      v102 = sub_100469E90(inited);
      swift_setDeallocating();
      goto LABEL_22;
    }
  }

  v102 = &_swiftEmptySetSingleton;
LABEL_22:
  v103 = OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes;
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes) = v102;
  v104 = [v80 type];
  v105 = v104 == 1;
  if (v104 == 2)
  {
    v105 = 2;
  }

  *(v4 + 56) = v105;
  v729 = _swiftEmptyArrayStorage;
  v660 = swift_allocObject();
  swift_weakInit();
  v656 = swift_allocObject();
  *(v656 + 16) = 0;
  v655 = swift_allocObject();
  *(v655 + 16) = 0;
  v106 = [v80 language];
  if (v106)
  {
    v107 = v106;
    sub_1004DD43C();

    v108 = v684;
    sub_1004D839C();
    v109 = sub_1004D83BC();
    (*(v640 + 1))(v108, v705);
    v683 = v109 == 2;
  }

  else
  {
    v683 = 0;
  }

  v110 = [v80 language];
  if (v110)
  {
    v111 = v110;
    v112 = sub_1004DD43C();
    v114 = v113;
  }

  else
  {
    v112 = 0;
    v114 = 0;
  }

  v658 = sub_100469FE4(v112, v114);

  v605[3] = v103;
  if (_swiftEmptyArrayStorage >> 62 && sub_1004DED5C())
  {
    sub_10046A468(_swiftEmptyArrayStorage);
    v115 = v134;
  }

  else
  {
    v115 = &_swiftEmptySetSingleton;
  }

  v116 = swift_allocObject();
  v657 = v116;
  *(v116 + 16) = v115;
  v617 = v116 + 16;
  v117 = [v80 lyricsSections];
  sub_100006F10(0, &qword_100648DE0, MSVLyricsSection_ptr);
  v118 = sub_1004DD87C();

  if (v118 >> 62)
  {
    v119 = sub_1004DED5C();
  }

  else
  {
    v119 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v120 = v685;
  if (v119 >= 1)
  {
    v78 = [v80 lyricsSections];
    v4 = sub_1004DD87C();

    if (!(v4 >> 62))
    {
      v121 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v121)
      {
LABEL_37:
        if (v121 < 1)
        {
          __break(1u);
          goto LABEL_429;
        }

        v122 = 0;
        v696 = _swiftEmptyArrayStorage;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v123 = sub_1004DEB2C();
          }

          else
          {
            v123 = *(v4 + 8 * v122 + 32);
          }

          v124 = v123;
          v125 = [v123 lines];
          sub_100006F10(0, &qword_100648DE8, MSVLyricsLine_ptr);
          v126 = sub_1004DD87C();

          v78 = sub_10046BC98(v126, v657, v655, v656, v686, v683, v658, v660);

          sub_10045FB50(v127);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v696 = sub_100462EFC(0, v696[2] + 1, 1, v696);
          }

          v129 = v696[2];
          v128 = v696[3];
          if (v129 >= v128 >> 1)
          {
            v696 = sub_100462EFC((v128 > 1), v129 + 1, 1, v696);
          }

          ++v122;

          v130 = v696;
          v696[2] = v129 + 1;
          v130[v129 + 4] = v78;
        }

        while (v121 != v122);

        v120 = v685;
        v82 = v693;
        v80 = v686;
        v81 = _swiftEmptyArrayStorage;
        goto LABEL_56;
      }

      goto LABEL_55;
    }

LABEL_54:
    v121 = sub_1004DED5C();
    if (v121)
    {
      goto LABEL_37;
    }

LABEL_55:

    v696 = _swiftEmptyArrayStorage;
    v120 = v685;
    goto LABEL_56;
  }

  v131 = [v80 lyricsLines];
  sub_100006F10(0, &qword_100648DE8, MSVLyricsLine_ptr);
  v78 = sub_1004DD87C();

  v132 = sub_10046BC98(v78, v657, v655, v656, v80, v683, v658, v660);

  v729 = v132;
  sub_100004CB8(&qword_100648DF0, &qword_100537EE8);
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_100511DA0;
  v696 = v133;
  *(v133 + 32) = v132;

LABEL_56:
  v135 = swift_allocObject();
  v684 = v135;
  v136 = v680;
  *(v135 + 16) = v80;
  *(v135 + 24) = v136;
  v137 = swift_allocObject();
  v137[2] = 0;
  v650 = v137 + 2;
  v686 = v137;
  v137[3] = _swiftEmptyArrayStorage;
  v138 = swift_allocObject();
  *(v138 + 16) = 0;
  v645 = v138 + 16;
  v680 = v138;
  *(v138 + 24) = _swiftEmptyArrayStorage;
  v641 = v80;
  v139 = sub_1004D830C();
  v140 = v139;
  v678 = *(v139 + 16);
  if (!v678)
  {

    v142 = _swiftEmptyArrayStorage;
    goto LABEL_118;
  }

  v141 = 0;
  v676 = v139 + 32;
  v81 = (v640 + 8);
  v675 = (v697 + 16);
  v674 = (v697 + 8);
  v673 = (v697 + 32);
  v142 = _swiftEmptyArrayStorage;
  v677 = v139;
  do
  {
    if (v141 >= v140[2])
    {
      goto LABEL_395;
    }

    v143 = v142;

    sub_1004D82BC();
    v144 = v681;
    sub_1004D83EC();
    sub_1004D83CC();
    v145 = *v81;
    (*v81)(v144, v705);
    v146 = sub_1004D836C();
    v147 = *(v146 - 8);
    if ((*(v147 + 48))(v120, 1, v146) == 1)
    {
      sub_10001074C(v120, &qword_100648DC0, &qword_100537EE0);
      v142 = v143;
      goto LABEL_97;
    }

    v148 = sub_1004D835C();
    v149 = v120;
    v151 = v150;
    (*(v147 + 8))(v149, v146);
    if (qword_100648BA0 != -1)
    {
      swift_once();
    }

    v152 = static Lyrics.scriptMap;
    if (*(static Lyrics.scriptMap + 16))
    {
      v153 = sub_100028F80(v148, v151);
      if (v154)
      {
        v155 = (*(v152 + 56) + 16 * v153);
        v148 = *v155;
        v156 = v155[1];

        v151 = v156;
      }
    }

    v157 = *(v680 + 16);
    v158 = *(v680 + 24);
    v159 = *(v158 + 16);
    if (v157)
    {

      sub_100467DBC(v148, v151, v158 + 32, v159, (v157 + 16), v157 + 32);
      v161 = v160;
      v159 = v162;

      if ((v161 & 1) == 0)
      {
        goto LABEL_78;
      }

LABEL_77:
      sub_10046827C(v148, v151, v159);
      goto LABEL_78;
    }

    if (!v159)
    {
      goto LABEL_77;
    }

    v163 = (v158 + 40);
    while (1)
    {
      v164 = *(v163 - 1) == v148 && *v163 == v151;
      if (v164 || (sub_1004DF08C() & 1) != 0)
      {
        break;
      }

      v163 += 2;
      if (!--v159)
      {
        goto LABEL_77;
      }
    }

LABEL_78:
    if (v148 == 1853120844 && v151 == 0xE400000000000000)
    {

      v142 = v143;
      v82 = v693;
      goto LABEL_97;
    }

    v165 = sub_1004DF08C();

    v142 = v143;
    v82 = v693;
    if ((v165 & 1) == 0)
    {
      if (qword_100648BC8 != -1)
      {
        swift_once();
      }

      v166 = v643;
      sub_1004D83EC();
      v167 = LyricsOptionsManager.isDefaultScriptSupported(for:)(v166);
      v145(v166, v705);
      if (v167)
      {
        v168 = *(v680 + 16);
        v169 = *(v680 + 24);
        v170 = *(v169 + 16);
        if (v168)
        {

          sub_100467DBC(1853120844, 0xE400000000000000, v169 + 32, v170, (v168 + 16), v168 + 32);
          v172 = v171;
          v170 = v173;

          if (v172)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (!v170)
          {
LABEL_96:
            sub_10046827C(1853120844, 0xE400000000000000, v170);
            goto LABEL_97;
          }

          v174 = (v169 + 40);
          while (1)
          {
            v175 = *(v174 - 1) == 1853120844 && *v174 == 0xE400000000000000;
            if (v175 || (sub_1004DF08C() & 1) != 0)
            {
              break;
            }

            v174 += 2;
            if (!--v170)
            {
              goto LABEL_96;
            }
          }
        }
      }
    }

LABEL_97:
    v176 = v682;
    sub_1004D83EC();
    v177 = sub_10045FF74();
    v179 = v178;
    v145(v176, v705);
    v180 = v701;
    if (!v179)
    {
      goto LABEL_111;
    }

    v181 = *(v686 + 2);
    v182 = *(v686 + 3);
    v183 = *(v182 + 16);
    if (v181)
    {

      sub_100467DBC(v177, v179, v182 + 32, v183, (v181 + 16), v181 + 32);
      v185 = v184;
      v183 = v186;

      if ((v185 & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (v183)
    {
      v187 = (v182 + 40);
      do
      {
        v188 = *(v187 - 1) == v177 && v179 == *v187;
        if (v188 || (sub_1004DF08C() & 1) != 0)
        {
          goto LABEL_110;
        }

        v187 += 2;
      }

      while (--v183);
    }

    sub_10046827C(v177, v179, v183);
LABEL_110:

    v142 = v143;
    v82 = v693;
LABEL_111:
    (*v675)(v703, v82, v180);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v142 = sub_100462D20(0, *(v142 + 16) + 1, 1, v142, &qword_1006494D0, &qword_1005389B8, &type metadata accessor for Locale);
    }

    v140 = v677;
    v78 = *(v142 + 16);
    v189 = *(v142 + 24);
    if (v78 >= v189 >> 1)
    {
      v142 = sub_100462D20((v189 > 1), v78 + 1, 1, v142, &qword_1006494D0, &qword_1005389B8, &type metadata accessor for Locale);
    }

    ++v141;
    v190 = v697;
    (*(v697 + 8))(v82, v180);
    *(v142 + 16) = v78 + 1;
    (*(v190 + 32))(v142 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v78, v703, v180);
    v120 = v685;
  }

  while (v141 != v678);

LABEL_118:
  v78 = sub_100468BEC(_swiftEmptyArrayStorage);
  v191 = [v641 translations];
  sub_100006F10(0, &qword_100648DF8, MSVLyricsTranslation_ptr);
  v141 = sub_1004DD87C();

  if (v141 >> 62)
  {
    goto LABEL_404;
  }

  v192 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v682 = v78;
    v605[1] = type metadata accessor for Lyrics(0);
    v681 = v142;
    if (v192)
    {
      v193 = 0;
      v78 = 0;
      v678 = (v141 & 0xC000000000000001);
      v648 = v141 + 32;
      v649 = v141 & 0xFFFFFFFFFFFFFF8;
      v675 = (v640 + 16);
      v674 = (v640 + 32);
      v673 = (v640 + 8);
      v693 = _swiftEmptyArrayStorage;
      v142 = v663;
      v677 = v141;
      v676 = v192;
      while (1)
      {
        while (1)
        {
          if (v678)
          {
            v194 = sub_1004DEB2C();
          }

          else
          {
            if (v193 >= *(v649 + 16))
            {
              goto LABEL_402;
            }

            v194 = *(v648 + 8 * v193);
          }

          v195 = v194;
          v196 = __OFADD__(v193++, 1);
          if (v196)
          {
            goto LABEL_396;
          }

          v197 = [v194 linesMap];
          *&v706 = 0;
          sub_100006F10(0, &qword_100648DE8, MSVLyricsLine_ptr);
          sub_1004DD20C();

          v198 = v706;
          if (v706)
          {
            break;
          }

          if (v193 == v192)
          {
            goto LABEL_151;
          }
        }

        v685 = v193;
        v199 = v684;

        v81 = v195;
        v200 = sub_10046D0F8(v198, sub_10046D090, v199, v81);
        v703 = v78;
        if (v78)
        {
          goto LABEL_430;
        }

        v201 = v200;

        v202 = [v81 language];
        sub_1004DD43C();

        v203 = v699;
        sub_1004D839C();
        v204 = v653;
        v205 = v705;
        (*v675)(v653, v203, v705);
        v206 = [v81 language];
        v207 = sub_1004DD43C();
        v209 = v208;

        v210 = [v81 type] == 1;
        LOBYTE(v206) = [v81 isAutomaticallyCreated];
        v211 = v694;
        (*v674)(v694, v204, v205);
        v212 = v664;
        v213 = (v211 + v664[5]);
        *v213 = v207;
        v213[1] = v209;
        *(v211 + v212[6]) = v210;
        *(v211 + v212[7]) = v206;
        *(v211 + v212[8]) = v201;
        sub_10046DD7C(v211, v690, type metadata accessor for Lyrics.Translation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v693 = sub_100462D20(0, v693[2] + 1, 1, v693, &qword_100649480, &qword_100538970, type metadata accessor for Lyrics.Translation);
        }

        v215 = v693[2];
        v214 = v693[3];
        v78 = v703;
        v216 = v699;
        v141 = v677;
        if (v215 >= v214 >> 1)
        {
          v693 = sub_100462D20((v214 > 1), v215 + 1, 1, v693, &qword_100649480, &qword_100538970, type metadata accessor for Lyrics.Translation);
        }

        v217 = v693;
        v693[2] = v215 + 1;
        sub_10046E230(v690, v217 + ((*(v666 + 80) + 32) & ~*(v666 + 80)) + *(v666 + 72) * v215, type metadata accessor for Lyrics.Translation);
        v218 = sub_10045FF74();
        if (v219)
        {
          v220 = v218;
          v221 = v219;
          v223 = *(v686 + 2);
          v222 = *(v686 + 3);
          v224 = *(v222 + 16);
          if (v223)
          {

            sub_100467DBC(v220, v221, v222 + 32, v224, (v223 + 16), v223 + 32);
            v226 = v225;

            if (v226)
            {
              goto LABEL_147;
            }
          }

          else
          {
            if (!v224)
            {
LABEL_147:

              sub_10046DDE4(v694, type metadata accessor for Lyrics.Translation);
              (*v673)(v699, v705);
              goto LABEL_148;
            }

            v231 = (v222 + 40);
            while (1)
            {
              v232 = *(v231 - 1) == v220 && v221 == *v231;
              if (v232 || (sub_1004DF08C() & 1) != 0)
              {
                break;
              }

              v231 += 2;
              if (!--v224)
              {
                goto LABEL_147;
              }
            }
          }

          v227 = v694;
          v228 = v639;
          sub_10046DD7C(v694, v639, type metadata accessor for Lyrics.Translation);
          v229 = v682;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v706 = v229;
          sub_100466548(v228, v220, v221, isUniquelyReferenced_nonNull_native);

          sub_10046DDE4(v227, type metadata accessor for Lyrics.Translation);
          (*v673)(v699, v705);
          v682 = v706;
        }

        else
        {

          sub_10046DDE4(v694, type metadata accessor for Lyrics.Translation);
          (*v673)(v216, v705);
        }

LABEL_148:
        v142 = v663;
        v192 = v676;
        v193 = v685;
        if (v685 == v676)
        {
          goto LABEL_151;
        }
      }
    }

    v78 = 0;
    v693 = _swiftEmptyArrayStorage;
    v142 = v663;
LABEL_151:

    v233 = OBJC_IVAR____TtC7LyricsX6Lyrics_translations;
    *(v702 + OBJC_IVAR____TtC7LyricsX6Lyrics_translations) = v693;

    v673 = sub_100468DD4(_swiftEmptyArrayStorage);
    v234 = [v641 transliterations];
    sub_100006F10(0, &qword_100648E08, MSVLyricsTransliteration_ptr);
    v235 = sub_1004DD87C();

    if (v235 >> 62)
    {
      v236 = sub_1004DED5C();
    }

    else
    {
      v236 = *((v235 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v141 = v659;
    v703 = v78;
    if (v236)
    {
      v674 = v233;
      v237 = 0;
      v699 = v235 & 0xC000000000000001;
      v676 = v235 & 0xFFFFFFFFFFFFFF8;
      v675 = (v235 + 32);
      v678 = (v640 + 16);
      v677 = (v640 + 8);
      v685 = _swiftEmptyArrayStorage;
      v694 = v235;
      v690 = v236;
      while (1)
      {
        while (1)
        {
          if (v699)
          {
            v238 = sub_1004DEB2C();
          }

          else
          {
            if (v237 >= *(v676 + 16))
            {
              goto LABEL_403;
            }

            v238 = v675[v237];
          }

          v239 = v238;
          v196 = __OFADD__(v237++, 1);
          if (v196)
          {
            goto LABEL_397;
          }

          v78 = [v238 linesMap];
          *&v706 = 0;
          sub_100006F10(0, &qword_100648DE8, MSVLyricsLine_ptr);
          sub_1004DD20C();

          v240 = v706;
          if (v706)
          {
            break;
          }

          if (v237 == v236)
          {
            goto LABEL_184;
          }
        }

        v241 = v684;

        v81 = v239;
        v242 = v703;
        v243 = sub_10046D0F8(v240, sub_10046D090, v241, v81);
        v703 = v242;
        if (v242)
        {

          v604 = v702;

          sub_10001074C(v604 + v606, &qword_100648D88, &qword_100537EA8);

          sub_10001074C(v604 + v634, &qword_10064A830, &qword_100539D50);
          sub_10001074C(v604 + v607, &qword_100648D98, &qword_100537EC0);
          sub_10001074C(v604 + v141, &qword_10064A830, &qword_100539D50);
          sub_10001074C(v610 + v604, &qword_100648D98, &qword_100537EC0);
          sub_10001074C(v604 + v624, &qword_100648D98, &qword_100537EC0);
          sub_10001074C(v604 + v647, &qword_100648D98, &qword_100537EC0);

          goto LABEL_432;
        }

        v244 = v243;

        v245 = [v81 language];
        sub_1004DD43C();

        v246 = v698;
        sub_1004D839C();
        v247 = v687;
        (*v678)(v687, v246, v705);
        v248 = [v81 language];
        v249 = sub_1004DD43C();
        v251 = v250;

        v252 = [v81 isAutomaticallyCreated];
        v253 = v695;
        v254 = &v247[v695[5]];
        *v254 = v249;
        v254[1] = v251;
        v247[v253[6]] = v252;
        *&v247[v253[7]] = v244;
        sub_10046DD7C(v247, v688, type metadata accessor for Lyrics.Transliteration);
        v255 = v685;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v255 = sub_100462D20(0, *(v255 + 2) + 1, 1, v255, &qword_100649498, &qword_100538988, type metadata accessor for Lyrics.Transliteration);
        }

        v257 = *(v255 + 2);
        v256 = *(v255 + 3);
        v258 = v698;
        if (v257 >= v256 >> 1)
        {
          v255 = sub_100462D20((v256 > 1), v257 + 1, 1, v255, &qword_100649498, &qword_100538988, type metadata accessor for Lyrics.Transliteration);
        }

        *(v255 + 2) = v257 + 1;
        v259 = (*(v667 + 80) + 32) & ~*(v667 + 80);
        v685 = v255;
        sub_10046E230(v688, &v255[v259 + *(v667 + 72) * v257], type metadata accessor for Lyrics.Transliteration);
        sub_1004D83CC();
        v78 = sub_1004D836C();
        v260 = *(v78 - 8);
        if ((*(v260 + 48))(v142, 1, v78) == 1)
        {

          sub_10046DDE4(v687, type metadata accessor for Lyrics.Transliteration);
          (*v677)(v258, v705);
          sub_10001074C(v142, &qword_100648DC0, &qword_100537EE0);
        }

        else
        {
          v261 = sub_1004D835C();
          v263 = v262;
          (*(v260 + 8))(v142, v78);
          v78 = *(v680 + 16);
          v264 = *(v680 + 24);
          v265 = *(v264 + 16);
          if (v78)
          {

            sub_100467DBC(v261, v263, v264 + 32, v265, (v78 + 16), v78 + 32);
            v267 = v266;

            if (v267)
            {
              goto LABEL_180;
            }
          }

          else
          {
            if (!v265)
            {
LABEL_180:

              sub_10046DDE4(v687, type metadata accessor for Lyrics.Transliteration);
              (*v677)(v698, v705);
              goto LABEL_181;
            }

            v78 = v264 + 40;
            while (1)
            {
              v273 = *(v78 - 8) == v261 && *v78 == v263;
              if (v273 || (sub_1004DF08C() & 1) != 0)
              {
                break;
              }

              v78 += 16;
              if (!--v265)
              {
                goto LABEL_180;
              }
            }
          }

          v78 = type metadata accessor for Lyrics.Transliteration;
          v268 = v687;
          v269 = v635;
          sub_10046DD7C(v687, v635, type metadata accessor for Lyrics.Transliteration);
          v270 = v673;
          v271 = swift_isUniquelyReferenced_nonNull_native();
          *&v706 = v270;
          sub_1004663B4(v269, v261, v263, v271);

          v272 = v268;
          v142 = v663;
          sub_10046DDE4(v272, type metadata accessor for Lyrics.Transliteration);
          (*v677)(v698, v705);
          v673 = v706;
        }

LABEL_181:
        v141 = v659;
        v236 = v690;
        if (v237 == v690)
        {
          goto LABEL_184;
        }
      }
    }

    v685 = _swiftEmptyArrayStorage;
LABEL_184:

    v274 = v702;
    *(v702 + OBJC_IVAR____TtC7LyricsX6Lyrics_transliterations) = v685;
    v674 = *(v681 + 2);
    if (v674)
    {
      v275 = v697;
      v676 = &v681[(*(v697 + 80) + 32) & ~*(v697 + 80)];

      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      v276 = 0;
      v677 = (v275 + 16);
      v694 = v640 + 8;
      v653 = v640 + 48;
      v629 = (v640 + 16);
      v663 = (v667 + 48);
      v675 = (v275 + 8);
      v649 = v275 + 56;
      v635 = (v275 + 48);
      v610 = (v275 + 32);
      v639 = (v666 + 48);
      v640 = (v640 + 32);
      v141 = v651;
      v78 = v701;
      v277 = v654;
      v278 = v705;
LABEL_189:
      if (v276 >= *(v681 + 2))
      {
        goto LABEL_399;
      }

      v279 = *(v697 + 72);
      v690 = v276;
      v699 = *(v697 + 16);
      (v699)(v277, v676 + v279 * v276, v78);
      v280 = v668;
      sub_1004D83EC();
      v281 = sub_10045FF74();
      v283 = v282;
      v142 = *v694;
      (*v694)(v280, v278);
      if (!v283)
      {
        goto LABEL_228;
      }

      if (!*(v682 + 2))
      {

        goto LABEL_228;
      }

      v284 = sub_100028F80(v281, v283);
      v286 = v285;

      if ((v286 & 1) == 0)
      {
        goto LABEL_228;
      }

      v287 = *(v682 + 7) + *(v666 + 72) * v284;
      v288 = v638;
      sub_10046DD7C(v287, v638, type metadata accessor for Lyrics.Translation);
      sub_10046E230(v288, v652, type metadata accessor for Lyrics.Translation);
      v289 = *v653;
      v290 = v646;
      if ((*v653)(v646, 1, v278))
      {
        v291 = *(v686 + 3);
        if (v291[2])
        {
          v292 = v142;
          v293 = 0;
          v294 = 0;
LABEL_199:
          v298 = v291[4];
          v297 = v291[5];

          if (v293)
          {
            if (!v297)
            {
              v142 = v292;
LABEL_208:

LABEL_215:
              v678 = v142;
              v304 = v664;
              if (*(v652 + v664[6]))
              {
                v305 = v659;
                v306 = v702;
                v307 = v623;
                sub_1000108DC(v702 + v659, v623, &qword_10064A830, &qword_100539D50);
                if ((*v639)(v307, 1, v304) == 1)
                {
                  sub_10001074C(v307, &qword_10064A830, &qword_100539D50);
                  v308 = v622;
                  sub_10046E230(v652, v622, type metadata accessor for Lyrics.Translation);
                  v619(v308, 0, 1, v304);
                  swift_beginAccess();
                  v309 = v306 + v305;
                  v310 = v308;
                  goto LABEL_220;
                }

LABEL_226:
                sub_10046DDE4(v652, type metadata accessor for Lyrics.Translation);
                sub_10001074C(v307, &qword_10064A830, &qword_100539D50);
              }

              else
              {
                v311 = v702;
                v307 = v621;
                sub_1000108DC(v702 + v634, v621, &qword_10064A830, &qword_100539D50);
                if ((*v639)(v307, 1, v304) != 1)
                {
                  goto LABEL_226;
                }

                sub_10001074C(v307, &qword_10064A830, &qword_100539D50);
                v312 = v622;
                sub_10046E230(v652, v622, type metadata accessor for Lyrics.Translation);
                v619(v312, 0, 1, v304);
                v313 = v634;
                swift_beginAccess();
                v309 = v311 + v313;
                v310 = v312;
LABEL_220:
                sub_1000107AC(v310, v309, &qword_10064A830, &qword_100539D50);
                swift_endAccess();
              }

              v142 = v678;
              goto LABEL_228;
            }

            if (v294 == v298 && v293 == v297)
            {

              v142 = v292;
            }

            else
            {
              v299 = sub_1004DF08C();

              v142 = v292;
              if ((v299 & 1) == 0)
              {
                goto LABEL_215;
              }
            }
          }

          else
          {
            v142 = v292;
            if (v297)
            {
              goto LABEL_208;
            }
          }
        }
      }

      else
      {
        v295 = v643;
        (*v629)(v643, v290, v278);
        v294 = sub_10045FF74();
        v293 = v296;
        (v142)(v295, v278);
        v291 = *(v686 + 3);
        if (v291[2])
        {
          v292 = v142;
          goto LABEL_199;
        }

        if (v293)
        {
          goto LABEL_208;
        }
      }

      v300 = v646;
      if (v289(v646, 1, v278))
      {
        sub_10045FF74();
        v302 = v301;
LABEL_212:
        if (!v302)
        {
          goto LABEL_215;
        }

        goto LABEL_213;
      }

      v314 = v643;
      (*v629)(v643, v300, v278);
      v315 = sub_10045FF74();
      v317 = v316;
      (v142)(v314, v278);
      v318 = sub_10045FF74();
      v302 = v319;
      if (!v317)
      {
        goto LABEL_212;
      }

      if (v319)
      {
        if (v315 == v318 && v317 == v319)
        {

          goto LABEL_208;
        }

        v446 = sub_1004DF08C();

        if (v446)
        {
          goto LABEL_215;
        }
      }

      else
      {
LABEL_213:
      }

      LOBYTE(v706) = 15;
      v303 = sub_10046E31C();
      if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v303))
      {
        goto LABEL_215;
      }

      sub_10046DDE4(v652, type metadata accessor for Lyrics.Translation);
LABEL_228:
      v320 = v669;
      sub_1004D83EC();
      sub_1004D83CC();
      (v142)(v320, v278);
      v321 = v277;
      v322 = sub_1004D836C();
      v323 = *(v322 - 8);
      v81 = (v323 + 48);
      v324 = *(v323 + 48);
      if (v324(v141, 1, v322) == 1)
      {
        v78 = v701;
        (*v675)(v321, v701);
        sub_10001074C(v141, &qword_100648DC0, &qword_100537EE0);
        v277 = v321;
        goto LABEL_187;
      }

      v698 = v324;
      v325 = sub_1004D835C();
      v327 = v326;
      v329 = *(v323 + 8);
      v328 = v323 + 8;
      v687 = v329;
      (v329)(v141, v322);
      if (qword_100648BA0 != -1)
      {
        swift_once();
      }

      v330 = static Lyrics.scriptMap;
      v331 = v673;
      if (*(static Lyrics.scriptMap + 16))
      {
        v332 = sub_100028F80(v325, v327);
        if (v333)
        {
          v334 = (*(v330 + 56) + 16 * v332);
          v325 = *v334;
          v335 = v334[1];

          v327 = v335;
        }
      }

      v688 = v328;
      if (!v331[2])
      {

LABEL_238:
        v346 = 1;
        v665(v661, 1, 1, v695);
        if (v331[2])
        {
          v347 = sub_100028F80(1853120844, 0xE400000000000000);
          if (v348)
          {
            v349 = v670;
            sub_10046DD7C(v331[7] + *(v667 + 72) * v347, v670, type metadata accessor for Lyrics.Transliteration);
            v350 = v349;
            v346 = 0;
            goto LABEL_243;
          }

          v346 = 1;
        }

        v350 = v670;
LABEL_243:
        v351 = v695;
        v665(v350, v346, 1, v695);
        v345 = *v663;
        v352 = v661;
        if ((*v663)(v661, 1, v351) != 1)
        {
          sub_10001074C(v352, &qword_100648D98, &qword_100537EC0);
        }

        goto LABEL_245;
      }

      v336 = sub_100028F80(v325, v327);
      v338 = v337;

      if ((v338 & 1) == 0)
      {
        goto LABEL_238;
      }

      v339 = v667;
      v340 = v661;
      sub_10046DD7C(v331[7] + *(v667 + 72) * v336, v661, type metadata accessor for Lyrics.Transliteration);
      v341 = v695;
      v342 = v665;
      v665(v340, 0, 1, v695);
      v343 = v340;
      v344 = v670;
      sub_10046E230(v343, v670, type metadata accessor for Lyrics.Transliteration);
      v342(v344, 0, 1, v341);
      v345 = *(v339 + 48);
LABEL_245:
      v353 = v670;
      v354 = v695;
      if (v345(v670, 1, v695) == 1)
      {
        v277 = v654;
        v78 = v701;
        (*v675)(v654, v701);
        v355 = v353;
      }

      else
      {
        v356 = v662;
        sub_10046E230(v353, v662, type metadata accessor for Lyrics.Transliteration);
        v357 = v642;
        sub_1000108DC(v702 + v647, v642, &qword_100648D98, &qword_100537EC0);
        if (v345(v357, 1, v354) == 1)
        {
          v648 = v322;
          v678 = v142;
          sub_10001074C(v357, &qword_100648D98, &qword_100537EC0);
          v358 = v644;
          v141 = v701;
          v359 = v699;
          (v699)(v644, v654, v701);
          v360 = *v649;
          v361 = 1;
          (*v649)(v358, 0, 1, v141);
          v362 = v631;
          if (*(v681 + 2))
          {
            v363 = v637;
            v359(v637, v676, v141);
            v364 = v363;
            v361 = 0;
          }

          else
          {
            v364 = v637;
          }

          v360(v364, v361, 1, v141);
          v365 = *(v632 + 48);
          v366 = v644;
          sub_1000108DC(v644, v362, &qword_100648DB8, &qword_100537ED8);
          sub_1000108DC(v364, v362 + v365, &qword_100648DB8, &qword_100537ED8);
          v367 = *v635;
          if ((*v635)(v362, 1, v141) == 1)
          {
            sub_10001074C(v364, &qword_100648DB8, &qword_100537ED8);
            sub_10001074C(v366, &qword_100648DB8, &qword_100537ED8);
            v368 = v367(v362 + v365, 1, v141);
            v369 = v698;
            if (v368 == 1)
            {
              sub_10001074C(v362, &qword_100648DB8, &qword_100537ED8);
              v370 = v648;
              goto LABEL_261;
            }

LABEL_258:
            sub_10001074C(v362, &qword_100648DB0, &qword_100537ED0);
            v370 = v648;
            goto LABEL_269;
          }

          v371 = v618;
          sub_1000108DC(v362, v618, &qword_100648DB8, &qword_100537ED8);
          if (v367(v362 + v365, 1, v141) == 1)
          {
            sub_10001074C(v637, &qword_100648DB8, &qword_100537ED8);
            sub_10001074C(v644, &qword_100648DB8, &qword_100537ED8);
            (*v675)(v371, v141);
            v369 = v698;
            goto LABEL_258;
          }

          v372 = v371;
          v373 = v614;
          (*v610)(v614, v362 + v365, v141);
          sub_10046E4C0(&qword_100648E30, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
          LODWORD(v699) = sub_1004DD35C();
          v374 = *v675;
          (*v675)(v373, v141);
          sub_10001074C(v637, &qword_100648DB8, &qword_100537ED8);
          sub_10001074C(v644, &qword_100648DB8, &qword_100537ED8);
          (v374)(v372, v141);
          sub_10001074C(v362, &qword_100648DB8, &qword_100537ED8);
          v370 = v648;
          v369 = v698;
          if (v699)
          {
LABEL_261:
            v375 = v615;
            sub_1004D83AC();
            v376 = sub_1004D82FC();
            v377 = *(v376 - 8);
            v378 = *(v377 + 48);
            if (v378(v375, 1, v376) == 1)
            {
              v379 = v375;
              v380 = &qword_100648D90;
              v381 = &unk_100537EB0;
LABEL_263:
              sub_10001074C(v379, v380, v381);
              goto LABEL_269;
            }

            sub_1004D82DC();
            v699 = *(v377 + 8);
            (v699)(v375, v376);
            v607 = sub_1004DD4FC();
            v383 = v382;

            v141 = v612;
            sub_1004D83EC();
            v384 = v613;
            sub_1004D83AC();
            v678(v141, v705);
            if (v378(v384, 1, v376) == 1)
            {

              sub_10001074C(v384, &qword_100648D90, &unk_100537EB0);
              v369 = v698;
              v370 = v648;
              goto LABEL_269;
            }

            v606 = v383;
            sub_1004D82DC();
            (v699)(v384, v376);
            v385 = sub_1004DD4FC();
            v141 = v386;

            v387 = v611;
            sub_1004D837C();
            v388 = sub_1004D834C();
            v389 = *(v388 - 8);
            v390 = (*(v389 + 48))(v387, 1, v388);
            v370 = v648;
            if (v390 == 1)
            {

              sub_10001074C(v387, &qword_100648DA8, &qword_100537EC8);
LABEL_268:
              v369 = v698;
              goto LABEL_269;
            }

            v699 = v385;
            sub_1004D833C();
            (*(v389 + 8))(v387, v388);
            v447 = sub_1004DD4FC();
            v449 = v448;

            v450 = v608;
            sub_1004D83EC();
            v451 = v609;
            sub_1004D83CC();
            v678(v450, v705);
            v369 = v698;
            if ((v698)(v451, 1, v370) == 1)
            {

              v379 = v451;
              v380 = &qword_100648DC0;
              v381 = &qword_100537EE0;
              goto LABEL_263;
            }

            v678 = v447;
            v452 = v141;
            sub_1004D835C();
            (v687)(v451, v370);
            v453 = sub_1004DD4FC();
            v455 = v454;

            if (qword_100648B98 != -1)
            {
              swift_once();
            }

            v456 = static Lyrics.chineseLanguages;
            v141 = sub_1001206A4(v607, v606, static Lyrics.chineseLanguages);

            if ((v141 & 1) == 0)
            {

              goto LABEL_268;
            }

            v457 = sub_1001206A4(v699, v452, v456);
            v369 = v698;
            if ((v457 & 1) == 0)
            {

              goto LABEL_269;
            }

            if (v453 == 1953390952 && v455 == 0xE400000000000000)
            {

              v278 = v705;
              v142 = v699;
LABEL_337:
              v459 = v662;
              if (v678 == 27496 && v449 == 0xE200000000000000)
              {

                goto LABEL_345;
              }

              v460 = sub_1004DF08C();

              if (v460)
              {
LABEL_345:

                goto LABEL_346;
              }
            }

            else
            {
              v458 = sub_1004DF08C();

              v278 = v705;
              v142 = v699;
              if (v458)
              {
                goto LABEL_337;
              }

              v459 = v662;
            }

            if (v142 == 6649209 && v452 == 0xE300000000000000)
            {
              goto LABEL_345;
            }

            v465 = sub_1004DF08C();

            if (v465)
            {
LABEL_346:
              v461 = (v459 + v695[5]);
              v463 = *v461;
              v462 = v461[1];
              *&v706 = v463;
              *(&v706 + 1) = v462;
              *&v712 = 0x6E69796E6970;
              v464 = 0xE600000000000000;
            }

            else
            {
              v466 = (v459 + v695[5]);
              v468 = *v466;
              v467 = v466[1];
              *&v706 = v468;
              *(&v706 + 1) = v467;
              *&v712 = 0x676E69707475796ALL;
              v464 = 0xE800000000000000;
            }

            *(&v712 + 1) = v464;
            sub_10046E2C8();
            if (sub_1004DE8BC())
            {
              goto LABEL_297;
            }

LABEL_321:
            sub_10046DDE4(v662, type metadata accessor for Lyrics.Transliteration);
            v277 = v654;
            v78 = v701;
            (*v675)(v654, v701);
            v141 = v651;
            goto LABEL_188;
          }

LABEL_269:
          v391 = sub_10045FF74();
          v393 = v392;
          v394 = *(v686 + 3);
          if (!v394[2])
          {
            if (!v392)
            {
              v398 = 1;
              v399 = v630;
              goto LABEL_283;
            }

            goto LABEL_276;
          }

          v395 = v391;
          v396 = v394[4];
          v397 = v394[5];

          if (v393)
          {
            if (v397)
            {
              if (v395 == v396 && v393 == v397)
              {

                v398 = 1;
              }

              else
              {
                v398 = sub_1004DF08C();
              }

LABEL_281:
              v399 = v630;
LABEL_282:

              goto LABEL_283;
            }

LABEL_276:
            v398 = 0;
            goto LABEL_281;
          }

          v399 = v630;
          if (v397)
          {
            v398 = 0;
            goto LABEL_282;
          }

          v398 = 1;
LABEL_283:
          sub_1004D83CC();
          if (v369(v399, 1, v370) == 1)
          {
            sub_10001074C(v399, &qword_100648DC0, &qword_100537EE0);
            v400 = *(v680 + 24);
            v278 = v705;
            if (!v400[2])
            {
              goto LABEL_297;
            }

            v401 = 0;
            v142 = 0;
            goto LABEL_288;
          }

          v142 = sub_1004D835C();
          v401 = v402;
          (v687)(v399, v370);
          v400 = *(v680 + 24);
          if (v400[2])
          {
            v278 = v705;
LABEL_288:
            v404 = v400[4];
            v403 = v400[5];

            if (v401)
            {
              if (v403)
              {
                if (v142 == v404 && v401 == v403)
                {

LABEL_297:
                  v405 = sub_100468FBC(_swiftEmptyArrayStorage);
                  v406 = v729;
                  v688 = v729[2];
                  if (!v688)
                  {
LABEL_315:
                    v430 = v628;
                    sub_1004D83AC();
                    v431 = sub_1004D82FC();
                    v432 = *(v431 - 8);
                    if ((*(v432 + 48))(v430, 1, v431) == 1)
                    {
                      sub_10001074C(v430, &qword_100648D90, &unk_100537EB0);
                    }

                    else
                    {
                      sub_1004D82DC();
                      (*(v432 + 8))(v430, v431);
                    }

                    v142 = v702;
                    v433 = v625;
                    sub_1004D839C();
                    v434 = v654;
                    v435 = v701;
                    (*v675)(v654, v701);
                    v436 = v695;
                    v437 = (v662 + v695[5]);
                    v439 = *v437;
                    v438 = v437[1];
                    v440 = v626;
                    v441 = v433;
                    v278 = v705;
                    (*v640)(v626, v441, v705);
                    v442 = (v440 + v436[5]);
                    *v442 = v439;
                    v442[1] = v438;
                    *(v440 + v436[6]) = 0;
                    *(v440 + v436[7]) = v405;
                    v277 = v434;
                    v78 = v435;
                    v81 = v665;
                    v665(v440, 0, 1, v436);
                    v443 = v624;
                    swift_beginAccess();

                    sub_1000107AC(v440, v142 + v443, &qword_100648D98, &qword_100537EC0);
                    swift_endAccess();
                    v444 = v627;
                    sub_10046E230(v662, v627, type metadata accessor for Lyrics.Transliteration);
                    (v81)(v444, 0, 1, v436);
                    v445 = v647;
                    swift_beginAccess();
                    sub_1000107AC(v444, v142 + v445, &qword_100648D98, &qword_100537EC0);
                    swift_endAccess();
                    v141 = v651;
                    goto LABEL_188;
                  }

                  v407 = 0;
                  v687 = v729 + ((*(v689 + 80) + 32) & ~*(v689 + 80));
                  v78 = v700;
                  v142 = v679;
                  v678 = v729;
LABEL_302:
                  if (v407 >= v406[2])
                  {
                    __break(1u);
LABEL_394:
                    __break(1u);
LABEL_395:
                    __break(1u);
LABEL_396:
                    __break(1u);
LABEL_397:
                    __break(1u);
LABEL_398:
                    __break(1u);
LABEL_399:
                    __break(1u);
LABEL_400:
                    __break(1u);
LABEL_401:
                    __break(1u);
LABEL_402:
                    __break(1u);
LABEL_403:
                    __break(1u);
LABEL_404:
                    v192 = sub_1004DED5C();
                    continue;
                  }

                  v414 = sub_10046DD7C(&v687[*(v689 + 72) * v407], v142, type metadata accessor for Lyrics.TextLine);
                  v415 = v142 + *(v78 + 52);
                  v416 = *(v415 + 8);
                  if (!v416)
                  {
                    goto LABEL_301;
                  }

                  v81 = *v415;
                  v698 = (*(v142 + *(v78 + 64)))(v414);
                  v699 = v417;
                  v141 = (*(v142 + *(v78 + 68)))();
                  (*(v142 + *(v78 + 72)))(&v712);
                  v78 = swift_isUniquelyReferenced_nonNull_native();
                  v727 = v405;
                  v142 = sub_100028F80(v81, v416);
                  v419 = v405[2];
                  v420 = (v418 & 1) == 0;
                  v421 = v419 + v420;
                  if (__OFADD__(v419, v420))
                  {
                    goto LABEL_394;
                  }

                  v422 = v418;
                  if (v405[3] >= v421)
                  {
                    if (v78)
                    {
                      v78 = v700;
                      if ((v418 & 1) == 0)
                      {
                        goto LABEL_311;
                      }
                    }

                    else
                    {
                      sub_100466E0C();
                      v78 = v700;
                      if ((v422 & 1) == 0)
                      {
                        goto LABEL_311;
                      }
                    }
                  }

                  else
                  {
                    sub_100464640(v421, v78);
                    v423 = sub_100028F80(v81, v416);
                    if ((v422 & 1) != (v424 & 1))
                    {
                      goto LABEL_433;
                    }

                    v142 = v423;
                    v78 = v700;
                    if ((v422 & 1) == 0)
                    {
LABEL_311:
                      v405 = v727;
                      v727[(v142 >> 6) + 8] |= 1 << v142;
                      v425 = (v405[6] + 16 * v142);
                      *v425 = v81;
                      v425[1] = v416;
                      v426 = v405[7] + 88 * v142;
                      v427 = v699;
                      *v426 = v698;
                      *(v426 + 8) = v427;
                      *(v426 + 16) = v141;
                      *(v426 + 24) = v712;
                      *(v426 + 40) = v713;
                      *(v426 + 56) = v714;
                      *(v426 + 72) = v715;
                      v428 = v405[2];
                      v196 = __OFADD__(v428, 1);
                      v429 = v428 + 1;
                      if (v196)
                      {
                        goto LABEL_400;
                      }

                      v405[2] = v429;

LABEL_300:
                      v142 = v679;
                      v406 = v678;
LABEL_301:
                      ++v407;
                      sub_10046DDE4(v142, type metadata accessor for Lyrics.TextLine);
                      if (v688 == v407)
                      {
                        goto LABEL_315;
                      }

                      goto LABEL_302;
                    }
                  }

                  v405 = v727;
                  v408 = v727[7] + 88 * v142;
                  v409 = *(v408 + 16);
                  v706 = *v408;
                  v707 = v409;
                  v411 = *(v408 + 48);
                  v410 = *(v408 + 64);
                  v412 = *(v408 + 32);
                  v711 = *(v408 + 80);
                  v709 = v411;
                  v710 = v410;
                  v708 = v412;
                  v413 = v699;
                  *v408 = v698;
                  *(v408 + 8) = v413;
                  *(v408 + 16) = v141;
                  *(v408 + 24) = v712;
                  *(v408 + 40) = v713;
                  *(v408 + 56) = v714;
                  *(v408 + 72) = v715;
                  sub_10046E298(&v706);
                  goto LABEL_300;
                }

                v142 = sub_1004DF08C();

                if (v398 & v142 & 1) != 0 || ((v398 ^ 1))
                {
                  goto LABEL_297;
                }

                goto LABEL_321;
              }
            }

            else if (!v403)
            {
              goto LABEL_297;
            }
          }

          else
          {
            v278 = v705;
            if (!v401)
            {
              goto LABEL_297;
            }
          }

          if ((v398 & 1) == 0)
          {
            goto LABEL_297;
          }

          goto LABEL_321;
        }

        sub_10046DDE4(v356, type metadata accessor for Lyrics.Transliteration);
        v277 = v654;
        v78 = v701;
        (*v675)(v654, v701);
        v355 = v357;
      }

      sub_10001074C(v355, &qword_100648D98, &qword_100537EC0);
      v141 = v651;
LABEL_187:
      v278 = v705;
LABEL_188:
      v276 = v690 + 1;
      if ((v690 + 1) == v674)
      {

        v274 = v702;
        goto LABEL_353;
      }

      goto LABEL_189;
    }

    break;
  }

LABEL_353:
  v142 = v672;

  swift_beginAccess();

  v470 = sub_10046D308(v469);

  *(v274 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) = v470;
  v471 = v729;
  v274[6] = v729;
  v472 = *(v471 + 2);
  v703 = v471;
  if (v472)
  {
    v473 = v689;
    v474 = &v471[(*(v689 + 80) + 32) & ~*(v689 + 80)];
    sub_10046DD7C(v474, v142, type metadata accessor for Lyrics.TextLine);
    v705 = *(v473 + 72);

    v475 = 0;
    v78 = _swiftEmptyArrayStorage;
    v81 = v692;
    do
    {
      sub_10046DD7C(v474, v704, type metadata accessor for Lyrics.TextLine);
      if (v475 || (v476 = *v142, *v142 <= 7.0))
      {
        v480 = *v704;
        v481 = *(v142 + 8);
        if (*v704 - v481 > 7.0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_100462BD8(0, *(v78 + 16) + 1, 1, v78);
          }

          v142 = *(v78 + 16);
          v482 = *(v78 + 24);
          if (v142 >= v482 >> 1)
          {
            v78 = sub_100462BD8((v482 > 1), v142 + 1, 1, v78);
          }

          *(&v707 + 1) = &type metadata for Lyrics.InstrumentalLine;
          *&v708 = &protocol witness table for Lyrics.InstrumentalLine;
          v483 = swift_allocObject();
          *&v706 = v483;
          *(v483 + 16) = v475;
          *(v483 + 24) = v481 + 0.1;
          *(v483 + 32) = v480;
          *(v483 + 40) = v683;
          *(v78 + 16) = v142 + 1;
          sub_100035850(&v706, v78 + 40 * v142 + 32);
          v196 = __OFADD__(v475++, 1);
          if (v196)
          {
            goto LABEL_401;
          }
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_100462BD8(0, *(v78 + 16) + 1, 1, v78);
        }

        v478 = *(v78 + 16);
        v477 = *(v78 + 24);
        if (v478 >= v477 >> 1)
        {
          v78 = sub_100462BD8((v477 > 1), v478 + 1, 1, v78);
        }

        *(&v707 + 1) = &type metadata for Lyrics.InstrumentalLine;
        *&v708 = &protocol witness table for Lyrics.InstrumentalLine;
        v479 = swift_allocObject();
        *&v706 = v479;
        *(v479 + 16) = 0;
        *(v479 + 24) = 0;
        *(v479 + 32) = v476;
        *(v479 + 40) = v683;
        *(v78 + 16) = v478 + 1;
        sub_100035850(&v706, v78 + 40 * v478 + 32);
        v475 = 1;
      }

      v484 = v691;
      sub_10046DD7C(v704, v691, type metadata accessor for Lyrics.TextLine);
      *(v484 + 16) = v475;
      sub_10046DD7C(v484, v692, type metadata accessor for Lyrics.TextLine);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_100462BD8(0, *(v78 + 16) + 1, 1, v78);
      }

      v486 = *(v78 + 16);
      v485 = *(v78 + 24);
      if (v486 >= v485 >> 1)
      {
        v78 = sub_100462BD8((v485 > 1), v486 + 1, 1, v78);
      }

      v141 = type metadata accessor for Lyrics.TextLine;
      sub_10046DDE4(v704, type metadata accessor for Lyrics.TextLine);
      v142 = v672;
      sub_10046DDE4(v672, type metadata accessor for Lyrics.TextLine);
      *(&v707 + 1) = v700;
      *&v708 = &protocol witness table for Lyrics.TextLine;
      v487 = sub_1000357EC(&v706);
      sub_10046DD7C(v81, v487, type metadata accessor for Lyrics.TextLine);
      *(v78 + 16) = v486 + 1;
      sub_100035850(&v706, v78 + 40 * v486 + 32);
      sub_10046DDE4(v81, type metadata accessor for Lyrics.TextLine);
      v196 = __OFADD__(v475++, 1);
      if (v196)
      {
        goto LABEL_398;
      }

      sub_10046E230(v691, v142, type metadata accessor for Lyrics.TextLine);
      v474 += v705;
      --v472;
    }

    while (v472);
    v488 = *(v142 + 8);
    sub_10046DDE4(v142, type metadata accessor for Lyrics.TextLine);
    v274 = v702;
  }

  else
  {

    v475 = 0;
    v78 = _swiftEmptyArrayStorage;
    v488 = 0;
  }

  v489 = [v641 songwriters];
  v490 = sub_1004DD87C();

  if (v490 >> 62)
  {
    v491 = sub_1004DED5C();
  }

  else
  {
    v491 = *((v490 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v492 = v633;
  if (!v491)
  {

LABEL_414:
    v274[4] = v696;
    v274[5] = v78;
    swift_beginAccess();
    swift_weakAssign();
    Lyrics.updateTransliterations()();
    v512 = v636;
    if (qword_100648BC0 != -1)
    {
      swift_once();
    }

    v513 = sub_1004D966C();
    sub_100035430(v513, static Logger.lyrics);
    v514 = swift_allocObject();
    *(v514 + 16) = v492;
    *(v514 + 24) = v512;
    v515 = swift_allocObject();
    v516 = v686;
    *(v515 + 16) = sub_10046DF64;
    *(v515 + 24) = v516;
    v517 = swift_allocObject();
    v703 = v517;
    v518 = v680;
    *(v517 + 16) = sub_10047047C;
    *(v517 + 24) = v518;
    swift_retain_n();

    v705 = sub_1004D964C();
    LODWORD(v704) = sub_1004DDF9C();
    v701 = swift_allocObject();
    *(v701 + 16) = 34;
    v700 = swift_allocObject();
    *(v700 + 16) = 8;
    v519 = swift_allocObject();
    *(v519 + 16) = sub_10046DE7C;
    *(v519 + 24) = v514;
    v520 = swift_allocObject();
    v699 = v520;
    *(v520 + 16) = sub_10046DF9C;
    *(v520 + 24) = v519;
    v698 = swift_allocObject();
    v698[16] = 34;
    v697 = swift_allocObject();
    *(v697 + 16) = 8;
    v521 = swift_allocObject();
    *(v521 + 16) = sub_10046DE84;
    *(v521 + 24) = v274;
    v522 = swift_allocObject();
    v696 = v522;
    v522[2] = sub_100470474;
    v522[3] = v521;
    v694 = swift_allocObject();
    *(v694 + 16) = 34;
    v693 = swift_allocObject();
    *(v693 + 16) = 8;
    v523 = swift_allocObject();
    *(v523 + 16) = sub_10046DEBC;
    *(v523 + 24) = v274;
    v524 = swift_allocObject();
    *(v524 + 16) = sub_100470474;
    *(v524 + 24) = v523;
    v692 = swift_allocObject();
    *(v692 + 16) = 34;
    v691 = swift_allocObject();
    *(v691 + 16) = 8;
    v525 = swift_allocObject();
    *(v525 + 16) = sub_10046DEF4;
    *(v525 + 24) = v274;
    v526 = swift_allocObject();
    *(v526 + 16) = sub_100470474;
    *(v526 + 24) = v525;
    v690 = swift_allocObject();
    *(v690 + 16) = 34;
    v689 = swift_allocObject();
    *(v689 + 16) = 8;
    v527 = swift_allocObject();
    *(v527 + 16) = sub_10046DF2C;
    *(v527 + 24) = v274;
    v528 = swift_allocObject();
    *(v528 + 16) = sub_100470474;
    *(v528 + 24) = v527;
    v688 = swift_allocObject();
    *(v688 + 16) = 34;
    v529 = swift_allocObject();
    *(v529 + 16) = 8;
    v530 = swift_allocObject();
    *(v530 + 16) = sub_10046DF80;
    *(v530 + 24) = v515;
    v531 = swift_allocObject();
    *(v531 + 16) = sub_100470474;
    *(v531 + 24) = v530;
    v532 = swift_allocObject();
    *(v532 + 16) = 34;
    v533 = swift_allocObject();
    *(v533 + 16) = 8;
    v534 = swift_allocObject();
    v535 = v703;
    *(v534 + 16) = sub_100470470;
    *(v534 + 24) = v535;
    v536 = swift_allocObject();
    *(v536 + 16) = sub_100470474;
    *(v536 + 24) = v534;
    sub_100004CB8(&qword_100648E18, &qword_100537EF0);
    v537 = swift_allocObject();
    *(v537 + 16) = xmmword_100537970;
    v538 = v701;
    *(v537 + 32) = sub_10046DF88;
    *(v537 + 40) = v538;
    v539 = v700;
    *(v537 + 48) = sub_1004703BC;
    *(v537 + 56) = v539;
    v540 = v699;
    *(v537 + 64) = sub_10046DFC4;
    *(v537 + 72) = v540;
    v541 = v698;
    *(v537 + 80) = sub_1004703BC;
    *(v537 + 88) = v541;
    v542 = v697;
    *(v537 + 96) = sub_1004703BC;
    *(v537 + 104) = v542;
    v543 = v696;
    *(v537 + 112) = sub_100470414;
    *(v537 + 120) = v543;
    v544 = v694;
    *(v537 + 128) = sub_1004703BC;
    *(v537 + 136) = v544;
    v545 = v693;
    *(v537 + 144) = sub_1004703BC;
    *(v537 + 152) = v545;
    *(v537 + 160) = sub_100470414;
    *(v537 + 168) = v524;
    v546 = v692;
    *(v537 + 176) = sub_1004703BC;
    *(v537 + 184) = v546;
    v547 = v691;
    *(v537 + 192) = sub_1004703BC;
    *(v537 + 200) = v547;
    *(v537 + 208) = sub_100470414;
    *(v537 + 216) = v526;
    v548 = v690;
    *(v537 + 224) = sub_1004703BC;
    *(v537 + 232) = v548;
    v549 = v689;
    *(v537 + 240) = sub_1004703BC;
    *(v537 + 248) = v549;
    *(v537 + 256) = sub_100470414;
    *(v537 + 264) = v528;
    v550 = v688;
    *(v537 + 272) = sub_1004703BC;
    *(v537 + 280) = v550;
    *(v537 + 288) = sub_1004703BC;
    *(v537 + 296) = v529;
    *(v537 + 304) = sub_100470414;
    *(v537 + 312) = v531;
    *(v537 + 320) = sub_1004703BC;
    *(v537 + 328) = v532;
    *(v537 + 336) = sub_1004703BC;
    *(v537 + 344) = v533;
    *(v537 + 352) = sub_100470414;
    *(v537 + 360) = v536;
    swift_setDeallocating();
    sub_1004622AC();
    v551 = v705;
    if (os_log_type_enabled(v705, v704))
    {
      v552 = swift_slowAlloc();
      v703 = swift_slowAlloc();
      v726 = v703;
      *v552 = 136447746;
      v724 = v633;
      v725 = v636;
      sub_100004CB8(&qword_100648E20, &qword_100537EF8);
      v553 = sub_1004DD4DC();
      v555 = sub_1004633D0(v553, v554, &v726);

      *(v552 + 4) = v555;
      *(v552 + 12) = 2082;
      v556 = v702;
      v557 = v702 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation;
      swift_beginAccess();
      v558 = *(v666 + 48);
      v666 += 48;
      v701 = v558;
      v559 = v558(v557, 1, v664);
      v560 = 0;
      v561 = 0;
      if (!v559)
      {
        v560 = *&v557[v664[5]];
      }

      v722 = v560;
      v723 = v561;
      v562 = sub_1004DD4DC();
      v564 = sub_1004633D0(v562, v563, &v726);

      *(v552 + 14) = v564;
      *(v552 + 22) = 2082;
      v565 = v556 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
      swift_beginAccess();
      v566 = *(v667 + 48);
      v567 = v695;
      v568 = v566(v565, 1, v695);
      v569 = 0;
      v570 = 0;
      if (!v568)
      {
        v569 = *(v565 + v567[5]);
      }

      v720 = v569;
      v721 = v570;
      v571 = sub_1004DD4DC();
      v573 = sub_1004633D0(v571, v572, &v726);

      *(v552 + 24) = v573;
      *(v552 + 32) = 2082;
      v574 = v556 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
      swift_beginAccess();
      v575 = v566(v574, 1, v567);
      v576 = 0;
      v577 = 0;
      if (!v575)
      {
        v576 = *(v574 + v567[5]);
      }

      v718 = v576;
      v719 = v577;
      v578 = sub_1004DD4DC();
      v580 = sub_1004633D0(v578, v579, &v726);

      *(v552 + 34) = v580;
      *(v552 + 42) = 2082;
      v581 = v556 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
      swift_beginAccess();
      v582 = v664;
      v583 = (v701)(v581, 1, v664);
      v584 = 0;
      v585 = 0;
      v586 = v556;
      if (!v583)
      {
        v584 = *(v581 + v582[5]);
      }

      v716 = v584;
      v717 = v585;
      v587 = sub_1004DD4DC();
      v589 = sub_1004633D0(v587, v588, &v726);

      *(v552 + 44) = v589;
      *(v552 + 52) = 2082;
      swift_beginAccess();

      v591 = sub_10046E06C(v590);
      v593 = v592;

      v594 = sub_1004633D0(v591, v593, &v726);

      *(v552 + 54) = v594;
      *(v552 + 62) = 2082;
      swift_beginAccess();

      v596 = sub_10046E06C(v595);
      v598 = v597;

      v599 = sub_1004633D0(v596, v598, &v726);

      *(v552 + 64) = v599;
      v600 = v705;
      _os_log_impl(&_mh_execute_header, v705, v704, "Initialized lyrics with identifier %{public}s, preferredTranslation: %{public}s, preferredTransliteration: %{public}s, currentTransliteration: %{public}s, currentTranslation: %{public}s preferredLanguageCodes: %{public}s, preferredScriptCodes: %{public}s", v552, 0x48u);
      swift_arrayDestroy();
    }

    else
    {

      v586 = v702;
    }

    sub_10001074C(v646, &qword_100648D88, &qword_100537EA8);
    return v586;
  }

  v493 = [v641 songwriters];
  v494 = sub_1004DD87C();

  if (!(v494 >> 62))
  {
    v495 = *((v494 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v495)
    {
      goto LABEL_381;
    }

LABEL_408:

    v505 = _swiftEmptyArrayStorage;
LABEL_409:
    v509 = swift_isUniquelyReferenced_nonNull_native();
    v728 = v78;
    if ((v509 & 1) == 0)
    {
      v78 = sub_100462BD8(0, *(v78 + 16) + 1, 1, v78);
      v728 = v78;
    }

    v510 = *(v78 + 16);
    v511 = *(v78 + 24);
    if (v510 >= v511 >> 1)
    {
      v602 = *(v78 + 16);
      v78 = sub_100462BD8((v511 > 1), v510 + 1, 1, v78);
      v510 = v602;
      v492 = v633;
      v728 = v78;
    }

    *&v706 = v475;
    *(&v706 + 1) = v488;
    *&v707 = 0x7FF0000000000000;
    BYTE8(v707) = v683;
    *&v708 = v505;
    sub_100468A18(v510, &v706, &v728);
    v728 = v78;
    goto LABEL_414;
  }

  v495 = sub_1004DED5C();
  if (!v495)
  {
    goto LABEL_408;
  }

LABEL_381:
  *&v706 = _swiftEmptyArrayStorage;
  sub_100462234(v495);
  if ((v495 & 0x8000000000000000) == 0)
  {
    v496 = 0;
    v497 = v494;
    v704 = (v494 & 0xC000000000000001);
    v705 = v494;
    v498 = v495;
    do
    {
      if (v704)
      {
        v499 = sub_1004DEB2C();
      }

      else
      {
        v499 = *(v497 + 8 * v496 + 32);
      }

      v500 = v499;
      v501 = [v499 name];
      v502 = sub_1004DD43C();
      v504 = v503;

      v505 = v706;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100463968(0, v505[2] + 1, 1);
        v505 = v706;
      }

      v507 = v505[2];
      v506 = v505[3];
      if (v507 >= v506 >> 1)
      {
        sub_100463968((v506 > 1), v507 + 1, 1);
        v505 = v706;
      }

      ++v496;
      v505[2] = v507 + 1;
      v508 = &v505[2 * v507];
      v508[4] = v502;
      v508[5] = v504;
      v274 = v702;
      v497 = v705;
    }

    while (v498 != v496);

    v492 = v633;
    goto LABEL_409;
  }

LABEL_429:
  __break(1u);
LABEL_430:

  v603 = v702;

  sub_10001074C(v603 + v606, &qword_100648D88, &qword_100537EA8);

  sub_10001074C(v603 + v634, &qword_10064A830, &qword_100539D50);
  sub_10001074C(v603 + v607, &qword_100648D98, &qword_100537EC0);
  sub_10001074C(v603 + v659, &qword_10064A830, &qword_100539D50);
  sub_10001074C(v610 + v603, &qword_100648D98, &qword_100537EC0);
  sub_10001074C(v603 + v624, &qword_100648D98, &qword_100537EC0);
  sub_10001074C(v603 + v647, &qword_100648D98, &qword_100537EC0);
LABEL_432:

  swift_deallocPartialClassInstance();
  __break(1u);
LABEL_433:
  result = sub_1004DF16C();
  __break(1u);
  return result;
}

uint64_t sub_10045E730(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1004DED5C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

BOOL sub_10045E754(uint64_t a1, BOOL a2)
{
  sub_100004CB8(&qword_10064A830, &qword_100539D50);
  __chkstk_darwin();
  v4 = &v23 - v3;
  v5 = type metadata accessor for Lyrics.Translation(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100648D98, &qword_100537EC0);
  __chkstk_darwin();
  v10 = &v23 - v9;
  v11 = type metadata accessor for Lyrics.Transliteration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v16 = Strong;
  v23 = v6;
  v17 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_1000108DC(v16 + v17, v10, &qword_100648D98, &qword_100537EC0);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    sub_10046E230(v10, v14, type metadata accessor for Lyrics.Transliteration);
    v19 = sub_1004D83BC();

    v20 = type metadata accessor for Lyrics.Transliteration;
    v21 = v14;
LABEL_8:
    sub_10046DDE4(v21, v20);
    return v19 == 2;
  }

  sub_10001074C(v10, &qword_100648D98, &qword_100537EC0);
  v18 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000108DC(v16 + v18, v4, &qword_10064A830, &qword_100539D50);
  if ((*(v23 + 48))(v4, 1, v5) != 1)
  {
    sub_10046E230(v4, v8, type metadata accessor for Lyrics.Translation);
    v19 = sub_1004D83BC();

    v20 = type metadata accessor for Lyrics.Translation;
    v21 = v8;
    goto LABEL_8;
  }

  sub_10001074C(v4, &qword_10064A830, &qword_100539D50);
  return a2;
}

uint64_t sub_10045EAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v34 = a2;
  sub_100004CB8(&qword_10064A830, &qword_100539D50);
  __chkstk_darwin();
  v8 = &v32 - v7;
  v9 = type metadata accessor for Lyrics.Translation(0);
  v35 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100648D98, &qword_100537EC0);
  __chkstk_darwin();
  v13 = &v32 - v12;
  v14 = type metadata accessor for Lyrics.Transliteration(0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v19 = Strong;
  if (!a3)
  {

    goto LABEL_7;
  }

  v32 = a3;
  v33 = a4;
  v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_1000108DC(v19 + v20, v13, &qword_100648D98, &qword_100537EC0);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_10046E230(v13, v17, type metadata accessor for Lyrics.Transliteration);
    v23 = *&v17[*(v14 + 28)];
    a4 = v33;
    if (*(v23 + 16) && (v24 = sub_100028F80(v34, v32), (v25 & 1) != 0))
    {
      a4 = *(*(v23 + 56) + 88 * v24);
    }

    else
    {
    }

    v26 = type metadata accessor for Lyrics.Transliteration;
    v27 = v17;
    goto LABEL_18;
  }

  sub_10001074C(v13, &qword_100648D98, &qword_100537EC0);
  v21 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000108DC(v19 + v21, v8, &qword_10064A830, &qword_100539D50);
  v22 = (*(v35 + 48))(v8, 1, v9);
  a4 = v33;
  if (v22 != 1)
  {
    sub_10046E230(v8, v11, type metadata accessor for Lyrics.Translation);
    v28 = *&v11[*(v9 + 32)];
    if (*(v28 + 16) && (v29 = sub_100028F80(v34, v32), (v30 & 1) != 0))
    {
      a4 = *(*(v28 + 56) + 88 * v29);
    }

    else
    {
    }

    v26 = type metadata accessor for Lyrics.Translation;
    v27 = v11;
LABEL_18:
    sub_10046DDE4(v27, v26);
    return a4;
  }

  sub_10001074C(v8, &qword_10064A830, &qword_100539D50);
LABEL_7:

  return a4;
}

uint64_t sub_10045EF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  sub_100004CB8(&qword_10064A830, &qword_100539D50);
  __chkstk_darwin();
  v7 = &v33 - v6;
  v8 = type metadata accessor for Lyrics.Translation(0);
  v36 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100648D98, &qword_100537EC0);
  __chkstk_darwin();
  v12 = &v33 - v11;
  v13 = type metadata accessor for Lyrics.Transliteration(0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v18 = Strong;
  if (!a3)
  {

    goto LABEL_7;
  }

  v33 = a3;
  v34 = a4;
  v19 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_1000108DC(v18 + v19, v12, &qword_100648D98, &qword_100537EC0);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_10046E230(v12, v16, type metadata accessor for Lyrics.Transliteration);
    v22 = *&v16[*(v13 + 28)];
    v23 = v34;
    if (*(v22 + 16) && (v24 = sub_100028F80(v35, v33), (v25 & 1) != 0))
    {
      v21 = *(*(v22 + 56) + 88 * v24 + 16);
    }

    else
    {

      swift_beginAccess();
      v21 = *(v23 + 16);
    }

    v26 = type metadata accessor for Lyrics.Transliteration;
    v27 = v16;
    goto LABEL_18;
  }

  sub_10001074C(v12, &qword_100648D98, &qword_100537EC0);
  v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000108DC(v18 + v20, v7, &qword_10064A830, &qword_100539D50);
  if ((*(v36 + 48))(v7, 1, v8) != 1)
  {
    sub_10046E230(v7, v10, type metadata accessor for Lyrics.Translation);
    v28 = *&v10[*(v8 + 32)];
    v29 = v34;
    if (*(v28 + 16) && (v30 = sub_100028F80(v35, v33), (v31 & 1) != 0))
    {
      v21 = *(*(v28 + 56) + 88 * v30 + 16);
    }

    else
    {

      swift_beginAccess();
      v21 = *(v29 + 16);
    }

    v26 = type metadata accessor for Lyrics.Translation;
    v27 = v10;
LABEL_18:
    sub_10046DDE4(v27, v26);
    return v21;
  }

  sub_10001074C(v7, &qword_10064A830, &qword_100539D50);
  a4 = v34;
LABEL_7:
  swift_beginAccess();
  v21 = *(a4 + 16);

  return v21;
}

double sub_10045F3E4@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X8>)
{
  v55 = a2;
  sub_100004CB8(&qword_10064A830, &qword_100539D50);
  __chkstk_darwin();
  v9 = &v51 - v8;
  v10 = type metadata accessor for Lyrics.Translation(0);
  v56 = *(v10 - 8);
  v57 = v10;
  __chkstk_darwin();
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100648D98, &qword_100537EC0);
  __chkstk_darwin();
  v13 = &v51 - v12;
  v14 = type metadata accessor for Lyrics.Transliteration(0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v19 = Strong;
  if (!a3)
  {

LABEL_7:
    swift_beginAccess();
    v24 = a4[1];
    v25 = a4[2];
    goto LABEL_8;
  }

  v52 = a3;
  v53 = a5;
  v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_1000108DC(v19 + v20, v13, &qword_100648D98, &qword_100537EC0);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_10046E230(v13, v17, type metadata accessor for Lyrics.Transliteration);
    v27 = *&v17[*(v14 + 28)];
    if (*(v27 + 16) && (v28 = sub_100028F80(v55, v52), (v29 & 1) != 0))
    {
      v30 = *(v27 + 56) + 88 * v28;
      v31 = *(v30 + 72);
      v32 = *(v30 + 40);
      v33 = *(v30 + 56);
      v63 = *(v30 + 24);
      v64 = v32;
      v65 = v33;
      v66 = v31;
      sub_1000108DC(&v63, &v67, &qword_100648D80, &qword_100537EA0);

      a5 = v53;
      if (*(&v64 + 1))
      {
LABEL_15:
        v59 = v63;
        v60 = v64;
        v61 = v65;
        v62 = v66;
        v36 = type metadata accessor for Lyrics.Transliteration;
        v37 = v17;
LABEL_23:
        sub_10046DDE4(v37, v36);
        goto LABEL_24;
      }

      v67 = v63;
      v68 = v64;
      v69 = v65;
      v70 = v66;
    }

    else
    {

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      a5 = v53;
    }

    swift_beginAccess();
    v34 = a4[2];
    v63 = a4[1];
    v64 = v34;
    v35 = a4[4];
    v65 = a4[3];
    v66 = v35;
    sub_1000108DC(&v63, v58, &qword_100648D80, &qword_100537EA0);
    sub_10001074C(&v67, &qword_100648D80, &qword_100537EA0);
    goto LABEL_15;
  }

  sub_10001074C(v13, &qword_100648D98, &qword_100537EC0);
  v21 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000108DC(v19 + v21, v9, &qword_10064A830, &qword_100539D50);
  v22 = v57;
  v23 = (*(v56 + 48))(v9, 1, v57);
  a5 = v53;
  if (v23 != 1)
  {
    v38 = v54;
    sub_10046E230(v9, v54, type metadata accessor for Lyrics.Translation);
    v39 = *(v38 + *(v22 + 32));
    if (*(v39 + 16) && (v40 = sub_100028F80(v55, v52), (v41 & 1) != 0))
    {
      v42 = *(v39 + 56) + 88 * v40;
      v43 = *(v42 + 72);
      v44 = *(v42 + 40);
      v45 = *(v42 + 56);
      v63 = *(v42 + 24);
      v64 = v44;
      v65 = v45;
      v66 = v43;
      sub_1000108DC(&v63, &v67, &qword_100648D80, &qword_100537EA0);

      if (*(&v64 + 1))
      {
LABEL_22:
        v59 = v63;
        v60 = v64;
        v61 = v65;
        v62 = v66;
        v36 = type metadata accessor for Lyrics.Translation;
        v37 = v38;
        goto LABEL_23;
      }

      v67 = v63;
      v68 = v64;
      v69 = v65;
      v70 = v66;
    }

    else
    {

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
    }

    swift_beginAccess();
    v46 = a4[2];
    v63 = a4[1];
    v64 = v46;
    v47 = a4[4];
    v65 = a4[3];
    v66 = v47;
    sub_1000108DC(&v63, v58, &qword_100648D80, &qword_100537EA0);
    sub_10001074C(&v67, &qword_100648D80, &qword_100537EA0);
    goto LABEL_22;
  }

  sub_10001074C(v9, &qword_10064A830, &qword_100539D50);
  swift_beginAccess();
  v24 = a4[1];
  v25 = a4[2];
LABEL_8:
  v67 = v24;
  v68 = v25;
  v26 = a4[4];
  v69 = a4[3];
  v70 = v26;
  sub_1000108DC(&v67, &v63, &qword_100648D80, &qword_100537EA0);
  v59 = v67;
  v60 = v68;
  v61 = v69;
  v62 = v70;
LABEL_24:
  v48 = v60;
  *a5 = v59;
  a5[1] = v48;
  result = *&v61;
  v50 = v62;
  a5[2] = v61;
  a5[3] = v50;
  return result;
}

void sub_10045FA18(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10046230C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  sub_100004CB8(&qword_100648D28, &unk_100537C40);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_10045FB50(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100462D20(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_100649470, &qword_100538960, type metadata accessor for Lyrics.TextLine);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for Lyrics.TextLine(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_10045FCA0(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_100463240(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100004CB8(&qword_100649420, &qword_100538910);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_10045FDA4(id a1@<X3>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X8>)
{
  if ([a1 type] == 2)
  {
    v9 = [a2 hasBackgroundVocal];
    v10 = &selRef_primaryVocalText;
    if (!v9)
    {
      v10 = &selRef_lyricsText;
    }

    v11 = [a2 *v10];
    v12 = [v11 string];

    v13 = sub_1004DD43C();
    v15 = v14;

    v16 = sub_10046B44C(a2, a3, a4);
    v17 = [a2 backgroundVocals];
    if (!v17)
    {
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      goto LABEL_8;
    }

    v18 = v17;

    sub_10046B800(v18, a3, a4, v30);
    v28 = v30[1];
    v29 = v30[0];
    v19 = v30[3];
    v27 = v30[2];
  }

  else
  {
    v20 = [a2 lyricsText];
    v18 = [v20 string];

    v13 = sub_1004DD43C();
    v15 = v21;
    v19 = 0uLL;
    v29 = 0u;
    v16 = _swiftEmptyArrayStorage;
    v27 = 0u;
    v28 = 0u;
  }

  v26 = v19;

  v23 = v28;
  v22 = v29;
  v25 = v26;
  v24 = v27;
LABEL_8:
  *a5 = v13;
  *(a5 + 8) = v15;
  *(a5 + 16) = v16;
  *(a5 + 24) = v22;
  *(a5 + 40) = v23;
  *(a5 + 56) = v24;
  *(a5 + 72) = v25;
}

uint64_t sub_10045FF74()
{
  sub_100004CB8(&qword_100648DC0, &qword_100537EE0);
  __chkstk_darwin();
  v1 = v16 - v0;
  sub_100004CB8(&qword_100648D90, &unk_100537EB0);
  __chkstk_darwin();
  v3 = v16 - v2;
  sub_1004D83AC();
  v4 = sub_1004D82FC();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10001074C(v3, &qword_100648D90, &unk_100537EB0);
    return 0;
  }

  else
  {
    v6 = sub_1004D82DC();
    v8 = v7;
    (*(v5 + 8))(v3, v4);
    v9 = v6 == 26746 && v8 == 0xE200000000000000;
    if (v9 || (sub_1004DF08C() & 1) != 0)
    {
      sub_1004D83CC();
      v10 = sub_1004D836C();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v1, 1, v10) == 1)
      {
        sub_10001074C(v1, &qword_100648DC0, &qword_100537EE0);
      }

      else
      {

        v12 = sub_1004D835C();
        v14 = v13;
        (*(v11 + 8))(v1, v10);
        v16[0] = 2975866;
        v16[1] = 0xE300000000000000;
        v17._countAndFlagsBits = v12;
        v17._object = v14;
        sub_1004DD5FC(v17);

        return v16[0];
      }
    }
  }

  return v6;
}

BOOL sub_100460214(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1004DF26C();
  v4 = qword_100538A58[a1];
  sub_1004DF27C(v4);
  v5 = sub_1004DF2BC();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_100538A58[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1004602F4(uint64_t a1, uint64_t a2)
{

  sub_100004CB8(&qword_100648E20, &qword_100537EF8);
  return sub_1004DD4DC();
}

uint64_t sub_10046033C(uint64_t a1, void *a2, uint64_t (*a3)(void, __n128))
{
  v4 = a1 + *a2;
  swift_beginAccess();
  v5 = (a3)(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
  }

  sub_100004CB8(&qword_100648E20, &qword_100537EF8);
  return sub_1004DD4DC();
}

double sub_100460410@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = v4;
  a2[1] = v5;

  return result;
}

Swift::Void __swiftcall Lyrics.updateTransliterations()()
{
  sub_100004CB8(&qword_100648D98, &qword_100537EC0);
  __chkstk_darwin();
  v2 = &v10 - v1;
  if (qword_100648BC8 != -1)
  {
    swift_once();
  }

  if (sub_100460214(3, *(static LyricsOptionsManager.shared + 40)))
  {
    v3 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration;
    swift_beginAccess();
    sub_1000108DC(v0 + v3, v2, &qword_100648D98, &qword_100537EC0);
    v4 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
    swift_beginAccess();
    sub_1000107AC(v2, v0 + v4, &qword_100648D98, &qword_100537EC0);
    swift_endAccess();
    v5 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
    swift_beginAccess();
    sub_1000108DC(v0 + v5, v2, &qword_100648D98, &qword_100537EC0);
  }

  else
  {
    v7 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
    swift_beginAccess();
    sub_1000108DC(v0 + v7, v2, &qword_100648D98, &qword_100537EC0);
    v8 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
    swift_beginAccess();
    sub_1000107AC(v2, v0 + v8, &qword_100648D98, &qword_100537EC0);
    swift_endAccess();
    v9 = type metadata accessor for Lyrics.Transliteration(0);
    (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  }

  v6 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_1000107AC(v2, v0 + v6, &qword_100648D98, &qword_100537EC0);
  swift_endAccess();
}

void Lyrics.line(before:useOriginalLines:)(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a1)
  {
    v6 = sub_100455668(*(v3 + 48));
    if (!v6[2])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v3 + 40);

    if (!v6[2])
    {
LABEL_6:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
LABEL_28:

      return;
    }
  }

  sub_100035868((v6 + 4), &v34);
  v8 = *(&v35 + 1);
  v7 = v36;
  sub_100008C70(&v34, *(&v35 + 1));
  v9 = (*(*(v7 + 8) + 8))(v8);
  sub_100008D24(&v34);
  if (v9 > a3)
  {
    goto LABEL_6;
  }

  v10 = v6[2];
  v27 = a2;
  if (!v10)
  {
    goto LABEL_13;
  }

  sub_100035868(&v6[5 * v10 - 1], &v34);
  sub_100004CB8(&qword_100648E48, &unk_1005399E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!v6[2])
  {
    goto LABEL_34;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v11 = v6[2];
    if (v11)
    {
LABEL_12:
      v12 = v11 - 1;
      sub_100008D24(&v6[5 * v11 - 1]);
      v6[2] = v12;
LABEL_13:
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      v13 = v6[2];
      if (!v13)
      {
LABEL_27:
        v26 = v35;
        *v27 = v34;
        *(v27 + 16) = v26;
        *(v27 + 32) = v36;
        goto LABEL_28;
      }

      v14 = 0;
      v15 = v13 - 1;
      v16 = v6 + 4;
      v17 = v13 - 1;
      while (1)
      {
        if (__OFSUB__(v17, v14))
        {
          __break(1u);
LABEL_30:
          __break(1u);
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

        v18 = v14 + (v17 - v14) / 2;
        if (__OFADD__(v14, (v17 - v14) / 2))
        {
          goto LABEL_30;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v18 >= v6[2])
        {
          goto LABEL_32;
        }

        sub_100035868(&v16[5 * v18], v31);
        v20 = v32;
        v19 = v33;
        sub_100008C70(v31, v32);
        v21 = (*(*(v19 + 8) + 8))(v20);
        v22 = v21;
        if (v18 >= v15)
        {
          break;
        }

        if (v18 + 1 >= v6[2])
        {
          goto LABEL_33;
        }

        sub_100035868(&v16[5 * v18 + 5], v28);
        v24 = v29;
        v23 = v30;
        sub_100008C70(v28, v29);
        v25 = (*(*(v23 + 8) + 8))(v24);
        sub_100008D24(v28);
        if (v22 > a3)
        {
          goto LABEL_16;
        }

        v14 = v18 + 1;
        if (v25 >= a3)
        {
LABEL_26:
          sub_10001074C(&v34, &qword_100648E50, &unk_100537F10);
          sub_100035868(v31, &v34);
          sub_100008D24(v31);
          goto LABEL_27;
        }

LABEL_17:
        sub_100008D24(v31);
        if (v17 < v14)
        {
          goto LABEL_27;
        }
      }

      if (v21 <= a3)
      {
        goto LABEL_26;
      }

LABEL_16:
      v17 = v18 - 1;
      goto LABEL_17;
    }
  }

  else
  {
LABEL_35:
    v6 = sub_100468AAC(v6);
    v11 = v6[2];
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void Lyrics.line(after:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  sub_100008C70(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v9 = *(v3 + 40);
  if (v8 >= *(v9 + 16))
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_11;
  }

  v10 = v9 + 40 * v8;
  sub_100035868(v10 + 32, v11);
  sub_100004CB8(&qword_100648E48, &unk_1005399E0);
  if (swift_dynamicCast())
  {

    goto LABEL_6;
  }

  if (v8 >= *(v9 + 16))
  {
    goto LABEL_12;
  }

  sub_100035868(v10 + 32, a2);
}

id sub_100460B20()
{
  result = [objc_allocWithZone(NLTokenizer) initWithUnit:0];
  qword_100648D70 = result;
  return result;
}

uint64_t sub_100460B58()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init()();
  qword_100648D78 = result;
  return result;
}

void sub_100460B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char **a8)
{

  v71._countAndFlagsBits = a3;
  v71._object = a4;
  _NSRange.init(range:in:)(a1, a2, a3, a4);
  v14 = 0;
  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  v69 = a6;
  while (1)
  {
LABEL_4:
    v19 = v14;
    __chkstk_darwin();
    swift_beginAccess();
    v20 = sub_100004CB8(&qword_1006494E0, &qword_1005389C0);
    Array.extractFirst(where:)(v20, &v72);
    swift_endAccess();
    v14 = v72;
    if (!v72)
    {
      if (*(v16 + 2))
      {
        v26 = 0.0;
        v28 = 0.0;
        if (v15)
        {
          [v15 startTime];
          v28 = v50;
        }

        if (v19)
        {
          [v19 endTime];
          v26 = v51;
        }

        v52 = *(v16 + 2);
        if (v52)
        {

          sub_100463968(0, v52, 0);
          v53 = v16;
          v54 = (v16 + 56);
          do
          {
            v56 = *(v54 - 1);
            v55 = *v54;
            v58 = _swiftEmptyArrayStorage[2];
            v57 = _swiftEmptyArrayStorage[3];

            if (v58 >= v57 >> 1)
            {
              sub_100463968((v57 > 1), v58 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v58 + 1;
            v59 = &_swiftEmptyArrayStorage[2 * v58];
            v59[4] = v56;
            v59[5] = v55;
            v54 += 7;
            --v52;
          }

          while (v52);
          v16 = v53;
        }

        else
        {
        }

        sub_100004CB8(&qword_100649518, &qword_100538AC0);
        sub_100042B08(&qword_100649520, &qword_100649518, &qword_100538AC0, &protocol conformance descriptor for [A]);
        v30 = sub_1004DD30C();
        v34 = v60;

        swift_beginAccess();
        v33 = *a8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a8 = v33;
        a7 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }

LABEL_37:

      return;
    }

    if (!v15)
    {
      v21 = v14;
      v15 = v14;
    }

    v22 = v14;
    v23 = [v22 lyricsText];
    v24 = [v23 string];
    if (!v24)
    {
      break;
    }

    v18 = v24;

    v19 = v22;
    [v19 endTime];
    v26 = v25;
    [v19 startTime];
    v28 = v27;
    [v19 characterRange];
    v30 = v29;
    [v19 characterRange];
    v31._countAndFlagsBits = a6;
    v31._object = a7;
    location = _NSRange.convert(from:to:preserveLength:)(v31, v71, 0).location;
    if (v33)
    {

      v17 = v18;
      v18 = v19;
      goto LABEL_3;
    }

    v34 = location;
    v35 = [v18 length];
    if ((v35 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v36 = v35;
    if (v35)
    {
      v65 = v15;
      v37 = 0;
      v38 = (v26 - v28) / v30;
      v67 = v34;
      v68 = a7;
      while (1)
      {
        v39 = __OFADD__(v34, v37);
        v34 += v37;
        if (v39)
        {
          break;
        }

        [v19 startTime];
        v26 = v40;
        [v19 startTime];
        v28 = v41;
        v42 = v16;
        v43 = [v18 substringWithRange:{v37, 1}];
        v44 = sub_1004DD43C();
        v70 = v45;

        v46 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_100462620(0, *(v42 + 2) + 1, 1, v42);
        }

        v30 = *(v46 + 2);
        v47 = *(v46 + 3);
        v48 = v46;
        if (v30 >= v47 >> 1)
        {
          v48 = sub_100462620((v47 > 1), v30 + 1, 1, v46);
        }

        *(v48 + 2) = v30 + 1;
        v16 = v48;
        v49 = &v48[56 * v30];
        *(v49 + 4) = v38 * v37 + v26;
        *(v49 + 5) = v38 * (v37 + 1) + v28;
        *(v49 + 6) = v44;
        *(v49 + 7) = v70;
        *(v49 + 8) = v34;
        *(v49 + 72) = vdupq_n_s64(1uLL);
        ++v37;
        v34 = v67;
        a7 = v68;
        if (v37 == v36)
        {

          v15 = v65;
          a6 = v69;
          goto LABEL_4;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      v33 = sub_1004624FC(0, *(v33 + 2) + 1, 1, v33);
      *a8 = v33;
LABEL_34:
      v63 = *(v33 + 2);
      v62 = *(v33 + 3);
      if (v63 >= v62 >> 1)
      {
        v33 = sub_1004624FC((v62 > 1), v63 + 1, 1, v33);
        *a8 = v33;
      }

      *(v33 + 2) = v63 + 1;
      v64 = &v33[56 * v63];
      *(v64 + 4) = v28;
      *(v64 + 5) = v26;
      *(v64 + 6) = v30;
      *(v64 + 7) = v34;
      *(v64 + 8) = v16;
      *(v64 + 9) = 0;
      v64[80] = 1;
      swift_endAccess();
      v15 = a7;
      goto LABEL_37;
    }

    v17 = v19;
    a6 = v69;
LABEL_3:
  }

  __break(1u);
}

double sub_100461198(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (qword_100648BB0 != -1)
  {
    swift_once();
  }

  v4 = qword_100648D70;
  v5 = sub_1004DD3FC();
  [v4 setString:v5];

  *a3 = sub_1004DDE8C();

  return result;
}

BOOL sub_100461280(id *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = *a1;
  [*a1 characterRange];
  v10._countAndFlagsBits = a2;
  v10._object = a3;
  v11._countAndFlagsBits = a4;
  v11._object = a5;
  v12 = _NSRange.convert(from:to:preserveLength:)(v10, v11, 0);
  if (!v13)
  {
    return _NSRange.intersects(_:)(v12);
  }

  if (qword_100648BC0 != -1)
  {
    swift_once();
  }

  v14 = sub_1004D966C();
  sub_100035430(v14, static Logger.lyrics);
  v15 = v9;

  swift_errorRetain();
  v16 = sub_1004D964C();
  v17 = sub_1004DDF7C();

  if (os_log_type_enabled(v16, v17))
  {
    v25 = v17;
    v18 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v18 = 136446978;
    [v15 characterRange];
    v19 = sub_1004DE72C();
    v21 = sub_1004633D0(v19, v20, &v26);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_1004633D0(a4, a5, &v26);
    *(v18 + 22) = 2082;
    *(v18 + 24) = sub_1004633D0(a2, a3, &v26);
    *(v18 + 32) = 2114;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 34) = v22;
    *v24 = v22;
    _os_log_impl(&_mh_execute_header, v16, v25, "    Wasn't able to convert syllable range from primaryVocalText to lyricsText indicating a parsing issue.\n    MSVLyricsWord.characterRange=%{public}s\n    primaryVocalsText=%{public}s\n    lyricsText=%{public}s\n    thrownError=%{public}@", v18, 0x2Au);
    sub_10001074C(v24, &qword_100649510, qword_1005389F0);

    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

void sub_10046155C(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v39 = a1[4];
  v8 = *(v7 + 16);
  v9 = 0;
  if (!v8)
  {
    v11 = 0.0;
    v14 = 0;
LABEL_14:

    goto LABEL_15;
  }

  [*(v7 - 8 + 40 * v8) endTime];
  v11 = v10;
  if (!*(v7 + 16) || ([*(v7 + 32) startTime], v11 = v11 - v12, !*(v7 + 16)))
  {
    v14 = 0;
    goto LABEL_14;
  }

  [*(v7 + 32) startTime];
  v14 = v13;
  v15 = *(v7 + 16);
  if (!v15)
  {
    goto LABEL_14;
  }

  [*(v7 - 8 + 40 * v15) endTime];
  v9 = v16;
  v17 = *(v7 + 16);
  if (!v17)
  {
    goto LABEL_14;
  }

  v36 = a2;
  v37 = v5;
  v38 = a3;

  sub_1004639C8(0, v17, 0);
  v18 = (v7 + 64);
  do
  {
    v19 = *(v18 - 3);
    v20 = *(v18 - 2);
    v21 = *(v18 - 1);
    v40 = *v18;
    v22 = *(v18 - 4);

    [v22 startTime];
    v24 = v23;
    [v22 endTime];
    v26 = v25;

    v28 = _swiftEmptyArrayStorage[2];
    v27 = _swiftEmptyArrayStorage[3];
    if (v28 >= v27 >> 1)
    {
      sub_1004639C8((v27 > 1), v28 + 1, 1);
    }

    v18 += 5;
    _swiftEmptyArrayStorage[2] = v28 + 1;
    v29 = &_swiftEmptyArrayStorage[7 * v28];
    v29[4] = v24;
    v29[5] = v26;
    v29[6] = v19;
    v29[7] = v20;
    v29[8] = v21;
    v29[9] = v40;
    v29[10] = v39;
    --v17;
  }

  while (v17);
  a3 = v38;
  v5 = v37;
  a2 = v36;
LABEL_15:
  v30 = 1;
  v31 = 0.0;
  if ((a2 & 1) != 0 && v11 > 1.0 && v39 <= 7)
  {
    v33 = 2.0;
    if (v11 <= 2.0)
    {
      v33 = v11;
    }

    v34 = v33 + -1.0;
    v31 = 0.0;
    if (v11 < 1.0)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v34;
    }

    if (v35 > 0.0)
    {
      v30 = 0;
      v31 = v35;
    }
  }

  *a3 = v14;
  *(a3 + 8) = v9;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = _swiftEmptyArrayStorage;
  *(a3 + 40) = v31;
  *(a3 + 48) = v30;
}

uint64_t sub_1004617E4(id *a1)
{
  result = [*a1 type];
  if (result)
  {
    v2 = result;
    v3 = sub_1004DD43C();
    v5 = v4;

    if (v3 == 0x6E6F73726570 && v5 == 0xE600000000000000)
    {

      return 1;
    }

    else
    {
      v7 = sub_1004DF08C();

      return v7 & 1;
    }
  }

  return result;
}

uint64_t Lyrics.deinit()
{

  sub_10001074C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, &qword_100648D88, &qword_100537EA8);

  sub_10001074C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation, &qword_10064A830, &qword_100539D50);
  sub_10001074C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration, &qword_100648D98, &qword_100537EC0);
  sub_10001074C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation, &qword_10064A830, &qword_100539D50);
  sub_10001074C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration, &qword_100648D98, &qword_100537EC0);
  sub_10001074C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration, &qword_100648D98, &qword_100537EC0);
  sub_10001074C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration, &qword_100648D98, &qword_100537EC0);

  return v0;
}

uint64_t Lyrics.__deallocating_deinit()
{
  Lyrics.deinit();

  return swift_deallocClassInstance();
}

unint64_t Lyrics.ReportConcernData.dictionaryRepresentation()()
{
  v1 = sub_10046917C(_swiftEmptyArrayStorage);
  if (v0[1])
  {
    v8 = v0[1];

    sub_1004DEA4C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v1;
    sub_1004666DC(v6, 0xD000000000000017, 0x80000001004FAC20, isUniquelyReferenced_nonNull_native);
    v1 = v7;
  }

  v3 = v0[5];
  if (v3)
  {
    v7 = v0[4];
    v8 = v3;

    sub_1004DEA4C();
    v4 = swift_isUniquelyReferenced_nonNull_native();
    v7 = v1;
    sub_1004666DC(v6, 0x694C73636972796CLL, 0xEC0000006449656ELL, v4);
    return v7;
  }

  return v1;
}

uint64_t MSVLyricsAgent.isEqual(_:)(uint64_t a1)
{
  sub_1000108DC(a1, v48, &qword_10064ACD0, &qword_10053A090);
  if (v49)
  {
    sub_100006F10(0, &qword_100648E58, MSVLyricsAgent_ptr);
    if (swift_dynamicCast())
    {
      v2 = [v1 type];
      if (v2)
      {
        v3 = v2;
        v4 = sub_1004DD43C();
        v6 = v5;
      }

      else
      {
        v4 = 0;
        v6 = 0;
      }

      v7 = [v47 type];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1004DD43C();
        v11 = v10;

        if (v6)
        {
          if (!v11)
          {
            goto LABEL_42;
          }

          if (v4 == v9 && v6 == v11)
          {
          }

          else
          {
            v12 = sub_1004DF08C();

            if ((v12 & 1) == 0)
            {
              goto LABEL_49;
            }
          }
        }

        else if (v11)
        {
          goto LABEL_45;
        }
      }

      else if (v6)
      {
        goto LABEL_42;
      }

      v13 = [v1 name];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1004DD43C();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v18 = [v47 name];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1004DD43C();
        v22 = v21;

        if (v17)
        {
          if (!v22)
          {
            goto LABEL_42;
          }

          if (v15 == v20 && v17 == v22)
          {
          }

          else
          {
            v23 = sub_1004DF08C();

            if ((v23 & 1) == 0)
            {
              goto LABEL_49;
            }
          }
        }

        else if (v22)
        {
          goto LABEL_45;
        }
      }

      else if (v17)
      {
        goto LABEL_42;
      }

      v24 = [v1 artistID];
      if (v24)
      {
        v25 = v24;
        v26 = sub_1004DD43C();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = [v47 artistID];
      if (!v29)
      {
        if (v28)
        {
          goto LABEL_42;
        }

        goto LABEL_47;
      }

      v30 = v29;
      v31 = sub_1004DD43C();
      v33 = v32;

      if (v28)
      {
        if (!v33)
        {
          goto LABEL_42;
        }

        if (v26 == v31 && v28 == v33)
        {

          goto LABEL_47;
        }

        v34 = sub_1004DF08C();

        if (v34)
        {
LABEL_47:
          v35 = [v1 identifier];
          if (v35)
          {
            v36 = v35;
            v37 = sub_1004DD43C();
            v39 = v38;
          }

          else
          {
            v37 = 0;
            v39 = 0;
          }

          v42 = [v47 identifier];
          if (v42)
          {
            v43 = v42;
            v44 = sub_1004DD43C();
            v46 = v45;

            if (!v39)
            {

              if (!v46)
              {
                v40 = 1;
                return v40 & 1;
              }

              goto LABEL_43;
            }

            if (v46)
            {
              if (v37 != v44 || v39 != v46)
              {
                v40 = sub_1004DF08C();

                return v40 & 1;
              }

              goto LABEL_61;
            }
          }

          else if (!v39)
          {
LABEL_61:

            v40 = 1;
            return v40 & 1;
          }

LABEL_42:

LABEL_43:

          goto LABEL_50;
        }

LABEL_49:

        goto LABEL_50;
      }

      if (!v33)
      {
        goto LABEL_47;
      }

LABEL_45:
    }
  }

  else
  {
    sub_10001074C(v48, &qword_10064ACD0, &qword_10053A090);
  }

LABEL_50:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_1004620B0()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.lyrics);
  sub_100035430(v0, static Logger.lyrics);
  return sub_1004D965C();
}

uint64_t static Logger.lyrics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100648BC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v3 = sub_100035430(v2, static Logger.lyrics);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1004621CC(void (*a1)(uint64_t *__return_ptr))
{
  a1(v3);
  v1 = sub_10046E06C(v3[1]);

  return v1;
}

char *sub_100462234(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_100463968(result, v5, 0);
  }

  return result;
}

uint64_t sub_1004622AC()
{
  sub_100004CB8(&qword_100649420, &qword_100538910);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

void *sub_10046230C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(&qword_100648D30, &qword_1005388B0);
  v10 = *(sub_100004CB8(&qword_100648D28, &unk_100537C40) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100004CB8(&qword_100648D28, &unk_100537C40) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1004624FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006493D0, &qword_1005388C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100462620(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006494E8, &qword_1005389C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100462748(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004CB8(&qword_1006494F0, &qword_1005389D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_1006494F8, &qword_1005389D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100462890(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004CB8(&qword_100649500, &qword_1005389E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_100649508, &qword_1005389E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004629D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100649438, &qword_100538928);
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

char *sub_100462AE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100649428, &qword_100538918);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100462BD8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004CB8(&qword_100649450, &qword_100538940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_100648E48, &unk_1005399E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100462D20(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100004CB8(a5, a6);
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

void *sub_100462EFC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004CB8(&qword_100648DF0, &qword_100537EE8);
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
    sub_100004CB8(&qword_100649468, &qword_100538958);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100463030(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006493E8, &qword_100538E80);
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

char *sub_100463134(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006493D8, &qword_1005388C8);
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

void *sub_100463240(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004CB8(&qword_100649418, &qword_100538908);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_100649420, &qword_100538910);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100463374(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1004633D0(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

unint64_t sub_1004633D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10046349C(v11, 0, 0, 1, a1, a2);
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
    sub_10000904C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008D24(v11);
  return v7;
}

unint64_t sub_10046349C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1004635A8(a5, a6);
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
    result = sub_1004DEB6C();
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

void *sub_1004635A8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1004635F4(a1, a2);
  sub_100463724(&off_1005FDE70);
  return v3;
}

void *sub_1004635F4(uint64_t a1, unint64_t a2)
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

  v6 = sub_100472448(v5, 0);
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

  result = sub_1004DEB6C();
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
        v10 = sub_1004DD61C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100472448(v10, 0);
        result = sub_1004DEA9C();
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

void sub_100463724(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100463810(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *sub_100463810(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006494B0, &qword_1005389A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_100463904(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100463924(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void *sub_100463948(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100463A48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100463968(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100463C38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100463988(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100463D44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004639A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100463E68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004639C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100463FB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004639E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004640D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100463A08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004641DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100463A28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004642E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100463A48(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(&qword_100648D30, &qword_1005388B0);
  v10 = *(sub_100004CB8(&qword_100648D28, &unk_100537C40) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100004CB8(&qword_100648D28, &unk_100537C40) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100463C38(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100649438, &qword_100538928);
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

char *sub_100463D44(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006493D0, &qword_1005388C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100463E68(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004CB8(&qword_100649450, &qword_100538940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_100648E48, &unk_1005399E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100463FB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006494E8, &qword_1005389C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004640D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006493F0, &qword_1005388E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1004641DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100649410, &qword_100538900);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1004642E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006493B0, &qword_100538890);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_1004643E4(double *a1)
{
  sub_1004DF26C();
  Lyrics.Word.hash(into:)(v4);
  v2 = sub_1004DF2BC();

  return sub_100464450(a1, v2);
}

uint64_t sub_100464450(double *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v6 = a1;
  v7 = ~v4;
  v8 = *a1;
  v9 = *(v2 + 48);
  v30 = v2 + 64;
  v28 = v9;
  v29 = ~v4;
  while (1)
  {
    v10 = v9 + 56 * v5;
    if (*v10 != v8 || *(v10 + 8) != v6[1])
    {
      goto LABEL_4;
    }

    result = *(v10 + 16);
    v12 = *(v10 + 32);
    v13 = *(v10 + 40);
    v27 = *(v10 + 48);
    if (result != *(v6 + 2) || *(v10 + 24) != *(v6 + 3))
    {
      result = sub_1004DF08C();
      v9 = v28;
      v7 = v29;
      v3 = v30;
      v6 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v15 = *(v6 + 4);
    v16 = *(v12 + 16);
    if (v16 != *(v15 + 16))
    {
      goto LABEL_4;
    }

    if (v16 && v12 != v15)
    {
      break;
    }

LABEL_18:
    if (v27)
    {
      if (v6[6])
      {
        return v5;
      }
    }

    else if ((v6[6] & 1) == 0 && v13 == v6[5])
    {
      return v5;
    }

LABEL_4:
    v5 = (v5 + 1) & v7;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  v18 = (v12 + 80);
  v19 = v15 + 40;
  while (v16)
  {
    if (*(v18 - 6) != *(v19 - 8) || *(v18 - 5) != *v19)
    {
      goto LABEL_4;
    }

    result = *(v18 - 4);
    v21 = *(v18 - 2);
    v22 = *(v18 - 1);
    v23 = *v18;
    v24 = *(v19 + 24);
    v25 = *(v19 + 32);
    v26 = *(v19 + 40);
    if (result != *(v19 + 8) || *(v18 - 3) != *(v19 + 16))
    {
      result = sub_1004DF08C();
      v9 = v28;
      v7 = v29;
      v3 = v30;
      v6 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v21 != v24 || v22 != v25 || *&v23 != v26)
    {
      goto LABEL_4;
    }

    v18 += 7;
    v19 += 56;
    if (!--v16)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void sub_100464640(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004CB8(&qword_100649488, &qword_100538978);
  v46 = v4;
  v6 = sub_1004DED9C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v45 = v5;
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 56);
      v25 = (*(v5 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = (v24 + 88 * v23);
      if (v46)
      {
        v48 = *v28;
        v47 = *(v28 + 1);
        v29 = *(v28 + 5);
        v51 = *(v28 + 3);
        v52 = v29;
        v30 = *(v28 + 7);
        v31 = *(v28 + 9);
      }

      else
      {
        v32 = *(v28 + 1);
        *v50 = *v28;
        *&v50[16] = v32;
        v34 = *(v28 + 3);
        v33 = *(v28 + 4);
        v35 = v28[10];
        *&v50[32] = *(v28 + 2);
        *&v50[80] = v35;
        *&v50[48] = v34;
        *&v50[64] = v33;
        v48 = *v50;
        v47 = *&v50[8];

        sub_10046F9B4(v50, v49);
        v51 = *&v50[24];
        v52 = *&v50[40];
        v30 = *&v50[56];
        v31 = *&v50[72];
      }

      v53 = v30;
      v54 = v31;
      sub_1004DF26C();
      sub_1004DD55C();
      v36 = sub_1004DF2BC();
      v37 = -1 << *(v7 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v14 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v14 + 8 * v39);
          if (v43 != -1)
          {
            v15 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v38) & ~*(v14 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = *(v7 + 56) + 88 * v15;
      *(v17 + 8) = v47;
      v18 = v52;
      *(v17 + 24) = v51;
      *(v17 + 40) = v18;
      v19 = v54;
      *(v17 + 56) = v53;
      *v17 = v48;
      *(v17 + 72) = v19;
      ++*(v7 + 16);
      v5 = v45;
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
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v2;
    if (v44 >= 64)
    {
      bzero(v9, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1004649A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = *(type metadata accessor for Lyrics.Transliteration(0) - 8);
  __chkstk_darwin();
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  sub_100004CB8(&qword_100649490, &qword_100538980);
  v40 = v4;
  v7 = sub_1004DED9C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v37 = v2;
    v38 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = *(v6 + 56);
      v23 = (*(v6 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v39 + 72);
      v27 = v22 + v26 * v21;
      if (v40)
      {
        sub_10046E230(v27, v41, type metadata accessor for Lyrics.Transliteration);
      }

      else
      {
        sub_10046DD7C(v27, v41, type metadata accessor for Lyrics.Transliteration);
      }

      sub_1004DF26C();
      sub_1004DD55C();
      v28 = sub_1004DF2BC();
      v29 = -1 << *(v8 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      sub_10046E230(v41, *(v8 + 56) + v26 * v16, type metadata accessor for Lyrics.Transliteration);
      ++*(v8 + 16);
      v6 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v6 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v3 = v8;
}

void sub_100464D18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = *(type metadata accessor for Lyrics.Translation(0) - 8);
  __chkstk_darwin();
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  sub_100004CB8(&qword_100649478, &qword_100538968);
  v40 = v4;
  v7 = sub_1004DED9C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v37 = v2;
    v38 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = *(v6 + 56);
      v23 = (*(v6 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v39 + 72);
      v27 = v22 + v26 * v21;
      if (v40)
      {
        sub_10046E230(v27, v41, type metadata accessor for Lyrics.Translation);
      }

      else
      {
        sub_10046DD7C(v27, v41, type metadata accessor for Lyrics.Translation);
      }

      sub_1004DF26C();
      sub_1004DD55C();
      v28 = sub_1004DF2BC();
      v29 = -1 << *(v8 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      sub_10046E230(v41, *(v8 + 56) + v26 * v16, type metadata accessor for Lyrics.Translation);
      ++*(v8 + 16);
      v6 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v6 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v3 = v8;
}

void sub_100465090(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004CB8(&qword_100649440, &qword_100538930);
  v39 = v4;
  v6 = sub_1004DED9C();
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v39)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v42 = *(v27 + 32);
        v40 = v28;
        v41 = v29;
      }

      else
      {
        sub_100010678(v27, &v40);
      }

      sub_1004DF26C();
      sub_1004DD55C();
      v30 = sub_1004DF2BC();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v40;
      v19 = v41;
      *(v17 + 32) = v42;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
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
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_100465360(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004CB8(&qword_1006493C8, &qword_1005388B8);
  v53 = v4;
  v6 = sub_1004DED9C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v49 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v50 = v12;
    v51 = v6;
    v52 = v5;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v58 = (v11 - 1) & v11;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(v5 + 48) + 56 * v19;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v26 = *(v21 + 32);
      v57 = *(v21 + 40);
      v56 = *(v21 + 48);
      v55 = *(v20 + 8 * v19);
      if ((v53 & 1) == 0)
      {
      }

      sub_1004DF26C();
      if (v22 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v22;
      }

      sub_1004DF2AC(*&v27);
      if (v23 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v23;
      }

      sub_1004DF2AC(*&v28);
      v54 = v24;
      sub_1004DD55C();
      v59 = v26;
      v29 = *(v26 + 16);
      sub_1004DF27C(v29);
      if (v29)
      {
        v30 = (v26 + 80);
        do
        {
          v31 = *(v30 - 6);
          v32 = *(v30 - 5);
          v33 = *(v30 - 2);
          v34 = *(v30 - 1);
          v36 = *v30;
          v30 += 7;
          v35 = *&v36;
          if (v31 == 0.0)
          {
            v31 = 0.0;
          }

          sub_1004DF2AC(*&v31);
          if (v32 == 0.0)
          {
            v37 = 0.0;
          }

          else
          {
            v37 = v32;
          }

          sub_1004DF2AC(*&v37);

          sub_1004DD55C();
          sub_1004DF27C(v33);
          sub_1004DF27C(v34);
          sub_1004DF27C(v35);

          --v29;
        }

        while (v29);
      }

      if (v56)
      {
        sub_1004DF27C(0);
        v7 = v51;
        v5 = v52;
        v38 = v57;
      }

      else
      {
        sub_1004DF27C(1uLL);
        v38 = v57;
        if ((v57 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v39 = v57;
        }

        else
        {
          v39 = 0;
        }

        sub_1004DF2AC(v39);
        v7 = v51;
        v5 = v52;
      }

      v40 = sub_1004DF2BC();
      v41 = -1 << *(v7 + 32);
      v42 = v40 & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v13 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        v11 = v58;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v13 + 8 * v43);
          if (v47 != -1)
          {
            v14 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_55:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v42) & ~*(v13 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v11 = v58;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v7 + 48) + 56 * v14;
      *v15 = v22;
      *(v15 + 8) = v23;
      *(v15 + 16) = v54;
      *(v15 + 24) = v25;
      *(v15 + 32) = v59;
      *(v15 + 40) = v38;
      *(v15 + 48) = v56;
      *(*(v7 + 56) + 8 * v14) = v55;
      ++*(v7 + 16);
      v12 = v50;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_55;
      }

      if (v8 >= v12)
      {
        break;
      }

      v18 = v49[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v58 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v53 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_53;
    }

    v48 = 1 << *(v5 + 32);
    v3 = v2;
    if (v48 >= 64)
    {
      bzero(v49, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v49 = -1 << v48;
    }

    *(v5 + 16) = 0;
  }

LABEL_53:
  *v3 = v7;
}