uint64_t sub_1CC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_292D4();

  return v1;
}

uint64_t sub_1D34(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_292E4();
}

uint64_t sub_1DA0()
{
  result = sub_28FB4();
  if (!result)
  {
    if (qword_38FB0 != -1)
    {
      swift_once();
    }

    v1 = sub_29264();
    sub_5BB4(v1, qword_3C140);
    v2 = sub_29254();
    v3 = sub_29DA4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_DA08(0xD00000000000001FLL, 0x800000000002DFD0, &v6);
      _os_log_impl(&dword_0, v2, v3, "%{public}s", v4, 0xCu);
      sub_5FD0(v5);
    }

    result = sub_29FD4();
    __break(1u);
  }

  return result;
}

id sub_1F30(uint64_t a1, void (*a2)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t (*a3)())
{
  ObjectType = swift_getObjectType();
  v8 = sub_51E0(&qword_39148, &qword_2AD48);
  sub_7AA0();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = OBJC_IVAR____TtC12SystemPlugin26IntentsUIStandardViewModel__resolvedViews;
  v26 = &_swiftEmptyArrayStorage;
  sub_51E0(&qword_39048, &qword_2AC00);
  sub_292B4();
  (*(v10 + 32))(&v3[v14], v13, v8);
  if (sub_2844(&_swiftEmptyArrayStorage))
  {
    v15 = sub_59F0(&_swiftEmptyArrayStorage);
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC12SystemPlugin26IntentsUIStandardViewModel_handledParameters] = v15;
  v16 = OBJC_IVAR____TtC12SystemPlugin26IntentsUIStandardViewModel_dataModel;
  v17 = sub_29014();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v3[v16], a1, v17);
  if (a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = sub_2140;
  }

  if (a2)
  {
    v20 = a3;
  }

  else
  {
    v20 = 0;
  }

  v21 = &v3[OBJC_IVAR____TtC12SystemPlugin26IntentsUIStandardViewModel_remoteViewControllerProvider];
  *v21 = v19;
  v21[1] = v20;
  v25.receiver = v3;
  v25.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v25, "init");
  (*(v18 + 8))(a1, v17);
  return v22;
}

void sub_2140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_2218;
  v8[3] = &unk_35E38;
  v7 = _Block_copy(v8);

  [v6 requestRemoteViewControllerWithRequestInfo:a1 reply:v7];
  _Block_release(v7);
}

void sub_2218(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_22A4()
{
  sub_1D34(&_swiftEmptyArrayStorage);
  if (sub_2844(&_swiftEmptyArrayStorage))
  {
    v1 = sub_59F0(&_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  v2 = OBJC_IVAR____TtC12SystemPlugin26IntentsUIStandardViewModel_handledParameters;
  swift_beginAccess();
  *(v0 + v2) = v1;

  return sub_2338(0);
}

uint64_t sub_2338(int64_t a1)
{
  v2 = v1;
  v4 = sub_28FE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  v10 = *(sub_28FF4() + 16);

  if (v10 <= a1)
  {
    return result;
  }

  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_38FB0 != -1)
  {
    swift_once();
  }

  v12 = sub_29264();
  v44 = sub_5BB4(v12, qword_3C140);
  v13 = sub_29254();
  v14 = sub_29D84();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = a1;
    _os_log_impl(&dword_0, v13, v14, "Resolving slot #%ld", v15, 0xCu);
  }

  result = sub_28FF4();
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (*(result + 16) <= a1)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v16 = *(v5 + 16);
  v17 = *(v5 + 80);
  v18 = *(v5 + 72);
  v47 = a1;
  v49 = v9;
  v45 = v16;
  v16(v9, (result + ((v17 + 32) & ~v17) + v18 * a1), v4);

  v19 = sub_1DA0();
  v20 = [v19 intent];

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();

  v46 = v5;
  if (v21 || (v22 = sub_1DA0(), v23 = [v22 intent], v22, objc_opt_self(), v24 = swift_dynamicCastObjCClass(), v23, v24))
  {
    v25 = v4;
    v44 = &_swiftEmptyArrayStorage;
    v26 = v48;
LABEL_11:
    v27 = sub_1DA0();
    v28 = [objc_allocWithZone(INUIExtensionRequestInfo) initWithInteraction:v27];

    v48 = *(v2 + OBJC_IVAR____TtC12SystemPlugin26IntentsUIStandardViewModel_remoteViewControllerProvider);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = v49;
    v45(v26, v49, v25);
    v31 = (v17 + 40) & ~v17;
    v32 = swift_allocObject();
    v34 = v46;
    v33 = v47;
    *(v32 + 2) = v29;
    *(v32 + 3) = v33;
    *(v32 + 4) = v44;
    (*(v34 + 32))(&v32[v31], v26, v25);

    (v48)(v28, sub_5CDC, v32);

    (*(v34 + 8))(v30, v25);
  }

  v35 = v49;
  sub_2868();
  v37 = v36;
  v38 = sub_2C0C();
  v26 = v48;
  if ((v38 & 1) != 0 || sub_2844(v37))
  {
    v25 = v4;
    v44 = v37;
    goto LABEL_11;
  }

  v39 = sub_29254();
  v40 = sub_29D84();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v47;
  if (v41)
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = v42;
    _os_log_impl(&dword_0, v39, v40, "Skipping slot #%ld; no unhandled params", v43, 0xCu);
  }

  sub_2338(v42 + 1);
  return (*(v5 + 8))(v35, v4);
}

uint64_t sub_2844(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

void sub_2868()
{
  v1 = v0;
  v2 = sub_1DA0();
  v3 = [v2 intent];

  v4 = [v3 _intentInstanceDescription];
  v36 = sub_7994(v4, &selRef_name);
  v37 = v5;
  v31 = v4;
  v6 = sub_7994(v4, &selRef_responseName);
  v8 = v7;
  v9 = sub_28FC4();
  v10 = 0;
  v40 = &_swiftEmptyArrayStorage;
  v11 = *(v9 + 16);
  v12 = (v9 + 40);
  v34 = &_swiftEmptyArrayStorage;
  v35 = v1;
  while (1)
  {
    if (v11 == v10)
    {

      v40 = &_swiftEmptyArrayStorage;
      v14 = sub_2844(v34);
      v15 = OBJC_IVAR____TtC12SystemPlugin26IntentsUIStandardViewModel_handledParameters;
      swift_beginAccess();
      v16 = 0;
      v17 = v34 & 0xC000000000000001;
      v18 = v15;
      v32 = v15;
      v33 = v14;
      while (1)
      {
        while (1)
        {
LABEL_10:
          if (v16 == v14)
          {

            return;
          }

          if (v17)
          {
            v19 = sub_29F44();
          }

          else
          {
            if (v16 >= *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_29;
            }

            v19 = *(v34 + 32 + 8 * v16);
          }

          v20 = v19;
          if (__OFADD__(v16++, 1))
          {
            goto LABEL_28;
          }

          v22 = *(v1 + v18);
          if ((v22 & 0xC000000000000001) != 0)
          {
            break;
          }

          if (*(v22 + 16))
          {
            sub_62A0(0, &qword_39178, INParameter_ptr);
            v25 = *(v22 + 40);

            v26 = sub_29DF4(v25);
            v27 = ~(-1 << *(v22 + 32));
            while (1)
            {
              v28 = v26 & v27;
              if (((*(v22 + 56 + (((v26 & v27) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v27)) & 1) == 0)
              {
                break;
              }

              v29 = *(*(v22 + 48) + 8 * v28);
              v30 = sub_29E04();

              v26 = v28 + 1;
              if (v30)
              {

                v1 = v35;
                v18 = v32;
                v14 = v33;
                v17 = v34 & 0xC000000000000001;
                goto LABEL_10;
              }
            }

            v1 = v35;
            v18 = v32;
            v14 = v33;
            v17 = v34 & 0xC000000000000001;
          }

LABEL_24:
          sub_29F64();
          sub_29F84();
          sub_29F94();
          sub_29F74();
        }

        v23 = v20;
        v24 = sub_29EB4();

        if ((v24 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    v13 = *v12;
    v38[0] = *(v12 - 1);
    v38[1] = v13;

    sub_4744(v38, v36, v37, v6, v8, &v39);

    if (v39)
    {
      sub_29C64();
      if (*(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v40 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_29CA4();
      }

      sub_29CB4();
      v34 = v40;
      v1 = v35;
    }

    v12 += 2;
    ++v10;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void *sub_2C0C()
{
  v0 = *(sub_28FC4() + 16);

  if (!v0)
  {
    return (&dword_0 + 1);
  }

  result = sub_28FC4();
  if (result[2])
  {
    v2 = result[4];
    v3 = result[5];

    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    return (v4 == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2C70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v47 = a6;
  v44 = a5;
  v45 = a2;
  v9 = sub_298F4();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29914();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_28FE4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v18 = *(v13 + 16);
  v18(&v36 - v16, v47, v12);
  v47 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v44;
  v18(v47, v17, v12);
  v20 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a1;
  *(v21 + 3) = a3;
  v37 = a4;
  *(v21 + 4) = a4;
  *(v21 + 5) = v19;
  v22 = v45;
  v23 = *(v13 + 32);
  v46 = v12;
  v23(&v21[v20], v17, v12);
  *&v21[(v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8] = v22;
  v24 = objc_opt_self();
  swift_errorRetain();
  v25 = a1;

  if ([v24 isMainThread])
  {
    v26 = a3;
    v27 = v47;
    sub_3144(a1, v26, v37, v19, v47, v22);

    v28 = v27;
  }

  else
  {
    sub_62A0(0, &qword_39150, OS_dispatch_queue_ptr);
    v29 = sub_29DB4();
    v30 = swift_allocObject();
    *(v30 + 16) = sub_5E28;
    *(v30 + 24) = v21;
    aBlock[4] = sub_5EE4;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_5140;
    aBlock[3] = &unk_35D48;
    v31 = _Block_copy(aBlock);

    v32 = v38;
    sub_29904();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_5F24(&unk_39D80, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_51E0(&unk_39160, &qword_2AD50);
    sub_5F6C();
    v33 = v40;
    v34 = v43;
    sub_29E54();
    sub_29DC4();
    _Block_release(v31);

    (*(v42 + 8))(v33, v34);
    (*(v39 + 8))(v32, v41);
    v28 = v47;
  }

  return (*(v13 + 8))(v28, v46);
}

void sub_3144(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_28FE4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v14 = Strong;
    v50 = a3;
    v15 = qword_38FB0;
    v16 = a1;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = sub_29264();
    sub_5BB4(v17, qword_3C140);
    v18 = sub_29254();
    v19 = sub_29D84();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v49 = v16;
      *v20 = 134217984;
      *(v20 + 4) = v50;
      _os_log_impl(&dword_0, v18, v19, "Remote VC vended for slot #%ld", v20, 0xCu);
      v16 = v49;
    }

    sub_62A0(0, &qword_39170, INUIExtensionViewControllerConfiguration_ptr);

    sub_37D8(v21);
    v23 = sub_39AC(v22, 0, 0);
    [v16 setDelegate:v14 completion:0];
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v11 + 16))(&v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v10);
    v25 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v26 = swift_allocObject();
    v27 = v50;
    *(v26 + 16) = v24;
    *(v26 + 24) = v27;
    (*(v11 + 32))(v26 + v25, &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    *(v26 + ((v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
    *&v52[16] = sub_60D0;
    *&v52[24] = v26;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *v52 = sub_46D8;
    *&v52[8] = &unk_35D98;
    v28 = _Block_copy(&aBlock);
    v29 = v16;

    [v29 setIdealConfiguration:v23 animated:0 completion:v28];
    _Block_release(v28);
  }

  else
  {
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (!v30)
    {
      return;
    }

    v23 = v30;
    if (!a6)
    {
      if (qword_38FB0 != -1)
      {
        swift_once();
      }

      v39 = sub_29264();
      sub_5BB4(v39, qword_3C140);
      v40 = sub_29254();
      v41 = sub_29D94();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        *(v42 + 4) = a3;
        _os_log_impl(&dword_0, v40, v41, "Request for remote VC failed for slot #%ld.", v42, 0xCu);
      }

      goto LABEL_19;
    }

    swift_errorRetain();
    if (qword_38FB0 != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v31 = sub_29264();
      sub_5BB4(v31, qword_3C140);
      swift_errorRetain();
      v32 = sub_29254();
      v33 = sub_29D94();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&aBlock = v35;
        *v34 = 134218242;
        *(v34 + 4) = a3;
        *(v34 + 12) = 2082;
        swift_getErrorValue();
        v36 = sub_2A064();
        v38 = sub_DA08(v36, v37, &aBlock);

        *(v34 + 14) = v38;
        _os_log_impl(&dword_0, v32, v33, "Request for remote VC failed for slot #%ld: %{public}s", v34, 0x16u);
        sub_5FD0(v35);
      }

      else
      {
      }

LABEL_19:
      sub_28FD4();
      v52[24] = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      v43 = sub_292C4();
      v45 = v44;
      sub_5858();
      v46 = *(*v45 + 16);
      sub_58A4(v46);
      v47 = *v45;
      *(v47 + 16) = v46 + 1;
      v48 = (v47 + 48 * v46);
      v48[2] = aBlock;
      v48[3] = *v52;
      *(v48 + 57) = *&v52[9];
      v43(v53, 0);

      if (!__OFADD__(a3, 1))
      {
        break;
      }

      __break(1u);
LABEL_24:
      swift_once();
    }

    sub_2338(a3 + 1);
  }
}

void sub_37D8(unint64_t a1)
{
  sub_2844(a1);
  sub_62A0(0, &qword_39178, INParameter_ptr);
  sub_57B0(&qword_39180, &qword_39178, INParameter_ptr);
  v5[1] = sub_29D54();
  v2 = sub_2844(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = sub_29F44();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_6524(v5, v4);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_38EC(uint64_t a1)
{
  result = sub_29D54();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_6748(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

id sub_39AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_62A0(0, &qword_39178, INParameter_ptr);
  sub_57B0(&qword_39180, &qword_39178, INParameter_ptr);
  isa = sub_29D24().super.isa;

  v7 = [v5 initWithParameters:isa interactiveBehavior:a2 hostedViewContext:a3];

  return v7;
}

uint64_t sub_3A78(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v38 = a3;
  v39 = a4;
  v8 = sub_298F4();
  v36 = *(v8 - 8);
  v37 = v8;
  __chkstk_darwin(v8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29914();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_28FE4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  v17 = *(v12 + 16);
  v17(&v32 - v15, v39, v11);
  v39 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17(v39, v16, v11);
  v18 = v38;
  v19 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a1;
  *(v20 + 4) = v18;
  (*(v12 + 32))(&v20[v19], v16, v11);
  *&v20[(v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8] = a5;
  v21 = objc_opt_self();
  v22 = a5;
  swift_errorRetain();

  if ([v21 isMainThread])
  {
    v23 = v39;
    sub_3F30(a2, a1, v18, v39, v22);

    v24 = v23;
  }

  else
  {
    sub_62A0(0, &qword_39150, OS_dispatch_queue_ptr);
    v25 = sub_29DB4();
    v26 = swift_allocObject();
    *(v26 + 16) = sub_621C;
    *(v26 + 24) = v20;
    aBlock[4] = sub_7A8C;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_5140;
    aBlock[3] = &unk_35E10;
    v27 = _Block_copy(aBlock);

    v28 = v32;
    sub_29904();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_5F24(&unk_39D80, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_51E0(&unk_39160, &qword_2AD50);
    sub_5F6C();
    v29 = v34;
    v30 = v37;
    sub_29E54();
    sub_29DC4();
    _Block_release(v27);

    (*(v36 + 8))(v29, v30);
    (*(v33 + 8))(v28, v35);
    v24 = v39;
  }

  return (*(v12 + 8))(v24, v11);
}

void sub_3F30(uint64_t a1, uint64_t a2, _BYTE *KeyPath, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v43 = KeyPath;
    if (!a2)
    {
      v24 = [a5 configuration];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 parameters];

        sub_62A0(0, &qword_39178, INParameter_ptr);
        sub_57B0(&qword_39180, &qword_39178, INParameter_ptr);
        v27 = sub_29D34();
      }

      else if (sub_2844(&_swiftEmptyArrayStorage))
      {
        v27 = sub_59F0(&_swiftEmptyArrayStorage);
      }

      else
      {
        v27 = &_swiftEmptySetSingleton;
      }

      if (qword_38FB0 != -1)
      {
        swift_once();
      }

      v28 = sub_29264();
      sub_5BB4(v28, qword_3C140);

      v29 = sub_29254();
      v30 = sub_29D84();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v44 = v32;
        *v31 = 134218242;
        *(v31 + 4) = KeyPath;
        *(v31 + 12) = 2080;
        sub_62A0(0, &qword_39178, INParameter_ptr);
        sub_57B0(&qword_39180, &qword_39178, INParameter_ptr);
        v33 = sub_29D44();
        v35 = sub_DA08(v33, v34, &v44);

        *(v31 + 14) = v35;
        _os_log_impl(&dword_0, v29, v30, "Successfully set remoteVC configuration for slot #%ld; handled parameters: %s", v31, 0x16u);
        sub_5FD0(v32);
      }

      swift_beginAccess();
      sub_44E0(v27);
      swift_endAccess();
      v47 = 0;
      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      v36 = a5;
      v37 = sub_292C4();
      v39 = v38;
      sub_5858();
      v40 = *(*v39 + 16);
      sub_58A4(v40);
      v41 = *v39;
      *(v41 + 16) = v40 + 1;
      v42 = v41 + 48 * v40;
      *(v42 + 32) = v36;
      *(v42 + 40) = v44;
      *(v42 + 56) = *v45;
      *(v42 + 72) = v47;
      v37(v46, 0);

      goto LABEL_17;
    }

    swift_errorRetain();
    if (qword_38FB0 != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v10 = sub_29264();
      sub_5BB4(v10, qword_3C140);
      swift_errorRetain();
      v11 = sub_29254();
      v12 = sub_29D94();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *&v44 = v14;
        *v13 = 134218242;
        *(v13 + 4) = KeyPath;
        *(v13 + 12) = 2082;
        swift_getErrorValue();
        v15 = sub_2A064();
        v17 = sub_DA08(v15, v16, &v44);

        *(v13 + 14) = v17;
        _os_log_impl(&dword_0, v11, v12, "Unable to setIdealConfiguration for slot #%ld: %{public}s", v13, 0x16u);
        sub_5FD0(v14);
      }

      sub_28FD4();
      v45[24] = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      KeyPath = v46;
      v18 = sub_292C4();
      v20 = v19;
      sub_5858();
      v21 = *(*v20 + 16);
      sub_58A4(v21);
      v22 = *v20;
      *(v22 + 16) = v21 + 1;
      v23 = (v22 + 48 * v21);
      v23[2] = v44;
      v23[3] = *v45;
      *(v23 + 57) = *&v45[9];
      v18(v46, 0);

LABEL_17:
      if (!__OFADD__(v43, 1))
      {
        break;
      }

      __break(1u);
LABEL_21:
      swift_once();
    }

    sub_2338((v43 + 1));
  }
}

void sub_44E0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_29E74();
    sub_62A0(0, &qword_39178, INParameter_ptr);
    sub_57B0(&qword_39180, &qword_39178, INParameter_ptr);
    sub_29D64();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_62E0(v1);
      return;
    }

    while (1)
    {
      sub_6524(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_29EA4())
      {
        sub_62A0(0, &qword_39178, INParameter_ptr);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_46D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_4744(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v8 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v37 = a6;
    sub_4B68(46, 0xE100000000000000, v6, v7);
    if (v11)
    {
      v13 = 15;
    }

    else
    {
      v13 = sub_29BB4();
    }

    sub_29BF4();
    v14 = sub_29B94();
    v16 = v15;

    sub_4C50(v13, v6, v7);
    v36 = sub_29B94();
    v18 = v17;

    if (a3)
    {
      v19 = v14 == a2 && v16 == a3;
      if (v19 || (sub_2A034() & 1) != 0)
      {

        sub_62A0(0, &qword_39178, INParameter_ptr);
        v20 = sub_1DA0();
        v21 = [v20 intent];

        ObjectType = swift_getObjectType();
        v12 = sub_4CF4(ObjectType, v36, v18);
LABEL_40:
        a6 = v37;
        goto LABEL_41;
      }
    }

    v23 = sub_1DA0();
    v24 = [v23 intentResponse];

    if (v24)
    {
      if (a5)
      {
        if (v14 == a4 && v16 == a5)
        {

LABEL_39:
          sub_62A0(0, &qword_39178, INParameter_ptr);
          v34 = swift_getObjectType();
          v12 = sub_4CF4(v34, v36, v18);

          goto LABEL_40;
        }

        v26 = sub_2A034();

        if (v26)
        {
          goto LABEL_39;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    if (qword_38FB0 != -1)
    {
      swift_once();
    }

    v27 = sub_29264();
    sub_5BB4(v27, qword_3C140);

    v28 = sub_29254();
    v29 = sub_29D94();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v30 = 136446466;
      *(v30 + 4) = sub_DA08(v6, v7, &v39);
      *(v30 + 12) = 2082;
      if (a3)
      {
        v31 = a2;
      }

      else
      {
        v31 = 0x6E776F6E6B6E753CLL;
      }

      if (a3)
      {
        v32 = a3;
      }

      else
      {
        v32 = 0xE90000000000003ELL;
      }

      v33 = sub_DA08(v31, v32, &v39);

      *(v30 + 14) = v33;
      _os_log_impl(&dword_0, v28, v29, "Invalid parameter keyPath '%{public}s' for Intent '%{public}s'.", v30, 0x16u);
      swift_arrayDestroy();
    }

    v12 = 0;
    goto LABEL_40;
  }

  v12 = 0;
LABEL_41:
  *a6 = v12;
}

unint64_t sub_4B68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_29BB4())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_29BE4() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_2A034();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_4C50(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_29BF4();

    return v4;
  }

  return result;
}

id sub_4CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_29B04();

  v5 = [swift_getObjCClassFromMetadata() parameterForClass:ObjCClassFromMetadata keyPath:v4];

  return v5;
}

id sub_4DB0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_4EAC@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_292A4();
  *a2 = result;
  return result;
}

uint64_t sub_4EEC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v12.origin.x = v2;
  v12.origin.y = v4;
  v12.size.width = v6;
  v12.size.height = v8;
  Height = CGRectGetHeight(v12);
  sub_51E0(&qword_39140, &qword_2AD40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2AB10;
  *(inited + 32) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:720896];
  *(inited + 40) = [objc_opt_self() valueWithCGSize:{0.0, Height}];
  sub_62A0(0, &qword_39128, NSNumber_ptr);
  sub_62A0(0, &qword_39130, NSValue_ptr);
  sub_57B0(&qword_39138, &qword_39128, NSNumber_ptr);
  return sub_29AB4();
}

uint64_t sub_5140(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t variable initialization expression of SashStandardView._appIcon()
{
  type metadata accessor for SashStandardView.AppIcon(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_51E0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_52A0@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_51E0(a2, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t _s12SystemPlugin11AppIconViewV8_context33_2832D3348F8A880C8C0A57389E58B602LL7SwiftUI17EnvironmentObjectVy07SnippetP07ContextCGvpfi_0()
{
  sub_29A94();
  sub_5F24(&qword_3A0D0, &type metadata accessor for Context, &protocol conformance descriptor for Context);

  return sub_29404();
}

uint64_t variable initialization expression of MapIdentifiablePlace.canvas@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_28CF4();

  return sub_53C4(a1, 1, 1, v2);
}

uint64_t type metadata accessor for IntentsUIStandardViewModel(uint64_t a1)
{
  result = qword_39030;
  if (!qword_39030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5440(uint64_t a1)
{
  sub_29014();
  if (v1 <= 0x3F)
  {
    sub_5528(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_5528(uint64_t a1)
{
  if (!qword_39040)
  {
    sub_558C(&qword_39048, &qword_2AC00);
    v1 = sub_292F4();
    if (!v2)
    {
      atomic_store(v1, &qword_39040);
    }
  }
}

uint64_t sub_558C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_55D4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_55E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5604(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_5660(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_5674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_56B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_5700(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

__n128 sub_5738(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_5744(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5764(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_57B0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_62A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5800@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CC0();
  *a1 = result;
  return result;
}

char *sub_5858()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_58E8(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_58A4(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_58E8((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_58E8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_51E0(&qword_39190, &qword_2ADA8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_275C8(a4 + 32, v8, v10 + 32);
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

Swift::Int sub_59F0(unint64_t a1)
{
  v1 = a1;
  if (sub_2844(a1))
  {
    sub_51E0(&qword_39188, &qword_2ADA0);
    v2 = sub_29F04();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v20 = sub_2844(v1);
  if (v20)
  {
    v3 = 0;
    v4 = (v2 + 7);
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_6500(v3, v19 == 0, v1);
      result = v19 ? sub_29F44() : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_29DF4(v2[5]);
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *&v4[8 * v10];
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_62A0(0, &qword_39178, INParameter_ptr);
        v13 = *(v2[6] + 8 * v9);
        v14 = sub_29E04();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *&v4[8 * v10] = v12 | v11;
      *(v2[6] + 8 * v9) = v6;
      v15 = v2[2];
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_5BB4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_5BEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5C24()
{
  sub_28FE4();
  sub_7AA0();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);

  v5 = sub_7ACC();
  v6(v5);

  return _swift_deallocObject(v0, ((v2 + 40) & ~v2) + v4, v2 | 7);
}

uint64_t sub_5CDC(void *a1, uint64_t a2)
{
  v5 = *(sub_28FE4() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_2C70(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_5D64()
{
  sub_28FE4();
  sub_7AA0();
  sub_7B0C();

  v1 = sub_7ACC();
  v2(v1);

  v3 = sub_7AFC();

  return _swift_deallocObject(v3, v4, v5);
}

void sub_5E28()
{
  v1 = sub_28FE4();
  sub_7AEC(v1);
  sub_7ADC();
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = *(v0 + v7);

  sub_3144(v3, v4, v5, v6, v0 + v2, v8);
}

uint64_t sub_5EAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5F0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5F24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_5F6C()
{
  result = qword_39D90;
  if (!qword_39D90)
  {
    sub_558C(&unk_39160, &qword_2AD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39D90);
  }

  return result;
}

uint64_t sub_5FD0(void *a1)
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

uint64_t sub_601C()
{
  sub_28FE4();
  sub_7AA0();
  sub_7B0C();

  v2 = sub_7ACC();
  v3(v2);

  v4 = sub_7AFC();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_60D0(uint64_t a1)
{
  v3 = sub_28FE4();
  sub_7AEC(v3);
  sub_7ADC();
  v6 = *(v1 + v5);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);

  return sub_3A78(a1, v7, v8, (v1 + v4), v6);
}

uint64_t sub_6160()
{
  sub_28FE4();
  sub_7AA0();
  sub_7B0C();

  v2 = sub_7ACC();
  v3(v2);

  v4 = sub_7AFC();

  return _swift_deallocObject(v4, v5, v6);
}

void sub_621C()
{
  v1 = sub_28FE4();
  sub_7AEC(v1);
  sub_7ADC();
  v3 = v0[2];
  v4 = v0[3];
  v6 = *(v0 + v5);
  v7 = v0[4];

  sub_3F30(v3, v4, v7, v0 + v2, v6);
}

uint64_t sub_62A0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_62E8(unint64_t a1)
{
  v1 = a1;
  if (sub_2844(a1))
  {
    sub_51E0(&qword_391B0, &unk_2ADF0);
    v2 = sub_29F04();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v20 = sub_2844(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_6500(v3, v19 == 0, v1);
      if (v19)
      {
        result = sub_29F44();
        v6 = result;
      }

      else
      {
        v6 = *(v17 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      sub_29294();
      sub_7AB4();
      sub_5F24(&qword_391B8, v8, &protocol conformance descriptor for AnyCancellable);
      result = sub_29AE4();
      v9 = ~(-1 << v2[32]);
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *&v4[8 * v11];
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        sub_7AB4();
        sub_5F24(&unk_391C0, v14, &protocol conformance descriptor for AnyCancellable);
        if (sub_29AF4())
        {

          goto LABEL_17;
        }

        result = v10 + 1;
      }

      *&v4[8 * v11] = v13 | v12;
      *(*(v2 + 6) + 8 * v10) = v6;
      v15 = *(v2 + 2);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 2) = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unint64_t sub_6500(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_6524(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_29E94();

    if (v9)
    {

      sub_62A0(0, &qword_39178, INParameter_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_29E84();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_6894(v7, result + 1);
        v17 = v16[2];
        if (v16[3] <= v17)
        {
          sub_6A70(v17 + 1);
        }

        v18 = v8;
        sub_6EF0(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_62A0(0, &qword_39178, INParameter_ptr);
    v11 = sub_29DF4(*(v6 + 40));
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_6F74(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_29E04();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v13);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

BOOL sub_6748(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_2A0B4();
  sub_29BA4();
  v8 = sub_2A0D4();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_2A034() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_70D8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

Swift::Int sub_6894(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_51E0(&qword_39188, &qword_2ADA0);
    v2 = sub_29EF4();
    v15 = v2;
    sub_29E74();
    while (1)
    {
      if (!sub_29EA4())
      {

        return v2;
      }

      sub_62A0(0, &qword_39178, INParameter_ptr);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_6A70(v3 + 1);
      }

      v2 = v15;
      result = sub_29DF4(*(v15 + 40));
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_6A70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_51E0(&qword_39188, &qword_2ADA0);
  result = sub_29EE4();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_7240(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_29DF4(*(v5 + 40));
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_6C94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_51E0(&qword_391A8, &qword_2ADE8);
  result = sub_29EE4();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_7240(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2A0B4();
    sub_29BA4();
    result = sub_2A0D4();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_6EF0(uint64_t a1, void *a2)
{
  sub_29DF4(a2[5]);
  result = sub_29E64();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_6F74(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_6A70(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_754C(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = sub_29DF4(*(*v3 + 40));
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_62A0(0, &qword_39178, INParameter_ptr);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_29E04();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_72A4();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_2A044();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

unint64_t sub_70D8(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_6C94(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_7760(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_2A0B4();
      sub_29BA4();
      result = sub_2A0D4();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_2A034() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_73F4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2A044();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_7240(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2AB20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

id sub_72A4()
{
  v1 = v0;
  sub_51E0(&qword_39188, &qword_2ADA0);
  v2 = *v0;
  v3 = sub_29ED4();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_73F4()
{
  v1 = v0;
  sub_51E0(&qword_391A8, &qword_2ADE8);
  v2 = *v0;
  v3 = sub_29ED4();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

uint64_t sub_754C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_51E0(&qword_39188, &qword_2ADA0);
  result = sub_29EE4();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v5 + 40);
        v16 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_29DF4(v15);
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v25;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_7760(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_51E0(&qword_391A8, &qword_2ADE8);
  result = sub_29EE4();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_2A0B4();

        sub_29BA4();
        result = sub_2A0D4();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_7994(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_29B14();

  return v4;
}

void sub_7A1C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t property wrapper backing initializer of SashStandardView.appIcon(uint64_t a1)
{
  type metadata accessor for SashStandardView.AppIcon(0);
  sub_C3B0();
  __chkstk_darwin(v1);
  sub_C3C0();
  sub_9EEC();
  sub_29854();
  sub_C3D8();
  return sub_C35C();
}

uint64_t SashStandardView.init(modelData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a1;
  v22[2] = a2;
  v4 = sub_28EA4();
  sub_7AA0();
  v22[0] = v5;
  __chkstk_darwin(v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SashStandardView.AppIcon(0);
  sub_C3B0();
  v10 = __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v11 = type metadata accessor for SashStandardView(0);
  v12 = (a3 + v11[5]);
  sub_29A94();
  sub_C318();
  v13 = sub_29404();
  *v12 = v13;
  v12[1] = v14;
  swift_storeEnumTagMultiPayload();
  sub_C3C0();
  sub_9EEC();
  sub_29854();
  sub_C3D8();
  sub_C35C();
  v15 = (a3 + v11[7]);
  v22[3] = 0;
  v22[4] = 0xE000000000000000;
  sub_29854();
  v16 = v22[6];
  v17 = v22[7];
  *v15 = v22[5];
  v15[1] = v16;
  v15[2] = v17;
  v18 = v11[8];
  _s12SystemPlugin16SashStandardViewV14_actionHandler33_289897A7AC71DBD41716A1019D2705CFLL9SnippetUI06ActionG0Vvpfi_0();
  sub_C318();
  v19 = v22[9];
  sub_28FA4();
  if (!v19)
  {
    return (*(v22[0] + 32))(a3, v8, v4);
  }

  sub_C004();

  sub_29994();
  sub_7B1C();
  return (*(v20 + 8))(a3 + v18);
}

uint64_t sub_7F28(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SashStandardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for SashStandardView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_51E0(&qword_39360, &qword_2AE28);
  sub_7AA0();
  v22 = v7;
  v23 = v6;
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  sub_8254(__src);
  v10 = sub_9178();
  if (!v10)
  {
    v10 = sub_297B4();
  }

  v26[0] = v10;
  v11 = sub_29374();
  v12 = sub_29694();
  memcpy(v25, __src, 0x91uLL);
  v25[19] = v11;
  LOBYTE(v25[20]) = v12;
  sub_9EEC();
  v13 = *(v4 + 80);
  v21 = v2;
  v14 = (v13 + 16) & ~v13;
  v15 = swift_allocObject();
  sub_9F48(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_51E0(&qword_39368, &qword_2AE30);
  sub_A00C();
  sub_29744();

  memcpy(v26, v25, 0xA1uLL);
  sub_C004();
  sub_9EEC();
  v16 = swift_allocObject();
  sub_9F48(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14);
  v17 = sub_51E0(&qword_393B8, &qword_2AE68);
  v18 = v24;
  v19 = (v24 + *(v17 + 36));
  sub_29384();
  sub_29CF4();
  *v19 = &unk_2AE60;
  v19[1] = v16;
  return (*(v22 + 32))(v18, v9, v23);
}

void *sub_8254@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_29584();
  v21 = 0;
  sub_8450(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v23, __src, sizeof(v23));
  sub_BFAC();
  sub_C004();
  memcpy(&v20[7], __dst, 0x49uLL);
  v4 = v21;
  sub_51E0(&qword_39578, &qword_2AF48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2AE00;
  v6 = sub_296B4();
  *(inited + 32) = v6;
  v7 = sub_296A4();
  *(inited + 33) = v7;
  v8 = sub_296D4();
  *(inited + 34) = v8;
  v9 = sub_296C4();
  sub_296C4();
  if (sub_296C4() != v6)
  {
    v9 = sub_296C4();
  }

  sub_296C4();
  if (sub_296C4() != v7)
  {
    v9 = sub_296C4();
  }

  sub_296C4();
  if (sub_296C4() != v8)
  {
    v9 = sub_296C4();
  }

  sub_29314();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  result = memcpy((a2 + 17), v20, 0x50uLL);
  *(a2 + 104) = v9;
  *(a2 + 112) = v11;
  *(a2 + 120) = v13;
  *(a2 + 128) = v15;
  *(a2 + 136) = v17;
  *(a2 + 144) = 0;
  return result;
}

void sub_8450(uint64_t a1@<X8>)
{
  sub_84D4(&v9);
  v2 = v9;
  sub_8DD8(&v9);
  v3 = v9;
  v4 = sub_296B4();
  sub_29314();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
}

uint64_t sub_84D4@<X0>(uint64_t *a1@<X8>)
{
  v64 = a1;
  v60 = sub_51E0(&qword_395D0, &qword_2AFB0);
  v57 = *(v60 - 8);
  __chkstk_darwin(v60);
  v54 = &v50 - v1;
  v2 = sub_51E0(&qword_395D8, &qword_2AFB8);
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = __chkstk_darwin(v2);
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v56 = &v50 - v5;
  v63 = sub_28F24();
  v53 = *(v63 - 8);
  v6 = __chkstk_darwin(v63);
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62 = &v50 - v8;
  v61 = sub_28D44();
  v9 = *(v61 - 8);
  __chkstk_darwin(v61);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_28D84();
  v50 = *(v12 - 8);
  v51 = v12;
  __chkstk_darwin(v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AppIconView(0);
  v16 = __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  v18 = &v50 - v17;
  v19 = type metadata accessor for SashStandardView.AppIcon(0);
  __chkstk_darwin(v19);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SashStandardView(0);
  sub_51E0(&qword_39358, &qword_2AE20);
  sub_29864();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = v53;
      v24 = *(v53 + 32);
      v26 = v62;
      v25 = v63;
      v24(v62, v21, v63);
      v27 = v52;
      (*(v23 + 16))(v52, v26, v25);
      v28 = &v18[v15[5]];
      sub_29A94();
      sub_C318();
      *v28 = sub_29404();
      v28[1] = v29;
      v30 = v15[6];
      *&v18[v30] = swift_getKeyPath();
      sub_51E0(&qword_38FE0, &qword_2AB60);
      swift_storeEnumTagMultiPayload();
      v31 = &v18[v15[7]];
      *v31 = swift_getKeyPath();
      v31[8] = 0;
      v32 = v15[8];
      v65 = 0;
      sub_51E0(&unk_39770, &qword_2B200);
      sub_29854();
      *&v18[v32] = v66;
      v33 = v27;
      v34 = v63;
      v24(v18, v33, v63);
      type metadata accessor for AppIconView.Model(0);
      swift_storeEnumTagMultiPayload();
      v35 = v61;
      (*(v9 + 104))(v11, enum case for ImageElement.ImageStyle.appIcon2(_:), v61);
      v36 = sub_C318();
      v37 = v54;
      sub_29714();
      (*(v9 + 8))(v11, v35);
      sub_C35C();
      *&v66 = v15;
      *(&v66 + 1) = v36;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v39 = v56;
      v40 = v60;
      sub_29724();
      (*(v57 + 8))(v37, v40);
      v42 = v58;
      v41 = v59;
      (*(v58 + 16))(v55, v39, v59);
      *&v66 = v40;
      *(&v66 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v43 = sub_298A4();
      (*(v42 + 8))(v39, v41);
      result = (*(v23 + 8))(v62, v34);
    }

    else
    {
      result = sub_298A4();
      v43 = result;
    }
  }

  else
  {
    (*(v9 + 104))(v11, enum case for ImageElement.ImageStyle.appIcon2(_:), v61);
    sub_28D94();
    v45 = &v18[v15[5]];
    sub_29A94();
    sub_C318();
    *v45 = sub_29404();
    v45[1] = v46;
    v47 = v15[6];
    *&v18[v47] = swift_getKeyPath();
    sub_51E0(&qword_38FE0, &qword_2AB60);
    swift_storeEnumTagMultiPayload();
    v48 = &v18[v15[7]];
    *v48 = swift_getKeyPath();
    v48[8] = 0;
    v49 = v15[8];
    v65 = 0;
    sub_51E0(&unk_39770, &qword_2B200);
    sub_29854();
    *&v18[v49] = v66;
    (*(v50 + 32))(v18, v14, v51);
    type metadata accessor for AppIconView.Model(0);
    swift_storeEnumTagMultiPayload();
    sub_9EEC();
    sub_C318();
    v43 = sub_298A4();
    result = sub_C35C();
  }

  *v64 = v43;
  return result;
}

uint64_t sub_8DD8@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v2 = sub_51E0(&qword_39580, &qword_2AF50);
  __chkstk_darwin(v2 - 8);
  v31 = &v29 - v3;
  v4 = sub_51E0(&qword_39588, &qword_2AF58);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_28C84();
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_51E0(&qword_39590, &qword_2AF60);
  v10 = __chkstk_darwin(v32);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = *(type metadata accessor for SashStandardView(0) + 28);
  v33 = v1;
  v14 = (v1 + v13);
  v16 = *v14;
  v15 = v14[1];
  v17 = v14[2];
  *&v35 = *v14;
  *(&v35 + 1) = v15;
  *&v36 = v17;
  sub_51E0(&qword_39528, &qword_2AEF8);
  sub_29864();
  v19 = v38;
  v18 = v39;

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    *&v35 = v16;
    *(&v35 + 1) = v15;
    *&v36 = v17;
    sub_29864();
    v21 = sub_28C74();
    sub_53C4(v6, 1, 1, v21);
    v22 = sub_29064();
    sub_53C4(v31, 1, 1, v22);
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    sub_28C94();
    sub_28C64();
    (*(v29 + 8))(v9, v30);
    v23 = sub_295E4();
    *&v12[*(sub_51E0(&qword_39598, &qword_2AF68) + 36)] = v23;
    v24 = sub_B164();
    KeyPath = swift_getKeyPath();
    v26 = &v12[*(v32 + 36)];
    *v26 = KeyPath;
    v26[1] = v24;
    sub_C084();
    sub_C0E4();
    v27 = sub_298A4();
    result = sub_C2B0();
  }

  else
  {
    result = sub_298A4();
    v27 = result;
  }

  *v34 = v27;
  return result;
}

uint64_t sub_9178()
{
  v1 = sub_290F4();
  v36 = *(v1 - 8);
  __chkstk_darwin(v1);
  v34 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_28CC4();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_28CA4();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_51E0(&qword_39540, &unk_2AF10);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_51E0(&qword_39568, &qword_2AF38);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_28ED4();
  v37 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  sub_28E44();
  v19 = sub_28F24();
  if (sub_B89C(v9, 1, v19) == 1)
  {
    sub_C004();
    sub_53C4(v12, 1, 1, v13);
    goto LABEL_5;
  }

  v31 = v1;
  sub_28F04();
  (*(*(v19 - 8) + 8))(v9, v19);
  v20 = *(v0 + *(type metadata accessor for SashStandardView(0) + 20));
  if (v20)
  {
    v21 = v20;
    sub_29A24();

    sub_29E14();
    sub_29C94();

    (*(v38 + 8))(v6, v39);
    if (sub_B89C(v12, 1, v13) != 1)
    {
      v24 = v37;
      (*(v37 + 32))(v18, v12, v13);
      (*(v24 + 16))(v16, v18, v13);
      if ((*(v24 + 88))(v16, v13) == enum case for VisualElement.color(_:))
      {
        (*(v24 + 96))(v16, v13);
        v26 = v32;
        v25 = v33;
        v27 = v35;
        (*(v33 + 32))(v32, v16, v35);
        v28 = v34;
        sub_28CB4();
        v22 = sub_290E4();
        (*(v36 + 8))(v28, v31);
        (*(v25 + 8))(v26, v27);
        (*(v24 + 8))(v18, v13);
        return v22;
      }

      v29 = *(v24 + 8);
      v29(v18, v13);
      v29(v16, v13);
      return 0;
    }

LABEL_5:
    sub_C004();
    return 0;
  }

  sub_29A94();
  sub_C318();
  result = sub_293F4();
  __break(1u);
  return result;
}

uint64_t sub_9754()
{
  v0 = sub_29134();
  v56 = *(v0 - 8);
  v57 = v0;
  __chkstk_darwin(v0);
  v55 = (&v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_28C44();
  v52 = *(v2 - 8);
  v53 = v2;
  __chkstk_darwin(v2);
  v51 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SashStandardView.AppIcon(0);
  __chkstk_darwin(v4);
  v6 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_51E0(&qword_39548, &qword_2C340);
  __chkstk_darwin(v7 - 8);
  v50 = &v49 - v8;
  v9 = sub_51E0(&qword_39550, &qword_2AF20);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_51E0(&qword_39558, &qword_2AF28);
  v13 = __chkstk_darwin(v12 - 8);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v49 - v16;
  __chkstk_darwin(v15);
  v19 = &v49 - v18;
  type metadata accessor for SashStandardView(0);
  sub_29974();
  v20 = sub_29A14();
  v21 = sub_B89C(v19, 1, v20);
  v58 = v20;
  v49 = v11;
  if (v21 == 1)
  {
    sub_C004();
  }

  else
  {
    sub_28E84();
    v22 = sub_299F4();
    sub_C004();
    v23 = *(*(v20 - 8) + 8);
    v23(v19, v20);
    if (v22)
    {
      sub_29974();
      v24 = v58;
      if (sub_B89C(v17, 1, v58) == 1)
      {
        return sub_C004();
      }

      sub_28E84();
      v46 = enum case for InteractionType.componentTapped(_:);
      v47 = sub_299A4();
      v48 = v50;
      (*(*(v47 - 8) + 104))(v50, v46, v47);
      sub_53C4(v48, 0, 1, v47);
      sub_29A04();
      sub_C004();
      sub_C004();
      return (v23)(v17, v24);
    }
  }

  sub_51E0(&qword_39358, &qword_2AE20);
  sub_29864();
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_C35C();
  }

  v26 = *v6;
  v27 = v6[1];
  v28 = [objc_allocWithZone(SAUIAppPunchOut) init];
  v29 = v51;
  sub_28C34();
  v30 = sub_28C24();
  v32 = v31;
  (*(v52 + 8))(v29, v53);
  sub_BE70(v30, v32, v28, &selRef_setAceId_);
  [v28 setAppAvailableInStorefront:1];
  sub_BE70(v26, v27, v28, &selRef_setBundleId_);
  v34 = v55;
  v33 = v56;
  *v55 = v28;
  *(v34 + 8) = 0;
  v35 = v57;
  (*(v33 + 104))(v34, enum case for Command.aceCommand(_:), v57);
  v36 = v28;
  v37 = v54;
  sub_29974();
  v38 = v58;
  if (sub_B89C(v37, 1, v58) == 1)
  {
    (*(v33 + 8))(v34, v35);

    return sub_C004();
  }

  sub_51E0(&qword_39560, &qword_2AF30);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2AB10;
  *(v39 + 56) = v35;
  *(v39 + 64) = &protocol witness table for Command;
  v40 = sub_BF4C((v39 + 32));
  (*(v33 + 16))(v40, v34, v35);
  v41 = v49;
  sub_28EF4();
  v42 = sub_28EE4();
  sub_53C4(v41, 0, 1, v42);
  v43 = enum case for InteractionType.componentTapped(_:);
  v44 = sub_299A4();
  v45 = v50;
  (*(*(v44 - 8) + 104))(v50, v43, v44);
  sub_53C4(v45, 0, 1, v44);
  sub_29A04();

  sub_C004();
  sub_C004();
  (*(v33 + 8))(v34, v35);
  return (*(*(v38 - 8) + 8))(v37, v38);
}

uint64_t sub_9EEC()
{
  sub_C3F0();
  v2(0);
  sub_C3B0();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_9F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SashStandardView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9FAC()
{
  type metadata accessor for SashStandardView(0);

  return sub_9754();
}

unint64_t sub_A00C()
{
  result = qword_39370;
  if (!qword_39370)
  {
    sub_558C(&qword_39368, &qword_2AE30);
    sub_A0C4();
    sub_C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39370);
  }

  return result;
}

unint64_t sub_A0C4()
{
  result = qword_39378;
  if (!qword_39378)
  {
    sub_558C(&qword_39380, &qword_2AE38);
    sub_A148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39378);
  }

  return result;
}

unint64_t sub_A148()
{
  result = qword_39388;
  if (!qword_39388)
  {
    sub_558C(&qword_39390, &qword_2AE40);
    sub_C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39388);
  }

  return result;
}

uint64_t sub_A200(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_29CE4();
  *(v1 + 24) = sub_29CD4();
  v3 = sub_29CC4();

  return _swift_task_switch(sub_A298, v3, v2);
}

uint64_t sub_A298()
{

  sub_A68C();
  sub_AA6C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_A300()
{
  v1 = type metadata accessor for SashStandardView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  sub_28EA4();
  sub_7B1C();
  (*(v5 + 8))(v0 + v3);

  v6 = v0 + v3 + v1[6];
  type metadata accessor for SashStandardView.AppIcon(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_28F24();
    sub_7B1C();
    (*(v8 + 8))(v6);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  sub_51E0(&qword_39358, &qword_2AE20);

  v9 = v1[8];
  sub_29994();
  sub_7B1C();
  (*(v10 + 8))(v0 + v3 + v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_A4B0()
{
  v2 = *(type metadata accessor for SashStandardView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_A57C;

  return sub_A200(v0 + v3);
}

uint64_t sub_A57C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_A68C()
{
  v0 = sub_51E0(&qword_39520, &qword_2AEF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = type metadata accessor for SashStandardView.AppIcon(0);
  v4 = __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  v6 = (&v19 - v5);
  v7 = sub_51E0(&qword_39540, &unk_2AF10);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_28F24();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28E94();
  if (sub_B89C(v9, 1, v10) == 1)
  {
    sub_C004();
    sub_28E74();
    v14 = sub_28E64();
    if (sub_B89C(v2, 1, v14) == 1)
    {
      return sub_C004();
    }

    else
    {
      v16 = sub_28E54();
      v18 = v17;
      result = (*(*(v14 - 8) + 8))(v2, v14);
      if (v18)
      {
        *v6 = v16;
        v6[1] = v18;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for SashStandardView(0);
        sub_9EEC();
        sub_51E0(&qword_39358, &qword_2AE20);
        sub_29874();
        return sub_C35C();
      }
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(v11 + 16))(v6, v13, v10);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SashStandardView(0);
    sub_9EEC();
    sub_51E0(&qword_39358, &qword_2AE20);
    sub_29874();
    sub_C35C();
    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_AA6C()
{
  v1 = v0;
  v2 = sub_51E0(&qword_39520, &qword_2AEF0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v7 = &v48 - v6;
  sub_28E74();
  v8 = sub_28E64();
  if (sub_B89C(v7, 1, v8) == 1)
  {
    if (qword_38FB0 != -1)
    {
      swift_once();
    }

    v9 = sub_29264();
    sub_5BB4(v9, qword_3C140);
    v10 = sub_29254();
    v11 = sub_29D94();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_7;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "App title missing for sash.";
LABEL_6:
    _os_log_impl(&dword_0, v10, v11, v13, v12, 2u);

LABEL_7:

    return sub_C004();
  }

  sub_BFAC();
  v15 = *(v8 - 8);
  v16 = (*(v15 + 88))(v5, v8);
  if (v16 != enum case for SashStandard.Title.applicationBundleIdentifier(_:))
  {
    if (v16 == enum case for SashStandard.Title.text(_:))
    {
      (*(v15 + 96))(v5, v8);
      v20 = *v5;
      v21 = v5[1];
      v22 = (v1 + *(type metadata accessor for SashStandardView(0) + 28));
      v23 = *v22;
      v24 = *(v22 + 2);
      v51 = v23;
      v52 = v24;
      v49 = v20;
      v50 = v21;
      sub_51E0(&qword_39528, &qword_2AEF8);
      sub_29874();
      return sub_C004();
    }

    (*(v15 + 8))(v5, v8);
    if (qword_38FB0 != -1)
    {
      swift_once();
    }

    v25 = sub_29264();
    sub_5BB4(v25, qword_3C140);
    v10 = sub_29254();
    v11 = sub_29D94();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_7;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Unknown app title type.";
    goto LABEL_6;
  }

  (*(v15 + 96))(v5, v8);
  v18 = *v5;
  v17 = v5[1];
  v19 = objc_allocWithZone(LSApplicationRecord);

  v26 = sub_BD68(v18, v17, 1);

  v27 = [objc_opt_self() sharedPreferences];
  v28 = sub_BEDC(v27);
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    sub_51E0(&qword_39538, &qword_2AF08);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_2AB10;
    *(v32 + 32) = v30;
    *(v32 + 40) = v31;
    isa = sub_29C74().super.isa;

    v34 = [v26 localizedNameWithPreferredLocalizations:isa];

    v35 = sub_29B14();
    v37 = v36;

    v38 = (v1 + *(type metadata accessor for SashStandardView(0) + 28));
    v39 = v38[1];
    v40 = v38[2];
    *&v51 = *v38;
    *(&v51 + 1) = v39;
    v52 = v40;
    v49 = v35;
    v50 = v37;

    sub_51E0(&qword_39528, &qword_2AEF8);
    sub_29874();
  }

  else
  {
    v41 = [v26 localizedName];
    v42 = sub_29B14();
    v44 = v43;

    v45 = (v1 + *(type metadata accessor for SashStandardView(0) + 28));
    v46 = v45[1];
    v47 = v45[2];
    *&v51 = *v45;
    *(&v51 + 1) = v46;
    v52 = v47;
    v49 = v42;
    v50 = v44;

    sub_51E0(&qword_39528, &qword_2AEF8);
    sub_29874();
  }

  return sub_C004();
}

uint64_t sub_B164()
{
  v1 = sub_290F4();
  v36 = *(v1 - 8);
  __chkstk_darwin(v1);
  v34 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_28CC4();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_28CA4();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_51E0(&qword_39540, &unk_2AF10);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_51E0(&qword_39568, &qword_2AF38);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_28ED4();
  v37 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  sub_28E34();
  v19 = sub_28F24();
  if (sub_B89C(v9, 1, v19) == 1)
  {
    sub_C004();
    sub_53C4(v12, 1, 1, v13);
    goto LABEL_5;
  }

  v31 = v1;
  sub_28F04();
  (*(*(v19 - 8) + 8))(v9, v19);
  v20 = *(v0 + *(type metadata accessor for SashStandardView(0) + 20));
  if (v20)
  {
    v21 = v20;
    sub_29A24();

    sub_29E14();
    sub_29C94();

    (*(v38 + 8))(v6, v39);
    if (sub_B89C(v12, 1, v13) != 1)
    {
      v24 = v37;
      (*(v37 + 32))(v18, v12, v13);
      (*(v24 + 16))(v16, v18, v13);
      if ((*(v24 + 88))(v16, v13) == enum case for VisualElement.color(_:))
      {
        (*(v24 + 96))(v16, v13);
        v26 = v32;
        v25 = v33;
        v27 = v35;
        (*(v33 + 32))(v32, v16, v35);
        v28 = v34;
        sub_28CB4();
        v22 = sub_290E4();
        (*(v36 + 8))(v28, v31);
        (*(v25 + 8))(v26, v27);
        (*(v24 + 8))(v18, v13);
        return v22;
      }

      v29 = *(v24 + 8);
      v29(v18, v13);
      v29(v16, v13);
      return sub_297F4();
    }

LABEL_5:
    sub_C004();
    return sub_297F4();
  }

  sub_29A94();
  sub_C318();
  result = sub_293F4();
  __break(1u);
  return result;
}

uint64_t sub_B780(uint64_t a1, uint64_t a2, int *a3)
{
  sub_28EA4();
  sub_C40C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return sub_B89C(v9, a2, v8);
  }

  sub_51E0(&qword_39358, &qword_2AE20);
  sub_C40C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[6];
LABEL_10:
    v9 = a1 + v12;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = sub_29994();
    v12 = a3[8];
    goto LABEL_10;
  }

  v13 = *(a1 + a3[7] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_B8D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_28EA4();
  sub_C40C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_51E0(&qword_39358, &qword_2AE20);
    sub_C40C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return;
      }

      v10 = sub_29994();
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  sub_53C4(v11, a2, a2, v10);
}

void sub_B9F0(uint64_t a1)
{
  sub_28EA4();
  if (v1 <= 0x3F)
  {
    sub_BABC(319);
    if (v2 <= 0x3F)
    {
      sub_BB50(319);
      if (v3 <= 0x3F)
      {
        sub_BBA8();
        if (v4 <= 0x3F)
        {
          sub_29994();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_BABC(uint64_t a1)
{
  if (!qword_3A150)
  {
    sub_29A94();
    sub_C318();
    v1 = sub_29414();
    if (!v2)
    {
      atomic_store(v1, &qword_3A150);
    }
  }
}

void sub_BB50(uint64_t a1)
{
  if (!qword_39428)
  {
    type metadata accessor for SashStandardView.AppIcon(255);
    v1 = sub_29894();
    if (!v2)
    {
      atomic_store(v1, &qword_39428);
    }
  }
}

void sub_BBA8()
{
  if (!qword_39430)
  {
    v0 = sub_29894();
    if (!v1)
    {
      atomic_store(v0, &qword_39430);
    }
  }
}

unint64_t sub_BBFC()
{
  result = qword_39470;
  if (!qword_39470)
  {
    sub_558C(&qword_393B8, &qword_2AE68);
    sub_558C(&qword_39368, &qword_2AE30);
    sub_A00C();
    swift_getOpaqueTypeConformance2();
    sub_C318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39470);
  }

  return result;
}

uint64_t sub_BCFC(uint64_t a1)
{
  result = sub_28F24();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

id sub_BD68(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_29B04();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_28BC4();

    swift_willThrow();
  }

  return v6;
}

void sub_BE70(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_29B04();

  [a3 *a4];
}

uint64_t sub_BEDC(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_29B14();

  return v3;
}

uint64_t *sub_BF4C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_BFAC()
{
  sub_C3F0();
  sub_51E0(v2, v3);
  sub_C3B0();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_C004()
{
  sub_C400();
  sub_51E0(v1, v2);
  sub_7B1C();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_C054@<X0>(uint64_t *a1@<X8>)
{
  result = sub_294F4();
  *a1 = result;
  return result;
}

uint64_t sub_C084()
{
  sub_C3F0();
  sub_51E0(&qword_39590, &qword_2AF60);
  sub_C3B0();
  (*(v2 + 16))(v0, v1);
  return v0;
}

unint64_t sub_C0E4()
{
  result = qword_395A0;
  if (!qword_395A0)
  {
    sub_558C(&qword_39590, &qword_2AF60);
    sub_C19C();
    sub_C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_395A0);
  }

  return result;
}

unint64_t sub_C19C()
{
  result = qword_395A8;
  if (!qword_395A8)
  {
    sub_558C(&qword_39598, &qword_2AF68);
    swift_getOpaqueTypeConformance2();
    sub_C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_395A8);
  }

  return result;
}

unint64_t sub_C26C()
{
  sub_C400();
  result = *v3;
  if (!result)
  {
    sub_558C(v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_C2B0()
{
  sub_C400();
  sub_51E0(&qword_39590, &qword_2AF60);
  sub_7B1C();
  (*(v1 + 8))(v0);
  return v0;
}

unint64_t sub_C318()
{
  sub_C400();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_C35C()
{
  sub_C400();
  v1(0);
  sub_7B1C();
  (*(v2 + 8))(v0);
  return v0;
}

Swift::Int sub_C440()
{
  sub_2A0B4();
  sub_2A0C4(0);
  return sub_2A0D4();
}

Swift::Int sub_C494(uint64_t a1)
{
  sub_2A0B4();
  sub_2A0C4(0);
  return sub_2A0D4();
}

uint64_t sub_C4E4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v231 = a3;
  v232 = a4;
  v6 = sub_29B44();
  __chkstk_darwin(v6 - 8);
  sub_E4A0();
  sub_E4E0(v7);
  v8 = sub_29224();
  __chkstk_darwin(v8 - 8);
  sub_E4A0();
  sub_E4E0(v9);
  v10 = sub_29074();
  v11 = sub_E4CC(v10, &v232);
  __chkstk_darwin(v11);
  sub_E4A0();
  sub_E4E0(v12);
  v209 = sub_28E24();
  sub_7AA0();
  v208 = v13;
  __chkstk_darwin(v14);
  sub_E4A0();
  v16 = sub_E4E0(v15);
  v17 = type metadata accessor for ContactImageSourceView(v16);
  v18 = sub_E4CC(v17, &v228);
  __chkstk_darwin(v18);
  sub_E4A0();
  v20 = sub_E4E0(v19);
  v21 = type metadata accessor for AppIconView(v20);
  v22 = sub_E4CC(v21, &v234);
  __chkstk_darwin(v22);
  sub_E4A0();
  v24 = sub_E4E0(v23);
  v25 = type metadata accessor for SashStandardView(v24);
  v26 = sub_E4CC(v25, &v235);
  __chkstk_darwin(v26);
  sub_E4A0();
  sub_E4E0(v27);
  v212 = sub_28F84();
  sub_7AA0();
  v211 = v28;
  __chkstk_darwin(v29);
  sub_E4A0();
  v31 = sub_E4E0(v30);
  v32 = type metadata accessor for MapsOverlayView(v31);
  v33 = sub_E4CC(v32, &v236);
  __chkstk_darwin(v33);
  sub_E4A0();
  sub_E4E0(v34);
  v218 = sub_29014();
  sub_7AA0();
  v215 = v35;
  v37 = __chkstk_darwin(v36);
  v216 = &v202 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = sub_E4E0(&v202 - v39);
  v41 = type metadata accessor for IntentsUIStandardView(v40);
  v42 = sub_E4CC(v41, &v238);
  __chkstk_darwin(v42);
  sub_E4A0();
  v44 = sub_E4E0(v43);
  v45 = type metadata accessor for CoreChartPluginView(v44);
  v46 = sub_E4CC(v45, &v239);
  __chkstk_darwin(v46);
  sub_E4A0();
  sub_E4E0(v47);
  sub_29044();
  sub_7AA0();
  v222 = v49;
  v223 = v48;
  __chkstk_darwin(v48);
  sub_E4A0();
  v224 = v50;
  v221 = type metadata accessor for MapsPlaceCardView(0);
  sub_C3B0();
  __chkstk_darwin(v51);
  sub_E4A0();
  sub_E4E0(v52);
  sub_290C4();
  sub_7AA0();
  v226 = v54;
  v227 = v53;
  __chkstk_darwin(v53);
  sub_E4A0();
  v228 = v55;
  v225 = type metadata accessor for ContactPickerButtonView(0);
  sub_C3B0();
  __chkstk_darwin(v56);
  v58 = &v202 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for ContactImageView(0);
  sub_C3B0();
  __chkstk_darwin(v60);
  v62 = &v202 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_28CD4();
  sub_7AA0();
  v229 = v64;
  v66 = *(v65 + 64);
  v68 = __chkstk_darwin(v67);
  __chkstk_darwin(v68);
  v70 = &v202 - v69;
  v203 = a1;
  v204 = a2;
  v72 = sub_29B74();
  v73 = v71;
  v74 = v72 == 0x6D69656C63726963 && v71 == 0xEB00000000656761;
  if (v74 || (sub_E4F0(0x6D69656C63726963, 0xEB00000000656761) & 1) != 0)
  {

    v75 = sub_E50C();
    sub_DACC(v75, v76);
    sub_E50C();
    v77 = v230;
    result = sub_28CE4();
    if (!v77)
    {
      *&v233 = CircleImageView.init(model:)(v70);
      *(&v233 + 1) = v79;
      *&v234 = v80;
      sub_DDC4();
      return sub_298A4();
    }

    return result;
  }

  if (v72 == 0x69746361746E6F63 && v73 == 0xEC0000006567616DLL)
  {

    v83 = v231;
LABEL_20:
    sub_DACC(v83, v232);
    v85 = v230;
    result = sub_28CE4();
    if (!v85)
    {
      sub_29A94();
      sub_E4B4();
      sub_DD7C(v86, v87, &protocol conformance descriptor for Context);
      *v62 = sub_29404();
      *(v62 + 1) = v88;
      v89 = *(v59 + 24);
      *&v62[v89] = swift_getKeyPath();
      sub_51E0(&qword_38FE0, &qword_2AB60);
      swift_storeEnumTagMultiPayload();
      v90 = v229;
      v91 = (*(v229 + 80) + 16) & ~*(v229 + 80);
      v92 = swift_allocObject();
      (*(v90 + 32))(v92 + v91, &v202 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0), v63);
      *(v62 + 2) = sub_DD1C;
      *(v62 + 3) = v92;
      v62[32] = 0;
      sub_DD7C(&qword_396E8, type metadata accessor for ContactImageView, &protocol conformance descriptor for ContactImageView);
      return sub_298A4();
    }

    return result;
  }

  v82 = sub_E4F0(0x69746361746E6F63, 0xEC0000006567616DLL);
  v83 = v231;
  if (v82 & 1) != 0 || (v72 == 0x6D6172676F6E6F6DLL ? (v84 = v73 == 0xED00006567616D69) : (v84 = 0), v84 || (sub_E4F0(0x6D6172676F6E6F6DLL, 0xED00006567616D69)))
  {

    goto LABEL_20;
  }

  sub_E524();
  v94 = v72 == 0xD000000000000013 && v93 == v73;
  if (v94 || (sub_E4F0(0xD000000000000013, v93) & 1) != 0)
  {

    sub_DACC(v83, v232);
    v95 = v228;
    v96 = v230;
    result = sub_290D4();
    if (!v96)
    {
      v97 = v225;
      v98 = &v58[*(v225 + 20)];
      sub_29A94();
      sub_E4B4();
      sub_DD7C(v99, v100, &protocol conformance descriptor for Context);
      *v98 = sub_29404();
      v98[1] = v101;
      v102 = &v58[*(v97 + 24)];
      v237 = 0;
      sub_29854();
      v103 = *(&v233 + 1);
      *v102 = v233;
      *(v102 + 1) = v103;
      (*(v226 + 32))(v58, v95, v227);
      sub_DD7C(&qword_396E0, type metadata accessor for ContactPickerButtonView, &protocol conformance descriptor for ContactPickerButtonView);
      return sub_298A4();
    }
  }

  else
  {
    v104 = v72 == 0x63616C707370616DLL && v73 == 0xED00006472616365;
    if (v104 || (sub_E4F0(0x63616C707370616DLL, 0xED00006472616365) & 1) != 0)
    {

      v105 = sub_E518();
      sub_DACC(v105, v106);
      sub_E518();
      v107 = v230;
      result = sub_29054();
      if (!v107)
      {
        v108 = sub_E50C();
        v109(v108);
        sub_DD7C(&qword_396D8, type metadata accessor for MapsPlaceCardView, &protocol conformance descriptor for MapsPlaceCardView);
        return sub_298A4();
      }
    }

    else
    {
      v110 = v72 == 0x7261686365726F63 && v73 == 0xE900000000000074;
      if (v110 || (sub_E4F0(0x7261686365726F63, 0xE900000000000074) & 1) != 0)
      {

        v111 = sub_E518();
        sub_DACC(v111, v112);
        sub_E518();
        sub_291A4();
        sub_DD7C(&qword_396D0, type metadata accessor for CoreChartPluginView, &protocol conformance descriptor for CoreChartPluginView);
        return sub_298A4();
      }

      sub_E524();
      v114 = v72 == 0xD000000000000011 && v113 == v73;
      if (v114 || (sub_E4F0(0xD000000000000011, v113) & 1) != 0)
      {

        v115 = v220;
        v116 = v219;
        v117 = (v219 + *(v220 + 20));
        v118 = sub_E518();
        sub_DACC(v118, v119);
        sub_29A94();
        sub_E4B4();
        sub_DD7C(v120, v121, &protocol conformance descriptor for Context);
        v122 = sub_29404();
        *v117 = v122;
        v117[1] = v123;
        v124 = *(v115 + 24);
        *(v116 + v124) = swift_getKeyPath();
        sub_51E0(&qword_38FE8, &unk_2C210);
        swift_storeEnumTagMultiPayload();
        v125 = *(v115 + 28);
        _s12SystemPlugin16SashStandardViewV14_actionHandler33_289897A7AC71DBD41716A1019D2705CFLL9SnippetUI06ActionG0Vvpfi_0();
        v126 = sub_E518();
        sub_DACC(v126, v127);
        sub_DD7C(&qword_396B0, &type metadata accessor for IntentsUIStandard, &protocol conformance descriptor for IntentsUIStandard);
        v128 = v217;
        sub_E518();
        v129 = v218;
        v130 = v230;
        sub_28FA4();
        if (!v130)
        {
          v134 = v215;
          (*(v215 + 32))(v116, v128, v129);
          v135 = v216;
          (*(v134 + 16))(v216, v116, v129);
          v136 = objc_allocWithZone(type metadata accessor for IntentsUIStandardViewModel(0));
          sub_1F30(v135, 0, 0);
          v137 = (v116 + *(v220 + 32));
          sub_DD7C(&qword_396C0, type metadata accessor for IntentsUIStandardViewModel, &unk_2AD08);
          sub_E50C();
          v138 = sub_29394();
          v140 = v139;
          v141 = sub_E518();
          sub_DB24(v141, v142);
          *v137 = v138;
          v137[1] = v140;
          sub_DD7C(&qword_396C8, type metadata accessor for IntentsUIStandardView, &protocol conformance descriptor for IntentsUIStandardView);
          return sub_298A4();
        }

        v131 = sub_E518();
        sub_DB24(v131, v132);

        sub_DC2C(v116 + v124);
        sub_29994();
        sub_C3B0();
        return (*(v133 + 8))(v116 + v125);
      }

      else
      {
        v143 = v72 == 0x6C7265766F70616DLL && v73 == 0xEA00000000007961;
        if (v143 || (sub_E4F0(0x6C7265766F70616DLL, 0xEA00000000007961) & 1) != 0)
        {

          v144 = sub_E50C();
          sub_DACC(v144, v145);
          sub_E50C();
          v146 = v230;
          result = sub_28F94();
          if (!v146)
          {
            v147 = v213;
            v148 = v210;
            v149 = (v210 + *(v213 + 24));
            sub_29A94();
            sub_E4B4();
            sub_DD7C(v150, v151, &protocol conformance descriptor for Context);
            *v149 = sub_29404();
            v149[1] = v152;
            v153 = v211;
            v154 = v214;
            v155 = v212;
            (*(v211 + 16))(v148, v214, v212);
            sub_28F64();
            v157 = v156;
            sub_28F74();
            v159 = v158;
            v160 = COERCE_DOUBLE(sub_28F34());
            if (v161)
            {
              v162 = 0.01;
            }

            else
            {
              v162 = v160;
            }

            v163 = sub_28F44();
            v165 = v164;
            (*(v153 + 8))(v154, v155);
            v166 = *&v163;
            if (v165)
            {
              v166 = 0.01;
            }

            v167 = v148 + *(v147 + 20);
            *v167 = v157;
            *(v167 + 8) = v159;
            *(v167 + 16) = v162;
            *(v167 + 24) = v166;
            *(v167 + 32) = 0;
            sub_DD7C(&qword_396A8, type metadata accessor for MapsOverlayView, &protocol conformance descriptor for MapsOverlayView);
            return sub_298A4();
          }
        }

        else
        {
          sub_E524();
          v169 = v72 == 0xD000000000000010 && v168 == v73;
          if (v169 || (sub_E4F0(0xD000000000000010, v168) & 1) != 0)
          {

            v170 = sub_E50C();
            sub_DACC(v170, v171);
            v172 = sub_E50C();
            v173 = v230;
            result = SashStandardView.init(modelData:)(v172, v174, v175);
            if (!v173)
            {
              sub_DD7C(&qword_396A0, type metadata accessor for SashStandardView, &protocol conformance descriptor for SashStandardView);
              return sub_298A4();
            }
          }

          else
          {
            v176 = v72 == 0x766E6F6369707061 && v73 == 0xEB00000000776569;
            if (v176 || (sub_E4F0(0x766E6F6369707061, 0xEB00000000776569) & 1) != 0)
            {

              v177 = sub_E50C();
              sub_DACC(v177, v178);
              sub_E50C();
              v179 = v230;
              result = AppIconView.init(modelData:)(v180);
              if (!v179)
              {
                sub_DD7C(&qword_395E0, type metadata accessor for AppIconView, &protocol conformance descriptor for AppIconView);
                return sub_298A4();
              }
            }

            else
            {
              sub_E524();
              v182 = v72 == 0xD000000000000016 && v181 == v73;
              if (!v182 && (sub_E4F0(0xD000000000000016, v181) & 1) == 0)
              {
                if (v72 == 0x6C6F686563616C70 && v73 == 0xEB00000000726564)
                {
                }

                else
                {
                  v190 = sub_E4F0(0x6C6F686563616C70, 0xEB00000000726564);

                  if ((v190 & 1) == 0)
                  {
                    if (qword_38FB0 != -1)
                    {
                      swift_once();
                    }

                    v191 = sub_29264();
                    sub_5BB4(v191, qword_3C140);

                    v192 = sub_29254();
                    v193 = sub_29D94();

                    if (os_log_type_enabled(v192, v193))
                    {
                      v194 = swift_slowAlloc();
                      v195 = swift_slowAlloc();
                      *&v233 = v195;
                      *v194 = 136446210;
                      *(v194 + 4) = sub_DA08(v203, v204, &v233);
                      _os_log_impl(&dword_0, v192, v193, "Unhandled view ID: %{public}s", v194, 0xCu);
                      sub_5FD0(v195);
                    }

                    sub_D960();
                    swift_allocError();
                    return swift_willThrow();
                  }
                }

                v196 = sub_E50C();
                sub_DACC(v196, v197);
                sub_29B34();
                sub_E50C();
                v198 = sub_29B24();
                if (v199)
                {
                  v200 = v198;
                  v201 = v199;
                  sub_DB24(v231, v232);
                }

                else
                {
                  sub_DB24(v231, v232);
                  v200 = 0;
                  v201 = 0xE000000000000000;
                }

                *&v233 = v200;
                *(&v233 + 1) = v201;
                sub_DB7C();
                return sub_298A4();
              }

              v235 = 0;
              v233 = 0u;
              v234 = 0u;
              v183 = sub_E50C();
              sub_DACC(v183, v184);
              sub_29214();
              sub_DD7C(&qword_39690, &type metadata accessor for _ProtoImageElement.Contact, &protocol conformance descriptor for _ProtoImageElement.Contact);
              sub_E50C();
              v185 = v230;
              result = sub_29234();
              if (!v185)
              {
                v186 = v206;
                sub_28DB4();
                KeyPath = swift_getKeyPath();
                v188 = v205;
                *v205 = KeyPath;
                *(v188 + 8) = 0;
                (*(v208 + 32))(v188 + *(v207 + 20), v186, v209);
                sub_DD7C(&qword_39698, type metadata accessor for ContactImageSourceView, "ў");
                return sub_298A4();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_D920@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D910();
  *a1 = result;
  return result;
}

unint64_t sub_D960()
{
  result = qword_39680;
  if (!qword_39680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39680);
  }

  return result;
}

uint64_t sub_D9B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29424();
  *a1 = result;
  return result;
}

unint64_t sub_DA08(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_DE18(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_DF18(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_5FD0(v11);
  return v7;
}

uint64_t sub_DACC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_DB24(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_DB7C()
{
  result = qword_39688;
  if (!qword_39688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39688);
  }

  return result;
}

uint64_t sub_DBD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29424();
  *a1 = result;
  return result;
}

uint64_t sub_DC2C(uint64_t a1)
{
  v2 = sub_51E0(&qword_396B8, &qword_2B0E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DC9C()
{
  sub_28CD4();
  sub_C3B0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_DD1C()
{
  v1 = *(sub_28CD4() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_17DB4(v2);
}

uint64_t sub_DD7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_DDC4()
{
  result = qword_396F0;
  if (!qword_396F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_396F0);
  }

  return result;
}

unint64_t sub_DE18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_DF74(a5, a6);
    *a1 = v9;
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
    result = sub_29F54();
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

uint64_t sub_DF18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_DF74(uint64_t a1, unint64_t a2)
{
  v3 = sub_DFC0(a1, a2);
  sub_E0D8(&off_35AD0);
  return v3;
}

char *sub_DFC0(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_29BD4())
  {
    result = sub_E1BC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_29F14();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_29F54();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_E0D8(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_E22C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_E1BC(uint64_t a1, uint64_t a2)
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

  sub_51E0(&qword_396F8, &qword_2B118);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_E22C(char *result, int64_t a2, char a3, char *a4)
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
    sub_51E0(&qword_396F8, &qword_2B118);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t getEnumTagSinglePayload for SystemPlugin.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SystemPlugin.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0xE410);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_E44C()
{
  result = qword_39700;
  if (!qword_39700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39700);
  }

  return result;
}

uint64_t sub_E4F0(uint64_t a1, uint64_t a2)
{

  return sub_2A034();
}

uint64_t sub_E530()
{
  type metadata accessor for ContactAvatarView.AvatarLoader(0);
  v0 = swift_allocObject();
  sub_10924();
  return v0;
}

uint64_t sub_E56C()
{
  v1 = sub_29574();
  sub_7AA0();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0 + *(type metadata accessor for ContactAvatarView(0) + 44);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_29DA4();
    v9 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123A8(v8, 0);
    (*(v3 + 8))(v6, v1);
    return v11[1];
  }

  return v8;
}

double sub_E6B4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContactAvatarView(0);
  sub_7AA0();
  v43 = v5;
  __chkstk_darwin(v6);
  v44 = v7;
  v45 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29824();
  sub_7AA0();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10B00(*(v1 + *(v4 + 28)));
  v42 = sub_295A4();
  v46 = 1;
  if (v14 || (type metadata accessor for ContactAvatarView.AvatarLoader(0), sub_12CDC(), sub_12094(v15, v16), sub_29344(), v17 = sub_EB70(), , v17))
  {
    (*(v10 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v8);

    v41 = sub_29844();

    (*(v10 + 8))(v13, v8);
    sub_EBE4();
    sub_EBE4();
    sub_298E4();
    sub_29364();
    v40 = v47;
    v39 = v48;
    v38 = v49;
    v37 = v50;
    v19 = v51;
    v18 = v52;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v38 = 0;
    v37 = 0;
    v19 = 0;
    v18 = 0;
  }

  v20 = v46;
  v21 = v45;
  sub_120D8(v2, v45);
  v22 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v14;
  sub_123C0(v21, v23 + v22);
  v24 = (a1 + *(sub_51E0(&qword_39A10, &qword_2B348) + 36));
  sub_29384();

  sub_29CF4();
  *v24 = &unk_2B340;
  v24[1] = v23;
  v25 = v41;
  *a1 = v42;
  *(a1 + 8) = 0;
  *(a1 + 16) = v20;
  v26 = v40;
  *(a1 + 24) = v25;
  *(a1 + 32) = v26;
  v27 = v38;
  *(a1 + 40) = v39;
  *(a1 + 48) = v27;
  *(a1 + 56) = v37;
  *(a1 + 64) = v19;
  *(a1 + 72) = v18;
  v28 = sub_FD80();
  v29 = (a1 + *(sub_51E0(&qword_39A18, &qword_2B350) + 36));
  v30 = *(sub_293D4() + 20);
  v31 = enum case for RoundedCornerStyle.continuous(_:);
  sub_29594();
  sub_C3B0();
  (*(v32 + 104))(v29 + v30, v31);
  *v29 = v28;
  v29[1] = v28;
  *(v29 + *(sub_51E0(&qword_39A20, &qword_2B358) + 36)) = 256;
  sub_EBE4();
  sub_EBE4();
  sub_298E4();
  sub_29364();

  v33 = (a1 + *(sub_51E0(&qword_39A28, &qword_2B360) + 36));
  v34 = v54;
  *v33 = v53;
  v33[1] = v34;
  result = v55[0];
  v33[2] = *v55;
  return result;
}

uint64_t sub_EB70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_292D4();

  return v1;
}

double sub_EBE4()
{
  v1 = sub_28D44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_29574();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContactImageSizeResolver(0);
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContactAvatarView(0);
  v11 = *(v10 + 20);
  v34 = v2;
  v12 = *(v2 + 16);
  v36 = v1;
  v12(v9, v0 + v11, v1);
  v39 = sub_E56C();
  v13 = v10;
  v14 = v0 + *(v10 + 48);
  v15 = *v14;
  v16 = *(v14 + 8);
  LODWORD(v14) = *(v14 + 9);
  v35 = v4;
  if (v14 == 1)
  {
    v37 = v15;
    v17 = v6;
  }

  else
  {

    sub_29DA4();
    v18 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123B4(v15, v16, 0);
    v17 = v6;
    (*(v4 + 8))(v6, v38);
    v37 = v40;
    LODWORD(v16) = v41;
  }

  v19 = v0 + *(v13 + 52);
  v20 = *v19;
  v21 = *(v19 + 8);
  if (*(v19 + 9) != 1)
  {

    sub_29DA4();
    v32 = v0;
    v22 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123B4(v20, v21, 0);
    (*(v35 + 8))(v17, v38);
    v20 = v40;
    LODWORD(v21) = v41;
  }

  sub_1DAA8();
  *&v9[v7[5]] = v39;
  v23 = &v9[v7[6]];
  v24 = *&v37;
  *v23 = v37;
  v23[8] = v16 & 1;
  v25 = &v9[v7[7]];
  *v25 = v20;
  v25[8] = v21 & 1;
  if ((v16 | v21))
  {
    v26 = v33;
    sub_16118(v33);
    v27 = objc_allocWithZone(sub_29A94());
    v28 = sub_29A74();
    sub_28D24();
    v30 = v29;

    (*(v34 + 8))(v26, v36);
  }

  else
  {
    v30 = v24;
  }

  sub_124F8(v9);
  return v30;
}

uint64_t sub_F008(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_293C4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_29574();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  sub_29CE4();
  v2[12] = sub_29CD4();
  v6 = sub_29CC4();
  v2[13] = v6;
  v2[14] = v5;

  return _swift_task_switch(sub_F164, v6, v5);
}

uint64_t sub_F164()
{
  if (*(v0 + 3))
  {

    sub_12D24();
    sub_12D9C(v1, v2, v3);

    __asm { BRAA            X1, X16 }
  }

  v6 = *(v0 + 4);
  v7 = type metadata accessor for ContactAvatarView(0);
  type metadata accessor for ContactAvatarView.AvatarLoader(0);
  sub_12CDC();
  sub_12094(v8, v9);
  *(v0 + 15) = sub_29344();
  v10 = sub_EBE4();
  v12 = v11;
  v13 = v6 + *(v7 + 40);
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    v15 = *v13;
  }

  else
  {
    v17 = *(v0 + 10);
    v16 = *(v0 + 11);
    v18 = *(v0 + 9);

    sub_29DA4();
    v19 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123A8(v14, 0);
    (*(v17 + 8))(v16, v18);
    v15 = v0[2];
  }

  v21 = *(v0 + 7);
  v20 = *(v0 + 8);
  v22 = *(v0 + 5);
  v23 = *(v0 + 6);
  sub_1DC3C(v20);
  (*(v23 + 104))(v21, enum case for LayoutDirection.rightToLeft(_:), v22);
  sub_293B4();
  v24 = *(v23 + 8);
  v24(v21, v22);
  v24(v20, v22);
  v25 = swift_task_alloc();
  *(v0 + 16) = v25;
  *v25 = v0;
  v25[1] = sub_F44C;
  sub_12D9C(v10, v12, v15);

  return sub_F5F8();
}

uint64_t sub_F44C()
{
  sub_12D30();
  v1 = *v0;
  v2 = *v0;
  sub_12CF4();
  *v3 = v2;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return _swift_task_switch(sub_F584, v5, v4);
}

uint64_t sub_F584()
{
  sub_12D5C();

  sub_12D24();

  return v0();
}

uint64_t sub_F5F8()
{
  sub_12D5C();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 112) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 40) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  *(v1 + 80) = *v0;
  sub_51E0(&unk_39A30, &qword_2B370);
  *(v1 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_F6F4, 0, 0);
}

uint64_t sub_F6F4(uint64_t a1)
{
  v2 = *(sub_28DC4() + 16);

  if (v2)
  {
    v3 = [objc_opt_self() scopeWithPointSize:*(v1 + 112) scale:0 rightToLeft:*(v1 + 40) style:{*(v1 + 48), *(v1 + 56)}];
    v4 = objc_opt_self();
    sub_28DC4();
    isa = sub_29C74().super.isa;

    v6 = [v4 predicateForContactsWithIdentifiers:isa];

    sub_51E0(&unk_3A270, &unk_2B378);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2B1D0;
    *(v7 + 32) = [objc_opt_self() descriptorForRequiredKeys];
    sub_12D90();
    v8 = swift_allocObject();
    if (qword_38F90 != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v9 = qword_39710;
      sub_51E0(&qword_39AA0, &qword_2B388);
      sub_12D78();
      v10 = sub_29C74().super.isa;

      *(v1 + 16) = 0;
      v11 = [v9 unifiedContactsMatchingPredicate:v6 keysToFetch:v10 error:v1 + 16];

      v12 = *(v1 + 16);
      v37 = v6;
      if (v11)
      {
        sub_12818();
        sub_12D78();
        v13 = sub_29C84();
        v14 = v12;
      }

      else
      {
        v19 = v12;
        sub_28BC4();

        swift_willThrow();

        v13 = &_swiftEmptyArrayStorage;
      }

      *(v8 + 16) = v13;
      v20 = sub_7A84(v13);
      v21 = *(sub_28DC4() + 16);

      if (v20 >= v21)
      {
LABEL_21:
        v28 = *(v1 + 80);
        v27 = *(v1 + 88);
        v30 = *(v1 + 64);
        v29 = *(v1 + 72);
        v31 = *(v1 + 32);
        sub_29CF4();
        v32 = sub_29D14();
        sub_53C4(v27, 0, 1, v32);
        v33 = swift_allocObject();
        v33[2] = 0;
        v33[3] = 0;
        v33[4] = v8;
        v33[5] = v3;
        v33[6] = v29;
        v33[7] = v30;
        v33[8] = v31;
        v33[9] = v28;

        swift_unknownObjectRetain();

        sub_1049C(0, 0, v27, &unk_2B3A0, v33);

        swift_unknownObjectRelease();
        sub_127B0(v27);

        sub_12D24();
        sub_12DC0();

        __asm { BRAA            X1, X16 }
      }

      v22 = *(sub_28DC4() + 16);

      v23 = sub_7A84(v13);
      v24 = v22 - v23;
      if (__OFSUB__(v22, v23))
      {
        break;
      }

      if (v24 < 1)
      {
        goto LABEL_26;
      }

      v25 = 1;
      v6 = &IntentsUIStandardViewModel;
      do
      {
        [objc_allocWithZone(CNContact) init];
        sub_29C64();
        if (*(&dword_10 + (*(v8 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v8 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_29CA4();
        }

        sub_29CB4();
        if (v24 == v25)
        {
          goto LABEL_21;
        }
      }

      while (!__OFADD__(v25++, 1));
      __break(1u);
LABEL_24:
      swift_once();
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  if (qword_38F98 != -1)
  {
    sub_12D04(&qword_38F98);
  }

  *(v1 + 96) = [objc_msgSend(qword_39718 "placeholderImageProvider")];
  swift_unknownObjectRelease();
  sub_29CE4();
  *(v1 + 104) = sub_29CD4();
  sub_29CC4();
  sub_12DC0();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_FC4C()
{
  sub_12D30();
  v1 = *(v0 + 96);

  v2 = v1;
  v3 = sub_29804();
  sub_101C8(v3);

  return _swift_task_switch(sub_FCF4, 0, 0);
}

uint64_t sub_FCF4()
{
  sub_12D5C();

  sub_12D24();

  return v1();
}

double sub_FD80()
{
  v1 = sub_28D44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_29574();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContactImageSizeResolver(0);
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContactAvatarView(0);
  v11 = v10[5];
  v36 = v2;
  v37 = v1;
  (*(v2 + 16))(v9, v0 + v11, v1);
  v12 = sub_E56C();
  v13 = v0 + v10[12];
  v14 = *v13;
  v15 = *(v13 + 8);
  LODWORD(v13) = *(v13 + 9);
  v33 = v6;
  v34 = v4;
  if (v13 != 1)
  {
    v39 = v15;

    sub_29DA4();
    v32 = v10;
    v16 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123B4(*&v14, v39, 0);
    v10 = v32;
    (*(v4 + 8))(v6, v38);
    v14 = v40;
    v15 = v41;
  }

  v39 = v15;
  v17 = v0 + v10[13];
  v18 = *v17;
  v19 = *(v17 + 8);
  if (*(v17 + 9) != 1)
  {

    sub_29DA4();
    v20 = sub_29684();
    v32 = v12;
    v21 = v20;
    sub_29244();

    v12 = v32;
    v22 = v33;
    sub_29564();
    swift_getAtKeyPath();
    sub_123B4(*&v18, v19, 0);
    (*(v34 + 8))(v22, v38);
    v18 = v40;
    LOBYTE(v19) = v41;
  }

  sub_1DAA8();
  *&v9[v7[5]] = v12;
  v23 = &v9[v7[6]];
  *v23 = v14;
  v24 = v39;
  v23[8] = v39 & 1;
  v25 = &v9[v7[7]];
  *v25 = v18;
  v25[8] = v19 & 1;
  if (v24 & 1) != 0 || (v19)
  {
    v26 = v35;
    sub_16118(v35);
    v27 = objc_allocWithZone(sub_29A94());
    v28 = sub_29A74();
    sub_28D14();
    v30 = v29;

    (*(v36 + 8))(v26, v37);
    sub_124F8(v9);
  }

  else
  {
    v30 = v18;
    sub_124F8(v9);
    if (v14 > v18)
    {
      return v14;
    }
  }

  return v30;
}

uint64_t sub_101C8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_292E4();
}

uint64_t sub_10238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return _swift_task_switch(sub_10264, 0, 0);
}

uint64_t sub_10264()
{
  sub_12D30();
  if (qword_38F98 != -1)
  {
    sub_12D04(&qword_38F98);
  }

  v1 = v0[6];
  v2 = qword_39718;
  swift_beginAccess();
  sub_12818();
  v3 = v2;

  isa = sub_29C74().super.isa;

  v5 = [v3 avatarImageForContacts:isa scope:v1];
  v0[10] = v5;

  v6 = v5;
  v0[11] = sub_29804();
  sub_29CE4();
  v0[12] = sub_29CD4();
  v8 = sub_29CC4();

  return _swift_task_switch(sub_103AC, v8, v7);
}

uint64_t sub_103AC()
{
  sub_12D30();
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  sub_101C8(v3);
  sub_10C48(v1, v2);

  return _swift_task_switch(sub_1043C, 0, 0);
}

uint64_t sub_1043C()
{
  sub_12D5C();

  sub_12D24();

  return v1();
}

uint64_t sub_1049C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_51E0(&unk_39A30, &qword_2B370);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_1288C(a3, v24 - v10);
  v12 = sub_29D14();
  v13 = sub_B89C(v11, 1, v12);

  if (v13 == 1)
  {
    sub_127B0(v11);
  }

  else
  {
    sub_29D04();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_29CC4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_29B84() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

id sub_10720()
{
  result = [objc_allocWithZone(CNContactStore) init];
  qword_39710 = result;
  return result;
}

id sub_10754()
{
  result = [objc_allocWithZone(CNAvatarImageRenderer) init];
  qword_39718 = result;
  return result;
}

uint64_t sub_10788()
{
  v1 = OBJC_IVAR____TtCV12SystemPlugin17ContactAvatarView12AvatarLoader__image;
  sub_51E0(&unk_398B0, &unk_2B2A0);
  sub_C3B0();
  (*(v2 + 8))(v0 + v1);
  swift_unknownObjectRelease();
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

void sub_10860(uint64_t a1)
{
  sub_1159C(319, qword_39BA0, &unk_39770, &qword_2B200, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10924()
{
  v1 = sub_51E0(&unk_398B0, &unk_2B2A0);
  sub_7AA0();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = v9 - v5;
  v7 = OBJC_IVAR____TtCV12SystemPlugin17ContactAvatarView12AvatarLoader__image;
  v9[1] = 0;
  sub_51E0(&unk_39770, &qword_2B200);
  sub_292B4();
  (*(v3 + 32))(v0 + v7, v6, v1);
  *(v0 + OBJC_IVAR____TtCV12SystemPlugin17ContactAvatarView12AvatarLoader_cnCancellable) = 0;
  return v0;
}

uint64_t sub_10A28@<X0>(uint64_t *a2@<X8>)
{
  result = sub_292A4();
  *a2 = result;
  return result;
}

uint64_t sub_10A78()
{
  type metadata accessor for ContactImageCache();
  sub_12D90();
  v0 = swift_allocObject();
  sub_51E0(&unk_399D0, &qword_2B318);
  swift_allocObject();
  result = sub_11694(6, 0, sub_16F8C, 0, 300.0);
  *(v0 + 16) = result;
  qword_3C138 = v0;
  return result;
}

uint64_t sub_10B00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_28C14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_11A30(a1);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  (*(v2 + 24))();
  v10 = sub_28BF4();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {

    return 0;
  }

  sub_11CE4(v9);
  v11 = v9[3];

  return v11;
}

uint64_t sub_10C48(uint64_t a1, uint64_t a2)
{
  v5 = sub_28C14();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  sub_11A30(a2);

  (*(v2 + 24))(v12);
  sub_28BE4();
  v13 = *(v6 + 8);
  v13(v9, v5);
  (*(v6 + 16))(v9, v11, v5);
  sub_51E0(&qword_399E0, &qword_2B328);
  swift_allocObject();
  v14 = sub_11DE4(a2, a1, v9);
  v15 = *(v2 + 64);
  if (v15 && (v16 = sub_1161C(), (*(v2 + 80) & 1) == 0) && v16 == *(v2 + 72))
  {
    v17 = *(v15 + 16);

    sub_11A30(v17);
  }

  else
  {
  }

  sub_11CE4(v14);

  return (v13)(v11, v5);
}

uint64_t sub_10E64()
{
  swift_beginAccess();
  sub_51E0(&unk_399F8, &qword_2B330);
  sub_29AD4(0);
  swift_endAccess();
  *(v0 + 56) = 0;

  *(v0 + 64) = 0;
}

uint64_t sub_10EE4()
{

  sub_12D90();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10F50(uint64_t a1, uint64_t a2, int *a3)
{
  sub_28DD4();
  sub_C40C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_6:

    return sub_B89C(v9, a2, v8);
  }

  sub_28D44();
  sub_C40C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_5:
    v9 = a1 + v12;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_51E0(&unk_39C40, &unk_2B4B0);
    sub_C40C();
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v12 = a3[8];
    }

    else
    {
      v8 = sub_51E0(&qword_398C0, &unk_2B2B0);
      v12 = a3[9];
    }

    goto LABEL_5;
  }

  v14 = *(a1 + a3[7]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_110C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_28DD4();
  sub_C40C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_28D44();
    sub_C40C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return;
      }

      sub_51E0(&unk_39C40, &unk_2B4B0);
      sub_C40C();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[8];
      }

      else
      {
        v10 = sub_51E0(&qword_398C0, &unk_2B2B0);
        v14 = a4[9];
      }
    }

    v11 = a1 + v14;
  }

  sub_53C4(v11, a2, a2, v10);
}

void sub_11248(uint64_t a1)
{
  sub_28DD4();
  if (v1 <= 0x3F)
  {
    sub_28D44();
    if (v2 <= 0x3F)
    {
      sub_11410(319);
      if (v3 <= 0x3F)
      {
        sub_114A4();
        if (v4 <= 0x3F)
        {
          sub_1159C(319, &unk_39CD0, &unk_39950, &unk_2B4C0, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_1154C(319, &unk_39CE0, &type metadata accessor for LayoutDirection);
            if (v6 <= 0x3F)
            {
              sub_114FC();
              if (v7 <= 0x3F)
              {
                sub_1154C(319, &unk_39CF0, type metadata accessor for VRXIdiom);
                if (v8 <= 0x3F)
                {
                  sub_1159C(319, qword_39970, &unk_39D00, &qword_2B2C0, &type metadata accessor for Environment);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for ContactImageCache();
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_11410(uint64_t a1)
{
  if (!qword_39930)
  {
    type metadata accessor for ContactAvatarView.AvatarLoader(255);
    sub_12094(&qword_39938, type metadata accessor for ContactAvatarView.AvatarLoader);
    v1 = sub_29354();
    if (!v2)
    {
      atomic_store(v1, &qword_39930);
    }
  }
}

void sub_114A4()
{
  if (!qword_39940)
  {
    v0 = sub_29D74();
    if (!v1)
    {
      atomic_store(v0, &qword_39940);
    }
  }
}

void sub_114FC()
{
  if (!qword_39960)
  {
    v0 = sub_29334();
    if (!v1)
    {
      atomic_store(v0, &qword_39960);
    }
  }
}

void sub_1154C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_12D78();
    v4 = sub_29334();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1159C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_558C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_11694(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v12 = sub_29DD4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_7A84(&_swiftEmptyArrayStorage))
  {
    v16 = sub_62E8(&_swiftEmptyArrayStorage);
  }

  else
  {
    v16 = &_swiftEmptySetSingleton;
  }

  *(v6 + 16) = v16;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 72) = a1;
  *(v6 + 80) = a2 & 1;

  sub_51E0(&unk_3A770, &qword_2B320);
  sub_51E0(&qword_399E0, &qword_2B328);
  sub_12C8C(&qword_399E8, &unk_3A770, &qword_2B320);
  *(v6 + 48) = sub_29AB4();
  v17 = [objc_opt_self() defaultCenter];
  sub_29DE4();

  sub_12094(&qword_399F0, &type metadata accessor for NSNotificationCenter.Publisher);

  sub_29304();

  (*(v13 + 8))(v15, v12);
  swift_beginAccess();
  sub_29284();
  swift_endAccess();

  return v6;
}

uint64_t sub_11940()
{
  result = sub_11654();
  if ((result & 1) == 0)
  {
    if (qword_38FB0 != -1)
    {
      swift_once();
    }

    v1 = sub_29264();
    sub_5BB4(v1, qword_3C140);
    v2 = sub_29254();
    v3 = sub_29D94();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "Received a memory limit warning. Emptying the LRU Cache.", v4, 2u);
    }

    return sub_10E64();
  }

  return result;
}

uint64_t sub_11A30(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_20014(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v1 + 48);
    v8 = *(v13 + 24);
    sub_51E0(&qword_39B10, &qword_2C1D0);
    sub_29FB4(isUniquelyReferenced_nonNull_native, v8);

    v9 = *(*(v13 + 56) + 8 * v6);
    sub_51E0(&unk_3A770, &qword_2B320);
    sub_51E0(&qword_399E0, &qword_2B328);
    sub_12C8C(&qword_399E8, &unk_3A770, &qword_2B320);
    sub_29FC4();
    *(v1 + 48) = v13;
    swift_endAccess();
    v10 = *(v1 + 64);
    if (v10 && v9 == v10)
    {
      *(v2 + 64) = swift_weakLoadStrong();
    }

    v11 = *(v2 + 56);
    if (v11 && v9 == v11)
    {
      *(v2 + 56) = swift_weakLoadStrong();
    }

    if (swift_weakLoadStrong())
    {
      swift_weakLoadStrong();
      swift_weakAssign();
    }

    if (swift_weakLoadStrong())
    {
      swift_weakLoadStrong();
      swift_weakAssign();
    }

    swift_weakAssign();
    swift_weakAssign();
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v9;
}

double sub_11CE4(void *a1)
{
  v3 = a1[2];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v1[6];
  sub_20260(a1, v3, isUniquelyReferenced_nonNull_native);
  v1[6] = v6;
  swift_endAccess();
  if (!v1[8])
  {
    v1[8] = a1;
  }

  if (v1[7])
  {
    swift_weakAssign();
    swift_weakAssign();
  }

  v1[7] = a1;

  return result;
}

char *sub_11DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  swift_weakInit();
  *(v3 + 2) = a1;
  *(v3 + 3) = a2;
  v7 = *(*v3 + 120);
  v8 = sub_28C14();
  (*(*(v8 - 8) + 32))(&v3[v7], a3, v8);
  return v3;
}

uint64_t sub_11EAC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_11FA4;

  return v6(a1);
}

uint64_t sub_11FA4()
{
  sub_12D5C();
  v1 = *v0;
  sub_12CF4();
  *v2 = v1;

  sub_12D24();

  return v3();
}

uint64_t sub_12094(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_12D78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_120D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAvatarView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1213C()
{
  v1 = type metadata accessor for ContactAvatarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  sub_28DD4();
  sub_C3B0();
  (*(v6 + 8))(v0 + v3);
  v7 = v1[5];
  v8 = sub_28D44();
  sub_C3B0();
  v10 = *(v9 + 8);
  v10(v0 + v3 + v7, v8);
  sub_123A0(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  v11 = v1[8];
  sub_51E0(&qword_38FE0, &qword_2AB60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!sub_B89C(v5 + v11, 1, v8))
    {
      v10(v5 + v11, v8);
    }
  }

  else
  {
  }

  v12 = v1[9];
  sub_51E0(&qword_39A08, &qword_2B550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_293C4();
    sub_C3B0();
    (*(v13 + 8))(v5 + v12);
  }

  else
  {
  }

  v14 = sub_12D84(v1[10]);
  sub_123A8(v14, *(v15 + 8));
  v16 = sub_12D84(v1[11]);
  sub_123A8(v16, *(v17 + 8));
  v18 = sub_12D84(v1[12]);
  sub_123B4(v18, *(v19 + 8), *(v19 + 9));
  v20 = sub_12D84(v1[13]);
  sub_123B4(v20, *(v21 + 8), *(v21 + 9));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_123A8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_123B4(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

uint64_t sub_123C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAvatarView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_12424()
{
  sub_12D30();
  v2 = *(type metadata accessor for ContactAvatarView(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_12CD4;

  return sub_F008(v4, v0 + v3);
}

uint64_t sub_124F8(uint64_t a1)
{
  v2 = type metadata accessor for ContactImageSizeResolver(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_12554()
{

  sub_12D90();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_12588()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_125E8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  v11 = sub_12D68(v10);
  *v11 = v12;
  v11[1] = sub_126CC;

  return sub_10238(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_126CC()
{
  sub_12D5C();
  v1 = *v0;
  sub_12CF4();
  *v2 = v1;

  sub_12D24();

  return v3();
}

uint64_t sub_127B0(uint64_t a1)
{
  v2 = sub_51E0(&unk_39A30, &qword_2B370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_12818()
{
  result = qword_3A280;
  if (!qword_3A280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3A280);
  }

  return result;
}

uint64_t sub_1285C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_EB70();
  *a1 = result;
  return result;
}

uint64_t sub_1288C(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&unk_39A30, &qword_2B370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_128FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_12934()
{
  sub_12D30();
  v0 = swift_task_alloc();
  v1 = sub_12D68(v0);
  *v1 = v2;
  v3 = sub_12D3C(v1);

  return v4(v3);
}

uint64_t sub_129C8()
{
  sub_12D30();
  v0 = swift_task_alloc();
  v1 = sub_12D68(v0);
  *v1 = v2;
  v3 = sub_12D3C(v1);

  return v4(v3);
}

unint64_t sub_12A60()
{
  result = qword_39B18;
  if (!qword_39B18)
  {
    sub_558C(&qword_39A28, &qword_2B360);
    sub_12AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39B18);
  }

  return result;
}

unint64_t sub_12AEC()
{
  result = qword_39B20;
  if (!qword_39B20)
  {
    sub_558C(&qword_39A18, &qword_2B350);
    sub_12BA4();
    sub_12C8C(&qword_39DC0, &qword_39A20, &qword_2B358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39B20);
  }

  return result;
}

unint64_t sub_12BA4()
{
  result = qword_39B28;
  if (!qword_39B28)
  {
    sub_558C(&qword_39A10, &qword_2B348);
    sub_12C8C(&qword_39B30, &qword_39B38, &unk_2B410);
    sub_12094(&unk_39B40, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39B28);
  }

  return result;
}

uint64_t sub_12C8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_558C(a2, a3);
    sub_12D78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_12D04(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_12DE4()
{
  type metadata accessor for ContactMonogramView.MonogramLoader(0);
  v0 = swift_allocObject();
  sub_14760();
  return v0;
}

uint64_t sub_12E20()
{
  sub_29574();
  sub_156F4();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(type metadata accessor for ContactMonogramView(0) + 44);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_29DA4();
    v9 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123A8(v8, 0);
    (*(v3 + 8))(v6, v0);
    return v11[1];
  }

  return v8;
}

uint64_t sub_12F68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContactMonogramView(0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29824();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_295A4();
  type metadata accessor for ContactMonogramView.MonogramLoader(0);
  sub_153FC(&qword_39CC0, type metadata accessor for ContactMonogramView.MonogramLoader, &unk_2B464);
  sub_29344();
  v10 = sub_13344();

  if (v10)
  {
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    v11 = sub_29844();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_133B8();
  v13 = (a1 + *(sub_51E0(&unk_39D50, &unk_2B520) + 36));
  v14 = *(sub_293D4() + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = sub_29594();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = v12;
  v13[1] = v12;
  *(v13 + *(sub_51E0(&qword_39A20, &qword_2B358) + 36)) = 256;
  *a1 = v25;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v11;
  sub_137D0();
  sub_137D0();
  sub_298E4();
  sub_29364();
  v17 = (a1 + *(sub_51E0(&qword_39D60, &qword_2B530) + 36));
  v18 = v29;
  *v17 = v28;
  v17[1] = v18;
  v17[2] = v30;
  v19 = v27;
  sub_14EDC(v2, v27);
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_151E8(v19, v21 + v20);
  v22 = (a1 + *(sub_51E0(&unk_39D70, &unk_2B560) + 36));
  sub_29384();
  result = sub_29CF4();
  *v22 = &unk_2B558;
  v22[1] = v21;
  return result;
}

uint64_t sub_13344()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_292D4();

  return v1;
}

double sub_133B8()
{
  v1 = sub_28D44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_29574();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContactImageSizeResolver(0);
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContactMonogramView(0);
  v11 = v10[5];
  v36 = v2;
  v37 = v1;
  (*(v2 + 16))(v9, v0 + v11, v1);
  v12 = sub_12E20();
  v13 = v0 + v10[12];
  v14 = *v13;
  v15 = *(v13 + 8);
  LODWORD(v13) = *(v13 + 9);
  v33 = v6;
  v34 = v4;
  if (v13 != 1)
  {
    v39 = v15;

    sub_29DA4();
    v32 = v10;
    v16 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123B4(*&v14, v39, 0);
    v10 = v32;
    (*(v4 + 8))(v6, v38);
    v14 = v40;
    v15 = v41;
  }

  v39 = v15;
  v17 = v0 + v10[13];
  v18 = *v17;
  v19 = *(v17 + 8);
  if (*(v17 + 9) != 1)
  {

    sub_29DA4();
    v20 = sub_29684();
    v32 = v12;
    v21 = v20;
    sub_29244();

    v12 = v32;
    v22 = v33;
    sub_29564();
    swift_getAtKeyPath();
    sub_123B4(*&v18, v19, 0);
    (*(v34 + 8))(v22, v38);
    v18 = v40;
    LOBYTE(v19) = v41;
  }

  sub_1DAA8();
  *&v9[v7[5]] = v12;
  v23 = &v9[v7[6]];
  *v23 = v14;
  v24 = v39;
  v23[8] = v39 & 1;
  v25 = &v9[v7[7]];
  *v25 = v18;
  v25[8] = v19 & 1;
  if (v24 & 1) != 0 || (v19)
  {
    v26 = v35;
    sub_16118(v35);
    v27 = objc_allocWithZone(sub_29A94());
    v28 = sub_29A74();
    sub_28D14();
    v30 = v29;

    (*(v36 + 8))(v26, v37);
    sub_124F8(v9);
  }

  else
  {
    v30 = v18;
    sub_124F8(v9);
    if (v14 > v18)
    {
      return v14;
    }
  }

  return v30;
}

double sub_137D0()
{
  v1 = sub_28D44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_29574();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContactImageSizeResolver(0);
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContactMonogramView(0);
  v11 = *(v10 + 20);
  v34 = v2;
  v12 = *(v2 + 16);
  v36 = v1;
  v12(v9, v0 + v11, v1);
  v39 = sub_12E20();
  v13 = v10;
  v14 = v0 + *(v10 + 48);
  v15 = *v14;
  v16 = *(v14 + 8);
  LODWORD(v14) = *(v14 + 9);
  v35 = v4;
  if (v14 == 1)
  {
    v37 = v15;
    v17 = v6;
  }

  else
  {

    sub_29DA4();
    v18 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123B4(v15, v16, 0);
    v17 = v6;
    (*(v4 + 8))(v6, v38);
    v37 = v40;
    LODWORD(v16) = v41;
  }

  v19 = v0 + *(v13 + 52);
  v20 = *v19;
  v21 = *(v19 + 8);
  if (*(v19 + 9) != 1)
  {

    sub_29DA4();
    v32 = v0;
    v22 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123B4(v20, v21, 0);
    (*(v35 + 8))(v17, v38);
    v20 = v40;
    LODWORD(v21) = v41;
  }

  sub_1DAA8();
  *&v9[v7[5]] = v39;
  v23 = &v9[v7[6]];
  v24 = *&v37;
  *v23 = v37;
  v23[8] = v16 & 1;
  v25 = &v9[v7[7]];
  *v25 = v20;
  v25[8] = v21 & 1;
  if ((v16 | v21))
  {
    v26 = v33;
    sub_16118(v33);
    v27 = objc_allocWithZone(sub_29A94());
    v28 = sub_29A74();
    sub_28D24();
    v30 = v29;

    (*(v34 + 8))(v26, v36);
  }

  else
  {
    v30 = v24;
  }

  sub_124F8(v9);
  return v30;
}

uint64_t sub_13BF4(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_293C4();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_29574();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  sub_29CE4();
  v1[11] = sub_29CD4();
  v5 = sub_29CC4();

  return _swift_task_switch(sub_13D50, v5, v4);
}

uint64_t sub_13D50()
{
  v1 = *(v0 + 3);

  v2 = type metadata accessor for ContactMonogramView(0);
  type metadata accessor for ContactMonogramView.MonogramLoader(0);
  sub_153FC(&qword_39CC0, type metadata accessor for ContactMonogramView.MonogramLoader, &unk_2B464);
  sub_29344();
  v3 = sub_137D0();
  v5 = v4;
  v6 = v1 + *(v2 + 40);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v8 = *v6;
  }

  else
  {
    v10 = *(v0 + 9);
    v9 = *(v0 + 10);
    v11 = *(v0 + 8);

    sub_29DA4();
    v12 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123A8(v7, 0);
    (*(v10 + 8))(v9, v11);
    v8 = v0[2];
  }

  v13 = *(v0 + 6);
  v14 = *(v0 + 7);
  v15 = *(v0 + 4);
  v16 = *(v0 + 5);
  v17 = *(v0 + 3);
  sub_1DC3C(v14);
  (*(v16 + 104))(v13, enum case for LayoutDirection.rightToLeft(_:), v15);
  v18 = sub_293B4();
  v19 = *(v16 + 8);
  v19(v13, v15);
  v19(v14, v15);
  sub_13FD0(v3, v5, v8, v17, v18 & 1);

  v20 = *(v0 + 1);

  return v20();
}

uint64_t sub_13FD0(double a1, double a2, double a3, uint64_t a4, char a5)
{
  v6 = v5;
  v7 = [objc_opt_self() scopeWithPointSize:a5 & 1 scale:0 rightToLeft:a1 style:{a2, a3}];
  if (qword_38FA8 != -1)
  {
    swift_once();
  }

  v8 = qword_39B50;
  sub_28E04();
  v9 = sub_29B04();

  v10 = swift_allocObject();
  swift_weakInit();
  v14[4] = sub_15350;
  v14[5] = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_17D3C;
  v14[3] = &unk_36180;
  v11 = _Block_copy(v14);

  v12 = [v8 renderMonogramForString:v9 scope:v7 imageHandler:v11];
  swift_unknownObjectRelease();
  _Block_release(v11);

  *(v6 + OBJC_IVAR____TtCV12SystemPlugin19ContactMonogramView14MonogramLoader_cnCancellable) = v12;
  return swift_unknownObjectRelease();
}

uint64_t sub_141D0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_292E4();
}

id sub_14240()
{
  result = [objc_allocWithZone(CNAvatarImageRenderer) init];
  qword_39B50 = result;
  return result;
}

uint64_t sub_14274(void *a1, uint64_t a2)
{
  v4 = sub_298F4();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29914();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15370();
  v10 = sub_29DB4();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_153F4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_5140;
  aBlock[3] = &unk_361D0;
  v12 = _Block_copy(aBlock);

  v13 = a1;

  sub_29904();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_153FC(&unk_39D80, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_51E0(&unk_39160, &qword_2AD50);
  sub_156A4(&qword_39D90, &unk_39160, &qword_2AD50, &protocol conformance descriptor for [A]);
  sub_29E54();
  sub_29DC4();
  _Block_release(v12);

  (*(v16 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v15);
}

uint64_t sub_14564(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = a2;
    v5 = sub_29804();
    sub_141D0(v5);
  }

  return result;
}

uint64_t sub_145C8()
{
  v1 = OBJC_IVAR____TtCV12SystemPlugin19ContactMonogramView14MonogramLoader__image;
  sub_51E0(&unk_398B0, &unk_2B2A0);
  sub_7B1C();
  (*(v2 + 8))(v0 + v1);
  swift_unknownObjectRelease();
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

void sub_1469C(uint64_t a1)
{
  sub_1159C(319, qword_39BA0, &unk_39770, &qword_2B200, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_14760()
{
  sub_51E0(&unk_398B0, &unk_2B2A0);
  sub_156F4();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = v9 - v5;
  v7 = OBJC_IVAR____TtCV12SystemPlugin19ContactMonogramView14MonogramLoader__image;
  v9[1] = 0;
  sub_51E0(&unk_39770, &qword_2B200);
  sub_292B4();
  (*(v3 + 32))(v1 + v7, v6, v0);
  *(v1 + OBJC_IVAR____TtCV12SystemPlugin19ContactMonogramView14MonogramLoader_cnCancellable) = 0;
  return v1;
}

uint64_t sub_14874(uint64_t a1, uint64_t a2, int *a3)
{
  sub_28E14();
  sub_C40C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_28D44();
    sub_C40C();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      if (a2 == 254)
      {
        v14 = *(a1 + a3[6] + 16);
        if (v14 > 1)
        {
          return (v14 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      sub_51E0(&qword_39C38, &qword_2B4A8);
      sub_C40C();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v12 = a3[7];
      }

      else
      {
        sub_51E0(&unk_39C40, &unk_2B4B0);
        sub_C40C();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v12 = a3[8];
        }

        else
        {
          v8 = sub_51E0(&qword_398C0, &unk_2B2B0);
          v12 = a3[9];
        }
      }
    }

    v9 = a1 + v12;
  }

  return sub_B89C(v9, a2, v8);
}

void sub_14A34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_28E14();
  sub_C40C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_28D44();
    sub_C40C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 254)
      {
        *(a1 + a4[6] + 16) = -a2;
        return;
      }

      sub_51E0(&qword_39C38, &qword_2B4A8);
      sub_C40C();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        sub_51E0(&unk_39C40, &unk_2B4B0);
        sub_C40C();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[8];
        }

        else
        {
          v10 = sub_51E0(&qword_398C0, &unk_2B2B0);
          v14 = a4[9];
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_53C4(v11, a2, a2, v10);
}

void sub_14C00(uint64_t a1)
{
  sub_28E14();
  if (v1 <= 0x3F)
  {
    sub_28D44();
    if (v2 <= 0x3F)
    {
      sub_14DD8(319);
      if (v3 <= 0x3F)
      {
        sub_14E6C(319, &qword_39CC8, &type metadata accessor for ColorScheme);
        if (v4 <= 0x3F)
        {
          sub_1159C(319, &unk_39CD0, &unk_39950, &unk_2B4C0, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_14E6C(319, &unk_39CE0, &type metadata accessor for LayoutDirection);
            if (v6 <= 0x3F)
            {
              sub_114FC();
              if (v7 <= 0x3F)
              {
                sub_14E6C(319, &unk_39CF0, type metadata accessor for VRXIdiom);
                if (v8 <= 0x3F)
                {
                  sub_1159C(319, qword_39970, &unk_39D00, &qword_2B2C0, &type metadata accessor for Environment);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_14DD8(uint64_t a1)
{
  if (!qword_39CB8)
  {
    type metadata accessor for ContactMonogramView.MonogramLoader(255);
    sub_153FC(&qword_39CC0, type metadata accessor for ContactMonogramView.MonogramLoader, &unk_2B464);
    v1 = sub_29354();
    if (!v2)
    {
      atomic_store(v1, &qword_39CB8);
    }
  }
}

void sub_14E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29334();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_14EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactMonogramView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14F40()
{
  v1 = type metadata accessor for ContactMonogramView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_28E14();
  sub_7B1C();
  (*(v6 + 8))(v0 + v3);
  v7 = v1[5];
  v8 = sub_28D44();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  sub_123A0(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v10 = v1[7];
  sub_51E0(&qword_39D68, &unk_2B540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_29324();
    sub_7B1C();
    (*(v11 + 8))(v5 + v10);
  }

  else
  {
  }

  v12 = v1[8];
  sub_51E0(&qword_38FE0, &qword_2AB60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!sub_B89C(v5 + v12, 1, v8))
    {
      v9(v5 + v12, v8);
    }
  }

  else
  {
  }

  v13 = v1[9];
  sub_51E0(&qword_39A08, &qword_2B550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_293C4();
    sub_7B1C();
    (*(v14 + 8))(v5 + v13);
  }

  else
  {
  }

  v15 = sub_12D84(v1[10]);
  sub_123A8(v15, *(v16 + 8));
  v17 = sub_12D84(v1[11]);
  sub_123A8(v17, *(v18 + 8));
  v19 = sub_12D84(v1[12]);
  sub_123B4(v19, *(v20 + 8), *(v20 + 9));
  v21 = sub_12D84(v1[13]);
  sub_123B4(v21, *(v22 + 8), *(v22 + 9));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_151E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactMonogramView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1524C()
{
  v2 = *(type metadata accessor for ContactMonogramView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_A57C;

  return sub_13BF4(v0 + v3);
}

uint64_t sub_15318()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_15358(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_15370()
{
  result = qword_39150;
  if (!qword_39150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_39150);
  }

  return result;
}

uint64_t sub_153B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_153FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_15444@<X0>(uint64_t *a1@<X8>)
{
  result = sub_13344();
  *a1 = result;
  return result;
}

unint64_t sub_15478()
{
  result = qword_39D98;
  if (!qword_39D98)
  {
    sub_558C(&unk_39D70, &unk_2B560);
    sub_15534();
    sub_153FC(&unk_39B40, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39D98);
  }

  return result;
}

unint64_t sub_15534()
{
  result = qword_39DA0;
  if (!qword_39DA0)
  {
    sub_558C(&qword_39D60, &qword_2B530);
    sub_155C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39DA0);
  }

  return result;
}

unint64_t sub_155C0()
{
  result = qword_39DA8;
  if (!qword_39DA8)
  {
    sub_558C(&unk_39D50, &unk_2B520);
    sub_156A4(&qword_39DB0, &qword_39DB8, &qword_2B5B8, &protocol conformance descriptor for VStack<A>);
    sub_156A4(&qword_39DC0, &qword_39A20, &qword_2B358, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39DA8);
  }

  return result;
}

uint64_t sub_156A4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_558C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double ContactImageSizeResolver.imageSize.getter()
{
  v2 = sub_28D44();
  sub_7AA0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_16B7C();
  v8 = v7 - v6;
  type metadata accessor for ContactImageSizeResolver(0);
  sub_16BC0();
  if ((v10 & 1) == 0 && (*(v0 + *(v1 + 28) + 8) & 1) == 0)
  {
    return *v9;
  }

  sub_16118(v8);
  v11 = objc_allocWithZone(sub_29A94());
  v12 = sub_16BD4();
  sub_28D24();
  v14 = v13;

  (*(v4 + 8))(v8, v2);
  return v14;
}

double ContactImageSizeResolver.cornerRadius.getter()
{
  v2 = sub_28D44();
  sub_7AA0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_16B7C();
  v8 = v7 - v6;
  type metadata accessor for ContactImageSizeResolver(0);
  sub_16BC0();
  if (v10 & 1) != 0 || (v11 = (v0 + *(v1 + 28)), (v11[8]))
  {
    sub_16118(v8);
    v12 = objc_allocWithZone(sub_29A94());
    v13 = sub_16BD4();
    sub_28D14();
    v15 = v14;

    (*(v4 + 8))(v8, v2);
  }

  else if (*v9 <= *v11)
  {
    return *v11;
  }

  else
  {
    return *v9;
  }

  return v15;
}

uint64_t sub_15974@<X0>(uint64_t *a1@<X8>)
{
  v81 = a1;
  v1 = type metadata accessor for ContactMonogramView(0);
  __chkstk_darwin(v1);
  sub_16B7C();
  v4 = v3 - v2;
  sub_28E14();
  sub_7AA0();
  v79 = v6;
  v80 = v5;
  __chkstk_darwin(v5);
  sub_16B7C();
  v77 = v8 - v7;
  sub_28D44();
  sub_7AA0();
  v74 = v10;
  v75 = v9;
  __chkstk_darwin(v9);
  sub_16B7C();
  v78 = v12 - v11;
  v13 = type metadata accessor for ContactAvatarView(0);
  __chkstk_darwin(v13);
  sub_16B7C();
  v16 = v15 - v14;
  sub_28DD4();
  sub_7AA0();
  v72 = v18;
  v73 = v17;
  v19 = __chkstk_darwin(v17);
  v71 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v76 = &v70 - v21;
  sub_28DE4();
  sub_7AA0();
  __chkstk_darwin(v22);
  sub_16B7C();
  v25 = v24 - v23;
  type metadata accessor for ContactImageSourceView(0);
  sub_28DF4();
  v26 = sub_16BB4();
  v28 = v27(v26);
  if (v28 == enum case for ImageElement.Contact.Content.monogram(_:))
  {
    v29 = sub_16BB4();
    v30(v29);
    v32 = v79;
    v31 = v80;
    v33 = v77;
    (*(v79 + 32))(v77, v25, v80);
    (*(v32 + 16))(v4, v33, v31);
    sub_28DA4();
    v34 = v4 + v1[6];
    *v34 = sub_12DE4;
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    v35 = v1[7];
    *(v4 + v35) = swift_getKeyPath();
    v36 = sub_51E0(&qword_39D68, &unk_2B540);
    sub_16B8C(v36);
    v37 = v1[8];
    *(v4 + v37) = swift_getKeyPath();
    v38 = sub_51E0(&qword_38FE0, &qword_2AB60);
    sub_16B8C(v38);
    v39 = v1[9];
    *(v4 + v39) = swift_getKeyPath();
    v40 = sub_51E0(&qword_39A08, &qword_2B550);
    sub_16B8C(v40);
    KeyPath = swift_getKeyPath();
    sub_16BA8(KeyPath);
    v42 = swift_getKeyPath();
    sub_16BA8(v42);
    v43 = v4 + v1[12];
    *v43 = swift_getKeyPath();
    *(v43 + 8) = 0;
    v44 = v4 + v1[13];
    *v44 = swift_getKeyPath();
    *(v44 + 8) = 0;
    sub_16B28(&qword_39F08, type metadata accessor for ContactMonogramView, &unk_2B4D0);
    v45 = sub_298A4();
    result = (*(v32 + 8))(v33, v31);
LABEL_7:
    *v81 = v45;
    return result;
  }

  v47 = v81;
  if (v28 == enum case for ImageElement.Contact.Content.avatar(_:))
  {
    v48 = sub_16BB4();
    v49(v48);
    v50 = v72;
    v51 = v73;
    v52 = v76;
    (*(v72 + 32))(v76, v25, v73);
    v53 = v71;
    v80 = *(v50 + 16);
    v80(v71, v52, v51);
    sub_28DA4();
    if (qword_38FA0 != -1)
    {
      swift_once();
    }

    v54 = qword_3C138;
    v55 = v16 + v13[6];
    *v55 = sub_E530;
    *(v55 + 8) = 0;
    *(v55 + 16) = 0;
    v56 = v13[8];
    *(v16 + v56) = swift_getKeyPath();
    sub_51E0(&qword_38FE0, &qword_2AB60);
    swift_storeEnumTagMultiPayload();
    v57 = v13[9];
    *(v16 + v57) = swift_getKeyPath();
    sub_51E0(&qword_39A08, &qword_2B550);
    swift_storeEnumTagMultiPayload();
    v58 = swift_getKeyPath();
    sub_16BA8(v58);
    v59 = swift_getKeyPath();
    sub_16BA8(v59);
    v60 = v16 + v13[12];
    *v60 = swift_getKeyPath();
    *(v60 + 8) = 0;
    v61 = v16 + v13[13];
    *v61 = swift_getKeyPath();
    *(v61 + 8) = 0;
    v80(v16, v53, v51);
    v63 = v74;
    v62 = v75;
    v64 = v78;
    (*(v74 + 16))(v16 + v13[5], v78, v75);

    v65 = sub_28DC4();
    v66 = sub_38EC(v65);
    (*(v63 + 8))(v64, v62);
    v67 = *(v50 + 8);
    v67(v53, v51);
    *(v16 + v13[7]) = v66;
    *(v16 + v13[14]) = v54;
    sub_16B28(&qword_39F10, type metadata accessor for ContactAvatarView, &unk_2B2C8);
    v45 = sub_298A4();
    result = (v67)(v76, v51);
    goto LABEL_7;
  }

  *v47 = sub_298A4();
  v68 = sub_16BB4();
  return v69(v68);
}

uint64_t sub_16118@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_51E0(&unk_39950, &unk_2B4C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_28D44();
  sub_7AA0();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_16B7C();
  v13 = v12 - v11;
  v14 = *(v9 + 104);
  v14(v12 - v11, enum case for ImageElement.ImageStyle.default(_:), v7);
  v15 = sub_28D34();
  (*(v9 + 8))(v13, v7);
  if ((v15 & 1) == 0)
  {
    return (*(v9 + 16))(a1, v2, v7);
  }

  v16 = type metadata accessor for ContactImageSizeResolver(0);
  sub_165CC(v2 + *(v16 + 32), v6);
  if (sub_B89C(v6, 1, v7) != 1)
  {
    return (*(v9 + 32))(a1, v6, v7);
  }

  v14(a1, enum case for ImageElement.ImageStyle.contactImage5(_:), v7);
  result = sub_B89C(v6, 1, v7);
  if (result != 1)
  {
    return sub_1663C(v6);
  }

  return result;
}

uint64_t sub_1632C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_28D44();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_51E0(&unk_39950, &unk_2B4C0);
    v8 = a1 + *(a3 + 32);
  }

  return sub_B89C(v8, a2, v7);
}

uint64_t sub_163E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_28D44();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_51E0(&unk_39950, &unk_2B4C0);
    v10 = a1 + *(a4 + 32);
  }

  return sub_53C4(v10, a2, a2, v9);
}

void sub_16498(uint64_t a1)
{
  sub_28D44();
  if (v1 <= 0x3F)
  {
    type metadata accessor for VRXIdiom(319);
    if (v2 <= 0x3F)
    {
      sub_1657C();
      if (v3 <= 0x3F)
      {
        sub_1689C(319, &unk_39E38, &type metadata accessor for ImageElement.ImageStyle, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1657C()
{
  if (!qword_39E30)
  {
    v0 = sub_29E34();
    if (!v1)
    {
      atomic_store(v0, &qword_39E30);
    }
  }
}

uint64_t sub_165CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&unk_39950, &unk_2B4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1663C(uint64_t a1)
{
  v2 = sub_51E0(&unk_39950, &unk_2B4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_166B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_28E24();
    v9 = a1 + *(a3 + 20);

    return sub_B89C(v9, a2, v8);
  }
}

uint64_t sub_1674C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_28E24();
    v8 = v5 + *(a4 + 20);

    return sub_53C4(v8, a2, a2, v7);
  }

  return result;
}

void sub_167E8(uint64_t a1)
{
  sub_1689C(319, &unk_39CF0, type metadata accessor for VRXIdiom, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_28E24();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1689C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_16970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  sub_7AA0();
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_16AF0@<X0>(uint64_t a1@<X8>)
{
  result = sub_29464();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_16B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_16B8C(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_16BA8(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_16BD4()
{

  return sub_29A74();
}

uint64_t sub_16BF4()
{
  v0 = sub_29264();
  sub_16CBC(v0, qword_3C140);
  v1 = sub_5BB4(v0, qword_3C140);
  if (qword_38FC0 != -1)
  {
    swift_once();
  }

  v2 = sub_5BB4(v0, qword_3C158);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_16CBC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_16D20()
{
  sub_16E0C();
  result = sub_29E24();
  qword_39F18 = result;
  return result;
}

uint64_t sub_16D80()
{
  v0 = sub_29264();
  sub_16CBC(v0, qword_3C158);
  sub_5BB4(v0, qword_3C158);
  if (qword_38FB8 != -1)
  {
    swift_once();
  }

  v1 = qword_39F18;
  return sub_29274();
}

unint64_t sub_16E0C()
{
  result = qword_39F20[0];
  if (!qword_39F20[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_39F20);
  }

  return result;
}

uint64_t sub_16ECC()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for LRUCache.Entry(0, v1[10], v1[11], v1[12]);

  v2 = sub_29AC4();

  return v2;
}

void *sub_16F90()
{

  return v0;
}

uint64_t sub_16FD0()
{
  sub_16F90();

  return _swift_deallocClassInstance(v0, 81, 7);
}

uint64_t sub_17020(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_28C14();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_17138()
{
  v1 = *v0;
  if (*(v0 + 56))
  {
    v2 = v1[10];
    v3 = v1[11];
    v4 = v1[12];
    type metadata accessor for LRUCache.Entry(0, v2, v3, v4);
    swift_getWitnessTable();
    sub_29C44();
    v5 = swift_allocObject();
    v5[2] = v2;
    v5[3] = v3;
    v5[4] = v4;
    sub_29F34();
    swift_getWitnessTable();
    sub_2A004();

    sub_29FA4();
    swift_getWitnessTable();
    sub_179D0();
    v6 = sub_29C54();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v17._countAndFlagsBits = v6;
    v17._object = v8;
    sub_29BC4(v17);

    v18._countAndFlagsBits = 23818;
    v18._object = 0xE200000000000000;
    sub_29BC4(v18);
    v10 = 0xE400000000000000;
    v11 = 538970715;
  }

  else
  {

    v10 = 0xE200000000000000;
    v11 = 23899;
  }

  sub_29F24(40);
  v12 = sub_2A0E4();

  v16 = v12;
  v19._countAndFlagsBits = 0x7469636170616328;
  v19._object = 0xEB00000000203A79;
  sub_29BC4(v19);
  if (*(v0 + 80))
  {
    object = 0xE300000000000000;
    v14._countAndFlagsBits = 7104878;
  }

  else
  {
    sub_17A24();
    v14._countAndFlagsBits = sub_29E44();
    object = v14._object;
  }

  v14._object = object;
  sub_29BC4(v14);

  v20._countAndFlagsBits = 0x3A746E756F63202CLL;
  v20._object = 0xE900000000000020;
  sub_29BC4(v20);
  sub_16ECC();
  v21._countAndFlagsBits = sub_2A014();
  sub_29BC4(v21);

  v22._countAndFlagsBits = 0x656972746E65202CLL;
  v22._object = 0xEB00000000203A73;
  sub_29BC4(v22);
  v23._countAndFlagsBits = v11;
  v23._object = v10;
  sub_29BC4(v23);

  v24._countAndFlagsBits = 41;
  v24._object = 0xE100000000000000;
  sub_29BC4(v24);
  return v16;
}

uint64_t sub_174FC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for LRUCache.Entry(0, a2, a3, a4);

  swift_getWitnessTable();
  result = sub_29B64();
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t sub_1759C()
{
  sub_2A024();
  v1._countAndFlagsBits = 8250;
  v1._object = 0xE200000000000000;
  sub_29BC4(v1);
  sub_2A024();
  return 0;
}

uint64_t sub_1765C(void *a1)
{
  v2 = *v1;

  sub_176B4(v1);
  return v2;
}

uint64_t sub_176B4(uint64_t *a1)
{
  if (*a1)
  {
    Strong = swift_weakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  *a1 = Strong;
}

uint64_t sub_17718@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1765C(a1);
  *a2 = result;
  return result;
}

uint64_t *sub_17740()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 112));
  v2 = *(*v0 + 120);
  v3 = sub_28C14();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_weakDestroy();
  swift_weakDestroy();
  return v0;
}

uint64_t sub_17890()
{
  v0 = sub_17740();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1793C@<X0>(void *a1@<X8>)
{
  sub_17654();
  v3 = v2;

  *a1 = v3;
  return result;
}

unint64_t sub_179D0()
{
  result = qword_3A028;
  if (!qword_3A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A028);
  }

  return result;
}

unint64_t sub_17A24()
{
  result = qword_3A030[0];
  if (!qword_3A030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3A030);
  }

  return result;
}

uint64_t sub_17AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_17AFC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_17B50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t ContactImageView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29A94();
  sub_18244(&qword_3A0D0, &type metadata accessor for Context);
  *a2 = sub_29404();
  *(a2 + 8) = v4;
  v5 = *(type metadata accessor for ContactImageView(0) + 24);
  *(a2 + v5) = swift_getKeyPath();
  sub_51E0(&qword_38FE0, &qword_2AB60);
  swift_storeEnumTagMultiPayload();
  v6 = sub_28CD4();
  sub_7AA0();
  v8 = v7;
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  result = (*(v8 + 32))(v10 + v9, a1, v6);
  *(a2 + 16) = sub_DD1C;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  return result;
}

void sub_17D3C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_17DB4(uint64_t a1)
{
  sub_28CD4();
  sub_7AA0();
  __chkstk_darwin(v2);
  sub_16B7C();
  v5 = v4 - v3;
  (*(v6 + 16))(v4 - v3, a1);
  type metadata accessor for ContactImageView.ContactImageLoader(0);
  v7 = swift_allocObject();
  sub_194BC(v5);
  return v7;
}

uint64_t sub_17E7C()
{
  sub_28CD4();
  sub_C3B0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t ContactImageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContactImageView(0);
  v33 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v34 = v5;
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29824();
  sub_7AA0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_16B7C();
  v12 = v11 - v10;
  v32 = sub_295A4();
  v36 = 1;
  type metadata accessor for ContactImageView.ContactImageLoader(0);
  sub_19F90();
  sub_18244(v13, v14);
  sub_29344();
  v15 = sub_18288();

  if (v15)
  {
    (*(v8 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v6);
    v31 = sub_29844();

    (*(v8 + 8))(v12, v6);
    sub_182FC();
    sub_182FC();
    sub_298E4();
    sub_29364();
    v29 = v38;
    v30 = v37;
    v16 = v39;
    v17 = v40;
    v19 = v41;
    v18 = v42;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v29 = 0;
    v16 = 0;
    v17 = 0;
    v19 = 0;
    v18 = 0;
  }

  v20 = v36;
  v21 = (a1 + *(sub_51E0(&qword_39A10, &qword_2B348) + 36));
  sub_29384();
  sub_29CF4();
  v22 = v35;
  sub_186AC(v2, v35);
  v23 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v24 = swift_allocObject();
  result = sub_18858(v22, v24 + v23);
  *v21 = &unk_2B9E8;
  v21[1] = v24;
  v26 = v31;
  *a1 = v32;
  *(a1 + 8) = 0;
  *(a1 + 16) = v20;
  v27 = v29;
  v28 = v30;
  *(a1 + 24) = v26;
  *(a1 + 32) = v28;
  *(a1 + 40) = v27;
  *(a1 + 48) = v16;
  *(a1 + 56) = v17;
  *(a1 + 64) = v19;
  *(a1 + 72) = v18;
  return result;
}

uint64_t sub_18244(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_12D78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18288()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_292D4();

  return v1;
}

uint64_t sub_182FC()
{
  v1 = sub_51E0(&unk_39950, &unk_2B4C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_28D44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContactImageView(0);
  sub_1DAA8();
  if (sub_B89C(v3, 1, v4) == 1)
  {
    (*(v5 + 104))(v7, enum case for ImageElement.ImageStyle.default(_:), v4);
    if (sub_B89C(v3, 1, v4) != 1)
    {
      sub_1663C(v3);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
  }

  if (*v0)
  {
    v8 = *v0;
    sub_28D24();

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_29A94();
    sub_18244(&qword_3A0D0, &type metadata accessor for Context);
    result = sub_293F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1853C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_29CE4();
  *(v1 + 24) = sub_29CD4();
  v3 = sub_29CC4();

  return _swift_task_switch(sub_185D4, v3, v2);
}

uint64_t sub_185D4()
{

  type metadata accessor for ContactImageView.ContactImageLoader(0);
  sub_19F90();
  sub_18244(v1, v2);
  sub_29344();
  sub_182FC();
  sub_189A4(v3, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_186AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactImageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18710()
{
  v1 = (type metadata accessor for ContactImageView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  sub_123A0(*(v5 + 16), *(v5 + 24));
  v6 = v1[8];
  sub_51E0(&qword_38FE0, &qword_2AB60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_28D44();
    if (!sub_B89C(v5 + v6, 1, v7))
    {
      (*(*(v7 - 8) + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_18858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactImageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_188BC()
{
  v2 = *(type metadata accessor for ContactImageView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_A57C;

  return sub_1853C(v0 + v3);
}

uint64_t sub_189A4(double a1, double a2)
{
  v3 = v2;
  v6 = sub_28CD4();
  sub_7AA0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_16B7C();
  v12 = v11 - v10;
  v13 = objc_opt_self();
  v14 = sub_19668();
  v15 = [v13 scopeWithPointSize:sub_196C8() scale:0 rightToLeft:a1 style:{a2, v14}];
  (*(v8 + 16))(v12, v2 + OBJC_IVAR____TtCV12SystemPlugin16ContactImageView18ContactImageLoader_model, v6);
  v16 = sub_19FA8();
  v18 = v17(v16);
  if (v18 == enum case for ContactImage.letters(_:))
  {
    v19 = sub_19FA8();
    v20(v19);
    if (qword_38FD0 != -1)
    {
      sub_19F24(&qword_38FD0);
    }

    v21 = qword_3A0C8;
    v22 = sub_29B04();

    v23 = swift_allocObject();
    swift_weakInit();
    v62 = sub_19E34;
    v63 = v23;
    sub_19F5C();
    sub_19F44(COERCE_DOUBLE(1107296256));
    v60 = v24;
    v61 = &unk_36488;
    v25 = _Block_copy(aBlock);

    v26 = [v21 renderMonogramForString:v22 scope:v15 imageHandler:v25];
    swift_unknownObjectRelease();
    _Block_release(v25);

LABEL_5:
    *(v3 + OBJC_IVAR____TtCV12SystemPlugin16ContactImageView18ContactImageLoader_cnCancellable) = v26;
    return swift_unknownObjectRelease();
  }

  if (v18 == enum case for ContactImage.contacts(_:))
  {
    v27 = sub_19FA8();
    v28(v27);
    v29 = objc_opt_self();
    isa = sub_29C74().super.isa;

    v31 = [v29 predicateForContactsWithIdentifiers:isa];

    sub_51E0(&unk_3A270, &unk_2B378);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_2B1D0;
    *(v32 + 32) = [objc_opt_self() descriptorForRequiredKeys];
    if (qword_38FC8 != -1)
    {
      swift_once();
    }

    v33 = qword_3A0C0;
    sub_51E0(&qword_39AA0, &qword_2B388);
    sub_12D78();
    v34 = sub_29C74().super.isa;

    aBlock[0] = 0;
    v35 = [v33 unifiedContactsMatchingPredicate:v31 keysToFetch:v34 error:aBlock];

    v36 = aBlock[0];
    if (v35)
    {
      sub_62A0(0, &qword_3A280, CNContact_ptr);
      sub_12D78();
      v37 = sub_29C84();
      v38 = sub_7A84(v37);
      v39 = v36;

      if (v38)
      {
        if (qword_38FD0 != -1)
        {
          sub_19F24(&qword_38FD0);
        }

        v40 = qword_3A0C8;
        v41 = swift_allocObject();
        swift_weakInit();
        v62 = sub_19DDC;
        v63 = v41;
        sub_19F5C();
        sub_19F44(COERCE_DOUBLE(1107296256));
        v60 = v42;
        v61 = &unk_36460;
        v43 = _Block_copy(aBlock);
        v44 = v40;

        v26 = [v44 renderAvatarsForContacts:v35 scope:v15 imageHandler:v43];
        swift_unknownObjectRelease();

        _Block_release(v43);
        goto LABEL_5;
      }
    }

    else
    {
      v52 = aBlock[0];
      sub_28BC4();

      swift_willThrow();
    }

    v53 = sub_19724(a1, a2);
    sub_1944C(v53);

    return swift_unknownObjectRelease();
  }

  if (v18 == enum case for ContactImage.visual(_:))
  {
    if (qword_38FB0 != -1)
    {
      sub_19F7C();
      swift_once();
    }

    v54 = sub_29264();
    sub_5BB4(v54, qword_3C140);
    v55 = sub_29254();
    v56 = sub_29DA4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      aBlock[0] = v58;
      *v57 = 136446210;
      *(v57 + 4) = sub_DA08(0xD00000000000003ELL, 0x800000000002E370, aBlock);
      _os_log_impl(&dword_0, v55, v56, "%{public}s", v57, 0xCu);
      sub_5FD0(v58);
    }

    result = sub_29FD4();
    __break(1u);
  }

  else
  {
    if (qword_38FB0 != -1)
    {
      sub_19F7C();
      swift_once();
    }

    v45 = sub_29264();
    sub_5BB4(v45, qword_3C140);
    v46 = sub_29254();
    v47 = sub_29D94();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_0, v46, v47, "Unknown ContactImage model type", v48, 2u);
    }

    swift_unknownObjectRelease();
    v49 = sub_19FA8();
    return v50(v49);
  }

  return result;
}

uint64_t sub_19184(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_51E0(&unk_39C40, &unk_2B4B0);
    v10 = a1 + *(a3 + 24);

    return sub_B89C(v10, a2, v9);
  }
}

void *sub_19238(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_51E0(&unk_39C40, &unk_2B4B0);
    v8 = v5 + *(a4 + 24);

    return sub_53C4(v8, a2, a2, v7);
  }

  return result;
}

void sub_192C4(uint64_t a1)
{
  sub_BABC(319);
  if (v1 <= 0x3F)
  {
    sub_1938C(319);
    if (v2 <= 0x3F)
    {
      sub_19D3C(319, &unk_39CD0, &unk_39950, &unk_2B4C0, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1938C(uint64_t a1)
{
  if (!qword_3A158)
  {
    type metadata accessor for ContactImageView.ContactImageLoader(255);
    sub_18244(&qword_3A0E0, type metadata accessor for ContactImageView.ContactImageLoader);
    v1 = sub_29354();
    if (!v2)
    {
      atomic_store(v1, &qword_3A158);
    }
  }
}

uint64_t sub_1944C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_292E4();
}

uint64_t sub_194BC(uint64_t a1)
{
  v3 = sub_51E0(&unk_398B0, &unk_2B2A0);
  sub_7AA0();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtCV12SystemPlugin16ContactImageView18ContactImageLoader__image;
  v13[1] = 0;
  sub_51E0(&unk_39770, &qword_2B200);
  sub_292B4();
  (*(v5 + 32))(v1 + v9, v8, v3);
  *(v1 + OBJC_IVAR____TtCV12SystemPlugin16ContactImageView18ContactImageLoader_cnCancellable) = 0;
  v10 = OBJC_IVAR____TtCV12SystemPlugin16ContactImageView18ContactImageLoader_model;
  sub_28CD4();
  sub_C3B0();
  (*(v11 + 32))(v1 + v10, a1);
  return v1;
}

id sub_19600()
{
  result = [objc_allocWithZone(CNContactStore) init];
  qword_3A0C0 = result;
  return result;
}

id sub_19634()
{
  result = [objc_allocWithZone(CNAvatarImageRenderer) init];
  qword_3A0C8 = result;
  return result;
}

double sub_19668()
{
  v0 = [objc_opt_self() currentTraitCollection];
  [v0 displayScale];
  v2 = v1;

  return v2;
}

BOOL sub_196C8()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 layoutDirection];

  return v1 == &dword_0 + 1;
}