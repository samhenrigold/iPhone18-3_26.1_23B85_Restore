uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

id sub_100001764(uint64_t a1)
{
  if (qword_10000D1F8[0] != -1)
  {
    sub_100003EE0();
  }

  v2 = qword_10000D1F0;

  return v2;
}

void sub_1000017A8(id a1)
{
  qword_10000D1F0 = os_log_create("com.apple.carplay.splashscreen", "General");

  _objc_release_x1();
}

void sub_100002310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002340(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissAlertAnimated:1];
}

void sub_100002384(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissAlertAnimated:1];
}

void sub_1000024B0(id a1, NSError *a2)
{
  v2 = sub_100001764(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100003EF4(v2);
  }
}

void sub_1000024F4(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000025EC;
  v5[3] = &unk_100008518;
  v2 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v2;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002644;
  v3[3] = &unk_100008540;
  v4 = *(a1 + 40);
  [UIView animateWithDuration:v5 animations:v3 completion:0.25];
}

id sub_1000025EC(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = *(a1 + 40);

  return [v3 setWallpaperStyle:0 withDuration:0.25];
}

id sub_100002644(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v1 = UIApp;

  return [v1 terminateWithSuccess];
}

void sub_100002868(id a1, NSError *a2)
{
  v2 = sub_100001764(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100003EF4(v2);
  }
}

id sub_100002994(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002A10;
  v3[3] = &unk_1000085B0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [BSUIAnimationFactory animateWithFactory:v1 actions:v3];
}

id sub_100002A10(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:1.0];

  [*(a1 + 32) configureBackgroundLayer];
  v3 = *(a1 + 32);

  return [v3 configureImages];
}

void sub_100002B3C(uint64_t a1, void *a2)
{
  v3 = [a2 events];
  if ((v3 & 0x10) != 0)
  {
    v4 = sub_100001764(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling home button action", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002C10;
    block[3] = &unk_1000085B0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

uint64_t sub_100002D04(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_100002E10()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100002E44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SplashScreenLogoViewHost();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100002EDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SplashScreenLogoViewHost();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002F10@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v51 = type metadata accessor for _ShapeSet();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for RoundedRectangle();
  v2 = __chkstk_darwin(v44);
  v45 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v38 - v4;
  v6 = type metadata accessor for Material._GlassVariant();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v38 - v12;
  __chkstk_darwin(v11);
  v15 = &v38 - v14;
  v16 = type metadata accessor for Material();
  v46 = *(v16 - 8);
  v47 = v16;
  __chkstk_darwin(v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = Image.init(_:bundle:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v42 = v59;
  v19 = v60;
  v20 = v61;
  v41 = v62;
  v40 = v63;
  v39 = v64;
  static Material._GlassVariant.text.getter();
  static Material._GlassVariant.widgets.getter();
  Material._GlassVariant.mix(with:by:)();
  v21 = *(v7 + 8);
  v21(v10, v6);
  v21(v13, v6);
  static Material._glass(_:)();
  v21(v15, v6);
  v22 = *(v44 + 20);
  v23 = enum case for RoundedCornerStyle.continuous(_:);
  v24 = type metadata accessor for RoundedCornerStyle();
  (*(*(v24 - 8) + 104))(&v5[v22], v23, v24);
  __asm { FMOV            V0.2D, #26.0 }

  *v5 = _Q0;
  v52 = v43;
  v53 = v42;
  v54 = v19;
  v55 = v20;
  v56 = v41;
  v57 = v40;
  v58 = v39;
  sub_100002D04(&qword_10000D0E8, &qword_100005458);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100005440;
  sub_100003478(v5, v45);
  sub_1000034DC();
  *(v30 + 32) = AnyShape.init<A>(_:)();
  v31 = v48;
  _ShapeSet.init(shapes:smoothness:)();
  sub_100002D04(&qword_10000D0F8, &qword_100005460);
  sub_100003534();
  v32 = v50;
  View.materialEffect(_:in:)();
  (*(v49 + 8))(v31, v51);
  sub_100003600(v5);
  (*(v46 + 8))(v18, v47);

  v33 = *(sub_100002D04(&qword_10000D108, &qword_100005468) + 36);
  v34 = enum case for ColorScheme.light(_:);
  v35 = type metadata accessor for ColorScheme();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v32 + v33, v34, v35);
  return (*(v36 + 56))(v32 + v33, 0, 1, v35);
}

uint64_t sub_100003478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000034DC()
{
  result = qword_10000D0F0;
  if (!qword_10000D0F0)
  {
    type metadata accessor for RoundedRectangle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000D0F0);
  }

  return result;
}

unint64_t sub_100003534()
{
  result = qword_10000D100;
  if (!qword_10000D100)
  {
    sub_1000035B8(&qword_10000D0F8, &qword_100005460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000D100);
  }

  return result;
}

uint64_t sub_1000035B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003600(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003700@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(a2 + 24) = &type metadata for SplashScreenLogoView;
  *(a2 + 32) = sub_100003918();
}

unint64_t sub_1000037EC()
{
  result = qword_10000D138;
  if (!qword_10000D138)
  {
    sub_1000035B8(&qword_10000D108, &qword_100005468);
    sub_1000035B8(&qword_10000D0F8, &qword_100005460);
    sub_100003534();
    swift_getOpaqueTypeConformance2();
    sub_1000038B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000D138);
  }

  return result;
}

unint64_t sub_1000038B4()
{
  result = qword_10000D140;
  if (!qword_10000D140)
  {
    sub_1000035B8(&qword_10000D148, qword_100005600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000D140);
  }

  return result;
}

unint64_t sub_100003918()
{
  result = qword_10000D150;
  if (!qword_10000D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000D150);
  }

  return result;
}

id sub_10000397C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10000D308 = result;
  return result;
}

uint64_t sub_1000039D0()
{
  v0 = type metadata accessor for ImageResource();
  sub_100003E7C(v0, qword_10000D330);
  sub_100003A9C(v0, qword_10000D330);
  if (qword_10000D300 != -1)
  {
    swift_once();
  }

  v1 = qword_10000D308;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100003A9C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003B90(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ImageResource();
  sub_100003E7C(v5, a2);
  sub_100003A9C(v5, a2);
  if (qword_10000D300 != -1)
  {
    swift_once();
  }

  v6 = qword_10000D308;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100003C7C()
{
  v0 = type metadata accessor for ImageResource();
  sub_100003E7C(v0, qword_10000D378);
  sub_100003A9C(v0, qword_10000D378);
  if (qword_10000D300 != -1)
  {
    swift_once();
  }

  v1 = qword_10000D308;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100003D48(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for ImageResource();

  return sub_100003A9C(v4, a2);
}

uint64_t sub_100003DC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ImageResource();
  v7 = sub_100003A9C(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t *sub_100003E7C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}