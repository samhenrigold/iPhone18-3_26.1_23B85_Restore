uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}

id sub_100002238(uint64_t a1)
{
  if (a1)
  {
    sub_10000A73C();
  }

  if (qword_10001A7F8 != -1)
  {
    sub_10000A768();
  }

  v1 = qword_10001A7F0;

  return v1;
}

void sub_100002284(id a1)
{
  qword_10001A7F0 = os_log_create("com.apple.CarPlayWallpaper", "Default");

  _objc_release_x1();
}

void sub_100002EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002F18(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = [WeakRetained wallpaperCache];
    v7 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100003038;
    v10[3] = &unk_100014750;
    objc_copyWeak(v13, (a1 + 48));
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v11 = v8;
    v13[1] = v9;
    v12 = *(a1 + 32);
    [v6 saveImage:v3 withKey:v7 completion:v10];

    objc_destroyWeak(v13);
  }
}

void sub_100003038(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained wallpaper];
  v6 = [v5 identifier];
  v7 = [*(a1 + 32) identifier];
  if ([v6 isEqualToString:v7])
  {
    v8 = *(a1 + 56);
    v9 = [WeakRetained userInterfaceStyle];

    if (v8 == v9)
    {
      v10 = sub_100002238(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(a1 + 32) identifier];
        v12 = *(a1 + 40);
        v13 = 138543618;
        v14 = v11;
        v15 = 2114;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Displaying cached image %{public}@ (%{public}@)", &v13, 0x16u);
      }

      [WeakRetained setCachedWallpaperImage:v3];
    }
  }

  else
  {
  }
}

void sub_100003FF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) layer];
  v4 = [v2 createImageFromLayer:v3];

  v5 = sub_100002238(0);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 64))
      {
        v7 = @"dark";
      }

      else
      {
        v7 = @"light";
      }

      v8 = [*(a1 + 48) wallpaper];
      v9 = [v8 identifier];
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Generated %{public}@ image for wallpaper %{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10000A94C(a1);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000047B4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id CPWWallpaperImageCache.__allocating_init(imageCache:imageIDsCache:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC16CarPlayWallpaper22CPWWallpaperImageCache_imageCache] = a1;
  *&v5[OBJC_IVAR____TtC16CarPlayWallpaper22CPWWallpaperImageCache_imageIDsCache] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id CPWWallpaperImageCache.init(imageCache:imageIDsCache:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC16CarPlayWallpaper22CPWWallpaperImageCache_imageCache] = a1;
  *&v2[OBJC_IVAR____TtC16CarPlayWallpaper22CPWWallpaperImageCache_imageIDsCache] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CPWWallpaperImageCache();
  return objc_msgSendSuper2(&v4, "init");
}

Swift::Void __swiftcall CPWWallpaperImageCache.updateCacheVersionIfNeeded(version:)(Swift::Int version)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100004B90(0, &qword_10001A5B8, OS_dispatch_queue_ptr);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if ([*&v2[OBJC_IVAR____TtC16CarPlayWallpaper22CPWWallpaperImageCache_imageIDsCache] version] != version)
    {
      static os_log_type_t.error.getter();
      sub_100004B90(0, &qword_10001A5C0, OS_os_log_ptr);
      v9 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      v10 = *&v2[OBJC_IVAR____TtC16CarPlayWallpaper22CPWWallpaperImageCache_imageCache];
      v11 = swift_allocObject();
      *(v11 + 16) = v2;
      *(v11 + 24) = version;
      aBlock[4] = sub_100004C10;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000093A4;
      aBlock[3] = &unk_1000147E8;
      v12 = _Block_copy(aBlock);
      v13 = v2;

      [v10 removeAllImagesWithCompletion:v12];
      _Block_release(v12);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100004B90(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100004BD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100004C10()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16CarPlayWallpaper22CPWWallpaperImageCache_imageIDsCache);
  [v1 setVersion:*(v0 + 24)];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v1 setEntries:isa];
}

uint64_t sub_100004C98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

UIImage_optional __swiftcall CPWWallpaperImageCache.image(with:)(Swift::String with)
{
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100004B90(0, &qword_10001A5B8, OS_dispatch_queue_ptr);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v7 = _dispatchPreconditionTest(_:)();
  v8 = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = *(v2 + OBJC_IVAR____TtC16CarPlayWallpaper22CPWWallpaperImageCache_imageCache);
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 imageWith:v11];

    if (v12)
    {
      sub_100005288();
    }

    v8 = v12;
  }

  else
  {
    __break(1u);
  }

  result.value.super.isa = v8;
  result.is_nil = v9;
  return result;
}

void CPWWallpaperImageCache.save(image:with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = (aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100004B90(0, &qword_10001A5B8, OS_dispatch_queue_ptr);
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v17 = *&v6[OBJC_IVAR____TtC16CarPlayWallpaper22CPWWallpaperImageCache_imageCache];
    v18 = String._bridgeToObjectiveC()();
    v19 = swift_allocObject();
    v19[2] = v6;
    v19[3] = a2;
    v19[4] = a3;
    v19[5] = a4;
    v19[6] = a5;
    aBlock[4] = sub_10000568C;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000513C;
    aBlock[3] = &unk_100014838;
    v20 = _Block_copy(aBlock);
    v21 = v6;

    sub_100006418(a4, a5);

    [v17 saveWithImage:a1 with:v18 completion:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

void sub_10000513C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100005288()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100004B90(0, &qword_10001A5B8, OS_dispatch_queue_ptr);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC16CarPlayWallpaper22CPWWallpaperImageCache_imageIDsCache);
    v8 = String._bridgeToObjectiveC()();
    [v7 markEntryAsRecentlyUsed:v8];

    v9 = [v7 entries];
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = *(v1 + OBJC_IVAR____TtC16CarPlayWallpaper22CPWWallpaperImageCache_imageCache);
    v12 = [v11 allImageKeys];
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = sub_100008C6C(v13);

    v15 = sub_100007C30(v10, v14);

    v17 = 0;
    v18 = v15 + 7;
    v19 = 1 << *(v15 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v15[7];
    v22 = (v19 + 63) >> 6;
    *&v16 = 136446210;
    v32 = v16;
    v33 = v15;
    v34 = v11;
    while (v21)
    {
LABEL_11:
      v25 = (v15[6] + ((v17 << 10) | (16 * __clz(__rbit64(v21)))));
      v27 = *v25;
      v26 = v25[1];

      v28 = static os_log_type_t.info.getter();
      sub_100004B90(0, &qword_10001A5C0, OS_os_log_ptr);
      v29 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v29, v28))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v35 = v31;
        *v30 = v32;
        *(v30 + 4) = sub_100007538(v27, v26, &v35);
        _os_log_impl(&_mh_execute_header, v29, v28, "Removing cached wallpaper: %{public}s", v30, 0xCu);
        sub_1000092D8(v31);
        v15 = v33;

        v11 = v34;
      }

      v21 &= v21 - 1;
      v23 = String._bridgeToObjectiveC()();

      [v11 removeImageWith:v23];
    }

    while (1)
    {
      v24 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v24 >= v22)
      {

        return;
      }

      v21 = v18[v24];
      ++v17;
      if (v21)
      {
        v17 = v24;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10000563C()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10000568C(uint64_t a1)
{
  v3 = *(v1 + 40);
  if (a1)
  {
    sub_100005288();
  }

  if (v3)
  {
    v3(a1);
  }
}

void CPWMappedImageCache.__allocating_init(cacheID:persistenceOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = objc_allocWithZone(BSUIMappedImageCache);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithUniqueIdentifier:v7];

  if (v8)
  {

    *&v5[OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_cache] = v8;
    *&v5[OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_persistenceOptions] = a3;
    v9.receiver = v5;
    v9.super_class = v3;
    objc_msgSendSuper2(&v9, "init");
  }

  else
  {
    __break(1u);
  }
}

void CPWMappedImageCache.init(cacheID:persistenceOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(BSUIMappedImageCache);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithUniqueIdentifier:v6];

  if (v7)
  {

    *&v3[OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_cache] = v7;
    *&v3[OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_persistenceOptions] = a3;
    v8.receiver = v3;
    v8.super_class = type metadata accessor for CPWMappedImageCache();
    objc_msgSendSuper2(&v8, "init");
  }

  else
  {
    __break(1u);
  }
}

UIImage_optional __swiftcall CPWMappedImageCache.image(with:)(Swift::String with)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_cache);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 imageForKey:v3];

  v6 = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

void CPWMappedImageCache.save(image:with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_cache);
  v10 = String._bridgeToObjectiveC()();
  v11 = *(v5 + OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_persistenceOptions);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v14[4] = sub_100005E54;
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100005E60;
  v14[3] = &unk_100014888;
  v13 = _Block_copy(v14);
  sub_100006418(a4, a5);

  [v9 setImage:a1 forKey:v10 withPersistenceOptions:v11 completion:v13];
  _Block_release(v13);
}

uint64_t sub_100005BA4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004B90(0, &qword_10001A5B8, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a1;
  aBlock[4] = sub_1000092A8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000093A4;
  aBlock[3] = &unk_100014B08;
  v14 = _Block_copy(aBlock);
  sub_100006418(a2, a3);
  v15 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000915C();
  sub_100006C80(&qword_10001A698, &unk_10000D4A0);
  sub_1000091B4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_100005E60(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

Swift::Void __swiftcall CPWMappedImageCache.removeImage(with:)(Swift::String with)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_cache);
  v3 = String._bridgeToObjectiveC()();
  [v2 removeImageForKey:v3];
}

void CPWMappedImageCache.removeAllImages(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_cache);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_1000063CC;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000093A4;
  v8[3] = &unk_1000148D8;
  v7 = _Block_copy(v8);
  sub_100006418(a1, a2);

  [v5 removeAllImagesWithCompletion:v7];
  _Block_release(v7);
}

uint64_t sub_100006128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004B90(0, &qword_10001A5B8, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_10000912C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000093A4;
  aBlock[3] = &unk_100014AB8;
  v13 = _Block_copy(aBlock);
  sub_100006418(a1, a2);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000915C();
  sub_100006C80(&qword_10001A698, &unk_10000D4A0);
  sub_1000091B4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v16);
}

uint64_t sub_1000063D4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100006418(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id CPWMappedImageCache.allImageKeys.getter()
{
  result = [*(v0 + OBJC_IVAR____TtC16CarPlayWallpaper19CPWMappedImageCache_cache) allKeys];
  if (result)
  {
    v2 = result;
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CPWMappedImageCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CPWPreferencesLRUCache.__allocating_init(capacity:domain:versionKey:cachedDataKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = objc_allocWithZone(v7);
  *&v9[OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_capacity] = a1;
  v10 = String._bridgeToObjectiveC()();

  *&v9[OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_domain] = v10;
  v11 = String._bridgeToObjectiveC()();

  *&v9[OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_versionKey] = v11;
  v12 = String._bridgeToObjectiveC()();

  *&v9[OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_cachedDataKey] = v12;
  v14.receiver = v9;
  v14.super_class = v7;
  return objc_msgSendSuper2(&v14, "init");
}

id CPWPreferencesLRUCache.init(capacity:domain:versionKey:cachedDataKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_capacity] = a1;
  v8 = String._bridgeToObjectiveC()();

  *&v7[OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_domain] = v8;
  v9 = String._bridgeToObjectiveC()();

  *&v7[OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_versionKey] = v9;
  v10 = String._bridgeToObjectiveC()();

  *&v7[OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_cachedDataKey] = v10;
  v12.receiver = v7;
  v12.super_class = type metadata accessor for CPWPreferencesLRUCache();
  return objc_msgSendSuper2(&v12, "init");
}

void CPWPreferencesLRUCache.version.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_versionKey);
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  CFPreferencesSetAppValue(v1, isa, *(v0 + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_domain));
}

void (*CPWPreferencesLRUCache.version.modify(CFIndex *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_versionKey);
  v4 = *(v1 + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_domain);
  a1[1] = v3;
  a1[2] = v4;
  *a1 = CFPreferencesGetAppIntegerValue(v3, v4, 0);
  return sub_100006B40;
}

void sub_100006B40(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  CFPreferencesSetAppValue(v2, isa, v1);
}

void *CPWPreferencesLRUCache.entries.getter()
{
  if (!CFPreferencesCopyAppValue(*(v0 + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_cachedDataKey), *(v0 + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_domain)))
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100006C80(&qword_10001A5F8, &qword_10000D3B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = v2;
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100006C80(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void CPWPreferencesLRUCache.entries.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_cachedDataKey);
  value = Array._bridgeToObjectiveC()().super.isa;

  CFPreferencesSetAppValue(v2, value, *(v1 + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_domain));
}

uint64_t (*CPWPreferencesLRUCache.entries.modify(void **a1))()
{
  a1[1] = v1;
  *a1 = CPWPreferencesLRUCache.entries.getter();
  return sub_100006DB4;
}

void sub_100006DB4(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_cachedDataKey);
  if (a2)
  {

    value = Array._bridgeToObjectiveC()().super.isa;

    CFPreferencesSetAppValue(v3, value, *(v2 + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_domain));
  }

  else
  {
    value = Array._bridgeToObjectiveC()().super.isa;

    CFPreferencesSetAppValue(v3, value, *(v2 + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_domain));
  }
}

Swift::Void __swiftcall CPWPreferencesLRUCache.markEntryAsRecentlyUsed(_:)(Swift::String a1)
{
  v3 = v2;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = CFPreferencesAppSynchronize(*(v2 + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_domain));
  v7 = &swift_isaMask;
  v8 = *((swift_isaMask & *v2) + 0x90);
  v9 = v8(v6);
  v10 = sub_100008D04(v9, countAndFlagsBits, object);
  if (v11)
  {
    v12 = *(v9 + 2);
    v13 = v12;
    goto LABEL_7;
  }

  v13 = v10;
  v31 = v8;
  v8 = (v10 + 1);
  if (__OFADD__(v10, 1))
  {
    goto LABEL_48;
  }

  v30 = v2;
  v3 = *(v9 + 2);

  if (v8 != v3)
  {
    v7 = (16 * v13);
    do
    {
      if (v8 >= v3)
      {
        __break(1u);
        goto LABEL_42;
      }

      v24 = *(v7 + v9 + 48);
      v25 = *(v7 + v9 + 56);
      v26 = v24 == countAndFlagsBits && v25 == object;
      if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v8 != v13)
        {
          if (v13 >= v3)
          {
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            return;
          }

          v27 = &v9[16 * v13 + 32];
          v1 = *v27;
          v28 = *(v27 + 1);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_100008C58(v9);
          }

          v29 = &v9[16 * v13];
          *(v29 + 4) = v24;
          *(v29 + 5) = v25;

          if (v8 >= *(v9 + 2))
          {
            goto LABEL_47;
          }

          v23 = v7 + v9;
          *(v23 + 6) = v1;
          *(v23 + 7) = v28;
        }

        ++v13;
      }

      v8 = (v8 + 1);
      v3 = *(v9 + 2);
      v7 += 2;
    }

    while (v8 != v3);
  }

  v12 = *(v9 + 2);
  if (v12 < v13)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v3 = v30;
  v8 = v31;
  v7 = &swift_isaMask;
  if (v13 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_7:
  v1 = v13;
  if (!__OFADD__(v12, v13 - v12))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v13 > *(v9 + 3) >> 1)
    {
      if (v12 <= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v12;
      }

      v9 = sub_10000742C(isUniquelyReferenced_nonNull_native, v15, 1, v9);
    }

    sub_100008DA4(v13, v12, 0);
    v1 = *(v9 + 2);
    v16 = *(v9 + 3);

    if (v1 < v16 >> 1)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  v9 = sub_10000742C(1, v1 + 1, 1, v9);
LABEL_15:
  sub_100008F24(0, 0, 1, countAndFlagsBits, object);

  v18 = *(v9 + 2);
  v19 = *(v3 + OBJC_IVAR____TtC16CarPlayWallpaper22CPWPreferencesLRUCache_capacity);
  if (v19 < v18)
  {
    if (__OFSUB__(v18, v19))
    {
      goto LABEL_49;
    }

    v17 = sub_100007200(v18 - v19);
  }

  v20 = v8(v17);
  v21 = sub_10000739C(v9, v20);

  if (v21)
  {
  }

  else
  {
    v22 = *((*v7 & *v3) + 0x98);

    v22(v9);
  }
}

unint64_t sub_100007200(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(*v1 + 16);
      v3 = v2 >= result;
      result = v2 - result;
      if (v3)
      {
        return sub_100008E64(result, v2);
      }
    }

    __break(1u);
  }

  return result;
}

id sub_100007308(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000739C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

char *sub_10000742C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006C80(&qword_10001A688, &qword_10000D498);
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

unint64_t sub_100007538(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100007604(v11, 0, 0, 1, a1, a2);
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
    sub_100009324(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000092D8(v11);
  return v7;
}

unint64_t sub_100007604(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100007710(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_100007710(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000775C(a1, a2);
  sub_10000788C(&off_100014798);
  return v3;
}

char *sub_10000775C(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100007978(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100007978(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_10000788C(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_1000079EC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100007978(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100006C80(&qword_10001A6A8, qword_10000D530);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000079EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006C80(&qword_10001A6A8, qword_10000D530);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100007AE0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100008744(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t *sub_100007C30(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v56[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v47 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v52 = v4;
  v53 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v50 = v5 + 1;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v50;
    if (v50 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v53;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v56[1] = v50;

  v20 = *(v2 + 32);
  v48 = ((1 << v20) + 63) >> 6;
  v21 = 8 * v48;
  v22 = v53;
  if ((v20 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v41 = v21;

  v42 = v41;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v49 = &v46;
    __chkstk_darwin();
    v13 = &v46 - ((v23 + 15) & 0x3FFFFFFFFFFFFFF0);
    v55 = v7;
    memcpy(v13, v7, v23);
    v54 = v2;
    v24 = *(v2 + 16);
    v25 = *(v13 + 8 * v14) & ~v15;
    v51 = v13;
    *(v13 + 8 * v14) = v25;
    v26 = v24 - 1;
    v27 = v52;
    v7 = *(v52 + 16);
    v28 = v50;
    while (1)
    {
      v50 = v26;
      if (v28 == v7)
      {
LABEL_41:
        v2 = sub_100008520(v51, v48, v50, v54);
LABEL_42:

        return v2;
      }

      v14 = v28;
      while (1)
      {
        if (v28 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v27 + 16))
        {
          goto LABEL_45;
        }

        v30 = (v22 + 16 * v14);
        v31 = *v30;
        v15 = v30[1];
        ++v14;
        v2 = v54;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v32 = Hasher._finalize()();
        v33 = -1 << *(v2 + 32);
        v34 = v32 & ~v33;
        v13 = v34 >> 6;
        v35 = 1 << v34;
        if (((1 << v34) & v55[v34 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v22 = v53;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v36 = (*(v2 + 48) + 16 * v34);
      if (*v36 != v31 || v36[1] != v15)
      {
        v38 = ~v33;
        v2 = 1;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v34 = (v34 + 1) & v38;
          v13 = v34 >> 6;
          v35 = 1 << v34;
          if (((1 << v34) & v55[v34 >> 6]) == 0)
          {
            v27 = v52;
            goto LABEL_37;
          }

          v39 = (*(v54 + 48) + 16 * v34);
          if (*v39 == v31 && v39[1] == v15)
          {
            break;
          }
        }
      }

      v27 = v52;
      v29 = v51[v13];
      v51[v13] = v29 & ~v35;
      if ((v29 & v35) == 0)
      {
        goto LABEL_22;
      }

      v26 = v50 - 1;
      v22 = v53;
      if (__OFSUB__(v50, 1))
      {
        __break(1u);
      }

      v28 = v14;
      if (v50 == 1)
      {

        v2 = &_swiftEmptySetSingleton;
        goto LABEL_42;
      }
    }
  }

  v43 = swift_slowAlloc();
  memcpy(v43, v7, v42);
  v44 = v47;
  v45 = sub_10000833C(v43, v48, v2, v13, v56);

  if (!v44)
  {

    return v45;
  }

  __break(1u);
  return result;
}

Swift::Int sub_1000080DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100006C80(&qword_10001A6B0, &unk_10000D4B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t *sub_10000833C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_100008520(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v16 = Hasher._finalize()();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

Swift::Int sub_100008520(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100006C80(&qword_10001A6B0, &unk_10000D4B0);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100008744(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000080DC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000088C4();
      goto LABEL_16;
    }

    sub_100008A20(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000088C4()
{
  v1 = v0;
  sub_100006C80(&qword_10001A6B0, &unk_10000D4B0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

Swift::Int sub_100008A20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100006C80(&qword_10001A6B0, &unk_10000D4B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100008C6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100007AE0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100008D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_100008DA4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_100008E64(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_10000742C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_100008DA4(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_100008F24(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

void sub_100009030(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000907C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000908C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000090EC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000912C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_10000915C()
{
  result = qword_10001A690;
  if (!qword_10001A690)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001A690);
  }

  return result;
}

unint64_t sub_1000091B4()
{
  result = qword_10001A6A0;
  if (!qword_10001A6A0)
  {
    sub_100009218(&qword_10001A698, &unk_10000D4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001A6A0);
  }

  return result;
}

uint64_t sub_100009218(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100009260()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000092A8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

uint64_t sub_1000092D8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100009324(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t CPWAssetLibrary.wallpaperOverlayPath.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16CarPlayWallpaper15CPWAssetLibrary_wallpaperOverlayPath);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_100009564(uint64_t a1, unint64_t a2)
{
  sub_1000096A0(a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC16CarPlayWallpaper15CPWAssetLibrary_wallpaperOverlayPath);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return sub_100009890();
}

uint64_t sub_1000095CC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x70))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100009628(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  sub_1000096A0(v2, v3);
  v5 = (v4 + OBJC_IVAR____TtC16CarPlayWallpaper15CPWAssetLibrary_wallpaperOverlayPath);
  swift_beginAccess();
  *v5 = v2;
  v5[1] = v3;

  return sub_100009890();
}

void sub_1000096A0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = static os_log_type_t.debug.getter();
  sub_100004B90(0, &qword_10001A5C0, OS_os_log_ptr);
  log = static OS_os_log.default.getter();
  if (os_log_type_enabled(log, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = (v3 + OBJC_IVAR____TtC16CarPlayWallpaper15CPWAssetLibrary_wallpaperOverlayPath);
    swift_beginAccess();
    if (v8[1])
    {
      v9 = *v8;
      v10 = v8[1];
    }

    else
    {
      v10 = 0xE300000000000000;
      v9 = 7104878;
    }

    v11 = sub_100007538(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      a1 = 7104878;
      v12 = 0xE300000000000000;
    }

    v13 = sub_100007538(a1, v12, &v15);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, log, v6, "updating wallpaperOverlayPath from %s to %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100009890()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16CarPlayWallpaper15CPWAssetLibrary_observers) allObjects];
  sub_100006C80(&qword_10001A750, &qword_10000D528);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      (*((swift_isaMask & *v0) + 0x70))();
      if (v8)
      {
        v5 = String._bridgeToObjectiveC()();
      }

      else
      {
        v5 = 0;
      }

      [v6 assetLibraryDidUpdateWallpaperOverlayPath:v5];
      swift_unknownObjectRelease();

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v6 = *(v2 + 8 * v4 + 32);
    swift_unknownObjectRetain();
    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
}

id variable initialization expression of CPWAssetLibrary.observers()
{
  v0 = [objc_opt_self() hashTableWithOptions:5];

  return v0;
}

void *variable initialization expression of CPWAssetLibrary.cancellables()
{
  if (!(&_swiftEmptyArrayStorage >> 62) || !_CocoaArrayWrapper.endIndex.getter())
  {
    return &_swiftEmptySetSingleton;
  }

  return sub_10000A2C8(&_swiftEmptyArrayStorage);
}

uint64_t variable initialization expression of CPWAssetLibrary.assetManager()
{
  type metadata accessor for CAUAssetLibraryManager();
  swift_allocObject();
  return CAUAssetLibraryManager.init()();
}

char *CPWAssetLibrary.init()()
{
  v1 = v0;
  sub_100006C80(&qword_10001A6C0, &qword_10000D4D0);
  __chkstk_darwin();
  v3 = v21 - v2;
  v4 = sub_100006C80(&qword_10001A6C8, &qword_10000D4D8);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v21 - v6;
  v21[0] = sub_100006C80(&qword_10001A6D0, qword_10000D4E0);
  v8 = *(v21[0] - 8);
  __chkstk_darwin();
  v10 = v21 - v9;
  v11 = &v0[OBJC_IVAR____TtC16CarPlayWallpaper15CPWAssetLibrary_wallpaperOverlayPath];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC16CarPlayWallpaper15CPWAssetLibrary_observers;
  *&v1[v12] = [objc_opt_self() hashTableWithOptions:5];
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = sub_10000A2C8(&_swiftEmptyArrayStorage);
  }

  else
  {
    v13 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC16CarPlayWallpaper15CPWAssetLibrary_cancellables] = v13;
  v14 = OBJC_IVAR____TtC16CarPlayWallpaper15CPWAssetLibrary_assetManager;
  type metadata accessor for CAUAssetLibraryManager();
  swift_allocObject();
  *&v1[v14] = CAUAssetLibraryManager.init()();
  v15 = type metadata accessor for CPWAssetLibrary();
  v22.receiver = v1;
  v22.super_class = v15;
  v16 = objc_msgSendSuper2(&v22, "init");

  dispatch thunk of CAUAssetLibraryManager.$assetLibrary.getter();

  v17 = [objc_opt_self() mainRunLoop];
  v21[1] = v17;
  v18 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  sub_100004B90(0, &qword_10001A6F0, NSRunLoop_ptr);
  sub_10000A668(&qword_10001A6F8, &qword_10001A6C8, &qword_10000D4D8, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10000A558();
  Publisher.receive<A>(on:options:)();
  sub_10000A5C0(v3);

  (*(v5 + 8))(v7, v4);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10000A668(&qword_10001A708, &qword_10001A6D0, qword_10000D4E0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v19 = v21[0];
  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v19);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v16;
}

void sub_100009F70(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for CAUResource();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (v11)
    {
      (*(v4 + 104))(v6, enum case for CAUResource.wallpaperOverlay(_:), v3);
      dispatch thunk of CAUAssetLibrary.path(for:)();
      (*(v4 + 8))(v6, v3);
      v14 = URL.path(percentEncoded:)(0);
      countAndFlagsBits = v14._countAndFlagsBits;
      object = v14._object;
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0;
    }

    sub_1000096A0(countAndFlagsBits, object);
    v17 = &v13[OBJC_IVAR____TtC16CarPlayWallpaper15CPWAssetLibrary_wallpaperOverlayPath];
    swift_beginAccess();
    *v17 = countAndFlagsBits;
    v17[1] = object;

    sub_100009890();
  }
}

id CPWAssetLibrary.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPWAssetLibrary();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000A2C8(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100006C80(&qword_10001A738, &qword_10000D520);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_10000A6B0(&qword_10001A740, &protocol conformance descriptor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_10000A6B0(&qword_10001A748, &protocol conformance descriptor for AnyCancellable);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_10000A558()
{
  result = qword_10001A700;
  if (!qword_10001A700)
  {
    sub_100004B90(255, &qword_10001A6F0, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001A700);
  }

  return result;
}

uint64_t sub_10000A5C0(uint64_t a1)
{
  v2 = sub_100006C80(&qword_10001A6C0, &qword_10000D4D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A628()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A668(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100009218(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A6B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyCancellable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000A7BC(void *a1)
{
  v6 = [a1 identifier];
  sub_1000047D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000A850(void *a1)
{
  v6 = [a1 identifier];
  sub_1000047D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000A94C(uint64_t a1)
{
  v1 = [*(a1 + 48) wallpaper];
  v7 = [v1 identifier];
  sub_1000047D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}