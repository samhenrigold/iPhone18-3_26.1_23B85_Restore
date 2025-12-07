void sub_10000182C(char *a1, const char *a2, uint64_t a3)
{
  v30 = a2;
  v5 = sub_100005014();
  v33 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005044();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&a1[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_dispatchGroup];
  dispatch_group_enter(v11);
  v12 = a1;
  sub_100004560(v12);

  dispatch_group_enter(v11);
  v13 = v12;
  sub_1000048D8(v13);

  dispatch_group_enter(v11);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = v13;
  sub_100002F20(sub_100004D94, v14);

  dispatch_group_enter(v11);
  v16 = DOCIntentLocationTypeCustomFolder;
  v17 = _DocumentManagerBundle();
  if (v17)
  {
    v18 = v17;
    v28._countAndFlagsBits = 0x8000000100005D70;
    v36._countAndFlagsBits = 0x7265646C6F46;
    v37._countAndFlagsBits = 0x617A696C61636F4CLL;
    v37._object = 0xEB00000000656C62;
    v36._object = 0xE600000000000000;
    v19.super.isa = v18;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    sub_100004FD4(v36, v37, v19, v38, 0xD000000000000028, v28);

    v20 = sub_100005054();

    v21 = [objc_opt_self() intentLocationWithIdentifier:v16 displayString:v20 type:v16];

    sub_100003B44(&qword_10000CE68, &qword_100005A38);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1000058D0;
    *(v22 + 32) = v21;
    v23 = v21;
    sub_100001F78(v22, v15, &OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_customFolder, "provideLocationOptionsCollection() received %ld custom location item. Error: %s", v29, v30);

    v24 = swift_allocObject();
    v25 = v30;
    v24[2] = v15;
    v24[3] = v25;
    v24[4] = a3;
    aBlock[4] = sub_100004DDC;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004F90;
    aBlock[3] = &unk_100008698;
    v26 = _Block_copy(aBlock);
    v27 = v15;

    sub_100005024();
    v34 = _swiftEmptyArrayStorage;
    sub_100003BD4(&qword_10000CE28, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003B44(&qword_10000CE30, &qword_100005A28);
    sub_100003C1C(&qword_10000CE38, &qword_10000CE30, &qword_100005A28);
    sub_100005114();
    sub_1000050A4();
    _Block_release(v26);
    (*(v33 + 8))(v7, v5);
    (*(v31 + 8))(v10, v32);
  }

  else
  {

    __break(1u);
  }
}

void sub_100001CEC(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_100005004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_favorites;
  *&a3[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_favorites] = a1;

  sub_100004FE4();
  v11 = a3;
  swift_errorRetain();
  v12 = sub_100004FF4();
  v13 = sub_100005094();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v11;
    v24 = v6;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 134218242;
    v17 = *&a3[v10];
    if (v17 >> 62)
    {
      v18 = sub_1000051A4();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v14;
    *(v15 + 4) = v18;

    *(v15 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v20 = sub_1000051B4();
      v22 = v21;
    }

    else
    {
      v22 = 0xE300000000000000;
      v20 = 7104878;
    }

    v23 = sub_100003C70(v20, v22, &v25);

    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "provideLocationOptionsCollection() received %ld favorites. Error: %s", v15, 0x16u);
    sub_100004DE8(v16);

    (*(v7 + 8))(v9, v24);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    v19 = v11;
  }

  dispatch_group_leave(*&v19[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_dispatchGroup]);
}

void sub_100001F78(uint64_t a1, char *a2, uint64_t *a3, const char *a4, ...)
{
  v8 = sub_100005004();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  *&a2[*a3] = a1;

  sub_100004FE4();
  v13 = a2;
  swift_errorRetain();
  v14 = sub_100004FF4();
  v15 = sub_100005094();

  if (os_log_type_enabled(v14, v15))
  {
    v21 = a4;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 134218242;
    v18 = *&a2[v12];
    if (v18 >> 62)
    {
      v19 = sub_1000051A4();
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v16 + 4) = v19;

    *(v16 + 12) = 2080;
    v20 = sub_100003C70(7104878, 0xE300000000000000, &v22);

    *(v16 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, v21, v16, 0x16u);
    sub_100004DE8(v17);
  }

  else
  {
  }

  (*(v9 + 8))(v11, v8);
  dispatch_group_leave(*&v13[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_dispatchGroup]);
}

void sub_1000021AC(void *a1, void (*a2)(id, void), uint64_t a3)
{
  v55 = a3;
  v56 = a2;
  v4 = sub_100005004();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004FE4();
  v8 = a1;
  v9 = sub_100004FF4();
  v10 = sub_100005094();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218496;
    v12 = *(&v8->isa + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_defaultLocations);
    if (v12 >> 62)
    {
      v13 = sub_1000051A4();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 4) = v13;
    *(v11 + 12) = 2048;
    v14 = *(&v8->isa + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_favorites);
    if (v14 >> 62)
    {
      v15 = sub_1000051A4();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 14) = v15;
    *(v11 + 22) = 2048;
    v16 = *(&v8->isa + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_tags);
    if (v16 >> 62)
    {
      v17 = sub_1000051A4();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 24) = v17;

    _os_log_impl(&_mh_execute_header, v9, v10, "provideLocationOptionsCollection() received %ld default locations %ld favorites and %ld tags.", v11, 0x20u);
  }

  else
  {

    v9 = v8;
  }

  (*(v5 + 8))(v7, v4);
  sub_100003B44(&qword_10000CE68, &qword_100005A38);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000058E0;
  v19 = _DocumentManagerBundle();
  if (!v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  v61._object = 0xEB00000000656C62;
  v51._countAndFlagsBits = 0x8000000100005DA0;
  v57._countAndFlagsBits = 0x6E6F697461636F4CLL;
  v57._object = 0xE900000000000073;
  v61._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.super.isa = v20;
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  sub_100004FD4(v57, v61, v21, v65, 0xD00000000000001ELL, v51);

  v22 = objc_allocWithZone(INObjectSection);

  v23 = sub_100005054();

  sub_100004F3C(0, &qword_10000CE60, DOCIntentLocation_ptr);
  isa = sub_100005074().super.isa;

  v25 = [v22 initWithTitle:v23 items:{isa, v55}];

  *(v18 + 32) = v25;
  v26 = _DocumentManagerBundle();
  if (!v26)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = v26;
  v52._countAndFlagsBits = 0x8000000100005DC0;
  v58._countAndFlagsBits = 0x657469726F766146;
  v58._object = 0xE900000000000073;
  v62._countAndFlagsBits = 0x617A696C61636F4CLL;
  v62._object = 0xEB00000000656C62;
  v28.super.isa = v27;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  sub_100004FD4(v58, v62, v28, v66, 0xD00000000000001ELL, v52);

  v29 = objc_allocWithZone(INObjectSection);

  v30 = sub_100005054();

  v31 = sub_100005074().super.isa;

  v32 = [v29 initWithTitle:v30 items:v31];

  *(v18 + 40) = v32;
  v33 = _DocumentManagerBundle();
  if (!v33)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v34 = v33;
  v53._countAndFlagsBits = 0x8000000100005DE0;
  v59._countAndFlagsBits = 1936154964;
  v59._object = 0xE400000000000000;
  v63._countAndFlagsBits = 0x617A696C61636F4CLL;
  v63._object = 0xEB00000000656C62;
  v35.super.isa = v34;
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  sub_100004FD4(v59, v63, v35, v67, 0xD000000000000019, v53);

  v36 = objc_allocWithZone(INObjectSection);

  v37 = sub_100005054();

  v38 = sub_100005074().super.isa;

  v39 = [v36 initWithTitle:v37 items:v38];

  *(v18 + 48) = v39;
  v40 = _DocumentManagerBundle();
  if (v40)
  {
    v41 = v40;
    v54._countAndFlagsBits = 0x8000000100005E00;
    v60._countAndFlagsBits = 0x462061206B636950;
    v60._object = 0xED00007265646C6FLL;
    v64._countAndFlagsBits = 0x617A696C61636F4CLL;
    v64._object = 0xEB00000000656C62;
    v42.super.isa = v41;
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    sub_100004FD4(v60, v64, v42, v68, 0xD000000000000022, v54);

    v43 = objc_allocWithZone(INObjectSection);

    v44 = sub_100005054();

    v45 = sub_100005074().super.isa;

    v46 = [v43 initWithTitle:v44 items:v45];

    *(v18 + 56) = v46;
    v47 = objc_allocWithZone(INObjectCollection);
    sub_100003B44(&qword_10000CE70, &qword_100005A40);
    v48 = sub_100005074().super.isa;

    v49 = [v47 initWithSections:v48];

    v50 = v49;
    v56(v49, 0);

    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_100002888(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100002968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_100004FA4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_100002A00()
{
  v1 = v0;
  v2 = sub_1000050D4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000050C4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100005044();
  __chkstk_darwin(v7 - 8);
  *&v1[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_defaultLocations] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_tags] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_favorites] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_customFolder] = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_dispatchQueue;
  sub_100004F3C(0, &qword_10000CE40, OS_dispatch_queue_ptr);
  sub_100005034();
  sub_1000050B4();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
  *&v1[v8] = sub_1000050F4();
  v9 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_dispatchGroup;
  *&v1[v9] = dispatch_group_create();
  v10 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_defaultLocationsSource;
  type metadata accessor for DefaultLocationsSource();
  *&v1[v10] = swift_allocObject();
  v11 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_tagsSource;
  type metadata accessor for TagItemsSource();
  *&v1[v11] = swift_allocObject();
  v12 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_favoritesSource;
  *&v1[v12] = [objc_allocWithZone(type metadata accessor for FavoritesItemsSource()) init];
  v13 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_pickFolderSource;
  *&v1[v13] = [objc_allocWithZone(type metadata accessor for PickFolderSource()) init];
  v14 = type metadata accessor for RecentsHomeScreenWidgetIntentHandler();
  v16.receiver = v1;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, "init");
}

void *sub_100002DF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v6 = _swiftEmptyArrayStorage;
    sub_100005174();
    v4 = a1 + 32;
    do
    {
      sub_100004E34(v4, &v5);
      sub_100004F3C(0, &unk_10000CE80, DOCTag_ptr);
      swift_dynamicCast();
      sub_100005154();
      sub_100005184();
      sub_100005194();
      sub_100005164();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_100002F20(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005014();
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005044();
  v8 = *(v19 - 8);
  __chkstk_darwin(v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v2[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_completion];
  v12 = *&v2[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_completion];
  v13 = *&v2[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_completion + 8];
  *v11 = a1;
  *(v11 + 1) = a2;

  sub_100003AA4(v12, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  aBlock[4] = sub_100003AEC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004F90;
  aBlock[3] = &unk_1000085A8;
  v15 = _Block_copy(aBlock);
  v16 = v2;
  sub_100005024();
  v21 = _swiftEmptyArrayStorage;
  sub_100003BD4(&qword_10000CE28, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003B44(&qword_10000CE30, &qword_100005A28);
  sub_100003C1C(&qword_10000CE38, &qword_10000CE30, &qword_100005A28);
  sub_100005114();
  sub_1000050E4();
  _Block_release(v15);
  (*(v20 + 8))(v7, v5);
  (*(v8 + 8))(v10, v19);
}

id sub_10000320C()
{
  v1 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource____lazy_storage___itemCollection;
  v2 = *(v0 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource____lazy_storage___itemCollection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource____lazy_storage___itemCollection);
  }

  else
  {
    v4 = [objc_opt_self() favoritesCollection];
    [v4 setDelegate:v0];
    [v4 setWorkingQueue:*(v0 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_queue)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1000032B8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_hasSeenInitiallyGatheredFavorites);
  *(v1 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_hasSeenInitiallyGatheredFavorites) = a1;
  if ((a1 & 1) != 0 && (v2 & 1) == 0)
  {
    v3 = (v1 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_completion);
    v4 = *(v1 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_completion);
    if (v4)
    {
      v5 = v3[1];
      sub_100003A94(*(v1 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_completion), v5);

      v4(v6, 0);
      sub_100003AA4(v4, v5);

      v7 = *v3;
    }

    else
    {
      v7 = 0;
    }

    v8 = v3[1];
    *v3 = 0;
    v3[1] = 0;
    sub_100003AA4(v7, v8);
    v9 = sub_10000320C();
    [v9 stopObserving];
  }
}

void sub_1000033C0(char a1)
{
  v2 = v1;
  v4 = sub_10000320C();
  v5 = [v4 items];

  sub_100004F3C(0, &qword_10000CE20, FPItem_ptr);
  v6 = sub_100005084();

  if (v6 >> 62)
  {
    v7 = sub_1000051A4();
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  sub_100005174();
  if (v7 < 0)
  {
    __break(1u);
    return;
  }

  v8 = objc_opt_self();
  v9 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = sub_100005134();
    }

    else
    {
      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    ++v9;
    v12 = [v8 intentLocationWithItem:v10];

    sub_100005154();
    sub_100005184();
    sub_100005194();
    sub_100005164();
  }

  while (v7 != v9);
LABEL_11:

  *(v2 + OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_items) = _swiftEmptyArrayStorage;

  sub_1000032B8(a1 & 1);
}

id sub_10000359C()
{
  v12 = sub_1000050D4();
  v1 = *(v12 - 8);
  __chkstk_darwin(v12);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000050C4();
  __chkstk_darwin(v4);
  v5 = sub_100005044();
  __chkstk_darwin(v5 - 8);
  v11 = OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_queue;
  v6 = sub_100004F3C(0, &qword_10000CE40, OS_dispatch_queue_ptr);
  v10[1] = "r16PickFolderSource";
  v10[2] = v6;
  sub_100005034();
  v14 = _swiftEmptyArrayStorage;
  sub_100003BD4(&qword_10000CE48, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003B44(&qword_10000CE50, &qword_100005A30);
  sub_100003C1C(&qword_10000CE58, &qword_10000CE50, &qword_100005A30);
  sub_100005114();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *&v0[v11] = sub_1000050F4();
  v7 = &v0[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_completion];
  *v7 = 0;
  v7[1] = 0;
  *&v0[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_items] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource____lazy_storage___itemCollection] = 0;
  v0[OBJC_IVAR____TtC27RecentsAvocadoIntentHandler20FavoritesItemsSource_hasSeenInitiallyGatheredFavorites] = 0;
  v8 = type metadata accessor for FavoritesItemsSource();
  v13.receiver = v0;
  v13.super_class = v8;
  return objc_msgSendSuper2(&v13, "init");
}

id sub_100003A38(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100003A94(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100003AA4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100003AB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100003AEC()
{
  v0 = sub_10000320C();
  [v0 startObserving];

  sub_1000033C0(0);
}

uint64_t sub_100003B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003B44(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003B8C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003BD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100003C1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003B8C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003C70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003D3C(v11, 0, 0, 1, a1, a2);
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
    sub_100004E34(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004DE8(v11);
  return v7;
}

unint64_t sub_100003D3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003E48(a5, a6);
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
    result = sub_100005144();
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

void *sub_100003E48(uint64_t a1, unint64_t a2)
{
  v3 = sub_100003E94(a1, a2);
  sub_100003FC4(&off_100008518);
  return v3;
}

void *sub_100003E94(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000040B0(v5, 0);
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

  result = sub_100005144();
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
        v10 = sub_100005064();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000040B0(v10, 0);
        result = sub_100005124();
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

uint64_t sub_100003FC4(uint64_t result)
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

  result = sub_100004124(result, v11, 1, v3);
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

void *sub_1000040B0(uint64_t a1, uint64_t a2)
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

  sub_100003B44(&qword_10000CE78, qword_100005A48);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004124(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003B44(&qword_10000CE78, qword_100005A48);
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

uint64_t sub_100004218(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005014();
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005044();
  v8 = *(v19 - 8);
  __chkstk_darwin(v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultPermission];
  v12 = DOCDocumentsAppBundleIdentifier;
  [v11 setHostIdentifier:DOCDocumentsAppBundleIdentifier];

  v13 = [objc_opt_self() sharedManager];
  [v13 setHostIdentifier:v12];

  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_100004D88;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004F90;
  aBlock[3] = &unk_100008620;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_100005024();
  v21 = _swiftEmptyArrayStorage;
  sub_100003BD4(&qword_10000CE28, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003B44(&qword_10000CE30, &qword_100005A28);
  sub_100003C1C(&qword_10000CE38, &qword_10000CE30, &qword_100005A28);
  sub_100005114();
  sub_1000050E4();
  _Block_release(v15);
  (*(v20 + 8))(v7, v5);
  (*(v8 + 8))(v10, v19);
}

void sub_100004560(void *a1)
{
  v23._object = a1;
  sub_100003B44(&qword_10000CE68, &qword_100005A38);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000058F0;
  v2 = DOCSpotlightEnumeratedItemIdentifierRecentDocuments;
  v3 = _DocumentManagerBundle();
  if (!v3)
  {

    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v23._countAndFlagsBits = 0x8000000100005E30;
  v27._countAndFlagsBits = 0x73746E65636552;
  v27._object = 0xE700000000000000;
  v30._countAndFlagsBits = 0x617A696C61636F4CLL;
  v30._object = 0xEB00000000656C62;
  v5.super.isa = v4;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_100004FD4(v27, v30, v5, v33, 0xD000000000000028, v23);

  v6 = DOCIntentLocationTypeRecents;
  v7 = sub_100005054();

  v8 = objc_opt_self();
  v9 = [v8 intentLocationWithIdentifier:v2 displayString:v7 type:v6];

  *(v1 + 32) = v9;
  v2 = DOCSpotlightEnumeratedItemIdentifierSharedItems;
  v10 = _DocumentManagerBundle();
  if (!v10)
  {
LABEL_8:

    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  v23._countAndFlagsBits = 0x8000000100005E60;
  v28._countAndFlagsBits = 0x646572616853;
  v28._object = 0xE600000000000000;
  v31._countAndFlagsBits = 0x617A696C61636F4CLL;
  v31._object = 0xEB00000000656C62;
  v12.super.isa = v11;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_100004FD4(v28, v31, v12, v34, 0xD000000000000020, v23);

  v13 = DOCIntentLocationTypeShared;
  v14 = sub_100005054();

  v15 = [v8 intentLocationWithIdentifier:v2 displayString:v14 type:v13];

  *(v1 + 40) = v15;
  v16 = _DocumentManagerBundle();
  if (!v16)
  {
LABEL_9:

    __break(1u);
    return;
  }

  v17 = v16;
  v23._countAndFlagsBits = 0x8000000100005EC0;
  v29._countAndFlagsBits = 0x64616F6C6E776F44;
  v29._object = 0xE900000000000073;
  v32._countAndFlagsBits = 0x617A696C61636F4CLL;
  v32._object = 0xEB00000000656C62;
  v18.super.isa = v17;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_100004FD4(v29, v32, v18, v35, 0xD00000000000001DLL, v23);

  v19 = DOCIntentLocationTypeDownloads;
  v20 = sub_100005054();
  v21 = sub_100005054();

  v22 = [v8 intentLocationWithIdentifier:v20 displayString:v21 type:v19];

  *(v1 + 48) = v22;
  sub_100001F78(v1, v25, &OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_defaultLocations, "provideLocationOptionsCollection() received %ld locations. Error: %s", v24, v25);
}

uint64_t sub_1000048D8(char *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 userTags];

  v4 = [v3 array];
  v5 = sub_100005084();

  v6 = sub_100002DF4(v5);

  if (v6 >> 62)
  {
    v7 = sub_1000051A4();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_14:

    goto LABEL_15;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_3:
  result = sub_100005174();
  if (v7 < 0)
  {
    __break(1u);
    return result;
  }

  v27 = a1;
  v31 = objc_opt_self();
  v9 = 0;
  v29 = v6 & 0xC000000000000001;
  v30 = objc_opt_self();
  v28 = v7;
  do
  {
    if (v29)
    {
      v10 = sub_100005134();
    }

    else
    {
      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = [v31 intentLocationWithTag:v10];
    v13 = [v30 requestForTag:v11 tagDimension:16.0];
    v14 = [objc_allocWithZone(DOCTagRenderer) init];
    v15 = [v14 renderImageWithRequest:v13];

    v16 = UIImagePNGRepresentation(v15);
    if (v16)
    {
      v17 = v16;
      v18 = sub_100004FC4();
      v20 = v19;

      v21 = v12;
      sub_100004E94(v18, v20);
      v32 = v13;
      v22 = v6;
      isa = sub_100004FB4().super.isa;
      v24 = [objc_opt_self() imageWithImageData:isa];

      v6 = v22;
      sub_100004EE8(v18, v20);
      [v21 setDisplayImage:v24];

      v25 = v20;
      v7 = v28;
      sub_100004EE8(v18, v25);
    }

    else
    {
    }

    ++v9;
    sub_100005154();
    sub_100005184();
    sub_100005194();
    sub_100005164();
  }

  while (v7 != v9);

  a1 = v27;
LABEL_15:
  sub_100001F78(_swiftEmptyArrayStorage, a1, &OBJC_IVAR____TtC27RecentsAvocadoIntentHandler36RecentsHomeScreenWidgetIntentHandler_tags, "provideLocationOptionsCollection() received %ld tags. Error: %s", v26, v27);
}

void sub_100004C50()
{
  v0 = DOCCreateDefaultHomeScreenWidgetIntent();
  v1 = sub_100005054();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_100005104();
    swift_unknownObjectRelease();

    sub_100004D34(v3, &v4);
    sub_100004F3C(0, &qword_10000CE60, DOCIntentLocation_ptr);
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

_OWORD *sub_100004D34(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100004D44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004D9C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004DE8(void *a1)
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

uint64_t sub_100004E34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004E94(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100004EE8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100004F3C(uint64_t a1, unint64_t *a2, void *a3)
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