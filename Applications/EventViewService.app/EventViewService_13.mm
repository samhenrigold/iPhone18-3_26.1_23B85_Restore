double sub_1001950C0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100195544(&qword_10022B500, type metadata accessor for AppleMusicPlayer, &unk_1001C32A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 88))
  {

    Task.cancel()();
  }

  return result;
}

void sub_1001951B0()
{
  *(*(v0 + 16) + 88) = *(v0 + 24);
}

uint64_t sub_1001951EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100195224()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100195264(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD00;

  return sub_10019249C(a1, v4, v5, v6);
}

uint64_t sub_100195318(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012AC8;

  return sub_10010D254(a1, v4);
}

uint64_t sub_1001953D0()
{

  return swift_deallocObject();
}

unint64_t sub_100195474()
{
  result = qword_10022B520;
  if (!qword_10022B520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10022B520);
  }

  return result;
}

uint64_t sub_1001954C8()
{

  return swift_deallocObject();
}

void sub_100195508()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
}

uint64_t sub_100195544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10019560C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002224D8, &qword_1001B7440);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10019567C()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
}

uint64_t sub_1001956B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001956F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100012AC8;

  return sub_100193860();
}

uint64_t sub_1001957A4()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

void *sub_1001957E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100195D24(a1, a2, a3, *v3, &qword_10022B568, &qword_1001C3450, &type metadata accessor for MusicPlayer.Queue.Entry);
  *v3 = result;
  return result;
}

char *sub_100195824(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001959D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100195844(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100195AE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100195864(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100195D24(a1, a2, a3, *v3, &qword_10022B578, &qword_1001C3478, &type metadata accessor for Music);
  *v3 = result;
  return result;
}

void *sub_1001958A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100195D24(a1, a2, a3, *v3, &qword_10022B598, &qword_1001C3498, &type metadata accessor for Art);
  *v3 = result;
  return result;
}

void *sub_1001958EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100195D24(a1, a2, a3, *v3, &qword_10022B590, &qword_1001C3490, &type metadata accessor for Dance);
  *v3 = result;
  return result;
}

void *sub_100195930(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100195D24(a1, a2, a3, *v3, &qword_10022B588, &qword_1001C3488, &type metadata accessor for Sport);
  *v3 = result;
  return result;
}

void *sub_100195974(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100195D24(a1, a2, a3, *v3, &qword_10022B580, &qword_1001C3480, &type metadata accessor for Theater);
  *v3 = result;
  return result;
}

char *sub_1001959B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100195BF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001959D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024C4(&qword_10022B100, &unk_1001C34B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

char *sub_100195AE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024C4(&unk_1002224F0, &qword_1001B5CD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

char *sub_100195BF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024C4(&qword_1002241B8, &unk_1001B8A50);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

void *sub_100195D24(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1000024C4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
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

uint64_t sub_100195F00(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100195FF4;

  return v5(v2 + 32);
}

uint64_t sub_100195FF4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100196108(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012AC8;

  return sub_100195F00(a1, v4);
}

uint64_t sub_1001961C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BD00;

  return sub_100195F00(a1, v4);
}

uint64_t sub_1001962F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributionViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1001963D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributionViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for AttributionModule(uint64_t a1)
{
  result = qword_10022B5F8;
  if (!qword_10022B5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001964D4(uint64_t a1)
{
  type metadata accessor for AttributionViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_100017044(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100196574@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = type metadata accessor for AttributionModule(0);
  v33 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v34 = v3;
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000024C4(&qword_10022B630, &qword_1001C3568);
  __chkstk_darwin(v37);
  v8 = &v32 - v7;
  v36 = v1;
  sub_100123384(v6);
  v9 = Text.init(_:)();
  v11 = v10;
  v13 = v12;
  if (qword_100220B98 != -1)
  {
    swift_once();
  }

  v39 = qword_1002390B8;

  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  v18 = v17;
  sub_100017398(v9, v11, v13 & 1);

  static Font.footnote.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_100017398(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v27 = v35;
  sub_10019698C(v36, v35);
  v28 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v29 = swift_allocObject();
  sub_100196B50(v27, v29 + v28);
  v30 = &v8[*(v37 + 36)];
  sub_1000024C4(&qword_10022B638, &qword_1001C35A0);
  OpenURLAction.init(handler:)();
  *v30 = KeyPath;
  *v8 = v19;
  *(v8 + 1) = v21;
  v8[16] = v23 & 1;
  *(v8 + 3) = v25;
  sub_100196C34();
  View.accessibilityIdentifier(_:)();
  return sub_100196D24(v8);
}

uint64_t sub_1001968B8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + *(type metadata accessor for AttributionModule(0) + 20)))
  {

    sub_100123A14(v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }

  return static OpenURLAction.Result.systemAction.getter(v3);
}

uint64_t sub_10019698C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionModule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001969F0()
{
  v1 = *(type metadata accessor for AttributionModule(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(type metadata accessor for AttributionViewModel(0) + 32);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100196B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionModule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100196BB4(uint64_t a1)
{
  v3 = *(type metadata accessor for AttributionModule(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1001968B8(a1, v4);
}

unint64_t sub_100196C34()
{
  result = qword_10022B640;
  if (!qword_10022B640)
  {
    sub_10000460C(&qword_10022B630, &qword_1001C3568);
    sub_100196CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B640);
  }

  return result;
}

unint64_t sub_100196CC0()
{
  result = qword_10022B648;
  if (!qword_10022B648)
  {
    sub_10000460C(&qword_10022B638, &qword_1001C35A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B648);
  }

  return result;
}

uint64_t sub_100196D24(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_10022B630, &qword_1001C3568);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100196D90()
{
  result = qword_10022B650;
  if (!qword_10022B650)
  {
    sub_10000460C(&qword_10022B658, &qword_1001C35A8);
    sub_100196C34();
    sub_10009249C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B650);
  }

  return result;
}

__n128 sub_100196E4C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100196E78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100196EC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100196F2C()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_10022B660 = result;
  *algn_10022B668 = v1;
  byte_10022B670 = v2 & 1;
  qword_10022B678 = v3;
  return result;
}

uint64_t sub_100196F74()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_10022B680 = result;
  *algn_10022B688 = v1;
  byte_10022B690 = v2 & 1;
  qword_10022B698 = v3;
  return result;
}

uint64_t sub_100196FBC()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_10022B6A0 = result;
  *algn_10022B6A8 = v1;
  byte_10022B6B0 = v2 & 1;
  qword_10022B6B8 = v3;
  return result;
}

uint64_t sub_100197004()
{
  v0 = [objc_opt_self() systemGray5Color];
  result = Color.init(uiColor:)();
  qword_10022B6C0 = result;
  return result;
}

uint64_t sub_100197044()
{
  v1 = v0;
  v2 = sub_1000024C4(&qword_1002293B8, &qword_1001C06D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v47[-1] - v3;
  v5 = v0[11];
  if (!v5)
  {
    return 3;
  }

  v6 = v0[10] == 0x6C7070612E6D6F63 && v5 == 0xEF636973754D2E65;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 3;
  }

  if (qword_100220C20 != -1)
  {
    swift_once();
  }

  v7 = *(qword_100239150 + 16);
  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);
  swift_getKeyPath();
  v47[0] = v8;
  sub_10013FFD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription;
  swift_beginAccess();
  sub_100156CB4(v8 + v9, v4);
  os_unfair_lock_unlock((v7 + 24));
  v10 = type metadata accessor for MusicSubscription();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    sub_1000050C4(v4, &qword_1002293B8, &qword_1001C06D0);
    return 3;
  }

  v12 = MusicSubscription.canPlayCatalogContent.getter();
  (*(v11 + 8))(v4, v10);
  if ((v12 & 1) == 0)
  {
    return 3;
  }

  v13 = v1[8];
  v14 = v1[9];
  sub_10001BED0(v1 + 5, v13);
  (*(v14 + 104))(v13, v14);
  swift_getAssociatedTypeWitness();
  sub_1000024C4(&qword_10022B6C8, &qword_1001C3650);
  v15 = _arrayForceCast<A, B>(_:)();

  v16 = *(v15 + 16);
  if (v16)
  {
    v50 = _swiftEmptyArrayStorage;
    sub_100195824(0, v16, 0);
    v17 = v50;
    v18 = v15 + 32;
    do
    {
      sub_10002FF80(v18, v47);
      v19 = v48;
      v20 = v49;
      sub_10001BED0(v47, v48);
      v21 = (*(v20 + 88))(v19, v20);
      v23 = v22;
      sub_100012A7C(v47);
      v50 = v17;
      v25 = v17[2];
      v24 = v17[3];
      if (v25 >= v24 >> 1)
      {
        sub_100195824((v24 > 1), v25 + 1, 1);
        v17 = v50;
      }

      v17[2] = v25 + 1;
      v26 = &v17[2 * v25];
      v26[4] = v21;
      v26[5] = v23;
      v18 += 40;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  v28 = *v1;
  v29 = *(*v1 + 40);
  v30 = v28[6];
  sub_10001BED0(v28 + 2, v29);
  v31 = (*(v30 + 8))(v29, v30);
  v32 = *(v31 + 16);
  if (v32)
  {
    v50 = _swiftEmptyArrayStorage;
    sub_100195824(0, v32, 0);
    v33 = v50;
    v46 = v31;
    v34 = v31 + 32;
    do
    {
      sub_10002FF80(v34, v47);
      v35 = v48;
      v36 = v49;
      sub_10001BED0(v47, v48);
      v37 = (*(v36 + 88))(v35, v36);
      v39 = v38;
      sub_100012A7C(v47);
      v50 = v33;
      v41 = v33[2];
      v40 = v33[3];
      if (v41 >= v40 >> 1)
      {
        sub_100195824((v40 > 1), v41 + 1, 1);
        v33 = v50;
      }

      v33[2] = v41 + 1;
      v42 = &v33[2 * v41];
      v42[4] = v37;
      v42[5] = v39;
      v34 += 40;
      --v32;
    }

    while (v32);
  }

  else
  {

    v33 = _swiftEmptyArrayStorage;
  }

  v43 = sub_10004A8F4(v33, v17);

  if ((v43 & 1) == 0)
  {
    return 0;
  }

  v44 = v28[5];
  v45 = v28[6];
  sub_10001BED0(v28 + 2, v44);
  return 0x10200u >> (8 * (*(v45 + 32))(v44, v45));
}

double sub_10019757C()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_10001BED0(v0 + 5, v1);
  v3 = *(v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-1] - v7;
  v3(v1, v2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v14[3] = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14[4] = AssociatedConformanceWitness;
    sub_10005EC40(v14);
    (*(v9 + 32))();
    v11 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    sub_100012A7C(v14);
    if (v11)
    {
      Color.init(cgColor:)();
      return result;
    }
  }

  if (qword_100220C58 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1001977C8@<X0>(char *a1@<X8>)
{
  v3 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[8];
  v11 = v1[9];
  sub_10001BED0(v1 + 5, v10);
  (*(v11 + 96))(v10, v11);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000050C4(v5, &qword_1002214F8, &qword_1001B3D20);
    v12 = 1;
  }

  else
  {
    v13 = *(v7 + 32);
    v13(v9, v5, v6);
    if (*(v1[12] + 16))
    {
      URL.appending(queryItems:)();
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      v13(a1, v9, v6);
    }

    v12 = 0;
  }

  return (*(v7 + 56))(a1, v12, 1, v6);
}

void sub_1001979E0(void *a1)
{
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001B49A0;
  v5 = a1[2];
  v4 = a1[3];
  *(v3 + 56) = &type metadata for AnalyticsString;
  *(v3 + 64) = &off_100228B70;
  *(v3 + 32) = 0;
  *(v3 + 40) = v5;
  *(v3 + 48) = v4;
  *(v3 + 96) = &type metadata for AnalyticsModuleName;
  *(v3 + 104) = &off_100228BD0;
  *(v3 + 72) = 3;
  *(v3 + 136) = &type metadata for AnalyticsModuleAction;
  *(v3 + 144) = &off_100228BA8;
  *(v3 + 112) = xmmword_1001BA550;
  *(v3 + 128) = 3;
  v6 = *(v1 + 105);

  if (v6 != 15)
  {
    v3 = sub_1001894F4(1, 4, 1, v3);
    v21 = &type metadata for AnalyticsPageName;
    v22 = &off_100228B48;
    LOBYTE(aBlock) = v6;
    *(v3 + 16) = 4;
    sub_10002FF68(&aBlock, v3 + 152);
  }

  if (a1[9])
  {
    v7 = a1[8];
    v8 = a1[9];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v21 = &type metadata for AnalyticsString;
  v22 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  *(&aBlock + 1) = v7;
  v20 = v8;
  v24 = v3;
  v10 = *(v3 + 16);
  v9 = *(v3 + 24);

  if (v10 >= v9 >> 1)
  {
    v3 = sub_1001894F4((v9 > 1), v10 + 1, 1, v3);
    v24 = v3;
  }

  v11 = sub_10002FAD0(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  sub_100118768(v10, v13, &v24, &type metadata for AnalyticsString, &off_100228B70);
  sub_100012A7C(&aBlock);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ELL;
  v16[3] = 0x80000001001C4640;
  v16[4] = v3;
  v22 = sub_100026FEC;
  v23 = v16;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v20 = sub_10015B4A4;
  v21 = &unk_10021A398;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

void sub_100197CF4(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  sub_10001BED0((*v1 + 16), v3);
  v5 = (*(v4 + 32))(v3, v4);
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001B49A0;
  v8 = a1[2];
  v7 = a1[3];
  *(v6 + 56) = &type metadata for AnalyticsString;
  *(v6 + 64) = &off_100228B70;
  *(v6 + 32) = 0;
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;
  *(v6 + 96) = &type metadata for AnalyticsModuleName;
  *(v6 + 104) = &off_100228BD0;
  *(v6 + 72) = 3;
  v9 = 19;
  if (v5 == 2)
  {
    v9 = 20;
  }

  *(v6 + 136) = &type metadata for AnalyticsModuleAction;
  *(v6 + 144) = &off_100228BA8;
  *(v6 + 112) = v9;
  *(v6 + 120) = 0;
  *(v6 + 128) = 3;
  v10 = v1[105];

  if (v10 != 15)
  {
    v6 = sub_1001894F4(1, 4, 1, v6);
    v25 = &type metadata for AnalyticsPageName;
    v26 = &off_100228B48;
    LOBYTE(aBlock) = v10;
    *(v6 + 16) = 4;
    sub_10002FF68(&aBlock, v6 + 152);
  }

  if (a1[9])
  {
    v11 = a1[8];
    v12 = a1[9];
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v25 = &type metadata for AnalyticsString;
  v26 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  *(&aBlock + 1) = v11;
  v24 = v12;
  v28 = v6;
  v13 = *(v6 + 16);
  v14 = *(v6 + 24);

  if (v13 >= v14 >> 1)
  {
    v6 = sub_1001894F4((v14 > 1), v13 + 1, 1, v6);
    v28 = v6;
  }

  v15 = sub_10002FAD0(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  sub_100118768(v13, v17, &v28, &type metadata for AnalyticsString, &off_100228B70);
  sub_100012A7C(&aBlock);
  v19 = String._bridgeToObjectiveC()();
  v20 = swift_allocObject();
  v20[2] = 0xD00000000000001ELL;
  v20[3] = 0x80000001001C4640;
  v20[4] = v6;
  v26 = sub_100006D88;
  v27 = v20;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v24 = sub_10015B4A4;
  v25 = &unk_10021A348;
  v21 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v21);
}

double sub_10019804C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100198070(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001980B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100198134(uint64_t a1)
{
  result = static Color.white.getter();
  qword_10022B6D0 = result;
  return result;
}

uint64_t sub_100198154(uint64_t a1)
{
  result = static Solarium.isEnabled.getter();
  v2 = 12.0;
  if (result)
  {
    v2 = 16.0;
  }

  qword_10022B6D8 = *&v2;
  return result;
}

uint64_t sub_100198198(uint64_t a1)
{
  result = static Solarium.isEnabled.getter();
  v2 = 6.0;
  if (result)
  {
    v2 = 10.0;
  }

  qword_10022B6E8 = *&v2;
  return result;
}

uint64_t sub_1001981C8(uint64_t a1)
{
  result = static Solarium.isEnabled.getter();
  v2 = 14.0;
  if (result)
  {
    v2 = 16.0;
  }

  qword_10022B6F0 = *&v2;
  return result;
}

uint64_t sub_10019820C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(uiColor:)();
  *a3 = result;
  return result;
}

uint64_t sub_100198254@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = sub_1000024C4(&qword_10022B7A0, &unk_1001C37F0);
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin(v2);
  v60 = &v54 - v3;
  v4 = sub_1000024C4(&qword_100220CE0, &qword_1001B2E60);
  __chkstk_darwin(v4 - 8);
  v64 = &v54 - v5;
  v6 = sub_1000024C4(&qword_10022B7A8, &qword_1001C3800);
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  __chkstk_darwin(v6);
  v9 = &v54 - v8;
  v10 = sub_1000024C4(&qword_10022B7B0, &unk_1001C3808);
  v54 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v54 - v11;
  v13 = type metadata accessor for PromotionalPlaylistModule(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for PromotionalPlaylistModule;
  v56 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v1;
  sub_10019E71C(v1, v16, type metadata accessor for PromotionalPlaylistModule);
  v17 = *(v14 + 80);
  v18 = swift_allocObject();
  v59 = (v17 + 16) & ~v17;
  sub_10019DB40(v16, v18 + v59);
  v66 = v1;
  sub_1000024C4(&qword_10022B7B8, &qword_1001C3818);
  sub_10019DC08();
  v19 = v12;
  Button.init(action:label:)();
  v20 = type metadata accessor for PlainButtonStyle();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlainButtonStyle.init()();
  v24 = sub_10000BFFC(&qword_10022B838, &qword_10022B7B0, &unk_1001C3808, &protocol conformance descriptor for Button<A>);
  v25 = sub_10019E000(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v21 + 8))(v23, v20);
  (*(v54 + 8))(v19, v10);
  v68 = v10;
  v69 = v20;
  v70 = v24;
  v71 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v57;
  View.accessibilityIdentifier(_:)();
  v27 = (*(v58 + 8))(v9, v26);
  __chkstk_darwin(v27);
  v28 = (&v54 - v56);
  sub_10019E71C(v65, &v54 - v56, v55);
  type metadata accessor for MainActor();
  v29 = static MainActor.shared.getter();
  v30 = (v17 + 32) & ~v17;
  v57 = v15;
  v58 = v17;
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = &protocol witness table for MainActor;
  sub_10019DB40(v28, v31 + v30);
  v32 = type metadata accessor for TaskPriority();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = &v54 - v35;
  static TaskPriority.userInitiated.getter();
  if (sub_1001AD108(2, 26, 4, 0))
  {
    v55 = type metadata accessor for _TaskModifier2();
    v56 = &v54;
    v54 = *(v55 - 1);
    __chkstk_darwin(v55);
    v38 = &v54 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v68 = 0xD00000000000003DLL;
    v69 = 0x80000001001C8CF0;
    v67 = 161;
    v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v39);

    __chkstk_darwin(v40);
    (*(v33 + 16))(&v54 - v35, v36, v32);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v33 + 8))(v36, v32);
    v41 = v60;
    sub_10001AE00(v64, v60, &qword_100220CE0, &qword_1001B2E60);
    v42 = sub_1000024C4(&qword_100220CE8, &qword_1001B2E68);
    v43 = (*(v54 + 32))(v41 + *(v42 + 36), v38, v55);
  }

  else
  {
    v44 = sub_1000024C4(&qword_100220CF0, &qword_1001B2E70);
    v41 = v60;
    v45 = (v60 + *(v44 + 36));
    v46 = type metadata accessor for _TaskModifier();
    (*(v33 + 32))(&v45[*(v46 + 20)], &v54 - v35, v32);
    *v45 = &unk_1001C3860;
    *(v45 + 1) = v31;
    v43 = sub_10001AE00(v64, v41, &qword_100220CE0, &qword_1001B2E60);
  }

  v47 = v57;
  __chkstk_darwin(v43);
  v48 = &v54 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10019E71C(v65, v48, type metadata accessor for PromotionalPlaylistModule);
  v49 = v59;
  v50 = swift_allocObject();
  sub_10019DB40(v48, v50 + v49);
  v51 = v61;
  (*(v62 + 32))(v61, v41, v63);
  result = sub_1000024C4(&qword_10022B840, &qword_1001C3870);
  v53 = (v51 + *(result + 36));
  *v53 = 0;
  v53[1] = 0;
  v53[2] = sub_10019E5A0;
  v53[3] = v50;
  return result;
}

void sub_100198B90()
{
  v1 = type metadata accessor for PromotionalPlaylistModule(0);
  __chkstk_darwin(v1);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OpenURLAction();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001977C8(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000050C4(v9, &qword_1002214F8, &qword_1001B3D20);
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000BE10(v14, qword_100239158);
    v15 = v26;
    sub_10019E71C(v0, v26, type metadata accessor for PromotionalPlaylistModule);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136315138;
      sub_10001BED0((v15 + 40), *(v15 + 64));
      v27[3] = swift_getAssociatedTypeWitness();
      v27[4] = swift_getAssociatedConformanceWitness();
      sub_10005EC40(v27);
      dispatch thunk of Identifiable.id.getter();
      sub_1000024C4(&qword_1002293D0, &qword_1001C0710);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      sub_10019EBD8(v15, type metadata accessor for PromotionalPlaylistModule);
      v23 = sub_100139F7C(v20, v22, &v28);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Promotional playlist URL missing. ID: %s", v18, 0xCu);
      sub_100012A7C(v19);
    }

    else
    {

      sub_10019EBD8(v15, type metadata accessor for PromotionalPlaylistModule);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_100039C90(v6);
    OpenURLAction.callAsFunction(_:)();
    (*(v4 + 8))(v6, v3);
    if (*(v0 + 112))
    {

      sub_1001979E0(v24);

      (*(v11 + 8))(v13, v10);
    }

    else
    {
      type metadata accessor for RemoteViewConfiguration();
      sub_10019E000(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

uint64_t sub_1001990A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v70 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v70);
  v71 = (&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1000024C4(&qword_1002243F0, &qword_1001B8D60);
  __chkstk_darwin(v4 - 8);
  v69 = &v65 - v5;
  v6 = sub_1000024C4(&qword_10022B810, &qword_1001C3840);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v65 - v8;
  v10 = sub_1000024C4(&qword_10022B800, &qword_1001C3838);
  __chkstk_darwin(v10);
  v12 = &v65 - v11;
  v66 = sub_1000024C4(&qword_10022B7F0, &qword_1001C3830);
  __chkstk_darwin(v66);
  v14 = &v65 - v13;
  v67 = sub_1000024C4(&qword_10022B7E0, &qword_1001C3828);
  __chkstk_darwin(v67);
  v16 = &v65 - v15;
  v68 = sub_1000024C4(&qword_10022B7D0, &qword_1001C3820);
  __chkstk_darwin(v68);
  v72 = &v65 - v17;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0x4030000000000000;
  v9[16] = 0;
  v18 = sub_1000024C4(&qword_10022B848, &qword_1001C3878);
  v19 = a1;
  sub_100199884(a1, &v9[*(v18 + 44)]);
  LOBYTE(a1) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v20 = &v9[*(v7 + 44)];
  *v20 = a1;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_1000024C4(&qword_100222388, &qword_1001B73E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  v26 = static Edge.Set.trailing.getter();
  *(inited + 32) = v26;
  v27 = static Edge.Set.vertical.getter();
  *(inited + 33) = v27;
  v28 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v26)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v27)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  sub_10001AE00(v9, v12, &qword_10022B810, &qword_1001C3840);
  v29 = &v12[*(v10 + 36)];
  *v29 = v28;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001AE00(v12, v14, &qword_10022B800, &qword_1001C3838);
  v30 = &v14[*(v66 + 36)];
  v31 = v79;
  *(v30 + 4) = v78;
  *(v30 + 5) = v31;
  *(v30 + 6) = v80;
  v32 = v75;
  *v30 = v74;
  *(v30 + 1) = v32;
  v33 = v77;
  *(v30 + 2) = v76;
  *(v30 + 3) = v33;
  v34 = static Alignment.center.getter();
  v36 = v35;
  v37 = &v16[*(v67 + 36)];
  sub_10019C5FC(v19, v37);
  v38 = (v37 + *(sub_1000024C4(&qword_10022B830, &qword_1001C3850) + 36));
  *v38 = v34;
  v38[1] = v36;
  sub_10001AE00(v14, v16, &qword_10022B7F0, &qword_1001C3830);
  if (qword_100220C68 != -1)
  {
    swift_once();
  }

  v39 = qword_10022B6D8;
  v40 = v72;
  v41 = &v72[*(v68 + 36)];
  v42 = v70;
  v43 = *(v70 + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = type metadata accessor for RoundedCornerStyle();
  v46 = *(*(v45 - 8) + 104);
  v46(v41 + v43, v44, v45);
  *v41 = v39;
  v41[1] = v39;
  *(v41 + *(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)) = 256;
  sub_10001AE00(v16, v40, &qword_10022B7E0, &qword_1001C3828);
  v47 = v71;
  v46(v71 + *(v42 + 20), v44, v45);
  *v47 = v39;
  v47[1] = v39;
  if (*(v19 + 104) == 1)
  {
    if (qword_100220C60 != -1)
    {
      swift_once();
    }

    v48 = Color.opacity(_:)();
  }

  else
  {
    v48 = static Color.clear.getter();
  }

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v49 = v69;
  sub_10019E71C(v47, v69, &type metadata accessor for RoundedRectangle);
  v50 = v49 + *(sub_1000024C4(&qword_100222870, &unk_1001B8DB0) + 36);
  v51 = v82;
  *v50 = v81;
  *(v50 + 16) = v51;
  *(v50 + 32) = v83;
  v52 = sub_1000024C4(&qword_100222878, &unk_1001B64B0);
  *(v49 + *(v52 + 52)) = v48;
  *(v49 + *(v52 + 56)) = 256;
  v53 = static Alignment.center.getter();
  v55 = v54;
  sub_10019EBD8(v47, &type metadata accessor for RoundedRectangle);
  v56 = (v49 + *(sub_1000024C4(&qword_100222880, &unk_1001B8DC0) + 36));
  *v56 = v53;
  v56[1] = v55;
  v57 = static Alignment.center.getter();
  v59 = v58;
  v60 = sub_1000024C4(&qword_10022B7B8, &qword_1001C3818);
  v61 = v73;
  v62 = v73 + *(v60 + 36);
  sub_10001AE00(v49, v62, &qword_1002243F0, &qword_1001B8D60);
  v63 = (v62 + *(sub_1000024C4(&qword_100224440, &qword_1001B9A40) + 36));
  *v63 = v57;
  v63[1] = v59;
  return sub_10001AE00(v40, v61, &qword_10022B7D0, &qword_1001C3820);
}

uint64_t sub_100199884@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_1000024C4(&qword_10022B868, &qword_1001C38A0);
  v4 = __chkstk_darwin(v3 - 8);
  v51 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = (&v45 - v6);
  v45 = sub_1000024C4(&qword_10022B870, &qword_1001C38A8);
  v7 = __chkstk_darwin(v45);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v45 - v10;
  __chkstk_darwin(v9);
  v46 = &v45 - v12;
  v14 = a1[8];
  v13 = a1[9];
  v47 = a1;
  sub_10001BED0(a1 + 5, v14);
  v15 = *(v13 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v45 - v19;
  v15(v14, v13);
  v21 = *(AssociatedTypeWitness - 8);
  if ((*(v21 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v18 + 8))(v20, v17);
    *&v56 = 0;
    v54 = 0u;
    v55 = 0u;
  }

  else
  {
    *(&v55 + 1) = AssociatedTypeWitness;
    *&v56 = swift_getAssociatedConformanceWitness();
    v22 = sub_10005EC40(&v54);
    (*(v21 + 32))(v22, v20, AssociatedTypeWitness);
  }

  v23 = v47;
  sub_10019757C();
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v53 = 0;
  *&v52[7] = v54;
  *&v52[23] = v55;
  *&v52[39] = v56;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v27 = v53;
  if (qword_100220C78 != -1)
  {
    swift_once();
  }

  v28 = qword_10022B6E8;
  v29 = &v11[*(v45 + 36)];
  v30 = *(type metadata accessor for RoundedRectangle() + 20);
  v31 = enum case for RoundedCornerStyle.continuous(_:);
  v32 = type metadata accessor for RoundedCornerStyle();
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = v28;
  v29[1] = v28;
  *(v29 + *(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)) = 256;
  v33 = *&v52[16];
  *(v11 + 9) = *v52;
  *(v11 + 25) = v33;
  *(v11 + 40) = *&v52[31];
  v34 = v55;
  *(v11 + 72) = v54;
  *v11 = KeyPath;
  v11[8] = v27;
  *(v11 + 7) = 96;
  *(v11 + 8) = v25;
  *(v11 + 88) = v34;
  *(v11 + 104) = v56;
  v35 = v11;
  v36 = v46;
  sub_10001AE00(v35, v46, &qword_10022B870, &qword_1001C38A8);
  v37 = static HorizontalAlignment.leading.getter();
  v38 = v49;
  *v49 = v37;
  *(v38 + 8) = 0x4020000000000000;
  *(v38 + 16) = 0;
  v39 = sub_1000024C4(&qword_10022B878, &qword_1001C38E0);
  sub_100199E10(v23, v38 + *(v39 + 44));
  v40 = v48;
  sub_10000BEB8(v36, v48, &qword_10022B870, &qword_1001C38A8);
  v41 = v51;
  sub_10000BEB8(v38, v51, &qword_10022B868, &qword_1001C38A0);
  v42 = v50;
  sub_10000BEB8(v40, v50, &qword_10022B870, &qword_1001C38A8);
  v43 = sub_1000024C4(&qword_10022B880, &qword_1001C38E8);
  sub_10000BEB8(v41, v42 + *(v43 + 48), &qword_10022B868, &qword_1001C38A0);
  sub_1000050C4(v38, &qword_10022B868, &qword_1001C38A0);
  sub_1000050C4(v36, &qword_10022B870, &qword_1001C38A8);
  sub_1000050C4(v41, &qword_10022B868, &qword_1001C38A0);
  return sub_1000050C4(v40, &qword_10022B870, &qword_1001C38A8);
}

uint64_t sub_100199E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v48 = type metadata accessor for PlainButtonStyle();
  v53 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PromotionalPlaylistModule(0);
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  __chkstk_darwin(v4 - 8);
  v50 = sub_1000024C4(&qword_10022B888, &qword_1001C38F0);
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v7 = &v46 - v6;
  v55 = sub_1000024C4(&qword_10022B890, &qword_1001C38F8);
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v9 = &v46 - v8;
  v10 = sub_1000024C4(&qword_10022B898, &qword_1001C3900);
  v11 = __chkstk_darwin(v10 - 8);
  v56 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v54 = &v46 - v13;
  v14 = sub_1000024C4(&qword_10022B8A0, &qword_1001C3908);
  __chkstk_darwin(v14 - 8);
  v16 = &v46 - v15;
  v17 = sub_1000024C4(&qword_10022B8A8, &qword_1001C3910);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v46 - v23;
  __chkstk_darwin(v22);
  v26 = &v46 - v25;
  *v16 = static HorizontalAlignment.leading.getter();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v27 = sub_1000024C4(&qword_10022B8B0, &qword_1001C3918);
  sub_10019A634(a1, &v16[*(v27 + 44)]);
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001AE00(v16, v24, &qword_10022B8A0, &qword_1001C3908);
  v28 = &v24[*(v18 + 44)];
  v29 = v68;
  *(v28 + 4) = v67;
  *(v28 + 5) = v29;
  *(v28 + 6) = v69;
  v30 = v64;
  *v28 = v63;
  *(v28 + 1) = v30;
  v31 = v66;
  *(v28 + 2) = v65;
  *(v28 + 3) = v31;
  v32 = v24;
  v33 = v48;
  sub_10001AE00(v32, v26, &qword_10022B8A8, &qword_1001C3910);
  sub_10019E71C(a1, &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PromotionalPlaylistModule);
  v34 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v35 = swift_allocObject();
  sub_10019DB40(&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
  v58 = a1;
  sub_1000024C4(&qword_10022B8B8, &qword_1001C3920);
  sub_10019E7F4();
  Button.init(action:label:)();
  v36 = v49;
  PlainButtonStyle.init()();
  v37 = sub_10000BFFC(&qword_10022B918, &qword_10022B888, &qword_1001C38F0, &protocol conformance descriptor for Button<A>);
  v38 = sub_10019E000(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v39 = v50;
  View.buttonStyle<A>(_:)();
  (*(v53 + 8))(v36, v33);
  (*(v51 + 8))(v7, v39);
  sub_100197044();
  v59 = v39;
  v60 = v33;
  v61 = v37;
  v62 = v38;
  swift_getOpaqueTypeConformance2();
  v40 = v54;
  v41 = v55;
  View.accessibilityIdentifier(_:)();

  (*(v52 + 8))(v9, v41);
  sub_10000BEB8(v26, v21, &qword_10022B8A8, &qword_1001C3910);
  v42 = v56;
  sub_10000BEB8(v40, v56, &qword_10022B898, &qword_1001C3900);
  v43 = v57;
  sub_10000BEB8(v21, v57, &qword_10022B8A8, &qword_1001C3910);
  v44 = sub_1000024C4(&qword_10022B920, &qword_1001C3958);
  sub_10000BEB8(v42, v43 + *(v44 + 48), &qword_10022B898, &qword_1001C3900);
  sub_1000050C4(v40, &qword_10022B898, &qword_1001C3900);
  sub_1000050C4(v26, &qword_10022B8A8, &qword_1001C3910);
  sub_1000050C4(v42, &qword_10022B898, &qword_1001C3900);
  return sub_1000050C4(v21, &qword_10022B8A8, &qword_1001C3910);
}

uint64_t sub_10019A634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for ContentSizeCategory();
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = __chkstk_darwin(v3);
  v82 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v81 = (&v75 - v6);
  v7 = sub_1000024C4(&qword_100221B10, &qword_1001B4F50);
  v8 = __chkstk_darwin(v7 - 8);
  v87 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v75 - v10;
  v76 = sub_1000024C4(&qword_100223B60, &qword_1001B8DF0) - 8;
  __chkstk_darwin(v76);
  v12 = &v75 - v11;
  v79 = sub_1000024C4(&qword_10022B980, &qword_1001C3A58);
  __chkstk_darwin(v79);
  v77 = &v75 - v13;
  v80 = sub_1000024C4(&qword_10022B988, &qword_1001C3A60);
  __chkstk_darwin(v80);
  v78 = &v75 - v14;
  v15 = sub_1000024C4(&qword_10022B990, &qword_1001C3A68);
  v16 = __chkstk_darwin(v15 - 8);
  v83 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v89 = &v75 - v18;
  v90 = a1;

  v19 = Text.init(_:tableName:bundle:comment:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v12[*(sub_1000024C4(&qword_100221B68, &unk_1001B4FF0) + 36)];
  v27 = *(sub_1000024C4(&qword_100221B70, &qword_1001B7140) + 28);
  v28 = enum case for Text.Case.uppercase(_:);
  v29 = type metadata accessor for Text.Case();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v26 + v27, v28, v29);
  (*(v30 + 56))(v26 + v27, 0, 1, v29);
  *v26 = swift_getKeyPath();
  *v12 = v19;
  *(v12 + 1) = v21;
  v12[16] = v23 & 1;
  *(v12 + 3) = v25;
  static Font.caption2.getter();
  static Font.Weight.bold.getter();
  v31 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v33 = &v12[*(v76 + 44)];
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = *(v90 + 104);
  if (v34 == 1)
  {
    if (qword_100220C60 != -1)
    {
      swift_once();
    }

    v35 = qword_10022B6D0;
  }

  else
  {
    v35 = static Color.primary.getter();
  }

  v36 = v12;
  v37 = v77;
  sub_10001AE00(v36, v77, &qword_100223B60, &qword_1001B8DF0);
  *(v37 + *(v79 + 36)) = v35;
  v38 = v78;
  sub_10001AE00(v37, v78, &qword_10022B980, &qword_1001C3A58);
  *(v38 + *(v80 + 36)) = 0x3FE0000000000000;
  sub_10019EC40();
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v38, &qword_10022B988, &qword_1001C3A60);
  v39 = *(v90 + 64);
  v40 = *(v90 + 72);
  sub_10001BED0((v90 + 40), v39);
  v91 = (*(v40 + 64))(v39, v40);
  v92 = v41;
  sub_10001877C(v91, v41, v42);
  v43 = Text.init<A>(_:)();
  v45 = v44;
  LOBYTE(v38) = v46;
  static Font.subheadline.getter();
  v47 = Text.font(_:)();
  v49 = v48;
  v51 = v50;

  sub_100017398(v43, v45, v38 & 1);

  if (v34)
  {
    if (qword_100220C60 != -1)
    {
      swift_once();
    }

    v52 = qword_10022B6D0;
  }

  else
  {
    v52 = static Color.primary.getter();
  }

  v91 = v52;
  v53 = Text.foregroundStyle<A>(_:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  sub_100017398(v47, v49, v51 & 1);

  type metadata accessor for PromotionalPlaylistModule(0);
  v60 = v81;
  sub_10003A100(v81);
  v62 = v84;
  v61 = v85;
  v63 = v82;
  (*(v84 + 104))(v82, enum case for ContentSizeCategory.accessibilityMedium(_:), v85);
  v64 = sub_100172140(v60, v63);
  v65 = *(v62 + 8);
  v65(v63, v61);
  v65(v60, v61);
  if (v64)
  {
    v66 = 3;
  }

  else
  {
    v66 = 2;
  }

  v67 = swift_getKeyPath();
  v91 = v53;
  v92 = v55;
  v93 = v57 & 1;
  v94 = v59;
  v95 = v67;
  v96 = v66;
  v97 = 0;
  sub_1000024C4(&qword_100221B38, &unk_1001B4FA0);
  sub_10001B3F8();
  v68 = v86;
  View.accessibilityIdentifier(_:)();
  sub_100017398(v53, v55, v57 & 1);

  v69 = v89;
  v70 = v83;
  sub_10000BEB8(v89, v83, &qword_10022B990, &qword_1001C3A68);
  v71 = v87;
  sub_10000BEB8(v68, v87, &qword_100221B10, &qword_1001B4F50);
  v72 = v88;
  sub_10000BEB8(v70, v88, &qword_10022B990, &qword_1001C3A68);
  v73 = sub_1000024C4(&qword_10022B9A8, &qword_1001C3AD8);
  sub_10000BEB8(v71, v72 + *(v73 + 48), &qword_100221B10, &qword_1001B4F50);
  sub_1000050C4(v68, &qword_100221B10, &qword_1001B4F50);
  sub_1000050C4(v69, &qword_10022B990, &qword_1001C3A68);
  sub_1000050C4(v71, &qword_100221B10, &qword_1001B4F50);
  return sub_1000050C4(v70, &qword_10022B990, &qword_1001C3A68);
}

void sub_10019AEF8(void *a1)
{
  if (sub_100197044() > 2u)
  {
    sub_100198B90();
  }

  else
  {
    v2 = a1[8];
    v3 = a1[9];
    sub_10001BED0(a1 + 5, v2);
    (*(v3 + 104))(v2, v3);
    swift_getAssociatedTypeWitness();
    sub_1000024C4(&qword_10022B6C8, &qword_1001C3650);
    v4 = _arrayForceCast<A, B>(_:)();

    sub_10013F10C(v4);

    if (a1[14])
    {

      sub_100197CF4(v5);
    }

    else
    {
      type metadata accessor for RemoteViewConfiguration();
      sub_10019E000(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

uint64_t sub_10019B080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  v12 = sub_1000024C4(&qword_10022B8F0, &qword_1001C3938);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v56 - v14;
  v57 = sub_1000024C4(&qword_10022B8E0, &qword_1001C3930);
  __chkstk_darwin(v57);
  v17 = &v56 - v16;
  v61 = sub_1000024C4(&qword_10022B8C8, &qword_1001C3928);
  __chkstk_darwin(v61);
  v19 = &v56 - v18;
  v20 = sub_1000024C4(&qword_10022B928, &qword_1001C3960);
  v63 = *(v20 - 8);
  v64 = v20;
  __chkstk_darwin(v20);
  v62 = &v56 - v21;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v22 = sub_1000024C4(&qword_10022B930, &qword_1001C3968);
  sub_10019B84C(a1, &v15[*(v22 + 44)]);
  v23 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v15[*(sub_1000024C4(&qword_10022B900, &qword_1001C3940) + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v34 = &v15[*(v13 + 44)];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  if (*(a1 + 104) == 1)
  {
    if (qword_100220C60 != -1)
    {
      swift_once();
    }

    v39 = Color.opacity(_:)();
    v41 = v61;
    v40 = v62;
  }

  else
  {
    type metadata accessor for PromotionalPlaylistModule(0);
    v56 = a1;
    sub_100039EE0(v11);
    (*(v6 + 104))(v9, enum case for ColorScheme.light(_:), v5);
    v42 = static ColorScheme.== infix(_:_:)();
    v43 = *(v6 + 8);
    v43(v9, v5);
    v43(v11, v5);
    if (v42)
    {
      v41 = v61;
      v40 = v62;
      if (qword_100220C88 != -1)
      {
        swift_once();
      }

      v39 = qword_10022B6F8;
    }

    else
    {
      v41 = v61;
      v40 = v62;
      if (qword_100220C60 != -1)
      {
        swift_once();
      }

      v39 = Color.opacity(_:)();
    }
  }

  v44 = static Edge.Set.all.getter();
  sub_10001AE00(v15, v17, &qword_10022B8F0, &qword_1001C3938);
  v45 = &v17[*(v57 + 36)];
  *v45 = v39;
  v45[8] = v44;
  if (qword_100220C80 != -1)
  {
    swift_once();
  }

  v46 = qword_10022B6F0;
  v47 = &v19[*(v41 + 36)];
  v48 = *(type metadata accessor for RoundedRectangle() + 20);
  v49 = enum case for RoundedCornerStyle.continuous(_:);
  v50 = type metadata accessor for RoundedCornerStyle();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = v46;
  v47[1] = v46;
  *(v47 + *(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)) = 256;
  sub_10001AE00(v17, v19, &qword_10022B8E0, &qword_1001C3930);
  v51 = v58;
  static AccessibilityChildBehavior.ignore.getter();
  v52 = sub_10019E8EC();
  View.accessibilityElement(children:)();
  (*(v59 + 8))(v51, v60);
  sub_1000050C4(v19, &qword_10022B8C8, &qword_1001C3928);
  v53 = sub_100197044();
  if ((v53 - 1) < 2)
  {
    if (qword_100220C48 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (!v53)
  {
    if (qword_100220C40 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (qword_100220C50 != -1)
  {
LABEL_22:
    swift_once();
  }

LABEL_21:

  v66 = v41;
  v67 = v52;
  swift_getOpaqueTypeConformance2();
  v54 = v64;
  View.accessibilityLabel(_:)();

  return (*(v63 + 8))(v40, v54);
}

uint64_t sub_10019B84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for ColorScheme();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = __chkstk_darwin(v3);
  v48 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v47 = v46 - v6;
  v7 = sub_1000024C4(&qword_10022B938, &qword_1001C3970);
  v8 = __chkstk_darwin(v7 - 8);
  v52 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = (v46 - v10);
  *v11 = static Alignment.leading.getter();
  v11[1] = v12;
  v13 = sub_1000024C4(&qword_10022B940, &qword_1001C3978);
  sub_10019BD78(a1, (v11 + *(v13 + 44)));
  v51 = a1;
  v14 = sub_100197044();
  if ((v14 - 1) < 2)
  {
    if (qword_100220C48 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (v14)
  {
    if (qword_100220C50 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (qword_100220C40 != -1)
  {
LABEL_17:
    swift_once();
  }

LABEL_8:

  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_100017398(v15, v17, v19 & 1);

  if (*(v51 + 104))
  {
    if (qword_100220C60 != -1)
    {
      swift_once();
    }

    v27 = qword_10022B6D0;
  }

  else
  {
    v46[1] = v26;
    type metadata accessor for PromotionalPlaylistModule(0);
    v28 = v47;
    sub_100039EE0(v47);
    v30 = v48;
    v29 = v49;
    v31 = v50;
    (*(v49 + 104))(v48, enum case for ColorScheme.light(_:), v50);
    v32 = static ColorScheme.== infix(_:_:)();
    v33 = *(v29 + 8);
    v33(v30, v31);
    v33(v28, v31);
    if (v32)
    {
      v34 = static Color.blue.getter();
    }

    else
    {
      v34 = static Color.primary.getter();
    }

    v27 = v34;
  }

  v54 = v27;
  v35 = Text.foregroundStyle<A>(_:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_100017398(v20, v22, v24 & 1);

  v42 = v52;
  sub_10000BEB8(v11, v52, &qword_10022B938, &qword_1001C3970);
  v43 = v53;
  sub_10000BEB8(v42, v53, &qword_10022B938, &qword_1001C3970);
  v44 = v43 + *(sub_1000024C4(&qword_10022B948, &qword_1001C3980) + 48);
  *v44 = v35;
  *(v44 + 8) = v37;
  v39 &= 1u;
  *(v44 + 16) = v39;
  *(v44 + 24) = v41;
  sub_1000187D8(v35, v37, v39);

  sub_1000050C4(v11, &qword_10022B938, &qword_1001C3970);
  sub_100017398(v35, v37, v39);

  return sub_1000050C4(v42, &qword_10022B938, &qword_1001C3970);
}

uint64_t sub_10019BD78@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v40 = a2;
  v3 = sub_1000024C4(&qword_10022B950, &qword_1001C3988);
  v44 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v35 - v4;
  v6 = sub_1000024C4(&qword_10022B958, &qword_1001C3990);
  v7 = __chkstk_darwin(v6 - 8);
  v45 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v11 = sub_100197044();
  if ((v11 - 1) >= 2 && v11)
  {
    v48 = 0;
    v49 = 0;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    v46 = 0;
    v47 = 0;
    v12 = 0;
  }

  else
  {
    v49 = static VerticalAlignment.center.getter();
    v56 = 0;
    sub_10019C290(a1, &v51);
    v59 = v53;
    v60 = v54;
    *&v61 = v55;
    v57 = v51;
    v58 = v52;
    v65 = v53;
    v66 = v54;
    v67 = v55;
    v63 = v51;
    v64 = v52;
    sub_10000BEB8(&v57, &v50, &qword_10022B978, &qword_1001C3A20);
    sub_1000050C4(&v63, &qword_10022B978, &qword_1001C3A20);

    v42 = *(&v57 + 1);
    v43 = v57;
    v41 = v58;
    v38 = *(&v59 + 1);
    v39 = *(&v58 + 1);
    v47 = *(&v60 + 1);
    v37 = v60;
    v48 = v59;
    v46 = v61;
    v12 = v56;
  }

  if (sub_100197044() == 2)
  {
    ProgressView<>.init<>()();
    if (qword_100220C60 != -1)
    {
      swift_once();
    }

    v13 = qword_10022B6D0;
    KeyPath = swift_getKeyPath();
    *&v63 = v13;

    v15 = AnyShapeStyle.init<A>(_:)();
    v16 = &v5[*(sub_1000024C4(&qword_100222888, &qword_1001B64C0) + 36)];
    *v16 = KeyPath;
    v16[1] = v15;
    *&v5[*(sub_1000024C4(&qword_10022B970, &unk_1001C39E0) + 36)] = 257;
    v17 = &v5[*(v3 + 36)];
    v18 = *(sub_1000024C4(&qword_100223890, &qword_1001B7C40) + 28);
    v19 = enum case for ControlSize.small(_:);
    v20 = type metadata accessor for ControlSize();
    (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
    *v17 = swift_getKeyPath();
    sub_10001AE00(v5, v10, &qword_10022B950, &qword_1001C3988);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v44 + 56))(v10, v21, 1, v3);
  v22 = v45;
  sub_10000BEB8(v10, v45, &qword_10022B958, &qword_1001C3990);
  v57 = v49;
  v23 = v43;
  *&v58 = v12;
  *(&v58 + 1) = v43;
  v36 = v10;
  v24 = v42;
  v44 = v12;
  v26 = v40;
  v25 = v41;
  *&v59 = v42;
  *(&v59 + 1) = v41;
  v28 = v38;
  v27 = v39;
  *&v60 = v39;
  *(&v60 + 1) = v48;
  v29 = v37;
  *&v61 = v38;
  *(&v61 + 1) = v37;
  *&v62 = v47;
  *(&v62 + 1) = v46;
  v30 = v60;
  v40[2] = v59;
  v26[3] = v30;
  v31 = v62;
  v26[4] = v61;
  v26[5] = v31;
  v32 = v58;
  *v26 = v57;
  v26[1] = v32;
  v33 = sub_1000024C4(&qword_10022B960, &qword_1001C3998);
  sub_10000BEB8(v22, v26 + *(v33 + 48), &qword_10022B958, &qword_1001C3990);
  sub_10000BEB8(&v57, &v63, &qword_10022B968, &qword_1001C39A0);
  sub_1000050C4(v36, &qword_10022B958, &qword_1001C3990);
  sub_1000050C4(v22, &qword_10022B958, &qword_1001C3990);
  v63 = v49;
  *&v64 = v44;
  *(&v64 + 1) = v23;
  *&v65 = v24;
  *(&v65 + 1) = v25;
  *&v66 = v27;
  *(&v66 + 1) = v48;
  v67 = v28;
  v68 = v29;
  v69 = v47;
  v70 = v46;
  return sub_1000050C4(&v63, &qword_10022B968, &qword_1001C39A0);
}

uint64_t sub_10019C290@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for ColorScheme();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;

  v41 = Image.init(systemName:)();
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  v40 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  if (*(a3 + 104) == 1)
  {
    if (qword_100220C60 != -1)
    {
      swift_once();
    }

    v38 = qword_10022B6D0;
  }

  else
  {
    type metadata accessor for PromotionalPlaylistModule(0);
    sub_100039EE0(v12);
    (*(v7 + 104))(v10, enum case for ColorScheme.light(_:), v6);
    v13 = static ColorScheme.== infix(_:_:)();
    v14 = *(v7 + 8);
    v14(v10, v6);
    v14(v12, v6);
    if (v13)
    {
      v15 = static Color.blue.getter();
    }

    else
    {
      v15 = static Color.primary.getter();
    }

    v38 = v15;
  }

  v16 = sub_100197044();
  if (v16 == 2)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 1.0;
  }

  v42 = 32;
  v43 = 0xE100000000000000;
  sub_10001877C(v16, v17, v18);
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_100017398(v20, v22, v24 & 1);

  v32 = v29 & 1;
  LOBYTE(v42) = v29 & 1;
  v33 = v40;
  v35 = v38;
  v34 = KeyPath;
  *a4 = v41;
  *(a4 + 8) = v34;
  *(a4 + 16) = v33;
  *(a4 + 24) = v35;
  *(a4 + 32) = v19;
  *(a4 + 40) = v25;
  *(a4 + 48) = v27;
  *(a4 + 56) = v32;
  *(a4 + 64) = v31;

  sub_1000187D8(v25, v27, v32);

  sub_100017398(v25, v27, v32);
}

void sub_10019C5FC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for BlendMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000024C4(&qword_10022B850, &qword_1001C3880);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v33 = sub_1000024C4(&qword_10022B858, &unk_1001C3888);
  v10 = __chkstk_darwin(v33);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - v13;
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  v17 = *(a1 + 104);
  if (v17 == 1)
  {
    if (qword_100220C70 != -1)
    {
      swift_once();
    }

    v34 = qword_10022B6E0;

    sub_10019757C();
    v18 = Color.opacity(_:)();

    v19 = &enum case for BlendMode.plusDarker(_:);
  }

  else
  {
    v34 = static Color.clear.getter();
    v20 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v18 = Color.init(uiColor:)();
    v19 = &enum case for BlendMode.normal(_:);
  }

  (*(v4 + 104))(v6, *v19, v3);
  (*(v4 + 32))(&v9[*(v7 + 36)], v6, v3);
  *v9 = v18;
  *(v9 + 4) = 256;
  v21 = static Alignment.center.getter();
  v23 = v22;
  sub_1000024C4(&qword_100221D18, &qword_1001BF6A0);
  if (v17)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1001B3B50;
    if (qword_100220C60 != -1)
    {
      swift_once();
    }

    *(v24 + 32) = Color.opacity(_:)();
    *(v24 + 40) = Color.opacity(_:)();
  }

  else
  {
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1001B49B0;
    *(v25 + 32) = static Color.clear.getter();
  }

  static UnitPoint.topTrailing.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v26 = v37;
  sub_10001AE00(v9, v14, &qword_10022B850, &qword_1001C3880);
  v27 = &v14[*(v33 + 36)];
  *v27 = v26;
  v28 = v38;
  *(v27 + 24) = v39;
  *(v27 + 8) = v28;
  *(v27 + 5) = v21;
  *(v27 + 6) = v23;
  sub_10001AE00(v14, v16, &qword_10022B858, &unk_1001C3888);
  v29 = v35;
  sub_10000BEB8(v16, v35, &qword_10022B858, &unk_1001C3888);
  v30 = v36;
  *v36 = v34;
  *(v30 + 4) = 256;
  v31 = sub_1000024C4(&qword_10022B860, &qword_1001C3898);
  sub_10000BEB8(v29, v30 + *(v31 + 48), &qword_10022B858, &unk_1001C3888);

  sub_1000050C4(v16, &qword_10022B858, &unk_1001C3888);
  sub_1000050C4(v29, &qword_10022B858, &unk_1001C3888);
}

uint64_t sub_10019CAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10019CB44, v5, v4);
}

uint64_t sub_10019CB44()
{
  v1 = *(v0 + 16);

  sub_10008C108();
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 48);
  sub_10001BED0((*v1 + 16), v2);
  (*(v3 + 72))(v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

void *sub_10019CBE8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BEB8(v1 + 16, v23, &qword_100221AB8, &qword_1001B4EA0);
  if (!v24)
  {
    sub_1000050C4(v23, &qword_100221AB8, &qword_1001B4EA0);
    v18 = type metadata accessor for URL();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  v21 = a1;
  v7 = v25;
  result = sub_10001BED0(v23, v24);
  v20[1] = result;
  v9 = *(v1 + 56);
  v10 = *v1;
  v11 = *(v1 + 8);
  if (v11 == 1)
  {
    v12 = *v1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v10, 0);
    result = (*(v4 + 8))(v6, v3);
    v12 = v22;
  }

  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = v9 * v12;
  if ((v9 * v12) >> 64 != v14 >> 63)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v11)
  {
    v15 = *&v10;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v10, 0);
    result = (*(v4 + 8))(v6, v3);
    v15 = v22;
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v9 * v15) >> 64 != (v9 * v15) >> 63)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v17 = v21;
  (*(v7 + 40))(v14);
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  return sub_100012A7C(v23);
}

uint64_t sub_10019CFC4()
{
  v1 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_1000024C4(&qword_100229B98, &unk_1001C0FF8);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  sub_10019CBE8(v3);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  sub_10019D4D0(v0, v13);
  v7 = swift_allocObject();
  v8 = v13[3];
  *(v7 + 48) = v13[2];
  *(v7 + 64) = v8;
  *(v7 + 80) = v14;
  v9 = v13[1];
  *(v7 + 16) = v13[0];
  *(v7 + 32) = v9;
  sub_1000024C4(&qword_100223280, &qword_1001B7100);
  sub_100057330();
  AsyncImage.init(url:scale:transaction:content:)();
  v10 = &v6[*(sub_1000024C4(&qword_100229BA0, &qword_1001C1008) + 36)];
  *v10 = 0x3FF0000000000000;
  *(v10 + 4) = 0;
  v6[*(v4 + 36)] = 1;
  sub_100150B40();
  View.accessibilityIdentifier(_:)();
  return sub_1000050C4(v6, &qword_100229B98, &unk_1001C0FF8);
}

void sub_10019D1D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AsyncImagePhase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  if ((*(v11 + 88))(v13, v10) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    v14 = Image.resizable(capInsets:resizingMode:)();
    (*(v7 + 8))(v9, v6);
    v17 = v14;
    v18 = 0;
    swift_retain_n();
    sub_1000024C4(&qword_100223298, &unk_1001BDBE0);
    sub_1000573BC();
    _ConditionalContent<>.init(storage:)();

    v15 = v19;
    v16 = v20;
  }

  else
  {
    v17 = *(a2 + 64);
    v18 = 1;

    sub_1000024C4(&qword_100223298, &unk_1001BDBE0);
    sub_1000573BC();
    _ConditionalContent<>.init(storage:)();
    v15 = v19;
    v16 = v20;
    (*(v11 + 8))(v13, v10);
  }

  *a3 = v15;
  *(a3 + 8) = v16;
}

uint64_t sub_10019D508()
{
  sub_10001BC5C(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    sub_100012A7C((v0 + 32));
  }

  return swift_deallocObject();
}

unint64_t sub_10019D568()
{
  result = qword_100229BC8;
  if (!qword_100229BC8)
  {
    sub_10000460C(&qword_100229BD0, &unk_1001C3770);
    sub_100150B40();
    sub_10019E000(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229BC8);
  }

  return result;
}

uint64_t sub_10019D638(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1000024C4(&qword_1002222A0, &unk_1001B5960);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_1000024C4(&qword_100221B80, &unk_1001B72D0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_1000024C4(qword_100228110, &qword_1001BEB48);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[8]];

  return v15(v16, a2, v14);
}

char *sub_10019D7DC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1000024C4(&qword_1002222A0, &unk_1001B5960);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1000024C4(&qword_100221B80, &unk_1001B72D0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_1000024C4(qword_100228110, &qword_1001BEB48);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for PromotionalPlaylistModule(uint64_t a1)
{
  result = qword_10022B758;
  if (!qword_10022B758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10019D9B8(uint64_t a1)
{
  sub_100017044(319);
  if (v1 <= 0x3F)
  {
    sub_10019DAD0(319, &qword_1002219C0, &type metadata accessor for OpenURLAction);
    if (v2 <= 0x3F)
    {
      sub_10019DAD0(319, &qword_100221C00, &type metadata accessor for ColorScheme);
      if (v3 <= 0x3F)
      {
        sub_10019DAD0(319, &qword_100226230, &type metadata accessor for ContentSizeCategory);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10019DAD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10019DB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromotionalPlaylistModule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10019DC08()
{
  result = qword_10022B7C0;
  if (!qword_10022B7C0)
  {
    sub_10000460C(&qword_10022B7B8, &qword_1001C3818);
    sub_10019DCC0();
    sub_10000BFFC(&qword_100227AF8, &qword_100224440, &qword_1001B9A40, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B7C0);
  }

  return result;
}

unint64_t sub_10019DCC0()
{
  result = qword_10022B7C8;
  if (!qword_10022B7C8)
  {
    sub_10000460C(&qword_10022B7D0, &qword_1001C3820);
    sub_10019DD78();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80, &qword_1001B6990, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B7C8);
  }

  return result;
}

unint64_t sub_10019DD78()
{
  result = qword_10022B7D8;
  if (!qword_10022B7D8)
  {
    sub_10000460C(&qword_10022B7E0, &qword_1001C3828);
    sub_10019DE30();
    sub_10000BFFC(&qword_10022B828, &qword_10022B830, &qword_1001C3850, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B7D8);
  }

  return result;
}

unint64_t sub_10019DE30()
{
  result = qword_10022B7E8;
  if (!qword_10022B7E8)
  {
    sub_10000460C(&qword_10022B7F0, &qword_1001C3830);
    sub_10019DEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B7E8);
  }

  return result;
}

unint64_t sub_10019DEBC()
{
  result = qword_10022B7F8;
  if (!qword_10022B7F8)
  {
    sub_10000460C(&qword_10022B800, &qword_1001C3838);
    sub_10019DF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B7F8);
  }

  return result;
}

unint64_t sub_10019DF48()
{
  result = qword_10022B808;
  if (!qword_10022B808)
  {
    sub_10000460C(&qword_10022B810, &qword_1001C3840);
    sub_10000BFFC(&qword_10022B818, &qword_10022B820, &qword_1001C3848, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B808);
  }

  return result;
}

uint64_t sub_10019E000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10019E048()
{
  v1 = type metadata accessor for PromotionalPlaylistModule(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  sub_100012A7C((v0 + v2 + 40));

  v4 = v1[6];
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for OpenURLAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[7];
  sub_1000024C4(&qword_1002216C8, &qword_1001B6B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[8];
  sub_1000024C4(&qword_1002229F8, &qword_1001BBE60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ContentSizeCategory();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10019E288()
{
  v2 = *(type metadata accessor for PromotionalPlaylistModule(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000BD00;

  return sub_10019CAAC(v4, v5, v0 + v3);
}

uint64_t sub_10019E368()
{
  v1 = type metadata accessor for PromotionalPlaylistModule(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  sub_100012A7C((v2 + 40));

  v3 = v1[6];
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenURLAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[7];
  sub_1000024C4(&qword_1002216C8, &qword_1001B6B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[8];
  sub_1000024C4(&qword_1002229F8, &qword_1001BBE60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ContentSizeCategory();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10019E5A0()
{
  v1 = *(type metadata accessor for PromotionalPlaylistModule(0) - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v3 = v2[5];
  v4 = v2[6];
  sub_10001BED0(v2 + 2, v3);
  return (*(v4 + 80))(v3, v4);
}

uint64_t sub_10019E654(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.controlSize.setter();
}

uint64_t sub_10019E71C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10019E78C()
{
  v1 = *(type metadata accessor for PromotionalPlaylistModule(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_10019AEF8(v2);
}

unint64_t sub_10019E7F4()
{
  result = qword_10022B8C0;
  if (!qword_10022B8C0)
  {
    sub_10000460C(&qword_10022B8B8, &qword_1001C3920);
    sub_10000460C(&qword_10022B8C8, &qword_1001C3928);
    sub_10019E8EC();
    swift_getOpaqueTypeConformance2();
    sub_10019E000(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B8C0);
  }

  return result;
}

unint64_t sub_10019E8EC()
{
  result = qword_10022B8D0;
  if (!qword_10022B8D0)
  {
    sub_10000460C(&qword_10022B8C8, &qword_1001C3928);
    sub_10019E9A4();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80, &qword_1001B6990, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B8D0);
  }

  return result;
}

unint64_t sub_10019E9A4()
{
  result = qword_10022B8D8;
  if (!qword_10022B8D8)
  {
    sub_10000460C(&qword_10022B8E0, &qword_1001C3930);
    sub_10019EA5C();
    sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B8D8);
  }

  return result;
}

unint64_t sub_10019EA5C()
{
  result = qword_10022B8E8;
  if (!qword_10022B8E8)
  {
    sub_10000460C(&qword_10022B8F0, &qword_1001C3938);
    sub_10019EAE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B8E8);
  }

  return result;
}

unint64_t sub_10019EAE8()
{
  result = qword_10022B8F8;
  if (!qword_10022B8F8)
  {
    sub_10000460C(&qword_10022B900, &qword_1001C3940);
    sub_10000BFFC(&qword_10022B908, &qword_10022B910, &unk_1001C3948, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B8F8);
  }

  return result;
}

uint64_t sub_10019EBD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10019EC40()
{
  result = qword_10022B998;
  if (!qword_10022B998)
  {
    sub_10000460C(&qword_10022B988, &qword_1001C3A60);
    sub_10019ECCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B998);
  }

  return result;
}

unint64_t sub_10019ECCC()
{
  result = qword_10022B9A0;
  if (!qword_10022B9A0)
  {
    sub_10000460C(&qword_10022B980, &qword_1001C3A58);
    sub_10008246C();
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8, &qword_1001B6490, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B9A0);
  }

  return result;
}

unint64_t sub_10019ED90()
{
  result = qword_10022B9B0;
  if (!qword_10022B9B0)
  {
    sub_10000460C(&qword_10022B840, &qword_1001C3870);
    sub_10000460C(&qword_100220CE0, &qword_1001B2E60);
    sub_10019EE58();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022B9B0);
  }

  return result;
}

unint64_t sub_10019EE58()
{
  result = qword_10022B9B8[0];
  if (!qword_10022B9B8[0])
  {
    sub_10000460C(&qword_100220CE0, &qword_1001B2E60);
    sub_10000460C(&qword_10022B7B0, &unk_1001C3808);
    type metadata accessor for PlainButtonStyle();
    sub_10000BFFC(&qword_10022B838, &qword_10022B7B0, &unk_1001C3808, &protocol conformance descriptor for Button<A>);
    sub_10019E000(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10019E000(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, qword_10022B9B8);
  }

  return result;
}

uint64_t sub_10019EFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000024C4(&qword_100227360, &qword_1001B5D80);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000BEB8(a3, v22 - v9, &qword_100227360, &qword_1001B5D80);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000050C4(v10, &qword_100227360, &qword_1001B5D80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000050C4(a3, &qword_100227360, &qword_1001B5D80);

      return v20;
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

  sub_1000050C4(a3, &qword_100227360, &qword_1001B5D80);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10019F288@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v8 = type metadata accessor for PhoneWallpaperView(0, *(v6 + 80), *(v6 + 88), v7);
  sub_10019F450(a2);
  v9 = a4 + *(v8 + 40);
  State.init(wrappedValue:)();
  *v9 = v13;
  *(v9 + 8) = v14;
  v10 = (a4 + *(v8 + 44));
  type metadata accessor for RemoteViewConfiguration();
  sub_10004527C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.init()();
  *v10 = result;
  v10[1] = v12;
  return result;
}

uint64_t sub_10019F410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhoneWallpaperViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v5;
}

uint64_t sub_10019F450(uint64_t a1)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  (*(v5 + 16))(&v8 - v6, a1, v4);
  State.init(wrappedValue:)();
  return (*(v5 + 8))(a1, v4);
}

void sub_10019F544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhoneWallpaperViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  if (v4 <= 0x3F)
  {
    type metadata accessor for Optional();
    type metadata accessor for State();
    if (v5 <= 0x3F)
    {
      sub_1001A75EC(319, &qword_1002231A8, &type metadata accessor for State);
      if (v6 <= 0x3F)
      {
        sub_100017044(319);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10019F64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhoneWallpaperViewModel(255, *(a3 + 16), *(a3 + 24), a4);
  v7 = type metadata accessor for Bindable();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_5:

    return v10(v11, a2, v9);
  }

  type metadata accessor for Optional();
  v12 = type metadata accessor for State();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 40) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_10019F7A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for PhoneWallpaperViewModel(255, *(a4 + 16), *(a4 + 24), a4);
  v8 = type metadata accessor for Bindable();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    type metadata accessor for Optional();
    result = type metadata accessor for State();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10019F920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v44 = sub_10000460C(&qword_100222B98, &unk_1001B6800);
  v3 = *(a1 + 16);
  v45 = a1;
  type metadata accessor for Array();
  sub_10000460C(&qword_100222BA0, &unk_1001C3B70);
  swift_getWitnessTable();
  v4 = *(a1 + 24);
  v65 = *(v4 + 8);
  type metadata accessor for ForEach();
  v60 = sub_1001A4248(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v43 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v5 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = v5;
  v64 = v65;
  v7 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v8 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for Optional();
  v61 = OpaqueTypeMetadata2;
  v62 = v7;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v55 = *(v65 + 8);
  v61 = v8;
  v62 = v9;
  v63 = WitnessTable;
  v64 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022BA40, &qword_1001C3B80);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_10022BA48, &qword_1001C3B88);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PageControl(255, v3, v55, v11);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  v12 = v4;
  _s16EventViewService17SelectAssetButtonVMa_0(255, v3, v4, v13);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v14 = type metadata accessor for VStack();
  v40 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for ModifiedContent();
  v42 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v38 - v18;
  sub_10000460C(&qword_100222BD8, &unk_1001C3B90);
  v20 = type metadata accessor for ModifiedContent();
  v44 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v39 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v41 = &v38 - v23;
  v48 = v3;
  v49 = v12;
  v50 = v46;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  static Edge.Set.top.getter();
  v24 = v45;
  sub_10019F410(v45, v25, v26, v27);
  sub_1001AADE0();

  v28 = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v40 + 8))(v16, v14);
  sub_10019F410(v24, v29, v30, v31);
  LOBYTE(OpaqueTypeMetadata2) = sub_1001AADE0();

  LOBYTE(v61) = (OpaqueTypeMetadata2 & 1) == 0;
  static Alignment.center.getter();
  sub_1000024C4(&qword_100222BE0, &unk_1001B6830);
  v53 = v28;
  v54 = &protocol witness table for _PaddingLayout;
  v32 = swift_getWitnessTable();
  sub_1001A4248(&qword_100222BE8, &qword_100222BE0, &unk_1001B6830, sub_1000421E8);
  v33 = v39;
  View.background<A>(_:alignment:)();
  (*(v42 + 8))(v19, v17);
  v34 = sub_10000BFFC(&qword_100222BF8, &qword_100222BD8, &unk_1001C3B90, &protocol conformance descriptor for _BackgroundModifier<A>);
  v51 = v32;
  v52 = v34;
  swift_getWitnessTable();
  v35 = v41;
  sub_1000EE87C();
  v36 = *(v44 + 8);
  v36(v33, v20);
  sub_1000EE87C();
  return (v36)(v35, v20);
}

uint64_t sub_1001A0314@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v151 = a1;
  v140 = a4;
  v7 = _s16EventViewService17SelectAssetButtonVMa_0(0, a2, a3, a5);
  v137 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v124 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v123 = &v119 - v10;
  v11 = type metadata accessor for Optional();
  v119 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v134 = &v119 - v13;
  v135 = *(a2 - 8);
  v14 = __chkstk_darwin(v12);
  v122 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v121 = &v119 - v16;
  v142 = v7;
  v141 = type metadata accessor for Optional();
  v136 = *(v141 - 8);
  v17 = __chkstk_darwin(v141);
  v139 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v138 = &v119 - v19;
  v150 = type metadata accessor for PhoneWallpaperView(0, a2, a3, v20);
  v132 = *(v150 - 8);
  v130 = v132[8];
  __chkstk_darwin(v150);
  v131 = &v119 - v21;
  v22 = type metadata accessor for Array();
  v23 = sub_10000460C(&qword_100222BA0, &unk_1001C3B70);
  WitnessTable = swift_getWitnessTable();
  v133 = a3;
  v25 = *(a3 + 8);
  v167 = v22;
  v168 = a2;
  v169 = v23;
  v170 = WitnessTable;
  v171 = v25;
  type metadata accessor for ForEach();
  v166 = sub_1001A4248(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  swift_getWitnessTable();
  v26 = type metadata accessor for HStack();
  v27 = swift_getWitnessTable();
  v167 = v26;
  v168 = v27;
  swift_getOpaqueTypeMetadata2();
  v167 = v26;
  v168 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = type metadata accessor for ScrollView();
  v29 = swift_getWitnessTable();
  v167 = v28;
  v168 = v29;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  v30 = type metadata accessor for ModifiedContent();
  v31 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v167 = v28;
  v168 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v164 = OpaqueTypeConformance2;
  v165 = v33;
  v34 = swift_getWitnessTable();
  v167 = v30;
  v168 = v31;
  v169 = v34;
  v170 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v167 = v30;
  v168 = v31;
  v169 = v34;
  v170 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v36 = swift_getOpaqueTypeConformance2();
  v167 = OpaqueTypeMetadata2;
  v168 = a2;
  v169 = v36;
  v170 = v25;
  v37 = swift_getOpaqueTypeMetadata2();
  v167 = OpaqueTypeMetadata2;
  v168 = a2;
  v169 = v36;
  v170 = v25;
  v38 = swift_getOpaqueTypeConformance2();
  v167 = v37;
  v168 = v38;
  swift_getOpaqueTypeMetadata2();
  v39 = type metadata accessor for ModifiedContent();
  v167 = v37;
  v168 = v38;
  v162 = swift_getOpaqueTypeConformance2();
  v163 = &protocol witness table for _FrameLayout;
  v40 = swift_getWitnessTable();
  v161 = v25[1];
  v41 = v161;
  v42 = swift_getWitnessTable();
  v167 = v39;
  v168 = v11;
  v120 = v11;
  v169 = v40;
  v170 = v42;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022BA40, &qword_1001C3B80);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_10022BA48, &qword_1001C3B88);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v143 = a2;
  type metadata accessor for PageControl(255, a2, v41, v43);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  v44 = type metadata accessor for TupleView();
  v45 = swift_getWitnessTable();
  v127 = v44;
  v126 = v45;
  v46 = type metadata accessor for VStack();
  v128 = *(v46 - 8);
  __chkstk_darwin(v46);
  v125 = &v119 - v47;
  v148 = type metadata accessor for ModifiedContent();
  v144 = *(v148 - 8);
  v48 = __chkstk_darwin(v148);
  v147 = &v119 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v149 = &v119 - v50;
  v51 = sub_1000024C4(&qword_100222C00, &unk_1001C3BA0);
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = &v119 - v53;
  v129 = sub_1000024C4(&qword_100222B98, &unk_1001B6800);
  v55 = __chkstk_darwin(v129);
  v146 = &v119 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v58 = &v119 - v57;
  sub_10019F410(v150, v59, v60, v61);
  LOBYTE(v25) = sub_1001AADE0();

  v64 = 1;
  if (v25)
  {
    v65 = sub_10019F410(v150, 1, v62, v63);
    v67 = *(v65 + 16);
    v66 = *(v65 + 24);
    v68 = *(v65 + 32);
    v69 = *(v65 + 40);

    v167 = v67;
    v168 = v66;
    LOBYTE(v169) = v68;
    v170 = v69;
    sub_100042328(v70, v71, v72);
    View.accessibilityIdentifier(_:)();

    sub_10004237C(v54, v58);
    v64 = 0;
  }

  v73 = *(v52 + 56);
  v145 = v58;
  v74 = v73(v58, v64, 1, v51);
  __chkstk_darwin(v74);
  v75 = v143;
  v76 = v133;
  *(&v119 - 4) = v143;
  *(&v119 - 3) = v76;
  v77 = v151;
  *(&v119 - 2) = v151;
  static HorizontalAlignment.center.getter();
  v78 = v125;
  VStack.init(alignment:spacing:content:)();
  v79 = v132;
  v80 = v131;
  v81 = v150;
  (v132[2])(v131, v77, v150);
  v82 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = v75;
  *(v83 + 24) = v76;
  (v79[4])(v83 + v82, v80, v81);
  v84 = swift_getWitnessTable();
  v85 = v147;
  View.onAppear(perform:)();

  (*(v128 + 8))(v78, v46);
  v159 = v84;
  v160 = &protocol witness table for _AppearanceActionModifier;
  v86 = v148;
  v131 = swift_getWitnessTable();
  sub_1000EE87C();
  v87 = *(v144 + 8);
  v133 = v144 + 8;
  v132 = v87;
  (v87)(v85, v86);
  v88 = v134;
  sub_10003D17C(v81, &State.wrappedValue.getter);
  v89 = v135;
  if ((*(v135 + 48))(v88, 1, v75) == 1)
  {
    (*(v119 + 8))(v88, v120);
    v90 = v139;
    (*(v137 + 56))(v139, 1, 1, v142);
    swift_getWitnessTable();
  }

  else
  {
    v91 = v121;
    v92 = v143;
    (*(v89 + 32))(v121, v88, v143);
    v93 = v150;
    v94 = &v151[*(v150 + 40)];
    v95 = *v94;
    v96 = *(v94 + 1);
    LOBYTE(v156) = v95;
    v157 = v96;
    sub_1000024C4(&qword_100223240, &qword_1001B70B8);
    State.projectedValue.getter();
    v97 = v167;
    v98 = v168;
    v99 = v169;
    v100 = v122;
    (*(v89 + 16))(v122, v91, v92);
    v104 = sub_10019F410(v93, v101, v102, v103);
    v105 = v124;
    sub_1001A40B8(v97, v98, v99, v100, v104, v124);
    (*(v89 + 8))(v91, v92);
    v106 = v142;
    swift_getWitnessTable();
    v107 = v123;
    sub_1000EE87C();
    v108 = v137;
    v109 = *(v137 + 8);
    v109(v105, v106);
    sub_1000EE87C();
    v109(v107, v106);
    v90 = v139;
    (*(v108 + 32))(v139, v105, v106);
    (*(v108 + 56))(v90, 0, 1, v106);
  }

  v110 = v138;
  sub_1000E7690(v90, v138);
  v111 = v136;
  v151 = *(v136 + 8);
  v112 = v141;
  (v151)(v90, v141);
  v113 = v146;
  sub_10000BEB8(v145, v146, &qword_100222B98, &unk_1001B6800);
  v167 = v113;
  v114 = v147;
  v115 = v148;
  (*(v144 + 16))(v147, v149, v148);
  v168 = v114;
  (*(v111 + 16))(v90, v110, v112);
  v169 = v90;
  v156 = v129;
  v157 = v115;
  v158 = v112;
  v153 = sub_1001A4248(&qword_100222C08, &qword_100222B98, &unk_1001B6800, sub_1001A4300);
  v154 = v131;
  v152 = swift_getWitnessTable();
  v155 = swift_getWitnessTable();
  sub_1000E76FC(&v167, 3uLL, &v156);
  v116 = v151;
  (v151)(v110, v112);
  v117 = v132;
  (v132)(v149, v115);
  sub_1000050C4(v145, &qword_100222B98, &unk_1001B6800);
  (v116)(v90, v112);
  v117(v114, v115);
  return sub_1000050C4(v146, &qword_100222B98, &unk_1001B6800);
}

uint64_t sub_1001A1518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v225 = a1;
  v213 = a5;
  v6 = *(a3 + 8);
  v222 = a3;
  v215 = v6[1];
  v7 = v6;
  v216 = v6;
  v9 = type metadata accessor for PageControl(0, a2, v215, a4);
  v207 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v151 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v150 = &v150 - v12;
  v211 = v13;
  v212 = type metadata accessor for Optional();
  v208 = *(v212 - 8);
  v14 = __chkstk_darwin(v212);
  v210 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v209 = &v150 - v16;
  v221 = type metadata accessor for PhoneWallpaperView(0, a2, a3, v17);
  v204 = *(v221 - 8);
  v205 = *(v204 + 64);
  __chkstk_darwin(v221);
  v203 = &v150 - v18;
  v218 = type metadata accessor for Optional();
  v206 = *(v218 - 8);
  __chkstk_darwin(v218);
  v202 = &v150 - v19;
  v20 = type metadata accessor for Binding();
  v200 = *(v20 - 8);
  v201 = v20;
  __chkstk_darwin(v20);
  v214 = &v150 - v21;
  v22 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  __chkstk_darwin(v22 - 8);
  v198 = &v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v199 = *(v24 - 8);
  __chkstk_darwin(v24);
  v197 = &v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ContentMarginPlacement();
  v195 = *(v26 - 8);
  v196 = v26;
  __chkstk_darwin(v26);
  v194 = &v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Array();
  v29 = sub_10000460C(&qword_100222BA0, &unk_1001C3B70);
  WitnessTable = swift_getWitnessTable();
  v239 = v28;
  v240 = a2;
  v241 = v29;
  v242 = WitnessTable;
  v243 = v7;
  type metadata accessor for ForEach();
  v238[13] = sub_1001A4248(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  swift_getWitnessTable();
  v31 = type metadata accessor for HStack();
  v32 = swift_getWitnessTable();
  v239 = v31;
  v240 = v32;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v239 = v31;
  v240 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = type metadata accessor for ScrollView();
  v190 = *(v33 - 8);
  __chkstk_darwin(v33);
  v170 = &v150 - v34;
  v35 = swift_getWitnessTable();
  v239 = v33;
  v240 = v35;
  v36 = v35;
  v163 = v35;
  v180 = swift_getOpaqueTypeMetadata2();
  v186 = *(v180 - 8);
  __chkstk_darwin(v180);
  v175 = &v150 - v37;
  type metadata accessor for AccessibilityAttachmentModifier();
  v38 = type metadata accessor for ModifiedContent();
  v187 = *(v38 - 8);
  __chkstk_darwin(v38);
  v174 = &v150 - v39;
  v239 = v33;
  v240 = v36;
  v40 = swift_getOpaqueTypeConformance2();
  v169 = v40;
  v41 = sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v238[11] = v40;
  v238[12] = v41;
  v193 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v42 = swift_getWitnessTable();
  v239 = v38;
  v240 = v24;
  v160 = v24;
  v161 = v38;
  v241 = v42;
  v242 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v162 = v42;
  v43 = swift_getOpaqueTypeMetadata2();
  v178 = *(v43 - 8);
  __chkstk_darwin(v43);
  v159 = &v150 - v44;
  v239 = v38;
  v240 = v24;
  v241 = v42;
  v242 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v45 = swift_getOpaqueTypeConformance2();
  v157 = v43;
  v158 = v45;
  v239 = v43;
  v240 = a2;
  v46 = a2;
  v47 = v45;
  v48 = v216;
  v241 = v45;
  v242 = v216;
  v49 = swift_getOpaqueTypeMetadata2();
  v173 = *(v49 - 8);
  __chkstk_darwin(v49);
  v155 = &v150 - v50;
  v239 = v43;
  v240 = v46;
  v51 = v46;
  v223 = v46;
  v241 = v47;
  v242 = v48;
  v52 = swift_getOpaqueTypeConformance2();
  v239 = v49;
  v240 = v52;
  v152 = v49;
  v153 = v52;
  v53 = v52;
  v164 = swift_getOpaqueTypeMetadata2();
  v171 = *(v164 - 8);
  __chkstk_darwin(v164);
  v154 = &v150 - v54;
  v55 = type metadata accessor for ModifiedContent();
  v167 = v55;
  v185 = *(v55 - 8);
  __chkstk_darwin(v55);
  v217 = &v150 - v56;
  v239 = v49;
  v240 = v53;
  v156 = swift_getOpaqueTypeConformance2();
  v238[9] = v156;
  v238[10] = &protocol witness table for _FrameLayout;
  v57 = swift_getWitnessTable();
  v166 = v57;
  v238[8] = v215;
  v58 = v218;
  v165 = swift_getWitnessTable();
  v239 = v55;
  v240 = v58;
  v241 = v57;
  v242 = v165;
  v176 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v172 = swift_getOpaqueTypeMetadata2();
  v181 = *(v172 - 8);
  __chkstk_darwin(v172);
  v219 = &v150 - v59;
  sub_10000460C(&qword_10022BA40, &qword_1001C3B80);
  v177 = type metadata accessor for ModifiedContent();
  v189 = *(v177 - 8);
  __chkstk_darwin(v177);
  v168 = &v150 - v60;
  sub_10000460C(&qword_10022BA48, &qword_1001C3B88);
  v188 = type metadata accessor for ModifiedContent();
  v192 = *(v188 - 8);
  __chkstk_darwin(v188);
  v179 = &v150 - v61;
  v191 = type metadata accessor for ModifiedContent();
  v220 = *(v191 - 8);
  v62 = __chkstk_darwin(v191);
  v184 = &v150 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v224 = &v150 - v64;
  static Axis.Set.horizontal.getter();
  v232 = v51;
  v233 = v222;
  v65 = v225;
  v234 = v225;
  v66 = v170;
  ScrollView.init(_:showsIndicators:content:)();
  static Edge.Set.horizontal.getter();
  v67 = v221;
  sub_10019F410(v221, v68, v69, v70);
  sub_1001AAEE4();

  v71 = v194;
  j___s7SwiftUI22ContentMarginPlacementV9automaticACvgZ(v33, v163);
  v72 = v175;
  View.contentMargins(_:_:for:)();
  (*(v195 + 8))(v71, v196);
  (*(v190 + 8))(v66, v33);
  v73 = v174;
  v74 = v180;
  View.accessibilityIdentifier(_:)();
  (*(v186 + 8))(v72, v74);
  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  v75 = v197;
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  v77 = v159;
  v76 = v160;
  v78 = v161;
  View.scrollTargetBehavior<A>(_:)();
  (*(v199 + 8))(v75, v76);
  (*(v187 + 8))(v73, v78);
  v79 = v214;
  sub_10003D17C(v67, &State.projectedValue.getter);
  v80 = v155;
  v81 = v79;
  v82 = v157;
  v83 = v223;
  View.scrollPosition<A>(id:anchor:)();
  (*(v200 + 8))(v81, v201);
  v84 = v77;
  v85 = v83;
  (*(v178 + 8))(v84, v82);
  v86 = v67;
  sub_10019F410(v67, v87, v88, v89);
  sub_1001AAF24();

  v90 = v154;
  v91 = v152;
  View.scrollDisabled(_:)();
  (*(v173 + 8))(v80, v91);
  v92 = v65;
  sub_10019F410(v86, v93, v94, v95);
  sub_1001AAF5C();

  static Alignment.center.getter();
  v96 = v164;
  View.frame(width:height:alignment:)();
  (*(v171 + 8))(v90, v96);
  v97 = v202;
  v98 = v92;
  sub_10003D17C(v86, &State.wrappedValue.getter);
  v100 = v203;
  v99 = v204;
  (*(v204 + 16))(v203, v98, v86);
  v101 = v99;
  v102 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v103 = swift_allocObject();
  v104 = v222;
  *(v103 + 16) = v85;
  *(v103 + 24) = v104;
  (*(v101 + 32))(v103 + v102, v100, v86);
  v105 = v97;
  v107 = v166;
  v106 = v167;
  v108 = v218;
  v109 = v165;
  v110 = v217;
  View.onChange<A>(of:initial:_:)();

  (*(v206 + 8))(v105, v108);
  (*(v185 + 8))(v110, v106);
  static Alignment.center.getter();
  v229 = v85;
  v230 = v104;
  v111 = v225;
  v231 = v225;
  sub_1000024C4(&qword_100222C38, &qword_1001C3BB0);
  v239 = v106;
  v240 = v108;
  v241 = v107;
  v242 = v109;
  v112 = swift_getOpaqueTypeConformance2();
  sub_100043A68();
  v113 = v168;
  v114 = v172;
  v115 = v219;
  View.overlay<A>(alignment:content:)();
  (*(v181 + 8))(v115, v114);
  static Alignment.center.getter();
  v226 = v223;
  v227 = v104;
  v228 = v111;
  sub_1000024C4(&qword_10022BA50, &qword_1001C3BB8);
  v116 = sub_10000BFFC(&qword_10022BA58, &qword_10022BA40, &qword_1001C3B80, &protocol conformance descriptor for _OverlayModifier<A>);
  v238[6] = v112;
  v238[7] = v116;
  v117 = v177;
  v118 = swift_getWitnessTable();
  sub_10000BFFC(&qword_10022BA60, &qword_10022BA50, &qword_1001C3BB8, &protocol conformance descriptor for TupleView<A>);
  v119 = v179;
  View.background<A>(alignment:content:)();
  (*(v189 + 8))(v113, v117);
  static Edge.Set.bottom.getter();
  v120 = sub_10000BFFC(&qword_10022BA68, &qword_10022BA48, &qword_1001C3B88, &protocol conformance descriptor for _BackgroundModifier<A>);
  v238[4] = v118;
  v238[5] = v120;
  v121 = v188;
  v122 = swift_getWitnessTable();
  v123 = v184;
  View.padding(_:_:)();
  (*(v192 + 8))(v119, v121);
  v238[2] = v122;
  v238[3] = &protocol witness table for _PaddingLayout;
  v124 = v221;
  v125 = v191;
  v218 = swift_getWitnessTable();
  sub_1000EE87C();
  v126 = *(v220 + 8);
  v127 = v123;
  v128 = v123;
  v129 = v125;
  v222 = v220 + 8;
  v219 = v126;
  (v126)(v128, v125);
  sub_10019F410(v124, v130, v131, v132);
  LOBYTE(v121) = sub_1001AAF24();

  if (v121)
  {
    v136 = *(sub_10019F410(v124, v133, v134, v135) + 240);

    v137 = v214;
    sub_10003D17C(v124, &State.projectedValue.getter);
    v138 = v151;
    sub_100120434(v136, v137, v223, v215, v151);
    v139 = v211;
    swift_getWitnessTable();
    v140 = v150;
    sub_1000EE87C();
    v141 = v207;
    v142 = *(v207 + 8);
    v142(v138, v139);
    sub_1000EE87C();
    v142(v140, v139);
    v143 = v210;
    (*(v141 + 32))(v210, v138, v139);
    (*(v141 + 56))(v143, 0, 1, v139);
  }

  else
  {
    v143 = v210;
    (*(v207 + 56))(v210, 1, 1, v211);
    swift_getWitnessTable();
  }

  v144 = v209;
  sub_1000E7690(v143, v209);
  v145 = v208;
  v146 = *(v208 + 8);
  v147 = v212;
  v146(v143, v212);
  (*(v220 + 16))(v127, v224, v129);
  v239 = v127;
  (*(v145 + 16))(v143, v144, v147);
  v240 = v143;
  v238[0] = v129;
  v238[1] = v147;
  v236 = v218;
  v235 = swift_getWitnessTable();
  v237 = swift_getWitnessTable();
  sub_1000E76FC(&v239, 2uLL, v238);
  v146(v144, v147);
  v148 = v219;
  (v219)(v224, v129);
  v146(v143, v147);
  return v148(v127, v129);
}

uint64_t sub_1001A2CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v27 = a1;
  v28 = a4;
  v25 = a2;
  v6 = type metadata accessor for Array();
  v7 = sub_10000460C(&qword_100222BA0, &unk_1001C3B70);
  WitnessTable = swift_getWitnessTable();
  v9 = *(a3 + 8);
  v33 = v6;
  v34 = a2;
  v35 = v7;
  v36 = WitnessTable;
  v37 = v9;
  type metadata accessor for ForEach();
  v32 = sub_1001A4248(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  v24[1] = swift_getWitnessTable();
  v10 = type metadata accessor for HStack();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - v12;
  v14 = swift_getWitnessTable();
  v33 = v10;
  v34 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v17 = __chkstk_darwin(OpaqueTypeMetadata2);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v24 - v20;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  View.scrollTargetLayout(isEnabled:)();
  (*(v11 + 8))(v13, v10);
  v33 = v10;
  v34 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1000EE87C();
  v22 = *(v16 + 8);
  v22(v19, OpaqueTypeMetadata2);
  sub_1000EE87C();
  return (v22)(v21, OpaqueTypeMetadata2);
}

uint64_t sub_1001A2FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a5;
  v8 = type metadata accessor for PhoneWallpaperView(0, a2, a3, a4);
  v9 = *(v8 - 8);
  v33 = *(v9 + 64);
  __chkstk_darwin(v8);
  v32 = &KeyPath - v10;
  v11 = type metadata accessor for Array();
  v37 = v11;
  v12 = sub_10000460C(&qword_100222BA0, &unk_1001C3B70);
  v36 = v12;
  WitnessTable = swift_getWitnessTable();
  v34 = *(a3 + 8);
  v35 = WitnessTable;
  v43 = v11;
  v44 = a2;
  v45 = v12;
  v46 = WitnessTable;
  v47 = v34;
  v14 = type metadata accessor for ForEach();
  v38 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v31 = &KeyPath - v18;
  v22 = *(sub_10019F410(v8, v19, v20, v21) + 240);

  v43 = v22;
  v40 = a2;
  v41 = a3;
  KeyPath = swift_getKeyPath();
  v23 = v32;
  (*(v9 + 16))(v32, a1, v8);
  v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  (*(v9 + 32))(v25 + v24, v23, v8);
  v29 = sub_1001A4248(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  ForEach<>.init(_:id:content:)();
  v42 = v29;
  swift_getWitnessTable();
  v26 = v31;
  sub_1000EE87C();
  v27 = *(v38 + 8);
  v27(v17, v14);
  sub_1000EE87C();
  return (v27)(v26, v14);
}

uint64_t sub_1001A3364@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v45 = a1;
  v54 = a4;
  v6 = type metadata accessor for AccessibilityChildBehavior();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ScrollAsset(0);
  __chkstk_darwin(v43);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000024C4(qword_100222C70, &unk_1001B6880);
  v48 = *(v10 - 8);
  v49 = v10;
  __chkstk_darwin(v10);
  v46 = &v43 - v11;
  v12 = sub_1000024C4(&qword_100222BB8, &qword_1001B6810);
  v52 = *(v12 - 8);
  v53 = v12;
  __chkstk_darwin(v12);
  v44 = &v43 - v13;
  v14 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 16))(a2, a3);
  (*(v18 + 56))(v16, 0, 1, v17);
  (*(v18 + 32))(v20, v16, v17);
  (*(v18 + 16))(v9, v20, v17);
  v22 = type metadata accessor for PhoneWallpaperView(0, a2, a3, v21);
  sub_10019F410(v22, v23, v24, v25);
  v26 = sub_1001AAE54();

  sub_10019F410(v22, v27, v28, v29);
  v30 = sub_1001AAE84();

  sub_10019F410(v22, v31, v32, v33);
  v34 = sub_1001AAEA8();

  v35 = v43;
  *&v9[*(v43 + 20)] = v26;
  *&v9[*(v35 + 24)] = v30;
  *&v9[*(v35 + 28)] = v34;
  v36 = v47;
  static AccessibilityChildBehavior.contain.getter();
  v37 = sub_10004527C(&qword_100222BC0, type metadata accessor for ScrollAsset, &unk_1001C1844);
  v38 = v46;
  View.accessibilityElement(children:)();
  (*(v50 + 8))(v36, v51);
  sub_100043DA8(v9);
  v55 = v35;
  v56 = v37;
  swift_getOpaqueTypeConformance2();
  v39 = v44;
  v40 = v49;
  View.accessibilityIdentifier(_:)();
  (*(v48 + 8))(v38, v40);
  (*(v18 + 8))(v20, v17);
  v41 = v54;
  sub_100043E04(v39, v54);
  return (*(v52 + 56))(v41, 0, 1, v53);
}

void sub_1001A3900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PhoneWallpaperView(0, a2, a3, a4);
  sub_10019F410(v5, v6, v7, v8);
  v9 = *(a1 + *(v5 + 44));
  if (v9)
  {

    sub_1001AAF60(29, 0, 3u, v9);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10004527C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

void sub_1001A39E4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for PhoneWallpaperView(0, a1, a2, a3);
  v9 = sub_10019F410(v5, v6, v7, v8);
  v11 = *(v9 + 48);
  v10 = *(v9 + 56);

  sub_10019F410(v5, v12, v13, v14);
  v15 = sub_1001AB1E4();

  *a4 = v11;
  *(a4 + 8) = v10;
  *(a4 + 16) = v15;
  *(a4 + 24) = 0;
}

uint64_t sub_1001A3A70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Color.RGBColorSpace();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PhoneWallpaperView(0, a1, a2, v10);
  sub_10019F410(v11, v12, v13, v14);
  v15 = sub_1001AB208();

  sub_10019F410(v11, v16, v17, v18);
  v19 = sub_1001AB238();

  sub_10019F410(v11, v20, v21, v22);
  v23 = sub_1001AC17C();

  v24 = enum case for Color.RGBColorSpace.sRGBLinear(_:);
  v25 = *(v7 + 104);
  v25(v9, enum case for Color.RGBColorSpace.sRGBLinear(_:), v6);
  v26 = Color.init(_:white:opacity:)();
  v25(v9, v24, v6);
  v27 = Color.init(_:white:opacity:)();
  sub_10019F410(v11, v28, v29, v30);
  v31 = sub_1001AB208();

  sub_10019F410(v11, v32, v33, v34);
  v35 = sub_1001AB238();

  sub_10019F410(v11, v36, v37, v38);
  v39 = sub_1001AC17C();

  *&v46 = v15;
  *(&v46 + 1) = v19;
  *&v47 = v23;
  *(&v47 + 1) = v26;
  v48 = xmmword_1001B6760;
  *&v49 = 0x4010000000000000;
  *(&v49 + 1) = v27;
  v50 = xmmword_1001B6770;
  v51 = xmmword_1001C3AE0;
  v40 = v49;
  *(a3 + 32) = xmmword_1001B6760;
  *(a3 + 48) = v40;
  v41 = v51;
  *(a3 + 64) = v50;
  *(a3 + 80) = v41;
  v42 = v47;
  *a3 = v46;
  *(a3 + 16) = v42;
  *(a3 + 96) = v31;
  *(a3 + 104) = v35;
  *(a3 + 112) = v39;
  *v52 = v15;
  *&v52[1] = v19;
  *&v52[2] = v23;
  v52[3] = v26;
  v53 = xmmword_1001B6760;
  v54 = 0x4010000000000000;
  v55 = v27;
  v56 = xmmword_1001B6770;
  v57 = xmmword_1001C3AE0;
  sub_10000BEB8(&v46, &v45, qword_10022BA70, &unk_1001C3BC0);
  return sub_1000050C4(v52, qword_10022BA70, &unk_1001C3BC0);
}

uint64_t sub_1001A3D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - v13;
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  v18 = type metadata accessor for PhoneWallpaperView(0, a2, a3, v17);
  v32 = a1;
  sub_10003D17C(v18, &State.wrappedValue.getter);
  v19 = *(v6 + 48);
  LODWORD(a3) = v19(v16, 1, a2);
  v31 = *(v9 + 8);
  result = v31(v16, v8);
  if (a3 == 1)
  {
    v28 = v6;
    v24 = *(sub_10019F410(v18, v21, v22, v23) + 240);

    v33 = v24;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
    if (v19(v14, 1, a2) == 1)
    {
      v31(v14, v8);
    }

    else
    {
      v25 = v28;
      v26 = v30;
      (*(v28 + 32))(v30, v14, a2);

      v27 = v29;
      (*(v25 + 16))(v29, v26, a2);
      (*(v25 + 56))(v27, 0, 1, a2);
      sub_1001A6EF4(v27, v18);
      v31(v27, v8);
      return (*(v25 + 8))(v26, a2);
    }
  }

  return result;
}

uint64_t sub_1001A40B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  v9 = *(v8 + 80);
  v10 = _s16EventViewService17SelectAssetButtonVMa_0(0, v9, *(v8 + 88), a4);
  (*(*(v9 - 8) + 32))(a6 + *(v10 + 36), a4, v9);
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v11 = (a6 + *(v10 + 44));
  type metadata accessor for RemoteViewConfiguration();
  sub_10004527C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.init()();
  *v11 = result;
  v11[1] = v13;
  return result;
}

uint64_t sub_1001A4248(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001A4300()
{
  result = qword_100222C10;
  if (!qword_100222C10)
  {
    v1 = sub_10000460C(&qword_100222C00, &unk_1001C3BA0);
    sub_100042328(v1, v2, v3);
    sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222C10);
  }

  return result;
}

uint64_t sub_1001A4418()
{
  sub_1000024C4(&unk_1002265A0, &unk_1001BB3E0);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t sub_1001A4474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhoneWallpaperViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v5;
}

uint64_t sub_1001A44C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhoneWallpaperViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  return Bindable.projectedValue.getter();
}

uint64_t sub_1001A4514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v116 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v91 = a1;
  v121 = v3;
  type metadata accessor for PhoneWallpaperViewModel(255, v4, v3, a3);
  v114 = type metadata accessor for Bindable();
  v115 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = v86 - v6;
  v106 = type metadata accessor for PlainButtonStyle();
  v107 = *(v106 - 8);
  v7 = __chkstk_darwin(v106);
  v98 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = *(a1 - 8);
  v119 = *(v122 + 64);
  __chkstk_darwin(v7);
  v118 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1000024C4(&qword_100222CF8, &qword_1001B6908);
  v100 = *(v99 - 8);
  __chkstk_darwin(v99);
  v92 = v86 - v10;
  v11 = sub_1000024C4(&qword_100222DE0, &unk_1001B69A0);
  __chkstk_darwin(v11);
  v96 = v86 - v12;
  v14 = type metadata accessor for SavedWallpaperView(255, v4, v3, v13);
  WitnessTable = swift_getWitnessTable();
  v134 = v14;
  v135 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v134 = v14;
  v135 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v134 = OpaqueTypeMetadata2;
  v135 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v19 = sub_1000455C8();
  v134 = OpaqueTypeMetadata2;
  v135 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = v11;
  v90 = v11;
  v134 = v11;
  v135 = v18;
  v93 = v18;
  v136 = v19;
  v137 = v20;
  v22 = v19;
  v95 = v19;
  v94 = v20;
  v23 = swift_getOpaqueTypeMetadata2();
  v105 = v23;
  v112 = *(v23 - 8);
  __chkstk_darwin(v23);
  v120 = v86 - v24;
  v25 = sub_10000460C(&qword_10022BB00, &unk_1001C3C70);
  v104 = v25;
  v134 = v21;
  v135 = v18;
  v136 = v22;
  v137 = v20;
  v26 = swift_getOpaqueTypeConformance2();
  v103 = v26;
  v102 = sub_10000BFFC(&qword_10022BB08, &qword_10022BB00, &unk_1001C3C70, &protocol conformance descriptor for TupleView<A>);
  v134 = v23;
  v135 = v25;
  v136 = &type metadata for Text;
  v137 = v26;
  v138 = v102;
  v139 = &protocol witness table for Text;
  v109 = &opaque type descriptor for <<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>;
  v110 = swift_getOpaqueTypeMetadata2();
  v111 = *(v110 - 8);
  v27 = __chkstk_darwin(v110);
  v101 = v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v108 = v86 - v29;
  v30 = v122;
  v31 = *(v122 + 16);
  v86[1] = v122 + 16;
  v89 = v31;
  v32 = v118;
  v33 = v97;
  v34 = v91;
  v31(v118, v97, v91);
  v88 = *(v30 + 80);
  v35 = (v88 + 32) & ~v88;
  v86[0] = v35;
  v36 = swift_allocObject();
  v117 = v4;
  v37 = v121;
  *(v36 + 16) = v4;
  *(v36 + 24) = v37;
  v38 = *(v30 + 32);
  v122 = v30 + 32;
  v87 = v38;
  v39 = v32;
  v40 = v34;
  v38(v36 + v35, v39, v34);
  v131 = v4;
  v132 = v37;
  v133 = v33;
  sub_1000024C4(&qword_100222D00, &unk_1001B6910);
  sub_100044A74();
  v41 = v92;
  Button.init(action:label:)();
  v42 = v98;
  PlainButtonStyle.init()();
  sub_10000BFFC(&qword_100222DC8, &qword_100222CF8, &qword_1001B6908, &protocol conformance descriptor for Button<A>);
  sub_10004527C(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v43 = v96;
  v44 = v99;
  v45 = v106;
  View.buttonStyle<A>(_:)();
  (*(v107 + 8))(v42, v45);
  (*(v100 + 8))(v41, v44);
  LOBYTE(v30) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = &v43[*(sub_1000024C4(&qword_100222DD8, &qword_1001B6998) + 36)];
  *v54 = v30;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  LOBYTE(v30) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v55 = &v43[*(v90 + 36)];
  v56 = v43;
  *v55 = v30;
  *(v55 + 1) = v57;
  *(v55 + 2) = v58;
  *(v55 + 3) = v59;
  *(v55 + 4) = v60;
  v55[40] = 0;
  sub_1001A4418();
  v61 = v118;
  v89(v118, v33, v40);
  v62 = v86[0];
  v63 = swift_allocObject();
  v64 = v121;
  *(v63 + 16) = v117;
  *(v63 + 24) = v64;
  v87(v63 + v62, v61, v40);
  swift_checkMetadataState();
  View.sheet<A>(isPresented:onDismiss:content:)();

  sub_1000050C4(v56, &qword_100222DE0, &unk_1001B69A0);
  v68 = sub_1001A4474(v40, v65, v66, v67);
  v122 = *(v68 + 96);
  LODWORD(v119) = *(v68 + 112);

  v69 = v113;
  sub_1001A44C4(v40, v70, v71, v72);
  v73 = v117;
  v74 = v121;
  v129 = v117;
  v130 = v121;
  swift_getKeyPath();
  v75 = v114;
  Bindable<A>.subscript.getter();

  (*(v115 + 8))(v69, v75);
  v126 = v73;
  v127 = v74;
  v128 = v33;
  v123 = v73;
  v124 = v74;
  v125 = v33;
  v76 = v102;
  v77 = v103;
  v78 = v104;
  v79 = v105;
  v80 = v101;
  v81 = v120;
  View.alert<A, B>(_:isPresented:actions:message:)();

  (*(v112 + 8))(v81, v79);
  v134 = v79;
  v135 = v78;
  v136 = &type metadata for Text;
  v137 = v77;
  v138 = v76;
  v139 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v82 = v108;
  v83 = v110;
  sub_1000EE87C();
  v84 = *(v111 + 8);
  v84(v80, v83);
  sub_1000EE87C();
  return (v84)(v82, v83);
}

double sub_1001A51C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v6 = _s16EventViewService17SelectAssetButtonVMa_0(0, a2, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = sub_1000024C4(&qword_100227360, &qword_1001B5D80);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - v11;
  sub_1001A4474(v6, v13, v14, v15);
  v16 = objc_opt_self();
  if (![v16 authorizationStatusForAccessLevel:1])
  {

    goto LABEL_7;
  }

  v17 = [v16 authorizationStatusForAccessLevel:1];

  if (v17 == 3)
  {
LABEL_7:
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
    (*(v7 + 16))(v9, a1, v6);
    type metadata accessor for MainActor();
    v23 = static MainActor.shared.getter();
    v24 = (*(v7 + 80) + 48) & ~*(v7 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = v23;
    *(v25 + 3) = &protocol witness table for MainActor;
    v26 = v28;
    *(v25 + 4) = a2;
    *(v25 + 5) = v26;
    (*(v7 + 32))(&v25[v24], v9, v6);
    sub_10019EFDC(0, 0, v12, &unk_1001C3DE0, v25);

    return result;
  }

  sub_1001A4474(v6, v18, v19, v20);
  sub_1001AB25C(1);

  return result;
}

uint64_t sub_1001A5470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_1001A550C, v8, v7);
}

uint64_t sub_1001A550C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = _s16EventViewService17SelectAssetButtonVMa_0(0, v4[3], v4[4], a4);
  v4[8] = v6;
  v4[9] = sub_1001A4474(v6, v7, v8, v9);
  v10 = *(v6 + 36);
  v11 = swift_task_alloc();
  v4[10] = v11;
  *v11 = v4;
  v11[1] = sub_1001A55E0;
  v12 = v4[3];
  v13 = v4[4];

  return sub_1001ABFF4(v5 + v10, v12, v13);
}

uint64_t sub_1001A55E0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1001A5840;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1001A56FC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001A56FC()
{
  v1 = v0[8];
  v2 = v0[2];

  sub_1001A43BC(1);
  sub_1001A4474(v1, v3, v4, v5);
  v6 = *(v2 + *(v1 + 44));
  if (v6)
  {

    sub_1001AAF60(31, 0, 3u, v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10004527C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);

    return EnvironmentObject.error()();
  }
}

uint64_t sub_1001A5840()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A58B0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v72 = a2;
  v73 = a3;
  v84 = a4;
  v6 = type metadata accessor for AccessibilityChildBehavior();
  v7 = *(v6 - 8);
  v85 = v6;
  v86 = v7;
  __chkstk_darwin(v6);
  v9 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000024C4(&qword_100222DE8, &unk_1001C3D60);
  v11 = *(v10 - 8);
  v76 = v10;
  v77 = v11;
  __chkstk_darwin(v10);
  v71 = v68 - v12;
  v75 = sub_1000024C4(&qword_100222D18, &unk_1001B6920);
  __chkstk_darwin(v75);
  v74 = v68 - v13;
  v14 = sub_1000024C4(&qword_100222D10, &unk_1001C3C80);
  v15 = *(v14 - 8);
  v80 = v14;
  v81 = v15;
  __chkstk_darwin(v14);
  v78 = v68 - v16;
  v17 = sub_1000024C4(&qword_100222DF0, &qword_1001B69B0);
  v18 = *(v17 - 8);
  v82 = v17;
  v83 = v18;
  __chkstk_darwin(v17);
  v79 = v68 - v19;
  v70 = static VerticalAlignment.center.getter();
  LOBYTE(v104[0]) = 0;
  sub_1001A6028(a2, v4, v102);
  *(v100 + 7) = v102[0];
  *(&v100[1] + 7) = v102[1];
  *(&v100[2] + 7) = v103[0];
  v100[3] = *(v103 + 9);
  LOBYTE(v4) = v104[0];
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v20 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v22 = static Color.white.getter();
  v23 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  LOBYTE(v89) = 0;
  v32 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  LOBYTE(v104[0]) = 0;
  v41 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  *(v90 + 1) = v100[0];
  *(&v90[1] + 1) = v100[1];
  *(&v90[2] + 1) = v100[2];
  v101 = 0;
  *&v89 = v70;
  *(&v89 + 1) = 0x4010000000000000;
  LOBYTE(v90[0]) = v4;
  *(&v90[3] + 1) = v100[3];
  *(&v90[4] + 1) = KeyPath;
  *&v91 = v20;
  *(&v91 + 1) = v22;
  LOBYTE(v92) = v23;
  *(&v92 + 1) = v25;
  *&v93 = v27;
  *(&v93 + 1) = v29;
  *&v94 = v31;
  BYTE8(v94) = 0;
  LOBYTE(v95) = v32;
  *(&v95 + 1) = v34;
  *&v96 = v36;
  *(&v96 + 1) = v38;
  *&v97 = v40;
  BYTE8(v97) = 0;
  LOBYTE(v98) = v41;
  *(&v98 + 1) = v42;
  *&v99[0] = v43;
  *(&v99[0] + 1) = v44;
  *&v99[1] = v45;
  BYTE8(v99[1]) = 0;
  v69 = v9;
  static AccessibilityChildBehavior.combine.getter();
  v46 = sub_1000024C4(&qword_100222D48, &unk_1001B6940);
  v47 = sub_100044DCC();
  v48 = v71;
  View.accessibilityElement(children:)();
  v49 = *(v86 + 8);
  v86 += 8;
  v70 = v49;
  v49(v9, v85);
  v104[12] = v97;
  v104[13] = v98;
  v105[0] = v99[0];
  *(v105 + 9) = *(v99 + 9);
  v104[8] = v93;
  v104[9] = v94;
  v104[10] = v95;
  v104[11] = v96;
  v104[4] = v90[3];
  v104[5] = v90[4];
  v104[6] = v91;
  v104[7] = v92;
  v104[0] = v89;
  v104[1] = v90[0];
  v104[2] = v90[1];
  v104[3] = v90[2];
  sub_1000050C4(v104, &qword_100222D48, &unk_1001B6940);
  *&v89 = v46;
  *(&v89 + 1) = v47;
  v68[1] = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  swift_getOpaqueTypeConformance2();
  v50 = v74;
  v51 = v76;
  View.accessibilityIdentifier(_:)();
  (*(v77 + 8))(v48, v51);
  v52 = static Color.blue.getter();
  v53 = static Edge.Set.all.getter();
  v54 = v75;
  v55 = v50 + *(v75 + 36);
  *v55 = v52;
  *(v55 + 8) = v53;
  Solarium.init()();
  v87 = v72;
  v88 = v73;
  v56 = sub_1000024C4(&qword_100222D20, &unk_1001C3C90);
  v57 = sub_1000024C4(&qword_100222D28, &unk_1001B6930);
  v58 = sub_100044C1C();
  v59 = sub_10004510C();
  v67 = sub_1000451C4();
  v60 = v78;
  View.staticIf<A, B, C>(_:then:else:)();
  sub_1000050C4(v50, &qword_100222D18, &unk_1001B6920);
  v61 = v69;
  static AccessibilityChildBehavior.ignore.getter();
  *&v89 = v54;
  *(&v89 + 1) = &type metadata for Solarium;
  *&v90[0] = v56;
  *(&v90[0] + 1) = v57;
  *&v90[1] = v58;
  *(&v90[1] + 1) = &protocol witness table for Solarium;
  *&v90[2] = v59;
  *(&v90[2] + 1) = v67;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = v79;
  v63 = v80;
  View.accessibilityElement(children:)();
  v70(v61, v85);
  (*(v81 + 8))(v60, v63);
  *&v89 = v63;
  *(&v89 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v65 = v82;
  View.accessibilityIdentifier(_:)();
  return (*(v83 + 8))(v64, v65);
}

uint64_t sub_1001A6028@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = Image.init(systemName:)();
  v8 = _s16EventViewService17SelectAssetButtonVMa_0(0, a1, a2, v7);
  sub_1001A4474(v8, v9, v10, v11);

  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  *a3 = v6;
  *(a3 + 8) = v12;
  *(a3 + 16) = v14;
  *(a3 + 24) = v16 & 1;
  *(a3 + 32) = v18;
  *(a3 + 40) = KeyPath;
  *(a3 + 48) = 1;
  *(a3 + 56) = 0;

  sub_1000187D8(v12, v14, v16 & 1);

  sub_100017398(v12, v14, v16 & 1);
}

uint64_t sub_1001A61A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a1;
  v47 = a4;
  v6 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
  v7 = __chkstk_darwin(v6 - 8);
  v38 = (&v36 - v8);
  v9 = *(a2 - 8);
  __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SavedWallpaperView(0, a2, a3, v12);
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v37 = (&v36 - v14);
  WitnessTable = swift_getWitnessTable();
  v48 = v13;
  v49 = WitnessTable;
  v16 = WitnessTable;
  v40 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v39 = &v36 - v18;
  v48 = v13;
  v49 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = OpaqueTypeMetadata2;
  v49 = OpaqueTypeConformance2;
  v43 = &opaque type descriptor for <<opaque return type of View.presentationDragIndicator(_:)>>;
  v19 = swift_getOpaqueTypeMetadata2();
  v44 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v36 - v23;
  type metadata accessor for SavedWallpaperViewModel(0, a2, a3, v25);
  v27 = _s16EventViewService17SelectAssetButtonVMa_0(0, a2, a3, v26);
  (*(v9 + 16))(v11, v42 + *(v27 + 36), a2);
  v28 = sub_10018B680(v11);
  v29 = v38;
  sub_1000F3D44(v38);
  v30 = v37;
  sub_1000F3DA4(v28, v29, v37);
  sub_1000024C4(&qword_10022BB28, &unk_1001C3D50);
  type metadata accessor for PresentationDetent();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1001B3B50;
  static PresentationDetent.medium.getter();
  static PresentationDetent.large.getter();
  sub_1000B0C38(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v32 = v39;
  View.presentationDetents(_:)();

  (*(v46 + 8))(v30, v13);
  v33 = OpaqueTypeConformance2;
  View.presentationDragIndicator(_:)();
  (*(v45 + 8))(v32, OpaqueTypeMetadata2);
  v48 = OpaqueTypeMetadata2;
  v49 = v33;
  swift_getOpaqueTypeConformance2();
  sub_1000EE87C();
  v34 = *(v44 + 8);
  v34(v22, v19);
  sub_1000EE87C();
  return (v34)(v24, v19);
}

uint64_t sub_1001A6700@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001AB3A0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001A6758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a5;
  v68 = a2;
  v70 = a3;
  v6 = _s16EventViewService17SelectAssetButtonVMa_0(0, a2, a3, a4);
  v67 = *(v6 - 8);
  v65 = *(v67 + 64);
  __chkstk_darwin(v6);
  v66 = &v57 - v7;
  v8 = sub_1000024C4(&qword_100221A00, &qword_1001B7410);
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = __chkstk_darwin(v8);
  v71 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v69 = &v57 - v11;
  v12 = sub_1000024C4(&qword_10022BB10, &qword_1001C3D30);
  v63 = *(v12 - 8);
  __chkstk_darwin(v12);
  v61 = &v57 - v13;
  v14 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v14 - 8);
  v16 = &v57 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v57 - v22;
  v24 = sub_1000024C4(&qword_10022BB18, &qword_1001C3D38);
  v25 = __chkstk_darwin(v24 - 8);
  v64 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v57 - v27;
  sub_1001A4474(v6, v29, v30, v31);
  sub_1001AB414();

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1000050C4(v16, &qword_1002214F8, &qword_1001B3D20);
    v32 = 1;
    v33 = v63;
  }

  else
  {
    (*(v18 + 32))(v23, v16, v17);
    v57 = *(sub_1001A4474(v6, v34, v35, v36) + 160);
    v58 = v12;
    v59 = a1;
    v60 = v6;

    (*(v18 + 16))(v21, v23, v17);
    v37 = v61;
    a1 = v59;
    v6 = v60;
    v12 = v58;
    Link<>.init(_:sensitiveUrl:)();
    (*(v18 + 8))(v23, v17);
    v38 = v63;
    (*(v63 + 32))(v28, v37, v12);
    v32 = 0;
    v33 = v38;
  }

  (*(v33 + 56))(v28, v32, 1, v12);
  sub_1001A4474(v6, v39, v40, v41);
  v62 = v28;

  v43 = v66;
  v42 = v67;
  (*(v67 + 16))(v66, a1, v6);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = swift_allocObject();
  v46 = v70;
  *(v45 + 16) = v68;
  *(v45 + 24) = v46;
  (*(v42 + 32))(v45 + v44, v43, v6);
  v47 = v69;
  Button<>.init(_:action:)();
  v48 = v64;
  sub_10000BEB8(v28, v64, &qword_10022BB18, &qword_1001C3D38);
  v50 = v71;
  v49 = v72;
  v51 = *(v72 + 16);
  v52 = v73;
  v51(v71, v47, v73);
  v53 = v74;
  sub_10000BEB8(v48, v74, &qword_10022BB18, &qword_1001C3D38);
  v54 = sub_1000024C4(&qword_10022BB20, &unk_1001C3D40);
  v51((v53 + *(v54 + 48)), v50, v52);
  v55 = *(v49 + 8);
  v55(v47, v52);
  sub_1000050C4(v62, &qword_10022BB18, &qword_1001C3D38);
  v55(v50, v52);
  return sub_1000050C4(v48, &qword_10022BB18, &qword_1001C3D38);
}

double sub_1001A6DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = _s16EventViewService17SelectAssetButtonVMa_0(0, a2, a3, a4);
  sub_1001A4474(v4, v5, v6, v7);
  sub_1001AB25C(0);

  return result;
}

uint64_t sub_1001A6E40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = _s16EventViewService17SelectAssetButtonVMa_0(0, a1, a2, a3);
  sub_1001A4474(v5, v6, v7, v8);

  result = Text.init(_:tableName:bundle:comment:)();
  *a4 = result;
  *(a4 + 8) = v10;
  *(a4 + 16) = v11 & 1;
  *(a4 + 24) = v12;
  return result;
}

uint64_t sub_1001A6EF4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Optional();
  __chkstk_darwin(v3);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  type metadata accessor for State();
  return State.wrappedValue.setter();
}

uint64_t sub_1001A703C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for PhoneWallpaperView(0, v5, v6, a4);
  v8 = v4 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
  type metadata accessor for PhoneWallpaperViewModel(255, v5, v6, v9);
  v10 = type metadata accessor for Bindable();
  (*(*(v10 - 8) + 8))(v8, v10);
  v11 = v8 + *(v7 + 36);
  v12 = *(v5 - 8);
  if (!(*(v12 + 48))(v11, 1, v5))
  {
    (*(v12 + 8))(v11, v5);
  }

  type metadata accessor for Optional();
  type metadata accessor for State();

  return swift_deallocObject();
}

uint64_t sub_1001A71F8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for PhoneWallpaperView(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_1001A3364(v7, v4, v5, a2);
}

void sub_1001A7294(uint64_t a1)
{
  sub_1001A75EC(319, &qword_10022BAF8, &type metadata accessor for Binding);
  if (v2 <= 0x3F)
  {
    v3 = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      type metadata accessor for PhoneWallpaperViewModel(255, v3, *(a1 + 24), v4);
      type metadata accessor for Bindable();
      if (v6 <= 0x3F)
      {
        sub_100017044(319);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1001A7390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v7 = *(*(a3 + 16) - 8);
    if (*(v7 + 84) == a2)
    {
      v8 = *(v7 + 48);
      v9 = a1 + *(a3 + 36);

      return v8(v9);
    }

    else
    {
      type metadata accessor for PhoneWallpaperViewModel(255, *(a3 + 16), *(a3 + 24), a4);
      v13 = type metadata accessor for Bindable();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1001A74BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v5 = *(a4 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 84) == a3)
    {
      v7 = *(v6 + 56);
      v8 = result + *(a4 + 36);

      return v7(v8, a2, a2, v5);
    }

    else
    {
      v9 = result;
      type metadata accessor for PhoneWallpaperViewModel(255, v5, *(a4 + 24), a4);
      v11 = type metadata accessor for Bindable();
      v12 = *(*(v11 - 8) + 56);
      v13 = v9 + *(a4 + 40);

      return v12(v13, a2, a2, v11);
    }
  }

  return result;
}

void sub_1001A75EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001A7640(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_10000460C(&qword_100222B98, &unk_1001B6800);
  type metadata accessor for Array();
  sub_10000460C(&qword_100222BA0, &unk_1001C3B70);
  swift_getWitnessTable();
  v3 = *(v2 + 8);
  type metadata accessor for ForEach();
  sub_1001A4248(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  swift_getOpaqueTypeConformance2();
  sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v4 = *(v3 + 8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022BA40, &qword_1001C3B80);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_10022BA48, &qword_1001C3B88);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PageControl(255, v1, v4, v5);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  _s16EventViewService17SelectAssetButtonVMa_0(255, v1, v2, v6);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100222BD8, &unk_1001C3B90);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100222BF8, &qword_100222BD8, &unk_1001C3B90, &protocol conformance descriptor for _BackgroundModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_1001A7CF4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(_s16EventViewService17SelectAssetButtonVMa_0(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_1001A61A0(v7, v4, v5, a2);
}

uint64_t sub_1001A7D80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001AB3A0();
  *a1 = result & 1;
  return result;
}

__n128 sub_1001A7DE4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1001A7E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = (_s16EventViewService17SelectAssetButtonVMa_0(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(*v7 + 80) + 32) & ~*(*v7 + 80));

  (*(*(v5 - 8) + 8))(v8 + v7[11], v5);
  v9 = v7[12];
  type metadata accessor for PhoneWallpaperViewModel(255, v5, v6, v10);
  v11 = type metadata accessor for Bindable();
  (*(*(v11 - 8) + 8))(v8 + v9, v11);

  return swift_deallocObject();
}

uint64_t sub_1001A7F94(uint64_t (*a1)(void, uint64_t, uint64_t), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1(0, v3, v4) - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a2(v6, v3, v4);
}

uint64_t sub_1001A8044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = (_s16EventViewService17SelectAssetButtonVMa_0(0, v5, v6, a4) - 8);
  v8 = (*(*v7 + 80) + 48) & ~*(*v7 + 80);
  swift_unknownObjectRelease();

  (*(*(v5 - 8) + 8))(v4 + v8 + v7[11], v5);
  v9 = v7[12];
  type metadata accessor for PhoneWallpaperViewModel(255, v5, v6, v10);
  v11 = type metadata accessor for Bindable();
  (*(*(v11 - 8) + 8))(v4 + v8 + v9, v11);

  return swift_deallocObject();
}

uint64_t sub_1001A81AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(_s16EventViewService17SelectAssetButtonVMa_0(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_10000BD00;

  return sub_1001A5470(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t sub_1001A82B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_10000460C(&qword_100222DE0, &unk_1001B69A0);
  type metadata accessor for SavedWallpaperView(255, v1, v2, v3);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1000455C8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022BB00, &unk_1001C3C70);
  swift_getOpaqueTypeConformance2();
  sub_10000BFFC(&qword_10022BB08, &qword_10022BB00, &unk_1001C3C70, &protocol conformance descriptor for TupleView<A>);
  return swift_getOpaqueTypeConformance2();
}

id sub_1001A8550(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  sub_1001844C4(&v43 - v7);
  if ((sub_100184A0C() & 1) == 0 || (v9 = sub_100184B94()) == 0)
  {
    sub_1001AA2D4(v8);
    return (*(v3 + 8))(v8, v2);
  }

  if (!*(v9 + 88) || (*(v9 + 80) & 1) == 0)
  {
    v12 = sub_100184E24();
    if (v12)
    {
      v13 = v12;
      v14 = [objc_opt_self() mainBundle];
      v15 = [v14 bundleIdentifier];

      if (v15)
      {
        type metadata accessor for RemoteViewController();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v17 = NSStringFromClass(ObjCClassFromMetadata);
        if (!v17)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = String._bridgeToObjectiveC()();
        }

        v18 = [objc_allocWithZone(SBSRemoteAlertDefinition) initWithServiceName:v15 viewControllerClassName:v17];

        v19 = [objc_opt_self() newHandleWithDefinition:v18 configurationContext:v13];
        v20 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
        [v19 activateWithContext:v20];

        return (*(v3 + 8))(v8, v2);
      }
    }

    goto LABEL_20;
  }

  v10 = objc_allocWithZone(LSApplicationRecord);
  v11 = sub_1001A9200(0xD000000000000019, 0x80000001001C8FC0, 0);
  if (!v11)
  {
LABEL_20:
    sub_1001AA2D4(v8);

    return (*(v3 + 8))(v8, v2);
  }

  v47 = v11;
  v21 = sub_1001850F0();
  if (!v21)
  {

    goto LABEL_20;
  }

  v44 = v21;
  v46 = [objc_allocWithZone(_LSOpenConfiguration) init];
  sub_1000024C4(&qword_10022BBB8, &unk_1001C3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v23;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v24;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  v45 = sub_1001A9E2C(inited);
  swift_setDeallocating();
  sub_1000024C4(&qword_10022BBC0, &qword_1001B7228);
  swift_arrayDestroy();
  v25 = (a1 + *(type metadata accessor for UniversalLinkRouter(0) + 20));
  if (*v25 == 0xD000000000000013 && 0x80000001001C8FE0 == v25[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = &type metadata for String;
    *&aBlock = v29;
    *(&aBlock + 1) = v30;
    sub_10005888C(&aBlock, v49);
    v31 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v31;
    sub_1001A9838(v49, v26, v28, isUniquelyReferenced_nonNull_native);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v46 setFrontBoardOptions:isa];

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v35 = result;

    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v3 + 16))(v6, v8, v2);
    v37 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    (*(v3 + 32))(v38 + v37, v6, v2);
    v53 = sub_1001AA70C;
    v54 = v38;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v51 = sub_1001A906C;
    v52 = &unk_10021A728;
    v39 = _Block_copy(&aBlock);
    v40 = v44;
    v41 = v47;
    v42 = v46;

    [v35 openUserActivity:v40 usingApplicationRecord:v41 configuration:v42 completionHandler:v39];
    _Block_release(v39);

    return (*(v3 + 8))(v8, v2);
  }

  __break(1u);
  return result;
}

double sub_1001A8C04(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = Strong;
      if (qword_100220C90 != -1)
      {
        swift_once();
      }

      v30 = v6;
      v18 = type metadata accessor for Logger();
      sub_10000BE10(v18, qword_100239158);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to open ShazamEventsApp, falling back to Safari)", v21, 2u);
      }

      sub_1000E350C();
      v22 = static OS_dispatch_queue.main.getter();
      (*(v13 + 16))(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v12);
      v23 = (*(v13 + 80) + 24) & ~*(v13 + 80);
      v24 = swift_allocObject();
      v25 = v29;
      *(v24 + 16) = v29;
      (*(v13 + 32))(v24 + v23, v16, v12);
      aBlock[4] = sub_1001AA86C;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100185774;
      aBlock[3] = &unk_10021A778;
      v26 = _Block_copy(aBlock);
      v27 = v25;
      static DispatchQoS.unspecified.getter();
      v34 = _swiftEmptyArrayStorage;
      sub_1001AA8CC(&qword_1002265B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000024C4(qword_100225DE0, &qword_1001BC490);
      sub_1000604E8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v26);

      (*(v30 + 8))(v8, v5);
      (*(v32 + 8))(v11, v33);
    }
  }

  return result;
}

void sub_1001A906C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_1001A9124(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for AppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, 0, v6);

  return 0;
}

id sub_1001A9200(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

void sub_1001A92DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000024C4(&qword_10022BC08, &qword_1001C3E38);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
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

      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();
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

void sub_1001A9580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000024C4(&qword_1002232F0, &qword_1001B7220);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
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
        sub_10005888C(v24, v35);
      }

      else
      {
        sub_100026D04(v24, v35);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
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
      sub_10005888C(v35, (*(v7 + 56) + 32 * v15));
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

_OWORD *sub_1001A9838(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10005846C(a2, a3);
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
      sub_1001A9B60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1001A9580(v16, a4 & 1);
    v11 = sub_10005846C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100012A7C(v22);

    return sub_10005888C(a1, v22);
  }

  else
  {
    sub_1001A9988(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1001A9988(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10005888C(a4, (a5[7] + 32 * a1));
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

void sub_1001A99F4()
{
  v1 = v0;
  sub_1000024C4(&qword_10022BC08, &qword_1001C3E38);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

void sub_1001A9B60()
{
  v1 = v0;
  sub_1000024C4(&qword_1002232F0, &qword_1001B7220);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        sub_100026D04(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10005888C(v25, (*(v4 + 56) + v22));
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

unint64_t sub_1001A9D04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000024C4(&qword_10022BC10, &qword_1001C3E40);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BEB8(v4, &v11, &qword_10022BC18, &qword_1001C3E48);
      v5 = v11;
      result = sub_1000FD098();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10005888C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1001A9E2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000024C4(&qword_1002232F0, &qword_1001B7220);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BEB8(v4, &v13, &qword_10022BBC0, &qword_1001B7228);
      v5 = v13;
      v6 = v14;
      result = sub_10005846C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10005888C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1001A9F5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000024C4(&qword_10022BBC8, &unk_1001C3E10);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BEB8(v4, v13, &unk_10022BBD0, &qword_1001BD508);
      result = sub_1000FBDEC(v13);
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
      result = sub_10005888C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1001AA098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000024C4(&qword_10022BC00, &qword_1001C3E30);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10005846C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1001AA1AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000024C4(&qword_10022BBF0, &qword_1001C3E20);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BEB8(v4, &v11, &qword_10022BBF8, &qword_1001C3E28);
      v5 = v11;
      result = sub_1000FD098();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10005888C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void sub_1001AA2D4(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000BE10(v6, qword_100239158);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    sub_1001AA8CC(&qword_100223E18, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_100139F7C(v11, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Opening %s in Safari", v9, 0xCu);
    sub_100012A7C(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v15 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  sub_1001AA1AC(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1001AA8CC(&unk_10022BBE0, type metadata accessor for OpenExternalURLOptionsKey, &unk_1001B342C);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v15 openURL:v18 options:isa completionHandler:0];
}

uint64_t sub_1001AA610()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001AA648()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_1001AA70C(char a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1001A8C04(a1, a2, v6, v7);
}

double sub_1001AA790(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001AA7A8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1001AA86C()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1001AA2D4(v2);
}

uint64_t sub_1001AA8CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001AA914(void *a1)
{
  v2 = type metadata accessor for UniversalLinkRouter(0);
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = [a1 activityType];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v19 = [a1 webpageURL];
  if (v19)
  {
    v20 = v19;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 16))(v9, v11, v5);
    v21 = [a1 _sourceApplication];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xE000000000000000;
    }

    (*(v6 + 32))(v4, v9, v5);
    v31 = &v4[*(v2 + 20)];
    *v31 = v23;
    v31[1] = v25;
    sub_1001A8550(v4);
    sub_100185498(v4);
    (*(v6 + 8))(v11, v5);
    return 1;
  }

LABEL_11:
  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000BE10(v26, qword_100239158);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Ignore user activity, it's not a universal link", v29, 2u);
  }

  return 0;
}

uint64_t sub_1001AAC7C(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1001AAD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6 = a4;
  v12 = swift_allocObject();
  sub_1001ABB2C(a1, a2, a3, v6, a5, a6);
  return v12;
}

uint64_t sub_1001AADE0()
{
  KeyPath = swift_getKeyPath();
  sub_1001AB6D4(KeyPath, v2, v3);

  return *(v0 + 264);
}

void sub_1001AAF60(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v10 = *(v4 + 224);
  v9 = *(v4 + 232);
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v10;
  *(inited + 48) = v9;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 12;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = a1;
  *(inited + 160) = a2;
  *(inited + 168) = a3;
  if (*(a4 + 72))
  {
    v12 = *(a4 + 64);
    v13 = *(a4 + 72);
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v20 = v12;
  v21 = v13;

  sub_100006C80(a1, a2, a3);

  v14 = sub_1001894F4(1, 5, 1, inited);
  v18 = v14;
  sub_100006C98(&aBlock, v25);
  sub_100118768(4, v25, &v18, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ELL;
  v16[3] = 0x80000001001C4640;
  v16[4] = v14;
  v23 = sub_100006D88;
  v24 = v16;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10015B4A4;
  v22 = &unk_10021A880;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

double sub_1001AB25C(char a1)
{
  v2 = *v1;
  v12 = *(v1 + 265);
  v3 = a1 & 1;
  v11 = a1;
  v10 = *(v2 + 80);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    *(v1 + 265) = v3;
  }

  else
  {
    __chkstk_darwin(v4);
    v9 = *(&v10 + 1);
    KeyPath = swift_getKeyPath();
    v7 = __chkstk_darwin(KeyPath);
    v8[2] = v1;
    LOBYTE(v9) = v3;
    sub_1001AB764(v7, sub_1001ABFE4, v8, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_1001AB3A0()
{
  KeyPath = swift_getKeyPath();
  sub_1001AB6D4(KeyPath, v2, v3);

  return *(v0 + 265);
}

uint64_t sub_1001AB414()
{
  v0 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v0 = v4;
  }

  else
  {
    v3 = 0;
  }

  v5._countAndFlagsBits = v3;
  v5._object = v0;
  String.append(_:)(v5);

  URL.init(string:)();
}

double sub_1001AB518()
{
  KeyPath = swift_getKeyPath();
  sub_1001AB6D4(KeyPath, v2, v3);

  return *(v0 + 248);
}

void sub_1001AB58C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = *v4;
  v7 = *(v4 + 31);
  v13 = a4;
  v14 = v7;
  v12 = *(*&v6 + 80);
  sub_100010E88(a1, a2, a3);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    v4[31] = a4;
  }

  else
  {
    __chkstk_darwin(v8);
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v11[2] = v4;
    *&v11[3] = a4;
    sub_1001AB764(v10, sub_1001ABF50, v11, &type metadata for () + 8);
  }
}

double sub_1001AB82C()
{
  KeyPath = swift_getKeyPath();
  sub_1001AB6D4(KeyPath, v2, v3);

  return *(v0 + 256);
}

void sub_1001AB8A0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = *v4;
  v7 = *(v4 + 32);
  v13 = a4;
  v14 = v7;
  v12 = *(*&v6 + 80);
  sub_100010E88(a1, a2, a3);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    v4[32] = a4;
  }

  else
  {
    __chkstk_darwin(v8);
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v11[2] = v4;
    *&v11[3] = a4;
    sub_1001AB764(v10, sub_1001ABFC0, v11, &type metadata for () + 8);
  }
}

double sub_1001AB9E8(char a1)
{
  v2 = *v1;
  v12 = *(v1 + 264);
  v3 = a1 & 1;
  v11 = a1;
  v10 = *(v2 + 80);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    *(v1 + 264) = v3;
  }

  else
  {
    __chkstk_darwin(v4);
    v9 = *(&v10 + 1);
    KeyPath = swift_getKeyPath();
    v7 = __chkstk_darwin(KeyPath);
    v8[2] = v1;
    LOBYTE(v9) = v3;
    sub_1001AB764(v7, sub_1001ABE88, v8, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_1001ABB2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  *(v6 + 16) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 24) = v13;
  *(v6 + 32) = v14 & 1;
  *(v6 + 40) = v15;
  *(v6 + 48) = 0x7A6542656E6F6870;
  *(v6 + 56) = 0xEA00000000006C65;
  *(v6 + 64) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 72) = v16;
  *(v6 + 80) = v17 & 1;
  *(v6 + 88) = v18;
  *(v6 + 96) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 104) = v19;
  *(v6 + 112) = v20 & 1;
  *(v6 + 120) = v21;
  *(v6 + 128) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 136) = v22;
  *(v6 + 144) = v23 & 1;
  *(v6 + 152) = v24;
  *(v6 + 160) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 168) = v25;
  *(v6 + 176) = v26 & 1;
  *(v6 + 184) = v27;
  *(v6 + 192) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 200) = v28;
  *(v6 + 208) = v29 & 1;
  *(v6 + 216) = v30;
  *(v6 + 265) = 0;
  ObservationRegistrar.init()();
  *(v6 + 224) = a1;
  *(v6 + 232) = a2;
  *(v6 + 240) = a3;
  *(v6 + 248) = a5;
  *(v6 + 256) = a6;
  *(v6 + 264) = a4;
  return v6;
}

char *sub_1001ABCB8()
{

  v1 = qword_10022BC20;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1001ABDA8()
{
  sub_1001ABCB8();

  return swift_deallocClassInstance();
}

uint64_t sub_1001ABE18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001AADE0();
  *a1 = result & 1;
  return result;
}

__n128 sub_1001ABE7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1001ABE98()
{

  return swift_deallocObject();
}

double sub_1001ABED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_1001ABF50()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 248) = result;
  return result;
}

double sub_1001ABFC0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 256) = result;
  return result;
}

uint64_t sub_1001ABFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[11] = v5;
  v3[12] = v4;

  return _swift_task_switch(sub_1001AC090, v5, v4);
}

uint64_t sub_1001AC090()
{
  v1 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 40) = v5;
  v2 = sub_10005EC40((v0 + 16));
  (*(*(v5 - 8) + 16))(v2, v1);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1000615DC;

  return sub_10006CADC(v0 + 16);
}

uint64_t sub_1001AC180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  result = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 40);
  v10 = *(v9 + 16);
  if (!v10)
  {
    return 0;
  }

  v29 = v8;
  v30 = v6;
  v31 = result;
  v28 = a2;
  v11 = 0;
  for (i = (v9 + 48); ; i += 3)
  {
    if (v11 >= *(v9 + 16))
    {
      __break(1u);
      return result;
    }

    v13 = *(i - 1);
    v14 = *i;
    v15 = *(i - 16);
    if (v15 != 1 && v15 != 2)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_10;
    }

    ++v11;

    if (v10 == v11)
    {
      return 0;
    }
  }

LABEL_10:
  v18 = v29;
  static Locale.current.getter();
  v19._countAndFlagsBits = v13;
  v19._object = v14;
  object = Locale.localizedString(forRegionCode:)(v19).value._object;

  (*(v30 + 8))(v18, v31);
  if (!object)
  {
    return 0;
  }

  v21 = *(v28 + 16);
  if (!v21)
  {
LABEL_21:

    return 0;
  }

  v22 = (v28 + 40);
  while (1)
  {
    v23 = *v22;
    if (*v22 >= 2)
    {
      break;
    }

LABEL_13:
    v22 += 2;
    if (!--v21)
    {
      goto LABEL_21;
    }
  }

  v17 = *(v22 - 1);
  v24 = String.lowercased()();
  v25 = String.lowercased()();
  if (v24._countAndFlagsBits == v25._countAndFlagsBits && v24._object == v25._object)
  {

    return v17;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v27 & 1) == 0)
  {
    sub_10004921C(v17, v23);
    goto LABEL_13;
  }

  return v17;
}

uint64_t sub_1001AC468()
{
  v0 = type metadata accessor for Logger();
  sub_1000640DC(v0, qword_100239158);
  sub_10000BE10(v0, qword_100239158);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001AC4D8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1001AC5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = swift_allocObject();
  sub_1001ACD90(a1, a2, a3, a4, v5);
  return v10;
}

uint64_t sub_1001AC6B8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 88);
  if (v3 && *(v3 + 16))
  {

    v4 = sub_1000FBDA8(2);
    if (v5)
    {
      v6 = *(*(v3 + 56) + v4);

      if (v6 <= 1 && v6)
      {

        v7 = 0;
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v7 = v8 ^ 1;
      }
    }

    else
    {

      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & (*(v2 + *(*v2 + 120)) != 0);
}

double sub_1001AC7E4(char a1)
{
  v2 = *v1;
  v12 = *(v1 + 16);
  v3 = a1 & 1;
  v11 = a1;
  v10 = *(v2 + 80);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    *(v1 + 16) = v3;
  }

  else
  {
    __chkstk_darwin(v4);
    v9 = *(&v10 + 1);
    KeyPath = swift_getKeyPath();
    v7 = __chkstk_darwin(KeyPath);
    v8[2] = v1;
    LOBYTE(v9) = v3;
    sub_1001ACCB8(v7, sub_10002FAC0, v8, &type metadata for () + 8);
  }

  return result;
}

void sub_1001AC928(uint64_t a1)
{
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  v5 = v1[3];
  v4 = v1[4];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  v6 = *(v1 + *(*v1 + 136));
  if (v6 == 15)
  {
    LOBYTE(v6) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = v6;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 4;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = xmmword_1001C4100;
  *(inited + 168) = 3;
  if (*(a1 + 72))
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v15 = v7;
  v16 = v8;

  v9 = sub_1001894F4(1, 5, 1, inited);
  v13 = v9;
  sub_100006C98(&aBlock, v20);
  sub_100118768(4, v20, &v13, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v10 = String._bridgeToObjectiveC()();
  v11 = swift_allocObject();
  v11[2] = 0xD00000000000001ELL;
  v11[3] = 0x80000001001C4640;
  v11[4] = v9;
  v18 = sub_100006D88;
  v19 = v11;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10015B4A4;
  v17 = &unk_10021AA08;
  v12 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

uint64_t sub_1001ACBA4()
{
  KeyPath = swift_getKeyPath();
  sub_1001ACC18(KeyPath, v2, v3);

  return *(v0 + 16);
}

uint64_t *sub_1001ACD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *v5;
  *(v5 + 16) = 0;
  v12 = v5 + *(v11 + 128);
  *v12 = LocalizedStringKey.init(stringLiteral:)();
  *(v12 + 8) = v13;
  *(v12 + 16) = v14 & 1;
  *(v12 + 24) = v15;
  ObservationRegistrar.init()();
  v5[3] = a1;
  v5[4] = a2;
  (*(*(*(v11 + 80) - 8) + 32))(v5 + *(*v5 + 112), a3);
  *(v5 + *(*v5 + 120)) = a4;
  *(v5 + *(*v5 + 136)) = a5;
  return v5;
}

char *sub_1001ACED0()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  v2 = *(*v0 + 144);
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1001ACFE4()
{
  sub_1001ACED0();

  return swift_deallocClassInstance();
}

__n128 sub_1001AD068(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1001AD074()
{

  return swift_deallocObject();
}

double sub_1001AD0B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001AD108(int a1, int a2, int a3, int a4)
{
  if (qword_100239068 == -1)
  {
    if (qword_100239070)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1001AD5D0();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100239070)
    {
      return _availability_version_check();
    }
  }

  if (qword_100239060 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1001AD5E8();
    a3 = v10;
    a4 = v9;
    v8 = dword_100239050 < v11;
    if (dword_100239050 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100239054 > a3)
      {
        return 1;
      }

      if (dword_100239054 >= a3)
      {
        return dword_100239058 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100239050 < a2;
  if (dword_100239050 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1001AD29C(uint64_t result)
{
  v1 = qword_100239070;
  if (qword_100239070)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100239070 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100239050, &dword_100239054, &dword_100239058);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
    }
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forRegionCode:)(Swift::String forRegionCode)
{
  v1 = Locale.localizedString(forRegionCode:)(forRegionCode._countAndFlagsBits, forRegionCode._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t Playlist.id.getter()
{
  return Playlist.id.getter();
}

{
  return Playlist.id.getter();
}

uint64_t type metadata accessor for Playlist()
{
  return type metadata accessor for Playlist();
}

{
  return type metadata accessor for Playlist();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

CMTime __swiftcall CMTime.init(value:timescale:)(Swift::Int64 value, Swift::Int32 timescale)
{
  v2 = CMTime.init(value:timescale:)(value, *&timescale);
  result.epoch = v4;
  result.timescale = v3;
  result.flags = HIDWORD(v3);
  result.value = v2;
  return result;
}