void *sub_1003CF8D4(void *a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [result *a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1003CF96C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getKeyPath();
    sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator, &unk_10095366C);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100176E00(1, v6, v7);
      swift_unknownObjectRelease();
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [swift_unknownObjectWeakLoadStrong() setNeedsUpdateProperties];
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1003CFAF8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator, &unk_10095366C);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      [v6 setEditing:a3 & 1 animated:{1, v5}];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1003CFBF4()
{
  swift_getKeyPath();
  sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator, &unk_10095366C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [swift_unknownObjectWeakLoadStrong() setNeedsUpdateProperties];
  return swift_unknownObjectRelease();
}

uint64_t sub_1003CFCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003CFD84, v6, v5);
}

uint64_t sub_1003CFD84()
{
  v1 = *(v0 + 32);

  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator, &unk_10095366C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    [Strong setNeedsUpdateProperties];
    swift_unknownObjectRelease();
  }

  **(v0 + 24) = v3 == 0;
  v4 = *(v0 + 8);

  return v4();
}

void *sub_1003D0080(uint64_t a1, SEL *a2)
{
  swift_getKeyPath();
  v14[0] = v2;
  sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator, &unk_10095366C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_1000082B4(a1, v14, &qword_100AD13D0, &unk_100942DB0);
    v7 = v15;
    if (v15)
    {
      v8 = sub_10000CA14(v14, v15);
      v9 = *(v7 - 8);
      v10 = __chkstk_darwin(v8);
      v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);
      v13 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v9 + 8))(v12, v7);
      sub_10000BA7C(v14);
    }

    else
    {
      v13 = 0;
    }

    [v6 *a2];
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003D026C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {

    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_1003D0080(v6, a4);

  return sub_100004F84(v6, &qword_100AD13D0, &unk_100942DB0);
}

uint64_t sub_1003D0308(uint64_t a1)
{
  sub_1000082B4(a1, v10, &qword_100AD13D0, &unk_100942DB0);
  v2 = v11;
  if (v11)
  {
    v3 = sub_10000CA14(v10, v11);
    v4 = *(v2 - 8);
    v5 = __chkstk_darwin(v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7, v5);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v4 + 8))(v7, v2);
    sub_10000BA7C(v10);
  }

  else
  {
    v8 = 0;
  }

  [v1 performWithSender:v8 target:0];
  return swift_unknownObjectRelease();
}

uint64_t sub_1003D051C(uint64_t a1)
{
  result = type metadata accessor for CanvasContentInputType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1003D05A4()
{
  result = qword_100AE23E8;
  if (!qword_100AE23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE23E8);
  }

  return result;
}

uint64_t sub_1003D0640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasContentInputType(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD57F0, &qword_100955210);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_1000F24EC(&unk_100AEBE10, &qword_100953798);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1000082B4(a1, &v20 - v12, &qword_100AD57F0, &qword_100955210);
  sub_1000082B4(a2, &v13[v15], &qword_100AD57F0, &qword_100955210);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1000082B4(v13, v10, &qword_100AD57F0, &qword_100955210);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1003D1154(&v13[v15], v7, type metadata accessor for CanvasContentInputType);
      v18 = sub_1001ED0B4(v10, v7);
      sub_1003D0D9C(v7, type metadata accessor for CanvasContentInputType);
      sub_1003D0D9C(v10, type metadata accessor for CanvasContentInputType);
      sub_100004F84(v13, &qword_100AD57F0, &qword_100955210);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1003D0D9C(v10, type metadata accessor for CanvasContentInputType);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100004F84(v13, &unk_100AEBE10, &qword_100953798);
    v17 = 1;
    return v17 & 1;
  }

  sub_100004F84(v13, &qword_100AD57F0, &qword_100955210);
  v17 = 0;
  return v17 & 1;
}

void sub_1003D0914(uint64_t a1, uint64_t a2, char a3, char a4, void *a5)
{
  v43 = *(a1 + 16);
  if (!v43)
  {
    return;
  }

  v6 = 0;
  v7 = *(type metadata accessor for CanvasContentInputType(0) - 8);
  v42 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v41 = *(v7 + 72);
  v8 = _swiftEmptyArrayStorage;
  v9 = &qword_100AE23F8;
  v10 = &qword_100953690;
  while (1)
  {
    v11 = sub_1003CCB0C(v42 + v41 * v6, a3);
    if (v11)
    {
      v12 = v11;
      sub_1000F24EC(&unk_100AD4780, &unk_100941070);
      v13 = swift_allocObject();
      if (a4)
      {
        *(v13 + 16) = xmmword_100941D60;
        *(v13 + 32) = v12;
        *(v13 + 40) = a5;
        v14 = a5;
      }

      else
      {
        *(v13 + 16) = xmmword_100941D50;
        *(v13 + 32) = v12;
      }
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    v15 = v13 >> 62;
    if (v13 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v8 >> 62;
    if (v8 >> 62)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
      v19 = v37 + v16;
      if (__OFADD__(v37, v16))
      {
LABEL_38:
        __break(1u);
        return;
      }
    }

    else
    {
      v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v18 + v16;
      if (__OFADD__(v18, v16))
      {
        goto LABEL_38;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v48 = v16;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

LABEL_20:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_21;
    }

    if (v17)
    {
      goto LABEL_20;
    }

    v21 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v19 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v46 = v8;
      goto LABEL_22;
    }

LABEL_21:
    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v21 = v46 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
    v22 = *(v21 + 16);
    v23 = *(v21 + 24);
    if (v15)
    {
      break;
    }

    v24 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_3;
    }

LABEL_26:
    if (((v23 >> 1) - v22) < v48)
    {
      goto LABEL_41;
    }

    v45 = v6;
    v27 = v21 + 8 * v22 + 32;
    v40 = v21;
    if (v15)
    {
      if (v24 < 1)
      {
        goto LABEL_43;
      }

      sub_1003D0CEC();
      v28 = v10;
      for (i = 0; i != v24; ++i)
      {
        sub_1000F24EC(v9, v28);
        v30 = v9;
        v31 = sub_1006B35A0(v47, i, v13);
        v33 = *v32;
        (v31)(v47, 0);
        v9 = v30;
        *(v27 + 8 * i) = v33;
      }
    }

    else
    {
      sub_1000065A8(0, &qword_100AD43B0, UIBarButtonItem_ptr);
      swift_arrayInitWithCopy();
      v28 = v10;
    }

    v6 = v45;
    v8 = v46;
    v10 = v28;
    if (v48 >= 1)
    {
      v34 = *(v40 + 16);
      v35 = __OFADD__(v34, v48);
      v36 = v34 + v48;
      if (v35)
      {
        goto LABEL_42;
      }

      *(v40 + 16) = v36;
    }

LABEL_4:
    if (++v6 == v43)
    {
      return;
    }
  }

  v25 = v21;
  v26 = _CocoaArrayWrapper.endIndex.getter();
  v21 = v25;
  v24 = v26;
  if (v26)
  {
    goto LABEL_26;
  }

LABEL_3:

  v8 = v46;
  if (v48 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

unint64_t sub_1003D0CEC()
{
  result = qword_100AE2400;
  if (!qword_100AE2400)
  {
    sub_1000F2A18(&qword_100AE23F8, &qword_100953690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2400);
  }

  return result;
}

uint64_t sub_1003D0D50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003D0D9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003D0DFC(void *a1)
{
  v3 = *(type metadata accessor for CanvasContentInputType(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1003CEAD0(a1, v4);
}

uint64_t sub_1003D0E6C()
{
  v1 = *(type metadata accessor for CanvasContentInputType(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for UUID();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v0 + v2, 1, v3))
    {
      (*(v4 + 8))(v0 + v2, v3);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1003D1038(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1003CFCEC(a1, v4, v5, v6);
}

uint64_t sub_1003D10EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003D1154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003D11BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE2408, &qword_100953708);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D1308(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD57F0, &qword_100955210);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D1394(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD57F0, &qword_100955210);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_1003D14B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasLayoutFragment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003D14EC()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE2458);
  v1 = sub_10000617C(v0, qword_100AE2458);
  if (qword_100AD0278 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30208);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1003D15B4()
{
  if (qword_100AD0370 != -1)
  {
    swift_once();
  }

  v1 = qword_100B30368;
  qword_100B2F8A0 = qword_100B30368;

  return v1;
}

void sub_1003D1618(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v128 = a3;
  v7 = sub_1000F24EC(&unk_100AD68C0, &unk_100941E70);
  __chkstk_darwin(v7 - 8);
  v118 = v108 - v8;
  v9 = sub_1000F24EC(&qword_100AE2498, &qword_1009538C8);
  __chkstk_darwin(v9 - 8);
  v117 = v108 - v10;
  v11 = sub_1000F24EC(&qword_100AE24A0, &unk_1009538D0);
  __chkstk_darwin(v11 - 8);
  v127 = v108 - v12;
  v13 = sub_1000F24EC(&qword_100AE2488, &qword_1009538B8);
  __chkstk_darwin(v13 - 8);
  v111 = v108 - v14;
  v15 = sub_1000F24EC(&qword_100AE2518, &qword_100953AE0);
  __chkstk_darwin(v15 - 8);
  v114 = v108 - v16;
  v116 = type metadata accessor for MergeableTextAlignment();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F24EC(&qword_100AE2480, &qword_1009538B0);
  __chkstk_darwin(v18 - 8);
  v113 = v108 - v19;
  v20 = sub_1000F24EC(&qword_100AE2520, &qword_100953AE8);
  __chkstk_darwin(v20 - 8);
  v124 = v108 - v21;
  v22 = type metadata accessor for MergeableWritingDirection();
  v125 = *(v22 - 8);
  v126 = v22;
  __chkstk_darwin(v22);
  v112 = v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000F24EC(&qword_100AE2490, &qword_1009538C0);
  __chkstk_darwin(v24 - 8);
  v122 = v108 - v25;
  v123 = type metadata accessor for MergeableTextLists();
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v120 = v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for UnknownValueProperties();
  __chkstk_darwin(v27 - 8);
  v28 = type metadata accessor for MergeableFont.Traits();
  v119.i64[0] = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v108 - v32;
  v34 = sub_1000F24EC(&qword_100AE24A8, &qword_1009538E0);
  __chkstk_darwin(v34 - 8);
  v36 = v108 - v35;
  type metadata accessor for MergeableTextAttributeScope();
  sub_1003D4E20(&unk_100ADC700, &type metadata accessor for MergeableTextAttributeScope, &protocol conformance descriptor for MergeableTextAttributeScope);
  v37 = a4;
  CRAttributedString.Attributes.init()();
  if (!*(a1 + 16) || (v39 = sub_100051964(NSFontAttributeName, v38), (v38 & 1) == 0) || (sub_10000BA20(*(a1 + 56) + 32 * v39, v131), sub_1000065A8(0, &qword_100AD2A78, UIFont_ptr), (swift_dynamicCast() & 1) == 0))
  {
LABEL_8:
    v48 = v37;
    if (!*(a1 + 16))
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v109 = a2;
  v40 = *&v130[0];
  v41 = [*&v130[0] fontDescriptor];
  v42 = [v41 symbolicTraits];

  if ((v42 & 3) == 0)
  {

    a2 = v109;
    goto LABEL_8;
  }

  v108[1] = swift_getKeyPath();
  v43 = v40;
  v44 = [v43 fontDescriptor];
  v45 = [v44 symbolicTraits];

  sub_10052DD60(v45);
  v46 = v119.i64[0];
  (*(v119.i64[0] + 16))(v30, v33, v28);
  UnknownValueProperties.init()();
  MergeableFont.init(traits:unknownProperties:)();

  (*(v46 + 8))(v33, v28);
  v47 = type metadata accessor for MergeableFont();
  (*(*(v47 - 8) + 56))(v36, 0, 1, v47);
  sub_1000F24EC(&qword_100ADC6B8, &qword_10094C5A8);
  sub_1003D4E20(&qword_100AE24B0, &type metadata accessor for MergeableTextAttributeScope.FontAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.FontAttribute);
  v48 = v37;
  CRAttributedString.Attributes.subscript.setter();

  a2 = v109;
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

LABEL_9:
  v49 = sub_100051964(NSUnderlineStyleAttributeName, v38);
  if (v38)
  {
    sub_10000BA20(*(a1 + 56) + 32 * v49, v131);
    if (swift_dynamicCast())
    {
      v50 = *&v130[0];
      if (*&v130[0])
      {
        swift_getKeyPath();
        *&v131[0] = v50;
        BYTE8(v131[0]) = 0;
        sub_1000F24EC(&qword_100ADC6B8, &qword_10094C5A8);
        sub_1003D4E20(&qword_100AE24C8, &type metadata accessor for MergeableTextAttributeScope.UnderlineAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.UnderlineAttribute);
        CRAttributedString.Attributes.subscript.setter();
      }
    }
  }

LABEL_13:
  if (*(a1 + 16))
  {
    v51 = sub_100051964(NSStrikethroughStyleAttributeName, v38);
    if (v38)
    {
      sub_10000BA20(*(a1 + 56) + 32 * v51, v131);
      if (swift_dynamicCast())
      {
        v52 = *&v130[0];
        if (*&v130[0])
        {
          swift_getKeyPath();
          *&v131[0] = v52;
          BYTE8(v131[0]) = 0;
          sub_1000F24EC(&qword_100ADC6B8, &qword_10094C5A8);
          sub_1003D4E20(&qword_100AE24D0, &type metadata accessor for MergeableTextAttributeScope.StrikethroughAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.StrikethroughAttribute);
          CRAttributedString.Attributes.subscript.setter();
        }
      }
    }
  }

  if (*(a1 + 16))
  {
    v53 = sub_100051964(NSParagraphStyleAttributeName, v38);
    if (v38)
    {
      sub_10000BA20(*(a1 + 56) + 32 * v53, v131);
      sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
      if (swift_dynamicCast())
      {
        v54 = a2;
        v55 = *&v130[0];
        [*&v130[0] firstLineHeadIndent];
        *v57.i64 = *v56.i64 - trunc(*v56.i64);
        v58.f64[0] = NAN;
        v58.f64[1] = NAN;
        v119 = vnegq_f64(v58);
        v59 = *vbslq_s8(v119, v57, v56).i64 + -0.1;
        [v55 headIndent];
        if (fabs(v59) < 0.01)
        {
          *v61.i64 = *v60.i64 - trunc(*v60.i64);
          if (fabs(*vbslq_s8(v119, v61, v60).i64 + -0.1) < 0.01)
          {
            swift_getKeyPath();
            LOBYTE(v131[0]) = 1;
            sub_1000F24EC(&qword_100ADC6B8, &qword_10094C5A8);
            sub_1003D4E20(&qword_100AE24C0, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.BlockQuoteAttribute);
            CRAttributedString.Attributes.subscript.setter();
          }
        }

        v62 = [v55 textLists];
        sub_1000065A8(0, &qword_100AD4290, NSTextList_ptr);
        v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v63 >> 62)
        {
          v107 = _CocoaArrayWrapper.endIndex.getter();

          if (!v107)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v64)
          {
LABEL_27:
            a2 = v54;
            if ([v55 baseWritingDirection] != -1)
            {
              v71 = [v55 baseWritingDirection];
              v72 = v124;
              sub_100086DC0(v71, v124);
              v74 = v125;
              v73 = v126;
              if ((*(v125 + 48))(v72, 1, v126) == 1)
              {
                sub_100004F84(v72, &qword_100AE2520, &qword_100953AE8);
              }

              else
              {
                v75 = v112;
                (*(v74 + 32))(v112, v72, v73);
                swift_getKeyPath();
                v76 = v113;
                (*(v74 + 16))(v113, v75, v73);
                v77 = sub_1000F24EC(&qword_100AE2508, &qword_100953AD8);
                swift_storeEnumTagMultiPayload();
                (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
                sub_1000F24EC(&qword_100ADC6B8, &qword_10094C5A8);
                sub_1003D4E20(&qword_100AE2500, &type metadata accessor for MergeableTextAttributeScope.WritingDirectionAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.WritingDirectionAttribute);
                a2 = v54;
                CRAttributedString.Attributes.subscript.setter();
                (*(v74 + 8))(v75, v73);
              }
            }

            if ([v55 alignment] == 4)
            {
            }

            else
            {
              v78 = [v55 alignment];
              v79 = v114;
              sub_100087090(v78, v114);
              v80 = v115;
              v81 = v116;
              if ((*(v115 + 48))(v79, 1, v116) == 1)
              {

                sub_100004F84(v79, &qword_100AE2518, &qword_100953AE0);
              }

              else
              {
                v82 = v110;
                (*(v80 + 32))(v110, v79, v81);
                swift_getKeyPath();
                v83 = v111;
                (*(v80 + 16))(v111, v82, v81);
                v84 = sub_1000F24EC(&qword_100AE24F8, &qword_100953AA0);
                swift_storeEnumTagMultiPayload();
                (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
                sub_1000F24EC(&qword_100ADC6B8, &qword_10094C5A8);
                sub_1003D4E20(&qword_100AE24F0, &type metadata accessor for MergeableTextAttributeScope.AlignmentAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.AlignmentAttribute);
                a2 = v54;
                CRAttributedString.Attributes.subscript.setter();

                (*(v80 + 8))(v82, v81);
              }
            }

            goto LABEL_36;
          }
        }

        v65 = [v55 textLists];
        v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v67 = v120;
        sub_10052D984(v66, v120);
        swift_getKeyPath();
        v69 = v121;
        v68 = v122;
        v70 = v123;
        (*(v121 + 16))(v122, v67, v123);
        (*(v69 + 56))(v68, 0, 1, v70);
        sub_1000F24EC(&qword_100ADC6B8, &qword_10094C5A8);
        sub_1003D4E20(&qword_100AE24E8, &type metadata accessor for MergeableTextAttributeScope.TextListsAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.TextListsAttribute);
        CRAttributedString.Attributes.subscript.setter();
        (*(v69 + 8))(v67, v70);
        goto LABEL_27;
      }
    }
  }

LABEL_36:
  if (!*(a1 + 16) || (v85 = sub_100051964(NSParagraphAttachmentAttributeName, v38), (v38 & 1) == 0) || (sub_10000BA20(*(a1 + 56) + 32 * v85, v131), sub_1000065A8(0, &qword_100ADC5F0, NSTextParagraphAnchoredAttachment_ptr), (swift_dynamicCast() & 1) == 0))
  {
LABEL_42:
    if (!*(a1 + 16))
    {
      goto LABEL_50;
    }

    goto LABEL_43;
  }

  v86 = *&v130[0];
  v87 = [*&v130[0] textAttachment];
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v87)
  {
    swift_getKeyPath();
    v88 = a2;
    v89 = v87;
    v90 = v127;
    MergeableAssetTextAttachment.init(assetTextAttachment:)();
    v91 = type metadata accessor for MergeableAssetTextAttachment();
    (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
    sub_1000F24EC(&qword_100ADC6B8, &qword_10094C5A8);
    sub_1003D4E20(&qword_100AE24D8, &type metadata accessor for MergeableTextAttributeScope.AssetTextAttachmentAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.AssetTextAttachmentAttribute);
    CRAttributedString.Attributes.subscript.setter();

    a2 = v88;
    goto LABEL_42;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_50;
  }

LABEL_43:
  v92 = sub_100051964(NSAttachmentAttributeName, v38);
  if (v38)
  {
    sub_10000BA20(*(a1 + 56) + 32 * v92, v130);
    sub_10002432C(v130, v131);
    sub_10000BA20(v131, v130);
    sub_1000F24EC(&qword_100AE2528, &qword_100953AF0);
    if (swift_dynamicCast())
    {
      v93 = v129;
      swift_getKeyPath();
      v94 = a2;
      v95 = v93;
      v96 = v127;
      MergeableAssetTextAttachment.init(assetTextAttachment:)();
      v97 = type metadata accessor for MergeableAssetTextAttachment();
      (*(*(v97 - 8) + 56))(v96, 0, 1, v97);
      sub_1000F24EC(&qword_100ADC6B8, &qword_10094C5A8);
      v98 = &qword_100AE24D8;
      v99 = &type metadata accessor for MergeableTextAttributeScope.AssetTextAttachmentAttribute;
      v100 = &protocol conformance descriptor for MergeableTextAttributeScope.AssetTextAttachmentAttribute;
    }

    else
    {
      sub_10000BA20(v131, v130);
      sub_1000F24EC(&unk_100AE2530, &qword_100953AF8);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_49:
        sub_10000BA7C(v131);
        goto LABEL_50;
      }

      v101 = v129;
      swift_getKeyPath();
      v94 = a2;
      v95 = v101;
      v102 = v117;
      MergeableFollowUpPromptAttachment.init(followUpPromptAttachment:)();
      v103 = type metadata accessor for MergeableFollowUpPromptAttachment();
      (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
      sub_1000F24EC(&qword_100ADC6B8, &qword_10094C5A8);
      v98 = &qword_100AE24E0;
      v99 = &type metadata accessor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute;
      v100 = &protocol conformance descriptor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute;
    }

    sub_1003D4E20(v98, v99, v100);
    a2 = v94;
    CRAttributedString.Attributes.subscript.setter();

    goto LABEL_49;
  }

LABEL_50:
  if (!*(a1 + 16) || (v104 = sub_100051964(NSForegroundColorAttributeName, v38), (v105 & 1) == 0))
  {

    goto LABEL_56;
  }

  sub_10000BA20(*(a1 + 56) + 32 * v104, v131);

  sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
  if (swift_dynamicCast())
  {
    v106 = *&v130[0];
    if (sub_1003D2BFC(*&v130[0], v48, v128))
    {
      swift_getKeyPath();
      static MergeableColor.normalized(fromFixed:compatibleWith:)();
      sub_1000F24EC(&qword_100ADC6B8, &qword_10094C5A8);
      sub_1003D4E20(&qword_100AE24B8, &type metadata accessor for MergeableTextAttributeScope.ColorAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.ColorAttribute);
      CRAttributedString.Attributes.subscript.setter();

LABEL_56:
      sub_10000BA7C(v128);
      return;
    }

    sub_10000BA7C(v128);
  }

  else
  {
    sub_10000BA7C(v128);
  }
}

BOOL sub_1003D2BFC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  sub_1000F24EC(&qword_100ADC6B8, &qword_10094C5A8);
  sub_1003D4E20(&qword_100AE24C0, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.BlockQuoteAttribute);
  CRAttributedString.Attributes.subscript.getter();

  if (v8 == 2 || (v8 & 1) == 0)
  {
    sub_10000CA14(a3, a3[3]);
    v4 = dispatch thunk of CustomAttributeProvider.defaultTextColor.getter();
  }

  else
  {
    if (qword_100ACFD30 != -1)
    {
      swift_once();
    }

    v4 = qword_100B2F8A0;
  }

  v5 = v4;
  sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
  v6 = static NSObject.== infix(_:_:)();

  return (v6 & 1) == 0;
}

void sub_1003D2D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(__n128))
{
  v6 = (a4)(0, a2, a3);
  v7 = __chkstk_darwin(v6 - 8);
  a5(v7);
  __break(1u);
}

uint64_t sub_1003D2DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

void *sub_1003D2E98(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_1000F24EC(&qword_100AE2480, &qword_1009538B0);
  __chkstk_darwin(v5 - 8);
  v191 = &v163[-v6];
  v7 = sub_1000F24EC(&qword_100AE2488, &qword_1009538B8);
  __chkstk_darwin(v7 - 8);
  v175 = &v163[-v8];
  v170 = type metadata accessor for MergeableTextList();
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = &v163[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000F24EC(&qword_100AE2490, &qword_1009538C0);
  __chkstk_darwin(v10 - 8);
  v173 = &v163[-v11];
  v178 = type metadata accessor for MergeableTextLists();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v174 = &v163[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1000F24EC(&qword_100AE2498, &qword_1009538C8);
  __chkstk_darwin(v13 - 8);
  v190 = &v163[-v14];
  v15 = type metadata accessor for MergeableFollowUpPromptAttachment();
  v16 = *(v15 - 8);
  v183 = v15;
  v184 = v16;
  __chkstk_darwin(v15);
  v172 = &v163[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v187 = &v163[-v19];
  v167 = type metadata accessor for UUID();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v165 = &v163[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1000F24EC(&qword_100AE24A0, &unk_1009538D0);
  __chkstk_darwin(v21 - 8);
  v180 = &v163[-v22];
  v23 = type metadata accessor for MergeableAssetTextAttachment();
  v188 = *(v23 - 8);
  v189 = v23;
  __chkstk_darwin(v23);
  v171 = &v163[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v182 = &v163[-v26];
  v27 = sub_1000F24EC(&unk_100AD68C0, &unk_100941E70);
  __chkstk_darwin(v27 - 8);
  v185 = &v163[-v28];
  v29 = type metadata accessor for MergeableFont.Traits();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v163[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v33);
  v35 = &v163[-v34];
  v36 = sub_1000F24EC(&qword_100AE24A8, &qword_1009538E0);
  __chkstk_darwin(v36 - 8);
  v38 = &v163[-v37];
  v179 = sub_10007BDBC(_swiftEmptyArrayStorage);
  v39 = a2[3];
  v192 = a2;
  sub_10000CA14(a2, v39);
  v40 = dispatch thunk of CustomAttributeProvider.defaultFont(compatibleWith:)();
  swift_getKeyPath();
  v41 = sub_1000F24EC(&qword_100ADC6B8, &qword_10094C5A8);
  sub_1003D4E20(&qword_100AE24B0, &type metadata accessor for MergeableTextAttributeScope.FontAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.FontAttribute);
  v186 = v41;
  CRAttributedString.Attributes.subscript.getter();

  v42 = type metadata accessor for MergeableFont();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v38, 1, v42) == 1)
  {
    sub_100004F84(v38, &qword_100AE24A8, &qword_1009538E0);
    v44 = v191;
  }

  else
  {
    MergeableFont.traits.getter();
    (*(v43 + 8))(v38, v42);
    static MergeableFont.Traits.italic.getter();
    sub_1003D4E20(&qword_100AE2510, &type metadata accessor for MergeableFont.Traits, &protocol conformance descriptor for MergeableFont.Traits);
    v45 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v46 = *(v30 + 8);
    v46(v32, v29);
    v176 = v3;
    static MergeableFont.Traits.bold.getter();
    v47 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v46(v32, v29);
    v46(v35, v29);
    if (v47)
    {
      v48 = v45 & 1 | 2;
    }

    else
    {
      v48 = v45 & 1;
    }

    v44 = v191;
    v3 = v176;
    v49 = sub_100361D00(v48);

    v40 = v49;
  }

  v196 = sub_1000065A8(0, &qword_100AD2A78, UIFont_ptr);
  *&v195 = v40;
  sub_10002432C(&v195, &v194);
  v181 = v40;
  v50 = v179;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v193 = v50;
  sub_100048100(&v194, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
  v52 = v193;
  swift_getKeyPath();
  sub_1003D4E20(&qword_100AE24B8, &type metadata accessor for MergeableTextAttributeScope.ColorAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.ColorAttribute);
  v53 = v185;
  CRAttributedString.Attributes.subscript.getter();

  v54 = type metadata accessor for MergeableColor();
  v55 = *(v54 - 8);
  v56 = (*(v55 + 48))(v53, 1, v54);
  v57 = v187;
  if (v56 == 1)
  {
    sub_100004F84(v53, &unk_100AD68C0, &unk_100941E70);
  }

  else
  {
    v58 = sub_10007C744();
    (*(v55 + 8))(v53, v54);
    if (v58)
    {
      goto LABEL_17;
    }
  }

  swift_getKeyPath();
  sub_1003D4E20(&qword_100AE24C0, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.BlockQuoteAttribute);
  CRAttributedString.Attributes.subscript.getter();

  if (v195 == 2 || (v195 & 1) == 0)
  {
    sub_10000CA14(v192, v192[3]);
    v59 = dispatch thunk of CustomAttributeProvider.defaultTextColor.getter();
  }

  else
  {
    if (qword_100ACFD30 != -1)
    {
      swift_once();
    }

    v59 = qword_100B2F8A0;
  }

  v58 = v59;
LABEL_17:
  v196 = sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
  *&v195 = v58;
  sub_10002432C(&v195, &v194);
  v60 = v58;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v193 = v52;
  sub_100048100(&v194, NSForegroundColorAttributeName, v61);
  v62 = v193;
  swift_getKeyPath();
  sub_1003D4E20(&qword_100AE24C8, &type metadata accessor for MergeableTextAttributeScope.UnderlineAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.UnderlineAttribute);
  CRAttributedString.Attributes.subscript.getter();

  if (BYTE8(v195))
  {
    v63 = v190;
  }

  else
  {
    v63 = v190;
    if (v195)
    {
      v196 = &type metadata for Int;
      sub_10002432C(&v195, &v194);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v62;
      sub_100048100(&v194, NSUnderlineStyleAttributeName, v64);
      v62 = v193;
    }
  }

  v65 = v44;
  swift_getKeyPath();
  sub_1003D4E20(&qword_100AE24D0, &type metadata accessor for MergeableTextAttributeScope.StrikethroughAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.StrikethroughAttribute);
  CRAttributedString.Attributes.subscript.getter();

  if (BYTE8(v195))
  {
    v66 = v60;
  }

  else
  {
    v66 = v60;
    if (v195)
    {
      v67 = v57;
      v196 = &type metadata for Int;
      sub_10002432C(&v195, &v194);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v62;
      sub_100048100(&v194, NSStrikethroughStyleAttributeName, v68);
      v62 = v193;
      goto LABEL_26;
    }
  }

  v67 = v57;
LABEL_26:
  swift_getKeyPath();
  sub_1003D4E20(&qword_100AE24D8, &type metadata accessor for MergeableTextAttributeScope.AssetTextAttachmentAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.AssetTextAttachmentAttribute);
  v69 = v180;
  CRAttributedString.Attributes.subscript.getter();

  v71 = v188;
  v70 = v189;
  if ((*(v188 + 48))(v69, 1, v189) == 1)
  {
    sub_100004F84(v69, &qword_100AE24A0, &unk_1009538D0);
    v72 = v67;
LABEL_37:
    v100 = v66;
    v101 = v65;
    v89 = v183;
    goto LABEL_38;
  }

  v185 = v62;
  (*(v71 + 32))(v182, v69, v70);
  sub_10000CA14(v192, v192[3]);
  v73 = dispatch thunk of CustomAttributeProvider.attachment(for:)();
  if (v73)
  {
    v74 = v73;
    ObjectType = swift_getObjectType();
    v76 = dispatch thunk of AssetTextAttachmentProtocol.anchorAlignment.getter();
    v72 = v67;
    if (v77)
    {
      v196 = ObjectType;
      *&v195 = v74;
      sub_10002432C(&v195, &v194);
      v78 = v74;
      v79 = v185;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v79;
      sub_100048100(&v194, NSAttachmentAttributeName, v80);
    }

    else
    {
      v102 = [objc_allocWithZone(NSTextParagraphAnchoredAttachment) initWithTextAttachment:v74 position:v76];
      v103 = NSParagraphAttachmentAttributeName;
      v196 = sub_1000065A8(0, &qword_100ADC5F0, NSTextParagraphAnchoredAttachment_ptr);
      *&v195 = v102;
      sub_10002432C(&v195, &v194);
      v104 = v102;
      v105 = v185;
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v105;
      sub_100048100(&v194, v103, v106);
    }

    (*(v188 + 8))(v182, v189);
    v62 = v193;
    v63 = v190;
    goto LABEL_37;
  }

  v180 = v66;
  v72 = v67;
  if (qword_100ACFD28 != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  sub_10000617C(v81, qword_100AE2458);
  v82 = v188;
  v83 = v189;
  v84 = v171;
  v85 = v182;
  (*(v188 + 16))(v171, v182, v189);
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.error.getter();
  v88 = os_log_type_enabled(v86, v87);
  v89 = v183;
  if (v88)
  {
    v90 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    *&v195 = v179;
    *v90 = 136315138;
    v91 = v165;
    v164 = v87;
    MergeableAssetTextAttachment.assetID.getter();
    sub_1003D4E20(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v92 = v167;
    v93 = dispatch thunk of CustomStringConvertible.description.getter();
    v95 = v94;
    (*(v166 + 8))(v91, v92);
    v176 = v3;
    v96 = *(v82 + 8);
    v96(v84, v83);
    v97 = sub_100008458(v93, v95, &v195);
    v98 = v180;
    v89 = v183;

    *(v90 + 4) = v97;
    _os_log_impl(&_mh_execute_header, v86, v164, "Attachment not found for ID: %s", v90, 0xCu);
    sub_10000BA7C(v179);

    v99 = v83;
    v100 = v98;
    v96(v182, v99);
    v63 = v190;
    v101 = v191;
    v3 = v176;
    v72 = v187;
    v62 = v185;
  }

  else
  {

    v131 = *(v82 + 8);
    v131(v84, v83);
    v131(v85, v83);
    v62 = v185;
    v63 = v190;
    v101 = v191;
    v100 = v180;
  }

LABEL_38:
  swift_getKeyPath();
  sub_1003D4E20(&qword_100AE24E0, &type metadata accessor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute);
  CRAttributedString.Attributes.subscript.getter();

  v107 = v184;
  if ((*(v184 + 48))(v63, 1, v89) == 1)
  {
    sub_100004F84(v63, &qword_100AE2498, &qword_1009538C8);
  }

  else
  {
    v185 = v62;
    (*(v107 + 32))(v72, v63, v89);
    sub_10000CA14(v192, v192[3]);
    v108 = dispatch thunk of CustomAttributeProvider.followUpPromptAttachment(for:)();
    if (v108)
    {
      v109 = v108;
      v196 = swift_getObjectType();
      *&v195 = v109;
      sub_10002432C(&v195, &v194);
      v110 = v109;
      v111 = v185;
      v112 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v111;
      sub_100048100(&v194, NSAttachmentAttributeName, v112);

      (*(v107 + 8))(v72, v89);
      v62 = v193;
    }

    else
    {
      v113 = v100;
      if (qword_100ACFD28 != -1)
      {
        swift_once();
      }

      v114 = type metadata accessor for Logger();
      sub_10000617C(v114, qword_100AE2458);
      v115 = v184;
      v116 = v172;
      v117 = v187;
      (*(v184 + 16))(v172, v187, v89);
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *&v195 = v121;
        *v120 = 136315138;
        v122 = MergeableFollowUpPromptAttachment.prompt.getter();
        v123 = v89;
        v124 = v113;
        v126 = v125;
        v176 = v3;
        v127 = *(v115 + 8);
        v128 = v116;
        v129 = v123;
        v127(v128, v123);
        v130 = sub_100008458(v122, v126, &v195);

        *(v120 + 4) = v130;
        _os_log_impl(&_mh_execute_header, v118, v119, "Attachment not found for prompt: %s", v120, 0xCu);
        sub_10000BA7C(v121);

        v127(v187, v129);
        v100 = v124;
        v101 = v191;
        v3 = v176;
        v62 = v185;
      }

      else
      {

        v132 = *(v115 + 8);
        v132(v116, v89);
        v132(v117, v89);
        v101 = v191;
        v62 = v185;
        v100 = v113;
      }
    }
  }

  v133 = sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
  v134 = sub_100047F28();
  if (sub_10007CBF0())
  {
    swift_getKeyPath();
    sub_1003D4E20(&qword_100AE24C0, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.BlockQuoteAttribute);
    CRAttributedString.Attributes.subscript.getter();

    if (v195 != 2 && (v195 & 1) != 0)
    {
      v135 = [objc_allocWithZone(NSMutableParagraphStyle) init];
      [v135 setParagraphStyle:v134];
      [v135 setFirstLineHeadIndent:14.1];
      [v135 setHeadIndent:14.1];

      v134 = v135;
    }

    swift_getKeyPath();
    sub_1003D4E20(&qword_100AE24E8, &type metadata accessor for MergeableTextAttributeScope.TextListsAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.TextListsAttribute);
    v136 = v173;
    CRAttributedString.Attributes.subscript.getter();
    v137 = v136;

    v138 = v177;
    v139 = v136;
    v140 = v178;
    if ((*(v177 + 48))(v139, 1, v178) == 1)
    {
      sub_100004F84(v137, &qword_100AE2490, &qword_1009538C0);
    }

    else
    {
      v190 = v133;
      v180 = v100;
      (*(v138 + 32))(v174, v137, v140);
      v141 = MergeableTextLists.textLists.getter();
      v142 = *(v141 + 16);
      if (v142)
      {
        v189 = v134;
        v185 = v62;
        v176 = v3;
        *&v195 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v192 = *(v169 + 16);
        v143 = *(v169 + 80);
        v188 = v141;
        v144 = v141 + ((v143 + 32) & ~v143);
        v145 = *(v169 + 72);
        v146 = (v169 + 8);
        v147 = v170;
        v148 = v168;
        do
        {
          (v192)(v148, v144, v147);
          MergeableTextList.markerFormatString.getter();
          v149 = String._bridgeToObjectiveC()();

          [objc_allocWithZone(NSTextList) initWithMarkerFormat:v149 options:0 startingItemNumber:MergeableTextList.startingItemNumber.getter()];

          (*v146)(v148, v147);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v144 += v145;
          --v142;
        }

        while (v142);

        v101 = v191;
        v62 = v185;
        v134 = v189;
      }

      else
      {
      }

      sub_1000065A8(0, &qword_100AD4290, NSTextList_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v134 setTextLists:isa];

      (*(v177 + 8))(v174, v178);
      v100 = v180;
      v133 = v190;
    }

    swift_getKeyPath();
    sub_1003D4E20(&qword_100AE24F0, &type metadata accessor for MergeableTextAttributeScope.AlignmentAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.AlignmentAttribute);
    v151 = v175;
    CRAttributedString.Attributes.subscript.getter();

    v152 = sub_1000F24EC(&qword_100AE24F8, &qword_100953AA0);
    if ((*(*(v152 - 8) + 48))(v151, 1, v152) == 1)
    {
      sub_100004F84(v151, &qword_100AE2488, &qword_1009538B8);
    }

    else
    {
      v153 = sub_10007D9D0();
      v155 = v154;
      sub_100004F84(v151, &qword_100AE24F8, &qword_100953AA0);
      if ((v155 & 1) == 0)
      {
        [v134 setAlignment:v153];
      }
    }

    swift_getKeyPath();
    sub_1003D4E20(&qword_100AE2500, &type metadata accessor for MergeableTextAttributeScope.WritingDirectionAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.WritingDirectionAttribute);
    CRAttributedString.Attributes.subscript.getter();

    v156 = sub_1000F24EC(&qword_100AE2508, &qword_100953AD8);
    if ((*(*(v156 - 8) + 48))(v101, 1, v156) == 1)
    {
      sub_100004F84(v101, &qword_100AE2480, &qword_1009538B0);
    }

    else
    {
      v157 = sub_100085E54();
      v159 = v158;
      sub_100004F84(v101, &qword_100AE2508, &qword_100953AD8);
      if ((v159 & 1) == 0)
      {
        [v134 setBaseWritingDirection:v157];
      }
    }
  }

  v196 = v133;
  *&v195 = v134;
  sub_10002432C(&v195, &v194);
  v160 = v134;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v193 = v62;
  sub_100048100(&v194, NSParagraphStyleAttributeName, v161);

  return v193;
}

void protocol witness for static AttributeConverter.crAttributes(from:traitCollection:customAttributeProvider:) in conformance MergeableTextAttributeScope(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100086C04(a3, v7);

  sub_1003D1618(a1, a2, v7, a4);
}

uint64_t protocol witness for static AttributeConverter.preferredAttributeProvider.getter in conformance MergeableTextAttributeScope()
{
  v0 = type metadata accessor for CustomAttributeProviderConcrete(0);
  sub_1003D4E20(&qword_100AE2470, type metadata accessor for CustomAttributeProviderConcrete, &unk_10096CF30);
  return v0;
}

id sub_1003D4AEC()
{
  v0 = [objc_opt_self() labelColor];

  return v0;
}

uint64_t protocol witness for static AttributeConverter.crAttributes(from:traitCollection:customAttributeProvider:) in conformance MergeableTitleAttributeScope(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1003D4E20(&qword_100AE2478, &type metadata accessor for MergeableTitleAttributeScope, &protocol conformance descriptor for MergeableTitleAttributeScope);

  return CRAttributedString.Attributes.init()();
}

unint64_t _s13JournalShared28MergeableTitleAttributeScopeV0A2UI0E9Converter0A0AdEP12nsAttributes4from15traitCollection06customE8ProviderSDySo21NSAttributedStringKeyaypG9Coherence012CRAttributedQ0V0J0Vyx_G_So07UITraitM0CAD06CustomeO0_ptFZTW_0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1000F24EC(&unk_100AD9200, &qword_1009488B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  *(inited + 32) = NSFontAttributeName;
  sub_10000CA14(a3, a3[3]);
  v5 = NSFontAttributeName;
  v6 = dispatch thunk of CustomAttributeProvider.defaultFont(compatibleWith:)();
  v7 = sub_1000065A8(0, &qword_100AD2A78, UIFont_ptr);
  *(inited + 40) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = NSForegroundColorAttributeName;
  sub_10000CA14(a3, a3[3]);
  v8 = NSForegroundColorAttributeName;
  v9 = dispatch thunk of CustomAttributeProvider.defaultTextColor.getter();
  *(inited + 104) = sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
  *(inited + 80) = v9;
  v10 = sub_10007BDBC(inited);
  swift_setDeallocating();
  sub_1000F24EC(&unk_100AD9210, &qword_10094C510);
  swift_arrayDestroy();
  return v10;
}

unint64_t sub_1003D4D2C()
{
  result = qword_100AEBE90;
  if (!qword_100AEBE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEBE90);
  }

  return result;
}

uint64_t sub_1003D4E20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1003D50D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveActivitySceneDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LiveActivitySceneDelegate(uint64_t a1)
{
  result = qword_100AE2640;
  if (!qword_100AE2640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D51F0(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

void sub_1003D528C(void *a1)
{
  v2 = v1;
  type metadata accessor for ActivityScene();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "connecting scene", v9, 2u);
    }

    v33 = v6;
    v10 = [v5 SBUI_isHostedBySystemAperture];
    if (qword_100ACFED0 != -1)
    {
      swift_once();
    }

    v11 = qword_100B2FA60;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_9;
    }

    v12 = *(v11 + 24);
    if (v10)
    {
      v13 = objc_allocWithZone(type metadata accessor for AudioRecordingDynamicIslandViewController(0));
      v14 = swift_unknownObjectRetain();
      v15 = sub_1007E0DC0(v14, v12);
      v16 = *(v2 + OBJC_IVAR____TtC7Journal25LiveActivitySceneDelegate_systemApertureElementProvider);
      *(v2 + OBJC_IVAR____TtC7Journal25LiveActivitySceneDelegate_systemApertureElementProvider) = v15;
      v17 = v15;

      v18 = v17;
      [v5 setSystemApertureElementViewControllerProvider:v18];

      swift_unknownObjectRelease();
LABEL_9:

      goto LABEL_15;
    }

    v21 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
    ActivitySceneMetrics.init(size:cornerRadius:)();
    dispatch thunk of ActivityScene.resolvedMetrics.setter();
    v22 = [objc_opt_self() systemBlackColor];
    v23 = [v22 colorWithAlphaComponent:0.9];

    dispatch thunk of ActivityScene.backgroundTintColor.setter();
    v24 = [objc_allocWithZone(UIWindow) initWithWindowScene:v5];

    v25 = OBJC_IVAR____TtC7Journal25LiveActivitySceneDelegate_window;
    v26 = *(v2 + OBJC_IVAR____TtC7Journal25LiveActivitySceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC7Journal25LiveActivitySceneDelegate_window) = v24;
    v27 = v24;

    if (v27)
    {
      v28 = type metadata accessor for AudioRecordingLiveActivityBannerViewController();
      ObjectType = swift_getObjectType();
      v30 = swift_unknownObjectRetain();
      v31 = sub_100111CC4(v30, v28, ObjectType, v12);
      [v27 setRootViewController:v31];
    }

    v32 = *(v2 + v25);
    [v32 makeKeyAndVisible];

    swift_unknownObjectRelease();
  }

  else
  {
    v33 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v33, v19, "not an activity scene", v20, 2u);
    }
  }

LABEL_15:
}

void *sub_1003D560C()
{
  v1 = sub_1000F24EC(&qword_100ADA918, &qword_100962DA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for ReflectionAssetMetadata();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC7Journal15ReflectionAsset_metadata))
  {
    (*(v5 + 56))(v3, 1, 1, v4, v6);
    goto LABEL_6;
  }

  sub_10025CD30(v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_6:
    sub_100004F84(v3, &qword_100ADA918, &qword_100962DA0);
    return 0;
  }

  (*(v5 + 32))(v8, v3, v4);
  v9 = ReflectionAssetMetadata.prompt.getter();
  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v13 = v9;
    v14 = v10;
    v11 = Data.getAttributedString()();
    v15 = sub_10003A5C8(v13, v14);
    if (v11)
    {
      v16 = [v11 string];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  (*(v5 + 8))(v8, v4);
  return v11;
}

id sub_1003D585C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReflectionAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1003D58BC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC7Journal15ReflectionAsset_metadata) = a1;

  return result;
}

void *sub_1003D58F8()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v53 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&qword_100ADA918, &qword_100962DA0);
  __chkstk_darwin(v13 - 8);
  v15 = &v49 - v14;
  v16 = type metadata accessor for ReflectionAssetMetadata();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006AB5D4(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100004F84(v15, &qword_100ADA918, &qword_100962DA0);
    return 0;
  }

  v51 = v8;
  (*(v17 + 32))(v19, v15, v16);
  v20 = ReflectionAssetMetadata.prompt.getter();
  if (v21 >> 60 == 15 || (v23 = v20, v24 = v21, v25 = Data.getAttributedString()(), v22.n128_f64[0] = sub_10003A5C8(v23, v24), !v25))
  {
    (*(v17 + 8))(v19, v16, v22);
    return 0;
  }

  v26 = [v25 string];

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  static UTType.item.getter();
  v29 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = UTType._bridgeToObjectiveC()().super.isa;
  v31 = [v29 initWithContentType:isa];

  v32 = (*(v10 + 8))(v12, v9);
  v33 = v31;
  sub_10012B77C(v50, v28, 0, 0, v32);

  v34 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v34)
  {
    v35 = [v34 entry];
    v36 = v51;
    if (v35)
    {
      v37 = v35;
      JournalEntryMO.displayDate.getter();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }
  }

  else
  {
    v38 = 1;
    v36 = v51;
  }

  v40 = type metadata accessor for Date();
  (*(*(v40 - 8) + 56))(v36, v38, 1, v40);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v41 = String.init(localized:table:bundle:locale:comment:)();
  v43 = v42;
  sub_1000F24EC(&unk_100AD9A60, &unk_100941D10);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100940080;
  v45 = sub_10012C00C(v41, v43, v36);
  v47 = v46;

  *(v44 + 32) = v45;
  *(v44 + 40) = v47;
  v48 = Array._bridgeToObjectiveC()().super.isa;

  [v33 setAlternateNames:v48];

  sub_100004F84(v36, &unk_100AD4790, &unk_10093B4E0);
  (*(v17 + 8))(v19, v16);
  return v33;
}

uint64_t sub_1003D5F0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReflectionAssetMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1003D5F50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v67 = a1;
  v68 = a5;
  v59 = a4;
  v62 = a2;
  v64 = sub_1000F24EC(&qword_100ADA908, &unk_100962D90);
  __chkstk_darwin(v64);
  v65 = &v52 - v5;
  v63 = type metadata accessor for ReflectionAssetMetadata();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for UUID();
  v52 = *(v58 - 1);
  v7 = v52;
  __chkstk_darwin(v58);
  v57 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v52 - v10;
  v11 = type metadata accessor for AssetSource();
  v69 = *(v11 - 8);
  v12 = v69;
  __chkstk_darwin(v11);
  v56 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v52 - v15;
  v55 = &v52 - v15;
  v17 = type metadata accessor for AssetType();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v52 - v23;
  v25 = *(v18 + 104);
  v53 = v17;
  v25(&v52 - v23, enum case for AssetType.reflection(_:), v17, v22);
  v54 = *(v12 + 16);
  v54(v16, v67, v11);
  v26 = v66;
  UUID.init()();
  *(objc_allocWithZone(type metadata accessor for ReflectionAsset(0)) + OBJC_IVAR____TtC7Journal15ReflectionAsset_metadata) = 0;
  v27 = *(v7 + 16);
  v28 = v57;
  v29 = v58;
  v27(v57, v26, v58);
  (*(v18 + 16))(v20, v24, v17);
  v31 = v55;
  v30 = v56;
  v54(v56, v55, v11);
  v32 = v59;
  v33 = sub_100285908(v28, v20, v30);
  (*(v52 + 8))(v66, v29);
  v58 = *(v69 + 8);
  v66 = v11;
  v69 += 8;
  (v58)(v31, v11);
  (*(v18 + 8))(v24, v53);
  if (!v32)
  {
    v45 = v33;
    v37 = 0xF000000000000000;
    v38 = v68;
    if (!v68)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v34 = v33;
  v35 = v32;
  NSAttributedString.getAttributedStringAsData()();
  v37 = v36;

  v38 = v68;
  if (v68)
  {
LABEL_3:
    v39 = objc_opt_self();
    v40 = v32;
    v41 = [v39 traitCollectionWithUserInterfaceStyle:1];
    v57 = v37;
    v42 = [v68 resolvedColorWithTraitCollection:v41];

    sub_10018D564();
    NSCoding<>.toData.getter();

    v38 = v68;
    v43 = [v39 traitCollectionWithUserInterfaceStyle:2];
    v44 = [v38 resolvedColorWithTraitCollection:v43];

    v32 = v40;
    NSCoding<>.toData.getter();
  }

LABEL_5:
  v46 = v60;
  ReflectionAssetMetadata.init(type:prompt:colorLight:colorDark:)();

  (v58)(v67, v66);
  v47 = v65;
  (*(v61 + 32))(v65, v46, v63);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AE26C8, &qword_100953BB8);
  v48 = swift_allocObject();
  v49 = *(*v48 + 104);
  v50 = sub_1000F24EC(&qword_100ADA918, &qword_100962DA0);
  (*(*(v50 - 8) + 56))(v48 + v49, 1, 1, v50);
  *(v48 + *(*v48 + 112)) = xmmword_100941EE0;
  sub_1003D6634(v47, v48 + *(*v48 + 120));
  *&v33[OBJC_IVAR____TtC7Journal15ReflectionAsset_metadata] = v48;

  return v33;
}

uint64_t sub_1003D6634(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADA908, &unk_100962D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for InsightsTipViewModel(uint64_t a1)
{
  result = qword_100AE2738;
  if (!qword_100AE2738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003D6718(uint64_t a1)
{
  sub_1003D688C(319, &qword_100AE2748, &type metadata accessor for OpenURLAction);
  if (v1 <= 0x3F)
  {
    sub_1003D688C(319, &qword_100AD9938, type metadata accessor for InsightsDataManager);
    if (v2 <= 0x3F)
    {
      sub_1003D688C(319, &qword_100AE2750, &type metadata accessor for WithCurrentHostingControllerAction);
      if (v3 <= 0x3F)
      {
        sub_1003D68E0(319, &qword_100ADCA30, &type metadata for Bool, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_1003D68E0(319, &unk_100AE2758, &type metadata for Any + 8, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1003D688C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1003D68E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1003D6930(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000CA14((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1003D69FC()
{
  v1 = v0;
  v2 = type metadata accessor for NSNotificationCenter.Publisher();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for WithCurrentHostingControllerAction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for InsightsTipViewModel(0);
  __chkstk_darwin(v10);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1003D8A1C(v0, v12, type metadata accessor for InsightsTipViewModel);
  sub_1003D877C(&qword_100AE27B0, &qword_100953C70, &type metadata accessor for WithCurrentHostingControllerAction, v9);
  sub_1003D8A84(v12, type metadata accessor for InsightsTipViewModel);
  v37 = v0;
  WithCurrentHostingControllerAction.callAsFunction(_:)();
  (*(v7 + 8))(v9, v6);
  v13 = v10[9];
  sub_1000082B4(v0 + v13, &v40, &qword_100AD13D0, &unk_100942DB0);
  v14 = v43;
  sub_100004F84(&v40, &qword_100AD13D0, &unk_100942DB0);
  if (!v14)
  {
    v15 = [objc_opt_self() defaultCenter];
    if (qword_100ACF9F0 != -1)
    {
      swift_once();
    }

    NSNotificationCenter.publisher(for:object:)();

    v16 = v1 + v10[8];
    v17 = *v16;
    v18 = *(v16 + 8);
    v38 = v17;
    v39 = v18;
    sub_1000F24EC(&qword_100AD2640, &unk_10094E000);
    State.projectedValue.getter();
    v19 = v40;
    v20 = v41;
    v21 = v42;
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v20;
    *(v22 + 32) = v21;
    sub_1000407C8(&qword_100AE27A8, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
    v23 = Publisher<>.sink(receiveValue:)();

    (*(v3 + 8))(v5, v2);
    v43 = type metadata accessor for AnyCancellable();
    v40 = v23;
    sub_10002823C(&v40, v1 + v13);
  }

  v24 = v10[10];
  sub_1000082B4(v1 + v24, &v40, &qword_100AD13D0, &unk_100942DB0);
  v25 = v43;
  result = sub_100004F84(&v40, &qword_100AD13D0, &unk_100942DB0);
  if (!v25)
  {
    v27 = [objc_opt_self() defaultCenter];
    if (qword_100ACF9E8 != -1)
    {
      swift_once();
    }

    NSNotificationCenter.publisher(for:object:)();

    v28 = v1 + v10[8];
    v29 = *v28;
    v30 = *(v28 + 8);
    v38 = v29;
    v39 = v30;
    sub_1000F24EC(&qword_100AD2640, &unk_10094E000);
    State.projectedValue.getter();
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v34 = swift_allocObject();
    *(v34 + 16) = v31;
    *(v34 + 24) = v32;
    *(v34 + 32) = v33;
    sub_1000407C8(&qword_100AE27A8, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
    v35 = Publisher<>.sink(receiveValue:)();

    (*(v3 + 8))(v5, v2);
    v43 = type metadata accessor for AnyCancellable();
    v40 = v35;
    return sub_10002823C(&v40, v1 + v24);
  }

  return result;
}

void sub_1003D6F80(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for InsightsTipViewModel(0);
  __chkstk_darwin(v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  if (a1)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    sub_1003D8A1C(a2, v6, type metadata accessor for InsightsTipViewModel);
    v11 = &v6[*(v4 + 32)];
    v12 = *v11;
    v13 = *(v11 + 1);
    v23 = v12;
    v24 = v13;
    v14 = a1;
    sub_1000F24EC(&qword_100AD2640, &unk_10094E000);
    State.projectedValue.getter();
    v15 = v21[1];
    v16 = v21[2];
    v17 = v22;
    sub_1003D8A84(v6, type metadata accessor for InsightsTipViewModel);
    type metadata accessor for MainActor();
    v18 = v14;
    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = &protocol witness table for MainActor;
    *(v20 + 32) = v18;
    *(v20 + 40) = v15;
    *(v20 + 48) = v16;
    *(v20 + 56) = v17;
    sub_1003E9628(0, 0, v9, &unk_100953C68, v20);
  }
}

uint64_t sub_1003D719C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 34) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  type metadata accessor for MainActor();
  *(v7 + 64) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003D723C, v9, v8);
}

uint64_t sub_1003D723C()
{
  v1 = *(v0 + 34);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  v5 = sub_10018B14C(v3);
  *(v0 + 16) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  *(v0 + 33) = v5;
  sub_1000F24EC(&qword_100AE9D40, &qword_10094CB80);
  Binding.wrappedValue.setter();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1003D72F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a4;
  v4[29] = type metadata accessor for StreakSummary(0);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = type metadata accessor for InsightsDataManager.Streaks(0);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v5 = type metadata accessor for EnvironmentValues();
  v4[35] = v5;
  v4[36] = *(v5 - 8);
  v4[37] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  v4[38] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[39] = v6;
  v4[40] = *(v6 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = type metadata accessor for OpenSensitiveURLAction.Destination(0);
  v4[43] = swift_task_alloc();
  v7 = type metadata accessor for OpenURLAction();
  v4[44] = v7;
  v4[45] = *(v7 - 8);
  v4[46] = swift_task_alloc();
  v8 = type metadata accessor for Tips.InvalidationReason();
  v4[47] = v8;
  v4[48] = *(v8 - 8);
  v4[49] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[50] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[51] = v10;
  v4[52] = v9;

  return _swift_task_switch(sub_1003D75D8, v10, v9);
}

uint64_t sub_1003D75D8()
{
  if (qword_100ACFD20 != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v0[53] = qword_100B2F898;

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[54] = v2;
  v0[55] = v4;

  return _swift_task_switch(sub_1003D76AC, v2, v4);
}

uint64_t sub_1003D76AC()
{
  v1 = v0[53];
  v2 = OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter;
  v3 = [*(v1 + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter) notificationSettings];
  v4 = [v3 authorizationStatus];

  if (v4)
  {

    v0[57] = v4;
    v5 = v0[51];
    v6 = v0[52];

    return _swift_task_switch(sub_1003D7B38, v5, v6);
  }

  else
  {
    v7 = *(v1 + v2);
    v0[2] = v0;
    v0[7] = v0 + 481;
    v0[3] = sub_1003D784C;
    v8 = swift_continuation_init();
    v0[17] = sub_1000F24EC(&unk_100AE1D90, &unk_1009533C0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1003D6930;
    v0[13] = &unk_100A6B188;
    v0[14] = v8;
    [v7 requestAuthorizationWithOptions:6 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1003D784C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 448) = v2;
  v3 = *(v1 + 440);
  v4 = *(v1 + 432);
  if (v2)
  {
    v5 = sub_1003D7AA8;
  }

  else
  {
    v5 = sub_1003D797C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003D797C()
{
  v1 = *(v0 + 481);
  v2 = [objc_opt_self() defaultCenter];
  if (qword_100ACFD18 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 424);
  [v2 postNotificationName:qword_100B2F890 object:v3];

  v4 = OBJC_IVAR____TtC7Journal27JournalNotificationsManager_defaults;
  [*(v3 + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_defaults) setIsJournalingScheduleEnabled:0];
  [*(v3 + v4) setIsStreakReminderEnabled:0];

  v5 = 1;
  if (v1)
  {
    v5 = 2;
  }

  *(v0 + 456) = v5;
  v6 = *(v0 + 408);
  v7 = *(v0 + 416);

  return _swift_task_switch(sub_1003D7B38, v6, v7);
}

uint64_t sub_1003D7AA8(uint64_t a1)
{
  swift_willThrow();
  swift_willThrow();

  v1[57] = 0;
  v2 = v1[51];
  v3 = v1[52];

  return _swift_task_switch(sub_1003D7B38, v2, v3);
}

uint64_t sub_1003D7B38()
{
  v1 = *(v0 + 456);
  v3 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 376);
  v5 = *(v0 + 224);
  v6 = type metadata accessor for InsightsTipViewModel(0);
  *(v0 + 480) = *(v5 + *(v6 + 28));
  (*(v3 + 104))(v2, enum case for Tips.InvalidationReason.actionPerformed(_:), v4);
  sub_10031F03C();
  Tip.invalidate(reason:)();
  (*(v3 + 8))(v2, v4);
  if (v1 > 1)
  {
    v17 = (*(v0 + 224) + *(v6 + 20));
    v18 = *v17;
    v19 = *(v17 + 8);

    v20 = v18;
    if ((v19 & 1) == 0)
    {
      v22 = *(v0 + 288);
      v21 = *(v0 + 296);
      v23 = *(v0 + 280);
      static os_log_type_t.fault.getter();
      v24 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v22 + 8))(v21, v23);
      v20 = *(v0 + 192);
    }

    v25 = *(v0 + 272);
    v26 = *(v0 + 256);
    v27 = *(v0 + 232);
    swift_getKeyPath();
    *(v0 + 200) = v20;
    sub_1000407C8(&qword_100AD99A0, type metadata accessor for InsightsDataManager, &unk_100962218);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v28 = OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
    swift_beginAccess();
    sub_1003D8A1C(v20 + v28, v25, type metadata accessor for InsightsDataManager.Streaks);

    v29 = *(v27 + 28);
    v30 = *(v0 + 272);
    if (*(v25 + *(v26 + 20) + v29) >= 2)
    {
      v37 = *(v30 + v29);
      sub_1003D8A84(v30, type metadata accessor for InsightsDataManager.Streaks);
      v31 = v37 < 3;
    }

    else
    {
      sub_1003D8A84(v30, type metadata accessor for InsightsDataManager.Streaks);
      v31 = 0;
    }

    if ((v19 & 1) == 0)
    {
      v39 = *(v0 + 288);
      v38 = *(v0 + 296);
      v40 = *(v0 + 280);
      static os_log_type_t.fault.getter();
      v41 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v39 + 8))(v38, v40);
      v18 = *(v0 + 208);
    }

    v42 = *(v0 + 264);
    swift_getKeyPath();
    *(v0 + 216) = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v43 = OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
    swift_beginAccess();
    sub_1003D8A1C(v18 + v43, v42, type metadata accessor for InsightsDataManager.Streaks);

    v44 = *(v0 + 264);
    v45 = v44;
    if (v31)
    {
      v45 = v44 + *(v26 + 20);
    }

    v46 = *(v0 + 400);
    v48 = *(v0 + 240);
    v47 = *(v0 + 248);
    sub_1003D8A1C(v45, v48, type metadata accessor for StreakSummary);
    sub_1003D8A84(v44, type metadata accessor for InsightsDataManager.Streaks);
    sub_1003D86F0(v48, v47);

    v49 = swift_task_alloc();
    *(v0 + 464) = v49;
    *v49 = v0;
    v49[1] = sub_1003D81D4;
    v50 = *(v0 + 248);

    return sub_1003C2990(v46, &protocol witness table for MainActor, v50, v31);
  }

  else
  {
    v7 = *(v0 + 368);
    v8 = *(v0 + 312);
    v9 = *(v0 + 320);
    v10 = *(v0 + 304);

    sub_1003D877C(&qword_100AE27A0, &qword_100953C58, &type metadata accessor for OpenURLAction, v7);
    swift_storeEnumTagMultiPayload();
    sub_1008B4384(v10);
    v11 = (*(v9 + 48))(v10, 1, v8);
    v13 = *(v0 + 360);
    v12 = *(v0 + 368);
    v15 = *(v0 + 344);
    v14 = *(v0 + 352);
    if (v11 == 1)
    {
      v16 = *(v0 + 304);
      sub_1003D8A84(*(v0 + 344), type metadata accessor for OpenSensitiveURLAction.Destination);
      (*(v13 + 8))(v12, v14);
      sub_100004F84(v16, &unk_100AD6DD0, &qword_1009437C0);
    }

    else
    {
      v33 = *(v0 + 320);
      v32 = *(v0 + 328);
      v34 = *(v0 + 312);
      (*(v33 + 32))(v32, *(v0 + 304), v34);
      OpenURLAction.callAsFunction(_:)();
      (*(v33 + 8))(v32, v34);
      sub_1003D8A84(v15, type metadata accessor for OpenSensitiveURLAction.Destination);
      (*(v13 + 8))(v12, v14);
    }

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_1003D81D4()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 416);
  v4 = *(v2 + 408);
  if (v0)
  {
    v5 = sub_1003D846C;
  }

  else
  {
    v5 = sub_1003D8328;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003D8328()
{
  v1 = *(v0 + 248);

  v2 = [objc_opt_self() standardUserDefaults];
  [v2 setIsStreakReminderEnabled:1];

  sub_1003D8A84(v1, type metadata accessor for StreakSummary);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003D846C()
{
  v1 = *(v0 + 248);

  sub_1003D8A84(v1, type metadata accessor for StreakSummary);

  v2 = *(v0 + 8);

  return v2();
}

double sub_1003D8578@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1000F24EC(&qword_100AE27A0, &qword_100953C58);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for InsightsTipViewModel(0);
  v3 = a1 + v2[5];
  type metadata accessor for InsightsDataManager(0);
  sub_1000407C8(&qword_100AD99A0, type metadata accessor for InsightsDataManager, &unk_100962218);
  *v3 = Environment.init<A>(_:)();
  v3[8] = v4 & 1;
  v5 = v2[6];
  *(a1 + v5) = swift_getKeyPath();
  sub_1000F24EC(&qword_100AE27B0, &qword_100953C70);
  swift_storeEnumTagMultiPayload();
  *(a1 + v2[7]) = 0;
  v6 = a1 + v2[8];
  State.init(wrappedValue:)();
  *v6 = v10;
  *(v6 + 1) = v11;
  v7 = (a1 + v2[9]);
  result = 0.0;
  *v7 = 0u;
  v7[1] = 0u;
  v9 = (a1 + v2[10]);
  *v9 = 0u;
  v9[1] = 0u;
  return result;
}

uint64_t sub_1003D86F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D877C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_1000082B4(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1003D8A1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003D8A84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003D8B58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100032ECC;

  return sub_1003D719C(a1, v4, v5, v6, v7, v8, v9);
}

id sub_1003D8C30(void *a1, char a2)
{
  v18 = a1;
  v3 = type metadata accessor for ColorResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AE2A30, &unk_100954000);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  if (a2)
  {
    if (a2 == 1)
    {
      v10 = v18;

      return v10;
    }
  }

  else
  {
    sub_1003D92B0(v18);
    AssetCatalogColor.init(rawValue:)();
    v12 = type metadata accessor for AssetCatalogColor();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      sub_100004F84(v9, &qword_100AE2A30, &unk_100954000);
    }

    else
    {
      AssetCatalogColor.rawValue.getter();
      v14 = String._bridgeToObjectiveC()();

      v15 = [objc_opt_self() colorNamed:v14];

      (*(v13 + 8))(v9, v12);
      result = v15;
      if (v15)
      {
        return result;
      }
    }
  }

  sub_10018D564();
  if (qword_100AD0D60 != -1)
  {
    swift_once();
  }

  v16 = sub_10000617C(v3, qword_100B31730);
  (*(v4 + 16))(v6, v16, v3);
  return UIColor.init(resource:)();
}

uint64_t sub_1003D8ED4(char a1)
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_1003D92B0(char a1)
{
  result = 0x6E69677265627541;
  switch(a1)
  {
    case 1:
      result = 0x6B63697242;
      break;
    case 2:
      result = 0x6E69507974737544;
      break;
    case 3:
      result = 0x6873756C42;
      break;
    case 4:
      result = 1684955475;
      break;
    case 5:
      result = 0x6863616550;
      break;
    case 6:
      result = 0x646C6172656D45;
      break;
    case 7:
      result = 0x73696F7571727554;
      break;
    case 8:
      result = 0x746C61626F43;
      break;
    case 9:
      result = 1701273939;
      break;
    case 10:
      result = 0x776F6C666E726F43;
      break;
    case 11:
      result = 0x74656C6F6956;
      break;
    case 12:
      result = 0x6F7268636F6E6F4DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1003D93F8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1003D92B0(*a1);
  v5 = v4;
  if (v3 == sub_1003D92B0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t sub_1003D9480@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003DC7B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003D94B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003D92B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_1003D94DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1003D92B0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1003D9540(uint64_t a1)
{
  sub_1003D92B0(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int sub_1003D9594(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1003D92B0(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1003D9604()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1003D9658(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static SearchToken.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1003D96D0()
{
  swift_getKeyPath();
  sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

double sub_1003D9780(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void *sub_1003D98E0()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  sub_1003DC800(v1, *(v3 + 40));
  return v1;
}

void sub_1003D9998(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v4 = *(a1 + 32);
  *(a1 + 32) = a2;
  v5 = *(a1 + 40);
  *(a1 + 40) = a3;
  sub_1003DC800(a2, a3);
  sub_1003DC814(v4, v5);
}

uint64_t sub_1003D99EC()
{
  swift_getKeyPath();
  sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);

  return v1;
}

double sub_1003D9A9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 48) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  return result;
}

uint64_t sub_1003D9C08()
{
  swift_getKeyPath();
  sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);

  return v1;
}

double sub_1003D9CB8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 64) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  return result;
}

void sub_1003D9E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
}

BOOL sub_1003D9E64()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11[0] = v0;
  sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v0 + 24);
  v11[0] = *(v0 + 16);
  v11[1] = v5;

  static CharacterSet.whitespaces.getter();
  sub_1000777B4();
  v6 = StringProtocol.trimmingCharacters(in:)();
  v8 = v7;
  (*(v2 + 8))(v4, v1);

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  return v9 != 0;
}

void *sub_1003D9FFC()
{
  swift_getKeyPath();
  sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

id sub_1003DA0A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 80);
  *a2 = v4;

  return v4;
}

void sub_1003DA15C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for JournalMO();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 80);
LABEL_8:
  *(v2 + 80) = a1;
}

unint64_t sub_1003DA2DC()
{
  v1 = sub_1000F24EC(&qword_100AE2A30, &unk_100954000);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 96) = &off_100A56560;
  v16 = v0;
  ObservationRegistrar.init()();
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = *(&off_100A56530 + v4 + 32);
    AssetCatalogColor.init(rawValue:)();
    v7 = type metadata accessor for AssetCatalogColor();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v3, 1, v7) == 1)
    {
      sub_100004F84(v3, &qword_100AE2A30, &unk_100954000);
    }

    else
    {
      v17 = v6;
      AssetCatalogColor.rawValue.getter();
      v9 = String._bridgeToObjectiveC()();

      v10 = [objc_opt_self() colorNamed:v9];

      (*(v8 + 8))(v3, v7);
      if (v10)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1003E4D04(0, *(v5 + 2) + 1, 1, v5);
        }

        v12 = *(v5 + 2);
        v11 = *(v5 + 3);
        v13 = v17;
        if (v12 >= v11 >> 1)
        {
          v5 = sub_1003E4D04((v11 > 1), v12 + 1, 1, v5);
        }

        *(v5 + 2) = v12 + 1;
        *(v5 + v12 + 32) = v13;
      }
    }

    ++v4;
  }

  while (v4 != 13);
  v14 = v16;
  *(v16 + 88) = v5;
  result = sub_1001C2FA4(0xDuLL);
  if (result > 0xC)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 32) = *(&off_100A56530 + result + 32);
    *(v14 + 40) = 0;
    sub_1003D9A9C(0xD000000000000014, 0x80000001008DC440);
    return v14;
  }

  return result;
}

double sub_1003DA6D8(uint64_t a1, uint64_t a2)
{
  v5 = v2[12];
  v6 = (v5 + 40);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v9 = *(v6 - 1);
    v8 = *v6;
    if (v9 == a1 && v8 == a2)
    {
      v9 = a1;
LABEL_10:
      swift_bridgeObjectRetain_n();
      sub_1003D9A9C(v9, v8);
      if (v2[9])
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
        v2[8] = 0;
        v2[9] = 0;
      }

      return result;
    }

    v6 += 2;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_1003DA88C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for MergeableJournalAttributes.Icon();
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v2[14] = *(v5 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE2A38, &qword_10095BAD0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for MergeableColor();
  v2[19] = v6;
  v7 = *(v6 - 8);
  v2[20] = v7;
  v2[21] = *(v7 + 64);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE2A40, &unk_100954010);
  v2[24] = swift_task_alloc();
  v8 = type metadata accessor for AssetCatalogColor();
  v2[25] = v8;
  v2[26] = *(v8 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE2A30, &unk_100954000);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD68C0, &unk_100941E70);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v9 = type metadata accessor for CharacterSet();
  v2[35] = v9;
  v2[36] = *(v9 - 8);
  v2[37] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[38] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[39] = v11;
  v2[40] = v10;

  return _swift_task_switch(sub_1003DAC40, v11, v10);
}

uint64_t sub_1003DAC40()
{
  v2 = v0[36];
  v1 = v0[37];
  v82 = v0[35];
  v3 = v0[8];
  swift_getKeyPath();
  v0[4] = v3;
  sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  v0[2] = *(v3 + 16);
  v0[3] = v4;

  static CharacterSet.whitespaces.getter();
  sub_1000777B4();
  v5 = StringProtocol.trimmingCharacters(in:)();
  v7 = v6;
  (*(v2 + 8))(v1, v82);

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    sub_1003DC828();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
LABEL_19:

    v53 = v0[1];

    return v53();
  }

  v83 = v5;
  v9 = v0[8];
  swift_getKeyPath();
  v0[5] = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v9 + 32);
  if (*(v9 + 40))
  {
    if (*(v9 + 40) == 1)
    {
      v11 = v10;
      static MergeableColor.normalized(fromFixed:compatibleWith:)();
      sub_1003DC814(v10, 1);
    }

    else
    {
      v21 = v0[8];
      swift_getKeyPath();
      v0[6] = v21;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v22 = *(v21 + 80);
      if (v22)
      {
        v23 = v22;
        JournalMO.color.getter();
      }

      else
      {
        (*(v0[20] + 56))(v0[33], 1, 1, v0[19]);
      }
    }
  }

  else
  {
    v14 = v0[30];
    v13 = v0[31];
    v16 = v0[25];
    v15 = v0[26];
    sub_1003D92B0(v10);
    AssetCatalogColor.init(rawValue:)();
    sub_1000082B4(v13, v14, &qword_100AE2A30, &unk_100954000);
    v17 = (*(v15 + 48))(v14, 1, v16);
    v18 = v0[33];
    if (v17 == 1)
    {
      v20 = v0[19];
      v19 = v0[20];
      sub_100004F84(v0[31], &qword_100AE2A30, &unk_100954000);
      (*(v19 + 56))(v18, 1, 1, v20);
    }

    else
    {
      v24 = v0[29];
      v25 = v0[27];
      v26 = v0[28];
      v28 = v0[25];
      v27 = v0[26];
      v73 = v0[24];
      v75 = v0[31];
      v80 = v0[33];
      v29 = v0[20];
      v77 = v0[23];
      v78 = v0[19];
      (*(v27 + 32))(v24, v0[30], v28);
      v30 = *(v27 + 16);
      v30(v26, v24, v28);
      v30(v25, v26, v28);
      sub_1003DD798(&qword_100AE2A50, &type metadata accessor for AssetCatalogColor, &protocol conformance descriptor for AssetCatalogColor);
      CRExtensible.init(_:)();
      v31 = *(v27 + 8);
      v31(v26, v28);
      v31(v24, v28);
      sub_100004F84(v75, &qword_100AE2A30, &unk_100954000);
      sub_100021CEC(v73, v77, &qword_100AE2A40, &unk_100954010);
      (*(v29 + 104))(v77, enum case for MergeableColor.catalogColor(_:), v78);
      (*(v29 + 32))(v80, v77, v78);
      (*(v29 + 56))(v80, 0, 1, v78);
    }
  }

  v32 = v0[34];
  v33 = v0[32];
  v34 = v0[19];
  v35 = v0[20];
  sub_100021CEC(v0[33], v32, &unk_100AD68C0, &unk_100941E70);
  sub_1000082B4(v32, v33, &unk_100AD68C0, &unk_100941E70);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    v36 = v0[34];
    v37 = v0[32];

    sub_100004F84(v37, &unk_100AD68C0, &unk_100941E70);
    sub_1003DC828();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();
    v39 = v36;
LABEL_18:
    sub_100004F84(v39, &unk_100AD68C0, &unk_100941E70);
    goto LABEL_19;
  }

  v41 = v0[17];
  v40 = v0[18];
  v42 = v0[12];
  v43 = v0[13];
  v44 = v0[8];
  v45 = *(v0[20] + 32);
  v45(v0[22], v0[32], v0[19]);
  sub_1003DBB60(v44, v40);
  sub_1000082B4(v40, v41, &qword_100AE2A38, &qword_10095BAD0);
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    v46 = v0[34];
    v47 = v0[22];
    v48 = v0[19];
    v49 = v0[20];
    v50 = v0[17];
    v51 = v0[18];

    sub_100004F84(v50, &qword_100AE2A38, &qword_10095BAD0);
    sub_1003DC828();
    swift_allocError();
    *v52 = 2;
    swift_willThrow();
    sub_100004F84(v51, &qword_100AE2A38, &qword_10095BAD0);
    (*(v49 + 8))(v47, v48);
    v39 = v46;
    goto LABEL_18;
  }

  v79 = *(v0[13] + 32);
  v81 = v45;
  v79(v0[16], v0[17], v0[12]);
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v55 = v0[20];
  v70 = v0[23];
  v71 = v0[21];
  v56 = v0[15];
  v57 = v0[16];
  v68 = v0[19];
  v58 = v0[13];
  v69 = v0[14];
  v59 = v0[12];
  v67 = v59;
  v60 = v0[10];
  v74 = v0[9];
  v76 = v0[11];
  v72 = v0[8];
  v61 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  v0[41] = v61;
  (*(v55 + 16))();
  (*(v58 + 16))(v56, v57, v59);
  v62 = (*(v55 + 80) + 40) & ~*(v55 + 80);
  v63 = (v71 + *(v58 + 80) + v62) & ~*(v58 + 80);
  v64 = swift_allocObject();
  v0[42] = v64;
  *(v64 + 2) = v72;
  *(v64 + 3) = v83;
  *(v64 + 4) = v7;
  v81(&v64[v62], v70, v68);
  v79(&v64[v63], v56, v67);
  *&v64[(v69 + v63 + 7) & 0xFFFFFFFFFFFFFFF8] = v61;
  (*(v60 + 104))(v76, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v74);
  v61;

  v65 = swift_task_alloc();
  v0[43] = v65;
  *v65 = v0;
  v65[1] = sub_1003DB638;
  v66 = v0[11];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v65, v66, sub_1003DC87C, v64, &type metadata for () + 1);
}

uint64_t sub_1003DB638()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);

  v3 = v2[40];
  v4 = v2[39];
  if (v0)
  {
    v5 = sub_1003DB998;
  }

  else
  {
    v5 = sub_1003DB7DC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003DB7DC()
{
  v1 = v0[41];
  v2 = v0[34];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];
  v7 = v0[16];
  v9 = v0[12];
  v8 = v0[13];

  (*(v8 + 8))(v7, v9);
  sub_100004F84(v6, &qword_100AE2A38, &qword_10095BAD0);
  (*(v5 + 8))(v3, v4);
  sub_100004F84(v2, &unk_100AD68C0, &unk_100941E70);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003DB998()
{
  v1 = v0[41];
  v2 = v0[34];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[12];
  v9 = v0[13];

  (*(v9 + 8))(v7, v8);
  sub_100004F84(v6, &qword_100AE2A38, &qword_10095BAD0);
  (*(v5 + 8))(v3, v4);
  sub_100004F84(v2, &unk_100AD68C0, &unk_100941E70);

  v10 = v0[1];

  return v10();
}

double sub_1003DBB60@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  swift_getKeyPath();
  sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = a1[7];
  if (v4)
  {
    *a2 = a1[6];
    a2[1] = v4;
    v5 = enum case for MergeableJournalAttributes.Icon.sfSymbol(_:);
    v6 = type metadata accessor for MergeableJournalAttributes.Icon();
    v7 = *(v6 - 8);
    (*(v7 + 104))(a2, v5, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  else
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = a1[9];
    if (v8)
    {
      *a2 = a1[8];
      a2[1] = v8;
      v9 = enum case for MergeableJournalAttributes.Icon.emoji(_:);
      v10 = type metadata accessor for MergeableJournalAttributes.Icon();
      v11 = *(v10 - 8);
      (*(v11 + 104))(a2, v9, v10);
      (*(v11 + 56))(a2, 0, 1, v10);
    }

    else
    {
      v12 = type metadata accessor for MergeableJournalAttributes.Icon();
      (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
    }
  }

  return result;
}

id sub_1003DBDBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v37 = a5;
  v38 = a6;
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v7 = type metadata accessor for Date();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AE2A38, &qword_10095BAD0);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_1000F24EC(&unk_100AD68C0, &unk_100941E70);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v39 = a1;
  sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = a1[10];
  if (v20)
  {
    v21 = v20;

    JournalMO.title.setter();
    v22 = type metadata accessor for MergeableColor();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v15, v36, v22);
    (*(v23 + 56))(v15, 0, 1, v22);
    JournalMO.color.setter();
    v24 = type metadata accessor for MergeableJournalAttributes.Icon();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v12, v37, v24);
    (*(v25 + 56))(v12, 0, 1, v24);
    JournalMO.icon.setter();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v32 + 8))(v9, v33);
    [v21 setUpdatedDate:isa];

    [v21 setIsUploadedToCloud:0];
    v27 = v38;
  }

  else
  {
    type metadata accessor for JournalMO();
    UUID.init()();
    v28 = v38;

    (*(v17 + 8))(v19, v16);
    v27 = v28;
  }

  v39 = 0;
  if ([v27 save:&v39])
  {
    return v39;
  }

  v30 = v39;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1003DC258()
{

  sub_1003DC814(*(v0 + 32), *(v0 + 40));

  v1 = OBJC_IVAR____TtC7Journal25CustomizeJournalViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1003DC2F4()
{
  sub_1003DC258();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustomizeJournalViewModel(uint64_t a1)
{
  result = qword_100AE27F0;
  if (!qword_100AE27F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003DC3A0(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t getEnumTagSinglePayload for EntryViewModel.EntryProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EntryViewModel.EntryProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1003DC5CC(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1003DC5E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1003DC630(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003DC674(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1003DC6A0()
{
  result = qword_100AE2A10;
  if (!qword_100AE2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2A10);
  }

  return result;
}

unint64_t sub_1003DC6F8()
{
  result = qword_100AE2A18;
  if (!qword_100AE2A18)
  {
    sub_1000F2A18(&qword_100AE2A20, qword_100953F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2A18);
  }

  return result;
}

unint64_t sub_1003DC760()
{
  result = qword_100AE2A28;
  if (!qword_100AE2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2A28);
  }

  return result;
}

unint64_t sub_1003DC7B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A56FE0, v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

id sub_1003DC800(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  return result;
}

void sub_1003DC814(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

unint64_t sub_1003DC828()
{
  result = qword_100AE2A48;
  if (!qword_100AE2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2A48);
  }

  return result;
}

id sub_1003DC87C()
{
  v1 = *(type metadata accessor for MergeableColor() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for MergeableJournalAttributes.Icon() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  return sub_1003DBDBC(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, v0 + v5, *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1003DC998()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 80);
  *(v1 + 80) = v2;
  v4 = v2;
}

void sub_1003DC9D0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

void sub_1003DCA10()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

void sub_1003DCA50()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_1003DCA90(uint64_t a1)
{
  v61 = sub_1000F24EC(&qword_100AE2A38, &qword_10095BAD0);
  __chkstk_darwin(v61);
  v69 = (&v60 - v2);
  v3 = type metadata accessor for AssetCatalogColor();
  v63 = *(v3 - 8);
  v64 = v3;
  __chkstk_darwin(v3);
  v62 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v65 = &v60 - v6;
  v7 = sub_1000F24EC(&qword_100AE2A40, &unk_100954010);
  __chkstk_darwin(v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v60 - v11;
  v12 = type metadata accessor for SRGBColor();
  v67 = *(v12 - 8);
  v68 = v12;
  __chkstk_darwin(v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&unk_100AD68C0, &unk_100941E70);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  type metadata accessor for CustomizeJournalViewModel(0);
  v18 = swift_allocObject();
  sub_1003DA2DC();
  type metadata accessor for JournalMO();
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v19 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  sub_1003DD798(&qword_100AD4C68, &type metadata accessor for JournalMO, &protocol conformance descriptor for JournalMO);
  v20 = v19;
  v22 = static Identifiable<>.fetch(id:context:)();
  v60 = a1;

  if (!v22)
  {
    v35 = type metadata accessor for UUID();
    (*(*(v35 - 8) + 8))(v60, v35);

    return 0;
  }

  v23 = v22;
  sub_1003DA15C(v22);
  v24 = JournalMO.title.getter();
  if (!v25)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  sub_1003D9780(v24, v25);
  JournalMO.color.getter();
  v26 = type metadata accessor for MergeableColor();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v17, 1, v26) != 1)
  {
    v36 = (*(v27 + 88))(v17, v26);
    if (v36 == enum case for MergeableColor.sRGB(_:))
    {
      (*(v27 + 96))(v17, v26);
      v37 = v67;
      v38 = v68;
      (*(v67 + 32))(v14, v17, v68);
      v39 = SRGBColor.adaptivePlatformColor.getter();
      if (!v39)
      {

        v52 = type metadata accessor for UUID();
        (*(*(v52 - 8) + 8))(v60, v52);
        (*(v37 + 8))(v14, v38);
        return v18;
      }

      v40 = v39;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v60 - 4) = v18;
      *(&v60 - 3) = v40;
      *(&v60 - 16) = 1;
      v70 = v18;
      sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      (*(v37 + 8))(v14, v68);
      goto LABEL_10;
    }

    if (v36 != enum case for MergeableColor.catalogColor(_:))
    {
      if (v36 != enum case for MergeableColor.unknown(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_35;
      }

      (*(v27 + 96))(v17, v26);
      v47 = *(sub_1000F24EC(&qword_100AE2A58, &qword_1009540E8) + 48);
      v48 = type metadata accessor for AnyCRValue();
      (*(*(v48 - 8) + 8))(&v17[v47], v48);
      goto LABEL_9;
    }

    (*(v27 + 96))(v17, v26);
    v43 = v66;
    sub_100021CEC(v17, v66, &qword_100AE2A40, &unk_100954010);
    sub_1000082B4(v43, v9, &qword_100AE2A40, &unk_100954010);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100004F84(v9, &qword_100AE2A40, &unk_100954010);
    }

    else
    {
      v54 = v63;
      v53 = v64;
      v55 = v65;
      (*(v63 + 32))();
      v56 = v62;
      (*(v54 + 16))(v62, v55, v53);
      v71._countAndFlagsBits = AssetCatalogColor.rawValue.getter();
      v57 = sub_1003DC7B4(v71);
      v68 = *(v54 + 8);
      v68(v56, v53);
      if (v57 != 13)
      {
        v59 = swift_getKeyPath();
        __chkstk_darwin(v59);
        *(&v60 - 4) = v18;
        *(&v60 - 3) = v57;
        *(&v60 - 16) = 0;
        v70 = v18;
        sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v68(v65, v53);
        goto LABEL_33;
      }

      v68(v55, v53);
    }

    v58 = swift_getKeyPath();
    __chkstk_darwin(v58);
    *(&v60 - 4) = v18;
    *(&v60 - 3) = 0;
    *(&v60 - 16) = 2;
    v70 = v18;
    sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_33:
    sub_100004F84(v43, &qword_100AE2A40, &unk_100954010);
    goto LABEL_10;
  }

LABEL_9:
  v28 = swift_getKeyPath();
  __chkstk_darwin(v28);
  *(&v60 - 4) = v18;
  *(&v60 - 3) = 0;
  *(&v60 - 16) = 2;
  v70 = v18;
  sub_1003DD798(&qword_100AE9EF0, type metadata accessor for CustomizeJournalViewModel, &unk_100953FE0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_10:
  v29 = v69;
  JournalMO.icon.getter();
  v30 = type metadata accessor for MergeableJournalAttributes.Icon();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v29, 1, v30);
  v33 = v60;
  if (v32 == 1)
  {
    v34 = type metadata accessor for UUID();
    (*(*(v34 - 8) + 8))(v33, v34);

    return v18;
  }

  v42 = (*(v31 + 88))(v29, v30);
  if (v42 == enum case for MergeableJournalAttributes.Icon.sfSymbol(_:))
  {
    (*(v31 + 96))(v29, v30);
    sub_1003DA6D8(*v29, v29[1]);

LABEL_23:

    v46 = type metadata accessor for UUID();
    (*(*(v46 - 8) + 8))(v33, v46);
    return v18;
  }

  if (v42 == enum case for MergeableJournalAttributes.Icon.emoji(_:))
  {
    (*(v31 + 96))(v29, v30);
    v44 = *v29;
    v45 = v29[1];

    sub_1003D9CB8(v44, v45);
    sub_1003D9A9C(0, 0);

    goto LABEL_23;
  }

  if (v42 == enum case for MergeableJournalAttributes.Icon.unknown(_:))
  {
    v49 = type metadata accessor for UUID();
    (*(*(v49 - 8) + 8))(v33, v49);

    (*(v31 + 96))(v29, v30);
    v50 = *(sub_1000F24EC(&qword_100AE2A58, &qword_1009540E8) + 48);
    v51 = type metadata accessor for AnyCRValue();
    (*(*(v51 - 8) + 8))(v29 + v50, v51);
    return v18;
  }

LABEL_35:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003DD798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003DD7F8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 32);
  v4 = *(v0 + 32);
  *(v2 + 32) = v1;
  v5 = *(v2 + 40);
  *(v2 + 40) = v4;
  sub_1003DC800(v1, v4);
  sub_1003DC814(v3, v5);
}

unint64_t sub_1003DD860()
{
  result = qword_100AE2A60;
  if (!qword_100AE2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2A60);
  }

  return result;
}

uint64_t sub_1003DD8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v6 = type metadata accessor for URL();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[9] = v7;
  v4[10] = v9;

  return _swift_task_switch(sub_1003DD9D8, v7, v9);
}

uint64_t sub_1003DD9D8(uint64_t a1)
{
  if (URL.pathExtension.getter() == 6709603 && v2 == 0xE300000000000000)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      sub_1003DDEB0();
      swift_allocError();
      *v5 = 1;
      swift_willThrow();
LABEL_13:

      v21 = v1[1];

      return v21();
    }
  }

  v6 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = [v6 initWithURL:v8 options:0];
  v1[11] = v10;

  v11 = [objc_allocWithZone(AVAssetExportSession) initWithAsset:v10 presetName:AVAssetExportPresetAppleM4A];
  v1[12] = v11;
  if (!v11)
  {
    sub_1003DDEB0();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();

    goto LABEL_13;
  }

  v13 = v1[7];
  v12 = v1[8];
  v14 = v1[6];
  URL.deletingPathExtension()();
  URL.appendingPathExtension(_:)();
  v15 = *(v13 + 8);
  v1[13] = v15;
  v1[14] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v12, v14);
  v16 = swift_task_alloc();
  v1[15] = v16;
  *v16 = v1;
  v16[1] = sub_1003DDC68;
  v17 = v1[3];
  v18 = v1[4];
  v19 = v1[2];

  return AVAssetExportSession.export(to:as:isolation:)(v19, AVFileTypeAppleM4A, v17, v18);
}

uint64_t sub_1003DDC68()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1003DDE18;
  }

  else
  {
    v5 = sub_1003DDDA4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003DDDA4()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003DDE18()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);

  v1(v4, v3);

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_1003DDEB0()
{
  result = qword_100AE2A68;
  if (!qword_100AE2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2A68);
  }

  return result;
}

void sub_1003DDF04(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000065A8(0, &unk_100AE4860, NSManagedObject_ptr);
    sub_10000A908(&qword_100AE2A98, &unk_100AE4860, NSManagedObject_ptr);
    Set.Iterator.init(_cocoa:)();
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
    v6 = v18;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000065A8(0, &unk_100AE4860, NSManagedObject_ptr), swift_dynamicCast(), (v12 = v13) == 0))
    {
LABEL_21:
      sub_100014FF8(v2);
      return;
    }

LABEL_16:
    type metadata accessor for JournalEntryAssetMO();
    if (swift_dynamicCastClass())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_12:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1003DE17C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v39 = _swiftEmptyArrayStorage;
    sub_10019A1E0(0, v1, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = v2 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v30 = v2 + 72;
    v34 = v2 + 64;
    v35 = v2;
    v33 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      v36 = v3;
      v37 = *(v2 + 36);
      v10 = (*(v2 + 48) + 16 * v5);
      v11 = *v10;
      v12 = v10[1];
      swift_bridgeObjectRetain_n();
      v40._countAndFlagsBits = v11;
      v40._object = v12;
      v13 = sub_1003E4950(v40);
      if (v13 == 13)
      {
        if (qword_100ACFD38 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_10000617C(v14, qword_100AE2A70);

        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v32 = v16;
          v17 = 12;
          v18 = swift_slowAlloc();
          log = v15;
          v19 = swift_slowAlloc();
          v38 = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_100008458(v11, v12, &v38);
          _os_log_impl(&_mh_execute_header, log, v32, "No JournalEntryMO field match for key: %s", v18, 0xCu);
          sub_10000BA7C(v19);
        }

        else
        {

          v17 = 12;
        }
      }

      else
      {
        v17 = v13;
      }

      v3 = v36;
      v20 = v37;
      v39 = v36;
      v22 = *(v36 + 2);
      v21 = *(v36 + 3);
      if (v22 >= v21 >> 1)
      {
        sub_10019A1E0((v21 > 1), v22 + 1, 1);
        v20 = v37;
        v3 = v39;
      }

      *(v3 + 2) = v22 + 1;
      *(v3 + v22 + 32) = v17;
      v2 = v35;
      v7 = 1 << *(v35 + 32);
      if (v5 >= v7)
      {
        goto LABEL_29;
      }

      v4 = v34;
      v23 = *(v34 + 8 * v9);
      if ((v23 & (1 << v5)) == 0)
      {
        goto LABEL_30;
      }

      if (v20 != *(v35 + 36))
      {
        goto LABEL_31;
      }

      v24 = v23 & (-2 << (v5 & 0x3F));
      if (v24)
      {
        v7 = __clz(__rbit64(v24)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v8 = v33;
      }

      else
      {
        v25 = v9 << 6;
        v26 = v9 + 1;
        v27 = (v30 + 8 * v9);
        v8 = v33;
        while (v26 < (v7 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_10000A96C(v5, v20, 0);
            v7 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_10000A96C(v5, v20, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }
}

void sub_1003DE578(uint64_t a1, void *a2, unint64_t *a3, void *a4, unint64_t *a5, void (*a6)(id *))
{
  v8 = a1;
  v24[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000065A8(0, a3, a4);
    sub_10000A908(a5, a3, a4);
    Set.Iterator.init(_cocoa:)();
    v8 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
    v14 = v24[6];
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(a1 + 32);
    v11 = (a1 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(a1 + 56));
  }

  v18 = (v12 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v22 = (v20 - 1) & v20;
    if (!*(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20))))))
    {
LABEL_18:
      sub_100014FF8(v8);
      return;
    }

    while (1)
    {
      a6(v24);

      v13 = v21;
      v14 = v22;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000065A8(0, a3, a4);
        swift_dynamicCast();
        v21 = v13;
        v22 = v14;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v21 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_18;
    }

    v20 = v11[v21];
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1003DE774(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_10028A754(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003DE850()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE2A70);
  v1 = sub_10000617C(v0, qword_100AE2A70);
  if (qword_100AD0188 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF38);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1003DE918(unint64_t a1)
{
  v2 = 0;
  v3 = sub_1000F24EC(&unk_100AEEE20, &qword_1009480F0);
  __chkstk_darwin(v3);
  v204 = &v190 - v4;
  v214 = type metadata accessor for AssetType();
  v5 = *(v214 - 1);
  __chkstk_darwin(v214);
  v213 = &v190 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v7 - 8);
  v9 = &v190 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v190 - v11);
  __chkstk_darwin(v13);
  v15 = &v190 - v14;
  __chkstk_darwin(v16);
  v18 = (&v190 - v17);
  __chkstk_darwin(v19);
  v21 = (&v190 - v20);
  __chkstk_darwin(v22);
  v212 = &v190 - v23;
  __chkstk_darwin(v24);
  v211 = &v190 - v25;
  v216 = type metadata accessor for UUID();
  *&v206 = *(v216 - 8);
  __chkstk_darwin(v216);
  v27 = &v190 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v29 = __chkstk_darwin(v28).n128_u64[0];
  v210 = &v190 - v30;
  v31 = [a1 userInfo];
  if (!v31)
  {
    return;
  }

  v208 = v21;
  v195 = v5;
  v32 = v31;
  v207 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_100ACFD38 == -1)
  {
    goto LABEL_3;
  }

LABEL_219:
  swift_once();
LABEL_3:
  v33 = type metadata accessor for Logger();
  v34 = sub_10000617C(v33, qword_100AE2A70);
  v35 = a1;
  v209 = v34;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  v38 = os_log_type_enabled(v36, v37);
  v198 = v9;
  v203 = v12;
  v199 = v15;
  v205 = v18;
  v200 = v3;
  v197 = v27;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v228[0] = v15;
    *v39 = 136315138;
    v40 = [v35 name];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v42;

    v43 = sub_100008458(v41, v27, v228);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v36, v37, "Responding to NSManagedObjectContextObjectsDidChange notification: %s", v39, 0xCu);
    sub_10000BA7C(v15);
  }

  v44 = v207;
  v221 = _swiftEmptySetSingleton;
  v222 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v223 = v45;
  AnyHashable.init<A>(_:)();
  if (*(v44 + 16) && (a1 = v44, v46 = sub_100361EDC(v228), (v47 & 1) != 0))
  {
    sub_10000BA20(*(v44 + 56) + 32 * v46, v227);
    sub_100177B94(v228);
    sub_1000F24EC(&qword_100AE2A90, &qword_1009541C0);
    if (swift_dynamicCast())
    {
      sub_1003DDF04(v222, v48);
      v27 = v49;

      v228[0] = _swiftEmptyArrayStorage;
      if (v27 >> 62)
      {
        v3 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v3 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v196 = v2;
      if (v3)
      {
        v15 = 0;
        v215 = v27 & 0xC000000000000001;
        v2 = (v27 & 0xFFFFFFFFFFFFFF8);
        v12 = &selRef_setRegion_;
        while (1)
        {
          if (v215)
          {
            v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v15 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_215;
            }

            v50 = *(v27 + 8 * v15 + 32);
          }

          v51 = v50;
          v9 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_214;
          }

          v52 = [v50 entry];
          if (v52)
          {
            a1 = v52;
            v53 = [v52 v12[115]];
          }

          else
          {
            v53 = 0;
          }

          v18 = v12;
          v54 = [*(v217 + 32) v12[115]];
          v55 = v54;
          if (v53)
          {
            if (!v54)
            {

              goto LABEL_13;
            }

            sub_1000065A8(0, &qword_100AD43F0, NSManagedObjectID_ptr);
            a1 = static NSObject.== infix(_:_:)();

            if ((a1 & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          else if (v54)
          {

LABEL_27:
            goto LABEL_13;
          }

          a1 = v228;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
LABEL_13:
          ++v15;
          v12 = v18;
          if (v9 == v3)
          {
            v91 = v228[0];
            v2 = v196;
            v44 = v207;
            goto LABEL_66;
          }
        }
      }

      v91 = _swiftEmptyArrayStorage;
LABEL_66:

      if (v91 < 0)
      {
        v3 = 1;
      }

      else
      {
        v3 = (v91 >> 62) & 1;
      }

      if (v3 == 1)
      {
        v202 = _CocoaArrayWrapper.endIndex.getter();
        if (!v202)
        {
          goto LABEL_222;
        }
      }

      else
      {
        v202 = *(v91 + 16);
        if (!v202)
        {
          goto LABEL_222;
        }
      }

      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.debug.getter();
      v94 = os_log_type_enabled(v92, v93);
      v215 = v91;
      if (v94)
      {
        v9 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        v228[0] = v190;
        *v9 = 134218242;
        v194 = v3;
        v193 = v92;
        v191 = v93;
        if (v3)
        {
          v95 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v95 = *(v91 + 16);
        }

        v118 = v208;
        *(v9 + 4) = v95;

        a1 = 0;
        v192 = v9;
        *(v9 + 12) = 2080;
        v201 = (v91 & 0xC000000000000001);
        v27 = v206 + 56;
        v12 = (v206 + 48);
        v15 = _swiftEmptyArrayStorage;
        v2 = (v206 + 32);
        do
        {
          if (v201)
          {
            v119 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v3 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_217;
            }
          }

          else
          {
            if (a1 >= *(v91 + 16))
            {
              goto LABEL_218;
            }

            v119 = *(v91 + 8 * a1 + 32);
            v3 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_217;
            }
          }

          v120 = v119;
          v121 = [v120 id];
          if (v121)
          {
            v122 = v121;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v118 = v208;
            v123 = 0;
          }

          else
          {
            v123 = 1;
          }

          v9 = v216;
          (*v27)(v118, v123, 1, v216);
          v124 = v212;
          sub_100024EC0(v118, v212);
          v125 = v124;
          v18 = v211;
          sub_100024EC0(v125, v211);

          if ((*v12)(v18, 1, v9) == 1)
          {
            sub_100004F84(v18, &qword_100AD1420, &unk_10093C080);
          }

          else
          {
            v126 = *v2;
            (*v2)(v210, v18, v9);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_100055CEC(0, *(v15 + 16) + 1, 1, v15);
            }

            v9 = *(v15 + 16);
            v127 = *(v15 + 24);
            if (v9 >= v127 >> 1)
            {
              v15 = sub_100055CEC((v127 > 1), v9 + 1, 1, v15);
            }

            *(v15 + 16) = v9 + 1;
            v126((v15 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + *(v206 + 72) * v9), v210, v216);
            v118 = v208;
          }

          v91 = v215;
          ++a1;
        }

        while (v3 != v202);
        v128 = Array.description.getter();
        v130 = v129;

        v131 = sub_100008458(v128, v130, v228);

        v132 = v192;
        *(v192 + 14) = v131;
        v91 = v215;
        v133 = v193;
        _os_log_impl(&_mh_execute_header, v193, v191, "Processing %ld asset inserts: %s", v132, 0x16u);
        sub_10000BA7C(v190);

        v2 = v196;
        v44 = v207;
        if (!v194)
        {
LABEL_140:
          v97 = *(v91 + 16);
          if (v97)
          {
            goto LABEL_141;
          }

          goto LABEL_222;
        }
      }

      else
      {

        if (!v3)
        {
          goto LABEL_140;
        }
      }

      v97 = _CocoaArrayWrapper.endIndex.getter();
      if (v97)
      {
LABEL_141:
        if (v97 < 1)
        {
          __break(1u);
          return;
        }

        v134 = 0;
        v211 = v91 & 0xC000000000000001;
        LODWORD(v210) = enum case for AssetType.reflection(_:);
        v135 = (v195 + 104);
        v136 = (v195 + 8);
        v212 = v97;
        while (1)
        {
          if (v211)
          {
            v138 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v138 = *(v91 + 8 * v134 + 32);
          }

          v139 = v138;
          v140 = [v138 assetType];
          if (v140)
          {
            v141 = v140;
            v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v143 = v142;
          }

          else
          {
            v15 = 0;
            v143 = 0;
          }

          v144 = v213;
          v145 = v214;
          (*v135)(v213, v210, v214);
          v27 = AssetType.rawValue.getter();
          v147 = v146;
          (*v136)(v144, v145);
          if (v143)
          {
            if (v15 == v27 && v143 == v147)
            {

              v91 = v215;
LABEL_157:
              v137 = 4;
              goto LABEL_145;
            }

            v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v91 = v215;
            if (v15)
            {
              goto LABEL_157;
            }
          }

          else
          {

            v91 = v215;
          }

          v137 = 1;
LABEL_145:
          sub_10028A754(v228, v137);

          if (v212 == ++v134)
          {

            v2 = v196;
            v44 = v207;
            goto LABEL_31;
          }
        }
      }

LABEL_222:
    }
  }

  else
  {
    sub_100177B94(v228);
  }

LABEL_31:
  v222 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v223 = v56;
  AnyHashable.init<A>(_:)();
  if (*(v44 + 16) && (v57 = sub_100361EDC(v228), (v58 & 1) != 0))
  {
    sub_10000BA20(*(v44 + 56) + 32 * v57, v227);
    sub_100177B94(v228);
    sub_1000F24EC(&qword_100AE2A90, &qword_1009541C0);
    if (swift_dynamicCast())
    {
      v59 = v222;

      a1 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      v61 = v59 & 0xC000000000000001;
      if (os_log_type_enabled(a1, v60))
      {
        v62 = swift_slowAlloc();
        *v62 = 134217984;
        if (v61)
        {
          v63 = __CocoaSet.count.getter();
        }

        else
        {
          v63 = *(v59 + 16);
        }

        *(v62 + 4) = v63;

        _os_log_impl(&_mh_execute_header, a1, v60, "Processing %ld updated objects", v62, 0xCu);
      }

      else
      {
      }

      v196 = v2;
      if (v61)
      {
        __CocoaSet.makeIterator()();
        a1 = &unk_100AE4860;
        sub_1000065A8(0, &unk_100AE4860, NSManagedObject_ptr);
        sub_10000A908(&qword_100AE2A98, &unk_100AE4860, NSManagedObject_ptr);
        Set.Iterator.init(_cocoa:)();
        v59 = v222;
        v3 = v223;
        v98 = v224;
        v12 = v225;
        v2 = v226;
      }

      else
      {
        v12 = 0;
        v3 = v59 + 56;
        v99 = -1 << *(v59 + 32);
        v98 = ~v99;
        v100 = -v99;
        if (v100 < 64)
        {
          v101 = ~(-1 << v100);
        }

        else
        {
          v101 = -1;
        }

        v2 = (v101 & *(v59 + 56));
      }

      v18 = ((v98 + 64) >> 6);
      v15 = NSManagedObject_ptr;
      if ((v59 & 0x8000000000000000) == 0)
      {
        goto LABEL_92;
      }

LABEL_89:
      v102 = __CocoaSet.Iterator.next()();
      if (v102)
      {
        v227[0] = v102;
        sub_1000065A8(0, &unk_100AE4860, NSManagedObject_ptr);
        swift_dynamicCast();
        a1 = v228[0];
        v9 = v12;
        v27 = v2;
        if (v228[0])
        {
          while (1)
          {
            v105 = sub_1003E089C(a1, v217);
            v106 = v221;

            v107 = sub_1003DE774(v105, v106);

            v221 = v107;
            v12 = v9;
            v2 = v27;
            if (v59 < 0)
            {
              goto LABEL_89;
            }

LABEL_92:
            v103 = v12;
            v104 = v2;
            v9 = v12;
            if (!v2)
            {
              break;
            }

LABEL_96:
            v27 = (v104 - 1) & v104;
            a1 = *(*(v59 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v104)))));
            if (!a1)
            {
              goto LABEL_99;
            }
          }

          while (1)
          {
            v9 = v103 + 1;
            if (__OFADD__(v103, 1))
            {
              break;
            }

            if (v9 >= v18)
            {
              goto LABEL_99;
            }

            v104 = *(v3 + 8 * v9);
            v103 = (v103 + 1);
            if (v104)
            {
              goto LABEL_96;
            }
          }

          __break(1u);
          goto LABEL_213;
        }
      }

LABEL_99:
      sub_100014FF8(v59);
      v2 = v196;
      v44 = v207;
    }
  }

  else
  {
    sub_100177B94(v228);
  }

  v220[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v220[1] = v64;
  AnyHashable.init<A>(_:)();
  if (*(v44 + 16) && (v65 = sub_100361EDC(v228), (v66 & 1) != 0))
  {
    sub_10000BA20(*(v44 + 56) + 32 * v65, v227);
    sub_100177B94(v228);
    sub_1000F24EC(&qword_100AE2A90, &qword_1009541C0);
    if (swift_dynamicCast())
    {
      v67 = v220[0];

      a1 = Logger.logObject.getter();
      v68 = static os_log_type_t.debug.getter();
      v69 = v67 & 0xC000000000000001;
      if (os_log_type_enabled(a1, v68))
      {
        v70 = swift_slowAlloc();
        *v70 = 134217984;
        if (v69)
        {
          v71 = __CocoaSet.count.getter();
        }

        else
        {
          v71 = *(v67 + 16);
        }

        *(v70 + 4) = v71;

        _os_log_impl(&_mh_execute_header, a1, v68, "Processing %ld refreshed objects", v70, 0xCu);
      }

      else
      {
      }

      v196 = v2;
      if (v69)
      {
        __CocoaSet.makeIterator()();
        a1 = &unk_100AE4860;
        sub_1000065A8(0, &unk_100AE4860, NSManagedObject_ptr);
        sub_10000A908(&qword_100AE2A98, &unk_100AE4860, NSManagedObject_ptr);
        Set.Iterator.init(_cocoa:)();
        v67 = v227[0];
        v3 = v227[1];
        v108 = v227[2];
        v12 = v227[3];
        v2 = v227[4];
      }

      else
      {
        v12 = 0;
        v3 = v67 + 56;
        v109 = -1 << *(v67 + 32);
        v108 = ~v109;
        v110 = -v109;
        if (v110 < 64)
        {
          v111 = ~(-1 << v110);
        }

        else
        {
          v111 = -1;
        }

        v2 = (v111 & *(v67 + 56));
      }

      v18 = ((v108 + 64) >> 6);
      v15 = NSManagedObject_ptr;
      if ((v67 & 0x8000000000000000) == 0)
      {
        goto LABEL_112;
      }

LABEL_109:
      v112 = __CocoaSet.Iterator.next()();
      if (!v112 || (v220[0] = v112, sub_1000065A8(0, &unk_100AE4860, NSManagedObject_ptr), swift_dynamicCast(), a1 = v228[0], v9 = v12, v27 = v2, !v228[0]))
      {
LABEL_119:
        sub_100014FF8(v67);
        v2 = v196;
        v44 = v207;
        goto LABEL_45;
      }

      while (1)
      {
        v115 = sub_1003E089C(a1, v217);
        v116 = v221;

        v117 = sub_1003DE774(v115, v116);

        v221 = v117;
        v12 = v9;
        v2 = v27;
        if (v67 < 0)
        {
          goto LABEL_109;
        }

LABEL_112:
        v113 = v12;
        v114 = v2;
        v9 = v12;
        if (!v2)
        {
          break;
        }

LABEL_116:
        v27 = (v114 - 1) & v114;
        a1 = *(*(v67 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v114)))));
        if (!a1)
        {
          goto LABEL_119;
        }
      }

      while (1)
      {
        v9 = v113 + 1;
        if (__OFADD__(v113, 1))
        {
          break;
        }

        if (v9 >= v18)
        {
          goto LABEL_119;
        }

        v114 = *(v3 + 8 * v9);
        v113 = (v113 + 1);
        if (v114)
        {
          goto LABEL_116;
        }
      }

LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
      goto LABEL_216;
    }
  }

  else
  {
    sub_100177B94(v228);
  }

LABEL_45:
  v218 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v219 = v72;
  AnyHashable.init<A>(_:)();
  if (!*(v44 + 16) || (v73 = sub_100361EDC(v228), (v74 & 1) == 0))
  {

    sub_100177B94(v228);
    goto LABEL_54;
  }

  sub_10000BA20(*(v44 + 56) + 32 * v73, v220);
  sub_100177B94(v228);

  sub_1000F24EC(&qword_100AE2A90, &qword_1009541C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_54;
  }

  v9 = v218;
  v75 = v218 & 0xC000000000000001;
  if ((v218 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() < 1)
    {
      goto LABEL_75;
    }
  }

  else if (*(v218 + 16) < 1)
  {
LABEL_75:

    goto LABEL_54;
  }

  v76 = Logger.logObject.getter();
  a1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v76, a1))
  {
    v77 = swift_slowAlloc();
    *v77 = 134217984;
    if (v75)
    {
      v78 = __CocoaSet.count.getter();
    }

    else
    {
      v78 = *(v9 + 16);
    }

    *(v77 + 4) = v78;

    _os_log_impl(&_mh_execute_header, v76, a1, "Notified of %ld deletes:", v77, 0xCu);
  }

  else
  {
  }

  v196 = v2;
  if (v75)
  {
    __CocoaSet.makeIterator()();
    a1 = &unk_100AE4860;
    sub_1000065A8(0, &unk_100AE4860, NSManagedObject_ptr);
    sub_10000A908(&qword_100AE2A98, &unk_100AE4860, NSManagedObject_ptr);
    Set.Iterator.init(_cocoa:)();
    v9 = v228[0];
    v148 = v228[1];
    v149 = v228[2];
    v75 = v228[3];
    v27 = v228[4];
  }

  else
  {
    v150 = -1 << *(v9 + 32);
    v148 = v9 + 56;
    v149 = ~v150;
    v151 = -v150;
    if (v151 < 64)
    {
      v152 = ~(-1 << v151);
    }

    else
    {
      v152 = -1;
    }

    v27 = v152 & *(v9 + 56);
  }

  v195 = v149;
  v12 = ((v149 + 64) >> 6);
  v214 = (v206 + 56);
  v208 = (v206 + 48);
  v201 = (v206 + 32);
  v202 = (v206 + 8);
  *&v96 = 136315138;
  v206 = v96;
  v18 = &qword_100AD1420;
  v211 = v9;
  v210 = v148;
  v207 = v12;
  if ((v9 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v156 = v75;
      v157 = v27;
      v3 = v75;
      if (!v27)
      {
        while (1)
        {
          v3 = v156 + 1;
          if (__OFADD__(v156, 1))
          {
            break;
          }

          if (v3 >= v12)
          {
            goto LABEL_211;
          }

          v157 = *(v148 + 8 * v3);
          ++v156;
          if (v157)
          {
            goto LABEL_175;
          }
        }

LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
        goto LABEL_219;
      }

LABEL_175:
      v155 = (v157 - 1) & v157;
      v154 = *(*(v9 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v157)))));
      if (!v154)
      {
        goto LABEL_211;
      }

LABEL_176:
      v158 = v154;
      v159 = Logger.logObject.getter();
      v160 = static os_log_type_t.debug.getter();

      v161 = os_log_type_enabled(v159, v160);
      v215 = v158;
      v213 = v155;
      if (v161)
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v220[0] = v163;
        *v162 = v206;
        v164 = sub_10029FB00();
        v166 = sub_100008458(v164, v165, v220);

        *(v162 + 4) = v166;
        _os_log_impl(&_mh_execute_header, v159, v160, "Processing deletion %s", v162, 0xCu);
        sub_10000BA7C(v163);
      }

      v2 = v204;
      v167 = v216;
      type metadata accessor for JournalEntryMO();
      v168 = swift_dynamicCastClass();
      v169 = v199;
      v170 = v205;
      if (v168)
      {
        v171 = [v168 id];
        if (v171)
        {
          v172 = v171;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v167 = v216;
          v173 = 0;
        }

        else
        {
          v173 = 1;
        }

        v174 = *v214;
        (*v214)(v169, v173, 1, v167);
        sub_100024EC0(v169, v170);
      }

      else
      {
        v174 = *v214;
        (*v214)(v205, 1, 1, v167);
      }

      v212 = *(v217 + 32);
      v175 = [v212 id];
      if (v175)
      {
        v176 = v203;
        v177 = v175;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v167 = v216;
        v178 = 0;
      }

      else
      {
        v178 = 1;
        v176 = v203;
      }

      v174(v176, v178, 1, v167);
      a1 = *(v200 + 48);
      v179 = v205;
      sub_1000082B4(v205, v2, &qword_100AD1420, &unk_10093C080);
      sub_1000082B4(v176, v2 + a1, &qword_100AD1420, &unk_10093C080);
      v180 = *v208;
      if ((*v208)(v2, 1, v167) == 1)
      {
        break;
      }

      v182 = v198;
      sub_1000082B4(v2, v198, &qword_100AD1420, &unk_10093C080);
      if (v180(v2 + a1, 1, v167) == 1)
      {
        sub_100004F84(v203, &qword_100AD1420, &unk_10093C080);
        sub_100004F84(v205, &qword_100AD1420, &unk_10093C080);
        (*v202)(v182, v167);
        v9 = v211;
        v15 = v215;
LABEL_192:
        sub_100004F84(v2, &unk_100AEEE20, &qword_1009480F0);
        v148 = v210;
        v12 = v207;
        goto LABEL_193;
      }

      v187 = v197;
      (*v201)(v197, v2 + a1, v167);
      sub_1003E4898(&qword_100AD9220, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      a1 = dispatch thunk of static Equatable.== infix(_:_:)();
      v188 = *v202;
      (*v202)(v187, v167);
      sub_100004F84(v203, &qword_100AD1420, &unk_10093C080);
      sub_100004F84(v205, &qword_100AD1420, &unk_10093C080);
      v188(v182, v167);
      sub_100004F84(v2, &qword_100AD1420, &unk_10093C080);
      v9 = v211;
      v148 = v210;
      v12 = v207;
      v15 = v215;
      if (a1)
      {
        goto LABEL_202;
      }

LABEL_193:
      type metadata accessor for JournalEntryAssetMO();
      v183 = swift_dynamicCastClass();
      if (v183 && (v184 = [v183 entry]) != 0)
      {
        a1 = v184;
        v2 = [v184 objectID];
      }

      else
      {
        v2 = 0;
      }

      v185 = [v212 objectID];
      v186 = v185;
      if (v2)
      {
        if (!v185)
        {

          goto LABEL_208;
        }

        sub_1000065A8(0, &qword_100AD43F0, NSManagedObjectID_ptr);
        a1 = static NSObject.== infix(_:_:)();

        if (a1)
        {
LABEL_205:
          a1 = &v221;
          sub_10028A754(v220, 4);
          v189 = 1;
          goto LABEL_206;
        }
      }

      else
      {
        if (!v185)
        {
          goto LABEL_205;
        }
      }

LABEL_207:

LABEL_208:
      v75 = v3;
      v27 = v213;
      if (v9 < 0)
      {
        goto LABEL_168;
      }
    }

    sub_100004F84(v176, &qword_100AD1420, &unk_10093C080);
    sub_100004F84(v179, &qword_100AD1420, &unk_10093C080);
    v181 = v180(v2 + a1, 1, v167);
    v9 = v211;
    v15 = v215;
    if (v181 == 1)
    {
      sub_100004F84(v2, &qword_100AD1420, &unk_10093C080);
      v148 = v210;
      v12 = v207;
LABEL_202:
      a1 = &v221;
      v189 = 9;
LABEL_206:
      sub_10028A754(v220, v189);
      goto LABEL_207;
    }

    goto LABEL_192;
  }

LABEL_168:
  v153 = __CocoaSet.Iterator.next()();
  if (v153)
  {
    v218 = v153;
    sub_1000065A8(0, &unk_100AE4860, NSManagedObject_ptr);
    swift_dynamicCast();
    v154 = v220[0];
    v3 = v75;
    v155 = v27;
    if (v220[0])
    {
      goto LABEL_176;
    }
  }

LABEL_211:
  sub_100014FF8(v9);
LABEL_54:
  v79 = v221;
  v80 = v221[2];
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.debug.getter();
  v83 = os_log_type_enabled(v81, v82);
  if (v80)
  {
    if (v83)
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v220[0] = v85;
      *v84 = 136315138;
      sub_1003E4844();

      v86 = Set.description.getter();
      v88 = v87;

      v89 = sub_100008458(v86, v88, v220);

      *(v84 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v81, v82, "Detected %s changes", v84, 0xCu);
      sub_10000BA7C(v85);
    }

    v220[0] = v79;

    PassthroughSubject.send(_:)();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    if (v83)
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&_mh_execute_header, v81, v82, "No changed fields found from NSManagedObjectContextObjectsDidChange notification.", v90, 2u);
    }
  }
}

void *sub_1003E089C(void *a1, uint64_t a2)
{
  v146 = a2;
  v3 = type metadata accessor for AssetType();
  v134 = *(v3 - 8);
  v135 = v3;
  __chkstk_darwin(v3);
  v133 = &v124[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v147 = type metadata accessor for UUID();
  v5 = *(v147 - 8);
  __chkstk_darwin(v147);
  v140 = &v124[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v145 = sub_1000F24EC(&unk_100AEEE20, &qword_1009480F0);
  __chkstk_darwin(v145);
  v142 = &v124[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v124[-v9];
  v11 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v11 - 8);
  v13 = &v124[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v144 = &v124[-v15];
  __chkstk_darwin(v16);
  v138 = &v124[-v17];
  __chkstk_darwin(v18);
  v20 = &v124[-v19];
  __chkstk_darwin(v21);
  v132 = &v124[-v22];
  __chkstk_darwin(v23);
  v25 = &v124[-v24];
  __chkstk_darwin(v26);
  v139 = &v124[-v27];
  __chkstk_darwin(v28);
  v30 = &v124[-v29];
  __chkstk_darwin(v31);
  v33 = &v124[-v32];
  v149 = _swiftEmptySetSingleton;
  type metadata accessor for JournalEntryMO();
  v34 = swift_dynamicCastClass();
  v136 = v13;
  if (!v34)
  {
LABEL_15:
    type metadata accessor for JournalEntryAssetMO();
    v48 = swift_dynamicCastClass();
    if (!v48)
    {
      return v149;
    }

    v49 = v48;
    v141 = a1;
    v50 = [v49 entry];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 id];

      if (v52)
      {
        v53 = v138;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v54 = 0;
      }

      else
      {
        v54 = 1;
        v53 = v138;
      }

      v55 = v5[7];
      v55(v53, v54, 1, v147);
      sub_100024EC0(v53, v20);
    }

    else
    {
      v55 = v5[7];
      v55(v20, 1, 1, v147);
    }

    v86 = [*(v146 + 32) id];
    v139 = v49;
    if (v86)
    {
      v87 = v144;
      v88 = v86;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v89 = 0;
    }

    else
    {
      v89 = 1;
      v87 = v144;
    }

    v90 = v147;
    v55(v87, v89, 1, v147);
    v91 = *(v145 + 48);
    v92 = v20;
    v93 = v20;
    v94 = v142;
    sub_1000082B4(v92, v142, &qword_100AD1420, &unk_10093C080);
    sub_1000082B4(v87, &v94[v91], &qword_100AD1420, &unk_10093C080);
    v95 = v5[6];
    if (v95(v94, 1, v90) == 1)
    {
      sub_100004F84(v87, &qword_100AD1420, &unk_10093C080);
      sub_100004F84(v93, &qword_100AD1420, &unk_10093C080);
      if (v95(&v94[v91], 1, v147) == 1)
      {
        sub_100004F84(v94, &qword_100AD1420, &unk_10093C080);
        goto LABEL_39;
      }
    }

    else
    {
      v143 = v93;
      v96 = v136;
      sub_1000082B4(v94, v136, &qword_100AD1420, &unk_10093C080);
      if (v95(&v94[v91], 1, v147) != 1)
      {
        v97 = v140;
        v98 = v147;
        (v5[4])(v140, &v94[v91], v147);
        sub_1003E4898(&qword_100AD9220, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v99 = dispatch thunk of static Equatable.== infix(_:_:)();
        v100 = v5[1];
        v100(v97, v98);
        sub_100004F84(v144, &qword_100AD1420, &unk_10093C080);
        sub_100004F84(v143, &qword_100AD1420, &unk_10093C080);
        v100(v96, v98);
        sub_100004F84(v94, &qword_100AD1420, &unk_10093C080);
        if (v99)
        {
LABEL_39:
          v101 = [v139 assetType];
          if (v101)
          {
            v102 = v101;
            v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v105 = v104;
          }

          else
          {
            v103 = 0;
            v105 = 0;
          }

          v107 = v134;
          v106 = v135;
          v108 = v133;
          (*(v134 + 104))(v133, enum case for AssetType.reflection(_:), v135);
          v109 = AssetType.rawValue.getter();
          v111 = v110;
          (*(v107 + 8))(v108, v106);
          if (v105)
          {
            if (v103 == v109 && v105 == v111)
            {

LABEL_48:
              v113 = 4;
LABEL_50:
              sub_10028A754(&v148, v113);
              goto LABEL_51;
            }

            v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v112)
            {
              goto LABEL_48;
            }
          }

          else
          {
          }

          v113 = 1;
          goto LABEL_50;
        }

LABEL_51:

        return v149;
      }

      sub_100004F84(v144, &qword_100AD1420, &unk_10093C080);
      sub_100004F84(v143, &qword_100AD1420, &unk_10093C080);
      (v5[1])(v96, v147);
    }

    sub_100004F84(v94, &unk_100AEEE20, &qword_1009480F0);
    goto LABEL_51;
  }

  v35 = v34;
  v130 = v25;
  v131 = a1;
  v137 = a1;
  v36 = [v35 id];
  if (v36)
  {
    v37 = v36;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = v5[7];
    v38(v33, 0, 1, v147);
  }

  else
  {
    v38 = v5[7];
    v38(v33, 1, 1, v147);
  }

  v39 = [*(v146 + 32) id];
  v143 = v20;
  if (v39)
  {
    v40 = v39;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = v147;
  v129 = (v5 + 7);
  v38(v30, v41, 1, v147);
  v43 = v5;
  v44 = *(v145 + 48);
  sub_1000082B4(v33, v10, &qword_100AD1420, &unk_10093C080);
  sub_1000082B4(v30, &v10[v44], &qword_100AD1420, &unk_10093C080);
  v141 = v43;
  v45 = v42;
  v46 = v43[6];
  if (v46(v10, 1, v45) != 1)
  {
    v47 = v139;
    sub_1000082B4(v10, v139, &qword_100AD1420, &unk_10093C080);
    if (v46(&v10[v44], 1, v147) != 1)
    {
      v126 = v46;
      v127 = v38;
      v56 = v141;
      v57 = *(v141 + 4);
      v128 = v35;
      v58 = v140;
      v59 = v147;
      v57(v140, &v10[v44], v147);
      sub_1003E4898(&qword_100AD9220, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v60 = v47;
      v125 = dispatch thunk of static Equatable.== infix(_:_:)();
      v61 = v56[1];
      v62 = v58;
      v35 = v128;
      v61(v62, v59);
      sub_100004F84(v30, &qword_100AD1420, &unk_10093C080);
      sub_100004F84(v33, &qword_100AD1420, &unk_10093C080);
      v61(v60, v59);
      sub_100004F84(v10, &qword_100AD1420, &unk_10093C080);
      if (v125)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    sub_100004F84(v30, &qword_100AD1420, &unk_10093C080);
    sub_100004F84(v33, &qword_100AD1420, &unk_10093C080);
    (*(v141 + 1))(v47, v147);
LABEL_13:
    sub_100004F84(v10, &unk_100AEEE20, &qword_1009480F0);
LABEL_14:

    v5 = v141;
    v20 = v143;
    a1 = v131;
    goto LABEL_15;
  }

  sub_100004F84(v30, &qword_100AD1420, &unk_10093C080);
  sub_100004F84(v33, &qword_100AD1420, &unk_10093C080);
  if (v46(&v10[v44], 1, v147) != 1)
  {
    goto LABEL_13;
  }

  v126 = v46;
  v127 = v38;
  sub_100004F84(v10, &qword_100AD1420, &unk_10093C080);
LABEL_21:
  sub_1003E17CC(v35);

  v64 = sub_1003DE774(v63, _swiftEmptySetSingleton);
  sub_1003E2B94(v35);

  v149 = sub_1003DE774(v65, v64);
  if (qword_100ACFD38 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  sub_10000617C(v66, qword_100AE2A70);
  v67 = v137;

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v68, v69))
  {
    LODWORD(v146) = v69;
    v70 = swift_slowAlloc();
    v128 = v35;
    v71 = v70;
    v145 = swift_slowAlloc();
    v148 = v145;
    *v71 = 136315650;
    sub_1003E4844();
    v72 = Set.description.getter();
    v74 = v73;

    v75 = sub_100008458(v72, v74, &v148);

    *(v71 + 4) = v75;
    *(v71 + 12) = 2080;
    v76 = Set.description.getter();
    v78 = v77;

    v79 = sub_100008458(v76, v78, &v148);

    *(v71 + 14) = v79;
    *(v71 + 22) = 2080;
    v80 = [v128 id];
    v81 = v67;
    if (v80)
    {
      v82 = v132;
      v83 = v80;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v84 = 0;
      v85 = v141;
    }

    else
    {
      v84 = 1;
      v85 = v141;
      v82 = v132;
    }

    v115 = v147;
    v127(v82, v84, 1, v147);
    v116 = v130;
    sub_100024EC0(v82, v130);
    if (v126(v116, 1, v115))
    {
      sub_100004F84(v116, &qword_100AD1420, &unk_10093C080);
      v117 = 0xE300000000000000;
      v118 = 7104878;
    }

    else
    {
      v119 = v140;
      v120 = v147;
      v85[2](v140, v116, v147);
      sub_100004F84(v116, &qword_100AD1420, &unk_10093C080);
      v121 = UUID.uuidString.getter();
      v117 = v122;
      (v85[1])(v119, v120);
      v118 = v121;
    }

    v123 = sub_100008458(v118, v117, &v148);

    *(v71 + 24) = v123;
    _os_log_impl(&_mh_execute_header, v68, v146, "Tracked %s CoreData changes and %s inspected changes to entry with ID %s", v71, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v149;
}

void sub_1003E17CC(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AD6260, &qword_100944D10);
  __chkstk_darwin(v2 - 8);
  v169 = &v147 - v3;
  v4 = sub_1000F24EC(&qword_100AE2AA0, &unk_100954D20);
  __chkstk_darwin(v4 - 8);
  v173 = &v147 - v5;
  v6 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v6 - 8);
  v172 = &v147 - v7;
  v171 = type metadata accessor for Date();
  v178 = *(v171 - 8);
  __chkstk_darwin(v171);
  v168 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v147 - v10;
  v12 = type metadata accessor for JournalFeatureFlags();
  v177 = *(v12 - 8);
  __chkstk_darwin(v12);
  v179 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v174 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F24EC(&unk_100AEEE20, &qword_1009480F0);
  __chkstk_darwin(v17);
  v19 = &v147 - v18;
  v20 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v20 - 8);
  v167 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v166 = &v147 - v23;
  __chkstk_darwin(v24);
  v26 = &v147 - v25;
  __chkstk_darwin(v27);
  v29 = &v147 - v28;
  *&v31 = __chkstk_darwin(v30).n128_u64[0];
  v33 = &v147 - v32;
  v180 = a1;
  v34 = [a1 id];
  if (v34)
  {
    v35 = v34;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = *(v15 + 56);
    v37 = v33;
    v38 = 0;
  }

  else
  {
    v36 = *(v15 + 56);
    v37 = v33;
    v38 = 1;
  }

  v181 = v36;
  v36(v37, v38, 1, v14);
  v176 = *(v182 + 32);
  v39 = [v176 id];
  v183 = v14;
  v170 = v11;
  if (v39)
  {
    v40 = v39;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = v183;
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v165 = v15 + 56;
  v181(v29, v41, 1, v14);
  v42 = *(v17 + 48);
  sub_1000082B4(v33, v19, &qword_100AD1420, &unk_10093C080);
  v43 = v183;
  sub_1000082B4(v29, &v19[v42], &qword_100AD1420, &unk_10093C080);
  v44 = *(v15 + 48);
  if (v44(v19, 1, v43) != 1)
  {
    sub_1000082B4(v19, v26, &qword_100AD1420, &unk_10093C080);
    if (v44(&v19[v42], 1, v43) != 1)
    {
      v175 = v44;
      v162 = v15 + 48;
      v46 = &v19[v42];
      v47 = v174;
      (*(v15 + 32))(v174, v46, v43);
      sub_1003E4898(&qword_100AD9220, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v164) = dispatch thunk of static Equatable.== infix(_:_:)();
      v163 = v12;
      v48 = *(v15 + 8);
      v48(v47, v43);
      sub_100004F84(v29, &qword_100AD1420, &unk_10093C080);
      sub_100004F84(v33, &qword_100AD1420, &unk_10093C080);
      v48(v26, v43);
      v12 = v163;
      v45 = v180;
      sub_100004F84(v19, &qword_100AD1420, &unk_10093C080);
      if ((v164 & 1) == 0)
      {
        return;
      }

      goto LABEL_15;
    }

    sub_100004F84(v29, &qword_100AD1420, &unk_10093C080);
    sub_100004F84(v33, &qword_100AD1420, &unk_10093C080);
    (*(v15 + 8))(v26, v43);
LABEL_12:
    sub_100004F84(v19, &unk_100AEEE20, &qword_1009480F0);
    return;
  }

  v175 = v44;
  sub_100004F84(v29, &qword_100AD1420, &unk_10093C080);
  sub_100004F84(v33, &qword_100AD1420, &unk_10093C080);
  if (v175(&v19[v42], 1, v183) != 1)
  {
    goto LABEL_12;
  }

  v162 = v15 + 48;
  sub_100004F84(v19, &qword_100AD1420, &unk_10093C080);
  v45 = v180;
LABEL_15:
  v49 = [v45 changedValuesForCurrentEvent];
  v50 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1003DE17C(v50);
  v52 = v51;
  v150 = 0;

  v53 = sub_100891350(v52);

  v55 = 0;
  v56 = v53 + 56;
  v57 = 1 << *(v53 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(v53 + 56);
  v186 = _swiftEmptySetSingleton;
  v60 = (v57 + 63) >> 6;
  v164 = (v177 + 13);
  v161 = OBJC_IVAR____TtC7Journal14EntryViewModel_prompts;
  ++v177;
  v152 = (v15 + 16);
  v160 = OBJC_IVAR____TtC7Journal14EntryViewModel_dateSource;
  v151 = (v15 + 8);
  v157 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
  v159 = v185;
  v156 = v178 + 4;
  v61 = enum case for JournalFeatureFlags.enhancedSync(_:);
  v158 = (v178 + 7);
  v155 = (v178 + 6);
  v178 += 5;
  *&v54 = 136315138;
  v153 = v54;
  while (v59)
  {
LABEL_23:
    v63 = __clz(__rbit64(v59));
    v59 &= v59 - 1;
    v64 = *(*(v53 + 48) + (v63 | (v55 << 6)));
    if (v64 > 6)
    {
      if (v64 > 9)
      {
        if ((v64 - 11) >= 2)
        {
          v67 = v179;
          (*v164)(v179, v61, v12);
          v68 = JournalFeatureFlags.isEnabled.getter();
          (*v177)(v67, v12);
          if (v68)
          {
            v69 = v180;
            v70 = [v180 mergeableAttributes];
            if (v70)
            {
              v71 = v70;
              v72 = v169;
              WrappedMergeableEntryAttributes.value.getter();

              v73 = type metadata accessor for MergeableEntryAttributes();
              (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
              sub_100004F84(v72, &qword_100AD6260, &qword_100944D10);
              v74 = sub_1003E3578(v69);
              if (v74)
              {
                v186 = sub_1003DE774(v74, v186);
              }
            }

            else
            {
              v154 = v61;
              v128 = type metadata accessor for MergeableEntryAttributes();
              v129 = v169;
              (*(*(v128 - 8) + 56))(v169, 1, 1, v128);
              sub_100004F84(v129, &qword_100AD6260, &qword_100944D10);
              if (qword_100ACFD38 != -1)
              {
                swift_once();
              }

              v130 = type metadata accessor for Logger();
              sub_10000617C(v130, qword_100AE2A70);
              v131 = v180;
              v132 = Logger.logObject.getter();
              v133 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v132, v133))
              {
                v134 = swift_slowAlloc();
                v148 = swift_slowAlloc();
                aBlock[0] = v148;
                *v134 = v153;
                v135 = [v131 id];
                LODWORD(v163) = v133;
                v149 = v134;
                if (v135)
                {
                  v136 = v167;
                  v137 = v135;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v138 = 0;
                }

                else
                {
                  v138 = 1;
                  v136 = v167;
                }

                v139 = v183;
                v181(v136, v138, 1, v183);
                v140 = v166;
                sub_100024EC0(v136, v166);
                if (v175(v140, 1, v139))
                {
                  sub_100004F84(v140, &qword_100AD1420, &unk_10093C080);
                  v141 = 0xE700000000000000;
                  v142 = 0x6E776F6E6B6E55;
                }

                else
                {
                  v143 = v174;
                  (*v152)(v174, v140, v139);
                  sub_100004F84(v140, &qword_100AD1420, &unk_10093C080);
                  v147 = UUID.uuidString.getter();
                  v141 = v144;
                  (*v151)(v143, v139);
                  v142 = v147;
                }

                v145 = sub_100008458(v142, v141, aBlock);

                v146 = v149;
                *(v149 + 1) = v145;
                _os_log_impl(&_mh_execute_header, v132, v163, "mergeableAttributes changed to nil value for entry %s. This implies an incorrect assignment rather than a merge operation somewhere.", v146, 0xCu);
                sub_10000BA7C(v148);
              }

LABEL_56:
              v61 = v154;
            }
          }
        }
      }

      else if (v64 == 7)
      {
        v95 = [v176 dateSource];
        if (v95)
        {
          v163 = v12;
          v96 = v53;
          v97 = v61;
          v98 = v95;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v61 = v97;
          v53 = v96;
          v12 = v163;
        }

        v116 = v173;
        EntryDateSource.init(rawValue:)();
        v117 = v182;
        v118 = v160;
        swift_beginAccess();
        sub_1003E48E0(v116, v117 + v118);
        swift_endAccess();
        sub_10028A754(aBlock, 3);
      }

      else
      {
        if (v64 != 8)
        {
          v154 = v61;
          v99 = [v176 prompt];
          v100 = v12;
          if (v99)
          {
            v101 = v99;
            v102 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v104 = v103;

            v105 = Data.getAttributedString()();
            sub_1000340DC(v102, v104);
          }

          else
          {
            v105 = 0;
          }

          v119 = v182;
          v120 = *(v182 + v161);
          *(v182 + v161) = v105;
          v121 = v105;

          v122 = *(v119 + 24);
          v123 = swift_allocObject();
          swift_weakInit();
          v185[2] = sub_1003E499C;
          v185[3] = v123;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v185[0] = sub_100006C7C;
          v185[1] = &unk_100A6B598;
          v124 = _Block_copy(aBlock);

          [v122 performBlock:v124];
          _Block_release(v124);

          sub_10028A754(aBlock, 6);
          v12 = v100;
          goto LABEL_56;
        }

        sub_10028A754(aBlock, 7);
      }
    }

    else if (v64 > 2)
    {
      if ((v64 - 5) >= 2)
      {
        if (v64 == 3)
        {
          v75 = v179;
          (*v164)(v179, v61, v12);
          v76 = JournalFeatureFlags.isEnabled.getter();
          (*v177)(v75, v12);
          if ((v76 & 1) == 0)
          {
            v77 = [v180 title];
            if (v77)
            {
              v78 = v77;
              v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v80 = v61;
              v82 = v81;

              v83 = Data.getAttributedString()();
              v84 = v82;
              v61 = v80;
              sub_1000340DC(v79, v84);
            }

            else
            {
              v83 = 0;
            }

            sub_10077FB2C(v83);

            sub_10028A754(aBlock, 2);
          }
        }

        else
        {
          v163 = v12;
          v106 = [v176 entryDate];
          if (v106)
          {
            v107 = v168;
            v108 = v106;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v154 = v61;
            v109 = *v156;
            v110 = v172;
            v111 = v107;
            v112 = v171;
            (*v156)(v172, v111, v171);
            (*v158)(v110, 0, 1, v112);
            v113 = v170;
            v114 = v110;
            v115 = v112;
            v109(v170, v114, v112);
            v61 = v154;
          }

          else
          {
            v125 = v172;
            v115 = v171;
            (*v158)(v172, 1, 1, v171);
            v113 = v170;
            Date.init()();
            if ((*v155)(v125, 1, v115) != 1)
            {
              sub_100004F84(v172, &unk_100AD4790, &unk_10093B4E0);
            }
          }

          v126 = v182;
          v127 = v157;
          swift_beginAccess();
          (*v178)(v126 + v127, v113, v115);
          swift_endAccess();
          sub_10028A754(aBlock, 3);
          v12 = v163;
        }
      }

      else
      {
        sub_10028A754(aBlock, 8);
      }
    }

    else if (v64)
    {
      if (v64 == 1)
      {
        v65 = v179;
        (*v164)(v179, v61, v12);
        v66 = JournalFeatureFlags.isEnabled.getter();
        (*v177)(v65, v12);
        if ((v66 & 1) == 0)
        {
          sub_10028A754(aBlock, 1);
        }
      }
    }

    else
    {
      v85 = v179;
      (*v164)(v179, v61, v12);
      v86 = JournalFeatureFlags.isEnabled.getter();
      (*v177)(v85, v12);
      if ((v86 & 1) == 0)
      {
        v87 = [v180 text];
        if (v87)
        {
          v88 = v87;
          v89 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v90 = v61;
          v92 = v91;

          v93 = Data.getAttributedString()();
          v94 = v92;
          v61 = v90;
          sub_1000340DC(v89, v94);
        }

        else
        {
          v93 = 0;
        }

        sub_100780424(v93);

        sub_10028A754(aBlock, 0);
      }
    }
  }

  while (1)
  {
    v62 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v62 >= v60)
    {

      return;
    }

    v59 = *(v56 + 8 * v62);
    ++v55;
    if (v59)
    {
      v55 = v62;
      goto LABEL_23;
    }
  }

  __break(1u);
}

void *sub_1003E2B94(void *a1)
{
  v3 = type metadata accessor for JournalFeatureFlags();
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v77 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AE2AA0, &unk_100954D20);
  __chkstk_darwin(v5 - 8);
  v70 = &v69 - v6;
  v76 = type metadata accessor for Date();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v72 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v71 = &v69 - v9;
  __chkstk_darwin(v10);
  v75 = &v69 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v73 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&unk_100AEEE20, &qword_1009480F0);
  __chkstk_darwin(v15);
  v17 = &v69 - v16;
  v18 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v18 - 8);
  v82 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v69 - v21;
  *&v24 = __chkstk_darwin(v23).n128_u64[0];
  v26 = &v69 - v25;
  v80 = a1;
  v27 = [a1 id];
  if (v27)
  {
    v28 = v27;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = *(v13 + 56);
    v29(v26, 0, 1, v12);
  }

  else
  {
    v29 = *(v13 + 56);
    v29(v26, 1, 1, v12);
  }

  v69 = *(v1 + 32);
  v30 = [v69 id];
  v81 = v1;
  if (v30)
  {
    v31 = v30;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v29(v22, v32, 1, v12);
  v33 = *(v15 + 48);
  sub_1000082B4(v26, v17, &qword_100AD1420, &unk_10093C080);
  sub_1000082B4(v22, &v17[v33], &qword_100AD1420, &unk_10093C080);
  v34 = *(v13 + 48);
  if (v34(v17, 1, v12) == 1)
  {
    sub_100004F84(v22, &qword_100AD1420, &unk_10093C080);
    sub_100004F84(v26, &qword_100AD1420, &unk_10093C080);
    if (v34(&v17[v33], 1, v12) == 1)
    {
      sub_100004F84(v17, &qword_100AD1420, &unk_10093C080);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v35 = v82;
  sub_1000082B4(v17, v82, &qword_100AD1420, &unk_10093C080);
  if (v34(&v17[v33], 1, v12) == 1)
  {
    sub_100004F84(v22, &qword_100AD1420, &unk_10093C080);
    sub_100004F84(v26, &qword_100AD1420, &unk_10093C080);
    (*(v13 + 8))(v35, v12);
LABEL_12:
    sub_100004F84(v17, &unk_100AEEE20, &qword_1009480F0);
    return _swiftEmptySetSingleton;
  }

  v37 = v73;
  (*(v13 + 32))(v73, &v17[v33], v12);
  sub_1003E4898(&qword_100AD9220, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v38 = v35;
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = *(v13 + 8);
  v40(v37, v12);
  sub_100004F84(v22, &qword_100AD1420, &unk_10093C080);
  sub_100004F84(v26, &qword_100AD1420, &unk_10093C080);
  v40(v38, v12);
  sub_100004F84(v17, &qword_100AD1420, &unk_10093C080);
  if ((v39 & 1) == 0)
  {
    return _swiftEmptySetSingleton;
  }

LABEL_15:
  v85 = _swiftEmptySetSingleton;
  v41 = v80;
  if (([v80 isRemovedFromCloud] & 1) != 0 || objc_msgSend(v41, "isFullyRemoved"))
  {
    sub_10028A754(v84, 9);
  }

  v42 = [v41 entryDate];
  v43 = v81;
  v45 = v75;
  v44 = v76;
  v46 = v74;
  if (v42)
  {
    v47 = v71;
    v48 = v42;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v46 + 32))(v45, v47, v44);
    v49 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
    swift_beginAccess();
    v50 = v72;
    (*(v46 + 16))(v72, v43 + v49, v44);
    sub_1003E4898(&qword_100AD5BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    LOBYTE(v48) = dispatch thunk of static Equatable.== infix(_:_:)();
    v51 = *(v46 + 8);
    v51(v50, v44);
    if ((v48 & 1) == 0)
    {
      swift_beginAccess();
      (*(v46 + 24))(v43 + v49, v45, v44);
      swift_endAccess();
      v52 = [v69 dateSource];
      if (v52)
      {
        v53 = v52;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v54 = v70;
      EntryDateSource.init(rawValue:)();
      v55 = OBJC_IVAR____TtC7Journal14EntryViewModel_dateSource;
      swift_beginAccess();
      sub_1003E48E0(v54, v43 + v55);
      swift_endAccess();
      sub_10028A754(v83, 3);
    }

    v51(v45, v44);
  }

  v56 = OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked;
  v57 = *(v43 + OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked);
  if (v57 != [v41 flagged])
  {
    v58 = [v41 flagged];
    v59 = *(v43 + v56);
    *(v43 + v56) = v58;
    sub_10078333C(v59);
    sub_10028A754(v83, 7);
  }

  v61 = v77;
  v60 = v78;
  v62 = v79;
  (*(v78 + 104))(v77, enum case for JournalFeatureFlags.enhancedSync(_:), v79);
  v63 = JournalFeatureFlags.isEnabled.getter();
  (*(v60 + 8))(v61, v62);
  if ((v63 & 1) == 0)
  {
    v64 = sub_1003E3B04();
    sub_1003E3F1C(v64);
    v66 = v65;

    if (v66)
    {
      sub_10028A754(v83, 0);
    }
  }

  v67 = sub_1003E3578(v41);
  v36 = v85;
  if (v67)
  {
    return sub_1003DE774(v67, v85);
  }

  return v36;
}

void *sub_1003E3578(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MergeableEntryAssetsPlacement();
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = &v41 - v7;
  v8 = sub_1000F24EC(&qword_100AD6260, &qword_100944D10);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for MergeableEntryAttributes();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v43 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  __chkstk_darwin(v20);
  v22 = &v41 - v21;
  *&v24 = __chkstk_darwin(v23).n128_u64[0];
  v26 = &v41 - v25;
  result = [a1 mergeableAttributes];
  if (result)
  {
    v28 = result;
    v41 = v4;
    WrappedMergeableEntryAttributes.value.getter();

    v29 = v2;
    v30 = *(v15 + 32);
    v30(v26, v22, v14);
    v31 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    v47 = v29;
    sub_1000082B4(v29 + v31, v13, &qword_100AD6260, &qword_100944D10);
    v42 = *(v15 + 48);
    if (v42(v13, 1, v14) == 1)
    {
      sub_100004F84(v13, &qword_100AD6260, &qword_100944D10);
    }

    else
    {
      v30(v19, v13, v14);
      sub_1003E4898(&qword_100ADAD58, &type metadata accessor for MergeableEntryAttributes, &protocol conformance descriptor for MergeableEntryAttributes);
      v32 = CRDT.requiresMerging(with:)();
      v33 = *(v15 + 8);
      v33(v19, v14);
      if ((v32 & 1) == 0)
      {
        v33(v26, v14);
        return 0;
      }
    }

    v49 = _swiftEmptySetSingleton;
    v34 = v47;
    if (sub_10077AF44(v26))
    {
      sub_10028A754(&v48, 11);
    }

    if (sub_10077AF74(v26))
    {
      sub_10028A754(&v48, 12);
    }

    sub_1000082B4(v34 + v31, v10, &qword_100AD6260, &qword_100944D10);
    if (v42(v10, 1, v14))
    {
      sub_100004F84(v10, &qword_100AD6260, &qword_100944D10);
    }

    else
    {
      v35 = v43;
      (*(v15 + 16))(v43, v10, v14);
      sub_100004F84(v10, &qword_100AD6260, &qword_100944D10);
      v36 = v44;
      MergeableEntryAttributes.assetPlacement.getter();
      (*(v15 + 8))(v35, v14);
      v37 = v45;
      MergeableEntryAttributes.assetPlacement.getter();
      sub_1003E4898(&qword_100AE2AA8, &type metadata accessor for MergeableEntryAssetsPlacement, &protocol conformance descriptor for MergeableEntryAssetsPlacement);
      v38 = v41;
      LOBYTE(v35) = CRDT.requiresMerging(with:)();
      v39 = *(v46 + 8);
      v39(v37, v38);
      v39(v36, v38);
      if (v35)
      {
        sub_10028A754(&v48, 1);
      }
    }

    v40 = sub_10077B2FC(v26);
    (*(v15 + 8))(v26, v14, v40);
    return v49;
  }

  return result;
}

id sub_1003E3B04()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AE4C80, &qword_10094A970);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29[-1] - v4;
  v6 = sub_1000F24EC(&unk_100AEBE80, &unk_100956FA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v29[-1] - v7;
  v9 = type metadata accessor for JournalFeatureFlags();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v29[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, enum case for JournalFeatureFlags.enhancedSync(_:), v9, v11);
  v14 = JournalFeatureFlags.isEnabled.getter();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    JournalEntryMO.mergeableAttributedText.getter();
    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_100004F84(v8, &unk_100AEBE80, &unk_100956FA0);
      return 0;
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);
      sub_100004F84(v8, &unk_100AEBE80, &unk_100956FA0);
      v21 = [objc_allocWithZone(UITraitCollection) init];
      v22 = type metadata accessor for CustomAttributeProviderConcrete(0);
      v23 = sub_1003E4898(&qword_100AE2470, type metadata accessor for CustomAttributeProviderConcrete, &unk_10096CF30);
      v29[3] = v22;
      v29[4] = v23;
      v24 = sub_10001A770(v29);
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      Logger.init(subsystem:category:)();
      v26 = v25 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
      *(v26 + 4) = 0;
      *v26 = 2;
      *v24 = v25;
      sub_1003E4898(&qword_100AE4B80, &type metadata accessor for MergeableTextAttributeScope, &protocol conformance descriptor for MergeableTextAttributeScope);
      v27 = CRAttributedString<>.nsAttributedString(traitCollection:customAttributeProvider:)();

      (*(v3 + 8))(v5, v2);
      sub_10000BA7C(v29);
      return v27;
    }
  }

  else
  {
    result = [v1 text];
    if (result)
    {
      v16 = result;
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = Data.getAttributedString()();
      sub_1000340DC(v17, v19);
      return v20;
    }
  }

  return result;
}

void sub_1003E3F1C(void *a1)
{
  v3 = [objc_allocWithZone(UITraitCollection) init];
  type metadata accessor for CustomAttributeProviderConcrete(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  Logger.init(subsystem:category:)();
  v5 = v4 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
  *(v5 + 4) = 0;
  *v5 = 2;
  v6 = sub_100789EB0(v3, v4, v1);

  v7 = &selRef_setSuggestedName_;
  p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
  v9 = &selRef_initWithName_managedObjectModel_;
  v10 = &selRef_setSuggestedName_;
  v11 = "@0:8@16";
  if (v6)
  {
    v12 = v6;
    v13 = [v12 string];
    if (!v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = String._bridgeToObjectiveC()();
    }

    v14 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v13];

    v15 = [objc_opt_self() labelColor];
    v16 = [objc_opt_self() systemFontOfSize:0.0];
    v17 = [v12 length];
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v18 = v17;
      v19 = swift_allocObject();
      v19[2] = v16;
      v19[3] = v15;
      v19[4] = 0;
      v19[5] = 0;
      v19[6] = v14;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_1003E4A18;
      *(v20 + 24) = v19;
      v45 = sub_1003E4A14;
      v46 = v20;
      v41 = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_10007F714;
      v44 = &unk_100A6B548;
      v21 = _Block_copy(&v41);
      v22 = v16;
      v23 = v15;
      v24 = v14;

      [v12 enumerateAttributesInRange:0 options:v18 usingBlock:{0, v21}];

      _Block_release(v21);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        if (!a1)
        {

          return;
        }

        v11 = "d24@0:8@16" + 3;
        v10 = &selRef_setSuggestedName_;
        v9 = &selRef_initWithName_managedObjectModel_;
        p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
        v7 = &selRef_setSuggestedName_;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!a1)
  {
    return;
  }

  v24 = 0;
LABEL_10:
  v26 = a1;
  v27 = [v26 v7[288]];
  if (!v27)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = String._bridgeToObjectiveC()();
  }

  v28 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v27];

  v29 = [objc_opt_self() p_ivar_lyt[403]];
  v30 = [objc_opt_self() v9[333]];
  v31 = [v26 v10[233]];
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v32 = v31;
  v33 = swift_allocObject();
  v33[2] = v30;
  v33[3] = v29;
  v33[4] = 0;
  v33[5] = 0;
  v33[6] = v28;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1000804A0;
  *(v34 + 24) = v33;
  v45 = sub_100080460;
  v46 = v34;
  v41 = _NSConcreteStackBlock;
  v42 = *(v11 + 148);
  v43 = sub_10007F714;
  v44 = &unk_100A6B4D0;
  v35 = _Block_copy(&v41);
  v36 = v30;
  v37 = v29;
  v38 = v28;

  [v26 enumerateAttributesInRange:0 options:v32 usingBlock:{0, v35}];

  _Block_release(v35);
  v39 = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
LABEL_22:
    __break(1u);
    return;
  }

  if (v24)
  {
    sub_1000065A8(0, &qword_100AE4890, NSAttributedString_ptr);
    v40 = v24;
    static NSObject.== infix(_:_:)();
  }

  else
  {
  }
}

unint64_t sub_1003E44D0(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0x64724F7465737361;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x7461447972746E65;
      break;
    case 5:
      result = 0x6449656C646E7562;
      break;
    case 6:
      result = 0x6144656C646E7562;
      break;
    case 7:
      result = 0x72756F5365746164;
      break;
    case 8:
      result = 0x64656767616C66;
      break;
    case 9:
      result = 0x74706D6F7270;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1003E4648(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1003E44D0(*a1);
  v5 = v4;
  if (v3 == sub_1003E44D0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1003E46D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1003E44D0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1003E4734(uint64_t a1)
{
  sub_1003E44D0(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int sub_1003E4788(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1003E44D0(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003E47E8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003E4950(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1003E4818@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1003E44D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1003E4844()
{
  result = qword_100AE2A88;
  if (!qword_100AE2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2A88);
  }

  return result;
}

uint64_t sub_1003E4898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003E48E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE2AA0, &unk_100954D20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003E4950(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A56000, v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1003E49B8()
{
  result = qword_100AE2AB0[0];
  if (!qword_100AE2AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100AE2AB0);
  }

  return result;
}

uint64_t sub_1003E4A74()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

double *sub_1003E4B94(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AD65C8, &qword_1009452A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1003E4E8C(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 3);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 2);
  if (v13 <= v14)
  {
    v15 = *(a4 + 2);
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000F24EC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    *(v16 + 2) = v14;
    *(v16 + 3) = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_1000F24EC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

double *sub_1003E5108(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AD6510, &qword_1009451D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1003E5230(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AD6650, &unk_100945D80);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_1003E541C(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000F24EC(&qword_100ADBB08, &unk_100959AB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_1000F24EC(&qword_100AE2CA0, &qword_100954448);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1003E5564(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&unk_100AD8A90, &qword_1009451C0);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_1003E567C(double *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 16);
  if (v9 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000F24EC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = (v12 + 4);
  v16 = (a4 + 32);
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

double *sub_1003E5778(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100ADDBE8, &unk_1009607A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1003E5898(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AE2C08, &qword_1009543B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1003E59DC(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AE2B80, &qword_100954330);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

double *sub_1003E5AE0(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AE2BD0, &qword_100954380);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1003E5BEC(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000F24EC(&qword_100AE2C88, &qword_100954430);
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

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_1000F24EC(&qword_100AE2C90, &qword_100954438);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1003E5DE4(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AD6608, &qword_1009452E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1003E5F4C(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000F24EC(&qword_100AE0D90, &qword_100952220);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_1000F24EC(&qword_100AE2B50, &qword_100960700);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1003E60A8(double *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 16);
  if (v9 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000F24EC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = (v12 + 4);
  v15 = (a4 + 32);
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

double *sub_1003E6194(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AE2C58, &qword_100954408);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1003E62A0(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AE2C60, &qword_100954410);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double *sub_1003E6450(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 3);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 2);
  if (v13 <= v14)
  {
    v15 = *(a4 + 2);
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000F24EC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    *(v16 + 2) = v14;
    *(v16 + 3) = 2 * (v18 >> 5);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_1000F24EC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

double *sub_1003E6584(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AD6560, &unk_100945230);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_1003E6688(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AE2C38, &qword_1009543E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1003E67B0(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000F24EC(&qword_100AE2BE8, &qword_100954398);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_1000F24EC(&qword_100AE2BF0, &qword_1009543A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1003E6924(double *result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000F24EC(a5, a6);
  v16 = *(sub_1000F24EC(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  *(v19 + 2) = v14;
  *(v19 + 3) = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_1000F24EC(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

double *sub_1003E6B30(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AE2C50, &qword_100954400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}