uint64_t DefaultKeyboardSettingsProvider.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DefaultKeyboardSettingsProvider.localizedTitle.getter()
{
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_4680();

  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1338@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_4680();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_13F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return DefaultKeyboardSettingsProvider.localizedTitle.setter(v1, v2);
}

uint64_t DefaultKeyboardSettingsProvider.localizedTitle.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_4940() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
    sub_4670();
  }
}

uint64_t sub_15AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

uint64_t (*DefaultKeyboardSettingsProvider.localizedTitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9Keyboards31DefaultKeyboardSettingsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_4680();

  *v4 = v1;
  swift_getKeyPath();
  sub_46A0();

  swift_beginAccess();
  return sub_1778;
}

uint64_t variable initialization expression of DefaultKeyboardSettingsProvider.localizedDetail()
{
  sub_4660();
  __chkstk_darwin();
  sub_48A0();
  __chkstk_darwin();
  sub_4890();
  sub_4650();
  return sub_48D0();
}

uint64_t DefaultKeyboardSettingsProvider.localizedDetail.getter()
{
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_4680();

  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1930@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_4680();

  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_19F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return DefaultKeyboardSettingsProvider.localizedDetail.setter(v1, v2);
}

uint64_t DefaultKeyboardSettingsProvider.localizedDetail.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 48) == a1 && v5 == a2;
      if (v6 || (sub_4940() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  swift_getKeyPath();
  __chkstk_darwin();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_4670();
}

uint64_t sub_1B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
}

uint64_t (*DefaultKeyboardSettingsProvider.localizedDetail.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9Keyboards31DefaultKeyboardSettingsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_4680();

  *v4 = v1;
  swift_getKeyPath();
  sub_46A0();

  swift_beginAccess();
  return sub_1D60;
}

void sub_1D6C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  swift_getKeyPath();
  sub_4690();

  free(v3);
}

id sub_1DF0()
{
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_4680();

  v1 = *(v0 + 72);

  return v1;
}

id sub_1EA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_4680();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_1F84(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  sub_450C(0, &qword_C2A8, PSSpecifier_ptr);
  v5 = v4;
  v6 = sub_4920();

  if (v6)
  {
    v7 = *(v2 + 72);
    *(v2 + 72) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
    sub_4670();
  }
}

uint64_t DefaultKeyboardSettingsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  DefaultKeyboardSettingsProvider.init()();
  return v0;
}

void DefaultKeyboardSettingsProvider.init()()
{
  sub_4660();
  __chkstk_darwin();
  sub_48A0();
  __chkstk_darwin();
  *(v0 + 16) = 0xD000000000000023;
  *(v0 + 24) = 0x8000000000004C70;
  sub_4890();
  sub_4650();
  *(v0 + 48) = sub_48D0();
  *(v0 + 56) = v1;
  *(v0 + 88) = 0;
  _s9Keyboards31DefaultKeyboardSettingsProviderC22__observationRegistrar33_A11D2A37FEBC8069AA4589092AA20CA611Observation0oG0Vvpfi_0();
  v2 = [objc_allocWithZone(PSListController) init];
  v3 = [objc_allocWithZone(PSSpecifier) init];
  [v2 setSpecifier:v3];

  v4 = [v2 specifier];
  if (!v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4;
  v6 = sub_48B0();
  [v5 setProperty:v6 forKey:PSIDKey];

  v7 = sub_48B0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = v2;
  v11 = [v9 bundleForClass:ObjCClassFromMetadata];
  v12 = [v10 loadSpecifiersFromPlistName:v7 target:v10 bundle:v11];

  *(v0 + 80) = v10;
  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v10;
  if (![v12 firstObject])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_4930();
  swift_unknownObjectRelease();
  sub_2580(&v25, v27);
  sub_450C(0, &qword_C2A8, PSSpecifier_ptr);
  swift_dynamicCast();
  v14 = [v23 target];
  if (!v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v0 + 64) = v14;
  v15 = [v23 name];
  if (!v15)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = sub_48C0();
  v19 = v18;

  *(v0 + 32) = v17;
  *(v0 + 40) = v19;
  if ([v23 performGetter])
  {
    sub_4930();
    swift_unknownObjectRelease();
  }

  else
  {

    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (*(&v26 + 1))
  {
    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = v23;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v24;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    sub_4444(v27, &qword_C2B0, &qword_5118);
    v21 = 0;
    v22 = 0;
  }

  *(v0 + 48) = v21;
  *(v0 + 56) = v22;
  *(v0 + 72) = v23;
}

_OWORD *sub_2580(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2590(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25E0(uint64_t result)
{
  if (*(v1 + 88) == (result & 1))
  {
    *(v1 + 88) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
    sub_4670();
  }

  return result;
}

uint64_t sub_26F4()
{
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_4680();

  return *(v0 + 88);
}

uint64_t sub_2794@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_4680();

  *a2 = *(v3 + 88);
  return result;
}

uint64_t DefaultKeyboardSettingsProvider.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for DefaultKeyboards(0) - 8;
  __chkstk_darwin();
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2590(&qword_C2B8, &qword_5120);
  __chkstk_darwin();
  v8 = &v25 - v7;
  v9 = sub_2590(&qword_C2C0, &qword_5128);
  v26 = *(v9 - 8);
  v27 = v9;
  __chkstk_darwin();
  v11 = &v25 - v10;
  swift_getKeyPath();
  v29 = v1;
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_4680();

  v12 = *(v1 + 72);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = *(v3 + 32);
  *(v5 + v14) = swift_getKeyPath();
  sub_2590(&qword_C2C8, &qword_5188);
  swift_storeEnumTagMultiPayload();
  *v5 = v12;
  v5[1] = sub_2E24;
  v5[2] = v13;
  sub_3604(v5, v8);
  v15 = &v8[*(sub_2590(&qword_C2D0, &qword_5190) + 36)];
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 2) = sub_35FC;
  *(v15 + 3) = v2;
  v16 = v12;

  sub_3668(v5);
  v17 = sub_4730();
  v18 = sub_4820();
  v19 = &v8[*(v6 + 36)];
  *v19 = v17;
  v19[8] = v18;
  v20 = sub_4720();
  v21 = sub_36C4();
  v22 = sub_3854(&qword_C2F0, &type metadata accessor for EditButton, &protocol conformance descriptor for EditButton);
  sub_4850();
  sub_4444(v8, &qword_C2B8, &qword_5120);
  swift_getKeyPath();
  v29 = v2;
  sub_4680();

  v29 = v6;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v27;
  sub_4840();
  return (*(v26 + 8))(v11, v23);
}

uint64_t sub_2C68(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2CA0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2CD8(char a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 88) == (a1 & 1))
    {
      *(result + 88) = a1 & 1;
    }

    else
    {
      swift_getKeyPath();
      __chkstk_darwin();
      sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
      sub_4670();
    }
  }

  return result;
}

uint64_t sub_2E2C(uint64_t a1)
{
  sub_4900();
  sub_48F0();
  sub_48E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  *&v11[0] = a1;
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_4680();

  if ([*(a1 + 72) performGetter])
  {
    sub_4930();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v2 = swift_dynamicCast();
    v3 = v2 == 0;
    if (v2)
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }

    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = v8;
    }
  }

  else
  {
    sub_4444(v11, &qword_C2B0, &qword_5118);
    v4 = 0;
    v5 = 0;
  }

  DefaultKeyboardSettingsProvider.localizedDetail.setter(v4, v5);
}

uint64_t sub_2FD8()
{
  sub_4900();
  sub_48F0();
  sub_48E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_4710();
}

uint64_t DefaultKeyboardSettingsProvider.deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC9Keyboards31DefaultKeyboardSettingsProvider___observationRegistrar;
  v2 = sub_46C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DefaultKeyboardSettingsProvider.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC9Keyboards31DefaultKeyboardSettingsProvider___observationRegistrar;
  v2 = sub_46C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_31D0()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_3208()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_4680();

  swift_beginAccess();
  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_32CC()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_3854(&qword_C2A0, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_4680();

  swift_beginAccess();
  v2 = *(v1 + 48);

  return v2;
}

void sub_33B8(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  DefaultKeyboardSettingsProvider.init()();
  *a1 = v2;
}

uint64_t sub_33FC@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

id sub_340C()
{
  v1 = *v0;
  if ([*v0 detailControllerClass] && (swift_getObjCClassMetadata(), sub_450C(0, &qword_C4B8, PSListController_ptr), swift_dynamicCastMetatype()))
  {
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v2 setSpecifier:v1];
    return v2;
  }

  else
  {
    result = [v1 propertyForKey:PSDetailControllerClassKey];
    if (result)
    {
      sub_4930();
      swift_unknownObjectRelease();
      sub_2580(&v5, &v6);
      sub_450C(0, &qword_C4B8, PSListController_ptr);
      swift_dynamicCast();
      return v4;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_3554(uint64_t a1)
{
  sub_2590(&unk_C470, &qword_5358);
  __chkstk_darwin();
  sub_4564(a1, &v4 - v2, &unk_C470, &qword_5358);
  return sub_4750();
}

uint64_t sub_3604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultKeyboards(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3668(uint64_t a1)
{
  v2 = type metadata accessor for DefaultKeyboards(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_36C4()
{
  result = qword_C2D8;
  if (!qword_C2D8)
  {
    sub_3750(&qword_C2B8, &qword_5120);
    sub_3798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2D8);
  }

  return result;
}

uint64_t sub_3750(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_3798()
{
  result = qword_C2E0;
  if (!qword_C2E0)
  {
    sub_3750(&qword_C2D0, &qword_5190);
    sub_3854(&qword_C2E8, type metadata accessor for DefaultKeyboards, &unk_53D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2E0);
  }

  return result;
}

uint64_t sub_3854(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3914(uint64_t a1)
{
  result = sub_46C0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_39D8()
{
  sub_3750(&qword_C2C0, &qword_5128);
  sub_3750(&qword_C2B8, &qword_5120);
  sub_4720();
  sub_36C4();
  sub_3854(&qword_C2F0, &type metadata accessor for EditButton, &protocol conformance descriptor for EditButton);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_3ADC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2590(&qword_C3E8, &qword_5348);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_3BAC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2590(&qword_C3E8, &qword_5348);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_3C5C(uint64_t a1)
{
  sub_450C(319, &qword_C2A8, PSSpecifier_ptr);
  if (v1 <= 0x3F)
  {
    sub_3D60(319, &qword_C458, &qword_C460, &qword_5350, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_3D60(319, &qword_C468, &unk_C470, &qword_5358, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_3D60(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_3750(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_3E0C(void *a1)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_4880();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin();
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_4770();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2590(&qword_C2C8, &qword_5188);
  __chkstk_darwin();
  v10 = &v28 - v9;
  sub_2590(&unk_C470, &qword_5358);
  __chkstk_darwin();
  v12 = &v28 - v11;
  v13 = sub_2590(&qword_C4B0, qword_5428);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v28 - v15;
  v17 = *(type metadata accessor for DefaultKeyboards(0) + 24);
  v31 = v2;
  sub_4564(v2 + v17, v10, &qword_C2C8, &qword_5188);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_44A4(v10, v12, &unk_C470, &qword_5358);
  }

  else
  {
    sub_4910();
    v18 = sub_4810();
    sub_4700();

    sub_4760();
    swift_getAtKeyPath();

    (*(v28 + 8))(v8, v29);
  }

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v19 = &unk_C470;
    v20 = &qword_5358;
    v21 = v12;
  }

  else
  {
    sub_44A4(v12, v16, &qword_C4B0, qword_5428);
    sub_4860();
    v22 = sub_4870();
    v23 = v33;
    v24 = *(v32 + 8);
    v24(v5, v33);
    [v30 setEditing:v22 & 1 animated:1];
    v25 = *(v31 + 8);
    if (v25)
    {
      sub_4860();
      v26 = sub_4870();
      v24(v5, v23);
      v25(v26 & 1);
    }

    v19 = &qword_C4B0;
    v20 = qword_5428;
    v21 = v16;
  }

  return sub_4444(v21, v19, v20);
}

uint64_t sub_42A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3854(&qword_C4A8, type metadata accessor for DefaultKeyboards, &unk_5360);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_433C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3854(&qword_C4A8, type metadata accessor for DefaultKeyboards, &unk_5360);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_43EC(uint64_t a1)
{
  sub_3854(&qword_C4A8, type metadata accessor for DefaultKeyboards, &unk_5360);
  sub_47E0();
  __break(1u);
}

uint64_t sub_4444(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2590(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_44A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2590(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_450C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_4564(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2590(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_45CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  v4 = v2;
}