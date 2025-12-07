id sub_100001960()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void type metadata accessor for PRPosterAdaptiveTimeMode()
{
  if (!qword_100020178)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100020178);
    }
  }
}

uint64_t sub_100001AF4@<X0>(uint64_t *a1@<X8>)
{
  sub_10001092C();
  swift_allocObject();
  sub_10001093C();
  sub_1000108FC();
  swift_allocObject();

  sub_10001090C();
  sub_100001FDC(&qword_100020260, qword_100011F78);
  sub_10001041C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100011ED0;
  sub_100002024(&qword_100020268, &type metadata accessor for PRRenderingConfiguration, &protocol conformance descriptor for PRRenderingConfiguration);

  sub_10001040C();
  sub_100002024(&qword_100020270, &type metadata accessor for PREditingConfiguration, &protocol conformance descriptor for PREditingConfiguration);

  sub_10001040C();

  *a1 = v2;
  return result;
}

id sub_100001D50(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_100001D94()
{
  [objc_allocWithZone(type metadata accessor for CollectionsPosterUpdateDelegate()) init];
  sub_100001FDC(&qword_100020250, qword_100011EE0);
  swift_allocObject();
  sub_10001091C();
  sub_1000020A0(&qword_100020258, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_1000107EC();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001EF8();
  sub_1000020A0(&qword_100020248, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_1000107CC();
  return 0;
}

unint64_t sub_100001EF8()
{
  result = qword_100020240;
  if (!qword_100020240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020240);
  }

  return result;
}

uint64_t sub_100001F4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001FDC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000020A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100001F4C(&qword_100020250, qword_100011EE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100002154(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEditingEnvironment_posterKitEditingEnvironment) targetConfiguration];
  isa = sub_10001094C().super.isa;
  v7 = 0;
  v4 = [v2 storeUserInfo:isa error:&v7];

  if (v4)
  {
    return v7;
  }

  v6 = v7;
  sub_10001038C();

  return swift_willThrow();
}

id sub_10000225C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEditingEnvironment_posterKitEditingEnvironment) context];
  if (v1)
  {
    v2 = type metadata accessor for CollectionsPosterEnvironmentContext();
    v3 = objc_allocWithZone(v2);
    *&v3[OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEnvironmentContext_posterKitEnvironmentContext] = v1;
    v6.receiver = v3;
    v6.super_class = v2;
    v4 = v1;
    v1 = objc_msgSendSuper2(&v6, "init");

    sub_100002664(&qword_100020318, 255, type metadata accessor for CollectionsPosterEnvironmentContext, &unk_1000121D4);
  }

  return v1;
}

uint64_t sub_10000233C()
{
  v2 = [*(v0 + OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEditingEnvironment_posterKitEditingEnvironment) sourceContents];
  v8 = 0;
  v3 = [v2 loadUserInfoWithError:&v8];
  swift_unknownObjectRelease();
  v4 = v8;
  if (v3)
  {
    v1 = sub_10001095C();
    v5 = v4;
  }

  else
  {
    v6 = v8;
    sub_10001038C();

    swift_willThrow();
  }

  return v1;
}

void sub_100002448()
{
  v1 = [*(v0 + OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEditingEnvironment_posterKitEditingEnvironment) targetConfiguration];
  v2 = [v1 assetDirectory];

  sub_1000103CC();
}

id sub_100002500()
{
  result = [*(v0 + OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEditingEnvironment_posterKitEditingEnvironment) traitCollection];
  if (result)
  {
    v2 = result;
    v3 = [result userInterfaceStyle];

    return v3;
  }

  return result;
}

void sub_100002578()
{
  v1 = [objc_msgSend(*(v0 + OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEditingEnvironment_posterKitEditingEnvironment) "sourceContents")];
  swift_unknownObjectRelease();
  sub_1000103CC();
}

uint64_t sub_100002664(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_1000027F0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC17CollectionsPoster37CollectionsPosterRenderingEnvironment_posterKitRenderingEnvironment) context];
  if (v1)
  {
    v2 = type metadata accessor for CollectionsPosterEnvironmentContext();
    v3 = objc_allocWithZone(v2);
    *&v3[OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEnvironmentContext_posterKitEnvironmentContext] = v1;
    v6.receiver = v3;
    v6.super_class = v2;
    v4 = v1;
    v1 = objc_msgSendSuper2(&v6, "init");

    sub_100002C0C(&qword_100020318, 255, type metadata accessor for CollectionsPosterEnvironmentContext, &unk_1000121D4);
  }

  return v1;
}

uint64_t sub_1000028D0()
{
  v2 = [*(v0 + OBJC_IVAR____TtC17CollectionsPoster37CollectionsPosterRenderingEnvironment_posterKitRenderingEnvironment) contents];
  v8 = 0;
  v3 = [v2 loadUserInfoWithError:&v8];
  swift_unknownObjectRelease();
  v4 = v8;
  if (v3)
  {
    v1 = sub_10001095C();
    v5 = v4;
  }

  else
  {
    v6 = v8;
    sub_10001038C();

    swift_willThrow();
  }

  return v1;
}

id sub_100002AA8()
{
  result = [*(v0 + OBJC_IVAR____TtC17CollectionsPoster37CollectionsPosterRenderingEnvironment_posterKitRenderingEnvironment) traitCollection];
  if (result)
  {
    v2 = result;
    v3 = [result userInterfaceStyle];

    return v3;
  }

  return result;
}

void sub_100002B20()
{
  v1 = [objc_msgSend(*(v0 + OBJC_IVAR____TtC17CollectionsPoster37CollectionsPosterRenderingEnvironment_posterKitRenderingEnvironment) "contents")];
  swift_unknownObjectRelease();
  sub_1000103CC();
}

uint64_t sub_100002C0C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_100002D10()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderer] = 0;
  v2 = OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_environmentSnapshot;
  v3 = sub_1000105BC();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderingEnvironment] = 0;
  *&v0[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_wallpaperPosterRenderController] = 0;
  v4 = qword_100020068;
  v5 = v0;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_1000108CC();
  sub_100004CC4(v6, qword_100020D20);
  v7 = v5;
  v8 = sub_1000108AC();
  v9 = sub_100010A8C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v10 = 136446466;
    swift_getObjectType();

    v11 = sub_100010C2C();
    v13 = sub_10000EF40(v11, v12, &v16);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_10000EF40(0x292874696E69, 0xE600000000000000, &v16);
    _os_log_impl(&_mh_execute_header, v8, v9, "Start (%{public}s.%{public}s)…", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v17.receiver = v7;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, "init");
  sub_100002F68(v14);

  return v14;
}

void sub_100002F68(void *a1)
{
  if (qword_100020068 != -1)
  {
    swift_once();
  }

  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D20);
  v3 = a1;
  oslog = sub_1000108AC();
  v4 = sub_100010A8C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    swift_getObjectType();
    v6 = sub_100010C2C();
    v8 = sub_10000EF40(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10000EF40(0x292874696E69, 0xE600000000000000, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%{public}s.%{public}s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t type metadata accessor for CollectionsPosterRenderDelegate(uint64_t a1)
{
  result = qword_1000204B0;
  if (!qword_1000204B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000031E8(uint64_t a1)
{
  sub_100003288(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100003288(uint64_t a1)
{
  if (!qword_1000204C0)
  {
    sub_1000105BC();
    v1 = sub_100010ACC();
    if (!v2)
    {
      atomic_store(v1, &qword_1000204C0);
    }
  }
}

uint64_t sub_1000032E0(void *a1, void *a2)
{
  v18 = a2;
  v19 = a1;
  v2 = sub_10001081C();
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001084C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020078 != -1)
  {
    swift_once();
  }

  v9 = sub_100004CC4(v5, qword_100020D50);
  (*(v6 + 16))(v8, v9, v5);
  sub_10001080C();
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = sub_10001083C();
  v12 = sub_100010AAC();
  v13 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v13, "CollectionsPosterRenderDelegate.Initialize", "", v10, 2u);
  sub_100003570(v17, v18, v19);
  v14 = sub_100010A9C();
  v15 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v14, v15, "CollectionsPosterRenderDelegate.Initialize", "", v10, 2u);

  (*(v20 + 8))(v4, v21);
  return (*(v6 + 8))(v8, v5);
}

void sub_100003570(void *a1, void *a2, void *a3)
{
  v6 = sub_100001FDC(&qword_100020528, &qword_100012278);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  if (qword_100020068 != -1)
  {
    swift_once();
  }

  v45 = v9;
  v12 = sub_1000108CC();
  sub_100004CC4(v12, qword_100020D20);
  swift_unknownObjectRetain_n();
  v13 = a1;
  v14 = sub_1000108AC();
  v15 = sub_100010A8C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43[0] = v41;
    *v16 = 136447234;
    swift_getObjectType();
    v17 = sub_100010C2C();
    v19 = sub_10000EF40(v17, v18, v43);

    *(v16 + 4) = v19;
    v42 = a3;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_10000EF40(0xD00000000000001ELL, 0x80000001000129A0, v43);
    *(v16 + 22) = 1026;
    LODWORD(v19) = [a2 isPreview];
    swift_unknownObjectRelease();
    *(v16 + 24) = v19;
    swift_unknownObjectRelease();
    *(v16 + 28) = 1026;
    LODWORD(v19) = [a2 isSnapshot];
    swift_unknownObjectRelease();
    *(v16 + 30) = v19;
    swift_unknownObjectRelease();
    *(v16 + 34) = 2082;
    [a2 deviceOrientation];
    v20 = WKStringForInterfaceOrientation();
    v21 = sub_10001097C();
    v23 = v22;

    v24 = sub_10000EF40(v21, v23, v43);
    a3 = v42;

    *(v16 + 36) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Start (%{public}s.%{public}s); isPreview: '%{BOOL,public}d', isSnapshot: '%{BOOL,public}d', orientation: '%{public}s'…", v16, 0x2Cu);
    swift_arrayDestroy();
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  v25 = *&v13[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderer];
  *&v13[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderer] = a3;

  v26 = type metadata accessor for CollectionsPosterRenderingEnvironment();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR____TtC17CollectionsPoster37CollectionsPosterRenderingEnvironment_posterKitRenderingEnvironment] = a2;
  v44.receiver = v27;
  v44.super_class = v26;
  swift_unknownObjectRetain();
  v28 = a3;
  v29 = objc_msgSendSuper2(&v44, "init");
  v30 = OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderingEnvironment;
  v31 = *&v13[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderingEnvironment];
  *&v13[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderingEnvironment] = v29;
  v32 = v29;

  v33 = sub_100004CFC();
  sub_100004E9C(v33, 0, v11);
  v34 = sub_1000105BC();
  v35 = *(v34 - 8);
  (*(v35 + 56))(v11, 0, 1, v34);
  v36 = OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_environmentSnapshot;
  swift_beginAccess();
  sub_100004D54(v11, &v13[v36]);
  swift_endAccess();
  sub_10001070C();
  swift_allocObject();
  v37 = v28;
  *&v13[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_wallpaperPosterRenderController] = sub_1000106DC();

  v38 = *&v13[v30];
  if (v38)
  {
    v39 = v45;
    sub_100004DC4(&v13[v36], v45);
    if ((*(v35 + 48))(v39, 1, v34) != 1)
    {
      v40 = v38;
      sub_1000106EC();

      (*(v35 + 8))(v39, v34);
      sub_100003A64(v13);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100003A64(void *a1)
{
  if (qword_100020068 != -1)
  {
    swift_once();
  }

  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D20);
  v3 = a1;
  oslog = sub_1000108AC();
  v4 = sub_100010A8C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    swift_getObjectType();
    v6 = sub_100010C2C();
    v8 = sub_10000EF40(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10000EF40(0xD00000000000001ELL, 0x80000001000129A0, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%{public}s.%{public}s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100003C88(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v21 = a1;
  v22 = a3;
  v3 = sub_10001081C();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001084C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020078 != -1)
  {
    swift_once();
  }

  v10 = sub_100004CC4(v6, qword_100020D50);
  (*(v7 + 16))(v9, v10, v6);
  sub_10001080C();
  v11 = swift_slowAlloc();
  *v11 = 0;
  v12 = sub_10001083C();
  v13 = sub_100010AAC();
  v14 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v14, "CollectionsPosterRenderDelegate.Update", "", v11, 2u);
  sub_100003F18(v20, v19, v22, v21);
  v15 = sub_100010A9C();
  v16 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v15, v16, "CollectionsPosterRenderDelegate.Update", "", v11, 2u);

  (*(v23 + 8))(v5, v24);
  return (*(v7 + 8))(v9, v6);
}

void sub_100003F18(void *a1, void *a2, void *a3, uint64_t a4)
{
  v42 = a4;
  v46 = a3;
  v6 = sub_100001FDC(&qword_100020528, &qword_100012278);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v12 = sub_1000108CC();
  sub_100004CC4(v12, qword_100020D08);
  swift_unknownObjectRetain_n();
  v13 = a1;
  v14 = sub_1000108AC();
  v15 = sub_100010A8C();

  v16 = os_log_type_enabled(v14, v15);
  v43 = v9;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44[0] = v41;
    *v17 = 136447234;
    swift_getObjectType();
    v18 = sub_100010C2C();
    v20 = sub_10000EF40(v18, v19, v44);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_10000EF40(0xD00000000000001BLL, 0x8000000100012950, v44);
    *(v17 + 22) = 1026;
    LODWORD(v20) = [a2 isPreview];
    swift_unknownObjectRelease();
    *(v17 + 24) = v20;
    swift_unknownObjectRelease();
    *(v17 + 28) = 1026;
    LODWORD(v20) = [a2 isSnapshot];
    swift_unknownObjectRelease();
    *(v17 + 30) = v20;
    swift_unknownObjectRelease();
    *(v17 + 34) = 2082;
    [a2 deviceOrientation];
    v21 = WKStringForInterfaceOrientation();
    v22 = sub_10001097C();
    v24 = v23;

    v25 = sub_10000EF40(v22, v24, v44);

    *(v17 + 36) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "Start (%{public}s.%{public}s); isPreview: '%{BOOL,public}d', isSnapshot: '%{BOOL,public}d', orientation: '%{public}s'…", v17, 0x2Cu);
    swift_arrayDestroy();
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  v26 = type metadata accessor for CollectionsPosterRenderingEnvironment();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR____TtC17CollectionsPoster37CollectionsPosterRenderingEnvironment_posterKitRenderingEnvironment] = a2;
  v45.receiver = v27;
  v45.super_class = v26;
  swift_unknownObjectRetain();
  v28 = objc_msgSendSuper2(&v45, "init");
  v29 = OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderingEnvironment;
  v30 = *&v13[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderingEnvironment];
  *&v13[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderingEnvironment] = v28;
  v31 = v28;

  v32 = sub_100004CFC();
  sub_100004E9C(v32, [v46 animationSettings], v11);
  v33 = sub_1000105BC();
  v34 = *(v33 - 8);
  (*(v34 + 56))(v11, 0, 1, v33);
  v35 = OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_environmentSnapshot;
  swift_beginAccess();
  sub_100004D54(v11, &v13[v35]);
  swift_endAccess();
  if (!*&v13[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_wallpaperPosterRenderController])
  {
    __break(1u);
    goto LABEL_11;
  }

  v36 = *&v13[v29];
  if (!v36)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v37 = v43;
  sub_100004DC4(&v13[v35], v43);
  if ((*(v34 + 48))(v37, 1, v33) != 1)
  {

    v38 = v36;
    v39 = [v46 animationSettings];
    sub_1000106FC();

    (*(v34 + 8))(v37, v33);
    sub_1000043F4(v13);
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_1000043F4(void *a1)
{
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D08);
  v3 = a1;
  oslog = sub_1000108AC();
  v4 = sub_100010A8C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    swift_getObjectType();
    v6 = sub_100010C2C();
    v8 = sub_10000EF40(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10000EF40(0xD00000000000001BLL, 0x8000000100012950, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%{public}s.%{public}s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100004634(uint64_t a1)
{
  v2 = sub_10001081C();
  v18 = *(v2 - 8);
  v19 = v2;
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001084C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020078 != -1)
  {
    swift_once();
  }

  v9 = sub_100004CC4(v5, qword_100020D50);
  (*(v6 + 16))(v8, v9, v5);
  sub_10001080C();
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = sub_10001083C();
  v12 = sub_100010AAC();
  v13 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v13, "CollectionsPosterRenderDelegate.Invalidate", "", v10, 2u);
  sub_1000048C4(v17, a1);
  v14 = sub_100010A9C();
  v15 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v14, v15, "CollectionsPosterRenderDelegate.Invalidate", "", v10, 2u);

  (*(v18 + 8))(v4, v19);
  return (*(v6 + 8))(v8, v5);
}

void sub_1000048C4(void *a1, uint64_t a2)
{
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v3 = sub_1000108CC();
  sub_100004CC4(v3, qword_100020D08);
  v4 = a1;
  v5 = sub_1000108AC();
  v6 = sub_100010A8C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v7 = 136446466;
    swift_getObjectType();
    v8 = sub_100010C2C();
    v10 = sub_10000EF40(v8, v9, &v12);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_10000EF40(0xD000000000000019, 0x8000000100012900, &v12);
    _os_log_impl(&_mh_execute_header, v5, v6, "Start (%{public}s.%{public}s)…", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (*&v4[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_wallpaperPosterRenderController])
  {

    sub_1000106CC();

    v11 = *&v4[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderer];
    *&v4[OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterRenderDelegate_renderer] = 0;

    sub_100004AB8(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_100004AB8(void *a1)
{
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D08);
  v3 = a1;
  oslog = sub_1000108AC();
  v4 = sub_100010A8C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    swift_getObjectType();
    v6 = sub_100010C2C();
    v8 = sub_10000EF40(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10000EF40(0xD000000000000019, 0x8000000100012900, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%{public}s.%{public}s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100004CC4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100004CFC()
{
  result = qword_100020530;
  if (!qword_100020530)
  {
    type metadata accessor for CollectionsPosterRenderingEnvironment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020530);
  }

  return result;
}

uint64_t sub_100004D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&qword_100020528, &qword_100012278);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&qword_100020528, &qword_100012278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004E34(uint64_t a1)
{
  v2 = sub_100001FDC(&qword_100020528, &qword_100012278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100004E9C(uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v16[3] = a4;
  v6 = sub_1000104FC();
  __chkstk_darwin(v6 - 8);
  v16[1] = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001045C();
  __chkstk_darwin(v8 - 8);
  v16[2] = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001059C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = sub_10000B070(a3);
  (*(v11 + 104))(v13, enum case for WKPosterEnvironmentSnapshot.PosterEnvironmentMode.rendering(_:), v10);
  ObjectType = swift_getObjectType();
  sub_1000105EC();
  sub_1000105CC();
  sub_100005128(a3, ObjectType, *(a2 + 8));

  v15 = v16[0];
  sub_10001049C();
  sub_1000104AC();
  sub_1000105DC();
  sub_1000105AC();
  swift_unknownObjectRelease();
}

uint64_t sub_100005128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 == 0;
  if (sub_1000104BC())
  {
    swift_getObjectType();
    if (sub_10001058C())
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_10001057C();
    }

    swift_unknownObjectRelease();
  }

  return v3 & 1;
}

void sub_1000051A4(uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a2;
  v17 = a4;
  v5 = sub_1000104FC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10001045C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10001059C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3;
  v11 = sub_10000B070(a3);
  (*(v8 + 104))(v10, enum case for WKPosterEnvironmentSnapshot.PosterEnvironmentMode.editing(_:), v7);
  sub_10001044C();
  sub_1000104EC();
  ObjectType = swift_getObjectType();
  sub_100005128(a3, ObjectType, *(v16 + 8));

  v13 = v11;
  sub_10001049C();
  sub_1000104AC();
  sub_1000105AC();

  swift_unknownObjectRelease();
}

id sub_10000540C()
{
  v1 = OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterUpdateDelegate_wallpaperRepresentingCollectionsManager;
  sub_1000107BC();
  swift_allocObject();
  v2 = v0;
  *&v0[v1] = sub_1000107AC();
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v3 = sub_1000108CC();
  sub_100004CC4(v3, qword_100020D08);
  v4 = v2;
  v5 = sub_1000108AC();
  v6 = sub_100010A8C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136446466;
    swift_getObjectType();

    v8 = sub_100010C2C();
    v10 = sub_10000EF40(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_10000EF40(0x292874696E69, 0xE600000000000000, &v14);
    _os_log_impl(&_mh_execute_header, v5, v6, "Start (%{public}s.%{public}s)…", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  updated = type metadata accessor for CollectionsPosterUpdateDelegate();
  v15.receiver = v4;
  v15.super_class = updated;
  v12 = objc_msgSendSuper2(&v15, "init");
  sub_10000561C(v12);

  return v12;
}

void sub_10000561C(void *a1)
{
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D08);
  v3 = a1;
  oslog = sub_1000108AC();
  v4 = sub_100010A8C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    swift_getObjectType();
    v6 = sub_100010C2C();
    v8 = sub_10000EF40(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10000EF40(0x292874696E69, 0xE600000000000000, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%{public}s.%{public}s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000057DC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000103DC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = sub_100001FDC(&qword_1000205D8, &qword_100012320);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v54 - v13;
  v58[0] = 0;
  v15 = [a1 loadUserInfoWithError:v58];
  v16 = v58[0];
  if (!v15)
  {
    v38 = v58[0];
    sub_10001038C();

    swift_willThrow();
    if (qword_100020060 != -1)
    {
      swift_once();
    }

    v39 = sub_1000108CC();
    sub_100004CC4(v39, qword_100020D08);
    v40 = a1;
    swift_errorRetain();
    v41 = sub_1000108AC();
    v42 = sub_100010A7C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      *v43 = 136446466;
      v44 = [v40 identifier];
      v45 = sub_10001097C();
      v47 = v46;

      v48 = sub_10000EF40(v45, v47, v58);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      swift_getErrorValue();
      v49 = sub_100010BFC();
      v51 = sub_10000EF40(v49, v50, v58);

      *(v43 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "Failed to load userInfo from poster descriptor '%{public}s' with error '%s'.", v43, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_18;
  }

  v54 = v5;
  v55 = a2;
  v17 = v15;
  v18 = sub_10001095C();
  v19 = v16;

  v56 = sub_1000105FC();
  v57 = v20;
  sub_100010B0C();
  if (!*(v18 + 16) || (v21 = sub_100006DD0(v58), (v22 & 1) == 0))
  {

    sub_10000A888(v58);
    goto LABEL_8;
  }

  sub_10000A9E4(*(v18 + 56) + 32 * v21, v59);
  sub_10000A888(v58);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    a2 = v55;
    if (qword_100020060 != -1)
    {
      swift_once();
    }

    v27 = sub_1000108CC();
    sub_100004CC4(v27, qword_100020D08);
    v28 = a1;
    v29 = sub_1000108AC();
    v30 = sub_100010A7C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v58[0] = v32;
      *v31 = 136446210;
      v33 = [v28 identifier];
      v34 = sub_10001097C();
      v36 = v35;

      v37 = sub_10000EF40(v34, v36, v58);

      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to load wallpaperRepresentingFileName from poster descriptor '%{public}s'.", v31, 0xCu);
      sub_10000A7C8(v32);
    }

LABEL_18:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v23 = [a1 assetDirectory];
  sub_1000103CC();

  sub_1000103AC();

  (*(v54 + 8))(v8, v4);
  sub_10001047C();
  sub_10000AD30(v14, v12, &qword_1000205D8, &qword_100012320);
  v24 = sub_10001048C();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
    sub_10000AC88(v14, &qword_1000205D8, &qword_100012320);
    sub_10000AC88(v12, &qword_1000205D8, &qword_100012320);
    v26 = v55;
    *v55 = 0u;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0;
  }

  else
  {
    v52 = v55;
    *(v55 + 24) = v24;
    v52[4] = sub_10000A8DC(&qword_100020608, &type metadata accessor for WKWallpaperBundle, &protocol conformance descriptor for WKWallpaperBundle);
    v53 = sub_10000A924(v52);
    (*(v25 + 32))(v53, v12, v24);
    sub_10000AC88(v14, &qword_1000205D8, &qword_100012320);
  }
}

id sub_100005F14(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CollectionsPosterUpdateDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100005F7C(void *a1)
{
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D08);
  v3 = a1;
  oslog = sub_1000108AC();
  v4 = sub_100010A8C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    swift_getObjectType();
    v6 = sub_100010C2C();
    v8 = sub_10000EF40(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10000EF40(0xD00000000000001ALL, 0x8000000100012B10, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%{public}s.%{public}s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000062B0(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_10000ACE8(0, &qword_100020618, PRPosterDescriptor_ptr);
  v7 = sub_10001095C();
  v4[6] = v7;
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[7] = v9;
  *v9 = v4;
  v9[1] = sub_1000063CC;

  return sub_100008148(v7);
}

uint64_t sub_1000063CC(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_10001037C();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    isa = sub_1000109DC().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

void sub_10000658C(void *a1)
{
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D08);
  v3 = a1;
  oslog = sub_1000108AC();
  v4 = sub_100010A8C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    swift_getObjectType();
    v6 = sub_100010C2C();
    v8 = sub_10000EF40(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10000EF40(0xD00000000000001CLL, 0x8000000100012AF0, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%{public}s.%{public}s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000068C0(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1000069A8;

  return sub_100008E80(v8);
}

uint64_t sub_1000069A8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 40);
  if (v3)
  {
    v11 = sub_10001037C();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 40), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_100006B84()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000ADA8;

  return sub_1000068C0(v2, v3, v5, v4);
}

uint64_t sub_100006C44()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000ADA8;

  return sub_10000E5C0(v2, v3, v4);
}

uint64_t sub_100006D04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ADA8;

  return sub_10000E6AC(a1, v4, v5, v6);
}

unint64_t sub_100006DD0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100010AEC(*(v2 + 40));

  return sub_10000730C(a1, v4);
}

unint64_t sub_100006E14(uint64_t a1, uint64_t a2)
{
  sub_100010C0C();
  sub_10001099C();
  v4 = sub_100010C1C();

  return sub_1000073D4(a1, a2, v4);
}

uint64_t sub_100006E8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001FDC(&qword_100020610, &qword_100012340);
  result = sub_100010BBC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_10000A878((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_10000A988(v23, &v36);
        sub_10000A9E4(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_100010AEC(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_10000A878(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
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

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

_OWORD *sub_100007144(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100006DD0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10000748C();
      goto LABEL_7;
    }

    sub_100006E8C(v13, a3 & 1);
    v19 = sub_100006DD0(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10000A988(a2, v21);
      return sub_100007290(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_100010BEC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000A7C8(v17);

  return sub_10000A878(a1, v17);
}

_OWORD *sub_100007290(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10000A878(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_10000730C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000A988(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100010AFC();
      sub_10000A888(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000073D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100010BDC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_10000748C()
{
  v1 = v0;
  sub_100001FDC(&qword_100020610, &qword_100012340);
  v2 = *v0;
  v3 = sub_100010BAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = 40 * v17;
        sub_10000A988(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000A9E4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10000A878(v22, (*(v4 + 56) + v17));
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

  return result;
}

unint64_t sub_100007630(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001FDC(&qword_100020610, &qword_100012340);
    v3 = sub_100010BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000AD30(v4, v13, &qword_100020628, qword_100012378);
      result = sub_100006DD0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000A878(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10000776C(void *a1, char a2, char a3, char a4)
{
  v8 = sub_1000103DC();
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = __chkstk_darwin(v8);
  v72 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v73 = &v71 - v11;
  v12 = a1[3];
  v13 = a1[4];
  v76 = sub_10000A784(a1, v12);
  v77 = v13;
  v78 = v12;
  sub_10001054C();
  v14 = sub_10001096C();

  v15 = [objc_opt_self() mutableDescriptorWithIdentifier:v14];

  sub_10000A784(a1, a1[3]);
  if (sub_10001055C())
  {
    sub_10000ACE8(0, &unk_100020630, PRPosterColor_ptr);
    isa = sub_1000109DC().super.isa;

    [v15 setPreferredTitleColors:isa];
  }

  sub_10000A784(a1, a1[3]);
  v17 = [objc_allocWithZone(PRMutablePosterDescriptorHomeScreenConfiguration) initWithPreferredStyle:0 allowsModifyingLegibilityBlur:(sub_10001056C() & 1) == 0 preferredSolidColors:0 preferredGradientColors:0];
  [v15 setPreferredHomeScreenConfiguration:v17];

  v18 = [objc_allocWithZone(PRPosterRenderingConfiguration) initWithDepthEffectDisabled:a3 & 1 motionEffectsDisabled:a4 & 1];
  [v15 setPreferredRenderingConfiguration:v18];

  v19 = [objc_allocWithZone(ATXPosterDescriptorGalleryOptions) init];
  [v19 setAllowsSystemSuggestedComplications:0];
  if (a2)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  [v19 setFeaturedConfidenceLevel:v20];
  v21 = [objc_opt_self() mainBundle];
  v22 = sub_10001096C();
  v23 = [v21 localizedStringForKey:v22 value:0 table:0];

  v24 = v15;
  if (!v23)
  {
    sub_10001097C();
    v23 = sub_10001096C();
  }

  [v19 setDisplayNameLocalizationKey:v23];

  v84[0] = 0;
  v25 = [v15 storeGalleryOptions:v19 error:v84];
  v26 = v84[0];
  if (!v25)
  {
    v45 = v84[0];
    sub_10001038C();

    swift_willThrow();
    if (qword_100020060 != -1)
    {
      swift_once();
    }

    v46 = sub_1000108CC();
    sub_100004CC4(v46, qword_100020D08);
    swift_errorRetain();
    v47 = sub_1000108AC();
    v48 = sub_100010A7C();

    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_29;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v78 = v24;
    v51 = v50;
    v84[0] = v50;
    *v49 = 136446210;
    swift_getErrorValue();
    v52 = sub_100010BFC();
    v54 = sub_10000EF40(v52, v53, v84);

    *(v49 + 4) = v54;
    v55 = "Failed store gallery options %{public}s";
    goto LABEL_28;
  }

  sub_100001FDC(&qword_100020620, &qword_100012370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000122A0;
  v28 = v26;
  v84[0] = sub_10001060C();
  v84[1] = v29;
  sub_100010B0C();
  v30 = sub_10001054C();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v30;
  *(inited + 80) = v31;
  v32 = sub_100007630(inited);
  swift_setDeallocating();
  sub_10000AC88(inited + 32, &qword_100020628, qword_100012378);
  sub_10000A784(a1, a1[3]);
  if (sub_10001053C())
  {
    sub_10000A784(a1, a1[3]);
    v78 = v15;
    v33 = [v15 assetDirectory];
    v34 = v72;
    sub_1000103CC();

    v35 = v73;
    v36 = v79;
    sub_10001050C();
    if (v36)
    {
      (*(v74 + 8))(v34, v75);

      if (qword_100020060 != -1)
      {
        swift_once();
      }

      v37 = sub_1000108CC();
      sub_100004CC4(v37, qword_100020D08);
      swift_errorRetain();
      v38 = sub_1000108AC();
      v39 = sub_100010A7C();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v84[0] = v41;
        *v40 = 136446210;
        swift_getErrorValue();
        v42 = sub_100010BFC();
        v44 = sub_10000EF40(v42, v43, v84);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v38, v39, "Failed copy WKWallpaperRepresenting %{public}s", v40, 0xCu);
        sub_10000A7C8(v41);
      }

      v24 = v78;
      goto LABEL_30;
    }

    v56 = v75;
    v79 = *(v74 + 8);
    v79(v34, v75);
    *&v82 = sub_1000105FC();
    *(&v82 + 1) = v57;
    sub_100010B0C();
    v58 = sub_10001039C();
    v83 = &type metadata for String;
    *&v82 = v58;
    *(&v82 + 1) = v59;
    sub_10000A878(&v82, v81);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v32;
    sub_100007144(v81, v84, isUniquelyReferenced_nonNull_native);
    sub_10000A888(v84);
    v79(v35, v56);
    v24 = v78;
  }

  v61 = sub_10001094C().super.isa;

  v84[0] = 0;
  v62 = [v24 storeUserInfo:v61 error:v84];

  if ((v62 & 1) == 0)
  {
    v64 = v84[0];
    sub_10001038C();

    swift_willThrow();
    if (qword_100020060 != -1)
    {
      swift_once();
    }

    v65 = sub_1000108CC();
    sub_100004CC4(v65, qword_100020D08);
    swift_errorRetain();
    v47 = sub_1000108AC();
    v48 = sub_100010A7C();

    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_29;
    }

    v49 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v78 = v24;
    v51 = v66;
    v84[0] = v66;
    *v49 = 136446210;
    swift_getErrorValue();
    v67 = sub_100010BFC();
    v69 = sub_10000EF40(v67, v68, v84);

    *(v49 + 4) = v69;
    v55 = "Failed store userInfo %{public}s";
LABEL_28:
    _os_log_impl(&_mh_execute_header, v47, v48, v55, v49, 0xCu);
    sub_10000A7C8(v51);
    v24 = v78;

LABEL_29:

LABEL_30:
    swift_willThrow();

    goto LABEL_31;
  }

  v63 = v84[0];
LABEL_31:

  return v24;
}

uint64_t sub_100008148(uint64_t a1)
{
  v2[45] = a1;
  v2[46] = v1;
  v3 = sub_1000103FC();
  v2[47] = v3;
  v2[48] = *(v3 - 8);
  v2[49] = swift_task_alloc();
  v4 = sub_10001078C();
  v2[50] = v4;
  v2[51] = *(v4 - 8);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();

  return _swift_task_switch(sub_10000827C, 0, 0);
}

uint64_t sub_10000827C()
{
  v93 = v0;
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 368);
  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D08);
  v3 = v1;
  v4 = sub_1000108AC();
  v5 = sub_100010A8C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v92[0] = swift_slowAlloc();
    *v6 = 136446466;
    swift_getObjectType();
    v7 = sub_100010C2C();
    v9 = sub_10000EF40(v7, v8, v92);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_10000EF40(0xD00000000000001ALL, 0x8000000100012B10, v92);
    _os_log_impl(&_mh_execute_header, v4, v5, "Start (%{public}s.%{public}s)…", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(*(v0 + 368) + OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterUpdateDelegate_wallpaperRepresentingCollectionsManager);
  *(v0 + 344) = v10;
  sub_1000107BC();
  sub_10000A8DC(&qword_1000205F8, &type metadata accessor for WKWallpaperRepresentingCollectionsManager, &protocol conformance descriptor for WKWallpaperRepresentingCollectionsManager);

  sub_100010A3C();
  *(v0 + 328) = v10;
  sub_100010A4C();
  if (*(v0 + 336) != *(v0 + 352))
  {
    v14 = *(v0 + 408);
    v88 = *(v0 + 360);
    v15 = (v14 + 16);
    v90 = (v14 + 32);
    v91 = (v14 + 8);
    v85 = (*(v0 + 384) + 8);
    while (1)
    {
      v17 = *(v0 + 424);
      v16 = *(v0 + 432);
      v18 = *(v0 + 400);
      v19 = sub_100010A6C();
      v20 = *v15;
      (*v15)(v16);
      v19(v0 + 296, 0);
      sub_100010A5C();
      (*v90)(v17, v16, v18);
      v21 = sub_10001074C();
      v22 = *(v0 + 424);
      if ((v21 & 1) == 0)
      {
        break;
      }

      (*v91)(*(v0 + 424), *(v0 + 400));
LABEL_12:
      sub_100010A4C();
      if (*(v0 + 336) == *(v0 + 352))
      {
        goto LABEL_6;
      }
    }

    v23 = *(v0 + 416);
    v24 = *(v0 + 400);
    sub_10001071C();
    sub_10000A814(v0 + 16, v0 + 56);
    (v20)(v23, v22, v24);
    v25 = sub_1000108AC();
    v26 = sub_100010A8C();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 416);
    v29 = *(v0 + 400);
    if (v27)
    {
      v78 = *(v0 + 392);
      v86 = *(v0 + 376);
      v30 = swift_slowAlloc();
      v92[0] = swift_slowAlloc();
      *v30 = 136446466;
      v77 = v28;
      sub_10000A784((v0 + 56), *(v0 + 80));
      v80 = v26;
      v31 = sub_10001054C();
      v33 = v32;
      sub_10000A7C8((v0 + 56));
      v34 = sub_10000EF40(v31, v33, v92);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      sub_10001072C();
      v35 = sub_1000103EC();
      v37 = v36;
      (*v85)(v78, v86);
      v87 = *v91;
      (*v91)(v77, v29);
      v38 = sub_10000EF40(v35, v37, v92);

      *(v30 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v25, v80, "Using wallpaper (id: '%{public}s') as previewWallpaperRepresenting for collection %{public}s.", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v87 = *v91;
      (*v91)(v28, v29);
      sub_10000A7C8((v0 + 56));
    }

    sub_10000A784((v0 + 16), *(v0 + 40));
    v39 = sub_10001054C();
    if (*(v88 + 16))
    {
      v41 = sub_100006E14(v39, v40);
      v43 = v42;

      if (v43)
      {
        v44 = *(*(v88 + 56) + 8 * v41);
        sub_1000057DC(v44, v0 + 216);
        if (*(v0 + 240))
        {
          sub_10000A76C((v0 + 216), v0 + 176);
          sub_10000A784((v0 + 176), *(v0 + 200));
          sub_10001052C();
          v46 = v45;
          sub_10000A784((v0 + 16), *(v0 + 40));
          sub_10001052C();
          if (v47 <= v46)
          {
            sub_10000A814(v0 + 176, v0 + 256);
            v63 = v44;
            v64 = sub_1000108AC();
            v65 = sub_100010A8C();

            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v84 = swift_slowAlloc();
              v92[0] = v84;
              *v66 = 136446466;
              v82 = v64;
              v67 = [v63 identifier];
              log = v65;
              v68 = sub_10001097C();
              v89 = v63;
              v70 = v69;

              v71 = sub_10000EF40(v68, v70, v92);

              *(v66 + 4) = v71;
              *(v66 + 12) = 2050;
              sub_10000A784((v0 + 256), *(v0 + 280));
              v63 = v89;
              sub_10001052C();
              v73 = v72;
              sub_10000A7C8((v0 + 256));
              *(v66 + 14) = v73;
              _os_log_impl(&_mh_execute_header, v82, log, "Using existing descriptor with identifier '%{public}s' since the content version matched '%{public}f'.", v66, 0x16u);
              sub_10000A7C8(v84);
            }

            else
            {

              sub_10000A7C8((v0 + 256));
            }

            v74 = v63;
            sub_1000109CC();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1000109EC();
            }

            v75 = *(v0 + 424);
            v76 = *(v0 + 400);
            sub_1000109FC();

            v87(v75, v76);
            sub_10000A7C8((v0 + 176));
            goto LABEL_30;
          }

          sub_10000A7C8((v0 + 176));
        }

        else
        {

          sub_10000AC88(v0 + 216, &qword_1000205E8, &qword_100012330);
        }
      }
    }

    else
    {
    }

    sub_10000A814(v0 + 16, v0 + 96);
    sub_10000A814(v0 + 16, v0 + 136);
    v48 = sub_1000108AC();
    v49 = sub_100010A8C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v92[0] = v83;
      *v50 = 136446466;
      sub_10000A784((v0 + 96), *(v0 + 120));
      v81 = v49;
      v51 = sub_10001054C();
      v53 = v52;
      sub_10000A7C8((v0 + 96));
      v54 = sub_10000EF40(v51, v53, v92);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2050;
      sub_10000A784((v0 + 136), *(v0 + 160));
      sub_10001052C();
      v56 = v55;
      sub_10000A7C8((v0 + 136));
      *(v50 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v48, v81, "Creating new descriptor with identifier '%{public}s' for version '%{public}f'.", v50, 0x16u);
      sub_10000A7C8(v83);
    }

    else
    {

      sub_10000A7C8((v0 + 136));
      sub_10000A7C8((v0 + 96));
    }

    sub_10001073C();
    v57 = sub_10001075C();
    v58 = sub_10001076C();
    v59 = sub_10000776C((v0 + 16), 0, v57 & 1, v58 & 1);

    v60 = v59;
    sub_1000109CC();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000109EC();
    }

    v61 = *(v0 + 424);
    v62 = *(v0 + 400);
    sub_1000109FC();

    v87(v61, v62);
LABEL_30:
    sub_10000A7C8((v0 + 16));
    goto LABEL_12;
  }

LABEL_6:
  v11 = *(v0 + 368);

  sub_100005F7C(v11);

  v12 = *(v0 + 8);

  return v12(_swiftEmptyArrayStorage);
}

uint64_t sub_100008E80(uint64_t a1)
{
  v2[95] = v1;
  v2[94] = a1;
  v3 = sub_10001078C();
  v2[96] = v3;
  v2[97] = *(v3 - 8);
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v4 = sub_1000103DC();
  v2[101] = v4;
  v2[102] = *(v4 - 8);
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  sub_100001FDC(&qword_1000205D8, &qword_100012320);
  v2[107] = swift_task_alloc();
  v5 = sub_10001048C();
  v2[108] = v5;
  v2[109] = *(v5 - 8);
  v2[110] = swift_task_alloc();
  v2[111] = swift_task_alloc();

  return _swift_task_switch(sub_1000090A8, 0, 0);
}

uint64_t sub_1000090A8()
{
  v170 = v0;
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 760);
  v2 = sub_1000108CC();
  sub_100004CC4(v2, qword_100020D08);
  v3 = v1;
  v4 = sub_1000108AC();
  v5 = sub_100010A8C();

  v167 = v0;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *&v168 = swift_slowAlloc();
    *v6 = 136446466;
    swift_getObjectType();
    v7 = sub_100010C2C();
    v9 = sub_10000EF40(v7, v8, &v168);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_10000EF40(0xD00000000000001CLL, 0x8000000100012AF0, &v168);
    _os_log_impl(&_mh_execute_header, v4, v5, "Start (%{public}s.%{public}s)…", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(v0 + 752);
  sub_1000105FC();
  v11 = sub_10001096C();

  v12 = &off_10001F000;
  v13 = [v10 objectForUserInfoKey:v11];

  if (v13)
  {
    sub_100010ADC();
    swift_unknownObjectRelease();
  }

  else
  {
    v168 = 0u;
    v169 = 0u;
  }

  v14 = v0 + 296;
  v15 = v169;
  *(v0 + 448) = v168;
  *(v0 + 464) = v15;
  if (*(v0 + 472))
  {
    if (swift_dynamicCast())
    {
      v154 = (v0 + 296);
      v16 = *(v0 + 872);
      v162 = *(v0 + 864);
      v17 = *(v0 + 856);
      v18 = *(v0 + 840);
      v19 = *(v0 + 816);
      v20 = *(v0 + 808);
      v21 = [*(v0 + 752) assetDirectory];
      sub_1000103CC();

      sub_1000103BC();

      (*(v19 + 8))(v18, v20);
      sub_10001047C();
      if ((*(v16 + 48))(v17, 1, v162) != 1)
      {
        v38 = *(v0 + 888);
        v39 = *(v0 + 880);
        v40 = *(v0 + 872);
        v41 = *(v0 + 864);
        (*(v40 + 32))(v38, *(v0 + 856), v41);
        v42 = *(v40 + 16);
        v42(v39, v38, v41);
        v43 = sub_1000108AC();
        v44 = sub_100010A8C();
        v45 = os_log_type_enabled(v43, v44);
        v46 = *(v0 + 880);
        v47 = *(v0 + 872);
        v48 = *(v0 + 864);
        if (v45)
        {
          v164 = v42;
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *&v168 = v50;
          *v49 = 136446210;
          v158 = sub_10001046C();
          v52 = v51;
          v53 = *(v47 + 8);
          v53(v46, v48);
          v54 = sub_10000EF40(v158, v52, &v168);

          *(v49 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v43, v44, "Resolved wallpaperRepresentingIdentifier from wallpaper bundle '%{public}s'.", v49, 0xCu);
          sub_10000A7C8(v50);

          v42 = v164;
        }

        else
        {

          v53 = *(v47 + 8);
          v53(v46, v48);
        }

        v0 = v167;
        v55 = *(v167 + 888);
        v56 = *(v167 + 864);
        *(v167 + 320) = v56;
        *(v167 + 328) = sub_10000A8DC(&qword_100020608, &type metadata accessor for WKWallpaperBundle, &protocol conformance descriptor for WKWallpaperBundle);
        v57 = sub_10000A924(v154);
        v42(v57, v55, v56);
        v160 = sub_10001046C();
        v27 = v58;
        v53(v55, v56);
        goto LABEL_29;
      }

      sub_10000AC88(*(v0 + 856), &qword_1000205D8, &qword_100012320);
      v14 = v0 + 296;
      v12 = &off_10001F000;
    }
  }

  else
  {
    sub_10000AC88(v0 + 448, &qword_1000205E0, &qword_100012328);
  }

  v22 = *(v0 + 752);
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  sub_10001060C();
  v23 = sub_10001096C();

  v24 = [v22 v12[125]];

  if (v24)
  {
    sub_100010ADC();
    swift_unknownObjectRelease();
  }

  else
  {
    v168 = 0u;
    v169 = 0u;
  }

  v25 = v169;
  *(v0 + 480) = v168;
  *(v0 + 496) = v25;
  if (*(v0 + 504))
  {
    if (swift_dynamicCast())
    {
      v26 = *(v0 + 704);
      v27 = *(v0 + 712);

      v28 = sub_1000108AC();
      v29 = sub_100010A8C();

      v154 = v14;
      v160 = v26;
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v168 = v31;
        *v30 = 136446210;
        *(v30 + 4) = sub_10000EF40(v26, v27, &v168);
        _os_log_impl(&_mh_execute_header, v28, v29, "Resolved wallpaperRepresentingIdentifier from userInfo '%{public}s'.", v30, 0xCu);
        sub_10000A7C8(v31);
      }

LABEL_29:
      v59 = *(v0 + 760);

      *(v0 + 728) = *(v59 + OBJC_IVAR____TtC17CollectionsPoster31CollectionsPosterUpdateDelegate_wallpaperRepresentingCollectionsManager);
      sub_1000107BC();
      sub_10000A8DC(&qword_1000205F0, &type metadata accessor for WKWallpaperRepresentingCollectionsManager, &protocol conformance descriptor for WKWallpaperRepresentingCollectionsManager);

      sub_1000109BC();
      sub_10000A8DC(&qword_1000205F8, &type metadata accessor for WKWallpaperRepresentingCollectionsManager, &protocol conformance descriptor for WKWallpaperRepresentingCollectionsManager);
      sub_100010A4C();
      if (*(v0 + 696) == *(v0 + 720))
      {
LABEL_33:

        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
        v68 = v160;
      }

      else
      {
        v60 = *(v0 + 776);
        v61 = (v60 + 16);
        v157 = v27;
        v159 = (v60 + 32);
        v155 = (v60 + 8);
        while (1)
        {
          v62 = *(v0 + 792);
          v63 = *(v0 + 784);
          v64 = *(v0 + 768);
          v65 = sub_100010A6C();
          (*v61)(v62);
          v65(v0 + 576, 0);
          sub_100010A5C();
          v66 = *v159;
          v67 = v64;
          v27 = v157;
          (*v159)(v63, v62, v67);
          v172._countAndFlagsBits = v160;
          v172._object = v157;
          if (sub_10001077C(v172))
          {
            break;
          }

          (*v155)(*(v0 + 784), *(v0 + 768));
          sub_100010A4C();
          if (*(v0 + 696) == *(v0 + 720))
          {
            goto LABEL_33;
          }
        }

        v77 = *(v0 + 800);
        v78 = *(v0 + 784);
        v79 = *(v0 + 768);

        v66(v77, v78, v79);
        v68 = v160;
        sub_10001079C();
        (*v155)(v77, v79);
        if (*(v0 + 120))
        {
          sub_10000A76C((v0 + 96), v0 + 56);
          sub_10000A784((v0 + 56), *(v0 + 80));
          v69 = v154;
          if (sub_10001051C())
          {
            sub_10000A7C8((v0 + 56));
            goto LABEL_35;
          }

          sub_10000AD30(v154, v0 + 176, &qword_1000205E8, &qword_100012330);
          if (*(v0 + 200))
          {
            sub_10000A784((v0 + 176), *(v0 + 200));
            sub_10001052C();
            v81 = v80;
            sub_10000A7C8((v0 + 176));
            sub_10000A784((v0 + 56), *(v0 + 80));
            sub_10001052C();
            if (v81 < v82)
            {
              sub_10000A814(v0 + 56, v0 + 216);

              v83 = sub_1000108AC();
              v84 = sub_100010A8C();

              if (os_log_type_enabled(v83, v84))
              {
                v85 = swift_slowAlloc();
                v86 = swift_slowAlloc();
                *&v168 = v86;
                *v85 = 136446722;
                *(v85 + 4) = sub_10000EF40(v160, v157, &v168);
                *(v85 + 12) = 2050;
                *(v85 + 14) = v81;
                *(v85 + 22) = 2050;
                sub_10000A784((v0 + 216), *(v0 + 240));
                sub_10001052C();
                v88 = v87;
                sub_10000A7C8((v0 + 216));
                *(v85 + 24) = v88;
                _os_log_impl(&_mh_execute_header, v83, v84, "Updated configuration needed for '%{public}s', existingContentVersion '%{public}f', currentContentVersion '%{public}f'.", v85, 0x20u);
                sub_10000A7C8(v86);
              }

              else
              {

                sub_10000A7C8((v0 + 216));
              }

              v103 = [objc_opt_self() mutableConfiguration];
              sub_10000A784((v0 + 56), *(v0 + 80));
              v104 = v103;
              v105 = [v104 assetDirectory];
              sub_1000103CC();

              sub_10001050C();
              v114 = *(v0 + 752);
              v115 = *(*(v0 + 816) + 8);
              v115(*(v0 + 824), *(v0 + 808));
              v116 = sub_10001039C();
              v118 = v117;
              *(v0 + 744) = 0;
              v119 = [v114 loadUserInfoWithError:v0 + 744];
              v120 = *(v0 + 744);
              if (v119)
              {
                v121 = v119;
                v156 = v115;
                v163 = v104;
                v122 = sub_10001095C();
                v123 = v120;

                *(v0 + 656) = sub_1000105FC();
                *(v0 + 664) = v124;
                sub_100010B0C();
                *(v0 + 632) = &type metadata for String;
                *(v0 + 608) = v116;
                *(v0 + 616) = v118;
                sub_10000A878((v0 + 608), (v0 + 416));
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v168 = v122;
                sub_100007144((v0 + 416), v0 + 336, isUniquelyReferenced_nonNull_native);
                sub_10000A888(v0 + 336);
                v126 = v168;
                *(v0 + 672) = sub_10001060C();
                *(v0 + 680) = v127;
                sub_100010B0C();
                sub_10000A784((v0 + 56), *(v0 + 80));
                v128 = sub_10001054C();
                *(v0 + 568) = &type metadata for String;
                *(v0 + 544) = v128;
                *(v0 + 552) = v129;
                sub_10000A878((v0 + 544), (v0 + 512));
                v130 = swift_isUniquelyReferenced_nonNull_native();
                *&v168 = v126;
                sub_100007144((v0 + 512), v0 + 376, v130);
                sub_10000A888(v0 + 376);
                isa = sub_10001094C().super.isa;

                *(v0 + 736) = 0;
                v132 = [v104 storeUserInfo:isa error:v0 + 736];

                v133 = *(v0 + 736);
                if (v132)
                {
                  v134 = v133;

                  sub_10000A814(v0 + 56, v0 + 136);
                  sub_10000A814(v0 + 56, v0 + 16);
                  v135 = sub_1000108AC();
                  v136 = sub_100010A8C();
                  v137 = os_log_type_enabled(v135, v136);
                  v138 = *(v0 + 832);
                  v139 = *(v0 + 808);
                  if (v137)
                  {
                    v140 = swift_slowAlloc();
                    v141 = swift_slowAlloc();
                    *&v168 = v141;
                    *v140 = 136446466;
                    sub_10000A784((v0 + 136), *(v0 + 160));
                    v161 = v138;
                    v142 = sub_10001054C();
                    v144 = v143;
                    sub_10000A7C8((v0 + 136));
                    v145 = sub_10000EF40(v142, v144, &v168);

                    *(v140 + 4) = v145;
                    *(v140 + 12) = 2050;
                    sub_10000A784((v0 + 16), *(v0 + 40));
                    sub_10001052C();
                    v147 = v146;
                    sub_10000A7C8((v0 + 16));
                    *(v140 + 14) = v147;
                    _os_log_impl(&_mh_execute_header, v135, v136, "Updated configuration for wallpaper identifier '%{public}s' to contentVersion '%{public}f'.", v140, 0x16u);
                    sub_10000A7C8(v141);

                    v156(v161, v139);
                  }

                  else
                  {

                    v115(v138, v139);
                    sub_10000A7C8((v0 + 16));
                    sub_10000A7C8((v0 + 136));
                  }

                  sub_10000AC88(v154, &qword_1000205E8, &qword_100012330);
                  sub_10000A7C8((v0 + 56));
                  goto LABEL_39;
                }

                v151 = *(v0 + 832);
                v152 = *(v0 + 808);
                v153 = v133;

                sub_10001038C();
                swift_willThrow();

                v115(v151, v152);
              }

              else
              {
                v148 = v0;
                v166 = *(v0 + 832);
                v149 = *(v0 + 808);
                v150 = v120;

                sub_10001038C();

                swift_willThrow();
                v0 = v148;
                v115(v166, v149);
              }

              sub_10000A814(v0 + 56, v0 + 256);

              swift_errorRetain();
              v106 = sub_1000108AC();
              v107 = sub_100010A7C();

              if (os_log_type_enabled(v106, v107))
              {
                v108 = swift_slowAlloc();
                v109 = swift_slowAlloc();
                v165 = swift_slowAlloc();
                *&v168 = v165;
                *v108 = 136446722;
                v110 = sub_10000EF40(v160, v157, &v168);

                *(v108 + 4) = v110;
                *(v108 + 12) = 2050;
                sub_10000A784((v0 + 256), *(v0 + 280));
                sub_10001052C();
                v112 = v111;
                sub_10000A7C8((v0 + 256));
                *(v108 + 14) = v112;
                *(v108 + 22) = 2114;
                swift_errorRetain();
                v113 = _swift_stdlib_bridgeErrorToNSError();
                *(v108 + 24) = v113;
                *v109 = v113;
                _os_log_impl(&_mh_execute_header, v106, v107, "Failed to update configuration for identifier '%{public}s' to contentVersion '%{public}f'  with error, using existing configuration '%{public}@'.", v108, 0x20u);
                sub_10000AC88(v109, &qword_100020600, &qword_100012338);

                sub_10000A7C8(v165);
              }

              else
              {

                sub_10000A7C8((v0 + 256));
              }

              goto LABEL_56;
            }

            v89 = sub_1000108AC();
            v99 = sub_100010A8C();

            if (os_log_type_enabled(v89, v99))
            {
              v100 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              *&v168 = v92;
              *v100 = 136446466;
              v101 = sub_10000EF40(v160, v157, &v168);

              *(v100 + 4) = v101;
              *(v100 + 12) = 2050;
              *(v100 + 14) = v81;
              v94 = "No update needed for '%{public}s', contentVersion matches '%{public}f'.";
              v95 = v99;
              v96 = v89;
              v97 = v100;
              v98 = 22;
              goto LABEL_53;
            }
          }

          else
          {
            sub_10000AC88(v0 + 176, &qword_1000205E8, &qword_100012330);

            v89 = sub_1000108AC();
            v90 = sub_100010A8C();

            if (os_log_type_enabled(v89, v90))
            {
              v91 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              *&v168 = v92;
              *v91 = 136446210;
              v93 = sub_10000EF40(v160, v157, &v168);

              *(v91 + 4) = v93;
              v94 = "No update needed for %{public}s, no contentVersion could be found.";
              v95 = v90;
              v96 = v89;
              v97 = v91;
              v98 = 12;
LABEL_53:
              _os_log_impl(&_mh_execute_header, v96, v95, v94, v97, v98);
              sub_10000A7C8(v92);

LABEL_55:

LABEL_56:
              sub_10000AC88(v154, &qword_1000205E8, &qword_100012330);
              v102 = *(v0 + 752);
              sub_10000A7C8((v0 + 56));
              v163 = *(v0 + 752);
              goto LABEL_39;
            }
          }

          goto LABEL_55;
        }
      }

      sub_10000AC88(v0 + 96, &qword_1000205E8, &qword_100012330);
      v69 = v154;
LABEL_35:

      v70 = sub_1000108AC();
      v71 = sub_100010A8C();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *&v168 = v73;
        *v72 = 136446210;
        v74 = sub_10000EF40(v68, v27, &v168);

        *(v72 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v70, v71, "No updated wallpaper asset found for identifier %{public}s, returning current poster configuration.", v72, 0xCu);
        sub_10000A7C8(v73);
      }

      else
      {
      }

      sub_10000AC88(v69, &qword_1000205E8, &qword_100012330);
      v163 = *(v0 + 752);
      goto LABEL_39;
    }
  }

  else
  {
    sub_10000AC88(v0 + 480, &qword_1000205E0, &qword_100012328);
  }

  v32 = sub_1000108AC();
  v33 = sub_100010A7C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Unable to resolve wallpaperRepresentingIdentifier.", v34, 2u);
  }

  v35 = v0;
  v36 = *(v0 + 752);

  sub_10000AC88(v14, &qword_1000205E8, &qword_100012330);
  v37 = v36;
  v163 = *(v35 + 752);
LABEL_39:
  sub_10000658C(*(v167 + 760));

  v75 = *(v167 + 8);

  return v75(v163);
}

uint64_t sub_10000A76C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_10000A784(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000A7C8(void *a1)
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

uint64_t sub_10000A814(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000A878(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000A8DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_10000A924(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000A9E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000AA40()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000AA90()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000AB50;

  return sub_1000062B0(v2, v3, v5, v4);
}

uint64_t sub_10000AB50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000AC48(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v2, 48, 7);
}

uint64_t sub_10000AC88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001FDC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000ACE8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000AD30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001FDC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000AE08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1000108CC();
  sub_10000B00C(v5, a2);
  sub_100004CC4(v5, a2);
  return sub_1000108BC();
}

uint64_t sub_10000AED8(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000108CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001084C();
  sub_10000B00C(v12, a2);
  sub_100004CC4(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = sub_100004CC4(v8, a4);
  (*(v9 + 16))(v11, v13, v8);
  return sub_10001082C();
}

uint64_t *sub_10000B00C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_10000B070(id a1)
{
  if (a1)
  {
    [a1 duration];
    [a1 delay];
  }

  v2 = [a1 timingFunction];
  if (!v2)
  {
    v2 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  }

  sub_10000B15C();
  sub_1000108EC();

  return v2;
}

uint64_t sub_10000B15C()
{
  v3 = 0;
  v2 = 0;
  [v0 getControlPointAtIndex:1 values:&v3];
  [v0 getControlPointAtIndex:2 values:&v2];
  return sub_1000108DC();
}

id sub_10000B1F4()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editor] = 0;
  v2 = OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_environmentSnapshot;
  v3 = sub_1000105BC();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment] = 0;
  *&v0[OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController] = 0;
  v4 = qword_100020060;
  v5 = v0;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_1000108CC();
  sub_100004CC4(v6, qword_100020D08);
  v7 = v5;
  v8 = sub_1000108AC();
  v9 = sub_100010A8C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v10 = 136446466;
    swift_getObjectType();

    v11 = sub_100010C2C();
    v13 = sub_10000EF40(v11, v12, &v16);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_10000EF40(0x292874696E69, 0xE600000000000000, &v16);
    _os_log_impl(&_mh_execute_header, v8, v9, "Start (%{public}s.%{public}s)…", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10001062C();
  sub_10001061C();

  v17.receiver = v7;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, "init");
  sub_10000561C(v14);

  return v14;
}

uint64_t type metadata accessor for CollectionsPosterEditDelegate(uint64_t a1)
{
  result = qword_100020670;
  if (!qword_100020670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B554(uint64_t a1)
{
  sub_100003288(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10000B5F4(void *a1, uint64_t a2)
{
  v18 = a2;
  v17[0] = a1;
  v2 = sub_10001081C();
  v19 = *(v2 - 8);
  v20 = v2;
  __chkstk_darwin(v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001084C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v9 = sub_100004CC4(v5, qword_100020D68);
  (*(v6 + 16))(v8, v9, v5);
  sub_10001080C();
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = sub_10001083C();
  v12 = sub_100010AAC();
  v13 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v13, "CollectionsPosterEditDelegate.Initialize", "", v10, 2u);
  sub_10000B884(v17[1], v17[0], v18);
  v14 = sub_100010A9C();
  v15 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v14, v15, "CollectionsPosterEditDelegate.Initialize", "", v10, 2u);

  (*(v19 + 8))(v4, v20);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10000B884(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_100001FDC(&qword_100020528, &qword_100012278);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = *(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editor);
  *(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editor) = a2;

  v13 = type metadata accessor for CollectionsPosterEditingEnvironment();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEditingEnvironment_posterKitEditingEnvironment] = a3;
  v29.receiver = v14;
  v29.super_class = v13;
  v15 = a2;
  swift_unknownObjectRetain();
  v16 = objc_msgSendSuper2(&v29, "init");
  v17 = OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment;
  v18 = *(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment);
  *(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment) = v16;
  v19 = v16;

  v20 = sub_10000EE28();
  sub_1000051A4(v20, 0, v11);
  v21 = sub_1000105BC();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v11, 0, 1, v21);
  v23 = OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_environmentSnapshot;
  swift_beginAccess();
  sub_100004D54(v11, a1 + v23);
  swift_endAccess();
  sub_1000106BC();
  swift_allocObject();
  v24 = v15;
  *(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController) = sub_10001067C();

  v26 = *(a1 + v17);
  if (v26)
  {
    sub_10000AD30(a1 + v23, v9, &qword_100020528, &qword_100012278);
    result = (*(v22 + 48))(v9, 1, v21);
    if (result != 1)
    {
      v27 = v26;
      sub_10001068C();

      return (*(v22 + 8))(v9, v21);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000BBBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v47 = a1;
  v7 = sub_100001FDC(&qword_100020528, &qword_100012278);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = sub_10001081C();
  v51 = *(v13 - 8);
  v52 = v13;
  __chkstk_darwin(v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001084C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v20 = sub_100004CC4(v16, qword_100020D68);
  v48 = v17;
  v49 = v16;
  (*(v17 + 16))(v19, v20, v16);
  sub_10001080C();
  v21 = swift_slowAlloc();
  *v21 = 0;
  v46 = v19;
  v22 = sub_10001083C();
  v23 = sub_100010AAC();
  v50 = v15;
  v24 = sub_1000107FC();
  v44 = v22;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, v23, v24, "CollectionsPosterEditDelegate.Update", "", v21, 2u);
  v25 = type metadata accessor for CollectionsPosterEditingEnvironment();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR____TtC17CollectionsPoster35CollectionsPosterEditingEnvironment_posterKitEditingEnvironment] = a2;
  v53.receiver = v26;
  v53.super_class = v25;
  swift_unknownObjectRetain();
  v27 = objc_msgSendSuper2(&v53, "init");
  v28 = OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment;
  v29 = *(v4 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment);
  *(v4 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment) = v27;
  v30 = v27;

  v31 = sub_10000EE28();
  v45 = a3;
  sub_1000051A4(v31, [a3 animationSettings], v12);
  v32 = sub_1000105BC();
  v33 = *(v32 - 8);
  (*(v33 + 56))(v12, 0, 1, v32);
  v34 = OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_environmentSnapshot;
  swift_beginAccess();
  sub_100004D54(v12, v4 + v34);
  result = swift_endAccess();
  if (!*(v4 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController))
  {
    __break(1u);
    goto LABEL_8;
  }

  v36 = *(v4 + v28);
  if (!v36)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_10000AD30(v4 + v34, v10, &qword_100020528, &qword_100012278);
  result = (*(v33 + 48))(v10, 1, v32);
  if (result != 1)
  {

    v37 = v36;
    v38 = [v45 animationSettings];
    sub_1000106AC();

    (*(v33 + 8))(v10, v32);
    v39 = sub_100010A9C();
    v40 = v50;
    v41 = sub_1000107FC();
    v42 = v39;
    v43 = v44;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, v42, v41, "CollectionsPosterEditDelegate.Update", "", v21, 2u);

    (*(v51 + 8))(v40, v52);
    return (*(v48 + 8))(v46, v49);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10000C158(uint64_t a1)
{
  v1 = sub_10001081C();
  v18 = *(v1 - 8);
  v19 = v1;
  __chkstk_darwin(v1);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001084C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v8 = sub_100004CC4(v4, qword_100020D68);
  (*(v5 + 16))(v7, v8, v4);
  sub_10001080C();
  v9 = swift_slowAlloc();
  *v9 = 0;
  v10 = sub_10001083C();
  v11 = sub_100010AAC();
  v12 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v12, "CollectionsPosterEditDelegate.Looks", "", v9, 2u);
  sub_10000C3F4(v17[1], &v20);
  v13 = sub_100010A9C();
  v14 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v13, v14, "CollectionsPosterEditDelegate.Looks", "", v9, 2u);

  v15 = v20;

  (*(v18 + 8))(v3, v19);
  (*(v5 + 8))(v7, v4);
  return v15;
}

uint64_t sub_10000C3F4@<X0>(uint64_t result@<X0>, void *a3@<X8>)
{
  if (!*(result + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController))
  {
    goto LABEL_19;
  }

  v5 = sub_10001066C();

  if (v5 >> 62)
  {
    v6 = sub_100010B9C();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_16:

LABEL_17:
    *a3 = _swiftEmptyArrayStorage;
    return result;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  result = sub_100010B6C();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = a3;
    v12 = v3;
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_100010B2C();
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
        swift_unknownObjectRetain();
      }

      v9 = [v8 identifier];
      if (!v9)
      {
        sub_10001097C();
        v9 = sub_10001096C();
      }

      v10 = [v8 displayName];
      if (!v10)
      {
        sub_10001097C();
        v10 = sub_10001096C();
      }

      ++v7;
      [objc_allocWithZone(PREditingLook) initWithIdentifier:v9 displayName:v10];
      swift_unknownObjectRelease();

      sub_100010B4C();
      sub_100010B7C();
      sub_100010B8C();
      sub_100010B5C();
    }

    while (v6 != v7);

    a3 = v11;
    goto LABEL_17;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_10000C69C(uint64_t a1)
{
  v2 = sub_10001081C();
  v16 = *(v2 - 8);
  v17 = v2;
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001084C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v9 = sub_100004CC4(v5, qword_100020D68);
  (*(v6 + 16))(v8, v9, v5);
  sub_10001080C();
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = sub_10001083C();
  v12 = sub_100010AAC();
  v13 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v13, "CollectionsPosterEditDelegate.InitialLook", "", v10, 2u);
  if (*(v1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController))
  {

    sub_10001065C();

    v14 = sub_100010A9C();
    v15 = sub_1000107FC();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v14, v15, "CollectionsPosterEditDelegate.InitialLook", "", v10, 2u);

    (*(v16 + 8))(v4, v17);
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }
}

Class sub_10000CA58(void *a1, uint64_t a2, void *a3, const char *a4, void (*a5)(uint64_t))
{
  v8 = a3;
  v9 = a1;
  sub_10000CB24(v8, a4, a5);
  v11 = v10;

  if (v11)
  {
    sub_10000ACE8(0, &qword_1000206F0, UIMenuElement_ptr);
    v12.super.isa = sub_1000109DC().super.isa;
  }

  else
  {
    v12.super.isa = 0;
  }

  return v12.super.isa;
}

void sub_10000CB24(uint64_t a1, const char *a2, void (*a3)(uint64_t))
{
  v18 = a1;
  v19 = a3;
  v21 = a2;
  v20 = sub_10001081C();
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001084C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v11 = sub_100004CC4(v7, qword_100020D68);
  (*(v8 + 16))(v10, v11, v7);
  sub_10001080C();
  v12 = swift_slowAlloc();
  *v12 = 0;
  v13 = sub_10001083C();
  v14 = sub_100010AAC();
  v15 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v15, v21, "", v12, 2u);
  if (*(v3 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController))
  {

    v19(v18);

    v16 = sub_100010A9C();
    v17 = sub_1000107FC();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v16, v17, v21, "", v12, 2u);

    (*(v4 + 8))(v6, v20);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_10000CEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a3;
  v22 = sub_10001081C();
  v4 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001084C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v11 = sub_100004CC4(v7, qword_100020D68);
  (*(v8 + 16))(v10, v11, v7);
  sub_10001080C();
  v12 = swift_slowAlloc();
  *v12 = 0;
  v13 = sub_10001083C();
  v14 = sub_100010AAC();
  v15 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v15, "CollectionsPosterEditDelegate.PopulateViews", "", v12, 2u);
  if (*(v23 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController))
  {
    v16 = type metadata accessor for CollectionsPosterEditorLookViewProviding();
    v17 = objc_allocWithZone(v16);
    *&v17[OBJC_IVAR____TtC17CollectionsPoster40CollectionsPosterEditorLookViewProviding_posterKitViewProviding] = a2;
    v24.receiver = v17;
    v24.super_class = v16;

    swift_unknownObjectRetain();
    v18 = objc_msgSendSuper2(&v24, "init", v20, v21);
    sub_10001069C();

    LOBYTE(v18) = sub_100010A9C();
    v19 = sub_1000107FC();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v18, v19, "CollectionsPosterEditDelegate.PopulateViews", "", v12, 2u);

    (*(v4 + 8))(v6, v22);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_10000D2B0(uint64_t a1, uint64_t a2, const char *a3, void (*a4)(uint64_t, uint64_t))
{
  v21 = a2;
  v22 = a4;
  v20 = a1;
  v23 = sub_10001081C();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001084C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v12 = sub_100004CC4(v8, qword_100020D68);
  (*(v9 + 16))(v11, v12, v8);
  sub_10001080C();
  v13 = swift_slowAlloc();
  *v13 = 0;
  v14 = sub_10001083C();
  v15 = sub_100010AAC();
  v16 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v16, a3, "", v13, 2u);
  if (*(v24 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController))
  {

    v22(v20, v21);

    v17 = sub_100010A9C();
    v18 = sub_1000107FC();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v17, v18, a3, "", v13, 2u);

    (*(v5 + 8))(v7, v23);
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000D608(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_10001085C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_10001081C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10000D73C, 0, 0);
}

uint64_t sub_10000D73C()
{
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v1 = sub_10001084C();
  v0[12] = sub_100004CC4(v1, qword_100020D68);
  sub_10001080C();
  v2 = sub_10001083C();
  v3 = sub_100010AAC();
  if (sub_100010ABC())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1000107FC();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v5, "CollectionsPosterEditDelegate.Finalize", "", v4, 2u);
  }

  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[3];

  (*(v9 + 16))(v6, v7, v8);
  sub_10001088C();
  swift_allocObject();
  v0[13] = sub_10001087C();
  v11 = *(v9 + 8);
  v0[14] = v11;
  v0[15] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12 = v11(v7, v8);
  v15 = *(v10 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController);
  v0[16] = v15;
  if (!v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = *(v0[3] + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment);
  v0[17] = v16;
  if (!v16)
  {
LABEL_11:
    __break(1u);
    return WKWallpaperPosterEditorController.editorFinalize(_:with:)(v12, v13, v14);
  }

  v17 = sub_10000EE28();

  v18 = v16;
  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = sub_10000D990;
  v12 = v0[2];
  v13 = v18;
  v14 = v17;

  return WKWallpaperPosterEditorController.editorFinalize(_:with:)(v12, v13, v14);
}

uint64_t sub_10000D990()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_10000DAC0, 0, 0);
}

uint64_t sub_10000DAC0(uint64_t a1)
{
  v2 = sub_10001083C();
  sub_10001086C();
  v3 = sub_100010A9C();
  if (sub_100010ABC())
  {
    v5 = v1[5];
    v4 = v1[6];
    v6 = v1[4];

    sub_10001089C();

    if ((*(v5 + 88))(v4, v6) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[5] + 8))(v1[6], v1[4]);
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1000107FC();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v9, "CollectionsPosterEditDelegate.Finalize", v7, v8, 2u);
  }

  v10 = v1[14];
  v11 = v1[9];
  v12 = v1[7];

  v10(v11, v12);

  v13 = v1[1];

  return v13();
}

uint64_t sub_10000DE04(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10000DEC8;

  return sub_10000D608(v6);
}

uint64_t sub_10000DEC8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10000E020(uint64_t a1)
{
  v2 = sub_10001081C();
  v18 = *(v2 - 8);
  v19 = v2;
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001084C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020080 != -1)
  {
    swift_once();
  }

  v9 = sub_100004CC4(v5, qword_100020D68);
  (*(v6 + 16))(v8, v9, v5);
  sub_10001080C();
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = sub_10001083C();
  v12 = sub_100010AAC();
  v13 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v13, "CollectionsPosterEditDelegate.Invalidate", "", v10, 2u);
  sub_10000E2B0(v17, a1);
  v14 = sub_100010A9C();
  v15 = sub_1000107FC();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v14, v15, "CollectionsPosterEditDelegate.Invalidate", "", v10, 2u);

  (*(v18 + 8))(v4, v19);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10000E2B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100001FDC(&qword_100020528, &qword_100012278);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController;
  if (*(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_wallpaperPosterEditorController))
  {

    sub_10001064C();

    *(a1 + v7) = 0;

    v8 = *(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment);
    *(a1 + OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_editingEnvironment) = 0;

    v9 = sub_1000105BC();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = OBJC_IVAR____TtC17CollectionsPoster29CollectionsPosterEditDelegate_environmentSnapshot;
    swift_beginAccess();
    sub_100004D54(v6, a1 + v10);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000E468(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10000E4B4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000E4C4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E50C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000AB50;

  return sub_10000DE04(v2, v3, v4);
}

uint64_t sub_10000E5C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000ADA8;

  return v6();
}

uint64_t sub_10000E6AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000AB50;

  return v7();
}

uint64_t sub_10000E794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001FDC(&qword_1000205D0, &qword_1000122F0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10000AD30(a3, v23 - v10, &qword_1000205D0, &qword_1000122F0);
  v12 = sub_100010A2C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000AC88(v11, &qword_1000205D0, &qword_1000122F0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100010A1C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_100010A0C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_10001098C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10000AC88(a3, &qword_1000205D0, &qword_1000122F0);

    return v21;
  }

LABEL_8:
  sub_10000AC88(a3, &qword_1000205D0, &qword_1000122F0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10000EA90(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000EB88;

  return v6(a1);
}

uint64_t sub_10000EB88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000EC80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000ECB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000ADA8;

  return sub_10000EA90(a1, v4);
}

uint64_t sub_10000ED70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000AB50;

  return sub_10000EA90(a1, v4);
}

unint64_t sub_10000EE28()
{
  result = qword_1000206E8;
  if (!qword_1000206E8)
  {
    type metadata accessor for CollectionsPosterEditingEnvironment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206E8);
  }

  return result;
}

uint64_t sub_10000EE80(uint64_t (*a1)(void))
{
  a1();

  return sub_100010C2C();
}

uint64_t sub_10000EEE4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10000EF40(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10000EF40(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000F00C(v11, 0, 0, 1, a1, a2);
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
    sub_10000A9E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000A7C8(v11);
  return v7;
}

unint64_t sub_10000F00C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000F118(a5, a6);
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
    result = sub_100010B3C();
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

void *sub_10000F118(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000F164(a1, a2);
  sub_10000F294(&off_100018AE0);
  return v3;
}

void *sub_10000F164(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000F380(v5, 0);
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

  result = sub_100010B3C();
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
        v10 = sub_1000109AC();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000F380(v10, 0);
        result = sub_100010B1C();
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

uint64_t sub_10000F294(uint64_t result)
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

  result = sub_10000F3F4(result, v11, 1, v3);
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

void *sub_10000F380(uint64_t a1, uint64_t a2)
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

  sub_100001FDC(&unk_100020700, &qword_100012428);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000F3F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001FDC(&unk_100020700, &qword_100012428);
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

_BYTE **sub_10000F4E8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10000F51C()
{
  v1 = sub_10001042C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 backlightProgress];
  if (v5 == 0.0)
  {
    (*(v2 + 104))(v4, enum case for WKPosterWakeState.ScreenState.off(_:), v1);
  }

  else
  {
    [v0 backlightProgress];
    if (v6 == 1.0)
    {
      v7 = &enum case for WKPosterWakeState.ScreenState.on(_:);
    }

    else
    {
      v7 = &enum case for WKPosterWakeState.ScreenState.transitioning(_:);
    }

    (*(v2 + 104))(v4, *v7, v1);
  }

  [v0 backlightProgress];
  return sub_10001043C();
}

uint64_t sub_10000F654()
{
  v1 = sub_1000104CC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 unlockProgress];
  if (v5 == 0.0)
  {
    (*(v2 + 104))(v4, enum case for WKPosterUnlockState.ScreenState.locked(_:), v1);
  }

  else
  {
    [v0 unlockProgress];
    if (v6 == 1.0)
    {
      v7 = &enum case for WKPosterUnlockState.ScreenState.unlocked(_:);
    }

    else
    {
      v7 = &enum case for WKPosterUnlockState.ScreenState.transitioning(_:);
    }

    (*(v2 + 104))(v4, *v7, v1);
  }

  [v0 unlockProgress];
  return sub_1000104DC();
}

id PRRenderer.wk_extendRenderSession(forReason:)(uint64_t a1)
{
  v2 = sub_10001096C();
  v3 = [v1 extendRenderingSessionForReason:v2];

  v4 = type metadata accessor for CollectionsPosterInvalidatable();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC17CollectionsPoster30CollectionsPosterInvalidatable_posterKitInvalidatable] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, "init");
}

Swift::Void __swiftcall PRRenderer.wk_setPreferredProminentColor(_:)(UIColor_optional a1)
{
  isa = a1.value.super.isa;
  v3 = swift_allocObject();
  *(v3 + 16) = isa;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10000FA68;
  *(v4 + 24) = v3;
  v8[4] = sub_100010300;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10001033C;
  v8[3] = &unk_100018D50;
  v5 = _Block_copy(v8);
  v6 = isa;

  [v1 updatePreferences:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_10000FA30()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FA78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id PREditor.wk_currentLook.getter()
{
  v1 = [v0 currentLook];

  return v1;
}

uint64_t PREditor.wk_setAdaptiveTimeMode(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100010280;
  *(v5 + 24) = v4;
  v8[4] = sub_100010290;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10001033C;
  v8[3] = &unk_100018DC8;
  v6 = _Block_copy(v8);

  [v2 updatePreferences:v6];
  _Block_release(v6);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000FDF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, v6);

  return swift_unknownObjectRelease();
}

uint64_t PREditor.wk_setMaximumAdaptiveTimeHeight(_:)(double a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000102C8;
  *(v4 + 24) = v3;
  v8[4] = sub_100010300;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10001033C;
  v8[3] = &unk_100018E40;
  v5 = _Block_copy(v8);

  [v1 updatePreferences:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}