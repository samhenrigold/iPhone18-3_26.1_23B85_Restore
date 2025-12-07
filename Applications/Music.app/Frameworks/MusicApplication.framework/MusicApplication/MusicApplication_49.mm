uint64_t sub_4244A4()
{
  ObjectType = swift_getObjectType();
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v19, "playActivityFeatureName");
  v3 = sub_AB92A0();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v18.receiver = v0;
    v18.super_class = ObjectType;
    v7 = objc_msgSendSuper2(&v18, "playActivityFeatureName");
    v8 = sub_AB92A0();
  }

  else
  {
    v8 = 0x6C616E7265746E69;
    v10 = [objc_opt_self() mainBundle];
    v11 = [v10 bundleIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = sub_AB92A0();
      v15 = v14;

      if (v13 == 0x6C7070612E6D6F63 && v15 == 0xEF636973754D2E65)
      {
      }

      else
      {
        v17 = sub_ABB3C0();

        if ((v17 & 1) == 0)
        {
          return 0x6C616E7265747865;
        }
      }
    }

    else
    {

      return 0x6C616E7265747865;
    }
  }

  return v8;
}

id sub_42469C(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:a3 target:v3 action:*a2];
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

uint64_t sub_424720()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v3 = &v15 - v2;
  if (qword_DE6BA8 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, static Logger.mediaPicker);
  v5 = sub_AB4BA0();
  v6 = sub_AB9F50();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Canceled song selections.", v7, 2u);
  }

  v8 = v1 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(v1, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  v11 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems;
  swift_beginAccess();
  *(v1 + v11) = _swiftEmptyArrayStorage;

  v12 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedPlaybackIntentDescriptor;
  swift_beginAccess();
  sub_428E20(v3, v1 + v13);
  swift_endAccess();
  sub_4253F8();
  return sub_12E1C(v3, &unk_DEA510, "\b]\r");
}

void sub_4249C0()
{
  if (qword_DE6BA8 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, static Logger.mediaPicker);
  v2 = v0;
  v3 = sub_AB4BA0();
  v4 = sub_AB9F50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    v6 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems;
    swift_beginAccess();
    v7 = *&v2[v6];
    if (v7 >> 62)
    {
      v8 = sub_ABB060();
    }

    else
    {
      v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    }

    *(v5 + 4) = v8;

    _os_log_impl(&dword_0, v3, v4, "Confirmed song selections. Adding %{public}ld songs to the playlist", v5, 0xCu);
  }

  else
  {
  }

  sub_4221E4();
}

void *sub_424B64(void *a1)
{
  ObjectType = swift_getObjectType();
  if ((([*&v1[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration] selectionMode] - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v13.receiver = v1;
  v13.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v13, "viewControllers");
  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v6 = sub_AB9760();

  if (v6 >> 62)
  {
    result = sub_ABB060();
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:

    return _swiftEmptyArrayStorage;
  }

  result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = sub_35F8D4(0, v6);
  }

  else
  {
    if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = a1;
  v10 = sub_ABA790();

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_AF82B0;
    v12 = sub_42469C(&OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___cancelBarButtonItem, &selRef_cancelTapped, 1);
    result = v11;
    *(v11 + 32) = v12;
    return result;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_424D1C(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v43 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = v41 - v5;
  v7 = [*(v1 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration) selectionMode];
  v8 = _swiftEmptyArrayStorage;
  v47 = _swiftEmptyArrayStorage;
  v9 = sub_42469C(&OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___doneBarButtonItem, &selRef_doneTapped, 0);
  v41[0] = v7;
  v10 = (v7 - 1) & 0xFFFFFFFFFFFFFFFDLL;
  if (!v10)
  {
    v11 = v9;
    v12 = v9;
    sub_AB9730();
    if (*(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v47 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v8 = v47;
    v9 = v11;
  }

  v44 = a1;

  v13 = sub_4252F4();
  v14 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedPlaybackIntentDescriptor;
  swift_beginAccess();
  sub_15F84(v1 + v14, v6, &unk_DEA510, "\b]\r");
  v15 = type metadata accessor for PlaybackIntentDescriptor(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v41[1] = v16 + 48;
  v42 = v17;
  v18 = v17(v6, 1, v15);
  sub_12E1C(v6, &unk_DEA510, "\b]\r");
  if (v18 != 1)
  {
    v19 = v13;
    sub_AB9730();
    if (*(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v47 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v8 = v47;
  }

  v20 = sub_42469C(&OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___cancelBarButtonItem, &selRef_cancelTapped, 1);
  if (v10)
  {
    v21 = v1 + v14;
    v22 = v43;
    sub_15F84(v21, v43, &unk_DEA510, "\b]\r");
    v23 = v42(v22, 1, v15);
    sub_12E1C(v22, &unk_DEA510, "\b]\r");
    v24 = v44;
    if (v23 == 1)
    {
      v25 = v20;
      sub_AB9730();
      if (*(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v47 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      v8 = v47;
    }
  }

  else
  {
    v24 = v44;
  }

  v26 = [v24 navigationItem];
  v27 = sub_387A78();

  if (v27)
  {
    if (v10 && (v41[0] - 2) > 2)
    {
    }

    else
    {
      v28 = v27;
      sub_AB9730();
      if (*(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v47 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();

      v8 = v47;
    }
  }

  v29 = [v24 navigationItem];
  v30 = [v29 rightBarButtonItems];
  if (v30)
  {
    v31 = v30;
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    v32 = sub_AB9760();

    v46 = _swiftEmptyArrayStorage;
    if (v32 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v34 = 0;
      v44 = v32 & 0xC000000000000001;
      while (1)
      {
        if (v44)
        {
          v35 = sub_3600B8(v34, v32);
        }

        else
        {
          if (v34 >= *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_38;
          }

          v35 = *(v32 + 8 * v34 + 32);
        }

        v36 = v35;
        v37 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        v45 = v35;
        __chkstk_darwin();
        v41[-2] = &v45;

        v38 = sub_1B3D18(sub_428F70, &v41[-4], v8);

        if (v38)
        {
        }

        else
        {
          sub_ABAE90();
          sub_ABAED0();
          sub_ABAEE0();
          sub_ABAEA0();
        }

        ++v34;
        if (v37 == i)
        {
          v39 = v46;
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

    v39 = _swiftEmptyArrayStorage;
LABEL_41:

    sub_19620(v39);
    return v47;
  }

  else
  {
  }

  return v8;
}

id sub_4252F4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___spinnerBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___spinnerBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___spinnerBarButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
    v5 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_42539C(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_41D3EC(v3);
  }
}

void sub_4253F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v4 = &v17 - v3;
  v5 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedPlaybackIntentDescriptor;
  swift_beginAccess();
  sub_15F84(v1 + v5, v4, &unk_DEA510, "\b]\r");
  v6 = type metadata accessor for PlaybackIntentDescriptor(0);
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_12E1C(v4, &unk_DEA510, "\b]\r");
  if (v5 != 1)
  {
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v14 = sub_ABA150();
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    v16 = v1;
    OS_dispatch_queue.asyncAfterUIFeedbackDeadline(_:)(sub_428F68, v15);

    return;
  }

  v18.receiver = v1;
  v18.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v18, "viewControllers");
  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v8 = sub_AB9760();

  if (!(v8 >> 62))
  {
    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  v9 = sub_ABB060();
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_4:
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v12 = sub_35F8D4(v11, v8);
    goto LABEL_9;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
  {
    v12 = *(v8 + 8 * v11 + 32);
LABEL_9:
    v13 = v12;

    sub_41D3EC(v13);

    return;
  }

  __break(1u);
}

void sub_42566C(char *a1)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v4 = &v14 - v3;
  v5 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedPlaybackIntentDescriptor;
  swift_beginAccess();
  sub_15F84(&a1[v5], v4, &unk_DEA510, "\b]\r");
  v6 = type metadata accessor for PlaybackIntentDescriptor(0);
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_12E1C(v4, &unk_DEA510, "\b]\r");
  if (v5 == 1)
  {
    return;
  }

  v15.receiver = a1;
  v15.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v15, "viewControllers");
  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v8 = sub_AB9760();

  if (!(v8 >> 62))
  {
    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_11:

    return;
  }

  v9 = sub_ABB060();
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_4:
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v12 = sub_35F8D4(v11, v8);
    goto LABEL_9;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
  {
    v12 = *(v8 + 8 * v11 + 32);
LABEL_9:
    v13 = v12;

    sub_41D3EC(v13);

    return;
  }

  __break(1u);
}

void sub_425898()
{
  sub_176DC(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerDelegate);

  sub_3A7960(*(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt), *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt + 8));

  sub_12E1C(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedPlaybackIntentDescriptor, &unk_DEA510, "\b]\r");
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___spinnerBarButtonItem);
}

double sub_425A80(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_425AF0(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_425B94;
}

void sub_425B94(uint64_t a1, char a2, __n128 a3)
{
  v4 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v4);
}

uint64_t sub_425C1C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_ABB3C0();
  }

  return 1;
}

void sub_425C7C(uint64_t a1, uint64_t a2)
{
  sub_3F9D0(*(a2 + 200), *(a2 + 208), *(a2 + 216), *(a2 + 224));
  *(a2 + 200) = xmmword_AF82C0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  v3 = sub_AB4E50();
  if (v3)
  {
    v4 = 0x72616D6B63656863;
  }

  else
  {
    v4 = 0x7269632E73756C70;
  }

  if (v3)
  {
    v5 = 0xE90000000000006BLL;
  }

  else
  {
    v5 = 0xEB00000000656C63;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
}

uint64_t sub_425D14()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.mediaPicker);
  __swift_project_value_buffer(v0, static Logger.mediaPicker);
  return static Logger.music(_:)(0x636950616964654DLL, 0xEB0000000072656BLL);
}

uint64_t static Logger.mediaPicker.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_DE6BA8 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.mediaPicker);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_425E28()
{
  v0._countAndFlagsBits = 0x412E72656B636950;
  v0._object = 0xEA00000000006464;
  v2 = AccessibilityIdentifier.init(name:)(v0);
  *ymmword_E716F8 = v2;
  return v2.rawValue._countAndFlagsBits;
}

unint64_t sub_425E68(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_425F34(v11, 0, 0, 1, a1, a2);
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
    sub_808B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_425F34(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_426040(a5, a6);
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
    result = sub_ABAE60();
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

void *sub_426040(uint64_t a1, unint64_t a2)
{
  v3 = sub_42608C(a1, a2);
  sub_4261BC(&off_CEF7A8);
  return v3;
}

void *sub_42608C(uint64_t a1, unint64_t a2)
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

  v6 = sub_284478(v5, 0);
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

  result = sub_ABAE60();
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
        v10 = sub_AB94C0();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_284478(v10, 0);
        result = sub_ABAD70();
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

void sub_4261BC(uint64_t a1)
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

  v3 = sub_4262A8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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

char *sub_4262A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E25170, &qword_AF8EB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

Swift::Int sub_42639C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBDF8, &unk_B0A3B0);
    v2 = sub_ABB0B0();
    v19 = v2;
    sub_ABAF90();
    v3 = sub_ABAFC0();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for JSBarButtonItem(0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_32740C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_ABA780(*(v19 + 40));
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
        v5 = sub_ABAFC0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_426614(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(unint64_t, uint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_ABB0B0();
    v25 = v8;
    sub_ABAF90();
    v9 = sub_ABAFC0();
    if (v9)
    {
      v10 = v9;
      sub_13C80(0, &qword_DE7500, UIViewController_ptr);
      v11 = v10;
      do
      {
        v23 = v11;
        swift_dynamicCast();
        a5(0);
        swift_dynamicCast();
        v18 = *(v8 + 16);
        if (*(v8 + 24) <= v18)
        {
          a6(v18 + 1, 1);
        }

        v8 = v25;
        result = sub_ABA780(*(v25 + 40));
        v13 = v25 + 64;
        v14 = -1 << *(v25 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v25 + 48) + 8 * v17) = v24;
        *(*(v25 + 56) + 8 * v17) = v23;
        ++*(v25 + 16);
        v11 = sub_ABAFC0();
      }

      while (v11);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v8;
}

Swift::Int sub_426850(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBBC0, &unk_AFA4E0);
    v2 = sub_ABB0B0();
    v19 = v2;
    sub_ABAF90();
    v3 = sub_ABAFC0();
    if (v3)
    {
      v4 = v3;
      sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_13C80(0, &qword_DED7C0, MPModelSocialPerson_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_328D3C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_ABA780(*(v19 + 40));
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
        v5 = sub_ABAFC0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_426AD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEFA0, &unk_B08C90);
    v2 = sub_ABB0B0();
    v19 = v2;
    sub_ABAF90();
    v3 = sub_ABAFC0();
    if (v3)
    {
      v4 = v3;
      sub_13C80(0, &qword_DEBCB0, NSOperation_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02CC0, &qword_AFC6B0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_32C290(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_ABA780(*(v19 + 40));
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
        v5 = sub_ABAFC0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

void sub_426D20(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_163DE0(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_426D8C(v4);
  *a1 = v2;
}

void sub_426D8C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_ABB2B0(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_AB97D0();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_4271D0(v7, v8, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_426E84(0, v2, 1, a1);
  }
}

uint64_t sub_426E84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v14 = result;
  if (a3 == a2)
  {
    return result;
  }

  v4 = *a4;
  while (2)
  {
    v5 = *(v4 + a3);
    v16 = a3;
LABEL_4:
    if ((v5 & 1) != 0 || (v6 = a3 - 1, !*(v4 + a3 - 1)))
    {
LABEL_26:
      a3 = v16 + 1;
      if (v16 + 1 != a2)
      {
        continue;
      }

      return result;
    }

    break;
  }

  v17 = a3;
  static ApplicationCapabilities.shared.getter(v18);
  v7 = v19;
  v20 = v19;

  sub_70C54(v18);
  if (!*(v7 + 16) || (sub_ABB5C0(), sub_AB93F0(), v8 = sub_ABB610(), v9 = -1 << *(v7 + 32), v10 = v8 & ~v9, ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0))
  {
LABEL_25:
    result = sub_12E1C(&v20, &unk_DFC570, &qword_B07BA0);
    goto LABEL_26;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(*(v7 + 48) + v10);
    if (v12 > 4)
    {
      break;
    }

    if (v12 == 2)
    {
      goto LABEL_21;
    }

LABEL_18:
    v13 = sub_ABB3C0();

    if (v13)
    {
      goto LABEL_22;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  if (*(*(v7 + 48) + v10) <= 7u || v12 != 8 || 0x8000000000B5B970 != 0x8000000000B5B9B0)
  {
    goto LABEL_18;
  }

LABEL_21:

LABEL_22:
  result = sub_12E1C(&v20, &unk_DFC570, &qword_B07BA0);
  if (v4)
  {
    v5 = *(v4 + v17);
    *(v4 + v17) = *(v4 + v6);
    *(v4 + v6) = v5;
    a3 = v6;
    if (v6 == v14)
    {
      goto LABEL_26;
    }

    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void sub_4271D0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_157:
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_198;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_159;
    }

    goto LABEL_192;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (2)
  {
    v104 = v6;
    v8 = (v6 + 1);
    v100 = v7;
    if ((v6 + 1) >= v5)
    {
      goto LABEL_66;
    }

    v9 = 0;
    v10 = *a3;
    v106 = *a3;
    if ((*(*a3 + v8) & 1) != 0 || !v6[v10])
    {
      goto LABEL_26;
    }

    static ApplicationCapabilities.shared.getter(v111);
    v11 = v112;
    v119 = v112;

    sub_70C54(v111);
    if (!*(v11 + 16))
    {
      v4 = v5;
LABEL_24:
      v9 = 0;
      goto LABEL_25;
    }

    v4 = v5;
    sub_ABB5C0();
    sub_AB93F0();
    v12 = sub_ABB610();
    v13 = -1 << *(v11 + 32);
    v14 = v12 & ~v13;
    if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_24;
    }

    v15 = ~v13;
    while (1)
    {
      v16 = *(*(v11 + 48) + v14);
      if (v16 > 4)
      {
        break;
      }

      if (v16 == 2)
      {
        v17 = 0x8000000000B5B970;
        goto LABEL_19;
      }

LABEL_20:
      v9 = sub_ABB3C0();

      if ((v9 & 1) == 0)
      {
        v14 = (v14 + 1) & v15;
        if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    if (*(*(v11 + 48) + v14) <= 7u || v16 != 8)
    {
      goto LABEL_20;
    }

    v17 = 0x8000000000B5B9B0;
LABEL_19:
    if (0x8000000000B5B970 != v17)
    {
      goto LABEL_20;
    }

    v9 = 1;
LABEL_25:
    sub_12E1C(&v119, &unk_DFC570, &qword_B07BA0);
    v5 = v4;
    v10 = v106;
LABEL_26:
    v18 = v104 + 2;
    if ((v104 + 2) >= v5)
    {
LABEL_56:
      v8 = v18;
      if ((v9 & 1) == 0)
      {
        goto LABEL_66;
      }

LABEL_57:
      v26 = v104;
      if (v8 < v104)
      {
        goto LABEL_189;
      }

      if (v104 < v8)
      {
        v27 = (v8 - 1);
        while (1)
        {
          if (v26 != v27)
          {
            v30 = *a3;
            if (!*a3)
            {
LABEL_195:
              __break(1u);
              goto LABEL_196;
            }

            v28 = v26[v30];
            v26[v30] = v27[v30];
            v27[v30] = v28;
          }

          if (++v26 >= v27--)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_66;
    }

    v102 = v5;
    while (2)
    {
      v19 = v8;
      v8 = v18;
      if ((v18[v10] & 1) != 0 || !*(v10 + v19))
      {
        if (v9)
        {
          goto LABEL_57;
        }

LABEL_29:
        v18 = (v8 + 1);
        if (v8 + 1 != v5)
        {
          continue;
        }

        v18 = v5;
        goto LABEL_56;
      }

      break;
    }

    static ApplicationCapabilities.shared.getter(v113);
    v20 = v114;
    v118[0] = v114;

    sub_70C54(v113);
    if (!*(v20 + 16))
    {
      sub_12E1C(v118, &unk_DFC570, &qword_B07BA0);
      if (v9)
      {
        goto LABEL_57;
      }

      goto LABEL_29;
    }

    sub_ABB5C0();
    sub_AB93F0();
    v21 = sub_ABB610();
    v22 = -1 << *(v20 + 32);
    v23 = v21 & ~v22;
    if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      sub_12E1C(v118, &unk_DFC570, &qword_B07BA0);
      v7 = v100;
LABEL_50:
      v10 = v106;
      if (v9)
      {
        goto LABEL_57;
      }

      goto LABEL_29;
    }

    v24 = ~v22;
    while (1)
    {
      v25 = *(*(v20 + 48) + v23);
      if (v25 > 4)
      {
        break;
      }

      if (v25 == 2)
      {
        goto LABEL_52;
      }

LABEL_44:
      v4 = sub_ABB3C0();

      if (v4)
      {
        goto LABEL_53;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        sub_12E1C(v118, &unk_DFC570, &qword_B07BA0);
        v7 = v100;
        v5 = v102;
        goto LABEL_50;
      }
    }

    if (*(*(v20 + 48) + v23) <= 7u || v25 != 8 || 0x8000000000B5B970 != 0x8000000000B5B9B0)
    {
      goto LABEL_44;
    }

LABEL_52:

LABEL_53:
    sub_12E1C(v118, &unk_DFC570, &qword_B07BA0);
    v7 = v100;
    v5 = v102;
    v10 = v106;
    if (v9)
    {
      goto LABEL_29;
    }

LABEL_66:
    v31 = a3[1];
    if (v8 >= v31)
    {
      goto LABEL_104;
    }

    if (__OFSUB__(v8, v104))
    {
      goto LABEL_188;
    }

    if (v8 - v104 >= a4)
    {
LABEL_104:
      if (v8 < v104)
      {
        goto LABEL_187;
      }

      goto LABEL_105;
    }

    v32 = &v104[a4];
    if (__OFADD__(v104, a4))
    {
      goto LABEL_190;
    }

    if (v32 >= v31)
    {
      v32 = a3[1];
    }

    if (v32 < v104)
    {
LABEL_191:
      __break(1u);
LABEL_192:
      v7 = sub_163DA4(v7);
LABEL_159:
      v91 = v7;
      v92 = (v7 + 16);
      v7 = *(v7 + 16);
      if (v7 >= 2)
      {
        while (*a3)
        {
          v93 = (v91 + 16 * v7);
          v94 = *v93;
          v95 = &v92[2 * v7];
          v96 = v95[1];
          sub_427F60((*a3 + *v93), (*a3 + *v95), *a3 + v96, v4);
          if (v110)
          {
            goto LABEL_166;
          }

          if (v96 < v94)
          {
            goto LABEL_184;
          }

          if (v7 - 2 >= *v92)
          {
            goto LABEL_185;
          }

          *v93 = v94;
          v93[1] = v96;
          v97 = *v92 - v7;
          if (*v92 < v7)
          {
            goto LABEL_186;
          }

          v7 = *v92 - 1;
          memmove(v95, v95 + 2, 16 * v97);
          *v92 = v7;
          if (v7 <= 1)
          {
            goto LABEL_166;
          }
        }

LABEL_196:
        __break(1u);
        break;
      }

LABEL_166:

      return;
    }

    if (v8 != v32)
    {
      v33 = *a3;
      v101 = v32;
      v103 = *a3;
      while (1)
      {
        v34 = *(v33 + v8);
        v35 = v8;
        v107 = v8;
        while (1)
        {
          if (v34)
          {
            goto LABEL_101;
          }

          v36 = (v35 - 1);
          if (!*(v33 + v35 - 1))
          {
            break;
          }

          static ApplicationCapabilities.shared.getter(v115);
          v37 = v116;
          v117 = v116;

          sub_70C54(v115);
          if (!*(v37 + 16) || (sub_ABB5C0(), sub_AB93F0(), v38 = sub_ABB610(), v39 = -1 << *(v37 + 32), v40 = v38 & ~v39, ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0))
          {
LABEL_100:
            sub_12E1C(&v117, &unk_DFC570, &qword_B07BA0);
            v8 = v107;
            v32 = v101;
            v33 = v103;
            goto LABEL_101;
          }

          v4 = ~v39;
          while (1)
          {
            v41 = *(*(v37 + 48) + v40);
            if (v41 <= 4)
            {
              if (v41 == 2)
              {
                break;
              }

              goto LABEL_92;
            }

            if (*(*(v37 + 48) + v40) > 7u && v41 == 8 && 0x8000000000B5B970 == 0x8000000000B5B9B0)
            {
              break;
            }

LABEL_92:
            v42 = sub_ABB3C0();

            if (v42)
            {
              goto LABEL_96;
            }

            v40 = (v40 + 1) & v4;
            if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
            {
              goto LABEL_100;
            }
          }

LABEL_96:
          sub_12E1C(&v117, &unk_DFC570, &qword_B07BA0);
          v33 = v103;
          if (!v103)
          {
LABEL_194:
            __break(1u);
            goto LABEL_195;
          }

          v34 = *(v103 + v35);
          *(v103 + v35) = v36[v103];
          v36[v103] = v34;
          --v35;
          v43 = v36 == v104;
          v8 = v107;
          v32 = v101;
          if (v43)
          {
            goto LABEL_101;
          }
        }

        v8 = v107;
LABEL_101:
        if (++v8 == v32)
        {
          v8 = v32;
          v7 = v100;
          goto LABEL_104;
        }
      }
    }

    if (v8 < v104)
    {
      goto LABEL_187;
    }

LABEL_105:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_6A6C0(0, *(v7 + 16) + 1, 1, v7);
    }

    v45 = *(v7 + 16);
    v44 = *(v7 + 24);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v7 = sub_6A6C0((v44 > 1), v45 + 1, 1, v7);
    }

    *(v7 + 16) = v46;
    v4 = v7 + 32;
    v47 = (v7 + 32 + 16 * v45);
    *v47 = v104;
    v47[1] = v8;
    v105 = *a1;
    if (*a1)
    {
      v108 = v8;
      if (!v45)
      {
LABEL_3:
        v6 = v108;
        v5 = a3[1];
        if (v108 >= v5)
        {
          goto LABEL_157;
        }

        continue;
      }

      while (2)
      {
        v48 = v46 - 1;
        if (v46 >= 4)
        {
          v53 = v4 + 16 * v46;
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_172;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_173;
          }

          v60 = (v7 + 16 * v46);
          v62 = *v60;
          v61 = v60[1];
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_175;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_177;
          }

          if (v64 >= v56)
          {
            v82 = (v4 + 16 * v48);
            v84 = *v82;
            v83 = v82[1];
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_183;
            }

            if (v51 < v85)
            {
              v48 = v46 - 2;
            }
          }

          else
          {
LABEL_124:
            if (v52)
            {
              goto LABEL_174;
            }

            v65 = (v7 + 16 * v46);
            v67 = *v65;
            v66 = v65[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_176;
            }

            v71 = (v4 + 16 * v48);
            v73 = *v71;
            v72 = v71[1];
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_179;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_181;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_139;
            }

            if (v51 < v74)
            {
              v48 = v46 - 2;
            }
          }
        }

        else
        {
          if (v46 == 3)
          {
            v49 = *(v7 + 32);
            v50 = *(v7 + 40);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_124;
          }

          if (v46 < 2)
          {
            goto LABEL_182;
          }

          v75 = (v7 + 16 * v46);
          v77 = *v75;
          v76 = v75[1];
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_139:
          if (v70)
          {
            goto LABEL_178;
          }

          v78 = (v4 + 16 * v48);
          v80 = *v78;
          v79 = v78[1];
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_180;
          }

          if (v81 < v69)
          {
            goto LABEL_3;
          }
        }

        if (v48 - 1 >= v46)
        {
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
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
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
          goto LABEL_191;
        }

        if (!*a3)
        {
          __break(1u);
          goto LABEL_194;
        }

        v86 = v7;
        v87 = (v4 + 16 * (v48 - 1));
        v7 = *v87;
        v88 = (v4 + 16 * v48);
        v89 = v88[1];
        sub_427F60((*a3 + *v87), (*a3 + *v88), *a3 + v89, v105);
        if (v110)
        {
          goto LABEL_166;
        }

        if (v89 < v7)
        {
          goto LABEL_169;
        }

        if (v48 > *(v86 + 16))
        {
          goto LABEL_170;
        }

        *v87 = v7;
        v87[1] = v89;
        v90 = *(v86 + 16);
        if (v48 >= v90)
        {
          goto LABEL_171;
        }

        v7 = v86;
        v110 = 0;
        v46 = v90 - 1;
        memmove((v4 + 16 * v48), v88 + 2, 16 * (v90 - 1 - v48));
        *(v86 + 16) = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_3;
        }

        continue;
      }
    }

    break;
  }

  __break(1u);
LABEL_198:
  __break(1u);
}

uint64_t sub_427F60(_BYTE *__src, _BYTE *__dst, unint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = a3 - __dst;
  if (__dst - __src < (a3 - __dst))
  {
    if (a4 != __src || a4 >= __dst)
    {
      memmove(a4, __src, v8);
    }

    v10 = &v4[v8];
    if (v8 < 1 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_78;
    }

    v35 = v5;
    v37 = &v4[v8];
LABEL_8:
    if ((*v6 & 1) != 0 || !*v4)
    {
      goto LABEL_25;
    }

    v11 = v6;
    v39 = v4;
    static ApplicationCapabilities.shared.getter(v41);
    v12 = v42;
    v43 = v42;

    sub_70C54(v41);
    if (!*(v12 + 16) || (sub_ABB5C0(), sub_AB93F0(), v13 = sub_ABB610(), v14 = -1 << *(v12 + 32), v15 = v13 & ~v14, ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0))
    {
LABEL_24:
      sub_12E1C(&v43, &unk_DFC570, &qword_B07BA0);
      v10 = v37;
      v4 = v39;
      v5 = v35;
      v6 = v11;
LABEL_25:
      v19 = v4 + 1;
      v11 = v4;
      v20 = v6;
      if (v7 < v4)
      {
        ++v4;
        goto LABEL_29;
      }

      ++v4;
      if (v7 >= v19)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    v16 = ~v14;
    while (1)
    {
      v17 = *(*(v12 + 48) + v15);
      if (v17 <= 4)
      {
        if (v17 == 2)
        {
          goto LABEL_33;
        }
      }

      else if (*(*(v12 + 48) + v15) > 7u && v17 == 8 && 0x8000000000B5B970 == 0x8000000000B5B9B0)
      {
LABEL_33:

LABEL_34:
        sub_12E1C(&v43, &unk_DFC570, &qword_B07BA0);
        v20 = v11 + 1;
        v4 = v39;
        if (v7 < v11)
        {
          v5 = v35;
          v10 = v37;
          goto LABEL_29;
        }

        v5 = v35;
        v10 = v37;
        if (v7 >= v20)
        {
LABEL_29:
          *v7 = *v11;
        }

LABEL_30:
        ++v7;
        if (v4 >= v10 || (v6 = v20, v20 >= v5))
        {
          v6 = v7;
          goto LABEL_78;
        }

        goto LABEL_8;
      }

      v18 = sub_ABB3C0();

      if (v18)
      {
        goto LABEL_34;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  if (a4 != __dst || a4 >= a3)
  {
    memmove(a4, __dst, a3 - __dst);
  }

  v10 = &v4[v9];
  if (v9 >= 1 && v6 > v7)
  {
    v40 = v4;
    while (1)
    {
      v21 = v6 - 1;
      v33 = v6 - 1;
      v34 = v6;
      while (1)
      {
        v22 = (v5 - 1);
        if ((*(v10 - 1) & 1) != 0 || !*v21)
        {
          goto LABEL_64;
        }

        v36 = (v5 - 1);
        v38 = v10;
        static ApplicationCapabilities.shared.getter(v41);
        v23 = v42;
        v43 = v42;

        sub_70C54(v41);
        if (*(v23 + 16))
        {
          sub_ABB5C0();
          sub_AB93F0();
          v24 = sub_ABB610();
          v25 = -1 << *(v23 + 32);
          v26 = v24 & ~v25;
          if ((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
          {
            break;
          }
        }

LABEL_63:
        sub_12E1C(&v43, &unk_DFC570, &qword_B07BA0);
        v10 = v38;
        v4 = v40;
        v6 = v34;
        v22 = (v5 - 1);
        v21 = v33;
LABEL_64:
        v30 = v10 - 1;
        if (v5 < v10 || v22 >= v10)
        {
          *v22 = *v30;
        }

        --v10;
        v5 = v22;
        if (v30 <= v4)
        {
          v10 = v30;
          goto LABEL_78;
        }
      }

      v27 = ~v25;
      while (1)
      {
        v28 = *(*(v23 + 48) + v26);
        if (v28 <= 4)
        {
          if (v28 == 2)
          {
            break;
          }

          goto LABEL_61;
        }

        if (*(*(v23 + 48) + v26) > 7u && v28 == 8 && 0x8000000000B5B970 == 0x8000000000B5B9B0)
        {
          break;
        }

LABEL_61:
        v29 = sub_ABB3C0();

        if (v29)
        {
          goto LABEL_68;
        }

        v26 = (v26 + 1) & v27;
        if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_63;
        }
      }

LABEL_68:
      sub_12E1C(&v43, &unk_DFC570, &qword_B07BA0);
      v31 = v5-- >= v34;
      if (!v31 || v36 >= v34)
      {
        *v36 = *v33;
      }

      v10 = v38;
      v4 = v40;
      if (v38 > v40)
      {
        v6 = v33;
        if (v33 > v7)
        {
          continue;
        }
      }

      v6 = v33;
      break;
    }
  }

LABEL_78:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

void sub_4286D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, double), double a6)
{
  v10 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a5(a2, v10, a4, a6);
  }
}

void sub_428774(uint64_t a1, void (*a2)(char *, uint64_t, __n128))
{
  v18 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E05F50, &unk_B0EC30);
  __chkstk_darwin();
  v4 = &v16 - v3;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v10 << 6);
    v13 = *(a1 + 48);
    v14 = sub_AB3820();
    (*(*(v14 - 8) + 16))(v4, v13 + *(*(v14 - 8) + 72) * v12, v14);
    v15 = *(*(a1 + 56) + 8 * v12);
    *&v4[*(v17 + 48)] = v15;

    (v18)(v4, v15);
    sub_12E1C(v4, &qword_E05F50, &unk_B0EC30);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_42893C(uint64_t a1, void (*a2)(uint64_t *, uint64_t))
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (v10 << 9) | (8 * v11);
    v13 = *(*(a1 + 56) + v12);
    v14 = *(*(a1 + 48) + v12);

    a2(&v14, v13);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *_s11MusicCoreUI12SymbolButtonC0A11ApplicationE014mediaPickerAddE0ACvgZ_0()
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v1 = &v13 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  SymbolButton.Configuration.init()(v1);
  variable initialization expression of SymbolButton.Configuration.symbol(&v13);
  v21 = v15;
  v2 = UIFontTextStyleBody;
  sub_429A1C(&v21, type metadata accessor for TextStyle);
  v3 = *(v1 + 5);
  v22[4] = *(v1 + 4);
  v22[5] = v3;
  v22[6] = *(v1 + 6);
  v23 = *(v1 + 14);
  v4 = *(v1 + 1);
  v22[0] = *v1;
  v22[1] = v4;
  v5 = *(v1 + 3);
  v22[2] = *(v1 + 2);
  v22[3] = v5;
  sub_155A00(v22);
  *v1 = v13;
  *(v1 + 2) = v16;
  *(v1 + 3) = xmmword_B054A0;
  v6 = v18;
  v7 = v19;
  *(v1 + 4) = v17;
  *(v1 + 5) = v6;
  *(v1 + 2) = v14;
  *(v1 + 3) = v2;
  *(v1 + 6) = v7;
  *(v1 + 14) = v20;
  v8 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v9 = SymbolButton.init(configuration:handler:)(v1, 0, 0);
  v10 = SymbolButton.withProvider(_:)(sub_425C7C, 0);

  if (qword_DE6BB0 != -1)
  {
    swift_once();
  }

  v11 = UIView.withAccessibilityIdentifier(_:)(*ymmword_E716F8, *&ymmword_E716F8[8], *&ymmword_E716F8[16], *&ymmword_E716F8[24]);

  (*&stru_1A8.segname[swift_isaMask & *v11])(1);
  return v11;
}

uint64_t type metadata accessor for MediaPickerNavigationController(uint64_t a1)
{
  result = qword_E05EF8;
  if (!qword_E05EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_428CD0(uint64_t a1)
{
  sub_428DA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_428DA0(uint64_t a1)
{
  if (!qword_E05BC8)
  {
    type metadata accessor for PlaybackIntentDescriptor(255);
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_E05BC8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication31MediaPickerNavigationControllerC6PromptO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_428E20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_428E90()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double block_copy_helper_137(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_428EE8()
{

  return swift_deallocObject();
}

uint64_t sub_428F30()
{

  return swift_deallocObject();
}

uint64_t sub_4290B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Search.ResultContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_42911C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_49Tm()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_4293F0()
{
  v0 = [objc_allocWithZone(MPMediaPickerConfiguration) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF85F0;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  isa = sub_AB9740().super.isa;

  [v0 setTypeIdentifiers:isa];

  [v0 setShowsCatalogContent:1];
  [v0 setSelectionMode:1];
  return v0;
}

void sub_4294E8()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___cancelBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___doneBarButtonItem) = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_viewControllerBarButtonItemsRegistrations;
  *(v0 + v2) = sub_96FE0(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems) = _swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedPlaybackIntentDescriptor;
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___spinnerBarButtonItem) = 0;
  sub_ABAFD0();
  __break(1u);
}

double sub_429608(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  isa = sub_AB9740().super.isa;
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "setViewControllers:", isa);

  v5 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_viewControllerBarButtonItemsRegistrations;
  swift_beginAccess();
  *&v1[v5] = _swiftEmptyDictionarySingleton;

  v26.receiver = v1;
  v26.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v26, "viewControllers");
  v7 = sub_AB9760();

  if (v7 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v23 = v7 & 0xC000000000000001;
    v24 = v7;
    v22 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v10)
      {
        v13 = sub_35F8D4(v9, v7);
      }

      else
      {
        if (v9 >= *(v11 + 16))
        {
          goto LABEL_20;
        }

        v13 = *(v7 + 8 * v9 + 32);
      }

      v12 = v13;
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_41D3EC(v13);
      swift_beginAccess();
      v15 = sub_D1498(v12, *&v2[v5]);
      swift_endAccess();
      if (v15)
      {

        v12 = v15;
      }

      else
      {
        v7 = i;
        swift_getKeyPath();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v16 = sub_AB3080();

        swift_beginAccess();
        v17 = *&v2[v5];
        if ((v17 & 0xC000000000000001) != 0)
        {
          if (v17 < 0)
          {
            v18 = *&v2[v5];
          }

          else
          {
            v18 = v17 & 0xFFFFFFFFFFFFFF8;
          }

          v19 = sub_ABAFA0();
          if (__OFADD__(v19, 1))
          {
            goto LABEL_21;
          }

          *&v2[v5] = sub_426614(v18, v19 + 1, &unk_DFEF90, &unk_AFA840, &type metadata accessor for NSKeyValueObservation, sub_328D50);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *&v2[v5];
        sub_92FE8(v16, v12, isUniquelyReferenced_nonNull_native);
        *&v2[v5] = v25;
        swift_endAccess();
        v10 = v23;
        v7 = v24;
        v11 = v22;
      }

      ++v9;
      if (v14 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:

  return result;
}

id sub_429938@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationItem];
  *a2 = result;
  return result;
}

uint64_t sub_429984()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_4299D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_429A1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_429B68(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v10 = v62 - v9;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication10PersonCell_personName];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication10PersonCell_compactArtworkSize] = vdupq_n_s64(0x4049000000000000uLL);
  *&v4[OBJC_IVAR____TtC16MusicApplication10PersonCell_regularArtworkSize] = vdupq_n_s64(0x404E000000000000uLL);
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication10PersonCell_compactArtworkEdgeInsets];
  *v12 = xmmword_B0EC40;
  *(v12 + 1) = xmmword_B0EC50;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication10PersonCell_regularArtworkEdgeInsets];
  __asm { FMOV            V1.2D, #12.0 }

  *v13 = xmmword_AFF7B0;
  *(v13 + 1) = _Q1;
  v19 = &v4[OBJC_IVAR____TtC16MusicApplication10PersonCell_textComponents];
  *v19 = sub_42A614();
  v19[1] = v20;
  v21 = type metadata accessor for PersonCell(0);
  v70.receiver = v4;
  v70.super_class = v21;
  v22 = objc_msgSendSuper2(&v70, "initWithFrame:", a1, a2, a3, a4);
  v23 = *&v22[OBJC_IVAR____TtC16MusicApplication10PersonCell_textComponents];
  v69 = &v22[OBJC_IVAR____TtC16MusicApplication10PersonCell_textComponents];
  v24 = v22;

  v25 = [v24 traitCollection];
  sub_42A7A8(v25, v23);

  sub_ABA670();
  v26 = sub_ABA680();
  (*(*(v26 - 8) + 56))(v10, 0, 1, v26);
  sub_200394(v10);
  v27 = Artwork.Placeholder.microphone.unsafeMutableAddressor();
  v28 = *v27;
  v29 = v27[1];
  v30 = v27[2];
  v31 = v27[3];
  v32 = v27[4];
  v67 = v27[5];
  v33 = v67;
  v68 = v32;
  v34 = &v24[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v66 = *&v24[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v65 = *&v24[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
  v64 = *&v24[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
  v63 = *&v24[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
  v62[2] = *&v24[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 32];
  v62[1] = *&v24[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 40];
  *v34 = v28;
  *(v34 + 1) = v29;
  *(v34 + 2) = v30;
  *(v34 + 3) = v31;
  *(v34 + 4) = v32;
  *(v34 + 5) = v33;
  v35 = v28;
  v36 = v29;
  v37 = v30;
  v38 = v31;
  v39 = v35;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  sub_2F1C8(v66, v65, v64, v63);
  v43 = *&v24[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v44 = *(v43 + 168);
  v71[0] = *(v43 + 152);
  v71[1] = v44;
  v71[2] = *(v43 + 184);
  *(v43 + 152) = v28;
  *(v43 + 160) = v29;
  *(v43 + 168) = v30;
  *(v43 + 176) = v31;
  v45 = v67;
  *(v43 + 184) = v68;
  *(v43 + 192) = v45;
  v46 = v39;
  v47 = v40;
  v48 = v41;
  v49 = v42;
  v50 = v46;
  v51 = v47;
  v52 = v48;
  v53 = v49;
  sub_75948(v71);
  sub_B2A40(v71);

  sub_42A2EC();
  v54 = v24[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v24[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v54 & 1) == 0)
  {
    [v24 setNeedsLayout];
  }

  v55 = *&v24[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

  v56 = *(v69 + 1);
  if (!(v56 >> 62))
  {
    v57 = *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8));
    if (v57)
    {
      goto LABEL_5;
    }

LABEL_13:

LABEL_14:
    v61 = [v24 layer];

    [v61 setAllowsGroupOpacity:0];
    return;
  }

  v57 = sub_ABB060();
  if (!v57)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v57 >= 1)
  {

    for (i = 0; i != v57; ++i)
    {
      if ((v56 & 0xC000000000000001) != 0)
      {
        v60 = sub_36003C(i, v56, v58);
      }

      else
      {
        v60 = *(v56 + 8 * i + 32);
      }

      TextStackView.add(_:)(v60);
    }

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_42A2EC()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  v4 = &v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize];
  if (v3 == &dword_0 + 2)
  {
    v5 = *&v1[OBJC_IVAR____TtC16MusicApplication10PersonCell_regularArtworkSize];
    v6 = *&v1[OBJC_IVAR____TtC16MusicApplication10PersonCell_regularArtworkSize + 8];
    *v4 = v5;
    *(v4 + 1) = v6;
    v7 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
    v8 = *(v7 + 80);
    v9 = *(v7 + 88);
    *(v7 + 80) = v5;
    *(v7 + 88) = v6;
    sub_75614(v8, v9);
    v10 = OBJC_IVAR____TtC16MusicApplication10PersonCell_regularArtworkEdgeInsets;
  }

  else
  {
    v11 = *&v1[OBJC_IVAR____TtC16MusicApplication10PersonCell_compactArtworkSize];
    v12 = *&v1[OBJC_IVAR____TtC16MusicApplication10PersonCell_compactArtworkSize + 8];
    *v4 = v11;
    *(v4 + 1) = v12;
    v13 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
    v14 = *(v13 + 80);
    v15 = *(v13 + 88);
    *(v13 + 80) = v11;
    *(v13 + 88) = v12;
    sub_75614(v14, v15);
    v10 = OBJC_IVAR____TtC16MusicApplication10PersonCell_compactArtworkEdgeInsets;
  }

  v16 = &v1[v10];
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = *(v16 + 2);
  v20 = *(v16 + 3);
  v21 = &v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  v22 = *v21;
  v23 = *(v21 + 1);
  *v21 = v17;
  *(v21 + 1) = v18;
  *(v21 + 2) = v19;
  *(v21 + 3) = v20;
  v25 = v22;
  v26 = v23;
  result = sub_AB38D0();
  if (result)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

double sub_42A454()
{

  return result;
}

id sub_42A4AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PersonCell(uint64_t a1)
{
  result = qword_E05F88;
  if (!qword_E05F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_42A614()
{
  sub_89F60();
  v0 = sub_ABA560();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v9[0] = v1;
  *(&v9[0] + 1) = v4;
  v9[1] = xmmword_AF7C20;
  v10 = 0;
  v11 = 0;
  v12 = v0;
  v13 = 1;
  v14 = xmmword_B0EC60;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(1701667182, 0xE400000000000000, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF82B0;
  *(v6 + 32) = v5;
  v15[0] = v1;
  v15[1] = v4;
  v16 = xmmword_AF7C20;
  v17 = 0;
  v18 = 0;
  v19 = v0;
  v20 = 1;
  v21 = xmmword_B0EC60;
  sub_2F118(v9, v8);

  sub_2F174(v15);
  return v5;
}

uint64_t sub_42A7A8(void *a1, _OWORD *a2)
{
  sub_89F60();
  v4 = sub_ABA560();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v5 = qword_E718D8;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  v9 = v7;
  v10 = v8;
  v11 = v4;
  v12 = [a1 horizontalSizeClass];
  v13 = [a1 preferredContentSizeCategory];
  v14 = sub_ABA330();

  if (v14)
  {
    v15 = 3;
  }

  else
  {
    v16 = [a1 preferredContentSizeCategory];
    v17 = sub_ABA320();

    if (v17)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }
  }

  if (v12 == &dword_0 + 2)
  {
    v18 = 26.0;
  }

  else
  {
    v18 = 20.0;
  }

  if (v12 == &dword_0 + 2)
  {
    v19 = 38.0;
  }

  else
  {
    v19 = 36.0;
  }

  *&v25 = v9;
  *(&v25 + 1) = v10;
  v26 = xmmword_AF7C20;
  v27 = 0uLL;
  *&v28 = v11;
  *(&v28 + 1) = v15;
  *&v29 = v19;
  *(&v29 + 1) = v18;
  swift_beginAccess();
  v20 = a2[5];
  v30[2] = a2[4];
  v30[3] = v20;
  v30[4] = a2[6];
  v21 = a2[3];
  v30[0] = a2[2];
  v30[1] = v21;
  v22 = v28;
  a2[4] = 0uLL;
  a2[5] = v22;
  a2[6] = v29;
  v23 = v26;
  a2[2] = v25;
  a2[3] = v23;
  sub_2F118(&v25, v31);
  sub_2F174(v30);
  sub_2EB2A8();

  v31[0] = v9;
  v31[1] = v10;
  v32 = xmmword_AF7C20;
  v33 = 0;
  v34 = 0;
  v35 = v11;
  v36 = v15;
  v37 = v19;
  v38 = v18;
  return sub_2F174(v31);
}

double sub_42A9F8(void *a1)
{
  type metadata accessor for CGSize(0);
  if ((sub_AB38D0() & 1) == 0)
  {
    type metadata accessor for UIEdgeInsets(0);
    sub_AB38D0();
  }

  v2 = sub_42A614();
  v4 = v3;
  sub_42A7A8(a1, v2);
  sub_2F48A4(v4, a1, 0, 0);

  return 0.0;
}

void sub_42AB1C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  if (v10)
  {
    v11 = *&v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeView];
    if (v11)
    {
      v12 = v10;
      v13 = *(v10 + 16);
      v14 = v11;
      v15 = v13(ObjectType, v12);
      swift_beginAccess();
      v16 = *(v15 + 120);
      v17 = *(v15 + 112) & 0xFFFFFFFFFFFFLL;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v17 = HIBYTE(v16) & 0xF;
      }

      if (v17)
      {
        v18 = (*(v12 + 24))(ObjectType, v12);
        v19 = [v4 effectiveUserInterfaceLayoutDirection];
        v20 = sub_3A204();
        [v20 bounds];

        if (*(*&v14[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16))
        {
          sub_37C7B0(v14, v15, v19, a1, a2, a3, a4);
          [v14 frame];
          CGRectGetWidth(v22);
        }

        v21 = v18;
        sub_ABA490();
        [v21 setFrame:?];
      }

      else
      {
        [v14 setHidden:1];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_42AD6C(void *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = swift_conformsToProtocol2();
  if (v12)
  {
    v13 = *&v5[*a1];
    if (v13)
    {
      v14 = v12;
      v15 = *(v12 + 16);
      v16 = v13;
      v17 = v15(ObjectType, v14);
      swift_beginAccess();
      v18 = *(v17 + 120);
      v19 = *(v17 + 112) & 0xFFFFFFFFFFFFLL;
      if ((v18 & 0x2000000000000000) != 0)
      {
        v19 = HIBYTE(v18) & 0xF;
      }

      if (v19)
      {
        v20 = (*(v14 + 24))(ObjectType, v14);
        v21 = [v5 effectiveUserInterfaceLayoutDirection];
        v22 = [v5 contentView];
        if (!v22)
        {
          v22 = v5;
        }

        v23 = v22;
        [v22 bounds];

        if (*(*&v16[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16))
        {
          sub_37C7B0(v16, v17, v21, a2, a3, a4, a5);
          [v16 frame];
          CGRectGetWidth(v25);
        }

        v24 = v20;
        sub_ABA490();
        [v24 setFrame:?];
      }

      else
      {
        [v16 setHidden:1];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_42AFA4(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_rank];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_title];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_artistName];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_textComponents];
  *v12 = sub_42C174();
  v12[1] = v13;
  v12[2] = v14;
  v12[3] = v15;
  v36.receiver = v4;
  v36.super_class = type metadata accessor for RankedMusicVideoVerticalCell(0);
  v16 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 layer];
  [v17 setAllowsGroupOpacity:0];

  v18 = [v16 layer];
  [v18 setAllowsGroupBlending:0];

  if (qword_DE6BB8 != -1)
  {
    swift_once();
  }

  v19 = xmmword_E05F98;
  v20 = qword_E05FA8;
  v21 = qword_E05FB0;
  v22 = &v16[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  *v22 = v19;
  *(v22 + 2) = v20;
  *(v22 + 3) = v21;
  type metadata accessor for UIEdgeInsets(0);
  v23 = &v16[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  if (sub_AB38D0())
  {
    v24 = *(v22 + 1);
    *v23 = *v22;
    *(v23 + 1) = v24;
    sub_35D498();
    [v16 setNeedsLayout];
  }

  v25 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  *&v16[v25] = 0x3FFC71C71C71C71CLL;
  if (sub_AB38D0())
  {
    sub_35D498();
  }

  v26 = *&v16[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v27 = *(v26 + 144);
  *(v26 + 144) = 2;
  if (v27 != 2)
  {
    v28 = *(v26 + 112);

    v29 = [v28 image];
    sub_788B8(v29);
  }

  v30 = *&v16[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

  v31 = *&v16[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_textComponents + 24];
  if (!(v31 >> 62))
  {
    v32 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
    if (v32)
    {
      goto LABEL_11;
    }

LABEL_19:

    return;
  }

  v32 = sub_ABB060();
  if (!v32)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (v32 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v32; ++i)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v35 = sub_36003C(i, v31, v33);
      }

      else
      {
        v35 = *(v31 + 8 * i + 32);
      }

      TextStackView.add(_:)(v35);
    }
  }
}

id sub_42B3B0(id result, char a2, __n128 a3)
{
  v4 = &v3[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_rank];
  v5 = *&v3[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_rank];
  v6 = v3[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_rank + 8];
  *v4 = result;
  v4[8] = a2 & 1;
  if ((a2 & 1) == 0)
  {
    if (v6 & 1 | (v5 != result))
    {
      v7 = *&v3[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_textComponents];
      v8 = v3;
      v9 = sub_ABB330();
      v11 = v10;
      swift_beginAccess();
      *(v7 + 112) = v9;
      *(v7 + 120) = v11;

      sub_2EB704();
      return [v8 setNeedsLayout];
    }
  }

  return result;
}

double sub_42B4A8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_42B5C0(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_textComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

double sub_42B6C0(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);

  return result;
}

double sub_42B754(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_artistName];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_artistName];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_artistName + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_textComponents + 16];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_42B86C(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_artistName] != result || *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_artistName + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_textComponents + 16];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

void sub_42B940(void *a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView);
  *(v1 + OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView) = a1;
  v8 = a1;

  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____TtC16MusicApplication9BadgeView_textStyle];
    *&v4[OBJC_IVAR____TtC16MusicApplication9BadgeView_textStyle] = UIFontTextStyleSubheadline;
    v6 = v4;
    v7 = UIFontTextStyleSubheadline;
    sub_4CAFD0(v5);
  }
}

void sub_42B9E0(__n128 a1)
{
  v2 = v1;
  v41.receiver = v1;
  v41.super_class = type metadata accessor for RankedMusicVideoVerticalCell(0);
  objc_msgSendSuper2(&v41, "layoutSubviews");
  v3 = [v1 contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v1 traitCollection];
  [v12 displayScale];
  [v1 effectiveUserInterfaceLayoutDirection];
  v13 = &v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  v39 = v13[2];
  v40 = v9;
  v14 = sub_76368(0, 0, 1);
  v16 = v15;
  v42.origin.x = v5;
  v42.origin.y = v7;
  v42.size.width = v9;
  v42.size.height = v11;
  CGRectGetMinY(v42);
  v43.origin.x = 0.0;
  v43.origin.y = 0.0;
  v43.size.width = v14;
  v43.size.height = v16;
  CGRectGetHeight(v43);
  v38 = v16;
  sub_ABA470();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_ABA490();
  v29 = sub_76B28(v25, v26, v27, v28);
  v30 = v11;
  v31 = v7;
  if (v29)
  {
    v44.origin.x = v18;
    v44.origin.y = v20;
    v44.size.width = v22;
    v44.size.height = v24;
    MaxY = CGRectGetMaxY(v44);
    v45.origin.x = v5;
    v45.origin.y = v7;
    v45.size.width = v40;
    v45.size.height = v11;
    v33 = v39 + MaxY - CGRectGetMinY(v45);
    v31 = v7 + v33;
    v30 = v11 - v33;
  }

  v34 = v30;
  v35 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView];
  if (v35 && *(*&v35[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16))
  {
    v36 = v35;
    [v36 frame];
    CGRectGetWidth(v46);
  }

  v37 = *&v2[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  sub_ABA490();
  [v37 setFrame:?];

  sub_42AD6C(&OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView, v5, v31, v40, v34);
}

__n128 sub_42BE1C()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_E05F98 = *&UIEdgeInsetsZero.top;
  *&qword_E05FA8 = v1;
  return result;
}

double sub_42BEFC()
{

  return result;
}

id sub_42BF94(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RankedMusicVideoVerticalCell(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for RankedMusicVideoVerticalCell(uint64_t a1)
{
  result = qword_E05FE8;
  if (!qword_E05FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_42C144()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView);
  v2 = v1;
  return v1;
}

uint64_t sub_42C174()
{
  sub_89F60();
  v0 = sub_ABA580();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v39[0] = v1;
  *(&v39[0] + 1) = v4;
  v39[1] = xmmword_AF7C20;
  v40 = 0;
  v41 = 0;
  v42 = v0;
  v43 = 1;
  v44 = xmmword_B00180;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(1802396018, 0xE400000000000000, v39);
  v6 = objc_opt_self();
  v7 = v3;
  v25 = v4;
  v22 = v4;
  v21 = v0;
  sub_2F118(v39, v59);
  v24 = v5;

  v23 = v0;
  v8 = [v6 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v9 = [v2 clearColor];
  v26 = v1;
  *&v33[0] = v1;
  *(&v33[0] + 1) = v9;
  v33[1] = xmmword_AF7C20;
  v34 = 0;
  v35 = 0;
  v36 = v8;
  v37 = 2;
  v38 = xmmword_AF7C30;
  swift_allocObject();
  v10 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v33);
  v11 = v7;
  v20 = v9;
  v19 = v8;
  sub_2F118(v33, v59);

  v12 = [v6 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v13 = qword_E718C8;
  v14 = qword_E718C8;
  v15 = [v2 clearColor];
  *&v27[0] = v13;
  *(&v27[0] + 1) = v15;
  v27[1] = xmmword_AF7C20;
  v28 = 0;
  v29 = 0;
  v30 = v12;
  v31 = 1;
  v32 = xmmword_AF7C40;
  swift_allocObject();
  v16 = TextStackView.Component.init(identifier:labelProperties:)(0x614E747369747261, 0xEA0000000000656DLL, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_AF82E0;
  *(v17 + 32) = v24;
  *(v17 + 40) = v10;
  *(v17 + 48) = v16;
  sub_2F118(v27, v59);

  v45[0] = v13;
  v45[1] = v15;
  v46 = xmmword_AF7C20;
  v47 = 0;
  v48 = 0;
  v49 = v12;
  v50 = 1;
  v51 = xmmword_AF7C40;
  sub_2F174(v45);
  v52[0] = v26;
  v52[1] = v9;
  v53 = xmmword_AF7C20;
  v54 = 0;
  v55 = 0;
  v56 = v8;
  v57 = 2;
  v58 = xmmword_AF7C30;
  sub_2F174(v52);
  v59[0] = v26;
  v59[1] = v25;
  v60 = xmmword_AF7C20;
  v61 = 0;
  v62 = 0;
  v63 = v23;
  v64 = 1;
  v65 = xmmword_B00180;
  sub_2F174(v59);
  return v24;
}

void sub_42C5B4()
{
  v1 = v0 + OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_rank;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_artistName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_textComponents);
  *v4 = sub_42C174();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  sub_ABAFD0();
  __break(1u);
}

void sub_42C674()
{
  v1 = *(v0 + 16);

  v3 = v1(v2);

  if (v3)
  {
    if (qword_DE6BC0 != -1)
    {
      swift_once();
    }

    v4 = sub_AB4BC0();
    __swift_project_value_buffer(v4, qword_E71760);
    v5 = v3;
    v6 = sub_AB4BA0();
    v7 = sub_AB9F50();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136446210;
      v10 = v5;
      v11 = [v10 description];
      v12 = sub_AB92A0();
      v14 = v13;

      v15 = sub_425E68(v12, v14, &v20);

      *(v8 + 4) = v15;
      _os_log_impl(&dword_0, v6, v7, "Performing pop onto navigation controller=%{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    oslog = [v5 popViewControllerAnimated:1];
  }

  else
  {
    if (qword_DE6BC0 != -1)
    {
      swift_once();
    }

    v16 = sub_AB4BC0();
    __swift_project_value_buffer(v16, qword_E71760);
    oslog = sub_AB4BA0();
    v17 = sub_AB9F40();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, oslog, v17, "Failed to pop navigation", v18, 2u);
    }
  }
}

void sub_42C90C()
{
  v1 = *(v0 + 16);

  v3 = v1(v2);

  if (v3)
  {
    if (qword_DE6BC0 != -1)
    {
      swift_once();
    }

    v4 = sub_AB4BC0();
    __swift_project_value_buffer(v4, qword_E71760);
    v18 = v3;
    v5 = sub_AB4BA0();
    v6 = sub_AB9F50();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19 = v8;
      *v7 = 136446210;
      v9 = v18;
      v10 = [v9 description];
      v11 = sub_AB92A0();
      v13 = v12;

      v14 = sub_425E68(v11, v13, &v19);

      *(v7 + 4) = v14;
      _os_log_impl(&dword_0, v5, v6, "Performing pop to root onto navigation controller=%{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
    }
  }

  else
  {
    if (qword_DE6BC0 != -1)
    {
      swift_once();
    }

    v15 = sub_AB4BC0();
    __swift_project_value_buffer(v15, qword_E71760);
    v18 = sub_AB4BA0();
    v16 = sub_AB9F40();
    if (os_log_type_enabled(v18, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v18, v16, "Failed to pop to root", v17, 2u);
    }
  }
}

void sub_42CBA0(void *a1, uint64_t a2)
{
  v5 = sub_AB5600();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v77 = &v71 - v9;
  __chkstk_darwin();
  v11 = &v71 - v10;
  v12 = *(v2 + 16);

  v14 = v12(v13);

  if (v14)
  {
    if (qword_DE6BC0 != -1)
    {
      swift_once();
    }

    v15 = sub_AB4BC0();
    __swift_project_value_buffer(v15, qword_E71760);
    v16 = *(v6 + 16);
    v16(v11, a2, v5);
    v17 = a1;
    v18 = v14;
    v19 = sub_AB4BA0();
    v20 = sub_AB9F50();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v76 = a2;
      v22 = v21;
      v74 = swift_slowAlloc();
      v78 = v74;
      *v22 = 136446722;
      v23 = v17;
      v73 = v19;
      v24 = v5;
      v25 = v23;
      v26 = [v23 description];
      v71 = v18;
      v27 = v26;
      v28 = sub_AB92A0();
      v72 = v20;
      v29 = v28;
      v75 = v17;
      v31 = v30;

      v32 = sub_425E68(v29, v31, &v78);

      *(v22 + 4) = v32;
      *(v22 + 12) = 2082;
      v16(v77, v11, v24);
      v33 = sub_AB9350();
      v35 = v34;
      (*(v6 + 8))(v11, v24);
      v36 = sub_425E68(v33, v35, &v78);

      *(v22 + 14) = v36;
      *(v22 + 22) = 2082;
      v37 = v71;
      v38 = v71;
      v39 = [v38 description];
      v40 = sub_AB92A0();
      v42 = v41;

      v43 = sub_425E68(v40, v42, &v78);
      v17 = v75;

      *(v22 + 24) = v43;
      v44 = v73;
      _os_log_impl(&dword_0, v73, v72, "Pushing to viewController=%{public}s with playActivityFields=%{public}s onto navigation controller=%{public}s", v22, 0x20u);
      swift_arrayDestroy();

      v45 = v37;
    }

    else
    {
      (*(v6 + 8))(v11, v5);

      v45 = v18;
    }

    sub_AB55E0();
    v65 = sub_AB9260();

    [v17 setPlayActivityFeatureName:v65];

    v66 = sub_AB55F0();
    isa = 0;
    if (v67 >> 60 != 15)
    {
      v69 = v66;
      v70 = v67;
      isa = sub_AB3250().super.isa;
      sub_466A4(v69, v70);
    }

    [v17 setPlayActivityForwardedRecommendationData:isa];

    [v45 pushViewController:v17 animated:1];
  }

  else
  {
    if (qword_DE6BC0 != -1)
    {
      swift_once();
    }

    v46 = sub_AB4BC0();
    __swift_project_value_buffer(v46, qword_E71760);
    v47 = *(v6 + 16);
    v47(v8, a2, v5);
    v48 = a1;
    v49 = sub_AB4BA0();
    v50 = sub_AB9F40();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v75 = v49;
      v52 = v51;
      v76 = swift_slowAlloc();
      v78 = v76;
      *v52 = 136446466;
      v53 = v48;
      v54 = [v53 description];
      v55 = sub_AB92A0();
      LODWORD(v74) = v50;
      v56 = v55;
      v58 = v57;

      v59 = sub_425E68(v56, v58, &v78);

      *(v52 + 4) = v59;
      *(v52 + 12) = 2082;
      v47(v77, v8, v5);
      v60 = sub_AB9350();
      v62 = v61;
      (*(v6 + 8))(v8, v5);
      v63 = sub_425E68(v60, v62, &v78);

      *(v52 + 14) = v63;
      v64 = v75;
      _os_log_impl(&dword_0, v75, v74, "Failed to push to viewController=%{public}s with playActivityFields=%{public}s", v52, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }
  }
}

void *sub_42D240()
{
  v1 = sub_AB5600();
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  __chkstk_darwin();
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);

  v7 = v5(v6);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 viewControllers];
    sub_72C6C();
    v10 = sub_AB9760();

    if (!(v10 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_17:

      return _swiftEmptyArrayStorage;
    }
  }

  v11 = sub_ABB060();
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_4:
  v28 = _swiftEmptyArrayStorage;
  result = sub_6D870(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = v28;
    v22[1] = v27 + 32;
    v23 = v10 & 0xC000000000000001;
    v24 = v11;
    v25 = v10;
    do
    {
      if (v23)
      {
        v15 = sub_35F8D4(v13, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = [v15 playActivityFeatureName];
      sub_AB92A0();
      v18 = [v16 playActivityForwardedRecommendationData];
      if (v18)
      {
        v19 = v18;
        sub_AB3260();
      }

      sub_AB55D0();

      v28 = v14;
      v21 = v14[2];
      v20 = v14[3];
      if (v21 >= v20 >> 1)
      {
        sub_6D870((v20 > 1), v21 + 1, 1);
        v14 = v28;
      }

      ++v13;
      v14[2] = v21 + 1;
      (*(v27 + 32))(v14 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21, v4, v26);
      v10 = v25;
    }

    while (v24 != v13);

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t LyricsOptionsManager.Observer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_42D5AC()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E71760);
  __swift_project_value_buffer(v0, qword_E71760);
  return static Logger.music(_:)(0x7475416B63617453, 0xEE00797469726F68);
}

void sub_42D61C(uint64_t a1)
{
  *(a1 + qword_E060E8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a1 + qword_E060F0) = 0;
  *(a1 + qword_E06100) = 0x4000;
  *(a1 + qword_E06108) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_42D6C0()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  [v0 loadViewIfNeeded];
  v2 = qword_DFE2F8;
  v3 = *&v0[qword_DFE2F8];
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v3 setAllowsMultipleSelectionDuringEditing:1];
  [v0 loadViewIfNeeded];
  v4 = *&v0[v2];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v4 setAllowsSelectionDuringEditing:1];
  [v0 loadViewIfNeeded];
  v5 = *&v0[v2];
  if (v5)
  {
    [v5 setDragInteractionEnabled:0];
    v6 = *JSOrderedPlaylistSelector.itemsDidChangeNotification.unsafeMutableAddressor();
    v7 = *&v0[qword_E060F8];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v9 = v6;
    v10 = v7;
    *&v1[qword_E06108] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v9, v7, 1, 1, sub_42FBF8, v8);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_42D83C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong[qword_E060F0];
    Strong[qword_E060F0] = 1;
    if (v3 == 1)
    {
    }

    else
    {
      v4 = Strong;
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        sub_42F818(v5);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

double sub_42D8DC(char a1)
{
  v2 = *(v1 + qword_E060F0);
  *(v1 + qword_E060F0) = a1;
  if (v2 != (a1 & 1))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_42F818(Strong);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_42D950(void *a1)
{
  v1 = a1;
  sub_42D6C0();
}

void sub_42D998(char a1)
{
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewDidAppear:", a1 & 1);
  v3 = *&v1[qword_DFE2F0];
  if (v3)
  {
    type metadata accessor for JSOrderedPlaylistSelectorModelResponse();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication38JSOrderedPlaylistSelectorModelResponse_jsResults);
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_42FC28;
      *(v7 + 24) = v6;
      v12[4] = sub_15AB68;
      v12[5] = v7;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_48D4FC;
      v12[3] = &block_descriptor_72_0;
      v8 = _Block_copy(v12);
      v9 = v3;
      v10 = v1;

      [v5 enumerateItemsUsingBlock:v8];
      _Block_release(v8);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }
}

void sub_42DB58(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_42D998(a3);
}

void sub_42DBAC(char a1, char a2)
{
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "setEditing:animated:", a1 & 1, a2 & 1);
  [v2 loadViewIfNeeded];
  v5 = *&v2[qword_DFE2F8];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  v7 = [v6 visibleCells];
  sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
  v8 = sub_AB9760();

  if (v8 >> 62)
  {
    v9 = sub_ABB060();
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_11:

    return;
  }

  v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = sub_360438(i, v8);
      }

      else
      {
        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      [v11 setNeedsUpdateConfiguration];
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_42DD0C(void *a1, uint64_t a2, char a3, char a4)
{
  v6 = a1;
  sub_42DBAC(a3, a4);
}

double sub_42DD68()
{
  v1 = *(v0 + qword_E060F0);
  *(v0 + qword_E060F0) = 0;
  if (v1 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_42F818(Strong);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_42DDD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85E0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_AB92A0();
  *(v0 + 168) = v9;
  isa = sub_AB9740().super.isa;
  v11 = [objc_opt_self() propertySetWithProperties:isa];

  qword_E060E0 = v11;
}

void sub_42DF30()
{
  v1 = *&v0[qword_E060F8];
  v2 = type metadata accessor for JSOrderedPlaylistSelectorModelRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC16MusicApplication37JSOrderedPlaylistSelectorModelRequest_orderedPlaylistSelector] = v1;
  v25.receiver = v3;
  v25.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v25, "init");
  sub_13C80(0, &unk_DEDE10, MPModelStoreBrowseContentItem_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 kindWithModelClass:ObjCClassFromMetadata];
  [v8 setItemKind:v9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_AF4EC0;
  *(v10 + 32) = sub_AB92A0();
  *(v10 + 40) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v13;
  if (qword_DE6BC8 != -1)
  {
    swift_once();
  }

  v14 = qword_E060E0;
  *(inited + 48) = qword_E060E0;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v15;
  *(inited + 72) = v14;
  v16 = v14;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MPPropertySet);
  isa = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v19 = sub_AB8FD0().super.isa;

  v20 = [v17 initWithProperties:isa relationships:v19];

  [v8 setItemProperties:v20];
  v21 = swift_allocObject();
  *(v21 + 16) = v0;
  v24[4] = sub_42F61C;
  v24[5] = v21;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_151E0;
  v24[3] = &block_descriptor_138;
  v22 = _Block_copy(v24);
  v23 = v0;

  [v8 performWithResponseHandler:v22];
  _Block_release(v22);
}

double sub_42E2A0(void *a1)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_42F6B4, v3);

  return result;
}

void sub_42E370(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      type metadata accessor for JSOrderedPlaylistSelectorModelResponse();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = a2;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = v4;
    sub_3B4724(v5);
  }
}

void sub_42E40C()
{
  v1 = *&v0[qword_DFE2F0];
  if (v1)
  {
    type metadata accessor for JSOrderedPlaylistSelectorModelResponse();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC16MusicApplication38JSOrderedPlaylistSelectorModelResponse_jsResults);
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      v5 = swift_allocObject();
      *(v5 + 16) = sub_42FAA4;
      *(v5 + 24) = v4;
      v10[4] = sub_5794C;
      v10[5] = v5;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_48D4FC;
      v10[3] = &block_descriptor_61_0;
      v6 = _Block_copy(v10);
      v7 = v1;
      v8 = v0;

      [v3 enumerateItemsUsingBlock:v6];
      _Block_release(v6);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }
}

id sub_42E5A8(void *a1)
{
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  [result bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v13 = result;
  [result music_inheritedLayoutInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = UIEdgeInsetsInsetRect_1(v6, v8, v10, v12, v15, v17, v19, v21);
  v23 = [v1 traitCollection];
  sub_14CD64(v23, *&v1[qword_E06100], v22);
  v25 = v24;

  return [a1 setRowHeight:v25];
}

double sub_42E6F4(char *a1, void *a2, double result)
{
  v4 = *(v3 + qword_DFE2F0);
  if (!v4)
  {
    return v8;
  }

  type metadata accessor for JSOrderedPlaylistSelectorModelResponse();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return v8;
  }

  v67 = v3;
  v9 = *(v7 + OBJC_IVAR____TtC16MusicApplication38JSOrderedPlaylistSelectorModelResponse_jsResults);
  v10 = v4;
  isa = sub_AB3770().super.isa;
  [v9 itemAtIndexPath:isa];

  type metadata accessor for JSOrderedPlaylistSelectorItem(0);
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v66 = v10;
    v14 = (v12 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_titleText);
    swift_beginAccess();
    v15 = v14[1];
    if (v15)
    {
      v16 = *v14;
      v17 = v15;
LABEL_14:
      v23 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
      v24 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
      v25 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8];
      *v23 = v16;
      *(v23 + 1) = v17;

      sub_142858(v24, v25);

      v26 = (v13 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_subtitleText);
      swift_beginAccess();
      if (v26[1])
      {
        v27 = *v26;
        v28 = v26[1];
      }

      else
      {
        v27 = 0;
        v28 = 0xE000000000000000;
      }

      swift_bridgeObjectRetain_n();

      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v27 & 0xFFFFFFFFFFFFLL;
      }

      v65 = v13;
      if (!v29)
      {
        v30 = [a2 playlist];
        if (v30)
        {
          v31 = a1;
          v32 = v30;
          v33 = sub_1506B4();
          v35 = v34;

          if (v35)
          {

            v27 = v33;
            v28 = v35;
          }

          a1 = v31;
        }
      }

      v36 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v37 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v38 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
      *v36 = v27;
      *(v36 + 1) = v28;
      sub_142A70(v37, v38);

      v39 = [a2 playlist];
      v40 = v39;
      if (v39)
      {
        v39 = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
        v41 = &off_D17A48;
      }

      else
      {
        v41 = 0;
        *(&v78 + 1) = 0;
        *&v79 = 0;
      }

      *&v78 = v40;
      *(&v79 + 1) = v39;
      *&v80 = v41;
      sub_15F84(&v78, &v70, &unk_DE9C60, &unk_AF8940);
      v42 = v72;
      if (v72)
      {
        v43 = v73;
        __swift_project_boxed_opaque_existential_1(&v70, v72);
        v44 = sub_4CAA30(&off_CEFDE8, v42, v43);
        __swift_destroy_boxed_opaque_existential_0(&v70);
      }

      else
      {
        sub_12E1C(&v70, &unk_DE9C60, &unk_AF8940);
        v44 = _swiftEmptyArrayStorage;
      }

      sub_178218(v44);

      sub_12E1C(&v78, &unk_DE9C60, &unk_AF8940);
      v45 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
      *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle] = *(v67 + qword_E06100);
      sub_143510(v45);
      v46 = [a2 playlist];
      v47 = a1;
      if (v46)
      {
        v48 = v46;
        v49 = [v46 type];
      }

      else
      {
        v49 = 0;
      }

      static Artwork.Placeholder.playlist(ofType:)(v49, &v70);
      v50 = v70;
      v52 = v71;
      v51 = v72;
      v53 = v73;
      v54 = v74;
      v76 = *(&v70 + 1);
      v77 = v70;
      v75 = v71;
      v55 = &v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
      v63 = *&v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
      v64 = *&v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
      v61 = *&v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
      v62 = *&v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
      sub_15F84(&v77, &v78, &unk_DFDE40, &qword_B0C640);
      sub_15F84(&v76, &v78, &unk_DFDE40, &qword_B0C640);
      sub_15F84(&v75, &v78, &unk_E00030, &unk_AF98E0);
      *v55 = v50;
      *(v55 + 2) = v52;
      *(v55 + 3) = v51;
      *(v55 + 4) = v53;
      *(v55 + 5) = v54;
      v68 = v51;
      sub_2F1C8(v64, v63, v62, v61);
      v56 = *&v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
      v57 = *(v56 + 168);
      v78 = *(v56 + 152);
      v79 = v57;
      v80 = *(v56 + 184);
      *(v56 + 152) = v50;
      *(v56 + 168) = v52;
      *(v56 + 176) = v51;
      *(v56 + 184) = v53;
      *(v56 + 192) = v54;
      sub_15F84(&v77, v69, &unk_DFDE40, &qword_B0C640);
      sub_15F84(&v76, v69, &unk_DFDE40, &qword_B0C640);
      sub_15F84(&v75, v69, &unk_E00030, &unk_AF98E0);
      v58 = v68;
      sub_15F84(&v77, v69, &unk_DFDE40, &qword_B0C640);
      sub_15F84(&v76, v69, &unk_DFDE40, &qword_B0C640);
      sub_15F84(&v75, v69, &unk_E00030, &unk_AF98E0);
      v59 = v58;
      sub_75948(&v78);
      sub_12E1C(&v78, &unk_DF8690, &unk_AF9900);
      sub_12E1C(&v77, &unk_DFDE40, &qword_B0C640);
      sub_12E1C(&v76, &unk_DFDE40, &qword_B0C640);
      sub_12E1C(&v75, &unk_E00030, &unk_AF98E0);

      sub_12E1C(&v77, &unk_DFDE40, &qword_B0C640);
      sub_12E1C(&v76, &unk_DFDE40, &qword_B0C640);
      sub_12E1C(&v75, &unk_E00030, &unk_AF98E0);

      v60 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected;
      swift_beginAccess();
      [v47 setSelected:*(v65 + v60)];

      swift_unknownObjectRelease();
      return v8;
    }

    v18 = [a2 playlist];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 name];
      if (v20)
      {
        v21 = v20;
        v16 = sub_AB92A0();
        v17 = v22;

        goto LABEL_14;
      }
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    goto LABEL_14;
  }

  swift_unknownObjectRelease();
  return v8;
}

void sub_42EDA4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_42FABC();

  (*(v8 + 8))(v10, v7);
}

uint64_t sub_42EEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v5 + 8))(v7, v4);
  return 1;
}

void sub_42EF80(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v23 = sub_AB3820();
  v8 = *(v23 - 8);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v21 - v11;
  sub_AB3790();
  sub_AB3790();
  v22 = a4;
  v13 = a5;
  v14 = a1;
  v24 = JSOrderedPlaylistSelector.items.getter();
  v15 = sub_AB37E0();
  v16 = sub_AB37E0();
  v17 = sub_2E5F34(v15);
  if (!(v24 >> 62))
  {
    if (*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)) >= v16)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (sub_ABB060() < v16)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v16 & 0x8000000000000000) == 0)
  {
    sub_1AFC54(v16, v16, v17);

    JSOrderedPlaylistSelector.items.setter(v24);
    v18 = sub_42D8DC(1);
    v19 = *(v8 + 8);
    v20 = v23;
    v19(v10, v23, v18);
    (v19)(v12, v20);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_42F188(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  type metadata accessor for JSOrderedPlaylistSelectorItem(0);
  swift_unknownObjectRetain();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected;
    v7 = v5;
    swift_beginAccess();
    if (*(v7 + v6) == 1)
    {
      [a4 loadViewIfNeeded];
      v8 = *&a4[qword_DFE2F8];
      if (v8)
      {
        v9 = v8;
        isa = sub_AB3770().super.isa;
        [v9 selectItemAtIndexPath:isa animated:0 scrollPosition:0];
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

double sub_42F2E0()
{
  sub_176DC(v0 + qword_E060E8);

  return result;
}

double sub_42F330(uint64_t a1)
{
  sub_176DC(a1 + qword_E060E8);

  return result;
}

uint64_t type metadata accessor for JSOrderedPlaylistSelectorViewController(uint64_t a1)
{
  result = qword_E06138;
  if (!qword_E06138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_42F484(id *a1)
{
  result = [*a1 playlist];
  if (result)
  {
    v2 = result;
    v3 = MPModelPlaylist.preferredArtworkCatalog.getter();

    return v3;
  }

  return result;
}

id sub_42F4D0()
{
  v0 = [objc_allocWithZone(UICollectionViewTableLayout) init];
  [v0 _setShowsAdditionalSeparators:0];
  isa = sub_AB9740().super.isa;
  [v0 _setFloatingElementKinds:isa];

  sub_42E5A8(v0);
  return v0;
}

uint64_t sub_42F5E4()
{

  return swift_deallocObject();
}

double block_copy_helper_138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_42F63C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_42F674()
{

  return swift_deallocObject();
}

id sub_42F6BC(char *a1, id a2)
{
  v3 = [a2 playlist];
  if (v3)
  {
    v4 = v3;
    v5 = MPModelPlaylist.preferredArtworkCatalog.getter();
  }

  else
  {
    v5 = 0;
  }

  v6 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
  *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = v5;
  v7 = v5;

  sub_74EA4(v5);
  result = [a1 tableViewCell];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  [result _setDrawsSeparatorAtTopOfSection:1];

  result = [a1 tableViewCell];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  [result _setShouldHaveFullLengthTopSeparator:1];

  result = [a1 tableViewCell];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v11 = result;
  [result _setDrawsTopSeparatorDuringReordering:1];

  return [a1 setShowsReorderControl:1];
}

void sub_42F818(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_onboardingVerticalStack];
  v3 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_requiresValidation;
  swift_beginAccess();
  if (*(v2 + v3) == 1 && (a1[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_isUpdating] & 1) == 0)
  {
    v4 = [a1 navigationItem];
    v5 = [a1 parentViewController];
    if (v5)
    {
      v6 = v5;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v7 = v6;
        v8 = [v7 navigationItem];

        v6 = [v7 parentViewController];
        v4 = v8;
        if (!v6)
        {
          goto LABEL_10;
        }
      }
    }

    v8 = v4;
LABEL_10:
    v9 = [v8 rightBarButtonItem];

    if (v9)
    {
      v10 = *&a1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers];
      if (v10 >> 62)
      {
        goto LABEL_29;
      }

      for (i = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
      {

        v12 = 0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = sub_35F8D4(v12, v10);
          }

          else
          {
            if (v12 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_28;
            }

            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          swift_getObjectType();
          v16 = swift_conformsToProtocol2();
          if (v16 && v14)
          {
            v17 = v16;
            ObjectType = swift_getObjectType();
            LOBYTE(v17) = (*(v17 + 8))(ObjectType, v17);

            if (v17)
            {
              v19 = 1;
LABEL_26:

              goto LABEL_31;
            }
          }

          else
          {
          }

          ++v12;
          if (v15 == i)
          {
            v19 = 0;
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        ;
      }

      v19 = 0;
LABEL_31:
      [v9 setEnabled:v19];
    }
  }
}

double sub_42FABC()
{
  v1 = *(v0 + qword_DFE2F0);
  if (v1)
  {
    type metadata accessor for JSOrderedPlaylistSelectorModelResponse();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication38JSOrderedPlaylistSelectorModelResponse_jsResults);
      v5 = v1;
      isa = sub_AB3770().super.isa;
      [v4 itemAtIndexPath:isa];

      type metadata accessor for JSOrderedPlaylistSelectorItem(0);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        v9 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected;
        swift_beginAccess();
        JSOrderedPlaylistSelectorItem.isSelected.setter((*(v8 + v9) & 1) == 0);
        sub_42D8DC(1);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

double sub_42FC34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 contentScrollViewForEdge:1];

      if (v7)
      {
        [v7 setKeyboardDismissMode:1];
      }
    }

    if (([*(v4 + 32) hidesNavigationBarDuringPresentation] & 1) == 0)
    {
      v8 = [objc_opt_self() currentDevice];
      v9 = [v8 userInterfaceIdiom];

      if (v9 != &dword_4 + 2)
      {
        v10 = swift_unknownObjectWeakLoadStrong();
        v11 = v10;
        if (v10)
        {
          v12 = [v10 navigationItem];

          v13 = [v12 largeTitleDisplayMode];
        }

        else
        {
          v13 = 0;
        }

        *(v4 + 16) = v13;
        *(v4 + 24) = v11 == 0;
        v14 = swift_unknownObjectWeakLoadStrong();
        if (v14)
        {
          v15 = v14;
          v16 = [v14 navigationItem];

          [v16 setLargeTitleDisplayMode:2];
        }
      }
    }

    v17 = *(v4 + 72);
    if (v17)
    {
      v18 = *(v4 + 80);

      v17(v4);
      sub_17654(v17, v18);
    }
  }

  return result;
}

double sub_42FE04(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 88);
    if (v5)
    {
      v6 = *(Strong + 96);
      sub_307CC(*(Strong + 88), v6);

      v7 = a1 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text;
      v8 = *(a1 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
      v9 = *(v7 + 8);

      v5(v8, v9);

      sub_17654(v5, v6);
    }

    else
    {
    }
  }

  return result;
}

double sub_42FEC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (([*(Strong + 32) hidesNavigationBarDuringPresentation] & 1) == 0)
    {
      v5 = [objc_opt_self() currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if (v6 != &dword_4 + 2 && (*(v4 + 24) & 1) == 0)
      {
        v7 = *(v4 + 16);
        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          v9 = v8;
          v10 = [v8 navigationItem];

          [v10 setLargeTitleDisplayMode:v7];
        }
      }
    }

    v11 = *(v4 + 88);
    if (v11)
    {
      v12 = *(v4 + 96);

      v11(0, 0);
      sub_17654(v11, v12);
    }

    v13 = *(v4 + 104);
    if (v13)
    {
      v14 = *(v4 + 112);

      v13(v4);
      sub_17654(v13, v14);
    }
  }

  return result;
}

double sub_43001C()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  *&v3 = sub_AB9320();
  *(&v3 + 1) = v0;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  v9[0] = v3;
  v9[1] = v0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  sub_576EC(&v3, &v2);
  sub_57748(v9);
  xmmword_E71798 = v5;
  xmmword_E717A8 = v6;
  xmmword_E717B8 = v7;
  qword_E717C8 = v8;
  result = *&v3;
  xmmword_E71778 = v3;
  xmmword_E71788 = v4;
  return result;
}

double sub_43018C(uint64_t a1, uint64_t a2)
{
  v5 = (*(v2 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  *v5 = a1;
  v5[1] = a2;

  v6 = [*(v2 + 32) searchBar];
  if (a2)
  {

    v7 = sub_AB9260();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText:v7];

  v8 = *(v2 + 88);
  if (v8)
  {
    v9 = *(v2 + 96);

    v8(a1, a2);

    sub_17654(v8, v9);
  }

  else
  {
  }

  return result;
}

id sub_4302B8()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 128);
  }

  else
  {
    sub_3811BC();
    v3 = v0;
    v4 = static UIKeyCommand.findKeyCommand(affecting:)();
    v5 = *(v0 + 128);
    *(v3 + 128) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_430320()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v4 = (v0 + 64);
    if (*(v0 + 64))
    {
      goto LABEL_11;
    }

    v3 = 0;
    goto LABEL_7;
  }

  v2 = Strong;
  v3 = [Strong navigationItem];

  v4 = (v0 + 64);
  if ((*(v0 + 64) & 1) == 0)
  {
LABEL_7:
    [*(v0 + 32) setActive:0];
    if (v3)
    {
      [v3 setSearchController:0];
      goto LABEL_9;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_14;
  }

  if (!v3)
  {
    goto LABEL_11;
  }

  [v3 setSearchController:*(v0 + 32)];
LABEL_9:
  [v3 setPreferredSearchBarPlacement:2];
  v5 = swift_unknownObjectWeakLoadStrong();
  v15 = v3;
  if (v5)
  {
    v6 = [v5 traitCollection];

    v7 = [v6 userInterfaceIdiom];
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  [v15 setHidesSearchBarWhenScrolling:v8];

LABEL_14:
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = sub_4302B8();
    [v10 removeKeyCommand:v11];
  }

  if (*v4 == 1)
  {
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = sub_4302B8();
      [v13 addKeyCommand:v14];
    }
  }
}

void sub_43050C(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = &a1[*a4];
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 1);
    v7 = a1;
    sub_307CC(v5, v6);
    v5(v7);
    sub_17654(v5, v6);
  }
}

id sub_430690(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  *v3 = 0;
  v3[1] = 0;

  result = [a1 setText:0];
  v5 = *(v1 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_didCancel);
  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_didCancel + 8);

    v5(v1);

    return sub_17654(v5, v6);
  }

  return result;
}

id sub_430838(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LibrarySearchController.BarDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_430900()
{
  swift_unknownObjectWeakDestroy();

  sub_17654(*(v0 + 72), *(v0 + 80));
  sub_17654(*(v0 + 88), *(v0 + 96));
  sub_17654(*(v0 + 104), *(v0 + 112));

  return v0;
}

uint64_t sub_430958()
{
  sub_430900();

  return swift_deallocClassInstance();
}

uint64_t sub_4309D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  *(v2 + 32) = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  swift_unknownObjectWeakInit();
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 1;
  v5 = type metadata accessor for LibrarySearchController.BarDelegate();
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = [objc_allocWithZone(v5) init];
  *(v2 + 128) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  swift_unknownObjectWeakAssign();
  v6 = *(v2 + 120);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = (v6 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_didBeginEditing);
  v9 = *(v6 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_didBeginEditing);
  v10 = v8[1];
  *v8 = sub_430CE8;
  v8[1] = v7;

  sub_17654(v9, v10);

  v11 = *(v2 + 120);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = (v11 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_textDidChange);
  v14 = *(v11 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_textDidChange);
  v15 = v13[1];
  *v13 = sub_430CF0;
  v13[1] = v12;

  sub_17654(v14, v15);

  v16 = *(v2 + 120);
  v17 = swift_allocObject();
  swift_weakInit();

  v18 = (v16 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_didCancel);
  v19 = *(v16 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_didCancel);
  v20 = v18[1];
  *v18 = sub_430CF8;
  v18[1] = v17;

  sub_17654(v19, v20);

  [*(v2 + 32) setObscuresBackgroundDuringPresentation:0];
  v21 = [*(v2 + 32) searchBar];
  [v21 setDelegate:*(v2 + 120)];

  v22 = [*(v2 + 32) searchBar];
  [v22 setReturnKeyType:9];

  if (a2)
  {
    v23 = [*(v2 + 32) searchBar];
    v24 = sub_AB9260();
    [v23 setPlaceholder:v24];
  }

  sub_430320();
  return v2;
}

uint64_t sub_430CB0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_430D04()
{
  result = qword_E068E8;
  if (!qword_E068E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E068E8);
  }

  return result;
}

void sub_430D68(uint64_t a1)
{
  v1 = (a1 + qword_E06900);
  *v1 = 0;
  v1[1] = 0;
  v2 = (a1 + qword_E06908);
  *v2 = 0;
  v2[1] = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_430DE4(void *a1, uint64_t a2, uint64_t a3)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for SharePlayProxCardViewController(0);
  v4 = v8.receiver;
  objc_msgSendSuper2(&v8, "viewDidDisappear:", a3);
  v5 = *&v4[qword_E06908];
  if (v5)
  {
    v6 = *&v4[qword_E06908 + 8];

    v5(v7);
    sub_17654(v5, v6);
  }
}

uint64_t sub_430EAC()
{

  sub_439BE8(v0 + qword_E068F8, type metadata accessor for SharePlayProxCard.ViewModel);
  sub_17654(*(v0 + qword_E06900), *(v0 + qword_E06900 + 8));
  v1 = *(v0 + qword_E06908);
  v2 = *(v0 + qword_E06908 + 8);

  return sub_17654(v1, v2);
}

id sub_430F28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharePlayProxCardViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_430F60(uint64_t a1)
{

  sub_439BE8(a1 + qword_E068F8, type metadata accessor for SharePlayProxCard.ViewModel);
  sub_17654(*(a1 + qword_E06900), *(a1 + qword_E06900 + 8));
  v2 = *(a1 + qword_E06908);
  v3 = *(a1 + qword_E06908 + 8);

  return sub_17654(v2, v3);
}

uint64_t sub_431008(uint64_t a1)
{
  result = type metadata accessor for SharePlayProxCard.ViewModel(319);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_4310DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

uint64_t sub_431150()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

void sub_4311C4(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  v3 = a1;

  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v4);

  if (v4)
  {

    *(v1 + OBJC_IVAR____TtCV16MusicApplication17SharePlayProxCard9CardState_removedImage) = 0;
  }
}

uint64_t sub_4312A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

uint64_t sub_431318()
{
  v1 = OBJC_IVAR____TtCV16MusicApplication17SharePlayProxCard9CardState__name;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8, &unk_B09A00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV16MusicApplication17SharePlayProxCard9CardState__image;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE9D0, &unk_B0F740);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV16MusicApplication17SharePlayProxCard9CardState__isLoading;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40, &qword_B05A30);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

void sub_431480(uint64_t a1)
{
  sub_431D6C(319, &qword_DFE858, &type metadata for String, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_431D08(319, qword_DFE860, &unk_E00030, &unk_AF98E0, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_431D6C(319, &qword_DFC638, &type metadata for Bool, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_431614(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50, &unk_AF8930);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_4316E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50, &unk_AF8930);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_431794(uint64_t a1)
{
  sub_4318D0(319, &qword_E06C80, &type metadata accessor for Artwork);
  if (v1 <= 0x3F)
  {
    sub_4318D0(319, &unk_E06C88, sub_472EC);
    if (v2 <= 0x3F)
    {
      sub_431D6C(319, &qword_DF0B70, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_4318D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_ABA9C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_431954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SharePlayProxCard.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_431A28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SharePlayProxCard.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_431B04(uint64_t a1)
{
  type metadata accessor for SharePlayProxCard.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_431C4C(319);
    if (v2 <= 0x3F)
    {
      sub_431D08(319, &qword_DEC940, &qword_E07D90, &qword_AF9030, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_431D6C(319, &qword_E06D58, &type metadata for Bool, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_431D6C(319, &unk_E06D60, &type metadata for ImagePicker.SourceType, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_431C4C(uint64_t a1)
{
  if (!qword_E06D48)
  {
    type metadata accessor for SharePlayProxCard.CardState(255);
    sub_431CB0();
    v1 = sub_AB5B80();
    if (!v2)
    {
      atomic_store(v1, &qword_E06D48);
    }
  }
}

unint64_t sub_431CB0()
{
  result = qword_E06D50;
  if (!qword_E06D50)
  {
    type metadata accessor for SharePlayProxCard.CardState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E06D50);
  }

  return result;
}

void sub_431D08(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_431D6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_431DD8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SharePlayProxCard.CardState(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

uint64_t sub_431E18()
{
  type metadata accessor for SharePlayProxCard(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v5);

  v1 = String.trim()();
  countAndFlagsBits = v1._countAndFlagsBits;

  v3 = (v1._object >> 56) & 0xF;
  if ((v1._object & 0x2000000000000000) == 0)
  {
    v3 = v1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    countAndFlagsBits = *(v0 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 48));
  }

  return countAndFlagsBits;
}

double sub_431EF8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  sub_AB35C0();
  __chkstk_darwin();
  v28 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9250();
  __chkstk_darwin();
  v27 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06DA8, &qword_B0F268);
  __chkstk_darwin();
  v6 = &v23 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06DB0, &qword_B0F270);
  __chkstk_darwin();
  v8 = &v23 - v7;
  *v6 = sub_AB6440();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06DB8, &unk_B0F278);
  sub_4323C4(v1, &v6[*(v9 + 44)]);
  v26 = type metadata accessor for SharePlayProxCard(0);
  v10 = v1 + *(v26 + 28);
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v35) = v11;
  v36 = v12;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980, &qword_AFC050);
  sub_AB7660();
  v32 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06DC0, &unk_B0F288);
  sub_36A00(&qword_E06DC8, &qword_E06DA8, &qword_B0F268, &protocol conformance descriptor for VStack<A>);
  v24 = &protocol conformance descriptor for TupleView<A>;
  sub_36A00(&qword_E06DD0, &qword_E06DC0, &unk_B0F288, &protocol conformance descriptor for TupleView<A>);
  sub_AB7180();
  sub_12E1C(v6, &qword_E06DA8, &qword_B0F268);

  v13 = sub_AB7A30();
  v15 = v14;
  v16 = &v8[*(v30 + 36)];
  sub_437E74(v16);
  v17 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE998, &qword_B099D0) + 36));
  *v17 = v13;
  v17[1] = v15;
  sub_AB91E0();
  sub_AB3550();
  v35 = sub_AB9320();
  v36 = v18;
  v19 = v2 + *(v26 + 36);
  v20 = *v19;
  v21 = *(v19 + 1);
  v33 = v20;
  v34 = v21;
  sub_AB7660();
  v31 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06DD8, &qword_B0F298);
  sub_4388F4();
  sub_36A48();
  sub_36A00(&qword_E06DF0, &qword_E06DD8, &qword_B0F298, v24);
  sub_AB7280();
  sub_12E1C(v8, &qword_E06DB0, &qword_B0F270);

  return result;
}

void sub_4323C4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v375 = a2;
  v3 = type metadata accessor for SharePlayProxCard(0);
  v4 = *(v3 - 8);
  v367 = v3;
  v368 = v4;
  __chkstk_darwin();
  v369 = v5;
  v370 = &v311 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E10, &qword_B0F358);
  __chkstk_darwin();
  v374 = &v311 - v6;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E18, &qword_B0F360);
  __chkstk_darwin();
  v410 = &v311 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v372 = &v311 - v8;
  __chkstk_darwin();
  v409 = &v311 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E20, &qword_B0F368);
  v365 = *(v10 - 8);
  v366 = v10;
  __chkstk_darwin();
  v354 = &v311 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E28, &unk_B0F370);
  v352 = *(v12 - 8);
  v353 = v12;
  __chkstk_darwin();
  v324 = &v311 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v325 = &v311 - v14;
  v15 = sub_AB2E80();
  v320 = *(v15 - 8);
  v321 = v15;
  __chkstk_darwin();
  v319 = &v311 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = sub_AB2E90();
  v316 = *(v318 - 8);
  __chkstk_darwin();
  v317 = &v311 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2EB0();
  __chkstk_darwin();
  v315 = &v311 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v314 = &v311 - v19;
  v322 = sub_AB2F20();
  v347 = *(v322 - 8);
  __chkstk_darwin();
  v323 = &v311 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v313 = &v311 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9D10, &qword_B0F380);
  __chkstk_darwin();
  v346 = &v311 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v355 = &v311 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E30, &qword_B0F388);
  __chkstk_darwin();
  v351 = &v311 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v350 = &v311 - v25;
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E38, &qword_B0F390);
  __chkstk_darwin();
  v338 = (&v311 - v26);
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E40, &qword_B0F398);
  __chkstk_darwin();
  v341 = &v311 - v27;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E48, &qword_B0F3A0);
  __chkstk_darwin();
  v345 = &v311 - v28;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E50, &qword_B0F3A8);
  __chkstk_darwin();
  v344 = &v311 - v29;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E58, &qword_B0F3B0);
  __chkstk_darwin();
  v349 = &v311 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v342 = &v311 - v31;
  __chkstk_darwin();
  v356 = &v311 - v32;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E60, &qword_B0F3B8);
  __chkstk_darwin();
  v328 = &v311 - v33;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E68, &qword_B0F3C0);
  __chkstk_darwin();
  v330 = &v311 - v34;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E70, &qword_B0F3C8);
  __chkstk_darwin();
  v333 = &v311 - v35;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E78, &qword_B0F3D0);
  __chkstk_darwin();
  v335 = &v311 - v36;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E80, &qword_B0F3D8);
  __chkstk_darwin();
  v348 = &v311 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v332 = &v311 - v38;
  __chkstk_darwin();
  v380 = &v311 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E88, &unk_B0F3E0);
  __chkstk_darwin();
  v407 = &v311 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v415 = &v311 - v41;
  v412 = sub_AB6C70();
  v414 = *(v412 - 8);
  __chkstk_darwin();
  v411 = &v311 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB840, &qword_AF9B10);
  __chkstk_darwin();
  v44 = &v311 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E90, &qword_B0F3F0) - 8;
  __chkstk_darwin();
  v408 = &v311 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v311 - v47;
  v49 = *a1;
  v50 = sub_AB6BC0();
  (*(*(v50 - 8) + 56))(v44, 1, 1, v50);
  v51 = sub_AB6C20();
  sub_12E1C(v44, &qword_DEB840, &qword_AF9B10);
  KeyPath = swift_getKeyPath();
  v458 = v49;
  v459 = KeyPath;
  v460 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB8C0, &qword_AF9C10);
  sub_849E8();
  sub_AB7240();

  v53 = sub_AB7430();
  v54 = swift_getKeyPath();
  v55 = *(v45 + 44);
  v406 = v48;
  v56 = &v48[v55];
  *v56 = v54;
  v56[1] = v53;
  v413 = a1;
  v57 = a1[2];
  v458 = a1[1];
  v459 = v57;
  v381 = sub_36A48();

  v58 = sub_AB6F20();
  v60 = v59;
  LOBYTE(v49) = v61;
  sub_AB6BB0();
  v378 = enum case for Font.Leading.tight(_:);
  v62 = v414;
  v377 = *(v414 + 104);
  v379 = v414 + 104;
  v63 = v411;
  v64 = v412;
  v377(v411);
  sub_AB6CA0();
  v376 = *(v62 + 8);
  v414 = v62 + 8;
  v376(v63, v64);

  v65 = sub_AB6E80();
  v67 = v66;
  LOBYTE(v62) = v68;

  sub_36B74(v58, v60, v49 & 1);

  v404 = sub_AB6E70();
  v403 = v69;
  LOBYTE(v57) = v70;
  v405 = v71;
  sub_36B74(v65, v67, v62 & 1);

  v401 = swift_getKeyPath();
  v402 = sub_AB6A90();
  sub_AB5690();
  v400 = v72;
  v399 = v73;
  v398 = v74;
  v397 = v75;
  v390 = v57 & 1;
  LOBYTE(v423) = v57 & 1;
  LOBYTE(v513) = 0;
  v396 = sub_AB6AB0();
  sub_AB5690();
  v363 = v77;
  v364 = v76;
  v361 = v79;
  v362 = v78;
  LOBYTE(v458) = 0;
  v395 = sub_AB6AC0();
  sub_AB5690();
  v394 = v80;
  v393 = v81;
  v392 = v82;
  v391 = v83;
  v84 = v413[4];
  v458 = v413[3];
  v459 = v84;

  v85 = sub_AB6F20();
  v87 = v86;
  LOBYTE(v65) = v88;
  sub_AB6B90();
  v89 = v411;
  v90 = v412;
  (v377)(v411, v378, v412);
  sub_AB6CA0();
  v376(v89, v90);

  v388 = sub_AB6E80();
  v387 = v91;
  LOBYTE(v62) = v92;
  v389 = v93;

  v94 = v65 & 1;
  v95 = v413;
  sub_36B74(v85, v87, v94);

  v385 = swift_getKeyPath();
  v386 = sub_AB74E0();
  v384 = swift_getKeyPath();
  v382 = v62 & 1;
  LOBYTE(v458) = v62 & 1;
  v383 = sub_AB6A90();
  sub_AB5690();
  v359 = v97;
  v360 = v96;
  v357 = v99;
  v358 = v98;
  if (*(v95 + 72) != 1)
  {
    (*(v365 + 56))(v415, 1, 1, v366);
    sub_431E18();
    if (!v210)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v312 = 1;
  v100 = *(v95 + 48);
  v458 = *(v95 + 40);
  v459 = v100;

  v101 = sub_AB6F20();
  v103 = v102;
  v105 = v104;
  v311 = v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB960, &qword_B06D60);
  v108 = v328;
  v109 = &v328[*(v107 + 36)];
  v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB968, &qword_B06D68) + 28);
  v111 = enum case for Text.Case.uppercase(_:);
  v112 = sub_AB6E60();
  v113 = *(v112 - 8);
  (*(v113 + 104))(v109 + v110, v111, v112);
  (*(v113 + 56))(v109 + v110, 0, 1, v112);
  *v109 = swift_getKeyPath();
  *v108 = v101;
  *(v108 + 8) = v103;
  v114 = v413;
  *(v108 + 16) = v105 & 1;
  *(v108 + 24) = v311;
  v115 = sub_AB6CB0();
  v116 = swift_getKeyPath();
  v117 = (v108 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB948, &qword_B06D20) + 36));
  *v117 = v116;
  v117[1] = v115;
  v118 = sub_AB74E0();
  v119 = swift_getKeyPath();
  v120 = (v108 + *(v326 + 36));
  *v120 = v119;
  v120[1] = v118;
  sub_AB7A40();
  sub_AB5E90();
  v121 = v330;
  sub_36B0C(v108, v330, &qword_E06E60, &qword_B0F3B8);
  v122 = (v121 + *(v327 + 36));
  v123 = v504;
  v122[4] = v503;
  v122[5] = v123;
  v122[6] = v505;
  v124 = v500;
  *v122 = v499;
  v122[1] = v124;
  v125 = v502;
  v122[2] = v501;
  v122[3] = v125;
  LOBYTE(v118) = sub_AB6A90();
  sub_AB5690();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v134 = v121;
  v135 = v333;
  sub_36B0C(v134, v333, &qword_E06E68, &qword_B0F3C0);
  v136 = v135 + *(v329 + 36);
  *v136 = v118;
  *(v136 + 8) = v127;
  *(v136 + 16) = v129;
  *(v136 + 24) = v131;
  *(v136 + 32) = v133;
  *(v136 + 40) = 0;
  LOBYTE(v118) = sub_AB6AC0();
  sub_AB5690();
  v138 = v137;
  v140 = v139;
  v142 = v141;
  v144 = v143;
  v145 = v135;
  v146 = v335;
  sub_36B0C(v145, v335, &qword_E06E70, &qword_B0F3C8);
  v147 = v146 + *(v331 + 36);
  *v147 = v118;
  *(v147 + 8) = v138;
  *(v147 + 16) = v140;
  *(v147 + 24) = v142;
  *(v147 + 32) = v144;
  *(v147 + 40) = 0;
  LOBYTE(v118) = sub_AB6AB0();
  sub_AB5690();
  v149 = v148;
  v151 = v150;
  v153 = v152;
  v155 = v154;
  v156 = v146;
  v157 = v332;
  sub_36B0C(v156, v332, &qword_E06E78, &qword_B0F3D0);
  v158 = v157 + *(v334 + 36);
  *v158 = v118;
  *(v158 + 8) = v149;
  *(v158 + 16) = v151;
  *(v158 + 24) = v153;
  *(v158 + 32) = v155;
  *(v158 + 40) = 0;
  v159 = v380;
  sub_36B0C(v157, v380, &qword_E06E80, &qword_B0F3D8);
  v160 = sub_AB62E0();
  v161 = v338;
  *v338 = v160;
  *(v161 + 8) = 0;
  *(v161 + 16) = 1;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F18, &unk_B0F598);
  sub_434AD4(v114, v161 + *(v162 + 44));
  v163 = [objc_opt_self() quaternarySystemFillColor];
  v164 = sub_AB7510();
  v165 = sub_AB6AA0();
  v166 = v161 + *(v336 + 36);
  *v166 = v164;
  *(v166 + 8) = v165;
  sub_AB7A30();
  sub_AB5E90();
  v167 = v341;
  sub_36B0C(v161, v341, &qword_E06E38, &qword_B0F390);
  v168 = (v167 + *(v337 + 36));
  v169 = v511;
  v168[4] = v510;
  v168[5] = v169;
  v168[6] = v512;
  v170 = v507;
  *v168 = v506;
  v168[1] = v170;
  v171 = v509;
  v168[2] = v508;
  v168[3] = v171;
  sub_AB7A30();
  sub_AB5E90();
  v172 = v345;
  sub_36B0C(v167, v345, &qword_E06E40, &qword_B0F398);
  v173 = (v172 + *(v340 + 36));
  v174 = v518;
  v173[4] = v517;
  v173[5] = v174;
  v173[6] = v519;
  v175 = v514;
  *v173 = v513;
  v173[1] = v175;
  v176 = v516;
  v173[2] = v515;
  v173[3] = v176;
  v177 = v344;
  v178 = &v344[*(v339 + 36)];
  v179 = *(sub_AB5E60() + 20);
  v180 = enum case for RoundedCornerStyle.continuous(_:);
  v181 = sub_AB63A0();
  (*(*(v181 - 8) + 104))(&v178[v179], v180, v181);
  __asm { FMOV            V0.2D, #16.0 }

  *v178 = _Q0;
  *&v178[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB20, &qword_AFE410) + 36)] = 256;
  sub_36B0C(v172, v177, &qword_E06E48, &qword_B0F3A0);
  LOBYTE(v180) = sub_AB6AC0();
  sub_AB5690();
  v188 = v187;
  v190 = v189;
  v192 = v191;
  v194 = v193;
  v195 = v342;
  sub_36B0C(v177, v342, &qword_E06E50, &qword_B0F3A8);
  v196 = v195 + *(v343 + 36);
  *v196 = v180;
  *(v196 + 8) = v188;
  *(v196 + 16) = v190;
  *(v196 + 24) = v192;
  *(v196 + 32) = v194;
  *(v196 + 40) = 0;
  sub_36B0C(v195, v356, &qword_E06E58, &qword_B0F3B0);
  v198 = *(v114 + 56);
  v197 = *(v114 + 64);
  v458 = v198;
  v459 = v197;
  strcpy(&v423, "{{userName}}");
  BYTE13(v423) = 0;
  HIWORD(v423) = -5120;
  v199 = sub_ABAB20();
  v200 = v159;
  v202 = v346;
  v201 = v347;
  if (v199)
  {
    sub_431E18();
    if (!v203)
    {
      v246 = v350;
      (*(v352 + 56))(v350, 1, 1, v353);
      goto LABEL_19;
    }
  }

  v458 = v198;
  v459 = v197;
  strcpy(&v423, "{{userName}}");
  BYTE13(v423) = 0;
  HIWORD(v423) = -5120;

  v204 = sub_431E18();
  if (v205)
  {
    v206 = v204;
  }

  else
  {
    v206 = 0;
  }

  if (v205)
  {
    v207 = v205;
  }

  else
  {
    v207 = 0xE000000000000000;
  }

  v440 = v206;
  v441 = v207;
  sub_ABAAB0();

  v208 = sub_AB31C0();
  (*(*(v208 - 8) + 56))(v314, 1, 1, v208);
  (*(v316 + 104))(v317, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v318);
  (*(v320 + 104))(v319, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v321);
  sub_AB2EA0();
  v209 = v313;
  sub_AB2EF0();
  v211 = v355;
  v212 = v322;
  (*(v201 + 32))(v355, v209, v322);
  v213 = v323;
  (*(v201 + 56))(v211, 0, 1, v212);
  sub_15F84(v211, v202, &unk_DE9D10, &qword_B0F380);
  v214 = *(v201 + 48);
  v215 = v214(v202, 1, v212);
  if (v215 == 1)
  {
    sub_AB2E30();
    if (v214(v202, 1, v212) != 1)
    {
      sub_12E1C(v202, &unk_DE9D10, &qword_B0F380);
    }
  }

  else
  {
    (*(v201 + 32))(v213, v202, v212);
  }

  v381 = sub_AB6F10();
  v346 = v217;
  v347 = v216;
  v219 = v218;
  sub_AB7A40();
  sub_AB5E90();
  v220 = v219 & 1;
  LOBYTE(v423) = v219 & 1;
  sub_AB6CB0();
  v221 = v411;
  v222 = v412;
  (v377)(v411, v378, v412);
  v379 = sub_AB6CA0();
  v376(v221, v222);

  v223 = swift_getKeyPath();
  v224 = sub_AB74E0();
  v225 = swift_getKeyPath();
  v226 = sub_AB6A90();
  sub_AB5690();
  v228 = v227;
  v230 = v229;
  v232 = v231;
  v234 = v233;
  LOBYTE(v458) = 0;
  v235 = swift_getKeyPath();
  v236 = v353;
  v237 = v324;
  v238 = &v324[*(v353 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F20, &qword_B0F5D8);
  sub_AB5A80();
  sub_12E1C(v355, &unk_DE9D10, &qword_B0F380);
  *v238 = v235;
  v239 = v346;
  v240 = v347;
  *v237 = v381;
  *(v237 + 8) = v240;
  *(v237 + 16) = v220;
  *(v237 + 24) = v239;
  v241 = v421;
  *(v237 + 96) = v420;
  *(v237 + 112) = v241;
  *(v237 + 128) = v422;
  v242 = v417;
  *(v237 + 32) = v416;
  *(v237 + 48) = v242;
  v243 = v419;
  *(v237 + 64) = v418;
  *(v237 + 80) = v243;
  v244 = v379;
  *(v237 + 144) = v223;
  *(v237 + 152) = v244;
  *(v237 + 160) = v225;
  *(v237 + 168) = v224;
  *(v237 + 176) = v226;
  *(v237 + 184) = v228;
  *(v237 + 192) = v230;
  *(v237 + 200) = v232;
  *(v237 + 208) = v234;
  *(v237 + 216) = 0;
  v245 = v325;
  sub_36B0C(v237, v325, &qword_E06E28, &unk_B0F370);
  v246 = v350;
  sub_36B0C(v245, v350, &qword_E06E28, &unk_B0F370);
  (*(v352 + 56))(v246, 0, 1, v236);
  v200 = v380;
LABEL_19:
  v247 = v348;
  sub_15F84(v200, v348, &qword_E06E80, &qword_B0F3D8);
  v248 = v356;
  v249 = v349;
  sub_15F84(v356, v349, &qword_E06E58, &qword_B0F3B0);
  v250 = v246;
  v251 = v246;
  v252 = v351;
  sub_15F84(v250, v351, &qword_E06E30, &qword_B0F388);
  v253 = v354;
  sub_15F84(v247, v354, &qword_E06E80, &qword_B0F3D8);
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F28, &qword_B0F5E0);
  sub_15F84(v249, v253 + *(v254 + 48), &qword_E06E58, &qword_B0F3B0);
  sub_15F84(v252, v253 + *(v254 + 64), &qword_E06E30, &qword_B0F388);
  sub_12E1C(v251, &qword_E06E30, &qword_B0F388);
  sub_12E1C(v248, &qword_E06E58, &qword_B0F3B0);
  sub_12E1C(v380, &qword_E06E80, &qword_B0F3D8);
  sub_12E1C(v252, &qword_E06E30, &qword_B0F388);
  sub_12E1C(v249, &qword_E06E58, &qword_B0F3B0);
  sub_12E1C(v247, &qword_E06E80, &qword_B0F3D8);
  v255 = v415;
  sub_36B0C(v253, v415, &qword_E06E20, &qword_B0F368);
  (*(v365 + 56))(v255, 0, 1, v366);
  v95 = v413;
  sub_431E18();
  if (!v256)
  {
    v257 = 1;
    goto LABEL_22;
  }

LABEL_20:

LABEL_21:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v458);

  v257 = v458;
LABEL_22:
  LODWORD(v412) = v257;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v458);

  v258 = sub_436C18(v95);
  v259 = v370;
  sub_438BAC(v95, v370);
  v260 = (*(v368 + 80) + 16) & ~*(v368 + 80);
  v261 = swift_allocObject();
  sub_438C24(v259, v261 + v260);
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E98, &qword_B0F4D0);
  sub_4391D0(&qword_E06EA0, &qword_E06E98, &qword_B0F4D0, sub_4391A0);
  v262 = v374;
  sub_AB7690();
  v263 = swift_getKeyPath();
  v264 = swift_allocObject();
  *(v264 + 16) = v412;
  v265 = &v262[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06EE8, &qword_B0F530) + 36)];
  *v265 = v263;
  v265[1] = sub_439564;
  v265[2] = v264;
  LOBYTE(v263) = sub_AB6AA0();
  v266 = &v262[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06EF0, &qword_B0F538) + 36)];
  v414 = v258;
  *v266 = v258;
  v266[8] = v263;
  v267 = &v262[*(v371 + 36)];
  v268 = enum case for RoundedCornerStyle.continuous(_:);
  v269 = sub_AB63A0();
  (*(*(v269 - 8) + 104))(v267, v268, v269);
  *&v267[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06EF8, &qword_B0F540) + 36)] = 256;

  LOBYTE(v267) = sub_AB6AB0();
  sub_AB5690();
  v271 = v270;
  v273 = v272;
  v275 = v274;
  v277 = v276;
  v278 = v262;
  v279 = v372;
  sub_36B0C(v278, v372, &qword_E06E10, &qword_B0F358);
  v280 = v279 + *(v373 + 36);
  *v280 = v267;
  *(v280 + 8) = v271;
  *(v280 + 16) = v273;
  *(v280 + 24) = v275;
  *(v280 + 32) = v277;
  *(v280 + 40) = 0;
  v281 = v409;
  sub_36B0C(v279, v409, &qword_E06E18, &qword_B0F360);
  v282 = v408;
  sub_15F84(v406, v408, &qword_E06E90, &qword_B0F3F0);
  sub_15F84(v415, v407, &qword_E06E88, &unk_B0F3E0);
  sub_15F84(v281, v410, &qword_E06E18, &qword_B0F360);
  v283 = v282;
  v284 = v375;
  sub_15F84(v283, v375, &qword_E06E90, &qword_B0F3F0);
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F00, &qword_B0F548);
  v286 = (v284 + v285[12]);
  *&v423 = v404;
  *(&v423 + 1) = v403;
  LOBYTE(v424) = v390;
  *(&v424 + 1) = *v494;
  DWORD1(v424) = *&v494[3];
  *(&v424 + 1) = v405;
  *&v425 = v401;
  BYTE8(v425) = 1;
  *(&v425 + 9) = *v493;
  HIDWORD(v425) = *&v493[3];
  LOBYTE(v426) = v402;
  *(&v426 + 1) = *v492;
  DWORD1(v426) = *&v492[3];
  *(&v426 + 1) = v400;
  *&v427 = v399;
  *(&v427 + 1) = v398;
  *&v428 = v397;
  BYTE8(v428) = 0;
  HIDWORD(v428) = *(v496 + 3);
  *(&v428 + 9) = v496[0];
  LOBYTE(v429) = v396;
  DWORD1(v429) = *&v495[3];
  *(&v429 + 1) = *v495;
  v288 = v363;
  v287 = v364;
  *(&v429 + 1) = v364;
  *&v430 = v363;
  v290 = v361;
  v289 = v362;
  *(&v430 + 1) = v362;
  *&v431 = v361;
  BYTE8(v431) = 0;
  *(&v431 + 9) = *v498;
  HIDWORD(v431) = *&v498[3];
  LOBYTE(v432) = v395;
  DWORD1(v432) = *&v497[3];
  *(&v432 + 1) = *v497;
  *(&v432 + 1) = v394;
  *&v433[0] = v393;
  *(&v433[0] + 1) = v392;
  *&v433[1] = v391;
  WORD4(v433[1]) = 0;
  BYTE10(v433[1]) = 1;
  v291 = v423;
  v292 = v424;
  v293 = v426;
  v294 = v427;
  v286[2] = v425;
  v286[3] = v293;
  *v286 = v291;
  v286[1] = v292;
  v295 = v428;
  v296 = v430;
  v297 = v431;
  v286[6] = v429;
  v286[7] = v296;
  v286[4] = v294;
  v286[5] = v295;
  v298 = v432;
  v299 = v433[0];
  *(v286 + 171) = *(v433 + 11);
  v286[9] = v298;
  v286[10] = v299;
  v286[8] = v297;
  v300 = (v284 + v285[16]);
  *&v434 = v388;
  *(&v434 + 1) = v387;
  LOBYTE(v435) = v382;
  *(&v435 + 1) = v490[0];
  DWORD1(v435) = *(v490 + 3);
  *(&v435 + 1) = v389;
  *&v436 = v385;
  BYTE8(v436) = 1;
  HIDWORD(v436) = *&v489[3];
  *(&v436 + 9) = *v489;
  *&v437 = v384;
  *(&v437 + 1) = v386;
  LOBYTE(v438) = v383;
  DWORD1(v438) = *(v491 + 3);
  *(&v438 + 1) = v491[0];
  v302 = v359;
  v301 = v360;
  *(&v438 + 1) = v360;
  *&v439[0] = v359;
  v304 = v357;
  v303 = v358;
  *(&v439[0] + 1) = v358;
  *&v439[1] = v357;
  WORD4(v439[1]) = 0;
  BYTE10(v439[1]) = 1;
  v305 = v435;
  *v300 = v434;
  v300[1] = v305;
  v306 = v436;
  v307 = v437;
  *(v300 + 91) = *(v439 + 11);
  v308 = v439[0];
  v300[4] = v438;
  v300[5] = v308;
  v300[2] = v306;
  v300[3] = v307;
  v309 = v407;
  sub_15F84(v407, v284 + v285[20], &qword_E06E88, &unk_B0F3E0);
  v310 = v410;
  sub_15F84(v410, v284 + v285[24], &qword_E06E18, &qword_B0F360);
  sub_15F84(&v423, &v458, &qword_E06F08, &qword_B0F550);
  sub_15F84(&v434, &v458, &qword_E06F10, &qword_B0F558);
  sub_12E1C(v409, &qword_E06E18, &qword_B0F360);
  sub_12E1C(v415, &qword_E06E88, &unk_B0F3E0);
  sub_12E1C(v406, &qword_E06E90, &qword_B0F3F0);
  sub_12E1C(v310, &qword_E06E18, &qword_B0F360);
  sub_12E1C(v309, &qword_E06E88, &unk_B0F3E0);
  v440 = v388;
  v441 = v387;
  v442 = v382;
  *v443 = v490[0];
  *&v443[3] = *(v490 + 3);
  v444 = v389;
  v445 = v385;
  v446 = 1;
  *v447 = *v489;
  *&v447[3] = *&v489[3];
  v448 = v384;
  v449 = v386;
  v450 = v383;
  *&v451[3] = *(v491 + 3);
  *v451 = v491[0];
  v452 = v301;
  v453 = v302;
  v454 = v303;
  v455 = v304;
  v456 = 0;
  v457 = 1;
  sub_12E1C(&v440, &qword_E06F10, &qword_B0F558);
  v458 = v404;
  v459 = v403;
  LOBYTE(v460) = v390;
  *(&v460 + 1) = *v494;
  HIDWORD(v460) = *&v494[3];
  v461 = v405;
  v462 = v401;
  v463 = 1;
  *v464 = *v493;
  *&v464[3] = *&v493[3];
  v465 = v402;
  *v466 = *v492;
  *&v466[3] = *&v492[3];
  v467 = v400;
  v468 = v399;
  v469 = v398;
  v470 = v397;
  v471 = 0;
  *&v472[3] = *(v496 + 3);
  *v472 = v496[0];
  v473 = v396;
  *&v474[3] = *&v495[3];
  *v474 = *v495;
  v475 = v287;
  v476 = v288;
  v477 = v289;
  v478 = v290;
  v479 = 0;
  *&v480[3] = *&v498[3];
  *v480 = *v498;
  v481 = v395;
  *&v482[3] = *&v497[3];
  *v482 = *v497;
  v483 = v394;
  v484 = v393;
  v485 = v392;
  v486 = v391;
  v487 = 0;
  v488 = 1;
  sub_12E1C(&v458, &qword_E06F08, &qword_B0F550);
  sub_12E1C(v408, &qword_E06E90, &qword_B0F3F0);
}

uint64_t sub_434AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v159 = a2;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F30, &qword_B0F5E8);
  __chkstk_darwin();
  v158 = &v131 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v157 = &v131 - v4;
  v151 = sub_AB4780();
  v139 = *(v151 - 1);
  __chkstk_darwin();
  v148 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v147 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF9B30, &unk_B0F5F0);
  __chkstk_darwin();
  v150 = &v131 - v7;
  v138 = sub_AB8A60();
  v136 = *(v138 - 8);
  __chkstk_darwin();
  v134 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50, &unk_AF8930);
  __chkstk_darwin();
  v137 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v149 = &v131 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB818, &qword_AF9AE8);
  __chkstk_darwin();
  v144 = &v131 - v11;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB820, &qword_AF9AF0);
  v146 = *(v135 - 8);
  __chkstk_darwin();
  v145 = &v131 - v12;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8EF8, &qword_B045A8);
  __chkstk_darwin();
  v142 = &v131 - v13;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F38, &qword_B0F600);
  __chkstk_darwin();
  v143 = &v131 - v14;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F40, &qword_B0F608);
  __chkstk_darwin();
  v16 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v131 - v17;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F48, &qword_B0F610);
  __chkstk_darwin();
  v20 = (&v131 - v19);
  v21 = sub_AB7540();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F50, &unk_B0F618);
  __chkstk_darwin();
  v155 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v153 = &v131 - v26;
  Int.seconds.getter(54);
  Int.seconds.getter(10);
  v27 = *(type metadata accessor for SharePlayProxCard(0) + 20);
  v160 = a1;
  v28 = *(a1 + v27 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v175);

  if (v175)
  {
    v151 = v175;
    sub_AB7520();
    (*(v22 + 104))(v24, enum case for Image.ResizingMode.stretch(_:), v21);
    v29 = sub_AB7590();
    (*(v22 + 8))(v24, v21);

    sub_AB7A30();
    sub_AB5970();
    v30 = v181;
    v31 = v182;
    v32 = v183;
    v33 = v184;
    v35 = v185;
    v34 = v186;
    LOBYTE(v175) = v182;
    LOBYTE(v162) = v184;
    v36 = sub_AB6AA0();
    sub_AB5690();
    v161[0] = 0;
    *&v168 = v29;
    *(&v168 + 1) = v30;
    LOBYTE(v169) = v31;
    *(&v169 + 1) = v32;
    LOBYTE(v170) = v33;
    *(&v170 + 1) = v35;
    *&v171 = v34;
    WORD4(v171) = 256;
    *(&v171 + 10) = v162;
    HIWORD(v171) = WORD2(v162);
    LOBYTE(v172) = v36;
    DWORD1(v172) = *(&v175 + 3);
    *(&v172 + 1) = v175;
    *(&v172 + 1) = v37;
    *v173 = v38;
    *&v173[8] = v39;
    *&v173[16] = v40;
    v173[24] = 0;
    v179 = v172;
    v180[0] = *v173;
    *(v180 + 9) = *&v173[9];
    v175 = v168;
    v176 = v169;
    v177 = v170;
    v178 = v171;
    v174 = 0;
    BYTE9(v180[1]) = 0;
    sub_15F84(&v168, &v162, &qword_E06F70, &qword_B0F630);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F70, &qword_B0F630);
    sub_43971C();
    sub_AB6610();
    v41 = v166;
    v42 = v167[0];
    v179 = v166;
    v180[0] = v167[0];
    v43 = *(v167 + 10);
    *(v180 + 10) = *(v167 + 10);
    v44 = v163;
    v175 = v162;
    v176 = v163;
    v46 = v164;
    v45 = v165;
    v177 = v164;
    v178 = v165;
    *v20 = v162;
    v20[1] = v44;
    v20[4] = v41;
    v20[5] = v42;
    v20[2] = v46;
    v20[3] = v45;
    *(v20 + 90) = v43;
    swift_storeEnumTagMultiPayload();
    sub_15F84(&v175, v161, &qword_E06F58, &qword_B0F628);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F58, &qword_B0F628);
    sub_439698();
    sub_439908();
    v47 = v153;
    sub_AB6610();
    sub_12E1C(&v168, &qword_E06F70, &qword_B0F630);

    sub_12E1C(&v175, &qword_E06F58, &qword_B0F628);
    v48 = v47;
  }

  else
  {
    v49 = v149;
    v50 = v150;
    v131 = v16;
    v132 = v18;
    v51 = v151;
    v133 = v20;
    if (*(v28 + OBJC_IVAR____TtCV16MusicApplication17SharePlayProxCard9CardState_removedImage))
    {
      v52 = v136;
      v53 = v138;
      (*(v136 + 56))(v149, 1, 1, v138);
    }

    else
    {
      v54 = type metadata accessor for SharePlayProxCard.ViewModel(0);
      v55 = *(v160 + *(v54 + 44));
      if (v55)
      {
        v151 = v55;
        sub_AB7520();
        (*(v22 + 104))(v24, enum case for Image.ResizingMode.stretch(_:), v21);
        v56 = sub_AB7590();
        (*(v22 + 8))(v24, v21);

        sub_AB7A30();
        sub_AB5970();
        v57 = v181;
        v58 = v182;
        v59 = v183;
        v60 = v184;
        v62 = v185;
        v61 = v186;
        LOBYTE(v175) = v182;
        LOBYTE(v162) = v184;
        v63 = sub_AB6AA0();
        sub_AB5690();
        v161[0] = 0;
        *&v168 = v56;
        *(&v168 + 1) = v57;
        LOBYTE(v169) = v58;
        *(&v169 + 1) = v59;
        LOBYTE(v170) = v60;
        *(&v170 + 1) = v62;
        *&v171 = v61;
        WORD4(v171) = 256;
        *(&v171 + 10) = v162;
        HIWORD(v171) = WORD2(v162);
        LOBYTE(v172) = v63;
        DWORD1(v172) = *(&v175 + 3);
        *(&v172 + 1) = v175;
        *(&v172 + 1) = v64;
        *v173 = v65;
        *&v173[8] = v66;
        *&v173[16] = v67;
        v173[24] = 0;
        v179 = v172;
        v180[0] = *v173;
        *(v180 + 9) = *&v173[9];
        v175 = v168;
        v176 = v169;
        v177 = v170;
        v178 = v171;
        v174 = 1;
        BYTE9(v180[1]) = 1;
        sub_15F84(&v168, &v162, &qword_E06F70, &qword_B0F630);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F70, &qword_B0F630);
        sub_43971C();
        sub_AB6610();
        v68 = v166;
        v69 = v167[0];
        v179 = v166;
        v180[0] = v167[0];
        v70 = *(v167 + 10);
        *(v180 + 10) = *(v167 + 10);
        v71 = v163;
        v175 = v162;
        v176 = v163;
        v73 = v164;
        v72 = v165;
        v177 = v164;
        v178 = v165;
        v74 = v133;
        *v133 = v162;
        v74[1] = v71;
        v74[4] = v68;
        v74[5] = v69;
        v74[2] = v73;
        v74[3] = v72;
        *(v74 + 90) = v70;
        swift_storeEnumTagMultiPayload();
        sub_15F84(&v175, v161, &qword_E06F58, &qword_B0F628);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F58, &qword_B0F628);
        sub_439698();
        sub_439908();
        v48 = v153;
        sub_AB6610();
        sub_12E1C(&v168, &qword_E06F70, &qword_B0F630);

        sub_12E1C(&v175, &qword_E06F58, &qword_B0F628);
        goto LABEL_11;
      }

      sub_15F84(v160 + *(v54 + 40), v49, &unk_DE9C50, &unk_AF8930);
      v53 = v138;
      v52 = v136;
    }

    v75 = v137;
    sub_36B0C(v49, v137, &unk_DE9C50, &unk_AF8930);
    v76 = 1;
    v77 = (*(v52 + 48))(v75, 1, v53);
    v78 = v52;
    v79 = v133;
    v80 = v51;
    v81 = v53;
    v82 = v139;
    v83 = v144;
    if (v77 != 1)
    {
      v84 = v134;
      (*(v78 + 32))(v134, v75, v81);
      v85 = sub_AB89C0();
      (*(*(v85 - 8) + 56))(v50, 1, 1, v85);
      ArtworkImage.ViewModel.init(artwork:cropStyle:)(v84, v50, v83);
      v76 = 0;
    }

    v86 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v86 - 8) + 56))(v83, v76, 1, v86);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F20, &qword_B045D0);
    v88 = v147;
    (*(*(v87 - 8) + 56))(v147, 8, 11, v87);
    ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, &v162);
    v89 = v148;
    (*(v82 + 104))(v148, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v80);
    v90 = v145;
    v91 = static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v83, v88, &v162, v89, v145);
    (*(v82 + 8))(v89, v80, v91);
    sub_439BE8(v88, type metadata accessor for ArtworkImage.Placeholder);
    sub_12E1C(v83, &qword_DEB818, &qword_AF9AE8);
    sub_AB7A30();
    sub_AB5970();
    v92 = v142;
    (*(v146 + 32))(v142, v90, v135);
    v93 = (v92 + *(v141 + 36));
    v94 = v176;
    *v93 = v175;
    v93[1] = v94;
    v93[2] = v177;
    v95 = v143;
    sub_36B0C(v92, v143, &qword_DF8EF8, &qword_B045A8);
    *(v95 + *(v140 + 36)) = 256;
    LOBYTE(v92) = sub_AB6AA0();
    sub_AB5690();
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v104 = v131;
    sub_36B0C(v95, v131, &qword_E06F38, &qword_B0F600);
    v105 = v104 + *(v154 + 36);
    *v105 = v92;
    *(v105 + 8) = v97;
    *(v105 + 16) = v99;
    *(v105 + 24) = v101;
    *(v105 + 32) = v103;
    *(v105 + 40) = 0;
    v106 = v132;
    sub_36B0C(v104, v132, &qword_E06F40, &qword_B0F608);
    sub_15F84(v106, v79, &qword_E06F40, &qword_B0F608);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F58, &qword_B0F628);
    sub_439698();
    sub_439908();
    v48 = v153;
    sub_AB6610();
    sub_12E1C(v106, &qword_E06F40, &qword_B0F608);
  }

LABEL_11:
  v107 = sub_AB6A50();
  v108 = v157;
  *v157 = v107;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FA8, &qword_B0F650);
  sub_435C34(v108 + *(v109 + 44));
  v110 = sub_AB6B00();
  sub_AB5690();
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v118 = v117;
  v119 = v108 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FB0, &qword_B0F658) + 36);
  *v119 = v110;
  *(v119 + 8) = v112;
  *(v119 + 16) = v114;
  *(v119 + 24) = v116;
  *(v119 + 32) = v118;
  *(v119 + 40) = 0;
  v120 = sub_AB6AF0();
  sub_AB5690();
  v121 = v155;
  v122 = v108 + *(v156 + 36);
  *v122 = v120;
  *(v122 + 8) = v123;
  *(v122 + 16) = v124;
  *(v122 + 24) = v125;
  *(v122 + 32) = v126;
  *(v122 + 40) = 0;
  sub_15F84(v48, v121, &qword_E06F50, &unk_B0F618);
  v127 = v158;
  sub_15F84(v108, v158, &qword_E06F30, &qword_B0F5E8);
  v128 = v159;
  sub_15F84(v121, v159, &qword_E06F50, &unk_B0F618);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FB8, &qword_B0F660);
  sub_15F84(v127, v128 + *(v129 + 48), &qword_E06F30, &qword_B0F5E8);
  sub_12E1C(v108, &qword_E06F30, &qword_B0F5E8);
  sub_12E1C(v48, &qword_E06F50, &unk_B0F618);
  sub_12E1C(v127, &qword_E06F30, &qword_B0F5E8);
  return sub_12E1C(v121, &qword_E06F50, &unk_B0F618);
}

uint64_t sub_435C34@<X0>(uint64_t a2@<X8>)
{
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FC0, &qword_B0F668);
  __chkstk_darwin();
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v21 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FC8, &qword_B0F670);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FD0, &qword_B0F678);
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v21 - v12;
  *v13 = sub_AB62E0();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FD8, &qword_B0F680);
  sub_435FA0(&v13[*(v14 + 44)]);
  *v9 = sub_AB62E0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v15 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FE0, &qword_B0F688) + 44)];
  *v5 = sub_AB6450();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FE8, &qword_B0F690);
  sub_4368F8(&v5[*(v16 + 44)]);
  sub_15F84(v5, v3, &qword_E06FC0, &qword_B0F668);
  sub_15F84(v3, v15, &qword_E06FC0, &qword_B0F668);
  v17 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FF0, &qword_B0F698) + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_12E1C(v5, &qword_E06FC0, &qword_B0F668);
  sub_12E1C(v3, &qword_E06FC0, &qword_B0F668);
  sub_15F84(v13, v11, &qword_E06FD0, &qword_B0F678);
  sub_15F84(v9, v7, &qword_E06FC8, &qword_B0F670);
  v18 = v22;
  sub_15F84(v11, v22, &qword_E06FD0, &qword_B0F678);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FF8, &qword_B0F6A0);
  sub_15F84(v7, v18 + *(v19 + 48), &qword_E06FC8, &qword_B0F670);
  sub_12E1C(v9, &qword_E06FC8, &qword_B0F670);
  sub_12E1C(v13, &qword_E06FD0, &qword_B0F678);
  sub_12E1C(v7, &qword_E06FC8, &qword_B0F670);
  return sub_12E1C(v11, &qword_E06FD0, &qword_B0F678);
}

uint64_t sub_435FA0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07000, &qword_B0F6A8);
  __chkstk_darwin();
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v13 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07008, &qword_B0F6B0);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v13 - v8;
  sub_4361A4();
  sub_4365A0(v5);
  sub_15F84(v9, v7, &qword_E07008, &qword_B0F6B0);
  sub_15F84(v5, v3, &qword_E07000, &qword_B0F6A8);
  sub_15F84(v7, a1, &qword_E07008, &qword_B0F6B0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07048, &qword_B0F710);
  v11 = a1 + *(v10 + 48);
  *v11 = 0;
  *(v11 + 8) = 1;
  sub_15F84(v3, a1 + *(v10 + 64), &qword_E07000, &qword_B0F6A8);
  sub_12E1C(v5, &qword_E07000, &qword_B0F6A8);
  sub_12E1C(v9, &qword_E07008, &qword_B0F6B0);
  sub_12E1C(v3, &qword_E07000, &qword_B0F6A8);
  return sub_12E1C(v7, &qword_E07008, &qword_B0F6B0);
}

uint64_t sub_4361A4()
{
  v28[0] = *(type metadata accessor for SharePlayProxCard(0) - 8);
  v1 = *(v28[0] + 64);
  __chkstk_darwin();
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07028, &qword_B0F700);
  __chkstk_darwin();
  v4 = v28 - v3;
  v28[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07030, &qword_B0F708);
  __chkstk_darwin();
  v6 = v28 - v5;
  v7 = sub_431E18();
  if (v8)
  {
    v29 = v7;
    v30 = v8;
    sub_36A48();
    v9 = sub_AB6F20();
    v11 = v10;
    v13 = v12;
    v14 = sub_AB6E70();
    v16 = v15;
    v18 = v17;
    v28[0] = v2;
    v20 = v19;
    sub_36B74(v9, v11, v13 & 1);

    *v6 = v14;
    *(v6 + 1) = v16;
    v6[16] = v18 & 1;
    *(v6 + 3) = v20;
    swift_storeEnumTagMultiPayload();
    sub_439B04();
    return sub_AB6610();
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v29 = sub_AB9320();
    v30 = v22;
    sub_438BAC(v0, v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v28[0] + 80) + 16) & ~*(v28[0] + 80);
    v24 = swift_allocObject();
    sub_438C24(v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    sub_36A48();
    sub_AB76E0();
    v25 = sub_AB74E0();
    KeyPath = swift_getKeyPath();
    v27 = &v4[*(v2 + 36)];
    *v27 = KeyPath;
    v27[1] = v25;
    sub_15F84(v4, v6, &qword_E07028, &qword_B0F700);
    swift_storeEnumTagMultiPayload();
    sub_439B04();
    sub_AB6610();
    return sub_12E1C(v4, &qword_E07028, &qword_B0F700);
  }
}

uint64_t sub_4365A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharePlayProxCard(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07018, &qword_B0F6C0);
  v16[0] = *(v5 - 8);
  __chkstk_darwin();
  v7 = v16 - v6;
  sub_431E18();
  if (v8)
  {

    sub_AB91E0();
    sub_AB3550();
    v16[1] = sub_AB9320();
    v16[2] = v9;
    sub_438BAC(v1, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    sub_438C24(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
    sub_36A48();
    sub_AB76E0();
    KeyPath = swift_getKeyPath();
    v13 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07020, &qword_B0F6F8) + 36)];
    *v13 = KeyPath;
    *(v13 + 1) = 1;
    v13[16] = 0;
    *&v7[*(v5 + 36)] = 0x3FF0000000000000;
    sub_36B0C(v7, a1, &qword_E07018, &qword_B0F6C0);
    return (*(v16[0] + 56))(a1, 0, 1, v5);
  }

  else
  {
    v15 = *(v16[0] + 56);

    return v15(a1, 1, 1, v5);
  }
}

uint64_t sub_4368F8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07000, &qword_B0F6A8);
  __chkstk_darwin();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v12 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07008, &qword_B0F6B0);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  sub_4361A4();
  sub_4365A0(v5);
  sub_15F84(v9, v7, &qword_E07008, &qword_B0F6B0);
  sub_15F84(v5, v3, &qword_E07000, &qword_B0F6A8);
  sub_15F84(v7, a1, &qword_E07008, &qword_B0F6B0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07010, &qword_B0F6B8);
  sub_15F84(v3, a1 + *(v10 + 48), &qword_E07000, &qword_B0F6A8);
  sub_12E1C(v5, &qword_E07000, &qword_B0F6A8);
  sub_12E1C(v9, &qword_E07008, &qword_B0F6B0);
  sub_12E1C(v3, &qword_E07000, &qword_B0F6A8);
  return sub_12E1C(v7, &qword_E07008, &qword_B0F6B0);
}

uint64_t sub_436AE8(uint64_t a1)
{
  sub_AB5A90();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_AB61A0();
}

id sub_436BB0()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    LSApplicationWorkspace.openMusicSettings()();

    return sub_AB5A70();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_436C18(uint64_t a1)
{
  type metadata accessor for SharePlayProxCard(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v6);

  if (v6 == 1)
  {
    if (*(a1 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 52) + 16) != 1)
    {
      return sub_AB7490();
    }

    goto LABEL_7;
  }

  sub_431E18();
  if (!v2)
  {
LABEL_7:
    v5 = [objc_opt_self() systemFillColor];
    return sub_AB7510();
  }

  v3 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  return sub_AB7510();
}

__n128 sub_436D34@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06EC8, &qword_B0F4E8);
  __chkstk_darwin();
  v6 = &v34[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07058, &qword_B0F720);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v34[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06EC0, &qword_B0F4E0);
  __chkstk_darwin();
  v13 = &v34[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06EB0, &qword_B0F4D8);
  __chkstk_darwin();
  v16 = &v34[-v15];
  *v6 = sub_AB62E0();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07060, &qword_B0F728);
  sub_437140(a1, &v6[*(v17 + 44)]);
  v18 = sub_AB6B90();
  KeyPath = swift_getKeyPath();
  v20 = &v6[*(v4 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  sub_439348();
  sub_AB7240();
  sub_12E1C(v6, &qword_E06EC8, &qword_B0F4E8);
  if (v35)
  {
    v21 = sub_AB74D0();
  }

  else
  {
    v21 = sub_AB74B0();
  }

  v22 = v21;
  v23 = swift_getKeyPath();
  (*(v8 + 32))(v13, v10, v7);
  v24 = &v13[*(v11 + 36)];
  *v24 = v23;
  v24[1] = v22;
  sub_AB7A30();
  sub_AB5E90();
  sub_36B0C(v13, v16, &qword_E06EC0, &qword_B0F4E0);
  v25 = &v16[*(v14 + 36)];
  v26 = v42;
  v25[4] = v41;
  v25[5] = v26;
  v25[6] = v43;
  v27 = v38;
  *v25 = v37;
  v25[1] = v27;
  v28 = v40;
  v25[2] = v39;
  v25[3] = v28;
  sub_AB7A30();
  sub_AB5E90();
  v29 = v36;
  sub_36B0C(v16, v36, &qword_E06EB0, &qword_B0F4D8);
  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E98, &qword_B0F4D0) + 36);
  v31 = v49;
  *(v30 + 64) = v48;
  *(v30 + 80) = v31;
  *(v30 + 96) = v50;
  v32 = v45;
  *v30 = v44;
  *(v30 + 16) = v32;
  result = v47;
  *(v30 + 32) = v46;
  *(v30 + 48) = result;
  return result;
}

uint64_t sub_437140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB88, &qword_AFC0A0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v31 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB90, &qword_AFC0A8);
  __chkstk_darwin();
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v31 - v10;
  v12 = *(a1 + *(type metadata accessor for SharePlayProxCard(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v36);

  if (v36 == 1 && (*(a1 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 52) + 16) & 1) == 0)
  {
    sub_AB58D0();
    (*(v5 + 32))(v11, v7, v4);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  (*(v5 + 56))(v11, v13, 1, v4);
  v14 = a1 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 52);
  v16 = *v14;
  v15 = *(v14 + 8);
  if (*(v14 + 16))
  {
    v36 = *v14;
    v37 = v15;
    sub_36A48();

    v31 = sub_AB6F20();
    v32 = v17;
    v33 = v18 & 1;
    v34 = v19;
    v35 = 1;
    sub_AB6610();
    v20 = v36;
    v21 = v37;
    v22 = v38;
    v23 = v39;
    v24 = v40;
    sub_20E8F8(v36, v37, v38, v39);
  }

  else
  {

    v36 = v16(v12);
    v37 = v25;
    sub_36A48();
    v31 = sub_AB6F20();
    v32 = v26;
    v33 = v27 & 1;
    v34 = v28;
    v35 = 0;
    sub_AB6610();
    v20 = v36;
    v21 = v37;
    v22 = v38;
    v23 = v39;
    v24 = v40;
    sub_20E8F8(v36, v37, v38, v39);
    sub_438C14(v16, v15, 0);
  }

  sub_15F84(v11, v9, &qword_DEDB90, &qword_AFC0A8);
  sub_15F84(v9, a2, &qword_DEDB90, &qword_AFC0A8);
  v29 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07068, &unk_B0F730) + 48);
  *v29 = v20;
  *(v29 + 8) = v21;
  *(v29 + 16) = v22;
  *(v29 + 24) = v23;
  *(v29 + 32) = v24;
  sub_20E8F8(v20, v21, v22, v23);
  sub_12E1C(v11, &qword_DEDB90, &qword_AFC0A8);
  sub_20E934(v20, v21, v22, v23);
  sub_20E934(v20, v21, v22, v23);
  return sub_12E1C(v9, &qword_DEDB90, &qword_AFC0A8);
}

uint64_t sub_437550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = *(type metadata accessor for SharePlayProxCard(0) - 8);
  __chkstk_darwin();
  v37[1] = v4;
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8540, &qword_AF81A0);
  v46 = *(v6 - 8);
  __chkstk_darwin();
  v42 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = v37 - v8;
  __chkstk_darwin();
  v40 = v37 - v9;
  __chkstk_darwin();
  v39 = v37 - v10;
  __chkstk_darwin();
  v38 = v37 - v11;
  __chkstk_darwin();
  v44 = v37 - v12;
  __chkstk_darwin();
  v47 = v37 - v13;
  __chkstk_darwin();
  v45 = v37 - v14;
  sub_AB91E0();
  sub_AB3550();
  v48 = sub_AB9320();
  v49 = v15;
  v16 = a1;
  sub_438BAC(a1, v5);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  sub_438C24(v5, v18 + v17);
  sub_36A48();
  sub_AB76E0();
  sub_AB91E0();
  sub_AB3550();
  v48 = sub_AB9320();
  v49 = v19;
  v37[0] = v16;
  sub_438BAC(v16, v5);
  v20 = swift_allocObject();
  sub_438C24(v5, v20 + v17);
  sub_AB76E0();
  sub_AB91E0();
  sub_AB3550();
  v48 = sub_AB9320();
  v49 = v21;
  sub_438BAC(v16, v5);
  v22 = swift_allocObject();
  sub_438C24(v5, v22 + v17);
  v23 = v44;
  sub_AB76E0();
  sub_AB91E0();
  sub_AB3550();
  v48 = sub_AB9320();
  v49 = v24;
  sub_438BAC(v37[0], v5);
  v25 = swift_allocObject();
  sub_438C24(v5, v25 + v17);
  v26 = v38;
  sub_AB76E0();
  v27 = *(v46 + 16);
  v28 = v39;
  v27(v39, v45, v6);
  v29 = v40;
  v27(v40, v47, v6);
  v30 = v41;
  v27(v41, v23, v6);
  v31 = v42;
  v32 = v26;
  v27(v42, v26, v6);
  v33 = v43;
  v27(v43, v28, v6);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E08, &qword_B0F350);
  v27((v33 + v34[12]), v29, v6);
  v27((v33 + v34[16]), v30, v6);
  v27((v33 + v34[20]), v31, v6);
  v35 = *(v46 + 8);
  v35(v32, v6);
  v35(v44, v6);
  v35(v47, v6);
  v35(v45, v6);
  v35(v31, v6);
  v35(v30, v6);
  v35(v29, v6);
  return (v35)(v28, v6);
}

uint64_t sub_437CBC(uint64_t a1, char a2)
{
  type metadata accessor for SharePlayProxCard(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE978, &unk_B0F320);
  sub_AB7650();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980, &qword_AFC050);
  return sub_AB7650();
}

void sub_437D80(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for SharePlayProxCard(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = 0;

  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v2);

  if (v2)
  {

    *(v1 + OBJC_IVAR____TtCV16MusicApplication17SharePlayProxCard9CardState_removedImage) = 0;
  }

  *(v1 + OBJC_IVAR____TtCV16MusicApplication17SharePlayProxCard9CardState_removedImage) = 1;
}

double sub_437E74@<D0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SharePlayProxCard(0);
  type metadata accessor for SharePlayProxCard.CardState(0);
  sub_431CB0();
  sub_AB5B60();
  swift_getKeyPath();
  sub_AB5B70();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE978, &unk_B0F320);
  sub_AB7660();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980, &qword_AFC050);
  sub_AB7660();
  UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor();

  ImagePicker.init(pickedImage:sourceType:shouldPresent:didPickImage:editingControllerProperties:)(v9, *(&v9 + 1), v10, v6, v7, v8, v6, v7, a2, v8, 0, 0, v2);

  sub_AB7A30();
  sub_AB5970();
  v3 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9B8, &unk_B099F0) + 36));
  *v3 = v9;
  v3[1] = v10;
  result = *&v11;
  v3[2] = v11;
  return result;
}

void sub_438050(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

uint64_t sub_4380D0@<X0>(char *a2@<X8>)
{
  v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06DF8, &qword_B0F2A0);
  __chkstk_darwin();
  v3 = &v31 - v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8540, &qword_AF81A0);
  v41 = *(v37 - 8);
  __chkstk_darwin();
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v31 - v5;
  __chkstk_darwin();
  v40 = &v31 - v6;
  __chkstk_darwin();
  v39 = &v31 - v7;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEAD0, &unk_B06D00);
  v32 = *(v34 - 8);
  v8 = v32;
  __chkstk_darwin();
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v31 - v10;
  sub_AB91E0();
  sub_AB3550();
  v12 = sub_AB9320();
  v14 = v13;
  type metadata accessor for SharePlayProxCard(0);
  type metadata accessor for SharePlayProxCard.CardState(0);
  sub_431CB0();
  sub_AB5B60();
  swift_getKeyPath();
  sub_AB5B70();

  v42 = v12;
  v43 = v14;
  sub_36A48();
  v31 = v11;
  sub_AB7B10();

  sub_AB6360();
  v15 = v39;
  sub_AB76D0();
  sub_AB6360();
  sub_AB5670();
  v16 = sub_AB5680();
  (*(*(v16 - 8) + 56))(v3, 0, 1, v16);
  v17 = v40;
  sub_AB76B0();
  v18 = *(v8 + 16);
  v19 = v33;
  v20 = v11;
  v21 = v34;
  v18(v33, v20, v34);
  v22 = *(v41 + 16);
  v23 = v35;
  v24 = v37;
  v22(v35, v15, v37);
  v25 = v36;
  v22(v36, v17, v24);
  v26 = v38;
  v18(v38, v19, v21);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E00, &qword_B0F2D0);
  v22(&v26[*(v27 + 48)], v23, v24);
  v22(&v26[*(v27 + 64)], v25, v24);
  v28 = *(v41 + 8);
  v28(v40, v24);
  v28(v39, v24);
  v29 = *(v32 + 8);
  v29(v31, v21);
  v28(v25, v24);
  v28(v23, v24);
  return (v29)(v19, v21);
}

void sub_4386F4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v4);

  v3 = v4[1];
  *a2 = v4[0];
  a2[1] = v3;
}

uint64_t sub_438774(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t sub_4387F8(uint64_t a1)
{
  type metadata accessor for SharePlayProxCard(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980, &qword_AFC050);
  return sub_AB7650();
}

uint64_t sub_43886C(uint64_t a1)
{
  type metadata accessor for SharePlayProxCard(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980, &qword_AFC050);
  return sub_AB7650();
}

unint64_t sub_4388F4()
{
  result = qword_E06DE0;
  if (!qword_E06DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06DB0, &qword_B0F270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06DA8, &qword_B0F268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06DC0, &unk_B0F288);
    sub_36A00(&qword_E06DC8, &qword_E06DA8, &qword_B0F268, &protocol conformance descriptor for VStack<A>);
    sub_36A00(&qword_E06DD0, &qword_E06DC0, &unk_B0F288, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    sub_36A00(&qword_E06DE8, &qword_DFE998, &qword_B099D0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E06DE0);
  }

  return result;
}

void sub_438A84(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

uint64_t sub_438B04(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

void sub_438B7C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_4311C4(v1);
}

uint64_t sub_438BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayProxCard(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_438C14(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_438C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayProxCard(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for SharePlayProxCard(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = type metadata accessor for SharePlayProxCard.ViewModel(0);
  v4 = v3[10];
  v5 = sub_AB8A60();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  sub_438C14(*(v2 + v3[13]), *(v2 + v3[13] + 8), *(v2 + v3[13] + 16));

  if (*(v2 + *(v1 + 24)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_438F10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB6100();
  *a1 = result;
  return result;
}

uint64_t sub_438F64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6160();
  *a1 = result;
  return result;
}

uint64_t sub_438F90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6160();
  *a1 = result;
  return result;
}

uint64_t sub_439014@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6020();
  *a1 = result;
  return result;
}

uint64_t sub_439040@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6020();
  *a1 = result;
  return result;
}

uint64_t sub_4390C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB6100();
  *a1 = result;
  return result;
}

uint64_t sub_439120()
{
  v1 = type metadata accessor for SharePlayProxCard(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 32) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_4391D0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_439254()
{
  result = qword_E06EB8;
  if (!qword_E06EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06EC0, &qword_B0F4E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06EC8, &qword_B0F4E8);
    sub_439348();
    swift_getOpaqueTypeConformance2();
    sub_36A00(&qword_DEB780, &qword_DEB788, &qword_AF9A50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E06EB8);
  }

  return result;
}

unint64_t sub_439348()
{
  result = qword_E06ED0;
  if (!qword_E06ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06EC8, &qword_B0F4E8);
    sub_36A00(&qword_E06ED8, &qword_E06EE0, &unk_B0F4F0, &protocol conformance descriptor for HStack<A>);
    sub_36A00(&qword_DEB890, &qword_DEB898, &unk_AFB040, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E06ED0);
  }

  return result;
}

uint64_t sub_43942C@<X0>(uint64_t a1@<X8>)
{
  result = sub_AB61F0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_439490@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB61D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_4394C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB61D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_4395C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07050, &qword_B0F718);
  __chkstk_darwin();
  sub_15F84(a1, &v4 - v2, &qword_E07050, &qword_B0F718);
  return sub_AB61C0();
}

unint64_t sub_439698()
{
  result = qword_E06F60;
  if (!qword_E06F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06F58, &qword_B0F628);
    sub_43971C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E06F60);
  }

  return result;
}

unint64_t sub_43971C()
{
  result = qword_E06F68;
  if (!qword_E06F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06F70, &qword_B0F630);
    sub_4397D4(&qword_E06F78, &qword_E06F80, &qword_B0F638, sub_439884);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E06F68);
  }

  return result;
}

uint64_t sub_4397D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_36A00(&qword_DEFED0, &qword_DFEA90, &qword_B09B60, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_439884()
{
  result = qword_E06F88;
  if (!qword_E06F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06F90, &unk_B0F640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E06F88);
  }

  return result;
}

unint64_t sub_439908()
{
  result = qword_E06F98;
  if (!qword_E06F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06F40, &qword_B0F608);
    sub_4397D4(&qword_E06FA0, &qword_E06F38, &qword_B0F600, sub_20E760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E06F98);
  }

  return result;
}

uint64_t sub_4399D8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SharePlayProxCard(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_439A4C@<X0>(uint64_t a1@<X8>)
{
  result = sub_AB61F0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_439B04()
{
  result = qword_E07038;
  if (!qword_E07038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E07028, &qword_B0F700);
    sub_36A00(&qword_E07040, &qword_DE8540, &qword_AF81A0, &protocol conformance descriptor for Button<A>);
    sub_36A00(&qword_DEB780, &qword_DEB788, &qword_AF9A50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07038);
  }

  return result;
}

uint64_t sub_439BE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_439C48()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06DB0, &qword_B0F270);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06DD8, &qword_B0F298);
  sub_4388F4();
  sub_36A48();
  sub_36A00(&qword_E06DF0, &qword_E06DD8, &qword_B0F298, &protocol conformance descriptor for TupleView<A>);
  return swift_getOpaqueTypeConformance2();
}

char *sub_439D4C(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v10 = &v101 - v9;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isBottomHairlineHidden] = 1;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_artworkCornerTreatment;
  v16 = sub_ABA680();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(&v4[v15], 1, 1, v16);
  v19 = &v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_artworkPlaceholder];
  *v19 = 0u;
  v19[1] = 0u;
  v19[2] = 0u;
  *&v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_lockupImageArtworkCatalog] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playbackPosition] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_hasBeenPlayed] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isDisabled] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_artworkCachingReference] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textDrawingCache] = 0;
  v20 = &v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents];
  *v20 = sub_43C4F8();
  v20[1] = v21;
  v20[2] = v22;
  v20[3] = v23;
  v24 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView;
  *&v4[v24] = [objc_allocWithZone(type metadata accessor for VideoHeaderLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView;
  type metadata accessor for TextStackView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v25] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textStackView;
  *&v4[v27] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v28 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView;
  *&v4[v28] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell____lazy_storage___chevronImageView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_bottomHairlineView] = 0;
  v29 = type metadata accessor for TVShowEpisodeCell(0);
  v114.receiver = v4;
  v114.super_class = v29;
  v30 = objc_msgSendSuper2(&v114, "initWithFrame:", a1, a2, a3, a4);
  v31 = *&v30[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView];
  v32 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView;
  v112 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView;
  v33 = v30;
  v34 = v30;
  v113 = v30;
  v35 = v33;
  v36 = v31;
  v37 = UIView.Corner.medium.unsafeMutableAddressor();
  (*(v17 + 16))(v10, v37, v16);
  v18(v10, 0, 1, v16);
  v38 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCornerTreatment;
  swift_beginAccess();
  sub_8A01C(v10, v36 + v38);
  swift_endAccess();
  sub_25D6BC();
  sub_12E1C(v10, &unk_DFFBC0, &unk_AF85C0);

  v39 = *&v34[v32];
  v109 = v39;
  v40 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v42 = *v40;
  v41 = v40[1];
  v43 = v40[2];
  v44 = v40[3];
  v46 = v40[5];
  v111 = v40[4];
  v45 = v111;
  v110 = v46;
  v47 = &v39[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder];
  v48 = *&v39[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 8];
  v108 = *&v39[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder];
  v107 = v48;
  v49 = *&v39[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 24];
  v106 = *&v39[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 16];
  v50 = *&v39[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 40];
  v105 = *&v39[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 32];
  v104 = v50;
  *v47 = v42;
  *(v47 + 1) = v41;
  v51 = v41;
  v103 = v41;
  *(v47 + 2) = v43;
  *(v47 + 3) = v44;
  *(v47 + 4) = v45;
  *(v47 + 5) = v46;
  v52 = v43;
  v53 = v44;
  v54 = v42;
  v55 = v51;
  v56 = v52;
  v57 = v53;
  v58 = v54;
  v59 = v55;
  v102 = v56;
  v60 = v57;
  v61 = v58;
  v62 = v59;
  sub_2F1C8(v108, v107, v106, v49);
  v63 = v109;
  v64 = *&v109[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent];
  v65 = *(v64 + 168);
  v115[0] = *(v64 + 152);
  v115[1] = v65;
  v115[2] = *(v64 + 184);
  v66 = v103;
  *(v64 + 152) = v42;
  *(v64 + 160) = v66;
  *(v64 + 168) = v43;
  *(v64 + 176) = v44;
  v67 = v110;
  *(v64 + 184) = v111;
  *(v64 + 192) = v67;
  v68 = v61;
  v69 = v62;
  v70 = v102;
  v71 = v60;

  sub_75948(v115);
  sub_12E1C(v115, &unk_DF8690, &unk_AF9900);

  v72 = v112;
  v73 = v113;
  v74 = *&v113[v112];
  v75 = v74[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle];
  v74[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle] = 1;
  v76 = v74;
  sub_25D814(v75);

  v77 = *&v73[v72];
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = &v77[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButtonHandler];
  v80 = *&v77[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButtonHandler];
  v81 = *&v77[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButtonHandler + 8];
  *v79 = sub_43CC58;
  v79[1] = v78;
  v82 = v77;

  sub_17654(v80, v81);

  v83 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView;
  v84 = *&v35[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView];
  v85 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v84[v85] = 2;
  v86 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textStackView;
  v87 = *&v35[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textStackView];
  v88 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  *(v87 + v88) = 2;
  v89 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView;
  v90 = *&v35[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView];
  v91 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  *(v90 + v91) = 2;
  v92 = v84;

  TextStackView.add(_:)(v93);

  v94 = *&v35[v86];

  TextStackView.add(_:)(v95);

  v96 = *&v35[v89];

  TextStackView.add(_:)(v97);

  v98 = [v35 contentView];

  [v98 addSubview:*&v73[v72]];
  [v98 addSubview:*&v35[v83]];
  [v98 addSubview:*&v35[v86]];
  [v98 addSubview:*&v35[v89]];
  v99 = sub_43BD10();
  [v98 addSubview:v99];

  sub_43BDE0();
  return v35;
}

void sub_43A518(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playHandler);
    if (v3)
    {
      v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playHandler + 8);

      v3(v5);
      sub_17654(v3, v4);
    }
  }
}

double sub_43A61C(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_43A730(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline] != result || *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

double sub_43A82C(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_43A944(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

double sub_43AA44(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);

  return result;
}

double sub_43AAD8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents + 16];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_43ABF0(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText] != result || *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents + 16];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_43ACC4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playHandler);
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playHandler);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_17654(v4, v5);
}

void sub_43ACE4(double a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playbackPosition;
  *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playbackPosition) = a1;
  if (sub_AB38D0())
  {
    *(*(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView) + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition) = *(v1 + v2);
    sub_25DD64();
  }
}

void sub_43AD74(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_hasBeenPlayed);
  v3 = a1 & 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_hasBeenPlayed) = a1;
  if (v2 != v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView);
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_hasBeenPlayed);
    *(v4 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_hasBeenPlayed) = v3;
    if (v5 != v3)
    {
      sub_25EE8C();
    }
  }
}

void sub_43ADD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textStackView);
  v2 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isDisabled;
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isDisabled);
  v4 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  *(v1 + v4) = v3;
  v56 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  if (v3 != *(v1 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled))
  {
    *(v1 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled) = v3;
    v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if (v6 >> 62)
    {
      v7 = sub_ABB060();
      if (!v7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (!v7)
      {
        goto LABEL_19;
      }
    }

    v8 = v7 - 1;
    if (v7 < 1)
    {
      __break(1u);
      goto LABEL_63;
    }

    v51 = v2;
    v53 = v0;

    v10 = 0;
    if ((v6 & 0xC000000000000001) == 0)
    {
      goto LABEL_14;
    }

LABEL_6:
    v11 = *(sub_36003C(v10, v6, v9) + 256);
    if (v11)
    {
LABEL_7:
      v12 = v11;
      if (([v12 isHidden] & 1) == 0)
      {
        v13 = *(v1 + v56);
        v14 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
        swift_beginAccess();
        v15 = v12[v14];
        v12[v14] = v13;
        if (v13 != v15)
        {
          v16 = 1.0;
          if (v13)
          {
            UIInterfaceGetContentDisabledAlpha();
          }

          [v12 setAlpha:v16];
        }
      }

      if (v8 != v10)
      {
        goto LABEL_16;
      }
    }

    else
    {
      while (1)
      {

        if (v8 == v10)
        {
          break;
        }

LABEL_16:
        ++v10;
        if ((v6 & 0xC000000000000001) != 0)
        {
          goto LABEL_6;
        }

LABEL_14:
        v17 = *(v6 + 8 * v10 + 32);

        v11 = *(v17 + 256);
        if (v11)
        {
          goto LABEL_7;
        }
      }
    }

    v2 = v51;
    v0 = v53;
  }

LABEL_19:
  v18 = *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView);
  v19 = *(v0 + v2);
  v20 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  v18[v20] = v19;
  v57 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  if (v19 == v18[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled])
  {
    goto LABEL_37;
  }

  v18[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = v19;
  v21 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v22 = *&v18[v21];
  if (v22 >> 62)
  {
    v23 = sub_ABB060();
    if (!v23)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
    if (!v23)
    {
      goto LABEL_37;
    }
  }

  v24 = v23 - 1;
  if (v23 < 1)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v52 = v2;
  v54 = v0;
  v50 = v18;

  v26 = 0;
  if ((v22 & 0xC000000000000001) == 0)
  {
    goto LABEL_32;
  }

LABEL_24:
  v27 = *(sub_36003C(v26, v22, v25) + 256);
  if (v27)
  {
LABEL_25:
    v28 = v27;
    if (([v28 isHidden] & 1) == 0)
    {
      v29 = v18[v57];
      v30 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
      swift_beginAccess();
      v31 = v28[v30];
      v28[v30] = v29;
      if (v29 != v31)
      {
        v32 = 1.0;
        if (v29)
        {
          UIInterfaceGetContentDisabledAlpha();
        }

        [v28 setAlpha:v32];
      }
    }

    if (v24 != v26)
    {
      goto LABEL_34;
    }
  }

  else
  {
    while (1)
    {

      if (v24 == v26)
      {
        break;
      }

LABEL_34:
      ++v26;
      if ((v22 & 0xC000000000000001) != 0)
      {
        goto LABEL_24;
      }

LABEL_32:
      v33 = *(v22 + 8 * v26 + 32);

      v27 = *(v33 + 256);
      if (v27)
      {
        goto LABEL_25;
      }
    }
  }

  v2 = v52;
  v0 = v54;
LABEL_37:
  v34 = *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView);
  v35 = *(v0 + v2);
  v36 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  v34[v36] = v35;
  v58 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  if (v35 == v34[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled])
  {
    return;
  }

  v34[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = v35;
  v37 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v38 = *&v34[v37];
  if (v38 >> 62)
  {
    v39 = sub_ABB060();
    if (!v39)
    {
      return;
    }
  }

  else
  {
    v39 = *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8));
    if (!v39)
    {
      return;
    }
  }

  v40 = v39 - 1;
  if (v39 < 1)
  {
LABEL_64:
    __break(1u);
    return;
  }

  v55 = v34;

  v42 = 0;
  if ((v38 & 0xC000000000000001) == 0)
  {
    goto LABEL_50;
  }

LABEL_42:
  v43 = *(sub_36003C(v42, v38, v41) + 256);
  if (v43)
  {
LABEL_43:
    v44 = v43;
    if (([v44 isHidden] & 1) == 0)
    {
      v45 = v34[v58];
      v46 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
      swift_beginAccess();
      v47 = v44[v46];
      v44[v46] = v45;
      if (v45 != v47)
      {
        v48 = 1.0;
        if (v45)
        {
          UIInterfaceGetContentDisabledAlpha();
        }

        [v44 setAlpha:{v48, v50}];
      }
    }

    if (v40 != v42)
    {
      goto LABEL_52;
    }
  }

  else
  {
    while (1)
    {

      if (v40 == v42)
      {
        break;
      }

LABEL_52:
      ++v42;
      if ((v38 & 0xC000000000000001) != 0)
      {
        goto LABEL_42;
      }

LABEL_50:
      v49 = *(v38 + 8 * v42 + 32);

      v43 = *(v49 + 256);
      if (v43)
      {
        goto LABEL_43;
      }
    }
  }
}

double sub_43B328()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textStackView);
  v3 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textDrawingCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = v4;
  swift_retain_n();
  sub_2E6210(v6);

  v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView);
  v8 = *(v1 + v3);
  v9 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v10 = *&v7[v9];
  *&v7[v9] = v8;
  swift_retain_n();
  v11 = v7;
  sub_2E6210(v10);

  v12 = *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView);
  v13 = *(v1 + v3);
  v14 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v15 = *&v12[v14];
  *&v12[v14] = v13;
  swift_retain_n();
  v16 = v12;
  sub_2E6210(v15);

  return sub_25E028(v17);
}

double sub_43B4B8()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView) + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent);
  v2 = v1[14];

  [v2 clearArtworkCatalogs];
  *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  v1[25] = 0;
  v1[26] = 0;

  return result;
}

id sub_43B628(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for TVShowEpisodeCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_43B6F8(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v9 = v6;
  v14 = type metadata accessor for TVShowEpisodeCell(0);
  v24.receiver = v9;
  v24.super_class = v14;
  objc_msgSendSuper2(&v24, *a1);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23.receiver = v9;
  v23.super_class = v14;
  objc_msgSendSuper2(&v23, *a2, a3, a4, a5, a6);
  v25.origin.x = v16;
  v25.origin.y = v18;
  v25.size.width = v20;
  v25.size.height = v22;
  CGRectGetWidth(v25);
  [v9 *a1];
  CGRectGetWidth(v26);
  if (sub_AB38D0())
  {
    sub_43BDE0();
  }
}

void sub_43B804()
{
  v48.receiver = v0;
  v48.super_class = type metadata accessor for TVShowEpisodeCell(0);
  objc_msgSendSuper2(&v48, "layoutSubviews");
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 traitCollection];
  [v10 displayScale];
  v46 = v11;
  [v0 effectiveUserInterfaceLayoutDirection];
  v12 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  sub_ABA490();
  [v12 setFrame:?];
  v49.origin.x = v3;
  v49.origin.y = v5;
  v49.size.width = v14;
  v49.size.height = v16;
  v17 = v5 + CGRectGetMaxY(v49);
  v18 = sub_43BD10();
  [v18 sizeThatFits:{v7, v9}];
  v47 = v19;
  v45 = v20;

  v50.origin.x = v3;
  v50.origin.y = v17;
  v50.size.width = v7;
  v50.size.height = v9 - v16;
  CGRectGetMaxX(v50);
  v21 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView;
  [*&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView] sizeThatFits:{v7, v9}];
  v23 = v22;
  v25 = v24;
  v26 = *&v0[v21];
  sub_ABA490();
  [v26 setFrame:?];

  v51.origin.x = v3;
  v51.origin.y = v17;
  v51.size.width = v23;
  v51.size.height = v25;
  MaxY = CGRectGetMaxY(v51);
  v28 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textStackView];
  [v28 sizeThatFits:{v7, v9}];
  v30 = v29;
  sub_ABA490();
  [v28 setFrame:?];
  v52.origin.x = v3;
  v52.origin.y = MaxY;
  v52.size.width = v7 - v47 + -16.0;
  v52.size.height = v30;
  v31 = CGRectGetMaxY(v52);
  [v28 frame];
  sub_ABA470();
  v32 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell____lazy_storage___chevronImageView];
  sub_ABA490();
  [v32 setFrame:v45];

  v33 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView;
  [*&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView] sizeThatFits:{v7, v9}];
  [*&v0[v33] setFrame:{v3, v31, v34, v35}];
  v36 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isBottomHairlineHidden;
  if ((v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isBottomHairlineHidden] & 1) == 0)
  {
    v37 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_bottomHairlineView;
    v38 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_bottomHairlineView];
    if (v38)
    {
      v39 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_bottomHairlineView];
    }

    else
    {
      v40 = [objc_allocWithZone(UIView) init];
      v41 = qword_DE6C70;
      v39 = v40;
      if (v41 != -1)
      {
        swift_once();
      }

      [v39 setBackgroundColor:qword_E718B0];
      [v1 addSubview:v39];
      v42 = *&v0[v37];
      *&v0[v37] = v39;

      v38 = 0;
    }

    v43 = v38;
    v53.origin.x = v3;
    v53.origin.y = v5;
    v53.size.width = v7;
    v53.size.height = v9;
    [v39 setFrame:{v3, CGRectGetMaxY(v53), v7, 1.0 / v46}];
  }

  v44 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_bottomHairlineView];
  if (v44)
  {
    [v44 setHidden:v0[v36]];
  }
}

__n128 sub_43BCF4()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_E07070 = *&UIEdgeInsetsZero.top;
  *&qword_E07080 = v1;
  return result;
}

id sub_43BD10()
{
  v1 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell____lazy_storage___chevronImageView;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell____lazy_storage___chevronImageView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell____lazy_storage___chevronImageView];
  }

  else
  {
    v4 = [v0 traitCollection];
    v5 = [v4 preferredContentSizeCategory];

    v6 = sub_45B16C(v5);
    v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];

    v8 = *&v0[v1];
    *&v0[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}